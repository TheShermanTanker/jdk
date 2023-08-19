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
        .globl __jsvml_log1pf4_ha_e9

__jsvml_log1pf4_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 280
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovaps   xmm14, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm10
        vmovups   XMMWORD PTR [240+rsp], xmm9
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1984]
        and       r13, -64
        vmaxps    xmm3, xmm2, xmm14
        vminps    xmm4, xmm2, xmm14
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1088]
        vaddps    xmm5, xmm3, xmm4
        vandps    xmm15, xmm14, xmm1
        vandnps   xmm10, xmm1, xmm14
        vcmpltps  xmm9, xmm15, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1152]
        vorps     xmm0, xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1216]
        vandps    xmm1, xmm5, xmm0
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1344]
        vsubps    xmm3, xmm3, xmm1
        mov       QWORD PTR [264+rsp], r13
        vaddps    xmm0, xmm4, xmm3
        vandps    xmm4, xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1536]
        vorps     xmm15, xmm4, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1600]
        vrcpps    xmm5, xmm15
        vcmpnleps xmm4, xmm14, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1728]
        vandps    xmm3, xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1280]
        vroundps  xmm5, xmm5, 0
        vpsubd    xmm15, xmm9, xmm3
        vmulps    xmm15, xmm5, xmm15
        vpsrld    xmm9, xmm1, 23
        vcmpltps  xmm3, xmm14, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1664]
        vcvtdq2ps xmm9, xmm9
        vmulps    xmm1, xmm1, xmm15
        vmulps    xmm15, xmm0, xmm15
        vsubps    xmm1, xmm1, xmm2
        vpsrld    xmm5, xmm5, 13
        vorps     xmm4, xmm3, xmm4
        vmovd     ecx, xmm5
        vaddps    xmm2, xmm1, xmm15
        vmovmskps edx, xmm4
        vsubps    xmm0, xmm2, xmm1
        vpextrd   r8d, xmm5, 1
        vsubps    xmm0, xmm15, xmm0
        vpextrd   r9d, xmm5, 2
        vpextrd   r10d, xmm5, 3
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovq     xmm3, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm4, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        vmovq     xmm15, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vmovq     xmm5, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r10]
        vunpcklps xmm1, xmm3, xmm4
        vunpcklps xmm15, xmm15, xmm5
        vmovlhps  xmm3, xmm1, xmm15
        vshufps   xmm15, xmm1, xmm15, 238
        vmulps    xmm4, xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1856]
        vmulps    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1408]
        vmulps    xmm9, xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1920]
        vaddps    xmm5, xmm3, xmm4
        vmulps    xmm4, xmm2, xmm2
        vaddps    xmm3, xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1472]
        vaddps    xmm9, xmm15, xmm9
        vmulps    xmm15, xmm3, xmm4
        vaddps    xmm1, xmm0, xmm15
        vaddps    xmm15, xmm2, xmm5
        vsubps    xmm0, xmm15, xmm5
        vsubps    xmm2, xmm2, xmm0
        vaddps    xmm0, xmm9, xmm2
        vaddps    xmm2, xmm1, xmm0
        vaddps    xmm3, xmm15, xmm2
        vorps     xmm0, xmm3, xmm10
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm9, XMMWORD PTR [240+rsp]
        vmovups   xmm10, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm14
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

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_e9_B1_B3:
        .long   803329
        .long   2151490
        .long   1022010
        .long   960561
        .long   911396
        .long   849947
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_log1pf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_log1pf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_log1pf4_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_log1pf8_ha_l9

