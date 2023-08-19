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
        .globl __jsvml_log10f4_ha_e9

__jsvml_log10f4_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 232
        vmovaps   xmm5, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm8
        lea       rax, QWORD PTR [rip+__ImageBase]
        mov       QWORD PTR [208+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm3, xmm5, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1280]
        and       r13, -64
        vorps     xmm8, xmm3, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1344]
        vrcpps    xmm3, xmm8
        vcmpltps  xmm4, xmm5, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1408]
        vcmpnleps xmm2, xmm5, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1472]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1600]
        vorps     xmm4, xmm4, xmm2
        vmulps    xmm0, xmm3, xmm1
        vpsrld    xmm3, xmm5, 23
        vcvtdq2ps xmm3, xmm3
        vmovmskps edx, xmm4
        vandps    xmm2, xmm8, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1536]
        vroundps  xmm0, xmm0, 0
        vsubps    xmm8, xmm8, xmm2
        vmulps    xmm4, xmm0, xmm2
        vmulps    xmm2, xmm0, xmm8
        vsubps    xmm1, xmm4, xmm1
        mov       QWORD PTR [216+rsp], r13
        vaddps    xmm8, xmm2, xmm1
        vpsrld    xmm2, xmm0, 13
        vpextrd   r9d, xmm2, 2
        vpextrd   r10d, xmm2, 3
        vmovd     ecx, xmm2
        movsxd    r9, r9d
        movsxd    r10, r10d
        vpextrd   r8d, xmm2, 1
        movsxd    rcx, ecx
        movsxd    r8, r8d
        vmovq     xmm1, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vmovq     xmm2, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r10]
        vunpcklps xmm1, xmm1, xmm2
        vmulps    xmm2, xmm3, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1664]
        vmulps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1728]
        vmovq     xmm4, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vunpcklps xmm0, xmm4, xmm0
        vmovlhps  xmm4, xmm0, xmm1
        vshufps   xmm0, xmm0, xmm1, 238
        vaddps    xmm4, xmm4, xmm2
        vaddps    xmm2, xmm0, xmm3
        vmulps    xmm0, xmm8, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1088]
        vaddps    xmm3, xmm0, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1152]
        vmulps    xmm1, xmm8, xmm3
        vaddps    xmm3, xmm8, xmm4
        vaddps    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1216]
        vsubps    xmm4, xmm3, xmm4
        vsubps    xmm4, xmm8, xmm4
        vmulps    xmm8, xmm8, xmm1
        vaddps    xmm0, xmm2, xmm8
        vaddps    xmm1, xmm4, xmm0
        vaddps    xmm0, xmm3, xmm1
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm8, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm5
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

        call      __jsvml_slog10_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_log10f4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_e9_B1_B3:
        .long   403201
        .long   1758247
        .long   821272
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_log10f4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_e9_B6_B10:
        .long   658945
        .long   287758
        .long   340999
        .long   821248
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_log10f4_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_log10f8_ha_l9

__jsvml_log10f8_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L10:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [368+rsp], ymm13
        vmovups   YMMWORD PTR [400+rsp], ymm10
        vmovups   YMMWORD PTR [496+rsp], ymm9
        vmovups   YMMWORD PTR [464+rsp], ymm8
        vmovups   YMMWORD PTR [432+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovaps   ymm4, ymm0
        and       r13, -64
        vandps    ymm2, ymm4, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1280]
        vorps     ymm2, ymm2, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1344]
        vrcpps    ymm3, ymm2
        vmovups   ymm9, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1600]
        vpsrld    ymm5, ymm4, 23
        vcmplt_oqps ymm10, ymm4, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1408]
        vcmpnle_uqps ymm13, ymm4, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1472]
        vmulps    ymm1, ymm3, ymm9
        vcvtdq2ps ymm3, ymm5
        vroundps  ymm0, ymm1, 0
        vpsrld    ymm5, ymm0, 13
        vfmsub213ps ymm2, ymm0, ymm9
        vorps     ymm7, ymm10, ymm13
        vmovmskps edx, ymm7
        mov       QWORD PTR [536+rsp], r13
        vmovd     ecx, xmm5
        vextracti128 xmm9, ymm5, 1
        vpextrd   r8d, xmm5, 1
        vpextrd   r9d, xmm5, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovd     r11d, xmm9
        vmovq     xmm10, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vpextrd   r10d, xmm5, 3
        vmovq     xmm13, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vpextrd   ecx, xmm9, 1
        vpextrd   r8d, xmm9, 2
        vpextrd   r9d, xmm9, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovq     xmm1, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r10]
        vmovq     xmm5, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r11]
        vmovq     xmm7, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm8, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vmovq     xmm9, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vunpcklps xmm13, xmm10, xmm13
        vunpcklps xmm10, xmm0, xmm1
        vunpcklps xmm1, xmm5, xmm8
        vunpcklps xmm8, xmm7, xmm9
        vinsertf128 ymm0, ymm13, xmm1, 1
        vinsertf128 ymm1, ymm10, xmm8, 1
        vmovups   ymm10, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1088]
        vunpcklps ymm7, ymm0, ymm1
        vfmadd213ps ymm10, ymm2, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1152]
        vfmadd231ps ymm7, ymm3, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1664]
        vfmadd213ps ymm10, ymm2, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1216]
        vaddps    ymm13, ymm2, ymm7
        vunpckhps ymm5, ymm0, ymm1
        vfmadd132ps ymm3, ymm5, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1728]
        vsubps    ymm8, ymm13, ymm7
        vfmadd213ps ymm10, ymm2, ymm3
        vsubps    ymm9, ymm2, ymm8
        vaddps    ymm2, ymm9, ymm10
        vaddps    ymm0, ymm13, ymm2
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   ymm7, YMMWORD PTR [432+rsp]
        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm10, YMMWORD PTR [400+rsp]
        vmovups   ymm13, YMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B2_3:

        vmovups   YMMWORD PTR [r13], ymm4
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B2_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm6
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, edx

