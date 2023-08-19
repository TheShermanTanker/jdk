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
        .globl __jsvml_expm14_ha_l9

__jsvml_expm14_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [304+rsp], ymm15
        vmovups   YMMWORD PTR [336+rsp], ymm14
        vmovups   YMMWORD PTR [368+rsp], ymm13
        vmovups   YMMWORD PTR [400+rsp], ymm12
        vmovups   YMMWORD PTR [432+rsp], ymm11
        vmovups   YMMWORD PTR [464+rsp], ymm10
        vmovups   YMMWORD PTR [496+rsp], ymm7
        vmovups   YMMWORD PTR [272+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [175+rsp]
        vmovdqa   ymm6, ymm0
        and       r13, -64
        vmulpd    ymm5, ymm6, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        vmovupd   ymm3, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vroundpd  ymm14, ymm5, 0
        vaddpd    ymm7, ymm14, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vmulpd    ymm2, ymm14, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vfnmadd213pd ymm3, ymm14, ymm6
        vandps    ymm11, ymm7, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vandpd    ymm15, ymm6, ymm4
        vcmpnle_uqpd ymm13, ymm15, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vsubpd    ymm0, ymm3, ymm2
        vcmpeqpd  ymm1, ymm3, ymm6
        vmovmskpd edx, ymm13
        vorpd     ymm1, ymm1, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        test      edx, edx
        vandnpd   ymm5, ymm4, ymm6
        mov       QWORD PTR [536+rsp], r13
        vextracti128 xmm15, ymm11, 1
        vmovd     ecx, xmm11
        vmovd     r9d, xmm15
        vpextrd   r8d, xmm11, 2
        vpextrd   r10d, xmm15, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r9]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r10]
        vunpcklpd xmm15, xmm12, xmm10
        vunpcklpd xmm11, xmm14, xmm13
        vunpckhpd xmm13, xmm14, xmm13
        vandps    ymm14, ymm7, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vpsllq    ymm7, ymm14, 41
        vunpckhpd xmm12, xmm12, xmm10
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vfmadd213pd ymm14, ymm0, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vinsertf128 ymm15, ymm15, xmm11, 1
        vmovupd   ymm11, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vfmadd213pd ymm11, ymm0, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vorpd     ymm15, ymm15, ymm7
        vinsertf128 ymm10, ymm12, xmm13, 1
        vmulpd    ymm12, ymm0, ymm0
        vmulpd    ymm13, ymm10, ymm7
        vfmadd213pd ymm14, ymm12, ymm11
        vandpd    ymm10, ymm3, ymm1
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vmulpd    ymm7, ymm15, ymm10
        vsubpd    ymm3, ymm3, ymm10
        vandpd    ymm0, ymm15, ymm4
        vandpd    ymm4, ymm1, ymm4
        vsubpd    ymm2, ymm3, ymm2
        vcmple_oqpd ymm0, ymm0, ymm4
        vfmadd213pd ymm14, ymm12, ymm2
        vaddpd    ymm12, ymm15, ymm1
        vblendvpd ymm2, ymm15, ymm1, ymm0
        vblendvpd ymm3, ymm1, ymm15, ymm0
        vsubpd    ymm4, ymm2, ymm12
        vaddpd    ymm1, ymm7, ymm12
        vaddpd    ymm10, ymm10, ymm14
        vaddpd    ymm11, ymm3, ymm4
        vsubpd    ymm12, ymm12, ymm1
        vaddpd    ymm0, ymm13, ymm11
        vaddpd    ymm7, ymm7, ymm12
        vfmadd213pd ymm13, ymm10, ymm0
        vfmadd213pd ymm15, ymm14, ymm7
        vaddpd    ymm13, ymm15, ymm13
        vaddpd    ymm14, ymm1, ymm13
        vorpd     ymm0, ymm14, ymm5
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm6, YMMWORD PTR [272+rsp]
        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm10, YMMWORD PTR [464+rsp]
        vmovups   ymm11, YMMWORD PTR [432+rsp]
        vmovups   ymm12, YMMWORD PTR [400+rsp]
        vmovups   ymm13, YMMWORD PTR [368+rsp]
        vmovups   ymm14, YMMWORD PTR [336+rsp]
        vmovups   ymm15, YMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B1_3:

        vmovupd   YMMWORD PTR [r13], ymm6
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B1_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [64+rsp], ymm8
        vmovups   YMMWORD PTR [32+rsp], ymm9
        mov       QWORD PTR [104+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [96+rsp], rsi
        mov       esi, edx

.L_B1_7:

        bt        esi, ebx
        jc        .L_B1_10

.L_B1_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B1_7

.L_B1_9:

        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm9, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [104+rsp]
        mov       rsi, QWORD PTR [96+rsp]
        jmp       .L_B1_2

.L_B1_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm14_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm14_ha_l9_B1_B3:
        .long   1335809
        .long   4379746
        .long   1140826
        .long   2062417
        .long   1943624
        .long   1816639
        .long   1689654
        .long   1562669
        .long   1435684
        .long   1308699
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_expm14_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm14_ha_l9_B6_B10:
        .long   530977
        .long   812058
        .long   865299
        .long   169998
        .long   296968
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_expm14_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_expm14_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_expm12_ha_e9

__jsvml_expm12_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L28:

        sub       rsp, 296
        vmovapd   xmm1, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm15
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [224+rsp], xmm14
        vmovups   XMMWORD PTR [240+rsp], xmm13
        vmovups   XMMWORD PTR [256+rsp], xmm12
        vmovups   XMMWORD PTR [192+rsp], xmm6
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmulpd    xmm12, xmm1, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        vroundpd  xmm12, xmm12, 0
        and       r13, -64
        vmulpd    xmm4, xmm12, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vaddpd    xmm13, xmm12, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vsubpd    xmm0, xmm1, xmm4
        vmulpd    xmm2, xmm12, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vcmpeqpd  xmm15, xmm0, xmm1
        vsubpd    xmm14, xmm0, xmm2
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        vandpd    xmm5, xmm1, xmm3
        vandnpd   xmm4, xmm3, xmm1
        vcmpnlepd xmm6, xmm5, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vmovmskpd edx, xmm6
        vandps    xmm6, xmm13, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vorpd     xmm15, xmm15, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        vmovd     eax, xmm6
        vandpd    xmm15, xmm0, xmm15
        vsubpd    xmm0, xmm0, xmm15
        vpextrd   ecx, xmm6, 2
        movsxd    rax, eax
        movsxd    rcx, ecx
        vsubpd    xmm2, xmm0, xmm2
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rax]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rcx]
        vunpcklpd xmm12, xmm5, xmm6
        vunpckhpd xmm6, xmm5, xmm6
        vpand     xmm5, xmm13, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vpsllq    xmm13, xmm5, 41
        vorpd     xmm5, xmm12, xmm13
        vmulpd    xmm12, xmm14, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vmulpd    xmm6, xmm6, xmm13
        vmulpd    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vmulpd    xmm14, xmm14, xmm14
        vaddpd    xmm12, xmm12, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vaddpd    xmm13, xmm13, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vmulpd    xmm12, xmm12, xmm14
        vaddpd    xmm12, xmm13, xmm12
        vmulpd    xmm13, xmm5, xmm15
        vmulpd    xmm14, xmm14, xmm12
        vaddpd    xmm2, xmm2, xmm14
        vmovupd   xmm14, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vandpd    xmm0, xmm5, xmm3
        vandpd    xmm3, xmm14, xmm3
        vcmplepd  xmm12, xmm0, xmm3
        vaddpd    xmm3, xmm5, xmm14
        vblendvpd xmm0, xmm5, xmm14, xmm12
        vblendvpd xmm12, xmm14, xmm5, xmm12
        vsubpd    xmm14, xmm0, xmm3
        vmulpd    xmm5, xmm5, xmm2
        vaddpd    xmm0, xmm12, xmm14
        vaddpd    xmm14, xmm13, xmm3
        vaddpd    xmm2, xmm15, xmm2
        vaddpd    xmm12, xmm6, xmm0
        vsubpd    xmm3, xmm3, xmm14
        vmulpd    xmm6, xmm6, xmm2
        vaddpd    xmm13, xmm13, xmm3
        vaddpd    xmm15, xmm12, xmm6
        vaddpd    xmm0, xmm13, xmm5
        vaddpd    xmm0, xmm0, xmm15
        vaddpd    xmm2, xmm14, xmm0
        mov       QWORD PTR [280+rsp], r13
        vorpd     xmm0, xmm2, xmm4
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   xmm6, XMMWORD PTR [192+rsp]
        vmovups   xmm12, XMMWORD PTR [256+rsp]
        vmovups   xmm13, XMMWORD PTR [240+rsp]
        vmovups   xmm14, XMMWORD PTR [224+rsp]
        vmovups   xmm15, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B2_3:

        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm0

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
        cmp       ebx, 2
        jl        .L_B2_7

