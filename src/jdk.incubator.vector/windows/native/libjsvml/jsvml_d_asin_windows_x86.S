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
        .globl __jsvml_asin2_ha_e9

__jsvml_asin2_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 312
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [224+rsp], xmm10
        vmovapd   xmm10, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm9
        vmovups   XMMWORD PTR [272+rsp], xmm8
        vmovups   XMMWORD PTR [192+rsp], xmm7
        vmovups   XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vmovupd   xmm4, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vandpd    xmm7, xmm9, xmm10
        vmulpd    xmm11, xmm7, xmm4
        vmulpd    xmm3, xmm7, xmm7
        vsubpd    xmm5, xmm4, xmm11
        vcmpgtpd  xmm8, xmm7, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vcvtpd2ps xmm1, xmm5
        vminpd    xmm3, xmm3, xmm5
        vmovmskpd edx, xmm8
        vcmpnltpd xmm8, xmm7, xmm4
        vcmpltpd  xmm4, xmm5, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vaddpd    xmm5, xmm5, xmm5
        vmovlhps  xmm2, xmm1, xmm1
        vandnpd   xmm7, xmm8, xmm7
        vrsqrtps  xmm11, xmm2
        vcvtps2pd xmm6, xmm11
        vandpd    xmm11, xmm5, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+320]
        vandnpd   xmm6, xmm4, xmm6
        vsubpd    xmm1, xmm5, xmm11
        vmulpd    xmm5, xmm6, xmm11
        vmulpd    xmm4, xmm6, xmm1
        vmulpd    xmm0, xmm6, xmm5
        vmulpd    xmm2, xmm6, xmm4
        vsubpd    xmm11, xmm0, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vaddpd    xmm1, xmm5, xmm4
        vaddpd    xmm11, xmm2, xmm11
        vmulpd    xmm6, xmm11, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vaddpd    xmm0, xmm6, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmulpd    xmm6, xmm11, xmm1
        vmulpd    xmm2, xmm11, xmm0
        vaddpd    xmm1, xmm2, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vmulpd    xmm11, xmm11, xmm1
        vmulpd    xmm1, xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vaddpd    xmm0, xmm11, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vmulpd    xmm6, xmm6, xmm0
        vaddpd    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vsubpd    xmm6, xmm6, xmm4
        vmulpd    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vmulpd    xmm1, xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vaddpd    xmm11, xmm4, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vaddpd    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vmulpd    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vaddpd    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vmulpd    xmm4, xmm3, xmm3
        vmulpd    xmm11, xmm11, xmm4
        vmulpd    xmm0, xmm4, xmm0
        vaddpd    xmm2, xmm2, xmm11
        vaddpd    xmm0, xmm1, xmm0
        vmulpd    xmm11, xmm4, xmm4
        vmulpd    xmm1, xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vmulpd    xmm2, xmm2, xmm11
        vaddpd    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vaddpd    xmm11, xmm0, xmm2
        vmulpd    xmm4, xmm4, xmm11
        vaddpd    xmm0, xmm1, xmm4
        vmulpd    xmm1, xmm3, xmm0
        vaddpd    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vmulpd    xmm11, xmm3, xmm2
        vaddpd    xmm4, xmm11, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vsubpd    xmm11, xmm6, xmm5
        vaddpd    xmm6, xmm6, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vmulpd    xmm3, xmm3, xmm4
        vmovupd   xmm0, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vandnpd   xmm9, xmm9, xmm10
        vsubpd    xmm4, xmm0, xmm5
        vsubpd    xmm1, xmm0, xmm4
        vsubpd    xmm5, xmm5, xmm1
        vsubpd    xmm0, xmm6, xmm5
        vandpd    xmm1, xmm11, xmm8
        vandpd    xmm11, xmm0, xmm8
        vorpd     xmm0, xmm1, xmm7
        vandpd    xmm2, xmm4, xmm8
        vmulpd    xmm3, xmm0, xmm3
        vorpd     xmm1, xmm2, xmm7
        vaddpd    xmm2, xmm11, xmm3
        vaddpd    xmm4, xmm1, xmm2
        mov       QWORD PTR [296+rsp], r13
        vxorpd    xmm0, xmm4, xmm9
        test      edx, edx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm6, XMMWORD PTR [208+rsp]
        vmovups   xmm7, XMMWORD PTR [192+rsp]
        vmovups   xmm8, XMMWORD PTR [272+rsp]
        vmovups   xmm9, XMMWORD PTR [256+rsp]
        vmovups   xmm10, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B1_3:

        vmovupd   XMMWORD PTR [r13], xmm10
        vmovupd   XMMWORD PTR [64+r13], xmm0

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

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_asin2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_e9_B1_B3:
        .long   1068289
        .long   2413645
        .long   878661
        .long   817212
        .long   1148979
        .long   1087530
        .long   960541
        .long   1030164
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_asin2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_asin2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_asin2_ha_e9_B6_B10

        .data

        .text

TXTST1:

        .text

       .align    16, 0x90
        .globl __jsvml_asin2_ha_l9

