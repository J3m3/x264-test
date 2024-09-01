	.text
	.file	"cabac.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_cabac_context_init
.LCPI0_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI0_1:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI0_2:
	.long	2147483774                      # 0x8000007e
	.long	2147483774                      # 0x8000007e
	.long	2147483774                      # 0x8000007e
	.long	2147483774                      # 0x8000007e
.LCPI0_3:
	.long	126                             # 0x7e
	.long	126                             # 0x7e
	.long	126                             # 0x7e
	.long	126                             # 0x7e
.LCPI0_4:
	.long	127                             # 0x7f
	.long	127                             # 0x7f
	.long	127                             # 0x7f
	.long	127                             # 0x7f
.LCPI0_5:
	.long	2147483775                      # 0x8000007f
	.long	2147483775                      # 0x8000007f
	.long	2147483775                      # 0x8000007f
	.long	2147483775                      # 0x8000007f
	.text
	.globl	x264_cabac_context_init
	.p2align	4, 0x90
	.type	x264_cabac_context_init,@function
x264_cabac_context_init:                # @x264_cabac_context_init
	.cfi_startproc
# %bb.0:                                # %iter.check
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 288
	movslq	%ecx, %rax
	imulq	$920, %rax, %rax                # imm = 0x398
	cmpl	$2, %esi
	leaq	x264_cabac_context_init_PB(%rax), %rcx
	movl	$x264_cabac_context_init_I, %eax
	cmovneq	%rcx, %rax
	leaq	52(%rdi), %rcx
	leaq	512(%rdi), %rsi
	leaq	920(%rax), %r8
	cmpq	%r8, %rcx
	setae	%r8b
	cmpq	%rsi, %rax
	setae	%sil
	orb	%r8b, %sil
	jne	.LBB0_5
# %bb.1:
	xorl	%esi, %esi
	jmp	.LBB0_2
