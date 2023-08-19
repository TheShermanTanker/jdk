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
        .globl __jsvml_sinhf4_ha_l9

__jsvml_sinhf4_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 296
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovaps   xmm13, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm12
        vmovups   XMMWORD PTR [240+rsp], xmm6
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm12, xmm13, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        and       r13, -64
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1280]
        vxorps    xmm0, xmm12, xmm13
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        vfmadd213ps xmm2, xmm0, xmm3
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1344]
        vpcmpgtd  xmm4, xmm0, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1408]
        vmovmskps ecx, xmm4
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        vxorps    xmm6, xmm2, xmm3
        vsubps    xmm3, xmm2, xmm3
        vpsubd    xmm15, xmm5, xmm6
        vpsrld    xmm4, xmm15, 28
        vpslld    xmm14, xmm4, 4
        vpor      xmm15, xmm14, xmm6
        vpand     xmm5, xmm15, xmm5
        vfnmadd213ps xmm1, xmm3, xmm0
        vpslld    xmm2, xmm5, 4
        vmovd     edx, xmm2
        vfnmadd231ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        vmovd     xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rdx]
        vpextrd   r8d, xmm2, 2
        vpextrd   eax, xmm2, 1
        vpextrd   r9d, xmm2, 3
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r8]
        vpinsrd   xmm2, xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rax], 1
        vpinsrd   xmm4, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r9], 1
        vmovd     xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rdx]
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r8]
        vunpcklpd xmm14, xmm2, xmm4
        vpinsrd   xmm2, xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rax], 1
        vpinsrd   xmm4, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r9], 1
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+5568]
        vpunpcklqdq xmm3, xmm2, xmm4
        vpcmpgtd  xmm2, xmm15, xmm5
        vfmadd213ps xmm3, xmm1, xmm14
        vaddps    xmm4, xmm14, xmm14
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rdx]
        vpsubd    xmm5, xmm6, xmm5
        vpinsrd   xmm15, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rax], 1
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r8]
        vpinsrd   xmm14, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r9], 1
        vpunpcklqdq xmm14, xmm15, xmm14
        vandps    xmm15, xmm0, xmm2
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rdx]
        vandnps   xmm2, xmm2, xmm4
        vfmadd213ps xmm3, xmm1, xmm14
        vpinsrd   xmm14, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rax], 1
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r8]
        vpinsrd   xmm0, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r9], 1
        vpunpcklqdq xmm14, xmm14, xmm0
        vfmadd213ps xmm3, xmm1, xmm14
        vorps     xmm1, xmm2, xmm15
        mov       QWORD PTR [280+rsp], r13
        vaddps    xmm0, xmm1, xmm3
        vpslld    xmm1, xmm5, 19
        vpaddd    xmm2, xmm0, xmm1
        vorps     xmm0, xmm12, xmm2
        test      ecx, ecx
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm6, XMMWORD PTR [240+rsp]
        vmovups   xmm12, XMMWORD PTR [256+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm13
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B1_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, ecx

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

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_l9_B1_B3:
        .long   936705
        .long   2282571
        .long   1009731
        .long   1099834
        .long   972845
        .long   911396
        .long   849947
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_sinhf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_sinhf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_sinhf4_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_sinhf16_ha_z0

__jsvml_sinhf16_ha_z0:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L18:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        and       r13, -64
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+576]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+896]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+832]
        vpternlogd zmm4, zmm4, zmm4, 255
        vmovaps   zmm31, zmm0
        vandps    zmm30, zmm26, zmm31
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+512]
        vxorps    zmm27, zmm30, zmm31
        vfmadd213ps zmm25, zmm27, zmm0 {rn-sae}
        vpcmpd    k1, zmm27, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+704], 2
        vcmpps    k2, zmm5, zmm25, 0 {sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+256]
        vblendmps zmm22{k2}, zmm25, zmm0
        vsubps    zmm3, zmm22, zmm0 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+128]
        mov       QWORD PTR [1328+rsp], r13
        vpandnd   zmm4{k1}, zmm27, zmm27
        vfnmadd231ps zmm27, zmm3, zmm1 {rn-sae}
        vptestmd  k0, zmm4, zmm4
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal]
        vfnmadd231ps zmm27, zmm3, zmm24 {rn-sae}
        kmovw     r8d, k0
        vmulps    zmm25, zmm27, zmm27 {rn-sae}
        vmulps    zmm28, zmm28, zmm25 {rn-sae}
        vfmadd213ps zmm28, zmm27, zmm27 {rn-sae}
        vmulps    zmm27, zmm29, zmm25 {rn-sae}
        vpandd    zmm23, zmm22, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+640]
        vpxord    zmm2, zmm22, zmm23
        vpslld    zmm24, zmm2, 18
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+384]
        vpermt2ps zmm5, zmm23, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+320]
        vpermt2ps zmm4, zmm23, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+64]
        vpermt2ps zmm2, zmm23, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+448]
        vpsubd    zmm3, zmm5, zmm24
        vpaddd    zmm22, zmm4, zmm24
        vpermt2ps zmm0, zmm23, ZMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+192]
        vandnps   zmm23, zmm26, zmm2
        vsubps    zmm5, zmm22, zmm3 {rn-sae}
        vpaddd    zmm1, zmm0, zmm24
        vpsubd    zmm0, zmm2, zmm24
        vsubps    zmm26, zmm5, zmm22 {rn-sae}
        vaddps    zmm4, zmm22, zmm3 {rn-sae}
        vcmpps    k3, zmm23, zmm24, 17 {sae}
        vaddps    zmm2, zmm3, zmm26 {rn-sae}
        vxorps    zmm0{k3}, zmm0, zmm0
        vsubps    zmm1, zmm1, zmm2 {rn-sae}
        vsubps    zmm0, zmm1, zmm0 {rn-sae}
        vfmadd213ps zmm27, zmm5, zmm0 {rn-sae}
        vfmadd213ps zmm4, zmm28, zmm27 {rn-sae}
        vaddps    zmm29, zmm4, zmm5 {rn-sae}
        vorps     zmm0, zmm30, zmm29
        test      r8d, r8d
        jne       .L_B2_3

.L_B2_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B2_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B2_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B2_6

.L_B2_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B2_6:

        vmovups   ZMMWORD PTR [r13], zmm31
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B2_11

.L_B2_7:

        cmp       edx, eax
        je        .L_B2_2

.L_B2_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B2_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
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
        cmp       ebx, 16
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
        vmovups   zmm0, ZMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [1104+rsp]
        mov       edx, esi
        mov       rsi, QWORD PTR [1096+rsp]
        mov       rdi, QWORD PTR [1088+rsp]
        mov       rbp, QWORD PTR [1112+rsp]
        jmp       .L_B2_7

.L_B2_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B2_13
        .align    16, 0x90

.L_B2_16:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_11
        .rva    _unwind___jsvml_sinhf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf16_ha_z0_B11_B15:
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

        .rva    .L_B2_11
        .rva    .L_B2_16
        .rva    _unwind___jsvml_sinhf16_ha_z0_B11_B15

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_sinhf4_ha_e9

