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
        .globl __jsvml_atan2f4_ha_l9

__jsvml_atan2f4_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 488
        xor       edx, edx
        vmovups   XMMWORD PTR [400+rsp], xmm15
        vmovups   XMMWORD PTR [272+rsp], xmm14
        vmovups   XMMWORD PTR [288+rsp], xmm13
        vmovups   XMMWORD PTR [304+rsp], xmm12
        vmovups   XMMWORD PTR [320+rsp], xmm11
        vmovdqa   xmm11, xmm1
        vmovups   XMMWORD PTR [336+rsp], xmm10
        vmovups   XMMWORD PTR [384+rsp], xmm9
        vmovups   XMMWORD PTR [352+rsp], xmm8
        vmovups   XMMWORD PTR [256+rsp], xmm7
        vmovups   XMMWORD PTR [368+rsp], xmm6
        mov       QWORD PTR [464+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        and       r13, -64
        vandps    xmm10, xmm11, xmm9
        vandps    xmm9, xmm0, xmm9
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        vxorps    xmm2, xmm11, xmm10
        vmovups   XMMWORD PTR [32+rsp], xmm0
        vxorps    xmm5, xmm0, xmm9
        vmovups   XMMWORD PTR [432+rsp], xmm2
        vpsubd    xmm2, xmm10, xmm3
        vmulps    xmm1, xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        vpsubd    xmm15, xmm9, xmm3
        vmulps    xmm0, xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        vmulps    xmm3, xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        vmovups   xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        vpcmpgtd  xmm13, xmm2, xmm12
        vpcmpeqd  xmm4, xmm2, xmm12
        vpcmpgtd  xmm14, xmm15, xmm12
        vpcmpeqd  xmm6, xmm15, xmm12
        vmovups   XMMWORD PTR [416+rsp], xmm5
        vpor      xmm8, xmm13, xmm4
        vpor      xmm5, xmm14, xmm6
        vpcmpgtd  xmm2, xmm1, xmm9
        vmulps    xmm13, xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        vpcmpgtd  xmm4, xmm0, xmm9
        vpcmpgtd  xmm15, xmm3, xmm9
        vpor      xmm7, xmm8, xmm5
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        vpandn    xmm5, xmm4, xmm15
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        vmovdqa   xmm14, xmm10
        vmovdqu   XMMWORD PTR [448+rsp], xmm7
        vpandn    xmm7, xmm2, xmm4
        vmovdqa   xmm4, xmm10
        vpcmpgtd  xmm6, xmm9, xmm13
        vfnmadd213ps xmm14, xmm1, xmm9
        vandps    xmm13, xmm9, xmm2
        vfnmadd213ps xmm4, xmm3, xmm9
        vandps    xmm2, xmm10, xmm2
        vpxor     xmm12, xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1600]
        vpandn    xmm8, xmm15, xmm12
        vmovdqa   xmm15, xmm10
        vfmadd213ps xmm1, xmm9, xmm10
        vandps    xmm0, xmm14, xmm7
        vandps    xmm14, xmm4, xmm5
        vorps     xmm0, xmm13, xmm0
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        vfnmadd213ps xmm15, xmm4, xmm9
        vfmadd213ps xmm3, xmm9, xmm10
        vandps    xmm1, xmm1, xmm7
        vfmadd213ps xmm4, xmm9, xmm10
        vorps     xmm2, xmm2, xmm1
        vandps    xmm1, xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        vandps    xmm12, xmm15, xmm8
        vxorps    xmm15, xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+128]
        vorps     xmm13, xmm14, xmm12
        vandps    xmm15, xmm15, xmm6
        vorps     xmm12, xmm0, xmm13
        vandps    xmm3, xmm3, xmm5
        vandps    xmm4, xmm4, xmm8
        vorps     xmm13, xmm12, xmm15
        vorps     xmm15, xmm3, xmm4
        vandps    xmm14, xmm9, xmm6
        vorps     xmm12, xmm2, xmm15
        vandps    xmm2, xmm8, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        vorps     xmm3, xmm12, xmm14
        vandps    xmm4, xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        vorps     xmm12, xmm2, xmm4
        vrcpps    xmm2, xmm3
        vmovups   xmm14, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+64]
        vfnmadd231ps xmm14, xmm3, xmm2
        vandps    xmm0, xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        vorps     xmm15, xmm0, xmm1
        vorps     xmm4, xmm15, xmm12
        vmovdqa   xmm15, xmm3
        vandps    xmm8, xmm8, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        vfmadd213ps xmm14, xmm14, xmm14
        vandps    xmm6, xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        vandps    xmm7, xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        vandps    xmm5, xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        vfmadd213ps xmm2, xmm14, xmm2
        vmulps    xmm0, xmm13, xmm2
        vfnmadd213ps xmm15, xmm0, xmm13
        vfmadd213ps xmm15, xmm2, xmm0
        vfnmadd213ps xmm3, xmm15, xmm13
        vmulps    xmm14, xmm2, xmm3
        vorps     xmm2, xmm8, xmm6
        vmulps    xmm6, xmm15, xmm15
        vorps     xmm3, xmm7, xmm5
        vmulps    xmm5, xmm6, xmm6
        vorps     xmm13, xmm3, xmm2
        vaddps    xmm12, xmm13, xmm14
        vmovups   xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        vfmadd213ps xmm7, xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        vfmadd213ps xmm5, xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        vmovups   xmm2, XMMWORD PTR [432+rsp]
        vcmpltps  xmm0, xmm11, xmm3
        vfmadd213ps xmm7, xmm6, xmm5
        vandps    xmm8, xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        vxorps    xmm14, xmm8, xmm2
        vandps    xmm13, xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        vaddps    xmm12, xmm14, xmm12
        vmulps    xmm0, xmm6, xmm7
        vfmadd213ps xmm0, xmm15, xmm12
        vmovdqu   xmm14, XMMWORD PTR [448+rsp]
        vmovmskps eax, xmm14
        vaddps    xmm15, xmm15, xmm0
        mov       QWORD PTR [472+rsp], r13
        test      eax, eax
        vaddps    xmm4, xmm4, xmm15
        vorps     xmm0, xmm4, xmm2
        vaddps    xmm1, xmm13, xmm0
        vorps     xmm0, xmm1, XMMWORD PTR [416+rsp]
        jne       .L_B1_12

.L_B1_2:

        test      edx, edx
        jne       .L_B1_4

.L_B1_3:

        vmovups   xmm6, XMMWORD PTR [368+rsp]
        vmovups   xmm7, XMMWORD PTR [256+rsp]
        vmovups   xmm8, XMMWORD PTR [352+rsp]
        vmovups   xmm9, XMMWORD PTR [384+rsp]
        vmovups   xmm10, XMMWORD PTR [336+rsp]
        vmovups   xmm11, XMMWORD PTR [320+rsp]
        vmovups   xmm12, XMMWORD PTR [304+rsp]
        vmovups   xmm13, XMMWORD PTR [288+rsp]
        vmovups   xmm14, XMMWORD PTR [272+rsp]
        vmovups   xmm15, XMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [464+rsp]
        add       rsp, 488
        ret

.L_B1_4:

        vmovups   xmm1, XMMWORD PTR [32+rsp]
        vmovups   XMMWORD PTR [r13], xmm1
        vmovups   XMMWORD PTR [64+r13], xmm11
        vmovups   XMMWORD PTR [128+r13], xmm0
        je        .L_B1_3

.L_B1_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B1_8:

        bt        esi, ebx
        jc        .L_B1_11

.L_B1_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B1_8

.L_B1_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B1_3

.L_B1_11:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B1_9

.L_B1_12:

        vcmpltps  xmm15, xmm9, xmm10
        vcmpordps xmm5, xmm11, xmm11
        vpcmpeqd  xmm8, xmm9, xmm3
        vpcmpeqd  xmm7, xmm10, xmm3
        vblendvps xmm9, xmm9, xmm10, xmm15
        vpor      xmm12, xmm7, xmm8
        vmovups   xmm4, XMMWORD PTR [32+rsp]
        vcmpordps xmm6, xmm4, xmm4
        vcmpeqps  xmm4, xmm9, xmm3
        vandnps   xmm10, xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        vandps    xmm13, xmm5, xmm6
        vblendvps xmm5, xmm10, xmm3, xmm4
        vpcmpgtd  xmm3, xmm3, xmm11
        vandps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        vpand     xmm1, xmm12, xmm13
        vorps     xmm2, xmm5, xmm2
        vpandn    xmm14, xmm1, xmm14
        vmovmskps edx, xmm14
        vaddps    xmm2, xmm2, xmm3
        vorps     xmm4, xmm2, XMMWORD PTR [416+rsp]
        vblendvps xmm0, xmm0, xmm4, xmm1
        jmp       .L_B1_2
        .align    16, 0x90

.L_B1_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_l9_B1_B4:
        .long   1602305
        .long   3855475
        .long   1534059
        .long   1079394
        .long   1476697
        .long   1611856
        .long   1419335
        .long   1357882
        .long   1296433
        .long   1234984
        .long   1173535
        .long   1701910
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan2f4_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan2f4_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_7
        .rva    .L_B1_12
        .rva    _unwind___jsvml_atan2f4_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_l9_B12_B12:
        .long   33
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_atan2f4_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_12
        .rva    .L_B1_13
        .rva    _unwind___jsvml_atan2f4_ha_l9_B12_B12

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2f4_ha_e9