__jsvml_log1pf8_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L16:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [304+rsp], ymm15
        vmovups   YMMWORD PTR [336+rsp], ymm14
        vmovups   YMMWORD PTR [368+rsp], ymm11
        vmovups   YMMWORD PTR [464+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [496+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [207+rsp]
        vmovups   ymm11, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1984]
        and       r13, -64
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1088]
        vmovups   ymm8, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1344]
        vmovaps   ymm7, ymm0
        vmaxps    ymm14, ymm11, ymm7
        vminps    ymm15, ymm11, ymm7
        vandps    ymm1, ymm7, ymm4
        vandnps   ymm5, ymm4, ymm7
        vcmplt_oqps ymm4, ymm1, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1152]
        vaddps    ymm3, ymm14, ymm15
        vorps     ymm2, ymm4, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1216]
        vandps    ymm2, ymm3, ymm2
        vandps    ymm0, ymm2, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1536]
        vorps     ymm1, ymm0, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1600]
        vrcpps    ymm4, ymm1
        vsubps    ymm9, ymm14, ymm2
        vcmplt_oqps ymm0, ymm7, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1664]
        vcmpnle_uqps ymm1, ymm7, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1728]
        vaddps    ymm3, ymm15, ymm9
        vroundps  ymm9, ymm4, 0
        vpsrld    ymm15, ymm2, 23
        vandps    ymm10, ymm2, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1280]
        vpsubd    ymm14, ymm8, ymm10
        vcvtdq2ps ymm4, ymm15
        vmulps    ymm10, ymm9, ymm14
        vpsrld    ymm9, ymm9, 13
        vfmsub213ps ymm2, ymm10, ymm11
        vmulps    ymm11, ymm3, ymm10
        vaddps    ymm3, ymm2, ymm11
        vsubps    ymm2, ymm3, ymm2
        vsubps    ymm2, ymm11, ymm2
        vorps     ymm8, ymm0, ymm1
        vmovmskps edx, ymm8
        mov       QWORD PTR [536+rsp], r13
        vmovd     ecx, xmm9
        vextracti128 xmm11, ymm9, 1
        vpextrd   r8d, xmm9, 1
        vpextrd   r9d, xmm9, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovd     r11d, xmm11
        vmovq     xmm14, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        vpextrd   r10d, xmm9, 3
        vmovq     xmm15, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vpextrd   ecx, xmm11, 1
        vpextrd   r8d, xmm11, 2
        vpextrd   r9d, xmm11, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovq     xmm1, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r10]
        vmovq     xmm8, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r11]
        vmovq     xmm9, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm10, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vunpcklps xmm15, xmm14, xmm15
        vunpcklps xmm14, xmm0, xmm1
        vunpcklps xmm0, xmm8, xmm10
        vunpcklps xmm1, xmm9, xmm11
        vinsertf128 ymm8, ymm15, xmm0, 1
        vinsertf128 ymm10, ymm14, xmm1, 1
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1408]
        vunpcklps ymm0, ymm8, ymm10
        vfmadd231ps ymm0, ymm4, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1856]
        vfmadd213ps ymm1, ymm3, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1472]
        vaddps    ymm9, ymm3, ymm0
        vunpckhps ymm8, ymm8, ymm10
        vmulps    ymm10, ymm3, ymm3
        vfmadd132ps ymm4, ymm8, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1920]
        vfmadd213ps ymm1, ymm10, ymm2
        vsubps    ymm2, ymm9, ymm0
        vsubps    ymm3, ymm3, ymm2
        vaddps    ymm4, ymm4, ymm3
        vaddps    ymm0, ymm1, ymm4
        vaddps    ymm1, ymm9, ymm0
        vorps     ymm0, ymm1, ymm5
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm10, YMMWORD PTR [464+rsp]
        vmovups   ymm11, YMMWORD PTR [368+rsp]
        vmovups   ymm14, YMMWORD PTR [336+rsp]
        vmovups   ymm15, YMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B2_3:

        vmovups   YMMWORD PTR [r13], ymm7
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B2_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [96+rsp], ymm6
        vmovups   YMMWORD PTR [64+rsp], ymm12
        vmovups   YMMWORD PTR [32+rsp], ymm13
        mov       QWORD PTR [136+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [128+rsp], rsi
        mov       esi, edx

.L_B2_7:

        bt        esi, ebx
        jc        .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B2_7

.L_B2_9:

        vmovups   ymm6, YMMWORD PTR [96+rsp]
        vmovups   ymm12, YMMWORD PTR [64+rsp]
        vmovups   ymm13, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [136+rsp]
        mov       rsi, QWORD PTR [128+rsp]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf8_ha_l9_B1_B3:
        .long   1202433
        .long   4379737
        .long   2062417
        .long   1804360
        .long   1677375
        .long   1943606
        .long   1554477
        .long   1435684
        .long   1308699
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_log1pf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf8_ha_l9_B6_B10:
        .long   665121
        .long   1074214
        .long   1127452
        .long   186388
        .long   313358
        .long   419848
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_log1pf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_log1pf8_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_log1pf4_ha_l9

__jsvml_log1pf4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L43:

        sub       rsp, 280
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovaps   xmm15, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [240+rsp], xmm13
        vmovups   XMMWORD PTR [224+rsp], xmm9
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1984]
        and       r13, -64
        vmaxps    xmm13, xmm1, xmm15
        vminps    xmm2, xmm1, xmm15
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1088]
        vaddps    xmm5, xmm13, xmm2
        vandps    xmm9, xmm15, xmm3
        vandnps   xmm14, xmm3, xmm15
        vcmpltps  xmm4, xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1152]
        vorps     xmm0, xmm4, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1216]
        vandps    xmm4, xmm5, xmm0
        vandps    xmm5, xmm4, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1280]
        vsubps    xmm13, xmm13, xmm4
        mov       QWORD PTR [264+rsp], r13
        vaddps    xmm0, xmm2, xmm13
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1536]
        vorps     xmm3, xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1600]
        vrcpps    xmm9, xmm3
        vcmpltps  xmm2, xmm15, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1664]
        vcmpnleps xmm3, xmm15, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1728]
        vmovups   xmm13, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1344]
        vorps     xmm2, xmm2, xmm3
        vroundps  xmm9, xmm9, 0
        vpsubd    xmm13, xmm13, xmm5
        vmulps    xmm5, xmm9, xmm13
        vpsrld    xmm13, xmm4, 23
        vcvtdq2ps xmm13, xmm13
        vmovmskps edx, xmm2
        vfmsub213ps xmm4, xmm5, xmm1
        vmulps    xmm1, xmm0, xmm5
        vaddps    xmm5, xmm4, xmm1
        vsubps    xmm4, xmm5, xmm4
        vsubps    xmm0, xmm1, xmm4
        vpsrld    xmm1, xmm9, 13
        vmovd     ecx, xmm1
        vpextrd   r8d, xmm1, 1
        vpextrd   r9d, xmm1, 2
        vpextrd   r10d, xmm1, 3
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovq     xmm2, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm3, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        vmovq     xmm9, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vmovq     xmm4, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r10]
        vunpcklps xmm2, xmm2, xmm3
        vunpcklps xmm9, xmm9, xmm4
        vmovlhps  xmm1, xmm2, xmm9
        vfmadd231ps xmm1, xmm13, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1856]
        vshufps   xmm9, xmm2, xmm9, 238
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1408]
        vfmadd213ps xmm4, xmm5, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1472]
        vfmadd132ps xmm13, xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1920]
        vmulps    xmm2, xmm5, xmm5
        vaddps    xmm9, xmm5, xmm1
        vfmadd213ps xmm4, xmm2, xmm0
        vsubps    xmm0, xmm9, xmm1
        vsubps    xmm5, xmm5, xmm0
        vaddps    xmm13, xmm13, xmm5
        vaddps    xmm0, xmm4, xmm13
        vaddps    xmm1, xmm9, xmm0
        vorps     xmm0, xmm1, xmm14
        test      edx, edx
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm9, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [240+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm15
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

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_l9_B1_B3:
        .long   803329
        .long   2151490
        .long   956474
        .long   1038385
        .long   911400
        .long   849947
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_log1pf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_log1pf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_log1pf4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_log1pf4_ha_ex

__jsvml_log1pf4_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L58:

        sub       rsp, 280
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [240+rsp], xmm15
        movups    XMMWORD PTR [208+rsp], xmm9
        movups    XMMWORD PTR [224+rsp], xmm7
        movups    XMMWORD PTR [192+rsp], xmm6
        movaps    xmm6, xmm0
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm15, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1984]
        and       r13, -64
        movaps    xmm1, xmm15
        movaps    xmm4, xmm15
        maxps     xmm1, xmm6
        minps     xmm4, xmm6
        movups    xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1088]
        movaps    xmm0, xmm1
        movaps    xmm5, xmm2
        andps     xmm2, xmm6
        cmpltps   xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1152]
        addps     xmm0, xmm4
        orps      xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1216]
        andnps    xmm5, xmm6
        andps     xmm0, xmm2
        movups    xmm3, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1536]
        subps     xmm1, xmm0
        andps     xmm3, xmm0
        addps     xmm4, xmm1
        orps      xmm3, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1600]
        rcpps     xmm1, xmm3
        movups    xmm2, XMMWORD PTR [rip+_2il0floatpacket_23]
        movaps    xmm3, xmm6
        movdqu    xmm7, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1280]
        addps     xmm1, xmm2
        cmpltps   xmm3, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1664]
        subps     xmm1, xmm2
        movdqu    xmm9, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1344]
        pand      xmm7, xmm0
        psubd     xmm9, xmm7
        movaps    xmm2, xmm0
        mulps     xmm9, xmm1
        movaps    xmm7, xmm6
        cmpnleps  xmm7, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1728]
        mulps     xmm0, xmm9
        mulps     xmm4, xmm9
        subps     xmm0, xmm15
        orps      xmm3, xmm7
        psrld     xmm1, 13
        movmskps  edx, xmm3
        movaps    xmm3, xmm0
        pshufd    xmm9, xmm1, 1
        psrld     xmm2, 23
        pshufd    xmm7, xmm1, 2
        addps     xmm3, xmm4
        cvtdq2ps  xmm2, xmm2
        movd      ecx, xmm1
        movd      r8d, xmm9
        movaps    xmm15, xmm3
        pshufd    xmm1, xmm1, 3
        subps     xmm15, xmm0
        movd      r9d, xmm7
        movd      r10d, xmm1
        movups    xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1408]
        subps     xmm4, xmm15
        mulps     xmm1, xmm3
        movsxd    rcx, ecx
        addps     xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1472]
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        movq      xmm0, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        movq      xmm15, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        unpcklps  xmm0, xmm15
        movups    xmm15, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1856]
        mulps     xmm15, xmm2
        mulps     xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1920]
        movq      xmm9, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        movq      xmm7, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r10]
        unpcklps  xmm9, xmm7
        movaps    xmm7, xmm0
        shufps    xmm0, xmm9, 238
        movlhps   xmm7, xmm9
        addps     xmm0, xmm2
        addps     xmm7, xmm15
        movaps    xmm2, xmm3
        mulps     xmm2, xmm3
        mulps     xmm1, xmm2
        mov       QWORD PTR [264+rsp], r13
        addps     xmm4, xmm1
        movaps    xmm1, xmm3
        addps     xmm1, xmm7
        movaps    xmm9, xmm1
        subps     xmm9, xmm7
        subps     xmm3, xmm9
        addps     xmm0, xmm3
        addps     xmm4, xmm0
        addps     xmm1, xmm4
        orps      xmm1, xmm5
        test      edx, edx
        jne       .L_B4_3

