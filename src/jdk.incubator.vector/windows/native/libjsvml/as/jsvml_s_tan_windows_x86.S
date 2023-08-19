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
        .globl __jsvml_tanf4_ha_ex

__jsvml_tanf4_ha_ex:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 312
        movups    XMMWORD PTR [272+rsp], xmm14
        movups    XMMWORD PTR [208+rsp], xmm13
        pxor      xmm14, xmm14
        movups    XMMWORD PTR [256+rsp], xmm12
        movups    XMMWORD PTR [224+rsp], xmm11
        movups    XMMWORD PTR [240+rsp], xmm10
        movups    XMMWORD PTR [192+rsp], xmm7
        movaps    xmm7, xmm0
        mov       QWORD PTR [288+rsp], r13
        movaps    xmm10, xmm7
        movups    xmm4, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        lea       r13, QWORD PTR [111+rsp]
        andps     xmm10, xmm4
        andnps    xmm4, xmm7
        movaps    xmm3, xmm10
        movaps    xmm5, xmm10
        cvtps2pd  xmm2, xmm10
        cmpnleps  xmm5, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1216]
        movhlps   xmm3, xmm10
        and       r13, -64
        mulps     xmm10, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+832]
        cvtps2pd  xmm0, xmm3
        movmskps  eax, xmm5
        movups    xmm1, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        movups    xmm12, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1344]
        addps     xmm10, xmm1
        movaps    xmm5, xmm10
        subps     xmm10, xmm1
        cvtps2pd  xmm11, xmm10
        movhlps   xmm10, xmm10
        pslld     xmm5, 31
        cvtps2pd  xmm10, xmm10
        pcmpeqd   xmm14, xmm5
        pxor      xmm5, xmm4
        pshufd    xmm1, xmm14, 80
        pshufd    xmm3, xmm14, 250
        movups    xmm14, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1280]
        movaps    xmm13, xmm14
        mulpd     xmm13, xmm11
        mulpd     xmm14, xmm10
        mulpd     xmm11, xmm12
        mulpd     xmm10, xmm12
        subpd     xmm2, xmm13
        subpd     xmm0, xmm14
        subpd     xmm2, xmm11
        subpd     xmm0, xmm10
        movups    xmm13, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1472]
        movaps    xmm10, xmm2
        movaps    xmm11, xmm13
        movaps    xmm14, xmm0
        mulpd     xmm10, xmm2
        mulpd     xmm11, xmm2
        mulpd     xmm14, xmm0
        mulpd     xmm13, xmm0
        mulpd     xmm11, xmm10
        mulpd     xmm13, xmm14
        addpd     xmm2, xmm11
        addpd     xmm0, xmm13
        movups    xmm11, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1664]
        movaps    xmm13, xmm11
        mulpd     xmm13, xmm10
        mulpd     xmm11, xmm14
        movups    xmm12, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1600]
        addpd     xmm13, xmm12
        addpd     xmm12, xmm11
        mulpd     xmm10, xmm13
        mulpd     xmm14, xmm12
        movups    xmm11, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1536]
        movdqa    xmm12, xmm1
        addpd     xmm10, xmm11
        addpd     xmm11, xmm14
        movdqa    xmm14, xmm1
        andps     xmm12, xmm2
        andnps    xmm14, xmm10
        movdqa    xmm13, xmm3
        orps      xmm14, xmm12
        movdqa    xmm12, xmm3
        andnps    xmm13, xmm11
        andps     xmm12, xmm0
        orps      xmm13, xmm12
        movdqa    xmm12, xmm1
        andnps    xmm12, xmm2
        movdqa    xmm2, xmm3
        andps     xmm10, xmm1
        andnps    xmm2, xmm0
        andps     xmm11, xmm3
        orps      xmm12, xmm10
        orps      xmm2, xmm11
        divpd     xmm14, xmm12
        divpd     xmm13, xmm2
        cvtpd2ps  xmm0, xmm14
        cvtpd2ps  xmm1, xmm13
        movlhps   xmm0, xmm1
        mov       QWORD PTR [296+rsp], r13
        pxor      xmm0, xmm5
        test      eax, eax
        jne       .L_B1_3

.L_B1_2:

        movups    xmm7, XMMWORD PTR [192+rsp]
        movups    xmm10, XMMWORD PTR [240+rsp]
        movups    xmm11, XMMWORD PTR [224+rsp]
        movups    xmm12, XMMWORD PTR [256+rsp]
        movups    xmm13, XMMWORD PTR [208+rsp]
        movups    xmm14, XMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B1_3:

        movups    XMMWORD PTR [r13], xmm7
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

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_ex_B1_B3:
        .long   1069057
        .long   2413648
        .long   817221
        .long   1026109
        .long   964660
        .long   1099819
        .long   907293
        .long   1173524
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_tanf4_ha_ex_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_tanf4_ha_e9

__jsvml_tanf4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L20:

        sub       rsp, 232
        vmovaps   xmm5, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm14
        mov       QWORD PTR [208+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        and       r13, -64
        vandps    xmm14, xmm5, xmm3
        vandnps   xmm3, xmm3, xmm5
        vcmpnleps xmm4, xmm14, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1216]
        vcvtps2pd ymm1, xmm14
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        vmovmskps edx, xmm4
        vmulps    xmm4, xmm14, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+832]
        mov       QWORD PTR [216+rsp], r13
        vaddps    xmm0, xmm2, xmm4
        vpslld    xmm4, xmm0, 31
        vsubps    xmm0, xmm0, xmm2
        vpxor     xmm2, xmm2, xmm2
        vxorps    xmm3, xmm4, xmm3
        vpcmpeqd  xmm14, xmm4, xmm2
        vpshufd   xmm2, xmm14, 80
        vpshufd   xmm14, xmm14, 250
        vinsertf128 ymm2, ymm2, xmm14, 1
        vcvtps2pd ymm14, xmm0
        vmulpd    ymm0, ymm14, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1280]
        vmulpd    ymm14, ymm14, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1344]
        vsubpd    ymm1, ymm1, ymm0
        vsubpd    ymm14, ymm1, ymm14
        vmulpd    ymm0, ymm14, ymm14
        vmulpd    ymm1, ymm14, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1472]
        vmulpd    ymm1, ymm0, ymm1
        vaddpd    ymm1, ymm14, ymm1
        vmulpd    ymm14, ymm0, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1664]
        vaddpd    ymm14, ymm14, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1600]
        vmulpd    ymm0, ymm0, ymm14
        vaddpd    ymm0, ymm0, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1536]
        vblendvpd ymm14, ymm0, ymm1, ymm2
        vblendvpd ymm2, ymm1, ymm0, ymm2
        vdivpd    ymm0, ymm14, ymm2
        vcvtpd2ps xmm1, ymm0
        vxorps    xmm0, xmm1, xmm3
        test      edx, edx
        jne       .L_B2_3

.L_B2_2:

        vzeroupper
        vmovups   xmm14, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [208+rsp]
        add       rsp, 232
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

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_e9_B1_B3:
        .long   401409
        .long   1758240
        .long   845848
        .long   1900811

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_tanf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_e9_B6_B10:
        .long   658945
        .long   287758
        .long   340999
        .long   845824
        .long   1758208
        .long   1900800

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_tanf4_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_tanf16_ha_z0

__jsvml_tanf16_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L29:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal]
        and       r13, -64
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+64]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+256]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+320]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+768]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+704]
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+384]
        vmovaps   zmm22, zmm0
        vfmadd213ps zmm1, zmm22, zmm23 {rn-sae}
        vmovups   zmm0, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+640]
        vandps    zmm31, zmm22, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        vsubps    zmm30, zmm1, zmm23 {rn-sae}
        vpermt2ps zmm4, zmm1, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+448]
        vcmpps    k0, zmm31, zmm3, 22 {sae}
        vfnmadd213ps zmm24, zmm30, zmm22 {rn-sae}
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+512]
        kmovw     r8d, k0
        vpermt2ps zmm3, zmm1, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+576]
        vmovaps   zmm25, zmm30
        vfnmadd213ps zmm25, zmm26, zmm24 {rn-sae}
        vmovaps   zmm5, zmm30
        vfnmadd213ps zmm5, zmm27, zmm25 {rn-sae}
        vsubps    zmm29, zmm24, zmm25 {rn-sae}
        vmulps    zmm31, zmm5, zmm5 {rn-sae}
        vfnmadd231ps zmm29, zmm26, zmm30 {rn-sae}
        vsubps    zmm28, zmm5, zmm25 {rn-sae}
        vfmadd231ps zmm0, zmm2, zmm31 {rn-sae}
        vfmadd213ps zmm30, zmm27, zmm28 {rn-sae}
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1152]
        vmulps    zmm24, zmm0, zmm5 {rn-sae}
        vsubps    zmm23, zmm29, zmm30 {rn-sae}
        vfnmsub213ps zmm24, zmm31, zmm23 {rn-sae}
        vsubps    zmm2, zmm5, zmm24 {rn-sae}
        vmulps    zmm30, zmm4, zmm2 {rn-sae}
        vsubps    zmm5, zmm5, zmm2 {rn-sae}
        vaddps    zmm1, zmm2, zmm4 {rn-sae}
        vsubps    zmm23, zmm28, zmm30 {rn-sae}
        vsubps    zmm0, zmm5, zmm24 {rn-sae}
        vsubps    zmm25, zmm1, zmm4 {rn-sae}
        vsubps    zmm29, zmm23, zmm28 {rn-sae}
        vsubps    zmm26, zmm2, zmm25 {rn-sae}
        vaddps    zmm28, zmm29, zmm30 {rn-sae}
        vaddps    zmm27, zmm26, zmm3 {rn-sae}
        vmovaps   zmm5, zmm4
        vfnmadd213ps zmm5, zmm2, zmm30 {rn-sae}
        vaddps    zmm24, zmm27, zmm0 {rn-sae}
        vsubps    zmm29, zmm28, zmm5 {rn-sae}
        vfmadd213ps zmm4, zmm0, zmm29 {rn-sae}
        vfmadd213ps zmm3, zmm2, zmm4 {rn-sae}
        vrcp14ps  zmm4, zmm23
        vmulps    zmm2, zmm4, zmm1 {rn-sae}
        vfmsub213ps zmm23, zmm2, zmm1 {rn-sae}
        vfnmadd213ps zmm3, zmm2, zmm23 {rn-sae}
        vsubps    zmm0, zmm3, zmm24 {rn-sae}
        mov       QWORD PTR [1328+rsp], r13
        vfnmadd213ps zmm0, zmm4, zmm2 {rn-sae}
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

        vmovups   ZMMWORD PTR [r13], zmm22
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
        cmp       ebx, 16
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
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B3_13
        .align    16, 0x90

.L_B3_16:

        .section .drectve
        .ascii " -export \"__jsvml_tanf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_11
        .rva    _unwind___jsvml_tanf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf16_ha_z0_B11_B15:
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
        .rva    _unwind___jsvml_tanf16_ha_z0_B11_B15

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_tanf8_ha_e9

__jsvml_tanf8_ha_e9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L80:

        sub       rsp, 552
        vmovups   YMMWORD PTR [400+rsp], ymm15
        vpxor     xmm2, xmm2, xmm2
        vmovups   YMMWORD PTR [368+rsp], ymm14
        vmovups   YMMWORD PTR [336+rsp], ymm13
        vmovups   YMMWORD PTR [432+rsp], ymm12
        vmovups   YMMWORD PTR [464+rsp], ymm11
        vmovups   YMMWORD PTR [496+rsp], ymm10
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovups   ymm11, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        and       r13, -64
        vmovaps   ymm13, ymm0
        vandps    ymm12, ymm13, ymm11
        vcmpnle_uqps ymm3, ymm12, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1216]
        vandnps   ymm11, ymm11, ymm13
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm0, ymm12, 1
        vmulps    ymm10, ymm12, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+832]
        vcvtps2pd ymm15, xmm0
        vcvtps2pd ymm14, xmm12
        vmovups   ymm0, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        vextractf128 xmm5, ymm3, 1
        vpackssdw xmm4, xmm3, xmm5
        vaddps    ymm3, ymm0, ymm10
        vpacksswb xmm1, xmm4, xmm2
        vpmovmskb edx, xmm1
        vpslld    xmm1, xmm3, 31
        vextractf128 xmm5, ymm3, 1
        vsubps    ymm4, ymm3, ymm0
        vpslld    xmm5, xmm5, 31
        vpcmpeqd  xmm10, xmm5, xmm2
        vpcmpeqd  xmm0, xmm1, xmm2
        vinsertf128 ymm12, ymm1, xmm5, 1
        vpshufd   xmm1, xmm10, 80
        vpshufd   xmm10, xmm10, 250
        vpshufd   xmm2, xmm0, 80
        vpshufd   xmm3, xmm0, 250
        vxorps    ymm11, ymm12, ymm11
        vinsertf128 ymm10, ymm1, xmm10, 1
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1280]
        vinsertf128 ymm5, ymm2, xmm3, 1
        vcvtps2pd ymm3, xmm4
        vextractf128 xmm0, ymm4, 1
        vmulpd    ymm4, ymm3, ymm1
        vcvtps2pd ymm2, xmm0
        vsubpd    ymm0, ymm14, ymm4
        vmulpd    ymm14, ymm2, ymm1
        vsubpd    ymm4, ymm15, ymm14
        vmovupd   ymm14, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1344]
        vmulpd    ymm15, ymm3, ymm14
        vmovupd   ymm3, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1472]
        vsubpd    ymm1, ymm0, ymm15
        vmulpd    ymm0, ymm2, ymm14
        vmulpd    ymm15, ymm1, ymm1
        vsubpd    ymm2, ymm4, ymm0
        vmulpd    ymm4, ymm3, ymm1
        vmulpd    ymm0, ymm2, ymm2
        vmulpd    ymm3, ymm3, ymm2
        vmulpd    ymm4, ymm15, ymm4
        vaddpd    ymm4, ymm1, ymm4
        vmulpd    ymm1, ymm0, ymm3
        vaddpd    ymm3, ymm2, ymm1
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1664]
        vmovupd   ymm1, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1600]
        vmulpd    ymm14, ymm2, ymm15
        vmulpd    ymm2, ymm2, ymm0
        vaddpd    ymm14, ymm1, ymm14
        vaddpd    ymm1, ymm1, ymm2
        vmovupd   ymm2, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1536]
        vmulpd    ymm15, ymm15, ymm14
        vmulpd    ymm0, ymm0, ymm1
        vaddpd    ymm15, ymm2, ymm15
        vaddpd    ymm1, ymm2, ymm0
        vblendvpd ymm2, ymm15, ymm4, ymm5
        vblendvpd ymm5, ymm4, ymm15, ymm5
        vblendvpd ymm0, ymm1, ymm3, ymm10
        vblendvpd ymm10, ymm3, ymm1, ymm10
        vdivpd    ymm1, ymm2, ymm5
        vdivpd    ymm2, ymm0, ymm10
        vcvtpd2ps xmm0, ymm1
        vcvtpd2ps xmm3, ymm2
        vinsertf128 ymm4, ymm0, xmm3, 1
        vxorps    ymm0, ymm4, ymm11
        test      dl, dl
        jne       .L_B4_3

