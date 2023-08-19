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
        .globl __jsvml_acosf16_ha_z0

__jsvml_acosf16_ha_z0:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        vmovaps   zmm5, zmm0
        vorps     zmm4, zmm22, zmm5
        vandps    zmm3, zmm22, zmm5
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        vfmadd231ps zmm27, zmm27, zmm4 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        vmulps    zmm23, zmm4, zmm4 {rn-sae}
        vrsqrt14ps zmm25, zmm27
        vcmpps    k3, zmm27, zmm26, 17 {sae}
        vcmpps    k2, zmm24, zmm4, 22 {sae}
        vminps    zmm2, zmm23, zmm27 {sae}
        vaddps    zmm28, zmm27, zmm27 {rn-sae}
        vandps    zmm31, zmm25, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+384]
        vcmpps    k1, zmm2, zmm27, 21 {sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        vandps    zmm29, zmm28, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        vxorps    zmm31{k3}, zmm31, zmm31
        vorps     zmm2{k2}, zmm2, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1344]
        vsubps    zmm30, zmm28, zmm29 {rn-sae}
        vmulps    zmm1, zmm29, zmm31 {rn-sae}
        vmulps    zmm29, zmm2, zmm2 {rn-sae}
        vmulps    zmm26, zmm30, zmm31 {rn-sae}
        vcmpps    k2{k1}, zmm2, zmm5, 21 {sae}
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        vfmsub231ps zmm0, zmm31, zmm1 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1216]
        vmulps    zmm31, zmm26, zmm31 {rn-sae}
        vfmadd231ps zmm30, zmm28, zmm2 {rn-sae}
        vaddps    zmm23, zmm1, zmm26 {rn-sae}
        vaddps    zmm24, zmm0, zmm31 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        vmulps    zmm25, zmm23, zmm24 {rn-sae}
        vfmadd231ps zmm0, zmm22, zmm24 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        vfmsub213ps zmm0, zmm25, zmm26 {rn-sae}
        vfmadd231ps zmm22, zmm27, zmm2 {rn-sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        vblendmps zmm0{k1}, zmm5, zmm0
        vblendmps zmm5{k1}, zmm4, zmm1
        vfmadd213ps zmm22, zmm29, zmm30 {rn-sae}
        vsubps    zmm1, zmm5, zmm0 {rn-sae}
        vfmadd213ps zmm22, zmm2, zmm27 {rn-sae}
        vmulps    zmm23, zmm22, zmm2 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        vxorps    zmm2{k1}, zmm2, zmm2
        vxorps    zmm22{k1}, zmm22, zmm22
        vorps     zmm2{k2}, zmm2, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        vorps     zmm22{k2}, zmm22, ZMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        vxorps    zmm2, zmm2, zmm3
        vsubps    zmm4, zmm2, zmm0 {rn-sae}
        vfmadd213ps zmm23, zmm1, zmm4 {rn-sae}
        vaddps    zmm0, zmm23, zmm5 {rn-sae}
        vxorps    zmm3, zmm0, zmm3
        vaddps    zmm0, zmm3, zmm22 {rn-sae}
        ret
        .align    16, 0x90

.L_B1_2:

        .section .drectve
        .ascii " -export \"__jsvml_acosf16_ha_z0\""

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_acosf4_ha_ex

__jsvml_acosf4_ha_ex:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L2:

        sub       rsp, 296
        movups    XMMWORD PTR [240+rsp], xmm15
        movups    XMMWORD PTR [224+rsp], xmm10
        movups    XMMWORD PTR [192+rsp], xmm9
        movaps    xmm9, xmm0
        movups    XMMWORD PTR [208+rsp], xmm8
        movups    XMMWORD PTR [256+rsp], xmm7
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm8, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        and       r13, -64
        movaps    xmm1, xmm8
        andps     xmm8, xmm9
        orps      xmm1, xmm9
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        movaps    xmm4, xmm1
        mulps     xmm4, xmm2
        movaps    xmm0, xmm1
        mulps     xmm0, xmm1
        addps     xmm2, xmm4
        movups    xmm3, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        movaps    xmm5, xmm2
        cmpnleps  xmm3, xmm1
        minps     xmm0, xmm2
        cmpltps   xmm5, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        rsqrtps   xmm7, xmm2
        movmskps  eax, xmm3
        movaps    xmm3, xmm0
        andnps    xmm5, xmm7
        movups    xmm10, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        movaps    xmm4, xmm5
        cmpnltps  xmm3, xmm2
        addps     xmm2, xmm2
        movaps    xmm7, xmm2
        andps     xmm7, xmm10
        mov       QWORD PTR [280+rsp], r13
        subps     xmm2, xmm7
        mulps     xmm7, xmm5
        mulps     xmm2, xmm5
        andps     xmm10, xmm7
        movaps    xmm15, xmm7
        mulps     xmm4, xmm2
        subps     xmm15, xmm10
        mulps     xmm10, xmm5
        mulps     xmm5, xmm15
        subps     xmm10, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        movaps    xmm15, xmm7
        andps     xmm7, xmm3
        addps     xmm4, xmm10
        movups    xmm10, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        addps     xmm15, xmm2
        addps     xmm5, xmm4
        movups    xmm4, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        mulps     xmm4, xmm5
        mulps     xmm5, xmm15
        addps     xmm4, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        movups    xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        mulps     xmm4, xmm5
        mulps     xmm15, xmm0
        subps     xmm4, xmm2
        addps     xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        movups    xmm5, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        movaps    xmm2, xmm0
        mulps     xmm5, xmm0
        andps     xmm4, xmm3
        mulps     xmm2, xmm0
        addps     xmm5, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        mulps     xmm15, xmm2
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        addps     xmm5, xmm15
        mulps     xmm5, xmm0
        movaps    xmm15, xmm3
        andnps    xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        addps     xmm5, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        mulps     xmm5, xmm0
        cmpnltps  xmm0, xmm9
        andps     xmm0, xmm3
        andps     xmm10, xmm0
        andps     xmm2, xmm0
        movaps    xmm0, xmm3
        andnps    xmm3, xmm1
        orps      xmm7, xmm3
        orps      xmm15, xmm10
        movaps    xmm1, xmm7
        pxor      xmm15, xmm8
        andnps    xmm0, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        subps     xmm1, xmm4
        subps     xmm15, xmm4
        mulps     xmm5, xmm1
        orps      xmm0, xmm2
        addps     xmm15, xmm5
        addps     xmm7, xmm15
        pxor      xmm7, xmm8
        addps     xmm0, xmm7
        test      eax, eax
        jne       .L_B2_3

.L_B2_2:

        movups    xmm7, XMMWORD PTR [256+rsp]
        movups    xmm8, XMMWORD PTR [208+rsp]
        movups    xmm9, XMMWORD PTR [192+rsp]
        movups    xmm10, XMMWORD PTR [224+rsp]
        movups    xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B2_3:

        movups    XMMWORD PTR [r13], xmm9
        movups    XMMWORD PTR [64+r13], xmm0

.L_B2_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B2_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sacos_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_acosf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_ex_B1_B3:
        .long   934657
        .long   2282563
        .long   1079355
        .long   886835
        .long   825382
        .long   960541
        .long   1046548
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_acosf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_acosf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_acosf4_ha_ex_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_acosf8_ha_e9

__jsvml_acosf8_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L19:

        sub       rsp, 552
        vmovups   YMMWORD PTR [464+rsp], ymm15
        vmovups   YMMWORD PTR [432+rsp], ymm14
        vmovups   YMMWORD PTR [400+rsp], ymm13
        vmovups   YMMWORD PTR [496+rsp], ymm7
        vmovups   YMMWORD PTR [368+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        and       r13, -64
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        vmovaps   ymm7, ymm0
        vorps     ymm4, ymm5, ymm7
        vmulps    ymm1, ymm4, ymm3
        vmulps    ymm6, ymm4, ymm4
        vcmpnge_uqps ymm14, ymm4, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        vaddps    ymm2, ymm3, ymm1
        vpxor     xmm1, xmm1, xmm1
        vminps    ymm3, ymm6, ymm2
        vcmplt_oqps ymm0, ymm2, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        vandps    ymm5, ymm5, ymm7
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm13, ymm14, 1
        vpackssdw xmm15, xmm14, xmm13
        vrsqrtps  ymm14, ymm2
        vpacksswb xmm6, xmm15, xmm1
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        vpmovmskb edx, xmm6
        vcmpnlt_uqps ymm6, ymm3, ymm2
        vaddps    ymm2, ymm2, ymm2
        vandnps   ymm13, ymm0, ymm14
        vandps    ymm0, ymm2, ymm1
        vmulps    ymm15, ymm13, ymm0
        vsubps    ymm2, ymm2, ymm0
        vmulps    ymm14, ymm13, ymm2
        vandps    ymm1, ymm15, ymm1
        vsubps    ymm0, ymm15, ymm1
        vmulps    ymm1, ymm13, ymm1
        vmulps    ymm2, ymm13, ymm14
        vmulps    ymm0, ymm13, ymm0
        vsubps    ymm13, ymm1, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        vaddps    ymm1, ymm2, ymm13
        vaddps    ymm13, ymm15, ymm14
        vaddps    ymm0, ymm0, ymm1
        vmulps    ymm2, ymm0, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        vaddps    ymm1, ymm2, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        vmulps    ymm2, ymm0, ymm13
        vmulps    ymm0, ymm1, ymm2
        vmulps    ymm1, ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        vsubps    ymm14, ymm0, ymm14
        vandps    ymm0, ymm15, ymm6
        vmulps    ymm15, ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        vandps    ymm2, ymm14, ymm6
        vmulps    ymm14, ymm3, ymm3
        vaddps    ymm13, ymm15, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        vaddps    ymm15, ymm1, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        vmulps    ymm1, ymm13, ymm14
        vaddps    ymm13, ymm15, ymm1
        vmulps    ymm14, ymm3, ymm13
        vaddps    ymm15, ymm14, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        vmulps    ymm1, ymm3, ymm15
        vcmpnlt_uqps ymm3, ymm3, ymm7
        vandps    ymm13, ymm3, ymm6
        vandps    ymm15, ymm13, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        vandps    ymm14, ymm13, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        vandnps   ymm3, ymm6, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        vandnps   ymm13, ymm6, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        vandnps   ymm6, ymm6, ymm4
        vorps     ymm6, ymm0, ymm6
        vsubps    ymm0, ymm6, ymm2
        vorps     ymm3, ymm3, ymm15
        vmulps    ymm1, ymm1, ymm0
        vorps     ymm4, ymm13, ymm14
        vxorps    ymm14, ymm3, ymm5
        vsubps    ymm2, ymm14, ymm2
        vaddps    ymm15, ymm2, ymm1
        vaddps    ymm0, ymm6, ymm15
        vxorps    ymm5, ymm0, ymm5
        vaddps    ymm0, ymm4, ymm5
        test      dl, dl
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm6, YMMWORD PTR [368+rsp]
        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm13, YMMWORD PTR [400+rsp]
        vmovups   ymm14, YMMWORD PTR [432+rsp]
        vmovups   ymm15, YMMWORD PTR [464+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vmovups   YMMWORD PTR [r13], ymm7
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B3_2

.L_B3_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm8
        vmovups   YMMWORD PTR [128+rsp], ymm9
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm11
        vmovups   YMMWORD PTR [32+rsp], ymm12
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

        vmovups   ymm8, YMMWORD PTR [160+rsp]
        vmovups   ymm9, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm11, YMMWORD PTR [64+rsp]
        vmovups   ymm12, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sacos_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_acosf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf8_ha_e9_B1_B3:
        .long   933889
        .long   4379712
        .long   1534008
        .long   2062383
        .long   1693734
        .long   1828893
        .long   1964052
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_acosf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf8_ha_e9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   182310
        .long   309280
        .long   436250
        .long   563220
        .long   690187
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_acosf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_acosf8_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_acosf8_ha_l9

__jsvml_acosf8_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L46:

        sub       rsp, 552
        vmovups   YMMWORD PTR [368+rsp], ymm12
        vmovups   YMMWORD PTR [432+rsp], ymm11
        vmovups   YMMWORD PTR [400+rsp], ymm10
        vmovups   YMMWORD PTR [464+rsp], ymm8
        vmovups   YMMWORD PTR [496+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        and       r13, -64
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        vmovdqa   ymm7, ymm0
        vorps     ymm1, ymm5, ymm7
        vfmadd231ps ymm3, ymm3, ymm1
        vmulps    ymm12, ymm1, ymm1
        vcmpnge_uqps ymm4, ymm1, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        vcmplt_oqps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        vminps    ymm8, ymm12, ymm3
        vrsqrtps  ymm12, ymm3
        vcmpnlt_uqps ymm0, ymm8, ymm3
        vaddps    ymm3, ymm3, ymm3
        vmovmskps edx, ymm4
        vandps    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        test      edx, edx
        vandnps   ymm10, ymm2, ymm12
        vsubps    ymm2, ymm3, ymm4
        vmovups   ymm12, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        vmulps    ymm11, ymm10, ymm4
        vmulps    ymm2, ymm10, ymm2
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        vfmsub231ps ymm12, ymm10, ymm11
        vmulps    ymm10, ymm10, ymm2
        vaddps    ymm4, ymm11, ymm2
        vaddps    ymm12, ymm12, ymm10
        vfmadd213ps ymm3, ymm12, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        vmulps    ymm4, ymm4, ymm12
        vmovups   ymm12, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        vfmsub213ps ymm3, ymm4, ymm2
        vfmadd213ps ymm12, ymm8, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        vandps    ymm4, ymm3, ymm0
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        vfmadd213ps ymm3, ymm8, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        vandps    ymm2, ymm11, ymm0
        vmulps    ymm11, ymm8, ymm8
        vfmadd213ps ymm3, ymm11, ymm12
        vfmadd213ps ymm3, ymm8, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        vmulps    ymm3, ymm8, ymm3
        vcmpnlt_uqps ymm8, ymm8, ymm7
        vandps    ymm12, ymm8, ymm0
        vandps    ymm11, ymm12, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        vandnps   ymm10, ymm0, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        vandnps   ymm8, ymm0, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        vandps    ymm5, ymm5, ymm7
        vandnps   ymm1, ymm0, ymm1
        vorps     ymm0, ymm10, ymm11
        vxorps    ymm0, ymm0, ymm5
        vorps     ymm2, ymm2, ymm1
        vsubps    ymm1, ymm2, ymm4
        vsubps    ymm0, ymm0, ymm4
        vfmadd213ps ymm3, ymm1, ymm0
        vaddps    ymm1, ymm2, ymm3
        vandps    ymm12, ymm12, YMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        vorps     ymm12, ymm8, ymm12
        vxorps    ymm5, ymm1, ymm5
        mov       QWORD PTR [536+rsp], r13
        vaddps    ymm0, ymm12, ymm5
        jne       .L_B4_3

.L_B4_2:

        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm10, YMMWORD PTR [400+rsp]
        vmovups   ymm11, YMMWORD PTR [432+rsp]
        vmovups   ymm12, YMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B4_3:

        vmovups   YMMWORD PTR [r13], ymm7
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B4_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm6
        vmovups   YMMWORD PTR [128+rsp], ymm9
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, edx

.L_B4_7:

        bt        esi, ebx
        jc        .L_B4_10

.L_B4_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B4_7

.L_B4_9:

        vmovups   ymm6, YMMWORD PTR [160+rsp]
        vmovups   ymm9, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sacos_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_acosf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf8_ha_l9_B1_B3:
        .long   933889
        .long   4379712
        .long   2062392
        .long   1935407
        .long   1681446
        .long   1816605
        .long   1558548
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_acosf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf8_ha_l9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   194598
        .long   321568
        .long   448538
        .long   563220
        .long   681995
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_acosf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_acosf8_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_acosf4_ha_l9

__jsvml_acosf4_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L73:

        sub       rsp, 296
        vmovdqa   xmm5, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm12
        vmovups   XMMWORD PTR [224+rsp], xmm11
        vmovups   XMMWORD PTR [208+rsp], xmm10
        vmovups   XMMWORD PTR [240+rsp], xmm8
        vmovups   XMMWORD PTR [256+rsp], xmm7
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        and       r13, -64
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        vorps     xmm7, xmm3, xmm5
        vfmadd231ps xmm1, xmm1, xmm7
        vandps    xmm3, xmm3, xmm5
        vmulps    xmm4, xmm7, xmm7
        vcmpngeps xmm11, xmm7, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        vcmpltps  xmm2, xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        vminps    xmm8, xmm4, xmm1
        vmovmskps edx, xmm11
        vrsqrtps  xmm11, xmm1
        vcmpnltps xmm4, xmm8, xmm1
        vaddps    xmm1, xmm1, xmm1
        vandnps   xmm10, xmm2, xmm11
        vandnps   xmm7, xmm4, xmm7
        vandps    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        test      edx, edx
        vmulps    xmm12, xmm10, xmm2
        vsubps    xmm0, xmm1, xmm2
        vmulps    xmm0, xmm10, xmm0
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        vaddps    xmm2, xmm12, xmm0
        vfmsub231ps xmm11, xmm10, xmm12
        vmulps    xmm10, xmm10, xmm0
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        vaddps    xmm11, xmm11, xmm10
        vfmadd213ps xmm1, xmm11, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        vmulps    xmm2, xmm2, xmm11
        vfmsub213ps xmm1, xmm2, xmm0
        vandps    xmm0, xmm12, xmm4
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        vorps     xmm0, xmm0, xmm7
        vfmadd213ps xmm11, xmm8, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        vmulps    xmm12, xmm8, xmm8
        vandps    xmm2, xmm1, xmm4
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        vsubps    xmm7, xmm0, xmm2
        vfmadd213ps xmm1, xmm8, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        vfmadd213ps xmm1, xmm12, xmm11
        vandnps   xmm12, xmm4, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        vfmadd213ps xmm1, xmm8, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        vmulps    xmm1, xmm8, xmm1
        vcmpnltps xmm8, xmm8, xmm5
        vandps    xmm11, xmm8, xmm4
        vandps    xmm10, xmm11, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        vandnps   xmm8, xmm4, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        vorps     xmm4, xmm8, xmm10
        vxorps    xmm4, xmm4, xmm3
        vandps    xmm11, xmm11, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        vsubps    xmm2, xmm4, xmm2
        vfmadd213ps xmm1, xmm7, xmm2
        vorps     xmm11, xmm12, xmm11
        mov       QWORD PTR [280+rsp], r13
        vaddps    xmm1, xmm0, xmm1
        vxorps    xmm3, xmm1, xmm3
        vaddps    xmm0, xmm11, xmm3
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm7, XMMWORD PTR [256+rsp]
        vmovups   xmm8, XMMWORD PTR [240+rsp]
        vmovups   xmm10, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [224+rsp]
        vmovups   xmm12, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B5_3:

        vmovups   XMMWORD PTR [r13], xmm5
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

        call      __jsvml_sacos_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_acosf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_l9_B1_B3:
        .long   934913
        .long   2282564
        .long   1079356
        .long   1017907
        .long   895018
        .long   964641
        .long   837656
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_acosf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_acosf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_acosf4_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_acosf4_ha_e9

__jsvml_acosf4_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L90:

        sub       rsp, 296
        vmovups   XMMWORD PTR [224+rsp], xmm15
        vmovups   XMMWORD PTR [240+rsp], xmm9
        vmovups   XMMWORD PTR [192+rsp], xmm8
        vmovups   XMMWORD PTR [208+rsp], xmm7
        vmovaps   xmm7, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal]
        and       r13, -64
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+64]
        vorps     xmm4, xmm5, xmm7
        vmulps    xmm3, xmm4, xmm2
        vandps    xmm5, xmm5, xmm7
        vcmpngeps xmm6, xmm4, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+256]
        vmulps    xmm1, xmm4, xmm4
        vaddps    xmm15, xmm2, xmm3
        vmovmskps edx, xmm6
        vrsqrtps  xmm0, xmm15
        vcmpltps  xmm2, xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+192]
        vminps    xmm3, xmm1, xmm15
        vaddps    xmm9, xmm15, xmm15
        vcmpnltps xmm6, xmm3, xmm15
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+320]
        vandnps   xmm8, xmm2, xmm0
        vandps    xmm2, xmm9, xmm1
        vmulps    xmm15, xmm8, xmm2
        vsubps    xmm0, xmm9, xmm2
        vandps    xmm1, xmm15, xmm1
        vmulps    xmm9, xmm8, xmm0
        vsubps    xmm0, xmm15, xmm1
        vmulps    xmm1, xmm8, xmm1
        vmulps    xmm2, xmm8, xmm9
        vmulps    xmm0, xmm8, xmm0
        vsubps    xmm8, xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+448]
        mov       QWORD PTR [280+rsp], r13
        vaddps    xmm1, xmm2, xmm8
        vaddps    xmm8, xmm15, xmm9
        vaddps    xmm0, xmm0, xmm1
        vmulps    xmm2, xmm0, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+512]
        vaddps    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+576]
        vmulps    xmm2, xmm0, xmm8
        vmulps    xmm0, xmm1, xmm2
        vmulps    xmm1, xmm3, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+768]
        vsubps    xmm9, xmm0, xmm9
        vaddps    xmm8, xmm1, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+832]
        vandps    xmm0, xmm15, xmm6
        vandps    xmm2, xmm9, xmm6
        vmulps    xmm15, xmm3, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+640]
        vaddps    xmm9, xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+704]
        vmulps    xmm15, xmm3, xmm3
        vmulps    xmm1, xmm9, xmm15
        vaddps    xmm9, xmm8, xmm1
        vmulps    xmm15, xmm3, xmm9
        vaddps    xmm8, xmm15, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+896]
        vmulps    xmm1, xmm3, xmm8
        vcmpnltps xmm3, xmm3, xmm7
        vandps    xmm9, xmm3, xmm6
        vandps    xmm3, xmm9, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1152]
        vandps    xmm15, xmm9, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1088]
        vandnps   xmm8, xmm6, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+1024]
        vandnps   xmm9, xmm6, XMMWORD PTR [rip+__jsvml_sacos_ha_data_internal+960]
        vandnps   xmm6, xmm6, xmm4
        vorps     xmm6, xmm0, xmm6
        vorps     xmm3, xmm8, xmm3
        vxorps    xmm8, xmm3, xmm5
        vorps     xmm4, xmm9, xmm15
        vsubps    xmm0, xmm6, xmm2
        vsubps    xmm2, xmm8, xmm2
        vmulps    xmm1, xmm1, xmm0
        vaddps    xmm15, xmm2, xmm1
        vaddps    xmm0, xmm6, xmm15
        vxorps    xmm5, xmm0, xmm5
        vaddps    xmm0, xmm4, xmm5
        test      edx, edx
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm7, XMMWORD PTR [208+rsp]
        vmovups   xmm8, XMMWORD PTR [192+rsp]
        vmovups   xmm9, XMMWORD PTR [240+rsp]
        vmovups   xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B6_3:

        vmovups   XMMWORD PTR [r13], xmm7
        vmovups   XMMWORD PTR [64+r13], xmm0

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
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sacos_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_acosf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_e9_B1_B3:
        .long   934913
        .long   2282564
        .long   1075260
        .long   882735
        .long   821286
        .long   1021981
        .long   981012
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_acosf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_acosf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_acosf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_acosf4_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_sacos_ha_cout_rare_internal