__jsvml_asin2_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L20:

        sub       rsp, 312
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [272+rsp], xmm13
        vmovups   XMMWORD PTR [192+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [224+rsp], xmm9
        vmovups   XMMWORD PTR [208+rsp], xmm8
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vandpd    xmm2, xmm3, xmm4
        vandnpd   xmm3, xmm3, xmm4
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vmovapd   xmm9, xmm2
        vfnmadd213pd xmm9, xmm6, xmm6
        vcmpgtpd  xmm1, xmm2, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vmulpd    xmm5, xmm2, xmm2
        vcvtpd2ps xmm0, xmm9
        vmovmskpd edx, xmm1
        vmovlhps  xmm1, xmm0, xmm0
        vrsqrtps  xmm11, xmm1
        vcmpltpd  xmm12, xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vminpd    xmm8, xmm5, xmm9
        vcmpnltpd xmm5, xmm2, xmm6
        vcvtps2pd xmm13, xmm11
        vaddpd    xmm11, xmm9, xmm9
        vandnpd   xmm6, xmm12, xmm13
        vandnpd   xmm2, xmm5, xmm2
        vmulpd    xmm9, xmm6, xmm6
        vmulpd    xmm0, xmm6, xmm11
        vfmsub213pd xmm9, xmm11, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vmovupd   xmm12, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vfmsub213pd xmm11, xmm6, xmm0
        vfmadd213pd xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vfmadd213pd xmm12, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vfmadd213pd xmm13, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vmulpd    xmm6, xmm9, xmm0
        vfmadd213pd xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vfmadd213pd xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vfmadd213pd xmm9, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vfmsub213pd xmm1, xmm6, xmm11
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vmulpd    xmm11, xmm8, xmm8
        vfmadd213pd xmm6, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vfmadd213pd xmm12, xmm11, xmm9
        vmulpd    xmm9, xmm11, xmm11
        vfmadd213pd xmm13, xmm11, xmm6
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vfmadd213pd xmm6, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vfmadd213pd xmm12, xmm9, xmm13
        vfmadd213pd xmm12, xmm11, xmm6
        vsubpd    xmm6, xmm1, xmm0
        vaddpd    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vfmadd213pd xmm12, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vfmadd213pd xmm12, xmm8, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vmulpd    xmm9, xmm8, xmm12
        vmovupd   xmm12, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vsubpd    xmm8, xmm12, xmm0
        vsubpd    xmm13, xmm12, xmm8
        vsubpd    xmm0, xmm0, xmm13
        vsubpd    xmm0, xmm1, xmm0
        vandpd    xmm1, xmm6, xmm5
        vandpd    xmm6, xmm0, xmm5
        vorpd     xmm1, xmm1, xmm2
        vandpd    xmm8, xmm8, xmm5
        vfmadd213pd xmm9, xmm1, xmm6
        vorpd     xmm0, xmm8, xmm2
        vaddpd    xmm2, xmm0, xmm9
        mov       QWORD PTR [296+rsp], r13
        vxorpd    xmm0, xmm2, xmm3
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm8, XMMWORD PTR [208+rsp]
        vmovups   xmm9, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [192+rsp]
        vmovups   xmm13, XMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B2_3:

        vmovupd   XMMWORD PTR [r13], xmm4
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

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_asin2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_l9_B1_B3:
        .long   1068289
        .long   2413645
        .long   1075269
        .long   886844
        .long   956467
        .long   1030186
        .long   837665
        .long   1169432
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_asin2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_asin2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_asin2_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

       .align    16, 0x90
        .globl __jsvml_asin4_ha_l9

__jsvml_asin4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L39:

        sub       rsp, 552
        vmovups   YMMWORD PTR [336+rsp], ymm13
        vmovups   YMMWORD PTR [400+rsp], ymm12
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [368+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovupd   ymm3, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vmovdqa   ymm4, ymm0
        vandpd    ymm2, ymm3, ymm4
        vmovdqa   ymm9, ymm2
        vfnmadd213pd ymm9, ymm6, ymm6
        vmulpd    ymm5, ymm2, ymm2
        vcmpgt_oqpd ymm1, ymm2, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vcmplt_oqpd ymm11, ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vminpd    ymm8, ymm5, ymm9
        vcmpnlt_uqpd ymm5, ymm2, ymm6
        vcvtpd2ps xmm0, ymm9
        vmovmskpd edx, ymm1
        vrsqrtps  xmm1, xmm0
        vcvtps2pd ymm12, xmm1
        test      edx, edx
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vandnpd   ymm13, ymm11, ymm12
        vaddpd    ymm11, ymm9, ymm9
        vmulpd    ymm9, ymm13, ymm13
        vmulpd    ymm12, ymm8, ymm8
        vmulpd    ymm0, ymm13, ymm11
        vfmsub213pd ymm9, ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vfmsub213pd ymm11, ymm13, ymm0
        vmovupd   ymm13, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vfmadd213pd ymm1, ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmulpd    ymm6, ymm9, ymm0
        vfmadd213pd ymm13, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vfmadd213pd ymm1, ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vfmadd213pd ymm1, ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vfmsub213pd ymm1, ymm6, ymm11
        vmovupd   ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vfmadd213pd ymm9, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vfmadd213pd ymm11, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vfmadd213pd ymm6, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vfmadd213pd ymm13, ymm12, ymm9
        vmulpd    ymm9, ymm12, ymm12
        vfmadd213pd ymm11, ymm12, ymm6
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vfmadd213pd ymm13, ymm9, ymm11
        vfmadd213pd ymm6, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vfmadd213pd ymm13, ymm12, ymm6
        vmovupd   ymm12, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vsubpd    ymm6, ymm1, ymm0
        vaddpd    ymm1, ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vfmadd213pd ymm13, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vfmadd213pd ymm13, ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vmulpd    ymm9, ymm8, ymm13
        vsubpd    ymm8, ymm12, ymm0
        vsubpd    ymm13, ymm12, ymm8
        vsubpd    ymm0, ymm0, ymm13
        vsubpd    ymm0, ymm1, ymm0
        vandpd    ymm1, ymm6, ymm5
        vandnpd   ymm2, ymm5, ymm2
        vandpd    ymm6, ymm0, ymm5
        vorpd     ymm1, ymm1, ymm2
        vfmadd213pd ymm9, ymm1, ymm6
        vandpd    ymm8, ymm8, ymm5
        vorpd     ymm0, ymm8, ymm2
        vaddpd    ymm2, ymm0, ymm9
        vandnpd   ymm3, ymm3, ymm4
        mov       QWORD PTR [536+rsp], r13
        vxorpd    ymm0, ymm2, ymm3
        jne       .L_B3_3

.L_B3_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [368+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        vmovups   ymm12, YMMWORD PTR [400+rsp]
        vmovups   ymm13, YMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B3_3:

        vmovupd   YMMWORD PTR [r13], ymm4
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B3_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm7
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, edx

.L_B3_7:

        bt        esi, ebx
        jc        .L_B3_10

.L_B3_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B3_7

.L_B3_9:

        vmovups   ymm7, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B3_2

.L_B3_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_asin4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin4_ha_l9_B1_B3:
        .long   1067265
        .long   4379721
        .long   2058305
        .long   1804344
        .long   1546287
        .long   1947686
        .long   1689629
        .long   1431572
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_asin4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin4_ha_l9_B6_B10:
        .long   798497
        .long   1336367
        .long   1389605
        .long   194589
        .long   321559
        .long   436241
        .long   555019
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_asin4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_asin4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

       .align    16, 0x90
        .globl __jsvml_asin1_ha_ex

__jsvml_asin1_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L66:

        sub       rsp, 280
        movups    XMMWORD PTR [208+rsp], xmm14
        movups    XMMWORD PTR [224+rsp], xmm12
        movaps    xmm12, xmm0
        movups    XMMWORD PTR [256+rsp], xmm10
        movups    XMMWORD PTR [176+rsp], xmm9
        movups    XMMWORD PTR [240+rsp], xmm8
        movups    XMMWORD PTR [192+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        movsd     xmm10, QWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        movaps    xmm9, xmm10
        andnps    xmm10, xmm12
        andps     xmm9, xmm12
        movsd     xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        movaps    xmm4, xmm9
        mulsd     xmm4, xmm1
        movaps    xmm5, xmm1
        movaps    xmm8, xmm9
        movaps    xmm6, xmm9
        mulsd     xmm8, xmm9
        subsd     xmm5, xmm4
        cmpnltsd  xmm6, xmm1
        cvtpd2ps  xmm4, xmm5
        shufps    xmm4, xmm4, 0
        movaps    xmm3, xmm5
        rsqrtps   xmm14, xmm4
        unpcklpd  xmm8, xmm8
        unpcklpd  xmm3, xmm5
        cvtps2pd  xmm4, xmm14
        minpd     xmm8, xmm3
        movaps    xmm3, xmm5
        movaps    xmm1, xmm8
        movsd     xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        movaps    xmm14, xmm8
        mulsd     xmm1, xmm8
        cmpltsd   xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        addsd     xmm5, xmm5
        mulsd     xmm14, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        cmpltsd   xmm2, xmm9
        andnps    xmm3, xmm4
        addsd     xmm14, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        movmskpd  eax, xmm2
        movsd     xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+320]
        andps     xmm4, xmm5
        and       eax, 1
        mov       QWORD PTR [272+rsp], r13
        subsd     xmm5, xmm4
        mulsd     xmm4, xmm3
        mulsd     xmm5, xmm3
        movaps    xmm0, xmm4
        movaps    xmm2, xmm5
        mulsd     xmm0, xmm3
        mulsd     xmm2, xmm3
        subsd     xmm0, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        movsd     xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        addsd     xmm0, xmm2
        mulsd     xmm3, xmm0
        movaps    xmm2, xmm4
        addsd     xmm2, xmm5
        addsd     xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        mulsd     xmm2, xmm0
        mulsd     xmm3, xmm0
        addsd     xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        mulsd     xmm3, xmm0
        movaps    xmm0, xmm8
        mulsd     xmm0, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        addsd     xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        addsd     xmm0, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        mulsd     xmm3, xmm2
        mulsd     xmm0, xmm1
        subsd     xmm3, xmm5
        addsd     xmm0, xmm14
        movaps    xmm2, xmm8
        movaps    xmm5, xmm8
        mulsd     xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        movaps    xmm14, xmm8
        mulsd     xmm5, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        mulsd     xmm14, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        addsd     xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        addsd     xmm5, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        addsd     xmm14, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        mulsd     xmm2, xmm1
        addsd     xmm2, xmm5
        movaps    xmm5, xmm1
        mulsd     xmm5, xmm1
        mulsd     xmm2, xmm5
        movsd     xmm5, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        addsd     xmm2, xmm0
        addsd     xmm5, xmm3
        mulsd     xmm2, xmm1
        movsd     xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        addsd     xmm2, xmm14
        mulsd     xmm2, xmm8
        movaps    xmm0, xmm1
        subsd     xmm0, xmm4
        addsd     xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        subsd     xmm1, xmm0
        mulsd     xmm2, xmm8
        andps     xmm0, xmm6
        addsd     xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        mulsd     xmm2, xmm8
        movaps    xmm8, xmm3
        subsd     xmm8, xmm4
        subsd     xmm4, xmm1
        andps     xmm8, xmm6
        subsd     xmm5, xmm4
        andps     xmm5, xmm6
        andnps    xmm6, xmm9
        orps      xmm8, xmm6
        orps      xmm0, xmm6
        mulsd     xmm2, xmm8
        addsd     xmm2, xmm5
        addsd     xmm0, xmm2
        pxor      xmm0, xmm10
        jne       .L_B4_3

.L_B4_2:

        movups    xmm6, XMMWORD PTR [192+rsp]
        movups    xmm8, XMMWORD PTR [240+rsp]
        movups    xmm9, XMMWORD PTR [176+rsp]
        movups    xmm10, XMMWORD PTR [256+rsp]
        movups    xmm12, XMMWORD PTR [224+rsp]
        movups    xmm14, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        movsd     QWORD PTR [r13], xmm12
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B4_6

.L_B4_4:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B4_4
        .align    16, 0x90

.L_B4_7:

        .section .drectve
        .ascii " -export \"__jsvml_asin1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin1_ha_ex_B1_B6:
        .long   1068033
        .long   1430604
        .long   813124
        .long   1017916
        .long   759859
        .long   1091626
        .long   968733
        .long   911380
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_asin1_ha_ex_B1_B6

        .data

        .text

TXTST4:

        .text

       .align    16, 0x90
        .globl __jsvml_asin4_ha_e9

__jsvml_asin4_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L81:

        sub       rsp, 552
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [432+rsp], ymm10
        vmovups   YMMWORD PTR [496+rsp], ymm9
        vmovups   YMMWORD PTR [336+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm7
        vmovups   YMMWORD PTR [400+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vmovupd   ymm8, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vmovapd   ymm10, ymm0
        vandpd    ymm7, ymm9, ymm10
        vmulpd    ymm4, ymm7, ymm8
        vmulpd    ymm2, ymm7, ymm7
        vcmpgt_oqpd ymm1, ymm7, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vsubpd    ymm5, ymm8, ymm4
        vcmpnlt_uqpd ymm8, ymm7, ymm8
        vminpd    ymm4, ymm2, ymm5
        vcvtpd2ps xmm2, ymm5
        vrsqrtps  xmm6, xmm2
        vandnpd   ymm7, ymm8, ymm7
        vandnpd   ymm9, ymm9, ymm10
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm3, ymm1, 1
        vshufps   xmm11, xmm1, xmm3, 221
        vcvtps2pd ymm3, xmm6
        vcmplt_oqpd ymm1, ymm5, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vaddpd    ymm5, ymm5, ymm5
        vmovmskps edx, xmm11
        vandnpd   ymm6, ymm1, ymm3
        vandpd    ymm11, ymm5, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+320]
        vsubpd    ymm0, ymm5, ymm11
        vmulpd    ymm5, ymm6, ymm11
        vmulpd    ymm2, ymm6, ymm0
        vmulpd    ymm11, ymm6, ymm5
        vmulpd    ymm6, ymm6, ymm2
        vsubpd    ymm1, ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vaddpd    ymm0, ymm5, ymm2
        vaddpd    ymm11, ymm6, ymm1
        vmulpd    ymm3, ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vmulpd    ymm6, ymm11, ymm0
        vaddpd    ymm1, ymm3, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmulpd    ymm3, ymm11, ymm1
        vmulpd    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vaddpd    ymm0, ymm3, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vmulpd    ymm11, ymm11, ymm0
        vaddpd    ymm0, ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vmulpd    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vaddpd    ymm11, ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vaddpd    ymm1, ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vmulpd    ymm6, ymm6, ymm11
        vsubpd    ymm6, ymm6, ymm2
        vmulpd    ymm2, ymm4, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vaddpd    ymm11, ymm2, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vmulpd    ymm2, ymm4, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vaddpd    ymm3, ymm2, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vmulpd    ymm2, ymm4, ymm4
        vmulpd    ymm11, ymm11, ymm2
        vmulpd    ymm0, ymm2, ymm0
        vaddpd    ymm3, ymm3, ymm11
        vaddpd    ymm11, ymm1, ymm0
        vmulpd    ymm0, ymm2, ymm2
        vmulpd    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vmulpd    ymm3, ymm3, ymm0
        vaddpd    ymm1, ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vaddpd    ymm11, ymm11, ymm3
        vmulpd    ymm2, ymm2, ymm11
        vaddpd    ymm0, ymm1, ymm2
        vmulpd    ymm1, ymm4, ymm0
        vmovupd   ymm0, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vaddpd    ymm3, ymm1, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vmulpd    ymm11, ymm4, ymm3
        vaddpd    ymm2, ymm11, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vsubpd    ymm11, ymm6, ymm5
        vaddpd    ymm6, ymm6, YMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vmulpd    ymm4, ymm4, ymm2
        vsubpd    ymm2, ymm0, ymm5
        vsubpd    ymm1, ymm0, ymm2
        vsubpd    ymm5, ymm5, ymm1
        vsubpd    ymm0, ymm6, ymm5
        vandpd    ymm1, ymm11, ymm8
        vandpd    ymm11, ymm0, ymm8
        vandpd    ymm2, ymm2, ymm8
        vorpd     ymm8, ymm1, ymm7
        vmulpd    ymm4, ymm8, ymm4
        vaddpd    ymm1, ymm11, ymm4
        vorpd     ymm0, ymm2, ymm7
        vaddpd    ymm2, ymm0, ymm1
        vxorpd    ymm0, ymm2, ymm9
        test      edx, edx
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [400+rsp]
        vmovups   ymm7, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [336+rsp]
        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm10, YMMWORD PTR [432+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_3:

        vmovupd   YMMWORD PTR [r13], ymm10
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B5_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm12
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, edx

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm12, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_asin4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin4_ha_e9_B1_B3:
        .long   1067265
        .long   4379721
        .long   1665089
        .long   1538104
        .long   1411119
        .long   2070566
        .long   1812509
        .long   1947668
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_asin4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin4_ha_e9_B6_B10:
        .long   798497
        .long   1336367
        .long   1389605
        .long   194589
        .long   321559
        .long   448529
        .long   575499
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_asin4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_asin4_ha_e9_B6_B10

        .data

        .text

TXTST5:

        .text

       .align    16, 0x90
        .globl __jsvml_asin2_ha_ex

__jsvml_asin2_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L108:

        sub       rsp, 312
        movups    XMMWORD PTR [208+rsp], xmm14
        movups    XMMWORD PTR [224+rsp], xmm13
        movaps    xmm13, xmm0
        movups    XMMWORD PTR [240+rsp], xmm12
        movups    XMMWORD PTR [272+rsp], xmm11
        movups    XMMWORD PTR [192+rsp], xmm10
        movups    XMMWORD PTR [256+rsp], xmm9
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm12, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        movups    xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        movaps    xmm11, xmm12
        andps     xmm11, xmm13
        movaps    xmm4, xmm1
        mulpd     xmm4, xmm11
        movaps    xmm5, xmm1
        movaps    xmm10, xmm11
        subpd     xmm5, xmm4
        mulpd     xmm10, xmm11
        cvtpd2ps  xmm2, xmm5
        minpd     xmm10, xmm5
        movlhps   xmm2, xmm2
        movaps    xmm9, xmm11
        rsqrtps   xmm14, xmm2
        cmpnltpd  xmm9, xmm1
        cvtps2pd  xmm4, xmm14
        movaps    xmm1, xmm5
        andnps    xmm12, xmm13
        cmpltpd   xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        addpd     xmm5, xmm5
        andnps    xmm1, xmm4
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+320]
        andps     xmm4, xmm5
        subpd     xmm5, xmm4
        mulpd     xmm4, xmm1
        mulpd     xmm5, xmm1
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        cmpltpd   xmm3, xmm11
        movmskpd  eax, xmm3
        movaps    xmm3, xmm1
        movups    xmm0, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        movups    xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        mulpd     xmm3, xmm4
        mulpd     xmm1, xmm5
        subpd     xmm3, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        mulpd     xmm14, xmm10
        addpd     xmm1, xmm3
        addpd     xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        mulpd     xmm0, xmm1
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        mulpd     xmm0, xmm1
        movaps    xmm3, xmm4
        addpd     xmm0, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        addpd     xmm3, xmm5
        mulpd     xmm3, xmm1
        mulpd     xmm1, xmm0
        addpd     xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        mulpd     xmm3, xmm1
        subpd     xmm3, xmm5
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        movaps    xmm0, xmm10
        mulpd     xmm5, xmm10
        mulpd     xmm0, xmm10
        addpd     xmm5, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        mulpd     xmm14, xmm0
        mulpd     xmm5, xmm0
        movups    xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        mulpd     xmm1, xmm10
        addpd     xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        movups    xmm2, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        mulpd     xmm2, xmm10
        addpd     xmm1, xmm5
        addpd     xmm2, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        movaps    xmm5, xmm0
        mulpd     xmm5, xmm0
        addpd     xmm2, xmm14
        mulpd     xmm1, xmm5
        movups    xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        mulpd     xmm14, xmm10
        addpd     xmm2, xmm1
        addpd     xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        mulpd     xmm0, xmm2
        addpd     xmm14, xmm0
        mulpd     xmm14, xmm10
        addpd     xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        movaps    xmm2, xmm3
        movaps    xmm0, xmm1
        subpd     xmm0, xmm4
        subpd     xmm2, xmm4
        mulpd     xmm14, xmm10
        subpd     xmm1, xmm0
        addpd     xmm14, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        subpd     xmm4, xmm1
        mulpd     xmm10, xmm14
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        andps     xmm2, xmm9
        addpd     xmm5, xmm3
        subpd     xmm5, xmm4
        andps     xmm5, xmm9
        andps     xmm0, xmm9
        andnps    xmm9, xmm11
        orps      xmm2, xmm9
        orps      xmm0, xmm9
        mulpd     xmm2, xmm10
        addpd     xmm5, xmm2
        addpd     xmm0, xmm5
        mov       QWORD PTR [296+rsp], r13
        pxor      xmm0, xmm12
        test      eax, eax
        jne       .L_B6_3

.L_B6_2:

        movups    xmm9, XMMWORD PTR [256+rsp]
        movups    xmm10, XMMWORD PTR [192+rsp]
        movups    xmm11, XMMWORD PTR [272+rsp]
        movups    xmm12, XMMWORD PTR [240+rsp]
        movups    xmm13, XMMWORD PTR [224+rsp]
        movups    xmm14, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B6_3:

        movups    XMMWORD PTR [r13], xmm13
        movups    XMMWORD PTR [64+r13], xmm0

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

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_asin2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_ex_B1_B3:
        .long   1068289
        .long   2413645
        .long   1087557
        .long   829500
        .long   1161267
        .long   1034282
        .long   972829
        .long   911380
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_asin2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_asin2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_asin2_ha_ex_B6_B10

        .data

        .text

TXTST6:

        .text

       .align    16, 0x90
        .globl __jsvml_asin8_ha_z0

__jsvml_asin8_ha_z0:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L127:

        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vandpd    zmm5, zmm0, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        vmovaps   zmm26, zmm5
        vfnmadd213pd zmm26, zmm23, zmm23 {rn-sae}
        vmulpd    zmm22, zmm5, zmm5 {rn-sae}
        vrsqrt14pd zmm28, zmm26
        vcmppd    k2, zmm26, zmm25, 17 {sae}
        vcmppd    k1, zmm24, zmm5, 17 {sae}
        vcmppd    k3, zmm5, zmm23, 21 {sae}
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vminpd    zmm4, zmm22, zmm26 {sae}
        vxorpd    zmm28{k2}, zmm28, zmm28
        vaddpd    zmm22, zmm26, zmm26 {rn-sae}
        vorpd     zmm4{k1}, zmm4, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1728]
        vmulpd    zmm27, zmm28, zmm28 {rn-sae}
        vmulpd    zmm3, zmm22, zmm28 {rn-sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vfmsub231pd zmm31, zmm27, zmm22 {rn-sae}
        vfmsub213pd zmm22, zmm28, zmm3 {rn-sae}
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vfmadd231pd zmm2, zmm29, zmm31 {rn-sae}
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vfmadd231pd zmm28, zmm24, zmm4 {rn-sae}
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vmulpd    zmm27, zmm3, zmm31 {rn-sae}
        vfmadd213pd zmm2, zmm31, zmm30 {rn-sae}
        vfmadd231pd zmm29, zmm26, zmm4 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vfmadd213pd zmm2, zmm31, zmm1 {rn-sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vfmadd231pd zmm24, zmm30, zmm4 {rn-sae}
        vfmsub213pd zmm2, zmm27, zmm22 {rn-sae}
        vfmadd231pd zmm1, zmm23, zmm4 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vmulpd    zmm23, zmm4, zmm4 {rn-sae}
        vfmadd231pd zmm22, zmm25, zmm4 {rn-sae}
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vmulpd    zmm31, zmm23, zmm23 {rn-sae}
        vfmadd213pd zmm1, zmm23, zmm28 {rn-sae}
        vfmadd213pd zmm22, zmm23, zmm29 {rn-sae}
        vfmadd213pd zmm1, zmm31, zmm22 {rn-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1600]
        vfmadd213pd zmm1, zmm23, zmm24 {rn-sae}
        vfmadd213pd zmm1, zmm4, zmm25 {rn-sae}
        vfmadd213pd zmm1, zmm4, zmm26 {rn-sae}
        vmulpd    zmm25, zmm1, zmm4 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vsubpd    zmm24, zmm4, zmm3 {rn-sae}
        vsubpd    zmm4, zmm4, zmm24 {rn-sae}
        vmovaps   zmm23, zmm5
        vsubpd    zmm23{k3}, zmm2, zmm3 {rn-sae}
        vaddpd    zmm2, zmm1, zmm2 {rn-sae}
        vsubpd    zmm3, zmm3, zmm4 {rn-sae}
        vblendmpd zmm1{k3}, zmm23, zmm24
        vsubpd    zmm22{k3}, zmm2, zmm3 {rn-sae}
        vfmadd213pd zmm25, zmm23, zmm22 {rn-sae}
        vaddpd    zmm2, zmm1, zmm25 {rn-sae}
        vpternlogq zmm0, zmm5, zmm2, 150
        ret
        .align    16, 0x90

.L_B7_2:

        .section .drectve
        .ascii " -export \"__jsvml_asin8_ha_z0\""

        .data

        .text

TXTST7:

        .text

       .align    16, 0x90
        .globl __jsvml_asin1_ha_l9

__jsvml_asin1_ha_l9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L128:

        sub       rsp, 296
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm13
        vmovups   XMMWORD PTR [176+rsp], xmm12
        vmovups   XMMWORD PTR [272+rsp], xmm11
        vmovups   XMMWORD PTR [224+rsp], xmm10
        vmovups   XMMWORD PTR [192+rsp], xmm8
        vmovups   XMMWORD PTR [208+rsp], xmm7
        vmovups   XMMWORD PTR [240+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vandpd    xmm2, xmm3, xmm4
        vandnpd   xmm3, xmm3, xmm4
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vmovapd   xmm8, xmm2
        vfnmadd213sd xmm8, xmm13, xmm13
        vmulsd    xmm5, xmm2, xmm2
        vcmpltsd  xmm12, xmm8, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vmovddup  xmm1, xmm5
        vmovddup  xmm5, xmm8
        vminpd    xmm7, xmm1, xmm5
        vcvtpd2ps xmm1, xmm8
        vcmpnltsd xmm5, xmm2, xmm13
        vaddsd    xmm13, xmm8, xmm8
        vbroadcastss xmm10, xmm1
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vrsqrtps  xmm11, xmm10
        vcmpltsd  xmm0, xmm6, xmm2
        vcvtps2pd xmm6, xmm11
        vmovmskpd eax, xmm0
        vandnpd   xmm1, xmm12, xmm6
        vmovapd   xmm6, xmm13
        vmulsd    xmm8, xmm1, xmm1
        vmovapd   xmm12, xmm7
        vmulsd    xmm0, xmm13, xmm1
        vfmsub213sd xmm6, xmm8, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vandnpd   xmm2, xmm5, xmm2
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vfmsub213sd xmm13, xmm1, xmm0
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vfmadd213sd xmm1, xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmulsd    xmm8, xmm0, xmm6
        vfmadd213sd xmm12, xmm11, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vfmadd213sd xmm1, xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vmovapd   xmm11, xmm7
        vfmadd213sd xmm1, xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vfmsub213sd xmm1, xmm8, xmm13
        vmovapd   xmm13, xmm7
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vfmadd213sd xmm11, xmm8, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vmovapd   xmm8, xmm7
        vfmadd213sd xmm13, xmm10, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vmulsd    xmm10, xmm7, xmm7
        vfmadd213sd xmm8, xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vmovapd   xmm6, xmm7
        vfmadd213sd xmm13, xmm10, xmm12
        vfmadd213sd xmm11, xmm10, xmm8
        vmulsd    xmm8, xmm10, xmm10
        vmovsd    xmm12, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vfmadd213sd xmm6, xmm12, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vfmadd213sd xmm13, xmm8, xmm11
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vfmadd213sd xmm13, xmm10, xmm6
        vsubsd    xmm6, xmm1, xmm0
        vaddsd    xmm1, xmm11, xmm1
        vfmadd213sd xmm13, xmm7, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vfmadd213sd xmm13, xmm7, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vmulsd    xmm8, xmm13, xmm7
        vsubsd    xmm7, xmm10, xmm0
        mov       QWORD PTR [288+rsp], r13
        vsubsd    xmm12, xmm10, xmm7
        vandpd    xmm7, xmm7, xmm5
        vsubsd    xmm0, xmm0, xmm12
        vsubsd    xmm0, xmm1, xmm0
        vandpd    xmm1, xmm6, xmm5
        vandpd    xmm6, xmm0, xmm5
        vorpd     xmm1, xmm1, xmm2
        vfmadd213sd xmm8, xmm1, xmm6
        vorpd     xmm0, xmm7, xmm2
        vaddsd    xmm2, xmm0, xmm8
        vxorpd    xmm0, xmm2, xmm3
        and       eax, 1
        jne       .L_B8_3

.L_B8_2:

        vmovups   xmm6, XMMWORD PTR [240+rsp]
        vmovups   xmm7, XMMWORD PTR [208+rsp]
        vmovups   xmm8, XMMWORD PTR [192+rsp]
        vmovups   xmm10, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [272+rsp]
        vmovups   xmm12, XMMWORD PTR [176+rsp]
        vmovups   xmm13, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 296
        ret

.L_B8_3:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B8_6

.L_B8_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B8_2

.L_B8_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B8_4
        .align    16, 0x90

.L_B8_7:

        .section .drectve
        .ascii " -export \"__jsvml_asin1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin1_ha_l9_B1_B6:
        .long   1201665
        .long   1430614
        .long   1009742
        .long   882757
        .long   821308
        .long   960563
        .long   1161258
        .long   772129
        .long   1103896
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_asin1_ha_l9_B1_B6

        .data

        .text

TXTST8:

        .text

       .align    16, 0x90
        .globl __jsvml_asin1_ha_e9

__jsvml_asin1_ha_e9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L145:

        sub       rsp, 280
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [208+rsp], xmm10
        vmovapd   xmm10, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm9
        vmovups   XMMWORD PTR [176+rsp], xmm8
        vmovups   XMMWORD PTR [192+rsp], xmm7
        vmovups   XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dasin_ha_data_internal]
        and       r13, -64
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+64]
        vandpd    xmm7, xmm9, xmm10
        vmulsd    xmm2, xmm7, xmm8
        vandnpd   xmm9, xmm9, xmm10
        vmulsd    xmm4, xmm7, xmm7
        vsubsd    xmm6, xmm8, xmm2
        vcmpnltsd xmm8, xmm7, xmm8
        vcvtpd2ps xmm2, xmm6
        vmovddup  xmm5, xmm4
        vmovddup  xmm1, xmm6
        vminpd    xmm4, xmm5, xmm1
        vshufps   xmm5, xmm2, xmm2, 0
        vrsqrtps  xmm1, xmm5
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+256]
        vcvtps2pd xmm0, xmm1
        vcmpltsd  xmm11, xmm3, xmm7
        vcmpltsd  xmm3, xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+128]
        vmovmskpd eax, xmm11
        vaddsd    xmm11, xmm6, xmm6
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+320]
        vandnpd   xmm5, xmm3, xmm0
        vandpd    xmm2, xmm11, xmm6
        vandnpd   xmm7, xmm8, xmm7
        vmulsd    xmm6, xmm2, xmm5
        vsubsd    xmm1, xmm11, xmm2
        vmulsd    xmm2, xmm1, xmm5
        vmulsd    xmm3, xmm6, xmm5
        vmulsd    xmm0, xmm2, xmm5
        vsubsd    xmm5, xmm3, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+384]
        vaddsd    xmm3, xmm6, xmm2
        vaddsd    xmm11, xmm5, xmm0
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+448]
        vmulsd    xmm1, xmm5, xmm11
        vmulsd    xmm5, xmm3, xmm11
        vaddsd    xmm0, xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+512]
        vmulsd    xmm1, xmm0, xmm11
        vmulsd    xmm0, xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+960]
        vaddsd    xmm3, xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+576]
        vmulsd    xmm1, xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1088]
        vaddsd    xmm0, xmm0, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1024]
        vmulsd    xmm11, xmm3, xmm11
        vaddsd    xmm1, xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1152]
        vaddsd    xmm11, xmm11, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+640]
        vmulsd    xmm5, xmm11, xmm5
        mov       QWORD PTR [272+rsp], r13
        vsubsd    xmm5, xmm5, xmm2
        vmulsd    xmm2, xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+704]
        vaddsd    xmm11, xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+768]
        vmulsd    xmm2, xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+832]
        vaddsd    xmm3, xmm2, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+896]
        vmulsd    xmm2, xmm4, xmm4
        vmulsd    xmm11, xmm11, xmm2
        vmulsd    xmm0, xmm0, xmm2
        vaddsd    xmm3, xmm11, xmm3
        vaddsd    xmm11, xmm0, xmm1
        vmulsd    xmm0, xmm2, xmm2
        vmulsd    xmm1, xmm4, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1216]
        vmulsd    xmm3, xmm3, xmm0
        vaddsd    xmm1, xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1280]
        vaddsd    xmm11, xmm3, xmm11
        vmulsd    xmm2, xmm11, xmm2
        vaddsd    xmm0, xmm2, xmm1
        vmulsd    xmm1, xmm0, xmm4
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1472]
        vaddsd    xmm3, xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1344]
        vmulsd    xmm11, xmm3, xmm4
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1536]
        vaddsd    xmm2, xmm11, QWORD PTR [rip+__jsvml_dasin_ha_data_internal+1408]
        vsubsd    xmm11, xmm5, xmm6
        vaddsd    xmm5, xmm1, xmm5
        vmulsd    xmm2, xmm2, xmm4
        vsubsd    xmm4, xmm0, xmm6
        vandpd    xmm1, xmm11, xmm8
        vsubsd    xmm3, xmm0, xmm4
        vandpd    xmm4, xmm4, xmm8
        vsubsd    xmm6, xmm6, xmm3
        vsubsd    xmm0, xmm5, xmm6
        vandpd    xmm11, xmm0, xmm8
        vorpd     xmm8, xmm1, xmm7
        vmulsd    xmm2, xmm2, xmm8
        vorpd     xmm0, xmm4, xmm7
        vaddsd    xmm1, xmm2, xmm11
        vaddsd    xmm3, xmm0, xmm1
        vxorpd    xmm0, xmm3, xmm9
        and       eax, 1
        jne       .L_B9_3