.L_B4_2:

        vmovups   ymm10, YMMWORD PTR [496+rsp]
        vmovups   ymm11, YMMWORD PTR [464+rsp]
        vmovups   ymm12, YMMWORD PTR [432+rsp]
        vmovups   ymm13, YMMWORD PTR [336+rsp]
        vmovups   ymm14, YMMWORD PTR [368+rsp]
        vmovups   ymm15, YMMWORD PTR [400+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B4_3:

        vmovups   YMMWORD PTR [r13], ymm13
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      edx, edx
        je        .L_B4_2

.L_B4_6:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm6
        vmovups   YMMWORD PTR [96+rsp], ymm7
        vmovups   YMMWORD PTR [64+rsp], ymm8
        vmovups   YMMWORD PTR [32+rsp], ymm9
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, edx

.L_B4_7:

        bt        esi, ebx
        jc        .L_B4_10

.L_B4_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B4_7

.L_B4_9:

        vmovups   ymm6, YMMWORD PTR [128+rsp]
        vmovups   ymm7, YMMWORD PTR [96+rsp]
        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm9, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf8_ha_e9_B1_B3:
        .long   1068289
        .long   4379725
        .long   2074693
        .long   1947708
        .long   1820723
        .long   1431594
        .long   1566753
        .long   1701908
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_tanf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf8_ha_e9_B6_B10:
        .long   798497
        .long   1336367
        .long   1389605
        .long   170013
        .long   296983
        .long   423953
        .long   550923
        .rva    .L_B4_1
        .rva    .L_B4_6
        .rva    _unwind___jsvml_tanf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_6
        .rva    .L_B4_11
        .rva    _unwind___jsvml_tanf8_ha_e9_B6_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_tanf4_ha_l9

__jsvml_tanf4_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L107:

        sub       rsp, 312
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm9
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm15, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal]
        and       r13, -64
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        vfmadd213ps xmm15, xmm0, xmm3
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+64]
        vandps    xmm2, xmm0, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+256]
        vcmpnleps xmm12, xmm2, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+768]
        vsubps    xmm13, xmm15, xmm3
        vmovmskps r8d, xmm12
        vmovaps   xmm5, xmm13
        vpslld    xmm12, xmm15, 2
        vpand     xmm11, xmm12, XMMWORD PTR [rip+_2il0floatpacket_26]
        vmovaps   xmm9, xmm13
        vfnmadd213ps xmm1, xmm13, xmm0
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+320]
        vmovd     ecx, xmm11
        vfnmadd213ps xmm5, xmm4, xmm1
        vpextrd   r9d, xmm11, 2
        vsubps    xmm1, xmm1, xmm5
        vfnmadd213ps xmm9, xmm2, xmm5
        vfnmadd231ps xmm1, xmm4, xmm13
        vsubps    xmm3, xmm9, xmm5
        movsxd    r9, r9d
        vpextrd   r10d, xmm11, 3
        movsxd    r10, r10d
        movsxd    rcx, ecx
        vpextrd   eax, xmm11, 1
        vmovd     xmm4, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+rdx+r9]
        movsxd    rax, eax
        vpinsrd   xmm12, xmm4, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+rdx+r10], 1
        vmulps    xmm4, xmm9, xmm9
        vfmadd213ps xmm13, xmm2, xmm3
        vmovd     xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+rdx+rcx]
        vmovd     xmm2, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+rdx+rcx]
        vmovd     xmm3, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+rdx+r9]
        vpinsrd   xmm15, xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+rdx+rax], 1
        vsubps    xmm14, xmm1, xmm13
        vpinsrd   xmm1, xmm2, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+rdx+rax], 1
        vpinsrd   xmm11, xmm3, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+rdx+r10], 1
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+704]
        vfmadd213ps xmm5, xmm4, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+640]
        vunpcklpd xmm13, xmm15, xmm12
        vpunpcklqdq xmm12, xmm1, xmm11
        vmulps    xmm2, xmm9, xmm5
        vfnmsub213ps xmm2, xmm4, xmm14
        vmovapd   xmm4, xmm13
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1152]
        mov       QWORD PTR [296+rsp], r13
        vsubps    xmm11, xmm9, xmm2
        vsubps    xmm9, xmm9, xmm11
        vsubps    xmm5, xmm9, xmm2
        vaddps    xmm9, xmm13, xmm11
        vsubps    xmm14, xmm9, xmm13
        vsubps    xmm2, xmm11, xmm14
        vmulps    xmm14, xmm13, xmm11
        vfnmadd213ps xmm4, xmm11, xmm14
        vaddps    xmm3, xmm12, xmm2
        vaddps    xmm2, xmm5, xmm3
        vsubps    xmm3, xmm1, xmm14
        vsubps    xmm15, xmm3, xmm1
        vaddps    xmm14, xmm14, xmm15
        vsubps    xmm4, xmm14, xmm4
        vfmadd213ps xmm13, xmm5, xmm4
        vrcpps    xmm5, xmm3
        vfmadd213ps xmm12, xmm11, xmm13
        vfnmadd231ps xmm1, xmm3, xmm5
        vfmadd231ps xmm1, xmm12, xmm5
        vfmadd213ps xmm5, xmm1, xmm5
        vmulps    xmm1, xmm9, xmm5
        vfmsub213ps xmm3, xmm1, xmm9
        vfnmadd213ps xmm12, xmm1, xmm3
        vsubps    xmm2, xmm12, xmm2
        vfnmadd213ps xmm2, xmm5, xmm1
        test      r8d, r8d
        jne       .L_B5_3

.L_B5_2:

        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovaps   xmm0, xmm2
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B5_3:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm2

.L_B5_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_7

.L_B5_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   xmm2, XMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_l9_B1_B3:
        .long   1069057
        .long   2413648
        .long   1153096
        .long   1095743
        .long   1034294
        .long   972845
        .long   911396
        .long   849947
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_tanf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_tanf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_tanf4_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_tanf8_ha_l9

__jsvml_tanf8_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L126:

        push      rsi
        push      r15
        push      rbp
        sub       rsp, 528
        lea       r10, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [320+rsp], ymm15
        vmovups   YMMWORD PTR [352+rsp], ymm14
        vmovups   YMMWORD PTR [384+rsp], ymm13
        vmovups   YMMWORD PTR [416+rsp], ymm12
        vmovups   YMMWORD PTR [448+rsp], ymm11
        vmovups   YMMWORD PTR [480+rsp], ymm10
        mov       QWORD PTR [512+rsp], r13
        lea       r13, QWORD PTR [223+rsp]
        vmovups   ymm15, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal]
        and       r13, -64
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1088]
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+64]
        vmovups   ymm1, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+256]
        vfmadd213ps ymm15, ymm0, ymm4
        vsubps    ymm13, ymm15, ymm4
        vfnmadd213ps ymm2, ymm13, ymm0
        vandps    ymm3, ymm0, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+960]
        vcmpnle_uqps ymm12, ymm3, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+768]
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+320]
        vmovaps   ymm5, ymm1
        vfnmadd213ps ymm5, ymm13, ymm2
        vmovaps   ymm10, ymm3
        vmovmskps ebp, ymm12
        vpslld    ymm12, ymm15, 2
        vfnmadd213ps ymm10, ymm13, ymm5
        vsubps    ymm2, ymm2, ymm5
        vpand     ymm11, ymm12, YMMWORD PTR [rip+_2il0floatpacket_27]
        vsubps    ymm4, ymm10, ymm5
        vfnmadd231ps ymm2, ymm1, ymm13
        vfmadd213ps ymm13, ymm3, ymm4
        vsubps    ymm14, ymm2, ymm13
        mov       QWORD PTR [520+rsp], r13
        vextracti128 xmm4, ymm11, 1
        vmovd     r11d, xmm11
        vmovd     ecx, xmm4
        vpextrd   r8d, xmm11, 2
        vpextrd   eax, xmm4, 2
        movsxd    r11, r11d
        vpextrd   r9d, xmm11, 1
        movsxd    r8, r8d
        vpextrd   esi, xmm11, 3
        movsxd    rcx, ecx
        vpextrd   edx, xmm4, 1
        movsxd    rax, eax
        vpextrd   r15d, xmm4, 3
        movsxd    r9, r9d
        movsxd    rsi, esi
        movsxd    rdx, edx
        movsxd    r15, r15d
        vmovd     xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+r11]
        vmovd     xmm1, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+r8]
        vmovd     xmm2, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+rcx]
        vmovd     xmm13, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+rax]
        vpinsrd   xmm15, xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+r9], 1
        vpinsrd   xmm12, xmm1, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+rsi], 1
        vpinsrd   xmm5, xmm2, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+rdx], 1
        vpinsrd   xmm1, xmm13, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+384+r10+r15], 1
        vpunpcklqdq xmm3, xmm15, xmm12
        vmovd     xmm12, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+r11]
        vpunpcklqdq xmm15, xmm5, xmm1
        vpinsrd   xmm4, xmm12, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+r9], 1
        vmovd     xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+rcx]
        vmovd     xmm1, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+rax]
        vpinsrd   xmm12, xmm1, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+r15], 1
        vinsertf128 ymm13, ymm3, xmm15, 1
        vmovd     xmm3, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+r8]
        vpinsrd   xmm2, xmm3, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+rsi], 1
        vpinsrd   xmm15, xmm5, DWORD PTR ["__jsvml_stan_ha_data_internal"@imgrel+512+r10+rdx], 1
        vpunpcklqdq xmm11, xmm4, xmm2
        vmulps    ymm2, ymm10, ymm10
        vmovups   ymm4, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+704]
        vpunpcklqdq xmm3, xmm15, xmm12
        vfmadd213ps ymm4, ymm2, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+640]
        vmovaps   ymm1, ymm13
        vinsertf128 ymm12, ymm11, xmm3, 1
        vmulps    ymm3, ymm10, ymm4
        vfnmsub213ps ymm3, ymm2, ymm14
        vmovups   ymm2, YMMWORD PTR [rip+__jsvml_stan_ha_data_internal+1152]
        vsubps    ymm11, ymm10, ymm3
        vsubps    ymm10, ymm10, ymm11
        vsubps    ymm5, ymm10, ymm3
        vaddps    ymm10, ymm13, ymm11
        vsubps    ymm14, ymm10, ymm13
        vsubps    ymm3, ymm11, ymm14
        vmulps    ymm14, ymm13, ymm11
        vaddps    ymm4, ymm12, ymm3
        vfnmadd213ps ymm1, ymm11, ymm14
        vaddps    ymm3, ymm5, ymm4
        vsubps    ymm4, ymm2, ymm14
        vsubps    ymm15, ymm4, ymm2
        vaddps    ymm14, ymm14, ymm15
        vsubps    ymm1, ymm14, ymm1
        vfmadd213ps ymm13, ymm5, ymm1
        vrcpps    ymm5, ymm4
        vfmadd213ps ymm12, ymm11, ymm13
        vfnmadd231ps ymm2, ymm4, ymm5
        vfmadd231ps ymm2, ymm12, ymm5
        vfmadd213ps ymm5, ymm2, ymm5
        vmulps    ymm2, ymm10, ymm5
        vfmsub213ps ymm4, ymm2, ymm10
        vfnmadd213ps ymm12, ymm2, ymm4
        vsubps    ymm1, ymm12, ymm3
        vfnmadd213ps ymm1, ymm5, ymm2
        test      ebp, ebp
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm10, YMMWORD PTR [480+rsp]
        vmovups   ymm11, YMMWORD PTR [448+rsp]
        vmovups   ymm12, YMMWORD PTR [416+rsp]
        vmovups   ymm13, YMMWORD PTR [384+rsp]
        vmovups   ymm14, YMMWORD PTR [352+rsp]
        vmovups   ymm15, YMMWORD PTR [320+rsp]
        mov       r13, QWORD PTR [512+rsp]
        vmovdqa   ymm0, ymm1
        add       rsp, 528
        pop       rbp
        pop       r15
        pop       rsi
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm0
        vmovups   YMMWORD PTR [64+r13], ymm1

.L_B6_6:

        vmovups   YMMWORD PTR [128+rsp], ymm6
        xor       esi, esi
        vmovups   YMMWORD PTR [96+rsp], ymm7
        vmovups   YMMWORD PTR [64+rsp], ymm8
        vmovups   YMMWORD PTR [32+rsp], ymm9

.L_B6_7:

        bt        ebp, esi
        jc        .L_B6_10

.L_B6_8:

        inc       esi
        cmp       esi, 8
        jl        .L_B6_7