.L_B4_2:

        movups    xmm6, XMMWORD PTR [192+rsp]
        movaps    xmm0, xmm1
        movups    xmm7, XMMWORD PTR [224+rsp]
        movups    xmm9, XMMWORD PTR [208+rsp]
        movups    xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        movups    XMMWORD PTR [r13], xmm6
        movups    XMMWORD PTR [64+r13], xmm1

.L_B4_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B4_7:

        mov       ecx, ebx
        mov       eax, 1
        shl       eax, cl
        test      esi, eax
        jne       .L_B4_10

.L_B4_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm1, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_ex_B1_B3:
        .long   802561
        .long   2151487
        .long   813108
        .long   948268
        .long   890916
        .long   1046555
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_log1pf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_log1pf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_log1pf4_ha_ex_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_log1pf16_ha_z0

__jsvml_log1pf16_ha_z0:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L73:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+256]
        and       r13, -64
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+320]
        vmovaps   zmm5, zmm0
        vmaxps    zmm22, zmm3, zmm5 {sae}
        vminps    zmm24, zmm3, zmm5 {sae}
        vaddps    zmm23, zmm3, zmm5 {rn-sae}
        vgetmantps zmm2, zmm23, 8 {sae}
        vgetexpps zmm30, zmm23 {sae}
        vsubps    zmm25, zmm23, zmm22 {rn-sae}
        vrcp14ps  zmm26, zmm2
        vsubps    zmm27, zmm24, zmm25 {rn-sae}
        vxorps    zmm28, zmm30, zmm4
        vrndscaleps zmm22, zmm26, 104 {sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+128]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+448]
        vscalefps zmm29, zmm27, zmm28 {rn-sae}
        vfmsub213ps zmm2, zmm22, zmm3 {rn-sae}
        vgetexpps zmm23, zmm22 {sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+576]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+704]
        vmulps    zmm31, zmm22, zmm29 {rn-sae}
        vaddps    zmm1, zmm2, zmm31 {rn-sae}
        vsubps    zmm0, zmm1, zmm2 {rn-sae}
        vsubps    zmm2, zmm30, zmm3 {rn-sae}
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+640]
        vmulps    zmm30, zmm1, zmm1 {rn-sae}
        vsubps    zmm25, zmm31, zmm0 {rn-sae}
        vsubps    zmm2, zmm2, zmm23 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512]
        vpsrld    zmm31, zmm22, 18
        vpermt2ps zmm0, zmm31, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+64]
        vpermt2ps zmm24, zmm31, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+192]
        vfmadd231ps zmm0, zmm3, zmm2 {rn-sae}
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal_avx512+512]
        vaddps    zmm29, zmm24, zmm25 {rn-sae}
        vaddps    zmm22, zmm0, zmm1 {rn-sae}
        vfmadd231ps zmm3, zmm26, zmm1 {rn-sae}
        vfmadd213ps zmm2, zmm28, zmm29 {rn-sae}
        vsubps    zmm0, zmm22, zmm0 {rn-sae}
        vfmadd213ps zmm3, zmm1, zmm27 {rn-sae}
        vsubps    zmm1, zmm1, zmm0 {rn-sae}
        vfmadd213ps zmm3, zmm30, zmm2 {rn-sae}
        vcmpps    k0, zmm1, zmm1, 4 {sae}
        vaddps    zmm0, zmm3, zmm1 {rn-sae}
        kmovw     r8d, k0
        vaddps    zmm0, zmm22, zmm0 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vpternlogd zmm0, zmm5, zmm4, 248
        test      r8d, r8d
        jne       .L_B5_3

