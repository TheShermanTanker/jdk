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
        .globl __jsvml_exp1_ha_e9

__jsvml_exp1_ha_e9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 184
        vmovapd   xmm3, xmm0
        mov       QWORD PTR [168+rsp], r13
        mov       eax, 2147483647
        vmulsd    xmm1, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        mov       edx, 1082532650
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        vmovd     xmm5, eax
        vmovsd    xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        lea       r8, QWORD PTR [rip+__ImageBase]
        vaddsd    xmm1, xmm1, xmm2
        vsubsd    xmm4, xmm1, xmm2
        vpshufd   xmm2, xmm3, 85
        vpand     xmm2, xmm2, xmm5
        vmovd     xmm5, edx
        vpcmpgtd  xmm2, xmm2, xmm5
        lea       r13, QWORD PTR [95+rsp]
        vmovmskps eax, xmm2
        and       r13, -64
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1600]
        vpand     xmm5, xmm1, xmm2
        vpandn    xmm1, xmm2, xmm1
        vpshufd   xmm5, xmm5, 0
        vpslld    xmm5, xmm5, 4
        vmovd     ecx, xmm5
        vmulsd    xmm5, xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vmulsd    xmm4, xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vsubsd    xmm5, xmm3, xmm5
        movsxd    rcx, ecx
        vsubsd    xmm5, xmm5, xmm4
        vmulsd    xmm0, xmm0, xmm5
        mov       QWORD PTR [176+rsp], r13
        vaddsd    xmm4, xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulsd    xmm0, xmm4, xmm5
        vmulsd    xmm4, xmm5, xmm5
        vaddsd    xmm0, xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vmulsd    xmm0, xmm0, xmm5
        vaddsd    xmm0, xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        vmulsd    xmm4, xmm0, xmm4
        vaddsd    xmm5, xmm4, xmm5
        vmulsd    xmm0, xmm5, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+r8+rcx]
        vaddsd    xmm4, xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+8+r8+rcx]
        vpsllq    xmm0, xmm1, 46
        vaddsd    xmm5, xmm4, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+r8+rcx]
        vpaddq    xmm0, xmm5, xmm0
        test      al, 1
        jne       .L_B1_3

.L_B1_2:

        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 184
        ret

.L_B1_3:

        vcmpgtsd  xmm1, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmpltsd  xmm2, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd xmm0, xmm0, XMMWORD PTR [rip+_2il0floatpacket_33], xmm1
        vorpd     xmm4, xmm1, xmm2
        vmovmskpd edx, xmm4
        vandnpd   xmm0, xmm2, xmm0
        not       edx
        and       edx, eax
        and       edx, 1
        je        .L_B1_2

.L_B1_4:

        vmovsd    QWORD PTR [r13], xmm3
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B1_7

.L_B1_5:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B1_2

.L_B1_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B1_5
        .align    16, 0x90

.L_B1_8:

        .section .drectve
        .ascii " -export \"__jsvml_exp1_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp1_ha_e9_B1_B7:
        .long   268033
        .long   1430551
        .long   1507595

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_8
        .rva    _unwind___jsvml_exp1_ha_e9_B1_B7

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_exp8_ha_z0

__jsvml_exp8_ha_z0:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L4:

        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+256]
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+320]
        vmovups   zmm2, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+384]
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+448]
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+576]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+640]
        vfmadd213pd zmm4, zmm0, zmm1 {rz-sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+704]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+768]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+832]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+896]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+128]
        vmovups   zmm29, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512]
        vsubpd    zmm31, zmm4, zmm1 {rn-sae}
        vpermt2pd zmm28, zmm4, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+192]
        vpermt2pd zmm29, zmm4, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+64]
        vfnmadd231pd zmm0, zmm2, zmm31 {rn-sae}
        vfnmadd231pd zmm0, zmm3, zmm31 {rn-sae}
        vandpd    zmm30, zmm0, ZMMWORD PTR [rip+__jsvml_dexp_ha_data_internal_avx512+512]
        vmulpd    zmm25, zmm30, zmm30 {rn-sae}
        vfmadd231pd zmm27, zmm5, zmm30 {rn-sae}
        vfmadd231pd zmm24, zmm22, zmm30 {rn-sae}
        vfmadd231pd zmm26, zmm23, zmm30 {rn-sae}
        vfmadd213pd zmm27, zmm25, zmm24 {rn-sae}
        vfmadd213pd zmm27, zmm25, zmm26 {rn-sae}
        vfmadd213pd zmm30, zmm27, zmm28 {rn-sae}
        vfmadd213pd zmm30, zmm29, zmm29 {rn-sae}
        vscalefpd zmm0, zmm30, zmm31 {rn-sae}
        ret
        .align    16, 0x90

.L_B2_2:

        .section .drectve
        .ascii " -export \"__jsvml_exp8_ha_z0\""

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_exp1_ha_l9

__jsvml_exp1_ha_l9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L5:

        sub       rsp, 200
        vmovapd   xmm4, xmm0
        vmovups   XMMWORD PTR [176+rsp], xmm8
        vmovapd   xmm1, xmm4
        mov       QWORD PTR [168+rsp], r13
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovsd    xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        lea       r13, QWORD PTR [95+rsp]
        vfmadd132sd xmm1, xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        and       r13, -64
        vmovsd    xmm8, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1728]
        vmovsd    xmm5, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        mov       QWORD PTR [192+rsp], r13
        vsubsd    xmm3, xmm1, xmm2
        vandpd    xmm1, xmm4, xmm8
        vmovapd   xmm8, xmm3
        vfnmadd132sd xmm8, xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vcmpnlesd xmm2, xmm1, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1792]
        vaddsd    xmm1, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1152]
        vfnmadd132sd xmm3, xmm8, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vmovmskpd ecx, xmm2
        vmovq     xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1664]
        vpand     xmm0, xmm1, xmm2
        vfmadd213sd xmm5, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulsd    xmm8, xmm3, xmm3
        vmovd     eax, xmm0
        vfmadd213sd xmm5, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vfmadd213sd xmm5, xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        movsxd    rax, eax
        vfmadd213sd xmm5, xmm8, xmm3
        vpandn    xmm3, xmm2, xmm1
        vmovddup  xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+8+rdx+rax]
        vfmadd132sd xmm5, xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rdx+rax]
        vpsllq    xmm0, xmm3, 42
        vaddsd    xmm5, xmm5, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rdx+rax]
        vpaddq    xmm0, xmm5, xmm0
        test      cl, 1
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm8, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 200
        ret

