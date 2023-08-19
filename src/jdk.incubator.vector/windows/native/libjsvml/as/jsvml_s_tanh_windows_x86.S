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
        .globl __jsvml_tanhf4_ha_l9

__jsvml_tanhf4_ha_l9:


.L_B1_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L1:

        sub       rsp, 312
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [192+rsp], xmm15
        vmovdqa   xmm15, xmm0
        vmovups   XMMWORD PTR [208+rsp], xmm14
        vpxor     xmm3, xmm3, xmm3
        vmovups   XMMWORD PTR [224+rsp], xmm13
        vmovups   XMMWORD PTR [240+rsp], xmm12
        vmovups   XMMWORD PTR [256+rsp], xmm11
        vmovups   XMMWORD PTR [272+rsp], xmm10
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpand     xmm4, xmm15, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3200]
        and       r13, -64
        vpsubd    xmm2, xmm4, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3328]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3392]
        vpcmpgtd  xmm1, xmm2, xmm3
        vpcmpgtd  xmm5, xmm4, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264]
        vpand     xmm12, xmm2, xmm1
        vpcmpgtd  xmm10, xmm2, xmm11
        vmovmskps r8d, xmm5
        vandps    xmm13, xmm15, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        vblendvps xmm5, xmm12, xmm11, xmm10
        vandps    xmm14, xmm15, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072]
        vpsrld    xmm4, xmm5, 15
        test      r8d, r8d
        vmovd     ecx, xmm4
        vcvtps2pd ymm13, xmm13
        vpextrd   eax, xmm4, 1
        movsxd    rcx, ecx
        movsxd    rax, eax
        vpextrd   r9d, xmm4, 2
        vpextrd   r10d, xmm4, 3
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rcx]
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rax]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rax]
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rcx]
        mov       QWORD PTR [296+rsp], r13
        vinsertf128 ymm1, ymm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r9], 1
        vinsertf128 ymm2, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r10], 1
        vunpcklpd ymm12, ymm1, ymm2
        vunpckhpd ymm11, ymm1, ymm2
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rax]
        vinsertf128 ymm4, ymm10, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r9], 1
        vinsertf128 ymm3, ymm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r10], 1
        vunpcklpd ymm10, ymm4, ymm3
        vunpckhpd ymm5, ymm4, ymm3
        vinsertf128 ymm2, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r9], 1
        vinsertf128 ymm3, ymm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r10], 1
        vunpcklpd ymm4, ymm2, ymm3
        vunpckhpd ymm3, ymm2, ymm3
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rcx]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rax]
        vinsertf128 ymm1, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r9], 1
        vinsertf128 ymm2, ymm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r10], 1
        vunpcklpd ymm0, ymm1, ymm2
        vunpckhpd ymm1, ymm1, ymm2
        vfmadd213pd ymm1, ymm13, ymm0
        vfmadd213pd ymm1, ymm13, ymm3
        vfmadd213pd ymm1, ymm13, ymm4
        vfmadd213pd ymm1, ymm13, ymm5
        vfmadd213pd ymm1, ymm13, ymm10
        vfmadd213pd ymm1, ymm13, ymm11
        vfmadd213pd ymm1, ymm13, ymm12
        vcvtpd2ps xmm0, ymm1
        vorps     xmm0, xmm0, xmm14
        jne       .L_B1_3

.L_B1_2:

        vzeroupper
        vmovups   xmm10, XMMWORD PTR [272+rsp]
        vmovups   xmm11, XMMWORD PTR [256+rsp]
        vmovups   xmm12, XMMWORD PTR [240+rsp]
        vmovups   xmm13, XMMWORD PTR [224+rsp]
        vmovups   xmm14, XMMWORD PTR [208+rsp]
        vmovups   xmm15, XMMWORD PTR [192+rsp]
        mov       r13, QWORD PTR [288+rsp]
        add       rsp, 312
        ret

.L_B1_3:

        vmovups   XMMWORD PTR [r13], xmm15
        vmovups   XMMWORD PTR [64+r13], xmm0

.L_B1_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

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

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B1_8
        .align    16, 0x90

.L_B1_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf4_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_l9_B1_B3:
        .long   1071105
        .long   2413656
        .long   1157200
        .long   1095751
        .long   1034302
        .long   972853
        .long   911400
        .long   849947
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanhf4_ha_l9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_l9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B1_1
        .rva    .L_B1_6
        .rva    _unwind___jsvml_tanhf4_ha_l9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B1_6
        .rva    .L_B1_11
        .rva    _unwind___jsvml_tanhf4_ha_l9_B6_B10

        .data

        .text

TXTST1:

        .text

        .align    16, 0x90
        .globl __jsvml_tanhf4_ha_e9

__jsvml_tanhf4_ha_e9:


.L_B2_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L20:

        sub       rsp, 312
        lea       rdx, QWORD PTR [rip+__ImageBase]
        vmovups   XMMWORD PTR [256+rsp], xmm14
        vpxor     xmm4, xmm4, xmm4
        vmovups   XMMWORD PTR [192+rsp], xmm13
        vmovups   XMMWORD PTR [208+rsp], xmm12
        vmovups   XMMWORD PTR [224+rsp], xmm11
        vmovups   XMMWORD PTR [240+rsp], xmm10
        vmovups   XMMWORD PTR [272+rsp], xmm9
        mov       QWORD PTR [288+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        vpand     xmm3, xmm0, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3200]
        and       r13, -64
        vpcmpgtd  xmm2, xmm3, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264]
        vmovmskps r8d, xmm2
        vpsubd    xmm2, xmm3, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3328]
        vmovups   xmm9, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3392]
        vpcmpgtd  xmm5, xmm2, xmm4
        vpand     xmm3, xmm2, xmm5
        vpcmpgtd  xmm4, xmm2, xmm9
        vblendvps xmm5, xmm3, xmm9, xmm4
        vandps    xmm11, xmm0, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        vpsrld    xmm10, xmm5, 15
        vmovd     ecx, xmm10
        vandps    xmm1, xmm0, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072]
        vcvtps2pd ymm11, xmm11
        vpextrd   eax, xmm10, 1
        movsxd    rcx, ecx
        movsxd    rax, eax
        vpextrd   r9d, xmm10, 2
        vpextrd   r10d, xmm10, 3
        movsxd    r9, r9d
        movsxd    r10, r10d
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rcx]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rax]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rax]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rcx]
        mov       QWORD PTR [296+rsp], r13
        vinsertf128 ymm14, ymm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r9], 1
        vinsertf128 ymm3, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r10], 1
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rcx]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rax]
        vunpcklpd ymm2, ymm14, ymm3
        vunpckhpd ymm3, ymm14, ymm3
        vinsertf128 ymm9, ymm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r9], 1
        vinsertf128 ymm10, ymm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r10], 1
        vunpcklpd ymm4, ymm9, ymm10
        vunpckhpd ymm5, ymm9, ymm10
        vinsertf128 ymm14, ymm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r9], 1
        vinsertf128 ymm10, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r10], 1
        vunpcklpd ymm9, ymm14, ymm10
        vunpckhpd ymm10, ymm14, ymm10
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rcx]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rax]
        vinsertf128 ymm13, ymm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r9], 1
        vinsertf128 ymm14, ymm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r10], 1
        vunpcklpd ymm12, ymm13, ymm14
        vunpckhpd ymm13, ymm13, ymm14
        vmulpd    ymm13, ymm11, ymm13
        vaddpd    ymm12, ymm13, ymm12
        vmulpd    ymm14, ymm11, ymm12
        vaddpd    ymm10, ymm14, ymm10
        vmulpd    ymm10, ymm11, ymm10
        vaddpd    ymm9, ymm10, ymm9
        vmulpd    ymm9, ymm11, ymm9
        vaddpd    ymm5, ymm9, ymm5
        vmulpd    ymm5, ymm11, ymm5
        vaddpd    ymm4, ymm5, ymm4
        vmulpd    ymm4, ymm11, ymm4
        vaddpd    ymm3, ymm4, ymm3
        vmulpd    ymm11, ymm11, ymm3
        vaddpd    ymm2, ymm11, ymm2
        vcvtpd2ps xmm3, ymm2
        vorps     xmm1, xmm3, xmm1
        test      r8d, r8d
        jne       .L_B2_3

