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
        .globl __jsvml_asinf8_ha_l9

__jsvml_asinf8_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 552
        vmovups   YMMWORD PTR [432+rsp], ymm11
        vmovups   YMMWORD PTR [496+rsp], ymm9
        vmovups   YMMWORD PTR [400+rsp], ymm7
        vmovups   YMMWORD PTR [464+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        and       r13, -64
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        vmovdqa   ymm5, ymm0
        vandps    ymm2, ymm4, ymm5
        vmovdqa   ymm6, ymm2
        vfnmadd213ps ymm6, ymm1, ymm1
        vmulps    ymm3, ymm2, ymm2
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        vcmpgt_oqps ymm11, ymm2, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        vminps    ymm7, ymm3, ymm6
        vcmpnlt_uqps ymm3, ymm2, ymm1
        vrsqrtps  ymm1, ymm6
        vmovmskps edx, ymm11
        vcmplt_oqps ymm11, ymm6, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        test      edx, edx
        vaddps    ymm6, ymm6, ymm6
        vandps    ymm9, ymm6, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        vsubps    ymm6, ymm6, ymm9
        vandnps   ymm11, ymm11, ymm1
        vmulps    ymm1, ymm11, ymm9
        vmulps    ymm6, ymm11, ymm6
        vfmsub231ps ymm0, ymm11, ymm1
        vmulps    ymm11, ymm11, ymm6
        vaddps    ymm9, ymm1, ymm6
        vaddps    ymm11, ymm0, ymm11
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        vmulps    ymm9, ymm9, ymm11
        vfmadd213ps ymm0, ymm11, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        vmovups   ymm11, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        vfmsub213ps ymm0, ymm9, ymm6
        vmovups   ymm9, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        vfmadd213ps ymm11, ymm7, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        vmulps    ymm6, ymm7, ymm7
        vfmadd213ps ymm9, ymm7, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        vfmadd213ps ymm9, ymm6, ymm11
        vsubps    ymm11, ymm0, ymm1
        vaddps    ymm0, ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        vfmadd213ps ymm9, ymm7, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        vmulps    ymm6, ymm7, ymm9
        vmovups   ymm9, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        vsubps    ymm7, ymm9, ymm1
        vsubps    ymm9, ymm9, ymm7
        vsubps    ymm1, ymm1, ymm9
        vsubps    ymm0, ymm0, ymm1
        vandps    ymm1, ymm11, ymm3
        vandnps   ymm2, ymm3, ymm2
        vandps    ymm11, ymm0, ymm3
        vorps     ymm0, ymm1, ymm2
        vfmadd213ps ymm6, ymm0, ymm11
        vandps    ymm7, ymm7, ymm3
        vorps     ymm1, ymm7, ymm2
        vaddps    ymm2, ymm1, ymm6
        vandnps   ymm4, ymm4, ymm5
        mov       QWORD PTR [536+rsp], r13
        vxorps    ymm0, ymm2, ymm4
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm6, YMMWORD PTR [464+rsp]
        vmovups   ymm7, YMMWORD PTR [400+rsp]
        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm11, YMMWORD PTR [432+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B1_3:

        vmovups   YMMWORD PTR [r13], ymm5
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B1_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm8
        vmovups   YMMWORD PTR [160+rsp], ymm10
        vmovups   YMMWORD PTR [128+rsp], ymm12
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
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

        vmovups   ymm8, YMMWORD PTR [192+rsp]
        vmovups   ymm10, YMMWORD PTR [160+rsp]
        vmovups   ymm12, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [232+rsp]
        mov       rsi, QWORD PTR [224+rsp]
        jmp       .L_B1_2

.L_B1_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sasin_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_asinf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf8_ha_l9_B1_B3:
        .long   800513
        .long   4379703
        .long   1927215
        .long   1669158
        .long   2070557
        .long   1816596
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_asinf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf8_ha_l9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   194607
        .long   321577
        .long   448547
        .long   575517
        .long   698388
        .long   821259
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_asinf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_asinf8_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_asinf16_ha_z0

__jsvml_asinf16_ha_z0:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L28:

        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        vandps    zmm4, zmm5, zmm0
        vandnps   zmm3, zmm5, zmm0
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        vmulps    zmm22, zmm4, zmm4 {rn-sae}
        vcmpps    k1, zmm24, zmm4, 17 {sae}
        vcmpps    k3, zmm4, zmm23, 21 {sae}
        vmovaps   zmm27, zmm4
        vfnmadd213ps zmm27, zmm23, zmm23 {rn-sae}
        vrsqrt14ps zmm25, zmm27
        vcmpps    k2, zmm27, zmm26, 17 {sae}
        vminps    zmm2, zmm22, zmm27 {sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        vaddps    zmm28, zmm27, zmm27 {rn-sae}
        vandps    zmm31, zmm25, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+384]
        vorps     zmm2{k1}, zmm2, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1216]
        vandps    zmm29, zmm28, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        vxorps    zmm31{k2}, zmm31, zmm31
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        vmulps    zmm1, zmm29, zmm31 {rn-sae}
        vsubps    zmm30, zmm28, zmm29 {rn-sae}
        vmulps    zmm28, zmm2, zmm2 {rn-sae}
        vmulps    zmm25, zmm30, zmm31 {rn-sae}
        vfmsub231ps zmm0, zmm31, zmm1 {rn-sae}
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        vmulps    zmm31, zmm25, zmm31 {rn-sae}
        vfmadd231ps zmm29, zmm27, zmm2 {rn-sae}
        vaddps    zmm22, zmm1, zmm25 {rn-sae}
        vaddps    zmm23, zmm0, zmm31 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        vmulps    zmm24, zmm22, zmm23 {rn-sae}
        vfmadd231ps zmm0, zmm5, zmm23 {rn-sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1088]
        vfmsub213ps zmm0, zmm24, zmm25 {rn-sae}
        vfmadd231ps zmm5, zmm26, zmm2 {rn-sae}
        vsubps    zmm4{k3}, zmm0, zmm1 {rn-sae}
        vfmadd213ps zmm5, zmm28, zmm29 {rn-sae}
        vfmadd213ps zmm5, zmm2, zmm30 {rn-sae}
        vmulps    zmm24, zmm5, zmm2 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        vsubps    zmm23, zmm2, zmm1 {rn-sae}
        vaddps    zmm0, zmm5, zmm0 {rn-sae}
        vsubps    zmm2, zmm2, zmm23 {rn-sae}
        vsubps    zmm1, zmm1, zmm2 {rn-sae}
        vsubps    zmm22{k3}, zmm0, zmm1 {rn-sae}
        vfmadd213ps zmm24, zmm4, zmm22 {rn-sae}
        vblendmps zmm4{k3}, zmm4, zmm23
        vaddps    zmm0, zmm4, zmm24 {rn-sae}
        vxorps    zmm0, zmm0, zmm3
        ret
        .align    16, 0x90

.L_B2_2:

        .section .drectve
        .ascii " -export \"__jsvml_asinf16_ha_z0\""

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_asinf8_ha_e9

__jsvml_asinf8_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L29:

        sub       rsp, 552
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vmovups   YMMWORD PTR [496+rsp], ymm10
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [368+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovups   ymm8, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        and       r13, -64
        vmovups   ymm7, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        vmovaps   ymm10, ymm0
        vandps    ymm6, ymm8, ymm10
        vmulps    ymm4, ymm6, ymm7
        vmulps    ymm1, ymm6, ymm6
        vcmpgt_oqps ymm3, ymm6, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        vsubps    ymm5, ymm7, ymm4
        vcmpnlt_uqps ymm7, ymm6, ymm7
        vcmplt_oqps ymm0, ymm5, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        vminps    ymm4, ymm1, ymm5
        vpxor     xmm1, xmm1, xmm1
        vandnps   ymm6, ymm7, ymm6
        vandnps   ymm8, ymm8, ymm10
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm2, ymm3, 1
        vpackssdw xmm15, xmm3, xmm2
        vrsqrtps  ymm2, ymm5
        vpacksswb xmm3, xmm15, xmm1
        vaddps    ymm5, ymm5, ymm5
        vpmovmskb edx, xmm3
        vandnps   ymm0, ymm0, ymm2
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        vandps    ymm15, ymm5, ymm2
        vsubps    ymm1, ymm5, ymm15
        vmulps    ymm5, ymm0, ymm15
        vmulps    ymm1, ymm0, ymm1
        vandps    ymm3, ymm5, ymm2
        vmulps    ymm2, ymm0, ymm3
        vsubps    ymm15, ymm5, ymm3
        vmulps    ymm3, ymm0, ymm1
        vmulps    ymm0, ymm0, ymm15
        vsubps    ymm2, ymm2, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        vaddps    ymm15, ymm3, ymm2
        vaddps    ymm3, ymm5, ymm1
        vaddps    ymm15, ymm0, ymm15
        vmulps    ymm0, ymm15, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        vmulps    ymm2, ymm15, ymm3
        vaddps    ymm0, ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        vmulps    ymm15, ymm0, ymm2
        vmulps    ymm0, ymm4, ymm4
        vsubps    ymm3, ymm15, ymm1
        vmulps    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        vmulps    ymm15, ymm4, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        vaddps    ymm1, ymm1, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        vaddps    ymm2, ymm15, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        vmulps    ymm15, ymm1, ymm0
        vaddps    ymm1, ymm2, ymm15
        vsubps    ymm15, ymm3, ymm5
        vaddps    ymm3, ymm3, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        vmulps    ymm0, ymm4, ymm1
        vaddps    ymm2, ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        vmulps    ymm4, ymm4, ymm2
        vsubps    ymm1, ymm0, ymm5
        vsubps    ymm2, ymm0, ymm1
        vsubps    ymm5, ymm5, ymm2
        vsubps    ymm0, ymm3, ymm5
        vandps    ymm2, ymm15, ymm7
        vandps    ymm15, ymm0, ymm7
        vandps    ymm1, ymm1, ymm7
        vorps     ymm7, ymm2, ymm6
        vmulps    ymm4, ymm7, ymm4
        vorps     ymm0, ymm1, ymm6
        vaddps    ymm1, ymm15, ymm4
        vaddps    ymm2, ymm0, ymm1
        vxorps    ymm0, ymm2, ymm8
        test      dl, dl
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm6, YMMWORD PTR [368+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm10, YMMWORD PTR [496+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vmovups   YMMWORD PTR [r13], ymm10
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B3_2

.L_B3_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm9
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm14
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, edx

.L_B3_7:

        bt        esi, ebx
        jc        .L_B3_10

.L_B3_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B3_7

.L_B3_9:

        vmovups   ymm9, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm14, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sasin_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_asinf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf8_ha_e9_B1_B3:
        .long   933889
        .long   4379712
        .long   1534008
        .long   1931311
        .long   1804326
        .long   2074653
        .long   1701908
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_asinf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf8_ha_e9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   190502
        .long   317472
        .long   444442
        .long   571412
        .long   694283
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_asinf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_asinf8_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_asinf4_ha_l9

__jsvml_asinf4_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L56:

        sub       rsp, 280
        vmovaps   xmm4, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm11
        vmovups   XMMWORD PTR [240+rsp], xmm9
        vmovups   XMMWORD PTR [192+rsp], xmm7
        vmovups   XMMWORD PTR [224+rsp], xmm6
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        and       r13, -64
        vandps    xmm5, xmm3, xmm4
        vandnps   xmm3, xmm3, xmm4
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        vmovaps   xmm0, xmm5
        vfnmadd213ps xmm0, xmm6, xmm6
        vmulps    xmm1, xmm5, xmm5
        vcmpgtps  xmm11, xmm5, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        vrsqrtps  xmm9, xmm0
        vcmpltps  xmm2, xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        vminps    xmm7, xmm1, xmm0
        vcmpnltps xmm1, xmm5, xmm6
        vaddps    xmm0, xmm0, xmm0
        vmovmskps edx, xmm11
        vandps    xmm6, xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        vandnps   xmm11, xmm2, xmm9
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        vandnps   xmm5, xmm1, xmm5
        mov       QWORD PTR [264+rsp], r13
        vsubps    xmm9, xmm0, xmm6
        vmulps    xmm0, xmm11, xmm6
        vmulps    xmm6, xmm11, xmm9
        vfmsub231ps xmm2, xmm11, xmm0
        vmulps    xmm11, xmm11, xmm6
        vaddps    xmm9, xmm0, xmm6
        vaddps    xmm11, xmm2, xmm11
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        vfmadd213ps xmm2, xmm11, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        vmulps    xmm9, xmm9, xmm11
        vfmsub213ps xmm2, xmm9, xmm6
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        vfmadd213ps xmm9, xmm7, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        vfmadd213ps xmm11, xmm7, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        vmulps    xmm6, xmm7, xmm7
        vfmadd213ps xmm9, xmm6, xmm11
        vsubps    xmm11, xmm2, xmm0
        vaddps    xmm2, xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        vfmadd213ps xmm9, xmm7, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        vmulps    xmm7, xmm7, xmm9
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        vsubps    xmm6, xmm9, xmm0
        vsubps    xmm9, xmm9, xmm6
        vsubps    xmm0, xmm0, xmm9
        vsubps    xmm2, xmm2, xmm0
        vandps    xmm0, xmm11, xmm1
        vandps    xmm11, xmm2, xmm1
        vorps     xmm0, xmm0, xmm5
        vfmadd213ps xmm7, xmm0, xmm11
        vandps    xmm2, xmm6, xmm1
        vorps     xmm1, xmm2, xmm5
        vaddps    xmm2, xmm1, xmm7
        vxorps    xmm0, xmm2, xmm3
        test      edx, edx
        jne       .L_B4_3

.L_B4_2:

        vmovups   xmm6, XMMWORD PTR [224+rsp]
        vmovups   xmm7, XMMWORD PTR [192+rsp]
        vmovups   xmm9, XMMWORD PTR [240+rsp]
        vmovups   xmm11, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        vmovups   XMMWORD PTR [r13], xmm4
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B4_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B4_7:

        bt        esi, ebx
        jc        .L_B4_10

.L_B4_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sasin_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_asinf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_l9_B1_B3:
        .long   801537
        .long   2151483
        .long   944179
        .long   817194
        .long   1021985
        .long   899096
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_asinf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_asinf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_asinf4_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_asinf4_ha_e9

__jsvml_asinf4_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L71:

        sub       rsp, 296
        vmovups   XMMWORD PTR [256+rsp], xmm12
        vmovups   XMMWORD PTR [208+rsp], xmm11
        vmovaps   xmm11, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm10
        vmovups   XMMWORD PTR [240+rsp], xmm9
        vmovups   XMMWORD PTR [192+rsp], xmm8
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm10, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        and       r13, -64
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        vandps    xmm8, xmm10, xmm11
        vmulps    xmm12, xmm8, xmm1
        vandnps   xmm10, xmm10, xmm11
        vcmpgtps  xmm9, xmm8, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        vmulps    xmm4, xmm8, xmm8
        vsubps    xmm5, xmm1, xmm12
        vmovmskps edx, xmm9
        vcmpnltps xmm9, xmm8, xmm1
        vcmpltps  xmm3, xmm5, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        vminps    xmm4, xmm4, xmm5
        vrsqrtps  xmm2, xmm5
        vaddps    xmm5, xmm5, xmm5
        vandnps   xmm0, xmm3, xmm2
        vandnps   xmm8, xmm9, xmm8
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        vandps    xmm12, xmm5, xmm2
        mov       QWORD PTR [280+rsp], r13
        vsubps    xmm1, xmm5, xmm12
        vmulps    xmm5, xmm0, xmm12
        vmulps    xmm1, xmm0, xmm1
        vandps    xmm3, xmm5, xmm2
        vmulps    xmm2, xmm0, xmm3
        vsubps    xmm12, xmm5, xmm3
        vmulps    xmm3, xmm0, xmm1
        vmulps    xmm0, xmm0, xmm12
        vsubps    xmm2, xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        vaddps    xmm12, xmm3, xmm2
        vaddps    xmm3, xmm5, xmm1
        vaddps    xmm12, xmm0, xmm12
        vmulps    xmm0, xmm12, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        vmulps    xmm2, xmm12, xmm3
        vaddps    xmm0, xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        vmulps    xmm12, xmm0, xmm2
        vmulps    xmm0, xmm4, xmm4
        vsubps    xmm3, xmm12, xmm1
        vmulps    xmm1, xmm4, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        vmulps    xmm12, xmm4, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        vaddps    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        vaddps    xmm2, xmm12, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        vmulps    xmm12, xmm1, xmm0
        vaddps    xmm1, xmm2, xmm12
        vsubps    xmm12, xmm3, xmm5
        vaddps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        vmulps    xmm0, xmm4, xmm1
        vaddps    xmm2, xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        vmulps    xmm4, xmm4, xmm2
        vsubps    xmm1, xmm0, xmm5
        vsubps    xmm2, xmm0, xmm1
        vandps    xmm1, xmm1, xmm9
        vorps     xmm1, xmm1, xmm8
        vsubps    xmm5, xmm5, xmm2
        vandps    xmm2, xmm12, xmm9
        vsubps    xmm0, xmm3, xmm5
        vandps    xmm12, xmm0, xmm9
        vorps     xmm0, xmm2, xmm8
        vmulps    xmm4, xmm0, xmm4
        vaddps    xmm2, xmm12, xmm4
        vaddps    xmm3, xmm1, xmm2
        vxorps    xmm0, xmm3, xmm10
        test      edx, edx
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm8, XMMWORD PTR [192+rsp]
        vmovups   xmm9, XMMWORD PTR [240+rsp]
        vmovups   xmm10, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [208+rsp]
        vmovups   xmm12, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B5_3:

        vmovups   XMMWORD PTR [r13], xmm11
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B5_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sasin_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_asinf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_e9_B1_B3:
        .long   934913
        .long   2282564
        .long   821308
        .long   1022003
        .long   960554
        .long   899101
        .long   1099796
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_asinf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_asinf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_asinf4_ha_e9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_asinf4_ha_ex

__jsvml_asinf4_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L88:

        sub       rsp, 296
        movaps    xmm5, xmm0
        movups    XMMWORD PTR [224+rsp], xmm14
        movups    XMMWORD PTR [240+rsp], xmm13
        movups    XMMWORD PTR [256+rsp], xmm12
        movups    XMMWORD PTR [192+rsp], xmm11
        movups    XMMWORD PTR [208+rsp], xmm7
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm11, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal]
        and       r13, -64
        movaps    xmm7, xmm11
        andnps    xmm11, xmm5
        andps     xmm7, xmm5
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+64]
        movaps    xmm4, xmm7
        mulps     xmm4, xmm2
        movaps    xmm12, xmm2
        movups    xmm3, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+256]
        subps     xmm12, xmm4
        cmpltps   xmm3, xmm7
        rsqrtps   xmm1, xmm12
        movmskps  eax, xmm3
        movaps    xmm4, xmm7
        movaps    xmm0, xmm12
        movaps    xmm3, xmm7
        mulps     xmm4, xmm7
        cmpltps   xmm0, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+192]
        cmpnltps  xmm3, xmm2
        minps     xmm4, xmm12
        addps     xmm12, xmm12
        andnps    xmm0, xmm1
        movaps    xmm2, xmm12
        movups    xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+320]
        movaps    xmm13, xmm0
        andps     xmm2, xmm1
        mov       QWORD PTR [280+rsp], r13
        subps     xmm12, xmm2
        mulps     xmm2, xmm0
        mulps     xmm12, xmm0
        andps     xmm1, xmm2
        movaps    xmm14, xmm2
        mulps     xmm13, xmm12
        subps     xmm14, xmm1
        mulps     xmm1, xmm0
        mulps     xmm0, xmm14
        subps     xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+448]
        movaps    xmm14, xmm2
        addps     xmm13, xmm1
        addps     xmm14, xmm12
        addps     xmm0, xmm13
        movups    xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+512]
        mulps     xmm1, xmm0
        mulps     xmm0, xmm14
        addps     xmm1, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+576]
        mulps     xmm1, xmm0
        movaps    xmm0, xmm4
        mulps     xmm0, xmm4
        subps     xmm1, xmm12
        movups    xmm12, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+640]
        mulps     xmm12, xmm4
        movups    xmm13, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+768]
        mulps     xmm13, xmm4
        addps     xmm12, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+704]
        mulps     xmm12, xmm0
        addps     xmm13, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+832]
        movups    xmm14, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+960]
        addps     xmm13, xmm12
        mulps     xmm13, xmm4
        movaps    xmm0, xmm14
        subps     xmm0, xmm2
        addps     xmm13, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+896]
        subps     xmm14, xmm0
        mulps     xmm4, xmm13
        movups    xmm13, XMMWORD PTR [rip+__jsvml_sasin_ha_data_internal+1024]
        movaps    xmm12, xmm1
        andps     xmm0, xmm3
        subps     xmm12, xmm2
        addps     xmm13, xmm1
        subps     xmm2, xmm14
        andps     xmm12, xmm3
        subps     xmm13, xmm2
        andps     xmm13, xmm3
        andnps    xmm3, xmm7
        orps      xmm12, xmm3
        orps      xmm0, xmm3
        mulps     xmm12, xmm4
        addps     xmm13, xmm12
        addps     xmm0, xmm13
        pxor      xmm0, xmm11
        test      eax, eax
        jne       .L_B6_3

