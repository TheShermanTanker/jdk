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
        .globl __jsvml_expf4_ha_l9

__jsvml_expf4_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 232
        vmovaps   xmm5, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm14
        mov       QWORD PTR [208+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm14, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal]
        and       r13, -64
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+64]
        vfmadd213ps xmm14, xmm5, xmm4
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+256]
        vandps    xmm3, xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+128]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+384]
        vcmpnleps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+192]
        vsubps    xmm4, xmm14, xmm4
        vmovmskps edx, xmm1
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+448]
        vfnmadd213ps xmm2, xmm4, xmm5
        vfnmadd132ps xmm4, xmm2, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+320]
        vpermilps xmm3, xmm0, xmm14
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+512]
        vfmadd213ps xmm0, xmm4, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+576]
        vmulps    xmm2, xmm4, xmm4
        vfmadd213ps xmm0, xmm4, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+640]
        vfmadd213ps xmm0, xmm2, xmm3
        vpermilps xmm1, xmm1, xmm14
        vpslld    xmm14, xmm14, 21
        vandps    xmm14, xmm14, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+704]
        vaddps    xmm0, xmm4, xmm0
        vmulps    xmm2, xmm1, xmm14
        mov       QWORD PTR [216+rsp], r13
        vfmadd213ps xmm0, xmm2, xmm2
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm14, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
        ret

.L_B1_3:

        vcmpgtps  xmm1, xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2560]
        vcmpltps  xmm2, xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2624]
        vblendvps xmm0, xmm0, XMMWORD PTR [rip+_2il0floatpacket_37], xmm1
        vorps     xmm3, xmm1, xmm2
        vmovmskps eax, xmm3
        vandnps   xmm0, xmm2, xmm0
        andn      edx, eax, edx
        je        .L_B1_2

.L_B1_4:

        vmovups   XMMWORD PTR [r13], xmm5
        vmovups   XMMWORD PTR [64+r13], xmm0
        je        .L_B1_2

.L_B1_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B1_8:

        bt        esi, ebx
        jc        .L_B1_11

.L_B1_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B1_8

.L_B1_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_11:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexp_ha_cout_rare_internal
        jmp       .L_B1_9
        .align    16, 0x90

.L_B1_12:

        .section .drectve
        .ascii " -export \"__jsvml_expf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_l9_B1_B4:
        .long   401409
        .long   1758240
        .long   845848
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_expf4_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_l9_B7_B11:
        .long   658945
        .long   287758
        .long   340999
        .long   845824
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_7
        .rva    .L_B1_12
        .rva    _unwind___jsvml_expf4_ha_l9_B7_B11

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_expf4_ha_e9

__jsvml_expf4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L10:

        sub       rsp, 232
        vmovups   XMMWORD PTR [192+rsp], xmm9
        mov       QWORD PTR [208+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmulps    xmm3, xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal]
        and       r13, -64
        vroundps  xmm3, xmm3, 0
        vmulps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+256]
        vaddps    xmm9, xmm3, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+64]
        vmulps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+320]
        vsubps    xmm5, xmm0, xmm4
        vandps    xmm1, xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+128]
        vcmpnleps xmm2, xmm1, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+192]
        vsubps    xmm1, xmm5, xmm3
        vmovmskps eax, xmm2
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+448]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+384]
        vmulps    xmm5, xmm1, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+512]
        vpermilps xmm3, xmm4, xmm9
        vmulps    xmm4, xmm1, xmm1
        vaddps    xmm5, xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+576]
        vmulps    xmm5, xmm1, xmm5
        vpermilps xmm2, xmm2, xmm9
        vpslld    xmm9, xmm9, 21
        vandps    xmm9, xmm9, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+704]
        mov       QWORD PTR [216+rsp], r13
        vaddps    xmm5, xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+640]
        vmulps    xmm4, xmm4, xmm5
        vaddps    xmm2, xmm2, xmm4
        vaddps    xmm1, xmm1, xmm2
        vmulps    xmm1, xmm3, xmm1
        vaddps    xmm2, xmm3, xmm1
        vmulps    xmm1, xmm9, xmm2
        test      eax, eax
        jne       .L_B2_3

.L_B2_2:

        vmovups   xmm9, XMMWORD PTR [192+rsp]
        vmovaps   xmm0, xmm1
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
        ret

.L_B2_3:

        vcmpgtps  xmm2, xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2560]
        vcmpltps  xmm3, xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2624]
        vblendvps xmm1, xmm1, XMMWORD PTR [rip+_2il0floatpacket_37], xmm2
        vorps     xmm4, xmm2, xmm3
        vmovmskps edx, xmm4
        vandnps   xmm1, xmm3, xmm1
        not       edx
        and       edx, eax
        je        .L_B2_2

.L_B2_4:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm1
        je        .L_B2_2

.L_B2_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B2_8:

        bt        esi, ebx
        jc        .L_B2_11

.L_B2_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_8

.L_B2_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm1, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_11:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexp_ha_cout_rare_internal
        jmp       .L_B2_9
        .align    16, 0x90

