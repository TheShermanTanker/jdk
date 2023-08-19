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
        .globl __jsvml_logf4_ha_ex

__jsvml_logf4_ha_ex:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 216
        movaps    xmm3, xmm0
        mov       QWORD PTR [192+rsp], r13
        movaps    xmm5, xmm3
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+576]
        lea       r13, QWORD PTR [111+rsp]
        movdqu    xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+640]
        paddd     xmm4, xmm3
        pcmpgtd   xmm2, xmm4
        and       r13, -64
        movdqu    xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+704]
        movdqu    xmm0, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+768]
        psubd     xmm5, xmm4
        pand      xmm0, xmm5
        psrad     xmm5, 23
        paddd     xmm0, xmm4
        movmskps  eax, xmm2
        subps     xmm0, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+832]
        cvtdq2ps  xmm1, xmm5
        movups    xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+512]
        mulps     xmm2, xmm0
        movups    xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+960]
        mulps     xmm4, xmm1
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+448]
        mulps     xmm2, xmm0
        movups    xmm5, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+896]
        mulps     xmm1, xmm5
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+384]
        mulps     xmm2, xmm0
        mov       QWORD PTR [200+rsp], r13
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+320]
        mulps     xmm2, xmm0
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+256]
        mulps     xmm2, xmm0
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+192]
        mulps     xmm2, xmm0
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+128]
        mulps     xmm2, xmm0
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+64]
        mulps     xmm2, xmm0
        addps     xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal]
        mulps     xmm2, xmm0
        mulps     xmm2, xmm0
        addps     xmm0, xmm2
        addps     xmm0, xmm4
        addps     xmm0, xmm1
        test      eax, eax
        jne       .L_B1_3

.L_B1_2:

        mov       r13, QWORD PTR [192+rsp]
        add       rsp, 216
        ret

.L_B1_3:

        movups    XMMWORD PTR [r13], xmm3
        movups    XMMWORD PTR [64+r13], xmm0

.L_B1_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B1_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B1_10

.L_B1_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B1_7

.L_B1_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_logf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_ex_B1_B3:
        .long   267777
        .long   1627158
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_logf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_ex_B6_B10:
        .long   527873
        .long   287758
        .long   340999
        .long   1627136
        .long   1769728

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_logf4_ha_ex_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_logf4_ha_e9

__jsvml_logf4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L8:

        sub       rsp, 216
        vmovaps   xmm5, xmm0
        mov       QWORD PTR [192+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpaddd    xmm0, xmm5, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+576]
        and       r13, -64
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+640]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+704]
        vpcmpgtd  xmm2, xmm1, xmm0
        vpsubd    xmm1, xmm5, xmm4
        vpand     xmm3, xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+768]
        vpsrad    xmm0, xmm1, 23
        vpaddd    xmm3, xmm3, xmm4
        vcvtdq2ps xmm1, xmm0
        vsubps    xmm0, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+832]
        vmovmskps edx, xmm2
        vmulps    xmm2, xmm0, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+512]
        mov       QWORD PTR [200+rsp], r13
        vaddps    xmm4, xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+448]
        vmulps    xmm2, xmm0, xmm4
        vaddps    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+384]
        vmulps    xmm4, xmm0, xmm3
        vaddps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+320]
        vmulps    xmm3, xmm0, xmm2
        vaddps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+256]
        vmulps    xmm2, xmm0, xmm4
        vaddps    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+192]
        vmulps    xmm4, xmm0, xmm3
        vaddps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+128]
        vmulps    xmm3, xmm0, xmm2
        vaddps    xmm4, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+64]
        vmulps    xmm2, xmm0, xmm4
        vaddps    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal]
        vmulps    xmm4, xmm0, xmm3
        vmulps    xmm2, xmm0, xmm4
        vaddps    xmm0, xmm0, xmm2
        vmulps    xmm2, xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+960]
        vmulps    xmm1, xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+896]
        vaddps    xmm0, xmm0, xmm2
        vaddps    xmm0, xmm0, xmm1
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        mov       r13, QWORD PTR [192+rsp]
        add       rsp, 216
        ret

.L_B2_3:

        vmovups   XMMWORD PTR [r13], xmm5
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

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_logf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_e9_B1_B3:
        .long   268033
        .long   1627159
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_logf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_e9_B6_B10:
        .long   527873
        .long   287758
        .long   340999
        .long   1627136
        .long   1769728

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_logf4_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_logf16_ha_z0

