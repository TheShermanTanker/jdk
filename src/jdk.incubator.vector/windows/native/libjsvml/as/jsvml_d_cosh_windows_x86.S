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
        .globl __jsvml_cosh1_ha_e9

__jsvml_cosh1_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 264
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm15
        mov       eax, 1082531225
        vmovups   XMMWORD PTR [208+rsp], xmm13
        mov       edx, 127
        vmovups   XMMWORD PTR [224+rsp], xmm12
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovups   XMMWORD PTR [176+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vandnpd   xmm13, xmm5, xmm4
        vmovd     xmm5, eax
        vmulsd    xmm0, xmm13, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vmovsd    xmm11, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vaddsd    xmm0, xmm0, xmm1
        vpshufd   xmm15, xmm13, 85
        vsubsd    xmm1, xmm0, xmm1
        vmulsd    xmm11, xmm11, xmm1
        vpcmpgtd  xmm6, xmm15, xmm5
        vmovmskps eax, xmm6
        vmovsd    xmm12, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vmovd     xmm5, edx
        vpshufd   xmm15, xmm0, 0
        vpsllq    xmm0, xmm0, 45
        vmulsd    xmm12, xmm12, xmm1
        vsubsd    xmm13, xmm13, xmm11
        vpand     xmm15, xmm15, xmm5
        vsubsd    xmm1, xmm13, xmm12
        vpslld    xmm6, xmm15, 1
        vpaddd    xmm5, xmm6, xmm15
        vpslld    xmm6, xmm5, 3
        vmovd     ecx, xmm6
        vmovq     xmm12, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpand     xmm11, xmm0, xmm12
        vmovq     xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        vpsubq    xmm12, xmm6, xmm11
        vmulsd    xmm6, xmm1, xmm1
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vmulsd    xmm2, xmm2, xmm6
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        vmulsd    xmm3, xmm3, xmm6
        vaddsd    xmm2, xmm2, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vmovq     xmm15, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        vmovq     xmm5, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        vpaddq    xmm0, xmm15, xmm11
        vpaddq    xmm13, xmm5, xmm11
        vaddsd    xmm11, xmm3, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vmulsd    xmm3, xmm2, xmm6
        vaddsd    xmm5, xmm0, xmm12
        vsubsd    xmm15, xmm0, xmm12
        vmulsd    xmm2, xmm11, xmm6
        vmulsd    xmm3, xmm3, xmm1
        vmulsd    xmm5, xmm2, xmm5
        vaddsd    xmm1, xmm3, xmm1
        vaddsd    xmm6, xmm5, xmm13
        vmulsd    xmm1, xmm1, xmm15
        mov       QWORD PTR [256+rsp], r13
        vaddsd    xmm2, xmm1, xmm6
        vaddsd    xmm3, xmm2, xmm12
        vaddsd    xmm0, xmm3, xmm0
        and       eax, 1
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm6, XMMWORD PTR [176+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 264
        ret

.L_B1_3:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B1_6

.L_B1_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B1_4
        .align    16, 0x90

.L_B1_7:

        .section .drectve
        .ascii " -export \"__jsvml_cosh1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh1_ha_e9_B1_B6:
        .long   939265
        .long   1430613
        .long   747597
        .long   1030212
        .long   968756
        .long   907302
        .long   849944
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_cosh1_ha_e9_B1_B6

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh4_ha_l9

__jsvml_cosh4_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L14:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [496+rsp], ymm15
        vmovups   YMMWORD PTR [464+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [368+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vmovupd   ymm3, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vmovupd   ymm8, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vmovapd   ymm2, ymm0
        vandnpd   ymm3, ymm3, ymm2
        vfmadd213pd ymm8, ymm3, ymm4
        vmovupd   ymm0, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        mov       QWORD PTR [536+rsp], r13
        vextracti128 xmm5, ymm3, 1
        vshufps   xmm9, xmm3, xmm5, 221
        vpcmpgtd  xmm5, xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        vmovmskps r8d, xmm5
        vextracti128 xmm6, ymm8, 1
        vsubpd    ymm4, ymm8, ymm4
        vshufps   xmm15, xmm8, xmm6, 136
        vpand     xmm9, xmm15, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4224]
        vpslld    xmm10, xmm9, 1
        vpaddd    xmm5, xmm10, xmm9
        vpslld    xmm10, xmm5, 3
        vfnmadd231pd ymm3, ymm4, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vpsllq    ymm8, ymm8, 45
        vmovd     ecx, xmm10
        vfnmadd231pd ymm3, ymm4, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vmovq     xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+rcx]
        vpand     ymm4, ymm8, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpextrd   r9d, xmm10, 2
        vpextrd   eax, xmm10, 1
        vpextrd   r10d, xmm10, 3
        vmovq     xmm9, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+r9]
        vmovhpd   xmm15, xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+rax]
        vmovhpd   xmm5, xmm9, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+r10]
        vmovq     xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+rcx]
        vmovhpd   xmm10, xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+rax]
        vinsertf128 ymm9, ymm15, xmm5, 1
        vmovq     xmm5, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+r9]
        vmovhpd   xmm6, xmm5, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+r10]
        vmovq     xmm5, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+rcx]
        vpaddq    ymm9, ymm9, ymm4
        vinsertf128 ymm15, ymm10, xmm6, 1
        vpaddq    ymm8, ymm15, ymm4
        vmovq     xmm10, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+r9]
        vmovhpd   xmm6, xmm5, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+rax]
        vmovhpd   xmm5, xmm10, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+r10]
        vmulpd    ymm15, ymm3, ymm3
        vfmadd213pd ymm1, ymm15, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vfmadd213pd ymm0, ymm15, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vinsertf128 ymm10, ymm6, xmm5, 1
        vpsubq    ymm6, ymm10, ymm4
        vmulpd    ymm10, ymm15, ymm1
        vmulpd    ymm1, ymm15, ymm0
        vaddpd    ymm4, ymm9, ymm6
        vsubpd    ymm5, ymm9, ymm6
        vfmadd213pd ymm10, ymm3, ymm3
        vfmadd213pd ymm1, ymm4, ymm8
        vfmadd213pd ymm10, ymm5, ymm1
        vaddpd    ymm0, ymm6, ymm10
        vaddpd    ymm0, ymm9, ymm0
        test      r8d, r8d
        jne       .L_B2_3

.L_B2_2:

        vmovups   ymm6, YMMWORD PTR [368+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm10, YMMWORD PTR [464+rsp]
        vmovups   ymm15, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B2_3:

        vmovupd   YMMWORD PTR [r13], ymm2
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B2_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [160+rsp], ymm7
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm14
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, r8d

.L_B2_7:

        bt        esi, ebx
        jc        .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        vmovups   ymm7, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm14, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosh4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh4_ha_l9_B1_B3:
        .long   935681
        .long   4379719
        .long   1534015
        .long   1804342
        .long   1677357
        .long   1943588
        .long   2095131
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cosh4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh4_ha_l9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   190502
        .long   317472
        .long   444442
        .long   571412
        .long   686091
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cosh4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_cosh4_ha_l9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh8_ha_z0

__jsvml_cosh8_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L41:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+384]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+640]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+704]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+768]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+832]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+512]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+576]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+128]
        vmovaps   zmm29, zmm0
        vandnpd   zmm26, zmm26, zmm29
        vpsrlq    zmm23, zmm26, 32
        vfmadd213pd zmm22, zmm26, zmm3 {rn-sae}
        vpmovqd   ymm0, zmm23
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+256]
        vpermt2pd zmm5, zmm22, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+192]
        vpermt2pd zmm23, zmm22, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+320]
        vpcmpgtd  ymm1, ymm0, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        vmovmskps r8d, ymm1
        vsubpd    zmm1, zmm22, zmm3 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal]
        vpsllq    zmm3, zmm22, 48
        vfnmadd231pd zmm26, zmm1, zmm4 {rn-sae}
        vpermt2pd zmm0, zmm22, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+64]
        vfnmadd231pd zmm26, zmm1, zmm2 {rn-sae}
        vmulpd    zmm2, zmm26, zmm26 {rn-sae}
        vfmadd231pd zmm30, zmm27, zmm2 {rn-sae}
        vfmadd231pd zmm31, zmm28, zmm2 {rn-sae}
        vfmadd213pd zmm30, zmm2, zmm24 {rn-sae}
        vfmadd213pd zmm31, zmm2, zmm25 {rn-sae}
        vmulpd    zmm25, zmm30, zmm2 {rn-sae}
        vmulpd    zmm24, zmm31, zmm2 {rn-sae}
        vfmadd213pd zmm25, zmm26, zmm26 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vpandq    zmm4, zmm3, ZMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpaddq    zmm22, zmm0, zmm4
        vpsubq    zmm3, zmm23, zmm4
        vpaddq    zmm5, zmm5, zmm4
        vaddpd    zmm0, zmm22, zmm3 {rn-sae}
        vsubpd    zmm1, zmm22, zmm3 {rn-sae}
        vfmadd213pd zmm24, zmm0, zmm5 {rn-sae}
        vfmadd213pd zmm25, zmm1, zmm24 {rn-sae}
        vaddpd    zmm27, zmm25, zmm3 {rn-sae}
        vaddpd    zmm0, zmm27, zmm22 {rn-sae}
        test      r8d, r8d
        jne       .L_B3_3

