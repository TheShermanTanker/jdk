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
        .globl __jsvml_cbrt1_ha_e9

__jsvml_cbrt1_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 200
        mov       eax, 2147483647
        mov       edx, -2146435072
        mov       ecx, -2097153
        vmovapd   xmm4, xmm0
        mov       r8d, 1015808
        vpshufd   xmm0, xmm4, 85
        mov       r11d, 2048
        vmovd     xmm3, eax
        vmovups   XMMWORD PTR [176+rsp], xmm13
        vpand     xmm1, xmm0, xmm3
        vmovd     xmm13, edx
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vpsubd    xmm3, xmm1, xmm13
        vmovd     xmm1, ecx
        mov       QWORD PTR [168+rsp], r13
        vpcmpgtd  xmm13, xmm3, xmm1
        vmovd     xmm3, r8d
        lea       r13, QWORD PTR [95+rsp]
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        vpand     xmm1, xmm0, xmm3
        vmovmskps eax, xmm13
        vpsrlq    xmm13, xmm4, 52
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        vpsrld    xmm3, xmm1, 12
        vpand     xmm1, xmm13, xmm2
        vpsrld    xmm0, xmm0, 20
        vpmuludq  xmm2, xmm1, xmm5
        and       r13, -64
        vmovd     r9d, xmm3
        vpshufd   xmm5, xmm2, 0
        vpshufd   xmm1, xmm1, 0
        vpsrld    xmm13, xmm5, 14
        vpsubd    xmm2, xmm1, xmm13
        vpaddd    xmm5, xmm13, xmm13
        vpsubd    xmm1, xmm2, xmm5
        vpslld    xmm2, xmm1, 8
        vpaddd    xmm3, xmm3, xmm2
        vpslld    xmm5, xmm3, 1
        vmovd     r10d, xmm5
        vmovd     xmm5, r11d
        vpand     xmm0, xmm0, xmm5
        movsxd    r10, r10d
        movsxd    r9, r9d
        mov       QWORD PTR [192+rsp], r13
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rdx+r10]
        vmovsd    xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+264+rdx+r10]
        mov       r10d, 682
        vmovd     xmm2, r10d
        vpor      xmm5, xmm0, xmm2
        vpaddd    xmm13, xmm5, xmm13
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        vpslld    xmm13, xmm13, 20
        vpxor     xmm5, xmm5, xmm5
        vpunpckldq xmm2, xmm5, xmm13
        vandpd    xmm5, xmm4, xmm0
        vmovsd    xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vorpd     xmm5, xmm5, xmm13
        vandpd    xmm13, xmm4, xmm0
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vorpd     xmm13, xmm13, xmm0
        vmulsd    xmm3, xmm3, xmm2
        vsubsd    xmm5, xmm5, xmm13
        vmulsd    xmm0, xmm5, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rdx+r9]
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vmulsd    xmm13, xmm5, xmm0
        vaddsd    xmm5, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vmulsd    xmm13, xmm5, xmm0
        vmulsd    xmm5, xmm1, xmm2
        vaddsd    xmm13, xmm13, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulsd    xmm1, xmm5, xmm0
        vmulsd    xmm2, xmm13, xmm1
        vaddsd    xmm0, xmm2, xmm3
        vaddsd    xmm0, xmm0, xmm5
        and       eax, 1
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm13, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 200
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

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B1_4
        .align    16, 0x90

.L_B1_7:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt1_ha_e9_B1_B6:
        .long   416769
        .long   1430620
        .long   776252
        .long   1638667

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_7
        .rva    _unwind___jsvml_cbrt1_ha_e9_B1_B6

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt4_ha_l9

__jsvml_cbrt4_ha_l9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L6:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [496+rsp], ymm15
        vmovapd   ymm15, ymm0
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [399+rsp]
        and       r13, -64
        mov       QWORD PTR [536+rsp], r13
        vextracti128 xmm2, ymm15, 1
        vshufps   xmm1, xmm15, xmm2, 221
        vandps    xmm5, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2752]
        vpsrld    xmm5, xmm5, 12
        vmovd     ecx, xmm5
        vandps    xmm4, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2816]
        vpsrld    xmm1, xmm1, 20
        vpsubd    xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3008]
        movsxd    rcx, ecx
        vpextrd   r8d, xmm5, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm5, 2
        movsxd    r9, r9d
        vpextrd   r10d, xmm5, 3
        vmovsd    xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+rcx]
        movsxd    r10, r10d
        vmovhpd   xmm4, xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r8]
        vpsrlq    ymm3, ymm15, 52
        vpcmpgtd  xmm2, xmm0, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3072]
        vmovsd    xmm0, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r9]
        vmovmskps edx, xmm2
        vmovhpd   xmm2, xmm0, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r10]
        vinsertf128 ymm2, ymm4, xmm2, 1
        vpand     ymm4, ymm3, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        vpmuludq  ymm0, ymm4, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        vextracti128 xmm3, ymm4, 1
        vshufps   xmm4, xmm4, xmm3, 136
        vextracti128 xmm3, ymm0, 1
        vshufps   xmm0, xmm0, xmm3, 136
        vpsrld    xmm0, xmm0, 14
        vpsubd    xmm4, xmm4, xmm0
        vpaddd    xmm3, xmm0, xmm0
        vpsubd    xmm4, xmm4, xmm3
        vpslld    xmm4, xmm4, 8
        vpaddd    xmm5, xmm5, xmm4
        vpslld    xmm4, xmm5, 1
        vmovd     r11d, xmm4
        vpextrd   ecx, xmm4, 1
        movsxd    r11, r11d
        movsxd    rcx, ecx
        vpextrd   r8d, xmm4, 2
        vpextrd   r9d, xmm4, 3
        movsxd    r8, r8d
        movsxd    r9, r9d
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r11]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+rcx]
        vinsertf128 ymm5, ymm5, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r8], 1
        vinsertf128 ymm3, ymm3, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r9], 1
        vunpcklpd ymm4, ymm5, ymm3
        vunpckhpd ymm5, ymm5, ymm3
        vpand     xmm3, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2880]
        vpor      xmm1, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2944]
        vmovups   ymm3, YMMWORD PTR [rip+__VUNPACK_ODD_ind1_2671_0_2]
        vpaddd    xmm0, xmm1, xmm0
        vpslld    xmm0, xmm0, 20
        vpermps   ymm1, ymm3, ymm0
        vandpd    ymm0, ymm15, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        vandps    ymm3, ymm1, YMMWORD PTR [rip+__VUNPACK_ODD_mask_2671_0_2]
        vorpd     ymm1, ymm0, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vandpd    ymm0, ymm15, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vorpd     ymm0, ymm0, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vsubpd    ymm1, ymm1, ymm0
        vmovupd   ymm0, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vmulpd    ymm4, ymm4, ymm3
        vmulpd    ymm2, ymm2, ymm1
        vmulpd    ymm5, ymm5, ymm3
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vfmadd213pd ymm0, ymm2, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulpd    ymm2, ymm2, ymm4
        vmulpd    ymm0, ymm0, ymm2
        vaddpd    ymm1, ymm5, ymm0
        vaddpd    ymm0, ymm4, ymm1
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vmovups   ymm15, YMMWORD PTR [496+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B2_3:

        vmovupd   YMMWORD PTR [r13], ymm15
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B2_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [288+rsp], ymm6
        vmovups   YMMWORD PTR [256+rsp], ymm7
        vmovups   YMMWORD PTR [224+rsp], ymm8
        vmovups   YMMWORD PTR [192+rsp], ymm9
        vmovups   YMMWORD PTR [160+rsp], ymm10
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm14
        mov       QWORD PTR [328+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [320+rsp], rsi
        mov       esi, edx

.L_B2_7:

        bt        esi, ebx
        jc        .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        vmovups   ymm6, YMMWORD PTR [288+rsp]
        vmovups   ymm7, YMMWORD PTR [256+rsp]
        vmovups   ymm8, YMMWORD PTR [224+rsp]
        vmovups   ymm9, YMMWORD PTR [192+rsp]
        vmovups   ymm10, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm14, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [328+rsp]
        mov       rsi, QWORD PTR [320+rsp]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt4_ha_l9_B1_B3:
        .long   403201
        .long   4379687
        .long   2095131
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cbrt4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt4_ha_l9_B6_B10:
        .long   1858561
        .long   2647132
        .long   2700370
        .long   190538
        .long   317508
        .long   444478
        .long   571448
        .long   698415
        .long   825382
        .long   952349
        .long   1079316
        .long   1206283
        .long   2095104
        .long   4379648
        .long   4522240

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_cbrt4_ha_l9_B6_B10

        .section .rdata, "dr"
        .align 32
__VUNPACK_ODD_ind1_2671_0_2:
        .long   0
        .long   0
        .long   0
        .long   1
        .long   0
        .long   2
        .long   0
        .long   3
        .space 32, 0x0
__VUNPACK_ODD_mask_2671_0_2:
        .long   0
        .long   -1
        .long   0
        .long   -1
        .long   0
        .long   -1
        .long   0
        .long   -1
        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt8_ha_z0

__jsvml_cbrt8_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L33:

        vgetexppd zmm25, zmm0 {sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+384]
        vgetmantpd zmm3, zmm0, 0 {sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+512]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+576]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+640]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+128]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+704]
        vrcp14pd  zmm31, zmm3
        vaddpd    zmm30, zmm25, zmm26 {rn-sae}
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+768]
        vrndscalepd zmm4, zmm31, 72 {sae}
        vfmsub231pd zmm28, zmm27, zmm30 {rn-sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+256]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+896]
        vpsrlq    zmm1, zmm4, 49
        vrndscalepd zmm24, zmm28, 9 {sae}
        vfmsub231pd zmm5, zmm3, zmm4 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+832]
        vpermt2pd zmm2, zmm1, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+192]
        vpermt2pd zmm27, zmm1, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+320]
        vfnmadd231pd zmm30, zmm29, zmm24 {rn-sae}
        vfmadd231pd zmm4, zmm25, zmm5 {rn-sae}
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1024]
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1088]
        vmulpd    zmm1, zmm5, zmm5 {rn-sae}
        vfmadd231pd zmm25, zmm29, zmm5 {rn-sae}
        vpermpd   zmm23, zmm30, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512]
        vpermpd   zmm22, zmm30, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+64]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+960]
        vmulpd    zmm3, zmm23, zmm2 {rn-sae}
        vfmadd231pd zmm30, zmm26, zmm5 {rn-sae}
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1216]
        vfmadd213pd zmm4, zmm1, zmm30 {rn-sae}
        vmovaps   zmm28, zmm23
        vfmsub213pd zmm28, zmm2, zmm3 {rn-sae}
        vfmadd213pd zmm4, zmm1, zmm25 {rn-sae}
        vfmadd213pd zmm23, zmm27, zmm28 {rn-sae}
        vfmadd213pd zmm22, zmm2, zmm23 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1152]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1280]
        vfmadd231pd zmm26, zmm2, zmm5 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+1344]
        vfmadd213pd zmm4, zmm1, zmm26 {rn-sae}
        vfmadd231pd zmm2, zmm23, zmm5 {rn-sae}
        vmulpd    zmm5, zmm3, zmm5 {rn-sae}
        vfmadd213pd zmm4, zmm1, zmm2 {rn-sae}
        vfmadd213pd zmm5, zmm4, zmm22 {rn-sae}
        vaddpd    zmm22, zmm5, zmm3 {rn-sae}
        vscalefpd zmm24, zmm22, zmm24 {rn-sae}
        vpternlogq zmm0, zmm24, ZMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal_avx512+448], 236
        ret
        .align    16, 0x90