__jsvml_sacos_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L107:

        push      rbp
        sub       rsp, 192
        lea       rbp, QWORD PTR [32+rsp]
        mov       r8, rcx
        movups    XMMWORD PTR [128+rbp], xmm15
        mov       r9, rdx
        movups    XMMWORD PTR [144+rbp], xmm14
        xor       eax, eax
        movups    XMMWORD PTR [112+rbp], xmm12
        movzx     r10d, WORD PTR [2+r8]
        and       r10d, 32640
        movss     xmm2, DWORD PTR [r8]
        movups    XMMWORD PTR [96+rbp], xmm11
        movups    XMMWORD PTR [80+rbp], xmm10
        movups    XMMWORD PTR [48+rbp], xmm8
        movups    XMMWORD PTR [64+rbp], xmm7
        cmp       r10d, 32640
        je        .L_B7_20

.L_B7_2:

        pxor      xmm1, xmm1
        cvtss2sd  xmm1, xmm2
        movsd     QWORD PTR [24+rbp], xmm1
        and       BYTE PTR [31+rbp], 127
        movsd     xmm4, QWORD PTR [24+rbp]
        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4168]
        comisd    xmm0, xmm4
        jbe       .L_B7_14

.L_B7_3:

        movsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4176]
        comisd    xmm2, xmm4
        jbe       .L_B7_10