.L_B9_2:

        vmovups   xmm6, XMMWORD PTR [256+rsp]
        vmovups   xmm7, XMMWORD PTR [192+rsp]
        vmovups   xmm8, XMMWORD PTR [176+rsp]
        vmovups   xmm9, XMMWORD PTR [224+rsp]
        vmovups   xmm10, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B9_3:

        vmovsd    QWORD PTR [r13], xmm10
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B9_6

.L_B9_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B9_2

.L_B9_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dasin_ha_cout_rare_internal
        jmp       .L_B9_4
        .align    16, 0x90

.L_B9_7:

        .section .drectve
        .ascii " -export \"__jsvml_asin1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_asin1_ha_e9_B1_B6:
        .long   1068289
        .long   1430605
        .long   1075269
        .long   817212
        .long   755763
        .long   956458
        .long   895005
        .long   1030164
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_7
        .rva    _unwind___jsvml_asin1_ha_e9_B1_B6

        .data

        .text

TXTST9:

        .text

       .align    16, 0x90
        .globl __jsvml_dasin_ha_cout_rare_internal

__jsvml_dasin_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L160:

        push      rbp
        sub       rsp, 208
        lea       rbp, QWORD PTR [32+rsp]
        mov       r8, rcx
        movups    XMMWORD PTR [160+rbp], xmm15
        mov       r9, rdx
        movups    XMMWORD PTR [96+rbp], xmm14
        xor       eax, eax
        movups    XMMWORD PTR [144+rbp], xmm12
        movzx     r10d, WORD PTR [6+r8]
        and       r10d, 32752
        mov       dl, BYTE PTR [7+r8]
        movsd     xmm1, QWORD PTR [r8]
        movups    XMMWORD PTR [112+rbp], xmm11
        movups    XMMWORD PTR [64+rbp], xmm9
        movups    XMMWORD PTR [80+rbp], xmm8
        movups    XMMWORD PTR [128+rbp], xmm7
        cmp       r10d, 32752
        je        .L_B10_12

