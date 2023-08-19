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
        .globl __jsvml_cbrtf4_ha_l9

__jsvml_cbrtf4_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 248
        vmovaps   xmm4, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm9
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm8
        vpsrld    xmm8, xmm4, 16
        mov       QWORD PTR [224+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpand     xmm0, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1408]
        and       r13, -64
        vmovd     eax, xmm0
        vpextrd   r8d, xmm0, 2
        movsxd    rax, eax
        vpextrd   ecx, xmm0, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm0, 3
        movsxd    rcx, ecx
        movsxd    r9, r9d
        vmovd     xmm1, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        vmovd     xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r8]
        vpinsrd   xmm5, xmm1, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vpinsrd   xmm1, xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r9], 1
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1792]
        vpsubd    xmm9, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1856]
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1152]
        vorps     xmm2, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1280]
        vpunpcklqdq xmm3, xmm5, xmm1
        vpsrld    xmm5, xmm8, 7
        vpcmpgtd  xmm1, xmm9, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1920]
        vandps    xmm9, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1216]
        vorps     xmm9, xmm9, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1344]
        vpand     xmm8, xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1472]
        vsubps    xmm2, xmm2, xmm9
        vmovmskps eax, xmm1
        vpsubd    xmm9, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1664]
        vmulps    xmm2, xmm3, xmm2
        vpmulld   xmm3, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1728]
        vpsrld    xmm3, xmm3, 12
        vpand     xmm5, xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1536]
        vpaddd    xmm8, xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1600]
        vpor      xmm5, xmm8, xmm5
        vpslld    xmm8, xmm5, 23
        vpsubd    xmm5, xmm9, xmm3
        vpsubd    xmm9, xmm5, xmm3
        vpsubd    xmm3, xmm9, xmm3
        vpslld    xmm3, xmm3, 7
        vpaddd    xmm0, xmm0, xmm3
        vpandn    xmm1, xmm1, xmm0
        vpslld    xmm5, xmm1, 1
        vmovd     r10d, xmm5
        vpextrd   r11d, xmm5, 1
        vpextrd   ecx, xmm5, 2
        vpextrd   r8d, xmm5, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        vmovq     xmm9, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r10]
        vmovq     xmm1, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r11]
        vmovq     xmm0, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vmovq     xmm3, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vunpcklps xmm5, xmm9, xmm1
        vunpcklps xmm0, xmm0, xmm3
        vmovlhps  xmm1, xmm5, xmm0
        vshufps   xmm0, xmm5, xmm0, 238
        vmulps    xmm1, xmm8, xmm1
        vmulps    xmm0, xmm8, xmm0
        vmovups   xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+896]
        vfmadd213ps xmm8, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+960]
        vfmadd213ps xmm8, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1024]
        vfmadd213ps xmm8, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1088]
        vmulps    xmm2, xmm2, xmm1
        vmulps    xmm2, xmm8, xmm2
        mov       QWORD PTR [232+rsp], r13
        vaddps    xmm3, xmm0, xmm2
        vaddps    xmm0, xmm1, xmm3
        test      eax, eax
        jne       .L_B1_3

.L_B1_2:

        vmovups   xmm8, XMMWORD PTR [208+rsp]
        vmovups   xmm9, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [224+rsp]
        add       rsp, 248
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm4
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B1_6:

        xor       edx, edx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

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

        call      __jsvml_scbrt_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_l9_B1_B3:
        .long   537857
        .long   1889333
        .long   886824
        .long   825368
        .long   2031883

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_cbrtf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_cbrtf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_cbrtf4_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrtf4_ha_ex

__jsvml_cbrtf4_ha_ex:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L12:

        sub       rsp, 264
        movaps    xmm5, xmm0
        movups    XMMWORD PTR [192+rsp], xmm15
        movaps    xmm2, xmm5
        movups    XMMWORD PTR [208+rsp], xmm10
        psrld     xmm2, 16
        movups    XMMWORD PTR [224+rsp], xmm9
        lea       rdx, QWORD PTR [rip+__ImageBase]
        mov       QWORD PTR [240+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movdqu    xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1408]
        and       r13, -64
        pand      xmm1, xmm2
        psrld     xmm2, 7
        pshufd    xmm10, xmm1, 1
        movd      eax, xmm1
        pshufd    xmm0, xmm1, 2
        movups    xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1152]
        movd      ecx, xmm10
        andps     xmm3, xmm5
        pshufd    xmm10, xmm1, 3
        movups    xmm15, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1216]
        movd      r8d, xmm0
        andps     xmm15, xmm5
        movd      r9d, xmm10
        orps      xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1280]
        orps      xmm15, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1344]
        movsxd    rax, eax
        subps     xmm3, xmm15
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movsxd    r9, r9d
        movd      xmm4, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        movd      xmm9, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx]
        punpckldq xmm4, xmm9
        movd      xmm0, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r8]
        movd      xmm9, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r9]
        punpckldq xmm0, xmm9
        punpcklqdq xmm4, xmm0
        movdqu    xmm0, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1472]
        mulps     xmm4, xmm3
        pand      xmm0, xmm2
        movdqu    xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1728]
        movdqa    xmm15, xmm0
        movdqa    xmm10, xmm3
        psrlq     xmm3, 32
        pmuludq   xmm10, xmm0
        psrlq     xmm0, 32
        pmuludq   xmm0, xmm3
        pand      xmm10, XMMWORD PTR [rip+_2il0floatpacket_46]
        psllq     xmm0, 32
        por       xmm10, xmm0
        psubd     xmm15, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1664]
        psrld     xmm10, 12
        psubd     xmm15, xmm10
        movdqu    xmm9, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1792]
        psubd     xmm15, xmm10
        pand      xmm9, xmm5
        psubd     xmm15, xmm10
        psubd     xmm9, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1856]
        pslld     xmm15, 7
        pcmpgtd   xmm9, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1920]
        paddd     xmm1, xmm15
        movmskps  eax, xmm9
        pandn     xmm9, xmm1
        movdqu    xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1600]
        pslld     xmm9, 1
        pand      xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1536]
        paddd     xmm3, xmm10
        por       xmm3, xmm2
        pshufd    xmm2, xmm9, 1
        pslld     xmm3, 23
        movd      r10d, xmm9
        pshufd    xmm10, xmm9, 2
        pshufd    xmm0, xmm9, 3
        movd      r11d, xmm2
        movd      ecx, xmm10
        movd      r8d, xmm0
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        movq      xmm1, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r10]
        movq      xmm15, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r11]
        movq      xmm10, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        movq      xmm2, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        unpcklps  xmm1, xmm15
        unpcklps  xmm10, xmm2
        movaps    xmm0, xmm1
        movlhps   xmm0, xmm10
        shufps    xmm1, xmm10, 238
        mulps     xmm0, xmm3
        mulps     xmm3, xmm1
        movups    xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+896]
        mulps     xmm1, xmm4
        mov       QWORD PTR [248+rsp], r13
        addps     xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+960]
        mulps     xmm1, xmm4
        addps     xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1024]
        mulps     xmm1, xmm4
        mulps     xmm4, xmm0
        addps     xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1088]
        mulps     xmm1, xmm4
        addps     xmm3, xmm1
        addps     xmm0, xmm3
        test      eax, eax
        jne       .L_B2_3

