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
        .globl __jsvml_atanf8_ha_e9

__jsvml_atanf8_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 552
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vmovups   YMMWORD PTR [240+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [336+rsp], ymm11
        vmovups   YMMWORD PTR [496+rsp], ymm10
        vmovups   YMMWORD PTR [208+rsp], ymm9
        vmovups   YMMWORD PTR [272+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm7
        vmovups   YMMWORD PTR [304+rsp], ymm6
        vpxor     xmm6, xmm6, xmm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    ymm3, ymm0, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+192]
        and       r13, -64
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1920]
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1984]
        vmovups   YMMWORD PTR [32+r13], ymm0
        vandps    ymm14, ymm0, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+128]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+448]
        mov       QWORD PTR [536+rsp], r13
        vpsubd    xmm2, xmm3, xmm5
        vextractf128 xmm12, ymm3, 1
        vpcmpgtd  xmm4, xmm2, xmm15
        vpcmpeqd  xmm1, xmm2, xmm15
        vpor      xmm13, xmm4, xmm1
        vpsubd    xmm7, xmm12, xmm5
        vpcmpgtd  xmm10, xmm7, xmm15
        vpcmpeqd  xmm11, xmm7, xmm15
        vpor      xmm8, xmm10, xmm11
        vpcmpgtd  xmm15, xmm3, xmm0
        vpackssdw xmm9, xmm13, xmm8
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+256]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+320]
        vpcmpgtd  xmm13, xmm2, xmm3
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+384]
        vpcmpgtd  xmm10, xmm2, xmm12
        vpacksswb xmm5, xmm9, xmm6
        vpcmpgtd  xmm8, xmm4, xmm3
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1728]
        vpcmpgtd  xmm9, xmm1, xmm3
        vpxor     xmm2, xmm15, xmm6
        vpcmpgtd  xmm11, xmm4, xmm12
        vpmovmskb edx, xmm5
        vpcmpgtd  xmm7, xmm1, xmm12
        vpcmpgtd  xmm12, xmm12, xmm0
        vpxor     xmm6, xmm12, xmm6
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+768]
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+896]
        vpandn    xmm5, xmm13, xmm8
        vpandn    xmm8, xmm8, xmm9
        vpandn    xmm9, xmm9, xmm2
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+832]
        vinsertf128 ymm0, ymm13, xmm10, 1
        vpandn    xmm10, xmm10, xmm11
        vpandn    xmm11, xmm11, xmm7
        vpandn    xmm7, xmm7, xmm6
        vandps    ymm6, ymm3, ymm0
        vinsertf128 ymm13, ymm5, xmm10, 1
        vinsertf128 ymm10, ymm9, xmm7, 1
        vinsertf128 ymm12, ymm15, xmm12, 1
        vsubps    ymm7, ymm3, ymm1
        vsubps    ymm15, ymm3, ymm2
        vsubps    ymm9, ymm3, ymm4
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal]
        vmulps    ymm1, ymm3, ymm1
        vmulps    ymm4, ymm3, ymm4
        vandps    ymm9, ymm9, ymm10
        vinsertf128 ymm11, ymm8, xmm11, 1
        vandps    ymm8, ymm7, ymm13
        vandps    ymm15, ymm15, ymm11
        vorps     ymm8, ymm6, ymm8
        vorps     ymm6, ymm15, ymm9
        vandps    ymm7, ymm12, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+64]
        vorps     ymm15, ymm8, ymm6
        vorps     ymm7, ymm15, ymm7
        vandps    ymm6, ymm5, ymm0
        vaddps    ymm0, ymm5, ymm1
        vandps    ymm15, ymm0, ymm13
        vandps    ymm1, ymm10, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1216]
        vcvtps2pd ymm8, xmm7
        vextractf128 xmm9, ymm7, 1
        vmulps    ymm7, ymm3, ymm2
        vcvtps2pd ymm9, xmm9
        vaddps    ymm2, ymm5, ymm7
        vaddps    ymm5, ymm5, ymm4
        vandps    ymm7, ymm2, ymm11
        vandps    ymm2, ymm5, ymm10
        vandps    ymm5, ymm3, ymm12
        vorps     ymm3, ymm6, ymm15
        vorps     ymm7, ymm7, ymm2
        vorps     ymm15, ymm3, ymm7
        vorps     ymm6, ymm15, ymm5
        vandps    ymm7, ymm12, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1344]
        vorps     ymm5, ymm1, ymm7
        vandps    ymm2, ymm13, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+960]
        vandps    ymm4, ymm11, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1088]
        vandps    ymm10, ymm10, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1280]
        vandps    ymm12, ymm12, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1408]
        vorps     ymm10, ymm10, ymm12
        vandps    ymm13, ymm13, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1024]
        vandps    ymm11, ymm11, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1152]
        vorps     ymm11, ymm13, ymm11
        vcvtps2pd ymm0, xmm6
        vextractf128 xmm3, ymm6, 1
        vrcpps    ymm6, ymm6
        vcvtps2pd ymm15, xmm3
        vorps     ymm3, ymm2, ymm4
        vorps     ymm7, ymm3, ymm5
        vcvtps2pd ymm1, xmm6
        vextractf128 xmm2, ymm6, 1
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1856]
        vmulpd    ymm0, ymm0, ymm1
        vcvtps2pd ymm2, xmm2
        vsubpd    ymm4, ymm6, ymm0
        vmulpd    ymm15, ymm15, ymm2
        vmulpd    ymm3, ymm1, ymm4
        vsubpd    ymm5, ymm6, ymm15
        vaddpd    ymm3, ymm1, ymm3
        vmulpd    ymm0, ymm2, ymm5
        vmulpd    ymm1, ymm4, ymm4
        vmulpd    ymm5, ymm5, ymm5
        vaddpd    ymm15, ymm2, ymm0
        vaddpd    ymm2, ymm6, ymm1
        vaddpd    ymm4, ymm6, ymm5
        vmulpd    ymm6, ymm3, ymm2
        vmulpd    ymm15, ymm15, ymm4
        vmulpd    ymm8, ymm8, ymm6
        vmulpd    ymm1, ymm9, ymm15
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1792]
        vandpd    ymm0, ymm8, ymm9
        vandpd    ymm2, ymm1, ymm9
        vcvtpd2ps xmm15, ymm0
        vcvtpd2ps xmm9, ymm2
        vsubpd    ymm8, ymm8, ymm0
        vsubpd    ymm0, ymm1, ymm2
        vcvtpd2ps xmm8, ymm8
        vcvtpd2ps xmm1, ymm0
        vorps     ymm0, ymm11, ymm10
        vinsertf128 ymm15, ymm15, xmm9, 1
        vmulps    ymm9, ymm15, ymm15
        vmulps    ymm3, ymm9, ymm9
        vmulps    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1536]
        vaddps    ymm6, ymm4, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1664]
        vinsertf128 ymm2, ymm8, xmm1, 1
        vmulps    ymm1, ymm3, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1472]
        vaddps    ymm0, ymm2, ymm0
        vaddps    ymm5, ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1600]
        vmulps    ymm8, ymm9, ymm5
        vaddps    ymm12, ymm6, ymm8
        vmulps    ymm13, ymm9, ymm12
        vmulps    ymm1, ymm15, ymm13
        vaddps    ymm2, ymm0, ymm1
        vaddps    ymm15, ymm15, ymm2
        vaddps    ymm7, ymm7, ymm15
        vorps     ymm0, ymm7, ymm14
        test      dl, dl
        jne       .L_B1_3