__jsvml_sinhf4_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L69:

        sub       rsp, 296
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovaps   xmm12, xmm0
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [224+rsp], xmm6
        mov       QWORD PTR [272+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vandps    xmm11, xmm12, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        and       r13, -64
        vxorps    xmm0, xmm11, xmm12
        vmulps    xmm6, xmm0, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1280]
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1344]
        vaddps    xmm4, xmm3, xmm6
        vxorps    xmm6, xmm4, xmm3
        vsubps    xmm3, xmm4, xmm3
        vpsubd    xmm15, xmm5, xmm6
        vpsrld    xmm13, xmm15, 28
        vmulps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        vpslld    xmm1, xmm13, 4
        vmulps    xmm15, xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        vpcmpgtd  xmm2, xmm0, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1408]
        vmovmskps ecx, xmm2
        vpor      xmm2, xmm1, xmm6
        vpand     xmm5, xmm2, xmm5
        vsubps    xmm2, xmm0, xmm4
        vpslld    xmm3, xmm5, 4
        vsubps    xmm4, xmm2, xmm15
        vmovd     edx, xmm3
        vpextrd   r8d, xmm3, 2
        vpextrd   eax, xmm3, 1
        vpextrd   r9d, xmm3, 3
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rdx]
        vmovd     xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r8]
        vpinsrd   xmm2, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rax], 1
        vpinsrd   xmm15, xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r9], 1
        vmovd     xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rdx]
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r8]
        vunpcklpd xmm1, xmm2, xmm15
        vpinsrd   xmm2, xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rax], 1
        vpinsrd   xmm15, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r9], 1
        vaddps    xmm13, xmm1, xmm1
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+5568]
        vpcmpgtd  xmm3, xmm3, xmm5
        vpsubd    xmm5, xmm6, xmm5
        vpunpcklqdq xmm2, xmm2, xmm15
        vmulps    xmm15, xmm2, xmm4
        vmovd     xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rdx]
        vaddps    xmm1, xmm1, xmm15
        vpinsrd   xmm2, xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rax], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r8]
        vpinsrd   xmm15, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r9], 1
        vpunpcklqdq xmm15, xmm2, xmm15
        vandps    xmm2, xmm0, xmm3
        vmulps    xmm0, xmm4, xmm1
        vandnps   xmm3, xmm3, xmm13
        vmovd     xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rdx]
        vorps     xmm2, xmm3, xmm2
        mov       QWORD PTR [280+rsp], r13
        vaddps    xmm0, xmm15, xmm0
        vpinsrd   xmm15, xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rax], 1
        vmovd     xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r8]
        vpinsrd   xmm1, xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r9], 1
        vmulps    xmm4, xmm4, xmm0
        vpunpcklqdq xmm15, xmm15, xmm1
        vaddps    xmm0, xmm15, xmm4
        vaddps    xmm1, xmm2, xmm0
        vpslld    xmm0, xmm5, 19
        vpaddd    xmm2, xmm1, xmm0
        vorps     xmm0, xmm11, xmm2
        test      ecx, ecx
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm6, XMMWORD PTR [224+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [272+rsp]
        add       rsp, 296
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm12
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B3_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, ecx

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

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_e9_B1_B3:
        .long   936705
        .long   2282571
        .long   944195
        .long   1095738
        .long   1034285
        .long   907300
        .long   849947
        .long   2425099

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_sinhf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_sinhf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_sinhf4_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_sinhf8_ha_e9

__jsvml_sinhf8_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L86:

        push      rsi
        push      rdi
        push      r12
        sub       rsp, 528
        lea       rdi, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [320+rsp], ymm15
        vmovups   YMMWORD PTR [384+rsp], ymm14
        vmovups   YMMWORD PTR [352+rsp], ymm13
        vpxor     xmm14, xmm14, xmm14
        vmovups   YMMWORD PTR [416+rsp], ymm12
        vmovups   YMMWORD PTR [448+rsp], ymm11
        vmovups   YMMWORD PTR [480+rsp], ymm10
        vmovups   YMMWORD PTR [288+rsp], ymm7
        vmovups   YMMWORD PTR [256+rsp], ymm6
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [159+rsp]
        vmovaps   ymm12, ymm0
        and       r13, -64
        vandps    ymm11, ymm12, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        vxorps    ymm1, ymm11, ymm12
        vmovups   ymm15, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1280]
        vmulps    ymm5, ymm1, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        vmovups   xmm7, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1408]
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1344]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+5568]
        vaddps    ymm4, ymm15, ymm5
        mov       QWORD PTR [520+rsp], r13
        vpcmpgtd  xmm5, xmm1, xmm7
        vextractf128 xmm10, ymm1, 1
        vpcmpgtd  xmm2, xmm10, xmm7
        vxorps    ymm7, ymm4, ymm15
        vpackssdw xmm3, xmm5, xmm2
        vsubps    ymm15, ymm4, ymm15
        vpacksswb xmm13, xmm3, xmm14
        vpmovmskb esi, xmm13
        vmulps    ymm4, ymm15, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        vsubps    ymm4, ymm1, ymm4
        vpsubd    xmm5, xmm6, xmm7
        vextractf128 xmm10, ymm7, 1
        vpsrld    xmm2, xmm5, 28
        vpslld    xmm3, xmm2, 4
        vpor      xmm14, xmm3, xmm7
        vpsubd    xmm2, xmm6, xmm10
        vpand     xmm5, xmm14, xmm6
        vpsrld    xmm3, xmm2, 28
        vpslld    xmm13, xmm3, 4
        vpslld    xmm3, xmm5, 4
        vpor      xmm2, xmm13, xmm10
        vpand     xmm6, xmm2, xmm6
        vmulps    ymm2, ymm15, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        vpslld    xmm15, xmm6, 4
        vmovd     r11d, xmm3
        vmovd     ecx, xmm15
        vsubps    ymm4, ymm4, ymm2
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+r11]
        vpextrd   r9d, xmm3, 2
        vpextrd   r10d, xmm3, 1
        vpextrd   r8d, xmm3, 3
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+r9]
        vpinsrd   xmm2, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+r10], 1
        vpinsrd   xmm3, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+r8], 1
        vpextrd   edx, xmm15, 1
        vpextrd   eax, xmm15, 2
        vpextrd   r12d, xmm15, 3
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+rcx]
        vpunpcklqdq xmm3, xmm2, xmm3
        vpinsrd   xmm2, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+rdx], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+rax]
        vpinsrd   xmm14, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rdi+r12], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+r9]
        vpunpcklqdq xmm13, xmm2, xmm14
        vinsertf128 ymm14, ymm3, xmm13, 1
        vmovd     xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+r11]
        vpinsrd   xmm2, xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+r10], 1
        vpinsrd   xmm3, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+r8], 1
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+rcx]
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+rax]
        vpunpcklqdq xmm2, xmm2, xmm3
        vpinsrd   xmm3, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+rdx], 1
        vpinsrd   xmm13, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rdi+r12], 1
        vpunpcklqdq xmm15, xmm3, xmm13
        vinsertf128 ymm15, ymm2, xmm15, 1
        vpcmpgtd  xmm2, xmm0, xmm5
        vmulps    ymm15, ymm15, ymm4
        vpcmpgtd  xmm0, xmm0, xmm6
        vpsubd    xmm5, xmm7, xmm5
        vpsubd    xmm6, xmm10, xmm6
        vpslld    xmm7, xmm5, 19
        vpslld    xmm6, xmm6, 19
        vaddps    ymm13, ymm14, ymm15
        vmulps    ymm13, ymm4, ymm13
        vinsertf128 ymm3, ymm2, xmm0, 1
        vaddps    ymm2, ymm14, ymm14
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+r11]
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+r9]
        vpinsrd   xmm15, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+r10], 1
        vpinsrd   xmm14, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+r8], 1
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+rcx]
        vpunpcklqdq xmm14, xmm15, xmm14
        vpinsrd   xmm15, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+rdx], 1
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+rax]
        vpinsrd   xmm0, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rdi+r12], 1
        vpunpcklqdq xmm15, xmm15, xmm0
        vandps    ymm1, ymm1, ymm3
        vandnps   ymm2, ymm3, ymm2
        vorps     ymm1, ymm2, ymm1
        vinsertf128 ymm14, ymm14, xmm15, 1
        vaddps    ymm15, ymm14, ymm13
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+r11]
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+r9]
        vpinsrd   xmm0, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+r10], 1
        vpinsrd   xmm14, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+r8], 1
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+rcx]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+rdx], 1
        vmulps    ymm4, ymm4, ymm15
        vpunpcklqdq xmm14, xmm0, xmm14
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+rax]
        vpinsrd   xmm0, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rdi+r12], 1
        vpunpcklqdq xmm13, xmm13, xmm0
        vinsertf128 ymm14, ymm14, xmm13, 1
        vaddps    ymm3, ymm14, ymm4
        vaddps    ymm0, ymm1, ymm3
        vextractf128 xmm1, ymm0, 1
        vpaddd    xmm0, xmm0, xmm7
        vpaddd    xmm2, xmm1, xmm6
        vinsertf128 ymm3, ymm0, xmm2, 1
        vorps     ymm0, ymm11, ymm3
        test      sil, sil
        jne       .L_B4_3

.L_B4_2:

        vmovups   ymm6, YMMWORD PTR [256+rsp]
        vmovups   ymm7, YMMWORD PTR [288+rsp]
        vmovups   ymm10, YMMWORD PTR [480+rsp]
        vmovups   ymm11, YMMWORD PTR [448+rsp]
        vmovups   ymm12, YMMWORD PTR [416+rsp]
        vmovups   ymm13, YMMWORD PTR [352+rsp]
        vmovups   ymm14, YMMWORD PTR [384+rsp]
        vmovups   ymm15, YMMWORD PTR [320+rsp]
        mov       r13, QWORD PTR [512+rsp]
        add       rsp, 528
        pop       r12
        pop       rdi
        pop       rsi
        ret

.L_B4_3:

        vmovups   YMMWORD PTR [r13], ymm12
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      esi, esi
        je        .L_B4_2

.L_B4_6:

        vmovups   YMMWORD PTR [64+rsp], ymm8
        xor       edi, edi
        vmovups   YMMWORD PTR [32+rsp], ymm9

.L_B4_7:

        bt        esi, edi
        jc        .L_B4_10

.L_B4_8:

        inc       edi
        cmp       edi, 8
        jl        .L_B4_7

.L_B4_9:

        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm9, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rdi*4]
        lea       rdx, QWORD PTR [64+r13+rdi*4]

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf8_ha_e9_B1_B3:
        .long   1534721
        .long   4248683
        .long   1075299
        .long   1210458
        .long   2009169
        .long   1882184
        .long   1755199
        .long   1497137
        .long   1632296
        .long   1374239
        .long   4325647
        .long   1879490568
        .long   24581

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_sinhf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf8_ha_e9_B6_B10:
        .long   265761
        .long   169998
        .long   296966
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_sinhf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_sinhf8_ha_e9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_sinhf8_ha_l9