.L_B2_2:

        movups    xmm9, XMMWORD PTR [224+rsp]
        movups    xmm10, XMMWORD PTR [208+rsp]
        movups    xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [240+rsp]
        add       rsp, 264
        ret

.L_B2_3:

        movups    XMMWORD PTR [r13], xmm5
        movups    XMMWORD PTR [64+r13], xmm0

.L_B2_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B2_7:

        mov       ecx, ebx
        mov       edx, 1
        shl       edx, cl
        test      esi, edx
        jne       .L_B2_10

.L_B2_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B2_7

.L_B2_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm0, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scbrt_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_ex_B1_B3:
        .long   671745
        .long   2020416
        .long   956465
        .long   895011
        .long   849943
        .long   2162955

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cbrtf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_cbrtf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_cbrtf4_ha_ex_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrtf4_ha_e9

__jsvml_cbrtf4_ha_e9:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L25:

        sub       rsp, 248
        vmovaps   xmm4, xmm0
        vmovups   XMMWORD PTR [192+rsp], xmm8
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [208+rsp], xmm7
        vpsrld    xmm7, xmm4, 16
        mov       QWORD PTR [224+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpand     xmm0, xmm7, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1408]
        and       r13, -64
        vmovd     eax, xmm0
        vpextrd   r8d, xmm0, 2
        movsxd    rax, eax
        vpextrd   ecx, xmm0, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm0, 3
        movsxd    rcx, ecx
        movsxd    r9, r9d
        vmovd     xmm1, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        vmovd     xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r8]
        vpinsrd   xmm5, xmm1, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vpinsrd   xmm1, xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r9], 1
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1792]
        vpsubd    xmm8, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1856]
        vandps    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1152]
        vorps     xmm2, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1280]
        vpunpcklqdq xmm3, xmm5, xmm1
        vpsrld    xmm5, xmm7, 7
        vpcmpgtd  xmm1, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1920]
        vandps    xmm8, xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1216]
        vorps     xmm8, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1344]
        vpand     xmm7, xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1472]
        vsubps    xmm2, xmm2, xmm8
        vmovmskps eax, xmm1
        vpsubd    xmm8, xmm7, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1664]
        vmulps    xmm2, xmm3, xmm2
        vpmulld   xmm3, xmm7, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1728]
        vpsrld    xmm3, xmm3, 12
        vpand     xmm5, xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1536]
        vpsubd    xmm8, xmm8, xmm3
        vpaddd    xmm7, xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1600]
        vpor      xmm5, xmm7, xmm5
        vpslld    xmm7, xmm5, 23
        vpsubd    xmm5, xmm8, xmm3
        vpsubd    xmm3, xmm5, xmm3
        vpslld    xmm8, xmm3, 7
        vpaddd    xmm0, xmm0, xmm8
        vpandn    xmm0, xmm1, xmm0
        vpslld    xmm1, xmm0, 1
        vmovd     r10d, xmm1
        vpextrd   r11d, xmm1, 1
        vpextrd   ecx, xmm1, 2
        vpextrd   r8d, xmm1, 3
        movsxd    r10, r10d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        movsxd    r8, r8d
        vmovq     xmm3, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r10]
        vmovq     xmm5, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r11]
        vmovq     xmm8, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vmovq     xmm0, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vunpcklps xmm1, xmm3, xmm5
        vunpcklps xmm8, xmm8, xmm0
        vmovlhps  xmm0, xmm1, xmm8
        vshufps   xmm3, xmm1, xmm8, 238
        vmulps    xmm0, xmm7, xmm0
        vmulps    xmm1, xmm7, xmm3
        vmulps    xmm7, xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+896]
        mov       QWORD PTR [232+rsp], r13
        vaddps    xmm3, xmm7, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+960]
        vmulps    xmm5, xmm2, xmm3
        vaddps    xmm7, xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1024]
        vmulps    xmm8, xmm2, xmm7
        vmulps    xmm2, xmm2, xmm0
        vaddps    xmm3, xmm8, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1088]
        vmulps    xmm2, xmm3, xmm2
        vaddps    xmm1, xmm1, xmm2
        vaddps    xmm0, xmm0, xmm1
        test      eax, eax
        jne       .L_B3_3

.L_B3_2:

        vmovups   xmm7, XMMWORD PTR [208+rsp]
        vmovups   xmm8, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [224+rsp]
        add       rsp, 248
        ret

