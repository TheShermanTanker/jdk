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
        .globl __jsvml_coshf16_ha_z0

__jsvml_coshf16_ha_z0:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+384]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+640]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+704]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+256]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+128]
        vpternlogd zmm22, zmm22, zmm22, 255
        vmovaps   zmm4, zmm0
        vandnps   zmm1, zmm5, zmm4
        vfmadd213ps zmm27, zmm1, zmm23 {rn-sae}
        vpcmpd    k1, zmm1, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+512], 1
        vpslld    zmm28, zmm27, 18
        vsubps    zmm25, zmm27, zmm23 {rn-sae}
        vpermt2ps zmm29, zmm27, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+64]
        vpermt2ps zmm31, zmm27, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+320]
        vpermt2ps zmm30, zmm27, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+192]
        mov       QWORD PTR [1328+rsp], r13
        vpandnd   zmm22{k1}, zmm1, zmm1
        vfnmadd231ps zmm1, zmm25, zmm24 {rn-sae}
        vptestmd  k0, zmm22, zmm22
        vfnmadd231ps zmm1, zmm25, zmm26 {rn-sae}
        kmovw     r8d, k0
        vmulps    zmm0, zmm1, zmm1 {rn-sae}
        vmulps    zmm2, zmm2, zmm0 {rn-sae}
        vmulps    zmm0, zmm3, zmm0 {rn-sae}
        vfmadd213ps zmm2, zmm1, zmm1 {rn-sae}
        vpandd    zmm5, zmm28, ZMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1216]
        vpaddd    zmm24, zmm29, zmm5
        vpsubd    zmm23, zmm31, zmm5
        vpaddd    zmm30, zmm30, zmm5
        vaddps    zmm31, zmm24, zmm23 {rn-sae}
        vsubps    zmm22, zmm24, zmm23 {rn-sae}
        vfmadd213ps zmm0, zmm31, zmm30 {rn-sae}
        vfmadd213ps zmm2, zmm22, zmm0 {rn-sae}
        vaddps    zmm1, zmm2, zmm23 {rn-sae}
        vaddps    zmm0, zmm1, zmm24 {rn-sae}
        test      r8d, r8d
        jne       .L_B1_3

.L_B1_2:

        mov       r13, QWORD PTR [1320+rsp]
        add       rsp, 1336
        ret

.L_B1_3:

        vstmxcsr  DWORD PTR [1312+rsp]

.L_B1_4:

        movzx     edx, WORD PTR [1312+rsp]
        mov       eax, edx
        or        eax, 8064
        cmp       edx, eax
        je        .L_B1_6

.L_B1_5:

        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]

.L_B1_6:

        vmovups   ZMMWORD PTR [r13], zmm4
        vmovups   ZMMWORD PTR [64+r13], zmm0
        test      r8d, r8d
        jne       .L_B1_11

.L_B1_7:

        cmp       edx, eax
        je        .L_B1_2

.L_B1_8:

        vstmxcsr  DWORD PTR [1312+rsp]
        mov       eax, DWORD PTR [1312+rsp]

.L_B1_9:

        and       eax, -8065
        or        eax, edx
        mov       DWORD PTR [1312+rsp], eax
        vldmxcsr  DWORD PTR [1312+rsp]
        jmp       .L_B1_2

.L_B1_11:

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

.L_B1_12:

        bt        edi, ebx
        jc        .L_B1_15

.L_B1_13:

        inc       ebx
        cmp       ebx, 16
        jl        .L_B1_12

.L_B1_14:

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
        jmp       .L_B1_7

.L_B1_15:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B1_13
        .align    16, 0x90

.L_B1_16:

        .section .drectve
        .ascii " -export \"__jsvml_coshf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_11
        .rva    _unwind___jsvml_coshf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf16_ha_z0_B11_B15:
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

        .rva    .L_B1_11
        .rva    .L_B1_16
        .rva    _unwind___jsvml_coshf16_ha_z0_B11_B15

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_coshf8_ha_e9

__jsvml_coshf8_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L52:

        push      rdi
        push      r12
        push      r14
        sub       rsp, 528
        lea       r8, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [352+rsp], ymm15
        vmovups   YMMWORD PTR [384+rsp], ymm14
        vmovups   YMMWORD PTR [416+rsp], ymm13
        vpxor     xmm14, xmm14, xmm14
        vmovups   YMMWORD PTR [448+rsp], ymm12
        vmovups   YMMWORD PTR [480+rsp], ymm11
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [255+rsp]
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1280]
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1408]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1344]
        vmovaps   ymm11, ymm0
        vandnps   ymm0, ymm5, ymm11
        vmulps    ymm4, ymm0, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        vaddps    ymm12, ymm1, ymm4
        mov       QWORD PTR [520+rsp], r13
        vpcmpgtd  xmm5, xmm0, xmm15
        vextractf128 xmm2, ymm0, 1
        vpcmpgtd  xmm4, xmm2, xmm15
        vpackssdw xmm2, xmm5, xmm4
        vxorps    ymm4, ymm12, ymm1
        vsubps    ymm12, ymm12, ymm1
        vpacksswb xmm13, xmm2, xmm14
        vpmovmskb edi, xmm13
        vmulps    ymm1, ymm12, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        vmulps    ymm12, ymm12, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        vsubps    ymm1, ymm0, ymm1
        vsubps    ymm0, ymm1, ymm12
        vpsubd    xmm2, xmm3, xmm4
        vextractf128 xmm5, ymm4, 1
        vpsrld    xmm15, xmm2, 28
        vpslld    xmm14, xmm15, 4
        vpor      xmm13, xmm14, xmm4
        vpsubd    xmm15, xmm3, xmm5
        vpand     xmm2, xmm13, xmm3
        vpsrld    xmm14, xmm15, 28
        vpslld    xmm13, xmm14, 4
        vpor      xmm15, xmm13, xmm5
        vpand     xmm3, xmm15, xmm3
        vpslld    xmm15, xmm2, 4
        vmovd     r12d, xmm15
        vpslld    xmm1, xmm3, 4
        vmovd     ecx, xmm1
        vpsubd    xmm2, xmm4, xmm2
        vpsubd    xmm3, xmm5, xmm3
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+r12]
        vpslld    xmm3, xmm3, 19
        vpextrd   r10d, xmm15, 2
        vpextrd   r11d, xmm15, 1
        vpextrd   eax, xmm1, 2
        vpextrd   r9d, xmm15, 3
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+r10]
        vpextrd   edx, xmm1, 1
        vpinsrd   xmm12, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+r11], 1
        vpinsrd   xmm15, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+r9], 1
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+rax]
        vpextrd   r14d, xmm1, 3
        vmovd     xmm1, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+rcx]
        vpinsrd   xmm13, xmm1, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+rdx], 1
        vpinsrd   xmm1, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r8+r14], 1
        vpunpcklqdq xmm12, xmm12, xmm15
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+r10]
        vpunpcklqdq xmm15, xmm13, xmm1
        vpinsrd   xmm1, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+r9], 1
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+rax]
        vinsertf128 ymm13, ymm12, xmm15, 1
        vmovd     xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+r12]
        vpinsrd   xmm12, xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+r11], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+rcx]
        vpunpcklqdq xmm1, xmm12, xmm1
        vpinsrd   xmm12, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+rdx], 1
        vpinsrd   xmm15, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r8+r14], 1
        vpunpcklqdq xmm14, xmm12, xmm15
        vinsertf128 ymm12, ymm1, xmm14, 1
        vmulps    ymm15, ymm12, ymm0
        vmovd     xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+r10]
        vaddps    ymm1, ymm13, ymm13
        vaddps    ymm14, ymm13, ymm15
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+r12]
        vpinsrd   xmm15, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+r11], 1
        vpinsrd   xmm13, xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+r9], 1
        vmovd     xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+rcx]
        vpinsrd   xmm12, xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+rdx], 1
        vmulps    ymm14, ymm0, ymm14
        vpunpcklqdq xmm15, xmm15, xmm13
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+rax]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r8+r14], 1
        vpunpcklqdq xmm12, xmm12, xmm13
        vinsertf128 ymm15, ymm15, xmm12, 1
        vmovd     xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+r12]
        vaddps    ymm15, ymm15, ymm14
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+r10]
        vpinsrd   xmm13, xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+r11], 1
        vpinsrd   xmm12, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+r9], 1
        vmulps    ymm0, ymm0, ymm15
        vpunpcklqdq xmm14, xmm13, xmm12
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+rcx]
        vmovd     xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+rax]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+rdx], 1
        vpinsrd   xmm12, xmm12, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r8+r14], 1
        vpunpcklqdq xmm13, xmm13, xmm12
        vinsertf128 ymm14, ymm14, xmm13, 1
        vaddps    ymm12, ymm14, ymm0
        vaddps    ymm0, ymm1, ymm12
        vpslld    xmm1, xmm2, 19
        vpaddd    xmm4, xmm0, xmm1
        vextractf128 xmm12, ymm0, 1
        vpaddd    xmm0, xmm12, xmm3
        vinsertf128 ymm0, ymm4, xmm0, 1
        test      dil, dil
        jne       .L_B2_3

