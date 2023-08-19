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
        .globl __jsvml_cosf8_ha_e9

__jsvml_cosf8_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 552
        vmovups   YMMWORD PTR [400+rsp], ymm10
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovaps   ymm8, ymm0
        and       r13, -64
        vandps    ymm3, ymm8, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        vaddps    ymm6, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        vcmpnle_uqps ymm7, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        vmulps    ymm10, ymm6, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        vaddps    ymm1, ymm2, ymm10
        mov       QWORD PTR [536+rsp], r13
        vpslld    xmm4, xmm1, 31
        vsubps    ymm2, ymm1, ymm2
        vextractf128 xmm5, ymm1, 1
        vsubps    ymm10, ymm2, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        vpslld    xmm6, xmm5, 31
        vextractf128 xmm5, ymm10, 1
        vcvtps2pd ymm0, xmm10
        vcvtps2pd ymm2, xmm5
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        vcvtps2pd ymm10, xmm3
        vextractf128 xmm3, ymm3, 1
        vcvtps2pd ymm1, xmm3
        vmulpd    ymm3, ymm2, ymm5
        vsubpd    ymm3, ymm1, ymm3
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        vmulpd    ymm2, ymm2, ymm1
        vsubpd    ymm2, ymm3, ymm2
        vmulpd    ymm3, ymm2, ymm2
        vinsertf128 ymm6, ymm4, xmm6, 1
        vmulpd    ymm4, ymm0, ymm5
        vmulpd    ymm0, ymm0, ymm1
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        vsubpd    ymm10, ymm10, ymm4
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        vsubpd    ymm10, ymm10, ymm0
        vmulpd    ymm1, ymm10, ymm10
        vmulpd    ymm0, ymm5, ymm1
        vmulpd    ymm5, ymm5, ymm3
        vaddpd    ymm0, ymm4, ymm0
        vaddpd    ymm4, ymm4, ymm5
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        vmulpd    ymm0, ymm1, ymm0
        vmulpd    ymm4, ymm3, ymm4
        vaddpd    ymm0, ymm5, ymm0
        vaddpd    ymm5, ymm5, ymm4
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        vmulpd    ymm0, ymm1, ymm0
        vmulpd    ymm5, ymm3, ymm5
        vaddpd    ymm0, ymm4, ymm0
        vaddpd    ymm4, ymm4, ymm5
        vmulpd    ymm1, ymm1, ymm0
        vmulpd    ymm0, ymm3, ymm4
        vmulpd    ymm3, ymm10, ymm1
        vaddpd    ymm1, ymm10, ymm3
        vmulpd    ymm10, ymm2, ymm0
        vcvtpd2ps xmm0, ymm1
        vaddpd    ymm2, ymm2, ymm10
        vcvtpd2ps xmm3, ymm2
        vextractf128 xmm1, ymm7, 1
        vpackssdw xmm2, xmm7, xmm1
        vinsertf128 ymm4, ymm0, xmm3, 1
        vpxor     xmm3, xmm3, xmm3
        vxorps    ymm0, ymm4, ymm6
        vpacksswb xmm4, xmm2, xmm3
        vpmovmskb edx, xmm4
        test      dl, dl
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm10, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B1_3:

        vmovups   YMMWORD PTR [r13], ymm8
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B1_2

.L_B1_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm9
        vmovups   YMMWORD PTR [160+rsp], ymm11
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

        vmovups   ymm9, YMMWORD PTR [192+rsp]
        vmovups   ymm11, YMMWORD PTR [160+rsp]
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

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf8_ha_e9_B1_B3:
        .long   800513
        .long   4379703
        .long   2058287
        .long   1931302
        .long   1804317
        .long   1681428
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_cosf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf8_ha_e9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   194607
        .long   321577
        .long   448547
        .long   575517
        .long   702484
        .long   825355
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_cosf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_cosf8_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_cosf4_ha_ex

__jsvml_cosf4_ha_ex:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L28:

        sub       rsp, 280
        movaps    xmm4, xmm0
        movups    XMMWORD PTR [208+rsp], xmm14
        movups    XMMWORD PTR [224+rsp], xmm12
        movups    XMMWORD PTR [240+rsp], xmm10
        movups    XMMWORD PTR [192+rsp], xmm7
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm12, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        and       r13, -64
        movups    xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        andps     xmm12, xmm4
        movups    xmm1, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        movaps    xmm3, xmm12
        cvtps2pd  xmm0, xmm12
        cmpnleps  xmm3, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        addps     xmm5, xmm12
        movmskps  eax, xmm3
        movhlps   xmm12, xmm12
        mulps     xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        mov       QWORD PTR [264+rsp], r13
        addps     xmm5, xmm1
        movaps    xmm2, xmm5
        subps     xmm5, xmm1
        cvtps2pd  xmm1, xmm12
        subps     xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        cvtps2pd  xmm10, xmm5
        movhlps   xmm5, xmm5
        pslld     xmm2, 31
        cvtps2pd  xmm7, xmm5
        movups    xmm12, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        movaps    xmm14, xmm12
        mulpd     xmm14, xmm10
        mulpd     xmm12, xmm7
        subpd     xmm0, xmm14
        subpd     xmm1, xmm12
        movups    xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        mulpd     xmm10, xmm5
        mulpd     xmm7, xmm5
        subpd     xmm0, xmm10
        subpd     xmm1, xmm7
        movaps    xmm10, xmm0
        movaps    xmm12, xmm1
        mulpd     xmm10, xmm0
        mulpd     xmm12, xmm1
        movups    xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        movaps    xmm7, xmm5
        mulpd     xmm7, xmm10
        mulpd     xmm5, xmm12
        movups    xmm14, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        addpd     xmm7, xmm14
        addpd     xmm14, xmm5
        mulpd     xmm7, xmm10
        mulpd     xmm14, xmm12
        movups    xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        addpd     xmm7, xmm5
        addpd     xmm5, xmm14
        mulpd     xmm7, xmm10
        mulpd     xmm5, xmm12
        movups    xmm14, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        addpd     xmm7, xmm14
        addpd     xmm14, xmm5
        mulpd     xmm10, xmm7
        mulpd     xmm12, xmm14
        mulpd     xmm10, xmm0
        mulpd     xmm12, xmm1
        addpd     xmm0, xmm10
        addpd     xmm1, xmm12
        cvtpd2ps  xmm0, xmm0
        cvtpd2ps  xmm1, xmm1
        movlhps   xmm0, xmm1
        pxor      xmm0, xmm2
        test      eax, eax
        jne       .L_B2_3

.L_B2_2:

        movups    xmm7, XMMWORD PTR [192+rsp]
        movups    xmm10, XMMWORD PTR [240+rsp]
        movups    xmm12, XMMWORD PTR [224+rsp]
        movups    xmm14, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B2_3:

        movups    XMMWORD PTR [r13], xmm4
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

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_ex_B1_B3:
        .long   801025
        .long   2151481
        .long   817201
        .long   1026089
        .long   968736
        .long   911383
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cosf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cosf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_cosf4_ha_ex_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_cosf4_ha_l9

