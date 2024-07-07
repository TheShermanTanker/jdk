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

#ifndef OS_CPU_WINDOWS_ZERO_JAVATHREAD_WINDOWS_ZERO_HPP
#define OS_CPU_WINDOWS_ZERO_JAVATHREAD_WINDOWS_ZERO_HPP

  ZeroStack* zero_stack() noexcept {
    return &stack;
  }

  ZeroFrame* top_zero_frame() const noexcept {
    return top;
  }

  void push_zero_frame(ZeroFrame* frame) noexcept {
    *reinterpret_cast<ZeroFrame**>(frame) = top;
    top = frame;
  }

  void pop_zero_frame() {
    stack.set_sp(reinterpret_cast<intptr_t*>(top) + 1);
    top = *reinterpret_cast<ZeroFrame**>(top);
  }

  void set_last_Java_frame() {
    set_last_Java_frame(top, stack.sp());
  }

  void reset_last_Java_frame() {
    frame_anchor()->zap();
  }
  void set_last_Java_frame(ZeroFrame* fp, intptr_t* sp) {
    frame_anchor()->set(sp, nullptr, fp);
  }

  ZeroFrame* last_Java_fp() {
    return frame_anchor()->last_Java_fp();
  }

  bool has_special_condition_for_native_trans() const noexcept {
    return _suspend_flags != 0;
  }

  bool pd_get_top_frame_for_signal_handler(frame* fr_addr,
                                           void* ucontext,
                                           bool isInJava);

 private:
  void pd_initialize() noexcept {
    top = nullptr;
  }

  frame pd_last_frame();

  ZeroStack stack;
  ZeroFrame* top;

#endif // OS_CPU_WINDOWS_ZERO_JAVATHREAD_WINDOWS_ZERO_HPP
