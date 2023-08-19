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
        .globl __jsvml_hypotf8_ha_l9

__jsvml_hypotf8_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 616
        vmovups   YMMWORD PTR [496+rsp], ymm15
        vmovups   YMMWORD PTR [528+rsp], ymm14
        vmovups   YMMWORD PTR [560+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm8
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        and       r13, -64
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal]
        vmovups   ymm8, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        vmovaps   ymm14, ymm1
        vandps    ymm3, ymm0, ymm2
        vandps    ymm4, ymm14, ymm2
        vmaxps    ymm1, ymm3, ymm4
        vminps    ymm2, ymm4, ymm3
        vpsubd    ymm15, ymm1, ymm2
        vandps    ymm3, ymm1, ymm5
        vsubps    ymm4, ymm1, ymm3
        vaddps    ymm1, ymm1, ymm3
        vpcmpgtd  ymm13, ymm15, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+320]
        vandnps   ymm5, ymm13, ymm5
        vmulps    ymm4, ymm4, ymm1
        vmulps    ymm13, ymm3, ymm3
        vandps    ymm15, ymm2, ymm5
        vsubps    ymm5, ymm2, ymm15
        vfmadd231ps ymm13, ymm15, ymm15
        vfmadd231ps ymm4, ymm2, ymm5
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+384]
        vfmadd213ps ymm5, ymm15, ymm4
        vaddps    ymm15, ymm13, ymm5
        vpcmpgtd  ymm1, ymm15, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+448]
        vpcmpgtd  ymm3, ymm2, ymm15
        vpor      ymm2, ymm3, ymm1
        vrsqrtps  ymm3, ymm15
        vmulps    ymm15, ymm3, ymm15
        vmulps    ymm3, ymm3, ymm8
        vfnmadd231ps ymm8, ymm3, ymm15
        vfmadd213ps ymm15, ymm8, ymm15
        vfmadd132ps ymm3, ymm3, ymm8
        vandps    ymm1, ymm15, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+64]
        vfmsub231ps ymm13, ymm1, ymm1
        vsubps    ymm8, ymm15, ymm1
        vfmadd213ps ymm1, ymm8, ymm13
        vfmadd231ps ymm1, ymm8, ymm15
        vmovmskps edx, ymm2
        vsubps    ymm2, ymm1, ymm5
        mov       QWORD PTR [600+rsp], r13
        vfnmadd213ps ymm3, ymm2, ymm15
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [560+rsp]
        vmovups   ymm14, YMMWORD PTR [528+rsp]
        vmovups   ymm15, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [592+rsp]
        vmovdqa   ymm0, ymm3
        add       rsp, 616
        ret

.L_B1_3:

        vmovups   YMMWORD PTR [r13], ymm0
        vmovups   YMMWORD PTR [64+r13], ymm14
        vmovups   YMMWORD PTR [128+r13], ymm3

.L_B1_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm6
        vmovups   YMMWORD PTR [160+rsp], ymm7
        vmovups   YMMWORD PTR [128+rsp], ymm9
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm11
        vmovups   YMMWORD PTR [32+rsp], ymm12
        mov       QWORD PTR [232+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [224+rsp], rsi
        mov       esi, edx

.L_B1_7:

        bt        esi, ebx
        jc        .L_B1_10

.L_B1_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B1_7

.L_B1_9:

        vmovups   ymm6, YMMWORD PTR [192+rsp]
        vmovups   ymm7, YMMWORD PTR [160+rsp]
        vmovups   ymm9, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm11, YMMWORD PTR [64+rsp]
        vmovups   ymm12, YMMWORD PTR [32+rsp]
        vmovups   ymm3, YMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [232+rsp]
        mov       rsi, QWORD PTR [224+rsp]
        jmp       .L_B1_2

.L_B1_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf8_ha_l9_B1_B3:
        .long   800513
        .long   4903991
        .long   1935407
        .long   2349094
        .long   2222109
        .long   2095124
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_hypotf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf8_ha_l9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   182319
        .long   309289
        .long   436259
        .long   563229
        .long   686100
        .long   813067
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_hypotf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_hypotf8_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_hypotf4_ha_l9

__jsvml_hypotf4_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L28:

        sub       rsp, 344
        vmovups   XMMWORD PTR [272+rsp], xmm15
        vmovups   XMMWORD PTR [288+rsp], xmm14
        vmovaps   xmm14, xmm1
        vmovups   XMMWORD PTR [304+rsp], xmm13
        vmovups   XMMWORD PTR [256+rsp], xmm8
        mov       QWORD PTR [320+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        and       r13, -64
        vandps    xmm3, xmm0, xmm2
        vandps    xmm4, xmm14, xmm2
        vmaxps    xmm1, xmm3, xmm4
        vminps    xmm2, xmm4, xmm3
        vmovups   xmm8, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal]
        vpsubd    xmm15, xmm1, xmm2
        vandps    xmm3, xmm1, xmm8
        vpcmpgtd  xmm13, xmm15, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+320]
        vsubps    xmm4, xmm1, xmm3
        vaddps    xmm1, xmm1, xmm3
        vandnps   xmm15, xmm13, xmm8
        vandps    xmm15, xmm2, xmm15
        vmulps    xmm4, xmm4, xmm1
        vsubps    xmm13, xmm2, xmm15
        vmulps    xmm8, xmm3, xmm3
        vfmadd231ps xmm4, xmm2, xmm13
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+384]
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        vfmadd231ps xmm8, xmm15, xmm15
        vfmadd213ps xmm13, xmm15, xmm4
        mov       QWORD PTR [328+rsp], r13
        vaddps    xmm15, xmm8, xmm13
        vpcmpgtd  xmm1, xmm15, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+448]
        vpcmpgtd  xmm3, xmm2, xmm15
        vpor      xmm2, xmm3, xmm1
        vrsqrtps  xmm3, xmm15
        vmovmskps edx, xmm2
        vmulps    xmm15, xmm3, xmm15
        vmulps    xmm3, xmm3, xmm5
        vfnmadd231ps xmm5, xmm3, xmm15
        vfmadd213ps xmm15, xmm5, xmm15
        vfmadd132ps xmm3, xmm3, xmm5
        vandps    xmm1, xmm15, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+64]
        vfmsub231ps xmm8, xmm1, xmm1
        vsubps    xmm5, xmm15, xmm1
        vfmadd213ps xmm1, xmm5, xmm8
        vfmadd231ps xmm1, xmm5, xmm15
        vsubps    xmm2, xmm1, xmm13
        vfnmadd213ps xmm3, xmm2, xmm15
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   xmm8, XMMWORD PTR [256+rsp]
        vmovaps   xmm0, xmm3
        vmovups   xmm13, XMMWORD PTR [304+rsp]
        vmovups   xmm14, XMMWORD PTR [288+rsp]
        vmovups   xmm15, XMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [320+rsp]
        add       rsp, 344
        ret

.L_B2_3:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm14
        vmovups   XMMWORD PTR [128+r13], xmm3

.L_B2_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B2_7:

        bt        esi, ebx
        jc        .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm3, XMMWORD PTR [128+r13]
        jmp       .L_B2_2

.L_B2_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_l9_B1_B3:
        .long   801537
        .long   2675771
        .long   1083443
        .long   1300522
        .long   1239069
        .long   1177620
        .long   2818315

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_hypotf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_hypotf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_hypotf4_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_hypotf8_ha_e9