.L_B3_2:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt8_ha_z0\""

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt1_ha_l9

__jsvml_cbrt1_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L34:

        sub       rsp, 200
        mov       eax, 2147483647
        mov       edx, -2146435072
        mov       ecx, -2097153
        vmovapd   xmm4, xmm0
        mov       r8d, 1015808
        vpshufd   xmm0, xmm4, 85
        mov       r11d, 2048
        vmovd     xmm5, eax
        vpand     xmm3, xmm0, xmm5
        vmovd     xmm1, edx
        vpsubd    xmm5, xmm3, xmm1
        vmovd     xmm3, ecx
        vmovups   XMMWORD PTR [176+rsp], xmm14
        vpcmpgtd  xmm1, xmm5, xmm3
        mov       QWORD PTR [168+rsp], r13
        vmovd     xmm5, r8d
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        vpand     xmm3, xmm0, xmm5
        vmovmskps eax, xmm1
        vpsrlq    xmm1, xmm4, 52
        vmovq     xmm14, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        vpand     xmm1, xmm1, xmm2
        vpsrld    xmm3, xmm3, 12
        vpsrld    xmm0, xmm0, 20
        vpmuludq  xmm2, xmm1, xmm14
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovd     r9d, xmm3
        vpshufd   xmm14, xmm2, 0
        vpshufd   xmm1, xmm1, 0
        vpsrld    xmm5, xmm14, 14
        vpsubd    xmm2, xmm1, xmm5
        vpaddd    xmm14, xmm5, xmm5
        vpsubd    xmm1, xmm2, xmm14
        lea       r13, QWORD PTR [95+rsp]
        vpslld    xmm2, xmm1, 8
        and       r13, -64
        vpaddd    xmm3, xmm3, xmm2
        vpslld    xmm14, xmm3, 1
        vmovd     r10d, xmm14
        vmovd     xmm14, r11d
        vpand     xmm0, xmm0, xmm14
        movsxd    r10, r10d
        movsxd    r9, r9d
        mov       QWORD PTR [192+rsp], r13
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rdx+r10]
        vmovsd    xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+264+rdx+r10]
        mov       r10d, 682
        vmovd     xmm2, r10d
        vpor      xmm14, xmm0, xmm2
        vpaddd    xmm5, xmm14, xmm5
        vpslld    xmm0, xmm5, 20
        vpxor     xmm14, xmm14, xmm14
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        vpunpckldq xmm2, xmm14, xmm0
        vandpd    xmm14, xmm4, xmm5
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vorpd     xmm14, xmm14, xmm0
        vandpd    xmm0, xmm4, xmm5
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vorpd     xmm0, xmm0, xmm5
        vmulsd    xmm3, xmm3, xmm2
        vsubsd    xmm14, xmm14, xmm0
        vmulsd    xmm5, xmm14, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rdx+r9]
        vmulsd    xmm14, xmm1, xmm2
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vmulsd    xmm1, xmm14, xmm5
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vfmadd213sd xmm0, xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulsd    xmm2, xmm0, xmm1
        vaddsd    xmm0, xmm2, xmm3
        vaddsd    xmm0, xmm0, xmm14
        and       eax, 1
        jne       .L_B4_3

.L_B4_2:

        vmovups   xmm14, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 200
        ret

.L_B4_3:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B4_6

.L_B4_4:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B4_4
        .align    16, 0x90

.L_B4_7:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt1_ha_l9_B1_B6:
        .long   415745
        .long   1430616
        .long   780364
        .long   1638667

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_cbrt1_ha_l9_B1_B6

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt2_ha_l9

