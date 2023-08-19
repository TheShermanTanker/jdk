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
        .globl __jsvml_atan2_ha_e9

__jsvml_atan2_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 328
        vmovapd   xmm5, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm15
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [240+rsp], xmm14
        vmovups   XMMWORD PTR [256+rsp], xmm13
        vmovups   XMMWORD PTR [272+rsp], xmm12
        vmovups   XMMWORD PTR [288+rsp], xmm10
        vmovups   XMMWORD PTR [192+rsp], xmm7
        vmovups   XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [304+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandpd    xmm3, xmm5, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        and       r13, -64
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1344]
        vxorpd    xmm4, xmm5, xmm3
        vpshufd   xmm6, xmm3, 221
        vandpd    xmm0, xmm3, xmm2
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2560]
        vsubpd    xmm1, xmm3, xmm0
        vmovq     xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2624]
        vpsubd    xmm12, xmm6, xmm15
        vpcmpgtd  xmm10, xmm12, xmm3
        vpcmpeqd  xmm7, xmm12, xmm3
        vpor      xmm13, xmm10, xmm7
        vmovmskps edx, xmm13
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1408]
        vmovq     xmm13, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1472]
        vpsubd    xmm12, xmm14, xmm6
        vmovq     xmm7, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1536]
        vpsubd    xmm13, xmm13, xmm6
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1600]
        vpsrad    xmm12, xmm12, 31
        vpsubd    xmm15, xmm15, xmm6
        vpsubd    xmm6, xmm7, xmm6
        vpsrad    xmm14, xmm15, 31
        vpsrad    xmm13, xmm13, 31
        vpsrad    xmm6, xmm6, 31
        vpaddd    xmm15, xmm12, xmm14
        vpaddd    xmm12, xmm13, xmm6
        vmovq     xmm10, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1664]
        vpaddd    xmm7, xmm15, xmm12
        vpaddd    xmm10, xmm7, xmm10
        vpslld    xmm13, xmm10, 5
        vmovd     eax, xmm13
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vpextrd   ecx, xmm13, 1
        vmovq     xmm14, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rax]
        vmovq     xmm6, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rax]
        vmovhpd   xmm15, xmm14, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rcx]
        vmovhpd   xmm14, xmm6, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rcx]
        vandpd    xmm7, xmm14, xmm0
        vsubpd    xmm7, xmm7, xmm15
        vmulpd    xmm0, xmm0, xmm15
        vmovq     xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rax]
        vmovq     xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rax]
        vmovhpd   xmm6, xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rcx]
        vmovhpd   xmm12, xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rcx]
        vandpd    xmm10, xmm14, xmm1
        vsubpd    xmm13, xmm7, xmm10
        vmulpd    xmm1, xmm15, xmm1
        vsubpd    xmm7, xmm13, xmm7
        vsubpd    xmm7, xmm10, xmm7
        vandpd    xmm10, xmm13, xmm2
        vandpd    xmm14, xmm14, xmm3
        vsubpd    xmm13, xmm13, xmm10
        vaddpd    xmm13, xmm7, xmm13
        vaddpd    xmm7, xmm14, xmm0
        vaddpd    xmm0, xmm7, xmm1
        vsubpd    xmm15, xmm7, xmm0
        vaddpd    xmm15, xmm1, xmm15
        vandpd    xmm1, xmm0, xmm2
        vsubpd    xmm2, xmm0, xmm1
        vcvtpd2ps xmm0, xmm1
        vaddpd    xmm15, xmm15, xmm2
        vmovlhps  xmm2, xmm0, xmm0
        vrcpps    xmm7, xmm2
        vcvtps2pd xmm7, xmm7
        vmulpd    xmm1, xmm1, xmm7
        vmulpd    xmm15, xmm7, xmm15
        vsubpd    xmm3, xmm1, xmm3
        vaddpd    xmm14, xmm3, xmm15
        vmulpd    xmm15, xmm14, xmm14
        vsubpd    xmm1, xmm15, xmm14
        vmulpd    xmm0, xmm14, xmm1
        vaddpd    xmm2, xmm14, xmm0
        vmulpd    xmm3, xmm14, xmm2
        vsubpd    xmm15, xmm3, xmm14
        vmulpd    xmm1, xmm14, xmm15
        vaddpd    xmm0, xmm14, xmm1
        vmulpd    xmm2, xmm14, xmm0
        vsubpd    xmm14, xmm2, xmm14
        vmulpd    xmm15, xmm7, xmm14
        vmulpd    xmm1, xmm10, xmm15
        vmulpd    xmm0, xmm13, xmm15
        vmulpd    xmm13, xmm7, xmm13
        vaddpd    xmm2, xmm1, xmm0
        vmulpd    xmm15, xmm10, xmm7
        vaddpd    xmm0, xmm2, xmm13
        vaddpd    xmm1, xmm0, xmm15
        vaddpd    xmm12, xmm12, xmm0
        vmulpd    xmm2, xmm1, xmm1
        vmulpd    xmm3, xmm2, xmm2
        vmulpd    xmm10, xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vmulpd    xmm7, xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vaddpd    xmm10, xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vaddpd    xmm14, xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vmulpd    xmm13, xmm3, xmm10
        vmulpd    xmm14, xmm3, xmm14
        vaddpd    xmm7, xmm13, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vaddpd    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vmulpd    xmm10, xmm3, xmm7
        vmulpd    xmm13, xmm3, xmm13
        vaddpd    xmm7, xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vaddpd    xmm14, xmm13, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vmulpd    xmm10, xmm3, xmm7
        vmulpd    xmm14, xmm3, xmm14
        vaddpd    xmm7, xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vaddpd    xmm13, xmm14, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vmulpd    xmm10, xmm3, xmm7
        vmulpd    xmm3, xmm3, xmm13
        vaddpd    xmm7, xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vaddpd    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vmulpd    xmm10, xmm2, xmm7
        vaddpd    xmm13, xmm3, xmm10
        vmulpd    xmm2, xmm2, xmm13
        vmulpd    xmm0, xmm1, xmm2
        vaddpd    xmm1, xmm12, xmm0
        vaddpd    xmm2, xmm15, xmm1
        vaddpd    xmm6, xmm6, xmm2
        mov       QWORD PTR [312+rsp], r13
        vorpd     xmm0, xmm6, xmm4
        and       edx, 3
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm6, XMMWORD PTR [208+rsp]
        vmovups   xmm7, XMMWORD PTR [192+rsp]
        vmovups   xmm10, XMMWORD PTR [288+rsp]
        vmovups   xmm12, XMMWORD PTR [272+rsp]
        vmovups   xmm13, XMMWORD PTR [256+rsp]
        vmovups   xmm14, XMMWORD PTR [240+rsp]
        vmovups   xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [304+rsp]
        add       rsp, 328
        ret

.L_B1_3:

        vmovupd   XMMWORD PTR [r13], xmm5
        vmovupd   XMMWORD PTR [64+r13], xmm0
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
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_atan2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_e9_B1_B3:
        .long   1203457
        .long   2544733
        .long   878677
        .long   817228
        .long   1222723
        .long   1165370
        .long   1103921
        .long   1042472
        .long   981016
        .long   2687243

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_atan2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_atan2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_atan2_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_atan1_ha_e9