.L_B3_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B3_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B3_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B3_6

.L_B3_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B3_6:

        vmovups   ZMMWORD PTR [r13], zmm29
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B3_11

.L_B3_7:

        cmp       edx, eax
        je        .L_B3_2

.L_B3_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B3_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
        jmp       .L_B3_2

.L_B3_11:

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

.L_B3_12:

        bt        edi, ebx
        jc        .L_B3_15

.L_B3_13:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B3_12

.L_B3_14:

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
        jmp       .L_B3_7

.L_B3_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B3_13
        .align    16, 0x90

.L_B3_16:

        .section .drectve
        .ascii " -export \"__jsvml_cosh8_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh8_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_11
        .rva    _unwind___jsvml_cosh8_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh8_ha_z0_B11_B15:
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

        .rva    .L_B3_11
        .rva    .L_B3_16
        .rva    _unwind___jsvml_cosh8_ha_z0_B11_B15

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh2_ha_l9

__jsvml_cosh2_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L92:

        sub       rsp, 280
        vmovapd   xmm3, xmm0
        vmovups   XMMWORD PTR [240+rsp], xmm11
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm9
        vmovups   XMMWORD PTR [208+rsp], xmm8
        vmovups   XMMWORD PTR [224+rsp], xmm6
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vmovupd   xmm11, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vandnpd   xmm1, xmm1, xmm3
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vfmadd213pd xmm11, xmm1, xmm9
        vmovq     xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        vpshufd   xmm2, xmm1, 221
        vmovq     xmm8, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4224]
        vpcmpgtd  xmm2, xmm2, xmm0
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        vsubpd    xmm9, xmm11, xmm9
        vmovmskps edx, xmm2
        vpshufd   xmm6, xmm11, 136
        vpsllq    xmm11, xmm11, 45
        vpand     xmm2, xmm6, xmm8
        vfnmadd231pd xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vpslld    xmm8, xmm2, 1
        vpaddd    xmm0, xmm8, xmm2
        vpslld    xmm8, xmm0, 3
        vmovd     eax, xmm8
        vmovupd   xmm4, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vfnmadd231pd xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vmovq     xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rax]
        vmovq     xmm0, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rax]
        vpextrd   ecx, xmm8, 1
        vmovq     xmm8, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rax]
        vmovhpd   xmm2, xmm6, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        vmovhpd   xmm6, xmm8, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        vpand     xmm8, xmm11, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpsubq    xmm11, xmm6, xmm8
        vpaddq    xmm2, xmm2, xmm8
        vmulpd    xmm6, xmm1, xmm1
        vsubpd    xmm9, xmm2, xmm11
        vfmadd213pd xmm4, xmm6, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vfmadd213pd xmm5, xmm6, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vmovhpd   xmm0, xmm0, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        vpaddq    xmm0, xmm0, xmm8
        vmulpd    xmm4, xmm6, xmm4
        vmulpd    xmm5, xmm6, xmm5
        vaddpd    xmm8, xmm2, xmm11
        vfmadd213pd xmm4, xmm1, xmm1
        vfmadd213pd xmm5, xmm8, xmm0
        vfmadd213pd xmm4, xmm9, xmm5
        vaddpd    xmm0, xmm11, xmm4
        mov       QWORD PTR [264+rsp], r13
        vaddpd    xmm0, xmm2, xmm0
        and       edx, 3
        jne       .L_B4_3