__jsvml_cbrt2_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L39:

        sub       rsp, 264
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [224+rsp], xmm12
        vmovups   XMMWORD PTR [192+rsp], xmm11
        vmovapd   xmm11, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm10
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovq     xmm4, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2752]
        and       r13, -64
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2816]
        vpshufd   xmm2, xmm11, 221
        vmovq     xmm10, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3008]
        vpand     xmm3, xmm2, xmm5
        vpand     xmm4, xmm2, xmm4
        vpsubd    xmm5, xmm3, xmm10
        vpsrld    xmm10, xmm4, 12
        vpsrlq    xmm3, xmm11, 52
        vmovd     ecx, xmm10
        vpsrld    xmm2, xmm2, 20
        vmovq     xmm12, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3072]
        vpcmpgtd  xmm12, xmm5, xmm12
        movsxd    rcx, ecx
        vpextrd   r8d, xmm10, 1
        movsxd    r8, r8d
        vmovmskps edx, xmm12
        vmovsd    xmm12, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+rcx]
        vpand     xmm5, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        vmovhpd   xmm4, xmm12, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r8]
        vpmuludq  xmm12, xmm5, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        vpshufd   xmm3, xmm12, 136
        vpshufd   xmm5, xmm5, 136
        vpsrld    xmm3, xmm3, 14
        vpsubd    xmm12, xmm5, xmm3
        vpaddd    xmm5, xmm3, xmm3
        vpsubd    xmm12, xmm12, xmm5
        vpslld    xmm5, xmm12, 8
        vpaddd    xmm10, xmm10, xmm5
        vpslld    xmm5, xmm10, 1
        vmovd     r9d, xmm5
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2880]
        vmovq     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2944]
        vpand     xmm1, xmm2, xmm1
        vpextrd   r10d, xmm5, 1
        movsxd    r9, r9d
        movsxd    r10, r10d
        vandpd    xmm2, xmm11, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        mov       QWORD PTR [248+rsp], r13
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r9]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r10]
        vunpcklpd xmm5, xmm12, xmm10
        vunpckhpd xmm10, xmm12, xmm10
        vpor      xmm12, xmm1, xmm0
        vpaddd    xmm3, xmm12, xmm3
        vandpd    xmm12, xmm11, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vpslld    xmm1, xmm3, 20
        vpxor     xmm0, xmm0, xmm0
        vpunpckldq xmm3, xmm0, xmm1
        vorpd     xmm0, xmm2, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vorpd     xmm1, xmm12, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vsubpd    xmm2, xmm0, xmm1
        vmulpd    xmm12, xmm5, xmm3
        vmulpd    xmm4, xmm4, xmm2
        vmulpd    xmm10, xmm10, xmm3
        vmulpd    xmm5, xmm4, xmm12
        vmovupd   xmm0, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vfmadd213pd xmm0, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulpd    xmm0, xmm0, xmm5
        vaddpd    xmm1, xmm10, xmm0
        vaddpd    xmm0, xmm12, xmm1
        and       edx, 3
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm10, XMMWORD PTR [208+rsp]
        vmovups   xmm11, XMMWORD PTR [192+rsp]
        vmovups   xmm12, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B5_3:

        vmovupd   XMMWORD PTR [r13], xmm11
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B5_2

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
        cmp       ebx, 2
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_l9_B1_B3:
        .long   669953
        .long   2020409
        .long   895025
        .long   833572
        .long   968731
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cbrt2_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cbrt2_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_cbrt2_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt2_ha_e9

__jsvml_cbrt2_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L52:

        sub       rsp, 264
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm9
        vmovups   XMMWORD PTR [224+rsp], xmm8
        vmovapd   xmm8, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm6
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovq     xmm9, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2752]
        and       r13, -64
        vmovq     xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2816]
        vpshufd   xmm2, xmm8, 221
        vmovq     xmm6, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3008]
        vpand     xmm3, xmm2, xmm5
        vpand     xmm9, xmm2, xmm9
        vpsubd    xmm5, xmm3, xmm6
        vpsrld    xmm6, xmm9, 12
        vpsrlq    xmm9, xmm8, 52
        vmovd     ecx, xmm6
        vpsrld    xmm2, xmm2, 20
        vmovq     xmm4, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3072]
        vpcmpgtd  xmm4, xmm5, xmm4
        movsxd    rcx, ecx
        vpextrd   r8d, xmm6, 1
        movsxd    r8, r8d
        vpand     xmm5, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        vmovsd    xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+rcx]
        vmovmskps edx, xmm4
        vmovhpd   xmm4, xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r8]
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2880]
        vpmuludq  xmm3, xmm5, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        vpand     xmm1, xmm2, xmm1
        vpshufd   xmm9, xmm3, 136
        vpshufd   xmm5, xmm5, 136
        vpsrld    xmm3, xmm9, 14
        vpsubd    xmm9, xmm5, xmm3
        vpaddd    xmm5, xmm3, xmm3
        vpsubd    xmm9, xmm9, xmm5
        vpslld    xmm5, xmm9, 8
        vpaddd    xmm6, xmm6, xmm5
        vpslld    xmm5, xmm6, 1
        vmovd     r9d, xmm5
        vmovq     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2944]
        vandpd    xmm2, xmm8, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        vpextrd   r10d, xmm5, 1
        movsxd    r9, r9d
        movsxd    r10, r10d
        mov       QWORD PTR [248+rsp], r13
        vmovupd   xmm9, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r9]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r10]
        vunpcklpd xmm5, xmm9, xmm6
        vunpckhpd xmm6, xmm9, xmm6
        vpor      xmm9, xmm1, xmm0
        vpaddd    xmm3, xmm9, xmm3
        vandpd    xmm9, xmm8, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vpslld    xmm1, xmm3, 20
        vpxor     xmm0, xmm0, xmm0
        vpunpckldq xmm3, xmm0, xmm1
        vorpd     xmm0, xmm2, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vorpd     xmm1, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vsubpd    xmm2, xmm0, xmm1
        vmulpd    xmm4, xmm4, xmm2
        vmulpd    xmm9, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vaddpd    xmm0, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vmulpd    xmm1, xmm4, xmm0
        vaddpd    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vmulpd    xmm9, xmm4, xmm2
        vaddpd    xmm0, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vmulpd    xmm1, xmm4, xmm0
        vaddpd    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vmulpd    xmm9, xmm4, xmm2
        vaddpd    xmm0, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vmulpd    xmm1, xmm4, xmm0
        vaddpd    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vmulpd    xmm9, xmm4, xmm2
        vaddpd    xmm0, xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulpd    xmm9, xmm5, xmm3
        vmulpd    xmm5, xmm6, xmm3
        vmulpd    xmm4, xmm4, xmm9
        vmulpd    xmm6, xmm0, xmm4
        vaddpd    xmm0, xmm5, xmm6
        vaddpd    xmm0, xmm9, xmm0
        and       edx, 3
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm6, XMMWORD PTR [192+rsp]
        vmovups   xmm8, XMMWORD PTR [224+rsp]
        vmovups   xmm9, XMMWORD PTR [208+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B6_3:

        vmovupd   XMMWORD PTR [r13], xmm8
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B6_2

.L_B6_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_e9_B1_B3:
        .long   669953
        .long   2020409
        .long   813105
        .long   952356
        .long   890907
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cbrt2_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cbrt2_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_cbrt2_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt1_ha_ex

__jsvml_cbrt1_ha_ex:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L65:

        sub       rsp, 200
        mov       eax, 2147483647
        mov       edx, -2146435072
        movaps    xmm1, xmm0
        movups    XMMWORD PTR [176+rsp], xmm11
        mov       ecx, -2097153
        pshufd    xmm0, xmm1, 85
        mov       r8d, 1015808
        movd      xmm11, eax
        mov       r11d, 2048
        pand      xmm11, xmm0
        movd      xmm3, edx
        mov       QWORD PTR [168+rsp], r13
        psubd     xmm11, xmm3
        movaps    xmm3, xmm1
        movd      xmm2, ecx
        movq      xmm5, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        psrlq     xmm3, 52
        movq      xmm4, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        pand      xmm3, xmm5
        pmuludq   xmm4, xmm3
        pcmpgtd   xmm11, xmm2
        movmskps  eax, xmm11
        pshufd    xmm2, xmm4, 0
        movd      xmm11, r8d
        psrld     xmm2, 14
        pand      xmm11, xmm0
        pshufd    xmm5, xmm3, 0
        movdqa    xmm4, xmm2
        psubd     xmm5, xmm2
        paddd     xmm4, xmm2
        psubd     xmm5, xmm4
        psrld     xmm11, 12
        pslld     xmm5, 8
        lea       rdx, QWORD PTR [rip+__ImageBase]
        movd      r9d, xmm11
        paddd     xmm11, xmm5
        pslld     xmm11, 1
        psrld     xmm0, 20
        movd      xmm3, r11d
        movd      r10d, xmm11
        pand      xmm0, xmm3
        pxor      xmm3, xmm3
        movsxd    r10, r10d
        lea       r13, QWORD PTR [95+rsp]
        movsxd    r9, r9d
        and       r13, -64
        mov       QWORD PTR [192+rsp], r13
        and       eax, 1
        movups    xmm5, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rdx+r10]
        movsd     xmm4, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+264+rdx+r10]
        mov       r10d, 682
        movd      xmm11, r10d
        por       xmm0, xmm11
        paddd     xmm0, xmm2
        movsd     xmm2, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        pslld     xmm0, 20
        punpckldq xmm3, xmm0
        andps     xmm2, xmm1
        movsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        movsd     xmm11, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        orps      xmm2, xmm0
        movsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        andps     xmm11, xmm1
        orps      xmm11, xmm0
        movsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        subsd     xmm2, xmm11
        mulsd     xmm5, xmm3
        mulsd     xmm4, xmm3
        mulsd     xmm2, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rdx+r9]
        mulsd     xmm0, xmm2
        movaps    xmm3, xmm5
        mulsd     xmm3, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        mulsd     xmm0, xmm3
        addsd     xmm0, xmm4
        addsd     xmm0, xmm5
        jne       .L_B7_3