.L_B7_4:

        comisd    xmm4, QWORD PTR [rip+_vmldACosHATab+4128]
        jbe       .L_B7_9

.L_B7_5:

        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4104]
        movaps    xmm2, xmm4
        mulsd     xmm0, xmm4
        movaps    xmm15, xmm4
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4312]
        movsd     xmm11, QWORD PTR [rip+_vmldACosHATab+4104]
        subsd     xmm8, QWORD PTR [24+rbp]
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm7, QWORD PTR [8+rbp]
        subsd     xmm3, xmm7
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm10, QWORD PTR [16+rbp]
        subsd     xmm2, xmm10
        movsd     QWORD PTR [8+rbp], xmm2
        movsd     xmm1, QWORD PTR [16+rbp]
        movaps    xmm10, xmm1
        addsd     xmm15, xmm1
        mulsd     xmm10, xmm1
        movsd     xmm14, QWORD PTR [8+rbp]
        movaps    xmm5, xmm10
        mulsd     xmm15, xmm14
        mulsd     xmm11, xmm10
        addsd     xmm5, xmm15
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [16+rbp], xmm11
        movsd     xmm12, QWORD PTR [16+rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4304]
        subsd     xmm12, xmm10
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [8+rbp], xmm12
        movsd     xmm7, QWORD PTR [16+rbp]
        movsd     xmm8, QWORD PTR [8+rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4296]
        subsd     xmm7, xmm8
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [16+rbp], xmm7
        movsd     xmm3, QWORD PTR [16+rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4288]
        subsd     xmm10, xmm3
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [8+rbp], xmm10
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm2, QWORD PTR [8+rbp]
        mulsd     xmm14, xmm3
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4280]
        addsd     xmm15, xmm2
        mulsd     xmm1, xmm3
        mulsd     xmm0, xmm5
        movaps    xmm2, xmm4
        movaps    xmm12, xmm1
        mulsd     xmm2, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4272]
        mulsd     xmm0, xmm5
        addsd     xmm2, xmm14
        movsd     xmm14, QWORD PTR [rip+_vmldACosHATab+4104]
        mulsd     xmm14, xmm1
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4264]
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm8, QWORD PTR [16+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm8, xmm1
        addsd     xmm1, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4256]
        mulsd     xmm15, xmm1
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm10, QWORD PTR [16+rbp]
        movsd     xmm7, QWORD PTR [8+rbp]
        subsd     xmm10, xmm7
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4248]
        movsd     QWORD PTR [16+rbp], xmm10
        movsd     xmm11, QWORD PTR [16+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm12, xmm11
        movsd     QWORD PTR [8+rbp], xmm12
        movaps    xmm12, xmm3
        movsd     xmm10, QWORD PTR [16+rbp]
        movsd     xmm11, QWORD PTR [8+rbp]
        movaps    xmm8, xmm11
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4240]
        mulsd     xmm12, xmm10
        addsd     xmm8, xmm2
        mulsd     xmm0, xmm5
        mulsd     xmm3, xmm8
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4232]
        addsd     xmm3, xmm15
        mulsd     xmm0, xmm5
        movsd     xmm15, QWORD PTR [rip+_vmldACosHATab+4104]
        mulsd     xmm15, xmm12
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4224]
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm8, QWORD PTR [16+rbp]
        subsd     xmm8, xmm12
        movsd     QWORD PTR [8+rbp], xmm8
        movaps    xmm8, xmm12
        movsd     xmm14, QWORD PTR [16+rbp]
        addsd     xmm12, xmm3
        mulsd     xmm5, xmm12
        mulsd     xmm0, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmldACosHATab+4200]
        mulsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldACosHATab+4216]
        mulsd     xmm1, xmm12
        movsd     xmm7, QWORD PTR [8+rbp]
        addsd     xmm5, xmm1
        subsd     xmm14, xmm7
        addsd     xmm5, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4192]
        mulsd     xmm2, xmm0
        mulsd     xmm10, xmm0
        mulsd     xmm11, xmm0
        addsd     xmm5, xmm2
        movsd     QWORD PTR [16+rbp], xmm14
        movaps    xmm2, xmm4
        movsd     xmm15, QWORD PTR [16+rbp]
        addsd     xmm2, xmm10
        subsd     xmm8, xmm15
        addsd     xmm5, xmm11
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm7, QWORD PTR [8+rbp]
        movsd     QWORD PTR [16+rbp], xmm2
        movsd     xmm1, QWORD PTR [16+rbp]
        movsd     QWORD PTR [rbp], xmm10
        subsd     xmm4, xmm1
        addsd     xmm4, xmm10
        movsd     QWORD PTR [8+rbp], xmm4
        movsd     xmm4, QWORD PTR [rip+_vmldACosHATab+4208]
        mulsd     xmm8, xmm4
        mulsd     xmm3, xmm4
        mulsd     xmm4, xmm7
        movsd     xmm1, QWORD PTR [16+rbp]
        movaps    xmm0, xmm1
        movsd     xmm2, QWORD PTR [8+rbp]
        addsd     xmm0, xmm8
        addsd     xmm2, xmm5
        movsd     QWORD PTR [16+rbp], xmm0
        pxor      xmm5, xmm5
        addsd     xmm2, xmm3
        movsd     xmm3, QWORD PTR [16+rbp]
        subsd     xmm1, xmm3
        addsd     xmm2, xmm4
        addsd     xmm1, xmm8
        movsd     QWORD PTR [8+rbp], xmm1
        cvtss2sd  xmm5, DWORD PTR [r8]
        movsd     xmm4, QWORD PTR [16+rbp]
        movsd     xmm0, QWORD PTR [8+rbp]
        comisd    xmm5, QWORD PTR [rip+_vmldACosHATab+4184]
        addsd     xmm0, xmm2
        jbe       .L_B7_7