.L_B2_12:

        .section .drectve
        .ascii " -export \"__jsvml_expf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_e9_B1_B4:
        .long   400385
        .long   1758236
        .long   825364
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_expf4_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_e9_B7_B11:
        .long   658945
        .long   287758
        .long   340999
        .long   825344
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_7
        .rva    .L_B2_12
        .rva    _unwind___jsvml_expf4_ha_e9_B7_B11

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_expf8_ha_l9

__jsvml_expf8_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L19:

        sub       rsp, 552
        vmovups   YMMWORD PTR [496+rsp], ymm14
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [399+rsp]
        vmovups   ymm14, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal]
        and       r13, -64
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+64]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+256]
        vmovdqa   ymm5, ymm0
        vfmadd213ps ymm14, ymm5, ymm4
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+448]
        vsubps    ymm4, ymm14, ymm4
        vandps    ymm1, ymm5, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+128]
        vcmpnle_uqps ymm3, ymm1, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+192]
        vfnmadd213ps ymm2, ymm4, ymm5
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+384]
        vfnmadd132ps ymm4, ymm2, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+320]
        vmovmskps edx, ymm3
        vpermilps ymm3, ymm1, ymm14
        test      edx, edx
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+512]
        vfmadd213ps ymm1, ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+576]
        vfmadd213ps ymm1, ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+640]
        vpermilps ymm2, ymm0, ymm14
        vmulps    ymm0, ymm4, ymm4
        vpslld    ymm14, ymm14, 21
        vfmadd213ps ymm1, ymm0, ymm3
        vandps    ymm14, ymm14, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+704]
        vmulps    ymm2, ymm2, ymm14
        vaddps    ymm0, ymm4, ymm1
        mov       QWORD PTR [536+rsp], r13
        vfmadd213ps ymm0, ymm2, ymm2
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm14, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vcmpgt_oqps ymm1, ymm5, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2560]
        vcmplt_oqps ymm2, ymm5, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2624]
        vblendvps ymm0, ymm0, YMMWORD PTR [rip+_2il0floatpacket_38], ymm1
        vorps     ymm3, ymm1, ymm2
        vmovmskps eax, ymm3
        vandnps   ymm0, ymm2, ymm0
        andn      edx, eax, edx
        je        .L_B3_2

.L_B3_4:

        vmovups   YMMWORD PTR [r13], ymm5
        vmovups   YMMWORD PTR [64+r13], ymm0
        je        .L_B3_2

.L_B3_7:

        xor       eax, eax
        vmovups   YMMWORD PTR [288+rsp], ymm6
        vmovups   YMMWORD PTR [256+rsp], ymm7
        vmovups   YMMWORD PTR [224+rsp], ymm8
        vmovups   YMMWORD PTR [192+rsp], ymm9
        vmovups   YMMWORD PTR [160+rsp], ymm10
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [328+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [320+rsp], rsi
        mov       esi, edx

.L_B3_8:

        bt        esi, ebx
        jc        .L_B3_11

.L_B3_9:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B3_8

.L_B3_10:

        vmovups   ymm6, YMMWORD PTR [288+rsp]
        vmovups   ymm7, YMMWORD PTR [256+rsp]
        vmovups   ymm8, YMMWORD PTR [224+rsp]
        vmovups   ymm9, YMMWORD PTR [192+rsp]
        vmovups   ymm10, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [328+rsp]
        mov       rsi, QWORD PTR [320+rsp]
        jmp       .L_B3_2

.L_B3_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexp_ha_cout_rare_internal
        jmp       .L_B3_9
        .align    16, 0x90

.L_B3_12:

        .section .drectve
        .ascii " -export \"__jsvml_expf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf8_ha_l9_B1_B4:
        .long   400385
        .long   4379676
        .long   2091028
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_expf8_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf8_ha_l9_B7_B11:
        .long   1858561
        .long   2647132
        .long   2700370
        .long   194634
        .long   317508
        .long   444478
        .long   571448
        .long   698415
        .long   825382
        .long   952349
        .long   1079316
        .long   1206283
        .long   2091008
        .long   4379648
        .long   4522240

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_7
        .rva    .L_B3_12
        .rva    _unwind___jsvml_expf8_ha_l9_B7_B11

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_expf16_ha_z0

__jsvml_expf16_ha_z0:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L46:

        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+256]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+320]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+384]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+448]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+576]
        vfmadd213ps zmm4, zmm0, zmm1 {rz-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+640]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+128]
        vsubps    zmm29, zmm4, zmm1 {rn-sae}
        vpermt2ps zmm22, zmm4, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+64]
        vpermt2ps zmm26, zmm4, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+192]
        vfnmadd231ps zmm0, zmm2, zmm29 {rn-sae}
        vfnmadd231ps zmm0, zmm3, zmm29 {rn-sae}
        vandps    zmm23, zmm0, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+512]
        vmulps    zmm27, zmm23, zmm23 {rn-sae}
        vfmadd231ps zmm24, zmm5, zmm23 {rn-sae}
        vaddps    zmm25, zmm22, zmm23 {rn-sae}
        vfmadd213ps zmm27, zmm24, zmm25 {rn-sae}
        vfmadd213ps zmm27, zmm26, zmm26 {rn-sae}
        vandps    zmm28, zmm27, ZMMWORD PTR [rip+__jsvml_sexp_ha_data_internal_avx512+704]
        vscalefps zmm0, zmm28, zmm29 {rn-sae}
        ret
        .align    16, 0x90

