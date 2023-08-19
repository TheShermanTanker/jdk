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
        .globl __jsvml_tanh4_ha_e9

__jsvml_tanh4_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [240+rsp], ymm15
        vmovups   YMMWORD PTR [208+rsp], ymm14
        vmovups   YMMWORD PTR [272+rsp], ymm13
        vmovups   YMMWORD PTR [304+rsp], ymm12
        vmovups   YMMWORD PTR [336+rsp], ymm11
        vmovups   YMMWORD PTR [368+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vpxor     xmm8, xmm8, xmm8
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovapd   ymm4, ymm0
        and       r13, -64
        vmovupd   YMMWORD PTR [32+r13], ymm4
        vmovups   xmm12, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10688]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10752]
        vandpd    ymm0, ymm4, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vandpd    ymm5, ymm4, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vmovupd   YMMWORD PTR [r13], ymm5
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm3, ymm4, 1
        vshufps   xmm2, xmm4, xmm3, 221
        vpand     xmm9, xmm2, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10496]
        vpsubd    xmm6, xmm9, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10624]
        vpcmpgtd  xmm14, xmm1, xmm9
        vpcmpgtd  xmm7, xmm6, xmm8
        vpcmpgtd  xmm4, xmm6, xmm12
        vpand     xmm5, xmm6, xmm7
        vblendvps xmm12, xmm5, xmm12, xmm4
        vpcmpgtd  xmm13, xmm9, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        vpsrld    xmm3, xmm12, 10
        vpor      xmm11, xmm13, xmm14
        vmovd     ecx, xmm3
        vmovmskps r8d, xmm11
        vpextrd   eax, xmm3, 1
        movsxd    rcx, ecx
        movsxd    rax, eax
        vpextrd   r9d, xmm3, 2
        vpextrd   r10d, xmm3, 3
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+rax]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+rax]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+rax]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+rcx]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+rcx]
        vinsertf128 ymm10, ymm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+r9], 1
        vinsertf128 ymm15, ymm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+r10], 1
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+rax]
        vunpcklpd ymm9, ymm10, ymm15
        vunpckhpd ymm12, ymm10, ymm15
        vinsertf128 ymm8, ymm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+r9], 1
        vinsertf128 ymm4, ymm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+r9], 1
        vinsertf128 ymm10, ymm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+r9], 1
        vinsertf128 ymm7, ymm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+r10], 1
        vinsertf128 ymm3, ymm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+r10], 1
        vinsertf128 ymm15, ymm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+r10], 1
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+rcx]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+rax]
        vunpcklpd ymm11, ymm8, ymm7
        vunpckhpd ymm8, ymm8, ymm7
        vunpcklpd ymm7, ymm4, ymm3
        vunpckhpd ymm6, ymm4, ymm3
        vunpcklpd ymm5, ymm10, ymm15
        vunpckhpd ymm4, ymm10, ymm15
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+rax]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+rcx]
        vinsertf128 ymm2, ymm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+r9], 1
        vinsertf128 ymm1, ymm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+r10], 1
        vunpcklpd ymm3, ymm2, ymm1
        vunpckhpd ymm2, ymm2, ymm1
        vinsertf128 ymm13, ymm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+r9], 1
        vinsertf128 ymm14, ymm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+r10], 1
        vunpcklpd ymm1, ymm13, ymm14
        vunpckhpd ymm10, ymm13, ymm14
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+rcx]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+rax]
        vinsertf128 ymm13, ymm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+r9], 1
        vinsertf128 ymm14, ymm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+r10], 1
        vunpcklpd ymm15, ymm13, ymm14
        vaddpd    ymm14, ymm0, ymm15
        vmulpd    ymm0, ymm14, ymm10
        vaddpd    ymm13, ymm0, ymm1
        vmulpd    ymm0, ymm14, ymm13
        vaddpd    ymm1, ymm0, ymm2
        vmulpd    ymm2, ymm14, ymm1
        vaddpd    ymm3, ymm2, ymm3
        vmulpd    ymm10, ymm14, ymm3
        vaddpd    ymm4, ymm10, ymm4
        vmulpd    ymm15, ymm14, ymm4
        vaddpd    ymm5, ymm15, ymm5
        vmulpd    ymm13, ymm14, ymm5
        vaddpd    ymm6, ymm13, ymm6
        vmulpd    ymm13, ymm14, ymm6
        vaddpd    ymm7, ymm13, ymm7
        vmulpd    ymm13, ymm14, ymm7
        vaddpd    ymm8, ymm13, ymm8
        vmulpd    ymm13, ymm14, ymm8
        vmulpd    ymm0, ymm14, ymm13
        vaddpd    ymm2, ymm0, ymm9
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10304]
        vandpd    ymm0, ymm11, ymm9
        vandpd    ymm9, ymm14, ymm9
        vmulpd    ymm13, ymm0, ymm9
        vsubpd    ymm1, ymm11, ymm0
        vsubpd    ymm14, ymm14, ymm9
        vaddpd    ymm7, ymm13, ymm12
        vmulpd    ymm11, ymm1, ymm14
        vmulpd    ymm0, ymm0, ymm14
        vmulpd    ymm14, ymm9, ymm1
        vsubpd    ymm4, ymm13, ymm7
        vaddpd    ymm11, ymm11, ymm0
        vaddpd    ymm5, ymm7, ymm4
        vaddpd    ymm3, ymm11, ymm14
        vaddpd    ymm12, ymm4, ymm12
        vsubpd    ymm4, ymm13, ymm5
        vaddpd    ymm6, ymm2, ymm3
        vaddpd    ymm5, ymm12, ymm4
        vaddpd    ymm0, ymm6, ymm5
        vaddpd    ymm1, ymm7, ymm0
        vorpd     ymm0, ymm1, YMMWORD PTR [r13]
        test      r8d, r8d
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm10, YMMWORD PTR [368+rsp]
        vmovups   ymm11, YMMWORD PTR [336+rsp]
        vmovups   ymm12, YMMWORD PTR [304+rsp]
        vmovups   ymm13, YMMWORD PTR [272+rsp]
        vmovups   ymm14, YMMWORD PTR [208+rsp]
        vmovups   ymm15, YMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B1_3:

        vmovupd   ymm1, YMMWORD PTR [32+r13]
        vmovupd   YMMWORD PTR [64+r13], ymm0
        vmovupd   YMMWORD PTR [r13], ymm1

.L_B1_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

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
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanh4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh4_ha_e9_B1_B3:
        .long   1603841
        .long   4379769
        .long   2058353
        .long   1931363
        .long   1804378
        .long   1677393
        .long   1550408
        .long   1423423
        .long   1296438
        .long   1169453
        .long   911396
        .long   1046555
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanh4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanh4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_tanh4_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh4_ha_l9

__jsvml_tanh4_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L32:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [208+rsp], ymm15
        vmovups   YMMWORD PTR [240+rsp], ymm14
        vmovups   YMMWORD PTR [272+rsp], ymm13
        vmovups   YMMWORD PTR [304+rsp], ymm12
        vpxor     xmm13, xmm13, xmm13
        vmovups   YMMWORD PTR [336+rsp], ymm11
        vmovups   YMMWORD PTR [368+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        and       r13, -64
        vmovupd   YMMWORD PTR [32+r13], ymm0
        vmovups   xmm10, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10688]
        vandpd    ymm15, ymm0, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vandpd    ymm5, ymm0, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vmovupd   YMMWORD PTR [r13], ymm5
        mov       QWORD PTR [536+rsp], r13
        vextracti128 xmm4, ymm0, 1
        vshufps   xmm3, xmm0, xmm4, 221
        vpand     xmm2, xmm3, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10496]
        vpsubd    xmm14, xmm2, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10624]
        vpcmpgtd  xmm12, xmm14, xmm13
        vpcmpgtd  xmm9, xmm14, xmm10
        vpand     xmm11, xmm14, xmm12
        vblendvps xmm8, xmm11, xmm10, xmm9
        vpcmpgtd  xmm1, xmm2, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        vpsrld    xmm7, xmm8, 10
        vmovd     ecx, xmm7
        vmovmskps r8d, xmm1
        vpextrd   eax, xmm7, 1
        test      r8d, r8d
        movsxd    rcx, ecx
        movsxd    rax, eax
        vpextrd   r9d, xmm7, 2
        vpextrd   r10d, xmm7, 3
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+rcx]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+rax]
        vmovupd   xmm9, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+rax]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+rcx]
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+rax]
        vinsertf128 ymm4, ymm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+r9], 1
        vinsertf128 ymm3, ymm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+rdx+r10], 1
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+rcx]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+rax]
        vunpcklpd ymm14, ymm4, ymm3
        vunpckhpd ymm13, ymm4, ymm3
        vinsertf128 ymm8, ymm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+r9], 1
        vinsertf128 ymm4, ymm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+r9], 1
        vinsertf128 ymm7, ymm9, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+rdx+r10], 1
        vinsertf128 ymm3, ymm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+rdx+r10], 1
        vunpcklpd ymm10, ymm8, ymm7
        vunpckhpd ymm9, ymm8, ymm7
        vunpcklpd ymm8, ymm4, ymm3
        vunpckhpd ymm7, ymm4, ymm3
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+rcx]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+rax]
        vinsertf128 ymm2, ymm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+r9], 1
        vinsertf128 ymm11, ymm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+rdx+r10], 1
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+rax]
        vunpcklpd ymm12, ymm2, ymm11
        vunpckhpd ymm11, ymm2, ymm11
        vinsertf128 ymm2, ymm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+r9], 1
        vinsertf128 ymm5, ymm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+rdx+r10], 1
        vunpcklpd ymm6, ymm2, ymm5
        vunpckhpd ymm5, ymm2, ymm5
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+rax]
        vinsertf128 ymm0, ymm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+r9], 1
        vinsertf128 ymm1, ymm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+rdx+r10], 1
        vunpcklpd ymm4, ymm0, ymm1
        vunpckhpd ymm3, ymm0, ymm1
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+rcx]
        vinsertf128 ymm1, ymm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+r9], 1
        vinsertf128 ymm2, ymm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+rdx+r10], 1
        vunpcklpd ymm0, ymm1, ymm2
        vaddpd    ymm15, ymm15, ymm0
        vfmadd213pd ymm3, ymm15, ymm4
        vfmadd213pd ymm3, ymm15, ymm5
        vfmadd213pd ymm3, ymm15, ymm6
        vfmadd213pd ymm3, ymm15, ymm7
        vfmadd213pd ymm3, ymm15, ymm8
        vfmadd213pd ymm3, ymm15, ymm9
        vfmadd213pd ymm3, ymm15, ymm10
        vfmadd213pd ymm3, ymm15, ymm11
        vmulpd    ymm0, ymm15, ymm3
        vmulpd    ymm1, ymm15, ymm12
        vfmadd213pd ymm0, ymm15, ymm14
        vfmsub213pd ymm12, ymm15, ymm1
        vaddpd    ymm6, ymm1, ymm13
        vaddpd    ymm4, ymm0, ymm12
        vsubpd    ymm12, ymm1, ymm6
        vaddpd    ymm2, ymm6, ymm12
        vaddpd    ymm13, ymm12, ymm13
        vsubpd    ymm3, ymm1, ymm2
        vaddpd    ymm5, ymm13, ymm3
        vaddpd    ymm7, ymm4, ymm5
        vaddpd    ymm8, ymm6, ymm7
        vorpd     ymm0, ymm8, YMMWORD PTR [r13]
        jne       .L_B2_3

.L_B2_2:

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

.L_B2_3:

        vmovupd   ymm1, YMMWORD PTR [32+r13]
        vmovupd   YMMWORD PTR [64+r13], ymm0
        vmovupd   YMMWORD PTR [r13], ymm1

.L_B2_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

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
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanh4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh4_ha_l9_B1_B3:
        .long   1603841
        .long   4379769
        .long   2058353
        .long   1931368
        .long   1804383
        .long   1677398
        .long   1550413
        .long   1423428
        .long   1296438
        .long   1169453
        .long   1042468
        .long   915483
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_tanh4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_tanh4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_tanh4_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh1_ha_ex