.L_B7_2:

        movups    xmm11, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 200
        ret

.L_B7_3:

        movsd     QWORD PTR [r13], xmm1
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B7_6

.L_B7_4:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B7_2

.L_B7_6:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B7_4
        .align    16, 0x90

.L_B7_7:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt1_ha_ex_B1_B6:
        .long   412929
        .long   1430605
        .long   768033
        .long   1638667

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_7
        .rva    _unwind___jsvml_cbrt1_ha_ex_B1_B6

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt4_ha_e9

__jsvml_cbrt4_ha_e9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L70:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [464+rsp], ymm15
        vmovups   YMMWORD PTR [496+rsp], ymm8
        vmovapd   ymm15, ymm0
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [367+rsp]
        vmovupd   xmm0, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        and       r13, -64
        vmovupd   xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm2, ymm15, 1
        vshufps   xmm3, xmm15, xmm2, 221
        vpsrlq    xmm2, xmm2, 52
        vandps    xmm5, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2816]
        vpand     xmm2, xmm2, xmm0
        vpsubd    xmm4, xmm5, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3008]
        vpcmpgtd  xmm5, xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3072]
        vandps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2752]
        vpsrld    xmm3, xmm3, 20
        vpsrld    xmm4, xmm4, 12
        vmovd     ecx, xmm4
        vmovmskps edx, xmm5
        vpand     xmm3, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2880]
        movsxd    rcx, ecx
        vpextrd   r8d, xmm4, 1
        vpextrd   r9d, xmm4, 2
        movsxd    r8, r8d
        movsxd    r9, r9d
        vpextrd   r10d, xmm4, 3
        movsxd    r10, r10d
        vmovsd    xmm8, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+rcx]
        vmovhpd   xmm5, xmm8, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r8]
        vmovsd    xmm8, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r9]
        vmovhpd   xmm8, xmm8, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r10]
        vinsertf128 ymm5, ymm5, xmm8, 1
        vpsrlq    xmm8, xmm15, 52
        vpand     xmm8, xmm8, xmm0
        vshufps   xmm0, xmm8, xmm2, 136
        vpmuludq  xmm8, xmm8, xmm1
        vpmuludq  xmm1, xmm2, xmm1
        vshufps   xmm1, xmm8, xmm1, 136
        vpsrld    xmm1, xmm1, 14
        vpsubd    xmm0, xmm0, xmm1
        vpaddd    xmm2, xmm1, xmm1
        vpsubd    xmm8, xmm0, xmm2
        vpslld    xmm0, xmm8, 8
        vpaddd    xmm4, xmm4, xmm0
        vpslld    xmm2, xmm4, 1
        vmovd     r11d, xmm2
        vpextrd   ecx, xmm2, 1
        movsxd    r11, r11d
        movsxd    rcx, ecx
        vpextrd   r8d, xmm2, 2
        vpextrd   r9d, xmm2, 3
        movsxd    r8, r8d
        movsxd    r9, r9d
        vpor      xmm2, xmm3, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2944]
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r11]
        vpaddd    xmm1, xmm2, xmm1
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+rcx]
        vpslld    xmm1, xmm1, 20
        vpxor     xmm3, xmm3, xmm3
        vpunpckhdq xmm2, xmm3, xmm1
        vinsertf128 ymm8, ymm8, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r8], 1
        vinsertf128 ymm0, ymm4, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r9], 1
        vunpcklpd ymm4, ymm8, ymm0
        vunpckhpd ymm0, ymm8, ymm0
        vpunpckldq xmm8, xmm3, xmm1
        vandpd    ymm3, ymm15, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        vandpd    ymm1, ymm15, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        vinsertf128 ymm2, ymm8, xmm2, 1
        vorpd     ymm8, ymm3, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        vorpd     ymm3, ymm1, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        vsubpd    ymm1, ymm8, ymm3
        vmulpd    ymm1, ymm5, ymm1
        vmulpd    ymm5, ymm1, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        vaddpd    ymm3, ymm5, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        vmulpd    ymm5, ymm1, ymm3
        vaddpd    ymm8, ymm5, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        vmulpd    ymm3, ymm1, ymm8
        vaddpd    ymm5, ymm3, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        vmulpd    ymm8, ymm1, ymm5
        vaddpd    ymm3, ymm8, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        vmulpd    ymm5, ymm1, ymm3
        vaddpd    ymm8, ymm5, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        vmulpd    ymm3, ymm1, ymm8
        vaddpd    ymm5, ymm3, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        vmulpd    ymm3, ymm4, ymm2
        vmulpd    ymm4, ymm0, ymm2
        vmulpd    ymm8, ymm1, ymm5
        vmulpd    ymm0, ymm1, ymm3
        vaddpd    ymm5, ymm8, YMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        vmulpd    ymm1, ymm5, ymm0
        vaddpd    ymm2, ymm4, ymm1
        vaddpd    ymm0, ymm3, ymm2
        test      edx, edx
        jne       .L_B8_3