.L_B2_7:

        bt        esi, ebx
        jc        .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B2_7

.L_B2_9:

        vmovups   ymm6, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog10_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_log10f8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f8_ha_l9_B1_B3:
        .long   935681
        .long   4379719
        .long   1800255
        .long   1935414
        .long   2070573
        .long   1681444
        .long   1562651
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_log10f8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f8_ha_l9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   194598
        .long   321568
        .long   444442
        .long   571412
        .long   681995
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_log10f8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_log10f8_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_log10f4_ha_l9

__jsvml_log10f4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L37:

        sub       rsp, 232
        vmovaps   xmm4, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm14
        lea       rax, QWORD PTR [rip+__ImageBase]
        mov       QWORD PTR [208+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1280]
        and       r13, -64
        vorps     xmm2, xmm2, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1344]
        vrcpps    xmm3, xmm2
        vcmpltps  xmm5, xmm4, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1408]
        vcmpnleps xmm14, xmm4, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1472]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1600]
        vorps     xmm5, xmm5, xmm14
        vmulps    xmm1, xmm3, xmm0
        vpsrld    xmm3, xmm4, 23
        vcvtdq2ps xmm3, xmm3
        vmovmskps edx, xmm5
        vroundps  xmm1, xmm1, 0
        vfmsub213ps xmm2, xmm1, xmm0
        vpsrld    xmm1, xmm1, 13
        vmovd     ecx, xmm1
        vpextrd   r8d, xmm1, 1
        vpextrd   r9d, xmm1, 2
        vpextrd   r10d, xmm1, 3
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovq     xmm14, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vmovq     xmm0, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vmovq     xmm1, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r10]
        vunpcklps xmm5, xmm14, xmm5
        vunpcklps xmm14, xmm0, xmm1
        vmovlhps  xmm0, xmm5, xmm14
        vfmadd231ps xmm0, xmm3, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1664]
        vshufps   xmm5, xmm5, xmm14, 238
        vmovups   xmm14, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1088]
        vfmadd213ps xmm14, xmm2, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1152]
        vfmadd132ps xmm3, xmm5, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1728]
        vaddps    xmm5, xmm2, xmm0
        vfmadd213ps xmm14, xmm2, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1216]
        vsubps    xmm0, xmm5, xmm0
        vfmadd213ps xmm14, xmm2, xmm3
        vsubps    xmm0, xmm2, xmm0
        mov       QWORD PTR [216+rsp], r13
        vaddps    xmm2, xmm0, xmm14
        vaddps    xmm0, xmm5, xmm2
        test      edx, edx
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm14, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm4
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

        call      __jsvml_slog10_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_log10f4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_l9_B1_B3:
        .long   403201
        .long   1758247
        .long   845848
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_log10f4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_l9_B6_B10:
        .long   658945
        .long   287758
        .long   340999
        .long   845824
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_log10f4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_log10f4_ha_ex