.L_B5_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B5_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B5_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B5_6

.L_B5_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B5_6:

        vmovups   ZMMWORD PTR [r13], zmm5
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B5_11

.L_B5_7:

        cmp       edx, eax
        je        .L_B5_2

.L_B5_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B5_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
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
        vmovups   zmm0, ZMMWORD PTR [64+r13]
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

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B5_13
        .align    16, 0x90

.L_B5_16:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_11
        .rva    _unwind___jsvml_log1pf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf16_ha_z0_B11_B15:
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

        .rva    .L_B5_11
        .rva    .L_B5_16
        .rva    _unwind___jsvml_log1pf16_ha_z0_B11_B15

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_log1pf8_ha_e9

__jsvml_log1pf8_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L124:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [304+rsp], ymm14
        vmovups   YMMWORD PTR [336+rsp], ymm13
        vmovups   YMMWORD PTR [496+rsp], ymm12
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [207+rsp]
        vmovups   ymm8, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1984]
        and       r13, -64
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1088]
        vmovaps   ymm4, ymm0
        vmaxps    ymm12, ymm8, ymm4
        vminps    ymm7, ymm8, ymm4
        vandps    ymm1, ymm4, ymm2
        vcmplt_oqps ymm14, ymm1, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1152]
        vaddps    ymm0, ymm12, ymm7
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1344]
        vorps     ymm13, ymm14, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1216]
        vandps    ymm5, ymm0, ymm13
        vandps    ymm11, ymm5, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1536]
        vorps     ymm14, ymm11, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1600]
        vrcpps    ymm0, ymm14
        vsubps    ymm9, ymm12, ymm5
        vcmplt_oqps ymm11, ymm4, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1664]
        vroundps  ymm13, ymm0, 0
        vaddps    ymm9, ymm7, ymm9
        vcmpnle_uqps ymm12, ymm4, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1728]
        vandnps   ymm3, ymm2, ymm4
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1280]
        vorps     ymm12, ymm11, ymm12
        mov       QWORD PTR [536+rsp], r13
        vpand     xmm14, xmm5, xmm2
        vextractf128 xmm7, ymm5, 1
        vpsubd    xmm0, xmm1, xmm14
        vpsrld    xmm14, xmm5, 23
        vandps    xmm2, xmm7, xmm2
        vpsrld    xmm7, xmm7, 23
        vpsubd    xmm1, xmm1, xmm2
        vinsertf128 ymm2, ymm0, xmm1, 1
        vmulps    ymm1, ymm13, ymm2
        vpxor     xmm0, xmm0, xmm0
        vmulps    ymm5, ymm5, ymm1
        vsubps    ymm8, ymm5, ymm8
        vextractf128 xmm11, ymm12, 1
        vinsertf128 ymm2, ymm14, xmm7, 1
        vpackssdw xmm14, xmm12, xmm11
        vpacksswb xmm12, xmm14, xmm0
        vmulps    ymm14, ymm9, ymm1
        vpmovmskb edx, xmm12
        vcvtdq2ps ymm2, ymm2
        vaddps    ymm1, ymm8, ymm14
        vsubps    ymm0, ymm1, ymm8
        vsubps    ymm0, ymm14, ymm0
        vpsrld    xmm7, xmm13, 13
        vmovd     ecx, xmm7
        vextractf128 xmm12, ymm13, 1
        vpextrd   r9d, xmm7, 2
        vpsrld    xmm12, xmm12, 13
        movsxd    rcx, ecx
        vpextrd   r8d, xmm7, 1
        movsxd    r9, r9d
        movsxd    r8, r8d
        vmovd     r11d, xmm12
        vmovq     xmm14, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm13, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vpextrd   r10d, xmm7, 3
        vpextrd   ecx, xmm12, 1
        vpextrd   r9d, xmm12, 3
        movsxd    r10, r10d
        vmovq     xmm9, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        movsxd    rcx, ecx
        vpextrd   r8d, xmm12, 2
        movsxd    r9, r9d
        movsxd    r11, r11d
        movsxd    r8, r8d
        vmovq     xmm8, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r10]
        vmovq     xmm7, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+rcx]
        vmovq     xmm12, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r9]
        vunpcklps xmm13, xmm14, xmm13
        vunpcklps xmm14, xmm9, xmm8
        vmovq     xmm5, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r11]
        vmovq     xmm11, QWORD PTR ["__jsvml_slog1p_ha_data_internal"@imgrel-137216+rax+r8]
        vunpcklps xmm8, xmm7, xmm12
        vunpcklps xmm5, xmm5, xmm11
        vinsertf128 ymm11, ymm14, xmm8, 1
        vmulps    ymm8, ymm1, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1408]
        vinsertf128 ymm9, ymm13, xmm5, 1
        vmulps    ymm5, ymm2, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1856]
        vmulps    ymm2, ymm2, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1920]
        vunpcklps ymm14, ymm9, ymm11
        vunpckhps ymm7, ymm9, ymm11
        vmulps    ymm11, ymm1, ymm1
        vaddps    ymm9, ymm8, YMMWORD PTR [rip+__jsvml_slog1p_ha_data_internal+1472]
        vaddps    ymm14, ymm14, ymm5
        vaddps    ymm2, ymm7, ymm2
        vmulps    ymm12, ymm9, ymm11
        vaddps    ymm5, ymm1, ymm14
        vaddps    ymm13, ymm0, ymm12
        vsubps    ymm0, ymm5, ymm14
        vsubps    ymm1, ymm1, ymm0
        vaddps    ymm0, ymm2, ymm1
        vaddps    ymm1, ymm13, ymm0
        vaddps    ymm2, ymm5, ymm1
        vorps     ymm0, ymm2, ymm3
        test      dl, dl
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        vmovups   ymm12, YMMWORD PTR [496+rsp]
        vmovups   ymm13, YMMWORD PTR [336+rsp]
        vmovups   ymm14, YMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm4
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B6_2