.L_B6_9:

        vmovups   ymm6, YMMWORD PTR [128+rsp]
        vmovups   ymm7, YMMWORD PTR [96+rsp]
        vmovups   ymm8, YMMWORD PTR [64+rsp]
        vmovups   ymm9, YMMWORD PTR [32+rsp]
        vmovups   ymm1, YMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rsi*4]
        lea       rdx, QWORD PTR [64+r13+rsi*4]

        call      __jsvml_stan_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf8_ha_l9_B1_B3:
        .long   1266689
        .long   4248660
        .long   2009164
        .long   1882179
        .long   1755194
        .long   1628209
        .long   1501224
        .long   1374239
        .long   4325647
        .long   4027011080
        .long   24581

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanf8_ha_l9_B6_B10:
        .long   531745
        .long   170013
        .long   296983
        .long   423953
        .long   550921
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_tanf8_ha_l9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_stan_ha_cout_rare_internal

__jsvml_stan_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L149:

        push      rbp
        push      r15
        sub       rsp, 168
        lea       rbp, QWORD PTR [32+rsp]
        pxor      xmm1, xmm1
        movss     xmm0, DWORD PTR [rcx]
        mov       r15, rdx
        cvtss2sd  xmm1, xmm0
        movzx     r8d, WORD PTR [2+rcx]
        lea       r11, QWORD PTR [rip+__ImageBase]
        movsd     QWORD PTR [8+rbp], xmm1
        and       r8d, 32640
        and       BYTE PTR [15+rbp], 127
        xor       eax, eax
        movups    XMMWORD PTR [96+rbp], xmm15
        movups    XMMWORD PTR [112+rbp], xmm14
        movups    XMMWORD PTR [80+rbp], xmm9
        cmp       r8d, 32640
        je        .L_B7_17

.L_B7_2:

        movzx     ecx, WORD PTR [14+rbp]
        mov       edx, ecx
        and       edx, 32752
        cmp       edx, 12336
        jl        .L_B7_13

.L_B7_3:

        cmp       ecx, 16585
        jge       .L_B7_5

.L_B7_4:

        movsd     xmm14, QWORD PTR [rip+_vmldTanHATab+96]
        xor       r8d, r8d
        jmp       .L_B7_12

.L_B7_5:

        movsd     QWORD PTR [32+rbp], xmm1
        mov       dl, BYTE PTR [39+rbp]
        mov       r9b, dl
        and       dl, 127
        and       r9b, -128
        mov       BYTE PTR [39+rbp], dl
        movzx     ecx, WORD PTR [38+rbp]
        mov       edx, ecx
        and       edx, 32752
        shr       edx, 4
        shr       r9b, 7
        cmp       edx, 1053
        jge       .L_B7_10

.L_B7_6:

        movsd     xmm3, QWORD PTR [32+rbp]
        pxor      xmm2, xmm2
        movsd     xmm0, QWORD PTR [rip+_vmlReductionTab+64]
        mulsd     xmm0, xmm3
        movsd     QWORD PTR [24+rbp], xmm0
        movzx     ecx, WORD PTR [30+rbp]
        mov       r8d, DWORD PTR [28+rbp]
        shr       ecx, 4
        or        r8d, -1048576
        mov       r10d, DWORD PTR [24+rbp]
        neg       ecx
        shl       r8d, 11
        add       ecx, 30
        shr       r10d, 21
        or        r8d, r10d
        shr       r8d, cl
        mov       r10d, r8d
        and       r10d, 1
        add       r10d, r8d
        cvtsi2sd  xmm2, r10d
        cmp       edx, 1046
        jge       .L_B7_8

.L_B7_7:

        movsd     xmm1, QWORD PTR [rip+_vmlReductionTab+80]
        mulsd     xmm1, xmm2
        movsd     xmm4, QWORD PTR [rip+_vmlReductionTab+88]
        subsd     xmm3, xmm1
        mulsd     xmm4, xmm2
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm1, QWORD PTR [16+rbp]
        movsd     xmm0, QWORD PTR [16+rbp]
        movsd     xmm14, QWORD PTR [rip+_vmlReductionTab+96]
        subsd     xmm0, xmm4
        mulsd     xmm14, xmm2
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [16+rbp]
        subsd     xmm1, xmm3
        movsd     xmm5, QWORD PTR [16+rbp]
        subsd     xmm1, xmm4
        subsd     xmm5, xmm14
        movsd     QWORD PTR [16+rbp], xmm5
        movsd     xmm9, QWORD PTR [16+rbp]
        movsd     xmm0, QWORD PTR [rip+_vmlReductionTab+104]
        subsd     xmm15, xmm9
        mulsd     xmm2, xmm0
        subsd     xmm15, xmm14
        addsd     xmm1, xmm15
        subsd     xmm1, xmm2
        jmp       .L_B7_9

.L_B7_8:

        movsd     xmm1, QWORD PTR [rip+_vmlReductionTab+112]
        mulsd     xmm1, xmm2
        movsd     xmm5, QWORD PTR [rip+_vmlReductionTab+120]
        subsd     xmm3, xmm1
        mulsd     xmm5, xmm2
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm0, QWORD PTR [16+rbp]
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [rip+_vmlReductionTab+128]
        subsd     xmm3, xmm5
        mulsd     xmm15, xmm2
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm4, QWORD PTR [16+rbp]
        movsd     xmm1, QWORD PTR [16+rbp]
        subsd     xmm0, xmm4
        movsd     xmm9, QWORD PTR [16+rbp]
        subsd     xmm0, xmm5
        subsd     xmm9, xmm15
        movsd     QWORD PTR [16+rbp], xmm9
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm9, QWORD PTR [rip+_vmlReductionTab+136]
        subsd     xmm1, xmm14
        mulsd     xmm9, xmm2
        subsd     xmm1, xmm15
        movsd     xmm15, QWORD PTR [rip+_vmlReductionTab+144]
        addsd     xmm0, xmm1
        mulsd     xmm2, xmm15
        movsd     xmm1, QWORD PTR [16+rbp]
        movsd     xmm3, QWORD PTR [16+rbp]
        addsd     xmm3, xmm0
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm4, QWORD PTR [16+rbp]
        movsd     xmm14, QWORD PTR [16+rbp]
        subsd     xmm1, xmm4
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [16+rbp]
        subsd     xmm0, xmm9
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm5, QWORD PTR [16+rbp]
        subsd     xmm14, xmm5
        subsd     xmm14, xmm9
        addsd     xmm1, xmm14
        subsd     xmm1, xmm2

.L_B7_9:

        movzx     edx, r9b
        inc       r8d
        movsd     xmm14, QWORD PTR [16+rbp]
        shr       r8d, 1
        movsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+16+r11+rdx*8]
        mulsd     xmm14, xmm0
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        movaps    xmm1, xmm14
        addsd     xmm1, xmm0
        subsd     xmm14, xmm1
        addsd     xmm14, xmm0
        jmp       .L_B7_12

.L_B7_10:

        and       ecx, -32753
        lea       r10d, DWORD PTR [-200+rdx]
        and       r10d, 2047
        lea       r8d, DWORD PTR [-1052+rdx]
        shl       r10d, 4
        or        ecx, r10d
        imul      r10d, r8d, 83886
        mov       WORD PTR [38+rbp], cx
        movsd     xmm1, QWORD PTR [32+rbp]
        mov       ecx, DWORD PTR [32+rbp]
        movsd     QWORD PTR [8+rbp], xmm1
        and       ecx, -134217728
        sar       r10d, 21
        mov       DWORD PTR [8+rbp], ecx
        movsxd    r10, r10d
        subsd     xmm1, QWORD PTR [8+rbp]
        imul      ecx, r10d, -25
        movsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+160+r11+r10*8]
        mulsd     xmm0, xmm1
        lea       ecx, DWORD PTR [-1052+rcx+rdx]
        movsd     QWORD PTR [16+rbp], xmm0
        neg       ecx
        movsd     xmm0, QWORD PTR [8+rbp]
        add       ecx, 38
        movaps    xmm4, xmm0
        mulsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+168+r11+r10*8]
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     xmm3, QWORD PTR [16+rbp]
        mov       rdx, QWORD PTR [rip+_vmlReductionTab+152]
        addsd     xmm3, xmm4
        movsd     QWORD PTR [16+rbp], xmm3
        movsd     xmm15, QWORD PTR [16+rbp]
        movsd     xmm5, QWORD PTR [16+rbp]
        subsd     xmm2, xmm15
        shl       rdx, cl
        addsd     xmm2, xmm4
        movsd     xmm14, QWORD PTR [16+rbp]
        addsd     xmm5, xmm2
        movd      r8, xmm5
        movaps    xmm5, xmm0
        movsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+168+r11+r10*8]
        mulsd     xmm4, xmm1
        mulsd     xmm5, QWORD PTR ["_vmlReductionTab"@imgrel+184+r11+r10*8]
        and       r8, rdx
        mov       QWORD PTR [24+rbp], r8
        movzx     r9d, r9b
        subsd     xmm14, QWORD PTR [24+rbp]
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm3, QWORD PTR [16+rbp]
        addsd     xmm3, xmm4
        movsd     QWORD PTR [16+rbp], xmm3
        movaps    xmm3, xmm0
        movsd     xmm9, QWORD PTR [16+rbp]
        mulsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+176+r11+r10*8]
        subsd     xmm14, xmm9
        movsd     xmm9, QWORD PTR [16+rbp]
        addsd     xmm14, xmm4
        movsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+176+r11+r10*8]
        addsd     xmm14, xmm2
        mulsd     xmm4, xmm1
        movsd     xmm2, QWORD PTR [16+rbp]
        addsd     xmm2, xmm3
        movsd     QWORD PTR [16+rbp], xmm2
        movsd     xmm15, QWORD PTR [16+rbp]
        subsd     xmm9, xmm15
        addsd     xmm9, xmm3
        addsd     xmm9, xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm2, QWORD PTR [16+rbp]
        addsd     xmm14, xmm9
        addsd     xmm14, xmm4
        addsd     xmm14, xmm5
        movsd     QWORD PTR [24+rbp], xmm14
        movzx     ecx, WORD PTR [30+rbp]
        shr       ecx, 4
        movd      rdx, xmm14
        neg       ecx
        add       ecx, 51
        shr       rdx, cl
        mov       r8d, edx
        shl       rdx, cl
        mov       QWORD PTR [24+rbp], rdx
        mov       edx, r8d
        and       edx, 1
        inc       r8d
        shr       r8d, 1
        subsd     xmm2, QWORD PTR [24+rbp]
        movsd     QWORD PTR [16+rbp], xmm2
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [16+rbp]
        addsd     xmm15, xmm9
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm14, QWORD PTR [16+rbp]
        subsd     xmm3, xmm14
        addsd     xmm3, xmm9
        movsd     xmm9, QWORD PTR [16+rbp]
        addsd     xmm9, QWORD PTR ["_vmlReductionTab"@imgrel+r11+rdx*8]
        movsd     QWORD PTR [16+rbp], xmm9
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     xmm14, QWORD PTR [16+rbp]
        addsd     xmm14, xmm4
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm9, QWORD PTR [16+rbp]
        movsd     xmm14, QWORD PTR [16+rbp]
        subsd     xmm2, xmm9
        addsd     xmm2, xmm4
        movsd     xmm4, QWORD PTR [16+rbp]
        addsd     xmm4, xmm5
        addsd     xmm2, xmm3
        movsd     QWORD PTR [16+rbp], xmm4
        movsd     xmm3, QWORD PTR [16+rbp]
        movsd     xmm15, QWORD PTR [16+rbp]
        subsd     xmm14, xmm3
        movsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+184+r11+r10*8]
        addsd     xmm14, xmm5
        mulsd     xmm3, xmm1
        addsd     xmm14, xmm2
        movsd     xmm5, QWORD PTR [16+rbp]
        addsd     xmm5, xmm3
        movsd     QWORD PTR [16+rbp], xmm5
        movsd     xmm2, QWORD PTR [16+rbp]
        movsd     xmm9, QWORD PTR [16+rbp]
        subsd     xmm15, xmm2
        movaps    xmm2, xmm0
        addsd     xmm15, xmm3
        mulsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+192+r11+r10*8]
        addsd     xmm15, xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        addsd     xmm14, xmm2
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm4, QWORD PTR [16+rbp]
        movsd     xmm5, QWORD PTR [16+rbp]
        subsd     xmm9, xmm4
        addsd     xmm9, xmm2
        movsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+192+r11+r10*8]
        mulsd     xmm2, xmm1
        addsd     xmm9, xmm15
        movsd     xmm15, QWORD PTR [16+rbp]
        addsd     xmm15, xmm2
        movsd     QWORD PTR [16+rbp], xmm15
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm4, QWORD PTR [16+rbp]
        subsd     xmm5, xmm14
        movaps    xmm14, xmm0
        addsd     xmm5, xmm2
        mulsd     xmm14, QWORD PTR ["_vmlReductionTab"@imgrel+200+r11+r10*8]
        addsd     xmm5, xmm9
        movsd     xmm3, QWORD PTR [16+rbp]
        movaps    xmm2, xmm0
        movsd     xmm15, QWORD PTR ["_vmlReductionTab"@imgrel+200+r11+r10*8]
        addsd     xmm3, xmm14
        mulsd     xmm2, QWORD PTR ["_vmlReductionTab"@imgrel+208+r11+r10*8]
        mulsd     xmm15, xmm1
        movsd     QWORD PTR [16+rbp], xmm3
        addsd     xmm15, xmm2
        movsd     xmm9, QWORD PTR [16+rbp]
        movsd     xmm3, QWORD PTR [16+rbp]
        subsd     xmm4, xmm9
        movsd     xmm9, QWORD PTR ["_vmlReductionTab"@imgrel+208+r11+r10*8]
        addsd     xmm4, xmm14
        mulsd     xmm9, xmm1
        addsd     xmm4, xmm5
        movsd     xmm5, QWORD PTR [16+rbp]
        addsd     xmm5, xmm15
        movsd     QWORD PTR [16+rbp], xmm5
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm2, QWORD PTR [16+rbp]
        subsd     xmm3, xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        addsd     xmm3, xmm15
        addsd     xmm3, xmm4
        movaps    xmm4, xmm0
        mulsd     xmm4, QWORD PTR ["_vmlReductionTab"@imgrel+216+r11+r10*8]
        mulsd     xmm0, QWORD PTR ["_vmlReductionTab"@imgrel+224+r11+r10*8]
        addsd     xmm9, xmm4
        addsd     xmm14, xmm9
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm5, QWORD PTR [16+rbp]
        movsd     xmm14, QWORD PTR [16+rbp]
        subsd     xmm2, xmm5
        addsd     xmm2, xmm9
        addsd     xmm2, xmm3
        movsd     xmm3, QWORD PTR ["_vmlReductionTab"@imgrel+216+r11+r10*8]
        mulsd     xmm1, xmm3
        addsd     xmm1, xmm0
        movsd     xmm0, QWORD PTR [16+rbp]
        addsd     xmm0, xmm1
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm4, QWORD PTR [16+rbp]
        mulsd     xmm4, QWORD PTR [rip+_vmlReductionTab+32]
        movsd     xmm3, QWORD PTR [16+rbp]
        addsd     xmm3, xmm4
        movsd     QWORD PTR [rbp], xmm3
        movsd     xmm5, QWORD PTR [rbp]
        subsd     xmm5, xmm4
        movsd     QWORD PTR [16+rbp], xmm5
        movsd     xmm0, QWORD PTR [16+rbp]
        subsd     xmm14, xmm0
        addsd     xmm14, xmm1
        movsd     xmm1, QWORD PTR [16+rbp]
        addsd     xmm14, xmm2
        movsd     xmm2, QWORD PTR [rip+_vmlReductionTab+48]
        mulsd     xmm2, xmm14
        addsd     xmm14, xmm1
        mulsd     xmm14, QWORD PTR [rip+_vmlReductionTab+56]
        addsd     xmm2, xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        mulsd     xmm14, QWORD PTR [rip+_vmlReductionTab+48]
        movsd     QWORD PTR [16+rbp], xmm14
        movsd     xmm14, QWORD PTR [16+rbp]
        movsd     xmm0, QWORD PTR [16+rbp]
        addsd     xmm0, xmm2
        movsd     QWORD PTR [16+rbp], xmm0
        movsd     xmm1, QWORD PTR [16+rbp]
        subsd     xmm14, xmm1
        movsd     xmm1, QWORD PTR [16+rbp]
        mulsd     xmm1, QWORD PTR ["_vmlReductionTab"@imgrel+16+r11+r9*8]
        addsd     xmm14, xmm2
        mulsd     xmm14, QWORD PTR ["_vmlReductionTab"@imgrel+16+r11+r9*8]