__jsvml_log10f4_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L46:

        sub       rsp, 232
        movaps    xmm5, xmm0
        movups    XMMWORD PTR [192+rsp], xmm8
        movaps    xmm4, xmm5
        mov       QWORD PTR [208+rsp], r13
        movaps    xmm2, xmm5
        movups    xmm8, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1280]
        lea       rax, QWORD PTR [rip+__ImageBase]
        andps     xmm8, xmm5
        lea       r13, QWORD PTR [111+rsp]
        orps      xmm8, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1344]
        and       r13, -64
        rcpps     xmm0, xmm8
        cmpltps   xmm4, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1408]
        cmpnleps  xmm2, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1472]
        movups    xmm3, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1600]
        orps      xmm4, xmm2
        mulps     xmm0, xmm3
        movmskps  edx, xmm4
        movups    xmm1, XMMWORD PTR [rip+_2il0floatpacket_20]
        movups    xmm4, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1536]
        addps     xmm0, xmm1
        andps     xmm4, xmm8
        subps     xmm0, xmm1
        subps     xmm8, xmm4
        mulps     xmm4, xmm0
        mulps     xmm8, xmm0
        subps     xmm4, xmm3
        psrld     xmm0, 13
        movaps    xmm1, xmm5
        pshufd    xmm2, xmm0, 1
        psrld     xmm1, 23
        movd      ecx, xmm0
        addps     xmm8, xmm4
        cvtdq2ps  xmm1, xmm1
        movd      r8d, xmm2
        pshufd    xmm2, xmm0, 2
        pshufd    xmm0, xmm0, 3
        movd      r9d, xmm2
        movd      r10d, xmm0
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        movq      xmm4, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        movq      xmm3, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        movq      xmm2, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        movq      xmm0, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r10]
        unpcklps  xmm4, xmm3
        unpcklps  xmm2, xmm0
        movaps    xmm3, xmm4
        movlhps   xmm3, xmm2
        movaps    xmm0, xmm8
        shufps    xmm4, xmm2, 238
        movups    xmm2, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1664]
        mulps     xmm2, xmm1
        mulps     xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1728]
        addps     xmm3, xmm2
        addps     xmm4, xmm1
        addps     xmm0, xmm3
        movups    xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1088]
        movaps    xmm2, xmm0
        mulps     xmm1, xmm8
        subps     xmm2, xmm3
        movaps    xmm3, xmm8
        addps     xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1152]
        subps     xmm3, xmm2
        mulps     xmm1, xmm8
        mov       QWORD PTR [216+rsp], r13
        addps     xmm1, XMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1216]
        mulps     xmm8, xmm1
        addps     xmm4, xmm8
        addps     xmm3, xmm4
        addps     xmm0, xmm3
        test      edx, edx
        jne       .L_B4_3

.L_B4_2:

        movups    xmm8, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
        ret

.L_B4_3:

        movups    XMMWORD PTR [r13], xmm5
        movups    XMMWORD PTR [64+r13], xmm0

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
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog10_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_log10f4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_ex_B1_B3:
        .long   401921
        .long   1758242
        .long   821271
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_log10f4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f4_ha_ex_B6_B10:
        .long   658945
        .long   287758
        .long   340999
        .long   821248
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_log10f4_ha_ex_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_log10f16_ha_z0

__jsvml_log10f16_ha_z0:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L55:

        vmovaps   zmm2, zmm0
        vgetmantps zmm4, zmm2, 10 {sae}
        vgetexpps zmm23, zmm2 {sae}
        vfpclassps k1, zmm2, 94
        vrcp14ps  zmm3, zmm4
        vrndscaleps zmm5, zmm3, 88 {sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+256]
        vgetexpps zmm24, zmm5 {sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+640]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+320]
        vfmsub231ps zmm1, zmm4, zmm5 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+384]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+448]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+512]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+128]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+704]
        vfmadd231ps zmm4, zmm28, zmm1 {rn-sae}
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+576]
        vfmadd231ps zmm31, zmm29, zmm1 {rn-sae}
        vmulps    zmm30, zmm1, zmm1 {rn-sae}
        vpsrld    zmm22, zmm5, 18
        vsubps    zmm3, zmm23, zmm24 {rn-sae}
        vfmadd213ps zmm4, zmm30, zmm31 {rn-sae}
        vpermt2ps zmm0, zmm22, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+64]
        vpermt2ps zmm27, zmm22, ZMMWORD PTR [rip+__jsvml_slog10_ha_data_internal_avx512+192]
        vfmadd231ps zmm0, zmm25, zmm3 {rn-sae}
        vfmadd213ps zmm3, zmm26, zmm27 {rn-sae}
        vmovaps   zmm5, zmm1
        vfmadd213ps zmm5, zmm28, zmm0 {rn-sae}
        vfmadd213ps zmm4, zmm1, zmm3 {rn-sae}
        vsubps    zmm0, zmm5, zmm0 {rn-sae}
        vxorps    zmm0{k1}, zmm0, zmm0
        vfmsub213ps zmm1, zmm28, zmm0 {rn-sae}
        vaddps    zmm1, zmm4, zmm1 {rn-sae}
        vaddps    zmm0, zmm5, zmm1 {rn-sae}
        ret
        .align    16, 0x90

.L_B5_2:

        .section .drectve
        .ascii " -export \"__jsvml_log10f16_ha_z0\""

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_log10f8_ha_e9