.L_B10_2:

        movsd     QWORD PTR [24+rbp], xmm1
        and       dl, 127
        mov       BYTE PTR [31+rbp], dl
        movsd     xmm4, QWORD PTR [24+rbp]
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4160]
        comisd    xmm0, xmm4
        jb        .L_B10_10

.L_B10_3:

        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4168]
        comisd    xmm2, xmm4
        jbe       .L_B10_9

.L_B10_4:

        comisd    xmm4, QWORD PTR [rip+_vmldASinHATab+4136]
        jbe       .L_B10_6

.L_B10_5:

        movsd     xmm8, QWORD PTR [rip+_vmldASinHATab+4104]
        movaps    xmm11, xmm4
        mulsd     xmm8, xmm4
        movaps    xmm15, xmm4
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm7, QWORD PTR [8+rbp]
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4296]
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm7, QWORD PTR [24+rbp]
        movsd     QWORD PTR [rbp], xmm7
        movsd     xmm9, QWORD PTR [8+rbp]
        movsd     xmm3, QWORD PTR [rbp]
        subsd     xmm9, xmm3
        movsd     QWORD PTR [8+rbp], xmm9
        movsd     xmm2, QWORD PTR [8+rbp]
        subsd     xmm11, xmm2
        movsd     QWORD PTR [rbp], xmm11
        movsd     xmm1, QWORD PTR [8+rbp]
        movaps    xmm2, xmm1
        addsd     xmm15, xmm1
        mulsd     xmm2, xmm1
        movsd     xmm14, QWORD PTR [rbp]
        movaps    xmm5, xmm2
        mulsd     xmm15, xmm14
        mulsd     xmm12, xmm2
        addsd     xmm5, xmm15
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [8+rbp], xmm12
        movsd     xmm8, QWORD PTR [8+rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4288]
        subsd     xmm8, xmm2
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     xmm7, QWORD PTR [rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4280]
        subsd     xmm3, xmm7
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm9, QWORD PTR [8+rbp]
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4272]
        subsd     xmm2, xmm9
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [rbp], xmm2
        movaps    xmm2, xmm4
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     xmm11, QWORD PTR [rbp]
        mulsd     xmm14, xmm3
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4264]
        addsd     xmm15, xmm11
        mulsd     xmm1, xmm3
        mulsd     xmm0, xmm5
        mulsd     xmm2, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4256]
        addsd     xmm2, xmm14
        mulsd     xmm0, xmm5
        movsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4104]
        movaps    xmm12, xmm1
        mulsd     xmm14, xmm1
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4248]
        movsd     QWORD PTR [8+rbp], xmm14
        movsd     xmm8, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm8, xmm1
        addsd     xmm1, xmm2
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4240]
        mulsd     xmm15, xmm1
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm9, QWORD PTR [8+rbp]
        movsd     xmm7, QWORD PTR [rbp]
        subsd     xmm9, xmm7
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4232]
        movsd     QWORD PTR [8+rbp], xmm9
        movsd     xmm11, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm12, xmm11
        movsd     QWORD PTR [rbp], xmm12
        movaps    xmm12, xmm3
        movsd     xmm9, QWORD PTR [8+rbp]
        movsd     xmm11, QWORD PTR [rbp]
        movaps    xmm8, xmm11
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4224]
        mulsd     xmm12, xmm9
        addsd     xmm8, xmm2
        mulsd     xmm0, xmm5
        mulsd     xmm3, xmm8
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4216]
        addsd     xmm3, xmm15
        mulsd     xmm0, xmm5
        movsd     xmm15, QWORD PTR [rip+_vmldASinHATab+4104]
        mulsd     xmm15, xmm12
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4208]
        movsd     QWORD PTR [8+rbp], xmm15
        movsd     xmm8, QWORD PTR [8+rbp]
        subsd     xmm8, xmm12
        movsd     QWORD PTR [rbp], xmm8
        movaps    xmm8, xmm12
        movsd     xmm14, QWORD PTR [8+rbp]
        addsd     xmm12, xmm3
        mulsd     xmm5, xmm12
        mulsd     xmm0, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmldASinHATab+4184]
        mulsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldASinHATab+4200]
        mulsd     xmm1, xmm12
        movsd     xmm7, QWORD PTR [rbp]
        addsd     xmm5, xmm1
        subsd     xmm14, xmm7
        addsd     xmm5, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4176]
        movaps    xmm1, xmm4
        mulsd     xmm9, xmm0
        mulsd     xmm2, xmm0
        mulsd     xmm11, xmm0
        addsd     xmm1, xmm9
        addsd     xmm5, xmm2
        movsd     QWORD PTR [8+rbp], xmm14
        addsd     xmm5, xmm11
        movsd     xmm15, QWORD PTR [8+rbp]
        subsd     xmm8, xmm15
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm8, QWORD PTR [8+rbp]
        movsd     xmm7, QWORD PTR [rbp]
        movsd     QWORD PTR [8+rbp], xmm1
        movsd     xmm0, QWORD PTR [8+rbp]
        subsd     xmm4, xmm0
        addsd     xmm4, xmm9
        movsd     QWORD PTR [rbp], xmm4
        movsd     xmm0, QWORD PTR [8+rbp]
        movsd     xmm1, QWORD PTR [rbp]
        movsd     xmm4, QWORD PTR [rip+_vmldASinHATab+4192]
        addsd     xmm1, xmm5
        mulsd     xmm3, xmm4
        mulsd     xmm8, xmm4
        mulsd     xmm4, xmm7
        addsd     xmm1, xmm3
        movaps    xmm3, xmm0
        addsd     xmm1, xmm4
        addsd     xmm3, xmm8
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm5, QWORD PTR [8+rbp]
        subsd     xmm0, xmm5
        addsd     xmm0, xmm8
        movsd     QWORD PTR [rbp], xmm0
        movsd     xmm7, QWORD PTR [8+rbp]
        movsd     xmm2, QWORD PTR [rbp]
        mov       r8b, BYTE PTR [7+r8]
        addsd     xmm2, xmm1
        and       r8b, -128
        addsd     xmm7, xmm2
        movsd     QWORD PTR [16+rbp], xmm7
        mov       dl, BYTE PTR [23+rbp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [23+rbp], dl
        mov       rcx, QWORD PTR [16+rbp]
        mov       QWORD PTR [r9], rcx
        jmp       .L_B10_11

.L_B10_6:

        comisd    xmm4, QWORD PTR [rip+_vmldASinHATab+4128]
        jb        .L_B10_8

.L_B10_7:

        addsd     xmm4, xmm0
        movsd     QWORD PTR [8+rbp], xmm4
        movsd     xmm0, QWORD PTR [8+rbp]
        mulsd     xmm0, QWORD PTR [24+rbp]
        movsd     QWORD PTR [16+rbp], xmm0
        mov       dl, BYTE PTR [23+rbp]
        mov       r8b, BYTE PTR [7+r8]
        and       dl, 127
        and       r8b, -128
        or        dl, r8b
        mov       BYTE PTR [23+rbp], dl
        mov       rcx, QWORD PTR [16+rbp]
        mov       QWORD PTR [r9], rcx
        jmp       .L_B10_11

.L_B10_8:

        mulsd     xmm4, xmm4
        movsd     QWORD PTR [8+rbp], xmm4
        movsd     xmm0, QWORD PTR [8+rbp]
        mov       r8b, BYTE PTR [7+r8]
        and       r8b, -128
        addsd     xmm0, QWORD PTR [24+rbp]
        movsd     QWORD PTR [16+rbp], xmm0
        mov       dl, BYTE PTR [23+rbp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [23+rbp], dl
        mov       rcx, QWORD PTR [16+rbp]
        mov       QWORD PTR [r9], rcx
        jmp       .L_B10_11

.L_B10_9:

        movaps    xmm7, xmm0
        movzx     r11d, WORD PTR [rip+_vmldASinHATab+4166]
        subsd     xmm7, xmm4
        mulsd     xmm2, xmm7
        and       r11d, -32753
        movsd     QWORD PTR [24+rbp], xmm2
        movzx     ecx, WORD PTR [30+rbp]
        and       ecx, 32752
        shr       ecx, 4
        add       ecx, -1023
        mov       r10d, ecx
        mov       edx, ecx
        neg       r10d
        add       r10d, 1023
        and       r10d, 2047
        shl       r10d, 4
        movsd     QWORD PTR [32+rbp], xmm0
        or        r11d, r10d
        mov       WORD PTR [38+rbp], r11w
        and       edx, 1
        movsd     xmm3, QWORD PTR [32+rbp]
        mov       r10d, edx
        mulsd     xmm2, xmm3
        movaps    xmm5, xmm2
        movsd     xmm1, QWORD PTR [rip+_vmldASinHATab+4112]
        addsd     xmm5, xmm2
        jne       .L168
        movaps    xmm5, xmm2
.L168:
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4120]
        movaps    xmm3, xmm5
        mulsd     xmm1, xmm5
        addsd     xmm2, xmm12
        movsd     QWORD PTR [40+rbp], xmm2
        movaps    xmm14, xmm1
        mov       r11d, DWORD PTR [40+rbp]
        sub       ecx, edx
        shl       r10d, 8
        and       r11d, 511
        add       r11d, r10d
        lea       r10, QWORD PTR [rip+__ImageBase]
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4496]
        subsd     xmm14, xmm5
        movsd     QWORD PTR [rbp], xmm14
        movsd     xmm4, QWORD PTR [rbp]
        movsd     xmm2, QWORD PTR ["_vmldASinHATab"@imgrel+r10+r11*8]
        subsd     xmm1, xmm4
        movaps    xmm8, xmm2
        movaps    xmm11, xmm1
        mulsd     xmm8, xmm2
        subsd     xmm3, xmm1
        mulsd     xmm1, xmm2
        mulsd     xmm11, xmm8
        mulsd     xmm8, xmm3
        subsd     xmm11, xmm0
        shr       ecx, 1
        addsd     xmm8, xmm11
        mulsd     xmm9, xmm8
        add       ecx, 1023
        and       ecx, 2047
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4488]
        mulsd     xmm9, xmm8
        movzx     r10d, WORD PTR [rip+_vmldASinHATab+4166]
        shl       ecx, 4
        and       r10d, -32753
        movsd     QWORD PTR [48+rbp], xmm0
        or        r10d, ecx
        mov       WORD PTR [54+rbp], r10w
        movsd     xmm0, QWORD PTR [48+rbp]
        mulsd     xmm1, xmm0
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4480]
        mulsd     xmm9, xmm8
        movsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4336]
        movsd     xmm4, QWORD PTR [rip+_vmldASinHATab+4320]
        movaps    xmm12, xmm4
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4472]
        addsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4344]
        addsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4328]
        mulsd     xmm9, xmm8
        mulsd     xmm14, xmm7
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4464]
        addsd     xmm12, xmm14
        mulsd     xmm9, xmm8
        mulsd     xmm12, xmm7
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4456]
        mulsd     xmm9, xmm8
        movaps    xmm14, xmm7
        movsd     xmm11, QWORD PTR [rip+_vmldASinHATab+4304]
        addsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4448]
        addsd     xmm11, QWORD PTR [rip+_vmldASinHATab+4312]
        mulsd     xmm8, xmm9
        addsd     xmm11, xmm12
        mulsd     xmm8, xmm2
        mulsd     xmm2, xmm3
        mulsd     xmm5, xmm8
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4104]
        addsd     xmm2, xmm5
        mulsd     xmm9, xmm7
        mulsd     xmm2, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmldASinHATab+4104]
        mulsd     xmm5, xmm1
        movsd     QWORD PTR [8+rbp], xmm5
        movsd     xmm8, QWORD PTR [8+rbp]
        movsd     xmm12, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm8, xmm1
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     xmm15, QWORD PTR [rbp]
        subsd     xmm3, xmm15
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm5, QWORD PTR [8+rbp]
        subsd     xmm1, xmm5
        movsd     QWORD PTR [rbp], xmm1
        movsd     xmm5, QWORD PTR [8+rbp]
        movsd     xmm1, QWORD PTR [rbp]
        movsd     QWORD PTR [8+rbp], xmm9
        addsd     xmm1, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4440]
        mulsd     xmm2, xmm7
        movsd     xmm8, QWORD PTR [8+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4432]
        subsd     xmm8, xmm7
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm3, QWORD PTR [8+rbp]
        movsd     xmm0, QWORD PTR [rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4424]
        subsd     xmm3, xmm0
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [8+rbp], xmm3
        movsd     xmm15, QWORD PTR [8+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4416]
        subsd     xmm14, xmm15
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [rbp], xmm14
        movsd     xmm8, QWORD PTR [8+rbp]
        movaps    xmm15, xmm8
        movaps    xmm0, xmm8
        mulsd     xmm15, xmm8
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4408]
        addsd     xmm0, xmm7
        mulsd     xmm8, xmm4
        mulsd     xmm2, xmm7
        mulsd     xmm12, xmm15
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4400]
        mulsd     xmm2, xmm7
        movsd     xmm3, QWORD PTR [rbp]
        movsd     QWORD PTR [8+rbp], xmm12
        movsd     xmm14, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm3
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4392]
        subsd     xmm14, xmm15
        mulsd     xmm4, xmm3
        mulsd     xmm2, xmm7
        movsd     QWORD PTR [rbp], xmm14
        movsd     xmm9, QWORD PTR [8+rbp]
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4384]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4376]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4368]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4360]
        mulsd     xmm2, xmm7
        addsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4352]
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        mulsd     xmm2, xmm7
        addsd     xmm11, xmm2
        mulsd     xmm1, xmm11
        movsd     xmm11, QWORD PTR [rbp]
        subsd     xmm9, xmm11
        movsd     QWORD PTR [8+rbp], xmm9
        movsd     xmm14, QWORD PTR [8+rbp]
        movsd     xmm9, QWORD PTR [rip+_vmldASinHATab+4304]
        subsd     xmm15, xmm14
        movsd     QWORD PTR [rbp], xmm15
        movaps    xmm15, xmm8
        movsd     xmm11, QWORD PTR [8+rbp]
        mulsd     xmm11, QWORD PTR [rip+_vmldASinHATab+4336]
        movsd     xmm14, QWORD PTR [rbp]
        addsd     xmm15, xmm11
        addsd     xmm14, xmm0
        movsd     QWORD PTR [8+rbp], xmm15
        movsd     xmm12, QWORD PTR [8+rbp]
        movsd     QWORD PTR [40+rbp], xmm11
        subsd     xmm8, xmm12
        mulsd     xmm14, QWORD PTR [rip+_vmldASinHATab+4336]
        addsd     xmm8, xmm11
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm11, QWORD PTR [8+rbp]
        movsd     xmm8, QWORD PTR [rip+_vmldASinHATab+4304]
        movsd     xmm12, QWORD PTR [rbp]
        addsd     xmm8, xmm11
        movsd     QWORD PTR [8+rbp], xmm8
        movsd     xmm8, QWORD PTR [8+rbp]
        movsd     xmm15, QWORD PTR [rip+_vmldASinHATab+4104]
        subsd     xmm9, xmm8
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4344]
        addsd     xmm9, xmm11
        mulsd     xmm0, xmm7
        movsd     QWORD PTR [rbp], xmm9
        movsd     xmm9, QWORD PTR [8+rbp]
        mulsd     xmm15, xmm9
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4328]
        movsd     xmm11, QWORD PTR [rbp]
        movsd     QWORD PTR [8+rbp], xmm15
        movsd     xmm8, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm7
        subsd     xmm8, xmm9
        movsd     QWORD PTR [rbp], xmm8
        movsd     xmm8, QWORD PTR [8+rbp]
        movsd     xmm15, QWORD PTR [rbp]
        subsd     xmm8, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4312]
        movsd     QWORD PTR [8+rbp], xmm8
        addsd     xmm0, xmm2
        movsd     xmm15, QWORD PTR [8+rbp]
        mulsd     xmm0, xmm5
        subsd     xmm9, xmm15
        movsd     QWORD PTR [rbp], xmm9
        movsd     xmm8, QWORD PTR [8+rbp]
        movsd     xmm9, QWORD PTR [rbp]
        movsd     xmm2, QWORD PTR [rip+_vmldASinHATab+4152]
        addsd     xmm9, xmm12
        addsd     xmm9, xmm11
        addsd     xmm9, xmm4
        addsd     xmm9, xmm14
        mulsd     xmm9, xmm5
        mulsd     xmm5, xmm8
        addsd     xmm1, xmm9
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [rip+_vmldASinHATab+4144]
        movaps    xmm7, xmm0
        subsd     xmm2, xmm1
        subsd     xmm7, xmm5
        movsd     QWORD PTR [8+rbp], xmm7
        movsd     xmm7, QWORD PTR [8+rbp]
        subsd     xmm0, xmm7
        subsd     xmm0, xmm5
        movsd     QWORD PTR [rbp], xmm0
        movsd     xmm4, QWORD PTR [8+rbp]
        movsd     xmm3, QWORD PTR [rbp]
        mov       r8b, BYTE PTR [7+r8]
        addsd     xmm3, xmm2
        and       r8b, -128
        addsd     xmm4, xmm3
        movsd     QWORD PTR [16+rbp], xmm4
        mov       dl, BYTE PTR [23+rbp]
        and       dl, 127
        or        dl, r8b
        mov       BYTE PTR [23+rbp], dl
        mov       rcx, QWORD PTR [16+rbp]
        mov       QWORD PTR [r9], rcx
        jmp       .L_B10_11