__jsvml_logf16_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L15:

        vmovaps   zmm23, zmm0
        vrcp14ps  zmm22, zmm23
        vpaddd    zmm4, zmm22, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+128]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+256]
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+640]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+704]
        vpandd    zmm24, zmm4, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+64]
        vpsrld    zmm5, zmm24, 18
        vgetexpps zmm0, zmm24 {sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+960]
        vpermt2ps zmm1, zmm5, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+192]
        vpermt2ps zmm2, zmm5, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+320]
        vfpclassps k2, zmm24, 255
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+896]
        vfmsub213ps zmm24, zmm23, zmm22 {rn-sae}
        kortestw  k2, k2
        vfnmadd231ps zmm1, zmm5, zmm0 {rn-sae}
        vfnmadd213ps zmm0, zmm4, zmm2 {rn-sae}
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+768]
        vmulps    zmm26, zmm24, zmm24 {rn-sae}
        vaddps    zmm29, zmm1, zmm24 {rn-sae}
        vmovaps   zmm27, zmm24
        vfmadd213ps zmm27, zmm3, zmm2 {rn-sae}
        vsubps    zmm25, zmm29, zmm1 {rn-sae}
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+832]
        vsubps    zmm28, zmm24, zmm25 {rn-sae}
        vfmadd213ps zmm27, zmm24, zmm1 {rn-sae}
        vfmadd213ps zmm27, zmm26, zmm0 {rn-sae}
        vaddps    zmm30, zmm27, zmm28 {rn-sae}
        vaddps    zmm0, zmm29, zmm30 {rn-sae}
        jne       .L_B3_3

.L_B3_2:

        ret

.L_B3_3:

        vgetmantps zmm25, zmm23, 10 {sae}
        vgetexpps zmm28, zmm23 {sae}
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+384]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+512]
        vrcp14ps  zmm24, zmm25
        vfpclassps k1, zmm23, 223
        vrndscaleps zmm26, zmm24, 88 {sae}
        vgetexpps zmm29, zmm26 {sae}
        vfmsub231ps zmm22, zmm25, zmm26 {rn-sae}
        vpsrld    zmm27, zmm26, 18
        vsubps    zmm24, zmm28, zmm29 {rn-sae}
        vfmadd231ps zmm2, zmm3, zmm22 {rn-sae}
        vmulps    zmm3, zmm22, zmm22 {rn-sae}
        vfmadd213ps zmm2, zmm22, zmm1 {rn-sae}
        vpermt2ps zmm31, zmm27, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+448]
        vpermt2ps zmm30, zmm27, ZMMWORD PTR [rip+__jsvml_slog_ha_data_internal_avx512+576]
        vfmadd231ps zmm31, zmm5, zmm24 {rn-sae}
        vfmadd213ps zmm24, zmm4, zmm30 {rn-sae}
        vaddps    zmm1, zmm31, zmm22 {rn-sae}
        vfmadd213ps zmm2, zmm3, zmm24 {rn-sae}
        vsubps    zmm4, zmm1, zmm31 {rn-sae}
        vxorps    zmm4{k1}, zmm4, zmm4
        vsubps    zmm22, zmm22, zmm4 {rn-sae}
        vaddps    zmm2, zmm2, zmm22 {rn-sae}
        vaddps    zmm0{k2}, zmm1, zmm2 {rn-sae}
        ret
        .align    16, 0x90

.L_B3_4:

        .section .drectve
        .ascii " -export \"__jsvml_logf16_ha_z0\""

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_logf4_ha_l9

__jsvml_logf4_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L16:

        sub       rsp, 216
        vmovaps   xmm4, xmm0
        mov       QWORD PTR [192+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpaddd    xmm0, xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+576]
        and       r13, -64
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+640]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+704]
        vpcmpgtd  xmm1, xmm5, xmm0
        vpsubd    xmm5, xmm4, xmm3
        vpand     xmm2, xmm5, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+768]
        vpsrad    xmm0, xmm5, 23
        vpaddd    xmm2, xmm2, xmm3
        vmovmskps edx, xmm1
        vsubps    xmm3, xmm2, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+832]
        vcvtdq2ps xmm0, xmm0
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+512]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+448]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+384]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+320]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+256]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+192]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+128]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+64]
        vfmadd213ps xmm1, xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal]
        vmulps    xmm1, xmm3, xmm1
        vfmadd213ps xmm1, xmm3, xmm3
        vfmadd231ps xmm1, xmm0, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+960]
        vfmadd132ps xmm0, xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+896]
        mov       QWORD PTR [200+rsp], r13
        test      edx, edx
        jne       .L_B4_3

.L_B4_2:

        mov       r13, QWORD PTR [192+rsp]
        add       rsp, 216
        ret