__jsvml_hypotf8_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L43:

        sub       rsp, 616
        vmovups   YMMWORD PTR [432+rsp], ymm15
        vmovups   YMMWORD PTR [496+rsp], ymm14
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [560+rsp], ymm8
        vmovups   YMMWORD PTR [528+rsp], ymm7
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        and       r13, -64
        vmovups   ymm15, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal]
        vmovups   ymm7, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        vmovaps   ymm9, ymm1
        vandps    ymm14, ymm0, ymm2
        vandps    ymm11, ymm9, ymm2
        vmaxps    ymm4, ymm14, ymm11
        vminps    ymm1, ymm11, ymm14
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+320]
        vandps    ymm2, ymm4, ymm15
        vsubps    ymm3, ymm4, ymm2
        mov       QWORD PTR [600+rsp], r13
        vpsubd    xmm8, xmm4, xmm1
        vextractf128 xmm14, ymm4, 1
        vpcmpgtd  xmm8, xmm8, xmm11
        vextractf128 xmm5, ymm1, 1
        vpsubd    xmm5, xmm14, xmm5
        vpcmpgtd  xmm11, xmm5, xmm11
        vinsertf128 ymm14, ymm8, xmm11, 1
        vandnps   ymm15, ymm14, ymm15
        vandps    ymm11, ymm1, ymm15
        vsubps    ymm5, ymm1, ymm11
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+448]
        vmulps    ymm14, ymm2, ymm2
        vmulps    ymm8, ymm11, ymm11
        vmulps    ymm11, ymm11, ymm5
        vaddps    ymm2, ymm4, ymm2
        vaddps    ymm8, ymm14, ymm8
        vmulps    ymm4, ymm1, ymm5
        vmulps    ymm3, ymm3, ymm2
        vaddps    ymm14, ymm3, ymm4
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+384]
        vaddps    ymm5, ymm14, ymm11
        vaddps    ymm14, ymm8, ymm5
        vpcmpgtd  xmm2, xmm3, xmm14
        vpcmpgtd  xmm4, xmm14, xmm15
        vpor      xmm11, xmm2, xmm4
        vrsqrtps  ymm2, ymm14
        vextractf128 xmm1, ymm14, 1
        vpcmpgtd  xmm3, xmm3, xmm1
        vpcmpgtd  xmm15, xmm1, xmm15
        vpor      xmm1, xmm3, xmm15
        vpackssdw xmm11, xmm11, xmm1
        vpxor     xmm15, xmm15, xmm15
        vpacksswb xmm1, xmm11, xmm15
        vmulps    ymm15, ymm2, ymm14
        vmulps    ymm3, ymm2, ymm7
        vpmovmskb edx, xmm1
        vmulps    ymm14, ymm15, ymm3
        vsubps    ymm11, ymm7, ymm14
        vmulps    ymm1, ymm15, ymm11
        vmulps    ymm7, ymm3, ymm11
        vaddps    ymm11, ymm15, ymm1
        vaddps    ymm14, ymm3, ymm7
        vandps    ymm3, ymm11, YMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+64]
        vsubps    ymm7, ymm11, ymm3
        vmulps    ymm2, ymm3, ymm3
        vmulps    ymm4, ymm3, ymm7
        vmulps    ymm1, ymm11, ymm7
        vsubps    ymm8, ymm2, ymm8
        vaddps    ymm15, ymm8, ymm4
        vaddps    ymm2, ymm15, ymm1
        vsubps    ymm5, ymm2, ymm5
        vmulps    ymm14, ymm14, ymm5
        vsubps    ymm1, ymm11, ymm14
        test      dl, dl
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm7, YMMWORD PTR [528+rsp]
        vmovups   ymm8, YMMWORD PTR [560+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        vmovups   ymm14, YMMWORD PTR [496+rsp]
        vmovups   ymm15, YMMWORD PTR [432+rsp]
        mov       r13, QWORD PTR [592+rsp]
        vmovaps   ymm0, ymm1
        add       rsp, 616
        ret

.L_B3_3:

        vmovups   YMMWORD PTR [r13], ymm0
        vmovups   YMMWORD PTR [64+r13], ymm9
        vmovups   YMMWORD PTR [128+r13], ymm1
        test      edx, edx
        je        .L_B3_2

.L_B3_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm6
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm12
        vmovups   YMMWORD PTR [32+rsp], ymm13
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, edx

.L_B3_7:

        bt        esi, ebx
        jc        .L_B3_10

.L_B3_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B3_7

.L_B3_9:

        vmovups   ymm6, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm12, YMMWORD PTR [64+rsp]
        vmovups   ymm13, YMMWORD PTR [32+rsp]
        vmovups   ymm1, YMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf8_ha_e9_B1_B3:
        .long   1067265
        .long   4904009
        .long   2193473
        .long   2328632
        .long   1677359
        .long   1947686
        .long   2091037
        .long   1832980
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_hypotf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf8_ha_e9_B6_B10:
        .long   798497
        .long   1336367
        .long   1389605
        .long   186397
        .long   313367
        .long   436241
        .long   550923
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_hypotf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_hypotf8_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_hypotf4_ha_ex

__jsvml_hypotf4_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L70:

        sub       rsp, 360
        movups    XMMWORD PTR [288+rsp], xmm14
        movups    XMMWORD PTR [320+rsp], xmm11
        movaps    xmm11, xmm0
        movups    XMMWORD PTR [256+rsp], xmm10
        movups    XMMWORD PTR [272+rsp], xmm8
        movups    XMMWORD PTR [304+rsp], xmm7
        mov       QWORD PTR [336+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm5, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        and       r13, -64
        andps     xmm0, xmm5
        andps     xmm5, xmm1
        movaps    xmm7, xmm0
        maxps     xmm7, xmm5
        minps     xmm5, xmm0
        movaps    xmm3, xmm7
        movaps    xmm4, xmm7
        psubd     xmm3, xmm5
        movaps    xmm10, xmm7
        movups    xmm2, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal]
        pcmpgtd   xmm3, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+320]
        andps     xmm4, xmm2
        andnps    xmm3, xmm2
        movaps    xmm2, xmm5
        andps     xmm3, xmm5
        movaps    xmm8, xmm4
        movaps    xmm0, xmm3
        subps     xmm10, xmm4
        mulps     xmm8, xmm4
        subps     xmm2, xmm3
        addps     xmm7, xmm4
        mulps     xmm0, xmm3
        mulps     xmm5, xmm2
        mulps     xmm10, xmm7
        addps     xmm8, xmm0
        mulps     xmm3, xmm2
        addps     xmm10, xmm5
        movaps    xmm0, xmm8
        addps     xmm10, xmm3
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+384]
        addps     xmm0, xmm10
        rsqrtps   xmm2, xmm0
        movups    xmm14, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        pcmpgtd   xmm4, xmm0
        movaps    xmm3, xmm0
        mulps     xmm0, xmm2
        mulps     xmm2, xmm14
        movaps    xmm5, xmm0
        mulps     xmm5, xmm2
        pcmpgtd   xmm3, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+448]
        subps     xmm14, xmm5
        por       xmm4, xmm3
        movaps    xmm3, xmm14
        mulps     xmm14, xmm0
        mulps     xmm3, xmm2
        movmskps  eax, xmm4
        addps     xmm0, xmm14
        addps     xmm2, xmm3
        movups    xmm4, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+64]
        movaps    xmm7, xmm0
        andps     xmm4, xmm0
        movaps    xmm14, xmm4
        subps     xmm7, xmm4
        mulps     xmm14, xmm4
        mulps     xmm4, xmm7
        subps     xmm14, xmm8
        mulps     xmm7, xmm0
        addps     xmm14, xmm4
        mov       QWORD PTR [344+rsp], r13
        addps     xmm14, xmm7
        subps     xmm14, xmm10
        mulps     xmm2, xmm14
        subps     xmm0, xmm2
        test      eax, eax
        jne       .L_B4_3