.L_B2_2:

        vmovaps   xmm0, xmm1
        mov       r13, QWORD PTR [288+rsp]
        vzeroupper
        vmovups   xmm9, XMMWORD PTR [272+rsp]
        vmovups   xmm10, XMMWORD PTR [240+rsp]
        vmovups   xmm11, XMMWORD PTR [224+rsp]
        vmovups   xmm12, XMMWORD PTR [208+rsp]
        vmovups   xmm13, XMMWORD PTR [192+rsp]
        vmovups   xmm14, XMMWORD PTR [256+rsp]
        add       rsp, 312
        ret

.L_B2_3:

        vmovups   XMMWORD PTR [r13], xmm0
        vmovups   XMMWORD PTR [64+r13], xmm1

.L_B2_6:

        xor       eax, eax
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, eax
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

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
        vmovups   xmm1, XMMWORD PTR [64+r13]
        jmp       .L_B2_2

.L_B2_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B2_8
        .align    16, 0x90

.L_B2_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf4_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_e9_B1_B3:
        .long   1070081
        .long   2413652
        .long   1153100
        .long   1026115
        .long   964666
        .long   903217
        .long   841768
        .long   1107995
        .long   2556171

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_tanhf4_ha_e9_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_e9_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B2_1
        .rva    .L_B2_6
        .rva    _unwind___jsvml_tanhf4_ha_e9_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B2_6
        .rva    .L_B2_11
        .rva    _unwind___jsvml_tanhf4_ha_e9_B6_B10

        .data

        .text

TXTST2:

        .text

        .align    16, 0x90
        .globl __jsvml_tanhf16_ha_z0

__jsvml_tanhf16_ha_z0:


.L_B3_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L39:

        sub       rsp, 1336
        mov       QWORD PTR [1320+rsp], r13
        lea       r13, QWORD PTR [1183+rsp]
        vmovups   zmm24, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal]
        and       r13, -64
        vmovups   zmm25, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+896]
        vmovups   zmm30, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+1024]
        vmovups   zmm26, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+768]
        vmovups   zmm27, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+640]
        vmovups   zmm28, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+512]
        vmovups   zmm31, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+256]
        vandps    zmm23, zmm0, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        vpternlogd zmm1, zmm1, zmm1, 255
        mov       QWORD PTR [1328+rsp], r13
        vpandd    zmm2, zmm0, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+1152]
        vpsubd    zmm3, zmm2, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+1216]
        vpcmpd    k1, zmm2, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264], 2
        vpxord    zmm4, zmm4, zmm4
        vpmaxsd   zmm5, zmm3, zmm4
        vpminsd   zmm22, zmm5, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+1280]
        vpsrld    zmm29, zmm22, 21
        vmovups   zmm3, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+128]
        vpermt2ps zmm24, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+64]
        vpermt2ps zmm25, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+960]
        vpermt2ps zmm30, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+1088]
        vpermt2ps zmm26, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+832]
        vpermt2ps zmm27, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+704]
        vpermt2ps zmm28, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+576]
        vpermt2ps zmm31, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+320]
        vpermt2ps zmm3, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+192]
        vpandnd   zmm1{k1}, zmm2, zmm2
        vsubps    zmm2, zmm23, zmm24 {rn-sae}
        vptestmd  k0, zmm1, zmm1
        vmovups   zmm1, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+384]
        vfmadd213ps zmm30, zmm2, zmm25 {rn-sae}
        kmovw     r8d, k0
        vfmadd213ps zmm30, zmm2, zmm26 {rn-sae}
        vpermt2ps zmm1, zmm29, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+448]
        vfmadd213ps zmm30, zmm2, zmm27 {rn-sae}
        vfmadd213ps zmm30, zmm2, zmm28 {rn-sae}
        vmulps    zmm25, zmm30, zmm2 {rn-sae}
        vfmadd213ps zmm25, zmm2, zmm31 {rn-sae}
        vfmadd213ps zmm2, zmm1, zmm25 {rn-sae}
        vaddps    zmm1, zmm2, zmm3 {rn-sae}
        vpternlogd zmm1, zmm0, ZMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072], 248
        test      r8d, r8d
        jne       .L_B3_3

.L_B3_2:

        vmovaps   zmm0, zmm1
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

        vmovups   ZMMWORD PTR [r13], zmm0
        vmovups   ZMMWORD PTR [64+r13], zmm1
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
        vmovups   zmm1, ZMMWORD PTR [64+r13]
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

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B3_13
        .align    16, 0x90

.L_B3_16:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf16_ha_z0\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf16_ha_z0_B1_B9:
        .long   267009
        .long   10867731
        .long   10944779

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B3_1
        .rva    .L_B3_11
        .rva    _unwind___jsvml_tanhf16_ha_z0_B1_B9

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf16_ha_z0_B11_B15:
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
        .rva    _unwind___jsvml_tanhf16_ha_z0_B11_B15

        .data

        .text

TXTST3:

        .text

        .align    16, 0x90
        .globl __jsvml_tanhf8_ha_l9

__jsvml_tanhf8_ha_l9:


.L_B4_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L90:

        push      rbx
        push      rsi
        push      rdi
        sub       rsp, 560
        lea       r9, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [224+rsp], ymm15
        vmovups   YMMWORD PTR [256+rsp], ymm14
        vmovups   YMMWORD PTR [288+rsp], ymm13
        vmovups   YMMWORD PTR [320+rsp], ymm12
        vmovups   YMMWORD PTR [352+rsp], ymm11
        vmovups   YMMWORD PTR [384+rsp], ymm10
        vmovups   YMMWORD PTR [416+rsp], ymm9
        vmovups   YMMWORD PTR [448+rsp], ymm8
        vmovups   YMMWORD PTR [480+rsp], ymm7
        vmovups   YMMWORD PTR [512+rsp], ymm6
        vpxor     ymm10, ymm10, ymm10
        mov       QWORD PTR [544+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        and       r13, -64
        vmovups   YMMWORD PTR [32+r13], ymm0
        vmovups   ymm9, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3392]
        vandps    ymm12, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        vandps    ymm5, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072]
        vpand     ymm0, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3200]
        vmovups   YMMWORD PTR [r13], ymm5
        vpsubd    ymm8, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3328]
        vpcmpgtd  ymm11, ymm8, ymm10
        vpand     ymm6, ymm8, ymm11
        vpcmpgtd  ymm7, ymm8, ymm9
        vblendvps ymm2, ymm6, ymm9, ymm7
        vpsrld    ymm4, ymm2, 15
        vpcmpgtd  ymm3, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264]
        vmovmskps ebx, ymm3
        mov       QWORD PTR [552+rsp], r13
        test      ebx, ebx
        vextracti128 xmm5, ymm4, 1
        vmovd     r10d, xmm4
        vmovd     ecx, xmm5
        vpextrd   r8d, xmm4, 1
        movsxd    r10, r10d
        movsxd    r8, r8d
        vpextrd   edi, xmm4, 2
        vpextrd   esi, xmm4, 3
        vpextrd   edx, xmm5, 1
        movsxd    rdi, edi
        movsxd    rsi, esi
        movsxd    rcx, ecx
        movsxd    rdx, edx
        vpextrd   eax, xmm5, 2
        vpextrd   r11d, xmm5, 3
        movsxd    rax, eax
        movsxd    r11, r11d
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r10]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r8]
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rdx]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rdx]
        vmovupd   xmm9, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r10]
        vmovupd   xmm7, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r8]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rcx]
        vinsertf128 ymm0, ymm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rdi], 1
        vinsertf128 ymm10, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rsi], 1
        vunpcklpd ymm15, ymm0, ymm10
        vmovupd   YMMWORD PTR [64+r13], ymm15
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r8]
        vunpckhpd ymm10, ymm0, ymm10
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rcx]
        vinsertf128 ymm8, ymm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rax], 1
        vinsertf128 ymm6, ymm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r11], 1
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r10]
        vunpcklpd ymm11, ymm8, ymm6
        vmovupd   YMMWORD PTR [96+r13], ymm11
        vunpckhpd ymm11, ymm8, ymm6
        vinsertf128 ymm14, ymm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r11], 1
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rdx]
        vinsertf128 ymm5, ymm9, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rdi], 1
        vinsertf128 ymm3, ymm7, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rsi], 1
        vinsertf128 ymm13, ymm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rax], 1
        vunpcklpd ymm8, ymm5, ymm3
        vunpckhpd ymm6, ymm5, ymm3
        vunpcklpd ymm9, ymm13, ymm14
        vunpckhpd ymm7, ymm13, ymm14
        vinsertf128 ymm2, ymm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rdi], 1
        vinsertf128 ymm5, ymm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rsi], 1
        vinsertf128 ymm3, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rax], 1
        vinsertf128 ymm13, ymm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r11], 1
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r8]
        vunpcklpd ymm4, ymm2, ymm5
        vunpckhpd ymm2, ymm2, ymm5
        vunpcklpd ymm5, ymm3, ymm13
        vunpckhpd ymm3, ymm3, ymm13
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r10]
        vmovupd   xmm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rcx]
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rdx]
        vinsertf128 ymm14, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rsi], 1
        vinsertf128 ymm13, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rdi], 1
        vinsertf128 ymm15, ymm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rax], 1
        vinsertf128 ymm0, ymm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r11], 1
        vunpcklpd ymm1, ymm13, ymm14
        vunpckhpd ymm14, ymm13, ymm14
        vunpcklpd ymm13, ymm15, ymm0
        vunpckhpd ymm0, ymm15, ymm0
        vcvtps2pd ymm15, xmm12
        vextractf128 xmm12, ymm12, 1
        vfmadd213pd ymm14, ymm15, ymm1
        vcvtps2pd ymm12, xmm12
        vfmadd213pd ymm14, ymm15, ymm2
        vfmadd213pd ymm0, ymm12, ymm13
        vfmadd213pd ymm14, ymm15, ymm4
        vfmadd213pd ymm0, ymm12, ymm3
        vfmadd213pd ymm14, ymm15, ymm6
        vfmadd213pd ymm0, ymm12, ymm5
        vfmadd213pd ymm14, ymm15, ymm8
        vfmadd213pd ymm0, ymm12, ymm7
        vfmadd213pd ymm14, ymm15, ymm10
        vfmadd213pd ymm0, ymm12, ymm9
        vfmadd213pd ymm14, ymm15, YMMWORD PTR [64+r13]
        vfmadd213pd ymm0, ymm12, ymm11
        vcvtpd2ps xmm1, ymm14
        vfmadd213pd ymm0, ymm12, YMMWORD PTR [96+r13]
        vcvtpd2ps xmm0, ymm0
        vinsertf128 ymm2, ymm1, xmm0, 1
        vorps     ymm0, ymm2, YMMWORD PTR [r13]
        jne       .L_B4_3

.L_B4_2:

        vmovups   ymm6, YMMWORD PTR [512+rsp]
        vmovups   ymm7, YMMWORD PTR [480+rsp]
        vmovups   ymm8, YMMWORD PTR [448+rsp]
        vmovups   ymm9, YMMWORD PTR [416+rsp]
        vmovups   ymm10, YMMWORD PTR [384+rsp]
        vmovups   ymm11, YMMWORD PTR [352+rsp]
        vmovups   ymm12, YMMWORD PTR [320+rsp]
        vmovups   ymm13, YMMWORD PTR [288+rsp]
        vmovups   ymm14, YMMWORD PTR [256+rsp]
        vmovups   ymm15, YMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [544+rsp]
        add       rsp, 560
        pop       rdi
        pop       rsi
        pop       rbx
        ret

.L_B4_3:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1

.L_B4_6:

        xor       esi, esi

.L_B4_7:

        bt        ebx, esi
        jc        .L_B4_10

.L_B4_8:

        inc       esi
        cmp       esi, 8
        jl        .L_B4_7

.L_B4_9:

        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B4_2

.L_B4_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rsi*4]
        lea       rdx, QWORD PTR [64+r13+rsi*4]

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B4_8
        .align    16, 0x90

.L_B4_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf8_ha_l9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf8_ha_l9_B1_B10:
        .long   1801217
        .long   4510844
        .long   2123887
        .long   1996902
        .long   1869917
        .long   1742932
        .long   1615947
        .long   1488962
        .long   1361977
        .long   1234992
        .long   1108007
        .long   981022
        .long   4587790
        .long   1611034631
        .long   12293

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B4_1
        .rva    .L_B4_11
        .rva    _unwind___jsvml_tanhf8_ha_l9_B1_B10

        .data

        .text

TXTST4:

        .text

        .align    16, 0x90
        .globl __jsvml_tanhf8_ha_e9