.L_B4_2:

        vmovups   xmm6, XMMWORD PTR [224+rsp]
        vmovups   xmm8, XMMWORD PTR [208+rsp]
        vmovups   xmm9, XMMWORD PTR [192+rsp]
        vmovups   xmm11, XMMWORD PTR [240+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        vmovupd   XMMWORD PTR [r13], xmm3
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

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosh2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_l9_B1_B3:
        .long   803329
        .long   2151490
        .long   944186
        .long   886833
        .long   825384
        .long   1030168
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_cosh2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_cosh2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_cosh2_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh1_ha_l9

__jsvml_cosh1_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L107:

        sub       rsp, 264
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [224+rsp], xmm15
        mov       eax, 1082531225
        vmovups   XMMWORD PTR [240+rsp], xmm14
        mov       edx, 127
        vmovups   XMMWORD PTR [192+rsp], xmm10
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm9
        vmovups   XMMWORD PTR [176+rsp], xmm6
        vmovd     xmm0, eax
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        vmovsd    xmm1, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vandnpd   xmm6, xmm1, xmm4
        vmovsd    xmm9, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vmovapd   xmm14, xmm6
        vfmadd132sd xmm14, xmm9, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vpshufd   xmm15, xmm6, 85
        vmovsd    xmm10, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vpcmpgtd  xmm1, xmm15, xmm0
        vmovd     xmm0, edx
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vpshufd   xmm15, xmm14, 0
        vsubsd    xmm9, xmm14, xmm9
        vmovmskps eax, xmm1
        vpand     xmm15, xmm15, xmm0
        vpsllq    xmm14, xmm14, 45
        vfnmadd213sd xmm10, xmm9, xmm6
        vpslld    xmm1, xmm15, 1
        vpaddd    xmm0, xmm1, xmm15
        vpslld    xmm1, xmm0, 3
        vmovd     ecx, xmm1
        vmovq     xmm6, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vfnmadd213sd xmm5, xmm9, xmm10
        vpand     xmm10, xmm14, xmm6
        vmovq     xmm0, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        vpaddq    xmm14, xmm0, xmm10
        vmovsd    xmm3, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        vmulsd    xmm0, xmm5, xmm5
        vfmadd213sd xmm2, xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vfmadd213sd xmm3, xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vmovq     xmm15, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        vmovq     xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        vpaddq    xmm15, xmm15, xmm10
        vpsubq    xmm10, xmm1, xmm10
        vmulsd    xmm2, xmm2, xmm0
        vaddsd    xmm6, xmm15, xmm10
        vmulsd    xmm3, xmm3, xmm0
        vsubsd    xmm9, xmm15, xmm10
        vfmadd213sd xmm2, xmm5, xmm5
        vfmadd213sd xmm3, xmm6, xmm14
        vfmadd213sd xmm2, xmm9, xmm3
        mov       QWORD PTR [256+rsp], r13
        vaddsd    xmm5, xmm2, xmm10
        vaddsd    xmm0, xmm5, xmm15
        and       eax, 1
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm6, XMMWORD PTR [176+rsp]
        vmovups   xmm9, XMMWORD PTR [208+rsp]
        vmovups   xmm10, XMMWORD PTR [192+rsp]
        vmovups   xmm14, XMMWORD PTR [240+rsp]
        vmovups   xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 264
        ret

.L_B5_3:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B5_6

.L_B5_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B5_4
        .align    16, 0x90

.L_B5_7:

        .section .drectve
        .ascii " -export \"__jsvml_cosh1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh1_ha_l9_B1_B6:
        .long   940289
        .long   1430617
        .long   747597
        .long   890948
        .long   829492
        .long   1042470
        .long   981016
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_cosh1_ha_l9_B1_B6

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh4_ha_e9

__jsvml_cosh4_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L120:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [336+rsp], ymm15
        vmovups   YMMWORD PTR [368+rsp], ymm14
        vmovups   YMMWORD PTR [400+rsp], ymm13
        vmovups   YMMWORD PTR [432+rsp], ymm12
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [496+rsp], ymm10
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vmovupd   ymm15, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vmovapd   ymm5, ymm0
        vandnpd   ymm10, ymm2, ymm5
        vmulpd    ymm4, ymm10, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vaddpd    ymm11, ymm15, ymm4
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm12, ymm11, 1
        vshufps   xmm13, xmm11, xmm12, 136
        vpsllq    xmm12, xmm12, 45
        vpand     xmm4, xmm13, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4224]
        vpslld    xmm2, xmm4, 1
        vextractf128 xmm1, ymm10, 1
        vshufps   xmm3, xmm10, xmm1, 221
        vpaddd    xmm1, xmm2, xmm4
        vpslld    xmm0, xmm1, 3
        vmovd     ecx, xmm0
        vpcmpgtd  xmm14, xmm3, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        vmovmskps r8d, xmm14
        vmovq     xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+rcx]
        vmovq     xmm3, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+rcx]
        vpextrd   eax, xmm0, 1
        vpextrd   r9d, xmm0, 2
        vpextrd   r10d, xmm0, 3
        vmovhpd   xmm0, xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+rax]
        vmovq     xmm4, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+r9]
        vmovq     xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+r9]
        vmovhpd   xmm1, xmm4, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+rdx+r10]
        vmovhpd   xmm4, xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+r10]
        vsubpd    ymm2, ymm11, ymm15
        vpsllq    xmm11, xmm11, 45
        vmovq     xmm14, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+r9]
        vmovhpd   xmm13, xmm3, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+rax]
        vmulpd    ymm15, ymm2, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vmulpd    ymm2, ymm2, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vmovhpd   xmm14, xmm14, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+rdx+r10]
        vmovq     xmm3, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+rcx]
        vmovhpd   xmm3, xmm3, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+rdx+rax]
        vsubpd    ymm15, ymm10, ymm15
        vmovupd   xmm10, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpand     xmm12, xmm12, xmm10
        vsubpd    ymm2, ymm15, ymm2
        vpand     xmm15, xmm11, xmm10
        vpaddq    xmm0, xmm0, xmm15
        vpaddq    xmm10, xmm1, xmm12
        vpaddq    xmm13, xmm13, xmm15
        vpaddq    xmm14, xmm14, xmm12
        vinsertf128 ymm1, ymm0, xmm10, 1
        vmulpd    ymm0, ymm2, ymm2
        vmulpd    ymm11, ymm0, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        vaddpd    ymm10, ymm11, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vinsertf128 ymm14, ymm13, xmm14, 1
        vpsubq    xmm13, xmm3, xmm15
        vpsubq    xmm15, xmm4, xmm12
        vmulpd    ymm4, ymm0, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vaddpd    ymm12, ymm4, YMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vmulpd    ymm4, ymm0, ymm12
        vmulpd    ymm0, ymm0, ymm10
        vinsertf128 ymm13, ymm13, xmm15, 1
        vaddpd    ymm3, ymm14, ymm13
        vsubpd    ymm15, ymm14, ymm13
        vmulpd    ymm3, ymm3, ymm0
        vaddpd    ymm0, ymm1, ymm3
        vmulpd    ymm1, ymm2, ymm4
        vaddpd    ymm2, ymm2, ymm1
        vmulpd    ymm1, ymm15, ymm2
        vaddpd    ymm2, ymm0, ymm1
        vaddpd    ymm3, ymm13, ymm2
        vaddpd    ymm0, ymm14, ymm3
        test      r8d, r8d
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm10, YMMWORD PTR [496+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        vmovups   ymm12, YMMWORD PTR [432+rsp]
        vmovups   ymm13, YMMWORD PTR [400+rsp]
        vmovups   ymm14, YMMWORD PTR [368+rsp]
        vmovups   ymm15, YMMWORD PTR [336+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovupd   YMMWORD PTR [r13], ymm5
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B6_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm6
        vmovups   YMMWORD PTR [96+rsp], ymm7
        vmovups   YMMWORD PTR [64+rsp], ymm8
        vmovups   YMMWORD PTR [32+rsp], ymm9
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, r8d

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        vmovups   ymm6, YMMWORD PTR [128+rsp]
        vmovups   ymm7, YMMWORD PTR [96+rsp]
        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm9, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosh4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh4_ha_e9_B1_B3:
        .long   1069057
        .long   4379728
        .long   2074696
        .long   1947711
        .long   1820726
        .long   1693741
        .long   1566756
        .long   1439771
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cosh4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh4_ha_e9_B6_B10:
        .long   798497
        .long   1336367
        .long   1389605
        .long   170013
        .long   296983
        .long   423953
        .long   550923
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cosh4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_cosh4_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh1_ha_ex

__jsvml_cosh1_ha_ex:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L147:

        sub       rsp, 280
        mov       eax, 1082531225
        movups    XMMWORD PTR [176+rsp], xmm11
        mov       edx, 127
        movups    XMMWORD PTR [192+rsp], xmm10
        movaps    xmm10, xmm0
        movups    XMMWORD PTR [208+rsp], xmm9
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [224+rsp], xmm8
        movd      xmm1, eax
        movups    XMMWORD PTR [240+rsp], xmm7
        movd      xmm3, edx
        movups    XMMWORD PTR [256+rsp], xmm6
        mov       QWORD PTR [168+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        movsd     xmm8, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        andnps    xmm8, xmm10
        movaps    xmm6, xmm8
        mulsd     xmm6, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        movsd     xmm9, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        movsd     xmm5, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        addsd     xmm6, xmm9
        movaps    xmm11, xmm6
        movsd     xmm4, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        subsd     xmm11, xmm9
        mulsd     xmm5, xmm11
        mulsd     xmm4, xmm11
        pshufd    xmm2, xmm8, 85
        subsd     xmm8, xmm5
        movsd     xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        pcmpgtd   xmm2, xmm1
        pshufd    xmm1, xmm6, 0
        psllq     xmm6, 45
        pand      xmm1, xmm3
        subsd     xmm8, xmm4
        movmskps  eax, xmm2
        movaps    xmm5, xmm8
        movdqa    xmm2, xmm1
        mulsd     xmm5, xmm8
        pslld     xmm2, 1
        mulsd     xmm0, xmm5
        paddd     xmm2, xmm1
        movsd     xmm7, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        pslld     xmm2, 3
        mulsd     xmm7, xmm5
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        movd      ecx, xmm2
        movq      xmm4, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        mulsd     xmm0, xmm5
        addsd     xmm7, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        movq      xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        pand      xmm6, xmm4
        movq      xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        and       eax, 1
        paddq     xmm1, xmm6
        psubq     xmm2, xmm6
        mulsd     xmm7, xmm5
        mulsd     xmm0, xmm8
        movdqa    xmm4, xmm1
        addsd     xmm0, xmm8
        addsd     xmm4, xmm2
        movq      xmm3, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        paddq     xmm3, xmm6
        mulsd     xmm7, xmm4
        movdqa    xmm6, xmm1
        addsd     xmm7, xmm3
        subsd     xmm6, xmm2
        mulsd     xmm0, xmm6
        mov       QWORD PTR [272+rsp], r13
        addsd     xmm0, xmm7
        addsd     xmm0, xmm2
        addsd     xmm0, xmm1
        jne       .L_B7_3

.L_B7_2:

        movups    xmm6, XMMWORD PTR [256+rsp]
        movups    xmm7, XMMWORD PTR [240+rsp]
        movups    xmm8, XMMWORD PTR [224+rsp]
        movups    xmm9, XMMWORD PTR [208+rsp]
        movups    xmm10, XMMWORD PTR [192+rsp]
        movups    xmm11, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 280
        ret

.L_B7_3:

        movsd     QWORD PTR [r13], xmm10
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B7_6

.L_B7_4:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B7_2

.L_B7_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B7_4
        .align    16, 0x90

.L_B7_7:

        .section .drectve
        .ascii " -export \"__jsvml_cosh1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh1_ha_ex_B1_B6:
        .long   1074177
        .long   1430628
        .long   1075292
        .long   1013840
        .long   952388
        .long   890932
        .long   829479
        .long   768025
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_7
        .rva    _unwind___jsvml_cosh1_ha_ex_B1_B6

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh2_ha_ex

__jsvml_cosh2_ha_ex:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L162:

        sub       rsp, 312
        lea       r8, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [208+rsp], xmm13
        movups    XMMWORD PTR [224+rsp], xmm12
        movaps    xmm12, xmm0
        movups    XMMWORD PTR [240+rsp], xmm11
        movups    XMMWORD PTR [256+rsp], xmm10
        movups    XMMWORD PTR [272+rsp], xmm9
        movups    XMMWORD PTR [192+rsp], xmm6
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm10, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        movups    xmm6, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        andnps    xmm10, xmm12
        mulpd     xmm6, xmm10
        movups    xmm11, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        addpd     xmm6, xmm11
        movq      xmm2, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4224]
        movq      xmm0, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        pshufd    xmm1, xmm10, 221
        pshufd    xmm13, xmm6, 136
        pcmpgtd   xmm1, xmm0
        pand      xmm13, xmm2
        movmskps  eax, xmm1
        movdqa    xmm1, xmm13
        pslld     xmm1, 1
        paddd     xmm1, xmm13
        movaps    xmm13, xmm6
        subpd     xmm13, xmm11
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        pslld     xmm1, 3
        mulpd     xmm4, xmm13
        movd      edx, xmm1
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        psllq     xmm6, 45
        movups    xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        mulpd     xmm3, xmm13
        subpd     xmm10, xmm4
        subpd     xmm10, xmm3
        movaps    xmm3, xmm10
        and       eax, 3
        mulpd     xmm3, xmm10
        mulpd     xmm9, xmm3
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        addpd     xmm9, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        mulpd     xmm5, xmm3
        mulpd     xmm9, xmm3
        addpd     xmm5, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        mulpd     xmm9, xmm10
        mulpd     xmm3, xmm5
        addpd     xmm10, xmm9
        pshufd    xmm2, xmm1, 1
        movd      ecx, xmm2
        movq      xmm0, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rdx]
        movq      xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rdx]
        movhpd    xmm0, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        pand      xmm6, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        movhpd    xmm2, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        paddq     xmm0, xmm6
        psubq     xmm2, xmm6
        movaps    xmm4, xmm0
        addpd     xmm4, xmm2
        movq      xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rdx]
        movhpd    xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        paddq     xmm1, xmm6
        mulpd     xmm4, xmm3
        movaps    xmm6, xmm0
        subpd     xmm6, xmm2
        addpd     xmm1, xmm4
        mulpd     xmm6, xmm10
        addpd     xmm1, xmm6
        addpd     xmm2, xmm1
        mov       QWORD PTR [296+rsp], r13
        addpd     xmm0, xmm2
        jne       .L_B8_3