.L_B4_2:

        .section .drectve
        .ascii " -export \"__jsvml_expf16_ha_z0\""

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_expf8_ha_e9

__jsvml_expf8_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L47:

        sub       rsp, 552
        vmovups   YMMWORD PTR [496+rsp], ymm10
        vmovups   YMMWORD PTR [464+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [367+rsp]
        vmovaps   ymm6, ymm0
        and       r13, -64
        vmulps    ymm3, ymm6, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal]
        vandps    ymm2, ymm6, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+128]
        vcmpnle_uqps ymm5, ymm2, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+192]
        vroundps  ymm4, ymm3, 0
        vpxor     xmm3, xmm3, xmm3
        vaddps    ymm0, ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+64]
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm1, ymm5, 1
        vpackssdw xmm10, xmm5, xmm1
        vmulps    ymm5, ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+256]
        vmulps    ymm4, ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+320]
        vpacksswb xmm2, xmm10, xmm3
        vmovups   ymm10, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+384]
        vsubps    ymm1, ymm6, ymm5
        vpmovmskb edx, xmm2
        vsubps    ymm3, ymm1, ymm4
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+448]
        vmulps    ymm5, ymm3, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+512]
        vaddps    ymm1, ymm5, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+576]
        vmulps    ymm5, ymm3, ymm3
        vpermilps ymm2, ymm10, ymm0
        vmulps    ymm10, ymm3, ymm1
        vaddps    ymm1, ymm10, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+640]
        vmulps    ymm1, ymm5, ymm1
        vaddps    ymm2, ymm2, ymm1
        vaddps    ymm3, ymm3, ymm2
        vpermilps ymm4, ymm4, ymm0
        vmulps    ymm5, ymm4, ymm3
        vaddps    ymm4, ymm4, ymm5
        vpslld    xmm10, xmm0, 21
        vextractf128 xmm0, ymm0, 1
        vpslld    xmm0, xmm0, 21
        vinsertf128 ymm10, ymm10, xmm0, 1
        vandps    ymm10, ymm10, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+704]
        vmulps    ymm0, ymm10, ymm4
        test      dl, dl
        jne       .L_B5_12

.L_B5_2:

        test      dl, dl
        jne       .L_B5_4

.L_B5_3:

        vmovups   ymm6, YMMWORD PTR [464+rsp]
        vmovups   ymm10, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_4:

        vmovups   YMMWORD PTR [r13], ymm6
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B5_3

.L_B5_7:

        xor       eax, eax
        vmovups   YMMWORD PTR [256+rsp], ymm7
        vmovups   YMMWORD PTR [224+rsp], ymm8
        vmovups   YMMWORD PTR [192+rsp], ymm9
        vmovups   YMMWORD PTR [160+rsp], ymm11
        vmovups   YMMWORD PTR [128+rsp], ymm12
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [296+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [288+rsp], rsi
        mov       esi, edx

.L_B5_8:

        bt        esi, ebx
        jc        .L_B5_11

.L_B5_9:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B5_8

.L_B5_10:

        vmovups   ymm7, YMMWORD PTR [256+rsp]
        vmovups   ymm8, YMMWORD PTR [224+rsp]
        vmovups   ymm9, YMMWORD PTR [192+rsp]
        vmovups   ymm11, YMMWORD PTR [160+rsp]
        vmovups   ymm12, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [296+rsp]
        mov       rsi, QWORD PTR [288+rsp]
        jmp       .L_B5_3

.L_B5_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexp_ha_cout_rare_internal
        jmp       .L_B5_9

.L_B5_12:

        vcmpgt_oqps ymm1, ymm6, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2560]
        vcmplt_oqps ymm2, ymm6, YMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2624]
        vpxor     xmm10, xmm10, xmm10
        vblendvps ymm0, ymm0, YMMWORD PTR [rip+_2il0floatpacket_38], ymm1
        vorps     ymm3, ymm1, ymm2
        vandnps   ymm0, ymm2, ymm0
        vextractf128 xmm4, ymm3, 1
        vpackssdw xmm5, xmm3, xmm4
        vpacksswb xmm1, xmm5, xmm10
        vpmovmskb eax, xmm1
        not       eax
        and       eax, edx
        movzx     edx, al
        jmp       .L_B5_2
        .align    16, 0x90