__jsvml_atan2f4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L38:

        sub       rsp, 488
        xor       edx, edx
        vmovups   XMMWORD PTR [400+rsp], xmm15
        vmovups   XMMWORD PTR [256+rsp], xmm14
        vmovups   XMMWORD PTR [272+rsp], xmm13
        vmovaps   xmm13, xmm1
        vmovups   XMMWORD PTR [288+rsp], xmm12
        vmovups   XMMWORD PTR [304+rsp], xmm11
        vmovups   XMMWORD PTR [368+rsp], xmm10
        vmovups   XMMWORD PTR [384+rsp], xmm9
        vmovups   XMMWORD PTR [320+rsp], xmm8
        vmovups   XMMWORD PTR [336+rsp], xmm7
        vmovups   XMMWORD PTR [352+rsp], xmm6
        mov       QWORD PTR [464+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        and       r13, -64
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        vandps    xmm12, xmm13, xmm11
        vandps    xmm11, xmm0, xmm11
        vpsubd    xmm9, xmm12, xmm2
        vpsubd    xmm7, xmm11, xmm2
        vxorps    xmm4, xmm13, xmm12
        vmulps    xmm2, xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        vxorps    xmm3, xmm0, xmm11
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        vpcmpgtd  xmm10, xmm9, xmm15
        vpcmpeqd  xmm5, xmm9, xmm15
        vpcmpgtd  xmm14, xmm7, xmm15
        vpcmpeqd  xmm6, xmm7, xmm15
        vpor      xmm8, xmm10, xmm5
        vpor      xmm1, xmm14, xmm6
        vpcmpgtd  xmm5, xmm2, xmm11
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        vmovups   XMMWORD PTR [432+rsp], xmm4
        vpor      xmm4, xmm8, xmm1
        vmovdqu   XMMWORD PTR [448+rsp], xmm4
        vmulps    xmm10, xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        vmulps    xmm4, xmm12, xmm2
        vmulps    xmm9, xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        vmulps    xmm2, xmm11, xmm2
        vmovups   XMMWORD PTR [416+rsp], xmm3
        vpcmpgtd  xmm7, xmm11, xmm10
        vmulps    xmm3, xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        vsubps    xmm10, xmm11, xmm4
        vpcmpgtd  xmm1, xmm3, xmm11
        vpcmpgtd  xmm15, xmm9, xmm11
        vpxor     xmm14, xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1600]
        vpandn    xmm8, xmm1, xmm5
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        vpandn    xmm6, xmm5, xmm15
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        vpandn    xmm9, xmm15, xmm14
        vmulps    xmm5, xmm12, xmm3
        vandps    xmm14, xmm10, xmm8
        vmulps    xmm10, xmm12, xmm4
        vmulps    xmm3, xmm11, xmm3
        vsubps    xmm15, xmm11, xmm5
        vsubps    xmm5, xmm11, xmm10
        vaddps    xmm3, xmm12, xmm3
        vmovups   XMMWORD PTR [32+rsp], xmm0
        vandps    xmm0, xmm11, xmm1
        vorps     xmm0, xmm0, xmm14
        vandps    xmm15, xmm15, xmm6
        vmulps    xmm14, xmm11, xmm4
        vandps    xmm5, xmm5, xmm9
        vorps     xmm5, xmm15, xmm5
        vaddps    xmm4, xmm12, xmm14
        vorps     xmm15, xmm0, xmm5
        vandps    xmm0, xmm12, xmm1
        vxorps    xmm10, xmm12, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+128]
        vandps    xmm14, xmm11, xmm7
        vandps    xmm10, xmm10, xmm7
        vaddps    xmm1, xmm12, xmm2
        vorps     xmm5, xmm15, xmm10
        vandps    xmm1, xmm1, xmm8
        vandps    xmm10, xmm3, xmm6
        vandps    xmm3, xmm4, xmm9
        vorps     xmm2, xmm0, xmm1
        vorps     xmm10, xmm10, xmm3
        vandps    xmm0, xmm8, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        vorps     xmm15, xmm2, xmm10
        vandps    xmm1, xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        vorps     xmm14, xmm15, xmm14
        vandps    xmm3, xmm9, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        vorps     xmm10, xmm0, xmm1
        vandps    xmm2, xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        vorps     xmm15, xmm3, xmm2
        vorps     xmm10, xmm10, xmm15
        vcvtps2pd ymm15, xmm5
        vcvtps2pd ymm3, xmm14
        vandps    xmm8, xmm8, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        vandps    xmm6, xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        vandps    xmm7, xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        vrcpps    xmm5, xmm14
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1664]
        vcvtps2pd ymm14, xmm5
        vmulpd    ymm5, ymm3, ymm14
        vsubpd    ymm1, ymm2, ymm5
        vmulpd    ymm0, ymm14, ymm1
        vmulpd    ymm4, ymm1, ymm1
        vaddpd    ymm3, ymm14, ymm0
        vaddpd    ymm2, ymm2, ymm4
        vmulpd    ymm3, ymm3, ymm2
        vandps    xmm2, xmm9, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        vorps     xmm9, xmm8, xmm6
        vorps     xmm2, xmm2, xmm7
        vorps     xmm7, xmm9, xmm2
        vmulpd    ymm15, ymm15, ymm3
        vcvtpd2ps xmm5, ymm15
        vcvtps2pd ymm14, xmm5
        vsubpd    ymm0, ymm15, ymm14
        vmulps    xmm14, xmm5, xmm5
        vcvtpd2ps xmm3, ymm0
        vmulps    xmm1, xmm14, xmm14
        vaddps    xmm7, xmm3, xmm7
        vmulps    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        vmulps    xmm4, xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        vaddps    xmm6, xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        vaddps    xmm8, xmm4, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        vmulps    xmm2, xmm14, xmm6
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        vaddps    xmm0, xmm8, xmm2
        vcmpltps  xmm15, xmm13, xmm3
        vmulps    xmm0, xmm14, xmm0
        vandps    xmm9, xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        vandps    xmm15, xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        vmovups   xmm2, XMMWORD PTR [432+rsp]
        vxorps    xmm14, xmm15, xmm2
        vmulps    xmm4, xmm5, xmm0
        vaddps    xmm1, xmm14, xmm7
        vmovdqu   xmm14, XMMWORD PTR [448+rsp]
        vaddps    xmm6, xmm1, xmm4
        vmovmskps eax, xmm14
        vaddps    xmm5, xmm5, xmm6
        mov       QWORD PTR [472+rsp], r13
        vaddps    xmm10, xmm10, xmm5
        vorps     xmm0, xmm10, xmm2
        vaddps    xmm1, xmm9, xmm0
        vorps     xmm0, xmm1, XMMWORD PTR [416+rsp]
        test      eax, eax
        jne       .L_B2_12

.L_B2_2:

        test      edx, edx
        jne       .L_B2_4