.L_B4_3:

        vmovups   XMMWORD PTR [r13], xmm4
        vmovups   XMMWORD PTR [64+r13], xmm0

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
        cmp       ebx, 4
        jl        .L_B4_7

.L_B4_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_logf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_l9_B1_B3:
        .long   268033
        .long   1627159
        .long   1769739

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_logf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf4_ha_l9_B6_B10:
        .long   527873
        .long   287758
        .long   340999
        .long   1627136
        .long   1769728

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_logf4_ha_l9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_logf8_ha_e9

__jsvml_logf8_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L23:

        sub       rsp, 552
        vmovups   YMMWORD PTR [432+rsp], ymm15
        vmovups   YMMWORD PTR [464+rsp], ymm14
        vmovups   YMMWORD PTR [496+rsp], ymm9
        vmovups   YMMWORD PTR [400+rsp], ymm6
        vmovaps   ymm15, ymm0
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [303+rsp]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+704]
        and       r13, -64
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+768]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+576]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_slog_ha_data_internal+640]
        mov       QWORD PTR [536+rsp], r13
        vpsubd    xmm5, xmm15, xmm3
        vextractf128 xmm2, ymm15, 1
        vpsrad    xmm9, xmm5, 23
        vpand     xmm5, xmm5, xmm4
        vpaddd    xmm5, xmm5, xmm3
        vpsubd    xmm6, xmm2, xmm3
        vpaddd    xmm2, xmm0, xmm2
        vpand     xmm4, xmm6, xmm4
        vpsrad    xmm14, xmm6, 23
        vpaddd    xmm3, xmm4, xmm3
        vpaddd    xmm4, xmm15, xmm0
        vinsertf128 ymm3, ymm5, xmm3, 1
        vpcmpgtd  xmm5, xmm1, xmm4
        vpcmpgtd  xmm1, xmm1, xmm2
        vpackssdw xmm0, xmm5, xmm1
        vpxor     xmm2, xmm2, xmm2
        vsubps    ymm1, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+832]
        vpacksswb xmm4, xmm0, xmm2
        vpmovmskb edx, xmm4
        vmulps    ymm3, ymm1, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+512]
        vaddps    ymm6, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+448]
        vinsertf128 ymm14, ymm9, xmm14, 1
        vcvtdq2ps ymm9, ymm14
        vmulps    ymm14, ymm1, ymm6
        vaddps    ymm0, ymm14, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+384]
        vmulps    ymm2, ymm1, ymm0
        vaddps    ymm3, ymm2, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+320]
        vmulps    ymm4, ymm1, ymm3
        vaddps    ymm5, ymm4, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+256]
        vmulps    ymm6, ymm1, ymm5
        vaddps    ymm14, ymm6, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+192]
        vmulps    ymm0, ymm1, ymm14
        vaddps    ymm2, ymm0, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+128]
        vmulps    ymm3, ymm1, ymm2
        vaddps    ymm4, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+64]
        vmulps    ymm5, ymm1, ymm4
        vaddps    ymm6, ymm5, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal]
        vmulps    ymm14, ymm1, ymm6
        vmulps    ymm0, ymm1, ymm14
        vaddps    ymm1, ymm1, ymm0
        vmulps    ymm0, ymm9, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+960]
        vmulps    ymm9, ymm9, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+896]
        vaddps    ymm1, ymm1, ymm0
        vaddps    ymm0, ymm1, ymm9
        test      dl, dl
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [400+rsp]
        vmovups   ymm9, YMMWORD PTR [496+rsp]
        vmovups   ymm14, YMMWORD PTR [464+rsp]
        vmovups   ymm15, YMMWORD PTR [432+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_3:

        vmovups   YMMWORD PTR [r13], ymm15
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B5_2

.L_B5_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [192+rsp], ymm7
        vmovups   YMMWORD PTR [160+rsp], ymm8
        vmovups   YMMWORD PTR [128+rsp], ymm10
        vmovups   YMMWORD PTR [96+rsp], ymm11
        vmovups   YMMWORD PTR [64+rsp], ymm12
        vmovups   YMMWORD PTR [32+rsp], ymm13
        mov       QWORD PTR [232+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [224+rsp], rsi
        mov       esi, edx

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm7, YMMWORD PTR [192+rsp]
        vmovups   ymm8, YMMWORD PTR [160+rsp]
        vmovups   ymm10, YMMWORD PTR [128+rsp]
        vmovups   ymm11, YMMWORD PTR [96+rsp]
        vmovups   ymm12, YMMWORD PTR [64+rsp]
        vmovups   ymm13, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [232+rsp]
        mov       rsi, QWORD PTR [224+rsp]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_logf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf8_ha_e9_B1_B3:
        .long   801537
        .long   4379707
        .long   1665071
        .long   2070566
        .long   1959965
        .long   1832980
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_logf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf8_ha_e9_B6_B10:
        .long   1065249
        .long   1860673
        .long   1913911
        .long   186415
        .long   313385
        .long   440355
        .long   567325
        .long   690196
        .long   817163
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_logf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_logf8_ha_e9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_logf8_ha_l9

__jsvml_logf8_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L50:

        sub       rsp, 552
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [431+rsp]
        vmovaps   ymm4, ymm0
        and       r13, -64
        vmovups   ymm5, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+640]
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+704]
        vpaddd    ymm0, ymm4, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+576]
        vpcmpgtd  ymm2, ymm5, ymm0
        vpsubd    ymm5, ymm4, ymm1
        vpand     ymm3, ymm5, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+768]
        vpsrad    ymm0, ymm5, 23
        vpaddd    ymm1, ymm3, ymm1
        vcvtdq2ps ymm0, ymm0
        vsubps    ymm3, ymm1, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+832]
        vmovmskps edx, ymm2
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+512]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+448]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+384]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+320]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+256]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+192]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+128]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+64]
        vfmadd213ps ymm2, ymm3, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal]
        vmulps    ymm1, ymm3, ymm2
        vfmadd213ps ymm1, ymm3, ymm3
        vfmadd231ps ymm1, ymm0, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+960]
        vfmadd132ps ymm0, ymm1, YMMWORD PTR [rip+__jsvml_slog_ha_data_internal+896]
        mov       QWORD PTR [536+rsp], r13
        test      edx, edx
        jne       .L_B6_3