__jsvml_tanhf8_ha_e9:


.L_B5_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L121:

        push      rbx
        push      rsi
        push      rdi
        sub       rsp, 560
        lea       r9, QWORD PTR [rip+__ImageBase]
        vmovups   YMMWORD PTR [224+rsp], ymm15
        vmovups   YMMWORD PTR [384+rsp], ymm14
        vmovups   YMMWORD PTR [512+rsp], ymm13
        vmovups   YMMWORD PTR [256+rsp], ymm12
        vmovups   YMMWORD PTR [288+rsp], ymm11
        vpxor     xmm12, xmm12, xmm12
        vmovups   YMMWORD PTR [320+rsp], ymm10
        vmovups   YMMWORD PTR [352+rsp], ymm9
        vmovups   YMMWORD PTR [416+rsp], ymm8
        vmovups   YMMWORD PTR [448+rsp], ymm7
        vmovups   YMMWORD PTR [480+rsp], ymm6
        mov       QWORD PTR [544+rsp], r13
        lea       r13, QWORD PTR [95+rsp]
        and       r13, -64
        vmovups   YMMWORD PTR [32+r13], ymm0
        vmovups   xmm3, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3200]
        vmovups   xmm14, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264]
        vmovups   xmm11, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3328]
        vmovups   xmm10, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3392]
        vandps    ymm15, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        vandps    ymm5, ymm0, YMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072]
        vmovups   YMMWORD PTR [r13], ymm5
        mov       QWORD PTR [552+rsp], r13
        vpand     xmm5, xmm0, xmm3
        vextractf128 xmm4, ymm0, 1
        vpcmpgtd  xmm9, xmm5, xmm14
        vpand     xmm4, xmm4, xmm3
        vpsubd    xmm3, xmm5, xmm11
        vpcmpgtd  xmm8, xmm4, xmm14
        vpsubd    xmm13, xmm4, xmm11
        vpackssdw xmm7, xmm9, xmm8
        vpcmpgtd  xmm11, xmm3, xmm12
        vpacksswb xmm6, xmm7, xmm12
        vpcmpgtd  xmm12, xmm13, xmm12
        vpand     xmm1, xmm3, xmm11
        vpcmpgtd  xmm2, xmm3, xmm10
        vpand     xmm0, xmm13, xmm12
        vpcmpgtd  xmm14, xmm13, xmm10
        vblendvps xmm11, xmm1, xmm10, xmm2
        vblendvps xmm10, xmm0, xmm10, xmm14
        vpsrld    xmm14, xmm11, 15
        vpsrld    xmm7, xmm10, 15
        vmovd     r10d, xmm14
        vmovd     ecx, xmm7
        vpmovmskb ebx, xmm6
        vpextrd   r8d, xmm14, 1
        vpextrd   edx, xmm7, 1
        movsxd    r10, r10d
        movsxd    r8, r8d
        movsxd    rcx, ecx
        movsxd    rdx, edx
        vpextrd   edi, xmm14, 2
        vpextrd   esi, xmm14, 3
        vpextrd   eax, xmm7, 2
        vpextrd   r11d, xmm7, 3
        movsxd    rdi, edi
        movsxd    rsi, esi
        movsxd    rax, eax
        movsxd    r11, r11d
        vmovupd   xmm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r10]
        vmovupd   xmm11, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r8]
        vmovupd   xmm6, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rcx]
        vmovupd   xmm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rdx]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r10]
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r8]
        vinsertf128 ymm9, ymm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rdi], 1
        vinsertf128 ymm8, ymm11, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rsi], 1
        vinsertf128 ymm3, ymm6, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+rax], 1
        vinsertf128 ymm1, ymm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+r9+r11], 1
        vunpcklpd ymm10, ymm9, ymm8
        vunpcklpd ymm4, ymm3, ymm1
        vmovupd   YMMWORD PTR [64+r13], ymm10
        vmovupd   YMMWORD PTR [96+r13], ymm4
        vmovupd   xmm10, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rcx]
        vmovupd   xmm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r10]
        vunpckhpd ymm11, ymm9, ymm8
        vunpckhpd ymm12, ymm3, ymm1
        vmovupd   xmm8, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rdx]
        vmovupd   xmm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r8]
        vinsertf128 ymm0, ymm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rdi], 1
        vinsertf128 ymm14, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rsi], 1
        vunpcklpd ymm9, ymm0, ymm14
        vunpckhpd ymm7, ymm0, ymm14
        vmovupd   xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rcx]
        vmovupd   xmm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rdx]
        vinsertf128 ymm6, ymm10, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+rax], 1
        vinsertf128 ymm5, ymm8, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+r9+r11], 1
        vinsertf128 ymm1, ymm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rdi], 1
        vinsertf128 ymm2, ymm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rsi], 1
        vunpcklpd ymm10, ymm6, ymm5
        vunpckhpd ymm8, ymm6, ymm5
        vunpcklpd ymm5, ymm1, ymm2
        vunpckhpd ymm3, ymm1, ymm2
        vmovupd   xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r10]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r8]
        vinsertf128 ymm14, ymm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+rax], 1
        vinsertf128 ymm4, ymm0, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+r9+r11], 1
        vunpcklpd ymm6, ymm14, ymm4
        vunpckhpd ymm4, ymm14, ymm4
        vinsertf128 ymm14, ymm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rdi], 1
        vinsertf128 ymm13, ymm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rsi], 1
        vunpcklpd ymm1, ymm14, ymm13
        vunpckhpd ymm0, ymm14, ymm13
        vmovupd   xmm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rcx]
        vmovupd   xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rdx]
        vinsertf128 ymm14, ymm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+rax], 1
        vinsertf128 ymm13, ymm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+r9+r11], 1
        vunpcklpd ymm2, ymm14, ymm13
        vunpckhpd ymm13, ymm14, ymm13
        vcvtps2pd ymm14, xmm15
        vextractf128 xmm15, ymm15, 1
        vmulpd    ymm0, ymm14, ymm0
        vcvtps2pd ymm15, xmm15
        vaddpd    ymm1, ymm0, ymm1
        vmulpd    ymm0, ymm15, ymm13
        vmulpd    ymm1, ymm14, ymm1
        vaddpd    ymm2, ymm0, ymm2
        vaddpd    ymm0, ymm1, ymm3
        vmulpd    ymm3, ymm15, ymm2
        vmulpd    ymm1, ymm14, ymm0
        vaddpd    ymm2, ymm3, ymm4
        vaddpd    ymm0, ymm1, ymm5
        vmulpd    ymm5, ymm15, ymm2
        vaddpd    ymm1, ymm5, ymm6
        vmulpd    ymm6, ymm14, ymm0
        vaddpd    ymm0, ymm6, ymm7
        vmulpd    ymm7, ymm15, ymm1
        vmulpd    ymm1, ymm14, ymm0
        vaddpd    ymm2, ymm7, ymm8
        vaddpd    ymm0, ymm1, ymm9
        vmulpd    ymm9, ymm15, ymm2
        vmulpd    ymm1, ymm14, ymm0
        vaddpd    ymm2, ymm9, ymm10
        vaddpd    ymm0, ymm1, ymm11
        vmulpd    ymm11, ymm15, ymm2
        vaddpd    ymm1, ymm11, ymm12
        vmulpd    ymm12, ymm14, ymm0
        vmulpd    ymm4, ymm15, ymm1
        vaddpd    ymm0, ymm12, YMMWORD PTR [64+r13]
        vaddpd    ymm10, ymm4, YMMWORD PTR [96+r13]
        vcvtpd2ps xmm8, ymm0
        vcvtpd2ps xmm13, ymm10
        vinsertf128 ymm14, ymm8, xmm13, 1
        vorps     ymm0, ymm14, YMMWORD PTR [r13]
        test      bl, bl
        jne       .L_B5_3