.LBB0_5:                                # %vector.ph
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leaq	127(%rax), %rsi
	xorl	%r8d, %r8d
	movdqa	%xmm0, 160(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	movdqa	%xmm0, 176(%rsp)                # 16-byte Spill
	.p2align	4, 0x90
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-111(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-109(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movl	-107(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-105(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	movdqa	%xmm0, %xmm1
	movl	-103(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-101(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movl	-99(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-97(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	psrad	$24, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	psrad	$24, %xmm0
	movl	-127(%rsi,%r8,2), %r9d
	movl	-123(%rsi,%r8,2), %r10d
	shll	$8, %r9d
	pxor	%xmm1, %xmm1
	pinsrw	$1, %r9d, %xmm1
	movzbl	-125(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm1
	shll	$8, %r10d
	pinsrw	$5, %r10d, %xmm1
	movzbl	-121(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm1
	movl	-119(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm4, %xmm4
	pinsrw	$1, %r9d, %xmm4
	movzbl	-117(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm4
	movl	-115(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm4
	movzbl	-113(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm4
	psrad	$24, %xmm1
	psrad	$24, %xmm4
	movl	-79(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm2, %xmm2
	pinsrw	$1, %r9d, %xmm2
	movzbl	-77(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm2
	movl	-75(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm2
	movzbl	-73(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm2
	movl	-71(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm13, %xmm13
	pinsrw	$1, %r9d, %xmm13
	movzbl	-69(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm13
	movl	-67(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm13
	movzbl	-65(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm13
	psrad	$24, %xmm2
	movdqa	%xmm2, -128(%rsp)               # 16-byte Spill
	psrad	$24, %xmm13
	movl	-95(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm7, %xmm7
	pinsrw	$1, %r9d, %xmm7
	movzbl	-93(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm7
	movl	-91(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm7
	movzbl	-89(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm7
	movl	-87(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm2, %xmm2
	pinsrw	$1, %r9d, %xmm2
	movzbl	-85(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm2
	movl	-83(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm2
	movzbl	-81(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm2
	psrad	$24, %xmm7
	psrad	$24, %xmm2
	movl	-47(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm9, %xmm9
	pinsrw	$1, %r9d, %xmm9
	movzbl	-45(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm9
	movl	-43(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm9
	movzbl	-41(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm9
	movl	-39(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm10, %xmm10
	pinsrw	$1, %r9d, %xmm10
	movzbl	-37(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm10
	movl	-35(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm10
	movzbl	-33(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm10
	psrad	$24, %xmm9
	psrad	$24, %xmm10
	movl	-63(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm11, %xmm11
	pinsrw	$1, %r9d, %xmm11
	movzbl	-61(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm11
	movl	-59(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm11
	movzbl	-57(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm11
	movl	-55(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm8, %xmm8
	pinsrw	$1, %r9d, %xmm8
	movzbl	-53(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm8
	movl	-51(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm8
	movzbl	-49(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm8
	psrad	$24, %xmm11
	psrad	$24, %xmm8
	movl	-15(%rsi,%r8,2), %r9d
	movl	-7(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pxor	%xmm14, %xmm14
	pinsrw	$1, %r10d, %xmm14
	movzbl	-5(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$3, %r10d, %xmm14
	movl	-3(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$5, %r10d, %xmm14
	movzbl	-1(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$7, %r10d, %xmm14
	shll	$8, %r9d
	psrad	$24, %xmm14
	movl	-31(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pxor	%xmm6, %xmm6
	pinsrw	$1, %r10d, %xmm6
	movzbl	-29(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$3, %r10d, %xmm6
	movl	-27(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$5, %r10d, %xmm6
	movzbl	-25(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$7, %r10d, %xmm6
	movl	-23(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pxor	%xmm15, %xmm15
	pinsrw	$1, %r10d, %xmm15
	movzbl	-21(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$3, %r10d, %xmm15
	movl	-19(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$5, %r10d, %xmm15
	movzbl	-17(%rsi,%r8,2), %r10d
	shll	$8, %r10d
	pinsrw	$7, %r10d, %xmm15
	psrad	$24, %xmm6
	psrad	$24, %xmm15
	movdqa	160(%rsp), %xmm5                # 16-byte Reload
	movdqa	%xmm5, %xmm12
	pmuludq	%xmm4, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	movdqa	176(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm12, -64(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	movdqa	%xmm4, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm12             # xmm12 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	movdqa	%xmm5, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm4              # xmm4 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm1              # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm7, %xmm1              # xmm1 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm13, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm13, %xmm1             # xmm1 = xmm13[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm0, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	movdqa	-128(%rsp), %xmm0               # 16-byte Reload
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm13             # xmm13 = xmm2[0,2,2,3]
	pshufd	$245, %xmm8, %xmm2              # xmm2 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm11, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pshufd	$245, %xmm11, %xmm2             # xmm2 = xmm11[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm0, (%rsp)                   # 16-byte Spill
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm10, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pshufd	$245, %xmm10, %xmm2             # xmm2 = xmm10[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm9, %xmm2
	pshufd	$232, %xmm2, %xmm8              # xmm8 = xmm2[0,2,2,3]
	pshufd	$245, %xmm9, %xmm2              # xmm2 = xmm9[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1]
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm15, %xmm2
	pshufd	$232, %xmm2, %xmm7              # xmm7 = xmm2[0,2,2,3]
	pshufd	$245, %xmm15, %xmm2             # xmm2 = xmm15[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1]
	movdqa	%xmm7, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm6, %xmm2
	pshufd	$232, %xmm2, %xmm7              # xmm7 = xmm2[0,2,2,3]
	pshufd	$245, %xmm6, %xmm2              # xmm2 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1]
	movdqa	%xmm7, -128(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm14, %xmm2
	pshufd	$232, %xmm2, %xmm10             # xmm10 = xmm2[0,2,2,3]
	pshufd	$245, %xmm14, %xmm2             # xmm2 = xmm14[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1]
	pxor	%xmm2, %xmm2
	pinsrw	$1, %r9d, %xmm2
	movzbl	-13(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm2
	movl	-11(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm2
	movzbl	-9(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm2
	psrad	$24, %xmm2
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm9              # xmm9 = xmm5[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1]
	psrad	$4, %xmm4
	movzbl	-110(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm2, %xmm2
	pinsrw	$1, %r9d, %xmm2
	movzbl	-108(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm2
	movzbl	-106(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm2
	movzbl	-104(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm2
	psrad	$24, %xmm2
	paddd	%xmm4, %xmm2
	movdqa	%xmm2, 32(%rsp)                 # 16-byte Spill
	psrad	$4, %xmm12
	movzbl	-102(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-100(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movzbl	-98(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-96(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	psrad	$24, %xmm0
	paddd	%xmm12, %xmm0
	movdqa	%xmm0, 16(%rsp)                 # 16-byte Spill
	movdqa	-96(%rsp), %xmm0                # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-126(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm2, %xmm2
	pinsrw	$1, %r9d, %xmm2
	movzbl	-124(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm2
	movzbl	-122(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm2
	movzbl	-120(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm2
	psrad	$24, %xmm2
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm5
	movdqa	-64(%rsp), %xmm0                # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-118(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm7, %xmm7
	pinsrw	$1, %r9d, %xmm7
	movzbl	-116(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm7
	movzbl	-114(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm7
	movzbl	-112(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm7
	psrad	$24, %xmm7
	paddd	%xmm0, %xmm7
	psrad	$4, %xmm1
	movzbl	-78(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-76(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movzbl	-74(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-72(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	psrad	$24, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 64(%rsp)                 # 16-byte Spill
	movdqa	-80(%rsp), %xmm0                # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-70(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm15, %xmm15
	pinsrw	$1, %r9d, %xmm15
	movzbl	-68(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm15
	movzbl	-66(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm15
	movzbl	-64(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm15
	psrad	$24, %xmm15
	paddd	%xmm0, %xmm15
	movdqa	-48(%rsp), %xmm0                # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-94(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm1, %xmm1
	pinsrw	$1, %r9d, %xmm1
	movzbl	-92(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm1
	movzbl	-90(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm1
	movzbl	-88(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm1
	psrad	$24, %xmm1
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movdqa	-16(%rsp), %xmm1                # 16-byte Reload
	psrad	$4, %xmm1
	movzbl	-86(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-84(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movzbl	-82(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-80(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	psrad	$24, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	psrad	$4, %xmm8
	movzbl	-46(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm0, %xmm0
	pinsrw	$1, %r9d, %xmm0
	movzbl	-44(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm0
	movzbl	-42(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm0
	movzbl	-40(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm0
	psrad	$24, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	movdqa	-32(%rsp), %xmm0                # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-38(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm6, %xmm6
	pinsrw	$1, %r9d, %xmm6
	movzbl	-36(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm6
	movzbl	-34(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm6
	movzbl	-32(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm6
	psrad	$24, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	(%rsp), %xmm0                   # 16-byte Reload
	psrad	$4, %xmm0
	movzbl	-62(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm4, %xmm4
	pinsrw	$1, %r9d, %xmm4
	movzbl	-60(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm4
	movzbl	-58(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm4
	movzbl	-56(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm4
	psrad	$24, %xmm4
	paddd	%xmm0, %xmm4
	psrad	$4, %xmm13
	movzbl	-54(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm8, %xmm8
	pinsrw	$1, %r9d, %xmm8
	movzbl	-52(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm8
	movzbl	-50(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm8
	movzbl	-48(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm8
	psrad	$24, %xmm8
	paddd	%xmm13, %xmm8
	psrad	$4, %xmm9
	movzbl	-14(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm13, %xmm13
	pinsrw	$1, %r9d, %xmm13
	movzbl	-12(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm13
	movzbl	-10(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm13
	movzbl	-8(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm13
	psrad	$24, %xmm13
	paddd	%xmm9, %xmm13
	psrad	$4, %xmm10
	movzbl	-6(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm3, %xmm3
	pinsrw	$1, %r9d, %xmm3
	movzbl	-4(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm3
	movzbl	-2(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm3
	movzbl	(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm3
	psrad	$24, %xmm3
	paddd	%xmm10, %xmm3
	movdqa	-128(%rsp), %xmm9               # 16-byte Reload
	psrad	$4, %xmm9
	movzbl	-30(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm14, %xmm14
	pinsrw	$1, %r9d, %xmm14
	movzbl	-28(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm14
	movzbl	-26(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm14
	movzbl	-24(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm14
	psrad	$24, %xmm14
	paddd	%xmm9, %xmm14
	movdqa	-112(%rsp), %xmm10              # 16-byte Reload
	psrad	$4, %xmm10
	movzbl	-22(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pxor	%xmm9, %xmm9
	pinsrw	$1, %r9d, %xmm9
	movzbl	-20(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$3, %r9d, %xmm9
	movzbl	-18(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$5, %r9d, %xmm9
	movzbl	-16(%rsi,%r8,2), %r9d
	shll	$8, %r9d
	pinsrw	$7, %r9d, %xmm9
	psrad	$24, %xmm9
	paddd	%xmm10, %xmm9
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm10
	movdqa	.LCPI0_1(%rip), %xmm12          # xmm12 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm12, %xmm10
	movdqa	.LCPI0_2(%rip), %xmm0           # xmm0 = [2147483774,2147483774,2147483774,2147483774]
	pcmpgtd	%xmm10, %xmm0
	movdqa	.LCPI0_0(%rip), %xmm11          # xmm11 = [1,1,1,1]
	movdqa	%xmm11, %xmm12
	pcmpgtd	%xmm1, %xmm12
	movdqa	%xmm12, -128(%rsp)              # 16-byte Spill
	pand	%xmm0, %xmm1
	movdqa	.LCPI0_3(%rip), %xmm2           # xmm2 = [126,126,126,126]
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	movdqa	16(%rsp), %xmm0                 # 16-byte Reload
	movdqa	%xmm0, %xmm10
	pxor	.LCPI0_1(%rip), %xmm10
	movdqa	.LCPI0_2(%rip), %xmm12          # xmm12 = [2147483774,2147483774,2147483774,2147483774]
	pcmpgtd	%xmm10, %xmm12
	pcmpgtd	%xmm0, %xmm11
	movdqa	%xmm11, (%rsp)                  # 16-byte Spill
	pand	%xmm12, %xmm0
	pandn	%xmm2, %xmm12
	movdqa	%xmm2, %xmm11
	por	%xmm0, %xmm12
	movdqa	%xmm12, 16(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm10
	movdqa	.LCPI0_1(%rip), %xmm2           # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm2, %xmm10
	movdqa	.LCPI0_2(%rip), %xmm0           # xmm0 = [2147483774,2147483774,2147483774,2147483774]
	movdqa	%xmm0, %xmm12
	pcmpgtd	%xmm10, %xmm12
	movdqa	.LCPI0_0(%rip), %xmm5           # xmm5 = [1,1,1,1]
	movdqa	%xmm5, %xmm10
	pcmpgtd	%xmm1, %xmm10
	movdqa	%xmm10, -112(%rsp)              # 16-byte Spill
	pand	%xmm12, %xmm1
	movdqa	%xmm11, %xmm10
	pandn	%xmm11, %xmm12
	por	%xmm1, %xmm12
	movdqa	%xmm12, -64(%rsp)               # 16-byte Spill
	movdqa	%xmm7, %xmm11
	pxor	%xmm2, %xmm11
	movdqa	%xmm2, %xmm1
	movdqa	%xmm0, %xmm12
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm11, %xmm12
	pcmpgtd	%xmm7, %xmm5
	movdqa	%xmm5, -96(%rsp)                # 16-byte Spill
	pand	%xmm12, %xmm7
	pandn	%xmm10, %xmm12
	por	%xmm7, %xmm12
	movdqa	%xmm12, 144(%rsp)               # 16-byte Spill
	movdqa	64(%rsp), %xmm5                 # 16-byte Reload
	movdqa	%xmm5, %xmm7
	movdqa	%xmm1, %xmm11
	pxor	%xmm1, %xmm7
	movdqa	%xmm0, %xmm1
	pcmpgtd	%xmm7, %xmm1
	movdqa	.LCPI0_0(%rip), %xmm12          # xmm12 = [1,1,1,1]
	movdqa	%xmm12, %xmm0
	pcmpgtd	%xmm5, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	pand	%xmm1, %xmm5
	pandn	%xmm10, %xmm1
	por	%xmm5, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm15, %xmm7
	pxor	%xmm11, %xmm7
	movdqa	%xmm2, %xmm1
	movdqa	%xmm2, %xmm11
	pcmpgtd	%xmm7, %xmm11
	movdqa	%xmm12, %xmm7
	movdqa	%xmm12, %xmm0
	pcmpgtd	%xmm15, %xmm0
	movdqa	%xmm0, 64(%rsp)                 # 16-byte Spill
	pand	%xmm11, %xmm15
	pandn	%xmm10, %xmm11
	por	%xmm15, %xmm11
	movdqa	48(%rsp), %xmm2                 # 16-byte Reload
	movdqa	%xmm2, %xmm5
	movdqa	.LCPI0_1(%rip), %xmm12          # xmm12 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm12, %xmm5
	movdqa	%xmm1, %xmm15
	pcmpgtd	%xmm5, %xmm15
	movdqa	%xmm7, %xmm0
	movdqa	%xmm7, %xmm5
	pcmpgtd	%xmm2, %xmm0
	movdqa	%xmm0, 128(%rsp)                # 16-byte Spill
	pand	%xmm15, %xmm2
	pandn	%xmm10, %xmm15
	por	%xmm2, %xmm15
	movdqa	-16(%rsp), %xmm0                # 16-byte Reload
	movdqa	%xmm0, %xmm2
	pxor	%xmm12, %xmm2
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm2, %xmm7
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 112(%rsp)                # 16-byte Spill
	pand	%xmm7, %xmm0
	pandn	%xmm10, %xmm7
	movdqa	%xmm10, %xmm12
	por	%xmm0, %xmm7
	movdqa	-48(%rsp), %xmm0                # 16-byte Reload
	movdqa	%xmm0, %xmm2
	pxor	.LCPI0_1(%rip), %xmm2
	movdqa	.LCPI0_2(%rip), %xmm10          # xmm10 = [2147483774,2147483774,2147483774,2147483774]
	pcmpgtd	%xmm2, %xmm10
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	pand	%xmm10, %xmm0
	pandn	%xmm12, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm6, %xmm2
	movdqa	.LCPI0_1(%rip), %xmm0           # xmm0 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm0, %xmm2
	movdqa	.LCPI0_2(%rip), %xmm5           # xmm5 = [2147483774,2147483774,2147483774,2147483774]
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm2, %xmm12
	movdqa	.LCPI0_0(%rip), %xmm1           # xmm1 = [1,1,1,1]
	pcmpgtd	%xmm6, %xmm1
	movdqa	%xmm1, 96(%rsp)                 # 16-byte Spill
	pand	%xmm12, %xmm6
	movdqa	.LCPI0_3(%rip), %xmm1           # xmm1 = [126,126,126,126]
	pandn	%xmm1, %xmm12
	por	%xmm6, %xmm12
	movdqa	%xmm4, %xmm2
	pxor	%xmm0, %xmm2
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm2, %xmm6
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1,1,1]
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	pand	%xmm6, %xmm4
	pandn	%xmm1, %xmm6
	por	%xmm4, %xmm6
	movdqa	%xmm8, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm4           # xmm4 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm4, %xmm1
	movdqa	%xmm5, %xmm2
	pcmpgtd	%xmm1, %xmm5
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1,1,1]
	pcmpgtd	%xmm8, %xmm0
	movdqa	%xmm0, 192(%rsp)                # 16-byte Spill
	pand	%xmm5, %xmm8
	pandn	.LCPI0_3(%rip), %xmm5
	por	%xmm8, %xmm5
	movdqa	%xmm13, %xmm1
	pxor	%xmm4, %xmm1
	movdqa	%xmm2, %xmm8
	movdqa	%xmm2, %xmm4
	pcmpgtd	%xmm1, %xmm8
	movdqa	.LCPI0_0(%rip), %xmm1           # xmm1 = [1,1,1,1]
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	pcmpgtd	%xmm13, %xmm0
	movdqa	%xmm0, 224(%rsp)                # 16-byte Spill
	pand	%xmm8, %xmm13
	movdqa	.LCPI0_3(%rip), %xmm0           # xmm0 = [126,126,126,126]
	pandn	%xmm0, %xmm8
	por	%xmm13, %xmm8
	movdqa	%xmm3, %xmm1
	pxor	.LCPI0_1(%rip), %xmm1
	pcmpgtd	%xmm1, %xmm4
	movdqa	%xmm2, %xmm13
	movdqa	%xmm2, %xmm0
	pcmpgtd	%xmm3, %xmm0
	movdqa	%xmm0, 208(%rsp)                # 16-byte Spill
	pand	%xmm4, %xmm3
	movdqa	.LCPI0_3(%rip), %xmm2           # xmm2 = [126,126,126,126]
	pandn	%xmm2, %xmm4
	por	%xmm3, %xmm4
	movdqa	%xmm14, %xmm0
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
	movdqa	.LCPI0_2(%rip), %xmm3           # xmm3 = [2147483774,2147483774,2147483774,2147483774]
	pcmpgtd	%xmm0, %xmm3
	pcmpgtd	%xmm14, %xmm13
	pand	%xmm3, %xmm14
	pandn	%xmm2, %xmm3
	por	%xmm14, %xmm3
	movdqa	%xmm9, %xmm14
	pxor	%xmm1, %xmm14
	movdqa	.LCPI0_2(%rip), %xmm0           # xmm0 = [2147483774,2147483774,2147483774,2147483774]
	pcmpgtd	%xmm14, %xmm0
	movdqa	.LCPI0_0(%rip), %xmm14          # xmm14 = [1,1,1,1]
	pcmpgtd	%xmm9, %xmm14
	pand	%xmm0, %xmm9
	pandn	%xmm2, %xmm0
	por	%xmm9, %xmm0
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm9
	pandn	144(%rsp), %xmm9                # 16-byte Folded Reload
	psubd	%xmm1, %xmm9
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	movdqa	%xmm1, %xmm2
	pandn	-64(%rsp), %xmm2                # 16-byte Folded Reload
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, -112(%rsp)               # 16-byte Spill
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	movdqa	%xmm1, %xmm2
	pandn	16(%rsp), %xmm2                 # 16-byte Folded Reload
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, 16(%rsp)                 # 16-byte Spill
	movdqa	-128(%rsp), %xmm2               # 16-byte Reload
	movdqa	%xmm2, %xmm1
	pandn	32(%rsp), %xmm1                 # 16-byte Folded Reload
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, -48(%rsp)                # 16-byte Spill
	movdqa	112(%rsp), %xmm2                # 16-byte Reload
	movdqa	%xmm2, %xmm1
	pandn	%xmm7, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, -128(%rsp)               # 16-byte Spill
	movdqa	128(%rsp), %xmm7                # 16-byte Reload
	movdqa	%xmm7, %xmm1
	pandn	%xmm15, %xmm1
	psubd	%xmm7, %xmm1
	movdqa	%xmm1, -16(%rsp)                # 16-byte Spill
	movdqa	64(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm7
	pandn	%xmm11, %xmm7
	psubd	%xmm1, %xmm7
	movdqa	-32(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm11
	pandn	-80(%rsp), %xmm11               # 16-byte Folded Reload
	psubd	%xmm1, %xmm11
	movdqa	192(%rsp), %xmm2                # 16-byte Reload
	movdqa	%xmm2, %xmm1
	pandn	%xmm5, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, -64(%rsp)                # 16-byte Spill
	movdqa	80(%rsp), %xmm2                 # 16-byte Reload
	movdqa	%xmm2, %xmm1
	pandn	%xmm6, %xmm1
	psubd	%xmm2, %xmm1
	movdqa	%xmm1, -96(%rsp)                # 16-byte Spill
	movdqa	96(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm5
	pandn	%xmm12, %xmm5
	psubd	%xmm1, %xmm5
	movdqa	48(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm2
	pandn	%xmm10, %xmm2
	psubd	%xmm1, %xmm2
	movdqa	%xmm2, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm2
	pandn	%xmm0, %xmm2
	psubd	%xmm14, %xmm2
	movdqa	%xmm2, -32(%rsp)                # 16-byte Spill
	movdqa	%xmm13, %xmm0
	pandn	%xmm3, %xmm0
	psubd	%xmm13, %xmm0
	movdqa	%xmm0, (%rsp)                   # 16-byte Spill
	movdqa	208(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pandn	%xmm4, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	movdqa	224(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pandn	%xmm8, %xmm0
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm0
	movdqa	.LCPI0_1(%rip), %xmm3           # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm3, %xmm0
	movdqa	%xmm9, %xmm2
	movdqa	.LCPI0_5(%rip), %xmm15          # xmm15 = [2147483775,2147483775,2147483775,2147483775]
	pxor	%xmm15, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm9, %xmm0
	movdqa	.LCPI0_4(%rip), %xmm1           # xmm1 = [127,127,127,127]
	pxor	%xmm1, %xmm0
	movdqa	%xmm1, %xmm6
	pand	%xmm2, %xmm9
	pandn	%xmm0, %xmm2
	por	%xmm9, %xmm2
	movdqa	%xmm2, 64(%rsp)                 # 16-byte Spill
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm2
	pxor	%xmm15, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm2, 128(%rsp)                # 16-byte Spill
	movdqa	16(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm2
	pxor	%xmm15, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm2, 112(%rsp)                # 16-byte Spill
	movdqa	-48(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm12
	pxor	%xmm15, %xmm12
	pcmpgtd	%xmm0, %xmm12
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm12, %xmm1
	pandn	%xmm0, %xmm12
	por	%xmm1, %xmm12
	movdqa	-128(%rsp), %xmm1               # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm2
	pxor	%xmm15, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm2, %xmm1
	pandn	%xmm0, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm2, 48(%rsp)                 # 16-byte Spill
	movdqa	-16(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm14
	pxor	%xmm15, %xmm14
	pcmpgtd	%xmm0, %xmm14
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm14, %xmm1
	pandn	%xmm0, %xmm14
	por	%xmm1, %xmm14
	movdqa	%xmm7, 256(%rsp)                # 16-byte Spill
	movdqa	%xmm7, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm7, %xmm8
	pxor	%xmm15, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movdqa	%xmm7, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm8, %xmm7
	pandn	%xmm0, %xmm8
	por	%xmm7, %xmm8
	movdqa	%xmm11, 240(%rsp)               # 16-byte Spill
	movdqa	%xmm11, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm11, %xmm7
	pxor	%xmm15, %xmm7
	pcmpgtd	%xmm0, %xmm7
	movdqa	%xmm11, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm7, %xmm11
	pandn	%xmm0, %xmm7
	por	%xmm11, %xmm7
	movdqa	-64(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm9
	pxor	%xmm15, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm9, %xmm1
	pandn	%xmm0, %xmm9
	por	%xmm1, %xmm9
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm10
	pxor	%xmm15, %xmm10
	pcmpgtd	%xmm0, %xmm10
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	movdqa	%xmm6, %xmm2
	pand	%xmm10, %xmm1
	pandn	%xmm0, %xmm10
	por	%xmm1, %xmm10
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pxor	%xmm3, %xmm0
	pxor	%xmm15, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm5, %xmm1
	pandn	%xmm0, %xmm5
	por	%xmm1, %xmm5
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm4
	pxor	%xmm15, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm1, %xmm0
	pxor	%xmm6, %xmm0
	pand	%xmm4, %xmm1
	pandn	%xmm0, %xmm4
	por	%xmm1, %xmm4
	movdqa	-32(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm6
	pxor	%xmm15, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	pand	%xmm6, %xmm1
	pandn	%xmm0, %xmm6
	por	%xmm1, %xmm6
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm11
	pxor	%xmm15, %xmm11
	pcmpgtd	%xmm0, %xmm11
	movdqa	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	pand	%xmm11, %xmm1
	pandn	%xmm0, %xmm11
	por	%xmm1, %xmm11
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm1, %xmm3
	pxor	%xmm15, %xmm3
	pcmpgtd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm0
	pxor	%xmm2, %xmm0
	pand	%xmm3, %xmm1
	pandn	%xmm0, %xmm3
	por	%xmm1, %xmm3
	movdqa	96(%rsp), %xmm13                # 16-byte Reload
	movdqa	%xmm13, %xmm1
	pxor	.LCPI0_1(%rip), %xmm1
	movdqa	%xmm13, %xmm2
	pxor	%xmm15, %xmm2
	pcmpgtd	%xmm1, %xmm2
	movdqa	%xmm13, %xmm1
	pxor	.LCPI0_4(%rip), %xmm1
	movdqa	%xmm13, %xmm0
	pand	%xmm2, %xmm0
	pandn	%xmm1, %xmm2
	por	%xmm0, %xmm2
	paddd	%xmm12, %xmm12
	movdqa	-48(%rsp), %xmm15               # 16-byte Reload
	psrld	$6, %xmm15
	por	%xmm12, %xmm15
	movdqa	112(%rsp), %xmm12               # 16-byte Reload
	paddd	%xmm12, %xmm12
	movdqa	16(%rsp), %xmm1                 # 16-byte Reload
	psrld	$6, %xmm1
	por	%xmm12, %xmm1
	packuswb	%xmm1, %xmm15
	movdqa	128(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm1, %xmm1
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	psrld	$6, %xmm0
	por	%xmm1, %xmm0
	movdqa	64(%rsp), %xmm12                # 16-byte Reload
	paddd	%xmm12, %xmm12
	movdqa	144(%rsp), %xmm1                # 16-byte Reload
	psrld	$6, %xmm1
	por	%xmm12, %xmm1
	packuswb	%xmm1, %xmm0
	packuswb	%xmm15, %xmm0
	paddd	%xmm7, %xmm7
	movdqa	240(%rsp), %xmm1                # 16-byte Reload
	psrld	$6, %xmm1
	por	%xmm7, %xmm1
	paddd	%xmm8, %xmm8
	movdqa	256(%rsp), %xmm7                # 16-byte Reload
	psrld	$6, %xmm7
	por	%xmm8, %xmm7
	packuswb	%xmm7, %xmm1
	movdqa	%xmm1, %xmm12
	paddd	%xmm14, %xmm14
	movdqa	-16(%rsp), %xmm1                # 16-byte Reload
	psrld	$6, %xmm1
	por	%xmm14, %xmm1
	movdqa	48(%rsp), %xmm8                 # 16-byte Reload
	paddd	%xmm8, %xmm8
	movdqa	-128(%rsp), %xmm7               # 16-byte Reload
	psrld	$6, %xmm7
	por	%xmm8, %xmm7
	packuswb	%xmm7, %xmm1
	packuswb	%xmm12, %xmm1
	paddd	%xmm4, %xmm4
	movdqa	-80(%rsp), %xmm7                # 16-byte Reload
	psrld	$6, %xmm7
	por	%xmm4, %xmm7
	paddd	%xmm5, %xmm5
	movdqa	80(%rsp), %xmm4                 # 16-byte Reload
	psrld	$6, %xmm4
	por	%xmm5, %xmm4
	packuswb	%xmm4, %xmm7
	paddd	%xmm10, %xmm10
	movdqa	-96(%rsp), %xmm4                # 16-byte Reload
	psrld	$6, %xmm4
	por	%xmm10, %xmm4
	paddd	%xmm9, %xmm9
	movdqa	-64(%rsp), %xmm5                # 16-byte Reload
	psrld	$6, %xmm5
	por	%xmm9, %xmm5
	packuswb	%xmm5, %xmm4
	packuswb	%xmm7, %xmm4
	paddd	%xmm2, %xmm2
	psrld	$6, %xmm13
	por	%xmm2, %xmm13
	paddd	%xmm3, %xmm3
	movdqa	32(%rsp), %xmm2                 # 16-byte Reload
	psrld	$6, %xmm2
	por	%xmm3, %xmm2
	packuswb	%xmm2, %xmm13
	paddd	%xmm11, %xmm11
	movdqa	(%rsp), %xmm3                   # 16-byte Reload
	psrld	$6, %xmm3
	por	%xmm11, %xmm3
	paddd	%xmm6, %xmm6
	movdqa	-32(%rsp), %xmm2                # 16-byte Reload
	psrld	$6, %xmm2
	por	%xmm6, %xmm2
	packuswb	%xmm2, %xmm3
	packuswb	%xmm13, %xmm3
	movdqu	%xmm0, 52(%rdi,%r8)
	movdqu	%xmm1, 68(%rdi,%r8)
	movdqu	%xmm4, 84(%rdi,%r8)
	movdqu	%xmm3, 100(%rdi,%r8)
	addq	$64, %r8
	cmpq	$448, %r8                       # imm = 0x1C0
	jne	.LBB0_6
# %bb.7:                                # %vec.epilog.vector.body
	movl	896(%rax), %esi
	shll	$8, %esi
	pxor	%xmm2, %xmm2
	pinsrw	$1, %esi, %xmm2
	movzbl	898(%rax), %esi
	shll	$8, %esi
	pinsrw	$3, %esi, %xmm2
	movl	900(%rax), %esi
	shll	$8, %esi
	pinsrw	$5, %esi, %xmm2
	movzbl	902(%rax), %esi
	shll	$8, %esi
	pinsrw	$7, %esi, %xmm2
	pxor	%xmm0, %xmm0
	psrad	$24, %xmm2
	movl	904(%rax), %esi
	shll	$8, %esi
	pxor	%xmm3, %xmm3
	pinsrw	$1, %esi, %xmm3
	movzbl	906(%rax), %esi
	shll	$8, %esi
	pinsrw	$3, %esi, %xmm3
	movl	908(%rax), %esi
	shll	$8, %esi
	pinsrw	$5, %esi, %xmm3
	movzbl	910(%rax), %esi
	shll	$8, %esi
	pinsrw	$7, %esi, %xmm3
	psrad	$24, %xmm3
	movdqa	160(%rsp), %xmm4                # 16-byte Reload
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	psrad	$4, %xmm3
	movzbl	897(%rax), %esi
	shll	$8, %esi
	pxor	%xmm2, %xmm2
	pinsrw	$1, %esi, %xmm2
	movzbl	899(%rax), %esi
	shll	$8, %esi
	pinsrw	$3, %esi, %xmm2
	movzbl	901(%rax), %esi
	shll	$8, %esi
	pinsrw	$5, %esi, %xmm2
	movzbl	903(%rax), %esi
	shll	$8, %esi
	pinsrw	$7, %esi, %xmm2
	psrad	$4, %xmm1
	psrad	$24, %xmm2
	paddd	%xmm3, %xmm2
	movzbl	905(%rax), %esi
	shll	$8, %esi
	pinsrw	$1, %esi, %xmm0
	movzbl	907(%rax), %esi
	shll	$8, %esi
	pinsrw	$3, %esi, %xmm0
	movzbl	909(%rax), %esi
	shll	$8, %esi
	pinsrw	$5, %esi, %xmm0
	movzbl	911(%rax), %esi
	shll	$8, %esi
	pinsrw	$7, %esi, %xmm0
	psrad	$24, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	.LCPI0_0(%rip), %xmm5           # xmm5 = [1,1,1,1]
	movdqa	%xmm5, %xmm3
	pcmpgtd	%xmm2, %xmm3
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm2, %xmm1
	movdqa	.LCPI0_1(%rip), %xmm6           # xmm6 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm6, %xmm1
	movdqa	.LCPI0_2(%rip), %xmm7           # xmm7 = [2147483774,2147483774,2147483774,2147483774]
	movdqa	%xmm7, %xmm4
	pcmpgtd	%xmm1, %xmm4
	pand	%xmm4, %xmm2
	movdqa	.LCPI0_3(%rip), %xmm8           # xmm8 = [126,126,126,126]
	pandn	%xmm8, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm0, %xmm1
	pxor	%xmm6, %xmm1
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm7, %xmm0
	pandn	%xmm8, %xmm7
	por	%xmm0, %xmm7
	movdqa	%xmm5, %xmm0
	pandn	%xmm7, %xmm0
	psubd	%xmm5, %xmm0
	movdqa	%xmm3, %xmm1
	pandn	%xmm4, %xmm1
	psubd	%xmm3, %xmm1
	movdqa	%xmm1, %xmm3
	movdqa	.LCPI0_4(%rip), %xmm7           # xmm7 = [127,127,127,127]
	pxor	%xmm7, %xmm3
	pxor	%xmm0, %xmm7
	movdqa	%xmm0, %xmm4
	pxor	%xmm6, %xmm4
	movdqa	%xmm0, %xmm2
	movdqa	.LCPI0_5(%rip), %xmm5           # xmm5 = [2147483775,2147483775,2147483775,2147483775]
	pxor	%xmm5, %xmm2
	pcmpgtd	%xmm4, %xmm2
	movdqa	%xmm0, %xmm4
	pand	%xmm2, %xmm4
	pandn	%xmm7, %xmm2
	por	%xmm4, %xmm2
	pxor	%xmm1, %xmm6
	pxor	%xmm1, %xmm5
	pcmpgtd	%xmm6, %xmm5
	movdqa	%xmm1, %xmm4
	pand	%xmm5, %xmm4
	pandn	%xmm3, %xmm5
	por	%xmm4, %xmm5
	paddd	%xmm5, %xmm5
	paddd	%xmm2, %xmm2
	psrld	$6, %xmm1
	por	%xmm5, %xmm1
	psrld	$6, %xmm0
	por	%xmm2, %xmm0
	packuswb	%xmm0, %xmm1
	packuswb	%xmm1, %xmm1
	movq	%xmm1, 500(%rdi)
	movl	$456, %esi                      # imm = 0x1C8
.LBB0_2:                                # %for.body.preheader
	movl	$1, %edi
	.p2align	4, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%rax,%rsi,2), %r8d
	imull	%edx, %r8d
	sarl	$4, %r8d
	movsbl	1(%rax,%rsi,2), %r9d
	addl	%r8d, %r9d
	cmpl	$126, %r9d
	movl	$126, %r8d
	cmovbl	%r9d, %r8d
	testl	%r9d, %r9d
	cmovlel	%edi, %r8d
	movl	%r8d, %r9d
	xorl	$127, %r9d
	cmpl	%r9d, %r8d
	cmovbl	%r8d, %r9d
	shrl	$6, %r8d
	leal	(%r8,%r9,2), %r8d
	movb	%r8b, (%rcx,%rsi)
	incq	%rsi
	cmpq	$460, %rsi                      # imm = 0x1CC
	jne	.LBB0_3
# %bb.4:                                # %for.cond.cleanup
	addq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	x264_cabac_context_init, .Lfunc_end0-x264_cabac_context_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_cabac_encode_init_core
.LCPI1_0:
	.long	0                               # 0x0
	.long	510                             # 0x1fe
	.long	4294967287                      # 0xfffffff7
	.long	0                               # 0x0
	.text
	.globl	x264_cabac_encode_init_core
	.p2align	4, 0x90
	.type	x264_cabac_encode_init_core,@function
x264_cabac_encode_init_core:            # @x264_cabac_encode_init_core
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	.LCPI1_0(%rip), %xmm0           # xmm0 = [0,510,4294967287,0]
	movaps	%xmm0, (%rdi)
	retq
.Lfunc_end1:
	.size	x264_cabac_encode_init_core, .Lfunc_end1-x264_cabac_encode_init_core
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_cabac_encode_init
.LCPI2_0:
	.long	0                               # 0x0
	.long	510                             # 0x1fe
	.long	4294967287                      # 0xfffffff7
	.long	0                               # 0x0
	.text
	.globl	x264_cabac_encode_init
	.p2align	4, 0x90
	.type	x264_cabac_encode_init,@function
x264_cabac_encode_init:                 # @x264_cabac_encode_init
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	.LCPI2_0(%rip), %xmm0           # xmm0 = [0,510,4294967287,0]
	movaps	%xmm0, (%rdi)
	movq	%rsi, 16(%rdi)
	movq	%rsi, 24(%rdi)
	movq	%rdx, 32(%rdi)
	retq
.Lfunc_end2:
	.size	x264_cabac_encode_init, .Lfunc_end2-x264_cabac_encode_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_cabac_encode_decision_c    # -- Begin function x264_cabac_encode_decision_c
	.p2align	4, 0x90
	.type	x264_cabac_encode_decision_c,@function
x264_cabac_encode_decision_c:           # @x264_cabac_encode_decision_c
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movzbl	52(%rdi,%rax), %ecx
	movl	4(%rdi), %esi
	movl	%esi, %r8d
	sarl	$6, %r8d
	movslq	%r8d, %r8
	movl	%ecx, %r9d
	andl	$-2, %r9d
	movzbl	x264_cabac_range_lps-4(%r8,%r9,2), %r8d
	subl	%r8d, %esi
	movl	%esi, 4(%rdi)
	movl	%ecx, %r9d
	andl	$1, %r9d
	cmpl	%edx, %r9d
	je	.LBB3_2
# %bb.1:                                # %if.then
	addl	%esi, (%rdi)
	movl	%r8d, 4(%rdi)
.LBB3_2:                                # %if.end
	movslq	%edx, %rdx
	movzbl	x264_cabac_transition(%rdx,%rcx,2), %ecx
	movb	%cl, 52(%rdi,%rax)
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	x264_cabac_renorm_shift(%rax), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, 4(%rdi)
	shll	%cl, %esi
	movl	%esi, (%rdi)
	addl	8(%rdi), %eax
	movl	%eax, 8(%rdi)
	js	.LBB3_14
# %bb.3:                                # %if.then.i.i
	leal	10(%rax), %ecx
	movl	%esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	movl	$1024, %r8d                     # imm = 0x400
	movl	%eax, %ecx
	shll	%cl, %r8d
	decl	%r8d
	andl	%esi, %r8d
	movl	%r8d, (%rdi)
	addl	$-8, %eax
	movl	%eax, 8(%rdi)
	cmpb	$-1, %dl
	jne	.LBB3_5
# %bb.4:                                # %if.then8.i.i
	incl	12(%rdi)
	retq
.LBB3_5:                                # %if.else.i.i
	movl	%edx, %eax
	shrl	$8, %eax
	movl	12(%rdi), %esi
	movq	24(%rdi), %rcx
	addb	%al, -1(%rcx)
	testl	%esi, %esi
	jle	.LBB3_13
# %bb.6:                                # %while.body.lr.ph.i.i
	decb	%al
	movl	%esi, %r8d
	movl	%esi, %ecx
	andl	$3, %r8d
	je	.LBB3_10
# %bb.7:                                # %while.body.i.i.prol.preheader
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_8:                                # %while.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rcx
	leaq	1(%rcx), %r10
	movq	%r10, 24(%rdi)
	movb	%al, (%rcx)
	incl	%r9d
	cmpl	%r9d, %r8d
	jne	.LBB3_8
# %bb.9:                                # %while.body.i.i.prol.loopexit.loopexit
	movl	%esi, %ecx
	subl	%r9d, %ecx
.LBB3_10:                               # %while.body.i.i.prol.loopexit
	cmpl	$4, %esi
	jb	.LBB3_13
# %bb.11:                               # %while.body.i.i.preheader
	decl	%ecx
	.p2align	4, 0x90
.LBB3_12:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	addl	$-4, %ecx
	cmpl	$-2, %ecx
	jb	.LBB3_12
.LBB3_13:                               # %while.end.i.i
	movq	24(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movl	$0, 12(%rdi)
.LBB3_14:                               # %x264_cabac_encode_renorm.exit
	retq
.Lfunc_end3:
	.size	x264_cabac_encode_decision_c, .Lfunc_end3-x264_cabac_encode_decision_c
	.cfi_endproc
                                        # -- End function
	.globl	x264_cabac_encode_bypass_c      # -- Begin function x264_cabac_encode_bypass_c
	.p2align	4, 0x90
	.type	x264_cabac_encode_bypass_c,@function
x264_cabac_encode_bypass_c:             # @x264_cabac_encode_bypass_c
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	negl	%esi
	andl	4(%rdi), %esi
	movl	(%rdi), %eax
	movl	8(%rdi), %r8d
	leal	(%rsi,%rax,2), %esi
	movl	%esi, (%rdi)
	leal	1(%r8), %eax
	movl	%eax, 8(%rdi)
	cmpl	$-1, %r8d
	jl	.LBB4_12
# %bb.1:                                # %if.then.i
	leal	11(%r8), %ecx
	movl	%esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	movl	$1024, %r9d                     # imm = 0x400
	movl	%eax, %ecx
	shll	%cl, %r9d
	decl	%r9d
	andl	%esi, %r9d
	movl	%r9d, (%rdi)
	addl	$-7, %r8d
	movl	%r8d, 8(%rdi)
	cmpb	$-1, %dl
	jne	.LBB4_3
# %bb.2:                                # %if.then8.i
	incl	12(%rdi)
	retq
.LBB4_3:                                # %if.else.i
	movl	%edx, %eax
	shrl	$8, %eax
	movl	12(%rdi), %esi
	movq	24(%rdi), %rcx
	addb	%al, -1(%rcx)
	testl	%esi, %esi
	jle	.LBB4_11
# %bb.4:                                # %while.body.lr.ph.i
	decb	%al
	movl	%esi, %r8d
	movl	%esi, %ecx
	andl	$3, %r8d
	je	.LBB4_8
# %bb.5:                                # %while.body.i.prol.preheader
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB4_6:                                # %while.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rcx
	leaq	1(%rcx), %r10
	movq	%r10, 24(%rdi)
	movb	%al, (%rcx)
	incl	%r9d
	cmpl	%r9d, %r8d
	jne	.LBB4_6
# %bb.7:                                # %while.body.i.prol.loopexit.loopexit
	movl	%esi, %ecx
	subl	%r9d, %ecx
.LBB4_8:                                # %while.body.i.prol.loopexit
	cmpl	$4, %esi
	jb	.LBB4_11
# %bb.9:                                # %while.body.i.preheader
	decl	%ecx
	.p2align	4, 0x90
.LBB4_10:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	addl	$-4, %ecx
	cmpl	$-2, %ecx
	jb	.LBB4_10
.LBB4_11:                               # %while.end.i
	movq	24(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movl	$0, 12(%rdi)
.LBB4_12:                               # %x264_cabac_putbyte.exit
	retq
.Lfunc_end4:
	.size	x264_cabac_encode_bypass_c, .Lfunc_end4-x264_cabac_encode_bypass_c
	.cfi_endproc
                                        # -- End function
	.globl	x264_cabac_encode_ue_bypass     # -- Begin function x264_cabac_encode_ue_bypass
	.p2align	4, 0x90
	.type	x264_cabac_encode_ue_bypass,@function
x264_cabac_encode_ue_bypass:            # @x264_cabac_encode_ue_bypass
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %eax
	movl	%esi, %ecx
	shll	%cl, %eax
	movl	%esi, %r8d
	cmpl	%edx, %eax
	jg	.LBB5_2
	.p2align	4, 0x90
.LBB5_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%eax, %edx
	incl	%r8d
	movl	$1, %eax
	movl	%r8d, %ecx
	shll	%cl, %eax
	cmpl	%eax, %edx
	jge	.LBB5_1
.LBB5_2:                                # %for.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%r8d, %ecx
	subl	%esi, %ecx
	movl	$-1, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	notl	%r9d
	leal	1(%r8), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	addl	%edx, %r9d
	addl	%r8d, %r8d
	subl	%esi, %r8d
	leal	1(%r8), %eax
	andl	$7, %r8d
	incl	%r8d
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_14:                               # %while.end.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	24(%rdi), %rcx
	leaq	1(%rcx), %rsi
	movq	%rsi, 24(%rdi)
	movb	%dl, (%rcx)
	xorl	%ecx, %ecx
.LBB5_15:                               # %x264_cabac_putbyte.exit.sink.split
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%ecx, 12(%rdi)
.LBB5_16:                               # %x264_cabac_putbyte.exit
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	$8, %r8d
	testl	%eax, %eax
	jle	.LBB5_17
.LBB5_3:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_13 Depth 2
	subl	%r8d, %eax
	movl	(%rdi), %edx
	movl	%r8d, %ecx
	shll	%cl, %edx
	movl	%r9d, %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movzbl	%sil, %esi
	imull	4(%rdi), %esi
	addl	%edx, %esi
	movl	%esi, (%rdi)
	addl	8(%rdi), %r8d
	movl	%r8d, 8(%rdi)
	js	.LBB5_16
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB5_3 Depth=1
	leal	10(%r8), %ecx
	movl	%esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	movl	$1024, %r10d                    # imm = 0x400
	movl	%r8d, %ecx
	shll	%cl, %r10d
	decl	%r10d
	andl	%esi, %r10d
	movl	%r10d, (%rdi)
	addl	$-8, %r8d
	movl	%r8d, 8(%rdi)
	cmpb	$-1, %dl
	jne	.LBB5_6
# %bb.5:                                # %if.then8.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	12(%rdi), %ecx
	incl	%ecx
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_6:                                # %if.else.i
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	12(%rdi), %r8d
	movq	24(%rdi), %rsi
	addb	%cl, -1(%rsi)
	testl	%r8d, %r8d
	jle	.LBB5_14
# %bb.7:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB5_3 Depth=1
	decb	%cl
	movl	%r8d, %r10d
	movl	%r8d, %esi
	andl	$3, %r10d
	je	.LBB5_11
# %bb.8:                                # %while.body.i.prol.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB5_9:                                # %while.body.i.prol
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %rbx
	movq	%rbx, 24(%rdi)
	movb	%cl, (%rsi)
	incl	%r11d
	cmpl	%r11d, %r10d
	jne	.LBB5_9
# %bb.10:                               # %while.body.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	%r8d, %esi
	subl	%r11d, %esi
.LBB5_11:                               # %while.body.i.prol.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	$4, %r8d
	jb	.LBB5_14
# %bb.12:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	decl	%esi
	.p2align	4, 0x90
.LBB5_13:                               # %while.body.i
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rdi), %r8
	leaq	1(%r8), %r10
	movq	%r10, 24(%rdi)
	movb	%cl, (%r8)
	movq	24(%rdi), %r8
	leaq	1(%r8), %r10
	movq	%r10, 24(%rdi)
	movb	%cl, (%r8)
	movq	24(%rdi), %r8
	leaq	1(%r8), %r10
	movq	%r10, 24(%rdi)
	movb	%cl, (%r8)
	movq	24(%rdi), %r8
	leaq	1(%r8), %r10
	movq	%r10, 24(%rdi)
	movb	%cl, (%r8)
	addl	$-4, %esi
	cmpl	$-2, %esi
	jb	.LBB5_13
	jmp	.LBB5_14
.LBB5_17:                               # %do.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	x264_cabac_encode_ue_bypass, .Lfunc_end5-x264_cabac_encode_ue_bypass
	.cfi_endproc
                                        # -- End function
	.globl	x264_cabac_encode_terminal_c    # -- Begin function x264_cabac_encode_terminal_c
	.p2align	4, 0x90
	.type	x264_cabac_encode_terminal_c,@function
x264_cabac_encode_terminal_c:           # @x264_cabac_encode_terminal_c
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	addl	$-2, %edx
	movl	%edx, %eax
	sarl	$3, %eax
	cltq
	movzbl	x264_cabac_renorm_shift(%rax), %eax
	movl	%eax, %ecx
	shll	%cl, %edx
	movl	%edx, 4(%rdi)
	shll	%cl, %esi
	movl	%esi, (%rdi)
	addl	8(%rdi), %eax
	movl	%eax, 8(%rdi)
	js	.LBB6_12
# %bb.1:                                # %if.then.i.i
	leal	10(%rax), %ecx
	movl	%esi, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	movl	$1024, %r8d                     # imm = 0x400
	movl	%eax, %ecx
	shll	%cl, %r8d
	decl	%r8d
	andl	%esi, %r8d
	movl	%r8d, (%rdi)
	addl	$-8, %eax
	movl	%eax, 8(%rdi)
	cmpb	$-1, %dl
	jne	.LBB6_3
# %bb.2:                                # %if.then8.i.i
	incl	12(%rdi)
	retq
.LBB6_3:                                # %if.else.i.i
	movl	%edx, %eax
	shrl	$8, %eax
	movl	12(%rdi), %esi
	movq	24(%rdi), %rcx
	addb	%al, -1(%rcx)
	testl	%esi, %esi
	jle	.LBB6_11
# %bb.4:                                # %while.body.lr.ph.i.i
	decb	%al
	movl	%esi, %r8d
	movl	%esi, %ecx
	andl	$3, %r8d
	je	.LBB6_8
# %bb.5:                                # %while.body.i.i.prol.preheader
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB6_6:                                # %while.body.i.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rcx
	leaq	1(%rcx), %r10
	movq	%r10, 24(%rdi)
	movb	%al, (%rcx)
	incl	%r9d
	cmpl	%r9d, %r8d
	jne	.LBB6_6
# %bb.7:                                # %while.body.i.i.prol.loopexit.loopexit
	movl	%esi, %ecx
	subl	%r9d, %ecx
.LBB6_8:                                # %while.body.i.i.prol.loopexit
	cmpl	$4, %esi
	jb	.LBB6_11
# %bb.9:                                # %while.body.i.i.preheader
	decl	%ecx
	.p2align	4, 0x90
.LBB6_10:                               # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	movq	24(%rdi), %rsi
	leaq	1(%rsi), %r8
	movq	%r8, 24(%rdi)
	movb	%al, (%rsi)
	addl	$-4, %ecx
	cmpl	$-2, %ecx
	jb	.LBB6_10
.LBB6_11:                               # %while.end.i.i
	movq	24(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rdi)
	movb	%dl, (%rax)
	movl	$0, 12(%rdi)
.LBB6_12:                               # %x264_cabac_encode_renorm.exit
	retq
.Lfunc_end6:
	.size	x264_cabac_encode_terminal_c, .Lfunc_end6-x264_cabac_encode_terminal_c
	.cfi_endproc
                                        # -- End function
	.globl	x264_cabac_encode_flush         # -- Begin function x264_cabac_encode_flush
	.p2align	4, 0x90
	.type	x264_cabac_encode_flush,@function
x264_cabac_encode_flush:                # @x264_cabac_encode_flush
	.cfi_startproc
# %bb.0:                                # %entry
	movl	4(%rsi), %r9d
	movl	8(%rsi), %eax
	addl	(%rsi), %r9d
	shll	$9, %r9d
	addl	$-1024, %r9d                    # imm = 0xFC00
	orl	$512, %r9d                      # imm = 0x200
	leal	9(%rax), %edx
	movl	%edx, 8(%rsi)
	cmpl	$-9, %eax
	jl	.LBB7_1
# %bb.2:                                # %if.then.i
	leal	19(%rax), %ecx
	movl	%r9d, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r8d
	movl	$1024, %r10d                    # imm = 0x400
	movl	%edx, %ecx
	shll	%cl, %r10d
	decl	%r10d
	andl	%r9d, %r10d
	movl	%r10d, (%rsi)
	incl	%eax
	movl	%eax, 8(%rsi)
	cmpb	$-1, %r8b
	jne	.LBB7_4
# %bb.3:                                # %if.then8.i
	movl	12(%rsi), %r8d
	incl	%r8d
	movl	%r8d, 12(%rsi)
	testl	%eax, %eax
	jns	.LBB7_15
.LBB7_14:
	movl	%r10d, %r9d
	jmp	.LBB7_26
.LBB7_1:
	movl	%edx, %eax
	jmp	.LBB7_26
.LBB7_4:                                # %if.else.i
	movl	%r8d, %eax
	shrl	$8, %eax
	movl	12(%rsi), %edx
	movq	24(%rsi), %rcx
	addb	%al, -1(%rcx)
	testl	%edx, %edx
	jle	.LBB7_12
# %bb.5:                                # %while.body.lr.ph.i
	decb	%al
	movl	%edx, %r9d
	movl	%edx, %ecx
	andl	$3, %r9d
	je	.LBB7_9
# %bb.6:                                # %while.body.i.prol.preheader
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB7_7:                                # %while.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rcx
	leaq	1(%rcx), %r11
	movq	%r11, 24(%rsi)
	movb	%al, (%rcx)
	incl	%r10d
	cmpl	%r10d, %r9d
	jne	.LBB7_7
# %bb.8:                                # %while.body.i.prol.loopexit.loopexit
	movl	%edx, %ecx
	subl	%r10d, %ecx
.LBB7_9:                                # %while.body.i.prol.loopexit
	cmpl	$4, %edx
	jb	.LBB7_12
# %bb.10:                               # %while.body.i.preheader
	decl	%ecx
	.p2align	4, 0x90
.LBB7_11:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rdx
	leaq	1(%rdx), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%rdx)
	movq	24(%rsi), %rdx
	leaq	1(%rdx), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%rdx)
	movq	24(%rsi), %rdx
	leaq	1(%rdx), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%rdx)
	movq	24(%rsi), %rdx
	leaq	1(%rdx), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%rdx)
	addl	$-4, %ecx
	cmpl	$-2, %ecx
	jb	.LBB7_11
.LBB7_12:                               # %while.end.i
	movq	24(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsi)
	movb	%r8b, (%rax)
	movl	$0, 12(%rsi)
	movl	(%rsi), %r10d
	movl	8(%rsi), %eax
	xorl	%r8d, %r8d
	testl	%eax, %eax
	js	.LBB7_14
.LBB7_15:                               # %if.then.i30
	leal	10(%rax), %ecx
	movl	%r10d, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	movl	$1024, %r9d                     # imm = 0x400
	movl	%eax, %ecx
	shll	%cl, %r9d
	decl	%r9d
	andl	%r10d, %r9d
	movl	%r9d, (%rsi)
	addl	$-8, %eax
	movl	%eax, 8(%rsi)
	cmpb	$-1, %dl
	jne	.LBB7_17
# %bb.16:                               # %if.then8.i56
	incl	%r8d
	movl	%r8d, 12(%rsi)
	jmp	.LBB7_26
.LBB7_17:                               # %if.else.i39
	movl	%edx, %eax
	shrl	$8, %eax
	movq	24(%rsi), %rcx
	addb	%al, -1(%rcx)
	testl	%r8d, %r8d
	jle	.LBB7_25
# %bb.18:                               # %while.body.lr.ph.i49
	decb	%al
	movl	%r8d, %r9d
	movl	%r8d, %ecx
	andl	$3, %r9d
	je	.LBB7_22
# %bb.19:                               # %while.body.i51.prol.preheader
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB7_20:                               # %while.body.i51.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rcx
	leaq	1(%rcx), %r11
	movq	%r11, 24(%rsi)
	movb	%al, (%rcx)
	incl	%r10d
	cmpl	%r10d, %r9d
	jne	.LBB7_20
# %bb.21:                               # %while.body.i51.prol.loopexit.loopexit
	movl	%r8d, %ecx
	subl	%r10d, %ecx
.LBB7_22:                               # %while.body.i51.prol.loopexit
	cmpl	$4, %r8d
	jb	.LBB7_25
# %bb.23:                               # %while.body.i51.preheader
	decl	%ecx
	.p2align	4, 0x90
.LBB7_24:                               # %while.body.i51
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%r8)
	movq	24(%rsi), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%r8)
	movq	24(%rsi), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%r8)
	movq	24(%rsi), %r8
	leaq	1(%r8), %r9
	movq	%r9, 24(%rsi)
	movb	%al, (%r8)
	addl	$-4, %ecx
	cmpl	$-2, %ecx
	jb	.LBB7_24
.LBB7_25:                               # %while.end.i46
	movq	24(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsi)
	movb	%dl, (%rax)
	movl	$0, 12(%rsi)
	movl	(%rsi), %r9d
	movl	8(%rsi), %eax
.LBB7_26:                               # %if.then.i62
	negb	%al
	movl	%eax, %ecx
	shll	%cl, %r9d
	movl	%r9d, (%rsi)
	movzbl	1844(%rdi), %ecx
	movl	$899998965, %eax                # imm = 0x35A4E4F5
	shrl	%cl, %eax
	andl	$1, %eax
	shll	$10, %eax
	orl	%r9d, %eax
	andl	$1023, %r9d                     # imm = 0x3FF
	movl	%r9d, (%rsi)
	movl	$-8, 8(%rsi)
	movl	%eax, %ecx
	notl	%ecx
	testl	$261120, %ecx                   # imm = 0x3FC00
	jne	.LBB7_27
# %bb.36:                               # %x264_cabac_putbyte.exit91
	movl	12(%rsi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	testl	%eax, %eax
	js	.LBB7_38
	.p2align	4, 0x90
.LBB7_37:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsi)
	movb	$-1, (%rax)
	movl	12(%rsi), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%rsi)
	cmpl	$1, %eax
	jg	.LBB7_37
.LBB7_38:                               # %while.end
	retq
.LBB7_27:                               # %if.else.i71
	sarl	$10, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	movl	12(%rsi), %edi
	movq	24(%rsi), %rdx
	addb	%cl, -1(%rdx)
	testl	%edi, %edi
	jle	.LBB7_35
# %bb.28:                               # %while.body.lr.ph.i81
	decb	%cl
	movl	%edi, %r8d
	movl	%edi, %edx
	andl	$3, %r8d
	je	.LBB7_32
# %bb.29:                               # %while.body.i83.prol.preheader
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB7_30:                               # %while.body.i83.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rdx
	leaq	1(%rdx), %r10
	movq	%r10, 24(%rsi)
	movb	%cl, (%rdx)
	incl	%r9d
	cmpl	%r9d, %r8d
	jne	.LBB7_30
# %bb.31:                               # %while.body.i83.prol.loopexit.loopexit
	movl	%edi, %edx
	subl	%r9d, %edx
.LBB7_32:                               # %while.body.i83.prol.loopexit
	cmpl	$4, %edi
	jb	.LBB7_35
# %bb.33:                               # %while.body.i83.preheader
	decl	%edx
	.p2align	4, 0x90
.LBB7_34:                               # %while.body.i83
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%rsi)
	movb	%cl, (%rdi)
	movq	24(%rsi), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%rsi)
	movb	%cl, (%rdi)
	movq	24(%rsi), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%rsi)
	movb	%cl, (%rdi)
	movq	24(%rsi), %rdi
	leaq	1(%rdi), %r8
	movq	%r8, 24(%rsi)
	movb	%cl, (%rdi)
	addl	$-4, %edx
	cmpl	$-2, %edx
	jb	.LBB7_34
.LBB7_35:                               # %x264_cabac_putbyte.exit91.thread
	movq	24(%rsi), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 24(%rsi)
	movb	%al, (%rcx)
	movl	$0, 12(%rsi)
	retq
.Lfunc_end7:
	.size	x264_cabac_encode_flush, .Lfunc_end7-x264_cabac_encode_flush
	.cfi_endproc
                                        # -- End function
	.type	x264_cabac_range_lps,@object    # @x264_cabac_range_lps
	.section	.rodata,"a",@progbits
	.globl	x264_cabac_range_lps
	.p2align	4, 0x0
x264_cabac_range_lps:
	.zero	4,2
	.ascii	"\006\007\b\t"
	.ascii	"\006\007\t\n"
	.ascii	"\006\b\t\013"
	.ascii	"\007\b\n\013"
	.ascii	"\007\t\n\f"
	.ascii	"\007\t\013\f"
	.ascii	"\b\t\013\r"
	.ascii	"\b\n\f\016"
	.ascii	"\t\013\f\016"
	.ascii	"\t\013\r\017"
	.ascii	"\n\f\016\020"
	.ascii	"\n\f\017\021"
	.ascii	"\013\r\017\022"
	.ascii	"\013\016\020\023"
	.ascii	"\f\016\021\024"
	.ascii	"\f\017\022\025"
	.ascii	"\r\020\023\026"
	.ascii	"\016\021\024\027"
	.ascii	"\016\022\025\030"
	.ascii	"\017\023\026\031"
	.ascii	"\020\024\027\033"
	.ascii	"\021\025\031\034"
	.ascii	"\022\026\032\036"
	.ascii	"\023\027\033\037"
	.ascii	"\024\030\035!"
	.ascii	"\025\032\036#"
	.ascii	"\026\033 %"
	.ascii	"\027\034!'"
	.ascii	"\030\036#)"
	.ascii	"\032\037%+"
	.ascii	"\033!'-"
	.ascii	"\035#)0"
	.ascii	"\036%+2"
	.ascii	" '.5"
	.ascii	"!)08"
	.ascii	"#+3;"
	.ascii	"%-6>"
	.ascii	"'08A"
	.ascii	")2;E"
	.ascii	"+5?H"
	.ascii	".8BL"
	.ascii	"0;EP"
	.ascii	"3>IU"
	.ascii	"5AMY"
	.ascii	"8EQ^"
	.ascii	";HVc"
	.ascii	">LZh"
	.ascii	"BP_n"
	.ascii	"EUdt"
	.ascii	"IYiz"
	.ascii	"M^o\200"
	.ascii	"Qcu\207"
	.ascii	"Uh{\216"
	.ascii	"Zn\202\226"
	.ascii	"_t\211\236"
	.ascii	"dz\220\246"
	.ascii	"i\200\230\257"
	.ascii	"o\207\240\271"
	.ascii	"t\216\251\303"
	.ascii	"{\226\262\315"
	.ascii	"\200\236\273\330"
	.ascii	"\200\247\305\343"
	.ascii	"\200\260\320\360"
	.size	x264_cabac_range_lps, 256

	.type	x264_cabac_transition,@object   # @x264_cabac_transition
	.globl	x264_cabac_transition
	.p2align	4, 0x0
x264_cabac_transition:
	.zero	2
	.zero	2,1
	.ascii	"\0022"
	.ascii	"3\003"
	.ascii	"\0022"
	.ascii	"3\003"
	.ascii	"\0044"
	.ascii	"5\005"
	.ascii	"\0064"
	.ascii	"5\007"
	.ascii	"\b4"
	.ascii	"5\t"
	.ascii	"\n6"
	.ascii	"7\013"
	.ascii	"\f6"
	.ascii	"7\r"
	.ascii	"\0166"
	.ascii	"7\017"
	.ascii	"\0208"
	.ascii	"9\021"
	.ascii	"\0228"
	.ascii	"9\023"
	.ascii	"\0248"
	.ascii	"9\025"
	.ascii	"\026:"
	.ascii	";\027"
	.ascii	"\030:"
	.ascii	";\031"
	.ascii	"\032<"
	.ascii	"=\033"
	.ascii	"\034<"
	.ascii	"=\035"
	.ascii	"\036<"
	.ascii	"=\037"
	.ascii	" >"
	.ascii	"?!"
	.ascii	"\">"
	.ascii	"?#"
	.ascii	"$@"
	.ascii	"A%"
	.ascii	"&B"
	.ascii	"C'"
	.ascii	"(B"
	.ascii	"C)"
	.ascii	"*B"
	.ascii	"C+"
	.ascii	",D"
	.ascii	"E-"
	.ascii	".D"
	.ascii	"E/"
	.ascii	"0F"
	.ascii	"G1"
	.ascii	"2H"
	.ascii	"I3"
	.ascii	"4H"
	.ascii	"I5"
	.ascii	"6J"
	.ascii	"K7"
	.ascii	"8J"
	.ascii	"K9"
	.ascii	":L"
	.ascii	"M;"
	.ascii	"<N"
	.ascii	"O="
	.ascii	">N"
	.ascii	"O?"
	.ascii	"@P"
	.ascii	"QA"
	.ascii	"BR"
	.ascii	"SC"
	.ascii	"DR"
	.ascii	"SE"
	.ascii	"FT"
	.ascii	"UG"
	.ascii	"HT"
	.ascii	"UI"
	.ascii	"JX"
	.ascii	"YK"
	.ascii	"LX"
	.ascii	"YM"
	.ascii	"NZ"
	.ascii	"[O"
	.ascii	"PZ"
	.ascii	"[Q"
	.ascii	"R^"
	.ascii	"_S"
	.ascii	"T^"
	.ascii	"_U"
	.ascii	"V`"
	.ascii	"aW"
	.ascii	"X`"
	.ascii	"aY"
	.ascii	"Zd"
	.ascii	"e["
	.ascii	"\\d"
	.ascii	"e]"
	.ascii	"^f"
	.ascii	"g_"
	.ascii	"`h"
	.ascii	"ia"
	.ascii	"bh"
	.ascii	"ic"
	.ascii	"dl"
	.ascii	"me"
	.ascii	"fl"
	.ascii	"mg"
	.ascii	"hn"
	.ascii	"oi"
	.ascii	"jp"
	.ascii	"qk"
	.ascii	"lr"
	.ascii	"sm"
	.ascii	"nt"
	.ascii	"uo"
	.ascii	"pv"
	.ascii	"wq"
	.ascii	"rv"
	.ascii	"ws"
	.ascii	"tz"
	.ascii	"{u"
	.ascii	"vz"
	.ascii	"{w"
	.ascii	"x|"
	.ascii	"}y"
	.ascii	"z~"
	.ascii	"\177{"
	.ascii	"|\177"
	.ascii	"~}"
	.size	x264_cabac_transition, 256

	.type	x264_cabac_renorm_shift,@object # @x264_cabac_renorm_shift
	.globl	x264_cabac_renorm_shift
	.p2align	4, 0x0
x264_cabac_renorm_shift:
	.ascii	"\006\005\004\004\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001"
	.zero	32
	.size	x264_cabac_renorm_shift, 64

	.type	x264_cabac_entropy,@object      # @x264_cabac_entropy
	.globl	x264_cabac_entropy
	.p2align	4, 0x0
x264_cabac_entropy:
	.short	7                               # 0x7
	.short	1469                            # 0x5bd
	.short	7                               # 0x7
	.short	1449                            # 0x5a9
	.short	8                               # 0x8
	.short	1430                            # 0x596
	.short	8                               # 0x8
	.short	1411                            # 0x583
	.short	9                               # 0x9
	.short	1392                            # 0x570
	.short	9                               # 0x9
	.short	1372                            # 0x55c
	.short	10                              # 0xa
	.short	1353                            # 0x549
	.short	10                              # 0xa
	.short	1334                            # 0x536
	.short	11                              # 0xb
	.short	1315                            # 0x523
	.short	11                              # 0xb
	.short	1295                            # 0x50f
	.short	12                              # 0xc
	.short	1276                            # 0x4fc
	.short	12                              # 0xc
	.short	1257                            # 0x4e9
	.short	13                              # 0xd
	.short	1238                            # 0x4d6
	.short	14                              # 0xe
	.short	1218                            # 0x4c2
	.short	15                              # 0xf
	.short	1199                            # 0x4af
	.short	15                              # 0xf
	.short	1180                            # 0x49c
	.short	16                              # 0x10
	.short	1161                            # 0x489
	.short	17                              # 0x11
	.short	1141                            # 0x475
	.short	18                              # 0x12
	.short	1122                            # 0x462
	.short	19                              # 0x13
	.short	1103                            # 0x44f
	.short	20                              # 0x14
	.short	1084                            # 0x43c
	.short	21                              # 0x15
	.short	1064                            # 0x428
	.short	22                              # 0x16
	.short	1045                            # 0x415
	.short	24                              # 0x18
	.short	1026                            # 0x402
	.short	25                              # 0x19
	.short	1007                            # 0x3ef
	.short	26                              # 0x1a
	.short	987                             # 0x3db
	.short	28                              # 0x1c
	.short	968                             # 0x3c8
	.short	29                              # 0x1d
	.short	949                             # 0x3b5
	.short	31                              # 0x1f
	.short	930                             # 0x3a2
	.short	33                              # 0x21
	.short	910                             # 0x38e
	.short	35                              # 0x23
	.short	891                             # 0x37b
	.short	37                              # 0x25
	.short	872                             # 0x368
	.short	39                              # 0x27
	.short	853                             # 0x355
	.short	41                              # 0x29
	.short	833                             # 0x341
	.short	43                              # 0x2b
	.short	814                             # 0x32e
	.short	46                              # 0x2e
	.short	795                             # 0x31b
	.short	48                              # 0x30
	.short	776                             # 0x308
	.short	51                              # 0x33
	.short	756                             # 0x2f4
	.short	54                              # 0x36
	.short	737                             # 0x2e1
	.short	57                              # 0x39
	.short	718                             # 0x2ce
	.short	60                              # 0x3c
	.short	699                             # 0x2bb
	.short	64                              # 0x40
	.short	679                             # 0x2a7
	.short	68                              # 0x44
	.short	660                             # 0x294
	.short	72                              # 0x48
	.short	641                             # 0x281
	.short	76                              # 0x4c
	.short	622                             # 0x26e
	.short	80                              # 0x50
	.short	602                             # 0x25a
	.short	85                              # 0x55
	.short	583                             # 0x247
	.short	90                              # 0x5a
	.short	564                             # 0x234
	.short	96                              # 0x60
	.short	545                             # 0x221
	.short	102                             # 0x66
	.short	525                             # 0x20d
	.short	108                             # 0x6c
	.short	506                             # 0x1fa
	.short	115                             # 0x73
	.short	487                             # 0x1e7
	.short	122                             # 0x7a
	.short	468                             # 0x1d4
	.short	130                             # 0x82
	.short	448                             # 0x1c0
	.short	139                             # 0x8b
	.short	429                             # 0x1ad
	.short	148                             # 0x94
	.short	410                             # 0x19a
	.short	157                             # 0x9d
	.short	391                             # 0x187
	.short	168                             # 0xa8
	.short	371                             # 0x173
	.short	180                             # 0xb4
	.short	352                             # 0x160
	.short	192                             # 0xc0
	.short	333                             # 0x14d
	.short	206                             # 0xce
	.short	314                             # 0x13a
	.short	221                             # 0xdd
	.short	295                             # 0x127
	.short	238                             # 0xee
	.short	275                             # 0x113
	.short	256                             # 0x100
	.short	256                             # 0x100
	.size	x264_cabac_entropy, 256

	.type	x264_cabac_context_init_I,@object # @x264_cabac_context_init_I
	.p2align	4, 0x0
x264_cabac_context_init_I:
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\000\013"
	.ascii	"\0017"
	.ascii	"\000E"
	.ascii	"\357\177"
	.ascii	"\363f"
	.ascii	"\000R"
	.ascii	"\371J"
	.ascii	"\353k"
	.ascii	"\345\177"
	.ascii	"\341\177"
	.ascii	"\350\177"
	.ascii	"\356_"
	.ascii	"\345\177"
	.ascii	"\353r"
	.ascii	"\342\177"
	.ascii	"\357{"
	.ascii	"\364s"
	.ascii	"\360z"
	.ascii	"\365s"
	.ascii	"\364?"
	.ascii	"\376D"
	.ascii	"\361T"
	.ascii	"\363h"
	.ascii	"\375F"
	.ascii	"\370]"
	.ascii	"\366Z"
	.ascii	"\342\177"
	.ascii	"\377J"
	.ascii	"\372a"
	.ascii	"\371["
	.ascii	"\354\177"
	.ascii	"\3748"
	.ascii	"\373R"
	.ascii	"\371L"
	.ascii	"\352}"
	.ascii	"\371]"
	.ascii	"\365W"
	.ascii	"\375M"
	.ascii	"\373G"
	.ascii	"\374?"
	.ascii	"\374D"
	.ascii	"\364T"
	.ascii	"\371>"
	.ascii	"\371A"
	.ascii	"\b="
	.ascii	"\0058"
	.ascii	"\376B"
	.ascii	"\001@"
	.ascii	"\000="
	.ascii	"\376N"
	.ascii	"\0012"
	.ascii	"\0074"
	.ascii	"\n#"
	.ascii	"\000,"
	.ascii	"\013&"
	.ascii	"\001-"
	.ascii	"\000."
	.ascii	"\005,"
	.ascii	"\037\021"
	.ascii	"\0013"
	.ascii	"\0072"
	.ascii	"\034\023"
	.ascii	"\020!"
	.ascii	"\016>"
	.ascii	"\363l"
	.ascii	"\361d"
	.ascii	"\363e"
	.ascii	"\363["
	.ascii	"\364^"
	.ascii	"\366X"
	.ascii	"\360T"
	.ascii	"\366V"
	.ascii	"\371S"
	.ascii	"\363W"
	.ascii	"\355^"
	.ascii	"\001F"
	.ascii	"\000H"
	.ascii	"\373J"
	.ascii	"\022;"
	.ascii	"\370f"
	.ascii	"\361d"
	.ascii	"\000_"
	.ascii	"\374K"
	.ascii	"\002H"
	.ascii	"\365K"
	.ascii	"\375G"
	.ascii	"\017."
	.ascii	"\363E"
	.ascii	"\000>"
	.ascii	"\000A"
	.ascii	"\025%"
	.ascii	"\361H"
	.ascii	"\t9"
	.ascii	"\0206"
	.ascii	"\000>"
	.ascii	"\fH"
	.asciz	"\030"
	.ascii	"\017\t"
	.ascii	"\b\031"
	.ascii	"\r\022"
	.ascii	"\017\t"
	.ascii	"\r\023"
	.ascii	"\n%"
	.ascii	"\f\022"
	.ascii	"\006\035"
	.ascii	"\024!"
	.ascii	"\017\036"
	.ascii	"\004-"
	.ascii	"\001:"
	.ascii	"\000>"
	.ascii	"\007="
	.ascii	"\f&"
	.ascii	"\013-"
	.ascii	"\017'"
	.ascii	"\013*"
	.ascii	"\r,"
	.ascii	"\020-"
	.ascii	"\f)"
	.ascii	"\n1"
	.ascii	"\036\""
	.ascii	"\022*"
	.ascii	"\n7"
	.ascii	"\0213"
	.ascii	"\021."
	.ascii	"\000Y"
	.ascii	"\032\355"
	.ascii	"\026\357"
	.ascii	"\032\357"
	.ascii	"\036\347"
	.ascii	"\034\354"
	.ascii	"!\351"
	.ascii	"%\345"
	.ascii	"!\351"
	.ascii	"(\344"
	.ascii	"&\357"
	.ascii	"!\365"
	.ascii	"(\361"
	.ascii	")\372"
	.ascii	"&\001"
	.ascii	")\021"
	.ascii	"\036\372"
	.ascii	"\033\003"
	.ascii	"\032\026"
	.ascii	"%\360"
	.ascii	"#\374"
	.ascii	"&\370"
	.ascii	"&\375"
	.ascii	"%\003"
	.ascii	"&\005"
	.asciz	"*"
	.ascii	"#\020"
	.ascii	"'\026"
	.ascii	"\0160"
	.ascii	"\033%"
	.ascii	"\025<"
	.ascii	"\fD"
	.ascii	"\002a"
	.ascii	"\375G"
	.ascii	"\372*"
	.ascii	"\3732"
	.ascii	"\3756"
	.ascii	"\376>"
	.ascii	"\000:"
	.ascii	"\001?"
	.ascii	"\376H"
	.ascii	"\377J"
	.ascii	"\367["
	.ascii	"\373C"
	.ascii	"\373\033"
	.ascii	"\375'"
	.ascii	"\376,"
	.ascii	"\000."
	.ascii	"\360@"
	.ascii	"\370D"
	.ascii	"\366N"
	.ascii	"\372M"
	.ascii	"\366V"
	.ascii	"\364\\"
	.ascii	"\3617"
	.ascii	"\366<"
	.ascii	"\372>"
	.ascii	"\374A"
	.ascii	"\364I"
	.ascii	"\370L"
	.ascii	"\371P"
	.ascii	"\367X"
	.ascii	"\357n"
	.ascii	"\365a"
	.ascii	"\354T"
	.ascii	"\365O"
	.ascii	"\372I"
	.ascii	"\374J"
	.ascii	"\363V"
	.ascii	"\363`"
	.ascii	"\365a"
	.ascii	"\355u"
	.ascii	"\370N"
	.ascii	"\373!"
	.ascii	"\3740"
	.ascii	"\3765"
	.ascii	"\375>"
	.ascii	"\363G"
	.ascii	"\366O"
	.ascii	"\364V"
	.ascii	"\363Z"
	.ascii	"\362a"
	.zero	2
	.ascii	"\372]"
	.ascii	"\372T"
	.ascii	"\370O"
	.ascii	"\000B"
	.ascii	"\377G"
	.ascii	"\000>"
	.ascii	"\376<"
	.ascii	"\376;"
	.ascii	"\373K"
	.ascii	"\375>"
	.ascii	"\374:"
	.ascii	"\367B"
	.ascii	"\377O"
	.ascii	"\000G"
	.ascii	"\003D"
	.ascii	"\n,"
	.ascii	"\371>"
	.ascii	"\017$"
	.ascii	"\016("
	.ascii	"\020\033"
	.ascii	"\f\035"
	.ascii	"\001,"
	.ascii	"\024$"
	.ascii	"\022 "
	.ascii	"\005*"
	.ascii	"\0010"
	.ascii	"\n>"
	.ascii	"\021."
	.ascii	"\t@"
	.ascii	"\364h"
	.ascii	"\365a"
	.ascii	"\360`"
	.ascii	"\371X"
	.ascii	"\370U"
	.ascii	"\371U"
	.ascii	"\367U"
	.ascii	"\363X"
	.ascii	"\004B"
	.ascii	"\375M"
	.ascii	"\375L"
	.ascii	"\372L"
	.ascii	"\n:"
	.ascii	"\377L"
	.ascii	"\377S"
	.ascii	"\371c"
	.ascii	"\362_"
	.ascii	"\002_"
	.ascii	"\000L"
	.ascii	"\373J"
	.ascii	"\000F"
	.ascii	"\365K"
	.ascii	"\001D"
	.ascii	"\000A"
	.ascii	"\362I"
	.ascii	"\003>"
	.ascii	"\004>"
	.ascii	"\377D"
	.ascii	"\363K"
	.ascii	"\0137"
	.ascii	"\005@"
	.ascii	"\fF"
	.ascii	"\017\006"
	.ascii	"\006\023"
	.ascii	"\007\020"
	.ascii	"\f\016"
	.ascii	"\022\r"
	.ascii	"\r\013"
	.ascii	"\r\017"
	.ascii	"\017\020"
	.ascii	"\f\027"
	.ascii	"\r\027"
	.ascii	"\017\024"
	.ascii	"\016\032"
	.ascii	"\016,"
	.ascii	"\021("
	.ascii	"\021/"
	.ascii	"\030\021"
	.zero	2,21
	.ascii	"\031\026"
	.ascii	"\037\033"
	.ascii	"\026\035"
	.ascii	"\023#"
	.ascii	"\0162"
	.ascii	"\n9"
	.ascii	"\007?"
	.ascii	"\376M"
	.ascii	"\374R"
	.ascii	"\375^"
	.ascii	"\tE"
	.ascii	"\364m"
	.ascii	"$\335"
	.ascii	"$\336"
	.ascii	" \346"
	.ascii	"%\342"
	.ascii	",\340"
	.ascii	"\"\356"
	.ascii	"\"\361"
	.ascii	"(\361"
	.ascii	"!\371"
	.ascii	"#\373"
	.asciz	"!"
	.ascii	"&\002"
	.ascii	"!\r"
	.ascii	"\027#"
	.ascii	"\r:"
	.ascii	"\035\375"
	.asciz	"\032"
	.ascii	"\026\036"
	.ascii	"\037\371"
	.ascii	"#\361"
	.ascii	"\"\375"
	.ascii	"\"\003"
	.ascii	"$\377"
	.ascii	"\"\005"
	.ascii	" \013"
	.ascii	"#\005"
	.ascii	"\"\f"
	.ascii	"'\013"
	.ascii	"\036\035"
	.ascii	"\"\032"
	.ascii	"\035'"
	.ascii	"\023B"
	.ascii	"\037\025"
	.zero	2,31
	.ascii	"\0312"
	.ascii	"\357x"
	.ascii	"\354p"
	.ascii	"\356r"
	.ascii	"\365U"
	.ascii	"\361\\"
	.ascii	"\362Y"
	.ascii	"\346G"
	.ascii	"\361Q"
	.ascii	"\362P"
	.ascii	"\000D"
	.ascii	"\362F"
	.ascii	"\3508"
	.ascii	"\351D"
	.ascii	"\3502"
	.ascii	"\365J"
	.ascii	"\027\363"
	.ascii	"\032\363"
	.ascii	"(\361"
	.ascii	"1\362"
	.ascii	",\003"
	.ascii	"-\006"
	.ascii	",\""
	.ascii	"!6"
	.ascii	"\023R"
	.ascii	"\375K"
	.ascii	"\377\027"
	.ascii	"\001\""
	.ascii	"\001+"
	.ascii	"\0006"
	.ascii	"\3767"
	.ascii	"\000="
	.ascii	"\001@"
	.ascii	"\000D"
	.ascii	"\367\\"
	.ascii	"\362j"
	.ascii	"\363a"
	.ascii	"\361Z"
	.ascii	"\364Z"
	.ascii	"\356X"
	.ascii	"\366I"
	.ascii	"\367O"
	.ascii	"\362V"
	.ascii	"\366I"
	.ascii	"\366F"
	.ascii	"\366E"
	.ascii	"\373B"
	.ascii	"\367@"
	.ascii	"\373:"
	.ascii	"\002;"
	.ascii	"\025\366"
	.ascii	"\030\365"
	.ascii	"\034\370"
	.ascii	"\034\377"
	.ascii	"\035\003"
	.ascii	"\035\t"
	.ascii	"#\024"
	.ascii	"\035$"
	.ascii	"\016C"
	.size	x264_cabac_context_init_I, 920

	.type	x264_cabac_context_init_PB,@object # @x264_cabac_context_init_PB
	.p2align	4, 0x0
x264_cabac_context_init_PB:
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.ascii	"\027!"
	.ascii	"\027\002"
	.asciz	"\025"
	.ascii	"\001\t"
	.ascii	"\0001"
	.ascii	"\333v"
	.ascii	"\0059"
	.ascii	"\363N"
	.ascii	"\365A"
	.ascii	"\001>"
	.ascii	"\f1"
	.ascii	"\374I"
	.ascii	"\0212"
	.ascii	"\022@"
	.ascii	"\t+"
	.asciz	"\035"
	.ascii	"\032C"
	.ascii	"\020Z"
	.ascii	"\th"
	.ascii	"\322\177"
	.ascii	"\354h"
	.ascii	"\001C"
	.ascii	"\363N"
	.ascii	"\365A"
	.ascii	"\001>"
	.ascii	"\372V"
	.ascii	"\357_"
	.ascii	"\372="
	.ascii	"\t-"
	.ascii	"\375E"
	.ascii	"\372Q"
	.ascii	"\365`"
	.ascii	"\0067"
	.ascii	"\007C"
	.ascii	"\373V"
	.ascii	"\002X"
	.ascii	"\000:"
	.ascii	"\375L"
	.ascii	"\366^"
	.ascii	"\0056"
	.ascii	"\004E"
	.ascii	"\375Q"
	.ascii	"\000X"
	.ascii	"\371C"
	.ascii	"\373J"
	.ascii	"\374J"
	.ascii	"\373P"
	.ascii	"\371H"
	.ascii	"\001:"
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\000-"
	.ascii	"\374N"
	.ascii	"\375`"
	.ascii	"\345~"
	.ascii	"\344b"
	.ascii	"\347e"
	.ascii	"\351C"
	.ascii	"\344R"
	.ascii	"\354^"
	.ascii	"\360S"
	.ascii	"\352n"
	.ascii	"\353["
	.ascii	"\356f"
	.ascii	"\363]"
	.ascii	"\343\177"
	.ascii	"\371\\"
	.ascii	"\373Y"
	.ascii	"\371`"
	.ascii	"\363l"
	.ascii	"\375."
	.ascii	"\377A"
	.ascii	"\3779"
	.ascii	"\367]"
	.ascii	"\375J"
	.ascii	"\367\\"
	.ascii	"\370W"
	.ascii	"\351~"
	.ascii	"\0056"
	.ascii	"\006<"
	.ascii	"\006;"
	.ascii	"\006E"
	.ascii	"\3770"
	.ascii	"\000D"
	.ascii	"\374E"
	.ascii	"\370X"
	.ascii	"\376U"
	.ascii	"\372N"
	.ascii	"\377K"
	.ascii	"\371M"
	.ascii	"\0026"
	.ascii	"\0052"
	.ascii	"\375D"
	.ascii	"\0012"
	.ascii	"\006*"
	.ascii	"\374Q"
	.ascii	"\001?"
	.ascii	"\374F"
	.ascii	"\000C"
	.ascii	"\0029"
	.ascii	"\376L"
	.ascii	"\013#"
	.ascii	"\004@"
	.ascii	"\001="
	.ascii	"\013#"
	.ascii	"\022\031"
	.ascii	"\f\030"
	.ascii	"\r\035"
	.ascii	"\r$"
	.ascii	"\366]"
	.ascii	"\371I"
	.ascii	"\376I"
	.ascii	"\r."
	.ascii	"\t1"
	.ascii	"\371d"
	.ascii	"\t5"
	.ascii	"\0025"
	.ascii	"\0055"
	.ascii	"\376="
	.ascii	"\0008"
	.ascii	"\0008"
	.ascii	"\363?"
	.ascii	"\373<"
	.ascii	"\377>"
	.ascii	"\0049"
	.ascii	"\372E"
	.ascii	"\0049"
	.ascii	"\016'"
	.ascii	"\0043"
	.ascii	"\rD"
	.ascii	"\003@"
	.ascii	"\001="
	.ascii	"\t?"
	.ascii	"\0072"
	.ascii	"\020'"
	.ascii	"\005,"
	.ascii	"\0044"
	.ascii	"\0130"
	.ascii	"\373<"
	.ascii	"\377;"
	.ascii	"\000;"
	.ascii	"\026!"
	.ascii	"\005,"
	.ascii	"\016+"
	.ascii	"\377N"
	.ascii	"\000<"
	.ascii	"\tE"
	.ascii	"\013\034"
	.ascii	"\002("
	.ascii	"\003,"
	.ascii	"\0001"
	.ascii	"\000."
	.ascii	"\002,"
	.ascii	"\0023"
	.ascii	"\000/"
	.ascii	"\004'"
	.ascii	"\002>"
	.ascii	"\006."
	.ascii	"\0006"
	.ascii	"\0036"
	.ascii	"\002:"
	.ascii	"\004?"
	.ascii	"\0063"
	.ascii	"\0069"
	.ascii	"\0075"
	.ascii	"\0064"
	.ascii	"\0067"
	.ascii	"\013-"
	.ascii	"\016$"
	.ascii	"\b5"
	.ascii	"\377R"
	.ascii	"\0077"
	.ascii	"\375N"
	.ascii	"\017."
	.ascii	"\026\037"
	.ascii	"\377T"
	.ascii	"\031\007"
	.ascii	"\036\371"
	.ascii	"\034\003"
	.ascii	"\034\004"
	.asciz	" "
	.ascii	"\"\377"
	.ascii	"\036\006"
	.ascii	"\036\006"
	.ascii	" \t"
	.ascii	"\037\023"
	.ascii	"\032\033"
	.ascii	"\032\036"
	.ascii	"%\024"
	.ascii	"\034\""
	.ascii	"\021F"
	.ascii	"\001C"
	.ascii	"\005;"
	.ascii	"\tC"
	.ascii	"\020\036"
	.ascii	"\022 "
	.ascii	"\022#"
	.ascii	"\026\035"
	.ascii	"\030\037"
	.ascii	"\027&"
	.ascii	"\022+"
	.ascii	"\024)"
	.ascii	"\013?"
	.ascii	"\t;"
	.ascii	"\t@"
	.ascii	"\377^"
	.ascii	"\376Y"
	.ascii	"\367l"
	.ascii	"\372L"
	.ascii	"\376,"
	.ascii	"\000-"
	.ascii	"\0004"
	.ascii	"\375@"
	.ascii	"\376;"
	.ascii	"\374F"
	.ascii	"\374K"
	.ascii	"\370R"
	.ascii	"\357f"
	.ascii	"\367M"
	.ascii	"\003\030"
	.ascii	"\000*"
	.ascii	"\0000"
	.ascii	"\0007"
	.ascii	"\372;"
	.ascii	"\371G"
	.ascii	"\364S"
	.ascii	"\365W"
	.ascii	"\342w"
	.ascii	"\001:"
	.ascii	"\375\035"
	.ascii	"\377$"
	.ascii	"\001&"
	.ascii	"\002+"
	.ascii	"\3727"
	.ascii	"\000:"
	.ascii	"\000@"
	.ascii	"\375J"
	.ascii	"\366Z"
	.ascii	"\000F"
	.ascii	"\374\035"
	.ascii	"\005\037"
	.ascii	"\007*"
	.ascii	"\001;"
	.ascii	"\376:"
	.ascii	"\375H"
	.ascii	"\375Q"
	.ascii	"\365a"
	.ascii	"\000:"
	.ascii	"\b\005"
	.ascii	"\n\016"
	.ascii	"\016\022"
	.ascii	"\r\033"
	.ascii	"\002("
	.ascii	"\000:"
	.ascii	"\375F"
	.ascii	"\372O"
	.ascii	"\370U"
	.zero	2
	.ascii	"\363j"
	.ascii	"\360j"
	.ascii	"\366W"
	.ascii	"\353r"
	.ascii	"\356n"
	.ascii	"\362b"
	.ascii	"\352n"
	.ascii	"\353j"
	.ascii	"\356g"
	.ascii	"\353k"
	.ascii	"\351l"
	.ascii	"\346p"
	.ascii	"\366`"
	.ascii	"\364_"
	.ascii	"\373["
	.ascii	"\367]"
	.ascii	"\352^"
	.ascii	"\373V"
	.ascii	"\tC"
	.ascii	"\374P"
	.ascii	"\366U"
	.ascii	"\377F"
	.ascii	"\007<"
	.ascii	"\t:"
	.ascii	"\005="
	.ascii	"\f2"
	.ascii	"\0172"
	.ascii	"\0221"
	.ascii	"\0216"
	.ascii	"\n)"
	.ascii	"\007."
	.ascii	"\3773"
	.ascii	"\0071"
	.ascii	"\b4"
	.ascii	"\t)"
	.ascii	"\006/"
	.ascii	"\0027"
	.ascii	"\r)"
	.ascii	"\n,"
	.ascii	"\0062"
	.ascii	"\0055"
	.ascii	"\r1"
	.ascii	"\004?"
	.ascii	"\006@"
	.ascii	"\376E"
	.ascii	"\376;"
	.ascii	"\006F"
	.ascii	"\n,"
	.ascii	"\t\037"
	.ascii	"\f+"
	.ascii	"\0035"
	.ascii	"\016\""
	.ascii	"\n&"
	.ascii	"\3754"
	.ascii	"\r("
	.ascii	"\021 "
	.ascii	"\007,"
	.ascii	"\007&"
	.ascii	"\r2"
	.ascii	"\n9"
	.ascii	"\032+"
	.ascii	"\016\013"
	.ascii	"\013\016"
	.ascii	"\t\013"
	.ascii	"\022\013"
	.ascii	"\025\t"
	.ascii	"\027\376"
	.ascii	" \361"
	.ascii	" \361"
	.ascii	"\"\353"
	.ascii	"'\351"
	.ascii	"*\337"
	.ascii	")\341"
	.ascii	".\344"
	.ascii	"&\364"
	.ascii	"\025\035"
	.ascii	"-\350"
	.ascii	"5\323"
	.ascii	"0\346"
	.ascii	"A\325"
	.ascii	"+\355"
	.ascii	"'\366"
	.ascii	"\036\t"
	.ascii	"\022\032"
	.ascii	"\024\033"
	.ascii	"\0009"
	.ascii	"\362R"
	.ascii	"\373K"
	.ascii	"\355a"
	.ascii	"\335}"
	.asciz	"\033"
	.asciz	"\034"
	.ascii	"\037\374"
	.ascii	"\033\006"
	.ascii	"\"\b"
	.ascii	"\036\n"
	.ascii	"\030\026"
	.ascii	"!\023"
	.ascii	"\026 "
	.ascii	"\032\037"
	.ascii	"\025)"
	.ascii	"\032,"
	.ascii	"\027/"
	.ascii	"\020A"
	.ascii	"\016G"
	.ascii	"\b<"
	.ascii	"\006?"
	.ascii	"\021A"
	.ascii	"\025\030"
	.ascii	"\027\024"
	.ascii	"\032\027"
	.ascii	"\033 "
	.ascii	"\034\027"
	.ascii	"\034\030"
	.ascii	"\027("
	.ascii	"\030 "
	.ascii	"\034\035"
	.ascii	"\027*"
	.ascii	"\0239"
	.ascii	"\0265"
	.ascii	"\026="
	.ascii	"\013V"
	.ascii	"\f("
	.ascii	"\0133"
	.ascii	"\016;"
	.ascii	"\374O"
	.ascii	"\371G"
	.ascii	"\373E"
	.ascii	"\367F"
	.ascii	"\370B"
	.ascii	"\366D"
	.ascii	"\355I"
	.ascii	"\364E"
	.ascii	"\360F"
	.ascii	"\361C"
	.ascii	"\354>"
	.ascii	"\355F"
	.ascii	"\360B"
	.ascii	"\352A"
	.ascii	"\354?"
	.ascii	"\t\376"
	.ascii	"\032\367"
	.ascii	"!\367"
	.ascii	"'\371"
	.ascii	")\376"
	.ascii	"-\003"
	.ascii	"1\t"
	.ascii	"-\033"
	.ascii	"$;"
	.ascii	"\372B"
	.ascii	"\371#"
	.ascii	"\371*"
	.ascii	"\370-"
	.ascii	"\3730"
	.ascii	"\3648"
	.ascii	"\372<"
	.ascii	"\373>"
	.ascii	"\370B"
	.ascii	"\370L"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\025\363"
	.ascii	"!\362"
	.ascii	"'\371"
	.ascii	".\376"
	.ascii	"3\002"
	.ascii	"<\006"
	.ascii	"=\021"
	.ascii	"7\""
	.ascii	"*>"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.ascii	"\026\031"
	.asciz	"\""
	.asciz	"\020"
	.ascii	"\376\t"
	.ascii	"\004)"
	.ascii	"\343v"
	.ascii	"\002A"
	.ascii	"\372G"
	.ascii	"\363O"
	.ascii	"\0054"
	.ascii	"\t2"
	.ascii	"\375F"
	.ascii	"\n6"
	.ascii	"\032\""
	.ascii	"\023\026"
	.asciz	"("
	.ascii	"9\002"
	.ascii	")$"
	.ascii	"\032E"
	.ascii	"\323\177"
	.ascii	"\361e"
	.ascii	"\374L"
	.ascii	"\372G"
	.ascii	"\363O"
	.ascii	"\0054"
	.ascii	"\006E"
	.ascii	"\363Z"
	.ascii	"\0004"
	.ascii	"\b+"
	.ascii	"\376E"
	.ascii	"\373R"
	.ascii	"\366`"
	.ascii	"\002;"
	.ascii	"\002K"
	.ascii	"\375W"
	.ascii	"\375d"
	.ascii	"\0018"
	.ascii	"\375J"
	.ascii	"\372U"
	.ascii	"\000;"
	.ascii	"\375Q"
	.ascii	"\371V"
	.ascii	"\373_"
	.ascii	"\377B"
	.ascii	"\377M"
	.ascii	"\001F"
	.ascii	"\376V"
	.ascii	"\373H"
	.ascii	"\000="
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\r\017"
	.ascii	"\0073"
	.ascii	"\002P"
	.ascii	"\331\177"
	.ascii	"\356["
	.ascii	"\357`"
	.ascii	"\346Q"
	.ascii	"\335b"
	.ascii	"\350f"
	.ascii	"\351a"
	.ascii	"\345w"
	.ascii	"\350c"
	.ascii	"\353n"
	.ascii	"\356f"
	.ascii	"\334\177"
	.ascii	"\000P"
	.ascii	"\373Y"
	.ascii	"\371^"
	.ascii	"\374\\"
	.ascii	"\000'"
	.ascii	"\000A"
	.ascii	"\361T"
	.ascii	"\335\177"
	.ascii	"\376I"
	.ascii	"\364h"
	.ascii	"\367["
	.ascii	"\341\177"
	.ascii	"\0037"
	.ascii	"\0078"
	.ascii	"\0077"
	.ascii	"\b="
	.ascii	"\3755"
	.ascii	"\000D"
	.ascii	"\371J"
	.ascii	"\367X"
	.ascii	"\363g"
	.ascii	"\363["
	.ascii	"\367Y"
	.ascii	"\362\\"
	.ascii	"\370L"
	.ascii	"\364W"
	.ascii	"\351n"
	.ascii	"\350i"
	.ascii	"\366N"
	.ascii	"\354p"
	.ascii	"\357c"
	.ascii	"\262\177"
	.ascii	"\272\177"
	.ascii	"\316\177"
	.ascii	"\322\177"
	.ascii	"\374B"
	.ascii	"\373N"
	.ascii	"\374G"
	.ascii	"\370H"
	.ascii	"\002;"
	.ascii	"\3777"
	.ascii	"\371F"
	.ascii	"\372K"
	.ascii	"\370Y"
	.ascii	"\336w"
	.ascii	"\375K"
	.ascii	" \024"
	.ascii	"\036\026"
	.ascii	"\324\177"
	.ascii	"\0006"
	.ascii	"\373="
	.ascii	"\000:"
	.ascii	"\377<"
	.ascii	"\375="
	.ascii	"\370C"
	.ascii	"\347T"
	.ascii	"\362J"
	.ascii	"\373A"
	.ascii	"\0054"
	.ascii	"\0029"
	.ascii	"\000="
	.ascii	"\367E"
	.ascii	"\365F"
	.ascii	"\0227"
	.ascii	"\374G"
	.ascii	"\000:"
	.ascii	"\007="
	.ascii	"\t)"
	.ascii	"\022\031"
	.ascii	"\t "
	.ascii	"\005+"
	.ascii	"\t/"
	.ascii	"\000,"
	.ascii	"\0003"
	.ascii	"\002."
	.ascii	"\023&"
	.ascii	"\374B"
	.ascii	"\017&"
	.ascii	"\f*"
	.ascii	"\t\""
	.ascii	"\000Y"
	.ascii	"\004-"
	.ascii	"\n\034"
	.ascii	"\n\037"
	.ascii	"!\365"
	.ascii	"4\325"
	.ascii	"\022\017"
	.asciz	"\034"
	.ascii	"#\352"
	.ascii	"&\347"
	.asciz	"\""
	.ascii	"'\356"
	.ascii	" \364"
	.ascii	"f\242"
	.zero	2
	.ascii	"8\361"
	.ascii	"!\374"
	.ascii	"\035\n"
	.ascii	"%\373"
	.ascii	"3\343"
	.ascii	"'\367"
	.ascii	"4\336"
	.ascii	"E\306"
	.ascii	"C\301"
	.ascii	",\373"
	.ascii	" \007"
	.ascii	"7\343"
	.ascii	" \001"
	.zero	2
	.ascii	"\033$"
	.ascii	"!\347"
	.ascii	"\"\342"
	.ascii	"$\344"
	.ascii	"&\344"
	.ascii	"&\345"
	.ascii	"\"\356"
	.ascii	"#\360"
	.ascii	"\"\362"
	.ascii	" \370"
	.ascii	"%\372"
	.asciz	"#"
	.ascii	"\036\n"
	.ascii	"\034\022"
	.ascii	"\032\031"
	.ascii	"\035)"
	.ascii	"\000K"
	.ascii	"\002H"
	.ascii	"\bM"
	.ascii	"\016#"
	.ascii	"\022\037"
	.ascii	"\021#"
	.ascii	"\025\036"
	.ascii	"\021-"
	.ascii	"\024*"
	.ascii	"\022-"
	.ascii	"\033\032"
	.ascii	"\0206"
	.ascii	"\007B"
	.ascii	"\0208"
	.ascii	"\013I"
	.ascii	"\nC"
	.ascii	"\366t"
	.ascii	"\351p"
	.ascii	"\361G"
	.ascii	"\371="
	.ascii	"\0005"
	.ascii	"\373B"
	.ascii	"\365M"
	.ascii	"\367P"
	.ascii	"\367T"
	.ascii	"\366W"
	.ascii	"\336\177"
	.ascii	"\353e"
	.ascii	"\375'"
	.ascii	"\3735"
	.ascii	"\371="
	.ascii	"\365K"
	.ascii	"\361M"
	.ascii	"\357["
	.ascii	"\347k"
	.ascii	"\347o"
	.ascii	"\344z"
	.ascii	"\365L"
	.ascii	"\366,"
	.ascii	"\3664"
	.ascii	"\3669"
	.ascii	"\367:"
	.ascii	"\360H"
	.ascii	"\371E"
	.ascii	"\374E"
	.ascii	"\373J"
	.ascii	"\367V"
	.ascii	"\002B"
	.ascii	"\367\""
	.ascii	"\001 "
	.ascii	"\013\037"
	.ascii	"\0054"
	.ascii	"\3767"
	.ascii	"\376C"
	.ascii	"\000I"
	.ascii	"\370Y"
	.ascii	"\0034"
	.ascii	"\007\004"
	.ascii	"\n\b"
	.ascii	"\021\b"
	.ascii	"\020\023"
	.ascii	"\003%"
	.ascii	"\377="
	.ascii	"\373I"
	.ascii	"\377F"
	.ascii	"\374N"
	.zero	2
	.ascii	"\353~"
	.ascii	"\351|"
	.ascii	"\354n"
	.ascii	"\346~"
	.ascii	"\347|"
	.ascii	"\357i"
	.ascii	"\345y"
	.ascii	"\345u"
	.ascii	"\357f"
	.ascii	"\346u"
	.ascii	"\345t"
	.ascii	"\337z"
	.ascii	"\366_"
	.ascii	"\362d"
	.ascii	"\370_"
	.ascii	"\357o"
	.ascii	"\344r"
	.ascii	"\372Y"
	.ascii	"\376P"
	.ascii	"\374R"
	.ascii	"\367U"
	.ascii	"\370Q"
	.ascii	"\377H"
	.ascii	"\005@"
	.ascii	"\001C"
	.ascii	"\t8"
	.ascii	"\000E"
	.ascii	"\001E"
	.ascii	"\007E"
	.ascii	"\371E"
	.ascii	"\372C"
	.ascii	"\360M"
	.ascii	"\376@"
	.ascii	"\002="
	.ascii	"\372C"
	.ascii	"\375@"
	.ascii	"\0029"
	.ascii	"\375A"
	.ascii	"\375B"
	.ascii	"\000>"
	.ascii	"\t3"
	.ascii	"\377B"
	.ascii	"\376G"
	.ascii	"\376K"
	.ascii	"\377F"
	.ascii	"\367H"
	.ascii	"\016<"
	.ascii	"\020%"
	.ascii	"\000/"
	.ascii	"\022#"
	.ascii	"\013%"
	.ascii	"\f)"
	.ascii	"\n)"
	.ascii	"\0020"
	.ascii	"\f)"
	.ascii	"\r)"
	.ascii	"\000;"
	.ascii	"\0032"
	.ascii	"\023("
	.ascii	"\003B"
	.ascii	"\0222"
	.ascii	"\023\372"
	.ascii	"\022\372"
	.asciz	"\016"
	.ascii	"\032\364"
	.ascii	"\037\360"
	.ascii	"!\347"
	.ascii	"!\352"
	.ascii	"%\344"
	.ascii	"'\342"
	.ascii	"*\342"
	.ascii	"/\326"
	.ascii	"-\334"
	.ascii	"1\336"
	.ascii	")\357"
	.ascii	" \t"
	.ascii	"E\271"
	.ascii	"?\301"
	.ascii	"B\300"
	.ascii	"M\266"
	.ascii	"6\331"
	.ascii	"4\335"
	.ascii	")\366"
	.asciz	"$"
	.ascii	"(\377"
	.ascii	"\036\016"
	.ascii	"\034\032"
	.ascii	"\027%"
	.ascii	"\f7"
	.ascii	"\013A"
	.ascii	"%\337"
	.ascii	"'\334"
	.ascii	"(\333"
	.ascii	"&\342"
	.ascii	".\337"
	.ascii	"*\342"
	.ascii	"(\350"
	.ascii	"1\343"
	.ascii	"&\364"
	.ascii	"(\366"
	.ascii	"&\375"
	.ascii	".\373"
	.ascii	"\037\024"
	.ascii	"\035\036"
	.ascii	"\031,"
	.ascii	"\f0"
	.ascii	"\0131"
	.ascii	"\032-"
	.zero	2,22
	.ascii	"\027\026"
	.ascii	"\033\025"
	.ascii	"!\024"
	.ascii	"\032\034"
	.ascii	"\036\030"
	.ascii	"\033\""
	.ascii	"\022*"
	.ascii	"\031'"
	.ascii	"\0222"
	.ascii	"\fF"
	.ascii	"\0256"
	.ascii	"\016G"
	.ascii	"\013S"
	.ascii	"\031 "
	.ascii	"\0251"
	.ascii	"\0256"
	.ascii	"\373U"
	.ascii	"\372Q"
	.ascii	"\366M"
	.ascii	"\371Q"
	.ascii	"\357P"
	.ascii	"\356I"
	.ascii	"\374J"
	.ascii	"\366S"
	.ascii	"\367G"
	.ascii	"\367C"
	.ascii	"\377="
	.ascii	"\370B"
	.ascii	"\362B"
	.ascii	"\000;"
	.ascii	"\002;"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\373G"
	.ascii	"\000\030"
	.ascii	"\377$"
	.ascii	"\376*"
	.ascii	"\3764"
	.ascii	"\3679"
	.ascii	"\372?"
	.ascii	"\374A"
	.ascii	"\374C"
	.ascii	"\371R"
	.ascii	"\375Q"
	.ascii	"\375L"
	.ascii	"\371H"
	.ascii	"\372N"
	.ascii	"\364H"
	.ascii	"\362D"
	.ascii	"\375F"
	.ascii	"\372L"
	.ascii	"\373B"
	.ascii	"\373>"
	.ascii	"\0009"
	.ascii	"\374="
	.ascii	"\367<"
	.ascii	"\0016"
	.ascii	"\002:"
	.ascii	"\021\366"
	.ascii	" \363"
	.ascii	"*\367"
	.ascii	"1\373"
	.asciz	"5"
	.ascii	"@\003"
	.ascii	"D\n"
	.ascii	"B\033"
	.ascii	"/9"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\024\361"
	.ascii	"\0026"
	.ascii	"\003J"
	.ascii	"\344\177"
	.ascii	"\351h"
	.ascii	"\3725"
	.ascii	"\3776"
	.ascii	"\0073"
	.ascii	"\035\020"
	.asciz	"\031"
	.asciz	"\016"
	.ascii	"\3663"
	.ascii	"\375>"
	.ascii	"\345c"
	.ascii	"\032\020"
	.ascii	"\374U"
	.ascii	"\350f"
	.ascii	"\0059"
	.ascii	"\0069"
	.ascii	"\357I"
	.ascii	"\0169"
	.ascii	"\024("
	.ascii	"\024\n"
	.asciz	"\035"
	.asciz	"6"
	.ascii	"%*"
	.ascii	"\fa"
	.ascii	"\340\177"
	.ascii	"\352u"
	.ascii	"\376J"
	.ascii	"\374U"
	.ascii	"\350f"
	.ascii	"\0059"
	.ascii	"\372]"
	.ascii	"\362X"
	.ascii	"\372,"
	.ascii	"\0047"
	.ascii	"\365Y"
	.ascii	"\361g"
	.ascii	"\353t"
	.ascii	"\0239"
	.ascii	"\024:"
	.ascii	"\004T"
	.ascii	"\006`"
	.ascii	"\001?"
	.ascii	"\373U"
	.ascii	"\363j"
	.ascii	"\005?"
	.ascii	"\006K"
	.ascii	"\375Z"
	.ascii	"\377e"
	.ascii	"\0037"
	.ascii	"\374O"
	.ascii	"\376K"
	.ascii	"\364a"
	.ascii	"\3712"
	.ascii	"\001<"
	.ascii	"\000)"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\000?"
	.ascii	"\367S"
	.ascii	"\004V"
	.ascii	"\000a"
	.ascii	"\371H"
	.ascii	"\r)"
	.ascii	"\003>"
	.ascii	"\007\""
	.ascii	"\367X"
	.ascii	"\354\177"
	.ascii	"\334\177"
	.ascii	"\357["
	.ascii	"\362_"
	.ascii	"\347T"
	.ascii	"\347V"
	.ascii	"\364Y"
	.ascii	"\357["
	.ascii	"\341\177"
	.ascii	"\362L"
	.ascii	"\356g"
	.ascii	"\363Z"
	.ascii	"\333\177"
	.ascii	"\013P"
	.ascii	"\005L"
	.ascii	"\002T"
	.ascii	"\005N"
	.ascii	"\3727"
	.ascii	"\004="
	.ascii	"\362S"
	.ascii	"\333\177"
	.ascii	"\373O"
	.ascii	"\365h"
	.ascii	"\365["
	.ascii	"\342\177"
	.ascii	"\000A"
	.ascii	"\376O"
	.ascii	"\000H"
	.ascii	"\374\\"
	.ascii	"\3728"
	.ascii	"\003D"
	.ascii	"\370G"
	.ascii	"\363b"
	.ascii	"\374V"
	.ascii	"\364X"
	.ascii	"\373R"
	.ascii	"\375H"
	.ascii	"\374C"
	.ascii	"\370H"
	.ascii	"\360Y"
	.ascii	"\367E"
	.ascii	"\377;"
	.ascii	"\005B"
	.ascii	"\0049"
	.ascii	"\374G"
	.ascii	"\376G"
	.ascii	"\002:"
	.ascii	"\377J"
	.ascii	"\374,"
	.ascii	"\377E"
	.ascii	"\000>"
	.ascii	"\3713"
	.ascii	"\374/"
	.ascii	"\372*"
	.ascii	"\375)"
	.ascii	"\3725"
	.ascii	"\bL"
	.ascii	"\367N"
	.ascii	"\365S"
	.ascii	"\t4"
	.ascii	"\000C"
	.ascii	"\373Z"
	.ascii	"\001C"
	.ascii	"\361H"
	.ascii	"\373K"
	.ascii	"\370P"
	.ascii	"\353S"
	.ascii	"\353@"
	.ascii	"\363\037"
	.ascii	"\347@"
	.ascii	"\343^"
	.ascii	"\tK"
	.ascii	"\021?"
	.ascii	"\370J"
	.ascii	"\373#"
	.ascii	"\376\033"
	.ascii	"\r["
	.ascii	"\003A"
	.ascii	"\371E"
	.ascii	"\bM"
	.ascii	"\366B"
	.ascii	"\003>"
	.ascii	"\375D"
	.ascii	"\354Q"
	.ascii	"\000\036"
	.ascii	"\001\007"
	.ascii	"\375\027"
	.ascii	"\353J"
	.ascii	"\020B"
	.ascii	"\351|"
	.ascii	"\021%"
	.ascii	",\356"
	.ascii	"2\336"
	.ascii	"\352\177"
	.ascii	"\004'"
	.ascii	"\000*"
	.ascii	"\007\""
	.ascii	"\013\035"
	.ascii	"\b\037"
	.ascii	"\006%"
	.ascii	"\007*"
	.ascii	"\003("
	.ascii	"\b!"
	.ascii	"\r+"
	.ascii	"\r$"
	.ascii	"\004/"
	.ascii	"\0037"
	.ascii	"\002:"
	.ascii	"\006<"
	.ascii	"\b,"
	.ascii	"\013,"
	.ascii	"\016*"
	.ascii	"\0070"
	.ascii	"\0048"
	.ascii	"\0044"
	.ascii	"\r%"
	.ascii	"\t1"
	.ascii	"\023:"
	.ascii	"\n0"
	.ascii	"\f-"
	.ascii	"\000E"
	.ascii	"\024!"
	.ascii	"\b?"
	.ascii	"#\356"
	.ascii	"!\347"
	.ascii	"\034\375"
	.ascii	"\030\n"
	.asciz	"\033"
	.ascii	"\"\362"
	.ascii	"4\324"
	.ascii	"'\350"
	.ascii	"\023\021"
	.ascii	"\037\031"
	.ascii	"$\035"
	.ascii	"\030!"
	.ascii	"\"\017"
	.ascii	"\036\024"
	.ascii	"\026I"
	.ascii	"\024\""
	.ascii	"\023\037"
	.ascii	"\033,"
	.ascii	"\023\020"
	.ascii	"\017$"
	.ascii	"\017$"
	.ascii	"\025\034"
	.ascii	"\031\025"
	.ascii	"\036\024"
	.ascii	"\037\f"
	.ascii	"\033\020"
	.ascii	"\030*"
	.ascii	"\000]"
	.ascii	"\0168"
	.ascii	"\0179"
	.ascii	"\032&"
	.ascii	"\350\177"
	.ascii	"\350s"
	.ascii	"\352R"
	.ascii	"\367>"
	.ascii	"\0005"
	.ascii	"\000;"
	.ascii	"\362U"
	.ascii	"\363Y"
	.ascii	"\363^"
	.ascii	"\365\\"
	.ascii	"\343\177"
	.ascii	"\353d"
	.ascii	"\3629"
	.ascii	"\364C"
	.ascii	"\365G"
	.ascii	"\366M"
	.ascii	"\353U"
	.ascii	"\360X"
	.ascii	"\351h"
	.ascii	"\361b"
	.ascii	"\333\177"
	.ascii	"\366R"
	.ascii	"\3700"
	.ascii	"\370="
	.ascii	"\370B"
	.ascii	"\371F"
	.ascii	"\362K"
	.ascii	"\366O"
	.ascii	"\367S"
	.ascii	"\364\\"
	.ascii	"\356l"
	.ascii	"\374O"
	.ascii	"\352E"
	.ascii	"\360K"
	.ascii	"\376:"
	.ascii	"\001:"
	.ascii	"\363N"
	.ascii	"\367S"
	.ascii	"\374Q"
	.ascii	"\363c"
	.ascii	"\363Q"
	.ascii	"\372&"
	.ascii	"\363>"
	.ascii	"\372:"
	.ascii	"\376;"
	.ascii	"\360I"
	.ascii	"\366L"
	.ascii	"\363V"
	.ascii	"\367S"
	.ascii	"\366W"
	.zero	2
	.ascii	"\352\177"
	.ascii	"\347\177"
	.ascii	"\347x"
	.ascii	"\345\177"
	.ascii	"\355r"
	.ascii	"\351u"
	.ascii	"\347v"
	.ascii	"\346u"
	.ascii	"\350q"
	.ascii	"\344v"
	.ascii	"\341x"
	.ascii	"\333|"
	.ascii	"\366^"
	.ascii	"\361f"
	.ascii	"\366c"
	.ascii	"\363j"
	.ascii	"\316\177"
	.ascii	"\373\\"
	.ascii	"\0219"
	.ascii	"\373V"
	.ascii	"\363^"
	.ascii	"\364["
	.ascii	"\376M"
	.ascii	"\000G"
	.ascii	"\377I"
	.ascii	"\004@"
	.ascii	"\371Q"
	.ascii	"\005@"
	.ascii	"\0179"
	.ascii	"\001C"
	.ascii	"\000D"
	.ascii	"\366C"
	.ascii	"\001D"
	.ascii	"\000M"
	.ascii	"\002@"
	.ascii	"\000D"
	.ascii	"\373N"
	.ascii	"\0077"
	.ascii	"\005;"
	.ascii	"\002A"
	.ascii	"\0166"
	.ascii	"\017,"
	.ascii	"\005<"
	.ascii	"\002F"
	.ascii	"\376L"
	.ascii	"\356V"
	.ascii	"\fF"
	.ascii	"\005@"
	.ascii	"\364F"
	.ascii	"\0137"
	.ascii	"\0058"
	.ascii	"\000E"
	.ascii	"\002A"
	.ascii	"\372J"
	.ascii	"\0056"
	.ascii	"\0076"
	.ascii	"\372L"
	.ascii	"\365R"
	.ascii	"\376M"
	.ascii	"\376M"
	.ascii	"\031*"
	.ascii	"\021\363"
	.ascii	"\020\367"
	.ascii	"\021\364"
	.ascii	"\033\353"
	.ascii	"%\342"
	.ascii	")\330"
	.ascii	"*\327"
	.ascii	"0\321"
	.ascii	"'\340"
	.ascii	".\330"
	.ascii	"4\315"
	.ascii	".\327"
	.ascii	"4\331"
	.ascii	"+\355"
	.ascii	" \013"
	.ascii	"=\311"
	.ascii	"8\322"
	.ascii	">\316"
	.ascii	"Q\275"
	.ascii	"-\354"
	.ascii	"#\376"
	.ascii	"\034\017"
	.ascii	"\"\001"
	.ascii	"'\001"
	.ascii	"\036\021"
	.ascii	"\024&"
	.ascii	"\022-"
	.ascii	"\0176"
	.ascii	"\000O"
	.ascii	"$\360"
	.ascii	"%\362"
	.ascii	"%\357"
	.ascii	" \001"
	.ascii	"\"\017"
	.ascii	"\035\017"
	.ascii	"\030\031"
	.ascii	"\"\026"
	.ascii	"\037\020"
	.ascii	"#\022"
	.ascii	"\037\034"
	.ascii	"!)"
	.ascii	"$\034"
	.ascii	"\033/"
	.ascii	"\025>"
	.ascii	"\022\037"
	.ascii	"\023\032"
	.ascii	"$\030"
	.ascii	"\030\027"
	.ascii	"\033\020"
	.ascii	"\030\036"
	.ascii	"\037\035"
	.ascii	"\026)"
	.ascii	"\026*"
	.ascii	"\020<"
	.ascii	"\0174"
	.ascii	"\016<"
	.ascii	"\003N"
	.ascii	"\360{"
	.ascii	"\0255"
	.ascii	"\0268"
	.ascii	"\031="
	.ascii	"\025!"
	.ascii	"\0232"
	.ascii	"\021="
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.ascii	"\367G"
	.ascii	"\371%"
	.ascii	"\370,"
	.ascii	"\3651"
	.ascii	"\3668"
	.ascii	"\364;"
	.ascii	"\370?"
	.ascii	"\367C"
	.ascii	"\372D"
	.ascii	"\366O"
	.ascii	"\375N"
	.ascii	"\370J"
	.ascii	"\367H"
	.ascii	"\366H"
	.ascii	"\356K"
	.ascii	"\364G"
	.ascii	"\365?"
	.ascii	"\373F"
	.ascii	"\357K"
	.ascii	"\362H"
	.ascii	"\360C"
	.ascii	"\3705"
	.ascii	"\362;"
	.ascii	"\3674"
	.ascii	"\365D"
	.ascii	"\t\376"
	.ascii	"\036\366"
	.ascii	"\037\374"
	.ascii	"!\377"
	.ascii	"!\007"
	.ascii	"\037\f"
	.ascii	"%\027"
	.ascii	"\037&"
	.ascii	"\024@"
	.size	x264_cabac_context_init_PB, 2760

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