.L_B7_6:

        movsd     xmm3, QWORD PTR [rip+_vmldACosHATab+4136]
        movaps    xmm1, xmm3
        subsd     xmm1, xmm4
        movsd     QWORD PTR [16+rbp], xmm1
        movsd     xmm2, QWORD PTR [16+rbp]
        subsd     xmm3, xmm2
        subsd     xmm3, xmm4
        movsd     xmm4, QWORD PTR [rip+_vmldACosHATab+4144]
        subsd     xmm4, xmm0
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     xmm1, QWORD PTR [8+rbp]
        addsd     xmm1, xmm4
        jmp       .L_B7_8

.L_B7_7:

        movsd     xmm3, QWORD PTR [rip+_vmldACosHATab+4136]
        movaps    xmm1, xmm4
        addsd     xmm1, xmm3
        movsd     QWORD PTR [16+rbp], xmm1
        movsd     xmm2, QWORD PTR [16+rbp]
        subsd     xmm3, xmm2
        addsd     xmm3, xmm4
        movsd     xmm4, QWORD PTR [rip+_vmldACosHATab+4144]
        addsd     xmm0, xmm4
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     xmm1, QWORD PTR [8+rbp]
        addsd     xmm1, xmm0

.L_B7_8:

        addsd     xmm2, xmm1
        cvtsd2ss  xmm2, xmm2
        movss     DWORD PTR [r9], xmm2
        jmp       .L_B7_17