__jsvml_atan1_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L22:

        sub       rsp, 264
        mov       eax, -2144337920
        vmovups   XMMWORD PTR [176+rsp], xmm12
        mov       edx, -36700160
        vmovups   XMMWORD PTR [192+rsp], xmm11
        vmovapd   xmm12, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm10
        mov       r8d, 1072037888
        vmovups   XMMWORD PTR [224+rsp], xmm9
        vmovd     xmm9, eax
        vmovups   XMMWORD PTR [240+rsp], xmm8
        mov       ecx, 1071382528
        mov       QWORD PTR [168+rsp], r13
        mov       r9d, 1072889856
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        vmovd     xmm4, edx
        vandpd    xmm8, xmm12, xmm11
        mov       r10d, 1073971200
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1344]
        vxorpd    xmm11, xmm12, xmm8
        vpshufd   xmm3, xmm8, 85
        vandpd    xmm1, xmm8, xmm5
        vpsubd    xmm10, xmm3, xmm9
        mov       r11d, 4
        vpcmpgtd  xmm0, xmm10, xmm4
        lea       r13, QWORD PTR [95+rsp]
        and       r13, -64
        vsubsd    xmm2, xmm8, xmm1
        vpcmpeqd  xmm8, xmm10, xmm4
        vmovd     xmm10, ecx
        vpor      xmm9, xmm0, xmm8
        vmovd     xmm0, r8d
        vmovmskps eax, xmm9
        vpsubd    xmm9, xmm0, xmm3
        vmovd     xmm0, r9d
        vpsubd    xmm4, xmm10, xmm3
        vpsrad    xmm10, xmm9, 31
        vpsubd    xmm9, xmm0, xmm3
        vmovd     xmm0, r10d
        vpsrad    xmm4, xmm4, 31
        vpsubd    xmm3, xmm0, xmm3
        vpsrad    xmm9, xmm9, 31
        vpsrad    xmm3, xmm3, 31
        vpaddd    xmm10, xmm4, xmm10
        vpaddd    xmm9, xmm9, xmm3
        vmovd     xmm0, r11d
        vpaddd    xmm4, xmm10, xmm9
        lea       rcx, QWORD PTR [rip+__ImageBase]
        vpaddd    xmm9, xmm4, xmm0
        vpslld    xmm10, xmm9, 5
        vmovd     edx, xmm10
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vmovq     xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rcx+rdx]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rcx+rdx]
        vandpd    xmm9, xmm3, xmm1
        vandpd    xmm10, xmm3, xmm2
        vandpd    xmm3, xmm3, xmm8
        vmulsd    xmm1, xmm4, xmm1
        vsubsd    xmm9, xmm9, xmm4
        vmulsd    xmm4, xmm4, xmm2
        vsubsd    xmm0, xmm9, xmm10
        vaddsd    xmm1, xmm1, xmm3
        vsubsd    xmm9, xmm0, xmm9
        vaddsd    xmm2, xmm1, xmm4
        vsubsd    xmm9, xmm10, xmm9
        vandpd    xmm10, xmm0, xmm5
        mov       QWORD PTR [256+rsp], r13
        vsubsd    xmm0, xmm0, xmm10
        vaddsd    xmm9, xmm0, xmm9
        vsubsd    xmm0, xmm1, xmm2
        vaddsd    xmm1, xmm4, xmm0
        vandpd    xmm0, xmm2, xmm5
        vsubsd    xmm5, xmm2, xmm0
        vaddsd    xmm3, xmm1, xmm5
        vcvtpd2ps xmm5, xmm0
        vmovlhps  xmm2, xmm5, xmm5
        vrcpps    xmm1, xmm2
        vcvtps2pd xmm1, xmm1
        vmulsd    xmm4, xmm0, xmm1
        vsubsd    xmm0, xmm4, xmm8
        vmulsd    xmm8, xmm3, xmm1
        vaddsd    xmm4, xmm8, xmm0
        vmulsd    xmm3, xmm4, xmm4
        vsubsd    xmm5, xmm3, xmm4
        vmulsd    xmm8, xmm5, xmm4
        vaddsd    xmm2, xmm8, xmm4
        vmulsd    xmm0, xmm2, xmm4
        vsubsd    xmm3, xmm0, xmm4
        vmulsd    xmm5, xmm3, xmm4
        vaddsd    xmm8, xmm5, xmm4
        vmulsd    xmm2, xmm8, xmm4
        vsubsd    xmm4, xmm2, xmm4
        vmulsd    xmm5, xmm4, xmm1
        vmulsd    xmm2, xmm5, xmm10
        vmulsd    xmm8, xmm5, xmm9
        vmulsd    xmm9, xmm1, xmm9
        vmulsd    xmm5, xmm1, xmm10
        vaddsd    xmm0, xmm8, xmm2
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vaddsd    xmm2, xmm9, xmm0
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vaddsd    xmm8, xmm5, xmm2
        vaddsd    xmm2, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rcx+rdx]
        vmulsd    xmm9, xmm8, xmm8
        vmulsd    xmm10, xmm9, xmm9
        vmulsd    xmm1, xmm1, xmm10
        vmulsd    xmm3, xmm0, xmm10
        vaddsd    xmm4, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vaddsd    xmm0, xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vmulsd    xmm4, xmm4, xmm10
        vmulsd    xmm1, xmm0, xmm10
        vaddsd    xmm3, xmm4, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vmulsd    xmm3, xmm3, xmm10
        vmulsd    xmm1, xmm0, xmm10
        vaddsd    xmm4, xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vmulsd    xmm4, xmm4, xmm10
        vmulsd    xmm1, xmm0, xmm10
        vaddsd    xmm3, xmm4, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vmulsd    xmm3, xmm3, xmm10
        vmulsd    xmm10, xmm0, xmm10
        vaddsd    xmm1, xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vaddsd    xmm3, xmm10, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vmulsd    xmm0, xmm1, xmm9
        vaddsd    xmm4, xmm0, xmm3
        vmulsd    xmm9, xmm4, xmm9
        vmulsd    xmm8, xmm9, xmm8
        vaddsd    xmm10, xmm8, xmm2
        vaddsd    xmm5, xmm5, xmm10
        vaddsd    xmm0, xmm5, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rcx+rdx]
        vorpd     xmm0, xmm0, xmm11
        and       eax, 1
        jne       .L_B2_3

.L_B2_2:

        vmovups   xmm8, XMMWORD PTR [240+rsp]
        vmovups   xmm9, XMMWORD PTR [224+rsp]
        vmovups   xmm10, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [192+rsp]
        vmovups   xmm12, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 264
        ret

.L_B2_3:

        vmovsd    QWORD PTR [r13], xmm12
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B2_6

.L_B2_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B2_4
        .align    16, 0x90

.L_B2_7:

        .section .drectve
        .ascii " -export \"__jsvml_atan1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan1_ha_e9_B1_B6:
        .long   941313
        .long   1430621
        .long   1017936
        .long   956483
        .long   895028
        .long   833575
        .long   772121
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_atan1_ha_e9_B1_B6

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_atan4_ha_e9