.L_B6_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [96+rsp], ymm6
        vmovups   YMMWORD PTR [64+rsp], ymm10
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [136+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [128+rsp], rsi
        mov       esi, edx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B6_7

.L_B6_9:

        vmovups   ymm6, YMMWORD PTR [96+rsp]
        vmovups   ymm10, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [136+rsp]
        mov       rsi, QWORD PTR [128+rsp]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog1p_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_log1pf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf8_ha_e9_B1_B3:
        .long   1202433
        .long   4379737
        .long   1538129
        .long   1804360
        .long   1677375
        .long   1947702
        .long   2082861
        .long   1431588
        .long   1304603
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_log1pf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log1pf8_ha_e9_B6_B10:
        .long   665121
        .long   1074214
        .long   1127452
        .long   194580
        .long   305166
        .long   419848
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_log1pf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_log1pf8_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_slog1p_ha_cout_rare_internal

__jsvml_slog1p_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L151:

        sub       rsp, 72
        mov       r8, rdx
        movss     xmm0, DWORD PTR [rcx]
        xor       eax, eax
        movups    XMMWORD PTR [48+rsp], xmm7
        xor       dl, dl
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_107]
        movss     DWORD PTR [36+rsp], xmm0
        movzx     r9d, WORD PTR [38+rsp]
        and       r9d, 32640
        cmp       r9d, 32640
        je        .L_B7_15

.L_B7_2:

        movss     DWORD PTR [40+rsp], xmm0
        xor       r9d, r9d
        movzx     ecx, WORD PTR [42+rsp]
        test      ecx, 32640
        jne       .L_B7_4

.L_B7_3:

        mulss     xmm0, DWORD PTR [rip+_2il0floatpacket_92]
        mov       dl, 1
        movss     DWORD PTR [40+rsp], xmm0
        mov       r9d, -40

.L_B7_4:

        pxor      xmm1, xmm1
        comiss    xmm0, xmm1
        jbe       .L_B7_10

.L_B7_5:

        movaps    xmm3, xmm0
        subss     xmm3, DWORD PTR [rip+_2il0floatpacket_107]
        movss     DWORD PTR [36+rsp], xmm3
        and       BYTE PTR [39+rsp], 127
        movss     xmm2, DWORD PTR [36+rsp]
        comiss    xmm2, DWORD PTR [rip+_2il0floatpacket_93]
        jbe       .L_B7_9

.L_B7_6:

        movzx     ecx, WORD PTR [42+rsp]
        pxor      xmm4, xmm4
        and       ecx, 32640
        shr       ecx, 7
        lea       r9d, DWORD PTR [-127+r9+rcx]
        cvtsi2ss  xmm4, r9d
        cmp       dl, 1
        je        .L_B7_13

.L_B7_7:

        movss     xmm3, DWORD PTR [rip+_2il0floatpacket_103]
        movss     xmm1, DWORD PTR [rip+_2il0floatpacket_104]
        mulss     xmm3, xmm4
        mulss     xmm4, xmm1
        movaps    xmm1, xmm4

.L_B7_8:

        movss     DWORD PTR [36+rsp], xmm0
        lea       r10, QWORD PTR [rip+__ImageBase]
        movzx     edx, WORD PTR [38+rsp]
        movaps    xmm2, xmm3
        and       edx, -32641
        mov       r11, r10
        add       edx, 16256
        mov       WORD PTR [38+rsp], dx
        movss     xmm0, DWORD PTR [36+rsp]
        movaps    xmm4, xmm0
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_105]
        movss     DWORD PTR [32+rsp], xmm4
        mov       ecx, DWORD PTR [32+rsp]
        and       ecx, 127
        lea       r9d, DWORD PTR [rcx+rcx*2]
        movss     xmm5, DWORD PTR ["_vmldLnHATab"@imgrel+4+r11+r9*4]
        movss     xmm4, DWORD PTR ["_vmldLnHATab"@imgrel+r10+r9*4]
        addss     xmm2, xmm5
        addss     xmm1, DWORD PTR ["_vmldLnHATab"@imgrel+8+r10+r9*4]
        movaps    xmm7, xmm2
        subss     xmm7, xmm3
        movss     DWORD PTR [32+rsp], xmm7
        movss     xmm3, DWORD PTR [32+rsp]
        subss     xmm5, xmm3
        movss     DWORD PTR [32+rsp], xmm5
        movss     xmm3, DWORD PTR [32+rsp]
        movss     xmm5, DWORD PTR [rip+_2il0floatpacket_106]
        addss     xmm3, xmm1
        movaps    xmm1, xmm5
        addss     xmm1, xmm0
        movss     DWORD PTR [32+rsp], xmm1
        movaps    xmm1, xmm3
        movss     xmm7, DWORD PTR [32+rsp]
        subss     xmm7, xmm5
        movss     xmm5, DWORD PTR [rip+_2il0floatpacket_94]
        subss     xmm0, xmm7
        mulss     xmm7, xmm4
        subss     xmm7, DWORD PTR [rip+_2il0floatpacket_107]
        mulss     xmm4, xmm0
        movaps    xmm0, xmm7
        addss     xmm1, xmm4
        addss     xmm0, xmm4
        addss     xmm7, xmm2
        mulss     xmm5, xmm0
        movaps    xmm2, xmm1
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_95]
        subss     xmm2, xmm3
        mulss     xmm5, xmm0
        movss     DWORD PTR [32+rsp], xmm2
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_96]
        mulss     xmm5, xmm0
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_97]
        mulss     xmm5, xmm0
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_98]
        mulss     xmm5, xmm0
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_99]
        mulss     xmm5, xmm0
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_100]
        mulss     xmm5, xmm0
        mulss     xmm5, xmm0
        movss     xmm0, DWORD PTR [32+rsp]
        subss     xmm4, xmm0
        movss     DWORD PTR [32+rsp], xmm4
        movss     xmm3, DWORD PTR [32+rsp]
        addss     xmm3, xmm5
        movaps    xmm5, xmm7
        addss     xmm5, xmm1
        movss     DWORD PTR [r8], xmm5
        subss     xmm5, xmm7
        movss     DWORD PTR [32+rsp], xmm5
        movss     xmm7, DWORD PTR [32+rsp]
        subss     xmm1, xmm7
        movss     DWORD PTR [32+rsp], xmm1
        movss     xmm1, DWORD PTR [32+rsp]
        addss     xmm3, xmm1
        movss     DWORD PTR [32+rsp], xmm3
        movss     xmm4, DWORD PTR [32+rsp]
        addss     xmm4, DWORD PTR [r8]
        movss     DWORD PTR [r8], xmm4
        jmp       .L_B7_12