.L_B5_13:

        .section .drectve
        .ascii " -export \"__jsvml_expf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf8_ha_e9_B1_B4:
        .long   533761
        .long   4379685
        .long   1927197
        .long   2074644
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_expf8_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf8_ha_e9_B7_B11:
        .long   1332001
        .long   2384979
        .long   2438217
        .long   194625
        .long   321595
        .long   448565
        .long   575535
        .long   702502
        .long   825373
        .long   952340
        .long   1079307
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_expf8_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_7
        .rva    .L_B5_12
        .rva    _unwind___jsvml_expf8_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf8_ha_e9_B12_B12:
        .long   33
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_expf8_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_12
        .rva    .L_B5_13
        .rva    _unwind___jsvml_expf8_ha_e9_B12_B12

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_expf4_ha_ex

__jsvml_expf4_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L74:

        sub       rsp, 264
        movaps    xmm3, xmm0
        movups    XMMWORD PTR [224+rsp], xmm14
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [192+rsp], xmm13
        movups    XMMWORD PTR [208+rsp], xmm12
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+1792]
        and       r13, -64
        mulps     xmm0, xmm3
        movups    xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+1856]
        movdqu    xmm13, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2432]
        addps     xmm0, xmm5
        pand      xmm13, xmm3
        movaps    xmm4, xmm0
        pcmpgtd   xmm13, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2496]
        subps     xmm4, xmm5
        movmskps  edx, xmm13
        movdqu    xmm13, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2176]
        pand      xmm13, xmm0
        pslld     xmm13, 3
        pshufd    xmm14, xmm13, 1
        movd      ecx, xmm13
        movd      r8d, xmm14
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+1920]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+1984]
        movsxd    rcx, ecx
        movsxd    r8, r8d
        mulps     xmm2, xmm4
        mulps     xmm1, xmm4
        movq      xmm5, QWORD PTR ["__jsvml_sexp_ha_data_internal"@imgrel+768+rax+rcx]
        movq      xmm14, QWORD PTR ["__jsvml_sexp_ha_data_internal"@imgrel+768+rax+r8]
        unpcklps  xmm5, xmm14
        movaps    xmm14, xmm3
        pshufd    xmm12, xmm13, 2
        subps     xmm14, xmm2
        movd      r9d, xmm12
        pshufd    xmm13, xmm13, 3
        subps     xmm14, xmm1
        movd      r10d, xmm13
        movaps    xmm1, xmm14
        mulps     xmm1, xmm14
        mulps     xmm1, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2368]
        movsxd    r9, r9d
        addps     xmm14, xmm1
        movsxd    r10, r10d
        movq      xmm12, QWORD PTR ["__jsvml_sexp_ha_data_internal"@imgrel+768+rax+r9]
        paddd     xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2048]
        pslld     xmm0, 16
        movq      xmm13, QWORD PTR ["__jsvml_sexp_ha_data_internal"@imgrel+768+rax+r10]
        unpcklps  xmm12, xmm13
        movaps    xmm13, xmm5
        movlhps   xmm13, xmm12
        mulps     xmm14, xmm13
        shufps    xmm5, xmm12, 238
        pand      xmm0, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2112]
        addps     xmm5, xmm14
        mov       QWORD PTR [248+rsp], r13
        addps     xmm13, xmm5
        mulps     xmm0, xmm13
        test      edx, edx
        jne       .L_B6_3

.L_B6_2:

        movups    xmm12, XMMWORD PTR [208+rsp]
        movups    xmm13, XMMWORD PTR [192+rsp]
        movups    xmm14, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B6_3:

        movups    xmm12, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2560]
        movaps    xmm5, xmm3
        mov       eax, 2139095040
        cmpltps   xmm5, XMMWORD PTR [rip+__jsvml_sexp_ha_data_internal+2624]
        cmpltps   xmm12, xmm3
        movd      xmm1, eax
        movaps    xmm4, xmm12
        pshufd    xmm2, xmm1, 0
        andnps    xmm4, xmm0
        andps     xmm2, xmm12
        orps      xmm12, xmm5
        movmskps  eax, xmm12
        orps      xmm4, xmm2
        movaps    xmm0, xmm5
        andnps    xmm0, xmm4
        not       eax
        and       eax, edx
        je        .L_B6_2

.L_B6_4:

        movups    XMMWORD PTR [r13], xmm3
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B6_2

.L_B6_7:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B6_8:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B6_11

.L_B6_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_8

.L_B6_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_11:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexp_ha_cout_rare_internal
        jmp       .L_B6_9
        .align    16, 0x90

.L_B6_12:

        .section .drectve
        .ascii " -export \"__jsvml_expf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_ex_B1_B4:
        .long   669697
        .long   2020408
        .long   903216
        .long   841767
        .long   976919
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_expf4_ha_ex_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expf4_ha_ex_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_expf4_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_7
        .rva    .L_B6_12
        .rva    _unwind___jsvml_expf4_ha_ex_B7_B11

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_sexp_ha_cout_rare_internal

__jsvml_sexp_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L87:

        sub       rsp, 104
        mov       r9, rdx
        movzx     edx, WORD PTR [2+rcx]
        xor       eax, eax
        and       edx, 32640
        shr       edx, 7
        cmp       edx, 255
        je        .L_B7_17

.L_B7_2:

        pxor      xmm1, xmm1
        cvtss2sd  xmm1, DWORD PTR [rcx]
        cmp       edx, 74
        jle       .L_B7_15