__jsvml_atan4_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L35:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [304+rsp], ymm15
        vmovups   YMMWORD PTR [336+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm10
        vmovups   YMMWORD PTR [368+rsp], ymm7
        vmovups   YMMWORD PTR [400+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [207+rsp]
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1344]
        and       r13, -64
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2624]
        vmovapd   ymm15, ymm0
        vandpd    ymm3, ymm15, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        vandpd    ymm1, ymm3, ymm5
        vxorpd    ymm14, ymm15, ymm3
        vsubpd    ymm2, ymm3, ymm1
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm4, ymm3, 1
        vshufps   xmm10, xmm3, xmm4, 221
        vpsubd    xmm13, xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2560]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1408]
        vpcmpgtd  xmm12, xmm13, xmm6
        vpcmpeqd  xmm7, xmm13, xmm6
        vpsubd    xmm0, xmm4, xmm10
        vpor      xmm3, xmm12, xmm7
        vpsrad    xmm7, xmm0, 31
        vmovmskps r8d, xmm3
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1472]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1536]
        vpsubd    xmm4, xmm3, xmm10
        vmovups   xmm13, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1600]
        vpsubd    xmm12, xmm13, xmm10
        vpsubd    xmm10, xmm0, xmm10
        vpsrad    xmm12, xmm12, 31
        vpsrad    xmm13, xmm4, 31
        vpsrad    xmm10, xmm10, 31
        vpaddd    xmm12, xmm7, xmm12
        vpaddd    xmm13, xmm13, xmm10
        vpaddd    xmm7, xmm12, xmm13
        vpaddd    xmm3, xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1664]
        vpslld    xmm13, xmm3, 5
        vmovd     ecx, xmm13
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vmovq     xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+rcx]
        vmovq     xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+rcx]
        vpextrd   r9d, xmm13, 2
        vpextrd   eax, xmm13, 1
        vpextrd   r10d, xmm13, 3
        vmovq     xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+r9]
        vmovhpd   xmm0, xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+rax]
        vmovhpd   xmm7, xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+r10]
        vmovq     xmm13, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+r9]
        vmovhpd   xmm3, xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+rax]
        vmovhpd   xmm12, xmm13, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+r10]
        vinsertf128 ymm4, ymm0, xmm7, 1
        vmovq     xmm7, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+r9]
        vmovhpd   xmm10, xmm7, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+rax]
        vmovhpd   xmm13, xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+r10]
        vmovq     xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+r9]
        vinsertf128 ymm3, ymm3, xmm12, 1
        vmovq     xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+rcx]
        vmovhpd   xmm7, xmm12, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+rax]
        vmovhpd   xmm12, xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+r10]
        vinsertf128 ymm13, ymm10, xmm13, 1
        vandpd    ymm10, ymm3, ymm1
        vmulpd    ymm1, ymm1, ymm4
        vinsertf128 ymm12, ymm7, xmm12, 1
        vsubpd    ymm7, ymm10, ymm4
        vmulpd    ymm4, ymm4, ymm2
        vandpd    ymm10, ymm3, ymm2
        vsubpd    ymm0, ymm7, ymm10
        vandpd    ymm3, ymm3, ymm6
        vaddpd    ymm3, ymm3, ymm1
        vsubpd    ymm7, ymm0, ymm7
        vaddpd    ymm2, ymm3, ymm4
        vsubpd    ymm7, ymm10, ymm7
        vsubpd    ymm1, ymm3, ymm2
        vandpd    ymm10, ymm0, ymm5
        vsubpd    ymm0, ymm0, ymm10
        vaddpd    ymm3, ymm4, ymm1
        vaddpd    ymm7, ymm7, ymm0
        vandpd    ymm0, ymm2, ymm5
        vsubpd    ymm5, ymm2, ymm0
        vaddpd    ymm1, ymm3, ymm5
        vcvtpd2ps xmm5, ymm0
        vrcpps    xmm2, xmm5
        vcvtps2pd ymm3, xmm2
        vmulpd    ymm4, ymm0, ymm3
        vmulpd    ymm0, ymm3, ymm1
        vsubpd    ymm6, ymm4, ymm6
        vaddpd    ymm4, ymm6, ymm0
        vmulpd    ymm1, ymm4, ymm4
        vsubpd    ymm5, ymm1, ymm4
        vmulpd    ymm6, ymm4, ymm5
        vaddpd    ymm2, ymm4, ymm6
        vmulpd    ymm0, ymm4, ymm2
        vsubpd    ymm1, ymm0, ymm4
        vmulpd    ymm5, ymm4, ymm1
        vaddpd    ymm6, ymm4, ymm5
        vmulpd    ymm2, ymm4, ymm6
        vsubpd    ymm4, ymm2, ymm4
        vmulpd    ymm5, ymm3, ymm4
        vmulpd    ymm6, ymm10, ymm5
        vmulpd    ymm2, ymm7, ymm5
        vmulpd    ymm7, ymm3, ymm7
        vmulpd    ymm5, ymm10, ymm3
        vaddpd    ymm0, ymm6, ymm2
        vaddpd    ymm2, ymm0, ymm7
        vaddpd    ymm6, ymm2, ymm5
        vaddpd    ymm12, ymm12, ymm2
        vmulpd    ymm7, ymm6, ymm6
        vmulpd    ymm10, ymm7, ymm7
        vmulpd    ymm3, ymm10, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vmulpd    ymm0, ymm10, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vaddpd    ymm1, ymm3, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vaddpd    ymm4, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vmulpd    ymm3, ymm10, ymm1
        vmulpd    ymm4, ymm10, ymm4
        vaddpd    ymm0, ymm3, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vaddpd    ymm3, ymm4, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vmulpd    ymm1, ymm10, ymm0
        vmulpd    ymm3, ymm10, ymm3
        vaddpd    ymm0, ymm1, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vaddpd    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vmulpd    ymm1, ymm10, ymm0
        vmulpd    ymm4, ymm10, ymm4
        vaddpd    ymm0, ymm1, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vaddpd    ymm3, ymm4, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vmulpd    ymm1, ymm10, ymm0
        vmulpd    ymm10, ymm10, ymm3
        vaddpd    ymm0, ymm1, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vaddpd    ymm1, ymm10, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vmulpd    ymm3, ymm7, ymm0
        vaddpd    ymm4, ymm1, ymm3
        vmulpd    ymm7, ymm7, ymm4
        vmulpd    ymm0, ymm6, ymm7
        vaddpd    ymm1, ymm12, ymm0
        vaddpd    ymm2, ymm5, ymm1
        vaddpd    ymm13, ymm13, ymm2
        vorpd     ymm0, ymm13, ymm14
        test      r8d, r8d
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm6, YMMWORD PTR [400+rsp]
        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm10, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [336+rsp]
        vmovups   ymm15, YMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vmovupd   YMMWORD PTR [r13], ymm15
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B3_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [96+rsp], ymm8
        vmovups   YMMWORD PTR [64+rsp], ymm9
        vmovups   YMMWORD PTR [32+rsp], ymm11
        mov       QWORD PTR [136+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [128+rsp], rsi
        mov       esi, r8d

.L_B3_7:

        bt        esi, ebx
        jc        .L_B3_10

.L_B3_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B3_7

.L_B3_9:

        vmovups   ymm8, YMMWORD PTR [96+rsp]
        vmovups   ymm9, YMMWORD PTR [64+rsp]
        vmovups   ymm11, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [136+rsp]
        mov       rsi, QWORD PTR [128+rsp]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_atan4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan4_ha_e9_B1_B3:
        .long   1202433
        .long   4379737
        .long   1665105
        .long   1538120
        .long   2074687
        .long   1951798
        .long   1824813
        .long   1435684
        .long   1308699
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_atan4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan4_ha_e9_B6_B10:
        .long   665121
        .long   1074214
        .long   1127452
        .long   178196
        .long   301070
        .long   428040
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_atan4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_atan4_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_atan8_ha_z0

__jsvml_atan8_ha_z0:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L62:

        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+128]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+320]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+64]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+256]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+192]
        vandpd    zmm25, zmm0, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512]
        vcmppd    k1, zmm25, zmm26, 17 {sae}
        vminpd    zmm24, zmm27, zmm25 {sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+960]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+448]
        vreducepd zmm1{k1}, zmm25, 40 {sae}
        vaddpd    zmm23, zmm25, zmm28 {rn-sae}
        knotw     k3, k1
        vsubpd    zmm29, zmm23, zmm28 {rn-sae}
        vpermt2pd zmm27, zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+512]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+576]
        vfmadd213pd zmm24{k1}, zmm29, zmm5 {rn-sae}
        vcmppd    k2, zmm23, zmm26, 29 {sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1344]
        vrcp14pd  zmm4, zmm24
        vsubpd    zmm2, zmm24, zmm5 {rn-sae}
        vpermt2pd zmm28, zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+640]
        vfmsub231pd zmm2, zmm29, zmm25 {rn-sae}
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+704]
        vmovaps   zmm30, zmm24
        vfnmadd213pd zmm30, zmm4, zmm5 {rn-sae}
        vpermt2pd zmm29, zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+768]
        vmulpd    zmm31, zmm30, zmm30 {rn-sae}
        vfmadd213pd zmm4, zmm30, zmm4 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+832]
        vfmadd213pd zmm4, zmm31, zmm4 {rn-sae}
        vpermt2pd zmm30, zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+896]
        vblendmpd zmm23{k2}, zmm27, zmm28
        vmulpd    zmm22, zmm4, zmm1 {rn-sae}
        vmulpd    zmm3, zmm2, zmm4 {rn-sae}
        vfnmadd213pd zmm24, zmm4, zmm5 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1152]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1216]
        vfmsub213pd zmm1, zmm4, zmm22 {rn-sae}
        vmulpd    zmm4, zmm22, zmm22 {rn-sae}
        vfmadd213pd zmm24, zmm22, zmm1 {rn-sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1280]
        vblendmpd zmm31{k2}, zmm29, zmm30
        vfmadd231pd zmm5, zmm2, zmm4 {rn-sae}
        vfnmadd231pd zmm24{k1}, zmm3, zmm22 {rn-sae}
        vfmadd231pd zmm26, zmm1, zmm4 {rn-sae}
        vmulpd    zmm1, zmm4, zmm4 {rn-sae}
        vmulpd    zmm28, zmm4, zmm22 {rn-sae}
        vblendmpd zmm3{k3}, zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1024]
        vblendmpd zmm23{k3}, zmm31, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1088]
        vfmadd213pd zmm5, zmm1, zmm26 {rn-sae}
        vaddpd    zmm27, zmm24, zmm23 {rn-sae}
        vaddpd    zmm2, zmm3, zmm22 {rn-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1408]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_datan_ha_data_internal_avx512+1472]
        vsubpd    zmm3, zmm2, zmm3 {rn-sae}
        vfmadd213pd zmm4, zmm24, zmm23 {rn-sae}
        vsubpd    zmm22, zmm22, zmm3 {rn-sae}
        vfmadd213pd zmm5, zmm1, zmm4 {rn-sae}
        vaddpd    zmm1, zmm27, zmm22 {rn-sae}
        vfmadd213pd zmm5, zmm28, zmm1 {rn-sae}
        vaddpd    zmm2, zmm5, zmm2 {rn-sae}
        vpternlogq zmm0, zmm25, zmm2, 150
        ret
        .align    16, 0x90

.L_B4_2:

        .section .drectve
        .ascii " -export \"__jsvml_atan8_ha_z0\""

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2_ha_ex