.L_B1_2:

        vmovups   ymm6, YMMWORD PTR [304+rsp]
        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [272+rsp]
        vmovups   ymm9, YMMWORD PTR [208+rsp]
        vmovups   ymm10, YMMWORD PTR [496+rsp]
        vmovups   ymm11, YMMWORD PTR [336+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [240+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B1_3:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1
        test      edx, edx
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
        cmp       ebx, 8
        jl        .L_B1_7

.L_B1_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_satan_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_atanf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf8_ha_e9_B1_B3:
        .long   1601793
        .long   4379761
        .long   1271909
        .long   1538140
        .long   1149011
        .long   890954
        .long   2074689
        .long   1423416
        .long   1951791
        .long   1824806
        .long   1042461
        .long   1701908
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_atanf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf8_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_atanf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_atanf8_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_atanf4_ha_e9

__jsvml_atanf4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L30:

        sub       rsp, 376
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [224+rsp], xmm14
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm10
        vmovups   XMMWORD PTR [288+rsp], xmm9
        vmovups   XMMWORD PTR [304+rsp], xmm8
        vmovups   XMMWORD PTR [320+rsp], xmm7
        vmovups   XMMWORD PTR [336+rsp], xmm6
        mov       QWORD PTR [352+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm4, xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+192]
        and       r13, -64
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1984]
        vpsubd    xmm3, xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1920]
        vmovups   xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+320]
        vpcmpgtd  xmm2, xmm3, xmm5
        vmovups   xmm12, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+256]
        vpcmpeqd  xmm1, xmm3, xmm5
        vmovups   xmm10, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+384]
        vpcmpgtd  xmm7, xmm8, xmm4
        vpcmpgtd  xmm8, xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+448]
        vpor      xmm13, xmm2, xmm1
        vmovups   XMMWORD PTR [32+rsp], xmm0
        vpcmpgtd  xmm6, xmm10, xmm4
        vandps    xmm11, xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+128]
        vpcmpgtd  xmm0, xmm12, xmm4
        vpxor     xmm14, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1728]
        vpandn    xmm9, xmm0, xmm7
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+768]
        vpandn    xmm7, xmm7, xmm6
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+832]
        vpandn    xmm10, xmm6, xmm14
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+896]
        vandps    xmm12, xmm4, xmm0
        vmovmskps edx, xmm13
        vsubps    xmm15, xmm4, xmm1
        vsubps    xmm6, xmm4, xmm2
        vmulps    xmm2, xmm4, xmm2
        vsubps    xmm14, xmm4, xmm5
        vmulps    xmm5, xmm4, xmm5
        vandps    xmm13, xmm15, xmm9
        vandps    xmm15, xmm6, xmm7
        vandps    xmm6, xmm14, xmm10
        vorps     xmm13, xmm12, xmm13
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal]
        vorps     xmm12, xmm15, xmm6
        vorps     xmm15, xmm13, xmm12
        vandps    xmm12, xmm3, xmm0
        vmulps    xmm0, xmm4, xmm1
        vandps    xmm14, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+64]
        vaddps    xmm1, xmm3, xmm0
        vorps     xmm13, xmm15, xmm14
        vandps    xmm0, xmm4, xmm8
        vcvtps2pd ymm6, xmm13
        vaddps    xmm14, xmm3, xmm2
        vaddps    xmm3, xmm3, xmm5
        vandps    xmm13, xmm1, xmm9
        vandps    xmm15, xmm14, xmm7
        vandps    xmm14, xmm3, xmm10
        vorps     xmm4, xmm12, xmm13
        vorps     xmm13, xmm15, xmm14
        vorps     xmm12, xmm4, xmm13
        vorps     xmm12, xmm12, xmm0
        vrcpps    xmm0, xmm12
        vcvtps2pd ymm14, xmm12
        vandps    xmm1, xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+960]
        vandps    xmm2, xmm7, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1088]
        vorps     xmm5, xmm1, xmm2
        vcvtps2pd ymm1, xmm0
        vandps    xmm3, xmm10, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1216]
        vandps    xmm4, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1344]
        vorps     xmm15, xmm3, xmm4
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1856]
        vorps     xmm13, xmm5, xmm15
        vmulpd    ymm14, ymm14, ymm1
        vandps    xmm10, xmm10, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1280]
        vandps    xmm8, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1408]
        vorps     xmm8, xmm10, xmm8
        vandps    xmm9, xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1024]
        vsubpd    ymm14, ymm2, ymm14
        vandps    xmm7, xmm7, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1152]
        vorps     xmm7, xmm9, xmm7
        vmulpd    ymm12, ymm1, ymm14
        vmulpd    ymm0, ymm14, ymm14
        vaddpd    ymm3, ymm1, ymm12
        vaddpd    ymm4, ymm2, ymm0
        vmulpd    ymm5, ymm3, ymm4
        vmulpd    ymm6, ymm6, ymm5
        vandpd    ymm0, ymm6, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1792]
        vcvtpd2ps xmm12, ymm0
        vsubpd    ymm1, ymm6, ymm0
        vorps     xmm0, xmm7, xmm8
        vmulps    xmm10, xmm12, xmm12
        vcvtpd2ps xmm2, ymm1
        vmulps    xmm3, xmm10, xmm10
        vaddps    xmm0, xmm2, xmm0
        vmulps    xmm1, xmm3, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1472]
        vmulps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1536]
        vaddps    xmm5, xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1600]
        vaddps    xmm6, xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1664]
        vmulps    xmm9, xmm10, xmm5
        mov       QWORD PTR [360+rsp], r13
        vaddps    xmm14, xmm6, xmm9
        vmulps    xmm15, xmm10, xmm14
        vmulps    xmm1, xmm12, xmm15
        vaddps    xmm2, xmm0, xmm1
        vaddps    xmm12, xmm12, xmm2
        vaddps    xmm13, xmm13, xmm12
        vorps     xmm0, xmm13, xmm11
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vzeroupper
        vmovups   xmm6, XMMWORD PTR [336+rsp]
        vmovups   xmm7, XMMWORD PTR [320+rsp]
        vmovups   xmm8, XMMWORD PTR [304+rsp]
        vmovups   xmm9, XMMWORD PTR [288+rsp]
        vmovups   xmm10, XMMWORD PTR [272+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [224+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [352+rsp]
        add       rsp, 376
        ret

.L_B2_3:

        vmovups   xmm1, XMMWORD PTR [32+rsp]
        vmovups   XMMWORD PTR [r13], xmm1
        vmovups   XMMWORD PTR [64+r13], xmm0

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
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_satan_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_atanf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_e9_B1_B3:
        .long   1600769
        .long   2937965
        .long   1402981
        .long   1341532
        .long   1280083
        .long   1218634
        .long   1157185
        .long   1095736
        .long   1034287
        .long   907302
        .long   976925
        .long   849940
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_atanf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_atanf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_atanf4_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_atanf4_ha_l9

__jsvml_atanf4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L59:

        sub       rsp, 376
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm10
        vmovups   XMMWORD PTR [304+rsp], xmm9
        vmovups   XMMWORD PTR [320+rsp], xmm8
        vmovups   XMMWORD PTR [336+rsp], xmm7
        vmovups   XMMWORD PTR [288+rsp], xmm6
        mov       QWORD PTR [352+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm1, xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+192]
        and       r13, -64
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1984]
        vpsubd    xmm5, xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1920]
        vpcmpgtd  xmm3, xmm5, xmm2
        vpcmpeqd  xmm4, xmm5, xmm2
        vpor      xmm12, xmm3, xmm4
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+768]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+256]
        vsubps    xmm15, xmm1, xmm3
        vmovmskps edx, xmm12
        vmovups   xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+320]
        vpcmpgtd  xmm4, xmm11, xmm1
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+384]
        vpcmpgtd  xmm7, xmm8, xmm1
        vpcmpgtd  xmm8, xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+448]
        vpcmpgtd  xmm5, xmm6, xmm1
        vmovups   XMMWORD PTR [32+rsp], xmm0
        vpandn    xmm9, xmm4, xmm7
        vandps    xmm10, xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+128]
        vpandn    xmm7, xmm7, xmm5
        vpxor     xmm14, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1728]
        vandps    xmm13, xmm1, xmm4
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+832]
        vpandn    xmm6, xmm5, xmm14
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+896]
        vandps    xmm14, xmm15, xmm9
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal]
        vorps     xmm13, xmm13, xmm14
        vfmadd213ps xmm3, xmm1, xmm5
        vsubps    xmm12, xmm1, xmm0
        vfmadd213ps xmm0, xmm1, xmm5
        vsubps    xmm15, xmm1, xmm2
        vfmadd213ps xmm2, xmm1, xmm5
        vandps    xmm11, xmm12, xmm7
        vandps    xmm15, xmm15, xmm6
        vorps     xmm11, xmm11, xmm15
        vandps    xmm4, xmm5, xmm4
        vandps    xmm12, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+64]
        vorps     xmm14, xmm13, xmm11
        vandps    xmm3, xmm3, xmm9
        vandps    xmm0, xmm0, xmm7
        vandps    xmm2, xmm2, xmm6
        vorps     xmm14, xmm14, xmm12
        vandps    xmm13, xmm1, xmm8
        vorps     xmm1, xmm4, xmm3
        vorps     xmm12, xmm0, xmm2
        test      edx, edx
        vorps     xmm11, xmm1, xmm12
        vandps    xmm0, xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+960]
        vorps     xmm13, xmm11, xmm13
        vandps    xmm1, xmm7, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1088]
        vorps     xmm4, xmm0, xmm1
        vrcpps    xmm0, xmm13
        vfnmadd231ps xmm5, xmm13, xmm0
        vandps    xmm2, xmm6, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1216]
        vandps    xmm3, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1344]
        vorps     xmm15, xmm2, xmm3
        vorps     xmm12, xmm4, xmm15
        vfmadd213ps xmm5, xmm5, xmm5
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1472]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1536]
        vandps    xmm9, xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1024]
        vandps    xmm7, xmm7, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1152]
        vfmadd213ps xmm0, xmm5, xmm0
        vorps     xmm5, xmm9, xmm7
        vandps    xmm6, xmm6, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1280]
        vandps    xmm8, xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1408]
        vmulps    xmm11, xmm14, xmm0
        vmulps    xmm3, xmm11, xmm11
        vfnmadd213ps xmm13, xmm11, xmm14
        vorps     xmm14, xmm6, xmm8
        vmulps    xmm2, xmm3, xmm3
        vorps     xmm5, xmm5, xmm14
        vmulps    xmm0, xmm0, xmm13
        vfmadd213ps xmm4, xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1600]
        vfmadd213ps xmm2, xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1664]
        vaddps    xmm6, xmm5, xmm0
        vfmadd213ps xmm4, xmm3, xmm2
        vmulps    xmm7, xmm3, xmm4
        vfmadd213ps xmm7, xmm11, xmm6
        mov       QWORD PTR [360+rsp], r13
        vaddps    xmm8, xmm11, xmm7
        vaddps    xmm9, xmm12, xmm8
        vorps     xmm0, xmm9, xmm10
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm6, XMMWORD PTR [288+rsp]
        vmovups   xmm7, XMMWORD PTR [336+rsp]
        vmovups   xmm8, XMMWORD PTR [320+rsp]
        vmovups   xmm9, XMMWORD PTR [304+rsp]
        vmovups   xmm10, XMMWORD PTR [272+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [352+rsp]
        add       rsp, 376
        ret

.L_B3_3:

        vmovups   xmm1, XMMWORD PTR [32+rsp]
        vmovups   XMMWORD PTR [r13], xmm1
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

        call      __jsvml_satan_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_atanf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_l9_B1_B3:
        .long   1600769
        .long   2937965
        .long   1206373
        .long   1407068
        .long   1345619
        .long   1284170
        .long   1157185
        .long   1095736
        .long   1034287
        .long   972838
        .long   911389
        .long   849940
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_atanf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_atanf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_atanf4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_atanf4_ha_ex

__jsvml_atanf4_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L88:

        sub       rsp, 376
        movups    XMMWORD PTR [224+rsp], xmm15
        movups    XMMWORD PTR [240+rsp], xmm14
        movups    XMMWORD PTR [256+rsp], xmm13
        movups    XMMWORD PTR [288+rsp], xmm12
        movups    XMMWORD PTR [304+rsp], xmm11
        movups    XMMWORD PTR [320+rsp], xmm10
        movups    XMMWORD PTR [336+rsp], xmm9
        movups    XMMWORD PTR [272+rsp], xmm8
        movups    XMMWORD PTR [192+rsp], xmm7
        movups    XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [352+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm12, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+192]
        and       r13, -64
        andps     xmm12, xmm0
        movups    xmm14, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+768]
        movaps    xmm7, xmm12
        movups    xmm10, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+832]
        movaps    xmm15, xmm12
        movups    xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+896]
        movaps    xmm13, xmm12
        movaps    xmm4, xmm12
        movaps    xmm6, xmm12
        psubd     xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1920]
        subps     xmm7, xmm14
        mulps     xmm14, xmm12
        subps     xmm15, xmm10
        subps     xmm13, xmm9
        mulps     xmm10, xmm12
        mulps     xmm9, xmm12
        movups    xmm8, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+128]
        movdqa    xmm5, xmm4
        movdqu    xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+256]
        andps     xmm8, xmm0
        movdqu    xmm3, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1984]
        pcmpgtd   xmm1, xmm12
        movups    XMMWORD PTR [32+rsp], xmm0
        movaps    xmm0, xmm12
        movups    xmm11, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal]
        pcmpgtd   xmm5, xmm3
        pcmpeqd   xmm4, xmm3
        movdqa    xmm3, xmm1
        andps     xmm0, xmm1
        andps     xmm1, xmm11
        por       xmm5, xmm4
        addps     xmm14, xmm11
        addps     xmm10, xmm11
        addps     xmm11, xmm9
        movmskps  eax, xmm5
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+320]
        movdqu    xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+384]
        pcmpgtd   xmm4, xmm12
        pcmpgtd   xmm6, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+448]
        pcmpgtd   xmm5, xmm12
        movdqu    xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1728]
        pandn     xmm3, xmm4
        pxor      xmm2, xmm6
        pandn     xmm4, xmm5
        pandn     xmm5, xmm2
        andps     xmm14, xmm3
        andps     xmm10, xmm4
        andps     xmm11, xmm5
        orps      xmm1, xmm14
        orps      xmm10, xmm11
        andps     xmm12, xmm6
        orps      xmm1, xmm10
        orps      xmm1, xmm12
        andps     xmm7, xmm3
        movaps    xmm14, xmm1
        andps     xmm15, xmm4
        cvtps2pd  xmm10, xmm1
        movhlps   xmm14, xmm1
        andps     xmm13, xmm5
        rcpps     xmm1, xmm1
        orps      xmm0, xmm7
        orps      xmm15, xmm13
        orps      xmm0, xmm15
        cvtps2pd  xmm15, xmm14
        cvtps2pd  xmm14, xmm1
        movhlps   xmm1, xmm1
        cvtps2pd  xmm13, xmm1
        mulpd     xmm10, xmm14
        mulpd     xmm15, xmm13
        movups    xmm2, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+64]
        andps     xmm2, xmm6
        orps      xmm0, xmm2
        cvtps2pd  xmm2, xmm0
        movhlps   xmm0, xmm0
        cvtps2pd  xmm7, xmm0
        movups    xmm0, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+960]
        movups    xmm9, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1088]
        andps     xmm0, xmm3
        movups    xmm12, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1216]
        andps     xmm9, xmm4
        movups    xmm11, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1344]
        andps     xmm12, xmm5
        andps     xmm11, xmm6
        orps      xmm0, xmm9
        orps      xmm12, xmm11
        movups    xmm11, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1856]
        orps      xmm0, xmm12
        movaps    xmm12, xmm11
        movaps    xmm1, xmm11
        subpd     xmm12, xmm10
        subpd     xmm1, xmm15
        movaps    xmm10, xmm12
        movaps    xmm9, xmm1
        mulpd     xmm10, xmm14
        mulpd     xmm9, xmm13
        mulpd     xmm12, xmm12
        mulpd     xmm1, xmm1
        addpd     xmm14, xmm10
        addpd     xmm13, xmm9
        addpd     xmm12, xmm11
        addpd     xmm11, xmm1
        mulpd     xmm14, xmm12
        mulpd     xmm13, xmm11
        mulpd     xmm2, xmm14
        mulpd     xmm7, xmm13
        movups    xmm13, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1792]
        movaps    xmm12, xmm13
        andps     xmm13, xmm7
        andps     xmm12, xmm2
        cvtpd2ps  xmm10, xmm12
        cvtpd2ps  xmm11, xmm13
        subpd     xmm2, xmm12
        subpd     xmm7, xmm13
        cvtpd2ps  xmm9, xmm2
        cvtpd2ps  xmm2, xmm7
        movlhps   xmm10, xmm11
        movups    xmm14, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1408]
        andps     xmm14, xmm6
        movaps    xmm6, xmm10
        mulps     xmm6, xmm10
        movups    xmm1, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1024]
        andps     xmm1, xmm3
        movaps    xmm3, xmm6
        mulps     xmm3, xmm6
        movups    xmm7, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1152]
        andps     xmm7, xmm4
        movups    xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1472]
        orps      xmm1, xmm7
        mulps     xmm4, xmm3
        movups    xmm15, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1280]
        andps     xmm15, xmm5
        addps     xmm4, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1600]
        movups    xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1536]
        orps      xmm15, xmm14
        mulps     xmm5, xmm3
        orps      xmm1, xmm15
        mulps     xmm4, xmm6
        addps     xmm5, XMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1664]
        movlhps   xmm9, xmm2
        addps     xmm5, xmm4
        addps     xmm9, xmm1
        mulps     xmm6, xmm5
        mulps     xmm6, xmm10
        mov       QWORD PTR [360+rsp], r13
        addps     xmm9, xmm6
        addps     xmm10, xmm9
        addps     xmm0, xmm10
        orps      xmm0, xmm8
        test      eax, eax
        jne       .L_B4_3