.L_B7_3:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1080]
        comisd    xmm0, xmm1
        jb        .L_B7_14

.L_B7_4:

        comisd    xmm1, QWORD PTR [rip+_vmldExpHATab+1096]
        jb        .L_B7_13

.L_B7_5:

        movsd     xmm2, QWORD PTR [rip+_vmldExpHATab+1024]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [88+rsp], xmm2
        movaps    xmm2, xmm1
        movsd     xmm3, QWORD PTR [88+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1136]
        movsd     QWORD PTR [80+rsp], xmm0
        addsd     xmm3, QWORD PTR [rip+_vmldExpHATab+1032]
        movsd     QWORD PTR [96+rsp], xmm3
        movsd     xmm4, QWORD PTR [96+rsp]
        mov       r10d, DWORD PTR [96+rsp]
        mov       r8d, r10d
        and       r10d, 63
        subsd     xmm4, QWORD PTR [rip+_vmldExpHATab+1032]
        movsd     QWORD PTR [88+rsp], xmm4
        lea       edx, DWORD PTR [r10+r10]
        movsd     xmm5, QWORD PTR [88+rsp]
        lea       r11d, DWORD PTR [1+r10+r10]
        mulsd     xmm5, QWORD PTR [rip+_vmldExpHATab+1104]
        lea       r10, QWORD PTR [rip+__ImageBase]
        movsd     xmm0, QWORD PTR [88+rsp]
        subsd     xmm2, xmm5
        mulsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1112]
        shr       r8d, 6
        subsd     xmm2, xmm0
        comisd    xmm1, QWORD PTR [rip+_vmldExpHATab+1088]
        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1072]
        lea       ecx, DWORD PTR [1023+r8]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1064]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1056]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1048]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1040]
        mulsd     xmm0, xmm2
        mulsd     xmm0, xmm2
        addsd     xmm0, xmm2
        movsd     xmm2, QWORD PTR ["_vmldExpHATab"@imgrel+r10+rdx*8]
        addsd     xmm0, QWORD PTR ["_vmldExpHATab"@imgrel+r10+r11*8]
        mulsd     xmm0, xmm2
        jb        .L_B7_9

.L_B7_6:

        and       ecx, 2047
        addsd     xmm0, xmm2
        cmp       ecx, 2046
        ja        .L_B7_8

.L_B7_7:

        movzx     edx, WORD PTR [rip+_vmldExpHATab+1142]
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [86+rsp], dx
        movsd     xmm1, QWORD PTR [80+rsp]
        mulsd     xmm0, xmm1
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_8:

        dec       ecx
        and       ecx, 2047
        movzx     edx, WORD PTR [86+rsp]
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [86+rsp], dx
        movsd     xmm1, QWORD PTR [80+rsp]
        mulsd     xmm0, xmm1
        mulsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1152]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_9:

        add       r8d, 1083
        and       r8d, 2047
        mov       eax, r8d
        movzx     edx, WORD PTR [86+rsp]
        shl       eax, 4
        and       edx, -32753
        or        edx, eax
        mov       WORD PTR [86+rsp], dx
        movsd     xmm3, QWORD PTR [80+rsp]
        mulsd     xmm0, xmm3
        mulsd     xmm3, xmm2
        movaps    xmm1, xmm0
        addsd     xmm1, xmm3
        cmp       r8d, 50
        ja        .L_B7_11

.L_B7_10:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1160]
        mulsd     xmm1, xmm0
        cvtsd2ss  xmm1, xmm1
        jmp       .L_B7_12

.L_B7_11:

        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm2, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        mulsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1168]
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [56+rsp], xmm4
        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm0, xmm5
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [64+rsp]
        subsd     xmm2, xmm1
        movsd     QWORD PTR [72+rsp], xmm2
        movsd     xmm4, QWORD PTR [40+rsp]
        movsd     xmm3, QWORD PTR [72+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [72+rsp], xmm4
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1160]
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm1, QWORD PTR [72+rsp]
        mulsd     xmm1, QWORD PTR [rip+_vmldExpHATab+1160]
        movsd     QWORD PTR [72+rsp], xmm1
        movsd     xmm1, QWORD PTR [64+rsp]
        movsd     xmm5, QWORD PTR [72+rsp]
        addsd     xmm1, xmm5
        cvtsd2ss  xmm1, xmm1

.L_B7_12:

        movss     DWORD PTR [r9], xmm1
        mov       eax, 4
        add       rsp, 104
        ret

.L_B7_13:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1120]
        mov       eax, 4
        mulsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_14:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1128]
        mov       eax, 3
        mulsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_15:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1144]
        addsd     xmm0, xmm1
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0

.L_B7_16:

        add       rsp, 104
        ret

.L_B7_17:

        mov       dl, BYTE PTR [3+rcx]
        and       dl, -128
        cmp       dl, -128
        je        .L_B7_19

.L_B7_18:

        movss     xmm0, DWORD PTR [rcx]
        mulss     xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_19:

        test      DWORD PTR [rcx], 8388607
        jne       .L_B7_18