__jsvml_atan2_ha_ex:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L63:

        sub       rsp, 344
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [288+rsp], xmm15
        movups    XMMWORD PTR [192+rsp], xmm12
        movups    XMMWORD PTR [208+rsp], xmm11
        movups    XMMWORD PTR [304+rsp], xmm10
        movups    XMMWORD PTR [224+rsp], xmm9
        movups    XMMWORD PTR [240+rsp], xmm8
        movaps    xmm8, xmm0
        movups    XMMWORD PTR [256+rsp], xmm7
        movups    XMMWORD PTR [272+rsp], xmm6
        mov       QWORD PTR [320+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        and       r13, -64
        andps     xmm4, xmm8
        pshufd    xmm0, xmm4, 221
        movaps    xmm9, xmm4
        movq      xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2560]
        movdqa    xmm3, xmm0
        psubd     xmm3, xmm1
        movaps    xmm12, xmm4
        movq      xmm2, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2624]
        movdqa    xmm5, xmm3
        movups    xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1344]
        pcmpgtd   xmm5, xmm2
        movaps    xmm11, xmm10
        pcmpeqd   xmm3, xmm2
        movq      xmm2, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1472]
        andps     xmm11, xmm4
        movq      xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1536]
        por       xmm5, xmm3
        movq      xmm4, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1600]
        psubd     xmm2, xmm0
        movq      xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1408]
        psubd     xmm4, xmm0
        psubd     xmm3, xmm0
        psubd     xmm1, xmm0
        psrad     xmm3, 31
        psrad     xmm4, 31
        psrad     xmm2, 31
        psrad     xmm1, 31
        paddd     xmm3, xmm4
        paddd     xmm2, xmm1
        movq      xmm15, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1664]
        paddd     xmm3, xmm2
        paddd     xmm3, xmm15
        movaps    xmm1, xmm11
        pslld     xmm3, 5
        pxor      xmm9, xmm8
        movd      edx, xmm3
        pshufd    xmm0, xmm3, 1
        movups    xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        movd      ecx, xmm0
        movq      xmm6, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rdx]
        movq      xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rdx]
        movhpd    xmm6, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rcx]
        subpd     xmm12, xmm11
        mulpd     xmm11, xmm6
        movmskps  eax, xmm5
        movhpd    xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rcx]
        movaps    xmm2, xmm12
        andps     xmm1, xmm3
        andps     xmm2, xmm3
        subpd     xmm1, xmm6
        mulpd     xmm6, xmm12
        andps     xmm3, xmm7
        movaps    xmm5, xmm1
        addpd     xmm3, xmm11
        subpd     xmm5, xmm2
        movaps    xmm11, xmm3
        movaps    xmm15, xmm5
        addpd     xmm11, xmm6
        subpd     xmm15, xmm1
        subpd     xmm3, xmm11
        subpd     xmm2, xmm15
        addpd     xmm6, xmm3
        movaps    xmm1, xmm10
        andps     xmm10, xmm11
        cvtpd2ps  xmm12, xmm10
        subpd     xmm11, xmm10
        andps     xmm1, xmm5
        and       eax, 3
        subpd     xmm5, xmm1
        addpd     xmm6, xmm11
        addpd     xmm2, xmm5
        movlhps   xmm12, xmm12
        rcpps     xmm5, xmm12
        cvtps2pd  xmm3, xmm5
        mulpd     xmm10, xmm3
        mulpd     xmm6, xmm3
        subpd     xmm10, xmm7
        addpd     xmm10, xmm6
        movaps    xmm6, xmm10
        movaps    xmm5, xmm1
        mulpd     xmm6, xmm10
        mulpd     xmm1, xmm3
        subpd     xmm6, xmm10
        mulpd     xmm6, xmm10
        addpd     xmm6, xmm10
        mulpd     xmm6, xmm10
        subpd     xmm6, xmm10
        mulpd     xmm6, xmm10
        addpd     xmm6, xmm10
        mulpd     xmm6, xmm10
        subpd     xmm6, xmm10
        mulpd     xmm6, xmm3
        mulpd     xmm5, xmm6
        mulpd     xmm6, xmm2
        mulpd     xmm2, xmm3
        addpd     xmm5, xmm6
        addpd     xmm5, xmm2
        movaps    xmm6, xmm5
        addpd     xmm6, xmm1
        movaps    xmm3, xmm6
        mulpd     xmm3, xmm6
        movaps    xmm2, xmm3
        mulpd     xmm2, xmm3
        movups    xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        mulpd     xmm10, xmm2
        movups    xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        mulpd     xmm7, xmm2
        mulpd     xmm10, xmm2
        addpd     xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        mulpd     xmm7, xmm2
        mulpd     xmm10, xmm2
        addpd     xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        mulpd     xmm7, xmm2
        mulpd     xmm10, xmm2
        addpd     xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        mulpd     xmm7, xmm2
        mulpd     xmm10, xmm2
        addpd     xmm7, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        addpd     xmm10, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        mulpd     xmm2, xmm7
        mulpd     xmm10, xmm3
        addpd     xmm2, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        addpd     xmm2, xmm10
        mulpd     xmm3, xmm2
        mulpd     xmm6, xmm3
        movq      xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rdx]
        movhpd    xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rcx]
        addpd     xmm4, xmm5
        addpd     xmm4, xmm6
        addpd     xmm1, xmm4
        movq      xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rdx]
        movhpd    xmm0, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rcx]
        addpd     xmm0, xmm1
        mov       QWORD PTR [328+rsp], r13
        orps      xmm0, xmm9
        jne       .L_B5_3

.L_B5_2:

        movups    xmm6, XMMWORD PTR [272+rsp]
        movups    xmm7, XMMWORD PTR [256+rsp]
        movups    xmm8, XMMWORD PTR [240+rsp]
        movups    xmm9, XMMWORD PTR [224+rsp]
        movups    xmm10, XMMWORD PTR [304+rsp]
        movups    xmm11, XMMWORD PTR [208+rsp]
        movups    xmm12, XMMWORD PTR [192+rsp]
        movups    xmm15, XMMWORD PTR [288+rsp]
        mov       r13, QWORD PTR [320+rsp]
        add       rsp, 344
        ret

.L_B5_3:

        movups    XMMWORD PTR [r13], xmm8
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B5_2

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

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_atan2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_ex_B1_B3:
        .long   1336321
        .long   2675812
        .long   1140828
        .long   1079380
        .long   1017928
        .long   956479
        .long   1288246
        .long   899117
        .long   837668
        .long   1243163
        .long   2818315

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_atan2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_atan2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_atan2_ha_ex_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_atan1_ha_l9

__jsvml_atan1_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L86:

        sub       rsp, 232
        mov       eax, -2144337920
        vmovups   XMMWORD PTR [192+rsp], xmm11
        mov       edx, -36700160
        vmovups   XMMWORD PTR [176+rsp], xmm10
        vmovapd   xmm3, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm9
        mov       r8d, 1072037888
        mov       QWORD PTR [168+rsp], r13
        vmovd     xmm1, eax
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        mov       ecx, 1071382528
        vandpd    xmm0, xmm3, xmm2
        mov       r9d, 1072889856
        vpshufd   xmm9, xmm0, 85
        vmovd     xmm4, edx
        vpsubd    xmm5, xmm9, xmm1
        mov       r10d, 1073971200
        vpcmpgtd  xmm1, xmm5, xmm4
        vpcmpeqd  xmm5, xmm5, xmm4
        vpor      xmm10, xmm1, xmm5
        vmovd     xmm5, r8d
        vmovmskps eax, xmm10
        vmovd     xmm11, ecx
        vpsubd    xmm10, xmm5, xmm9
        vmovd     xmm5, r9d
        vpsubd    xmm4, xmm11, xmm9
        vpsrad    xmm11, xmm10, 31
        vpsubd    xmm10, xmm5, xmm9
        vmovd     xmm5, r10d
        mov       r11d, 4
        vpsubd    xmm9, xmm5, xmm9
        vpsrad    xmm4, xmm4, 31
        vpsrad    xmm10, xmm10, 31
        vpsrad    xmm9, xmm9, 31
        vpaddd    xmm4, xmm4, xmm11
        vpaddd    xmm5, xmm10, xmm9
        lea       rcx, QWORD PTR [rip+__ImageBase]
        vpaddd    xmm10, xmm4, xmm5
        vmovd     xmm11, r11d
        vpaddd    xmm4, xmm10, xmm11
        vxorpd    xmm2, xmm3, xmm0
        vpslld    xmm9, xmm4, 5
        lea       r13, QWORD PTR [95+rsp]
        vmovd     edx, xmm9
        and       r13, -64
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vmovq     xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rcx+rdx]
        vmovq     xmm9, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rcx+rdx]
        vandpd    xmm5, xmm10, xmm0
        vandpd    xmm11, xmm10, xmm1
        vsubsd    xmm5, xmm5, xmm9
        vfmadd213sd xmm9, xmm0, xmm11
        vcvtpd2ps xmm0, xmm9
        vmovlhps  xmm4, xmm0, xmm0
        vmovaps   xmm10, xmm9
        vrcpps    xmm0, xmm4
        vcvtps2pd xmm0, xmm0
        vfnmadd213sd xmm10, xmm0, xmm1
        vmovaps   xmm11, xmm9
        vfmadd213sd xmm10, xmm10, xmm10
        vfmadd213sd xmm0, xmm10, xmm0
        vfnmadd213sd xmm11, xmm0, xmm1
        vfmadd213sd xmm0, xmm11, xmm0
        vmulsd    xmm4, xmm0, xmm5
        vfnmadd213sd xmm9, xmm4, xmm5
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vmulsd    xmm10, xmm9, xmm0
        vmulsd    xmm0, xmm4, xmm4
        vmulsd    xmm1, xmm0, xmm0
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vfmadd213sd xmm9, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vfmadd213sd xmm5, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vfmadd213sd xmm9, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vfmadd213sd xmm5, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vfmadd213sd xmm9, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vfmadd213sd xmm5, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vfmadd213sd xmm9, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vfmadd213sd xmm5, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vfmadd213sd xmm9, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vfmadd213sd xmm5, xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vaddsd    xmm1, xmm10, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rcx+rdx]
        vfmadd213sd xmm9, xmm0, xmm5
        vmulsd    xmm5, xmm9, xmm0
        vfmadd213sd xmm5, xmm4, xmm1
        mov       QWORD PTR [224+rsp], r13
        vaddsd    xmm4, xmm4, xmm5
        vaddsd    xmm9, xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rcx+rdx]
        vorpd     xmm0, xmm9, xmm2
        and       eax, 1
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm9, XMMWORD PTR [208+rsp]
        vmovups   xmm10, XMMWORD PTR [176+rsp]
        vmovups   xmm11, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 232
        ret

.L_B6_3:

        vmovsd    QWORD PTR [r13], xmm3
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B6_6

.L_B6_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B6_4
        .align    16, 0x90

.L_B6_7:

        .section .drectve
        .ascii " -export \"__jsvml_atan1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan1_ha_l9_B1_B6:
        .long   672257
        .long   1430594
        .long   890932
        .long   763943
        .long   833561
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan1_ha_l9_B1_B6

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2_ha_l9