.L_B2_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm12_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_e9_B1_B3:
        .long   936705
        .long   2282571
        .long   813123
        .long   1099834
        .long   1038385
        .long   976936
        .long   915480
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_expm12_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_expm12_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_expm12_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_expm12_ha_l9

__jsvml_expm12_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L45:

        sub       rsp, 296
        vmovapd   xmm1, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm15
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm9
        vmovups   XMMWORD PTR [224+rsp], xmm8
        vmovups   XMMWORD PTR [240+rsp], xmm7
        vmovups   XMMWORD PTR [192+rsp], xmm6
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmulpd    xmm6, xmm1, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        vroundpd  xmm6, xmm6, 0
        and       r13, -64
        vaddpd    xmm8, xmm6, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vmulpd    xmm2, xmm6, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vmovupd   xmm0, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        vandps    xmm7, xmm8, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vandpd    xmm5, xmm1, xmm3
        vfnmadd213pd xmm0, xmm6, xmm1
        vandnpd   xmm4, xmm3, xmm1
        vpand     xmm8, xmm8, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vpsllq    xmm8, xmm8, 41
        vmovd     eax, xmm7
        vcmpnlepd xmm5, xmm5, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vcmpeqpd  xmm15, xmm0, xmm1
        vsubpd    xmm9, xmm0, xmm2
        vmovmskpd edx, xmm5
        vorpd     xmm15, xmm15, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        vpextrd   ecx, xmm7, 2
        vandpd    xmm15, xmm0, xmm15
        movsxd    rax, eax
        movsxd    rcx, ecx
        vsubpd    xmm0, xmm0, xmm15
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rax]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rcx]
        vunpcklpd xmm7, xmm5, xmm6
        vunpckhpd xmm6, xmm5, xmm6
        vorpd     xmm5, xmm7, xmm8
        vmulpd    xmm6, xmm6, xmm8
        vsubpd    xmm0, xmm0, xmm2
        vmulpd    xmm2, xmm5, xmm15
        vmovupd   xmm7, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vmovupd   xmm8, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vfmadd213pd xmm7, xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vfmadd213pd xmm8, xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vmulpd    xmm9, xmm9, xmm9
        vfmadd213pd xmm7, xmm9, xmm8
        vandpd    xmm8, xmm5, xmm3
        vfmadd213pd xmm7, xmm9, xmm0
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vandpd    xmm3, xmm9, xmm3
        vcmplepd  xmm0, xmm8, xmm3
        vaddpd    xmm3, xmm5, xmm9
        vblendvpd xmm8, xmm5, xmm9, xmm0
        vblendvpd xmm0, xmm9, xmm5, xmm0
        vsubpd    xmm9, xmm8, xmm3
        vaddpd    xmm0, xmm0, xmm9
        vaddpd    xmm8, xmm6, xmm0
        vaddpd    xmm0, xmm2, xmm3
        vsubpd    xmm3, xmm3, xmm0
        vaddpd    xmm2, xmm2, xmm3
        vfmadd213pd xmm5, xmm7, xmm2
        vaddpd    xmm2, xmm15, xmm7
        vfmadd213pd xmm6, xmm2, xmm8
        vaddpd    xmm3, xmm5, xmm6
        vaddpd    xmm0, xmm0, xmm3
        mov       QWORD PTR [280+rsp], r13
        vorpd     xmm0, xmm0, xmm4
        test      edx, edx
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm6, XMMWORD PTR [192+rsp]
        vmovups   xmm7, XMMWORD PTR [240+rsp]
        vmovups   xmm8, XMMWORD PTR [224+rsp]
        vmovups   xmm9, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B3_3:

        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm0

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
        cmp       ebx, 2
        jl        .L_B3_7

.L_B3_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B3_2

.L_B3_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm12_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_l9_B1_B3:
        .long   936705
        .long   2282571
        .long   813123
        .long   1013818
        .long   952369
        .long   890920
        .long   1112088
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_expm12_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_expm12_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_expm12_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_expm11_ha_ex

__jsvml_expm11_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L62:

        sub       rsp, 280
        lea       rdx, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [208+rsp], xmm10
        movaps    xmm10, xmm0
        movups    XMMWORD PTR [176+rsp], xmm12
        movaps    xmm3, xmm10
        movups    XMMWORD PTR [192+rsp], xmm11
        movups    XMMWORD PTR [224+rsp], xmm9
        movups    XMMWORD PTR [240+rsp], xmm8
        movups    XMMWORD PTR [256+rsp], xmm7
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        mulsd     xmm3, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        and       r13, -64
        movups    xmm4, XMMWORD PTR [rip+_2il0floatpacket_33]
        addpd     xmm3, xmm4
        subpd     xmm3, xmm4
        movaps    xmm5, xmm3
        movaps    xmm8, xmm3
        mulsd     xmm5, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        addsd     xmm3, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        mulsd     xmm8, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        subsd     xmm0, xmm5
        movaps    xmm1, xmm0
        movaps    xmm11, xmm0
        movq      xmm7, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        subsd     xmm1, xmm8
        cmpeqsd   xmm11, xmm10
        pand      xmm7, xmm3
        movd      eax, xmm7
        movsd     xmm7, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        movsd     xmm2, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        mulsd     xmm7, xmm1
        movaps    xmm4, xmm2
        movq      xmm12, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        andps     xmm4, xmm10
        pand      xmm3, xmm12
        movaps    xmm9, xmm2
        movsd     xmm12, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        psllq     xmm3, 41
        movsxd    rax, eax
        andnps    xmm9, xmm10
        mulsd     xmm12, xmm1
        cmpnlesd  xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        addsd     xmm7, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        mulsd     xmm1, xmm1
        movmskpd  ecx, xmm4
        addsd     xmm12, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        mulsd     xmm7, xmm1
        movsd     xmm4, QWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+8+rdx+rax]
        and       ecx, 1
        movups    xmm5, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rdx+rax]
        addsd     xmm7, xmm12
        unpcklpd  xmm4, xmm4
        orps      xmm5, xmm3
        mulsd     xmm4, xmm3
        movaps    xmm12, xmm2
        mulsd     xmm7, xmm1
        movsd     xmm3, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        andps     xmm12, xmm5
        orps      xmm3, xmm11
        andps     xmm3, xmm0
        mov       QWORD PTR [272+rsp], r13
        subsd     xmm0, xmm3
        subsd     xmm0, xmm8
        movaps    xmm8, xmm5
        mulsd     xmm8, xmm3
        addsd     xmm7, xmm0
        movsd     xmm0, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        andps     xmm2, xmm0
        movaps    xmm1, xmm0
        cmplesd   xmm12, xmm2
        movaps    xmm11, xmm12
        andps     xmm1, xmm12
        andnps    xmm11, xmm5
        movaps    xmm2, xmm12
        orps      xmm11, xmm1
        movaps    xmm1, xmm5
        andnps    xmm2, xmm0
        andps     xmm12, xmm5
        orps      xmm2, xmm12
        addsd     xmm1, xmm0
        mulsd     xmm5, xmm7
        addsd     xmm7, xmm3
        subsd     xmm11, xmm1
        movaps    xmm0, xmm1
        addsd     xmm11, xmm2
        addsd     xmm0, xmm8
        addsd     xmm11, xmm4
        mulsd     xmm4, xmm7
        subsd     xmm1, xmm0
        addsd     xmm4, xmm11
        addsd     xmm8, xmm1
        addsd     xmm5, xmm8
        addsd     xmm5, xmm4
        addsd     xmm0, xmm5
        orps      xmm0, xmm9
        jne       .L_B4_3

