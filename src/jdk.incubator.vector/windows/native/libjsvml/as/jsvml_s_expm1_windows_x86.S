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
        .globl __jsvml_expm1f4_ha_e9

__jsvml_expm1f4_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 312
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm10
        vmovaps   xmm10, xmm0
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1280]
        and       r13, -64
        vandps    xmm11, xmm10, xmm4
        vmulps    xmm14, xmm10, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+768]
        vcmpnleps xmm13, xmm11, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1344]
        vroundps  xmm14, xmm14, 0
        vmovmskps edx, xmm13
        vaddps    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+960]
        vmulps    xmm5, xmm14, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+832]
        vmulps    xmm2, xmm14, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+896]
        vsubps    xmm3, xmm10, xmm5
        vandps    xmm12, xmm13, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1024]
        vandnps   xmm5, xmm4, xmm10
        vmovd     ecx, xmm12
        vsubps    xmm1, xmm3, xmm2
        vcmpeqps  xmm0, xmm3, xmm10
        vpextrd   r8d, xmm12, 1
        vpextrd   r9d, xmm12, 2
        vpextrd   r10d, xmm12, 3
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovq     xmm14, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm15, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vmovq     xmm12, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r10]
        vunpcklps xmm15, xmm14, xmm15
        vunpcklps xmm11, xmm11, xmm12
        vandps    xmm13, xmm13, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1088]
        vmovlhps  xmm14, xmm15, xmm11
        vpslld    xmm12, xmm13, 14
        vshufps   xmm15, xmm15, xmm11, 238
        vorps     xmm13, xmm14, xmm12
        vmulps    xmm11, xmm15, xmm12
        vmulps    xmm15, xmm1, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+512]
        vmulps    xmm12, xmm1, xmm1
        vaddps    xmm14, xmm15, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+576]
        vorps     xmm1, xmm0, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1152]
        vandps    xmm0, xmm3, xmm1
        vmulps    xmm14, xmm14, xmm12
        vsubps    xmm3, xmm3, xmm0
        vmulps    xmm15, xmm13, xmm0
        vsubps    xmm2, xmm3, xmm2
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1216]
        vaddps    xmm1, xmm2, xmm14
        vandps    xmm2, xmm13, xmm4
        vandps    xmm4, xmm3, xmm4
        vcmpleps  xmm14, xmm2, xmm4
        vaddps    xmm2, xmm13, xmm3
        vaddps    xmm0, xmm0, xmm1
        vblendvps xmm4, xmm13, xmm3, xmm14
        vblendvps xmm12, xmm3, xmm13, xmm14
        vmulps    xmm13, xmm13, xmm1
        vsubps    xmm3, xmm4, xmm2
        vmulps    xmm1, xmm11, xmm0
        vaddps    xmm14, xmm12, xmm3
        mov       QWORD PTR [296+rsp], r13
        vaddps    xmm4, xmm11, xmm14
        vaddps    xmm14, xmm15, xmm2
        vaddps    xmm11, xmm4, xmm1
        vsubps    xmm2, xmm2, xmm14
        vaddps    xmm15, xmm15, xmm2
        vaddps    xmm2, xmm15, xmm13
        vaddps    xmm0, xmm2, xmm11
        vaddps    xmm1, xmm14, xmm0
        vorps     xmm0, xmm1, xmm5
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm10, XMMWORD PTR [272+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm10
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B1_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B1_7:

        bt        esi, ebx
        jc        .L_B1_10

.L_B1_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B1_7

.L_B1_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_e9_B1_B3:
        .long   1070081
        .long   2413652
        .long   1157192
        .long   1095743
        .long   1034294
        .long   972845
        .long   911396
        .long   849947
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_expm1f4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_expm1f4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_expm1f4_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_expm1f4_ha_ex

__jsvml_expm1f4_ha_ex:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L20:

        sub       rsp, 312
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [256+rsp], xmm15
        movups    XMMWORD PTR [272+rsp], xmm14
        movups    XMMWORD PTR [208+rsp], xmm9
        movaps    xmm9, xmm0
        movups    XMMWORD PTR [192+rsp], xmm8
        movaps    xmm1, xmm9
        movups    XMMWORD PTR [224+rsp], xmm7
        movups    XMMWORD PTR [240+rsp], xmm6
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm6, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+768]
        and       r13, -64
        mulps     xmm6, xmm9
        movups    xmm5, XMMWORD PTR [rip+_2il0floatpacket_29]
        movups    xmm14, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1280]
        addps     xmm6, xmm5
        andps     xmm1, xmm14
        movaps    xmm8, xmm14
        cmpnleps  xmm1, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1344]
        subps     xmm6, xmm5
        movmskps  edx, xmm1
        movups    xmm1, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+960]
        movaps    xmm5, xmm9
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+832]
        andnps    xmm8, xmm9
        mulps     xmm2, xmm6
        addps     xmm1, xmm6
        movdqu    xmm15, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1024]
        subps     xmm5, xmm2
        pand      xmm15, xmm1
        movaps    xmm3, xmm5
        pshufd    xmm4, xmm15, 1
        movaps    xmm7, xmm5
        movd      ecx, xmm15
        pshufd    xmm2, xmm15, 2
        pshufd    xmm15, xmm15, 3
        movd      r8d, xmm4
        movups    xmm0, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+896]
        pand      xmm1, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1088]
        movd      r9d, xmm2
        pslld     xmm1, 14
        movd      r10d, xmm15
        mulps     xmm0, xmm6
        cmpeqps   xmm7, xmm9
        subps     xmm3, xmm0
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        movq      xmm6, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        movq      xmm4, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        movq      xmm2, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        movq      xmm15, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r10]
        unpcklps  xmm6, xmm4
        unpcklps  xmm2, xmm15
        movaps    xmm4, xmm6
        movlhps   xmm4, xmm2
        shufps    xmm6, xmm2, 238
        orps      xmm4, xmm1
        movups    xmm2, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+512]
        mulps     xmm2, xmm3
        mulps     xmm3, xmm3
        mulps     xmm6, xmm1
        addps     xmm2, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+576]
        orps      xmm7, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1152]
        movaps    xmm1, xmm4
        andps     xmm7, xmm5
        movups    xmm15, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1216]
        subps     xmm5, xmm7
        mulps     xmm2, xmm3
        mulps     xmm1, xmm7
        subps     xmm5, xmm0
        movaps    xmm3, xmm4
        addps     xmm5, xmm2
        andps     xmm3, xmm14
        andps     xmm14, xmm15
        cmpleps   xmm3, xmm14
        addps     xmm7, xmm5
        movaps    xmm0, xmm3
        movaps    xmm2, xmm3
        andps     xmm0, xmm15
        andnps    xmm2, xmm15
        movaps    xmm14, xmm3
        andps     xmm3, xmm4
        andnps    xmm14, xmm4
        orps      xmm2, xmm3
        orps      xmm14, xmm0
        addps     xmm15, xmm4
        mulps     xmm4, xmm5
        subps     xmm14, xmm15
        movaps    xmm0, xmm15
        addps     xmm2, xmm14
        addps     xmm0, xmm1
        addps     xmm2, xmm6
        mulps     xmm6, xmm7
        subps     xmm15, xmm0
        addps     xmm2, xmm6
        addps     xmm1, xmm15
        mov       QWORD PTR [296+rsp], r13
        addps     xmm1, xmm4
        addps     xmm1, xmm2
        addps     xmm0, xmm1
        orps      xmm0, xmm8
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        movups    xmm6, XMMWORD PTR [240+rsp]
        movups    xmm7, XMMWORD PTR [224+rsp]
        movups    xmm8, XMMWORD PTR [192+rsp]
        movups    xmm9, XMMWORD PTR [208+rsp]
        movups    xmm14, XMMWORD PTR [272+rsp]
        movups    xmm15, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B2_3:

        movups    XMMWORD PTR [r13], xmm9
        movups    XMMWORD PTR [64+r13], xmm0