.L_B8_2:

        vmovups   ymm8, YMMWORD PTR [496+rsp]
        vmovups   ymm15, YMMWORD PTR [464+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B8_3:

        vmovupd   YMMWORD PTR [r13], ymm15
        vmovupd   YMMWORD PTR [64+r13], ymm0

.L_B8_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [256+rsp], ymm6
        vmovups   YMMWORD PTR [224+rsp], ymm7
        vmovups   YMMWORD PTR [192+rsp], ymm9
        vmovups   YMMWORD PTR [160+rsp], ymm10
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm14
        mov       QWORD PTR [296+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [288+rsp], rsi
        mov       esi, edx

.L_B8_7:

        bt        esi, ebx
        jc        .L_B8_10

.L_B8_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B8_7

.L_B8_9:

        vmovups   ymm6, YMMWORD PTR [256+rsp]
        vmovups   ymm7, YMMWORD PTR [224+rsp]
        vmovups   ymm9, YMMWORD PTR [192+rsp]
        vmovups   ymm10, YMMWORD PTR [160+rsp]
        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm14, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [296+rsp]
        mov       rsi, QWORD PTR [288+rsp]
        jmp       .L_B8_2

.L_B8_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B8_8
        .align    16, 0x90

.L_B8_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt4_ha_e9_B1_B3:
        .long   536577
        .long   4379696
        .long   2066468
        .long   1964059
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_cbrt4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt4_ha_e9_B6_B10:
        .long   1332001
        .long   2384979
        .long   2438217
        .long   190529
        .long   317499
        .long   444469
        .long   571439
        .long   698406
        .long   825373
        .long   948244
        .long   1075211
        .rva    .L_B8_1
        .rva    .L_B8_6
        .rva    _unwind___jsvml_cbrt4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_6
        .rva    .L_B8_11
        .rva    _unwind___jsvml_cbrt4_ha_e9_B6_B10

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrt2_ha_ex

__jsvml_cbrt2_ha_ex:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L97:

        sub       rsp, 264
        movaps    xmm5, xmm0
        movups    XMMWORD PTR [224+rsp], xmm9
        lea       rax, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [192+rsp], xmm7
        movups    XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movq      xmm0, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2752]
        and       r13, -64
        pshufd    xmm7, xmm5, 221
        pand      xmm0, xmm7
        psrld     xmm0, 12
        movq      xmm2, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2816]
        pshufd    xmm9, xmm0, 1
        pand      xmm2, xmm7
        movq      xmm3, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3008]
        psrld     xmm7, 20
        movd      r8d, xmm9
        movaps    xmm9, xmm5
        movq      xmm1, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+3072]
        psubd     xmm2, xmm3
        psrlq     xmm9, 52
        pcmpgtd   xmm2, xmm1
        pand      xmm9, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2624]
        movdqu    xmm1, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2688]
        pmuludq   xmm1, xmm9
        movmskps  edx, xmm2
        movd      ecx, xmm0
        movq      xmm4, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2880]
        pshufd    xmm2, xmm1, 136
        pand      xmm7, xmm4
        movq      xmm6, QWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2944]
        psrld     xmm2, 14
        por       xmm7, xmm6
        movdqa    xmm1, xmm2
        pshufd    xmm9, xmm9, 136
        paddd     xmm7, xmm2
        psubd     xmm9, xmm2
        paddd     xmm1, xmm2
        pslld     xmm7, 20
        psubd     xmm9, xmm1
        pxor      xmm2, xmm2
        pslld     xmm9, 8
        punpckldq xmm2, xmm7
        paddd     xmm0, xmm9
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2496]
        pslld     xmm0, 1
        movups    xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2368]
        andps     xmm7, xmm5
        andps     xmm4, xmm5
        and       edx, 3
        orps      xmm7, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2432]
        orps      xmm4, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2304]
        movsxd    rcx, ecx
        subpd     xmm7, xmm4
        movd      r9d, xmm0
        movsd     xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+rcx]
        movsxd    r8, r8d
        movups    xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1792]
        pshufd    xmm0, xmm0, 1
        movd      r10d, xmm0
        movhpd    xmm3, QWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+rax+r8]
        mulpd     xmm3, xmm7
        mulpd     xmm6, xmm3
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1856]
        mulpd     xmm6, xmm3
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1920]
        mulpd     xmm6, xmm3
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+1984]
        mulpd     xmm6, xmm3
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2048]
        mulpd     xmm6, xmm3
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2112]
        mulpd     xmm6, xmm3
        movsxd    r9, r9d
        movsxd    r10, r10d
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2176]
        movups    xmm1, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r9]
        movups    xmm9, XMMWORD PTR ["__jsvml_dcbrt_ha_data_internal"@imgrel+256+rax+r10]
        movaps    xmm0, xmm1
        unpcklpd  xmm0, xmm9
        mulpd     xmm0, xmm2
        mulpd     xmm6, xmm3
        mulpd     xmm3, xmm0
        addpd     xmm6, XMMWORD PTR [rip+__jsvml_dcbrt_ha_data_internal+2240]
        unpckhpd  xmm1, xmm9
        mulpd     xmm1, xmm2
        mulpd     xmm6, xmm3
        addpd     xmm1, xmm6
        mov       QWORD PTR [248+rsp], r13
        addpd     xmm0, xmm1
        jne       .L_B9_3

.L_B9_2:

        movups    xmm6, XMMWORD PTR [208+rsp]
        movups    xmm7, XMMWORD PTR [192+rsp]
        movups    xmm9, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B9_3:

        movups    XMMWORD PTR [r13], xmm5
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B9_2

.L_B9_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B9_7:

        mov       ecx, ebx
        mov       eax, 1
        shl       eax, cl
        test      esi, eax
        jne       .L_B9_10

.L_B9_8:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B9_7

.L_B9_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B9_2

.L_B9_10:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dcbrt_ha_cout_rare_internal
        jmp       .L_B9_8
        .align    16, 0x90

.L_B9_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrt2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_ex_B1_B3:
        .long   669185
        .long   2020406
        .long   878638
        .long   817190
        .long   956439
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_cbrt2_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrt2_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B9_1
        .rva    .L_B9_6
        .rva    _unwind___jsvml_cbrt2_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_6
        .rva    .L_B9_11
        .rva    _unwind___jsvml_cbrt2_ha_ex_B6_B10

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dcbrt_ha_cout_rare_internal

__jsvml_dcbrt_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L110:

        push      r12
        sub       rsp, 128
        mov       r8, rdx
        movzx     r10d, WORD PTR [6+rcx]
        lea       r12, QWORD PTR [rip+__ImageBase]
        and       r10d, 32752
        shr       r10d, 4
        mov       r9b, BYTE PTR [7+rcx]
        movsd     xmm1, QWORD PTR [rcx]
        movups    XMMWORD PTR [64+rsp], xmm13
        movups    XMMWORD PTR [48+rsp], xmm12
        movups    XMMWORD PTR [32+rsp], xmm11
        cmp       r10d, 2047
        je        .L_B10_9

.L_B10_2:

        ucomisd   xmm1, QWORD PTR [rip+_vmldCbrtHATab+432]
        jp        .L_B10_3
        je        .L_B10_8

.L_B10_3:

        mov       al, r9b
        and       r9b, 127
        and       al, -128
        xor       r11d, r11d
        shr       al, 7
        movsd     QWORD PTR [80+rsp], xmm1
        movzx     edx, al
        mov       BYTE PTR [87+rsp], r9b
        movsd     xmm4, QWORD PTR ["_vmldCbrtHATab"@imgrel+440+r12+rdx*8]
        test      r10d, r10d
        jne       .L_B10_5

.L_B10_4:

        movsd     xmm0, QWORD PTR [80+rsp]
        mov       r11d, 100
        mulsd     xmm0, QWORD PTR [rip+_vmldCbrtHATab+360]
        movsd     QWORD PTR [80+rsp], xmm0
        jmp       .L_B10_6

.L_B10_5:

        movsd     xmm0, QWORD PTR [80+rsp]