.L_B8_2:

        movups    xmm6, XMMWORD PTR [192+rsp]
        movups    xmm9, XMMWORD PTR [272+rsp]
        movups    xmm10, XMMWORD PTR [256+rsp]
        movups    xmm11, XMMWORD PTR [240+rsp]
        movups    xmm12, XMMWORD PTR [224+rsp]
        movups    xmm13, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B8_3:

        movups    XMMWORD PTR [r13], xmm12
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B8_2

.L_B8_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B8_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B8_10

.L_B8_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B8_7

.L_B8_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B8_2

.L_B8_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B8_8
        .align    16, 0x90

.L_B8_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosh2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_ex_B1_B3:
        .long   1069825
        .long   2413651
        .long   813131
        .long   1153091
        .long   1091642
        .long   1030193
        .long   968740
        .long   907291
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_cosh2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_cosh2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_6
        .rva    .L_B8_11
        .rva    _unwind___jsvml_cosh2_ha_ex_B6_B10

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_cosh2_ha_e9

__jsvml_cosh2_ha_e9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L181:

        sub       rsp, 280
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm14
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovups   XMMWORD PTR [224+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm11
        vmovapd   xmm11, xmm0
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm5, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4672]
        and       r13, -64
        vandnpd   xmm0, xmm5, xmm11
        vmulpd    xmm4, xmm0, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+3968]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4160]
        vaddpd    xmm12, xmm3, xmm4
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4224]
        vpshufd   xmm5, xmm12, 136
        vpand     xmm5, xmm5, xmm1
        vpslld    xmm1, xmm5, 1
        vmovq     xmm14, QWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4736]
        vpaddd    xmm4, xmm1, xmm5
        vpshufd   xmm2, xmm0, 221
        vpcmpgtd  xmm13, xmm2, xmm14
        vpslld    xmm2, xmm4, 3
        vmovd     eax, xmm2
        vmovmskps edx, xmm13
        vmovq     xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rax]
        vpextrd   ecx, xmm2, 1
        vmovhpd   xmm5, xmm1, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+896+r8+rcx]
        vsubpd    xmm1, xmm12, xmm3
        vmulpd    xmm3, xmm1, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4032]
        vmovq     xmm14, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rax]
        vpsllq    xmm12, xmm12, 45
        vmovhpd   xmm2, xmm14, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+904+r8+rcx]
        vsubpd    xmm14, xmm0, xmm3
        vmulpd    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4096]
        vsubpd    xmm1, xmm14, xmm0
        vmovq     xmm13, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rax]
        vmovhpd   xmm4, xmm13, QWORD PTR ["__jsvml_dcosh_ha_data_internal"@imgrel+912+r8+rcx]
        vpand     xmm3, xmm12, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4608]
        vpaddq    xmm5, xmm5, xmm3
        vpaddq    xmm0, xmm2, xmm3
        vpsubq    xmm4, xmm4, xmm3
        vmulpd    xmm3, xmm1, xmm1
        vaddpd    xmm12, xmm5, xmm4
        vsubpd    xmm2, xmm5, xmm4
        vmulpd    xmm13, xmm3, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4544]
        vaddpd    xmm14, xmm13, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4416]
        vmulpd    xmm13, xmm3, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4480]
        vmulpd    xmm14, xmm3, xmm14
        vaddpd    xmm13, xmm13, XMMWORD PTR [rip+__jsvml_dcosh_ha_data_internal+4352]
        vmulpd    xmm14, xmm1, xmm14
        vmulpd    xmm3, xmm3, xmm13
        vaddpd    xmm1, xmm1, xmm14
        vmulpd    xmm12, xmm12, xmm3
        vmulpd    xmm2, xmm2, xmm1
        vaddpd    xmm0, xmm0, xmm12
        vaddpd    xmm0, xmm0, xmm2
        vaddpd    xmm4, xmm4, xmm0
        mov       QWORD PTR [264+rsp], r13
        vaddpd    xmm0, xmm5, xmm4
        and       edx, 3
        jne       .L_B9_3

.L_B9_2:

        vmovups   xmm11, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B9_3:

        vmovupd   XMMWORD PTR [r13], xmm11
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B9_2

.L_B9_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B9_7:

        bt        esi, ebx
        jc        .L_B9_10

.L_B9_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B9_7

.L_B9_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B9_2

.L_B9_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcosh_ha_cout_rare_internal
        jmp       .L_B9_8
        .align    16, 0x90

.L_B9_11:

        .section .drectve
        .ascii " -export \"__jsvml_cosh2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_e9_B1_B3:
        .long   803329
        .long   2151490
        .long   1030198
        .long   968749
        .long   907300
        .long   845851
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_cosh2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cosh2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_cosh2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_6
        .rva    .L_B9_11
        .rva    _unwind___jsvml_cosh2_ha_e9_B6_B10

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dcosh_ha_cout_rare_internal

__jsvml_dcosh_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L196:

        sub       rsp, 136
        xor       eax, eax
        movzx     r8d, WORD PTR [6+rcx]
        and       r8d, 32752
        movups    XMMWORD PTR [96+rsp], xmm12
        movups    XMMWORD PTR [112+rsp], xmm11
        movups    XMMWORD PTR [80+rsp], xmm6
        cmp       r8d, 32752
        je        .L_B10_12

.L_B10_2:

        mov       rcx, QWORD PTR [rcx]
        mov       QWORD PTR [64+rsp], rcx
        shr       rcx, 56
        and       ecx, 127
        mov       BYTE PTR [71+rsp], cl
        movzx     r8d, WORD PTR [70+rsp]
        and       r8d, 32752
        cmp       r8d, 15504
        jle       .L_B10_10

.L_B10_3:

        movsd     xmm12, QWORD PTR [64+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1096]
        comisd    xmm0, xmm12
        jbe       .L_B10_9

.L_B10_4:

        mov       rcx, QWORD PTR [rip+_vmldCoshHATab+1128]
        movsd     xmm2, QWORD PTR [rip+_vmldCoshHATab+1040]
        mov       QWORD PTR [64+rsp], rcx
        mulsd     xmm2, xmm12
        comisd    xmm12, QWORD PTR [rip+_vmldCoshHATab+1144]
        jb        .L_B10_8