.L_B4_2:

        movups    xmm7, XMMWORD PTR [256+rsp]
        movups    xmm8, XMMWORD PTR [240+rsp]
        movups    xmm9, XMMWORD PTR [224+rsp]
        movups    xmm10, XMMWORD PTR [208+rsp]
        movups    xmm11, XMMWORD PTR [192+rsp]
        movups    xmm12, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        movsd     QWORD PTR [r13], xmm10
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B4_6

.L_B4_4:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B4_4
        .align    16, 0x90

.L_B4_7:

        .section .drectve
        .ascii " -export \"__jsvml_expm11_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm11_ha_ex_B1_B6:
        .long   1070849
        .long   1430615
        .long   1079375
        .long   1017927
        .long   956478
        .long   833589
        .long   772136
        .long   895003
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_expm11_ha_ex_B1_B6

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_expm12_ha_ex

__jsvml_expm12_ha_ex:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L77:

        sub       rsp, 296
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [192+rsp], xmm10
        movups    XMMWORD PTR [208+rsp], xmm9
        movups    XMMWORD PTR [224+rsp], xmm8
        movups    XMMWORD PTR [240+rsp], xmm7
        movups    XMMWORD PTR [256+rsp], xmm6
        movaps    xmm6, xmm0
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        and       r13, -64
        mulpd     xmm4, xmm6
        movups    xmm2, XMMWORD PTR [rip+_2il0floatpacket_33]
        addpd     xmm4, xmm2
        subpd     xmm4, xmm2
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        movaps    xmm2, xmm6
        mulpd     xmm3, xmm4
        movups    xmm0, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        movups    xmm10, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        movaps    xmm1, xmm0
        addpd     xmm10, xmm4
        subpd     xmm2, xmm3
        andps     xmm1, xmm6
        movaps    xmm8, xmm2
        cmpnlepd  xmm1, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        movaps    xmm3, xmm2
        mulpd     xmm7, xmm4
        movmskpd  eax, xmm1
        movdqu    xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        movaps    xmm5, xmm0
        pand      xmm9, xmm10
        andnps    xmm5, xmm6
        movd      edx, xmm9
        pshufd    xmm1, xmm9, 2
        pand      xmm10, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        movd      ecx, xmm1
        psllq     xmm10, 41
        subpd     xmm8, xmm7
        cmpeqpd   xmm3, xmm6
        movsxd    rdx, edx
        movsxd    rcx, ecx
        orps      xmm3, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        andps     xmm3, xmm2
        movups    xmm4, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rdx]
        movups    xmm9, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+r8+rcx]
        movaps    xmm1, xmm4
        unpcklpd  xmm1, xmm9
        unpckhpd  xmm4, xmm9
        orps      xmm1, xmm10
        mulpd     xmm4, xmm10
        subpd     xmm2, xmm3
        movups    xmm10, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        mulpd     xmm10, xmm8
        subpd     xmm2, xmm7
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        movups    xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        movaps    xmm7, xmm1
        mulpd     xmm9, xmm8
        mulpd     xmm8, xmm8
        addpd     xmm9, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        mulpd     xmm10, xmm8
        mulpd     xmm7, xmm3
        addpd     xmm9, xmm10
        mulpd     xmm8, xmm9
        movups    xmm10, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        movaps    xmm9, xmm0
        andps     xmm9, xmm1
        andps     xmm0, xmm10
        cmplepd   xmm9, xmm0
        addpd     xmm2, xmm8
        movaps    xmm0, xmm9
        movaps    xmm8, xmm10
        andnps    xmm0, xmm1
        andps     xmm8, xmm9
        orps      xmm0, xmm8
        movaps    xmm8, xmm9
        andnps    xmm8, xmm10
        andps     xmm9, xmm1
        addpd     xmm10, xmm1
        addpd     xmm3, xmm2
        mulpd     xmm1, xmm2
        subpd     xmm0, xmm10
        orps      xmm8, xmm9
        addpd     xmm8, xmm0
        movaps    xmm0, xmm10
        addpd     xmm0, xmm7
        addpd     xmm8, xmm4
        mulpd     xmm4, xmm3
        subpd     xmm10, xmm0
        addpd     xmm8, xmm4
        addpd     xmm7, xmm10
        addpd     xmm7, xmm1
        addpd     xmm7, xmm8
        addpd     xmm0, xmm7
        mov       QWORD PTR [280+rsp], r13
        orps      xmm0, xmm5
        test      eax, eax
        jne       .L_B5_3

.L_B5_2:

        movups    xmm6, XMMWORD PTR [256+rsp]
        movups    xmm7, XMMWORD PTR [240+rsp]
        movups    xmm8, XMMWORD PTR [224+rsp]
        movups    xmm9, XMMWORD PTR [208+rsp]
        movups    xmm10, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B5_3:

        movups    XMMWORD PTR [r13], xmm6
        movups    XMMWORD PTR [64+r13], xmm0

.L_B5_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B5_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm12_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_ex_B1_B3:
        .long   935937
        .long   2282568
        .long   1075261
        .long   1013813
        .long   952365
        .long   890916
        .long   829467
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_expm12_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm12_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_expm12_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_expm12_ha_ex_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_expm11_ha_l9