.L_B7_9:

        movsd     xmm1, QWORD PTR [rip+_vmldACosHATab+4144]
        addsd     xmm4, xmm0
        movsd     QWORD PTR [16+rbp], xmm4
        movsd     xmm0, QWORD PTR [16+rbp]
        mulsd     xmm0, QWORD PTR [24+rbp]
        movsd     QWORD PTR [rbp], xmm0
        mov       dl, BYTE PTR [7+rbp]
        mov       r8b, BYTE PTR [3+r8]
        and       dl, 127
        and       r8b, -128
        or        dl, r8b
        mov       BYTE PTR [7+rbp], dl
        subsd     xmm1, QWORD PTR [rbp]
        addsd     xmm1, QWORD PTR [rip+_vmldACosHATab+4136]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        jmp       .L_B7_17

.L_B7_10:

        movaps    xmm7, xmm0
        movzx     r11d, WORD PTR [rip+_vmldACosHATab+4174]
        subsd     xmm7, xmm4
        mulsd     xmm2, xmm7
        and       r11d, -32753
        movsd     QWORD PTR [rbp], xmm2
        movzx     ecx, WORD PTR [6+rbp]
        and       ecx, 32752
        shr       ecx, 4
        add       ecx, -1023
        mov       r10d, ecx
        mov       edx, ecx
        neg       r10d
        add       r10d, 1023
        and       r10d, 2047
        shl       r10d, 4
        movsd     QWORD PTR [24+rbp], xmm0
        or        r11d, r10d
        mov       WORD PTR [30+rbp], r11w
        and       edx, 1
        movsd     xmm1, QWORD PTR [24+rbp]
        mov       r10d, edx
        mulsd     xmm2, xmm1
        movaps    xmm5, xmm2
        movsd     xmm1, QWORD PTR [rip+_vmldACosHATab+4112]
        addsd     xmm5, xmm2
        jne       .L115
        movaps    xmm5, xmm2