.L_B2_2:

        vmovups   ymm11, YMMWORD PTR [480+rsp]
        vmovups   ymm12, YMMWORD PTR [448+rsp]
        vmovups   ymm13, YMMWORD PTR [416+rsp]
        vmovups   ymm14, YMMWORD PTR [384+rsp]
        vmovups   ymm15, YMMWORD PTR [352+rsp]
        mov       r13, QWORD PTR [512+rsp]
        add       rsp, 528
        pop       r14
        pop       r12
        pop       rdi
        ret

.L_B2_3:

        vmovups   YMMWORD PTR [r13], ymm11
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edi, edi
        je        .L_B2_2

.L_B2_6:

        vmovups   YMMWORD PTR [160+rsp], ymm6
        xor       r12d, r12d
        vmovups   YMMWORD PTR [128+rsp], ymm7
        vmovups   YMMWORD PTR [96+rsp], ymm8
        vmovups   YMMWORD PTR [64+rsp], ymm9
        vmovups   YMMWORD PTR [32+rsp], ymm10

.L_B2_7:

        bt        edi, r12d
        jc        .L_B2_10

.L_B2_8:

        inc       r12d
        cmp       r12d, 8
        jl        .L_B2_7

.L_B2_9:

        vmovups   ymm6, YMMWORD PTR [160+rsp]
        vmovups   ymm7, YMMWORD PTR [128+rsp]
        vmovups   ymm8, YMMWORD PTR [96+rsp]
        vmovups   ymm9, YMMWORD PTR [64+rsp]
        vmovups   ymm10, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+r12*4]
        lea       rdx, QWORD PTR [64+r13+r12*4]

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_coshf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf8_ha_e9_B1_B3:
        .long   1134849
        .long   4248657
        .long   2013257
        .long   1886272
        .long   1759282
        .long   1632297
        .long   1505312
        .long   4325648
        .long   3221741577
        .long   28677

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_coshf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf8_ha_e9_B6_B10:
        .long   665377
        .long   174119
        .long   301089
        .long   428059
        .long   555029
        .long   681993
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_coshf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_coshf8_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_coshf4_ha_l9

__jsvml_coshf4_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L75:

        sub       rsp, 248
        vmovaps   xmm2, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm14
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm13
        mov       QWORD PTR [224+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1280]
        vandnps   xmm3, xmm1, xmm2
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        vfmadd213ps xmm4, xmm3, xmm5
        vpcmpgtd  xmm1, xmm3, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1408]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1344]
        vmovmskps ecx, xmm1
        vxorps    xmm1, xmm4, xmm5
        vsubps    xmm4, xmm4, xmm5
        vpsubd    xmm14, xmm0, xmm1
        vpsrld    xmm13, xmm14, 28
        vpslld    xmm14, xmm13, 4
        vpor      xmm13, xmm14, xmm1
        vpand     xmm0, xmm13, xmm0
        vfnmadd231ps xmm3, xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        vpslld    xmm5, xmm0, 4
        vmovd     edx, xmm5
        vfnmadd231ps xmm3, xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        vmovd     xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rdx]
        vpextrd   r8d, xmm5, 2
        vpextrd   eax, xmm5, 1
        vpextrd   r9d, xmm5, 3
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r8]
        vpinsrd   xmm13, xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rax], 1
        vpinsrd   xmm14, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r9], 1
        vmovd     xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rdx]
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r8]
        vunpcklpd xmm13, xmm13, xmm14
        vpinsrd   xmm14, xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rax], 1
        vpinsrd   xmm4, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r9], 1
        vaddps    xmm5, xmm13, xmm13
        vpunpcklqdq xmm4, xmm14, xmm4
        vfmadd213ps xmm4, xmm3, xmm13
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rdx]
        vpinsrd   xmm14, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rax], 1
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r8]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r9], 1
        vpunpcklqdq xmm14, xmm14, xmm13
        vfmadd213ps xmm4, xmm3, xmm14
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rdx]
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r8]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rax], 1
        vpinsrd   xmm14, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r9], 1
        vpunpcklqdq xmm13, xmm13, xmm14
        vfmadd213ps xmm4, xmm3, xmm13
        vpsubd    xmm3, xmm1, xmm0
        vpslld    xmm0, xmm3, 19
        mov       QWORD PTR [232+rsp], r13
        vaddps    xmm4, xmm5, xmm4
        vpaddd    xmm0, xmm4, xmm0
        test      ecx, ecx
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm13, XMMWORD PTR [208+rsp]
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [224+rsp]
        add       rsp, 248
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm2
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

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_coshf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_l9_B1_B3:
        .long   536577
        .long   1889328
        .long   907304
        .long   845848
        .long   2031883

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_coshf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_coshf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_coshf4_ha_l9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_coshf8_ha_l9