.L_B7_9:

        movss     xmm0, DWORD PTR [rip+_2il0floatpacket_94]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_95]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_96]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_97]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_98]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_99]
        mulss     xmm0, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_100]
        mulss     xmm0, xmm3
        mulss     xmm0, xmm3
        addss     xmm3, xmm0
        movss     DWORD PTR [r8], xmm3
        jmp       .L_B7_12

.L_B7_10:

        ucomiss   xmm0, xmm1
        jp        .L_B7_11
        je        .L_B7_14

.L_B7_11:

        divss     xmm1, xmm1
        movss     DWORD PTR [r8], xmm1
        mov       eax, 1

.L_B7_12:

        movups    xmm7, XMMWORD PTR [48+rsp]
        add       rsp, 72
        ret

.L_B7_13:

        movss     xmm2, DWORD PTR [rip+_2il0floatpacket_102]
        mulss     xmm4, xmm2
        movaps    xmm3, xmm4
        jmp       .L_B7_8

.L_B7_14:

        movss     xmm0, DWORD PTR [rip+_2il0floatpacket_101]
        mov       eax, 2
        divss     xmm0, xmm1
        movss     DWORD PTR [r8], xmm0
        jmp       .L_B7_12

.L_B7_15:

        mov       dl, BYTE PTR [39+rsp]
        and       dl, -128
        cmp       dl, -128
        je        .L_B7_17

.L_B7_16:

        mulss     xmm0, xmm0
        movss     DWORD PTR [r8], xmm0
        jmp       .L_B7_12

.L_B7_17:

        test      DWORD PTR [36+rsp], 8388607
        jne       .L_B7_16

.L_B7_18:

        mov       eax, 1
        pxor      xmm1, xmm1
        pxor      xmm0, xmm0
        divss     xmm1, xmm0
        movss     DWORD PTR [r8], xmm1
        jmp       .L_B7_12
        .align    16, 0x90

