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
        .globl __jsvml_pow2_ha_e9

__jsvml_pow2_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 440
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [400+rsp], xmm15
        vmovups   XMMWORD PTR [256+rsp], xmm14
        vmovups   XMMWORD PTR [272+rsp], xmm13
        vmovups   XMMWORD PTR [288+rsp], xmm12
        vmovups   XMMWORD PTR [320+rsp], xmm11
        vmovups   XMMWORD PTR [304+rsp], xmm10
        vmovups   XMMWORD PTR [336+rsp], xmm9
        vmovups   XMMWORD PTR [352+rsp], xmm8
        vmovups   XMMWORD PTR [368+rsp], xmm7
        vmovups   XMMWORD PTR [384+rsp], xmm6
        vmovapd   xmm6, xmm1
        mov       QWORD PTR [416+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpshufd   xmm5, xmm0, 221
        and       r13, -64
        vmovq     xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28672]
        vmovq     xmm11, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28736]
        vpand     xmm15, xmm5, xmm12
        vandpd    xmm14, xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vpaddd    xmm10, xmm15, xmm11
        vorpd     xmm13, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vpsrld    xmm14, xmm10, 10
        vpslld    xmm12, xmm14, 3
        vpslld    xmm9, xmm14, 4
        vmovd     edx, xmm12
        vmovd     r8d, xmm9
        vmovq     xmm14, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28800]
        vmovq     xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28352]
        movsxd    rdx, edx
        vpaddd    xmm4, xmm5, xmm4
        vpextrd   ecx, xmm12, 1
        vpextrd   r9d, xmm9, 1
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovsd    xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rdx]
        vmovhpd   xmm7, xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rcx]
        vpsubd    xmm15, xmm5, xmm14
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r8]
        vpsrad    xmm9, xmm15, 20
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r9]
        vunpcklpd xmm11, xmm8, xmm10
        vunpckhpd xmm12, xmm8, xmm10
        vmovq     xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28864]
        vpaddd    xmm10, xmm9, xmm8
        vpshufd   xmm14, xmm10, 80
        vandpd    xmm15, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vsubpd    xmm10, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vmulpd    xmm14, xmm13, xmm7
        vaddpd    xmm11, xmm11, xmm10
        vmovupd   xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vandpd    xmm8, xmm13, xmm15
        vsubpd    xmm9, xmm13, xmm8
        vaddpd    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vmulpd    xmm8, xmm7, xmm8
        vmulpd    xmm7, xmm7, xmm9
        vsubpd    xmm14, xmm8, xmm14
        vaddpd    xmm9, xmm13, xmm11
        vaddpd    xmm8, xmm14, xmm7
        vsubpd    xmm14, xmm11, xmm9
        vaddpd    xmm7, xmm8, xmm9
        vaddpd    xmm11, xmm13, xmm14
        vsubpd    xmm10, xmm9, xmm7
        vaddpd    xmm14, xmm8, xmm10
        vaddpd    xmm9, xmm11, xmm14
        vaddpd    xmm14, xmm13, xmm8
        vaddpd    xmm9, xmm12, xmm9
        vmulpd    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vaddpd    xmm12, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vmulpd    xmm13, xmm14, xmm12
        vaddpd    xmm8, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vmulpd    xmm10, xmm14, xmm8
        vaddpd    xmm11, xmm10, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vmulpd    xmm12, xmm14, xmm11
        vaddpd    xmm13, xmm12, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vmulpd    xmm8, xmm14, xmm13
        vaddpd    xmm10, xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vmulpd    xmm14, xmm14, xmm10
        vaddpd    xmm9, xmm9, xmm14
        vaddpd    xmm13, xmm7, xmm9
        vsubpd    xmm7, xmm13, xmm7
        vsubpd    xmm14, xmm9, xmm7
        vandpd    xmm12, xmm13, xmm15
        vandpd    xmm7, xmm6, xmm15
        vmulpd    xmm15, xmm12, xmm7
        vsubpd    xmm8, xmm13, xmm12
        vsubpd    xmm9, xmm6, xmm7
        vmulpd    xmm7, xmm7, xmm8
        vmulpd    xmm12, xmm12, xmm9
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28416]
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28480]
        vpshufd   xmm3, xmm6, 221
        vpshufd   xmm11, xmm15, 221
        vpand     xmm3, xmm3, xmm1
        vpand     xmm11, xmm11, xmm1
        vpcmpgtd  xmm1, xmm2, xmm4
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28544]
        vpcmpgtd  xmm5, xmm3, xmm2
        vpcmpeqd  xmm4, xmm3, xmm2
        vpor      xmm2, xmm5, xmm4
        vmulpd    xmm4, xmm8, xmm9
        vmovq     xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28608]
        vpor      xmm13, xmm1, xmm2
        vpcmpgtd  xmm3, xmm11, xmm10
        vpcmpeqd  xmm5, xmm11, xmm10
        vpor      xmm10, xmm3, xmm5
        vpor      xmm11, xmm13, xmm10
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        vaddpd    xmm1, xmm13, xmm15
        vaddpd    xmm8, xmm4, xmm7
        vmulpd    xmm5, xmm6, xmm14
        vaddpd    xmm12, xmm8, xmm12
        vmovmskps edx, xmm11
        vpshufd   xmm4, xmm1, 136
        vmovq     xmm14, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28992]
        vpslld    xmm2, xmm4, 13
        vpand     xmm9, xmm4, xmm14
        vpslld    xmm8, xmm9, 4
        vmovd     r10d, xmm8
        vmovq     xmm14, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28928]
        vpaddd    xmm3, xmm2, xmm14
        vpextrd   r11d, xmm8, 1
        vsubpd    xmm1, xmm1, xmm13
        movsxd    r10, r10d
        movsxd    r11, r11d
        vpshufd   xmm7, xmm3, 80
        vsubpd    xmm15, xmm15, xmm1
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r10]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r11]
        vunpcklpd xmm2, xmm14, xmm3
        vunpckhpd xmm3, xmm14, xmm3
        vaddpd    xmm14, xmm12, xmm5
        vaddpd    xmm14, xmm15, xmm14
        vmulpd    xmm10, xmm14, xmm14
        vmulpd    xmm1, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vmulpd    xmm5, xmm10, xmm10
        vandpd    xmm4, xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vaddpd    xmm7, xmm1, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vmulpd    xmm8, xmm5, xmm7
        vmulpd    xmm9, xmm2, xmm8
        vaddpd    xmm13, xmm3, xmm9
        vmulpd    xmm3, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vmulpd    xmm14, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vaddpd    xmm11, xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        vmulpd    xmm3, xmm2, xmm14
        vmulpd    xmm12, xmm10, xmm11
        vmulpd    xmm15, xmm2, xmm12
        vaddpd    xmm1, xmm13, xmm15
        vaddpd    xmm5, xmm1, xmm3
        vaddpd    xmm2, xmm2, xmm5
        mov       QWORD PTR [424+rsp], r13
        vmulpd    xmm1, xmm4, xmm2
        and       edx, 3
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm6, XMMWORD PTR [384+rsp]
        vmovapd   xmm0, xmm1
        vmovups   xmm7, XMMWORD PTR [368+rsp]
        vmovups   xmm8, XMMWORD PTR [352+rsp]
        vmovups   xmm9, XMMWORD PTR [336+rsp]
        vmovups   xmm10, XMMWORD PTR [304+rsp]
        vmovups   xmm11, XMMWORD PTR [320+rsp]
        vmovups   xmm12, XMMWORD PTR [288+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [416+rsp]
        add       rsp, 440
        ret

.L_B1_3:

        vmovupd   XMMWORD PTR [r13], xmm0
        vmovupd   XMMWORD PTR [64+r13], xmm6
        vmovupd   XMMWORD PTR [128+r13], xmm1
        je        .L_B1_2

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
        cmp       ebx, 2
        jl        .L_B1_7

.L_B1_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm1, XMMWORD PTR [128+r13]
        jmp       .L_B1_2

.L_B1_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_pow2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_e9_B1_B3:
        .long   1603585
        .long   3462264
        .long   1599596
        .long   1538147
        .long   1476698
        .long   1415249
        .long   1288264
        .long   1357887
        .long   1230902
        .long   1169453
        .long   1108004
        .long   1701915
        .long   3604747

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_pow2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_pow2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_pow2_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_pow8_ha_z0

__jsvml_pow8_ha_z0:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L28:

        sub       rsp, 1400
        vgetmantpd zmm27, zmm0, 10 {sae}
        vgetexppd zmm24, zmm0 {sae}
        vfpclasspd k0, zmm0, 223
        vrcp14pd  zmm28, zmm27
        kmovw     r8d, k0
        vrndscalepd zmm30, zmm28, 88 {sae}
        mov       QWORD PTR [1384+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+768]
        and       r13, -64
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+832]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+128]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+256]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+384]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1152]
        vmulpd    zmm29, zmm27, zmm25 {rn-sae}
        vcmppd    k2, zmm30, zmm31, 17 {sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1024]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1536]
        vpsrlq    zmm22, zmm30, 47
        vfmsub231pd zmm25, zmm29, zmm30 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1408]
        vpsllq    zmm23, zmm22, 59
        vpermt2pd zmm5, zmm22, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+64]
        vpermt2pd zmm2, zmm22, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+192]
        vpmovq2m  k3, zmm23
        vpermt2pd zmm4, zmm22, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+320]
        vpermt2pd zmm3, zmm22, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+448]
        vblendmpd zmm29{k3}, zmm5, zmm2
        vmulpd    zmm22, zmm25, zmm25 {rn-sae}
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1088]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+960]
        vblendmpd zmm5{k3}, zmm4, zmm3
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1344]
        vfmadd231pd zmm23, zmm27, zmm25 {rn-sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1600]
        vmovaps   zmm26, zmm1
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+896]
        vfmadd231pd zmm27, zmm31, zmm25 {rn-sae}
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1920]
        vaddpd    zmm24{k2}, zmm24, zmm1 {rn-sae}
        vfpclasspd k1, zmm26, 153
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1216]
        vaddpd    zmm3, zmm29, zmm24 {rn-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1280]
        vfmadd231pd zmm1, zmm28, zmm25 {rn-sae}
        kmovw     eax, k1
        vfmadd231pd zmm4, zmm24, zmm25 {rn-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1472]
        vfmadd213pd zmm23, zmm22, zmm1 {rn-sae}
        vmulpd    zmm1, zmm22, zmm22 {rn-sae}
        vfmadd231pd zmm24, zmm30, zmm25 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1792]
        vfmadd213pd zmm4, zmm22, zmm24 {rn-sae}
        vmovaps   zmm28, zmm3
        or        r8d, eax
        vfmadd231pd zmm28, zmm2, zmm25 {rn-sae}
        vfmadd213pd zmm23, zmm1, zmm4 {rn-sae}
        vsubpd    zmm3, zmm28, zmm3 {rn-sae}
        vfmadd213pd zmm23, zmm22, zmm27 {rn-sae}
        vfmsub213pd zmm2, zmm25, zmm3 {rn-sae}
        vfmadd213pd zmm23, zmm25, zmm5 {rn-sae}
        vfnmadd231pd zmm2, zmm2, zmm25 {rn-sae}
        vmovaps   zmm4, zmm3
        vfnmadd213pd zmm4, zmm25, zmm28 {rn-sae}
        vsubpd    zmm22, zmm28, zmm4 {rn-sae}
        vfmsub213pd zmm25, zmm3, zmm22 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1664]
        vsubpd    zmm25, zmm2, zmm25 {rn-sae}
        vaddpd    zmm1, zmm23, zmm25 {rn-sae}
        vaddpd    zmm3, zmm4, zmm1 {rn-sae}
        vmulpd    zmm5, zmm3, zmm26 {rz-sae}
        vsubpd    zmm2, zmm3, zmm4 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+512]
        vfmsub213pd zmm3, zmm26, zmm5 {rz-sae}
        vsubpd    zmm23, zmm1, zmm2 {rn-sae}
        vfmadd213pd zmm23, zmm26, zmm3 {rz-sae}
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+640]
        vaddpd    zmm1, zmm5, zmm23 {rz-sae}
        vsubpd    zmm24, zmm1, zmm5 {rn-sae}
        vaddpd    zmm28, zmm1, zmm22 {rd-sae}
        vreducepd zmm25, zmm1, 65 {sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1856]
        vsubpd    zmm27, zmm23, zmm24 {rn-sae}
        vpermt2pd zmm4, zmm28, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+576]
        vpermt2pd zmm3, zmm28, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+704]
        vaddpd    zmm29, zmm25, zmm27 {rn-sae}
        vandpd    zmm2, zmm29, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1728]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+2112]
        vmulpd    zmm28, zmm2, zmm2 {rn-sae}
        vfmadd231pd zmm5, zmm30, zmm2 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+1984]
        vfmadd231pd zmm30, zmm31, zmm2 {rn-sae}
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dpow_ha_data_internal_avx512+2048]
        vfmadd213pd zmm5, zmm28, zmm30 {rn-sae}
        vfmadd231pd zmm29, zmm31, zmm2 {rn-sae}
        vfmadd213pd zmm5, zmm28, zmm29 {rn-sae}
        vfmadd213pd zmm5, zmm2, zmm3 {rn-sae}
        vfmadd213pd zmm5, zmm4, zmm4 {rn-sae}
        mov       QWORD PTR [1392+rsp], r13
        vscalefpd zmm1, zmm5, zmm1 {rn-sae}
        jne       .L_B2_3

.L_B2_2:

        mov       r13, QWORD PTR [1384+rsp]
        vmovaps   zmm0, zmm1
        add       rsp, 1400
        ret

.L_B2_3:

        vstmxcsr  DWORD PTR [1376+rsp]

.L_B2_4:

        movzx     edx, WORD PTR [1376+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B2_6

.L_B2_5:

        mov       DWORD PTR [1376+rsp], eax
        vldmxcsr  DWORD PTR [1376+rsp]

.L_B2_6:

        vmovups   ZMMWORD PTR [r13], zmm0
        vmovups   ZMMWORD PTR [64+r13], zmm26
        vmovups   ZMMWORD PTR [128+r13], zmm1
        test      r8d, r8d
        jne       .L_B2_11

.L_B2_7:

        cmp       edx, eax
        je        .L_B2_2

.L_B2_8:

        vstmxcsr  DWORD PTR [1376+rsp]
        mov       eax, DWORD PTR [1376+rsp]

.L_B2_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1376+rsp], eax
        vldmxcsr  DWORD PTR [1376+rsp]
        jmp       .L_B2_2

.L_B2_11:

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

.L_B2_12:

        bt        edi, ebx
        jc        .L_B2_15

.L_B2_13:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B2_12

.L_B2_14:

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
        jmp       .L_B2_7

.L_B2_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B2_13
        .align    16, 0x90

.L_B2_16:

        .section .drectve
        .ascii " -export \"__jsvml_pow8_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow8_ha_z0_B1_B9:
        .long   276481
        .long   11392056
        .long   11469067

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_11
        .rva    _unwind___jsvml_pow8_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow8_ha_z0_B11_B15:
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

        .rva    .L_B2_11
        .rva    .L_B2_16
        .rva    _unwind___jsvml_pow8_ha_z0_B11_B15

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_pow1_ha_ex

__jsvml_pow1_ha_ex:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L79:

        sub       rsp, 376
        mov       r8d, 1048064
        mov       r9d, 512
        mov       edx, 2147483647
        movups    XMMWORD PTR [288+rsp], xmm12
        mov       ecx, 2139095040
        movups    XMMWORD PTR [320+rsp], xmm10
        lea       rax, QWORD PTR [rip+__ImageBase]
        pshufd    xmm10, xmm0, 85
        movd      xmm12, r8d
        pand      xmm12, xmm10
        movd      xmm5, r9d
        paddd     xmm12, xmm5
        movd      xmm2, ecx
        movups    XMMWORD PTR [256+rsp], xmm14
        movaps    xmm14, xmm1
        movd      xmm1, edx
        mov       edx, 1072168448
        movups    XMMWORD PTR [240+rsp], xmm15
        psrld     xmm12, 10
        movups    XMMWORD PTR [272+rsp], xmm13
        movdqa    xmm3, xmm12
        movups    XMMWORD PTR [304+rsp], xmm11
        mov       ecx, 1094189056
        movups    XMMWORD PTR [336+rsp], xmm9
        pslld     xmm3, 3
        movups    XMMWORD PTR [352+rsp], xmm8
        movd      xmm15, edx
        mov       QWORD PTR [232+rsp], r13
        pslld     xmm12, 4
        movsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        movd      xmm13, ecx
        movsd     xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        andps     xmm9, xmm0
        movd      r10d, xmm3
        orps      xmm9, xmm4
        movdqa    xmm4, xmm10
        psubd     xmm4, xmm15
        movaps    xmm15, xmm9
        psrad     xmm4, 20
        mov       r9d, 1048576
        movsxd    r10, r10d
        paddd     xmm4, xmm13
        movsd     xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        mov       edx, 2097152
        pshufd    xmm13, xmm4, 0
        mov       r8d, 1083129855
        movsd     xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        andps     xmm13, xmm8
        movd      r11d, xmm12
        movaps    xmm5, xmm4
        andps     xmm5, xmm9
        subsd     xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        mulsd     xmm9, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        subsd     xmm15, xmm5
        mulsd     xmm5, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        mulsd     xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        subsd     xmm5, xmm9
        movsxd    r11, r11d
        movaps    xmm8, xmm9
        movsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        mov       ecx, 1072693248
        pshufd    xmm11, xmm14, 85
        lea       r13, QWORD PTR [95+rsp]
        pand      xmm11, xmm1
        and       r13, -64
        mov       QWORD PTR [368+rsp], r13
        addsd     xmm15, xmm5
        addsd     xmm13, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r11]
        addsd     xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        movaps    xmm3, xmm13
        movaps    xmm5, xmm4
        andps     xmm4, xmm14
        addsd     xmm3, xmm8
        movaps    xmm12, xmm3
        subsd     xmm13, xmm3
        addsd     xmm12, xmm15
        addsd     xmm13, xmm8
        addsd     xmm8, xmm15
        subsd     xmm3, xmm12
        mulsd     xmm9, xmm8
        addsd     xmm3, xmm15
        addsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        addsd     xmm3, xmm13
        mulsd     xmm9, xmm8
        addsd     xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8264+rax+r11]
        addsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        mulsd     xmm9, xmm8
        movd      xmm15, r8d
        mov       r8d, 127
        addsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        mulsd     xmm9, xmm8
        addsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        mulsd     xmm9, xmm8
        addsd     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        mulsd     xmm9, xmm8
        movaps    xmm8, xmm12
        addsd     xmm9, xmm3
        addsd     xmm8, xmm9
        movaps    xmm13, xmm8
        andps     xmm5, xmm8
        subsd     xmm13, xmm12
        movaps    xmm12, xmm14
        subsd     xmm12, xmm4
        subsd     xmm8, xmm5
        subsd     xmm9, xmm13
        movaps    xmm13, xmm4
        mulsd     xmm13, xmm5
        mulsd     xmm4, xmm8
        pshufd    xmm3, xmm13, 85
        pand      xmm3, xmm1
        movd      xmm1, r9d
        paddd     xmm10, xmm1
        movd      xmm1, edx
        pcmpgtd   xmm1, xmm10
        movdqa    xmm10, xmm11
        pcmpgtd   xmm10, xmm2
        pcmpeqd   xmm11, xmm2
        movdqa    xmm2, xmm3
        pcmpeqd   xmm3, xmm15
        pcmpgtd   xmm2, xmm15
        movaps    xmm15, xmm12
        mulsd     xmm15, xmm8
        movaps    xmm8, xmm13
        mulsd     xmm12, xmm5
        addsd     xmm4, xmm15
        movsd     xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        por       xmm10, xmm11
        por       xmm1, xmm10
        movaps    xmm10, xmm14
        mulsd     xmm10, xmm9
        addsd     xmm8, xmm5
        addsd     xmm12, xmm4
        pshufd    xmm4, xmm8, 0
        por       xmm2, xmm3
        por       xmm1, xmm2
        movd      xmm3, r8d
        movmskps  edx, xmm1
        movdqa    xmm1, xmm4
        pand      xmm4, xmm3
        pslld     xmm1, 13
        movsd     xmm3, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        movd      xmm9, ecx
        paddd     xmm1, xmm9
        pslld     xmm4, 4
        pshufd    xmm15, xmm1, 0
        and       edx, 1
        movsd     xmm1, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        subsd     xmm8, xmm5
        addsd     xmm12, xmm10
        movd      r9d, xmm4
        subsd     xmm13, xmm8
        movsxd    r9, r9d
        addsd     xmm12, xmm13
        movaps    xmm13, xmm12
        mulsd     xmm13, xmm12
        mulsd     xmm3, xmm12
        mulsd     xmm1, xmm12
        addsd     xmm3, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        addsd     xmm1, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        movaps    xmm11, xmm13
        mulsd     xmm11, xmm13
        mulsd     xmm1, xmm13
        mulsd     xmm3, xmm11
        mulsd     xmm1, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        mulsd     xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        movsd     xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        andps     xmm15, xmm2
        addsd     xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24712+rax+r9]
        movsd     xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        addsd     xmm3, xmm1
        mulsd     xmm2, xmm12
        mulsd     xmm2, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        addsd     xmm3, xmm2
        addsd     xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        mulsd     xmm3, xmm15
        jne       .L_B3_3

.L_B3_2:

        movups    xmm8, XMMWORD PTR [352+rsp]
        movaps    xmm0, xmm3
        movups    xmm9, XMMWORD PTR [336+rsp]
        movups    xmm10, XMMWORD PTR [320+rsp]
        movups    xmm11, XMMWORD PTR [304+rsp]
        movups    xmm12, XMMWORD PTR [288+rsp]
        movups    xmm13, XMMWORD PTR [272+rsp]
        movups    xmm14, XMMWORD PTR [256+rsp]
        movups    xmm15, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 376
        ret

.L_B3_3:

        movsd     QWORD PTR [r13], xmm0
        movsd     QWORD PTR [64+r13], xmm14
        movsd     QWORD PTR [128+r13], xmm3
        jne       .L_B3_6

.L_B3_4:

        movsd     xmm3, QWORD PTR [128+r13]
        jmp       .L_B3_2

.L_B3_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B3_4
        .align    16, 0x90

.L_B3_7:

        .section .drectve
        .ascii " -export \"__jsvml_pow1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow1_ha_ex_B1_B6:
        .long   1359105
        .long   1955005
        .long   1476784
        .long   1415330
        .long   1292436
        .long   1169542
        .long   1046647
        .long   1108065
        .long   1353779
        .long   1230885
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_7
        .rva    _unwind___jsvml_pow1_ha_ex_B1_B6

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_pow2_ha_ex

__jsvml_pow2_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L98:

        sub       rsp, 440
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [272+rsp], xmm15
        movups    XMMWORD PTR [288+rsp], xmm14
        movups    XMMWORD PTR [304+rsp], xmm13
        movups    XMMWORD PTR [320+rsp], xmm12
        movups    XMMWORD PTR [336+rsp], xmm11
        movups    XMMWORD PTR [352+rsp], xmm10
        movaps    xmm10, xmm1
        movups    XMMWORD PTR [368+rsp], xmm9
        movups    XMMWORD PTR [384+rsp], xmm8
        movups    XMMWORD PTR [400+rsp], xmm7
        movups    XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [416+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        pshufd    xmm1, xmm0, 221
        and       r13, -64
        movq      xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28672]
        movq      xmm11, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28736]
        pand      xmm13, xmm1
        paddd     xmm13, xmm11
        psrld     xmm13, 10
        movdqa    xmm9, xmm13
        pslld     xmm13, 4
        movd      r8d, xmm13
        pslld     xmm9, 3
        pshufd    xmm7, xmm13, 1
        pshufd    xmm12, xmm9, 1
        movd      edx, xmm9
        movd      r9d, xmm7
        movups    xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        movups    XMMWORD PTR [32+rsp], xmm0
        andps     xmm8, xmm0
        movd      ecx, xmm12
        movdqa    xmm12, xmm1
        movq      xmm0, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28800]
        psubd     xmm12, xmm0
        movsxd    r8, r8d
        psrad     xmm12, 20
        movsxd    rdx, edx
        movsxd    r9, r9d
        movsxd    rcx, ecx
        movq      xmm11, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28864]
        movups    xmm9, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r8]
        paddd     xmm12, xmm11
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        movaps    xmm13, xmm9
        orps      xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        movsd     xmm14, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rdx]
        movups    xmm15, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r9]
        pshufd    xmm0, xmm12, 80
        movaps    xmm12, xmm7
        movhpd    xmm14, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rcx]
        andps     xmm12, xmm8
        unpcklpd  xmm13, xmm15
        unpckhpd  xmm9, xmm15
        movaps    xmm15, xmm8
        subpd     xmm15, xmm12
        mulpd     xmm8, xmm14
        mulpd     xmm12, xmm14
        mulpd     xmm14, xmm15
        subpd     xmm12, xmm8
        andps     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        movaps    xmm15, xmm7
        subpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        addpd     xmm12, xmm14
        addpd     xmm13, xmm0
        movups    xmm11, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        andps     xmm7, xmm10
        addpd     xmm11, xmm8
        movaps    xmm14, xmm11
        movaps    xmm8, xmm12
        addpd     xmm14, xmm13
        subpd     xmm13, xmm14
        addpd     xmm8, xmm14
        addpd     xmm13, xmm11
        addpd     xmm11, xmm12
        subpd     xmm14, xmm8
        movups    xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        mulpd     xmm0, xmm11
        addpd     xmm14, xmm12
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        addpd     xmm13, xmm14
        mulpd     xmm0, xmm11
        addpd     xmm9, xmm13
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        mulpd     xmm0, xmm11
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        mulpd     xmm0, xmm11
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        mulpd     xmm0, xmm11
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        mulpd     xmm11, xmm0
        addpd     xmm9, xmm11
        movaps    xmm0, xmm8
        movaps    xmm14, xmm10
        addpd     xmm0, xmm9
        subpd     xmm14, xmm7
        movaps    xmm11, xmm0
        andps     xmm15, xmm0
        subpd     xmm11, xmm8
        subpd     xmm0, xmm15
        subpd     xmm9, xmm11
        movaps    xmm8, xmm15
        movaps    xmm12, xmm0
        mulpd     xmm8, xmm7
        mulpd     xmm12, xmm14
        mulpd     xmm7, xmm0
        mulpd     xmm15, xmm14
        addpd     xmm12, xmm7
        mulpd     xmm9, xmm10
        addpd     xmm12, xmm15
        movq      xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28480]
        pshufd    xmm3, xmm10, 221
        movq      xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28352]
        pand      xmm3, xmm5
        movq      xmm6, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28544]
        paddd     xmm1, xmm2
        pshufd    xmm13, xmm8, 221
        movdqa    xmm2, xmm3
        pand      xmm13, xmm5
        pcmpgtd   xmm2, xmm6
        pcmpeqd   xmm3, xmm6
        movq      xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28608]
        por       xmm2, xmm3
        movq      xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28416]
        movdqa    xmm3, xmm13
        pcmpgtd   xmm4, xmm1
        pcmpgtd   xmm3, xmm5
        pcmpeqd   xmm13, xmm5
        por       xmm4, xmm2
        por       xmm3, xmm13
        por       xmm4, xmm3
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        movaps    xmm5, xmm3
        addpd     xmm5, xmm8
        addpd     xmm12, xmm9
        movmskps  edx, xmm4
        pshufd    xmm0, xmm5, 136
        subpd     xmm5, xmm3
        subpd     xmm8, xmm5
        addpd     xmm8, xmm12
        movaps    xmm7, xmm8
        and       edx, 3
        mulpd     xmm7, xmm8
        movups    xmm9, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        movaps    xmm12, xmm7
        mulpd     xmm9, xmm8
        mulpd     xmm12, xmm7
        addpd     xmm9, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        movups    xmm6, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        mulpd     xmm6, xmm8
        mulpd     xmm12, xmm9
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        movq      xmm1, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28992]
        pand      xmm1, xmm0
        pslld     xmm0, 13
        movq      xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28928]
        pslld     xmm1, 4
        movd      r10d, xmm1
        paddd     xmm0, xmm4
        pshufd    xmm4, xmm1, 1
        movups    xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        movd      r11d, xmm4
        pshufd    xmm0, xmm0, 80
        andps     xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        movsxd    r10, r10d
        movsxd    r11, r11d
        mulpd     xmm7, xmm6
        mulpd     xmm13, xmm8
        movups    xmm11, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r10]
        movups    xmm2, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r11]
        movaps    xmm14, xmm11
        unpcklpd  xmm14, xmm2
        mulpd     xmm12, xmm14
        mulpd     xmm7, xmm14
        mulpd     xmm13, xmm14
        unpckhpd  xmm11, xmm2
        addpd     xmm11, xmm12
        addpd     xmm11, xmm7
        addpd     xmm11, xmm13
        addpd     xmm14, xmm11
        mov       QWORD PTR [424+rsp], r13
        mulpd     xmm0, xmm14
        jne       .L_B4_3

.L_B4_2:

        movups    xmm6, XMMWORD PTR [256+rsp]
        movups    xmm7, XMMWORD PTR [400+rsp]
        movups    xmm8, XMMWORD PTR [384+rsp]
        movups    xmm9, XMMWORD PTR [368+rsp]
        movups    xmm10, XMMWORD PTR [352+rsp]
        movups    xmm11, XMMWORD PTR [336+rsp]
        movups    xmm12, XMMWORD PTR [320+rsp]
        movups    xmm13, XMMWORD PTR [304+rsp]
        movups    xmm14, XMMWORD PTR [288+rsp]
        movups    xmm15, XMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [416+rsp]
        add       rsp, 440
        ret

.L_B4_3:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm10
        movups    XMMWORD PTR [128+r13], xmm0
        je        .L_B4_2

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
        cmp       ebx, 2
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_pow2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_ex_B1_B3:
        .long   1603073
        .long   3462262
        .long   1075310
        .long   1669222
        .long   1607774
        .long   1546325
        .long   1484872
        .long   1423423
        .long   1361974
        .long   1300525
        .long   1239076
        .long   1177627
        .long   3604747

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_pow2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_pow2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_pow2_ha_ex_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_pow4_ha_e9