.L_B2_3:

        vzeroupper
        vmovups   xmm6, XMMWORD PTR [352+rsp]
        vmovups   xmm7, XMMWORD PTR [336+rsp]
        vmovups   xmm8, XMMWORD PTR [320+rsp]
        vmovups   xmm9, XMMWORD PTR [384+rsp]
        vmovups   xmm10, XMMWORD PTR [368+rsp]
        vmovups   xmm11, XMMWORD PTR [304+rsp]
        vmovups   xmm12, XMMWORD PTR [288+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        vmovups   xmm15, XMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [464+rsp]
        add       rsp, 488
        ret

.L_B2_4:

        vmovups   xmm1, XMMWORD PTR [32+rsp]
        vmovups   XMMWORD PTR [r13], xmm1
        vmovups   XMMWORD PTR [64+r13], xmm13
        vmovups   XMMWORD PTR [128+r13], xmm0
        je        .L_B2_3

.L_B2_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B2_8:

        bt        esi, ebx
        jc        .L_B2_11

.L_B2_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_8

.L_B2_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B2_3

.L_B2_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B2_9

.L_B2_12:

        vcmpltps  xmm15, xmm11, xmm12
        vcmpordps xmm5, xmm13, xmm13
        vpcmpeqd  xmm8, xmm11, xmm3
        vpcmpeqd  xmm7, xmm12, xmm3
        vblendvps xmm11, xmm11, xmm12, xmm15
        vpor      xmm9, xmm7, xmm8
        vmovups   xmm4, XMMWORD PTR [32+rsp]
        vcmpordps xmm6, xmm4, xmm4
        vcmpeqps  xmm4, xmm11, xmm3
        vandnps   xmm12, xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        vandps    xmm10, xmm5, xmm6
        vblendvps xmm5, xmm12, xmm3, xmm4
        vpcmpgtd  xmm3, xmm3, xmm13
        vandps    xmm3, xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        vpand     xmm1, xmm9, xmm10
        vorps     xmm2, xmm5, xmm2
        vpandn    xmm14, xmm1, xmm14
        vmovmskps edx, xmm14
        vaddps    xmm2, xmm2, xmm3
        vorps     xmm4, xmm2, XMMWORD PTR [416+rsp]
        vblendvps xmm0, xmm0, xmm4, xmm1
        jmp       .L_B2_2
        .align    16, 0x90

.L_B2_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_e9_B1_B4:
        .long   1602305
        .long   3855475
        .long   1468523
        .long   1407074
        .long   1345625
        .long   1611856
        .long   1550407
        .long   1292350
        .long   1230901
        .long   1169448
        .long   1107999
        .long   1701910
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_atan2f4_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_atan2f4_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_7
        .rva    .L_B2_12
        .rva    _unwind___jsvml_atan2f4_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_e9_B12_B12:
        .long   33
        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_atan2f4_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_12
        .rva    .L_B2_13
        .rva    _unwind___jsvml_atan2f4_ha_e9_B12_B12

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2f16_ha_z0

__jsvml_atan2f16_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L75:

        sub       rsp, 1400
        xor       r8d, r8d
        kmovw     WORD PTR [1392+rsp], k6
        vpternlogd zmm2, zmm2, zmm2, 255
        vmovups   ZMMWORD PTR [1248+rsp], zmm21
        vmovups   ZMMWORD PTR [1312+rsp], zmm20
        mov       QWORD PTR [1376+rsp], r13
        lea       r13, QWORD PTR [1055+rsp]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        and       r13, -64
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        vmovaps   zmm28, zmm1
        vandps    zmm26, zmm28, zmm23
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        vmulps    zmm21, zmm26, zmm5 {rn-sae}
        vmulps    zmm20, zmm26, zmm1 {rn-sae}
        vpsubd    zmm29, zmm26, zmm22
        vxorps    zmm24, zmm28, zmm26
        vpcmpgtd  k2, zmm30, zmm29
        vmovaps   zmm27, zmm0
        vandps    zmm25, zmm27, zmm23
        vmulps    zmm0, zmm26, zmm4 {rn-sae}
        vcmpps    k1, zmm20, zmm25, 17 {sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        vpsubd    zmm31, zmm25, zmm22
        vpternlogd zmm22, zmm22, zmm22, 255
        vxorps    zmm23, zmm27, zmm25
        vpcmpgtd  k3, zmm30, zmm31
        vcmpps    k6, zmm0, zmm25, 17 {sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        vmovaps   zmm20, zmm26
        mov       QWORD PTR [1384+rsp], r13
        vpandnd   zmm22{k2}, zmm29, zmm29
        vmulps    zmm29, zmm26, zmm3 {rn-sae}
        vcmpps    k2, zmm21, zmm25, 17 {sae}
        vmovups   zmm21, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+64]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        vblendmps zmm0{k2}, zmm4, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        vpandnd   zmm2{k3}, zmm31, zmm31
        vcmpps    k3, zmm29, zmm25, 17 {sae}
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        vxorps    zmm20{k3}, zmm26, zmm26
        vblendmps zmm1{k3}, zmm31, zmm21
        vblendmps zmm29{k3}, zmm3, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        vpord     zmm22, zmm22, zmm2
        vblendmps zmm2{k2}, zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        vptestmd  k0, zmm22, zmm22
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        vblendmps zmm5{k6}, zmm2, zmm1
        kortestw  k0, k0
        vfmadd231ps zmm20{k1}, zmm5, zmm25 {rn-sae}
        vrcp14ps  zmm1, zmm20
        vfnmadd231ps zmm21, zmm20, zmm1 {rn-sae}
        vmovaps   zmm2, zmm25
        vxorps    zmm2{k3}, zmm25, zmm25
        vfmadd213ps zmm1, zmm21, zmm1 {rn-sae}
        vfnmadd231ps zmm2{k1}, zmm5, zmm26 {rn-sae}
        vblendmps zmm5{k6}, zmm0, zmm29
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        vmulps    zmm21, zmm1, zmm2 {rn-sae}
        vmovaps   zmm4, zmm20
        vfnmadd213ps zmm4, zmm21, zmm2 {rn-sae}
        vfmadd213ps zmm4, zmm1, zmm21 {rn-sae}
        vmovups   zmm21, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        vfnmadd213ps zmm20, zmm4, zmm2 {rn-sae}
        vmulps    zmm3, zmm20, zmm1 {rn-sae}
        vmovups   zmm20, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        vblendmps zmm1{k3}, zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        vblendmps zmm31{k2}, zmm20, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        vmovups   zmm20, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        vblendmps zmm2{k6}, zmm31, zmm1
        vmulps    zmm31, zmm4, zmm4 {rn-sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        vaddps    zmm3{k1}, zmm3, zmm2 {rn-sae}
        vmulps    zmm29, zmm31, zmm31 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        vfmadd231ps zmm30, zmm0, zmm29 {rn-sae}
        vfmadd213ps zmm29, zmm20, zmm21 {rn-sae}
        vcmpps    k2, zmm28, zmm2, 17 {sae}
        vfmadd213ps zmm30, zmm31, zmm29 {rn-sae}
        vxorps    zmm0, zmm24, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        vmulps    zmm20, zmm30, zmm31 {rn-sae}
        vaddps    zmm3{k2}, zmm3, zmm0 {rn-sae}
        vfmadd213ps zmm20, zmm4, zmm3 {rn-sae}
        vaddps    zmm3, zmm20, zmm4 {rn-sae}
        vaddps    zmm3{k1}, zmm3, zmm5 {rn-sae}
        vorps     zmm4, zmm3, zmm24
        vaddps    zmm4{k2}, zmm4, zmm1 {rn-sae}
        vorps     zmm0, zmm4, zmm23
        jne       .L_B3_17

.L_B3_2:

        test      r8d, r8d
        jne       .L_B3_4

.L_B3_3:

        vmovups   zmm20, ZMMWORD PTR [1312+rsp]
        vmovups   zmm21, ZMMWORD PTR [1248+rsp]
        kmovw     k6, WORD PTR [1392+rsp]
        mov       r13, QWORD PTR [1376+rsp]
        add       rsp, 1400
        ret

.L_B3_4:

        vstmxcsr  DWORD PTR [984+rsp]

.L_B3_5:

        movzx     edx, WORD PTR [984+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B3_7

.L_B3_6:

        mov       DWORD PTR [984+rsp], eax
        vldmxcsr  DWORD PTR [984+rsp]

.L_B3_7:

        vmovups   ZMMWORD PTR [r13], zmm27
        vmovups   ZMMWORD PTR [64+r13], zmm28
        vmovups   ZMMWORD PTR [128+r13], zmm0
        test      r8d, r8d
        jne       .L_B3_12

.L_B3_8:

        cmp       edx, eax
        je        .L_B3_3

.L_B3_9:

        vstmxcsr  DWORD PTR [984+rsp]
        mov       eax, DWORD PTR [984+rsp]

.L_B3_10:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [984+rsp], eax
        vldmxcsr  DWORD PTR [984+rsp]
        jmp       .L_B3_3

.L_B3_12:

        xor       ecx, ecx
        kmovw     WORD PTR [944+rsp], k4
        kmovw     WORD PTR [936+rsp], k5
        kmovw     WORD PTR [928+rsp], k7
        vmovups   ZMMWORD PTR [864+rsp], zmm6
        vmovups   ZMMWORD PTR [800+rsp], zmm7
        vmovups   ZMMWORD PTR [736+rsp], zmm8
        vmovups   ZMMWORD PTR [672+rsp], zmm9
        vmovups   ZMMWORD PTR [608+rsp], zmm10
        vmovups   ZMMWORD PTR [544+rsp], zmm11
        vmovups   ZMMWORD PTR [480+rsp], zmm12
        vmovups   ZMMWORD PTR [416+rsp], zmm13
        vmovups   ZMMWORD PTR [352+rsp], zmm14
        vmovups   ZMMWORD PTR [288+rsp], zmm15
        vmovups   ZMMWORD PTR [224+rsp], zmm16
        vmovups   ZMMWORD PTR [160+rsp], zmm17
        vmovups   ZMMWORD PTR [96+rsp], zmm18
        vmovups   ZMMWORD PTR [32+rsp], zmm19
        mov       QWORD PTR [968+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [960+rsp], rsi
        mov       esi, edx
        mov       QWORD PTR [952+rsp], rdi
        mov       edi, r8d
        mov       QWORD PTR [976+rsp], rbp
        mov       ebp, eax

.L_B3_13:

        bt        edi, ebx
        jc        .L_B3_16

.L_B3_14:

        inc       ebx
        cmp       ebx, 16
        jl        .L_B3_13

.L_B3_15:

        kmovw     k4, WORD PTR [944+rsp]
        mov       eax, ebp
        kmovw     k5, WORD PTR [936+rsp]
        kmovw     k7, WORD PTR [928+rsp]
        vmovups   zmm6, ZMMWORD PTR [864+rsp]
        vmovups   zmm7, ZMMWORD PTR [800+rsp]
        vmovups   zmm8, ZMMWORD PTR [736+rsp]
        vmovups   zmm9, ZMMWORD PTR [672+rsp]
        vmovups   zmm10, ZMMWORD PTR [608+rsp]
        vmovups   zmm11, ZMMWORD PTR [544+rsp]
        vmovups   zmm12, ZMMWORD PTR [480+rsp]
        vmovups   zmm13, ZMMWORD PTR [416+rsp]
        vmovups   zmm14, ZMMWORD PTR [352+rsp]
        vmovups   zmm15, ZMMWORD PTR [288+rsp]
        vmovups   zmm16, ZMMWORD PTR [224+rsp]
        vmovups   zmm17, ZMMWORD PTR [160+rsp]
        vmovups   zmm18, ZMMWORD PTR [96+rsp]
        vmovups   zmm19, ZMMWORD PTR [32+rsp]
        vmovups   zmm0, ZMMWORD PTR [128+r13]
        mov       rbx, QWORD PTR [968+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [960+rsp]
        mov       rdi, QWORD PTR [952+rsp]
        mov       rbp, QWORD PTR [976+rsp]
        jmp       .L_B3_8

.L_B3_16:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B3_14

.L_B3_17:

        vcmpps    k1, zmm28, zmm28, 3 {sae}
        vcmpps    k2, zmm27, zmm27, 3 {sae}
        vpcmpd    k6, zmm25, zmm2, 4
        vpcmpd    k3, zmm26, zmm2, 4
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        vpternlogd zmm3, zmm3, zmm3, 255
        vpternlogd zmm4, zmm4, zmm4, 255
        vpternlogd zmm20, zmm20, zmm20, 255
        vpternlogd zmm5, zmm5, zmm5, 255
        vpandnd   zmm3{k1}, zmm28, zmm28
        vcmpps    k1, zmm25, zmm26, 17 {sae}
        vpandnd   zmm4{k2}, zmm27, zmm27
        vandps    zmm1, zmm3, zmm4
        vpandnd   zmm20{k6}, zmm25, zmm25
        vblendmps zmm25{k1}, zmm25, zmm26
        vcmpps    k2, zmm25, zmm2, 4 {sae}
        vpandnd   zmm5{k3}, zmm26, zmm26
        vpternlogd zmm1, zmm5, zmm20, 224
        vpternlogd zmm26, zmm26, zmm26, 255
        vpcmpgtd  k3, zmm2, zmm28
        vpandnd   zmm21, zmm1, zmm22
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        vptestmd  k0, zmm21, zmm21
        vxorps    zmm22{k1}, zmm22, zmm22
        kmovw     r8d, k0
        vpandnd   zmm26{k2}, zmm25, zmm25
        vpandnd   zmm29, zmm26, zmm22
        vpternlogd zmm29, zmm2, zmm26, 248
        vorps     zmm24, zmm29, zmm24
        vaddps    zmm24{k3}, zmm24, zmm30 {rn-sae}
        vpandnd   zmm0, zmm1, zmm0
        vpternlogd zmm1, zmm24, zmm23, 224
        vpord     zmm0, zmm0, zmm1
        jmp       .L_B3_2
        .align    16, 0x90

.L_B3_18:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f16_ha_z0_B1_B10:
        .long   539649
        .long   11326524
        .long   5392436
        .long   5134377
        .long   11469067

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_12
        .rva    _unwind___jsvml_atan2f16_ha_z0_B1_B10

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f16_ha_z0_B12_B16:
        .long   2416161
        .long   8017118
        .long   7828691
        .long   7890121
        .long   7943359
        .long   145591
        .long   403628
        .long   661665
        .long   919702
        .long   1243275
        .long   1501312
        .long   1759349
        .long   2017386
        .long   2275423
        .long   2533460
        .long   2791497
        .long   3049534
        .long   3307571
        .long   3565608
        .rva    .L_B3_1
        .rva    .L_B3_12
        .rva    _unwind___jsvml_atan2f16_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_12
        .rva    .L_B3_17
        .rva    _unwind___jsvml_atan2f16_ha_z0_B12_B16

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f16_ha_z0_B17_B17:
        .long   33
        .rva    .L_B3_1
        .rva    .L_B3_12
        .rva    _unwind___jsvml_atan2f16_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_17
        .rva    .L_B3_18
        .rva    _unwind___jsvml_atan2f16_ha_z0_B17_B17

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2f8_ha_e9

__jsvml_atan2f8_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L126:

        sub       rsp, 680
        xor       edx, edx
        vmovups   YMMWORD PTR [528+rsp], ymm15
        vmovups   YMMWORD PTR [560+rsp], ymm14
        vmovups   YMMWORD PTR [400+rsp], ymm13
        vmovups   YMMWORD PTR [432+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm11
        vmovups   YMMWORD PTR [272+rsp], ymm10
        vmovups   YMMWORD PTR [304+rsp], ymm9
        vmovups   YMMWORD PTR [336+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm7
        vmovups   YMMWORD PTR [464+rsp], ymm6
        mov       QWORD PTR [656+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovaps   ymm4, ymm1
        and       r13, -64
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        vmovups   xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        vmovups   YMMWORD PTR [32+r13], ymm0
        vandps    ymm2, ymm4, ymm1
        vandps    ymm1, ymm0, ymm1
        vxorps    ymm3, ymm4, ymm2
        vmovups   YMMWORD PTR [64+r13], ymm3
        vxorps    ymm3, ymm0, ymm1
        vmovups   YMMWORD PTR [r13], ymm3
        mov       QWORD PTR [664+rsp], r13
        vpsubd    xmm9, xmm2, xmm10
        vextractf128 xmm11, ymm2, 1
        vpcmpgtd  xmm15, xmm9, xmm5
        vpcmpeqd  xmm12, xmm9, xmm5
        vpor      xmm14, xmm15, xmm12
        vpsubd    xmm0, xmm11, xmm10
        vpcmpgtd  xmm9, xmm0, xmm5
        vpcmpeqd  xmm0, xmm0, xmm5
        vpor      xmm12, xmm9, xmm0
        vmovups   XMMWORD PTR [592+rsp], xmm11
        vmovups   XMMWORD PTR [32+rsp], xmm2
        vpsubd    xmm7, xmm1, xmm10
        vextractf128 xmm8, ymm1, 1
        vpcmpgtd  xmm6, xmm7, xmm5
        vpcmpeqd  xmm13, xmm7, xmm5
        vpor      xmm11, xmm6, xmm13
        vpsubd    xmm3, xmm8, xmm10
        vpor      xmm10, xmm14, xmm11
        vpcmpgtd  xmm15, xmm3, xmm5
        vpcmpeqd  xmm5, xmm3, xmm5
        vpor      xmm3, xmm15, xmm5
        vpor      xmm0, xmm12, xmm3
        vmovdqu   XMMWORD PTR [608+rsp], xmm0
        vmulps    ymm0, ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        vmulps    ymm5, ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        vmulps    ymm7, ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        vmulps    ymm3, ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        vmovdqu   XMMWORD PTR [624+rsp], xmm10
        vmovups   XMMWORD PTR [640+rsp], xmm8
        vpcmpgtd  xmm14, xmm0, xmm1
        vextractf128 xmm11, ymm0, 1
        vpcmpgtd  xmm15, xmm11, xmm8
        vpcmpgtd  xmm11, xmm7, xmm1
        vextractf128 xmm10, ymm5, 1
        vpcmpgtd  xmm5, xmm5, xmm1
        vextractf128 xmm12, ymm7, 1
        vpcmpgtd  xmm6, xmm10, xmm8
        vpcmpgtd  xmm10, xmm12, xmm8
        vpcmpgtd  xmm7, xmm1, xmm3
        vextractf128 xmm9, ymm3, 1
        vpandn    xmm3, xmm6, xmm15
        vpandn    xmm15, xmm15, xmm10
        vpcmpgtd  xmm0, xmm8, xmm9
        vpandn    xmm9, xmm14, xmm11
        vpandn    xmm8, xmm5, xmm14
        vmovups   xmm14, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1600]
        vinsertf128 ymm13, ymm5, xmm6, 1
        vpxor     xmm6, xmm7, xmm14
        vpxor     xmm5, xmm0, xmm14
        vpandn    xmm11, xmm11, xmm6
        vmovups   ymm14, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        vpandn    xmm10, xmm10, xmm5
        vmulps    ymm5, ymm2, ymm14
        vandps    ymm6, ymm1, ymm13
        vinsertf128 ymm12, ymm11, xmm10, 1
        vsubps    ymm10, ymm1, ymm5
        vinsertf128 ymm3, ymm8, xmm3, 1
        vinsertf128 ymm11, ymm7, xmm0, 1
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        vandps    ymm7, ymm10, ymm3
        vmovups   ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        vmulps    ymm8, ymm2, ymm0
        vmulps    ymm0, ymm1, ymm0
        vmulps    ymm5, ymm2, ymm10
        vorps     ymm6, ymm6, ymm7
        vinsertf128 ymm15, ymm9, xmm15, 1
        vsubps    ymm9, ymm1, ymm8
        vsubps    ymm8, ymm1, ymm5
        vandps    ymm9, ymm9, ymm15
        vandps    ymm5, ymm8, ymm12
        vorps     ymm5, ymm9, ymm5
        vorps     ymm9, ymm6, ymm5
        vandps    ymm5, ymm2, ymm13
        vmulps    ymm13, ymm1, ymm14
        vaddps    ymm14, ymm2, ymm0
        vmulps    ymm0, ymm1, ymm10
        vxorps    ymm8, ymm2, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+128]
        vandps    ymm8, ymm8, ymm11
        vorps     ymm8, ymm9, ymm8
        vaddps    ymm9, ymm2, ymm13
        vaddps    ymm10, ymm2, ymm0
        vandps    ymm13, ymm9, ymm3
        vandps    ymm9, ymm14, ymm15
        vandps    ymm7, ymm10, ymm12
        vorps     ymm5, ymm5, ymm13
        vorps     ymm6, ymm9, ymm7
        vandps    ymm14, ymm1, ymm11
        vorps     ymm13, ymm5, ymm6
        vorps     ymm5, ymm13, ymm14
        vandps    ymm9, ymm12, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        vandps    ymm7, ymm11, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        vorps     ymm13, ymm9, ymm7
        vandps    ymm0, ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        vandps    ymm10, ymm15, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        vorps     ymm6, ymm0, ymm10
        vorps     ymm10, ymm6, ymm13
        vandps    ymm12, ymm12, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        vandps    ymm11, ymm11, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        vandps    ymm3, ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        vandps    ymm15, ymm15, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        vorps     ymm3, ymm3, ymm15
        vcvtps2pd ymm14, xmm5
        vextractf128 xmm7, ymm5, 1
        vrcpps    ymm5, ymm5
        vcvtps2pd ymm13, xmm7
        vextractf128 xmm0, ymm8, 1
        vcvtps2pd ymm9, xmm8
        vcvtps2pd ymm8, xmm0
        vcvtps2pd ymm0, xmm5
        vextractf128 xmm6, ymm5, 1
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1664]
        vmulpd    ymm14, ymm14, ymm0
        vcvtps2pd ymm6, xmm6
        vsubpd    ymm7, ymm5, ymm14
        vmulpd    ymm13, ymm13, ymm6
        vsubpd    ymm14, ymm5, ymm13
        vmulpd    ymm13, ymm0, ymm7
        vmulpd    ymm7, ymm7, ymm7
        vaddpd    ymm13, ymm0, ymm13
        vaddpd    ymm7, ymm5, ymm7
        vmulpd    ymm0, ymm6, ymm14
        vmulpd    ymm14, ymm14, ymm14
        vaddpd    ymm6, ymm6, ymm0
        vaddpd    ymm5, ymm5, ymm14
        vmulpd    ymm0, ymm13, ymm7
        vmulpd    ymm6, ymm6, ymm5
        vmulpd    ymm0, ymm9, ymm0
        vmulpd    ymm6, ymm8, ymm6
        vcvtpd2ps xmm9, ymm0
        vcvtpd2ps xmm5, ymm6
        vcvtps2pd ymm13, xmm5
        vsubpd    ymm14, ymm6, ymm13
        vcvtps2pd ymm7, xmm9
        vsubpd    ymm0, ymm0, ymm7
        vcvtpd2ps xmm6, ymm0
        vcvtpd2ps xmm0, ymm14
        vinsertf128 ymm8, ymm9, xmm5, 1
        vinsertf128 ymm7, ymm6, xmm0, 1
        vorps     ymm0, ymm12, ymm11
        vmulps    ymm12, ymm8, ymm8
        vorps     ymm5, ymm3, ymm0
        vaddps    ymm9, ymm7, ymm5
        vmulps    ymm7, ymm12, ymm12
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        vmulps    ymm6, ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        vmulps    ymm13, ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        vcmplt_oqps ymm11, ymm4, ymm3
        vaddps    ymm14, ymm6, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        vaddps    ymm0, ymm13, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        vandps    ymm5, ymm11, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        vandps    ymm15, ymm11, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        vmulps    ymm11, ymm12, ymm14
        vaddps    ymm6, ymm0, ymm11
        vmovups   ymm11, YMMWORD PTR [64+r13]
        vmulps    ymm12, ymm12, ymm6
        vmulps    ymm0, ymm8, ymm12
        vxorps    ymm15, ymm15, ymm11
        vaddps    ymm9, ymm15, ymm9
        vaddps    ymm6, ymm9, ymm0
        vaddps    ymm8, ymm8, ymm6
        vmovdqu   xmm6, XMMWORD PTR [624+rsp]
        vpackssdw xmm7, xmm6, XMMWORD PTR [608+rsp]
        vaddps    ymm10, ymm10, ymm8
        vpxor     xmm8, xmm8, xmm8
        vpacksswb xmm9, xmm7, xmm8
        vorps     ymm0, ymm10, ymm11
        vpmovmskb eax, xmm9
        vaddps    ymm5, ymm5, ymm0
        vmovaps   xmm6, xmm1
        vorps     ymm0, ymm5, YMMWORD PTR [r13]
        vmovups   xmm5, XMMWORD PTR [640+rsp]
        test      al, al
        jne       .L_B4_12

.L_B4_2:

        test      dl, dl
        jne       .L_B4_4

.L_B4_3:

        vmovups   ymm6, YMMWORD PTR [464+rsp]
        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [336+rsp]
        vmovups   ymm9, YMMWORD PTR [304+rsp]
        vmovups   ymm10, YMMWORD PTR [272+rsp]
        vmovups   ymm11, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [432+rsp]
        vmovups   ymm13, YMMWORD PTR [400+rsp]
        vmovups   ymm14, YMMWORD PTR [560+rsp]
        vmovups   ymm15, YMMWORD PTR [528+rsp]
        mov       r13, QWORD PTR [656+rsp]
        add       rsp, 680
        ret

.L_B4_4:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm4
        vmovups   YMMWORD PTR [128+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1
        test      edx, edx
        je        .L_B4_3

.L_B4_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B4_8:

        bt        esi, ebx
        jc        .L_B4_11

.L_B4_9:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B4_8

.L_B4_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [128+r13]
        jmp       .L_B4_3

.L_B4_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B4_9

.L_B4_12:

        vmovups   ymm9, YMMWORD PTR [32+r13]
        vcmpordps ymm10, ymm4, ymm4
        vcmpordps ymm11, ymm9, ymm9
        vandps    ymm12, ymm10, ymm11
        vpcmpeqd  xmm14, xmm6, xmm3
        vextractf128 xmm8, ymm3, 1
        vpcmpeqd  xmm13, xmm3, XMMWORD PTR [32+rsp]
        vpor      xmm15, xmm13, xmm14
        vpcmpeqd  xmm9, xmm8, XMMWORD PTR [592+rsp]
        vpcmpeqd  xmm5, xmm5, xmm8
        vpor      xmm10, xmm9, xmm5
        vpxor     xmm14, xmm14, xmm14
        vpand     xmm6, xmm15, xmm12
        vextractf128 xmm7, ymm12, 1
        vpand     xmm5, xmm10, xmm7
        vpandn    xmm7, xmm6, XMMWORD PTR [624+rsp]
        vpandn    xmm11, xmm5, XMMWORD PTR [608+rsp]
        vpackssdw xmm13, xmm7, xmm11
        vcmplt_oqps ymm7, ymm1, ymm2
        vpacksswb xmm15, xmm13, xmm14
        vpmovmskb edx, xmm15
        vblendvps ymm1, ymm1, ymm2, ymm7
        vcmpeqps  ymm1, ymm1, ymm3
        vandnps   ymm2, ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        vblendvps ymm2, ymm2, ymm3, ymm1
        vorps     ymm10, ymm2, YMMWORD PTR [64+r13]
        vpcmpgtd  xmm3, xmm3, xmm4
        vextractf128 xmm7, ymm4, 1
        vpcmpgtd  xmm8, xmm8, xmm7
        vinsertf128 ymm9, ymm3, xmm8, 1
        vandps    ymm11, ymm9, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        vaddps    ymm12, ymm10, ymm11
        vorps     ymm13, ymm12, YMMWORD PTR [r13]
        vinsertf128 ymm5, ymm6, xmm5, 1
        vblendvps ymm0, ymm0, ymm13, ymm5
        jmp       .L_B4_2
        .align    16, 0x90

.L_B4_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_e9_B1_B4:
        .long   1601281
        .long   5428335
        .long   1927271
        .long   1538142
        .long   1411157
        .long   1284172
        .long   1157187
        .long   2078778
        .long   1820721
        .long   1693736
        .long   2353183
        .long   2226198
        .long   5570827

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan2f8_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan2f8_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_7
        .rva    .L_B4_12
        .rva    _unwind___jsvml_atan2f8_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_e9_B12_B12:
        .long   33
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_atan2f8_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_12
        .rva    .L_B4_13
        .rva    _unwind___jsvml_atan2f8_ha_e9_B12_B12

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2f4_ha_ex

__jsvml_atan2f4_ha_ex:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L174:

        sub       rsp, 504
        xor       eax, eax
        movups    XMMWORD PTR [336+rsp], xmm15
        movups    XMMWORD PTR [352+rsp], xmm14
        movups    XMMWORD PTR [368+rsp], xmm13
        movups    XMMWORD PTR [400+rsp], xmm12
        movaps    xmm12, xmm1
        movups    XMMWORD PTR [320+rsp], xmm11
        movaps    xmm11, xmm12
        movups    XMMWORD PTR [384+rsp], xmm10
        movups    XMMWORD PTR [256+rsp], xmm9
        movups    XMMWORD PTR [272+rsp], xmm8
        movups    XMMWORD PTR [288+rsp], xmm7
        movups    XMMWORD PTR [304+rsp], xmm6
        mov       QWORD PTR [480+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm10, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        and       r13, -64
        andps     xmm11, xmm10
        andps     xmm10, xmm0
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        movaps    xmm2, xmm11
        psubd     xmm2, xmm4
        movaps    xmm6, xmm10
        movdqu    xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        movdqa    xmm8, xmm2
        pcmpgtd   xmm8, xmm1
        pcmpeqd   xmm2, xmm1
        movups    xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        psubd     xmm6, xmm4
        por       xmm8, xmm2
        movaps    xmm15, xmm11
        movups    xmm2, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        movdqa    xmm7, xmm6
        mulps     xmm3, xmm11
        pcmpgtd   xmm7, xmm1
        mulps     xmm15, xmm2
        mulps     xmm2, xmm10
        pcmpeqd   xmm6, xmm1
        movaps    xmm9, xmm10
        por       xmm7, xmm6
        pxor      xmm9, xmm0
        por       xmm8, xmm7
        movaps    xmm4, xmm10
        movups    xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        movaps    xmm5, xmm11
        movups    XMMWORD PTR [32+rsp], xmm0
        movaps    xmm0, xmm10
        movups    XMMWORD PTR [432+rsp], xmm9
        movaps    xmm9, xmm11
        movdqu    XMMWORD PTR [464+rsp], xmm8
        movaps    xmm8, xmm10
        mulps     xmm9, xmm1
        subps     xmm0, xmm15
        addps     xmm2, xmm11
        mulps     xmm1, xmm10
        subps     xmm4, xmm9
        addps     xmm1, xmm11
        pcmpgtd   xmm8, xmm3
        movaps    xmm15, xmm11
        movups    xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        movaps    xmm9, xmm10
        mulps     xmm15, xmm3
        pxor      xmm5, xmm12
        mulps     xmm3, xmm10
        subps     xmm9, xmm15
        addps     xmm3, xmm11
        movups    xmm14, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        movups    xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        movups    xmm7, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        mulps     xmm14, xmm11
        mulps     xmm6, xmm11
        mulps     xmm7, xmm11
        movdqu    xmm13, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1600]
        pcmpgtd   xmm14, xmm10
        movups    XMMWORD PTR [448+rsp], xmm5
        pcmpgtd   xmm6, xmm10
        pcmpgtd   xmm7, xmm10
        pxor      xmm13, xmm8
        movaps    xmm5, xmm14
        pandn     xmm5, xmm6
        pandn     xmm6, xmm7
        pandn     xmm7, xmm13
        movaps    xmm13, xmm10
        movups    xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+128]
        andps     xmm13, xmm14
        andps     xmm0, xmm5
        andps     xmm4, xmm6
        andps     xmm9, xmm7
        pxor      xmm15, xmm11
        orps      xmm13, xmm0
        orps      xmm4, xmm9
        andps     xmm14, xmm11
        andps     xmm2, xmm5
        andps     xmm1, xmm6
        andps     xmm3, xmm7
        andps     xmm15, xmm8
        orps      xmm13, xmm4
        movaps    xmm4, xmm10
        orps      xmm14, xmm2
        orps      xmm1, xmm3
        orps      xmm13, xmm15
        andps     xmm4, xmm8
        orps      xmm14, xmm1
        movups    xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        orps      xmm14, xmm4
        movups    xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        andps     xmm0, xmm7
        cvtps2pd  xmm4, xmm13
        movhlps   xmm13, xmm13
        andps     xmm1, xmm8
        cvtps2pd  xmm3, xmm13
        movaps    xmm13, xmm14
        orps      xmm0, xmm1
        cvtps2pd  xmm1, xmm14
        movhlps   xmm13, xmm14
        rcpps     xmm14, xmm14
        movups    xmm9, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        movups    xmm2, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        andps     xmm9, xmm5
        andps     xmm2, xmm6
        orps      xmm9, xmm2
        cvtps2pd  xmm2, xmm13
        cvtps2pd  xmm13, xmm14
        movhlps   xmm14, xmm14
        orps      xmm9, xmm0
        cvtps2pd  xmm0, xmm14
        mulpd     xmm1, xmm13
        mulpd     xmm2, xmm0
        movups    xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1664]
        movaps    xmm14, xmm15
        subpd     xmm14, xmm1
        movaps    xmm1, xmm15
        subpd     xmm1, xmm2
        movaps    xmm2, xmm14
        mulpd     xmm2, xmm13
        mulpd     xmm14, xmm14
        addpd     xmm13, xmm2
        addpd     xmm14, xmm15
        movaps    xmm2, xmm1
        mulpd     xmm2, xmm0
        mulpd     xmm1, xmm1
        addpd     xmm0, xmm2
        addpd     xmm15, xmm1
        mulpd     xmm13, xmm14
        mulpd     xmm0, xmm15
        mulpd     xmm4, xmm13
        mulpd     xmm3, xmm0
        cvtpd2ps  xmm2, xmm4
        cvtpd2ps  xmm0, xmm3
        movlhps   xmm2, xmm0
        movaps    xmm1, xmm2
        movhlps   xmm1, xmm2
        cvtps2pd  xmm13, xmm2
        cvtps2pd  xmm14, xmm1
        subpd     xmm4, xmm13
        subpd     xmm3, xmm14
        cvtpd2ps  xmm4, xmm4
        cvtpd2ps  xmm3, xmm3
        movups    xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        andps     xmm1, xmm7
        movaps    xmm7, xmm2
        mulps     xmm7, xmm2
        movlhps   xmm4, xmm3
        movups    xmm3, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        movups    xmm15, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        andps     xmm3, xmm5
        movups    xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        andps     xmm15, xmm6
        andps     xmm0, xmm8
        orps      xmm3, xmm15
        orps      xmm1, xmm0
        orps      xmm3, xmm1
        movups    xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        addps     xmm4, xmm3
        movaps    xmm3, xmm7
        mulps     xmm3, xmm7
        mulps     xmm5, xmm3
        movups    xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        mulps     xmm6, xmm3
        addps     xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        mulps     xmm5, xmm7
        addps     xmm6, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        addps     xmm6, xmm5
        movups    XMMWORD PTR [416+rsp], xmm12
        cmpltps   xmm12, xmm1
        mulps     xmm7, xmm6
        movups    xmm8, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        movups    xmm3, XMMWORD PTR [448+rsp]
        andps     xmm8, xmm12
        pxor      xmm8, xmm3
        mulps     xmm7, xmm2
        addps     xmm8, xmm4
        movups    xmm0, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        addps     xmm8, xmm7
        andps     xmm0, xmm12
        addps     xmm2, xmm8
        movdqu    xmm5, XMMWORD PTR [464+rsp]
        addps     xmm9, xmm2
        movmskps  edx, xmm5
        orps      xmm9, xmm3
        mov       QWORD PTR [488+rsp], r13
        addps     xmm0, xmm9
        orps      xmm0, XMMWORD PTR [432+rsp]
        test      edx, edx
        jne       .L_B5_12

.L_B5_2:

        test      eax, eax
        jne       .L_B5_4

.L_B5_3:

        movups    xmm6, XMMWORD PTR [304+rsp]
        movups    xmm7, XMMWORD PTR [288+rsp]
        movups    xmm8, XMMWORD PTR [272+rsp]
        movups    xmm9, XMMWORD PTR [256+rsp]
        movups    xmm10, XMMWORD PTR [384+rsp]
        movups    xmm11, XMMWORD PTR [320+rsp]
        movups    xmm12, XMMWORD PTR [400+rsp]
        movups    xmm13, XMMWORD PTR [368+rsp]
        movups    xmm14, XMMWORD PTR [352+rsp]
        movups    xmm15, XMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [480+rsp]
        add       rsp, 504
        ret

.L_B5_4:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    xmm2, XMMWORD PTR [416+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm2
        movups    XMMWORD PTR [128+r13], xmm0
        je        .L_B5_3

.L_B5_7:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B5_8:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B5_11

.L_B5_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_8

.L_B5_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [128+r13]
        jmp       .L_B5_3

.L_B5_11:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B5_9

.L_B5_12:

        movups    xmm8, XMMWORD PTR [416+rsp]
        movaps    xmm9, xmm11
        movups    xmm2, XMMWORD PTR [32+rsp]
        movaps    xmm4, xmm8
        cmpordps  xmm4, xmm8
        cmpordps  xmm2, xmm2
        movaps    xmm3, xmm10
        pcmpeqd   xmm9, xmm1
        pcmpeqd   xmm3, xmm1
        andps     xmm4, xmm2
        por       xmm9, xmm3
        andps     xmm9, xmm4
        movaps    xmm6, xmm9
        pandn     xmm6, xmm5
        movaps    xmm5, xmm10
        cmpltps   xmm5, xmm11
        movmskps  eax, xmm6
        movaps    xmm7, xmm5
        andps     xmm11, xmm5
        andnps    xmm7, xmm10
        orps      xmm7, xmm11
        cmpeqps   xmm7, xmm1
        andnps    xmm5, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        movaps    xmm10, xmm7
        andnps    xmm10, xmm5
        andps     xmm7, xmm1
        orps      xmm10, xmm7
        pcmpgtd   xmm1, xmm8
        andps     xmm1, XMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        orps      xmm10, XMMWORD PTR [448+rsp]
        addps     xmm10, xmm1
        movaps    xmm1, xmm9
        orps      xmm10, XMMWORD PTR [432+rsp]
        andnps    xmm1, xmm0
        andps     xmm10, xmm9
        movaps    xmm0, xmm1
        orps      xmm0, xmm10
        jmp       .L_B5_2
        .align    16, 0x90

.L_B5_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_ex_B1_B4:
        .long   1602817
        .long   3986549
        .long   1271917
        .long   1210469
        .long   1149021
        .long   1087572
        .long   1615947
        .long   1357886
        .long   1689649
        .long   1562664
        .long   1501215
        .long   1439766
        .long   4129035

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan2f4_ha_ex_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_ex_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan2f4_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_7
        .rva    .L_B5_12
        .rva    _unwind___jsvml_atan2f4_ha_ex_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f4_ha_ex_B12_B12:
        .long   33
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_atan2f4_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_12
        .rva    .L_B5_13
        .rva    _unwind___jsvml_atan2f4_ha_ex_B12_B12

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_atan2f8_ha_l9

__jsvml_atan2f8_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L215:

        sub       rsp, 616
        xor       edx, edx
        vmovups   YMMWORD PTR [560+rsp], ymm15
        vmovups   YMMWORD PTR [304+rsp], ymm14
        vmovups   YMMWORD PTR [336+rsp], ymm13
        vmovups   YMMWORD PTR [368+rsp], ymm12
        vmovups   YMMWORD PTR [400+rsp], ymm11
        vmovups   YMMWORD PTR [432+rsp], ymm10
        vmovups   YMMWORD PTR [528+rsp], ymm9
        vmovups   YMMWORD PTR [464+rsp], ymm8
        vmovups   YMMWORD PTR [272+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [592+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   ymm9, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+192]
        and       r13, -64
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1728]
        vmovups   ymm12, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1792]
        vmovups   YMMWORD PTR [32+r13], ymm0
        vmovdqa   ymm11, ymm1
        vandps    ymm10, ymm11, ymm9
        vandps    ymm9, ymm0, ymm9
        vxorps    ymm2, ymm11, ymm10
        vmovups   YMMWORD PTR [64+r13], ymm2
        vmulps    ymm1, ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+384]
        vpsubd    ymm2, ymm10, ymm3
        vpsubd    ymm15, ymm9, ymm3
        vmulps    ymm3, ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+512]
        vxorps    ymm5, ymm0, ymm9
        vpcmpgtd  ymm13, ymm2, ymm12
        vpcmpeqd  ymm4, ymm2, ymm12
        vpcmpgtd  ymm14, ymm15, ymm12
        vpcmpeqd  ymm6, ymm15, ymm12
        vmovups   YMMWORD PTR [r13], ymm5
        vmulps    ymm0, ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+448]
        vpor      ymm8, ymm13, ymm4
        vpor      ymm5, ymm14, ymm6
        vmulps    ymm13, ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+576]
        vpor      ymm7, ymm8, ymm5
        vpcmpgtd  ymm2, ymm1, ymm9
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+640]
        vmovdqu   YMMWORD PTR [96+r13], ymm7
        vpcmpgtd  ymm15, ymm3, ymm9
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+704]
        vpcmpgtd  ymm4, ymm0, ymm9
        vpandn    ymm7, ymm2, ymm4
        vpandn    ymm5, ymm4, ymm15
        vmovdqa   ymm14, ymm10
        vmovdqa   ymm4, ymm10
        vfnmadd213ps ymm14, ymm1, ymm9
        vfnmadd213ps ymm4, ymm3, ymm9
        vfmadd213ps ymm1, ymm9, ymm10
        vfmadd213ps ymm3, ymm9, ymm10
        vpcmpgtd  ymm6, ymm9, ymm13
        vpxor     ymm12, ymm6, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1600]
        vandps    ymm0, ymm14, ymm7
        vandps    ymm14, ymm4, ymm5
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+768]
        vpandn    ymm8, ymm15, ymm12
        vmovdqa   ymm15, ymm10
        vfnmadd213ps ymm15, ymm4, ymm9
        vfmadd213ps ymm4, ymm9, ymm10
        vandps    ymm13, ymm9, ymm2
        vandps    ymm12, ymm15, ymm8
        vxorps    ymm15, ymm10, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+128]
        vorps     ymm0, ymm13, ymm0
        vorps     ymm13, ymm14, ymm12
        vandps    ymm15, ymm15, ymm6
        vorps     ymm12, ymm0, ymm13
        vandps    ymm2, ymm10, ymm2
        vandps    ymm1, ymm1, ymm7
        vandps    ymm3, ymm3, ymm5
        vandps    ymm4, ymm4, ymm8
        vorps     ymm13, ymm12, ymm15
        vorps     ymm2, ymm2, ymm1
        vorps     ymm15, ymm3, ymm4
        vandps    ymm14, ymm9, ymm6
        vorps     ymm12, ymm2, ymm15
        vorps     ymm3, ymm12, ymm14
        vandps    ymm2, ymm8, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1088]
        vandps    ymm4, ymm6, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1216]
        vorps     ymm12, ymm2, ymm4
        vrcpps    ymm2, ymm3
        vmovups   ymm14, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+64]
        vfnmadd231ps ymm14, ymm3, ymm2
        vfmadd213ps ymm14, ymm14, ymm14
        vfmadd213ps ymm2, ymm14, ymm2
        vandps    ymm0, ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+832]
        vandps    ymm1, ymm5, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+960]
        vorps     ymm15, ymm0, ymm1
        vmulps    ymm0, ymm13, ymm2
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1408]
        vorps     ymm4, ymm15, ymm12
        vmovdqa   ymm15, ymm3
        vfnmadd213ps ymm15, ymm0, ymm13
        vfmadd213ps ymm15, ymm2, ymm0
        vfnmadd213ps ymm3, ymm15, ymm13
        vandps    ymm8, ymm8, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1152]
        vandps    ymm6, ymm6, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1280]
        vmulps    ymm14, ymm2, ymm3
        vorps     ymm2, ymm8, ymm6
        vmulps    ymm6, ymm15, ymm15
        vandps    ymm7, ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+896]
        vandps    ymm5, ymm5, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1024]
        vorps     ymm3, ymm7, ymm5
        vmulps    ymm5, ymm6, ymm6
        vmovups   ymm7, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1344]
        vfmadd213ps ymm7, ymm5, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1472]
        vfmadd213ps ymm5, ymm1, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1536]
        vorps     ymm13, ymm3, ymm2
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal]
        vfmadd213ps ymm7, ymm6, ymm5
        vmovups   ymm2, YMMWORD PTR [64+r13]
        vcmplt_oqps ymm0, ymm11, ymm3
        vaddps    ymm12, ymm13, ymm14
        vandps    ymm8, ymm0, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+320]
        vandps    ymm13, ymm0, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+256]
        vmulps    ymm0, ymm6, ymm7
        vxorps    ymm14, ymm8, ymm2
        vaddps    ymm12, ymm14, ymm12
        vmovdqu   ymm14, YMMWORD PTR [96+r13]
        vfmadd213ps ymm0, ymm15, ymm12
        vaddps    ymm15, ymm15, ymm0
        vaddps    ymm4, ymm4, ymm15
        vorps     ymm0, ymm4, ymm2
        vaddps    ymm1, ymm13, ymm0
        vmovmskps eax, ymm14
        vorps     ymm0, ymm1, YMMWORD PTR [r13]
        test      eax, eax
        mov       QWORD PTR [600+rsp], r13
        jne       .L_B6_12