.L_B7_12:

        movsd     xmm9, QWORD PTR [rip+_vmldTanHATab]
        mulsd     xmm9, xmm1
        movsd     xmm3, QWORD PTR [rip+_vmldTanHATab+8]
        movsd     xmm0, QWORD PTR [rip+_vmldTanHATab+16]
        addsd     xmm3, xmm9
        addsd     xmm9, xmm0
        movsd     QWORD PTR [40+rbp], xmm3
        movsd     xmm3, QWORD PTR [40+rbp]
        movsd     QWORD PTR [48+rbp], xmm9
        movsd     xmm9, QWORD PTR [48+rbp]
        movsd     xmm15, QWORD PTR [rip+_vmldTanHATab+48]
        movsd     xmm2, QWORD PTR [rip+_vmldTanHATab+56]
        movsd     xmm5, QWORD PTR [rip+_vmldTanHATab+64]
        movsd     xmm4, QWORD PTR [rip+_vmldTanHATab+24]
        movsd     xmm0, QWORD PTR [rip+_vmldTanHATab+40]
        shl       r8d, 4
        subsd     xmm3, QWORD PTR [rip+_vmldTanHATab+8]
        subsd     xmm9, QWORD PTR [rip+_vmldTanHATab+16]
        mulsd     xmm15, xmm3
        mulsd     xmm2, xmm3
        mulsd     xmm3, xmm5
        mulsd     xmm4, xmm9
        movsd     xmm5, QWORD PTR [rip+_vmldTanHATab+32]
        mulsd     xmm5, xmm9
        mulsd     xmm9, xmm0
        movaps    xmm0, xmm1
        subsd     xmm1, xmm4
        subsd     xmm0, xmm15
        movaps    xmm15, xmm0
        add       r8d, DWORD PTR [40+rbp]
        subsd     xmm15, xmm2
        and       r8d, 31
        subsd     xmm0, xmm15
        subsd     xmm0, xmm2
        movaps    xmm2, xmm1
        subsd     xmm2, xmm5
        subsd     xmm0, xmm3
        subsd     xmm1, xmm2
        addsd     xmm0, xmm14
        subsd     xmm1, xmm5
        movaps    xmm3, xmm2
        lea       edx, DWORD PTR [r8+r8*4]
        shl       edx, 2
        subsd     xmm1, xmm9
        addsd     xmm1, xmm14
        movaps    xmm14, xmm15
        addsd     xmm14, xmm0
        addsd     xmm3, xmm1
        movsd     QWORD PTR [56+rbp], xmm14
        movsd     xmm4, QWORD PTR [56+rbp]
        subsd     xmm15, xmm4
        movsd     QWORD PTR [64+rbp], xmm15
        movsd     xmm15, QWORD PTR [64+rbp]
        movsd     xmm14, QWORD PTR [56+rbp]
        addsd     xmm15, xmm0
        movsd     QWORD PTR [56+rbp], xmm3
        movaps    xmm5, xmm14
        movsd     xmm0, QWORD PTR [56+rbp]
        movsd     xmm3, QWORD PTR [rip+_vmldTanHATab+88]
        subsd     xmm2, xmm0
        mulsd     xmm5, xmm14
        movsd     QWORD PTR [64+rbp], xmm2
        movaps    xmm9, xmm3
        movsd     xmm4, QWORD PTR [64+rbp]
        addsd     xmm4, xmm1
        movsd     xmm1, QWORD PTR [56+rbp]
        movsd     QWORD PTR [8+rbp], xmm1
        mov       r8d, DWORD PTR [12+rbp]
        mov       ecx, DWORD PTR [8+rbp]
        and       ecx, -262144
        mov       DWORD PTR [24+rbp], ecx
        mov       DWORD PTR [28+rbp], r8d
        movsd     xmm0, QWORD PTR [24+rbp]
        divsd     xmm9, xmm0
        movsd     QWORD PTR [32+rbp], xmm9
        subsd     xmm1, xmm0
        mov       r9d, DWORD PTR [32+rbp]
        addsd     xmm4, xmm1
        mov       r10d, DWORD PTR [36+rbp]
        and       r9d, DWORD PTR ["_vmldTanHATab"@imgrel+280+r11+rdx*8]
        and       r10d, DWORD PTR ["_vmldTanHATab"@imgrel+284+r11+rdx*8]
        mov       DWORD PTR [72+rbp], r9d
        mov       DWORD PTR [76+rbp], r10d
        movsd     xmm2, QWORD PTR [72+rbp]
        mulsd     xmm0, xmm2
        mulsd     xmm4, xmm9
        subsd     xmm0, xmm3
        movsd     xmm1, QWORD PTR ["_vmldTanHATab"@imgrel+272+r11+rdx*8]
        addsd     xmm0, xmm4
        mulsd     xmm1, xmm9
        movsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+224+r11+rdx*8]
        mulsd     xmm4, xmm14
        mulsd     xmm1, xmm0
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+208+r11+rdx*8]
        mulsd     xmm4, xmm14
        movsd     xmm3, QWORD PTR ["_vmldTanHATab"@imgrel+264+r11+rdx*8]
        movsd     xmm2, QWORD PTR ["_vmldTanHATab"@imgrel+256+r11+rdx*8]
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+192+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+176+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+160+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+144+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+136+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+128+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+232+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+216+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+200+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+184+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+168+r11+rdx*8]
        mulsd     xmm4, xmm14
        addsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+152+r11+rdx*8]
        mulsd     xmm5, xmm4
        movaps    xmm4, xmm14
        mulsd     xmm14, xmm3
        mulsd     xmm4, xmm2
        mulsd     xmm3, xmm15
        mulsd     xmm2, xmm15
        movaps    xmm0, xmm14
        addsd     xmm0, xmm4
        movsd     QWORD PTR [56+rbp], xmm0
        movsd     xmm9, QWORD PTR [56+rbp]
        subsd     xmm4, xmm9
        movsd     QWORD PTR [64+rbp], xmm4
        movsd     xmm9, QWORD PTR [56+rbp]
        movsd     xmm0, QWORD PTR [64+rbp]
        movsd     xmm4, QWORD PTR ["_vmldTanHATab"@imgrel+240+r11+rdx*8]
        addsd     xmm0, xmm14
        subsd     xmm4, QWORD PTR [72+rbp]
        addsd     xmm0, xmm5
        movaps    xmm5, xmm9
        addsd     xmm5, xmm4
        movsd     QWORD PTR [56+rbp], xmm5
        movsd     xmm14, QWORD PTR [56+rbp]
        subsd     xmm4, xmm14
        movsd     QWORD PTR [64+rbp], xmm4
        movsd     xmm14, QWORD PTR [56+rbp]
        movsd     xmm5, QWORD PTR [64+rbp]
        addsd     xmm9, xmm5
        addsd     xmm0, xmm9
        movsd     QWORD PTR [56+rbp], xmm0
        movsd     xmm0, QWORD PTR [56+rbp]
        addsd     xmm0, xmm1
        movsd     QWORD PTR [64+rbp], xmm0
        movsd     xmm1, QWORD PTR [64+rbp]
        addsd     xmm1, xmm3
        movsd     QWORD PTR [56+rbp], xmm1
        movsd     xmm3, QWORD PTR [56+rbp]
        addsd     xmm3, QWORD PTR ["_vmldTanHATab"@imgrel+248+r11+rdx*8]
        movsd     QWORD PTR [64+rbp], xmm3
        movsd     xmm9, QWORD PTR [64+rbp]
        addsd     xmm9, xmm2
        addsd     xmm9, xmm14
        cvtsd2ss  xmm9, xmm9
        movss     DWORD PTR [r15], xmm9
        jmp       .L_B7_16

.L_B7_13:

        ucomisd   xmm1, QWORD PTR [rip+_vmldTanHATab+96]
        jp        .L_B7_14
        je        .L_B7_15

.L_B7_14:

        movsd     xmm0, QWORD PTR [rip+_vmldTanHATab+112]
        mulsd     xmm0, xmm1
        subsd     xmm0, xmm1
        cvtsd2ss  xmm0, xmm0
        cvtss2sd  xmm0, xmm0
        mulsd     xmm0, QWORD PTR [rip+_vmldTanHATab+120]
        cvtsd2ss  xmm0, xmm0
        movss     DWORD PTR [r15], xmm0
        jmp       .L_B7_16

.L_B7_15:

        movss     DWORD PTR [r15], xmm0

.L_B7_16:

        movups    xmm9, XMMWORD PTR [80+rbp]
        movups    xmm14, XMMWORD PTR [112+rbp]
        movups    xmm15, XMMWORD PTR [96+rbp]
        lea       rsp, QWORD PTR [136+rbp]
        pop       r15
        pop       rbp
        ret

.L_B7_17:

        cmp       DWORD PTR [8+rbp], 0
        jne       .L_B7_20

.L_B7_18:

        cmp       DWORD PTR [12+rbp], 2146435072
        jne       .L_B7_20

.L_B7_19:

        movsd     xmm0, QWORD PTR [rip+_vmldTanHATab+96]
        mov       eax, 1
        mulsd     xmm1, xmm0
        cvtsd2ss  xmm1, xmm1
        movss     DWORD PTR [r15], xmm1
        jmp       .L_B7_16

.L_B7_20:

        mulss     xmm0, xmm0
        movss     DWORD PTR [r15], xmm0
        jmp       .L_B7_16
        .align    16, 0x90