.L_B6_2:

        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm4
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B6_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [320+rsp], ymm6
        vmovups   YMMWORD PTR [288+rsp], ymm7
        vmovups   YMMWORD PTR [256+rsp], ymm8
        vmovups   YMMWORD PTR [224+rsp], ymm9
        vmovups   YMMWORD PTR [192+rsp], ymm10
        vmovups   YMMWORD PTR [160+rsp], ymm11
        vmovups   YMMWORD PTR [128+rsp], ymm12
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [360+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [352+rsp], rsi
        mov       esi, edx

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B6_7

.L_B6_9:

        vmovups   ymm6, YMMWORD PTR [320+rsp]
        vmovups   ymm7, YMMWORD PTR [288+rsp]
        vmovups   ymm8, YMMWORD PTR [256+rsp]
        vmovups   ymm9, YMMWORD PTR [224+rsp]
        vmovups   ymm10, YMMWORD PTR [192+rsp]
        vmovups   ymm11, YMMWORD PTR [160+rsp]
        vmovups   ymm12, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [360+rsp]
        mov       rsi, QWORD PTR [352+rsp]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_slog_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_logf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf8_ha_l9_B1_B3:
        .long   267009
        .long   4379667
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_logf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_logf8_ha_l9_B6_B10:
        .long   1860865
        .long   2909285
        .long   2962523
        .long   194643
        .long   321613
        .long   448583
        .long   575553
        .long   702520
        .long   829487
        .long   956454
        .long   1083421
        .long   1210388
        .long   1337355
        .long   4379648
        .long   4522240

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_logf8_ha_l9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_slog_ha_cout_rare_internal

__jsvml_slog_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L77:

        sub       rsp, 56
        mov       r9, rcx
        xor       eax, eax
        movzx     r8d, WORD PTR [2+r9]
        and       r8d, 32640
        cmp       r8d, 32640
        je        .L_B7_12

.L_B7_2:

        pxor      xmm3, xmm3
        xor       r8d, r8d
        cvtss2sd  xmm3, DWORD PTR [r9]
        movsd     QWORD PTR [48+rsp], xmm3
        movzx     ecx, WORD PTR [54+rsp]
        test      ecx, 32752
        jne       .L_B7_4

.L_B7_3:

        mulsd     xmm3, QWORD PTR [rip+_imlsLnHATab+1600]
        mov       r8d, -60
        movsd     QWORD PTR [48+rsp], xmm3

.L_B7_4:

        movsd     xmm0, QWORD PTR [rip+_imlsLnHATab+1608]
        comisd    xmm3, xmm0
        jbe       .L_B7_8

.L_B7_5:

        movsd     xmm0, QWORD PTR [rip+_2il0floatpacket_86]
        movaps    xmm2, xmm3
        subsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        and       BYTE PTR [47+rsp], 127
        movsd     xmm1, QWORD PTR [40+rsp]
        comisd    xmm1, QWORD PTR [rip+_imlsLnHATab+1592]
        jbe       .L_B7_7

.L_B7_6:

        movsd     QWORD PTR [40+rsp], xmm3
        pxor      xmm1, xmm1
        movzx     r9d, WORD PTR [46+rsp]
        and       r9d, -32753
        add       r9d, 16368
        mov       WORD PTR [46+rsp], r9w
        movsd     xmm5, QWORD PTR [40+rsp]
        movaps    xmm3, xmm5
        movzx     ecx, WORD PTR [54+rsp]
        and       ecx, 32752
        addsd     xmm3, QWORD PTR [rip+_imlsLnHATab+1576]
        shr       ecx, 4
        movsd     QWORD PTR [32+rsp], xmm3
        movaps    xmm3, xmm5
        mov       r10d, DWORD PTR [32+rsp]
        and       r10d, 127
        addsd     xmm3, QWORD PTR [rip+_imlsLnHATab+1584]
        movsd     QWORD PTR [32+rsp], xmm3
        lea       r8d, DWORD PTR [-1023+r8+rcx]
        cvtsi2sd  xmm1, r8d
        movsd     xmm3, QWORD PTR [32+rsp]
        lea       rcx, QWORD PTR [rip+__ImageBase]
        movsd     xmm2, QWORD PTR [rip+_imlsLnHATab+1560]
        lea       r11d, DWORD PTR [r10+r10*2]
        movsd     xmm4, QWORD PTR [rip+_imlsLnHATab+1568]
        mov       r9, rcx
        mov       r8, rcx
        subsd     xmm3, QWORD PTR [rip+_imlsLnHATab+1584]
        mulsd     xmm2, xmm1
        mulsd     xmm1, xmm4
        subsd     xmm5, xmm3
        addsd     xmm2, QWORD PTR ["_imlsLnHATab"@imgrel+8+r8+r11*8]
        addsd     xmm1, QWORD PTR ["_imlsLnHATab"@imgrel+16+r9+r11*8]
        movsd     xmm4, QWORD PTR ["_imlsLnHATab"@imgrel+rcx+r11*8]
        mulsd     xmm3, xmm4
        mulsd     xmm4, xmm5
        subsd     xmm3, xmm0
        movaps    xmm0, xmm3
        addsd     xmm2, xmm3
        addsd     xmm0, xmm4
        addsd     xmm4, xmm1
        movsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1672]
        mulsd     xmm5, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1664]
        mulsd     xmm5, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1656]
        mulsd     xmm5, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1648]
        mulsd     xmm5, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1640]
        mulsd     xmm5, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1632]
        mulsd     xmm5, xmm0
        mulsd     xmm0, xmm0
        addsd     xmm5, QWORD PTR [rip+_imlsLnHATab+1624]
        mulsd     xmm5, xmm0
        addsd     xmm4, xmm5
        addsd     xmm2, xmm4
        cvtsd2ss  xmm2, xmm2
        movss     DWORD PTR [rdx], xmm2
        add       rsp, 56
        ret