.L_B10_5:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1048]
        lea       r9, QWORD PTR [rip+__ImageBase]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [32+rsp], xmm2
        movsd     xmm1, QWORD PTR [32+rsp]
        mov       ecx, DWORD PTR [32+rsp]
        mov       r10d, ecx
        and       r10d, 63
        subsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1048]
        movsd     QWORD PTR [40+rsp], xmm1
        lea       r8d, DWORD PTR [r10+r10]
        movsd     xmm2, QWORD PTR [40+rsp]
        lea       r11d, DWORD PTR [1+r10+r10]
        mulsd     xmm2, QWORD PTR [rip+_vmldCoshHATab+1104]
        movsd     xmm3, QWORD PTR [40+rsp]
        subsd     xmm12, xmm2
        mulsd     xmm3, QWORD PTR [rip+_vmldCoshHATab+1112]
        movsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1088]
        subsd     xmm12, xmm3
        mulsd     xmm1, xmm12
        movsd     xmm4, QWORD PTR ["_vmldCoshHATab"@imgrel+r9+r8*8]
        mov       r8, r9
        shr       ecx, 6
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1080]
        mulsd     xmm1, xmm12
        add       ecx, 1022
        and       ecx, 2047
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1072]
        mulsd     xmm1, xmm12
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1064]
        mulsd     xmm1, xmm12
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1056]
        mulsd     xmm1, xmm12
        mulsd     xmm1, xmm12
        addsd     xmm1, xmm12
        mulsd     xmm1, xmm4
        addsd     xmm1, QWORD PTR ["_vmldCoshHATab"@imgrel+r8+r11*8]
        addsd     xmm1, xmm4
        cmp       ecx, 2046
        ja        .L_B10_7

.L_B10_6:

        mov       r8, QWORD PTR [rip+_vmldCoshHATab+1128]
        shr       r8, 48
        shl       ecx, 4
        and       r8d, -32753
        or        r8d, ecx
        mov       WORD PTR [70+rsp], r8w
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [rdx], xmm0
        jmp       .L_B10_11

.L_B10_7:

        dec       ecx
        and       ecx, 2047
        movzx     r8d, WORD PTR [70+rsp]
        shl       ecx, 4
        and       r8d, -32753
        or        r8d, ecx
        mov       WORD PTR [70+rsp], r8w
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm1, xmm0
        mulsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1024]
        movsd     QWORD PTR [rdx], xmm1
        jmp       .L_B10_11

.L_B10_8:

        movsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1048]
        lea       r8, QWORD PTR [rip+__ImageBase]
        movzx     r9d, WORD PTR [70+rsp]
        addsd     xmm2, xmm1
        movsd     QWORD PTR [32+rsp], xmm2
        and       r9d, -32753
        movsd     xmm6, QWORD PTR [32+rsp]
        mov       r11d, DWORD PTR [32+rsp]
        mov       ecx, r11d
        shr       ecx, 6
        and       r11d, 63
        subsd     xmm6, QWORD PTR [rip+_vmldCoshHATab+1048]
        movsd     QWORD PTR [40+rsp], xmm6
        lea       r10d, DWORD PTR [1023+rcx]
        movsd     xmm11, QWORD PTR [40+rsp]
        add       ecx, 1022
        mulsd     xmm11, QWORD PTR [rip+_vmldCoshHATab+1104]
        and       ecx, 2047
        movsd     xmm4, QWORD PTR [40+rsp]
        neg       r10d
        mulsd     xmm4, QWORD PTR [rip+_vmldCoshHATab+1112]
        subsd     xmm12, xmm11
        movsd     xmm11, QWORD PTR [rip+_vmldCoshHATab+1088]
        add       r10d, -4
        shl       ecx, 4
        and       r10d, 2047
        movsd     xmm6, QWORD PTR [rip+_vmldCoshHATab+1080]
        or        r9d, ecx
        mov       WORD PTR [70+rsp], r9w
        lea       ecx, DWORD PTR [r11+r11]
        shl       r10d, 4
        and       r9d, -32753
        or        r9d, r10d
        subsd     xmm12, xmm4
        movaps    xmm5, xmm12
        mulsd     xmm5, xmm12
        mulsd     xmm11, xmm5
        mulsd     xmm6, xmm5
        addsd     xmm11, QWORD PTR [rip+_vmldCoshHATab+1072]
        addsd     xmm6, QWORD PTR [rip+_vmldCoshHATab+1064]
        mulsd     xmm11, xmm5
        mulsd     xmm6, xmm5
        addsd     xmm11, QWORD PTR [rip+_vmldCoshHATab+1056]
        mulsd     xmm6, xmm12
        mulsd     xmm11, xmm5
        movsd     xmm4, QWORD PTR ["_vmldCoshHATab"@imgrel+r8+rcx*8]
        neg       ecx
        movsd     xmm1, QWORD PTR [64+rsp]
        lea       r8d, DWORD PTR [1+r11+r11]
        lea       r11, QWORD PTR [rip+__ImageBase]
        mov       r10, r11
        mov       WORD PTR [70+rsp], r9w
        lea       r9d, DWORD PTR [128+rcx]
        movsd     xmm0, QWORD PTR [64+rsp]
        add       ecx, 129
        movsd     xmm5, QWORD PTR ["_vmldCoshHATab"@imgrel+r11+r8*8]
        mov       r8, r11
        movsd     xmm2, QWORD PTR ["_vmldCoshHATab"@imgrel+r10+r9*8]
        mulsd     xmm4, xmm1
        mulsd     xmm2, xmm0
        mulsd     xmm5, xmm1
        movaps    xmm1, xmm4
        movsd     xmm3, QWORD PTR ["_vmldCoshHATab"@imgrel+r8+rcx*8]
        addsd     xmm1, xmm2
        mulsd     xmm3, xmm0
        movsd     QWORD PTR [48+rsp], xmm1
        movaps    xmm1, xmm4
        movsd     xmm0, QWORD PTR [48+rsp]
        subsd     xmm4, xmm2
        subsd     xmm1, xmm0
        mulsd     xmm6, xmm4
        addsd     xmm1, xmm2
        movaps    xmm2, xmm5
        movsd     QWORD PTR [56+rsp], xmm1
        subsd     xmm2, xmm3
        mulsd     xmm2, xmm12
        mulsd     xmm12, xmm4
        addsd     xmm2, xmm3
        movsd     xmm1, QWORD PTR [48+rsp]
        addsd     xmm2, xmm5
        mulsd     xmm11, xmm1
        movsd     xmm0, QWORD PTR [56+rsp]
        addsd     xmm2, xmm0
        addsd     xmm2, xmm6
        addsd     xmm2, xmm11
        addsd     xmm2, xmm12
        movsd     QWORD PTR [48+rsp], xmm2
        movsd     xmm12, QWORD PTR [48+rsp]
        addsd     xmm1, xmm12
        movsd     QWORD PTR [rdx], xmm1
        jmp       .L_B10_11

.L_B10_9:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1120]
        mov       eax, 3
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [rdx], xmm0
        jmp       .L_B10_11

.L_B10_10:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1136]
        addsd     xmm0, QWORD PTR [64+rsp]
        movsd     QWORD PTR [rdx], xmm0

.L_B10_11:

        movups    xmm6, XMMWORD PTR [80+rsp]
        movups    xmm11, XMMWORD PTR [112+rsp]
        movups    xmm12, XMMWORD PTR [96+rsp]
        add       rsp, 136
        ret

.L_B10_12:

        movsd     xmm0, QWORD PTR [rcx]
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [rdx], xmm0
        jmp       .L_B10_11
        .align    16, 0x90