.L_B7_21:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_stan_ha_cout_rare_internal_B1_B20:
        .long   621498113
        .long   497743
        .long   649290
        .long   587845
        .long   17695507
        .long   4026990613
        .long   20485

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_21
        .rva    _unwind___jsvml_stan_ha_cout_rare_internal_B1_B20

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_stan_ha_data_internal
__jsvml_stan_ha_data_internal:
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1092811139
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   1036586970
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   832708968
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   633484485
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   832708608
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   708075802
        .long   2147483648
        .long   1036629468
        .long   1045147567
        .long   1050366018
        .long   1054086093
        .long   1057543609
        .long   1059786177
        .long   1062344705
        .long   1065353216
        .long   1067186156
        .long   1069519047
        .long   1072658590
        .long   1075479162
        .long   1079179983
        .long   1084284919
        .long   1092776803
        .long   4286578687
        .long   3240260451
        .long   3231768567
        .long   3226663631
        .long   3222962810
        .long   3220142238
        .long   3217002695
        .long   3214669804
        .long   3212836864
        .long   3209828353
        .long   3207269825
        .long   3205027257
        .long   3201569741
        .long   3197849666
        .long   3192631215
        .long   3184113116
        .long   2147483648
        .long   826651354
        .long   791306928
        .long   2989111746
        .long   2982175258
        .long   2992568675
        .long   850100121
        .long   850281093
        .long   0
        .long   861435400
        .long   840342808
        .long   3003924160
        .long   3016492578
        .long   865099790
        .long   856723932
        .long   3025444934
        .long   4085252096
        .long   877961286
        .long   3004207580
        .long   3012583438
        .long   869008930
        .long   856440512
        .long   2987826456
        .long   3008919048
        .long   0
        .long   2997764741
        .long   2997583769
        .long   845085027
        .long   834691610
        .long   841628098
        .long   2938790576
        .long   2974135002
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1051372198
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1040758920
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1174470656
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
        .long   1059256707
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
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
        .long   1262485504
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
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1176256512
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1413742592
        .long   1073291771
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
        .long   1280075305
        .long   1032227875
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
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
        .long   116221458
        .long   3216541303
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
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   3891301393
        .long   3218831093
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   2796173298
        .long   1065608814
        .long   1070141403
        .long   3007036718
        .long   0
        .long   0
        .long   0
        .long   1065353216
        .long   0
        .long   0
        .long   1051372765
        .long   0
        .long   1069935515
        .long   853435276
        .long   0
        .long   1019812401
        .long   797871386
        .long   1065353216
        .long   975043072
        .long   1019820333
        .long   1051400329
        .long   1015569723
        .long   1069729628
        .long   2999697034
        .long   0
        .long   1028208956
        .long   816029531
        .long   1065353216
        .long   991832832
        .long   1028240852
        .long   1051479824
        .long   1023251493
        .long   1069523740
        .long   860164016
        .long   0
        .long   1033310670
        .long   827321128
        .long   1065353216
        .long   1001540608
        .long   1033364538
        .long   1051617929
        .long   1028458464
        .long   1069317853
        .long   2977958621
        .long   0
        .long   1036629468
        .long   826649990
        .long   1065353216
        .long   1008660256
        .long   1036757738
        .long   1051807326
        .long   1032162226
        .long   1069111966
        .long   3009745511
        .long   0
        .long   1039964354
        .long   2964214364
        .long   1065353216
        .long   1014578464
        .long   1040201797
        .long   1052059423
        .long   1034708638
        .long   1068906078
        .long   848017692
        .long   0
        .long   1041753444
        .long   2982519524
        .long   1065353216
        .long   1018446032
        .long   1041972480
        .long   1052374628
        .long   1037453248
        .long   1068700191
        .long   3004118141
        .long   0
        .long   1043443277
        .long   2985501265
        .long   1065353216
        .long   1022797056
        .long   1043793882
        .long   1052746889
        .long   1039915463
        .long   1068494303
        .long   857455223
        .long   0
        .long   1045147567
        .long   791292384
        .long   1065353216
        .long   1025642520
        .long   1045675728
        .long   1053195814
        .long   1041590498
        .long   1068288416
        .long   2992986704
        .long   0
        .long   1046868583
        .long   833925599
        .long   1065353216
        .long   1028557712
        .long   1047628490
        .long   1053716836
        .long   1043186017
        .long   1068082528
        .long   863082593
        .long   0
        .long   1048592340
        .long   2988940902
        .long   1065353216
        .long   1031831496
        .long   1049119700
        .long   1054310701
        .long   1044788971
        .long   1067876641
        .long   837040812
        .long   0
        .long   1049473154
        .long   2972885556
        .long   1065353216
        .long   1033689040
        .long   1050184288
        .long   1054999523
        .long   1046698028
        .long   1067670754
        .long   3006826934
        .long   0
        .long   1050366018
        .long   2989112046
        .long   1065353216
        .long   1035760784
        .long   1051302645
        .long   1055777031
        .long   1048635818
        .long   1067464866
        .long   853854846
        .long   0
        .long   1051272279
        .long   817367088
        .long   1065353216
        .long   1038057984
        .long   1052482025
        .long   1056656040
        .long   1049723582
        .long   1067258979
        .long   2999277465
        .long   0
        .long   1052193360
        .long   2986510371
        .long   1065353216
        .long   1040390392
        .long   1053730424
        .long   1057307751
        .long   1050943059
        .long   1067053091
        .long   860373800
        .long   0
        .long   1053130765
        .long   2987705281
        .long   1065353216
        .long   1041784404
        .long   1055056706
        .long   1057868403
        .long   1052298273
        .long   1066847204
        .long   2974604846
        .long   0
        .long   1054086093
        .long   2982175058
        .long   1065353216
        .long   1043312844
        .long   1056470731
        .long   1058502663
        .long   1053852727
        .long   1066641317
        .long   3009535726
        .long   0
        .long   1055061049
        .long   2985572766
        .long   1065353216
        .long   1044984860
        .long   1057474074
        .long   1059214863
        .long   1055565854
        .long   1066435429
        .long   848437261
        .long   0
        .long   1056057456
        .long   844263924
        .long   1065353216
        .long   1046810746
        .long   1058286064
        .long   1060014844
        .long   1057227928
        .long   1066229542
        .long   3003908357
        .long   0
        .long   1057020941
        .long   2987700082
        .long   1065353216
        .long   1048689044
        .long   1059160627
        .long   1060914481
        .long   1058313864
        .long   1066023654
        .long   857665008
        .long   0
        .long   1057543609
        .long   2992568718
        .long   1065353216
        .long   1049773965
        .long   1060105673
        .long   1061932376
        .long   1059565214
        .long   1065817767
        .long   2992147565
        .long   0
        .long   1058080175
        .long   854607280
        .long   1065353216
        .long   1050955490
        .long   1061130203
        .long   1063075792
        .long   1060964899
        .long   1065611879
        .long   863292377
        .long   0
        .long   1058631876
        .long   848316488
        .long   1065353216
        .long   1052241912
        .long   1062244476
        .long   1064374250
        .long   1062608877
        .long   1065405992
        .long   838719090
        .long   0
        .long   1059200055
        .long   2987155932
        .long   1065353216
        .long   1053642609
        .long   1063460266
        .long   1065596017
        .long   1064468970
        .long   1065046993
        .long   848647046
        .long   0
        .long   1059786177
        .long   850099898
        .long   1065353216
        .long   1055168194
        .long   1064791104
        .long   1066427841
        .long   1065988022
        .long   1064635218
        .long   854274415
        .long   0
        .long   1060391849
        .long   2998448362
        .long   1065353216
        .long   1056830711
        .long   1065802920
        .long   1067373883
        .long   1067237086
        .long   1064223444
        .long   2998857895
        .long   0
        .long   1061018831
        .long   852661766
        .long   1073741824
        .long   3202769007
        .long   1066608086
        .long   1068453481
        .long   1068697612
        .long   1063811669
        .long   2991727995
        .long   0
        .long   1061669068
        .long   2986407194
        .long   1073741824
        .long   3200789612
        .long   1067498217
        .long   1069688111
        .long   1070408903
        .long   1063399894
        .long   2971248290
        .long   0
        .long   1062344705
        .long   850280824
        .long   1073741824
        .long   3198626104
        .long   1068485666
        .long   1071103306
        .long   1072410651
        .long   1062988119
        .long   839209514
        .long   0
        .long   1063048126
        .long   826671880
        .long   1073741824
        .long   3196257989
        .long   1069584946
        .long   1072731698
        .long   1074256640
        .long   1062576344
        .long   848856831
        .long   0
        .long   1063781982
        .long   845614362
        .long   1073741824
        .long   3191263702
        .long   1070813191
        .long   1074178145
        .long   1075661786
        .long   1062164569
        .long   854484200
        .long   0
        .long   1064549237
        .long   855412877
        .long   1073741824
        .long   3183449264
        .long   1072190735
        .long   1075269479
        .long   1077331464
        .long   1061752795
        .long   2998648110
        .long   1065353216
        .long   3196839438
        .long   839748996
        .long   1056964608
        .long   3187152817
        .long   3179496939
        .long   1025375660
        .long   3159543663
        .long   1061341020
        .long   2991308426
        .long   1065353216
        .long   3196528703
        .long   2993207654
        .long   1056964608
        .long   3187565865
        .long   3178961235
        .long   1025040649
        .long   3158667440
        .long   1060929245
        .long   2969570013
        .long   1065353216
        .long   3196220448
        .long   839617357
        .long   1048576000
        .long   1039897640
        .long   3178234548
        .long   1024731756
        .long   3157936127
        .long   1060517470
        .long   839629084
        .long   1065353216
        .long   3195769474
        .long   2972943314
        .long   1048576000
        .long   1039520273
        .long   3177530035
        .long   1024452069
        .long   3157392148
        .long   1060105695
        .long   849066615
        .long   1065353216
        .long   3195162227
        .long   824230882
        .long   1048576000
        .long   1039159939
        .long   3176846430
        .long   1024176063
        .long   3156719803
        .long   1059693920
        .long   854693985
        .long   1065353216
        .long   3194559300
        .long   837912886
        .long   1048576000
        .long   1038816139
        .long   3176182519
        .long   1023917626
        .long   3156100775
        .long   1059282146
        .long   2998438326
        .long   1065353216
        .long   3193960492
        .long   2976936506
        .long   1048576000
        .long   1038488404
        .long   3175537158
        .long   1023672824
        .long   3155484691
        .long   1058870371
        .long   2990888857
        .long   1065353216
        .long   3193365611
        .long   837021697
        .long   1048576000
        .long   1038176293
        .long   3174909264
        .long   1023428141
        .long   3154717848
        .long   1058458596
        .long   2966216238
        .long   1065353216
        .long   3192774465
        .long   2981011604
        .long   1048576000
        .long   1037879388
        .long   3174297790
        .long   1023026096
        .long   3154246903
        .long   1058046821
        .long   840048653
        .long   1065353216
        .long   3192186872
        .long   2982847435
        .long   1048576000
        .long   1037597300
        .long   3173701765
        .long   1022609285
        .long   3153191752
        .long   1057635046
        .long   849276400
        .long   1065353216
        .long   3191602652
        .long   2972865050
        .long   1048576000
        .long   1037329660
        .long   3173120241
        .long   1022242934
        .long   3152466531
        .long   1057223271
        .long   854903769
        .long   1065353216
        .long   3191021630
        .long   838792638
        .long   1048576000
        .long   1037076124
        .long   3172552332
        .long   1021893801
        .long   3151682133
        .long   1056658385
        .long   840258438
        .long   1065353216
        .long   3190443633
        .long   2979855596
        .long   1048576000
        .long   1036836369
        .long   3171997189
        .long   1021543079
        .long   3150495127
        .long   1055834836
        .long   2990469287
        .long   1065353216
        .long   3189868496
        .long   2981611511
        .long   1048576000
        .long   1036610091
        .long   3171453986
        .long   1021220110
        .long   3149437649
        .long   1055011286
        .long   2962859682
        .long   1065353216
        .long   3189296055
        .long   2950857776
        .long   1048576000
        .long   1036397006
        .long   3170921933
        .long   1020942892
        .long   3148919762
        .long   1054187736
        .long   840468223
        .long   1065353216
        .long   3188726149
        .long   2955915960
        .long   1048576000
        .long   1036196851
        .long   3169906765
        .long   1020660679
        .long   3147905210
        .long   1053364187
        .long   2990259502
        .long   1065353216
        .long   3188158621
        .long   2978622083
        .long   1048576000
        .long   1036009378
        .long   3168882838
        .long   1020421234
        .long   3147436656
        .long   1052540637
        .long   2961181405
        .long   1065353216
        .long   3187515595
        .long   789904544
        .long   1048576000
        .long   1035834359
        .long   3167876891
        .long   1020189995
        .long   3146799430
        .long   1051717087
        .long   840678007
        .long   1065353216
        .long   3186389132
        .long   2974324164
        .long   1048576000
        .long   1035671582
        .long   3166887590
        .long   1019957287
        .long   3145677161
        .long   1050893538
        .long   2990049718
        .long   1065353216
        .long   3185266517
        .long   821445502
        .long   1048576000
        .long   1035520850
        .long   3165913616
        .long   1019751749
        .long   3143905397
        .long   1050069988
        .long   2957827630
        .long   1065353216
        .long   3184147455
        .long   823956970
        .long   1048576000
        .long   1035381982
        .long   3164953691
        .long   1019591684
        .long   3143870825
        .long   1049246438
        .long   840887792
        .long   1065353216
        .long   3183031657
        .long   2948197632
        .long   1048576000
        .long   1035254815
        .long   3164006661
        .long   1019406069
        .long   3141406886
        .long   1048269777
        .long   831869830
        .long   1065353216
        .long   3181918839
        .long   829265530
        .long   1048576000
        .long   1035139196
        .long   3163071263
        .long   1019275107
        .long   3141473894
        .long   1046622678
        .long   2954471074
        .long   1065353216
        .long   3180808717
        .long   2974758491
        .long   1048576000
        .long   1035034991
        .long   3161787608
        .long   1019131285
        .long   3139614851
        .long   1044975579
        .long   2981870894
        .long   1065353216
        .long   3179701015
        .long   2951749952
        .long   1048576000
        .long   1034942077
        .long   3159956688
        .long   1019002541
        .long   3137649644
        .long   1043328479
        .long   832289399
        .long   1065353216
        .long   3177908479
        .long   2968441398
        .long   1048576000
        .long   1034860345
        .long   3158142289
        .long   1018906717
        .long   3137336762
        .long   1041681380
        .long   2949439022
        .long   1065353216
        .long   3175701100
        .long   2963548093
        .long   1048576000
        .long   1034789701
        .long   3156342344
        .long   1018810804
        .long   3133887847
        .long   1039881169
        .long   823481222
        .long   1065353216
        .long   3173496918
        .long   2969038481
        .long   1048576000
        .long   1034730062
        .long   3154554595
        .long   1018750428
        .long   3136028910
        .long   1036586971
        .long   2973482286
        .long   1065353216
        .long   3171295395
        .long   2968300352
        .long   1048576000
        .long   1034681361
        .long   3151437839
        .long   1018664053
        .long   3123383004
        .long   1033292772
        .long   2941050414
        .long   1065353216
        .long   3167298168
        .long   808398440
        .long   1048576000
        .long   1034643540
        .long   3147899215
        .long   1018610153
        .long   943964915
        .long   1028198363
        .long   2965093678
        .long   1065353216
        .long   3162902549
        .long   2950073902
        .long   1048576000
        .long   1034616555
        .long   3143016255
        .long   1018603598
        .long   3133555092
        .long   1019809755
        .long   2956705070
        .long   1065353216
        .long   3154512883
        .long   803361198
        .long   1048576000
        .long   1034600377
        .long   3134618720
        .long   1018580133
        .long   3134056577
        .long   0
        .long   0
        .long   1065353216
        .long   0
        .long   0
        .long   1048576000
        .long   1034594987
        .long   0
        .long   1018552971
        .long   0
        .long   3167293403
        .long   809221422
        .long   1065353216
        .long   1007029235
        .long   2950844846
        .long   1048576000
        .long   1034600377
        .long   987135072
        .long   1018580133
        .long   986572929
        .long   3175682011
        .long   817610030
        .long   1065353216
        .long   1015418901
        .long   802590254
        .long   1048576000
        .long   1034616555
        .long   995532607
        .long   1018603598
        .long   986071444
        .long   3180776420
        .long   793566766
        .long   1065353216
        .long   1019814520
        .long   2955882088
        .long   1048576000
        .long   1034643540
        .long   1000415567
        .long   1018610153
        .long   3091448562
        .long   3184070619
        .long   825998638
        .long   1065353216
        .long   1023811747
        .long   820816704
        .long   1048576000
        .long   1034681361
        .long   1003954191
        .long   1018664053
        .long   975899356
        .long   3187364817
        .long   2970964870
        .long   1065353216
        .long   1026013270
        .long   821554833
        .long   1048576000
        .long   1034730062
        .long   1007070947
        .long   1018750428
        .long   988545262
        .long   3189165028
        .long   801955374
        .long   1065353216
        .long   1028217452
        .long   816064445
        .long   1048576000
        .long   1034789701
        .long   1008858696
        .long   1018810804
        .long   986404199
        .long   3190812127
        .long   2979773047
        .long   1065353216
        .long   1030424831
        .long   820957750
        .long   1048576000
        .long   1034860345
        .long   1010658641
        .long   1018906717
        .long   989853114
        .long   3192459227
        .long   834387246
        .long   1065353216
        .long   1032217367
        .long   804266304
        .long   1048576000
        .long   1034942077
        .long   1012473040
        .long   1019002541
        .long   990165996
        .long   3194106326
        .long   806987426
        .long   1065353216
        .long   1033325069
        .long   827274843
        .long   1048576000
        .long   1035034991
        .long   1014303960
        .long   1019131285
        .long   992131203
        .long   3195753425
        .long   2979353478
        .long   1065353216
        .long   1034435191
        .long   2976749178
        .long   1048576000
        .long   1035139196
        .long   1015587615
        .long   1019275107
        .long   993990246
        .long   3196730086
        .long   2988371440
        .long   1065353216
        .long   1035548009
        .long   800713984
        .long   1048576000
        .long   1035254815
        .long   1016523013
        .long   1019406069
        .long   993923238
        .long   3197553636
        .long   810343982
        .long   1065353216
        .long   1036663807
        .long   2971440618
        .long   1048576000
        .long   1035381982
        .long   1017470043
        .long   1019591684
        .long   996387177
        .long   3198377186
        .long   842566070
        .long   1065353216
        .long   1037782869
        .long   2968929150
        .long   1048576000
        .long   1035520850
        .long   1018429968
        .long   1019751749
        .long   996421749
        .long   3199200735
        .long   2988161655
        .long   1065353216
        .long   1038905484
        .long   826840516
        .long   1048576000
        .long   1035671582
        .long   1019403942
        .long   1019957287
        .long   998193513
        .long   3200024285
        .long   813697757
        .long   1065353216
        .long   1040031947
        .long   2937388192
        .long   1048576000
        .long   1035834359
        .long   1020393243
        .long   1020189995
        .long   999315782
        .long   3200847835
        .long   842775854
        .long   1065353216
        .long   1040674973
        .long   831138435
        .long   1048576000
        .long   1036009378
        .long   1021399190
        .long   1020421234
        .long   999953008
        .long   3201671384
        .long   2987951871
        .long   1065353216
        .long   1041242501
        .long   808432312
        .long   1048576000
        .long   1036196851
        .long   1022423117
        .long   1020660679
        .long   1000421562
        .long   3202494934
        .long   815376034
        .long   1065353216
        .long   1041812407
        .long   803374128
        .long   1048576000
        .long   1036397006
        .long   1023438285
        .long   1020942892
        .long   1001436114
        .long   3203318484
        .long   842985639
        .long   1065353216
        .long   1042384848
        .long   834127863
        .long   1048576000
        .long   1036610091
        .long   1023970338
        .long   1021220110
        .long   1001954001
        .long   3204142033
        .long   2987742086
        .long   1065353216
        .long   1042959985
        .long   832371948
        .long   1048576000
        .long   1036836369
        .long   1024513541
        .long   1021543079
        .long   1003011479
        .long   3204706919
        .long   3002387417
        .long   1065353216
        .long   1043537982
        .long   2986276286
        .long   1048576000
        .long   1037076124
        .long   1025068684
        .long   1021893801
        .long   1004198485
        .long   3205118694
        .long   2996760048
        .long   1065353216
        .long   1044119004
        .long   825381402
        .long   1048576000
        .long   1037329660
        .long   1025636593
        .long   1022242934
        .long   1004982883
        .long   3205530469
        .long   2987532301
        .long   1065353216
        .long   1044703224
        .long   835363787
        .long   1048576000
        .long   1037597300
        .long   1026218117
        .long   1022609285
        .long   1005708104
        .long   3205942244
        .long   818732590
        .long   1065353216
        .long   1045290817
        .long   833527956
        .long   1048576000
        .long   1037879388
        .long   1026814142
        .long   1023026096
        .long   1006763255
        .long   3206354019
        .long   843405209
        .long   1065353216
        .long   1045881963
        .long   2984505345
        .long   1048576000
        .long   1038176293
        .long   1027425616
        .long   1023428141
        .long   1007234200
        .long   3206765794
        .long   850954678
        .long   1065353216
        .long   1046476844
        .long   829452858
        .long   1048576000
        .long   1038488404
        .long   1028053510
        .long   1023672824
        .long   1008001043
        .long   3207177568
        .long   3002177633
        .long   1065353216
        .long   1047075652
        .long   2985396534
        .long   1048576000
        .long   1038816139
        .long   1028698871
        .long   1023917626
        .long   1008617127
        .long   3207589343
        .long   2996550263
        .long   1065353216
        .long   1047678579
        .long   2971714530
        .long   1048576000
        .long   1039159939
        .long   1029362782
        .long   1024176063
        .long   1009236155
        .long   3208001118
        .long   2987112732
        .long   1065353216
        .long   1048285826
        .long   825459666
        .long   1048576000
        .long   1039520273
        .long   1030046387
        .long   1024452069
        .long   1009908500
        .long   3208412893
        .long   822086365
        .long   1065353216
        .long   1048736800
        .long   2987101005
        .long   1048576000
        .long   1039897640
        .long   1030750900
        .long   1024731756
        .long   1010452479
        .long   3208824668
        .long   843824778
        .long   1065353216
        .long   1049045055
        .long   845724006
        .long   1056964608
        .long   3187565865
        .long   1031477587
        .long   1025040649
        .long   1011183792
        .long   3209236443
        .long   851164462
        .long   0
        .long   3212836864
        .long   725680128
        .long   1073741824
        .long   3003121664
        .long   3221225472
        .long   1076541384
        .long   3226821083
        .long   3209648217
        .long   3001967848
        .long   0
        .long   3212032885
        .long   3002896525
        .long   1073741824
        .long   3183449264
        .long   3219674383
        .long   1075269479
        .long   3224815112
        .long   3210059992
        .long   2996340479
        .long   0
        .long   3211265630
        .long   2993098010
        .long   1073741824
        .long   3191263702
        .long   3218296839
        .long   1074178145
        .long   3223145434
        .long   3210471767
        .long   2986693162
        .long   0
        .long   3210531774
        .long   2974155528
        .long   1073741824
        .long   3196257989
        .long   3217068594
        .long   1072731698
        .long   3221740288
        .long   3210883542
        .long   823764642
        .long   0
        .long   3209828353
        .long   2997764472
        .long   1073741824
        .long   3198626104
        .long   3215969314
        .long   1071103306
        .long   3219894299
        .long   3211295317
        .long   844244347
        .long   0
        .long   3209152716
        .long   838923546
        .long   1073741824
        .long   3200789612
        .long   3214981865
        .long   1069688111
        .long   3217892551
        .long   3211707092
        .long   851374247
        .long   0
        .long   3208502479
        .long   3000145414
        .long   1073741824
        .long   3202769007
        .long   3214091734
        .long   1068453481
        .long   3216181260
        .long   3212118866
        .long   3001758063
        .long   0
        .long   3207875497
        .long   850964714
        .long   1065353216
        .long   1056830711
        .long   3213286568
        .long   1067373883
        .long   3214720734
        .long   3212530641
        .long   2996130694
        .long   0
        .long   3207269825
        .long   2997583546
        .long   1065353216
        .long   1055168194
        .long   3212274752
        .long   1066427841
        .long   3213471670
        .long   3212889640
        .long   2986202738
        .long   0
        .long   3206683703
        .long   839672284
        .long   1065353216
        .long   1053642609
        .long   3210943914
        .long   1065596017
        .long   3211952618
        .long   3213095527
        .long   3010776025
        .long   0
        .long   3206115524
        .long   2995800136
        .long   1065353216
        .long   1052241912
        .long   3209728124
        .long   1064374250
        .long   3210092525
        .long   3213301415
        .long   844663917
        .long   0
        .long   3205563823
        .long   3002090928
        .long   1065353216
        .long   1050955490
        .long   3208613851
        .long   1063075792
        .long   3208448547
        .long   3213507302
        .long   3005148656
        .long   0
        .long   3205027257
        .long   845085070
        .long   1065353216
        .long   1049773965
        .long   3207589321
        .long   1061932376
        .long   3207048862
        .long   3213713190
        .long   856424709
        .long   0
        .long   3204504589
        .long   840216434
        .long   1065353216
        .long   1048689044
        .long   3206644275
        .long   1060914481
        .long   3205797512
        .long   3213919077
        .long   2995920909
        .long   0
        .long   3203541104
        .long   2991747572
        .long   1065353216
        .long   1046810746
        .long   3205769712
        .long   1060014844
        .long   3204711576
        .long   3214124965
        .long   862052078
        .long   0
        .long   3202544697
        .long   838089118
        .long   1065353216
        .long   1044984860
        .long   3204957722
        .long   1059214863
        .long   3203049502
        .long   3214330852
        .long   827121198
        .long   0
        .long   3201569741
        .long   834691410
        .long   1065353216
        .long   1043312844
        .long   3203954379
        .long   1058502663
        .long   3201336375
        .long   3214536739
        .long   3007857448
        .long   0
        .long   3200614413
        .long   840221633
        .long   1065353216
        .long   1041784404
        .long   3202540354
        .long   1057868403
        .long   3199781921
        .long   3214742627
        .long   851793817
        .long   0
        .long   3199677008
        .long   839026723
        .long   1065353216
        .long   1040390392
        .long   3201214072
        .long   1057307751
        .long   3198426707
        .long   3214948514
        .long   3001338494
        .long   0
        .long   3198755927
        .long   2964850736
        .long   1065353216
        .long   1038057984
        .long   3199965673
        .long   1056656040
        .long   3197207230
        .long   3215154402
        .long   859343286
        .long   0
        .long   3197849666
        .long   841628398
        .long   1065353216
        .long   1035760784
        .long   3198786293
        .long   1055777031
        .long   3196119466
        .long   3215360289
        .long   2984524460
        .long   0
        .long   3196956802
        .long   825401908
        .long   1065353216
        .long   1033689040
        .long   3197667936
        .long   1054999523
        .long   3194181676
        .long   3215566176
        .long   3010566241
        .long   0
        .long   3196075988
        .long   841457254
        .long   1065353216
        .long   1031831496
        .long   3196603348
        .long   1054310701
        .long   3192272619
        .long   3215772064
        .long   845503056
        .long   0
        .long   3194352231
        .long   2981409247
        .long   1065353216
        .long   1028557712
        .long   3195112138
        .long   1053716836
        .long   3190669665
        .long   3215977951
        .long   3004938871
        .long   0
        .long   3192631215
        .long   2938776032
        .long   1065353216
        .long   1025642520
        .long   3193159376
        .long   1053195814
        .long   3189074146
        .long   3216183839
        .long   856634493
        .long   0
        .long   3190926925
        .long   838017617
        .long   1065353216
        .long   1022797056
        .long   3191277530
        .long   1052746889
        .long   3187399111
        .long   3216389726
        .long   2995501340
        .long   0
        .long   3189237092
        .long   835035876
        .long   1065353216
        .long   1018446032
        .long   3189456128
        .long   1052374628
        .long   3184936896
        .long   3216595614
        .long   862261863
        .long   0
        .long   3187448002
        .long   816730716
        .long   1065353216
        .long   1014578464
        .long   3187685445
        .long   1052059423
        .long   3182192286
        .long   3216801501
        .long   830474973
        .long   0
        .long   3184113116
        .long   2974133638
        .long   1065353216
        .long   1008660256
        .long   3184241386
        .long   1051807326
        .long   3179645874
        .long   3217007388
        .long   3007647664
        .long   0
        .long   3180794318
        .long   2974804776
        .long   1065353216
        .long   1001540608
        .long   3180848186
        .long   1051617929
        .long   3175942112
        .long   3217213276
        .long   852213386
        .long   0
        .long   3175692604
        .long   2963513179
        .long   1065353216
        .long   991832832
        .long   3175724500
        .long   1051479824
        .long   3170735141
        .long   3217419163
        .long   3000918924
        .long   0
        .long   3167296049
        .long   2945355034
        .long   1065353216
        .long   975043072
        .long   3167303981
        .long   1051400329
        .long   3163053371