__jsvml_expm11_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L94:

        sub       rsp, 280
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm15
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [240+rsp], xmm14
        vmovups   XMMWORD PTR [256+rsp], xmm13
        vmovups   XMMWORD PTR [192+rsp], xmm10
        vmovups   XMMWORD PTR [208+rsp], xmm9
        vmovups   XMMWORD PTR [176+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmulsd    xmm3, xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        and       r13, -64
        vroundsd  xmm1, xmm3, xmm3, 0
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        vmovapd   xmm13, xmm1
        vmovq     xmm6, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vandpd    xmm5, xmm4, xmm2
        vfnmadd132sd xmm13, xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vandnpd   xmm3, xmm2, xmm4
        vmulsd    xmm14, xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vaddsd    xmm10, xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vcmpnlesd xmm0, xmm5, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vcmpeqsd  xmm9, xmm13, xmm4
        vsubsd    xmm15, xmm13, xmm14
        vmovmskpd ecx, xmm0
        vpand     xmm5, xmm10, xmm6
        vmovd     eax, xmm5
        vmovq     xmm0, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vpand     xmm6, xmm10, xmm0
        movsxd    rax, eax
        vpsllq    xmm5, xmm6, 41
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vfmadd213sd xmm10, xmm15, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vmulsd    xmm0, xmm15, xmm15
        vmovddup  xmm1, QWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+8+rdx+rax]
        vorpd     xmm6, xmm5, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rdx+rax]
        vmulsd    xmm1, xmm1, xmm5
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vfmadd213sd xmm5, xmm15, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        vorpd     xmm9, xmm15, xmm9
        vandpd    xmm9, xmm13, xmm9
        vmulsd    xmm15, xmm6, xmm9
        vsubsd    xmm13, xmm13, xmm9
        vfmadd213sd xmm5, xmm0, xmm10
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vsubsd    xmm14, xmm13, xmm14
        vfmadd213sd xmm5, xmm0, xmm14
        vandpd    xmm0, xmm6, xmm2
        vandpd    xmm2, xmm10, xmm2
        vaddsd    xmm14, xmm6, xmm10
        vcmplesd  xmm0, xmm0, xmm2
        vblendvpd xmm2, xmm6, xmm10, xmm0
        vblendvpd xmm13, xmm10, xmm6, xmm0
        vsubsd    xmm10, xmm2, xmm14
        mov       QWORD PTR [272+rsp], r13
        vaddsd    xmm0, xmm10, xmm13
        vaddsd    xmm2, xmm0, xmm1
        vaddsd    xmm0, xmm14, xmm15
        vsubsd    xmm14, xmm14, xmm0
        vaddsd    xmm15, xmm15, xmm14
        vfmadd213sd xmm6, xmm5, xmm15
        vaddsd    xmm5, xmm5, xmm9
        vfmadd213sd xmm1, xmm5, xmm2
        vaddsd    xmm1, xmm6, xmm1
        vaddsd    xmm6, xmm0, xmm1
        vorpd     xmm0, xmm6, xmm3
        and       ecx, 1
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [176+rsp]
        vmovups   xmm9, XMMWORD PTR [208+rsp]
        vmovups   xmm10, XMMWORD PTR [192+rsp]
        vmovups   xmm13, XMMWORD PTR [256+rsp]
        vmovups   xmm14, XMMWORD PTR [240+rsp]
        vmovups   xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B6_3:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B6_6

.L_B6_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B6_4
        .align    16, 0x90

.L_B6_7:

        .section .drectve
        .ascii " -export \"__jsvml_expm11_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm11_ha_l9_B1_B6:
        .long   1070081
        .long   1430612
        .long   747596
        .long   890947
        .long   829498
        .long   1103921
        .long   1042472
        .long   981016
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_expm11_ha_l9_B1_B6

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_expm14_ha_e9

__jsvml_expm14_ha_e9:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L109:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [240+rsp], ymm15
        vmovups   YMMWORD PTR [272+rsp], ymm14
        vmovups   YMMWORD PTR [304+rsp], ymm13
        vmovups   YMMWORD PTR [336+rsp], ymm12
        vmovups   YMMWORD PTR [368+rsp], ymm11
        vmovups   YMMWORD PTR [400+rsp], ymm10
        vmovups   YMMWORD PTR [432+rsp], ymm9
        vmovups   YMMWORD PTR [464+rsp], ymm8
        vmovups   YMMWORD PTR [496+rsp], ymm7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [143+rsp]
        vmovapd   ymm9, ymm0
        and       r13, -64
        vmulpd    ymm4, ymm9, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        vroundpd  ymm12, ymm4, 0
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        vmulpd    ymm2, ymm12, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vandpd    ymm5, ymm9, ymm4
        vcmpnle_uqpd ymm11, ymm5, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vsubpd    ymm3, ymm9, ymm2
        vmulpd    ymm2, ymm12, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vcmpeqpd  ymm1, ymm3, ymm9
        vsubpd    ymm0, ymm3, ymm2
        vorpd     ymm1, ymm1, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        vandnpd   ymm8, ymm4, ymm9
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm10, ymm11, 1
        vshufps   xmm7, xmm11, xmm10, 221
        vaddpd    ymm11, ymm12, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vmovmskps edx, xmm7
        vandps    xmm13, xmm11, xmm5
        vextractf128 xmm14, ymm11, 1
        vmovd     ecx, xmm13
        vandps    xmm10, xmm14, xmm5
        vmovd     r9d, xmm10
        vpextrd   r8d, xmm13, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        vpextrd   r10d, xmm10, 2
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+rcx]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r8]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r9]
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rax+r10]
        vunpcklpd xmm7, xmm15, xmm5
        vunpckhpd xmm15, xmm15, xmm5
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vunpcklpd xmm10, xmm13, xmm12
        vandps    xmm11, xmm11, xmm5
        vandps    xmm14, xmm14, xmm5
        vinsertf128 ymm7, ymm7, xmm10, 1
        vunpckhpd xmm10, xmm13, xmm12
        vpsllq    xmm12, xmm11, 41
        vpsllq    xmm11, xmm14, 41
        vinsertf128 ymm13, ymm12, xmm11, 1
        vmulpd    ymm11, ymm0, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vorpd     ymm5, ymm7, ymm13
        vinsertf128 ymm10, ymm15, xmm10, 1
        vmulpd    ymm7, ymm10, ymm13
        vmulpd    ymm10, ymm0, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vaddpd    ymm15, ymm11, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vmulpd    ymm11, ymm0, ymm0
        vaddpd    ymm14, ymm10, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vandpd    ymm0, ymm3, ymm1
        vsubpd    ymm10, ymm3, ymm0
        vmulpd    ymm3, ymm14, ymm11
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vmulpd    ymm13, ymm5, ymm0
        vaddpd    ymm12, ymm15, ymm3
        vsubpd    ymm1, ymm10, ymm2
        vmulpd    ymm11, ymm11, ymm12
        vandpd    ymm2, ymm5, ymm4
        vandpd    ymm4, ymm14, ymm4
        vcmple_oqpd ymm3, ymm2, ymm4
        vaddpd    ymm12, ymm1, ymm11
        vaddpd    ymm1, ymm5, ymm14
        vblendvpd ymm15, ymm5, ymm14, ymm3
        vblendvpd ymm11, ymm14, ymm5, ymm3
        vsubpd    ymm10, ymm15, ymm1
        vaddpd    ymm0, ymm0, ymm12
        vmulpd    ymm5, ymm5, ymm12
        vaddpd    ymm15, ymm11, ymm10
        vaddpd    ymm11, ymm13, ymm1
        vaddpd    ymm10, ymm7, ymm15
        vsubpd    ymm2, ymm1, ymm11
        vmulpd    ymm7, ymm7, ymm0
        vaddpd    ymm13, ymm13, ymm2
        vaddpd    ymm0, ymm10, ymm7
        vaddpd    ymm1, ymm13, ymm5
        vaddpd    ymm2, ymm1, ymm0
        vaddpd    ymm3, ymm11, ymm2
        vorpd     ymm0, ymm3, ymm8
        test      edx, edx
        jne       .L_B7_3