__jsvml_pow4_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L127:

        sub       rsp, 616
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [464+rsp], ymm6
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vmovups   YMMWORD PTR [432+rsp], ymm14
        vmovups   YMMWORD PTR [528+rsp], ymm13
        vmovups   YMMWORD PTR [560+rsp], ymm12
        vmovups   YMMWORD PTR [304+rsp], ymm11
        vmovups   YMMWORD PTR [496+rsp], ymm9
        vmovups   YMMWORD PTR [368+rsp], ymm8
        vmovups   YMMWORD PTR [336+rsp], ymm7
        vmovapd   ymm6, ymm1
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [143+rsp]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28416]
        and       r13, -64
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28544]
        mov       QWORD PTR [600+rsp], r13
        vextractf128 xmm5, ymm0, 1
        vshufps   xmm15, xmm0, xmm5, 221
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28480]
        vandpd    ymm2, ymm0, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vorpd     ymm7, ymm2, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vextractf128 xmm3, ymm6, 1
        vshufps   xmm8, xmm6, xmm3, 221
        vpaddd    xmm3, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28352]
        vpcmpgtd  xmm4, xmm4, xmm3
        vpand     xmm3, xmm8, xmm5
        vandps    xmm8, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28672]
        vpaddd    xmm13, xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28736]
        vpsrld    xmm2, xmm13, 10
        vpslld    xmm14, xmm2, 3
        vpslld    xmm2, xmm2, 4
        vmovd     eax, xmm14
        vmovd     r10d, xmm2
        vpsubd    xmm15, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28800]
        movsxd    rax, eax
        vpextrd   ecx, xmm14, 1
        movsxd    rcx, ecx
        vpextrd   r8d, xmm14, 2
        vpextrd   r11d, xmm2, 1
        vmovsd    xmm9, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+rax]
        movsxd    r8, r8d
        vpextrd   r9d, xmm14, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        vmovhpd   xmm12, xmm9, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+rcx]
        movsxd    r9, r9d
        vpextrd   eax, xmm2, 2
        vpextrd   ecx, xmm2, 3
        movsxd    rax, eax
        movsxd    rcx, ecx
        vmovsd    xmm11, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+r8]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+r10]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+r11]
        vmovhpd   xmm8, xmm11, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+r9]
        vinsertf128 ymm9, ymm12, xmm8, 1
        vpsrad    xmm8, xmm15, 20
        vinsertf128 ymm2, ymm13, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+rax], 1
        vinsertf128 ymm11, ymm14, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+rcx], 1
        vunpcklpd ymm12, ymm2, ymm11
        vunpckhpd ymm14, ymm2, ymm11
        vpaddd    xmm2, xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28864]
        vpshufd   xmm13, xmm2, 80
        vpshufd   xmm15, xmm2, 250
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vinsertf128 ymm11, ymm13, xmm15, 1
        vandpd    ymm8, ymm11, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vandpd    ymm11, ymm7, ymm2
        vsubpd    ymm13, ymm8, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vsubpd    ymm8, ymm7, ymm11
        vmulpd    ymm7, ymm7, ymm9
        vmulpd    ymm11, ymm9, ymm11
        vmulpd    ymm9, ymm9, ymm8
        vaddpd    ymm15, ymm7, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vsubpd    ymm7, ymm11, ymm7
        vaddpd    ymm13, ymm12, ymm13
        vaddpd    ymm8, ymm7, ymm9
        vaddpd    ymm12, ymm15, ymm13
        vaddpd    ymm7, ymm8, ymm12
        vsubpd    ymm9, ymm13, ymm12
        vsubpd    ymm11, ymm12, ymm7
        vaddpd    ymm13, ymm15, ymm9
        vaddpd    ymm9, ymm8, ymm11
        vaddpd    ymm12, ymm13, ymm9
        vaddpd    ymm11, ymm14, ymm12
        vaddpd    ymm14, ymm15, ymm8
        vmulpd    ymm8, ymm14, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vaddpd    ymm15, ymm8, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vmulpd    ymm8, ymm14, ymm15
        vaddpd    ymm13, ymm8, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vmulpd    ymm9, ymm14, ymm13
        vaddpd    ymm12, ymm9, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vmulpd    ymm15, ymm14, ymm12
        vaddpd    ymm8, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vmulpd    ymm13, ymm14, ymm8
        vaddpd    ymm9, ymm13, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vmulpd    ymm14, ymm14, ymm9
        vaddpd    ymm8, ymm11, ymm14
        vaddpd    ymm13, ymm7, ymm8
        vandpd    ymm12, ymm13, ymm2
        vsubpd    ymm7, ymm13, ymm7
        vsubpd    ymm9, ymm13, ymm12
        vsubpd    ymm15, ymm8, ymm7
        vandpd    ymm13, ymm6, ymm2
        vmulpd    ymm2, ymm12, ymm13
        vsubpd    ymm8, ymm6, ymm13
        vmulpd    ymm13, ymm13, ymm9
        vextractf128 xmm14, ymm2, 1
        vshufps   xmm7, xmm2, xmm14, 221
        vmulpd    ymm14, ymm9, ymm8
        vpand     xmm11, xmm7, xmm5
        vmulpd    ymm8, ymm12, ymm8
        vpcmpgtd  xmm5, xmm3, xmm1
        vpcmpeqd  xmm1, xmm3, xmm1
        vmovups   xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28608]
        vpor      xmm5, xmm5, xmm1
        vpor      xmm3, xmm4, xmm5
        vpcmpgtd  xmm4, xmm11, xmm7
        vpcmpeqd  xmm5, xmm11, xmm7
        vaddpd    ymm9, ymm14, ymm13
        vpor      xmm4, xmm4, xmm5
        vpor      xmm1, xmm3, xmm4
        vmulpd    ymm13, ymm6, ymm15
        vaddpd    ymm8, ymm9, ymm8
        vmovmskps eax, xmm1
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        vaddpd    ymm12, ymm9, ymm2
        vextractf128 xmm7, ymm12, 1
        vsubpd    ymm9, ymm12, ymm9
        vshufps   xmm15, xmm12, xmm7, 136
        vandps    xmm11, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28992]
        vpslld    xmm5, xmm15, 13
        vpslld    xmm14, xmm11, 4
        vmovd     r8d, xmm14
        vpaddd    xmm4, xmm5, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28928]
        vpshufd   xmm3, xmm4, 80
        vpextrd   r9d, xmm14, 1
        movsxd    r8, r8d
        movsxd    r9, r9d
        vpextrd   r10d, xmm14, 2
        vpextrd   ecx, xmm14, 3
        movsxd    r10, r10d
        movsxd    rcx, ecx
        vmovupd   xmm11, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r8]
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r9]
        vpshufd   xmm1, xmm4, 250
        vsubpd    ymm2, ymm2, ymm9
        vinsertf128 ymm14, ymm11, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r10], 1
        vinsertf128 ymm4, ymm15, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+rcx], 1
        vinsertf128 ymm7, ymm3, xmm1, 1
        vunpcklpd ymm3, ymm14, ymm4
        vunpckhpd ymm1, ymm14, ymm4
        vaddpd    ymm4, ymm8, ymm13
        vaddpd    ymm4, ymm2, ymm4
        vmulpd    ymm12, ymm4, ymm4
        vmulpd    ymm2, ymm4, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vandpd    ymm5, ymm7, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vmulpd    ymm7, ymm12, ymm12
        vaddpd    ymm8, ymm2, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vmulpd    ymm9, ymm7, ymm8
        vmulpd    ymm11, ymm3, ymm9
        vaddpd    ymm15, ymm1, ymm11
        vmulpd    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vmulpd    ymm4, ymm4, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vaddpd    ymm13, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        vmulpd    ymm7, ymm3, ymm4
        vmulpd    ymm14, ymm12, ymm13
        vmulpd    ymm1, ymm3, ymm14
        vaddpd    ymm2, ymm15, ymm1
        vaddpd    ymm8, ymm2, ymm7
        vaddpd    ymm3, ymm3, ymm8
        vmulpd    ymm1, ymm5, ymm3
        test      eax, eax
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [464+rsp]
        vmovups   ymm7, YMMWORD PTR [336+rsp]
        vmovups   ymm8, YMMWORD PTR [368+rsp]
        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm11, YMMWORD PTR [304+rsp]
        vmovups   ymm12, YMMWORD PTR [560+rsp]
        vmovups   ymm13, YMMWORD PTR [528+rsp]
        vmovups   ymm14, YMMWORD PTR [432+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [592+rsp]
        vmovapd   ymm0, ymm1
        add       rsp, 616
        ret

.L_B5_3:

        vmovupd   YMMWORD PTR [r13], ymm0
        vmovupd   YMMWORD PTR [64+r13], ymm6
        vmovupd   YMMWORD PTR [128+r13], ymm1

.L_B5_6:

        xor       edx, edx
        vmovups   YMMWORD PTR [32+rsp], ymm10
        mov       QWORD PTR [72+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [64+rsp], rsi
        mov       esi, eax

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm10, YMMWORD PTR [32+rsp]
        vmovupd   ymm1, YMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [72+rsp]
        mov       rsi, QWORD PTR [64+rsp]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_pow4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow4_ha_e9_B1_B3:
        .long   1470209
        .long   4904047
        .long   1407075
        .long   1542234
        .long   2070609
        .long   1292360
        .long   2345023
        .long   2218038
        .long   1828909
        .long   1701924
        .long   1927195
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_pow4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow4_ha_e9_B6_B10:
        .long   398369
        .long   549908
        .long   603149
        .long   174088
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_pow4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_pow4_ha_e9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_pow1_ha_e9

__jsvml_pow1_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L154:

        sub       rsp, 376
        mov       edx, 2147483647
        mov       r8d, 1048064
        mov       r9d, 512
        mov       ecx, 2139095040
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [272+rsp], xmm9
        vmovd     xmm9, edx
        mov       edx, 1072168448
        vmovups   XMMWORD PTR [336+rsp], xmm8
        vmovd     xmm8, r8d
        vpshufd   xmm3, xmm0, 85
        mov       r8d, 1083129855
        vmovups   XMMWORD PTR [288+rsp], xmm15
        vmovups   XMMWORD PTR [304+rsp], xmm14
        vpand     xmm14, xmm3, xmm8
        vmovups   XMMWORD PTR [320+rsp], xmm13
        vmovd     xmm8, edx
        vmovups   XMMWORD PTR [352+rsp], xmm12
        vmovd     xmm12, r9d
        vmovups   XMMWORD PTR [256+rsp], xmm7
        vmovapd   xmm7, xmm1
        vmovups   XMMWORD PTR [240+rsp], xmm6
        vmovd     xmm1, ecx
        mov       QWORD PTR [232+rsp], r13
        mov       ecx, 1094189056
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vpaddd    xmm4, xmm14, xmm12
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vandpd    xmm5, xmm0, xmm15
        vpsrld    xmm6, xmm4, 10
        vorpd     xmm15, xmm5, xmm13
        vpslld    xmm5, xmm6, 3
        vpsubd    xmm14, xmm3, xmm8
        vmovd     r10d, xmm5
        vpsrad    xmm12, xmm14, 20
        vmovd     xmm4, ecx
        vpslld    xmm13, xmm6, 4
        vpaddd    xmm5, xmm12, xmm4
        vmovd     r11d, xmm13
        mov       r9d, 1048576
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vpshufd   xmm6, xmm5, 0
        movsxd    r10, r10d
        vandpd    xmm8, xmm6, xmm13
        movsxd    r11, r11d
        mov       edx, 2097152
        vpshufd   xmm2, xmm7, 85
        mov       ecx, 1072693248
        vpand     xmm2, xmm2, xmm9
        lea       r13, QWORD PTR [95+rsp]
        vmulsd    xmm6, xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        and       r13, -64
        vsubsd    xmm12, xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vaddsd    xmm4, xmm6, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vandpd    xmm5, xmm15, xmm8
        mov       QWORD PTR [368+rsp], r13
        vsubsd    xmm14, xmm15, xmm5
        vmulsd    xmm15, xmm5, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        vsubsd    xmm5, xmm15, xmm6
        vmulsd    xmm15, xmm14, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        vaddsd    xmm14, xmm12, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r11]
        vaddsd    xmm13, xmm15, xmm5
        vaddsd    xmm15, xmm14, xmm4
        vaddsd    xmm6, xmm15, xmm13
        vsubsd    xmm12, xmm14, xmm15
        vsubsd    xmm5, xmm15, xmm6
        vaddsd    xmm12, xmm12, xmm4
        vaddsd    xmm14, xmm5, xmm13
        vaddsd    xmm15, xmm14, xmm12
        vaddsd    xmm5, xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8264+rax+r11]
        vaddsd    xmm15, xmm4, xmm13
        vmovsd    xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vmulsd    xmm13, xmm4, xmm15
        vaddsd    xmm14, xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vmulsd    xmm12, xmm14, xmm15
        vaddsd    xmm4, xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vmulsd    xmm13, xmm4, xmm15
        vaddsd    xmm14, xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vmulsd    xmm12, xmm14, xmm15
        vaddsd    xmm4, xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vmulsd    xmm13, xmm4, xmm15
        vaddsd    xmm14, xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vmulsd    xmm15, xmm14, xmm15
        vandpd    xmm14, xmm7, xmm8
        vaddsd    xmm5, xmm15, xmm5
        vaddsd    xmm15, xmm6, xmm5
        vsubsd    xmm6, xmm15, xmm6
        vsubsd    xmm6, xmm5, xmm6
        vandpd    xmm5, xmm15, xmm8
        vmulsd    xmm8, xmm14, xmm5
        vsubsd    xmm4, xmm15, xmm5
        vsubsd    xmm15, xmm7, xmm14
        vmulsd    xmm14, xmm14, xmm4
        vpshufd   xmm13, xmm8, 85
        vpand     xmm12, xmm13, xmm9
        vmovd     xmm9, r9d
        vpaddd    xmm9, xmm3, xmm9
        vmovd     xmm3, edx
        vpcmpgtd  xmm9, xmm3, xmm9
        vpcmpgtd  xmm3, xmm2, xmm1
        vpcmpeqd  xmm1, xmm2, xmm1
        vmovd     xmm13, r8d
        vpor      xmm2, xmm3, xmm1
        vpcmpgtd  xmm1, xmm12, xmm13
        vpor      xmm2, xmm9, xmm2
        vpcmpeqd  xmm13, xmm12, xmm13
        vmulsd    xmm9, xmm15, xmm4
        vpor      xmm12, xmm1, xmm13
        vmulsd    xmm15, xmm15, xmm5
        vmulsd    xmm13, xmm7, xmm6
        vaddsd    xmm4, xmm14, xmm9
        vpor      xmm3, xmm2, xmm12
        vmovd     xmm6, ecx
        vmovsd    xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        mov       r8d, 127
        vmovmskps edx, xmm3
        vaddsd    xmm14, xmm8, xmm12
        vaddsd    xmm1, xmm15, xmm4
        vsubsd    xmm9, xmm14, xmm12
        vpshufd   xmm4, xmm14, 0
        vmovd     xmm2, r8d
        vpslld    xmm5, xmm4, 13
        vpand     xmm3, xmm4, xmm2
        vpaddd    xmm15, xmm5, xmm6
        vpslld    xmm4, xmm3, 4
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vpshufd   xmm5, xmm15, 0
        vandpd    xmm15, xmm5, xmm6
        vsubsd    xmm5, xmm8, xmm9
        vaddsd    xmm8, xmm1, xmm13
        vmovd     r9d, xmm4
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vaddsd    xmm5, xmm8, xmm5
        vmulsd    xmm6, xmm5, xmm5
        vmulsd    xmm2, xmm1, xmm5
        vmulsd    xmm4, xmm6, xmm6
        vaddsd    xmm3, xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vmovsd    xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vmulsd    xmm13, xmm12, xmm5
        vmulsd    xmm8, xmm3, xmm4
        vaddsd    xmm14, xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        movsxd    r9, r9d
        vmulsd    xmm6, xmm14, xmm6
        vmulsd    xmm9, xmm8, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vmulsd    xmm2, xmm6, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vaddsd    xmm1, xmm9, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24712+rax+r9]
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vaddsd    xmm4, xmm1, xmm2
        vmulsd    xmm5, xmm3, xmm5
        vmulsd    xmm6, xmm5, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vaddsd    xmm8, xmm4, xmm6
        vaddsd    xmm9, xmm8, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vmulsd    xmm1, xmm9, xmm15
        and       edx, 1
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [240+rsp]
        vmovapd   xmm0, xmm1
        vmovups   xmm7, XMMWORD PTR [256+rsp]
        vmovups   xmm8, XMMWORD PTR [336+rsp]
        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovups   xmm12, XMMWORD PTR [352+rsp]
        vmovups   xmm13, XMMWORD PTR [320+rsp]
        vmovups   xmm14, XMMWORD PTR [304+rsp]
        vmovups   xmm15, XMMWORD PTR [288+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 376
        ret

.L_B6_3:

        vmovsd    QWORD PTR [r13], xmm0
        vmovsd    QWORD PTR [64+r13], xmm7
        vmovsd    QWORD PTR [128+r13], xmm1
        jne       .L_B6_6

.L_B6_4:

        vmovsd    xmm1, QWORD PTR [128+r13]
        jmp       .L_B6_2

.L_B6_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B6_4
        .align    16, 0x90

.L_B6_7:

        .section .drectve
        .ascii " -export \"__jsvml_pow1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow1_ha_e9_B1_B6:
        .long   1353473
        .long   1954983
        .long   1009819
        .long   1079438
        .long   1493120
        .long   1366131
        .long   1304677
        .long   1243228
        .long   1411139
        .long   1153073
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_pow1_ha_e9_B1_B6

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_pow4_ha_l9

__jsvml_pow4_ha_l9:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L173:

        sub       rsp, 616
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [304+rsp], ymm15
        vmovups   YMMWORD PTR [336+rsp], ymm14
        vmovups   YMMWORD PTR [464+rsp], ymm13
        vmovups   YMMWORD PTR [496+rsp], ymm12
        vmovups   YMMWORD PTR [560+rsp], ymm10
        vmovups   YMMWORD PTR [528+rsp], ymm9
        vmovups   YMMWORD PTR [368+rsp], ymm8
        vmovups   YMMWORD PTR [400+rsp], ymm7
        vmovups   YMMWORD PTR [432+rsp], ymm6
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [143+rsp]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28416]
        and       r13, -64
        vmovapd   ymm14, ymm1
        vmovups   xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28480]
        vmovups   xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28544]
        mov       QWORD PTR [600+rsp], r13
        vextracti128 xmm5, ymm0, 1
        vshufps   xmm6, xmm0, xmm5, 221
        vandps    xmm12, xmm6, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28672]
        vpaddd    xmm13, xmm12, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28736]
        vpaddd    xmm3, xmm6, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28352]
        vpsrld    xmm5, xmm13, 10
        vpcmpgtd  xmm10, xmm4, xmm3
        vpslld    xmm3, xmm5, 3
        vmovd     eax, xmm3
        vpslld    xmm12, xmm5, 4
        vmovd     r10d, xmm12
        vpsubd    xmm6, xmm6, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28800]
        movsxd    rax, eax
        vpextrd   ecx, xmm3, 1
        movsxd    rcx, ecx
        vpextrd   r8d, xmm3, 2
        vpextrd   r11d, xmm12, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm3, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    r9, r9d
        vandpd    ymm15, ymm0, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vorpd     ymm1, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vmovsd    xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+r8]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+r10]
        vmovhpd   xmm13, xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+r9]
        vextracti128 xmm2, ymm14, 1
        vshufps   xmm9, xmm14, xmm2, 221
        vmovsd    xmm2, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+rax]
        vpand     xmm9, xmm9, xmm7
        vmovhpd   xmm4, xmm2, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rdx+rcx]
        vpextrd   eax, xmm12, 2
        vpextrd   ecx, xmm12, 3
        movsxd    rax, eax
        movsxd    rcx, ecx
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+r11]
        vinsertf128 ymm12, ymm5, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+rax], 1
        vinsertf128 ymm15, ymm2, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rdx+rcx], 1
        vunpcklpd ymm2, ymm12, ymm15
        vinsertf128 ymm3, ymm4, xmm13, 1
        vunpckhpd ymm4, ymm12, ymm15
        vpsrad    xmm15, xmm6, 20
        vpaddd    xmm6, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28864]
        vpshufd   xmm12, xmm6, 80
        vpshufd   xmm13, xmm6, 250
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vinserti128 ymm5, ymm12, xmm13, 1
        vmulpd    ymm12, ymm1, ymm3
        vandpd    ymm15, ymm5, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vsubpd    ymm13, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vandpd    ymm15, ymm1, ymm6
        vsubpd    ymm5, ymm1, ymm15
        vaddpd    ymm1, ymm12, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vfmsub213pd ymm15, ymm3, ymm12
        vfmadd213pd ymm5, ymm3, ymm15
        vaddpd    ymm3, ymm2, ymm13
        vaddpd    ymm13, ymm1, ymm3
        vaddpd    ymm12, ymm5, ymm13
        vsubpd    ymm15, ymm3, ymm13
        vsubpd    ymm2, ymm13, ymm12
        vaddpd    ymm3, ymm1, ymm15
        vaddpd    ymm1, ymm1, ymm5
        vaddpd    ymm15, ymm5, ymm2
        vaddpd    ymm13, ymm3, ymm15
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vaddpd    ymm4, ymm4, ymm13
        vfmadd213pd ymm15, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vfmadd213pd ymm15, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vfmadd213pd ymm15, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vfmadd213pd ymm15, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vfmadd213pd ymm15, ymm1, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vfmadd213pd ymm15, ymm1, ymm4
        vaddpd    ymm13, ymm12, ymm15
        vandpd    ymm5, ymm13, ymm6
        vandpd    ymm2, ymm14, ymm6
        vsubpd    ymm12, ymm13, ymm12
        vsubpd    ymm1, ymm13, ymm5
        vmulpd    ymm13, ymm5, ymm2
        vsubpd    ymm15, ymm15, ymm12
        vsubpd    ymm12, ymm14, ymm2
        vextracti128 xmm6, ymm13, 1
        vshufps   xmm3, xmm13, xmm6, 221
        vpand     xmm4, xmm3, xmm7
        vpcmpgtd  xmm7, xmm9, xmm8
        vpcmpeqd  xmm8, xmm9, xmm8
        vpor      xmm9, xmm7, xmm8
        vmulpd    ymm7, ymm1, ymm12
        vpor      xmm8, xmm10, xmm9
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28608]
        vpcmpgtd  xmm10, xmm4, xmm3
        vpcmpeqd  xmm9, xmm4, xmm3
        vpor      xmm10, xmm10, xmm9
        vpor      xmm6, xmm8, xmm10
        vfmadd213pd ymm2, ymm1, ymm7
        vmovmskps eax, xmm6
        vmulpd    ymm6, ymm14, ymm15
        vfmadd213pd ymm12, ymm5, ymm2
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        vaddpd    ymm12, ymm12, ymm6
        vaddpd    ymm7, ymm5, ymm13
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vextracti128 xmm15, ymm7, 1
        vsubpd    ymm5, ymm7, ymm5
        vshufps   xmm2, xmm7, xmm15, 136
        vandps    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28992]
        vpslld    xmm3, xmm2, 13
        vpslld    xmm15, xmm1, 4
        vmovd     r8d, xmm15
        vpaddd    xmm9, xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28928]
        vpshufd   xmm4, xmm9, 80
        vpextrd   r9d, xmm15, 1
        movsxd    r8, r8d
        movsxd    r9, r9d
        vpextrd   r10d, xmm15, 2
        vpextrd   ecx, xmm15, 3
        movsxd    r10, r10d
        movsxd    rcx, ecx
        vsubpd    ymm13, ymm13, ymm5
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r8]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r9]
        vpshufd   xmm8, xmm9, 250
        vinserti128 ymm10, ymm4, xmm8, 1
        vinsertf128 ymm15, ymm1, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+r10], 1
        vinsertf128 ymm3, ymm2, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rdx+rcx], 1
        vandpd    ymm9, ymm10, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vunpcklpd ymm8, ymm15, ymm3
        vunpckhpd ymm10, ymm15, ymm3
        vaddpd    ymm15, ymm13, ymm12
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vmulpd    ymm5, ymm15, ymm15
        vfmadd213pd ymm6, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        vfmadd213pd ymm2, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vmulpd    ymm15, ymm15, YMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vmulpd    ymm1, ymm5, ymm5
        vmulpd    ymm7, ymm5, ymm6
        vmulpd    ymm3, ymm1, ymm2
        vmulpd    ymm12, ymm8, ymm7
        vmulpd    ymm1, ymm8, ymm15
        vmulpd    ymm4, ymm8, ymm3
        vaddpd    ymm10, ymm10, ymm4
        vaddpd    ymm13, ymm10, ymm12
        vaddpd    ymm2, ymm13, ymm1
        vaddpd    ymm8, ymm8, ymm2
        vmulpd    ymm1, ymm9, ymm8
        test      eax, eax
        jne       .L_B7_3

.L_B7_2:

        vmovups   ymm6, YMMWORD PTR [432+rsp]
        vmovups   ymm7, YMMWORD PTR [400+rsp]
        vmovups   ymm8, YMMWORD PTR [368+rsp]
        vmovups   ymm9, YMMWORD PTR [528+rsp]
        vmovups   ymm10, YMMWORD PTR [560+rsp]
        vmovups   ymm12, YMMWORD PTR [496+rsp]
        vmovups   ymm13, YMMWORD PTR [464+rsp]
        vmovups   ymm14, YMMWORD PTR [336+rsp]
        vmovups   ymm15, YMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [592+rsp]
        vmovdqa   ymm0, ymm1
        add       rsp, 616
        ret

.L_B7_3:

        vmovupd   YMMWORD PTR [r13], ymm0
        vmovupd   YMMWORD PTR [64+r13], ymm14
        vmovupd   YMMWORD PTR [128+r13], ymm1

.L_B7_6:

        xor       edx, edx
        vmovups   YMMWORD PTR [32+rsp], ymm11
        mov       QWORD PTR [72+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [64+rsp], rsi
        mov       esi, eax

.L_B7_7:

        bt        esi, ebx
        jc        .L_B7_10

.L_B7_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B7_7

.L_B7_9:

        vmovups   ymm11, YMMWORD PTR [32+rsp]
        vmovupd   ymm1, YMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [72+rsp]
        mov       rsi, QWORD PTR [64+rsp]
        jmp       .L_B7_2

.L_B7_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B7_8
        .align    16, 0x90

.L_B7_11:

        .section .drectve
        .ascii " -export \"__jsvml_pow4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow4_ha_l9_B1_B3:
        .long   1469185
        .long   4904043
        .long   1796195
        .long   1669210
        .long   1542225
        .long   2201672
        .long   2336831
        .long   2082870
        .long   1955885
        .long   1435684
        .long   1308699
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_pow4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow4_ha_l9_B6_B10:
        .long   398369
        .long   549908
        .long   603149
        .long   178184
        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_pow4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_6
        .rva    .L_B7_11
        .rva    _unwind___jsvml_pow4_ha_l9_B6_B10

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_pow2_ha_l9

__jsvml_pow2_ha_l9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L200:

        sub       rsp, 440
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [400+rsp], xmm15
        vmovups   XMMWORD PTR [256+rsp], xmm14
        vmovups   XMMWORD PTR [272+rsp], xmm13
        vmovups   XMMWORD PTR [288+rsp], xmm12
        vmovups   XMMWORD PTR [304+rsp], xmm11
        vmovapd   xmm11, xmm1
        vmovups   XMMWORD PTR [320+rsp], xmm10
        vmovups   XMMWORD PTR [336+rsp], xmm9
        vmovups   XMMWORD PTR [352+rsp], xmm8
        vmovups   XMMWORD PTR [368+rsp], xmm7
        vmovups   XMMWORD PTR [384+rsp], xmm6
        mov       QWORD PTR [416+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpshufd   xmm6, xmm0, 221
        and       r13, -64
        vmovq     xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28672]
        vmovq     xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28736]
        vpand     xmm12, xmm6, xmm13
        vpaddd    xmm10, xmm12, xmm9
        vpsrld    xmm2, xmm10, 10
        vandpd    xmm14, xmm0, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vpslld    xmm1, xmm2, 3
        vorpd     xmm15, xmm14, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vpslld    xmm14, xmm2, 4
        vmovd     edx, xmm1
        vmovd     r8d, xmm14
        vmovq     xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28480]
        vpshufd   xmm3, xmm11, 221
        movsxd    rdx, edx
        vpand     xmm7, xmm3, xmm4
        vpextrd   ecx, xmm1, 1
        vpextrd   r9d, xmm14, 1
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovsd    xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rdx]
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28800]
        vmovhpd   xmm9, xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+rcx]
        vpsubd    xmm3, xmm6, xmm2
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r8]
        vpsrad    xmm14, xmm3, 20
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r9]
        vunpcklpd xmm12, xmm13, xmm10
        vunpckhpd xmm1, xmm13, xmm10
        vmovq     xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28864]
        vpaddd    xmm10, xmm14, xmm13
        vpshufd   xmm2, xmm10, 80
        vandpd    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vsubpd    xmm10, xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vandpd    xmm14, xmm15, xmm3
        vsubpd    xmm2, xmm15, xmm14
        vmulpd    xmm15, xmm15, xmm9
        vfmsub213pd xmm14, xmm9, xmm15
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28352]
        vmovq     xmm8, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28416]
        vaddpd    xmm13, xmm15, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vfmadd213pd xmm2, xmm9, xmm14
        vaddpd    xmm14, xmm12, xmm10
        vaddpd    xmm15, xmm13, xmm14
        vaddpd    xmm9, xmm2, xmm15
        vsubpd    xmm12, xmm14, xmm15
        vsubpd    xmm10, xmm15, xmm9
        vaddpd    xmm14, xmm13, xmm12
        vaddpd    xmm13, xmm13, xmm2
        vaddpd    xmm12, xmm2, xmm10
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vfmadd213pd xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vaddpd    xmm15, xmm14, xmm12
        vfmadd213pd xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vandpd    xmm12, xmm11, xmm3
        vaddpd    xmm1, xmm1, xmm15
        vfmadd213pd xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vfmadd213pd xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vfmadd213pd xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vfmadd213pd xmm2, xmm13, xmm1
        vmovq     xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28608]
        vaddpd    xmm14, xmm9, xmm2
        vandpd    xmm1, xmm14, xmm3
        vmulpd    xmm10, xmm1, xmm12
        vsubpd    xmm9, xmm14, xmm9
        vsubpd    xmm15, xmm14, xmm1
        vsubpd    xmm2, xmm2, xmm9
        vsubpd    xmm9, xmm11, xmm12
        vpshufd   xmm3, xmm10, 221
        vpand     xmm14, xmm3, xmm4
        vpaddd    xmm4, xmm6, xmm5
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28544]
        vpcmpgtd  xmm3, xmm8, xmm4
        vpcmpgtd  xmm8, xmm7, xmm5
        vpcmpeqd  xmm7, xmm7, xmm5
        vpor      xmm4, xmm8, xmm7
        vpcmpgtd  xmm5, xmm14, xmm13
        vpcmpeqd  xmm14, xmm14, xmm13
        vpor      xmm6, xmm3, xmm4
        vpor      xmm13, xmm5, xmm14
        vpor      xmm14, xmm6, xmm13
        vmulpd    xmm13, xmm15, xmm9
        vmovmskps edx, xmm14
        vmovupd   xmm8, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        vaddpd    xmm7, xmm8, xmm10
        vfmadd213pd xmm12, xmm15, xmm13
        vmulpd    xmm15, xmm11, xmm2
        vsubpd    xmm5, xmm7, xmm8
        vfmadd213pd xmm9, xmm1, xmm12
        vpshufd   xmm2, xmm7, 136
        vmovq     xmm12, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28992]
        vpslld    xmm14, xmm2, 13
        vsubpd    xmm10, xmm10, xmm5
        vaddpd    xmm9, xmm9, xmm15
        vpand     xmm1, xmm2, xmm12
        vpslld    xmm1, xmm1, 4
        vmovd     r10d, xmm1
        vmovq     xmm13, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28928]
        vpaddd    xmm12, xmm14, xmm13
        vpextrd   r11d, xmm1, 1
        vaddpd    xmm7, xmm10, xmm9
        movsxd    r10, r10d
        movsxd    r11, r11d
        vpshufd   xmm2, xmm12, 80
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r10]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r11]
        vunpcklpd xmm13, xmm3, xmm4
        vunpckhpd xmm12, xmm3, xmm4
        vmulpd    xmm3, xmm7, xmm7
        vfmadd213pd xmm1, xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vandpd    xmm14, xmm2, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vmulpd    xmm15, xmm3, xmm3
        vmulpd    xmm8, xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vmulpd    xmm15, xmm15, xmm1
        vmulpd    xmm10, xmm13, xmm8
        vmulpd    xmm2, xmm13, xmm15
        vaddpd    xmm5, xmm12, xmm2
        vmovupd   xmm12, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vfmadd213pd xmm12, xmm7, XMMWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        vmulpd    xmm4, xmm3, xmm12
        vmulpd    xmm6, xmm13, xmm4
        vaddpd    xmm9, xmm5, xmm6
        vaddpd    xmm1, xmm9, xmm10
        vaddpd    xmm13, xmm13, xmm1
        mov       QWORD PTR [424+rsp], r13
        vmulpd    xmm1, xmm14, xmm13
        and       edx, 3
        jne       .L_B8_3

.L_B8_2:

        vmovups   xmm6, XMMWORD PTR [384+rsp]
        vmovapd   xmm0, xmm1
        vmovups   xmm7, XMMWORD PTR [368+rsp]
        vmovups   xmm8, XMMWORD PTR [352+rsp]
        vmovups   xmm9, XMMWORD PTR [336+rsp]
        vmovups   xmm10, XMMWORD PTR [320+rsp]
        vmovups   xmm11, XMMWORD PTR [304+rsp]
        vmovups   xmm12, XMMWORD PTR [288+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [416+rsp]
        add       rsp, 440
        ret

.L_B8_3:

        vmovupd   XMMWORD PTR [r13], xmm0
        vmovupd   XMMWORD PTR [64+r13], xmm11
        vmovupd   XMMWORD PTR [128+r13], xmm1
        je        .L_B8_2

.L_B8_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B8_7:

        bt        esi, ebx
        jc        .L_B8_10

.L_B8_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B8_7

.L_B8_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm1, XMMWORD PTR [128+r13]
        jmp       .L_B8_2

.L_B8_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]
        lea       r8, QWORD PTR [128+r13+rbx*8]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B8_8
        .align    16, 0x90

.L_B8_11:

        .section .drectve
        .ascii " -export \"__jsvml_pow2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_l9_B1_B3:
        .long   1603585
        .long   3462264
        .long   1599600
        .long   1538151
        .long   1476702
        .long   1415253
        .long   1353804
        .long   1292351
        .long   1230902
        .long   1169453
        .long   1108004
        .long   1701915
        .long   3604747

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_pow2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_pow2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_6
        .rva    .L_B8_11
        .rva    _unwind___jsvml_pow2_ha_l9_B6_B10

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_pow1_ha_l9

__jsvml_pow1_ha_l9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L227:

        sub       rsp, 376
        mov       r8d, 1048064
        mov       edx, 2147483647
        mov       r9d, 512
        mov       ecx, 2139095040
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [288+rsp], xmm15
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovd     xmm14, r8d
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovd     xmm2, edx
        vmovups   XMMWORD PTR [304+rsp], xmm10
        mov       edx, 1072168448
        vmovups   XMMWORD PTR [352+rsp], xmm9
        vmovd     xmm9, r9d
        vmovups   XMMWORD PTR [256+rsp], xmm8
        mov       r9d, 1048576
        vmovups   XMMWORD PTR [272+rsp], xmm7
        vmovd     xmm7, ecx
        vmovups   XMMWORD PTR [240+rsp], xmm6
        mov       ecx, 1094189056
        mov       QWORD PTR [232+rsp], r13
        mov       r8d, 1083129855
        vpshufd   xmm3, xmm0, 85
        lea       r13, QWORD PTR [95+rsp]
        vpshufd   xmm10, xmm1, 85
        vpand     xmm8, xmm3, xmm14
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27520]
        vpand     xmm6, xmm10, xmm2
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27648]
        vandpd    xmm10, xmm0, xmm5
        vpaddd    xmm13, xmm8, xmm9
        vorpd     xmm4, xmm10, xmm15
        vpsrld    xmm10, xmm13, 10
        vmovd     xmm14, edx
        vpslld    xmm5, xmm10, 3
        vpsubd    xmm8, xmm3, xmm14
        vmovd     r10d, xmm5
        vpsrad    xmm9, xmm8, 20
        vmovd     xmm13, ecx
        vpslld    xmm15, xmm10, 4
        vpaddd    xmm5, xmm9, xmm13
        movsxd    r10, r10d
        mov       edx, 2097152
        vmovd     r11d, xmm15
        mov       ecx, 1072693248
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27712]
        vpshufd   xmm10, xmm5, 0
        vandpd    xmm14, xmm10, xmm15
        and       r13, -64
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27840]
        vandpd    xmm8, xmm4, xmm15
        vsubsd    xmm9, xmm14, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27776]
        vsubsd    xmm10, xmm4, xmm8
        vmulsd    xmm4, xmm4, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        movsxd    r11, r11d
        vaddsd    xmm5, xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27904]
        vfmsub132sd xmm8, xmm4, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        vaddsd    xmm4, xmm9, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8256+rax+r11]
        vfmadd132sd xmm10, xmm8, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+rax+r10]
        vaddsd    xmm13, xmm4, xmm5
        mov       QWORD PTR [368+rsp], r13
        vsubsd    xmm14, xmm4, xmm13
        vaddsd    xmm9, xmm14, xmm5
        vaddsd    xmm14, xmm13, xmm10
        vsubsd    xmm4, xmm13, xmm14
        vaddsd    xmm8, xmm4, xmm10
        vaddsd    xmm10, xmm5, xmm10
        vaddsd    xmm13, xmm8, xmm9
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26816]
        vandpd    xmm9, xmm1, xmm15
        vfmadd213sd xmm5, xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26880]
        vaddsd    xmm4, xmm13, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+8264+rax+r11]
        vfmadd213sd xmm5, xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+26944]
        vfmadd213sd xmm5, xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27008]
        vfmadd213sd xmm5, xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27072]
        vfmadd213sd xmm5, xmm10, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27136]
        vfmadd213sd xmm5, xmm10, xmm4
        vaddsd    xmm4, xmm14, xmm5
        vsubsd    xmm10, xmm4, xmm14
        vsubsd    xmm13, xmm5, xmm10
        vandpd    xmm10, xmm4, xmm15
        vmulsd    xmm14, xmm9, xmm10
        vsubsd    xmm8, xmm4, xmm10
        vsubsd    xmm15, xmm1, xmm9
        vpshufd   xmm5, xmm14, 85
        vpand     xmm4, xmm5, xmm2
        vmovd     xmm2, r9d
        vpaddd    xmm2, xmm3, xmm2
        vmovd     xmm3, edx
        vpcmpgtd  xmm2, xmm3, xmm2
        vpcmpgtd  xmm3, xmm6, xmm7
        vpcmpeqd  xmm6, xmm6, xmm7
        vmovd     xmm5, r8d
        vpor      xmm7, xmm3, xmm6
        mov       r8d, 127
        vpor      xmm3, xmm2, xmm7
        vpcmpgtd  xmm2, xmm4, xmm5
        vmulsd    xmm7, xmm15, xmm8
        vpcmpeqd  xmm4, xmm4, xmm5
        vfmadd213sd xmm9, xmm8, xmm7
        vpor      xmm5, xmm2, xmm4
        vmulsd    xmm4, xmm1, xmm13
        vmovd     xmm2, ecx
        vfmadd213sd xmm15, xmm10, xmm9
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+28032]
        vpor      xmm6, xmm3, xmm5
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27968]
        vaddsd    xmm8, xmm14, xmm9
        vmovmskps edx, xmm6
        vaddsd    xmm15, xmm15, xmm4
        vpshufd   xmm13, xmm8, 0
        vmovd     xmm6, r8d
        vpslld    xmm10, xmm13, 13
        vpand     xmm13, xmm13, xmm6
        vpaddd    xmm10, xmm10, xmm2
        vpslld    xmm2, xmm13, 4
        vpshufd   xmm3, xmm10, 0
        vsubsd    xmm8, xmm8, xmm9
        vmovd     r9d, xmm2
        vandpd    xmm10, xmm3, xmm5
        vsubsd    xmm9, xmm14, xmm8
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27200]
        vaddsd    xmm15, xmm15, xmm9
        vmulsd    xmm5, xmm15, xmm15
        vfmadd213sd xmm14, xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27264]
        vmovsd    xmm4, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27328]
        vmulsd    xmm2, xmm5, xmm5
        vfmadd213sd xmm4, xmm15, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27392]
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dpow_ha_data_internal+27456]
        vmulsd    xmm14, xmm14, xmm2
        vmulsd    xmm6, xmm4, xmm5
        vmulsd    xmm15, xmm9, xmm15
        movsxd    r9, r9d
        vmulsd    xmm3, xmm14, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vmulsd    xmm8, xmm6, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vmulsd    xmm2, xmm15, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vaddsd    xmm7, xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24712+rax+r9]
        vaddsd    xmm13, xmm7, xmm8
        vaddsd    xmm3, xmm13, xmm2
        vaddsd    xmm4, xmm3, QWORD PTR ["__jsvml_dpow_ha_data_internal"@imgrel+24704+rax+r9]
        vmulsd    xmm2, xmm4, xmm10
        and       edx, 1
        jne       .L_B9_3