_2il0floatpacket_27:
        .long   0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c
_vmldTanHATab:
        .long   1841940611
        .long   1076125488
        .long   0
        .long   1127743488
        .long   0
        .long   1131937792
        .long   1413758976
        .long   1069097467
        .long   1734819840
        .long   3174229945
        .long   923219018
        .long   984130272
        .long   1413742592
        .long   1069097467
        .long   1280049152
        .long   1028033571
        .long   57701189
        .long   988383790
        .long   1734816687
        .long   1026746297
        .long   4294705152
        .long   4294967295
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   2146435072
        .long   0
        .long   1130364928
        .long   0
        .long   1015021568
        .long   0
        .long   0
        .long   2284589306
        .long   1066820852
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1441186365
        .long   1065494243
        .long   1431655765
        .long   1070945621
        .long   0
        .long   0
        .long   0
        .long   0
        .long   236289504
        .long   1064135997
        .long   286331153
        .long   1069617425
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1160476131
        .long   1062722102
        .long   463583772
        .long   1068212666
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1313038235
        .long   1066745731
        .long   1013878342
        .long   1067152618
        .long   3663426833
        .long   1065725283
        .long   3693284251
        .long   1069118808
        .long   650852232
        .long   1065882376
        .long   1996245381
        .long   1071000265
        .long   2008746170
        .long   1064664197
        .long   3055842593
        .long   1068578846
        .long   1495406348
        .long   1064652437
        .long   2269530157
        .long   1069711235
        .long   285563696
        .long   1063576465
        .long   1046897440
        .long   1067705865
        .long   233429731
        .long   1063453151
        .long   522045958
        .long   1068476590
        .long   2354785698
        .long   1069102779
        .long   1317599141
        .long   1012432133
        .long   0
        .long   1072693248
        .long   2828230105
        .long   1065606626
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1512545955
        .long   1068119047
        .long   1127048698
        .long   1067909459
        .long   2300200450
        .long   1067254767
        .long   3593250296
        .long   1070233561
        .long   3009365544
        .long   1066902117
        .long   1127373050
        .long   1071173457
        .long   3046103305
        .long   1066371299
        .long   24583402
        .long   1069723988
        .long   4082511758
        .long   1065914199
        .long   3223889699
        .long   1070020367
        .long   548927984
        .long   1065415756
        .long   558065897
        .long   1068949418
        .long   680073315
        .long   1064940726
        .long   388873200
        .long   1068944270
        .long   3763679576
        .long   1070167541
        .long   1497360404
        .long   1009710547
        .long   0
        .long   1072693248
        .long   64931152
        .long   1067729411
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2467582782
        .long   1069256389
        .long   162150096
        .long   1068946420
        .long   3702794237
        .long   1068579152
        .long   3631919291
        .long   1070936926
        .long   3456821413
        .long   1068217218
        .long   2031366438
        .long   1071495745
        .long   1596664020
        .long   1067799281
        .long   1509038701
        .long   1070601643
        .long   583171477
        .long   1067510148
        .long   3785344682
        .long   1070618476
        .long   2402036048
        .long   1067075736
        .long   3233018412
        .long   1069913186
        .long   411280568
        .long   1066710556
        .long   1065584192
        .long   1069747896
        .long   895247324
        .long   1070819848
        .long   500078909
        .long   3161288781
        .long   0
        .long   1072693248
        .long   729983843
        .long   1068994194
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1458794562
        .long   1070398550
        .long   2857777489
        .long   1070137637
        .long   1024359517
        .long   1069876531
        .long   2616040238
        .long   1071582937
        .long   1609024636
        .long   1069675088
        .long   2529240549
        .long   1071836633
        .long   1510128600
        .long   1069440113
        .long   2251697184
        .long   1071253687
        .long   1262761453
        .long   1069142850
        .long   1263091857
        .long   1071190461
        .long   3043383486
        .long   1068885191
        .long   2476932470
        .long   1070842002
        .long   3659995028
        .long   1068669200
        .long   855891755
        .long   1070696894
        .long   2583490354
        .long   1071284857
        .long   3062633575
        .long   1014008623
        .long   0
        .long   1072693248
        .long   2550940471
        .long   1069938201
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3422807297
        .long   1071640847
        .long   1151658053
        .long   1071494715
        .long   929607071
        .long   1071346340
        .long   1037049034
        .long   1072037305
        .long   2786928657
        .long   1071215282
        .long   1447406859
        .long   1072265209
        .long   3490952107
        .long   1071090851
        .long   3205232916
        .long   1071968658
        .long   1297344304
        .long   1070977120
        .long   1066110976
        .long   1071946035
        .long   3803721480
        .long   1070871082
        .long   1496754229
        .long   1071807201
        .long   2982550683
        .long   1070773243
        .long   4014441989
        .long   1071736222
        .long   419968236
        .long   1071717047
        .long   3451266538
        .long   3163444811
        .long   0
        .long   1072693248
        .long   2960267235
        .long   1070745841
        .long   0
        .long   0
        .long   0
        .long   0
        .long   724322768
        .long   1072881308
        .long   643153048
        .long   1072905816
        .long   4285079458
        .long   1072928558
        .long   3912524733
        .long   1072622983
        .long   118362272
        .long   1072952754
        .long   4107767972
        .long   1072827408
        .long   2689502883
        .long   1072976922
        .long   946523347
        .long   1072772766
        .long   573204189
        .long   1073001761
        .long   581531518
        .long   1072826391
        .long   1386236526
        .long   1073026959
        .long   3718905905
        .long   1072832823
        .long   1145558140
        .long   1073052673
        .long   513572637
        .long   1072861969
        .long   716700048
        .long   1071997368
        .long   547126769
        .long   1015523525
        .long   0
        .long   1072693248
        .long   1097907398
        .long   1071420120
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3349892442
        .long   1074290212
        .long   3913197405
        .long   1074501181
        .long   2494034522
        .long   1074739170
        .long   1264738763
        .long   1073084804
        .long   1520293906
        .long   1074899632
        .long   1958936600
        .long   1073411493
        .long   2133649635
        .long   1075052171
        .long   4270740730
        .long   1073574708
        .long   1728930189
        .long   1075224844
        .long   1303998552
        .long   1073799186
        .long   618611933
        .long   1075420255
        .long   1769828046
        .long   1073938542
        .long   2200537986
        .long   1075641421
        .long   433361110
        .long   1074105369
        .long   719595600
        .long   1072317184
        .long   294527206
        .long   3162140088
        .long   0
        .long   1073741824
        .long   3811788216
        .long   3218400550
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1704352102
        .long   1075943001
        .long   2284589306
        .long   1076258036
        .long   2211264291
        .long   1076659010
        .long   0
        .long   1073741824
        .long   1441186365
        .long   1077028579
        .long   1431655765
        .long   1074091349
        .long   876943673
        .long   1077353622
        .long   2863311531
        .long   1074440874
        .long   236289504
        .long   1077767485
        .long   286331153
        .long   1074860305
        .long   2805473311
        .long   1078115278
        .long   95443718
        .long   1075163227
        .long   1160476131
        .long   1078450742
        .long   463583772
        .long   1075552698
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   0
        .long   1073741824
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1330165971
        .long   3207850745
        .long   217536623
        .long   1059109098
        .long   3492120849
        .long   3205151475
        .long   602185705
        .long   3215678092
        .long   760422958
        .long   1056312597
        .long   555127889
        .long   1067545266
        .long   3139784124
        .long   3202470837
        .long   3690544014
        .long   3213150171
        .long   95707915
        .long   1053635428
        .long   4003114407
        .long   1064581412
        .long   2034926231
        .long   3199711161
        .long   3759536023
        .long   3210559989
        .long   3826928214
        .long   1050893819
        .long   3837960785
        .long   1061790379
        .long   1526325248
        .long   3217967566
        .long   2356426521
        .long   1025423456
        .long   0
        .long   0
        .long   457728975
        .long   1071088276
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1398462608
        .long   3207303968
        .long   26205983
        .long   1058461213
        .long   56226238
        .long   3204528612
        .long   2754706541
        .long   3215359511
        .long   2187799823
        .long   1055634437
        .long   790323742
        .long   1067402587
        .long   1372385848
        .long   3201651479
        .long   4097292716
        .long   3212856302
        .long   3348210357
        .long   1052830099
        .long   2442796466
        .long   1064337602
        .long   862608142
        .long   3198830754
        .long   170296152
        .long   3210060867
        .long   3755571428
        .long   1049933343
        .long   3614866008
        .long   1061361670
        .long   719978496
        .long   3217669096
        .long   1998842465
        .long   3174703977
        .long   0
        .long   0
        .long   3749156607
        .long   1071048258
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   3120498638
        .long   3206749304
        .long   2773578114
        .long   1058009312
        .long   2030783676
        .long   3203817873
        .long   2223654598
        .long   3215071936
        .long   2976134650
        .long   1054987244
        .long   706390066
        .long   1067217386
        .long   4258437615
        .long   3200900378
        .long   1066252975
        .long   3212391267
        .long   815777514
        .long   1051989462
        .long   3202745457
        .long   1064010682
        .long   2493556375
        .long   3198004753
        .long   1046243251
        .long   3209678971
        .long   2593078846
        .long   1049017717
        .long   2763962276
        .long   1060970161
        .long   701480960
        .long   3217377742
        .long   3205862232
        .long   3174660915
        .long   0
        .long   0
        .long   2267016812
        .long   1071015664
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   2107155798
        .long   3206166872
        .long   2642992129
        .long   1057424578
        .long   1936992811
        .long   3203204426
        .long   1485063559
        .long   3214682643
        .long   1432914553
        .long   1054319398
        .long   3996381654
        .long   1067075828
        .long   2833029256
        .long   3200223545
        .long   2866066872
        .long   3211982662
        .long   2432888737
        .long   1051234178
        .long   3669764559
        .long   1063748136
        .long   2458496952
        .long   3197170774
        .long   1948234989
        .long   3209098147
        .long   2843698787
        .long   1048163519
        .long   3398041407
        .long   1060559728
        .long   2829230080
        .long   3217092115
        .long   1034046433
        .long   3174271903
        .long   0
        .long   0
        .long   298675305
        .long   1070989821
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   437603223
        .long   3205589761
        .long   759330352
        .long   1057048511
        .long   3107463368
        .long   3202507988
        .long   3144465176
        .long   3214191500
        .long   2290961810
        .long   1053841035
        .long   1618153340
        .long   1066971547
        .long   3836869393
        .long   3199400272
        .long   584032116
        .long   3211469261
        .long   1245704358
        .long   1050626462
        .long   4247487438
        .long   1063561943
        .long   1669034927
        .long   3196274812
        .long   3844233498
        .long   3208626322
        .long   2706958524
        .long   1047411374
        .long   3857199098
        .long   1060281647
        .long   3593904128
        .long   3216590719
        .long   3267547836
        .long   3172163321
        .long   0
        .long   0
        .long   4076712227
        .long   1070970214
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   3290090340
        .long   3204793485
        .long   3685760367
        .long   1056668370
        .long   2655163949
        .long   3201674917
        .long   628750575
        .long   3213566872
        .long   680140505
        .long   1053299777
        .long   2954464709
        .long   1066900026
        .long   803201619
        .long   3198516435
        .long   1466315631
        .long   3210837162
        .long   1611220163
        .long   1049972438
        .long   2766187256
        .long   1063437894
        .long   1804579484
        .long   3195331491
        .long   3695969289
        .long   3207854418
        .long   2617238373
        .long   1046675948
        .long   3095830084
        .long   1060095334
        .long   3789570048
        .long   3216034914
        .long   23826559
        .long   3172048060
        .long   0
        .long   0
        .long   3870939386
        .long   1070956467
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1571758758
        .long   3203672535
        .long   113026373
        .long   1056416381
        .long   1913766298
        .long   3200523326
        .long   2507068734
        .long   3212502004
        .long   4000648818
        .long   1053003803
        .long   2446607349
        .long   1066858259
        .long   912662124
        .long   3197333001
        .long   1349489537
        .long   3209765608
        .long   3412972607
        .long   1049641401
        .long   1721283327
        .long   1063366855
        .long   1466691883
        .long   3194116746
        .long   3852528092
        .long   3206760861
        .long   285443293
        .long   1046158380
        .long   1758739894
        .long   1059895449
        .long   1858781184
        .long   3214984212
        .long   3447575948
        .long   1024675855
        .long   0
        .long   0
        .long   2242038011
        .long   1070948320
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   0
        .long   0
        .long   737611454
        .long   1056336527
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3594790527
        .long   1052911621
        .long   381774871
        .long   1066844524
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3303051618
        .long   1049456050
        .long   3154187623
        .long   1063343722
        .long   0
        .long   0
        .long   0
        .long   0
        .long   528061788
        .long   1045944910
        .long   2469719819
        .long   1059831159
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1431655765
        .long   1070945621
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1571758758
        .long   1056188887
        .long   113026373
        .long   1056416381
        .long   1913766298
        .long   1053039678
        .long   2507068734
        .long   1065018356
        .long   4000648818
        .long   1053003803
        .long   2446607349
        .long   1066858259
        .long   912662124
        .long   1049849353
        .long   1349489537
        .long   1062281960
        .long   3412972607
        .long   1049641401
        .long   1721283327
        .long   1063366855
        .long   1466691883
        .long   1046633098
        .long   3852528092
        .long   1059277213
        .long   285443293
        .long   1046158380
        .long   1758739894
        .long   1059895449
        .long   1858781184
        .long   1067500564
        .long   3447575948
        .long   3172159503
        .long   0
        .long   0
        .long   2242038011
        .long   1070948320
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   3290090340
        .long   1057309837
        .long   3685760367
        .long   1056668370
        .long   2655163949
        .long   1054191269
        .long   628750575
        .long   1066083224
        .long   680140505
        .long   1053299777
        .long   2954464709
        .long   1066900026
        .long   803201619
        .long   1051032787
        .long   1466315631
        .long   1063353514
        .long   1611220163
        .long   1049972438
        .long   2766187256
        .long   1063437894
        .long   1804579484
        .long   1047847843
        .long   3695969289
        .long   1060370770
        .long   2617238373
        .long   1046675948
        .long   3095830084
        .long   1060095334
        .long   3789570048
        .long   1068551266
        .long   23826559
        .long   1024564412
        .long   0
        .long   0
        .long   3870939386
        .long   1070956467
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   437603223
        .long   1058106113
        .long   759330352
        .long   1057048511
        .long   3107463368
        .long   1055024340
        .long   3144465176
        .long   1066707852
        .long   2290961810
        .long   1053841035
        .long   1618153340
        .long   1066971547
        .long   3836869393
        .long   1051916624
        .long   584032116
        .long   1063985613
        .long   1245704358
        .long   1050626462
        .long   4247487438
        .long   1063561943
        .long   1669034927
        .long   1048791164
        .long   3844233498
        .long   1061142674
        .long   2706958524
        .long   1047411374
        .long   3857199098
        .long   1060281647
        .long   3593904128
        .long   1069107071
        .long   3267547836
        .long   1024679673
        .long   0
        .long   0
        .long   4076712227
        .long   1070970214
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   2107155798
        .long   1058683224
        .long   2642992129
        .long   1057424578
        .long   1936992811
        .long   1055720778
        .long   1485063559
        .long   1067198995
        .long   1432914553
        .long   1054319398
        .long   3996381654
        .long   1067075828
        .long   2833029256
        .long   1052739897
        .long   2866066872
        .long   1064499014
        .long   2432888737
        .long   1051234178
        .long   3669764559
        .long   1063748136
        .long   2458496952
        .long   1049687126
        .long   1948234989
        .long   1061614499
        .long   2843698787
        .long   1048163519
        .long   3398041407
        .long   1060559728
        .long   2829230080
        .long   1069608467
        .long   1034046433
        .long   1026788255
        .long   0
        .long   0
        .long   298675305
        .long   1070989821
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   3120498638
        .long   1059265656
        .long   2773578114
        .long   1058009312
        .long   2030783676
        .long   1056334225
        .long   2223654598
        .long   1067588288
        .long   2976134650
        .long   1054987244
        .long   706390066
        .long   1067217386
        .long   4258437615
        .long   1053416730
        .long   1066252975
        .long   1064907619
        .long   815777514
        .long   1051989462
        .long   3202745457
        .long   1064010682
        .long   2493556375
        .long   1050521105
        .long   1046243251
        .long   1062195323
        .long   2593078846
        .long   1049017717
        .long   2763962276
        .long   1060970161
        .long   701480960
        .long   1069894094
        .long   3205862232
        .long   1027177267
        .long   0
        .long   0
        .long   2267016812
        .long   1071015664
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1398462608
        .long   1059820320
        .long   26205983
        .long   1058461213
        .long   56226238
        .long   1057044964
        .long   2754706541
        .long   1067875863
        .long   2187799823
        .long   1055634437
        .long   790323742
        .long   1067402587
        .long   1372385848
        .long   1054167831
        .long   4097292716
        .long   1065372654
        .long   3348210357
        .long   1052830099
        .long   2442796466
        .long   1064337602
        .long   862608142
        .long   1051347106
        .long   170296152
        .long   1062577219
        .long   3755571428
        .long   1049933343
        .long   3614866008
        .long   1061361670
        .long   719978496
        .long   1070185448
        .long   1998842465
        .long   1027220329
        .long   0
        .long   0
        .long   3749156607
        .long   1071048258
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1330165971
        .long   1060367097
        .long   217536623
        .long   1059109098
        .long   3492120849
        .long   1057667827
        .long   602185705
        .long   1068194444
        .long   760422958
        .long   1056312597
        .long   555127889
        .long   1067545266
        .long   3139784124
        .long   1054987189
        .long   3690544014
        .long   1065666523
        .long   95707915
        .long   1053635428
        .long   4003114407
        .long   1064581412
        .long   2034926231
        .long   1052227513
        .long   3759536023
        .long   1063076341
        .long   3826928214
        .long   1050893819
        .long   3837960785
        .long   1061790379
        .long   1526325248
        .long   1070483918
        .long   2356426521
        .long   3172907104
        .long   0
        .long   0
        .long   457728975
        .long   1071088276
        .long   0
        .long   1072693248
        .long   0
        .long   4294967288
        .long   1704352102
        .long   3223426649
        .long   2284589306
        .long   1076258036
        .long   2211264291
        .long   3224142658
        .long   0
        .long   3221225472
        .long   1441186365
        .long   1077028579
        .long   1431655765
        .long   1074091349
        .long   876943673
        .long   3224837270
        .long   2863311531
        .long   3221924522
        .long   236289504
        .long   1077767485
        .long   286331153
        .long   1074860305
        .long   2805473311
        .long   3225598926
        .long   95443718
        .long   3222646875
        .long   1160476131
        .long   1078450742
        .long   463583772
        .long   1075552698
        .long   0
        .long   3220176896
        .long   0
        .long   0
        .long   0
        .long   1073741824
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3349892442
        .long   3221773860
        .long   3913197405
        .long   1074501181
        .long   2494034522
        .long   3222222818
        .long   1264738763
        .long   3220568452
        .long   1520293906
        .long   1074899632
        .long   1958936600
        .long   1073411493
        .long   2133649635
        .long   3222535819
        .long   4270740730
        .long   3221058356
        .long   1728930189
        .long   1075224844
        .long   1303998552
        .long   1073799186
        .long   618611933
        .long   3222903903
        .long   1769828046
        .long   3221422190
        .long   2200537986
        .long   1075641421
        .long   433361110
        .long   1074105369
        .long   719595600
        .long   3219800832
        .long   294527206
        .long   1014656440
        .long   0
        .long   1073741824
        .long   3811788216
        .long   3218400550
        .long   0
        .long   0
        .long   0
        .long   0
        .long   724322768
        .long   3220364956
        .long   643153048
        .long   1072905816
        .long   4285079458
        .long   3220412206
        .long   3912524733
        .long   3220106631
        .long   118362272
        .long   1072952754
        .long   4107767972
        .long   1072827408
        .long   2689502883
        .long   3220460570
        .long   946523347
        .long   3220256414
        .long   573204189
        .long   1073001761
        .long   581531518
        .long   1072826391
        .long   1386236526
        .long   3220510607
        .long   3718905905
        .long   3220316471
        .long   1145558140
        .long   1073052673
        .long   513572637
        .long   1072861969
        .long   716700048
        .long   3219481016
        .long   547126769
        .long   3163007173
        .long   0
        .long   1072693248
        .long   1097907398
        .long   1071420120
        .long   0
        .long   0
        .long   0
        .long   0
        .long   3422807297
        .long   3219124495
        .long   1151658053
        .long   1071494715
        .long   929607071
        .long   3218829988
        .long   1037049034
        .long   3219520953
        .long   2786928657
        .long   1071215282
        .long   1447406859
        .long   1072265209
        .long   3490952107
        .long   3218574499
        .long   3205232916
        .long   3219452306
        .long   1297344304
        .long   1070977120
        .long   1066110976
        .long   1071946035
        .long   3803721480
        .long   3218354730
        .long   1496754229
        .long   3219290849
        .long   2982550683
        .long   1070773243
        .long   4014441989
        .long   1071736222
        .long   419968236
        .long   3219200695
        .long   3451266538
        .long   1015961163
        .long   0
        .long   1072693248
        .long   2960267235
        .long   1070745841
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1458794562
        .long   3217882198
        .long   2857777489
        .long   1070137637
        .long   1024359517
        .long   3217360179
        .long   2616040238
        .long   3219066585
        .long   1609024636
        .long   1069675088
        .long   2529240549
        .long   1071836633
        .long   1510128600
        .long   3216923761
        .long   2251697184
        .long   3218737335
        .long   1262761453
        .long   1069142850
        .long   1263091857
        .long   1071190461
        .long   3043383486
        .long   3216368839
        .long   2476932470
        .long   3218325650
        .long   3659995028
        .long   1068669200
        .long   855891755
        .long   1070696894
        .long   2583490354
        .long   3218768505
        .long   3062633575
        .long   3161492271
        .long   0
        .long   1072693248
        .long   2550940471
        .long   1069938201
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2467582782
        .long   3216740037
        .long   162150096
        .long   1068946420
        .long   3702794237
        .long   3216062800
        .long   3631919291
        .long   3218420574
        .long   3456821413
        .long   1068217218
        .long   2031366438
        .long   1071495745
        .long   1596664020
        .long   3215282929
        .long   1509038701
        .long   3218085291
        .long   583171477
        .long   1067510148
        .long   3785344682
        .long   1070618476
        .long   2402036048
        .long   3214559384
        .long   3233018412
        .long   3217396834
        .long   411280568
        .long   1066710556
        .long   1065584192
        .long   1069747896
        .long   895247324
        .long   3218303496
        .long   500078909
        .long   1013805133
        .long   0
        .long   1072693248
        .long   729983843
        .long   1068994194
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1512545955
        .long   3215602695
        .long   1127048698
        .long   1067909459
        .long   2300200450
        .long   3214738415
        .long   3593250296
        .long   3217717209
        .long   3009365544
        .long   1066902117
        .long   1127373050
        .long   1071173457
        .long   3046103305
        .long   3213854947
        .long   24583402
        .long   3217207636
        .long   4082511758
        .long   1065914199
        .long   3223889699
        .long   1070020367
        .long   548927984
        .long   3212899404
        .long   558065897
        .long   3216433066
        .long   680073315
        .long   1064940726
        .long   388873200
        .long   1068944270
        .long   3763679576
        .long   3217651189
        .long   1497360404
        .long   3157194195
        .long   0
        .long   1072693248
        .long   64931152
        .long   1067729411
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1313038235
        .long   3214229379
        .long   1013878342
        .long   1067152618
        .long   3663426833
        .long   3213208931
        .long   3693284251
        .long   3216602456
        .long   650852232
        .long   1065882376
        .long   1996245381
        .long   1071000265
        .long   2008746170
        .long   3212147845
        .long   3055842593
        .long   3216062494
        .long   1495406348
        .long   1064652437
        .long   2269530157
        .long   1069711235
        .long   285563696
        .long   3211060113
        .long   1046897440
        .long   3215189513
        .long   233429731
        .long   1063453151
        .long   522045958
        .long   1068476590
        .long   2354785698
        .long   3216586427
        .long   1317599141
        .long   3159915781
        .long   0
        .long   1072693248
        .long   2828230105
        .long   1065606626
        .long   0
        .long   0
        .long   0
        .long   0