.L_B7_2:

        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm9, YMMWORD PTR [432+rsp]
        vmovups   ymm10, YMMWORD PTR [400+rsp]
        vmovups   ymm11, YMMWORD PTR [368+rsp]
        vmovups   ymm12, YMMWORD PTR [336+rsp]
        vmovups   ymm13, YMMWORD PTR [304+rsp]
        vmovups   ymm14, YMMWORD PTR [272+rsp]
        vmovups   ymm15, YMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B7_3:

        vmovupd   YMMWORD PTR [r13], ymm9
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B7_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [32+rsp], ymm6
        mov       QWORD PTR [72+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [64+rsp], rsi
        mov       esi, edx

.L_B7_7:

        bt        esi, ebx
        jc        .L_B7_10

.L_B7_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B7_7

.L_B7_9:

        vmovups   ymm6, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [72+rsp]
        mov       rsi, QWORD PTR [64+rsp]
        jmp       .L_B7_2

.L_B7_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B7_8
        .align    16, 0x90

.L_B7_11:

        .section .drectve
        .ascii " -export \"__jsvml_expm14_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm14_ha_e9_B1_B3:
        .long   1469185
        .long   4379755
        .long   2062435
        .long   1935450
        .long   1808465
        .long   1681480
        .long   1554495
        .long   1427510
        .long   1300525
        .long   1173540
        .long   1046555
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_expm14_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm14_ha_e9_B6_B10:
        .long   398369
        .long   549908
        .long   603149
        .long   157704
        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_expm14_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_6
        .rva    .L_B7_11
        .rva    _unwind___jsvml_expm14_ha_e9_B6_B10

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_expm18_ha_z0

__jsvml_expm18_ha_z0:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L136:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+256]
        and       r13, -64
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+320]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+512]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+576]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+640]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+384]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+128]
        vmovaps   zmm5, zmm0
        vfmadd213pd zmm24, zmm5, zmm23 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+704]
        vcmppd    k0, zmm5, zmm22, 21 {sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+768]
        vsubpd    zmm27, zmm24, zmm23 {rn-sae}
        vpermt2pd zmm29, zmm24, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+64]
        vpermt2pd zmm4, zmm24, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+192]
        vfnmadd213pd zmm25, zmm27, zmm5 {rn-sae}
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+896]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+1024]
        vmaxpd    zmm30, zmm27, zmm28 {sae}
        kmovw     r8d, k0
        vscalefpd zmm3, zmm29, zmm30 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+1216]
        vmovaps   zmm31, zmm27
        vfnmadd213pd zmm31, zmm26, zmm25 {rn-sae}
        vcmppd    k1, zmm3, zmm30, 17 {sae}
        vsubpd    zmm1, zmm25, zmm31 {rn-sae}
        vandpd    zmm2, zmm31, zmm0
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+960]
        vfnmadd231pd zmm1, zmm26, zmm27 {rn-sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+1088]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+1152]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+1280]
        vfmadd231pd zmm25, zmm23, zmm2 {rn-sae}
        vfmadd231pd zmm26, zmm24, zmm2 {rn-sae}
        vblendmpd zmm23{k1}, zmm31, zmm3
        vandpd    zmm28, zmm1, zmm0
        vaddpd    zmm24, zmm3, zmm31 {rn-sae}
        vmulpd    zmm0, zmm2, zmm2 {rn-sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+832]
        vaddpd    zmm29, zmm28, zmm4 {rn-sae}
        vfmadd231pd zmm1, zmm22, zmm2 {rn-sae}
        vfmadd213pd zmm4, zmm2, zmm29 {rn-sae}
        vblendmpd zmm22{k1}, zmm3, zmm31
        vfmadd213pd zmm1, zmm0, zmm25 {rn-sae}
        vsubpd    zmm31, zmm22, zmm24 {rn-sae}
        vfmadd213pd zmm1, zmm0, zmm26 {rn-sae}
        vaddpd    zmm25, zmm31, zmm23 {rn-sae}
        vfmadd213pd zmm1, zmm2, zmm27 {rn-sae}
        vfmadd213pd zmm1, zmm0, zmm4 {rn-sae}
        vmovaps   zmm0, zmm24
        vfmadd231pd zmm0, zmm2, zmm3 {rn-sae}
        vsubpd    zmm4, zmm0, zmm24 {rn-sae}
        vfmsub231pd zmm4, zmm2, zmm3 {rn-sae}
        vfmadd213pd zmm3, zmm1, zmm25 {rn-sae}
        vaddpd    zmm2, zmm3, zmm4 {rn-sae}
        vaddpd    zmm0, zmm0, zmm2 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vpternlogq zmm0, zmm5, ZMMWORD PTR [rip+__jsvml_dexpm1_ha_data_internal_avx512+448], 248
        test      r8d, r8d
        jne       .L_B8_3

.L_B8_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B8_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B8_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B8_6

.L_B8_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B8_6:

        vmovups   ZMMWORD PTR [r13], zmm5
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B8_11

.L_B8_7:

        cmp       edx, eax
        je        .L_B8_2

.L_B8_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B8_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
        jmp       .L_B8_2

.L_B8_11:

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

.L_B8_12:

        bt        edi, ebx
        jc        .L_B8_15

.L_B8_13:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B8_12

.L_B8_14:

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
        jmp       .L_B8_7

.L_B8_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B8_13
        .align    16, 0x90

.L_B8_16:

        .section .drectve
        .ascii " -export \"__jsvml_expm18_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm18_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_11
        .rva    _unwind___jsvml_expm18_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm18_ha_z0_B11_B15:
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

        .rva    .L_B8_11
        .rva    .L_B8_16
        .rva    _unwind___jsvml_expm18_ha_z0_B11_B15

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_expm11_ha_e9