__jsvml_tanh1_ha_ex:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L63:

        sub       rsp, 360
        mov       eax, 2147352576
        mov       ecx, 535822336
        mov       r8d, 1069416448
        mov       r9d, 7733248
        lea       r11, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [176+rsp], xmm15
        mov       edx, 2145386496
        movups    XMMWORD PTR [192+rsp], xmm14
        movd      xmm5, eax
        movups    XMMWORD PTR [208+rsp], xmm13
        movd      xmm2, ecx
        movups    XMMWORD PTR [224+rsp], xmm12
        movups    XMMWORD PTR [240+rsp], xmm11
        movd      xmm1, edx
        movups    XMMWORD PTR [256+rsp], xmm10
        movups    XMMWORD PTR [272+rsp], xmm9
        movups    XMMWORD PTR [288+rsp], xmm8
        movups    XMMWORD PTR [304+rsp], xmm7
        movups    XMMWORD PTR [320+rsp], xmm6
        movd      xmm6, r9d
        mov       QWORD PTR [168+rsp], r13
        pxor      xmm7, xmm7
        pshufd    xmm9, xmm0, 85
        lea       r13, QWORD PTR [95+rsp]
        movsd     xmm4, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        pand      xmm9, xmm5
        movsd     xmm3, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        movd      xmm5, r8d
        movups    XMMWORD PTR [241+r13], xmm0
        andps     xmm3, xmm0
        andps     xmm4, xmm0
        movdqa    xmm0, xmm9
        pcmpgtd   xmm2, xmm9
        psubd     xmm9, xmm5
        movdqa    xmm10, xmm9
        movdqa    xmm8, xmm9
        pcmpgtd   xmm10, xmm6
        pcmpgtd   xmm8, xmm7
        movups    xmm11, XMMWORD PTR [rip+_2il0floatpacket_17]
        pand      xmm9, xmm8
        movdqa    xmm12, xmm10
        andps     xmm11, xmm10
        andnps    xmm12, xmm9
        pcmpgtd   xmm0, xmm1
        orps      xmm12, xmm11
        por       xmm0, xmm2
        psrld     xmm12, 10
        and       r13, -64
        movd      r10d, xmm12
        movmskps  eax, xmm0
        movsxd    r10, r10d
        and       eax, 1
        mov       QWORD PTR [352+rsp], r13
        movups    xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r11+r10]
        movsd     xmm0, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2712+r11+r10]
        addsd     xmm3, xmm14
        unpcklpd  xmm0, xmm0
        mulsd     xmm0, xmm3
        movups    xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r11+r10]
        movsd     xmm5, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2696+r11+r10]
        addsd     xmm0, xmm15
        mulsd     xmm0, xmm3
        unpcklpd  xmm5, xmm5
        movups    xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r11+r10]
        addsd     xmm0, xmm5
        mulsd     xmm0, xmm3
        movsd     xmm7, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2680+r11+r10]
        addsd     xmm0, xmm6
        mulsd     xmm0, xmm3
        unpcklpd  xmm7, xmm7
        movups    xmm8, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r11+r10]
        addsd     xmm0, xmm7
        mulsd     xmm0, xmm3
        movsd     xmm9, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2664+r11+r10]
        addsd     xmm0, xmm8
        mulsd     xmm0, xmm3
        unpcklpd  xmm9, xmm9
        movups    xmm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r11+r10]
        addsd     xmm0, xmm9
        mulsd     xmm0, xmm3
        movsd     xmm11, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2648+r11+r10]
        addsd     xmm0, xmm10
        mulsd     xmm0, xmm3
        unpcklpd  xmm11, xmm11
        movups    xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r11+r10]
        addsd     xmm0, xmm11
        mulsd     xmm0, xmm3
        movaps    xmm5, xmm1
        movsd     xmm14, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10304]
        andps     xmm5, xmm14
        andps     xmm14, xmm3
        subsd     xmm1, xmm5
        mulsd     xmm0, xmm3
        subsd     xmm3, xmm14
        movaps    xmm13, xmm1
        movaps    xmm6, xmm5
        mulsd     xmm13, xmm3
        mulsd     xmm5, xmm3
        mulsd     xmm1, xmm14
        mulsd     xmm6, xmm14
        addsd     xmm5, xmm13
        movups    xmm12, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r11+r10]
        movaps    xmm3, xmm6
        movsd     xmm2, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2632+r11+r10]
        addsd     xmm0, xmm12
        addsd     xmm1, xmm5
        unpcklpd  xmm2, xmm2
        addsd     xmm1, xmm0
        movaps    xmm0, xmm6
        addsd     xmm0, xmm2
        movaps    xmm5, xmm0
        subsd     xmm3, xmm0
        addsd     xmm5, xmm3
        addsd     xmm2, xmm3
        subsd     xmm6, xmm5
        addsd     xmm2, xmm6
        addsd     xmm1, xmm2
        addsd     xmm0, xmm1
        orps      xmm0, xmm4
        jne       .L_B3_3

.L_B3_2:

        movups    xmm6, XMMWORD PTR [320+rsp]
        movups    xmm7, XMMWORD PTR [304+rsp]
        movups    xmm8, XMMWORD PTR [288+rsp]
        movups    xmm9, XMMWORD PTR [272+rsp]
        movups    xmm10, XMMWORD PTR [256+rsp]
        movups    xmm11, XMMWORD PTR [240+rsp]
        movups    xmm12, XMMWORD PTR [224+rsp]
        movups    xmm13, XMMWORD PTR [208+rsp]
        movups    xmm14, XMMWORD PTR [192+rsp]
        movups    xmm15, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 360
        ret

.L_B3_3:

        movups    xmm1, XMMWORD PTR [336+rsp]
        movsd     QWORD PTR [r13], xmm1
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B3_6

.L_B3_4:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B3_2

.L_B3_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B3_4
        .align    16, 0x90

.L_B3_7:

        .section .drectve
        .ascii " -export \"__jsvml_tanh1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh1_ha_ex_B1_B6:
        .long   1613313
        .long   1430686
        .long   1337489
        .long   1276041
        .long   1214593
        .long   1153144
        .long   1091695
        .long   1030242
        .long   968793
        .long   907340
        .long   845887
        .long   784433
        .long   2949387

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_tanh1_ha_ex_B1_B6

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh2_ha_l9

__jsvml_tanh2_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L88:

        sub       rsp, 392
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [336+rsp], xmm15
        vmovups   XMMWORD PTR [192+rsp], xmm14
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovups   XMMWORD PTR [224+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [256+rsp], xmm10
        vpxor     xmm11, xmm11, xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm9
        vmovups   XMMWORD PTR [288+rsp], xmm8
        vmovups   XMMWORD PTR [304+rsp], xmm7
        vmovups   XMMWORD PTR [320+rsp], xmm6
        mov       QWORD PTR [368+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10496]
        and       r13, -64
        vpshufd   xmm5, xmm0, 221
        vmovq     xmm15, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10624]
        vpand     xmm14, xmm5, xmm2
        vpsubd    xmm12, xmm14, xmm15
        vmovq     xmm9, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10688]
        vpcmpgtd  xmm10, xmm12, xmm11
        vpand     xmm8, xmm12, xmm10
        vpcmpgtd  xmm6, xmm12, xmm9
        vblendvps xmm7, xmm8, xmm9, xmm6
        vandpd    xmm4, xmm0, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vmovupd   XMMWORD PTR [352+rsp], xmm4
        vpsrld    xmm4, xmm7, 10
        vmovd     eax, xmm4
        vmovq     xmm3, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        vpcmpgtd  xmm1, xmm14, xmm3
        vpextrd   ecx, xmm4, 1
        movsxd    rax, eax
        movsxd    rcx, ecx
        vmovupd   XMMWORD PTR [32+rsp], xmm0
        vandpd    xmm13, xmm0, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vmovmskps edx, xmm1
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rax]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rax]
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rax]
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rax]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rcx]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rcx]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rcx]
        vunpcklpd xmm12, xmm5, xmm2
        vunpckhpd xmm11, xmm5, xmm2
        vunpcklpd xmm10, xmm3, xmm1
        vunpckhpd xmm9, xmm3, xmm1
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rcx]
        vunpcklpd xmm8, xmm0, xmm14
        vunpckhpd xmm7, xmm0, xmm14
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rcx]
        vunpcklpd xmm6, xmm15, xmm4
        vunpckhpd xmm5, xmm15, xmm4
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rcx]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rax]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rax]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rax]
        vunpcklpd xmm4, xmm2, xmm3
        vunpckhpd xmm3, xmm2, xmm3
        vunpcklpd xmm2, xmm1, xmm0
        vunpckhpd xmm1, xmm1, xmm0
        vunpcklpd xmm0, xmm14, xmm15
        vaddpd    xmm13, xmm13, xmm0
        vfmadd213pd xmm1, xmm13, xmm2
        vfmadd213pd xmm1, xmm13, xmm3
        vfmadd213pd xmm1, xmm13, xmm4
        vfmadd213pd xmm1, xmm13, xmm5
        vfmadd213pd xmm1, xmm13, xmm6
        vfmadd213pd xmm1, xmm13, xmm7
        vfmadd213pd xmm1, xmm13, xmm8
        vfmadd213pd xmm1, xmm13, xmm9
        vmulpd    xmm0, xmm13, xmm1
        vmulpd    xmm1, xmm13, xmm10
        vfmadd213pd xmm0, xmm13, xmm12
        vfmsub213pd xmm10, xmm13, xmm1
        vaddpd    xmm6, xmm1, xmm11
        vaddpd    xmm4, xmm0, xmm10
        vsubpd    xmm10, xmm1, xmm6
        vaddpd    xmm2, xmm6, xmm10
        vaddpd    xmm11, xmm10, xmm11
        vsubpd    xmm3, xmm1, xmm2
        vaddpd    xmm5, xmm11, xmm3
        vaddpd    xmm7, xmm4, xmm5
        vaddpd    xmm8, xmm6, xmm7
        mov       QWORD PTR [376+rsp], r13
        vorpd     xmm0, xmm8, XMMWORD PTR [352+rsp]
        and       edx, 3
        jne       .L_B4_3