.L_B7_20:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1136]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret
        .align    16, 0x90

.L_B7_21:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sexp_ha_cout_rare_internal_B1_B20:
        .long   67585
        .long   49672

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_21
        .rva    _unwind___jsvml_sexp_ha_cout_rare_internal_B1_B20

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_sexp_ha_data_internal_avx512
__jsvml_sexp_ha_data_internal_avx512:
        .long   0
        .long   3007986186
        .long   860277610
        .long   3010384254
        .long   2991457809
        .long   3008462297
        .long   860562562
        .long   3004532446
        .long   856238081
        .long   3001480295
        .long   857441778
        .long   815380209
        .long   3003456168
        .long   3001196762
        .long   2986372182
        .long   3006683458
        .long   848495278
        .long   851809756
        .long   3003311522
        .long   2995654817
        .long   833868005
        .long   3004843819
        .long   835836658
        .long   3003498340
        .long   2994528642
        .long   3002229827
        .long   2981408986
        .long   2983889551
        .long   2983366846
        .long   3000350873
        .long   833659207
        .long   2987748092
        .long   1065353216
        .long   1065536903
        .long   1065724611
        .long   1065916431
        .long   1066112450
        .long   1066312762
        .long   1066517459
        .long   1066726640
        .long   1066940400
        .long   1067158842
        .long   1067382066
        .long   1067610179
        .long   1067843287
        .long   1068081499
        .long   1068324927
        .long   1068573686
        .long   1068827891
        .long   1069087663
        .long   1069353124
        .long   1069624397
        .long   1069901610
        .long   1070184894
        .long   1070474380
        .long   1070770206
        .long   1071072509
        .long   1071381432
        .long   1071697119
        .long   1072019719
        .long   1072349383
        .long   1072686266
        .long   1073030525
        .long   1073382323
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   1060205080
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   2969756424
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   3221225471
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1042983923
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
        .long   1056964854
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
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   796917760
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .globl __jsvml_sexp_ha_data_internal
__jsvml_sexp_ha_data_internal:
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1085844027
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
        .long   1262486012
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
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   1043427328
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   923139572
        .long   0
        .long   856238081
        .long   848495278
        .long   2994528642
        .long   0
        .long   856238081
        .long   848495278
        .long   2994528642
        .long   0
        .long   856238081
        .long   848495278
        .long   2994528642
        .long   0
        .long   856238081
        .long   848495278
        .long   2994528642
        .long   1065353216
        .long   1066940400
        .long   1068827891
        .long   1071072509
        .long   1065353216
        .long   1066940400
        .long   1068827891
        .long   1071072509
        .long   1065353216
        .long   1066940400
        .long   1068827891
        .long   1071072509
        .long   1065353216
        .long   1066940400
        .long   1068827891
        .long   1071072509
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1026210578
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1042987794
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
        .long   1056964607
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
        .long   1065353216
        .long   0
        .long   1065398765
        .long   857715507
        .long   1065444562
        .long   2982428624
        .long   1065490607
        .long   856090616
        .long   1065536903
        .long   3008276393
        .long   1065583449
        .long   857595758
        .long   1065630249
        .long   3002158215
        .long   1065677302
        .long   858550072
        .long   1065724611
        .long   860854417
        .long   1065772177
        .long   859251839
        .long   1065820002
        .long   3008545510
        .long   1065868085
        .long   864021810
        .long   1065916431
        .long   3011435083
        .long   1065965038
        .long   819487640
        .long   1066013909
        .long   862622430
        .long   1066063046
        .long   856316133
        .long   1066112450
        .long   2992679841
        .long   1066162122
        .long   3001970243
        .long   1066212063
        .long   859241655
        .long   1066262276
        .long   847285146
        .long   1066312762
        .long   3010032741
        .long   1066363521
        .long   843003463
        .long   1066414556
        .long   856041677
        .long   1066465869
        .long   3009946167
        .long   1066517459
        .long   862410276
        .long   1066569330
        .long   863709796
        .long   1066621483
        .long   851201948
        .long   1066673919
        .long   838513088
        .long   1066726640
        .long   3006136850
        .long   1066779647
        .long   3010613863
        .long   1066832941
        .long   853311585
        .long   1066886525
        .long   856941301
        .long   1066940400
        .long   857938801
        .long   1066994568
        .long   2993474036
        .long   1067049030
        .long   3009003152
        .long   1067103787
        .long   2967126046
        .long   1067158842
        .long   3003929955
        .long   1067214195
        .long   860904838
        .long   1067269850
        .long   3006375425
        .long   1067325806
        .long   843377209
        .long   1067382066
        .long   859906882
        .long   1067438632
        .long   848662531
        .long   1067495505
        .long   838571797
        .long   1067552687
        .long   3000363757
        .long   1067610179
        .long   818090586
        .long   1067667983
        .long   860999685
        .long   1067726102
        .long   3005475891
        .long   1067784536
        .long   3010626242
        .long   1067843287
        .long   3006045534
        .long   1067902357
        .long   2998944862
        .long   1067961748
        .long   3004575030
        .long   1068021461
        .long   842258832
        .long   1068081499
        .long   3004574472
        .long   1068141862
        .long   858118433
        .long   1068202554
        .long   3004476802
        .long   1068263575
        .long   3006694272
        .long   1068324927
        .long   2989353718
        .long   1068386612
        .long   858100843
        .long   1068448633
        .long   3005558251
        .long   1068510990
        .long   3000050815
        .long   1068573686
        .long   3011271336
        .long   1068636722
        .long   3006477262
        .long   1068700100
        .long   840255625
        .long   1068763823
        .long   3007001961
        .long   1068827891
        .long   852486010
        .long   1068892308
        .long   3006218836
        .long   1068957074
        .long   2993076596
        .long   1069022192
        .long   3000356208
        .long   1069087663
        .long   856606199
        .long   1069153490
        .long   856315927
        .long   1069219675
        .long   3004946819
        .long   1069286218
        .long   863888852
        .long   1069353124
        .long   3007401960
        .long   1069420392
        .long   832069785
        .long   1069488026
        .long   3004369690
        .long   1069556027
        .long   3007061599
        .long   1069624397
        .long   3000395326
        .long   1069693138
        .long   851736822
        .long   1069762253
        .long   2996268450
        .long   1069831743
        .long   2999890733
        .long   1069901610
        .long   839559223
        .long   1069971857
        .long   3004476343
        .long   1070042485
        .long   3000848665
        .long   1070113496
        .long   859381756
        .long   1070184894
        .long   3010667426
        .long   1070256678
        .long   859604257
        .long   1070328853
        .long   2953234114
        .long   1070401420
        .long   3010682756
        .long   1070474380
        .long   841546788
        .long   1070547737
        .long   2999163804
        .long   1070621492
        .long   2996061011
        .long   1070695647
        .long   860136147
        .long   1070770206
        .long   3009158570
        .long   1070845169
        .long   3008165066
        .long   1070920539
        .long   3005767716
        .long   1070996318
        .long   2955948569
        .long   1071072509
        .long   3000280458
        .long   1071149113
        .long   857267046
        .long   1071226134
        .long   3002473793
        .long   1071303572
        .long   861820308
        .long   1071381432
        .long   3008383516
        .long   1071459714
        .long   3010850715
        .long   1071538421
        .long   3011199971
        .long   1071617555
        .long   2995067967
        .long   1071697119
        .long   2988354393
        .long   1071777115
        .long   2889750092
        .long   1071857545
        .long   862289173
        .long   1071938413
        .long   3007287685
        .long   1072019719
        .long   2990808038
        .long   1072101467
        .long   3005883328
        .long   1072183658
        .long   857766040
        .long   1072266296
        .long   855693471
        .long   1072349383
        .long   2990610142
        .long   1072432921
        .long   3004393415
        .long   1072516912
        .long   846646433
        .long   1072601360
        .long   3008357562
        .long   1072686266
        .long   3007858250
        .long   1072771633
        .long   3006309869
        .long   1072857463
        .long   854681599
        .long   1072943760
        .long   2995197552
        .long   1073030525
        .long   841557046
        .long   1073117761
        .long   861464191
        .long   1073205471
        .long   862328226
        .long   1073293658
        .long   3003728983
        .long   1073382323
        .long   2995926872
        .long   1073471469
        .long   861522913
        .long   1073561100
        .long   835668076
        .long   1073651217
        .long   859371295
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1127787067
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   1001488384
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   3051257987
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
        .long   16256
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
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   127
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   4294967232
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
        .long   864026624
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
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   1118925335
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
        .long   3268407732