__jsvml_expm11_ha_e9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L187:

        sub       rsp, 280
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [176+rsp], xmm15
        vmovups   XMMWORD PTR [192+rsp], xmm14
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovapd   xmm13, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2816]
        and       r13, -64
        vmulsd    xmm12, xmm13, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2304]
        vandpd    xmm5, xmm13, xmm11
        vcmpnlesd xmm6, xmm5, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2880]
        vroundsd  xmm1, xmm12, xmm12, 0
        vandnpd   xmm12, xmm11, xmm13
        vmulsd    xmm3, xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2368]
        vmulsd    xmm2, xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2432]
        vmovmskpd ecx, xmm6
        vaddsd    xmm6, xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2496]
        vsubsd    xmm0, xmm13, xmm3
        vmovq     xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2560]
        vsubsd    xmm14, xmm0, xmm2
        vcmpeqsd  xmm15, xmm0, xmm13
        vpand     xmm3, xmm6, xmm4
        vmovd     eax, xmm3
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2624]
        vpand     xmm4, xmm6, xmm1
        movsxd    rax, eax
        vpsllq    xmm3, xmm4, 41
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2048]
        vmulsd    xmm4, xmm1, xmm14
        vmovddup  xmm5, QWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+8+rdx+rax]
        vorpd     xmm6, xmm3, XMMWORD PTR ["__jsvml_dexpm1_ha_data_internal"@imgrel+rdx+rax]
        vmulsd    xmm5, xmm5, xmm3
        vaddsd    xmm4, xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2112]
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2176]
        vmulsd    xmm3, xmm3, xmm14
        mov       QWORD PTR [272+rsp], r13
        vaddsd    xmm1, xmm3, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2240]
        vmulsd    xmm3, xmm14, xmm14
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2688]
        vorpd     xmm15, xmm14, xmm15
        vandpd    xmm15, xmm0, xmm15
        vsubsd    xmm14, xmm0, xmm15
        vmulsd    xmm0, xmm4, xmm3
        vmovsd    xmm4, QWORD PTR [rip+__jsvml_dexpm1_ha_data_internal+2752]
        vaddsd    xmm0, xmm0, xmm1
        vsubsd    xmm1, xmm14, xmm2
        vmulsd    xmm2, xmm6, xmm15
        vmulsd    xmm3, xmm0, xmm3
        vandpd    xmm14, xmm6, xmm11
        vandpd    xmm11, xmm4, xmm11
        vaddsd    xmm0, xmm3, xmm1
        vcmplesd  xmm3, xmm14, xmm11
        vaddsd    xmm1, xmm6, xmm4
        vblendvpd xmm11, xmm6, xmm4, xmm3
        vblendvpd xmm14, xmm4, xmm6, xmm3
        vsubsd    xmm4, xmm11, xmm1
        vaddsd    xmm3, xmm4, xmm14
        vaddsd    xmm11, xmm3, xmm5
        vaddsd    xmm3, xmm1, xmm2
        vsubsd    xmm1, xmm1, xmm3
        vaddsd    xmm1, xmm2, xmm1
        vmulsd    xmm2, xmm6, xmm0
        vaddsd    xmm0, xmm0, xmm15
        vaddsd    xmm2, xmm2, xmm1
        vmulsd    xmm5, xmm5, xmm0
        vaddsd    xmm4, xmm5, xmm11
        vaddsd    xmm6, xmm2, xmm4
        vaddsd    xmm3, xmm3, xmm6
        vorpd     xmm0, xmm3, xmm12
        and       ecx, 1
        jne       .L_B9_3

.L_B9_2:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        vmovups   xmm15, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B9_3:

        vmovsd    QWORD PTR [r13], xmm13
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B9_6

.L_B9_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B9_2

.L_B9_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexpm1_ha_cout_rare_internal
        jmp       .L_B9_4
        .align    16, 0x90

.L_B9_7:

        .section .drectve
        .ascii " -export \"__jsvml_expm11_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_expm11_ha_e9_B1_B6:
        .long   1070081
        .long   1430612
        .long   1075276
        .long   1030211
        .long   968762
        .long   907309
        .long   845860
        .long   784411
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_7
        .rva    _unwind___jsvml_expm11_ha_e9_B1_B6

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dexpm1_ha_cout_rare_internal

__jsvml_dexpm1_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L202:

        sub       rsp, 104
        mov       r9, rdx
        movsd     xmm1, QWORD PTR [rcx]
        pxor      xmm0, xmm0
        movzx     edx, WORD PTR [6+rcx]
        xor       eax, eax
        comisd    xmm0, xmm1
        ja        .L_B10_18

.L_B10_2:

        and       edx, 32752
        shr       edx, 4
        movsd     QWORD PTR [96+rsp], xmm1
        cmp       edx, 2047
        je        .L_B10_19

.L_B10_3:

        cmp       edx, 970
        jle       .L_B10_16

.L_B10_4:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1080]
        comisd    xmm0, xmm1
        jb        .L_B10_15

.L_B10_5:

        comisd    xmm1, QWORD PTR [rip+_imldExpHATab+1096]
        jb        .L_B10_14

.L_B10_6:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1024]
        lea       r11, QWORD PTR [rip+__ImageBase]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [80+rsp], xmm0
        movsd     xmm2, QWORD PTR [80+rsp]
        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1072]
        mov       rcx, QWORD PTR [rip+_imldExpHATab+1136]
        mov       QWORD PTR [96+rsp], rcx
        addsd     xmm2, QWORD PTR [rip+_imldExpHATab+1032]
        movsd     QWORD PTR [88+rsp], xmm2
        movaps    xmm2, xmm1
        movsd     xmm3, QWORD PTR [88+rsp]
        mov       edx, DWORD PTR [88+rsp]
        mov       r8d, edx
        and       edx, 63
        subsd     xmm3, QWORD PTR [rip+_imldExpHATab+1032]
        movsd     QWORD PTR [80+rsp], xmm3
        lea       r10d, DWORD PTR [rdx+rdx]
        movsd     xmm4, QWORD PTR [80+rsp]
        lea       edx, DWORD PTR [1+rdx+rdx]
        mulsd     xmm4, QWORD PTR [rip+_imldExpHATab+1104]
        movsd     xmm5, QWORD PTR [80+rsp]
        subsd     xmm2, xmm4
        mulsd     xmm5, QWORD PTR [rip+_imldExpHATab+1112]
        shr       r8d, 6
        subsd     xmm2, xmm5
        comisd    xmm1, QWORD PTR [rip+_imldExpHATab+1088]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1064]
        mulsd     xmm0, xmm2
        lea       ecx, DWORD PTR [1023+r8]
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1056]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1048]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1040]
        mulsd     xmm0, xmm2
        mulsd     xmm0, xmm2
        addsd     xmm0, xmm2
        movsd     xmm2, QWORD PTR ["_imldExpHATab"@imgrel+r11+r10*8]
        addsd     xmm0, QWORD PTR ["_imldExpHATab"@imgrel+r11+rdx*8]
        mulsd     xmm0, xmm2
        jb        .L_B10_10

.L_B10_7:

        and       ecx, 2047
        addsd     xmm0, xmm2
        cmp       ecx, 2046
        ja        .L_B10_9

.L_B10_8:

        mov       rdx, QWORD PTR [rip+_imldExpHATab+1136]
        shr       rdx, 48
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [102+rsp], dx
        movsd     xmm1, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_9:

        dec       ecx
        and       ecx, 2047
        movzx     edx, WORD PTR [102+rsp]
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [102+rsp], dx
        movsd     xmm1, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm1
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1152]
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_10:

        add       r8d, 1083
        and       r8d, 2047
        mov       eax, r8d
        movzx     edx, WORD PTR [102+rsp]
        shl       eax, 4
        and       edx, -32753
        or        edx, eax
        mov       WORD PTR [102+rsp], dx
        movsd     xmm3, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm3
        mulsd     xmm3, xmm2
        movaps    xmm1, xmm3
        addsd     xmm1, xmm0
        cmp       r8d, 50
        ja        .L_B10_12

.L_B10_11:

        mulsd     xmm1, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [r9], xmm1
        jmp       .L_B10_13

.L_B10_12:

        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm2, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1168]
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
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm1, QWORD PTR [72+rsp]
        mulsd     xmm1, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [72+rsp], xmm1
        movsd     xmm2, QWORD PTR [64+rsp]
        movsd     xmm5, QWORD PTR [72+rsp]
        addsd     xmm2, xmm5
        movsd     QWORD PTR [r9], xmm2

.L_B10_13:

        mov       eax, 4
        add       rsp, 104
        ret

