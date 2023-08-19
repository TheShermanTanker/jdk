/*
 * Copyright (c) 2018, 2021, Intel Corporation. All rights reserved.
 * Intel Short Vector Math Library (SVML) Source Code
 *
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.  Oracle designates this
 * particular file as subject to the "Classpath" exception as provided
 * by Oracle in the LICENSE file that accompanied this code.
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

#include "globals_vectorApiSupport_windows.S.inc"
#ifdef __VECTOR_API_MATH_INTRINSICS_WINDOWS
        .intel_syntax noprefix

        .text

TXTST0:

        .text

        .align    16, 0x90
        .globl __jsvml_atan22_ha_ex

__jsvml_atan22_ha_ex:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 536
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [368+rsp], xmm15
        xor       eax, eax
        movups    XMMWORD PTR [384+rsp], xmm14
        movups    XMMWORD PTR [400+rsp], xmm13
        movaps    xmm13, xmm1
        movups    XMMWORD PTR [352+rsp], xmm12
        movups    XMMWORD PTR [256+rsp], xmm11
        movups    XMMWORD PTR [272+rsp], xmm10
        movups    XMMWORD PTR [288+rsp], xmm9
        movups    XMMWORD PTR [304+rsp], xmm8
        movups    XMMWORD PTR [320+rsp], xmm7
        movups    XMMWORD PTR [336+rsp], xmm6
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        and       r13, -64
        movaps    xmm1, xmm4
        andps     xmm4, xmm0
        andps     xmm1, xmm13
        movaps    xmm2, xmm4
        pshufd    xmm15, xmm1, 221
        pxor      xmm2, xmm0
        movups    XMMWORD PTR [480+rsp], xmm2
        movaps    xmm14, xmm1
        movups    xmm5, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        movdqa    xmm7, xmm15
        pshufd    xmm2, xmm4, 221
        pxor      xmm14, xmm13
        movq      xmm3, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        movdqa    xmm6, xmm2
        movups    XMMWORD PTR [416+rsp], xmm13
        psubd     xmm7, xmm3
        movups    XMMWORD PTR [432+rsp], xmm5
        psubd     xmm6, xmm3
        cmpltpd   xmm13, xmm5
        movdqa    xmm5, xmm2
        movdqa    xmm3, xmm7
        psubd     xmm5, xmm15
        movaps    xmm9, xmm4
        movq      xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        movaps    xmm8, xmm1
        pcmpgtd   xmm3, xmm15
        pcmpeqd   xmm7, xmm15
        movups    xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1088]
        por       xmm3, xmm7
        movdqa    xmm7, xmm6
        movaps    xmm10, xmm12
        pcmpgtd   xmm7, xmm15
        pcmpeqd   xmm6, xmm15
        movups    XMMWORD PTR [448+rsp], xmm4
        andps     xmm10, xmm4
        movq      xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3200]
        por       xmm7, xmm6
        movq      xmm6, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3264]
        paddd     xmm5, xmm4
        por       xmm3, xmm7
        movdqa    xmm7, xmm6
        pcmpgtd   xmm7, xmm5
        pcmpeqd   xmm6, xmm5
        por       xmm7, xmm6
        movaps    xmm11, xmm12
        por       xmm3, xmm7
        andps     xmm11, xmm1
        movdqu    XMMWORD PTR [496+rsp], xmm3
        movups    xmm15, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        movups    xmm7, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        movups    xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        movups    xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        mulpd     xmm15, xmm1
        mulpd     xmm3, xmm1
        mulpd     xmm7, xmm1
        mulpd     xmm4, xmm1
        subpd     xmm8, xmm11
        subpd     xmm9, xmm10
        movups    XMMWORD PTR [464+rsp], xmm1
        pshufd    xmm6, xmm15, 221
        pshufd    xmm1, xmm3, 221
        psubd     xmm6, xmm2
        pshufd    xmm15, xmm7, 221
        psubd     xmm1, xmm2
        pshufd    xmm7, xmm4, 221
        psubd     xmm15, xmm2
        psubd     xmm7, xmm2
        psrad     xmm6, 31
        psrad     xmm1, 31
        psrad     xmm15, 31
        psrad     xmm7, 31
        paddd     xmm6, xmm1
        paddd     xmm15, xmm7
        movaps    xmm1, xmm11
        movq      xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1408]
        paddd     xmm6, xmm15
        paddd     xmm6, xmm5
        movaps    xmm15, xmm8
        pslld     xmm6, 5
        movaps    xmm7, xmm9
        movd      edx, xmm6
        pshufd    xmm2, xmm6, 1
        movups    XMMWORD PTR [32+rsp], xmm0
        movd      ecx, xmm2
        movaps    xmm2, xmm10
        movq      xmm3, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rdx]
        movq      xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rdx]
        movhpd    xmm3, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rcx]
        mulpd     xmm1, xmm3
        mulpd     xmm15, xmm3
        mulpd     xmm10, xmm3
        mulpd     xmm3, xmm9
        movhpd    xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rcx]
        andps     xmm2, xmm4
        andps     xmm7, xmm4
        subpd     xmm2, xmm1
        subpd     xmm7, xmm15
        andps     xmm11, xmm4
        andps     xmm4, xmm8
        addpd     xmm11, xmm10
        addpd     xmm4, xmm3
        movaps    xmm1, xmm2
        movaps    xmm9, xmm11
        subpd     xmm1, xmm7
        addpd     xmm9, xmm4
        movaps    xmm15, xmm1
        subpd     xmm15, xmm2
        subpd     xmm11, xmm9
        subpd     xmm7, xmm15
        addpd     xmm4, xmm11
        movaps    xmm2, xmm12
        andps     xmm12, xmm9
        subpd     xmm9, xmm12
        pshufd    xmm15, xmm12, 221
        andps     xmm2, xmm1
        movdqa    xmm11, xmm15
        movq      xmm8, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1600]
        pslld     xmm11, 3
        movq      xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1664]
        pand      xmm11, xmm8
        por       xmm11, xmm10
        addpd     xmm4, xmm9
        subpd     xmm1, xmm2
        rcpps     xmm9, xmm11
        addpd     xmm7, xmm1
        movq      xmm3, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1472]
        psrld     xmm9, 3
        movq      xmm8, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1536]
        pand      xmm15, xmm3
        movq      xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1728]
        psubd     xmm8, xmm15
        psubd     xmm9, xmm1
        movaps    xmm1, xmm2
        paddd     xmm9, xmm8
        pshufd    xmm10, xmm9, 80
        andps     xmm10, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        mulpd     xmm12, xmm10
        mulpd     xmm4, xmm10
        subpd     xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        mulpd     xmm2, xmm10
        addpd     xmm12, xmm4
        movaps    xmm4, xmm12
        mulpd     xmm4, xmm12
        subpd     xmm4, xmm12
        mulpd     xmm4, xmm12
        addpd     xmm4, xmm12
        mulpd     xmm4, xmm12
        subpd     xmm4, xmm12
        mulpd     xmm4, xmm12
        addpd     xmm4, xmm12
        mulpd     xmm4, xmm12
        subpd     xmm4, xmm12
        mulpd     xmm4, xmm10
        mulpd     xmm1, xmm4
        mulpd     xmm4, xmm7
        mulpd     xmm7, xmm10
        addpd     xmm1, xmm4
        addpd     xmm1, xmm7
        movaps    xmm8, xmm1
        addpd     xmm8, xmm2
        movaps    xmm3, xmm8
        mulpd     xmm3, xmm8
        movaps    xmm7, xmm3
        mulpd     xmm7, xmm3
        movups    xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        mulpd     xmm4, xmm7
        movups    xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        addpd     xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        mulpd     xmm12, xmm7
        mulpd     xmm4, xmm7
        addpd     xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        addpd     xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        mulpd     xmm12, xmm7
        mulpd     xmm4, xmm7
        addpd     xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        addpd     xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        mulpd     xmm12, xmm7
        mulpd     xmm4, xmm7
        addpd     xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        addpd     xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        mulpd     xmm12, xmm7
        mulpd     xmm4, xmm7
        addpd     xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        addpd     xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        mulpd     xmm7, xmm12
        mulpd     xmm4, xmm3
        addpd     xmm7, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        addpd     xmm7, xmm4
        mulpd     xmm3, xmm7
        movq      xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rdx]
        movhpd    xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rcx]
        addpd     xmm5, xmm1
        mulpd     xmm8, xmm3
        movups    xmm0, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        andps     xmm0, xmm13
        andps     xmm13, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        pxor      xmm13, xmm14
        addpd     xmm13, xmm5
        addpd     xmm13, xmm8
        addpd     xmm2, xmm13
        movq      xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rdx]
        movhpd    xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rcx]
        addpd     xmm6, xmm2
        pxor      xmm6, xmm14
        addpd     xmm0, xmm6
        movdqu    xmm6, XMMWORD PTR [496+rsp]
        movmskps  r9d, xmm6
        orps      xmm0, XMMWORD PTR [480+rsp]
        movups    xmm10, XMMWORD PTR [464+rsp]
        mov       QWORD PTR [520+rsp], r13
        test      r9d, 3
        jne       .L_B1_12

.L_B1_2:

        test      eax, eax
        jne       .L_B1_4

.L_B1_3:

        movups    xmm6, XMMWORD PTR [336+rsp]
        movups    xmm7, XMMWORD PTR [320+rsp]
        movups    xmm8, XMMWORD PTR [304+rsp]
        movups    xmm9, XMMWORD PTR [288+rsp]
        movups    xmm10, XMMWORD PTR [272+rsp]
        movups    xmm11, XMMWORD PTR [256+rsp]
        movups    xmm12, XMMWORD PTR [352+rsp]
        movups    xmm13, XMMWORD PTR [400+rsp]
        movups    xmm14, XMMWORD PTR [384+rsp]
        movups    xmm15, XMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [512+rsp]
        add       rsp, 536
        ret

.L_B1_4:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    xmm2, XMMWORD PTR [416+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm2
        movups    XMMWORD PTR [128+r13], xmm0
        je        .L_B1_3

.L_B1_7:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B1_8:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B1_11

.L_B1_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B1_8

.L_B1_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B1_3

.L_B1_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B1_9

.L_B1_12:

        movups    xmm9, XMMWORD PTR [448+rsp]
        movaps    xmm7, xmm9
        cmpnltpd  xmm7, xmm10
        movups    xmm5, XMMWORD PTR [416+rsp]
        movaps    xmm2, xmm7
        movups    xmm8, XMMWORD PTR [32+rsp]
        movaps    xmm11, xmm5
        movups    xmm13, XMMWORD PTR [432+rsp]
        andnps    xmm2, xmm10
        movups    xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        movaps    xmm4, xmm3
        cmpordpd  xmm11, xmm5
        cmpeqpd   xmm10, xmm13
        andps     xmm3, xmm8
        andps     xmm1, xmm7
        cmpordpd  xmm8, xmm8
        andps     xmm7, xmm9
        andps     xmm11, xmm8
        cmpeqpd   xmm9, xmm13
        orps      xmm2, xmm7
        orps      xmm10, xmm9
        cmpeqpd   xmm2, xmm13
        pshufd    xmm7, xmm10, 221
        movaps    xmm8, xmm2
        pshufd    xmm10, xmm11, 221
        andnps    xmm8, xmm1
        pand      xmm7, xmm10
        andps     xmm2, xmm13
        movdqa    xmm12, xmm7
        andps     xmm4, xmm5
        pshufd    xmm14, xmm13, 221
        pandn     xmm12, xmm6
        pshufd    xmm6, xmm5, 221
        orps      xmm8, xmm2
        pcmpgtd   xmm14, xmm6
        orps      xmm8, xmm4
        pshufd    xmm15, xmm14, 80
        andps     xmm15, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        addpd     xmm8, xmm15
        movmskps  eax, xmm12
        pshufd    xmm1, xmm7, 80
        orps      xmm8, xmm3
        movdqa    xmm2, xmm1
        andps     xmm8, xmm1
        andnps    xmm2, xmm0
        and       eax, 3
        movaps    xmm0, xmm2
        orps      xmm0, xmm8
        jmp       .L_B1_2
        .align    16, 0x90

.L_B1_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan22_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_ex_B1_B4:
        .long   1603585
        .long   4248696
        .long   1402992
        .long   1341544
        .long   1280096
        .long   1218647
        .long   1157198
        .long   1095749
        .long   1493052
        .long   1693743
        .long   1632294
        .long   1570843
        .long   4391179

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan22_ha_ex_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_ex_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan22_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_7
        .rva    .L_B1_12
        .rva    _unwind___jsvml_atan22_ha_ex_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_ex_B12_B12:
        .long   33
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan22_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_12
        .rva    .L_B1_13
        .rva    _unwind___jsvml_atan22_ha_ex_B12_B12

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_atan21_ha_ex

__jsvml_atan21_ha_ex:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L44:

        sub       rsp, 488
        mov       ecx, -2144337920
        movups    XMMWORD PTR [240+rsp], xmm15
        mov       r9d, 1005584384
        movups    XMMWORD PTR [256+rsp], xmm14
        mov       r8d, -36700160
        movups    XMMWORD PTR [272+rsp], xmm13
        mov       r10d, 4
        movups    XMMWORD PTR [288+rsp], xmm12
        movd      xmm14, ecx
        movups    XMMWORD PTR [304+rsp], xmm11
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [320+rsp], xmm10
        mov       r11d, 8388607
        movups    XMMWORD PTR [336+rsp], xmm9
        movaps    xmm9, xmm1
        movups    XMMWORD PTR [352+rsp], xmm8
        xor       ecx, ecx
        movups    XMMWORD PTR [368+rsp], xmm7
        movups    XMMWORD PTR [384+rsp], xmm6
        mov       QWORD PTR [232+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        movsd     xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        and       r13, -64
        movaps    xmm12, xmm5
        andps     xmm5, xmm0
        andps     xmm12, xmm9
        movaps    xmm2, xmm5
        movsd     xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        movaps    xmm10, xmm12
        movups    XMMWORD PTR [416+rsp], xmm9
        pxor      xmm10, xmm9
        movups    XMMWORD PTR [400+rsp], xmm0
        pxor      xmm2, xmm0
        movups    XMMWORD PTR [432+rsp], xmm13
        movaps    xmm1, xmm12
        movsd     xmm11, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        cmpltsd   xmm9, xmm13
        movsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        andps     xmm11, xmm9
        pshufd    xmm13, xmm12, 85
        andps     xmm9, xmm7
        pshufd    xmm0, xmm5, 85
        movdqa    xmm15, xmm13
        movsd     xmm8, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1088]
        movdqa    xmm7, xmm0
        movaps    xmm3, xmm8
        psubd     xmm15, xmm14
        psubd     xmm7, xmm13
        movd      xmm13, r9d
        movups    XMMWORD PTR [448+rsp], xmm5
        andps     xmm3, xmm5
        movups    XMMWORD PTR [464+rsp], xmm2
        movaps    xmm2, xmm5
        movd      xmm5, r8d
        movdqa    xmm6, xmm0
        paddd     xmm7, xmm13
        movdqa    xmm13, xmm15
        psubd     xmm6, xmm14
        pcmpgtd   xmm13, xmm5
        pcmpeqd   xmm15, xmm5
        movaps    xmm14, xmm12
        por       xmm13, xmm15
        movdqa    xmm15, xmm6
        pcmpgtd   xmm15, xmm5
        pcmpeqd   xmm6, xmm5
        por       xmm15, xmm6
        movaps    xmm4, xmm8
        pxor      xmm5, xmm5
        pxor      xmm6, xmm6
        pcmpgtd   xmm5, xmm7
        pcmpeqd   xmm6, xmm7
        por       xmm13, xmm15
        por       xmm5, xmm6
        movaps    xmm7, xmm12
        movaps    xmm15, xmm12
        movaps    xmm6, xmm12
        por       xmm13, xmm5
        mulsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        andps     xmm4, xmm12
        subsd     xmm1, xmm4
        mulsd     xmm6, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        subsd     xmm2, xmm3
        mulsd     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        mulsd     xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        pshufd    xmm5, xmm7, 85
        mov       r8d, 1065353216
        pshufd    xmm7, xmm15, 85
        psubd     xmm5, xmm0
        pshufd    xmm6, xmm6, 85
        psubd     xmm7, xmm0
        pshufd    xmm14, xmm14, 85
        psubd     xmm6, xmm0
        psubd     xmm14, xmm0
        psrad     xmm5, 31
        psrad     xmm7, 31
        psrad     xmm6, 31
        psrad     xmm14, 31
        paddd     xmm5, xmm7
        paddd     xmm6, xmm14
        movd      xmm0, r10d
        paddd     xmm5, xmm6
        mov       r10d, -1048576
        paddd     xmm5, xmm0
        mov       r9d, 133169152
        pslld     xmm5, 5
        pxor      xmm9, xmm10
        movd      edx, xmm5
        movq      xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rax+rdx]
        movdqa    xmm5, xmm6
        movdqa    xmm7, xmm6
        mulsd     xmm5, xmm4
        mulsd     xmm7, xmm1
        movq      xmm14, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rax+rdx]
        movdqa    xmm0, xmm14
        movdqa    xmm15, xmm14
        andps     xmm4, xmm14
        andps     xmm14, xmm1
        movdqa    xmm1, xmm6
        andps     xmm0, xmm3
        mulsd     xmm1, xmm3
        subsd     xmm0, xmm5
        mulsd     xmm6, xmm2
        addsd     xmm1, xmm4
        addsd     xmm6, xmm14
        andps     xmm15, xmm2
        movaps    xmm3, xmm1
        movd      xmm4, r11d
        mov       r11d, 2145386496
        movd      xmm2, r9d
        subsd     xmm15, xmm7
        addsd     xmm3, xmm6
        movaps    xmm7, xmm0
        subsd     xmm1, xmm3
        subsd     xmm7, xmm15
        addsd     xmm6, xmm1
        movaps    xmm5, xmm7
        mov       QWORD PTR [480+rsp], r13
        subsd     xmm5, xmm0
        movd      xmm0, r8d
        subsd     xmm15, xmm5
        movaps    xmm5, xmm8
        andps     xmm8, xmm3
        pshufd    xmm14, xmm8, 85
        andps     xmm5, xmm7
        movdqa    xmm1, xmm14
        subsd     xmm3, xmm8
        subsd     xmm7, xmm5
        addsd     xmm6, xmm3
        addsd     xmm7, xmm15
        pslld     xmm1, 3
        movd      xmm3, r10d
        pand      xmm1, xmm4
        pand      xmm14, xmm3
        por       xmm1, xmm0
        movd      xmm0, r11d
        rcpps     xmm1, xmm1
        psrld     xmm1, 3
        psubd     xmm0, xmm14
        psubd     xmm1, xmm2
        paddd     xmm1, xmm0
        movsd     xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        pshufd    xmm0, xmm1, 0
        andps     xmm0, xmm15
        mulsd     xmm8, xmm0
        movaps    xmm1, xmm0
        mulsd     xmm6, xmm0
        mulsd     xmm1, xmm7
        subsd     xmm8, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        movsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        addsd     xmm6, xmm8
        movaps    xmm8, xmm6
        mulsd     xmm8, xmm6
        subsd     xmm8, xmm6
        mulsd     xmm8, xmm6
        addsd     xmm8, xmm6
        mulsd     xmm8, xmm6
        subsd     xmm8, xmm6
        mulsd     xmm8, xmm6
        addsd     xmm8, xmm6
        mulsd     xmm8, xmm6
        subsd     xmm8, xmm6
        mulsd     xmm8, xmm0
        mulsd     xmm0, xmm5
        movaps    xmm6, xmm8
        movaps    xmm15, xmm0
        mulsd     xmm6, xmm5
        mulsd     xmm8, xmm7
        movsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        addsd     xmm8, xmm6
        addsd     xmm1, xmm8
        addsd     xmm15, xmm1
        addsd     xmm1, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rax+rdx]
        movaps    xmm14, xmm15
        addsd     xmm1, xmm9
        mulsd     xmm14, xmm15
        movaps    xmm5, xmm14
        mulsd     xmm5, xmm14
        mulsd     xmm2, xmm5
        mulsd     xmm7, xmm5
        addsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        addsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        mulsd     xmm2, xmm5
        mulsd     xmm7, xmm5
        addsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        addsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        mulsd     xmm2, xmm5
        mulsd     xmm7, xmm5
        addsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        addsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        mulsd     xmm2, xmm5
        mulsd     xmm7, xmm5
        addsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        addsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        mulsd     xmm2, xmm5
        mulsd     xmm7, xmm5
        addsd     xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        addsd     xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        mulsd     xmm2, xmm14
        addsd     xmm2, xmm7
        mulsd     xmm2, xmm14
        mulsd     xmm2, xmm15
        addsd     xmm2, xmm1
        addsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rax+rdx]
        movmskps  eax, xmm13
        pxor      xmm0, xmm10
        movups    xmm10, XMMWORD PTR [448+rsp]
        addsd     xmm0, xmm11
        orps      xmm0, XMMWORD PTR [464+rsp]
        test      al, 1
        jne       .L_B2_8

.L_B2_2:

        test      ecx, ecx
        jne       .L_B2_4

.L_B2_3:

        movups    xmm6, XMMWORD PTR [384+rsp]
        movups    xmm7, XMMWORD PTR [368+rsp]
        movups    xmm8, XMMWORD PTR [352+rsp]
        movups    xmm9, XMMWORD PTR [336+rsp]
        movups    xmm10, XMMWORD PTR [320+rsp]
        movups    xmm11, XMMWORD PTR [304+rsp]
        movups    xmm12, XMMWORD PTR [288+rsp]
        movups    xmm13, XMMWORD PTR [272+rsp]
        movups    xmm14, XMMWORD PTR [256+rsp]
        movups    xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 488
        ret

.L_B2_4:

        movups    xmm1, XMMWORD PTR [400+rsp]
        movups    xmm2, XMMWORD PTR [416+rsp]
        movsd     QWORD PTR [r13], xmm1
        movsd     QWORD PTR [64+r13], xmm2
        movsd     QWORD PTR [128+r13], xmm0
        jne       .L_B2_6

.L_B2_5:

        movsd     xmm0, QWORD PTR [128+r13]
        jmp       .L_B2_3

.L_B2_6:

        je        .L_B2_5

.L_B2_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B2_5

.L_B2_8:

        movaps    xmm8, xmm10
        movups    xmm7, XMMWORD PTR [416+rsp]
        cmpnltsd  xmm8, xmm12
        movups    xmm9, XMMWORD PTR [400+rsp]
        movaps    xmm2, xmm8
        movups    xmm1, XMMWORD PTR [432+rsp]
        movaps    xmm11, xmm7
        movsd     xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        andnps    xmm2, xmm12
        movsd     xmm3, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        movaps    xmm5, xmm4
        andps     xmm4, xmm9
        andps     xmm3, xmm8
        andps     xmm8, xmm10
        andps     xmm5, xmm7
        orps      xmm2, xmm8
        cmpordsd  xmm11, xmm7
        cmpordsd  xmm9, xmm9
        cmpeqsd   xmm12, xmm1
        cmpeqsd   xmm10, xmm1
        cmpeqsd   xmm2, xmm1
        andps     xmm11, xmm9
        orps      xmm12, xmm10
        pshufd    xmm12, xmm12, 85
        movaps    xmm8, xmm2
        pshufd    xmm10, xmm11, 85
        andnps    xmm8, xmm3
        pand      xmm12, xmm10
        andps     xmm2, xmm1
        movdqa    xmm14, xmm12
        orps      xmm8, xmm2
        pshufd    xmm15, xmm1, 85
        pandn     xmm14, xmm13
        pshufd    xmm13, xmm7, 85
        orps      xmm8, xmm5
        pcmpgtd   xmm15, xmm13
        movsd     xmm6, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        pshufd    xmm1, xmm15, 0
        andps     xmm1, xmm6
        pshufd    xmm2, xmm12, 0
        addsd     xmm8, xmm1
        movmskps  ecx, xmm14
        movdqa    xmm3, xmm2
        orps      xmm8, xmm4
        andnps    xmm3, xmm0
        andps     xmm8, xmm2
        movaps    xmm0, xmm3
        and       ecx, 1
        orps      xmm0, xmm8
        jmp       .L_B2_2
        .align    16, 0x90

.L_B2_9:

        .section .drectve
        .ascii " -export \"__jsvml_atan21_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan21_ha_ex_B1_B8:
        .long   1612289
        .long   1954970
        .long   1599634
        .long   1538186
        .long   1476736
        .long   1415283
        .long   1353828
        .long   1292372
        .long   1230918
        .long   1169463
        .long   1108008
        .long   1046553
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_9
        .rva    _unwind___jsvml_atan21_ha_ex_B1_B8

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_atan24_ha_l9

__jsvml_atan24_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L79:

        sub       rsp, 616
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [336+rsp], ymm15
        xor       r8d, r8d
        vmovups   YMMWORD PTR [400+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm11
        vmovups   YMMWORD PTR [528+rsp], ymm10
        vmovups   YMMWORD PTR [560+rsp], ymm9
        vmovups   YMMWORD PTR [272+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm7
        vmovups   YMMWORD PTR [304+rsp], ymm6
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        and       r13, -64
        vmovupd   ymm12, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        vmovupd   YMMWORD PTR [32+r13], ymm0
        vcmplt_oqpd ymm5, ymm1, ymm12
        vmovupd   YMMWORD PTR [r13], ymm12
        vandpd    ymm15, ymm1, ymm14
        vandpd    ymm14, ymm0, ymm14
        vxorpd    ymm11, ymm1, ymm15
        vxorpd    ymm13, ymm0, ymm14
        vandpd    ymm12, ymm5, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vandpd    ymm10, ymm5, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        vxorpd    ymm10, ymm10, ymm11
        mov       QWORD PTR [600+rsp], r13
        vextracti128 xmm9, ymm15, 1
        vextracti128 xmm3, ymm14, 1
        vshufps   xmm2, xmm15, xmm9, 221
        vshufps   xmm5, xmm14, xmm3, 221
        vpsubd    xmm8, xmm2, xmm4
        vpsubd    xmm3, xmm5, xmm4
        vpcmpgtd  xmm9, xmm8, xmm0
        vpcmpeqd  xmm7, xmm8, xmm0
        vpcmpgtd  xmm2, xmm3, xmm0
        vmulpd    ymm8, ymm15, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vpcmpeqd  xmm0, xmm3, xmm0
        vmulpd    ymm3, ymm15, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vpor      xmm6, xmm9, xmm7
        vmulpd    ymm7, ymm15, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vpor      xmm4, xmm2, xmm0
        vpor      xmm0, xmm6, xmm4
        vmulpd    ymm6, ymm15, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vmovmskps r11d, xmm0
        test      r11d, r11d
        vextracti128 xmm2, ymm3, 1
        vextracti128 xmm4, ymm8, 1
        vshufps   xmm2, xmm3, xmm2, 221
        vshufps   xmm3, xmm8, xmm4, 221
        vpsubd    xmm3, xmm3, xmm5
        vextracti128 xmm8, ymm7, 1
        vshufps   xmm4, xmm7, xmm8, 221
        vpsubd    xmm7, xmm2, xmm5
        vpsubd    xmm4, xmm4, xmm5
        vpsrad    xmm2, xmm7, 31
        vpsrad    xmm7, xmm3, 31
        vpaddd    xmm7, xmm2, xmm7
        vextracti128 xmm8, ymm6, 1
        vshufps   xmm6, xmm6, xmm8, 221
        vpsrad    xmm8, xmm4, 31
        vpsubd    xmm5, xmm6, xmm5
        vpsrad    xmm5, xmm5, 31
        vpaddd    xmm8, xmm8, xmm5
        vpaddd    xmm3, xmm7, xmm8
        vpaddd    xmm2, xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1408]
        vpslld    xmm8, xmm2, 5
        vmovd     ecx, xmm8
        vpextrd   r9d, xmm8, 2
        vpextrd   eax, xmm8, 1
        vmovq     xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+rcx]
        vpextrd   r10d, xmm8, 3
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+r9]
        vmovhpd   xmm4, xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+rax]
        vmovhpd   xmm7, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+r10]
        vmovq     xmm3, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+rcx]
        vmovq     xmm8, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+r9]
        vmovhpd   xmm6, xmm3, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+rax]
        vmovhpd   xmm5, xmm8, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+r10]
        vinsertf128 ymm2, ymm4, xmm7, 1
        vmovq     xmm7, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+rcx]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+r9]
        vmovhpd   xmm3, xmm7, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+rax]
        vinsertf128 ymm8, ymm6, xmm5, 1
        vmovhpd   xmm5, xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+r10]
        vmovq     xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+rcx]
        vmovhpd   xmm4, xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+rax]
        vinsertf128 ymm7, ymm3, xmm5, 1
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+r9]
        vmovhpd   xmm3, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+r10]
        vinsertf128 ymm6, ymm4, xmm3, 1
        vandpd    ymm3, ymm6, ymm14
        vandpd    ymm5, ymm6, ymm15
        vfnmadd231pd ymm3, ymm15, ymm2
        vfmadd213pd ymm2, ymm14, ymm5
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1536]
        vextracti128 xmm6, ymm2, 1
        vshufps   xmm4, xmm2, xmm6, 221
        vandps    xmm6, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1472]
        vpslld    xmm4, xmm4, 3
        vpsubd    xmm6, xmm5, xmm6
        vandps    xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1600]
        vorps     xmm4, xmm5, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1664]
        vrcpps    xmm5, xmm4
        vpsrld    xmm4, xmm5, 3
        vpsubd    xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1728]
        vpaddd    xmm5, xmm5, xmm6
        vpshufd   xmm6, xmm5, 80
        vpshufd   xmm4, xmm5, 250
        vinserti128 ymm5, ymm6, xmm4, 1
        vandpd    ymm4, ymm5, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vmovdqa   ymm6, ymm9
        vfnmadd231pd ymm6, ymm4, ymm2
        vfmadd213pd ymm6, ymm6, ymm6
        vfmadd213pd ymm4, ymm6, ymm4
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vfnmadd231pd ymm9, ymm4, ymm2
        vfmadd213pd ymm4, ymm9, ymm4
        vmulpd    ymm5, ymm3, ymm4
        vfnmadd213pd ymm2, ymm5, ymm3
        vmovupd   ymm3, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vmulpd    ymm9, ymm4, ymm2
        vmulpd    ymm4, ymm5, ymm5
        vaddpd    ymm7, ymm7, ymm9
        vmulpd    ymm2, ymm4, ymm4
        vaddpd    ymm9, ymm10, ymm7
        vfmadd213pd ymm6, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vfmadd213pd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vfmadd213pd ymm6, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vfmadd213pd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vfmadd213pd ymm6, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vfmadd213pd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vfmadd213pd ymm6, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vfmadd213pd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vfmadd213pd ymm6, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vfmadd213pd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vfmadd213pd ymm6, ymm4, ymm3
        vmulpd    ymm2, ymm4, ymm6
        vfmadd213pd ymm2, ymm5, ymm9
        vaddpd    ymm3, ymm5, ymm2
        vaddpd    ymm4, ymm8, ymm3
        vxorpd    ymm11, ymm4, ymm11
        vaddpd    ymm2, ymm12, ymm11
        vorpd     ymm8, ymm2, ymm13
        jne       .L_B3_12

.L_B3_2:

        test      r8d, r8d
        jne       .L_B3_4

.L_B3_3:

        vmovdqa   ymm0, ymm8
        vmovups   ymm6, YMMWORD PTR [304+rsp]
        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [272+rsp]
        vmovups   ymm9, YMMWORD PTR [560+rsp]
        vmovups   ymm10, YMMWORD PTR [528+rsp]
        vmovups   ymm11, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [400+rsp]
        vmovups   ymm15, YMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [592+rsp]
        add       rsp, 616
        ret

.L_B3_4:

        vmovupd   ymm2, YMMWORD PTR [32+r13]
        vmovupd   YMMWORD PTR [64+r13], ymm1
        vmovupd   YMMWORD PTR [128+r13], ymm8
        vmovupd   YMMWORD PTR [r13], ymm2
        je        .L_B3_3

.L_B3_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

.L_B3_8:

        bt        esi, ebx
        jc        .L_B3_11

.L_B3_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B3_8

.L_B3_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   ymm8, YMMWORD PTR [128+r13]
        jmp       .L_B3_3

.L_B3_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B3_9

.L_B3_12:

        vmovupd   ymm11, YMMWORD PTR [32+r13]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vcmpordpd ymm12, ymm1, ymm1
        vcmpordpd ymm13, ymm11, ymm11
        vcmpnlt_uqpd ymm10, ymm14, ymm15
        vandpd    ymm3, ymm12, ymm13
        vblendvpd ymm4, ymm15, ymm14, ymm10
        vandpd    ymm6, ymm1, ymm9
        vandpd    ymm7, ymm11, ymm9
        vandpd    ymm5, ymm10, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vextracti128 xmm2, ymm3, 1
        vshufps   xmm2, xmm3, xmm2, 221
        vmovupd   ymm3, YMMWORD PTR [r13]
        vcmpeqpd  ymm15, ymm15, ymm3
        vcmpeqpd  ymm14, ymm14, ymm3
        vorpd     ymm9, ymm15, ymm14
        vextracti128 xmm10, ymm9, 1
        vshufps   xmm11, xmm9, xmm10, 221
        vpand     xmm15, xmm11, xmm2
        vpandn    xmm14, xmm15, xmm0
        vmovmskps r8d, xmm14
        vcmpeqpd  ymm14, ymm4, ymm3
        vblendvpd ymm14, ymm5, ymm3, ymm14
        vorpd     ymm14, ymm14, ymm6
        vextracti128 xmm2, ymm3, 1
        vshufps   xmm3, xmm3, xmm2, 221
        vextracti128 xmm2, ymm1, 1
        vshufps   xmm2, xmm1, xmm2, 221
        vpcmpgtd  xmm3, xmm3, xmm2
        vpshufd   xmm2, xmm3, 80
        vpshufd   xmm3, xmm3, 250
        vinserti128 ymm2, ymm2, xmm3, 1
        vandpd    ymm2, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vaddpd    ymm2, ymm14, ymm2
        vorpd     ymm3, ymm2, ymm7
        vpshufd   xmm2, xmm15, 80
        vpshufd   xmm15, xmm15, 250
        vinserti128 ymm2, ymm2, xmm15, 1
        vblendvpd ymm8, ymm8, ymm3, ymm2
        jmp       .L_B3_2
        .align    16, 0x90

.L_B3_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan24_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_l9_B1_B4:
        .long   1603329
        .long   4904055
        .long   1271919
        .long   1538150
        .long   1149021
        .long   2332756
        .long   2205771
        .long   2078786
        .long   1951801
        .long   1824816
        .long   1697831
        .long   1439771
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_atan24_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_atan24_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_7
        .rva    .L_B3_12
        .rva    _unwind___jsvml_atan24_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_l9_B12_B12:
        .long   33
        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_atan24_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_12
        .rva    .L_B3_13
        .rva    _unwind___jsvml_atan24_ha_l9_B12_B12

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_atan24_ha_e9

__jsvml_atan24_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L111:

        sub       rsp, 680
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [400+rsp], ymm15
        xor       r8d, r8d
        vmovups   YMMWORD PTR [464+rsp], ymm14
        vmovups   YMMWORD PTR [496+rsp], ymm13
        vmovups   YMMWORD PTR [528+rsp], ymm12
        vmovups   YMMWORD PTR [560+rsp], ymm11
        vmovups   YMMWORD PTR [592+rsp], ymm10
        vmovups   YMMWORD PTR [624+rsp], ymm9
        vmovups   YMMWORD PTR [336+rsp], ymm8
        vmovups   YMMWORD PTR [432+rsp], ymm7
        vmovups   YMMWORD PTR [368+rsp], ymm6
        mov       QWORD PTR [656+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   ymm13, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        and       r13, -64
        vmovupd   ymm8, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1088]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        vmovupd   YMMWORD PTR [64+r13], ymm1
        vmovupd   YMMWORD PTR [32+r13], ymm0
        vcmplt_oqpd ymm2, ymm1, ymm9
        vmovupd   YMMWORD PTR [r13], ymm9
        vandpd    ymm6, ymm1, ymm13
        vandpd    ymm5, ymm0, ymm13
        vandpd    ymm12, ymm5, ymm8
        vandpd    ymm7, ymm6, ymm8
        vxorpd    ymm15, ymm0, ymm5
        vmovupd   YMMWORD PTR [96+r13], ymm6
        vmovupd   YMMWORD PTR [128+r13], ymm5
        vmovupd   YMMWORD PTR [160+r13], ymm15
        vsubpd    ymm11, ymm5, ymm12
        vsubpd    ymm10, ymm6, ymm7
        vxorpd    ymm13, ymm1, ymm6
        vandpd    ymm4, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vmovupd   YMMWORD PTR [192+r13], ymm4
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        vandpd    ymm9, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vxorpd    ymm9, ymm9, ymm13
        mov       QWORD PTR [664+rsp], r13
        vextractf128 xmm3, ymm6, 1
        vextractf128 xmm15, ymm5, 1
        vshufps   xmm2, xmm6, xmm3, 221
        vshufps   xmm5, xmm5, xmm15, 221
        vpsubd    xmm15, xmm2, xmm4
        vpsubd    xmm14, xmm5, xmm4
        vpsubd    xmm1, xmm5, xmm2
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        vpaddd    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3200]
        vpcmpgtd  xmm3, xmm15, xmm4
        vpcmpeqd  xmm15, xmm15, xmm4
        vpcmpgtd  xmm2, xmm14, xmm4
        vpcmpeqd  xmm14, xmm14, xmm4
        vpor      xmm1, xmm3, xmm15
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3264]
        vpor      xmm15, xmm2, xmm14
        vpcmpgtd  xmm2, xmm4, xmm0
        vpcmpeqd  xmm0, xmm4, xmm0
        vmulpd    ymm14, ymm6, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vpor      xmm3, xmm1, xmm15
        vpor      xmm15, xmm2, xmm0
        vpor      xmm4, xmm3, xmm15
        vmovdqu   XMMWORD PTR [32+rsp], xmm4
        vmulpd    ymm0, ymm6, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vmulpd    ymm2, ymm6, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vmulpd    ymm6, ymm6, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vextractf128 xmm15, ymm14, 1
        vextractf128 xmm1, ymm0, 1
        vextractf128 xmm3, ymm2, 1
        vextractf128 xmm4, ymm6, 1
        vshufps   xmm14, xmm14, xmm15, 221
        vshufps   xmm0, xmm0, xmm1, 221
        vpsubd    xmm15, xmm14, xmm5
        vshufps   xmm2, xmm2, xmm3, 221
        vpsubd    xmm1, xmm0, xmm5
        vshufps   xmm6, xmm6, xmm4, 221
        vpsubd    xmm2, xmm2, xmm5
        vpsubd    xmm6, xmm6, xmm5
        vpsrad    xmm15, xmm15, 31
        vpsrad    xmm4, xmm1, 31
        vpsrad    xmm2, xmm2, 31
        vpsrad    xmm5, xmm6, 31
        vpaddd    xmm15, xmm15, xmm4
        vpaddd    xmm6, xmm2, xmm5
        vpaddd    xmm4, xmm15, xmm6
        vpaddd    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1408]
        vpslld    xmm3, xmm2, 5
        vmovd     ecx, xmm3
        vpextrd   r9d, xmm3, 2
        vpextrd   eax, xmm3, 1
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+rcx]
        vpextrd   r10d, xmm3, 3
        vmovq     xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+r9]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+r9]
        vmovhpd   xmm1, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+rax]
        vmovq     xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+rcx]
        vmovhpd   xmm14, xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rdx+r10]
        vmovq     xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+r9]
        vmovhpd   xmm6, xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+rax]
        vmovhpd   xmm2, xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rdx+r10]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+rcx]
        vinsertf128 ymm3, ymm1, xmm14, 1
        vmovhpd   xmm1, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+rax]
        vmovhpd   xmm14, xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rdx+r10]
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+r9]
        vinsertf128 ymm15, ymm6, xmm2, 1
        vmovhpd   xmm2, xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+rax]
        vinsertf128 ymm6, ymm1, xmm14, 1
        vmovhpd   xmm1, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rdx+r10]
        vmulpd    ymm14, ymm7, ymm3
        vinsertf128 ymm1, ymm2, xmm1, 1
        vmulpd    ymm2, ymm3, ymm10
        vandpd    ymm0, ymm1, ymm12
        vandpd    ymm4, ymm1, ymm11
        vsubpd    ymm5, ymm0, ymm14
        vsubpd    ymm0, ymm4, ymm2
        vsubpd    ymm2, ymm5, ymm0
        vsubpd    ymm14, ymm2, ymm5
        vandpd    ymm4, ymm2, ymm8
        vsubpd    ymm5, ymm0, ymm14
        vsubpd    ymm2, ymm2, ymm4
        vaddpd    ymm5, ymm5, ymm2
        vandpd    ymm2, ymm1, ymm10
        vmulpd    ymm10, ymm12, ymm3
        vmulpd    ymm12, ymm3, ymm11
        vandpd    ymm7, ymm1, ymm7
        vaddpd    ymm10, ymm7, ymm10
        vaddpd    ymm11, ymm2, ymm12
        vaddpd    ymm12, ymm10, ymm11
        vsubpd    ymm10, ymm10, ymm12
        vaddpd    ymm7, ymm11, ymm10
        vandpd    ymm10, ymm12, ymm8
        vsubpd    ymm8, ymm12, ymm10
        vaddpd    ymm3, ymm7, ymm8
        vmovups   xmm7, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1536]
        vextractf128 xmm12, ymm10, 1
        vshufps   xmm8, xmm10, xmm12, 221
        vpslld    xmm2, xmm8, 3
        vandps    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1600]
        vorps     xmm0, xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1664]
        vrcpps    xmm14, xmm0
        vandps    xmm11, xmm8, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1472]
        vpsrld    xmm12, xmm14, 3
        vpsubd    xmm11, xmm7, xmm11
        vpsubd    xmm7, xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1728]
        vpaddd    xmm2, xmm7, xmm11
        vpshufd   xmm8, xmm2, 80
        vpshufd   xmm1, xmm2, 250
        vinsertf128 ymm0, ymm8, xmm1, 1
        vandpd    ymm2, ymm0, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vmulpd    ymm10, ymm10, ymm2
        vmulpd    ymm3, ymm2, ymm3
        vsubpd    ymm14, ymm10, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vaddpd    ymm1, ymm14, ymm3
        vmulpd    ymm10, ymm1, ymm1
        vsubpd    ymm12, ymm10, ymm1
        vmulpd    ymm7, ymm1, ymm12
        vaddpd    ymm11, ymm1, ymm7
        vmulpd    ymm8, ymm1, ymm11
        vsubpd    ymm0, ymm8, ymm1
        vmulpd    ymm3, ymm1, ymm0
        vaddpd    ymm14, ymm1, ymm3
        vmulpd    ymm10, ymm1, ymm14
        vsubpd    ymm1, ymm10, ymm1
        vmulpd    ymm10, ymm2, ymm1
        vmulpd    ymm12, ymm4, ymm10
        vmulpd    ymm7, ymm5, ymm10
        vmulpd    ymm5, ymm2, ymm5
        vmulpd    ymm10, ymm4, ymm2
        vaddpd    ymm11, ymm12, ymm7
        vaddpd    ymm7, ymm11, ymm5
        vaddpd    ymm12, ymm7, ymm10
        vaddpd    ymm6, ymm6, ymm7
        vmulpd    ymm11, ymm12, ymm12
        vmulpd    ymm8, ymm11, ymm11
        vmulpd    ymm2, ymm8, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vmulpd    ymm4, ymm8, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vaddpd    ymm0, ymm2, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vaddpd    ymm2, ymm4, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vmulpd    ymm1, ymm8, ymm0
        vmulpd    ymm3, ymm8, ymm2
        vaddpd    ymm4, ymm1, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vaddpd    ymm14, ymm3, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vmulpd    ymm5, ymm8, ymm4
        vmulpd    ymm14, ymm8, ymm14
        vaddpd    ymm0, ymm5, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vaddpd    ymm2, ymm14, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vmulpd    ymm1, ymm8, ymm0
        vmulpd    ymm3, ymm8, ymm2
        vaddpd    ymm4, ymm1, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vaddpd    ymm0, ymm3, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vmulpd    ymm5, ymm8, ymm4
        vmulpd    ymm8, ymm8, ymm0
        vaddpd    ymm1, ymm5, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vaddpd    ymm0, ymm8, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vmulpd    ymm2, ymm11, ymm1
        vaddpd    ymm3, ymm0, ymm2
        vaddpd    ymm0, ymm9, ymm6
        vmovdqu   xmm9, XMMWORD PTR [32+rsp]
        vmulpd    ymm11, ymm11, ymm3
        vmovmskps r11d, xmm9
        vmulpd    ymm1, ymm12, ymm11
        vaddpd    ymm2, ymm0, ymm1
        vmovupd   ymm1, YMMWORD PTR [128+r13]
        vaddpd    ymm3, ymm10, ymm2
        vmovupd   ymm10, YMMWORD PTR [64+r13]
        vmovupd   ymm2, YMMWORD PTR [96+r13]
        vaddpd    ymm15, ymm15, ymm3
        vxorpd    ymm13, ymm15, ymm13
        vaddpd    ymm0, ymm13, YMMWORD PTR [192+r13]
        vorpd     ymm0, ymm0, YMMWORD PTR [160+r13]
        test      r11d, r11d
        jne       .L_B4_12

.L_B4_2:

        test      r8d, r8d
        jne       .L_B4_4

.L_B4_3:

        vmovups   ymm6, YMMWORD PTR [368+rsp]
        vmovups   ymm7, YMMWORD PTR [432+rsp]
        vmovups   ymm8, YMMWORD PTR [336+rsp]
        vmovups   ymm9, YMMWORD PTR [624+rsp]
        vmovups   ymm10, YMMWORD PTR [592+rsp]
        vmovups   ymm11, YMMWORD PTR [560+rsp]
        vmovups   ymm12, YMMWORD PTR [528+rsp]
        vmovups   ymm13, YMMWORD PTR [496+rsp]
        vmovups   ymm14, YMMWORD PTR [464+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [656+rsp]
        add       rsp, 680
        ret

.L_B4_4:

        vmovupd   ymm1, YMMWORD PTR [32+r13]
        vmovupd   YMMWORD PTR [64+r13], ymm10
        vmovupd   YMMWORD PTR [128+r13], ymm0
        vmovupd   YMMWORD PTR [r13], ymm1
        je        .L_B4_3

.L_B4_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

.L_B4_8:

        bt        esi, ebx
        jc        .L_B4_11

.L_B4_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B4_8

.L_B4_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [128+r13]
        jmp       .L_B4_3

.L_B4_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B4_9

.L_B4_12:

        vmovupd   ymm13, YMMWORD PTR [32+r13]
        vmovupd   ymm11, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vcmpordpd ymm14, ymm10, ymm10
        vcmpordpd ymm15, ymm13, ymm13
        vcmpnlt_uqpd ymm12, ymm1, ymm2
        vandpd    ymm4, ymm14, ymm15
        vblendvpd ymm5, ymm2, ymm1, ymm12
        vandpd    ymm7, ymm10, ymm11
        vandpd    ymm8, ymm13, ymm11
        vandpd    ymm6, ymm12, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vextractf128 xmm3, ymm4, 1
        vshufps   xmm3, xmm4, xmm3, 221
        vmovupd   ymm4, YMMWORD PTR [r13]
        vcmpeqpd  ymm2, ymm2, ymm4
        vcmpeqpd  ymm1, ymm1, ymm4
        vorpd     ymm11, ymm2, ymm1
        vcmpeqpd  ymm1, ymm5, ymm4
        vextractf128 xmm12, ymm11, 1
        vshufps   xmm13, xmm11, xmm12, 221
        vpand     xmm2, xmm13, xmm3
        vblendvpd ymm3, ymm6, ymm4, ymm1
        vpandn    xmm9, xmm2, xmm9
        vmovmskps r8d, xmm9
        vorpd     ymm1, ymm3, ymm7
        vextractf128 xmm5, ymm4, 1
        vextractf128 xmm6, ymm10, 1
        vshufps   xmm7, xmm4, xmm5, 221
        vshufps   xmm9, xmm10, xmm6, 221
        vpcmpgtd  xmm12, xmm7, xmm9
        vpshufd   xmm11, xmm12, 80
        vpshufd   xmm13, xmm12, 250
        vinsertf128 ymm14, ymm11, xmm13, 1
        vandpd    ymm15, ymm14, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vaddpd    ymm1, ymm1, ymm15
        vorpd     ymm1, ymm1, ymm8
        vpshufd   xmm8, xmm2, 80
        vpshufd   xmm2, xmm2, 250
        vinsertf128 ymm2, ymm8, xmm2, 1
        vblendvpd ymm0, ymm0, ymm1, ymm2
        jmp       .L_B4_2
        .align    16, 0x90

.L_B4_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan24_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_e9_B1_B4:
        .long   1603329
        .long   5428343
        .long   1534063
        .long   1800294
        .long   1411165
        .long   2594900
        .long   2467915
        .long   2340930
        .long   2213945
        .long   2086960
        .long   1959975
        .long   1701915
        .long   5570827

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan24_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan24_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_7
        .rva    .L_B4_12
        .rva    _unwind___jsvml_atan24_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan24_ha_e9_B12_B12:
        .long   33
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan24_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_12
        .rva    .L_B4_13
        .rva    _unwind___jsvml_atan24_ha_e9_B12_B12

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_atan22_ha_l9

__jsvml_atan22_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L155:

        sub       rsp, 456
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [304+rsp], xmm15
        xor       eax, eax
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovapd   xmm13, xmm1
        vmovups   XMMWORD PTR [384+rsp], xmm12
        vmovups   XMMWORD PTR [400+rsp], xmm11
        vmovups   XMMWORD PTR [288+rsp], xmm10
        vmovups   XMMWORD PTR [368+rsp], xmm9
        vmovups   XMMWORD PTR [272+rsp], xmm8
        vmovups   XMMWORD PTR [352+rsp], xmm7
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [432+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        and       r13, -64
        vcmpltpd  xmm4, xmm13, xmm5
        vmovupd   xmm10, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        vandpd    xmm11, xmm13, xmm10
        vandpd    xmm10, xmm0, xmm10
        vpshufd   xmm1, xmm10, 221
        vxorpd    xmm9, xmm0, xmm10
        vmovq     xmm3, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        vxorpd    xmm7, xmm13, xmm11
        vpshufd   xmm2, xmm11, 221
        vpsubd    xmm14, xmm1, xmm3
        vmovq     xmm12, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        vmovupd   XMMWORD PTR [416+rsp], xmm5
        vpsubd    xmm5, xmm2, xmm3
        vandpd    xmm8, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vpcmpgtd  xmm15, xmm5, xmm12
        vandpd    xmm6, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vpcmpeqd  xmm4, xmm5, xmm12
        vpcmpgtd  xmm2, xmm14, xmm12
        vpcmpeqd  xmm12, xmm14, xmm12
        vmovupd   XMMWORD PTR [32+rsp], xmm0
        vpor      xmm3, xmm15, xmm4
        vpor      xmm0, xmm2, xmm12
        vxorpd    xmm6, xmm6, xmm7
        vmulpd    xmm4, xmm11, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vmulpd    xmm5, xmm11, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vmulpd    xmm15, xmm11, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vpor      xmm12, xmm3, xmm0
        vmulpd    xmm3, xmm11, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vmovmskps r9d, xmm12
        vpshufd   xmm2, xmm4, 221
        vpshufd   xmm3, xmm3, 221
        vpsubd    xmm0, xmm2, xmm1
        vpshufd   xmm5, xmm5, 221
        vpsubd    xmm4, xmm3, xmm1
        vpshufd   xmm15, xmm15, 221
        vpsubd    xmm5, xmm5, xmm1
        vpsubd    xmm1, xmm15, xmm1
        vpsrad    xmm2, xmm0, 31
        vpsrad    xmm4, xmm4, 31
        vpsrad    xmm5, xmm5, 31
        vpsrad    xmm15, xmm1, 31
        vpaddd    xmm4, xmm2, xmm4
        vpaddd    xmm5, xmm5, xmm15
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1408]
        vpaddd    xmm2, xmm4, xmm5
        vpaddd    xmm14, xmm2, xmm14
        vpslld    xmm3, xmm14, 5
        vmovd     edx, xmm3
        vpextrd   ecx, xmm3, 1
        vmovq     xmm14, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rdx]
        vmovq     xmm1, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rdx]
        vmovhpd   xmm3, xmm14, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rcx]
        vmovhpd   xmm0, xmm1, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rcx]
        vandpd    xmm2, xmm3, xmm10
        vandpd    xmm3, xmm3, xmm11
        vfmadd231pd xmm3, xmm10, xmm0
        vmovq     xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rdx]
        vmovhpd   xmm4, xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rcx]
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1600]
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1664]
        vpshufd   xmm1, xmm3, 221
        vfnmadd231pd xmm2, xmm11, xmm0
        vpslld    xmm0, xmm1, 3
        vpand     xmm0, xmm0, xmm15
        vpor      xmm14, xmm0, xmm14
        vmovq     xmm0, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1728]
        vmovq     xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rdx]
        vrcpps    xmm15, xmm14
        vpsrld    xmm14, xmm15, 3
        vpsubd    xmm15, xmm14, xmm0
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1472]
        vpand     xmm14, xmm1, xmm14
        vmovq     xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1536]
        vpsubd    xmm0, xmm1, xmm14
        vpaddd    xmm15, xmm15, xmm0
        vpshufd   xmm1, xmm15, 80
        vandpd    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vmovupd   xmm0, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vmovapd   xmm14, xmm1
        vfnmadd213pd xmm14, xmm3, xmm0
        vmovhpd   xmm5, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rcx]
        vfmadd213pd xmm14, xmm14, xmm14
        vfmadd213pd xmm1, xmm14, xmm1
        vfnmadd231pd xmm0, xmm1, xmm3
        vfmadd213pd xmm1, xmm0, xmm1
        vmulpd    xmm15, xmm2, xmm1
        vmulpd    xmm0, xmm15, xmm15
        vfnmadd213pd xmm3, xmm15, xmm2
        vmulpd    xmm2, xmm0, xmm0
        vmulpd    xmm14, xmm1, xmm3
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vfmadd213pd xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vfmadd213pd xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vaddpd    xmm4, xmm4, xmm14
        vfmadd213pd xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vfmadd213pd xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vaddpd    xmm6, xmm6, xmm4
        vfmadd213pd xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vfmadd213pd xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vfmadd213pd xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vfmadd213pd xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vfmadd213pd xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vfmadd213pd xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vfmadd213pd xmm1, xmm0, xmm3
        vmulpd    xmm2, xmm0, xmm1
        vfmadd213pd xmm2, xmm15, xmm6
        vaddpd    xmm0, xmm15, xmm2
        vaddpd    xmm1, xmm5, xmm0
        vxorpd    xmm7, xmm1, xmm7
        vaddpd    xmm8, xmm8, xmm7
        mov       QWORD PTR [440+rsp], r13
        vorpd     xmm0, xmm8, xmm9
        test      r9d, 3
        jne       .L_B5_12

.L_B5_2:

        test      eax, eax
        jne       .L_B5_4

.L_B5_3:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm7, XMMWORD PTR [352+rsp]
        vmovups   xmm8, XMMWORD PTR [272+rsp]
        vmovups   xmm9, XMMWORD PTR [368+rsp]
        vmovups   xmm10, XMMWORD PTR [288+rsp]
        vmovups   xmm11, XMMWORD PTR [400+rsp]
        vmovups   xmm12, XMMWORD PTR [384+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [432+rsp]
        add       rsp, 456
        ret

.L_B5_4:

        vmovupd   xmm1, XMMWORD PTR [32+rsp]
        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm13
        vmovupd   XMMWORD PTR [128+r13], xmm0
        je        .L_B5_3

.L_B5_7:

        xor       edx, edx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B5_8:

        bt        esi, ebx
        jc        .L_B5_11

.L_B5_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B5_8

.L_B5_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B5_3

.L_B5_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B5_9

.L_B5_12:

        vcmpnltpd xmm7, xmm10, xmm11
        vcmpordpd xmm9, xmm13, xmm13
        vblendvpd xmm2, xmm11, xmm10, xmm7
        vmovupd   xmm8, XMMWORD PTR [32+rsp]
        vmovupd   xmm1, XMMWORD PTR [416+rsp]
        vcmpordpd xmm14, xmm8, xmm8
        vcmpeqpd  xmm11, xmm11, xmm1
        vcmpeqpd  xmm15, xmm10, xmm1
        vcmpeqpd  xmm2, xmm2, xmm1
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vorpd     xmm10, xmm11, xmm15
        vandpd    xmm3, xmm7, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vandpd    xmm5, xmm13, xmm6
        vandpd    xmm4, xmm8, xmm6
        vandpd    xmm6, xmm9, xmm14
        vblendvpd xmm3, xmm3, xmm1, xmm2
        vpshufd   xmm7, xmm10, 221
        vpshufd   xmm8, xmm6, 221
        vpshufd   xmm1, xmm1, 221
        vpand     xmm10, xmm7, xmm8
        vorpd     xmm8, xmm3, xmm5
        vpandn    xmm12, xmm10, xmm12
        vpshufd   xmm5, xmm13, 221
        vpcmpgtd  xmm6, xmm1, xmm5
        vpshufd   xmm7, xmm6, 80
        vandpd    xmm9, xmm7, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vaddpd    xmm11, xmm8, xmm9
        vmovmskps eax, xmm12
        vpshufd   xmm10, xmm10, 80
        vorpd     xmm4, xmm11, xmm4
        vblendvpd xmm0, xmm0, xmm4, xmm10
        and       eax, 3
        jmp       .L_B5_2
        .align    16, 0x90

.L_B5_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan22_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_l9_B1_B4:
        .long   1604097
        .long   3593338
        .long   1075314
        .long   1472617
        .long   1149024
        .long   1546327
        .long   1222734
        .long   1685573
        .long   1624124
        .long   1431599
        .long   1370150
        .long   1308699
        .long   3735819

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan22_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan22_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_7
        .rva    .L_B5_12
        .rva    _unwind___jsvml_atan22_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_l9_B12_B12:
        .long   33
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan22_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_12
        .rva    .L_B5_13
        .rva    _unwind___jsvml_atan22_ha_l9_B12_B12

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_atan22_ha_e9

__jsvml_atan22_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L187:

        sub       rsp, 520
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [336+rsp], xmm15
        xor       eax, eax
        vmovups   XMMWORD PTR [352+rsp], xmm14
        vmovups   XMMWORD PTR [368+rsp], xmm13
        vmovups   XMMWORD PTR [384+rsp], xmm12
        vmovups   XMMWORD PTR [400+rsp], xmm11
        vmovups   XMMWORD PTR [320+rsp], xmm10
        vmovups   XMMWORD PTR [272+rsp], xmm9
        vmovups   XMMWORD PTR [288+rsp], xmm8
        vmovups   XMMWORD PTR [304+rsp], xmm7
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [496+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm12, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        and       r13, -64
        vcmpltpd  xmm3, xmm1, xmm12
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1088]
        vandpd    xmm4, xmm0, xmm13
        vandpd    xmm2, xmm1, xmm13
        vandpd    xmm10, xmm4, xmm6
        vmovupd   XMMWORD PTR [416+rsp], xmm12
        vxorpd    xmm13, xmm0, xmm4
        vmovupd   XMMWORD PTR [464+rsp], xmm4
        vxorpd    xmm11, xmm1, xmm2
        vsubpd    xmm9, xmm4, xmm10
        vandpd    xmm12, xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vandpd    xmm5, xmm2, xmm6
        vandpd    xmm7, xmm3, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vpshufd   xmm3, xmm2, 221
        vxorpd    xmm7, xmm7, xmm11
        vpshufd   xmm4, xmm4, 221
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        vmovupd   XMMWORD PTR [432+rsp], xmm1
        vpsubd    xmm14, xmm4, xmm15
        vmovupd   XMMWORD PTR [32+rsp], xmm0
        vpsubd    xmm0, xmm3, xmm15
        vmovq     xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3200]
        vpsubd    xmm15, xmm4, xmm3
        vpaddd    xmm3, xmm15, xmm1
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        vpcmpgtd  xmm1, xmm0, xmm15
        vpcmpeqd  xmm0, xmm0, xmm15
        vpor      xmm0, xmm1, xmm0
        vpcmpgtd  xmm1, xmm14, xmm15
        vpcmpeqd  xmm14, xmm14, xmm15
        vpor      xmm15, xmm1, xmm14
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3264]
        vpor      xmm0, xmm0, xmm15
        vpcmpgtd  xmm1, xmm14, xmm3
        vpcmpeqd  xmm3, xmm14, xmm3
        vpor      xmm3, xmm1, xmm3
        vmulpd    xmm15, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vmulpd    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vsubpd    xmm8, xmm2, xmm5
        vpor      xmm0, xmm0, xmm3
        vmulpd    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vmovdqu   XMMWORD PTR [480+rsp], xmm0
        vmulpd    xmm0, xmm2, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vmovupd   XMMWORD PTR [448+rsp], xmm2
        vpshufd   xmm2, xmm15, 221
        vpshufd   xmm3, xmm3, 221
        vpsubd    xmm2, xmm2, xmm4
        vpshufd   xmm1, xmm1, 221
        vpsubd    xmm3, xmm3, xmm4
        vpshufd   xmm0, xmm0, 221
        vpsrad    xmm15, xmm2, 31
        vpsrad    xmm2, xmm3, 31
        vpsubd    xmm3, xmm1, xmm4
        vpsubd    xmm4, xmm0, xmm4
        vpsrad    xmm3, xmm3, 31
        vpsrad    xmm4, xmm4, 31
        vpaddd    xmm15, xmm15, xmm2
        vpaddd    xmm3, xmm3, xmm4
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1408]
        vpaddd    xmm2, xmm15, xmm3
        vpaddd    xmm14, xmm2, xmm14
        vpslld    xmm3, xmm14, 5
        vmovd     edx, xmm3
        vpextrd   ecx, xmm3, 1
        vmovq     xmm2, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rdx]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rdx]
        vmovhpd   xmm1, xmm2, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+r8+rcx]
        vmovhpd   xmm2, xmm4, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+r8+rcx]
        vmulpd    xmm4, xmm5, xmm1
        vmovq     xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rdx]
        vmovhpd   xmm0, xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+r8+rcx]
        vandpd    xmm14, xmm0, xmm10
        vandpd    xmm5, xmm0, xmm5
        vmulpd    xmm10, xmm10, xmm1
        vsubpd    xmm4, xmm14, xmm4
        vaddpd    xmm10, xmm5, xmm10
        vmulpd    xmm14, xmm1, xmm8
        vmulpd    xmm5, xmm1, xmm9
        vmovq     xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rdx]
        vandpd    xmm8, xmm0, xmm8
        vmovhpd   xmm3, xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+r8+rcx]
        vandpd    xmm15, xmm0, xmm9
        vsubpd    xmm15, xmm15, xmm14
        vaddpd    xmm9, xmm8, xmm5
        vsubpd    xmm14, xmm4, xmm15
        vaddpd    xmm5, xmm10, xmm9
        vsubpd    xmm4, xmm14, xmm4
        vsubpd    xmm8, xmm10, xmm5
        vsubpd    xmm4, xmm15, xmm4
        vaddpd    xmm10, xmm9, xmm8
        vandpd    xmm15, xmm14, xmm6
        vsubpd    xmm14, xmm14, xmm15
        vaddpd    xmm4, xmm4, xmm14
        vandpd    xmm14, xmm5, xmm6
        vsubpd    xmm6, xmm5, xmm14
        vpshufd   xmm1, xmm14, 221
        vaddpd    xmm0, xmm10, xmm6
        vmovq     xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1600]
        vpslld    xmm8, xmm1, 3
        vmovq     xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1664]
        vpand     xmm8, xmm8, xmm10
        vpor      xmm5, xmm8, xmm5
        vrcpps    xmm8, xmm5
        vmovq     xmm9, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1728]
        vpsrld    xmm10, xmm8, 3
        vmovq     xmm6, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1472]
        vpsubd    xmm8, xmm10, xmm9
        vmovq     xmm9, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1536]
        vpand     xmm6, xmm1, xmm6
        vpsubd    xmm1, xmm9, xmm6
        vpaddd    xmm8, xmm8, xmm1
        vpshufd   xmm10, xmm8, 80
        vandpd    xmm10, xmm10, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vmulpd    xmm14, xmm14, xmm10
        vmulpd    xmm0, xmm10, xmm0
        vsubpd    xmm8, xmm14, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vaddpd    xmm8, xmm8, xmm0
        vmulpd    xmm5, xmm8, xmm8
        vsubpd    xmm9, xmm5, xmm8
        vmulpd    xmm6, xmm8, xmm9
        vaddpd    xmm0, xmm8, xmm6
        vmulpd    xmm1, xmm8, xmm0
        vsubpd    xmm14, xmm1, xmm8
        vmulpd    xmm5, xmm8, xmm14
        vaddpd    xmm9, xmm8, xmm5
        vmulpd    xmm6, xmm8, xmm9
        vsubpd    xmm8, xmm6, xmm8
        vmulpd    xmm8, xmm10, xmm8
        vmulpd    xmm5, xmm15, xmm8
        vmulpd    xmm9, xmm4, xmm8
        vmulpd    xmm4, xmm10, xmm4
        vaddpd    xmm6, xmm5, xmm9
        vmulpd    xmm8, xmm15, xmm10
        vaddpd    xmm5, xmm6, xmm4
        vaddpd    xmm10, xmm5, xmm8
        vaddpd    xmm2, xmm2, xmm5
        vmulpd    xmm9, xmm10, xmm10
        vmulpd    xmm6, xmm9, xmm9
        vmulpd    xmm15, xmm6, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vmulpd    xmm0, xmm6, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vaddpd    xmm1, xmm15, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vaddpd    xmm14, xmm0, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vmulpd    xmm4, xmm6, xmm1
        vmulpd    xmm15, xmm6, xmm14
        vaddpd    xmm0, xmm4, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vaddpd    xmm4, xmm15, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vmulpd    xmm1, xmm6, xmm0
        vmulpd    xmm14, xmm6, xmm4
        vaddpd    xmm15, xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vaddpd    xmm0, xmm14, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vmulpd    xmm15, xmm6, xmm15
        vmulpd    xmm1, xmm6, xmm0
        vaddpd    xmm4, xmm15, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vaddpd    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vmulpd    xmm14, xmm6, xmm4
        vmulpd    xmm6, xmm6, xmm0
        vaddpd    xmm1, xmm14, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vaddpd    xmm0, xmm6, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vmulpd    xmm4, xmm9, xmm1
        vaddpd    xmm6, xmm0, xmm4
        vaddpd    xmm0, xmm7, xmm2
        vmulpd    xmm9, xmm9, xmm6
        vmulpd    xmm1, xmm10, xmm9
        vaddpd    xmm4, xmm0, xmm1
        vaddpd    xmm5, xmm8, xmm4
        vaddpd    xmm3, xmm3, xmm5
        vxorpd    xmm11, xmm3, xmm11
        vaddpd    xmm0, xmm12, xmm11
        vmovdqu   xmm7, XMMWORD PTR [480+rsp]
        vorpd     xmm0, xmm0, xmm13
        vmovmskps r9d, xmm7
        vmovupd   xmm1, XMMWORD PTR [464+rsp]
        vmovupd   xmm8, XMMWORD PTR [432+rsp]
        vmovupd   xmm14, XMMWORD PTR [448+rsp]
        mov       QWORD PTR [504+rsp], r13
        test      r9d, 3
        jne       .L_B6_12

.L_B6_2:

        test      eax, eax
        jne       .L_B6_4

.L_B6_3:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm7, XMMWORD PTR [304+rsp]
        vmovups   xmm8, XMMWORD PTR [288+rsp]
        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovups   xmm10, XMMWORD PTR [320+rsp]
        vmovups   xmm11, XMMWORD PTR [400+rsp]
        vmovups   xmm12, XMMWORD PTR [384+rsp]
        vmovups   xmm13, XMMWORD PTR [368+rsp]
        vmovups   xmm14, XMMWORD PTR [352+rsp]
        vmovups   xmm15, XMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [496+rsp]
        add       rsp, 520
        ret

.L_B6_4:

        vmovupd   xmm1, XMMWORD PTR [32+rsp]
        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm8
        vmovupd   XMMWORD PTR [128+r13], xmm0
        je        .L_B6_3

.L_B6_7:

        xor       edx, edx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B6_8:

        bt        esi, ebx
        jc        .L_B6_11

.L_B6_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B6_8

.L_B6_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B6_3

.L_B6_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B6_9

.L_B6_12:

        vcmpnltpd xmm10, xmm1, xmm14
        vcmpordpd xmm12, xmm8, xmm8
        vblendvpd xmm3, xmm14, xmm1, xmm10
        vmovupd   xmm11, XMMWORD PTR [32+rsp]
        vmovupd   xmm2, XMMWORD PTR [416+rsp]
        vcmpordpd xmm13, xmm11, xmm11
        vcmpeqpd  xmm14, xmm14, xmm2
        vcmpeqpd  xmm15, xmm1, xmm2
        vcmpeqpd  xmm3, xmm3, xmm2
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vorpd     xmm1, xmm14, xmm15
        vandpd    xmm6, xmm8, xmm9
        vandpd    xmm5, xmm11, xmm9
        vandpd    xmm9, xmm12, xmm13
        vandpd    xmm4, xmm10, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vpshufd   xmm10, xmm1, 221
        vpshufd   xmm11, xmm9, 221
        vblendvpd xmm4, xmm4, xmm2, xmm3
        vpand     xmm1, xmm10, xmm11
        vpshufd   xmm2, xmm2, 221
        vpandn    xmm7, xmm1, xmm7
        vorpd     xmm10, xmm4, xmm6
        vpshufd   xmm6, xmm8, 221
        vmovmskps eax, xmm7
        vpcmpgtd  xmm7, xmm2, xmm6
        vpshufd   xmm9, xmm7, 80
        vandpd    xmm11, xmm9, XMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vaddpd    xmm12, xmm10, xmm11
        vpshufd   xmm1, xmm1, 80
        vorpd     xmm5, xmm12, xmm5
        vblendvpd xmm0, xmm0, xmm5, xmm1
        and       eax, 3
        jmp       .L_B6_2
        .align    16, 0x90

.L_B6_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan22_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_e9_B1_B4:
        .long   1603073
        .long   4117622
        .long   1075310
        .long   1276005
        .long   1214556
        .long   1153107
        .long   1353802
        .long   1685569
        .long   1624120
        .long   1562671
        .long   1501222
        .long   1439771
        .long   4260107

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan22_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan22_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_7
        .rva    .L_B6_12
        .rva    _unwind___jsvml_atan22_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan22_ha_e9_B12_B12:
        .long   33
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan22_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_12
        .rva    .L_B6_13
        .rva    _unwind___jsvml_atan22_ha_e9_B12_B12

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_atan28_ha_z0

__jsvml_atan28_ha_z0:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L227:

        sub       rsp, 1400
        xor       r8d, r8d
        kmovw     WORD PTR [1392+rsp], k5
        kmovw     WORD PTR [1384+rsp], k4
        vmovups   ZMMWORD PTR [1184+rsp], zmm15
        vmovups   ZMMWORD PTR [1312+rsp], zmm14
        vmovups   ZMMWORD PTR [1248+rsp], zmm13
        vmovups   ZMMWORD PTR [736+rsp], zmm12
        vmovups   ZMMWORD PTR [800+rsp], zmm11
        vmovups   ZMMWORD PTR [928+rsp], zmm10
        vmovups   ZMMWORD PTR [1056+rsp], zmm9
        vmovups   ZMMWORD PTR [992+rsp], zmm8
        vmovups   ZMMWORD PTR [864+rsp], zmm7
        vmovups   ZMMWORD PTR [1120+rsp], zmm6
        mov       QWORD PTR [728+rsp], r13
        lea       r13, QWORD PTR [527+rsp]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        and       r13, -64
        vmovdqu   ymm8, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2688]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vmovaps   zmm6, zmm1
        vmovaps   zmm5, zmm0
        vandpd    zmm4, zmm6, zmm2
        vandpd    zmm3, zmm5, zmm2
        vmovdqu   ymm1, YMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2752]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        vmulpd    zmm22, zmm4, zmm31 {rn-sae}
        vcmppd    k5, zmm6, zmm2, 17 {sae}
        vpsrlq    zmm29, zmm4, 32
        vpsrlq    zmm30, zmm3, 32
        vcmppd    k4, zmm22, zmm3, 17 {sae}
        vpmovqd   ymm0, zmm29
        vpmovqd   ymm7, zmm30
        vxorpd    zmm27, zmm6, zmm4
        vpsubd    ymm9, ymm0, ymm8
        vpsubd    ymm12, ymm7, ymm8
        vmulpd    zmm0, zmm4, zmm25 {rn-sae}
        vmulpd    zmm8, zmm4, zmm23 {rn-sae}
        vmulpd    zmm7, zmm4, zmm24 {rn-sae}
        vcmppd    k1, zmm0, zmm3, 17 {sae}
        vcmppd    k3, zmm8, zmm3, 17 {sae}
        vcmppd    k2, zmm7, zmm3, 17 {sae}
        vpcmpgtd  ymm10, ymm9, ymm1
        vpcmpeqd  ymm11, ymm9, ymm1
        vpcmpgtd  ymm13, ymm12, ymm1
        vpcmpeqd  ymm14, ymm12, ymm1
        vpor      ymm15, ymm10, ymm11
        vpor      ymm1, ymm13, ymm14
        vmovups   zmm11, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+704]
        vmovups   zmm14, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+768]
        vmovups   zmm9, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+192]
        vmovups   zmm10, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+256]
        vmovups   zmm13, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+512]
        vmovups   zmm12, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+448]
        vblendmpd zmm23{k1}, zmm11, zmm26
        vblendmpd zmm22{k3}, zmm14, zmm26
        vpor      ymm1, ymm15, ymm1
        vblendmpd zmm15{k1}, zmm9, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+320]
        vblendmpd zmm30{k1}, zmm10, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+384]
        vblendmpd zmm0{k2}, zmm23, zmm22
        vblendmpd zmm31{k3}, zmm13, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+640]
        vblendmpd zmm29{k3}, zmm12, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+576]
        vmovups   zmm11, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vmovups   zmm12, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vmovups   zmm13, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vblendmpd zmm24{k2}, zmm30, zmm31
        vblendmpd zmm25{k2}, zmm15, zmm29
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vmovups   zmm15, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vmovaps   zmm9, zmm4
        vxorpd    zmm9{k3}, zmm4, zmm4
        vfmadd231pd zmm9{k4}, zmm0, zmm3 {rn-sae}
        vrcp14pd  zmm10, zmm9
        vmovaps   zmm7, zmm9
        vfnmadd213pd zmm7, zmm10, zmm26 {rn-sae}
        vfmadd213pd zmm10, zmm7, zmm10 {rn-sae}
        vmovups   zmm7, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vfnmadd231pd zmm26, zmm10, zmm9 {rn-sae}
        vmovaps   zmm8, zmm3
        vxorpd    zmm8{k3}, zmm3, zmm3
        vfmadd213pd zmm10, zmm26, zmm10 {rn-sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vfnmadd231pd zmm8{k4}, zmm0, zmm4 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vmulpd    zmm23, zmm10, zmm8 {rn-sae}
        vmulpd    zmm31, zmm23, zmm23 {rn-sae}
        vfnmadd213pd zmm9, zmm23, zmm8 {rn-sae}
        vmovups   zmm8, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vmulpd    zmm14, zmm31, zmm31 {rn-sae}
        vmulpd    zmm22, zmm9, zmm10 {rn-sae}
        vmovups   zmm9, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vmovups   zmm10, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vfmadd231pd zmm30, zmm26, zmm14 {rn-sae}
        vfmadd231pd zmm29, zmm0, zmm14 {rn-sae}
        vxorpd    zmm26, zmm27, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vaddpd    zmm22{k4}, zmm22, zmm24 {rn-sae}
        vfmadd213pd zmm30, zmm14, zmm7 {rn-sae}
        vfmadd213pd zmm29, zmm14, zmm8 {rn-sae}
        vaddpd    zmm22{k5}, zmm22, zmm26 {rn-sae}
        vfmadd213pd zmm30, zmm14, zmm9 {rn-sae}
        vfmadd213pd zmm29, zmm14, zmm10 {rn-sae}
        vfmadd213pd zmm30, zmm14, zmm11 {rn-sae}
        vfmadd213pd zmm29, zmm14, zmm12 {rn-sae}
        vfmadd213pd zmm30, zmm14, zmm13 {rn-sae}
        vfmadd213pd zmm29, zmm14, zmm15 {rn-sae}
        vfmadd213pd zmm30, zmm31, zmm29 {rn-sae}
        vmulpd    zmm0, zmm30, zmm31 {rn-sae}
        vfmadd213pd zmm0, zmm23, zmm22 {rn-sae}
        vaddpd    zmm22, zmm23, zmm0 {rn-sae}
        vaddpd    zmm22{k4}, zmm22, zmm25 {rn-sae}
        vxorpd    zmm0, zmm22, zmm27
        vaddpd    zmm0{k5}, zmm0, zmm28 {rn-sae}
        vmovmskps eax, ymm1
        mov       QWORD PTR [1376+rsp], r13
        vpternlogq zmm0, zmm5, zmm3, 246
        test      eax, eax
        jne       .L_B7_17

.L_B7_2:

        test      r8d, r8d
        jne       .L_B7_4

.L_B7_3:

        vmovups   zmm6, ZMMWORD PTR [1120+rsp]
        vmovups   zmm7, ZMMWORD PTR [864+rsp]
        vmovups   zmm8, ZMMWORD PTR [992+rsp]
        vmovups   zmm9, ZMMWORD PTR [1056+rsp]
        vmovups   zmm10, ZMMWORD PTR [928+rsp]
        vmovups   zmm11, ZMMWORD PTR [800+rsp]
        vmovups   zmm12, ZMMWORD PTR [736+rsp]
        vmovups   zmm13, ZMMWORD PTR [1248+rsp]
        vmovups   zmm14, ZMMWORD PTR [1312+rsp]
        vmovups   zmm15, ZMMWORD PTR [1184+rsp]
        kmovw     k4, WORD PTR [1384+rsp]
        kmovw     k5, WORD PTR [1392+rsp]
        mov       r13, QWORD PTR [728+rsp]
        add       rsp, 1400
        ret

.L_B7_4:

        vstmxcsr  DWORD PTR [720+rsp]

.L_B7_5:

        movzx     edx, WORD PTR [720+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B7_7

.L_B7_6:

        mov       DWORD PTR [720+rsp], eax
        vldmxcsr  DWORD PTR [720+rsp]

.L_B7_7:

        vmovups   ZMMWORD PTR [r13], zmm5
        vmovups   ZMMWORD PTR [64+r13], zmm6
        vmovups   ZMMWORD PTR [128+r13], zmm0
        test      r8d, r8d
        jne       .L_B7_12

.L_B7_8:

        cmp       edx, eax
        je        .L_B7_3

.L_B7_9:

        vstmxcsr  DWORD PTR [720+rsp]
        mov       eax, DWORD PTR [720+rsp]

.L_B7_10:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [720+rsp], eax
        vldmxcsr  DWORD PTR [720+rsp]
        jmp       .L_B7_3

.L_B7_12:

        xor       ecx, ecx
        kmovw     WORD PTR [424+rsp], k6
        kmovw     WORD PTR [416+rsp], k7
        vmovups   ZMMWORD PTR [352+rsp], zmm16
        vmovups   ZMMWORD PTR [288+rsp], zmm17
        vmovups   ZMMWORD PTR [224+rsp], zmm18
        vmovups   ZMMWORD PTR [160+rsp], zmm19
        vmovups   ZMMWORD PTR [96+rsp], zmm20
        vmovups   ZMMWORD PTR [32+rsp], zmm21
        mov       QWORD PTR [448+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [440+rsp], rsi
        mov       esi, edx
        mov       QWORD PTR [432+rsp], rdi
        mov       edi, r8d
        mov       QWORD PTR [456+rsp], rbp
        mov       ebp, eax

.L_B7_13:

        bt        edi, ebx
        jc        .L_B7_16

.L_B7_14:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B7_13

.L_B7_15:

        kmovw     k6, WORD PTR [424+rsp]
        mov       eax, ebp
        kmovw     k7, WORD PTR [416+rsp]
        vmovups   zmm16, ZMMWORD PTR [352+rsp]
        vmovups   zmm17, ZMMWORD PTR [288+rsp]
        vmovups   zmm18, ZMMWORD PTR [224+rsp]
        vmovups   zmm19, ZMMWORD PTR [160+rsp]
        vmovups   zmm20, ZMMWORD PTR [96+rsp]
        vmovups   zmm21, ZMMWORD PTR [32+rsp]
        vmovups   zmm0, ZMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [448+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [440+rsp]
        mov       rdi, QWORD PTR [432+rsp]
        mov       rbp, QWORD PTR [456+rsp]
        jmp       .L_B7_8

.L_B7_16:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B7_14

.L_B7_17:

        vcmppd    k1, zmm3, zmm4, 17 {sae}
        vcmppd    k2, zmm6, zmm6, 3 {sae}
        vcmppd    k3, zmm5, zmm5, 3 {sae}
        vcmppd    k4, zmm4, zmm2, 4 {sae}
        vcmppd    k5, zmm3, zmm2, 4 {sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vblendmpd zmm9{k1}, zmm3, zmm4
        vpbroadcastq zmm8, QWORD PTR [rip+_2il0floatpacket_51]
        vxorpd    zmm24{k1}, zmm24, zmm24
        vcmppd    k1, zmm9, zmm2, 4 {sae}
        vmovaps   zmm25, zmm8
        vmovaps   zmm26, zmm8
        vmovaps   zmm28, zmm8
        vmovaps   zmm29, zmm8
        vpandnq   zmm25{k2}, zmm6, zmm6
        vpandnq   zmm26{k3}, zmm5, zmm5
        vpandnq   zmm28{k4}, zmm4, zmm4
        vpandnq   zmm29{k5}, zmm3, zmm3
        vandpd    zmm27, zmm25, zmm26
        vorpd     zmm30, zmm28, zmm29
        vpcmpgtq  k2, zmm2, zmm6
        vpsrlq    zmm7, zmm27, 32
        vpsrlq    zmm31, zmm30, 32
        vpmovqd   ymm4, zmm7
        vpmovqd   ymm3, zmm31
        vpand     ymm10, ymm3, ymm4
        vpandn    ymm1, ymm10, ymm1
        vmovmskps r8d, ymm1
        vpandnq   zmm8{k1}, zmm9, zmm9
        vpandnq   zmm12, zmm8, zmm24
        vpternlogq zmm12, zmm2, zmm8, 248
        vpmovzxdq zmm2, ymm10
        vpternlogq zmm12, zmm6, zmm23, 248
        vpsllq    zmm11, zmm2, 32
        vaddpd    zmm12{k2}, zmm12, zmm22 {rn-sae}
        vpternlogq zmm12, zmm5, zmm23, 248
        vpord     zmm13, zmm2, zmm11
        vpandnq   zmm0, zmm13, zmm0
        vpternlogq zmm0, zmm12, zmm13, 248
        jmp       .L_B7_2
        .align    16, 0x90

.L_B7_18:

        .section .drectve
        .ascii " -export \"__jsvml_atan28_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan28_ha_z0_B1_B10:
        .long   1611265
        .long   6018198
        .long   4614286
        .long   3569795
        .long   4098168
        .long   4364397
        .long   3844194
        .long   3323991
        .long   3065932
        .long   5167169
        .long   5433398
        .long   4913195
        .long   11469067

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_12
        .rva    _unwind___jsvml_atan28_ha_z0_B1_B10

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan28_ha_z0_B12_B16:
        .long   1342753
        .long   3757181
        .long   3568754
        .long   3630184
        .long   3683422
        .long   153686
        .long   411723
        .long   669760
        .long   927797
        .long   1185834
        .long   1443871
        .rva    .L_B7_1
        .rva    .L_B7_12
        .rva    _unwind___jsvml_atan28_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_12
        .rva    .L_B7_17
        .rva    _unwind___jsvml_atan28_ha_z0_B12_B16

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan28_ha_z0_B17_B17:
        .long   33
        .rva    .L_B7_1
        .rva    .L_B7_12
        .rva    _unwind___jsvml_atan28_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_17
        .rva    .L_B7_18
        .rva    _unwind___jsvml_atan28_ha_z0_B17_B17

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_atan21_ha_e9

__jsvml_atan21_ha_e9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L278:

        sub       rsp, 472
        mov       ecx, -2144337920
        vmovups   XMMWORD PTR [240+rsp], xmm15
        mov       r8d, -36700160
        vmovups   XMMWORD PTR [256+rsp], xmm14
        mov       r9d, 1005584384
        vmovups   XMMWORD PTR [272+rsp], xmm13
        mov       r10d, 4
        vmovups   XMMWORD PTR [288+rsp], xmm12
        vmovd     xmm15, ecx
        vmovups   XMMWORD PTR [304+rsp], xmm11
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [320+rsp], xmm10
        mov       r11d, 8388607
        vmovups   XMMWORD PTR [336+rsp], xmm9
        xor       ecx, ecx
        vmovups   XMMWORD PTR [352+rsp], xmm8
        vmovups   XMMWORD PTR [368+rsp], xmm7
        vmovups   XMMWORD PTR [384+rsp], xmm6
        mov       QWORD PTR [232+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        and       r13, -64
        vmovsd    xmm12, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        vcmpltsd  xmm8, xmm1, xmm2
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vandpd    xmm13, xmm1, xmm12
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vandpd    xmm14, xmm0, xmm12
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1088]
        vxorpd    xmm10, xmm1, xmm13
        vmovupd   XMMWORD PTR [432+rsp], xmm1
        vandpd    xmm4, xmm14, xmm5
        vpshufd   xmm1, xmm13, 85
        vandpd    xmm11, xmm8, xmm11
        vandpd    xmm8, xmm8, xmm3
        vxorpd    xmm12, xmm0, xmm14
        vpshufd   xmm3, xmm14, 85
        vandpd    xmm6, xmm13, xmm5
        vmovupd   XMMWORD PTR [400+rsp], xmm0
        vmovd     xmm0, r9d
        vmovupd   XMMWORD PTR [448+rsp], xmm14
        mov       r9d, 133169152
        vmovupd   XMMWORD PTR [416+rsp], xmm2
        vpsubd    xmm2, xmm1, xmm15
        vpsubd    xmm1, xmm3, xmm1
        vpsubd    xmm15, xmm3, xmm15
        vpaddd    xmm1, xmm1, xmm0
        vsubsd    xmm9, xmm14, xmm4
        vsubsd    xmm7, xmm13, xmm6
        vmovd     xmm14, r8d
        mov       r8d, 1065353216
        vpcmpgtd  xmm0, xmm2, xmm14
        vpcmpeqd  xmm2, xmm2, xmm14
        vpor      xmm0, xmm0, xmm2
        vpcmpgtd  xmm2, xmm15, xmm14
        vpcmpeqd  xmm14, xmm15, xmm14
        vpor      xmm15, xmm2, xmm14
        vpxor     xmm14, xmm14, xmm14
        vpor      xmm2, xmm0, xmm15
        vpcmpgtd  xmm0, xmm14, xmm1
        vpcmpeqd  xmm1, xmm14, xmm1
        vpor      xmm15, xmm0, xmm1
        vmulsd    xmm1, xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vpor      xmm2, xmm2, xmm15
        vmulsd    xmm0, xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vmulsd    xmm14, xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vmulsd    xmm15, xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vpshufd   xmm1, xmm1, 85
        vpshufd   xmm15, xmm15, 85
        vpsubd    xmm1, xmm1, xmm3
        vpshufd   xmm0, xmm0, 85
        vpsubd    xmm15, xmm15, xmm3
        vpshufd   xmm14, xmm14, 85
        vpsubd    xmm0, xmm0, xmm3
        vpsubd    xmm3, xmm14, xmm3
        vpsrad    xmm1, xmm1, 31
        vpsrad    xmm15, xmm15, 31
        vpsrad    xmm0, xmm0, 31
        vpsrad    xmm14, xmm3, 31
        vpaddd    xmm3, xmm1, xmm15
        vpaddd    xmm1, xmm0, xmm14
        vmovd     xmm15, r10d
        vpaddd    xmm0, xmm3, xmm1
        mov       r10d, -1048576
        vpaddd    xmm14, xmm0, xmm15
        vpslld    xmm3, xmm14, 5
        vmovd     edx, xmm3
        vmovq     xmm1, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rax+rdx]
        vmulsd    xmm3, xmm1, xmm6
        vmovq     xmm0, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rax+rdx]
        vandpd    xmm15, xmm0, xmm4
        vandpd    xmm14, xmm0, xmm9
        vmulsd    xmm4, xmm1, xmm4
        vsubsd    xmm3, xmm15, xmm3
        vmulsd    xmm15, xmm1, xmm7
        vandpd    xmm6, xmm0, xmm6
        vsubsd    xmm14, xmm14, xmm15
        vaddsd    xmm4, xmm4, xmm6
        vsubsd    xmm15, xmm3, xmm14
        mov       QWORD PTR [464+rsp], r13
        vsubsd    xmm3, xmm15, xmm3
        vsubsd    xmm3, xmm14, xmm3
        vandpd    xmm14, xmm15, xmm5
        vsubsd    xmm15, xmm15, xmm14
        vaddsd    xmm3, xmm15, xmm3
        vandpd    xmm15, xmm0, xmm7
        vmulsd    xmm7, xmm1, xmm9
        vaddsd    xmm6, xmm7, xmm15
        vaddsd    xmm1, xmm4, xmm6
        vandpd    xmm0, xmm1, xmm5
        vsubsd    xmm9, xmm4, xmm1
        vsubsd    xmm5, xmm1, xmm0
        vaddsd    xmm15, xmm6, xmm9
        vpshufd   xmm9, xmm0, 85
        vmovd     xmm4, r11d
        vpslld    xmm7, xmm9, 3
        mov       r11d, 2145386496
        vpand     xmm6, xmm7, xmm4
        vaddsd    xmm1, xmm15, xmm5
        vmovd     xmm15, r8d
        vpor      xmm7, xmm6, xmm15
        vmovd     xmm15, r9d
        vrcpps    xmm4, xmm7
        vmovd     xmm7, r10d
        vpsrld    xmm6, xmm4, 3
        vpand     xmm7, xmm9, xmm7
        vmovd     xmm9, r11d
        vpsubd    xmm6, xmm6, xmm15
        vpsubd    xmm4, xmm9, xmm7
        vpaddd    xmm6, xmm6, xmm4
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vpshufd   xmm9, xmm6, 0
        vandpd    xmm4, xmm9, xmm5
        vmulsd    xmm5, xmm0, xmm4
        vmulsd    xmm1, xmm1, xmm4
        vsubsd    xmm0, xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vaddsd    xmm7, xmm1, xmm0
        vmulsd    xmm6, xmm7, xmm7
        vsubsd    xmm9, xmm6, xmm7
        vmulsd    xmm5, xmm9, xmm7
        vaddsd    xmm0, xmm5, xmm7
        vmulsd    xmm1, xmm0, xmm7
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vsubsd    xmm15, xmm1, xmm7
        vmulsd    xmm6, xmm15, xmm7
        vaddsd    xmm9, xmm6, xmm7
        vmulsd    xmm5, xmm9, xmm7
        vsubsd    xmm7, xmm5, xmm7
        vmulsd    xmm7, xmm7, xmm4
        vmulsd    xmm9, xmm7, xmm14
        vmulsd    xmm6, xmm7, xmm3
        vmulsd    xmm3, xmm4, xmm3
        vmulsd    xmm7, xmm4, xmm14
        vaddsd    xmm5, xmm6, xmm9
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vaddsd    xmm6, xmm3, xmm5
        vaddsd    xmm4, xmm7, xmm6
        vmulsd    xmm9, xmm4, xmm4
        vmulsd    xmm5, xmm9, xmm9
        vmulsd    xmm14, xmm14, xmm5
        vmulsd    xmm1, xmm0, xmm5
        vaddsd    xmm3, xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vmulsd    xmm15, xmm3, xmm5
        vmulsd    xmm1, xmm0, xmm5
        vaddsd    xmm3, xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vaddsd    xmm15, xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vmulsd    xmm14, xmm3, xmm5
        vmulsd    xmm15, xmm15, xmm5
        vaddsd    xmm0, xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vaddsd    xmm3, xmm15, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vmulsd    xmm1, xmm0, xmm5
        vmulsd    xmm14, xmm3, xmm5
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vaddsd    xmm3, xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vmulsd    xmm1, xmm0, xmm5
        vmulsd    xmm5, xmm3, xmm5
        vaddsd    xmm14, xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vaddsd    xmm1, xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vmulsd    xmm0, xmm14, xmm9
        vaddsd    xmm3, xmm0, xmm1
        vxorpd    xmm0, xmm8, xmm10
        vaddsd    xmm8, xmm6, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rax+rdx]
        vmulsd    xmm9, xmm3, xmm9
        vaddsd    xmm1, xmm8, xmm0
        vmulsd    xmm4, xmm9, xmm4
        vmovupd   xmm9, XMMWORD PTR [432+rsp]
        vaddsd    xmm3, xmm4, xmm1
        vaddsd    xmm5, xmm7, xmm3
        vaddsd    xmm6, xmm5, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rax+rdx]
        vmovmskps eax, xmm2
        vxorpd    xmm10, xmm6, xmm10
        vmovupd   xmm5, XMMWORD PTR [448+rsp]
        vaddsd    xmm0, xmm10, xmm11
        vorpd     xmm0, xmm0, xmm12
        test      al, 1
        jne       .L_B8_8

.L_B8_2:

        test      ecx, ecx
        jne       .L_B8_4

.L_B8_3:

        vmovups   xmm6, XMMWORD PTR [384+rsp]
        vmovups   xmm7, XMMWORD PTR [368+rsp]
        vmovups   xmm8, XMMWORD PTR [352+rsp]
        vmovups   xmm9, XMMWORD PTR [336+rsp]
        vmovups   xmm10, XMMWORD PTR [320+rsp]
        vmovups   xmm11, XMMWORD PTR [304+rsp]
        vmovups   xmm12, XMMWORD PTR [288+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 472
        ret

.L_B8_4:

        vmovupd   xmm1, XMMWORD PTR [400+rsp]
        vmovsd    QWORD PTR [r13], xmm1
        vmovsd    QWORD PTR [64+r13], xmm9
        vmovsd    QWORD PTR [128+r13], xmm0
        jne       .L_B8_6

.L_B8_5:

        vmovsd    xmm0, QWORD PTR [128+r13]
        jmp       .L_B8_3

.L_B8_6:

        je        .L_B8_5

.L_B8_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B8_5

.L_B8_8:

        vmovupd   xmm14, XMMWORD PTR [400+rsp]
        vcmpordsd xmm15, xmm9, xmm9
        vcmpordsd xmm1, xmm14, xmm14
        vcmpnltsd xmm12, xmm5, xmm13
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vandpd    xmm7, xmm9, xmm10
        vandpd    xmm6, xmm14, xmm10
        vandpd    xmm10, xmm15, xmm1
        vmovupd   xmm1, XMMWORD PTR [416+rsp]
        vblendvpd xmm3, xmm13, xmm5, xmm12
        vcmpeqsd  xmm13, xmm13, xmm1
        vcmpeqsd  xmm5, xmm5, xmm1
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vorpd     xmm13, xmm13, xmm5
        vpshufd   xmm5, xmm13, 85
        vandpd    xmm4, xmm12, xmm11
        vpshufd   xmm11, xmm10, 85
        vpand     xmm13, xmm5, xmm11
        vpandn    xmm2, xmm13, xmm2
        vmovmskps ecx, xmm2
        vcmpeqsd  xmm2, xmm3, xmm1
        vblendvpd xmm3, xmm4, xmm1, xmm2
        and       ecx, 1
        vpshufd   xmm4, xmm9, 85
        vpshufd   xmm1, xmm1, 85
        vorpd     xmm10, xmm3, xmm7
        vpcmpgtd  xmm5, xmm1, xmm4
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vpshufd   xmm7, xmm5, 0
        vandpd    xmm8, xmm7, xmm8
        vpshufd   xmm12, xmm13, 0
        vaddsd    xmm11, xmm10, xmm8
        vorpd     xmm6, xmm11, xmm6
        vblendvpd xmm0, xmm0, xmm6, xmm12
        jmp       .L_B8_2
        .align    16, 0x90

.L_B8_9:

        .section .drectve
        .ascii " -export \"__jsvml_atan21_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan21_ha_e9_B1_B8:
        .long   1611521
        .long   1954967
        .long   1599631
        .long   1538182
        .long   1476733
        .long   1415282
        .long   1353827
        .long   1292371
        .long   1230918
        .long   1169463
        .long   1108008
        .long   1046553
        .long   3866891

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_9
        .rva    _unwind___jsvml_atan21_ha_e9_B1_B8

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_atan21_ha_l9

__jsvml_atan21_ha_l9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L310:

        sub       rsp, 424
        mov       ecx, -2144337920
        vmovups   XMMWORD PTR [240+rsp], xmm15
        mov       r8d, -36700160
        vmovups   XMMWORD PTR [256+rsp], xmm14
        mov       r9d, 4
        vmovups   XMMWORD PTR [272+rsp], xmm13
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [288+rsp], xmm12
        vmovapd   xmm12, xmm1
        vmovups   XMMWORD PTR [304+rsp], xmm11
        vmovd     xmm13, ecx
        vmovups   XMMWORD PTR [320+rsp], xmm10
        vmovd     xmm11, r8d
        vmovups   XMMWORD PTR [336+rsp], xmm9
        mov       r10d, 8388607
        vmovups   XMMWORD PTR [352+rsp], xmm8
        mov       r11d, 1065353216
        vmovups   XMMWORD PTR [368+rsp], xmm7
        mov       r8d, 133169152
        vmovups   XMMWORD PTR [384+rsp], xmm6
        xor       ecx, ecx
        mov       QWORD PTR [232+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2880]
        and       r13, -64
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+896]
        vcmpltsd  xmm3, xmm12, xmm5
        vandpd    xmm10, xmm12, xmm9
        vandpd    xmm9, xmm0, xmm9
        vmovsd    xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+960]
        vxorpd    xmm6, xmm12, xmm10
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1024]
        vandpd    xmm7, xmm3, xmm4
        vpshufd   xmm1, xmm9, 85
        vxorpd    xmm8, xmm0, xmm9
        vpshufd   xmm14, xmm10, 85
        vmovupd   XMMWORD PTR [400+rsp], xmm5
        vandpd    xmm5, xmm3, xmm2
        vpsubd    xmm4, xmm14, xmm13
        vpsubd    xmm2, xmm1, xmm13
        vpcmpgtd  xmm3, xmm4, xmm11
        vpcmpeqd  xmm15, xmm4, xmm11
        vpcmpgtd  xmm14, xmm2, xmm11
        vpcmpeqd  xmm11, xmm2, xmm11
        vpor      xmm13, xmm3, xmm15
        vpor      xmm11, xmm14, xmm11
        vmulsd    xmm3, xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1152]
        vpor      xmm11, xmm13, xmm11
        vmulsd    xmm15, xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1216]
        vmulsd    xmm2, xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1280]
        vmulsd    xmm13, xmm10, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1344]
        vpshufd   xmm14, xmm3, 85
        vpshufd   xmm13, xmm13, 85
        vpsubd    xmm3, xmm14, xmm1
        vpshufd   xmm15, xmm15, 85
        vpsubd    xmm14, xmm13, xmm1
        vpshufd   xmm2, xmm2, 85
        vpsubd    xmm13, xmm15, xmm1
        vpsubd    xmm1, xmm2, xmm1
        vpsrad    xmm3, xmm3, 31
        vpsrad    xmm14, xmm14, 31
        vpsrad    xmm15, xmm13, 31
        vpsrad    xmm13, xmm1, 31
        vpaddd    xmm14, xmm3, xmm14
        vpaddd    xmm1, xmm15, xmm13
        vmovd     xmm15, r9d
        vpaddd    xmm3, xmm14, xmm1
        mov       r9d, -1048576
        vpaddd    xmm2, xmm3, xmm15
        vpslld    xmm14, xmm2, 5
        vmovd     edx, xmm14
        vmovsd    xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1792]
        vmovq     xmm15, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+24+rax+rdx]
        vmovq     xmm3, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+rax+rdx]
        vandpd    xmm2, xmm15, xmm10
        vmovdqa   xmm1, xmm3
        vandpd    xmm13, xmm15, xmm9
        vfmadd213sd xmm3, xmm9, xmm2
        vmovd     xmm2, r10d
        vfnmadd213sd xmm1, xmm10, xmm13
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3008]
        vpshufd   xmm14, xmm3, 85
        vpslld    xmm15, xmm14, 3
        mov       r10d, 2145386496
        vpand     xmm15, xmm15, xmm2
        vmovd     xmm2, r11d
        vpor      xmm15, xmm15, xmm2
        vrcpps    xmm2, xmm15
        vpsrld    xmm15, xmm2, 3
        vmovd     xmm2, r8d
        vpsubd    xmm15, xmm15, xmm2
        vmovd     xmm2, r9d
        vpand     xmm2, xmm14, xmm2
        vmovd     xmm14, r10d
        vpsubd    xmm14, xmm14, xmm2
        vpaddd    xmm15, xmm15, xmm14
        vpshufd   xmm14, xmm15, 0
        vandpd    xmm2, xmm14, xmm13
        vmovaps   xmm13, xmm3
        vfnmadd213sd xmm13, xmm2, xmm4
        vmovaps   xmm14, xmm3
        vfmadd213sd xmm13, xmm13, xmm13
        vfmadd213sd xmm2, xmm13, xmm2
        vfnmadd213sd xmm14, xmm2, xmm4
        vfmadd213sd xmm2, xmm14, xmm2
        vmulsd    xmm14, xmm2, xmm1
        vfnmadd213sd xmm3, xmm14, xmm1
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1920]
        vmulsd    xmm13, xmm3, xmm2
        vmulsd    xmm3, xmm14, xmm14
        vmulsd    xmm4, xmm3, xmm3
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1856]
        vfmadd213sd xmm2, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+1984]
        vfmadd213sd xmm1, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2048]
        vfmadd213sd xmm2, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2112]
        vfmadd213sd xmm1, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2176]
        vfmadd213sd xmm2, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2240]
        vfmadd213sd xmm1, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2304]
        vfmadd213sd xmm2, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2368]
        vfmadd213sd xmm1, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2432]
        vfmadd213sd xmm2, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2496]
        vfmadd213sd xmm1, xmm4, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+2560]
        vfmadd213sd xmm2, xmm3, xmm1
        vxorpd    xmm1, xmm5, xmm6
        vaddsd    xmm5, xmm13, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+16+rax+rdx]
        vmulsd    xmm15, xmm2, xmm3
        vaddsd    xmm5, xmm5, xmm1
        vfmadd213sd xmm15, xmm14, xmm5
        mov       QWORD PTR [416+rsp], r13
        vaddsd    xmm2, xmm14, xmm15
        vaddsd    xmm3, xmm2, QWORD PTR ["__jsvml_datan2_ha_data_internal"@imgrel+8+rax+rdx]
        vmovmskps eax, xmm11
        vxorpd    xmm6, xmm3, xmm6
        vaddsd    xmm7, xmm6, xmm7
        vorpd     xmm8, xmm7, xmm8
        test      al, 1
        jne       .L_B9_8

.L_B9_2:

        test      ecx, ecx
        jne       .L_B9_4

.L_B9_3:

        vmovups   xmm6, XMMWORD PTR [384+rsp]
        vmovapd   xmm0, xmm8
        vmovups   xmm7, XMMWORD PTR [368+rsp]
        vmovups   xmm8, XMMWORD PTR [352+rsp]
        vmovups   xmm9, XMMWORD PTR [336+rsp]
        vmovups   xmm10, XMMWORD PTR [320+rsp]
        vmovups   xmm11, XMMWORD PTR [304+rsp]
        vmovups   xmm12, XMMWORD PTR [288+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 424
        ret

.L_B9_4:

        vmovsd    QWORD PTR [r13], xmm0
        vmovsd    QWORD PTR [64+r13], xmm12
        vmovsd    QWORD PTR [128+r13], xmm8
        jne       .L_B9_6

.L_B9_5:

        vmovsd    xmm8, QWORD PTR [128+r13]
        jmp       .L_B9_3

.L_B9_6:

        je        .L_B9_5

.L_B9_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_datan2_ha_cout_rare_internal
        jmp       .L_B9_5

.L_B9_8:

        vmovsd    xmm13, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+832]
        vcmpordsd xmm2, xmm12, xmm12
        vcmpordsd xmm1, xmm0, xmm0
        vcmpnltsd xmm15, xmm9, xmm10
        vandpd    xmm1, xmm2, xmm1
        vandpd    xmm6, xmm12, xmm13
        vmovupd   xmm2, XMMWORD PTR [400+rsp]
        vandpd    xmm5, xmm0, xmm13
        vblendvpd xmm3, xmm10, xmm9, xmm15
        vcmpeqsd  xmm10, xmm10, xmm2
        vcmpeqsd  xmm9, xmm9, xmm2
        vorpd     xmm10, xmm10, xmm9
        vpshufd   xmm13, xmm10, 85
        vpshufd   xmm1, xmm1, 85
        vpand     xmm9, xmm13, xmm1
        vcmpeqsd  xmm1, xmm3, xmm2
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3136]
        vpandn    xmm11, xmm9, xmm11
        vandpd    xmm4, xmm15, xmm14
        vblendvpd xmm3, xmm4, xmm2, xmm1
        vpshufd   xmm4, xmm12, 85
        vpshufd   xmm2, xmm2, 85
        vmovmskps ecx, xmm11
        vorpd     xmm11, xmm3, xmm6
        vpcmpgtd  xmm6, xmm2, xmm4
        vmovsd    xmm7, QWORD PTR [rip+__jsvml_datan2_ha_data_internal+3072]
        vpshufd   xmm10, xmm6, 0
        and       ecx, 1
        vandpd    xmm7, xmm10, xmm7
        vpshufd   xmm9, xmm9, 0
        vaddsd    xmm13, xmm11, xmm7
        vorpd     xmm5, xmm13, xmm5
        vblendvpd xmm8, xmm8, xmm5, xmm9
        jmp       .L_B9_2
        .align    16, 0x90

.L_B9_9:

        .section .drectve
        .ascii " -export \"__jsvml_atan21_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan21_ha_l9_B1_B8:
        .long   1615361
        .long   1954982
        .long   1599644
        .long   1538189
        .long   1476734
        .long   1415279
        .long   1353825
        .long   1292372
        .long   1230919
        .long   1169463
        .long   1108008
        .long   1046553
        .long   3473675

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_9
        .rva    _unwind___jsvml_atan21_ha_l9_B1_B8

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_datan2_ha_cout_rare_internal

__jsvml_datan2_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L335:

        sub       rsp, 152
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1888]
        movsd     xmm0, QWORD PTR [rcx]
        mulsd     xmm0, xmm1
        mulsd     xmm1, QWORD PTR [rdx]
        movsd     QWORD PTR [56+rsp], xmm0
        movsd     QWORD PTR [64+rsp], xmm1
        movzx     eax, WORD PTR [62+rsp]
        and       eax, 32752
        mov       dl, BYTE PTR [71+rsp]
        movzx     r11d, WORD PTR [70+rsp]
        and       dl, -128
        and       r11d, 32752
        shr       eax, 4
        mov       cl, BYTE PTR [63+rsp]
        shr       cl, 7
        shr       dl, 7
        movups    XMMWORD PTR [112+rsp], xmm15
        movups    XMMWORD PTR [128+rsp], xmm13
        movups    XMMWORD PTR [96+rsp], xmm6
        shr       r11d, 4
        cmp       eax, 2047
        je        .L_B10_49

.L_B10_2:

        cmp       r11d, 2047
        je        .L_B10_38

.L_B10_3:

        test      eax, eax
        jne       .L_B10_6

.L_B10_4:

        test      DWORD PTR [60+rsp], 1048575
        jne       .L_B10_6

.L_B10_5:

        cmp       DWORD PTR [56+rsp], 0
        je        .L_B10_31

.L_B10_6:

        test      r11d, r11d
        jne       .L_B10_9

.L_B10_7:

        test      DWORD PTR [68+rsp], 1048575
        jne       .L_B10_9

.L_B10_8:

        cmp       DWORD PTR [64+rsp], 0
        je        .L_B10_29

.L_B10_9:

        neg       r11d
        movsd     QWORD PTR [56+rsp], xmm0
        add       r11d, eax
        movsd     QWORD PTR [64+rsp], xmm1
        mov       r10b, BYTE PTR [63+rsp]
        mov       r9b, BYTE PTR [71+rsp]
        and       r10b, 127
        and       r9b, 127
        cmp       r11d, -54
        jle       .L_B10_24

.L_B10_10:

        cmp       r11d, 54
        jge       .L_B10_21

.L_B10_11:

        mov       BYTE PTR [71+rsp], r9b
        mov       BYTE PTR [63+rsp], r10b
        test      dl, dl
        jne       .L_B10_13

.L_B10_12:

        movsd     xmm13, QWORD PTR [rip+_vmldAtanHATab+1976]
        movaps    xmm15, xmm13
        jmp       .L_B10_14

.L_B10_13:

        movsd     xmm13, QWORD PTR [rip+_vmldAtanHATab+1936]
        movsd     xmm15, QWORD PTR [rip+_vmldAtanHATab+1944]

.L_B10_14:

        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm6, QWORD PTR [64+rsp]
        movaps    xmm2, xmm1
        divsd     xmm2, xmm6
        movzx     r9d, WORD PTR [62+rsp]
        movsd     QWORD PTR [88+rsp], xmm2
        test      eax, eax
        jle       .L_B10_37

.L_B10_15:

        cmp       eax, 2046
        jge       .L_B10_17

.L_B10_16:

        and       r9d, -32753
        add       eax, -1023
        movsd     QWORD PTR [56+rsp], xmm1
        add       r9d, 16368
        mov       WORD PTR [62+rsp], r9w
        jmp       .L_B10_18

.L_B10_17:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1992]
        mov       eax, 1022
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [56+rsp], xmm1

.L_B10_18:

        neg       eax
        add       eax, 1023
        and       eax, 2047
        movzx     r9d, WORD PTR [rip+_vmldAtanHATab+1894]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        and       r9d, -32753
        shl       eax, 4
        movsd     QWORD PTR [64+rsp], xmm0
        or        r9d, eax
        mov       WORD PTR [70+rsp], r9w
        movsd     xmm1, QWORD PTR [64+rsp]
        mulsd     xmm6, xmm1
        comisd    xmm2, QWORD PTR [rip+_vmldAtanHATab+1880]
        jb        .L_B10_20

.L_B10_19:

        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        mov       eax, 113
        mulsd     xmm1, xmm6
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm4, QWORD PTR [32+rsp]
        movzx     r10d, WORD PTR [94+rsp]
        subsd     xmm4, xmm6
        movsd     QWORD PTR [40+rsp], xmm4
        and       r10d, 32752
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        shr       r10d, 4
        subsd     xmm3, xmm5
        movsd     QWORD PTR [32+rsp], xmm3
        mov       r9d, DWORD PTR [92+rsp]
        movsd     xmm0, QWORD PTR [32+rsp]
        and       r9d, 1048575
        movsd     QWORD PTR [80+rsp], xmm2
        movaps    xmm2, xmm6
        shl       r10d, 20
        subsd     xmm2, xmm0
        mov       r11d, DWORD PTR [84+rsp]
        or        r10d, r9d
        mov       r9d, r11d
        and       r11d, -524288
        add       r11d, 262144
        and       r9d, -1048576
        and       r11d, 1048575
        add       r10d, -1069547520
        or        r9d, r11d
        mov       DWORD PTR [80+rsp], 0
        mov       DWORD PTR [84+rsp], r9d
        lea       r9, QWORD PTR [rip+__ImageBase]
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [80+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm2
        mulsd     xmm3, xmm2
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1968]
        mulsd     xmm0, xmm1
        mulsd     xmm3, xmm1
        movaps    xmm4, xmm0
        sar       r10d, 19
        addsd     xmm4, xmm3
        movsd     QWORD PTR [32+rsp], xmm4
        cmp       r10d, 113
        movsd     xmm5, QWORD PTR [32+rsp]
        cmovl     eax, r10d
        subsd     xmm0, xmm5
        add       eax, eax
        addsd     xmm0, xmm3
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [32+rsp]
        movaps    xmm4, xmm0
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm4, xmm5
        movsd     QWORD PTR [32+rsp], xmm4
        movaps    xmm4, xmm0
        movsd     xmm3, QWORD PTR [32+rsp]
        movsxd    rax, eax
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [48+rsp], xmm4
        movaps    xmm4, xmm0
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm5, xmm3
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm4, xmm5
        movsd     QWORD PTR [48+rsp], xmm4
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm3, xmm5
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm3, xmm4
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     QWORD PTR [32+rsp], xmm3
        addsd     xmm1, xmm5
        movsd     xmm5, QWORD PTR [32+rsp]
        subsd     xmm5, xmm4
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm5, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm5, xmm3
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        addsd     xmm5, xmm1
        movaps    xmm1, xmm0
        mulsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm3, QWORD PTR [56+rsp]
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm3, xmm1
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm0, xmm1
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        mulsd     xmm3, xmm2
        mulsd     xmm1, xmm2
        movaps    xmm2, xmm3
        addsd     xmm2, xmm1
        movsd     QWORD PTR [32+rsp], xmm2
        movaps    xmm2, xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm3, xmm0
        addsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm2, xmm1
        movsd     QWORD PTR [32+rsp], xmm2
        movaps    xmm2, xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm2, QWORD PTR [rip+_vmldAtanHATab+2000]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm1, QWORD PTR [48+rsp]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        addsd     xmm1, xmm6
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm6, QWORD PTR [32+rsp]
        mulsd     xmm2, xmm6
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     QWORD PTR [32+rsp], xmm2
        addsd     xmm3, xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm1, xmm0
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm6, xmm2
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+1888]
        divsd     xmm6, xmm0
        movsd     xmm2, QWORD PTR [40+rsp]
        addsd     xmm2, xmm3
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm3, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm3, xmm6
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm6, QWORD PTR [48+rsp]
        mulsd     xmm0, xmm6
        subsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [48+rsp]
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [40+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm3, QWORD PTR [40+rsp]
        mov       r10, QWORD PTR [48+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r10
        mov       r10, r9
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+1888]
        mulsd     xmm3, xmm6
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm4
        mulsd     xmm3, xmm0
        movaps    xmm1, xmm3
        mulsd     xmm1, xmm5
        mulsd     xmm4, xmm3
        mulsd     xmm5, xmm2
        addsd     xmm1, xmm4
        movaps    xmm4, xmm6
        addsd     xmm1, xmm5
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1872]
        addsd     xmm4, xmm1
        movsd     QWORD PTR [32+rsp], xmm4
        movsd     xmm5, QWORD PTR [32+rsp]
        movsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm6, xmm5
        addsd     xmm6, xmm1
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm2
        mulsd     xmm4, xmm2
        mulsd     xmm0, xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm4
        movsd     xmm3, QWORD PTR [32+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1864]
        subsd     xmm3, xmm2
        mulsd     xmm0, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1856]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm0, xmm6
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm2, xmm4
        mulsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm6
        addsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm4, xmm0
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm0, xmm2
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movaps    xmm5, xmm0
        movaps    xmm4, xmm6
        mulsd     xmm4, xmm1
        mulsd     xmm0, xmm1
        mulsd     xmm6, xmm3
        mulsd     xmm5, xmm3
        addsd     xmm4, xmm0
        movaps    xmm2, xmm5
        addsd     xmm4, xmm6
        addsd     xmm2, xmm3
        movsd     QWORD PTR [32+rsp], xmm4
        movaps    xmm6, xmm5
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm6, QWORD PTR [40+rsp]
        addsd     xmm3, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm3, QWORD PTR [48+rsp]
        subsd     xmm5, xmm3
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        mov       r11, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r11
        addsd     xmm1, xmm0
        movsd     xmm6, QWORD PTR [64+rsp]
        addsd     xmm4, xmm1
        movaps    xmm1, xmm6
        movaps    xmm2, xmm6
        movsd     QWORD PTR [72+rsp], xmm4
        addsd     xmm1, QWORD PTR ["_vmldAtanHATab"@imgrel+r9+rax*8]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm3, xmm1
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [40+rsp]
        addsd     xmm4, QWORD PTR ["_vmldAtanHATab"@imgrel+r10+rax*8]
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        addsd     xmm0, xmm6
        movsd     QWORD PTR [48+rsp], xmm0
        mov       r10, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r10

.L_B10_56:

        movsd     xmm1, QWORD PTR [72+rsp]
        movaps    xmm2, xmm13
        lea       r9, QWORD PTR [rip+__ImageBase]
        addsd     xmm1, xmm0
        shl       cl, 7
        addsd     xmm1, QWORD PTR ["_vmldAtanHATab"@imgrel+8+r9+rax*8]
        mov       al, dl
        shl       al, 7
        movsd     QWORD PTR [72+rsp], xmm1
        shr       r10, 56
        mov       r11b, BYTE PTR [79+rsp]
        and       r10b, 127
        or        r10b, al
        mov       al, r11b
        mov       BYTE PTR [71+rsp], r10b
        and       al, 127
        movsd     xmm0, QWORD PTR [64+rsp]
        movaps    xmm4, xmm0
        addsd     xmm2, xmm0
        shr       r11b, 7
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        xor       dl, r11b
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        shl       dl, 7
        addsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm13, xmm1
        movsd     QWORD PTR [40+rsp], xmm13
        or        al, dl
        movsd     xmm13, QWORD PTR [48+rsp]
        mov       BYTE PTR [79+rsp], al
        subsd     xmm0, xmm13
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        mov       rdx, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rdx
        movsd     xmm3, QWORD PTR [64+rsp]
        addsd     xmm2, QWORD PTR [72+rsp]
        addsd     xmm15, xmm2
        movsd     QWORD PTR [72+rsp], xmm15
        addsd     xmm3, xmm15
        movsd     QWORD PTR [80+rsp], xmm3
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rcx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rcx
        jmp       .L_B10_36

.L_B10_20:

        movsd     xmm4, QWORD PTR [56+rsp]
        mov       r10b, dl
        movaps    xmm3, xmm4
        mulsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        shl       r10b, 7
        shl       cl, 7
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm5, QWORD PTR [32+rsp]
        subsd     xmm5, QWORD PTR [56+rsp]
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm0, xmm6
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm4, xmm2
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm0, xmm3
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm1, QWORD PTR [32+rsp]
        divsd     xmm0, xmm1
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm6, xmm0
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm3, xmm0
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm0, xmm6
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm6, QWORD PTR [48+rsp]
        mulsd     xmm1, xmm6
        subsd     xmm3, xmm1
        movsd     xmm1, QWORD PTR [48+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [40+rsp]
        subsd     xmm3, xmm2
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm0, QWORD PTR [40+rsp]
        mov       rax, QWORD PTR [48+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rax
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        mulsd     xmm0, xmm6
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm4
        mulsd     xmm2, xmm5
        mulsd     xmm0, xmm1
        movaps    xmm3, xmm0
        mulsd     xmm3, xmm5
        movaps    xmm5, xmm6
        mulsd     xmm4, xmm0
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        addsd     xmm3, xmm4
        addsd     xmm3, xmm2
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm0, QWORD PTR [32+rsp]
        addsd     xmm5, xmm0
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm6, xmm4
        movsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1872]
        addsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm6, QWORD PTR [88+rsp]
        mulsd     xmm6, xmm6
        mulsd     xmm4, xmm6
        movsd     xmm3, QWORD PTR [32+rsp]
        mulsd     xmm1, xmm3
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1864]
        mulsd     xmm4, xmm6
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1856]
        subsd     xmm2, xmm3
        mulsd     xmm4, xmm6
        movsd     QWORD PTR [40+rsp], xmm2
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm4, xmm6
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm6, xmm0
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm3, xmm0
        mulsd     xmm6, xmm4
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm6
        addsd     xmm5, xmm3
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm0, xmm4
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movaps    xmm1, xmm4
        movaps    xmm0, xmm6
        mulsd     xmm0, xmm5
        mulsd     xmm4, xmm5
        mulsd     xmm6, xmm2
        mulsd     xmm1, xmm2
        addsd     xmm0, xmm4
        movaps    xmm3, xmm1
        addsd     xmm0, xmm6
        addsd     xmm3, xmm2
        movsd     QWORD PTR [32+rsp], xmm0
        movaps    xmm6, xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm6, xmm4
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [48+rsp], xmm4
        movsd     xmm6, QWORD PTR [40+rsp]
        addsd     xmm2, xmm6
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [48+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        addsd     xmm6, xmm1
        movsd     QWORD PTR [48+rsp], xmm6
        mov       r9, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r9
        addsd     xmm5, xmm1
        shr       r9, 56
        addsd     xmm0, xmm5
        and       r9b, 127
        movaps    xmm5, xmm13
        or        r9b, r10b
        mov       BYTE PTR [71+rsp], r9b
        movsd     xmm6, QWORD PTR [64+rsp]
        movsd     QWORD PTR [72+rsp], xmm0
        movaps    xmm1, xmm6
        mov       r11b, BYTE PTR [79+rsp]
        mov       al, r11b
        shr       r11b, 7
        addsd     xmm5, xmm6
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm1, xmm0
        movsd     QWORD PTR [40+rsp], xmm1
        xor       dl, r11b
        movsd     xmm3, QWORD PTR [32+rsp]
        and       al, 127
        movsd     xmm2, QWORD PTR [40+rsp]
        shl       dl, 7
        addsd     xmm3, xmm2
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [40+rsp]
        addsd     xmm13, xmm4
        movsd     QWORD PTR [40+rsp], xmm13
        or        al, dl
        movsd     xmm13, QWORD PTR [48+rsp]
        mov       BYTE PTR [79+rsp], al
        subsd     xmm6, xmm13
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        mov       rdx, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rdx
        movsd     xmm3, QWORD PTR [64+rsp]
        addsd     xmm2, QWORD PTR [72+rsp]
        addsd     xmm15, xmm2
        movsd     QWORD PTR [72+rsp], xmm15
        addsd     xmm3, xmm15
        movsd     QWORD PTR [80+rsp], xmm3
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rcx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rcx
        jmp       .L_B10_36

.L_B10_21:

        cmp       r11d, 74
        jge       .L_B10_53

.L_B10_22:

        mov       BYTE PTR [63+rsp], r10b
        divsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1928]
        shl       cl, 7
        subsd     xmm0, xmm1
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_24:

        test      dl, dl
        jne       .L_B10_35

.L_B10_25:

        mov       BYTE PTR [63+rsp], r10b
        mov       BYTE PTR [71+rsp], r9b
        movsd     xmm2, QWORD PTR [56+rsp]
        divsd     xmm2, QWORD PTR [64+rsp]
        movsd     QWORD PTR [80+rsp], xmm2
        movzx     eax, WORD PTR [86+rsp]
        test      eax, 32752
        je        .L_B10_27

.L_B10_26:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        shl       cl, 7
        addsd     xmm0, xmm2
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [80+rsp], xmm2
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_27:

        mulsd     xmm2, xmm2
        shl       cl, 7
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        addsd     xmm0, QWORD PTR [80+rsp]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_29:

        test      eax, eax
        jne       .L_B10_53

.L_B10_30:

        test      DWORD PTR [60+rsp], 1048575
        jne       .L_B10_53
        jmp       .L_B10_57

.L_B10_31:

        jne       .L_B10_53

.L_B10_33:

        test      dl, dl
        jne       .L_B10_35

.L_B10_34:

        shl       cl, 7
        mov       rax, QWORD PTR [rip+_vmldAtanHATab+1976]
        mov       QWORD PTR [80+rsp], rax
        shr       rax, 56
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_35:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1936]
        shl       cl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1944]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx

.L_B10_36:

        movups    xmm6, XMMWORD PTR [96+rsp]
        xor       eax, eax
        movups    xmm13, XMMWORD PTR [128+rsp]
        movups    xmm15, XMMWORD PTR [112+rsp]
        add       rsp, 152
        ret

.L_B10_37:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1984]
        mov       eax, -1022
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [56+rsp], xmm1
        jmp       .L_B10_18

.L_B10_38:

        cmp       eax, 2047
        je        .L_B10_49

.L_B10_39:

        test      DWORD PTR [68+rsp], 1048575
        jne       .L_B10_41

.L_B10_40:

        cmp       DWORD PTR [64+rsp], 0
        je        .L_B10_42

.L_B10_41:

        addsd     xmm0, xmm1
        movsd     QWORD PTR [r8], xmm0
        jmp       .L_B10_36

.L_B10_42:

        cmp       eax, 2047
        je        .L_B10_46

.L_B10_43:

        test      dl, dl
        je        .L_B10_34
        jmp       .L_B10_35

.L_B10_46:

        test      dl, dl
        jne       .L_B10_48

.L_B10_47:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1904]
        shl       cl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1912]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_48:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1952]
        shl       cl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1960]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_49:

        test      DWORD PTR [60+rsp], 1048575
        jne       .L_B10_41

.L_B10_50:

        cmp       DWORD PTR [56+rsp], 0
        jne       .L_B10_41

.L_B10_51:

        cmp       r11d, 2047
        je        .L_B10_39

.L_B10_53:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        shl       cl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1928]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [87+rsp], al
        mov       rdx, QWORD PTR [80+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_36

.L_B10_57:

        cmp       DWORD PTR [56+rsp], 0
        jne       .L_B10_53
        jmp       .L_B10_33
        .align    16, 0x90

.L_B10_54:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_datan2_ha_cout_rare_internal_B1_B57:
        .long   551425
        .long   419946
        .long   579685
        .long   522332
        .long   1245451

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_54
        .rva    _unwind___jsvml_datan2_ha_cout_rare_internal_B1_B57

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_datan2_ha_data_internal
__jsvml_datan2_ha_data_internal:
        .long   0
        .long   1072693248
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   0
        .long   0
        .long   0
        .long   1073217536
        .long   3531732635
        .long   1072657163
        .long   2062601149
        .long   1013974920
        .long   4294967295
        .long   4294967295
        .long   0
        .long   1072693248
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   4294967295
        .long   4294967295
        .long   0
        .long   1071644672
        .long   90291023
        .long   1071492199
        .long   573531618
        .long   1014639487
        .long   4294967295
        .long   4294967295
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4294967295
        .long   4294967295
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1071644672
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   0
        .long   2147483648
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   4160749568
        .long   4294967295
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   4293918720
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   133169152
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2147483647
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   4294967295
        .long   2147483647
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   1065353216
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   0
        .long   4294967295
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   1005584384
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
_vmldAtanHATab:
        .long   3892314112
        .long   1069799150
        .long   2332892550
        .long   1039715405
        .long   1342177280
        .long   1070305495
        .long   270726690
        .long   1041535749
        .long   939524096
        .long   1070817911
        .long   2253973841
        .long   3188654726
        .long   3221225472
        .long   1071277294
        .long   3853927037
        .long   1043226911
        .long   2818572288
        .long   1071767563
        .long   2677759107
        .long   1044314101
        .long   3355443200
        .long   1072103591
        .long   1636578514
        .long   3191094734
        .long   1476395008
        .long   1072475260
        .long   1864703685
        .long   3188646936
        .long   805306368
        .long   1072747407
        .long   192551812
        .long   3192726267
        .long   2013265920
        .long   1072892781
        .long   2240369452
        .long   1043768538
        .long   0
        .long   1072999953
        .long   3665168337
        .long   3192705970
        .long   402653184
        .long   1073084787
        .long   1227953434
        .long   3192313277
        .long   2013265920
        .long   1073142981
        .long   3853283127
        .long   1045277487
        .long   805306368
        .long   1073187261
        .long   1676192264
        .long   3192868861
        .long   134217728
        .long   1073217000
        .long   4290763938
        .long   1042034855
        .long   671088640
        .long   1073239386
        .long   994303084
        .long   3189643768
        .long   402653184
        .long   1073254338
        .long   1878067156
        .long   1042652475
        .long   1610612736
        .long   1073265562
        .long   670314820
        .long   1045138554
        .long   3221225472
        .long   1073273048
        .long   691126919
        .long   3189987794
        .long   3489660928
        .long   1073278664
        .long   1618990832
        .long   3188194509
        .long   1207959552
        .long   1073282409
        .long   2198872939
        .long   1044806069
        .long   3489660928
        .long   1073285217
        .long   2633982383
        .long   1042307894
        .long   939524096
        .long   1073287090
        .long   1059367786
        .long   3189114230
        .long   2281701376
        .long   1073288494
        .long   3158525533
        .long   1044484961
        .long   3221225472
        .long   1073289430
        .long   286581777
        .long   1044893263
        .long   4026531840
        .long   1073290132
        .long   2000245215
        .long   3191647611
        .long   134217728
        .long   1073290601
        .long   4205071590
        .long   1045035927
        .long   536870912
        .long   1073290952
        .long   2334392229
        .long   1043447393
        .long   805306368
        .long   1073291186
        .long   2281458177
        .long   3188885569
        .long   3087007744
        .long   1073291361
        .long   691611507
        .long   1044733832
        .long   3221225472
        .long   1073291478
        .long   1816229550
        .long   1044363390
        .long   2281701376
        .long   1073291566
        .long   1993843750
        .long   3189837440
        .long   134217728
        .long   1073291625
        .long   3654754496
        .long   1044970837
        .long   4026531840
        .long   1073291668
        .long   3224300229
        .long   3191935390
        .long   805306368
        .long   1073291698
        .long   2988777976
        .long   3188950659
        .long   536870912
        .long   1073291720
        .long   1030371341
        .long   1043402665
        .long   3221225472
        .long   1073291734
        .long   1524463765
        .long   1044361356
        .long   3087007744
        .long   1073291745
        .long   2754295320
        .long   1044731036
        .long   134217728
        .long   1073291753
        .long   3099629057
        .long   1044970710
        .long   2281701376
        .long   1073291758
        .long   962914160
        .long   3189838838
        .long   805306368
        .long   1073291762
        .long   3543908206
        .long   3188950786
        .long   4026531840
        .long   1073291764
        .long   1849909620
        .long   3191935434
        .long   3221225472
        .long   1073291766
        .long   1641333636
        .long   1044361352
        .long   536870912
        .long   1073291768
        .long   1373968792
        .long   1043402654
        .long   134217728
        .long   1073291769
        .long   2033191599
        .long   1044970710
        .long   3087007744
        .long   1073291769
        .long   4117947437
        .long   1044731035
        .long   805306368
        .long   1073291770
        .long   315378368
        .long   3188950787
        .long   2281701376
        .long   1073291770
        .long   2428571750
        .long   3189838838
        .long   3221225472
        .long   1073291770
        .long   1608007466
        .long   1044361352
        .long   4026531840
        .long   1073291770
        .long   1895711420
        .long   3191935434
        .long   134217728
        .long   1073291771
        .long   2031108713
        .long   1044970710
        .long   536870912
        .long   1073291771
        .long   1362518342
        .long   1043402654
        .long   805306368
        .long   1073291771
        .long   317461253
        .long   3188950787
        .long   939524096
        .long   1073291771
        .long   4117231784
        .long   1044731035
        .long   1073741824
        .long   1073291771
        .long   1607942376
        .long   1044361352
        .long   1207959552
        .long   1073291771
        .long   2428929577
        .long   3189838838
        .long   1207959552
        .long   1073291771
        .long   2031104645
        .long   1044970710
        .long   1342177280
        .long   1073291771
        .long   1895722602
        .long   3191935434
        .long   1342177280
        .long   1073291771
        .long   317465322
        .long   3188950787
        .long   1342177280
        .long   1073291771
        .long   1362515546
        .long   1043402654
        .long   1342177280
        .long   1073291771
        .long   1607942248
        .long   1044361352
        .long   1342177280
        .long   1073291771
        .long   4117231610
        .long   1044731035
        .long   1342177280
        .long   1073291771
        .long   2031104637
        .long   1044970710
        .long   1342177280
        .long   1073291771
        .long   1540251232
        .long   1045150466
        .long   1342177280
        .long   1073291771
        .long   2644671394
        .long   1045270303
        .long   1342177280
        .long   1073291771
        .long   2399244691
        .long   1045360181
        .long   1342177280
        .long   1073291771
        .long   803971124
        .long   1045420100
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192879152
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192849193
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192826724
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192811744
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192800509
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192793019
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192787402
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192783657
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192780848
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192778976
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192777572
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192776635
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192775933
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192775465
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192775114
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774880
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774704
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774587
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774500
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774441
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774397
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774368
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774346
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774331
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774320
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774313
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774308
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774304
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774301
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774299
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774298
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774297
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1466225875
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1343512524
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1251477510
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1190120835
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1144103328
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1113424990
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1090416237
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1075077068
        .long   3192774295
        .long   1431655765
        .long   3218429269
        .long   2576978363
        .long   1070176665
        .long   2453154343
        .long   3217180964
        .long   4189149139
        .long   1069314502
        .long   1775019125
        .long   3216459198
        .long   273199057
        .long   1068739452
        .long   874748308
        .long   3215993277
        .long   0
        .long   1069547520
        .long   0
        .long   1072693248
        .long   0
        .long   1073741824
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   1413754136
        .long   1074340347
        .long   856972295
        .long   1017226790
        .long   2134057426
        .long   1073928572
        .long   1285458442
        .long   1016756537
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   2144337920
        .long   0
        .long   1048576
        .long   33554432
        .long   1101004800
_2il0floatpacket_51:
        .long   0xffffffff, 0xffffffff
        .data
#endif