.L_B3_3:

        vmovups   XMMWORD PTR [r13], xmm4
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B3_6:

        xor       edx, edx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

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

        call      __jsvml_scbrt_ha_cout_rare_internal
        jmp       .L_B3_8
        .align    16, 0x90

.L_B3_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_e9_B1_B3:
        .long   537857
        .long   1889333
        .long   882728
        .long   821272
        .long   2031883

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_cbrtf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B3_1
        .rva    .L_B3_6
        .rva    _unwind___jsvml_cbrtf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_6
        .rva    .L_B3_11
        .rva    _unwind___jsvml_cbrtf4_ha_e9_B6_B10

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrtf16_ha_z0

__jsvml_cbrtf16_ha_z0:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L36:

        vgetexpps zmm4, zmm0 {sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+384]
        vgetmantps zmm27, zmm0, 0 {sae}
        vmovups   zmm22, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+512]
        vmovups   zmm23, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+576]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+640]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+256]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+768]
        vrcp14ps  zmm26, zmm27
        vaddps    zmm25, zmm4, zmm5 {rn-sae}
        vmovups   zmm4, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+704]
        vrndscaleps zmm28, zmm26, 88 {sae}
        vfmsub231ps zmm23, zmm22, zmm25 {rn-sae}
        vmovups   zmm5, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+832]
        vfmsub231ps zmm4, zmm27, zmm28 {rn-sae}
        vrndscaleps zmm3, zmm23, 9 {sae}
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+128]
        vpsrld    zmm29, zmm28, 19
        vfmadd231ps zmm5, zmm30, zmm4 {rn-sae}
        vfnmadd231ps zmm25, zmm24, zmm3 {rn-sae}
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+896]
        vpermt2ps zmm27, zmm29, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+192]
        vpermps   zmm1, zmm25, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512]
        vpermt2ps zmm31, zmm29, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+320]
        vpermps   zmm2, zmm25, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+64]
        vmulps    zmm22, zmm1, zmm27 {rn-sae}
        vfmadd213ps zmm5, zmm4, zmm30 {rn-sae}
        vmovaps   zmm29, zmm1
        vfmsub213ps zmm29, zmm27, zmm22 {rn-sae}
        vfmadd213ps zmm1, zmm31, zmm29 {rn-sae}
        vfmadd213ps zmm2, zmm27, zmm1 {rn-sae}
        vmulps    zmm1, zmm22, zmm4 {rn-sae}
        vfmadd213ps zmm1, zmm5, zmm2 {rn-sae}
        vaddps    zmm2, zmm1, zmm22 {rn-sae}
        vscalefps zmm3, zmm2, zmm3 {rn-sae}
        vpternlogd zmm0, zmm3, ZMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal_avx512+448], 236
        ret
        .align    16, 0x90

.L_B4_2:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf16_ha_z0\""

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrtf8_ha_l9