.L_B2_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B2_7:

        mov       ecx, ebx
        mov       eax, 1
        shl       eax, cl
        test      esi, eax
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

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_ex_B1_B3:
        .long   1070593
        .long   2413654
        .long   1009742
        .long   948294
        .long   821306
        .long   890925
        .long   1173540
        .long   1112091
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_expm1f4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_expm1f4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_expm1f4_ha_ex_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_expm1f8_ha_l9

__jsvml_expm1f8_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L39:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [208+rsp], ymm15
        vmovups   YMMWORD PTR [240+rsp], ymm14
        vmovups   YMMWORD PTR [272+rsp], ymm13
        vmovups   YMMWORD PTR [304+rsp], ymm12
        vmovups   YMMWORD PTR [336+rsp], ymm11
        vmovups   YMMWORD PTR [368+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovdqa   ymm13, ymm0
        and       r13, -64
        vmulps    ymm1, ymm13, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+768]
        vmovups   ymm10, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+832]
        vmovups   ymm11, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1280]
        vroundps  ymm6, ymm1, 0
        vaddps    ymm2, ymm6, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+960]
        vmulps    ymm9, ymm6, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+896]
        vfnmadd213ps ymm10, ymm6, ymm13
        vandps    ymm4, ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1024]
        vandps    ymm3, ymm13, ymm11
        vcmpnle_uqps ymm5, ymm3, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1344]
        vcmpeqps  ymm7, ymm10, ymm13
        vsubps    ymm8, ymm10, ymm9
        vandps    ymm2, ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1088]
        vmovmskps edx, ymm5
        vpslld    ymm2, ymm2, 14
        test      edx, edx
        vorps     ymm7, ymm7, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1152]
        vandnps   ymm12, ymm11, ymm13
        mov       QWORD PTR [536+rsp], r13
        vmovd     ecx, xmm4
        vextracti128 xmm6, ymm4, 1
        vpextrd   r8d, xmm4, 1
        vpextrd   r9d, xmm4, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovd     r11d, xmm6
        vmovq     xmm15, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vpextrd   r10d, xmm4, 3
        vmovq     xmm14, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vpextrd   ecx, xmm6, 1
        vpextrd   r8d, xmm6, 2
        vpextrd   r9d, xmm6, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovq     xmm1, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r10]
        vmovq     xmm3, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r11]
        vmovq     xmm4, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovq     xmm6, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vunpcklps xmm14, xmm15, xmm14
        vunpcklps xmm15, xmm0, xmm1
        vunpcklps xmm0, xmm3, xmm5
        vunpcklps xmm1, xmm4, xmm6
        vinsertf128 ymm3, ymm14, xmm0, 1
        vinsertf128 ymm5, ymm15, xmm1, 1
        vunpcklps ymm6, ymm3, ymm5
        vunpckhps ymm4, ymm3, ymm5
        vorps     ymm6, ymm6, ymm2
        vmulps    ymm4, ymm4, ymm2
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+512]
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1216]
        vfmadd213ps ymm2, ymm8, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+576]
        vmulps    ymm8, ymm8, ymm8
        vandps    ymm15, ymm10, ymm7
        vsubps    ymm10, ymm10, ymm15
        vmulps    ymm14, ymm6, ymm15
        vsubps    ymm9, ymm10, ymm9
        vandps    ymm0, ymm6, ymm11
        vandps    ymm11, ymm1, ymm11
        vfmadd213ps ymm2, ymm8, ymm9
        vcmple_oqps ymm0, ymm0, ymm11
        vaddps    ymm9, ymm6, ymm1
        vblendvps ymm3, ymm6, ymm1, ymm0
        vblendvps ymm5, ymm1, ymm6, ymm0
        vaddps    ymm0, ymm14, ymm9
        vsubps    ymm7, ymm3, ymm9
        vsubps    ymm10, ymm9, ymm0
        vaddps    ymm8, ymm5, ymm7
        vaddps    ymm14, ymm14, ymm10
        vaddps    ymm11, ymm4, ymm8
        vfmadd213ps ymm6, ymm2, ymm14
        vaddps    ymm2, ymm15, ymm2
        vfmadd213ps ymm4, ymm2, ymm11
        vaddps    ymm4, ymm6, ymm4
        vaddps    ymm6, ymm0, ymm4
        vorps     ymm0, ymm6, ymm12
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm10, YMMWORD PTR [368+rsp]
        vmovups   ymm11, YMMWORD PTR [336+rsp]
        vmovups   ymm12, YMMWORD PTR [304+rsp]
        vmovups   ymm13, YMMWORD PTR [272+rsp]
        vmovups   ymm14, YMMWORD PTR [240+rsp]
        vmovups   ymm15, YMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vmovups   YMMWORD PTR [r13], ymm13
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B3_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B3_7:

        bt        esi, ebx
        jc        .L_B3_10