__jsvml_cosf4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L43:

        sub       rsp, 216
        vmovaps   xmm2, xmm0
        mov       QWORD PTR [192+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        and       r13, -64
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        vcmpnleps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        vaddps    xmm5, xmm3, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        vcvtps2pd ymm3, xmm3
        vmovmskps edx, xmm1
        vfmadd132ps xmm5, xmm0, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        vpslld    xmm4, xmm5, 31
        vsubps    xmm5, xmm5, xmm0
        mov       QWORD PTR [200+rsp], r13
        vsubps    xmm0, xmm5, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        vcvtps2pd ymm0, xmm0
        vfnmadd231pd ymm3, ymm0, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        vfnmadd132pd ymm0, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        vmulpd    ymm3, ymm0, ymm0
        vfmadd213pd ymm5, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        vfmadd213pd ymm5, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        vfmadd213pd ymm5, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        vmulpd    ymm3, ymm3, ymm5
        vfmadd213pd ymm3, ymm0, ymm0
        vcvtpd2ps xmm0, ymm3
        vxorps    xmm0, xmm0, xmm4
        test      edx, edx
        jne       .L_B3_3

.L_B3_2:

        mov       r13, QWORD PTR [192+rsp]
        vzeroupper
        add       rsp, 216
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm2
        vmovups   XMMWORD PTR [64+r13], xmm0

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
        cmp       ebx, 4
        jl        .L_B3_7

.L_B3_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_l9_B1_B3:
        .long   268033
        .long   1627159
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_cosf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_l9_B6_B10:
        .long   527873
        .long   287758
        .long   340999
        .long   1627136
        .long   1769728

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_cosf4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_cosf4_ha_e9

__jsvml_cosf4_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L50:

        sub       rsp, 216
        mov       QWORD PTR [192+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm4, xmm0, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        and       r13, -64
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        vcmpnleps xmm1, xmm4, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        vaddps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        vcvtps2pd ymm4, xmm4
        vmovmskps edx, xmm1
        vmulps    xmm5, xmm2, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        mov       QWORD PTR [200+rsp], r13
        vaddps    xmm5, xmm3, xmm5
        vpslld    xmm2, xmm5, 31
        vsubps    xmm3, xmm5, xmm3
        vsubps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        vcvtps2pd ymm5, xmm3
        vmulpd    ymm3, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        vmulpd    ymm5, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        vsubpd    ymm4, ymm4, ymm3
        vsubpd    ymm3, ymm4, ymm5
        vmulpd    ymm4, ymm3, ymm3
        vmulpd    ymm5, ymm4, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        vaddpd    ymm5, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        vmulpd    ymm5, ymm4, ymm5
        vaddpd    ymm5, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        vmulpd    ymm5, ymm4, ymm5
        vaddpd    ymm5, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        vmulpd    ymm4, ymm4, ymm5
        vmulpd    ymm4, ymm3, ymm4
        vaddpd    ymm3, ymm3, ymm4
        vcvtpd2ps xmm3, ymm3
        vxorps    xmm2, xmm3, xmm2
        test      edx, edx
        jne       .L_B4_3

.L_B4_2:

        vmovaps   xmm0, xmm2
        mov       r13, QWORD PTR [192+rsp]
        vzeroupper
        add       rsp, 216
        ret

.L_B4_3:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm2

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
        vmovups   xmm2, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_e9_B1_B3:
        .long   267009
        .long   1627155
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_cosf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf4_ha_e9_B6_B10:
        .long   527873
        .long   287758
        .long   340999
        .long   1627136
        .long   1769728

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_cosf4_ha_e9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_cosf8_ha_l9

__jsvml_cosf8_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L57:

        sub       rsp, 552
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vmovups   YMMWORD PTR [464+rsp], ymm14
        vmovups   YMMWORD PTR [496+rsp], ymm13
        vmovups   YMMWORD PTR [432+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        and       r13, -64
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        vandps    ymm5, ymm0, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        vaddps    ymm3, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        vcmpnle_uqps ymm1, ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        vfmadd132ps ymm3, ymm4, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        vpslld    ymm2, ymm3, 31
        vsubps    ymm3, ymm3, ymm4
        vsubps    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        vmovmskps edx, ymm1
        mov       QWORD PTR [536+rsp], r13
        test      edx, edx
        vextractf128 xmm13, ymm4, 1
        vextractf128 xmm6, ymm5, 1
        vcvtps2pd ymm3, xmm4
        vcvtps2pd ymm4, xmm13
        vcvtps2pd ymm15, xmm5
        vcvtps2pd ymm13, xmm6
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        vfnmadd231pd ymm15, ymm14, ymm3
        vfnmadd231pd ymm13, ymm14, ymm4
        vfnmadd213pd ymm3, ymm5, ymm15
        vfnmadd213pd ymm4, ymm5, ymm13
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        vmulpd    ymm6, ymm3, ymm3
        vmulpd    ymm13, ymm4, ymm4
        vmovdqa   ymm14, ymm5
        vfmadd231pd ymm14, ymm15, ymm6
        vfmadd231pd ymm5, ymm15, ymm13
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        vfmadd213pd ymm14, ymm6, ymm15
        vfmadd213pd ymm5, ymm13, ymm15
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        vfmadd213pd ymm14, ymm6, ymm15
        vfmadd213pd ymm5, ymm13, ymm15
        vmulpd    ymm6, ymm6, ymm14
        vmulpd    ymm5, ymm13, ymm5
        vfmadd213pd ymm6, ymm3, ymm3
        vfmadd213pd ymm5, ymm4, ymm4
        vcvtpd2ps xmm3, ymm6
        vcvtpd2ps xmm4, ymm5
        vinsertf128 ymm13, ymm3, xmm4, 1
        vxorps    ymm2, ymm13, ymm2
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [432+rsp]
        vmovups   ymm13, YMMWORD PTR [496+rsp]
        vmovups   ymm14, YMMWORD PTR [464+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        vmovdqa   ymm0, ymm2
        add       rsp, 552
        ret

.L_B5_3:

        vmovups   YMMWORD PTR [r13], ymm0
        vmovups   YMMWORD PTR [64+r13], ymm2

.L_B5_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm7
        vmovups   YMMWORD PTR [160+rsp], ymm8
        vmovups   YMMWORD PTR [128+rsp], ymm9
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm11
        vmovups   YMMWORD PTR [32+rsp], ymm12
        mov       QWORD PTR [232+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [224+rsp], rsi
        mov       esi, edx

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm7, YMMWORD PTR [192+rsp]
        vmovups   ymm8, YMMWORD PTR [160+rsp]
        vmovups   ymm9, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm11, YMMWORD PTR [64+rsp]
        vmovups   ymm12, YMMWORD PTR [32+rsp]
        vmovups   ymm2, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [232+rsp]
        mov       rsi, QWORD PTR [224+rsp]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf8_ha_l9_B1_B3:
        .long   800513
        .long   4379703
        .long   1796143
        .long   2086950
        .long   1959965
        .long   1701908
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cosf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf8_ha_l9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   182319
        .long   309289
        .long   436259
        .long   563229
        .long   690196
        .long   817163
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cosf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_cosf8_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_cosf16_ha_z0

__jsvml_cosf16_ha_z0:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L84:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5504]
        and       r13, -64
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5440]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5376]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4160]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5568]
        vpternlogd zmm4, zmm4, zmm4, 255
        vmovaps   zmm5, zmm0
        vandps    zmm2, zmm5, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4096]
        vaddps    zmm25, zmm2, zmm22 {rn-sae}
        vcmpps    k1, zmm2, zmm23, 18 {sae}
        vfmadd213ps zmm25, zmm24, zmm26 {rn-sae}
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5056]
        vsubps    zmm27, zmm25, zmm26 {rn-sae}
        vpslld    zmm3, zmm25, 31
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5312]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5184]
        vsubps    zmm29, zmm27, zmm28 {rn-sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5120]
        mov       QWORD PTR [1328+rsp], r13
        vpandnd   zmm4{k1}, zmm2, zmm2
        vextractf32x8 ymm30, zmm29, 1
        vextractf32x8 ymm31, zmm2, 1
        vcvtps2pd zmm22, ymm2 {sae}
        vcvtps2pd zmm0, ymm30 {sae}
        vcvtps2pd zmm24, ymm31 {sae}
        vcvtps2pd zmm1, ymm29 {sae}
        vptestmd  k0, zmm4, zmm4
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+4992]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_scos_ha_data_internal+5248]
        kmovw     r8d, k0
        vfnmadd231pd zmm24, zmm2, zmm0 {rn-sae}
        vfnmadd231pd zmm22, zmm2, zmm1 {rn-sae}
        vfnmadd213pd zmm0, zmm23, zmm24 {rn-sae}
        vfnmadd213pd zmm1, zmm23, zmm22 {rn-sae}
        vmulpd    zmm31, zmm0, zmm0 {rn-sae}
        vmulpd    zmm29, zmm1, zmm1 {rn-sae}
        vmovaps   zmm28, zmm30
        vfmadd231pd zmm30, zmm25, zmm31 {rn-sae}
        vfmadd231pd zmm28, zmm25, zmm29 {rn-sae}
        vfmadd213pd zmm30, zmm31, zmm26 {rn-sae}
        vfmadd213pd zmm28, zmm29, zmm26 {rn-sae}
        vfmadd213pd zmm30, zmm31, zmm27 {rn-sae}
        vfmadd213pd zmm28, zmm29, zmm27 {rn-sae}
        vmulpd    zmm22, zmm30, zmm31 {rn-sae}
        vmulpd    zmm2, zmm28, zmm29 {rn-sae}
        vfmadd213pd zmm22, zmm0, zmm0 {rn-sae}
        vfmadd213pd zmm2, zmm1, zmm1 {rn-sae}
        vcvtpd2ps ymm0, zmm22 {rn-sae}
        vcvtpd2ps ymm1, zmm2 {rn-sae}
        vinsertf32x8 zmm1, zmm1, ymm0, 1
        vxorps    zmm0, zmm1, zmm3
        test      r8d, r8d
        jne       .L_B6_3

.L_B6_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B6_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B6_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B6_6

.L_B6_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B6_6:

        vmovups   ZMMWORD PTR [r13], zmm5
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B6_11

.L_B6_7:

        cmp       edx, eax
        je        .L_B6_2

.L_B6_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B6_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
        jmp       .L_B6_2

.L_B6_11:

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

.L_B6_12:

        bt        edi, ebx
        jc        .L_B6_15

.L_B6_13:

        inc       ebx
        cmp       ebx, 16
        jl        .L_B6_12

.L_B6_14:

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
        jmp       .L_B6_7

.L_B6_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scos_ha_cout_rare_internal
        jmp       .L_B6_13
        .align    16, 0x90

.L_B6_16:

        .section .drectve
        .ascii " -export \"__jsvml_cosf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_11
        .rva    _unwind___jsvml_cosf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosf16_ha_z0_B11_B15:
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

        .rva    .L_B6_11
        .rva    .L_B6_16
        .rva    _unwind___jsvml_cosf16_ha_z0_B11_B15

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_scos_ha_cout_rare_internal