.L_B3_3:

        vcmpgtsd  xmm1, xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmpltsd  xmm2, xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd xmm0, xmm0, XMMWORD PTR [rip+_2il0floatpacket_33], xmm1
        vorpd     xmm3, xmm1, xmm2
        vmovmskpd eax, xmm3
        vandnpd   xmm0, xmm2, xmm0
        andn      eax, eax, ecx
        and       eax, 1
        je        .L_B3_2

.L_B3_4:

        vmovsd    QWORD PTR [r13], xmm4
        vmovsd    QWORD PTR [64+r13], xmm0
        jne       .L_B3_7

.L_B3_5:

        vmovsd    xmm0, QWORD PTR [64+r13]
        jmp       .L_B3_2

.L_B3_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B3_5
        .align    16, 0x90

.L_B3_8:

        .section .drectve
        .ascii " -export \"__jsvml_exp1_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp1_ha_l9_B1_B7:
        .long   402433
        .long   1430564
        .long   755736
        .long   1638667

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_8
        .rva    _unwind___jsvml_exp1_ha_l9_B1_B7

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_exp2_ha_ex

__jsvml_exp2_ha_ex:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L10:

        sub       rsp, 280
        movaps    xmm4, xmm0
        movups    XMMWORD PTR [224+rsp], xmm14
        lea       rcx, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [240+rsp], xmm13
        movups    XMMWORD PTR [192+rsp], xmm8
        movups    XMMWORD PTR [208+rsp], xmm7
        mov       QWORD PTR [256+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movups    xmm13, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        and       r13, -64
        mulpd     xmm13, xmm4
        movups    xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        addpd     xmm13, xmm3
        movaps    xmm14, xmm13
        subpd     xmm14, xmm3
        movq      xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1856]
        pshufd    xmm1, xmm4, 221
        movdqu    xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1600]
        pand      xmm1, xmm2
        movdqa    xmm2, xmm3
        pandn     xmm3, xmm13
        movq      xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1920]
        pand      xmm2, xmm13
        pcmpgtd   xmm1, xmm0
        psllq     xmm3, 46
        pshufd    xmm0, xmm2, 136
        pslld     xmm0, 4
        movmskps  r8d, xmm1
        pshufd    xmm1, xmm0, 1
        movups    xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        movd      eax, xmm0
        movd      edx, xmm1
        movups    xmm7, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        movups    xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        mulpd     xmm5, xmm14
        mulpd     xmm7, xmm14
        movsxd    rax, eax
        movsxd    rdx, edx
        mov       QWORD PTR [264+rsp], r13
        movups    xmm2, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rax]
        movups    xmm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rdx]
        movaps    xmm0, xmm2
        unpcklpd  xmm0, xmm1
        unpckhpd  xmm2, xmm1
        movaps    xmm1, xmm4
        subpd     xmm1, xmm5
        subpd     xmm1, xmm7
        mulpd     xmm8, xmm1
        addpd     xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        mulpd     xmm8, xmm1
        addpd     xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        mulpd     xmm8, xmm1
        movaps    xmm5, xmm1
        mulpd     xmm5, xmm1
        addpd     xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        mulpd     xmm5, xmm8
        addpd     xmm1, xmm5
        mulpd     xmm1, xmm0
        addpd     xmm2, xmm1
        addpd     xmm0, xmm2
        paddq     xmm0, xmm3
        test      r8d, 3
        jne       .L_B4_3

.L_B4_2:

        movups    xmm7, XMMWORD PTR [208+rsp]
        movups    xmm8, XMMWORD PTR [192+rsp]
        movups    xmm13, XMMWORD PTR [240+rsp]
        movups    xmm14, XMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [256+rsp]
        add       rsp, 280
        ret

.L_B4_3:

        movups    xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        movaps    xmm2, xmm4
        cmpltpd   xmm3, xmm4
        cmpltpd   xmm2, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        movaps    xmm1, xmm3
        andnps    xmm1, xmm0
        movups    xmm0, XMMWORD PTR [rip+_2il0floatpacket_33]
        andps     xmm0, xmm3
        orps      xmm3, xmm2
        movmskpd  eax, xmm3
        orps      xmm1, xmm0
        movaps    xmm0, xmm2
        andnps    xmm0, xmm1
        not       eax
        and       eax, r8d
        and       eax, 3
        je        .L_B4_2

.L_B4_4:

        movups    XMMWORD PTR [r13], xmm4
        movups    XMMWORD PTR [64+r13], xmm0
        je        .L_B4_2

.L_B4_7:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B4_8:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B4_11

.L_B4_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B4_8

.L_B4_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B4_9
        .align    16, 0x90

.L_B4_12:

        .section .drectve
        .ascii " -export \"__jsvml_exp2_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_ex_B1_B4:
        .long   802817
        .long   2151488
        .long   882744
        .long   821296
        .long   1038375
        .long   976919
        .long   2294027

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_exp2_ha_ex_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_ex_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B4_1
        .rva    .L_B4_7
        .rva    _unwind___jsvml_exp2_ha_ex_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_7
        .rva    .L_B4_12
        .rva    _unwind___jsvml_exp2_ha_ex_B7_B11

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_exp4_ha_e9