__jsvml_sinhf8_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L109:

        push      rbx
        push      rsi
        push      rbp
        sub       rsp, 528
        lea       rbp, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [352+rsp], ymm15
        vmovups   YMMWORD PTR [384+rsp], ymm14
        vmovups   YMMWORD PTR [416+rsp], ymm13
        vmovups   YMMWORD PTR [448+rsp], ymm12
        vmovups   YMMWORD PTR [480+rsp], ymm11
        vmovups   YMMWORD PTR [320+rsp], ymm9
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1280]
        and       r13, -64
        vmovups   ymm15, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1344]
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        vmovaps   ymm12, ymm0
        vandps    ymm11, ymm12, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        vxorps    ymm0, ymm11, ymm12
        vfmadd213ps ymm15, ymm0, ymm3
        vpcmpgtd  ymm9, ymm0, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1408]
        vmovmskps ebx, ymm9
        vxorps    ymm9, ymm15, ymm3
        vpsubd    ymm2, ymm5, ymm9
        vsubps    ymm3, ymm15, ymm3
        vpsrld    ymm4, ymm2, 28
        vfnmadd213ps ymm1, ymm3, ymm0
        vpslld    ymm2, ymm4, 4
        vfnmadd231ps ymm1, ymm3, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        vpor      ymm4, ymm2, ymm9
        vpand     ymm5, ymm4, ymm5
        vpslld    ymm15, ymm5, 4
        mov       QWORD PTR [520+rsp], r13
        vmovd     r10d, xmm15
        vextracti128 xmm4, ymm15, 1
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+r10]
        vpextrd   r8d, xmm15, 2
        vpextrd   r9d, xmm15, 1
        vpextrd   esi, xmm15, 3
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+r8]
        vpinsrd   xmm3, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+r9], 1
        vpinsrd   xmm15, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+rsi], 1
        vmovd     ecx, xmm4
        vpunpcklqdq xmm2, xmm3, xmm15
        vpextrd   eax, xmm4, 2
        vpextrd   edx, xmm4, 1
        vpextrd   r11d, xmm4, 3
        vmovd     xmm4, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+rcx]
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+rax]
        vpinsrd   xmm13, xmm4, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+rdx], 1
        vpinsrd   xmm3, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+rbp+r11], 1
        vmovd     xmm4, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+r8]
        vpunpcklqdq xmm15, xmm13, xmm3
        vpinsrd   xmm3, xmm4, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+rsi], 1
        vinsertf128 ymm13, ymm2, xmm15, 1
        vmovd     xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+r10]
        vpinsrd   xmm14, xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+r9], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+rcx]
        vmovd     xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+rax]
        vpinsrd   xmm4, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+rdx], 1
        vpunpcklqdq xmm3, xmm14, xmm3
        vpinsrd   xmm14, xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+rbp+r11], 1
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+5568]
        vpunpcklqdq xmm15, xmm4, xmm14
        vaddps    ymm4, ymm13, ymm13
        vpcmpgtd  ymm2, ymm2, ymm5
        vpsubd    ymm5, ymm9, ymm5
        vinsertf128 ymm3, ymm3, xmm15, 1
        vfmadd213ps ymm3, ymm1, ymm13
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+r10]
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+r8]
        vpinsrd   xmm14, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+r9], 1
        vpinsrd   xmm13, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+rsi], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+rcx]
        vpinsrd   xmm15, xmm15, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+rdx], 1
        vpunpcklqdq xmm14, xmm14, xmm13
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+rax]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+rbp+r11], 1
        vpunpcklqdq xmm15, xmm15, xmm13
        vinsertf128 ymm14, ymm14, xmm15, 1
        vandps    ymm15, ymm0, ymm2
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+r10]
        vfmadd213ps ymm3, ymm1, ymm14
        vmovd     xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+r8]
        vpinsrd   xmm13, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+r9], 1
        vpinsrd   xmm0, xmm14, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+rsi], 1
        vpunpcklqdq xmm14, xmm13, xmm0
        vmovd     xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+rcx]
        vmovd     xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+rax]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+rdx], 1
        vpinsrd   xmm0, xmm0, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+rbp+r11], 1
        vpunpcklqdq xmm13, xmm13, xmm0
        vandnps   ymm2, ymm2, ymm4
        vinsertf128 ymm14, ymm14, xmm13, 1
        vfmadd213ps ymm3, ymm1, ymm14
        vorps     ymm1, ymm2, ymm15
        vaddps    ymm0, ymm1, ymm3
        vpslld    ymm1, ymm5, 19
        vpaddd    ymm2, ymm0, ymm1
        vorps     ymm0, ymm11, ymm2
        test      ebx, ebx
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm9, YMMWORD PTR [320+rsp]
        vmovups   ymm11, YMMWORD PTR [480+rsp]
        vmovups   ymm12, YMMWORD PTR [448+rsp]
        vmovups   ymm13, YMMWORD PTR [416+rsp]
        vmovups   ymm14, YMMWORD PTR [384+rsp]
        vmovups   ymm15, YMMWORD PTR [352+rsp]
        mov       r13, QWORD PTR [512+rsp]
        add       rsp, 528
        pop       rbp
        pop       rsi
        pop       rbx
        ret

.L_B5_3:

        vmovups   YMMWORD PTR [r13], ymm12
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B5_6:

        vmovups   YMMWORD PTR [128+rsp], ymm6
        xor       ebp, ebp
        vmovups   YMMWORD PTR [96+rsp], ymm7
        vmovups   YMMWORD PTR [64+rsp], ymm8
        vmovups   YMMWORD PTR [32+rsp], ymm10

.L_B5_7:

        bt        ebx, ebp
        jc        .L_B5_10

.L_B5_8:

        inc       ebp
        cmp       ebp, 8
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm6, YMMWORD PTR [128+rsp]
        vmovups   ymm7, YMMWORD PTR [96+rsp]
        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm10, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbp*4]
        lea       rdx, QWORD PTR [64+r13+rbp*4]

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf8_ha_l9_B1_B3:
        .long   1266433
        .long   4248659
        .long   1349707
        .long   2013250
        .long   1886265
        .long   1759280
        .long   1632295
        .long   1505310
        .long   4325646
        .long   1611026439
        .long   12293

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_sinhf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf8_ha_l9_B6_B10:
        .long   531745
        .long   174109
        .long   296983
        .long   423953
        .long   550921
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_sinhf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_sinhf8_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_sinhf4_ha_ex

__jsvml_sinhf4_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L132:

        sub       rsp, 312
        lea       r10, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [256+rsp], xmm12
        movaps    xmm12, xmm0
        movups    XMMWORD PTR [240+rsp], xmm10
        movups    XMMWORD PTR [272+rsp], xmm9
        movups    XMMWORD PTR [192+rsp], xmm8
        movups    XMMWORD PTR [208+rsp], xmm7
        movups    XMMWORD PTR [224+rsp], xmm6
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm0, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1152]
        and       r13, -64
        andps     xmm0, xmm12
        movaps    xmm10, xmm0
        movups    xmm5, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+960]
        pxor      xmm10, xmm12
        mulps     xmm5, xmm10
        movaps    xmm2, xmm10
        movups    xmm4, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1280]
        movaps    xmm7, xmm10
        movdqu    xmm3, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1344]
        addps     xmm5, xmm4
        movaps    xmm8, xmm5
        movdqa    xmm9, xmm3
        pxor      xmm8, xmm4
        subps     xmm5, xmm4
        psubd     xmm9, xmm8
        psrld     xmm9, 28
        movups    xmm1, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1024]
        pslld     xmm9, 4
        mulps     xmm1, xmm5
        por       xmm9, xmm8
        pand      xmm9, xmm3
        subps     xmm7, xmm1
        movdqa    xmm4, xmm9
        psubd     xmm8, xmm9
        movups    xmm6, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1088]
        pslld     xmm4, 4
        pcmpgtd   xmm2, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+1408]
        pslld     xmm8, 19
        mulps     xmm6, xmm5
        movmskps  ecx, xmm2
        movd      edx, xmm4
        pshufd    xmm2, xmm4, 1
        subps     xmm7, xmm6
        movd      eax, xmm2
        pshufd    xmm3, xmm4, 2
        pshufd    xmm1, xmm4, 3
        movd      r8d, xmm3
        movd      r9d, xmm1
        movd      xmm6, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rdx]
        movd      xmm5, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+rax]
        movd      xmm3, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r8]
        movd      xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1480+r10+r9]
        movd      xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r9]
        punpckldq xmm6, xmm5
        punpckldq xmm3, xmm2
        movd      xmm5, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rdx]
        movd      xmm4, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+rax]
        movd      xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1484+r10+r8]
        punpckldq xmm5, xmm4
        punpckldq xmm2, xmm1
        punpcklqdq xmm5, xmm2
        mulps     xmm5, xmm7
        unpcklpd  xmm6, xmm3
        movaps    xmm3, xmm6
        movd      xmm2, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rdx]
        addps     xmm3, xmm6
        addps     xmm6, xmm5
        mulps     xmm6, xmm7
        movd      xmm5, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+rax]
        punpckldq xmm2, xmm5
        movd      xmm5, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r8]
        movd      xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1476+r10+r9]
        punpckldq xmm5, xmm1
        punpcklqdq xmm2, xmm5
        movd      xmm1, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rdx]
        addps     xmm2, xmm6
        mulps     xmm7, xmm2
        movd      xmm6, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+rax]
        punpckldq xmm1, xmm6
        movd      xmm6, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r8]
        movd      xmm5, DWORD PTR ["__jsvml_ssinh_ha_data_internal"@imgrel+1472+r10+r9]
        punpckldq xmm6, xmm5
        punpcklqdq xmm1, xmm6
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_ssinh_ha_data_internal+5568]
        addps     xmm1, xmm7
        pcmpgtd   xmm4, xmm9
        andps     xmm10, xmm4
        andnps    xmm4, xmm3
        orps      xmm4, xmm10
        mov       QWORD PTR [296+rsp], r13
        addps     xmm4, xmm1
        paddd     xmm4, xmm8
        orps      xmm0, xmm4
        test      ecx, ecx
        jne       .L_B6_3

