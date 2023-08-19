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
        .globl __jsvml_sin2_ha_e9

__jsvml_sin2_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 488
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [304+rsp], xmm15
        xor       edx, edx
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovups   XMMWORD PTR [352+rsp], xmm12
        vmovups   XMMWORD PTR [368+rsp], xmm11
        vmovups   XMMWORD PTR [384+rsp], xmm10
        vmovups   XMMWORD PTR [400+rsp], xmm9
        vmovups   XMMWORD PTR [416+rsp], xmm8
        vmovapd   xmm8, xmm0
        vmovups   XMMWORD PTR [432+rsp], xmm7
        vmovups   XMMWORD PTR [448+rsp], xmm6
        mov       QWORD PTR [464+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vandnpd   xmm7, xmm1, xmm8
        vandpd    xmm1, xmm8, xmm1
        vmulpd    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vaddpd    xmm10, xmm9, xmm2
        vsubpd    xmm4, xmm10, xmm9
        vmulpd    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmulpd    xmm13, xmm4, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        vsubpd    xmm14, xmm1, xmm2
        vmulpd    xmm5, xmm4, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        vsubpd    xmm6, xmm14, xmm13
        vandps    xmm3, xmm10, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vsubpd    xmm15, xmm14, xmm6
        vmovd     ecx, xmm3
        vsubpd    xmm11, xmm15, xmm13
        shl       ecx, 5
        vpextrd   r8d, xmm3, 2
        shl       r8d, 5
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm15, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        vmulpd    xmm9, xmm15, xmm6
        vsubpd    xmm5, xmm11, xmm5
        vmovq     xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm13, xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        vmulpd    xmm10, xmm13, xmm6
        vmovq     xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vmovhpd   xmm3, xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vaddpd    xmm11, xmm3, xmm9
        vaddpd    xmm4, xmm10, xmm11
        vsubpd    xmm14, xmm3, xmm11
        vsubpd    xmm12, xmm11, xmm4
        vaddpd    xmm0, xmm9, xmm14
        vaddpd    xmm2, xmm10, xmm12
        vaddpd    xmm14, xmm0, xmm2
        vmulpd    xmm0, xmm6, xmm6
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmulpd    xmm11, xmm2, xmm0
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vaddpd    xmm10, xmm9, xmm11
        vmulpd    xmm12, xmm0, xmm10
        vaddpd    xmm10, xmm13, xmm15
        vmulpd    xmm11, xmm6, xmm12
        vmulpd    xmm15, xmm11, xmm10
        vaddpd    xmm12, xmm14, xmm15
        vmovupd   xmm15, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmulpd    xmm13, xmm15, xmm0
        vmovupd   xmm14, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vaddpd    xmm11, xmm14, xmm13
        vmulpd    xmm11, xmm0, xmm11
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vaddpd    xmm11, xmm13, xmm11
        vmulpd    xmm0, xmm0, xmm11
        vmulpd    xmm11, xmm3, xmm0
        vmulpd    xmm3, xmm3, xmm6
        vaddpd    xmm11, xmm12, xmm11
        vsubpd    xmm0, xmm10, xmm3
        vmulpd    xmm5, xmm5, xmm0
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vmovhpd   xmm3, xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vaddpd    xmm0, xmm3, xmm5
        vaddpd    xmm3, xmm11, xmm0
        vaddpd    xmm4, xmm4, xmm3
        vcmpnlepd xmm3, xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vmovmskpd r9d, xmm3
        vxorpd    xmm0, xmm4, xmm7
        mov       QWORD PTR [472+rsp], r13
        test      r9d, r9d
        jne       .L_B1_12

.L_B1_2:

        test      edx, edx
        jne       .L_B1_4

.L_B1_3:

        vmovups   xmm6, XMMWORD PTR [448+rsp]
        vmovups   xmm7, XMMWORD PTR [432+rsp]
        vmovups   xmm8, XMMWORD PTR [416+rsp]
        vmovups   xmm9, XMMWORD PTR [400+rsp]
        vmovups   xmm10, XMMWORD PTR [384+rsp]
        vmovups   xmm11, XMMWORD PTR [368+rsp]
        vmovups   xmm12, XMMWORD PTR [352+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [464+rsp]
        add       rsp, 488
        ret

.L_B1_4:

        vmovupd   XMMWORD PTR [r13], xmm8
        vmovupd   XMMWORD PTR [64+r13], xmm0
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
        cmp       ebx, 2
        jl        .L_B1_8

.L_B1_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B1_3

.L_B1_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B1_9

.L_B1_12:

        vpand     xmm12, xmm1, XMMWORD PTR [rip+_2il0floatpacket_36]
        vpsrlq    xmm11, xmm12, 52
        vmovupd   XMMWORD PTR [32+rsp], xmm9
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vmovd     ecx, xmm11
        vandpd    xmm10, xmm9, xmm1
        vmovupd   XMMWORD PTR [64+rsp], xmm14
        vpand     xmm4, xmm1, XMMWORD PTR [rip+_2il0floatpacket_37]
        vpextrd   r9d, xmm11, 2
        vcmpeqpd  xmm14, xmm10, xmm9
        vmovupd   XMMWORD PTR [96+rsp], xmm7
        lea       r8d, DWORD PTR [rcx+rcx*2]
        shl       r8d, 3
        lea       r10d, DWORD PTR [r9+r9*2]
        shl       r10d, 3
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        vpaddq    xmm7, xmm4, XMMWORD PTR [rip+_2il0floatpacket_38]
        vmovmskpd edx, xmm14
        vmovupd   XMMWORD PTR [80+rsp], xmm13
        vpsrlq    xmm11, xmm7, 32
        vmovupd   XMMWORD PTR [144+rsp], xmm8
        vmovq     xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        vmovhpd   xmm13, xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r10]
        vmovdqu   xmm14, XMMWORD PTR [rip+_2il0floatpacket_39]
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        vmovupd   XMMWORD PTR [128+rsp], xmm0
        vpsrlq    xmm0, xmm13, 32
        vmovhpd   xmm12, xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r10]
        vpand     xmm8, xmm7, xmm14
        vpand     xmm13, xmm13, xmm14
        vpand     xmm9, xmm12, xmm14
        vmovhpd   xmm10, xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r10]
        vpsrlq    xmm12, xmm12, 32
        vmovupd   XMMWORD PTR [48+rsp], xmm15
        vpand     xmm4, xmm10, xmm14
        vpmuludq  xmm15, xmm11, xmm13
        vpsrlq    xmm6, xmm10, 32
        vpmuludq  xmm13, xmm11, xmm0
        vpmuludq  xmm0, xmm8, xmm0
        vpmuludq  xmm5, xmm8, xmm6
        vpmuludq  xmm6, xmm11, xmm6
        vpmuludq  xmm10, xmm8, xmm9
        vpmuludq  xmm9, xmm11, xmm9
        vmovupd   XMMWORD PTR [112+rsp], xmm3
        vpsrlq    xmm0, xmm0, 32
        vpmuludq  xmm3, xmm8, xmm4
        vpsrlq    xmm15, xmm15, 32
        vpmuludq  xmm4, xmm11, xmm4
        vpmuludq  xmm8, xmm8, xmm12
        vpaddq    xmm13, xmm13, xmm0
        vpand     xmm7, xmm3, xmm14
        vpsrlq    xmm3, xmm3, 32
        vpaddq    xmm7, xmm7, xmm13
        vpaddq    xmm13, xmm15, xmm7
        vpaddq    xmm15, xmm4, xmm3
        vpand     xmm7, xmm5, xmm14
        vpsrlq    xmm5, xmm5, 32
        vpaddq    xmm7, xmm7, xmm15
        vpaddq    xmm5, xmm6, xmm5
        vpsrlq    xmm0, xmm13, 32
        vpand     xmm15, xmm10, xmm14
        vpaddq    xmm7, xmm0, xmm7
        vpaddq    xmm15, xmm15, xmm5
        vpsrlq    xmm11, xmm10, 32
        vpsrlq    xmm3, xmm7, 32
        vpaddq    xmm10, xmm9, xmm11
        vpaddq    xmm0, xmm3, xmm15
        vpand     xmm15, xmm8, xmm14
        vpsrlq    xmm4, xmm0, 32
        vpaddq    xmm9, xmm15, xmm10
        vpaddq    xmm12, xmm4, xmm9
        vpsllq    xmm11, xmm12, 32
        vpand     xmm8, xmm0, xmm14
        vpaddq    xmm3, xmm11, xmm8
        vpand     xmm6, xmm1, XMMWORD PTR [rip+_2il0floatpacket_40]
        vpsllq    xmm7, xmm7, 32
        vpxor     xmm10, xmm6, XMMWORD PTR [rip+_2il0floatpacket_41]
        vpand     xmm14, xmm13, xmm14
        vpsrlq    xmm13, xmm3, 12
        vpaddq    xmm5, xmm7, xmm14
        vmovupd   xmm9, XMMWORD PTR [rip+_2il0floatpacket_42]
        vpor      xmm14, xmm13, xmm10
        vaddpd    xmm15, xmm14, xmm9
        vsubpd    xmm7, xmm15, xmm9
        vpand     xmm11, xmm5, XMMWORD PTR [rip+_2il0floatpacket_45]
        vpsrlq    xmm5, xmm5, 24
        vpxor     xmm13, xmm6, XMMWORD PTR [rip+_2il0floatpacket_44]
        vpsllq    xmm0, xmm11, 28
        vpand     xmm3, xmm3, XMMWORD PTR [rip+_2il0floatpacket_47]
        vpor      xmm4, xmm0, xmm13
        vpxor     xmm9, xmm6, XMMWORD PTR [rip+_2il0floatpacket_46]
        vpsllq    xmm6, xmm3, 40
        vsubpd    xmm11, xmm4, xmm13
        vsubpd    xmm8, xmm14, xmm7
        vpor      xmm13, xmm6, xmm5
        vpor      xmm10, xmm13, xmm9
        vsubpd    xmm14, xmm10, xmm9
        vaddpd    xmm7, xmm8, xmm14
        vsubpd    xmm8, xmm8, xmm7
        vaddpd    xmm13, xmm14, xmm8
        vandpd    xmm9, xmm7, XMMWORD PTR [rip+_2il0floatpacket_51]
        vaddpd    xmm14, xmm11, xmm13
        vsubpd    xmm3, xmm7, xmm9
        vmulpd    xmm6, xmm14, XMMWORD PTR [rip+_2il0floatpacket_48]
        vmovupd   xmm10, XMMWORD PTR [rip+_2il0floatpacket_49]
        vmovupd   xmm0, XMMWORD PTR [rip+_2il0floatpacket_50]
        vmulpd    xmm4, xmm10, xmm3
        vmulpd    xmm5, xmm0, xmm9
        vmulpd    xmm8, xmm0, xmm3
        vaddpd    xmm11, xmm4, xmm5
        vaddpd    xmm13, xmm6, xmm8
        vandps    xmm12, xmm15, XMMWORD PTR [rip+_2il0floatpacket_43]
        vmulpd    xmm15, xmm10, xmm9
        vaddpd    xmm10, xmm11, xmm13
        vmovd     r11d, xmm12
        vandpd    xmm13, xmm1, XMMWORD PTR [rip+_2il0floatpacket_52]
        vaddpd    xmm14, xmm15, xmm10
        vsubpd    xmm15, xmm15, xmm14
        vaddpd    xmm15, xmm10, xmm15
        vmovupd   xmm10, XMMWORD PTR [rip+_2il0floatpacket_53]
        vcmpgtpd  xmm7, xmm13, xmm10
        vcmplepd  xmm9, xmm13, xmm10
        shl       r11d, 5
        vandpd    xmm1, xmm9, xmm1
        vpextrd   ecx, xmm12, 2
        vandpd    xmm13, xmm7, xmm14
        shl       ecx, 5
        vorpd     xmm9, xmm1, xmm13
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r11]
        vandpd    xmm10, xmm7, xmm15
        vmovhpd   xmm15, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmulpd    xmm3, xmm9, xmm15
        vmulpd    xmm1, xmm9, xmm9
        vmovq     xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r11]
        vmovhpd   xmm7, xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmulpd    xmm6, xmm9, xmm7
        vmulpd    xmm2, xmm2, xmm1
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r11]
        vmovhpd   xmm14, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vaddpd    xmm5, xmm14, xmm3
        vaddpd    xmm2, xmm2, XMMWORD PTR [32+rsp]
        vaddpd    xmm13, xmm6, xmm5
        vsubpd    xmm4, xmm14, xmm5
        vmulpd    xmm0, xmm1, xmm2
        vsubpd    xmm8, xmm5, xmm13
        vaddpd    xmm2, xmm7, xmm15
        vaddpd    xmm11, xmm3, xmm4
        vmulpd    xmm3, xmm9, xmm0
        vaddpd    xmm12, xmm6, xmm8
        vmulpd    xmm6, xmm1, XMMWORD PTR [48+rsp]
        vmulpd    xmm9, xmm9, xmm14
        vaddpd    xmm7, xmm6, XMMWORD PTR [64+rsp]
        vaddpd    xmm4, xmm11, xmm12
        vmulpd    xmm5, xmm3, xmm2
        vmulpd    xmm8, xmm1, xmm7
        vsubpd    xmm2, xmm2, xmm9
        vaddpd    xmm11, xmm8, XMMWORD PTR [80+rsp]
        vaddpd    xmm12, xmm4, xmm5
        vmulpd    xmm10, xmm10, xmm2
        vmulpd    xmm1, xmm1, xmm11
        vmulpd    xmm15, xmm14, xmm1
        vmovq     xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r11]
        vmovhpd   xmm9, xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vaddpd    xmm0, xmm12, xmm15
        vaddpd    xmm1, xmm9, xmm10
        vaddpd    xmm2, xmm0, xmm1
        vaddpd    xmm13, xmm13, xmm2
        vxorpd    xmm1, xmm13, XMMWORD PTR [96+rsp]
        vmovupd   xmm0, XMMWORD PTR [128+rsp]
        vmovupd   xmm2, XMMWORD PTR [112+rsp]
        vmovupd   xmm8, XMMWORD PTR [144+rsp]
        vblendvpd xmm0, xmm0, xmm1, xmm2
        jmp       .L_B1_2
        .align    16, 0x90

.L_B1_13:

        .section .drectve
        .ascii " -export \"__jsvml_sin2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_e9_B1_B4:
        .long   1604097
        .long   3855482
        .long   1861746
        .long   1800297
        .long   1738844
        .long   1677395
        .long   1615946
        .long   1554497
        .long   1493048
        .long   1431599
        .long   1370150
        .long   1308699
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_sin2_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_sin2_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_7
        .rva    .L_B1_12
        .rva    _unwind___jsvml_sin2_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_e9_B12_B12:
        .long   33
        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_sin2_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_12
        .rva    .L_B1_13
        .rva    _unwind___jsvml_sin2_ha_e9_B12_B12

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_sin4_ha_l9

__jsvml_sin4_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L44:

        sub       rsp, 712
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [368+rsp], ymm15
        xor       edx, edx
        vmovups   YMMWORD PTR [400+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm11
        vmovups   YMMWORD PTR [528+rsp], ymm10
        vmovups   YMMWORD PTR [560+rsp], ymm9
        vmovups   YMMWORD PTR [592+rsp], ymm8
        vmovups   YMMWORD PTR [624+rsp], ymm7
        vmovups   YMMWORD PTR [656+rsp], ymm6
        mov       QWORD PTR [688+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vmovupd   ymm13, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        vmovdqa   ymm8, ymm0
        vandnpd   ymm7, ymm2, ymm8
        vandpd    ymm2, ymm8, ymm2
        vfmadd213pd ymm13, ymm2, ymm1
        vsubpd    ymm5, ymm13, ymm1
        vfnmadd213pd ymm15, ymm5, ymm2
        vmovdqa   ymm3, ymm14
        vandps    ymm1, ymm13, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vfnmadd213pd ymm3, ymm5, ymm15
        vsubpd    ymm9, ymm15, ymm3
        vfnmadd231pd ymm9, ymm14, ymm5
        vfnmadd132pd ymm5, ymm9, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        mov       QWORD PTR [696+rsp], r13
        vextracti128 xmm6, ymm1, 1
        vmovd     r8d, xmm1
        vmovd     r9d, xmm6
        shl       r8d, 5
        vpextrd   ecx, xmm1, 2
        shl       r9d, 5
        vpextrd   r10d, xmm6, 2
        shl       ecx, 5
        vmovq     xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        shl       r10d, 5
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r9]
        vmovhpd   xmm12, xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm10, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r10]
        vmovq     xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        vmovhpd   xmm4, xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vmovhpd   xmm14, xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm9, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r10]
        vinsertf128 ymm15, ymm12, xmm10, 1
        vmovq     xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r9]
        vmovhpd   xmm6, xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r10]
        vinsertf128 ymm6, ymm4, xmm6, 1
        vmovdqa   ymm0, ymm6
        vmovdqa   ymm4, ymm15
        vinsertf128 ymm14, ymm14, xmm9, 1
        vfmadd231pd ymm0, ymm14, ymm3
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vfmadd213pd ymm4, ymm3, ymm0
        vsubpd    ymm10, ymm6, ymm0
        vsubpd    ymm1, ymm0, ymm4
        vfmadd231pd ymm10, ymm14, ymm3
        vmulpd    ymm0, ymm3, ymm3
        vfmadd231pd ymm1, ymm3, ymm15
        vaddpd    ymm13, ymm10, ymm1
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmovdqa   ymm12, ymm9
        vfmadd231pd ymm12, ymm1, ymm0
        vmulpd    ymm11, ymm0, ymm12
        vmulpd    ymm10, ymm3, ymm11
        vaddpd    ymm11, ymm15, ymm14
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vfmadd213pd ymm10, ymm11, ymm13
        vmovupd   ymm13, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vfnmadd213pd ymm3, ymm6, ymm11
        vmovdqa   ymm12, ymm14
        vfmadd231pd ymm12, ymm15, ymm0
        vfmadd213pd ymm12, ymm0, ymm13
        vmulpd    ymm12, ymm0, ymm12
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vfmadd213pd ymm12, ymm6, ymm10
        vmovq     xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r9]
        vmovhpd   xmm6, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vmovhpd   xmm11, xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r10]
        vinsertf128 ymm0, ymm6, xmm11, 1
        vfmadd213pd ymm5, ymm3, ymm0
        vaddpd    ymm3, ymm12, ymm5
        vaddpd    ymm5, ymm4, ymm3
        vcmpnle_uqpd ymm3, ymm2, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vmovmskpd r11d, ymm3
        vxorpd    ymm0, ymm5, ymm7
        test      r11d, r11d
        jne       .L_B2_12

.L_B2_2:

        test      edx, edx
        jne       .L_B2_4

.L_B2_3:

        vmovups   ymm6, YMMWORD PTR [656+rsp]
        vmovups   ymm7, YMMWORD PTR [624+rsp]
        vmovups   ymm8, YMMWORD PTR [592+rsp]
        vmovups   ymm9, YMMWORD PTR [560+rsp]
        vmovups   ymm10, YMMWORD PTR [528+rsp]
        vmovups   ymm11, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [400+rsp]
        vmovups   ymm15, YMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [688+rsp]
        add       rsp, 712
        ret

.L_B2_4:

        vmovupd   YMMWORD PTR [r13], ymm8
        vmovupd   YMMWORD PTR [64+r13], ymm0
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
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B2_3

.L_B2_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B2_9

.L_B2_12:

        vmovupd   YMMWORD PTR [r13], ymm9
        vmovupd   YMMWORD PTR [224+r13], ymm8
        vmovupd   YMMWORD PTR [160+r13], ymm3
        vmovupd   YMMWORD PTR [64+r13], ymm14
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vmovupd   YMMWORD PTR [96+r13], ymm13
        vmovupd   YMMWORD PTR [192+r13], ymm0
        vmovupd   YMMWORD PTR [32+r13], ymm15
        vmovupd   YMMWORD PTR [128+r13], ymm7
        vpand     ymm9, ymm2, YMMWORD PTR [rip+_2il0floatpacket_54]
        vpsrlq    ymm8, ymm9, 52
        vandpd    ymm10, ymm14, ymm2
        vcmpeqpd  ymm11, ymm10, ymm14
        vmovmskpd edx, ymm11
        vextracti128 xmm3, ymm8, 1
        vmovd     r8d, xmm8
        vmovd     r9d, xmm3
        vpextrd   ecx, xmm8, 2
        lea       r11d, DWORD PTR [r8+r8*2]
        vpextrd   r8d, xmm3, 2
        lea       r9d, DWORD PTR [r9+r9*2]
        shl       r11d, 3
        shl       r9d, 3
        vpand     ymm8, ymm2, YMMWORD PTR [rip+_2il0floatpacket_55]
        lea       r10d, DWORD PTR [rcx+rcx*2]
        vmovq     xmm13, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r11]
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r9]
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r11]
        shl       r10d, 3
        lea       ecx, DWORD PTR [r8+r8*2]
        shl       ecx, 3
        vmovhpd   xmm14, xmm13, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r10]
        vmovhpd   xmm9, xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+rcx]
        vpaddq    ymm3, ymm8, YMMWORD PTR [rip+_2il0floatpacket_56]
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r9]
        vmovhpd   xmm12, xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r10]
        vmovhpd   xmm0, xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+rcx]
        vpsrlq    ymm11, ymm3, 32
        vmovq     xmm4, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r11]
        vmovq     xmm10, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r9]
        vmovhpd   xmm15, xmm4, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r10]
        vmovhpd   xmm7, xmm10, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+rcx]
        vinsertf128 ymm13, ymm14, xmm9, 1
        vmovdqu   ymm14, YMMWORD PTR [rip+_2il0floatpacket_57]
        vpand     ymm8, ymm3, ymm14
        vinsertf128 ymm12, ymm12, xmm0, 1
        vpsrlq    ymm0, ymm13, 32
        vpand     ymm9, ymm12, ymm14
        vpsrlq    ymm12, ymm12, 32
        vpmuludq  ymm10, ymm8, ymm9
        vinsertf128 ymm5, ymm15, xmm7, 1
        vpand     ymm4, ymm5, ymm14
        vpand     ymm15, ymm13, ymm14
        vpsrlq    ymm6, ymm5, 32
        vpmuludq  ymm13, ymm11, ymm0
        vpmuludq  ymm0, ymm8, ymm0
        vpsrlq    ymm0, ymm0, 32
        vpmuludq  ymm3, ymm8, ymm4
        vpmuludq  ymm7, ymm11, ymm15
        vpand     ymm15, ymm3, ymm14
        vpaddq    ymm13, ymm13, ymm0
        vpsrlq    ymm7, ymm7, 32
        vpsrlq    ymm3, ymm3, 32
        vpaddq    ymm15, ymm15, ymm13
        vpmuludq  ymm5, ymm8, ymm6
        vpmuludq  ymm4, ymm11, ymm4
        vpaddq    ymm13, ymm7, ymm15
        vpand     ymm15, ymm5, ymm14
        vpaddq    ymm0, ymm4, ymm3
        vpand     ymm4, ymm10, ymm14
        vpsrlq    ymm7, ymm13, 32
        vpsrlq    ymm10, ymm10, 32
        vpaddq    ymm15, ymm15, ymm0
        vpand     ymm13, ymm13, ymm14
        vpaddq    ymm7, ymm7, ymm15
        vpsrlq    ymm15, ymm5, 32
        vpsrlq    ymm0, ymm7, 32
        vpsllq    ymm7, ymm7, 32
        vpmuludq  ymm6, ymm11, ymm6
        vpaddq    ymm5, ymm6, ymm15
        vpaddq    ymm3, ymm4, ymm5
        vpmuludq  ymm15, ymm8, ymm12
        vpmuludq  ymm11, ymm11, ymm9
        vpaddq    ymm3, ymm0, ymm3
        vpand     ymm8, ymm15, ymm14
        vpaddq    ymm9, ymm11, ymm10
        vpsrlq    ymm6, ymm3, 32
        vpand     ymm3, ymm3, ymm14
        vpaddq    ymm5, ymm8, ymm9
        vpaddq    ymm8, ymm7, ymm13
        vpaddq    ymm12, ymm6, ymm5
        vpand     ymm13, ymm8, YMMWORD PTR [rip+_2il0floatpacket_63]
        vpsrlq    ymm8, ymm8, 24
        vmovupd   ymm6, YMMWORD PTR [rip+_2il0floatpacket_60]
        vpsllq    ymm0, ymm12, 32
        vpand     ymm12, ymm2, YMMWORD PTR [rip+_2il0floatpacket_58]
        vpaddq    ymm5, ymm0, ymm3
        vpxor     ymm4, ymm12, YMMWORD PTR [rip+_2il0floatpacket_59]
        vpxor     ymm3, ymm12, YMMWORD PTR [rip+_2il0floatpacket_62]
        vpsrlq    ymm14, ymm5, 12
        vpand     ymm5, ymm5, YMMWORD PTR [rip+_2il0floatpacket_65]
        vpor      ymm15, ymm14, ymm4
        vpsllq    ymm4, ymm5, 40
        vpsllq    ymm14, ymm13, 28
        vaddpd    ymm7, ymm15, ymm6
        vpor      ymm0, ymm14, ymm3
        vpand     ymm11, ymm7, YMMWORD PTR [rip+_2il0floatpacket_61]
        vsubpd    ymm10, ymm7, ymm6
        vpor      ymm6, ymm4, ymm8
        vsubpd    ymm9, ymm15, ymm10
        vsubpd    ymm15, ymm0, ymm3
        vpxor     ymm10, ymm12, YMMWORD PTR [rip+_2il0floatpacket_64]
        vmovupd   ymm0, YMMWORD PTR [rip+_2il0floatpacket_69]
        vpor      ymm12, ymm6, ymm10
        vsubpd    ymm7, ymm12, ymm10
        vaddpd    ymm13, ymm9, ymm7
        vsubpd    ymm9, ymm9, ymm13
        vaddpd    ymm10, ymm7, ymm9
        vmovupd   ymm7, YMMWORD PTR [rip+_2il0floatpacket_66]
        vaddpd    ymm6, ymm15, ymm10
        vmulpd    ymm4, ymm7, ymm13
        vmovapd   ymm15, ymm7
        vfmsub213pd ymm15, ymm13, ymm4
        vandpd    ymm14, ymm2, YMMWORD PTR [rip+_2il0floatpacket_68]
        vcmpgt_oqpd ymm5, ymm14, ymm0
        vcmple_oqpd ymm3, ymm14, ymm0
        vfmadd132pd ymm13, ymm15, YMMWORD PTR [rip+_2il0floatpacket_67]
        vfmadd213pd ymm6, ymm7, ymm13
        vandpd    ymm2, ymm3, ymm2
        vandpd    ymm15, ymm5, ymm4
        vorpd     ymm10, ymm2, ymm15
        vandpd    ymm7, ymm5, ymm6
        vmovapd   ymm5, ymm10
        vextracti128 xmm14, ymm11, 1
        vmovd     r8d, xmm11
        vmovd     r10d, xmm14
        shl       r8d, 5
        vpextrd   ecx, xmm11, 2
        shl       r10d, 5
        vpextrd   r11d, xmm14, 2
        shl       ecx, 5
        shl       r11d, 5
        vmovq     xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r10]
        vmovhpd   xmm13, xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm3, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r11]
        vmovq     xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        vmovq     xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vmovq     xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r10]
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r10]
        vmovhpd   xmm8, xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm2, xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vmovhpd   xmm12, xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r11]
        vinsertf128 ymm13, ymm13, xmm3, 1
        vmovhpd   xmm3, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r11]
        vmovaps   ymm15, ymm13
        vinsertf128 ymm14, ymm8, xmm12, 1
        vinsertf128 ymm2, ymm2, xmm3, 1
        vfmadd213pd ymm5, ymm14, ymm2
        vmovupd   ymm3, YMMWORD PTR [r13]
        vfmadd213pd ymm15, ymm10, ymm5
        vsubpd    ymm6, ymm2, ymm5
        vsubpd    ymm0, ymm5, ymm15
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r10]
        vfmadd231pd ymm6, ymm14, ymm10
        vfmadd231pd ymm0, ymm10, ymm13
        vaddpd    ymm11, ymm6, ymm0
        vmovhpd   xmm6, xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r11]
        vmulpd    ymm0, ymm10, ymm10
        vfmadd231pd ymm3, ymm1, ymm0
        vmulpd    ymm1, ymm0, ymm3
        vmulpd    ymm3, ymm10, ymm1
        vaddpd    ymm1, ymm13, ymm14
        vmovupd   ymm13, YMMWORD PTR [64+r13]
        vmovupd   ymm14, YMMWORD PTR [160+r13]
        vfmadd213pd ymm3, ymm1, ymm11
        vfnmadd213pd ymm10, ymm2, ymm1
        vfmadd231pd ymm13, ymm0, YMMWORD PTR [32+r13]
        vfmadd213pd ymm13, ymm0, YMMWORD PTR [96+r13]
        vmulpd    ymm9, ymm0, ymm13
        vmovupd   ymm0, YMMWORD PTR [192+r13]
        vfmadd213pd ymm9, ymm2, ymm3
        vmovq     xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vmovhpd   xmm4, xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vinsertf128 ymm8, ymm4, xmm6, 1
        vfmadd213pd ymm7, ymm10, ymm8
        vmovupd   ymm8, YMMWORD PTR [224+r13]
        vaddpd    ymm7, ymm9, ymm7
        vaddpd    ymm10, ymm15, ymm7
        vxorpd    ymm12, ymm10, YMMWORD PTR [128+r13]
        vblendvpd ymm0, ymm0, ymm12, ymm14
        jmp       .L_B2_2
        .align    16, 0x90

.L_B2_13:

        .section .drectve
        .ascii " -export \"__jsvml_sin4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_l9_B1_B4:
        .long   1603073
        .long   5690486
        .long   2713710
        .long   2586725
        .long   2459740
        .long   2332755
        .long   2205770
        .long   2078785
        .long   1951800
        .long   1824815
        .long   1697830
        .long   1570843
        .long   5832971

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_sin4_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_sin4_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_7
        .rva    .L_B2_12
        .rva    _unwind___jsvml_sin4_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_l9_B12_B12:
        .long   33
        .rva    .L_B2_1
        .rva    .L_B2_7
        .rva    _unwind___jsvml_sin4_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_12
        .rva    .L_B2_13
        .rva    _unwind___jsvml_sin4_ha_l9_B12_B12

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_sin1_ha_e9

__jsvml_sin1_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L87:

        sub       rsp, 472
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [304+rsp], xmm15
        xor       edx, edx
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovups   XMMWORD PTR [352+rsp], xmm12
        vmovups   XMMWORD PTR [368+rsp], xmm11
        vmovups   XMMWORD PTR [384+rsp], xmm10
        vmovups   XMMWORD PTR [400+rsp], xmm9
        vmovups   XMMWORD PTR [416+rsp], xmm8
        vmovapd   xmm8, xmm0
        vmovups   XMMWORD PTR [432+rsp], xmm7
        vmovups   XMMWORD PTR [448+rsp], xmm6
        mov       QWORD PTR [296+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vandnpd   xmm7, xmm1, xmm8
        vandpd    xmm1, xmm8, xmm1
        vmulsd    xmm2, xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vaddsd    xmm10, xmm2, xmm9
        vpand     xmm12, xmm10, xmm5
        vsubsd    xmm3, xmm10, xmm9
        vmovd     ecx, xmm12
        vmulsd    xmm2, xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmulsd    xmm13, xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        vmulsd    xmm6, xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        vsubsd    xmm14, xmm1, xmm2
        shl       ecx, 5
        vsubsd    xmm4, xmm14, xmm13
        vmulsd    xmm2, xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vsubsd    xmm15, xmm14, xmm4
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vsubsd    xmm11, xmm15, xmm13
        vaddsd    xmm9, xmm5, xmm2
        vsubsd    xmm6, xmm11, xmm6
        vsubsd    xmm0, xmm5, xmm9
        vmovq     xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vaddsd    xmm10, xmm0, xmm2
        vmulsd    xmm13, xmm15, xmm4
        vmulsd    xmm0, xmm4, xmm4
        vaddsd    xmm3, xmm13, xmm9
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vsubsd    xmm14, xmm9, xmm3
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vaddsd    xmm11, xmm14, xmm13
        vmulsd    xmm13, xmm2, xmm0
        vaddsd    xmm14, xmm11, xmm10
        vaddsd    xmm12, xmm13, xmm9
        vaddsd    xmm10, xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmulsd    xmm13, xmm12, xmm0
        vmulsd    xmm11, xmm13, xmm4
        vmulsd    xmm4, xmm4, xmm5
        vmulsd    xmm15, xmm11, xmm10
        mov       QWORD PTR [464+rsp], r13
        vaddsd    xmm12, xmm15, xmm14
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmulsd    xmm13, xmm15, xmm0
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vaddsd    xmm11, xmm13, xmm14
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vmulsd    xmm11, xmm11, xmm0
        vaddsd    xmm11, xmm11, xmm13
        vmulsd    xmm0, xmm11, xmm0
        vmulsd    xmm11, xmm0, xmm5
        vsubsd    xmm0, xmm10, xmm4
        vmulsd    xmm4, xmm6, xmm0
        vaddsd    xmm11, xmm11, xmm12
        vaddsd    xmm5, xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vaddsd    xmm6, xmm11, xmm5
        vaddsd    xmm3, xmm3, xmm6
        vxorpd    xmm0, xmm3, xmm7
        vcmpnlesd xmm3, xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vmovmskpd r8d, xmm3
        test      r8d, 1
        jne       .L_B3_8

.L_B3_2:

        test      edx, edx
        jne       .L_B3_4

.L_B3_3:

        vmovups   xmm6, XMMWORD PTR [448+rsp]
        vmovups   xmm7, XMMWORD PTR [432+rsp]
        vmovups   xmm8, XMMWORD PTR [416+rsp]
        vmovups   xmm9, XMMWORD PTR [400+rsp]
        vmovups   xmm10, XMMWORD PTR [384+rsp]
        vmovups   xmm11, XMMWORD PTR [368+rsp]
        vmovups   xmm12, XMMWORD PTR [352+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [296+rsp]
        add       rsp, 472
        ret

.L_B3_4:

        vmovsd    QWORD PTR [r13], xmm8
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B3_6

.L_B3_5:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B3_3

.L_B3_6:

        je        .L_B3_5

.L_B3_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B3_5

.L_B3_8:

        vmovupd   XMMWORD PTR [32+rsp], xmm9
        vpand     xmm9, xmm1, XMMWORD PTR [rip+_2il0floatpacket_36]
        vpsrlq    xmm11, xmm9, 52
        vmovd     ecx, xmm11
        vmovupd   XMMWORD PTR [64+rsp], xmm14
        vmovupd   XMMWORD PTR [144+rsp], xmm8
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vpand     xmm8, xmm1, XMMWORD PTR [rip+_2il0floatpacket_37]
        lea       r8d, DWORD PTR [rcx+rcx*2]
        shl       r8d, 3
        vandpd    xmm10, xmm14, xmm1
        vmovupd   XMMWORD PTR [128+rsp], xmm3
        vcmpeqsd  xmm5, xmm10, xmm14
        vpaddq    xmm3, xmm8, XMMWORD PTR [rip+_2il0floatpacket_38]
        vmovmskpd edx, xmm5
        vmovupd   XMMWORD PTR [80+rsp], xmm13
        vpsrlq    xmm11, xmm3, 32
        vmovq     xmm13, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        vmovdqu   xmm14, XMMWORD PTR [rip+_2il0floatpacket_39]
        and       edx, 1
        vmovupd   XMMWORD PTR [112+rsp], xmm0
        vpsrlq    xmm0, xmm13, 32
        vpand     xmm8, xmm3, xmm14
        vpand     xmm13, xmm13, xmm14
        vmovq     xmm4, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        vmovupd   XMMWORD PTR [96+rsp], xmm7
        vpsrlq    xmm6, xmm4, 32
        vpmuludq  xmm7, xmm11, xmm13
        vpand     xmm4, xmm4, xmm14
        vpmuludq  xmm13, xmm11, xmm0
        vpmuludq  xmm0, xmm8, xmm0
        vpmuludq  xmm3, xmm8, xmm4
        vpmuludq  xmm5, xmm8, xmm6
        vpmuludq  xmm6, xmm11, xmm6
        vpsrlq    xmm0, xmm0, 32
        vpaddq    xmm13, xmm13, xmm0
        vmovupd   XMMWORD PTR [48+rsp], xmm15
        vpsrlq    xmm15, xmm7, 32
        vpand     xmm7, xmm3, xmm14
        vpaddq    xmm7, xmm7, xmm13
        vpaddq    xmm13, xmm15, xmm7
        vpmuludq  xmm15, xmm11, xmm4
        vmovq     xmm12, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        vpsrlq    xmm4, xmm3, 32
        vpand     xmm9, xmm12, xmm14
        vpand     xmm7, xmm5, xmm14
        vpmuludq  xmm10, xmm8, xmm9
        vpsrlq    xmm5, xmm5, 32
        vpaddq    xmm3, xmm15, xmm4
        vpaddq    xmm6, xmm6, xmm5
        vpaddq    xmm7, xmm7, xmm3
        vpmuludq  xmm5, xmm11, xmm9
        vpsrlq    xmm0, xmm13, 32
        vpsrlq    xmm12, xmm12, 32
        vpaddq    xmm7, xmm0, xmm7
        vpand     xmm0, xmm10, xmm14
        vpsrlq    xmm15, xmm7, 32
        vpaddq    xmm4, xmm0, xmm6
        vpaddq    xmm4, xmm15, xmm4
        vpmuludq  xmm15, xmm8, xmm12
        vpsrlq    xmm10, xmm10, 32
        vpand     xmm8, xmm15, xmm14
        vpaddq    xmm9, xmm5, xmm10
        vpaddq    xmm11, xmm8, xmm9
        vpsrlq    xmm3, xmm4, 32
        vpand     xmm0, xmm4, xmm14
        vpaddq    xmm6, xmm3, xmm11
        vpsllq    xmm12, xmm6, 32
        vpsllq    xmm7, xmm7, 32
        vpaddq    xmm6, xmm12, xmm0
        vpand     xmm12, xmm1, XMMWORD PTR [rip+_2il0floatpacket_40]
        vpand     xmm13, xmm13, xmm14
        vpaddq    xmm8, xmm7, xmm13
        vpxor     xmm13, xmm12, XMMWORD PTR [rip+_2il0floatpacket_41]
        vpsrlq    xmm14, xmm6, 12
        vmovupd   xmm7, XMMWORD PTR [rip+_2il0floatpacket_42]
        vpor      xmm10, xmm14, xmm13
        vpand     xmm4, xmm6, XMMWORD PTR [rip+_2il0floatpacket_47]
        vaddsd    xmm5, xmm7, xmm10
        vpand     xmm15, xmm8, XMMWORD PTR [rip+_2il0floatpacket_45]
        vpsllq    xmm13, xmm4, 40
        vpxor     xmm3, xmm12, XMMWORD PTR [rip+_2il0floatpacket_44]
        vpsllq    xmm9, xmm15, 28
        vpxor     xmm15, xmm12, XMMWORD PTR [rip+_2il0floatpacket_46]
        vpor      xmm0, xmm9, xmm3
        vmovupd   xmm6, XMMWORD PTR [rip+_2il0floatpacket_49]
        vsubsd    xmm14, xmm5, xmm7
        vsubsd    xmm9, xmm0, xmm3
        vsubsd    xmm11, xmm10, xmm14
        vpsrlq    xmm7, xmm8, 24
        vpor      xmm10, xmm13, xmm7
        vpor      xmm14, xmm10, xmm15
        vmovupd   xmm13, XMMWORD PTR [rip+_2il0floatpacket_50]
        vsubsd    xmm0, xmm14, xmm15
        vaddsd    xmm4, xmm11, xmm0
        vandpd    xmm8, xmm4, XMMWORD PTR [rip+_2il0floatpacket_51]
        vsubsd    xmm11, xmm11, xmm4
        vmulsd    xmm14, xmm13, xmm8
        vsubsd    xmm7, xmm4, xmm8
        vmulsd    xmm15, xmm6, xmm8
        vaddsd    xmm3, xmm0, xmm11
        vmulsd    xmm10, xmm6, xmm7
        vaddsd    xmm12, xmm3, xmm9
        vmulsd    xmm3, xmm13, xmm7
        vaddsd    xmm4, xmm10, xmm14
        vmovupd   xmm9, XMMWORD PTR [rip+_2il0floatpacket_48]
        vmulsd    xmm0, xmm9, xmm12
        vmovupd   xmm11, XMMWORD PTR [rip+_2il0floatpacket_53]
        vaddsd    xmm6, xmm0, xmm3
        vandpd    xmm9, xmm1, XMMWORD PTR [rip+_2il0floatpacket_52]
        vaddsd    xmm8, xmm4, xmm6
        vcmpgtsd  xmm7, xmm9, xmm11
        vcmplesd  xmm12, xmm9, xmm11
        vaddsd    xmm13, xmm15, xmm8
        vandpd    xmm1, xmm12, xmm1
        vsubsd    xmm15, xmm15, xmm13
        vandpd    xmm13, xmm7, xmm13
        vaddsd    xmm14, xmm15, xmm8
        vorpd     xmm10, xmm1, xmm13
        vandpd    xmm7, xmm7, xmm14
        vandps    xmm1, xmm5, XMMWORD PTR [rip+_2il0floatpacket_43]
        vmovd     r9d, xmm1
        vmulsd    xmm1, xmm10, xmm10
        shl       r9d, 5
        vmulsd    xmm3, xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vmulsd    xmm2, xmm2, xmm1
        vmovq     xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r9]
        vmovq     xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r9]
        vmulsd    xmm6, xmm15, xmm10
        vaddsd    xmm4, xmm14, xmm3
        vaddsd    xmm2, xmm2, QWORD PTR [32+rsp]
        vaddsd    xmm13, xmm6, xmm4
        vsubsd    xmm0, xmm14, xmm4
        vsubsd    xmm5, xmm4, xmm13
        vaddsd    xmm9, xmm0, xmm3
        vmulsd    xmm0, xmm2, xmm1
        vaddsd    xmm2, xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vaddsd    xmm8, xmm5, xmm6
        vmulsd    xmm3, xmm0, xmm10
        vmulsd    xmm10, xmm10, xmm14
        vaddsd    xmm4, xmm8, xmm9
        vmulsd    xmm15, xmm3, xmm2
        vmovupd   xmm5, XMMWORD PTR [48+rsp]
        vaddsd    xmm0, xmm15, xmm4
        vmulsd    xmm11, xmm5, xmm1
        vaddsd    xmm12, xmm11, QWORD PTR [64+rsp]
        vmulsd    xmm5, xmm12, xmm1
        vaddsd    xmm11, xmm5, QWORD PTR [80+rsp]
        vmulsd    xmm1, xmm11, xmm1
        vmulsd    xmm12, xmm1, xmm14
        vsubsd    xmm14, xmm2, xmm10
        vmulsd    xmm7, xmm7, xmm14
        vaddsd    xmm3, xmm12, xmm0
        vmovupd   xmm1, XMMWORD PTR [128+rsp]
        vmovupd   xmm0, XMMWORD PTR [112+rsp]
        vaddsd    xmm6, xmm7, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r9]
        vaddsd    xmm8, xmm3, xmm6
        vaddsd    xmm9, xmm13, xmm8
        vmovupd   xmm8, XMMWORD PTR [144+rsp]
        vxorpd    xmm13, xmm9, XMMWORD PTR [96+rsp]
        vblendvpd xmm0, xmm0, xmm13, xmm1
        jmp       .L_B3_2
        .align    16, 0x90

.L_B3_9:

        .section .drectve
        .ascii " -export \"__jsvml_sin1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin1_ha_e9_B1_B8:
        .long   1604097
        .long   2479226
        .long   1861746
        .long   1800297
        .long   1738844
        .long   1677395
        .long   1615946
        .long   1554497
        .long   1493048
        .long   1431599
        .long   1370150
        .long   1308699
        .long   3866891

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_9
        .rva    _unwind___jsvml_sin1_ha_e9_B1_B8

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_sin4_ha_e9

__jsvml_sin4_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L126:

        push      rbp
        sub       rsp, 928
        lea       rbp, QWORD PTR [32+rsp]
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [560+rbp], ymm15
        xor       edx, edx
        vmovups   YMMWORD PTR [592+rbp], ymm14
        vmovups   YMMWORD PTR [624+rbp], ymm13
        vmovups   YMMWORD PTR [656+rbp], ymm12
        vmovups   YMMWORD PTR [688+rbp], ymm11
        vmovups   YMMWORD PTR [720+rbp], ymm10
        vmovups   YMMWORD PTR [752+rbp], ymm9
        vmovups   YMMWORD PTR [784+rbp], ymm8
        vmovups   YMMWORD PTR [816+rbp], ymm7
        vmovups   YMMWORD PTR [848+rbp], ymm6
        mov       QWORD PTR [880+rbp], r13
        lea       r13, QWORD PTR [79+rbp]
        vmovupd   ymm8, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vmovupd   ymm7, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vmovapd   ymm10, ymm0
        vandnpd   ymm9, ymm8, ymm10
        vandpd    ymm8, ymm10, ymm8
        vmulpd    ymm6, ymm8, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vaddpd    ymm3, ymm7, ymm6
        vmovupd   xmm6, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vsubpd    ymm15, ymm3, ymm7
        vmulpd    ymm11, ymm15, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmulpd    ymm5, ymm15, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        vmulpd    ymm14, ymm15, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        vsubpd    ymm12, ymm8, ymm11
        vsubpd    ymm2, ymm12, ymm5
        vsubpd    ymm13, ymm12, ymm2
        vsubpd    ymm4, ymm13, ymm5
        vsubpd    ymm4, ymm4, ymm14
        mov       QWORD PTR [888+rbp], r13
        vandps    xmm7, xmm3, xmm6
        vextractf128 xmm1, ymm3, 1
        vmovd     r8d, xmm7
        vandps    xmm13, xmm1, xmm6
        vmovd     r9d, xmm13
        shl       r8d, 5
        vpextrd   ecx, xmm7, 2
        shl       r9d, 5
        vpextrd   r10d, xmm13, 2
        shl       ecx, 5
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        vmovq     xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        shl       r10d, 5
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r9]
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vmovhpd   xmm12, xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm3, xmm14, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm15, xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r10]
        vmovhpd   xmm0, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r10]
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r9]
        vmovhpd   xmm7, xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vmovhpd   xmm5, xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r10]
        vinsertf128 ymm13, ymm12, xmm15, 1
        vinsertf128 ymm12, ymm3, xmm0, 1
        vmulpd    ymm15, ymm12, ymm2
        vmulpd    ymm0, ymm13, ymm2
        vinsertf128 ymm1, ymm7, xmm5, 1
        vaddpd    ymm3, ymm1, ymm15
        vaddpd    ymm5, ymm0, ymm3
        vsubpd    ymm14, ymm1, ymm3
        vsubpd    ymm6, ymm3, ymm5
        vaddpd    ymm7, ymm15, ymm14
        vaddpd    ymm3, ymm13, ymm12
        vaddpd    ymm11, ymm0, ymm6
        vmulpd    ymm0, ymm2, ymm2
        vmovupd   ymm6, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vaddpd    ymm11, ymm7, ymm11
        vmovupd   ymm7, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmulpd    ymm15, ymm7, ymm0
        vaddpd    ymm14, ymm6, ymm15
        vmulpd    ymm15, ymm0, ymm14
        vmulpd    ymm14, ymm2, ymm15
        vmulpd    ymm2, ymm1, ymm2
        vmulpd    ymm12, ymm14, ymm3
        vaddpd    ymm15, ymm11, ymm12
        vmovupd   ymm11, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmovupd   ymm12, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vmulpd    ymm13, ymm11, ymm0
        vaddpd    ymm14, ymm12, ymm13
        vmovupd   ymm13, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vmulpd    ymm14, ymm0, ymm14
        vaddpd    ymm14, ymm13, ymm14
        vmulpd    ymm0, ymm0, ymm14
        vmulpd    ymm14, ymm1, ymm0
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vmovhpd   xmm1, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vaddpd    ymm15, ymm15, ymm14
        vsubpd    ymm14, ymm3, ymm2
        vmovq     xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r9]
        vmovhpd   xmm3, xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r10]
        vmulpd    ymm4, ymm4, ymm14
        vinsertf128 ymm0, ymm1, xmm3, 1
        vcmpnle_uqpd ymm1, ymm8, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vaddpd    ymm14, ymm0, ymm4
        vaddpd    ymm15, ymm15, ymm14
        vaddpd    ymm5, ymm5, ymm15
        vxorpd    ymm0, ymm5, ymm9
        vextractf128 xmm2, ymm1, 1
        vshufps   xmm3, xmm1, xmm2, 221
        vmovmskps r11d, xmm3
        test      r11d, r11d
        jne       .L_B4_12

.L_B4_2:

        test      edx, edx
        jne       .L_B4_4

.L_B4_3:

        vmovups   ymm6, YMMWORD PTR [848+rbp]
        vmovups   ymm7, YMMWORD PTR [816+rbp]
        vmovups   ymm8, YMMWORD PTR [784+rbp]
        vmovups   ymm9, YMMWORD PTR [752+rbp]
        vmovups   ymm10, YMMWORD PTR [720+rbp]
        vmovups   ymm11, YMMWORD PTR [688+rbp]
        vmovups   ymm12, YMMWORD PTR [656+rbp]
        vmovups   ymm13, YMMWORD PTR [624+rbp]
        vmovups   ymm14, YMMWORD PTR [592+rbp]
        vmovups   ymm15, YMMWORD PTR [560+rbp]
        mov       r13, QWORD PTR [880+rbp]
        lea       rsp, QWORD PTR [896+rbp]
        pop       rbp
        ret

.L_B4_4:

        vmovupd   YMMWORD PTR [r13], ymm10
        vmovupd   YMMWORD PTR [64+r13], ymm0
        je        .L_B4_3

.L_B4_7:

        xor       eax, eax
        mov       QWORD PTR [8+rbp], rbx
        mov       ebx, eax
        mov       QWORD PTR [rbp], rsi
        mov       esi, edx

.L_B4_8:

        bt        esi, ebx
        jc        .L_B4_11

.L_B4_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B4_8

.L_B4_10:

        mov       rbx, QWORD PTR [8+rbp]
        mov       rsi, QWORD PTR [rbp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B4_3

.L_B4_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B4_9

.L_B4_12:

        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vmovupd   YMMWORD PTR [32+r13], ymm7
        vmovdqu   xmm7, XMMWORD PTR [rip+_2il0floatpacket_36]
        vmovupd   YMMWORD PTR [r13], ymm8
        vmovupd   YMMWORD PTR [96+r13], ymm11
        vmovupd   YMMWORD PTR [160+r13], ymm13
        vmovupd   YMMWORD PTR [256+r13], ymm0
        vmovupd   YMMWORD PTR [192+r13], ymm9
        vmovupd   YMMWORD PTR [288+r13], ymm10
        vmovupd   YMMWORD PTR [64+r13], ymm6
        vmovupd   YMMWORD PTR [224+r13], ymm1
        vmovupd   YMMWORD PTR [128+r13], ymm12
        vandpd    ymm11, ymm14, ymm8
        vcmpeqpd  ymm9, ymm11, ymm14
        vpand     xmm15, xmm7, xmm8
        vextractf128 xmm13, ymm8, 1
        vpsrlq    xmm3, xmm15, 52
        vmovd     r8d, xmm3
        vmovdqu   xmm15, XMMWORD PTR [rip+_2il0floatpacket_37]
        vpand     xmm4, xmm7, xmm13
        vpsrlq    xmm0, xmm4, 52
        vmovd     r9d, xmm0
        lea       r11d, DWORD PTR [r8+r8*2]
        vmovups   XMMWORD PTR [rbp], xmm8
        vpand     xmm8, xmm15, xmm8
        vmovups   XMMWORD PTR [400+rbp], xmm13
        vpand     xmm13, xmm15, xmm13
        vpextrd   ecx, xmm3, 2
        vpextrd   r8d, xmm0, 2
        lea       r9d, DWORD PTR [r9+r9*2]
        shl       r9d, 3
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r9]
        vmovdqu   xmm7, XMMWORD PTR [rip+_2il0floatpacket_38]
        lea       r10d, DWORD PTR [rcx+rcx*2]
        shl       r11d, 3
        lea       ecx, DWORD PTR [r8+r8*2]
        shl       ecx, 3
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r9]
        shl       r10d, 3
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r11]
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r11]
        vmovq     xmm14, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r11]
        vmovhpd   xmm4, xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r10]
        vmovq     xmm12, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r9]
        vmovhpd   xmm3, xmm12, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+rcx]
        vmovupd   XMMWORD PTR [416+rbp], xmm4
        vextractf128 xmm2, ymm9, 1
        vshufps   xmm10, xmm9, xmm2, 221
        vmovmskps edx, xmm10
        vmovhpd   xmm10, xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+rcx]
        vpaddq    xmm11, xmm8, xmm7
        vpaddq    xmm7, xmm13, xmm7
        vmovhpd   xmm9, xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+rcx]
        vmovdqu   xmm13, XMMWORD PTR [rip+_2il0floatpacket_39]
        vpsrlq    xmm5, xmm9, 32
        vmovhpd   xmm2, xmm1, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r10]
        vpand     xmm0, xmm9, xmm13
        vmovhpd   xmm1, xmm14, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r10]
        vpand     xmm14, xmm10, xmm13
        vpsrlq    xmm9, xmm11, 32
        vpand     xmm8, xmm11, xmm13
        vpand     xmm11, xmm7, xmm13
        vpsrlq    xmm12, xmm2, 32
        vmovdqu   XMMWORD PTR [464+rbp], xmm14
        vpand     xmm6, xmm2, xmm13
        vpmuludq  xmm14, xmm11, xmm14
        vpsrlq    xmm2, xmm1, 32
        vmovupd   XMMWORD PTR [432+rbp], xmm10
        vpsrlq    xmm10, xmm7, 32
        vmovdqu   XMMWORD PTR [512+rbp], xmm0
        vpand     xmm15, xmm4, xmm13
        vpmuludq  xmm7, xmm11, xmm0
        vpand     xmm0, xmm1, xmm13
        vpmuludq  xmm1, xmm9, xmm0
        vpmuludq  xmm0, xmm9, xmm2
        vpmuludq  xmm2, xmm8, xmm2
        vmovdqu   XMMWORD PTR [496+rbp], xmm5
        vpsrlq    xmm2, xmm2, 32
        vmovdqu   XMMWORD PTR [544+rbp], xmm14
        vpsrlq    xmm4, xmm3, 32
        vpmuludq  xmm14, xmm11, xmm5
        vpand     xmm3, xmm3, xmm13
        vpmuludq  xmm5, xmm8, xmm6
        vpmuludq  xmm6, xmm9, xmm6
        vpaddq    xmm0, xmm0, xmm2
        vmovdqu   XMMWORD PTR [448+rbp], xmm15
        vpmuludq  xmm15, xmm8, xmm15
        vmovdqu   XMMWORD PTR [528+rbp], xmm15
        vpsrlq    xmm15, xmm1, 32
        vpand     xmm1, xmm5, xmm13
        vpsrlq    xmm5, xmm5, 32
        vpaddq    xmm1, xmm1, xmm0
        vpaddq    xmm5, xmm6, xmm5
        vpaddq    xmm2, xmm15, xmm1
        vpmuludq  xmm0, xmm10, xmm4
        vpmuludq  xmm4, xmm11, xmm4
        vpmuludq  xmm15, xmm10, xmm3
        vpsrlq    xmm4, xmm4, 32
        vpand     xmm1, xmm7, xmm13
        vpaddq    xmm3, xmm0, xmm4
        vpaddq    xmm0, xmm1, xmm3
        vmovdqu   XMMWORD PTR [480+rbp], xmm12
        vpsrlq    xmm15, xmm15, 32
        vpmuludq  xmm12, xmm8, xmm12
        vpsrlq    xmm7, xmm7, 32
        vpaddq    xmm4, xmm15, xmm0
        vpmuludq  xmm0, xmm10, XMMWORD PTR [512+rbp]
        vpand     xmm15, xmm12, xmm13
        vpand     xmm1, xmm14, xmm13
        vpaddq    xmm15, xmm15, xmm5
        vpaddq    xmm6, xmm0, xmm7
        vpmuludq  xmm5, xmm9, XMMWORD PTR [480+rbp]
        vpmuludq  xmm9, xmm9, XMMWORD PTR [448+rbp]
        vpaddq    xmm7, xmm1, xmm6
        vpmuludq  xmm1, xmm10, XMMWORD PTR [496+rbp]
        vpmuludq  xmm10, xmm10, XMMWORD PTR [464+rbp]
        vpsrlq    xmm3, xmm2, 32
        vpsrlq    xmm12, xmm12, 32
        vpaddq    xmm15, xmm3, xmm15
        vpaddq    xmm5, xmm5, xmm12
        vpsrlq    xmm3, xmm4, 32
        vpsrlq    xmm6, xmm15, 32
        vpaddq    xmm7, xmm3, xmm7
        vmovdqu   xmm3, XMMWORD PTR [528+rbp]
        vpsrlq    xmm14, xmm14, 32
        vpand     xmm0, xmm3, xmm13
        vpsrlq    xmm3, xmm3, 32
        vpaddq    xmm0, xmm0, xmm5
        vpaddq    xmm1, xmm1, xmm14
        vpaddq    xmm6, xmm6, xmm0
        vpaddq    xmm9, xmm9, xmm3
        vmovdqu   xmm0, XMMWORD PTR [544+rbp]
        vpsrlq    xmm5, xmm7, 32
        vpand     xmm12, xmm0, xmm13
        vpsllq    xmm15, xmm15, 32
        vpaddq    xmm12, xmm12, xmm1
        vmovupd   xmm14, XMMWORD PTR [416+rbp]
        vpand     xmm2, xmm2, xmm13
        vpaddq    xmm1, xmm5, xmm12
        vpsrlq    xmm12, xmm14, 32
        vpsrlq    xmm5, xmm6, 32
        vpmuludq  xmm8, xmm8, xmm12
        vpand     xmm6, xmm6, xmm13
        vpand     xmm8, xmm8, xmm13
        vpsllq    xmm7, xmm7, 32
        vpaddq    xmm8, xmm8, xmm9
        vmovupd   xmm12, XMMWORD PTR [432+rbp]
        vpsrlq    xmm9, xmm1, 32
        vpaddq    xmm5, xmm5, xmm8
        vpsrlq    xmm8, xmm12, 32
        vpsllq    xmm14, xmm5, 32
        vpmuludq  xmm11, xmm11, xmm8
        vpsrlq    xmm8, xmm0, 32
        vpaddq    xmm10, xmm10, xmm8
        vpaddq    xmm6, xmm14, xmm6
        vpand     xmm3, xmm11, xmm13
        vpand     xmm11, xmm1, xmm13
        vpaddq    xmm5, xmm3, xmm10
        vmovupd   ymm1, YMMWORD PTR [rip+_2il0floatpacket_60]
        vpaddq    xmm9, xmm9, xmm5
        vpsllq    xmm0, xmm9, 32
        vpand     xmm13, xmm4, xmm13
        vpaddq    xmm9, xmm15, xmm2
        vpaddq    xmm8, xmm0, xmm11
        vpaddq    xmm7, xmm7, xmm13
        vmovdqu   xmm2, XMMWORD PTR [rip+_2il0floatpacket_40]
        vpsrlq    xmm10, xmm6, 12
        vpand     xmm15, xmm2, XMMWORD PTR [rbp]
        vpsrlq    xmm5, xmm8, 12
        vmovdqu   xmm3, XMMWORD PTR [rip+_2il0floatpacket_41]
        vpand     xmm2, xmm2, XMMWORD PTR [400+rbp]
        vpxor     xmm13, xmm15, xmm3
        vpxor     xmm0, xmm2, xmm3
        vpor      xmm4, xmm10, xmm13
        vpor      xmm11, xmm5, xmm0
        vmovups   xmm3, XMMWORD PTR [rip+_2il0floatpacket_43]
        vmovdqu   xmm0, XMMWORD PTR [rip+_2il0floatpacket_44]
        vinsertf128 ymm14, ymm4, xmm11, 1
        vaddpd    ymm10, ymm14, ymm1
        vsubpd    ymm12, ymm10, ymm1
        vsubpd    ymm5, ymm14, ymm12
        vpxor     xmm12, xmm15, xmm0
        vpxor     xmm14, xmm2, xmm0
        vandps    xmm13, xmm10, xmm3
        vextractf128 xmm4, ymm10, 1
        vmovd     r8d, xmm13
        vandps    xmm10, xmm4, xmm3
        vmovdqu   xmm3, XMMWORD PTR [rip+_2il0floatpacket_45]
        vpand     xmm11, xmm3, xmm9
        vpand     xmm0, xmm3, xmm7
        vpsllq    xmm1, xmm11, 28
        vpsllq    xmm11, xmm0, 28
        vpor      xmm4, xmm1, xmm12
        vpor      xmm1, xmm11, xmm14
        vpsrlq    xmm9, xmm9, 24
        vpsrlq    xmm7, xmm7, 24
        vmovd     r10d, xmm10
        shl       r8d, 5
        vpextrd   ecx, xmm13, 2
        shl       r10d, 5
        vpextrd   r11d, xmm10, 2
        shl       ecx, 5
        shl       r11d, 5
        vinsertf128 ymm4, ymm4, xmm1, 1
        vinsertf128 ymm14, ymm12, xmm14, 1
        vsubpd    ymm3, ymm4, ymm14
        vmovdqu   xmm4, XMMWORD PTR [rip+_2il0floatpacket_46]
        vmovdqu   xmm1, XMMWORD PTR [rip+_2il0floatpacket_47]
        vpxor     xmm0, xmm2, xmm4
        vpand     xmm2, xmm1, xmm6
        vpand     xmm8, xmm1, xmm8
        vpxor     xmm11, xmm15, xmm4
        vpsllq    xmm15, xmm2, 40
        vpsllq    xmm2, xmm8, 40
        vpor      xmm6, xmm15, xmm9
        vpor      xmm2, xmm2, xmm7
        vpor      xmm9, xmm6, xmm11
        vpor      xmm15, xmm2, xmm0
        vinsertf128 ymm8, ymm9, xmm15, 1
        vinsertf128 ymm4, ymm11, xmm0, 1
        vsubpd    ymm0, ymm8, ymm4
        vmovupd   ymm9, YMMWORD PTR [rip+_2il0floatpacket_71]
        vmovupd   ymm11, YMMWORD PTR [rip+_2il0floatpacket_69]
        vaddpd    ymm6, ymm5, ymm0
        vsubpd    ymm5, ymm5, ymm6
        vaddpd    ymm1, ymm0, ymm5
        vaddpd    ymm14, ymm3, ymm1
        vmovupd   ymm3, YMMWORD PTR [rip+_2il0floatpacket_70]
        vmulpd    ymm7, ymm14, YMMWORD PTR [rip+_2il0floatpacket_66]
        vandpd    ymm12, ymm6, YMMWORD PTR [rip+_2il0floatpacket_72]
        vsubpd    ymm2, ymm6, ymm12
        vmulpd    ymm8, ymm9, ymm12
        vmulpd    ymm0, ymm3, ymm12
        vmulpd    ymm15, ymm3, ymm2
        vmulpd    ymm4, ymm9, ymm2
        vmovupd   ymm9, YMMWORD PTR [r13]
        vaddpd    ymm3, ymm15, ymm8
        vaddpd    ymm12, ymm7, ymm4
        vaddpd    ymm1, ymm3, ymm12
        vmovq     xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r10]
        vaddpd    ymm2, ymm0, ymm1
        vandpd    ymm6, ymm9, YMMWORD PTR [rip+_2il0floatpacket_68]
        vsubpd    ymm5, ymm0, ymm2
        vcmple_oqpd ymm14, ymm6, ymm11
        vcmpgt_oqpd ymm7, ymm6, ymm11
        vaddpd    ymm4, ymm1, ymm5
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        vmovhpd   xmm13, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vandpd    ymm15, ymm14, ymm9
        vmovq     xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r10]
        vandpd    ymm8, ymm7, ymm2
        vmovhpd   xmm10, xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r11]
        vmovq     xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        vorpd     ymm15, ymm15, ymm8
        vmovq     xmm8, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r10]
        vandpd    ymm2, ymm7, ymm4
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vmovhpd   xmm1, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vmovhpd   xmm5, xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r11]
        vinsertf128 ymm7, ymm13, xmm10, 1
        vmovhpd   xmm10, xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm13, xmm8, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r11]
        vmulpd    ymm14, ymm15, ymm7
        vinsertf128 ymm4, ymm10, xmm13, 1
        vmulpd    ymm6, ymm15, ymm4
        vinsertf128 ymm8, ymm1, xmm5, 1
        vaddpd    ymm12, ymm8, ymm6
        vaddpd    ymm9, ymm14, ymm12
        vsubpd    ymm11, ymm8, ymm12
        vsubpd    ymm10, ymm12, ymm9
        vaddpd    ymm13, ymm6, ymm11
        vaddpd    ymm0, ymm14, ymm10
        vaddpd    ymm10, ymm7, ymm4
        vaddpd    ymm11, ymm13, ymm0
        vmulpd    ymm13, ymm15, ymm15
        vmulpd    ymm1, ymm13, YMMWORD PTR [32+r13]
        vmulpd    ymm7, ymm13, YMMWORD PTR [96+r13]
        vaddpd    ymm3, ymm1, YMMWORD PTR [64+r13]
        vaddpd    ymm12, ymm7, YMMWORD PTR [128+r13]
        vmulpd    ymm5, ymm13, ymm3
        vmulpd    ymm14, ymm13, ymm12
        vmulpd    ymm6, ymm15, ymm5
        vmulpd    ymm15, ymm15, ymm8
        vmovupd   ymm5, YMMWORD PTR [224+r13]
        vaddpd    ymm7, ymm14, YMMWORD PTR [160+r13]
        vmulpd    ymm4, ymm6, ymm10
        vmulpd    ymm13, ymm13, ymm7
        vaddpd    ymm0, ymm11, ymm4
        vmulpd    ymm1, ymm8, ymm13
        vmovq     xmm8, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vaddpd    ymm4, ymm0, ymm1
        vsubpd    ymm1, ymm10, ymm15
        vmovq     xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r10]
        vmovhpd   xmm10, xmm8, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vmulpd    ymm2, ymm2, ymm1
        vmovhpd   xmm0, xmm15, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r11]
        vinsertf128 ymm3, ymm10, xmm0, 1
        vaddpd    ymm0, ymm3, ymm2
        vmovupd   ymm10, YMMWORD PTR [288+r13]
        vaddpd    ymm1, ymm4, ymm0
        vmovupd   ymm0, YMMWORD PTR [256+r13]
        vaddpd    ymm2, ymm9, ymm1
        vxorpd    ymm3, ymm2, YMMWORD PTR [192+r13]
        vblendvpd ymm0, ymm0, ymm3, ymm5
        jmp       .L_B4_2
        .align    16, 0x90

.L_B4_13:

        .section .drectve
        .ascii " -export \"__jsvml_sin4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_e9_B1_B4:
        .long   622489857
        .long   7525489
        .long   3631210
        .long   3504226
        .long   3377242
        .long   3250258
        .long   3123274
        .long   2996290
        .long   2869306
        .long   2742322
        .long   2615338
        .long   2488352
        .long   17564433
        .long   1342505076

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_sin4_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_e9_B7_B11:
        .long   621022241
        .long   287756
        .long   340998
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_sin4_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_7
        .rva    .L_B4_12
        .rva    _unwind___jsvml_sin4_ha_e9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin4_ha_e9_B12_B12:
        .long   620757025
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_sin4_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_12
        .rva    .L_B4_13
        .rva    _unwind___jsvml_sin4_ha_e9_B12_B12

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_sin1_ha_ex

__jsvml_sin1_ha_ex:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L195:

        sub       rsp, 472
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [352+rsp], xmm15
        xor       edx, edx
        movups    XMMWORD PTR [368+rsp], xmm14
        movaps    xmm14, xmm0
        movups    XMMWORD PTR [384+rsp], xmm13
        movups    XMMWORD PTR [400+rsp], xmm12
        movups    XMMWORD PTR [432+rsp], xmm11
        movups    XMMWORD PTR [448+rsp], xmm10
        movups    XMMWORD PTR [336+rsp], xmm9
        movups    XMMWORD PTR [416+rsp], xmm8
        movups    XMMWORD PTR [320+rsp], xmm7
        movups    XMMWORD PTR [304+rsp], xmm6
        mov       QWORD PTR [296+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        movsd     xmm2, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        movaps    xmm13, xmm2
        andps     xmm2, xmm14
        movaps    xmm9, xmm2
        movaps    xmm12, xmm2
        mulsd     xmm9, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        andnps    xmm13, xmm14
        movsd     xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        movq      xmm0, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        addsd     xmm9, xmm1
        movaps    xmm5, xmm9
        pand      xmm9, xmm0
        movd      ecx, xmm9
        subsd     xmm5, xmm1
        movaps    xmm3, xmm5
        movaps    xmm4, xmm5
        mulsd     xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        mulsd     xmm4, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        mulsd     xmm5, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        subsd     xmm12, xmm3
        movaps    xmm11, xmm12
        shl       ecx, 5
        subsd     xmm11, xmm4
        movaps    xmm1, xmm11
        subsd     xmm12, xmm11
        mulsd     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        subsd     xmm12, xmm4
        movq      xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        subsd     xmm12, xmm5
        movq      xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        movdqa    xmm6, xmm10
        mulsd     xmm6, xmm11
        movdqa    xmm3, xmm9
        addsd     xmm3, xmm1
        addsd     xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        movaps    xmm0, xmm6
        movdqa    xmm7, xmm9
        movsd     xmm8, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        addsd     xmm0, xmm3
        subsd     xmm7, xmm3
        subsd     xmm3, xmm0
        addsd     xmm7, xmm1
        addsd     xmm3, xmm6
        movaps    xmm6, xmm11
        addsd     xmm3, xmm7
        mulsd     xmm6, xmm11
        movsd     xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        movaps    xmm7, xmm1
        mulsd     xmm7, xmm6
        movsd     xmm5, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        addsd     xmm7, xmm8
        mulsd     xmm7, xmm6
        movaps    xmm15, xmm5
        mulsd     xmm15, xmm6
        mulsd     xmm7, xmm11
        mulsd     xmm11, xmm9
        mulsd     xmm7, xmm10
        subsd     xmm10, xmm11
        addsd     xmm7, xmm3
        mulsd     xmm12, xmm10
        movsd     xmm4, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        movsd     xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        addsd     xmm15, xmm4
        addsd     xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        mulsd     xmm15, xmm6
        mov       QWORD PTR [464+rsp], r13
        addsd     xmm15, xmm3
        mulsd     xmm15, xmm6
        movaps    xmm6, xmm2
        cmpnlesd  xmm6, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        mulsd     xmm15, xmm9
        movmskpd  r8d, xmm6
        addsd     xmm15, xmm7
        addsd     xmm15, xmm12
        addsd     xmm0, xmm15
        pxor      xmm0, xmm13
        test      r8d, 1
        jne       .L_B5_8

.L_B5_2:

        test      edx, edx
        jne       .L_B5_4

.L_B5_3:

        movups    xmm6, XMMWORD PTR [304+rsp]
        movups    xmm7, XMMWORD PTR [320+rsp]
        movups    xmm8, XMMWORD PTR [416+rsp]
        movups    xmm9, XMMWORD PTR [336+rsp]
        movups    xmm10, XMMWORD PTR [448+rsp]
        movups    xmm11, XMMWORD PTR [432+rsp]
        movups    xmm12, XMMWORD PTR [400+rsp]
        movups    xmm13, XMMWORD PTR [384+rsp]
        movups    xmm14, XMMWORD PTR [368+rsp]
        movups    xmm15, XMMWORD PTR [352+rsp]
        mov       r13, QWORD PTR [296+rsp]
        add       rsp, 472
        ret

.L_B5_4:

        movsd     QWORD PTR [r13], xmm14
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B5_6

.L_B5_5:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B5_3

.L_B5_6:

        je        .L_B5_5

.L_B5_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B5_5

.L_B5_8:

        movups    XMMWORD PTR [32+rsp], xmm8
        movdqu    xmm8, XMMWORD PTR [rip+_2il0floatpacket_36]
        pand      xmm8, xmm2
        psrlq     xmm8, 52
        movd      ecx, xmm8
        movups    XMMWORD PTR [128+rsp], xmm0
        movups    XMMWORD PTR [112+rsp], xmm6
        movaps    xmm6, xmm2
        movsd     xmm0, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        movups    XMMWORD PTR [48+rsp], xmm5
        andps     xmm6, xmm0
        movdqu    xmm5, XMMWORD PTR [rip+_2il0floatpacket_37]
        lea       r8d, DWORD PTR [rcx+rcx*2]
        pand      xmm5, xmm2
        cmpeqsd   xmm6, xmm0
        paddq     xmm5, XMMWORD PTR [rip+_2il0floatpacket_38]
        movmskpd  edx, xmm6
        movups    XMMWORD PTR [96+rsp], xmm13
        movups    XMMWORD PTR [64+rsp], xmm4
        movdqa    xmm4, xmm5
        shl       r8d, 3
        psrlq     xmm4, 32
        movq      xmm13, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        movdqa    xmm6, xmm4
        movups    XMMWORD PTR [144+rsp], xmm14
        movdqa    xmm0, xmm13
        movdqu    xmm14, XMMWORD PTR [rip+_2il0floatpacket_39]
        psrlq     xmm0, 32
        pand      xmm5, xmm14
        pand      xmm13, xmm14
        movq      xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        movdqa    xmm9, xmm5
        pmuludq   xmm6, xmm0
        movdqa    xmm12, xmm11
        pmuludq   xmm0, xmm5
        pmuludq   xmm13, xmm4
        pand      xmm11, xmm14
        psrlq     xmm0, 32
        pmuludq   xmm9, xmm11
        psrlq     xmm12, 32
        pmuludq   xmm11, xmm4
        paddq     xmm6, xmm0
        movdqa    xmm10, xmm5
        movdqa    xmm8, xmm14
        pmuludq   xmm10, xmm12
        pand      xmm8, xmm9
        pmuludq   xmm12, xmm4
        paddq     xmm8, xmm6
        movq      xmm7, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        movdqa    xmm15, xmm14
        psrlq     xmm13, 32
        psrlq     xmm9, 32
        movups    XMMWORD PTR [80+rsp], xmm3
        pand      xmm15, xmm7
        movdqa    xmm3, xmm5
        movdqa    xmm6, xmm14
        paddq     xmm13, xmm8
        paddq     xmm11, xmm9
        pmuludq   xmm3, xmm15
        pmuludq   xmm4, xmm15
        pand      xmm6, xmm10
        movdqa    xmm0, xmm13
        paddq     xmm6, xmm11
        psrlq     xmm0, 32
        psrlq     xmm10, 32
        psrlq     xmm7, 32
        movdqa    xmm9, xmm14
        paddq     xmm0, xmm6
        paddq     xmm12, xmm10
        pmuludq   xmm5, xmm7
        pand      xmm9, xmm3
        movdqa    xmm11, xmm0
        paddq     xmm9, xmm12
        psrlq     xmm11, 32
        psrlq     xmm3, 32
        paddq     xmm11, xmm9
        paddq     xmm4, xmm3
        pand      xmm5, xmm14
        movdqa    xmm8, xmm11
        paddq     xmm5, xmm4
        psrlq     xmm8, 32
        pand      xmm11, xmm14
        paddq     xmm8, xmm5
        psllq     xmm8, 32
        psllq     xmm0, 32
        paddq     xmm8, xmm11
        movdqu    xmm3, XMMWORD PTR [rip+_2il0floatpacket_40]
        movdqa    xmm4, xmm8
        movdqu    xmm10, XMMWORD PTR [rip+_2il0floatpacket_41]
        pand      xmm3, xmm2
        movups    xmm12, XMMWORD PTR [rip+_2il0floatpacket_42]
        psrlq     xmm4, 12
        pxor      xmm10, xmm3
        movaps    xmm7, xmm12
        por       xmm4, xmm10
        pand      xmm13, xmm14
        paddq     xmm0, xmm13
        addsd     xmm7, xmm4
        movaps    xmm13, xmm7
        and       edx, 1
        movdqu    xmm6, XMMWORD PTR [rip+_2il0floatpacket_47]
        subsd     xmm13, xmm12
        movdqu    xmm5, XMMWORD PTR [rip+_2il0floatpacket_45]
        pand      xmm6, xmm8
        movdqu    xmm14, XMMWORD PTR [rip+_2il0floatpacket_44]
        pand      xmm5, xmm0
        psllq     xmm6, 40
        psrlq     xmm0, 24
        pxor      xmm14, xmm3
        por       xmm6, xmm0
        pxor      xmm3, XMMWORD PTR [rip+_2il0floatpacket_46]
        psllq     xmm5, 28
        por       xmm6, xmm3
        por       xmm5, xmm14
        movups    xmm0, XMMWORD PTR [rip+_2il0floatpacket_51]
        subsd     xmm4, xmm13
        subsd     xmm6, xmm3
        subsd     xmm5, xmm14
        movaps    xmm8, xmm4
        movups    xmm15, XMMWORD PTR [rip+_2il0floatpacket_49]
        addsd     xmm8, xmm6
        andps     xmm0, xmm8
        subsd     xmm4, xmm8
        subsd     xmm8, xmm0
        addsd     xmm6, xmm4
        movups    xmm4, XMMWORD PTR [rip+_2il0floatpacket_50]
        addsd     xmm6, xmm5
        movups    xmm10, XMMWORD PTR [rip+_2il0floatpacket_48]
        movaps    xmm9, xmm4
        mulsd     xmm9, xmm0
        movaps    xmm5, xmm15
        mulsd     xmm15, xmm8
        mulsd     xmm10, xmm6
        mulsd     xmm4, xmm8
        addsd     xmm15, xmm9
        mulsd     xmm5, xmm0
        addsd     xmm10, xmm4
        movups    xmm11, XMMWORD PTR [rip+_2il0floatpacket_53]
        movaps    xmm12, xmm5
        movups    xmm3, XMMWORD PTR [rip+_2il0floatpacket_52]
        movaps    xmm6, xmm11
        andps     xmm3, xmm2
        addsd     xmm15, xmm10
        cmpltsd   xmm6, xmm3
        addsd     xmm12, xmm15
        movaps    xmm4, xmm3
        cmplesd   xmm3, xmm11
        subsd     xmm5, xmm12
        andps     xmm7, XMMWORD PTR [rip+_2il0floatpacket_43]
        movsd     xmm4, xmm6
        movd      r9d, xmm7
        andps     xmm3, xmm2
        andps     xmm12, xmm4
        addsd     xmm5, xmm15
        orps      xmm3, xmm12
        andps     xmm4, xmm5
        shl       r9d, 5
        movaps    xmm2, xmm3
        movaps    xmm7, xmm3
        mulsd     xmm2, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        mulsd     xmm7, xmm3
        movq      xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r9]
        movq      xmm8, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r9]
        movdqa    xmm0, xmm9
        mulsd     xmm0, xmm3
        movdqa    xmm6, xmm8
        addsd     xmm6, xmm2
        mulsd     xmm1, xmm7
        addsd     xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        movups    xmm10, XMMWORD PTR [48+rsp]
        movaps    xmm11, xmm0
        mulsd     xmm10, xmm7
        addsd     xmm1, QWORD PTR [32+rsp]
        addsd     xmm11, xmm6
        mulsd     xmm1, xmm7
        addsd     xmm10, QWORD PTR [64+rsp]
        movdqa    xmm5, xmm8
        mulsd     xmm10, xmm7
        subsd     xmm5, xmm6
        subsd     xmm6, xmm11
        mulsd     xmm1, xmm3
        mulsd     xmm3, xmm8
        addsd     xmm10, QWORD PTR [80+rsp]
        addsd     xmm5, xmm2
        mulsd     xmm1, xmm9
        addsd     xmm6, xmm0
        subsd     xmm9, xmm3
        mulsd     xmm10, xmm7
        addsd     xmm6, xmm5
        mulsd     xmm4, xmm9
        mulsd     xmm10, xmm8
        addsd     xmm1, xmm6
        addsd     xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r9]
        addsd     xmm10, xmm1
        movups    xmm1, XMMWORD PTR [112+rsp]
        addsd     xmm10, xmm4
        movaps    xmm0, xmm1
        addsd     xmm11, xmm10
        xorps     xmm11, XMMWORD PTR [96+rsp]
        andnps    xmm0, XMMWORD PTR [128+rsp]
        andps     xmm11, xmm1
        movups    xmm14, XMMWORD PTR [144+rsp]
        orps      xmm0, xmm11
        jmp       .L_B5_2
        .align    16, 0x90

.L_B5_9:

        .section .drectve
        .ascii " -export \"__jsvml_sin1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin1_ha_ex_B1_B8:
        .long   1603585
        .long   2479224
        .long   1271920
        .long   1341544
        .long   1738848
        .long   1415255
        .long   1878094
        .long   1816645
        .long   1689660
        .long   1628211
        .long   1566758
        .long   1505307
        .long   3866891

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_9
        .rva    _unwind___jsvml_sin1_ha_ex_B1_B8

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_sin2_ha_l9

__jsvml_sin2_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L234:

        sub       rsp, 488
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [304+rsp], xmm15
        xor       edx, edx
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovups   XMMWORD PTR [352+rsp], xmm12
        vmovups   XMMWORD PTR [368+rsp], xmm11
        vmovups   XMMWORD PTR [384+rsp], xmm10
        vmovups   XMMWORD PTR [400+rsp], xmm9
        vmovups   XMMWORD PTR [416+rsp], xmm8
        vmovapd   xmm8, xmm0
        vmovups   XMMWORD PTR [432+rsp], xmm7
        vmovups   XMMWORD PTR [448+rsp], xmm6
        mov       QWORD PTR [464+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vandnpd   xmm7, xmm1, xmm8
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vandpd    xmm1, xmm8, xmm1
        vfmadd213pd xmm13, xmm1, xmm2
        vmovupd   xmm15, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmovupd   xmm14, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        vsubpd    xmm6, xmm13, xmm2
        vfnmadd213pd xmm15, xmm6, xmm1
        vmovapd   xmm3, xmm6
        vandps    xmm2, xmm13, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vmovd     ecx, xmm2
        vfnmadd213pd xmm3, xmm14, xmm15
        vsubpd    xmm9, xmm15, xmm3
        shl       ecx, 5
        vmovapd   xmm0, xmm3
        vpextrd   r8d, xmm2, 2
        shl       r8d, 5
        vmovq     xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vfnmadd231pd xmm9, xmm14, xmm6
        vmovhpd   xmm14, xmm12, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        vmovhpd   xmm5, xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        vmovq     xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm15, xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        vfmadd213pd xmm0, xmm14, xmm5
        vfnmadd132pd xmm6, xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmovapd   xmm4, xmm0
        vfmadd231pd xmm4, xmm3, xmm15
        vsubpd    xmm10, xmm5, xmm0
        vsubpd    xmm11, xmm0, xmm4
        vmulpd    xmm0, xmm3, xmm3
        vfmadd231pd xmm10, xmm14, xmm3
        vmovapd   xmm12, xmm0
        vfmadd231pd xmm11, xmm3, xmm15
        vfmadd213pd xmm12, xmm2, xmm9
        vaddpd    xmm13, xmm10, xmm11
        vaddpd    xmm11, xmm15, xmm14
        vmulpd    xmm10, xmm0, xmm12
        vmulpd    xmm10, xmm3, xmm10
        vfnmadd213pd xmm3, xmm5, xmm11
        vmovupd   xmm15, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmovapd   xmm12, xmm0
        vmovupd   xmm14, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vfmadd213pd xmm12, xmm15, xmm14
        vfmadd213pd xmm10, xmm11, xmm13
        vmovupd   xmm13, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vfmadd213pd xmm12, xmm0, xmm13
        vmulpd    xmm12, xmm0, xmm12
        vfmadd213pd xmm12, xmm5, xmm10
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vmovhpd   xmm0, xmm5, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        vfmadd213pd xmm6, xmm3, xmm0
        vaddpd    xmm3, xmm12, xmm6
        vaddpd    xmm0, xmm4, xmm3
        vcmpnlepd xmm3, xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vmovmskpd r9d, xmm3
        vxorpd    xmm0, xmm0, xmm7
        mov       QWORD PTR [472+rsp], r13
        test      r9d, r9d
        jne       .L_B6_12

.L_B6_2:

        test      edx, edx
        jne       .L_B6_4

.L_B6_3:

        vmovups   xmm6, XMMWORD PTR [448+rsp]
        vmovups   xmm7, XMMWORD PTR [432+rsp]
        vmovups   xmm8, XMMWORD PTR [416+rsp]
        vmovups   xmm9, XMMWORD PTR [400+rsp]
        vmovups   xmm10, XMMWORD PTR [384+rsp]
        vmovups   xmm11, XMMWORD PTR [368+rsp]
        vmovups   xmm12, XMMWORD PTR [352+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [464+rsp]
        add       rsp, 488
        ret

.L_B6_4:

        vmovupd   XMMWORD PTR [r13], xmm8
        vmovupd   XMMWORD PTR [64+r13], xmm0
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
        cmp       ebx, 2
        jl        .L_B6_8

.L_B6_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_3

.L_B6_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B6_9

.L_B6_12:

        vpand     xmm11, xmm1, XMMWORD PTR [rip+_2il0floatpacket_36]
        vpsrlq    xmm12, xmm11, 52
        vmovd     ecx, xmm12
        vmovupd   XMMWORD PTR [32+rsp], xmm9
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vpextrd   r9d, xmm12, 2
        vpand     xmm4, xmm1, XMMWORD PTR [rip+_2il0floatpacket_37]
        lea       r8d, DWORD PTR [rcx+rcx*2]
        shl       r8d, 3
        vmovupd   XMMWORD PTR [48+rsp], xmm15
        vmovupd   XMMWORD PTR [64+rsp], xmm14
        lea       r10d, DWORD PTR [r9+r9*2]
        shl       r10d, 3
        vandpd    xmm14, xmm9, xmm1
        vmovq     xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        vpaddq    xmm15, xmm4, XMMWORD PTR [rip+_2il0floatpacket_38]
        vcmpeqpd  xmm10, xmm14, xmm9
        vmovupd   XMMWORD PTR [96+rsp], xmm7
        vpsrlq    xmm11, xmm15, 32
        vmovupd   XMMWORD PTR [144+rsp], xmm8
        vmovq     xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        vmovhpd   xmm7, xmm5, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r10]
        vmovdqu   xmm14, XMMWORD PTR [rip+_2il0floatpacket_39]
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        vmovupd   XMMWORD PTR [128+rsp], xmm0
        vpsrlq    xmm0, xmm7, 32
        vmovhpd   xmm12, xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r10]
        vpand     xmm8, xmm15, xmm14
        vmovupd   XMMWORD PTR [112+rsp], xmm3
        vpand     xmm9, xmm12, xmm14
        vmovhpd   xmm3, xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r10]
        vpsrlq    xmm12, xmm12, 32
        vmovupd   XMMWORD PTR [80+rsp], xmm13
        vpand     xmm13, xmm7, xmm14
        vpmuludq  xmm7, xmm11, xmm0
        vpand     xmm4, xmm3, xmm14
        vpmuludq  xmm0, xmm8, xmm0
        vpmuludq  xmm15, xmm11, xmm13
        vmovmskpd edx, xmm10
        vpmuludq  xmm10, xmm8, xmm9
        vpmuludq  xmm9, xmm11, xmm9
        vpsrlq    xmm6, xmm3, 32
        vpsrlq    xmm0, xmm0, 32
        vpmuludq  xmm3, xmm8, xmm4
        vpsrlq    xmm15, xmm15, 32
        vpmuludq  xmm4, xmm11, xmm4
        vpmuludq  xmm5, xmm8, xmm6
        vpmuludq  xmm8, xmm8, xmm12
        vpaddq    xmm7, xmm7, xmm0
        vpand     xmm13, xmm3, xmm14
        vpsrlq    xmm3, xmm3, 32
        vpaddq    xmm13, xmm13, xmm7
        vpaddq    xmm7, xmm4, xmm3
        vpaddq    xmm13, xmm15, xmm13
        vpand     xmm0, xmm5, xmm14
        vpsrlq    xmm15, xmm13, 32
        vpaddq    xmm4, xmm0, xmm7
        vpaddq    xmm7, xmm15, xmm4
        vpmuludq  xmm15, xmm11, xmm6
        vpsrlq    xmm6, xmm5, 32
        vpand     xmm3, xmm10, xmm14
        vpaddq    xmm5, xmm15, xmm6
        vpaddq    xmm15, xmm3, xmm5
        vpsrlq    xmm10, xmm10, 32
        vpsrlq    xmm4, xmm7, 32
        vpaddq    xmm11, xmm9, xmm10
        vpaddq    xmm6, xmm4, xmm15
        vpand     xmm15, xmm8, xmm14
        vpsrlq    xmm5, xmm6, 32
        vpaddq    xmm15, xmm15, xmm11
        vpaddq    xmm9, xmm5, xmm15
        vpsllq    xmm10, xmm9, 32
        vpand     xmm11, xmm6, xmm14
        vpaddq    xmm12, xmm10, xmm11
        vpand     xmm8, xmm1, XMMWORD PTR [rip+_2il0floatpacket_40]
        vpsllq    xmm7, xmm7, 32
        vpand     xmm14, xmm13, xmm14
        vpsrlq    xmm15, xmm12, 12
        vpaddq    xmm11, xmm7, xmm14
        vpxor     xmm7, xmm8, XMMWORD PTR [rip+_2il0floatpacket_41]
        vmovupd   xmm13, XMMWORD PTR [rip+_2il0floatpacket_42]
        vpor      xmm14, xmm15, xmm7
        vaddpd    xmm0, xmm14, xmm13
        vsubpd    xmm9, xmm0, xmm13
        vpand     xmm12, xmm12, XMMWORD PTR [rip+_2il0floatpacket_47]
        vsubpd    xmm10, xmm14, xmm9
        vpxor     xmm6, xmm8, XMMWORD PTR [rip+_2il0floatpacket_44]
        vpand     xmm3, xmm11, XMMWORD PTR [rip+_2il0floatpacket_45]
        vpsrlq    xmm11, xmm11, 24
        vpxor     xmm14, xmm8, XMMWORD PTR [rip+_2il0floatpacket_46]
        vpsllq    xmm8, xmm12, 40
        vpor      xmm7, xmm8, xmm11
        vpsllq    xmm4, xmm3, 28
        vpor      xmm13, xmm7, xmm14
        vpor      xmm5, xmm4, xmm6
        vandps    xmm9, xmm0, XMMWORD PTR [rip+_2il0floatpacket_43]
        vsubpd    xmm0, xmm13, xmm14
        vsubpd    xmm15, xmm5, xmm6
        vmovd     r11d, xmm9
        vaddpd    xmm3, xmm10, xmm0
        vsubpd    xmm10, xmm10, xmm3
        vmovupd   xmm13, XMMWORD PTR [rip+_2il0floatpacket_48]
        vmulpd    xmm5, xmm13, xmm3
        vaddpd    xmm7, xmm0, xmm10
        vaddpd    xmm8, xmm15, xmm7
        vmovapd   xmm15, xmm13
        vfmsub213pd xmm15, xmm3, xmm5
        vmovupd   xmm0, XMMWORD PTR [rip+_2il0floatpacket_53]
        vandpd    xmm14, xmm1, XMMWORD PTR [rip+_2il0floatpacket_52]
        vmovupd   xmm11, XMMWORD PTR [112+rsp]
        vcmpgtpd  xmm6, xmm14, xmm0
        vcmplepd  xmm4, xmm14, xmm0
        vfmadd132pd xmm3, xmm15, XMMWORD PTR [rip+_2il0floatpacket_73]
        vandpd    xmm1, xmm4, xmm1
        vandpd    xmm15, xmm6, xmm5
        shl       r11d, 5
        vorpd     xmm7, xmm1, xmm15
        vpextrd   ecx, xmm9, 2
        vmovapd   xmm9, xmm7
        shl       ecx, 5
        vmovapd   xmm15, xmm7
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r11]
        vmovq     xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r11]
        vfmadd213pd xmm8, xmm13, xmm3
        vmovq     xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r11]
        vmovhpd   xmm14, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovhpd   xmm0, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovhpd   xmm1, xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vfmadd213pd xmm9, xmm0, xmm1
        vandpd    xmm13, xmm6, xmm8
        vmulpd    xmm5, xmm7, xmm7
        vfmadd132pd xmm15, xmm9, xmm14
        vsubpd    xmm12, xmm1, xmm9
        vsubpd    xmm3, xmm9, xmm15
        vfmadd231pd xmm12, xmm0, xmm7
        vmovupd   xmm9, XMMWORD PTR [32+rsp]
        vfmadd231pd xmm9, xmm2, xmm5
        vfmadd231pd xmm3, xmm7, xmm14
        vmulpd    xmm2, xmm5, xmm9
        vaddpd    xmm4, xmm12, xmm3
        vmulpd    xmm3, xmm7, xmm2
        vaddpd    xmm2, xmm14, xmm0
        vmovupd   xmm14, XMMWORD PTR [64+rsp]
        vfmadd231pd xmm14, xmm5, XMMWORD PTR [48+rsp]
        vfmadd213pd xmm3, xmm2, xmm4
        vfnmadd213pd xmm7, xmm1, xmm2
        vmovupd   xmm0, XMMWORD PTR [128+rsp]
        vfmadd213pd xmm14, xmm5, XMMWORD PTR [80+rsp]
        vmulpd    xmm8, xmm5, xmm14
        vfmadd213pd xmm8, xmm1, xmm3
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r11]
        vmovhpd   xmm6, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vfmadd213pd xmm13, xmm7, xmm6
        vaddpd    xmm7, xmm8, xmm13
        vaddpd    xmm9, xmm15, xmm7
        vxorpd    xmm10, xmm9, XMMWORD PTR [96+rsp]
        vmovupd   xmm8, XMMWORD PTR [144+rsp]
        vblendvpd xmm0, xmm0, xmm10, xmm11
        jmp       .L_B6_2
        .align    16, 0x90

.L_B6_13:

        .section .drectve
        .ascii " -export \"__jsvml_sin2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_l9_B1_B4:
        .long   1604097
        .long   3855482
        .long   1861746
        .long   1800297
        .long   1738844
        .long   1677395
        .long   1615946
        .long   1554497
        .long   1493048
        .long   1431599
        .long   1370150
        .long   1308699
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_sin2_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_sin2_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_7
        .rva    .L_B6_12
        .rva    _unwind___jsvml_sin2_ha_l9_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_l9_B12_B12:
        .long   33
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_sin2_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_12
        .rva    .L_B6_13
        .rva    _unwind___jsvml_sin2_ha_l9_B12_B12

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_sin1_ha_l9

__jsvml_sin1_ha_l9:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L277:

        sub       rsp, 472
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [304+rsp], xmm15
        xor       edx, edx
        vmovups   XMMWORD PTR [320+rsp], xmm14
        vmovups   XMMWORD PTR [336+rsp], xmm13
        vmovups   XMMWORD PTR [352+rsp], xmm12
        vmovups   XMMWORD PTR [368+rsp], xmm11
        vmovapd   xmm11, xmm0
        vmovups   XMMWORD PTR [384+rsp], xmm10
        vmovups   XMMWORD PTR [400+rsp], xmm9
        vmovups   XMMWORD PTR [416+rsp], xmm8
        vmovups   XMMWORD PTR [432+rsp], xmm7
        vmovups   XMMWORD PTR [448+rsp], xmm6
        mov       QWORD PTR [296+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        vandpd    xmm13, xmm11, xmm2
        vandnpd   xmm12, xmm2, xmm11
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        vmovapd   xmm8, xmm13
        vfmadd132sd xmm8, xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        mov       QWORD PTR [464+rsp], r13
        vsubsd    xmm9, xmm8, xmm3
        vmovapd   xmm1, xmm9
        vmovapd   xmm10, xmm9
        vfnmadd132sd xmm1, xmm13, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        vmovapd   xmm2, xmm9
        vmovq     xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        vpand     xmm7, xmm8, xmm3
        vmovd     ecx, xmm7
        vfnmadd213sd xmm10, xmm6, xmm1
        shl       ecx, 5
        vmovapd   xmm4, xmm10
        vmovq     xmm7, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        vsubsd    xmm14, xmm1, xmm10
        vfmadd132sd xmm4, xmm7, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vmovq     xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        vmovdqa   xmm8, xmm1
        vmovdqa   xmm15, xmm1
        vfmadd213sd xmm8, xmm10, xmm4
        vsubsd    xmm0, xmm7, xmm4
        vfnmadd213sd xmm2, xmm6, xmm14
        vmovapd   xmm6, xmm10
        vsubsd    xmm5, xmm4, xmm8
        vfmadd132sd xmm6, xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vfnmadd132sd xmm9, xmm2, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        vaddsd    xmm0, xmm1, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        vfmadd213sd xmm15, xmm10, xmm5
        vmulsd    xmm5, xmm10, xmm10
        vaddsd    xmm15, xmm15, xmm6
        vmovsd    xmm14, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmovsd    xmm6, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vmovapd   xmm2, xmm14
        vfmadd213sd xmm2, xmm5, xmm6
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vmulsd    xmm3, xmm2, xmm5
        vmulsd    xmm4, xmm3, xmm10
        vfnmadd213sd xmm10, xmm7, xmm0
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vfmadd213sd xmm4, xmm0, xmm15
        vmovapd   xmm15, xmm3
        vfmadd213sd xmm15, xmm5, xmm2
        vfmadd213sd xmm9, xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        vfmadd213sd xmm15, xmm5, xmm1
        vmulsd    xmm5, xmm15, xmm5
        vfmadd213sd xmm5, xmm7, xmm4
        vaddsd    xmm0, xmm5, xmm9
        vaddsd    xmm4, xmm8, xmm0
        vxorpd    xmm0, xmm4, xmm12
        vcmpnlesd xmm4, xmm13, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        vmovmskpd r8d, xmm4
        test      r8d, 1
        jne       .L_B7_8

.L_B7_2:

        test      edx, edx
        jne       .L_B7_4

.L_B7_3:

        vmovups   xmm6, XMMWORD PTR [448+rsp]
        vmovups   xmm7, XMMWORD PTR [432+rsp]
        vmovups   xmm8, XMMWORD PTR [416+rsp]
        vmovups   xmm9, XMMWORD PTR [400+rsp]
        vmovups   xmm10, XMMWORD PTR [384+rsp]
        vmovups   xmm11, XMMWORD PTR [368+rsp]
        vmovups   xmm12, XMMWORD PTR [352+rsp]
        vmovups   xmm13, XMMWORD PTR [336+rsp]
        vmovups   xmm14, XMMWORD PTR [320+rsp]
        vmovups   xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [296+rsp]
        add       rsp, 472
        ret

.L_B7_4:

        vmovsd    QWORD PTR [r13], xmm11
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B7_6

.L_B7_5:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B7_3

.L_B7_6:

        je        .L_B7_5

.L_B7_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B7_5

.L_B7_8:

        vmovupd   XMMWORD PTR [96+rsp], xmm12
        vpand     xmm12, xmm13, XMMWORD PTR [rip+_2il0floatpacket_36]
        vpsrlq    xmm9, xmm12, 52
        vmovsd    xmm15, QWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vmovd     ecx, xmm9
        vandpd    xmm10, xmm15, xmm13
        vmovupd   XMMWORD PTR [144+rsp], xmm11
        vcmpeqsd  xmm11, xmm10, xmm15
        vpand     xmm8, xmm13, XMMWORD PTR [rip+_2il0floatpacket_37]
        lea       r8d, DWORD PTR [rcx+rcx*2]
        shl       r8d, 3
        vmovupd   XMMWORD PTR [48+rsp], xmm3
        vpaddq    xmm3, xmm8, XMMWORD PTR [rip+_2il0floatpacket_38]
        vmovmskpd edx, xmm11
        vmovupd   XMMWORD PTR [32+rsp], xmm6
        vpsrlq    xmm9, xmm3, 32
        vmovq     xmm6, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        and       edx, 1
        vmovdqu   xmm12, XMMWORD PTR [rip+_2il0floatpacket_39]
        vmovupd   XMMWORD PTR [64+rsp], xmm2
        vpand     xmm2, xmm6, xmm12
        vmovupd   XMMWORD PTR [112+rsp], xmm0
        vpsrlq    xmm0, xmm11, 32
        vmovupd   XMMWORD PTR [128+rsp], xmm4
        vpsrlq    xmm4, xmm6, 32
        vpand     xmm6, xmm3, xmm12
        vpand     xmm5, xmm11, xmm12
        vpmuludq  xmm11, xmm9, xmm0
        vpmuludq  xmm0, xmm6, xmm0
        vpmuludq  xmm15, xmm9, xmm5
        vpmuludq  xmm3, xmm6, xmm4
        vpmuludq  xmm4, xmm9, xmm4
        vmovupd   XMMWORD PTR [80+rsp], xmm1
        vpsrlq    xmm0, xmm0, 32
        vpmuludq  xmm1, xmm6, xmm2
        vpsrlq    xmm15, xmm15, 32
        vpmuludq  xmm2, xmm9, xmm2
        vpaddq    xmm11, xmm11, xmm0
        vpand     xmm5, xmm1, xmm12
        vpsrlq    xmm1, xmm1, 32
        vpaddq    xmm5, xmm5, xmm11
        vpaddq    xmm11, xmm15, xmm5
        vpaddq    xmm5, xmm2, xmm1
        vpand     xmm0, xmm3, xmm12
        vpsrlq    xmm15, xmm11, 32
        vmovq     xmm10, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        vpand     xmm11, xmm11, xmm12
        vpaddq    xmm2, xmm0, xmm5
        vpand     xmm7, xmm10, xmm12
        vpsrlq    xmm10, xmm10, 32
        vpmuludq  xmm8, xmm6, xmm7
        vpmuludq  xmm7, xmm9, xmm7
        vpaddq    xmm5, xmm15, xmm2
        vpsrlq    xmm15, xmm3, 32
        vpand     xmm1, xmm8, xmm12
        vpaddq    xmm4, xmm4, xmm15
        vpmuludq  xmm15, xmm6, xmm10
        vpaddq    xmm3, xmm1, xmm4
        vpand     xmm6, xmm15, xmm12
        vpsrlq    xmm15, xmm8, 32
        vpsrlq    xmm2, xmm5, 32
        vpsllq    xmm5, xmm5, 32
        vpaddq    xmm9, xmm7, xmm15
        vpaddq    xmm4, xmm2, xmm3
        vpaddq    xmm8, xmm6, xmm9
        vpsrlq    xmm3, xmm4, 32
        vpand     xmm1, xmm4, xmm12
        vpaddq    xmm7, xmm3, xmm8
        vpaddq    xmm8, xmm5, xmm11
        vpsllq    xmm0, xmm7, 32
        vpaddq    xmm6, xmm0, xmm1
        vpand     xmm7, xmm13, XMMWORD PTR [rip+_2il0floatpacket_40]
        vpsrlq    xmm12, xmm6, 12
        vpxor     xmm2, xmm7, XMMWORD PTR [rip+_2il0floatpacket_41]
        vmovupd   xmm3, XMMWORD PTR [rip+_2il0floatpacket_42]
        vpor      xmm4, xmm12, xmm2
        vpand     xmm6, xmm6, XMMWORD PTR [rip+_2il0floatpacket_47]
        vaddsd    xmm9, xmm3, xmm4
        vpand     xmm15, xmm8, XMMWORD PTR [rip+_2il0floatpacket_45]
        vpsllq    xmm1, xmm6, 40
        vpsrlq    xmm8, xmm8, 24
        vpsllq    xmm11, xmm15, 28
        vpor      xmm2, xmm1, xmm8
        vsubsd    xmm10, xmm9, xmm3
        vpxor     xmm0, xmm7, XMMWORD PTR [rip+_2il0floatpacket_44]
        vsubsd    xmm5, xmm4, xmm10
        vpxor     xmm4, xmm7, XMMWORD PTR [rip+_2il0floatpacket_46]
        vpor      xmm12, xmm11, xmm0
        vpor      xmm3, xmm2, xmm4
        vsubsd    xmm15, xmm12, xmm0
        vsubsd    xmm7, xmm3, xmm4
        vmovupd   xmm11, XMMWORD PTR [rip+_2il0floatpacket_48]
        vaddsd    xmm12, xmm5, xmm7
        vmulsd    xmm3, xmm12, xmm11
        vsubsd    xmm5, xmm5, xmm12
        vmovupd   xmm1, XMMWORD PTR [rip+_2il0floatpacket_53]
        vaddsd    xmm10, xmm7, xmm5
        vandpd    xmm0, xmm13, XMMWORD PTR [rip+_2il0floatpacket_52]
        vaddsd    xmm6, xmm10, xmm15
        vcmpgtsd  xmm4, xmm0, xmm1
        vcmplesd  xmm2, xmm0, xmm1
        vmovapd   xmm15, xmm12
        vandpd    xmm13, xmm2, xmm13
        vfmsub213sd xmm15, xmm11, xmm3
        vmovupd   xmm10, XMMWORD PTR [128+rsp]
        vfmadd132sd xmm12, xmm15, QWORD PTR [rip+_2il0floatpacket_73]
        vandpd    xmm15, xmm4, xmm3
        vfmadd213sd xmm6, xmm11, xmm12
        vorpd     xmm11, xmm13, xmm15
        vandps    xmm13, xmm9, XMMWORD PTR [rip+_2il0floatpacket_43]
        vmovapd   xmm0, xmm11
        vmovapd   xmm2, xmm11
        vmovd     r9d, xmm13
        vmulsd    xmm5, xmm11, xmm11
        shl       r9d, 5
        vandpd    xmm12, xmm4, xmm6
        vmovq     xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r9]
        vfmadd132sd xmm0, xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vmovq     xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r9]
        vmovdqa   xmm15, xmm3
        vmovdqa   xmm1, xmm3
        vfmadd213sd xmm14, xmm5, QWORD PTR [32+rsp]
        vfmadd213sd xmm15, xmm11, xmm0
        vsubsd    xmm9, xmm13, xmm0
        vmulsd    xmm14, xmm14, xmm5
        vfmadd132sd xmm2, xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vsubsd    xmm9, xmm0, xmm15
        vmovupd   xmm0, XMMWORD PTR [48+rsp]
        vfmadd213sd xmm0, xmm5, QWORD PTR [64+rsp]
        vfmadd213sd xmm1, xmm11, xmm9
        vfmadd213sd xmm0, xmm5, QWORD PTR [80+rsp]
        vaddsd    xmm4, xmm1, xmm2
        vmulsd    xmm1, xmm14, xmm11
        vaddsd    xmm2, xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r9]
        vmulsd    xmm6, xmm0, xmm5
        vfmadd213sd xmm1, xmm2, xmm4
        vfnmadd213sd xmm11, xmm13, xmm2
        vmovupd   xmm0, XMMWORD PTR [112+rsp]
        vfmadd213sd xmm6, xmm13, xmm1
        vfmadd213sd xmm12, xmm11, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r9]
        vmovupd   xmm11, XMMWORD PTR [144+rsp]
        vaddsd    xmm7, xmm6, xmm12
        vaddsd    xmm8, xmm15, xmm7
        vxorpd    xmm9, xmm8, XMMWORD PTR [96+rsp]
        vblendvpd xmm0, xmm0, xmm9, xmm10
        jmp       .L_B7_2
        .align    16, 0x90

.L_B7_9:

        .section .drectve
        .ascii " -export \"__jsvml_sin1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin1_ha_l9_B1_B8:
        .long   1604097
        .long   2479226
        .long   1861746
        .long   1800297
        .long   1738848
        .long   1677399
        .long   1615950
        .long   1554497
        .long   1493048
        .long   1431599
        .long   1370150
        .long   1308699
        .long   3866891

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_9
        .rva    _unwind___jsvml_sin1_ha_l9_B1_B8

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_sin2_ha_ex

__jsvml_sin2_ha_ex:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L316:

        sub       rsp, 488
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [304+rsp], xmm15
        xor       edx, edx
        movups    XMMWORD PTR [320+rsp], xmm14
        movaps    xmm14, xmm0
        movups    XMMWORD PTR [336+rsp], xmm13
        movups    XMMWORD PTR [352+rsp], xmm12
        movups    XMMWORD PTR [368+rsp], xmm11
        movups    XMMWORD PTR [384+rsp], xmm10
        movups    XMMWORD PTR [400+rsp], xmm9
        movups    XMMWORD PTR [416+rsp], xmm8
        movups    XMMWORD PTR [432+rsp], xmm7
        movups    XMMWORD PTR [448+rsp], xmm6
        mov       QWORD PTR [464+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16384]
        and       r13, -64
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16576]
        movaps    xmm13, xmm1
        andps     xmm1, xmm14
        andnps    xmm13, xmm14
        mulpd     xmm3, xmm1
        movups    xmm2, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16640]
        movaps    xmm12, xmm1
        addpd     xmm3, xmm2
        movaps    xmm10, xmm3
        subpd     xmm10, xmm2
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16768]
        mulpd     xmm4, xmm10
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16832]
        mulpd     xmm5, xmm10
        subpd     xmm12, xmm4
        movaps    xmm11, xmm12
        andps     xmm3, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16704]
        subpd     xmm11, xmm5
        pextrw    r8d, xmm3, 4
        movd      ecx, xmm3
        subpd     xmm12, xmm11
        shl       ecx, 5
        movaps    xmm8, xmm11
        shl       r8d, 5
        movaps    xmm4, xmm11
        movq      xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        movaps    xmm6, xmm11
        movhpd    xmm3, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r8]
        mulpd     xmm8, xmm3
        subpd     xmm12, xmm5
        mulpd     xmm6, xmm11
        movq      xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        movups    xmm0, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16896]
        movhpd    xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r8]
        mulpd     xmm0, xmm10
        movq      xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        movaps    xmm7, xmm9
        movhpd    xmm10, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r8]
        movaps    xmm2, xmm9
        addpd     xmm7, xmm8
        subpd     xmm12, xmm0
        mulpd     xmm4, xmm10
        subpd     xmm2, xmm7
        addpd     xmm10, xmm3
        addpd     xmm8, xmm2
        movaps    xmm0, xmm7
        addpd     xmm0, xmm4
        movups    xmm2, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        movaps    xmm15, xmm2
        mulpd     xmm15, xmm6
        subpd     xmm7, xmm0
        addpd     xmm4, xmm7
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        addpd     xmm15, xmm7
        addpd     xmm8, xmm4
        mulpd     xmm15, xmm6
        mulpd     xmm15, xmm11
        mulpd     xmm15, xmm10
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        addpd     xmm8, xmm15
        movaps    xmm15, xmm5
        mulpd     xmm15, xmm6
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        addpd     xmm15, xmm4
        mulpd     xmm15, xmm6
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        addpd     xmm15, xmm3
        mulpd     xmm6, xmm15
        mulpd     xmm6, xmm9
        mulpd     xmm9, xmm11
        addpd     xmm8, xmm6
        subpd     xmm10, xmm9
        mulpd     xmm12, xmm10
        movq      xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        movaps    xmm6, xmm1
        movhpd    xmm9, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r8]
        addpd     xmm9, xmm12
        cmpnlepd  xmm6, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16448]
        addpd     xmm8, xmm9
        movmskpd  r9d, xmm6
        addpd     xmm0, xmm8
        mov       QWORD PTR [472+rsp], r13
        pxor      xmm0, xmm13
        test      r9d, r9d
        jne       .L_B8_12

.L_B8_2:

        test      edx, edx
        jne       .L_B8_4

.L_B8_3:

        movups    xmm6, XMMWORD PTR [448+rsp]
        movups    xmm7, XMMWORD PTR [432+rsp]
        movups    xmm8, XMMWORD PTR [416+rsp]
        movups    xmm9, XMMWORD PTR [400+rsp]
        movups    xmm10, XMMWORD PTR [384+rsp]
        movups    xmm11, XMMWORD PTR [368+rsp]
        movups    xmm12, XMMWORD PTR [352+rsp]
        movups    xmm13, XMMWORD PTR [336+rsp]
        movups    xmm14, XMMWORD PTR [320+rsp]
        movups    xmm15, XMMWORD PTR [304+rsp]
        mov       r13, QWORD PTR [464+rsp]
        add       rsp, 488
        ret

.L_B8_4:

        movups    XMMWORD PTR [r13], xmm14
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B8_3

.L_B8_7:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B8_8:

        mov       ecx, ebx
        mov       eax, 1
        shl       eax, cl
        test      esi, eax
        jne       .L_B8_11

.L_B8_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B8_8

.L_B8_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B8_3

.L_B8_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B8_9

.L_B8_12:

        movdqu    xmm9, XMMWORD PTR [rip+_2il0floatpacket_36]
        pand      xmm9, xmm1
        psrlq     xmm9, 52
        movd      ecx, xmm9
        movups    XMMWORD PTR [32+rsp], xmm7
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        pextrw    r9d, xmm9, 4
        movups    XMMWORD PTR [128+rsp], xmm0
        movaps    xmm0, xmm7
        movups    XMMWORD PTR [112+rsp], xmm6
        andps     xmm0, xmm1
        movdqu    xmm6, XMMWORD PTR [rip+_2il0floatpacket_37]
        lea       r8d, DWORD PTR [rcx+rcx*2]
        cmpeqpd   xmm0, xmm7
        pand      xmm6, xmm1
        lea       r10d, DWORD PTR [r9+r9*2]
        shl       r8d, 3
        paddq     xmm6, XMMWORD PTR [rip+_2il0floatpacket_38]
        movmskpd  edx, xmm0
        movups    XMMWORD PTR [144+rsp], xmm14
        movq      xmm14, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r8]
        shl       r10d, 3
        movups    XMMWORD PTR [64+rsp], xmm4
        movdqa    xmm4, xmm6
        movhpd    xmm14, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+rax+r10]
        psrlq     xmm4, 32
        movdqu    xmm15, XMMWORD PTR [rip+_2il0floatpacket_39]
        movaps    xmm7, xmm14
        movq      xmm12, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r8]
        psrlq     xmm7, 32
        pand      xmm6, xmm15
        movdqa    xmm0, xmm4
        movhpd    xmm12, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rax+r10]
        movdqa    xmm10, xmm6
        pmuludq   xmm0, xmm7
        pand      xmm14, xmm15
        pmuludq   xmm7, xmm6
        pmuludq   xmm14, xmm4
        movups    XMMWORD PTR [96+rsp], xmm13
        movaps    xmm13, xmm12
        pand      xmm12, xmm15
        psrlq     xmm7, 32
        pmuludq   xmm10, xmm12
        psrlq     xmm13, 32
        pmuludq   xmm12, xmm4
        paddq     xmm0, xmm7
        movdqa    xmm11, xmm6
        movdqa    xmm9, xmm15
        pmuludq   xmm11, xmm13
        pand      xmm9, xmm10
        pmuludq   xmm13, xmm4
        paddq     xmm9, xmm0
        movq      xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r8]
        psrlq     xmm14, 32
        movups    XMMWORD PTR [80+rsp], xmm3
        movdqa    xmm3, xmm15
        movhpd    xmm8, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rax+r10]
        psrlq     xmm10, 32
        movups    XMMWORD PTR [48+rsp], xmm5
        pand      xmm3, xmm8
        movdqa    xmm5, xmm6
        movdqa    xmm7, xmm15
        paddq     xmm14, xmm9
        paddq     xmm12, xmm10
        pmuludq   xmm5, xmm3
        pmuludq   xmm4, xmm3
        pand      xmm7, xmm11
        movaps    xmm0, xmm14
        paddq     xmm7, xmm12
        psrlq     xmm0, 32
        psrlq     xmm11, 32
        psrlq     xmm8, 32
        movdqa    xmm10, xmm15
        paddq     xmm0, xmm7
        paddq     xmm13, xmm11
        pmuludq   xmm6, xmm8
        pand      xmm10, xmm5
        movdqa    xmm12, xmm0
        paddq     xmm10, xmm13
        psrlq     xmm12, 32
        psrlq     xmm5, 32
        paddq     xmm12, xmm10
        paddq     xmm4, xmm5
        pand      xmm6, xmm15
        movdqa    xmm9, xmm12
        paddq     xmm6, xmm4
        psrlq     xmm9, 32
        pand      xmm12, xmm15
        paddq     xmm9, xmm6
        psllq     xmm9, 32
        psllq     xmm0, 32
        paddq     xmm9, xmm12
        movdqu    xmm5, XMMWORD PTR [rip+_2il0floatpacket_40]
        movdqa    xmm4, xmm9
        movdqu    xmm11, XMMWORD PTR [rip+_2il0floatpacket_41]
        pand      xmm5, xmm1
        movups    xmm13, XMMWORD PTR [rip+_2il0floatpacket_42]
        psrlq     xmm4, 12
        pxor      xmm11, xmm5
        movaps    xmm8, xmm13
        por       xmm4, xmm11
        pand      xmm14, xmm15
        addpd     xmm8, xmm4
        paddq     xmm0, xmm14
        movaps    xmm14, xmm8
        subpd     xmm14, xmm13
        movdqu    xmm6, XMMWORD PTR [rip+_2il0floatpacket_47]
        movdqu    xmm7, XMMWORD PTR [rip+_2il0floatpacket_45]
        pand      xmm6, xmm9
        movdqu    xmm3, XMMWORD PTR [rip+_2il0floatpacket_44]
        pand      xmm7, xmm0
        psllq     xmm6, 40
        psrlq     xmm0, 24
        pxor      xmm3, xmm5
        por       xmm6, xmm0
        pxor      xmm5, XMMWORD PTR [rip+_2il0floatpacket_46]
        psllq     xmm7, 28
        subpd     xmm4, xmm14
        por       xmm6, xmm5
        movaps    xmm0, xmm4
        subpd     xmm6, xmm5
        addpd     xmm0, xmm6
        subpd     xmm4, xmm0
        por       xmm7, xmm3
        subpd     xmm7, xmm3
        addpd     xmm6, xmm4
        movups    xmm9, XMMWORD PTR [rip+_2il0floatpacket_51]
        andps     xmm9, xmm0
        addpd     xmm7, xmm6
        subpd     xmm0, xmm9
        mulpd     xmm7, XMMWORD PTR [rip+_2il0floatpacket_48]
        movups    xmm15, XMMWORD PTR [rip+_2il0floatpacket_49]
        movups    xmm3, XMMWORD PTR [rip+_2il0floatpacket_50]
        movaps    xmm10, xmm15
        mulpd     xmm10, xmm9
        mulpd     xmm15, xmm0
        mulpd     xmm9, xmm3
        mulpd     xmm3, xmm0
        addpd     xmm15, xmm9
        addpd     xmm7, xmm3
        addpd     xmm15, xmm7
        movups    xmm4, XMMWORD PTR [rip+_2il0floatpacket_53]
        movaps    xmm7, xmm15
        movups    xmm6, XMMWORD PTR [rip+_2il0floatpacket_52]
        movaps    xmm5, xmm4
        andps     xmm6, xmm1
        addpd     xmm7, xmm10
        cmpltpd   xmm5, xmm6
        cmplepd   xmm6, xmm4
        subpd     xmm10, xmm7
        andps     xmm8, XMMWORD PTR [rip+_2il0floatpacket_43]
        andps     xmm6, xmm1
        movd      r11d, xmm8
        andps     xmm7, xmm5
        orps      xmm6, xmm7
        movaps    xmm1, xmm6
        movaps    xmm12, xmm6
        pextrw    ecx, xmm8, 4
        addpd     xmm15, xmm10
        shl       r11d, 5
        andps     xmm5, xmm15
        shl       ecx, 5
        movq      xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+r11]
        movhpd    xmm13, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+rax+rcx]
        mulpd     xmm1, xmm13
        movq      xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+r11]
        movq      xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+r11]
        movhpd    xmm4, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+rax+rcx]
        movhpd    xmm0, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+rax+rcx]
        mulpd     xmm12, xmm4
        addpd     xmm4, xmm13
        movaps    xmm11, xmm0
        movaps    xmm8, xmm0
        addpd     xmm11, xmm1
        movaps    xmm3, xmm11
        addpd     xmm3, xmm12
        subpd     xmm8, xmm11
        subpd     xmm11, xmm3
        addpd     xmm1, xmm8
        addpd     xmm12, xmm11
        movaps    xmm11, xmm6
        mulpd     xmm11, xmm6
        addpd     xmm1, xmm12
        mulpd     xmm2, xmm11
        movups    xmm8, XMMWORD PTR [32+rsp]
        addpd     xmm8, xmm2
        mulpd     xmm8, xmm11
        mulpd     xmm8, xmm6
        mulpd     xmm6, xmm0
        mulpd     xmm8, xmm4
        subpd     xmm4, xmm6
        addpd     xmm1, xmm8
        mulpd     xmm5, xmm4
        movups    xmm2, XMMWORD PTR [48+rsp]
        mulpd     xmm2, xmm11
        movups    xmm8, XMMWORD PTR [64+rsp]
        addpd     xmm8, xmm2
        mulpd     xmm8, xmm11
        movups    xmm13, XMMWORD PTR [80+rsp]
        addpd     xmm13, xmm8
        mulpd     xmm11, xmm13
        mulpd     xmm11, xmm0
        movq      xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+r11]
        movhpd    xmm6, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rax+rcx]
        addpd     xmm1, xmm11
        addpd     xmm6, xmm5
        addpd     xmm1, xmm6
        addpd     xmm3, xmm1
        movups    xmm1, XMMWORD PTR [112+rsp]
        xorps     xmm3, XMMWORD PTR [96+rsp]
        movaps    xmm0, xmm1
        andnps    xmm0, XMMWORD PTR [128+rsp]
        andps     xmm3, xmm1
        movups    xmm14, XMMWORD PTR [144+rsp]
        orps      xmm0, xmm3
        jmp       .L_B8_2
        .align    16, 0x90

.L_B8_13:

        .section .drectve
        .ascii " -export \"__jsvml_sin2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_ex_B1_B4:
        .long   1603585
        .long   3855480
        .long   1861744
        .long   1800296
        .long   1738848
        .long   1677399
        .long   1615950
        .long   1554501
        .long   1493052
        .long   1431603
        .long   1370150
        .long   1308699
        .long   3997963

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_sin2_ha_ex_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_ex_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_sin2_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_7
        .rva    .L_B8_12
        .rva    _unwind___jsvml_sin2_ha_ex_B7_B11

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin2_ha_ex_B12_B12:
        .long   33
        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_sin2_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_12
        .rva    .L_B8_13
        .rva    _unwind___jsvml_sin2_ha_ex_B12_B12

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_sin8_ha_z0

__jsvml_sin8_ha_z0:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L359:

        sub       rsp, 1336
        xor       eax, eax
        vmovups   ZMMWORD PTR [1264+rsp], zmm21
        vmovups   ZMMWORD PTR [1200+rsp], zmm8
        mov       QWORD PTR [1192+rsp], r13
        lea       r13, QWORD PTR [1055+rsp]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+128]
        and       r13, -64
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+192]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+256]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+320]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+384]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+64]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+640]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+512]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1088]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+768]
        vmovaps   zmm27, zmm0
        vfmadd213pd zmm28, zmm27, zmm30 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1024]
        vpcmpeqq  k2, zmm27, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+896]
        vsubpd    zmm8, zmm28, zmm30 {rn-sae}
        vandpd    zmm26, zmm27, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal]
        vpermt2pd zmm24, zmm28, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+704]
        vpermt2pd zmm22, zmm28, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+576]
        vpermt2pd zmm25, zmm28, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+832]
        vxorpd    zmm28{k2}, zmm28, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+960]
        vfnmadd213pd zmm31, zmm8, zmm27 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1152]
        vcmppd    k1, zmm26, zmm29, 22 {sae}
        vpsrlq    zmm28, zmm28, 4
        kortestw  k1, k1
        vmovaps   zmm4, zmm8
        vfnmadd213pd zmm4, zmm2, zmm31 {rn-sae}
        vmovaps   zmm23, zmm8
        vfnmadd213pd zmm23, zmm1, zmm4 {rn-sae}
        vsubpd    zmm5, zmm31, zmm4 {rn-sae}
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1280]
        vmulpd    zmm21, zmm23, zmm23 {rn-sae}
        vfnmadd231pd zmm5, zmm2, zmm8 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1216]
        vsubpd    zmm29, zmm23, zmm4 {rn-sae}
        vfmadd231pd zmm3, zmm0, zmm21 {rn-sae}
        vfmadd231pd zmm2, zmm30, zmm21 {rn-sae}
        vfmadd213pd zmm8, zmm1, zmm29 {rn-sae}
        vfmadd213pd zmm3, zmm21, zmm31 {rn-sae}
        vsubpd    zmm0, zmm5, zmm8 {rn-sae}
        vmovups   zmm8, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1408]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1344]
        vfmadd213pd zmm3, zmm21, zmm8 {rn-sae}
        vfmadd213pd zmm2, zmm21, zmm5 {rn-sae}
        vmovups   zmm8, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal+1472]
        vpsllq    zmm5, zmm25, 32
        vmulpd    zmm3, zmm22, zmm3 {rn-sae}
        vfmadd213pd zmm2, zmm21, zmm8 {rn-sae}
        vmovaps   zmm4, zmm24
        vfmadd213pd zmm4, zmm23, zmm22 {rn-sae}
        vsubpd    zmm1, zmm4, zmm22 {rn-sae}
        vfmsub231pd zmm1, zmm23, zmm24 {rn-sae}
        vmovaps   zmm29, zmm22
        vfnmadd213pd zmm29, zmm23, zmm24 {rn-sae}
        vfmadd213pd zmm25, zmm23, zmm1 {rn-sae}
        vmulpd    zmm23, zmm24, zmm23 {rn-sae}
        vfmadd213pd zmm29, zmm0, zmm5 {rn-sae}
        vpsllq    zmm24, zmm28, 63
        vfmadd213pd zmm2, zmm23, zmm3 {rn-sae}
        vaddpd    zmm22, zmm25, zmm29 {rn-sae}
        vfmadd213pd zmm2, zmm21, zmm22 {rn-sae}
        vaddpd    zmm21, zmm4, zmm2 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vxorpd    zmm0, zmm21, zmm24
        jne       .L_B9_17

.L_B9_2:

        test      eax, eax
        jne       .L_B9_4

.L_B9_3:

        vmovups   zmm8, ZMMWORD PTR [1200+rsp]
        vmovups   zmm21, ZMMWORD PTR [1264+rsp]
        mov       r13, QWORD PTR [1192+rsp]
        add       rsp, 1336
        ret

.L_B9_4:

        vstmxcsr  DWORD PTR [1184+rsp]

.L_B9_5:

        movzx     ecx, WORD PTR [1184+rsp]
        mov       edx, ecx
        or        edx, 8064
        cmp       ecx, edx
        je        .L_B9_7

.L_B9_6:

        mov       DWORD PTR [1184+rsp], edx
        vldmxcsr  DWORD PTR [1184+rsp]

.L_B9_7:

        vmovups   ZMMWORD PTR [r13], zmm27
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      eax, eax
        jne       .L_B9_12

.L_B9_8:

        cmp       ecx, edx
        je        .L_B9_3

.L_B9_9:

        vstmxcsr  DWORD PTR [1184+rsp]
        mov       eax, DWORD PTR [1184+rsp]

.L_B9_10:

        and       eax, -8065
        or        eax, ecx
        mov       DWORD PTR [1184+rsp], eax
        vldmxcsr  DWORD PTR [1184+rsp]
        jmp       .L_B9_3

.L_B9_12:

        xor       r8d, r8d
        kmovw     WORD PTR [952+rsp], k4
        kmovw     WORD PTR [944+rsp], k5
        kmovw     WORD PTR [936+rsp], k6
        kmovw     WORD PTR [928+rsp], k7
        vmovups   ZMMWORD PTR [864+rsp], zmm6
        vmovups   ZMMWORD PTR [800+rsp], zmm7
        vmovups   ZMMWORD PTR [736+rsp], zmm9
        vmovups   ZMMWORD PTR [672+rsp], zmm10
        vmovups   ZMMWORD PTR [608+rsp], zmm11
        vmovups   ZMMWORD PTR [544+rsp], zmm12
        vmovups   ZMMWORD PTR [480+rsp], zmm13
        vmovups   ZMMWORD PTR [416+rsp], zmm14
        vmovups   ZMMWORD PTR [352+rsp], zmm15
        vmovups   ZMMWORD PTR [288+rsp], zmm16
        vmovups   ZMMWORD PTR [224+rsp], zmm17
        vmovups   ZMMWORD PTR [160+rsp], zmm18
        vmovups   ZMMWORD PTR [96+rsp], zmm19
        vmovups   ZMMWORD PTR [32+rsp], zmm20
        mov       QWORD PTR [976+rsp], rbx
        mov       ebx, r8d
        mov       QWORD PTR [968+rsp], rsi
        mov       esi, ecx
        mov       QWORD PTR [960+rsp], rdi
        mov       edi, eax
        mov       QWORD PTR [984+rsp], rbp
        mov       ebp, edx

.L_B9_13:

        bt        edi, ebx
        jc        .L_B9_16

.L_B9_14:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B9_13

.L_B9_15:

        kmovw     k4, WORD PTR [952+rsp]
        mov       edx, ebp
        kmovw     k5, WORD PTR [944+rsp]
        kmovw     k6, WORD PTR [936+rsp]
        kmovw     k7, WORD PTR [928+rsp]
        vmovups   zmm6, ZMMWORD PTR [864+rsp]
        vmovups   zmm7, ZMMWORD PTR [800+rsp]
        vmovups   zmm9, ZMMWORD PTR [736+rsp]
        vmovups   zmm10, ZMMWORD PTR [672+rsp]
        vmovups   zmm11, ZMMWORD PTR [608+rsp]
        vmovups   zmm12, ZMMWORD PTR [544+rsp]
        vmovups   zmm13, ZMMWORD PTR [480+rsp]
        vmovups   zmm14, ZMMWORD PTR [416+rsp]
        vmovups   zmm15, ZMMWORD PTR [352+rsp]
        vmovups   zmm16, ZMMWORD PTR [288+rsp]
        vmovups   zmm17, ZMMWORD PTR [224+rsp]
        vmovups   zmm18, ZMMWORD PTR [160+rsp]
        vmovups   zmm19, ZMMWORD PTR [96+rsp]
        vmovups   zmm20, ZMMWORD PTR [32+rsp]
        vmovups   zmm0, ZMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [976+rsp]
        mov       ecx, esi
        mov       rsi, QWORD PTR [968+rsp]
        mov       rdi, QWORD PTR [960+rsp]
        mov       rbp, QWORD PTR [984+rsp]
        jmp       .L_B9_8

.L_B9_16:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dsin_ha_cout_rare_internal
        jmp       .L_B9_14

.L_B9_17:

        vpandq    zmm23, zmm26, QWORD BCST [rip+_2il0floatpacket_75]
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vpsrlq    zmm4, zmm23, 52
        mov       rcx, rdx
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16512]
        vpcmpeqd  k3, zmm0, zmm0
        vpsllq    zmm21, zmm4, 1
        vandpd    zmm8, zmm5, zmm26
        vpbroadcastq zmm25, QWORD PTR [rip+_2il0floatpacket_74]
        vpaddq    zmm30, zmm21, zmm4
        vpbroadcastq zmm21, QWORD PTR [rip+_2il0floatpacket_78]
        vcmppd    k2, zmm8, zmm5, 4 {sae}
        vpsllq    zmm2, zmm30, 3
        vpmovqd   ymm28, zmm2
        mov       r8, rdx
        vmovaps   zmm22, zmm25
        mov       r9, rdx
        mov       r10, rdx
        mov       r11, rdx
        vpxord    zmm5, zmm5, zmm5
        vgatherdpd zmm5{k3}, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+rdx+ymm28]
        vpcmpeqd  k3, zmm0, zmm0
        vpandnq   zmm22{k2}, zmm8, zmm8
        vpcmpeqd  k2, zmm0, zmm0
        vcmppd    k0, zmm22, zmm22, 3 {sae}
        kmovw     eax, k0
        vpxord    zmm8, zmm8, zmm8
        vpxord    zmm22, zmm22, zmm22
        vpandq    zmm24, zmm26, QWORD BCST [rip+_2il0floatpacket_76]
        vpaddq    zmm23, zmm24, QWORD BCST [rip+_2il0floatpacket_77]
        vpsrlq    zmm24, zmm5, 32
        vgatherdpd zmm8{k2}, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+8+rcx+ymm28]
        vgatherdpd zmm22{k3}, QWORD PTR ["__jsvml_dsin_ha_reduction_data_internal"@imgrel+16+r8+ymm28]
        vpsrlq    zmm31, zmm8, 32
        vpsrlq    zmm29, zmm22, 32
        vpandq    zmm28, zmm8, zmm21
        vpsrlq    zmm8, zmm23, 32
        vpmullq   zmm4, zmm8, zmm31
        vpmullq   zmm3, zmm8, zmm28
        vpmullq   zmm2, zmm8, zmm29
        vpandq    zmm1, zmm5, zmm21
        vpandq    zmm22, zmm22, zmm21
        vpandq    zmm30, zmm23, zmm21
        vpmullq   zmm5, zmm8, zmm1
        vpmullq   zmm23, zmm8, zmm22
        vpmullq   zmm8, zmm30, zmm1
        vpmullq   zmm1, zmm30, zmm28
        vpmullq   zmm22, zmm30, zmm24
        vpmullq   zmm24, zmm30, zmm31
        vpmullq   zmm31, zmm30, zmm29
        vpsrlq    zmm29, zmm1, 32
        vpsrlq    zmm28, zmm8, 32
        vpsrlq    zmm30, zmm31, 32
        vpsrlq    zmm31, zmm24, 32
        vpaddq    zmm3, zmm3, zmm29
        vpaddq    zmm2, zmm2, zmm30
        vpaddq    zmm31, zmm4, zmm31
        vpaddq    zmm30, zmm5, zmm28
        vpandq    zmm4, zmm24, zmm21
        vpaddq    zmm5, zmm4, zmm3
        vpsrlq    zmm3, zmm23, 32
        vpandq    zmm1, zmm1, zmm21
        vpaddq    zmm2, zmm1, zmm2
        vpaddq    zmm23, zmm3, zmm2
        vpandq    zmm29, zmm8, zmm21
        vpandq    zmm24, zmm22, zmm21
        vpaddq    zmm8, zmm29, zmm31
        vpaddq    zmm31, zmm24, zmm30
        vpsrlq    zmm24, zmm23, 32
        vpaddq    zmm29, zmm24, zmm5
        vpsrlq    zmm1, zmm29, 32
        vpsllq    zmm5, zmm29, 32
        vpaddq    zmm4, zmm1, zmm8
        vpbroadcastq zmm1, QWORD PTR [rip+_2il0floatpacket_81]
        vpsrlq    zmm22, zmm4, 32
        vpaddq    zmm3, zmm22, zmm31
        vpandq    zmm2, zmm23, zmm21
        vpandq    zmm24, zmm4, zmm21
        vpsllq    zmm21, zmm3, 32
        vpaddq    zmm3, zmm5, zmm2
        vandpd    zmm2, zmm26, QWORD BCST [rip+_2il0floatpacket_89]
        vpaddq    zmm29, zmm21, zmm24
        vpsrlq    zmm8, zmm29, 12
        vpandq    zmm5, zmm26, QWORD BCST [rip+_2il0floatpacket_79]
        vpternlogq zmm8, zmm5, QWORD BCST [rip+_2il0floatpacket_80], 246
        vaddpd    zmm23, zmm1, zmm8 {rn-sae}
        vsubpd    zmm22, zmm23, zmm1 {rn-sae}
        vsubpd    zmm4, zmm8, zmm22 {rn-sae}
        vpbroadcastq zmm22, QWORD PTR [rip+_2il0floatpacket_87]
        vpandq    zmm21, zmm3, QWORD BCST [rip+_2il0floatpacket_84]
        vpsllq    zmm28, zmm21, 28
        vpsrlq    zmm3, zmm3, 24
        vpbroadcastq zmm21, QWORD PTR [rip+_2il0floatpacket_90]
        vcmppd    k2, zmm2, zmm21, 26 {sae}
        vcmppd    k3, zmm2, zmm21, 22 {sae}
        vpxorq    zmm24, zmm5, QWORD BCST [rip+_2il0floatpacket_83]
        vporq     zmm30, zmm28, zmm24
        vpandq    zmm29, zmm29, QWORD BCST [rip+_2il0floatpacket_86]
        vsubpd    zmm8, zmm30, zmm24 {rn-sae}
        vpsllq    zmm24, zmm29, 40
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17024]
        vmovaps   zmm28, zmm25
        vpxorq    zmm1, zmm5, QWORD BCST [rip+_2il0floatpacket_85]
        vpternlogq zmm3, zmm24, zmm1, 254
        vpbroadcastq zmm5, QWORD PTR [rip+_2il0floatpacket_88]
        vsubpd    zmm24, zmm3, zmm1 {rn-sae}
        vmovaps   zmm1, zmm22
        vpandq    zmm31, zmm23, QWORD BCST [rip+_2il0floatpacket_82]
        vaddpd    zmm23, zmm4, zmm24 {rn-sae}
        vmulpd    zmm3, zmm23, zmm22 {rn-sae}
        vsubpd    zmm4, zmm4, zmm23 {rn-sae}
        vfmsub213pd zmm1, zmm23, zmm3 {rn-sae}
        vaddpd    zmm24, zmm24, zmm4 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17152]
        vfmadd213pd zmm23, zmm5, zmm1 {rn-sae}
        vaddpd    zmm29, zmm24, zmm8 {rn-sae}
        vpsllq    zmm24, zmm31, 5
        vfmadd213pd zmm29, zmm22, zmm23 {rn-sae}
        vpmovqd   ymm8, zmm24
        vpandnq   zmm28{k2}, zmm2, zmm2
        vpcmpeqd  k2, zmm0, zmm0
        vandpd    zmm5, zmm28, zmm3
        vandpd    zmm1, zmm28, zmm29
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+16960]
        vpandnq   zmm25{k3}, zmm2, zmm2
        vpternlogq zmm5, zmm25, zmm26, 248
        vpcmpeqd  k3, zmm0, zmm0
        vmovaps   zmm31, zmm5
        vmovaps   zmm24, zmm5
        vpxord    zmm25, zmm25, zmm25
        vgatherdpd zmm25{k2}, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+r9+ymm8]
        vpcmpeqd  k2, zmm0, zmm0
        vpxord    zmm21, zmm21, zmm21
        vpxord    zmm22, zmm22, zmm22
        vgatherdpd zmm21{k3}, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+8+r10+ymm8]
        vgatherdpd zmm22{k2}, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+16+r11+ymm8]
        vpcmpeqd  k3, zmm0, zmm0
        vfmadd213pd zmm31, zmm21, zmm22 {rn-sae}
        vfmadd132pd zmm24, zmm31, zmm25 {rn-sae}
        vsubpd    zmm2, zmm22, zmm31 {rn-sae}
        vsubpd    zmm23, zmm31, zmm24 {rn-sae}
        vfmadd231pd zmm2, zmm21, zmm5 {rn-sae}
        vfmadd231pd zmm23, zmm5, zmm25 {rn-sae}
        vaddpd    zmm2, zmm23, zmm2 {rn-sae}
        vmulpd    zmm23, zmm5, zmm5 {rn-sae}
        vfmadd231pd zmm3, zmm30, zmm23 {rn-sae}
        vmulpd    zmm30, zmm3, zmm23 {rn-sae}
        vaddpd    zmm3, zmm25, zmm21 {rn-sae}
        vmovups   zmm21, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17216]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dsin_ha_data_internal_ha+17088]
        vmulpd    zmm28, zmm30, zmm5 {rn-sae}
        vfmadd231pd zmm4, zmm21, zmm23 {rn-sae}
        vfnmadd213pd zmm5, zmm22, zmm3 {rn-sae}
        vfmadd213pd zmm28, zmm3, zmm2 {rn-sae}
        vfmadd213pd zmm4, zmm23, zmm25 {rn-sae}
        vmulpd    zmm2, zmm4, zmm23 {rn-sae}
        vfmadd213pd zmm2, zmm22, zmm28 {rn-sae}
        vpxord    zmm22, zmm22, zmm22
        vgatherdpd zmm22{k3}, QWORD PTR ["__jsvml_dsin_ha_data_internal_ha"@imgrel+24+rdx+ymm8]
        vfmadd213pd zmm1, zmm5, zmm22 {rn-sae}
        vaddpd    zmm1, zmm2, zmm1 {rn-sae}
        vaddpd    zmm5, zmm24, zmm1 {rn-sae}
        vpternlogq zmm5, zmm26, zmm27, 150
        vblendmpd zmm0{k1}, zmm0, zmm5
        jmp       .L_B9_2
        .align    16, 0x90

.L_B9_18:

        .section .drectve
        .ascii " -export \"__jsvml_sin8_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin8_ha_z0_B1_B10:
        .long   535297
        .long   9819179
        .long   4950051
        .long   5199896
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_12
        .rva    _unwind___jsvml_sin8_ha_z0_B1_B10

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin8_ha_z0_B12_B16:
        .long   2418721
        .long   8082664
        .long   7894238
        .long   7955668
        .long   8008905
        .long   149697
        .long   407734
        .long   665771
        .long   923808
        .long   1181845
        .long   1505418
        .long   1763455
        .long   2021492
        .long   2279529
        .long   2537566
        .long   2795603
        .long   3053640
        .long   3307581
        .long   3565618
        .rva    .L_B9_1
        .rva    .L_B9_12
        .rva    _unwind___jsvml_sin8_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_12
        .rva    .L_B9_17
        .rva    _unwind___jsvml_sin8_ha_z0_B12_B16

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sin8_ha_z0_B17_B17:
        .long   33
        .rva    .L_B9_1
        .rva    .L_B9_12
        .rva    _unwind___jsvml_sin8_ha_z0_B1_B10

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_17
        .rva    .L_B9_18
        .rva    _unwind___jsvml_sin8_ha_z0_B17_B17

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dsin_ha_cout_rare_internal

__jsvml_dsin_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L410:

        sub       rsp, 40
        mov       r8, rdx
        movzx     eax, WORD PTR [6+rcx]
        and       eax, 32752
        movsd     xmm1, QWORD PTR [rcx]
        mov       dl, BYTE PTR [7+rcx]
        and       dl, 127
        movsd     QWORD PTR [32+rsp], xmm1
        cmp       eax, 32752
        jne       .L_B10_6

.L_B10_2:

        cmp       DWORD PTR [32+rsp], 0
        jne       .L_B10_5

.L_B10_3:

        mov       BYTE PTR [39+rsp], dl
        cmp       DWORD PTR [36+rsp], 2146435072
        jne       .L_B10_5

.L_B10_4:

        movsd     xmm0, QWORD PTR [rip+_vmldSinHATab]
        mov       eax, 1
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [r8], xmm1
        add       rsp, 40
        ret

.L_B10_5:

        mulsd     xmm1, xmm1
        xor       eax, eax
        movsd     QWORD PTR [r8], xmm1
        add       rsp, 40
        ret

.L_B10_6:

        xor       eax, eax
        add       rsp, 40
        ret
        .align    16, 0x90

.L_B10_7:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dsin_ha_cout_rare_internal_B1_B6:
        .long   67585
        .long   16904

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_7
        .rva    _unwind___jsvml_dsin_ha_cout_rare_internal_B1_B6

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dsin_ha_reduction_data_internal
__jsvml_dsin_ha_reduction_data_internal:
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
        .long   1
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   5
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   10
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   20
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   40
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   81
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   162
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   325
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   651
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1303
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2607
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   5215
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   10430
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   20860
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   41721
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   83443
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   166886
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   333772
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   667544
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1335088
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2670176
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   5340353
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   10680707
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   21361414
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   42722829
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   85445659
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   170891318
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   341782637
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   683565275
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1367130551
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2734261102
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1173554908
        .long   1
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2347109817
        .long   2
        .long   0
        .long   0
        .long   0
        .long   0
        .long   399252338
        .long   5
        .long   0
        .long   0
        .long   0
        .long   0
        .long   798504676
        .long   10
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1597009353
        .long   20
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3194018707
        .long   40
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2093070119
        .long   81
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4186140238
        .long   162
        .long   0
        .long   0
        .long   0
        .long   0
        .long   4077313180
        .long   325
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3859659065
        .long   651
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3424350834
        .long   1303
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2553734372
        .long   2607
        .long   0
        .long   0
        .long   0
        .long   0
        .long   812501448
        .long   5215
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1625002897
        .long   10430
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3250005794
        .long   20860
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2205044292
        .long   41721
        .long   0
        .long   0
        .long   0
        .long   0
        .long   115121288
        .long   83443
        .long   0
        .long   0
        .long   0
        .long   0
        .long   230242576
        .long   166886
        .long   0
        .long   0
        .long   0
        .long   0
        .long   460485152
        .long   333772
        .long   0
        .long   0
        .long   0
        .long   0
        .long   920970305
        .long   667544
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1841940610
        .long   1335088
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3683881221
        .long   2670176
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3072795146
        .long   5340353
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1850622997
        .long   10680707
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3701245994
        .long   21361414
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3107524692
        .long   42722829
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1920082089
        .long   85445659
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3840164178
        .long   170891318
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3385361061
        .long   341782637
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2475754826
        .long   683565275
        .long   0
        .long   0
        .long   0
        .long   0
        .long   656542356
        .long   1367130551
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1313084713
        .long   2734261102
        .long   0
        .long   0
        .long   1
        .long   0
        .long   2626169427
        .long   1173554908
        .long   0
        .long   0
        .long   2
        .long   0
        .long   957371559
        .long   2347109817
        .long   0
        .long   0
        .long   5
        .long   0
        .long   1914743119
        .long   399252338
        .long   0
        .long   0
        .long   10
        .long   0
        .long   3829486239
        .long   798504676
        .long   0
        .long   0
        .long   20
        .long   0
        .long   3364005183
        .long   1597009353
        .long   0
        .long   0
        .long   40
        .long   0
        .long   2433043071
        .long   3194018707
        .long   0
        .long   0
        .long   81
        .long   0
        .long   571118846
        .long   2093070119
        .long   0
        .long   0
        .long   162
        .long   0
        .long   1142237692
        .long   4186140238
        .long   0
        .long   0
        .long   325
        .long   0
        .long   2284475384
        .long   4077313180
        .long   0
        .long   0
        .long   651
        .long   0
        .long   273983472
        .long   3859659065
        .long   0
        .long   0
        .long   1303
        .long   0
        .long   547966945
        .long   3424350834
        .long   0
        .long   0
        .long   2607
        .long   0
        .long   1095933890
        .long   2553734372
        .long   0
        .long   0
        .long   5215
        .long   0
        .long   2191867780
        .long   812501448
        .long   0
        .long   0
        .long   10430
        .long   0
        .long   88768265
        .long   1625002897
        .long   0
        .long   0
        .long   20860
        .long   0
        .long   177536531
        .long   3250005794
        .long   0
        .long   0
        .long   41721
        .long   0
        .long   355073063
        .long   2205044292
        .long   0
        .long   0
        .long   83443
        .long   0
        .long   710146126
        .long   115121288
        .long   0
        .long   0
        .long   166886
        .long   0
        .long   1420292253
        .long   230242576
        .long   0
        .long   0
        .long   333772
        .long   0
        .long   2840584506
        .long   460485152
        .long   0
        .long   0
        .long   667544
        .long   0
        .long   1386201717
        .long   920970305
        .long   0
        .long   0
        .long   1335088
        .long   0
        .long   2772403434
        .long   1841940610
        .long   0
        .long   0
        .long   2670176
        .long   0
        .long   1249839573
        .long   3683881221
        .long   0
        .long   0
        .long   5340353
        .long   0
        .long   2499679147
        .long   3072795146
        .long   0
        .long   0
        .long   10680707
        .long   0
        .long   704390999
        .long   1850622997
        .long   0
        .long   0
        .long   21361414
        .long   0
        .long   1408781999
        .long   3701245994
        .long   0
        .long   0
        .long   42722829
        .long   0
        .long   2817563999
        .long   3107524692
        .long   0
        .long   0
        .long   85445659
        .long   0
        .long   1340160702
        .long   1920082089
        .long   0
        .long   0
        .long   170891318
        .long   0
        .long   2680321405
        .long   3840164178
        .long   0
        .long   0
        .long   341782637
        .long   0
        .long   1065675514
        .long   3385361061
        .long   0
        .long   0
        .long   683565275
        .long   0
        .long   2131351028
        .long   2475754826
        .long   0
        .long   0
        .long   1367130551
        .long   0
        .long   4262702056
        .long   656542356
        .long   0
        .long   0
        .long   2734261102
        .long   0
        .long   4230436817
        .long   1313084713
        .long   0
        .long   0
        .long   1173554908
        .long   1
        .long   4165906339
        .long   2626169427
        .long   0
        .long   0
        .long   2347109817
        .long   2
        .long   4036845383
        .long   957371559
        .long   0
        .long   0
        .long   399252338
        .long   5
        .long   3778723471
        .long   1914743119
        .long   0
        .long   0
        .long   798504676
        .long   10
        .long   3262479647
        .long   3829486239
        .long   0
        .long   0
        .long   1597009353
        .long   20
        .long   2229991998
        .long   3364005183
        .long   0
        .long   0
        .long   3194018707
        .long   40
        .long   165016701
        .long   2433043071
        .long   0
        .long   0
        .long   2093070119
        .long   81
        .long   330033402
        .long   571118846
        .long   0
        .long   0
        .long   4186140238
        .long   162
        .long   660066805
        .long   1142237692
        .long   0
        .long   0
        .long   4077313180
        .long   325
        .long   1320133610
        .long   2284475384
        .long   0
        .long   0
        .long   3859659065
        .long   651
        .long   2640267220
        .long   273983472
        .long   0
        .long   0
        .long   3424350834
        .long   1303
        .long   985567145
        .long   547966945
        .long   0
        .long   0
        .long   2553734372
        .long   2607
        .long   1971134291
        .long   1095933890
        .long   0
        .long   0
        .long   812501448
        .long   5215
        .long   3942268582
        .long   2191867780
        .long   0
        .long   0
        .long   1625002897
        .long   10430
        .long   3589569869
        .long   88768265
        .long   0
        .long   0
        .long   3250005794
        .long   20860
        .long   2884172442
        .long   177536531
        .long   0
        .long   0
        .long   2205044292
        .long   41721
        .long   1473377588
        .long   355073063
        .long   0
        .long   0
        .long   115121288
        .long   83443
        .long   2946755177
        .long   710146126
        .long   0
        .long   0
        .long   230242576
        .long   166886
        .long   1598543059
        .long   1420292253
        .long   0
        .long   0
        .long   460485152
        .long   333772
        .long   3197086118
        .long   2840584506
        .long   0
        .long   0
        .long   920970305
        .long   667544
        .long   2099204941
        .long   1386201717
        .long   0
        .long   0
        .long   1841940610
        .long   1335088
        .long   4198409883
        .long   2772403434
        .long   0
        .long   0
        .long   3683881221
        .long   2670176
        .long   4101852471
        .long   1249839573
        .long   0
        .long   0
        .long   3072795146
        .long   5340353
        .long   3908737646
        .long   2499679147
        .long   0
        .long   0
        .long   1850622997
        .long   10680707
        .long   3522507997
        .long   704390999
        .long   0
        .long   0
        .long   3701245994
        .long   21361414
        .long   2750048699
        .long   1408781999
        .long   0
        .long   0
        .long   3107524692
        .long   42722829
        .long   1205130103
        .long   2817563999
        .long   0
        .long   0
        .long   1920082089
        .long   85445659
        .long   2410260206
        .long   1340160702
        .long   0
        .long   0
        .long   3840164178
        .long   170891318
        .long   525553116
        .long   2680321405
        .long   0
        .long   0
        .long   3385361061
        .long   341782637
        .long   1051106232
        .long   1065675514
        .long   0
        .long   0
        .long   2475754826
        .long   683565275
        .long   2102212464
        .long   2131351028
        .long   0
        .long   0
        .long   656542356
        .long   1367130551
        .long   4204424928
        .long   4262702056
        .long   0
        .long   0
        .long   1313084713
        .long   2734261102
        .long   4113882560
        .long   4230436817
        .long   1
        .long   0
        .long   2626169427
        .long   1173554908
        .long   3932797825
        .long   4165906339
        .long   2
        .long   0
        .long   957371559
        .long   2347109817
        .long   3570628355
        .long   4036845383
        .long   5
        .long   0
        .long   1914743119
        .long   399252338
        .long   2846289414
        .long   3778723471
        .long   10
        .long   0
        .long   3829486239
        .long   798504676
        .long   1397611533
        .long   3262479647
        .long   20
        .long   0
        .long   3364005183
        .long   1597009353
        .long   2795223067
        .long   2229991998
        .long   40
        .long   0
        .long   2433043071
        .long   3194018707
        .long   1295478838
        .long   165016701
        .long   81
        .long   0
        .long   571118846
        .long   2093070119
        .long   2590957677
        .long   330033402
        .long   162
        .long   0
        .long   1142237692
        .long   4186140238
        .long   886948059
        .long   660066805
        .long   325
        .long   0
        .long   2284475384
        .long   4077313180
        .long   1773896118
        .long   1320133610
        .long   651
        .long   0
        .long   273983472
        .long   3859659065
        .long   3547792237
        .long   2640267220
        .long   1303
        .long   0
        .long   547966945
        .long   3424350834
        .long   2800617179
        .long   985567145
        .long   2607
        .long   0
        .long   1095933890
        .long   2553734372
        .long   1306267062
        .long   1971134291
        .long   5215
        .long   0
        .long   2191867780
        .long   812501448
        .long   2612534124
        .long   3942268582
        .long   10430
        .long   0
        .long   88768265
        .long   1625002897
        .long   930100952
        .long   3589569869
        .long   20860
        .long   0
        .long   177536531
        .long   3250005794
        .long   1860201905
        .long   2884172442
        .long   41721
        .long   0
        .long   355073063
        .long   2205044292
        .long   3720403810
        .long   1473377588
        .long   83443
        .long   0
        .long   710146126
        .long   115121288
        .long   3145840325
        .long   2946755177
        .long   166886
        .long   0
        .long   1420292253
        .long   230242576
        .long   1996713354
        .long   1598543059
        .long   333772
        .long   0
        .long   2840584506
        .long   460485152
        .long   3993426708
        .long   3197086118
        .long   667544
        .long   0
        .long   1386201717
        .long   920970305
        .long   3691886121
        .long   2099204941
        .long   1335088
        .long   0
        .long   2772403434
        .long   1841940610
        .long   3088804946
        .long   4198409883
        .long   2670176
        .long   0
        .long   1249839573
        .long   3683881221
        .long   1882642597
        .long   4101852471
        .long   5340353
        .long   0
        .long   2499679147
        .long   3072795146
        .long   3765285194
        .long   3908737646
        .long   10680707
        .long   0
        .long   704390999
        .long   1850622997
        .long   3235603093
        .long   3522507997
        .long   21361414
        .long   0
        .long   1408781999
        .long   3701245994
        .long   2176238891
        .long   2750048699
        .long   42722829
        .long   0
        .long   2817563999
        .long   3107524692
        .long   57510486
        .long   1205130103
        .long   85445659
        .long   0
        .long   1340160702
        .long   1920082089
        .long   115020972
        .long   2410260206
        .long   170891318
        .long   0
        .long   2680321405
        .long   3840164178
        .long   230041945
        .long   525553116
        .long   341782637
        .long   0
        .long   1065675514
        .long   3385361061
        .long   460083891
        .long   1051106232
        .long   683565275
        .long   0
        .long   2131351028
        .long   2475754826
        .long   920167782
        .long   2102212464
        .long   1367130551
        .long   0
        .long   4262702056
        .long   656542356
        .long   1840335564
        .long   4204424928
        .long   2734261102
        .long   0
        .long   4230436817
        .long   1313084713
        .long   3680671129
        .long   4113882560
        .long   1173554908
        .long   1
        .long   4165906339
        .long   2626169427
        .long   3066374962
        .long   3932797825
        .long   2347109817
        .long   2
        .long   4036845383
        .long   957371559
        .long   1837782628
        .long   3570628355
        .long   399252338
        .long   5
        .long   3778723471
        .long   1914743119
        .long   3675565257
        .long   2846289414
        .long   798504676
        .long   10
        .long   3262479647
        .long   3829486239
        .long   3056163219
        .long   1397611533
        .long   1597009353
        .long   20
        .long   2229991998
        .long   3364005183
        .long   1817359143
        .long   2795223067
        .long   3194018707
        .long   40
        .long   165016701
        .long   2433043071
        .long   3634718287
        .long   1295478838
        .long   2093070119
        .long   81
        .long   330033402
        .long   571118846
        .long   2974469278
        .long   2590957677
        .long   4186140238
        .long   162
        .long   660066805
        .long   1142237692
        .long   1653971260
        .long   886948059
        .long   4077313180
        .long   325
        .long   1320133610
        .long   2284475384
        .long   3307942520
        .long   1773896118
        .long   3859659065
        .long   651
        .long   2640267220
        .long   273983472
        .long   2320917745
        .long   3547792237
        .long   3424350834
        .long   1303
        .long   985567145
        .long   547966945
        .long   346868194
        .long   2800617179
        .long   2553734372
        .long   2607
        .long   1971134291
        .long   1095933890
        .long   693736388
        .long   1306267062
        .long   812501448
        .long   5215
        .long   3942268582
        .long   2191867780
        .long   1387472776
        .long   2612534124
        .long   1625002897
        .long   10430
        .long   3589569869
        .long   88768265
        .long   2774945552
        .long   930100952
        .long   3250005794
        .long   20860
        .long   2884172442
        .long   177536531
        .long   1254923809
        .long   1860201905
        .long   2205044292
        .long   41721
        .long   1473377588
        .long   355073063
        .long   2509847619
        .long   3720403810
        .long   115121288
        .long   83443
        .long   2946755177
        .long   710146126
        .long   724727943
        .long   3145840325
        .long   230242576
        .long   166886
        .long   1598543059
        .long   1420292253
        .long   1449455886
        .long   1996713354
        .long   460485152
        .long   333772
        .long   3197086118
        .long   2840584506
        .long   2898911772
        .long   3993426708
        .long   920970305
        .long   667544
        .long   2099204941
        .long   1386201717
        .long   1502856249
        .long   3691886121
        .long   1841940610
        .long   1335088
        .long   4198409883
        .long   2772403434
        .long   3005712498
        .long   3088804946
        .long   3683881221
        .long   2670176
        .long   4101852471
        .long   1249839573
        .long   1716457700
        .long   1882642597
        .long   3072795146
        .long   5340353
        .long   3908737646
        .long   2499679147
        .long   3432915400
        .long   3765285194
        .long   1850622997
        .long   10680707
        .long   3522507997
        .long   704390999
        .long   2570863504
        .long   3235603093
        .long   3701245994
        .long   21361414
        .long   2750048699
        .long   1408781999
        .long   846759712
        .long   2176238891
        .long   3107524692
        .long   42722829
        .long   1205130103
        .long   2817563999
        .long   1693519425
        .long   57510486
        .long   1920082089
        .long   85445659
        .long   2410260206
        .long   1340160702
        .long   3387038850
        .long   115020972
        .long   3840164178
        .long   170891318
        .long   525553116
        .long   2680321405
        .long   2479110404
        .long   230041945
        .long   3385361061
        .long   341782637
        .long   1051106232
        .long   1065675514
        .long   663253512
        .long   460083891
        .long   2475754826
        .long   683565275
        .long   2102212464
        .long   2131351028
        .long   1326507024
        .long   920167782
        .long   656542356
        .long   1367130551
        .long   4204424928
        .long   4262702056
        .long   2653014048
        .long   1840335564
        .long   1313084713
        .long   2734261102
        .long   4113882560
        .long   4230436817
        .long   1011060801
        .long   3680671129
        .long   2626169427
        .long   1173554908
        .long   3932797825
        .long   4165906339
        .long   2022121603
        .long   3066374962
        .long   957371559
        .long   2347109817
        .long   3570628355
        .long   4036845383
        .long   4044243207
        .long   1837782628
        .long   1914743119
        .long   399252338
        .long   2846289414
        .long   3778723471
        .long   3793519119
        .long   3675565257
        .long   3829486239
        .long   798504676
        .long   1397611533
        .long   3262479647
        .long   3292070943
        .long   3056163219
        .long   3364005183
        .long   1597009353
        .long   2795223067
        .long   2229991998
        .long   2289174591
        .long   1817359143
        .long   2433043071
        .long   3194018707
        .long   1295478838
        .long   165016701
        .long   283381887
        .long   3634718287
        .long   571118846
        .long   2093070119
        .long   2590957677
        .long   330033402
        .long   566763775
        .long   2974469278
        .long   1142237692
        .long   4186140238
        .long   886948059
        .long   660066805
        .long   1133527550
        .long   1653971260
        .long   2284475384
        .long   4077313180
        .long   1773896118
        .long   1320133610
        .long   2267055100
        .long   3307942520
        .long   273983472
        .long   3859659065
        .long   3547792237
        .long   2640267220
        .long   239142905
        .long   2320917745
        .long   547966945
        .long   3424350834
        .long   2800617179
        .long   985567145
        .long   478285810
        .long   346868194
        .long   1095933890
        .long   2553734372
        .long   1306267062
        .long   1971134291
        .long   956571621
        .long   693736388
        .long   2191867780
        .long   812501448
        .long   2612534124
        .long   3942268582
        .long   1913143242
        .long   1387472776
        .long   88768265
        .long   1625002897
        .long   930100952
        .long   3589569869
        .long   3826286484
        .long   2774945552
        .long   177536531
        .long   3250005794
        .long   1860201905
        .long   2884172442
        .long   3357605672
        .long   1254923809
        .long   355073063
        .long   2205044292
        .long   3720403810
        .long   1473377588
        .long   2420244049
        .long   2509847619
        .long   710146126
        .long   115121288
        .long   3145840325
        .long   2946755177
        .long   545520802
        .long   724727943
        .long   1420292253
        .long   230242576
        .long   1996713354
        .long   1598543059
        .long   1091041605
        .long   1449455886
        .long   2840584506
        .long   460485152
        .long   3993426708
        .long   3197086118
        .long   2182083211
        .long   2898911772
        .long   1386201717
        .long   920970305
        .long   3691886121
        .long   2099204941
        .long   69199126
        .long   1502856249
        .long   2772403434
        .long   1841940610
        .long   3088804946
        .long   4198409883
        .long   138398252
        .long   3005712498
        .long   1249839573
        .long   3683881221
        .long   1882642597
        .long   4101852471
        .long   276796504
        .long   1716457700
        .long   2499679147
        .long   3072795146
        .long   3765285194
        .long   3908737646
        .long   553593009
        .long   3432915400
        .long   704390999
        .long   1850622997
        .long   3235603093
        .long   3522507997
        .long   1107186019
        .long   2570863504
        .long   1408781999
        .long   3701245994
        .long   2176238891
        .long   2750048699
        .long   2214372039
        .long   846759712
        .long   2817563999
        .long   3107524692
        .long   57510486
        .long   1205130103
        .long   133776782
        .long   1693519425
        .long   1340160702
        .long   1920082089
        .long   115020972
        .long   2410260206
        .long   267553565
        .long   3387038850
        .long   2680321405
        .long   3840164178
        .long   230041945
        .long   525553116
        .long   535107130
        .long   2479110404
        .long   1065675514
        .long   3385361061
        .long   460083891
        .long   1051106232
        .long   1070214261
        .long   663253512
        .long   2131351028
        .long   2475754826
        .long   920167782
        .long   2102212464
        .long   2140428522
        .long   1326507024
        .long   4262702056
        .long   656542356
        .long   1840335564
        .long   4204424928
        .long   4280857045
        .long   2653014048
        .long   4230436817
        .long   1313084713
        .long   3680671129
        .long   4113882560
        .long   4266746795
        .long   1011060801
        .long   4165906339
        .long   2626169427
        .long   3066374962
        .long   3932797825
        .long   4238526295
        .long   2022121603
        .long   4036845383
        .long   957371559
        .long   1837782628
        .long   3570628355
        .long   4182085295
        .long   4044243207
        .long   3778723471
        .long   1914743119
        .long   3675565257
        .long   2846289414
        .long   4069203294
        .long   3793519119
        .long   3262479647
        .long   3829486239
        .long   3056163219
        .long   1397611533
        .long   3843439293
        .long   3292070943
        .long   2229991998
        .long   3364005183
        .long   1817359143
        .long   2795223067
        .long   3391911291
        .long   2289174591
        .long   165016701
        .long   2433043071
        .long   3634718287
        .long   1295478838
        .long   2488855287
        .long   283381887
        .long   330033402
        .long   571118846
        .long   2974469278
        .long   2590957677
        .long   682743279
        .long   566763775
        .long   660066805
        .long   1142237692
        .long   1653971260
        .long   886948059
        .long   1365486558
        .long   1133527550
        .long   1320133610
        .long   2284475384
        .long   3307942520
        .long   1773896118
        .long   2730973117
        .long   2267055100
        .long   2640267220
        .long   273983472
        .long   2320917745
        .long   3547792237
        .long   1166978938
        .long   239142905
        .long   985567145
        .long   547966945
        .long   346868194
        .long   2800617179
        .long   2333957877
        .long   478285810
        .long   1971134291
        .long   1095933890
        .long   693736388
        .long   1306267062
        .long   372948459
        .long   956571621
        .long   3942268582
        .long   2191867780
        .long   1387472776
        .long   2612534124
        .long   745896919
        .long   1913143242
        .long   3589569869
        .long   88768265
        .long   2774945552
        .long   930100952
        .long   1491793838
        .long   3826286484
        .long   2884172442
        .long   177536531
        .long   1254923809
        .long   1860201905
        .long   2983587677
        .long   3357605672
        .long   1473377588
        .long   355073063
        .long   2509847619
        .long   3720403810
        .long   1672208059
        .long   2420244049
        .long   2946755177
        .long   710146126
        .long   724727943
        .long   3145840325
        .long   3344416119
        .long   545520802
        .long   1598543059
        .long   1420292253
        .long   1449455886
        .long   1996713354
        .long   2393864943
        .long   1091041605
        .long   3197086118
        .long   2840584506
        .long   2898911772
        .long   3993426708
        .long   492762590
        .long   2182083211
        .long   2099204941
        .long   1386201717
        .long   1502856249
        .long   3691886121
        .long   985525180
        .long   69199126
        .long   4198409883
        .long   2772403434
        .long   3005712498
        .long   3088804946
        .long   1971050360
        .long   138398252
        .long   4101852471
        .long   1249839573
        .long   1716457700
        .long   1882642597
        .long   3942100721
        .long   276796504
        .long   3908737646
        .long   2499679147
        .long   3432915400
        .long   3765285194
        .long   3589234146
        .long   553593009
        .long   3522507997
        .long   704390999
        .long   2570863504
        .long   3235603093
        .long   2883500997
        .long   1107186019
        .long   2750048699
        .long   1408781999
        .long   846759712
        .long   2176238891
        .long   1472034698
        .long   2214372039
        .long   1205130103
        .long   2817563999
        .long   1693519425
        .long   57510486
        .long   2944069397
        .long   133776782
        .long   2410260206
        .long   1340160702
        .long   3387038850
        .long   115020972
        .long   1593171499
        .long   267553565
        .long   525553116
        .long   2680321405
        .long   2479110404
        .long   230041945
        .long   3186342998
        .long   535107130
        .long   1051106232
        .long   1065675514
        .long   663253512
        .long   460083891
        .long   2077718700
        .long   1070214261
        .long   2102212464
        .long   2131351028
        .long   1326507024
        .long   920167782
        .long   4155437400
        .long   2140428522
        .long   4204424928
        .long   4262702056
        .long   2653014048
        .long   1840335564
        .long   4015907504
        .long   4280857045
        .long   4113882560
        .long   4230436817
        .long   1011060801
        .long   3680671129
        .long   3736847713
        .long   4266746795
        .long   3932797825
        .long   4165906339
        .long   2022121603
        .long   3066374962
        .long   3178728131
        .long   4238526295
        .long   3570628355
        .long   4036845383
        .long   4044243207
        .long   1837782628
        .long   2062488966
        .long   4182085295
        .long   2846289414
        .long   3778723471
        .long   3793519119
        .long   3675565257
        .long   4124977933
        .long   4069203294
        .long   1397611533
        .long   3262479647
        .long   3292070943
        .long   3056163219
        .long   3954988571
        .long   3843439293
        .long   2795223067
        .long   2229991998
        .long   2289174591
        .long   1817359143
        .long   3615009846
        .long   3391911291
        .long   1295478838
        .long   165016701
        .long   283381887
        .long   3634718287
        .long   2935052397
        .long   2488855287
        .long   2590957677
        .long   330033402
        .long   566763775
        .long   2974469278
        .long   1575137499
        .long   682743279
        .long   886948059
        .long   660066805
        .long   1133527550
        .long   1653971260
        .long   3150274999
        .long   1365486558
        .long   1773896118
        .long   1320133610
        .long   2267055100
        .long   3307942520
        .long   2005582702
        .long   2730973117
        .long   3547792237
        .long   2640267220
        .long   239142905
        .long   2320917745
        .long   4011165404
        .long   1166978938
        .long   2800617179
        .long   985567145
        .long   478285810
        .long   346868194
        .long   3727363513
        .long   2333957877
        .long   1306267062
        .long   1971134291
        .long   956571621
        .long   693736388
        .long   3159759730
        .long   372948459
        .long   2612534124
        .long   3942268582
        .long   1913143242
        .long   1387472776
        .long   2024552164
        .long   745896919
        .long   930100952
        .long   3589569869
        .long   3826286484
        .long   2774945552
        .long   4049104329
        .long   1491793838
        .long   1860201905
        .long   2884172442
        .long   3357605672
        .long   1254923809
        .long   3803241362
        .long   2983587677
        .long   3720403810
        .long   1473377588
        .long   2420244049
        .long   2509847619
        .long   3311515428
        .long   1672208059
        .long   3145840325
        .long   2946755177
        .long   545520802
        .long   724727943
        .long   2328063560
        .long   3344416119
        .long   1996713354
        .long   1598543059
        .long   1091041605
        .long   1449455886
        .long   361159825
        .long   2393864943
        .long   3993426708
        .long   3197086118
        .long   2182083211
        .long   2898911772
        .long   722319651
        .long   492762590
        .long   3691886121
        .long   2099204941
        .long   69199126
        .long   1502856249
        .long   1444639302
        .long   985525180
        .long   3088804946
        .long   4198409883
        .long   138398252
        .long   3005712498
        .long   2889278605
        .long   1971050360
        .long   1882642597
        .long   4101852471
        .long   276796504
        .long   1716457700
        .long   1483589915
        .long   3942100721
        .long   3765285194
        .long   3908737646
        .long   553593009
        .long   3432915400
        .long   2967179831
        .long   3589234146
        .long   3235603093
        .long   3522507997
        .long   1107186019
        .long   2570863504
        .long   1639392366
        .long   2883500997
        .long   2176238891
        .long   2750048699
        .long   2214372039
        .long   846759712
        .long   3278784732
        .long   1472034698
        .long   57510486
        .long   1205130103
        .long   133776782
        .long   1693519425
        .long   2262602168
        .long   2944069397
        .long   115020972
        .long   2410260206
        .long   267553565
        .long   3387038850
        .long   230237041
        .long   1593171499
        .long   230041945
        .long   525553116
        .long   535107130
        .long   2479110404
        .long   460474083
        .long   3186342998
        .long   460083891
        .long   1051106232
        .long   1070214261
        .long   663253512
        .long   920948167
        .long   2077718700
        .long   920167782
        .long   2102212464
        .long   2140428522
        .long   1326507024
        .long   1841896334
        .long   4155437400
        .long   1840335564
        .long   4204424928
        .long   4280857045
        .long   2653014048
        .long   3683792669
        .long   4015907504
        .long   3680671129
        .long   4113882560
        .long   4266746795
        .long   1011060801
        .long   3072618042
        .long   3736847713
        .long   3066374962
        .long   3932797825
        .long   4238526295
        .long   2022121603
        .long   1850268788
        .long   3178728131
        .long   1837782628
        .long   3570628355
        .long   4182085295
        .long   4044243207
        .long   3700537577
        .long   2062488966
        .long   3675565257
        .long   2846289414
        .long   4069203294
        .long   3793519119
        .long   3106107858
        .long   4124977933
        .long   3056163219
        .long   1397611533
        .long   3843439293
        .long   3292070943
        .long   1917248420
        .long   3954988571
        .long   1817359143
        .long   2795223067
        .long   3391911291
        .long   2289174591
        .long   3834496840
        .long   3615009846
        .long   3634718287
        .long   1295478838
        .long   2488855287
        .long   283381887
        .long   3374026384
        .long   2935052397
        .long   2974469278
        .long   2590957677
        .long   682743279
        .long   566763775
        .long   2453085473
        .long   1575137499
        .long   1653971260
        .long   886948059
        .long   1365486558
        .long   1133527550
        .long   611203650
        .long   3150274999
        .long   3307942520
        .long   1773896118
        .long   2730973117
        .long   2267055100
        .long   1222407300
        .long   2005582702
        .long   2320917745
        .long   3547792237
        .long   1166978938
        .long   239142905
        .long   2444814601
        .long   4011165404
        .long   346868194
        .long   2800617179
        .long   2333957877
        .long   478285810
        .long   594661906
        .long   3727363513
        .long   693736388
        .long   1306267062
        .long   372948459
        .long   956571621
        .long   1189323812
        .long   3159759730
        .long   1387472776
        .long   2612534124
        .long   745896919
        .long   1913143242
        .long   2378647625
        .long   2024552164
        .long   2774945552
        .long   930100952
        .long   1491793838
        .long   3826286484
        .long   462327955
        .long   4049104329
        .long   1254923809
        .long   1860201905
        .long   2983587677
        .long   3357605672
        .long   924655910
        .long   3803241362
        .long   2509847619
        .long   3720403810
        .long   1672208059
        .long   2420244049
        .long   1849311821
        .long   3311515428
        .long   724727943
        .long   3145840325
        .long   3344416119
        .long   545520802
        .long   3698623643
        .long   2328063560
        .long   1449455886
        .long   1996713354
        .long   2393864943
        .long   1091041605
        .long   3102279991
        .long   361159825
        .long   2898911772
        .long   3993426708
        .long   492762590
        .long   2182083211
        .long   1909592686
        .long   722319651
        .long   1502856249
        .long   3691886121
        .long   985525180
        .long   69199126
        .long   3819185373
        .long   1444639302
        .long   3005712498
        .long   3088804946
        .long   1971050360
        .long   138398252
        .long   3343403450
        .long   2889278605
        .long   1716457700
        .long   1882642597
        .long   3942100721
        .long   276796504
        .long   2391839604
        .long   1483589915
        .long   3432915400
        .long   3765285194
        .long   3589234146
        .long   553593009
        .long   488711913
        .long   2967179831
        .long   2570863504
        .long   3235603093
        .long   2883500997
        .long   1107186019
        .long   977423826
        .long   1639392366
        .long   846759712
        .long   2176238891
        .long   1472034698
        .long   2214372039
        .long   1954847653
        .long   3278784732
        .long   1693519425
        .long   57510486
        .long   2944069397
        .long   133776782
        .long   3909695307
        .long   2262602168
        .long   3387038850
        .long   115020972
        .long   1593171499
        .long   267553565
        .long   3524423319
        .long   230237041
        .long   2479110404
        .long   230041945
        .long   3186342998
        .long   535107130
        .long   2753879342
        .long   460474083
        .long   663253512
        .long   460083891
        .long   2077718700
        .long   1070214261
        .long   1212791388
        .long   920948167
        .long   1326507024
        .long   920167782
        .long   4155437400
        .long   2140428522
        .long   2425582776
        .long   1841896334
        .long   2653014048
        .long   1840335564
        .long   4015907504
        .long   4280857045
        .long   556198256
        .long   3683792669
        .long   1011060801
        .long   3680671129
        .long   3736847713
        .long   4266746795
        .long   1112396512
        .long   3072618042
        .long   2022121603
        .long   3066374962
        .long   3178728131
        .long   4238526295
        .long   2224793024
        .long   1850268788
        .long   4044243207
        .long   1837782628
        .long   2062488966
        .long   4182085295
        .long   154618752
        .long   3700537577
        .long   3793519119
        .long   3675565257
        .long   4124977933
        .long   4069203294
        .long   309237504
        .long   3106107858
        .long   3292070943
        .long   3056163219
        .long   3954988571
        .long   3843439293
        .long   618475008
        .long   1917248420
        .long   2289174591
        .long   1817359143
        .long   3615009846
        .long   3391911291
        .long   1236950016
        .long   3834496840
        .long   283381887
        .long   3634718287
        .long   2935052397
        .long   2488855287
        .long   2473900033
        .long   3374026384
        .long   566763775
        .long   2974469278
        .long   1575137499
        .long   682743279
        .long   652832771
        .long   2453085473
        .long   1133527550
        .long   1653971260
        .long   3150274999
        .long   1365486558
        .long   1305665542
        .long   611203650
        .long   2267055100
        .long   3307942520
        .long   2005582702
        .long   2730973117
        .long   2611331084
        .long   1222407300
        .long   239142905
        .long   2320917745
        .long   4011165404
        .long   1166978938
        .long   927694873
        .long   2444814601
        .long   478285810
        .long   346868194
        .long   3727363513
        .long   2333957877
        .long   1855389746
        .long   594661906
        .long   956571621
        .long   693736388
        .long   3159759730
        .long   372948459
        .long   3710779492
        .long   1189323812
        .long   1913143242
        .long   1387472776
        .long   2024552164
        .long   745896919
        .long   3126591689
        .long   2378647625
        .long   3826286484
        .long   2774945552
        .long   4049104329
        .long   1491793838
        .long   1958216082
        .long   462327955
        .long   3357605672
        .long   1254923809
        .long   3803241362
        .long   2983587677
        .long   3916432164
        .long   924655910
        .long   2420244049
        .long   2509847619
        .long   3311515428
        .long   1672208059
        .long   3537897033
        .long   1849311821
        .long   545520802
        .long   724727943
        .long   2328063560
        .long   3344416119
        .long   2780826770
        .long   3698623643
        .long   1091041605
        .long   1449455886
        .long   361159825
        .long   2393864943
        .long   1266686244
        .long   3102279991
        .long   2182083211
        .long   2898911772
        .long   722319651
        .long   492762590
        .long   2533372489
        .long   1909592686
        .long   69199126
        .long   1502856249
        .long   1444639302
        .long   985525180
        .long   771777682
        .long   3819185373
        .long   138398252
        .long   3005712498
        .long   2889278605
        .long   1971050360
        .long   1543555365
        .long   3343403450
        .long   276796504
        .long   1716457700
        .long   1483589915
        .long   3942100721
        .long   3087110731
        .long   2391839604
        .long   553593009
        .long   3432915400
        .long   2967179831
        .long   3589234146
        .long   1879254167
        .long   488711913
        .long   1107186019
        .long   2570863504
        .long   1639392366
        .long   2883500997
        .long   3758508334
        .long   977423826
        .long   2214372039
        .long   846759712
        .long   3278784732
        .long   1472034698
        .long   3222049373
        .long   1954847653
        .long   133776782
        .long   1693519425
        .long   2262602168
        .long   2944069397
        .long   2149131451
        .long   3909695307
        .long   267553565
        .long   3387038850
        .long   230237041
        .long   1593171499
        .long   3295607
        .long   3524423319
        .long   535107130
        .long   2479110404
        .long   460474083
        .long   3186342998
        .long   6591214
        .long   2753879342
        .long   1070214261
        .long   663253512
        .long   920948167
        .long   2077718700
        .long   13182429
        .long   1212791388
        .long   2140428522
        .long   1326507024
        .long   1841896334
        .long   4155437400
        .long   26364858
        .long   2425582776
        .long   4280857045
        .long   2653014048
        .long   3683792669
        .long   4015907504
        .long   52729717
        .long   556198256
        .long   4266746795
        .long   1011060801
        .long   3072618042
        .long   3736847713
        .long   105459434
        .long   1112396512
        .long   4238526295
        .long   2022121603
        .long   1850268788
        .long   3178728131
        .long   210918868
        .long   2224793024
        .long   4182085295
        .long   4044243207
        .long   3700537577
        .long   2062488966
        .long   421837736
        .long   154618752
        .long   4069203294
        .long   3793519119
        .long   3106107858
        .long   4124977933
        .long   843675472
        .long   309237504
        .long   3843439293
        .long   3292070943
        .long   1917248420
        .long   3954988571
        .long   1687350944
        .long   618475008
        .long   3391911291
        .long   2289174591
        .long   3834496840
        .long   3615009846
        .long   3374701889
        .long   1236950016
        .long   2488855287
        .long   283381887
        .long   3374026384
        .long   2935052397
        .long   2454436482
        .long   2473900033
        .long   682743279
        .long   566763775
        .long   2453085473
        .long   1575137499
        .long   613905668
        .long   652832771
        .long   1365486558
        .long   1133527550
        .long   611203650
        .long   3150274999
        .long   1227811337
        .long   1305665542
        .long   2730973117
        .long   2267055100
        .long   1222407300
        .long   2005582702
        .long   2455622675
        .long   2611331084
        .long   1166978938
        .long   239142905
        .long   2444814601
        .long   4011165404
        .long   616278055
        .long   927694873
        .long   2333957877
        .long   478285810
        .long   594661906
        .long   3727363513
        .long   1232556110
        .long   1855389746
        .long   372948459
        .long   956571621
        .long   1189323812
        .long   3159759730
        .long   2465112221
        .long   3710779492
        .long   745896919
        .long   1913143242
        .long   2378647625
        .long   2024552164
        .long   635257146
        .long   3126591689
        .long   1491793838
        .long   3826286484
        .long   462327955
        .long   4049104329
        .long   1270514292
        .long   1958216082
        .long   2983587677
        .long   3357605672
        .long   924655910
        .long   3803241362
        .long   2541028584
        .long   3916432164
        .long   1672208059
        .long   2420244049
        .long   1849311821
        .long   3311515428
        .long   787089873
        .long   3537897033
        .long   3344416119
        .long   545520802
        .long   3698623643
        .long   2328063560
        .long   1574179747
        .long   2780826770
        .long   2393864943
        .long   1091041605
        .long   3102279991
        .long   361159825
        .long   3148359494
        .long   1266686244
        .long   492762590
        .long   2182083211
        .long   1909592686
        .long   722319651
        .long   2001751692
        .long   2533372489
        .long   985525180
        .long   69199126
        .long   3819185373
        .long   1444639302
        .long   4003503385
        .long   771777682
        .long   1971050360
        .long   138398252
        .long   3343403450
        .long   2889278605
        .long   3712039474
        .long   1543555365
        .long   3942100721
        .long   276796504
        .long   2391839604
        .long   1483589915
        .long   3129111652
        .long   3087110731
        .long   3589234146
        .long   553593009
        .long   488711913
        .long   2967179831
        .long   1963256009
        .long   1879254167
        .long   2883500997
        .long   1107186019
        .long   977423826
        .long   1639392366
        .long   3926512018
        .long   3758508334
        .long   1472034698
        .long   2214372039
        .long   1954847653
        .long   3278784732
        .long   3558056740
        .long   3222049373
        .long   2944069397
        .long   133776782
        .long   3909695307
        .long   2262602168
        .long   2821146184
        .long   2149131451
        .long   1593171499
        .long   267553565
        .long   3524423319
        .long   230237041
        .long   1347325072
        .long   3295607
        .long   3186342998
        .long   535107130
        .long   2753879342
        .long   460474083
        .long   2694650145
        .long   6591214
        .long   2077718700
        .long   1070214261
        .long   1212791388
        .long   920948167
        .long   1094332995
        .long   13182429
        .long   4155437400
        .long   2140428522
        .long   2425582776
        .long   1841896334
        .long   2188665991
        .long   26364858
        .long   4015907504
        .long   4280857045
        .long   556198256
        .long   3683792669
        .long   82364686
        .long   52729717
        .long   3736847713
        .long   4266746795
        .long   1112396512
        .long   3072618042
        .long   164729372
        .long   105459434
        .long   3178728131
        .long   4238526295
        .long   2224793024
        .long   1850268788
        .long   329458745
        .long   210918868
        .long   2062488966
        .long   4182085295
        .long   154618752
        .long   3700537577
        .long   658917491
        .long   421837736
        .long   4124977933
        .long   4069203294
        .long   309237504
        .long   3106107858
        .long   1317834983
        .long   843675472
        .long   3954988571
        .long   3843439293
        .long   618475008
        .long   1917248420
        .long   2635669967
        .long   1687350944
        .long   3615009846
        .long   3391911291
        .long   1236950016
        .long   3834496840
        .long   976372639
        .long   3374701889
        .long   2935052397
        .long   2488855287
        .long   2473900033
        .long   3374026384
        .long   1952745279
        .long   2454436482
        .long   1575137499
        .long   682743279
        .long   652832771
        .long   2453085473
        .long   3905490559
        .long   613905668
        .long   3150274999
        .long   1365486558
        .long   1305665542
        .long   611203650
        .long   3516013822
        .long   1227811337
        .long   2005582702
        .long   2730973117
        .long   2611331084
        .long   1222407300
        .long   2737060348
        .long   2455622675
        .long   4011165404
        .long   1166978938
        .long   927694873
        .long   2444814601
        .long   1179153400
        .long   616278055
        .long   3727363513
        .long   2333957877
        .long   1855389746
        .long   594661906
        .long   2358306800
        .long   1232556110
        .long   3159759730
        .long   372948459
        .long   3710779492
        .long   1189323812
        .long   421646305
        .long   2465112221
        .long   2024552164
        .long   745896919
        .long   3126591689
        .long   2378647625
        .long   843292611
        .long   635257146
        .long   4049104329
        .long   1491793838
        .long   1958216082
        .long   462327955
        .long   1686585223
        .long   1270514292
        .long   3803241362
        .long   2983587677
        .long   3916432164
        .long   924655910
        .long   3373170446
        .long   2541028584
        .long   3311515428
        .long   1672208059
        .long   3537897033
        .long   1849311821
        .long   2451373597
        .long   787089873
        .long   2328063560
        .long   3344416119
        .long   2780826770
        .long   3698623643
        .long   607779899
        .long   1574179747
        .long   361159825
        .long   2393864943
        .long   1266686244
        .long   3102279991
        .long   1215559799
        .long   3148359494
        .long   722319651
        .long   492762590
        .long   2533372489
        .long   1909592686
        .long   2431119599
        .long   2001751692
        .long   1444639302
        .long   985525180
        .long   771777682
        .long   3819185373
        .long   567271902
        .long   4003503385
        .long   2889278605
        .long   1971050360
        .long   1543555365
        .long   3343403450
        .long   1134543805
        .long   3712039474
        .long   1483589915
        .long   3942100721
        .long   3087110731
        .long   2391839604
        .long   2269087610
        .long   3129111652
        .long   2967179831
        .long   3589234146
        .long   1879254167
        .long   488711913
        .long   243207925
        .long   1963256009
        .long   1639392366
        .long   2883500997
        .long   3758508334
        .long   977423826
        .long   486415851
        .long   3926512018
        .long   3278784732
        .long   1472034698
        .long   3222049373
        .long   1954847653
        .long   972831702
        .long   3558056740
        .long   2262602168
        .long   2944069397
        .long   2149131451
        .long   3909695307
        .long   1945663404
        .long   2821146184
        .long   230237041
        .long   1593171499
        .long   3295607
        .long   3524423319
        .long   3891326808
        .long   1347325072
        .long   460474083
        .long   3186342998
        .long   6591214
        .long   2753879342
        .long   3487686321
        .long   2694650145
        .long   920948167
        .long   2077718700
        .long   13182429
        .long   1212791388
        .long   2680405347
        .long   1094332995
        .long   1841896334
        .long   4155437400
        .long   26364858
        .long   2425582776
        .long   1065843399
        .long   2188665991
        .long   3683792669
        .long   4015907504
        .long   52729717
        .long   556198256
        .long   2131686798
        .long   82364686
        .long   3072618042
        .long   3736847713
        .long   105459434
        .long   1112396512
        .long   4263373596
        .long   164729372
        .long   1850268788
        .long   3178728131
        .long   210918868
        .long   2224793024
        .long   4231779897
        .long   329458745
        .long   3700537577
        .long   2062488966
        .long   421837736
        .long   154618752
        .long   4168592498
        .long   658917491
        .long   3106107858
        .long   4124977933
        .long   843675472
        .long   309237504
        .long   4042217701
        .long   1317834983
        .long   1917248420
        .long   3954988571
        .long   1687350944
        .long   618475008
        .long   3789468107
        .long   2635669967
        .long   3834496840
        .long   3615009846
        .long   3374701889
        .long   1236950016
        .long   3283968918
        .long   976372639
        .long   3374026384
        .long   2935052397
        .long   2454436482
        .long   2473900033
        .long   2272970540
        .long   1952745279
        .long   2453085473
        .long   1575137499
        .long   613905668
        .long   652832771
        .long   250973784
        .long   3905490559
        .long   611203650
        .long   3150274999
        .long   1227811337
        .long   1305665542
        .long   501947569
        .long   3516013822
        .long   1222407300
        .long   2005582702
        .long   2455622675
        .long   2611331084
        .long   1003895138
        .long   2737060348
        .long   2444814601
        .long   4011165404
        .long   616278055
        .long   927694873
        .long   2007790276
        .long   1179153400
        .long   594661906
        .long   3727363513
        .long   1232556110
        .long   1855389746
        .long   4015580553
        .long   2358306800
        .long   1189323812
        .long   3159759730
        .long   2465112221
        .long   3710779492
        .long   3736193810
        .long   421646305
        .long   2378647625
        .long   2024552164
        .long   635257146
        .long   3126591689
        .long   3177420325
        .long   843292611
        .long   462327955
        .long   4049104329
        .long   1270514292
        .long   1958216082
        .long   2059873354
        .long   1686585223
        .long   924655910
        .long   3803241362
        .long   2541028584
        .long   3916432164
        .long   4119746708
        .long   3373170446
        .long   1849311821
        .long   3311515428
        .long   787089873
        .long   3537897033
        .long   3944526121
        .long   2451373597
        .long   3698623643
        .long   2328063560
        .long   1574179747
        .long   2780826770
        .long   3594084947
        .long   607779899
        .long   3102279991
        .long   361159825
        .long   3148359494
        .long   1266686244
        .long   2893202598
        .long   1215559799
        .long   1909592686
        .long   722319651
        .long   2001751692
        .long   2533372489
        .long   1491437901
        .long   2431119599
        .long   3819185373
        .long   1444639302
        .long   4003503385
        .long   771777682
        .long   2982875802
        .long   567271902
        .long   3343403450
        .long   2889278605
        .long   3712039474
        .long   1543555365
        .long   1670784308
        .long   1134543805
        .long   2391839604
        .long   1483589915
        .long   3129111652
        .long   3087110731
        .long   3341568617
        .long   2269087610
        .long   488711913
        .long   2967179831
        .long   1963256009
        .long   1879254167
        .long   2388169939
        .long   243207925
        .long   977423826
        .long   1639392366
        .long   3926512018
        .long   3758508334
        .long   481372583
        .long   486415851
        .long   1954847653
        .long   3278784732
        .long   3558056740
        .long   3222049373
        .long   962745166
        .long   972831702
        .long   3909695307
        .long   2262602168
        .long   2821146184
        .long   2149131451
        .long   1925490332
        .long   1945663404
        .long   3524423319
        .long   230237041
        .long   1347325072
        .long   3295607
        .long   3850980665
        .long   3891326808
        .long   2753879342
        .long   460474083
        .long   2694650145
        .long   6591214
        .long   3406994035
        .long   3487686321
        .long   1212791388
        .long   920948167
        .long   1094332995
        .long   13182429
        .long   2519020775
        .long   2680405347
        .long   2425582776
        .long   1841896334
        .long   2188665991
        .long   26364858
        .long   743074255
        .long   1065843399
        .long   556198256
        .long   3683792669
        .long   82364686
        .long   52729717
        .long   1486148511
        .long   2131686798
        .long   1112396512
        .long   3072618042
        .long   164729372
        .long   105459434
        .long   2972297022
        .long   4263373596
        .long   2224793024
        .long   1850268788
        .long   329458745
        .long   210918868
        .long   1649626749
        .long   4231779897
        .long   154618752
        .long   3700537577
        .long   658917491
        .long   421837736
        .long   3299253499
        .long   4168592498
        .long   309237504
        .long   3106107858
        .long   1317834983
        .long   843675472
        .long   2303539703
        .long   4042217701
        .long   618475008
        .long   1917248420
        .long   2635669967
        .long   1687350944
        .long   312112110
        .long   3789468107
        .long   1236950016
        .long   3834496840
        .long   976372639
        .long   3374701889
        .long   624224221
        .long   3283968918
        .long   2473900033
        .long   3374026384
        .long   1952745279
        .long   2454436482
        .long   1248448442
        .long   2272970540
        .long   652832771
        .long   2453085473
        .long   3905490559
        .long   613905668
        .long   2496896884
        .long   250973784
        .long   1305665542
        .long   611203650
        .long   3516013822
        .long   1227811337
        .long   698826472
        .long   501947569
        .long   2611331084
        .long   1222407300
        .long   2737060348
        .long   2455622675
        .long   1397652945
        .long   1003895138
        .long   927694873
        .long   2444814601
        .long   1179153400
        .long   616278055
        .long   2795305890
        .long   2007790276
        .long   1855389746
        .long   594661906
        .long   2358306800
        .long   1232556110
        .long   1295644484
        .long   4015580553
        .long   3710779492
        .long   1189323812
        .long   421646305
        .long   2465112221
        .long   2591288968
        .long   3736193810
        .long   3126591689
        .long   2378647625
        .long   843292611
        .long   635257146
        .long   887610640
        .long   3177420325
        .long   1958216082
        .long   462327955
        .long   1686585223
        .long   1270514292
        .long   1775221280
        .long   2059873354
        .long   3916432164
        .long   924655910
        .long   3373170446
        .long   2541028584
        .long   3550442561
        .long   4119746708
        .long   3537897033
        .long   1849311821
        .long   2451373597
        .long   787089873
        .long   2805917826
        .long   3944526121
        .long   2780826770
        .long   3698623643
        .long   607779899
        .long   1574179747
        .long   1316868356
        .long   3594084947
        .long   1266686244
        .long   3102279991
        .long   1215559799
        .long   3148359494
        .long   2633736712
        .long   2893202598
        .long   2533372489
        .long   1909592686
        .long   2431119599
        .long   2001751692
        .long   972506129
        .long   1491437901
        .long   771777682
        .long   3819185373
        .long   567271902
        .long   4003503385
        .long   1945012259
        .long   2982875802
        .long   1543555365
        .long   3343403450
        .long   1134543805
        .long   3712039474
        .long   3890024518
        .long   1670784308
        .long   3087110731
        .long   2391839604
        .long   2269087610
        .long   3129111652
        .long   3485081741
        .long   3341568617
        .long   1879254167
        .long   488711913
        .long   243207925
        .long   1963256009
        .long   2675196186
        .long   2388169939
        .long   3758508334
        .long   977423826
        .long   486415851
        .long   3926512018
        .long   1055425077
        .long   481372583
        .long   3222049373
        .long   1954847653
        .long   972831702
        .long   3558056740
        .long   2110850155
        .long   962745166
        .long   2149131451
        .long   3909695307
        .long   1945663404
        .long   2821146184
        .long   4221700311
        .long   1925490332
        .long   3295607
        .long   3524423319
        .long   3891326808
        .long   1347325072
        .long   4148433327
        .long   3850980665
        .long   6591214
        .long   2753879342
        .long   3487686321
        .long   2694650145
        .long   4001899359
        .long   3406994035
        .long   13182429
        .long   1212791388
        .long   2680405347
        .long   1094332995
        .long   3708831422
        .long   2519020775
        .long   26364858
        .long   2425582776
        .long   1065843399
        .long   2188665991
        .long   3122695549
        .long   743074255
        .long   52729717
        .long   556198256
        .long   2131686798
        .long   82364686
        .long   1950423802
        .long   1486148511
        .long   105459434
        .long   1112396512
        .long   4263373596
        .long   164729372
        .long   3900847605
        .long   2972297022
        .long   210918868
        .long   2224793024
        .long   4231779897
        .long   329458745
        .long   3506727914
        .long   1649626749
        .long   421837736
        .long   154618752
        .long   4168592498
        .long   658917491
        .long   2718488532
        .long   3299253499
        .long   843675472
        .long   309237504
        .long   4042217701
        .long   1317834983
        .long   1142009769
        .long   2303539703
        .long   1687350944
        .long   618475008
        .long   3789468107
        .long   2635669967
        .long   2284019538
        .long   312112110
        .long   3374701889
        .long   1236950016
        .long   3283968918
        .long   976372639
        .long   273071781
        .long   624224221
        .long   2454436482
        .long   2473900033
        .long   2272970540
        .long   1952745279
        .long   546143563
        .long   1248448442
        .long   613905668
        .long   652832771
        .long   250973784
        .long   3905490559
        .long   1092287127
        .long   2496896884
        .long   1227811337
        .long   1305665542
        .long   501947569
        .long   3516013822
        .long   2184574254
        .long   698826472
        .long   2455622675
        .long   2611331084
        .long   1003895138
        .long   2737060348
        .long   74181213
        .long   1397652945
        .long   616278055
        .long   927694873
        .long   2007790276
        .long   1179153400
        .long   148362426
        .long   2795305890
        .long   1232556110
        .long   1855389746
        .long   4015580553
        .long   2358306800
        .long   296724853
        .long   1295644484
        .long   2465112221
        .long   3710779492
        .long   3736193810
        .long   421646305
        .long   593449707
        .long   2591288968
        .long   635257146
        .long   3126591689
        .long   3177420325
        .long   843292611
        .long   1186899415
        .long   887610640
        .long   1270514292
        .long   1958216082
        .long   2059873354
        .long   1686585223
        .long   2373798830
        .long   1775221280
        .long   2541028584
        .long   3916432164
        .long   4119746708
        .long   3373170446
        .long   452630365
        .long   3550442561
        .long   787089873
        .long   3537897033
        .long   3944526121
        .long   2451373597
        .long   905260731
        .long   2805917826
        .long   1574179747
        .long   2780826770
        .long   3594084947
        .long   607779899
        .long   1810521462
        .long   1316868356
        .long   3148359494
        .long   1266686244
        .long   2893202598
        .long   1215559799
        .long   3621042925
        .long   2633736712
        .long   2001751692
        .long   2533372489
        .long   1491437901
        .long   2431119599
        .long   2947118554
        .long   972506129
        .long   4003503385
        .long   771777682
        .long   2982875802
        .long   567271902
        .long   1599269812
        .long   1945012259
        .long   3712039474
        .long   1543555365
        .long   1670784308
        .long   1134543805
        .long   3198539624
        .long   3890024518
        .long   3129111652
        .long   3087110731
        .long   3341568617
        .long   2269087610
        .long   2102111953
        .long   3485081741
        .long   1963256009
        .long   1879254167
        .long   2388169939
        .long   243207925
        .long   4204223906
        .long   2675196186
        .long   3926512018
        .long   3758508334
        .long   481372583
        .long   486415851
        .long   4113480516
        .long   1055425077
        .long   3558056740
        .long   3222049373
        .long   962745166
        .long   972831702
        .long   3931993737
        .long   2110850155
        .long   2821146184
        .long   2149131451
        .long   1925490332
        .long   1945663404
        .long   3569020178
        .long   4221700311
        .long   1347325072
        .long   3295607
        .long   3850980665
        .long   3891326808
        .long   2843073060
        .long   4148433327
        .long   2694650145
        .long   6591214
        .long   3406994035
        .long   3487686321
        .long   1391178824
        .long   4001899359
        .long   1094332995
        .long   13182429
        .long   2519020775
        .long   2680405347
        .long   2782357648
        .long   3708831422
        .long   2188665991
        .long   26364858
        .long   743074255
        .long   1065843399
        .long   1269748001
        .long   3122695549
        .long   82364686
        .long   52729717
        .long   1486148511
        .long   2131686798
        .long   2539496002
        .long   1950423802
        .long   164729372
        .long   105459434
        .long   2972297022
        .long   4263373596
        .long   784024708
        .long   3900847605
        .long   329458745
        .long   210918868
        .long   1649626749
        .long   4231779897
        .long   1568049417
        .long   3506727914
        .long   658917491
        .long   421837736
        .long   3299253499
        .long   4168592498
        .long   3136098835
        .long   2718488532
        .long   1317834983
        .long   843675472
        .long   2303539703
        .long   4042217701
        .long   1977230375
        .long   1142009769
        .long   2635669967
        .long   1687350944
        .long   312112110
        .long   3789468107
        .long   3954460750
        .long   2284019538
        .long   976372639
        .long   3374701889
        .long   624224221
        .long   3283968918
        .long   3613954205
        .long   273071781
        .long   1952745279
        .long   2454436482
        .long   1248448442
        .long   2272970540
        .long   2932941114
        .long   546143563
        .long   3905490559
        .long   613905668
        .long   2496896884
        .long   250973784
        .long   1570914932
        .long   1092287127
        .long   3516013822
        .long   1227811337
        .long   698826472
        .long   501947569
        .long   3141829865
        .long   2184574254
        .long   2737060348
        .long   2455622675
        .long   1397652945
        .long   1003895138
        .long   1988692435
        .long   74181213
        .long   1179153400
        .long   616278055
        .long   2795305890
        .long   2007790276
        .long   3977384870
        .long   148362426
        .long   2358306800
        .long   1232556110
        .long   1295644484
        .long   4015580553
        .long   3659802444
        .long   296724853
        .long   421646305
        .long   2465112221
        .long   2591288968
        .long   3736193810
        .long   3024637593
        .long   593449707
        .long   843292611
        .long   635257146
        .long   887610640
        .long   3177420325
        .long   1754307891
        .long   1186899415
        .long   1686585223
        .long   1270514292
        .long   1775221280
        .long   2059873354
        .long   3508615783
        .long   2373798830
        .long   3373170446
        .long   2541028584
        .long   3550442561
        .long   4119746708
        .long   2722264270
        .long   452630365
        .long   2451373597
        .long   787089873
        .long   2805917826
        .long   3944526121
        .long   1149561244
        .long   905260731
        .long   607779899
        .long   1574179747
        .long   1316868356
        .long   3594084947
        .long   2299122488
        .long   1810521462
        .long   1215559799
        .long   3148359494
        .long   2633736712
        .long   2893202598
        .long   303277681
        .long   3621042925
        .long   2431119599
        .long   2001751692
        .long   972506129
        .long   1491437901
        .long   606555363
        .long   2947118554
        .long   567271902
        .long   4003503385
        .long   1945012259
        .long   2982875802
        .long   1213110727
        .long   1599269812
        .long   1134543805
        .long   3712039474
        .long   3890024518
        .long   1670784308
        .long   2426221454
        .long   3198539624
        .long   2269087610
        .long   3129111652
        .long   3485081741
        .long   3341568617
        .long   557475612
        .long   2102111953
        .long   243207925
        .long   1963256009
        .long   2675196186
        .long   2388169939
        .long   1114951224
        .long   4204223906
        .long   486415851
        .long   3926512018
        .long   1055425077
        .long   481372583
        .long   2229902448
        .long   4113480516
        .long   972831702
        .long   3558056740
        .long   2110850155
        .long   962745166
        .long   164837600
        .long   3931993737
        .long   1945663404
        .long   2821146184
        .long   4221700311
        .long   1925490332
        .long   329675200
        .long   3569020178
        .long   3891326808
        .long   1347325072
        .long   4148433327
        .long   3850980665
        .long   659350401
        .long   2843073060
        .long   3487686321
        .long   2694650145
        .long   4001899359
        .long   3406994035
        .long   1318700802
        .long   1391178824
        .long   2680405347
        .long   1094332995
        .long   3708831422
        .long   2519020775
        .long   2637401604
        .long   2782357648
        .long   1065843399
        .long   2188665991
        .long   3122695549
        .long   743074255
        .long   979835913
        .long   1269748001
        .long   2131686798
        .long   82364686
        .long   1950423802
        .long   1486148511
        .long   1959671827
        .long   2539496002
        .long   4263373596
        .long   164729372
        .long   3900847605
        .long   2972297022
        .long   3919343654
        .long   784024708
        .long   4231779897
        .long   329458745
        .long   3506727914
        .long   1649626749
        .long   3543720013
        .long   1568049417
        .long   4168592498
        .long   658917491
        .long   2718488532
        .long   3299253499
        .long   2792472730
        .long   3136098835
        .long   4042217701
        .long   1317834983
        .long   1142009769
        .long   2303539703
        .long   1289978165
        .long   1977230375
        .long   3789468107
        .long   2635669967
        .long   2284019538
        .long   312112110
        .long   2579956331
        .long   3954460750
        .long   3283968918
        .long   976372639
        .long   273071781
        .long   624224221
        .long   864945366
        .long   3613954205
        .long   2272970540
        .long   1952745279
        .long   546143563
        .long   1248448442
        .long   1729890733
        .long   2932941114
        .long   250973784
        .long   3905490559
        .long   1092287127
        .long   2496896884
        .long   3459781466
        .long   1570914932
        .long   501947569
        .long   3516013822
        .long   2184574254
        .long   698826472
        .long   2624595636
        .long   3141829865
        .long   1003895138
        .long   2737060348
        .long   74181213
        .long   1397652945
        .long   954223976
        .long   1988692435
        .long   2007790276
        .long   1179153400
        .long   148362426
        .long   2795305890
        .long   1908447953
        .long   3977384870
        .long   4015580553
        .long   2358306800
        .long   296724853
        .long   1295644484
        .long   3816895906
        .long   3659802444
        .long   3736193810
        .long   421646305
        .long   593449707
        .long   2591288968
        .long   3338824517
        .long   3024637593
        .long   3177420325
        .long   843292611
        .long   1186899415
        .long   887610640
        .long   2382681739
        .long   1754307891
        .long   2059873354
        .long   1686585223
        .long   2373798830
        .long   1775221280
        .long   470396183
        .long   3508615783
        .long   4119746708
        .long   3373170446
        .long   452630365
        .long   3550442561
        .long   940792367
        .long   2722264270
        .long   3944526121
        .long   2451373597
        .long   905260731
        .long   2805917826
        .long   1881584735
        .long   1149561244
        .long   3594084947
        .long   607779899
        .long   1810521462
        .long   1316868356
        .long   3763169470
        .long   2299122488
        .long   2893202598
        .long   1215559799
        .long   3621042925
        .long   2633736712
        .long   3231371645
        .long   303277681
        .long   1491437901
        .long   2431119599
        .long   2947118554
        .long   972506129
        .long   2167775995
        .long   606555363
        .long   2982875802
        .long   567271902
        .long   1599269812
        .long   1945012259
        .long   40584695
        .long   1213110727
        .long   1670784308
        .long   1134543805
        .long   3198539624
        .long   3890024518
        .long   81169391
        .long   2426221454
        .long   3341568617
        .long   2269087610
        .long   2102111953
        .long   3485081741
        .long   162338783
        .long   557475612
        .long   2388169939
        .long   243207925
        .long   4204223906
        .long   2675196186
        .long   324677567
        .long   1114951224
        .long   481372583
        .long   486415851
        .long   4113480516
        .long   1055425077
        .long   649355134
        .long   2229902448
        .long   962745166
        .long   972831702
        .long   3931993737
        .long   2110850155
        .long   1298710268
        .long   164837600
        .long   1925490332
        .long   1945663404
        .long   3569020178
        .long   4221700311
        .long   2597420537
        .long   329675200
        .long   3850980665
        .long   3891326808
        .long   2843073060
        .long   4148433327
        .long   899873778
        .long   659350401
        .long   3406994035
        .long   3487686321
        .long   1391178824
        .long   4001899359
        .long   1799747556
        .long   1318700802
        .long   2519020775
        .long   2680405347
        .long   2782357648
        .long   3708831422
        .long   3599495112
        .long   2637401604
        .long   743074255
        .long   1065843399
        .long   1269748001
        .long   3122695549
        .long   2904022928
        .long   979835913
        .long   1486148511
        .long   2131686798
        .long   2539496002
        .long   1950423802
        .long   1513078560
        .long   1959671827
        .long   2972297022
        .long   4263373596
        .long   784024708
        .long   3900847605
        .long   3026157121
        .long   3919343654
        .long   1649626749
        .long   4231779897
        .long   1568049417
        .long   3506727914
        .long   1757346946
        .long   3543720013
        .long   3299253499
        .long   4168592498
        .long   3136098835
        .long   2718488532
        .long   3514693892
        .long   2792472730
        .long   2303539703
        .long   4042217701
        .long   1977230375
        .long   1142009769
        .long   2734420489
        .long   1289978165
        .long   312112110
        .long   3789468107
        .long   3954460750
        .long   2284019538
        .long   1173873683
        .long   2579956331
        .long   624224221
        .long   3283968918
        .long   3613954205
        .long   273071781
        .long   2347747367
        .long   864945366
        .long   1248448442
        .long   2272970540
        .long   2932941114
        .long   546143563
        .long   400527438
        .long   1729890733
        .long   2496896884
        .long   250973784
        .long   1570914932
        .long   1092287127
        .long   801054876
        .long   3459781466
        .long   698826472
        .long   501947569
        .long   3141829865
        .long   2184574254
        .long   1602109753
        .long   2624595636
        .long   1397652945
        .long   1003895138
        .long   1988692435
        .long   74181213
        .long   3204219507
        .long   954223976
        .long   2795305890
        .long   2007790276
        .long   3977384870
        .long   148362426
        .long   2113471718
        .long   1908447953
        .long   1295644484
        .long   4015580553
        .long   3659802444
        .long   296724853
        .long   4226943436
        .long   3816895906
        .long   2591288968
        .long   3736193810
        .long   3024637593
        .long   593449707
        .long   4158919577
        .long   3338824517
        .long   887610640
        .long   3177420325
        .long   1754307891
        .long   1186899415
        .long   4022871858
        .long   2382681739
        .long   1775221280
        .long   2059873354
        .long   3508615783
        .long   2373798830
        .long   3750776420
        .long   470396183
        .long   3550442561
        .long   4119746708
        .long   2722264270
        .long   452630365
        .long   3206585544
        .long   940792367
        .long   2805917826
        .long   3944526121
        .long   1149561244
        .long   905260731
        .long   2118203793
        .long   1881584735
        .long   1316868356
        .long   3594084947
        .long   2299122488
        .long   1810521462
        .long   4236407587
        .long   3763169470
        .long   2633736712
        .long   2893202598
        .long   303277681
        .long   3621042925
        .long   4177847879
        .long   3231371645
        .long   972506129
        .long   1491437901
        .long   606555363
        .long   2947118554
        .long   4060728462
        .long   2167775995
        .long   1945012259
        .long   2982875802
        .long   1213110727
        .long   1599269812
        .long   3826489629
        .long   40584695
        .long   3890024518
        .long   1670784308
        .long   2426221454
        .long   3198539624
        .long   3358011962
        .long   81169391
        .long   3485081741
        .long   3341568617
        .long   557475612
        .long   2102111953
        .long   2421056629
        .long   162338783
        .long   2675196186
        .long   2388169939
        .long   1114951224
        .long   4204223906
        .long   547145963
        .long   324677567
        .long   1055425077
        .long   481372583
        .long   2229902448
        .long   4113480516
        .long   1094291926
        .long   649355134
        .long   2110850155
        .long   962745166
        .long   164837600
        .long   3931993737
        .long   2188583852
        .long   1298710268
        .long   4221700311
        .long   1925490332
        .long   329675200
        .long   3569020178
        .long   82200408
        .long   2597420537
        .long   4148433327
        .long   3850980665
        .long   659350401
        .long   2843073060
        .long   164400817
        .long   899873778
        .long   4001899359
        .long   3406994035
        .long   1318700802
        .long   1391178824
        .long   328801635
        .long   1799747556
        .long   3708831422
        .long   2519020775
        .long   2637401604
        .long   2782357648
        .long   657603271
        .long   3599495112
        .long   3122695549
        .long   743074255
        .long   979835913
        .long   1269748001
        .long   1315206542
        .long   2904022928
        .long   1950423802
        .long   1486148511
        .long   1959671827
        .long   2539496002
        .long   2630413084
        .long   1513078560
        .long   3900847605
        .long   2972297022
        .long   3919343654
        .long   784024708
        .long   965858873
        .long   3026157121
        .long   3506727914
        .long   1649626749
        .long   3543720013
        .long   1568049417
        .long   1931717747
        .long   1757346946
        .long   2718488532
        .long   3299253499
        .long   2792472730
        .long   3136098835
        .long   3863435494
        .long   3514693892
        .long   1142009769
        .long   2303539703
        .long   1289978165
        .long   1977230375
        .long   3431903692
        .long   2734420489
        .long   2284019538
        .long   312112110
        .long   2579956331
        .long   3954460750
        .long   2568840088
        .long   1173873683
        .long   273071781
        .long   624224221
        .long   864945366
        .long   3613954205
        .long   842712880
        .long   2347747367
        .long   546143563
        .long   1248448442
        .long   1729890733
        .long   2932941114
        .long   1685425760
        .long   400527438
        .long   1092287127
        .long   2496896884
        .long   3459781466
        .long   1570914932
        .long   3370851521
        .long   801054876
        .long   2184574254
        .long   698826472
        .long   2624595636
        .long   3141829865
        .long   2446735747
        .long   1602109753
        .long   74181213
        .long   1397652945
        .long   954223976
        .long   1988692435
        .long   598504198
        .long   3204219507
        .long   148362426
        .long   2795305890
        .long   1908447953
        .long   3977384870
        .long   1197008397
        .long   2113471718
        .long   296724853
        .long   1295644484
        .long   3816895906
        .long   3659802444
        .long   2394016794
        .long   4226943436
        .long   593449707
        .long   2591288968
        .long   3338824517
        .long   3024637593
        .long   493066293
        .long   4158919577
        .long   1186899415
        .long   887610640
        .long   2382681739
        .long   1754307891
        .long   986132586
        .long   4022871858
        .long   2373798830
        .long   1775221280
        .long   470396183
        .long   3508615783
        .long   1972265172
        .long   3750776420
        .long   452630365
        .long   3550442561
        .long   940792367
        .long   2722264270
        .long   3944530345
        .long   3206585544
        .long   905260731
        .long   2805917826
        .long   1881584735
        .long   1149561244
        .long   3594093395
        .long   2118203793
        .long   1810521462
        .long   1316868356
        .long   3763169470
        .long   2299122488
        .long   2893219494
        .long   4236407587
        .long   3621042925
        .long   2633736712
        .long   3231371645
        .long   303277681
        .long   1491471692
        .long   4177847879
        .long   2947118554
        .long   972506129
        .long   2167775995
        .long   606555363
        .long   2982943385
        .long   4060728462
        .long   1599269812
        .long   1945012259
        .long   40584695
        .long   1213110727
        .long   1670919475
        .long   3826489629
        .long   3198539624
        .long   3890024518
        .long   81169391
        .long   2426221454
        .long   3341838951
        .long   3358011962
        .long   2102111953
        .long   3485081741
        .long   162338783
        .long   557475612
        .long   2388710606
        .long   2421056629
        .long   4204223906
        .long   2675196186
        .long   324677567
        .long   1114951224
        .long   482453916
        .long   547145963
        .long   4113480516
        .long   1055425077
        .long   649355134
        .long   2229902448
        .long   964907833
        .long   1094291926
        .long   3931993737
        .long   2110850155
        .long   1298710268
        .long   164837600
        .long   1929815667
        .long   2188583852
        .long   3569020178
        .long   4221700311
        .long   2597420537
        .long   329675200
        .long   3859631335
        .long   82200408
        .long   2843073060
        .long   4148433327
        .long   899873778
        .long   659350401
        .long   3424295375
        .long   164400817
        .long   1391178824
        .long   4001899359
        .long   1799747556
        .long   1318700802
        .long   2553623455
        .long   328801635
        .long   2782357648
        .long   3708831422
        .long   3599495112
        .long   2637401604
        .long   812279614
        .long   657603271
        .long   1269748001
        .long   3122695549
        .long   2904022928
        .long   979835913
        .long   1624559229
        .long   1315206542
        .long   2539496002
        .long   1950423802
        .long   1513078560
        .long   1959671827
        .long   3249118458
        .long   2630413084
        .long   784024708
        .long   3900847605
        .long   3026157121
        .long   3919343654
        .long   2203269620
        .long   965858873
        .long   1568049417
        .long   3506727914
        .long   1757346946
        .long   3543720013
        .long   111571945
        .long   1931717747
        .long   3136098835
        .long   2718488532
        .long   3514693892
        .long   2792472730
        .long   223143890
        .long   3863435494
        .long   1977230375
        .long   1142009769
        .long   2734420489
        .long   1289978165
        .long   446287780
        .long   3431903692
        .long   3954460750
        .long   2284019538
        .long   1173873683
        .long   2579956331
        .long   892575561
        .long   2568840088
        .long   3613954205
        .long   273071781
        .long   2347747367
        .long   864945366
        .long   1785151123
        .long   842712880
        .long   2932941114
        .long   546143563
        .long   400527438
        .long   1729890733
        .long   3570302247
        .long   1685425760
        .long   1570914932
        .long   1092287127
        .long   801054876
        .long   3459781466
        .long   2845637198
        .long   3370851521
        .long   3141829865
        .long   2184574254
        .long   1602109753
        .long   2624595636
        .long   1396307100
        .long   2446735747
        .long   1988692435
        .long   74181213
        .long   3204219507
        .long   954223976
        .long   2792614201
        .long   598504198
        .long   3977384870
        .long   148362426
        .long   2113471718
        .long   1908447953
        .long   1290261106
        .long   1197008397
        .long   3659802444
        .long   296724853
        .long   4226943436
        .long   3816895906
        .long   2580522212
        .long   2394016794
        .long   3024637593
        .long   593449707
        .long   4158919577
        .long   3338824517
        .long   866077128
        .long   493066293
        .long   1754307891
        .long   1186899415
        .long   4022871858
        .long   2382681739
        .long   1732154256
        .long   986132586
        .long   3508615783
        .long   2373798830
        .long   3750776420
        .long   470396183
        .long   3464308513
        .long   1972265172
        .long   2722264270
        .long   452630365
        .long   3206585544
        .long   940792367
        .long   2633649730
        .long   3944530345
        .long   1149561244
        .long   905260731
        .long   2118203793
        .long   1881584735
        .long   972332164
        .long   3594093395
        .long   2299122488
        .long   1810521462
        .long   4236407587
        .long   3763169470
        .long   1944664328
        .long   2893219494
        .long   303277681
        .long   3621042925
        .long   4177847879
        .long   3231371645
        .long   3889328657
        .long   1491471692
        .long   606555363
        .long   2947118554
        .long   4060728462
        .long   2167775995
        .long   3483690018
        .long   2982943385
        .long   1213110727
        .long   1599269812
        .long   3826489629
        .long   40584695
        .long   2672412741
        .long   1670919475
        .long   2426221454
        .long   3198539624
        .long   3358011962
        .long   81169391
        .long   1049858187
        .long   3341838951
        .long   557475612
        .long   2102111953
        .long   2421056629
        .long   162338783
        .long   2099716375
        .long   2388710606
        .long   1114951224
        .long   4204223906
        .long   547145963
        .long   324677567
        .long   4199432751
        .long   482453916
        .long   2229902448
        .long   4113480516
        .long   1094291926
        .long   649355134
        .long   4103898207
        .long   964907833
        .long   164837600
        .long   3931993737
        .long   2188583852
        .long   1298710268
        .long   3912829119
        .long   1929815667
        .long   329675200
        .long   3569020178
        .long   82200408
        .long   2597420537
        .long   3530690942
        .long   3859631335
        .long   659350401
        .long   2843073060
        .long   164400817
        .long   899873778
        .long   2766414588
        .long   3424295375
        .long   1318700802
        .long   1391178824
        .long   328801635
        .long   1799747556
        .long   1237861880
        .long   2553623455
        .long   2637401604
        .long   2782357648
        .long   657603271
        .long   3599495112
        .long   2475723761
        .long   812279614
        .long   979835913
        .long   1269748001
        .long   1315206542
        .long   2904022928
        .long   656480226
        .long   1624559229
        .long   1959671827
        .long   2539496002
        .long   2630413084
        .long   1513078560
        .long   1312960453
        .long   3249118458
        .long   3919343654
        .long   784024708
        .long   965858873
        .long   3026157121
        .long   2625920907
        .long   2203269620
        .long   3543720013
        .long   1568049417
        .long   1931717747
        .long   1757346946
        .long   956874519
        .long   111571945
        .long   2792472730
        .long   3136098835
        .long   3863435494
        .long   3514693892
        .long   1913749038
        .long   223143890
        .long   1289978165
        .long   1977230375
        .long   3431903692
        .long   2734420489
        .long   3827498077
        .long   446287780
        .long   2579956331
        .long   3954460750
        .long   2568840088
        .long   1173873683
        .long   3360028859
        .long   892575561
        .long   864945366
        .long   3613954205
        .long   842712880
        .long   2347747367
        .long   2425090423
        .long   1785151123
        .long   1729890733
        .long   2932941114
        .long   1685425760
        .long   400527438
        .long   555213551
        .long   3570302247
        .long   3459781466
        .long   1570914932
        .long   3370851521
        .long   801054876
        .long   1110427102
        .long   2845637198
        .long   2624595636
        .long   3141829865
        .long   2446735747
        .long   1602109753
        .long   2220854205
        .long   1396307100
        .long   954223976
        .long   1988692435
        .long   598504198
        .long   3204219507
        .long   146741115
        .long   2792614201
        .long   1908447953
        .long   3977384870
        .long   1197008397
        .long   2113471718
        .long   293482231
        .long   1290261106
        .long   3816895906
        .long   3659802444
        .long   2394016794
        .long   4226943436
        .long   586964463
        .long   2580522212
        .long   3338824517
        .long   3024637593
        .long   493066293
        .long   4158919577
        .long   1173928927
        .long   866077128
        .long   2382681739
        .long   1754307891
        .long   986132586
        .long   4022871858
        .long   2347857855
        .long   1732154256
        .long   470396183
        .long   3508615783
        .long   1972265172
        .long   3750776420
        .long   400748414
        .long   3464308513
        .long   940792367
        .long   2722264270
        .long   3944530345
        .long   3206585544
        .long   801496828
        .long   2633649730
        .long   1881584735
        .long   1149561244
        .long   3594093395
        .long   2118203793
        .long   1602993657
        .long   972332164
        .long   3763169470
        .long   2299122488
        .long   2893219494
        .long   4236407587
        .long   3205987314
        .long   1944664328
        .long   3231371645
        .long   303277681
        .long   1491471692
        .long   4177847879
        .long   2117007332
        .long   3889328657
        .long   2167775995
        .long   606555363
        .long   2982943385
        .long   4060728462
        .long   4234014665
        .long   3483690018
        .long   40584695
        .long   1213110727
        .long   1670919475
        .long   3826489629
        .long   4173062034
        .long   2672412741
        .long   81169391
        .long   2426221454
        .long   3341838951
        .long   3358011962
        .long   4051156773
        .long   1049858187
        .long   162338783
        .long   557475612
        .long   2388710606
        .long   2421056629
        .long   3807346250
        .long   2099716375
        .long   324677567
        .long   1114951224
        .long   482453916
        .long   547145963
        .long   3319725204
        .long   4199432751
        .long   649355134
        .long   2229902448
        .long   964907833
        .long   1094291926
        .long   2344483112
        .long   4103898207
        .long   1298710268
        .long   164837600
        .long   1929815667
        .long   2188583852
        .long   393998928
        .long   3912829119
        .long   2597420537
        .long   329675200
        .long   3859631335
        .long   82200408
        .long   787997856
        .long   3530690942
        .long   899873778
        .long   659350401
        .long   3424295375
        .long   164400817
        .long   1575995713
        .long   2766414588
        .long   1799747556
        .long   1318700802
        .long   2553623455
        .long   328801635
        .long   3151991427
        .long   1237861880
        .long   3599495112
        .long   2637401604
        .long   812279614
        .long   657603271
        .long   2009015559
        .long   2475723761
        .long   2904022928
        .long   979835913
        .long   1624559229
        .long   1315206542
        .long   4018031118
        .long   656480226
        .long   1513078560
        .long   1959671827
        .long   3249118458
        .long   2630413084
        .long   3741094941
        .long   1312960453
        .long   3026157121
        .long   3919343654
        .long   2203269620
        .long   965858873
        .long   3187222587
        .long   2625920907
        .long   1757346946
        .long   3543720013
        .long   111571945
        .long   1931717747
        .long   2079477878
        .long   956874519
        .long   3514693892
        .long   2792472730
        .long   223143890
        .long   3863435494
        .long   4158955756
        .long   1913749038
        .long   2734420489
        .long   1289978165
        .long   446287780
        .long   3431903692
        .long   4022944216
        .long   3827498077
        .long   1173873683
        .long   2579956331
        .long   892575561
        .long   2568840088
        .long   3750921137
        .long   3360028859
        .long   2347747367
        .long   864945366
        .long   1785151123
        .long   842712880
        .long   3206874979
        .long   2425090423
        .long   400527438
        .long   1729890733
        .long   3570302247
        .long   1685425760
        .long   2118782663
        .long   555213551
        .long   801054876
        .long   3459781466
        .long   2845637198
        .long   3370851521
        .long   4237565327
        .long   1110427102
        .long   1602109753
        .long   2624595636
        .long   1396307100
        .long   2446735747
        .long   4180163359
        .long   2220854205
        .long   3204219507
        .long   954223976
        .long   2792614201
        .long   598504198
        .long   4065359423
        .long   146741115
        .long   2113471718
        .long   1908447953
        .long   1290261106
        .long   1197008397
        .long   3835751551
        .long   293482231
        .long   4226943436
        .long   3816895906
        .long   2580522212
        .long   2394016794
        .long   3376535807
        .long   586964463
        .long   4158919577
        .long   3338824517
        .long   866077128
        .long   493066293
        .long   2458104319
        .long   1173928927
        .long   4022871858
        .long   2382681739
        .long   1732154256
        .long   986132586
        .long   621241343
        .long   2347857855
        .long   3750776420
        .long   470396183
        .long   3464308513
        .long   1972265172
        .long   1242482686
        .long   400748414
        .long   3206585544
        .long   940792367
        .long   2633649730
        .long   3944530345
        .long   2484965372
        .long   801496828
        .long   2118203793
        .long   1881584735
        .long   972332164
        .long   3594093395
        .long   674963448
        .long   1602993657
        .long   4236407587
        .long   3763169470
        .long   1944664328
        .long   2893219494
        .long   1349926897
        .long   3205987314
        .long   4177847879
        .long   3231371645
        .long   3889328657
        .long   1491471692
        .long   2699853794
        .long   2117007332
        .long   4060728462
        .long   2167775995
        .long   3483690018
        .long   2982943385
        .long   1104740292
        .long   4234014665
        .long   3826489629
        .long   40584695
        .long   2672412741
        .long   1670919475
        .long   2209480585
        .long   4173062034
        .long   3358011962
        .long   81169391
        .long   1049858187
        .long   3341838951
        .long   123993874
        .long   4051156773
        .long   2421056629
        .long   162338783
        .long   2099716375
        .long   2388710606
        .long   247987749
        .long   3807346250
        .long   547145963
        .long   324677567
        .long   4199432751
        .long   482453916
        .long   495975499
        .long   3319725204
        .long   1094291926
        .long   649355134
        .long   4103898207
        .long   964907833
        .long   991950999
        .long   2344483112
        .long   2188583852
        .long   1298710268
        .long   3912829119
        .long   1929815667
        .long   1983901999
        .long   393998928
        .long   82200408
        .long   2597420537
        .long   3530690942
        .long   3859631335
        .long   3967803999
        .long   787997856
        .long   164400817
        .long   899873778
        .long   2766414588
        .long   3424295375
        .long   3640640703
        .long   1575995713
        .long   328801635
        .long   1799747556
        .long   1237861880
        .long   2553623455
        .long   2986314111
        .long   3151991427
        .long   657603271
        .long   3599495112
        .long   2475723761
        .long   812279614
        .long   1677660927
        .long   2009015559
        .long   1315206542
        .long   2904022928
        .long   656480226
        .long   1624559229
        .long   3355321855
        .long   4018031118
        .long   2630413084
        .long   1513078560
        .long   1312960453
        .long   3249118458
        .long   2415676415
        .long   3741094941
        .long   965858873
        .long   3026157121
        .long   2625920907
        .long   2203269620
        .long   536385535
        .long   3187222587
        .long   1931717747
        .long   1757346946
        .long   956874519
        .long   111571945
        .long   1072771071
        .long   2079477878
        .long   3863435494
        .long   3514693892
        .long   1913749038
        .long   223143890
        .long   2145542143
        .long   4158955756
        .long   3431903692
        .long   2734420489
        .long   3827498077
        .long   446287780
        .long   4291084286
        .long   4022944216
        .long   2568840088
        .long   1173873683
        .long   3360028859
        .long   892575561
        .long   4287201277
        .long   3750921137
        .long   842712880
        .long   2347747367
        .long   2425090423
        .long   1785151123
        .long   4279435259
        .long   3206874979
        .long   1685425760
        .long   400527438
        .long   555213551
        .long   3570302247
        .long   4263903223
        .long   2118782663
        .long   3370851521
        .long   801054876
        .long   1110427102
        .long   2845637198
        .long   4232839151
        .long   4237565327
        .long   2446735747
        .long   1602109753
        .long   2220854205
        .long   1396307100
        .long   4170711006
        .long   4180163359
        .long   598504198
        .long   3204219507
        .long   146741115
        .long   2792614201
        .long   4046454716
        .long   4065359423
        .long   1197008397
        .long   2113471718
        .long   293482231
        .long   1290261106
        .long   3797942136
        .long   3835751551
        .long   2394016794
        .long   4226943436
        .long   586964463
        .long   2580522212
        .long   3300916976
        .long   3376535807
        .long   493066293
        .long   4158919577
        .long   1173928927
        .long   866077128
        .long   2306866656
        .long   2458104319
        .long   986132586
        .long   4022871858
        .long   2347857855
        .long   1732154256
        .long   318766016
        .long   621241343
        .long   1972265172
        .long   3750776420
        .long   400748414
        .long   3464308513
        .long   637532033
        .long   1242482686
        .long   3944530345
        .long   3206585544
        .long   801496828
        .long   2633649730
        .long   1275064066
        .long   2484965372
        .long   3594093395
        .long   2118203793
        .long   1602993657
        .long   972332164
        .long   2550128133
        .long   674963448
        .long   2893219494
        .long   4236407587
        .long   3205987314
        .long   1944664328
        .long   805288971
        .long   1349926897
        .long   1491471692
        .long   4177847879
        .long   2117007332
        .long   3889328657
        .long   1610577942
        .long   2699853794
        .long   2982943385
        .long   4060728462
        .long   4234014665
        .long   3483690018
        .long   3221155884
        .long   1104740292
        .long   1670919475
        .long   3826489629
        .long   4173062034
        .long   2672412741
        .long   2147344473
        .long   2209480585
        .long   3341838951
        .long   3358011962
        .long   4051156773
        .long   1049858187
        .long   4294688947
        .long   123993874
        .long   2388710606
        .long   2421056629
        .long   3807346250
        .long   2099716375
        .long   4294410598
        .long   247987749
        .long   482453916
        .long   547145963
        .long   3319725204
        .long   4199432751
        .long   4293853900
        .long   495975499
        .long   964907833
        .long   1094291926
        .long   2344483112
        .long   4103898207
        .long   4292740504
        .long   991950999
        .long   1929815667
        .long   2188583852
        .long   393998928
        .long   3912829119
        .long   4290513712
        .long   1983901999
        .long   3859631335
        .long   82200408
        .long   787997856
        .long   3530690942
        .long   4286060128
        .long   3967803999
        .long   3424295375
        .long   164400817
        .long   1575995713
        .long   2766414588
        .long   4277152960
        .long   3640640703
        .long   2553623455
        .long   328801635
        .long   3151991427
        .long   1237861880
        .long   4259338624
        .long   2986314111
        .long   812279614
        .long   657603271
        .long   2009015559
        .long   2475723761
        .long   4223709953
        .long   1677660927
        .long   1624559229
        .long   1315206542
        .long   4018031118
        .long   656480226
        .long   4152452611
        .long   3355321855
        .long   3249118458
        .long   2630413084
        .long   3741094941
        .long   1312960453
        .long   4009937927
        .long   2415676415
        .long   2203269620
        .long   965858873
        .long   3187222587
        .long   2625920907
        .long   3724908559
        .long   536385535
        .long   111571945
        .long   1931717747
        .long   2079477878
        .long   956874519
        .long   3154849823
        .long   1072771071
        .long   223143890
        .long   3863435494
        .long   4158955756
        .long   1913749038
        .long   2014732351
        .long   2145542143
        .long   446287780
        .long   3431903692
        .long   4022944216
        .long   3827498077
        .long   4029464703
        .long   4291084286
        .long   892575561
        .long   2568840088
        .long   3750921137
        .long   3360028859
        .long   3763962110
        .long   4287201277
        .long   1785151123
        .long   842712880
        .long   3206874979
        .long   2425090423
        .long   3232956925
        .long   4279435259
        .long   3570302247
        .long   1685425760
        .long   2118782663
        .long   555213551
        .long   2170946555
        .long   4263903223
        .long   2845637198
        .long   3370851521
        .long   4237565327
        .long   1110427102
        .long   46925815
        .long   4232839151
        .long   1396307100
        .long   2446735747
        .long   4180163359
        .long   2220854205
        .long   93851631
        .long   4170711006
        .long   2792614201
        .long   598504198
        .long   4065359423
        .long   146741115
        .long   187703262
        .long   4046454716
        .long   1290261106
        .long   1197008397
        .long   3835751551
        .long   293482231
        .long   375406524
        .long   3797942136
        .long   2580522212
        .long   2394016794
        .long   3376535807
        .long   586964463
        .long   750813049
        .long   3300916976
        .long   866077128
        .long   493066293
        .long   2458104319
        .long   1173928927
        .long   1501626098
        .long   2306866656
        .long   1732154256
        .long   986132586
        .long   621241343
        .long   2347857855
        .long   3003252197
        .long   318766016
        .long   3464308513
        .long   1972265172
        .long   1242482686
        .long   400748414
        .long   1711537099
        .long   637532033
        .long   2633649730
        .long   3944530345
        .long   2484965372
        .long   801496828
        .long   3423074199
        .long   1275064066
        .long   972332164
        .long   3594093395
        .long   674963448
        .long   1602993657
        .long   2551181103
        .long   2550128133
        .long   1944664328
        .long   2893219494
        .long   1349926897
        .long   3205987314
        .long   807394910
        .long   805288971
        .long   3889328657
        .long   1491471692
        .long   2699853794
        .long   2117007332
        .long   1614789820
        .long   1610577942
        .long   3483690018
        .long   2982943385
        .long   1104740292
        .long   4234014665
        .long   3229579640
        .long   3221155884
        .long   2672412741
        .long   1670919475
        .long   2209480585
        .long   4173062034
        .long   2164191985
        .long   2147344473
        .long   1049858187
        .long   3341838951
        .long   123993874
        .long   4051156773
        .long   33416674
        .long   4294688947
        .long   2099716375
        .long   2388710606
        .long   247987749
        .long   3807346250
        .long   66833348
        .long   4294410598
        .long   4199432751
        .long   482453916
        .long   495975499
        .long   3319725204
        .long   133666696
        .long   4293853900
        .long   4103898207
        .long   964907833
        .long   991950999
        .long   2344483112
        .long   267333393
        .long   4292740504
        .long   3912829119
        .long   1929815667
        .long   1983901999
        .long   393998928
        .long   534666787
        .long   4290513712
        .long   3530690942
        .long   3859631335
        .long   3967803999
        .long   787997856
        .long   1069333574
        .long   4286060128
        .long   2766414588
        .long   3424295375
        .long   3640640703
        .long   1575995713
        .long   2138667148
        .long   4277152960
        .long   1237861880
        .long   2553623455
        .long   2986314111
        .long   3151991427
        .long   4277334296
        .long   4259338624
        .long   2475723761
        .long   812279614
        .long   1677660927
        .long   2009015559
        .long   4259701297
        .long   4223709953
        .long   656480226
        .long   1624559229
        .long   3355321855
        .long   4018031118
        .long   4224435298
        .long   4152452611
        .long   1312960453
        .long   3249118458
        .long   2415676415
        .long   3741094941
        .long   4153903301
        .long   4009937927
        .long   2625920907
        .long   2203269620
        .long   536385535
        .long   3187222587
        .long   4012839307
        .long   3724908559
        .long   956874519
        .long   111571945
        .long   1072771071
        .long   2079477878
        .long   3730711318
        .long   3154849823
        .long   1913749038
        .long   223143890
        .long   2145542143
        .long   4158955756
        .long   3166455341
        .long   2014732351
        .long   3827498077
        .long   446287780
        .long   4291084286
        .long   4022944216
        .long   2037943386
        .long   4029464703
        .long   3360028859
        .long   892575561
        .long   4287201277
        .long   3750921137
        .long   4075886773
        .long   3763962110
        .long   2425090423
        .long   1785151123
        .long   4279435259
        .long   3206874979
        .long   3856806251
        .long   3232956925
        .long   555213551
        .long   3570302247
        .long   4263903223
        .long   2118782663
        .long   3418645206
        .long   2170946555
        .long   1110427102
        .long   2845637198
        .long   4232839151
        .long   4237565327
        .long   2542323117
        .long   46925815
        .long   2220854205
        .long   1396307100
        .long   4170711006
        .long   4180163359
        .long   789678938
        .long   93851631
        .long   146741115
        .long   2792614201
        .long   4046454716
        .long   4065359423
        .long   1579357876
        .long   187703262
        .long   293482231
        .long   1290261106
        .long   3797942136
        .long   3835751551
        .long   3158715752
        .long   375406524
        .long   586964463
        .long   2580522212
        .long   3300916976
        .long   3376535807
        .long   2022464208
        .long   750813049
        .long   1173928927
        .long   866077128
        .long   2306866656
        .long   2458104319
        .long   4044928416
        .long   1501626098
        .long   2347857855
        .long   1732154256
        .long   318766016
        .long   621241343
        .long   3794889537
        .long   3003252197
        .long   400748414
        .long   3464308513
        .long   637532033
        .long   1242482686
        .long   3294811778
        .long   1711537099
        .long   801496828
        .long   2633649730
        .long   1275064066
        .long   2484965372
        .long   2294656261
        .long   3423074199
        .long   1602993657
        .long   972332164
        .long   2550128133
        .long   674963448
        .long   294345226
        .long   2551181103
        .long   3205987314
        .long   1944664328
        .long   805288971
        .long   1349926897
        .long   588690452
        .long   807394910
        .long   2117007332
        .long   3889328657
        .long   1610577942
        .long   2699853794
        .long   1177380905
        .long   1614789820
        .long   4234014665
        .long   3483690018
        .long   3221155884
        .long   1104740292
        .long   2354761811
        .long   3229579640
        .long   4173062034
        .long   2672412741
        .long   2147344473
        .long   2209480585
        .long   414556326
        .long   2164191985
        .long   4051156773
        .long   1049858187
        .long   4294688947
        .long   123993874
        .long   829112653
        .long   33416674
        .long   3807346250
        .long   2099716375
        .long   4294410598
        .long   247987749
        .long   1658225307
        .long   66833348
        .long   3319725204
        .long   4199432751
        .long   4293853900
        .long   495975499
        .long   3316450614
        .long   133666696
        .long   2344483112
        .long   4103898207
        .long   4292740504
        .long   991950999
        .long   2337933933
        .long   267333393
        .long   393998928
        .long   3912829119
        .long   4290513712
        .long   1983901999
        .long   380900570
        .long   534666787
        .long   787997856
        .long   3530690942
        .long   4286060128
        .long   3967803999
        .long   761801140
        .long   1069333574
        .long   1575995713
        .long   2766414588
        .long   4277152960
        .long   3640640703
        .long   1523602280
        .long   2138667148
        .long   3151991427
        .long   1237861880
        .long   4259338624
        .long   2986314111
        .long   3047204561
        .long   4277334296
        .long   2009015559
        .long   2475723761
        .long   4223709953
        .long   1677660927
        .long   1799441827
        .long   4259701297
        .long   4018031118
        .long   656480226
        .long   4152452611
        .long   3355321855
        .long   3598883655
        .long   4224435298
        .long   3741094941
        .long   1312960453
        .long   4009937927
        .long   2415676415
        .long   2902800015
        .long   4153903301
        .long   3187222587
        .long   2625920907
        .long   3724908559
        .long   536385535
        .long   1510632735
        .long   4012839307
        .long   2079477878
        .long   956874519
        .long   3154849823
        .long   1072771071
        .long   3021265470
        .long   3730711318
        .long   4158955756
        .long   1913749038
        .long   2014732351
        .long   2145542143
        .long   1747563645
        .long   3166455341
        .long   4022944216
        .long   3827498077
        .long   4029464703
        .long   4291084286
        .long   3495127291
        .long   2037943386
        .long   3750921137
        .long   3360028859
        .long   3763962110
        .long   4287201277
        .long   2695287286
        .long   4075886773
        .long   3206874979
        .long   2425090423
        .long   3232956925
        .long   4279435259
        .long   1095607277
        .long   3856806251
        .long   2118782663
        .long   555213551
        .long   2170946555
        .long   4263903223
        .long   2191214555
        .long   3418645206
        .long   4237565327
        .long   1110427102
        .long   46925815
        .long   4232839151
        .long   87461814
        .long   2542323117
        .long   4180163359
        .long   2220854205
        .long   93851631
        .long   4170711006
        .long   174923629
        .long   789678938
        .long   4065359423
        .long   146741115
        .long   187703262
        .long   4046454716
        .long   349847258
        .long   1579357876
        .long   3835751551
        .long   293482231
        .long   375406524
        .long   3797942136
        .long   699694516
        .long   3158715752
        .long   3376535807
        .long   586964463
        .long   750813049
        .long   3300916976
        .long   1399389033
        .long   2022464208
        .long   2458104319
        .long   1173928927
        .long   1501626098
        .long   2306866656
        .long   2798778067
        .long   4044928416
        .long   621241343
        .long   2347857855
        .long   3003252197
        .long   318766016
        .long   1302588838
        .long   3794889537
        .long   1242482686
        .long   400748414
        .long   1711537099
        .long   637532033
        .long   2605177677
        .long   3294811778
        .long   2484965372
        .long   801496828
        .long   3423074199
        .long   1275064066
        .long   915388059
        .long   2294656261
        .long   674963448
        .long   1602993657
        .long   2551181103
        .long   2550128133
        .long   1830776118
        .long   294345226
        .long   1349926897
        .long   3205987314
        .long   807394910
        .long   805288971
        .long   3661552236
        .long   588690452
        .long   2699853794
        .long   2117007332
        .long   1614789820
        .long   1610577942
        .long   3028137177
        .long   1177380905
        .long   1104740292
        .long   4234014665
        .long   3229579640
        .long   3221155884
        .long   1761307059
        .long   2354761811
        .long   2209480585
        .long   4173062034
        .long   2164191985
        .long   2147344473
        .long   3522614119
        .long   414556326
        .long   123993874
        .long   4051156773
        .long   33416674
        .long   4294688947
        .long   2750260943
        .long   829112653
        .long   247987749
        .long   3807346250
        .long   66833348
        .long   4294410598
        .long   1205554591
        .long   1658225307
        .long   495975499
        .long   3319725204
        .long   133666696
        .long   4293853900
        .long   2411109183
        .long   3316450614
        .long   991950999
        .long   2344483112
        .long   267333393
        .long   4292740504
        .long   527251070
        .long   2337933933
        .long   1983901999
        .long   393998928
        .long   534666787
        .long   4290513712
        .long   1054502141
        .long   380900570
        .long   3967803999
        .long   787997856
        .long   1069333574
        .long   4286060128
        .long   2109004283
        .long   761801140
        .long   3640640703
        .long   1575995713
        .long   2138667148
        .long   4277152960
        .long   4218008566
        .long   1523602280
        .long   2986314111
        .long   3151991427
        .long   4277334296
        .long   4259338624
        .long   4141049836
        .long   3047204561
        .long   1677660927
        .long   2009015559
        .long   4259701297
        .long   4223709953
        .long   3987132377
        .long   1799441827
        .long   3355321855
        .long   4018031118
        .long   4224435298
        .long   4152452611
        .long   3679297459
        .long   3598883655
        .long   2415676415
        .long   3741094941
        .long   4153903301
        .long   4009937927
        .long   3063627623
        .long   2902800015
        .long   536385535
        .long   3187222587
        .long   4012839307
        .long   3724908559
        .long   1832287951
        .long   1510632735
        .long   1072771071
        .long   2079477878
        .long   3730711318
        .long   3154849823
        .long   3664575902
        .long   3021265470
        .long   2145542143
        .long   4158955756
        .long   3166455341
        .long   2014732351
        .long   3034184508
        .long   1747563645
        .long   4291084286
        .long   4022944216
        .long   2037943386
        .long   4029464703
        .long   1773401721
        .long   3495127291
        .long   4287201277
        .long   3750921137
        .long   4075886773
        .long   3763962110
        .long   3546803442
        .long   2695287286
        .long   4279435259
        .long   3206874979
        .long   3856806251
        .long   3232956925
        .long   2798639588
        .long   1095607277
        .long   4263903223
        .long   2118782663
        .long   3418645206
        .long   2170946555
        .long   1302311881
        .long   2191214555
        .long   4232839151
        .long   4237565327
        .long   2542323117
        .long   46925815
        .long   2604623763
        .long   87461814
        .long   4170711006
        .long   4180163359
        .long   789678938
        .long   93851631
        .long   914280231
        .long   174923629
        .long   4046454716
        .long   4065359423
        .long   1579357876
        .long   187703262
        .long   1828560463
        .long   349847258
        .long   3797942136
        .long   3835751551
        .long   3158715752
        .long   375406524
        .long   3657120927
        .long   699694516
        .long   3300916976
        .long   3376535807
        .long   2022464208
        .long   750813049
        .long   3019274558
        .long   1399389033
        .long   2306866656
        .long   2458104319
        .long   4044928416
        .long   1501626098
        .long   1743581820
        .long   2798778067
        .long   318766016
        .long   621241343
        .long   3794889537
        .long   3003252197
        .long   3487163641
        .long   1302588838
        .long   637532033
        .long   1242482686
        .long   3294811778
        .long   1711537099
        .long   2679359986
        .long   2605177677
        .long   1275064066
        .long   2484965372
        .long   2294656261
        .long   3423074199
        .long   1063752677
        .long   915388059
        .long   2550128133
        .long   674963448
        .long   294345226
        .long   2551181103
        .long   2127505355
        .long   1830776118
        .long   805288971
        .long   1349926897
        .long   588690452
        .long   807394910
        .long   4255010710
        .long   3661552236
        .long   1610577942
        .long   2699853794
        .long   1177380905
        .long   1614789820
        .long   4215054124
        .long   3028137177
        .long   3221155884
        .long   1104740292
        .long   2354761811
        .long   3229579640
        .long   4135140952
        .long   1761307059
        .long   2147344473
        .long   2209480585
        .long   414556326
        .long   2164191985
        .long   3975314608
        .long   3522614119
        .long   4294688947
        .long   123993874
        .long   829112653
        .long   33416674
        .long   3655661921
        .long   2750260943
        .long   4294410598
        .long   247987749
        .long   1658225307
        .long   66833348
        .long   3016356546
        .long   1205554591
        .long   4293853900
        .long   495975499
        .long   3316450614
        .long   133666696
        .long   1737745796
        .long   2411109183
        .long   4292740504
        .long   991950999
        .long   2337933933
        .long   267333393
        .long   3475491593
        .long   527251070
        .long   4290513712
        .long   1983901999
        .long   380900570
        .long   534666787
        .long   2656015891
        .long   1054502141
        .long   4286060128
        .long   3967803999
        .long   761801140
        .long   1069333574
        .long   1017064486
        .long   2109004283
        .long   4277152960
        .long   3640640703
        .long   1523602280
        .long   2138667148
        .long   2034128973
        .long   4218008566
        .long   4259338624
        .long   2986314111
        .long   3047204561
        .long   4277334296
        .long   4068257947
        .long   4141049836
        .long   4223709953
        .long   1677660927
        .long   1799441827
        .long   4259701297
        .long   3841548598
        .long   3987132377
        .long   4152452611
        .long   3355321855
        .long   3598883655
        .long   4224435298
        .long   3388129901
        .long   3679297459
        .long   4009937927
        .long   2415676415
        .long   2902800015
        .long   4153903301
        .long   2481292507
        .long   3063627623
        .long   3724908559
        .long   536385535
        .long   1510632735
        .long   4012839307
        .long   667617719
        .long   1832287951
        .long   3154849823
        .long   1072771071
        .long   3021265470
        .long   3730711318
        .long   1335235438
        .long   3664575902
        .long   2014732351
        .long   2145542143
        .long   1747563645
        .long   3166455341
        .long   2670470877
        .long   3034184508
        .long   4029464703
        .long   4291084286
        .long   3495127291
        .long   2037943386
        .long   1045974458
        .long   1773401721
        .long   3763962110
        .long   4287201277
        .long   2695287286
        .long   4075886773
        .long   2091948916
        .long   3546803442
        .long   3232956925
        .long   4279435259
        .long   1095607277
        .long   3856806251
        .long   4183897833
        .long   2798639588
        .long   2170946555
        .long   4263903223
        .long   2191214555
        .long   3418645206
        .long   4072828371
        .long   1302311881
        .long   46925815
        .long   4232839151
        .long   87461814
        .long   2542323117
        .long   3850689447
        .long   2604623763
        .long   93851631
        .long   4170711006
        .long   174923629
        .long   789678938
        .long   3406411599
        .long   914280231
        .long   187703262
        .long   4046454716
        .long   349847258
        .long   1579357876
        .long   2517855902
        .long   1828560463
        .long   375406524
        .long   3797942136
        .long   699694516
        .long   3158715752
        .long   740744509
        .long   3657120927
        .long   750813049
        .long   3300916976
        .long   1399389033
        .long   2022464208
        .long   1481489018
        .long   3019274558
        .long   1501626098
        .long   2306866656
        .long   2798778067
        .long   4044928416
        .long   2962978036
        .long   1743581820
        .long   3003252197
        .long   318766016
        .long   1302588838
        .long   3794889537
        .long   1630988776
        .long   3487163641
        .long   1711537099
        .long   637532033
        .long   2605177677
        .long   3294811778
        .long   3261977553
        .long   2679359986
        .long   3423074199
        .long   1275064066
        .long   915388059
        .long   2294656261
        .long   2228987811
        .long   1063752677
        .long   2551181103
        .long   2550128133
        .long   1830776118
        .long   294345226
        .long   163008326
        .long   2127505355
        .long   807394910
        .long   805288971
        .long   3661552236
        .long   588690452
        .long   326016652
        .long   4255010710
        .long   1614789820
        .long   1610577942
        .long   3028137177
        .long   1177380905
        .long   652033304
        .long   4215054124
        .long   3229579640
        .long   3221155884
        .long   1761307059
        .long   2354761811
        .long   1304066609
        .long   4135140952
        .long   2164191985
        .long   2147344473
        .long   3522614119
        .long   414556326
        .long   2608133219
        .long   3975314608
        .long   33416674
        .long   4294688947
        .long   2750260943
        .long   829112653
        .long   921299143
        .long   3655661921
        .long   66833348
        .long   4294410598
        .long   1205554591
        .long   1658225307
        .long   1842598287
        .long   3016356546
        .long   133666696
        .long   4293853900
        .long   2411109183
        .long   3316450614
        .long   3685196575
        .long   1737745796
        .long   267333393
        .long   4292740504
        .long   527251070
        .long   2337933933
        .long   3075425855
        .long   3475491593
        .long   534666787
        .long   4290513712
        .long   1054502141
        .long   380900570
        .long   1855884414
        .long   2656015891
        .long   1069333574
        .long   4286060128
        .long   2109004283
        .long   761801140
        .long   3711768829
        .long   1017064486
        .long   2138667148
        .long   4277152960
        .long   4218008566
        .long   1523602280
        .long   3128570363
        .long   2034128973
        .long   4277334296
        .long   4259338624
        .long   4141049836
        .long   3047204561
        .long   1962173430
        .long   4068257947
        .long   4259701297
        .long   4223709953
        .long   3987132377
        .long   1799441827
        .long   3924346860
        .long   3841548598
        .long   4224435298
        .long   4152452611
        .long   3679297459
        .long   3598883655
        .long   3553726425
        .long   3388129901
        .long   4153903301
        .long   4009937927
        .long   3063627623
        .long   2902800015
        .long   2812485555
        .long   2481292507
        .long   4012839307
        .long   3724908559
        .long   1832287951
        .long   1510632735
        .long   1330003814
        .long   667617719
        .long   3730711318
        .long   3154849823
        .long   3664575902
        .long   3021265470
        .long   2660007629
        .long   1335235438
        .long   3166455341
        .long   2014732351
        .long   3034184508
        .long   1747563645
        .long   1025047962
        .long   2670470877
        .long   2037943386
        .long   4029464703
        .long   1773401721
        .long   3495127291
        .long   2050095924
        .long   1045974458
        .long   4075886773
        .long   3763962110
        .long   3546803442
        .long   2695287286
        .long   4100191849
        .long   2091948916
        .long   3856806251
        .long   3232956925
        .long   2798639588
        .long   1095607277
        .long   3905416403
        .long   4183897833
        .long   3418645206
        .long   2170946555
        .long   1302311881
        .long   2191214555
        .long   3515865511
        .long   4072828371
        .long   2542323117
        .long   46925815
        .long   2604623763
        .long   87461814
        .long   2736763727
        .long   3850689447
        .long   789678938
        .long   93851631
        .long   914280231
        .long   174923629
        .long   1178560158
        .long   3406411599
        .long   1579357876
        .long   187703262
        .long   1828560463
        .long   349847258
        .long   2357120316
        .long   2517855902
        .long   3158715752
        .long   375406524
        .long   3657120927
        .long   699694516
        .long   419273337
        .long   740744509
        .long   2022464208
        .long   750813049
        .long   3019274558
        .long   1399389033
        .long   838546674
        .long   1481489018
        .long   4044928416
        .long   1501626098
        .long   1743581820
        .long   2798778067
        .long   1677093349
        .long   2962978036
        .long   3794889537
        .long   3003252197
        .long   3487163641
        .long   1302588838
        .long   3354186699
        .long   1630988776
        .long   3294811778
        .long   1711537099
        .long   2679359986
        .long   2605177677
        .long   2413406103
        .long   3261977553
        .long   2294656261
        .long   3423074199
        .long   1063752677
        .long   915388059
        .long   531844911
        .long   2228987811
        .long   294345226
        .long   2551181103
        .long   2127505355
        .long   1830776118
        .long   1063689823
        .long   163008326
        .long   588690452
        .long   807394910
        .long   4255010710
        .long   3661552236
        .long   2127379647
        .long   326016652
        .long   1177380905
        .long   1614789820
        .long   4215054124
        .long   3028137177
        .long   4254759295
        .long   652033304
        .long   2354761811
        .long   3229579640
        .long   4135140952
        .long   1761307059
        .long   4214551295
        .long   1304066609
        .long   414556326
        .long   2164191985
        .long   3975314608
        .long   3522614119
        .long   4134135294
        .long   2608133219
        .long   829112653
        .long   33416674
        .long   3655661921
        .long   2750260943
        .long   3973303293
        .long   921299143
        .long   1658225307
        .long   66833348
        .long   3016356546
        .long   1205554591
        .long   3651639290
        .long   1842598287
        .long   3316450614
        .long   133666696
        .long   1737745796
        .long   2411109183
        .long   3008311285
        .long   3685196575
        .long   2337933933
        .long   267333393
        .long   3475491593
        .long   527251070
        .long   1721655274
        .long   3075425855
        .long   380900570
        .long   534666787
        .long   2656015891
        .long   1054502141
        .long   3443310548
        .long   1855884414
        .long   761801140
        .long   1069333574
        .long   1017064486
        .long   2109004283
        .long   2591653800
        .long   3711768829
        .long   1523602280
        .long   2138667148
        .long   2034128973
        .long   4218008566
        .long   888340305
        .long   3128570363
        .long   3047204561
        .long   4277334296
        .long   4068257947
        .long   4141049836
        .long   1776680610
        .long   1962173430
        .long   1799441827
        .long   4259701297
        .long   3841548598
        .long   3987132377
        .long   3553361221
        .long   3924346860
        .long   3598883655
        .long   4224435298
        .long   3388129901
        .long   3679297459
        .long   2811755147
        .long   3553726425
        .long   2902800015
        .long   4153903301
        .long   2481292507
        .long   3063627623
        .long   1328542998
        .long   2812485555
        .long   1510632735
        .long   4012839307
        .long   667617719
        .long   1832287951
        .long   2657085997
        .long   1330003814
        .long   3021265470
        .long   3730711318
        .long   1335235438
        .long   3664575902
        .long   1019204698
        .long   2660007629
        .long   1747563645
        .long   3166455341
        .long   2670470877
        .long   3034184508
        .long   2038409397
        .long   1025047962
        .long   3495127291
        .long   2037943386
        .long   1045974458
        .long   1773401721
        .long   4076818795
        .long   2050095924
        .long   2695287286
        .long   4075886773
        .long   2091948916
        .long   3546803442
        .long   3858670295
        .long   4100191849
        .long   1095607277
        .long   3856806251
        .long   4183897833
        .long   2798639588
        .long   3422373294
        .long   3905416403
        .long   2191214555
        .long   3418645206
        .long   4072828371
        .long   1302311881
        .long   2549779293
        .long   3515865511
        .long   87461814
        .long   2542323117
        .long   3850689447
        .long   2604623763
        .long   804591290
        .long   2736763727
        .long   174923629
        .long   789678938
        .long   3406411599
        .long   914280231
        .long   1609182581
        .long   1178560158
        .long   349847258
        .long   1579357876
        .long   2517855902
        .long   1828560463
        .long   3218365162
        .long   2357120316
        .long   699694516
        .long   3158715752
        .long   740744509
        .long   3657120927
        .long   2141763028
        .long   419273337
        .long   1399389033
        .long   2022464208
        .long   1481489018
        .long   3019274558
        .long   4283526057
        .long   838546674
        .long   2798778067
        .long   4044928416
        .long   2962978036
        .long   1743581820
        .long   4272084818
        .long   1677093349
        .long   1302588838
        .long   3794889537
        .long   1630988776
        .long   3487163641
        .long   4249202340
        .long   3354186699
        .long   2605177677
        .long   3294811778
        .long   3261977553
        .long   2679359986
        .long   4203437385
        .long   2413406103
        .long   915388059
        .long   2294656261
        .long   2228987811
        .long   1063752677
        .long   4111907475
        .long   531844911
        .long   1830776118
        .long   294345226
        .long   163008326
        .long   2127505355
        .long   3928847655
        .long   1063689823
        .long   3661552236
        .long   588690452
        .long   326016652
        .long   4255010710
        .long   3562728015
        .long   2127379647
        .long   3028137177
        .long   1177380905
        .long   652033304
        .long   4215054124
        .long   2830488734
        .long   4254759295
        .long   1761307059
        .long   2354761811
        .long   1304066609
        .long   4135140952
        .long   1366010173
        .long   4214551295
        .long   3522614119
        .long   414556326
        .long   2608133219
        .long   3975314608
        .long   2732020347
        .long   4134135294
        .long   2750260943
        .long   829112653
        .long   921299143
        .long   3655661921
        .long   1169073399
        .long   3973303293
        .long   1205554591
        .long   1658225307
        .long   1842598287
        .long   3016356546
        .long   2338146798
        .long   3651639290
        .long   2411109183
        .long   3316450614
        .long   3685196575
        .long   1737745796
        .long   381326301
        .long   3008311285
        .long   527251070
        .long   2337933933
        .long   3075425855
        .long   3475491593
        .long   762652602
        .long   1721655274
        .long   1054502141
        .long   380900570
        .long   1855884414
        .long   2656015891
        .long   1525305205
        .long   3443310548
        .long   2109004283
        .long   761801140
        .long   3711768829
        .long   1017064486
        .long   3050610411
        .long   2591653800
        .long   4218008566
        .long   1523602280
        .long   3128570363
        .long   2034128973
        .long   1806253526
        .long   888340305
        .long   4141049836
        .long   3047204561
        .long   1962173430
        .long   4068257947
        .long   3612507052
        .long   1776680610
        .long   3987132377
        .long   1799441827
        .long   3924346860
        .long   3841548598
        .long   2930046808
        .long   3553361221
        .long   3679297459
        .long   3598883655
        .long   3553726425
        .long   3388129901
        .long   1565126321
        .long   2811755147
        .long   3063627623
        .long   2902800015
        .long   2812485555
        .long   2481292507
        .long   3130252643
        .long   1328542998
        .long   1832287951
        .long   1510632735
        .long   1330003814
        .long   667617719
        .long   1965537991
        .long   2657085997
        .long   3664575902
        .long   3021265470
        .long   2660007629
        .long   1335235438
        .long   3931075983
        .long   1019204698
        .long   3034184508
        .long   1747563645
        .long   1025047962
        .long   2670470877
        .long   3567184671
        .long   2038409397
        .long   1773401721
        .long   3495127291
        .long   2050095924
        .long   1045974458
        .long   2839402047
        .long   4076818795
        .long   3546803442
        .long   2695287286
        .long   4100191849
        .long   2091948916
        .long   1383836798
        .long   3858670295
        .long   2798639588
        .long   1095607277
        .long   3905416403
        .long   4183897833
        .long   2767673597
        .long   3422373294
        .long   1302311881
        .long   2191214555
        .long   3515865511
        .long   4072828371
        .long   1240379898
        .long   2549779293
        .long   2604623763
        .long   87461814
        .long   2736763727
        .long   3850689447
        .long   2480759797
        .long   804591290
        .long   914280231
        .long   174923629
        .long   1178560158
        .long   3406411599
        .long   666552299
        .long   1609182581
        .long   1828560463
        .long   349847258
        .long   2357120316
        .long   2517855902
        .long   1333104599
        .long   3218365162
        .long   3657120927
        .long   699694516
        .long   419273337
        .long   740744509
        .long   2666209199
        .long   2141763028
        .long   3019274558
        .long   1399389033
        .long   838546674
        .long   1481489018
        .long   1037451103
        .long   4283526057
        .long   1743581820
        .long   2798778067
        .long   1677093349
        .long   2962978036
        .long   2074902206
        .long   4272084818
        .long   3487163641
        .long   1302588838
        .long   3354186699
        .long   1630988776
        .long   4149804412
        .long   4249202340
        .long   2679359986
        .long   2605177677
        .long   2413406103
        .long   3261977553
        .long   4004641529
        .long   4203437385
        .long   1063752677
        .long   915388059
        .long   531844911
        .long   2228987811
        .long   3714315762
        .long   4111907475
        .long   2127505355
        .long   1830776118
        .long   1063689823
        .long   163008326
        .long   3133664229
        .long   3928847655
        .long   4255010710
        .long   3661552236
        .long   2127379647
        .long   326016652
        .long   1972361163
        .long   3562728015
        .long   4215054124
        .long   3028137177
        .long   4254759295
        .long   652033304
        .long   3944722327
        .long   2830488734
        .long   4135140952
        .long   1761307059
        .long   4214551295
        .long   1304066609
        .long   3594477359
        .long   1366010173
        .long   3975314608
        .long   3522614119
        .long   4134135294
        .long   2608133219
        .long   2893987423
        .long   2732020347
        .long   3655661921
        .long   2750260943
        .long   3973303293
        .long   921299143
        .long   1493007550
        .long   1169073399
        .long   3016356546
        .long   1205554591
        .long   3651639290
        .long   1842598287
        .long   2986015100
        .long   2338146798
        .long   1737745796
        .long   2411109183
        .long   3008311285
        .long   3685196575
        .long   1677062904
        .long   381326301
        .long   3475491593
        .long   527251070
        .long   1721655274
        .long   3075425855
        .long   3354125809
        .long   762652602
        .long   2656015891
        .long   1054502141
        .long   3443310548
        .long   1855884414
        .long   2413284322
        .long   1525305205
        .long   1017064486
        .long   2109004283
        .long   2591653800
        .long   3711768829
        .long   531601349
        .long   3050610411
        .long   2034128973
        .long   4218008566
        .long   888340305
        .long   3128570363
        .long   1063202699
        .long   1806253526
        .long   4068257947
        .long   4141049836
        .long   1776680610
        .long   1962173430
        .long   2126405399
        .long   3612507052
        .long   3841548598
        .long   3987132377
        .long   3553361221
        .long   3924346860
        .long   4252810799
        .long   2930046808
        .long   3388129901
        .long   3679297459
        .long   2811755147
        .long   3553726425
        .long   4210654302
        .long   1565126321
        .long   2481292507
        .long   3063627623
        .long   1328542998
        .long   2812485555
        .long   4126341309
        .long   3130252643
        .long   667617719
        .long   1832287951
        .long   2657085997
        .long   1330003814
        .long   3957715323
        .long   1965537991
        .long   1335235438
        .long   3664575902
        .long   1019204698
        .long   2660007629
        .long   3620463350
        .long   3931075983
        .long   2670470877
        .long   3034184508
        .long   2038409397
        .long   1025047962
        .long   2945959404
        .long   3567184671
        .long   1045974458
        .long   1773401721
        .long   4076818795
        .long   2050095924
        .long   1596951513
        .long   2839402047
        .long   2091948916
        .long   3546803442
        .long   3858670295
        .long   4100191849
        .long   3193903027
        .long   1383836798
        .long   4183897833
        .long   2798639588
        .long   3422373294
        .long   3905416403
        .long   2092838759
        .long   2767673597
        .long   4072828371
        .long   1302311881
        .long   2549779293
        .long   3515865511
        .long   4185677519
        .long   1240379898
        .long   3850689447
        .long   2604623763
        .long   804591290
        .long   2736763727
        .long   4076387742
        .long   2480759797
        .long   3406411599
        .long   914280231
        .long   1609182581
        .long   1178560158
        .long   3857808189
        .long   666552299
        .long   2517855902
        .long   1828560463
        .long   3218365162
        .long   2357120316
        .long   3420649082
        .long   1333104599
        .long   740744509
        .long   3657120927
        .long   2141763028
        .long   419273337
        .long   2546330868
        .long   2666209199
        .long   1481489018
        .long   3019274558
        .long   4283526057
        .long   838546674
        .long   797694440
        .long   1037451103
        .long   2962978036
        .long   1743581820
        .long   4272084818
        .long   1677093349
        .long   1595388880
        .long   2074902206
        .long   1630988776
        .long   3487163641
        .long   4249202340
        .long   3354186699
        .long   3190777760
        .long   4149804412
        .long   3261977553
        .long   2679359986
        .long   4203437385
        .long   2413406103
        .long   2086588225
        .long   4004641529
        .long   2228987811
        .long   1063752677
        .long   4111907475
        .long   531844911
        .long   4173176451
        .long   3714315762
        .long   163008326
        .long   2127505355
        .long   3928847655
        .long   1063689823
        .long   4051385607
        .long   3133664229
        .long   326016652
        .long   4255010710
        .long   3562728015
        .long   2127379647
        .long   3807803918
        .long   1972361163
        .long   652033304
        .long   4215054124
        .long   2830488734
        .long   4254759295
        .long   3320640540
        .long   3944722327
        .long   1304066609
        .long   4135140952
        .long   1366010173
        .long   4214551295
        .long   2346313785
        .long   3594477359
        .long   2608133219
        .long   3975314608
        .long   2732020347
        .long   4134135294
        .long   397660275
        .long   2893987423
        .long   921299143
        .long   3655661921
        .long   1169073399
        .long   3973303293
        .long   795320551
        .long   1493007550
        .long   1842598287
        .long   3016356546
        .long   2338146798
        .long   3651639290
        .long   1590641102
        .long   2986015100
        .long   3685196575
        .long   1737745796
        .long   381326301
        .long   3008311285
        .long   3181282204
        .long   1677062904
        .long   3075425855
        .long   3475491593
        .long   762652602
        .long   1721655274
        .long   2067597113
        .long   3354125809
        .long   1855884414
        .long   2656015891
        .long   1525305205
        .long   3443310548
        .long   4135194227
        .long   2413284322
        .long   3711768829
        .long   1017064486
        .long   3050610411
        .long   2591653800
        .long   3975421159
        .long   531601349
        .long   3128570363
        .long   2034128973
        .long   1806253526
        .long   888340305
        .long   3655875023
        .long   1063202699
        .long   1962173430
        .long   4068257947
        .long   3612507052
        .long   1776680610
        .long   3016782751
        .long   2126405399
        .long   3924346860
        .long   3841548598
        .long   2930046808
        .long   3553361221
        .long   1738598206
        .long   4252810799
        .long   3553726425
        .long   3388129901
        .long   1565126321
        .long   2811755147
        .long   3477196413
        .long   4210654302
        .long   2812485555
        .long   2481292507
        .long   3130252643
        .long   1328542998
        .long   2659425531
        .long   4126341309
        .long   1330003814
        .long   667617719
        .long   1965537991
        .long   2657085997
        .long   1023883767
        .long   3957715323
        .long   2660007629
        .long   1335235438
        .long   3931075983
        .long   1019204698
        .long   2047767535
        .long   3620463350
        .long   1025047962
        .long   2670470877
        .long   3567184671
        .long   2038409397
        .long   4095535070
        .long   2945959404
        .long   2050095924
        .long   1045974458
        .long   2839402047
        .long   4076818795
        .long   3896102844
        .long   1596951513
        .long   4100191849
        .long   2091948916
        .long   1383836798
        .long   3858670295
        .long   3497238392
        .long   3193903027
        .long   3905416403
        .long   4183897833
        .long   2767673597
        .long   3422373294
        .long   2699509489
        .long   2092838759
        .long   3515865511
        .long   4072828371
        .long   1240379898
        .long   2549779293
        .long   1104051682
        .long   4185677519
        .long   2736763727
        .long   3850689447
        .long   2480759797
        .long   804591290
        .long   2208103365
        .long   4076387742
        .long   1178560158
        .long   3406411599
        .long   666552299
        .long   1609182581
        .long   121239434
        .long   3857808189
        .long   2357120316
        .long   2517855902
        .long   1333104599
        .long   3218365162
        .long   242478868
        .long   3420649082
        .long   419273337
        .long   740744509
        .long   2666209199
        .long   2141763028
        .long   484957737
        .long   2546330868
        .long   838546674
        .long   1481489018
        .long   1037451103
        .long   4283526057
        .long   969915474
        .long   797694440
        .long   1677093349
        .long   2962978036
        .long   2074902206
        .long   4272084818
        .long   1939830949
        .long   1595388880
        .long   3354186699
        .long   1630988776
        .long   4149804412
        .long   4249202340
        .long   3879661898
        .long   3190777760
        .long   2413406103
        .long   3261977553
        .long   4004641529
        .long   4203437385
        .long   3464356500
        .long   2086588225
        .long   531844911
        .long   2228987811
        .long   3714315762
        .long   4111907475
        .long   2633745705
        .long   4173176451
        .long   1063689823
        .long   163008326
        .long   3133664229
        .long   3928847655
        .long   972524114
        .long   4051385607
        .long   2127379647
        .long   326016652
        .long   1972361163
        .long   3562728015
        .long   1945048229
        .long   3807803918
        .long   4254759295
        .long   652033304
        .long   3944722327
        .long   2830488734
        .long   3890096458
        .long   3320640540
        .long   4214551295
        .long   1304066609
        .long   3594477359
        .long   1366010173
        .long   3485225620
        .long   2346313785
        .long   4134135294
        .long   2608133219
        .long   2893987423
        .long   2732020347
        .long   2675483945
        .long   397660275
        .long   3973303293
        .long   921299143
        .long   1493007550
        .long   1169073399
        .long   1056000594
        .long   795320551
        .long   3651639290
        .long   1842598287
        .long   2986015100
        .long   2338146798
        .long   2112001188
        .long   1590641102
        .long   3008311285
        .long   3685196575
        .long   1677062904
        .long   381326301
        .long   4224002377
        .long   3181282204
        .long   1721655274
        .long   3075425855
        .long   3354125809
        .long   762652602
        .long   4153037458
        .long   2067597113
        .long   3443310548
        .long   1855884414
        .long   2413284322
        .long   1525305205
        .long   4011107621
        .long   4135194227
        .long   2591653800
        .long   3711768829
        .long   531601349
        .long   3050610411
        .long   3727247947
        .long   3975421159
        .long   888340305
        .long   3128570363
        .long   1063202699
        .long   1806253526
        .long   3159528599
        .long   3655875023
        .long   1776680610
        .long   1962173430
        .long   2126405399
        .long   3612507052
        .long   2024089902
        .long   3016782751
        .long   3553361221
        .long   3924346860
        .long   4252810799
        .long   2930046808
        .long   4048179805
        .long   1738598206
        .long   2811755147
        .long   3553726425
        .long   4210654302
        .long   1565126321
        .long   3801392314
        .long   3477196413
        .long   1328542998
        .long   2812485555
        .long   4126341309
        .long   3130252643
        .long   3307817333
        .long   2659425531
        .long   2657085997
        .long   1330003814
        .long   3957715323
        .long   1965537991
        .long   2320667370
        .long   1023883767
        .long   1019204698
        .long   2660007629
        .long   3620463350
        .long   3931075983
        .long   346367444
        .long   2047767535
        .long   2038409397
        .long   1025047962
        .long   2945959404
        .long   3567184671
        .long   692734889
        .long   4095535070
        .long   4076818795
        .long   2050095924
        .long   1596951513
        .long   2839402047
        .long   1385469779
        .long   3896102844
        .long   3858670295
        .long   4100191849
        .long   3193903027
        .long   1383836798
        .long   2770939558
        .long   3497238392
        .long   3422373294
        .long   3905416403
        .long   2092838759
        .long   2767673597
        .long   1246911821
        .long   2699509489
        .long   2549779293
        .long   3515865511
        .long   4185677519
        .long   1240379898
        .long   2493823642
        .long   1104051682
        .long   804591290
        .long   2736763727
        .long   4076387742
        .long   2480759797
        .long   692679989
        .long   2208103365
        .long   1609182581
        .long   1178560158
        .long   3857808189
        .long   666552299
        .long   1385359979
        .long   121239434
        .long   3218365162
        .long   2357120316
        .long   3420649082
        .long   1333104599
        .long   2770719959
        .long   242478868
        .long   2141763028
        .long   419273337
        .long   2546330868
        .long   2666209199
        .long   1246472623
        .long   484957737
        .long   4283526057
        .long   838546674
        .long   797694440
        .long   1037451103
        .long   2492945247
        .long   969915474
        .long   4272084818
        .long   1677093349
        .long   1595388880
        .long   2074902206
        .long   690923199
        .long   1939830949
        .long   4249202340
        .long   3354186699
        .long   3190777760
        .long   4149804412
        .long   1381846399
        .long   3879661898
        .long   4203437385
        .long   2413406103
        .long   2086588225
        .long   4004641529
        .long   2763692798
        .long   3464356500
        .long   4111907475
        .long   531844911
        .long   4173176451
        .long   3714315762
        .long   1232418301
        .long   2633745705
        .long   3928847655
        .long   1063689823
        .long   4051385607
        .long   3133664229
        .long   2464836603
        .long   972524114
        .long   3562728015
        .long   2127379647
        .long   3807803918
        .long   1972361163
        .long   634705910
        .long   1945048229
        .long   2830488734
        .long   4254759295
        .long   3320640540
        .long   3944722327
        .long   1269411821
        .long   3890096458
        .long   1366010173
        .long   4214551295
        .long   2346313785
        .long   3594477359
        .long   2538823642
        .long   3485225620
        .long   2732020347
        .long   4134135294
        .long   397660275
        .long   2893987423
        .long   782679989
        .long   2675483945
        .long   1169073399
        .long   3973303293
        .long   795320551
        .long   1493007550
        .long   1565359979
        .long   1056000594
        .long   2338146798
        .long   3651639290
        .long   1590641102
        .long   2986015100
        .long   3130719959
        .long   2112001188
        .long   381326301
        .long   3008311285
        .long   3181282204
        .long   1677062904
        .long   1966472623
        .long   4224002377
        .long   762652602
        .long   1721655274
        .long   2067597113
        .long   3354125809
        .long   3932945247
        .long   4153037458
        .long   1525305205
        .long   3443310548
        .long   4135194227
        .long   2413284322
        .long   3570923199
        .long   4011107621
        .long   3050610411
        .long   2591653800
        .long   3975421159
        .long   531601349
        .long   2846879102
        .long   3727247947
        .long   1806253526
        .long   888340305
        .long   3655875023
        .long   1063202699
        .long   1398790909
        .long   3159528599
        .long   3612507052
        .long   1776680610
        .long   3016782751
        .long   2126405399
        .long   2797581819
        .long   2024089902
        .long   2930046808
        .long   3553361221
        .long   1738598206
        .long   4252810799
        .long   1300196342
        .long   4048179805
        .long   1565126321
        .long   2811755147
        .long   3477196413
        .long   4210654302
        .long   2600392684
        .long   3801392314
        .long   3130252643
        .long   1328542998
        .long   2659425531
        .long   4126341309
        .long   905818072
        .long   3307817333
        .long   1965537991
        .long   2657085997
        .long   1023883767
        .long   3957715323
        .long   1811636145
        .long   2320667370
        .long   3931075983
        .long   1019204698
        .long   2047767535
        .long   3620463350
        .long   3623272290
        .long   346367444
        .long   3567184671
        .long   2038409397
        .long   4095535070
        .long   2945959404
        .long   2951577284
        .long   692734889
        .long   2839402047
        .long   4076818795
        .long   3896102844
        .long   1596951513
        .long   1608187272
        .long   1385469779
        .long   1383836798
        .long   3858670295
        .long   3497238392
        .long   3193903027
        .long   3216374545
        .long   2770939558
        .long   2767673597
        .long   3422373294
        .long   2699509489
        .long   2092838759
        .long   2137781795
        .long   1246911821
        .long   1240379898
        .long   2549779293
        .long   1104051682
        .long   4185677519
        .long   4275563591
        .long   2493823642
        .long   2480759797
        .long   804591290
        .long   2208103365
        .long   4076387742
        .long   4256159887
        .long   692679989
        .long   666552299
        .long   1609182581
        .long   121239434
        .long   3857808189
        .long   4217352479
        .long   1385359979
        .long   1333104599
        .long   3218365162
        .long   242478868
        .long   3420649082
        .long   4139737663
        .long   2770719959
        .long   2666209199
        .long   2141763028
        .long   484957737
        .long   2546330868
        .long   3984508030
        .long   1246472623
        .long   1037451103
        .long   4283526057
        .long   969915474
        .long   797694440
        .long   3674048764
        .long   2492945247
        .long   2074902206
        .long   4272084818
        .long   1939830949
        .long   1595388880
        .long   3053130232
        .long   690923199
        .long   4149804412
        .long   4249202340
        .long   3879661898
        .long   3190777760
        .long   1811293169
        .long   1381846399
        .long   4004641529
        .long   4203437385
        .long   3464356500
        .long   2086588225
        .long   3622586339
        .long   2763692798
        .long   3714315762
        .long   4111907475
        .long   2633745705
        .long   4173176451
        .long   2950205382
        .long   1232418301
        .long   3133664229
        .long   3928847655
        .long   972524114
        .long   4051385607
        .long   1605443469
        .long   2464836603
        .long   1972361163
        .long   3562728015
        .long   1945048229
        .long   3807803918
        .long   3210886938
        .long   634705910
        .long   3944722327
        .long   2830488734
        .long   3890096458
        .long   3320640540
        .long   2126806581
        .long   1269411821
        .long   3594477359
        .long   1366010173
        .long   3485225620
        .long   2346313785
        .long   4253613162
        .long   2538823642
        .long   2893987423
        .long   2732020347
        .long   2675483945
        .long   397660275
        .long   4212259029
        .long   782679989
        .long   1493007550
        .long   1169073399
        .long   1056000594
        .long   795320551
        .long   4129550763
        .long   1565359979
        .long   2986015100
        .long   2338146798
        .long   2112001188
        .long   1590641102
        .long   3964134231
        .long   3130719959
        .long   1677062904
        .long   381326301
        .long   4224002377
        .long   3181282204
        .long   3633301166
        .long   1966472623
        .long   3354125809
        .long   762652602
        .long   4153037458
        .long   2067597113
        .long   2971635037
        .long   3932945247
        .long   2413284322
        .long   1525305205
        .long   4011107621
        .long   4135194227
        .long   1648302778
        .long   3570923199
        .long   531601349
        .long   3050610411
        .long   3727247947
        .long   3975421159
        .long   3296605556
        .long   2846879102
        .long   1063202699
        .long   1806253526
        .long   3159528599
        .long   3655875023
        .long   2298243816
        .long   1398790909
        .long   2126405399
        .long   3612507052
        .long   2024089902
        .long   3016782751
        .long   301520336
        .long   2797581819
        .long   4252810799
        .long   2930046808
        .long   4048179805
        .long   1738598206
        .long   603040673
        .long   1300196342
        .long   4210654302
        .long   1565126321
        .long   3801392314
        .long   3477196413
        .long   1206081346
        .long   2600392684
        .long   4126341309
        .long   3130252643
        .long   3307817333
        .long   2659425531
        .long   2412162692
        .long   905818072
        .long   3957715323
        .long   1965537991
        .long   2320667370
        .long   1023883767
        .long   529358088
        .long   1811636145
        .long   3620463350
        .long   3931075983
        .long   346367444
        .long   2047767535
        .long   1058716176
        .long   3623272290
        .long   2945959404
        .long   3567184671
        .long   692734889
        .long   4095535070
        .long   2117432353
        .long   2951577284
        .long   1596951513
        .long   2839402047
        .long   1385469779
        .long   3896102844
        .long   4234864706
        .long   1608187272
        .long   3193903027
        .long   1383836798
        .long   2770939558
        .long   3497238392
        .long   4174762117
        .long   3216374545
        .long   2092838759
        .long   2767673597
        .long   1246911821
        .long   2699509489
        .long   4054556938
        .long   2137781795
        .long   4185677519
        .long   1240379898
        .long   2493823642
        .long   1104051682
        .long   3814146581
        .long   4275563591
        .long   4076387742
        .long   2480759797
        .long   692679989
        .long   2208103365
        .long   3333325867
        .long   4256159887
        .long   3857808189
        .long   666552299
        .long   1385359979
        .long   121239434
        .long   2371684438
        .long   4217352479
        .long   3420649082
        .long   1333104599
        .long   2770719959
        .long   242478868
        .long   448401580
        .long   4139737663
        .long   2546330868
        .long   2666209199
        .long   1246472623
        .long   484957737
        .long   896803160
        .long   3984508030
        .space 512, 0x0
        .globl __jsvml_dsin_ha_data_internal_ha
__jsvml_dsin_ha_data_internal_ha:
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2376373521
        .long   3205741868
        .long   0
        .long   1072693248
        .long   4242458500
        .long   1065951697
        .long   2684354560
        .long   1009354638
        .long   3650591271
        .long   3207838971
        .long   0
        .long   1072693248
        .long   4154680958
        .long   1067000149
        .long   0
        .long   3153796451
        .long   69373323
        .long   3209049152
        .long   0
        .long   1072693248
        .long   1972655565
        .long   1067636837
        .long   1073741824
        .long   1009157878
        .long   220529721
        .long   3209935929
        .long   0
        .long   1072693248
        .long   4044216340
        .long   1068048229
        .long   0
        .long   3156808381
        .long   3810305407
        .long   3210663220
        .long   0
        .long   1072693248
        .long   2046304480
        .long   1068459374
        .long   3758096384
        .long   3156402667
        .long   4269262315
        .long   3211145810
        .long   0
        .long   1072693248
        .long   2462980598
        .long   1068684576
        .long   2684354560
        .long   3158941832
        .long   1118107366
        .long   3211670787
        .long   0
        .long   1072693248
        .long   177906713
        .long   1068889808
        .long   3221225472
        .long   3159310370
        .long   393047345
        .long   3212032302
        .long   0
        .long   1072693248
        .long   3156849708
        .long   1069094822
        .long   3221225472
        .long   3158189848
        .long   1227670166
        .long   3212375297
        .long   0
        .long   1072693248
        .long   3349070549
        .long   1069299589
        .long   3758096384
        .long   3156538269
        .long   2402293340
        .long   3212758471
        .long   0
        .long   1072693248
        .long   1453945614
        .long   1069504078
        .long   1610612736
        .long   1011492612
        .long   2592747447
        .long   3213009315
        .long   0
        .long   1072693248
        .long   3470456183
        .long   1069627888
        .long   1073741824
        .long   3160744771
        .long   1037482584
        .long   3213240992
        .long   0
        .long   1072693248
        .long   1854824762
        .long   1069729808
        .long   2684354560
        .long   1011953664
        .long   3451754846
        .long   3213492662
        .long   0
        .long   1072693248
        .long   2972270170
        .long   1069831542
        .long   1073741824
        .long   3159524770
        .long   1672287667
        .long   3213764289
        .long   0
        .long   1072693248
        .long   1149976518
        .long   1069933076
        .long   1610612736
        .long   1013264895
        .long   2346447124
        .long   3213970635
        .long   0
        .long   1072693248
        .long   3729833777
        .long   1070034393
        .long   3758096384
        .long   1013044718
        .long   18115067
        .long   3214126342
        .long   0
        .long   1072693248
        .long   1013556747
        .long   1070135480
        .long   2684354560
        .long   3160567065
        .long   2660899430
        .long   3214291960
        .long   0
        .long   1072693248
        .long   632292433
        .long   1070236320
        .long   3758096384
        .long   3160963333
        .long   1935888103
        .long   3214467466
        .long   0
        .long   1072693248
        .long   1786662755
        .long   1070336898
        .long   2147483648
        .long   3155882307
        .long   288924873
        .long   3214652833
        .long   0
        .long   1072693248
        .long   3846521617
        .long   1070437199
        .long   536870912
        .long   1013406610
        .long   2377770267
        .long   3214848032
        .long   0
        .long   1072693248
        .long   2065784603
        .long   1070537209
        .long   3758096384
        .long   3160681966
        .long   3250111450
        .long   3214993525
        .long   0
        .long   1072693248
        .long   238550446
        .long   1070616504
        .long   2684354560
        .long   3154383565
        .long   2306566604
        .long   3215100913
        .long   0
        .long   1072693248
        .long   1655830135
        .long   1070666194
        .long   0
        .long   1014506690
        .long   1913604284
        .long   3215213171
        .long   0
        .long   1072693248
        .long   1062001470
        .long   1070715716
        .long   0
        .long   3160875220
        .long   2476548698
        .long   3215330282
        .long   0
        .long   1072693248
        .long   785751814
        .long   1070765062
        .long   2684354560
        .long   3161838221
        .long   1261629236
        .long   3215452229
        .long   0
        .long   1072693248
        .long   3269558610
        .long   1070814224
        .long   536870912
        .long   3161705216
        .long   997322465
        .long   3215578993
        .long   0
        .long   1072693248
        .long   2484561409
        .long   1070863196
        .long   1073741824
        .long   1014024572
        .long   1296295961
        .long   3215710555
        .long   0
        .long   1072693248
        .long   1115219818
        .long   1070911970
        .long   0
        .long   1013072242
        .long   2962723252
        .long   3215846895
        .long   0
        .long   1072693248
        .long   1974149085
        .long   1070960538
        .long   3221225472
        .long   3156147648
        .long   4002549419
        .long   3215985292
        .long   0
        .long   1072693248
        .long   3711903686
        .long   1071008893
        .long   1073741824
        .long   1011944747
        .long   1234824733
        .long   3216058210
        .long   0
        .long   1072693248
        .long   821708191
        .long   1071057029
        .long   3758096384
        .long   3161738009
        .long   3996842794
        .long   3216133484
        .long   0
        .long   1072693248
        .long   824036583
        .long   1071104937
        .long   0
        .long   1008313330
        .long   2255197647
        .long   3216211105
        .long   0
        .long   1072693248
        .long   2796464483
        .long   1071152610
        .long   3221225472
        .long   3160878317
        .long   1638976426
        .long   3216291060
        .long   0
        .long   1072693248
        .long   1673302999
        .long   1071200042
        .long   2147483648
        .long   1013351473
        .long   1972483635
        .long   3216373337
        .long   0
        .long   1072693248
        .long   1135144330
        .long   1071247225
        .long   536870912
        .long   1013373569
        .long   1577996576
        .long   3216457924
        .long   0
        .long   1072693248
        .long   728580042
        .long   1071294152
        .long   1610612736
        .long   3162332944
        .long   1578746984
        .long   3216544808
        .long   0
        .long   1072693248
        .long   165764288
        .long   1071340816
        .long   3221225472
        .long   1013298018
        .long   1612193054
        .long   3216633976
        .long   0
        .long   1072693248
        .long   3623952103
        .long   1071387209
        .long   2684354560
        .long   3161985962
        .long   4133449816
        .long   3216725414
        .long   0
        .long   1072693248
        .long   2570175582
        .long   1071433326
        .long   1073741824
        .long   1012303118
        .long   1539072807
        .long   3216819110
        .long   0
        .long   1072693248
        .long   1535566729
        .long   1071479159
        .long   2147483648
        .long   1014321388
        .long   1945768569
        .long   3216915048
        .long   0
        .long   1072693248
        .long   939980347
        .long   1071524701
        .long   0
        .long   1012796809
        .long   3429717432
        .long   3217013214
        .long   0
        .long   1072693248
        .long   1391425750
        .long   1071569945
        .long   3221225472
        .long   3162362103
        .long   1312926554
        .long   3217072381
        .long   0
        .long   1072693248
        .long   3690502842
        .long   1071614884
        .long   3221225472
        .long   3157453855
        .long   1663679671
        .long   3217123670
        .long   0
        .long   1072693248
        .long   2269920951
        .long   1071652092
        .long   3758096384
        .long   3161672245
        .long   3952756490
        .long   3217176050
        .long   0
        .long   1072693248
        .long   2569207790
        .long   1071674247
        .long   1073741824
        .long   3163183617
        .long   69903290
        .long   3217229515
        .long   0
        .long   1072693248
        .long   1297975695
        .long   1071696240
        .long   3221225472
        .long   3163083735
        .long   2678847490
        .long   3217284054
        .long   0
        .long   1072693248
        .long   1411074851
        .long   1071718067
        .long   1610612736
        .long   3163484731
        .long   2272832445
        .long   3217339661
        .long   0
        .long   1072693248
        .long   1675549513
        .long   1071739725
        .long   3221225472
        .long   3163025138
        .long   1539668340
        .long   3217396327
        .long   0
        .long   1072693248
        .long   967731400
        .long   1071761211
        .long   536870912
        .long   1015752157
        .long   2482246777
        .long   3217454043
        .long   0
        .long   1072693248
        .long   2570316633
        .long   1071782521
        .long   1610612736
        .long   3162744753
        .long   2129093113
        .long   3217512801
        .long   0
        .long   1072693248
        .long   1289556703
        .long   1071803653
        .long   536870912
        .long   3162888820
        .long   1129922991
        .long   3217572592
        .long   0
        .long   1072693248
        .long   637203434
        .long   1071824603
        .long   3221225472
        .long   3159443841
        .long   3761365757
        .long   3217633406
        .long   0
        .long   1072693248
        .long   4242632757
        .long   1071845367
        .long   536870912
        .long   3161390278
        .long   752919289
        .long   3217695236
        .long   0
        .long   1072693248
        .long   2969983475
        .long   1071865944
        .long   2684354560
        .long   3162635443
        .long   3652612115
        .long   3217758070
        .long   0
        .long   1072693248
        .long   689983673
        .long   1071886330
        .long   3758096384
        .long   1014906405
        .long   1883353036
        .long   3217821901
        .long   0
        .long   1072693248
        .long   1397053140
        .long   1071906521
        .long   1610612736
        .long   1015245078
        .long   1403757309
        .long   3217886718
        .long   0
        .long   1072693248
        .long   621354454
        .long   1071926515
        .long   536870912
        .long   1013450602
        .long   3239527685
        .long   3217952511
        .long   0
        .long   1072693248
        .long   2610628921
        .long   1071946308
        .long   1610612736
        .long   3162668769
        .long   3489768009
        .long   3218019271
        .long   0
        .long   1072693248
        .long   3152274921
        .long   1071965898
        .long   3758096384
        .long   1013170835
        .long   2371640770
        .long   1070588851
        .long   0
        .long   1071644672
        .long   2460177814
        .long   1071985282
        .long   2147483648
        .long   3162116843
        .long   2309668539
        .long   1070520188
        .long   0
        .long   1071644672
        .long   881650848
        .long   1072004457
        .long   2147483648
        .long   3162986272
        .long   2081278341
        .long   1070450589
        .long   0
        .long   1071644672
        .long   3194290572
        .long   1072023419
        .long   2147483648
        .long   1015048682
        .long   3753901657
        .long   1070380064
        .long   0
        .long   1071644672
        .long   1427975391
        .long   1072042167
        .long   1073741824
        .long   3161608627
        .long   1403691706
        .long   1070308625
        .long   0
        .long   1071644672
        .long   636516413
        .long   1072060697
        .long   3758096384
        .long   1015823716
        .long   2583490354
        .long   1070236281
        .long   0
        .long   1071644672
        .long   1719614413
        .long   1072079006
        .long   0
        .long   3163282740
        .long   2546065654
        .long   1070163044
        .long   0
        .long   1071644672
        .long   1424664751
        .long   1072097092
        .long   3221225472
        .long   3163405315
        .long   1416934267
        .long   1070088925
        .long   0
        .long   1071644672
        .long   938475414
        .long   1072114952
        .long   0
        .long   1015076079
        .long   4187227697
        .long   1070013934
        .long   0
        .long   1071644672
        .long   1594061409
        .long   1072132583
        .long   2147483648
        .long   1014353870
        .long   3526603391
        .long   1069938084
        .long   0
        .long   1071644672
        .long   577417135
        .long   1072149983
        .long   2684354560
        .long   3161519415
        .long   1250776663
        .long   1069861386
        .long   0
        .long   1071644672
        .long   3814135665
        .long   1072167148
        .long   3221225472
        .long   3163146456
        .long   4019165092
        .long   1069783850
        .long   0
        .long   1071644672
        .long   201299822
        .long   1072184078
        .long   3758096384
        .long   3161912352
        .long   1852581091
        .long   1069705490
        .long   0
        .long   1071644672
        .long   263859903
        .long   1072200768
        .long   0
        .long   3162692284
        .long   2485417816
        .long   1069626316
        .long   0
        .long   1071644672
        .long   1796544321
        .long   1072217216
        .long   536870912
        .long   3162686945
        .long   2586490530
        .long   1069545162
        .long   0
        .long   1071644672
        .long   2750387213
        .long   1072233420
        .long   2147483648
        .long   3160858537
        .long   1224902090
        .long   1069383633
        .long   0
        .long   1071644672
        .long   1234330619
        .long   1072249378
        .long   2684354560
        .long   1015272473
        .long   2285031318
        .long   1069220549
        .long   0
        .long   1071644672
        .long   4106737474
        .long   1072265086
        .long   2684354560
        .long   3162592377
        .long   3876290983
        .long   1069055935
        .long   0
        .long   1071644672
        .long   1207142209
        .long   1072280544
        .long   2147483648
        .long   3162705634
        .long   802660176
        .long   1068889817
        .long   0
        .long   1071644672
        .long   4012486548
        .long   1072295747
        .long   2684354560
        .long   1014701564
        .long   1726519029
        .long   1068722218
        .long   0
        .long   1071644672
        .long   2688952194
        .long   1072310695
        .long   0
        .long   3161532603
        .long   3382663878
        .long   1068553164
        .long   0
        .long   1071644672
        .long   453180130
        .long   1072325385
        .long   1073741824
        .long   3162411281
        .long   2598800519
        .long   1068266419
        .long   0
        .long   1071644672
        .long   688824739
        .long   1072339814
        .long   3758096384
        .long   1010431536
        .long   1038988426
        .long   1067922646
        .long   0
        .long   1071644672
        .long   2653017361
        .long   1072353980
        .long   0
        .long   3162800062
        .long   1102361128
        .long   1067576117
        .long   0
        .long   1071644672
        .long   1477771776
        .long   1072367882
        .long   536870912
        .long   3163104986
        .long   2880516564
        .long   1067003401
        .long   0
        .long   1071644672
        .long   1056266002
        .long   1072381517
        .long   2684354560
        .long   3163469496
        .long   1220541286
        .long   1066197478
        .long   0
        .long   1071644672
        .long   1159294526
        .long   1072394883
        .long   536870912
        .long   3163276959
        .long   1279178457
        .long   1064107143
        .long   0
        .long   1071644672
        .long   1731563730
        .long   1072407978
        .long   536870912
        .long   1015540302
        .long   31019393
        .long   3212646089
        .long   0
        .long   1071644672
        .long   2892993834
        .long   1072420800
        .long   536870912
        .long   3163039143
        .long   3506991783
        .long   3214032490
        .long   0
        .long   1071644672
        .long   645027145
        .long   1072433348
        .long   3221225472
        .long   1012602239
        .long   2140183630
        .long   3214756396
        .long   0
        .long   1071644672
        .long   4051746225
        .long   1072445618
        .long   1610612736
        .long   3161907377
        .long   600368053
        .long   3215209541
        .long   0
        .long   1071644672
        .long   881357723
        .long   1072457611
        .long   3221225472
        .long   1013810890
        .long   913431823
        .long   3215576203
        .long   0
        .long   1071644672
        .long   557060597
        .long   1072469323
        .long   0
        .long   3159554934
        .long   1073154251
        .long   3215945137
        .long   0
        .long   1071644672
        .long   4093443164
        .long   1072480752
        .long   536870912
        .long   1014912865
        .long   3631910143
        .long   3216149439
        .long   0
        .long   1071644672
        .long   4097623923
        .long   1072491898
        .long   2684354560
        .long   3160308587
        .long   1380647130
        .long   3216336095
        .long   0
        .long   1071644672
        .long   1950234076
        .long   1072502759
        .long   536870912
        .long   3159425498
        .long   4049357271
        .long   3216523802
        .long   0
        .long   1071644672
        .long   3511535930
        .long   1072513332
        .long   2147483648
        .long   3162828626
        .long   1896722595
        .long   3216712534
        .long   0
        .long   1071644672
        .long   1942611595
        .long   1072523617
        .long   3221225472
        .long   3162410081
        .long   1699043957
        .long   3216902261
        .long   0
        .long   1071644672
        .long   3476196678
        .long   1072533611
        .long   0
        .long   1014257638
        .long   3296146332
        .long   1069485732
        .long   0
        .long   1070596096
        .long   1647878299
        .long   1072543314
        .long   3758096384
        .long   3162169063
        .long   3286832763
        .long   1069294100
        .long   0
        .long   1070596096
        .long   3066872380
        .long   1072552723
        .long   3221225472
        .long   1015561271
        .long   1962712856
        .long   1069101559
        .long   0
        .long   1070596096
        .long   1647164971
        .long   1072561838
        .long   2147483648
        .long   3162838250
        .long   3601629044
        .long   1068908137
        .long   0
        .long   1070596096
        .long   83265253
        .long   1072570657
        .long   1610612736
        .long   3162510535
        .long   165911977
        .long   1068713865
        .long   0
        .long   1070596096
        .long   1261158782
        .long   1072579178
        .long   2147483648
        .long   1015711544
        .long   1348311045
        .long   1068518770
        .long   0
        .long   1070596096
        .long   3964199186
        .long   1072587400
        .long   3758096384
        .long   3160501078
        .long   386665102
        .long   1068146822
        .long   0
        .long   1070596096
        .long   2873938189
        .long   1072595323
        .long   1610612736
        .long   3162311422
        .long   1991047213
        .long   1067753521
        .long   0
        .long   1070596096
        .long   1455828442
        .long   1072602945
        .long   3758096384
        .long   1015505073
        .long   4107121629
        .long   1067267139
        .long   0
        .long   1070596096
        .long   3370060660
        .long   1072610264
        .long   1610612736
        .long   1014787212
        .long   723478390
        .long   1066474790
        .long   0
        .long   1070596096
        .long   3882371427
        .long   1072617280
        .long   2147483648
        .long   1014923975
        .long   2382326656
        .long   1064562179
        .long   0
        .long   1070596096
        .long   2749658050
        .long   1072623992
        .long   1610612736
        .long   1015427338
        .long   2614369450
        .long   3212624080
        .long   0
        .long   1070596096
        .long   4220661975
        .long   1072630398
        .long   3221225472
        .long   1014312058
        .long   3587565429
        .long   3214108032
        .long   0
        .long   1070596096
        .long   4151720666
        .long   1072636498
        .long   0
        .long   3162639544
        .long   2886567144
        .long   3214910444
        .long   0
        .long   1070596096
        .long   2892293513
        .long   1072642291
        .long   2684354560
        .long   3162340271
        .long   1765797566
        .long   3215324543
        .long   0
        .long   1070596096
        .long   990588717
        .long   1072647776
        .long   3758096384
        .long   3162041857
        .long   240740309
        .long   3215727903
        .long   0
        .long   1070596096
        .long   3489094832
        .long   1072652951
        .long   536870912
        .long   1014325783
        .long   2034433221
        .long   1068349287
        .long   0
        .long   1069547520
        .long   2745245815
        .long   1072657817
        .long   3221225472
        .long   1015566129
        .long   304938777
        .long   1067944017
        .long   0
        .long   1069547520
        .long   4201728937
        .long   1072662372
        .long   1610612736
        .long   1014674006
        .long   3299146087
        .long   1067537882
        .long   0
        .long   1069547520
        .long   617154971
        .long   1072666617
        .long   3758096384
        .long   3163433696
        .long   1953696209
        .long   1066811523
        .long   0
        .long   1069547520
        .long   2131272983
        .long   1072670549
        .long   3221225472
        .long   3163005096
        .long   3987691371
        .long   1065590540
        .long   0
        .long   1069547520
        .long   1905645377
        .long   1072674169
        .long   1610612736
        .long   1014087596
        .long   718380601
        .long   3211081269
        .long   0
        .long   1069547520
        .long   1893834707
        .long   1072677476
        .long   1610612736
        .long   1015147654
        .long   3272206680
        .long   3213771729
        .long   0
        .long   1069547520
        .long   4251821691
        .long   1072680469
        .long   2147483648
        .long   3161841007
        .long   257503056
        .long   3214647653
        .long   0
        .long   1069547520
        .long   2748392742
        .long   1072683149
        .long   536870912
        .long   3163061750
        .long   711626851
        .long   1066916672
        .long   0
        .long   1068498944
        .long   4240268041
        .long   1072685514
        .long   536870912
        .long   1013588963
        .long   2523975598
        .long   1065789700
        .long   0
        .long   1068498944
        .long   2902558778
        .long   1072687565
        .long   3221225472
        .long   1013260780
        .long   3237733378
        .long   3209908784
        .long   0
        .long   1068498944
        .long   1703834029
        .long   1072689301
        .long   3758096384
        .long   1015028364
        .long   1003003824
        .long   3213591144
        .long   0
        .long   1068498944
        .long   3816385918
        .long   1072690721
        .long   536870912
        .long   3161216956
        .long   2896342633
        .long   1064747819
        .long   0
        .long   1067450368
        .long   4026464093
        .long   1072691826
        .long   3221225472
        .long   3163075789
        .long   561145352
        .long   3212540584
        .long   0
        .long   1067450368
        .long   1619315981
        .long   1072692616
        .long   1073741824
        .long   3162584397
        .long   210035182
        .long   3211491512
        .long   0
        .long   1066401792
        .long   379294427
        .long   1072693090
        .long   3221225472
        .long   1015405987
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   210035182
        .long   1064007864
        .long   0
        .long   3213885440
        .long   379294427
        .long   1072693090
        .long   3221225472
        .long   1015405987
        .long   561145352
        .long   1065056936
        .long   0
        .long   3214934016
        .long   1619315981
        .long   1072692616
        .long   1073741824
        .long   3162584397
        .long   2896342633
        .long   3212231467
        .long   0
        .long   3214934016
        .long   4026464093
        .long   1072691826
        .long   3221225472
        .long   3163075789
        .long   1003003824
        .long   1066107496
        .long   0
        .long   3215982592
        .long   3816385918
        .long   1072690721
        .long   536870912
        .long   3161216956
        .long   3237733378
        .long   1062425136
        .long   0
        .long   3215982592
        .long   1703834029
        .long   1072689301
        .long   3758096384
        .long   1015028364
        .long   2523975598
        .long   3213273348
        .long   0
        .long   3215982592
        .long   2902558778
        .long   1072687565
        .long   3221225472
        .long   1013260780
        .long   711626851
        .long   3214400320
        .long   0
        .long   3215982592
        .long   4240268041
        .long   1072685514
        .long   536870912
        .long   1013588963
        .long   257503056
        .long   1067164005
        .long   0
        .long   3217031168
        .long   2748392742
        .long   1072683149
        .long   536870912
        .long   3163061750
        .long   3272206680
        .long   1066288081
        .long   0
        .long   3217031168
        .long   4251821691
        .long   1072680469
        .long   2147483648
        .long   3161841007
        .long   718380601
        .long   1063597621
        .long   0
        .long   3217031168
        .long   1893834707
        .long   1072677476
        .long   1610612736
        .long   1015147654
        .long   3987691371
        .long   3213074188
        .long   0
        .long   3217031168
        .long   1905645377
        .long   1072674169
        .long   1610612736
        .long   1014087596
        .long   1953696209
        .long   3214295171
        .long   0
        .long   3217031168
        .long   2131272983
        .long   1072670549
        .long   3221225472
        .long   3163005096
        .long   3299146087
        .long   3215021530
        .long   0
        .long   3217031168
        .long   617154971
        .long   1072666617
        .long   3758096384
        .long   3163433696
        .long   304938777
        .long   3215427665
        .long   0
        .long   3217031168
        .long   4201728937
        .long   1072662372
        .long   1610612736
        .long   1014674006
        .long   2034433221
        .long   3215832935
        .long   0
        .long   3217031168
        .long   2745245815
        .long   1072657817
        .long   3221225472
        .long   1015566129
        .long   240740309
        .long   1068244255
        .long   0
        .long   3218079744
        .long   3489094832
        .long   1072652951
        .long   536870912
        .long   1014325783
        .long   1765797566
        .long   1067840895
        .long   0
        .long   3218079744
        .long   990588717
        .long   1072647776
        .long   3758096384
        .long   3162041857
        .long   2886567144
        .long   1067426796
        .long   0
        .long   3218079744
        .long   2892293513
        .long   1072642291
        .long   2684354560
        .long   3162340271
        .long   3587565429
        .long   1066624384
        .long   0
        .long   3218079744
        .long   4151720666
        .long   1072636498
        .long   0
        .long   3162639544
        .long   2614369450
        .long   1065140432
        .long   0
        .long   3218079744
        .long   4220661975
        .long   1072630398
        .long   3221225472
        .long   1014312058
        .long   2382326656
        .long   3212045827
        .long   0
        .long   3218079744
        .long   2749658050
        .long   1072623992
        .long   1610612736
        .long   1015427338
        .long   723478390
        .long   3213958438
        .long   0
        .long   3218079744
        .long   3882371427
        .long   1072617280
        .long   2147483648
        .long   1014923975
        .long   4107121629
        .long   3214750787
        .long   0
        .long   3218079744
        .long   3370060660
        .long   1072610264
        .long   1610612736
        .long   1014787212
        .long   1991047213
        .long   3215237169
        .long   0
        .long   3218079744
        .long   1455828442
        .long   1072602945
        .long   3758096384
        .long   1015505073
        .long   386665102
        .long   3215630470
        .long   0
        .long   3218079744
        .long   2873938189
        .long   1072595323
        .long   1610612736
        .long   3162311422
        .long   1348311045
        .long   3216002418
        .long   0
        .long   3218079744
        .long   3964199186
        .long   1072587400
        .long   3758096384
        .long   3160501078
        .long   165911977
        .long   3216197513
        .long   0
        .long   3218079744
        .long   1261158782
        .long   1072579178
        .long   2147483648
        .long   1015711544
        .long   3601629044
        .long   3216391785
        .long   0
        .long   3218079744
        .long   83265253
        .long   1072570657
        .long   1610612736
        .long   3162510535
        .long   1962712856
        .long   3216585207
        .long   0
        .long   3218079744
        .long   1647164971
        .long   1072561838
        .long   2147483648
        .long   3162838250
        .long   3286832763
        .long   3216777748
        .long   0
        .long   3218079744
        .long   3066872380
        .long   1072552723
        .long   3221225472
        .long   1015561271
        .long   3296146332
        .long   3216969380
        .long   0
        .long   3218079744
        .long   1647878299
        .long   1072543314
        .long   3758096384
        .long   3162169063
        .long   1699043957
        .long   1069418613
        .long   0
        .long   3219128320
        .long   3476196678
        .long   1072533611
        .long   0
        .long   1014257638
        .long   1896722595
        .long   1069228886
        .long   0
        .long   3219128320
        .long   1942611595
        .long   1072523617
        .long   3221225472
        .long   3162410081
        .long   4049357271
        .long   1069040154
        .long   0
        .long   3219128320
        .long   3511535930
        .long   1072513332
        .long   2147483648
        .long   3162828626
        .long   1380647130
        .long   1068852447
        .long   0
        .long   3219128320
        .long   1950234076
        .long   1072502759
        .long   536870912
        .long   3159425498
        .long   3631910143
        .long   1068665791
        .long   0
        .long   3219128320
        .long   4097623923
        .long   1072491898
        .long   2684354560
        .long   3160308587
        .long   1073154251
        .long   1068461489
        .long   0
        .long   3219128320
        .long   4093443164
        .long   1072480752
        .long   536870912
        .long   1014912865
        .long   913431823
        .long   1068092555
        .long   0
        .long   3219128320
        .long   557060597
        .long   1072469323
        .long   0
        .long   3159554934
        .long   600368053
        .long   1067725893
        .long   0
        .long   3219128320
        .long   881357723
        .long   1072457611
        .long   3221225472
        .long   1013810890
        .long   2140183630
        .long   1067272748
        .long   0
        .long   3219128320
        .long   4051746225
        .long   1072445618
        .long   1610612736
        .long   3161907377
        .long   3506991783
        .long   1066548842
        .long   0
        .long   3219128320
        .long   645027145
        .long   1072433348
        .long   3221225472
        .long   1012602239
        .long   31019393
        .long   1065162441
        .long   0
        .long   3219128320
        .long   2892993834
        .long   1072420800
        .long   536870912
        .long   3163039143
        .long   1279178457
        .long   3211590791
        .long   0
        .long   3219128320
        .long   1731563730
        .long   1072407978
        .long   536870912
        .long   1015540302
        .long   1220541286
        .long   3213681126
        .long   0
        .long   3219128320
        .long   1159294526
        .long   1072394883
        .long   536870912
        .long   3163276959
        .long   2880516564
        .long   3214487049
        .long   0
        .long   3219128320
        .long   1056266002
        .long   1072381517
        .long   2684354560
        .long   3163469496
        .long   1102361128
        .long   3215059765
        .long   0
        .long   3219128320
        .long   1477771776
        .long   1072367882
        .long   536870912
        .long   3163104986
        .long   1038988426
        .long   3215406294
        .long   0
        .long   3219128320
        .long   2653017361
        .long   1072353980
        .long   0
        .long   3162800062
        .long   2598800519
        .long   3215750067
        .long   0
        .long   3219128320
        .long   688824739
        .long   1072339814
        .long   3758096384
        .long   1010431536
        .long   3382663878
        .long   3216036812
        .long   0
        .long   3219128320
        .long   453180130
        .long   1072325385
        .long   1073741824
        .long   3162411281
        .long   1726519029
        .long   3216205866
        .long   0
        .long   3219128320
        .long   2688952194
        .long   1072310695
        .long   0
        .long   3161532603
        .long   802660176
        .long   3216373465
        .long   0
        .long   3219128320
        .long   4012486548
        .long   1072295747
        .long   2684354560
        .long   1014701564
        .long   3876290983
        .long   3216539583
        .long   0
        .long   3219128320
        .long   1207142209
        .long   1072280544
        .long   2147483648
        .long   3162705634
        .long   2285031318
        .long   3216704197
        .long   0
        .long   3219128320
        .long   4106737474
        .long   1072265086
        .long   2684354560
        .long   3162592377
        .long   1224902090
        .long   3216867281
        .long   0
        .long   3219128320
        .long   1234330619
        .long   1072249378
        .long   2684354560
        .long   1015272473
        .long   2586490530
        .long   3217028810
        .long   0
        .long   3219128320
        .long   2750387213
        .long   1072233420
        .long   2147483648
        .long   3160858537
        .long   2485417816
        .long   3217109964
        .long   0
        .long   3219128320
        .long   1796544321
        .long   1072217216
        .long   536870912
        .long   3162686945
        .long   1852581091
        .long   3217189138
        .long   0
        .long   3219128320
        .long   263859903
        .long   1072200768
        .long   0
        .long   3162692284
        .long   4019165092
        .long   3217267498
        .long   0
        .long   3219128320
        .long   201299822
        .long   1072184078
        .long   3758096384
        .long   3161912352
        .long   1250776663
        .long   3217345034
        .long   0
        .long   3219128320
        .long   3814135665
        .long   1072167148
        .long   3221225472
        .long   3163146456
        .long   3526603391
        .long   3217421732
        .long   0
        .long   3219128320
        .long   577417135
        .long   1072149983
        .long   2684354560
        .long   3161519415
        .long   4187227697
        .long   3217497582
        .long   0
        .long   3219128320
        .long   1594061409
        .long   1072132583
        .long   2147483648
        .long   1014353870
        .long   1416934267
        .long   3217572573
        .long   0
        .long   3219128320
        .long   938475414
        .long   1072114952
        .long   0
        .long   1015076079
        .long   2546065654
        .long   3217646692
        .long   0
        .long   3219128320
        .long   1424664751
        .long   1072097092
        .long   3221225472
        .long   3163405315
        .long   2583490354
        .long   3217719929
        .long   0
        .long   3219128320
        .long   1719614413
        .long   1072079006
        .long   0
        .long   3163282740
        .long   1403691706
        .long   3217792273
        .long   0
        .long   3219128320
        .long   636516413
        .long   1072060697
        .long   3758096384
        .long   1015823716
        .long   3753901657
        .long   3217863712
        .long   0
        .long   3219128320
        .long   1427975391
        .long   1072042167
        .long   1073741824
        .long   3161608627
        .long   2081278341
        .long   3217934237
        .long   0
        .long   3219128320
        .long   3194290572
        .long   1072023419
        .long   2147483648
        .long   1015048682
        .long   2309668539
        .long   3218003836
        .long   0
        .long   3219128320
        .long   881650848
        .long   1072004457
        .long   2147483648
        .long   3162986272
        .long   2371640770
        .long   3218072499
        .long   0
        .long   3219128320
        .long   2460177814
        .long   1071985282
        .long   2147483648
        .long   3162116843
        .long   3489768009
        .long   1070535623
        .long   0
        .long   3220176896
        .long   3152274921
        .long   1071965898
        .long   3758096384
        .long   1013170835
        .long   3239527685
        .long   1070468863
        .long   0
        .long   3220176896
        .long   2610628921
        .long   1071946308
        .long   1610612736
        .long   3162668769
        .long   1403757309
        .long   1070403070
        .long   0
        .long   3220176896
        .long   621354454
        .long   1071926515
        .long   536870912
        .long   1013450602
        .long   1883353036
        .long   1070338253
        .long   0
        .long   3220176896
        .long   1397053140
        .long   1071906521
        .long   1610612736
        .long   1015245078
        .long   3652612115
        .long   1070274422
        .long   0
        .long   3220176896
        .long   689983673
        .long   1071886330
        .long   3758096384
        .long   1014906405
        .long   752919289
        .long   1070211588
        .long   0
        .long   3220176896
        .long   2969983475
        .long   1071865944
        .long   2684354560
        .long   3162635443
        .long   3761365757
        .long   1070149758
        .long   0
        .long   3220176896
        .long   4242632757
        .long   1071845367
        .long   536870912
        .long   3161390278
        .long   1129922991
        .long   1070088944
        .long   0
        .long   3220176896
        .long   637203434
        .long   1071824603
        .long   3221225472
        .long   3159443841
        .long   2129093113
        .long   1070029153
        .long   0
        .long   3220176896
        .long   1289556703
        .long   1071803653
        .long   536870912
        .long   3162888820
        .long   2482246777
        .long   1069970395
        .long   0
        .long   3220176896
        .long   2570316633
        .long   1071782521
        .long   1610612736
        .long   3162744753
        .long   1539668340
        .long   1069912679
        .long   0
        .long   3220176896
        .long   967731400
        .long   1071761211
        .long   536870912
        .long   1015752157
        .long   2272832445
        .long   1069856013
        .long   0
        .long   3220176896
        .long   1675549513
        .long   1071739725
        .long   3221225472
        .long   3163025138
        .long   2678847490
        .long   1069800406
        .long   0
        .long   3220176896
        .long   1411074851
        .long   1071718067
        .long   1610612736
        .long   3163484731
        .long   69903290
        .long   1069745867
        .long   0
        .long   3220176896
        .long   1297975695
        .long   1071696240
        .long   3221225472
        .long   3163083735
        .long   3952756490
        .long   1069692402
        .long   0
        .long   3220176896
        .long   2569207790
        .long   1071674247
        .long   1073741824
        .long   3163183617
        .long   1663679671
        .long   1069640022
        .long   0
        .long   3220176896
        .long   2269920951
        .long   1071652092
        .long   3758096384
        .long   3161672245
        .long   1312926554
        .long   1069588733
        .long   0
        .long   3220176896
        .long   3690502842
        .long   1071614884
        .long   3221225472
        .long   3157453855
        .long   3429717432
        .long   1069529566
        .long   0
        .long   3220176896
        .long   1391425750
        .long   1071569945
        .long   3221225472
        .long   3162362103
        .long   1945768569
        .long   1069431400
        .long   0
        .long   3220176896
        .long   939980347
        .long   1071524701
        .long   0
        .long   1012796809
        .long   1539072807
        .long   1069335462
        .long   0
        .long   3220176896
        .long   1535566729
        .long   1071479159
        .long   2147483648
        .long   1014321388
        .long   4133449816
        .long   1069241766
        .long   0
        .long   3220176896
        .long   2570175582
        .long   1071433326
        .long   1073741824
        .long   1012303118
        .long   1612193054
        .long   1069150328
        .long   0
        .long   3220176896
        .long   3623952103
        .long   1071387209
        .long   2684354560
        .long   3161985962
        .long   1578746984
        .long   1069061160
        .long   0
        .long   3220176896
        .long   165764288
        .long   1071340816
        .long   3221225472
        .long   1013298018
        .long   1577996576
        .long   1068974276
        .long   0
        .long   3220176896
        .long   728580042
        .long   1071294152
        .long   1610612736
        .long   3162332944
        .long   1972483635
        .long   1068889689
        .long   0
        .long   3220176896
        .long   1135144330
        .long   1071247225
        .long   536870912
        .long   1013373569
        .long   1638976426
        .long   1068807412
        .long   0
        .long   3220176896
        .long   1673302999
        .long   1071200042
        .long   2147483648
        .long   1013351473
        .long   2255197647
        .long   1068727457
        .long   0
        .long   3220176896
        .long   2796464483
        .long   1071152610
        .long   3221225472
        .long   3160878317
        .long   3996842794
        .long   1068649836
        .long   0
        .long   3220176896
        .long   824036583
        .long   1071104937
        .long   0
        .long   1008313330
        .long   1234824733
        .long   1068574562
        .long   0
        .long   3220176896
        .long   821708191
        .long   1071057029
        .long   3758096384
        .long   3161738009
        .long   4002549419
        .long   1068501644
        .long   0
        .long   3220176896
        .long   3711903686
        .long   1071008893
        .long   1073741824
        .long   1011944747
        .long   2962723252
        .long   1068363247
        .long   0
        .long   3220176896
        .long   1974149085
        .long   1070960538
        .long   3221225472
        .long   3156147648
        .long   1296295961
        .long   1068226907
        .long   0
        .long   3220176896
        .long   1115219818
        .long   1070911970
        .long   0
        .long   1013072242
        .long   997322465
        .long   1068095345
        .long   0
        .long   3220176896
        .long   2484561409
        .long   1070863196
        .long   1073741824
        .long   1014024572
        .long   1261629236
        .long   1067968581
        .long   0
        .long   3220176896
        .long   3269558610
        .long   1070814224
        .long   536870912
        .long   3161705216
        .long   2476548698
        .long   1067846634
        .long   0
        .long   3220176896
        .long   785751814
        .long   1070765062
        .long   2684354560
        .long   3161838221
        .long   1913604284
        .long   1067729523
        .long   0
        .long   3220176896
        .long   1062001470
        .long   1070715716
        .long   0
        .long   3160875220
        .long   2306566604
        .long   1067617265
        .long   0
        .long   3220176896
        .long   1655830135
        .long   1070666194
        .long   0
        .long   1014506690
        .long   3250111450
        .long   1067509877
        .long   0
        .long   3220176896
        .long   238550446
        .long   1070616504
        .long   2684354560
        .long   3154383565
        .long   2377770267
        .long   1067364384
        .long   0
        .long   3220176896
        .long   2065784603
        .long   1070537209
        .long   3758096384
        .long   3160681966
        .long   288924873
        .long   1067169185
        .long   0
        .long   3220176896
        .long   3846521617
        .long   1070437199
        .long   536870912
        .long   1013406610
        .long   1935888103
        .long   1066983818
        .long   0
        .long   3220176896
        .long   1786662755
        .long   1070336898
        .long   2147483648
        .long   3155882307
        .long   2660899430
        .long   1066808312
        .long   0
        .long   3220176896
        .long   632292433
        .long   1070236320
        .long   3758096384
        .long   3160963333
        .long   18115067
        .long   1066642694
        .long   0
        .long   3220176896
        .long   1013556747
        .long   1070135480
        .long   2684354560
        .long   3160567065
        .long   2346447124
        .long   1066486987
        .long   0
        .long   3220176896
        .long   3729833777
        .long   1070034393
        .long   3758096384
        .long   1013044718
        .long   1672287667
        .long   1066280641
        .long   0
        .long   3220176896
        .long   1149976518
        .long   1069933076
        .long   1610612736
        .long   1013264895
        .long   3451754846
        .long   1066009014
        .long   0
        .long   3220176896
        .long   2972270170
        .long   1069831542
        .long   1073741824
        .long   3159524770
        .long   1037482584
        .long   1065757344
        .long   0
        .long   3220176896
        .long   1854824762
        .long   1069729808
        .long   2684354560
        .long   1011953664
        .long   2592747447
        .long   1065525667
        .long   0
        .long   3220176896
        .long   3470456183
        .long   1069627888
        .long   1073741824
        .long   3160744771
        .long   2402293340
        .long   1065274823
        .long   0
        .long   3220176896
        .long   1453945614
        .long   1069504078
        .long   1610612736
        .long   1011492612
        .long   1227670166
        .long   1064891649
        .long   0
        .long   3220176896
        .long   3349070549
        .long   1069299589
        .long   3758096384
        .long   3156538269
        .long   393047345
        .long   1064548654
        .long   0
        .long   3220176896
        .long   3156849708
        .long   1069094822
        .long   3221225472
        .long   3158189848
        .long   1118107366
        .long   1064187139
        .long   0
        .long   3220176896
        .long   177906713
        .long   1068889808
        .long   3221225472
        .long   3159310370
        .long   4269262315
        .long   1063662162
        .long   0
        .long   3220176896
        .long   2462980598
        .long   1068684576
        .long   2684354560
        .long   3158941832
        .long   3810305407
        .long   1063179572
        .long   0
        .long   3220176896
        .long   2046304480
        .long   1068459374
        .long   3758096384
        .long   3156402667
        .long   220529721
        .long   1062452281
        .long   0
        .long   3220176896
        .long   4044216340
        .long   1068048229
        .long   0
        .long   3156808381
        .long   69373323
        .long   1061565504
        .long   0
        .long   3220176896
        .long   1972655565
        .long   1067636837
        .long   1073741824
        .long   1009157878
        .long   3650591271
        .long   1060355323
        .long   0
        .long   3220176896
        .long   4154680958
        .long   1067000149
        .long   0
        .long   3153796451
        .long   2376373521
        .long   1058258220
        .long   0
        .long   3220176896
        .long   4242458500
        .long   1065951697
        .long   2684354560
        .long   1009354638
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2376373521
        .long   1058258220
        .long   0
        .long   3220176896
        .long   4242458500
        .long   3213435345
        .long   2684354560
        .long   3156838286
        .long   3650591271
        .long   1060355323
        .long   0
        .long   3220176896
        .long   4154680958
        .long   3214483797
        .long   0
        .long   1006312803
        .long   69373323
        .long   1061565504
        .long   0
        .long   3220176896
        .long   1972655565
        .long   3215120485
        .long   1073741824
        .long   3156641526
        .long   220529721
        .long   1062452281
        .long   0
        .long   3220176896
        .long   4044216340
        .long   3215531877
        .long   0
        .long   1009324733
        .long   3810305407
        .long   1063179572
        .long   0
        .long   3220176896
        .long   2046304480
        .long   3215943022
        .long   3758096384
        .long   1008919019
        .long   4269262315
        .long   1063662162
        .long   0
        .long   3220176896
        .long   2462980598
        .long   3216168224
        .long   2684354560
        .long   1011458184
        .long   1118107366
        .long   1064187139
        .long   0
        .long   3220176896
        .long   177906713
        .long   3216373456
        .long   3221225472
        .long   1011826722
        .long   393047345
        .long   1064548654
        .long   0
        .long   3220176896
        .long   3156849708
        .long   3216578470
        .long   3221225472
        .long   1010706200
        .long   1227670166
        .long   1064891649
        .long   0
        .long   3220176896
        .long   3349070549
        .long   3216783237
        .long   3758096384
        .long   1009054621
        .long   2402293340
        .long   1065274823
        .long   0
        .long   3220176896
        .long   1453945614
        .long   3216987726
        .long   1610612736
        .long   3158976260
        .long   2592747447
        .long   1065525667
        .long   0
        .long   3220176896
        .long   3470456183
        .long   3217111536
        .long   1073741824
        .long   1013261123
        .long   1037482584
        .long   1065757344
        .long   0
        .long   3220176896
        .long   1854824762
        .long   3217213456
        .long   2684354560
        .long   3159437312
        .long   3451754846
        .long   1066009014
        .long   0
        .long   3220176896
        .long   2972270170
        .long   3217315190
        .long   1073741824
        .long   1012041122
        .long   1672287667
        .long   1066280641
        .long   0
        .long   3220176896
        .long   1149976518
        .long   3217416724
        .long   1610612736
        .long   3160748543
        .long   2346447124
        .long   1066486987
        .long   0
        .long   3220176896
        .long   3729833777
        .long   3217518041
        .long   3758096384
        .long   3160528366
        .long   18115067
        .long   1066642694
        .long   0
        .long   3220176896
        .long   1013556747
        .long   3217619128
        .long   2684354560
        .long   1013083417
        .long   2660899430
        .long   1066808312
        .long   0
        .long   3220176896
        .long   632292433
        .long   3217719968
        .long   3758096384
        .long   1013479685
        .long   1935888103
        .long   1066983818
        .long   0
        .long   3220176896
        .long   1786662755
        .long   3217820546
        .long   2147483648
        .long   1008398659
        .long   288924873
        .long   1067169185
        .long   0
        .long   3220176896
        .long   3846521617
        .long   3217920847
        .long   536870912
        .long   3160890258
        .long   2377770267
        .long   1067364384
        .long   0
        .long   3220176896
        .long   2065784603
        .long   3218020857
        .long   3758096384
        .long   1013198318
        .long   3250111450
        .long   1067509877
        .long   0
        .long   3220176896
        .long   238550446
        .long   3218100152
        .long   2684354560
        .long   1006899917
        .long   2306566604
        .long   1067617265
        .long   0
        .long   3220176896
        .long   1655830135
        .long   3218149842
        .long   0
        .long   3161990338
        .long   1913604284
        .long   1067729523
        .long   0
        .long   3220176896
        .long   1062001470
        .long   3218199364
        .long   0
        .long   1013391572
        .long   2476548698
        .long   1067846634
        .long   0
        .long   3220176896
        .long   785751814
        .long   3218248710
        .long   2684354560
        .long   1014354573
        .long   1261629236
        .long   1067968581
        .long   0
        .long   3220176896
        .long   3269558610
        .long   3218297872
        .long   536870912
        .long   1014221568
        .long   997322465
        .long   1068095345
        .long   0
        .long   3220176896
        .long   2484561409
        .long   3218346844
        .long   1073741824
        .long   3161508220
        .long   1296295961
        .long   1068226907
        .long   0
        .long   3220176896
        .long   1115219818
        .long   3218395618
        .long   0
        .long   3160555890
        .long   2962723252
        .long   1068363247
        .long   0
        .long   3220176896
        .long   1974149085
        .long   3218444186
        .long   3221225472
        .long   1008664000
        .long   4002549419
        .long   1068501644
        .long   0
        .long   3220176896
        .long   3711903686
        .long   3218492541
        .long   1073741824
        .long   3159428395
        .long   1234824733
        .long   1068574562
        .long   0
        .long   3220176896
        .long   821708191
        .long   3218540677
        .long   3758096384
        .long   1014254361
        .long   3996842794
        .long   1068649836
        .long   0
        .long   3220176896
        .long   824036583
        .long   3218588585
        .long   0
        .long   3155796978
        .long   2255197647
        .long   1068727457
        .long   0
        .long   3220176896
        .long   2796464483
        .long   3218636258
        .long   3221225472
        .long   1013394669
        .long   1638976426
        .long   1068807412
        .long   0
        .long   3220176896
        .long   1673302999
        .long   3218683690
        .long   2147483648
        .long   3160835121
        .long   1972483635
        .long   1068889689
        .long   0
        .long   3220176896
        .long   1135144330
        .long   3218730873
        .long   536870912
        .long   3160857217
        .long   1577996576
        .long   1068974276
        .long   0
        .long   3220176896
        .long   728580042
        .long   3218777800
        .long   1610612736
        .long   1014849296
        .long   1578746984
        .long   1069061160
        .long   0
        .long   3220176896
        .long   165764288
        .long   3218824464
        .long   3221225472
        .long   3160781666
        .long   1612193054
        .long   1069150328
        .long   0
        .long   3220176896
        .long   3623952103
        .long   3218870857
        .long   2684354560
        .long   1014502314
        .long   4133449816
        .long   1069241766
        .long   0
        .long   3220176896
        .long   2570175582
        .long   3218916974
        .long   1073741824
        .long   3159786766
        .long   1539072807
        .long   1069335462
        .long   0
        .long   3220176896
        .long   1535566729
        .long   3218962807
        .long   2147483648
        .long   3161805036
        .long   1945768569
        .long   1069431400
        .long   0
        .long   3220176896
        .long   939980347
        .long   3219008349
        .long   0
        .long   3160280457
        .long   3429717432
        .long   1069529566
        .long   0
        .long   3220176896
        .long   1391425750
        .long   3219053593
        .long   3221225472
        .long   1014878455
        .long   1312926554
        .long   1069588733
        .long   0
        .long   3220176896
        .long   3690502842
        .long   3219098532
        .long   3221225472
        .long   1009970207
        .long   1663679671
        .long   1069640022
        .long   0
        .long   3220176896
        .long   2269920951
        .long   3219135740
        .long   3758096384
        .long   1014188597
        .long   3952756490
        .long   1069692402
        .long   0
        .long   3220176896
        .long   2569207790
        .long   3219157895
        .long   1073741824
        .long   1015699969
        .long   69903290
        .long   1069745867
        .long   0
        .long   3220176896
        .long   1297975695
        .long   3219179888
        .long   3221225472
        .long   1015600087
        .long   2678847490
        .long   1069800406
        .long   0
        .long   3220176896
        .long   1411074851
        .long   3219201715
        .long   1610612736
        .long   1016001083
        .long   2272832445
        .long   1069856013
        .long   0
        .long   3220176896
        .long   1675549513
        .long   3219223373
        .long   3221225472
        .long   1015541490
        .long   1539668340
        .long   1069912679
        .long   0
        .long   3220176896
        .long   967731400
        .long   3219244859
        .long   536870912
        .long   3163235805
        .long   2482246777
        .long   1069970395
        .long   0
        .long   3220176896
        .long   2570316633
        .long   3219266169
        .long   1610612736
        .long   1015261105
        .long   2129093113
        .long   1070029153
        .long   0
        .long   3220176896
        .long   1289556703
        .long   3219287301
        .long   536870912
        .long   1015405172
        .long   1129922991
        .long   1070088944
        .long   0
        .long   3220176896
        .long   637203434
        .long   3219308251
        .long   3221225472
        .long   1011960193
        .long   3761365757
        .long   1070149758
        .long   0
        .long   3220176896
        .long   4242632757
        .long   3219329015
        .long   536870912
        .long   1013906630
        .long   752919289
        .long   1070211588
        .long   0
        .long   3220176896
        .long   2969983475
        .long   3219349592
        .long   2684354560
        .long   1015151795
        .long   3652612115
        .long   1070274422
        .long   0
        .long   3220176896
        .long   689983673
        .long   3219369978
        .long   3758096384
        .long   3162390053
        .long   1883353036
        .long   1070338253
        .long   0
        .long   3220176896
        .long   1397053140
        .long   3219390169
        .long   1610612736
        .long   3162728726
        .long   1403757309
        .long   1070403070
        .long   0
        .long   3220176896
        .long   621354454
        .long   3219410163
        .long   536870912
        .long   3160934250
        .long   3239527685
        .long   1070468863
        .long   0
        .long   3220176896
        .long   2610628921
        .long   3219429956
        .long   1610612736
        .long   1015185121
        .long   3489768009
        .long   1070535623
        .long   0
        .long   3220176896
        .long   3152274921
        .long   3219449546
        .long   3758096384
        .long   3160654483
        .long   2371640770
        .long   3218072499
        .long   0
        .long   3219128320
        .long   2460177814
        .long   3219468930
        .long   2147483648
        .long   1014633195
        .long   2309668539
        .long   3218003836
        .long   0
        .long   3219128320
        .long   881650848
        .long   3219488105
        .long   2147483648
        .long   1015502624
        .long   2081278341
        .long   3217934237
        .long   0
        .long   3219128320
        .long   3194290572
        .long   3219507067
        .long   2147483648
        .long   3162532330
        .long   3753901657
        .long   3217863712
        .long   0
        .long   3219128320
        .long   1427975391
        .long   3219525815
        .long   1073741824
        .long   1014124979
        .long   1403691706
        .long   3217792273
        .long   0
        .long   3219128320
        .long   636516413
        .long   3219544345
        .long   3758096384
        .long   3163307364
        .long   2583490354
        .long   3217719929
        .long   0
        .long   3219128320
        .long   1719614413
        .long   3219562654
        .long   0
        .long   1015799092
        .long   2546065654
        .long   3217646692
        .long   0
        .long   3219128320
        .long   1424664751
        .long   3219580740
        .long   3221225472
        .long   1015921667
        .long   1416934267
        .long   3217572573
        .long   0
        .long   3219128320
        .long   938475414
        .long   3219598600
        .long   0
        .long   3162559727
        .long   4187227697
        .long   3217497582
        .long   0
        .long   3219128320
        .long   1594061409
        .long   3219616231
        .long   2147483648
        .long   3161837518
        .long   3526603391
        .long   3217421732
        .long   0
        .long   3219128320
        .long   577417135
        .long   3219633631
        .long   2684354560
        .long   1014035767
        .long   1250776663
        .long   3217345034
        .long   0
        .long   3219128320
        .long   3814135665
        .long   3219650796
        .long   3221225472
        .long   1015662808
        .long   4019165092
        .long   3217267498
        .long   0
        .long   3219128320
        .long   201299822
        .long   3219667726
        .long   3758096384
        .long   1014428704
        .long   1852581091
        .long   3217189138
        .long   0
        .long   3219128320
        .long   263859903
        .long   3219684416
        .long   0
        .long   1015208636
        .long   2485417816
        .long   3217109964
        .long   0
        .long   3219128320
        .long   1796544321
        .long   3219700864
        .long   536870912
        .long   1015203297
        .long   2586490530
        .long   3217028810
        .long   0
        .long   3219128320
        .long   2750387213
        .long   3219717068
        .long   2147483648
        .long   1013374889
        .long   1224902090
        .long   3216867281
        .long   0
        .long   3219128320
        .long   1234330619
        .long   3219733026
        .long   2684354560
        .long   3162756121
        .long   2285031318
        .long   3216704197
        .long   0
        .long   3219128320
        .long   4106737474
        .long   3219748734
        .long   2684354560
        .long   1015108729
        .long   3876290983
        .long   3216539583
        .long   0
        .long   3219128320
        .long   1207142209
        .long   3219764192
        .long   2147483648
        .long   1015221986
        .long   802660176
        .long   3216373465
        .long   0
        .long   3219128320
        .long   4012486548
        .long   3219779395
        .long   2684354560
        .long   3162185212
        .long   1726519029
        .long   3216205866
        .long   0
        .long   3219128320
        .long   2688952194
        .long   3219794343
        .long   0
        .long   1014048955
        .long   3382663878
        .long   3216036812
        .long   0
        .long   3219128320
        .long   453180130
        .long   3219809033
        .long   1073741824
        .long   1014927633
        .long   2598800519
        .long   3215750067
        .long   0
        .long   3219128320
        .long   688824739
        .long   3219823462
        .long   3758096384
        .long   3157915184
        .long   1038988426
        .long   3215406294
        .long   0
        .long   3219128320
        .long   2653017361
        .long   3219837628
        .long   0
        .long   1015316414
        .long   1102361128
        .long   3215059765
        .long   0
        .long   3219128320
        .long   1477771776
        .long   3219851530
        .long   536870912
        .long   1015621338
        .long   2880516564
        .long   3214487049
        .long   0
        .long   3219128320
        .long   1056266002
        .long   3219865165
        .long   2684354560
        .long   1015985848
        .long   1220541286
        .long   3213681126
        .long   0
        .long   3219128320
        .long   1159294526
        .long   3219878531
        .long   536870912
        .long   1015793311
        .long   1279178457
        .long   3211590791
        .long   0
        .long   3219128320
        .long   1731563730
        .long   3219891626
        .long   536870912
        .long   3163023950
        .long   31019393
        .long   1065162441
        .long   0
        .long   3219128320
        .long   2892993834
        .long   3219904448
        .long   536870912
        .long   1015555495
        .long   3506991783
        .long   1066548842
        .long   0
        .long   3219128320
        .long   645027145
        .long   3219916996
        .long   3221225472
        .long   3160085887
        .long   2140183630
        .long   1067272748
        .long   0
        .long   3219128320
        .long   4051746225
        .long   3219929266
        .long   1610612736
        .long   1014423729
        .long   600368053
        .long   1067725893
        .long   0
        .long   3219128320
        .long   881357723
        .long   3219941259
        .long   3221225472
        .long   3161294538
        .long   913431823
        .long   1068092555
        .long   0
        .long   3219128320
        .long   557060597
        .long   3219952971
        .long   0
        .long   1012071286
        .long   1073154251
        .long   1068461489
        .long   0
        .long   3219128320
        .long   4093443164
        .long   3219964400
        .long   536870912
        .long   3162396513
        .long   3631910143
        .long   1068665791
        .long   0
        .long   3219128320
        .long   4097623923
        .long   3219975546
        .long   2684354560
        .long   1012824939
        .long   1380647130
        .long   1068852447
        .long   0
        .long   3219128320
        .long   1950234076
        .long   3219986407
        .long   536870912
        .long   1011941850
        .long   4049357271
        .long   1069040154
        .long   0
        .long   3219128320
        .long   3511535930
        .long   3219996980
        .long   2147483648
        .long   1015344978
        .long   1896722595
        .long   1069228886
        .long   0
        .long   3219128320
        .long   1942611595
        .long   3220007265
        .long   3221225472
        .long   1014926433
        .long   1699043957
        .long   1069418613
        .long   0
        .long   3219128320
        .long   3476196678
        .long   3220017259
        .long   0
        .long   3161741286
        .long   3296146332
        .long   3216969380
        .long   0
        .long   3218079744
        .long   1647878299
        .long   3220026962
        .long   3758096384
        .long   1014685415
        .long   3286832763
        .long   3216777748
        .long   0
        .long   3218079744
        .long   3066872380
        .long   3220036371
        .long   3221225472
        .long   3163044919
        .long   1962712856
        .long   3216585207
        .long   0
        .long   3218079744
        .long   1647164971
        .long   3220045486
        .long   2147483648
        .long   1015354602
        .long   3601629044
        .long   3216391785
        .long   0
        .long   3218079744
        .long   83265253
        .long   3220054305
        .long   1610612736
        .long   1015026887
        .long   165911977
        .long   3216197513
        .long   0
        .long   3218079744
        .long   1261158782
        .long   3220062826
        .long   2147483648
        .long   3163195192
        .long   1348311045
        .long   3216002418
        .long   0
        .long   3218079744
        .long   3964199186
        .long   3220071048
        .long   3758096384
        .long   1013017430
        .long   386665102
        .long   3215630470
        .long   0
        .long   3218079744
        .long   2873938189
        .long   3220078971
        .long   1610612736
        .long   1014827774
        .long   1991047213
        .long   3215237169
        .long   0
        .long   3218079744
        .long   1455828442
        .long   3220086593
        .long   3758096384
        .long   3162988721
        .long   4107121629
        .long   3214750787
        .long   0
        .long   3218079744
        .long   3370060660
        .long   3220093912
        .long   1610612736
        .long   3162270860
        .long   723478390
        .long   3213958438
        .long   0
        .long   3218079744
        .long   3882371427
        .long   3220100928
        .long   2147483648
        .long   3162407623
        .long   2382326656
        .long   3212045827
        .long   0
        .long   3218079744
        .long   2749658050
        .long   3220107640
        .long   1610612736
        .long   3162910986
        .long   2614369450
        .long   1065140432
        .long   0
        .long   3218079744
        .long   4220661975
        .long   3220114046
        .long   3221225472
        .long   3161795706
        .long   3587565429
        .long   1066624384
        .long   0
        .long   3218079744
        .long   4151720666
        .long   3220120146
        .long   0
        .long   1015155896
        .long   2886567144
        .long   1067426796
        .long   0
        .long   3218079744
        .long   2892293513
        .long   3220125939
        .long   2684354560
        .long   1014856623
        .long   1765797566
        .long   1067840895
        .long   0
        .long   3218079744
        .long   990588717
        .long   3220131424
        .long   3758096384
        .long   1014558209
        .long   240740309
        .long   1068244255
        .long   0
        .long   3218079744
        .long   3489094832
        .long   3220136599
        .long   536870912
        .long   3161809431
        .long   2034433221
        .long   3215832935
        .long   0
        .long   3217031168
        .long   2745245815
        .long   3220141465
        .long   3221225472
        .long   3163049777
        .long   304938777
        .long   3215427665
        .long   0
        .long   3217031168
        .long   4201728937
        .long   3220146020
        .long   1610612736
        .long   3162157654
        .long   3299146087
        .long   3215021530
        .long   0
        .long   3217031168
        .long   617154971
        .long   3220150265
        .long   3758096384
        .long   1015950048
        .long   1953696209
        .long   3214295171
        .long   0
        .long   3217031168
        .long   2131272983
        .long   3220154197
        .long   3221225472
        .long   1015521448
        .long   3987691371
        .long   3213074188
        .long   0
        .long   3217031168
        .long   1905645377
        .long   3220157817
        .long   1610612736
        .long   3161571244
        .long   718380601
        .long   1063597621
        .long   0
        .long   3217031168
        .long   1893834707
        .long   3220161124
        .long   1610612736
        .long   3162631302
        .long   3272206680
        .long   1066288081
        .long   0
        .long   3217031168
        .long   4251821691
        .long   3220164117
        .long   2147483648
        .long   1014357359
        .long   257503056
        .long   1067164005
        .long   0
        .long   3217031168
        .long   2748392742
        .long   3220166797
        .long   536870912
        .long   1015578102
        .long   711626851
        .long   3214400320
        .long   0
        .long   3215982592
        .long   4240268041
        .long   3220169162
        .long   536870912
        .long   3161072611
        .long   2523975598
        .long   3213273348
        .long   0
        .long   3215982592
        .long   2902558778
        .long   3220171213
        .long   3221225472
        .long   3160744428
        .long   3237733378
        .long   1062425136
        .long   0
        .long   3215982592
        .long   1703834029
        .long   3220172949
        .long   3758096384
        .long   3162512012
        .long   1003003824
        .long   1066107496
        .long   0
        .long   3215982592
        .long   3816385918
        .long   3220174369
        .long   536870912
        .long   1013733308
        .long   2896342633
        .long   3212231467
        .long   0
        .long   3214934016
        .long   4026464093
        .long   3220175474
        .long   3221225472
        .long   1015592141
        .long   561145352
        .long   1065056936
        .long   0
        .long   3214934016
        .long   1619315981
        .long   3220176264
        .long   1073741824
        .long   1015100749
        .long   210035182
        .long   1064007864
        .long   0
        .long   3213885440
        .long   379294427
        .long   3220176738
        .long   3221225472
        .long   3162889635
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   210035182
        .long   3211491512
        .long   0
        .long   1066401792
        .long   379294427
        .long   3220176738
        .long   3221225472
        .long   3162889635
        .long   561145352
        .long   3212540584
        .long   0
        .long   1067450368
        .long   1619315981
        .long   3220176264
        .long   1073741824
        .long   1015100749
        .long   2896342633
        .long   1064747819
        .long   0
        .long   1067450368
        .long   4026464093
        .long   3220175474
        .long   3221225472
        .long   1015592141
        .long   1003003824
        .long   3213591144
        .long   0
        .long   1068498944
        .long   3816385918
        .long   3220174369
        .long   536870912
        .long   1013733308
        .long   3237733378
        .long   3209908784
        .long   0
        .long   1068498944
        .long   1703834029
        .long   3220172949
        .long   3758096384
        .long   3162512012
        .long   2523975598
        .long   1065789700
        .long   0
        .long   1068498944
        .long   2902558778
        .long   3220171213
        .long   3221225472
        .long   3160744428
        .long   711626851
        .long   1066916672
        .long   0
        .long   1068498944
        .long   4240268041
        .long   3220169162
        .long   536870912
        .long   3161072611
        .long   257503056
        .long   3214647653
        .long   0
        .long   1069547520
        .long   2748392742
        .long   3220166797
        .long   536870912
        .long   1015578102
        .long   3272206680
        .long   3213771729
        .long   0
        .long   1069547520
        .long   4251821691
        .long   3220164117
        .long   2147483648
        .long   1014357359
        .long   718380601
        .long   3211081269
        .long   0
        .long   1069547520
        .long   1893834707
        .long   3220161124
        .long   1610612736
        .long   3162631302
        .long   3987691371
        .long   1065590540
        .long   0
        .long   1069547520
        .long   1905645377
        .long   3220157817
        .long   1610612736
        .long   3161571244
        .long   1953696209
        .long   1066811523
        .long   0
        .long   1069547520
        .long   2131272983
        .long   3220154197
        .long   3221225472
        .long   1015521448
        .long   3299146087
        .long   1067537882
        .long   0
        .long   1069547520
        .long   617154971
        .long   3220150265
        .long   3758096384
        .long   1015950048
        .long   304938777
        .long   1067944017
        .long   0
        .long   1069547520
        .long   4201728937
        .long   3220146020
        .long   1610612736
        .long   3162157654
        .long   2034433221
        .long   1068349287
        .long   0
        .long   1069547520
        .long   2745245815
        .long   3220141465
        .long   3221225472
        .long   3163049777
        .long   240740309
        .long   3215727903
        .long   0
        .long   1070596096
        .long   3489094832
        .long   3220136599
        .long   536870912
        .long   3161809431
        .long   1765797566
        .long   3215324543
        .long   0
        .long   1070596096
        .long   990588717
        .long   3220131424
        .long   3758096384
        .long   1014558209
        .long   2886567144
        .long   3214910444
        .long   0
        .long   1070596096
        .long   2892293513
        .long   3220125939
        .long   2684354560
        .long   1014856623
        .long   3587565429
        .long   3214108032
        .long   0
        .long   1070596096
        .long   4151720666
        .long   3220120146
        .long   0
        .long   1015155896
        .long   2614369450
        .long   3212624080
        .long   0
        .long   1070596096
        .long   4220661975
        .long   3220114046
        .long   3221225472
        .long   3161795706
        .long   2382326656
        .long   1064562179
        .long   0
        .long   1070596096
        .long   2749658050
        .long   3220107640
        .long   1610612736
        .long   3162910986
        .long   723478390
        .long   1066474790
        .long   0
        .long   1070596096
        .long   3882371427
        .long   3220100928
        .long   2147483648
        .long   3162407623
        .long   4107121629
        .long   1067267139
        .long   0
        .long   1070596096
        .long   3370060660
        .long   3220093912
        .long   1610612736
        .long   3162270860
        .long   1991047213
        .long   1067753521
        .long   0
        .long   1070596096
        .long   1455828442
        .long   3220086593
        .long   3758096384
        .long   3162988721
        .long   386665102
        .long   1068146822
        .long   0
        .long   1070596096
        .long   2873938189
        .long   3220078971
        .long   1610612736
        .long   1014827774
        .long   1348311045
        .long   1068518770
        .long   0
        .long   1070596096
        .long   3964199186
        .long   3220071048
        .long   3758096384
        .long   1013017430
        .long   165911977
        .long   1068713865
        .long   0
        .long   1070596096
        .long   1261158782
        .long   3220062826
        .long   2147483648
        .long   3163195192
        .long   3601629044
        .long   1068908137
        .long   0
        .long   1070596096
        .long   83265253
        .long   3220054305
        .long   1610612736
        .long   1015026887
        .long   1962712856
        .long   1069101559
        .long   0
        .long   1070596096
        .long   1647164971
        .long   3220045486
        .long   2147483648
        .long   1015354602
        .long   3286832763
        .long   1069294100
        .long   0
        .long   1070596096
        .long   3066872380
        .long   3220036371
        .long   3221225472
        .long   3163044919
        .long   3296146332
        .long   1069485732
        .long   0
        .long   1070596096
        .long   1647878299
        .long   3220026962
        .long   3758096384
        .long   1014685415
        .long   1699043957
        .long   3216902261
        .long   0
        .long   1071644672
        .long   3476196678
        .long   3220017259
        .long   0
        .long   3161741286
        .long   1896722595
        .long   3216712534
        .long   0
        .long   1071644672
        .long   1942611595
        .long   3220007265
        .long   3221225472
        .long   1014926433
        .long   4049357271
        .long   3216523802
        .long   0
        .long   1071644672
        .long   3511535930
        .long   3219996980
        .long   2147483648
        .long   1015344978
        .long   1380647130
        .long   3216336095
        .long   0
        .long   1071644672
        .long   1950234076
        .long   3219986407
        .long   536870912
        .long   1011941850
        .long   3631910143
        .long   3216149439
        .long   0
        .long   1071644672
        .long   4097623923
        .long   3219975546
        .long   2684354560
        .long   1012824939
        .long   1073154251
        .long   3215945137
        .long   0
        .long   1071644672
        .long   4093443164
        .long   3219964400
        .long   536870912
        .long   3162396513
        .long   913431823
        .long   3215576203
        .long   0
        .long   1071644672
        .long   557060597
        .long   3219952971
        .long   0
        .long   1012071286
        .long   600368053
        .long   3215209541
        .long   0
        .long   1071644672
        .long   881357723
        .long   3219941259
        .long   3221225472
        .long   3161294538
        .long   2140183630
        .long   3214756396
        .long   0
        .long   1071644672
        .long   4051746225
        .long   3219929266
        .long   1610612736
        .long   1014423729
        .long   3506991783
        .long   3214032490
        .long   0
        .long   1071644672
        .long   645027145
        .long   3219916996
        .long   3221225472
        .long   3160085887
        .long   31019393
        .long   3212646089
        .long   0
        .long   1071644672
        .long   2892993834
        .long   3219904448
        .long   536870912
        .long   1015555495
        .long   1279178457
        .long   1064107143
        .long   0
        .long   1071644672
        .long   1731563730
        .long   3219891626
        .long   536870912
        .long   3163023950
        .long   1220541286
        .long   1066197478
        .long   0
        .long   1071644672
        .long   1159294526
        .long   3219878531
        .long   536870912
        .long   1015793311
        .long   2880516564
        .long   1067003401
        .long   0
        .long   1071644672
        .long   1056266002
        .long   3219865165
        .long   2684354560
        .long   1015985848
        .long   1102361128
        .long   1067576117
        .long   0
        .long   1071644672
        .long   1477771776
        .long   3219851530
        .long   536870912
        .long   1015621338
        .long   1038988426
        .long   1067922646
        .long   0
        .long   1071644672
        .long   2653017361
        .long   3219837628
        .long   0
        .long   1015316414
        .long   2598800519
        .long   1068266419
        .long   0
        .long   1071644672
        .long   688824739
        .long   3219823462
        .long   3758096384
        .long   3157915184
        .long   3382663878
        .long   1068553164
        .long   0
        .long   1071644672
        .long   453180130
        .long   3219809033
        .long   1073741824
        .long   1014927633
        .long   1726519029
        .long   1068722218
        .long   0
        .long   1071644672
        .long   2688952194
        .long   3219794343
        .long   0
        .long   1014048955
        .long   802660176
        .long   1068889817
        .long   0
        .long   1071644672
        .long   4012486548
        .long   3219779395
        .long   2684354560
        .long   3162185212
        .long   3876290983
        .long   1069055935
        .long   0
        .long   1071644672
        .long   1207142209
        .long   3219764192
        .long   2147483648
        .long   1015221986
        .long   2285031318
        .long   1069220549
        .long   0
        .long   1071644672
        .long   4106737474
        .long   3219748734
        .long   2684354560
        .long   1015108729
        .long   1224902090
        .long   1069383633
        .long   0
        .long   1071644672
        .long   1234330619
        .long   3219733026
        .long   2684354560
        .long   3162756121
        .long   2586490530
        .long   1069545162
        .long   0
        .long   1071644672
        .long   2750387213
        .long   3219717068
        .long   2147483648
        .long   1013374889
        .long   2485417816
        .long   1069626316
        .long   0
        .long   1071644672
        .long   1796544321
        .long   3219700864
        .long   536870912
        .long   1015203297
        .long   1852581091
        .long   1069705490
        .long   0
        .long   1071644672
        .long   263859903
        .long   3219684416
        .long   0
        .long   1015208636
        .long   4019165092
        .long   1069783850
        .long   0
        .long   1071644672
        .long   201299822
        .long   3219667726
        .long   3758096384
        .long   1014428704
        .long   1250776663
        .long   1069861386
        .long   0
        .long   1071644672
        .long   3814135665
        .long   3219650796
        .long   3221225472
        .long   1015662808
        .long   3526603391
        .long   1069938084
        .long   0
        .long   1071644672
        .long   577417135
        .long   3219633631
        .long   2684354560
        .long   1014035767
        .long   4187227697
        .long   1070013934
        .long   0
        .long   1071644672
        .long   1594061409
        .long   3219616231
        .long   2147483648
        .long   3161837518
        .long   1416934267
        .long   1070088925
        .long   0
        .long   1071644672
        .long   938475414
        .long   3219598600
        .long   0
        .long   3162559727
        .long   2546065654
        .long   1070163044
        .long   0
        .long   1071644672
        .long   1424664751
        .long   3219580740
        .long   3221225472
        .long   1015921667
        .long   2583490354
        .long   1070236281
        .long   0
        .long   1071644672
        .long   1719614413
        .long   3219562654
        .long   0
        .long   1015799092
        .long   1403691706
        .long   1070308625
        .long   0
        .long   1071644672
        .long   636516413
        .long   3219544345
        .long   3758096384
        .long   3163307364
        .long   3753901657
        .long   1070380064
        .long   0
        .long   1071644672
        .long   1427975391
        .long   3219525815
        .long   1073741824
        .long   1014124979
        .long   2081278341
        .long   1070450589
        .long   0
        .long   1071644672
        .long   3194290572
        .long   3219507067
        .long   2147483648
        .long   3162532330
        .long   2309668539
        .long   1070520188
        .long   0
        .long   1071644672
        .long   881650848
        .long   3219488105
        .long   2147483648
        .long   1015502624
        .long   2371640770
        .long   1070588851
        .long   0
        .long   1071644672
        .long   2460177814
        .long   3219468930
        .long   2147483648
        .long   1014633195
        .long   3489768009
        .long   3218019271
        .long   0
        .long   1072693248
        .long   3152274921
        .long   3219449546
        .long   3758096384
        .long   3160654483
        .long   3239527685
        .long   3217952511
        .long   0
        .long   1072693248
        .long   2610628921
        .long   3219429956
        .long   1610612736
        .long   1015185121
        .long   1403757309
        .long   3217886718
        .long   0
        .long   1072693248
        .long   621354454
        .long   3219410163
        .long   536870912
        .long   3160934250
        .long   1883353036
        .long   3217821901
        .long   0
        .long   1072693248
        .long   1397053140
        .long   3219390169
        .long   1610612736
        .long   3162728726
        .long   3652612115
        .long   3217758070
        .long   0
        .long   1072693248
        .long   689983673
        .long   3219369978
        .long   3758096384
        .long   3162390053
        .long   752919289
        .long   3217695236
        .long   0
        .long   1072693248
        .long   2969983475
        .long   3219349592
        .long   2684354560
        .long   1015151795
        .long   3761365757
        .long   3217633406
        .long   0
        .long   1072693248
        .long   4242632757
        .long   3219329015
        .long   536870912
        .long   1013906630
        .long   1129922991
        .long   3217572592
        .long   0
        .long   1072693248
        .long   637203434
        .long   3219308251
        .long   3221225472
        .long   1011960193
        .long   2129093113
        .long   3217512801
        .long   0
        .long   1072693248
        .long   1289556703
        .long   3219287301
        .long   536870912
        .long   1015405172
        .long   2482246777
        .long   3217454043
        .long   0
        .long   1072693248
        .long   2570316633
        .long   3219266169
        .long   1610612736
        .long   1015261105
        .long   1539668340
        .long   3217396327
        .long   0
        .long   1072693248
        .long   967731400
        .long   3219244859
        .long   536870912
        .long   3163235805
        .long   2272832445
        .long   3217339661
        .long   0
        .long   1072693248
        .long   1675549513
        .long   3219223373
        .long   3221225472
        .long   1015541490
        .long   2678847490
        .long   3217284054
        .long   0
        .long   1072693248
        .long   1411074851
        .long   3219201715
        .long   1610612736
        .long   1016001083
        .long   69903290
        .long   3217229515
        .long   0
        .long   1072693248
        .long   1297975695
        .long   3219179888
        .long   3221225472
        .long   1015600087
        .long   3952756490
        .long   3217176050
        .long   0
        .long   1072693248
        .long   2569207790
        .long   3219157895
        .long   1073741824
        .long   1015699969
        .long   1663679671
        .long   3217123670
        .long   0
        .long   1072693248
        .long   2269920951
        .long   3219135740
        .long   3758096384
        .long   1014188597
        .long   1312926554
        .long   3217072381
        .long   0
        .long   1072693248
        .long   3690502842
        .long   3219098532
        .long   3221225472
        .long   1009970207
        .long   3429717432
        .long   3217013214
        .long   0
        .long   1072693248
        .long   1391425750
        .long   3219053593
        .long   3221225472
        .long   1014878455
        .long   1945768569
        .long   3216915048
        .long   0
        .long   1072693248
        .long   939980347
        .long   3219008349
        .long   0
        .long   3160280457
        .long   1539072807
        .long   3216819110
        .long   0
        .long   1072693248
        .long   1535566729
        .long   3218962807
        .long   2147483648
        .long   3161805036
        .long   4133449816
        .long   3216725414
        .long   0
        .long   1072693248
        .long   2570175582
        .long   3218916974
        .long   1073741824
        .long   3159786766
        .long   1612193054
        .long   3216633976
        .long   0
        .long   1072693248
        .long   3623952103
        .long   3218870857
        .long   2684354560
        .long   1014502314
        .long   1578746984
        .long   3216544808
        .long   0
        .long   1072693248
        .long   165764288
        .long   3218824464
        .long   3221225472
        .long   3160781666
        .long   1577996576
        .long   3216457924
        .long   0
        .long   1072693248
        .long   728580042
        .long   3218777800
        .long   1610612736
        .long   1014849296
        .long   1972483635
        .long   3216373337
        .long   0
        .long   1072693248
        .long   1135144330
        .long   3218730873
        .long   536870912
        .long   3160857217
        .long   1638976426
        .long   3216291060
        .long   0
        .long   1072693248
        .long   1673302999
        .long   3218683690
        .long   2147483648
        .long   3160835121
        .long   2255197647
        .long   3216211105
        .long   0
        .long   1072693248
        .long   2796464483
        .long   3218636258
        .long   3221225472
        .long   1013394669
        .long   3996842794
        .long   3216133484
        .long   0
        .long   1072693248
        .long   824036583
        .long   3218588585
        .long   0
        .long   3155796978
        .long   1234824733
        .long   3216058210
        .long   0
        .long   1072693248
        .long   821708191
        .long   3218540677
        .long   3758096384
        .long   1014254361
        .long   4002549419
        .long   3215985292
        .long   0
        .long   1072693248
        .long   3711903686
        .long   3218492541
        .long   1073741824
        .long   3159428395
        .long   2962723252
        .long   3215846895
        .long   0
        .long   1072693248
        .long   1974149085
        .long   3218444186
        .long   3221225472
        .long   1008664000
        .long   1296295961
        .long   3215710555
        .long   0
        .long   1072693248
        .long   1115219818
        .long   3218395618
        .long   0
        .long   3160555890
        .long   997322465
        .long   3215578993
        .long   0
        .long   1072693248
        .long   2484561409
        .long   3218346844
        .long   1073741824
        .long   3161508220
        .long   1261629236
        .long   3215452229
        .long   0
        .long   1072693248
        .long   3269558610
        .long   3218297872
        .long   536870912
        .long   1014221568
        .long   2476548698
        .long   3215330282
        .long   0
        .long   1072693248
        .long   785751814
        .long   3218248710
        .long   2684354560
        .long   1014354573
        .long   1913604284
        .long   3215213171
        .long   0
        .long   1072693248
        .long   1062001470
        .long   3218199364
        .long   0
        .long   1013391572
        .long   2306566604
        .long   3215100913
        .long   0
        .long   1072693248
        .long   1655830135
        .long   3218149842
        .long   0
        .long   3161990338
        .long   3250111450
        .long   3214993525
        .long   0
        .long   1072693248
        .long   238550446
        .long   3218100152
        .long   2684354560
        .long   1006899917
        .long   2377770267
        .long   3214848032
        .long   0
        .long   1072693248
        .long   2065784603
        .long   3218020857
        .long   3758096384
        .long   1013198318
        .long   288924873
        .long   3214652833
        .long   0
        .long   1072693248
        .long   3846521617
        .long   3217920847
        .long   536870912
        .long   3160890258
        .long   1935888103
        .long   3214467466
        .long   0
        .long   1072693248
        .long   1786662755
        .long   3217820546
        .long   2147483648
        .long   1008398659
        .long   2660899430
        .long   3214291960
        .long   0
        .long   1072693248
        .long   632292433
        .long   3217719968
        .long   3758096384
        .long   1013479685
        .long   18115067
        .long   3214126342
        .long   0
        .long   1072693248
        .long   1013556747
        .long   3217619128
        .long   2684354560
        .long   1013083417
        .long   2346447124
        .long   3213970635
        .long   0
        .long   1072693248
        .long   3729833777
        .long   3217518041
        .long   3758096384
        .long   3160528366
        .long   1672287667
        .long   3213764289
        .long   0
        .long   1072693248
        .long   1149976518
        .long   3217416724
        .long   1610612736
        .long   3160748543
        .long   3451754846
        .long   3213492662
        .long   0
        .long   1072693248
        .long   2972270170
        .long   3217315190
        .long   1073741824
        .long   1012041122
        .long   1037482584
        .long   3213240992
        .long   0
        .long   1072693248
        .long   1854824762
        .long   3217213456
        .long   2684354560
        .long   3159437312
        .long   2592747447
        .long   3213009315
        .long   0
        .long   1072693248
        .long   3470456183
        .long   3217111536
        .long   1073741824
        .long   1013261123
        .long   2402293340
        .long   3212758471
        .long   0
        .long   1072693248
        .long   1453945614
        .long   3216987726
        .long   1610612736
        .long   3158976260
        .long   1227670166
        .long   3212375297
        .long   0
        .long   1072693248
        .long   3349070549
        .long   3216783237
        .long   3758096384
        .long   1009054621
        .long   393047345
        .long   3212032302
        .long   0
        .long   1072693248
        .long   3156849708
        .long   3216578470
        .long   3221225472
        .long   1010706200
        .long   1118107366
        .long   3211670787
        .long   0
        .long   1072693248
        .long   177906713
        .long   3216373456
        .long   3221225472
        .long   1011826722
        .long   4269262315
        .long   3211145810
        .long   0
        .long   1072693248
        .long   2462980598
        .long   3216168224
        .long   2684354560
        .long   1011458184
        .long   3810305407
        .long   3210663220
        .long   0
        .long   1072693248
        .long   2046304480
        .long   3215943022
        .long   3758096384
        .long   1008919019
        .long   220529721
        .long   3209935929
        .long   0
        .long   1072693248
        .long   4044216340
        .long   3215531877
        .long   0
        .long   1009324733
        .long   69373323
        .long   3209049152
        .long   0
        .long   1072693248
        .long   1972655565
        .long   3215120485
        .long   1073741824
        .long   3156641526
        .long   3650591271
        .long   3207838971
        .long   0
        .long   1072693248
        .long   4154680958
        .long   3214483797
        .long   0
        .long   1006312803
        .long   2376373521
        .long   3205741868
        .long   0
        .long   1072693248
        .long   4242458500
        .long   3213435345
        .long   2684354560
        .long   3156838286
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
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
        .long   239972940
        .long   1089470464
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
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   1841940611
        .long   1079271216
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   511
        .long   0
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   1413480448
        .long   1065951739
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   442499072
        .long   1029747809
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   771977331
        .long   993204618
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   1431651400
        .long   3217380693
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   2880656668
        .long   1065423119
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   0
        .long   3219128320
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   1431653583
        .long   1067799893
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .long   2976101079
        .long   3210133866
        .globl __jsvml_dsin_ha_data_internal
__jsvml_dsin_ha_data_internal:
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
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   0
        .long   1097859072
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   1841940611
        .long   1075076912
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   0
        .long   1127743488
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   1413754136
        .long   1070146043
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   855638016
        .long   1013032486
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
        .long   3773204808
        .long   979655686
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
        .long   0
        .long   0
        .long   1013556747
        .long   1070135480
        .long   2796464483
        .long   1071152610
        .long   967731400
        .long   1071761211
        .long   1719614413
        .long   1072079006
        .long   688824739
        .long   1072339814
        .long   3476196678
        .long   1072533611
        .long   3489094832
        .long   1072652951
        .long   0
        .long   1072693248
        .long   3489094832
        .long   1072652951
        .long   3476196678
        .long   1072533611
        .long   688824739
        .long   1072339814
        .long   1719614413
        .long   1072079006
        .long   967731400
        .long   1071761211
        .long   2796464483
        .long   1071152610
        .long   1013556747
        .long   1070135480
        .long   0
        .long   1072693248
        .long   3489094832
        .long   1072652951
        .long   3476196678
        .long   1072533611
        .long   688824739
        .long   1072339814
        .long   1719614413
        .long   1072079006
        .long   967731400
        .long   1071761211
        .long   2796464483
        .long   1071152610
        .long   1013556747
        .long   1070135480
        .long   0
        .long   0
        .long   1013556747
        .long   3217619128
        .long   2796464483
        .long   3218636258
        .long   967731400
        .long   3219244859
        .long   1719614413
        .long   3219562654
        .long   688824739
        .long   3219823462
        .long   3476196678
        .long   3220017259
        .long   3489094832
        .long   3220136599
        .long   0
        .long   0
        .long   3160567065
        .long   1014325783
        .long   3160878317
        .long   1014257638
        .long   1015752157
        .long   1010431536
        .long   3163282740
        .long   3163282740
        .long   1010431536
        .long   1015752157
        .long   1014257638
        .long   3160878317
        .long   1014325783
        .long   3160567065
        .long   0
        .long   0
        .long   1014325783
        .long   1013083417
        .long   1014257638
        .long   1013394669
        .long   1010431536
        .long   3163235805
        .long   3163282740
        .long   1015799092
        .long   1015752157
        .long   3157915184
        .long   3160878317
        .long   3161741286
        .long   3160567065
        .long   3161809431
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
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   16
        .long   0
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   3654764988
        .long   1056571351
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   123565048
        .long   3210133868
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   3525997533
        .long   1053236375
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   248520414
        .long   3207201184
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   1431627990
        .long   1067799893
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   286321053
        .long   1065423121
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   4294967292
        .long   3219128319
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
        .long   1431655765
        .long   3217380693
_2il0floatpacket_54:
        .long   0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000
_2il0floatpacket_55:
        .long   0xffffffff, 0x000fffff, 0xffffffff, 0x000fffff, 0xffffffff, 0x000fffff, 0xffffffff, 0x000fffff
_2il0floatpacket_56:
        .long   0x00000000, 0x00100000, 0x00000000, 0x00100000, 0x00000000, 0x00100000, 0x00000000, 0x00100000
_2il0floatpacket_57:
        .long   0xffffffff, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 0x00000000, 0xffffffff, 0x00000000
_2il0floatpacket_58:
        .long   0x00000000, 0x80000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000, 0x00000000, 0x80000000
_2il0floatpacket_59:
        .long   0x00000000, 0x3ff00000, 0x00000000, 0x3ff00000, 0x00000000, 0x3ff00000, 0x00000000, 0x3ff00000
_2il0floatpacket_60:
        .long   0x00000000, 0x42a80000, 0x00000000, 0x42a80000, 0x00000000, 0x42a80000, 0x00000000, 0x42a80000
_2il0floatpacket_61:
        .long   0x000001ff, 0x00000000, 0x000001ff, 0x00000000, 0x000001ff, 0x00000000, 0x000001ff, 0x00000000
_2il0floatpacket_62:
        .long   0x00000000, 0x39700000, 0x00000000, 0x39700000, 0x00000000, 0x39700000, 0x00000000, 0x39700000
_2il0floatpacket_63:
        .long   0x00ffffff, 0x00000000, 0x00ffffff, 0x00000000, 0x00ffffff, 0x00000000, 0x00ffffff, 0x00000000
_2il0floatpacket_64:
        .long   0x00000000, 0x3cb00000, 0x00000000, 0x3cb00000, 0x00000000, 0x3cb00000, 0x00000000, 0x3cb00000
_2il0floatpacket_65:
        .long   0x00000fff, 0x00000000, 0x00000fff, 0x00000000, 0x00000fff, 0x00000000, 0x00000fff, 0x00000000
_2il0floatpacket_66:
        .long   0x54442d18, 0x401921fb, 0x54442d18, 0x401921fb, 0x54442d18, 0x401921fb, 0x54442d18, 0x401921fb
_2il0floatpacket_67:
        .long   0x33145c07, 0x3cb1a626, 0x33145c07, 0x3cb1a626, 0x33145c07, 0x3cb1a626, 0x33145c07, 0x3cb1a626
_2il0floatpacket_68:
        .long   0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff
_2il0floatpacket_69:
        .long   0x00000000, 0x3eb00000, 0x00000000, 0x3eb00000, 0x00000000, 0x3eb00000, 0x00000000, 0x3eb00000
_2il0floatpacket_70:
        .long   0x54000000, 0x401921fb, 0x54000000, 0x401921fb, 0x54000000, 0x401921fb, 0x54000000, 0x401921fb
_2il0floatpacket_71:
        .long   0x11a62633, 0x3e310b46, 0x11a62633, 0x3e310b46, 0x11a62633, 0x3e310b46, 0x11a62633, 0x3e310b46
_2il0floatpacket_72:
        .long   0xf8000000, 0xffffffff, 0xf8000000, 0xffffffff, 0xf8000000, 0xffffffff, 0xf8000000, 0xffffffff
_2il0floatpacket_36:
        .long   0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000
_2il0floatpacket_37:
        .long   0xffffffff, 0x000fffff, 0xffffffff, 0x000fffff
_2il0floatpacket_38:
        .long   0x00000000, 0x00100000, 0x00000000, 0x00100000
_2il0floatpacket_39:
        .long   0xffffffff, 0x00000000, 0xffffffff, 0x00000000
_2il0floatpacket_40:
        .long   0x00000000, 0x80000000, 0x00000000, 0x80000000
_2il0floatpacket_41:
        .long   0x00000000, 0x3ff00000, 0x00000000, 0x3ff00000
_2il0floatpacket_42:
        .long   0x00000000, 0x42a80000, 0x00000000, 0x42a80000
_2il0floatpacket_43:
        .long   0x000001ff, 0x00000000, 0x000001ff, 0x00000000
_2il0floatpacket_44:
        .long   0x00000000, 0x39700000, 0x00000000, 0x39700000
_2il0floatpacket_45:
        .long   0x00ffffff, 0x00000000, 0x00ffffff, 0x00000000
_2il0floatpacket_46:
        .long   0x00000000, 0x3cb00000, 0x00000000, 0x3cb00000
_2il0floatpacket_47:
        .long   0x00000fff, 0x00000000, 0x00000fff, 0x00000000
_2il0floatpacket_48:
        .long   0x54442d18, 0x401921fb, 0x54442d18, 0x401921fb
_2il0floatpacket_49:
        .long   0x54000000, 0x401921fb, 0x54000000, 0x401921fb
_2il0floatpacket_50:
        .long   0x11a62633, 0x3e310b46, 0x11a62633, 0x3e310b46
_2il0floatpacket_51:
        .long   0xf8000000, 0xffffffff, 0xf8000000, 0xffffffff
_2il0floatpacket_52:
        .long   0xffffffff, 0x7fffffff, 0xffffffff, 0x7fffffff
_2il0floatpacket_53:
        .long   0x00000000, 0x3eb00000, 0x00000000, 0x3eb00000
_2il0floatpacket_73:
        .long   0x33145c07, 0x3cb1a626, 0x33145c07, 0x3cb1a626
_2il0floatpacket_74:
        .long   0xffffffff, 0xffffffff
_2il0floatpacket_75:
        .long   0x00000000, 0x7ff00000
_2il0floatpacket_76:
        .long   0xffffffff, 0x000fffff
_2il0floatpacket_77:
        .long   0x00000000, 0x00100000
_2il0floatpacket_78:
        .long   0xffffffff, 0x00000000
_2il0floatpacket_79:
        .long   0x00000000, 0x80000000
_2il0floatpacket_80:
        .long   0x00000000, 0x3ff00000
_2il0floatpacket_81:
        .long   0x00000000, 0x42a80000
_2il0floatpacket_82:
        .long   0x000001ff, 0x00000000
_2il0floatpacket_83:
        .long   0x00000000, 0x39700000
_2il0floatpacket_84:
        .long   0x00ffffff, 0x00000000
_2il0floatpacket_85:
        .long   0x00000000, 0x3cb00000
_2il0floatpacket_86:
        .long   0x00000fff, 0x00000000
_2il0floatpacket_87:
        .long   0x54442d18, 0x401921fb
_2il0floatpacket_88:
        .long   0x33145c07, 0x3cb1a626
_2il0floatpacket_89:
        .long   0xffffffff, 0x7fffffff
_2il0floatpacket_90:
        .long   0x00000000, 0x3eb00000
_vmldSinHATab:
        .long   0
        .long   0
        .long   0
        .long   2146435072
        .data
#endif