__jsvml_exp4_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L25:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [464+rsp], ymm9
        vmovups   YMMWORD PTR [496+rsp], ymm7
        vmovups   YMMWORD PTR [432+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [335+rsp]
        vmovapd   ymm5, ymm0
        and       r13, -64
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        vmulpd    ymm2, ymm5, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        vaddpd    ymm3, ymm4, ymm2
        vsubpd    ymm0, ymm3, ymm4
        mov       QWORD PTR [536+rsp], r13
        vextractf128 xmm6, ymm5, 1
        vshufps   xmm2, xmm5, xmm6, 221
        vandps    xmm4, xmm2, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1856]
        vpcmpgtd  xmm1, xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1920]
        vmovupd   xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1600]
        vmovmskps edx, xmm1
        vandps    xmm9, xmm3, xmm4
        vextractf128 xmm2, ymm3, 1
        vpandn    xmm3, xmm4, xmm3
        vandps    xmm7, xmm2, xmm4
        vpandn    xmm2, xmm4, xmm2
        vshufps   xmm6, xmm9, xmm7, 136
        vpsllq    xmm4, xmm2, 46
        vpslld    xmm9, xmm6, 4
        vmovd     ecx, xmm9
        vpextrd   r8d, xmm9, 1
        movsxd    rcx, ecx
        movsxd    r8, r8d
        vpextrd   r9d, xmm9, 2
        vpextrd   r10d, xmm9, 3
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm7, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r8]
        vinsertf128 ymm9, ymm7, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r9], 1
        vinsertf128 ymm6, ymm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r10], 1
        vunpcklpd ymm1, ymm9, ymm6
        vunpckhpd ymm6, ymm9, ymm6
        vmulpd    ymm9, ymm0, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vmulpd    ymm0, ymm0, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vsubpd    ymm9, ymm5, ymm9
        vsubpd    ymm9, ymm9, ymm0
        vmulpd    ymm7, ymm9, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        vaddpd    ymm0, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulpd    ymm7, ymm9, ymm0
        vaddpd    ymm0, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vmulpd    ymm7, ymm9, ymm9
        vmulpd    ymm0, ymm9, ymm0
        vaddpd    ymm0, ymm0, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        vmulpd    ymm7, ymm7, ymm0
        vaddpd    ymm9, ymm9, ymm7
        vmulpd    ymm0, ymm1, ymm9
        vaddpd    ymm6, ymm6, ymm0
        vpsllq    xmm0, xmm3, 46
        vaddpd    ymm1, ymm1, ymm6
        vextractf128 xmm6, ymm1, 1
        vpaddq    xmm3, xmm1, xmm0
        vpaddq    xmm6, xmm6, xmm4
        vinsertf128 ymm0, ymm3, xmm6, 1
        test      edx, edx
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [432+rsp]
        vmovups   ymm7, YMMWORD PTR [496+rsp]
        vmovups   ymm9, YMMWORD PTR [464+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_3:

        vcmpgt_oqpd ymm1, ymm5, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmplt_oqpd ymm2, ymm5, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd ymm0, ymm0, YMMWORD PTR [rip+_2il0floatpacket_34], ymm1
        vorpd     ymm3, ymm1, ymm2
        vandnpd   ymm0, ymm2, ymm0
        vextractf128 xmm4, ymm3, 1
        vshufps   xmm6, xmm3, xmm4, 221
        vmovmskps ecx, xmm6
        not       ecx
        and       ecx, edx
        je        .L_B5_2

.L_B5_4:

        vmovupd   YMMWORD PTR [r13], ymm5
        vmovupd   YMMWORD PTR [64+r13], ymm0
        je        .L_B5_2

.L_B5_7:

        xor       eax, eax
        vmovups   YMMWORD PTR [224+rsp], ymm8
        vmovups   YMMWORD PTR [192+rsp], ymm10
        vmovups   YMMWORD PTR [160+rsp], ymm11
        vmovups   YMMWORD PTR [128+rsp], ymm12
        vmovups   YMMWORD PTR [96+rsp], ymm13
        vmovups   YMMWORD PTR [64+rsp], ymm14
        vmovups   YMMWORD PTR [32+rsp], ymm15
        mov       QWORD PTR [264+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [256+rsp], rsi
        mov       esi, ecx

.L_B5_8:

        bt        esi, ebx
        jc        .L_B5_11

.L_B5_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B5_8

.L_B5_10:

        vmovups   ymm8, YMMWORD PTR [224+rsp]
        vmovups   ymm10, YMMWORD PTR [192+rsp]
        vmovups   ymm11, YMMWORD PTR [160+rsp]
        vmovups   ymm12, YMMWORD PTR [128+rsp]
        vmovups   ymm13, YMMWORD PTR [96+rsp]
        vmovups   ymm14, YMMWORD PTR [64+rsp]
        vmovups   ymm15, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [264+rsp]
        mov       rsi, QWORD PTR [256+rsp]
        jmp       .L_B5_2

.L_B5_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B5_9
        .align    16, 0x90

.L_B5_12:

        .section .drectve
        .ascii " -export \"__jsvml_exp4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp4_ha_e9_B1_B4:
        .long   668929
        .long   4379701
        .long   1796141
        .long   2062372
        .long   1939483
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_exp4_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp4_ha_e9_B7_B11:
        .long   1198625
        .long   2122826
        .long   2176064
        .long   194616
        .long   321586
        .long   448556
        .long   575526
        .long   702493
        .long   829460
        .long   952331
        .rva    .L_B5_1
        .rva    .L_B5_7
        .rva    _unwind___jsvml_exp4_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_7
        .rva    .L_B5_12
        .rva    _unwind___jsvml_exp4_ha_e9_B7_B11

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_exp2_ha_l9

__jsvml_exp2_ha_l9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L52:

        sub       rsp, 264
        vmovapd   xmm5, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm10
        lea       rcx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm9
        vmovups   XMMWORD PTR [224+rsp], xmm8
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovupd   xmm2, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        and       r13, -64
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        vfmadd213pd xmm2, xmm5, xmm3
        vmovupd   xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vmovupd   xmm9, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        vandpd    xmm1, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1728]
        vcmpnlepd xmm10, xmm1, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1792]
        vsubpd    xmm4, xmm2, xmm3
        vmovmskpd r8d, xmm10
        vmovdqu   xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1664]
        vfnmadd213pd xmm8, xmm4, xmm5
        vaddpd    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1152]
        vfnmadd132pd xmm4, xmm8, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vpand     xmm0, xmm2, xmm3
        vmovd     eax, xmm0
        vfmadd213pd xmm9, xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulpd    xmm8, xmm4, xmm4
        vfmadd213pd xmm9, xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vfmadd213pd xmm9, xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        vpextrd   edx, xmm0, 2
        movsxd    rax, eax
        movsxd    rdx, edx
        vfmadd213pd xmm9, xmm8, xmm4
        vpandn    xmm4, xmm3, xmm2
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rax]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rdx]
        vunpcklpd xmm0, xmm1, xmm10
        vunpckhpd xmm1, xmm1, xmm10
        vfmadd213pd xmm9, xmm0, xmm1
        vpsllq    xmm1, xmm4, 42
        vaddpd    xmm0, xmm0, xmm9
        mov       QWORD PTR [248+rsp], r13
        vpaddq    xmm0, xmm0, xmm1
        test      r8d, r8d
        jne       .L_B6_3