__jsvml_scos_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L135:

        sub       rsp, 152
        mov       r9, rdx
        movups    XMMWORD PTR [96+rsp], xmm9
        pxor      xmm9, xmm9
        movss     xmm0, DWORD PTR [rcx]
        lea       r8, QWORD PTR [rip+__ImageBase]
        cvtss2sd  xmm9, xmm0
        movsd     QWORD PTR [40+rsp], xmm9
        movzx     eax, WORD PTR [2+rcx]
        and       eax, 32640
        mov       dl, BYTE PTR [47+rsp]
        and       dl, 127
        movups    XMMWORD PTR [128+rsp], xmm13
        movups    XMMWORD PTR [80+rsp], xmm11
        movups    XMMWORD PTR [112+rsp], xmm7
        cmp       eax, 32640
        je        .L_B7_14

.L_B7_2:

        mov       BYTE PTR [47+rsp], dl
        movzx     eax, WORD PTR [46+rsp]
        and       eax, 32752
        shr       eax, 4
        cmp       eax, 771
        jl        .L_B7_13

.L_B7_3:

        cmp       eax, 1040
        jge       .L_B7_5

.L_B7_4:

        movsd     xmm0, QWORD PTR [rip+_vmldCosHATab+2160]
        xor       r10d, r10d
        jmp       .L_B7_12

.L_B7_5:

        movsd     QWORD PTR [64+rsp], xmm9
        movzx     eax, BYTE PTR [71+rsp]
        mov       r10d, eax
        and       eax, 127
        and       r10d, 128
        mov       BYTE PTR [71+rsp], al
        movzx     ecx, WORD PTR [70+rsp]
        mov       eax, ecx
        and       eax, 32752
        shr       eax, 4
        shr       r10d, 7
        cmp       eax, 1053
        jge       .L_B7_10

.L_B7_6:

        movsd     xmm3, QWORD PTR [64+rsp]
        pxor      xmm2, xmm2
        movsd     xmm0, QWORD PTR [rip+_vmlReductionTab+64]
        mulsd     xmm0, xmm3
        movsd     QWORD PTR [56+rsp], xmm0
        movzx     ecx, WORD PTR [62+rsp]
        mov       edx, DWORD PTR [60+rsp]
        shr       ecx, 4
        or        edx, -1048576
        mov       r11d, DWORD PTR [56+rsp]
        neg       ecx
        shl       edx, 11
        add       ecx, 30
        shr       r11d, 21
        or        edx, r11d
        shr       edx, cl
        mov       r11d, edx
        and       r11d, 1
        add       r11d, edx
        cvtsi2sd  xmm2, r11d
        cmp       eax, 1046
        jge       .L_B7_8

.L_B7_7:

        movsd     xmm1, QWORD PTR [rip+_vmlReductionTab+80]
        mulsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [rip+_vmlReductionTab+88]
        subsd     xmm3, xmm1
        mulsd     xmm4, xmm2
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm1, QWORD PTR [48+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     xmm9, QWORD PTR [rip+_vmlReductionTab+96]
        subsd     xmm0, xmm4
        mulsd     xmm9, xmm2
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm3, QWORD PTR [48+rsp]
        movsd     xmm11, QWORD PTR [48+rsp]
        subsd     xmm1, xmm3
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm1, xmm4
        subsd     xmm5, xmm9
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm7, QWORD PTR [48+rsp]
        movsd     xmm13, QWORD PTR [rip+_vmlReductionTab+104]
        subsd     xmm11, xmm7
        mulsd     xmm2, xmm13
        subsd     xmm11, xmm9
        addsd     xmm1, xmm11
        subsd     xmm1, xmm2
        jmp       .L_B7_9

.L_B7_8:

        movsd     xmm1, QWORD PTR [rip+_vmlReductionTab+112]
        mulsd     xmm1, xmm2
        movsd     xmm5, QWORD PTR [rip+_vmlReductionTab+120]
        subsd     xmm3, xmm1
        mulsd     xmm5, xmm2
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        movsd     xmm11, QWORD PTR [rip+_vmlReductionTab+128]
        subsd     xmm3, xmm5
        mulsd     xmm11, xmm2
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [48+rsp]
        movsd     xmm13, QWORD PTR [48+rsp]
        subsd     xmm0, xmm4
        movsd     xmm7, QWORD PTR [48+rsp]
        subsd     xmm0, xmm5
        subsd     xmm7, xmm11
        movsd     QWORD PTR [48+rsp], xmm7
        movsd     xmm9, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        subsd     xmm13, xmm9
        movsd     xmm3, QWORD PTR [48+rsp]
        subsd     xmm13, xmm11
        movsd     xmm7, QWORD PTR [rip+_vmlReductionTab+136]
        addsd     xmm0, xmm13
        mulsd     xmm7, xmm2
        addsd     xmm3, xmm0
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [48+rsp]
        movsd     xmm9, QWORD PTR [48+rsp]
        subsd     xmm1, xmm4
        movsd     xmm11, QWORD PTR [rip+_vmlReductionTab+144]
        addsd     xmm1, xmm0
        mulsd     xmm2, xmm11
        movsd     xmm0, QWORD PTR [48+rsp]
        subsd     xmm0, xmm7
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm9, xmm5
        subsd     xmm9, xmm7
        addsd     xmm1, xmm9
        subsd     xmm1, xmm2

.L_B7_9:

        mov       r10d, r10d
        inc       edx
        movsd     xmm0, QWORD PTR [48+rsp]
        shr       edx, 1
        movsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+16+r8+r10*8]
        add       r10d, r10d
        mulsd     xmm0, xmm2
        neg       r10d
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [48+rsp], xmm0
        inc       r10d
        movsd     xmm0, QWORD PTR [48+rsp]
        movaps    xmm9, xmm0
        imul      r10d, edx
        addsd     xmm9, xmm2
        subsd     xmm0, xmm9
        addsd     xmm0, xmm2
        jmp       .L_B7_12