__jsvml_coshf8_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L86:

        push      rbx
        push      r15
        push      rbp
        sub       rsp, 528
        lea       rbp, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [416+rsp], ymm15
        vmovups   YMMWORD PTR [448+rsp], ymm14
        vmovups   YMMWORD PTR [480+rsp], ymm13
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [319+rsp]
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        vmovups   ymm14, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1344]
        vmovaps   ymm5, ymm0
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1280]
        vandnps   ymm1, ymm4, ymm5
        vfmadd213ps ymm14, ymm1, ymm0
        vpcmpgtd  ymm4, ymm1, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1408]
        vmovmskps ebx, ymm4
        vxorps    ymm4, ymm14, ymm0
        vpsubd    ymm2, ymm3, ymm4
        vsubps    ymm0, ymm14, ymm0
        vpsrld    ymm2, ymm2, 28
        vfnmadd231ps ymm1, ymm0, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        vpslld    ymm13, ymm2, 4
        vfnmadd231ps ymm1, ymm0, YMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        vpor      ymm15, ymm13, ymm4
        vpand     ymm3, ymm15, ymm3
        vpslld    ymm14, ymm3, 4
        mov       QWORD PTR [520+rsp], r13
        vmovd     r11d, xmm14
        vextracti128 xmm15, ymm14, 1
        vmovd     xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+r11]
        vpextrd   r9d, xmm14, 2
        vpextrd   r10d, xmm14, 1
        vpextrd   r8d, xmm14, 3
        vmovd     xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+r9]
        vpinsrd   xmm13, xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+r10], 1
        vpinsrd   xmm0, xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+r8], 1
        vmovd     ecx, xmm15
        vpunpcklqdq xmm2, xmm13, xmm0
        vpextrd   eax, xmm15, 2
        vpextrd   edx, xmm15, 1
        vpextrd   r15d, xmm15, 3
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+rcx]
        vmovd     xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+rax]
        vpinsrd   xmm14, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+rdx], 1
        vpinsrd   xmm13, xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+rbp+r15], 1
        vmovd     xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+r9]
        vpunpcklqdq xmm15, xmm14, xmm13
        vpinsrd   xmm14, xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+r8], 1
        vinsertf128 ymm13, ymm2, xmm15, 1
        vmovd     xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+r11]
        vpinsrd   xmm2, xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+r10], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+rcx]
        vpunpcklqdq xmm0, xmm2, xmm14
        vmovd     xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+rax]
        vpinsrd   xmm14, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+rdx], 1
        vpinsrd   xmm15, xmm2, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+rbp+r15], 1
        vpunpcklqdq xmm2, xmm14, xmm15
        vmovd     xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+r9]
        vpinsrd   xmm15, xmm14, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+r8], 1
        vinsertf128 ymm0, ymm0, xmm2, 1
        vaddps    ymm2, ymm13, ymm13
        vfmadd213ps ymm0, ymm1, ymm13
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+r11]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+r10], 1
        vpunpcklqdq xmm14, xmm13, xmm15
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+rcx]
        vpinsrd   xmm15, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+rdx], 1
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+rax]
        vpinsrd   xmm13, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+rbp+r15], 1
        vpunpcklqdq xmm15, xmm15, xmm13
        vmovd     xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+r11]
        vinsertf128 ymm14, ymm14, xmm15, 1
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+r9]
        vfmadd213ps ymm0, ymm1, ymm14
        vpinsrd   xmm14, xmm13, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+r10], 1
        vpinsrd   xmm13, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+r8], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+rcx]
        vpunpcklqdq xmm14, xmm14, xmm13
        vpinsrd   xmm13, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+rdx], 1
        vmovd     xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+rax]
        vpinsrd   xmm15, xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+rbp+r15], 1
        vpunpcklqdq xmm13, xmm13, xmm15
        vinsertf128 ymm14, ymm14, xmm13, 1
        vfmadd213ps ymm0, ymm1, ymm14
        vpsubd    ymm1, ymm4, ymm3
        vaddps    ymm0, ymm2, ymm0
        vpslld    ymm1, ymm1, 19
        vpaddd    ymm0, ymm0, ymm1
        test      ebx, ebx
        jne       .L_B4_3

.L_B4_2:

        vmovups   ymm13, YMMWORD PTR [480+rsp]
        vmovups   ymm14, YMMWORD PTR [448+rsp]
        vmovups   ymm15, YMMWORD PTR [416+rsp]
        mov       r13, QWORD PTR [512+rsp]
        add       rsp, 528
        pop       rbp
        pop       r15
        pop       rbx
        ret

.L_B4_3:

        vmovups   YMMWORD PTR [r13], ymm5
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B4_6:

        vmovups   YMMWORD PTR [224+rsp], ymm6
        xor       ebp, ebp
        vmovups   YMMWORD PTR [192+rsp], ymm7
        vmovups   YMMWORD PTR [160+rsp], ymm8
        vmovups   YMMWORD PTR [128+rsp], ymm9
        vmovups   YMMWORD PTR [96+rsp], ymm10
        vmovups   YMMWORD PTR [64+rsp], ymm11
        vmovups   YMMWORD PTR [32+rsp], ymm12

.L_B4_7:

        bt        ebx, ebp
        jc        .L_B4_10

.L_B4_8:

        inc       ebp
        cmp       ebp, 8
        jl        .L_B4_7

.L_B4_9:

        vmovups   ymm6, YMMWORD PTR [224+rsp]
        vmovups   ymm7, YMMWORD PTR [192+rsp]
        vmovups   ymm8, YMMWORD PTR [160+rsp]
        vmovups   ymm9, YMMWORD PTR [128+rsp]
        vmovups   ymm10, YMMWORD PTR [96+rsp]
        vmovups   ymm11, YMMWORD PTR [64+rsp]
        vmovups   ymm12, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbp*4]
        lea       rdx, QWORD PTR [64+r13+rbp*4]

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_coshf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf8_ha_l9_B1_B3:
        .long   866561
        .long   4248633
        .long   2021425
        .long   1894440
        .long   1767455
        .long   4325647
        .long   4027011080
        .long   12293

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_coshf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf8_ha_l9_B6_B10:
        .long   931873
        .long   182328
        .long   309298
        .long   436268
        .long   563238
        .long   690205
        .long   817172
        .long   944137
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_coshf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_coshf8_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_coshf4_ha_ex