.L_B6_2:

        test      edx, edx
        jne       .L_B6_4

.L_B6_3:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [272+rsp]
        vmovups   ymm8, YMMWORD PTR [464+rsp]
        vmovups   ymm9, YMMWORD PTR [528+rsp]
        vmovups   ymm10, YMMWORD PTR [432+rsp]
        vmovups   ymm11, YMMWORD PTR [400+rsp]
        vmovups   ymm12, YMMWORD PTR [368+rsp]
        vmovups   ymm13, YMMWORD PTR [336+rsp]
        vmovups   ymm14, YMMWORD PTR [304+rsp]
        vmovups   ymm15, YMMWORD PTR [560+rsp]
        mov       r13, QWORD PTR [592+rsp]
        add       rsp, 616
        ret

.L_B6_4:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm11
        vmovups   YMMWORD PTR [128+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1
        je        .L_B6_3

.L_B6_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B6_8:

        bt        esi, ebx
        jc        .L_B6_11

.L_B6_9:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B6_8

.L_B6_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [128+r13]
        jmp       .L_B6_3

.L_B6_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]
        lea       r8, QWORD PTR [128+r13+rbx*4]

        call      __jsvml_satan2_ha_cout_rare_internal
        jmp       .L_B6_9

.L_B6_12:

        vmovups   ymm4, YMMWORD PTR [32+r13]
        vcmplt_oqps ymm15, ymm9, ymm10
        vcmpordps ymm5, ymm11, ymm11
        vcmpordps ymm6, ymm4, ymm4
        vpcmpeqd  ymm7, ymm10, ymm3
        vpcmpeqd  ymm8, ymm9, ymm3
        vblendvps ymm9, ymm9, ymm10, ymm15
        vpor      ymm12, ymm7, ymm8
        vcmpeqps  ymm4, ymm9, ymm3
        vandps    ymm13, ymm5, ymm6
        vandnps   ymm10, ymm15, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1856]
        vpand     ymm1, ymm12, ymm13
        vblendvps ymm5, ymm10, ymm3, ymm4
        vpandn    ymm14, ymm1, ymm14
        vpcmpgtd  ymm3, ymm3, ymm11
        vandps    ymm3, ymm3, YMMWORD PTR [rip+__jsvml_satan2_ha_data_internal+1920]
        vorps     ymm2, ymm5, ymm2
        vaddps    ymm2, ymm2, ymm3
        vorps     ymm4, ymm2, YMMWORD PTR [r13]
        vmovmskps edx, ymm14
        vblendvps ymm0, ymm0, ymm4, ymm1
        jmp       .L_B6_2
        .align    16, 0x90