.L_B4_2:

        vmovups   xmm6, XMMWORD PTR [320+rsp]
        vmovups   xmm7, XMMWORD PTR [304+rsp]
        vmovups   xmm8, XMMWORD PTR [288+rsp]
        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovups   xmm10, XMMWORD PTR [256+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        vmovups   xmm15, XMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [368+rsp]
        add       rsp, 392
        ret

.L_B4_3:

        vmovupd   xmm1, XMMWORD PTR [32+rsp]
        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B4_2

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
        cmp       ebx, 2
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanh2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_l9_B1_B3:
        .long   1603841
        .long   3069049
        .long   1337457
        .long   1276008
        .long   1214559
        .long   1153110
        .long   1091656
        .long   1030207
        .long   968758
        .long   907309
        .long   845860
        .long   1439771
        .long   3211531

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_tanh2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_tanh2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_tanh2_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh1_ha_l9

__jsvml_tanh1_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L119:

        sub       rsp, 360
        mov       eax, 2147352576
        mov       ecx, 1069416448
        mov       r8d, 7733248
        vmovups   XMMWORD PTR [304+rsp], xmm15
        mov       edx, 2145386496
        vmovups   XMMWORD PTR [320+rsp], xmm14
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [176+rsp], xmm13
        vmovd     xmm4, eax
        vmovups   XMMWORD PTR [192+rsp], xmm12
        vmovups   XMMWORD PTR [208+rsp], xmm11
        vmovd     xmm5, edx
        vmovups   XMMWORD PTR [224+rsp], xmm10
        vmovd     xmm10, ecx
        vmovups   XMMWORD PTR [240+rsp], xmm9
        vmovups   XMMWORD PTR [256+rsp], xmm8
        vpxor     xmm9, xmm9, xmm9
        vmovups   XMMWORD PTR [272+rsp], xmm7
        vmovups   XMMWORD PTR [288+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vpshufd   xmm3, xmm0, 85
        and       r13, -64
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vpand     xmm15, xmm3, xmm4
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vandpd    xmm12, xmm0, xmm2
        vmovupd   XMMWORD PTR [336+rsp], xmm0
        vandpd    xmm13, xmm0, xmm1
        vpsubd    xmm0, xmm15, xmm10
        vmovd     xmm1, r8d
        vpcmpgtd  xmm8, xmm0, xmm9
        vpcmpgtd  xmm3, xmm0, xmm1
        vpand     xmm2, xmm0, xmm8
        vpcmpgtd  xmm14, xmm15, xmm5
        vblendvps xmm4, xmm2, XMMWORD PTR [rip+_2il0floatpacket_17], xmm3
        vmovmskps eax, xmm14
        vpsrld    xmm5, xmm4, 10
        vmovd     r9d, xmm5
        movsxd    r9, r9d
        mov       QWORD PTR [352+rsp], r13
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r10+r9]
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r10+r9]
        vaddsd    xmm13, xmm13, xmm15
        vmovddup  xmm11, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2712+r10+r9]
        vfmadd213sd xmm11, xmm13, xmm0
        vmovddup  xmm1, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2696+r10+r9]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r10+r9]
        vmovddup  xmm3, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2680+r10+r9]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r10+r9]
        vfmadd213sd xmm11, xmm13, xmm1
        vmovddup  xmm5, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2664+r10+r9]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r10+r9]
        vmovddup  xmm7, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2648+r10+r9]
        vmovupd   xmm9, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r10+r9]
        vfmadd213sd xmm11, xmm13, xmm2
        vmovddup  xmm10, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2632+r10+r9]
        vfmadd213sd xmm11, xmm13, xmm3
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r10+r9]
        vfmadd213sd xmm11, xmm13, xmm4
        vfmadd213sd xmm11, xmm13, xmm5
        vfmadd213sd xmm11, xmm13, xmm6
        vfmadd213sd xmm11, xmm13, xmm7
        vmulsd    xmm6, xmm11, xmm13
        vmulsd    xmm11, xmm9, xmm13
        vfmadd213sd xmm6, xmm13, xmm8
        vfmsub213sd xmm9, xmm13, xmm11
        vaddsd    xmm2, xmm11, xmm10
        vsubsd    xmm7, xmm11, xmm2
        vaddsd    xmm1, xmm9, xmm6
        vaddsd    xmm0, xmm2, xmm7
        vaddsd    xmm7, xmm10, xmm7
        vsubsd    xmm10, xmm11, xmm0
        vaddsd    xmm11, xmm7, xmm10
        vaddsd    xmm3, xmm1, xmm11
        vaddsd    xmm4, xmm2, xmm3
        vorpd     xmm0, xmm4, xmm12
        and       eax, 1
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm6, XMMWORD PTR [288+rsp]
        vmovups   xmm7, XMMWORD PTR [272+rsp]
        vmovups   xmm8, XMMWORD PTR [256+rsp]
        vmovups   xmm9, XMMWORD PTR [240+rsp]
        vmovups   xmm10, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [208+rsp]
        vmovups   xmm12, XMMWORD PTR [192+rsp]
        vmovups   xmm13, XMMWORD PTR [176+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 360
        ret

.L_B5_3:

        vmovupd   xmm1, XMMWORD PTR [336+rsp]
        vmovsd    QWORD PTR [r13], xmm1
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B5_6

.L_B5_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B5_4
        .align    16, 0x90

.L_B5_7:

        .section .drectve
        .ascii " -export \"__jsvml_tanh1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh1_ha_l9_B1_B6:
        .long   1612289
        .long   1430682
        .long   1206418
        .long   1144969
        .long   1083515
        .long   1022066
        .long   960613
        .long   899160
        .long   837711
        .long   776258
        .long   1370162
        .long   1308708
        .long   2949387

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_tanh1_ha_l9_B1_B6

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh2_ha_ex

__jsvml_tanh2_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L144:

        sub       rsp, 392
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [272+rsp], xmm15
        movups    XMMWORD PTR [288+rsp], xmm14
        movups    XMMWORD PTR [320+rsp], xmm13
        pxor      xmm14, xmm14
        movups    XMMWORD PTR [336+rsp], xmm12
        movups    XMMWORD PTR [192+rsp], xmm11
        movups    XMMWORD PTR [208+rsp], xmm10
        movups    XMMWORD PTR [304+rsp], xmm9
        movups    XMMWORD PTR [224+rsp], xmm8
        movups    XMMWORD PTR [240+rsp], xmm7
        movups    XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [368+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movq      xmm4, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10496]
        and       r13, -64
        pshufd    xmm11, xmm0, 221
        movq      xmm13, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10624]
        pand      xmm11, xmm4
        movq      xmm2, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10752]
        movdqa    xmm3, xmm11
        movups    xmm1, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        pcmpgtd   xmm2, xmm11
        psubd     xmm11, xmm13
        andps     xmm1, xmm0
        movq      xmm9, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10688]
        movdqa    xmm15, xmm11
        movups    XMMWORD PTR [352+rsp], xmm1
        movdqa    xmm1, xmm11
        pcmpgtd   xmm1, xmm9
        pcmpgtd   xmm15, xmm14
        pand      xmm11, xmm15
        movdqa    xmm10, xmm1
        andnps    xmm10, xmm11
        andps     xmm9, xmm1
        orps      xmm10, xmm9
        psrld     xmm10, 10
        movd      edx, xmm10
        pshufd    xmm8, xmm10, 1
        movq      xmm5, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        movd      ecx, xmm8
        pcmpgtd   xmm3, xmm5
        por       xmm3, xmm2
        movups    xmm12, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        movsxd    rdx, edx
        andps     xmm12, xmm0
        movsxd    rcx, ecx
        movups    XMMWORD PTR [32+rsp], xmm0
        movmskps  eax, xmm3
        movups    xmm11, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rdx]
        movups    xmm8, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rdx]
        movaps    xmm10, xmm11
        movups    xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rcx]
        movaps    xmm9, xmm8
        movups    xmm7, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rcx]
        and       eax, 3
        unpcklpd  xmm10, xmm6
        unpckhpd  xmm11, xmm6
        movups    xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rdx]
        unpcklpd  xmm9, xmm7
        unpckhpd  xmm8, xmm7
        movaps    xmm7, xmm6
        movups    xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rcx]
        unpcklpd  xmm7, xmm4
        unpckhpd  xmm6, xmm4
        movups    xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rdx]
        movups    xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rcx]
        movaps    xmm5, xmm4
        unpcklpd  xmm5, xmm2
        unpckhpd  xmm4, xmm2
        movups    xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rdx]
        movups    xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rdx]
        movaps    xmm3, xmm2
        movups    xmm0, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rcx]
        movups    xmm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rcx]
        unpcklpd  xmm3, xmm0
        unpckhpd  xmm2, xmm0
        movaps    xmm0, xmm1
        unpcklpd  xmm0, xmm13
        unpckhpd  xmm1, xmm13
        movups    xmm13, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rdx]
        movups    xmm14, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rcx]
        movaps    xmm15, xmm13
        unpcklpd  xmm15, xmm14
        addpd     xmm12, xmm15
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm0
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm2
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm3
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm4
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm5
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm6
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm7
        mulpd     xmm1, xmm12
        addpd     xmm1, xmm8
        mulpd     xmm1, xmm12
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10304]
        movaps    xmm3, xmm5
        andps     xmm3, xmm9
        andps     xmm5, xmm12
        subpd     xmm9, xmm3
        mulpd     xmm1, xmm12
        subpd     xmm12, xmm5
        addpd     xmm1, xmm10
        movaps    xmm0, xmm9
        movaps    xmm2, xmm3
        mulpd     xmm0, xmm12
        mulpd     xmm3, xmm12
        mulpd     xmm2, xmm5
        mulpd     xmm5, xmm9
        addpd     xmm0, xmm3
        addpd     xmm0, xmm5
        addpd     xmm1, xmm0
        movaps    xmm0, xmm11
        movaps    xmm3, xmm2
        addpd     xmm0, xmm2
        subpd     xmm3, xmm0
        movaps    xmm12, xmm0
        addpd     xmm12, xmm3
        addpd     xmm3, xmm11
        subpd     xmm2, xmm12
        addpd     xmm3, xmm2
        addpd     xmm1, xmm3
        addpd     xmm0, xmm1
        mov       QWORD PTR [376+rsp], r13
        orps      xmm0, XMMWORD PTR [352+rsp]
        jne       .L_B6_3

.L_B6_2:

        movups    xmm6, XMMWORD PTR [256+rsp]
        movups    xmm7, XMMWORD PTR [240+rsp]
        movups    xmm8, XMMWORD PTR [224+rsp]
        movups    xmm9, XMMWORD PTR [304+rsp]
        movups    xmm10, XMMWORD PTR [208+rsp]
        movups    xmm11, XMMWORD PTR [192+rsp]
        movups    xmm12, XMMWORD PTR [336+rsp]
        movups    xmm13, XMMWORD PTR [320+rsp]
        movups    xmm14, XMMWORD PTR [288+rsp]
        movups    xmm15, XMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [368+rsp]
        add       rsp, 392
        ret

.L_B6_3:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B6_2

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
        cmp       ebx, 2
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanh2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_ex_B1_B3:
        .long   1603329
        .long   3069047
        .long   1075311
        .long   1013863
        .long   952415
        .long   1284182
        .long   895053
        .long   833604
        .long   1427515
        .long   1366061
        .long   1239076
        .long   1177627
        .long   3211531

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanh2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanh2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_tanh2_ha_ex_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh2_ha_e9

__jsvml_tanh2_ha_e9:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L175:

        sub       rsp, 392
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [336+rsp], xmm15
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm14
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovups   XMMWORD PTR [224+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [256+rsp], xmm10
        vmovups   XMMWORD PTR [272+rsp], xmm9
        vmovups   XMMWORD PTR [288+rsp], xmm8
        vmovups   XMMWORD PTR [304+rsp], xmm7
        vpxor     xmm8, xmm8, xmm8
        vmovups   XMMWORD PTR [320+rsp], xmm6
        mov       QWORD PTR [368+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10496]
        and       r13, -64
        vpshufd   xmm5, xmm4, 221
        vmovq     xmm11, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10624]
        vpand     xmm10, xmm5, xmm2
        vpsubd    xmm6, xmm10, xmm11
        vmovq     xmm15, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10688]
        vpcmpgtd  xmm9, xmm6, xmm8
        vmovupd   XMMWORD PTR [32+rsp], xmm4
        vpand     xmm7, xmm6, xmm9
        vandpd    xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vandpd    xmm1, xmm4, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vpcmpgtd  xmm4, xmm6, xmm15
        vblendvps xmm5, xmm7, xmm15, xmm4
        vmovq     xmm3, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        vpsrld    xmm2, xmm5, 10
        vmovd     eax, xmm2
        vmovq     xmm13, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10752]
        vmovupd   XMMWORD PTR [352+rsp], xmm1
        vpcmpgtd  xmm1, xmm10, xmm3
        vpextrd   ecx, xmm2, 1
        vpcmpgtd  xmm12, xmm13, xmm10
        movsxd    rax, eax
        vpor      xmm14, xmm1, xmm12
        movsxd    rcx, ecx
        vmovmskps edx, xmm14
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rax]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rax]
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r8+rcx]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r8+rcx]
        vmovupd   xmm9, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rcx]
        vmovupd   xmm7, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rcx]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rcx]
        vunpcklpd xmm14, xmm3, xmm15
        vunpckhpd xmm13, xmm3, xmm15
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rcx]
        vunpcklpd xmm12, xmm1, xmm10
        vunpckhpd xmm10, xmm1, xmm10
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rcx]
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r8+rax]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r8+rax]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r8+rax]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r8+rax]
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r8+rax]
        vunpcklpd xmm11, xmm8, xmm9
        vunpckhpd xmm8, xmm8, xmm9
        vunpcklpd xmm9, xmm6, xmm7
        vunpckhpd xmm6, xmm6, xmm7
        vunpcklpd xmm7, xmm4, xmm5
        vunpckhpd xmm4, xmm4, xmm5
        vunpcklpd xmm5, xmm2, xmm3
        vunpckhpd xmm3, xmm2, xmm3
        vunpcklpd xmm2, xmm15, xmm1
        vaddpd    xmm1, xmm0, xmm2
        vmulpd    xmm0, xmm1, xmm3
        vaddpd    xmm0, xmm0, xmm5
        vmulpd    xmm2, xmm1, xmm0
        vaddpd    xmm3, xmm2, xmm4
        vmulpd    xmm4, xmm1, xmm3
        vaddpd    xmm5, xmm4, xmm7
        vmulpd    xmm7, xmm1, xmm5
        vaddpd    xmm6, xmm7, xmm6
        vmulpd    xmm15, xmm1, xmm6
        vaddpd    xmm9, xmm15, xmm9
        vmulpd    xmm0, xmm1, xmm9
        vaddpd    xmm8, xmm0, xmm8
        vmulpd    xmm0, xmm1, xmm8
        vaddpd    xmm11, xmm0, xmm11
        vmulpd    xmm0, xmm1, xmm11
        vaddpd    xmm10, xmm0, xmm10
        vmulpd    xmm0, xmm1, xmm10
        vmulpd    xmm2, xmm1, xmm0
        vaddpd    xmm5, xmm2, xmm14
        vmovupd   xmm14, XMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10304]
        vandpd    xmm2, xmm12, xmm14
        vandpd    xmm14, xmm1, xmm14
        vmulpd    xmm0, xmm2, xmm14
        vsubpd    xmm3, xmm12, xmm2
        vaddpd    xmm10, xmm0, xmm13
        vmulpd    xmm4, xmm14, xmm3
        vsubpd    xmm7, xmm0, xmm10
        vsubpd    xmm12, xmm1, xmm14
        vaddpd    xmm8, xmm10, xmm7
        vmulpd    xmm1, xmm3, xmm12
        vmulpd    xmm2, xmm2, xmm12
        vsubpd    xmm0, xmm0, xmm8
        vaddpd    xmm12, xmm1, xmm2
        vaddpd    xmm6, xmm12, xmm4
        vaddpd    xmm13, xmm7, xmm13
        vaddpd    xmm9, xmm5, xmm6
        vaddpd    xmm7, xmm13, xmm0
        vaddpd    xmm1, xmm9, xmm7
        vaddpd    xmm2, xmm10, xmm1
        mov       QWORD PTR [376+rsp], r13
        vorpd     xmm0, xmm2, XMMWORD PTR [352+rsp]
        and       edx, 3
        jne       .L_B7_3