.L_B3_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B3_7

.L_B3_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f8_ha_l9_B1_B3:
        .long   1602561
        .long   4379764
        .long   2058348
        .long   1931363
        .long   1804378
        .long   1677393
        .long   1550408
        .long   1423423
        .long   1296438
        .long   1169453
        .long   1042468
        .long   915483
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_expm1f8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f8_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_expm1f8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_expm1f8_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_expm1f16_ha_z0

__jsvml_expm1f16_ha_z0:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L66:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+128]
        and       r13, -64
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+192]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+384]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+512]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+448]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+256]
        vmovaps   zmm4, zmm0
        vfmadd213ps zmm23, zmm4, zmm22 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+576]
        vcmpps    k0, zmm4, zmm5, 21 {sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+640]
        vsubps    zmm26, zmm23, zmm22 {rn-sae}
        vpermps   zmm28, zmm23, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512]
        vpermps   zmm3, zmm23, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+64]
        vfnmadd213ps zmm24, zmm26, zmm4 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+768]
        vmaxps    zmm29, zmm26, zmm27 {sae}
        kmovw     r8d, k0
        vscalefps zmm2, zmm28, zmm29 {rn-sae}
        vmovaps   zmm30, zmm26
        vfnmadd213ps zmm30, zmm25, zmm24 {rn-sae}
        vsubps    zmm31, zmm24, zmm30 {rn-sae}
        vandps    zmm1, zmm30, zmm0
        vfnmadd231ps zmm31, zmm25, zmm26 {rn-sae}
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+832]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+896]
        vmulps    zmm30, zmm1, zmm1 {rn-sae}
        vcmpps    k1, zmm2, zmm25, 17 {sae}
        vandps    zmm23, zmm31, zmm0
        vaddps    zmm31, zmm2, zmm26 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+704]
        vblendmps zmm27{k1}, zmm2, zmm26
        vblendmps zmm29{k1}, zmm26, zmm2
        vaddps    zmm24, zmm23, zmm3 {rn-sae}
        vsubps    zmm28, zmm27, zmm31 {rn-sae}
        vfmadd231ps zmm0, zmm5, zmm1 {rn-sae}
        vfmadd213ps zmm3, zmm1, zmm24 {rn-sae}
        vaddps    zmm5, zmm28, zmm29 {rn-sae}
        vfmadd213ps zmm0, zmm1, zmm22 {rn-sae}
        vmovaps   zmm22, zmm31
        vfmadd231ps zmm22, zmm1, zmm2 {rn-sae}
        vfmadd213ps zmm0, zmm30, zmm3 {rn-sae}
        vsubps    zmm3, zmm22, zmm31 {rn-sae}
        vfmsub231ps zmm3, zmm1, zmm2 {rn-sae}
        vfmadd213ps zmm2, zmm0, zmm5 {rn-sae}
        vaddps    zmm1, zmm2, zmm3 {rn-sae}
        vaddps    zmm0, zmm22, zmm1 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vpternlogd zmm0, zmm4, ZMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal_avx512+320], 248
        test      r8d, r8d
        jne       .L_B4_3