__jsvml_cbrtf8_ha_l9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L37:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovaps   ymm4, ymm0
        vpsrld    ymm1, ymm4, 16
        vmovups   YMMWORD PTR [368+rsp], ymm15
        vmovups   YMMWORD PTR [400+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [464+rsp], ymm12
        vmovups   YMMWORD PTR [496+rsp], ymm11
        vpsrld    ymm0, ymm1, 7
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [271+rsp]
        vpand     ymm5, ymm1, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1408]
        and       r13, -64
        vandps    ymm1, ymm4, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1792]
        mov       QWORD PTR [536+rsp], r13
        vmovd     eax, xmm5
        movsxd    rax, eax
        vpextrd   ecx, xmm5, 1
        movsxd    rcx, ecx
        vpextrd   r8d, xmm5, 2
        movsxd    r8, r8d
        vpextrd   r9d, xmm5, 3
        vmovd     xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        movsxd    r9, r9d
        vpinsrd   xmm14, xmm2, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vmovd     xmm3, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r8]
        vpinsrd   xmm15, xmm3, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r9], 1
        vextracti128 xmm2, ymm5, 1
        vpunpcklqdq xmm13, xmm14, xmm15
        vmovd     r10d, xmm2
        vpextrd   eax, xmm2, 2
        movsxd    r10, r10d
        vpextrd   r11d, xmm2, 1
        movsxd    rax, eax
        vpextrd   ecx, xmm2, 3
        movsxd    r11, r11d
        movsxd    rcx, ecx
        vmovd     xmm12, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r10]
        vmovd     xmm3, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        vpinsrd   xmm14, xmm12, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r11], 1
        vpinsrd   xmm15, xmm3, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vpand     ymm3, ymm0, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1472]
        vpand     ymm0, ymm0, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1536]
        vpunpcklqdq xmm11, xmm14, xmm15
        vpsubd    ymm14, ymm1, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1856]
        vandps    ymm15, ymm4, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1152]
        vorps     ymm1, ymm15, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1280]
        vpmulld   ymm15, ymm3, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1728]
        vinsertf128 ymm2, ymm13, xmm11, 1
        vandps    ymm11, ymm4, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1216]
        vorps     ymm12, ymm11, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1344]
        vpcmpgtd  ymm13, ymm14, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1920]
        vsubps    ymm14, ymm1, ymm12
        vpsrld    ymm11, ymm15, 12
        vmulps    ymm2, ymm2, ymm14
        vpsubd    ymm14, ymm3, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1664]
        vpaddd    ymm3, ymm11, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1600]
        vpsubd    ymm15, ymm14, ymm11
        vpor      ymm3, ymm3, ymm0
        vpsubd    ymm0, ymm15, ymm11
        vpslld    ymm3, ymm3, 23
        vpsubd    ymm11, ymm0, ymm11
        vpslld    ymm1, ymm11, 7
        vpaddd    ymm5, ymm5, ymm1
        vmovmskps eax, ymm13
        vpandn    ymm13, ymm13, ymm5
        vpslld    ymm11, ymm13, 1
        vmovd     r8d, xmm11
        vextracti128 xmm13, ymm11, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm11, 1
        vpextrd   ecx, xmm11, 3
        movsxd    r9, r9d
        movsxd    rcx, ecx
        vmovq     xmm14, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vmovd     r8d, xmm13
        vmovq     xmm0, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r9]
        vmovq     xmm1, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vpextrd   r10d, xmm11, 2
        vpextrd   r9d, xmm13, 1
        vpextrd   r11d, xmm13, 2
        vpextrd   ecx, xmm13, 3
        movsxd    r10, r10d
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        vmovq     xmm15, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r10]
        vmovq     xmm5, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vmovq     xmm11, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r9]
        vmovq     xmm12, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r11]
        vmovq     xmm13, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vunpcklps xmm15, xmm14, xmm15
        vunpcklps xmm14, xmm0, xmm1
        vunpcklps xmm0, xmm5, xmm12
        vunpcklps xmm1, xmm11, xmm13
        vinsertf128 ymm5, ymm15, xmm0, 1
        vinsertf128 ymm12, ymm14, xmm1, 1
        vunpcklps ymm0, ymm5, ymm12
        vunpckhps ymm1, ymm5, ymm12
        vmulps    ymm5, ymm3, ymm0
        vmulps    ymm1, ymm3, ymm1
        vmovups   ymm3, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+896]
        vfmadd213ps ymm3, ymm2, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+960]
        vfmadd213ps ymm3, ymm2, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1024]
        vfmadd213ps ymm3, ymm2, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1088]
        vmulps    ymm2, ymm2, ymm5
        vmulps    ymm2, ymm3, ymm2
        vaddps    ymm0, ymm1, ymm2
        vaddps    ymm0, ymm5, ymm0
        test      eax, eax
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm11, YMMWORD PTR [496+rsp]
        vmovups   ymm12, YMMWORD PTR [464+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [400+rsp]
        vmovups   ymm15, YMMWORD PTR [368+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B5_3:

        vmovups   YMMWORD PTR [r13], ymm4
        vmovups   YMMWORD PTR [64+r13], ymm0

.L_B5_6:

        xor       edx, edx
        vmovups   YMMWORD PTR [160+rsp], ymm6
        vmovups   YMMWORD PTR [128+rsp], ymm7
        vmovups   YMMWORD PTR [96+rsp], ymm8
        vmovups   YMMWORD PTR [64+rsp], ymm9
        vmovups   YMMWORD PTR [32+rsp], ymm10
        mov       QWORD PTR [200+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [192+rsp], rsi
        mov       esi, eax

.L_B5_7:

        bt        esi, ebx
        jc        .L_B5_10

.L_B5_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm6, YMMWORD PTR [160+rsp]
        vmovups   ymm7, YMMWORD PTR [128+rsp]
        vmovups   ymm8, YMMWORD PTR [96+rsp]
        vmovups   ymm9, YMMWORD PTR [64+rsp]
        vmovups   ymm10, YMMWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        mov       rbx, QWORD PTR [200+rsp]
        mov       rsi, QWORD PTR [192+rsp]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scbrt_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf8_ha_l9_B1_B3:
        .long   939265
        .long   4379733
        .long   2078792
        .long   1951807
        .long   1824822
        .long   1697837
        .long   1570852
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cbrtf8_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf8_ha_l9_B6_B10:
        .long   931873
        .long   1598520
        .long   1651758
        .long   174118
        .long   301088
        .long   428058
        .long   555028
        .long   681995
        .rva    .L_B5_1
        .rva    .L_B5_6
        .rva    _unwind___jsvml_cbrtf8_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_6
        .rva    .L_B5_11
        .rva    _unwind___jsvml_cbrtf8_ha_l9_B6_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_cbrtf8_ha_e9

__jsvml_cbrtf8_ha_e9:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L64:

        sub       rsp, 552
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [272+rsp], ymm15
        vmovups   YMMWORD PTR [304+rsp], ymm14
        vmovups   YMMWORD PTR [432+rsp], ymm13
        vmovups   YMMWORD PTR [208+rsp], ymm12
        vmovups   YMMWORD PTR [240+rsp], ymm11
        vmovups   YMMWORD PTR [336+rsp], ymm10
        vmovups   YMMWORD PTR [368+rsp], ymm9
        vmovups   YMMWORD PTR [400+rsp], ymm8
        vmovups   YMMWORD PTR [464+rsp], ymm7
        vmovups   YMMWORD PTR [496+rsp], ymm6
        vmovaps   ymm15, ymm0
        mov       QWORD PTR [528+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1408]
        and       r13, -64
        vmovups   xmm4, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1792]
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1856]
        vmovups   xmm6, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1920]
        vmovups   xmm0, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1472]
        vmovups   xmm1, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1536]
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1600]
        vmovups   xmm2, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1664]
        mov       QWORD PTR [536+rsp], r13
        vpsrld    xmm8, xmm15, 16
        vpand     xmm10, xmm8, xmm11
        vpsrld    xmm8, xmm8, 7
        vmovd     eax, xmm10
        vextractf128 xmm7, ymm15, 1
        vpextrd   r8d, xmm10, 2
        vpsrld    xmm9, xmm7, 16
        movsxd    rax, eax
        vpand     xmm11, xmm9, xmm11
        vpextrd   ecx, xmm10, 1
        vpsrld    xmm9, xmm9, 7
        movsxd    r8, r8d
        vpextrd   r9d, xmm10, 3
        movsxd    rcx, ecx
        movsxd    r9, r9d
        vmovd     xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        vmovd     xmm13, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r8]
        vpinsrd   xmm14, xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vpinsrd   xmm12, xmm13, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r9], 1
        vmovd     r10d, xmm11
        vpunpcklqdq xmm12, xmm14, xmm12
        movsxd    r10, r10d
        vpextrd   r11d, xmm11, 1
        vpextrd   eax, xmm11, 2
        movsxd    r11, r11d
        movsxd    rax, eax
        vpextrd   ecx, xmm11, 3
        movsxd    rcx, ecx
        vmovd     xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r10]
        vpinsrd   xmm13, xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+r11], 1
        vmovd     xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rax]
        vpinsrd   xmm14, xmm14, DWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+rdx+rcx], 1
        vpunpcklqdq xmm13, xmm13, xmm14
        vpand     xmm14, xmm15, xmm4
        vandps    xmm4, xmm7, xmm4
        vpsubd    xmm14, xmm14, xmm5
        vpsubd    xmm5, xmm4, xmm5
        vpcmpgtd  xmm14, xmm14, xmm6
        vpcmpgtd  xmm7, xmm5, xmm6
        vpackssdw xmm4, xmm14, xmm7
        vpxor     xmm5, xmm5, xmm5
        vpacksswb xmm6, xmm4, xmm5
        vandps    ymm4, ymm15, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1152]
        vandps    ymm5, ymm15, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1216]
        vpmovmskb eax, xmm6
        vorps     ymm6, ymm4, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1280]
        vorps     ymm4, ymm5, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1344]
        vsubps    ymm5, ymm6, ymm4
        vinsertf128 ymm12, ymm12, xmm13, 1
        vpand     xmm13, xmm8, xmm0
        vmulps    ymm4, ymm12, ymm5
        vpand     xmm0, xmm9, xmm0
        vmovups   xmm5, XMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1728]
        vpand     xmm9, xmm9, xmm1
        vpmulld   xmm12, xmm13, xmm5
        vpsrld    xmm6, xmm12, 12
        vpmulld   xmm12, xmm0, xmm5
        vpsrld    xmm5, xmm12, 12
        vpand     xmm12, xmm8, xmm1
        vpaddd    xmm8, xmm6, xmm3
        vpaddd    xmm1, xmm3, xmm5
        vpor      xmm8, xmm8, xmm12
        vpor      xmm3, xmm1, xmm9
        vpslld    xmm8, xmm8, 23
        vpslld    xmm1, xmm3, 23
        vinsertf128 ymm3, ymm8, xmm1, 1
        vpsubd    xmm8, xmm13, xmm2
        vpsubd    xmm12, xmm8, xmm6
        vpsubd    xmm2, xmm0, xmm2
        vpsubd    xmm13, xmm12, xmm6
        vpsubd    xmm0, xmm2, xmm5
        vpsubd    xmm6, xmm13, xmm6
        vpslld    xmm1, xmm6, 7
        vpaddd    xmm10, xmm10, xmm1
        vpsubd    xmm1, xmm0, xmm5
        vpandn    xmm14, xmm14, xmm10
        vpsubd    xmm2, xmm1, xmm5
        vpslld    xmm10, xmm14, 1
        vpslld    xmm5, xmm2, 7
        vmovd     r8d, xmm10
        vpaddd    xmm6, xmm11, xmm5
        vpandn    xmm7, xmm7, xmm6
        vpslld    xmm8, xmm7, 1
        movsxd    r8, r8d
        vpextrd   r9d, xmm10, 1
        vpextrd   ecx, xmm10, 3
        movsxd    r9, r9d
        movsxd    rcx, ecx
        vmovq     xmm9, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vmovd     r8d, xmm8
        vmovq     xmm12, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r9]
        vpextrd   r10d, xmm10, 2
        vmovq     xmm10, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vpextrd   r9d, xmm8, 1
        vpextrd   r11d, xmm8, 2
        vpextrd   ecx, xmm8, 3
        movsxd    r10, r10d
        movsxd    r8, r8d
        movsxd    r9, r9d
        movsxd    r11, r11d
        movsxd    rcx, ecx
        vmovq     xmm11, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r10]
        vmovq     xmm13, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r8]
        vmovq     xmm0, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r9]
        vmovq     xmm14, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+r11]
        vmovq     xmm1, QWORD PTR ["__jsvml_scbrt_ha_data_internal"@imgrel+128+rdx+rcx]
        vunpcklps xmm2, xmm9, xmm11
        vunpcklps xmm5, xmm12, xmm10
        vunpcklps xmm13, xmm13, xmm14
        vunpcklps xmm6, xmm0, xmm1
        vinsertf128 ymm7, ymm2, xmm13, 1
        vinsertf128 ymm8, ymm5, xmm6, 1
        vunpcklps ymm9, ymm7, ymm8
        vunpckhps ymm10, ymm7, ymm8
        vmulps    ymm11, ymm3, ymm9
        vmulps    ymm5, ymm3, ymm10
        vmulps    ymm3, ymm4, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+896]
        vaddps    ymm3, ymm3, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+960]
        vmulps    ymm10, ymm4, ymm3
        vaddps    ymm0, ymm10, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1024]
        vmulps    ymm1, ymm4, ymm0
        vmulps    ymm4, ymm4, ymm11
        vaddps    ymm2, ymm1, YMMWORD PTR [rip+__jsvml_scbrt_ha_data_internal+1088]
        vmulps    ymm0, ymm2, ymm4
        vaddps    ymm1, ymm5, ymm0
        vaddps    ymm0, ymm11, ymm1
        test      al, al
        jne       .L_B6_3