.L_B6_2:

        vmovups   xmm8, XMMWORD PTR [224+rsp]
        vmovups   xmm9, XMMWORD PTR [208+rsp]
        vmovups   xmm10, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B6_3:

        vcmpgtpd  xmm1, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmpltpd  xmm2, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd xmm0, xmm0, XMMWORD PTR [rip+_2il0floatpacket_33], xmm1
        vorpd     xmm3, xmm1, xmm2
        vmovmskpd eax, xmm3
        vandnpd   xmm0, xmm2, xmm0
        andn      edx, eax, r8d
        je        .L_B6_2

.L_B6_4:

        vmovupd   XMMWORD PTR [r13], xmm5
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B6_2

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
        jmp       .L_B6_2

.L_B6_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B6_9
        .align    16, 0x90

.L_B6_12:

        .section .drectve
        .ascii " -export \"__jsvml_exp2_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_l9_B1_B4:
        .long   669953
        .long   2020409
        .long   952369
        .long   890920
        .long   829464
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_exp2_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_l9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_7
        .rva    _unwind___jsvml_exp2_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_7
        .rva    .L_B6_12
        .rva    _unwind___jsvml_exp2_ha_l9_B7_B11

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_exp1_ha_ex

__jsvml_exp1_ha_ex:


.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L65:

        sub       rsp, 200
        movaps    xmm5, xmm0
        movups    XMMWORD PTR [176+rsp], xmm13
        movaps    xmm3, xmm5
        mov       QWORD PTR [168+rsp], r13
        mov       eax, 2147483647
        mulsd     xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        mov       edx, 1082532650
        movsd     xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        movd      xmm1, eax
        movd      xmm13, edx
        lea       r8, QWORD PTR [rip+__ImageBase]
        movsd     xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        lea       r13, QWORD PTR [95+rsp]
        and       r13, -64
        addsd     xmm3, xmm2
        movaps    xmm4, xmm3
        mov       QWORD PTR [192+rsp], r13
        subsd     xmm4, xmm2
        pshufd    xmm2, xmm5, 85
        pand      xmm2, xmm1
        pcmpgtd   xmm2, xmm13
        movmskps  eax, xmm2
        movq      xmm2, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1600]
        movdqa    xmm1, xmm2
        pandn     xmm2, xmm3
        pand      xmm1, xmm3
        psllq     xmm2, 46
        pshufd    xmm13, xmm1, 0
        movaps    xmm1, xmm5
        pslld     xmm13, 4
        movd      ecx, xmm13
        movaps    xmm13, xmm4
        mulsd     xmm13, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        mulsd     xmm4, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        subsd     xmm1, xmm13
        movsxd    rcx, ecx
        subsd     xmm1, xmm4
        mulsd     xmm0, xmm1
        movaps    xmm4, xmm1
        mulsd     xmm4, xmm1
        addsd     xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        mulsd     xmm0, xmm1
        addsd     xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        mulsd     xmm0, xmm1
        addsd     xmm0, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        mulsd     xmm0, xmm4
        addsd     xmm0, xmm1
        mulsd     xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+r8+rcx]
        addsd     xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+8+r8+rcx]
        addsd     xmm0, QWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+r8+rcx]
        paddq     xmm0, xmm2
        test      al, 1
        jne       .L_B7_3

.L_B7_2:

        movups    xmm13, XMMWORD PTR [176+rsp]
        mov       r13, QWORD PTR [168+rsp]
        add       rsp, 200
        ret

.L_B7_3:

        movsd     xmm1, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        movaps    xmm3, xmm5
        movaps    xmm4, xmm5
        cmpltsd   xmm1, xmm5
        cmpltsd   xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        movsd     xmm4, xmm1
        movaps    xmm2, xmm4
        andnps    xmm2, xmm0
        movups    xmm0, XMMWORD PTR [rip+_2il0floatpacket_33]
        andps     xmm0, xmm4
        orps      xmm4, xmm3
        movmskpd  edx, xmm4
        orps      xmm2, xmm0
        movaps    xmm0, xmm3
        andnps    xmm0, xmm2
        not       edx
        and       edx, eax
        and       edx, 1
        je        .L_B7_2

.L_B7_4:

        movsd     QWORD PTR [r13], xmm5
        movsd     QWORD PTR [64+r13], xmm0
        jne       .L_B7_7

.L_B7_5:

        movsd     xmm0, QWORD PTR [64+r13]
        jmp       .L_B7_2

.L_B7_7:

        lea       rcx, QWORD PTR [r13]
        lea       rdx, QWORD PTR [64+r13]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B7_5
        .align    16, 0x90

.L_B7_8:

        .section .drectve
        .ascii " -export \"__jsvml_exp1_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp1_ha_ex_B1_B7:
        .long   401921
        .long   1430562
        .long   776215
        .long   1638667

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_8
        .rva    _unwind___jsvml_exp1_ha_ex_B1_B7

        .data

        .text

TXTST7:

        .text

        .align    16, 0x90
        .globl __jsvml_exp4_ha_l9

__jsvml_exp4_ha_l9:


.L_B8_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L70:

        sub       rsp, 552
        lea       rax, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [368+rsp], ymm15
        vmovups   YMMWORD PTR [336+rsp], ymm10
        vmovups   YMMWORD PTR [400+rsp], ymm9
        vmovups   YMMWORD PTR [432+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [239+rsp]
        vmovupd   ymm4, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        and       r13, -64
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        vmovupd   ymm9, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vmovupd   ymm10, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        vmovdqa   ymm8, ymm0
        vfmadd213pd ymm4, ymm8, ymm5
        vsubpd    ymm7, ymm4, ymm5
        vmovupd   ymm5, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1664]
        vfnmadd213pd ymm9, ymm7, ymm8
        vaddpd    ymm4, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1152]
        vfnmadd132pd ymm7, ymm9, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vfmadd213pd ymm10, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulpd    ymm9, ymm7, ymm7
        vfmadd213pd ymm10, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vandps    ymm15, ymm4, ymm5
        vfmadd213pd ymm10, ymm7, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        vpandn    ymm4, ymm5, ymm4
        vfmadd213pd ymm10, ymm9, ymm7
        vpsllq    ymm5, ymm4, 42
        vandpd    ymm2, ymm8, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1728]
        vcmpnle_uqpd ymm1, ymm2, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1792]
        vmovmskpd edx, ymm1
        mov       QWORD PTR [536+rsp], r13
        test      edx, edx
        vextracti128 xmm0, ymm15, 1
        vmovd     ecx, xmm15
        vmovd     r9d, xmm0
        vpextrd   r8d, xmm15, 2
        vpextrd   r10d, xmm0, 2
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+rcx]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r8]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r9]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rax+r10]
        vunpcklpd xmm0, xmm6, xmm3
        vunpckhpd xmm3, xmm6, xmm3
        vunpcklpd xmm15, xmm2, xmm1
        vunpckhpd xmm1, xmm2, xmm1
        vinsertf128 ymm0, ymm0, xmm15, 1
        vinsertf128 ymm2, ymm3, xmm1, 1
        vfmadd213pd ymm10, ymm0, ymm2
        vaddpd    ymm0, ymm0, ymm10
        vpaddq    ymm0, ymm0, ymm5
        jne       .L_B8_3

.L_B8_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [432+rsp]
        vmovups   ymm9, YMMWORD PTR [400+rsp]
        vmovups   ymm10, YMMWORD PTR [336+rsp]
        vmovups   ymm15, YMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B8_3:

        vcmpgt_oqpd ymm1, ymm8, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmplt_oqpd ymm2, ymm8, YMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd ymm0, ymm0, YMMWORD PTR [rip+_2il0floatpacket_34], ymm1
        vorpd     ymm3, ymm1, ymm2
        vmovmskpd eax, ymm3
        vandnpd   ymm0, ymm2, ymm0
        andn      edx, eax, edx
        je        .L_B8_2

.L_B8_4:

        vmovupd   YMMWORD PTR [r13], ymm8
        vmovupd   YMMWORD PTR [64+r13], ymm0
        je        .L_B8_2

.L_B8_7:

        xor       eax, eax
        vmovups   YMMWORD PTR [128+rsp], ymm11
        vmovups   YMMWORD PTR [96+rsp], ymm12
        vmovups   YMMWORD PTR [64+rsp], ymm13
        vmovups   YMMWORD PTR [32+rsp], ymm14
        mov       QWORD PTR [168+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [160+rsp], rsi
        mov       esi, edx

.L_B8_8:

        bt        esi, ebx
        jc        .L_B8_11

.L_B8_9:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B8_8

.L_B8_10:

        vmovups   ymm11, YMMWORD PTR [128+rsp]
        vmovups   ymm12, YMMWORD PTR [96+rsp]
        vmovups   ymm13, YMMWORD PTR [64+rsp]
        vmovups   ymm14, YMMWORD PTR [32+rsp]
        vmovupd   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [168+rsp]
        mov       rsi, QWORD PTR [160+rsp]
        jmp       .L_B8_2

.L_B8_11:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B8_9
        .align    16, 0x90

.L_B8_12:

        .section .drectve
        .ascii " -export \"__jsvml_exp4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp4_ha_l9_B1_B4:
        .long   1069057
        .long   4379728
        .long   2058312
        .long   1931327
        .long   1804342
        .long   1677357
        .long   1419300
        .long   1570843
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_exp4_ha_l9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp4_ha_l9_B7_B11:
        .long   798497
        .long   1336367
        .long   1389605
        .long   190493
        .long   317463
        .long   444433
        .long   571403
        .rva    .L_B8_1
        .rva    .L_B8_7
        .rva    _unwind___jsvml_exp4_ha_l9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B8_7
        .rva    .L_B8_12
        .rva    _unwind___jsvml_exp4_ha_l9_B7_B11

        .data

        .text

TXTST8:

        .text

        .align    16, 0x90
        .globl __jsvml_exp2_ha_e9

__jsvml_exp2_ha_e9:


.L_B9_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L97:

        sub       rsp, 248
        lea       rcx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm7
        vmovapd   xmm7, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm6
        mov       QWORD PTR [224+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmulpd    xmm4, xmm7, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1024]
        vmovupd   xmm3, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1088]
        and       r13, -64
        vaddpd    xmm6, xmm3, xmm4
        vmovq     xmm1, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1856]
        vpshufd   xmm2, xmm7, 221
        vsubpd    xmm5, xmm6, xmm3
        vmovq     xmm3, QWORD PTR [rip+__jsvml_dexp_ha_data_internal+1920]
        vpand     xmm4, xmm2, xmm1
        vpcmpgtd  xmm2, xmm4, xmm3
        vmovdqu   xmm4, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1600]
        vpand     xmm1, xmm6, xmm4
        vpandn    xmm4, xmm4, xmm6
        vpshufd   xmm0, xmm1, 136
        vpsllq    xmm6, xmm4, 46
        vpslld    xmm3, xmm0, 4
        vmulpd    xmm0, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1216]
        vmovd     eax, xmm3
        vmovmskps r8d, xmm2
        vmulpd    xmm5, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1280]
        vpextrd   edx, xmm3, 1
        movsxd    rax, eax
        movsxd    rdx, edx
        mov       QWORD PTR [232+rsp], r13
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rax]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_dexp_ha_data_internal"@imgrel+rcx+rdx]
        vunpcklpd xmm3, xmm2, xmm1
        vunpckhpd xmm2, xmm2, xmm1
        vsubpd    xmm1, xmm7, xmm0
        vsubpd    xmm1, xmm1, xmm5
        vmulpd    xmm0, xmm1, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1536]
        vaddpd    xmm5, xmm0, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1472]
        vmulpd    xmm0, xmm1, xmm5
        vaddpd    xmm5, xmm0, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1408]
        vmulpd    xmm0, xmm1, xmm1
        vmulpd    xmm5, xmm1, xmm5
        vaddpd    xmm5, xmm5, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1344]
        vmulpd    xmm0, xmm0, xmm5
        vaddpd    xmm1, xmm1, xmm0
        vmulpd    xmm0, xmm3, xmm1
        vaddpd    xmm2, xmm2, xmm0
        vaddpd    xmm3, xmm3, xmm2
        vpaddq    xmm0, xmm3, xmm6
        test      r8d, 3
        jne       .L_B9_3