.L_B4_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B4_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B4_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B4_6

.L_B4_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B4_6:

        vmovups   ZMMWORD PTR [r13], zmm4
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B4_11

.L_B4_7:

        cmp       edx, eax
        je        .L_B4_2

.L_B4_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B4_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
        jmp       .L_B4_2

.L_B4_11:

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

.L_B4_12:

        bt        edi, ebx
        jc        .L_B4_15

.L_B4_13:

        inc       ebx
        cmp       ebx, 16
        jl        .L_B4_12

.L_B4_14:

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
        vmovups   zmm0, ZMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [1104+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [1096+rsp]
        mov       rdi, QWORD PTR [1088+rsp]
        mov       rbp, QWORD PTR [1112+rsp]
        jmp       .L_B4_7

.L_B4_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B4_13
        .align    16, 0x90

.L_B4_16:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_11
        .rva    _unwind___jsvml_expm1f16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f16_ha_z0_B11_B15:
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
        .long   10867712
        .long   10944768

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_11
        .rva    .L_B4_16
        .rva    _unwind___jsvml_expm1f16_ha_z0_B11_B15

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_expm1f4_ha_l9

__jsvml_expm1f4_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L117:

        sub       rsp, 312
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm15
        vmovups   XMMWORD PTR [224+rsp], xmm14
        vmovups   XMMWORD PTR [240+rsp], xmm13
        vmovups   XMMWORD PTR [256+rsp], xmm12
        vmovups   XMMWORD PTR [272+rsp], xmm11
        vmovups   XMMWORD PTR [192+rsp], xmm6
        vmovaps   xmm6, xmm0
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1280]
        and       r13, -64
        vandps    xmm11, xmm6, xmm4
        vandnps   xmm5, xmm4, xmm6
        vmulps    xmm12, xmm6, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+768]
        vcmpnleps xmm13, xmm11, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1344]
        vroundps  xmm12, xmm12, 0
        vmovmskps edx, xmm13
        vaddps    xmm13, xmm12, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+960]
        vmulps    xmm3, xmm12, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+896]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+832]
        vfnmadd213ps xmm2, xmm12, xmm6
        vandps    xmm12, xmm13, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1024]
        vandps    xmm13, xmm13, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1088]
        vmovd     ecx, xmm12
        vcmpeqps  xmm0, xmm2, xmm6
        vsubps    xmm1, xmm2, xmm3
        vpextrd   r8d, xmm12, 1
        vpextrd   r9d, xmm12, 2
        vpextrd   r10d, xmm12, 3
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovq     xmm14, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm15, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vmovq     xmm12, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r10]
        vunpcklps xmm15, xmm14, xmm15
        vunpcklps xmm11, xmm11, xmm12
        vmovlhps  xmm14, xmm15, xmm11
        vshufps   xmm15, xmm15, xmm11, 238
        vpslld    xmm11, xmm13, 14
        vorps     xmm12, xmm14, xmm11
        vmulps    xmm11, xmm15, xmm11
        vorps     xmm15, xmm0, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1152]
        vandps    xmm15, xmm2, xmm15
        vmovups   xmm13, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+512]
        vsubps    xmm2, xmm2, xmm15
        vfmadd213ps xmm13, xmm1, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+576]
        vmulps    xmm1, xmm1, xmm1
        vmulps    xmm14, xmm12, xmm15
        vsubps    xmm3, xmm2, xmm3
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1216]
        vfmadd213ps xmm13, xmm1, xmm3
        vandps    xmm1, xmm12, xmm4
        vandps    xmm4, xmm0, xmm4
        vaddps    xmm2, xmm12, xmm0
        vcmpleps  xmm3, xmm1, xmm4
        vblendvps xmm4, xmm12, xmm0, xmm3
        vblendvps xmm1, xmm0, xmm12, xmm3
        vsubps    xmm0, xmm4, xmm2
        mov       QWORD PTR [296+rsp], r13
        vaddps    xmm3, xmm1, xmm0
        vaddps    xmm4, xmm11, xmm3
        vaddps    xmm3, xmm14, xmm2
        vsubps    xmm2, xmm2, xmm3
        vaddps    xmm14, xmm14, xmm2
        vfmadd213ps xmm12, xmm13, xmm14
        vaddps    xmm13, xmm15, xmm13
        vfmadd213ps xmm11, xmm13, xmm4
        vaddps    xmm11, xmm12, xmm11
        vaddps    xmm12, xmm3, xmm11
        vorps     xmm0, xmm12, xmm5
        test      edx, edx
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm6, XMMWORD PTR [192+rsp]
        vmovups   xmm11, XMMWORD PTR [272+rsp]
        vmovups   xmm12, XMMWORD PTR [256+rsp]
        vmovups   xmm13, XMMWORD PTR [240+rsp]
        vmovups   xmm14, XMMWORD PTR [224+rsp]
        vmovups   xmm15, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B5_3:

        vmovups   XMMWORD PTR [r13], xmm6
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

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_l9_B1_B3:
        .long   1070081
        .long   2413652
        .long   813128
        .long   1161279
        .long   1099830
        .long   1038381
        .long   976932
        .long   915483
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_expm1f4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_expm1f4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_expm1f4_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_expm1f8_ha_e9