.L_B6_2:

        vmovups   ymm6, YMMWORD PTR [496+rsp]
        vmovups   ymm7, YMMWORD PTR [464+rsp]
        vmovups   ymm8, YMMWORD PTR [400+rsp]
        vmovups   ymm9, YMMWORD PTR [368+rsp]
        vmovups   ymm10, YMMWORD PTR [336+rsp]
        vmovups   ymm11, YMMWORD PTR [240+rsp]
        vmovups   ymm12, YMMWORD PTR [208+rsp]
        vmovups   ymm13, YMMWORD PTR [432+rsp]
        vmovups   ymm14, YMMWORD PTR [304+rsp]
        vmovups   ymm15, YMMWORD PTR [272+rsp]
        mov       r13, QWORD PTR [528+rsp]
        add       rsp, 552
        ret

.L_B6_3:

        vmovups   YMMWORD PTR [r13], ymm15
        vmovups   YMMWORD PTR [64+r13], ymm0
        test      eax, eax
        je        .L_B6_2

.L_B6_6:

        xor       edx, edx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, edx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, eax

.L_B6_7:

        bt        esi, ebx
        jc        .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 8
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_scbrt_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_cbrtf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf8_ha_e9_B1_B3:
        .long   1603585
        .long   4379768
        .long   2058348
        .long   1931363
        .long   1673306
        .long   1546321
        .long   1419336
        .long   1030207
        .long   903222
        .long   1824813
        .long   1304612
        .long   1177627
        .long   4522251

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cbrtf8_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_cbrtf8_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_cbrtf8_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_cbrtf8_ha_e9_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_scbrt_ha_cout_rare_internal