.L_B4_2:

        movups    xmm7, XMMWORD PTR [304+rsp]
        movups    xmm8, XMMWORD PTR [272+rsp]
        movups    xmm10, XMMWORD PTR [256+rsp]
        movups    xmm11, XMMWORD PTR [320+rsp]
        movups    xmm14, XMMWORD PTR [288+rsp]
        mov       r13, QWORD PTR [336+rsp]
        add       rsp, 360
        ret

.L_B4_3:

        movups    XMMWORD PTR [r13], xmm11
        movups    XMMWORD PTR [64+r13], xmm1
        movups    XMMWORD PTR [128+r13], xmm0

.L_B4_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B4_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B4_10

.L_B4_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_ex_B1_B3:
        .long   934657
        .long   2806851
        .long   1275963
        .long   1148979
        .long   1091626
        .long   1357853
        .long   1239060
        .long   2949387

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_hypotf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_hypotf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_hypotf4_ha_ex_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_hypotf16_ha_z0

__jsvml_hypotf16_ha_z0:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L87:

        sub       rsp, 1400
        vmovaps   zmm2, zmm1
        vmulps    zmm23, zmm0, zmm0 {rn-sae}
        vmulps    zmm24, zmm2, zmm2 {rn-sae}
        vgetexpps zmm3, zmm0 {sae}
        vgetexpps zmm4, zmm2 {sae}
        vaddps    zmm1, zmm23, zmm24 {rn-sae}
        vmaxps    zmm25, zmm23, zmm24 {sae}
        vmaxps    zmm5, zmm3, zmm4 {sae}
        vrsqrt14ps zmm4, zmm1
        vminps    zmm26, zmm23, zmm24 {sae}
        vsubps    zmm27, zmm1, zmm25 {rn-sae}
        vmovaps   zmm28, zmm0
        vfmsub213ps zmm28, zmm0, zmm23 {rn-sae}
        vmulps    zmm23, zmm1, zmm4 {rn-sae}
        vsubps    zmm30, zmm26, zmm27 {rn-sae}
        vfnmadd231ps zmm1, zmm23, zmm23 {rn-sae}
        mov       QWORD PTR [1384+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        and       r13, -64
        vandps    zmm22, zmm5, ZMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        vmovaps   zmm29, zmm2
        vfmsub213ps zmm29, zmm2, zmm24 {rn-sae}
        vpcmpd    k0, zmm22, ZMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+512], 5
        vmulps    zmm22, zmm3, zmm4 {rn-sae}
        vaddps    zmm31, zmm28, zmm29 {rn-sae}
        kmovw     r8d, k0
        vaddps    zmm5, zmm30, zmm31 {rn-sae}
        vaddps    zmm1, zmm1, zmm5 {rn-sae}
        mov       QWORD PTR [1392+rsp], r13
        vfmadd213ps zmm1, zmm22, zmm23 {rn-sae}
        test      r8d, r8d
        jne       .L_B5_3

.L_B5_2:

        vmovaps   zmm0, zmm1
        mov       r13, QWORD PTR [1384+rsp]
        add       rsp, 1400
        ret

.L_B5_3:

        vstmxcsr  DWORD PTR [1376+rsp]

.L_B5_4:

        movzx     edx, WORD PTR [1376+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B5_6

.L_B5_5:

        mov       DWORD PTR [1376+rsp], eax
        vldmxcsr  DWORD PTR [1376+rsp]

.L_B5_6:

        vmovups   ZMMWORD PTR [r13], zmm0
        vmovups   ZMMWORD PTR [64+r13], zmm2
        vmovups   ZMMWORD PTR [128+r13], zmm1
        test      r8d, r8d
        jne       .L_B5_11

.L_B5_7:

        cmp       edx, eax
        je        .L_B5_2

.L_B5_8:

        vstmxcsr  DWORD PTR [1376+rsp]
        mov       eax, DWORD PTR [1376+rsp]

.L_B5_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1376+rsp], eax
        vldmxcsr  DWORD PTR [1376+rsp]
        jmp       .L_B5_2