__jsvml_expm1f8_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L136:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [496+rsp], ymm15
        vmovups   YMMWORD PTR [208+rsp], ymm14
        vmovups   YMMWORD PTR [240+rsp], ymm13
        vmovups   YMMWORD PTR [272+rsp], ymm12
        vmovups   YMMWORD PTR [304+rsp], ymm11
        vmovups   YMMWORD PTR [336+rsp], ymm10
        vmovups   YMMWORD PTR [368+rsp], ymm9
        vmovups   YMMWORD PTR [400+rsp], ymm8
        vmovups   YMMWORD PTR [432+rsp], ymm7
        vmovups   YMMWORD PTR [464+rsp], ymm6
        vpxor     xmm6, xmm6, xmm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmulps    ymm1, ymm0, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+768]
        and       r13, -64
        vmovups   ymm14, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1280]
        vmovups   YMMWORD PTR [r13], ymm0
        vroundps  ymm2, ymm1, 0
        vandps    ymm4, ymm0, ymm14
        vcmpnle_uqps ymm5, ymm4, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1344]
        vmulps    ymm3, ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+832]
        vmulps    ymm13, ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+896]
        vsubps    ymm12, ymm0, ymm3
        vcmpeqps  ymm10, ymm12, ymm0
        vsubps    ymm11, ymm12, ymm13
        vandnps   ymm15, ymm14, ymm0
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1024]
        vorps     ymm10, ymm10, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1152]
        vandps    ymm10, ymm12, ymm10
        vsubps    ymm12, ymm12, ymm10
        vsubps    ymm13, ymm12, ymm13
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm9, ymm5, 1
        vpackssdw xmm8, xmm5, xmm9
        vpacksswb xmm7, xmm8, xmm6
        vaddps    ymm8, ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+960]
        vpmovmskb edx, xmm7
        vandps    xmm3, xmm8, xmm0
        vmovd     ecx, xmm3
        vextractf128 xmm9, ymm8, 1
        vpextrd   r8d, xmm3, 1
        vandps    xmm6, xmm9, xmm0
        vpextrd   r9d, xmm3, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovd     r11d, xmm6
        vmovq     xmm0, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm2, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vpextrd   r10d, xmm3, 3
        vmovq     xmm1, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vpextrd   ecx, xmm6, 1
        vpextrd   r8d, xmm6, 2
        vpextrd   r9d, xmm6, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovq     xmm3, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r10]
        vmovq     xmm4, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r11]
        vmovq     xmm7, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovq     xmm6, QWORD PTR ["__jsvml_sexpm1_ha_data_internal"@imgrel+rax+r9]
        vunpcklps xmm0, xmm0, xmm1
        vunpcklps xmm2, xmm2, xmm3
        vunpcklps xmm1, xmm4, xmm5
        vunpcklps xmm4, xmm7, xmm6
        vmulps    ymm5, ymm11, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+512]
        vmulps    ymm11, ymm11, ymm11
        vinsertf128 ymm7, ymm0, xmm1, 1
        vinsertf128 ymm0, ymm2, xmm4, 1
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1088]
        vandps    xmm8, xmm8, xmm2
        vandps    xmm9, xmm9, xmm2
        vpslld    xmm1, xmm8, 14
        vpslld    xmm3, xmm9, 14
        vunpcklps ymm6, ymm7, ymm0
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+1216]
        vunpckhps ymm7, ymm7, ymm0
        vinsertf128 ymm4, ymm1, xmm3, 1
        vorps     ymm8, ymm6, ymm4
        vaddps    ymm6, ymm5, YMMWORD PTR [rip+__jsvml_sexpm1_ha_data_internal+576]
        vaddps    ymm5, ymm8, ymm2
        vmulps    ymm12, ymm8, ymm10
        vmulps    ymm0, ymm6, ymm11
        vmulps    ymm9, ymm7, ymm4
        vaddps    ymm13, ymm13, ymm0
        vandps    ymm1, ymm8, ymm14
        vandps    ymm14, ymm2, ymm14
        vcmple_oqps ymm14, ymm1, ymm14
        vaddps    ymm10, ymm10, ymm13
        vblendvps ymm0, ymm8, ymm2, ymm14
        vblendvps ymm1, ymm2, ymm8, ymm14
        vsubps    ymm3, ymm0, ymm5
        vaddps    ymm14, ymm12, ymm5
        vmulps    ymm8, ymm8, ymm13
        vaddps    ymm4, ymm1, ymm3
        vsubps    ymm6, ymm5, ymm14
        vaddps    ymm7, ymm9, ymm4
        vaddps    ymm12, ymm12, ymm6
        vmulps    ymm9, ymm9, ymm10
        vaddps    ymm11, ymm12, ymm8
        vaddps    ymm13, ymm7, ymm9
        vaddps    ymm0, ymm11, ymm13
        vaddps    ymm1, ymm14, ymm0
        vorps     ymm0, ymm1, ymm15
        vmovups   ymm1, YMMWORD PTR [r13]
        test      dl, dl
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm6, YMMWORD PTR [464+rsp]
        vmovups   ymm7, YMMWORD PTR [432+rsp]
        vmovups   ymm8, YMMWORD PTR [400+rsp]
        vmovups   ymm9, YMMWORD PTR [368+rsp]
        vmovups   ymm10, YMMWORD PTR [336+rsp]
        vmovups   ymm11, YMMWORD PTR [304+rsp]
        vmovups   ymm12, YMMWORD PTR [272+rsp]
        vmovups   ymm13, YMMWORD PTR [240+rsp]
        vmovups   ymm14, YMMWORD PTR [208+rsp]
        vmovups   ymm15, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm1
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B6_2

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
        cmp       ebx, 8
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_sexpm1_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm1f8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f8_ha_e9_B1_B3:
        .long   1603585
        .long   4379768
        .long   1927276
        .long   1800291
        .long   1673306
        .long   1546321
        .long   1419336
        .long   1292351
        .long   1165366
        .long   1038381
        .long   911396
        .long   2095131
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_expm1f8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm1f8_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_expm1f8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_expm1f8_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_sexpm1_ha_cout_rare_internal