__jsvml_scbrt_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L91:

        push      rbx
        push      rbp
        sub       rsp, 56
        mov       r9, rdx
        movss     xmm0, DWORD PTR [rcx]
        lea       r8, QWORD PTR [rip+__ImageBase]
        movss     xmm2, DWORD PTR [rip+ione]
        mulss     xmm2, xmm0
        movss     DWORD PTR [52+rsp], xmm2
        movzx     eax, WORD PTR [54+rsp]
        and       eax, 32640
        shr       eax, 7
        cmp       eax, 255
        je        .L_B7_9

.L_B7_2:

        pxor      xmm0, xmm0
        cvtss2sd  xmm0, xmm2
        pxor      xmm1, xmm1
        ucomisd   xmm0, xmm1
        jp        .L_B7_3
        je        .L_B7_8

.L_B7_3:

        test      eax, eax
        jne       .L_B7_5

.L_B7_4:

        mov       DWORD PTR [32+rsp], 2122317824
        mov       DWORD PTR [36+rsp], 713031680
        jmp       .L_B7_6

.L_B7_5:

        mov       eax, 1065353216
        mov       DWORD PTR [32+rsp], eax
        mov       DWORD PTR [36+rsp], eax

.L_B7_6:

        movss     xmm0, DWORD PTR [32+rsp]
        mulss     xmm2, xmm0
        movd      ecx, xmm2
        movss     DWORD PTR [52+rsp], xmm2
        mov       r10d, ecx
        mov       ebx, ecx
        and       r10d, 8388607
        mov       r11d, ecx
        shr       ebx, 23
        and       r11d, 8257536
        or        r10d, -1082130432
        or        r11d, -1081999360
        mov       DWORD PTR [40+rsp], r10d
        mov       edx, ecx
        movzx     ebp, bl
        and       ecx, 2147483647
        mov       DWORD PTR [44+rsp], r11d
        and       ebx, -256
        movss     xmm2, DWORD PTR [40+rsp]
        add       ecx, 2139095040
        shr       edx, 16
        subss     xmm2, DWORD PTR [44+rsp]
        and       edx, 124
        lea       r10d, DWORD PTR [rbp+rbp*4]
        mulss     xmm2, DWORD PTR ["vscbrt_ha_cout_data"@imgrel+r8+rdx]
        lea       r11d, DWORD PTR [r10+r10]
        movss     xmm5, DWORD PTR [rip+_2il0floatpacket_51]
        lea       eax, DWORD PTR [r11+r11]
        add       eax, eax
        lea       r10d, DWORD PTR [r10+r11*8]
        add       eax, eax
        dec       ebp
        mulss     xmm5, xmm2
        shl       ebp, 7
        lea       r11d, DWORD PTR [r10+rax*8]
        lea       r10d, DWORD PTR [r11+rax*8]
        shr       r10d, 12
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_52]
        mulss     xmm5, xmm2
        lea       eax, DWORD PTR [85+r10]
        or        eax, ebx
        xor       ebx, ebx
        cmp       ecx, -16777217
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_53]
        setg      bl
        shl       r10d, 7
        neg       ebx
        sub       ebp, r10d
        add       r10d, r10d
        sub       ebp, r10d
        not       ebx
        add       edx, ebp
        and       ebx, edx
        shl       eax, 23
        add       ebx, ebx
        mov       DWORD PTR [48+rsp], eax
        movss     xmm4, DWORD PTR ["vscbrt_ha_cout_data"@imgrel+128+r8+rbx]
        movss     xmm1, DWORD PTR [48+rsp]
        mulss     xmm5, xmm2
        mulss     xmm4, xmm1
        addss     xmm5, DWORD PTR [rip+_2il0floatpacket_54]
        mulss     xmm2, xmm4
        movss     xmm3, DWORD PTR ["vscbrt_ha_cout_data"@imgrel+132+r8+rbx]
        mulss     xmm3, xmm1
        mulss     xmm5, xmm2
        addss     xmm5, xmm3
        addss     xmm5, xmm4
        mulss     xmm5, DWORD PTR [36+rsp]
        movss     DWORD PTR [r9], xmm5

.L_B7_7:

        xor       eax, eax
        add       rsp, 56
        pop       rbp
        pop       rbx
        ret

.L_B7_8:

        movss     DWORD PTR [r9], xmm2
        jmp       .L_B7_7

.L_B7_9:

        addss     xmm0, xmm0
        movss     DWORD PTR [r9], xmm0
        jmp       .L_B7_7
        .align    16, 0x90

.L_B7_10:


        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_scbrt_ha_cout_rare_internal_B1_B9:
        .long   199169
        .long   1342595594
        .long   12293

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B7_1
        .rva    .L_B7_10
        .rva    _unwind___jsvml_scbrt_ha_cout_rare_internal_B1_B9

        .data

        .data
        .align 0x04
ione:
        .long   1065353216
        .long   -1082130432
        .section .rdata, "dr"
        .align 32