.L_B6_2:

        movups    xmm6, XMMWORD PTR [224+rsp]
        movups    xmm7, XMMWORD PTR [208+rsp]
        movups    xmm8, XMMWORD PTR [192+rsp]
        movups    xmm9, XMMWORD PTR [272+rsp]
        movups    xmm10, XMMWORD PTR [240+rsp]
        movups    xmm12, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B6_3:

        movups    XMMWORD PTR [r13], xmm12
        movups    XMMWORD PTR [64+r13], xmm0

.L_B6_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, ecx

.L_B6_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_ssinh_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_sinhf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_ex_B1_B3:
        .long   1069569
        .long   2413650
        .long   944202
        .long   882754
        .long   821306
        .long   1153073
        .long   1026088
        .long   1099803
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_sinhf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_sinhf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_sinhf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_sinhf4_ha_ex_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_ssinh_ha_cout_rare_internal

__jsvml_ssinh_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L151:

        sub       rsp, 216
        mov       r9, rcx
        movups    XMMWORD PTR [80+rsp], xmm15
        xor       eax, eax
        movups    XMMWORD PTR [96+rsp], xmm14
        movups    XMMWORD PTR [112+rsp], xmm13
        movzx     r8d, WORD PTR [2+r9]
        and       r8d, 32640
        movss     xmm2, DWORD PTR [r9]
        movups    XMMWORD PTR [128+rsp], xmm12
        movups    XMMWORD PTR [144+rsp], xmm11
        movups    XMMWORD PTR [160+rsp], xmm10
        movups    XMMWORD PTR [176+rsp], xmm9
        movups    XMMWORD PTR [192+rsp], xmm8
        cmp       r8d, 32640
        je        .L_B7_17

.L_B7_2:

        cvtss2sd  xmm2, xmm2
        movsd     QWORD PTR [208+rsp], xmm2
        movzx     ecx, WORD PTR [214+rsp]
        and       ecx, 32752
        movsd     QWORD PTR [56+rsp], xmm2
        shr       ecx, 4
        and       BYTE PTR [63+rsp], 127
        test      ecx, ecx
        jle       .L_B7_16

.L_B7_3:

        cmp       ecx, 969
        jle       .L_B7_14

.L_B7_4:

        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1136]
        comisd    xmm1, xmm0
        jbe       .L_B7_13

.L_B7_5:

        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1184]
        comisd    xmm1, xmm0
        jbe       .L_B7_9

.L_B7_6:

        comisd    xmm0, QWORD PTR [rip+_vmldSinhHATab+1176]
        jb        .L_B7_8

.L_B7_7:

        movsd     xmm8, QWORD PTR [rip+_vmldSinhHATab+1112]
        mulsd     xmm8, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmldSinhHATab+1144]
        mov       rcx, QWORD PTR [rip+_vmldSinhHATab+8]
        mov       r9, rcx
        shr       r9, 48
        addsd     xmm8, QWORD PTR [rip+_vmldSinhHATab+1120]
        movsd     QWORD PTR [48+rsp], xmm8
        and       r9d, -32753
        movsd     xmm10, QWORD PTR [48+rsp]
        mov       r11d, DWORD PTR [48+rsp]
        mov       r8d, r11d
        shr       r8d, 6
        and       r11d, 63
        mov       QWORD PTR [72+rsp], rcx
        subsd     xmm10, QWORD PTR [rip+_vmldSinhHATab+1120]
        mulsd     xmm5, xmm10
        lea       r10d, DWORD PTR [1023+r8]
        xorps     xmm10, XMMWORD PTR [rip+_2il0floatpacket_103]
        add       r8d, 1022
        mulsd     xmm10, QWORD PTR [rip+_vmldSinhHATab+1152]
        subsd     xmm0, xmm5
        movaps    xmm3, xmm0
        movaps    xmm1, xmm0
        movsd     xmm5, QWORD PTR [rip+_vmldSinhHATab+1128]
        and       r8d, 2047
        shl       r8d, 4
        lea       ecx, DWORD PTR [r11+r11]
        or        r9d, r8d
        lea       r8, QWORD PTR [rip+__ImageBase]
        neg       r10d
        lea       r11d, DWORD PTR [1+r11+r11]
        add       r10d, -4
        addsd     xmm3, xmm10
        movsd     QWORD PTR [64+rsp], xmm3
        and       r10d, 2047
        movsd     xmm9, QWORD PTR [64+rsp]
        mov       WORD PTR [78+rsp], r9w
        and       r9d, -32753
        shl       r10d, 4
        subsd     xmm1, xmm9
        movsd     QWORD PTR [32+rsp], xmm1
        or        r9d, r10d
        movsd     xmm4, QWORD PTR [64+rsp]
        movsd     xmm2, QWORD PTR [32+rsp]
        addsd     xmm4, xmm2
        movsd     QWORD PTR [40+rsp], xmm4
        movsd     xmm13, QWORD PTR [32+rsp]
        addsd     xmm10, xmm13
        movsd     xmm13, QWORD PTR [72+rsp]
        movsd     QWORD PTR [32+rsp], xmm10
        movsd     xmm15, QWORD PTR [40+rsp]
        mov       WORD PTR [78+rsp], r9w
        subsd     xmm0, xmm15
        movsd     QWORD PTR [40+rsp], xmm0
        mov       r9, r8
        movsd     xmm8, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [40+rsp]
        movsd     xmm10, QWORD PTR [72+rsp]
        addsd     xmm8, xmm0
        movsd     QWORD PTR [40+rsp], xmm8
        movsd     xmm4, QWORD PTR [64+rsp]
        mulsd     xmm5, xmm4
        movaps    xmm1, xmm4
        movsd     xmm2, QWORD PTR [40+rsp]
        movaps    xmm14, xmm4
        movsd     QWORD PTR [64+rsp], xmm5
        movsd     xmm3, QWORD PTR [64+rsp]
        mulsd     xmm14, xmm4
        subsd     xmm3, xmm4
        movsd     QWORD PTR [32+rsp], xmm3
        movsd     xmm11, QWORD PTR [64+rsp]
        movsd     xmm12, QWORD PTR [32+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1064]
        subsd     xmm11, xmm12
        mulsd     xmm0, xmm14
        movsd     QWORD PTR [64+rsp], xmm11
        movsd     xmm9, QWORD PTR [64+rsp]
        movsd     xmm12, QWORD PTR ["_vmldSinhHATab"@imgrel+r8+r11*8]
        subsd     xmm1, xmm9
        mulsd     xmm12, xmm13
        addsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1048]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1072]
        mulsd     xmm1, xmm14
        mulsd     xmm0, xmm14
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1056]
        mulsd     xmm0, xmm4
        mulsd     xmm1, xmm14
        movsd     xmm5, QWORD PTR [64+rsp]
        movsd     xmm3, QWORD PTR [32+rsp]
        mov       r11b, BYTE PTR [215+rsp]
        and       r11b, -128
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1040]
        mulsd     xmm1, xmm14
        movsd     xmm14, QWORD PTR ["_vmldSinhHATab"@imgrel+r8+rcx*8]
        neg       ecx
        mulsd     xmm14, xmm13
        movaps    xmm8, xmm14
        lea       r10d, DWORD PTR [128+rcx]
        movsd     xmm11, QWORD PTR ["_vmldSinhHATab"@imgrel+r8+r10*8]
        add       ecx, 129
        mulsd     xmm11, xmm10
        movsd     xmm15, QWORD PTR ["_vmldSinhHATab"@imgrel+r9+rcx*8]
        subsd     xmm8, xmm11
        mulsd     xmm15, xmm10
        movsd     QWORD PTR [64+rsp], xmm8
        movaps    xmm8, xmm14
        movsd     xmm9, QWORD PTR [64+rsp]
        subsd     xmm8, xmm9
        subsd     xmm8, xmm11
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm9, QWORD PTR [64+rsp]
        movsd     xmm8, QWORD PTR [32+rsp]
        movaps    xmm13, xmm9
        subsd     xmm8, xmm15
        addsd     xmm8, xmm12
        addsd     xmm12, xmm15
        addsd     xmm13, xmm8
        movsd     QWORD PTR [64+rsp], xmm13
        movaps    xmm13, xmm14
        movsd     xmm10, QWORD PTR [64+rsp]
        addsd     xmm13, xmm11
        subsd     xmm9, xmm10
        addsd     xmm9, xmm8
        movsd     QWORD PTR [32+rsp], xmm9
        movsd     xmm8, QWORD PTR [64+rsp]
        movsd     xmm9, QWORD PTR [32+rsp]
        movsd     QWORD PTR [64+rsp], xmm13
        movsd     xmm10, QWORD PTR [64+rsp]
        subsd     xmm14, xmm10
        addsd     xmm14, xmm11
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm14, QWORD PTR [64+rsp]
        movsd     xmm11, QWORD PTR [32+rsp]
        addsd     xmm11, xmm12
        movaps    xmm12, xmm14
        addsd     xmm12, xmm11
        movsd     QWORD PTR [64+rsp], xmm12
        movsd     xmm15, QWORD PTR [64+rsp]
        movsd     xmm12, QWORD PTR [rip+_vmldSinhHATab+1128]
        subsd     xmm14, xmm15
        addsd     xmm14, xmm11
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm14, QWORD PTR [64+rsp]
        mulsd     xmm12, xmm14
        movsd     xmm13, QWORD PTR [32+rsp]
        movsd     QWORD PTR [64+rsp], xmm12
        movsd     xmm10, QWORD PTR [64+rsp]
        mulsd     xmm4, xmm13
        subsd     xmm10, xmm14
        movsd     QWORD PTR [32+rsp], xmm10
        movaps    xmm10, xmm2
        movsd     xmm11, QWORD PTR [64+rsp]
        movsd     xmm15, QWORD PTR [32+rsp]
        mulsd     xmm10, xmm13
        subsd     xmm11, xmm15
        mulsd     xmm2, xmm14
        movaps    xmm15, xmm0
        mulsd     xmm15, xmm13
        movsd     QWORD PTR [64+rsp], xmm11
        movaps    xmm11, xmm14
        mulsd     xmm14, xmm0
        addsd     xmm10, xmm15
        movaps    xmm15, xmm1
        mulsd     xmm15, xmm9
        mulsd     xmm1, xmm8
        addsd     xmm10, xmm15
        movsd     xmm12, QWORD PTR [64+rsp]
        addsd     xmm10, xmm4
        subsd     xmm11, xmm12
        addsd     xmm10, xmm2
        movaps    xmm2, xmm14
        movaps    xmm4, xmm3
        movsd     QWORD PTR [32+rsp], xmm11
        addsd     xmm2, xmm1
        addsd     xmm9, xmm10
        movsd     xmm12, QWORD PTR [64+rsp]
        movsd     xmm11, QWORD PTR [32+rsp]
        movsd     QWORD PTR [64+rsp], xmm2
        movaps    xmm2, xmm8
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm4, xmm11
        subsd     xmm14, xmm0
        mulsd     xmm11, xmm5
        mulsd     xmm3, xmm12
        addsd     xmm14, xmm1
        mulsd     xmm5, xmm12
        movsd     QWORD PTR [32+rsp], xmm14
        movsd     xmm0, QWORD PTR [64+rsp]
        movsd     xmm1, QWORD PTR [32+rsp]
        addsd     xmm1, xmm9
        addsd     xmm1, xmm4
        addsd     xmm1, xmm11
        addsd     xmm1, xmm3
        movaps    xmm3, xmm0
        addsd     xmm3, xmm5
        movsd     QWORD PTR [64+rsp], xmm3
        movsd     xmm4, QWORD PTR [64+rsp]
        subsd     xmm5, xmm4
        addsd     xmm5, xmm0
        movsd     QWORD PTR [32+rsp], xmm5
        movsd     xmm9, QWORD PTR [64+rsp]
        movsd     xmm10, QWORD PTR [32+rsp]
        addsd     xmm2, xmm9
        addsd     xmm10, xmm1
        movsd     QWORD PTR [64+rsp], xmm2
        movsd     xmm5, QWORD PTR [64+rsp]
        subsd     xmm8, xmm5
        addsd     xmm8, xmm9
        movsd     QWORD PTR [32+rsp], xmm8
        movsd     xmm8, QWORD PTR [64+rsp]
        movsd     xmm11, QWORD PTR [32+rsp]
        addsd     xmm11, xmm10
        addsd     xmm11, xmm8
        movsd     QWORD PTR [56+rsp], xmm11
        mov       cl, BYTE PTR [63+rsp]
        and       cl, 127
        or        cl, r11b
        mov       BYTE PTR [63+rsp], cl
        movsd     xmm12, QWORD PTR [56+rsp]
        cvtsd2ss  xmm12, xmm12
        movss     DWORD PTR [rdx], xmm12
        jmp       .L_B7_15