.L_B7_2:

        vmovups   xmm6, XMMWORD PTR [320+rsp]
        vmovups   xmm7, XMMWORD PTR [304+rsp]
        vmovups   xmm8, XMMWORD PTR [288+rsp]
        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovups   xmm10, XMMWORD PTR [256+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        vmovups   xmm15, XMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [368+rsp]
        add       rsp, 392
        ret

.L_B7_3:

        vmovupd   xmm1, XMMWORD PTR [32+rsp]
        vmovupd   XMMWORD PTR [r13], xmm1
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B7_2

.L_B7_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B7_7:

        bt        esi, ebx
        jc        .L_B7_10

.L_B7_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B7_7

.L_B7_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B7_2

.L_B7_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B7_8
        .align    16, 0x90

.L_B7_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanh2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_e9_B1_B3:
        .long   1604865
        .long   3069053
        .long   1337461
        .long   1276007
        .long   1214558
        .long   1153109
        .long   1091660
        .long   1030211
        .long   968762
        .long   907313
        .long   845864
        .long   1439768
        .long   3211531

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_tanh2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_tanh2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_6
        .rva    .L_B7_11
        .rva    _unwind___jsvml_tanh2_ha_e9_B6_B10

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh1_ha_e9

__jsvml_tanh1_ha_e9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L206:

        sub       rsp, 360
        mov       eax, 2147352576
        mov       r8d, 1069416448
        mov       r9d, 7733248
        vpshufd   xmm4, xmm0, 85
        mov       edx, 2145386496
        vmovups   XMMWORD PTR [304+rsp], xmm15
        mov       ecx, 535822336
        vmovd     xmm3, eax
        lea       r11, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [288+rsp], xmm13
        vmovd     xmm2, edx
        vmovups   XMMWORD PTR [176+rsp], xmm12
        vmovups   XMMWORD PTR [192+rsp], xmm11
        vmovups   XMMWORD PTR [208+rsp], xmm10
        vpand     xmm10, xmm4, xmm3
        vmovups   XMMWORD PTR [224+rsp], xmm9
        vmovd     xmm9, r8d
        vmovups   XMMWORD PTR [240+rsp], xmm8
        vpcmpgtd  xmm13, xmm10, xmm2
        vmovups   XMMWORD PTR [256+rsp], xmm7
        vpxor     xmm8, xmm8, xmm8
        vmovups   XMMWORD PTR [272+rsp], xmm6
        vpsubd    xmm6, xmm10, xmm9
        mov       QWORD PTR [168+rsp], r13
        vpcmpgtd  xmm7, xmm6, xmm8
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368]
        vpand     xmm4, xmm6, xmm7
        vandpd    xmm15, xmm0, xmm5
        vmovd     xmm5, r9d
        vpcmpgtd  xmm3, xmm6, xmm5
        lea       r13, QWORD PTR [95+rsp]
        vblendvps xmm2, xmm4, XMMWORD PTR [rip+_2il0floatpacket_17], xmm3
        and       r13, -64
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vpsrld    xmm11, xmm2, 10
        vandpd    xmm14, xmm0, xmm1
        vmovd     r10d, xmm11
        vmovupd   XMMWORD PTR [336+rsp], xmm0
        vmovd     xmm0, ecx
        vpcmpgtd  xmm1, xmm0, xmm10
        movsxd    r10, r10d
        vpor      xmm12, xmm13, xmm1
        vmovmskps eax, xmm12
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2720+r11+r10]
        vaddsd    xmm1, xmm14, xmm1
        vmovddup  xmm11, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2712+r11+r10]
        vmulsd    xmm14, xmm11, xmm1
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2704+r11+r10]
        vaddsd    xmm0, xmm14, xmm2
        vmulsd    xmm2, xmm0, xmm1
        vmovddup  xmm3, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2696+r11+r10]
        vaddsd    xmm3, xmm2, xmm3
        vmulsd    xmm11, xmm3, xmm1
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2688+r11+r10]
        vaddsd    xmm4, xmm11, xmm4
        vmulsd    xmm14, xmm4, xmm1
        vmovddup  xmm5, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2680+r11+r10]
        vaddsd    xmm5, xmm14, xmm5
        vmulsd    xmm0, xmm5, xmm1
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2672+r11+r10]
        vaddsd    xmm6, xmm0, xmm6
        vmulsd    xmm0, xmm6, xmm1
        vmovddup  xmm7, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2664+r11+r10]
        vaddsd    xmm7, xmm0, xmm7
        vmulsd    xmm0, xmm7, xmm1
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2656+r11+r10]
        vaddsd    xmm8, xmm0, xmm8
        vmulsd    xmm0, xmm8, xmm1
        vmovddup  xmm9, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2648+r11+r10]
        vaddsd    xmm9, xmm0, xmm9
        vmulsd    xmm0, xmm9, xmm1
        vmulsd    xmm2, xmm0, xmm1
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2624+r11+r10]
        vaddsd    xmm5, xmm2, xmm10
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2640+r11+r10]
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10304]
        vandpd    xmm2, xmm12, xmm10
        vandpd    xmm4, xmm1, xmm10
        vmulsd    xmm0, xmm2, xmm4
        vsubsd    xmm3, xmm12, xmm2
        vsubsd    xmm1, xmm1, xmm4
        vmovddup  xmm13, QWORD PTR ["__jsvml_dtanh_ha_data_internal"@imgrel+2632+r11+r10]
        vaddsd    xmm9, xmm0, xmm13
        vmulsd    xmm10, xmm3, xmm1
        vmulsd    xmm12, xmm2, xmm1
        vmulsd    xmm1, xmm3, xmm4
        vsubsd    xmm6, xmm0, xmm9
        vaddsd    xmm2, xmm12, xmm10
        vaddsd    xmm7, xmm9, xmm6
        vaddsd    xmm12, xmm1, xmm2
        vsubsd    xmm0, xmm0, xmm7
        vaddsd    xmm8, xmm12, xmm5
        vaddsd    xmm13, xmm13, xmm6
        mov       QWORD PTR [352+rsp], r13
        vaddsd    xmm6, xmm13, xmm0
        vaddsd    xmm1, xmm8, xmm6
        vaddsd    xmm2, xmm9, xmm1
        vorpd     xmm0, xmm2, xmm15
        and       eax, 1
        jne       .L_B8_3

.L_B8_2:

        vmovups   xmm6, XMMWORD PTR [272+rsp]
        vmovups   xmm7, XMMWORD PTR [256+rsp]
        vmovups   xmm8, XMMWORD PTR [240+rsp]
        vmovups   xmm9, XMMWORD PTR [224+rsp]
        vmovups   xmm10, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [192+rsp]
        vmovups   xmm12, XMMWORD PTR [176+rsp]
        vmovups   xmm13, XMMWORD PTR [288+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 360
        ret

.L_B8_3:

        vmovupd   xmm1, XMMWORD PTR [336+rsp]
        vmovsd    QWORD PTR [r13], xmm1
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B8_6

.L_B8_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B8_2

.L_B8_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B8_4
        .align    16, 0x90

.L_B8_7:

        .section .drectve
        .ascii " -export \"__jsvml_tanh1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh1_ha_e9_B1_B6:
        .long   1618689
        .long   1430707
        .long   1140902
        .long   1079448
        .long   1017995
        .long   956541
        .long   895088
        .long   833639
        .long   772190
        .long   1235025
        .long   1370184
        .long   1308719
        .long   2949387

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_tanh1_ha_e9_B1_B6

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_tanh8_ha_z0

__jsvml_tanh8_ha_z0:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L231:

        sub       rsp, 1336
        vpsrlq    zmm23, zmm0, 32
        vpxor     ymm5, ymm5, ymm5
        vmovups   ZMMWORD PTR [1072+rsp], zmm21
        vmovups   ZMMWORD PTR [1136+rsp], zmm20
        vmovups   ZMMWORD PTR [1200+rsp], zmm19
        vmovups   ZMMWORD PTR [1264+rsp], zmm18
        vpmovqd   ymm1, zmm23
        mov       QWORD PTR [1064+rsp], r13
        lea       r13, QWORD PTR [927+rsp]
        vpand     ymm3, ymm1, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2432]
        and       r13, -64
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2176]
        vmovups   zmm18, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2304]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2048]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1920]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1792]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1664]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1536]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+768]
        vmovups   zmm20, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+384]
        vmovups   zmm21, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+128]
        vpsubd    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2496]
        vandpd    zmm24, zmm0, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10432]
        vpcmpgtd  ymm2, ymm3, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10560]
        vpmaxsd   ymm1, ymm4, ymm5
        vmovmskps r8d, ymm2
        vpminsd   ymm2, ymm1, YMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2560]
        vpsrld    ymm3, ymm2, 19
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1408]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1280]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1024]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+896]
        vpmovzxdq zmm22, ymm3
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1152]
        vpermt2pd zmm25, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+64]
        vpermt2pd zmm26, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2240]
        vpermt2pd zmm18, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2368]
        vsubpd    zmm19, zmm24, zmm25 {rn-sae}
        vpermt2pd zmm27, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+2112]
        vpermt2pd zmm28, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1984]
        vpermt2pd zmm29, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1856]
        vpermt2pd zmm30, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1728]
        vpermt2pd zmm31, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1600]
        vpermt2pd zmm1, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1472]
        vpermt2pd zmm2, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1344]
        vpermt2pd zmm3, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1216]
        vpermt2pd zmm4, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+1088]
        vpermt2pd zmm5, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+960]
        vpermt2pd zmm23, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+832]
        vpermt2pd zmm20, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+448]
        vpermt2pd zmm21, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+192]
        vfmadd213pd zmm18, zmm19, zmm26 {rn-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+640]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+512]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+256]
        vfmadd213pd zmm18, zmm19, zmm27 {rn-sae}
        vpermt2pd zmm24, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+704]
        vpermt2pd zmm25, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+576]
        vpermt2pd zmm26, zmm22, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+320]
        vfmadd213pd zmm18, zmm19, zmm28 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm29 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm30 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm31 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm1 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm2 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm3 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm4 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm5 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm23 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm24 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm25 {rn-sae}
        vmulpd    zmm18, zmm18, zmm19 {rn-sae}
        vfmadd213pd zmm18, zmm19, zmm26 {rn-sae}
        vfmadd213pd zmm20, zmm19, zmm18 {rn-sae}
        vaddpd    zmm1, zmm20, zmm21 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vpternlogq zmm1, zmm0, ZMMWORD PTR [rip+__jsvml_dtanh_ha_data_internal+10368], 248
        test      r8d, r8d
        jne       .L_B9_3

.L_B9_2:

        vmovups   zmm18, ZMMWORD PTR [1264+rsp]
        vmovups   zmm19, ZMMWORD PTR [1200+rsp]
        vmovups   zmm20, ZMMWORD PTR [1136+rsp]
        vmovups   zmm21, ZMMWORD PTR [1072+rsp]
        mov       r13, QWORD PTR [1064+rsp]
        vmovaps   zmm0, zmm1
        add       rsp, 1336
        ret

.L_B9_3:

        vstmxcsr  DWORD PTR [1056+rsp]

.L_B9_4:

        movzx     edx, WORD PTR [1056+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B9_6

.L_B9_5:

        mov       DWORD PTR [1056+rsp], eax
        vldmxcsr  DWORD PTR [1056+rsp]

.L_B9_6:

        vmovups   ZMMWORD PTR [r13], zmm0
        vmovups   ZMMWORD PTR [64+r13], zmm1
        test      r8d, r8d
        jne       .L_B9_11

.L_B9_7:

        cmp       edx, eax
        je        .L_B9_2

.L_B9_8:

        vstmxcsr  DWORD PTR [1056+rsp]
        mov       eax, DWORD PTR [1056+rsp]

.L_B9_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1056+rsp], eax
        vldmxcsr  DWORD PTR [1056+rsp]
        jmp       .L_B9_2