__jsvml_coshf4_ha_ex:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L109:

        sub       rsp, 264
        lea       r10, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [224+rsp], xmm15
        movups    XMMWORD PTR [192+rsp], xmm7
        movups    XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm1, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        movups    xmm7, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        andnps    xmm1, xmm0
        mulps     xmm7, xmm1
        movaps    xmm2, xmm1
        movups    xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1280]
        movups    xmm6, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        addps     xmm7, xmm4
        movaps    xmm3, xmm7
        subps     xmm7, xmm4
        movdqu    xmm15, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1344]
        pxor      xmm3, xmm4
        pcmpgtd   xmm2, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1408]
        mulps     xmm6, xmm7
        movmskps  ecx, xmm2
        movdqa    xmm2, xmm15
        subps     xmm1, xmm6
        psubd     xmm2, xmm3
        psrld     xmm2, 28
        movups    xmm5, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        pslld     xmm2, 4
        mulps     xmm5, xmm7
        por       xmm2, xmm3
        pand      xmm2, xmm15
        subps     xmm1, xmm5
        movdqa    xmm4, xmm2
        psubd     xmm3, xmm2
        pslld     xmm4, 4
        pslld     xmm3, 19
        pshufd    xmm5, xmm4, 1
        pshufd    xmm6, xmm4, 2
        pshufd    xmm15, xmm4, 3
        movd      edx, xmm4
        movd      eax, xmm5
        movd      r8d, xmm6
        movd      r9d, xmm15
        movd      xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rdx]
        movd      xmm7, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rax]
        movd      xmm6, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r8]
        movd      xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r9]
        punpckldq xmm15, xmm7
        punpckldq xmm6, xmm5
        movd      xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r9]
        unpcklpd  xmm15, xmm6
        movd      xmm7, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rdx]
        movd      xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rax]
        movd      xmm6, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r8]
        punpckldq xmm7, xmm4
        punpckldq xmm6, xmm5
        punpcklqdq xmm7, xmm6
        movaps    xmm6, xmm15
        mulps     xmm7, xmm1
        addps     xmm6, xmm15
        movd      xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rdx]
        addps     xmm15, xmm7
        mulps     xmm15, xmm1
        movd      xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rax]
        punpckldq xmm5, xmm4
        movd      xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r8]
        movd      xmm7, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r9]
        punpckldq xmm4, xmm7
        punpcklqdq xmm5, xmm4
        movd      xmm4, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rdx]
        addps     xmm5, xmm15
        mulps     xmm1, xmm5
        movd      xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rax]
        punpckldq xmm4, xmm15
        movd      xmm15, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r8]
        movd      xmm7, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r9]
        punpckldq xmm15, xmm7
        punpcklqdq xmm4, xmm15
        mov       QWORD PTR [248+rsp], r13
        addps     xmm4, xmm1
        addps     xmm6, xmm4
        paddd     xmm6, xmm3
        test      ecx, ecx
        jne       .L_B5_3

.L_B5_2:

        movups    xmm7, XMMWORD PTR [192+rsp]
        movaps    xmm0, xmm6
        movups    xmm6, XMMWORD PTR [208+rsp]
        movups    xmm15, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B5_3:

        movups    XMMWORD PTR [r13], xmm0
        movups    XMMWORD PTR [64+r13], xmm6

.L_B5_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, ecx

.L_B5_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm6, XMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_coshf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_ex_B1_B3:
        .long   668417
        .long   2020403
        .long   878635
        .long   817187
        .long   981019
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_coshf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_coshf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_coshf4_ha_ex_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_coshf4_ha_e9

__jsvml_coshf4_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L122:

        sub       rsp, 248
        vmovaps   xmm3, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm11
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [224+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1024]
        and       r13, -64
        vandnps   xmm4, xmm2, xmm3
        vmulps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+768]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1280]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1344]
        vaddps    xmm0, xmm11, xmm2
        vxorps    xmm2, xmm0, xmm11
        vsubps    xmm11, xmm0, xmm11
        vpcmpgtd  xmm6, xmm4, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+1408]
        vpsubd    xmm5, xmm1, xmm2
        vmovmskps ecx, xmm6
        vpsrld    xmm6, xmm5, 28
        vpslld    xmm5, xmm6, 4
        vpor      xmm6, xmm5, xmm2
        vmulps    xmm0, xmm11, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+896]
        vpand     xmm1, xmm6, xmm1
        vpslld    xmm6, xmm1, 4
        vpsubd    xmm1, xmm2, xmm1
        vmovd     edx, xmm6
        vpslld    xmm1, xmm1, 19
        vsubps    xmm4, xmm4, xmm0
        vmulps    xmm0, xmm11, XMMWORD PTR [rip+__jsvml_scosh_ha_data_internal+960]
        vpextrd   r8d, xmm6, 2
        vsubps    xmm4, xmm4, xmm0
        vpextrd   eax, xmm6, 1
        vpextrd   r9d, xmm6, 3
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rdx]
        vmovd     xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r8]
        vpinsrd   xmm0, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+rax], 1
        vpinsrd   xmm6, xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1480+r10+r9], 1
        vmovd     xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rdx]
        vunpcklpd xmm5, xmm0, xmm6
        vmovd     xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r8]
        vpinsrd   xmm6, xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+rax], 1
        vpinsrd   xmm11, xmm0, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1484+r10+r9], 1
        vaddps    xmm0, xmm5, xmm5
        vpunpcklqdq xmm6, xmm6, xmm11
        vmulps    xmm11, xmm6, xmm4
        mov       QWORD PTR [232+rsp], r13
        vaddps    xmm6, xmm5, xmm11
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rdx]
        vpinsrd   xmm11, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+rax], 1
        vmulps    xmm6, xmm4, xmm6
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r8]
        vpinsrd   xmm5, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1476+r10+r9], 1
        vpunpcklqdq xmm11, xmm11, xmm5
        vmovd     xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rdx]
        vaddps    xmm6, xmm11, xmm6
        vpinsrd   xmm5, xmm5, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+rax], 1
        vmovd     xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r8]
        vpinsrd   xmm11, xmm11, DWORD PTR ["__jsvml_scosh_ha_data_internal"@imgrel+1472+r10+r9], 1
        vmulps    xmm4, xmm4, xmm6
        vpunpcklqdq xmm5, xmm5, xmm11
        vaddps    xmm4, xmm5, xmm4
        vaddps    xmm0, xmm0, xmm4
        vpaddd    xmm0, xmm0, xmm1
        test      ecx, ecx
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [224+rsp]
        add       rsp, 248
        ret

.L_B6_3:

        vmovups   XMMWORD PTR [r13], xmm3
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B6_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, ecx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scosh_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_coshf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_e9_B1_B3:
        .long   536577
        .long   1889328
        .long   878632
        .long   833560
        .long   2031883

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_coshf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_coshf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_coshf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_coshf4_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_scosh_ha_cout_rare_internal

__jsvml_scosh_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L133:

        sub       rsp, 136
        xor       eax, eax
        movzx     r8d, WORD PTR [2+rcx]
        and       r8d, 32640
        movups    XMMWORD PTR [80+rsp], xmm15
        movups    XMMWORD PTR [112+rsp], xmm14
        movups    XMMWORD PTR [96+rsp], xmm9
        cmp       r8d, 32640
        je        .L_B7_12

.L_B7_2:

        pxor      xmm0, xmm0
        cvtss2sd  xmm0, DWORD PTR [rcx]
        movsd     QWORD PTR [64+rsp], xmm0
        and       BYTE PTR [71+rsp], 127
        movzx     ecx, WORD PTR [70+rsp]
        and       ecx, 32752
        cmp       ecx, 15504
        jle       .L_B7_10

.L_B7_3:

        movsd     xmm15, QWORD PTR [64+rsp]
        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1096]
        comisd    xmm0, xmm15
        jbe       .L_B7_9

.L_B7_4:

        mov       rcx, QWORD PTR [rip+_vmldCoshHATab+1128]
        mov       QWORD PTR [64+rsp], rcx
        comisd    xmm15, QWORD PTR [rip+_vmldCoshHATab+1144]
        jb        .L_B7_8