.L115:
        movsd     xmm14, QWORD PTR [rip+_vmldACosHATab+4120]
        movaps    xmm10, xmm5
        mulsd     xmm1, xmm5
        addsd     xmm2, xmm14
        movsd     QWORD PTR [32+rbp], xmm2
        movaps    xmm8, xmm1
        mov       r11d, DWORD PTR [32+rbp]
        sub       ecx, edx
        shl       r10d, 8
        and       r11d, 511
        add       r11d, r10d
        lea       r10, QWORD PTR [rip+__ImageBase]
        movsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4512]
        subsd     xmm8, xmm5
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     xmm2, QWORD PTR ["_vmldACosHATab"@imgrel+r10+r11*8]
        subsd     xmm1, xmm3
        movaps    xmm11, xmm2
        movaps    xmm4, xmm1
        mulsd     xmm11, xmm2
        subsd     xmm10, xmm1
        mulsd     xmm1, xmm2
        mulsd     xmm4, xmm11
        mulsd     xmm11, xmm10
        subsd     xmm4, xmm0
        shr       ecx, 1
        addsd     xmm11, xmm4
        mulsd     xmm12, xmm11
        add       ecx, 1023
        and       ecx, 2047
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4504]
        mulsd     xmm12, xmm11
        movzx     r10d, WORD PTR [rip+_vmldACosHATab+4174]
        shl       ecx, 4
        and       r10d, -32753
        movsd     QWORD PTR [40+rbp], xmm0
        or        r10d, ecx
        mov       WORD PTR [46+rbp], r10w
        movsd     xmm0, QWORD PTR [40+rbp]
        mulsd     xmm1, xmm0
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4496]
        mulsd     xmm12, xmm11
        movsd     xmm15, QWORD PTR [rip+_vmldACosHATab+4104]
        mulsd     xmm15, xmm1
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4488]
        mulsd     xmm12, xmm11
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm3, QWORD PTR [rip+_vmldACosHATab+4352]
        movsd     xmm4, QWORD PTR [rip+_vmldACosHATab+4336]
        movaps    xmm14, xmm4
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4480]
        addsd     xmm3, QWORD PTR [rip+_vmldACosHATab+4360]
        addsd     xmm14, QWORD PTR [rip+_vmldACosHATab+4344]
        mulsd     xmm12, xmm11
        mulsd     xmm3, xmm7
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4472]
        addsd     xmm14, xmm3
        mulsd     xmm12, xmm11
        mulsd     xmm14, xmm7
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4464]
        mulsd     xmm11, xmm12
        movaps    xmm3, xmm7
        mulsd     xmm11, xmm2
        mulsd     xmm2, xmm10
        mulsd     xmm5, xmm11
        movsd     xmm11, QWORD PTR [rip+_vmldACosHATab+4104]
        addsd     xmm2, xmm5
        mulsd     xmm11, xmm7
        mulsd     xmm2, xmm0
        movsd     xmm5, QWORD PTR [16+rbp]
        movsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4320]
        subsd     xmm5, xmm1
        addsd     xmm12, QWORD PTR [rip+_vmldACosHATab+4328]
        movsd     QWORD PTR [8+rbp], xmm5
        addsd     xmm12, xmm14
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm5, QWORD PTR [8+rbp]
        movsd     xmm14, QWORD PTR [rip+_vmldACosHATab+4104]
        subsd     xmm8, xmm5
        movsd     QWORD PTR [16+rbp], xmm8
        movsd     xmm0, QWORD PTR [16+rbp]
        subsd     xmm1, xmm0
        movsd     QWORD PTR [8+rbp], xmm1
        movsd     xmm5, QWORD PTR [16+rbp]
        movsd     xmm1, QWORD PTR [8+rbp]
        movsd     QWORD PTR [16+rbp], xmm11
        addsd     xmm1, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4456]
        mulsd     xmm2, xmm7
        movsd     xmm10, QWORD PTR [16+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4448]
        subsd     xmm10, xmm7
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [8+rbp], xmm10
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [8+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4440]
        subsd     xmm8, xmm15
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [16+rbp], xmm8
        movsd     xmm0, QWORD PTR [16+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4432]
        subsd     xmm3, xmm0
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm8, QWORD PTR [16+rbp]
        movaps    xmm15, xmm8
        movaps    xmm0, xmm8
        mulsd     xmm15, xmm8
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4424]
        addsd     xmm0, xmm7
        mulsd     xmm8, xmm4
        mulsd     xmm2, xmm7
        mulsd     xmm14, xmm15
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4416]
        mulsd     xmm2, xmm7
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     QWORD PTR [16+rbp], xmm14
        mulsd     xmm0, xmm3
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4408]
        mulsd     xmm4, xmm3
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4400]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4392]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4384]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4376]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldACosHATab+4368]
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        addsd     xmm12, xmm2
        mulsd     xmm1, xmm12
        movsd     xmm12, QWORD PTR [16+rbp]
        subsd     xmm12, xmm15
        movsd     QWORD PTR [8+rbp], xmm12
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm11, QWORD PTR [8+rbp]
        subsd     xmm14, xmm11
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm10, QWORD PTR [16+rbp]
        subsd     xmm15, xmm10
        movsd     QWORD PTR [8+rbp], xmm15
        movaps    xmm15, xmm8
        movsd     xmm11, QWORD PTR [16+rbp]
        mulsd     xmm11, QWORD PTR [rip+_vmldACosHATab+4352]
        movsd     xmm14, QWORD PTR [8+rbp]
        addsd     xmm15, xmm11
        addsd     xmm14, xmm0
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm12, QWORD PTR [16+rbp]
        movsd     QWORD PTR [32+rbp], xmm11
        subsd     xmm8, xmm12
        mulsd     xmm14, QWORD PTR [rip+_vmldACosHATab+4352]
        addsd     xmm8, xmm11
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm15, QWORD PTR [16+rbp]
        movsd     xmm8, QWORD PTR [rip+_vmldACosHATab+4320]
        movsd     xmm12, QWORD PTR [8+rbp]
        addsd     xmm8, xmm15
        movsd     QWORD PTR [16+rbp], xmm8
        movsd     xmm10, QWORD PTR [16+rbp]
        movsd     xmm8, QWORD PTR [rip+_vmldACosHATab+4320]
        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4360]
        subsd     xmm8, xmm10
        mulsd     xmm0, xmm7
        addsd     xmm8, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4344]
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm10, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [rip+_vmldACosHATab+4104]
        mulsd     xmm15, xmm10
        mulsd     xmm0, xmm7
        movsd     xmm11, QWORD PTR [8+rbp]
        pxor      xmm7, xmm7
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm8, QWORD PTR [16+rbp]
        subsd     xmm8, xmm10
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4328]
        movsd     QWORD PTR [8+rbp], xmm8
        addsd     xmm0, xmm2
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm8, xmm15
        movsd     QWORD PTR [16+rbp], xmm8
        movsd     xmm15, QWORD PTR [16+rbp]
        subsd     xmm10, xmm15
        movsd     QWORD PTR [8+rbp], xmm10
        movsd     xmm8, QWORD PTR [16+rbp]
        movsd     xmm10, QWORD PTR [8+rbp]
        cvtss2sd  xmm7, DWORD PTR [r8]
        addsd     xmm10, xmm12
        comisd    xmm7, QWORD PTR [rip+_vmldACosHATab+4184]
        addsd     xmm10, xmm11
        addsd     xmm10, xmm4
        addsd     xmm10, xmm14
        mulsd     xmm10, xmm5
        mulsd     xmm5, xmm8
        addsd     xmm1, xmm10
        addsd     xmm1, xmm0
        ja        .L_B7_13