.L_B6_13:

        .section .drectve
        .ascii " -export \"__jsvml_atan2f8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_l9_B1_B4:
        .long   1601281
        .long   4904047
        .long   2058343
        .long   1144926
        .long   1935445
        .long   2201676
        .long   1812547
        .long   1685562
        .long   1558577
        .long   1431592
        .long   1304607
        .long   2357270
        .long   5046539

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan2f8_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan2f8_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_7
        .rva    .L_B6_12
        .rva    _unwind___jsvml_atan2f8_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_atan2f8_ha_l9_B12_B12:
        .long   33
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_atan2f8_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_12
        .rva    .L_B6_13
        .rva    _unwind___jsvml_atan2f8_ha_l9_B12_B12

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_satan2_ha_cout_rare_internal

__jsvml_satan2_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L252:

        sub       rsp, 168
        pxor      xmm1, xmm1
        movss     xmm0, DWORD PTR [rip+ione]
        movss     xmm3, DWORD PTR [rcx]
        movss     xmm2, DWORD PTR [rdx]
        mulss     xmm3, xmm0
        mulss     xmm2, xmm0
        pxor      xmm0, xmm0
        cvtss2sd  xmm0, xmm3
        cvtss2sd  xmm1, xmm2
        movss     DWORD PTR [72+rsp], xmm3
        movss     DWORD PTR [76+rsp], xmm2
        movsd     QWORD PTR [56+rsp], xmm0
        movsd     QWORD PTR [64+rsp], xmm1
        movzx     ecx, WORD PTR [74+rsp]
        and       ecx, 32640
        mov       al, BYTE PTR [79+rsp]
        movzx     r10d, WORD PTR [62+rsp]
        and       al, -128
        movzx     r9d, WORD PTR [70+rsp]
        and       r10d, 32752
        and       r9d, 32752
        shr       ecx, 7
        mov       dl, BYTE PTR [75+rsp]
        shr       dl, 7
        shr       al, 7
        movups    XMMWORD PTR [128+rsp], xmm15
        movups    XMMWORD PTR [144+rsp], xmm14
        movups    XMMWORD PTR [112+rsp], xmm6
        shr       r10d, 4
        shr       r9d, 4
        cmp       ecx, 255
        je        .L_B7_35