.L_B4_2:

        movups    xmm6, XMMWORD PTR [208+rsp]
        movups    xmm7, XMMWORD PTR [192+rsp]
        movups    xmm8, XMMWORD PTR [272+rsp]
        movups    xmm9, XMMWORD PTR [336+rsp]
        movups    xmm10, XMMWORD PTR [320+rsp]
        movups    xmm11, XMMWORD PTR [304+rsp]
        movups    xmm12, XMMWORD PTR [288+rsp]
        movups    xmm13, XMMWORD PTR [256+rsp]
        movups    xmm14, XMMWORD PTR [240+rsp]
        movups    xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [352+rsp]
        add       rsp, 376
        ret

.L_B4_3:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm0

.L_B4_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B4_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
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

        call      __jsvml_satan_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_atanf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_ex_B1_B3:
        .long   1600257
        .long   2937963
        .long   878691
        .long   817243
        .long   1149011
        .long   1415242
        .long   1353793
        .long   1292344
        .long   1230895
        .long   1103910
        .long   1042461
        .long   981012
        .long   3080459

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_atanf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_atanf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_atanf4_ha_ex_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_atanf8_ha_l9

__jsvml_atanf8_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L117:

        sub       rsp, 552
        vmovups   YMMWORD PTR [208+rsp], ymm15
        vmovups   YMMWORD PTR [240+rsp], ymm14
        vmovups   YMMWORD PTR [272+rsp], ymm13
        vmovups   YMMWORD PTR [304+rsp], ymm12
        vmovups   YMMWORD PTR [336+rsp], ymm11
        vmovups   YMMWORD PTR [368+rsp], ymm10
        vmovups   YMMWORD PTR [432+rsp], ymm9
        vmovups   YMMWORD PTR [464+rsp], ymm8
        vmovups   YMMWORD PTR [496+rsp], ymm7
        vmovups   YMMWORD PTR [400+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   ymm8, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+320]
        and       r13, -64
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1984]
        vmovups   ymm11, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+256]
        vmovups   ymm6, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+384]
        vmovups   YMMWORD PTR [32+r13], ymm0
        vandps    ymm1, ymm0, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+192]
        vpsubd    ymm5, ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1920]
        vpcmpgtd  ymm7, ymm8, ymm1
        vpcmpgtd  ymm8, ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+448]
        vpcmpgtd  ymm3, ymm5, ymm2
        vpcmpeqd  ymm4, ymm5, ymm2
        vpxor     ymm14, ymm8, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1728]
        vpor      ymm12, ymm3, ymm4
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+768]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+896]
        vsubps    ymm15, ymm1, ymm3
        vpcmpgtd  ymm4, ymm11, ymm1
        vpcmpgtd  ymm5, ymm6, ymm1
        vandps    ymm10, ymm0, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+128]
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+832]
        vpandn    ymm9, ymm4, ymm7
        vpandn    ymm7, ymm7, ymm5
        vpandn    ymm6, ymm5, ymm14
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal]
        vmovmskps edx, ymm12
        vandps    ymm14, ymm15, ymm9
        test      edx, edx
        vsubps    ymm12, ymm1, ymm0
        vsubps    ymm15, ymm1, ymm2
        vfmadd213ps ymm3, ymm1, ymm5
        vfmadd213ps ymm0, ymm1, ymm5
        vfmadd213ps ymm2, ymm1, ymm5
        vandps    ymm13, ymm1, ymm4
        vandps    ymm11, ymm12, ymm7
        vandps    ymm15, ymm15, ymm6
        vorps     ymm13, ymm13, ymm14
        vorps     ymm11, ymm11, ymm15
        vandps    ymm12, ymm8, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+64]
        vorps     ymm14, ymm13, ymm11
        vandps    ymm4, ymm5, ymm4
        vandps    ymm3, ymm3, ymm9
        vandps    ymm0, ymm0, ymm7
        vandps    ymm2, ymm2, ymm6
        vorps     ymm14, ymm14, ymm12
        vandps    ymm13, ymm1, ymm8
        vorps     ymm1, ymm4, ymm3
        vorps     ymm12, ymm0, ymm2
        vorps     ymm11, ymm1, ymm12
        vorps     ymm13, ymm11, ymm13
        vandps    ymm0, ymm9, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+960]
        vandps    ymm1, ymm7, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1088]
        vorps     ymm4, ymm0, ymm1
        vrcpps    ymm0, ymm13
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1536]
        vfnmadd231ps ymm5, ymm13, ymm0
        vfmadd213ps ymm5, ymm5, ymm5
        vfmadd213ps ymm0, ymm5, ymm0
        vmulps    ymm11, ymm14, ymm0
        vandps    ymm2, ymm6, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1216]
        vandps    ymm3, ymm8, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1344]
        vorps     ymm15, ymm2, ymm3
        vmulps    ymm3, ymm11, ymm11
        vfnmadd213ps ymm13, ymm11, ymm14
        vmulps    ymm2, ymm3, ymm3
        vmulps    ymm0, ymm0, ymm13
        vorps     ymm12, ymm4, ymm15
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1472]
        vfmadd213ps ymm4, ymm2, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1600]
        vfmadd213ps ymm2, ymm1, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1664]
        vfmadd213ps ymm4, ymm3, ymm2
        vandps    ymm9, ymm9, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1024]
        vandps    ymm7, ymm7, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1152]
        vandps    ymm6, ymm6, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1280]
        vandps    ymm8, ymm8, YMMWORD PTR [rip+__jsvml_satan_ha_data_internal+1408]
        vorps     ymm5, ymm9, ymm7
        vorps     ymm14, ymm6, ymm8
        vmulps    ymm7, ymm3, ymm4
        vorps     ymm5, ymm5, ymm14
        vaddps    ymm6, ymm5, ymm0
        vfmadd213ps ymm7, ymm11, ymm6
        vaddps    ymm8, ymm11, ymm7
        vaddps    ymm9, ymm12, ymm8
        mov       QWORD PTR [536+rsp], r13
        vorps     ymm0, ymm9, ymm10
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [400+rsp]
        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm9, YMMWORD PTR [432+rsp]
        vmovups   ymm10, YMMWORD PTR [368+rsp]
        vmovups   ymm11, YMMWORD PTR [336+rsp]
        vmovups   ymm12, YMMWORD PTR [304+rsp]
        vmovups   ymm13, YMMWORD PTR [272+rsp]
        vmovups   ymm14, YMMWORD PTR [240+rsp]
        vmovups   ymm15, YMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_3:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1

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
        cmp       ebx, 8
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_satan_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_atanf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf8_ha_l9_B1_B3:
        .long   1600769
        .long   4379757
        .long   1665125
        .long   2062428
        .long   1935443
        .long   1808458
        .long   1550401
        .long   1423416
        .long   1296431
        .long   1169446
        .long   1042461
        .long   915476
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_atanf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atanf8_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_atanf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_atanf8_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_atanf16_ha_z0