.L_B5_11:

        xor       ecx, ecx
        kmovw     WORD PTR [1080+rsp], k4
        kmovw     WORD PTR [1072+rsp], k5
        kmovw     WORD PTR [1064+rsp], k6
        kmovw     WORD PTR [1056+rsp], k7
        vmovups   ZMMWORD PTR [992+rsp], zmm6
        vmovups   ZMMWORD PTR [928+rsp], zmm7
        vmovups   ZMMWORD PTR [864+rsp], zmm8
        vmovups   ZMMWORD PTR [800+rsp], zmm9
        vmovups   ZMMWORD PTR [736+rsp], zmm10
        vmovups   ZMMWORD PTR [672+rsp], zmm11
        vmovups   ZMMWORD PTR [608+rsp], zmm12
        vmovups   ZMMWORD PTR [544+rsp], zmm13
        vmovups   ZMMWORD PTR [480+rsp], zmm14
        vmovups   ZMMWORD PTR [416+rsp], zmm15
        vmovups   ZMMWORD PTR [352+rsp], zmm16
        vmovups   ZMMWORD PTR [288+rsp], zmm17
        vmovups   ZMMWORD PTR [224+rsp], zmm18
        vmovups   ZMMWORD PTR [160+rsp], zmm19
        vmovups   ZMMWORD PTR [96+rsp], zmm20
        vmovups   ZMMWORD PTR [32+rsp], zmm21
        mov       QWORD PTR [1104+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [1096+rsp], rsi
        mov       esi, edx
        mov       QWORD PTR [1088+rsp], rdi
        mov       edi, r8d
        mov       QWORD PTR [1112+rsp], rbp
        mov       ebp, eax

.L_B5_12:

        bt        edi, ebx
        jc        .L_B5_15

.L_B5_13:

        inc       ebx
        cmp       ebx, 16
        jl        .L_B5_12

.L_B5_14:

        kmovw     k4, WORD PTR [1080+rsp]
        mov       eax, ebp
        kmovw     k5, WORD PTR [1072+rsp]
        kmovw     k6, WORD PTR [1064+rsp]
        kmovw     k7, WORD PTR [1056+rsp]
        vmovups   zmm6, ZMMWORD PTR [992+rsp]
        vmovups   zmm7, ZMMWORD PTR [928+rsp]
        vmovups   zmm8, ZMMWORD PTR [864+rsp]
        vmovups   zmm9, ZMMWORD PTR [800+rsp]
        vmovups   zmm10, ZMMWORD PTR [736+rsp]
        vmovups   zmm11, ZMMWORD PTR [672+rsp]
        vmovups   zmm12, ZMMWORD PTR [608+rsp]
        vmovups   zmm13, ZMMWORD PTR [544+rsp]
        vmovups   zmm14, ZMMWORD PTR [480+rsp]
        vmovups   zmm15, ZMMWORD PTR [416+rsp]
        vmovups   zmm16, ZMMWORD PTR [352+rsp]
        vmovups   zmm17, ZMMWORD PTR [288+rsp]
        vmovups   zmm18, ZMMWORD PTR [224+rsp]
        vmovups   zmm19, ZMMWORD PTR [160+rsp]
        vmovups   zmm20, ZMMWORD PTR [96+rsp]
        vmovups   zmm21, ZMMWORD PTR [32+rsp]
        vmovups   zmm1, ZMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [1104+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [1096+rsp]
        mov       rdi, QWORD PTR [1088+rsp]
        mov       rbp, QWORD PTR [1112+rsp]
        jmp       .L_B5_7

.L_B5_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B5_13
        .align    16, 0x90

.L_B5_16:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf16_ha_z0_B1_B9:
        .long   291585
        .long   11392115
        .long   11469067

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_11
        .rva    _unwind___jsvml_hypotf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf16_ha_z0_B11_B15:
        .long   2948353
        .long   9131261
        .long   8942834
        .long   9004264
        .long   9057502
        .long   153814
        .long   411851
        .long   669888
        .long   927925
        .long   1185962
        .long   1443999
        .long   1767572
        .long   2025609
        .long   2283646
        .long   2541683
        .long   2799720
        .long   3057757
        .long   3315794
        .long   3573831
        .long   3831868
        .long   4089905
        .long   11392000
        .long   11469056

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_11
        .rva    .L_B5_16
        .rva    _unwind___jsvml_hypotf16_ha_z0_B11_B15

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_hypotf4_ha_e9

__jsvml_hypotf4_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L138:

        sub       rsp, 360
        vmovaps   xmm3, xmm1
        vmovups   XMMWORD PTR [320+rsp], xmm15
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [288+rsp], xmm10
        vmovups   XMMWORD PTR [304+rsp], xmm8
        vmovups   XMMWORD PTR [272+rsp], xmm6
        mov       QWORD PTR [336+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+128]
        and       r13, -64
        vandps    xmm6, xmm0, xmm2
        vandps    xmm4, xmm3, xmm2
        vmaxps    xmm8, xmm6, xmm4
        vminps    xmm4, xmm4, xmm6
        vpsubd    xmm2, xmm8, xmm4
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal]
        vpcmpgtd  xmm11, xmm2, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+320]
        vandps    xmm6, xmm8, xmm5
        vandnps   xmm5, xmm11, xmm5
        vsubps    xmm10, xmm8, xmm6
        vandps    xmm15, xmm4, xmm5
        vmulps    xmm5, xmm6, xmm6
        vsubps    xmm11, xmm4, xmm15
        vaddps    xmm6, xmm8, xmm6
        vmulps    xmm2, xmm15, xmm15
        vmulps    xmm4, xmm4, xmm11
        vmulps    xmm10, xmm10, xmm6
        vaddps    xmm2, xmm5, xmm2
        vmulps    xmm15, xmm15, xmm11
        vaddps    xmm8, xmm10, xmm4
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+384]
        vaddps    xmm10, xmm8, xmm15
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+192]
        vaddps    xmm11, xmm2, xmm10
        vrsqrtps  xmm15, xmm11
        vpcmpgtd  xmm5, xmm11, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+448]
        vpcmpgtd  xmm6, xmm4, xmm11
        vpor      xmm8, xmm6, xmm5
        vmovmskps edx, xmm8
        vmulps    xmm8, xmm15, xmm11
        vmulps    xmm6, xmm15, xmm1
        vmulps    xmm4, xmm8, xmm6
        mov       QWORD PTR [344+rsp], r13
        vsubps    xmm4, xmm1, xmm4
        vmulps    xmm5, xmm8, xmm4
        vmulps    xmm1, xmm6, xmm4
        vaddps    xmm4, xmm8, xmm5
        vaddps    xmm6, xmm6, xmm1
        vandps    xmm8, xmm4, XMMWORD PTR [rip+__jsvml_shypot_ha_data_internal+64]
        vmulps    xmm1, xmm8, xmm8
        vsubps    xmm5, xmm4, xmm8
        vmulps    xmm11, xmm8, xmm5
        vsubps    xmm2, xmm1, xmm2
        vmulps    xmm1, xmm4, xmm5
        vaddps    xmm15, xmm2, xmm11
        vaddps    xmm2, xmm15, xmm1
        vsubps    xmm10, xmm2, xmm10
        vmulps    xmm6, xmm6, xmm10
        vsubps    xmm1, xmm4, xmm6
        test      edx, edx
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [272+rsp]
        vmovaps   xmm0, xmm1
        vmovups   xmm8, XMMWORD PTR [304+rsp]
        vmovups   xmm10, XMMWORD PTR [288+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [320+rsp]
        mov       r13, QWORD PTR [336+rsp]
        add       rsp, 360
        ret

.L_B6_3:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm3
        vmovups   XMMWORD PTR [128+r13], xmm1

.L_B6_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm1, XMMWORD PTR [128+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_shypot_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_hypotf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_e9_B1_B3:
        .long   934913
        .long   2806852
        .long   1140796
        .long   1280051
        .long   1222698
        .long   1095713
        .long   1374232
        .long   2949387

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_hypotf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_hypotf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_hypotf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_hypotf4_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_shypot_ha_cout_rare_internal

__jsvml_shypot_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L155:

        push      rbx
        sub       rsp, 128
        mov       r9, r8
        movzx     eax, WORD PTR [2+rcx]
        lea       r8, QWORD PTR [rip+__ImageBase]
        and       eax, 32640
        movups    XMMWORD PTR [32+rsp], xmm15
        movups    XMMWORD PTR [48+rsp], xmm14
        cmp       eax, 32640
        je        .L_B7_14

.L_B7_2:

        movzx     eax, WORD PTR [2+rdx]
        and       eax, 32640
        cmp       eax, 32640
        je        .L_B7_13

.L_B7_3:

        pxor      xmm1, xmm1
        pxor      xmm0, xmm0
        cvtss2sd  xmm1, DWORD PTR [rcx]
        cvtss2sd  xmm0, DWORD PTR [rdx]
        movsd     xmm4, QWORD PTR [rip+_vmlsHypotHATab+4096]
        ucomisd   xmm1, xmm4
        jp        .L_B7_4
        je        .L_B7_11

.L_B7_4:

        movsd     QWORD PTR [120+rsp], xmm1
        movsd     QWORD PTR [88+rsp], xmm0
        and       BYTE PTR [127+rsp], 127
        and       BYTE PTR [95+rsp], 127
        movsd     xmm0, QWORD PTR [120+rsp]
        movsd     xmm3, QWORD PTR [88+rsp]
        comisd    xmm3, xmm0
        jbe       .L_B7_6

.L_B7_5:

        movaps    xmm1, xmm0
        movaps    xmm0, xmm3
        movsd     QWORD PTR [120+rsp], xmm3
        movaps    xmm3, xmm1

.L_B7_6:

        movzx     edx, WORD PTR [126+rsp]
        and       edx, 32752
        shr       edx, 4
        neg       edx
        movzx     r10d, WORD PTR [rip+_vmlsHypotHATab+4102]
        and       r10d, -32753
        movsd     QWORD PTR [80+rsp], xmm4
        movsd     xmm2, QWORD PTR [rip+_vmlsHypotHATab+4128]
        lea       ebx, DWORD PTR [1025+rdx]
        neg       ebx
        add       ebx, 1000
        shr       ebx, 31
        imul      eax, ebx, -23
        lea       ebx, DWORD PTR [1025+rax+rdx]
        lea       ecx, DWORD PTR [1023+rbx]
        and       ecx, 2047
        shl       ecx, 4
        or        r10d, ecx
        mov       WORD PTR [86+rsp], r10w
        movsd     xmm1, QWORD PTR [80+rsp]
        mulsd     xmm0, xmm1
        mulsd     xmm3, xmm1
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [64+rsp], xmm2
        movsd     xmm5, QWORD PTR [64+rsp]
        movsd     QWORD PTR [120+rsp], xmm0
        subsd     xmm5, xmm0
        movsd     QWORD PTR [72+rsp], xmm5
        movsd     xmm15, QWORD PTR [64+rsp]
        movsd     xmm14, QWORD PTR [72+rsp]
        movsd     QWORD PTR [88+rsp], xmm3
        subsd     xmm15, xmm14
        movsd     QWORD PTR [64+rsp], xmm15
        movsd     xmm1, QWORD PTR [64+rsp]
        movzx     eax, WORD PTR [126+rsp]
        subsd     xmm0, xmm1
        movzx     r11d, WORD PTR [94+rsp]
        and       eax, 32752
        and       r11d, 32752
        shr       eax, 4
        shr       r11d, 4
        movsd     QWORD PTR [72+rsp], xmm0
        sub       eax, r11d
        movsd     xmm2, QWORD PTR [64+rsp]
        movsd     xmm0, QWORD PTR [72+rsp]
        cmp       eax, 6
        jle       .L_B7_8

.L_B7_7:

        movaps    xmm14, xmm3
        jmp       .L_B7_9

.L_B7_8:

        movsd     xmm3, QWORD PTR [88+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmlsHypotHATab+4128]
        mulsd     xmm1, xmm3
        movsd     QWORD PTR [64+rsp], xmm1
        movaps    xmm1, xmm3
        movsd     xmm4, QWORD PTR [64+rsp]
        subsd     xmm4, QWORD PTR [88+rsp]
        movsd     QWORD PTR [72+rsp], xmm4
        movsd     xmm14, QWORD PTR [64+rsp]
        movsd     xmm5, QWORD PTR [72+rsp]
        subsd     xmm14, xmm5
        movsd     QWORD PTR [64+rsp], xmm14
        movsd     xmm15, QWORD PTR [64+rsp]
        subsd     xmm1, xmm15
        movsd     QWORD PTR [72+rsp], xmm1
        movsd     xmm4, QWORD PTR [64+rsp]
        movsd     xmm14, QWORD PTR [72+rsp]

.L_B7_9:

        movsd     xmm5, QWORD PTR [120+rsp]
        movaps    xmm1, xmm2
        mulsd     xmm3, xmm14
        addsd     xmm5, xmm2
        mulsd     xmm1, xmm2
        mulsd     xmm0, xmm5
        movaps    xmm15, xmm4
        neg       ebx
        mulsd     xmm15, xmm4
        addsd     xmm0, xmm3
        mulsd     xmm4, xmm14
        addsd     xmm1, xmm15
        addsd     xmm0, xmm4
        movaps    xmm14, xmm1
        add       ebx, 1023
        mov       rax, QWORD PTR [rip+_vmlsHypotHATab+4112]
        mov       r11, rax
        shr       r11, 48
        and       ebx, 2047
        shl       ebx, 4
        addsd     xmm14, xmm0
        movsd     QWORD PTR [80+rsp], xmm14
        and       r11d, -32753
        movzx     ecx, WORD PTR [86+rsp]
        and       ecx, 32752
        shr       ecx, 4
        add       ecx, -1023
        mov       edx, ecx
        and       edx, 1
        sub       ecx, edx
        shr       ecx, 1
        movsd     QWORD PTR [88+rsp], xmm14
        movzx     r10d, WORD PTR [94+rsp]
        and       r10d, -32753
        add       r10d, 16368
        mov       WORD PTR [94+rsp], r10w
        lea       r10d, DWORD PTR [1023+rcx]
        add       ecx, ecx
        and       r10d, 2047
        neg       ecx
        add       ecx, 1023
        and       ecx, 2047
        shl       r10d, 4
        shl       ecx, 4
        or        r10d, r11d
        movsd     xmm5, QWORD PTR [88+rsp]
        or        ecx, r11d
        or        r11d, ebx
        mov       ebx, DWORD PTR [92+rsp]
        mulsd     xmm5, QWORD PTR ["_vmlsHypotHATab"@imgrel+4112+r8+rdx*8]
        and       ebx, 1048575
        shr       ebx, 12
        shl       edx, 8
        add       ebx, edx
        movsd     xmm2, QWORD PTR ["_vmlsHypotHATab"@imgrel+r8+rbx*8]
        movsd     xmm14, QWORD PTR [rip+_vmlsHypotHATab+4104]
        mulsd     xmm5, xmm2
        mulsd     xmm14, xmm2
        movaps    xmm3, xmm5
        mulsd     xmm3, xmm14
        movsd     xmm2, QWORD PTR [rip+_vmlsHypotHATab+4104]
        mov       QWORD PTR [104+rsp], rax
        subsd     xmm2, xmm3
        movaps    xmm4, xmm2
        mulsd     xmm2, xmm5
        mulsd     xmm4, xmm14
        addsd     xmm5, xmm2
        addsd     xmm14, xmm4
        movaps    xmm3, xmm5
        movaps    xmm15, xmm14
        mulsd     xmm3, xmm14
        movsd     xmm2, QWORD PTR [rip+_vmlsHypotHATab+4104]
        mov       WORD PTR [110+rsp], cx
        subsd     xmm2, xmm3
        mulsd     xmm15, xmm2
        mulsd     xmm2, xmm5
        addsd     xmm14, xmm15
        addsd     xmm5, xmm2
        movaps    xmm3, xmm5
        movaps    xmm4, xmm14
        mulsd     xmm3, xmm14
        movsd     xmm2, QWORD PTR [rip+_vmlsHypotHATab+4104]
        mov       QWORD PTR [96+rsp], rax
        subsd     xmm2, xmm3
        mulsd     xmm4, xmm2
        mulsd     xmm2, xmm5
        addsd     xmm14, xmm4
        addsd     xmm5, xmm2
        movsd     xmm3, QWORD PTR [rip+_vmlsHypotHATab+4128]
        mulsd     xmm3, xmm5
        movsd     QWORD PTR [64+rsp], xmm3
        movsd     xmm15, QWORD PTR [64+rsp]
        mov       WORD PTR [102+rsp], r10w
        subsd     xmm15, xmm5
        movsd     QWORD PTR [72+rsp], xmm15
        movsd     xmm3, QWORD PTR [64+rsp]
        movsd     xmm2, QWORD PTR [72+rsp]
        mov       QWORD PTR [112+rsp], rax
        subsd     xmm3, xmm2
        movsd     QWORD PTR [64+rsp], xmm3
        movaps    xmm2, xmm5
        movsd     xmm4, QWORD PTR [64+rsp]
        mov       WORD PTR [118+rsp], r11w
        subsd     xmm2, xmm4
        movsd     QWORD PTR [72+rsp], xmm2
        movsd     xmm2, QWORD PTR [64+rsp]
        movsd     xmm4, QWORD PTR [104+rsp]
        movaps    xmm15, xmm2
        mulsd     xmm1, xmm4
        mulsd     xmm15, xmm2
        mulsd     xmm0, xmm4
        subsd     xmm1, xmm15
        movsd     xmm15, QWORD PTR [rip+_vmlsHypotHATab+4120]
        mulsd     xmm15, xmm2
        movsd     xmm3, QWORD PTR [72+rsp]
        mulsd     xmm15, xmm3
        mulsd     xmm3, xmm3
        subsd     xmm1, xmm15
        subsd     xmm1, xmm3
        addsd     xmm1, xmm0
        mulsd     xmm14, xmm1
        addsd     xmm5, xmm14
        mulsd     xmm5, QWORD PTR [96+rsp]
        mulsd     xmm5, QWORD PTR [112+rsp]
        cvtsd2ss  xmm5, xmm5
        movss     DWORD PTR [r9], xmm5

.L_B7_10:

        movups    xmm14, XMMWORD PTR [48+rsp]
        xor       eax, eax
        movups    xmm15, XMMWORD PTR [32+rsp]
        add       rsp, 128
        pop       rbx
        ret

.L_B7_11:

        ucomisd   xmm0, xmm4
        jne       .L_B7_4
        jp        .L_B7_4

.L_B7_12:

        cvtsd2ss  xmm4, xmm4
        movss     DWORD PTR [r9], xmm4
        jmp       .L_B7_10

.L_B7_13:

        movss     xmm0, DWORD PTR [rdx]
        mulss     xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_10

.L_B7_14:

        movzx     eax, WORD PTR [2+rdx]
        and       eax, 32640
        cmp       eax, 32640
        je        .L_B7_16

.L_B7_15:

        movss     xmm0, DWORD PTR [rcx]
        mulss     xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_10

.L_B7_16:

        test      DWORD PTR [rcx], 8388607
        je        .L_B7_15

.L_B7_17:

        test      DWORD PTR [rdx], 8388607
        je        .L_B7_13

.L_B7_18:

        movss     xmm0, DWORD PTR [rcx]
        mulss     xmm0, DWORD PTR [rdx]
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_10
        .align    16, 0x90

.L_B7_21:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_shypot_ha_cout_rare_internal_B1_B18:
        .long   404225
        .long   256043
        .long   194597
        .long   805696012

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_21
        .rva    _unwind___jsvml_shypot_ha_cout_rare_internal_B1_B18

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_shypot_ha_data_internal
__jsvml_shypot_ha_data_internal:
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
        .long   4294959104
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
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   1056964608
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   2139095040
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   33554432
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   506462208
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1621098496
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
        .long   1115422720
_vmlsHypotHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   1072689152
        .long   0
        .long   1072685056
        .long   0
        .long   1072680960
        .long   0
        .long   1072676864
        .long   0
        .long   1072672768
        .long   0
        .long   1072668672
        .long   0
        .long   1072665600
        .long   0
        .long   1072661504
        .long   0
        .long   1072657408
        .long   0
        .long   1072653312
        .long   0
        .long   1072649216
        .long   0
        .long   1072646144
        .long   0
        .long   1072642048
        .long   0
        .long   1072637952
        .long   0
        .long   1072634880
        .long   0
        .long   1072630784
        .long   0
        .long   1072626688
        .long   0
        .long   1072623616
        .long   0
        .long   1072619520
        .long   0
        .long   1072615424
        .long   0
        .long   1072612352
        .long   0
        .long   1072608256
        .long   0
        .long   1072605184
        .long   0
        .long   1072601088
        .long   0
        .long   1072598016
        .long   0
        .long   1072593920
        .long   0
        .long   1072590848
        .long   0
        .long   1072586752
        .long   0
        .long   1072583680
        .long   0
        .long   1072580608
        .long   0
        .long   1072576512
        .long   0
        .long   1072573440
        .long   0
        .long   1072570368
        .long   0
        .long   1072566272
        .long   0
        .long   1072563200
        .long   0
        .long   1072560128
        .long   0
        .long   1072556032
        .long   0
        .long   1072552960
        .long   0
        .long   1072549888
        .long   0
        .long   1072546816
        .long   0
        .long   1072542720
        .long   0
        .long   1072539648
        .long   0
        .long   1072536576
        .long   0
        .long   1072533504
        .long   0
        .long   1072530432
        .long   0
        .long   1072527360
        .long   0
        .long   1072523264
        .long   0
        .long   1072520192
        .long   0
        .long   1072517120
        .long   0
        .long   1072514048
        .long   0
        .long   1072510976
        .long   0
        .long   1072507904
        .long   0
        .long   1072504832
        .long   0
        .long   1072501760
        .long   0
        .long   1072498688
        .long   0
        .long   1072495616
        .long   0
        .long   1072492544
        .long   0
        .long   1072489472
        .long   0
        .long   1072486400
        .long   0
        .long   1072483328
        .long   0
        .long   1072480256
        .long   0
        .long   1072478208
        .long   0
        .long   1072475136
        .long   0
        .long   1072472064
        .long   0
        .long   1072468992
        .long   0
        .long   1072465920
        .long   0
        .long   1072462848
        .long   0
        .long   1072459776
        .long   0
        .long   1072457728
        .long   0
        .long   1072454656
        .long   0
        .long   1072451584
        .long   0
        .long   1072448512
        .long   0
        .long   1072446464
        .long   0
        .long   1072443392
        .long   0
        .long   1072440320
        .long   0
        .long   1072437248
        .long   0
        .long   1072435200
        .long   0
        .long   1072432128
        .long   0
        .long   1072429056
        .long   0
        .long   1072427008
        .long   0
        .long   1072423936
        .long   0
        .long   1072420864
        .long   0
        .long   1072418816
        .long   0
        .long   1072415744
        .long   0
        .long   1072412672
        .long   0
        .long   1072410624
        .long   0
        .long   1072407552
        .long   0
        .long   1072405504
        .long   0
        .long   1072402432
        .long   0
        .long   1072400384
        .long   0
        .long   1072397312
        .long   0
        .long   1072395264
        .long   0
        .long   1072392192
        .long   0
        .long   1072390144
        .long   0
        .long   1072387072
        .long   0
        .long   1072385024
        .long   0
        .long   1072381952
        .long   0
        .long   1072379904
        .long   0
        .long   1072376832
        .long   0
        .long   1072374784
        .long   0
        .long   1072371712
        .long   0
        .long   1072369664
        .long   0
        .long   1072366592
        .long   0
        .long   1072364544
        .long   0
        .long   1072362496
        .long   0
        .long   1072359424
        .long   0
        .long   1072357376
        .long   0
        .long   1072355328
        .long   0
        .long   1072352256
        .long   0
        .long   1072350208
        .long   0
        .long   1072347136
        .long   0
        .long   1072345088
        .long   0
        .long   1072343040
        .long   0
        .long   1072340992
        .long   0
        .long   1072337920
        .long   0
        .long   1072335872
        .long   0
        .long   1072333824
        .long   0
        .long   1072330752
        .long   0
        .long   1072328704
        .long   0
        .long   1072326656
        .long   0
        .long   1072324608
        .long   0
        .long   1072321536
        .long   0
        .long   1072319488
        .long   0
        .long   1072317440
        .long   0
        .long   1072315392
        .long   0
        .long   1072313344
        .long   0
        .long   1072310272
        .long   0
        .long   1072308224
        .long   0
        .long   1072306176
        .long   0
        .long   1072304128
        .long   0
        .long   1072302080
        .long   0
        .long   1072300032
        .long   0
        .long   1072296960
        .long   0
        .long   1072294912
        .long   0
        .long   1072292864
        .long   0
        .long   1072290816
        .long   0
        .long   1072288768
        .long   0
        .long   1072286720
        .long   0
        .long   1072284672
        .long   0
        .long   1072282624
        .long   0
        .long   1072280576
        .long   0
        .long   1072278528
        .long   0
        .long   1072275456
        .long   0
        .long   1072273408
        .long   0
        .long   1072271360
        .long   0
        .long   1072269312
        .long   0
        .long   1072267264
        .long   0
        .long   1072265216
        .long   0
        .long   1072263168
        .long   0
        .long   1072261120
        .long   0
        .long   1072259072
        .long   0
        .long   1072257024
        .long   0
        .long   1072254976
        .long   0
        .long   1072252928
        .long   0
        .long   1072250880
        .long   0
        .long   1072248832
        .long   0
        .long   1072246784
        .long   0
        .long   1072244736
        .long   0
        .long   1072243712
        .long   0
        .long   1072241664
        .long   0
        .long   1072239616
        .long   0
        .long   1072237568
        .long   0
        .long   1072235520
        .long   0
        .long   1072233472
        .long   0
        .long   1072231424
        .long   0
        .long   1072229376
        .long   0
        .long   1072227328
        .long   0
        .long   1072225280
        .long   0
        .long   1072223232
        .long   0
        .long   1072222208
        .long   0
        .long   1072220160
        .long   0
        .long   1072218112
        .long   0
        .long   1072216064
        .long   0
        .long   1072214016
        .long   0
        .long   1072211968
        .long   0
        .long   1072210944
        .long   0
        .long   1072208896
        .long   0
        .long   1072206848
        .long   0
        .long   1072204800
        .long   0
        .long   1072202752
        .long   0
        .long   1072201728
        .long   0
        .long   1072199680
        .long   0
        .long   1072197632
        .long   0
        .long   1072195584
        .long   0
        .long   1072193536
        .long   0
        .long   1072192512
        .long   0
        .long   1072190464
        .long   0
        .long   1072188416
        .long   0
        .long   1072186368
        .long   0
        .long   1072185344
        .long   0
        .long   1072183296
        .long   0
        .long   1072181248
        .long   0
        .long   1072179200
        .long   0
        .long   1072178176
        .long   0
        .long   1072176128
        .long   0
        .long   1072174080
        .long   0
        .long   1072173056
        .long   0
        .long   1072171008
        .long   0
        .long   1072168960
        .long   0
        .long   1072167936
        .long   0
        .long   1072165888
        .long   0
        .long   1072163840
        .long   0
        .long   1072161792
        .long   0
        .long   1072160768
        .long   0
        .long   1072158720
        .long   0
        .long   1072157696
        .long   0
        .long   1072155648
        .long   0
        .long   1072153600
        .long   0
        .long   1072152576
        .long   0
        .long   1072150528
        .long   0
        .long   1072148480
        .long   0
        .long   1072147456
        .long   0
        .long   1072145408
        .long   0
        .long   1072143360
        .long   0
        .long   1072142336
        .long   0
        .long   1072140288
        .long   0
        .long   1072139264
        .long   0
        .long   1072137216
        .long   0
        .long   1072135168
        .long   0
        .long   1072134144
        .long   0
        .long   1072132096
        .long   0
        .long   1072131072
        .long   0
        .long   1072129024
        .long   0
        .long   1072128000
        .long   0
        .long   1072125952
        .long   0
        .long   1072124928
        .long   0
        .long   1072122880
        .long   0
        .long   1072120832
        .long   0
        .long   1072119808
        .long   0
        .long   1072117760
        .long   0
        .long   1072116736
        .long   0
        .long   1072114688
        .long   0
        .long   1072113664
        .long   0
        .long   1072111616
        .long   0
        .long   1072110592
        .long   0
        .long   1072108544
        .long   0
        .long   1072107520
        .long   0
        .long   1072105472
        .long   0
        .long   1072104448
        .long   0
        .long   1072102400
        .long   0
        .long   1072101376
        .long   0
        .long   1072099328
        .long   0
        .long   1072098304
        .long   0
        .long   1072096256
        .long   0
        .long   1072095232
        .long   0
        .long   1072094208
        .long   0
        .long   1072092160
        .long   0
        .long   1072091136
        .long   0
        .long   1072089088
        .long   0
        .long   1072088064
        .long   0
        .long   1072086016
        .long   0
        .long   1072084992
        .long   0
        .long   1072082944
        .long   0
        .long   1072081920
        .long   0
        .long   1072080896
        .long   0
        .long   1072078848
        .long   0
        .long   1072075776
        .long   0
        .long   1072073728
        .long   0
        .long   1072070656
        .long   0
        .long   1072067584
        .long   0
        .long   1072064512
        .long   0
        .long   1072061440
        .long   0
        .long   1072059392
        .long   0
        .long   1072056320
        .long   0
        .long   1072053248
        .long   0
        .long   1072051200
        .long   0
        .long   1072048128
        .long   0
        .long   1072045056
        .long   0
        .long   1072043008
        .long   0
        .long   1072039936
        .long   0
        .long   1072037888
        .long   0
        .long   1072034816
        .long   0
        .long   1072031744
        .long   0
        .long   1072029696
        .long   0
        .long   1072026624
        .long   0
        .long   1072024576
        .long   0
        .long   1072021504
        .long   0
        .long   1072019456
        .long   0
        .long   1072016384
        .long   0
        .long   1072014336
        .long   0
        .long   1072011264
        .long   0
        .long   1072009216
        .long   0
        .long   1072006144
        .long   0
        .long   1072004096
        .long   0
        .long   1072002048
        .long   0
        .long   1071998976
        .long   0
        .long   1071996928
        .long   0
        .long   1071993856
        .long   0
        .long   1071991808
        .long   0
        .long   1071989760
        .long   0
        .long   1071986688
        .long   0
        .long   1071984640
        .long   0
        .long   1071982592
        .long   0
        .long   1071979520
        .long   0
        .long   1071977472
        .long   0
        .long   1071975424
        .long   0
        .long   1071972352
        .long   0
        .long   1071970304
        .long   0
        .long   1071968256
        .long   0
        .long   1071966208
        .long   0
        .long   1071964160
        .long   0
        .long   1071961088
        .long   0
        .long   1071959040
        .long   0
        .long   1071956992
        .long   0
        .long   1071954944
        .long   0
        .long   1071952896
        .long   0
        .long   1071949824
        .long   0
        .long   1071947776
        .long   0
        .long   1071945728
        .long   0
        .long   1071943680
        .long   0
        .long   1071941632
        .long   0
        .long   1071939584
        .long   0
        .long   1071937536
        .long   0
        .long   1071935488
        .long   0
        .long   1071933440
        .long   0
        .long   1071930368
        .long   0
        .long   1071928320
        .long   0
        .long   1071926272
        .long   0
        .long   1071924224
        .long   0
        .long   1071922176
        .long   0
        .long   1071920128
        .long   0
        .long   1071918080
        .long   0
        .long   1071916032
        .long   0
        .long   1071913984
        .long   0
        .long   1071911936
        .long   0
        .long   1071909888
        .long   0
        .long   1071907840
        .long   0
        .long   1071905792
        .long   0
        .long   1071903744
        .long   0
        .long   1071901696
        .long   0
        .long   1071900672
        .long   0
        .long   1071898624
        .long   0
        .long   1071896576
        .long   0
        .long   1071894528
        .long   0
        .long   1071892480
        .long   0
        .long   1071890432
        .long   0
        .long   1071888384
        .long   0
        .long   1071886336
        .long   0
        .long   1071884288
        .long   0
        .long   1071883264
        .long   0
        .long   1071881216
        .long   0
        .long   1071879168
        .long   0
        .long   1071877120
        .long   0
        .long   1071875072
        .long   0
        .long   1071873024
        .long   0
        .long   1071872000
        .long   0
        .long   1071869952
        .long   0
        .long   1071867904
        .long   0
        .long   1071865856
        .long   0
        .long   1071864832
        .long   0
        .long   1071862784
        .long   0
        .long   1071860736
        .long   0
        .long   1071858688
        .long   0
        .long   1071856640
        .long   0
        .long   1071855616
        .long   0
        .long   1071853568
        .long   0
        .long   1071851520
        .long   0
        .long   1071850496
        .long   0
        .long   1071848448
        .long   0
        .long   1071846400
        .long   0
        .long   1071844352
        .long   0
        .long   1071843328
        .long   0
        .long   1071841280
        .long   0
        .long   1071839232
        .long   0
        .long   1071838208
        .long   0
        .long   1071836160
        .long   0
        .long   1071834112
        .long   0
        .long   1071833088
        .long   0
        .long   1071831040
        .long   0
        .long   1071830016
        .long   0
        .long   1071827968
        .long   0
        .long   1071825920
        .long   0
        .long   1071824896
        .long   0
        .long   1071822848
        .long   0
        .long   1071821824
        .long   0
        .long   1071819776
        .long   0
        .long   1071817728
        .long   0
        .long   1071816704
        .long   0
        .long   1071814656
        .long   0
        .long   1071813632
        .long   0
        .long   1071811584
        .long   0
        .long   1071810560
        .long   0
        .long   1071808512
        .long   0
        .long   1071806464
        .long   0
        .long   1071805440
        .long   0
        .long   1071803392
        .long   0
        .long   1071802368
        .long   0
        .long   1071800320
        .long   0
        .long   1071799296
        .long   0
        .long   1071797248
        .long   0
        .long   1071796224
        .long   0
        .long   1071794176
        .long   0
        .long   1071793152
        .long   0
        .long   1071791104
        .long   0
        .long   1071790080
        .long   0
        .long   1071788032
        .long   0
        .long   1071787008
        .long   0
        .long   1071784960
        .long   0
        .long   1071783936
        .long   0
        .long   1071782912
        .long   0
        .long   1071780864
        .long   0
        .long   1071779840
        .long   0
        .long   1071777792
        .long   0
        .long   1071776768
        .long   0
        .long   1071774720
        .long   0
        .long   1071773696
        .long   0
        .long   1071772672
        .long   0
        .long   1071770624
        .long   0
        .long   1071769600
        .long   0
        .long   1071767552
        .long   0
        .long   1071766528
        .long   0
        .long   1071765504
        .long   0
        .long   1071763456
        .long   0
        .long   1071762432
        .long   0
        .long   1071760384
        .long   0
        .long   1071759360
        .long   0
        .long   1071758336
        .long   0
        .long   1071756288
        .long   0
        .long   1071755264
        .long   0
        .long   1071754240
        .long   0
        .long   1071752192
        .long   0
        .long   1071751168
        .long   0
        .long   1071750144
        .long   0
        .long   1071748096
        .long   0
        .long   1071747072
        .long   0
        .long   1071746048
        .long   0
        .long   1071744000
        .long   0
        .long   1071742976
        .long   0
        .long   1071741952
        .long   0
        .long   1071739904
        .long   0
        .long   1071738880
        .long   0
        .long   1071737856
        .long   0
        .long   1071736832
        .long   0
        .long   1071734784
        .long   0
        .long   1071733760
        .long   0
        .long   1071732736
        .long   0
        .long   1071730688
        .long   0
        .long   1071729664
        .long   0
        .long   1071728640
        .long   0
        .long   1071727616
        .long   0
        .long   1071725568
        .long   0
        .long   1071724544
        .long   0
        .long   1071723520
        .long   0
        .long   1071722496
        .long   0
        .long   1071720448
        .long   0
        .long   1071719424
        .long   0
        .long   1071718400
        .long   0
        .long   1071717376
        .long   0
        .long   1071715328
        .long   0
        .long   1071714304
        .long   0
        .long   1071713280
        .long   0
        .long   1071712256
        .long   0
        .long   1071711232
        .long   0
        .long   1071709184
        .long   0
        .long   1071708160
        .long   0
        .long   1071707136
        .long   0
        .long   1071706112
        .long   0
        .long   1071705088
        .long   0
        .long   1071704064
        .long   0
        .long   1071702016
        .long   0
        .long   1071700992
        .long   0
        .long   1071699968
        .long   0
        .long   1071698944
        .long   0
        .long   1071697920
        .long   0
        .long   1071696896
        .long   0
        .long   1071694848
        .long   0
        .long   1071693824
        .long   0
        .long   1071692800
        .long   0
        .long   1071691776
        .long   0
        .long   1071690752
        .long   0
        .long   1071689728
        .long   0
        .long   1071688704
        .long   0
        .long   1071686656
        .long   0
        .long   1071685632
        .long   0
        .long   1071684608
        .long   0
        .long   1071683584
        .long   0
        .long   1071682560
        .long   0
        .long   1071681536
        .long   0
        .long   1071680512
        .long   0
        .long   1071679488
        .long   0
        .long   1071677440
        .long   0
        .long   1071676416
        .long   0
        .long   1071675392
        .long   0
        .long   1071674368
        .long   0
        .long   1071673344
        .long   0
        .long   1071672320
        .long   0
        .long   1071671296
        .long   0
        .long   1071670272
        .long   0
        .long   1071669248
        .long   0
        .long   1071668224
        .long   0
        .long   1071667200
        .long   0
        .long   1071666176
        .long   0
        .long   1071665152
        .long   0
        .long   1071663104
        .long   0
        .long   1071662080
        .long   0
        .long   1071661056
        .long   0
        .long   1071660032
        .long   0
        .long   1071659008
        .long   0
        .long   1071657984
        .long   0
        .long   1071656960
        .long   0
        .long   1071655936
        .long   0
        .long   1071654912
        .long   0
        .long   1071653888
        .long   0
        .long   1071652864
        .long   0
        .long   1071651840
        .long   0
        .long   1071650816
        .long   0
        .long   1071649792
        .long   0
        .long   1071648768
        .long   0
        .long   1071647744
        .long   0
        .long   1071646720
        .long   0
        .long   1071645696
        .long   0
        .long   0
        .long   0
        .long   1071644672
        .long   0
        .long   1072693248
        .long   0
        .long   1073741824
        .long   33554432
        .long   1101004800
        .data
#endif