.L_B10_13:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dcosh_ha_cout_rare_internal_B1_B12:
        .long   535041
        .long   354346
        .long   505893
        .long   444447
        .long   1114379

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_13
        .rva    _unwind___jsvml_dcosh_ha_cout_rare_internal_B1_B12

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dcosh_ha_data_internal
__jsvml_dcosh_ha_data_internal:
        .long   0
        .long   1071644672
        .long   1828292879
        .long   1071691096
        .long   1014845819
        .long   1071739576
        .long   1853186616
        .long   1071790202
        .long   171030293
        .long   1071843070
        .long   1276261410
        .long   1071898278
        .long   3577096743
        .long   1071955930
        .long   3712504873
        .long   1072016135
        .long   1719614413
        .long   1072079006
        .long   1944781191
        .long   1072144660
        .long   1110089947
        .long   1072213221
        .long   2191782032
        .long   1072284817
        .long   2572866477
        .long   1072359583
        .long   3716502172
        .long   1072437659
        .long   3707479175
        .long   1072519192
        .long   2728693978
        .long   1072604335
        .long   0
        .long   0
        .long   1255956747
        .long   1015588398
        .long   3117910646
        .long   3161559105
        .long   3066496371
        .long   1015656574
        .long   3526460132
        .long   1014428778
        .long   300981948
        .long   1014684169
        .long   2951496418
        .long   1013793687
        .long   88491949
        .long   1015427660
        .long   330458198
        .long   3163282740
        .long   3993278767
        .long   3161724279
        .long   1451641639
        .long   1015474673
        .long   2960257726
        .long   1013742662
        .long   878562433
        .long   1015521741
        .long   2303740125
        .long   1014042725
        .long   3613079303
        .long   1014164738
        .long   396109971
        .long   3163462691
        .long   0
        .long   1071644672
        .long   2728693978
        .long   1071555759
        .long   3707479175
        .long   1071470616
        .long   3716502172
        .long   1071389083
        .long   2572866477
        .long   1071311007
        .long   2191782032
        .long   1071236241
        .long   1110089947
        .long   1071164645
        .long   1944781191
        .long   1071096084
        .long   1719614413
        .long   1071030430
        .long   3712504873
        .long   1070967559
        .long   3577096743
        .long   1070907354
        .long   1276261410
        .long   1070849702
        .long   171030293
        .long   1070794494
        .long   1853186616
        .long   1070741626
        .long   1014845819
        .long   1070691000
        .long   1828292879
        .long   1070642520
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   0
        .long   1123549184
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   15
        .long   0
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   4
        .long   1071644672
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1431655747
        .long   1069897045
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   1430802231
        .long   1067799893
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   287861260
        .long   1065423121
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   3658019094
        .long   1062650243
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   1993999322
        .long   1059717517
        .long   0
        .long   1071644672
        .long   0
        .long   0
        .long   0
        .long   1071644672
        .long   2851812149
        .long   1071650365
        .long   2595802551
        .long   1015767337
        .long   730821105
        .long   1071633346
        .long   1048019041
        .long   1071656090
        .long   1398474845
        .long   3160510595
        .long   2174652632
        .long   1071622081
        .long   3899555717
        .long   1071661845
        .long   427280750
        .long   3162546972
        .long   2912730644
        .long   1071610877
        .long   3541402996
        .long   1071667632
        .long   2759177317
        .long   1014854626
        .long   1533953344
        .long   1071599734
        .long   702412510
        .long   1071673451
        .long   3803266087
        .long   3162280415
        .long   929806999
        .long   1071588651
        .long   410360776
        .long   1071679301
        .long   1269990655
        .long   1011975870
        .long   3999357479
        .long   1071577627
        .long   3402036099
        .long   1071685182
        .long   405889334
        .long   1015105656
        .long   764307441
        .long   1071566664
        .long   1828292879
        .long   1071691096
        .long   1255956747
        .long   1015588398
        .long   2728693978
        .long   1071555759
        .long   728909815
        .long   1071697042
        .long   383930225
        .long   1015029468
        .long   4224142467
        .long   1071544913
        .long   852742562
        .long   1071703020
        .long   667253587
        .long   1009793559
        .long   3884662774
        .long   1071534126
        .long   2952712987
        .long   1071709030
        .long   3293494651
        .long   3160120301
        .long   351641897
        .long   1071523398
        .long   3490863953
        .long   1071715073
        .long   960797498
        .long   3162948880
        .long   863738719
        .long   1071512727
        .long   3228316108
        .long   1071721149
        .long   3010241991
        .long   3158422804
        .long   4076975200
        .long   1071502113
        .long   2930322912
        .long   1071727258
        .long   2599499422
        .long   3162714047
        .long   64696965
        .long   1071491558
        .long   3366293073
        .long   1071733400
        .long   3119426314
        .long   1014120554
        .long   382305176
        .long   1071481059
        .long   1014845819
        .long   1071739576
        .long   3117910646
        .long   3161559105
        .long   3707479175
        .long   1071470616
        .long   948735466
        .long   1071745785
        .long   3516338028
        .long   3162574883
        .long   135105010
        .long   1071460231
        .long   3949972341
        .long   1071752027
        .long   2068408548
        .long   1014913868
        .long   1242007932
        .long   1071449901
        .long   2214878420
        .long   1071758304
        .long   892270087
        .long   3163116422
        .long   1432208378
        .long   1071439627
        .long   828946858
        .long   1071764615
        .long   10642492
        .long   1015939438
        .long   3706687593
        .long   1071429408
        .long   586995997
        .long   1071770960
        .long   41662348
        .long   3162627992
        .long   2483480501
        .long   1071419245
        .long   2288159958
        .long   1071777339
        .long   2169144469
        .long   1014876021
        .long   777507147
        .long   1071409137
        .long   2440944790
        .long   1071783753
        .long   2492769774
        .long   1014147454
        .long   1610600570
        .long   1071399083
        .long   1853186616
        .long   1071790202
        .long   3066496371
        .long   1015656574
        .long   3716502172
        .long   1071389083
        .long   1337108031
        .long   1071796686
        .long   3203724452
        .long   1014677845
        .long   1540824585
        .long   1071379138
        .long   1709341917
        .long   1071803205
        .long   2571168217
        .long   1014152499
        .long   2420883922
        .long   1071369246
        .long   3790955393
        .long   1071809759
        .long   2352942462
        .long   3163180090
        .long   815859274
        .long   1071359408
        .long   4112506593
        .long   1071816349
        .long   2947355221
        .long   1014371048
        .long   4076559943
        .long   1071349622
        .long   3504003472
        .long   1071822975
        .long   3594001060
        .long   3157330652
        .long   2380618042
        .long   1071339890
        .long   2799960843
        .long   1071829637
        .long   1423655381
        .long   1015022151
        .long   3092190715
        .long   1071330210
        .long   2839424854
        .long   1071836335
        .long   1171596163
        .long   1013041679
        .long   697153126
        .long   1071320583
        .long   171030293
        .long   1071843070
        .long   3526460132
        .long   1014428778
        .long   2572866477
        .long   1071311007
        .long   4232894513
        .long   1071849840
        .long   2383938684
        .long   1014668519
        .long   3218338682
        .long   1071301483
        .long   2992903935
        .long   1071856648
        .long   2218154406
        .long   1015228193
        .long   1434058175
        .long   1071292011
        .long   1603444721
        .long   1071863493
        .long   1548633640
        .long   3162201326
        .long   321958744
        .long   1071282590
        .long   926591435
        .long   1071870375
        .long   3208833762
        .long   3162913514
        .long   2990417245
        .long   1071273219
        .long   1829099622
        .long   1071877294
        .long   1016661181
        .long   3163461005
        .long   3964284211
        .long   1071263899
        .long   887463927
        .long   1071884251
        .long   3596744163
        .long   3160794166
        .long   2069751141
        .long   1071254630
        .long   3272845541
        .long   1071891245
        .long   928852419
        .long   3163488248
        .long   434316067
        .long   1071245411
        .long   1276261410
        .long   1071898278
        .long   300981948
        .long   1014684169
        .long   2191782032
        .long   1071236241
        .long   78413852
        .long   1071905349
        .long   4183226867
        .long   3163017251
        .long   1892288442
        .long   1071227121
        .long   569847338
        .long   1071912458
        .long   472945272
        .long   3159290729
        .long   2682146384
        .long   1071218050
        .long   3645941911
        .long   1071919605
        .long   3814685081
        .long   3161573341
        .long   3418903055
        .long   1071209028
        .long   1617004845
        .long   1071926792
        .long   82804944
        .long   1010342778
        .long   2966275557
        .long   1071200055
        .long   3978100823
        .long   1071934017
        .long   3513027190
        .long   1015845963
        .long   194117574
        .long   1071191131
        .long   3049340112
        .long   1071941282
        .long   3062915824
        .long   1013170595
        .long   2568320822
        .long   1071182254
        .long   4040676318
        .long   1071948586
        .long   4090609238
        .long   1015663458
        .long   380978316
        .long   1071173426
        .long   3577096743
        .long   1071955930
        .long   2951496418
        .long   1013793687
        .long   1110089947
        .long   1071164645
        .long   2583551245
        .long   1071963314
        .long   3161094195
        .long   1015606491
        .long   3649726105
        .long   1071155911
        .long   1990012071
        .long   1071970738
        .long   3529070563
        .long   3162813193
        .long   2604962541
        .long   1071147225
        .long   2731501122
        .long   1071978202
        .long   1774031855
        .long   3162470021
        .long   1176749997
        .long   1071138586
        .long   1453150082
        .long   1071985707
        .long   498154669
        .long   3161488062
        .long   2571947539
        .long   1071129993
        .long   3395129871
        .long   1071993252
        .long   4025345435
        .long   3162335388
        .long   1413356050
        .long   1071121447
        .long   917841882
        .long   1072000839
        .long   18715565
        .long   1015659308
        .long   919555682
        .long   1071112947
        .long   3566716925
        .long   1072008466
        .long   1536826856
        .long   1014142433
        .long   19972402
        .long   1071104493
        .long   3712504873
        .long   1072016135
        .long   88491949
        .long   1015427660
        .long   1944781191
        .long   1071096084
        .long   2321106615
        .long   1072023846
        .long   2171176610
        .long   1009535771
        .long   1339972927
        .long   1071087721
        .long   363667784
        .long   1072031599
        .long   813753950
        .long   1015785209
        .long   1447192521
        .long   1071079403
        .long   3111574537
        .long   1072039393
        .long   2606161479
        .long   3162759746
        .long   1218806132
        .long   1071071130
        .long   2956612997
        .long   1072047230
        .long   2118169751
        .long   3162735553
        .long   3907805044
        .long   1071062901
        .long   885834528
        .long   1072055110
        .long   1973258547
        .long   3162261564
        .long   4182873220
        .long   1071054717
        .long   2186617381
        .long   1072063032
        .long   2270764084
        .long   3163272713
        .long   1013258799
        .long   1071046578
        .long   3561793907
        .long   1072070997
        .long   1157054053
        .long   1011890350
        .long   1963711167
        .long   1071038482
        .long   1719614413
        .long   1072079006
        .long   330458198
        .long   3163282740
        .long   1719614413
        .long   1071030430
        .long   1963711167
        .long   1072087058
        .long   1744767757
        .long   3160574294
        .long   3561793907
        .long   1071022421
        .long   1013258799
        .long   1072095154
        .long   1748797611
        .long   3160129082
        .long   2186617381
        .long   1071014456
        .long   4182873220
        .long   1072103293
        .long   629542646
        .long   3161996303
        .long   885834528
        .long   1071006534
        .long   3907805044
        .long   1072111477
        .long   2257091225
        .long   3161550407
        .long   2956612997
        .long   1070998654
        .long   1218806132
        .long   1072119706
        .long   1818613052
        .long   3162548441
        .long   3111574537
        .long   1070990817
        .long   1447192521
        .long   1072127979
        .long   1462857171
        .long   3162514521
        .long   363667784
        .long   1070983023
        .long   1339972927
        .long   1072136297
        .long   167908909
        .long   1015572152
        .long   2321106615
        .long   1070975270
        .long   1944781191
        .long   1072144660
        .long   3993278767
        .long   3161724279
        .long   3712504873
        .long   1070967559
        .long   19972402
        .long   1072153069
        .long   3507899862
        .long   1016009292
        .long   3566716925
        .long   1070959890
        .long   919555682
        .long   1072161523
        .long   3121969534
        .long   1012948226
        .long   917841882
        .long   1070952263
        .long   1413356050
        .long   1072170023
        .long   1651349291
        .long   3162668166
        .long   3395129871
        .long   1070944676
        .long   2571947539
        .long   1072178569
        .long   3558159064
        .long   3163376669
        .long   1453150082
        .long   1070937131
        .long   1176749997
        .long   1072187162
        .long   2738998779
        .long   3162035844
        .long   2731501122
        .long   1070929626
        .long   2604962541
        .long   1072195801
        .long   2614425274
        .long   3163539192
        .long   1990012071
        .long   1070922162
        .long   3649726105
        .long   1072204487
        .long   4085036346
        .long   1015649474
        .long   2583551245
        .long   1070914738
        .long   1110089947
        .long   1072213221
        .long   1451641639
        .long   1015474673
        .long   3577096743
        .long   1070907354
        .long   380978316
        .long   1072222002
        .long   854188970
        .long   3160462686
        .long   4040676318
        .long   1070900010
        .long   2568320822
        .long   1072230830
        .long   2732824428
        .long   1014352915
        .long   3049340112
        .long   1070892706
        .long   194117574
        .long   1072239707
        .long   777528612
        .long   3163412089
        .long   3978100823
        .long   1070885441
        .long   2966275557
        .long   1072248631
        .long   2176155324
        .long   3159842759
        .long   1617004845
        .long   1070878216
        .long   3418903055
        .long   1072257604
        .long   2527457337
        .long   3160820604
        .long   3645941911
        .long   1070871029
        .long   2682146384
        .long   1072266626
        .long   2082178513
        .long   3163363419
        .long   569847338
        .long   1070863882
        .long   1892288442
        .long   1072275697
        .long   2446255666
        .long   3162600381
        .long   78413852
        .long   1070856773
        .long   2191782032
        .long   1072284817
        .long   2960257726
        .long   1013742662
        .long   1276261410
        .long   1070849702
        .long   434316067
        .long   1072293987
        .long   2028358766
        .long   1013458122
        .long   3272845541
        .long   1070842669
        .long   2069751141
        .long   1072303206
        .long   1562170675
        .long   3162724681
        .long   887463927
        .long   1070835675
        .long   3964284211
        .long   1072312475
        .long   2111583915
        .long   1015427164
        .long   1829099622
        .long   1070828718
        .long   2990417245
        .long   1072321795
        .long   3683467745
        .long   3163369326
        .long   926591435
        .long   1070821799
        .long   321958744
        .long   1072331166
        .long   3401933767
        .long   1015794558
        .long   1603444721
        .long   1070814917
        .long   1434058175
        .long   1072340587
        .long   251133233
        .long   1015085769
        .long   2992903935
        .long   1070808072
        .long   3218338682
        .long   1072350059
        .long   3404164304
        .long   3162477108
        .long   4232894513
        .long   1070801264
        .long   2572866477
        .long   1072359583
        .long   878562433
        .long   1015521741
        .long   171030293
        .long   1070794494
        .long   697153126
        .long   1072369159
        .long   1283515429
        .long   3163283189
        .long   2839424854
        .long   1070787759
        .long   3092190715
        .long   1072378786
        .long   814012168
        .long   3159523422
        .long   2799960843
        .long   1070781061
        .long   2380618042
        .long   1072388466
        .long   3149557219
        .long   3163320799
        .long   3504003472
        .long   1070774399
        .long   4076559943
        .long   1072398198
        .long   2119478331
        .long   3160758351
        .long   4112506593
        .long   1070767773
        .long   815859274
        .long   1072407984
        .long   240396590
        .long   3163487443
        .long   3790955393
        .long   1070761183
        .long   2420883922
        .long   1072417822
        .long   2049810052
        .long   1014119888
        .long   1709341917
        .long   1070754629
        .long   1540824585
        .long   1072427714
        .long   1064017011
        .long   3163487690
        .long   1337108031
        .long   1070748110
        .long   3716502172
        .long   1072437659
        .long   2303740125
        .long   1014042725
        .long   1853186616
        .long   1070741626
        .long   1610600570
        .long   1072447659
        .long   3766732298
        .long   1015760183
        .long   2440944790
        .long   1070735177
        .long   777507147
        .long   1072457713
        .long   4282924205
        .long   1015187533
        .long   2288159958
        .long   1070728763
        .long   2483480501
        .long   1072467821
        .long   1216371780
        .long   1013034172
        .long   586995997
        .long   1070722384
        .long   3706687593
        .long   1072477984
        .long   3521726939
        .long   1013253067
        .long   828946858
        .long   1070716039
        .long   1432208378
        .long   1072488203
        .long   1401068914
        .long   3162363963
        .long   2214878420
        .long   1070709728
        .long   1242007932
        .long   1072498477
        .long   1132034716
        .long   3163339831
        .long   3949972341
        .long   1070703451
        .long   135105010
        .long   1072508807
        .long   1906148728
        .long   3163375739
        .long   948735466
        .long   1070697209
        .long   3707479175
        .long   1072519192
        .long   3613079303
        .long   1014164738
        .long   1014845819
        .long   1070691000
        .long   382305176
        .long   1072529635
        .long   2347622376
        .long   3162578625
        .long   3366293073
        .long   1070684824
        .long   64696965
        .long   1072540134
        .long   1768797490
        .long   1015816960
        .long   2930322912
        .long   1070678682
        .long   4076975200
        .long   1072550689
        .long   2029000899
        .long   1015208535
        .long   3228316108
        .long   1070672573
        .long   863738719
        .long   1072561303
        .long   1326992220
        .long   3162613197
        .long   3490863953
        .long   1070666497
        .long   351641897
        .long   1072571974
        .long   2172261526
        .long   3163010599
        .long   2952712987
        .long   1070660454
        .long   3884662774
        .long   1072582702
        .long   2158611599
        .long   1014210185
        .long   852742562
        .long   1070654444
        .long   4224142467
        .long   1072593489
        .long   3389820386
        .long   1015207202
        .long   728909815
        .long   1070648466
        .long   2728693978
        .long   1072604335
        .long   396109971
        .long   3163462691
        .long   1828292879
        .long   1070642520
        .long   764307441
        .long   1072615240
        .long   3021057420
        .long   3163329523
        .long   3402036099
        .long   1070636606
        .long   3999357479
        .long   1072626203
        .long   2258941616
        .long   1015924724
        .long   410360776
        .long   1070630725
        .long   929806999
        .long   1072637227
        .long   3205336643
        .long   1015259557
        .long   702412510
        .long   1070624875
        .long   1533953344
        .long   1072648310
        .long   769171851
        .long   1015665633
        .long   3541402996
        .long   1070619056
        .long   2912730644
        .long   1072659453
        .long   3490067722
        .long   3163405074
        .long   3899555717
        .long   1070613269
        .long   2174652632
        .long   1072670657
        .long   4087714590
        .long   1014450259
        .long   1048019041
        .long   1070607514
        .long   730821105
        .long   1072681922
        .long   2523232743
        .long   1012067188
        .long   2851812149
        .long   1070601789
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
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   4277796864
        .long   1072049730
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
        .long   3164486458
        .long   1031600026
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
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   4294967128
        .long   1071644671
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   1431655910
        .long   1069897045
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   2898925341
        .long   1067799893
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
        .long   564252519
        .long   1065423121
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
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
        .long   1082531225
_vmldCoshHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   1048019041
        .long   1072704666
        .long   1398474845
        .long   3161559171
        .long   3541402996
        .long   1072716208
        .long   2759177317
        .long   1015903202
        .long   410360776
        .long   1072727877
        .long   1269990655
        .long   1013024446
        .long   1828292879
        .long   1072739672
        .long   1255956747
        .long   1016636974
        .long   852742562
        .long   1072751596
        .long   667253587
        .long   1010842135
        .long   3490863953
        .long   1072763649
        .long   960797498
        .long   3163997456
        .long   2930322912
        .long   1072775834
        .long   2599499422
        .long   3163762623
        .long   1014845819
        .long   1072788152
        .long   3117910646
        .long   3162607681
        .long   3949972341
        .long   1072800603
        .long   2068408548
        .long   1015962444
        .long   828946858
        .long   1072813191
        .long   10642492
        .long   1016988014
        .long   2288159958
        .long   1072825915
        .long   2169144469
        .long   1015924597
        .long   1853186616
        .long   1072838778
        .long   3066496371
        .long   1016705150
        .long   1709341917
        .long   1072851781
        .long   2571168217
        .long   1015201075
        .long   4112506593
        .long   1072864925
        .long   2947355221
        .long   1015419624
        .long   2799960843
        .long   1072878213
        .long   1423655381
        .long   1016070727
        .long   171030293
        .long   1072891646
        .long   3526460132
        .long   1015477354
        .long   2992903935
        .long   1072905224
        .long   2218154406
        .long   1016276769
        .long   926591435
        .long   1072918951
        .long   3208833762
        .long   3163962090
        .long   887463927
        .long   1072932827
        .long   3596744163
        .long   3161842742
        .long   1276261410
        .long   1072946854
        .long   300981948
        .long   1015732745
        .long   569847338
        .long   1072961034
        .long   472945272
        .long   3160339305
        .long   1617004845
        .long   1072975368
        .long   82804944
        .long   1011391354
        .long   3049340112
        .long   1072989858
        .long   3062915824
        .long   1014219171
        .long   3577096743
        .long   1073004506
        .long   2951496418
        .long   1014842263
        .long   1990012071
        .long   1073019314
        .long   3529070563
        .long   3163861769
        .long   1453150082
        .long   1073034283
        .long   498154669
        .long   3162536638
        .long   917841882
        .long   1073049415
        .long   18715565
        .long   1016707884
        .long   3712504873
        .long   1073064711
        .long   88491949
        .long   1016476236
        .long   363667784
        .long   1073080175
        .long   813753950
        .long   1016833785
        .long   2956612997
        .long   1073095806
        .long   2118169751
        .long   3163784129
        .long   2186617381
        .long   1073111608
        .long   2270764084
        .long   3164321289
        .long   1719614413
        .long   1073127582
        .long   330458198
        .long   3164331316
        .long   1013258799
        .long   1073143730
        .long   1748797611
        .long   3161177658
        .long   3907805044
        .long   1073160053
        .long   2257091225
        .long   3162598983
        .long   1447192521
        .long   1073176555
        .long   1462857171
        .long   3163563097
        .long   1944781191
        .long   1073193236
        .long   3993278767
        .long   3162772855
        .long   919555682
        .long   1073210099
        .long   3121969534
        .long   1013996802
        .long   2571947539
        .long   1073227145
        .long   3558159064
        .long   3164425245
        .long   2604962541
        .long   1073244377
        .long   2614425274
        .long   3164587768
        .long   1110089947
        .long   1073261797
        .long   1451641639
        .long   1016523249
        .long   2568320822
        .long   1073279406
        .long   2732824428
        .long   1015401491
        .long   2966275557
        .long   1073297207
        .long   2176155324
        .long   3160891335
        .long   2682146384
        .long   1073315202
        .long   2082178513
        .long   3164411995
        .long   2191782032
        .long   1073333393
        .long   2960257726
        .long   1014791238
        .long   2069751141
        .long   1073351782
        .long   1562170675
        .long   3163773257
        .long   2990417245
        .long   1073370371
        .long   3683467745
        .long   3164417902
        .long   1434058175
        .long   1073389163
        .long   251133233
        .long   1016134345
        .long   2572866477
        .long   1073408159
        .long   878562433
        .long   1016570317
        .long   3092190715
        .long   1073427362
        .long   814012168
        .long   3160571998
        .long   4076559943
        .long   1073446774
        .long   2119478331
        .long   3161806927
        .long   2420883922
        .long   1073466398
        .long   2049810052
        .long   1015168464
        .long   3716502172
        .long   1073486235
        .long   2303740125
        .long   1015091301
        .long   777507147
        .long   1073506289
        .long   4282924205
        .long   1016236109
        .long   3706687593
        .long   1073526560
        .long   3521726939
        .long   1014301643
        .long   1242007932
        .long   1073547053
        .long   1132034716
        .long   3164388407
        .long   3707479175
        .long   1073567768
        .long   3613079303
        .long   1015213314
        .long   64696965
        .long   1073588710
        .long   1768797490
        .long   1016865536
        .long   863738719
        .long   1073609879
        .long   1326992220
        .long   3163661773
        .long   3884662774
        .long   1073631278
        .long   2158611599
        .long   1015258761
        .long   2728693978
        .long   1073652911
        .long   396109971
        .long   3164511267
        .long   3999357479
        .long   1073674779
        .long   2258941616
        .long   1016973300
        .long   1533953344
        .long   1073696886
        .long   769171851
        .long   1016714209
        .long   2174652632
        .long   1073719233
        .long   4087714590
        .long   1015498835
        .long   0
        .long   1073741824
        .long   0
        .long   0
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
        .long   2411329662
        .long   1082536910
        .long   4277796864
        .long   1065758274
        .long   3164486458
        .long   1025308570
        .long   4294967295
        .long   2146435071
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   3875694624
        .long   1077247184
        .data
#endif