.L_B7_5:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1040]
        lea       r9, QWORD PTR [rip+__ImageBase]
        mulsd     xmm0, xmm15
        addsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1048]
        movsd     QWORD PTR [32+rsp], xmm0
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
        subsd     xmm15, xmm2
        mulsd     xmm3, QWORD PTR [rip+_vmldCoshHATab+1112]
        movsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1088]
        subsd     xmm15, xmm3
        mulsd     xmm1, xmm15
        movsd     xmm4, QWORD PTR ["_vmldCoshHATab"@imgrel+r9+r8*8]
        mov       r8, r9
        shr       ecx, 6
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1080]
        mulsd     xmm1, xmm15
        add       ecx, 1022
        and       ecx, 2047
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1072]
        mulsd     xmm1, xmm15
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1064]
        mulsd     xmm1, xmm15
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1056]
        mulsd     xmm1, xmm15
        mulsd     xmm1, xmm15
        addsd     xmm1, xmm15
        mulsd     xmm1, xmm4
        addsd     xmm1, QWORD PTR ["_vmldCoshHATab"@imgrel+r8+r11*8]
        addsd     xmm1, xmm4
        cmp       ecx, 2046
        ja        .L_B7_7

.L_B7_6:

        mov       r8, QWORD PTR [rip+_vmldCoshHATab+1128]
        shr       r8, 48
        shl       ecx, 4
        and       r8d, -32753
        or        r8d, ecx
        mov       WORD PTR [70+rsp], r8w
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm0, xmm1
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_11

.L_B7_7:

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
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        jmp       .L_B7_11

.L_B7_8:

        movsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1040]
        lea       r8, QWORD PTR [rip+__ImageBase]
        mulsd     xmm1, xmm15
        movzx     r9d, WORD PTR [70+rsp]
        and       r9d, -32753
        addsd     xmm1, QWORD PTR [rip+_vmldCoshHATab+1048]
        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm9, QWORD PTR [32+rsp]
        mov       r11d, DWORD PTR [32+rsp]
        mov       ecx, r11d
        shr       ecx, 6
        and       r11d, 63
        subsd     xmm9, QWORD PTR [rip+_vmldCoshHATab+1048]
        movsd     QWORD PTR [40+rsp], xmm9
        lea       r10d, DWORD PTR [1023+rcx]
        movsd     xmm14, QWORD PTR [40+rsp]
        add       ecx, 1022
        mulsd     xmm14, QWORD PTR [rip+_vmldCoshHATab+1104]
        and       ecx, 2047
        movsd     xmm4, QWORD PTR [40+rsp]
        neg       r10d
        mulsd     xmm4, QWORD PTR [rip+_vmldCoshHATab+1112]
        subsd     xmm15, xmm14
        movsd     xmm14, QWORD PTR [rip+_vmldCoshHATab+1088]
        add       r10d, -4
        shl       ecx, 4
        and       r10d, 2047
        movsd     xmm9, QWORD PTR [rip+_vmldCoshHATab+1080]
        or        r9d, ecx
        mov       WORD PTR [70+rsp], r9w
        lea       ecx, DWORD PTR [r11+r11]
        shl       r10d, 4
        and       r9d, -32753
        or        r9d, r10d
        subsd     xmm15, xmm4
        movaps    xmm5, xmm15
        mulsd     xmm5, xmm15
        mulsd     xmm14, xmm5
        mulsd     xmm9, xmm5
        addsd     xmm14, QWORD PTR [rip+_vmldCoshHATab+1072]
        addsd     xmm9, QWORD PTR [rip+_vmldCoshHATab+1064]
        mulsd     xmm14, xmm5
        mulsd     xmm9, xmm5
        addsd     xmm14, QWORD PTR [rip+_vmldCoshHATab+1056]
        mulsd     xmm9, xmm15
        mulsd     xmm14, xmm5
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
        mulsd     xmm9, xmm4
        addsd     xmm1, xmm2
        movaps    xmm2, xmm5
        movsd     QWORD PTR [56+rsp], xmm1
        subsd     xmm2, xmm3
        mulsd     xmm2, xmm15
        mulsd     xmm15, xmm4
        addsd     xmm2, xmm3
        movsd     xmm1, QWORD PTR [48+rsp]
        addsd     xmm2, xmm5
        mulsd     xmm14, xmm1
        movsd     xmm0, QWORD PTR [56+rsp]
        addsd     xmm0, xmm2
        addsd     xmm0, xmm9
        addsd     xmm0, xmm14
        addsd     xmm0, xmm15
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm15, QWORD PTR [48+rsp]
        addsd     xmm1, xmm15
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        jmp       .L_B7_11

.L_B7_9:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1120]
        mov       eax, 3
        mulsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_11

.L_B7_10:

        movsd     xmm0, QWORD PTR [rip+_vmldCoshHATab+1136]
        addsd     xmm0, QWORD PTR [64+rsp]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0

.L_B7_11:

        movups    xmm9, XMMWORD PTR [96+rsp]
        movups    xmm14, XMMWORD PTR [112+rsp]
        movups    xmm15, XMMWORD PTR [80+rsp]
        add       rsp, 136
        ret

.L_B7_12:

        movss     xmm0, DWORD PTR [rcx]
        mulss     xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_11
        .align    16, 0x90

