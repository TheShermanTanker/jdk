/*
 * Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 *
 */

#include "jvm.h"
#include "os_windows.hpp"
#include "runtime/frame.inline.hpp"
#include "runtime/os.inline.hpp"
#include "symbolengine.hpp"
#include "windbghelp.hpp"

#undef REG_SP
#undef REG_FP
#undef REG_PC
#ifdef _M_AMD64
#define REG_SP Rsp
#define REG_FP Rbp
#define REG_PC Rip
#elif defined(_M_ARM64)
#define REG_SP Sp
#define REG_FP Fp
#define REG_PC Pc
#endif // AMD64

JNIEXPORT
extern LONG topLevelExceptionFilter(PEXCEPTION_POINTERS);

// Install a win32 structured exception handler around thread.
void os::os_exception_wrapper(java_call_t f, JavaValue* value, const methodHandle& method, JavaCallArguments* args, JavaThread* thread) {
  WIN32_TRY {
    f(value, method, args, thread);
  } WIN32_EXCEPT (topLevelExceptionFilter(GetExceptionInformation())) {
    // Nothing to do.
  }
}

#ifdef HAVE_PLATFORM_PRINT_NATIVE_STACK
/*
 * Windows/x64 does not use stack frames the way expected by Java:
 * [1] in most cases, there is no frame pointer. All locals are addressed via RSP
 * [2] in rare cases, when alloca() is used, a frame pointer is used, but this may
 *     not be RBP.
 * See http://msdn.microsoft.com/en-us/library/ew5tede7.aspx
 *
 * So it's not possible to print the native stack using the
 *     while (...) {...  fr = os::get_sender_for_C_frame(&fr); }
 * loop in vmError.cpp. We need to roll our own loop.
 */
bool os::win32::platform_print_native_stack(outputStream* st, const void* context,
                                            char *buf, int buf_size, address& lastpc)
{
  CONTEXT ctx;
  if (context != nullptr) {
    memcpy(&ctx, context, sizeof(ctx));
  } else {
    RtlCaptureContext(&ctx);
  }

  st->print_cr("Native frames: (J=compiled Java code, j=interpreted, Vv=VM code, C=native code)");

  STACKFRAME stk;
  memset(&stk, 0, sizeof(stk));
  stk.AddrStack.Offset    = ctx.Rsp;
  stk.AddrStack.Mode      = AddrModeFlat;
  stk.AddrFrame.Offset    = ctx.Rbp;
  stk.AddrFrame.Mode      = AddrModeFlat;
  stk.AddrPC.Offset       = ctx.Rip;
  stk.AddrPC.Mode         = AddrModeFlat;

  // Ensure we consider dynamically loaded dll's
  SymbolEngine::refreshModuleList();

  int count = 0;
  address lastpc_internal = 0;
  while (count++ < StackPrintLimit) {
    intptr_t* sp = (intptr_t*)stk.AddrStack.Offset;
    intptr_t* fp = (intptr_t*)stk.AddrFrame.Offset; // NOT necessarily the same as ctx.Rbp!
    address pc = (address)stk.AddrPC.Offset;

    if (pc != nullptr) {
      if (count == 2 && lastpc_internal == pc) {
        // Skip it -- StackWalk64() may return the same PC
        // (but different SP) on the first try.
      } else {
        // Don't try to create a frame(sp, fp, pc) -- on WinX64, stk.AddrFrame
        // may not contain what Java expects, and may cause the frame() constructor
        // to crash. Let's just print out the symbolic address.
        frame::print_C_frame(st, buf, buf_size, pc);
        // print source file and line, if available
        char buf[128];
        int line_no;
        if (SymbolEngine::get_source_info(pc, buf, sizeof(buf), &line_no)) {
          st->print("  (%s:%d)", buf, line_no);
        } else {
          st->print("  (no source info available)");
        }
        st->cr();
      }
      lastpc_internal = pc;
    }

    PVOID p = WindowsDbgHelp::symFunctionTableAccess64(GetCurrentProcess(), stk.AddrPC.Offset);
    if (!p) {
      // StackWalk64() can't handle this PC. Calling StackWalk64 again may cause crash.
      lastpc = lastpc_internal;
      break;
    }

    BOOL result = WindowsDbgHelp::stackWalk64(
        IMAGE_FILE_MACHINE_AMD64,  // __in      DWORD MachineType,
        GetCurrentProcess(),       // __in      HANDLE hProcess,
        GetCurrentThread(),        // __in      HANDLE hThread,
        &stk,                      // __inout   LP STACKFRAME64 StackFrame,
        &ctx);                     // __inout   PVOID ContextRecord,

    if (!result) {
      break;
    }
  }
  if (count > StackPrintLimit) {
    st->print_cr("...<more frames>...");
  }
  st->cr();

  return true;
}
#endif // HAVE_PLATFORM_PRINT_NATIVE_STACK