.L_B7_19:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_slog1p_ha_cout_rare_internal_B1_B18:
        .long   202241
        .long   227350
        .long   33288

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_19
        .rva    _unwind___jsvml_slog1p_ha_cout_rare_internal_B1_B18

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_slog1p_ha_data_internal_avx512
__jsvml_slog1p_ha_data_internal_avx512:
        .long   1060205056
        .long   1059688960
        .long   1059187712
        .long   1058701824
        .long   1058229248
        .long   1057769472
        .long   1057321984
        .long   1056807936
        .long   1055958016
        .long   1055129600
        .long   1054320640
        .long   1053531136
        .long   1052760064
        .long   1052006400
        .long   1051268096
        .long   1050547200
        .long   1049840640
        .long   1049148416
        .long   1048365056
        .long   1047035904
        .long   1045733376
        .long   1044455424
        .long   1043200000
        .long   1041969152
        .long   1040760832
        .long   1038958592
        .long   1036623872
        .long   1034330112
        .long   1032073216
        .long   1027907584
        .long   1023541248
        .long   1015087104
        .long   901758606
        .long   3071200204
        .long   931108809
        .long   3074069268
        .long   3077535321
        .long   3071146094
        .long   3063010043
        .long   3072147991
        .long   908173938
        .long   3049723733
        .long   925190435
        .long   923601997
        .long   3048768765
        .long   3076457870
        .long   926424291
        .long   3073778483
        .long   3069146713
        .long   912794238
        .long   912483742
        .long   920635797
        .long   3054902185
        .long   3069864633
        .long   922801832
        .long   3033791132
        .long   3076717488
        .long   3076037756
        .long   3072434855
        .long   3077481184
        .long   3066991812
        .long   917116064
        .long   925811956
        .long   900509991
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
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
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
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .globl __jsvml_slog1p_ha_data_internal
__jsvml_slog1p_ha_data_internal:
        .long   3266227256
        .long   3107766024
        .long   3266228276
        .long   3107776882
        .long   3266229284
        .long   3109949545
        .long   3266230292
        .long   3108055846
        .long   3266231292
        .long   3106351937
        .long   3266232276
        .long   3109092567
        .long   3266233260
        .long   3107948216
        .long   3266234236
        .long   3107170960
        .long   3266235204
        .long   3106817287
        .long   3266236164
        .long   3106942449
        .long   3266237116
        .long   3107600489
        .long   3266238060
        .long   3108844279
        .long   3266239004
        .long   3106531253
        .long   3266239932
        .long   3109100650
        .long   3266240860
        .long   3108213420
        .long   3266241780
        .long   3108112381
        .long   3266242692
        .long   3108845034
        .long   3266243604
        .long   3106263589
        .long   3266244500
        .long   3108802209
        .long   3266245396
        .long   3108116909
        .long   3266246284
        .long   3108445707
        .long   3266247164
        .long   3109831435
        .long   3266248044
        .long   3108121760
        .long   3266248916
        .long   3107552123
        .long   3266249780
        .long   3108162844
        .long   3266250644
        .long   3105799146
        .long   3266251492
        .long   3108888393
        .long   3266252340
        .long   3109079979
        .long   3266253188
        .long   3106411173
        .long   3266254020
        .long   3109307139
        .long   3266254852
        .long   3109415127
        .long   3266255684
        .long   3106770317
        .long   3266256500
        .long   3109795834
        .long   3266257324
        .long   3105942641
        .long   3266258132
        .long   3107826892
        .long   3266258940
        .long   3107092610
        .long   3266259740
        .long   3107966131
        .long   3266260540
        .long   3106284596
        .long   3266261332
        .long   3106273188
        .long   3266262116
        .long   3107962226
        .long   3266262900
        .long   3107187186
        .long   3266263676
        .long   3108171617
        .long   3266264452
        .long   3106749947
        .long   3266265220
        .long   3107144703
        .long   3266265980
        .long   3109383615
        .long   3266266740
        .long   3109299629
        .long   3266267500
        .long   3106919521
        .long   3266268252
        .long   3106463913
        .long   3266268996
        .long   3107958670
        .long   3266269740
        .long   3107234917
        .long   3266270476
        .long   3108511954
        .long   3266271212
        .long   3107620056
        .long   3266271940
        .long   3108777693
        .long   3266272668
        .long   3107814325
        .long   3266273388
        .long   3108947630
        .long   3266274108
        .long   3108006290
        .long   3266274820
        .long   3109207222
        .long   3266275532
        .long   3108378366
        .long   3266276236
        .long   3109735912
        .long   3266276940
        .long   3109107087
        .long   3266277644
        .long   3106513079
        .long   3266278340
        .long   3106169044
        .long   3266279028
        .long   3108095503
        .long   3266279716
        .long   3108118349
        .long   3266280404
        .long   3106257463
        .long   3266281084
        .long   3106726720
        .long   3266281756
        .long   3109545389
        .long   3266282436
        .long   3106343833
        .long   3266283100
        .long   3109723642
        .long   3266283772
        .long   3107120300
        .long   3266284436
        .long   3106940529
        .long   3266285092
        .long   3109202170
        .long   3266285748
        .long   3109728494
        .long   3266286404
        .long   3108536808
        .long   3266287052
        .long   3109838471
        .long   3266287700
        .long   3109455977
        .long   3266288348
        .long   3107405879
        .long   3266288988
        .long   3107898790
        .long   3266289628
        .long   3106756477
        .long   3266290260
        .long   3108189081
        .long   3266290892
        .long   3108017907
        .long   3266291524
        .long   3106258339
        .long   3266292148
        .long   3107119845
        .long   3266292772
        .long   3106423069
        .long   3266293388
        .long   3108377050
        .long   3266294004
        .long   3108802011
        .long   3266294620
        .long   3107712277
        .long   3266295228
        .long   3109316274
        .long   3266295836
        .long   3109433625
        .long   3266296444
        .long   3108078064
        .long   3266297044
        .long   3109457438
        .long   3266297644
        .long   3109390801
        .long   3266298244
        .long   3107891329
        .long   3266298836
        .long   3109166323
        .long   3266299428
        .long   3109034299
        .long   3266300020
        .long   3107507904
        .long   3266300604
        .long   3108793919
        .long   3266301188
        .long   3108710352
        .long   3266301772
        .long   3107269350
        .long   3266302348
        .long   3108677203
        .long   3266302924
        .long   3108751436
        .long   3266303500
        .long   3107503720
        .long   3266304068
        .long   3109139881
        .long   3266304636
        .long   3109476985
        .long   3266305204
        .long   3108526254
        .long   3266305772
        .long   3106298768
        .long   3266306332
        .long   3106999765
        .long   3266306892
        .long   3106445739
        .long   3266307444
        .long   3108841650
        .long   3266308004
        .long   3105809415
        .long   3266308548
        .long   3109942336
        .long   3266309100
        .long   3108667760
        .long   3266309652
        .long   3106190122
        .long   3266310196
        .long   3106713732
        .long   3266310740
        .long   3106054165
        .long   3266311276
        .long   3108415484
        .long   3266311812
        .long   3109613023
        .long   3266312348
        .long   3109656301
        .long   3266312884
        .long   3108554723
        .long   3266313420
        .long   3106317576
        .long   3266313948
        .long   3107148341
        .long   3266314476
        .long   3106861780
        .long   3266314996
        .long   3109661153
        .long   3266315524
        .long   3107166702
        .long   3266316044
        .long   3107775778
        .long   3266316564
        .long   3107302717
        .long   3266317076
        .long   3109950361
        .long   3266317596
        .long   3107338539
        .long   3266318108
        .long   3107864196
        .byte 0
        .org .+54
        .byte   0
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
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   964689920
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
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
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   2063597568
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   1051372345
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
        .long   3204448310
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
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   998244352
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   3212836863
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   2055208960
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   4294967040
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
        .long   901758464
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
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   3196059527
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   1045220287
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   3190475908
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   1041398342
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   3187262718
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   1037844266
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   3187902610
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   1039525906
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   25165824
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
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
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   2139095040
        .long   4286578688
        .byte 0
        .org .+54
        .byte   0
        .long   1065353216
        .long   3212836864
        .byte 0
        .org .+54
        .byte   0
        .long   0
        .long   2147483648
        .byte 0
        .org .+54
        .byte   0