.L_B7_13:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_scosh_ha_cout_rare_internal_B1_B12:
        .long   535297
        .long   432171
        .long   518181
        .long   391199
        .long   1114379

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_13
        .rva    _unwind___jsvml_scosh_ha_cout_rare_internal_B1_B12

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_scosh_ha_data_internal
__jsvml_scosh_ha_data_internal:
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
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
        .long   1118743630
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
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1056964879
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
        .long   1042983629
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
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
        .long   849703008
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
        .long   944570348
        .long   870537889
        .long   1056963788
        .long   988584323
        .long   3089368227
        .long   1026654286
        .long   1056972809
        .long   1005362723
        .long   3089410886
        .long   1035053812
        .long   1056996444
        .long   1013759196
        .long   3089450701
        .long   1040545168
        .long   1057035884
        .long   1018294210
        .long   3089519489
        .long   1043486152
        .long   1057091204
        .long   1022210002
        .long   3089622651
        .long   1046449073
        .long   1057162508
        .long   1024792095
        .long   3089732783
        .long   1049007747
        .long   1057249929
        .long   1026787500
        .long   3089879760
        .long   1050519514
        .long   1057353632
        .long   1028802193
        .long   3090009552
        .long   1052050675
        .long   1057473810
        .long   1030843673
        .long   3090201654
        .long   1053604104
        .long   1057610691
        .long   1032358162
        .long   3090393038
        .long   1055182718
        .long   1057764530
        .long   1033401816
        .long   3090624519
        .long   1056789478
        .long   1057935617
        .long   1034476232
        .long   3090859136
        .long   1057696005
        .long   1058124272
        .long   1035562860
        .long   3091126256
        .long   1058532085
        .long   1058330850
        .long   1036689182
        .long   3091401474
        .long   1059386854
        .long   1058555738
        .long   1037824061
        .long   3091713853
        .long   1060261915
        .long   1058799359
        .long   1038999406
        .long   3092054410
        .long   1061158912
        .long   1059062170
        .long   1040187520
        .long   3092413532
        .long   1062079528
        .long   1059344664
        .long   1040796570
        .long   3092816174
        .long   1063025490
        .long   1059647372
        .long   1041432479
        .long   3093223701
        .long   1063998575
        .long   1059970861
        .long   1042082428
        .long   3093662789
        .long   1065000609
        .long   1060315739
        .long   1042753182
        .long   3094122539
        .long   1065693345
        .long   1060682653
        .long   1043434554
        .long   3094645738
        .long   1066226161
        .long   1061072293
        .long   1044155985
        .long   3095155406
        .long   1066776362
        .long   1061485388
        .long   1044890780
        .long   3095550555
        .long   1067344981
        .long   1061922715
        .long   1045635453
        .long   3095847386
        .long   1067933084
        .long   1062385095
        .long   1046418690
        .long   3096168298
        .long   1068541775
        .long   1062873396
        .long   1047240047
        .long   3096488137
        .long   1069172198
        .long   1063388533
        .long   1048071426
        .long   3096841182
        .long   1069825535
        .long   1063931475
        .long   1048758942
        .long   3097209475
        .long   1070503013
        .long   1064503240
        .long   1049207926
        .long   3097589791
        .long   1071205903
        .long   1065104901
        .long   1049678351
        .long   3097993402
        .long   1071935525
        .long   1065545402
        .long   1050164645
        .long   3098411341
        .long   1072693248
        .long   1065877852
        .long   1050673310
        .long   3098859808
        .long   1073480495
        .long   1066227033
        .long   1051198081
        .long   3099325394
        .long   1074020284
        .long   1066593600
        .long   1051736997
        .long   3099839474
        .long   1074445677
        .long   1066978242
        .long   1052300332
        .long   3100370328
        .long   1074888136
        .long   1067381680
        .long   1052909383
        .long   3100909820
        .long   1075348494
        .long   1067804671
        .long   1053514627
        .long   3101459594
        .long   1075827613
        .long   1068248009
        .long   1054160592
        .long   3102047769
        .long   1076326394
        .long   1068712527
        .long   1054814464
        .long   3102677758
        .long   1076845772
        .long   1069199097
        .long   1055502910
        .long   3103340170
        .long   1077386722
        .long   1069708632
        .long   1056225281
        .long   3103903569
        .long   1077950259
        .long   1070242088
        .long   1056977834
        .long   3104249593
        .long   1078537443
        .long   1070800466
        .long   1057360587
        .long   3104632246
        .long   1079149373
        .long   1071384816
        .long   1057776467
        .long   3105038122
        .long   1079787200
        .long   1071996234
        .long   1058202023
        .long   3105440616
        .long   1080452121
        .long   1072635866
        .long   1058640522
        .long   3105862938
        .long   1081145383
        .long   1073304914
        .long   1059104028
        .long   3106308416
        .long   1081868288
        .long   1073873229
        .long   1059586215
        .long   3106787412
        .long   1082376312
        .long   1074239082
        .long   1060097588
        .long   3107276928
        .long   1082769472
        .long   1074621614
        .long   1060619929
        .long   3107776680
        .long   1083179578
        .long   1075021543
        .long   1061153935
        .long   3108330475
        .long   1083607398
        .long   1075439621
        .long   1061737331
        .long   3108881710
        .long   1084053737
        .long   1075876631
        .long   1062331214
        .long   3109487286
        .long   1084519432
        .long   1076333395
        .long   1062953203
        .long   3110070509
        .long   1085005358
        .long   1076810768
        .long   1063586843
        .long   3110728850
        .long   1085512425
        .long   1077309649
        .long   1064276575
        .long   3111383871
        .long   1086041587
        .long   1077830972
        .long   1064978612
        .long   3112084118
        .long   1086593836
        .long   1078375717
        .long   1065536743
        .long   3112493703
        .long   1087170210
        .long   1078944906
        .long   1065913820
        .long   3112867371
        .long   1087771789
        .long   1079539607
        .long   1066317189
        .long   3113278547
        .long   1088399703
        .long   1080160938
        .long   1066739445
        .long   3113690682
        .long   1089055131
        .long   1080810063
        .long   1067177635
        .long   3114113585
        .long   1089739304
        .long   1081488201
        .long   1067625214
        .long   3114565947
        .long   1090453504
        .long   1082163529
        .long   1068105897
        .long   3115052575
        .long   1090859057
        .long   1082533550
        .long   1068596020
        .long   3115539880
        .long   1091248226
        .long   1082920073
        .long   1069111659
        .long   3116077017
        .long   1091654509
        .long   1083323825
        .long   1069663909
        .long   3116603774
        .long   1092078670
        .long   1083745562
        .long   1070225544
        .long   3117166138
        .long   1092521504
        .long   1084186077
        .long   1070821702
        .long   3117769278
        .long   1092983843
        .long   1084646197
        .long   1071437696
        .long   3118359457
        .long   1093466555
        .long   1085126784
        .long   1072071392
        .long   3119000307
        .long   1093970545
        .long   1085628742
        .long   1072746100
        .long   3119686251
        .long   1094496760
        .long   1086153013
        .long   1073443058
        .long   3120382865
        .long   1095046187
        .long   1086700580
        .long   1073960254
        .long   3120829800
        .long   1095619858
        .long   1087272471
        .long   1074341025
        .long   3121221705
        .long   1096218849
        .long   1087869761
        .long   1074743826
        .long   3121630109
        .long   1096844285
        .long   1088493570
        .long   1075162699
        .long   3122040558
        .long   1097497340
        .long   1089145068
        .long   1075598254
        .long   3122471799
        .long   1098179240
        .long   1089825479
        .long   1076049525
        .long   3122921786
        .long   1098891264
        .long   1090527560
        .long   1076527273
        .long   3123410322
        .long   1099271199
        .long   1090898623
        .long   1077017199
        .long   3123905268
        .long   1099659370
        .long   1091286144
        .long   1077536277
        .long   3124427171
        .long   1100064698
        .long   1091690851
        .long   1078077742
        .long   3124955362
        .long   1100487944
        .long   1092113503
        .long   1078639053
        .long   3125512315
        .long   1100929902
        .long   1092554894
        .long   1079230664
        .long   3126114846
        .long   1101391402
        .long   1093015853
        .long   1079845159
        .long   3126723150
        .long   1101873310
        .long   1093497244
        .long   1080489100
        .long   3127384205
        .long   1102376531
        .long   1093999972
        .long   1081154940
        .long   3128045109
        .long   1102902009
        .long   1094524979
        .long   1081855739
        .long   3128757202
        .long   1103450730
        .long   1095073252
        .long   1082365260
        .long   3129233957
        .long   1104023725
        .long   1095645820
        .long   1082749515
        .long   3129593552
        .long   1104622070
        .long   1096243755
        .long   1083141940
        .long   3130009456
        .long   1105246886
        .long   1096868184
        .long   1083565083
        .long   3130431772
        .long   1105899348
        .long   1097520276
        .long   1083997423
        .long   3130861002
        .long   1106580680
        .long   1098201255
        .long   1084447059
        .long   3131310395
        .long   1107292160
        .long   1098910024
        .long   1084924074
        .long   3131783023
        .long   1107665690
        .long   1099281347
        .long   1085424177
        .long   3132296264
        .long   1108053612
        .long   1099669118
        .long   1085933889
        .long   3132789780
        .long   1108458701
        .long   1100074063
        .long   1086477769
        .long   3133359295
        .long   1108881718
        .long   1100496945
        .long   1087044117
        .long   3133914895
        .long   1109323457
        .long   1100938555
        .long   1087634592
        .long   3134525467
        .long   1109784747
        .long   1101399724
        .long   1088253827
        .long   3135105529
        .long   1110266455
        .long   1101881315
        .long   1088879869
        .long   3135755251
        .long   1110769483
        .long   1102384235
        .long   1089558833
        .long   3136442666
        .long   1111294777
        .long   1102909427
        .long   1090255482
        .long   3137142241
        .long   1111843322
        .long   1103457876
        .long   1090755410
        .long   3137605970
        .long   1112416148
        .long   1104030612
        .long   1091140533
        .long   3137986162
        .long   1113014331
        .long   1104628710
        .long   1091535483
        .long   3138387555
        .long   1113638993
        .long   1105253293
        .long   1091949463
        .long   3138804646
        .long   1114291306
        .long   1105905533
        .long   1092388670
        .long   3139233372
        .long   1114972496
        .long   1106586654
        .long   1092837897
        .long   3139699003
        .long   1115683840
        .long   1107297096
        .long   1093314730
        .long   3140167653
        .long   1116055769
        .long   1107668484
        .long   1093812263
        .long   3140669084
        .long   1116443628
        .long   1108056317
        .long   1094334974
        .long   3141171888
        .long   1116848658
        .long   1108461322
        .long   1094864117
        .long   3141735347
        .long   1117271618
        .long   1108884261
        .long   1095426609
        .long   3142298803
        .long   1117713302
        .long   1109325926
        .long   1096021914
        .long   3142894998
        .long   1118174540
        .long   1109787147
        .long   1096632105
        .long   3143500773
        .long   1118656197
        .long   1110268789
        .long   1097274132
        .long   3144147662
        .long   1119159177
        .long   1110771757
        .long   1097951263
        .long   3144833512
        .long   1119684425
        .long   1111296995
        .long   1098646873
        .long   3145529957
        .long   1120232926
        .long   1111845488
        .long   1099144404
        .long   3145990428
        .long   1120805710
        .long   1112418266
        .long   1099527187
        .long   3146379868
        .long   1121403852
        .long   1113016405
        .long   1099927882
        .long   3146785826
        .long   1122028475
        .long   1113641027
        .long   1100344686
        .long   3147185223
        .long   1122680752
        .long   1114293303
        .long   1100772823
        .long   3147622018
        .long   1123361906
        .long   1114974460
        .long   1101227063
        .long   3148087611
        .long   1124073216
        .long   1115685320
        .long   1101703851
        .long   3148547074
        .long   1124444745
        .long   1116056724
        .long   1102195626
        .long   3149061936
        .long   1124832589
        .long   1116444573
        .long   1102706245
        .long   3149567064
        .long   1125237603
        .long   1116849593
        .long   1103257276
        .long   3150120816
        .long   1125660549
        .long   1117272546
        .long   1103813688
        .long   3150694429
        .long   1126102219
        .long   1117714225
        .long   1104415316
        .long   3151287031
        .long   1126563444
        .long   1118175459
        .long   1105023245
        .long   3151907427
        .long   1127045088
        .long   1118657114
        .long   1105674384
        .long   3152520833
        .long   1127548057
        .long   1119160093
        .long   1106330596
        .long   3153222679
        .long   1128073293
        .long   1119685343
        .long   1107036177
        .long   3153918342
        .long   1128621783
        .long   1120233847
        .long   1107533108
        .long   3154369806
        .long   1129194557
        .long   1120806635
        .long   1107910191
        .long   3154757460
        .long   1129792689
        .long   1121404784
        .long   1108309765
        .long   3155168656
        .long   1130417302
        .long   1122029416
        .long   1108729833
        .long   3155580017
        .long   1131069569
        .long   1122681702
        .long   1109165432
        .long   3156018828
        .long   1131750714
        .long   1123362868
        .long   1109620926
        .long   3156476219
        .long   1132462016
        .long   1124073832
        .long   1110092587
        .long   3156933385
        .long   1132833445
        .long   1124445240
        .long   1110582922
        .long   3157451606
        .long   1133221285
        .long   1124833093
        .long   1111095633
        .long   3157965508
        .long   1133626295
        .long   1125238117
        .long   1111652137
        .long   3158533220
        .long   1134049237
        .long   1125661074
        .long   1112217259
        .long   3159060211
        .long   1134490905
        .long   1126102755
        .long   1112789777
        .long   3159676495
        .long   1134952126
        .long   1126563993
        .long   1113412486
        .long   3160292353
        .long   1135433767
        .long   1127045651
        .long   1114060788
        .long   3160905582
        .long   1135936733
        .long   1127548633
        .long   1114716886
        .long   3161611427
        .long   1136461966
        .long   1128073886
        .long   1115424959
        .long   3162315088
        .long   1137010453
        .long   1128622393
        .long   1115924298
        .long   3162768396
        .long   1137583224
        .long   1129195184
        .long   1116305071
        .long   3163147411
        .long   1138181354
        .long   1129793335
        .long   1116699250
        .long   3163551723
        .long   1138805965
        .long   1130417969
        .long   1117115018
        .long   3163974268
        .long   1139458229
        .long   1131070258
        .long   1117557598
        .long   3164409487
        .long   1140139372
        .long   1131751426
        .long   1118010847
        .long   3164864827
        .long   1140850672
        .long   1132462416
        .long   1118481227
        .long   3165321418
        .long   1141222076
        .long   1132833825
        .long   1118971202
        .long   3165840479
        .long   1141609915
        .long   1133221679
        .long   1119484436
        .long   3166356575
        .long   1142014924
        .long   1133626704
        .long   1120042308
        .long   3166895003
        .long   1142437866
        .long   1134049661
        .long   1120589147
        .long   3167459500
        .long   1142879532
        .long   1134491344
        .long   1121185079
        .long   3168048930
        .long   1143340753
        .long   1134952582
        .long   1121791022
        .long   3168671847
        .long   1143822393
        .long   1135434241
        .long   1122443730
        .long   3169293226
        .long   1144325358
        .long   1135937224
        .long   1123104914
        .long   3170008263
        .long   1144850590
        .long   1136462478
        .long   1123818726
        .long   3170689344
        .long   1145399077
        .long   1137010985
        .long   1124308436
        .long   3171155403
        .long   1145971847
        .long   1137583777
        .long   1124692689
        .long   3171540451
        .long   1146569976
        .long   1138181929
        .long   1125090634
        .long   3171951236
        .long   1147194586
        .long   1138806564
        .long   1125510443
        .long   3172347900
        .long   1147846851
        .long   1139458852
        .long   1125936865
        .long   3172790414
        .long   1148527993
        .long   1140140021
        .long   1126394668
        .long   3173253435
        .long   1149239292
        .long   1140851018
        .long   1126869843
        .long   3173701689
        .long   1149610690
        .long   1141222427
        .long   1127354613
        .long   3174212768
        .long   1149998528
        .long   1141610281
        .long   1127883320
        .long   3174721217
        .long   1150403538
        .long   1142015306
        .long   1128415961
        .long   3175285098
        .long   1150826479
        .long   1142438264
        .long   1128978690
        .long   3175842584
        .long   1151268145
        .long   1142879947
        .long   1129570245
        .long   3176458075
        .long   1151729365
        .long   1143341186
        .long   1130192458
        .long   3177074563
        .long   1152211005
        .long   1143822845
        .long   1130841152
        .long   3177689786
        .long   1152713970
        .long   1144325828
        .long   1131498492
        .long   3178398928
        .long   1153239202
        .long   1144851082
        .long   1132208623
        .long   3179074364
        .long   1153787689
        .long   1145399589
        .long   1132695927
        .long   3179539514
        .long   1154360459
        .long   1145972381
        .long   1133078492
        .long   3179921974
        .long   1154958588
        .long   1146570533
        .long   1133474821
        .long   3180330280
        .long   1155583198
        .long   1147195168
        .long   1133893083
        .long   3180740958
        .long   1156235462
        .long   1147847457
        .long   1134328253
        .long   3181181199
        .long   1156916604
        .long   1148528626
        .long   1134784637
        .long   3181625657
        .long   1157627903
        .long   1149239624
        .long   1135258451
        .long   3182104600
        .long   1157999299
        .long   1149611034
        .long   1135752152
        .long   3182613683
        .long   1158387137
        .long   1149998888
        .long   1136279613
        .long   3183120221
        .long   1158792147
        .long   1150403913
        .long   1136811061
        .long   3183682271
        .long   1159215088
        .long   1150826871
        .long   1137372647
        .long   3184238005
        .long   1159656754
        .long   1151268554
        .long   1137963108
        .long   3184851817
        .long   1160117974
        .long   1151729793
        .long   1138584273
        .long   3185433925
        .long   1160599615
        .long   1152211451
        .long   1139211502
        .long   3186080382
        .long   1161102579
        .long   1152714435
        .long   1139888343
        .long   3186788050
        .long   1161627811
        .long   1153239689
        .long   1140597554
        .long   3187462075
        .long   1162176298
        .long   1153788196
        .long   1141084255
        .long   3187926998
        .long   1162749068
        .long   1154360988
        .long   1141466399
        .long   3188308811
        .long   1163347197
        .long   1154959140
        .long   1141862324
        .long   3188716497
        .long   1163971807
        .long   1155583775
        .long   1142280199
        .long   3189126581
        .long   1164624071
        .long   1156236064
        .long   1142714999
        .long   3189566254
        .long   1165305213
        .long   1156917233
        .long   1143171028
        .long   3190026555
        .long   1166016512
        .long   1157628232
        .long   1143644503
        .long   3190504977
        .long   1166387907
        .long   1157999642
        .long   1144148108
        .long   3190980787
        .long   1166775746
        .long   1158387495
        .long   1144654797
        .long   3191519621
        .long   1167180755
        .long   1158792521
        .long   1145206407
        .long   3192081214
        .long   1167603696
        .long   1159215479
        .long   1145767708
        .long   3192636510
        .long   1168045362
        .long   1159657162
        .long   1146357895
        .long   3193217128
        .long   1168506583
        .long   1160118400
        .long   1146958337
        .long   3193831608
        .long   1168988223
        .long   1160600059
        .long   1147605777
        .long   3194477680
        .long   1169491187
        .long   1161103043
        .long   1148282377
        .long   3195152207
        .long   1170016420
        .long   1161628296
        .long   1148970897
        .long   3195858652
        .long   1170564906
        .long   1162176804
        .long   1149475351
        .long   3196319422
        .long   1171137676
        .long   1162749596
        .long   1149857389
        .long   3196701072
        .long   1171735805
        .long   1163347748
        .long   1150253213
        .long   3197108604
        .long   1172360415
        .long   1163972383
        .long   1150670991
        .long   3197518540
        .long   1173012679
        .long   1164624672
        .long   1151105698
        .long   3197958071
        .long   1173693821
        .long   1165305841
        .long   1151561639
        .long   3198418235
        .long   1174405120
        .long   1166016840
        .long   1152035030
        .long   3198896527
        .long   1174776515
        .long   1166388250
        .long   1152538553
        .long   3199372213
        .long   1175164354
        .long   1166776103
        .long   1153045164
        .long   3199910927
        .long   1175569363
        .long   1167181129
        .long   1153596699
        .long   3200472406
        .long   1175992304
        .long   1167604087
        .long   1154157929
        .long   3201027592
        .long   1176433970
        .long   1168045770
        .long   1154748047
        .long   3201608106
        .long   1176895191
        .long   1168507008
        .long   1155348424
        .long   3202222485
        .long   1177376831
        .long   1168988667
        .long   1155995801
        .long   3202868461
        .long   1177879795
        .long   1169491651
        .long   1156672341
        .long   3203542895
        .long   1178405028
        .long   1170016904
        .long   1157360804
        .long   3204249252
        .long   1178953514
        .long   1170565412
        .long   1157864581
        .long   3204708983
        .long   1179526284
        .long   1171138204
        .long   1158246593
        .long   3205090594
        .long   1180124413
        .long   1171736356
        .long   1158642392
        .long   3205498087
        .long   1180749023
        .long   1172360991
        .long   1159060145
        .long   3205907986
        .long   1181401287
        .long   1173013280
        .long   1159494829
        .long   3206347481
        .long   1182082429
        .long   1173694449
        .long   1159950748
        .long   3206807611
        .long   1182793728
        .long   1174405448
        .long   1160424117
        .long   3207285871
        .long   1183165123
        .long   1174776858
        .long   1160927621
        .long   3207761525
        .long   1183552962
        .long   1175164711
        .long   1161434212
        .long   3208300209
        .long   1183957971
        .long   1175569737
        .long   1161985728
        .long   3208861660
        .long   1184380912
        .long   1175992695
        .long   1162546940
        .long   3209416818
        .long   1184822578
        .long   1176434378
        .long   1163137042
        .long   3209997306
        .long   1185283799
        .long   1176895616
        .long   1163737402
        .long   3210611660
        .long   1185765439
        .long   1177377275
        .long   1164384763
        .long   3211257612
        .long   1186268403
        .long   1177880259
        .long   1165061288
        .long   3211932023
        .long   1186793636
        .long   1178405512
        .long   1165749736
        .long   3212638358
        .long   1187342122
        .long   1178954020
        .long   1166253344
        .long   3213097830
        .long   1187914892
        .long   1179526812
        .long   1166635350
        .long   3213479430
        .long   1188513021
        .long   1180124964
        .long   1167031142
        .long   3213886913
        .long   1189137631
        .long   1180749599
        .long   1167448890
        .long   3214296803
        .long   1189789895
        .long   1181401888
        .long   1167883568
        .long   3214736289
        .long   1190471037
        .long   1182083057
        .long   1168339481
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
        .long   2684354560
        .long   1079401119
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