.L_B5_2:

        vmovups   ymm6, YMMWORD PTR [480+rsp]
        vmovups   ymm7, YMMWORD PTR [448+rsp]
        vmovups   ymm8, YMMWORD PTR [416+rsp]
        vmovups   ymm9, YMMWORD PTR [352+rsp]
        vmovups   ymm10, YMMWORD PTR [320+rsp]
        vmovups   ymm11, YMMWORD PTR [288+rsp]
        vmovups   ymm12, YMMWORD PTR [256+rsp]
        vmovups   ymm13, YMMWORD PTR [512+rsp]
        vmovups   ymm14, YMMWORD PTR [384+rsp]
        vmovups   ymm15, YMMWORD PTR [224+rsp]
        mov       r13, QWORD PTR [544+rsp]
        add       rsp, 560
        pop       rdi
        pop       rsi
        pop       rbx
        ret

.L_B5_3:

        vmovups   ymm1, YMMWORD PTR [32+r13]
        vmovups   YMMWORD PTR [64+r13], ymm0
        vmovups   YMMWORD PTR [r13], ymm1
        test      ebx, ebx
        je        .L_B5_2

.L_B5_6:

        xor       esi, esi

.L_B5_7:

        bt        ebx, esi
        jc        .L_B5_10

.L_B5_8:

        inc       esi
        cmp       esi, 8
        jl        .L_B5_7

.L_B5_9:

        vmovups   ymm0, YMMWORD PTR [64+r13]
        jmp       .L_B5_2

.L_B5_10:

        vzeroupper
        lea       rcx, QWORD PTR [r13+rsi*4]
        lea       rdx, QWORD PTR [64+r13+rsi*4]

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B5_8
        .align    16, 0x90

.L_B5_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf8_ha_e9\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf8_ha_e9_B1_B10:
        .long   1801217
        .long   4510844
        .long   1992820
        .long   1865835
        .long   1738850
        .long   1480793
        .long   1353808
        .long   1226818
        .long   1099833
        .long   2152496
        .long   1632295
        .long   981022
        .long   4587790
        .long   1611034631
        .long   12293

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B5_1
        .rva    .L_B5_11
        .rva    _unwind___jsvml_tanhf8_ha_e9_B1_B10

        .data

        .text

TXTST5:

        .text

        .align    16, 0x90
        .globl __jsvml_tanhf4_ha_ex

__jsvml_tanhf4_ha_ex:


.L_B6_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L152:

        sub       rsp, 424
        movaps    xmm4, xmm0
        movups    XMMWORD PTR [256+rsp], xmm15
        lea       rdx, QWORD PTR [rip+__ImageBase]
        movups    XMMWORD PTR [272+rsp], xmm14
        pxor      xmm1, xmm1
        movups    XMMWORD PTR [288+rsp], xmm13
        movups    XMMWORD PTR [304+rsp], xmm12
        movups    XMMWORD PTR [320+rsp], xmm11
        movups    XMMWORD PTR [336+rsp], xmm10
        movups    XMMWORD PTR [192+rsp], xmm9
        movups    XMMWORD PTR [240+rsp], xmm8
        movups    XMMWORD PTR [208+rsp], xmm7
        movups    XMMWORD PTR [224+rsp], xmm6
        mov       QWORD PTR [400+rsp], r13
        lea       r13, QWORD PTR [111+rsp]
        movdqu    xmm11, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3200]
        and       r13, -64
        pand      xmm11, xmm4
        movdqa    xmm5, xmm11
        psubd     xmm11, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3328]
        movdqu    xmm7, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3392]
        movdqa    xmm12, xmm11
        movdqa    xmm2, xmm11
        pcmpgtd   xmm12, xmm7
        pcmpgtd   xmm2, xmm1
        movdqa    xmm10, xmm12
        pand      xmm11, xmm2
        andps     xmm7, xmm12
        andnps    xmm10, xmm11
        orps      xmm10, xmm7
        psrld     xmm10, 15
        movups    xmm3, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3072]
        movd      ecx, xmm10
        andps     xmm3, xmm4
        pshufd    xmm8, xmm10, 1
        pshufd    xmm9, xmm10, 2
        movd      eax, xmm8
        movups    XMMWORD PTR [352+rsp], xmm3
        pshufd    xmm3, xmm10, 3
        movd      r9d, xmm9
        movd      r10d, xmm3
        movups    xmm0, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3136]
        pcmpgtd   xmm5, XMMWORD PTR [rip+__jsvml_stanh_ha_data_internal+3264]
        andps     xmm0, xmm4
        movsxd    rcx, ecx
        movsxd    rax, eax
        movsxd    r9, r9d
        movsxd    r10, r10d
        movups    xmm11, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rcx]
        movups    XMMWORD PTR [32+rsp], xmm4
        movaps    xmm4, xmm11
        movmskps  r8d, xmm5
        movups    xmm5, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+rax]
        movups    xmm12, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r9]
        movups    xmm7, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rcx]
        movaps    xmm6, xmm12
        unpcklpd  xmm4, xmm5
        movaps    xmm9, xmm7
        movups    xmm1, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1344+rdx+r10]
        movups    XMMWORD PTR [368+rsp], xmm4
        movups    xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+rax]
        movups    xmm8, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r9]
        movups    xmm4, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r9]
        movaps    xmm10, xmm8
        unpcklpd  xmm6, xmm1
        movups    XMMWORD PTR [384+rsp], xmm6
        movaps    xmm6, xmm4
        movups    xmm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1360+rdx+r10]
        movups    xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+r10]
        unpcklpd  xmm9, xmm13
        unpckhpd  xmm7, xmm13
        movups    xmm3, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rcx]
        movups    xmm13, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rcx]
        unpckhpd  xmm11, xmm5
        movaps    xmm5, xmm3
        unpckhpd  xmm12, xmm1
        movaps    xmm1, xmm13
        unpcklpd  xmm10, xmm14
        unpckhpd  xmm8, xmm14
        movups    xmm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1376+rdx+rax]
        unpcklpd  xmm6, xmm2
        unpckhpd  xmm4, xmm2
        movups    xmm2, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+rax]
        movups    xmm14, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r9]
        unpcklpd  xmm5, xmm15
        unpckhpd  xmm3, xmm15
        movups    xmm15, XMMWORD PTR ["__jsvml_stanh_ha_data_internal"@imgrel+1392+rdx+r10]
        unpcklpd  xmm1, xmm2
        unpckhpd  xmm13, xmm2
        movaps    xmm2, xmm14
        unpcklpd  xmm2, xmm15
        unpckhpd  xmm14, xmm15
        cvtps2pd  xmm15, xmm0
        movhlps   xmm0, xmm0
        cvtps2pd  xmm0, xmm0
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm1
        addpd     xmm14, xmm2
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm3
        addpd     xmm14, xmm4
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm5
        addpd     xmm14, xmm6
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm7
        addpd     xmm14, xmm8
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm9
        addpd     xmm14, xmm10
        mulpd     xmm13, xmm15
        mulpd     xmm14, xmm0
        addpd     xmm13, xmm11
        addpd     xmm14, xmm12
        mulpd     xmm15, xmm13
        mulpd     xmm0, xmm14
        addpd     xmm15, XMMWORD PTR [368+rsp]
        addpd     xmm0, XMMWORD PTR [384+rsp]
        cvtpd2ps  xmm2, xmm15
        cvtpd2ps  xmm1, xmm0
        movlhps   xmm2, xmm1
        mov       QWORD PTR [408+rsp], r13
        orps      xmm2, XMMWORD PTR [352+rsp]
        test      r8d, r8d
        jne       .L_B6_3