__jsvml_atanf16_ha_z0:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L146:

        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+128]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+320]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+64]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+256]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+192]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+448]
        vandps    zmm4, zmm0, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512]
        vcmpps    k1, zmm4, zmm5, 17 {sae}
        vminps    zmm2, zmm22, zmm4 {sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+576]
        vaddps    zmm3, zmm4, zmm23 {rn-sae}
        vreduceps zmm29{k1}, zmm4, 40 {sae}
        vsubps    zmm24, zmm3, zmm23 {rn-sae}
        vpermt2ps zmm31, zmm3, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+512]
        vpermt2ps zmm5, zmm3, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+640]
        vfmadd213ps zmm2{k1}, zmm24, zmm26 {rn-sae}
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+832]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+896]
        vsubps    zmm27, zmm2, zmm26 {rn-sae}
        vrcp14ps  zmm28, zmm2
        vfmsub231ps zmm27, zmm24, zmm4 {rn-sae}
        knotw     k2, k1
        vmovaps   zmm25, zmm2
        vfnmadd213ps zmm25, zmm28, zmm26 {rn-sae}
        vblendmps zmm24{k2}, zmm31, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+704]
        vblendmps zmm22{k2}, zmm5, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+768]
        vfmadd213ps zmm28, zmm25, zmm28 {rn-sae}
        vmulps    zmm1, zmm28, zmm29 {rn-sae}
        vmulps    zmm30, zmm27, zmm28 {rn-sae}
        vfnmadd213ps zmm2, zmm28, zmm26 {rn-sae}
        vfmsub213ps zmm29, zmm28, zmm1 {rn-sae}
        vfmadd213ps zmm2, zmm1, zmm29 {rn-sae}
        vmulps    zmm29, zmm1, zmm1 {rn-sae}
        vfnmadd231ps zmm2{k1}, zmm30, zmm1 {rn-sae}
        vaddps    zmm30, zmm24, zmm1 {rn-sae}
        vmulps    zmm27, zmm29, zmm1 {rn-sae}
        vfmadd231ps zmm23, zmm3, zmm29 {rn-sae}
        vaddps    zmm26, zmm2, zmm22 {rn-sae}
        vsubps    zmm25, zmm30, zmm24 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_satan_ha_data_internal_avx512+960]
        vsubps    zmm1, zmm1, zmm25 {rn-sae}
        vfmadd213ps zmm29, zmm23, zmm2 {rn-sae}
        vaddps    zmm28, zmm26, zmm1 {rn-sae}
        vfmadd213ps zmm29, zmm27, zmm28 {rn-sae}
        vaddps    zmm31, zmm29, zmm30 {rn-sae}
        vpternlogd zmm0, zmm4, zmm31, 150
        ret
        .align    16, 0x90