__jsvml_atan2_ha_l9:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L95:

        sub       rsp, 280
        vmovapd   xmm2, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm15
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm11
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandpd    xmm0, xmm2, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        and       r13, -64
        vpshufd   xmm5, xmm0, 221
        vxorpd    xmm1, xmm2, xmm0
        vmovq     xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2560]
        vpsubd    xmm13, xmm5, xmm3
        vmovq     xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2624]
        vpcmpgtd  xmm11, xmm13, xmm3
        vpcmpeqd  xmm14, xmm13, xmm3
        vpor      xmm4, xmm11, xmm14
        vmovmskps edx, xmm4
        vmovq     xmm13, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1408]
        vmovq     xmm4, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1472]
        vpsubd    xmm13, xmm13, xmm5
        vmovq     xmm15, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1536]
        vpsubd    xmm4, xmm4, xmm5
        vmovq     xmm11, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1600]
        vpsrad    xmm13, xmm13, 31
        vpsubd    xmm11, xmm11, xmm5
        vpsubd    xmm5, xmm15, xmm5
        vpsrad    xmm11, xmm11, 31
        vpsrad    xmm4, xmm4, 31
        vpsrad    xmm5, xmm5, 31
        vpaddd    xmm13, xmm13, xmm11
        vpaddd    xmm11, xmm4, xmm5
        vmovq     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1664]
        vpaddd    xmm4, xmm13, xmm11
        vpaddd    xmm14, xmm4, xmm14
        vpslld    xmm15, xmm14, 5
        vmovd     eax, xmm15
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vpextrd   ecx, xmm15, 1
        vmovq     xmm11, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rax]
        vmovq     xmm13, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rax]
        vmovq     xmm5, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rax]
        vmovhpd   xmm15, xmm11, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+r8+rcx]
        vmovhpd   xmm4, xmm13, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+r8+rcx]
        vmovhpd   xmm13, xmm5, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+r8+rcx]
        vandpd    xmm5, xmm15, xmm0
        vmovq     xmm14, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rax]
        vmovhpd   xmm11, xmm14, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+r8+rcx]
        vsubpd    xmm14, xmm5, xmm4
        vandpd    xmm5, xmm15, xmm3
        vfmadd231pd xmm5, xmm0, xmm4
        vcvtpd2ps xmm0, xmm5
        vmovlhps  xmm0, xmm0, xmm0
        vrcpps    xmm4, xmm0
        vcvtps2pd xmm15, xmm4
        vmovapd   xmm0, xmm15
        vfnmadd213pd xmm0, xmm5, xmm3
        vfmadd213pd xmm0, xmm0, xmm0
        vfmadd213pd xmm15, xmm0, xmm15
        vfnmadd231pd xmm3, xmm15, xmm5
        vfmadd213pd xmm15, xmm3, xmm15
        vmulpd    xmm0, xmm14, xmm15
        vfnmadd213pd xmm5, xmm0, xmm14
        vmulpd    xmm14, xmm0, xmm0
        vmulpd    xmm3, xmm15, xmm5
        vmulpd    xmm4, xmm14, xmm14
        vaddpd    xmm3, xmm11, xmm3
        vmovupd   xmm15, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vfmadd213pd xmm15, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vfmadd213pd xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vfmadd213pd xmm15, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vfmadd213pd xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vfmadd213pd xmm15, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vfmadd213pd xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vfmadd213pd xmm15, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vfmadd213pd xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vfmadd213pd xmm15, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vfmadd213pd xmm5, xmm4, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vfmadd213pd xmm15, xmm14, xmm5
        vmulpd    xmm4, xmm14, xmm15
        vfmadd213pd xmm4, xmm0, xmm3
        vaddpd    xmm0, xmm0, xmm4
        vaddpd    xmm3, xmm13, xmm0
        mov       QWORD PTR [264+rsp], r13
        vorpd     xmm0, xmm3, xmm1
        and       edx, 3
        jne       .L_B7_3

.L_B7_2:

        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B7_3:

        vmovupd   XMMWORD PTR [r13], xmm2
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

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B7_8
        .align    16, 0x90

.L_B7_11:

        .section .drectve
        .ascii " -export \"__jsvml_atan2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_l9_B1_B3:
        .long   803329
        .long   2151490
        .long   1030202
        .long   972849
        .long   911400
        .long   849944
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_atan2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B7_1
        .rva    .L_B7_6
        .rva    _unwind___jsvml_atan2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_6
        .rva    .L_B7_11
        .rva    _unwind___jsvml_atan2_ha_l9_B6_B10

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_atan1_ha_ex

__jsvml_atan1_ha_ex:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L110:

        sub       rsp, 280
        mov       eax, -2144337920
        movups    XMMWORD PTR [208+rsp], xmm15
        mov       edx, -36700160
        movups    XMMWORD PTR [224+rsp], xmm14
        mov       ecx, 1071382528
        movups    XMMWORD PTR [240+rsp], xmm13
        mov       r8d, 1072037888
        movups    XMMWORD PTR [256+rsp], xmm12
        movd      xmm5, eax
        movups    XMMWORD PTR [176+rsp], xmm7
        mov       r9d, 1072889856
        movups    XMMWORD PTR [192+rsp], xmm6
        mov       r10d, 1073971200
        mov       QWORD PTR [168+rsp], r13
        movd      xmm3, edx
        movsd     xmm4, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        movd      xmm7, r8d
        movsd     xmm1, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1344]
        andps     xmm4, xmm0
        pshufd    xmm13, xmm4, 85
        movaps    xmm14, xmm1
        movaps    xmm2, xmm4
        andps     xmm14, xmm4
        movaps    xmm15, xmm4
        movdqa    xmm4, xmm13
        psubd     xmm4, xmm5
        movd      xmm6, r10d
        movdqa    xmm12, xmm4
        pcmpeqd   xmm4, xmm3
        pcmpgtd   xmm12, xmm3
        mov       r11d, 4
        por       xmm12, xmm4
        movd      xmm4, r9d
        movmskps  eax, xmm12
        movd      xmm12, ecx
        psubd     xmm12, xmm13
        psubd     xmm7, xmm13
        psubd     xmm4, xmm13
        psubd     xmm6, xmm13
        psrad     xmm12, 31
        psrad     xmm7, 31
        psrad     xmm4, 31
        psrad     xmm6, 31
        paddd     xmm12, xmm7
        paddd     xmm4, xmm6
        paddd     xmm12, xmm4
        movd      xmm5, r11d
        paddd     xmm12, xmm5
        lea       rcx, QWORD PTR [rip+__ImageBase]
        pslld     xmm12, 5
        lea       r13, QWORD PTR [95+rsp]
        movd      edx, xmm12
        pxor      xmm2, xmm0
        movsd     xmm3, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        subsd     xmm15, xmm14
        movq      xmm6, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rcx+rdx]
        and       r13, -64
        movdqa    xmm13, xmm6
        movdqa    xmm4, xmm6
        movq      xmm7, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rcx+rdx]
        andps     xmm13, xmm14
        andps     xmm4, xmm15
        andps     xmm6, xmm3
        mov       QWORD PTR [272+rsp], r13
        and       eax, 1
        subsd     xmm13, xmm7
        movaps    xmm12, xmm13
        subsd     xmm12, xmm4
        movaps    xmm5, xmm12
        subsd     xmm5, xmm13
        subsd     xmm4, xmm5
        movaps    xmm5, xmm1
        andps     xmm5, xmm12
        subsd     xmm12, xmm5
        addsd     xmm12, xmm4
        movdqa    xmm4, xmm7
        mulsd     xmm4, xmm14
        mulsd     xmm7, xmm15
        addsd     xmm4, xmm6
        movaps    xmm14, xmm4
        addsd     xmm14, xmm7
        andps     xmm1, xmm14
        subsd     xmm4, xmm14
        cvtpd2ps  xmm15, xmm1
        addsd     xmm7, xmm4
        subsd     xmm14, xmm1
        movlhps   xmm15, xmm15
        addsd     xmm7, xmm14
        rcpps     xmm4, xmm15
        cvtps2pd  xmm4, xmm4
        mulsd     xmm1, xmm4
        movaps    xmm13, xmm4
        mulsd     xmm7, xmm4
        mulsd     xmm13, xmm12
        subsd     xmm1, xmm3
        movsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        addsd     xmm7, xmm1
        movaps    xmm3, xmm7
        mulsd     xmm3, xmm7
        subsd     xmm3, xmm7
        mulsd     xmm3, xmm7
        addsd     xmm3, xmm7
        mulsd     xmm3, xmm7
        subsd     xmm3, xmm7
        mulsd     xmm3, xmm7
        addsd     xmm3, xmm7
        mulsd     xmm3, xmm7
        subsd     xmm3, xmm7
        mulsd     xmm3, xmm4
        mulsd     xmm4, xmm5
        movaps    xmm1, xmm3
        movaps    xmm7, xmm4
        mulsd     xmm1, xmm5
        mulsd     xmm3, xmm12
        movsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        addsd     xmm3, xmm1
        addsd     xmm13, xmm3
        addsd     xmm7, xmm13
        addsd     xmm13, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rcx+rdx]
        movaps    xmm6, xmm7
        mulsd     xmm6, xmm7
        movaps    xmm5, xmm6
        mulsd     xmm5, xmm6
        mulsd     xmm14, xmm5
        mulsd     xmm12, xmm5
        addsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        addsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        mulsd     xmm14, xmm5
        mulsd     xmm12, xmm5
        addsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        addsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        mulsd     xmm14, xmm5
        mulsd     xmm12, xmm5
        addsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        addsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        mulsd     xmm14, xmm5
        mulsd     xmm12, xmm5
        addsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        addsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        mulsd     xmm14, xmm5
        mulsd     xmm12, xmm5
        addsd     xmm14, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        addsd     xmm12, QWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        mulsd     xmm14, xmm6
        addsd     xmm14, xmm12
        mulsd     xmm14, xmm6
        mulsd     xmm14, xmm7
        addsd     xmm14, xmm13
        addsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rcx+rdx]
        orps      xmm4, xmm2
        jne       .L_B8_3