.L_B7_8:

        movaps    xmm2, xmm0
        mulsd     xmm2, xmm0
        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1104]
        mulsd     xmm1, xmm2
        mov       cl, BYTE PTR [215+rsp]
        and       cl, -128
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1096]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1088]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1080]
        mulsd     xmm2, xmm1
        mulsd     xmm2, xmm0
        addsd     xmm0, xmm2
        movsd     QWORD PTR [56+rsp], xmm0
        mov       r8b, BYTE PTR [63+rsp]
        and       r8b, 127
        or        r8b, cl
        mov       BYTE PTR [63+rsp], r8b
        movsd     xmm0, QWORD PTR [56+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_15

.L_B7_9:

        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1112]
        lea       r9, QWORD PTR [rip+__ImageBase]
        mulsd     xmm1, xmm0
        movsd     xmm2, QWORD PTR [rip+_vmldSinhHATab+1144]
        movsd     xmm3, QWORD PTR [rip+_vmldSinhHATab+1152]
        mov       rcx, QWORD PTR [rip+_vmldSinhHATab+8]
        mov       QWORD PTR [72+rsp], rcx
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1120]
        movsd     QWORD PTR [48+rsp], xmm1
        movsd     xmm4, QWORD PTR [48+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1072]
        mov       ecx, DWORD PTR [48+rsp]
        mov       r10d, ecx
        and       r10d, 63
        subsd     xmm4, QWORD PTR [rip+_vmldSinhHATab+1120]
        mulsd     xmm2, xmm4
        lea       r8d, DWORD PTR [r10+r10]
        mulsd     xmm4, xmm3
        subsd     xmm0, xmm2
        shr       ecx, 6
        lea       r11d, DWORD PTR [1+r10+r10]
        add       ecx, 1022
        subsd     xmm0, xmm4
        mulsd     xmm1, xmm0
        and       ecx, 2047
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1064]
        mulsd     xmm1, xmm0
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1056]
        mulsd     xmm1, xmm0
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1048]
        mulsd     xmm1, xmm0
        addsd     xmm1, QWORD PTR [rip+_vmldSinhHATab+1040]
        mulsd     xmm1, xmm0
        mulsd     xmm1, xmm0
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR ["_vmldSinhHATab"@imgrel+r9+r8*8]
        mulsd     xmm1, xmm0
        mov       r8, r9
        addsd     xmm1, QWORD PTR ["_vmldSinhHATab"@imgrel+r8+r11*8]
        addsd     xmm1, xmm0
        cmp       ecx, 2046
        ja        .L_B7_11

.L_B7_10:

        mov       r8, QWORD PTR [rip+_vmldSinhHATab+8]
        shr       r8, 48
        shl       ecx, 4
        and       r8d, -32753
        or        r8d, ecx
        mov       WORD PTR [78+rsp], r8w
        movsd     xmm0, QWORD PTR [72+rsp]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [56+rsp], xmm0
        jmp       .L_B7_12

.L_B7_11:

        dec       ecx
        and       ecx, 2047
        movzx     r8d, WORD PTR [78+rsp]
        shl       ecx, 4
        and       r8d, -32753
        or        r8d, ecx
        mov       WORD PTR [78+rsp], r8w
        movsd     xmm0, QWORD PTR [72+rsp]
        mulsd     xmm0, xmm1
        mulsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1024]
        movsd     QWORD PTR [56+rsp], xmm0

.L_B7_12:

        mov       r8b, BYTE PTR [63+rsp]
        mov       cl, BYTE PTR [215+rsp]
        and       r8b, 127
        and       cl, -128
        or        r8b, cl
        mov       BYTE PTR [63+rsp], r8b
        movsd     xmm0, QWORD PTR [56+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_15

.L_B7_13:

        movsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1168]
        mov       eax, 3
        mulsd     xmm0, xmm2
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_15

.L_B7_14:

        movsd     xmm0, QWORD PTR [rip+_vmldSinhHATab]
        addsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1160]
        mulsd     xmm0, xmm2
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0

.L_B7_15:

        movups    xmm8, XMMWORD PTR [192+rsp]
        movups    xmm9, XMMWORD PTR [176+rsp]
        movups    xmm10, XMMWORD PTR [160+rsp]
        movups    xmm11, XMMWORD PTR [144+rsp]
        movups    xmm12, XMMWORD PTR [128+rsp]
        movups    xmm13, XMMWORD PTR [112+rsp]
        movups    xmm14, XMMWORD PTR [96+rsp]
        movups    xmm15, XMMWORD PTR [80+rsp]
        add       rsp, 216
        ret