__jsvml_log10f8_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L56:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [496+rsp], ymm13
        vmovups   YMMWORD PTR [368+rsp], ymm10
        vmovups   YMMWORD PTR [432+rsp], ymm9
        vmovups   YMMWORD PTR [400+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovaps   ymm13, ymm0
        and       r13, -64
        vandps    ymm2, ymm13, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1280]
        vorps     ymm4, ymm2, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1344]
        vrcpps    ymm9, ymm4
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1600]
        vmulps    ymm8, ymm9, ymm3
        vroundps  ymm8, ymm8, 0
        vandps    ymm7, ymm4, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1536]
        vsubps    ymm4, ymm4, ymm7
        mov       QWORD PTR [536+rsp], r13
        vpsrld    xmm2, xmm13, 23
        vcmplt_oqps ymm5, ymm13, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1408]
        vcmpnle_uqps ymm1, ymm13, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1472]
        vextractf128 xmm10, ymm13, 1
        vorps     ymm1, ymm5, ymm1
        vpsrld    xmm10, xmm10, 23
        vextractf128 xmm5, ymm1, 1
        vinsertf128 ymm0, ymm2, xmm10, 1
        vpackssdw xmm10, xmm1, xmm5
        vpxor     xmm2, xmm2, xmm2
        vcvtdq2ps ymm9, ymm0
        vpacksswb xmm0, xmm10, xmm2
        vmulps    ymm10, ymm8, ymm7
        vmulps    ymm2, ymm8, ymm4
        vpmovmskb edx, xmm0
        vsubps    ymm3, ymm10, ymm3
        vaddps    ymm10, ymm2, ymm3
        vpsrld    xmm3, xmm8, 13
        vmovd     ecx, xmm3
        vextractf128 xmm2, ymm8, 1
        vpextrd   r8d, xmm3, 1
        vpsrld    xmm7, xmm2, 13
        vpextrd   r9d, xmm3, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovd     r11d, xmm7
        vmovq     xmm0, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm2, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vpextrd   r10d, xmm3, 3
        vmovq     xmm1, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vpextrd   ecx, xmm7, 1
        vpextrd   r8d, xmm7, 2
        vpextrd   r9d, xmm7, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovq     xmm3, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r10]
        vmovq     xmm4, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r11]
        vmovq     xmm8, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r8]
        vmovq     xmm7, QWORD PTR ["__jsvml_slog10_ha_data_internal"@imgrel-136944+rax+r9]
        vunpcklps xmm2, xmm2, xmm3
        vunpcklps xmm0, xmm0, xmm1
        vunpcklps xmm1, xmm4, xmm5
        vunpcklps xmm4, xmm8, xmm7
        vinsertf128 ymm7, ymm2, xmm4, 1
        vmulps    ymm2, ymm10, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1088]
        vaddps    ymm3, ymm2, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1152]
        vmulps    ymm4, ymm10, ymm3
        vinsertf128 ymm5, ymm0, xmm1, 1
        vmulps    ymm0, ymm9, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1664]
        vmulps    ymm9, ymm9, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1728]
        vunpcklps ymm8, ymm5, ymm7
        vaddps    ymm8, ymm8, ymm0
        vaddps    ymm0, ymm10, ymm8
        vunpckhps ymm1, ymm5, ymm7
        vaddps    ymm7, ymm4, YMMWORD PTR [rip+__jsvml_slog10_ha_data_internal+1216]
        vsubps    ymm5, ymm0, ymm8
        vaddps    ymm9, ymm1, ymm9
        vsubps    ymm5, ymm10, ymm5
        vmulps    ymm10, ymm10, ymm7
        vaddps    ymm7, ymm9, ymm10
        vaddps    ymm1, ymm5, ymm7
        vaddps    ymm0, ymm0, ymm1
        test      dl, dl
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [400+rsp]
        vmovups   ymm9, YMMWORD PTR [432+rsp]
        vmovups   ymm10, YMMWORD PTR [368+rsp]
        vmovups   ymm13, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm13
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B6_2

.L_B6_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm6
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, edx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B6_7

.L_B6_9:

        vmovups   ymm6, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog10_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_log10f8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f8_ha_e9_B1_B3:
        .long   935681
        .long   4379719
        .long   1931327
        .long   1673270
        .long   1808429
        .long   1550372
        .long   2086939
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_log10f8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_log10f8_ha_e9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   194598
        .long   321568
        .long   444442
        .long   571412
        .long   681995
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_log10f8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_log10f8_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_slog10_ha_cout_rare_internal

__jsvml_slog10_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L83:

        sub       rsp, 56
        mov       r9, rcx
        xor       eax, eax
        movzx     ecx, WORD PTR [2+r9]
        mov       r8d, ecx
        and       r8d, 32640
        cmp       r8d, 32640
        je        .L_B7_12

.L_B7_2:

        movss     xmm0, DWORD PTR [r9]
        xor       r8d, r8d
        movss     DWORD PTR [40+rsp], xmm0
        test      ecx, 32640
        jne       .L_B7_4