.L_B7_12:

        movsd     xmm3, QWORD PTR [rip+_vmldACosHATab+4152]
        movaps    xmm0, xmm3
        movsd     xmm7, QWORD PTR [rip+_vmldACosHATab+4160]
        subsd     xmm0, xmm5
        subsd     xmm7, xmm1
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     QWORD PTR [rbp], xmm5
        subsd     xmm3, xmm2
        subsd     xmm3, xmm5
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm5, QWORD PTR [16+rbp]
        movsd     xmm4, QWORD PTR [8+rbp]
        movaps    xmm1, xmm4
        addsd     xmm1, xmm7

.L_B7_13:

        addsd     xmm5, xmm1
        cvtsd2ss  xmm5, xmm5
        movss     DWORD PTR [r9], xmm5
        jmp       .L_B7_17

.L_B7_14:

        ucomisd   xmm1, xmm0
        jp        .L_B7_15
        je        .L_B7_19

.L_B7_15:

        xorps     xmm0, XMMWORD PTR [rip+_2il0floatpacket_205]
        ucomisd   xmm1, xmm0
        jp        .L_B7_16
        je        .L_B7_18

.L_B7_16:

        mov       eax, 1
        subss     xmm2, xmm2
        divss     xmm2, xmm2
        movss     DWORD PTR [r9], xmm2