.L_B7_10:

        and       ecx, -32753
        lea       edx, DWORD PTR [-200+rax]
        and       edx, 2047
        lea       r11d, DWORD PTR [-1052+rax]
        shl       edx, 4
        or        ecx, edx
        imul      edx, r11d, 83886
        mov       WORD PTR [70+rsp], cx
        movsd     xmm1, QWORD PTR [64+rsp]
        mov       ecx, DWORD PTR [64+rsp]
        movsd     QWORD PTR [40+rsp], xmm1
        and       ecx, -134217728
        sar       edx, 21
        mov       DWORD PTR [40+rsp], ecx
        movsxd    rdx, edx
        subsd     xmm1, QWORD PTR [40+rsp]
        imul      ecx, edx, -25
        movsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+160+r8+rdx*8]
        mulsd     xmm0, xmm1
        lea       ecx, DWORD PTR [-1052+rcx+rax]
        movsd     QWORD PTR [48+rsp], xmm0
        neg       ecx
        movsd     xmm0, QWORD PTR [40+rsp]
        add       ecx, 38
        movaps    xmm2, xmm0
        mulsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+168+r8+rdx*8]
        movsd     xmm9, QWORD PTR [48+rsp]
        movsd     xmm11, QWORD PTR [48+rsp]
        mov       rax, QWORD PTR [rip+_vmlReductionTab+152]
        addsd     xmm11, xmm2
        movsd     QWORD PTR [48+rsp], xmm11
        movsd     xmm13, QWORD PTR [48+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        subsd     xmm9, xmm13
        shl       rax, cl
        addsd     xmm9, xmm2
        movsd     xmm4, QWORD PTR [48+rsp]
        addsd     xmm3, xmm9
        movd      r11, xmm3
        movsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+168+r8+rdx*8]
        movsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+176+r8+rdx*8]
        and       r11, rax
        mov       QWORD PTR [56+rsp], r11
        mulsd     xmm2, xmm1
        subsd     xmm4, QWORD PTR [56+rsp]
        mulsd     xmm3, xmm1
        movsd     QWORD PTR [48+rsp], xmm4
        movaps    xmm4, xmm0
        movsd     xmm7, QWORD PTR [48+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        mulsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+184+r8+rdx*8]
        addsd     xmm5, xmm2
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm11, QWORD PTR [48+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm7, xmm11
        addsd     xmm7, xmm2
        movaps    xmm2, xmm0
        addsd     xmm7, xmm9
        mulsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+176+r8+rdx*8]
        movsd     xmm9, QWORD PTR [48+rsp]
        addsd     xmm9, xmm2
        movsd     QWORD PTR [48+rsp], xmm9
        movsd     xmm13, QWORD PTR [48+rsp]
        subsd     xmm5, xmm13
        addsd     xmm5, xmm2
        addsd     xmm5, xmm7
        movsd     xmm7, QWORD PTR [48+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm7, xmm5
        addsd     xmm7, xmm3
        addsd     xmm7, xmm4
        movsd     QWORD PTR [56+rsp], xmm7
        movzx     ecx, WORD PTR [62+rsp]
        shr       ecx, 4
        movd      rax, xmm7
        neg       ecx
        add       ecx, 51
        shr       rax, cl
        mov       r11d, eax
        shl       rax, cl
        mov       QWORD PTR [56+rsp], rax
        mov       eax, r11d
        and       eax, 1
        inc       r11d
        shr       r11d, 1
        subsd     xmm2, QWORD PTR [56+rsp]
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm2, QWORD PTR [48+rsp]
        movsd     xmm9, QWORD PTR [48+rsp]
        addsd     xmm9, xmm5
        movsd     QWORD PTR [48+rsp], xmm9
        movsd     xmm7, QWORD PTR [48+rsp]
        subsd     xmm2, xmm7
        addsd     xmm2, xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm5, QWORD PTR ["_vmlReductionTab"@imgrel+r8+rax*8]
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm13, QWORD PTR [48+rsp]
        movsd     xmm11, QWORD PTR [48+rsp]
        addsd     xmm11, xmm3
        movsd     QWORD PTR [48+rsp], xmm11
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     xmm11, QWORD PTR [48+rsp]
        subsd     xmm13, xmm5
        movaps    xmm5, xmm0
        addsd     xmm13, xmm3
        mulsd     xmm5, QWORD PTR ["_vmlReductionTab"@imgrel+192+r8+rdx*8]
        addsd     xmm13, xmm2
        movsd     xmm3, QWORD PTR [48+rsp]
        addsd     xmm3, xmm4
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm2, QWORD PTR [48+rsp]
        movsd     xmm9, QWORD PTR [48+rsp]
        subsd     xmm11, xmm2
        movsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+184+r8+rdx*8]
        addsd     xmm11, xmm4
        mulsd     xmm2, xmm1
        addsd     xmm11, xmm13
        movsd     xmm4, QWORD PTR [48+rsp]
        addsd     xmm4, xmm2
        movsd     QWORD PTR [48+rsp], xmm4
        movsd     xmm13, QWORD PTR [48+rsp]
        movsd     xmm7, QWORD PTR [48+rsp]
        subsd     xmm9, xmm13
        movsd     xmm3, QWORD PTR [48+rsp]
        addsd     xmm9, xmm2
        addsd     xmm3, xmm5
        addsd     xmm9, xmm11
        movsd     QWORD PTR [48+rsp], xmm3
        movaps    xmm3, xmm0
        movsd     xmm4, QWORD PTR [48+rsp]
        movsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+192+r8+rdx*8]
        subsd     xmm7, xmm4
        mulsd     xmm2, xmm1
        mulsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+208+r8+rdx*8]
        addsd     xmm7, xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm7, xmm9
        movsd     xmm9, QWORD PTR [48+rsp]
        addsd     xmm9, xmm2
        movsd     QWORD PTR [48+rsp], xmm9
        movsd     xmm11, QWORD PTR [48+rsp]
        movsd     xmm4, QWORD PTR [48+rsp]
        subsd     xmm5, xmm11
        movsd     xmm9, QWORD PTR ["_vmlReductionTab"@imgrel+200+r8+rdx*8]
        addsd     xmm5, xmm2
        mulsd     xmm9, xmm1
        addsd     xmm5, xmm7
        addsd     xmm9, xmm3
        movaps    xmm2, xmm0
        mulsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+200+r8+rdx*8]
        movsd     xmm7, QWORD PTR [48+rsp]
        addsd     xmm7, xmm2
        movsd     QWORD PTR [48+rsp], xmm7
        movsd     xmm13, QWORD PTR [48+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        subsd     xmm4, xmm13
        addsd     xmm4, xmm2
        addsd     xmm4, xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm5, xmm9
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm7, QWORD PTR [48+rsp]
        movsd     xmm5, QWORD PTR ["_vmlReductionTab"@imgrel+208+r8+rdx*8]
        subsd     xmm3, xmm7
        mulsd     xmm5, xmm1
        addsd     xmm3, xmm9
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm3, xmm4
        movaps    xmm4, xmm0
        mulsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+216+r8+rdx*8]
        mulsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+224+r8+rdx*8]
        addsd     xmm5, xmm4
        movsd     xmm11, QWORD PTR [48+rsp]
        addsd     xmm11, xmm5
        movsd     QWORD PTR [48+rsp], xmm11
        movsd     xmm13, QWORD PTR [48+rsp]
        movsd     xmm7, QWORD PTR [48+rsp]
        subsd     xmm2, xmm13
        addsd     xmm2, xmm5
        addsd     xmm2, xmm3
        movsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+216+r8+rdx*8]
        mulsd     xmm1, xmm3
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm0, xmm1
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm4, QWORD PTR [48+rsp]
        mulsd     xmm4, QWORD PTR [rip+_vmlReductionTab+32]
        movsd     xmm3, QWORD PTR [48+rsp]
        addsd     xmm3, xmm4
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm5, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [rip+_vmlReductionTab+48]
        subsd     xmm5, xmm4
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm0, QWORD PTR [48+rsp]
        subsd     xmm7, xmm0
        addsd     xmm7, xmm1
        movsd     xmm1, QWORD PTR [48+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm7, xmm2
        mulsd     xmm0, QWORD PTR [rip+_vmlReductionTab+48]
        mulsd     xmm3, xmm7
        addsd     xmm7, xmm1
        mulsd     xmm7, QWORD PTR [rip+_vmlReductionTab+56]
        movsd     QWORD PTR [48+rsp], xmm0
        addsd     xmm3, xmm7
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm2, xmm3
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm1, QWORD PTR [48+rsp]
        movsd     xmm9, QWORD PTR [48+rsp]
        subsd     xmm0, xmm1
        mulsd     xmm9, QWORD PTR ["_vmlReductionTab"@imgrel+16+r8+r10*8]
        addsd     xmm0, xmm3
        mulsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+16+r8+r10*8]
        add       r10d, r10d
        neg       r10d
        inc       r10d
        imul      r10d, r11d

.L_B7_12:

        movsd     xmm11, QWORD PTR [rip+_vmldCosHATab+2048]
        mulsd     xmm11, xmm9
        movsd     xmm13, QWORD PTR [rip+_vmldCosHATab+2064]
        movsd     xmm1, QWORD PTR [rip+_vmldCosHATab+2072]
        shl       r10d, 4
        addsd     xmm11, QWORD PTR [rip+_vmldCosHATab+2056]
        movsd     QWORD PTR [72+rsp], xmm11
        movsd     xmm2, QWORD PTR [72+rsp]
        mov       eax, DWORD PTR [72+rsp]
        subsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2056]
        mulsd     xmm13, xmm2
        lea       edx, DWORD PTR [16+rax+r10]
        mulsd     xmm1, xmm2
        mulsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2080]
        subsd     xmm9, xmm13
        movaps    xmm7, xmm9
        and       edx, 63
        shl       edx, 2
        xor       eax, eax
        movsd     xmm5, QWORD PTR ["_vmldCosHATab"@imgrel+r8+rdx*8]
        subsd     xmm7, xmm1
        movaps    xmm11, xmm7
        movaps    xmm3, xmm5
        mulsd     xmm11, xmm7
        subsd     xmm9, xmm7
        mulsd     xmm5, xmm7
        subsd     xmm9, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldCosHATab+2112]
        subsd     xmm9, xmm2
        mulsd     xmm1, xmm11
        addsd     xmm9, xmm0
        addsd     xmm1, QWORD PTR [rip+_vmldCosHATab+2104]
        movsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2144]
        mulsd     xmm1, xmm11
        mulsd     xmm2, xmm11
        addsd     xmm1, QWORD PTR [rip+_vmldCosHATab+2096]
        addsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2136]
        mulsd     xmm1, xmm11
        mulsd     xmm2, xmm11
        addsd     xmm1, QWORD PTR [rip+_vmldCosHATab+2088]
        addsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2128]
        mulsd     xmm1, xmm11
        mulsd     xmm2, xmm11
        mulsd     xmm1, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldCosHATab+2120]
        movsd     xmm0, QWORD PTR ["_vmldCosHATab"@imgrel+24+r8+rdx*8]
        movsd     xmm4, QWORD PTR ["_vmldCosHATab"@imgrel+8+r8+rdx*8]
        addsd     xmm3, xmm0
        mulsd     xmm0, xmm7
        mulsd     xmm7, xmm4
        mulsd     xmm1, xmm3
        mulsd     xmm2, xmm11
        subsd     xmm3, xmm7
        mulsd     xmm2, xmm4
        mulsd     xmm9, xmm3
        movaps    xmm13, xmm4
        addsd     xmm9, QWORD PTR ["_vmldCosHATab"@imgrel+16+r8+rdx*8]
        addsd     xmm13, xmm0
        movaps    xmm11, xmm13
        subsd     xmm4, xmm13
        addsd     xmm11, xmm5
        addsd     xmm4, xmm0
        subsd     xmm13, xmm11
        addsd     xmm9, xmm4
        addsd     xmm5, xmm13
        movups    xmm7, XMMWORD PTR [112+rsp]
        addsd     xmm9, xmm5
        movups    xmm13, XMMWORD PTR [128+rsp]
        addsd     xmm9, xmm1
        addsd     xmm9, xmm2
        addsd     xmm11, xmm9
        movups    xmm9, XMMWORD PTR [96+rsp]
        cvtsd2ss  xmm11, xmm11
        movss     DWORD PTR [r9], xmm11
        movups    xmm11, XMMWORD PTR [80+rsp]
        add       rsp, 152
        ret