.L_B7_2:

        movzx     r11d, WORD PTR [78+rsp]
        and       r11d, 32640
        cmp       r11d, 32640
        je        .L_B7_35

.L_B7_3:

        test      r10d, r10d
        jne       .L_B7_5

.L_B7_4:

        test      DWORD PTR [72+rsp], 8388607
        je        .L_B7_30

.L_B7_5:

        test      r9d, r9d
        jne       .L_B7_7

.L_B7_6:

        test      DWORD PTR [76+rsp], 8388607
        je        .L_B7_27

.L_B7_7:

        neg       r9d
        movsd     QWORD PTR [56+rsp], xmm0
        add       r9d, r10d
        movsd     QWORD PTR [64+rsp], xmm1
        mov       r11b, BYTE PTR [63+rsp]
        mov       cl, BYTE PTR [71+rsp]
        and       r11b, 127
        and       cl, 127
        cmp       r9d, -54
        jle       .L_B7_22

.L_B7_8:

        cmp       r9d, 54
        jge       .L_B7_19

.L_B7_9:

        mov       BYTE PTR [71+rsp], cl
        mov       BYTE PTR [63+rsp], r11b
        test      al, al
        jne       .L_B7_11

.L_B7_10:

        movsd     xmm14, QWORD PTR [rip+_vmldAtanHATab+1976]
        movaps    xmm15, xmm14
        jmp       .L_B7_12