.L_B10_6:

        movzx     r10d, WORD PTR [86+rsp]
        mov       eax, 1431655766
        and       r10d, 32752
        shr       r10d, 4
        imul      r10d
        mov       eax, 1431655766
        lea       r9d, DWORD PTR [rdx+rdx*2]
        neg       r9d
        add       r9d, r10d
        sub       r10d, r9d
        add       r9d, r9d
        add       r10d, -1023
        imul      r10d
        sar       r10d, 31
        sub       edx, r10d
        movsd     QWORD PTR [96+rsp], xmm0
        add       edx, 1023
        sub       edx, r11d
        movzx     r11d, WORD PTR [102+rsp]
        and       edx, 2047
        and       r11d, -32753
        add       r11d, 16368
        mov       WORD PTR [102+rsp], r11w
        movsd     xmm13, QWORD PTR [96+rsp]
        movaps    xmm3, xmm13
        mulsd     xmm3, QWORD PTR [rip+_vmldCbrtHATab+376]
        movsd     QWORD PTR [104+rsp], xmm3
        movsd     xmm2, QWORD PTR [104+rsp]
        mov       eax, DWORD PTR [100+rsp]
        and       eax, 1048575
        subsd     xmm2, QWORD PTR [96+rsp]
        movsd     QWORD PTR [112+rsp], xmm2
        movsd     xmm12, QWORD PTR [104+rsp]
        movsd     xmm3, QWORD PTR [112+rsp]
        shr       eax, 15
        subsd     xmm12, xmm3
        movsd     QWORD PTR [104+rsp], xmm12
        movsd     xmm11, QWORD PTR [104+rsp]
        movsd     xmm5, QWORD PTR ["_vmldCbrtHATab"@imgrel+r12+rax*8]
        subsd     xmm13, xmm11
        movaps    xmm0, xmm5
        mulsd     xmm0, xmm5
        movsd     QWORD PTR [112+rsp], xmm13
        movsd     xmm2, QWORD PTR [104+rsp]
        mulsd     xmm2, xmm0
        movsd     xmm3, QWORD PTR [112+rsp]
        mulsd     xmm3, xmm0
        movaps    xmm0, xmm5
        mulsd     xmm0, xmm2
        mulsd     xmm5, xmm3
        movsd     xmm1, QWORD PTR [rip+_vmldCbrtHATab+440]
        movsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+368]
        subsd     xmm1, xmm0
        mulsd     xmm12, xmm1
        movsd     QWORD PTR [104+rsp], xmm12
        movsd     xmm11, QWORD PTR [104+rsp]
        xorps     xmm5, XMMWORD PTR [rip+_2il0floatpacket_104]
        subsd     xmm11, xmm1
        movsd     QWORD PTR [112+rsp], xmm11
        movsd     xmm0, QWORD PTR [104+rsp]
        movsd     xmm13, QWORD PTR [112+rsp]
        movsd     xmm11, QWORD PTR [rip+_vmldCbrtHATab+256]
        subsd     xmm0, xmm13
        movsd     QWORD PTR [104+rsp], xmm0
        movsd     xmm12, QWORD PTR [104+rsp]
        movsd     xmm13, QWORD PTR [rip+_vmldCbrtHATab+256]
        subsd     xmm1, xmm12
        movsd     QWORD PTR [112+rsp], xmm1
        movsd     xmm0, QWORD PTR [104+rsp]
        movsd     xmm1, QWORD PTR [112+rsp]
        movsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+352]
        addsd     xmm1, xmm5
        movaps    xmm5, xmm0
        movsxd    r9, r9d
        addsd     xmm5, xmm1
        mulsd     xmm12, xmm5
        mov       rcx, QWORD PTR [rip+_vmldCbrtHATab+440]
        mov       QWORD PTR [88+rsp], rcx
        shr       rcx, 48
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+344]
        mulsd     xmm12, xmm5
        and       ecx, -32753
        shl       edx, 4
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+336]
        mulsd     xmm12, xmm5
        or        ecx, edx
        mov       WORD PTR [94+rsp], cx
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+328]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+320]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+312]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+304]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+296]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+288]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+280]
        mulsd     xmm12, xmm5
        addsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+272]
        mulsd     xmm12, xmm5
        addsd     xmm11, xmm12
        movsd     QWORD PTR [104+rsp], xmm11
        movsd     xmm5, QWORD PTR [104+rsp]
        subsd     xmm13, xmm5
        movsd     QWORD PTR [112+rsp], xmm13
        movsd     xmm11, QWORD PTR [104+rsp]
        movsd     xmm5, QWORD PTR [112+rsp]
        addsd     xmm11, xmm5
        movsd     xmm5, QWORD PTR [rip+_vmldCbrtHATab+256]
        movsd     QWORD PTR [120+rsp], xmm11
        movsd     xmm13, QWORD PTR [112+rsp]
        addsd     xmm12, xmm13
        movsd     QWORD PTR [112+rsp], xmm12
        movsd     xmm12, QWORD PTR [120+rsp]
        subsd     xmm5, xmm12
        movsd     QWORD PTR [120+rsp], xmm5
        movsd     xmm11, QWORD PTR [112+rsp]
        movsd     xmm12, QWORD PTR [120+rsp]
        addsd     xmm11, xmm12
        movsd     xmm12, QWORD PTR [rip+_vmldCbrtHATab+368]
        movsd     QWORD PTR [120+rsp], xmm11
        movsd     xmm5, QWORD PTR [104+rsp]
        mulsd     xmm12, xmm5
        movsd     xmm13, QWORD PTR [120+rsp]
        movsd     QWORD PTR [104+rsp], xmm12
        movsd     xmm11, QWORD PTR [104+rsp]
        subsd     xmm11, xmm5
        addsd     xmm13, QWORD PTR [rip+_vmldCbrtHATab+264]
        movsd     QWORD PTR [112+rsp], xmm11
        movsd     xmm11, QWORD PTR [104+rsp]
        movsd     xmm12, QWORD PTR [112+rsp]
        subsd     xmm11, xmm12
        movsd     QWORD PTR [104+rsp], xmm11
        movsd     xmm12, QWORD PTR [104+rsp]
        subsd     xmm5, xmm12
        movsd     QWORD PTR [112+rsp], xmm5
        movaps    xmm5, xmm1
        movsd     xmm12, QWORD PTR [104+rsp]
        movsd     xmm11, QWORD PTR [112+rsp]
        mulsd     xmm1, xmm12
        addsd     xmm11, xmm13
        mulsd     xmm5, xmm11
        movaps    xmm13, xmm0
        mulsd     xmm0, xmm11
        mulsd     xmm13, xmm12
        addsd     xmm5, xmm1
        movsd     xmm1, QWORD PTR [rip+_vmldCbrtHATab+368]
        addsd     xmm5, xmm0
        mulsd     xmm1, xmm13
        movsd     QWORD PTR [104+rsp], xmm5
        movsd     xmm5, QWORD PTR [104+rsp]
        movsd     QWORD PTR [104+rsp], xmm1
        movsd     xmm0, QWORD PTR [104+rsp]
        subsd     xmm0, xmm13
        movsd     QWORD PTR [112+rsp], xmm0
        movsd     xmm11, QWORD PTR [104+rsp]
        movsd     xmm12, QWORD PTR [112+rsp]
        subsd     xmm11, xmm12
        movsd     QWORD PTR [104+rsp], xmm11
        movsd     xmm1, QWORD PTR [104+rsp]
        subsd     xmm13, xmm1
        movsd     QWORD PTR [112+rsp], xmm13
        movsd     xmm0, QWORD PTR [104+rsp]
        movsd     xmm13, QWORD PTR [112+rsp]
        addsd     xmm5, xmm13
        movaps    xmm13, xmm0
        mulsd     xmm0, xmm3
        mulsd     xmm13, xmm2
        movaps    xmm12, xmm5
        mulsd     xmm12, xmm3
        mulsd     xmm5, xmm2
        addsd     xmm12, xmm0
        addsd     xmm12, xmm5
        movaps    xmm5, xmm13
        addsd     xmm5, xmm2
        movsd     QWORD PTR [104+rsp], xmm12
        movaps    xmm12, xmm2
        movsd     xmm0, QWORD PTR [104+rsp]
        movsd     QWORD PTR [104+rsp], xmm5
        movsd     xmm5, QWORD PTR [104+rsp]
        subsd     xmm12, xmm5
        movsd     QWORD PTR [112+rsp], xmm12
        movsd     xmm1, QWORD PTR [104+rsp]
        movsd     xmm11, QWORD PTR [112+rsp]
        addsd     xmm1, xmm11
        movsd     QWORD PTR [120+rsp], xmm1
        movsd     xmm5, QWORD PTR [112+rsp]
        movsd     xmm1, QWORD PTR [rip+_vmldCbrtHATab+368]
        addsd     xmm13, xmm5
        movsd     QWORD PTR [112+rsp], xmm13
        movsd     xmm13, QWORD PTR [120+rsp]
        subsd     xmm2, xmm13
        movsd     QWORD PTR [120+rsp], xmm2
        movsd     xmm5, QWORD PTR [112+rsp]
        movsd     xmm2, QWORD PTR [120+rsp]
        addsd     xmm5, xmm2
        movsd     QWORD PTR [120+rsp], xmm5
        movsd     xmm11, QWORD PTR [104+rsp]
        mulsd     xmm1, xmm11
        movsd     xmm12, QWORD PTR [120+rsp]
        movsd     QWORD PTR [104+rsp], xmm1
        movsd     xmm13, QWORD PTR [104+rsp]
        subsd     xmm13, xmm11
        movsd     QWORD PTR [112+rsp], xmm13
        movsd     xmm5, QWORD PTR [104+rsp]
        movsd     xmm2, QWORD PTR [112+rsp]
        subsd     xmm5, xmm2
        movsd     QWORD PTR [104+rsp], xmm5
        movsd     xmm1, QWORD PTR [104+rsp]
        subsd     xmm11, xmm1
        movsd     QWORD PTR [112+rsp], xmm11
        movsd     xmm5, QWORD PTR [104+rsp]
        movsd     xmm11, QWORD PTR [112+rsp]
        movaps    xmm2, xmm5
        addsd     xmm12, xmm11
        addsd     xmm0, xmm12
        movsd     xmm12, QWORD PTR ["_vmldCbrtHATab"@imgrel+384+r12+r9*8]
        mulsd     xmm2, xmm12
        addsd     xmm0, xmm3
        movsd     xmm3, QWORD PTR ["_vmldCbrtHATab"@imgrel+392+r12+r9*8]
        movaps    xmm1, xmm3
        mulsd     xmm1, xmm0
        mulsd     xmm3, xmm5
        mulsd     xmm0, xmm12
        addsd     xmm1, xmm3
        addsd     xmm1, xmm0
        movsd     QWORD PTR [104+rsp], xmm1
        movsd     xmm0, QWORD PTR [104+rsp]
        addsd     xmm0, xmm2
        mulsd     xmm0, QWORD PTR [88+rsp]
        mulsd     xmm4, xmm0
        movsd     QWORD PTR [r8], xmm4