.L_B7_3:

        mulss     xmm0, DWORD PTR [rip+_2il0floatpacket_93]
        mov       r8d, -40
        movss     DWORD PTR [40+rsp], xmm0

.L_B7_4:

        pxor      xmm1, xmm1
        comiss    xmm0, xmm1
        jbe       .L_B7_8

.L_B7_5:

        movaps    xmm2, xmm0
        subss     xmm2, DWORD PTR [rip+_2il0floatpacket_109]
        movss     DWORD PTR [36+rsp], xmm2
        and       BYTE PTR [39+rsp], 127
        movss     xmm1, DWORD PTR [36+rsp]
        comiss    xmm1, DWORD PTR [rip+_2il0floatpacket_94]
        jbe       .L_B7_7

.L_B7_6:

        movzx     ecx, WORD PTR [42+rsp]
        pxor      xmm3, xmm3
        and       ecx, 32640
        shr       ecx, 7
        movss     DWORD PTR [36+rsp], xmm0
        movzx     r9d, WORD PTR [38+rsp]
        and       r9d, -32641
        add       r9d, 16256
        lea       r8d, DWORD PTR [-127+r8+rcx]
        cvtsi2ss  xmm3, r8d
        mov       WORD PTR [38+rsp], r9w
        lea       rcx, QWORD PTR [rip+__ImageBase]
        movss     xmm4, DWORD PTR [36+rsp]
        mov       r9, rcx
        movaps    xmm0, xmm4
        mov       r8, rcx
        movss     xmm2, DWORD PTR [rip+_2il0floatpacket_95]
        movss     xmm1, DWORD PTR [rip+_2il0floatpacket_96]
        movss     xmm5, DWORD PTR [rip+_2il0floatpacket_98]
        mulss     xmm2, xmm3
        addss     xmm0, DWORD PTR [rip+_2il0floatpacket_97]
        mulss     xmm3, xmm1
        movaps    xmm1, xmm5
        movss     DWORD PTR [32+rsp], xmm0
        addss     xmm1, xmm4
        mov       r10d, DWORD PTR [32+rsp]
        movss     DWORD PTR [32+rsp], xmm1
        and       r10d, 127
        movss     xmm1, DWORD PTR [32+rsp]
        subss     xmm1, xmm5
        lea       r11d, DWORD PTR [r10+r10*2]
        movss     xmm0, DWORD PTR ["_vmldLgHATab"@imgrel+rcx+r11*4]
        subss     xmm4, xmm1
        addss     xmm3, DWORD PTR ["_vmldLgHATab"@imgrel+8+r9+r11*4]
        addss     xmm2, DWORD PTR ["_vmldLgHATab"@imgrel+4+r8+r11*4]
        mulss     xmm1, xmm0
        mulss     xmm0, xmm4
        subss     xmm1, DWORD PTR [rip+_2il0floatpacket_99]
        movaps    xmm5, xmm1
        addss     xmm2, xmm1
        addss     xmm5, xmm0
        movss     xmm4, DWORD PTR [rip+_2il0floatpacket_100]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_101]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_102]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_103]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_104]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_105]
        mulss     xmm4, xmm5
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_106]
        mulss     xmm4, xmm5
        movaps    xmm5, xmm0
        addss     xmm4, DWORD PTR [rip+_2il0floatpacket_107]
        mulss     xmm5, xmm4
        mulss     xmm1, xmm4
        addss     xmm3, xmm5
        addss     xmm0, xmm3
        addss     xmm0, xmm1
        addss     xmm2, xmm0
        movss     DWORD PTR [rdx], xmm2
        add       rsp, 56
        ret

.L_B7_7:

        movss     xmm0, DWORD PTR [rip+_2il0floatpacket_99]
        mulss     xmm2, xmm0
        movss     xmm1, DWORD PTR [rip+_2il0floatpacket_100]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_101]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_102]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_103]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_104]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_105]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_106]
        mulss     xmm1, xmm2
        addss     xmm1, DWORD PTR [rip+_2il0floatpacket_107]
        mulss     xmm1, xmm2
        addss     xmm2, xmm1
        movss     DWORD PTR [rdx], xmm2
        add       rsp, 56
        ret

.L_B7_8:

        ucomiss   xmm0, xmm1
        jp        .L_B7_9
        je        .L_B7_11

.L_B7_9:

        divss     xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        mov       eax, 1

.L_B7_10:

        add       rsp, 56
        ret

.L_B7_11:

        movss     xmm0, DWORD PTR [rip+_2il0floatpacket_108]
        mov       eax, 2
        divss     xmm0, xmm1
        movss     DWORD PTR [rdx], xmm0
        add       rsp, 56
        ret