.L_B7_17:

        movups    xmm7, XMMWORD PTR [64+rbp]
        movups    xmm8, XMMWORD PTR [48+rbp]
        movups    xmm10, XMMWORD PTR [80+rbp]
        movups    xmm11, XMMWORD PTR [96+rbp]
        movups    xmm12, XMMWORD PTR [112+rbp]
        movups    xmm14, XMMWORD PTR [144+rbp]
        movups    xmm15, XMMWORD PTR [128+rbp]
        lea       rsp, QWORD PTR [160+rbp]
        pop       rbp
        ret

.L_B7_18:

        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4152]
        addsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4160]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_17

.L_B7_19:

        movsd     xmm0, QWORD PTR [rip+_vmldACosHATab+4184]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_17

.L_B7_20:

        divss     xmm2, xmm2
        movss     DWORD PTR [r9], xmm2
        test      DWORD PTR [r8], 8388607
        sete      al
        jmp       .L_B7_17
        .align    16, 0x90

.L_B7_21:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sacos_ha_cout_rare_internal_B1_B20:
        .long   621957633
        .long   424018
        .long   362574
        .long   501833
        .long   571460
        .long   641070
        .long   780327
        .long   718876
        .long   17564433
        .long   1342504984

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_21
        .rva    _unwind___jsvml_sacos_ha_cout_rare_internal_B1_B20

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_sacos_ha_data_internal
__jsvml_sacos_ha_data_internal:
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
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
        .long   3212836864
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
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   1078530011
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
        .long   3015425326
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
_vmldACosHATab:
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
        .long   1017118720
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   1413754136
        .long   1074340347
        .long   856972295
        .long   1017226790
        .long   0
        .long   1072693248
        .long   0
        .long   1071644672
        .long   0
        .long   0
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
        .space 88, 0x0
_2il0floatpacket_205:
        .long   0x00000000, 0x80000000, 0x00000000, 0x00000000
        .data
#endif