.L_B6_2:

        .section .drectve
        .ascii " -export \"__jsvml_atanf16_ha_z0\""

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_satan_ha_cout_rare_internal

__jsvml_satan_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L147:

        sub       rsp, 88
        mov       r8, rcx
        movzx     ecx, WORD PTR [2+r8]
        and       ecx, 32640
        shr       ecx, 7
        cmp       ecx, 255
        je        .L_B7_12

.L_B7_2:

        movss     xmm1, DWORD PTR [r8]
        pxor      xmm0, xmm0
        cvtss2sd  xmm0, xmm1
        movsd     QWORD PTR [80+rsp], xmm0
        and       BYTE PTR [87+rsp], 127
        movsd     xmm0, QWORD PTR [80+rsp]
        mov       al, BYTE PTR [3+r8]
        shr       al, 7
        comisd    xmm0, QWORD PTR [rip+_vmlsAtanHATab+1888]
        mov       r8d, DWORD PTR [84+rsp]
        jb        .L_B7_6

.L_B7_3:

        movsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1896]
        comisd    xmm1, xmm0
        jbe       .L_B7_5

.L_B7_4:

        mov       ecx, r8d
        mov       r9d, r8d
        and       r8d, -524288
        and       r9d, -1048576
        add       r8d, 262144
        movaps    xmm3, xmm0
        and       r8d, 1048575
        and       ecx, 1048575
        movsd     QWORD PTR [48+rsp], xmm0
        or        r9d, r8d
        mov       DWORD PTR [48+rsp], 0
        lea       r8, QWORD PTR [rip+__ImageBase]
        mov       DWORD PTR [52+rsp], r9d
        mov       r11, r8
        movsd     xmm4, QWORD PTR [rip+_vmlsAtanHATab+1928]
        movzx     r10d, WORD PTR [86+rsp]
        and       r10d, 32752
        subsd     xmm3, QWORD PTR [48+rsp]
        shl       al, 7
        mulsd     xmm4, xmm3
        movsd     QWORD PTR [56+rsp], xmm4
        movsd     xmm2, QWORD PTR [56+rsp]
        shr       r10d, 4
        subsd     xmm2, xmm3
        movsd     QWORD PTR [64+rsp], xmm2
        movaps    xmm2, xmm0
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm4, QWORD PTR [64+rsp]
        mulsd     xmm2, QWORD PTR [rip+_vmlsAtanHATab+1928]
        subsd     xmm1, xmm4
        movsd     QWORD PTR [56+rsp], xmm1
        movsd     xmm5, QWORD PTR [56+rsp]
        shl       r10d, 20
        subsd     xmm3, xmm5
        movsd     QWORD PTR [64+rsp], xmm3
        or        r10d, ecx
        movsd     xmm4, QWORD PTR [56+rsp]
        add       r10d, -1069547520
        movsd     xmm3, QWORD PTR [64+rsp]
        movsd     QWORD PTR [56+rsp], xmm2
        movsd     xmm1, QWORD PTR [56+rsp]
        sar       r10d, 18
        subsd     xmm1, QWORD PTR [80+rsp]
        movsd     QWORD PTR [64+rsp], xmm1
        and       r10d, -2
        movsd     xmm2, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [64+rsp]
        movsxd    r10, r10d
        subsd     xmm2, xmm5
        movsd     QWORD PTR [56+rsp], xmm2
        movsd     xmm1, QWORD PTR [56+rsp]
        subsd     xmm0, xmm1
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm2, QWORD PTR [56+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     xmm5, QWORD PTR [64+rsp]
        mulsd     xmm2, xmm0
        mulsd     xmm5, xmm0
        movaps    xmm1, xmm2
        addsd     xmm1, xmm5
        movsd     QWORD PTR [56+rsp], xmm1
        movsd     xmm0, QWORD PTR [56+rsp]
        subsd     xmm2, xmm0
        addsd     xmm5, xmm2
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmlsAtanHATab+1904]
        movsd     xmm0, QWORD PTR [64+rsp]
        addsd     xmm5, xmm1
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm2, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmlsAtanHATab+1904]
        subsd     xmm5, xmm2
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm5, QWORD PTR [56+rsp]
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm5, xmm2
        movsd     QWORD PTR [72+rsp], xmm5
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm1, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmlsAtanHATab+1904]
        movsd     QWORD PTR [64+rsp], xmm1
        movsd     xmm1, QWORD PTR [72+rsp]
        subsd     xmm2, xmm1
        movsd     QWORD PTR [72+rsp], xmm2
        movsd     xmm5, QWORD PTR [64+rsp]
        movsd     xmm1, QWORD PTR [72+rsp]
        addsd     xmm5, xmm1
        movsd     QWORD PTR [72+rsp], xmm5
        movsd     xmm2, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [rip+_vmlsAtanHATab+1928]
        mulsd     xmm5, xmm2
        movsd     xmm1, QWORD PTR [72+rsp]
        movsd     QWORD PTR [56+rsp], xmm5
        addsd     xmm0, xmm1
        movsd     xmm1, QWORD PTR [56+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [64+rsp], xmm1
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [64+rsp]
        subsd     xmm1, xmm5
        movsd     QWORD PTR [56+rsp], xmm1
        movsd     xmm5, QWORD PTR [56+rsp]
        subsd     xmm2, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmlsAtanHATab+1928]
        movsd     QWORD PTR [64+rsp], xmm2
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm2, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmlsAtanHATab+1904]
        divsd     xmm0, xmm1
        mulsd     xmm5, xmm0
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm5, QWORD PTR [64+rsp]
        subsd     xmm5, xmm0
        movsd     QWORD PTR [72+rsp], xmm5
        movsd     xmm5, QWORD PTR [64+rsp]
        movsd     xmm0, QWORD PTR [72+rsp]
        subsd     xmm5, xmm0
        movsd     QWORD PTR [72+rsp], xmm5
        movsd     xmm0, QWORD PTR [72+rsp]
        mulsd     xmm1, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmlsAtanHATab+1904]
        subsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [72+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [64+rsp], xmm2
        movsd     xmm2, QWORD PTR [64+rsp]
        subsd     xmm5, xmm2
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm2, QWORD PTR [64+rsp]
        movsd     xmm1, QWORD PTR [72+rsp]
        movsd     xmm5, QWORD PTR [64+rsp]
        movsd     xmm0, QWORD PTR [72+rsp]
        addsd     xmm2, QWORD PTR [rip+_vmlsAtanHATab+1904]
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
        movsd     QWORD PTR [56+rsp], xmm5
        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR ["_vmlsAtanHATab"@imgrel+r8+r10*8]
        addsd     xmm3, xmm1
        movsd     QWORD PTR [56+rsp], xmm3
        movsd     xmm3, QWORD PTR [56+rsp]
        subsd     xmm0, xmm3
        addsd     xmm0, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1872]
        movsd     QWORD PTR [64+rsp], xmm0
        movaps    xmm0, xmm5
        movsd     xmm3, QWORD PTR [56+rsp]
        movaps    xmm2, xmm3
        addsd     xmm0, xmm3
        mulsd     xmm2, xmm3
        mulsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [64+rsp]
        movsd     QWORD PTR [56+rsp], xmm0
        movsd     xmm0, QWORD PTR [56+rsp]
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1864]
        subsd     xmm5, xmm0
        mulsd     xmm1, xmm2
        addsd     xmm5, xmm3
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1856]
        mulsd     xmm1, xmm2
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [64+rsp]
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1848]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1840]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1832]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1824]
        mulsd     xmm2, xmm1
        mulsd     xmm3, xmm2
        addsd     xmm4, xmm3
        addsd     xmm4, QWORD PTR ["_vmlsAtanHATab"@imgrel+8+r11+r10*8]
        addsd     xmm5, xmm4
        addsd     xmm0, xmm5
        movsd     QWORD PTR [40+rsp], xmm0
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm2, QWORD PTR [40+rsp]
        cvtsd2ss  xmm2, xmm2
        movss     DWORD PTR [rdx], xmm2
        jmp       .L_B7_11