.L_B9_2:

        vmovups   xmm6, XMMWORD PTR [208+rsp]
        vmovups   xmm7, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [224+rsp]
        add       rsp, 248
        ret

.L_B9_3:

        vcmpgtpd  xmm1, xmm7, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+1984]
        vcmpltpd  xmm2, xmm7, XMMWORD PTR [rip+__jsvml_dexp_ha_data_internal+2048]
        vblendvpd xmm0, xmm0, XMMWORD PTR [rip+_2il0floatpacket_33], xmm1
        vorpd     xmm3, xmm1, xmm2
        vmovmskpd edx, xmm3
        vandnpd   xmm0, xmm2, xmm0
        not       edx
        and       edx, r8d
        and       edx, 3
        je        .L_B9_2

.L_B9_4:

        vmovupd   XMMWORD PTR [r13], xmm7
        vmovupd   XMMWORD PTR [64+r13], xmm0
        je        .L_B9_2

.L_B9_7:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, edx

.L_B9_8:

        bt        esi, ebx
        jc        .L_B9_11

.L_B9_9:

        inc       ebx
        cmp       ebx, 2
        jl        .L_B9_8

.L_B9_10:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovupd   xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B9_2

.L_B9_11:

        lea       rcx, QWORD PTR [r13+rbx*8]
        lea       rdx, QWORD PTR [64+r13+rbx*8]

        call      __jsvml_dexp_ha_cout_rare_internal
        jmp       .L_B9_9
        .align    16, 0x90

.L_B9_12:

        .section .drectve
        .ascii " -export \"__jsvml_exp2_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_e9_B1_B4:
        .long   536577
        .long   1889328
        .long   878632
        .long   817179
        .long   2031883

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_1
        .rva    .L_B9_7
        .rva    _unwind___jsvml_exp2_ha_e9_B1_B4

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_exp2_ha_e9_B7_B11:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B9_1
        .rva    .L_B9_7
        .rva    _unwind___jsvml_exp2_ha_e9_B1_B4

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B9_7
        .rva    .L_B9_12
        .rva    _unwind___jsvml_exp2_ha_e9_B7_B11

        .data

        .text

TXTST9:

        .text

        .align    16, 0x90
        .globl __jsvml_dexp_ha_cout_rare_internal

__jsvml_dexp_ha_cout_rare_internal:

.L_B10_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L108:

        sub       rsp, 104
        mov       r9, rdx
        movzx     edx, WORD PTR [6+rcx]
        xor       eax, eax
        and       edx, 32752
        shr       edx, 4
        movsd     xmm1, QWORD PTR [rcx]
        movsd     QWORD PTR [96+rsp], xmm1
        cmp       edx, 2047
        je        .L_B10_17

.L_B10_2:

        cmp       edx, 970
        jle       .L_B10_15

.L_B10_3:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1080]
        comisd    xmm0, xmm1
        jb        .L_B10_14

.L_B10_4:

        comisd    xmm1, QWORD PTR [rip+_imldExpHATab+1096]
        jb        .L_B10_13

.L_B10_5:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1024]
        lea       r11, QWORD PTR [rip+__ImageBase]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [80+rsp], xmm0
        movsd     xmm2, QWORD PTR [80+rsp]
        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1072]
        mov       rcx, QWORD PTR [rip+_imldExpHATab+1136]
        mov       QWORD PTR [96+rsp], rcx
        addsd     xmm2, QWORD PTR [rip+_imldExpHATab+1032]
        movsd     QWORD PTR [88+rsp], xmm2
        movaps    xmm2, xmm1
        movsd     xmm3, QWORD PTR [88+rsp]
        mov       edx, DWORD PTR [88+rsp]
        mov       r8d, edx
        and       edx, 63
        subsd     xmm3, QWORD PTR [rip+_imldExpHATab+1032]
        movsd     QWORD PTR [80+rsp], xmm3
        lea       r10d, DWORD PTR [rdx+rdx]
        movsd     xmm4, QWORD PTR [80+rsp]
        lea       edx, DWORD PTR [1+rdx+rdx]
        mulsd     xmm4, QWORD PTR [rip+_imldExpHATab+1104]
        movsd     xmm5, QWORD PTR [80+rsp]
        subsd     xmm2, xmm4
        mulsd     xmm5, QWORD PTR [rip+_imldExpHATab+1112]
        shr       r8d, 6
        subsd     xmm2, xmm5
        comisd    xmm1, QWORD PTR [rip+_imldExpHATab+1088]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1064]
        mulsd     xmm0, xmm2
        lea       ecx, DWORD PTR [1023+r8]
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1056]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1048]
        mulsd     xmm0, xmm2
        addsd     xmm0, QWORD PTR [rip+_imldExpHATab+1040]
        mulsd     xmm0, xmm2
        mulsd     xmm0, xmm2
        addsd     xmm0, xmm2
        movsd     xmm2, QWORD PTR ["_imldExpHATab"@imgrel+r11+r10*8]
        addsd     xmm0, QWORD PTR ["_imldExpHATab"@imgrel+r11+rdx*8]
        mulsd     xmm0, xmm2
        jb        .L_B10_9

.L_B10_6:

        and       ecx, 2047
        addsd     xmm0, xmm2
        cmp       ecx, 2046
        ja        .L_B10_8

.L_B10_7:

        mov       rdx, QWORD PTR [rip+_imldExpHATab+1136]
        shr       rdx, 48
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [102+rsp], dx
        movsd     xmm1, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm1
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_8:

        dec       ecx
        and       ecx, 2047
        movzx     edx, WORD PTR [102+rsp]
        shl       ecx, 4
        and       edx, -32753
        or        edx, ecx
        mov       WORD PTR [102+rsp], dx
        movsd     xmm1, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm1
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1152]
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_9:

        add       r8d, 1083
        and       r8d, 2047
        mov       eax, r8d
        movzx     edx, WORD PTR [102+rsp]
        shl       eax, 4
        and       edx, -32753
        or        edx, eax
        mov       WORD PTR [102+rsp], dx
        movsd     xmm3, QWORD PTR [96+rsp]
        mulsd     xmm0, xmm3
        mulsd     xmm3, xmm2
        movaps    xmm1, xmm3
        addsd     xmm1, xmm0
        cmp       r8d, 50
        ja        .L_B10_11