.L_B10_7:

        movups    xmm11, XMMWORD PTR [32+rsp]
        xor       eax, eax
        movups    xmm12, XMMWORD PTR [48+rsp]
        movups    xmm13, XMMWORD PTR [64+rsp]
        add       rsp, 128
        pop       r12
        ret

.L_B10_8:

        movsd     xmm0, QWORD PTR [rip+_vmldCbrtHATab+440]
        mulsd     xmm1, xmm0
        movsd     QWORD PTR [r8], xmm1
        jmp       .L_B10_7

.L_B10_9:

        addsd     xmm1, xmm1
        movsd     QWORD PTR [r8], xmm1
        jmp       .L_B10_7
        .align    16, 0x90

.L_B10_10:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dcbrt_ha_cout_rare_internal_B1_B9:
        .long   540929
        .long   178241
        .long   247867
        .long   317493
        .long   3221680653

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_10
        .rva    _unwind___jsvml_dcbrt_ha_cout_rare_internal_B1_B9

        .data

        .section .rdata, "dr"
        .space 32, 0x0
        .globl __jsvml_dcbrt_ha_data_internal_avx512
__jsvml_dcbrt_ha_data_internal_avx512:
        .long   0
        .long   1072693248
        .long   4186796683
        .long   1072965794
        .long   2772266557
        .long   1073309182
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   4186796683
        .long   3220449442
        .long   2772266557
        .long   3220792830
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1418634270
        .long   3162364962
        .long   2576690953
        .long   3164558313
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1418634270
        .long   1014881314
        .long   2576690953
        .long   1017074665
        .long   0
        .long   0
        .long   4186796683
        .long   1072965794
        .long   1554061055
        .long   1072914931
        .long   3992368458
        .long   1072871093
        .long   3714535808
        .long   1072832742
        .long   954824104
        .long   1072798779
        .long   3256858690
        .long   1072768393
        .long   3858344660
        .long   1072740974
        .long   1027250248
        .long   1072716050
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
        .long   1418634270
        .long   3162364962
        .long   629721892
        .long   1016287007
        .long   1776620500
        .long   3163956186
        .long   648592220
        .long   1016269578
        .long   1295766103
        .long   3161896715
        .long   1348094586
        .long   3164476360
        .long   2407028709
        .long   1015925873
        .long   497428409
        .long   1014435402
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
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
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   1431655766
        .long   1070945621
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1126170624
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
        .long   0
        .long   1074266112
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
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   1792985698
        .long   3213372987
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   3135539317
        .long   1066129956
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2087834975
        .long   3213899448
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2476259604
        .long   1066628333
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   2012366478
        .long   3214412045
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   1104999785
        .long   1067378449
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   3534763582
        .long   3215266280
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   1007386161
        .long   1068473053
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   477218625
        .long   3216798151
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .long   1431655767
        .long   1070945621
        .globl __jsvml_dcbrt_ha_data_internal