.L_B7_5:

        movsd     xmm0, QWORD PTR [rip+_vmlsAtanHATab+1912]
        shl       al, 7
        addsd     xmm0, QWORD PTR [rip+_vmlsAtanHATab+1920]
        movsd     QWORD PTR [40+rsp], xmm0
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm1, QWORD PTR [40+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        jmp       .L_B7_11

.L_B7_6:

        comisd    xmm0, QWORD PTR [rip+_vmlsAtanHATab+1880]
        jb        .L_B7_8

.L_B7_7:

        movaps    xmm2, xmm0
        mulsd     xmm2, xmm0
        shl       al, 7
        movsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1872]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1864]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1856]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1848]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1840]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1832]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1824]
        mulsd     xmm2, xmm1
        mulsd     xmm2, xmm0
        addsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm0, QWORD PTR [40+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_11

.L_B7_8:

        test      ecx, ecx
        je        .L_B7_10

.L_B7_9:

        movsd     xmm1, QWORD PTR [rip+_vmlsAtanHATab+1904]
        shl       al, 7
        addsd     xmm1, xmm0
        movsd     QWORD PTR [56+rsp], xmm1
        movsd     xmm0, QWORD PTR [56+rsp]
        mulsd     xmm0, QWORD PTR [80+rsp]
        movsd     QWORD PTR [40+rsp], xmm0
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm2, QWORD PTR [40+rsp]
        cvtsd2ss  xmm2, xmm2
        movss     DWORD PTR [rdx], xmm2
        jmp       .L_B7_11

.L_B7_10:

        mulss     xmm1, xmm1
        shl       al, 7
        movss     DWORD PTR [32+rsp], xmm1
        movss     xmm0, DWORD PTR [32+rsp]
        cvtss2sd  xmm0, xmm0
        addsd     xmm0, QWORD PTR [80+rsp]
        movsd     QWORD PTR [40+rsp], xmm0
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm1, QWORD PTR [40+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1

.L_B7_11:

        xor       eax, eax
        add       rsp, 88
        ret

.L_B7_12:

        test      DWORD PTR [r8], 8388607
        jne       .L_B7_14

.L_B7_13:

        movsd     xmm0, QWORD PTR [rip+_vmlsAtanHATab+1912]
        mov       al, BYTE PTR [3+r8]
        and       al, -128
        addsd     xmm0, QWORD PTR [rip+_vmlsAtanHATab+1920]
        movsd     QWORD PTR [40+rsp], xmm0
        mov       cl, BYTE PTR [47+rsp]
        and       cl, 127
        or        cl, al
        mov       BYTE PTR [47+rsp], cl
        movsd     xmm1, QWORD PTR [40+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        jmp       .L_B7_11

.L_B7_14:

        movss     xmm0, DWORD PTR [r8]
        addss     xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_11
        .align    16, 0x90

.L_B7_15:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_satan_ha_cout_rare_internal_B1_B14:
        .long   67585
        .long   41480

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_15
        .rva    _unwind___jsvml_satan_ha_cout_rare_internal_B1_B14

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_satan_ha_data_internal_avx512
__jsvml_satan_ha_data_internal_avx512:
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
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1241513984
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
        .long   1089994752
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
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
        .long   1333788672
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
        .long   1048239024
        .long   1055744824
        .long   1059372157
        .long   1061752795
        .long   1063609315
        .long   1065064543
        .long   1065786489
        .long   1066252045
        .long   1066633083
        .long   1066949484
        .long   1067215699
        .long   1067442363
        .long   1067637412
        .long   1067806856
        .long   1067955311
        .long   1068086373
        .long   1068202874
        .long   1068307075
        .long   1068400798
        .long   1068485529
        .long   1068562486
        .long   1068632682
        .long   1068696961
        .long   1068756035
        .long   1068810506
        .long   1068860887
        .long   1068907620
        .long   1068951084
        .long   1068991608
        .long   1069029480
        .long   1069064949
        .long   0
        .long   2975494116
        .long   833369962
        .long   835299256
        .long   2998648110
        .long   2995239174
        .long   3000492182
        .long   860207626
        .long   3008447516
        .long   3005590622
        .long   3000153675
        .long   860754741
        .long   859285590
        .long   844944488
        .long   2993069463
        .long   858157665
        .long   3006142000
        .long   3007693206
        .long   3009342234
        .long   847469400
        .long   3006114683
        .long   852829553
        .long   847325583
        .long   860305056
        .long   846145135
        .long   2997638646
        .long   855837703
        .long   2979047222
        .long   2995344192
        .long   854092798
        .long   3000498637
        .long   859965578
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
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   3188697310
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   1045219554
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .long   3198855850
        .globl __jsvml_satan_ha_data_internal
__jsvml_satan_ha_data_internal:
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
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1052770304
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1060655596
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1071644672
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
        .long   1076625408
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
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   1055744824
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   833369960
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   1061752792
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   875071576
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   1066252048
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   3034196096
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   1070141400
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   883460184
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   1034818345
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   3188674126
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   1045211707
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   3198855788
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
        .long   3758096384
        .long   4294967295
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
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   2164260864
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
        .long   4227858432
_vmlsAtanHATab:
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