.L_B6_2:

        movups    xmm6, XMMWORD PTR [224+rsp]
        movaps    xmm0, xmm2
        movups    xmm7, XMMWORD PTR [208+rsp]
        movups    xmm8, XMMWORD PTR [240+rsp]
        movups    xmm9, XMMWORD PTR [192+rsp]
        movups    xmm10, XMMWORD PTR [336+rsp]
        movups    xmm11, XMMWORD PTR [320+rsp]
        movups    xmm12, XMMWORD PTR [304+rsp]
        movups    xmm13, XMMWORD PTR [288+rsp]
        movups    xmm14, XMMWORD PTR [272+rsp]
        movups    xmm15, XMMWORD PTR [256+rsp]
        mov       r13, QWORD PTR [400+rsp]
        add       rsp, 424
        ret

.L_B6_3:

        movups    xmm1, XMMWORD PTR [32+rsp]
        movups    XMMWORD PTR [r13], xmm1
        movups    XMMWORD PTR [64+r13], xmm2

.L_B6_6:

        xor       ecx, ecx
        mov       QWORD PTR [40+rsp], rbx
        mov       ebx, ecx
        mov       QWORD PTR [32+rsp], rsi
        mov       esi, r8d

.L_B6_7:

        mov       ecx, ebx
        mov       eax, 1
        shl       eax, cl
        test      esi, eax
        jne       .L_B6_10

.L_B6_8:

        inc       ebx
        cmp       ebx, 4
        jl        .L_B6_7

.L_B6_9:

        mov       rbx, QWORD PTR [40+rsp]
        mov       rsi, QWORD PTR [32+rsp]
        movups    xmm2, XMMWORD PTR [64+r13]
        jmp       .L_B6_2

.L_B6_10:

        lea       rcx, QWORD PTR [r13+rbx*4]
        lea       rdx, QWORD PTR [64+r13+rbx*4]

        call      __jsvml_stanh_ha_cout_rare_internal
        jmp       .L_B6_8
        .align    16, 0x90

.L_B6_11:

        .section .drectve
        .ascii " -export \"__jsvml_tanhf4_ha_ex\""

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_ex_B1_B3:
        .long   1603841
        .long   3331193
        .long   944241
        .long   882793
        .long   1017953
        .long   825432
        .long   1419343
        .long   1357894
        .long   1296445
        .long   1234996
        .long   1173543
        .long   1112087
        .long   3473675

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanhf4_ha_ex_B1_B3

        .section .xdata, "dr"

        .align 0x04
_unwind___jsvml_tanhf4_ha_ex_B6_B10:
        .long   265761
        .long   287758
        .long   340999
        .rva    .L_B6_1
        .rva    .L_B6_6
        .rva    _unwind___jsvml_tanhf4_ha_ex_B1_B3

        .section .pdata, "dr"

        .align 0x04

        .rva    .L_B6_6
        .rva    .L_B6_11
        .rva    _unwind___jsvml_tanhf4_ha_ex_B6_B10

        .data

        .text

TXTST6:

        .text

        .align    16, 0x90
        .globl __jsvml_stanh_ha_cout_rare_internal

__jsvml_stanh_ha_cout_rare_internal:

.L_B7_1:

        .byte     243
        .byte     15
        .byte     30
        .byte     250
.L187:

        lea       r8, QWORD PTR [rip+__ImageBase]
        mov       al, BYTE PTR [3+rcx]
        and       al, -128
        shr       al, 7
        movzx     r9d, al
        movzx     r10d, WORD PTR [2+rcx]
        and       r10d, 32640
        mov       eax, DWORD PTR ["_imlsTanhHATab"@imgrel+r8+r9*4]
        cmp       r10d, 32640
        je        .L_B7_4

.L_B7_2:

        mov       DWORD PTR [rdx], eax

.L_B7_3:

        xor       eax, eax
        ret

.L_B7_4:

        test      DWORD PTR [rcx], 8388607
        je        .L_B7_2

.L_B7_5:

        movss     xmm0, DWORD PTR [rcx]
        addss     xmm0, xmm0
        movss     DWORD PTR [rdx], xmm0
        jmp       .L_B7_3
        .align    16, 0x90

.L_B7_6:


        .data

        .section .rdata, "dr"
        .align 32
        .globl __jsvml_stanh_ha_data_internal