__jsvml_sexpm1_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L165:

        sub       rsp, 104
        mov       r9, rdx
        movss     xmm1, DWORD PTR [rcx]
        pxor      xmm0, xmm0
        xor       eax, eax
        comiss    xmm0, xmm1
        ja        .L_B7_18

.L_B7_2:

        movzx     edx, WORD PTR [2+rcx]
        and       edx, 32640
        shr       edx, 7
        cmp       edx, 255
        je        .L_B7_19

.L_B7_3:

        cvtss2sd  xmm1, xmm1
        cmp       edx, 74
        jle       .L_B7_16

.L_B7_4:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1080]
        comisd    xmm0, xmm1
        jb        .L_B7_15

.L_B7_5:

        comisd    xmm1, QWORD PTR [rip+_vmldExpHATab+1096]
        jb        .L_B7_14

.L_B7_6:

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
        jb        .L_B7_10

.L_B7_7:

        and       ecx, 2047
        addsd     xmm0, xmm2
        cmp       ecx, 2046
        ja        .L_B7_9

.L_B7_8:

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

.L_B7_9:

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

.L_B7_10:

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
        ja        .L_B7_12

.L_B7_11:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1160]
        mulsd     xmm1, xmm0
        cvtsd2ss  xmm1, xmm1
        jmp       .L_B7_13