.L_B7_7:

        movsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1672]
        movaps    xmm0, xmm2
        mulsd     xmm1, xmm2
        mulsd     xmm0, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1664]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1656]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1648]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1640]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1632]
        mulsd     xmm1, xmm2
        addsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1624]
        mulsd     xmm1, xmm0
        addsd     xmm1, xmm2
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        add       rsp, 56
        ret

.L_B7_8:

        ucomisd   xmm3, xmm0
        jp        .L_B7_9
        je        .L_B7_11

.L_B7_9:

        divsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        mov       eax, 1

.L_B7_10:

        add       rsp, 56
        ret

.L_B7_11:

        movsd     xmm1, QWORD PTR [rip+_imlsLnHATab+1616]
        mov       eax, 2
        xorps     xmm1, XMMWORD PTR [rip+_2il0floatpacket_87]
        divsd     xmm1, xmm0
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [rdx], xmm1
        add       rsp, 56
        ret

.L_B7_12:

        mov       cl, BYTE PTR [3+r9]
        and       cl, -128
        cmp       cl, -128
        je        .L_B7_14

.L_B7_13:

        movss     xmm0, DWORD PTR [r9]
        mulss     xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        add       rsp, 56
        ret

.L_B7_14:

        test      DWORD PTR [r9], 8388607
        jne       .L_B7_13