_vmldLnHATab:
        .long   1065353216
        .long   0
        .long   0
        .long   1065091072
        .long   1015087104
        .long   900509991
        .long   1064828928
        .long   1023541248
        .long   925811956
        .long   1064566784
        .long   1027915776
        .long   3084221144
        .long   1064304640
        .long   1032073216
        .long   3066991812
        .long   1064173568
        .long   1033195520
        .long   882149603
        .long   1063911424
        .long   1035468800
        .long   928189163
        .long   1063649280
        .long   1037783040
        .long   927501741
        .long   1063518208
        .long   1038958592
        .long   3076037756
        .long   1063256064
        .long   1040759808
        .long   904405630
        .long   1063124992
        .long   1041361920
        .long   3052231524
        .long   1062862848
        .long   1042581504
        .long   922094799
        .long   1062731776
        .long   1043201024
        .long   3070120623
        .long   1062469632
        .long   1044455424
        .long   3069864633
        .long   1062338560
        .long   1045091328
        .long   3063188516
        .long   1062207488
        .long   1045733376
        .long   3054902185
        .long   1061945344
        .long   1047035904
        .long   920635797
        .long   1061814272
        .long   1047697408
        .long   904920689
        .long   1061683200
        .long   1048365056
        .long   912483742
        .long   1061552128
        .long   1048807936
        .long   3052664405
        .long   1061421056
        .long   1049148416
        .long   912794238
        .long   1061158912
        .long   1049840384
        .long   889474359
        .long   1061027840
        .long   1050191872
        .long   3059868362
        .long   1060896768
        .long   1050546944
        .long   3059256525
        .long   1060765696
        .long   1050905600
        .long   912008988
        .long   1060634624
        .long   1051268352
        .long   912290698
        .long   1060503552
        .long   1051635200
        .long   3037211048
        .long   1060372480
        .long   1052005888
        .long   906226119
        .long   1060241408
        .long   1052380928
        .long   3052480305
        .long   1060110336
        .long   1052760064
        .long   3048768765
        .long   1059979264
        .long   1053143552
        .long   3049975450
        .long   1059848192
        .long   1053531392
        .long   894485718
        .long   1059717120
        .long   1053923840
        .long   897598623
        .long   1059586048
        .long   1054320896
        .long   907355277
        .long   1059586048
        .long   1054320896
        .long   907355277
        .long   1059454976
        .long   1054722816
        .long   881705073
        .long   1059323904
        .long   1055129600
        .long   3049723733
        .long   1059192832
        .long   1055541248
        .long   890353599
        .long   1059061760
        .long   1055958016
        .long   908173938
        .long   1059061760
        .long   1055958016
        .long   908173938
        .long   1058930688
        .long   1056380160
        .long   883644938
        .long   1058799616
        .long   1056807680
        .long   3052015799
        .long   1058668544
        .long   1057102592
        .long   884897284
        .long   1058668544
        .long   1057102592
        .long   884897284
        .long   1058537472
        .long   1057321920
        .long   3037632470
        .long   1058406400
        .long   1057544128
        .long   865017195
        .long   1058275328
        .long   1057769344
        .long   3042936546
        .long   1058275328
        .long   1057769344
        .long   3042936546
        .long   1058144256
        .long   1057997568
        .long   903344518
        .long   1058013184
        .long   1058228992
        .long   897862967
        .long   1058013184
        .long   1058228992
        .long   897862967
        .long   1057882112
        .long   1058463680
        .long   3047822280
        .long   1057882112
        .long   1058463680
        .long   3047822280
        .long   1057751040
        .long   1058701632
        .long   883793293
        .long   1057619968
        .long   1058943040
        .long   851667963
        .long   1057619968
        .long   1058943040
        .long   851667963
        .long   1057488896
        .long   1059187968
        .long   3000004036
        .long   1057488896
        .long   1059187968
        .long   3000004036
        .long   1057357824
        .long   1059436544
        .long   3047430717
        .long   1057357824
        .long   1059436544
        .long   3047430717
        .long   1057226752
        .long   1059688832
        .long   3043802308
        .long   1057226752
        .long   1059688832
        .long   3043802308
        .long   1057095680
        .long   1059944960
        .long   876113044
        .long   1057095680
        .long   1059944960
        .long   876113044
        .long   1056964608
        .long   1060205056
        .long   901758606
        .long   1060205056
        .long   901758606
        .long   1207959616
        .long   1174405120
        .long   1008730112
        .long   1400897536
        .long   0
        .long   1065353216
        .long   3204448256
        .long   1051372203
        .long   3196059648
        .long   1045220557
        .long   3190467243
        .long   1041387009
        .long   3187672480
        .space 8, 0x0
_2il0floatpacket_23:
        .long   0x4b400000, 0x4b400000, 0x4b400000, 0x4b400000
_2il0floatpacket_92:
        .long   0x53800000
_2il0floatpacket_93:
        .long   0x3c200000
_2il0floatpacket_94:
        .long   0xbe0005a0
_2il0floatpacket_95:
        .long   0x3e124e01
_2il0floatpacket_96:
        .long   0xbe2aaaab
_2il0floatpacket_97:
        .long   0x3e4ccccd
_2il0floatpacket_98:
        .long   0xbe800000
_2il0floatpacket_99:
        .long   0x3eaaaaab
_2il0floatpacket_100:
        .long   0xbf000000
_2il0floatpacket_101:
        .long   0xbf800000
_2il0floatpacket_102:
        .long   0x3f317218
_2il0floatpacket_103:
        .long   0x3f317200
_2il0floatpacket_104:
        .long   0x35bfbe8e
_2il0floatpacket_105:
        .long   0x48000040
_2il0floatpacket_106:
        .long   0x46000000
_2il0floatpacket_107:
        .long   0x3f800000
        .data
#endif