.L_B6_2:

        movups    xmm7, XMMWORD PTR [208+rsp]
        movups    xmm11, XMMWORD PTR [192+rsp]
        movups    xmm12, XMMWORD PTR [256+rsp]
        movups    xmm13, XMMWORD PTR [240+rsp]
        movups    xmm14, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B6_3:

        movups    XMMWORD PTR [r13], xmm5
        movups    XMMWORD PTR [64+r13], xmm0

.L_B6_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B6_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sasin_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_asinf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_ex_B1_B3:
        .long   934401
        .long   2282562
        .long   882746
        .long   833586
        .long   1099817
        .long   1038368
        .long   976919
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_asinf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asinf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_asinf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_asinf4_ha_ex_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_sasin_ha_cout_rare_internal

__jsvml_sasin_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L105:

        sub       rsp, 216
        mov       r8, rcx
        movups    XMMWORD PTR [128+rsp], xmm15
        mov       r9, rdx
        movups    XMMWORD PTR [176+rsp], xmm14
        xor       eax, eax
        movups    XMMWORD PTR [192+rsp], xmm12
        movzx     r10d, WORD PTR [2+r8]
        and       r10d, 32640
        movss     xmm1, DWORD PTR [r8]
        movups    XMMWORD PTR [96+rsp], xmm10
        movups    XMMWORD PTR [112+rsp], xmm9
        movups    XMMWORD PTR [144+rsp], xmm8
        movups    XMMWORD PTR [160+rsp], xmm7
        cmp       r10d, 32640
        je        .L_B7_12