vscbrt_ha_cout_data:
        .long   3212578753
        .long   3212085645
        .long   3211621124
        .long   3211182772
        .long   3210768440
        .long   3210376206
        .long   3210004347
        .long   3209651317
        .long   3209315720
        .long   3208996296
        .long   3208691905
        .long   3208401508
        .long   3208124163
        .long   3207859009
        .long   3207605259
        .long   3207362194
        .long   3207129151
        .long   3206905525
        .long   3206690755
        .long   3206484326
        .long   3206285761
        .long   3206094618
        .long   3205910490
        .long   3205732998
        .long   3205561788
        .long   3205396533
        .long   3205236929
        .long   3205082689
        .long   3204933547
        .long   3204789256
        .long   3204649583
        .long   3204514308
        .long   1065396681
        .long   839340838
        .long   1065482291
        .long   867750258
        .long   1065566215
        .long   851786446
        .long   1065648532
        .long   853949398
        .long   1065729317
        .long   864938789
        .long   1065808640
        .long   864102364
        .long   1065886565
        .long   864209792
        .long   1065963152
        .long   865422805
        .long   1066038457
        .long   867593594
        .long   1066112533
        .long   854482593
        .long   1066185428
        .long   848298042
        .long   1066257188
        .long   860064854
        .long   1066327857
        .long   844792593
        .long   1066397474
        .long   870701309
        .long   1066466079
        .long   872023170
        .long   1066533708
        .long   860255342
        .long   1066600394
        .long   849966899
        .long   1066666169
        .long   863561479
        .long   1066731064
        .long   869115319
        .long   1066795108
        .long   871961375
        .long   1066858329
        .long   859537336
        .long   1066920751
        .long   871954398
        .long   1066982401
        .long   863817578
        .long   1067043301
        .long   861687921
        .long   1067103474
        .long   849594757
        .long   1067162941
        .long   816486846
        .long   1067221722
        .long   858183533
        .long   1067279837
        .long   864500406
        .long   1067337305
        .long   850523240
        .long   1067394143
        .long   808125243
        .long   1067450368
        .long   0
        .long   1067505996
        .long   861173761
        .long   1067588354
        .long   859000219
        .long   1067696217
        .long   823158129
        .long   1067801953
        .long   871826232
        .long   1067905666
        .long   871183196
        .long   1068007450
        .long   839030530
        .long   1068107390
        .long   867690638
        .long   1068205570
        .long   840440923
        .long   1068302063
        .long   868033274
        .long   1068396942
        .long   855856030
        .long   1068490271
        .long   865094453
        .long   1068582113
        .long   860418487
        .long   1068672525
        .long   866225006
        .long   1068761562
        .long   866458226
        .long   1068849275
        .long   865124659
        .long   1068935712
        .long   864837702
        .long   1069020919
        .long   811742505
        .long   1069104937
        .long   869432099
        .long   1069187809
        .long   864584201
        .long   1069269572
        .long   864183978
        .long   1069350263
        .long   844810573
        .long   1069429915
        .long   869245699
        .long   1069508563
        .long   859556409
        .long   1069586236
        .long   870675446
        .long   1069662966
        .long   814190139
        .long   1069738778
        .long   870686941
        .long   1069813702
        .long   861800510
        .long   1069887762
        .long   855649163
        .long   1069960982
        .long   869347119
        .long   1070033387
        .long   864252033
        .long   1070104998
        .long   867276215
        .long   1070175837
        .long   868189817
        .long   1070245925
        .long   849541095
        .long   1070349689
        .long   866633177
        .long   1070485588
        .long   843967686
        .long   1070618808
        .long   857522493
        .long   1070749478
        .long   862339487
        .long   1070877717
        .long   850054662
        .long   1071003634
        .long   864048556
        .long   1071127332
        .long   868027089
        .long   1071248907
        .long   848093931
        .long   1071368446
        .long   865355299
        .long   1071486034
        .long   848111485
        .long   1071601747
        .long   865557362
        .long   1071715659
        .long   870297525
        .long   1071827839
        .long   863416216
        .long   1071938350
        .long   869675693
        .long   1072047254
        .long   865888071
        .long   1072154608
        .long   825332584
        .long   1072260465
        .long   843309506
        .long   1072364876
        .long   870885636
        .long   1072467891
        .long   869119784
        .long   1072569555
        .long   865466648
        .long   1072669911
        .long   867459244
        .long   1072769001
        .long   861192764
        .long   1072866863
        .long   871247716
        .long   1072963536
        .long   864927982
        .long   1073059054
        .long   869195129
        .long   1073153452
        .long   864849564
        .long   1073246762
        .long   840005936
        .long   1073339014
        .long   852579258
        .long   1073430238
        .long   860852782
        .long   1073520462
        .long   869711141
        .long   1073609714
        .long   862506141
        .long   1073698019
        .long   837959274
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
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
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
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
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
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
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
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
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .globl __jsvml_scbrt_ha_data_internal_avx512
__jsvml_scbrt_ha_data_internal_avx512:
        .long   1065353216
        .long   1067533592
        .long   1070280693
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2999865775
        .long   849849800
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   1067533592
        .long   1067322155
        .long   1067126683
        .long   1066945178
        .long   1066775983
        .long   1066617708
        .long   1066469175
        .long   1066329382
        .long   1066197466
        .long   1066072682
        .long   1065954382
        .long   1065841998
        .long   1065735031
        .long   1065633040
        .long   1065535634
        .long   1065442463
        .long   1065353216
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   2999865775
        .long   849353281
        .long   2992093760
        .long   858369405
        .long   861891413
        .long   3001900484
        .long   2988845984
        .long   3009185201
        .long   3001209163
        .long   847824101
        .long   839380496
        .long   845124191
        .long   851391835
        .long   856440803
        .long   2989578734
        .long   852890174
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
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
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1249902592
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
        .long   1077936128
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
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   1031603580
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   3185812323
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .long   1051372202
        .globl __jsvml_scbrt_ha_data_internal