__jsvml_stanh_ha_data_internal:
        .long   0
        .long   1030750208
        .long   1032847360
        .long   1034944512
        .long   1037041664
        .long   1039138816
        .long   1041235968
        .long   1043333120
        .long   1045430272
        .long   1047527424
        .long   1049624576
        .long   1051721728
        .long   1053818880
        .long   1055916032
        .long   1058013184
        .long   1060110336
        .long   1062207488
        .long   1064304640
        .long   1066401792
        .long   1068498944
        .long   1070596096
        .long   1072693248
        .long   1074790400
        .long   1076887552
        .long   1078984704
        .long   1081081856
        .long   1083179008
        .long   1085276160
        .long   1087373312
        .long   1089470464
        .long   1091567616
        .long   0
        .long   0
        .long   1030732233
        .long   1032831839
        .long   1034916201
        .long   1036994987
        .long   1039067209
        .long   1041174248
        .long   1043220868
        .long   1045245838
        .long   1047245614
        .long   1049383373
        .long   1051287907
        .long   1053115377
        .long   1054857013
        .long   1057129528
        .long   1058581488
        .long   1059832960
        .long   1060891676
        .long   1062153819
        .long   1063337043
        .long   1064100733
        .long   1064582223
        .long   1064984555
        .long   1065216645
        .long   1065302845
        .long   1065334668
        .long   1065349076
        .long   1065352656
        .long   1065353140
        .long   1065353206
        .long   1065353215
        .long   1065353216
        .long   0
        .long   2963361822
        .long   2971470750
        .long   2945658640
        .long   821708412
        .long   824483568
        .long   824941280
        .long   2984085072
        .long   2957298688
        .long   838449816
        .long   2966046080
        .long   2988320324
        .long   2989804564
        .long   842626356
        .long   3000013710
        .long   2972725824
        .long   3002017674
        .long   853753500
        .long   2987104448
        .long   3000350914
        .long   855535800
        .long   852410906
        .long   851608946
        .long   2988641656
        .long   2997011000
        .long   2989576736
        .long   3000884068
        .long   2999984336
        .long   840950056
        .long   2995215280
        .long   855269702
        .long   0
        .long   1065353216
        .long   1065295748
        .long   1065270545
        .long   1065229919
        .long   1065181343
        .long   1065124909
        .long   1065025765
        .long   1064867200
        .long   1064679597
        .long   1064464345
        .long   1064093083
        .long   1063517074
        .long   1062862743
        .long   1062146519
        .long   1060992371
        .long   1059386208
        .long   1057800167
        .long   1055660649
        .long   1051764737
        .long   1046959010
        .long   1041444634
        .long   1035462611
        .long   1026689093
        .long   1015337940
        .long   1002731447
        .long   990958554
        .long   973168670
        .long   948705851
        .long   924299482
        .long   899955662
        .long   864224966
        .long   0
        .long   2956213371
        .long   3178161821
        .long   3180268967
        .long   3182315389
        .long   3184339487
        .long   3186337805
        .long   3188474939
        .long   3190373619
        .long   3192189570
        .long   3193910865
        .long   3196176320
        .long   3197556682
        .long   3198679950
        .long   3199536798
        .long   3200331518
        .long   3200564882
        .long   3200049264
        .long   3199029518
        .long   3197040598
        .long   3192620804
        .long   3188208183
        .long   3182392393
        .long   3173916356
        .long   3162750726
        .long   3150176437
        .long   3138431708
        .long   3120650203
        .long   3096189170
        .long   3071783062
        .long   3047439278
        .long   3011707180
        .long   0
        .long   3198855845
        .long   3198879250
        .long   3198677023
        .long   3198476576
        .long   3198388151
        .long   3198245218
        .long   3197982711
        .long   3197594458
        .long   3197117197
        .long   3196587519
        .long   3195304371
        .long   3192667528
        .long   3189843074
        .long   3186330810
        .long   3177085101
        .long   1013669486
        .long   1032032579
        .long   1036132065
        .long   1038305199
        .long   1036774550
        .long   1033498413
        .long   1028927137
        .long   1021175553
        .long   1009568359
        .long   998361895
        .long   985691041
        .long   967585842
        .long   943363289
        .long   919210013
        .long   895139148
        .long   858471606
        .long   0
        .long   3077428921
        .long   3189516141
        .long   1008586543
        .long   1036101517
        .long   1033304453
        .long   1034073627
        .long   1036071831
        .long   1037235824
        .long   1039436298
        .long   1040631208
        .long   1041906362
        .long   1042793477
        .long   1043232976
        .long   1043086916
        .long   1042100375
        .long   1039444212
        .long   1034126600
        .long   1026638186
        .long   995501655
        .long   3165579977
        .long   3167654937
        .long   3165317828
        .long   3158960080
        .long   3148291549
        .long   3137354510
        .long   3124730373
        .long   3106670759
        .long   3082457650
        .long   3058305807
        .long   3034235241
        .long   2997581996
        .long   0
        .long   1040781545
        .long   1131811139
        .long   1097198812
        .long   3247503190
        .long   3230402941
        .long   3224086547
        .long   3212798938
        .long   1059790272
        .long   1053691997
        .long   1061317268
        .long   3134918084
        .long   1034173207
        .long   3176246152
        .long   3165561405
        .long   3174788493
        .long   3178015405
        .long   3178847213
        .long   3177176538
        .long   3171127099
        .long   3155996003
        .long   985352038
        .long   999682315
        .long   998398067
        .long   989522534
        .long   977926264
        .long   966355955
        .long   948911724
        .long   924561635
        .long   900244966
        .long   875993879
        .long   841254832
        .long   0
        .long   3155046246
        .long   1175181842
        .long   1138112751
        .long   3286309950
        .long   3267011817
        .long   3259619885
        .long   3246758786
        .long   1088248663
        .long   1078543936
        .long   1086795944
        .long   3205436942
        .long   1043392367
        .long   3198686087
        .long   3182586396
        .long   3174374999
        .long   3142320544
        .long   1008565243
        .long   1014115537
        .long   1016545052
        .long   1010017051
        .long   998649588
        .long   975680464
        .long   3124451591
        .long   3121544226
        .long   3112148751
        .long   3100159824
        .long   3082673659
        .long   3058641232
        .long   3034613169
        .long   3010665978
        .long   2975473412
        .long   0
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   1027604480
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   65011712
        .long   0
        .long   0
        .long   434973
        .long   1072693248
        .long   2462381979
        .long   3194875870
        .long   1922363613
        .long   3218429247
        .long   3436033793
        .long   3207031997
        .long   1164049177
        .long   1069640674
        .long   2766840751
        .long   3214171076
        .long   0
        .long   0
        .long   1640345390
        .long   3194496887
        .long   1662417413
        .long   1072693250
        .long   3716526453
        .long   3205098446
        .long   1853512117
        .long   3218426760
        .long   3156517427
        .long   3211911078
        .long   3184519871
        .long   1069779119
        .long   3280598482
        .long   3215502338
        .long   0
        .long   0
        .long   1962245523
        .long   3196442075
        .long   366239963
        .long   1072693255
        .long   3337913224
        .long   3206521562
        .long   1328356923
        .long   3218424220
        .long   1470245799
        .long   3212690354
        .long   922782103
        .long   1069841533
        .long   705136934
        .long   3215769608
        .long   0
        .long   0
        .long   917120191
        .long   3198018856
        .long   2270262052
        .long   1072693264
        .long   21785897
        .long   3207561752
        .long   3853373788
        .long   3218420654
        .long   3959915849
        .long   3213220134
        .long   839274685
        .long   1069902529
        .long   3478609944
        .long   3215984949
        .long   0
        .long   0
        .long   321264669
        .long   3199232231
        .long   3507921756
        .long   1072693279
        .long   855596455
        .long   3208292995
        .long   4197403487
        .long   3218416395
        .long   1260192796
        .long   3213688235
        .long   509545499
        .long   1069956190
        .long   4001843557
        .long   3216067072
        .long   0
        .long   0
        .long   2572895834
        .long   3200373196
        .long   4238319527
        .long   1072693307
        .long   1589084946
        .long   3209032256
        .long   323547252
        .long   3218410632
        .long   129829396
        .long   3214058556
        .long   2665301683
        .long   1070009663
        .long   3805267410
        .long   3216137363
        .long   0
        .long   0
        .long   1373918637
        .long   3199925337
        .long   2391440540
        .long   1072693299
        .long   3494583150
        .long   3208925835
        .long   2192964039
        .long   3218411256
        .long   579095213
        .long   3214044622
        .long   3432431090
        .long   1070009041
        .long   3870858437
        .long   3216138421
        .long   0
        .long   0
        .long   3062447777
        .long   1055926683
        .long   3334650904
        .long   1072692790
        .long   3497776375
        .long   1062371871
        .long   4014660983
        .long   3218436927
        .long   1708666466
        .long   3212333537
        .long   648260668
        .long   1069902577
        .long   1156520282
        .long   3216044909
        .long   0
        .long   0
        .long   4186264729
        .long   1058462985
        .long   3883474621
        .long   1072690745
        .long   4001630278
        .long   1065042042
        .long   484659484
        .long   3218507007
        .long   301873053
        .long   1066864880
        .long   2426783364
        .long   1069685380
        .long   3518509994
        .long   3215777524
        .long   0
        .long   0
        .long   1324317639
        .long   1061009204
        .long   1677646538
        .long   1072681882
        .long   781584286
        .long   1067165904
        .long   3649499968
        .long   3218726741
        .long   2264952365
        .long   1069102871
        .long   2344790854
        .long   1068835622
        .long   4047770869
        .long   3215138580
        .long   0
        .long   0
        .long   70848422
        .long   1063287485
        .long   1930391614
        .long   1072650795
        .long   586495590
        .long   1068891644
        .long   2415479819
        .long   3219189888
        .long   2049892606
        .long   1070582148
        .long   1783689851
        .long   3213584996
        .long   2396151379
        .long   3213355995
        .long   0
        .long   0
        .long   2764829776
        .long   1064683280
        .long   95861817
        .long   1072595436
        .long   350241294
        .long   1069957747
        .long   1429983818
        .long   3219518543
        .long   2046078110
        .long   1071248730
        .long   2818409407
        .long   3216573116
        .long   351621961
        .long   1065184929
        .long   0
        .long   0
        .long   818345493
        .long   1065579544
        .long   47166764
        .long   1072535009
        .long   2931635641
        .long   1070624305
        .long   2472163867
        .long   3219785146
        .long   898647657
        .long   1071677167
        .long   2840881315
        .long   3217227676
        .long   1213275070
        .long   1066490976
        .long   0
        .long   0
        .long   3770339094
        .long   1065664250
        .long   4021094867
        .long   1072525054
        .long   3250137669
        .long   1070683759
        .long   3067647579
        .long   3219831010
        .long   706412794
        .long   1071716084
        .long   3457985438
        .long   3217296958
        .long   693681995
        .long   1066592455
        .long   0
        .long   0
        .long   794345931
        .long   3214229553
        .long   674007974
        .long   1072761769
        .long   1339296402
        .long   3213866766
        .long   2063412275
        .long   3219199437
        .long   3042293216
        .long   1071038746
        .long   1218111703
        .long   3216613854
        .long   1828949834
        .long   1065778789
        .long   0
        .long   0
        .long   3709362262
        .long   3216572138
        .long   1704472411
        .long   1073083731
        .long   334125080
        .long   3219185499
        .long   3643953259
        .long   3216245823
        .long   972935809
        .long   1069563300
        .long   4262764539
        .long   3215188513
        .long   3947124972
        .long   1064363655
        .long   0
        .long   0
        .long   684725320
        .long   3217602215
        .long   2059930851
        .long   1073428282
        .long   6923247
        .long   3220175349
        .long   1962536238
        .long   1070738118
        .long   2626892535
        .long   3214818472
        .long   1541908021
        .long   3211168932
        .long   1264782098
        .long   1061514036
        .long   0
        .long   0
        .long   4193183898
        .long   3218211722
        .long   2527318106
        .long   1073704783
        .long   1779267795
        .long   3220520390
        .long   2178062862
        .long   1071649373
        .long   2371270354
        .long   3216802466
        .long   214503718
        .long   1066134183
        .long   2527651537
        .long   3209129722
        .long   0
        .long   0
        .long   1145099230
        .long   3217848868
        .long   1219675578
        .long   1073564173
        .long   3377824792
        .long   3220387400
        .long   1294161399
        .long   1071386209
        .long   535756989
        .long   3216499614
        .long   3414431292
        .long   1065769858
        .long   3872552752
        .long   3208765586
        .long   0
        .long   0
        .long   3432152680
        .long   3212471108
        .long   3481247728
        .long   1073111648
        .long   2087872556
        .long   3219843286
        .long   1539630695
        .long   1070713931
        .long   2045031161
        .long   3215666774
        .long   1438917333
        .long   1064738520
        .long   2997200424
        .long   3207590169
        .long   0
        .long   0
        .long   157024952
        .long   1070614475
        .long   1896115811
        .long   1072588717
        .long   1533634146
        .long   3219167457
        .long   3479089950
        .long   1069795336
        .long   294041664
        .long   3214609167
        .long   3323703207
        .long   1063520882
        .long   1200470279
        .long   3206092743
        .long   0
        .long   0
        .long   780145450
        .long   1071804775
        .long   3436973384
        .long   1071541223
        .long   1373298557
        .long   3217881162
        .long   616458359
        .long   1068360186
        .long   1012488256
        .long   3212939359
        .long   3381328826
        .long   1061569412
        .long   3619594050
        .long   3203906531
        .long   0
        .long   0
        .long   3555024088
        .long   1072352823
        .long   703965661
        .long   1069801815
        .long   68876051
        .long   3215985072
        .long   4285546012
        .long   1066131701
        .long   1692571309
        .long   3210444434
        .long   2250664999
        .long   1058874117
        .long   2757518980
        .long   3200902424
        .long   0
        .long   0
        .long   4088530245
        .long   1072580854
        .long   2571880719
        .long   1067895848
        .long   4091013897
        .long   3213873796
        .long   4246435429
        .long   1063770948
        .long   92905889
        .long   3207872058
        .long   248987709
        .long   1056074614
        .long   2369951583
        .long   3197898922
        .long   0
        .long   0
        .long   3580076556
        .long   1072660066
        .long   1353576036
        .long   1065860878
        .long   2410885661
        .long   3211602990
        .long   2989427096
        .long   1061369430
        .long   3886685439
        .long   3205273864
        .long   529712074
        .long   1053215589
        .long   3764845364
        .long   3194905549
        .long   0
        .long   0
        .long   660908647
        .long   1072688177
        .long   2675542798
        .long   1062777930
        .long   772498083
        .long   3208233517
        .long   377295306
        .long   1057798793
        .long   162648032
        .long   3201438006
        .long   623489458
        .long   1049119366
        .long   3651746243
        .long   3190506519
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
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
        .long   0
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
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2145386496
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   2130706432
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   1038090240
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
        .long   54525952
_imlsTanhHATab:
        .long   1065353216
        .long   3212836864
        .data
#endif