.L_B7_12:

        mov       cl, BYTE PTR [3+r9]
        and       cl, -128
        cmp       cl, -128
        je        .L_B7_14

.L_B7_13:

        movss     xmm0, DWORD PTR [r9]
        mulss     xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        add       rsp, 56
        ret

.L_B7_14:

        test      DWORD PTR [r9], 8388607
        jne       .L_B7_13

.L_B7_15:

        mov       eax, 1
        pxor      xmm1, xmm1
        pxor      xmm0, xmm0
        divss     xmm1, xmm0
        movss     DWORD PTR [rdx], xmm1
        add       rsp, 56
        ret
        .align    16, 0x90

.L_B7_16:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_slog10_ha_cout_rare_internal_B1_B15:
        .long   67585
        .long   25096

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_16
        .rva    _unwind___jsvml_slog10_ha_cout_rare_internal_B1_B15

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_slog10_ha_data_internal_avx512
__jsvml_slog10_ha_data_internal_avx512:
        .long   1050288128
        .long   1049839616
        .long   1049405440
        .long   1048981504
        .long   1048567808
        .long   1047769088
        .long   1046990848
        .long   1046233088
        .long   1045495808
        .long   1044779008
        .long   1044074496
        .long   1043390464
        .long   1042718720
        .long   1042063360
        .long   1041424384
        .long   1040797696
        .long   1040179200
        .long   1038974976
        .long   1037803520
        .long   1036648448
        .long   1035509760
        .long   1034403840
        .long   1033314304
        .long   1032241152
        .long   1030586368
        .long   1028521984
        .long   1026490368
        .long   1024507904
        .long   1021673472
        .long   1017839616
        .long   1013055488
        .long   1004535808
        .long   916096252
        .long   922116432
        .long   3080225825
        .long   937573077
        .long   3035959522
        .long   907149878
        .long   932083293
        .long   937852153
        .long   932873468
        .long   3083585687
        .long   923506544
        .long   3080111720
        .long   922618327
        .long   929046259
        .long   3073359178
        .long   3075170456
        .long   3027570914
        .long   932146099
        .long   3086063431
        .long   3082882946
        .long   937977627
        .long   3064614024
        .long   3065085585
        .long   934503987
        .long   923757491
        .long   927716856
        .long   937794272
        .long   3074368796
        .long   929297206
        .long   3083361151
        .long   3065901602
        .long   912917177
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
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   3185469915
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   1041515222
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   3193854937
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   2990071104
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   1050288128
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   916096252
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
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
        .globl __jsvml_slog10_ha_data_internal
