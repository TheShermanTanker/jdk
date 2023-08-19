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

    .intel_syntax noprefix

    .globl SafeFetch32_impl
    .globl SafeFetchN_impl

    .text

    # Support for int SafeFetch32(int* address, int defaultval);
    #
    #  rcx : address
    #  edx : defaultval
    .seh_proc SafeFetch32_impl
SafeFetch32_impl:
    push rdx
    .seh_pushreg rdx
    .seh_endprologue
1:
    mov eax, DWORD PTR [rcx]
    pop rdx
    ret
2:
    pop rdx
    mov eax, edx
    ret
    .seh_handler __C_specific_handler, @except
    .seh_handlerdata
    .long 1
    .rva 1b, 2b
    .long 1
    .rva 2b
    .seh_code
    .seh_endproc

    # Support for intptr_t SafeFetchN(intptr_t* address, intptr_t defaultval);
    #
    #  rcx : address
    #  rdx : defaultval
    .seh_proc SafeFetchN_impl
SafeFetchN_impl:
    push rdx
    .seh_pushreg rdx
    .seh_endprologue
1:
    mov rax, QWORD PTR [rcx]
    pop rdx
    ret
2:
    pop rdx
    mov rax, rdx
    ret
    .seh_handler __C_specific_handler, @except
    .seh_handlerdata
    .long 1
    .rva 1b, 2b
    .long 1
    .rva 2b
    .seh_code
    .seh_endproc