.L_B9_11:

        xor       ecx, ecx
        kmovw     WORD PTR [824+rsp], k4
        kmovw     WORD PTR [816+rsp], k5
        kmovw     WORD PTR [808+rsp], k6
        kmovw     WORD PTR [800+rsp], k7
        vmovups   ZMMWORD PTR [736+rsp], zmm6
        vmovups   ZMMWORD PTR [672+rsp], zmm7
        vmovups   ZMMWORD PTR [608+rsp], zmm8
        vmovups   ZMMWORD PTR [544+rsp], zmm9
        vmovups   ZMMWORD PTR [480+rsp], zmm10
        vmovups   ZMMWORD PTR [416+rsp], zmm11
        vmovups   ZMMWORD PTR [352+rsp], zmm12
        vmovups   ZMMWORD PTR [288+rsp], zmm13
        vmovups   ZMMWORD PTR [224+rsp], zmm14
        vmovups   ZMMWORD PTR [160+rsp], zmm15
        vmovups   ZMMWORD PTR [96+rsp], zmm16
        vmovups   ZMMWORD PTR [32+rsp], zmm17
        mov       QWORD PTR [848+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [840+rsp], rsi
        mov       esi, edx
        mov       QWORD PTR [832+rsp], rdi
        mov       edi, r8d
        mov       QWORD PTR [856+rsp], rbp
        mov       ebp, eax

.L_B9_12:

        bt        edi, ebx
        jc        .L_B9_15

.L_B9_13:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B9_12

.L_B9_14:

        kmovw     k4, WORD PTR [824+rsp]
        mov       eax, ebp
        kmovw     k5, WORD PTR [816+rsp]
        kmovw     k6, WORD PTR [808+rsp]
        kmovw     k7, WORD PTR [800+rsp]
        vmovups   zmm6, ZMMWORD PTR [736+rsp]
        vmovups   zmm7, ZMMWORD PTR [672+rsp]
        vmovups   zmm8, ZMMWORD PTR [608+rsp]
        vmovups   zmm9, ZMMWORD PTR [544+rsp]
        vmovups   zmm10, ZMMWORD PTR [480+rsp]
        vmovups   zmm11, ZMMWORD PTR [416+rsp]
        vmovups   zmm12, ZMMWORD PTR [352+rsp]
        vmovups   zmm13, ZMMWORD PTR [288+rsp]
        vmovups   zmm14, ZMMWORD PTR [224+rsp]
        vmovups   zmm15, ZMMWORD PTR [160+rsp]
        vmovups   zmm16, ZMMWORD PTR [96+rsp]
        vmovups   zmm17, ZMMWORD PTR [32+rsp]
        vmovups   zmm1, ZMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [848+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [840+rsp]
        mov       rdi, QWORD PTR [832+rsp]
        mov       rbp, QWORD PTR [856+rsp]
        jmp       .L_B9_7

.L_B9_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dtanh_ha_cout_rare_internal
        jmp       .L_B9_13
        .align    16, 0x90

.L_B9_16:

        .section .drectve
        .ascii " -export \"__jsvml_tanh8_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh8_ha_z0_B1_B9:
        .long   806913
        .long   8770640
        .long   5187650
        .long   4929591
        .long   4671532
        .long   4413473
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_11
        .rva    _unwind___jsvml_tanh8_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanh8_ha_z0_B11_B15:
        .long   2150689
        .long   7034065
        .long   6845638
        .long   6907068
        .long   6960306
        .long   137386
        .long   395423
        .long   718996
        .long   977033
        .long   1235070
        .long   1493107
        .long   1751144
        .long   2009181
        .long   2267218
        .long   2525255
        .long   2783292
        .long   3041329
        .rva    .L_B9_1
        .rva    .L_B9_11
        .rva    _unwind___jsvml_tanh8_ha_z0_B1_B9

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_11
        .rva    .L_B9_16
        .rva    _unwind___jsvml_tanh8_ha_z0_B11_B15

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dtanh_ha_cout_rare_internal

__jsvml_dtanh_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L282:

        mov       r10, rcx
        lea       r8, QWORD PTR [rip+__ImageBase]
        mov       al, BYTE PTR [7+r10]
        and       al, -128
        shr       al, 7
        movzx     r9d, al
        movzx     eax, WORD PTR [6+r10]
        and       eax, 32752
        shr       eax, 4
        mov       rcx, QWORD PTR ["_imldTanhHATab"@imgrel+r8+r9*8]
        cmp       eax, 2047
        je        .L_B10_6

.L_B10_2:

        cmp       eax, 2046
        jne       .L_B10_4

.L_B10_3:

        mov       QWORD PTR [rdx], rcx
        jmp       .L_B10_5

.L_B10_4:

        movsd     xmm1, QWORD PTR [r10]
        movsd     xmm0, QWORD PTR [rip+_imldTanhHATab]
        addsd     xmm0, xmm1
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [rdx], xmm1

.L_B10_5:

        xor       eax, eax
        ret

.L_B10_6:

        test      DWORD PTR [4+r10], 1048575
        jne       .L_B10_9

.L_B10_7:

        cmp       DWORD PTR [r10], 0
        je        .L_B10_3

.L_B10_9:

        movsd     xmm0, QWORD PTR [r10]
        addsd     xmm0, xmm0
        movsd     QWORD PTR [rdx], xmm0
        jmp       .L_B10_5
        .align    16, 0x90

.L_B10_10:


        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dtanh_ha_data_internal
__jsvml_dtanh_ha_data_internal:
        .long   0
        .long   0
        .long   0
        .long   1070333952
        .long   0
        .long   1070858240
        .long   0
        .long   1071382528
        .long   0
        .long   1071906816
        .long   0
        .long   1072431104
        .long   0
        .long   1072955392
        .long   0
        .long   1073479680
        .long   0
        .long   1074003968
        .long   0
        .long   1074528256
        .long   0
        .long   1075052544
        .long   0
        .long   1075576832
        .long   0
        .long   1076101120
        .long   0
        .long   1076625408
        .long   0
        .long   1077149696
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1097497746
        .long   1070305232
        .long   2699715854
        .long   1070817176
        .long   3997728823
        .long   1071273769
        .long   3938160533
        .long   1071759175
        .long   193732629
        .long   1072072293
        .long   3144363502
        .long   1072375075
        .long   2548249895
        .long   1072570303
        .long   638218690
        .long   1072665176
        .long   3325726839
        .long   1072689426
        .long   2523455249
        .long   1072693057
        .long   2200391922
        .long   1072693244
        .long   4257836853
        .long   1072693247
        .long   4294954840
        .long   1072693247
        .long   0
        .long   1072693248
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   3167993022
        .long   1013310014
        .long   2889539328
        .long   3159121931
        .long   394645568
        .long   1013728265
        .long   2799920971
        .long   1015161303
        .long   754366556
        .long   1013577885
        .long   3960180508
        .long   1014215657
        .long   69774042
        .long   3162475851
        .long   2161066944
        .long   3162264280
        .long   923362432
        .long   1014879086
        .long   2160345802
        .long   1014714211
        .long   3729195158
        .long   3161626453
        .long   675671997
        .long   1015336837
        .long   1141527416
        .long   1013957883
        .long   2209699952
        .long   3160643600
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   2750448946
        .long   1072596012
        .long   1257606939
        .long   1072501079
        .long   2619663609
        .long   1072338011
        .long   863303701
        .long   1072048204
        .long   2694810990
        .long   1071654144
        .long   837003456
        .long   1070723665
        .long   472162617
        .long   1069359818
        .long   532307062
        .long   1067137790
        .long   431106849
        .long   1064162173
        .long   329904022
        .long   1059572972
        .long   4080160942
        .long   1053550275
        .long   1402271583
        .long   1044493446
        .long   467296040
        .long   1032344560
        .long   26734424
        .long   1014207804
        .long   0
        .long   0
        .long   1071622681
        .long   3153114090
        .long   3948133409
        .long   3217705130
        .long   4096956694
        .long   3218184481
        .long   2616164369
        .long   3218465008
        .long   2620770434
        .long   3218641845
        .long   3075958072
        .long   3218520700
        .long   1950184789
        .long   3217978001
        .long   2686385024
        .long   3216731525
        .long   1489441818
        .long   3214597550
        .long   1992796697
        .long   3211642259
        .long   1952936976
        .long   3207056478
        .long   3904162951
        .long   3201033920
        .long   1382745445
        .long   3191977094
        .long   468673444
        .long   3179828208
        .long   3843669553
        .long   3161691483
        .long   0
        .long   0
        .long   1431655765
        .long   3218429269
        .long   3264395793
        .long   3218178991
        .long   60595194
        .long   3217824331
        .long   1837960166
        .long   3217124894
        .long   1964918946
        .long   3214033516
        .long   2998587684
        .long   1068822866
        .long   3421467326
        .long   1069267520
        .long   952003133
        .long   1068506016
        .long   1215426504
        .long   1066495476
        .long   2650572912
        .long   1063503494
        .long   4178958376
        .long   1059043758
        .long   3799805457
        .long   1052940753
        .long   3704238924
        .long   1043831645
        .long   2076585114
        .long   1031813109
        .long   1352847351
        .long   1013591371
        .long   0
        .long   0
        .long   3830371894
        .long   3169224254
        .long   74893150
        .long   1069567437
        .long   1235750664
        .long   1069825332
        .long   916043751
        .long   1069924975
        .long   4138411315
        .long   1069655686
        .long   829220656
        .long   1068441660
        .long   663246204
        .long   3213477792
        .long   652268865
        .long   3214415230
        .long   3251098232
        .long   3212868437
        .long   1480792335
        .long   3209929101
        .long   3365608027
        .long   3205478075
        .long   3330582883
        .long   3199375817
        .long   3573234945
        .long   3190266717
        .long   2061970086
        .long   3178248181
        .long   3148320390
        .long   3160026274
        .long   0
        .long   0
        .long   286337717
        .long   1069617425
        .long   4261152941
        .long   1068876190
        .long   3694459820
        .long   1067928728
        .long   2399079031
        .long   3212381546
        .long   394897286
        .long   3215735810
        .long   3073534041
        .long   3215860118
        .long   301960234
        .long   3214124960
        .long   3353887502
        .long   1064191753
        .long   4200665425
        .long   1063741482
        .long   2003926207
        .long   1061090030
        .long   2196865207
        .long   1056528964
        .long   2107880963
        .long   1050526402
        .long   3656860478
        .long   1041425071
        .long   881228218
        .long   1029305120
        .long   2612840768
        .long   1011136029
        .long   0
        .long   0
        .long   3722294196
        .long   3181505049
        .long   2573001951
        .long   3216029919
        .long   4095639908
        .long   3216151900
        .long   3272210374
        .long   3215957253
        .long   3439280785
        .long   3214441767
        .long   628273304
        .long   1066085542
        .long   3354767370
        .long   1066343670
        .long   300170709
        .long   1063270296
        .long   1870156670
        .long   3209139074
        .long   1580606479
        .long   3206808937
        .long   3818710870
        .long   3202408589
        .long   3126817102
        .long   3196311305
        .long   3320734688
        .long   3187224127
        .long   821170446
        .long   3175173312
        .long   3906480775
        .long   3156975650
        .long   0
        .long   0
        .long   428888587
        .long   3215696314
        .long   3125999356
        .long   3214336891
        .long   407196569
        .long   1053816799
        .long   886258254
        .long   1066874408
        .long   2149075781
        .long   1067351939
        .long   3888390356
        .long   1065784643
        .long   1226056234
        .long   3211994813
        .long   178100474
        .long   3210723675
        .long   4201249718
        .long   1058328572
        .long   3854015760
        .long   1057324616
        .long   3621220964
        .long   1052982118
        .long   1468766992
        .long   1046916174
        .long   2369608770
        .long   1037879115
        .long   327127732
        .long   1025754505
        .long   747046817
        .long   1007714190
        .long   0
        .long   0
        .long   4036362527
        .long   3191151783
        .long   839661649
        .long   1067363059
        .long   4269154241
        .long   1067251747
        .long   391446303
        .long   1066410535
        .long   2090623151
        .long   3211993063
        .long   1751510141
        .long   3213141508
        .long   4072216875
        .long   3209470961
        .long   3769618983
        .long   1061976030
        .long   3462945146
        .long   1057228123
        .long   3030849095
        .long   3202531084
        .long   4269010901
        .long   3198361258
        .long   742615277
        .long   3192302512
        .long   3397417437
        .long   3183265609
        .long   943110610
        .long   3171141000
        .long   371608300
        .long   3153099348
        .long   0
        .long   0
        .long   1315619150
        .long   1066820857
        .long   1001273821
        .long   3214201652
        .long   3859675203
        .long   3212560200
        .long   725858949
        .long   3213658423
        .long   2464052346
        .long   3212913056
        .long   1297319750
        .long   1063307355
        .long   563735576
        .long   1062988089
        .long   2756222736
        .long   3207203944
        .long   31207338
        .long   3204466214
        .long   434022900
        .long   1052227234
        .long   2370591882
        .long   1048628172
        .long   588930601
        .long   1042556347
        .long   3198977634
        .long   1033474724
        .long   1590950759
        .long   1021415866
        .long   195904708
        .long   1003000389
        .long   0
        .long   0
        .long   4252521214
        .long   3198731457
        .long   2969857811
        .long   3217870358
        .long   575387574
        .long   3212943727
        .long   67550217
        .long   3210922992
        .long   2955736731
        .long   1064678043
        .long   4193848343
        .long   1063288304
        .long   1845975253
        .long   3209397546
        .long   1025213509
        .long   3204479174
        .long   3713384058
        .long   1055658730
        .long   4120057883
        .long   3194988032
        .long   1573797757
        .long   3193584787
        .long   2514726550
        .long   3187678317
        .long   15343571
        .long   3178526042
        .long   104576940
        .long   3166444652
        .long   1147207168
        .long   3148070554
        .long   0
        .long   0
        .long   1467656669
        .long   3212977156
        .long   4154993315
        .long   1077775111
        .long   2465966858
        .long   3214886059
        .long   71777642
        .long   1068690118
        .long   2419763912
        .long   1061550205
        .long   1896047360
        .long   3210612806
        .long   3723555648
        .long   1058651288
        .long   3163703016
        .long   1057833732
        .long   1601936705
        .long   3201383489
        .long   2535509424
        .long   3195153293
        .long   3610885824
        .long   1043474022
        .long   1031698712
        .long   1037527637
        .long   1497459257
        .long   1028514042
        .long   3476455860
        .long   1016366870
        .long   758110873
        .long   998719391
        .long   0
        .long   0
        .long   572446067
        .long   3204307354
        .long   926268084
        .long   1081104698
        .long   1313112926
        .long   3217861477
        .long   3660716
        .long   1070677720
        .long   124568711
        .long   3210757561
        .long   2123022704
        .long   1059096046
        .long   576783408
        .long   1059279430
        .long   1651052980
        .long   3204387494
        .long   3164866735
        .long   1051430920
        .long   409335328
        .long   1046695415
        .long   3481520755
        .long   3188046619
        .long   1140549474
        .long   3182373569
        .long   708689751
        .long   3173247717
        .long   2627769694
        .long   3161153086
        .long   3804346926
        .long   3143551592
        .long   0
        .long   0
        .long   2302818369
        .long   1064188902
        .long   526101185
        .long   3235013457
        .long   2975776348
        .long   1075224435
        .long   1103981749
        .long   3223699933
        .long   4261798097
        .long   3210280329
        .long   30781306
        .long   1064564655
        .long   3939597931
        .long   3206430909
        .long   1816466405
        .long   1055007949
        .long   3868125859
        .long   3190076997
        .long   4218600579
        .long   3192569835
        .long   4167655123
        .long   1037376568
        .long   952533803
        .long   1032000428
        .long   895641221
        .long   1022851193
        .long   1237761065
        .long   1010835452
        .long   2902086315
        .long   3133082401
        .long   0
        .long   0
        .long   1899646778
        .long   3207205638
        .long   2434183270
        .long   3238288976
        .long   621380814
        .long   1078065849
        .long   247717525
        .long   3225783561
        .long   1611742563
        .long   3212088477
        .long   537725662
        .long   1065131990
        .long   3769436831
        .long   1057148224
        .long   3759797009
        .long   3196422840
        .long   842759416
        .long   3195613094
        .long   1736926210
        .long   1043198029
        .long   3915271468
        .long   3180709675
        .long   807416070
        .long   3176507548
        .long   3147759461
        .long   3167409843
        .long   3443382404
        .long   3155325020
        .long   1202615797
        .long   3129870924
        .long   0
        .long   0
        .long   1841653873
        .long   3210074087
        .long   2157744327
        .long   1095928888
        .long   3038317314
        .long   3229013375
        .long   2291108570
        .long   1082519711
        .long   707775397
        .long   1067599411
        .long   445214669
        .long   3216153989
        .long   3815354898
        .long   1054410330
        .long   1285070896
        .long   3199787450
        .long   1722630166
        .long   1047526663
        .long   2672844635
        .long   3188483010
        .long   1805520457
        .long   3179260705
        .long   542550567
        .long   1026041526
        .long   392361251
        .long   1017320419
        .long   562647833
        .long   1005205418
        .long   4253488278
        .long   988137457
        .long   0
        .long   0
        .long   3077187303
        .long   1060497018
        .long   1652392454
        .long   1099206368
        .long   414484972
        .long   3231848150
        .long   130592591
        .long   1084602513
        .long   1951534810
        .long   1068932483
        .long   2677544726
        .long   3216895313
        .long   2338009969
        .long   3203411240
        .long   302629286
        .long   1051889816
        .long   1274412910
        .long   3193339538
        .long   3731558070
        .long   1038350327
        .long   3135499196
        .long   1030352152
        .long   1329461873
        .long   3170325324
        .long   4058709792
        .long   3161656179
        .long   2167788642
        .long   3149540607
        .long   1602064437
        .long   3132466971
        .long   0
        .long   0
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   2146959360
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   1069547520
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   7864320
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   3616958675
        .long   3172564458
        .long   1431547708
        .long   3218429269
        .long   3390261318
        .long   3188010876
        .long   1446529494
        .long   1069617425
        .long   913571762
        .long   3199219810
        .long   1583612462
        .long   3215695720
        .long   2995724807
        .long   3207222498
        .long   847913742
        .long   1066913721
        .long   1634876930
        .long   3212167789
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1694159514
        .long   1010239653
        .long   966318664
        .long   1069606551
        .long   2992375944
        .long   1072656686
        .long   1870405289
        .long   3217070889
        .long   1411308967
        .long   3218333047
        .long   4096824853
        .long   1068863484
        .long   2220740425
        .long   1069365950
        .long   1401698298
        .long   3215430111
        .long   4137473768
        .long   3215259762
        .long   2666938667
        .long   1066889956
        .long   121190665
        .long   1066187784
        .long   821637913
        .long   3213226090
        .long   0
        .long   3217096704
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1463410348
        .long   1012925678
        .long   2389577058
        .long   1069735062
        .long   1617794783
        .long   1072647710
        .long   1889094329
        .long   3217191869
        .long   1210518828
        .long   3218309813
        .long   1479174953
        .long   1069010221
        .long   3435917531
        .long   1069290104
        .long   291210913
        .long   3215575029
        .long   464478606
        .long   3215159746
        .long   1063797118
        .long   1067014292
        .long   3489481042
        .long   1065955541
        .long   2916293494
        .long   3213319415
        .long   0
        .long   3217227776
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1308961311
        .long   1014934498
        .long   2204208241
        .long   1069862983
        .long   2945950899
        .long   1072637797
        .long   1107689125
        .long   3217310565
        .long   545938327
        .long   3218284334
        .long   3174275192
        .long   1069150773
        .long   3754729793
        .long   1069207728
        .long   1611554958
        .long   3215708601
        .long   2936527704
        .long   3215052478
        .long   2983784402
        .long   1067121823
        .long   1327150338
        .long   1065710404
        .long   3371320326
        .long   3213391099
        .long   0
        .long   3217358848
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3546392464
        .long   1015001497
        .long   631120375
        .long   1069990256
        .long   1201634405
        .long   1072626967
        .long   266657677
        .long   3217426771
        .long   1567732958
        .long   3218256710
        .long   883708059
        .long   1069284653
        .long   1008115966
        .long   1069119372
        .long   2657338981
        .long   3215830093
        .long   3402640736
        .long   3214939036
        .long   1000796573
        .long   1067211764
        .long   53805889
        .long   1065455799
        .long   1736607114
        .long   3213440608
        .long   0
        .long   3217489920
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2741128528
        .long   1013617020
        .long   3111451323
        .long   1070116823
        .long   1649040643
        .long   1072615239
        .long   3411009101
        .long   3217540290
        .long   3408666525
        .long   3218227049
        .long   60831764
        .long   1069411415
        .long   64016149
        .long   1069025616
        .long   1202785467
        .long   3215938891
        .long   1072151579
        .long   3214707060
        .long   1534357116
        .long   1067283570
        .long   4218468492
        .long   1065037194
        .long   2285827787
        .long   3213467810
        .long   0
        .long   3217620992
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2659584459
        .long   1014368295
        .long   3537749475
        .long   1070242630
        .long   3072983457
        .long   1072602635
        .long   3507245872
        .long   3217650938
        .long   3434758212
        .long   3218195466
        .long   3801643091
        .long   1069530660
        .long   1128653951
        .long   1068927067
        .long   3580298628
        .long   3216008547
        .long   1645082338
        .long   3214462237
        .long   1048857889
        .long   1067336943
        .long   21547694
        .long   1064510970
        .long   1433152914
        .long   3213472968
        .long   0
        .long   3217752064
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2718912981
        .long   1013914074
        .long   1823051285
        .long   1070367623
        .long   1714227149
        .long   1072589179
        .long   2128046799
        .long   3217758540
        .long   2655098722
        .long   3218162081
        .long   1690074008
        .long   1069594780
        .long   353091525
        .long   1068824353
        .long   4206393496
        .long   3216049578
        .long   824478721
        .long   3214211899
        .long   3850924188
        .long   1067371825
        .long   2738209029
        .long   1063668369
        .long   853664366
        .long   3213456718
        .long   0
        .long   3217883136
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2312638749
        .long   1013630664
        .long   4267025360
        .long   1070491748
        .long   3776362539
        .long   1072574894
        .long   3063840907
        .long   3217862932
        .long   2436606365
        .long   3218127019
        .long   582931594
        .long   1069646387
        .long   3079837843
        .long   1068718114
        .long   3430470362
        .long   3216083715
        .long   1015897693
        .long   3213958348
        .long   765047087
        .long   1067388396
        .long   2337193368
        .long   1061824569
        .long   3002775972
        .long   3213420044
        .long   0
        .long   3218014208
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2001712669
        .long   1015665334
        .long   1330879460
        .long   1070636148
        .long   2956987714
        .long   1072551971
        .long   4281360332
        .long   3218013175
        .long   3304213057
        .long   3218063389
        .long   3261945160
        .long   1069715874
        .long   3866284424
        .long   1068553570
        .long   3423706630
        .long   3216121886
        .long   259493169
        .long   3213268437
        .long   4223676832
        .long   1067379852
        .long   2765317642
        .long   3210752240
        .long   2292494069
        .long   3213329490
        .long   0
        .long   3218145280
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1632443533
        .long   1015769771
        .long   3788472163
        .long   1070757367
        .long   2406795724
        .long   1072518757
        .long   1173083542
        .long   3218140352
        .long   3726086528
        .long   3217906251
        .long   1205028711
        .long   1069793280
        .long   2231197855
        .long   1068156878
        .long   2368637763
        .long   3216148628
        .long   2866127296
        .long   3211617797
        .long   2424606359
        .long   1067309831
        .long   2444940724
        .long   3212180962
        .long   3308128888
        .long   3213151909
        .long   0
        .long   3218276352
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   478834383
        .long   1014053288
        .long   1342399495
        .long   1070876422
        .long   2650660168
        .long   1072482726
        .long   976724127
        .long   3218226669
        .long   962417089
        .long   3217740546
        .long   1060150306
        .long   1069852926
        .long   411739190
        .long   1067700577
        .long   3846786712
        .long   3216148687
        .long   4007187252
        .long   1064073475
        .long   3455779574
        .long   1067180067
        .long   1865169557
        .long   3212900393
        .long   1200620699
        .long   3212923615
        .long   0
        .long   3218407424
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   267289397
        .long   1014452734
        .long   302318249
        .long   1070993143
        .long   1373990511
        .long   1072444121
        .long   1606419704
        .long   3218305061
        .long   3955669825
        .long   3217568496
        .long   2701083439
        .long   1069894809
        .long   3425188888
        .long   1067047616
        .long   2305426029
        .long   3216123827
        .long   1692531481
        .long   1065641523
        .long   232815703
        .long   1067000535
        .long   3949954748
        .long   3213214884
        .long   558890519
        .long   3212487521
        .long   0
        .long   3218538496
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1719941932
        .long   1006528498
        .long   368840470
        .long   1071107377
        .long   1825320027
        .long   1072403193
        .long   538136722
        .long   3218375283
        .long   1431312010
        .long   3217392305
        .long   2586725425
        .long   1069919291
        .long   2680871675
        .long   1065941593
        .long   4123661982
        .long   3216076488
        .long   4235496382
        .long   1066406926
        .long   2618960092
        .long   1066782660
        .long   2333865044
        .long   3213444845
        .long   1545458959
        .long   3211934181
        .long   0
        .long   3218669568
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   26286236
        .long   1013191219
        .long   990113957
        .long   1071218987
        .long   3284199501
        .long   1072360200
        .long   2981906127
        .long   3218437190
        .long   3154396333
        .long   3217214106
        .long   4182117656
        .long   1069927061
        .long   903677379
        .long   3207343530
        .long   384743261
        .long   3216009637
        .long   1679228359
        .long   1066734193
        .long   3407026595
        .long   1066538544
        .long   784962854
        .long   3213588186
        .long   1956733412
        .long   3210979700
        .long   0
        .long   3218800640
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1468217372
        .long   1015658399
        .long   2570814109
        .long   1071327852
        .long   532296332
        .long   1072315404
        .long   318213600
        .long   3218490738
        .long   3661105766
        .long   3217035931
        .long   4085840862
        .long   1069919095
        .long   2798312316
        .long   3213370099
        .long   1668326589
        .long   3215870599
        .long   3158013712
        .long   1066998409
        .long   673205579
        .long   1066158659
        .long   486665227
        .long   3213647762
        .long   3317145528
        .long   3208570948
        .long   0
        .long   3218931712
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2060955015
        .long   1014233667
        .long   2567098181
        .long   1071433868
        .long   1159081245
        .long   1072269064
        .long   1492598184
        .long   3218535971
        .long   1567055841
        .long   3216688180
        .long   2821222425
        .long   1069896605
        .long   3691290783
        .long   3214336992
        .long   343679101
        .long   3215679175
        .long   1878686296
        .long   1067197462
        .long   125933636
        .long   1065636281
        .long   421076939
        .long   3213630573
        .long   3748848474
        .long   1062499186
        .long   0
        .long   3219062784
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1860475216
        .long   1015320544
        .long   439764829
        .long   1071587361
        .long   3870821058
        .long   1072197223
        .long   1430736283
        .long   3218588540
        .long   1597812790
        .long   3216174065
        .long   2398544810
        .long   1069838732
        .long   961452807
        .long   3215095800
        .long   716310499
        .long   3215360049
        .long   2337792646
        .long   1067375770
        .long   3863538422
        .long   1064417477
        .long   2203480844
        .long   3213482785
        .long   2389621902
        .long   1063978354
        .long   0
        .long   3219193856
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   517838046
        .long   1015294339
        .long   2114713104
        .long   1071713012
        .long   2046328558
        .long   1072098392
        .long   29352448
        .long   3218631376
        .long   1533416325
        .long   3215079684
        .long   765247815
        .long   1069724759
        .long   24381189
        .long   3215564623
        .long   1213155449
        .long   3214886044
        .long   379420126
        .long   1067409218
        .long   3127061143
        .long   3210809777
        .long   3193663073
        .long   3213128287
        .long   2557278876
        .long   1064581282
        .long   0
        .long   3219324928
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   201012485
        .long   1013704982
        .long   4147262407
        .long   1071803766
        .long   3048814903
        .long   1071997795
        .long   1260857726
        .long   3218645540
        .long   270462819
        .long   3209873967
        .long   874660781
        .long   1069580732
        .long   1251156804
        .long   3215866075
        .long   3568210118
        .long   3214014484
        .long   3784557811
        .long   1067255146
        .long   47772576
        .long   3212562613
        .long   2075700783
        .long   3212539455
        .long   1121561449
        .long   1064698735
        .long   0
        .long   3219456000
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   72370286
        .long   1015768239
        .long   2345366573
        .long   1071888223
        .long   3155310239
        .long   1071897123
        .long   4105462806
        .long   3218634383
        .long   2329529114
        .long   1067280331
        .long   3078782452
        .long   1069291148
        .long   2210998062
        .long   3215997483
        .long   1498585052
        .long   3212353515
        .long   3032692199
        .long   1066974465
        .long   809329973
        .long   3213081308
        .long   2713838579
        .long   3211547879
        .long   1266611175
        .long   1064568889
        .long   0
        .long   3219587072
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2137918782
        .long   1013598293
        .long   2511343836
        .long   1071966424
        .long   4205808243
        .long   1071797842
        .long   2776384587
        .long   3218601667
        .long   3824787134
        .long   1068202086
        .long   4101819712
        .long   1068956189
        .long   3547601806
        .long   3216004360
        .long   4156237724
        .long   1064058621
        .long   3714924071
        .long   1066627770
        .long   2925917146
        .long   3213234133
        .long   4211598888
        .long   3209111151
        .long   2569808389
        .long   1064277859
        .long   0
        .long   3219718144
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2979324843
        .long   1013692066
        .long   2595126306
        .long   1072038496
        .long   4263058559
        .long   1071701178
        .long   2217257467
        .long   3218551298
        .long   2310932059
        .long   1068685603
        .long   3368327571
        .long   1068627625
        .long   3037419246
        .long   3215935424
        .long   3509936675
        .long   1065724141
        .long   1557247226
        .long   1066131548
        .long   3830787958
        .long   3213205743
        .long   1781883284
        .long   1062575914
        .long   3918078093
        .long   1063614197
        .long   0
        .long   3219849216
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3630992244
        .long   1015034507
        .long   461360001
        .long   1072104635
        .long   2866201612
        .long   1071571556
        .long   1021729265
        .long   3218487113
        .long   1039036234
        .long   1068940858
        .long   1685105679
        .long   1068140011
        .long   1856275853
        .long   3215769620
        .long   2211306181
        .long   1066373046
        .long   3739405201
        .long   1065456917
        .long   3870269089
        .long   3213053509
        .long   427599213
        .long   1063593231
        .long   40698732
        .long   1062709094
        .long   0
        .long   3219980288
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4017840557
        .long   1014067070
        .long   2764932206
        .long   1072165089
        .long   3362970633
        .long   1071394124
        .long   2677206355
        .long   3218412713
        .long   1827861303
        .long   1069122666
        .long   2476388705
        .long   1067583638
        .long   523365901
        .long   3215556224
        .long   1203249285
        .long   1066574111
        .long   4264074292
        .long   1064402288
        .long   3556167213
        .long   3212827889
        .long   3894081206
        .long   1063908871
        .long   2161178761
        .long   1061130844
        .long   0
        .long   3220111360
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3622330478
        .long   1016273425
        .long   923638641
        .long   1072245755
        .long   239419665
        .long   1071146518
        .long   4085259706
        .long   3218288969
        .long   1284806809
        .long   1069276013
        .long   2806747971
        .long   1066232498
        .long   75259250
        .long   3215197393
        .long   2597116185
        .long   1066648701
        .long   1680670491
        .long   3208755029
        .long   446818184
        .long   3212096816
        .long   1529495144
        .long   1063888972
        .long   808619025
        .long   3208443000
        .long   0
        .long   3220242432
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   462410646
        .long   1015565639
        .long   3157363066
        .long   1072336316
        .long   87541994
        .long   1070853747
        .long   2905067058
        .long   3218115077
        .long   1081050294
        .long   1069306453
        .long   4130581086
        .long   3212259234
        .long   1279737796
        .long   3214531982
        .long   901138781
        .long   1066501065
        .long   978916480
        .long   3211806490
        .long   1307294116
        .long   3210755549
        .long   1154728319
        .long   1063409950
        .long   983243444
        .long   3209435485
        .long   0
        .long   3220373504
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2617212772
        .long   1016126748
        .long   2762378177
        .long   1072409936
        .long   1926160805
        .long   1070604218
        .long   4131898582
        .long   3217810482
        .long   3068505203
        .long   1069203346
        .long   2854543895
        .long   3214027139
        .long   1276437050
        .long   3213652513
        .long   523800203
        .long   1066060621
        .long   3030576699
        .long   3212054264
        .long   210618624
        .long   3205409267
        .long   3515290542
        .long   1062456384
        .long   1613351841
        .long   3209185464
        .long   0
        .long   3220504576
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2178033281
        .long   1016051223
        .long   859883711
        .long   1072469258
        .long   4248327203
        .long   1070195167
        .long   4170103331
        .long   3217497647
        .long   3497702842
        .long   1069026027
        .long   669705965
        .long   3214426190
        .long   548733038
        .long   3212258725
        .long   1756337187
        .long   1065503890
        .long   1830841059
        .long   3211930343
        .long   1445563742
        .long   1061912703
        .long   2113494314
        .long   1060991234
        .long   1734825467
        .long   3208559895
        .long   0
        .long   3220635648
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1674478116
        .long   1016412476
        .long   1178764976
        .long   1072516719
        .long   1119346206
        .long   1069851736
        .long   1526584272
        .long   3217221512
        .long   3575463915
        .long   1068817773
        .long   2913683612
        .long   3214542291
        .long   1135909212
        .long   3207879094
        .long   1952394810
        .long   1064725296
        .long   508910559
        .long   3211537545
        .long   225204077
        .long   1062311155
        .long   1009857186
        .long   1056234420
        .long   2872841632
        .long   3207480811
        .long   0
        .long   3220766720
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1768234410
        .long   1014305046
        .long   1496797583
        .long   1072554475
        .long   3351833521
        .long   1069572393
        .long   68183265
        .long   3216938851
        .long   4178655528
        .long   1068606905
        .long   60791550
        .long   3214483781
        .long   1856281737
        .long   1063701265
        .long   4260560897
        .long   1063778674
        .long   2539586291
        .long   3210979253
        .long   2272785608
        .long   1062198907
        .long   1986161572
        .long   3206910344
        .long   1016667904
        .long   3205797138
        .long   0
        .long   3220897792
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3074583847
        .long   1017063845
        .long   4092570620
        .long   1072584374
        .long   3645618684
        .long   1069147119
        .long   1980755111
        .long   3216542681
        .long   889928399
        .long   1068320928
        .long   1360064809
        .long   3214330986
        .long   2266432388
        .long   1064407878
        .long   4147854841
        .long   1062471610
        .long   1812350685
        .long   3210287970
        .long   3710399832
        .long   1061728481
        .long   2458127659
        .long   3207279138
        .long   287360833
        .long   3197756422
        .long   0
        .long   3221028864
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   68970445
        .long   1013643458
        .long   3990219923
        .long   1072607967
        .long   97498680
        .long   1068787106
        .long   4136450559
        .long   3216216395
        .long   147179316
        .long   1067971098
        .long   1625987424
        .long   3214138005
        .long   3965878798
        .long   1064539455
        .long   3777445436
        .long   1059539413
        .long   3029913178
        .long   3209512624
        .long   2162291908
        .long   1061245910
        .long   351053474
        .long   3207087984
        .long   3766283083
        .long   1056943188
        .long   0
        .long   3221159936
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3139580402
        .long   1014663922
        .long   3748810696
        .long   1072634260
        .long   3154943320
        .long   1068262833
        .long   3181856712
        .long   3215694135
        .long   3656356636
        .long   1067539266
        .long   3897588284
        .long   3213798616
        .long   1461831298
        .long   1064461217
        .long   2900114226
        .long   3208814642
        .long   2606420357
        .long   3207868903
        .long   1741152094
        .long   1060222230
        .long   1469206701
        .long   3206514441
        .long   3518993813
        .long   1057090958
        .long   0
        .long   3221291008
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3285908565
        .long   1015477239
        .long   1797956315
        .long   1072657271
        .long   3302471936
        .long   1067543167
        .long   2151339553
        .long   3215007235
        .long   362228095
        .long   1066797401
        .long   3986406156
        .long   3213131380
        .long   388353381
        .long   1064042359
        .long   4147910906
        .long   3209239839
        .long   1739922885
        .long   1056259812
        .long   3188561056
        .long   1058406709
        .long   489122368
        .long   3205182155
        .long   202560853
        .long   1056234231
        .long   0
        .long   3221422080
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3806705628
        .long   1008327668
        .long   884432573
        .long   1072671353
        .long   137405484
        .long   1066747168
        .long   3531994812
        .long   3214216262
        .long   3217445183
        .long   1066105333
        .long   2910288024
        .long   3212464301
        .long   3196212707
        .long   1063467545
        .long   3156563895
        .long   3208963593
        .long   3591285453
        .long   1058733242
        .long   2889132271
        .long   1055392886
        .long   1038377961
        .long   3203561698
        .long   4084672077
        .long   1055001082
        .long   0
        .long   3221553152
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1881957148
        .long   1016569186
        .long   3451706443
        .long   1072679940
        .long   143468186
        .long   1066002557
        .long   553724800
        .long   3213475431
        .long   1049442771
        .long   1065415105
        .long   3378521943
        .long   3211821787
        .long   3176008209
        .long   1062800361
        .long   4016898691
        .long   3208498219
        .long   1548390021
        .long   1058670598
        .long   2097418483
        .long   3202689041
        .long   2756703589
        .long   3201351283
        .long   506736184
        .long   1053405377
        .long   0
        .long   3221684224
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   450339788
        .long   1015040915
        .long   2959639058
        .long   1072685166
        .long   2289443405
        .long   1065320893
        .long   3331959139
        .long   3212796584
        .long   724199976
        .long   1064616734
        .long   938566183
        .long   3211030741
        .long   1640535667
        .long   1062186735
        .long   187996035
        .long   3207841256
        .long   822311531
        .long   1058246461
        .long   160890851
        .long   3203087480
        .long   3163291388
        .long   1050479733
        .long   578249940
        .long   1051474021
        .long   0
        .long   3221815296
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   539445753
        .long   1012635531
        .long   3085578536
        .long   1072688342
        .long   2019637246
        .long   1064510347
        .long   2901018414
        .long   3211991061
        .long   2171427566
        .long   1063868144
        .long   678185093
        .long   3210287638
        .long   2685165718
        .long   1061401571
        .long   710336199
        .long   3207152667
        .long   2733135798
        .long   1057659331
        .long   886948177
        .long   3202751664
        .long   3345834247
        .long   1052218043
        .long   908728048
        .long   1047925874
        .long   0
        .long   3221946368
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4240302093
        .long   1016867082
        .long   1832260410
        .long   1072690271
        .long   154153694
        .long   1063730412
        .long   2094548181
        .long   3211211898
        .long   1392727515
        .long   1063180837
        .long   3132890025
        .long   3209604411
        .long   483611698
        .long   1060651750
        .long   4246355421
        .long   3206519479
        .long   1424637421
        .long   1057044161
        .long   2138185318
        .long   3202290304
        .long   2276282642
        .long   1052095798
        .long   4227780935
        .long   3196067472
        .long   0
        .long   3222077440
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2485733495
        .long   1017000498
        .long   484092514
        .long   1072691442
        .long   1653085170
        .long   1063007344
        .long   2893019346
        .long   3210489400
        .long   878866243
        .long   1062388018
        .long   2113174452
        .long   3208818852
        .long   2654141437
        .long   1059959432
        .long   3578550869
        .long   3205727739
        .long   315005006
        .long   1056288680
        .long   3246956604
        .long   3201593495
        .long   2197286540
        .long   1051718329
        .long   3044885069
        .long   3196227269
        .long   0
        .long   3222208512
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2794994668
        .long   1016833037
        .long   3287420517
        .long   1072692394
        .long   4133778764
        .long   1061857404
        .long   689562148
        .long   3209340342
        .long   1404089106
        .long   1061273627
        .long   1292441425
        .long   3207706805
        .long   93671116
        .long   1058816787
        .long   2903327974
        .long   3204626398
        .long   4279279273
        .long   1055202414
        .long   134688023
        .long   3200552187
        .long   3315379764
        .long   1050761310
        .long   2945780649
        .long   3195568939
        .long   0
        .long   3222339584
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2135621136
        .long   1016053539
        .long   309961636
        .long   1072692934
        .long   672792810
        .long   1060347512
        .long   2960305506
        .long   3207830967
        .long   1703867620
        .long   1059726750
        .long   824905914
        .long   3206160796
        .long   3036017847
        .long   1057284422
        .long   923304464
        .long   3203122673
        .long   1848642304
        .long   1053791859
        .long   2215350763
        .long   3199158388
        .long   3049848127
        .long   1049324210
        .long   3861893815
        .long   3194293196
        .long   0
        .long   3222470656
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2236028675
        .long   1016891036
        .long   2177293363
        .long   1072693132
        .long   776830057
        .long   1058856794
        .long   4190004158
        .long   3206340337
        .long   209955488
        .long   1058225857
        .long   845130443
        .long   3204660651
        .long   4204313304
        .long   1055835544
        .long   364525198
        .long   3201597210
        .long   3889299905
        .long   1052205563
        .long   1514389355
        .long   3197586647
        .long   1706817756
        .long   1047834665
        .long   3817417318
        .long   3192934132
        .long   0
        .long   3222601728
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1074033072
        .long   1013200912
        .long   2197899301
        .long   1072693205
        .long   1097614282
        .long   1057308273
        .long   209489097
        .long   3204791893
        .long   3641526339
        .long   1056723664
        .long   1792794946
        .long   3203158586
        .long   584598707
        .long   1054254910
        .long   253996240
        .long   3200135633
        .long   642640562
        .long   1050754580
        .long   3147361740
        .long   3196139610
        .long   1167319222
        .long   1046395158
        .long   3488053038
        .long   3191370264
        .long   0
        .long   3222732800
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   871679747
        .long   1016222468
        .long   1586311569
        .long   1072693232
        .long   4199724405
        .long   1055867613
        .long   3041006250
        .long   3203351246
        .long   482130003
        .long   1055184672
        .long   1689676855
        .long   3201619703
        .long   116121201
        .long   1052814264
        .long   4166318198
        .long   3198564764
        .long   388552649
        .long   1049191609
        .long   1384400086
        .long   3194577312
        .long   135589376
        .long   1044819515
        .long   2497367318
        .long   3189906305
        .long   0
        .long   3222863872
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   752986014
        .long   1014740322
        .long   1072834312
        .long   1072693242
        .long   1389704451
        .long   1054277685
        .long   817998738
        .long   3201761329
        .long   996777029
        .long   1053731553
        .long   811547911
        .long   3200166603
        .long   1604093935
        .long   1051232383
        .long   2381858127
        .long   3197131472
        .long   806055999
        .long   1047703656
        .long   443662424
        .long   3193089938
        .long   2855612429
        .long   1043379518
        .long   3671581230
        .long   3188373004
        .long   0
        .long   3222994944
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4161630806
        .long   1015796140
        .long   3799386689
        .long   1072693245
        .long   516062805
        .long   1052830799
        .long   6188716
        .long   3200314446
        .long   79447568
        .long   1052151909
        .long   223529141
        .long   3198586975
        .long   1557009707
        .long   1049758991
        .long   1527834451
        .long   3195539792
        .long   3841571054
        .long   1046184222
        .long   3228035136
        .long   3191570603
        .long   2497745717
        .long   1041799395
        .long   3127975351
        .long   3186863029
        .long   0
        .long   3223126016
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3013228433
        .long   1015734301
        .long   952591976
        .long   1072693247
        .long   3849195912
        .long   1051256594
        .long   1248135057
        .long   3198740242
        .long   1658384276
        .long   1050712587
        .long   3312197895
        .long   3197147657
        .long   2426751598
        .long   1048219658
        .long   2075412918
        .long   3194074453
        .long   1194511818
        .long   1044659399
        .long   2861395540
        .long   3190045864
        .long   1105252788
        .long   1040325059
        .long   278204179
        .long   3185374362
        .long   0
        .long   3223257088
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4084683796
        .long   1014352664
        .long   3549182448
        .long   1072693247
        .long   4170486715
        .long   1048984034
        .long   3652359522
        .long   3196467682
        .long   1780445294
        .long   1048420995
        .long   3329441198
        .long   3194856066
        .long   663245309
        .long   1045935418
        .long   1918070306
        .long   3191839818
        .long   4225866973
        .long   1042419329
        .long   1974315224
        .long   3187805832
        .long   847480060
        .long   1038120500
        .long   2386310431
        .long   3183105031
        .long   0
        .long   3223388160
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   951119343
        .long   1016641415
        .long   4194036288
        .long   1072693247
        .long   4207053894
        .long   1045958742
        .long   4131013457
        .long   3193442390
        .long   2503178506
        .long   1045433060
        .long   2309798544
        .long   3191868132
        .long   1503762043
        .long   1042918157
        .long   762244907
        .long   3188792499
        .long   3745081608
        .long   1039371450
        .long   3106729171
        .long   3184757959
        .long   3799011378
        .long   1035063995
        .long   693003136
        .long   3180102041
        .long   0
        .long   3223519232
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1712896388
        .long   1016000193
        .long   4281307769
        .long   1072693247
        .long   3495080264
        .long   1042943408
        .long   3483806577
        .long   3190427056
        .long   3577360645
        .long   1042374261
        .long   3557467263
        .long   3188809333
        .long   3692227868
        .long   1039911516
        .long   1459944482
        .long   3185739496
        .long   624248087
        .long   1036331657
        .long   3930021706
        .long   3181718167
        .long   439009527
        .long   1032014849
        .long   3184212578
        .long   3177110789
        .long   0
        .long   3223650304
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1958475666
        .long   1013700788
        .long   4293118680
        .long   1072693247
        .long   3829159519
        .long   1039938855
        .long   3827364885
        .long   3187422503
        .long   2374004141
        .long   1039322650
        .long   2380228874
        .long   3185757722
        .long   853065064
        .long   1036916376
        .long   3897809499
        .long   3182694159
        .long   2467115425
        .long   1033300621
        .long   2966460473
        .long   3178687133
        .long   4249027489
        .long   1028973684
        .long   3391824522
        .long   3174085926
        .long   0
        .long   3223781376
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1028808661
        .long   1012328597
        .long   4294717113
        .long   1072693247
        .long   2759857858
        .long   1036945975
        .long   2759440340
        .long   3184429623
        .long   217750550
        .long   1036278821
        .long   228557927
        .long   3182713893
        .long   868996329
        .long   1033914811
        .long   130294465
        .long   3179657124
        .long   3979034581
        .long   1030279068
        .long   1690522291
        .long   3175665582
        .long   141102418
        .long   1025941166
        .long   3942643114
        .long   3171030731
        .long   0
        .long   3223912448
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2461075155
        .long   1015729939
        .long   4294933437
        .long   1072693247
        .long   2559161110
        .long   1033930834
        .long   2559046852
        .long   3181414482
        .long   3206412049
        .long   1033243416
        .long   3218709064
        .long   3179678488
        .long   2091270467
        .long   1030857342
        .long   245853585
        .long   3176629075
        .long   1555900931
        .long   1027267783
        .long   1186881303
        .long   3172654298
        .long   1695278520
        .long   1022918007
        .long   1853146834
        .long   3167983022
        .long   0
        .long   3224043520
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2502502488
        .long   1016572066
        .long   4294962713
        .long   1072693247
        .long   3137376149
        .long   1030874690
        .long   3137268820
        .long   3178358338
        .long   1097103169
        .long   1030217134
        .long   1110504267
        .long   3176652206
        .long   1068377398
        .long   1027807171
        .long   222176953
        .long   3173610756
        .long   3440315131
        .long   1024267613
        .long   1199778592
        .long   3169654130
        .long   257981480
        .long   1019904983
        .long   1388437918
        .long   3164943417
        .long   0
        .long   3224174592
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3418697838
        .long   1016821878
        .long   4294966675
        .long   1072693247
        .long   3798207862
        .long   1027825953
        .long   3798094058
        .long   3175309601
        .long   3391459718
        .long   1027200727
        .long   3405981646
        .long   3173635799
        .long   3694208074
        .long   1024764900
        .long   2192272311
        .long   3170602971
        .long   1464408928
        .long   1021279479
        .long   2201370875
        .long   3166665997
        .long   4139632468
        .long   1016902930
        .long   2981161402
        .long   3161912586
        .long   0
        .long   3224305664
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3589768515
        .long   1013972501
        .long   4294967265
        .long   1072693247
        .long   2293865510
        .long   1023336450
        .long   2097549026
        .long   3170820098
        .long   2721138850
        .long   1022661962
        .long   1571631120
        .long   3169097035
        .long   3716649917
        .long   1020295299
        .long   3146231247
        .long   3166041588
        .long   84506245
        .long   1016656297
        .long   2231398946
        .long   3162043093
        .long   3305646943
        .long   1012441980
        .long   402214167
        .long   3157503609
        .long   0
        .long   3224436736
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2152156943
        .long   1016184605
        .long   4294967294
        .long   1072693247
        .long   1074684533
        .long   1018634353
        .long   1074437943
        .long   3166118001
        .long   967276073
        .long   1018090988
        .long   995296768
        .long   3164526060
        .long   4275132894
        .long   1015589675
        .long   304133116
        .long   3161485853
        .long   1232215992
        .long   1012058464
        .long   559363548
        .long   3157444977
        .long   1487618473
        .long   1007759094
        .long   2355811294
        .long   3152771929
        .long   3381626085
        .long   3224537056
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
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
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
        .long   2147352576
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
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   1069416448
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   7733248
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
        .long   535822336
_2il0floatpacket_17:
        .long   0x00760000, 0x00000000, 0x00000000, 0x00000000
_imldTanhHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .data
#endif