.L_B7_13:

        movsd     xmm0, QWORD PTR [rip+_vmldCosHATab+2152]
        xor       eax, eax
        movups    xmm9, XMMWORD PTR [96+rsp]
        subsd     xmm0, QWORD PTR [40+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        add       rsp, 152
        ret

.L_B7_14:

        cmp       DWORD PTR [40+rsp], 0
        jne       .L_B7_17

.L_B7_15:

        mov       BYTE PTR [47+rsp], dl
        cmp       DWORD PTR [44+rsp], 2146435072
        jne       .L_B7_17

.L_B7_16:

        mulsd     xmm9, QWORD PTR [rip+_vmldCosHATab+2160]
        mov       eax, 1
        cvtsd2ss  xmm9, xmm9
        movss     DWORD PTR [r9], xmm9
        movups    xmm9, XMMWORD PTR [96+rsp]
        add       rsp, 152
        ret

.L_B7_17:

        mulss     xmm0, xmm0
        xor       eax, eax
        movups    xmm9, XMMWORD PTR [96+rsp]
        movss     DWORD PTR [r9], xmm0
        add       rsp, 152
        ret
        .align    16, 0x90

.L_B7_18:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_scos_ha_cout_rare_internal_B1_B17:
        .long   676865
        .long   489556
        .long   374863
        .long   579657
        .long   432148
        .long   1245451

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_18
        .rva    _unwind___jsvml_scos_ha_cout_rare_internal_B1_B17

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_scos_ha_data_internal
__jsvml_scos_ha_data_internal:
        .long   0
        .long   1065353216
        .long   0
        .long   0
        .long   1004262721
        .long   1065348163
        .long   814009613
        .long   3170893824
        .long   1012667202
        .long   1065333007
        .long   836655967
        .long   3179282432
        .long   3157608485
        .long   1065307757
        .long   852498564
        .long   3179282432
        .long   1021119272
        .long   1065272429
        .long   838093129
        .long   3187671040
        .long   992588201
        .long   1065227044
        .long   3002197507
        .long   3187671040
        .long   3165783068
        .long   1065171628
        .long   2969000681
        .long   3187671040
        .long   3174843017
        .long   1065106216
        .long   2989610635
        .long   3187671040
        .long   1029761272
        .long   1065030846
        .long   855602635
        .long   3196059648
        .long   1023221605
        .long   1064945565
        .long   851856985
        .long   3196059648
        .long   1004930693
        .long   1064850424
        .long   2987244005
        .long   3196059648
        .long   3163089201
        .long   1064745479
        .long   846006572
        .long   3196059648
        .long   3173319052
        .long   1064630795
        .long   2996018466
        .long   3196059648
        .long   3179441043
        .long   1064506439
        .long   851742225
        .long   3196059648
        .long   3182555983
        .long   1064372488
        .long   840880349
        .long   3196059648
        .long   1041201069
        .long   1064229022
        .long   2995991516
        .long   3204448256
        .long   1039156139
        .long   1064076126
        .long   854796500
        .long   3204448256
        .long   1036128472
        .long   1063913895
        .long   3001754476
        .long   3204448256
        .long   1033133567
        .long   1063742424
        .long   2998678409
        .long   3204448256
        .long   1028547674
        .long   1063561817
        .long   823789818
        .long   3204448256
        .long   1021989220
        .long   1063372184
        .long   3001545765
        .long   3204448256
        .long   1005106760
        .long   1063173637
        .long   851900755
        .long   3204448256
        .long   3160870706
        .long   1062966298
        .long   841166280
        .long   3204448256
        .long   3171899818
        .long   1062750291
        .long   2994560960
        .long   3204448256
        .long   3177422237
        .long   1062525745
        .long   848357914
        .long   3204448256
        .long   3181068627
        .long   1062292797
        .long   806113028
        .long   3204448256
        .long   3183738367
        .long   1062051586
        .long   847147240
        .long   3204448256
        .long   3186359946
        .long   1061802258
        .long   848897600
        .long   3204448256
        .long   3188301413
        .long   1061544963
        .long   850481524
        .long   3204448256
        .long   3189561687
        .long   1061279856
        .long   851442039
        .long   3204448256
        .long   3190795559
        .long   1061007097
        .long   832220140
        .long   3204448256
        .long   3192002283
        .long   1060726850
        .long   2994798599
        .long   3204448256
        .long   1050015258
        .long   1060439283
        .long   844097402
        .long   3212836864
        .long   1049440125
        .long   1060144571
        .long   2997759282
        .long   3212836864
        .long   1048879630
        .long   1059842890
        .long   2998350134
        .long   3212836864
        .long   1048092223
        .long   1059534422
        .long   2986574659
        .long   3212836864
        .long   1047031795
        .long   1059219353
        .long   841032635
        .long   3212836864
        .long   1046002615
        .long   1058897873
        .long   848430348
        .long   3212836864
        .long   1045005303
        .long   1058570176
        .long   2982650867
        .long   3212836864
        .long   1044040460
        .long   1058236458
        .long   852349230
        .long   3212836864
        .long   1043108667
        .long   1057896922
        .long   2991207143
        .long   3212836864
        .long   1042210485
        .long   1057551771
        .long   2998815566
        .long   3212836864
        .long   1041346455
        .long   1057201213
        .long   2992349186
        .long   3212836864
        .long   1040517098
        .long   1056726311
        .long   2978016425
        .long   3212836864
        .long   1039258436
        .long   1056004842
        .long   2986287417
        .long   3212836864
        .long   1037741368
        .long   1055273845
        .long   2983839604
        .long   3212836864
        .long   1036296515
        .long   1054533760
        .long   840832460
        .long   3212836864
        .long   1034924748
        .long   1053785034
        .long   829045603
        .long   3212836864
        .long   1033626892
        .long   1053028117
        .long   836097324
        .long   3212836864
        .long   1032403730
        .long   1052263466
        .long   2993707942
        .long   3212836864
        .long   1030713214
        .long   1051491540
        .long   2988789250
        .long   3212836864
        .long   1028569994
        .long   1050712805
        .long   2990442912
        .long   3212836864
        .long   1026580309
        .long   1049927729
        .long   846027248
        .long   3212836864
        .long   1024745356
        .long   1049136787
        .long   824999326
        .long   3212836864
        .long   1022722308
        .long   1048104908
        .long   2971391005
        .long   3212836864
        .long   1019677780
        .long   1046502419
        .long   833086710
        .long   3212836864
        .long   1016948784
        .long   1044891074
        .long   2967836285
        .long   3212836864
        .long   1014052363
        .long   1043271842
        .long   823224313
        .long   3212836864
        .long   1009865986
        .long   1041645699
        .long   837346836
        .long   3212836864
        .long   1006005820
        .long   1039839859
        .long   2970970319
        .long   3212836864
        .long   1000196465
        .long   1036565814
        .long   2960495349
        .long   3212836864
        .long   993104536
        .long   1033283845
        .long   2975014497
        .long   3212836864
        .long   983425480
        .long   1028193072
        .long   2968461951
        .long   3212836864
        .long   966649823
        .long   1019808432
        .long   2953169304
        .long   3212836864
        .long   0
        .long   0
        .long   0
        .long   3212836864
        .long   966649823
        .long   3167292080
        .long   805685656
        .long   3212836864
        .long   983425480
        .long   3175676720
        .long   820978303
        .long   3212836864
        .long   993104536
        .long   3180767493
        .long   827530849
        .long   3212836864
        .long   1000196465
        .long   3184049462
        .long   813011701
        .long   3212836864
        .long   1006005820
        .long   3187323507
        .long   823486671
        .long   3212836864
        .long   1009865986
        .long   3189129347
        .long   2984830484
        .long   3212836864
        .long   1014052363
        .long   3190755490
        .long   2970707961
        .long   3212836864
        .long   1016948784
        .long   3192374722
        .long   820352637
        .long   3212836864
        .long   1019677780
        .long   3193986067
        .long   2980570358
        .long   3212836864
        .long   1022722308
        .long   3195588556
        .long   823907357
        .long   3212836864
        .long   1024745356
        .long   3196620435
        .long   2972482974
        .long   3212836864
        .long   1026580309
        .long   3197411377
        .long   2993510896
        .long   3212836864
        .long   1028569994
        .long   3198196453
        .long   842959264
        .long   3212836864
        .long   1030713214
        .long   3198975188
        .long   841305602
        .long   3212836864
        .long   1032403730
        .long   3199747114
        .long   846224294
        .long   3212836864
        .long   1033626892
        .long   3200511765
        .long   2983580972
        .long   3212836864
        .long   1034924748
        .long   3201268682
        .long   2976529251
        .long   3212836864
        .long   1036296515
        .long   3202017408
        .long   2988316108
        .long   3212836864
        .long   1037741368
        .long   3202757493
        .long   836355956
        .long   3212836864
        .long   1039258436
        .long   3203488490
        .long   838803769
        .long   3212836864
        .long   1040517098
        .long   3204209959
        .long   830532777
        .long   3212836864
        .long   1041346455
        .long   3204684861
        .long   844865538
        .long   3212836864
        .long   1042210485
        .long   3205035419
        .long   851331918
        .long   3212836864
        .long   1043108667
        .long   3205380570
        .long   843723495
        .long   3212836864
        .long   1044040460
        .long   3205720106
        .long   2999832878
        .long   3212836864
        .long   1045005303
        .long   3206053824
        .long   835167219
        .long   3212836864
        .long   1046002615
        .long   3206381521
        .long   2995913996
        .long   3212836864
        .long   1047031795
        .long   3206703001
        .long   2988516283
        .long   3212836864
        .long   1048092223
        .long   3207018070
        .long   839091011
        .long   3212836864
        .long   1048879630
        .long   3207326538
        .long   850866486
        .long   3212836864
        .long   1049440125
        .long   3207628219
        .long   850275634
        .long   3212836864
        .long   1050015258
        .long   3207922931
        .long   2991581050
        .long   3212836864
        .long   3192002283
        .long   3208210498
        .long   847314951
        .long   3204448256
        .long   3190795559
        .long   3208490745
        .long   2979703788
        .long   3204448256
        .long   3189561687
        .long   3208763504
        .long   2998925687
        .long   3204448256
        .long   3188301413
        .long   3209028611
        .long   2997965172
        .long   3204448256
        .long   3186359946
        .long   3209285906
        .long   2996381248
        .long   3204448256
        .long   3183738367
        .long   3209535234
        .long   2994630888
        .long   3204448256
        .long   3181068627
        .long   3209776445
        .long   2953596676
        .long   3204448256
        .long   3177422237
        .long   3210009393
        .long   2995841562
        .long   3204448256
        .long   3171899818
        .long   3210233939
        .long   847077312
        .long   3204448256
        .long   3160870706
        .long   3210449946
        .long   2988649928
        .long   3204448256
        .long   1005106760
        .long   3210657285
        .long   2999384403
        .long   3204448256
        .long   1021989220
        .long   3210855832
        .long   854062117
        .long   3204448256
        .long   1028547674
        .long   3211045465
        .long   2971273466
        .long   3204448256
        .long   1033133567
        .long   3211226072
        .long   851194761
        .long   3204448256
        .long   1036128472
        .long   3211397543
        .long   854270828
        .long   3204448256
        .long   1039156139
        .long   3211559774
        .long   3002280148
        .long   3204448256
        .long   1041201069
        .long   3211712670
        .long   848507868
        .long   3204448256
        .long   3182555983
        .long   3211856136
        .long   2988363997
        .long   3196059648
        .long   3179441043
        .long   3211990087
        .long   2999225873
        .long   3196059648
        .long   3173319052
        .long   3212114443
        .long   848534818
        .long   3196059648
        .long   3163089201
        .long   3212229127
        .long   2993490220
        .long   3196059648
        .long   1004930693
        .long   3212334072
        .long   839760357
        .long   3196059648
        .long   1023221605
        .long   3212429213
        .long   2999340633
        .long   3196059648
        .long   1029761272
        .long   3212514494
        .long   3003086283
        .long   3196059648
        .long   3174843017
        .long   3212589864
        .long   842126987
        .long   3187671040
        .long   3165783068
        .long   3212655276
        .long   821517033
        .long   3187671040
        .long   992588201
        .long   3212710692
        .long   854713859
        .long   3187671040
        .long   1021119272
        .long   3212756077
        .long   2985576777
        .long   3187671040
        .long   3157608485
        .long   3212791405
        .long   2999982212
        .long   3179282432
        .long   1012667202
        .long   3212816655
        .long   2984139615
        .long   3179282432
        .long   1004262721
        .long   3212831811
        .long   2961493261
        .long   3170893824
        .long   0
        .long   3212836864
        .long   0
        .long   0
        .long   3151746369
        .long   3212831811
        .long   2961493261
        .long   1023410176
        .long   3160150850
        .long   3212816655
        .long   2984139615
        .long   1031798784
        .long   1010124837
        .long   3212791405
        .long   2999982212
        .long   1031798784
        .long   3168602920
        .long   3212756077
        .long   2985576777
        .long   1040187392
        .long   3140071849
        .long   3212710692
        .long   854713859
        .long   1040187392
        .long   1018299420
        .long   3212655276
        .long   821517033
        .long   1040187392
        .long   1027359369
        .long   3212589864
        .long   842126987
        .long   1040187392
        .long   3177244920
        .long   3212514494
        .long   3003086283
        .long   1048576000
        .long   3170705253
        .long   3212429213
        .long   2999340633
        .long   1048576000
        .long   3152414341
        .long   3212334072
        .long   839760357
        .long   1048576000
        .long   1015605553
        .long   3212229127
        .long   2993490220
        .long   1048576000
        .long   1025835404
        .long   3212114443
        .long   848534818
        .long   1048576000
        .long   1031957395
        .long   3211990087
        .long   2999225873
        .long   1048576000
        .long   1035072335
        .long   3211856136
        .long   2988363997
        .long   1048576000
        .long   3188684717
        .long   3211712670
        .long   848507868
        .long   1056964608
        .long   3186639787
        .long   3211559774
        .long   3002280148
        .long   1056964608
        .long   3183612120
        .long   3211397543
        .long   854270828
        .long   1056964608
        .long   3180617215
        .long   3211226072
        .long   851194761
        .long   1056964608
        .long   3176031322
        .long   3211045465
        .long   2971273466
        .long   1056964608
        .long   3169472868
        .long   3210855832
        .long   854062117
        .long   1056964608
        .long   3152590408
        .long   3210657285
        .long   2999384403
        .long   1056964608
        .long   1013387058
        .long   3210449946
        .long   2988649928
        .long   1056964608
        .long   1024416170
        .long   3210233939
        .long   847077312
        .long   1056964608
        .long   1029938589
        .long   3210009393
        .long   2995841562
        .long   1056964608
        .long   1033584979
        .long   3209776445
        .long   2953596676
        .long   1056964608
        .long   1036254719
        .long   3209535234
        .long   2994630888
        .long   1056964608
        .long   1038876298
        .long   3209285906
        .long   2996381248
        .long   1056964608
        .long   1040817765
        .long   3209028611
        .long   2997965172
        .long   1056964608
        .long   1042078039
        .long   3208763504
        .long   2998925687
        .long   1056964608
        .long   1043311911
        .long   3208490745
        .long   2979703788
        .long   1056964608
        .long   1044518635
        .long   3208210498
        .long   847314951
        .long   1056964608
        .long   3197498906
        .long   3207922931
        .long   2991581050
        .long   1065353216
        .long   3196923773
        .long   3207628219
        .long   850275634
        .long   1065353216
        .long   3196363278
        .long   3207326538
        .long   850866486
        .long   1065353216
        .long   3195575871
        .long   3207018070
        .long   839091011
        .long   1065353216
        .long   3194515443
        .long   3206703001
        .long   2988516283
        .long   1065353216
        .long   3193486263
        .long   3206381521
        .long   2995913996
        .long   1065353216
        .long   3192488951
        .long   3206053824
        .long   835167219
        .long   1065353216
        .long   3191524108
        .long   3205720106
        .long   2999832878
        .long   1065353216
        .long   3190592315
        .long   3205380570
        .long   843723495
        .long   1065353216
        .long   3189694133
        .long   3205035419
        .long   851331918
        .long   1065353216
        .long   3188830103
        .long   3204684861
        .long   844865538
        .long   1065353216
        .long   3188000746
        .long   3204209959
        .long   830532777
        .long   1065353216
        .long   3186742084
        .long   3203488490
        .long   838803769
        .long   1065353216
        .long   3185225016
        .long   3202757493
        .long   836355956
        .long   1065353216
        .long   3183780163
        .long   3202017408
        .long   2988316108
        .long   1065353216
        .long   3182408396
        .long   3201268682
        .long   2976529251
        .long   1065353216
        .long   3181110540
        .long   3200511765
        .long   2983580972
        .long   1065353216
        .long   3179887378
        .long   3199747114
        .long   846224294
        .long   1065353216
        .long   3178196862
        .long   3198975188
        .long   841305602
        .long   1065353216
        .long   3176053642
        .long   3198196453
        .long   842959264
        .long   1065353216
        .long   3174063957
        .long   3197411377
        .long   2993510896
        .long   1065353216
        .long   3172229004
        .long   3196620435
        .long   2972482974
        .long   1065353216
        .long   3170205956
        .long   3195588556
        .long   823907357
        .long   1065353216
        .long   3167161428
        .long   3193986067
        .long   2980570358
        .long   1065353216
        .long   3164432432
        .long   3192374722
        .long   820352637
        .long   1065353216
        .long   3161536011
        .long   3190755490
        .long   2970707961
        .long   1065353216
        .long   3157349634
        .long   3189129347
        .long   2984830484
        .long   1065353216
        .long   3153489468
        .long   3187323507
        .long   823486671
        .long   1065353216
        .long   3147680113
        .long   3184049462
        .long   813011701
        .long   1065353216
        .long   3140588184
        .long   3180767493
        .long   827530849
        .long   1065353216
        .long   3130909128
        .long   3175676720
        .long   820978303
        .long   1065353216
        .long   3114133471
        .long   3167292080
        .long   805685656
        .long   1065353216
        .long   0
        .long   0
        .long   0
        .long   1065353216
        .long   3114133471
        .long   1019808432
        .long   2953169304
        .long   1065353216
        .long   3130909128
        .long   1028193072
        .long   2968461951
        .long   1065353216
        .long   3140588184
        .long   1033283845
        .long   2975014497
        .long   1065353216
        .long   3147680113
        .long   1036565814
        .long   2960495349
        .long   1065353216
        .long   3153489468
        .long   1039839859
        .long   2970970319
        .long   1065353216
        .long   3157349634
        .long   1041645699
        .long   837346836
        .long   1065353216
        .long   3161536011
        .long   1043271842
        .long   823224313
        .long   1065353216
        .long   3164432432
        .long   1044891074
        .long   2967836285
        .long   1065353216
        .long   3167161428
        .long   1046502419
        .long   833086710
        .long   1065353216
        .long   3170205956
        .long   1048104908
        .long   2971391005
        .long   1065353216
        .long   3172229004
        .long   1049136787
        .long   824999326
        .long   1065353216
        .long   3174063957
        .long   1049927729
        .long   846027248
        .long   1065353216
        .long   3176053642
        .long   1050712805
        .long   2990442912
        .long   1065353216
        .long   3178196862
        .long   1051491540
        .long   2988789250
        .long   1065353216
        .long   3179887378
        .long   1052263466
        .long   2993707942
        .long   1065353216
        .long   3181110540
        .long   1053028117
        .long   836097324
        .long   1065353216
        .long   3182408396
        .long   1053785034
        .long   829045603
        .long   1065353216
        .long   3183780163
        .long   1054533760
        .long   840832460
        .long   1065353216
        .long   3185225016
        .long   1055273845
        .long   2983839604
        .long   1065353216
        .long   3186742084
        .long   1056004842
        .long   2986287417
        .long   1065353216
        .long   3188000746
        .long   1056726311
        .long   2978016425
        .long   1065353216
        .long   3188830103
        .long   1057201213
        .long   2992349186
        .long   1065353216
        .long   3189694133
        .long   1057551771
        .long   2998815566
        .long   1065353216
        .long   3190592315
        .long   1057896922
        .long   2991207143
        .long   1065353216
        .long   3191524108
        .long   1058236458
        .long   852349230
        .long   1065353216
        .long   3192488951
        .long   1058570176
        .long   2982650867
        .long   1065353216
        .long   3193486263
        .long   1058897873
        .long   848430348
        .long   1065353216
        .long   3194515443
        .long   1059219353
        .long   841032635
        .long   1065353216
        .long   3195575871
        .long   1059534422
        .long   2986574659
        .long   1065353216
        .long   3196363278
        .long   1059842890
        .long   2998350134
        .long   1065353216
        .long   3196923773
        .long   1060144571
        .long   2997759282
        .long   1065353216
        .long   3197498906
        .long   1060439283
        .long   844097402
        .long   1065353216
        .long   1044518635
        .long   1060726850
        .long   2994798599
        .long   1056964608
        .long   1043311911
        .long   1061007097
        .long   832220140
        .long   1056964608
        .long   1042078039
        .long   1061279856
        .long   851442039
        .long   1056964608
        .long   1040817765
        .long   1061544963
        .long   850481524
        .long   1056964608
        .long   1038876298
        .long   1061802258
        .long   848897600
        .long   1056964608
        .long   1036254719
        .long   1062051586
        .long   847147240
        .long   1056964608
        .long   1033584979
        .long   1062292797
        .long   806113028
        .long   1056964608
        .long   1029938589
        .long   1062525745
        .long   848357914
        .long   1056964608
        .long   1024416170
        .long   1062750291
        .long   2994560960
        .long   1056964608
        .long   1013387058
        .long   1062966298
        .long   841166280
        .long   1056964608
        .long   3152590408
        .long   1063173637
        .long   851900755
        .long   1056964608
        .long   3169472868
        .long   1063372184
        .long   3001545765
        .long   1056964608
        .long   3176031322
        .long   1063561817
        .long   823789818
        .long   1056964608
        .long   3180617215
        .long   1063742424
        .long   2998678409
        .long   1056964608
        .long   3183612120
        .long   1063913895
        .long   3001754476
        .long   1056964608
        .long   3186639787
        .long   1064076126
        .long   854796500
        .long   1056964608
        .long   3188684717
        .long   1064229022
        .long   2995991516
        .long   1056964608
        .long   1035072335
        .long   1064372488
        .long   840880349
        .long   1048576000
        .long   1031957395
        .long   1064506439
        .long   851742225
        .long   1048576000
        .long   1025835404
        .long   1064630795
        .long   2996018466
        .long   1048576000
        .long   1015605553
        .long   1064745479
        .long   846006572
        .long   1048576000
        .long   3152414341
        .long   1064850424
        .long   2987244005
        .long   1048576000
        .long   3170705253
        .long   1064945565
        .long   851856985
        .long   1048576000
        .long   3177244920
        .long   1065030846
        .long   855602635
        .long   1048576000
        .long   1027359369
        .long   1065106216
        .long   2989610635
        .long   1040187392
        .long   1018299420
        .long   1065171628
        .long   2969000681
        .long   1040187392
        .long   3140071849
        .long   1065227044
        .long   3002197507
        .long   1040187392
        .long   3168602920
        .long   1065272429
        .long   838093129
        .long   1040187392
        .long   1010124837
        .long   1065307757
        .long   852498564
        .long   1031798784
        .long   3160150850
        .long   1065333007
        .long   836655967
        .long   1031798784
        .long   3151746369
        .long   1065348163
        .long   814009613
        .long   1023410176
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
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
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
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   3190467243
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   1007192156
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   1026206332
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   1109588355
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   3167293403
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   809222144
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2838781952
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
        .long   2710384946
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
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1413742592
        .long   1074340347
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   1280075305
        .long   1033276451
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   3162727815
        .long   3217380692
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   939838102
        .long   1065423085
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   4003935331
        .long   3207198463
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   239893998
        .long   1053154271
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
        .long   1050868099
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
_vmldCosHATab:
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   393047345
        .long   3212032302
        .long   3156849708
        .long   1069094822
        .long   3758096384
        .long   3158189848
        .long   0
        .long   1072693248
        .long   18115067
        .long   3214126342
        .long   1013556747
        .long   1070135480
        .long   3221225472
        .long   3160567065
        .long   0
        .long   1072693248
        .long   2476548698
        .long   3215330282
        .long   785751814
        .long   1070765062
        .long   2684354560
        .long   3161838221
        .long   0
        .long   1072693248
        .long   2255197647
        .long   3216211105
        .long   2796464483
        .long   1071152610
        .long   3758096384
        .long   3160878317
        .long   0
        .long   1072693248
        .long   1945768569
        .long   3216915048
        .long   939980347
        .long   1071524701
        .long   536870912
        .long   1012796809
        .long   0
        .long   1072693248
        .long   1539668340
        .long   3217396327
        .long   967731400
        .long   1071761211
        .long   536870912
        .long   1015752157
        .long   0
        .long   1072693248
        .long   1403757309
        .long   3217886718
        .long   621354454
        .long   1071926515
        .long   536870912
        .long   1013450602
        .long   0
        .long   1072693248
        .long   2583490354
        .long   1070236281
        .long   1719614413
        .long   1072079006
        .long   536870912
        .long   3163282740
        .long   0
        .long   1071644672
        .long   2485417816
        .long   1069626316
        .long   1796544321
        .long   1072217216
        .long   536870912
        .long   3162686945
        .long   0
        .long   1071644672
        .long   2598800519
        .long   1068266419
        .long   688824739
        .long   1072339814
        .long   3758096384
        .long   1010431536
        .long   0
        .long   1071644672
        .long   2140183630
        .long   3214756396
        .long   4051746225
        .long   1072445618
        .long   2147483648
        .long   3161907377
        .long   0
        .long   1071644672
        .long   1699043957
        .long   3216902261
        .long   3476196678
        .long   1072533611
        .long   536870912
        .long   1014257638
        .long   0
        .long   1071644672
        .long   1991047213
        .long   1067753521
        .long   1455828442
        .long   1072602945
        .long   3758096384
        .long   1015505073
        .long   0
        .long   1070596096
        .long   240740309
        .long   3215727903
        .long   3489094832
        .long   1072652951
        .long   536870912
        .long   1014325783
        .long   0
        .long   1070596096
        .long   257503056
        .long   3214647653
        .long   2748392742
        .long   1072683149
        .long   1073741824
        .long   3163061750
        .long   0
        .long   1069547520
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   2147483648
        .long   257503056
        .long   1067164005
        .long   2748392742
        .long   1072683149
        .long   1073741824
        .long   3163061750
        .long   0
        .long   3217031168
        .long   240740309
        .long   1068244255
        .long   3489094832
        .long   1072652951
        .long   536870912
        .long   1014325783
        .long   0
        .long   3218079744
        .long   1991047213
        .long   3215237169
        .long   1455828442
        .long   1072602945
        .long   3758096384
        .long   1015505073
        .long   0
        .long   3218079744
        .long   1699043957
        .long   1069418613
        .long   3476196678
        .long   1072533611
        .long   536870912
        .long   1014257638
        .long   0
        .long   3219128320
        .long   2140183630
        .long   1067272748
        .long   4051746225
        .long   1072445618
        .long   2147483648
        .long   3161907377
        .long   0
        .long   3219128320
        .long   2598800519
        .long   3215750067
        .long   688824739
        .long   1072339814
        .long   3758096384
        .long   1010431536
        .long   0
        .long   3219128320
        .long   2485417816
        .long   3217109964
        .long   1796544321
        .long   1072217216
        .long   536870912
        .long   3162686945
        .long   0
        .long   3219128320
        .long   2583490354
        .long   3217719929
        .long   1719614413
        .long   1072079006
        .long   536870912
        .long   3163282740
        .long   0
        .long   3219128320
        .long   1403757309
        .long   1070403070
        .long   621354454
        .long   1071926515
        .long   536870912
        .long   1013450602
        .long   0
        .long   3220176896
        .long   1539668340
        .long   1069912679
        .long   967731400
        .long   1071761211
        .long   536870912
        .long   1015752157
        .long   0
        .long   3220176896
        .long   1945768569
        .long   1069431400
        .long   939980347
        .long   1071524701
        .long   536870912
        .long   1012796809
        .long   0
        .long   3220176896
        .long   2255197647
        .long   1068727457
        .long   2796464483
        .long   1071152610
        .long   3758096384
        .long   3160878317
        .long   0
        .long   3220176896
        .long   2476548698
        .long   1067846634
        .long   785751814
        .long   1070765062
        .long   2684354560
        .long   3161838221
        .long   0
        .long   3220176896
        .long   18115067
        .long   1066642694
        .long   1013556747
        .long   1070135480
        .long   3221225472
        .long   3160567065
        .long   0
        .long   3220176896
        .long   393047345
        .long   1064548654
        .long   3156849708
        .long   1069094822
        .long   3758096384
        .long   3158189848
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   393047345
        .long   1064548654
        .long   3156849708
        .long   3216578470
        .long   3758096384
        .long   1010706200
        .long   0
        .long   3220176896
        .long   18115067
        .long   1066642694
        .long   1013556747
        .long   3217619128
        .long   3221225472
        .long   1013083417
        .long   0
        .long   3220176896
        .long   2476548698
        .long   1067846634
        .long   785751814
        .long   3218248710
        .long   2684354560
        .long   1014354573
        .long   0
        .long   3220176896
        .long   2255197647
        .long   1068727457
        .long   2796464483
        .long   3218636258
        .long   3758096384
        .long   1013394669
        .long   0
        .long   3220176896
        .long   1945768569
        .long   1069431400
        .long   939980347
        .long   3219008349
        .long   536870912
        .long   3160280457
        .long   0
        .long   3220176896
        .long   1539668340
        .long   1069912679
        .long   967731400
        .long   3219244859
        .long   536870912
        .long   3163235805
        .long   0
        .long   3220176896
        .long   1403757309
        .long   1070403070
        .long   621354454
        .long   3219410163
        .long   536870912
        .long   3160934250
        .long   0
        .long   3220176896
        .long   2583490354
        .long   3217719929
        .long   1719614413
        .long   3219562654
        .long   536870912
        .long   1015799092
        .long   0
        .long   3219128320
        .long   2485417816
        .long   3217109964
        .long   1796544321
        .long   3219700864
        .long   536870912
        .long   1015203297
        .long   0
        .long   3219128320
        .long   2598800519
        .long   3215750067
        .long   688824739
        .long   3219823462
        .long   3758096384
        .long   3157915184
        .long   0
        .long   3219128320
        .long   2140183630
        .long   1067272748
        .long   4051746225
        .long   3219929266
        .long   2147483648
        .long   1014423729
        .long   0
        .long   3219128320
        .long   1699043957
        .long   1069418613
        .long   3476196678
        .long   3220017259
        .long   536870912
        .long   3161741286
        .long   0
        .long   3219128320
        .long   1991047213
        .long   3215237169
        .long   1455828442
        .long   3220086593
        .long   3758096384
        .long   3162988721
        .long   0
        .long   3218079744
        .long   240740309
        .long   1068244255
        .long   3489094832
        .long   3220136599
        .long   536870912
        .long   3161809431
        .long   0
        .long   3218079744
        .long   257503056
        .long   1067164005
        .long   2748392742
        .long   3220166797
        .long   1073741824
        .long   1015578102
        .long   0
        .long   3217031168
        .long   0
        .long   2147483648
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   2147483648
        .long   257503056
        .long   3214647653
        .long   2748392742
        .long   3220166797
        .long   1073741824
        .long   1015578102
        .long   0
        .long   1069547520
        .long   240740309
        .long   3215727903
        .long   3489094832
        .long   3220136599
        .long   536870912
        .long   3161809431
        .long   0
        .long   1070596096
        .long   1991047213
        .long   1067753521
        .long   1455828442
        .long   3220086593
        .long   3758096384
        .long   3162988721
        .long   0
        .long   1070596096
        .long   1699043957
        .long   3216902261
        .long   3476196678
        .long   3220017259
        .long   536870912
        .long   3161741286
        .long   0
        .long   1071644672
        .long   2140183630
        .long   3214756396
        .long   4051746225
        .long   3219929266
        .long   2147483648
        .long   1014423729
        .long   0
        .long   1071644672
        .long   2598800519
        .long   1068266419
        .long   688824739
        .long   3219823462
        .long   3758096384
        .long   3157915184
        .long   0
        .long   1071644672
        .long   2485417816
        .long   1069626316
        .long   1796544321
        .long   3219700864
        .long   536870912
        .long   1015203297
        .long   0
        .long   1071644672
        .long   2583490354
        .long   1070236281
        .long   1719614413
        .long   3219562654
        .long   536870912
        .long   1015799092
        .long   0
        .long   1071644672
        .long   1403757309
        .long   3217886718
        .long   621354454
        .long   3219410163
        .long   536870912
        .long   3160934250
        .long   0
        .long   1072693248
        .long   1539668340
        .long   3217396327
        .long   967731400
        .long   3219244859
        .long   536870912
        .long   3163235805
        .long   0
        .long   1072693248
        .long   1945768569
        .long   3216915048
        .long   939980347
        .long   3219008349
        .long   536870912
        .long   3160280457
        .long   0
        .long   1072693248
        .long   2255197647
        .long   3216211105
        .long   2796464483
        .long   3218636258
        .long   3758096384
        .long   1013394669
        .long   0
        .long   1072693248
        .long   2476548698
        .long   3215330282
        .long   785751814
        .long   3218248710
        .long   2684354560
        .long   1014354573
        .long   0
        .long   1072693248
        .long   18115067
        .long   3214126342
        .long   1013556747
        .long   3217619128
        .long   3221225472
        .long   1013083417
        .long   0
        .long   1072693248
        .long   393047345
        .long   3212032302
        .long   3156849708
        .long   3216578470
        .long   3758096384
        .long   1010706200
        .long   0
        .long   1072693248
        .long   1841940611
        .long   1076125488
        .long   0
        .long   1127743488
        .long   1413480448
        .long   1069097467
        .long   442499072
        .long   1032893537
        .long   771977331
        .long   996350346
        .long   1431655765
        .long   3217380693
        .long   286331153
        .long   1065423121
        .long   436314138
        .long   3207201184
        .long   2773927732
        .long   1053236707
        .long   0
        .long   3219128320
        .long   1431655765
        .long   1067799893
        .long   381774871
        .long   3210133868
        .long   436314138
        .long   1056571808
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   2146435072
_vmlReductionTab:
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .long   0
        .long   1100480512
        .long   0
        .long   1101004800
        .long   1073741824
        .long   1072243195
        .long   407279769
        .long   1046758445
        .long   1841940611
        .long   1072979760
        .long   0
        .long   1085276160
        .long   1409286144
        .long   1072243195
        .long   301989888
        .long   1040255814
        .long   1006632960
        .long   3156637299
        .long   2207917344
        .long   979464219
        .long   0
        .long   1072243194
        .long   0
        .long   1051018307
        .long   0
        .long   3174514122
        .long   0
        .long   3153310618
        .long   3773204808
        .long   981752838
        .long   4294967295
        .long   4294967295
        .long   0
        .long   0
        .long   1610612736
        .long   1282694960
        .long   0
        .long   1256952721
        .long   536870912
        .long   1229269500
        .long   3221225472
        .long   1202544455
        .long   0
        .long   1176818551
        .long   2147483648
        .long   1148939346
        .long   536870912
        .long   1124701124
        .long   3758096384
        .long   1099498527
        .long   3758096384
        .long   1071929578
        .long   1342177280
        .long   1046982385
        .long   805306368
        .long   1020320658
        .long   2147483648
        .long   993817732
        .long   0
        .long   968598976
        .long   2684354560
        .long   942220475
        .long   2415919104
        .long   915426956
        .long   0
        .long   885849629
        .long   536870912
        .long   863855510
        .long   1610612736
        .long   836031391
        .long   4026531840
        .long   810828058
        .long   1073741824
        .long   784674491
        .long   1610612736
        .long   757207974
        .long   3489660928
        .long   732020890
        .long   0
        .long   703061904
        .long   1610612736
        .long   679713053
        .long   2147483648
        .long   652001705
        .long   1073741824
        .long   626850382
        .long   2147483648
        .long   597786158
        .long   805306368
        .long   575535400
        .long   536870912
        .long   548814833
        .long   268435456
        .long   523239288
        .long   3758096384
        .long   495550718
        .long   2952790016
        .long   469954840
        .long   1073741824
        .long   442925723
        .long   1073741824
        .long   416247094
        .long   3758096384
        .long   392128403
        .long   2147483648
        .long   364254062
        .long   3221225472
        .long   339643518
        .long   2684354560
        .long   313162111
        .long   805306368
        .long   286354345
        .long   2952790016
        .long   260811902
        .long   1610612736
        .long   234667567
        .long   3758096384
        .long   207520668
        .long   1073741824
        .long   182175017
        .long   4026531840
        .long   155380331
        .long   805306368
        .long   129417058
        .long   536870912
        .long   103691636
        .long   0
        .long   73760972
        .long   3221225472
        .long   48348958
        .long   536870912
        .long   23784188
        .data
#endif