.L_B10_10:

        mulsd     xmm1, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [r9], xmm1
        jmp       .L_B10_12

.L_B10_11:

        movsd     QWORD PTR [32+rsp], xmm1
        movsd     xmm1, QWORD PTR [32+rsp]
        subsd     xmm3, xmm1
        movsd     QWORD PTR [40+rsp], xmm3
        movsd     xmm2, QWORD PTR [40+rsp]
        addsd     xmm2, xmm0
        movsd     QWORD PTR [40+rsp], xmm2
        movsd     xmm0, QWORD PTR [32+rsp]
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1168]
        movsd     QWORD PTR [48+rsp], xmm0
        movsd     xmm4, QWORD PTR [32+rsp]
        movsd     xmm3, QWORD PTR [48+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [56+rsp], xmm4
        movsd     xmm0, QWORD PTR [56+rsp]
        movsd     xmm5, QWORD PTR [48+rsp]
        subsd     xmm0, xmm5
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm2, QWORD PTR [32+rsp]
        movsd     xmm1, QWORD PTR [64+rsp]
        subsd     xmm2, xmm1
        movsd     QWORD PTR [72+rsp], xmm2
        movsd     xmm4, QWORD PTR [40+rsp]
        movsd     xmm3, QWORD PTR [72+rsp]
        addsd     xmm4, xmm3
        movsd     QWORD PTR [72+rsp], xmm4
        movsd     xmm0, QWORD PTR [64+rsp]
        mulsd     xmm0, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [64+rsp], xmm0
        movsd     xmm1, QWORD PTR [72+rsp]
        mulsd     xmm1, QWORD PTR [rip+_imldExpHATab+1160]
        movsd     QWORD PTR [72+rsp], xmm1
        movsd     xmm2, QWORD PTR [64+rsp]
        movsd     xmm5, QWORD PTR [72+rsp]
        addsd     xmm2, xmm5
        movsd     QWORD PTR [r9], xmm2

.L_B10_12:

        mov       eax, 4
        add       rsp, 104
        ret

.L_B10_13:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1120]
        mov       eax, 4
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_14:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1128]
        mov       eax, 3
        mulsd     xmm0, xmm0
        movsd     QWORD PTR [r9], xmm0
        add       rsp, 104
        ret

.L_B10_15:

        movsd     xmm0, QWORD PTR [rip+_imldExpHATab+1144]
        addsd     xmm0, xmm1
        movsd     QWORD PTR [r9], xmm0

.L_B10_16:

        add       rsp, 104
        ret

.L_B10_17:

        mov       dl, BYTE PTR [103+rsp]
        and       dl, -128
        cmp       dl, -128
        je        .L_B10_19

.L_B10_18:

        mulsd     xmm1, xmm1
        movsd     QWORD PTR [r9], xmm1
        add       rsp, 104
        ret

.L_B10_19:

        test      DWORD PTR [100+rsp], 1048575
        jne       .L_B10_18

.L_B10_20:

        cmp       DWORD PTR [96+rsp], 0
        jne       .L_B10_18

.L_B10_21:

        mov       rdx, QWORD PTR [rip+_imldExpHATab+1136]
        mov       QWORD PTR [r9], rdx
        add       rsp, 104
        ret
        .align    16, 0x90

.L_B10_22:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_dexp_ha_cout_rare_internal_B1_B21:
        .long   67585
        .long   49672

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B10_1
        .rva    .L_B10_22
        .rva    _unwind___jsvml_dexp_ha_cout_rare_internal_B1_B21

        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_dexp_ha_data_internal_avx512
__jsvml_dexp_ha_data_internal_avx512:
        .long   0
        .long   1072693248
        .long   1828292879
        .long   1072739672
        .long   1014845819
        .long   1072788152
        .long   1853186616
        .long   1072838778
        .long   171030293
        .long   1072891646
        .long   1276261410
        .long   1072946854
        .long   3577096743
        .long   1073004506
        .long   3712504873
        .long   1073064711
        .long   1719614413
        .long   1073127582
        .long   1944781191
        .long   1073193236
        .long   1110089947
        .long   1073261797
        .long   2191782032
        .long   1073333393
        .long   2572866477
        .long   1073408159
        .long   3716502172
        .long   1073486235
        .long   3707479175
        .long   1073567768
        .long   2728693978
        .long   1073652911
        .long   0
        .long   0
        .long   1568897901
        .long   1016568486
        .long   3936719688
        .long   3162512149
        .long   3819481236
        .long   1016499965
        .long   1303423926
        .long   1015238005
        .long   2804567149
        .long   1015390024
        .long   3145379760
        .long   1014403278
        .long   3793507337
        .long   1016095713
        .long   3210617384
        .long   3163796463
        .long   3108873501
        .long   3162190556
        .long   3253791412
        .long   1015920431
        .long   730975783
        .long   1014083580
        .long   2462790535
        .long   1015814775
        .long   816778419
        .long   1014197934
        .long   2789017511
        .long   1014276997
        .long   2413007344
        .long   3163551506
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
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   16368
        .long   1123549184
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   4277811695
        .long   1072049730
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   993624127
        .long   1014676638
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   4294967295
        .long   3221225471
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   915672068
        .long   1062682904
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   3150079424
        .long   1065422876
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   606955774
        .long   1067799895
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   1402181426
        .long   1069897045
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   53256
        .long   1071644672
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
        .long   4294967152
        .long   1072693247
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
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   1287323204
        .long   1082531232
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
        .long   0
        .long   1005584384
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
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .long   32752
        .long   0
        .globl __jsvml_dexp_ha_data_internal
__jsvml_dexp_ha_data_internal:
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
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
        .long   1697350398
        .long   1079448903
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
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   4277796864
        .long   1065758274
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   3164486458
        .long   1025308570
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   4294957883
        .long   1071644671
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1431659838
        .long   1069897045
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   1059163027
        .long   1067799895
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   765416603
        .long   1065423121
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   63
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
        .long   1023
        .long   0
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
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
        .long   4294967295
        .long   1082532650
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
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   1082532650
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   4277811695
        .long   1082535490
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
        .long   3576508497
        .long   3230091536
_2il0floatpacket_34:
        .long   0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000