.L_B10_14:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1120]
        mov       eax, 4
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_15:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1128]
        mov       eax, 3
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_16:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1144]
        addsd     xmm0, xmm1
        movsd     QWORD PTR [r9], xmm0

.L_B10_17:

        add       rsp, 104
        ret

.L_B10_18:

        mov       rax, 0x0bff0000000000000
        mov       QWORD PTR [r9], rax
        xor       eax, eax
        add       rsp, 104
        ret

.L_B10_19:

        mov       dl, BYTE PTR [103+rsp]
        and       dl, -128
        cmp       dl, -128
        je        .L_B10_21

.L_B10_20:

        mulsd     xmm1, xmm1
        movsd     QWORD PTR [r9], xmm1
        add       rsp, 104
        ret

.L_B10_21:

        test      DWORD PTR [100+rsp], 1048575
        jne       .L_B10_20

.L_B10_22:

        cmp       DWORD PTR [96+rsp], 0
        jne       .L_B10_20

.L_B10_23:

        mov       rdx, QWORD PTR [rip+_imldExpHATab+1136]
        mov       QWORD PTR [r9], rdx
        add       rsp, 104
        ret
        .align    16, 0x90

.L_B10_24:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dexpm1_ha_cout_rare_internal_B1_B23:
        .long   67585
        .long   49672

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_24
        .rva    _unwind___jsvml_dexpm1_ha_cout_rare_internal_B1_B23

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dexpm1_ha_data_internal_avx512
__jsvml_dexpm1_ha_data_internal_avx512:
        .long   0
        .long   1072693248
        .long   1828292879
        .long   1072739672
        .long   1014845819
        .long   1072788152
        .long   1853186616
        .long   1072838778
        .long   171030293
        .long   1072891646
        .long   1276261410
        .long   1072946854
        .long   3577096743
        .long   1073004506
        .long   3712504873
        .long   1073064711
        .long   1719614413
        .long   1073127582
        .long   1944781191
        .long   1073193236
        .long   1110089947
        .long   1073261797
        .long   2191782032
        .long   1073333393
        .long   2572866477
        .long   1073408159
        .long   3716502172
        .long   1073486235
        .long   3707479175
        .long   1073567768
        .long   2728693978
        .long   1073652911
        .long   0
        .long   0
        .long   1568897901
        .long   1016568486
        .long   3936719688
        .long   3162512149
        .long   3819481236
        .long   1016499965
        .long   1303423926
        .long   1015238005
        .long   2804567149
        .long   1015390024
        .long   3145379760
        .long   1014403278
        .long   3793507337
        .long   1016095713
        .long   3210617384
        .long   3163796463
        .long   3108873501
        .long   3162190556
        .long   3253791412
        .long   1015920431
        .long   730975783
        .long   1014083580
        .long   2462790535
        .long   1015814775
        .long   816778419
        .long   1014197934
        .long   2789017511
        .long   1014276997
        .long   2413007344
        .long   3163551506
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   1697350398
        .long   1073157447
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
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
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   0
        .long   3227516928
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4106095538
        .long   1056571896
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   4105251267
        .long   1059717624
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   372262401
        .long   1062650220
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   279336721
        .long   1065423121
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655946
        .long   1067799893
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
        .long   1431655929
        .long   1069897045
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
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .globl __jsvml_dexpm1_ha_data_internal
__jsvml_dexpm1_ha_data_internal:
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2818572288
        .long   5693
        .long   1457015399
        .long   1044362035
        .long   1073741824
        .long   11418
        .long   4044949557
        .long   3191375865
        .long   3892314112
        .long   17173
        .long   794616807
        .long   1041997793
        .long   3489660928
        .long   22960
        .long   2715237930
        .long   1044950059
        .long   671088640
        .long   28779
        .long   3698181124
        .long   1044242285
        .long   402653184
        .long   34629
        .long   36755401
        .long   1042114290
        .long   3355443200
        .long   40510
        .long   438898435
        .long   1044789148
        .long   1879048192
        .long   46424
        .long   2230008375
        .long   3192402871
        .long   671088640
        .long   52370
        .long   3120814979
        .long   1045140031
        .long   805306368
        .long   58348
        .long   269498903
        .long   1044815501
        .long   2952790016
        .long   64358
        .long   3705630242
        .long   3182612048
        .long   3489660928
        .long   70401
        .long   2766913307
        .long   1039293264
        .long   3221225472
        .long   76477
        .long   4276399797
        .long   1041960050
        .long   2952790016
        .long   82586
        .long   80474087
        .long   3191172386
        .long   3355443200
        .long   88728
        .long   613423790
        .long   1042592202
        .long   1073741824
        .long   94904
        .long   689505308
        .long   3192657268
        .long   939524096
        .long   101113
        .long   930606615
        .long   1042387389
        .long   3892314112
        .long   107355
        .long   2850403528
        .long   1045134939
        .long   2281701376
        .long   113632
        .long   1663725767
        .long   3192904985
        .long   805306368
        .long   119943
        .long   2810207104
        .long   1043762074
        .long   536870912
        .long   126288
        .long   3854830848
        .long   1044899528
        .long   2281701376
        .long   132667
        .long   2397289153
        .long   1041802037
        .long   2415919104
        .long   139081
        .long   1649749971
        .long   1043848649
        .long   1879048192
        .long   145530
        .long   2039734354
        .long   3191384540
        .long   1342177280
        .long   152014
        .long   849302817
        .long   3188938352
        .long   1744830464
        .long   158533
        .long   383003846
        .long   3191925785
        .long   3758096384
        .long   165087
        .long   158134621
        .long   1044338232
        .long   4160749568
        .long   171677
        .long   4137603445
        .long   3192324360
        .long   3489660928
        .long   178303
        .long   4290499725
        .long   1043028785
        .long   2818572288
        .long   184965
        .long   1275031083
        .long   3190931407
        .long   2818572288
        .long   191663
        .long   1629266164
        .long   1043587829
        .long   134217728
        .long   198398
        .long   2842642093
        .long   1044483512
        .long   0
        .long   205169
        .long   1985360263
        .long   3192756542
        .long   2952790016
        .long   211976
        .long   4200916017
        .long   1044586679
        .long   1610612736
        .long   218821
        .long   3450763054
        .long   3189463043
        .long   939524096
        .long   225703
        .long   2870834528
        .long   3190336198
        .long   1879048192
        .long   232622
        .long   3553800616
        .long   3192377660
        .long   939524096
        .long   239579
        .long   1219436983
        .long   3192443648
        .long   3221225472
        .long   246573
        .long   606077177
        .long   1044946247
        .long   1342177280
        .long   253606
        .long   3998375791
        .long   3192876638
        .long   134217728
        .long   260677
        .long   586810495
        .long   3192560639
        .long   536870912
        .long   267786
        .long   2676240988
        .long   1044345570
        .long   3623878656
        .long   274933
        .long   1841759300
        .long   1043663497
        .long   1610612736
        .long   282120
        .long   1086643152
        .long   1041785419
        .long   4026531840
        .long   289345
        .long   1148024454
        .long   3192330237
        .long   3087007744
        .long   296610
        .long   2137125602
        .long   3191993881
        .long   4026531840
        .long   303914
        .long   3437605242
        .long   1043004027
        .long   3623878656
        .long   311258
        .long   3340100419
        .long   3192278702
        .long   2550136832
        .long   318642
        .long   3594204911
        .long   1044372944
        .long   2013265920
        .long   326066
        .long   2502738549
        .long   3191221557
        .long   2684354560
        .long   333530
        .long   235444137
        .long   1044806450
        .long   1476395008
        .long   341035
        .long   3792656324
        .long   3191220999
        .long   3355443200
        .long   348580
        .long   1982428721
        .long   1044573328
        .long   939524096
        .long   356167
        .long   1502688512
        .long   3191123330
        .long   3623878656
        .long   363794
        .long   383164906
        .long   3192603072
        .long   3758096384
        .long   371463
        .long   3040458367
        .long   3192241502
        .long   2281701376
        .long   379174
        .long   3087934862
        .long   1044564533
        .long   402653184
        .long   386927
        .long   3163234522
        .long   3192035061
        .long   3087007744
        .long   394721
        .long   2332520281
        .long   1043819968
        .long   2952790016
        .long   402558
        .long   1492679939
        .long   1041050306
        .long   939524096
        .long   410438
        .long   29656007
        .long   3192494567
        .long   2147483648
        .long   418360
        .long   612974287
        .long   1044556049
        .long   3623878656
        .long   426325
        .long   1740578119
        .long   3192756916
        .long   1744830464
        .long   434334
        .long   922176773
        .long   3191344195
        .long   2013265920
        .long   442386
        .long   143936179
        .long   3192365354
        .long   1073741824
        .long   450482
        .long   2288974058
        .long   3192706862
        .long   4160749568
        .long   458621
        .long   1022918171
        .long   1043667272
        .long   3892314112
        .long   466805
        .long   2074373662
        .long   1043172334
        .long   1207959552
        .long   475034
        .long   2007733066
        .long   1042591790
        .long   1476395008
        .long   483307
        .long   1946752598
        .long   3191593347
        .long   1342177280
        .long   491625
        .long   1328713708
        .long   3187724640
        .long   1879048192
        .long   499988
        .long   918464641
        .long   1045387276
        .long   0
        .long   508397
        .long   667194164
        .long   1043532819
        .long   939524096
        .long   516851
        .long   3740938196
        .long   3191016217
        .long   1476395008
        .long   525351
        .long   1917817036
        .long   3192786735
        .long   2550136832
        .long   533897
        .long   682424459
        .long   1043647713
        .long   1207959552
        .long   542490
        .long   857395348
        .long   3191718789
        .long   2550136832
        .long   551129
        .long   1678188781
        .long   1045046423
        .long   3623878656
        .long   559815
        .long   2523214013
        .long   1043900009
        .long   1073741824
        .long   568549
        .long   3671932459
        .long   1044468998
        .long   402653184
        .long   577330
        .long   1091392995
        .long   3191122871
        .long   2550136832
        .long   586158
        .long   1656324724
        .long   1043421043
        .long   134217728
        .long   595035
        .long   742731994
        .long   1045204990
        .long   2952790016
        .long   603959
        .long   2659845000
        .long   1042921660
        .long   3355443200
        .long   612932
        .long   2001576987
        .long   1045316240
        .long   2684354560
        .long   621954
        .long   976271096
        .long   3187726552
        .long   1879048192
        .long   631025
        .long   927342903
        .long   1042890999
        .long   2147483648
        .long   640145
        .long   2162418230
        .long   1044717444
        .long   402653184
        .long   649315
        .long   830622888
        .long   1044263474
        .long   2013265920
        .long   658534
        .long   630511316
        .long   1045098283
        .long   4026531840
        .long   667803
        .long   1698296944
        .long   3192762006
        .long   2952790016
        .long   677123
        .long   3831108133
        .long   1044508970
        .long   268435456
        .long   686494
        .long   3279515609
        .long   1045005722
        .long   1476395008
        .long   695915
        .long   98608862
        .long   3192139794
        .long   3221225472
        .long   705387
        .long   529675467
        .long   3188065859
        .long   2550136832
        .long   714911
        .long   3588780877
        .long   1043705146
        .long   671088640
        .long   724487
        .long   1493713581
        .long   1043913574
        .long   3087007744
        .long   734114
        .long   3182425146
        .long   1041483134
        .long   2415919104
        .long   743794
        .long   864959479
        .long   3191919926
        .long   4026531840
        .long   753526
        .long   928333188
        .long   1044896498
        .long   805306368
        .long   763312
        .long   813799033
        .long   1042555081
        .long   2415919104
        .long   773150
        .long   2300504125
        .long   1041428596
        .long   1476395008
        .long   783042
        .long   1142965944
        .long   1045346544
        .long   3758096384
        .long   792987
        .long   518977959
        .long   3192116587
        .long   1610612736
        .long   802987
        .long   1972387576
        .long   3179791049
        .long   805306368
        .long   813041
        .long   1264446592
        .long   3191505643
        .long   2550136832
        .long   823149
        .long   1467128350
        .long   3192899778
        .long   3758096384
        .long   833312
        .long   3075989921
        .long   3192423292
        .long   1476395008
        .long   843531
        .long   836600757
        .long   3192197600
        .long   1207959552
        .long   853805
        .long   3697834264
        .long   1044397131
        .long   134217728
        .long   864135
        .long   364651635
        .long   1038816227
        .long   3758096384
        .long   874520
        .long   3335598035
        .long   3192398555
        .long   402653184
        .long   884963
        .long   2219290723
        .long   3191039942
        .long   0
        .long   895462
        .long   730095629
        .long   1045354900
        .long   4026531840
        .long   906017
        .long   39537391
        .long   1044909475
        .long   805306368
        .long   916631
        .long   4123739734
        .long   1045159130
        .long   402653184
        .long   927302
        .long   3136734448
        .long   3192410870
        .long   3892314112
        .long   938030
        .long   1982905152
        .long   3189583874
        .long   4160749568
        .long   948817
        .long   442147929
        .long   1045314148
        .long   2684354560
        .long   959663
        .long   3425467293
        .long   1044718726
        .long   805306368
        .long   970568
        .long   2073198199
        .long   3192097984
        .long   4026531840
        .long   981531
        .long   2291008222
        .long   3191466589
        .long   939524096
        .long   992555
        .long   372190496
        .long   3189934253
        .long   1476395008
        .long   1003638
        .long   54164518
        .long   1045131818
        .long   2952790016
        .long   1014781
        .long   1672962650
        .long   3192068623
        .long   2147483648
        .long   1025985
        .long   2196310654
        .long   1043982605
        .long   671088640
        .long   1037250
        .long   2286661074
        .long   1045199759
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   1753710392
        .long   1065423121
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   3265904883
        .long   1067799893
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   1431655453
        .long   1069897045
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   4294966876
        .long   1071644671
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   1697350398
        .long   1080497479
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   4277665792
        .long   1064709698
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2882134964
        .long   1027723129
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2095104
        .long   1123549184
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   2032
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
        .long   4192256
        .long   0
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
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
        .long   0
        .long   3220176896
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
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   1287323203
        .long   1082531232
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   4277811695
        .long   1064709698
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1047552
        .long   1124597760
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   1016
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
        .long   2096128
        .long   0
_imldExpHATab:
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
        .long   4277811695
        .long   1082535490
        .long   3715808466
        .long   3230016299
        .long   3576508497
        .long   3230091536
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
_2il0floatpacket_33:
        .long   0x00000000, 0x43380000, 0x00000000, 0x43380000
_2il0floatpacket_92:
        .long   0x00000000, 0xbff00000
        .data
#endif