_vmlReductionTab:
        .long   0
        .long   0
        .long   0
        .long   3220176896
        .long   0
        .long   1072693248
        .long   0
        .long   3220176896
        .long   0
        .long   1100480512
        .long   0
        .long   1101004800
        .long   1073741824
        .long   1072243195
        .long   407279769
        .long   1046758445
        .long   1841940611
        .long   1072979760
        .long   0
        .long   1085276160
        .long   1409286144
        .long   1072243195
        .long   301989888
        .long   1040255814
        .long   1006632960
        .long   3156637299
        .long   2207917344
        .long   979464219
        .long   0
        .long   1072243194
        .long   0
        .long   1051018307
        .long   0
        .long   3174514122
        .long   0
        .long   3153310618
        .long   3773204808
        .long   981752838
        .long   4294967295
        .long   4294967295
        .long   0
        .long   0
        .long   1610612736
        .long   1282694960
        .long   0
        .long   1256952721
        .long   536870912
        .long   1229269500
        .long   3221225472
        .long   1202544455
        .long   0
        .long   1176818551
        .long   2147483648
        .long   1148939346
        .long   536870912
        .long   1124701124
        .long   3758096384
        .long   1099498527
        .long   3758096384
        .long   1071929578
        .long   1342177280
        .long   1046982385
        .long   805306368
        .long   1020320658
        .long   2147483648
        .long   993817732
        .long   0
        .long   968598976
        .long   2684354560
        .long   942220475
        .long   2415919104
        .long   915426956
        .long   0
        .long   885849629
        .long   536870912
        .long   863855510
        .long   1610612736
        .long   836031391
        .long   4026531840
        .long   810828058
        .long   1073741824
        .long   784674491
        .long   1610612736
        .long   757207974
        .long   3489660928
        .long   732020890
        .long   0
        .long   703061904
        .long   1610612736
        .long   679713053
        .long   2147483648
        .long   652001705
        .long   1073741824
        .long   626850382
        .long   2147483648
        .long   597786158
        .long   805306368
        .long   575535400
        .long   536870912
        .long   548814833
        .long   268435456
        .long   523239288
        .long   3758096384
        .long   495550718
        .long   2952790016
        .long   469954840
        .long   1073741824
        .long   442925723
        .long   1073741824
        .long   416247094
        .long   3758096384
        .long   392128403
        .long   2147483648
        .long   364254062
        .long   3221225472
        .long   339643518
        .long   2684354560
        .long   313162111
        .long   805306368
        .long   286354345
        .long   2952790016
        .long   260811902
        .long   1610612736
        .long   234667567
        .long   3758096384
        .long   207520668
        .long   1073741824
        .long   182175017
        .long   4026531840
        .long   155380331
        .long   805306368
        .long   129417058
        .long   536870912
        .long   103691636
        .long   0
        .long   73760972
        .long   3221225472
        .long   48348958
        .long   536870912
        .long   23784188
_2il0floatpacket_26:
        .long   0x0000007c, 0x0000007c, 0x0000007c, 0x0000007c
        .data
#endif