.L_B9_2:

        vmovups   xmm6, XMMWORD PTR [240+rsp]
        vmovapd   xmm0, xmm2
        vmovups   xmm7, XMMWORD PTR [272+rsp]
        vmovups   xmm8, XMMWORD PTR [256+rsp]
        vmovups   xmm9, XMMWORD PTR [352+rsp]
        vmovups   xmm10, XMMWORD PTR [304+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [288+rsp]
        mov       r13, QWORD PTR [232+rsp]
        add       rsp, 376
        ret

.L_B9_3:

        vmovsd    QWORD PTR [r13], xmm0
        vmovsd    QWORD PTR [64+r13], xmm1
        vmovsd    QWORD PTR [128+r13], xmm2
        jne       .L_B9_6

.L_B9_4:

        vmovsd    xmm2, QWORD PTR [128+r13]
        jmp       .L_B9_2

.L_B9_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]
        lea       r8, QWORD PTR [128+r13]

        call      __jsvml_dpow_ha_cout_rare_internal
        jmp       .L_B9_4
        .align    16, 0x90

.L_B9_7:

        .section .drectve
        .ascii " -export \"__jsvml_pow1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_pow1_ha_l9_B1_B6:
        .long   1350145
        .long   1954970
        .long   1009805
        .long   1144960
        .long   1083505
        .long   1480803
        .long   1288277
        .long   1431624
        .long   1370170
        .long   1243185
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_7
        .rva    _unwind___jsvml_pow1_ha_l9_B1_B6

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dpow_ha_cout_rare_internal

__jsvml_dpow_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L246:

        push      rbx
        push      rsi
        push      rdi
        push      r12
        push      r15
        push      rbp
        sub       rsp, 200
        xor       eax, eax
        movsd     xmm0, QWORD PTR [rip+_vmldPowHATab+6824]
        movsd     xmm2, QWORD PTR [rcx]
        movsd     xmm3, QWORD PTR [rdx]
        mulsd     xmm2, xmm0
        mulsd     xmm3, xmm0
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     QWORD PTR [104+rsp], xmm3
        movzx     r12d, WORD PTR [54+rsp]
        movzx     edx, WORD PTR [110+rsp]
        and       r12d, 32752
        movzx     r11d, BYTE PTR [55+rsp]
        and       edx, 32752
        mov       bl, BYTE PTR [111+rsp]
        and       r11d, 128
        and       bl, -128
        shr       r12d, 4
        shr       edx, 4
        shr       r11d, 7
        shr       bl, 7
        movups    XMMWORD PTR [144+rsp], xmm15
        movups    XMMWORD PTR [160+rsp], xmm14
        movups    XMMWORD PTR [176+rsp], xmm8
        movups    XMMWORD PTR [112+rsp], xmm7
        movups    XMMWORD PTR [128+rsp], xmm6
        test      DWORD PTR [52+rsp], 1048575
        jne       .L_B10_4

.L_B10_2:

        cmp       DWORD PTR [48+rsp], 0
        jne       .L_B10_4

.L_B10_3:

        mov       r10b, 1
        jmp       .L_B10_5

.L_B10_4:

        xor       r10b, r10b

.L_B10_5:

        mov       ecx, DWORD PTR [108+rsp]
        mov       esi, DWORD PTR [104+rsp]
        and       ecx, 1048575
        jne       .L_B10_8

.L_B10_6:

        test      esi, esi
        jne       .L_B10_8

.L_B10_7:

        mov       r9d, 1
        jmp       .L_B10_9

.L_B10_8:

        xor       r9d, r9d

.L_B10_9:

        mov       edi, edx
        xor       ebp, ebp
        cmp       edx, 2047
        setne     bpl
        shl       edi, 20
        or        edi, ecx
        mov       ecx, esi
        or        ecx, edi
        je        .L_B10_24

.L_B10_10:

        lea       ecx, DWORD PTR [-1023+rdx]
        cmp       edx, 1023
        jl        .L_B10_23

.L_B10_11:

        test      ebp, ebp
        je        .L_B10_23

.L_B10_12:

        cmp       ecx, 20
        jg        .L_B10_16

.L_B10_13:

        mov       r15d, edi
        shl       r15d, cl
        shl       r15d, 12
        or        r15d, esi
        je        .L_B10_15

.L_B10_14:

        xor       edi, edi
        jmp       .L_B10_21

.L_B10_15:

        lea       ecx, DWORD PTR [-1012+rdx]
        shl       edi, cl
        not       edi
        shr       edi, 31
        inc       edi
        jmp       .L_B10_21

.L_B10_16:

        cmp       ecx, 53
        jge       .L_B10_20

.L_B10_17:

        lea       ecx, DWORD PTR [-1012+rdx]
        shl       esi, cl
        test      esi, 2147483647
        jne       .L_B10_14

.L_B10_19:

        not       esi
        shr       esi, 31
        lea       edi, DWORD PTR [1+rsi]
        jmp       .L_B10_21

.L_B10_20:

        mov       edi, 2

.L_B10_21:

        test      r11d, r11d
        jne       .L_B10_29

.L_B10_22:

        cmp       r12d, 1023
        jne       .L_B10_29
        jmp       .L_B10_57

.L_B10_23:

        xor       edi, edi
        jmp       .L_B10_25

.L_B10_24:

        mov       edi, 2

.L_B10_25:

        test      r11d, r11d
        jne       .L_B10_27

.L_B10_26:

        cmp       r12d, 1023
        je        .L_B10_74

.L_B10_27:

        test      edx, edx
        jne       .L_B10_29

.L_B10_28:

        test      r9d, r9d
        jne       .L_B10_55

.L_B10_29:

        cmp       r12d, 2047
        je        .L_B10_31

.L_B10_30:

        mov       cl, 1
        jmp       .L_B10_32

.L_B10_31:

        xor       cl, cl

.L_B10_32:

        or        r10b, cl
        je        .L_B10_54

.L_B10_33:

        or        r9d, ebp
        je        .L_B10_54

.L_B10_34:

        movsd     xmm1, QWORD PTR [rip+_vmldPowHATab+6816]
        ucomisd   xmm2, xmm1
        jp        .L_B10_35
        je        .L_B10_71

.L_B10_35:

        ucomisd   xmm2, QWORD PTR [rip+_vmldPowHATab+6832]
        jp        .L_B10_36
        je        .L_B10_68

.L_B10_36:

        test      cl, cl
        je        .L_B10_47

.L_B10_37:

        test      ebp, ebp
        je        .L_B10_47

.L_B10_38:

        comisd    xmm2, xmm1
        ja        .L_B10_40

.L_B10_39:

        test      edi, edi
        je        .L_B10_46

.L_B10_40:

        lea       rcx, QWORD PTR [rip+__ImageBase]
        and       edi, r11d
        movsd     QWORD PTR [48+rsp], xmm2
        and       BYTE PTR [55+rsp], 127
        movsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rcx+rdi*8]
        xor       ecx, ecx
        test      r12d, r12d
        jne       .L_B10_42

.L_B10_41:

        movsd     xmm2, QWORD PTR [48+rsp]
        mov       ecx, -200
        mulsd     xmm2, QWORD PTR [rip+_vmldPowHATab+6864]
        movsd     QWORD PTR [48+rsp], xmm2
        jmp       .L_B10_43

.L_B10_42:

        movsd     xmm2, QWORD PTR [48+rsp]

.L_B10_43:

        movsd     QWORD PTR [64+rsp], xmm2
        lea       r10, QWORD PTR [rip+__ImageBase]
        movzx     edi, WORD PTR [70+rsp]
        mov       r11, r10
        and       edi, -32753
        mov       r15, r10
        add       edi, 16368
        pxor      xmm6, xmm6
        mov       WORD PTR [70+rsp], di
        mov       r12, r10
        mov       ebp, DWORD PTR [68+rsp]
        and       ebp, 1032192
        add       ebp, 16384
        shr       ebp, 15
        movsd     xmm5, QWORD PTR ["_vmldPowHATab"@imgrel+r10+rbp*8]
        movzx     esi, WORD PTR [54+rsp]
        movaps    xmm8, xmm5
        and       esi, 32752
        add       ebp, ebp
        movsd     xmm2, QWORD PTR [64+rsp]
        shr       esi, 4
        mulsd     xmm8, xmm2
        mov       r9d, DWORD PTR [52+rsp]
        shl       esi, 20
        and       r9d, 1048575
        or        esi, r9d
        mov       r9, r10
        add       esi, -1072152576
        sar       esi, 20
        movsd     QWORD PTR [72+rsp], xmm8
        add       esi, ecx
        mov       ecx, DWORD PTR [76+rsp]
        and       ecx, 64512
        add       ecx, 1024
        shr       ecx, 11
        movsd     xmm15, QWORD PTR ["_vmldPowHATab"@imgrel+792+r11+rcx*8]
        mulsd     xmm8, xmm15
        add       ecx, ecx
        cvtsi2sd  xmm6, esi
        mulsd     xmm5, xmm15
        movsd     QWORD PTR [80+rsp], xmm8
        mov       rsi, r10
        movsd     xmm4, QWORD PTR [rip+_vmldPowHATab+6856]
        mov       edi, DWORD PTR [84+rsp]
        mulsd     xmm4, xmm2
        and       edi, 4080
        addsd     xmm6, QWORD PTR ["_vmldPowHATab"@imgrel+264+rsi+rbp*8]
        add       edi, 16
        addsd     xmm6, QWORD PTR ["_vmldPowHATab"@imgrel+1056+r9+rcx*8]
        shr       edi, 5
        movsd     xmm3, QWORD PTR ["_vmldPowHATab"@imgrel+1584+r15+rdi*8]
        movsd     QWORD PTR [88+rsp], xmm4
        add       edi, edi
        mulsd     xmm8, xmm3
        mulsd     xmm5, xmm3
        movsd     xmm3, QWORD PTR [88+rsp]
        movaps    xmm14, xmm8
        movsd     xmm7, QWORD PTR ["_vmldPowHATab"@imgrel+1064+r12+rcx*8]
        mov       rcx, r10
        subsd     xmm3, QWORD PTR [64+rsp]
        subsd     xmm14, QWORD PTR [rip+_vmldPowHATab+6848]
        addsd     xmm7, QWORD PTR ["_vmldPowHATab"@imgrel+2624+r10+rdi*8]
        addsd     xmm6, QWORD PTR ["_vmldPowHATab"@imgrel+2616+rcx+rdi*8]
        addsd     xmm7, QWORD PTR ["_vmldPowHATab"@imgrel+272+r11+rbp*8]
        movsd     QWORD PTR [96+rsp], xmm3
        movsd     xmm3, QWORD PTR [88+rsp]
        movsd     xmm15, QWORD PTR [96+rsp]
        subsd     xmm3, xmm15
        movsd     QWORD PTR [88+rsp], xmm3
        movsd     xmm4, QWORD PTR [88+rsp]
        subsd     xmm2, xmm4
        movsd     QWORD PTR [96+rsp], xmm2
        movsd     xmm2, QWORD PTR [rip+_vmldPowHATab+6856]
        mulsd     xmm2, xmm5
        movsd     xmm3, QWORD PTR [88+rsp]
        movsd     xmm4, QWORD PTR [96+rsp]
        movsd     QWORD PTR [88+rsp], xmm2
        movsd     xmm15, QWORD PTR [88+rsp]
        subsd     xmm15, xmm5
        movsd     QWORD PTR [96+rsp], xmm15
        movsd     xmm15, QWORD PTR [88+rsp]
        movsd     xmm2, QWORD PTR [96+rsp]
        subsd     xmm15, xmm2
        movsd     QWORD PTR [88+rsp], xmm15
        movsd     xmm2, QWORD PTR [88+rsp]
        subsd     xmm5, xmm2
        movaps    xmm2, xmm3
        movsd     QWORD PTR [96+rsp], xmm5
        movsd     xmm5, QWORD PTR [88+rsp]
        mulsd     xmm2, xmm5
        mulsd     xmm5, xmm4
        subsd     xmm2, xmm8
        movaps    xmm8, xmm6
        addsd     xmm2, xmm5
        addsd     xmm8, xmm14
        movsd     xmm15, QWORD PTR [96+rsp]
        mulsd     xmm3, xmm15
        mulsd     xmm4, xmm15
        addsd     xmm2, xmm3
        movsd     QWORD PTR [88+rsp], xmm8
        addsd     xmm2, xmm4
        movsd     xmm3, QWORD PTR [88+rsp]
        subsd     xmm6, xmm3
        addsd     xmm6, xmm14
        movsd     QWORD PTR [96+rsp], xmm6
        movsd     xmm4, QWORD PTR [88+rsp]
        movsd     QWORD PTR [56+rsp], xmm4
        movzx     ecx, WORD PTR [62+rsp]
        and       ecx, 32752
        shr       ecx, 4
        add       ecx, edx
        movsd     xmm3, QWORD PTR [96+rsp]
        cmp       ecx, 2057
        jge       .L_B10_67

.L_B10_44:

        cmp       ecx, 1984
        jg        .L_B10_58

.L_B10_45:

        movsd     QWORD PTR [88+rsp], xmm0
        movsd     xmm0, QWORD PTR [88+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldPowHATab+6808]
        movsd     QWORD PTR [88+rsp], xmm0
        movsd     xmm2, QWORD PTR [88+rsp]
        mulsd     xmm1, xmm2
        jmp       .L_B10_56

.L_B10_46:

        movsd     QWORD PTR [88+rsp], xmm1
        mov       eax, 1
        movsd     xmm1, QWORD PTR [88+rsp]
        movsd     xmm0, QWORD PTR [88+rsp]
        divsd     xmm1, xmm0
        movsd     QWORD PTR [88+rsp], xmm1
        movsd     xmm1, QWORD PTR [88+rsp]
        jmp       .L_B10_56

.L_B10_47:

        cmp       r12d, 1023
        jge       .L_B10_51

.L_B10_48:

        test      bl, bl
        je        .L_B10_56

.L_B10_49:

        movaps    xmm1, xmm3
        mulsd     xmm1, xmm3
        jmp       .L_B10_56

.L_B10_51:

        test      bl, bl
        je        .L_B10_53

.L_B10_52:

        lea       rdx, QWORD PTR [rip+__ImageBase]
        and       edi, r11d
        mulsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rdx+rdi*8]
        jmp       .L_B10_56

.L_B10_53:

        mulsd     xmm2, xmm2
        lea       rdx, QWORD PTR [rip+__ImageBase]
        mulsd     xmm2, xmm3
        and       edi, r11d
        movaps    xmm1, xmm2
        mulsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rdx+rdi*8]
        jmp       .L_B10_56

.L_B10_54:

        movaps    xmm1, xmm2
        addsd     xmm1, xmm3
        jmp       .L_B10_56

.L_B10_55:

        mov       rdx, QWORD PTR [rip+_vmldPowHATab+6824]
        addsd     xmm2, xmm3
        movsd     QWORD PTR [88+rsp], xmm2
        mov       QWORD PTR [96+rsp], rdx
        mov       cl, BYTE PTR [95+rsp]
        mov       bl, BYTE PTR [103+rsp]
        and       cl, -128
        and       bl, 127
        or        bl, cl
        mov       BYTE PTR [103+rsp], bl
        movsd     xmm1, QWORD PTR [96+rsp]
        movsd     xmm0, QWORD PTR [96+rsp]
        mulsd     xmm1, xmm0

.L_B10_56:

        movups    xmm6, XMMWORD PTR [128+rsp]
        movups    xmm7, XMMWORD PTR [112+rsp]
        movups    xmm8, XMMWORD PTR [176+rsp]
        movups    xmm14, XMMWORD PTR [160+rsp]
        movups    xmm15, XMMWORD PTR [144+rsp]
        movsd     QWORD PTR [r8], xmm1
        add       rsp, 200
        pop       rbp
        pop       r15
        pop       r12
        pop       rdi
        pop       rsi
        pop       rbx
        ret

.L_B10_57:

        test      r10b, r10b
        je        .L_B10_30
        jmp       .L_B10_55

.L_B10_58:

        lea       rdx, QWORD PTR [rip+_vmldPowHATab+6752]
        movsd     xmm8, QWORD PTR [rdx]
        lea       rcx, QWORD PTR [rip+__ImageBase]
        movsd     xmm15, QWORD PTR [56+rsp]
        mov       rbx, rcx
        addsd     xmm14, xmm2
        addsd     xmm2, xmm3
        mulsd     xmm8, xmm14
        addsd     xmm7, xmm2
        addsd     xmm8, QWORD PTR [-8+rdx]
        mulsd     xmm8, xmm14
        movaps    xmm6, xmm7
        addsd     xmm8, QWORD PTR [-16+rdx]
        mulsd     xmm8, xmm14
        addsd     xmm8, QWORD PTR [-24+rdx]
        mulsd     xmm8, xmm14
        addsd     xmm4, xmm8
        lea       rbp, QWORD PTR [88+rsp]
        movsd     QWORD PTR [rbp], xmm4
        movsd     xmm14, QWORD PTR [rbp]
        subsd     xmm15, xmm14
        addsd     xmm15, xmm8
        lea       rsi, QWORD PTR [96+rsp]
        movsd     QWORD PTR [rsi], xmm15
        movsd     xmm3, QWORD PTR [rbp]
        movsd     xmm4, QWORD PTR [rsi]
        addsd     xmm6, xmm3
        movsd     QWORD PTR [rbp], xmm6
        movsd     xmm2, QWORD PTR [rbp]
        subsd     xmm3, xmm2
        addsd     xmm3, xmm7
        movsd     xmm7, QWORD PTR [104+rdx]
        movsd     QWORD PTR [rsi], xmm3
        movsd     xmm8, QWORD PTR [rbp]
        mulsd     xmm7, xmm8
        movsd     xmm6, QWORD PTR [rsi]
        movsd     QWORD PTR [rbp], xmm7
        addsd     xmm6, xmm4
        movsd     xmm2, QWORD PTR [rbp]
        lea       rdi, QWORD PTR [104+rsp]
        mulsd     xmm6, QWORD PTR [rdi]
        subsd     xmm2, xmm8
        movsd     QWORD PTR [rsi], xmm2
        movsd     xmm4, QWORD PTR [rbp]
        movsd     xmm3, QWORD PTR [rsi]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [rbp], xmm4
        movsd     xmm5, QWORD PTR [rbp]
        subsd     xmm8, xmm5
        movsd     QWORD PTR [rsi], xmm8
        movsd     xmm8, QWORD PTR [rdi]
        movaps    xmm14, xmm8
        mulsd     xmm14, QWORD PTR [104+rdx]
        movsd     xmm4, QWORD PTR [rbp]
        movsd     xmm5, QWORD PTR [rsi]
        movsd     QWORD PTR [rbp], xmm14
        movsd     xmm15, QWORD PTR [rbp]
        subsd     xmm15, QWORD PTR [rdi]
        movsd     QWORD PTR [rsi], xmm15
        movsd     xmm2, QWORD PTR [rbp]
        movsd     xmm7, QWORD PTR [rsi]
        subsd     xmm2, xmm7
        movsd     QWORD PTR [rbp], xmm2
        movsd     xmm3, QWORD PTR [rbp]
        subsd     xmm8, xmm3
        movsd     QWORD PTR [rsi], xmm8
        movsd     xmm14, QWORD PTR [rbp]
        movsd     xmm7, QWORD PTR [rsi]
        movaps    xmm2, xmm14
        movaps    xmm3, xmm7
        mulsd     xmm3, xmm5
        mulsd     xmm14, xmm5
        mulsd     xmm2, xmm4
        mulsd     xmm4, xmm7
        addsd     xmm3, xmm14
        addsd     xmm3, xmm4
        movsd     xmm4, QWORD PTR [88+rdx]
        addsd     xmm4, xmm2
        addsd     xmm6, xmm3
        movsd     QWORD PTR [rbp], xmm4
        movsd     xmm5, QWORD PTR [rbp]
        movsd     xmm3, QWORD PTR [40+rdx]
        mov       edx, DWORD PTR [rbp]
        mov       esi, edx
        and       edx, 127
        subsd     xmm5, QWORD PTR [rip+_vmldPowHATab+6840]
        movsd     QWORD PTR [32+rsp], xmm5
        add       edx, edx
        movsd     xmm15, QWORD PTR [32+rsp]
        movsd     xmm4, QWORD PTR ["_vmldPowHATab"@imgrel+4680+rcx+rdx*8]
        subsd     xmm2, xmm15
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [40+rsp]
        sar       esi, 7
        addsd     xmm6, xmm2
        mulsd     xmm3, xmm6
        lea       rcx, QWORD PTR [rip+_vmldPowHATab+6784]
        addsd     xmm3, QWORD PTR [rcx]
        mulsd     xmm3, xmm6
        addsd     xmm3, QWORD PTR [-8+rcx]
        mulsd     xmm3, xmm6
        addsd     xmm3, QWORD PTR [-16+rcx]
        mulsd     xmm3, xmm6
        addsd     xmm3, QWORD PTR [-24+rcx]
        mulsd     xmm3, xmm6
        mulsd     xmm3, xmm4
        addsd     xmm3, QWORD PTR ["_vmldPowHATab"@imgrel+4688+rbx+rdx*8]
        movaps    xmm5, xmm3
        addsd     xmm5, xmm4
        movsd     QWORD PTR [48+rsp], xmm5
        movzx     ecx, WORD PTR [54+rsp]
        mov       ebp, ecx
        and       ebp, 32752
        shr       ebp, 4
        lea       edx, DWORD PTR [-1023+rsi+rbp]
        cmp       edx, 1024
        jge       .L_B10_66

.L_B10_59:

        cmp       edx, -1022
        jl        .L_B10_61

.L_B10_60:

        and       ecx, -32753
        lea       edx, DWORD PTR [1023+rdx]
        and       edx, 2047
        shl       edx, 4
        or        ecx, edx
        mov       WORD PTR [54+rsp], cx
        movsd     xmm0, QWORD PTR [48+rsp]
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        jmp       .L_B10_56

.L_B10_61:

        cmp       edx, -1032
        jl        .L_B10_63

.L_B10_62:

        lea       rcx, QWORD PTR [88+rsp]
        movsd     QWORD PTR [rcx], xmm5
        add       esi, 1223
        movsd     xmm2, QWORD PTR [rcx]
        and       esi, 2047
        lea       rbx, QWORD PTR [rip+_vmldPowHATab+6824]
        mov       rdx, QWORD PTR [rbx]
        subsd     xmm4, xmm2
        mov       QWORD PTR [56+rsp], rdx
        addsd     xmm4, xmm3
        lea       rbp, QWORD PTR [96+rsp]
        movsd     QWORD PTR [rbp], xmm4
        movsd     xmm8, QWORD PTR [rcx]
        movsd     xmm3, QWORD PTR [32+rbx]
        mulsd     xmm3, xmm8
        movsd     xmm0, QWORD PTR [rbp]
        movsd     QWORD PTR [rcx], xmm3
        movsd     xmm4, QWORD PTR [rcx]
        shr       rdx, 48
        subsd     xmm4, xmm8
        movsd     QWORD PTR [rbp], xmm4
        and       edx, -32753
        movsd     xmm6, QWORD PTR [rcx]
        movsd     xmm5, QWORD PTR [rbp]
        shl       esi, 4
        subsd     xmm6, xmm5
        movsd     QWORD PTR [rcx], xmm6
        or        edx, esi
        lea       rsi, QWORD PTR [88+rsp]
        movsd     xmm7, QWORD PTR [rsi]
        mov       WORD PTR [62+rsp], dx
        subsd     xmm8, xmm7
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm2, QWORD PTR [rsi]
        movsd     xmm14, QWORD PTR [rbp]
        movsd     xmm15, QWORD PTR [48+rbx]
        addsd     xmm0, xmm14
        mulsd     xmm1, xmm15
        movsd     xmm14, QWORD PTR [56+rsp]
        mulsd     xmm2, xmm14
        mulsd     xmm0, xmm14
        mov       rcx, QWORD PTR [-16+rbx]
        addsd     xmm2, xmm0
        mov       QWORD PTR [rsi], rcx
        lea       rcx, QWORD PTR [88+rsp]
        movsd     xmm3, QWORD PTR [rcx]
        movsd     xmm0, QWORD PTR [rcx]
        mulsd     xmm3, xmm0
        mulsd     xmm1, xmm2
        movsd     QWORD PTR [rcx], xmm3
        movsd     xmm4, QWORD PTR [rcx]
        addsd     xmm1, xmm4
        movsd     QWORD PTR [48+rsp], xmm1
        jmp       .L_B10_56

.L_B10_63:

        cmp       edx, -1084
        jl        .L_B10_65

.L_B10_64:

        add       esi, 1223
        and       esi, 2047
        lea       rcx, QWORD PTR [rip+_vmldPowHATab+6830]
        movzx     edx, WORD PTR [rcx]
        shl       esi, 4
        and       edx, -32753
        movsd     QWORD PTR [56+rsp], xmm0
        or        edx, esi
        mov       WORD PTR [62+rsp], dx
        movsd     xmm2, QWORD PTR [42+rcx]
        movsd     xmm0, QWORD PTR [56+rsp]
        mov       rcx, QWORD PTR [-22+rcx]
        mulsd     xmm1, xmm2
        mulsd     xmm5, xmm0
        mov       QWORD PTR [88+rsp], rcx
        lea       rcx, QWORD PTR [88+rsp]
        movsd     xmm4, QWORD PTR [rcx]
        movsd     xmm3, QWORD PTR [rcx]
        mulsd     xmm4, xmm3
        mulsd     xmm1, xmm5
        movsd     QWORD PTR [rcx], xmm4
        movsd     xmm5, QWORD PTR [rcx]
        addsd     xmm1, xmm5
        movsd     QWORD PTR [48+rsp], xmm1
        jmp       .L_B10_56

.L_B10_65:

        mov       rdx, QWORD PTR [rip+_vmldPowHATab+6808]
        mov       QWORD PTR [88+rsp], rdx
        lea       rdx, QWORD PTR [88+rsp]
        movsd     xmm2, QWORD PTR [rdx]
        movsd     xmm0, QWORD PTR [rdx]
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [rdx], xmm2
        movsd     xmm3, QWORD PTR [rdx]
        mulsd     xmm1, xmm3
        movsd     QWORD PTR [48+rsp], xmm1
        jmp       .L_B10_56

.L_B10_66:

        mov       rdx, QWORD PTR [rip+_vmldPowHATab+6800]
        mov       QWORD PTR [88+rsp], rdx
        lea       rdx, QWORD PTR [88+rsp]
        movsd     xmm2, QWORD PTR [rdx]
        movsd     xmm0, QWORD PTR [rdx]
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [rdx], xmm2
        movsd     xmm3, QWORD PTR [rdx]
        mulsd     xmm1, xmm3
        movsd     QWORD PTR [48+rsp], xmm1
        jmp       .L_B10_56

.L_B10_67:

        mov       dl, BYTE PTR [63+rsp]
        lea       rcx, QWORD PTR [rip+__ImageBase]
        and       dl, -128
        shr       dl, 7
        xor       bl, dl
        movzx     ebx, bl
        movsd     xmm0, QWORD PTR ["_vmldPowHATab"@imgrel+6800+rcx+rbx*8]
        mulsd     xmm0, xmm0
        mulsd     xmm0, xmm1
        movaps    xmm1, xmm0
        jmp       .L_B10_56

.L_B10_68:

        test      edi, edi
        jne       .L_B10_70

.L_B10_69:

        test      ebp, ebp
        jne       .L_B10_36

.L_B10_70:

        lea       rdx, QWORD PTR [rip+__ImageBase]
        and       edi, 1
        movsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rdx+rdi*8]
        jmp       .L_B10_56

.L_B10_71:

        mulsd     xmm2, xmm2
        test      bl, bl
        je        .L_B10_73

.L_B10_72:

        lea       rax, QWORD PTR [rip+__ImageBase]
        and       edi, r11d
        movsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rax+rdi*8]
        mov       eax, 1
        divsd     xmm1, xmm2
        jmp       .L_B10_56

.L_B10_73:

        lea       rdx, QWORD PTR [rip+__ImageBase]
        and       edi, r11d
        movsd     xmm1, QWORD PTR ["_vmldPowHATab"@imgrel+6824+rdx+rdi*8]
        mulsd     xmm1, xmm2
        jmp       .L_B10_56

.L_B10_74:

        test      r10b, r10b
        jne       .L_B10_55

.L_B10_75:

        test      edx, edx
        jne       .L_B10_30

.L_B10_76:

        test      r9d, r9d
        je        .L_B10_30
        jmp       .L_B10_55
        .align    16, 0x90

.L_B10_77:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dpow_ha_cout_rare_internal_B1_B76:
        .long   1219329
        .long   551067
        .long   489619
        .long   755854
        .long   714885
        .long   653436
        .long   1638675
        .long   4027273228
        .long   1879556105
        .long   805658630

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_77
        .rva    _unwind___jsvml_dpow_ha_cout_rare_internal_B1_B76

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dpow_ha_data_internal_avx512
__jsvml_dpow_ha_data_internal_avx512:
        .long   0
        .long   0
        .long   1972240384
        .long   3215375059
        .long   4207476736
        .long   3216401398
        .long   2363129856
        .long   3217067096
        .long   972816384
        .long   3217408026
        .long   766836736
        .long   3217739614
        .long   3103948800
        .long   3218062358
        .long   2869821440
        .long   3218228231
        .long   1271726080
        .long   3218381432
        .long   3449618432
        .long   3218530849
        .long   2300510208
        .long   3218676666
        .long   4147675136
        .long   3218819051
        .long   3761438720
        .long   3218958163
        .long   1758134272
        .long   3219094149
        .long   14041088
        .long   3219177733
        .long   513138688
        .long   3219242801
        .long   1904279552
        .long   1071288313
        .long   180338688
        .long   1071163544
        .long   1751498752
        .long   1071041295
        .long   2999894016
        .long   1070921467
        .long   3815833600
        .long   1070803966
        .long   1399062528
        .long   1070688704
        .long   2835742720
        .long   1070555096
        .long   2818572288
        .long   1070333031
        .long   180322304
        .long   1070114968
        .long   704610304
        .long   1069900764
        .long   3265986560
        .long   1069690285
        .long   3908239360
        .long   1069419290
        .long   2530213888
        .long   1069012484
        .long   2785017856
        .long   1068612402
        .long   3386507264
        .long   1067938708
        .long   2250244096
        .long   1066877934
        .long   0
        .long   0
        .long   650173971
        .long   3177165030
        .long   3428024929
        .long   3174241916
        .long   1628324029
        .long   1026060711
        .long   804943611
        .long   1028963376
        .long   518075456
        .long   1027828752
        .long   1462134616
        .long   1028126172
        .long   384118417
        .long   3174884873
        .long   1227618047
        .long   3176893182
        .long   446961290
        .long   3175726255
        .long   2998207852
        .long   3176597684
        .long   2742536172
        .long   3173319968
        .long   3242321520
        .long   1029042433
        .long   1690697745
        .long   3174775608
        .long   4137858450
        .long   1027958429
        .long   2514005062
        .long   1029694520
        .long   804943611
        .long   1027914800
        .long   2871266960
        .long   3173412044
        .long   3679462403
        .long   1027724294
        .long   2476829589
        .long   1026974179
        .long   1572243234
        .long   3176241050
        .long   2514550597
        .long   3175960347
        .long   1207415416
        .long   1029642824
        .long   531120703
        .long   3174459378
        .long   894287639
        .long   1029609779
        .long   1133539114
        .long   1029069062
        .long   1763539348
        .long   1029327721
        .long   1658032750
        .long   3171241178
        .long   825146242
        .long   3176213734
        .long   831162967
        .long   1028990787
        .long   1128763360
        .long   3176457556
        .long   896504796
        .long   3175699769
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
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
        .long   0
        .long   1073217536
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
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1697350398
        .long   1074206023
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   1132869487
        .long   3227679289
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   4168171985
        .long   1079281468
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   891875265
        .long   3225883975
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   132470805
        .long   1077567862
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   3694883233
        .long   3224291081
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1357904862
        .long   1076000620
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   1697350396
        .long   3222738247
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3694789629
        .long   1074710281
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   3340305463
        .long   3162994905
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
        .long   1891065104
        .long   1015511007
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
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   4119604569
        .long   1059365335
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   662950521
        .long   1062590279
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   454355882
        .long   1065595565
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   3568144057
        .long   1068264200
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4286862669
        .long   1070514109
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
        .long   4277811595
        .long   1072049730
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
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   248
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
        .long   120
        .long   0
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
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   1083173888
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .long   0
        .long   2146435072
        .globl __jsvml_dpow_ha_data_internal