__jsvml_slog10_ha_data_internal:
        .long   3256334460
        .long   969394728
        .long   3256334974
        .long   969699354
        .long   3256335486
        .long   970041911
        .long   3256335982
        .long   968584717
        .long   3256336494
        .long   969519438
        .long   3256336990
        .long   968649168
        .long   3256337502
        .long   970165641
        .long   3256337998
        .long   969872020
        .long   3256338494
        .long   969862955
        .long   3256338990
        .long   970135976
        .long   3256339470
        .long   968591496
        .long   3256339966
        .long   969421411
        .long   3256340462
        .long   970526195
        .long   3256340942
        .long   969806353
        .long   3256341422
        .long   969356721
        .long   3256341902
        .long   969175014
        .long   3256342382
        .long   969258977
        .long   3256342862
        .long   969606381
        .long   3256343342
        .long   970215027
        .long   3256343806
        .long   968985590
        .long   3256344286
        .long   970110228
        .long   3256344750
        .long   969392519
        .long   3256345214
        .long   968927522
        .long   3256345678
        .long   968713169
        .long   3256346142
        .long   968747418
        .long   3256346606
        .long   969028253
        .long   3256347070
        .long   969553681
        .long   3256347534
        .long   970321733
        .long   3256347982
        .long   969233313
        .long   3256348446
        .long   970480802
        .long   3256348894
        .long   969867999
        .long   3256349342
        .long   969490179
        .long   3256349790
        .long   969345487
        .long   3256350238
        .long   969432093
        .long   3256350686
        .long   969748186
        .long   3256351566
        .long   968964541
        .long   3256352446
        .long   969077639
        .long   3256353326
        .long   970073736
        .long   3256354190
        .long   969842251
        .long   3256355054
        .long   970467209
        .long   3256355902
        .long   969838628
        .long   3256356750
        .long   970041115
        .long   3256357582
        .long   968965252
        .long   3256358414
        .long   968696192
        .long   3256359246
        .long   969222201
        .long   3256360078
        .long   970531798
        .long   3256360894
        .long   970516595
        .long   3256361694
        .long   969165599
        .long   3256362494
        .long   968565200
        .long   3256363294
        .long   968704863
        .long   3256364094
        .long   969574273
        .long   3256364878
        .long   969066179
        .long   3256365662
        .long   969267840
        .long   3256366446
        .long   970169567
        .long   3256367214
        .long   969664714
        .long   3256367982
        .long   969841134
        .long   3256368734
        .long   968592559
        .long   3256369502
        .long   970104362
        .long   3256370254
        .long   970173483
        .long   3256370990
        .long   968791339
        .long   3256371742
        .long   970143819
        .long   3256372478
        .long   970028365
        .long   3256373214
        .long   970534037
        .long   3256373934
        .long   969555746
        .long   3256374654
        .long   969182856
        .long   3256375374
        .long   969407729
        .long   3256376094
        .long   970222869
        .long   3256376798
        .long   969523769
        .long   3256377502
        .long   969400361
        .long   3256378206
        .long   969845561
        .long   3256378894
        .long   968755260
        .long   3256379598
        .long   970316935
        .long   3256380286
        .long   970329575
        .long   3256380958
        .long   968786598
        .long   3256381646
        .long   969875841
        .long   3256382318
        .long   969396649
        .long   3256382990
        .long   969439935
        .long   3256383662
        .long   969999571
        .long   3256384318
        .long   968972383
        .long   3256384990
        .long   970546758
        .long   3256385646
        .long   970522577
        .long   3256386286
        .long   968894127
        .long   3256386942
        .long   969850093
        .long   3256387582
        .long   969190651
        .long   3256388222
        .long   969007524
        .long   3256388862
        .long   969295375
        .long   3256389502
        .long   970048957
        .long   3256390126
        .long   969165958
        .long   3256390750
        .long   968738453
        .long   3256391374
        .long   968761452
        .long   3256391998
        .long   969230043
        .long   3256392622
        .long   970139398
        .long   3256393230
        .long   969387611
        .long   3256393838
        .long   969067159
        .long   3256394446
        .long   969173441
        .long   3256395054
        .long   969701929
        .long   3256395646
        .long   968551015
        .long   3256396254
        .long   969910618
        .long   3256396846
        .long   969582116
        .long   3256397438
        .long   969658411
        .long   3256398030
        .long   970135319
        .long   3256398606
        .long   968911569
        .long   3256399198
        .long   970177409
        .long   3256399774
        .long   969734540
        .long   3256400350
        .long   969676181
        .long   3256400926
        .long   969998457
        .long   3256401486
        .long   968600401
        .long   3256402062
        .long   969672558
        .long   3256402622
        .long   969016921
        .long   3256403182
        .long   968726993
        .long   3256403742
        .long   968799182
        .long   3256404302
        .long   969229944
        .long   3256404862
        .long   970015791
        .long   3256405406
        .long   969056131
        .long   3256405966
        .long   970541879
        .long   3256406510
        .long   970275391
        .long   3256407054
        .long   970350525
        .long   3256407582
        .long   968666884
        .long   3256408126
        .long   969415571
        .long   3256408670
        .long   970496282
        .long   3256409198
        .long   969808752
        .long   3256409726
        .long   969447067
        .long   3256410254
        .long   969408203
        .long   3256410782
        .long   969689179
        .long   3256411310
        .long   970287052
        .long   3256411822
        .long   969101770
        .long   3256412350
        .long   970324777
        .long   3256412862
        .long   969758945
        .long   3256413374
        .long   969498644
        .byte 0
        .org .+54
        .byte   0
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   1071862019
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   3214137316
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
        .long   986960742
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
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   989855744
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
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
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1054736384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   1050288384
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
        .long   3058365952
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
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   1031824308
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   3179872371
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   1031230231
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   3180460839
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   1035078550
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   3185471008
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   1041513701
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   3193854917
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1054759897
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   1036894503
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   3186945393
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   1041464766
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   3193833762
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1054760110
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
        .long   1050288283
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
_vmldLgHATab:
        .long   1121868800
        .long   0
        .long   0
        .long   1121641104
        .long   1004535808
        .long   912917177
        .long   1121413408
        .long   1013055488
        .long   3065901602
        .long   1121185712
        .long   1017839616
        .long   3083361151
        .long   1120958016
        .long   1021673472
        .long   929297206
        .long   1120844168
        .long   1023524864
        .long   3077496589
        .long   1120616472
        .long   1025499136
        .long   3070500046
        .long   1120388776
        .long   1027506176
        .long   912271551
        .long   1120274928
        .long   1028521984
        .long   927716856
        .long   1120047232
        .long   1030586368
        .long   923757491
        .long   1119933384
        .long   1031634944
        .long   3056752848
        .long   1119705688
        .long   1032775680
        .long   917029265
        .long   1119591840
        .long   1033314304
        .long   3065085585
        .long   1119364144
        .long   1034403840
        .long   3064614024
        .long   1119250296
        .long   1034954752
        .long   921091539
        .long   1119136448
        .long   1035513856
        .long   3057436454
        .long   1118908752
        .long   1036644352
        .long   922468856
        .long   1118794904
        .long   1037219840
        .long   3049155845
        .long   1118681056
        .long   1037799424
        .long   904301451
        .long   1118567208
        .long   1038385152
        .long   908617625
        .long   1118453360
        .long   1038977024
        .long   905362229
        .long   1118225664
        .long   1040179200
        .long   3027570914
        .long   1118111816
        .long   1040488448
        .long   882280038
        .long   1117997968
        .long   1040796672
        .long   911375775
        .long   1117884120
        .long   1041108480
        .long   904500572
        .long   1117770272
        .long   1041423872
        .long   3057579304
        .long   1117656424
        .long   1041742336
        .long   3053334705
        .long   1117542576
        .long   1042064384
        .long   3053389931
        .long   1117428728
        .long   1042390016
        .long   3051561465
        .long   1117314880
        .long   1042719232
        .long   3011187895
        .long   1117201032
        .long   1043052544
        .long   3059907089
        .long   1117087184
        .long   1043389440
        .long   3057005374
        .long   1116973336
        .long   1043729920
        .long   911932638
        .long   1116859488
        .long   1044075008
        .long   892958461
        .long   1116859488
        .long   1044075008
        .long   892958461
        .long   1116745640
        .long   1044424192
        .long   3048660547
        .long   1116631792
        .long   1044777472
        .long   3049032043
        .long   1116517944
        .long   1045134848
        .long   906867152
        .long   1116404096
        .long   1045496832
        .long   911484894
        .long   1116404096
        .long   1045496832
        .long   911484894
        .long   1116290248
        .long   1045863424
        .long   912580963
        .long   1116176400
        .long   1046235136
        .long   3058440244
        .long   1116062552
        .long   1046610944
        .long   895945194
        .long   1116062552
        .long   1046610944
        .long   895945194
        .long   1115948704
        .long   1046991872
        .long   904357324
        .long   1115834856
        .long   1047377920
        .long   902293870
        .long   1115721008
        .long   1047769088
        .long   907149878
        .long   1115721008
        .long   1047769088
        .long   907149878
        .long   1115529456
        .long   1048165888
        .long   3052029263
        .long   1115301760
        .long   1048567808
        .long   3035959522
        .long   1115301760
        .long   1048567808
        .long   3035959522
        .long   1115074064
        .long   1048775680
        .long   892998645
        .long   1115074064
        .long   1048775680
        .long   892998645
        .long   1114846368
        .long   1048982400
        .long   881767775
        .long   1114618672
        .long   1049192064
        .long   893839142
        .long   1114618672
        .long   1049192064
        .long   893839142
        .long   1114390976
        .long   1049404800
        .long   896498651
        .long   1114390976
        .long   1049404800
        .long   896498651
        .long   1114163280
        .long   1049620736
        .long   3033695903
        .long   1114163280
        .long   1049620736
        .long   3033695903
        .long   1113935584
        .long   1049839872
        .long   3029986056
        .long   1113935584
        .long   1049839872
        .long   3029986056
        .long   1113707888
        .long   1050062336
        .long   884671939
        .long   1113707888
        .long   1050062336
        .long   884671939
        .long   1113480192
        .long   1050288256
        .long   894707678
        .long   1050279936
        .long   964848148
        .long   1207959616
        .long   1174405120
        .long   1002438656
        .long   1400897536
        .long   0
        .long   1065353216
        .long   1121868800
        .long   3212771328
        .long   3079888218
        .long   870463078
        .long   2957202361
        .long   749987585
        .long   2838272395
        .long   631921661
        .long   2720751022
_2il0floatpacket_20:
        .long   0x4b400000, 0x4b400000, 0x4b400000, 0x4b400000
_2il0floatpacket_93:
        .long   0x53800000
_2il0floatpacket_94:
        .long   0x3bc00000
_2il0floatpacket_95:
        .long   0x3e9a0000
_2il0floatpacket_96:
        .long   0x39826a14
_2il0floatpacket_97:
        .long   0x48000040
_2il0floatpacket_98:
        .long   0x46000000
_2il0floatpacket_99:
        .long   0x42de5c00
_2il0floatpacket_100:
        .long   0xa22b5dae
_2il0floatpacket_101:
        .long   0x25aa5bfd
_2il0floatpacket_102:
        .long   0xa92c998b
_2il0floatpacket_103:
        .long   0x2cb3e701
_2il0floatpacket_104:
        .long   0xb04353b9
_2il0floatpacket_105:
        .long   0x33e23666
_2il0floatpacket_106:
        .long   0xb7935d5a
_2il0floatpacket_107:
        .long   0xbf7f0000
_2il0floatpacket_108:
        .long   0xbf800000
_2il0floatpacket_109:
        .long   0x3f800000
        .data
#endif
