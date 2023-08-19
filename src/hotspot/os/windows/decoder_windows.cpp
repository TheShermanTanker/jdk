/*
 * Copyright (c) 1997, 2025, Oracle and/or its affiliates. All rights reserved.
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

#include "utilities/decoder.hpp"
#include "utilities/vmError.hpp"
#include "symbolengine.hpp"
#include "windbghelp.hpp"

#include <psapi.h>

#ifdef __GNUC__
#include <cxxabi.h>
#endif

struct WindowsDecoder : public AbstractDecoder {
  WindowsDecoder() : AbstractDecoder(no_error) {}

  bool decode(address pc, char *buf, int buflen, int *offset,
                          const char *modulepath = nullptr, bool demangle = true) override;
  bool decode(address pc, char *buf, int buflen, int *offset, const void *base) override;
  bool demangle(const char *symbol, char *buf, int buflen) override;
};

class COFFSymbol final {
  union {
    char name[8];
    class {
      unsigned long zeroes;
      unsigned long offset;

     public:
      bool isPointingIntoStringTable() {
        return this->zeroes == 0;
      }

      unsigned long getStringTablePointer() {
        return this->offset;
      }
    } pointer;
  } symbol;
  long value;
  short sectionNumber;
  unsigned short symbolType;
  unsigned short storageClass : 8;
  short auxiliaryCount : 8;

 public:
  bool isMethod() {
    return symbolType & 0x20;
  }

  unsigned long getStringTablePointer() {
    return symbol.pointer.getStringTablePointer();
  }

  bool isInStringTable() {
    return symbol.pointer.isPointingIntoStringTable();
  }

  // For now always treat value as a relative virtual address into the code section
  long getRelativeAddress() {
    return value;
  }

  decltype(auxiliaryCount) getAuxilaryRecords() {
    return auxiliaryCount;
  }

  char *getShortName() {
    return symbol.name;
  }
};

bool WindowsDecoder::decode(address pc, char *buf, int buflen, int *offset,
                            const char *modulepath, bool demangle) {
  void *imageBase;
  void *address;
  char filename[MAX_PATH] = {};

  ::memcpy(&address, &pc, sizeof (pc));

  RtlPcToFileHeader(address, &imageBase);

  if (!GetModuleFileNameExA(GetCurrentProcess(), reinterpret_cast<HMODULE>(imageBase), filename, sizeof(filename))) {
    return false;
  }

  HANDLE handle = INVALID_HANDLE_VALUE;
  HANDLE mapping = nullptr;
  void *mapped = nullptr;
  MODULEINFO module;
  bool success = false;

  handle = CreateFileA(filename, GENERIC_READ, FILE_SHARE_READ, nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);

  if (handle != INVALID_HANDLE_VALUE) {
    LARGE_INTEGER size;

    if (GetFileSizeEx(handle, &size)) {
      mapping = CreateFileMappingA(handle, nullptr, PAGE_READONLY, size.u.HighPart, size.u.LowPart, nullptr);

      if (mapping != nullptr) {
        mapped = MapViewOfFile(mapping, FILE_MAP_READ, 0, 0, size.QuadPart);

        if (mapped != nullptr) {
          if (GetModuleInformation(GetCurrentProcess(), GetModuleHandleA(filename), &module, sizeof(module))) {
            uintptr_t file = reinterpret_cast<uintptr_t>(mapped);
            PIMAGE_DOS_HEADER dosHeader = reinterpret_cast<PIMAGE_DOS_HEADER>(file);
            PIMAGE_NT_HEADERS coffHeader = reinterpret_cast<PIMAGE_NT_HEADERS>(reinterpret_cast<uintptr_t>(dosHeader) + dosHeader->e_lfanew);

            uintptr_t symbolTable = file + coffHeader->FileHeader.PointerToSymbolTable;
            uintptr_t stringTable = symbolTable + coffHeader->FileHeader.NumberOfSymbols * 18;

            COFFSymbol *const list = static_cast<COFFSymbol *>(::malloc(coffHeader->FileHeader.NumberOfSymbols * sizeof (COFFSymbol)));
            if (list != nullptr) {
              COFFSymbol *ptr = list;

              ::memset(list, 0, coffHeader->FileHeader.NumberOfSymbols * sizeof (COFFSymbol));

              for (DWORD dword = 0; dword < coffHeader->FileHeader.NumberOfSymbols; dword += 1) {
                COFFSymbol *info = reinterpret_cast<COFFSymbol *>(symbolTable + dword * 18);

                // For now we only know how to handle the case of when value field holds a relative address from the start
                // of the code section, when the symbol names a method
                if (info->isMethod()) {
                  if (reinterpret_cast<uintptr_t>(module.lpBaseOfDll) + coffHeader->OptionalHeader.BaseOfCode + info->getRelativeAddress() == reinterpret_cast<uintptr_t>(pc)) {
                    // We have an exact match for a symbol exactly on that address. Return this symbol immediately
                    *offset = 0;
                    if (info->isInStringTable()) {
                      const char *const symbol = reinterpret_cast<char *>(stringTable + info->getStringTablePointer());
                      if (!demangle || !this->demangle(symbol, buf, buflen)) {
                        ::strncpy(buf, symbol, buflen - 1);
                      }
                    } else {
                      char symbol[9];
                      symbol[8] = '\0';
                      ::strncpy(symbol, info->getShortName(), 8);
                      if (!demangle || !this->demangle(symbol, buf, buflen)) {
                        ::strncpy(buf, symbol, buflen - 1);
                      }
                    }
                    buf[buflen - 1] = '\0';
                    success = true;
                    break;
                  } else {
                    // Not an exact match, add to list of symbols to sort
                    *ptr = *info;
                    ptr += 1;
                  }
                }

                if (info->getAuxilaryRecords()) {
                  // Auxiliary Records are the same size as Symbol Records and come right after them, so we can skip them like this
                  dword += info->getAuxilaryRecords();
                }
              }

              if (!success && ptr != list) {
                uintptr_t displacement = UINTPTR_MAX;
                COFFSymbol *information = nullptr;

                for (COFFSymbol *info = list; info < ptr; info += 1) {
                  uintptr_t absolute = reinterpret_cast<uintptr_t>(module.lpBaseOfDll) + coffHeader->OptionalHeader.BaseOfCode + info->getRelativeAddress();
                  if (absolute == reinterpret_cast<uintptr_t>(pc)) ShouldNotReachHere();
                  if (absolute < reinterpret_cast<uintptr_t>(pc)) {
                    if (reinterpret_cast<uintptr_t>(pc) - absolute < displacement) {
                      displacement = reinterpret_cast<uintptr_t>(pc) - absolute;
                      information = info;
                    }
                  }
                }

                if (information != nullptr) {
                  *offset = static_cast<int>(displacement);

                  if (information->isInStringTable()) {
                    const char *const symbol = reinterpret_cast<char *>(stringTable + information->getStringTablePointer());
                    if (!demangle || !this->demangle(symbol, buf, buflen)) {
                      ::strncpy(buf, symbol, buflen - 1);
                    }
                  } else {
                    char symbol[9];
                    symbol[8] = '\0';
                    ::strncpy(symbol, information->getShortName(), 8);
                    if (!demangle || !this->demangle(symbol, buf, buflen)) {
                      ::strncpy(buf, symbol, buflen - 1);
                    }
                  }
                  buf[buflen - 1] = '\0';
                  success = true;
                }
              }
            }

            ::free(list);
          }
        }
      }
    }
  }

  if (mapped != nullptr) UnmapViewOfFile(mapped);
  if (mapping != nullptr) CloseHandle(mapping);
  if (handle != INVALID_HANDLE_VALUE) CloseHandle(handle);

  return success;
}

bool WindowsDecoder::decode(address pc, char *buf, int buflen, int *offset, const void *base) {
  void *imageBase;
  void *address;
  char filename[MAX_PATH] = {};

  ::memcpy(&address, &pc, sizeof (pc));

  RtlPcToFileHeader(address, &imageBase);

  if (!GetModuleFileNameExA(GetCurrentProcess(), reinterpret_cast<HMODULE>(imageBase), filename, sizeof(filename))) {
    return false;
  }

  HANDLE handle = INVALID_HANDLE_VALUE;
  HANDLE mapping = nullptr;
  void* mapped = nullptr;
  MODULEINFO module;
  bool success = false;

  handle = CreateFileA(filename, GENERIC_READ, FILE_SHARE_READ, nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);

  if (handle != INVALID_HANDLE_VALUE) {
    LARGE_INTEGER size;

    if (GetFileSizeEx(handle, &size)) {
      mapping = CreateFileMappingA(handle, nullptr, PAGE_READONLY, size.u.HighPart, size.u.LowPart, nullptr);

      if (mapping != nullptr) {
        mapped = MapViewOfFile(mapping, FILE_MAP_READ, 0, 0, size.QuadPart);

        if (mapped != nullptr) {
          if (GetModuleInformation(GetCurrentProcess(), GetModuleHandleA(filename), &module, sizeof(module))) {
            uintptr_t file = reinterpret_cast<uintptr_t>(mapped);
            PIMAGE_DOS_HEADER dosHeader = reinterpret_cast<PIMAGE_DOS_HEADER>(file);
            PIMAGE_NT_HEADERS coffHeader = reinterpret_cast<PIMAGE_NT_HEADERS>(reinterpret_cast<uintptr_t>(dosHeader) + dosHeader->e_lfanew);

            uintptr_t symbolTable = file + coffHeader->FileHeader.PointerToSymbolTable;
            uintptr_t stringTable = symbolTable + coffHeader->FileHeader.NumberOfSymbols * 18;

            COFFSymbol *const list = static_cast<COFFSymbol *>(::malloc(coffHeader->FileHeader.NumberOfSymbols * sizeof (COFFSymbol)));
            if (list != nullptr) {
              COFFSymbol *ptr = list;

              ::memset(list, 0, coffHeader->FileHeader.NumberOfSymbols * sizeof (COFFSymbol));

              for (DWORD dword = 0; dword < coffHeader->FileHeader.NumberOfSymbols; dword += 1) {
                COFFSymbol *info = reinterpret_cast<COFFSymbol *>(symbolTable + dword * 18);

                // For now we only know how to handle the case of when value field holds a relative address from the start
                // of the code section, when the symbol names a method
                if (info->isMethod()) {
                  if (reinterpret_cast<uintptr_t>(module.lpBaseOfDll) + coffHeader->OptionalHeader.BaseOfCode + info->getRelativeAddress() == reinterpret_cast<uintptr_t>(pc)) {
                    // We have an exact match for a symbol exactly on that address. Return this symbol immediately
                    *offset = 0;
                    if (info->isInStringTable()) {
                      const char *const symbol = reinterpret_cast<char *>(stringTable + info->getStringTablePointer());
                      if (!demangle(symbol, buf, buflen)) {
                        ::strncpy(buf, symbol, buflen - 1);
                      }
                    } else {
                      char symbol[9];
                      symbol[8] = '\0';
                      ::strncpy(symbol, info->getShortName(), 8);
                      if (demangle(symbol, buf, buflen)) {
                        ::strncpy(buf, symbol, buflen - 1);
                      }
                    }
                    buf[buflen - 1] = '\0';
                    success = true;
                    break;
                  } else {
                    // Not an exact match, add to list of symbols to sort
                    *ptr = *info;
                    ptr += 1;
                  }
                }

                if (info->getAuxilaryRecords()) {
                  // Auxiliary Records are the same size as Symbol Records and come right after them, so we can skip them like this
                  dword += info->getAuxilaryRecords();
                }
              }

              if (!success && ptr != list) {
                uintptr_t displacement = UINTPTR_MAX;
                COFFSymbol *information = nullptr;

                for (COFFSymbol *info = list; info < ptr; info += 1) {
                  uintptr_t absolute = reinterpret_cast<uintptr_t>(module.lpBaseOfDll) + coffHeader->OptionalHeader.BaseOfCode + info->getRelativeAddress();
                  if (absolute == reinterpret_cast<uintptr_t>(pc)) ShouldNotReachHere();
                  if (absolute < reinterpret_cast<uintptr_t>(pc)) {
                    if (reinterpret_cast<uintptr_t>(pc) - absolute < displacement) {
                      displacement = reinterpret_cast<uintptr_t>(pc) - absolute;
                      information = info;
                    }
                  }
                }

                if (information != nullptr) {
                  *offset = static_cast<int>(displacement);

                  if (information->isInStringTable()) {
                    const char *const symbol = reinterpret_cast<char *>(stringTable + information->getStringTablePointer());
                    if (!demangle(symbol, buf, buflen)) {
                      ::strncpy(buf, symbol, buflen - 1);
                    }
                  } else {
                    char symbol[9];
                    symbol[8] = '\0';
                    ::strncpy(symbol, information->getShortName(), 8);
                    if (!demangle(symbol, buf, buflen)) {
                      ::strncpy(buf, symbol, buflen - 1);
                    }
                  }
                  buf[buflen - 1] = '\0';
                  success = true;
                }
              }
            }

            ::free(list);
          }
        }
      }
    }
  }

  if (mapped != nullptr) UnmapViewOfFile(mapped);
  if (mapping != nullptr) CloseHandle(mapping);
  if (handle != INVALID_HANDLE_VALUE) CloseHandle(handle);

  return success;
}

bool WindowsDecoder::demangle(const char *symbol, char *buf, int buflen) {
#ifdef __GNUC__
  int status;
  char *result;

  // Don't pass buf to __cxa_demangle. In case of the 'buf' is too small,
  // __cxa_demangle will call system "realloc" for additional memory, which
  // may use different malloc/realloc mechanism that allocates 'buf'.
  if ((result = abi::__cxa_demangle(symbol, nullptr, nullptr, &status)) != nullptr) {
    jio_snprintf(buf, buflen, "%s", result);
    // call C library's free
    ::free(result);
    return true;
  }
  return false;
#else
  return false;
#endif
}

AbstractDecoder  *Decoder::_shared_decoder = nullptr;
AbstractDecoder  *Decoder::_error_handler_decoder = nullptr;
NullDecoder       Decoder::_do_nothing_decoder;

AbstractDecoder *Decoder::get_shared_instance() {
  assert(shared_decoder_lock()->owned_by_self(), "Require DecoderLock to enter");

  if (_shared_decoder == nullptr) {
    _shared_decoder = create_decoder();
  }
  return _shared_decoder;
}

AbstractDecoder *Decoder::get_error_handler_instance() {
  if (_error_handler_decoder == nullptr) {
    _error_handler_decoder = create_decoder();
  }
  return _error_handler_decoder;
}


AbstractDecoder *Decoder::create_decoder() {
  AbstractDecoder *decoder = new (std::nothrow)WindowsDecoder();

  if (decoder == nullptr || decoder->has_error()) {
    if (decoder != nullptr) {
      delete decoder;
    }
    decoder = &_do_nothing_decoder;
  }
  return decoder;
}

Mutex *Decoder::shared_decoder_lock() {
  assert(SharedDecoder_lock != nullptr, "Just check");
  return SharedDecoder_lock;
}

bool Decoder::decode(address addr, char* buf, int buflen, int* offset, const char* modulepath, bool demangle) {
  return SymbolEngine::decode(addr, buf, buflen, offset, demangle) ? true : [&]() -> bool {
    if (VMError::is_error_reported_in_current_thread()) {
      return get_error_handler_instance()->decode(addr, buf, buflen, offset, modulepath, demangle);
    } else {
      MutexLocker locker(shared_decoder_lock(), Mutex::_no_safepoint_check_flag);
      return get_shared_instance()->decode(addr, buf, buflen, offset, modulepath, demangle);
    }
  }();
}

bool Decoder::decode(address addr, char* buf, int buflen, int* offset, const void* base) {
  return SymbolEngine::decode(addr, buf, buflen, offset, true) ? true : [&]() -> bool {
    if (VMError::is_error_reported_in_current_thread()) {
      return get_error_handler_instance()->decode(addr, buf, buflen, offset, base);
    } else {
      MutexLocker locker(shared_decoder_lock(), Mutex::_no_safepoint_check_flag);
      return get_shared_instance()->decode(addr, buf, buflen, offset, base);
    }
  }();
}

bool Decoder::get_source_info(address pc, char* buf, size_t buflen, int* line, bool is_pc_after_call) {
  return SymbolEngine::get_source_info(pc, buf, buflen, line);
}

bool Decoder::demangle(const char* symbol, char* buf, int buflen) {
  return SymbolEngine::demangle(symbol, buf, buflen) ? true : [&]() -> bool {
    if (VMError::is_error_reported_in_current_thread()) {
      return get_error_handler_instance()->demangle(symbol, buf, buflen);
    } else {
      MutexLocker locker(shared_decoder_lock(), Mutex::_no_safepoint_check_flag);
      return get_shared_instance()->demangle(symbol, buf, buflen);
    }
  }();
}

void Decoder::print_state_on(outputStream* st) {
  WindowsDbgHelp::print_state_on(st);
  SymbolEngine::print_state_on(st);
}