_imldExpHATab:
        .long   0
        .long   1072693248
        .long   0
        .long   0
        .long   1048019041
        .long   1072704666
        .long   2631457885
        .long   3161546771
        .long   3541402996
        .long   1072716208
        .long   896005651
        .long   1015861842
        .long   410360776
        .long   1072727877
        .long   1642514529
        .long   1012987726
        .long   1828292879
        .long   1072739672
        .long   1568897901
        .long   1016568486
        .long   852742562
        .long   1072751596
        .long   1882168529
        .long   1010744893
        .long   3490863953
        .long   1072763649
        .long   707771662
        .long   3163903570
        .long   2930322912
        .long   1072775834
        .long   3117806614
        .long   3163670819
        .long   1014845819
        .long   1072788152
        .long   3936719688
        .long   3162512149
        .long   3949972341
        .long   1072800603
        .long   1058231231
        .long   1015777676
        .long   828946858
        .long   1072813191
        .long   1044000608
        .long   1016786167
        .long   2288159958
        .long   1072825915
        .long   1151779725
        .long   1015705409
        .long   1853186616
        .long   1072838778
        .long   3819481236
        .long   1016499965
        .long   1709341917
        .long   1072851781
        .long   2552227826
        .long   1015039787
        .long   4112506593
        .long   1072864925
        .long   1829350193
        .long   1015216097
        .long   2799960843
        .long   1072878213
        .long   1913391796
        .long   1015756674
        .long   171030293
        .long   1072891646
        .long   1303423926
        .long   1015238005
        .long   2992903935
        .long   1072905224
        .long   1574172746
        .long   1016061241
        .long   926591435
        .long   1072918951
        .long   3427487848
        .long   3163704045
        .long   887463927
        .long   1072932827
        .long   1049900754
        .long   3161575912
        .long   1276261410
        .long   1072946854
        .long   2804567149
        .long   1015390024
        .long   569847338
        .long   1072961034
        .long   1209502043
        .long   3159926671
        .long   1617004845
        .long   1072975368
        .long   1623370769
        .long   1011049453
        .long   3049340112
        .long   1072989858
        .long   3667985273
        .long   1013894369
        .long   3577096743
        .long   1073004506
        .long   3145379760
        .long   1014403278
        .long   1990012071
        .long   1073019314
        .long   7447438
        .long   3163526196
        .long   1453150082
        .long   1073034283
        .long   3171891295
        .long   3162037958
        .long   917841882
        .long   1073049415
        .long   419288974
        .long   1016280325
        .long   3712504873
        .long   1073064711
        .long   3793507337
        .long   1016095713
        .long   363667784
        .long   1073080175
        .long   728023093
        .long   1016345318
        .long   2956612997
        .long   1073095806
        .long   1005538728
        .long   3163304901
        .long   2186617381
        .long   1073111608
        .long   2018924632
        .long   3163803357
        .long   1719614413
        .long   1073127582
        .long   3210617384
        .long   3163796463
        .long   1013258799
        .long   1073143730
        .long   3094194670
        .long   3160631279
        .long   3907805044
        .long   1073160053
        .long   2119843535
        .long   3161988964
        .long   1447192521
        .long   1073176555
        .long   508946058
        .long   3162904882
        .long   1944781191
        .long   1073193236
        .long   3108873501
        .long   3162190556
        .long   919555682
        .long   1073210099
        .long   2882956373
        .long   1013312481
        .long   2571947539
        .long   1073227145
        .long   4047189812
        .long   3163777462
        .long   2604962541
        .long   1073244377
        .long   3631372142
        .long   3163870288
        .long   1110089947
        .long   1073261797
        .long   3253791412
        .long   1015920431
        .long   2568320822
        .long   1073279406
        .long   1509121860
        .long   1014756995
        .long   2966275557
        .long   1073297207
        .long   2339118633
        .long   3160254904
        .long   2682146384
        .long   1073315202
        .long   586480042
        .long   3163702083
        .long   2191782032
        .long   1073333393
        .long   730975783
        .long   1014083580
        .long   2069751141
        .long   1073351782
        .long   576856675
        .long   3163014404
        .long   2990417245
        .long   1073370371
        .long   3552361237
        .long   3163667409
        .long   1434058175
        .long   1073389163
        .long   1853053619
        .long   1015310724
        .long   2572866477
        .long   1073408159
        .long   2462790535
        .long   1015814775
        .long   3092190715
        .long   1073427362
        .long   1457303226
        .long   3159737305
        .long   4076559943
        .long   1073446774
        .long   950899508
        .long   3160987380
        .long   2420883922
        .long   1073466398
        .long   174054861
        .long   1014300631
        .long   3716502172
        .long   1073486235
        .long   816778419
        .long   1014197934
        .long   777507147
        .long   1073506289
        .long   3507050924
        .long   1015341199
        .long   3706687593
        .long   1073526560
        .long   1821514088
        .long   1013410604
        .long   1242007932
        .long   1073547053
        .long   1073740399
        .long   3163532637
        .long   3707479175
        .long   1073567768
        .long   2789017511
        .long   1014276997
        .long   64696965
        .long   1073588710
        .long   3586233004
        .long   1015962192
        .long   863738719
        .long   1073609879
        .long   129252895
        .long   3162690849
        .long   3884662774
        .long   1073631278
        .long   1614448851
        .long   1014281732
        .long   2728693978
        .long   1073652911
        .long   2413007344
        .long   3163551506
        .long   3999357479
        .long   1073674779
        .long   1101668360
        .long   1015989180
        .long   1533953344
        .long   1073696886
        .long   835814894
        .long   1015702697
        .long   2174652632
        .long   1073719233
        .long   1301400989
        .long   1014466875
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
        .long   4277811695
        .long   1082535490
        .long   3715808466
        .long   3230016299
        .long   3576508497
        .long   3230091536
        .long   4277796864
        .long   1065758274
        .long   3164486458
        .long   1025308570
        .long   1
        .long   1048576
        .long   4294967295
        .long   2146435071
        .long   0
        .long   0
        .long   0
        .long   1072693248
        .long   0
        .long   1073741824
        .long   0
        .long   1009778688
        .long   0
        .long   1106771968
        .space 8, 0x0
_2il0floatpacket_33:
        .long   0x00000000, 0x7ff00000, 0x00000000, 0x7ff00000
        .data
#endif