__jsvml_dpow_ha_data_internal:
        .long   1073741824
        .long   1073157447
        .long   1073741824
        .long   1073155971
        .long   1073741824
        .long   1073154498
        .long   1073741824
        .long   1073153028
        .long   0
        .long   1073151561
        .long   2147483648
        .long   1073150096
        .long   0
        .long   1073148635
        .long   1073741824
        .long   1073147176
        .long   1073741824
        .long   1073145720
        .long   1073741824
        .long   1073144267
        .long   0
        .long   1073142817
        .long   2147483648
        .long   1073141369
        .long   3221225472
        .long   1073139924
        .long   3221225472
        .long   1073138482
        .long   3221225472
        .long   1073137043
        .long   2147483648
        .long   1073135607
        .long   3221225472
        .long   1073134173
        .long   0
        .long   1073132743
        .long   3221225472
        .long   1073131314
        .long   2147483648
        .long   1073129889
        .long   0
        .long   1073128467
        .long   0
        .long   1073127047
        .long   3221225472
        .long   1073125629
        .long   1073741824
        .long   1073124215
        .long   2147483648
        .long   1073122803
        .long   2147483648
        .long   1073121394
        .long   0
        .long   1073119988
        .long   1073741824
        .long   1073118584
        .long   1073741824
        .long   1073117183
        .long   3221225472
        .long   1073115784
        .long   1073741824
        .long   1073114389
        .long   0
        .long   1073112996
        .long   2147483648
        .long   1073111605
        .long   3221225472
        .long   1073110217
        .long   2147483648
        .long   1073108832
        .long   0
        .long   1073107450
        .long   0
        .long   1073106070
        .long   2147483648
        .long   1073104692
        .long   3221225472
        .long   1073103317
        .long   2147483648
        .long   1073101945
        .long   0
        .long   1073100576
        .long   0
        .long   1073099209
        .long   2147483648
        .long   1073097844
        .long   2147483648
        .long   1073096482
        .long   1073741824
        .long   1073095123
        .long   1073741824
        .long   1073093766
        .long   0
        .long   1073092412
        .long   1073741824
        .long   1073091060
        .long   0
        .long   1073089711
        .long   1073741824
        .long   1073088364
        .long   0
        .long   1073087020
        .long   2147483648
        .long   1073085678
        .long   1073741824
        .long   1073084339
        .long   2147483648
        .long   1073083002
        .long   1073741824
        .long   1073081668
        .long   1073741824
        .long   1073080336
        .long   0
        .long   1073079007
        .long   1073741824
        .long   1073077680
        .long   3221225472
        .long   1073076355
        .long   3221225472
        .long   1073075033
        .long   1073741824
        .long   1073073714
        .long   1073741824
        .long   1073072397
        .long   2147483648
        .long   1073071082
        .long   1073741824
        .long   1073069770
        .long   2147483648
        .long   1073068460
        .long   0
        .long   1073067153
        .long   0
        .long   1073065848
        .long   2147483648
        .long   1073064545
        .long   1073741824
        .long   1073063245
        .long   1073741824
        .long   1073061947
        .long   3221225472
        .long   1073060651
        .long   3221225472
        .long   1073059358
        .long   3221225472
        .long   1073058067
        .long   2147483648
        .long   1073056779
        .long   1073741824
        .long   1073055493
        .long   3221225472
        .long   1073054209
        .long   1073741824
        .long   1073052928
        .long   1073741824
        .long   1073051649
        .long   2147483648
        .long   1073050372
        .long   0
        .long   1073049098
        .long   3221225472
        .long   1073047825
        .long   0
        .long   1073046556
        .long   2147483648
        .long   1073045288
        .long   1073741824
        .long   1073044023
        .long   1073741824
        .long   1073042760
        .long   3221225472
        .long   1073041499
        .long   1073741824
        .long   1073040241
        .long   0
        .long   1073038985
        .long   1073741824
        .long   1073037731
        .long   2147483648
        .long   1073036479
        .long   1073741824
        .long   1073035230
        .long   0
        .long   1073033983
        .long   1073741824
        .long   1073032738
        .long   2147483648
        .long   1073031495
        .long   0
        .long   1073030255
        .long   3221225472
        .long   1073029016
        .long   3221225472
        .long   1073027780
        .long   0
        .long   1073026547
        .long   1073741824
        .long   1073025315
        .long   0
        .long   1073024086
        .long   3221225472
        .long   1073022858
        .long   3221225472
        .long   1073021633
        .long   3221225472
        .long   1073020410
        .long   0
        .long   1073019190
        .long   2147483648
        .long   1073017971
        .long   1073741824
        .long   1073016755
        .long   0
        .long   1073015541
        .long   3221225472
        .long   1073014328
        .long   3221225472
        .long   1073013118
        .long   0
        .long   1073011911
        .long   2147483648
        .long   1073010705
        .long   3221225472
        .long   1073009501
        .long   2147483648
        .long   1073008300
        .long   0
        .long   1073007101
        .long   3221225472
        .long   1073005903
        .long   3221225472
        .long   1073004708
        .long   3221225472
        .long   1073003515
        .long   3221225472
        .long   1073002324
        .long   0
        .long   1073001136
        .long   1073741824
        .long   1072999949
        .long   2147483648
        .long   1072998764
        .long   0
        .long   1072997582
        .long   1073741824
        .long   1072996401
        .long   0
        .long   1072995223
        .long   2147483648
        .long   1072994046
        .long   0
        .long   1072992872
        .long   3221225472
        .long   1072991699
        .long   2147483648
        .long   1072990529
        .long   0
        .long   1072989361
        .long   3221225472
        .long   1072988194
        .long   3221225472
        .long   1072987030
        .long   2147483648
        .long   1072985868
        .long   1073741824
        .long   1072984708
        .long   0
        .long   1072983550
        .long   3221225472
        .long   1072982393
        .long   2147483648
        .long   1072981239
        .long   2147483648
        .long   1072980087
        .long   1073741824
        .long   1072978937
        .long   0
        .long   1072977789
        .long   3221225472
        .long   1072976642
        .long   1073741824
        .long   1072975498
        .long   0
        .long   1072974356
        .long   2147483648
        .long   1072973215
        .long   1073741824
        .long   1072972077
        .long   3221225472
        .long   1072970940
        .long   1073741824
        .long   1072969806
        .long   2147483648
        .long   1072968673
        .long   0
        .long   1072967543
        .long   1073741824
        .long   1072966414
        .long   2147483648
        .long   1072965287
        .long   2147483648
        .long   1072964162
        .long   2147483648
        .long   1072963039
        .long   2147483648
        .long   1072961918
        .long   1073741824
        .long   1072960799
        .long   0
        .long   1072959682
        .long   3221225472
        .long   1072958566
        .long   1073741824
        .long   1072957453
        .long   3221225472
        .long   1072956341
        .long   0
        .long   1072955232
        .long   0
        .long   1072954124
        .long   1073741824
        .long   1072953018
        .long   0
        .long   1072951914
        .long   3221225472
        .long   1072950811
        .long   2147483648
        .long   1072949711
        .long   0
        .long   1072948613
        .long   1073741824
        .long   1072947516
        .long   2147483648
        .long   1072946421
        .long   2147483648
        .long   1072945328
        .long   1073741824
        .long   1072944237
        .long   0
        .long   1072943148
        .long   2147483648
        .long   1072942060
        .long   3221225472
        .long   1072940974
        .long   0
        .long   1072939891
        .long   0
        .long   1072938809
        .long   3221225472
        .long   1072937728
        .long   1073741824
        .long   1072936650
        .long   2147483648
        .long   1072935573
        .long   3221225472
        .long   1072934498
        .long   2147483648
        .long   1072933425
        .long   1073741824
        .long   1072932354
        .long   3221225472
        .long   1072931284
        .long   0
        .long   1072930217
        .long   1073741824
        .long   1072929151
        .long   0
        .long   1072928087
        .long   2147483648
        .long   1072927024
        .long   3221225472
        .long   1072925963
        .long   0
        .long   1072924905
        .long   3221225472
        .long   1072923847
        .long   1073741824
        .long   1072922792
        .long   3221225472
        .long   1072921738
        .long   3221225472
        .long   1072920686
        .long   2147483648
        .long   1072919636
        .long   0
        .long   1072918588
        .long   1073741824
        .long   1072917541
        .long   1073741824
        .long   1072916496
        .long   3221225472
        .long   1072915452
        .long   1073741824
        .long   1072914411
        .long   1073741824
        .long   1072913371
        .long   0
        .long   1072912333
        .long   2147483648
        .long   1072911296
        .long   3221225472
        .long   1072910261
        .long   2147483648
        .long   1072909228
        .long   1073741824
        .long   1072908197
        .long   2147483648
        .long   1072907167
        .long   1073741824
        .long   1072906139
        .long   0
        .long   1072905113
        .long   1073741824
        .long   1072904088
        .long   0
        .long   1072903065
        .long   3221225472
        .long   1072902043
        .long   3221225472
        .long   1072901023
        .long   3221225472
        .long   1072900005
        .long   1073741824
        .long   1072898989
        .long   2147483648
        .long   1072897974
        .long   1073741824
        .long   1072896961
        .long   3221225472
        .long   1072895949
        .long   3221225472
        .long   1072894939
        .long   2147483648
        .long   1072893931
        .long   0
        .long   1072892925
        .long   3221225472
        .long   1072891919
        .long   2147483648
        .long   1072890916
        .long   3221225472
        .long   1072889914
        .long   2147483648
        .long   1072888914
        .long   3221225472
        .long   1072887915
        .long   0
        .long   1072886919
        .long   2147483648
        .long   1072885923
        .long   3221225472
        .long   1072884929
        .long   2147483648
        .long   1072883937
        .long   3221225472
        .long   1072882946
        .long   3221225472
        .long   1072881957
        .long   1073741824
        .long   1072880970
        .long   2147483648
        .long   1072879984
        .long   1073741824
        .long   1072879000
        .long   2147483648
        .long   1072878017
        .long   1073741824
        .long   1072877036
        .long   2147483648
        .long   1072876056
        .long   2147483648
        .long   1072875078
        .long   0
        .long   1072874102
        .long   0
        .long   1072873127
        .long   3221225472
        .long   1072872153
        .long   3221225472
        .long   1072871181
        .long   2147483648
        .long   1072870211
        .long   3221225472
        .long   1072869242
        .long   1073741824
        .long   1072868275
        .long   2147483648
        .long   1072867309
        .long   2147483648
        .long   1072866345
        .long   3221225472
        .long   1072865382
        .long   2147483648
        .long   1072864421
        .long   3221225472
        .long   1072863461
        .long   3221225472
        .long   1072862503
        .long   0
        .long   1072861547
        .long   3221225472
        .long   1072860591
        .long   1073741824
        .long   1072859638
        .long   0
        .long   1072858686
        .long   1073741824
        .long   1072857735
        .long   1073741824
        .long   1072856786
        .long   2147483648
        .long   1072855838
        .long   1073741824
        .long   1072854892
        .long   2147483648
        .long   1072853947
        .long   1073741824
        .long   1072853004
        .long   2147483648
        .long   1072852062
        .long   0
        .long   1072851122
        .long   1073741824
        .long   1072850183
        .long   3221225472
        .long   1072849245
        .long   3221225472
        .long   1072848309
        .long   1073741824
        .long   1072847375
        .long   1073741824
        .long   1072846442
        .long   3221225472
        .long   1072845510
        .long   2147483648
        .long   1072844580
        .long   3221225472
        .long   1072843651
        .long   2147483648
        .long   1072842724
        .long   3221225472
        .long   1072841798
        .long   1073741824
        .long   1072840874
        .long   1073741824
        .long   1072839951
        .long   3221225472
        .long   1072839029
        .long   2147483648
        .long   1072838109
        .long   3221225472
        .long   1072837190
        .long   2147483648
        .long   1072836273
        .long   2147483648
        .long   1072835357
        .long   0
        .long   1072834443
        .long   0
        .long   1072833530
        .long   1073741824
        .long   1072832618
        .long   0
        .long   1072831708
        .long   0
        .long   1072830799
        .long   2147483648
        .long   1072829891
        .long   1073741824
        .long   1072828985
        .long   2147483648
        .long   1072828080
        .long   1073741824
        .long   1072827177
        .long   1073741824
        .long   1072826275
        .long   3221225472
        .long   1072825374
        .long   2147483648
        .long   1072824475
        .long   2147483648
        .long   1072823577
        .long   0
        .long   1072822681
        .long   3221225472
        .long   1072821785
        .long   0
        .long   1072820892
        .long   3221225472
        .long   1072819999
        .long   2147483648
        .long   1072819108
        .long   3221225472
        .long   1072818218
        .long   2147483648
        .long   1072817330
        .long   2147483648
        .long   1072816443
        .long   3221225472
        .long   1072815557
        .long   2147483648
        .long   1072814673
        .long   2147483648
        .long   1072813790
        .long   3221225472
        .long   1072812908
        .long   1073741824
        .long   1072812028
        .long   1073741824
        .long   1072811149
        .long   2147483648
        .long   1072810271
        .long   1073741824
        .long   1072809395
        .long   1073741824
        .long   1072808520
        .long   1073741824
        .long   1072807646
        .long   0
        .long   1072806774
        .long   3221225472
        .long   1072805902
        .long   0
        .long   1072805033
        .long   2147483648
        .long   1072804164
        .long   1073741824
        .long   1072803297
        .long   1073741824
        .long   1072802431
        .long   2147483648
        .long   1072801566
        .long   1073741824
        .long   1072800703
        .long   1073741824
        .long   1072799841
        .long   2147483648
        .long   1072798980
        .long   0
        .long   1072798121
        .long   3221225472
        .long   1072797262
        .long   3221225472
        .long   1072796405
        .long   0
        .long   1072795550
        .long   3221225472
        .long   1072794695
        .long   2147483648
        .long   1072793842
        .long   3221225472
        .long   1072792990
        .long   0
        .long   1072792140
        .long   3221225472
        .long   1072791290
        .long   2147483648
        .long   1072790442
        .long   3221225472
        .long   1072789595
        .long   1073741824
        .long   1072788750
        .long   3221225472
        .long   1072787905
        .long   3221225472
        .long   1072787062
        .long   0
        .long   1072786221
        .long   1073741824
        .long   1072785380
        .long   0
        .long   1072784541
        .long   3221225472
        .long   1072783702
        .long   3221225472
        .long   1072782865
        .long   1073741824
        .long   1072782030
        .long   3221225472
        .long   1072781195
        .long   2147483648
        .long   1072780362
        .long   2147483648
        .long   1072779530
        .long   3221225472
        .long   1072778699
        .long   1073741824
        .long   1072777870
        .long   3221225472
        .long   1072777041
        .long   3221225472
        .long   1072776214
        .long   3221225472
        .long   1072775388
        .long   0
        .long   1072774564
        .long   2147483648
        .long   1072773740
        .long   0
        .long   1072772918
        .long   0
        .long   1072772097
        .long   0
        .long   1072771277
        .long   1073741824
        .long   1072770458
        .long   3221225472
        .long   1072769640
        .long   1073741824
        .long   1072768824
        .long   0
        .long   1072768009
        .long   0
        .long   1072767195
        .long   1073741824
        .long   1072766382
        .long   2147483648
        .long   1072765570
        .long   0
        .long   1072764760
        .long   3221225472
        .long   1072763950
        .long   3221225472
        .long   1072763142
        .long   3221225472
        .long   1072762335
        .long   3221225472
        .long   1072761529
        .long   1073741824
        .long   1072760725
        .long   3221225472
        .long   1072759921
        .long   2147483648
        .long   1072759119
        .long   1073741824
        .long   1072758318
        .long   1073741824
        .long   1072757518
        .long   1073741824
        .long   1072756719
        .long   2147483648
        .long   1072755921
        .long   0
        .long   1072755125
        .long   2147483648
        .long   1072754329
        .long   1073741824
        .long   1072753535
        .long   0
        .long   1072752742
        .long   0
        .long   1072751950
        .long   0
        .long   1072751159
        .long   1073741824
        .long   1072750369
        .long   2147483648
        .long   1072749580
        .long   0
        .long   1072748793
        .long   3221225472
        .long   1072748006
        .long   1073741824
        .long   1072747221
        .long   1073741824
        .long   1072746437
        .long   1073741824
        .long   1072745654
        .long   1073741824
        .long   1072744872
        .long   1073741824
        .long   1072744091
        .long   2147483648
        .long   1072743311
        .long   0
        .long   1072742533
        .long   2147483648
        .long   1072741755
        .long   0
        .long   1072740979
        .long   3221225472
        .long   1072740203
        .long   2147483648
        .long   1072739429
        .long   1073741824
        .long   1072738656
        .long   1073741824
        .long   1072737884
        .long   1073741824
        .long   1072737113
        .long   2147483648
        .long   1072736343
        .long   3221225472
        .long   1072735574
        .long   0
        .long   1072734807
        .long   2147483648
        .long   1072734040
        .long   3221225472
        .long   1072733274
        .long   2147483648
        .long   1072732510
        .long   0
        .long   1072731747
        .long   3221225472
        .long   1072730984
        .long   2147483648
        .long   1072730223
        .long   1073741824
        .long   1072729463
        .long   0
        .long   1072728704
        .long   0
        .long   1072727946
        .long   0
        .long   1072727189
        .long   0
        .long   1072726433
        .long   1073741824
        .long   1072725678
        .long   1073741824
        .long   1072724924
        .long   2147483648
        .long   1072724171
        .long   3221225472
        .long   1072723419
        .long   0
        .long   1072722669
        .long   2147483648
        .long   1072721919
        .long   3221225472
        .long   1072721170
        .long   1073741824
        .long   1072720423
        .long   3221225472
        .long   1072719676
        .long   1073741824
        .long   1072718931
        .long   3221225472
        .long   1072718186
        .long   1073741824
        .long   1072717443
        .long   0
        .long   1072716701
        .long   2147483648
        .long   1072715959
        .long   1073741824
        .long   1072715219
        .long   0
        .long   1072714480
        .long   2147483648
        .long   1072713741
        .long   1073741824
        .long   1072713004
        .long   0
        .long   1072712268
        .long   3221225472
        .long   1072711532
        .long   2147483648
        .long   1072710798
        .long   1073741824
        .long   1072710065
        .long   0
        .long   1072709333
        .long   3221225472
        .long   1072708601
        .long   3221225472
        .long   1072707871
        .long   2147483648
        .long   1072707142
        .long   1073741824
        .long   1072706414
        .long   0
        .long   1072705687
        .long   3221225472
        .long   1072704960
        .long   2147483648
        .long   1072704235
        .long   1073741824
        .long   1072703511
        .long   0
        .long   1072702788
        .long   3221225472
        .long   1072702065
        .long   2147483648
        .long   1072701344
        .long   1073741824
        .long   1072700624
        .long   3221225472
        .long   1072699904
        .long   2147483648
        .long   1072699186
        .long   1073741824
        .long   1072698469
        .long   3221225472
        .long   1072697752
        .long   2147483648
        .long   1072697037
        .long   0
        .long   1072696323
        .long   2147483648
        .long   1072695609
        .long   0
        .long   1072694897
        .long   2147483648
        .long   1072694185
        .long   0
        .long   1072693475
        .long   2147483648
        .long   1072692282
        .long   1073741824
        .long   1072690865
        .long   3221225472
        .long   1072689449
        .long   2147483648
        .long   1072688036
        .long   3221225472
        .long   1072686624
        .long   1073741824
        .long   1072685215
        .long   2147483648
        .long   1072683807
        .long   2147483648
        .long   1072682401
        .long   2147483648
        .long   1072680997
        .long   2147483648
        .long   1072679595
        .long   1073741824
        .long   1072678195
        .long   0
        .long   1072676797
        .long   2147483648
        .long   1072675400
        .long   0
        .long   1072674006
        .long   1073741824
        .long   1072672613
        .long   2147483648
        .long   1072671222
        .long   2147483648
        .long   1072669833
        .long   1073741824
        .long   1072668446
        .long   0
        .long   1072667061
        .long   3221225472
        .long   1072665677
        .long   0
        .long   1072664296
        .long   1073741824
        .long   1072662916
        .long   2147483648
        .long   1072661538
        .long   2147483648
        .long   1072660162
        .long   1073741824
        .long   1072658788
        .long   3221225472
        .long   1072657415
        .long   1073741824
        .long   1072656045
        .long   2147483648
        .long   1072654676
        .long   2147483648
        .long   1072653309
        .long   2147483648
        .long   1072651944
        .long   1073741824
        .long   1072650581
        .long   3221225472
        .long   1072649219
        .long   0
        .long   1072647860
        .long   1073741824
        .long   1072646502
        .long   0
        .long   1072645146
        .long   3221225472
        .long   1072643791
        .long   1073741824
        .long   1072642439
        .long   2147483648
        .long   1072641088
        .long   2147483648
        .long   1072639739
        .long   2147483648
        .long   1072638392
        .long   0
        .long   1072637047
        .long   2147483648
        .long   1072635703
        .long   2147483648
        .long   1072634361
        .long   2147483648
        .long   1072633021
        .long   1073741824
        .long   1072631683
        .long   3221225472
        .long   1072630346
        .long   3221225472
        .long   1072629011
        .long   3221225472
        .long   1072627678
        .long   2147483648
        .long   1072626347
        .long   0
        .long   1072625018
        .long   0
        .long   1072623690
        .long   0
        .long   1072622364
        .long   2147483648
        .long   1072621039
        .long   0
        .long   1072619717
        .long   0
        .long   1072618396
        .long   0
        .long   1072617077
        .long   2147483648
        .long   1072615759
        .long   3221225472
        .long   1072614443
        .long   3221225472
        .long   1072613129
        .long   1073741824
        .long   1072611817
        .long   3221225472
        .long   1072610506
        .long   3221225472
        .long   1072609197
        .long   2147483648
        .long   1072607890
        .long   0
        .long   1072606585
        .long   1073741824
        .long   1072605281
        .long   1073741824
        .long   1072603979
        .long   3221225472
        .long   1072602678
        .long   0
        .long   1072601380
        .long   0
        .long   1072600083
        .long   2147483648
        .long   1072598787
        .long   3221225472
        .long   1072597493
        .long   3221225472
        .long   1072596201
        .long   1073741824
        .long   1072594911
        .long   2147483648
        .long   1072593622
        .long   2147483648
        .long   1072592335
        .long   0
        .long   1072591050
        .long   1073741824
        .long   1072589766
        .long   1073741824
        .long   1072588484
        .long   3221225472
        .long   1072587203
        .long   0
        .long   1072585925
        .long   3221225472
        .long   1072584647
        .long   1073741824
        .long   1072583372
        .long   2147483648
        .long   1072582098
        .long   0
        .long   1072580826
        .long   2147483648
        .long   1072579555
        .long   2147483648
        .long   1072578286
        .long   0
        .long   1072577019
        .long   1073741824
        .long   1072575753
        .long   1073741824
        .long   1072574489
        .long   3221225472
        .long   1072573226
        .long   3221225472
        .long   1072571965
        .long   2147483648
        .long   1072570706
        .long   3221225472
        .long   1072569448
        .long   2147483648
        .long   1072568192
        .long   0
        .long   1072566938
        .long   1073741824
        .long   1072565685
        .long   3221225472
        .long   1072564433
        .long   0
        .long   1072563184
        .long   0
        .long   1072561936
        .long   1073741824
        .long   1072560689
        .long   1073741824
        .long   1072559444
        .long   0
        .long   1072558201
        .long   0
        .long   1072556959
        .long   3221225472
        .long   1072555718
        .long   1073741824
        .long   1072554480
        .long   0
        .long   1072553243
        .long   2147483648
        .long   1072552007
        .long   2147483648
        .long   1072550773
        .long   0
        .long   1072549541
        .long   0
        .long   1072548310
        .long   3221225472
        .long   1072547080
        .long   0
        .long   1072545853
        .long   3221225472
        .long   1072544626
        .long   0
        .long   1072543402
        .long   3221225472
        .long   1072542178
        .long   0
        .long   1072540957
        .long   0
        .long   1072539737
        .long   2147483648
        .long   1072538518
        .long   1073741824
        .long   1072537301
        .long   3221225472
        .long   1072536085
        .long   3221225472
        .long   1072534871
        .long   1073741824
        .long   1072533659
        .long   1073741824
        .long   1072532448
        .long   3221225472
        .long   1072531238
        .long   0
        .long   1072530031
        .long   2147483648
        .long   1072528824
        .long   2147483648
        .long   1072527619
        .long   0
        .long   1072526416
        .long   1073741824
        .long   1072525214
        .long   3221225472
        .long   1072524013
        .long   3221225472
        .long   1072522814
        .long   1073741824
        .long   1072521617
        .long   1073741824
        .long   1072520421
        .long   3221225472
        .long   1072519226
        .long   3221225472
        .long   1072518033
        .long   1073741824
        .long   1072516842
        .long   1073741824
        .long   1072515652
        .long   2147483648
        .long   1072514463
        .long   2147483648
        .long   1072513276
        .long   3221225472
        .long   1072512090
        .long   3221225472
        .long   1072510906
        .long   0
        .long   1072509724
        .long   3221225472
        .long   1072508542
        .long   0
        .long   1072507363
        .long   2147483648
        .long   1072506184
        .long   3221225472
        .long   1072505007
        .long   1073741824
        .long   1072503832
        .long   1073741824
        .long   1072502658
        .long   3221225472
        .long   1072501485
        .long   3221225472
        .long   1072500314
        .long   0
        .long   1072499145
        .long   3221225472
        .long   1072497976
        .long   0
        .long   1072496810
        .long   2147483648
        .long   1072495644
        .long   3221225472
        .long   1072494480
        .long   0
        .long   1072493318
        .long   0
        .long   1072492157
        .long   1073741824
        .long   1072490997
        .long   0
        .long   1072489839
        .long   1073741824
        .long   1072488682
        .long   3221225472
        .long   1072487526
        .long   3221225472
        .long   1072486372
        .long   1073741824
        .long   1072485220
        .long   0
        .long   1072484069
        .long   1073741824
        .long   1072482919
        .long   3221225472
        .long   1072481770
        .long   3221225472
        .long   1072480623
        .long   1073741824
        .long   1072479478
        .long   0
        .long   1072478334
        .long   1073741824
        .long   1072477191
        .long   3221225472
        .long   1072476049
        .long   3221225472
        .long   1072474909
        .long   0
        .long   1072473771
        .long   3221225472
        .long   1072472633
        .long   3221225472
        .long   1072471497
        .long   1073741824
        .long   1072470363
        .long   0
        .long   1072469230
        .long   1073741824
        .long   1072468098
        .long   3221225472
        .long   1072466967
        .long   3221225472
        .long   1072465838
        .long   0
        .long   1072464711
        .long   3221225472
        .long   1072463584
        .long   3221225472
        .long   1072462459
        .long   0
        .long   1072461336
        .long   3221225472
        .long   1072460213
        .long   3221225472
        .long   1072459092
        .long   1073741824
        .long   1072457973
        .long   0
        .long   1072456855
        .long   0
        .long   1072455738
        .long   2147483648
        .long   1072454622
        .long   1073741824
        .long   1072453508
        .long   2147483648
        .long   1072452395
        .long   3221225472
        .long   1072451283
        .long   3221225472
        .long   1072450173
        .long   3221225472
        .long   1072449064
        .long   1073741824
        .long   1072447957
        .long   0
        .long   1072446851
        .long   0
        .long   1072445746
        .long   1073741824
        .long   1072444642
        .long   0
        .long   1072443540
        .long   0
        .long   1072442439
        .long   2147483648
        .long   1072441339
        .long   0
        .long   1072440241
        .long   0
        .long   1072439144
        .long   1073741824
        .long   1072438048
        .long   3221225472
        .long   1072436953
        .long   3221225472
        .long   1072435860
        .long   3221225472
        .long   1072434768
        .long   1073741824
        .long   1072433678
        .long   0
        .long   1072432589
        .long   0
        .long   1072431501
        .long   1073741824
        .long   1072430414
        .long   0
        .long   1072429329
        .long   3221225472
        .long   1072428244
        .long   0
        .long   1072427162
        .long   2147483648
        .long   1072426080
        .long   1073741824
        .long   1072425000
        .long   1073741824
        .long   1072423921
        .long   2147483648
        .long   1072422843
        .long   0
        .long   1072421767
        .long   3221225472
        .long   1072420691
        .long   0
        .long   1072419618
        .long   1073741824
        .long   1072418545
        .long   3221225472
        .long   1072417473
        .long   3221225472
        .long   1072416403
        .long   3221225472
        .long   1072415334
        .long   1073741824
        .long   1072414267
        .long   3221225472
        .long   1072413200
        .long   3221225472
        .long   1072412135
        .long   3221225472
        .long   1072411071
        .long   1073741824
        .long   1072410009
        .long   3221225472
        .long   1072408947
        .long   3221225472
        .long   1072407887
        .long   3221225472
        .long   1072406828
        .long   0
        .long   1072405771
        .long   3221225472
        .long   1072404714
        .long   2147483648
        .long   1072403659
        .long   2147483648
        .long   1072402605
        .long   3221225472
        .long   1072401552
        .long   1073741824
        .long   1072400501
        .long   0
        .long   1072399451
        .long   3221225472
        .long   1072398401
        .long   0
        .long   1072397354
        .long   1073741824
        .long   1072396307
        .long   0
        .long   1072395262
        .long   3221225472
        .long   1072394217
        .long   3221225472
        .long   1072393174
        .long   0
        .long   1072392133
        .long   1073741824
        .long   1072391092
        .long   0
        .long   1072390053
        .long   3221225472
        .long   1072389014
        .long   3221225472
        .long   1072387977
        .long   0
        .long   1072386942
        .long   2147483648
        .long   1072385907
        .long   0
        .long   1072384874
        .long   0
        .long   1072383842
        .long   0
        .long   1072382811
        .long   1073741824
        .long   1072381781
        .long   2147483648
        .long   1072380752
        .long   0
        .long   1072379725
        .long   3221225472
        .long   1072378698
        .long   3221225472
        .long   1072377673
        .long   3221225472
        .long   1072376649
        .long   1073741824
        .long   1072375627
        .long   2147483648
        .long   1072374605
        .long   1073741824
        .long   1072373585
        .long   0
        .long   1072372566
        .long   0
        .long   1072371548
        .long   0
        .long   1072370531
        .long   2147483648
        .long   1072369515
        .long   3221225472
        .long   1072368500
        .long   2147483648
        .long   1072367487
        .long   1073741824
        .long   1072366475
        .long   1073741824
        .long   1072365464
        .long   1073741824
        .long   1072364454
        .long   2147483648
        .long   1072363445
        .long   0
        .long   1072362438
        .long   2147483648
        .long   1072361431
        .long   1073741824
        .long   1072360426
        .long   0
        .long   1072359422
        .long   0
        .long   1072358419
        .long   0
        .long   1072357417
        .long   1073741824
        .long   1072356416
        .long   3221225472
        .long   1072355416
        .long   1073741824
        .long   1072354418
        .long   3221225472
        .long   1072353420
        .long   3221225472
        .long   1072352424
        .long   2147483648
        .long   1072351429
        .long   2147483648
        .long   1072350435
        .long   3221225472
        .long   1072349442
        .long   0
        .long   1072348451
        .long   2147483648
        .long   1072347460
        .long   0
        .long   1072346471
        .long   2147483648
        .long   1072345482
        .long   2147483648
        .long   1072344495
        .long   1073741824
        .long   1072343509
        .long   1073741824
        .long   1072342524
        .long   1073741824
        .long   1072341540
        .long   2147483648
        .long   1072340557
        .long   3221225472
        .long   1072339575
        .long   1073741824
        .long   1072338595
        .long   3221225472
        .long   1072337615
        .long   2147483648
        .long   1072336637
        .long   1073741824
        .long   1072335660
        .long   0
        .long   1072334684
        .long   3221225472
        .long   1072333708
        .long   3221225472
        .long   1072332734
        .long   0
        .long   1072331762
        .long   1073741824
        .long   1072330790
        .long   2147483648
        .long   1072329819
        .long   3221225472
        .long   1072328849
        .long   1073741824
        .long   1072327881
        .long   3221225472
        .long   1072326913
        .long   1073741824
        .long   1072325947
        .long   0
        .long   1072324982
        .long   3221225472
        .long   1072324017
        .long   2147483648
        .long   1072323054
        .long   2147483648
        .long   1072322092
        .long   2147483648
        .long   1072321131
        .long   2147483648
        .long   1072320171
        .long   3221225472
        .long   1072319212
        .long   3221225472
        .long   1072318254
        .long   0
        .long   1072317298
        .long   1073741824
        .long   1072316342
        .long   3221225472
        .long   1072315387
        .long   1073741824
        .long   1072314434
        .long   3221225472
        .long   1072313481
        .long   1073741824
        .long   1072312530
        .long   3221225472
        .long   1072311579
        .long   2147483648
        .long   1072310630
        .long   0
        .long   1072309682
        .long   3221225472
        .long   1072308734
        .long   3221225472
        .long   1072307788
        .long   2147483648
        .long   1072306843
        .long   1073741824
        .long   1072305899
        .long   1073741824
        .long   1072304956
        .long   1073741824
        .long   1072304014
        .long   1073741824
        .long   1072303073
        .long   1073741824
        .long   1072302133
        .long   1073741824
        .long   1072301194
        .long   2147483648
        .long   1072300256
        .long   2147483648
        .long   1072299319
        .long   3221225472
        .long   1072298383
        .long   0
        .long   1072297449
        .long   1073741824
        .long   1072296515
        .long   2147483648
        .long   1072295582
        .long   3221225472
        .long   1072294650
        .long   0
        .long   1072293720
        .long   1073741824
        .long   1072292790
        .long   2147483648
        .long   1072291861
        .long   0
        .long   1072290934
        .long   1073741824
        .long   1072290007
        .long   3221225472
        .long   1072289081
        .long   0
        .long   1072288157
        .long   2147483648
        .long   1072287233
        .long   3221225472
        .long   1072286310
        .long   1073741824
        .long   1072285389
        .long   2147483648
        .long   1072284468
        .long   0
        .long   1072283549
        .long   2147483648
        .long   1072282630
        .long   3221225472
        .long   1072281712
        .long   1073741824
        .long   1072280796
        .long   3221225472
        .long   1072279880
        .long   0
        .long   1072278966
        .long   2147483648
        .long   1072278052
        .long   3221225472
        .long   1072277139
        .long   1073741824
        .long   1072276228
        .long   2147483648
        .long   1072275317
        .long   3221225472
        .long   1072274407
        .long   1073741824
        .long   1072273499
        .long   2147483648
        .long   1072272591
        .long   3221225472
        .long   1072271684
        .long   0
        .long   1072270779
        .long   1073741824
        .long   1072269874
        .long   2147483648
        .long   1072268970
        .long   3221225472
        .long   1072268067
        .long   0
        .long   1072267166
        .long   0
        .long   1072266265
        .long   1073741824
        .long   1072265365
        .long   1073741824
        .long   1072264466
        .long   2147483648
        .long   1072263568
        .long   2147483648
        .long   1072262671
        .long   2147483648
        .long   1072261775
        .long   1073741824
        .long   1072260880
        .long   1073741824
        .long   1072259986
        .long   1073741824
        .long   1072259093
        .long   0
        .long   1072258201
        .long   3221225472
        .long   1072257309
        .long   2147483648
        .long   1072256419
        .long   1073741824
        .long   1072255530
        .long   0
        .long   1072254642
        .long   2147483648
        .long   1072253754
        .long   0
        .long   1072252868
        .long   2147483648
        .long   1072251982
        .long   0
        .long   1072251098
        .long   1073741824
        .long   1072250214
        .long   3221225472
        .long   1072249331
        .long   0
        .long   1072248450
        .long   1073741824
        .long   1072247569
        .long   1073741824
        .long   1072246689
        .long   2147483648
        .long   1072245810
        .long   2147483648
        .long   1072244932
        .long   2147483648
        .long   1072244055
        .long   1073741824
        .long   1072243179
        .long   1073741824
        .long   1072242304
        .long   0
        .long   1072241430
        .long   2147483648
        .long   1072240556
        .long   1073741824
        .long   1072239684
        .long   3221225472
        .long   1072238812
        .long   1073741824
        .long   1072237942
        .long   2147483648
        .long   1072237072
        .long   3221225472
        .long   1072236203
        .long   0
        .long   1072235336
        .long   1073741824
        .long   1072234469
        .long   1073741824
        .long   1072233603
        .long   1073741824
        .long   1072232738
        .long   0
        .long   1072231874
        .long   0
        .long   1072231011
        .long   2147483648
        .long   1072230148
        .long   1073741824
        .long   1072229287
        .long   3221225472
        .long   1072228426
        .long   1073741824
        .long   1072227567
        .long   2147483648
        .long   1072226708
        .long   3221225472
        .long   1072225850
        .long   3221225472
        .long   1072224993
        .long   0
        .long   1072224138
        .long   3221225472
        .long   1072223282
        .long   3221225472
        .long   1072222428
        .long   2147483648
        .long   1072221575
        .long   0
        .long   1072220723
        .long   2147483648
        .long   1072219871
        .long   0
        .long   1072219021
        .long   1073741824
        .long   1072218171
        .long   2147483648
        .long   1072217322
        .long   2147483648
        .long   1072216474
        .long   2147483648
        .long   1072215627
        .long   1073741824
        .long   1072214781
        .long   0
        .long   1072213936
        .long   3221225472
        .long   1072213091
        .long   1073741824
        .long   1072212248
        .long   2147483648
        .long   1072211405
        .long   3221225472
        .long   1072210563
        .long   0
        .long   1072209723
        .long   0
        .long   1072208883
        .long   3221225472
        .long   1072208043
        .long   2147483648
        .long   1072207205
        .long   1073741824
        .long   1072206368
        .long   3221225472
        .long   1072205531
        .long   0
        .long   1072204696
        .long   1073741824
        .long   1072203861
        .long   2147483648
        .long   1072203027
        .long   1073741824
        .long   1072202194
        .long   1073741824
        .long   1072201362
        .long   3221225472
        .long   1072200530
        .long   2147483648
        .long   1072199700
        .long   3221225472
        .long   1072198870
        .long   0
        .long   1072198042
        .long   1073741824
        .long   1072197214
        .long   1073741824
        .long   1072196387
        .long   0
        .long   1072195561
        .long   3221225472
        .long   1072194735
        .long   1073741824
        .long   1072193911
        .long   2147483648
        .long   1072193087
        .long   3221225472
        .long   1072192264
        .long   0
        .long   1072191443
        .long   3221225472
        .long   1072190621
        .long   2147483648
        .long   1072189801
        .long   1073741824
        .long   1072188982
        .long   3221225472
        .long   1072188163
        .long   0
        .long   1072187346
        .long   0
        .long   1072186529
        .long   0
        .long   1072185713
        .long   0
        .long   1072184898
        .long   2147483648
        .long   1072184083
        .long   0
        .long   1072183270
        .long   1073741824
        .long   1072182457
        .long   2147483648
        .long   1072181645
        .long   2147483648
        .long   1072180834
        .long   1073741824
        .long   1072180024
        .long   0
        .long   1072179215
        .long   1073741824
        .long   1072178406
        .long   3221225472
        .long   1072177598
        .long   3221225472
        .long   1072176791
        .long   3221225472
        .long   1072175985
        .long   2147483648
        .long   1072175180
        .long   0
        .long   1072174376
        .long   2147483648
        .long   1072173572
        .long   3221225472
        .long   1072172769
        .long   3221225472
        .long   1072171967
        .long   2147483648
        .long   1072171166
        .long   1073741824
        .long   1072170366
        .long   3221225472
        .long   1072169566
        .long   0
        .long   1072168768
        .long   0
        .long   1072167970
        .long   0
        .long   1072167173
        .long   3221225472
        .long   1072166376
        .long   1073741824
        .long   1072165581
        .long   2147483648
        .long   1072164786
        .long   2147483648
        .long   1072163992
        .long   2147483648
        .long   1072163199
        .long   1073741824
        .long   1072162407
        .long   3221225472
        .long   1072161615
        .long   1073741824
        .long   1072160825
        .long   1073741824
        .long   1072160035
        .long   1073741824
        .long   1072159246
        .long   0
        .long   1072158458
        .long   2147483648
        .long   1072157670
        .long   3221225472
        .long   1072156883
        .long   3221225472
        .long   1072156097
        .long   3221225472
        .long   1072155312
        .long   2147483648
        .long   1072154528
        .long   0
        .long   1072153745
        .long   1073741824
        .long   1072152962
        .long   1073741824
        .long   1072152180
        .long   0
        .long   1072151399
        .long   3221225472
        .long   1072150618
        .long   0
        .long   1072149839
        .long   1073741824
        .long   1072149060
        .long   1073741824
        .long   1072148282
        .long   0
        .long   1072147505
        .long   2147483648
        .long   1072146728
        .long   3221225472
        .long   1072145952
        .long   3221225472
        .long   1072145177
        .long   3221225472
        .long   1072144403
        .long   1073741824
        .long   1072143630
        .long   3221225472
        .long   1072142857
        .long   0
        .long   1072142086
        .long   3221225472
        .long   1072141314
        .long   2147483648
        .long   1072140544
        .long   0
        .long   1072139775
        .long   1073741824
        .long   1072139006
        .long   1073741824
        .long   1072138238
        .long   0
        .long   1072137471
        .long   2147483648
        .long   1072136704
        .long   3221225472
        .long   1072135938
        .long   3221225472
        .long   1072135173
        .long   3221225472
        .long   1072134409
        .long   1073741824
        .long   1072133646
        .long   2147483648
        .long   1072132883
        .long   3221225472
        .long   1072132121
        .long   2147483648
        .long   1072131360
        .long   0
        .long   1072130600
        .long   2147483648
        .long   1072129840
        .long   2147483648
        .long   1072129081
        .long   1073741824
        .long   1072128323
        .long   0
        .long   1072127566
        .long   1073741824
        .long   1072126809
        .long   2147483648
        .long   1072126053
        .long   1073741824
        .long   1072125298
        .long   3221225472
        .long   1072124543
        .long   1073741824
        .long   1072123790
        .long   1073741824
        .long   1072123037
        .long   0
        .long   1072122285
        .long   2147483648
        .long   1072121533
        .long   3221225472
        .long   1072120782
        .long   0
        .long   1072120033
        .long   3221225472
        .long   1072119283
        .long   1073741824
        .long   1072118535
        .long   2147483648
        .long   1072117787
        .long   2147483648
        .long   1072117040
        .long   0
        .long   1072116294
        .long   2147483648
        .long   1072115548
        .long   3221225472
        .long   1072114803
        .long   2147483648
        .long   1072114059
        .long   1073741824
        .long   1072113316
        .long   2147483648
        .long   1072112573
        .long   3221225472
        .long   1072111831
        .long   2147483648
        .long   1072111090
        .long   0
        .long   1072110350
        .long   1073741824
        .long   1072109610
        .long   1073741824
        .long   1072108871
        .long   0
        .long   0
        .byte 0
        .org .+46
        .byte   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1062671073
        .long   796678535
        .long   1041164450
        .long   0
        .long   1063718849
        .long   1140684073
        .long   1041752416
        .long   0
        .long   1064388983
        .long   2255163804
        .long   1042521851
        .long   0
        .long   1064765883
        .long   4003036608
        .long   1041981095
        .long   0
        .long   1065142442
        .long   1447370381
        .long   1043266257
        .long   0
        .long   1065435906
        .long   3214237416
        .long   1042303349
        .long   0
        .long   1065623811
        .long   1395867546
        .long   1043223139
        .long   0
        .long   1065811544
        .long   3650643237
        .long   1043184581
        .long   0
        .long   1065999072
        .long   668168440
        .long   1042356961
        .long   0
        .long   1066186426
        .long   2317418103
        .long   1043002446
        .long   0
        .long   1066373606
        .long   484047815
        .long   1042249661
        .long   0
        .long   1066481201
        .long   2023523235
        .long   1044444463
        .long   0
        .long   1066574616
        .long   3255192356
        .long   1041703688
        .long   0
        .long   1066667926
        .long   2662903533
        .long   1043280941
        .long   0
        .long   1066761147
        .long   340289207
        .long   1045085082
        .long   0
        .long   1066854296
        .long   3341484544
        .long   1044953178
        .long   0
        .long   1066947340
        .long   4224212358
        .long   1043144193
        .long   0
        .long   1067040310
        .long   13476061
        .long   1043845743
        .long   0
        .long   1067133174
        .long   2391019286
        .long   1043608353
        .long   0
        .long   1067225947
        .long   133925943
        .long   1045385377
        .long   0
        .long   1067318647
        .long   162130248
        .long   1043727590
        .long   0
        .long   1067411255
        .long   3844935960
        .long   1044946701
        .long   0
        .long   1067477070
        .long   3514481986
        .long   1045238395
        .long   0
        .long   1067523283
        .long   1322147927
        .long   1044023707
        .long   0
        .long   1067569449
        .long   2575666426
        .long   1046416655
        .long   0
        .long   1067615578
        .long   2312730532
        .long   1046001998
        .long   0
        .long   1067661661
        .long   1811376022
        .long   1044392575
        .long   0
        .long   1067707697
        .long   2749409974
        .long   1044263981
        .long   0
        .long   1067753694
        .long   1289046379
        .long   1046006505
        .long   0
        .long   1067799637
        .long   3634184242
        .long   1044372580
        .long   0
        .long   1067845549
        .long   253051172
        .long   1043849171
        .long   0
        .long   1067891413
        .long   1415622883
        .long   1046393312
        .long   0
        .long   1067937231
        .long   348590237
        .long   1044975277
        .long   0
        .long   1067983009
        .long   4043773411
        .long   1045584106
        .long   0
        .long   1068028740
        .long   3797923024
        .long   1042557480
        .long   0
        .long   1068074431
        .long   3242650639
        .long   1039813251
        .long   0
        .long   1068120082
        .long   1609062134
        .long   1044151780
        .long   0
        .long   1068165685
        .long   4036053544
        .long   1044415064
        .long   0
        .long   1068211248
        .long   3324567520
        .long   1044354441
        .long   0
        .long   1068256762
        .long   1809751839
        .long   1045897557
        .long   0
        .long   1068302236
        .long   4161743430
        .long   1046120551
        .long   0
        .long   1068347670
        .long   2543475086
        .long   1045059644
        .long   0
        .long   1068393063
        .long   2148275205
        .long   1044658247
        .long   0
        .long   1068438407
        .long   1755383432
        .long   1041654945
        .long   0
        .long   1068483718
        .long   1931750958
        .long   1043248273
        .long   0
        .long   1068513961
        .long   3743230105
        .long   1047206800
        .long   0
        .long   1068536571
        .long   3706253206
        .long   1047480360
        .long   0
        .long   1068559161
        .long   1081208188
        .long   1045948584
        .long   0
        .long   1068581729
        .long   1190940899
        .long   1047437934
        .long   0
        .long   1068604277
        .long   1379366228
        .long   1046795244
        .long   0
        .long   1068626800
        .long   2164889869
        .long   1044817266
        .long   0
        .long   1068649305
        .long   283192480
        .long   1047216747
        .long   0
        .long   1068671790
        .long   2082162375
        .long   1046068154
        .long   0
        .long   1068694253
        .long   947408815
        .long   1047001494
        .long   0
        .long   1068716700
        .long   2525331809
        .long   1042174705
        .long   0
        .long   1068739120
        .long   1844386278
        .long   1046979838
        .long   0
        .long   1068761520
        .long   652649436
        .long   1040384675
        .long   0
        .long   1068783901
        .long   776167241
        .long   1047503387
        .long   0
        .long   1068806262
        .long   1365404007
        .long   1045971294
        .long   0
        .long   1068828601
        .long   1817788868
        .long   1043989309
        .long   0
        .long   1068850918
        .long   2085890411
        .long   1043580998
        .long   0
        .long   1068873217
        .long   2704270941
        .long   1046348533
        .long   0
        .long   1068895494
        .long   1839126285
        .long   1047449544
        .long   0
        .long   1068917750
        .long   2544072376
        .long   1046393412
        .long   0
        .long   1068939988
        .long   1927459855
        .long   1044957055
        .long   0
        .long   1068962203
        .long   1582487710
        .long   1047063933
        .long   0
        .long   1068984397
        .long   2849208731
        .long   1044642430
        .long   0
        .long   1069006572
        .long   351760603
        .long   1046501140
        .long   0
        .long   1069028729
        .long   2133946083
        .long   1047054288
        .long   0
        .long   1069050864
        .long   549944300
        .long   1046700276
        .long   0
        .long   1069072976
        .long   1205145505
        .long   1047368137
        .long   0
        .long   1069095075
        .long   2839269716
        .long   1045111579
        .long   0
        .long   1069117146
        .long   2157575645
        .long   1046598540
        .long   0
        .long   1069139203
        .long   2600563884
        .long   1046970091
        .long   0
        .long   1069161233
        .long   3491103052
        .long   1047123677
        .long   0
        .long   1069183249
        .long   2217441161
        .long   1046636176
        .long   0
        .long   1069205242
        .long   815121713
        .long   1045967033
        .long   0
        .long   1069227216
        .long   1368263980
        .long   1046227865
        .long   0
        .long   1069249171
        .long   2441229856
        .long   1046882203
        .long   0
        .long   1069271108
        .long   3372580556
        .long   1043377583
        .long   0
        .long   1069293021
        .long   1382639658
        .long   1044782308
        .long   0
        .long   1069314915
        .long   1596973686
        .long   1045447919
        .long   0
        .long   1069336790
        .long   3575860455
        .long   1045345243
        .long   0
        .long   1069358646
        .long   1852981273
        .long   1043248906
        .long   0
        .long   1069380478
        .long   2541460049
        .long   1045693349
        .long   0
        .long   1069402295
        .long   2995285043
        .long   1046664003
        .long   0
        .long   1069424093
        .long   4225069737
        .long   1046430780
        .long   0
        .long   1069445867
        .long   2693529773
        .long   1046687732
        .long   0
        .long   1069467626
        .long   1331463947
        .long   1046551955
        .long   0
        .long   1069489361
        .long   418170877
        .long   1046547196
        .long   0
        .long   1069511081
        .long   3560455957
        .long   1045192121
        .long   0
        .long   1069532776
        .long   3856463114
        .long   1047159135
        .long   0
        .long   1069550988
        .long   3092400973
        .long   1047496324
        .long   0
        .long   1069561818
        .long   741957782
        .long   1047818725
        .long   0
        .long   1069572638
        .long   2496886154
        .long   1048189613
        .long   0
        .long   1069583448
        .long   1463603613
        .long   1048550223
        .long   0
        .long   1069594249
        .long   631868157
        .long   1045334249
        .long   0
        .long   1069605041
        .long   3505304627
        .long   1046966802
        .long   0
        .long   1069615821
        .long   3831046799
        .long   1046740808
        .long   0
        .long   1069626593
        .long   1769659443
        .long   1046716993
        .long   0
        .long   1069637355
        .long   3894843808
        .long   1045383802
        .long   0
        .long   1069648108
        .long   3791552918
        .long   1048413090
        .long   0
        .long   1069658852
        .long   1388688759
        .long   1047426652
        .long   0
        .long   1069669585
        .long   2013501886
        .long   1048046245
        .long   0
        .long   1069680308
        .long   4183470588
        .long   1047948382
        .long   0
        .long   1069691023
        .long   3587924100
        .long   1047542354
        .long   0
        .long   1069701730
        .long   2105734897
        .long   1045526637
        .long   0
        .long   1069712426
        .long   770531512
        .long   1046888938
        .long   0
        .long   1069723112
        .long   3936842487
        .long   1045093883
        .long   0
        .long   1069733787
        .long   3154517508
        .long   1046990331
        .long   0
        .long   1069744456
        .long   1973897243
        .long   1047624407
        .long   0
        .long   1069755112
        .long   2792602356
        .long   1048465173
        .long   0
        .long   1069765763
        .long   2168432948
        .long   1046015137
        .long   0
        .long   1069776402
        .long   942577403
        .long   1048196642
        .long   0
        .long   1069787031
        .long   707586570
        .long   1048123067
        .long   0
        .long   1069797652
        .long   2326401483
        .long   1046603426
        .long   0
        .long   1069808264
        .long   3395877152
        .long   1046586318
        .long   0
        .long   1069818865
        .long   3368745197
        .long   1047549989
        .long   0
        .long   1069829458
        .long   1911861303
        .long   1045900655
        .long   0
        .long   1069840042
        .long   4090149705
        .long   1046503677
        .long   0
        .long   1069850615
        .long   3297666986
        .long   1047394389
        .long   0
        .long   1069861182
        .long   1741176201
        .long   1046512967
        .long   0
        .long   1069871735
        .long   2918857969
        .long   1048324050
        .long   0
        .long   1069882283
        .long   2007611647
        .long   1042409839
        .long   0
        .long   1069892821
        .long   1725563175
        .long   1047115920
        .long   0
        .long   1069903348
        .long   104793657
        .long   1048064427
        .long   0
        .long   1069913867
        .long   2549366830
        .long   1046651903
        .long   0
        .long   1069924379
        .long   1789268516
        .long   1046281708
        .long   0
        .long   1069934880
        .long   2738975643
        .long   1043382169
        .long   0
        .long   1069945369
        .long   1543936759
        .long   1047890178
        .long   0
        .long   1069955852
        .long   230850934
        .long   1047783367
        .long   0
        .long   1069966326
        .long   1381363090
        .long   1047730466
        .long   0
        .long   1069976791
        .long   2660427302
        .long   1047666073
        .long   0
        .long   1069987247
        .long   1007754378
        .long   1047521978
        .long   0
        .long   1069997694
        .long   4221728480
        .long   1046954127
        .long   0
        .long   1070008129
        .long   852168656
        .long   1048288736
        .long   0
        .long   1070018558
        .long   2381379470
        .long   1047509681
        .long   0
        .long   1070028977
        .long   1414317450
        .long   1048505743
        .long   0
        .long   1070039388
        .long   798566997
        .long   1046426680
        .long   0
        .long   1070049791
        .long   4065745044
        .long   1047673355
        .long   0
        .long   1070060183
        .long   643874660
        .long   1046971607
        .long   0
        .long   1070070568
        .long   4070576090
        .long   1045679865
        .long   0
        .long   1070080941
        .long   2121491982
        .long   1046886018
        .long   0
        .long   1070091307
        .long   3465567839
        .long   1047399360
        .long   0
        .long   1070101664
        .long   748821327
        .long   1046167763
        .long   0
        .long   1070112013
        .long   1343374980
        .long   1048221318
        .long   0
        .long   1070122351
        .long   4106571202
        .long   1047995593
        .long   0
        .long   1070132682
        .long   3018043708
        .long   1047235914
        .long   0
        .long   1070143003
        .long   3487235678
        .long   1047811947
        .long   0
        .long   1070153317
        .long   2352442431
        .long   1047736864
        .long   0
        .long   1070163622
        .long   2210934251
        .long   1039234528
        .long   0
        .long   1070173916
        .long   296385840
        .long   1048178638
        .long   0
        .long   1070184204
        .long   1085495685
        .long   1046654584
        .long   0
        .long   1070194482
        .long   136140764
        .long   1045335059
        .long   0
        .long   1070204750
        .long   3210807675
        .long   1046523944
        .long   0
        .long   1070215010
        .long   103829135
        .long   1048552471
        .long   0
        .long   1070225261
        .long   2486662291
        .long   1048514143
        .long   0
        .long   1070235505
        .long   3203312410
        .long   1047453418
        .long   0
        .long   1070245741
        .long   4039797773
        .long   1047519010
        .long   0
        .long   1070255965
        .long   4001968028
        .long   1046965562
        .long   0
        .long   1070266183
        .long   4078049975
        .long   1048558647
        .long   0
        .long   1070276392
        .long   2388514226
        .long   1047992239
        .long   0
        .long   1070286591
        .long   2018340210
        .long   1047576582
        .long   0
        .long   1070296782
        .long   2884086000
        .long   1047915506
        .long   0
        .long   1070306966
        .long   3786043284
        .long   1045890930
        .long   0
        .long   1070317139
        .long   1566631364
        .long   1047857120
        .long   0
        .long   1070327305
        .long   477504213
        .long   1047152540
        .long   0
        .long   1070337463
        .long   3403037290
        .long   1047164499
        .long   0
        .long   1070347611
        .long   1791004279
        .long   1046726231
        .long   0
        .long   1070357751
        .long   4288050343
        .long   1047093633
        .long   0
        .long   1070367883
        .long   2295007444
        .long   1047840907
        .long   0
        .long   1070378005
        .long   2750776851
        .long   1047957217
        .long   0
        .long   1070388119
        .long   240357404
        .long   1048299472
        .long   0
        .long   1070398226
        .long   340799861
        .long   1045215427
        .long   0
        .long   1070408324
        .long   1770263195
        .long   1047150692
        .long   0
        .long   1070418414
        .long   1220750140
        .long   1048020555
        .long   0
        .long   1070428494
        .long   253948398
        .long   1047977031
        .long   0
        .long   1070438569
        .long   3094480300
        .long   1041576003
        .long   0
        .long   1070448632
        .long   1868279505
        .long   1048371721
        .long   0
        .long   1070458688
        .long   990785184
        .long   1047967273
        .long   0
        .long   1070468736
        .long   848865488
        .long   1047127488
        .long   0
        .long   1070478773
        .long   2916681836
        .long   1047746980
        .long   0
        .long   1070488804
        .long   3828484875
        .long   1048558502
        .long   0
        .long   1070498828
        .long   1734393623
        .long   1045931829
        .long   0
        .long   1070508843
        .long   1282528426
        .long   1045697245
        .long   0
        .long   1070518847
        .long   3554561892
        .long   1047563451
        .long   0
        .long   1070528845
        .long   1874456463
        .long   1048498668
        .long   0
        .long   1070538836
        .long   494811099
        .long   1045110929
        .long   0
        .long   1070548815
        .long   3880431493
        .long   1047630510
        .long   0
        .long   1070558789
        .long   2502237429
        .long   1038745459
        .long   0
        .long   1070568754
        .long   1165037507
        .long   1044484047
        .long   0
        .long   1070578710
        .long   21263643
        .long   1047994445
        .long   0
        .long   1070588658
        .long   3033898382
        .long   1048442466
        .long   0
        .long   1070597347
        .long   397450529
        .long   1047908959
        .long   0
        .long   1070602314
        .long   2219334821
        .long   1046742082
        .long   0
        .long   1070607275
        .long   3341994796
        .long   1048619424
        .long   0
        .long   1070612233
        .long   3511223861
        .long   1049209226
        .long   0
        .long   1070617187
        .long   1445626495
        .long   1049196374
        .long   0
        .long   1070622137
        .long   3469555560
        .long   1048527569
        .long   0
        .long   1070627082
        .long   26583152
        .long   1049343494
        .long   0
        .long   1070632025
        .long   975950645
        .long   1046239867
        .long   0
        .long   1070636961
        .long   4137995552
        .long   1049241411
        .long   0
        .long   1070641895
        .long   4186973616
        .long   1048010627
        .long   0
        .long   1070646825
        .long   1679926900
        .long   1049086597
        .long   0
        .long   1070651750
        .long   820974333
        .long   1048661288
        .long   0
        .long   1070656672
        .long   3398496800
        .long   1046623374
        .long   0
        .long   1070661590
        .long   1976666915
        .long   1048653775
        .long   0
        .long   1070666503
        .long   3214908883
        .long   1047770306
        .long   0
        .long   1070671414
        .long   7382280
        .long   1045012211
        .long   0
        .long   1070676319
        .long   3655916187
        .long   1046605232
        .long   0
        .long   1070681220
        .long   827507300
        .long   1049568172
        .long   0
        .long   1070686118
        .long   867635885
        .long   1047867074
        .long   0
        .long   1070691012
        .long   2259138636
        .long   1048188473
        .long   0
        .long   1070695901
        .long   3661956722
        .long   1049588559
        .long   0
        .long   1070700788
        .long   739636523
        .long   1047537814
        .long   0
        .long   1070705669
        .long   557802518
        .long   1049612862
        .long   0
        .long   1070710547
        .long   376189753
        .long   1047061731
        .long   0
        .long   1070715422
        .long   3889840108
        .long   1047587413
        .long   0
        .long   1070720291
        .long   1077801053
        .long   1048689123
        .long   0
        .long   1070725157
        .long   1738542922
        .long   1048475171
        .long   0
        .long   1070730020
        .long   3718088452
        .long   1043564724
        .long   0
        .long   1070734879
        .long   3350684644
        .long   1046873019
        .long   0
        .long   1070739732
        .long   4150780361
        .long   1048524985
        .long   0
        .long   1070744583
        .long   3827576939
        .long   1048797632
        .long   0
        .long   1070749430
        .long   123987445
        .long   1045684570
        .long   0
        .long   1070754273
        .long   257245867
        .long   1046230126
        .long   0
        .long   1070759112
        .long   3237406949
        .long   1048978362
        .long   0
        .long   1070763947
        .long   3931183460
        .long   1048761956
        .long   0
        .long   1070768779
        .long   1964394977
        .long   1042565159
        .long   0
        .long   1070773605
        .long   1932165925
        .long   1049036386
        .long   0
        .long   1070778428
        .long   4030295045
        .long   1049475200
        .long   0
        .long   1070783248
        .long   1227093456
        .long   1048840627
        .long   0
        .long   1070788064
        .long   512005862
        .long   1049205778
        .long   0
        .long   1070792877
        .long   584191776
        .long   1048322863
        .long   0
        .long   1070797685
        .long   1817758221
        .long   1047750717
        .long   0
        .long   1070802489
        .long   337142479
        .long   1048800613
        .long   0
        .long   1070807290
        .long   4022531585
        .long   1047903762
        .long   0
        .long   1070812086
        .long   1777579942
        .long   1047557400
        .long   0
        .long   1070816879
        .long   1136393361
        .long   1049229648
        .long   0
        .long   1070821668
        .long   2996794901
        .long   1048630425
        .long   0
        .long   1070826453
        .long   1306863874
        .long   1048829327
        .long   0
        .long   1070831236
        .long   4202579682
        .long   1047825011
        .long   0
        .long   1070836014
        .long   739123541
        .long   1046630929
        .long   0
        .long   1070840787
        .long   2199804631
        .long   1045602780
        .long   0
        .long   1070845557
        .long   333939332
        .long   1048730896
        .long   0
        .long   1070850324
        .long   4176308913
        .long   1048145703
        .long   0
        .long   1070855087
        .long   1309699946
        .long   1048642620
        .long   0
        .long   1070859845
        .long   2054458693
        .long   1049043808
        .long   0
        .long   1070864601
        .long   4089887121
        .long   1048337014
        .long   0
        .long   1070869353
        .long   1265557010
        .long   1048318933
        .long   0
        .long   1070874100
        .long   1127420846
        .long   1048380124
        .long   0
        .long   1070878844
        .long   4141971308
        .long   1049549737
        .long   0
        .long   1070883585
        .long   3206355626
        .long   1049028708
        .long   0
        .long   1070888321
        .long   1985657905
        .long   1048358544
        .long   0
        .long   1070893054
        .long   910615973
        .long   1048879074
        .long   0
        .long   1070897784
        .long   1950082077
        .long   1044879926
        .long   0
        .long   1070902509
        .long   848934976
        .long   1048871904
        .long   0
        .long   1070907231
        .long   1153872427
        .long   1048230817
        .long   0
        .long   1070911949
        .long   4258918971
        .long   1048005920
        .long   0
        .long   1070916664
        .long   2057600513
        .long   1049042207
        .long   0
        .long   1070921374
        .long   3124444597
        .long   1049569376
        .long   0
        .long   1070926082
        .long   386505726
        .long   1048817436
        .long   0
        .long   1070930786
        .long   3732185524
        .long   1048076281
        .long   0
        .long   1070935486
        .long   3484395535
        .long   1047565093
        .long   0
        .long   1070940182
        .long   3438755194
        .long   1047423303
        .long   0
        .long   1070944874
        .long   3587939031
        .long   1047757092
        .long   0
        .long   1070949563
        .long   476230562
        .long   1049014929
        .long   0
        .long   1070954249
        .long   1973348497
        .long   1046944188
        .long   0
        .long   1070958930
        .long   764637372
        .long   1049008690
        .long   0
        .long   1070963608
        .long   2839757026
        .long   1047631753
        .long   0
        .long   1070968283
        .long   2020219930
        .long   1046594521
        .long   0
        .long   1070972954
        .long   169948185
        .long   1043853145
        .long   0
        .long   1070977620
        .long   285414159
        .long   1049449707
        .long   0
        .long   1070982285
        .long   2629906384
        .long   1045624362
        .long   0
        .long   1070986945
        .long   1148732993
        .long   1047259570
        .long   0
        .long   1070991601
        .long   293909111
        .long   1047890514
        .long   0
        .long   1070996254
        .long   1932670065
        .long   1048970280
        .long   0
        .long   1071000903
        .long   2159311823
        .long   1049607293
        .long   0
        .long   1071005549
        .long   125740886
        .long   1047407746
        .long   0
        .long   1071010191
        .long   1811376116
        .long   1048956143
        .long   0
        .long   1071014830
        .long   502800015
        .long   1044835032
        .long   0
        .long   1071019465
        .long   4044150405
        .long   1048763651
        .long   0
        .long   1071024097
        .long   1841045260
        .long   1044287532
        .long   0
        .long   1071028725
        .long   3133785266
        .long   1048850842
        .long   0
        .long   1071033350
        .long   1724009237
        .long   1046152529
        .long   0
        .long   1071037970
        .long   2068805762
        .long   1048329184
        .long   0
        .long   1071042587
        .long   3716447837
        .long   1049427347
        .long   0
        .long   1071047201
        .long   861464791
        .long   1047187078
        .long   0
        .long   1071051811
        .long   1648541673
        .long   1048830988
        .long   0
        .long   1071056419
        .long   2823265117
        .long   1046547126
        .long   0
        .long   1071061022
        .long   3170737398
        .long   1048368777
        .long   0
        .long   1071065622
        .long   1648779980
        .long   1049303416
        .long   0
        .long   1071070219
        .long   2592129555
        .long   1044060813
        .long   0
        .long   1071074810
        .long   1654631877
        .long   1049576652
        .long   0
        .long   1071079401
        .long   1647796229
        .long   1047581045
        .long   0
        .long   1071083987
        .long   647692424
        .long   1047732159
        .long   0
        .long   1071088569
        .long   4029101878
        .long   1045605139
        .long   0
        .long   1071093147
        .long   1404118998
        .long   1049338962
        .long   0
        .long   1071097723
        .long   2017086973
        .long   1048915876
        .long   0
        .long   1071102295
        .long   658705748
        .long   1046816981
        .long   0
        .long   1071106863
        .long   2831500312
        .long   1048901320
        .long   0
        .long   1071111429
        .long   2771960115
        .long   1046429771
        .long   0
        .long   1071115991
        .long   138818297
        .long   1048694922
        .long   0
        .long   1071120549
        .long   2606206358
        .long   1048896195
        .long   0
        .long   1071125104
        .long   2402036482
        .long   1048985879
        .long   0
        .long   1071129655
        .long   686723486
        .long   1048058780
        .long   0
        .long   1071134202
        .long   3067443036
        .long   1049590551
        .long   0
        .long   1071138748
        .long   1630477102
        .long   1049221900
        .long   0
        .long   1071143288
        .long   3804998927
        .long   1049493418
        .long   0
        .long   1071147827
        .long   3494982215
        .long   1047590326
        .long   0
        .long   1071152361
        .long   3502517450
        .long   1046911410
        .long   0
        .long   1071156891
        .long   908559027
        .long   1049549846
        .long   0
        .long   1071161419
        .long   491387723
        .long   1048825207
        .long   0
        .long   1071165944
        .long   292847180
        .long   1046523995
        .long   0
        .long   1071170465
        .long   2171450049
        .long   1048531657
        .long   0
        .long   1071174982
        .long   3577861825
        .long   1048063344
        .long   0
        .long   1071179496
        .long   3423944158
        .long   1045932689
        .long   0
        .long   1071184006
        .long   2382475260
        .long   1048835674
        .long   0
        .long   1071188513
        .long   1197041375
        .long   1049545442
        .long   0
        .long   1071193018
        .long   2554909289
        .long   1046028054
        .long   0
        .long   1071197519
        .long   2486865187
        .long   1043744711
        .long   0
        .long   1071202016
        .long   1035200280
        .long   1049044671
        .long   0
        .long   1071206509
        .long   4210692309
        .long   1049369112
        .long   0
        .long   1071211001
        .long   3248026144
        .long   1046161216
        .long   0
        .long   1071215487
        .long   1398948536
        .long   1049132977
        .long   0
        .long   1071219972
        .long   431431486
        .long   1048495558
        .long   0
        .long   1071224452
        .long   3943587108
        .long   1048798931
        .long   0
        .long   1071228930
        .long   2404975021
        .long   1049142212
        .long   0
        .long   1071233404
        .long   762316107
        .long   1047831483
        .long   0
        .long   1071237874
        .long   3883613913
        .long   1048729905
        .long   0
        .long   1071242342
        .long   1924884768
        .long   1049280957
        .long   0
        .long   1071246806
        .long   2004582630
        .long   1048389321
        .long   0
        .long   1071251266
        .long   2953051716
        .long   1049087478
        .long   0
        .long   1071255725
        .long   1599231962
        .long   1043473772
        .long   0
        .long   1071260178
        .long   4279527120
        .long   1048818851
        .long   0
        .long   1071264630
        .long   1221405487
        .long   1046953904
        .long   0
        .long   1071269078
        .long   2816097299
        .long   1048069360
        .long   0
        .long   1071273521
        .long   3663411169
        .long   1049349030
        .long   0
        .long   1071277963
        .long   1849981741
        .long   1047733633
        .long   0
        .long   1071282401
        .long   3271252640
        .long   1047870959
        .long   0
        .long   1071286835
        .long   2250253358
        .long   1049534312
        .long   0
        .long   1071291267
        .long   1664859842
        .long   1046809699
        .long   0
        .long   1071295694
        .long   653971165
        .long   1049508089
        .long   0
        .long   1071300120
        .long   4055663594
        .long   1048834019
        .long   0
        .long   1071304541
        .long   2211260648
        .long   1048616605
        .long   0
        .long   1071308960
        .long   4276771626
        .long   1047721897
        .long   0
        .long   1071313375
        .long   2007222528
        .long   1048802851
        .long   0
        .long   1071317787
        .long   4024343562
        .long   1048344600
        .long   0
        .long   1071322197
        .long   3459883422
        .long   1046581240
        .long   0
        .long   1071326601
        .long   3019951557
        .long   1049613392
        .long   0
        .long   1071331004
        .long   2456463112
        .long   1048974151
        .long   0
        .long   1071335403
        .long   1336124288
        .long   1049356048
        .long   0
        .long   1071339799
        .long   1536224909
        .long   1048640963
        .long   0
        .long   1071344193
        .long   647928540
        .long   1040540693
        .long   0
        .long   1071348582
        .long   1496506993
        .long   1049484256
        .long   0
        .long   1071352969
        .long   3746556472
        .long   1047789089
        .long   0
        .long   1071357352
        .long   3624742118
        .long   1046524646
        .long   0
        .long   1071361732
        .long   3840005276
        .long   1049051785
        .long   0
        .long   1071366109
        .long   84584192
        .long   1049087515
        .long   0
        .long   1071370483
        .long   1497662264
        .long   1046868936
        .long   0
        .long   1071374852
        .long   2036828729
        .long   1049623679
        .long   0
        .long   1071379220
        .long   3384702102
        .long   1048726046
        .long   0
        .long   1071383585
        .long   3959484802
        .long   1049373462
        .long   0
        .long   1071387946
        .long   1321767383
        .long   1047171685
        .long   0
        .long   1071392304
        .long   2341521400
        .long   1047541640
        .long   0
        .long   1071396658
        .long   2420218824
        .long   1048896928
        .long   0
        .long   1071401010
        .long   3764844109
        .long   1049110306
        .long   0
        .long   1071405359
        .long   1896541964
        .long   1047041197
        .long   0
        .long   1071409705
        .long   111479065
        .long   1047800076
        .long   0
        .long   1071414047
        .long   1091608136
        .long   1049111018
        .long   0
        .long   1071418386
        .long   1792476776
        .long   1048580603
        .long   0
        .long   1071422722
        .long   4090167448
        .long   1049434440
        .long   0
        .long   1071427055
        .long   3239566861
        .long   1048796237
        .long   0
        .long   1071431385
        .long   209019828
        .long   1049507697
        .long   0
        .long   1071435712
        .long   3088651057
        .long   1048688389
        .long   0
        .long   1071440036
        .long   486420980
        .long   1049184075
        .long   0
        .long   1071444357
        .long   1860382011
        .long   1047644376
        .long   0
        .long   1071448675
        .long   2568472625
        .long   1048057089
        .long   0
        .long   1071452989
        .long   490775408
        .long   1049011596
        .long   0
        .long   1071457300
        .long   2176612802
        .long   1047577340
        .long   0
        .long   1071461609
        .long   95270247
        .long   1049147956
        .long   0
        .long   1071465914
        .long   3975310265
        .long   1046338473
        .long   0
        .long   1071470216
        .long   3897578511
        .long   1044193017
        .long   0
        .long   1071474515
        .long   885657038
        .long   1048577629
        .long   0
        .long   1071478812
        .long   3761049041
        .long   1048631091
        .long   0
        .long   1071483105
        .long   1527353244
        .long   1049038582
        .long   0
        .long   1071487395
        .long   48390192
        .long   1045612641
        .long   0
        .long   1071491681
        .long   4014768595
        .long   1049526473
        .long   0
        .long   1071495966
        .long   2628957221
        .long   1047958241
        .long   0
        .long   1071500246
        .long   1683100999
        .long   1049380398
        .long   0
        .long   1071504524
        .long   3557884766
        .long   1049451037
        .long   0
        .long   1071508800
        .long   4101672850
        .long   1048350861
        .long   0
        .long   1071513072
        .long   2134944413
        .long   1045716209
        .long   0
        .long   1071517341
        .long   717499477
        .long   1047034903
        .long   0
        .long   1071521606
        .long   2472744143
        .long   1048107672
        .long   0
        .long   1071525869
        .long   2890826887
        .long   1044910820
        .long   0
        .long   1071530129
        .long   1395796230
        .long   1046771028
        .long   0
        .long   1071534385
        .long   775877882
        .long   1047865518
        .long   0
        .long   1071538640
        .long   1827978896
        .long   1047855473
        .long   0
        .long   1071542889
        .long   2341181545
        .long   1049574634
        .long   0
        .long   1071547138
        .long   672439089
        .long   1048307352
        .long   0
        .long   1071551382
        .long   933700661
        .long   1049452073
        .long   0
        .long   1071555624
        .long   3798565185
        .long   1049214907
        .long   0
        .long   1071559864
        .long   2355967464
        .long   1045877083
        .long   0
        .long   1071564100
        .long   155949587
        .long   1049128845
        .long   0
        .long   1071568333
        .long   3701796848
        .long   1048257477
        .long   0
        .long   1071572563
        .long   4028727335
        .long   1048397371
        .long   0
        .long   1071576790
        .long   1615913045
        .long   1049322780
        .long   0
        .long   1071581014
        .long   2478368294
        .long   1047217831
        .long   0
        .long   1071585236
        .long   917577567
        .long   1047815426
        .long   0
        .long   1071589454
        .long   2565841069
        .long   1048011410
        .long   0
        .long   1071593669
        .long   3200038571
        .long   1049089944
        .long   0
        .long   1071597882
        .long   3539257847
        .long   1048366566
        .long   0
        .long   1071602091
        .long   710932936
        .long   1045530199
        .long   0
        .long   1071606298
        .long   1704052999
        .long   1048157440
        .long   0
        .long   1071610501
        .long   3879651705
        .long   1048844640
        .long   0
        .long   1071614702
        .long   1377073661
        .long   1046678184
        .long   0
        .long   1071618899
        .long   2621611412
        .long   1049529222
        .long   0
        .long   1071623095
        .long   633905467
        .long   1044599036
        .long   0
        .long   1071627287
        .long   1861604490
        .long   1048117402
        .long   0
        .long   1071631475
        .long   2592784367
        .long   1048774196
        .long   0
        .long   1071635662
        .long   2668018718
        .long   1048420182
        .long   0
        .long   1071639845
        .long   3251710233
        .long   1046812174
        .long   0
        .long   1071644025
        .long   626369684
        .long   1046119423
        .long   0
        .long   1071646437
        .long   910482982
        .long   1050344616
        .long   0
        .long   1071648525
        .long   2423903336
        .long   1045677213
        .long   0
        .long   1071650610
        .long   3882059822
        .long   1050339179
        .long   0
        .long   1071652695
        .long   2246204545
        .long   1048541490
        .long   0
        .long   1071654778
        .long   1670915822
        .long   1048576579
        .long   0
        .long   1071656859
        .long   854771881
        .long   1050357784
        .long   0
        .long   1071658940
        .long   1415031676
        .long   1045738827
        .long   0
        .long   1071661018
        .long   1151313830
        .long   1050292979
        .long   0
        .long   1071663095
        .long   2446597541
        .long   1049495054
        .long   0
        .long   1071665171
        .long   715253803
        .long   1049247544
        .long   0
        .long   1071667245
        .long   831266258
        .long   1050519732
        .long   0
        .long   1071669319
        .long   2692487078
        .long   1044353652
        .long   0
        .long   1071671390
        .long   3320905325
        .long   1049985102
        .long   0
        .long   1071673460
        .long   2020409618
        .long   1050447532
        .long   0
        .long   1071675529
        .long   4217782635
        .long   1049987395
        .long   0
        .long   1071677597
        .long   3470676448
        .long   1043594114
        .long   0
        .long   1071679662
        .long   357969972
        .long   1050460795
        .long   0
        .long   1071681727
        .long   2091070605
        .long   1048936806
        .long   0
        .long   1071683790
        .long   3495427066
        .long   1048859820
        .long   0
        .long   1071685852
        .long   1549005693
        .long   1049743132
        .long   0
        .long   1071687912
        .long   603226576
        .long   1049866932
        .long   0
        .long   1071689971
        .long   3820364916
        .long   1048216340
        .long   0
        .long   1071692029
        .long   2718487701
        .long   1045909227
        .long   0
        .long   1071694084
        .long   1297799786
        .long   1050024647
        .long   0
        .long   1071696139
        .long   3886708913
        .long   1049783773
        .long   0
        .long   1071698192
        .long   496006409
        .long   1050628537
        .long   0
        .long   1071700244
        .long   2050750519
        .long   1050453463
        .long   0
        .long   1071702295
        .long   4185851790
        .long   1048875870
        .long   0
        .long   1071704344
        .long   1028934102
        .long   1048590687
        .long   0
        .long   1071706392
        .long   3012402897
        .long   1049242748
        .long   0
        .long   1071708438
        .long   22203316
        .long   1050048442
        .long   0
        .long   1071710483
        .long   665764605
        .long   1050360441
        .long   0
        .long   1071712527
        .long   2313729961
        .long   1047559976
        .long   0
        .long   1071714569
        .long   3122133791
        .long   1049869555
        .long   0
        .long   1071716610
        .long   2193666532
        .long   1048374481
        .long   0
        .long   1071718649
        .long   4213671346
        .long   1049994178
        .long   0
        .long   1071720687
        .long   1784900113
        .long   1050598350
        .long   0
        .long   1071722724
        .long   2847421139
        .long   1050094717
        .long   0
        .long   1071724759
        .long   3949406723
        .long   1050572015
        .long   0
        .long   1071726794
        .long   4139294257
        .long   1042947668
        .long   0
        .long   1071728826
        .long   1880751396
        .long   1049668979
        .long   0
        .long   1071730857
        .long   679290916
        .long   1050370972
        .long   0
        .long   1071732887
        .long   3711818429
        .long   1049925046
        .long   0
        .long   1071734916
        .long   4264670672
        .long   1048521455
        .long   0
        .long   1071736943
        .long   1548930207
        .long   1048738616
        .long   0
        .long   1071738969
        .long   3549708326
        .long   1047651585
        .long   0
        .long   1071740993
        .long   739124738
        .long   1050239626
        .long   0
        .long   1071743016
        .long   4049183935
        .long   1050422866
        .long   0
        .long   1071745038
        .long   2968772573
        .long   1049196249
        .long   0
        .long   1071747059
        .long   3439618396
        .long   1046643987
        .long   0
        .long   1071749078
        .long   1616633336
        .long   1047900890
        .long   0
        .long   1071751095
        .long   2187587096
        .long   1050013284
        .long   0
        .long   1071753111
        .long   449385046
        .long   1050635872
        .long   0
        .long   1071755127
        .long   395022541
        .long   1046287706
        .long   0
        .long   1071757140
        .long   3731258177
        .long   1050475497
        .long   0
        .long   1071759153
        .long   260677565
        .long   1047808744
        .long   0
        .long   1071761164
        .long   4056447433
        .long   1047976303
        .long   0
        .long   1071763173
        .long   738668208
        .long   1050594142
        .long   0
        .long   1071765182
        .long   3189618712
        .long   1047642397
        .long   0
        .long   1071767189
        .long   2505691407
        .long   1046633659
        .long   0
        .long   1071769194
        .long   1635171806
        .long   1050165702
        .long   0
        .long   1071771199
        .long   1016578577
        .long   1048108308
        .long   0
        .long   1071773202
        .long   4043642296
        .long   1043373880
        .long   0
        .long   1071775203
        .long   729467733
        .long   1050534352
        .long   0
        .long   1071777204
        .long   1862705055
        .long   1048407654
        .long   0
        .long   1071779203
        .long   3045759592
        .long   1048626265
        .long   0
        .long   1071781201
        .long   3292670787
        .long   1045117638
        .long   0
        .long   1071783197
        .long   3186981907
        .long   1049667290
        .long   0
        .long   1071785192
        .long   1580099252
        .long   1049077488
        .long   0
        .long   1071787186
        .long   2863105791
        .long   1048832970
        .long   0
        .long   1071789178
        .long   2007906494
        .long   1049836625
        .long   0
        .long   1071791169
        .long   43748125
        .long   1050625253
        .long   0
        .long   1071793159
        .long   3902070576
        .long   1050031552
        .long   0
        .long   1071795148
        .long   4059257100
        .long   1047431161
        .long   0
        .long   1071797135
        .long   2258875433
        .long   1048570571
        .long   0
        .long   1071799121
        .long   1309713434
        .long   1049427407
        .long   0
        .long   1071801105
        .long   534636097
        .long   1050637218
        .long   0
        .long   1071803089
        .long   299199803
        .long   1048218496
        .long   0
        .long   1071805071
        .long   2103129296
        .long   1047495871
        .long   0
        .long   1071807052
        .long   479138224
        .long   1047102924
        .long   0
        .long   1071809031
        .long   1778567171
        .long   1049154138
        .long   0
        .long   1071811009
        .long   3275964022
        .long   1050107860
        .long   0
        .long   1071812986
        .long   1199690434
        .long   1049109781
        .long   0
        .long   1071814962
        .long   2514881829
        .long   1046640917
        .long   0
        .long   1071816936
        .long   1104503643
        .long   1046502220
        .long   0
        .long   1071818909
        .long   5407894
        .long   1047062825
        .long   0
        .long   1071820880
        .long   1576444545
        .long   1050243092
        .long   0
        .long   3218771961
        .long   1440681443
        .long   3196465185
        .long   0
        .long   3218768022
        .long   1635187408
        .long   3196922673
        .long   0
        .long   3218764087
        .long   4138527638
        .long   3196210610
        .long   0
        .long   3218760154
        .long   2152571444
        .long   3194425722
        .long   0
        .long   3218756223
        .long   267747451
        .long   3196033014
        .long   0
        .long   3218752295
        .long   1152231976
        .long   3196099932
        .long   0
        .long   3218748370
        .long   3734685755
        .long   3195069127
        .long   0
        .long   3218744447
        .long   424868672
        .long   3196551425
        .long   0
        .long   3218740527
        .long   3987709718
        .long   3194459328
        .long   0
        .long   3218736609
        .long   3918093064
        .long   3195526646
        .long   0
        .long   3218732694
        .long   1437482408
        .long   3195252468
        .long   0
        .long   3218728781
        .long   746301886
        .long   3194924868
        .long   0
        .long   3218724870
        .long   1139884144
        .long   3196963122
        .long   0
        .long   3218720963
        .long   2035740717
        .long   3195589050
        .long   0
        .long   3218717057
        .long   2015757072
        .long   3196816414
        .long   0
        .long   3218713155
        .long   3386053521
        .long   3193758335
        .long   0
        .long   3218709255
        .long   1442056314
        .long   3194178403
        .long   0
        .long   3218705357
        .long   1462759235
        .long   3194786996
        .long   0
        .long   3218701462
        .long   501826151
        .long   3193456242
        .long   0
        .long   3218697569
        .long   3453886314
        .long   3196630858
        .long   0
        .long   3218693679
        .long   66499200
        .long   3196066366
        .long   0
        .long   3218689792
        .long   1417806911
        .long   3192599817
        .long   0
        .long   3218685906
        .long   3652930140
        .long   3196412983
        .long   0
        .long   3218682024
        .long   2293262949
        .long   3193812403
        .long   0
        .long   3218678144
        .long   1757472212
        .long   3195652407
        .long   0
        .long   3218674266
        .long   3500865402
        .long   3190288617
        .long   0
        .long   3218670391
        .long   2086224625
        .long   3194882143
        .long   0
        .long   3218666518
        .long   4126438761
        .long   3196172685
        .long   0
        .long   3218662647
        .long   2890784492
        .long   3197056040
        .long   0
        .long   3218658780
        .long   1620206862
        .long   3195086831
        .long   0
        .long   3218654915
        .long   1818676664
        .long   3195807278
        .long   0
        .long   3218651052
        .long   4294225685
        .long   3196546991
        .long   0
        .long   3218647192
        .long   2912876962
        .long   3194183646
        .long   0
        .long   3218643334
        .long   165960939
        .long   3195927649
        .long   0
        .long   3218639478
        .long   1097746209
        .long   3196949673
        .long   0
        .long   3218635625
        .long   892481449
        .long   3196111293
        .long   0
        .long   3218631775
        .long   348717007
        .long   3192241479
        .long   0
        .long   3218627927
        .long   2881114496
        .long   3195996870
        .long   0
        .long   3218624081
        .long   4235642082
        .long   3195314644
        .long   0
        .long   3218620238
        .long   3560874073
        .long   3193489339
        .long   0
        .long   3218616397
        .long   75584058
        .long   3196721188
        .long   0
        .long   3218612558
        .long   3773330185
        .long   3196993813
        .long   0
        .long   3218608723
        .long   3385148500
        .long   3191891964
        .long   0
        .long   3218604890
        .long   1080079306
        .long   3193248004
        .long   0
        .long   3218601058
        .long   3132354469
        .long   3196187074
        .long   0
        .long   3218597230
        .long   380186399
        .long   3190771585
        .long   0
        .long   3218593404
        .long   2943702034
        .long   3195863275
        .long   0
        .long   3218589580
        .long   850041604
        .long   3195370675
        .long   0
        .long   3218585759
        .long   2032443937
        .long   3194709909
        .long   0
        .long   3218581940
        .long   4069079423
        .long   3195311169
        .long   0
        .long   3218578123
        .long   2000269891
        .long   3196403232
        .long   0
        .long   3218574309
        .long   3062399245
        .long   3194983439
        .long   0
        .long   3218570497
        .long   2904519755
        .long   3196796407
        .long   0
        .long   3218566688
        .long   2902993865
        .long   3196497971
        .long   0
        .long   3218562881
        .long   303596762
        .long   3196742396
        .long   0
        .long   3218559077
        .long   3028031620
        .long   3194648195
        .long   0
        .long   3218555274
        .long   878141398
        .long   3196811134
        .long   0
        .long   3218551474
        .long   3166301789
        .long   3196659707
        .long   0
        .long   3218547677
        .long   1888507499
        .long   3196634765
        .long   0
        .long   3218543883
        .long   705606033
        .long   3192531754
        .long   0
        .long   3218540089
        .long   2380675131
        .long   3196779510
        .long   0
        .long   3218536299
        .long   2466537128
        .long   3196509680
        .long   0
        .long   3218532511
        .long   1556116846
        .long   3196881987
        .long   0
        .long   3218528726
        .long   3908658719
        .long   3195563322
        .long   0
        .long   3218524943
        .long   1064148360
        .long   3194499812
        .long   0
        .long   3218521162
        .long   325158783
        .long   3195305144
        .long   0
        .long   3218517384
        .long   150061299
        .long   3196191576
        .long   0
        .long   3218513608
        .long   2581293346
        .long   3195469587
        .long   0
        .long   3218509834
        .long   830881235
        .long   3196046772
        .long   0
        .long   3218506062
        .long   335263961
        .long   3197069629
        .long   0
        .long   3218502294
        .long   2419522259
        .long   3196276402
        .long   0
        .long   3218498527
        .long   1779617326
        .long   3196689221
        .long   0
        .long   3218494763
        .long   2768486793
        .long   3195479576
        .long   0
        .long   3218491001
        .long   2457191843
        .long   3195194450
        .long   0
        .long   3218487241
        .long   2979669267
        .long   3196273865
        .long   0
        .long   3218483484
        .long   2520598456
        .long   3195190860
        .long   0
        .long   3218479729
        .long   1404472806
        .long   3195521798
        .long   0
        .long   3218475976
        .long   2933674193
        .long   3196782639
        .long   0
        .long   3218472226
        .long   2155935676
        .long   3196516230
        .long   0
        .long   3218468478
        .long   1776786016
        .long   3194658741
        .long   0
        .long   3218464732
        .long   3208985092
        .long   3196894677
        .long   0
        .long   3218460989
        .long   1414628316
        .long   3194730222
        .long   0
        .long   3218457248
        .long   3264913953
        .long   3196578854
        .long   0
        .long   3218453509
        .long   2212744173
        .long   3196935593
        .long   0
        .long   3218449773
        .long   3219516420
        .long   3196106465
        .long   0
        .long   3218446039
        .long   1174975199
        .long   3196201080
        .long   0
        .long   3218442307
        .long   2518811262
        .long   3195082305
        .long   0
        .long   3218438578
        .long   955422098
        .long   3194678890
        .long   0
        .long   3218434850
        .long   403509013
        .long   3196729007
        .long   0
        .long   3218431125
        .long   1925863372
        .long   3196880179
        .long   0
        .long   3218427403
        .long   3762587332
        .long   3195777038
        .long   0
        .long   3218423683
        .long   2299930842
        .long   3195846699
        .long   0
        .long   3218419965
        .long   3913056099
        .long   3194190159
        .long   0
        .long   3218416249
        .long   1309532869
        .long   3195393925
        .long   0
        .long   3218412536
        .long   1427758304
        .long   3191287204
        .long   0
        .long   3218408824
        .long   3664935924
        .long   3195664594
        .long   0
        .long   3218405116
        .long   56148989
        .long   3193360070
        .long   0
        .long   3218401408
        .long   1546977600
        .long   3196453606
        .long   0
        .long   3218397704
        .long   657959344
        .long   3196266697
        .long   0
        .long   3218394002
        .long   2271720885
        .long   3194864391
        .long   0
        .long   3218390302
        .long   667751116
        .long   3195609145
        .long   0
        .long   3218386605
        .long   2712697666
        .long   3193291133
        .long   0
        .long   3218382909
        .long   634117544
        .long   3196093020
        .long   0
        .long   3218379216
        .long   2714468923
        .long   3196018715
        .long   0
        .long   3218375526
        .long   108477979
        .long   3190599358
        .long   0
        .long   3218371837
        .long   2267170825
        .long   3195187144
        .long   0
        .long   3218368151
        .long   3669671918
        .long   3194008660
        .long   0
        .long   3218364466
        .long   2196723791
        .long   3196549091
        .long   0
        .long   3218360784
        .long   2791195639
        .long   3196915183
        .long   0
        .long   3218357105
        .long   1710231845
        .long   3196395748
        .long   0
        .long   3218353428
        .long   812053421
        .long   3194530267
        .long   0
        .long   3218349753
        .long   677148646
        .long   3195279565
        .long   0
        .long   3218346080
        .long   1770376871
        .long   3194806774
        .long   0
        .long   3218342409
        .long   1232334729
        .long   3196557456
        .long   0
        .long   3218338741
        .long   2877444568
        .long   3192481746
        .long   0
        .long   3218335074
        .long   1231961352
        .long   3197051949
        .long   0
        .long   3218331410
        .long   3148440772
        .long   3196494739
        .long   0
        .long   3218327749
        .long   3402561471
        .long   3192943984
        .long   0
        .long   3218324089
        .long   2767624854
        .long   3194945039
        .long   0
        .long   3218320432
        .long   1944101510
        .long   3192619635
        .long   0
        .long   3218316776
        .long   3808117721
        .long   3196471987
        .long   0
        .long   3218313123
        .long   1320358680
        .long   3197075792
        .long   0
        .long   3218309473
        .long   4220614032
        .long   3193778532
        .long   0
        .long   3218305824
        .long   1798479743
        .long   3196898179
        .long   0
        .long   3218302178
        .long   223350984
        .long   3196138393
        .long   0
        .long   3218298534
        .long   323093589
        .long   3191884737
        .long   0
        .long   3218294892
        .long   3473561564
        .long   3194582292
        .long   0
        .long   3218291252
        .long   1989807800
        .long   3194867291
        .long   0
        .long   3218287614
        .long   3491286165
        .long   3197005341
        .long   0
        .long   3218283979
        .long   1595992051
        .long   3196156752
        .long   0
        .long   3218280346
        .long   2249824945
        .long   3191354847
        .long   0
        .long   3218276715
        .long   3614031323
        .long   3194605328
        .long   0
        .long   3218273086
        .long   710982524
        .long   3195103304
        .long   0
        .long   3218269460
        .long   4122801604
        .long   3192641229
        .long   0
        .long   3218265834
        .long   872411268
        .long   3196949062
        .long   0
        .long   3218262213
        .long   2584080015
        .long   3195355844
        .long   0
        .long   3218258592
        .long   1091729883
        .long   3196766588
        .long   0
        .long   3218254975
        .long   3918597111
        .long   3193137868
        .long   0
        .long   3218251359
        .long   1227822836
        .long   3194904357
        .long   0
        .long   3218247745
        .long   1207867124
        .long   3195330376
        .long   0
        .long   3218244133
        .long   4096823531
        .long   3195418520
        .long   0
        .long   3218240524
        .long   2905773477
        .long   3193944437
        .long   0
        .long   3218236916
        .long   1699117459
        .long   3196779712
        .long   0
        .long   3218233312
        .long   1245991678
        .long   3195346690
        .long   0
        .long   3218229708
        .long   2686753329
        .long   3197002361
        .long   0
        .long   3218226108
        .long   2345509379
        .long   3195416953
        .long   0
        .long   3218222509
        .long   2415203021
        .long   3196493158
        .long   0
        .long   3218218913
        .long   3921604109
        .long   3191962058
        .long   0
        .long   3218215319
        .long   277792045
        .long   3194223162
        .long   0
        .long   3218211726
        .long   3606809116
        .long   3195779816
        .long   0
        .long   3218208136
        .long   3837979753
        .long   3196092304
        .long   0
        .long   3218204548
        .long   1537990937
        .long   3196238895
        .long   0
        .long   3218200962
        .long   3639025436
        .long   3196369572
        .long   0
        .long   3218197378
        .long   3338799915
        .long   3196494415
        .long   0
        .long   3218193797
        .long   771634997
        .long   3196256920
        .long   0
        .long   3218190217
        .long   3459385850
        .long   3196401390
        .long   0
        .long   3218186640
        .long   2411804193
        .long   3196205774
        .long   0
        .long   3218183065
        .long   293719170
        .long   3196033910
        .long   0
        .long   3218179492
        .long   2916290495
        .long   3195809410
        .long   0
        .long   3218175921
        .long   3024635388
        .long   3195698671
        .long   0
        .long   3218172352
        .long   1593723743
        .long   3195721980
        .long   0
        .long   3218168785
        .long   1479963450
        .long   3195899642
        .long   0
        .long   3218165220
        .long   3624935352
        .long   3196155814
        .long   0
        .long   3218161658
        .long   2595462099
        .long   3196072118
        .long   0
        .long   3218158097
        .long   2245272707
        .long   3196454512
        .long   0
        .long   3218154538
        .long   967038611
        .long   3196954786
        .long   0
        .long   3218150983
        .long   1080468995
        .long   3192746537
        .long   0
        .long   3218147428
        .long   3695483798
        .long   3195739041
        .long   0
        .long   3218143876
        .long   1918755805
        .long   3196463254
        .long   0
        .long   3218140326
        .long   2316428375
        .long   3194637714
        .long   0
        .long   3218136778
        .long   3117766005
        .long   3196336694
        .long   0
        .long   3218133232
        .long   2367290997
        .long   3195269664
        .long   0
        .long   3218129688
        .long   2174960832
        .long   3196931070
        .long   0
        .long   3218126146
        .long   4059456029
        .long   3196649238
        .long   0
        .long   3218122607
        .long   2989164202
        .long   3196231288
        .long   0
        .long   3218119069
        .long   912256154
        .long   3196380747
        .long   0
        .long   3218115533
        .long   966295295
        .long   3196760767
        .long   0
        .long   3218112000
        .long   1865482816
        .long   3197038606
        .long   0
        .long   3218108469
        .long   3711231051
        .long   3195569397
        .long   0
        .long   3218104939
        .long   253015153
        .long   3196949072
        .long   0
        .long   3218101412
        .long   3711619112
        .long   3196258273
        .long   0
        .long   3218097887
        .long   1664363626
        .long   3195639578
        .long   0
        .long   3218094364
        .long   1441323873
        .long   3195407215
        .long   0
        .long   3218090842
        .long   2313568823
        .long   3196256975
        .long   0
        .long   3218087323
        .long   1056740186
        .long   3196755788
        .long   0
        .long   3218083806
        .long   2378505439
        .long   3195572058
        .long   0
        .long   3218080291
        .long   2380553244
        .long   3196971131
        .long   0
        .long   3218073813
        .long   3937810052
        .long   3195255951
        .long   0
        .long   3218066791
        .long   223549577
        .long   3195431769
        .long   0
        .long   3218059774
        .long   1159462682
        .long   3192961630
        .long   0
        .long   3218052759
        .long   2767985889
        .long   3193806469
        .long   0
        .long   3218045750
        .long   2871627184
        .long   3194519485
        .long   0
        .long   3218038744
        .long   2938115425
        .long   3193733918
        .long   0
        .long   3218031742
        .long   681625989
        .long   3194787788
        .long   0
        .long   3218024745
        .long   2230411464
        .long   3191903911
        .long   0
        .long   3218017752
        .long   3828352395
        .long   3192273408
        .long   0
        .long   3218010761
        .long   182419510
        .long   3195706084
        .long   0
        .long   3218003777
        .long   1938408115
        .long   3195410319
        .long   0
        .long   3217996796
        .long   2321559771
        .long   3194129984
        .long   0
        .long   3217989819
        .long   4238424546
        .long   3194304268
        .long   0
        .long   3217982845
        .long   2621704586
        .long   3192953609
        .long   0
        .long   3217975875
        .long   4076531572
        .long   3194541514
        .long   0
        .long   3217968910
        .long   57348911
        .long   3192770703
        .long   0
        .long   3217961949
        .long   3409110112
        .long   3194277108
        .long   0
        .long   3217954991
        .long   743327329
        .long   3194275012
        .long   0
        .long   3217948039
        .long   3763808734
        .long   3195058205
        .long   0
        .long   3217941088
        .long   1990262286
        .long   3195699729
        .long   0
        .long   3217934144
        .long   1681663171
        .long   3194393958
        .long   0
        .long   3217927202
        .long   865478140
        .long   3195436168
        .long   0
        .long   3217920265
        .long   900361350
        .long   3195197991
        .long   0
        .long   3217913331
        .long   1247763158
        .long   3194244205
        .long   0
        .long   3217906403
        .long   570303764
        .long   3194197725
        .long   0
        .long   3217899476
        .long   3848949711
        .long   3194792234
        .long   0
        .long   3217892555
        .long   1846465414
        .long   3195788420
        .long   0
        .long   3217885638
        .long   3819865690
        .long   3193288843
        .long   0
        .long   3217878725
        .long   1913743408
        .long   3191850656
        .long   0
        .long   3217871814
        .long   341191762
        .long   3195738722
        .long   0
        .long   3217864909
        .long   3378919128
        .long   3193908369
        .long   0
        .long   3217858008
        .long   2253508503
        .long   3194012596
        .long   0
        .long   3217851110
        .long   896953819
        .long   3193530098
        .long   0
        .long   3217844216
        .long   3940932776
        .long   3195588116
        .long   0
        .long   3217837326
        .long   893082698
        .long   3194115193
        .long   0
        .long   3217830440
        .long   2066242242
        .long   3194827578
        .long   0
        .long   3217823557
        .long   4267520666
        .long   3195172783
        .long   0
        .long   3217816679
        .long   310595324
        .long   3194486781
        .long   0
        .long   3217809805
        .long   592985039
        .long   3195766306
        .long   0
        .long   3217802935
        .long   1179103730
        .long   3194264455
        .long   0
        .long   3217796067
        .long   4056442023
        .long   3195572891
        .long   0
        .long   3217789206
        .long   2525983703
        .long   3195326580
        .long   0
        .long   3217782346
        .long   462639888
        .long   3195665189
        .long   0
        .long   3217775491
        .long   1452163513
        .long   3195442838
        .long   0
        .long   3217768641
        .long   3085668832
        .long   3194350976
        .long   0
        .long   3217761794
        .long   959619812
        .long   3188184364
        .long   0
        .long   3217754951
        .long   3618217958
        .long   3194718935
        .long   0
        .long   3217748111
        .long   2438313840
        .long   3195845675
        .long   0
        .long   3217741275
        .long   622109995
        .long   3194658879
        .long   0
        .long   3217734445
        .long   1380674991
        .long   3194813213
        .long   0
        .long   3217727616
        .long   532356761
        .long   3195697357
        .long   0
        .long   3217720793
        .long   3816638055
        .long   3188822039
        .long   0
        .long   3217713972
        .long   2543132486
        .long   3194062008
        .long   0
        .long   3217707156
        .long   3781500864
        .long   3194442569
        .long   0
        .long   3217700343
        .long   3271981533
        .long   3195127980
        .long   0
        .long   3217693535
        .long   2193594423
        .long   3195202582
        .long   0
        .long   3217686730
        .long   908278928
        .long   3195523219
        .long   0
        .long   3217679930
        .long   1565596
        .long   3195556580
        .long   0
        .long   3217673133
        .long   2150610967
        .long   3195871192
        .long   0
        .long   3217666340
        .long   2927195196
        .long   3193557311
        .long   0
        .long   3217659549
        .long   1577220047
        .long   3195309368
        .long   0
        .long   3217652763
        .long   2822277736
        .long   3196020623
        .long   0
        .long   3217645983
        .long   3902046444
        .long   3193790856
        .long   0
        .long   3217639205
        .long   328998549
        .long   3195331787
        .long   0
        .long   3217632431
        .long   2753795905
        .long   3194000361
        .long   0
        .long   3217625660
        .long   2232384424
        .long   3191624077
        .long   0
        .long   3217618893
        .long   3362724876
        .long   3195632511
        .long   0
        .long   3217612130
        .long   2685500669
        .long   3195523712
        .long   0
        .long   3217605370
        .long   1959170703
        .long   3195864961
        .long   0
        .long   3217598616
        .long   1691145527
        .long   3191177082
        .long   0
        .long   3217591864
        .long   523145001
        .long   3194626765
        .long   0
        .long   3217585116
        .long   696251972
        .long   3189528621
        .long   0
        .long   3217578372
        .long   3458529112
        .long   3195260295
        .long   0
        .long   3217571632
        .long   3133416995
        .long   3194926870
        .long   0
        .long   3217564895
        .long   255919104
        .long   3195230506
        .long   0
        .long   3217558163
        .long   1955031973
        .long   3195548721
        .long   0
        .long   3217551433
        .long   3106947854
        .long   3194725625
        .long   0
        .long   3217544708
        .long   990604043
        .long   3193137117
        .long   0
        .long   3217537986
        .long   2715581070
        .long   3193266789
        .long   0
        .long   3217531269
        .long   2743222724
        .long   3193926060
        .long   0
        .long   3217524555
        .long   4186399851
        .long   3195298689
        .long   0
        .long   3217517845
        .long   3154468969
        .long   3194378244
        .long   0
        .long   3217511138
        .long   1498790854
        .long   3194546238
        .long   0
        .long   3217504434
        .long   2289901185
        .long   3195566617
        .long   0
        .long   3217497736
        .long   1299060885
        .long   3193950469
        .long   0
        .long   3217491039
        .long   1695279173
        .long   3194253799
        .long   0
        .long   3217484347
        .long   2459318143
        .long   3195043485
        .long   0
        .long   3217477660
        .long   1318896562
        .long   3195739065
        .long   0
        .long   3217470975
        .long   3399155144
        .long   3195614926
        .long   0
        .long   3217464294
        .long   2175532535
        .long   3192697768
        .long   0
        .long   3217457617
        .long   2821221487
        .long   3195216209
        .long   0
        .long   3217450944
        .long   1050471715
        .long   3194944558
        .long   0
        .long   3217444274
        .long   2896097874
        .long   3195595654
        .long   0
        .long   3217437608
        .long   448663497
        .long   3194966239
        .long   0
        .long   3217430945
        .long   4271049871
        .long   3195270062
        .long   0
        .long   3217424287
        .long   3223000093
        .long   3195984944
        .long   0
        .long   3217417631
        .long   838735400
        .long   3195996397
        .long   0
        .long   3217410981
        .long   1894172303
        .long   3193537457
        .long   0
        .long   3217404333
        .long   3720049521
        .long   3195818818
        .long   0
        .long   3217397690
        .long   2664115622
        .long   3190944059
        .long   0
        .long   3217391049
        .long   3358571556
        .long   3195339663
        .long   0
        .long   3217384412
        .long   2902988675
        .long   3195551733
        .long   0
        .long   3217377779
        .long   2792446069
        .long   3194365731
        .long   0
        .long   3217371149
        .long   3383719562
        .long   3194715004
        .long   0
        .long   3217364523
        .long   371933453
        .long   3189733585
        .long   0
        .long   3217357901
        .long   2033346561
        .long   3195843446
        .long   0
        .long   3217351282
        .long   2490390795
        .long   3195037178
        .long   0
        .long   3217344668
        .long   871211063
        .long   3194763778
        .long   0
        .long   3217338056
        .long   1435072769
        .long   3192783168
        .long   0
        .long   3217331449
        .long   63108017
        .long   3192895712
        .long   0
        .long   3217324843
        .long   429747946
        .long   3195832726
        .long   0
        .long   3217318244
        .long   3357428628
        .long   3188698891
        .long   0
        .long   3217311645
        .long   4059192451
        .long   3195846727
        .long   0
        .long   3217305053
        .long   1365972095
        .long   3193163994
        .long   0
        .long   3217298463
        .long   181083177
        .long   3196046105
        .long   0
        .long   3217291876
        .long   207665873
        .long   3195278572
        .long   0
        .long   3217285294
        .long   2555026016
        .long   3195333050
        .long   0
        .long   3217278716
        .long   3435214381
        .long   3194110775
        .long   0
        .long   3217272139
        .long   3423519400
        .long   3195499700
        .long   0
        .long   3217265568
        .long   192871548
        .long   3195218744
        .long   0
        .long   3217258999
        .long   834855312
        .long   3194149577
        .long   0
        .long   3217252435
        .long   2755511593
        .long   3194701583
        .long   0
        .long   3217245873
        .long   371981362
        .long   3194596342
        .long   0
        .long   3217239315
        .long   882911353
        .long   3190531251
        .long   0
        .long   3217232762
        .long   2548239619
        .long   3192753122
        .long   0
        .long   3217226211
        .long   2707704866
        .long   3191954429
        .long   0
        .long   3217219663
        .long   2492144320
        .long   3195419582
        .long   0
        .long   3217213120
        .long   1118888178
        .long   3187763775
        .long   0
        .long   3217206580
        .long   3635693166
        .long   3187717376
        .long   0
        .long   3217200043
        .long   2866004879
        .long   3195435060
        .long   0
        .long   3217193511
        .long   3738567713
        .long   3192602551
        .long   0
        .long   3217186982
        .long   2403061065
        .long   3193751041
        .long   0
        .long   3217180455
        .long   3155708000
        .long   3193977689
        .long   0
        .long   3217173933
        .long   2516361431
        .long   3195688294
        .long   0
        .long   3217167414
        .long   1993682103
        .long   3194241861
        .long   0
        .long   3217160900
        .long   931047246
        .long   3194459850
        .long   0
        .long   3217154388
        .long   2357548445
        .long   3194419065
        .long   0
        .long   3217147880
        .long   2522835332
        .long   3192643124
        .long   0
        .long   3217141373
        .long   1879285990
        .long   3195659435
        .long   0
        .long   3217134873
        .long   3818568364
        .long   3192519953
        .long   0
        .long   3217128376
        .long   2341847387
        .long   3193354164
        .long   0
        .long   3217121881
        .long   1044171365
        .long   3193750381
        .long   0
        .long   3217115390
        .long   1466037916
        .long   3191983688
        .long   0
        .long   3217108902
        .long   87123985
        .long   3195472415
        .long   0
        .long   3217102419
        .long   3692756628
        .long   3193408841
        .long   0
        .long   3217095939
        .long   835558996
        .long   3194883530
        .long   0
        .long   3217089461
        .long   235548629
        .long   3195555429
        .long   0
        .long   3217082987
        .long   1473895097
        .long   3195818861
        .long   0
        .long   3217076517
        .long   1468858877
        .long   3195754405
        .long   0
        .long   3217070051
        .long   3476923690
        .long   3195378880
        .long   0
        .long   3217063587
        .long   2083957431
        .long   3195067519
        .long   0
        .long   3217057129
        .long   653174521
        .long   3192063351
        .long   0
        .long   3217050672
        .long   330347861
        .long   3195360039
        .long   0
        .long   3217044220
        .long   4163060375
        .long   3193042742
        .long   0
        .long   3217037769
        .long   655523368
        .long   3195370132
        .long   0
        .long   3217031324
        .long   165033185
        .long   3195917177
        .long   0
        .long   3217018596
        .long   2451734327
        .long   3194021131
        .long   0
        .long   3217005719
        .long   733830196
        .long   3188749387
        .long   0
        .long   3216992845
        .long   448162519
        .long   3194320635
        .long   0
        .long   3216979983
        .long   3541733870
        .long   3194704756
        .long   0
        .long   3216967126
        .long   4007770139
        .long   3192763920
        .long   0
        .long   3216954272
        .long   2542701496
        .long   3194624439
        .long   0
        .long   3216941430
        .long   3210146190
        .long   3194965174
        .long   0
        .long   3216928593
        .long   198424127
        .long   3193435774
        .long   0
        .long   3216915763
        .long   3601349996
        .long   3194382887
        .long   0
        .long   3216902938
        .long   210106919
        .long   3193060543
        .long   0
        .long   3216890120
        .long   2166324646
        .long   3194649837
        .long   0
        .long   3216877311
        .long   3176464770
        .long   3193312737
        .long   0
        .long   3216864509
        .long   1131568387
        .long   3194703264
        .long   0
        .long   3216851712
        .long   2855127652
        .long   3194325577
        .long   0
        .long   3216838923
        .long   987254513
        .long   3193988692
        .long   0
        .long   3216826138
        .long   1880006425
        .long   3194357565
        .long   0
        .long   3216813365
        .long   3612923737
        .long   3194200732
        .long   0
        .long   3216800593
        .long   2104212637
        .long   3192502391
        .long   0
        .long   3216787832
        .long   4098392036
        .long   3194109831
        .long   0
        .long   3216775076
        .long   3032901152
        .long   3193248108
        .long   0
        .long   3216762328
        .long   1510152099
        .long   3192483448
        .long   0
        .long   3216749584
        .long   26573632
        .long   3193889941
        .long   0
        .long   3216736848
        .long   1212773515
        .long   3194812127
        .long   0
        .long   3216724117
        .long   1272384655
        .long   3194523542
        .long   0
        .long   3216711398
        .long   391224244
        .long   3193991875
        .long   0
        .long   3216698680
        .long   174468048
        .long   3188044585
        .long   0
        .long   3216685973
        .long   3495439369
        .long   3193644138
        .long   0
        .long   3216673271
        .long   562110310
        .long   3193255719
        .long   0
        .long   3216660573
        .long   4270374115
        .long   3194472853
        .long   0
        .long   3216647884
        .long   3781289832
        .long   3193529861
        .long   0
        .long   3216635203
        .long   2832059071
        .long   3193159022
        .long   0
        .long   3216622526
        .long   1217340318
        .long   3194516390
        .long   0
        .long   3216609858
        .long   624551246
        .long   3193977051
        .long   0
        .long   3216597194
        .long   4041951210
        .long   3194631542
        .long   0
        .long   3216584539
        .long   2028438232
        .long   3193741669
        .long   0
        .long   3216571888
        .long   93099012
        .long   3194319325
        .long   0
        .long   3216559246
        .long   2456500498
        .long   3192815986
        .long   0
        .long   3216546612
        .long   2761563865
        .long   3192229560
        .long   0
        .long   3216533982
        .long   872643390
        .long   3194450788
        .long   0
        .long   3216521357
        .long   3070664325
        .long   3194890024
        .long   0
        .long   3216508741
        .long   3585410270
        .long   3194078908
        .long   0
        .long   3216496133
        .long   2449281783
        .long   3194149367
        .long   0
        .long   3216483530
        .long   1198491839
        .long   3193155979
        .long   0
        .long   3216470931
        .long   3608918574
        .long   3194428202
        .long   0
        .long   3216458341
        .long   733833448
        .long   3194169666
        .long   0
        .long   3216445759
        .long   803531950
        .long   3194915644
        .long   0
        .long   3216433183
        .long   3589101801
        .long   3190265325
        .long   0
        .long   3216420610
        .long   1148851194
        .long   3194768391
        .long   0
        .long   3216408047
        .long   2202069022
        .long   3192860325
        .long   0
        .long   3216395492
        .long   2324692388
        .long   3191997241
        .long   0
        .long   3216382938
        .long   2903658154
        .long   3190636871
        .long   0
        .long   3216370396
        .long   2203818087
        .long   3193150566
        .long   0
        .long   3216357855
        .long   3512375392
        .long   3194165235
        .long   0
        .long   3216345327
        .long   273359950
        .long   3192927348
        .long   0
        .long   3216332799
        .long   3770494612
        .long   3194953210
        .long   0
        .long   3216320281
        .long   4010399688
        .long   3193182345
        .long   0
        .long   3216307771
        .long   3564491985
        .long   3193101430
        .long   0
        .long   3216295266
        .long   1997150005
        .long   3192075352
        .long   0
        .long   3216282765
        .long   3049829531
        .long   3194782243
        .long   0
        .long   3216270274
        .long   3794804802
        .long   3193179537
        .long   0
        .long   3216257787
        .long   105748591
        .long   3194270847
        .long   0
        .long   3216245305
        .long   650649155
        .long   3194807509
        .long   0
        .long   3216232832
        .long   1242111302
        .long   3194765681
        .long   0
        .long   3216220368
        .long   3100116739
        .long   3194180621
        .long   0
        .long   3216207905
        .long   2823135836
        .long   3193933041
        .long   0
        .long   3216195451
        .long   3349309551
        .long   3192064613
        .long   0
        .long   3216183005
        .long   1914005084
        .long   3194147434
        .long   0
        .long   3216170565
        .long   3820665233
        .long   3189505879
        .long   0
        .long   3216158129
        .long   3243698221
        .long   3193866975
        .long   0
        .long   3216145698
        .long   475994629
        .long   3194903812
        .long   0
        .long   3216133277
        .long   2514433100
        .long   3192955408
        .long   0
        .long   3216120864
        .long   403000866
        .long   3193657282
        .long   0
        .long   3216108452
        .long   4103637128
        .long   3194689542
        .long   0
        .long   3216096050
        .long   3697321750
        .long   3192061993
        .long   0
        .long   3216083652
        .long   3533458410
        .long   3194035854
        .long   0
        .long   3216071263
        .long   505206761
        .long   3194662478
        .long   0
        .long   3216058880
        .long   376084181
        .long   3192858709
        .long   0
        .long   3216046501
        .long   1130964551
        .long   3194539207
        .long   0
        .long   3216034132
        .long   4287884960
        .long   3192963768
        .long   0
        .long   3216021764
        .long   812141044
        .long   3190986496
        .long   0
        .long   3216009408
        .long   2548015311
        .long   3194362997
        .long   0
        .long   3215997054
        .long   3248094678
        .long   3194288464
        .long   0
        .long   3215984709
        .long   2774143461
        .long   3194238141
        .long   0
        .long   3215962147
        .long   3685172673
        .long   3193140277
        .long   0
        .long   3215937478
        .long   34195044
        .long   3192361842
        .long   0
        .long   3215912827
        .long   2634118068
        .long   3191768156
        .long   0
        .long   3215888186
        .long   3176380607
        .long   3193074056
        .long   0
        .long   3215863556
        .long   4073721017
        .long   3192513761
        .long   0
        .long   3215838936
        .long   1630699674
        .long   3193428827
        .long   0
        .long   3215814335
        .long   2883540767
        .long   3192113147
        .long   0
        .long   3215789744
        .long   1945195295
        .long   3192653928
        .long   0
        .long   3215765164
        .long   1680941704
        .long   3191066642
        .long   0
        .long   3215740594
        .long   454148743
        .long   3192837946
        .long   0
        .long   3215716043
        .long   1642744018
        .long   3190984023
        .long   0
        .long   3215691502
        .long   1469759626
        .long   3192792921
        .long   0
        .long   3215666972
        .long   2072896110
        .long   3192842898
        .long   0
        .long   3215642453
        .long   1128375468
        .long   3191473132
        .long   0
        .long   3215617944
        .long   1700889023
        .long   3193237433
        .long   0
        .long   3215593454
        .long   2152031588
        .long   3193084582
        .long   0
        .long   3215568975
        .long   3153088533
        .long   3192043023
        .long   0
        .long   3215544506
        .long   948524716
        .long   3193563725
        .long   0
        .long   3215520056
        .long   2379930838
        .long   3193733647
        .long   0
        .long   3215495610
        .long   860641527
        .long   3190284378
        .long   0
        .long   3215471181
        .long   2998535030
        .long   3193778729
        .long   0
        .long   3215446764
        .long   3230587212
        .long   3193200247
        .long   0
        .long   3215422358
        .long   3069793617
        .long   3192026710
        .long   0
        .long   3215397962
        .long   2480079877
        .long   3193733793
        .long   0
        .long   3215373578
        .long   524036170
        .long   3192774333
        .long   0
        .long   3215349212
        .long   2174341080
        .long   3193543696
        .long   0
        .long   3215324858
        .long   942207192
        .long   3191115295
        .long   0
        .long   3215300514
        .long   3101644490
        .long   3193061566
        .long   0
        .long   3215276182
        .long   923504793
        .long   3189435749
        .long   0
        .long   3215251860
        .long   1829313629
        .long   3193186582
        .long   0
        .long   3215227550
        .long   112678546
        .long   3192182235
        .long   0
        .long   3215203258
        .long   3866114170
        .long   3193851890
        .long   0
        .long   3215178970
        .long   1852268242
        .long   3193861087
        .long   0
        .long   3215154701
        .long   1257683952
        .long   3193827993
        .long   0
        .long   3215130444
        .long   1707073265
        .long   3190923423
        .long   0
        .long   3215106197
        .long   4268388449
        .long   3193082042
        .long   0
        .long   3215081962
        .long   3292217729
        .long   3192017233
        .long   0
        .long   3215057738
        .long   3227804721
        .long   3191986395
        .long   0
        .long   3215033525
        .long   2004651165
        .long   3193084076
        .long   0
        .long   3215009332
        .long   3622306650
        .long   3188761337
        .long   0
        .long   3214985142
        .long   1712312456
        .long   3188440140
        .long   0
        .long   3214960971
        .long   3079998739
        .long   3191653236
        .long   0
        .long   3214936811
        .long   2900099685
        .long   3193610328
        .long   0
        .long   3214891296
        .long   2120086208
        .long   3189021517
        .long   0
        .long   3214843023
        .long   3884702627
        .long   3188762535
        .long   0
        .long   3214794773
        .long   2542646001
        .long   3185584669
        .long   0
        .long   3214746545
        .long   2726758030
        .long   3192820263
        .long   0
        .long   3214698341
        .long   157783032
        .long   3192816993
        .long   0
        .long   3214650161
        .long   571973410
        .long   3188287713
        .long   0
        .long   3214602003
        .long   3235619407
        .long   3190981733
        .long   0
        .long   3214553868
        .long   836818699
        .long   3192325406
        .long   0
        .long   3214505757
        .long   1979660954
        .long   3191388370
        .long   0
        .long   3214457685
        .long   2307406117
        .long   3188861915
        .long   0
        .long   3214409620
        .long   1565589195
        .long   3191274488
        .long   0
        .long   3214361579
        .long   2395778116
        .long   3187178682
        .long   0
        .long   3214313576
        .long   2148275312
        .long   3192640893
        .long   0
        .long   3214265582
        .long   945215022
        .long   3191595667
        .long   0
        .long   3214217611
        .long   3773939323
        .long   3191903776
        .long   0
        .long   3214169679
        .long   3479353361
        .long   3192800037
        .long   0
        .long   3214121756
        .long   2942969280
        .long   3190480617
        .long   0
        .long   3214073856
        .long   3532612553
        .long   3189820998
        .long   0
        .long   3214025995
        .long   2679569931
        .long   3191994026
        .long   0
        .long   3213978142
        .long   2572640283
        .long   3192799552
        .long   0
        .long   3213930329
        .long   2788579501
        .long   3192804325
        .long   0
        .long   3213879609
        .long   1298308477
        .long   3191791314
        .long   0
        .long   3213784047
        .long   3934074411
        .long   3191482834
        .long   0
        .long   3213688565
        .long   4266305381
        .long   3189649017
        .long   0
        .long   3213593098
        .long   41558379
        .long   3191768965
        .long   0
        .long   3213497680
        .long   3584605677
        .long   3191316852
        .long   0
        .long   3213402310
        .long   2402932686
        .long   3191201256
        .long   0
        .long   3213306988
        .long   1061463941
        .long   3191620074
        .long   0
        .long   3213211747
        .long   4292342829
        .long   3189329001
        .long   0
        .long   3213116522
        .long   220507961
        .long   3189399118
        .long   0
        .long   3213021345
        .long   3949738008
        .long   3191346705
        .long   0
        .long   3212926217
        .long   2630220167
        .long   3191723482
        .long   0
        .long   3212825413
        .long   3769653518
        .long   3190144384
        .long   0
        .long   3212635289
        .long   2968429840
        .long   3189564539
        .long   0
        .long   3212445326
        .long   8877429
        .long   3190217697
        .long   0
        .long   3212255462
        .long   347726252
        .long   3181028598
        .long   0
        .long   3212065631
        .long   2984998978
        .long   3190233750
        .long   0
        .long   3211875963
        .long   356621
        .long   3189971190
        .long   0
        .long   3211584372
        .long   304813922
        .long   3188488782
        .long   0
        .long   3211205430
        .long   3822195921
        .long   3189540305
        .long   0
        .long   3210826559
        .long   1638539092
        .long   3188619579
        .long   0
        .long   3210156060
        .long   1163243384
        .long   3187747178
        .long   0
        .long   3209107086
        .long   887880220
        .long   3186822511
        .long   0
        .long   0
        .long   0
        .long   0
        .byte 0
        .org .+46
        .byte   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   2851812149
        .long   1072698941
        .long   2595802551
        .long   1016815913
        .long   1048019041
        .long   1072704666
        .long   1398474845
        .long   3161559171
        .long   3899555717
        .long   1072710421
        .long   427280750
        .long   3163595548
        .long   3541402996
        .long   1072716208
        .long   2759177317
        .long   1015903202
        .long   702412510
        .long   1072722027
        .long   3803266086
        .long   3163328991
        .long   410360776
        .long   1072727877
        .long   1269990655
        .long   1013024446
        .long   3402036099
        .long   1072733758
        .long   405889333
        .long   1016154232
        .long   1828292879
        .long   1072739672
        .long   1255956746
        .long   1016636974
        .long   728909815
        .long   1072745618
        .long   383930225
        .long   1016078044
        .long   852742562
        .long   1072751596
        .long   667253586
        .long   1010842135
        .long   2952712987
        .long   1072757606
        .long   3293494651
        .long   3161168877
        .long   3490863953
        .long   1072763649
        .long   960797497
        .long   3163997456
        .long   3228316108
        .long   1072769725
        .long   3010241991
        .long   3159471380
        .long   2930322912
        .long   1072775834
        .long   2599499422
        .long   3163762623
        .long   3366293073
        .long   1072781976
        .long   3119426313
        .long   1015169130
        .long   1014845819
        .long   1072788152
        .long   3117910645
        .long   3162607681
        .long   948735466
        .long   1072794361
        .long   3516338027
        .long   3163623459
        .long   3949972341
        .long   1072800603
        .long   2068408548
        .long   1015962444
        .long   2214878420
        .long   1072806880
        .long   892270087
        .long   3164164998
        .long   828946858
        .long   1072813191
        .long   10642492
        .long   1016988014
        .long   586995997
        .long   1072819536
        .long   41662347
        .long   3163676568
        .long   2288159958
        .long   1072825915
        .long   2169144468
        .long   1015924597
        .long   2440944790
        .long   1072832329
        .long   2492769773
        .long   1015196030
        .long   1853186616
        .long   1072838778
        .long   3066496370
        .long   1016705150
        .long   1337108031
        .long   1072845262
        .long   3203724452
        .long   1015726421
        .long   1709341917
        .long   1072851781
        .long   2571168217
        .long   1015201075
        .long   3790955393
        .long   1072858335
        .long   2352942461
        .long   3164228666
        .long   4112506593
        .long   1072864925
        .long   2947355221
        .long   1015419624
        .long   3504003472
        .long   1072871551
        .long   3594001059
        .long   3158379228
        .long   2799960843
        .long   1072878213
        .long   1423655380
        .long   1016070727
        .long   2839424854
        .long   1072884911
        .long   1171596163
        .long   1014090255
        .long   171030293
        .long   1072891646
        .long   3526460132
        .long   1015477354
        .long   4232894513
        .long   1072898416
        .long   2383938684
        .long   1015717095
        .long   2992903935
        .long   1072905224
        .long   2218154405
        .long   1016276769
        .long   1603444721
        .long   1072912069
        .long   1548633640
        .long   3163249902
        .long   926591435
        .long   1072918951
        .long   3208833761
        .long   3163962090
        .long   1829099622
        .long   1072925870
        .long   1016661180
        .long   3164509581
        .long   887463927
        .long   1072932827
        .long   3596744162
        .long   3161842742
        .long   3272845541
        .long   1072939821
        .long   928852419
        .long   3164536824
        .long   1276261410
        .long   1072946854
        .long   300981947
        .long   1015732745
        .long   78413852
        .long   1072953925
        .long   4183226867
        .long   3164065827
        .long   569847338
        .long   1072961034
        .long   472945272
        .long   3160339305
        .long   3645941911
        .long   1072968181
        .long   3814685080
        .long   3162621917
        .long   1617004845
        .long   1072975368
        .long   82804943
        .long   1011391354
        .long   3978100823
        .long   1072982593
        .long   3513027190
        .long   1016894539
        .long   3049340112
        .long   1072989858
        .long   3062915824
        .long   1014219171
        .long   4040676318
        .long   1072997162
        .long   4090609238
        .long   1016712034
        .long   3577096743
        .long   1073004506
        .long   2951496418
        .long   1014842263
        .long   2583551245
        .long   1073011890
        .long   3161094195
        .long   1016655067
        .long   1990012071
        .long   1073019314
        .long   3529070563
        .long   3163861769
        .long   2731501122
        .long   1073026778
        .long   1774031854
        .long   3163518597
        .long   1453150082
        .long   1073034283
        .long   498154668
        .long   3162536638
        .long   3395129871
        .long   1073041828
        .long   4025345434
        .long   3163383964
        .long   917841882
        .long   1073049415
        .long   18715564
        .long   1016707884
        .long   3566716925
        .long   1073057042
        .long   1536826855
        .long   1015191009
        .long   3712504873
        .long   1073064711
        .long   88491948
        .long   1016476236
        .long   2321106615
        .long   1073072422
        .long   2171176610
        .long   1010584347
        .long   363667784
        .long   1073080175
        .long   813753949
        .long   1016833785
        .long   3111574537
        .long   1073087969
        .long   2606161479
        .long   3163808322
        .long   2956612997
        .long   1073095806
        .long   2118169750
        .long   3163784129
        .long   885834528
        .long   1073103686
        .long   1973258546
        .long   3163310140
        .long   2186617381
        .long   1073111608
        .long   2270764083
        .long   3164321289
        .long   3561793907
        .long   1073119573
        .long   1157054052
        .long   1012938926
        .long   1719614413
        .long   1073127582
        .long   330458197
        .long   3164331316
        .long   1963711167
        .long   1073135634
        .long   1744767756
        .long   3161622870
        .long   1013258799
        .long   1073143730
        .long   1748797610
        .long   3161177658
        .long   4182873220
        .long   1073151869
        .long   629542646
        .long   3163044879
        .long   3907805044
        .long   1073160053
        .long   2257091225
        .long   3162598983
        .long   1218806132
        .long   1073168282
        .long   1818613051
        .long   3163597017
        .long   1447192521
        .long   1073176555
        .long   1462857171
        .long   3163563097
        .long   1339972927
        .long   1073184873
        .long   167908908
        .long   1016620728
        .long   1944781191
        .long   1073193236
        .long   3993278767
        .long   3162772855
        .long   19972402
        .long   1073201645
        .long   3507899861
        .long   1017057868
        .long   919555682
        .long   1073210099
        .long   3121969534
        .long   1013996802
        .long   1413356050
        .long   1073218599
        .long   1651349290
        .long   3163716742
        .long   2571947539
        .long   1073227145
        .long   3558159063
        .long   3164425245
        .long   1176749997
        .long   1073235738
        .long   2738998779
        .long   3163084420
        .long   2604962541
        .long   1073244377
        .long   2614425274
        .long   3164587768
        .long   3649726105
        .long   1073253063
        .long   4085036346
        .long   1016698050
        .long   1110089947
        .long   1073261797
        .long   1451641638
        .long   1016523249
        .long   380978316
        .long   1073270578
        .long   854188970
        .long   3161511262
        .long   2568320822
        .long   1073279406
        .long   2732824428
        .long   1015401491
        .long   194117574
        .long   1073288283
        .long   777528611
        .long   3164460665
        .long   2966275557
        .long   1073297207
        .long   2176155323
        .long   3160891335
        .long   3418903055
        .long   1073306180
        .long   2527457337
        .long   3161869180
        .long   2682146384
        .long   1073315202
        .long   2082178512
        .long   3164411995
        .long   1892288442
        .long   1073324273
        .long   2446255666
        .long   3163648957
        .long   2191782032
        .long   1073333393
        .long   2960257726
        .long   1014791238
        .long   434316067
        .long   1073342563
        .long   2028358766
        .long   1014506698
        .long   2069751141
        .long   1073351782
        .long   1562170674
        .long   3163773257
        .long   3964284211
        .long   1073361051
        .long   2111583915
        .long   1016475740
        .long   2990417245
        .long   1073370371
        .long   3683467745
        .long   3164417902
        .long   321958744
        .long   1073379742
        .long   3401933766
        .long   1016843134
        .long   1434058175
        .long   1073389163
        .long   251133233
        .long   1016134345
        .long   3218338682
        .long   1073398635
        .long   3404164304
        .long   3163525684
        .long   2572866477
        .long   1073408159
        .long   878562433
        .long   1016570317
        .long   697153126
        .long   1073417735
        .long   1283515428
        .long   3164331765
        .long   3092190715
        .long   1073427362
        .long   814012167
        .long   3160571998
        .long   2380618042
        .long   1073437042
        .long   3149557219
        .long   3164369375
        .long   4076559943
        .long   1073446774
        .long   2119478330
        .long   3161806927
        .long   815859274
        .long   1073456560
        .long   240396590
        .long   3164536019
        .long   2420883922
        .long   1073466398
        .long   2049810052
        .long   1015168464
        .long   1540824585
        .long   1073476290
        .long   1064017010
        .long   3164536266
        .long   3716502172
        .long   1073486235
        .long   2303740125
        .long   1015091301
        .long   1610600570
        .long   1073496235
        .long   3766732298
        .long   1016808759
        .long   777507147
        .long   1073506289
        .long   4282924204
        .long   1016236109
        .long   2483480501
        .long   1073516397
        .long   1216371780
        .long   1014082748
        .long   3706687593
        .long   1073526560
        .long   3521726939
        .long   1014301643
        .long   1432208378
        .long   1073536779
        .long   1401068914
        .long   3163412539
        .long   1242007932
        .long   1073547053
        .long   1132034716
        .long   3164388407
        .long   135105010
        .long   1073557383
        .long   1906148727
        .long   3164424315
        .long   3707479175
        .long   1073567768
        .long   3613079302
        .long   1015213314
        .long   382305176
        .long   1073578211
        .long   2347622376
        .long   3163627201
        .long   64696965
        .long   1073588710
        .long   1768797490
        .long   1016865536
        .long   4076975200
        .long   1073599265
        .long   2029000898
        .long   1016257111
        .long   863738719
        .long   1073609879
        .long   1326992219
        .long   3163661773
        .long   351641897
        .long   1073620550
        .long   2172261526
        .long   3164059175
        .long   3884662774
        .long   1073631278
        .long   2158611599
        .long   1015258761
        .long   4224142467
        .long   1073642065
        .long   3389820385
        .long   1016255778
        .long   2728693978
        .long   1073652911
        .long   396109971
        .long   3164511267
        .long   764307441
        .long   1073663816
        .long   3021057420
        .long   3164378099
        .long   3999357479
        .long   1073674779
        .long   2258941616
        .long   1016973300
        .long   929806999
        .long   1073685803
        .long   3205336643
        .long   1016308133
        .long   1533953344
        .long   1073696886
        .long   769171850
        .long   1016714209
        .long   2912730644
        .long   1073708029
        .long   3490067721
        .long   3164453650
        .long   2174652632
        .long   1073719233
        .long   4087714590
        .long   1015498835
        .long   730821105
        .long   1073730498
        .long   2523232743
        .long   1013115764
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3478756438
        .long   1066416464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3913391954
        .long   3214626464
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   3724320646
        .long   1067950900
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   713798755
        .long   3216330823
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1655945238
        .long   1069842388
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   1181303047
        .long   3218484803
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   2523158510
        .long   1048167334
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   3884607281
        .long   1062590591
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   1874480759
        .long   1065595563
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   3607404735
        .long   1068264200
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
        .long   4286760334
        .long   1070514109
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
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   4294967295
        .long   1048575
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
        .long   0
        .long   1072168448
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
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
        .long   0
        .long   1094189056
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
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   1073741824
        .long   3220641095
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   1120403456
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
        .long   0
        .long   4293918720
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
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   1127219200
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   0
        .long   956301312
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   1048576
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
        .long   2097152
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
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1083129855
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   1048064
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   512
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1072168448
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1094189056
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
        .long   1072693248
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
        .space 128, 0x0
_vmldPowHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   1072629696
        .long   0
        .long   1072569856
        .long   0
        .long   1072513472
        .long   0
        .long   1072460224
        .long   0
        .long   1072409856
        .long   0
        .long   1072362112
        .long   0
        .long   1072316864
        .long   0
        .long   1072273792
        .long   0
        .long   1072232896
        .long   0
        .long   1072193920
        .long   0
        .long   1072156736
        .long   0
        .long   1072121280
        .long   0
        .long   1072087424
        .long   0
        .long   1072054976
        .long   0
        .long   1072023936
        .long   0
        .long   1071994176
        .long   0
        .long   1071965696
        .long   0
        .long   1071938304
        .long   0
        .long   1071911936
        .long   0
        .long   1071886656
        .long   0
        .long   1071862272
        .long   0
        .long   1071838848
        .long   0
        .long   1071816256
        .long   0
        .long   1071794496
        .long   0
        .long   1071773440
        .long   0
        .long   1071753152
        .long   0
        .long   1071733504
        .long   0
        .long   1071714560
        .long   0
        .long   1071696256
        .long   0
        .long   1071678528
        .long   0
        .long   1071661312
        .long   0
        .long   1071644672
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2686386176
        .long   1067891457
        .long   1949948785
        .long   1027381598
        .long   1341652992
        .long   1068918120
        .long   2376679344
        .long   1026589938
        .long   2182004736
        .long   1069583575
        .long   297009671
        .long   1026900933
        .long   1687183360
        .long   1069924424
        .long   2120169064
        .long   1026082260
        .long   53207040
        .long   1070255920
        .long   3737096550
        .long   1026438963
        .long   3818315776
        .long   1070578756
        .long   677794872
        .long   1028109305
        .long   2429726720
        .long   1070744485
        .long   3907638365
        .long   1027382133
        .long   2702757888
        .long   1070897876
        .long   1929563302
        .long   1027984695
        .long   2465140736
        .long   1071047207
        .long   243175481
        .long   1026641700
        .long   2657701888
        .long   1071193041
        .long   3841377895
        .long   1028504382
        .long   658427904
        .long   1071335525
        .long   161357665
        .long   1028306250
        .long   539168768
        .long   1071474585
        .long   2531816708
        .long   1025043792
        .long   2658430976
        .long   1071610420
        .long   2178519328
        .long   1028288112
        .long   1355743232
        .long   1071694102
        .long   3943781029
        .long   1028003666
        .long   1854838784
        .long   1071759170
        .long   1812291414
        .long   1027042047
        .long   473251840
        .long   3218771869
        .long   1330616404
        .long   3175482613
        .long   2315530240
        .long   3218647330
        .long   3482179716
        .long   3175726112
        .long   3886694400
        .long   3218525081
        .long   3584491563
        .long   3175164762
        .long   1568866304
        .long   3218405023
        .long   3528175174
        .long   3174626157
        .long   4172640256
        .long   3218287637
        .long   3760034354
        .long   3171774178
        .long   3545214976
        .long   3218172213
        .long   881689765
        .long   3173077446
        .long   2121375744
        .long   3218038698
        .long   549802690
        .long   3174897014
        .long   492560384
        .long   3217816668
        .long   239252792
        .long   3173483664
        .long   155754496
        .long   3217598893
        .long   1693604438
        .long   3175909818
        .long   4285202432
        .long   3217384365
        .long   127148739
        .long   3175942199
        .long   41181184
        .long   3217174003
        .long   3260046653
        .long   3174058211
        .long   2465087488
        .long   3216902292
        .long   4241850247
        .long   3175110025
        .long   1101037568
        .long   3216495763
        .long   3170347605
        .long   3176066808
        .long   3478798336
        .long   3216096373
        .long   329155479
        .long   3175972274
        .long   3246555136
        .long   3215423741
        .long   4071576371
        .long   3174315914
        .long   830078976
        .long   3214361213
        .long   1258533012
        .long   3175547121
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   1072689152
        .long   0
        .long   1072685056
        .long   0
        .long   1072681024
        .long   0
        .long   1072676992
        .long   0
        .long   1072672960
        .long   0
        .long   1072668928
        .long   0
        .long   1072664960
        .long   0
        .long   1072660992
        .long   0
        .long   1072657024
        .long   0
        .long   1072653056
        .long   0
        .long   1072649152
        .long   0
        .long   1072645248
        .long   0
        .long   1072641344
        .long   0
        .long   1072637440
        .long   0
        .long   1072710976
        .long   0
        .long   1072709888
        .long   0
        .long   1072708864
        .long   0
        .long   1072707776
        .long   0
        .long   1072706752
        .long   0
        .long   1072705664
        .long   0
        .long   1072704640
        .long   0
        .long   1072703616
        .long   0
        .long   1072702528
        .long   0
        .long   1072701504
        .long   0
        .long   1072700480
        .long   0
        .long   1072699456
        .long   0
        .long   1072698368
        .long   0
        .long   1072697344
        .long   0
        .long   1072696320
        .long   0
        .long   1072695296
        .long   0
        .long   1072694272
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2754084864
        .long   1063721742
        .long   2557931335
        .long   1028226920
        .long   3228041216
        .long   1064771801
        .long   930662348
        .long   1027873525
        .long   2323251200
        .long   1065436614
        .long   2596299912
        .long   1027915217
        .long   1641152512
        .long   1065811444
        .long   1188689655
        .long   1027383036
        .long   895221760
        .long   1066187001
        .long   2918954073
        .long   1026717129
        .long   3962896384
        .long   1066482539
        .long   1338190555
        .long   1024402868
        .long   2071330816
        .long   1066668054
        .long   2834125591
        .long   1027573772
        .long   830078976
        .long   1066853925
        .long   1683363035
        .long   1027948302
        .long   1828782080
        .long   1067040153
        .long   874130859
        .long   1026348678
        .long   2395996160
        .long   1067226740
        .long   1724975876
        .long   1028585613
        .long   3558866944
        .long   1067410669
        .long   2189961434
        .long   1027936707
        .long   2542927872
        .long   1067522658
        .long   3621009110
        .long   1028493916
        .long   4208394240
        .long   1067614973
        .long   2777386350
        .long   1028255456
        .long   3217162240
        .long   1067707465
        .long   772669574
        .long   1028516547
        .long   824377344
        .long   3214460051
        .long   1593617402
        .long   3175722247
        .long   830078976
        .long   3214361213
        .long   1258533012
        .long   3175547121
        .long   4002480128
        .long   3214268096
        .long   1397883555
        .long   3175764245
        .long   2914385920
        .long   3214169062
        .long   3775067953
        .long   3175176772
        .long   1460142080
        .long   3214075761
        .long   1592372614
        .long   3175907032
        .long   219152384
        .long   3213976530
        .long   1716511551
        .long   3175540921
        .long   3419144192
        .long   3213880645
        .long   1128677462
        .long   3174560569
        .long   3320446976
        .long   3213693490
        .long   2965227743
        .long   3172454196
        .long   677904384
        .long   3213494440
        .long   4029390031
        .long   3174409513
        .long   1290797056
        .long   3213306911
        .long   1477436787
        .long   3173730612
        .long   2800877568
        .long   3213119200
        .long   4281418519
        .long   3173304523
        .long   3692822528
        .long   3212931307
        .long   751117103
        .long   3175382448
        .long   2547253248
        .long   3212626079
        .long   2419265147
        .long   3175328924
        .long   1836580864
        .long   3212249540
        .long   1456335141
        .long   3175441338
        .long   3438542848
        .long   3211872634
        .long   3721652080
        .long   3176073447
        .long   4278714368
        .long   3211202435
        .long   836003693
        .long   3174279974
        .long   926941184
        .long   3210154597
        .long   4249864733
        .long   3174015648
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1073741824
        .long   1073157447
        .long   0
        .long   1073157401
        .long   0
        .long   1073157355
        .long   3221225472
        .long   1073157308
        .long   2147483648
        .long   1073157262
        .long   2147483648
        .long   1073157216
        .long   1073741824
        .long   1073157170
        .long   1073741824
        .long   1073157124
        .long   0
        .long   1073157078
        .long   3221225472
        .long   1073157031
        .long   3221225472
        .long   1073156985
        .long   2147483648
        .long   1073156939
        .long   2147483648
        .long   1073156893
        .long   1073741824
        .long   1073156847
        .long   1073741824
        .long   1073156801
        .long   0
        .long   1073156755
        .long   0
        .long   1073156709
        .long   3221225472
        .long   1073156662
        .long   3221225472
        .long   1073156616
        .long   2147483648
        .long   1073156570
        .long   2147483648
        .long   1073156524
        .long   2147483648
        .long   1073156478
        .long   1073741824
        .long   1073156432
        .long   1073741824
        .long   1073156386
        .long   0
        .long   1073156340
        .long   0
        .long   1073156294
        .long   0
        .long   1073156248
        .long   3221225472
        .long   1073156201
        .long   3221225472
        .long   1073156155
        .long   2147483648
        .long   1073156109
        .long   2147483648
        .long   1073156063
        .long   2147483648
        .long   1073156017
        .long   1073741824
        .long   1073155971
        .long   1073741824
        .long   1073155925
        .long   1073741824
        .long   1073155879
        .long   1073741824
        .long   1073155833
        .long   0
        .long   1073155787
        .long   0
        .long   1073155741
        .long   0
        .long   1073155695
        .long   0
        .long   1073155649
        .long   3221225472
        .long   1073155602
        .long   3221225472
        .long   1073155556
        .long   3221225472
        .long   1073155510
        .long   3221225472
        .long   1073155464
        .long   3221225472
        .long   1073155418
        .long   2147483648
        .long   1073155372
        .long   2147483648
        .long   1073155326
        .long   2147483648
        .long   1073155280
        .long   2147483648
        .long   1073155234
        .long   2147483648
        .long   1073155188
        .long   2147483648
        .long   1073155142
        .long   2147483648
        .long   1073155096
        .long   2147483648
        .long   1073155050
        .long   2147483648
        .long   1073155004
        .long   1073741824
        .long   1073154958
        .long   1073741824
        .long   1073154912
        .long   1073741824
        .long   1073154866
        .long   1073741824
        .long   1073154820
        .long   1073741824
        .long   1073154774
        .long   1073741824
        .long   1073154728
        .long   1073741824
        .long   1073154682
        .long   2147483648
        .long   1073158995
        .long   1073741824
        .long   1073158972
        .long   1073741824
        .long   1073158949
        .long   0
        .long   1073158926
        .long   0
        .long   1073158903
        .long   3221225472
        .long   1073158879
        .long   3221225472
        .long   1073158856
        .long   2147483648
        .long   1073158833
        .long   2147483648
        .long   1073158810
        .long   1073741824
        .long   1073158787
        .long   1073741824
        .long   1073158764
        .long   0
        .long   1073158741
        .long   0
        .long   1073158718
        .long   3221225472
        .long   1073158694
        .long   3221225472
        .long   1073158671
        .long   2147483648
        .long   1073158648
        .long   2147483648
        .long   1073158625
        .long   1073741824
        .long   1073158602
        .long   1073741824
        .long   1073158579
        .long   0
        .long   1073158556
        .long   0
        .long   1073158533
        .long   3221225472
        .long   1073158509
        .long   3221225472
        .long   1073158486
        .long   2147483648
        .long   1073158463
        .long   2147483648
        .long   1073158440
        .long   1073741824
        .long   1073158417
        .long   1073741824
        .long   1073158394
        .long   1073741824
        .long   1073158371
        .long   0
        .long   1073158348
        .long   0
        .long   1073158325
        .long   3221225472
        .long   1073158301
        .long   3221225472
        .long   1073158278
        .long   2147483648
        .long   1073158255
        .long   2147483648
        .long   1073158232
        .long   2147483648
        .long   1073158209
        .long   1073741824
        .long   1073158186
        .long   1073741824
        .long   1073158163
        .long   0
        .long   1073158140
        .long   0
        .long   1073158117
        .long   3221225472
        .long   1073158093
        .long   3221225472
        .long   1073158070
        .long   3221225472
        .long   1073158047
        .long   2147483648
        .long   1073158024
        .long   2147483648
        .long   1073158001
        .long   1073741824
        .long   1073157978
        .long   1073741824
        .long   1073157955
        .long   1073741824
        .long   1073157932
        .long   0
        .long   1073157909
        .long   0
        .long   1073157886
        .long   3221225472
        .long   1073157862
        .long   3221225472
        .long   1073157839
        .long   3221225472
        .long   1073157816
        .long   2147483648
        .long   1073157793
        .long   2147483648
        .long   1073157770
        .long   2147483648
        .long   1073157747
        .long   1073741824
        .long   1073157724
        .long   1073741824
        .long   1073157701
        .long   0
        .long   1073157678
        .long   0
        .long   1073157655
        .long   0
        .long   1073157632
        .long   3221225472
        .long   1073157608
        .long   3221225472
        .long   1073157585
        .long   3221225472
        .long   1073157562
        .long   2147483648
        .long   1073157539
        .long   2147483648
        .long   1073157516
        .long   2147483648
        .long   1073157493
        .long   1073741824
        .long   1073157470
        .long   1073741824
        .long   1073157447
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1342177280
        .long   1057431575
        .long   1679773494
        .long   1024039205
        .long   989855744
        .long   1058476078
        .long   3244478756
        .long   1024589954
        .long   209715200
        .long   1059147828
        .long   152199156
        .long   1027874535
        .long   2449473536
        .long   1059526748
        .long   2343302255
        .long   1022283036
        .long   1560281088
        .long   1059903632
        .long   4038848719
        .long   1027337824
        .long   4282384384
        .long   1060196455
        .long   2325104861
        .long   1027595231
        .long   1665138688
        .long   1060384909
        .long   2934027888
        .long   1026982347
        .long   3263168512
        .long   1060574392
        .long   3208451390
        .long   1027670758
        .long   3980394496
        .long   1060763881
        .long   863587004
        .long   1026973426
        .long   2470445056
        .long   1060952352
        .long   1027097864
        .long   1028644619
        .long   1296039936
        .long   1061141853
        .long   2016162954
        .long   1025089894
        .long   3107979264
        .long   1061244623
        .long   970842239
        .long   1028172704
        .long   3722444800
        .long   1061339379
        .long   2640304163
        .long   1027825546
        .long   2959081472
        .long   1061433626
        .long   306547692
        .long   1028101690
        .long   2631925760
        .long   1061528388
        .long   747377661
        .long   1028120913
        .long   794820608
        .long   1061622641
        .long   3406550266
        .long   1028182206
        .long   3825205248
        .long   1061717408
        .long   3705775220
        .long   1027201825
        .long   916455424
        .long   1061811667
        .long   1432750358
        .long   1028165990
        .long   3011510272
        .long   1061906440
        .long   3361908688
        .long   1027438936
        .long   3330277376
        .long   1062000704
        .long   3560665332
        .long   1027805882
        .long   3082813440
        .long   1062094971
        .long   2539531329
        .long   1028011583
        .long   3747610624
        .long   1062189753
        .long   2232403651
        .long   1025658467
        .long   1218445312
        .long   1062245757
        .long   396499622
        .long   1025861782
        .long   1086324736
        .long   1062293151
        .long   2757240868
        .long   1026731615
        .long   2047868928
        .long   1062340290
        .long   2226191703
        .long   1027982328
        .long   580911104
        .long   1062387431
        .long   1252857417
        .long   1028280924
        .long   1887436800
        .long   1062434829
        .long   659583454
        .long   1025370904
        .long   4186963968
        .long   1062481972
        .long   3587661750
        .long   1028188900
        .long   738197504
        .long   1062529374
        .long   3240696709
        .long   1027025093
        .long   2511339520
        .long   1062576520
        .long   2884432087
        .long   1028614554
        .long   1859125248
        .long   1062623668
        .long   2402099113
        .long   1025699109
        .long   4148166656
        .long   1062671073
        .long   2335237504
        .long   1026835951
        .long   2970615808
        .long   1062718224
        .long   3698719430
        .long   1027808594
        .long   3662675968
        .long   1062765376
        .long   2704653673
        .long   1027603403
        .long   1929379840
        .long   1062812530
        .long   761521627
        .long   1027109120
        .long   3273654272
        .long   1062859941
        .long   470528098
        .long   1027977181
        .long   1019215872
        .long   1062907098
        .long   3704635566
        .long   1027707215
        .long   635437056
        .long   1062954256
        .long   3676592927
        .long   1027502983
        .long   2122317824
        .long   1063001415
        .long   1497197375
        .long   1028267547
        .long   2529165312
        .long   1063048832
        .long   3425827878
        .long   1022000476
        .long   3498049536
        .long   1063095994
        .long   1982476393
        .long   1026289596
        .long   2043674624
        .long   1063143158
        .long   2502680620
        .long   1028471295
        .long   2463105024
        .long   1063190323
        .long   991567028
        .long   1027421239
        .long   460324864
        .long   1063237490
        .long   1461814384
        .long   1026181618
        .long   920125440
        .long   1063270489
        .long   1613472693
        .long   1027845558
        .long   3956277248
        .long   1063294073
        .long   93449747
        .long   1028284502
        .long   1487405056
        .long   1063317659
        .long   1336931403
        .long   1026834156
        .long   2102919168
        .long   1063341245
        .long   319680825
        .long   1027392710
        .long   1508376576
        .long   1063364832
        .long   2474643583
        .long   1027776685
        .long   3999268864
        .long   1063388419
        .long   3104004650
        .long   1024627034
        .long   985137152
        .long   1063412008
        .long   550153379
        .long   1026678253
        .long   1056440320
        .long   1063435597
        .long   672168391
        .long   1027731310
        .long   4213702656
        .long   1063459186
        .long   1805142399
        .long   1026660459
        .long   2772434944
        .long   1063482905
        .long   2448602160
        .long   1028404887
        .long   3528458240
        .long   1063506496
        .long   3457943394
        .long   1027665063
        .long   3075473408
        .long   1063530088
        .long   121314862
        .long   1027996294
        .long   1414004736
        .long   1063553681
        .long   94774013
        .long   1028053481
        .long   2839019520
        .long   1063577274
        .long   1263902834
        .long   1028588748
        .long   3056074752
        .long   1063600868
        .long   369708558
        .long   1028257136
        .long   2065170432
        .long   1063624463
        .long   1634529849
        .long   1027810905
        .long   1769996288
        .long   3210227157
        .long   1054279927
        .long   3174741313
        .long   2442133504
        .long   3210203373
        .long   2067107398
        .long   3175167430
        .long   456130560
        .long   3210179845
        .long   4142755806
        .long   3170825152
        .long   2302672896
        .long   3210156060
        .long   1526169727
        .long   3175523413
        .long   1524629504
        .long   3210132531
        .long   2442955053
        .long   3175425591
        .long   251658240
        .long   3210108746
        .long   2154729168
        .long   3175535488
        .long   681574400
        .long   3210085216
        .long   4275862891
        .long   3176027230
        .long   584056832
        .long   3210061430
        .long   4255852476
        .long   3173565530
        .long   2221932544
        .long   3210037899
        .long   2498876736
        .long   3175149504
        .long   3297771520
        .long   3210014112
        .long   1851620949
        .long   3175688865
        .long   1849688064
        .long   3209990581
        .long   2923055509
        .long   3171310641
        .long   4099932160
        .long   3209966793
        .long   2427653201
        .long   3173037457
        .long   3858759680
        .long   3209943261
        .long   1550068012
        .long   3173027359
        .long   2987393024
        .long   3209919473
        .long   4127650534
        .long   3175851613
        .long   3954180096
        .long   3209895940
        .long   442055840
        .long   3174771669
        .long   4257218560
        .long   3209872151
        .long   4113960829
        .long   3175350854
        .long   2135949312
        .long   3209848618
        .long   2076166727
        .long   3175229825
        .long   3613392896
        .long   3209824828
        .long   3476091171
        .long   3171604778
        .long   2699034624
        .long   3209801294
        .long   1765290157
        .long   3173591669
        .long   1053818880
        .long   3209777504
        .long   3761837094
        .long   3175683182
        .long   1346371584
        .long   3209753969
        .long   1459626820
        .long   3176031561
        .long   875560960
        .long   3209730178
        .long   2402361097
        .long   3174909319
        .long   2375024640
        .long   3209706642
        .long   687754918
        .long   3174943382
        .long   1858076672
        .long   3209674565
        .long   252333183
        .long   3175531572
        .long   2975858688
        .long   3209627492
        .long   1334776821
        .long   3174591557
        .long   2430599168
        .long   3209579907
        .long   1326030186
        .long   3173486707
        .long   1665138688
        .long   3209532833
        .long   737674412
        .long   3174401557
        .long   2122317824
        .long   3209485758
        .long   3987168834
        .long   3175346908
        .long   815792128
        .long   3209438171
        .long   3526910672
        .long   3176068855
        .long   3686793216
        .long   3209391094
        .long   587265932
        .long   3174950865
        .long   429916160
        .long   3209343506
        .long   3143915816
        .long   3175955609
        .long   1417674752
        .long   3209296428
        .long   2918285701
        .long   3174860756
        .long   505413632
        .long   3209248838
        .long   436607152
        .long   3175743066
        .long   3904897024
        .long   3209201758
        .long   2867787430
        .long   3173594277
        .long   4229955584
        .long   3209154678
        .long   3971699810
        .long   3174682560
        .long   2556428288
        .long   3209107086
        .long   3215049067
        .long   3174495054
        .long   998244352
        .long   3209060005
        .long   2424883713
        .long   3173182748
        .long   1667235840
        .long   3209012411
        .long   762177973
        .long   3175232288
        .long   2518679552
        .long   3208965328
        .long   282609672
        .long   3175635057
        .long   1237319680
        .long   3208917733
        .long   1502777354
        .long   3174942228
        .long   203423744
        .long   3208870649
        .long   4128371954
        .long   3175884977
        .long   392167424
        .long   3208823564
        .long   306802084
        .long   3175724146
        .long   2642411520
        .long   3208775966
        .long   2960876517
        .long   3173143647
        .long   945815552
        .long   3208728880
        .long   1800251929
        .long   3170106484
        .long   1241513984
        .long   3208681281
        .long   2675524524
        .long   3173521837
        .long   3904897024
        .long   3208625826
        .long   83988225
        .long   3175795858
        .long   3477078016
        .long   3208531649
        .long   1575792028
        .long   3175657512
        .long   2537553920
        .long   3208436447
        .long   1662079495
        .long   3175916253
        .long   2634022912
        .long   3208342267
        .long   2818347875
        .long   3174383619
        .long   2080374784
        .long   3208247062
        .long   1081767985
        .long   3175779040
        .long   2696937472
        .long   3208152879
        .long   2443744157
        .long   3175275915
        .long   1459617792
        .long   3208058695
        .long   790904149
        .long   3174713637
        .long   3670016000
        .long   3207963485
        .long   581064731
        .long   3173466591
        .long   2952790016
        .long   3207869298
        .long   1008918738
        .long   3171724149
        .long   377487360
        .long   3207775110
        .long   1606538461
        .long   3175837201
        .long   1052770304
        .long   3207679896
        .long   2534546984
        .long   3175060122
        .long   2298478592
        .long   3207577425
        .long   2154814426
        .long   3172198942
        .long   117440512
        .long   3207386992
        .long   1374248651
        .long   3174502065
        .long   1342177280
        .long   3207198603
        .long   4280579335
        .long   3175188313
        .long   3154116608
        .long   3207010211
        .long   3334926656
        .long   3174829419
        .long   2189426688
        .long   3206819769
        .long   3100885346
        .long   3175936751
        .long   746586112
        .long   3206631372
        .long   315615614
        .long   3173018851
        .long   4043309056
        .long   3206340535
        .long   274116456
        .long   3175970612
        .long   268435456
        .long   3205959634
        .long   691182319
        .long   3173304996
        .long   603979776
        .long   3205582822
        .long   112661265
        .long   3170010307
        .long   4194304000
        .long   3204915176
        .long   3717748378
        .long   3174284044
        .long   2885681152
        .long   3203858420
        .long   192153543
        .long   3175961815
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   2851812149
        .long   1072698941
        .long   2595802551
        .long   1016815913
        .long   1048019041
        .long   1072704666
        .long   1398474845
        .long   3161559171
        .long   3899555717
        .long   1072710421
        .long   427280750
        .long   3163595548
        .long   3541402996
        .long   1072716208
        .long   2759177317
        .long   1015903202
        .long   702412510
        .long   1072722027
        .long   3803266086
        .long   3163328991
        .long   410360776
        .long   1072727877
        .long   1269990655
        .long   1013024446
        .long   3402036099
        .long   1072733758
        .long   405889333
        .long   1016154232
        .long   1828292879
        .long   1072739672
        .long   1255956746
        .long   1016636974
        .long   728909815
        .long   1072745618
        .long   383930225
        .long   1016078044
        .long   852742562
        .long   1072751596
        .long   667253586
        .long   1010842135
        .long   2952712987
        .long   1072757606
        .long   3293494651
        .long   3161168877
        .long   3490863953
        .long   1072763649
        .long   960797497
        .long   3163997456
        .long   3228316108
        .long   1072769725
        .long   3010241991
        .long   3159471380
        .long   2930322912
        .long   1072775834
        .long   2599499422
        .long   3163762623
        .long   3366293073
        .long   1072781976
        .long   3119426313
        .long   1015169130
        .long   1014845819
        .long   1072788152
        .long   3117910645
        .long   3162607681
        .long   948735466
        .long   1072794361
        .long   3516338027
        .long   3163623459
        .long   3949972341
        .long   1072800603
        .long   2068408548
        .long   1015962444
        .long   2214878420
        .long   1072806880
        .long   892270087
        .long   3164164998
        .long   828946858
        .long   1072813191
        .long   10642492
        .long   1016988014
        .long   586995997
        .long   1072819536
        .long   41662347
        .long   3163676568
        .long   2288159958
        .long   1072825915
        .long   2169144468
        .long   1015924597
        .long   2440944790
        .long   1072832329
        .long   2492769773
        .long   1015196030
        .long   1853186616
        .long   1072838778
        .long   3066496370
        .long   1016705150
        .long   1337108031
        .long   1072845262
        .long   3203724452
        .long   1015726421
        .long   1709341917
        .long   1072851781
        .long   2571168217
        .long   1015201075
        .long   3790955393
        .long   1072858335
        .long   2352942461
        .long   3164228666
        .long   4112506593
        .long   1072864925
        .long   2947355221
        .long   1015419624
        .long   3504003472
        .long   1072871551
        .long   3594001059
        .long   3158379228
        .long   2799960843
        .long   1072878213
        .long   1423655380
        .long   1016070727
        .long   2839424854
        .long   1072884911
        .long   1171596163
        .long   1014090255
        .long   171030293
        .long   1072891646
        .long   3526460132
        .long   1015477354
        .long   4232894513
        .long   1072898416
        .long   2383938684
        .long   1015717095
        .long   2992903935
        .long   1072905224
        .long   2218154405
        .long   1016276769
        .long   1603444721
        .long   1072912069
        .long   1548633640
        .long   3163249902
        .long   926591435
        .long   1072918951
        .long   3208833761
        .long   3163962090
        .long   1829099622
        .long   1072925870
        .long   1016661180
        .long   3164509581
        .long   887463927
        .long   1072932827
        .long   3596744162
        .long   3161842742
        .long   3272845541
        .long   1072939821
        .long   928852419
        .long   3164536824
        .long   1276261410
        .long   1072946854
        .long   300981947
        .long   1015732745
        .long   78413852
        .long   1072953925
        .long   4183226867
        .long   3164065827
        .long   569847338
        .long   1072961034
        .long   472945272
        .long   3160339305
        .long   3645941911
        .long   1072968181
        .long   3814685080
        .long   3162621917
        .long   1617004845
        .long   1072975368
        .long   82804943
        .long   1011391354
        .long   3978100823
        .long   1072982593
        .long   3513027190
        .long   1016894539
        .long   3049340112
        .long   1072989858
        .long   3062915824
        .long   1014219171
        .long   4040676318
        .long   1072997162
        .long   4090609238
        .long   1016712034
        .long   3577096743
        .long   1073004506
        .long   2951496418
        .long   1014842263
        .long   2583551245
        .long   1073011890
        .long   3161094195
        .long   1016655067
        .long   1990012071
        .long   1073019314
        .long   3529070563
        .long   3163861769
        .long   2731501122
        .long   1073026778
        .long   1774031854
        .long   3163518597
        .long   1453150082
        .long   1073034283
        .long   498154668
        .long   3162536638
        .long   3395129871
        .long   1073041828
        .long   4025345434
        .long   3163383964
        .long   917841882
        .long   1073049415
        .long   18715564
        .long   1016707884
        .long   3566716925
        .long   1073057042
        .long   1536826855
        .long   1015191009
        .long   3712504873
        .long   1073064711
        .long   88491948
        .long   1016476236
        .long   2321106615
        .long   1073072422
        .long   2171176610
        .long   1010584347
        .long   363667784
        .long   1073080175
        .long   813753949
        .long   1016833785
        .long   3111574537
        .long   1073087969
        .long   2606161479
        .long   3163808322
        .long   2956612997
        .long   1073095806
        .long   2118169750
        .long   3163784129
        .long   885834528
        .long   1073103686
        .long   1973258546
        .long   3163310140
        .long   2186617381
        .long   1073111608
        .long   2270764083
        .long   3164321289
        .long   3561793907
        .long   1073119573
        .long   1157054052
        .long   1012938926
        .long   1719614413
        .long   1073127582
        .long   330458197
        .long   3164331316
        .long   1963711167
        .long   1073135634
        .long   1744767756
        .long   3161622870
        .long   1013258799
        .long   1073143730
        .long   1748797610
        .long   3161177658
        .long   4182873220
        .long   1073151869
        .long   629542646
        .long   3163044879
        .long   3907805044
        .long   1073160053
        .long   2257091225
        .long   3162598983
        .long   1218806132
        .long   1073168282
        .long   1818613051
        .long   3163597017
        .long   1447192521
        .long   1073176555
        .long   1462857171
        .long   3163563097
        .long   1339972927
        .long   1073184873
        .long   167908908
        .long   1016620728
        .long   1944781191
        .long   1073193236
        .long   3993278767
        .long   3162772855
        .long   19972402
        .long   1073201645
        .long   3507899861
        .long   1017057868
        .long   919555682
        .long   1073210099
        .long   3121969534
        .long   1013996802
        .long   1413356050
        .long   1073218599
        .long   1651349290
        .long   3163716742
        .long   2571947539
        .long   1073227145
        .long   3558159063
        .long   3164425245
        .long   1176749997
        .long   1073235738
        .long   2738998779
        .long   3163084420
        .long   2604962541
        .long   1073244377
        .long   2614425274
        .long   3164587768
        .long   3649726105
        .long   1073253063
        .long   4085036346
        .long   1016698050
        .long   1110089947
        .long   1073261797
        .long   1451641638
        .long   1016523249
        .long   380978316
        .long   1073270578
        .long   854188970
        .long   3161511262
        .long   2568320822
        .long   1073279406
        .long   2732824428
        .long   1015401491
        .long   194117574
        .long   1073288283
        .long   777528611
        .long   3164460665
        .long   2966275557
        .long   1073297207
        .long   2176155323
        .long   3160891335
        .long   3418903055
        .long   1073306180
        .long   2527457337
        .long   3161869180
        .long   2682146384
        .long   1073315202
        .long   2082178512
        .long   3164411995
        .long   1892288442
        .long   1073324273
        .long   2446255666
        .long   3163648957
        .long   2191782032
        .long   1073333393
        .long   2960257726
        .long   1014791238
        .long   434316067
        .long   1073342563
        .long   2028358766
        .long   1014506698
        .long   2069751141
        .long   1073351782
        .long   1562170674
        .long   3163773257
        .long   3964284211
        .long   1073361051
        .long   2111583915
        .long   1016475740
        .long   2990417245
        .long   1073370371
        .long   3683467745
        .long   3164417902
        .long   321958744
        .long   1073379742
        .long   3401933766
        .long   1016843134
        .long   1434058175
        .long   1073389163
        .long   251133233
        .long   1016134345
        .long   3218338682
        .long   1073398635
        .long   3404164304
        .long   3163525684
        .long   2572866477
        .long   1073408159
        .long   878562433
        .long   1016570317
        .long   697153126
        .long   1073417735
        .long   1283515428
        .long   3164331765
        .long   3092190715
        .long   1073427362
        .long   814012167
        .long   3160571998
        .long   2380618042
        .long   1073437042
        .long   3149557219
        .long   3164369375
        .long   4076559943
        .long   1073446774
        .long   2119478330
        .long   3161806927
        .long   815859274
        .long   1073456560
        .long   240396590
        .long   3164536019
        .long   2420883922
        .long   1073466398
        .long   2049810052
        .long   1015168464
        .long   1540824585
        .long   1073476290
        .long   1064017010
        .long   3164536266
        .long   3716502172
        .long   1073486235
        .long   2303740125
        .long   1015091301
        .long   1610600570
        .long   1073496235
        .long   3766732298
        .long   1016808759
        .long   777507147
        .long   1073506289
        .long   4282924204
        .long   1016236109
        .long   2483480501
        .long   1073516397
        .long   1216371780
        .long   1014082748
        .long   3706687593
        .long   1073526560
        .long   3521726939
        .long   1014301643
        .long   1432208378
        .long   1073536779
        .long   1401068914
        .long   3163412539
        .long   1242007932
        .long   1073547053
        .long   1132034716
        .long   3164388407
        .long   135105010
        .long   1073557383
        .long   1906148727
        .long   3164424315
        .long   3707479175
        .long   1073567768
        .long   3613079302
        .long   1015213314
        .long   382305176
        .long   1073578211
        .long   2347622376
        .long   3163627201
        .long   64696965
        .long   1073588710
        .long   1768797490
        .long   1016865536
        .long   4076975200
        .long   1073599265
        .long   2029000898
        .long   1016257111
        .long   863738719
        .long   1073609879
        .long   1326992219
        .long   3163661773
        .long   351641897
        .long   1073620550
        .long   2172261526
        .long   3164059175
        .long   3884662774
        .long   1073631278
        .long   2158611599
        .long   1015258761
        .long   4224142467
        .long   1073642065
        .long   3389820385
        .long   1016255778
        .long   2728693978
        .long   1073652911
        .long   396109971
        .long   3164511267
        .long   764307441
        .long   1073663816
        .long   3021057420
        .long   3164378099
        .long   3999357479
        .long   1073674779
        .long   2258941616
        .long   1016973300
        .long   929806999
        .long   1073685803
        .long   3205336643
        .long   1016308133
        .long   1533953344
        .long   1073696886
        .long   769171850
        .long   1016714209
        .long   2912730644
        .long   1073708029
        .long   3490067721
        .long   3164453650
        .long   2174652632
        .long   1073719233
        .long   4087714590
        .long   1015498835
        .long   730821105
        .long   1073730498
        .long   2523232743
        .long   1013115764
        .long   2523158504
        .long   1048167334
        .long   1181303047
        .long   3218484803
        .long   1656151777
        .long   1069842388
        .long   714085080
        .long   3216330823
        .long   4277811695
        .long   1072049730
        .long   4286760335
        .long   1070514109
        .long   3607404736
        .long   1068264200
        .long   1874480759
        .long   1065595563
        .long   3884607281
        .long   1062590591
        .long   0
        .long   2145386496
        .long   0
        .long   1048576
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .long   0
        .long   1120403456
        .long   1073741824
        .long   1073157447
        .long   33554432
        .long   1101004800
        .long   0
        .long   1282408448
        .long   0
        .long   862978048
        .data
#endif