.L_B7_11:

        movsd     xmm14, QWORD PTR [rip+_vmldAtanHATab+1936]
        movsd     xmm15, QWORD PTR [rip+_vmldAtanHATab+1944]

.L_B7_12:

        movsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm6, QWORD PTR [64+rsp]
        movaps    xmm2, xmm1
        divsd     xmm2, xmm6
        movzx     ecx, WORD PTR [62+rsp]
        movsd     QWORD PTR [88+rsp], xmm2
        test      r10d, r10d
        jle       .L_B7_34

.L_B7_13:

        cmp       r10d, 2046
        jge       .L_B7_15

.L_B7_14:

        and       ecx, -32753
        add       r10d, -1023
        movsd     QWORD PTR [56+rsp], xmm1
        add       ecx, 16368
        mov       WORD PTR [62+rsp], cx
        jmp       .L_B7_16

.L_B7_15:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1992]
        mov       r10d, 1022
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [56+rsp], xmm1

.L_B7_16:

        neg       r10d
        mov       rcx, QWORD PTR [rip+_vmldAtanHATab+1888]
        add       r10d, 1023
        mov       QWORD PTR [64+rsp], rcx
        and       r10d, 2047
        shr       rcx, 48
        shl       r10d, 4
        and       ecx, -32753
        or        ecx, r10d
        mov       WORD PTR [70+rsp], cx
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm6, xmm0
        comisd    xmm2, QWORD PTR [rip+_vmldAtanHATab+1880]
        jb        .L_B7_18

.L_B7_17:

        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        mov       ecx, 113
        mulsd     xmm1, xmm6
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm4, QWORD PTR [32+rsp]
        movzx     r10d, WORD PTR [94+rsp]
        subsd     xmm4, xmm6
        movsd     QWORD PTR [40+rsp], xmm4
        and       r10d, 32752
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        shr       r10d, 4
        subsd     xmm3, xmm5
        movsd     QWORD PTR [32+rsp], xmm3
        mov       r9d, DWORD PTR [92+rsp]
        movsd     xmm0, QWORD PTR [32+rsp]
        and       r9d, 1048575
        movsd     QWORD PTR [80+rsp], xmm2
        movaps    xmm2, xmm6
        shl       r10d, 20
        subsd     xmm2, xmm0
        mov       r11d, DWORD PTR [84+rsp]
        or        r10d, r9d
        mov       r9d, r11d
        and       r11d, -524288
        add       r11d, 262144
        and       r9d, -1048576
        and       r11d, 1048575
        add       r10d, -1069547520
        or        r9d, r11d
        mov       DWORD PTR [80+rsp], 0
        mov       DWORD PTR [84+rsp], r9d
        lea       r9, QWORD PTR [rip+__ImageBase]
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [80+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        mulsd     xmm0, xmm2
        mulsd     xmm3, xmm2
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1968]
        mulsd     xmm0, xmm1
        mulsd     xmm3, xmm1
        movaps    xmm4, xmm0
        sar       r10d, 19
        addsd     xmm4, xmm3
        movsd     QWORD PTR [32+rsp], xmm4
        cmp       r10d, 113
        movsd     xmm5, QWORD PTR [32+rsp]
        cmovl     ecx, r10d
        subsd     xmm0, xmm5
        add       ecx, ecx
        addsd     xmm0, xmm3
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [32+rsp]
        movaps    xmm4, xmm0
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm4, xmm5
        movsd     QWORD PTR [32+rsp], xmm4
        movaps    xmm4, xmm0
        movsd     xmm3, QWORD PTR [32+rsp]
        movsxd    rcx, ecx
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [48+rsp], xmm4
        movaps    xmm4, xmm0
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm5, xmm3
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm4, xmm5
        movsd     QWORD PTR [48+rsp], xmm4
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm3, xmm5
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm3, xmm4
        movsd     xmm5, QWORD PTR [48+rsp]
        movsd     QWORD PTR [32+rsp], xmm3
        addsd     xmm1, xmm5
        movsd     xmm5, QWORD PTR [32+rsp]
        subsd     xmm5, xmm4
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm5, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm5, xmm3
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        addsd     xmm5, xmm1
        movaps    xmm1, xmm0
        mulsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm3, QWORD PTR [56+rsp]
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm3, xmm1
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm0, xmm1
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        mulsd     xmm3, xmm2
        mulsd     xmm1, xmm2
        movaps    xmm2, xmm3
        addsd     xmm2, xmm1
        movsd     QWORD PTR [32+rsp], xmm2
        movaps    xmm2, xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm3, xmm0
        addsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm2, xmm1
        movsd     QWORD PTR [32+rsp], xmm2
        movaps    xmm2, xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm2, QWORD PTR [rip+_vmldAtanHATab+2000]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm1, QWORD PTR [48+rsp]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        addsd     xmm1, xmm6
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm6, QWORD PTR [32+rsp]
        mulsd     xmm2, xmm6
        movsd     xmm0, QWORD PTR [48+rsp]
        movsd     QWORD PTR [32+rsp], xmm2
        addsd     xmm3, xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm1, xmm0
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm6, xmm2
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+1888]
        divsd     xmm6, xmm0
        movsd     xmm2, QWORD PTR [40+rsp]
        addsd     xmm2, xmm3
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm3, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm3, xmm6
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm6, QWORD PTR [48+rsp]
        mulsd     xmm0, xmm6
        subsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [48+rsp]
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [40+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm3, QWORD PTR [40+rsp]
        mov       r10, QWORD PTR [48+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r10
        mov       r10, r9
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+1888]
        mulsd     xmm3, xmm6
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm4
        mulsd     xmm3, xmm0
        movaps    xmm1, xmm3
        mulsd     xmm1, xmm5
        mulsd     xmm4, xmm3
        mulsd     xmm5, xmm2
        addsd     xmm1, xmm4
        movaps    xmm4, xmm6
        addsd     xmm1, xmm5
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1872]
        addsd     xmm4, xmm1
        movsd     QWORD PTR [32+rsp], xmm4
        movsd     xmm5, QWORD PTR [32+rsp]
        movsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm6, xmm5
        addsd     xmm6, xmm1
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm2
        mulsd     xmm4, xmm2
        mulsd     xmm0, xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm4
        movsd     xmm3, QWORD PTR [32+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1864]
        subsd     xmm3, xmm2
        mulsd     xmm0, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1856]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm0, xmm6
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm0, xmm6
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm2, xmm4
        mulsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm6
        addsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm4, xmm0
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm0, xmm2
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movaps    xmm5, xmm0
        movaps    xmm4, xmm6
        mulsd     xmm4, xmm1
        mulsd     xmm0, xmm1
        mulsd     xmm6, xmm3
        mulsd     xmm5, xmm3
        addsd     xmm4, xmm0
        movaps    xmm2, xmm5
        addsd     xmm4, xmm6
        addsd     xmm2, xmm3
        movsd     QWORD PTR [32+rsp], xmm4
        movaps    xmm6, xmm5
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm6, QWORD PTR [40+rsp]
        addsd     xmm3, xmm6
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm3, QWORD PTR [48+rsp]
        subsd     xmm5, xmm3
        movsd     QWORD PTR [48+rsp], xmm5
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        addsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        mov       r11, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r11
        addsd     xmm1, xmm0
        movsd     xmm6, QWORD PTR [64+rsp]
        addsd     xmm4, xmm1
        movaps    xmm1, xmm6
        movaps    xmm2, xmm6
        movsd     QWORD PTR [72+rsp], xmm4
        addsd     xmm1, QWORD PTR ["_vmldAtanHATab"@imgrel+r9+rcx*8]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm3, xmm1
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [40+rsp]
        addsd     xmm4, QWORD PTR ["_vmldAtanHATab"@imgrel+r10+rcx*8]
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        addsd     xmm0, xmm6
        movsd     QWORD PTR [48+rsp], xmm0
        mov       r10, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r10

.L_B7_51:

        movsd     xmm1, QWORD PTR [72+rsp]
        movaps    xmm2, xmm14
        lea       r9, QWORD PTR [rip+__ImageBase]
        addsd     xmm1, xmm0
        shl       dl, 7
        addsd     xmm1, QWORD PTR ["_vmldAtanHATab"@imgrel+8+r9+rcx*8]
        mov       cl, al
        shl       cl, 7
        movsd     QWORD PTR [72+rsp], xmm1
        shr       r10, 56
        mov       r11b, BYTE PTR [79+rsp]
        and       r10b, 127
        or        r10b, cl
        mov       cl, r11b
        mov       BYTE PTR [71+rsp], r10b
        and       cl, 127
        movsd     xmm0, QWORD PTR [64+rsp]
        movaps    xmm4, xmm0
        addsd     xmm2, xmm0
        shr       r11b, 7
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        xor       al, r11b
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        shl       al, 7
        addsd     xmm6, xmm5
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        addsd     xmm14, xmm1
        movsd     QWORD PTR [40+rsp], xmm14
        or        cl, al
        movsd     xmm14, QWORD PTR [48+rsp]
        mov       BYTE PTR [79+rsp], cl
        subsd     xmm0, xmm14
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        mov       rax, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rax
        movsd     xmm3, QWORD PTR [64+rsp]
        addsd     xmm2, QWORD PTR [72+rsp]
        addsd     xmm15, xmm2
        movsd     QWORD PTR [72+rsp], xmm15
        addsd     xmm3, xmm15
        movsd     QWORD PTR [80+rsp], xmm3
        mov       cl, BYTE PTR [87+rsp]
        and       cl, 127
        or        cl, dl
        mov       BYTE PTR [87+rsp], cl
        movsd     xmm15, QWORD PTR [80+rsp]
        cvtsd2ss  xmm15, xmm15
        movss     DWORD PTR [r8], xmm15
        jmp       .L_B7_33