.L_B7_12:

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

.L_B7_13:

        movss     DWORD PTR [r9], xmm1
        mov       eax, 4
        add       rsp, 104
        ret

.L_B7_14:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1120]
        mov       eax, 4
        mulsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_15:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1128]
        mov       eax, 3
        mulsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B7_16:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1144]
        addsd     xmm0, xmm1
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0

.L_B7_17:

        add       rsp, 104
        ret

.L_B7_18:

        mov       DWORD PTR [r9], -1082130432
        add       rsp, 104
        ret

.L_B7_19:

        mov       dl, BYTE PTR [3+rcx]
        and       dl, -128
        cmp       dl, -128
        je        .L_B7_21

.L_B7_20:

        mulss     xmm1, xmm1
        movss     DWORD PTR [r9], xmm1
        add       rsp, 104
        ret

.L_B7_21:

        test      DWORD PTR [rcx], 8388607
        jne       .L_B7_20

.L_B7_22:

        movsd     xmm0, QWORD PTR [rip+_vmldExpHATab+1136]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 104
        ret
        .align    16, 0x90

.L_B7_23:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sexpm1_ha_cout_rare_internal_B1_B22:
        .long   67585
        .long   49672

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_23
        .rva    _unwind___jsvml_sexpm1_ha_cout_rare_internal_B1_B22

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_sexpm1_ha_data_internal_avx512
__jsvml_sexpm1_ha_data_internal_avx512:
        .long   1065353216
        .long   1065724611
        .long   1066112450
        .long   1066517459
        .long   1066940400
        .long   1067382066
        .long   1067843287
        .long   1068324927
        .long   1068827891
        .long   1069353124
        .long   1069901610
        .long   1070474380
        .long   1071072509
        .long   1071697119
        .long   1072349383
        .long   1073030525
        .long   0
        .long   860277610
        .long   2991457809
        .long   860562562
        .long   856238081
        .long   857441778
        .long   3003456168
        .long   2986372182
        .long   848495278
        .long   3003311522
        .long   833868005
        .long   835836658
        .long   2994528642
        .long   2981408986
        .long   2983366846
        .long   833659207
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
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
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
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
        .long   3263168512
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
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1026207428
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
        .long   1042984644
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
        .globl __jsvml_sexpm1_ha_data_internal