__jsvml_scbrt_ha_data_internal:
        .long   3212578753
        .long   3212085645
        .long   3211621124
        .long   3211182772
        .long   3210768440
        .long   3210376206
        .long   3210004347
        .long   3209651317
        .long   3209315720
        .long   3208996296
        .long   3208691905
        .long   3208401508
        .long   3208124163
        .long   3207859009
        .long   3207605259
        .long   3207362194
        .long   3207129151
        .long   3206905525
        .long   3206690755
        .long   3206484326
        .long   3206285761
        .long   3206094618
        .long   3205910490
        .long   3205732998
        .long   3205561788
        .long   3205396533
        .long   3205236929
        .long   3205082689
        .long   3204933547
        .long   3204789256
        .long   3204649583
        .long   3204514308
        .long   1065396681
        .long   839340838
        .long   1065482291
        .long   867750258
        .long   1065566215
        .long   851786446
        .long   1065648532
        .long   853949398
        .long   1065729317
        .long   864938789
        .long   1065808640
        .long   864102364
        .long   1065886565
        .long   864209792
        .long   1065963152
        .long   865422805
        .long   1066038457
        .long   867593594
        .long   1066112533
        .long   854482593
        .long   1066185428
        .long   848298042
        .long   1066257188
        .long   860064854
        .long   1066327857
        .long   844792593
        .long   1066397474
        .long   870701309
        .long   1066466079
        .long   872023170
        .long   1066533708
        .long   860255342
        .long   1066600394
        .long   849966899
        .long   1066666169
        .long   863561479
        .long   1066731064
        .long   869115319
        .long   1066795108
        .long   871961375
        .long   1066858329
        .long   859537336
        .long   1066920751
        .long   871954398
        .long   1066982401
        .long   863817578
        .long   1067043301
        .long   861687921
        .long   1067103474
        .long   849594757
        .long   1067162941
        .long   816486846
        .long   1067221722
        .long   858183533
        .long   1067279837
        .long   864500406
        .long   1067337305
        .long   850523240
        .long   1067394143
        .long   808125243
        .long   1067450368
        .long   0
        .long   1067505996
        .long   861173761
        .long   1067588354
        .long   859000219
        .long   1067696217
        .long   823158129
        .long   1067801953
        .long   871826232
        .long   1067905666
        .long   871183196
        .long   1068007450
        .long   839030530
        .long   1068107390
        .long   867690638
        .long   1068205570
        .long   840440923
        .long   1068302063
        .long   868033274
        .long   1068396942
        .long   855856030
        .long   1068490271
        .long   865094453
        .long   1068582113
        .long   860418487
        .long   1068672525
        .long   866225006
        .long   1068761562
        .long   866458226
        .long   1068849275
        .long   865124659
        .long   1068935712
        .long   864837702
        .long   1069020919
        .long   811742505
        .long   1069104937
        .long   869432099
        .long   1069187809
        .long   864584201
        .long   1069269572
        .long   864183978
        .long   1069350263
        .long   844810573
        .long   1069429915
        .long   869245699
        .long   1069508563
        .long   859556409
        .long   1069586236
        .long   870675446
        .long   1069662966
        .long   814190139
        .long   1069738778
        .long   870686941
        .long   1069813702
        .long   861800510
        .long   1069887762
        .long   855649163
        .long   1069960982
        .long   869347119
        .long   1070033387
        .long   864252033
        .long   1070104998
        .long   867276215
        .long   1070175837
        .long   868189817
        .long   1070245925
        .long   849541095
        .long   1070349689
        .long   866633177
        .long   1070485588
        .long   843967686
        .long   1070618808
        .long   857522493
        .long   1070749478
        .long   862339487
        .long   1070877717
        .long   850054662
        .long   1071003634
        .long   864048556
        .long   1071127332
        .long   868027089
        .long   1071248907
        .long   848093931
        .long   1071368446
        .long   865355299
        .long   1071486034
        .long   848111485
        .long   1071601747
        .long   865557362
        .long   1071715659
        .long   870297525
        .long   1071827839
        .long   863416216
        .long   1071938350
        .long   869675693
        .long   1072047254
        .long   865888071
        .long   1072154608
        .long   825332584
        .long   1072260465
        .long   843309506
        .long   1072364876
        .long   870885636
        .long   1072467891
        .long   869119784
        .long   1072569555
        .long   865466648
        .long   1072669911
        .long   867459244
        .long   1072769001
        .long   861192764
        .long   1072866863
        .long   871247716
        .long   1072963536
        .long   864927982
        .long   1073059054
        .long   869195129
        .long   1073153452
        .long   864849564
        .long   1073246762
        .long   840005936
        .long   1073339014
        .long   852579258
        .long   1073430238
        .long   860852782
        .long   1073520462
        .long   869711141
        .long   1073609714
        .long   862506141
        .long   1073698019
        .long   837959274
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   3173551943
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   1031591658
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   3185806905
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
        .long   1051372203
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
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
        .long   8257536
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
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
        .long   3212967936
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
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   256
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   85
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
        .long   1365
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
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   2155872256
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
        .long   4278190079
_2il0floatpacket_46:
        .long   0xffffffff, 0x00000000, 0xffffffff, 0x00000000
_2il0floatpacket_47:
        .long   0x007fffff
_2il0floatpacket_48:
        .long   0x007e0000
_2il0floatpacket_49:
        .long   0xbf800000
_2il0floatpacket_50:
        .long   0xbf820000
_2il0floatpacket_51:
        .long   0xbd288f47
_2il0floatpacket_52:
        .long   0x3d7cd6ea
_2il0floatpacket_53:
        .long   0xbde38e39
_2il0floatpacket_54:
        .long   0x3eaaaaab
        .data
#endif