_2il0floatpacket_38:
        .long   0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000
_vmldExpHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   1048019041
        .long   1072704666
        .long   2631457885
        .long   3161546771
        .long   3541402996
        .long   1072716208
        .long   896005651
        .long   1015861842
        .long   410360776
        .long   1072727877
        .long   1642514529
        .long   1012987726
        .long   1828292879
        .long   1072739672
        .long   1568897901
        .long   1016568486
        .long   852742562
        .long   1072751596
        .long   1882168529
        .long   1010744893
        .long   3490863953
        .long   1072763649
        .long   707771662
        .long   3163903570
        .long   2930322912
        .long   1072775834
        .long   3117806614
        .long   3163670819
        .long   1014845819
        .long   1072788152
        .long   3936719688
        .long   3162512149
        .long   3949972341
        .long   1072800603
        .long   1058231231
        .long   1015777676
        .long   828946858
        .long   1072813191
        .long   1044000608
        .long   1016786167
        .long   2288159958
        .long   1072825915
        .long   1151779725
        .long   1015705409
        .long   1853186616
        .long   1072838778
        .long   3819481236
        .long   1016499965
        .long   1709341917
        .long   1072851781
        .long   2552227826
        .long   1015039787
        .long   4112506593
        .long   1072864925
        .long   1829350193
        .long   1015216097
        .long   2799960843
        .long   1072878213
        .long   1913391796
        .long   1015756674
        .long   171030293
        .long   1072891646
        .long   1303423926
        .long   1015238005
        .long   2992903935
        .long   1072905224
        .long   1574172746
        .long   1016061241
        .long   926591435
        .long   1072918951
        .long   3427487848
        .long   3163704045
        .long   887463927
        .long   1072932827
        .long   1049900754
        .long   3161575912
        .long   1276261410
        .long   1072946854
        .long   2804567149
        .long   1015390024
        .long   569847338
        .long   1072961034
        .long   1209502043
        .long   3159926671
        .long   1617004845
        .long   1072975368
        .long   1623370769
        .long   1011049453
        .long   3049340112
        .long   1072989858
        .long   3667985273
        .long   1013894369
        .long   3577096743
        .long   1073004506
        .long   3145379760
        .long   1014403278
        .long   1990012071
        .long   1073019314
        .long   7447438
        .long   3163526196
        .long   1453150082
        .long   1073034283
        .long   3171891295
        .long   3162037958
        .long   917841882
        .long   1073049415
        .long   419288974
        .long   1016280325
        .long   3712504873
        .long   1073064711
        .long   3793507337
        .long   1016095713
        .long   363667784
        .long   1073080175
        .long   728023093
        .long   1016345318
        .long   2956612997
        .long   1073095806
        .long   1005538728
        .long   3163304901
        .long   2186617381
        .long   1073111608
        .long   2018924632
        .long   3163803357
        .long   1719614413
        .long   1073127582
        .long   3210617384
        .long   3163796463
        .long   1013258799
        .long   1073143730
        .long   3094194670
        .long   3160631279
        .long   3907805044
        .long   1073160053
        .long   2119843535
        .long   3161988964
        .long   1447192521
        .long   1073176555
        .long   508946058
        .long   3162904882
        .long   1944781191
        .long   1073193236
        .long   3108873501
        .long   3162190556
        .long   919555682
        .long   1073210099
        .long   2882956373
        .long   1013312481
        .long   2571947539
        .long   1073227145
        .long   4047189812
        .long   3163777462
        .long   2604962541
        .long   1073244377
        .long   3631372142
        .long   3163870288
        .long   1110089947
        .long   1073261797
        .long   3253791412
        .long   1015920431
        .long   2568320822
        .long   1073279406
        .long   1509121860
        .long   1014756995
        .long   2966275557
        .long   1073297207
        .long   2339118633
        .long   3160254904
        .long   2682146384
        .long   1073315202
        .long   586480042
        .long   3163702083
        .long   2191782032
        .long   1073333393
        .long   730975783
        .long   1014083580
        .long   2069751141
        .long   1073351782
        .long   576856675
        .long   3163014404
        .long   2990417245
        .long   1073370371
        .long   3552361237
        .long   3163667409
        .long   1434058175
        .long   1073389163
        .long   1853053619
        .long   1015310724
        .long   2572866477
        .long   1073408159
        .long   2462790535
        .long   1015814775
        .long   3092190715
        .long   1073427362
        .long   1457303226
        .long   3159737305
        .long   4076559943
        .long   1073446774
        .long   950899508
        .long   3160987380
        .long   2420883922
        .long   1073466398
        .long   174054861
        .long   1014300631
        .long   3716502172
        .long   1073486235
        .long   816778419
        .long   1014197934
        .long   777507147
        .long   1073506289
        .long   3507050924
        .long   1015341199
        .long   3706687593
        .long   1073526560
        .long   1821514088
        .long   1013410604
        .long   1242007932
        .long   1073547053
        .long   1073740399
        .long   3163532637
        .long   3707479175
        .long   1073567768
        .long   2789017511
        .long   1014276997
        .long   64696965
        .long   1073588710
        .long   3586233004
        .long   1015962192
        .long   863738719
        .long   1073609879
        .long   129252895
        .long   3162690849
        .long   3884662774
        .long   1073631278
        .long   1614448851
        .long   1014281732
        .long   2728693978
        .long   1073652911
        .long   2413007344
        .long   3163551506
        .long   3999357479
        .long   1073674779
        .long   1101668360
        .long   1015989180
        .long   1533953344
        .long   1073696886
        .long   835814894
        .long   1015702697
        .long   2174652632
        .long   1073719233
        .long   1301400989
        .long   1014466875
        .long   1697350398
        .long   1079448903
        .long   0
        .long   1127743488
        .long   0
        .long   1071644672
        .long   1431652600
        .long   1069897045
        .long   1431670732
        .long   1067799893
        .long   984555731
        .long   1065423122
        .long   472530941
        .long   1062650218
        .long   3758096384
        .long   1079389762
        .long   3758096384
        .long   3226850697
        .long   2147483648
        .long   3227123254
        .long   4277796864
        .long   1065758274
        .long   3164486458
        .long   1025308570
        .long   1
        .long   1048576
        .long   4294967295
        .long   2146435071
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   1073741824
        .long   0
        .long   1009778688
        .long   0
        .long   1106771968
        .space 8, 0x0
_2il0floatpacket_37:
        .long   0x7f800000, 0x7f800000, 0x7f800000, 0x7f800000
        .data
#endif