__jsvml_sexpm1_ha_data_internal:
        .long   0
        .long   0
        .long   90112
        .long   958021240
        .long   184320
        .long   3097385429
        .long   278528
        .long   3107645322
        .long   372736
        .long   3106378502
        .long   466944
        .long   3080612193
        .long   565248
        .long   3112054766
        .long   659456
        .long   958049961
        .long   757760
        .long   959986813
        .long   860160
        .long   3106149520
        .long   958464
        .long   956772713
        .long   1060864
        .long   946741642
        .long   1163264
        .long   955571435
        .long   1269760
        .long   3107625502
        .long   1372160
        .long   958264608
        .long   1478656
        .long   956671716
        .long   1585152
        .long   964561458
        .long   1695744
        .long   923477569
        .long   1806336
        .long   3098644875
        .long   1916928
        .long   3088264298
        .long   2027520
        .long   958811154
        .long   2142208
        .long   924983155
        .long   2256896
        .long   923141657
        .long   2371584
        .long   958576065
        .long   2490368
        .long   3088362279
        .long   2609152
        .long   3097170630
        .long   2727936
        .long   942496373
        .long   2850816
        .long   3107506507
        .long   2973696
        .long   3111658168
        .long   3096576
        .long   3104893523
        .long   3219456
        .long   956129397
        .long   3346432
        .long   945949013
        .long   3473408
        .long   958293631
        .long   3604480
        .long   3097200438
        .long   3735552
        .long   3104446228
        .long   3866624
        .long   3081063917
        .long   4001792
        .long   3110833173
        .long   4132864
        .long   963851983
        .long   4272128
        .long   3102526822
        .long   4407296
        .long   962173765
        .long   4546560
        .long   962937387
        .long   4689920
        .long   3097677269
        .long   4833280
        .long   3108523826
        .long   4976640
        .long   3103440963
        .long   5120000
        .long   957448868
        .long   5267456
        .long   952956604
        .long   5419008
        .long   3111931330
        .long   5566464
        .long   953592564
        .long   5718016
        .long   958372187
        .long   5873664
        .long   3099234146
        .long   6029312
        .long   3104378117
        .long   6184960
        .long   938771038
        .long   6344704
        .long   3100132597
        .long   6504448
        .long   3077380739
        .long   6668288
        .long   3110019856
        .long   6832128
        .long   3109205496
        .long   6995968
        .long   935782365
        .long   7163904
        .long   3083854118
        .long   7331840
        .long   957821820
        .long   7503872
        .long   943431213
        .long   7675904
        .long   959423141
        .long   7852032
        .long   937390859
        .long   8028160
        .long   955037405
        .long   8208384
        .long   3095001478
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1042983615
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
        .long   1056964623
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
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1119398459
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   1009876992
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   3059646595
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   1240530432
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   504
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
        .long   130560
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
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1118652779
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1111009851
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1018262040
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
        .long   1245724544
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
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
        .long   32640
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
_2il0floatpacket_29:
        .long   0x4b400000, 0x4b400000, 0x4b400000, 0x4b400000
_2il0floatpacket_88:
        .long   0xbf800000
        .data
#endif