.L_B7_16:

        movsd     xmm0, QWORD PTR [rip+_vmldSinhHATab+1160]
        mulsd     xmm2, xmm0
        movsd     QWORD PTR [64+rsp], xmm2
        pxor      xmm2, xmm2
        cvtss2sd  xmm2, DWORD PTR [r9]
        movsd     xmm1, QWORD PTR [64+rsp]
        mov       rcx, QWORD PTR [rip+_vmldSinhHATab+8]
        addsd     xmm2, xmm1
        cvtsd2ss  xmm2, xmm2
        mov       QWORD PTR [72+rsp], rcx
        movss     DWORD PTR [rdx], xmm2
        jmp       .L_B7_15

.L_B7_17:

        addss     xmm2, xmm2
        movss     DWORD PTR [rdx], xmm2
        jmp       .L_B7_15
        .align    16, 0x90

.L_B7_18:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_ssinh_ha_cout_rare_internal_B1_B17:
        .long   1204225
        .long   821344
        .long   759895
        .long   698446
        .long   636997
        .long   575548
        .long   514082
        .long   452636
        .long   391188
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_18
        .rva    _unwind___jsvml_ssinh_ha_cout_rare_internal_B1_B17

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_ssinh_ha_data_internal
__jsvml_ssinh_ha_data_internal:
        .long   1056964608
        .long   1057148295
        .long   1057336003
        .long   1057527823
        .long   1057723842
        .long   1057924154
        .long   1058128851
        .long   1058338032
        .long   1058551792
        .long   1058770234
        .long   1058993458
        .long   1059221571
        .long   1059454679
        .long   1059692891
        .long   1059936319
        .long   1060185078
        .long   1060439283
        .long   1060699055
        .long   1060964516
        .long   1061235789
        .long   1061513002
        .long   1061796286
        .long   1062085772
        .long   1062381598
        .long   1062683901
        .long   1062992824
        .long   1063308511
        .long   1063631111
        .long   1063960775
        .long   1064297658
        .long   1064641917
        .long   1064993715
        .long   0
        .long   2999887785
        .long   852465809
        .long   3003046475
        .long   2984291233
        .long   3001644133
        .long   854021668
        .long   2997748242
        .long   849550193
        .long   2995541347
        .long   851518274
        .long   809701978
        .long   2997656926
        .long   2996185864
        .long   2980965110
        .long   3002882728
        .long   844097402
        .long   848217591
        .long   2999013352
        .long   2992006718
        .long   831170615
        .long   3002278818
        .long   833158180
        .long   3000769962
        .long   2991891850
        .long   2999994908
        .long   2979965785
        .long   2982419430
        .long   2982221534
        .long   2999469642
        .long   833168438
        .long   2987538264
        .long   1056964608
        .long   1056605107
        .long   1056253309
        .long   1055909050
        .long   1055572167
        .long   1055242503
        .long   1054919903
        .long   1054604216
        .long   1054295293
        .long   1053992990
        .long   1053697164
        .long   1053407678
        .long   1053124394
        .long   1052847181
        .long   1052575908
        .long   1052310447
        .long   1052050675
        .long   1051796470
        .long   1051547711
        .long   1051304283
        .long   1051066071
        .long   1050832963
        .long   1050604850
        .long   1050381626
        .long   1050163184
        .long   1049949424
        .long   1049740243
        .long   1049535546
        .long   1049335234
        .long   1049139215
        .long   1048947395
        .long   1048759687
        .long   0
        .long   2979149656
        .long   824779830
        .long   2991081034
        .long   2973832926
        .long   2974030822
        .long   2971577177
        .long   2991606300
        .long   2983503242
        .long   2992381354
        .long   824769572
        .long   2993890210
        .long   822782007
        .long   2983618110
        .long   2990624744
        .long   839828983
        .long   835708794
        .long   2994494120
        .long   2972576502
        .long   2987797256
        .long   2989268318
        .long   801313370
        .long   843129666
        .long   2987152739
        .long   841161585
        .long   2989359634
        .long   845633060
        .long   2993255525
        .long   2975902625
        .long   2994657867
        .long   844077201
        .long   2991499177
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542464
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   1220542465
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   31
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
        .long   1118743631
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
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1056964676
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1042983605
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1069066811
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   1060204544
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
        .long   939916788
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
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   1228931072
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   255
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   1118922496
        .long   0
        .long   687887406
        .long   2915115070
        .long   1042983726
        .long   929258934
        .long   980813922
        .long   1018266026
        .long   1042992474
        .long   954428950
        .long   997598593
        .long   1026665631
        .long   1043023968
        .long   968883188
        .long   1007325380
        .long   1032156897
        .long   1043076692
        .long   979611573
        .long   1014406071
        .long   1035098005
        .long   1043150518
        .long   987662767
        .long   1019277074
        .long   1038061036
        .long   1043245588
        .long   994080931
        .long   1024140990
        .long   1040619474
        .long   1043361758
        .long   999883086
        .long   1027459341
        .long   1042131339
        .long   1043501068
        .long   1004844750
        .long   1031304911
        .long   1043662546
        .long   1043660792
        .long   1008932267
        .long   1033741849
        .long   1045216058
        .long   1043844218
        .long   1012931568
        .long   1036203181
        .long   1046794669
        .long   1044047389
        .long   1016426573
        .long   1038940459
        .long   1048401520
        .long   1044276784
        .long   1019375189
        .long   1041073109
        .long   1049307698
        .long   1044526186
        .long   1022871607
        .long   1042725668
        .long   1050143823
        .long   1044801107
        .long   1025188112
        .long   1044524705
        .long   1050998533
        .long   1045100274
        .long   1027560014
        .long   1046473595
        .long   1051873886
        .long   1045430084
        .long   1030282880
        .long   1048576000
        .long   1052770896
        .long   1045780079
        .long   1032591216
        .long   1049705931
        .long   1053691782
        .long   1046163095
        .long   1034344377
        .long   1050916716
        .long   1054637154
        .long   1046554568
        .long   1036314518
        .long   1052210623
        .long   1055610247
        .long   1046982038
        .long   1038516252
        .long   1053590081
        .long   1056612417
        .long   1047444104
        .long   1040576009
        .long   1055057680
        .long   1057305094
        .long   1047938203
        .long   1041931271
        .long   1056616175
        .long   1057838147
        .long   1048464140
        .long   1043425610
        .long   1057616551
        .long   1058387990
        .long   1048791818
        .long   1045067287
        .long   1058491172
        .long   1058956436
        .long   1049080411
        .long   1046864840
        .long   1059415895
        .long   1059545021
        .long   1049393183
        .long   1048701551
        .long   1060392458
        .long   1060153606
        .long   1049717660
        .long   1049769606
        .long   1061422692
        .long   1060784342
        .long   1050066322
        .long   1050929319
        .long   1062508534
        .long   1061437519
        .long   1050422447
        .long   1052185595
        .long   1063652019
        .long   1062114959
        .long   1050803760
        .long   1053543521
        .long   1064855295
        .long   1062817471
        .long   1051202252
        .long   1055008374
        .long   1065736918
        .long   1063547051
        .long   1051622601
        .long   3097084200
        .long   1074266112
        .long   1064305255
        .long   1052071435
        .long   3097592230
        .long   1074615279
        .long   1065092533
        .long   1052543428
        .long   3098127090
        .long   1074981832
        .long   1065632015
        .long   1053027915
        .long   3098657586
        .long   1075366458
        .long   1066057424
        .long   1053547140
        .long   3099216842
        .long   1075769880
        .long   1066499901
        .long   1054080955
        .long   3099820420
        .long   1076192855
        .long   1066960277
        .long   1054635449
        .long   3100431607
        .long   1076636176
        .long   1067439415
        .long   1055231108
        .long   3101072121
        .long   1077100676
        .long   1067938215
        .long   1055851490
        .long   3101734019
        .long   1077587227
        .long   1068457613
        .long   1056495628
        .long   3102420416
        .long   1078096742
        .long   1068998584
        .long   1057067604
        .long   3103151062
        .long   1078630177
        .long   1069562144
        .long   1057425150
        .long   3103842417
        .long   1079188534
        .long   1070149350
        .long   1057796175
        .long   3104239345
        .long   1079772860
        .long   1070761305
        .long   1058192335
        .long   3104632042
        .long   1080384254
        .long   1071399156
        .long   1058592040
        .long   3105065708
        .long   1081023861
        .long   1072064103
        .long   1059022895
        .long   3105522352
        .long   1081692883
        .long   1072757393
        .long   1059471212
        .long   3105980727
        .long   1082261504
        .long   1073480326
        .long   1059935747
        .long   3106458228
        .long   1082627342
        .long   1073988042
        .long   1060431367
        .long   3106985545
        .long   1083009859
        .long   1074381218
        .long   1060942660
        .long   3107497595
        .long   1083409773
        .long   1074791339
        .long   1061470753
        .long   3108033911
        .long   1083827834
        .long   1075219176
        .long   1062030223
        .long   3108625747
        .long   1084264827
        .long   1075665533
        .long   1062616535
        .long   3109213903
        .long   1084721573
        .long   1076131246
        .long   1063215716
        .long   3109826597
        .long   1085198928
        .long   1076617190
        .long   1063856328
        .long   3110492915
        .long   1085697789
        .long   1077124278
        .long   1064519640
        .long   3111153932
        .long   1086219092
        .long   1077653460
        .long   1065214942
        .long   3111866338
        .long   1086763816
        .long   1078205731
        .long   1065643458
        .long   3112375523
        .long   1087332983
        .long   1078782126
        .long   1066020158
        .long   3112765050
        .long   1087927661
        .long   1079383729
        .long   1066418599
        .long   3113168833
        .long   1088548967
        .long   1080011668
        .long   1066831834
        .long   3113609244
        .long   1089198066
        .long   1080667123
        .long   1067273229
        .long   3114032535
        .long   1089876179
        .long   1081351321
        .long   1067717011
        .long   3114484025
        .long   1090551808
        .long   1082065549
        .long   1068193280
        .long   3114970280
        .long   1090921814
        .long   1082470790
        .long   1068689694
        .long   3115467036
        .long   1091308322
        .long   1082859974
        .long   1069207685
        .long   3115974474
        .long   1091712058
        .long   1083266273
        .long   1069737995
        .long   3116537826
        .long   1092133779
        .long   1083690451
        .long   1070298768
        .long   3117085761
        .long   1092574277
        .long   1084133302
        .long   1070882802
        .long   3117709126
        .long   1093034378
        .long   1084595660
        .long   1071508439
        .long   3118314866
        .long   1093514947
        .long   1085078390
        .long   1072148994
        .long   3118933130
        .long   1094016886
        .long   1085582399
        .long   1072806866
        .long   3119628767
        .long   1094541136
        .long   1086108635
        .long   1073507255
        .long   3120312034
        .long   1095088682
        .long   1086658083
        .long   1073986932
        .long   3120816642
        .long   1095660551
        .long   1087231777
        .long   1074370169
        .long   3121187932
        .long   1096257817
        .long   1087830791
        .long   1074769178
        .long   3121594488
        .long   1096881601
        .long   1088456252
        .long   1075185795
        .long   3122020198
        .long   1097533074
        .long   1089109333
        .long   1075619595
        .long   3122451537
        .long   1098213459
        .long   1089791259
        .long   1076069917
        .long   3122905402
        .long   1098915840
        .long   1090503311
        .long   1076549119
        .long   3123389748
        .long   1099286888
        .long   1090882933
        .long   1077045731
        .long   3123878864
        .long   1099674394
        .long   1091271119
        .long   1077560283
        .long   3124401536
        .long   1100079085
        .long   1091676463
        .long   1078101378
        .long   3124930682
        .long   1100501721
        .long   1092099725
        .long   1078662472
        .long   3125516800
        .long   1100943095
        .long   1092541701
        .long   1079251056
        .long   3126075229
        .long   1101404036
        .long   1093003218
        .long   1079857728
        .long   3126728388
        .long   1101885408
        .long   1093485146
        .long   1080508502
        .long   3127359219
        .long   1102388116
        .long   1093988386
        .long   1081175245
        .long   3128014352
        .long   1102913103
        .long   1094513884
        .long   1081871787
        .long   3128747686
        .long   1103461354
        .long   1095062628
        .long   1082369373
        .long   3129206088
        .long   1104033899
        .long   1095635645
        .long   1082749126
        .long   3129593301
        .long   1104631812
        .long   1096234013
        .long   1083148279
        .long   3130008743
        .long   1105256215
        .long   1096858855
        .long   1083570858
        .long   3130406199
        .long   1105908282
        .long   1097511341
        .long   1083997642
        .long   3130855937
        .long   1106589234
        .long   1098192700
        .long   1084459829
        .long   3131310395
        .long   1107298304
        .long   1098904208
        .long   1084929536
        .long   3131761492
        .long   1107669613
        .long   1099277424
        .long   1085415965
        .long   3132265084
        .long   1108057368
        .long   1099665361
        .long   1085939887
        .long   3132783371
        .long   1108462298
        .long   1100070466
        .long   1086478564
        .long   3133369511
        .long   1108885162
        .long   1100493501
        .long   1087055088
        .long   3133891436
        .long   1109326756
        .long   1100935256
        .long   1087624344
        .long   3134507369
        .long   1109787906
        .long   1101396565
        .long   1088246740
        .long   3135123225
        .long   1110269479
        .long   1101878291
        .long   1088894950
        .long   3135765391
        .long   1110772379
        .long   1102381339
        .long   1089569026
        .long   3136459557
        .long   1111297550
        .long   1102906654
        .long   1090269725
        .long   3137139863
        .long   1111845978
        .long   1103455220
        .long   1090756438
        .long   3137594905
        .long   1112418692
        .long   1104028068
        .long   1091135322
        .long   3137977906
        .long   1113016767
        .long   1104626274
        .long   1091531952
        .long   3138391473
        .long   1113641325
        .long   1105250961
        .long   1091953464
        .long   3138794156
        .long   1114293540
        .long   1105903299
        .long   1092383610
        .long   3139244396
        .long   1114974634
        .long   1106584516
        .long   1092846205
        .long   3139699003
        .long   1115685376
        .long   1107295888
        .long   1093316096
        .long   3140154077
        .long   1116056750
        .long   1107667503
        .long   1093805095
        .long   3140669482
        .long   1116444567
        .long   1108055378
        .long   1094336475
        .long   3141178479
        .long   1116849557
        .long   1108460423
        .long   1094869431
        .long   3141737901
        .long   1117272479
        .long   1108883400
        .long   1095429351
        .long   3142284745
        .long   1117714127
        .long   1109325101
        .long   1096014237
        .long   3142915054
        .long   1118175329
        .long   1109786358
        .long   1096645678
        .long   3143505197
        .long   1118656953
        .long   1110268033
        .long   1097277902
        .long   3144150196
        .long   1119159901
        .long   1110771033
        .long   1097953811
        .long   3144845928
        .long   1119685118
        .long   1111296302
        .long   1098655549
        .long   3145529363
        .long   1120233590
        .long   1111844824
        .long   1099144661
        .long   3145987662
        .long   1120806346
        .long   1112417630
        .long   1099525884
        .long   3146377804
        .long   1121404461
        .long   1113015796
        .long   1099927000
        .long   3146786805
        .long   1122029058
        .long   1113640444
        .long   1100345687
        .long   3147190794
        .long   1122681310
        .long   1114292745
        .long   1100776673
        .long   3147632967
        .long   1123362440
        .long   1114973926
        .long   1101234255
        .long   3148087611
        .long   1124073600
        .long   1115685064
        .long   1101704192
        .long   3148551873
        .long   1124444990
        .long   1116056479
        .long   1102198949
        .long   3149053844
        .long   1124832823
        .long   1116444338
        .long   1102721963
        .long   3149560519
        .long   1125237828
        .long   1116849368
        .long   1103253489
        .long   3150129648
        .long   1125660764
        .long   1117272331
        .long   1103819489
        .long   3150699108
        .long   1126102425
        .long   1117714019
        .long   1104418512
        .long   3151300238
        .long   1126563641
        .long   1118175262
        .long   1105031754
        .long   3151908533
        .long   1127045277
        .long   1118656925
        .long   1105675327
        .long   3152521467
        .long   1127548238
        .long   1119159912
        .long   1106331233
        .long   3153233976
        .long   1128073466
        .long   1119685170
        .long   1107043461
        .long   3153918194
        .long   1128621949
        .long   1120233681
        .long   1107533172
        .long   3154369114
        .long   1129194716
        .long   1120806476
        .long   1107909865
        .long   3154761041
        .long   1129792841
        .long   1121404632
        .long   1108312102
        .long   3155164804
        .long   1130417448
        .long   1122029270
        .long   1108727526
        .long   3155573216
        .long   1131069709
        .long   1122681562
        .long   1109161279
        .long   3156013372
        .long   1131750848
        .long   1123362734
        .long   1109617608
        .long   3156476219
        .long   1132462112
        .long   1124073768
        .long   1110092672
        .long   3156942778
        .long   1132833506
        .long   1124445179
        .long   1110588868
        .long   3157441390
        .long   1133221343
        .long   1124833034
        .long   1111109791
        .long   3157939291
        .long   1133626352
        .long   1125238060
        .long   1111635844
        .long   3158527234
        .long   1134049291
        .long   1125661020
        .long   1112213594
        .long   3159077768
        .long   1134490956
        .long   1126102704
        .long   1112800807
        .long   3159687990
        .long   1134952175
        .long   1126563944
        .long   1113419729
        .long   3160268049
        .long   1135433815
        .long   1127045603
        .long   1114045678
        .long   3160913934
        .long   1135936778
        .long   1127548588
        .long   1114722160
        .long   3161622444
        .long   1136462009
        .long   1128073843
        .long   1115431895
        .long   3162298664
        .long   1137010495
        .long   1128622351
        .long   1115919199
        .long   3162764127
        .long   1137583264
        .long   1129195144
        .long   1116302432
        .long   3163148306
        .long   1138181392
        .long   1129793297
        .long   1116699834
        .long   3163558953
        .long   1138806001
        .long   1130417933
        .long   1117119556
        .long   3163972568
        .long   1139458264
        .long   1131070223
        .long   1117556560
        .long   3164399930
        .long   1140139406
        .long   1131751392
        .long   1118004903
        .long   3164864827
        .long   1140850696
        .long   1132462400
        .long   1118481248
        .long   3165331960
        .long   1141222091
        .long   1132833810
        .long   1118977804
        .long   3165829733
        .long   1141609929
        .long   1133221664
        .long   1119498204
        .long   3166325440
        .long   1142014939
        .long   1133626689
        .long   1120022889
        .long   3166909893
        .long   1142437879
        .long   1134049648
        .long   1120598461
        .long   3167455696
        .long   1142879545
        .long   1134491331
        .long   1121182721
        .long   3168059997
        .long   1143340765
        .long   1134952570
        .long   1121797948
        .long   3168665771
        .long   1143822405
        .long   1135434229
        .long   1122439952
        .long   3169303507
        .long   1144325369
        .long   1135937213
        .long   1123111348
        .long   3170002824
        .long   1144850601
        .long   1136462467
        .long   1123815345
        .long   3170701624
        .long   1145399087
        .long   1137010975
        .long   1124312276
        .long   3171154336
        .long   1145971857
        .long   1137583767
        .long   1124692030
        .long   3171532482
        .long   1146569986
        .long   1138181919
        .long   1125085665
        .long   3171936657
        .long   1147194596
        .long   1138806554
        .long   1125501347
        .long   3172359765
        .long   1147846859
        .long   1139458844
        .long   1125944278
        .long   3172796218
        .long   1148528001
        .long   1140140013
        .long   1126398298
        .long   3173253435
        .long   1149239298
        .long   1140851014
        .long   1126869848
        .long   3173728905
        .long   1149610693
        .long   1141222424
        .long   1127371609
        .long   3174201888
        .long   1149998532
        .long   1141610277
        .long   1127876532
        .long   3174738014
        .long   1150403541
        .long   1142015303
        .long   1128426452
        .long   3175297014
        .long   1150826482
        .long   1142438261
        .long   1128986134
        .long   3175849827
        .long   1151268148
        .long   1142879944
        .long   1129574771
        .long   3176460842
        .long   1151729368
        .long   1143341183
        .long   1130194189
        .long   3177073044
        .long   1152211008
        .long   1143822842
        .long   1130840207
        .long   3177684163
        .long   1152713973
        .long   1144325825
        .long   1131494986
        .long   3178389375
        .long   1153239205
        .long   1144851079
        .long   1132202663
        .long   3179093821
        .long   1153787691
        .long   1145399587
        .long   1132702002
        .long   3179547441
        .long   1154360461
        .long   1145972379
        .long   1133083443
        .long   3179928175
        .long   1154958590
        .long   1146570531
        .long   1133478694
        .long   3180334828
        .long   1155583200
        .long   1147195166
        .long   1133895924
        .long   3180743924
        .long   1156235464
        .long   1147847455
        .long   1134330106
        .long   3181182650
        .long   1156916606
        .long   1148528624
        .long   1134785545
        .long   3181625656
        .long   1157627905
        .long   1149239623
        .long   1135248223
        .long   3182103210
        .long   1157999300
        .long   1149611033
        .long   1135751286
        .long   3182610963
        .long   1158387138
        .long   1149998887
        .long   1136277916
        .long   3183116226
        .long   1158792148
        .long   1150403912
        .long   1136808568
        .long   3183677057
        .long   1159215089
        .long   1150826870
        .long   1137369393
        .long   3184231622
        .long   1159656755
        .long   1151268553
        .long   1137959124
        .long   3184844315
        .long   1160117975
        .long   1151729792
        .long   1138579590
        .long   3185458125
        .long   1160599615
        .long   1152211451
        .long   1139226612
        .long   3186070783
        .long   1161102580
        .long   1152714434
        .long   1139882351
        .long   3186777469
        .long   1161627812
        .long   1153239688
        .long   1140590948
        .long   3187483326
        .long   1162176298
        .long   1153788196
        .long   1141090889
        .long   3187937173
        .long   1162749068
        .long   1154360988
        .long   1141472752
        .long   3188318554
        .long   1163347197
        .long   1154959140
        .long   1141868407
        .long   3188725827
        .long   1163971807
        .long   1155583775
        .long   1142286024
        .long   3189135516
        .long   1164624071
        .long   1156236064
        .long   1142720577
        .long   3189574810
        .long   1165305213
        .long   1156917233
        .long   1143176370
        .long   3190034748
        .long   1166016512
        .long   1157628232
        .long   1143649619
        .long   3190480049
        .long   1166387908
        .long   1157999641
        .long   1144132546
        .long   3190988301
        .long   1166775746
        .long   1158387495
        .long   1144659488
        .long   3191494042
        .long   1167180756
        .long   1158792520
        .long   1145190438
        .long   3192088104
        .long   1167603696
        .long   1159215479
        .long   1145772009
        .long   3192610334
        .long   1168045363
        .long   1159657161
        .long   1146341553
        .long   3193223446
        .long   1168506583
        .long   1160118400
        .long   1146962281
        .long   3193837658
        .long   1168988223
        .long   1160600059
        .long   1147609554
        .long   3194483474
        .long   1169491187
        .long   1161103043
        .long   1148285994
        .long   3195157755
        .long   1170016420
        .long   1161628296
        .long   1148974361
        .long   3195863964
        .long   1170564906
        .long   1162176804
        .long   1149477009
        .long   3196321965
        .long   1171137676
        .long   1162749596
        .long   1149858978
        .long   3196703508
        .long   1171735805
        .long   1163347748
        .long   1150254734
        .long   3197110936
        .long   1172360415
        .long   1163972383
        .long   1150672447
        .long   3197520774
        .long   1173012679
        .long   1164624672
        .long   1151107093
        .long   3197960210
        .long   1173693821
        .long   1165305841
        .long   1151562975
        .long   3198420283
        .long   1174405120
        .long   1166016840
        .long   1152036309
        .long   3198898489
        .long   1174776515
        .long   1166388250
        .long   1152539778
        .long   3199374091
        .long   1175164354
        .long   1166776103
        .long   1153046337
        .long   3199879952
        .long   1175569364
        .long   1167181128
        .long   1153577361
        .long   3200474128
        .long   1175992304
        .long   1167604087
        .long   1154159004
        .long   3201029241
        .long   1176433970
        .long   1168045770
        .long   1154749077
        .long   3201609685
        .long   1176895191
        .long   1168507008
        .long   1155349410
        .long   3202223997
        .long   1177376831
        .long   1168988667
        .long   1155996745
        .long   3202869909
        .long   1177879795
        .long   1169491651
        .long   1156673246
        .long   3203544282
        .long   1178405028
        .long   1170016904
        .long   1157361670
        .long   3204250580
        .long   1178953514
        .long   1170565412
        .long   1157864996
        .long   3204709619
        .long   1179526284
        .long   1171138204
        .long   1158246990
        .long   3205091203
        .long   1180124413
        .long   1171736356
        .long   1158642772
        .long   3205498670
        .long   1180749023
        .long   1172360991
        .long   1159060509
        .long   3205908544
        .long   1181401287
        .long   1173013280
        .long   1159495178
        .long   3206348016
        .long   1182082429
        .long   1173694449
        .long   1159951082
        .long   3206808123
        .long   1182793728
        .long   1174405448
        .long   1160424437
        .long   3207286361
        .long   1183165123
        .long   1174776858
        .long   1160927927
        .long   3207761995
        .long   1183552962
        .long   1175164711
        .long   1161434505
        .long   3208300659
        .long   1183957971
        .long   1175569737
        .long   1161986009
        .long   3208862090
        .long   1184380912
        .long   1175992695
        .long   1162547209
        .long   3209417231
        .long   1184822578
        .long   1176434378
        .long   1163137299
        .long   3209997701
        .long   1185283799
        .long   1176895616
        .long   1163737648
        .long   3210612038
        .long   1185765439
        .long   1177377275
        .long   1164384999
        .long   3211257974
        .long   1186268403
        .long   1177880259
        .long   1165061514
        .long   3211932370
        .long   1186793636
        .long   1178405512
        .long   1165749953
        .long   3212638690
        .long   1187342122
        .long   1178954020
        .long   1166253448
        .long   3213097989
        .long   1187914892
        .long   1179526812
        .long   1166635449
        .long   3213479583
        .long   1188513021
        .long   1180124964
        .long   1167031237
        .long   3213887059
        .long   1189137631
        .long   1180749599
        .long   1167448981
        .long   3214296943
        .long   1189789895
        .long   1181401888
        .long   1167883655
        .long   3214736423
        .long   1190471037
        .long   1182083057
        .long   1168339565
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
        .long   32
_vmldSinhHATab:
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
        .long   1431655765
        .long   1069897045
        .long   286331153
        .long   1065423121
        .long   436314138
        .long   1059717536
        .long   2773927732
        .long   1053236707
        .long   1697350398
        .long   1079448903
        .long   0
        .long   1127743488
        .long   33554432
        .long   1101004800
        .long   2684354560
        .long   1079401119
        .long   4277796864
        .long   1065758274
        .long   3164486458
        .long   1025308570
        .long   1
        .long   1048576
        .long   4294967295
        .long   2146435071
        .long   3671843104
        .long   1067178892
        .long   3875694624
        .long   1077247184
        .space 8, 0x0
_2il0floatpacket_103:
        .long   0x00000000, 0x80000000, 0x00000000, 0x00000000
        .data
#endif