.L_B8_2:

        movups    xmm6, XMMWORD PTR [192+rsp]
        movaps    xmm0, xmm4
        movups    xmm7, XMMWORD PTR [176+rsp]
        movups    xmm12, XMMWORD PTR [256+rsp]
        movups    xmm13, XMMWORD PTR [240+rsp]
        movups    xmm14, XMMWORD PTR [224+rsp]
        movups    xmm15, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B8_3:

        movsd     QWORD PTR [r13], xmm0
        movsd     QWORD PTR [64+r13], xmm4
        jne       .L_B8_6

.L_B8_4:

        movsd     xmm4, QWORD PTR [64+r13]
        jmp       .L_B8_2

.L_B8_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B8_4
        .align    16, 0x90

.L_B8_7:

        .section .drectve
        .ascii " -export \"__jsvml_atan1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan1_ha_ex_B1_B6:
        .long   1076225
        .long   1430636
        .long   813150
        .long   751696
        .long   1099844
        .long   1038389
        .long   976935
        .long   915481
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_atan1_ha_ex_B1_B6

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_atan4_ha_l9

__jsvml_atan4_ha_l9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L125:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vmovups   YMMWORD PTR [432+rsp], ymm14
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm9
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovapd   ymm5, ymm0
        and       r13, -64
        vandpd    ymm1, ymm5, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1152]
        vxorpd    ymm4, ymm5, ymm1
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2624]
        mov       QWORD PTR [536+rsp], r13
        vextracti128 xmm3, ymm1, 1
        vshufps   xmm14, xmm1, xmm3, 221
        vpsubd    xmm12, xmm14, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2560]
        vpcmpgtd  xmm2, xmm12, xmm9
        vpcmpeqd  xmm0, xmm12, xmm9
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1408]
        vpor      xmm15, xmm2, xmm0
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1600]
        vpsubd    xmm12, xmm3, xmm14
        vmovmskps r8d, xmm15
        vpsubd    xmm15, xmm9, xmm14
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1472]
        vpsrad    xmm2, xmm12, 31
        vpsrad    xmm12, xmm15, 31
        vpsubd    xmm9, xmm3, xmm14
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1536]
        vpsrad    xmm3, xmm9, 31
        vpsubd    xmm14, xmm15, xmm14
        vpaddd    xmm2, xmm2, xmm12
        vpsrad    xmm9, xmm14, 31
        vpaddd    xmm3, xmm3, xmm9
        vpaddd    xmm12, xmm2, xmm3
        vpaddd    xmm9, xmm12, XMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1664]
        vpslld    xmm15, xmm9, 5
        vmovd     ecx, xmm15
        vmovupd   ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1728]
        vmovq     xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+rcx]
        vpextrd   r9d, xmm15, 2
        vpextrd   eax, xmm15, 1
        vpextrd   r10d, xmm15, 3
        vmovq     xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+r9]
        vmovhpd   xmm14, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+rax]
        vmovhpd   xmm12, xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+rdx+r10]
        vmovq     xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+rcx]
        vmovq     xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+r9]
        vmovhpd   xmm15, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+rax]
        vmovq     xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+rcx]
        vinsertf128 ymm9, ymm14, xmm12, 1
        vmovhpd   xmm12, xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+8+rdx+r10]
        vmovq     xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+r9]
        vmovhpd   xmm14, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+rax]
        vmovq     xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+rcx]
        vinsertf128 ymm15, ymm15, xmm12, 1
        vmovhpd   xmm12, xmm3, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+16+rdx+r10]
        vinsertf128 ymm3, ymm14, xmm12, 1
        vmovhpd   xmm12, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+rax]
        vmovq     xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+r9]
        vmovhpd   xmm14, xmm2, QWORD PTR ["__jsvml_datan_ha_data_internal"@imgrel+24+rdx+r10]
        vinsertf128 ymm2, ymm12, xmm14, 1
        vandpd    ymm12, ymm15, ymm1
        vandpd    ymm15, ymm15, ymm0
        vsubpd    ymm14, ymm12, ymm9
        vfmadd213pd ymm9, ymm1, ymm15
        vcvtpd2ps xmm1, ymm9
        vrcpps    xmm12, xmm1
        vcvtps2pd ymm1, xmm12
        vmovapd   ymm15, ymm0
        vfnmadd231pd ymm15, ymm1, ymm9
        vfmadd213pd ymm15, ymm15, ymm15
        vfmadd213pd ymm1, ymm15, ymm1
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1792]
        vfnmadd231pd ymm0, ymm1, ymm9
        vfmadd213pd ymm1, ymm0, ymm1
        vmulpd    ymm12, ymm14, ymm1
        vfnmadd213pd ymm9, ymm12, ymm14
        vmulpd    ymm14, ymm12, ymm12
        vmulpd    ymm9, ymm1, ymm9
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1856]
        vmulpd    ymm0, ymm14, ymm14
        vaddpd    ymm2, ymm2, ymm9
        vfmadd213pd ymm15, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1920]
        vfmadd213pd ymm1, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+1984]
        vfmadd213pd ymm15, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2048]
        vfmadd213pd ymm1, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2112]
        vfmadd213pd ymm15, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2176]
        vfmadd213pd ymm1, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2240]
        vfmadd213pd ymm15, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2304]
        vfmadd213pd ymm1, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2368]
        vfmadd213pd ymm15, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2432]
        vfmadd213pd ymm1, ymm0, YMMWORD PTR [rip+__jsvml_datan_ha_data_internal+2496]
        vfmadd213pd ymm15, ymm14, ymm1
        vmulpd    ymm0, ymm14, ymm15
        vfmadd213pd ymm0, ymm12, ymm2
        vaddpd    ymm9, ymm12, ymm0
        vaddpd    ymm3, ymm3, ymm9
        vorpd     ymm0, ymm3, ymm4
        test      r8d, r8d
        jne       .L_B9_3