address os::fetch_frame_from_context(const void* ucVoid,
                    intptr_t** ret_sp, intptr_t** ret_fp) {

  address  epc;
  CONTEXT* uc = (CONTEXT*)ucVoid;

  if (uc != nullptr) {
    epc = reinterpret_cast<address>(uc->REG_PC);
    if (ret_sp) *ret_sp = reinterpret_cast<intptr_t*>(uc->REG_SP);
    if (ret_fp) *ret_fp = reinterpret_cast<intptr_t*>(uc->REG_FP);
  } else {
    epc = nullptr;
    if (ret_sp) *ret_sp = static_cast<intptr_t*>(nullptr);
    if (ret_fp) *ret_fp = static_cast<intptr_t*>(nullptr);
  }

  return epc;
}

frame os::fetch_frame_from_context(const void* ucVoid) {
  // This code is only called from error handler to get PC and SP.
  // We don't have the ready ZeroFrame* at this point, so fake the
  // frame with bare minimum.
  if (ucVoid != nullptr) {
    intptr_t* sp;
    intptr_t* fp;
    address epc = fetch_frame_from_context(ucVoid, &sp, &fp);
    frame dummy = frame();
    dummy.set_pc(epc);
    dummy.set_sp(sp);
    return dummy;
  } else {
    return frame(nullptr, nullptr);
  }
}

PRAGMA_DIAG_PUSH
PRAGMA_DISABLE_GCC_WARNING("-Wreturn-local-addr")
PRAGMA_DISABLE_MSVC_WARNING(4172)
// Returns an estimate of the current stack pointer. Result must be guaranteed
// to point into the calling threads stack, and be no lower than the current
// stack pointer.
address os::current_stack_pointer() {
  address dummy = reinterpret_cast<address>(&dummy);
  return dummy;
}
PRAGMA_DIAG_POP

frame os::get_sender_for_C_frame(frame* fr) {
  ShouldNotCallThis();
  return frame(nullptr, nullptr); // silence compile warning.
}

frame os::current_frame() {
  // The only thing that calls this is the stack printing code in
  // VMError::report:
  //   - Step 110 (printing stack bounds) uses the sp in the frame
  //     to determine the amount of free space on the stack.  We
  //     set the sp to a close approximation of the real value in
  //     order to allow this step to complete.
  //   - Step 120 (printing native stack) tries to walk the stack.
  //     The frame we create has a null pc, which is ignored as an
  //     invalid frame.
  frame dummy = frame();
  dummy.set_sp(reinterpret_cast<intptr_t *>(current_stack_pointer()));
  return dummy;
}

void os::print_context(outputStream* st, const void* ucVoid) {
  st->print_cr("No context information.");
}

void os::print_register_info(outputStream *st, const void *context, int& continuation) {
  st->print_cr("No register info.");
}

void os::setup_fpu() {
}

#ifndef PRODUCT
void os::verify_stack_alignment() {
}
#endif

extern "C" {
  int SpinPause() {
#ifdef AMD64
    YieldProcessor();
    return 1;
#else
    return 0;
#endif
  }

  void _Copy_conjoint_jshorts_atomic(const jshort* from, jshort* to, size_t count) {
    if (from > to) {
      const jshort *end = from + count;
      while (from < end)
        *(to++) = *(from++);
    }
    else if (from < to) {
      const jshort *end = from;
      from += count - 1;
      to   += count - 1;
      while (from >= end)
        *(to--) = *(from--);
    }
  }
  void _Copy_conjoint_jints_atomic(const jint* from, jint* to, size_t count) {
    if (from > to) {
      const jint *end = from + count;
      while (from < end)
        *(to++) = *(from++);
    }
    else if (from < to) {
      const jint *end = from;
      from += count - 1;
      to   += count - 1;
      while (from >= end)
        *(to--) = *(from--);
    }
  }
  void _Copy_conjoint_jlongs_atomic(const jlong* from, jlong* to, size_t count) {
    if (from > to) {
      const jlong *end = from + count;
      while (from < end)
        [] (const volatile void *src, volatile void *dst) noexcept -> void {
          *reinterpret_cast<volatile jlong *>(dst) = *(const jlong *) src;
        } (from++, to++);
    }
    else if (from < to) {
      const jlong *end = from;
      from += count - 1;
      to   += count - 1;
      while (from >= end)
        [] (const volatile void *src, volatile void *dst) noexcept -> void {
          *reinterpret_cast<volatile jlong *>(dst) = *(const jlong *) src;
        } (from--, to--);
    }
  }

  void _Copy_arrayof_conjoint_bytes(const HeapWord* from,
                                    HeapWord* to,
                                    size_t    count) {
    memmove(to, from, count);
  }
  void _Copy_arrayof_conjoint_jshorts(const HeapWord* from,
                                      HeapWord* to,
                                      size_t    count) {
    memmove(to, from, count * 2);
  }
  void _Copy_arrayof_conjoint_jints(const HeapWord* from,
                                    HeapWord* to,
                                    size_t    count) {
    memmove(to, from, count * 4);
  }
  void _Copy_arrayof_conjoint_jlongs(const HeapWord* from,
                                     HeapWord* to,
                                     size_t    count) {
    memmove(to, from, count * 8);
  }
}