.L_B7_18:

        movsd     xmm4, QWORD PTR [56+rsp]
        mov       r10b, al
        movaps    xmm3, xmm4
        mulsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+2000]
        shl       r10b, 7
        shl       dl, 7
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm5, QWORD PTR [32+rsp]
        subsd     xmm5, QWORD PTR [56+rsp]
        movsd     QWORD PTR [40+rsp], xmm5
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm0, xmm6
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        subsd     xmm4, xmm2
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm1, xmm6
        movsd     QWORD PTR [40+rsp], xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm0, xmm3
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm1, QWORD PTR [32+rsp]
        divsd     xmm0, xmm1
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        mulsd     xmm6, xmm0
        movsd     xmm2, QWORD PTR [40+rsp]
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm3, xmm0
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm6, QWORD PTR [48+rsp]
        movsd     xmm3, QWORD PTR [rip+_vmldAtanHATab+1888]
        subsd     xmm0, xmm6
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm6, QWORD PTR [48+rsp]
        mulsd     xmm1, xmm6
        subsd     xmm3, xmm1
        movsd     xmm1, QWORD PTR [48+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [40+rsp]
        subsd     xmm3, xmm2
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm0, QWORD PTR [40+rsp]
        mov       rcx, QWORD PTR [48+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rcx
        movsd     xmm2, QWORD PTR [64+rsp]
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        mulsd     xmm0, xmm6
        movaps    xmm6, xmm2
        mulsd     xmm6, xmm4
        mulsd     xmm2, xmm5
        mulsd     xmm0, xmm1
        movaps    xmm3, xmm0
        mulsd     xmm3, xmm5
        movaps    xmm5, xmm6
        mulsd     xmm4, xmm0
        movsd     xmm1, QWORD PTR [rip+_vmldAtanHATab+2000]
        addsd     xmm3, xmm4
        addsd     xmm3, xmm2
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm0, QWORD PTR [32+rsp]
        addsd     xmm5, xmm0
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm6, xmm4
        movsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1872]
        addsd     xmm6, xmm0
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm6, QWORD PTR [88+rsp]
        mulsd     xmm6, xmm6
        mulsd     xmm4, xmm6
        movsd     xmm3, QWORD PTR [32+rsp]
        mulsd     xmm1, xmm3
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1864]
        mulsd     xmm4, xmm6
        movsd     xmm5, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm2, QWORD PTR [32+rsp]
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1856]
        subsd     xmm2, xmm3
        mulsd     xmm4, xmm6
        movsd     QWORD PTR [40+rsp], xmm2
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1848]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1840]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1832]
        mulsd     xmm4, xmm6
        addsd     xmm4, QWORD PTR [rip+_vmldAtanHATab+1824]
        mulsd     xmm4, xmm6
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        subsd     xmm6, xmm0
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [rip+_vmldAtanHATab+2000]
        subsd     xmm3, xmm0
        mulsd     xmm6, xmm4
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        movsd     QWORD PTR [32+rsp], xmm6
        addsd     xmm5, xmm3
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm0, xmm4
        movsd     QWORD PTR [40+rsp], xmm0
        movsd     xmm6, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [40+rsp]
        subsd     xmm6, xmm1
        movsd     QWORD PTR [32+rsp], xmm6
        movsd     xmm3, QWORD PTR [32+rsp]
        subsd     xmm4, xmm3
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm6, QWORD PTR [40+rsp]
        movaps    xmm1, xmm4
        movaps    xmm0, xmm6
        mulsd     xmm0, xmm5
        mulsd     xmm4, xmm5
        mulsd     xmm6, xmm2
        mulsd     xmm1, xmm2
        addsd     xmm0, xmm4
        movaps    xmm3, xmm1
        addsd     xmm0, xmm6
        addsd     xmm3, xmm2
        movsd     QWORD PTR [32+rsp], xmm0
        movaps    xmm6, xmm1
        movsd     xmm0, QWORD PTR [32+rsp]
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm4, QWORD PTR [32+rsp]
        subsd     xmm6, xmm4
        movsd     QWORD PTR [40+rsp], xmm6
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [40+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [48+rsp], xmm4
        movsd     xmm6, QWORD PTR [40+rsp]
        addsd     xmm2, xmm6
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm2, QWORD PTR [48+rsp]
        subsd     xmm1, xmm2
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm6, QWORD PTR [40+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        addsd     xmm6, xmm1
        movsd     QWORD PTR [48+rsp], xmm6
        mov       r9, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], r9
        addsd     xmm5, xmm1
        shr       r9, 56
        addsd     xmm0, xmm5
        and       r9b, 127
        movaps    xmm5, xmm14
        or        r9b, r10b
        mov       BYTE PTR [71+rsp], r9b
        movsd     xmm6, QWORD PTR [64+rsp]
        movsd     QWORD PTR [72+rsp], xmm0
        movaps    xmm1, xmm6
        mov       r11b, BYTE PTR [79+rsp]
        mov       cl, r11b
        shr       r11b, 7
        addsd     xmm5, xmm6
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm0, QWORD PTR [32+rsp]
        subsd     xmm1, xmm0
        movsd     QWORD PTR [40+rsp], xmm1
        xor       al, r11b
        movsd     xmm3, QWORD PTR [32+rsp]
        and       cl, 127
        movsd     xmm2, QWORD PTR [40+rsp]
        shl       al, 7
        addsd     xmm3, xmm2
        movsd     QWORD PTR [48+rsp], xmm3
        movsd     xmm4, QWORD PTR [40+rsp]
        addsd     xmm14, xmm4
        movsd     QWORD PTR [40+rsp], xmm14
        or        cl, al
        movsd     xmm14, QWORD PTR [48+rsp]
        mov       BYTE PTR [79+rsp], cl
        subsd     xmm6, xmm14
        movsd     QWORD PTR [48+rsp], xmm6
        movsd     xmm1, QWORD PTR [40+rsp]
        movsd     xmm0, QWORD PTR [48+rsp]
        addsd     xmm1, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        mov       rax, QWORD PTR [32+rsp]
        movsd     xmm2, QWORD PTR [48+rsp]
        mov       QWORD PTR [64+rsp], rax
        movsd     xmm3, QWORD PTR [64+rsp]
        addsd     xmm2, QWORD PTR [72+rsp]
        addsd     xmm15, xmm2
        movsd     QWORD PTR [72+rsp], xmm15
        addsd     xmm3, xmm15
        movsd     QWORD PTR [80+rsp], xmm3
        mov       cl, BYTE PTR [87+rsp]
        and       cl, 127
        or        cl, dl
        mov       BYTE PTR [87+rsp], cl
        movsd     xmm15, QWORD PTR [80+rsp]
        cvtsd2ss  xmm15, xmm15
        movss     DWORD PTR [r8], xmm15
        jmp       .L_B7_33

.L_B7_19:

        cmp       r9d, 74
        jge       .L_B7_21

.L_B7_20:

        mov       BYTE PTR [63+rsp], r11b
        divsd     xmm1, QWORD PTR [56+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1928]
        shl       dl, 7
        subsd     xmm0, xmm1
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm1, QWORD PTR [80+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r8], xmm1
        jmp       .L_B7_33

.L_B7_21:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1920]
        shl       dl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1928]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm1, QWORD PTR [80+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r8], xmm1
        jmp       .L_B7_33

.L_B7_22:

        test      al, al
        jne       .L_B7_32

.L_B7_23:

        mov       BYTE PTR [63+rsp], r11b
        pxor      xmm0, xmm0
        mov       BYTE PTR [71+rsp], cl
        movsd     xmm2, QWORD PTR [56+rsp]
        divsd     xmm2, QWORD PTR [64+rsp]
        cvtsd2ss  xmm0, xmm2
        movss     DWORD PTR [96+rsp], xmm0
        movzx     eax, WORD PTR [98+rsp]
        movsd     QWORD PTR [80+rsp], xmm2
        test      eax, 32640
        je        .L_B7_25

.L_B7_24:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1888]
        shl       dl, 7
        addsd     xmm0, xmm2
        movsd     QWORD PTR [32+rsp], xmm0
        movsd     xmm1, QWORD PTR [32+rsp]
        mulsd     xmm2, xmm1
        movsd     QWORD PTR [80+rsp], xmm2
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm2, QWORD PTR [80+rsp]
        cvtsd2ss  xmm2, xmm2
        movss     DWORD PTR [r8], xmm2
        jmp       .L_B7_33

.L_B7_25:

        movsd     xmm0, QWORD PTR [80+rsp]
        cvtsd2ss  xmm0, xmm0
        shl       dl, 7
        movss     DWORD PTR [96+rsp], xmm0
        movss     xmm2, DWORD PTR [96+rsp]
        movss     xmm1, DWORD PTR [96+rsp]
        mulss     xmm2, xmm1
        movss     DWORD PTR [96+rsp], xmm2
        movss     xmm3, DWORD PTR [96+rsp]
        cvtss2sd  xmm3, xmm3
        addsd     xmm3, QWORD PTR [80+rsp]
        movsd     QWORD PTR [80+rsp], xmm3
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm4, QWORD PTR [80+rsp]
        cvtsd2ss  xmm4, xmm4
        movss     DWORD PTR [r8], xmm4
        jmp       .L_B7_33

.L_B7_27:

        test      r10d, r10d
        jne       .L_B7_21

.L_B7_28:

        test      DWORD PTR [72+rsp], 8388607
        jne       .L_B7_21

.L_B7_30:

        test      al, al
        jne       .L_B7_32

.L_B7_31:

        shl       dl, 7
        mov       rax, QWORD PTR [rip+_vmldAtanHATab+1976]
        mov       QWORD PTR [80+rsp], rax
        shr       rax, 56
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm0, QWORD PTR [80+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r8], xmm0
        jmp       .L_B7_33

.L_B7_32:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1936]
        shl       dl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1944]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm1, QWORD PTR [80+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r8], xmm1

.L_B7_33:

        movups    xmm6, XMMWORD PTR [112+rsp]
        xor       eax, eax
        movups    xmm14, XMMWORD PTR [144+rsp]
        movups    xmm15, XMMWORD PTR [128+rsp]
        add       rsp, 168
        ret

.L_B7_34:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1984]
        mov       r10d, -1022
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [56+rsp], xmm1
        jmp       .L_B7_16

.L_B7_35:

        cmp       r10d, 2047
        je        .L_B7_48

.L_B7_36:

        cmp       r9d, 2047
        je        .L_B7_46

.L_B7_37:

        movzx     r9d, WORD PTR [78+rsp]
        and       r9d, 32640
        cmp       r9d, 32640
        jne       .L_B7_21

.L_B7_39:

        cmp       ecx, 255
        je        .L_B7_43

.L_B7_40:

        test      al, al
        je        .L_B7_31
        jmp       .L_B7_32

.L_B7_43:

        test      al, al
        jne       .L_B7_45

.L_B7_44:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1904]
        shl       dl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1912]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm1, QWORD PTR [80+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r8], xmm1
        jmp       .L_B7_33

.L_B7_45:

        movsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1952]
        shl       dl, 7
        addsd     xmm0, QWORD PTR [rip+_vmldAtanHATab+1960]
        movsd     QWORD PTR [80+rsp], xmm0
        mov       al, BYTE PTR [87+rsp]
        and       al, 127
        or        al, dl
        mov       BYTE PTR [87+rsp], al
        movsd     xmm1, QWORD PTR [80+rsp]
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r8], xmm1
        jmp       .L_B7_33

.L_B7_46:

        test      DWORD PTR [76+rsp], 8388607
        je        .L_B7_37

.L_B7_47:

        addss     xmm3, xmm2
        movss     DWORD PTR [r8], xmm3
        jmp       .L_B7_33

.L_B7_48:

        test      DWORD PTR [72+rsp], 8388607
        jne       .L_B7_47
        jmp       .L_B7_36
        .align    16, 0x90

.L_B7_49:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_satan2_ha_cout_rare_internal_B1_B48:
        .long   563713
        .long   485530
        .long   649365
        .long   587916
        .long   1376523

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_49
        .rva    _unwind___jsvml_satan2_ha_cout_rare_internal_B1_B48

        .data

        .data
        .align 0x04
ione:
        .long   1065353216
        .long   -1082130432
        .section .rdata, "dr"
        .align 32
        .globl __jsvml_satan2_ha_data_internal
__jsvml_satan2_ha_data_internal:
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
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   1078530016
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
        .long   3047930835
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
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   2172649472
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
        .long   4219469824
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
        .long   1069547520
        .long   0
        .long   1072693248
        .long   0
        .long   1073741824
        .long   1413754136
        .long   1072243195
        .long   856972295
        .long   1015129638
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   1413754136
        .long   1074340347
        .long   856972295
        .long   1017226790
        .long   2134057426
        .long   1073928572
        .long   1285458442
        .long   1016756537
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   2144337920
        .long   0
        .long   1048576
        .long   33554432
        .long   1101004800
        .data
#endif