.L_B9_2:

        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm14, YMMWORD PTR [432+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B9_3:

        vmovupd   YMMWORD PTR [r13], ymm5
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B9_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm6
        vmovups   YMMWORD PTR [160+rsp], ymm7
        vmovups   YMMWORD PTR [128+rsp], ymm8
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm11
        vmovups   YMMWORD PTR [32+rsp], ymm13
        mov       QWORD PTR [232+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [224+rsp], rsi
        mov       esi, r8d

.L_B9_7:

        bt        esi, ebx
        jc        .L_B9_10

.L_B9_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B9_7

.L_B9_9:

        vmovups   ymm6, YMMWORD PTR [192+rsp]
        vmovups   ymm7, YMMWORD PTR [160+rsp]
        vmovups   ymm8, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm11, YMMWORD PTR [64+rsp]
        vmovups   ymm13, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [232+rsp]
        mov       rsi, QWORD PTR [224+rsp]
        jmp       .L_B9_2

.L_B9_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_datan_ha_cout_rare_internal
        jmp       .L_B9_8
        .align    16, 0x90

.L_B9_11:

        .section .drectve
        .ascii " -export \"__jsvml_atan4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan4_ha_l9_B1_B3:
        .long   802305
        .long   4379710
        .long   2070582
        .long   1951789
        .long   1828900
        .long   1701915
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_atan4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan4_ha_l9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   186415
        .long   309289
        .long   436259
        .long   559133
        .long   686100
        .long   813067
        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_atan4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_6
        .rva    .L_B9_11
        .rva    _unwind___jsvml_atan4_ha_l9_B6_B10

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_datan_ha_cout_rare_internal

__jsvml_datan_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L152:

        sub       rsp, 88
        mov       r8, rdx
        movzx     eax, WORD PTR [6+rcx]
        and       eax, 32752
        shr       eax, 4
        cmp       eax, 2047
        je        .L_B10_12

.L_B10_2:

        mov       r9, QWORD PTR [rcx]
        mov       QWORD PTR [72+rsp], r9
        shr       r9, 56
        mov       dl, BYTE PTR [7+rcx]
        and       r9d, 127
        mov       BYTE PTR [79+rsp], r9b
        movsd     xmm0, QWORD PTR [72+rsp]
        shr       dl, 7
        comisd    xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        mov       r9d, DWORD PTR [76+rsp]
        jb        .L_B10_6

.L_B10_3:

        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1896]
        comisd    xmm1, xmm0
        jbe       .L_B10_5

.L_B10_4:

        mov       r10d, r9d
        and       r9d, -524288
        add       r9d, 262144
        and       r10d, -1048576
        and       r9d, 1048575
        movaps    xmm3, xmm0
        movsd     QWORD PTR [32+rsp], xmm0
        or        r10d, r9d
        mov       DWORD PTR [32+rsp], 0
        lea       r9, QWORD PTR [rip+__ImageBase]
        mov       DWORD PTR [36+rsp], r10d
        mov       r11, r9
        movsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1928]
        mov       ecx, DWORD PTR [4+rcx]
        shl       eax, 20
        and       ecx, 1048575
        or        eax, ecx
        subsd     xmm3, QWORD PTR [32+rsp]
        shl       dl, 7
        mulsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        add       eax, -1069547520
        movsd     xmm2, QWORD PTR [40+rsp]
        sar       eax, 18
        subsd     xmm2, xmm3
        movsd     QWORD PTR [48+rsp], xmm2
        movaps    xmm2, xmm0
        movsd     xmm1, QWORD PTR [40+rsp]
        and       eax, -2
        movsd     xmm4, QWORD PTR [48+rsp]
        mulsd     xmm2, QWORD PTR [rip+_vmldAtanHATab+1928]
        subsd     xmm1, xmm4
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm5, QWORD PTR [40+rsp]
        movsxd    rax, eax
        subsd     xmm3, xmm5
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [40+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm1, QWORD PTR [72+rsp]
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm2, xmm5
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm0, xmm1
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        mulsd     xmm2, xmm0
        mulsd     xmm5, xmm0
        movaps    xmm1, xmm2
        addsd     xmm1, xmm5
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm2, xmm0
        addsd     xmm5, xmm2
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmldAtanHATab+1904]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm5, xmm1
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmldAtanHATab+1904]
        subsd     xmm5, xmm2
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm5, xmm2
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm1, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmldAtanHATab+1904]
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm1, QWORD PTR [56+rsp]
        subsd     xmm2, xmm1
        movsd     QWORD PTR [56+rsp], xmm2
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [56+rsp]
        addsd     xmm5, xmm1
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmldAtanHATab+1928]
        mulsd     xmm5, xmm2
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     QWORD PTR [40+rsp], xmm5
        addsd     xmm0, xmm1
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm1, xmm5
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm2, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmldAtanHATab+1928]
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        addsd     xmm2, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1904]
        divsd     xmm0, xmm1
        mulsd     xmm5, xmm0
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm5, xmm0
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     xmm0, QWORD PTR [56+rsp]
        subsd     xmm5, xmm0
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm0, QWORD PTR [56+rsp]
        mulsd     xmm1, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmldAtanHATab+1904]
        subsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [56+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm2, QWORD PTR [48+rsp]
        subsd     xmm5, xmm2
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm2, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     xmm0, QWORD PTR [56+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmldAtanHATab+1904]
        mulsd     xmm2, xmm5
        mulsd     xmm2, xmm0
        movaps    xmm0, xmm1
        mulsd     xmm1, xmm3
        mulsd     xmm0, xmm4
        mulsd     xmm4, xmm2
        movaps    xmm5, xmm2
        mulsd     xmm5, xmm3
        movaps    xmm3, xmm0
        addsd     xmm5, xmm1
        addsd     xmm5, xmm4
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR ["_vmldAtanHATab"@imgrel+r9+rax*8]
        addsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm0, xmm3
        addsd     xmm0, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1872]
        movsd     QWORD PTR [48+rsp], xmm0
        movaps    xmm0, xmm5
        movsd     xmm3, QWORD PTR [40+rsp]
        movaps    xmm2, xmm3
        addsd     xmm0, xmm3
        mulsd     xmm2, xmm3
        mulsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [48+rsp]
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1864]
        subsd     xmm5, xmm0
        mulsd     xmm1, xmm2
        addsd     xmm5, xmm3
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1856]
        mulsd     xmm1, xmm2
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm2, xmm1
        mulsd     xmm3, xmm2
        addsd     xmm4, xmm3
        addsd     xmm4, QWORD PTR ["_vmldAtanHATab"@imgrel+8+r11+rax*8]
        addsd     xmm5, xmm4
        addsd     xmm0, xmm5
        movsd     QWORD PTR [64+rsp], xmm0
        mov       cl, BYTE PTR [71+rsp]
        and       cl, 127
        or        cl, dl
        mov       BYTE PTR [71+rsp], cl
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_11