.L_B7_15:

        movsd     xmm0, QWORD PTR [rip+_imlsLnHATab+1608]
        mov       eax, 1
        divsd     xmm0, xmm0
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        add       rsp, 56
        ret
        .align    16, 0x90

.L_B7_16:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_slog_ha_cout_rare_internal_B1_B15:
        .long   67585
        .long   25096

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_16
        .rva    _unwind___jsvml_slog_ha_cout_rare_internal_B1_B15

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_slog_ha_data_internal_avx512
__jsvml_slog_ha_data_internal_avx512:
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   131072
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   4294705152
        .long   0
        .long   3170631680
        .long   3178782720
        .long   3182919680
        .long   3186704384
        .long   3189024768
        .long   3190814720
        .long   3192557568
        .long   3194257408
        .long   3195914240
        .long   3196795904
        .long   3197585408
        .long   3198356480
        .long   3199110144
        .long   3199848448
        .long   3200569344
        .long   3201275904
        .long   3201968128
        .long   3202646016
        .long   3203310592
        .long   3203961856
        .long   3204524544
        .long   3204838400
        .long   3205146112
        .long   3205448192
        .long   3205745152
        .long   3206036992
        .long   3206324224
        .long   3206605824
        .long   3206883328
        .long   3207156224
        .long   3207424512
        .long   0
        .long   3072770974
        .long   929538039
        .long   3075640037
        .long   930648533
        .long   3072716864
        .long   3066151582
        .long   3073718761
        .long   897812054
        .long   3057871602
        .long   923619665
        .long   921315575
        .long   3057394118
        .long   3078028640
        .long   924853521
        .long   3075349253
        .long   3071259390
        .long   906511159
        .long   906200662
        .long   917494258
        .long   3061185264
        .long   3071618351
        .long   919715245
        .long   3052715317
        .long   3078288258
        .long   3077608526
        .long   3074005625
        .long   930702671
        .long   3070133351
        .long   913590776
        .long   924241186
        .long   3021499198
        .long   1060205056
        .long   1059688960
        .long   1059187712
        .long   1058701824
        .long   1058229248
        .long   1057769472
        .long   1057321984
        .long   1056807936
        .long   1055958016
        .long   1055129600
        .long   1054320640
        .long   1053531136
        .long   1052760064
        .long   1052006400
        .long   1051268096
        .long   1050547200
        .long   1049840640
        .long   1049148416
        .long   1048365056
        .long   1047035904
        .long   1045733376
        .long   1044455424
        .long   1043200000
        .long   1041969152
        .long   1040760832
        .long   1038958592
        .long   1036623872
        .long   1034330112
        .long   1032073216
        .long   1027907584
        .long   1023541248
        .long   1015087104
        .long   901758606
        .long   3071200204
        .long   931108809
        .long   3074069268
        .long   3077535321
        .long   3071146094
        .long   3063010043
        .long   3072147991
        .long   908173938
        .long   3049723733
        .long   925190435
        .long   923601997
        .long   3048768765
        .long   3076457870
        .long   926424291
        .long   3073778483
        .long   3069146713
        .long   912794238
        .long   912483742
        .long   920635797
        .long   3054902185
        .long   3069864633
        .long   922801832
        .long   3033791132
        .long   3076717488
        .long   3076037756
        .long   3072434855
        .long   3077481184
        .long   3066991812
        .long   917116064
        .long   925811956
        .long   900509991
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
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   3196061712
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   1051373854
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   2139095039
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   124
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   262144
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   4294443008
        .long   0
        .long   3178782720
        .long   3186704384
        .long   3190814720
        .long   3194257408
        .long   3196795904
        .long   3198356480
        .long   3199848448
        .long   3201275904
        .long   3202646016
        .long   3203961856
        .long   3204838400
        .long   3205448192
        .long   3206036992
        .long   3206605824
        .long   3207156224
        .long   0
        .long   929538039
        .long   930648533
        .long   3066151582
        .long   897812054
        .long   923619665
        .long   3057394118
        .long   924853521
        .long   3071259390
        .long   906200662
        .long   3061185264
        .long   919715245
        .long   3078288258
        .long   3074005625
        .long   3070133351
        .long   924241186
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
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   1045236958
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   3196066480
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   1051372199
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .long   3204448254
        .globl __jsvml_slog_ha_data_internal
__jsvml_slog_ha_data_internal:
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   3204448256
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   1051372163
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   3196059512
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   1045227540
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   3190476518
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   1041197964
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   3187247262
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   1041183581
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   3187933896
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   8388608
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   16777216
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   1059760811
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
        .long   8388607
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
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   1060205056
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   901758606
        .long   2139095040
        .long   4286578688
        .byte 0
        .org .+54
        .byte   0
        .long   1065353216
        .long   3212836864
        .byte 0
        .org .+54
        .byte   0
        .long   0
        .long   2147483648
        .byte 0
        .org .+54
        .byte   0
_imlsLnHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072660480
        .long   1486880768
        .long   1066410070
        .long   1813744607
        .long   3179892593
        .long   0
        .long   1072629760
        .long   377487360
        .long   1067416219
        .long   919019713
        .long   3179241129
        .long   0
        .long   1072599040
        .long   1513619456
        .long   1067944025
        .long   874573033
        .long   3178512940
        .long   0
        .long   1072570368
        .long   3221749760
        .long   1068427825
        .long   4181665006
        .long   3177478212
        .long   0
        .long   1072541696
        .long   4162322432
        .long   1068708823
        .long   627020255
        .long   1028629941
        .long   0
        .long   1072513024
        .long   183107584
        .long   1068957907
        .long   2376703469
        .long   1030233118
        .long   0
        .long   1072486400
        .long   1053425664
        .long   1069192557
        .long   696277142
        .long   1030474863
        .long   0
        .long   1072459776
        .long   3996123136
        .long   1069430535
        .long   2630798680
        .long   1028792016
        .long   0
        .long   1072435200
        .long   3452764160
        .long   1069600382
        .long   624954044
        .long   3177101741
        .long   0
        .long   1072409600
        .long   207650816
        .long   1069717971
        .long   3272735636
        .long   3175176575
        .long   0
        .long   1072386048
        .long   2647228416
        .long   1069827627
        .long   3594228712
        .long   1029303785
        .long   0
        .long   1072362496
        .long   2712010752
        .long   1069938736
        .long   3653242769
        .long   3176839013
        .long   0
        .long   1072338944
        .long   374439936
        .long   1070051337
        .long   4072775574
        .long   3176577495
        .long   0
        .long   1072316416
        .long   3707174912
        .long   1070160474
        .long   1486946159
        .long   1023930920
        .long   0
        .long   1072294912
        .long   1443954688
        .long   1070265993
        .long   293532967
        .long   3176278277
        .long   0
        .long   1072273408
        .long   127762432
        .long   1070372856
        .long   3404145447
        .long   3177023955
        .long   0
        .long   1072252928
        .long   2053832704
        .long   1070475911
        .long   1575076358
        .long   1029048544
        .long   0
        .long   1072232448
        .long   3194093568
        .long   1070580248
        .long   1864169120
        .long   1026866084
        .long   0
        .long   1072212992
        .long   3917201408
        .long   1070638340
        .long   2362145246
        .long   3175606197
        .long   0
        .long   1072193536
        .long   3417112576
        .long   1070689116
        .long   70087871
        .long   3174183577
        .long   0
        .long   1072175104
        .long   4226777088
        .long   1070737793
        .long   1620410586
        .long   3174700065
        .long   0
        .long   1072156672
        .long   3168870400
        .long   1070787042
        .long   311238082
        .long   1025781772
        .long   0
        .long   1072139264
        .long   2150580224
        .long   1070834092
        .long   1664262457
        .long   3175299224
        .long   0
        .long   1072120832
        .long   4095672320
        .long   1070884491
        .long   1657121015
        .long   3174674199
        .long   0
        .long   1072104448
        .long   2595577856
        .long   1070929805
        .long   2014006823
        .long   3175423830
        .long   0
        .long   1072087040
        .long   3747176448
        .long   1070978493
        .long   144991708
        .long   3171552042
        .long   0
        .long   1072070656
        .long   1050435584
        .long   1071024840
        .long   3386227432
        .long   1027876916
        .long   0
        .long   1072055296
        .long   255516672
        .long   1071068760
        .long   2637594316
        .long   1028049573
        .long   0
        .long   1072038912
        .long   1640783872
        .long   1071116120
        .long   893247007
        .long   1028452162
        .long   0
        .long   1072023552
        .long   2940411904
        .long   1071161011
        .long   813240633
        .long   1027664048
        .long   0
        .long   1072009216
        .long   882917376
        .long   1071203348
        .long   2376597551
        .long   3175828767
        .long   0
        .long   1071993856
        .long   213966848
        .long   1071249188
        .long   2977204125
        .long   1028350609
        .long   0
        .long   1071979520
        .long   2921504768
        .long   1071292428
        .long   523218347
        .long   1028007004
        .long   0
        .long   1071965184
        .long   3186655232
        .long   1071336119
        .long   2352907891
        .long   1026967097
        .long   0
        .long   1071951872
        .long   2653364224
        .long   1071377101
        .long   2453418583
        .long   3174349512
        .long   0
        .long   1071938560
        .long   3759783936
        .long   1071418487
        .long   3685870403
        .long   3175415611
        .long   0
        .long   1071925248
        .long   2468364288
        .long   1071460286
        .long   1578908842
        .long   3175510517
        .long   0
        .long   1071911936
        .long   81903616
        .long   1071502506
        .long   770710269
        .long   1026742353
        .long   0
        .long   1071899648
        .long   2799321088
        .long   1071541858
        .long   3822266185
        .long   1028434427
        .long   0
        .long   1071886336
        .long   2142265344
        .long   1071584911
        .long   175901806
        .long   3173871540
        .long   0
        .long   1071874048
        .long   2944024576
        .long   1071625048
        .long   2747360403
        .long   1027672159
        .long   0
        .long   1071862784
        .long   3434301440
        .long   1071653426
        .long   4194662196
        .long   3173893003
        .long   0
        .long   1071850496
        .long   1547755520
        .long   1071673870
        .long   4248764681
        .long   3172759087
        .long   0
        .long   1071839232
        .long   4246986752
        .long   1071692786
        .long   2840205638
        .long   3174430911
        .long   0
        .long   1071826944
        .long   3418390528
        .long   1071713619
        .long   3041880823
        .long   1025440860
        .long   0
        .long   1071816704
        .long   4143093760
        .long   1071731139
        .long   2727587401
        .long   3173965207
        .long   0
        .long   1071805440
        .long   3121326080
        .long   1071750582
        .long   3173887692
        .long   3174190163
        .long   0
        .long   1071794176
        .long   1852893184
        .long   1071770207
        .long   3951060252
        .long   1027348295
        .long   0
        .long   1071783936
        .long   3636379648
        .long   1071788208
        .long   1684924001
        .long   3174777086
        .long   0
        .long   1071773696
        .long   516505600
        .long   1071806366
        .long   429181199
        .long   3173211033
        .long   0
        .long   1071763456
        .long   4186185728
        .long   1071824681
        .long   2044904577
        .long   3174967132
        .long   0
        .long   1071753216
        .long   877596672
        .long   1071843159
        .long   1396318105
        .long   3173959727
        .long   0
        .long   1071742976
        .long   2912784384
        .long   1071861800
        .long   448136789
        .long   3174814192
        .long   0
        .long   1071733760
        .long   3722825728
        .long   1071878720
        .long   714165913
        .long   3173439560
        .long   0
        .long   1071723520
        .long   2522374144
        .long   1071897682
        .long   3227240353
        .long   3173394323
        .long   0
        .long   1071714304
        .long   4165410816
        .long   1071914895
        .long   1365684961
        .long   3174365060
        .long   0
        .long   1071705088
        .long   3477135360
        .long   1071932251
        .long   368482985
        .long   3174140821
        .long   0
        .long   1071695872
        .long   2079455232
        .long   1071949752
        .long   1320576317
        .long   1026822714
        .long   0
        .long   1071687680
        .long   851795968
        .long   1071965432
        .long   3702467026
        .long   1025224125
        .long   0
        .long   1071678464
        .long   647743488
        .long   1071983213
        .long   772992109
        .long   3174038459
        .long   0
        .long   1071670272
        .long   26537984
        .long   1071999146
        .long   2360214276
        .long   3174861275
        .long   0
        .long   1071661056
        .long   1547061248
        .long   1072017216
        .long   2886781435
        .long   1026423395
        .long   0
        .long   1071652864
        .long   2854492160
        .long   1072033410
        .long   215631550
        .long   1025638968
        .long   0
        .long   1071644672
        .long   4277811200
        .long   1072049730
        .long   2479318832
        .long   1026487127
        .long   4277811200
        .long   1072049730
        .long   2479318832
        .long   1026487127
        .long   64
        .long   1120927744
        .long   0
        .long   1094713344
        .long   0
        .long   1065615360
        .long   0
        .long   1135607808
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   3219128320
        .long   1431655955
        .long   1070945621
        .long   610
        .long   3218079744
        .long   2545118337
        .long   1070176665
        .long   1378399119
        .long   3217380693
        .long   612435357
        .long   1069697472
        .long   94536557
        .long   3217031348
_2il0floatpacket_87:
        .long   0x00000000, 0x80000000, 0x00000000, 0x00000000
_2il0floatpacket_86:
        .long   0x00000000, 0x3ff00000
        .data
#endif
