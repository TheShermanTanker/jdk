/*
 * Copyright (c) 2016, 2017, Oracle and/or its affiliates. All rights reserved.
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
 */

#include "jni.h"

#ifdef _WIN32
#ifdef __GNUC__
#define WIN32_TRY
#define WIN32_EXCEPT(filter) if (false)
#elif defined(_MSC_VER)
#define WIN32_TRY __try
#define WIN32_EXCEPT(filter) __except(filter)
#endif
#include <windows.h>
#include <excpt.h>
extern LONG WINAPI topLevelExceptionFilter(struct _EXCEPTION_POINTERS* exceptionInfo);
#endif

extern "C" {
  JNIIMPORT void JNICALL runUnitTests(int argv, char** argc);
}

int main(int argc, char** argv) {
#ifdef _WIN32
  WIN32_TRY {
#endif
  runUnitTests(argc, argv);
#ifdef _WIN32
  } WIN32_EXCEPT (topLevelExceptionFilter(GetExceptionInformation())) {}
#endif
  return 0;
}