.L_B7_2:

        pxor      xmm0, xmm0
        cvtss2sd  xmm0, xmm1
        movsd     QWORD PTR [56+rsp], xmm0
        and       BYTE PTR [63+rsp], 127
        movsd     xmm4, QWORD PTR [56+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4160]
        comisd    xmm0, xmm4
        jb        .L_B7_10

.L_B7_3:

        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4168]
        comisd    xmm2, xmm4
        jbe       .L_B7_9

.L_B7_4:

        comisd    xmm4, QWORD PTR [rip+_vmldASinHATab+4136]
        jbe       .L_B7_6

.L_B7_5:

        movsd     xmm8, QWORD PTR [rip+_vmldASinHATab+4104]
        movaps    xmm10, xmm4
        mulsd     xmm8, xmm4
        movaps    xmm15, xmm4
        movsd     QWORD PTR [40+rsp], xmm8
        movsd     xmm7, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4296]
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm7, QWORD PTR [56+rsp]
        movsd     QWORD PTR [32+rsp], xmm7
        movsd     xmm9, QWORD PTR [40+rsp]
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm9, xmm3
        movsd     QWORD PTR [40+rsp], xmm9
        movsd     xmm2, QWORD PTR [40+rsp]
        subsd     xmm10, xmm2
        movsd     QWORD PTR [32+rsp], xmm10
        movsd     xmm1, QWORD PTR [40+rsp]
        movaps    xmm2, xmm1
        addsd     xmm15, xmm1
        mulsd     xmm2, xmm1
        movsd     xmm14, QWORD PTR [32+rsp]
        movaps    xmm5, xmm2
        mulsd     xmm15, xmm14
        mulsd     xmm12, xmm2
        addsd     xmm5, xmm15
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [40+rsp], xmm12
        movsd     xmm8, QWORD PTR [40+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4288]
        subsd     xmm8, xmm2
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm7, QWORD PTR [32+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4280]
        subsd     xmm3, xmm7
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm9, QWORD PTR [40+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4272]
        subsd     xmm2, xmm9
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [32+rsp], xmm2
        movaps    xmm2, xmm4
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm10, QWORD PTR [32+rsp]
        mulsd     xmm14, xmm3
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4264]
        addsd     xmm15, xmm10
        mulsd     xmm1, xmm3
        mulsd     xmm0, xmm5
        mulsd     xmm2, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4256]
        addsd     xmm2, xmm14
        mulsd     xmm0, xmm5
        movsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4104]
        movaps    xmm12, xmm1
        mulsd     xmm14, xmm1
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4248]
        movsd     QWORD PTR [40+rsp], xmm14
        movsd     xmm8, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm5
        subsd     xmm8, xmm1
        addsd     xmm1, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4240]
        mulsd     xmm15, xmm1
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm9, QWORD PTR [40+rsp]
        movsd     xmm7, QWORD PTR [32+rsp]
        subsd     xmm9, xmm7
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4232]
        movsd     QWORD PTR [40+rsp], xmm9
        movsd     xmm10, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm5
        subsd     xmm12, xmm10
        movsd     QWORD PTR [32+rsp], xmm12
        movaps    xmm12, xmm3
        movsd     xmm9, QWORD PTR [40+rsp]
        movsd     xmm10, QWORD PTR [32+rsp]
        movaps    xmm8, xmm10
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4224]
        mulsd     xmm12, xmm9
        addsd     xmm8, xmm2
        mulsd     xmm0, xmm5
        mulsd     xmm3, xmm8
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4216]
        addsd     xmm3, xmm15
        mulsd     xmm0, xmm5
        movsd     xmm15, QWORD PTR [rip+_vmldASinHATab+4104]
        mulsd     xmm15, xmm12
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4208]
        movsd     QWORD PTR [40+rsp], xmm15
        movsd     xmm8, QWORD PTR [40+rsp]
        subsd     xmm8, xmm12
        movsd     QWORD PTR [32+rsp], xmm8
        movaps    xmm8, xmm12
        movsd     xmm14, QWORD PTR [40+rsp]
        addsd     xmm12, xmm3
        mulsd     xmm5, xmm12
        mulsd     xmm0, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmldASinHATab+4184]
        mulsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldASinHATab+4200]
        mulsd     xmm1, xmm12
        movsd     xmm7, QWORD PTR [32+rsp]
        addsd     xmm5, xmm1
        subsd     xmm14, xmm7
        addsd     xmm5, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4176]
        movaps    xmm1, xmm4
        mulsd     xmm9, xmm0
        mulsd     xmm2, xmm0
        mulsd     xmm10, xmm0
        addsd     xmm1, xmm9
        addsd     xmm5, xmm2
        movsd     QWORD PTR [40+rsp], xmm14
        addsd     xmm5, xmm10
        movsd     xmm15, QWORD PTR [40+rsp]
        subsd     xmm8, xmm15
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm8, QWORD PTR [40+rsp]
        movsd     xmm7, QWORD PTR [32+rsp]
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm4, xmm0
        addsd     xmm4, xmm9
        movsd     QWORD PTR [32+rsp], xmm4
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm4, QWORD PTR [rip+_vmldASinHATab+4192]
        addsd     xmm1, xmm5
        mulsd     xmm3, xmm4
        mulsd     xmm8, xmm4
        mulsd     xmm4, xmm7
        addsd     xmm1, xmm3
        movaps    xmm3, xmm0
        addsd     xmm1, xmm4
        addsd     xmm3, xmm8
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm0, xmm5
        addsd     xmm0, xmm8
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm7, QWORD PTR [40+rsp]
        movsd     xmm2, QWORD PTR [32+rsp]
        mov       r8b, BYTE PTR [3+r8]
        addsd     xmm2, xmm1
        and       r8b, -128
        addsd     xmm7, xmm2
        movsd     QWORD PTR [48+rsp], xmm7
        mov       dl, BYTE PTR [55+rsp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [55+rsp], dl
        movsd     xmm8, QWORD PTR [48+rsp]
        cvtsd2ss  xmm8, xmm8
        movss     DWORD PTR [r9], xmm8
        jmp       .L_B7_11

.L_B7_6:

        comisd    xmm4, QWORD PTR [rip+_vmldASinHATab+4128]
        jb        .L_B7_8

.L_B7_7:

        addsd     xmm4, xmm0
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm0, QWORD PTR [40+rsp]
        mulsd     xmm0, QWORD PTR [56+rsp]
        movsd     QWORD PTR [48+rsp], xmm0
        mov       dl, BYTE PTR [55+rsp]
        mov       r8b, BYTE PTR [3+r8]
        and       dl, 127
        and       r8b, -128
        or        dl, r8b
        mov       BYTE PTR [55+rsp], dl
        movsd     xmm1, QWORD PTR [48+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        jmp       .L_B7_11

.L_B7_8:

        mulsd     xmm4, xmm4
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm0, QWORD PTR [40+rsp]
        mov       r8b, BYTE PTR [3+r8]
        and       r8b, -128
        addsd     xmm0, QWORD PTR [56+rsp]
        movsd     QWORD PTR [48+rsp], xmm0
        mov       dl, BYTE PTR [55+rsp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [55+rsp], dl
        movsd     xmm1, QWORD PTR [48+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        jmp       .L_B7_11

.L_B7_9:

        movaps    xmm7, xmm0
        movzx     r11d, WORD PTR [rip+_vmldASinHATab+4166]
        subsd     xmm7, xmm4
        mulsd     xmm2, xmm7
        and       r11d, -32753
        movsd     QWORD PTR [56+rsp], xmm2
        movzx     ecx, WORD PTR [62+rsp]
        and       ecx, 32752
        shr       ecx, 4
        add       ecx, -1023
        mov       r10d, ecx
        mov       edx, ecx
        neg       r10d
        add       r10d, 1023
        and       r10d, 2047
        shl       r10d, 4
        movsd     QWORD PTR [64+rsp], xmm0
        or        r11d, r10d
        mov       WORD PTR [70+rsp], r11w
        and       edx, 1
        movsd     xmm3, QWORD PTR [64+rsp]
        mov       r10d, edx
        mulsd     xmm2, xmm3
        movaps    xmm5, xmm2
        movsd     xmm1, QWORD PTR [rip+_vmldASinHATab+4112]
        addsd     xmm5, xmm2
        jne       .L113
        movaps    xmm5, xmm2
.L113:
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4120]
        movaps    xmm3, xmm5
        mulsd     xmm1, xmm5
        addsd     xmm2, xmm12
        movsd     QWORD PTR [72+rsp], xmm2
        movaps    xmm14, xmm1
        mov       r11d, DWORD PTR [72+rsp]
        sub       ecx, edx
        shl       r10d, 8
        and       r11d, 511
        add       r11d, r10d
        lea       r10, QWORD PTR [rip+__ImageBase]
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4496]
        subsd     xmm14, xmm5
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR ["_vmldASinHATab"@imgrel+r10+r11*8]
        subsd     xmm1, xmm4
        movaps    xmm8, xmm2
        movaps    xmm10, xmm1
        mulsd     xmm8, xmm2
        subsd     xmm3, xmm1
        mulsd     xmm1, xmm2
        mulsd     xmm10, xmm8
        mulsd     xmm8, xmm3
        subsd     xmm10, xmm0
        shr       ecx, 1
        addsd     xmm8, xmm10
        mulsd     xmm9, xmm8
        add       ecx, 1023
        and       ecx, 2047
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4488]
        mulsd     xmm9, xmm8
        movzx     r10d, WORD PTR [rip+_vmldASinHATab+4166]
        shl       ecx, 4
        and       r10d, -32753
        movsd     QWORD PTR [80+rsp], xmm0
        or        r10d, ecx
        mov       WORD PTR [86+rsp], r10w
        movsd     xmm0, QWORD PTR [80+rsp]
        mulsd     xmm1, xmm0
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4480]
        mulsd     xmm9, xmm8
        movsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4336]
        movsd     xmm4, QWORD PTR [rip+_vmldASinHATab+4320]
        movaps    xmm12, xmm4
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4472]
        addsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4344]
        addsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4328]
        mulsd     xmm9, xmm8
        mulsd     xmm14, xmm7
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4464]
        addsd     xmm12, xmm14
        mulsd     xmm9, xmm8
        mulsd     xmm12, xmm7
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4456]
        mulsd     xmm9, xmm8
        movaps    xmm14, xmm7
        movsd     xmm10, QWORD PTR [rip+_vmldASinHATab+4304]
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4448]
        addsd     xmm10, QWORD PTR [rip+_vmldASinHATab+4312]
        mulsd     xmm8, xmm9
        addsd     xmm10, xmm12
        mulsd     xmm8, xmm2
        mulsd     xmm2, xmm3
        mulsd     xmm5, xmm8
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4104]
        addsd     xmm2, xmm5
        mulsd     xmm9, xmm7
        mulsd     xmm2, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmldASinHATab+4104]
        mulsd     xmm5, xmm1
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm8, QWORD PTR [40+rsp]
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm8, xmm1
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm15, QWORD PTR [32+rsp]
        subsd     xmm3, xmm15
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm1, xmm5
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     QWORD PTR [40+rsp], xmm9
        addsd     xmm1, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4440]
        mulsd     xmm2, xmm7
        movsd     xmm8, QWORD PTR [40+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4432]
        subsd     xmm8, xmm7
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [32+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4424]
        subsd     xmm3, xmm0
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm15, QWORD PTR [40+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4416]
        subsd     xmm14, xmm15
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm8, QWORD PTR [40+rsp]
        movaps    xmm15, xmm8
        movaps    xmm0, xmm8
        mulsd     xmm15, xmm8
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4408]
        addsd     xmm0, xmm7
        mulsd     xmm8, xmm4
        mulsd     xmm2, xmm7
        mulsd     xmm12, xmm15
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4400]
        mulsd     xmm2, xmm7
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     QWORD PTR [40+rsp], xmm12
        movsd     xmm14, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm3
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4392]
        subsd     xmm14, xmm15
        mulsd     xmm4, xmm3
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm9, QWORD PTR [40+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4384]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4376]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4368]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4360]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4352]
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        addsd     xmm10, xmm2
        mulsd     xmm1, xmm10
        movsd     xmm10, QWORD PTR [32+rsp]
        subsd     xmm9, xmm10
        movsd     QWORD PTR [40+rsp], xmm9
        movsd     xmm14, QWORD PTR [40+rsp]
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4304]
        subsd     xmm15, xmm14
        movsd     QWORD PTR [32+rsp], xmm15
        movaps    xmm15, xmm8
        movsd     xmm10, QWORD PTR [40+rsp]
        mulsd     xmm10, QWORD PTR [rip+_vmldASinHATab+4336]
        movsd     xmm14, QWORD PTR [32+rsp]
        addsd     xmm15, xmm10
        addsd     xmm14, xmm0
        movsd     QWORD PTR [40+rsp], xmm15
        movsd     xmm12, QWORD PTR [40+rsp]
        movsd     QWORD PTR [72+rsp], xmm10
        subsd     xmm8, xmm12
        mulsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4336]
        addsd     xmm8, xmm10
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm10, QWORD PTR [40+rsp]
        movsd     xmm8, QWORD PTR [rip+_vmldASinHATab+4304]
        movsd     xmm12, QWORD PTR [32+rsp]
        addsd     xmm8, xmm10
        movsd     QWORD PTR [40+rsp], xmm8
        movsd     xmm8, QWORD PTR [40+rsp]
        movsd     xmm15, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm9, xmm8
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4344]
        addsd     xmm9, xmm10
        mulsd     xmm0, xmm7
        movsd     QWORD PTR [32+rsp], xmm9
        movsd     xmm9, QWORD PTR [40+rsp]
        mulsd     xmm15, xmm9
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4328]
        movsd     xmm10, QWORD PTR [32+rsp]
        movsd     QWORD PTR [40+rsp], xmm15
        movsd     xmm8, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm7
        subsd     xmm8, xmm9
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm8, QWORD PTR [40+rsp]
        movsd     xmm15, QWORD PTR [32+rsp]
        subsd     xmm8, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4312]
        movsd     QWORD PTR [40+rsp], xmm8
        addsd     xmm0, xmm2
        movsd     xmm15, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm5
        subsd     xmm9, xmm15
        movsd     QWORD PTR [32+rsp], xmm9
        movsd     xmm8, QWORD PTR [40+rsp]
        movsd     xmm9, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4152]
        addsd     xmm9, xmm12
        addsd     xmm9, xmm10
        addsd     xmm9, xmm4
        addsd     xmm9, xmm14
        mulsd     xmm9, xmm5
        mulsd     xmm5, xmm8
        addsd     xmm1, xmm9
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4144]
        movaps    xmm7, xmm0
        subsd     xmm2, xmm1
        subsd     xmm7, xmm5
        movsd     QWORD PTR [40+rsp], xmm7
        movsd     xmm7, QWORD PTR [40+rsp]
        subsd     xmm0, xmm7
        subsd     xmm0, xmm5
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm4, QWORD PTR [40+rsp]
        movsd     xmm3, QWORD PTR [32+rsp]
        mov       r8b, BYTE PTR [3+r8]
        addsd     xmm3, xmm2
        and       r8b, -128
        addsd     xmm4, xmm3
        movsd     QWORD PTR [48+rsp], xmm4
        mov       dl, BYTE PTR [55+rsp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [55+rsp], dl
        movsd     xmm1, QWORD PTR [48+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        jmp       .L_B7_11

.L_B7_10:

        mov       eax, 1
        subss     xmm1, xmm1
        divss     xmm1, xmm1
        movss     DWORD PTR [r9], xmm1

.L_B7_11:

        movups    xmm7, XMMWORD PTR [160+rsp]
        movups    xmm8, XMMWORD PTR [144+rsp]
        movups    xmm9, XMMWORD PTR [112+rsp]
        movups    xmm10, XMMWORD PTR [96+rsp]
        movups    xmm12, XMMWORD PTR [192+rsp]
        movups    xmm14, XMMWORD PTR [176+rsp]
        movups    xmm15, XMMWORD PTR [128+rsp]
        add       rsp, 216
        ret

.L_B7_12:

        divss     xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        test      DWORD PTR [r8], 8388607
        sete      al
        jmp       .L_B7_11
        .align    16, 0x90

.L_B7_13:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sasin_ha_cout_rare_internal_B1_B12:
        .long   1072129
        .long   686172
        .long   624724
        .long   497739
        .long   436293
        .long   837678
        .long   780323
        .long   587799
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_13
        .rva    _unwind___jsvml_sasin_ha_cout_rare_internal_B1_B12

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_sasin_ha_data_internal
__jsvml_sasin_ha_data_internal:
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
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
        .long   4294963200
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
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   4294965248
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   1073741824
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   3183476740
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1048576001
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1026481159
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1019423339
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1027250868
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1033468946
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1042983679
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   1070141403
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
        .long   3007036718
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
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   2147483648
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   4290772992
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1036306094
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   1042839218
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
        .long   939876771
_vmldASinHATab:
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
        .long   1071644672
        .long   0
        .long   1101004800
        .long   1073741824
        .long   1095761920
        .long   256
        .long   1118830592
        .long   0
        .long   1048576
        .long   0
        .long   1017118720
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   0
        .long   1072693248
        .long   0
        .long   1071644672
        .long   1476395008
        .long   1069897045
        .long   1768958041
        .long   3189069141
        .long   805306368
        .long   1068708659
        .long   3580333578
        .long   1040816593
        .long   3067382784
        .long   1067899757
        .long   3397590151
        .long   1067392113
        .long   2939529726
        .long   1066854585
        .long   1423429166
        .long   1066517752
        .long   1775218934
        .long   1066178574
        .long   1185392460
        .long   1065859647
        .long   289998670
        .long   1065577550
        .long   3179807072
        .long   1065648121
        .long   3781007284
        .long   1061576176
        .long   2482106687
        .long   1067019199
        .long   763519713
        .long   3214591591
        .long   3695107454
        .long   1067530646
        .long   0
        .long   1073741824
        .long   1124791109
        .long   1006764147
        .long   1476395008
        .long   1069897045
        .long   1953913876
        .long   3189069141
        .long   805306368
        .long   1067660083
        .long   165110192
        .long   1039768033
        .long   3067304082
        .long   1065802605
        .long   3404727379
        .long   1064246385
        .long   2737480376
        .long   1062660281
        .long   933797922
        .long   1061274873
        .long   1475716730
        .long   1059887095
        .long   1511619763
        .long   1058519827
        .long   556024211
        .long   1057187555
        .long   3482101045
        .long   1056217350
        .long   1174622859
        .long   1050762633
        .long   899668651
        .long   1055506366
        .long   1081094694
        .long   3202035365
        .long   2559814773
        .long   1053906576
        .long   0
        .long   3219128320
        .long   0
        .long   1071120384
        .long   0
        .long   3218341888
        .long   0
        .long   1070694400
        .long   0
        .long   3218046976
        .long   0
        .long   1070391296
        .long   0
        .long   3217739776
        .data
#endif