.L_B10_10:

        mov       eax, 1
        subsd     xmm1, xmm1
        divsd     xmm1, xmm1
        movsd     QWORD PTR [r9], xmm1

.L_B10_11:

        movups    xmm7, XMMWORD PTR [128+rbp]
        movups    xmm8, XMMWORD PTR [80+rbp]
        movups    xmm9, XMMWORD PTR [64+rbp]
        movups    xmm11, XMMWORD PTR [112+rbp]
        movups    xmm12, XMMWORD PTR [144+rbp]
        movups    xmm14, XMMWORD PTR [96+rbp]
        movups    xmm15, XMMWORD PTR [160+rbp]
        lea       rsp, QWORD PTR [176+rbp]
        pop       rbp
        ret

.L_B10_12:

        divsd     xmm1, xmm1
        movsd     QWORD PTR [r9], xmm1
        test      DWORD PTR [4+r8], 1048575
        jne       .L_B10_11

.L_B10_13:

        cmp       DWORD PTR [r8], 0
        sete      al
        jmp       .L_B10_11
        .align    16, 0x90

.L_B10_14:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dasin_ha_cout_rare_internal_B1_B13:
        .long   621959425
        .long   686169
        .long   493650
        .long   432205
        .long   637000
        .long   772142
        .long   583716
        .long   849948
        .long   17564433
        .long   1342504986

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_14
        .rva    _unwind___jsvml_dasin_ha_cout_rare_internal_B1_B13

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dasin_ha_data_internal
__jsvml_dasin_ha_data_internal:
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
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   805306368
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
        .long   0
        .long   4294967040
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
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   4227858432
        .long   4294967295
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   0
        .long   1073741824
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   2570790083
        .long   3213983744
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   1869665325
        .long   1067712512
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294966935
        .long   3216506879
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   4294967197
        .long   1070596095
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   3339630857
        .long   1067480352
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   4158370029
        .long   3213949719
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   3216784302
        .long   1066680132
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   2513723093
        .long   1064982579
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   721210070
        .long   1065941212
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   3414736215
        .long   1066167739
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   4114132270
        .long   1066518236
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3957258973
        .long   1066854556
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3778730174
        .long   1067392114
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   3014936056
        .long   1067899757
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   859300062
        .long   1068708659
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
        .long   1431655068
        .long   1069897045
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
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   0
        .long   4294705152
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   4131758366
        .long   1067674714
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   3936260738
        .long   1066197319
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   354394453
        .long   1067472564
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   709676628
        .long   1067895021
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   3958922090
        .long   1068708761
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   2160605765
        .long   1069897044
        .long   0
        .long   2146435072
        .long   0
        .long   4293918720
        .byte 0
        .org .+46
        .byte   0
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .byte 0
        .org .+46
        .byte   0
        .long   0
        .long   0
        .long   0
        .long   2147483648
        .byte 0
        .org .+46
        .byte   0
_vmldASinHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   1072689152
        .long   0
        .long   1072685056
        .long   0
        .long   1072680960
        .long   0
        .long   1072676864
        .long   0
        .long   1072672768
        .long   0
        .long   1072668672
        .long   0
        .long   1072665600
        .long   0
        .long   1072661504
        .long   0
        .long   1072657408
        .long   0
        .long   1072653312
        .long   0
        .long   1072649216
        .long   0
        .long   1072646144
        .long   0
        .long   1072642048
        .long   0
        .long   1072637952
        .long   0
        .long   1072634880
        .long   0
        .long   1072630784
        .long   0
        .long   1072626688
        .long   0
        .long   1072623616
        .long   0
        .long   1072619520
        .long   0
        .long   1072615424
        .long   0
        .long   1072612352
        .long   0
        .long   1072608256
        .long   0
        .long   1072605184
        .long   0
        .long   1072601088
        .long   0
        .long   1072598016
        .long   0
        .long   1072593920
        .long   0
        .long   1072590848
        .long   0
        .long   1072586752
        .long   0
        .long   1072583680
        .long   0
        .long   1072580608
        .long   0
        .long   1072576512
        .long   0
        .long   1072573440
        .long   0
        .long   1072570368
        .long   0
        .long   1072566272
        .long   0
        .long   1072563200
        .long   0
        .long   1072560128
        .long   0
        .long   1072556032
        .long   0
        .long   1072552960
        .long   0
        .long   1072549888
        .long   0
        .long   1072546816
        .long   0
        .long   1072542720
        .long   0
        .long   1072539648
        .long   0
        .long   1072536576
        .long   0
        .long   1072533504
        .long   0
        .long   1072530432
        .long   0
        .long   1072527360
        .long   0
        .long   1072523264
        .long   0
        .long   1072520192
        .long   0
        .long   1072517120
        .long   0
        .long   1072514048
        .long   0
        .long   1072510976
        .long   0
        .long   1072507904
        .long   0
        .long   1072504832
        .long   0
        .long   1072501760
        .long   0
        .long   1072498688
        .long   0
        .long   1072495616
        .long   0
        .long   1072492544
        .long   0
        .long   1072489472
        .long   0
        .long   1072486400
        .long   0
        .long   1072483328
        .long   0
        .long   1072480256
        .long   0
        .long   1072478208
        .long   0
        .long   1072475136
        .long   0
        .long   1072472064
        .long   0
        .long   1072468992
        .long   0
        .long   1072465920
        .long   0
        .long   1072462848
        .long   0
        .long   1072459776
        .long   0
        .long   1072457728
        .long   0
        .long   1072454656
        .long   0
        .long   1072451584
        .long   0
        .long   1072448512
        .long   0
        .long   1072446464
        .long   0
        .long   1072443392
        .long   0
        .long   1072440320
        .long   0
        .long   1072437248
        .long   0
        .long   1072435200
        .long   0
        .long   1072432128
        .long   0
        .long   1072429056
        .long   0
        .long   1072427008
        .long   0
        .long   1072423936
        .long   0
        .long   1072420864
        .long   0
        .long   1072418816
        .long   0
        .long   1072415744
        .long   0
        .long   1072412672
        .long   0
        .long   1072410624
        .long   0
        .long   1072407552
        .long   0
        .long   1072405504
        .long   0
        .long   1072402432
        .long   0
        .long   1072400384
        .long   0
        .long   1072397312
        .long   0
        .long   1072395264
        .long   0
        .long   1072392192
        .long   0
        .long   1072390144
        .long   0
        .long   1072387072
        .long   0
        .long   1072385024
        .long   0
        .long   1072381952
        .long   0
        .long   1072379904
        .long   0
        .long   1072376832
        .long   0
        .long   1072374784
        .long   0
        .long   1072371712
        .long   0
        .long   1072369664
        .long   0
        .long   1072366592
        .long   0
        .long   1072364544
        .long   0
        .long   1072362496
        .long   0
        .long   1072359424
        .long   0
        .long   1072357376
        .long   0
        .long   1072355328
        .long   0
        .long   1072352256
        .long   0
        .long   1072350208
        .long   0
        .long   1072347136
        .long   0
        .long   1072345088
        .long   0
        .long   1072343040
        .long   0
        .long   1072340992
        .long   0
        .long   1072337920
        .long   0
        .long   1072335872
        .long   0
        .long   1072333824
        .long   0
        .long   1072330752
        .long   0
        .long   1072328704
        .long   0
        .long   1072326656
        .long   0
        .long   1072324608
        .long   0
        .long   1072321536
        .long   0
        .long   1072319488
        .long   0
        .long   1072317440
        .long   0
        .long   1072315392
        .long   0
        .long   1072313344
        .long   0
        .long   1072310272
        .long   0
        .long   1072308224
        .long   0
        .long   1072306176
        .long   0
        .long   1072304128
        .long   0
        .long   1072302080
        .long   0
        .long   1072300032
        .long   0
        .long   1072296960
        .long   0
        .long   1072294912
        .long   0
        .long   1072292864
        .long   0
        .long   1072290816
        .long   0
        .long   1072288768
        .long   0
        .long   1072286720
        .long   0
        .long   1072284672
        .long   0
        .long   1072282624
        .long   0
        .long   1072280576
        .long   0
        .long   1072278528
        .long   0
        .long   1072275456
        .long   0
        .long   1072273408
        .long   0
        .long   1072271360
        .long   0
        .long   1072269312
        .long   0
        .long   1072267264
        .long   0
        .long   1072265216
        .long   0
        .long   1072263168
        .long   0
        .long   1072261120
        .long   0
        .long   1072259072
        .long   0
        .long   1072257024
        .long   0
        .long   1072254976
        .long   0
        .long   1072252928
        .long   0
        .long   1072250880
        .long   0
        .long   1072248832
        .long   0
        .long   1072246784
        .long   0
        .long   1072244736
        .long   0
        .long   1072243712
        .long   0
        .long   1072241664
        .long   0
        .long   1072239616
        .long   0
        .long   1072237568
        .long   0
        .long   1072235520
        .long   0
        .long   1072233472
        .long   0
        .long   1072231424
        .long   0
        .long   1072229376
        .long   0
        .long   1072227328
        .long   0
        .long   1072225280
        .long   0
        .long   1072223232
        .long   0
        .long   1072222208
        .long   0
        .long   1072220160
        .long   0
        .long   1072218112
        .long   0
        .long   1072216064
        .long   0
        .long   1072214016
        .long   0
        .long   1072211968
        .long   0
        .long   1072210944
        .long   0
        .long   1072208896
        .long   0
        .long   1072206848
        .long   0
        .long   1072204800
        .long   0
        .long   1072202752
        .long   0
        .long   1072201728
        .long   0
        .long   1072199680
        .long   0
        .long   1072197632
        .long   0
        .long   1072195584
        .long   0
        .long   1072193536
        .long   0
        .long   1072192512
        .long   0
        .long   1072190464
        .long   0
        .long   1072188416
        .long   0
        .long   1072186368
        .long   0
        .long   1072185344
        .long   0
        .long   1072183296
        .long   0
        .long   1072181248
        .long   0
        .long   1072179200
        .long   0
        .long   1072178176
        .long   0
        .long   1072176128
        .long   0
        .long   1072174080
        .long   0
        .long   1072173056
        .long   0
        .long   1072171008
        .long   0
        .long   1072168960
        .long   0
        .long   1072167936
        .long   0
        .long   1072165888
        .long   0
        .long   1072163840
        .long   0
        .long   1072161792
        .long   0
        .long   1072160768
        .long   0
        .long   1072158720
        .long   0
        .long   1072157696
        .long   0
        .long   1072155648
        .long   0
        .long   1072153600
        .long   0
        .long   1072152576
        .long   0
        .long   1072150528
        .long   0
        .long   1072148480
        .long   0
        .long   1072147456
        .long   0
        .long   1072145408
        .long   0
        .long   1072143360
        .long   0
        .long   1072142336
        .long   0
        .long   1072140288
        .long   0
        .long   1072139264
        .long   0
        .long   1072137216
        .long   0
        .long   1072135168
        .long   0
        .long   1072134144
        .long   0
        .long   1072132096
        .long   0
        .long   1072131072
        .long   0
        .long   1072129024
        .long   0
        .long   1072128000
        .long   0
        .long   1072125952
        .long   0
        .long   1072124928
        .long   0
        .long   1072122880
        .long   0
        .long   1072120832
        .long   0
        .long   1072119808
        .long   0
        .long   1072117760
        .long   0
        .long   1072116736
        .long   0
        .long   1072114688
        .long   0
        .long   1072113664
        .long   0
        .long   1072111616
        .long   0
        .long   1072110592
        .long   0
        .long   1072108544
        .long   0
        .long   1072107520
        .long   0
        .long   1072105472
        .long   0
        .long   1072104448
        .long   0
        .long   1072102400
        .long   0
        .long   1072101376
        .long   0
        .long   1072099328
        .long   0
        .long   1072098304
        .long   0
        .long   1072096256
        .long   0
        .long   1072095232
        .long   0
        .long   1072094208
        .long   0
        .long   1072092160
        .long   0
        .long   1072091136
        .long   0
        .long   1072089088
        .long   0
        .long   1072088064
        .long   0
        .long   1072086016
        .long   0
        .long   1072084992
        .long   0
        .long   1072082944
        .long   0
        .long   1072081920
        .long   0
        .long   1072080896
        .long   0
        .long   1072078848
        .long   0
        .long   1072075776
        .long   0
        .long   1072073728
        .long   0
        .long   1072070656
        .long   0
        .long   1072067584
        .long   0
        .long   1072064512
        .long   0
        .long   1072061440
        .long   0
        .long   1072059392
        .long   0
        .long   1072056320
        .long   0
        .long   1072053248
        .long   0
        .long   1072051200
        .long   0
        .long   1072048128
        .long   0
        .long   1072045056
        .long   0
        .long   1072043008
        .long   0
        .long   1072039936
        .long   0
        .long   1072037888
        .long   0
        .long   1072034816
        .long   0
        .long   1072031744
        .long   0
        .long   1072029696
        .long   0
        .long   1072026624
        .long   0
        .long   1072024576
        .long   0
        .long   1072021504
        .long   0
        .long   1072019456
        .long   0
        .long   1072016384
        .long   0
        .long   1072014336
        .long   0
        .long   1072011264
        .long   0
        .long   1072009216
        .long   0
        .long   1072006144
        .long   0
        .long   1072004096
        .long   0
        .long   1072002048
        .long   0
        .long   1071998976
        .long   0
        .long   1071996928
        .long   0
        .long   1071993856
        .long   0
        .long   1071991808
        .long   0
        .long   1071989760
        .long   0
        .long   1071986688
        .long   0
        .long   1071984640
        .long   0
        .long   1071982592
        .long   0
        .long   1071979520
        .long   0
        .long   1071977472
        .long   0
        .long   1071975424
        .long   0
        .long   1071972352
        .long   0
        .long   1071970304
        .long   0
        .long   1071968256
        .long   0
        .long   1071966208
        .long   0
        .long   1071964160
        .long   0
        .long   1071961088
        .long   0
        .long   1071959040
        .long   0
        .long   1071956992
        .long   0
        .long   1071954944
        .long   0
        .long   1071952896
        .long   0
        .long   1071949824
        .long   0
        .long   1071947776
        .long   0
        .long   1071945728
        .long   0
        .long   1071943680
        .long   0
        .long   1071941632
        .long   0
        .long   1071939584
        .long   0
        .long   1071937536
        .long   0
        .long   1071935488
        .long   0
        .long   1071933440
        .long   0
        .long   1071930368
        .long   0
        .long   1071928320
        .long   0
        .long   1071926272
        .long   0
        .long   1071924224
        .long   0
        .long   1071922176
        .long   0
        .long   1071920128
        .long   0
        .long   1071918080
        .long   0
        .long   1071916032
        .long   0
        .long   1071913984
        .long   0
        .long   1071911936
        .long   0
        .long   1071909888
        .long   0
        .long   1071907840
        .long   0
        .long   1071905792
        .long   0
        .long   1071903744
        .long   0
        .long   1071901696
        .long   0
        .long   1071900672
        .long   0
        .long   1071898624
        .long   0
        .long   1071896576
        .long   0
        .long   1071894528
        .long   0
        .long   1071892480
        .long   0
        .long   1071890432
        .long   0
        .long   1071888384
        .long   0
        .long   1071886336
        .long   0
        .long   1071884288
        .long   0
        .long   1071883264
        .long   0
        .long   1071881216
        .long   0
        .long   1071879168
        .long   0
        .long   1071877120
        .long   0
        .long   1071875072
        .long   0
        .long   1071873024
        .long   0
        .long   1071872000
        .long   0
        .long   1071869952
        .long   0
        .long   1071867904
        .long   0
        .long   1071865856
        .long   0
        .long   1071864832
        .long   0
        .long   1071862784
        .long   0
        .long   1071860736
        .long   0
        .long   1071858688
        .long   0
        .long   1071856640
        .long   0
        .long   1071855616
        .long   0
        .long   1071853568
        .long   0
        .long   1071851520
        .long   0
        .long   1071850496
        .long   0
        .long   1071848448
        .long   0
        .long   1071846400
        .long   0
        .long   1071844352
        .long   0
        .long   1071843328
        .long   0
        .long   1071841280
        .long   0
        .long   1071839232
        .long   0
        .long   1071838208
        .long   0
        .long   1071836160
        .long   0
        .long   1071834112
        .long   0
        .long   1071833088
        .long   0
        .long   1071831040
        .long   0
        .long   1071830016
        .long   0
        .long   1071827968
        .long   0
        .long   1071825920
        .long   0
        .long   1071824896
        .long   0
        .long   1071822848
        .long   0
        .long   1071821824
        .long   0
        .long   1071819776
        .long   0
        .long   1071817728
        .long   0
        .long   1071816704
        .long   0
        .long   1071814656
        .long   0
        .long   1071813632
        .long   0
        .long   1071811584
        .long   0
        .long   1071810560
        .long   0
        .long   1071808512
        .long   0
        .long   1071806464
        .long   0
        .long   1071805440
        .long   0
        .long   1071803392
        .long   0
        .long   1071802368
        .long   0
        .long   1071800320
        .long   0
        .long   1071799296
        .long   0
        .long   1071797248
        .long   0
        .long   1071796224
        .long   0
        .long   1071794176
        .long   0
        .long   1071793152
        .long   0
        .long   1071791104
        .long   0
        .long   1071790080
        .long   0
        .long   1071788032
        .long   0
        .long   1071787008
        .long   0
        .long   1071784960
        .long   0
        .long   1071783936
        .long   0
        .long   1071782912
        .long   0
        .long   1071780864
        .long   0
        .long   1071779840
        .long   0
        .long   1071777792
        .long   0
        .long   1071776768
        .long   0
        .long   1071774720
        .long   0
        .long   1071773696
        .long   0
        .long   1071772672
        .long   0
        .long   1071770624
        .long   0
        .long   1071769600
        .long   0
        .long   1071767552
        .long   0
        .long   1071766528
        .long   0
        .long   1071765504
        .long   0
        .long   1071763456
        .long   0
        .long   1071762432
        .long   0
        .long   1071760384
        .long   0
        .long   1071759360
        .long   0
        .long   1071758336
        .long   0
        .long   1071756288
        .long   0
        .long   1071755264
        .long   0
        .long   1071754240
        .long   0
        .long   1071752192
        .long   0
        .long   1071751168
        .long   0
        .long   1071750144
        .long   0
        .long   1071748096
        .long   0
        .long   1071747072
        .long   0
        .long   1071746048
        .long   0
        .long   1071744000
        .long   0
        .long   1071742976
        .long   0
        .long   1071741952
        .long   0
        .long   1071739904
        .long   0
        .long   1071738880
        .long   0
        .long   1071737856
        .long   0
        .long   1071736832
        .long   0
        .long   1071734784
        .long   0
        .long   1071733760
        .long   0
        .long   1071732736
        .long   0
        .long   1071730688
        .long   0
        .long   1071729664
        .long   0
        .long   1071728640
        .long   0
        .long   1071727616
        .long   0
        .long   1071725568
        .long   0
        .long   1071724544
        .long   0
        .long   1071723520
        .long   0
        .long   1071722496
        .long   0
        .long   1071720448
        .long   0
        .long   1071719424
        .long   0
        .long   1071718400
        .long   0
        .long   1071717376
        .long   0
        .long   1071715328
        .long   0
        .long   1071714304
        .long   0
        .long   1071713280
        .long   0
        .long   1071712256
        .long   0
        .long   1071711232
        .long   0
        .long   1071709184
        .long   0
        .long   1071708160
        .long   0
        .long   1071707136
        .long   0
        .long   1071706112
        .long   0
        .long   1071705088
        .long   0
        .long   1071704064
        .long   0
        .long   1071702016
        .long   0
        .long   1071700992
        .long   0
        .long   1071699968
        .long   0
        .long   1071698944
        .long   0
        .long   1071697920
        .long   0
        .long   1071696896
        .long   0
        .long   1071694848
        .long   0
        .long   1071693824
        .long   0
        .long   1071692800
        .long   0
        .long   1071691776
        .long   0
        .long   1071690752
        .long   0
        .long   1071689728
        .long   0
        .long   1071688704
        .long   0
        .long   1071686656
        .long   0
        .long   1071685632
        .long   0
        .long   1071684608
        .long   0
        .long   1071683584
        .long   0
        .long   1071682560
        .long   0
        .long   1071681536
        .long   0
        .long   1071680512
        .long   0
        .long   1071679488
        .long   0
        .long   1071677440
        .long   0
        .long   1071676416
        .long   0
        .long   1071675392
        .long   0
        .long   1071674368
        .long   0
        .long   1071673344
        .long   0
        .long   1071672320
        .long   0
        .long   1071671296
        .long   0
        .long   1071670272
        .long   0
        .long   1071669248
        .long   0
        .long   1071668224
        .long   0
        .long   1071667200
        .long   0
        .long   1071666176
        .long   0
        .long   1071665152
        .long   0
        .long   1071663104
        .long   0
        .long   1071662080
        .long   0
        .long   1071661056
        .long   0
        .long   1071660032
        .long   0
        .long   1071659008
        .long   0
        .long   1071657984
        .long   0
        .long   1071656960
        .long   0
        .long   1071655936
        .long   0
        .long   1071654912
        .long   0
        .long   1071653888
        .long   0
        .long   1071652864
        .long   0
        .long   1071651840
        .long   0
        .long   1071650816
        .long   0
        .long   1071649792
        .long   0
        .long   1071648768
        .long   0
        .long   1071647744
        .long   0
        .long   1071646720
        .long   0
        .long   1071645696
        .long   0
        .long   1071644672
        .long   0
        .long   1101004800
        .long   1073741824
        .long   1095761920
        .long   256
        .long   1118830592
        .long   0
        .long   1048576
        .long   0
        .long   1017118720
        .long   1413754136
        .long   1073291771
        .long   856972295
        .long   1016178214
        .long   0
        .long   1072693248
        .long   0
        .long   1071644672
        .long   1476395008
        .long   1069897045
        .long   1768958041
        .long   3189069141
        .long   805306368
        .long   1068708659
        .long   3580333578
        .long   1040816593
        .long   3067382784
        .long   1067899757
        .long   3397590151
        .long   1067392113
        .long   2939529726
        .long   1066854585
        .long   1423429166
        .long   1066517752
        .long   1775218934
        .long   1066178574
        .long   1185392460
        .long   1065859647
        .long   289998670
        .long   1065577550
        .long   3179807072
        .long   1065648121
        .long   3781007284
        .long   1061576176
        .long   2482106687
        .long   1067019199
        .long   763519713
        .long   3214591591
        .long   3695107454
        .long   1067530646
        .long   0
        .long   1073741824
        .long   1124791109
        .long   1006764147
        .long   1476395008
        .long   1069897045
        .long   1953913876
        .long   3189069141
        .long   805306368
        .long   1067660083
        .long   165110192
        .long   1039768033
        .long   3067304082
        .long   1065802605
        .long   3404727379
        .long   1064246385
        .long   2737480376
        .long   1062660281
        .long   933797922
        .long   1061274873
        .long   1475716730
        .long   1059887095
        .long   1511619763
        .long   1058519827
        .long   556024211
        .long   1057187555
        .long   3482101045
        .long   1056217350
        .long   1174622859
        .long   1050762633
        .long   899668651
        .long   1055506366
        .long   1081094694
        .long   3202035365
        .long   2559814773
        .long   1053906576
        .long   0
        .long   3219128320
        .long   0
        .long   1071120384
        .long   0
        .long   3218341888
        .long   0
        .long   1070694400
        .long   0
        .long   3218046976
        .long   0
        .long   1070391296
        .long   0
        .long   3217739776
        .data
#endif