.L_B10_5:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1912]
        shl       dl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        movsd     QWORD PTR [64+rsp], xmm0
        mov       al, BYTE PTR [71+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [71+rsp], al
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_11

.L_B10_6:

        comisd    xmm0, QWORD PTR [rip+_vmldAtanHATab+1880]
        jb        .L_B10_8

.L_B10_7:

        movaps    xmm2, xmm0
        mulsd     xmm2, xmm0
        shl       dl, 7
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1872]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1864]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1856]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm2, xmm1
        mulsd     xmm2, xmm0
        addsd     xmm2, xmm0
        movsd     QWORD PTR [64+rsp], xmm2
        mov       al, BYTE PTR [71+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [71+rsp], al
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_11

.L_B10_8:

        movzx     eax, WORD PTR [78+rsp]
        test      eax, 32752
        je        .L_B10_10

.L_B10_9:

        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1904]
        shl       dl, 7
        addsd     xmm1, xmm0
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm0, QWORD PTR [40+rsp]
        mulsd     xmm0, QWORD PTR [72+rsp]
        movsd     QWORD PTR [64+rsp], xmm0
        mov       al, BYTE PTR [71+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [71+rsp], al
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_11

.L_B10_10:

        mulsd     xmm0, xmm0
        shl       dl, 7
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm0, QWORD PTR [72+rsp]
        movsd     QWORD PTR [64+rsp], xmm0
        mov       al, BYTE PTR [71+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [71+rsp], al
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx

.L_B10_11:

        xor       eax, eax
        add       rsp, 88
        ret

.L_B10_12:

        test      DWORD PTR [4+rcx], 1048575
        jne       .L_B10_15

.L_B10_13:

        cmp       DWORD PTR [rcx], 0
        jne       .L_B10_15

.L_B10_14:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1912]
        mov       cl, BYTE PTR [7+rcx]
        and       cl, -128
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        movsd     QWORD PTR [64+rsp], xmm0
        mov       al, BYTE PTR [71+rsp]
        and       al, 127
        or        al, cl
        mov       BYTE PTR [71+rsp], al
        mov       rdx, QWORD PTR [64+rsp]
        mov       QWORD PTR [r8], rdx
        jmp       .L_B10_11

.L_B10_15:

        movsd     xmm0, QWORD PTR [rcx]
        addsd     xmm0, xmm0
        movsd     QWORD PTR [r8], xmm0
        jmp       .L_B10_11
        .align    16, 0x90

.L_B10_16:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_datan_ha_cout_rare_internal_B1_B15:
        .long   67585
        .long   41480

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_16
        .rva    _unwind___jsvml_datan_ha_cout_rare_internal_B1_B15

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_datan_ha_data_internal_avx512
__jsvml_datan_ha_data_internal_avx512:
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
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1125646336
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
        .long   0
        .long   1075806208
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
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
        .long   0
        .long   1206910976
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
        .long   4180443357
        .long   1070553973
        .long   90291023
        .long   1071492199
        .long   2737217249
        .long   1071945615
        .long   1413754136
        .long   1072243195
        .long   1468297118
        .long   1072475260
        .long   3531732635
        .long   1072657163
        .long   744202399
        .long   1072747407
        .long   2464923204
        .long   1072805601
        .long   1436891685
        .long   1072853231
        .long   2037009832
        .long   1072892781
        .long   1826698067
        .long   1072926058
        .long   1803191648
        .long   1072954391
        .long   2205372832
        .long   1072978772
        .long   4234512805
        .long   1072999952
        .long   3932628503
        .long   1073018509
        .long   2501811453
        .long   1073034892
        .long   866379431
        .long   1073049455
        .long   1376865888
        .long   1073062480
        .long   3290094269
        .long   1073074195
        .long   354764887
        .long   1073084787
        .long   3332975497
        .long   1073094406
        .long   1141460092
        .long   1073103181
        .long   745761286
        .long   1073111216
        .long   1673304509
        .long   1073118600
        .long   983388243
        .long   1073125409
        .long   3895509104
        .long   1073131706
        .long   2128523669
        .long   1073137548
        .long   2075485693
        .long   1073142981
        .long   121855980
        .long   1073148047
        .long   4181733783
        .long   1073152780
        .long   2887813284
        .long   1073157214
        .long   0
        .long   0
        .long   1022865341
        .long   1013492590
        .long   573531618
        .long   1014639487
        .long   2280825944
        .long   1014120858
        .long   856972295
        .long   1015129638
        .long   986810987
        .long   1015077601
        .long   2062601149
        .long   1013974920
        .long   589036912
        .long   3164328156
        .long   1787331214
        .long   1016798022
        .long   2942272763
        .long   3164235441
        .long   2956702105
        .long   1016472908
        .long   3903328092
        .long   3162582135
        .long   3175026820
        .long   3158589859
        .long   787328196
        .long   1014621351
        .long   2317874517
        .long   3163795518
        .long   4071621134
        .long   1016673529
        .long   2492111345
        .long   3164172103
        .long   3606178875
        .long   3162371821
        .long   3365790232
        .long   1014547152
        .long   2710887773
        .long   1017086651
        .long   2755350986
        .long   3162706257
        .long   198095269
        .long   3162802133
        .long   2791076759
        .long   3164364640
        .long   4214434319
        .long   3162164074
        .long   773754012
        .long   3164190653
        .long   139561443
        .long   3164313657
        .long   2197796619
        .long   3164066219
        .long   3592486882
        .long   1016669082
        .long   1148791015
        .long   3163724934
        .long   386789398
        .long   3163117479
        .long   2518816264
        .long   3162291736
        .long   2545101323
        .long   3164592727
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   16
        .long   1125646336
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   4123328151
        .long   1068689849
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   3295121612
        .long   3216458327
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   4026078880
        .long   1069314495
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2398029018
        .long   3217180964
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   2576905246
        .long   1070176665
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .long   1431655757
        .long   3218429269
        .globl __jsvml_datan_ha_data_internal
__jsvml_datan_ha_data_internal:
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   0
        .long   1073217536
        .long   4294967295
        .long   4294967295
        .long   3531732635
        .long   1072657163
        .long   2062601149
        .long   1013974920
        .long   0
        .long   1072693248
        .long   4294967295
        .long   4294967295
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   0
        .long   1071644672
        .long   4294967295
        .long   4294967295
        .long   90291023
        .long   1071492199
        .long   573531618
        .long   1014639487
        .long   0
        .long   0
        .long   4294967295
        .long   4294967295
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
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1071382528
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1072889856
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1073971200
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   0
        .long   1072037888
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   90291023
        .long   1071492199
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   573531618
        .long   1014639487
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   856972295
        .long   1015129638
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   3531732635
        .long   1072657163
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   2062601149
        .long   1013974920
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
        .long   856972295
        .long   1016178214
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
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   1413754136
        .long   1074340347
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
        .long   0
        .long   1017226816
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
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1071382528
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1072889856
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1073971200
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   1072037888
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
        .long   4
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
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   3866310424
        .long   1066132731
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   529668190
        .long   3214953687
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1493047753
        .long   1067887957
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   1554070819
        .long   3215629941
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   3992437651
        .long   1068372721
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   845965549
        .long   3216052365
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   3073500986
        .long   1068740914
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   426211919
        .long   3216459217
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   435789718
        .long   1069314503
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2453936673
        .long   3217180964
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   2576977731
        .long   1070176665
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   1431655762
        .long   3218429269
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   2150629376
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
        .long   4258267136
_vmldAtanHATab:
        .long   3892314112
        .long   1069799150
        .long   2332892550
        .long   1039715405
        .long   1342177280
        .long   1070305495
        .long   270726690
        .long   1041535749
        .long   939524096
        .long   1070817911
        .long   2253973841
        .long   3188654726
        .long   3221225472
        .long   1071277294
        .long   3853927037
        .long   1043226911
        .long   2818572288
        .long   1071767563
        .long   2677759107
        .long   1044314101
        .long   3355443200
        .long   1072103591
        .long   1636578514
        .long   3191094734
        .long   1476395008
        .long   1072475260
        .long   1864703685
        .long   3188646936
        .long   805306368
        .long   1072747407
        .long   192551812
        .long   3192726267
        .long   2013265920
        .long   1072892781
        .long   2240369452
        .long   1043768538
        .long   0
        .long   1072999953
        .long   3665168337
        .long   3192705970
        .long   402653184
        .long   1073084787
        .long   1227953434
        .long   3192313277
        .long   2013265920
        .long   1073142981
        .long   3853283127
        .long   1045277487
        .long   805306368
        .long   1073187261
        .long   1676192264
        .long   3192868861
        .long   134217728
        .long   1073217000
        .long   4290763938
        .long   1042034855
        .long   671088640
        .long   1073239386
        .long   994303084
        .long   3189643768
        .long   402653184
        .long   1073254338
        .long   1878067156
        .long   1042652475
        .long   1610612736
        .long   1073265562
        .long   670314820
        .long   1045138554
        .long   3221225472
        .long   1073273048
        .long   691126919
        .long   3189987794
        .long   3489660928
        .long   1073278664
        .long   1618990832
        .long   3188194509
        .long   1207959552
        .long   1073282409
        .long   2198872939
        .long   1044806069
        .long   3489660928
        .long   1073285217
        .long   2633982383
        .long   1042307894
        .long   939524096
        .long   1073287090
        .long   1059367786
        .long   3189114230
        .long   2281701376
        .long   1073288494
        .long   3158525533
        .long   1044484961
        .long   3221225472
        .long   1073289430
        .long   286581777
        .long   1044893263
        .long   4026531840
        .long   1073290132
        .long   2000245215
        .long   3191647611
        .long   134217728
        .long   1073290601
        .long   4205071590
        .long   1045035927
        .long   536870912
        .long   1073290952
        .long   2334392229
        .long   1043447393
        .long   805306368
        .long   1073291186
        .long   2281458177
        .long   3188885569
        .long   3087007744
        .long   1073291361
        .long   691611507
        .long   1044733832
        .long   3221225472
        .long   1073291478
        .long   1816229550
        .long   1044363390
        .long   2281701376
        .long   1073291566
        .long   1993843750
        .long   3189837440
        .long   134217728
        .long   1073291625
        .long   3654754496
        .long   1044970837
        .long   4026531840
        .long   1073291668
        .long   3224300229
        .long   3191935390
        .long   805306368
        .long   1073291698
        .long   2988777976
        .long   3188950659
        .long   536870912
        .long   1073291720
        .long   1030371341
        .long   1043402665
        .long   3221225472
        .long   1073291734
        .long   1524463765
        .long   1044361356
        .long   3087007744
        .long   1073291745
        .long   2754295320
        .long   1044731036
        .long   134217728
        .long   1073291753
        .long   3099629057
        .long   1044970710
        .long   2281701376
        .long   1073291758
        .long   962914160
        .long   3189838838
        .long   805306368
        .long   1073291762
        .long   3543908206
        .long   3188950786
        .long   4026531840
        .long   1073291764
        .long   1849909620
        .long   3191935434
        .long   3221225472
        .long   1073291766
        .long   1641333636
        .long   1044361352
        .long   536870912
        .long   1073291768
        .long   1373968792
        .long   1043402654
        .long   134217728
        .long   1073291769
        .long   2033191599
        .long   1044970710
        .long   3087007744
        .long   1073291769
        .long   4117947437
        .long   1044731035
        .long   805306368
        .long   1073291770
        .long   315378368
        .long   3188950787
        .long   2281701376
        .long   1073291770
        .long   2428571750
        .long   3189838838
        .long   3221225472
        .long   1073291770
        .long   1608007466
        .long   1044361352
        .long   4026531840
        .long   1073291770
        .long   1895711420
        .long   3191935434
        .long   134217728
        .long   1073291771
        .long   2031108713
        .long   1044970710
        .long   536870912
        .long   1073291771
        .long   1362518342
        .long   1043402654
        .long   805306368
        .long   1073291771
        .long   317461253
        .long   3188950787
        .long   939524096
        .long   1073291771
        .long   4117231784
        .long   1044731035
        .long   1073741824
        .long   1073291771
        .long   1607942376
        .long   1044361352
        .long   1207959552
        .long   1073291771
        .long   2428929577
        .long   3189838838
        .long   1207959552
        .long   1073291771
        .long   2031104645
        .long   1044970710
        .long   1342177280
        .long   1073291771
        .long   1895722602
        .long   3191935434
        .long   1342177280
        .long   1073291771
        .long   317465322
        .long   3188950787
        .long   1342177280
        .long   1073291771
        .long   1362515546
        .long   1043402654
        .long   1342177280
        .long   1073291771
        .long   1607942248
        .long   1044361352
        .long   1342177280
        .long   1073291771
        .long   4117231610
        .long   1044731035
        .long   1342177280
        .long   1073291771
        .long   2031104637
        .long   1044970710
        .long   1342177280
        .long   1073291771
        .long   1540251232
        .long   1045150466
        .long   1342177280
        .long   1073291771
        .long   2644671394
        .long   1045270303
        .long   1342177280
        .long   1073291771
        .long   2399244691
        .long   1045360181
        .long   1342177280
        .long   1073291771
        .long   803971124
        .long   1045420100
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192879152
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192849193
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192826724
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192811744
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192800509
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192793019
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192787402
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192783657
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192780848
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192778976
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192777572
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192776635
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192775933
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192775465
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192775114
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774880
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774704
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774587
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774500
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774441
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774397
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774368
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774346
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774331
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774320
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774313
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774308
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774304
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774301
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774299
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774298
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774297
        .long   1476395008
        .long   1073291771
        .long   3613709523
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   177735686
        .long   3192774296
        .long   1476395008
        .long   1073291771
        .long   3490996172
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   2754716064
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   2263862659
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1895722605
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1650295902
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1466225875
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1343512524
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1251477510
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1190120835
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1144103328
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1113424990
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1090416237
        .long   3192774295
        .long   1476395008
        .long   1073291771
        .long   1075077068
        .long   3192774295
        .long   1431655765
        .long   3218429269
        .long   2576978363
        .long   1070176665
        .long   2453154343
        .long   3217180964
        .long   4189149139
        .long   1069314502
        .long   1775019125
        .long   3216459198
        .long   273199057
        .long   1068739452
        .long   874748308
        .long   3215993277
        .long   0
        .long   1017118720
        .long   0
        .long   1069547520
        .long   0
        .long   1129316352
        .long   0
        .long   1072693248
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   33554432
        .long   1101004800
        .data
#endif