__jsvml_dcbrt_ha_data_internal:
        .long   528611360
        .long   3220144632
        .long   2884679527
        .long   3220082993
        .long   1991868891
        .long   3220024928
        .long   2298714891
        .long   3219970134
        .long   58835168
        .long   3219918343
        .long   3035110223
        .long   3219869313
        .long   1617585086
        .long   3219822831
        .long   2500867033
        .long   3219778702
        .long   4241943008
        .long   3219736752
        .long   258732970
        .long   3219696825
        .long   404232216
        .long   3219658776
        .long   2172167368
        .long   3219622476
        .long   1544257904
        .long   3219587808
        .long   377579543
        .long   3219554664
        .long   1616385542
        .long   3219522945
        .long   813783277
        .long   3219492562
        .long   3940743189
        .long   3219463431
        .long   2689777499
        .long   3219435478
        .long   1700977147
        .long   3219408632
        .long   3169102082
        .long   3219382828
        .long   327235604
        .long   3219358008
        .long   1244336319
        .long   3219334115
        .long   1300311200
        .long   3219311099
        .long   3095471925
        .long   3219288912
        .long   2166487928
        .long   3219267511
        .long   2913108253
        .long   3219246854
        .long   293672978
        .long   3219226904
        .long   288737297
        .long   3219207624
        .long   1810275472
        .long   3219188981
        .long   174592167
        .long   3219170945
        .long   3539053052
        .long   3219153485
        .long   2164392968
        .long   3219136576
        .long   572345495
        .long   1072698681
        .long   831114197
        .long   1014426140
        .long   1998204467
        .long   1072709382
        .long   2676852344
        .long   1016444374
        .long   3861501553
        .long   1072719872
        .long   2448152898
        .long   1017271343
        .long   2268192434
        .long   1072730162
        .long   571097351
        .long   1016882671
        .long   2981979308
        .long   1072740260
        .long   4262088991
        .long   1013165739
        .long   270859143
        .long   1072750176
        .long   4129526850
        .long   1017541534
        .long   2958651392
        .long   1072759916
        .long   3359808165
        .long   1017217531
        .long   313113243
        .long   1072769490
        .long   483947492
        .long   1017266572
        .long   919449400
        .long   1072778903
        .long   3198298149
        .long   1017689293
        .long   2809328903
        .long   1072788162
        .long   427389337
        .long   1018030605
        .long   2222981587
        .long   1072797274
        .long   1956982634
        .long   1014089381
        .long   2352530781
        .long   1072806244
        .long   1432693183
        .long   1016413476
        .long   594152517
        .long   1072815078
        .long   4116689778
        .long   1016313239
        .long   1555767199
        .long   1072823780
        .long   4199324994
        .long   1014195323
        .long   4282421314
        .long   1072832355
        .long   1593346102
        .long   1017825413
        .long   2355578597
        .long   1072840809
        .long   1274262487
        .long   1016625594
        .long   1162590619
        .long   1072849145
        .long   334784993
        .long   1017096972
        .long   797864051
        .long   1072857367
        .long   568813162
        .long   1017168973
        .long   431273680
        .long   1072865479
        .long   3584554625
        .long   1017710626
        .long   2669831148
        .long   1072873484
        .long   3971702574
        .long   1017159584
        .long   733477752
        .long   1072881387
        .long   218128012
        .long   1018019915
        .long   4280220604
        .long   1072889189
        .long   75187235
        .long   1015924824
        .long   801961634
        .long   1072896896
        .long   3536670393
        .long   1016038493
        .long   2915370760
        .long   1072904508
        .long   839578387
        .long   1018086148
        .long   1159613482
        .long   1072912030
        .long   3759814061
        .long   1017352914
        .long   2689944798
        .long   1072919463
        .long   3143542556
        .long   1017717014
        .long   1248687822
        .long   1072926811
        .long   3006519911
        .long   1012519288
        .long   2967951030
        .long   1072934075
        .long   3521851764
        .long   1017830454
        .long   630170432
        .long   1072941259
        .long   1718375358
        .long   1017387255
        .long   3760898254
        .long   1072948363
        .long   85748770
        .long   1017604842
        .long   0
        .long   1072955392
        .long   0
        .long   0
        .long   2370273294
        .long   1072962345
        .long   1629859066
        .long   1013153035
        .long   1261754802
        .long   1072972640
        .long   113977743
        .long   1015673025
        .long   546334065
        .long   1072986123
        .long   1008348646
        .long   1016413877
        .long   1054893830
        .long   1072999340
        .long   2186484259
        .long   1018078778
        .long   1571187597
        .long   1073012304
        .long   1446107332
        .long   1015291210
        .long   1107975175
        .long   1073025027
        .long   69773316
        .long   1016481646
        .long   3606909377
        .long   1073037519
        .long   466887756
        .long   1017226688
        .long   1113616747
        .long   1073049792
        .long   3265289890
        .long   1017622569
        .long   4154744632
        .long   1073061853
        .long   2567589881
        .long   1015245005
        .long   3358931423
        .long   1073073713
        .long   343132434
        .long   1015771654
        .long   4060702372
        .long   1073085379
        .long   4013097658
        .long   1017904433
        .long   747576176
        .long   1073096860
        .long   1061470230
        .long   1014919738
        .long   3023138255
        .long   1073108161
        .long   1212724758
        .long   1018027762
        .long   1419988548
        .long   1073119291
        .long   3844345246
        .long   1014188976
        .long   1914185305
        .long   1073130255
        .long   303260851
        .long   1016023904
        .long   294389948
        .long   1073141060
        .long   3001102400
        .long   1016940338
        .long   3761802570
        .long   1073151710
        .long   41769798
        .long   1015538023
        .long   978281566
        .long   1073162213
        .long   1018481845
        .long   1017509529
        .long   823148820
        .long   1073172572
        .long   4070910954
        .long   1017208735
        .long   2420954441
        .long   1073182792
        .long   1209676399
        .long   1017337941
        .long   3815449908
        .long   1073192878
        .long   786936659
        .long   1017169506
        .long   2046058587
        .long   1073202835
        .long   3809068538
        .long   1017278211
        .long   1807524753
        .long   1073212666
        .long   2107909763
        .long   1017749298
        .long   2628681401
        .long   1073222375
        .long   638724993
        .long   1018143910
        .long   3225667357
        .long   1073231966
        .long   2846951590
        .long   1016668860
        .long   1555307421
        .long   1073241443
        .long   3233424021
        .long   1017889915
        .long   3454043099
        .long   1073250808
        .long   3181654301
        .long   1017329873
        .long   1208137896
        .long   1073260066
        .long   1842943805
        .long   1010293654
        .long   3659916772
        .long   1073269218
        .long   3049005729
        .long   1015940862
        .long   1886261264
        .long   1073278269
        .long   4113039774
        .long   1016737581
        .long   3593647839
        .long   1073287220
        .long   557134306
        .long   1017388941
        .long   3086012205
        .long   1073296075
        .long   2731128411
        .long   1017337242
        .long   2769796922
        .long   1073304836
        .long   3165647905
        .long   1017152170
        .long   888716057
        .long   1073317807
        .long   2912601025
        .long   1013105161
        .long   2201465623
        .long   1073334794
        .long   1739805577
        .long   1014678056
        .long   164369365
        .long   1073351447
        .long   563195703
        .long   1016553181
        .long   3462666733
        .long   1073367780
        .long   1021961283
        .long   1014782652
        .long   2773905457
        .long   1073383810
        .long   2309706734
        .long   1017182395
        .long   1342879088
        .long   1073399550
        .long   3777265738
        .long   1016157963
        .long   2543933975
        .long   1073415012
        .long   3047211052
        .long   1016886343
        .long   1684477781
        .long   1073430209
        .long   3956587805
        .long   1016191198
        .long   3532178543
        .long   1073445151
        .long   3446811632
        .long   1016964431
        .long   1147747300
        .long   1073459850
        .long   1052894694
        .long   1009560267
        .long   1928031793
        .long   1073474314
        .long   2233937521
        .long   1015025921
        .long   2079717015
        .long   1073488553
        .long   1170546599
        .long   1017990098
        .long   4016765315
        .long   1073502575
        .long   1501504581
        .long   1015834847
        .long   3670431139
        .long   1073516389
        .long   276476277
        .long   1015832488
        .long   3549227225
        .long   1073530002
        .long   3492674696
        .long   1017962706
        .long   11637607
        .long   1073543422
        .long   2597602399
        .long   1017405654
        .long   588220169
        .long   1073556654
        .long   2120795824
        .long   1017959346
        .long   2635407503
        .long   1073569705
        .long   229478739
        .long   1017912059
        .long   2042029317
        .long   1073582582
        .long   2247123382
        .long   1013256945
        .long   1925128962
        .long   1073595290
        .long   2868813801
        .long   1017582195
        .long   4136375664
        .long   1073607834
        .long   2715618536
        .long   1016959120
        .long   759964600
        .long   1073620221
        .long   3782520422
        .long   1017711264
        .long   4257606771
        .long   1073632453
        .long   3973324070
        .long   1015361972
        .long   297278907
        .long   1073644538
        .long   1732402144
        .long   1017675273
        .long   3655053093
        .long   1073656477
        .long   1558073476
        .long   1015468392
        .long   2442253172
        .long   1073668277
        .long   2080372965
        .long   1017517768
        .long   1111876799
        .long   1073679941
        .long   350080266
        .long   1017397321
        .long   3330973139
        .long   1073691472
        .long   2701328568
        .long   1016749585
        .long   3438879452
        .long   1073702875
        .long   2694623891
        .long   1017925557
        .long   3671565478
        .long   1073714153
        .long   2048173000
        .long   1016319877
        .long   1317849547
        .long   1073725310
        .long   180890
        .long   1017408398
        .long   1642364115
        .long   1073736348
        .long   1694598884
        .long   1017060392
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   1553778919
        .long   3213899486
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   3582521621
        .long   1066628362
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   1646371399
        .long   3214412045
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   889629714
        .long   1067378449
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   3534952507
        .long   3215266280
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   1007461464
        .long   1068473053
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   477218588
        .long   3216798151
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   1431655765
        .long   1070945621
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   3220193280
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
        .long   0
        .long   1032192
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
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   2047
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   5462
        .long   0
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
        .long   1015808
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
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   2048
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   682
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   2148532224
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
        .long   4292870143
_vmldCbrtHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   1072668672
        .long   0
        .long   1072644096
        .long   0
        .long   1072627712
        .long   0
        .long   1072611328
        .long   0
        .long   1072586752
        .long   0
        .long   1072570368
        .long   0
        .long   1072553984
        .long   0
        .long   1072537600
        .long   0
        .long   1072521216
        .long   0
        .long   1072504832
        .long   0
        .long   1072488448
        .long   0
        .long   1072480256
        .long   0
        .long   1072463872
        .long   0
        .long   1072447488
        .long   0
        .long   1072439296
        .long   0
        .long   1072422912
        .long   0
        .long   1072414720
        .long   0
        .long   1072398336
        .long   0
        .long   1072390144
        .long   0
        .long   1072373760
        .long   0
        .long   1072365568
        .long   0
        .long   1072357376
        .long   0
        .long   1072340992
        .long   0
        .long   1072332800
        .long   0
        .long   1072324608
        .long   0
        .long   1072308224
        .long   0
        .long   1072300032
        .long   0
        .long   1072291840
        .long   0
        .long   1072283648
        .long   0
        .long   1072275456
        .long   0
        .long   1072267264
        .long   1431655765
        .long   1071994197
        .long   1431655765
        .long   1015371093
        .long   1908874354
        .long   1071761180
        .long   1007461464
        .long   1071618781
        .long   565592401
        .long   1071446176
        .long   241555088
        .long   1071319599
        .long   943963244
        .long   1071221150
        .long   2330668378
        .long   1071141453
        .long   2770428108
        .long   1071075039
        .long   3622256836
        .long   1071018464
        .long   1497196870
        .long   1070969433
        .long   280472551
        .long   1070926345
        .long   1585032765
        .long   1070888044
        .long   0
        .long   1387266048
        .long   33554432
        .long   1101004800
        .long   512
        .long   1117782016
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   4160749568
        .long   1072965794
        .long   2921479643
        .long   1043912488
        .long   2684354560
        .long   1073309182
        .long   4060791142
        .long   1045755320
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .space 8, 0x0
_2il0floatpacket_104:
        .long   0x00000000, 0x80000000, 0x00000000, 0x00000000
        .data
#endif
