	.text
	.file	"set.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function x264_sps_init
.LCPI0_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	x264_sps_init
	.p2align	4, 0x90
	.type	x264_sps_init,@function
x264_sps_init:                          # @x264_sps_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	%esi, (%rdi)
	cmpl	$0, 488(%rdx)
	je	.LBB0_2
# %bb.1:                                # %if.else.critedge
	movl	$0, 1296(%rbx)
	jmp	.LBB0_3
.LBB0_2:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$0, 492(%rdx)
	sete	%al
	movl	%eax, 1296(%rbx)
	je	.LBB0_7
.LBB0_3:                                # %if.else
	xorl	%eax, %eax
	movl	$100, %ecx
	cmpl	$0, 392(%rdx)
	jne	.LBB0_4
# %bb.5:                                # %lor.lhs.false
	cmpl	$0, 144(%rdx)
	je	.LBB0_8
.LBB0_4:
	xorl	%esi, %esi
.LBB0_12:                               # %if.end23
	movl	%ecx, 4(%rbx)
	movl	32(%rdx), %ecx
	movl	%ecx, 8(%rbx)
	movl	%eax, 12(%rbx)
	movl	%esi, 16(%rbx)
	movabsq	$17179869184, %rax              # imm = 0x400000000
	movq	%rax, 20(%rbx)
	cmpl	$16, 84(%rdx)
	jl	.LBB0_18
# %bb.13:                               # %while.cond.1
	movl	$5, 24(%rbx)
	cmpl	$32, 84(%rdx)
	jl	.LBB0_19
# %bb.14:                               # %while.cond.2
	movl	$6, 24(%rbx)
	cmpl	$64, 84(%rdx)
	jl	.LBB0_20
# %bb.15:                               # %while.cond.3
	movl	$7, 24(%rbx)
	cmpl	$128, 84(%rdx)
	jl	.LBB0_21
# %bb.16:                               # %while.cond.4
	movl	$8, 24(%rbx)
	cmpl	$256, 84(%rdx)                  # imm = 0x100
	jl	.LBB0_22
# %bb.17:                               # %while.cond.5
	movl	$9, 24(%rbx)
	xorl	%eax, %eax
	cmpl	$512, 84(%rdx)                  # imm = 0x200
	setge	%al
	leal	9(%rax), %ecx
	movl	%ecx, 24(%rbx)
	leal	11(%rax), %ecx
	orl	$10, %eax
	jmp	.LBB0_23
.LBB0_18:
	movl	$5, %eax
	movl	$6, %ecx
	jmp	.LBB0_23
.LBB0_19:
	movl	$6, %eax
	movl	$7, %ecx
	jmp	.LBB0_23
.LBB0_7:
	xorl	%eax, %eax
	movl	$244, %ecx
	xorl	%esi, %esi
	jmp	.LBB0_12
.LBB0_20:
	movl	$7, %eax
	movl	$8, %ecx
	jmp	.LBB0_23
.LBB0_8:                                # %if.else9
	movl	$1, %esi
	movl	$77, %ecx
	cmpl	$0, 128(%rdx)
	jne	.LBB0_12
# %bb.9:                                # %lor.lhs.false11
	cmpl	$0, 100(%rdx)
	jg	.LBB0_12
# %bb.10:                               # %lor.lhs.false13
	cmpl	$0, 136(%rdx)
	jne	.LBB0_12
# %bb.11:                               # %lor.lhs.false15
	xorl	%eax, %eax
	cmpl	$0, 396(%rdx)
	setle	%al
	movl	$66, %edi
	cmovlel	%edi, %ecx
	jmp	.LBB0_12
.LBB0_21:
	movl	$8, %eax
	movl	$9, %ecx
	jmp	.LBB0_23
.LBB0_22:
	movl	$9, %eax
	movl	$10, %ecx
.LBB0_23:                               # %while.end
	movl	%eax, 24(%rbx)
	movl	$0, 28(%rbx)
	movl	%ecx, 32(%rbx)
	movl	$1, 1124(%rbx)
	movl	$0, 1080(%rbx)
	movl	20(%rdx), %eax
	leal	15(%rax), %ecx
	addl	$30, %eax
	testl	%ecx, %ecx
	cmovnsl	%ecx, %eax
	sarl	$4, %eax
	movl	%eax, 1084(%rbx)
	movl	24(%rdx), %esi
	leal	15(%rsi), %ecx
	addl	$30, %esi
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	sarl	$4, %esi
	movl	%esi, 1088(%rbx)
	cmpl	$0, 136(%rdx)
	je	.LBB0_25
# %bb.24:                               # %cond.end.thread
	movl	$0, 1092(%rbx)
	jmp	.LBB0_26
.LBB0_25:                               # %cond.end
	xorl	%ecx, %ecx
	cmpl	$0, 680(%rdx)
	sete	%cl
	movl	%ecx, 1092(%rbx)
	je	.LBB0_50
.LBB0_26:                               # %if.then66
	incl	%esi
	andl	$-2, %esi
	movl	%esi, 1088(%rbx)
	movl	$1, %ecx
.LBB0_27:                               # %lor.end
	movl	136(%rdx), %edi
	movl	%edi, 1096(%rbx)
	movl	$1, 1100(%rbx)
	movl	$0, 1108(%rbx)
	movl	$0, 1116(%rbx)
	shll	$4, %eax
	movl	20(%rdx), %edi
	movl	%eax, %r8d
	subl	%edi, %r8d
	movl	%r8d, 1112(%rbx)
	shll	$4, %esi
	subl	24(%rdx), %esi
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %esi
	movl	%esi, 1120(%rbx)
	xorl	%edi, %eax
	xorl	%ecx, %ecx
	orl	%esi, %eax
	setne	%cl
	movl	%ecx, 1104(%rbx)
	movl	$0, 1128(%rbx)
	cmpl	$0, 48(%rdx)
	jle	.LBB0_30
# %bb.28:                               # %land.lhs.true
	cmpl	$0, 44(%rdx)
	jle	.LBB0_30
# %bb.29:                               # %if.then105
	movl	$1, 1128(%rbx)
	movl	48(%rdx), %eax
	movl	%eax, 1132(%rbx)
	movl	44(%rdx), %eax
	movl	%eax, 1136(%rbx)
.LBB0_30:                               # %if.end116
	xorl	%eax, %eax
	cmpl	$0, 52(%rdx)
	setne	%al
	movl	%eax, 1140(%rbx)
	je	.LBB0_32
# %bb.31:                               # %if.then124
	xorl	%eax, %eax
	cmpl	$2, 52(%rdx)
	sete	%al
	movl	%eax, 1144(%rbx)
.LBB0_32:                               # %if.end131
	movl	$0, 1148(%rbx)
	movl	56(%rdx), %eax
	cmpl	$5, %eax
	movl	$5, %ecx
	cmovll	%eax, %ecx
	movl	%ecx, 1152(%rbx)
	movl	60(%rdx), %ecx
	xorl	%esi, %esi
	testl	%ecx, %ecx
	setne	%sil
	movl	%esi, 1156(%rbx)
	movl	$0, 1160(%rbx)
	movl	64(%rdx), %r8d
	cmpl	$10, %r8d
	movl	$2, %esi
	cmovgel	%esi, %r8d
	movl	%r8d, 1164(%rbx)
	movl	68(%rdx), %edi
	cmpl	$12, %edi
	cmovgel	%esi, %edi
	movl	%edi, 1168(%rbx)
	movl	72(%rdx), %r9d
	cmpl	$10, %r9d
	cmovll	%r9d, %esi
	movl	%esi, 1172(%rbx)
	cmpl	$2, %r8d
	jne	.LBB0_35
# %bb.33:                               # %lor.lhs.false187
	xorl	$2, %edi
	xorl	$2, %esi
	orl	%edi, %esi
	jne	.LBB0_35
# %bb.34:                               # %if.end200
	testl	%ecx, %ecx
	setne	%cl
	cmpl	$5, %eax
	setl	%al
	orb	%cl, %al
	jne	.LBB0_36
	jmp	.LBB0_37
.LBB0_35:                               # %if.end200.thread
	movl	$1, 1160(%rbx)
.LBB0_36:                               # %if.then213
	movl	$1, 1148(%rbx)
.LBB0_37:                               # %if.end216
	xorl	%eax, %eax
	cmpl	$0, 76(%rdx)
	setne	%al
	movl	%eax, 1176(%rbx)
	je	.LBB0_39
# %bb.38:                               # %if.then224
	movl	76(%rdx), %eax
	movl	%eax, 1180(%rbx)
	movl	%eax, 1184(%rbx)
.LBB0_39:                               # %if.end231
	cmpl	$0, 660(%rdx)
	je	.LBB0_42
# %bb.40:                               # %land.rhs234
	xorl	%eax, %eax
	cmpl	$0, 664(%rdx)
	setne	%al
	movl	%eax, 1188(%rbx)
	je	.LBB0_44
# %bb.41:                               # %if.then243
	movl	660(%rdx), %eax
	movl	%eax, 1192(%rbx)
	movl	664(%rdx), %eax
	addl	%eax, %eax
	movl	%eax, 1196(%rbx)
	xorl	%eax, %eax
	cmpl	$0, 648(%rdx)
	sete	%al
	movl	$1200, %ecx                     # imm = 0x4B0
	jmp	.LBB0_43
.LBB0_42:
	xorl	%eax, %eax
	movl	$1188, %ecx                     # imm = 0x4A4
.LBB0_43:                               # %if.end253.sink.split
	movl	%eax, (%rbx,%rcx)
.LBB0_44:                               # %if.end253
	movl	$0, 1208(%rbx)
	xorl	%eax, %eax
	cmpl	$0, 40(%rdx)
	setne	%al
	movl	%eax, 1204(%rbx)
	movl	676(%rdx), %eax
	movl	%eax, 1260(%rbx)
	movl	$2, %eax
	cmpl	$0, 112(%rdx)
	jne	.LBB0_46
# %bb.45:                               # %cond.false264
	xorl	%eax, %eax
	cmpl	$0, 100(%rdx)
	setne	%al
.LBB0_46:                               # %cond.end268
	movl	%eax, 1288(%rbx)
	xorl	%ecx, %ecx
	cmpl	$0, 112(%rdx)
	setne	%cl
	leal	(%rcx,%rcx,2), %ecx
	incl	%ecx
	leal	1(%rax), %esi
	cmpl	%ecx, %eax
	cmovbl	%ecx, %esi
	movl	80(%rdx), %eax
	cmpl	%esi, %eax
	cmovgl	%eax, %esi
	movl	$16, %ecx
	cmovlel	%esi, %ecx
	cmpl	$17, %eax
	cmovbl	%esi, %ecx
	movl	%ecx, 1076(%rbx)
	movl	%ecx, 1292(%rbx)
	xorl	%eax, %eax
	cmpl	$1, 112(%rdx)
	sete	%al
	subl	%eax, %ecx
	movl	%ecx, 1076(%rbx)
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1,0,0]
	movups	%xmm0, 1264(%rbx)
	movl	420(%rdx), %eax
	testl	%eax, %eax
	jle	.LBB0_48
# %bb.47:                               # %cond.end268
	leal	-1(,%rax,4), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	jmp	.LBB0_49
.LBB0_48:
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
.LBB0_49:                               # %cond.end268
	callq	log2f@PLT
	cvttss2si	%xmm0, %eax
	incl	%eax
	movl	%eax, 1284(%rbx)
	movl	%eax, 1280(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_50:
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	jmp	.LBB0_27
.Lfunc_end0:
	.size	x264_sps_init, .Lfunc_end0-x264_sps_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_sps_write                  # -- Begin function x264_sps_write
	.p2align	4, 0x90
	.type	x264_sps_write,@function
x264_sps_write:                         # @x264_sps_write
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rdi), %r11
	movl	%r11d, %ecx
	andl	$3, %ecx
	je	.LBB1_1
# %bb.2:                                # %if.then.i
	movl	%r11d, %edx
	andl	$3, %edx
	andq	$-4, %r11
	movq	%r11, 8(%rdi)
	shll	$3, %edx
	movl	$64, %eax
	subl	%edx, %eax
	movl	%eax, 32(%rdi)
	movl	(%r11), %r8d
	bswapl	%r8d
	leal	32(,%rcx,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r8
	movq	%r8, 24(%rdi)
	jmp	.LBB1_3
.LBB1_1:                                # %entry.bs_realign.exit_crit_edge
	movq	24(%rdi), %r8
	movl	32(%rdi), %eax
.LBB1_3:                                # %bs_realign.exit
	leaq	8(%rdi), %r9
	movl	4(%rsi), %ecx
	leaq	24(%rdi), %r10
	shlq	$8, %r8
	orq	%rcx, %r8
	movq	%r8, 24(%rdi)
	leal	-8(%rax), %ecx
	movl	%ecx, 32(%rdi)
	addq	$32, %rdi
	cmpl	$40, %eax
	jg	.LBB1_5
# %bb.4:                                # %if.then.i356
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_5:                                # %bs_write.exit
	movl	12(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_7
# %bb.6:                                # %if.then.i366
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_7:                                # %bs_write.exit374
	movl	16(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-1(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_9
# %bb.8:                                # %if.then.i382
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_9:                                # %bs_write.exit390
	movl	20(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_11
# %bb.10:                               # %if.then.i398
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_11:                               # %bs_write.exit406
	shlq	$5, %r8
	movq	%r8, (%r10)
	leal	-5(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$37, %eax
	jg	.LBB1_13
# %bb.12:                               # %if.then.i413
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_13:                               # %bs_write.exit421
	movl	8(%rsi), %eax
	shlq	$8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-8(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$40, %ecx
	jg	.LBB1_15
# %bb.14:                               # %if.then.i429
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_15:                               # %bs_write.exit437
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	(%rsi), %ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%rdx), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%edx, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_17
# %bb.16:                               # %if.then.i.i
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_17:                               # %bs_write.exit.i
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_19
# %bb.18:                               # %if.then.i25.i
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_19:                               # %bs_write_ue_big.exit
	cmpl	$100, 4(%rsi)
	jl	.LBB1_34
# %bb.20:                               # %if.then
	addq	%rbx, %rbx
	movq	%rbx, (%r10)
	leal	-1(%rax), %edx
	movl	%edx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_22
# %bb.21:                               # %if.then.i.i460
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_22:                               # %bs_write.exit.i447
	leaq	2(,%rbx,4), %rax
	movq	%rax, (%r10)
	leal	-2(%rdx), %ecx
	movl	%ecx, (%rdi)
	cmpl	$34, %edx
	jg	.LBB1_25
# %bb.23:                               # %bs_write_ue_big.exit469
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%r11)
	movl	(%rdi), %edx
	leal	32(%rdx), %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rax
	testl	%edx, %edx
	jg	.LBB1_25
# %bb.24:                               # %if.then.i.i488
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rax
.LBB1_25:                               # %bs_write.exit.i475
	leaq	1(,%rax,2), %rdx
	movq	%rdx, (%r10)
	leal	-1(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_28
# %bb.26:                               # %bs_write_ue_big.exit497
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%r11)
	movl	(%rdi), %ecx
	leal	32(%rcx), %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rdx
	testl	%ecx, %ecx
	jg	.LBB1_28
# %bb.27:                               # %if.then.i.i516
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rdx
.LBB1_28:                               # %bs_write.exit.i503
	leaq	1(,%rdx,2), %rbx
	movq	%rbx, (%r10)
	leal	-1(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_30
# %bb.29:                               # %if.then.i25.i508
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_30:                               # %bs_write_ue_big.exit525
	movl	1296(%rsi), %eax
	addq	%rbx, %rbx
	orq	%rax, %rbx
	movq	%rbx, (%r10)
	leal	-1(%rcx), %edx
	movl	%edx, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_32
# %bb.31:                               # %if.then.i533
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_32:                               # %bs_write.exit541
	addq	%rbx, %rbx
	movq	%rbx, (%r10)
	leal	-1(%rdx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %edx
	jg	.LBB1_34
# %bb.33:                               # %if.then.i548
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_34:                               # %if.end
	movl	24(%rsi), %ecx
	leal	-3(%rcx), %r8d
	movl	%r8d, %edx
	shrl	$16, %edx
	xorl	%r14d, %r14d
	cmpl	$65539, %ecx                    # imm = 0x10003
	cmovll	%r8d, %edx
	setge	%r14b
	shll	$5, %r14d
	movl	%edx, %ecx
	shrl	$8, %ecx
	leal	16(%r14), %ebp
	cmpl	$256, %edx                      # imm = 0x100
	cmovll	%edx, %ecx
	movslq	%ecx, %rcx
	movzbl	%bpl, %edx
	cmovll	%r14d, %edx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%dl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_36
# %bb.35:                               # %if.then.i.i594
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_36:                               # %bs_write.exit.i578
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_38
# %bb.37:                               # %if.then.i25.i586
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_38:                               # %bs_write_ue_big.exit603
	movl	28(%rsi), %ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%rdx), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%edx, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_40
# %bb.39:                               # %if.then.i.i641
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_40:                               # %bs_write.exit.i625
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_42
# %bb.41:                               # %if.then.i25.i633
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
.LBB1_42:                               # %bs_write_ue_big.exit650
	movl	28(%rsi), %ecx
	cmpl	$1, %ecx
	je	.LBB1_48
# %bb.43:                               # %bs_write_ue_big.exit650
	testl	%ecx, %ecx
	jne	.LBB1_63
# %bb.44:                               # %if.then4
	movl	32(%rsi), %ecx
	leal	-3(%rcx), %r8d
	movl	%r8d, %edx
	shrl	$16, %edx
	xorl	%ebx, %ebx
	cmpl	$65539, %ecx                    # imm = 0x10003
	setge	%bl
	cmovll	%r8d, %edx
	shll	$5, %ebx
	movl	%edx, %ecx
	shrl	$8, %ecx
	leal	16(%rbx), %ebp
	cmpl	$256, %edx                      # imm = 0x100
	cmovll	%edx, %ecx
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	cmovll	%ebx, %edx
	movzbl	%dl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	(%r10), %rbx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_46
# %bb.45:                               # %if.then.i.i688
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_46:                               # %bs_write.exit.i672
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_63
# %bb.47:                               # %if.then.i25.i680
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	jmp	.LBB1_63
.LBB1_48:                               # %if.then8
	movl	36(%rsi), %ecx
	movq	(%r10), %rbx
	addq	%rbx, %rbx
	orq	%rcx, %rbx
	movq	%rbx, (%r10)
	leal	-1(%rax), %edx
	movl	%edx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_50
# %bb.49:                               # %if.then.i705
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_50:                               # %bs_write.exit713
	movl	40(%rsi), %ecx
	leal	(%rcx,%rcx), %ebp
	movl	$1, %eax
	movl	$1, %r8d
	subl	%ebp, %r8d
	testl	%ecx, %ecx
	cmovgl	%ebp, %r8d
	movl	%r8d, %ecx
	shrl	$8, %ecx
	xorl	%ebp, %ebp
	cmpl	$256, %r8d                      # imm = 0x100
	setge	%bpl
	cmovll	%r8d, %ecx
	shll	$4, %ebp
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%ebp, %ecx
	shlq	%cl, %rbx
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%ecx, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_52
# %bb.51:                               # %if.then.i.i732
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_52:                               # %bs_write_se.exit
	movl	44(%rsi), %ecx
	leal	(%rcx,%rcx), %ebx
	subl	%ebx, %eax
	testl	%ecx, %ecx
	cmovgl	%ebx, %eax
	movl	%eax, %ecx
	shrl	$8, %ecx
	xorl	%ebx, %ebx
	cmpl	$256, %eax                      # imm = 0x100
	setge	%bl
	cmovll	%eax, %ecx
	shll	$4, %ebx
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%ebx, %ecx
	shlq	%cl, %r8
	orq	%r8, %rax
	movq	%rax, (%r10)
	subl	%ecx, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_54
# %bb.53:                               # %if.then.i.i761
	movl	%edx, %ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rax
.LBB1_54:                               # %bs_write_se.exit769
	movl	48(%rsi), %ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%r8d, %r8d
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %ecx
	setge	%r8b
	shll	$5, %r8d
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%r8), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%r8d, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %r8d
	addl	%ecx, %r8d
	shrl	%r8d
	movl	%r8d, %ecx
	shlq	%cl, %rax
	movq	%rax, (%r10)
	subl	%r8d, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_56
# %bb.55:                               # %if.then.i.i807
	movl	%edx, %ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rax
.LBB1_56:                               # %bs_write.exit.i791
	incl	%r8d
	movl	%r8d, %ecx
	shlq	%cl, %rax
	movl	%ebx, %ebx
	orq	%rax, %rbx
	movq	%rbx, (%r10)
	movl	%edx, %eax
	subl	%r8d, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_58
# %bb.57:                               # %if.then.i25.i799
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
.LBB1_58:                               # %bs_write_ue_big.exit816
	cmpl	$0, 48(%rsi)
	jle	.LBB1_63
# %bb.59:                               # %for.body.lr.ph
	xorl	%edx, %edx
	jmp	.LBB1_60
	.p2align	4, 0x90
.LBB1_62:                               # %bs_write_se.exit846
                                        #   in Loop: Header=BB1_60 Depth=1
	incq	%rdx
	movslq	48(%rsi), %rcx
	cmpq	%rcx, %rdx
	jge	.LBB1_63
.LBB1_60:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	52(%rsi,%rdx,4), %ecx
	leal	(%rcx,%rcx), %ebx
	movl	$1, %r8d
	subl	%ebx, %r8d
	testl	%ecx, %ecx
	cmovgl	%ebx, %r8d
	movl	%r8d, %ecx
	shrl	$8, %ecx
	xorl	%ebx, %ebx
	cmpl	$256, %r8d                      # imm = 0x100
	setge	%bl
	cmovll	%r8d, %ecx
	shll	$4, %ebx
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%ebx, %ecx
	movq	(%r10), %rbx
	shlq	%cl, %rbx
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%ecx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_62
# %bb.61:                               # %if.then.i.i838
                                        #   in Loop: Header=BB1_60 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	jmp	.LBB1_62
.LBB1_63:                               # %if.end12
	movl	1076(%rsi), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	setge	%dl
	cmovll	%r8d, %ecx
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movq	(%r10), %rbx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_65
# %bb.64:                               # %if.then.i.i884
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_65:                               # %bs_write.exit.i868
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_67
# %bb.66:                               # %if.then.i25.i876
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_67:                               # %bs_write_ue_big.exit893
	movl	1080(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-1(%rax), %edx
	movl	%edx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_69
# %bb.68:                               # %if.then.i901
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_69:                               # %bs_write.exit909
	movl	1084(%rsi), %ebx
	movl	%ebx, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %eax
	setge	%cl
	shll	$5, %ecx
	movl	%eax, %ebp
	shrl	$8, %ebp
	leal	16(%rcx), %r14d
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %ebp
	movslq	%ebp, %rax
	movzbl	%r14b, %ebp
	cmovll	%ecx, %ebp
	movzbl	x264_ue_size_tab(%rax), %ecx
	movzbl	%bpl, %eax
	addl	%ecx, %eax
	shrl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_71
# %bb.70:                               # %if.then.i.i947
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_71:                               # %bs_write.exit.i931
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_73
# %bb.72:                               # %if.then.i25.i939
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
.LBB1_73:                               # %bs_write_ue_big.exit956
	cmpl	$0, 1092(%rsi)
	movl	1088(%rsi), %r8d
	je	.LBB1_77
# %bb.74:                               # %if.then14
	movl	%r8d, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$65536, %r8d                    # imm = 0x10000
	setge	%cl
	cmovll	%r8d, %eax
	shll	$5, %ecx
	movl	%eax, %ebx
	shrl	$8, %ebx
	leal	16(%rcx), %ebp
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %ebx
	movslq	%ebx, %rax
	movzbl	x264_ue_size_tab(%rax), %ebx
	movzbl	%bpl, %eax
	cmovll	%ecx, %eax
	movzbl	%al, %eax
	addl	%ebx, %eax
	shrl	%eax
	movq	(%r10), %rbx
	movl	%eax, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_76
# %bb.75:                               # %if.then.i.i994
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_76:                               # %bs_write.exit.i978
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rbx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$33, %edx
	jge	.LBB1_81
.LBB1_80:                               # %if.end19.sink.split
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
.LBB1_81:                               # %if.end19
	movl	1092(%rsi), %eax
	movq	(%r10), %r8
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rdx), %ecx
	movl	%ecx, (%rdi)
	cmpl	$33, %edx
	jg	.LBB1_83
# %bb.82:                               # %if.then.i1058
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_83:                               # %bs_write.exit1066
	cmpl	$0, 1092(%rsi)
	jne	.LBB1_87
# %bb.84:                               # %if.then23
	movl	1096(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_85
# %bb.86:                               # %if.then.i1074
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
	jmp	.LBB1_87
.LBB1_77:                               # %if.else16
	movl	%r8d, %ebx
	shrl	$31, %ebx
	addl	%r8d, %ebx
	sarl	%ebx
	movl	%ebx, %eax
	shrl	$16, %eax
	xorl	%ecx, %ecx
	cmpl	$131072, %r8d                   # imm = 0x20000
	setge	%cl
	cmovll	%ebx, %eax
	shll	$5, %ecx
	movl	%eax, %r8d
	shrl	$8, %r8d
	leal	16(%rcx), %ebp
	cmpl	$256, %eax                      # imm = 0x100
	cmovll	%eax, %r8d
	movslq	%r8d, %rax
	movzbl	x264_ue_size_tab(%rax), %r8d
	movzbl	%bpl, %eax
	cmovll	%ecx, %eax
	movzbl	%al, %eax
	addl	%r8d, %eax
	shrl	%eax
	movq	(%r10), %r8
	movl	%eax, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_79
# %bb.78:                               # %if.then.i.i1041
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_79:                               # %bs_write.exit.i1025
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jle	.LBB1_80
	jmp	.LBB1_81
.LBB1_85:
	movl	%eax, %ecx
.LBB1_87:                               # %if.end24
	movl	1100(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %ecx
	jg	.LBB1_89
# %bb.88:                               # %if.then.i1090
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_89:                               # %bs_write.exit1098
	movl	1104(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-1(%rax), %edx
	movl	%edx, (%rdi)
	cmpl	$33, %eax
	jg	.LBB1_91
# %bb.90:                               # %if.then.i1106
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_91:                               # %bs_write.exit1114
	cmpl	$0, 1104(%rsi)
	je	.LBB1_108
# %bb.92:                               # %if.then27
	movl	1108(%rsi), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%r14d, %r14d
	cmpl	$131070, %eax                   # imm = 0x1FFFE
	cmovll	%ebx, %ecx
	setge	%r14b
	shll	$5, %r14d
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	16(%r14), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %eax
	cltq
	movzbl	%bpl, %ecx
	cmovll	%r14d, %ecx
	movzbl	x264_ue_size_tab(%rax), %ebp
	movzbl	%cl, %eax
	addl	%ebp, %eax
	shrl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_94
# %bb.93:                               # %if.then.i.i1152
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_94:                               # %bs_write.exit.i1136
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_96
# %bb.95:                               # %if.then.i25.i1144
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_96:                               # %bs_write_ue_big.exit1161
	movl	1112(%rsi), %eax
	movl	%eax, %r8d
	shrl	$31, %r8d
	addl	%eax, %r8d
	sarl	%r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%r14d, %r14d
	cmpl	$131070, %eax                   # imm = 0x1FFFE
	cmovll	%r8d, %ecx
	setge	%r14b
	shll	$5, %r14d
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	16(%r14), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %eax
	cltq
	movzbl	%bpl, %ecx
	cmovll	%r14d, %ecx
	movzbl	x264_ue_size_tab(%rax), %ebp
	movzbl	%cl, %eax
	addl	%ebp, %eax
	shrl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_98
# %bb.97:                               # %if.then.i.i1199
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_98:                               # %bs_write.exit.i1183
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_100
# %bb.99:                               # %if.then.i25.i1191
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_100:                              # %bs_write_ue_big.exit1208
	movl	1116(%rsi), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%r14d, %r14d
	cmpl	$131070, %eax                   # imm = 0x1FFFE
	cmovll	%ebx, %ecx
	setge	%r14b
	shll	$5, %r14d
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	16(%r14), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %eax
	cltq
	movzbl	%bpl, %ecx
	cmovll	%r14d, %ecx
	movzbl	x264_ue_size_tab(%rax), %ebp
	movzbl	%cl, %eax
	addl	%ebp, %eax
	shrl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_102
# %bb.101:                              # %if.then.i.i1246
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_102:                              # %bs_write.exit.i1230
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_104
# %bb.103:                              # %if.then.i25.i1238
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_104:                              # %bs_write_ue_big.exit1255
	movl	1120(%rsi), %eax
	movl	%eax, %r8d
	shrl	$31, %r8d
	addl	%eax, %r8d
	sarl	%r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%r14d, %r14d
	cmpl	$131070, %eax                   # imm = 0x1FFFE
	cmovll	%r8d, %ecx
	setge	%r14b
	shll	$5, %r14d
	movl	%ecx, %eax
	shrl	$8, %eax
	leal	16(%r14), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %eax
	cltq
	movzbl	%bpl, %ecx
	cmovll	%r14d, %ecx
	movzbl	x264_ue_size_tab(%rax), %ebp
	movzbl	%cl, %eax
	addl	%ebp, %eax
	shrl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_106
# %bb.105:                              # %if.then.i.i1293
	movl	%edx, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_106:                              # %bs_write.exit.i1277
	incl	%eax
	movl	%eax, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%eax, %edx
	movl	%edx, (%rdi)
	cmpl	$32, %edx
	jg	.LBB1_108
# %bb.107:                              # %if.then.i25.i1285
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_108:                              # %if.end35
	movl	1124(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-1(%rdx), %eax
	movl	%eax, (%rdi)
	cmpl	$33, %edx
	jg	.LBB1_110
# %bb.109:                              # %if.then.i1310
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_110:                              # %bs_write.exit1318
	cmpl	$0, 1124(%rsi)
	je	.LBB1_263
# %bb.111:                              # %if.then38
	movl	1128(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_113
# %bb.112:                              # %if.then.i1325
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movl	$64, %eax
.LBB1_113:                              # %bs_write1.exit
	cmpl	$0, 1128(%rsi)
	je	.LBB1_152
# %bb.114:                              # %for.cond44.preheader
	movl	1132(%rsi), %ecx
	leal	-1(%rcx), %edx
	cmpl	$79, %edx
	ja	.LBB1_115
# %bb.118:                              # %for.cond44.preheader
	jmpq	*.LJTI1_0(,%rdx,8)
.LBB1_119:                              # %land.lhs.true
	cmpl	$1, 1136(%rsi)
	jne	.LBB1_143
# %bb.120:
	movl	$1, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_115:                              # %for.cond44.preheader
	cmpl	$160, %ecx
	jne	.LBB1_143
# %bb.116:                              # %land.lhs.true.12
	cmpl	$99, 1136(%rsi)
	jne	.LBB1_143
# %bb.117:
	movl	$13, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_135:                              # %land.lhs.true.8
	cmpl	$33, 1136(%rsi)
	jne	.LBB1_143
# %bb.136:
	movl	$9, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_133:                              # %land.lhs.true.7
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.134:
	movl	$8, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_131:                              # %land.lhs.true.6
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.132:
	movl	$7, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_125:                              # %land.lhs.true.3
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.126:
	movl	$4, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_139:                              # %land.lhs.true.10
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.140:
	movl	$11, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_121:                              # %land.lhs.true.1
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.122:
	movl	$2, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_141:                              # %land.lhs.true.11
	cmpl	$33, 1136(%rsi)
	jne	.LBB1_143
# %bb.142:
	movl	$12, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_123:                              # %land.lhs.true.2
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.124:
	movl	$3, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_137:                              # %land.lhs.true.9
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.138:
	movl	$10, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_129:                              # %land.lhs.true.5
	cmpl	$11, 1136(%rsi)
	jne	.LBB1_143
# %bb.130:
	movl	$6, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_127:                              # %land.lhs.true.4
	cmpl	$33, 1136(%rsi)
	jne	.LBB1_143
# %bb.128:
	movl	$5, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_144
.LBB1_143:                              # %for.inc64.12
	movb	$1, %dl
	movl	$255, %ecx
.LBB1_144:                              # %for.end66
	movq	(%r10), %r8
	shlq	$8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-8(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$40, %eax
	jg	.LBB1_146
# %bb.145:                              # %if.then.i1337
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
.LBB1_146:                              # %bs_write.exit1345
	testb	%dl, %dl
	je	.LBB1_147
# %bb.148:                              # %if.then77
	movl	1132(%rsi), %eax
	movq	(%r10), %r8
	shlq	$16, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-16(%rcx), %edx
	movl	%edx, (%rdi)
	cmpl	$48, %ecx
	jg	.LBB1_150
# %bb.149:                              # %if.then.i1353
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_150:                              # %bs_write.exit1361
	movl	1136(%rsi), %eax
	shlq	$16, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-16(%rdx), %eax
	movl	%eax, (%rdi)
	cmpl	$48, %edx
	jg	.LBB1_152
# %bb.151:                              # %if.then.i1369
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	jmp	.LBB1_152
.LBB1_147:
	movl	%ecx, %eax
.LBB1_152:                              # %if.end83
	movl	1140(%rsi), %ecx
	movq	(%r10), %r8
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_154
# %bb.153:                              # %if.then.i1385
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_154:                              # %bs_write1.exit1390
	cmpl	$0, 1140(%rsi)
	je	.LBB1_157
# %bb.155:                              # %if.then88
	movl	1144(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_157
# %bb.156:                              # %if.then.i1398
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_157:                              # %if.end90
	movl	1148(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_159
# %bb.158:                              # %if.then.i1411
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_159:                              # %bs_write1.exit1416
	cmpl	$0, 1148(%rsi)
	je	.LBB1_173
# %bb.160:                              # %if.then95
	movl	1152(%rsi), %ecx
	shlq	$3, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-3(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$35, %eax
	jg	.LBB1_162
# %bb.161:                              # %if.then.i1424
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_162:                              # %bs_write.exit1432
	movl	1156(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	decl	%ecx
	movl	%ecx, (%rdi)
	cmpl	$32, %ecx
	jne	.LBB1_164
# %bb.163:                              # %if.then.i1440
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %ecx
.LBB1_164:                              # %bs_write1.exit1445
	movl	1160(%rsi), %eax
	addq	%r8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	movl	%ecx, %eax
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_166
# %bb.165:                              # %if.then.i1453
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_166:                              # %bs_write1.exit1458
	cmpl	$0, 1160(%rsi)
	je	.LBB1_173
# %bb.167:                              # %if.then102
	movl	1164(%rsi), %ecx
	shlq	$8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-8(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$40, %eax
	jg	.LBB1_169
# %bb.168:                              # %if.then.i1466
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_169:                              # %bs_write.exit1474
	movl	1168(%rsi), %eax
	shlq	$8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-8(%rcx), %edx
	movl	%edx, (%rdi)
	cmpl	$40, %ecx
	jg	.LBB1_171
# %bb.170:                              # %if.then.i1482
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movl	%edx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_171:                              # %bs_write.exit1490
	movl	1172(%rsi), %eax
	shlq	$8, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-8(%rdx), %eax
	movl	%eax, (%rdi)
	cmpl	$40, %edx
	jg	.LBB1_173
# %bb.172:                              # %if.then.i1498
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_173:                              # %if.end107
	movl	1176(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_175
# %bb.174:                              # %if.then.i1514
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_175:                              # %bs_write1.exit1519
	cmpl	$0, 1176(%rsi)
	je	.LBB1_184
# %bb.176:                              # %if.then112
	movl	1180(%rsi), %ebx
	incl	%ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%rdx), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%edx, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_178
# %bb.177:                              # %if.then.i.i1557
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_178:                              # %bs_write.exit.i1541
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%ebx, %ebx
	orq	%r8, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_180
# %bb.179:                              # %if.then.i25.i1549
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_180:                              # %bs_write_ue_big.exit1566
	movl	1184(%rsi), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%rdx), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%edx, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movq	%rbx, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_182
# %bb.181:                              # %if.then.i.i1604
	movl	%eax, %ecx
	shlq	%cl, %rbx
	bswapq	%rbx
	movl	%ebx, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %rbx
.LBB1_182:                              # %bs_write.exit.i1588
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rbx
	movl	%r8d, %r8d
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_184
# %bb.183:                              # %if.then.i25.i1596
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_184:                              # %if.end115
	movl	1188(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_186
# %bb.185:                              # %if.then.i1621
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_186:                              # %bs_write1.exit1626
	cmpl	$0, 1188(%rsi)
	je	.LBB1_197
# %bb.187:                              # %if.then120
	movl	1192(%rsi), %ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	shlq	$16, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-16(%rax), %edx
	movl	%edx, (%rdi)
	cmpl	$48, %eax
	jg	.LBB1_189
# %bb.188:                              # %if.then.i.i1636
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_189:                              # %bs_write.exit.i1635
	shlq	$16, %r8
	orq	%rbx, %r8
	movq	%r8, (%r10)
	leal	-16(%rdx), %ecx
	movl	%ecx, (%rdi)
	cmpl	$48, %edx
	jg	.LBB1_191
# %bb.190:                              # %if.then.i10.i
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_191:                              # %bs_write32.exit
	movl	1196(%rsi), %eax
	movl	%eax, %edx
	shrl	$16, %edx
	shlq	$16, %r8
	orq	%rdx, %r8
	movq	%r8, (%r10)
	leal	-16(%rcx), %edx
	movl	%edx, (%rdi)
	cmpl	$48, %ecx
	jg	.LBB1_193
# %bb.192:                              # %if.then.i.i1667
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %edx
	addl	$32, %edx
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_193:                              # %bs_write.exit.i1653
	shlq	$16, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-16(%rdx), %eax
	movl	%eax, (%rdi)
	cmpl	$48, %edx
	jg	.LBB1_195
# %bb.194:                              # %if.then.i10.i1659
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movq	(%r10), %r8
.LBB1_195:                              # %bs_write32.exit1676
	movl	1200(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_197
# %bb.196:                              # %if.then.i1684
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_197:                              # %if.end124
	movl	1204(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_199
# %bb.198:                              # %if.then.i1697
	bswapl	%r8d
	movl	%r8d, (%r11)
	movq	(%r9), %r11
	addq	$4, %r11
	movq	%r11, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_199:                              # %bs_write1.exit1702
	cmpl	$0, 1204(%rsi)
	je	.LBB1_226
# %bb.200:                              # %if.then129
	movl	1212(%rsi), %ebx
	movl	%ebx, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %ebx                    # imm = 0x10000
	cmovll	%ebx, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebp
	shrl	$8, %ebp
	leal	16(%rdx), %r14d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebp
	movslq	%ebp, %rcx
	movzbl	%r14b, %ebp
	cmovll	%edx, %ebp
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bpl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_202
# %bb.201:                              # %if.then.i.i1740
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%r11)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_202:                              # %bs_write.exit.i1724
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%rbx, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_204
# %bb.203:                              # %if.then.i25.i1732
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_204:                              # %bs_write_ue_big.exit1749
	movl	1216(%rsi), %ecx
	shlq	$4, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	leal	-4(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$36, %eax
	jg	.LBB1_206
# %bb.205:                              # %if.then.i1757
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_206:                              # %bs_write.exit1765
	movl	1220(%rsi), %eax
	shlq	$4, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-4(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$36, %ecx
	jg	.LBB1_208
# %bb.207:                              # %if.then.i1773
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_208:                              # %bs_write.exit1781
	movl	1224(%rsi), %r11d
	movl	%r11d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovll	%r11d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_210
# %bb.209:                              # %if.then.i.i1819
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_210:                              # %bs_write.exit.i1803
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%r11, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_212
# %bb.211:                              # %if.then.i25.i1811
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_212:                              # %bs_write_ue_big.exit1828
	movl	1228(%rsi), %r11d
	movl	%r11d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovll	%r11d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_214
# %bb.213:                              # %if.then.i.i1866
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_214:                              # %bs_write.exit.i1850
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	orq	%r11, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_216
# %bb.215:                              # %if.then.i25.i1858
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_216:                              # %bs_write_ue_big.exit1875
	movl	1240(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_218
# %bb.217:                              # %if.then.i1883
	bswapl	%r8d
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_218:                              # %bs_write1.exit1888
	movl	1244(%rsi), %edx
	decl	%edx
	shlq	$5, %r8
	orq	%r8, %rdx
	movq	%rdx, (%r10)
	leal	-5(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$37, %eax
	jg	.LBB1_220
# %bb.219:                              # %if.then.i1896
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	(%r9), %rax
	movl	%edx, (%rax)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %rdx
.LBB1_220:                              # %bs_write.exit1904
	movl	1248(%rsi), %r11d
	decl	%r11d
	shlq	$5, %rdx
	orq	%rdx, %r11
	movq	%r11, (%r10)
	leal	-5(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$37, %ecx
	jg	.LBB1_222
# %bb.221:                              # %if.then.i1912
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_222:                              # %bs_write.exit1920
	movl	1252(%rsi), %r8d
	decl	%r8d
	shlq	$5, %r11
	orq	%r11, %r8
	movq	%r8, (%r10)
	leal	-5(%rax), %ecx
	movl	%ecx, (%rdi)
	cmpl	$37, %eax
	jg	.LBB1_224
# %bb.223:                              # %if.then.i1928
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_224:                              # %bs_write.exit1936
	movl	1256(%rsi), %eax
	shlq	$5, %r8
	orq	%rax, %r8
	movq	%r8, (%r10)
	leal	-5(%rcx), %eax
	movl	%eax, (%rdi)
	cmpl	$37, %ecx
	jg	.LBB1_226
# %bb.225:                              # %if.then.i1944
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_226:                              # %if.end155
	movl	1208(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_228
# %bb.227:                              # %if.then.i1960
	bswapl	%r8d
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movl	$64, %eax
.LBB1_228:                              # %bs_write1.exit1965
	cmpl	$0, 1204(%rsi)
	jne	.LBB1_230
# %bb.229:                              # %lor.lhs.false
	cmpl	$0, 1208(%rsi)
	je	.LBB1_232
.LBB1_230:                              # %if.then163
	movq	(%r10), %rcx
	addq	%rcx, %rcx
	movq	%rcx, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_232
# %bb.231:                              # %if.then.i1972
	bswapl	%ecx
	movq	(%r9), %rax
	movl	%ecx, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movl	$64, %eax
.LBB1_232:                              # %if.end164
	movl	1260(%rsi), %ecx
	movq	(%r10), %r8
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_234
# %bb.233:                              # %if.then.i1985
	bswapl	%r8d
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_234:                              # %bs_write1.exit1990
	movl	1264(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_236
# %bb.235:                              # %if.then.i1998
	bswapl	%r8d
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_236:                              # %bs_write1.exit2003
	cmpl	$0, 1264(%rsi)
	je	.LBB1_263
# %bb.237:                              # %if.then170
	movl	1268(%rsi), %ecx
	addq	%r8, %r8
	orq	%rcx, %r8
	movq	%r8, (%r10)
	decl	%eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jne	.LBB1_239
# %bb.238:                              # %if.then.i2011
	bswapl	%r8d
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	addq	$4, (%r9)
	movl	$64, (%rdi)
	movq	(%r10), %r8
	movl	$64, %eax
.LBB1_239:                              # %bs_write1.exit2016
	movl	1272(%rsi), %r11d
	incl	%r11d
	movl	%r11d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovll	%r11d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_241
# %bb.240:                              # %if.then.i.i2054
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_241:                              # %bs_write.exit.i2038
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%r11d, %r11d
	orq	%r8, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_243
# %bb.242:                              # %if.then.i25.i2046
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_243:                              # %bs_write_ue_big.exit2063
	movl	1276(%rsi), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_245
# %bb.244:                              # %if.then.i.i2101
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_245:                              # %bs_write.exit.i2085
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movl	%r8d, %r8d
	orq	%r11, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_247
# %bb.246:                              # %if.then.i25.i2093
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_247:                              # %bs_write_ue_big.exit2110
	movl	1280(%rsi), %r11d
	incl	%r11d
	movl	%r11d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovll	%r11d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_249
# %bb.248:                              # %if.then.i.i2148
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_249:                              # %bs_write.exit.i2132
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%r11d, %r11d
	orq	%r8, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_251
# %bb.250:                              # %if.then.i25.i2140
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_251:                              # %bs_write_ue_big.exit2157
	movl	1284(%rsi), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_253
# %bb.252:                              # %if.then.i.i2195
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_253:                              # %bs_write.exit.i2179
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movl	%r8d, %r8d
	orq	%r11, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_255
# %bb.254:                              # %if.then.i25.i2187
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_255:                              # %bs_write_ue_big.exit2204
	movl	1288(%rsi), %r11d
	incl	%r11d
	movl	%r11d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovll	%r11d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %ebx
	shrl	$8, %ebx
	leal	16(%rdx), %ebp
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %ebx
	movslq	%ebx, %rcx
	movzbl	%bpl, %ebx
	cmovll	%edx, %ebx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%bl, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_257
# %bb.256:                              # %if.then.i.i2242
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_257:                              # %bs_write.exit.i2226
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%r11d, %r11d
	orq	%r8, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_259
# %bb.258:                              # %if.then.i25.i2234
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_259:                              # %bs_write_ue_big.exit2251
	movl	1292(%rsi), %esi
	incl	%esi
	movl	%esi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %esi                    # imm = 0x10000
	cmovll	%esi, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r8d
	shrl	$8, %r8d
	leal	16(%rdx), %ebx
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r8d
	movslq	%r8d, %rcx
	movzbl	%bl, %r8d
	cmovll	%edx, %r8d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r8b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movq	%r11, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_261
# %bb.260:                              # %if.then.i.i2289
	movl	%eax, %ecx
	shlq	%cl, %r11
	bswapq	%r11
	movq	(%r9), %rax
	movl	%r11d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r11
.LBB1_261:                              # %bs_write.exit.i2273
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r11
	movl	%esi, %r8d
	orq	%r11, %r8
	movq	%r8, (%r10)
	subl	%edx, %eax
	movl	%eax, (%rdi)
	cmpl	$32, %eax
	jg	.LBB1_263
# %bb.262:                              # %if.then.i25.i2281
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	(%r9), %rax
	movl	%r8d, (%rax)
	movl	(%rdi), %eax
	addl	$32, %eax
	addq	$4, (%r9)
	movq	(%r10), %r8
.LBB1_263:                              # %if.end179
	leaq	1(,%r8,2), %rsi
	movq	%rsi, (%r10)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB1_265
# %bb.264:                              # %bs_write1.exit.thread.i
	bswapl	%esi
	movq	(%r9), %rax
	movl	%esi, (%rax)
	movq	(%r9), %rdx
	addq	$4, %rdx
	movq	%rdx, (%r9)
	movl	$64, (%rdi)
	movl	$64, %eax
	jmp	.LBB1_267
.LBB1_265:                              # %bs_write1.exit.i
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rsi
	movq	%rsi, (%r10)
	andl	$-8, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %rdx
	cmpl	$32, %eax
	jg	.LBB1_267
# %bb.266:                              # %if.then.i8.i
	bswapq	%rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	%esi, (%rdx)
	movl	(%rdi), %eax
	addl	$32, %eax
	movl	%eax, (%rdi)
	movq	(%r9), %rdx
	addq	$4, %rdx
	movq	%rdx, (%r9)
.LBB1_267:                              # %bs_rbsp_trailing.exit
	movl	(%r10), %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	bswapl	%esi
	movl	%esi, (%rdx)
	movl	(%rdi), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	(%r9), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, (%r9)
	movl	$64, (%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	x264_sps_write, .Lfunc_end1-x264_sps_write
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_119
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_123
	.quad	.LBB1_143
	.quad	.LBB1_121
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_139
	.quad	.LBB1_125
	.quad	.LBB1_143
	.quad	.LBB1_137
	.quad	.LBB1_143
	.quad	.LBB1_131
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_129
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_133
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_127
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_141
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_143
	.quad	.LBB1_135
                                        # -- End function
	.text
	.globl	x264_pps_init                   # -- Begin function x264_pps_init
	.p2align	4, 0x90
	.type	x264_pps_init,@function
x264_pps_init:                          # @x264_pps_init
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	movl	(%rcx), %eax
	movl	%eax, 4(%rdi)
	movl	128(%rdx), %eax
	movl	%eax, 8(%rdi)
	movl	136(%rdx), %eax
	movl	%eax, 12(%rdi)
	movl	$1, 16(%rdi)
	movl	80(%rdx), %eax
	movl	%eax, 20(%rdi)
	movl	$1, 24(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 396(%rdx)
	setg	%al
	movl	%eax, 28(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 400(%rdx)
	setne	%al
	addl	%eax, %eax
	movl	%eax, 32(%rdi)
	movl	$26, %eax
	cmpl	$2, 488(%rdx)
	je	.LBB2_2
# %bb.1:                                # %cond.false
	movl	492(%rdx), %eax
.LBB2_2:                                # %cond.end
	movl	%eax, 36(%rdi)
	movl	$26, 40(%rdi)
	movl	408(%rdx), %eax
	movl	%eax, 44(%rdi)
	movl	$1, 48(%rdi)
	movl	140(%rdx), %eax
	movl	%eax, 52(%rdi)
	movl	$0, 56(%rdi)
	xorl	%eax, %eax
	cmpl	$0, 392(%rdx)
	setne	%al
	movl	%eax, 60(%rdi)
	movl	144(%rdx), %eax
	movl	%eax, 64(%rdi)
	cmpl	$2, %eax
	je	.LBB2_125
# %bb.3:                                # %cond.end
	cmpl	$1, %eax
	je	.LBB2_4
# %bb.5:                                # %cond.end
	testl	%eax, %eax
	jne	.LBB2_8
# %bb.6:                                # %for.cond.preheader
	movl	$x264_cqm_flat16, %edx
	movl	$x264_cqm_flat16, %esi
	movl	$x264_cqm_flat16, %ecx
	movl	$x264_cqm_flat16, %eax
	jmp	.LBB2_7
.LBB2_4:
	movl	$x264_cqm_jvt8p, %eax
	movl	$x264_cqm_jvt8i, %ecx
	movl	$x264_cqm_jvt4p, %esi
	movl	$x264_cqm_jvt4i, %edx
.LBB2_7:                                # %sw.epilog.sink.split
	movq	%rdx, 72(%rdi)
	movq	%rsi, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movq	%rsi, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rax, 112(%rdi)
.LBB2_8:                                # %sw.epilog
	retq
.LBB2_125:                              # %for.cond.cleanup3.i233.7
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	160(%rdx), %r10
	movzbl	164(%rdx), %eax
	movzbl	161(%rdx), %ecx
	movzbl	162(%rdx), %esi
	movb	%cl, 164(%rdx)
	movb	%al, 161(%rdx)
	movzbl	168(%rdx), %eax
	movb	%sil, 168(%rdx)
	movb	%al, 162(%rdx)
	movzbl	169(%rdx), %eax
	movzbl	166(%rdx), %ecx
	movb	%cl, 169(%rdx)
	movb	%al, 166(%rdx)
	movzbl	172(%rdx), %eax
	movzbl	163(%rdx), %ecx
	movb	%cl, 172(%rdx)
	movb	%al, 163(%rdx)
	movzbl	173(%rdx), %eax
	movzbl	167(%rdx), %ecx
	movb	%cl, 173(%rdx)
	movb	%al, 167(%rdx)
	movzbl	171(%rdx), %eax
	movzbl	174(%rdx), %ecx
	movb	%al, 174(%rdx)
	movb	%cl, 171(%rdx)
	leaq	176(%rdx), %r8
	movzbl	177(%rdx), %eax
	movzbl	180(%rdx), %ecx
	movb	%al, 180(%rdx)
	movb	%cl, 177(%rdx)
	movzbl	178(%rdx), %eax
	movzbl	184(%rdx), %ecx
	movb	%al, 184(%rdx)
	movb	%cl, 178(%rdx)
	movzbl	182(%rdx), %eax
	movzbl	185(%rdx), %ecx
	movb	%al, 185(%rdx)
	movb	%cl, 182(%rdx)
	movzbl	179(%rdx), %eax
	movzbl	188(%rdx), %ecx
	movb	%al, 188(%rdx)
	movb	%cl, 179(%rdx)
	movzbl	183(%rdx), %eax
	movzbl	189(%rdx), %ecx
	movb	%al, 189(%rdx)
	movb	%cl, 183(%rdx)
	movzbl	187(%rdx), %eax
	movzbl	190(%rdx), %ecx
	movb	%al, 190(%rdx)
	movb	%cl, 187(%rdx)
	leaq	192(%rdx), %r9
	movzbl	193(%rdx), %eax
	movzbl	196(%rdx), %ecx
	movb	%al, 196(%rdx)
	movb	%cl, 193(%rdx)
	movzbl	194(%rdx), %eax
	movzbl	200(%rdx), %ecx
	movb	%al, 200(%rdx)
	movb	%cl, 194(%rdx)
	movzbl	198(%rdx), %eax
	movzbl	201(%rdx), %ecx
	movb	%al, 201(%rdx)
	movb	%cl, 198(%rdx)
	movzbl	195(%rdx), %eax
	movzbl	204(%rdx), %ecx
	movb	%al, 204(%rdx)
	movb	%cl, 195(%rdx)
	movzbl	199(%rdx), %eax
	movzbl	205(%rdx), %ecx
	movb	%al, 205(%rdx)
	movb	%cl, 199(%rdx)
	movzbl	203(%rdx), %eax
	movzbl	206(%rdx), %ecx
	movb	%al, 206(%rdx)
	movb	%cl, 203(%rdx)
	leaq	208(%rdx), %rsi
	movzbl	209(%rdx), %eax
	movzbl	212(%rdx), %ecx
	movb	%al, 212(%rdx)
	movb	%cl, 209(%rdx)
	movzbl	210(%rdx), %eax
	movzbl	216(%rdx), %ecx
	movb	%al, 216(%rdx)
	movb	%cl, 210(%rdx)
	movzbl	214(%rdx), %eax
	movzbl	217(%rdx), %ecx
	movb	%al, 217(%rdx)
	movb	%cl, 214(%rdx)
	movzbl	211(%rdx), %eax
	movzbl	220(%rdx), %ecx
	movb	%al, 220(%rdx)
	movb	%cl, 211(%rdx)
	movzbl	215(%rdx), %eax
	movzbl	221(%rdx), %ecx
	movb	%al, 221(%rdx)
	movb	%cl, 215(%rdx)
	movzbl	219(%rdx), %eax
	movzbl	222(%rdx), %ecx
	movb	%al, 222(%rdx)
	movb	%cl, 219(%rdx)
	leaq	224(%rdx), %rax
	movzbl	225(%rdx), %ecx
	movzbl	232(%rdx), %r11d
	movb	%cl, 232(%rdx)
	movb	%r11b, 225(%rdx)
	movzbl	226(%rdx), %ecx
	movzbl	240(%rdx), %r11d
	movb	%cl, 240(%rdx)
	movb	%r11b, 226(%rdx)
	movzbl	234(%rdx), %ecx
	movzbl	241(%rdx), %r11d
	movb	%cl, 241(%rdx)
	movb	%r11b, 234(%rdx)
	movzbl	227(%rdx), %ecx
	movzbl	248(%rdx), %r11d
	movb	%cl, 248(%rdx)
	movb	%r11b, 227(%rdx)
	movzbl	235(%rdx), %ecx
	movzbl	249(%rdx), %r11d
	movb	%cl, 249(%rdx)
	movb	%r11b, 235(%rdx)
	movzbl	243(%rdx), %ecx
	movzbl	250(%rdx), %r11d
	movb	%cl, 250(%rdx)
	movb	%r11b, 243(%rdx)
	movzbl	228(%rdx), %ecx
	movzbl	256(%rdx), %r11d
	movb	%cl, 256(%rdx)
	movb	%r11b, 228(%rdx)
	movzbl	236(%rdx), %ecx
	movzbl	257(%rdx), %r11d
	movb	%cl, 257(%rdx)
	movb	%r11b, 236(%rdx)
	movzbl	244(%rdx), %ecx
	movzbl	258(%rdx), %r11d
	movb	%cl, 258(%rdx)
	movb	%r11b, 244(%rdx)
	movzbl	252(%rdx), %ecx
	movzbl	259(%rdx), %r11d
	movb	%cl, 259(%rdx)
	movb	%r11b, 252(%rdx)
	movzbl	229(%rdx), %ecx
	movzbl	264(%rdx), %r11d
	movb	%cl, 264(%rdx)
	movb	%r11b, 229(%rdx)
	movzbl	237(%rdx), %ecx
	movzbl	265(%rdx), %r11d
	movb	%cl, 265(%rdx)
	movb	%r11b, 237(%rdx)
	movzbl	245(%rdx), %ecx
	movzbl	266(%rdx), %r11d
	movb	%cl, 266(%rdx)
	movb	%r11b, 245(%rdx)
	movzbl	253(%rdx), %ecx
	movzbl	267(%rdx), %r11d
	movb	%cl, 267(%rdx)
	movb	%r11b, 253(%rdx)
	movzbl	261(%rdx), %ecx
	movzbl	268(%rdx), %r11d
	movb	%cl, 268(%rdx)
	movb	%r11b, 261(%rdx)
	movzbl	230(%rdx), %ecx
	movzbl	272(%rdx), %r11d
	movb	%cl, 272(%rdx)
	movb	%r11b, 230(%rdx)
	movzbl	238(%rdx), %ecx
	movzbl	273(%rdx), %r11d
	movb	%cl, 273(%rdx)
	movb	%r11b, 238(%rdx)
	movzbl	246(%rdx), %ecx
	movzbl	274(%rdx), %r11d
	movb	%cl, 274(%rdx)
	movb	%r11b, 246(%rdx)
	movzbl	254(%rdx), %ecx
	movzbl	275(%rdx), %r11d
	movb	%cl, 275(%rdx)
	movb	%r11b, 254(%rdx)
	movzbl	262(%rdx), %ecx
	movzbl	276(%rdx), %r11d
	movb	%cl, 276(%rdx)
	movb	%r11b, 262(%rdx)
	movzbl	270(%rdx), %ecx
	movzbl	277(%rdx), %r11d
	movb	%cl, 277(%rdx)
	movb	%r11b, 270(%rdx)
	movzbl	231(%rdx), %ecx
	movzbl	280(%rdx), %r11d
	movb	%cl, 280(%rdx)
	movb	%r11b, 231(%rdx)
	movzbl	239(%rdx), %ecx
	movzbl	281(%rdx), %r11d
	movb	%cl, 281(%rdx)
	movb	%r11b, 239(%rdx)
	movzbl	247(%rdx), %ecx
	movzbl	282(%rdx), %r11d
	movb	%cl, 282(%rdx)
	movb	%r11b, 247(%rdx)
	movzbl	255(%rdx), %ecx
	movzbl	283(%rdx), %r11d
	movb	%cl, 283(%rdx)
	movb	%r11b, 255(%rdx)
	movzbl	263(%rdx), %ecx
	movzbl	284(%rdx), %r11d
	movb	%cl, 284(%rdx)
	movb	%r11b, 263(%rdx)
	movzbl	271(%rdx), %ecx
	movzbl	285(%rdx), %r11d
	movb	%cl, 285(%rdx)
	movb	%r11b, 271(%rdx)
	movzbl	279(%rdx), %ecx
	movzbl	286(%rdx), %r11d
	movb	%cl, 286(%rdx)
	movb	%r11b, 279(%rdx)
	leaq	288(%rdx), %rcx
	movzbl	289(%rdx), %r11d
	movzbl	296(%rdx), %ebx
	movb	%r11b, 296(%rdx)
	movb	%bl, 289(%rdx)
	movzbl	290(%rdx), %r11d
	movzbl	304(%rdx), %ebx
	movb	%r11b, 304(%rdx)
	movb	%bl, 290(%rdx)
	movzbl	298(%rdx), %r11d
	movzbl	305(%rdx), %ebx
	movb	%r11b, 305(%rdx)
	movb	%bl, 298(%rdx)
	movzbl	291(%rdx), %r11d
	movzbl	312(%rdx), %ebx
	movb	%r11b, 312(%rdx)
	movb	%bl, 291(%rdx)
	movzbl	299(%rdx), %r11d
	movzbl	313(%rdx), %ebx
	movb	%r11b, 313(%rdx)
	movb	%bl, 299(%rdx)
	movzbl	307(%rdx), %r11d
	movzbl	314(%rdx), %ebx
	movb	%r11b, 314(%rdx)
	movb	%bl, 307(%rdx)
	movzbl	292(%rdx), %r11d
	movzbl	320(%rdx), %ebx
	movb	%r11b, 320(%rdx)
	movb	%bl, 292(%rdx)
	movzbl	300(%rdx), %r11d
	movzbl	321(%rdx), %ebx
	movb	%r11b, 321(%rdx)
	movb	%bl, 300(%rdx)
	movzbl	308(%rdx), %r11d
	movzbl	322(%rdx), %ebx
	movb	%r11b, 322(%rdx)
	movb	%bl, 308(%rdx)
	movzbl	316(%rdx), %r11d
	movzbl	323(%rdx), %ebx
	movb	%r11b, 323(%rdx)
	movb	%bl, 316(%rdx)
	movzbl	293(%rdx), %r11d
	movzbl	328(%rdx), %ebx
	movb	%r11b, 328(%rdx)
	movb	%bl, 293(%rdx)
	movzbl	301(%rdx), %r11d
	movzbl	329(%rdx), %ebx
	movb	%r11b, 329(%rdx)
	movb	%bl, 301(%rdx)
	movzbl	309(%rdx), %r11d
	movzbl	330(%rdx), %ebx
	movb	%r11b, 330(%rdx)
	movb	%bl, 309(%rdx)
	movzbl	317(%rdx), %r11d
	movzbl	331(%rdx), %ebx
	movb	%r11b, 331(%rdx)
	movb	%bl, 317(%rdx)
	movzbl	325(%rdx), %r11d
	movzbl	332(%rdx), %ebx
	movb	%r11b, 332(%rdx)
	movb	%bl, 325(%rdx)
	movzbl	294(%rdx), %r11d
	movzbl	336(%rdx), %ebx
	movb	%r11b, 336(%rdx)
	movb	%bl, 294(%rdx)
	movzbl	302(%rdx), %r11d
	movzbl	337(%rdx), %ebx
	movb	%r11b, 337(%rdx)
	movb	%bl, 302(%rdx)
	movzbl	310(%rdx), %r11d
	movzbl	338(%rdx), %ebx
	movb	%r11b, 338(%rdx)
	movb	%bl, 310(%rdx)
	movzbl	318(%rdx), %r11d
	movzbl	339(%rdx), %ebx
	movb	%r11b, 339(%rdx)
	movb	%bl, 318(%rdx)
	movzbl	326(%rdx), %r11d
	movzbl	340(%rdx), %ebx
	movb	%r11b, 340(%rdx)
	movb	%bl, 326(%rdx)
	movzbl	334(%rdx), %r11d
	movzbl	341(%rdx), %ebx
	movb	%r11b, 341(%rdx)
	movb	%bl, 334(%rdx)
	movzbl	295(%rdx), %r11d
	movzbl	344(%rdx), %ebx
	movb	%r11b, 344(%rdx)
	movb	%bl, 295(%rdx)
	movzbl	303(%rdx), %r11d
	movzbl	345(%rdx), %ebx
	movb	%r11b, 345(%rdx)
	movb	%bl, 303(%rdx)
	movzbl	311(%rdx), %r11d
	movzbl	346(%rdx), %ebx
	movb	%r11b, 346(%rdx)
	movb	%bl, 311(%rdx)
	movzbl	319(%rdx), %r11d
	movzbl	347(%rdx), %ebx
	movb	%r11b, 347(%rdx)
	movb	%bl, 319(%rdx)
	movzbl	327(%rdx), %r11d
	movzbl	348(%rdx), %ebx
	movb	%r11b, 348(%rdx)
	movb	%bl, 327(%rdx)
	movzbl	335(%rdx), %r11d
	movzbl	349(%rdx), %ebx
	movb	%r11b, 349(%rdx)
	movb	%bl, 335(%rdx)
	movzbl	343(%rdx), %r11d
	movzbl	350(%rdx), %ebx
	movb	%r11b, 350(%rdx)
	movb	%bl, 343(%rdx)
	movq	%r10, 72(%rdi)
	movq	%r8, 88(%rdi)
	movq	%r9, 80(%rdi)
	movq	%rsi, 96(%rdi)
	movq	%rax, 104(%rdi)
	movq	%rcx, 112(%rdi)
	cmpb	$0, 160(%rdx)
	je	.LBB2_126
# %bb.127:                              # %for.inc90
	cmpb	$0, 1(%r10)
	je	.LBB2_128
.LBB2_129:                              # %for.inc90.1253
	cmpb	$0, 2(%r10)
	je	.LBB2_130
.LBB2_131:                              # %for.inc90.2257
	cmpb	$0, 3(%r10)
	je	.LBB2_132
.LBB2_133:                              # %for.inc90.3261
	cmpb	$0, 4(%r10)
	je	.LBB2_134
.LBB2_135:                              # %for.inc90.4269
	cmpb	$0, 5(%r10)
	je	.LBB2_136
.LBB2_137:                              # %for.inc90.5277
	cmpb	$0, 6(%r10)
	je	.LBB2_138
.LBB2_139:                              # %for.inc90.6
	cmpb	$0, 7(%r10)
	je	.LBB2_140
.LBB2_141:                              # %for.inc90.7
	cmpb	$0, 8(%r10)
	je	.LBB2_142
.LBB2_143:                              # %for.inc90.8
	cmpb	$0, 9(%r10)
	je	.LBB2_144
.LBB2_145:                              # %for.inc90.9
	cmpb	$0, 10(%r10)
	je	.LBB2_146
.LBB2_147:                              # %for.inc90.10
	cmpb	$0, 11(%r10)
	je	.LBB2_148
.LBB2_149:                              # %for.inc90.11
	cmpb	$0, 12(%r10)
	je	.LBB2_150
.LBB2_151:                              # %for.inc90.12
	cmpb	$0, 13(%r10)
	je	.LBB2_152
.LBB2_153:                              # %for.inc90.13
	cmpb	$0, 14(%r10)
	je	.LBB2_154
.LBB2_155:                              # %for.inc90.14
	cmpb	$0, 15(%r10)
	je	.LBB2_156
.LBB2_157:                              # %for.inc90.15
	cmpb	$0, (%r9)
	je	.LBB2_9
.LBB2_10:                               # %for.inc90.1
	cmpb	$0, 1(%r9)
	je	.LBB2_11
.LBB2_12:                               # %for.inc90.1.1
	cmpb	$0, 2(%r9)
	je	.LBB2_13
.LBB2_14:                               # %for.inc90.1.2
	cmpb	$0, 3(%r9)
	je	.LBB2_15
.LBB2_16:                               # %for.inc90.1.3
	cmpb	$0, 4(%r9)
	je	.LBB2_17
.LBB2_18:                               # %for.inc90.1.4
	cmpb	$0, 5(%r9)
	je	.LBB2_19
.LBB2_20:                               # %for.inc90.1.5
	cmpb	$0, 6(%r9)
	je	.LBB2_21
.LBB2_22:                               # %for.inc90.1.6
	cmpb	$0, 7(%r9)
	je	.LBB2_23
.LBB2_24:                               # %for.inc90.1.7
	cmpb	$0, 8(%r9)
	je	.LBB2_25
.LBB2_26:                               # %for.inc90.1.8
	cmpb	$0, 9(%r9)
	je	.LBB2_27
.LBB2_28:                               # %for.inc90.1.9
	cmpb	$0, 10(%r9)
	je	.LBB2_29
.LBB2_30:                               # %for.inc90.1.10
	cmpb	$0, 11(%r9)
	je	.LBB2_31
.LBB2_32:                               # %for.inc90.1.11
	cmpb	$0, 12(%r9)
	je	.LBB2_33
.LBB2_34:                               # %for.inc90.1.12
	cmpb	$0, 13(%r9)
	je	.LBB2_35
.LBB2_36:                               # %for.inc90.1.13
	cmpb	$0, 14(%r9)
	je	.LBB2_37
.LBB2_38:                               # %for.inc90.1.14
	cmpb	$0, 15(%r9)
	je	.LBB2_39
.LBB2_40:                               # %for.inc90.1.15
	cmpb	$0, (%r8)
	je	.LBB2_41
.LBB2_42:                               # %for.inc90.2
	cmpb	$0, 1(%r8)
	je	.LBB2_43
.LBB2_44:                               # %for.inc90.2.1
	cmpb	$0, 2(%r8)
	je	.LBB2_45
.LBB2_46:                               # %for.inc90.2.2
	cmpb	$0, 3(%r8)
	je	.LBB2_47
.LBB2_48:                               # %for.inc90.2.3
	cmpb	$0, 4(%r8)
	je	.LBB2_49
.LBB2_50:                               # %for.inc90.2.4
	cmpb	$0, 5(%r8)
	je	.LBB2_51
.LBB2_52:                               # %for.inc90.2.5
	cmpb	$0, 6(%r8)
	je	.LBB2_53
.LBB2_54:                               # %for.inc90.2.6
	cmpb	$0, 7(%r8)
	je	.LBB2_55
.LBB2_56:                               # %for.inc90.2.7
	cmpb	$0, 8(%r8)
	je	.LBB2_57
.LBB2_58:                               # %for.inc90.2.8
	cmpb	$0, 9(%r8)
	je	.LBB2_59
.LBB2_60:                               # %for.inc90.2.9
	cmpb	$0, 10(%r8)
	je	.LBB2_61
.LBB2_62:                               # %for.inc90.2.10
	cmpb	$0, 11(%r8)
	je	.LBB2_63
.LBB2_64:                               # %for.inc90.2.11
	cmpb	$0, 12(%r8)
	je	.LBB2_65
.LBB2_66:                               # %for.inc90.2.12
	cmpb	$0, 13(%r8)
	je	.LBB2_67
.LBB2_68:                               # %for.inc90.2.13
	cmpb	$0, 14(%r8)
	je	.LBB2_69
.LBB2_70:                               # %for.inc90.2.14
	cmpb	$0, 15(%r8)
	je	.LBB2_71
.LBB2_72:                               # %for.inc90.2.15
	cmpb	$0, (%rsi)
	je	.LBB2_73
.LBB2_74:                               # %for.inc90.3
	cmpb	$0, 1(%rsi)
	je	.LBB2_75
.LBB2_76:                               # %for.inc90.3.1
	cmpb	$0, 2(%rsi)
	je	.LBB2_77
.LBB2_78:                               # %for.inc90.3.2
	cmpb	$0, 3(%rsi)
	je	.LBB2_79
.LBB2_80:                               # %for.inc90.3.3
	cmpb	$0, 4(%rsi)
	je	.LBB2_81
.LBB2_82:                               # %for.inc90.3.4
	cmpb	$0, 5(%rsi)
	je	.LBB2_83
.LBB2_84:                               # %for.inc90.3.5
	cmpb	$0, 6(%rsi)
	je	.LBB2_85
.LBB2_86:                               # %for.inc90.3.6
	cmpb	$0, 7(%rsi)
	je	.LBB2_87
.LBB2_88:                               # %for.inc90.3.7
	cmpb	$0, 8(%rsi)
	je	.LBB2_89
.LBB2_90:                               # %for.inc90.3.8
	cmpb	$0, 9(%rsi)
	je	.LBB2_91
.LBB2_92:                               # %for.inc90.3.9
	cmpb	$0, 10(%rsi)
	je	.LBB2_93
.LBB2_94:                               # %for.inc90.3.10
	cmpb	$0, 11(%rsi)
	je	.LBB2_95
.LBB2_96:                               # %for.inc90.3.11
	cmpb	$0, 12(%rsi)
	je	.LBB2_97
.LBB2_98:                               # %for.inc90.3.12
	cmpb	$0, 13(%rsi)
	je	.LBB2_99
.LBB2_100:                              # %for.inc90.3.13
	cmpb	$0, 14(%rsi)
	je	.LBB2_101
.LBB2_102:                              # %for.inc90.3.14
	cmpb	$0, 15(%rsi)
	je	.LBB2_103
.LBB2_104:                              # %for.inc90.3.15
	xorl	%edx, %edx
	jmp	.LBB2_105
	.p2align	4, 0x90
.LBB2_113:                              # %for.inc90.4.3
                                        #   in Loop: Header=BB2_105 Depth=1
	addq	$4, %rdx
	cmpq	$64, %rdx
	je	.LBB2_114
.LBB2_105:                              # %for.body76.4
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rax,%rdx)
	je	.LBB2_106
# %bb.107:                              # %for.inc90.4
                                        #   in Loop: Header=BB2_105 Depth=1
	cmpb	$0, 1(%rax,%rdx)
	je	.LBB2_108
.LBB2_109:                              # %for.inc90.4.1
                                        #   in Loop: Header=BB2_105 Depth=1
	cmpb	$0, 2(%rax,%rdx)
	je	.LBB2_110
.LBB2_111:                              # %for.inc90.4.2
                                        #   in Loop: Header=BB2_105 Depth=1
	cmpb	$0, 3(%rax,%rdx)
	jne	.LBB2_113
	jmp	.LBB2_112
	.p2align	4, 0x90
.LBB2_106:                              # %if.then.4
                                        #   in Loop: Header=BB2_105 Depth=1
	movq	$x264_cqm_jvt8i, 104(%rdi)
	movl	$x264_cqm_jvt8i, %eax
	cmpb	$0, 1(%rax,%rdx)
	jne	.LBB2_109
.LBB2_108:                              # %if.then.4.1
                                        #   in Loop: Header=BB2_105 Depth=1
	movq	$x264_cqm_jvt8i, 104(%rdi)
	movl	$x264_cqm_jvt8i, %eax
	cmpb	$0, 2(%rax,%rdx)
	jne	.LBB2_111
.LBB2_110:                              # %if.then.4.2
                                        #   in Loop: Header=BB2_105 Depth=1
	movq	$x264_cqm_jvt8i, 104(%rdi)
	movl	$x264_cqm_jvt8i, %eax
	cmpb	$0, 3(%rax,%rdx)
	jne	.LBB2_113
.LBB2_112:                              # %if.then.4.3
                                        #   in Loop: Header=BB2_105 Depth=1
	movq	$x264_cqm_jvt8i, 104(%rdi)
	movl	$x264_cqm_jvt8i, %eax
	jmp	.LBB2_113
.LBB2_114:                              # %for.cond.cleanup75.4
	xorl	%eax, %eax
	jmp	.LBB2_115
	.p2align	4, 0x90
.LBB2_123:                              # %for.inc90.5.3
                                        #   in Loop: Header=BB2_115 Depth=1
	addq	$4, %rax
	cmpq	$64, %rax
	je	.LBB2_124
.LBB2_115:                              # %for.body76.5
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rcx,%rax)
	je	.LBB2_116
# %bb.117:                              # %for.inc90.5
                                        #   in Loop: Header=BB2_115 Depth=1
	cmpb	$0, 1(%rcx,%rax)
	je	.LBB2_118
.LBB2_119:                              # %for.inc90.5.1
                                        #   in Loop: Header=BB2_115 Depth=1
	cmpb	$0, 2(%rcx,%rax)
	je	.LBB2_120
.LBB2_121:                              # %for.inc90.5.2
                                        #   in Loop: Header=BB2_115 Depth=1
	cmpb	$0, 3(%rcx,%rax)
	jne	.LBB2_123
	jmp	.LBB2_122
	.p2align	4, 0x90
.LBB2_116:                              # %if.then.5
                                        #   in Loop: Header=BB2_115 Depth=1
	movq	$x264_cqm_jvt8p, 112(%rdi)
	movl	$x264_cqm_jvt8p, %ecx
	cmpb	$0, 1(%rcx,%rax)
	jne	.LBB2_119
.LBB2_118:                              # %if.then.5.1
                                        #   in Loop: Header=BB2_115 Depth=1
	movq	$x264_cqm_jvt8p, 112(%rdi)
	movl	$x264_cqm_jvt8p, %ecx
	cmpb	$0, 2(%rcx,%rax)
	jne	.LBB2_121
.LBB2_120:                              # %if.then.5.2
                                        #   in Loop: Header=BB2_115 Depth=1
	movq	$x264_cqm_jvt8p, 112(%rdi)
	movl	$x264_cqm_jvt8p, %ecx
	cmpb	$0, 3(%rcx,%rax)
	jne	.LBB2_123
.LBB2_122:                              # %if.then.5.3
                                        #   in Loop: Header=BB2_115 Depth=1
	movq	$x264_cqm_jvt8p, 112(%rdi)
	movl	$x264_cqm_jvt8p, %ecx
	jmp	.LBB2_123
.LBB2_124:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_126:                              # %if.then
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 1(%r10)
	jne	.LBB2_129
.LBB2_128:                              # %if.then.1252
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 2(%r10)
	jne	.LBB2_131
.LBB2_130:                              # %if.then.2256
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 3(%r10)
	jne	.LBB2_133
.LBB2_132:                              # %if.then.3260
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 4(%r10)
	jne	.LBB2_135
.LBB2_134:                              # %if.then.4266
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 5(%r10)
	jne	.LBB2_137
.LBB2_136:                              # %if.then.5274
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 6(%r10)
	jne	.LBB2_139
.LBB2_138:                              # %if.then.6
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 7(%r10)
	jne	.LBB2_141
.LBB2_140:                              # %if.then.7
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 8(%r10)
	jne	.LBB2_143
.LBB2_142:                              # %if.then.8
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 9(%r10)
	jne	.LBB2_145
.LBB2_144:                              # %if.then.9
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 10(%r10)
	jne	.LBB2_147
.LBB2_146:                              # %if.then.10
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 11(%r10)
	jne	.LBB2_149
.LBB2_148:                              # %if.then.11
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 12(%r10)
	jne	.LBB2_151
.LBB2_150:                              # %if.then.12
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 13(%r10)
	jne	.LBB2_153
.LBB2_152:                              # %if.then.13
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 14(%r10)
	jne	.LBB2_155
.LBB2_154:                              # %if.then.14
	movq	$x264_cqm_jvt4i, 72(%rdi)
	movl	$x264_cqm_jvt4i, %r10d
	cmpb	$0, 15(%r10)
	jne	.LBB2_157
.LBB2_156:                              # %if.then.15
	movq	$x264_cqm_jvt4i, 72(%rdi)
	cmpb	$0, (%r9)
	jne	.LBB2_10
.LBB2_9:                                # %if.then.1
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 1(%r9)
	jne	.LBB2_12
.LBB2_11:                               # %if.then.1.1
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 2(%r9)
	jne	.LBB2_14
.LBB2_13:                               # %if.then.1.2
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 3(%r9)
	jne	.LBB2_16
.LBB2_15:                               # %if.then.1.3
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 4(%r9)
	jne	.LBB2_18
.LBB2_17:                               # %if.then.1.4
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 5(%r9)
	jne	.LBB2_20
.LBB2_19:                               # %if.then.1.5
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 6(%r9)
	jne	.LBB2_22
.LBB2_21:                               # %if.then.1.6
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 7(%r9)
	jne	.LBB2_24
.LBB2_23:                               # %if.then.1.7
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 8(%r9)
	jne	.LBB2_26
.LBB2_25:                               # %if.then.1.8
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 9(%r9)
	jne	.LBB2_28
.LBB2_27:                               # %if.then.1.9
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 10(%r9)
	jne	.LBB2_30
.LBB2_29:                               # %if.then.1.10
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 11(%r9)
	jne	.LBB2_32
.LBB2_31:                               # %if.then.1.11
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 12(%r9)
	jne	.LBB2_34
.LBB2_33:                               # %if.then.1.12
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 13(%r9)
	jne	.LBB2_36
.LBB2_35:                               # %if.then.1.13
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 14(%r9)
	jne	.LBB2_38
.LBB2_37:                               # %if.then.1.14
	movq	$x264_cqm_jvt4p, 80(%rdi)
	movl	$x264_cqm_jvt4p, %r9d
	cmpb	$0, 15(%r9)
	jne	.LBB2_40
.LBB2_39:                               # %if.then.1.15
	movq	$x264_cqm_jvt4p, 80(%rdi)
	cmpb	$0, (%r8)
	jne	.LBB2_42
.LBB2_41:                               # %if.then.2
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 1(%r8)
	jne	.LBB2_44
.LBB2_43:                               # %if.then.2.1
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 2(%r8)
	jne	.LBB2_46
.LBB2_45:                               # %if.then.2.2
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 3(%r8)
	jne	.LBB2_48
.LBB2_47:                               # %if.then.2.3
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 4(%r8)
	jne	.LBB2_50
.LBB2_49:                               # %if.then.2.4
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 5(%r8)
	jne	.LBB2_52
.LBB2_51:                               # %if.then.2.5
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 6(%r8)
	jne	.LBB2_54
.LBB2_53:                               # %if.then.2.6
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 7(%r8)
	jne	.LBB2_56
.LBB2_55:                               # %if.then.2.7
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 8(%r8)
	jne	.LBB2_58
.LBB2_57:                               # %if.then.2.8
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 9(%r8)
	jne	.LBB2_60
.LBB2_59:                               # %if.then.2.9
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 10(%r8)
	jne	.LBB2_62
.LBB2_61:                               # %if.then.2.10
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 11(%r8)
	jne	.LBB2_64
.LBB2_63:                               # %if.then.2.11
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 12(%r8)
	jne	.LBB2_66
.LBB2_65:                               # %if.then.2.12
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 13(%r8)
	jne	.LBB2_68
.LBB2_67:                               # %if.then.2.13
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 14(%r8)
	jne	.LBB2_70
.LBB2_69:                               # %if.then.2.14
	movq	$x264_cqm_jvt4i, 88(%rdi)
	movl	$x264_cqm_jvt4i, %r8d
	cmpb	$0, 15(%r8)
	jne	.LBB2_72
.LBB2_71:                               # %if.then.2.15
	movq	$x264_cqm_jvt4i, 88(%rdi)
	cmpb	$0, (%rsi)
	jne	.LBB2_74
.LBB2_73:                               # %if.then.3
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 1(%rsi)
	jne	.LBB2_76
.LBB2_75:                               # %if.then.3.1
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 2(%rsi)
	jne	.LBB2_78
.LBB2_77:                               # %if.then.3.2
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 3(%rsi)
	jne	.LBB2_80
.LBB2_79:                               # %if.then.3.3
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 4(%rsi)
	jne	.LBB2_82
.LBB2_81:                               # %if.then.3.4
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 5(%rsi)
	jne	.LBB2_84
.LBB2_83:                               # %if.then.3.5
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 6(%rsi)
	jne	.LBB2_86
.LBB2_85:                               # %if.then.3.6
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 7(%rsi)
	jne	.LBB2_88
.LBB2_87:                               # %if.then.3.7
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 8(%rsi)
	jne	.LBB2_90
.LBB2_89:                               # %if.then.3.8
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 9(%rsi)
	jne	.LBB2_92
.LBB2_91:                               # %if.then.3.9
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 10(%rsi)
	jne	.LBB2_94
.LBB2_93:                               # %if.then.3.10
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 11(%rsi)
	jne	.LBB2_96
.LBB2_95:                               # %if.then.3.11
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 12(%rsi)
	jne	.LBB2_98
.LBB2_97:                               # %if.then.3.12
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 13(%rsi)
	jne	.LBB2_100
.LBB2_99:                               # %if.then.3.13
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 14(%rsi)
	jne	.LBB2_102
.LBB2_101:                              # %if.then.3.14
	movq	$x264_cqm_jvt4p, 96(%rdi)
	movl	$x264_cqm_jvt4p, %esi
	cmpb	$0, 15(%rsi)
	jne	.LBB2_104
.LBB2_103:                              # %if.then.3.15
	movq	$x264_cqm_jvt4p, 96(%rdi)
	jmp	.LBB2_104
.Lfunc_end2:
	.size	x264_pps_init, .Lfunc_end2-x264_pps_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_pps_write                  # -- Begin function x264_pps_write
	.p2align	4, 0x90
	.type	x264_pps_write,@function
x264_pps_write:                         # @x264_pps_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	movl	%esi, %ecx
	andl	$3, %ecx
	je	.LBB3_1
# %bb.2:                                # %if.then.i
	movl	%esi, %edx
	andl	$3, %edx
	andq	$-4, %rsi
	movq	%rsi, 8(%rbx)
	shll	$3, %edx
	movl	$64, %eax
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	movl	(%rsi), %edi
	bswapl	%edi
	leal	32(,%rcx,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	jmp	.LBB3_3
.LBB3_1:                                # %entry.bs_realign.exit_crit_edge
	movq	24(%rbx), %rdi
	movl	32(%rbx), %eax
.LBB3_3:                                # %bs_realign.exit
	movl	(%r14), %r8d
	incl	%r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_5
# %bb.4:                                # %if.then.i.i
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_5:                                # %bs_write.exit.i
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movl	%r8d, %r8d
	orq	%rdi, %r8
	movq	%r8, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_7
# %bb.6:                                # %if.then.i25.i
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %r8
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_7:                                # %bs_write_ue_big.exit
	movl	4(%r14), %edi
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	cmovll	%edi, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movq	%r8, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_9
# %bb.8:                                # %if.then.i.i112
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movq	8(%rbx), %rsi
	movq	24(%rbx), %r8
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_9:                                # %bs_write.exit.i96
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_11
# %bb.10:                               # %if.then.i25.i104
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_11:                               # %bs_write_ue_big.exit121
	movl	8(%r14), %ecx
	addq	%rdi, %rdi
	orq	%rcx, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %eax
	jg	.LBB3_13
# %bb.12:                               # %if.then.i126
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_13:                               # %bs_write.exit
	movl	12(%r14), %eax
	addq	%rdi, %rdi
	orq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rcx), %eax
	movl	%eax, 32(%rbx)
	cmpl	$33, %ecx
	jg	.LBB3_15
# %bb.14:                               # %if.then.i137
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_15:                               # %bs_write.exit145
	movl	16(%r14), %r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_17
# %bb.16:                               # %if.then.i.i183
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_17:                               # %bs_write.exit.i167
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_19
# %bb.18:                               # %if.then.i25.i175
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_19:                               # %bs_write_ue_big.exit192
	movl	20(%r14), %r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_21
# %bb.20:                               # %if.then.i.i230
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_21:                               # %bs_write.exit.i214
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_23
# %bb.22:                               # %if.then.i25.i222
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_23:                               # %bs_write_ue_big.exit239
	movl	24(%r14), %r8d
	movl	%r8d, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %r8d                    # imm = 0x10000
	cmovll	%r8d, %ecx
	setge	%dl
	shll	$5, %edx
	movl	%ecx, %r9d
	shrl	$8, %r9d
	leal	16(%rdx), %r10d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %r9d
	movslq	%r9d, %rcx
	movzbl	%r10b, %r9d
	cmovll	%edx, %r9d
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r9b, %edx
	addl	%ecx, %edx
	shrl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_25
# %bb.24:                               # %if.then.i.i277
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_25:                               # %bs_write.exit.i261
	incl	%edx
	movl	%edx, %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%edx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_27
# %bb.26:                               # %if.then.i25.i269
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_27:                               # %bs_write_ue_big.exit286
	movl	28(%r14), %ecx
	addq	%rdi, %rdi
	orq	%rcx, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %eax
	jg	.LBB3_29
# %bb.28:                               # %if.then.i294
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_29:                               # %bs_write.exit302
	movl	32(%r14), %eax
	shlq	$2, %rdi
	orq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	leal	-2(%rcx), %eax
	movl	%eax, 32(%rbx)
	cmpl	$34, %ecx
	jg	.LBB3_31
# %bb.30:                               # %if.then.i310
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_31:                               # %bs_write.exit318
	movl	36(%r14), %ecx
	leal	-52(%rcx,%rcx), %r10d
	movl	$53, %edx
	movl	$53, %r8d
	subl	%ecx, %r8d
	subl	%ecx, %r8d
	cmpl	$27, %ecx
	cmovgel	%r10d, %r8d
	movl	%r8d, %ecx
	shrl	$8, %ecx
	xorl	%r9d, %r9d
	cmpl	$256, %r8d                      # imm = 0x100
	setge	%r9b
	cmovll	%r8d, %ecx
	shll	$4, %r9d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r9d, %ecx
	shlq	%cl, %rdi
	orq	%rdi, %r8
	movq	%r8, 24(%rbx)
	subl	%ecx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_33
# %bb.32:                               # %if.then.i.i337
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %r8
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_33:                               # %bs_write_se.exit
	movl	40(%r14), %ecx
	leal	-52(%rcx,%rcx), %r9d
	subl	%ecx, %edx
	subl	%ecx, %edx
	cmpl	$27, %ecx
	cmovgel	%r9d, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	shlq	%cl, %r8
	orq	%r8, %rdx
	movq	%rdx, 24(%rbx)
	subl	%ecx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_35
# %bb.34:                               # %if.then.i.i366
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdx
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_35:                               # %bs_write_se.exit374
	movl	44(%r14), %ecx
	leal	(%rcx,%rcx), %r8d
	movl	$1, %edi
	subl	%r8d, %edi
	testl	%ecx, %ecx
	cmovgl	%r8d, %edi
	movl	%edi, %ecx
	shrl	$8, %ecx
	xorl	%r8d, %r8d
	cmpl	$256, %edi                      # imm = 0x100
	setge	%r8b
	cmovll	%edi, %ecx
	shll	$4, %r8d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r8d, %ecx
	shlq	%cl, %rdx
	orq	%rdx, %rdi
	movq	%rdi, 24(%rbx)
	subl	%ecx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_37
# %bb.36:                               # %if.then.i.i396
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_37:                               # %bs_write_se.exit404
	movl	48(%r14), %ecx
	addq	%rdi, %rdi
	orq	%rcx, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %eax
	jg	.LBB3_39
# %bb.38:                               # %if.then.i412
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_39:                               # %bs_write.exit420
	movl	52(%r14), %eax
	addq	%rdi, %rdi
	orq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rcx), %edx
	movl	%edx, 32(%rbx)
	cmpl	$33, %ecx
	jg	.LBB3_41
# %bb.40:                               # %if.then.i428
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_41:                               # %bs_write.exit436
	movl	56(%r14), %eax
	addq	%rdi, %rdi
	orq	%rax, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rdx), %eax
	movl	%eax, 32(%rbx)
	cmpl	$33, %edx
	jg	.LBB3_43
# %bb.42:                               # %if.then.i444
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rsi
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_43:                               # %bs_write.exit452
	movl	60(%r14), %ecx
	testq	%rcx, %rcx
	jne	.LBB3_45
# %bb.44:                               # %lor.lhs.false
	cmpl	$0, 64(%r14)
	je	.LBB3_58
.LBB3_45:                               # %if.then
	movq	24(%rbx), %rdx
	addq	%rdx, %rdx
	orq	%rcx, %rdx
	movq	%rdx, 24(%rbx)
	leal	-1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %eax
	jg	.LBB3_47
# %bb.46:                               # %if.then.i460
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	movq	8(%rbx), %rsi
	movq	24(%rbx), %rdx
	addq	$4, %rsi
	movq	%rsi, 8(%rbx)
.LBB3_47:                               # %bs_write.exit468
	xorl	%eax, %eax
	cmpl	$0, 64(%r14)
	setne	%al
	leaq	(%rax,%rdx,2), %rdx
	movq	%rdx, 24(%rbx)
	leal	-1(%rcx), %eax
	movl	%eax, 32(%rbx)
	cmpl	$33, %ecx
	jg	.LBB3_49
# %bb.48:                               # %if.then.i476
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB3_49:                               # %bs_write.exit484
	cmpl	$0, 64(%r14)
	je	.LBB3_56
# %bb.50:                               # %if.then11
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	scaling_list_write
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	callq	scaling_list_write
	movq	24(%rbx), %rax
	addq	%rax, %rax
	movq	%rax, 24(%rbx)
	movl	32(%rbx), %edx
	leal	-1(%rdx), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %edx
	jg	.LBB3_52
# %bb.51:                               # %if.then.i491
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	bswapq	%rax
	movq	8(%rbx), %rcx
	movl	%eax, (%rcx)
	addl	$32, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB3_52:                               # %bs_write.exit499
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %edx
	callq	scaling_list_write
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	scaling_list_write
	movq	24(%rbx), %rdx
	addq	%rdx, %rdx
	movq	%rdx, 24(%rbx)
	movl	32(%rbx), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 32(%rbx)
	cmpl	$33, %ecx
	jg	.LBB3_54
# %bb.53:                               # %if.then.i506
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	8(%rbx), %rax
	movl	%edx, (%rax)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB3_54:                               # %bs_write.exit514
	cmpl	$0, 60(%r14)
	je	.LBB3_56
# %bb.55:                               # %if.then14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$4, %edx
	callq	scaling_list_write
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$5, %edx
	callq	scaling_list_write
	movl	32(%rbx), %eax
.LBB3_56:                               # %if.end15
	movl	44(%r14), %ecx
	leal	(%rcx,%rcx), %esi
	movl	$1, %edx
	subl	%esi, %edx
	testl	%ecx, %ecx
	cmovgl	%esi, %edx
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%esi, %esi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%sil
	cmovll	%edx, %ecx
	shll	$4, %esi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%esi, %ecx
	movq	24(%rbx), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 24(%rbx)
	subl	%ecx, %eax
	movl	%eax, 32(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_58
# %bb.57:                               # %if.then.i.i536
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	8(%rbx), %rax
	movl	%edx, (%rax)
	movl	32(%rbx), %eax
	addl	$32, %eax
	addq	$4, 8(%rbx)
.LBB3_58:                               # %if.end17
	movq	24(%rbx), %rcx
	leaq	1(,%rcx,2), %rsi
	movq	%rsi, 24(%rbx)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB3_60
# %bb.59:                               # %bs_write1.exit.thread.i
	bswapl	%esi
	movq	8(%rbx), %rax
	movl	%esi, (%rax)
	movq	8(%rbx), %rdx
	addq	$4, %rdx
	movq	%rdx, 8(%rbx)
	movl	$64, 32(%rbx)
	movl	$64, %eax
	jmp	.LBB3_62
.LBB3_60:                               # %bs_write1.exit.i
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rsi
	movq	%rsi, 24(%rbx)
	andl	$-8, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rdx
	cmpl	$32, %eax
	jg	.LBB3_62
# %bb.61:                               # %if.then.i8.i
	bswapq	%rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	%esi, (%rdx)
	movl	32(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 32(%rbx)
	movq	8(%rbx), %rdx
	addq	$4, %rdx
	movq	%rdx, 8(%rbx)
.LBB3_62:                               # %bs_rbsp_trailing.exit
	movl	24(%rbx), %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	bswapl	%esi
	movl	%esi, (%rdx)
	movl	32(%rbx), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rbx)
	movl	$64, 32(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	x264_pps_write, .Lfunc_end3-x264_pps_write
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function scaling_list_write
	.type	scaling_list_write,@function
scaling_list_write:                     # @scaling_list_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$4, %edx
	movl	$16, %eax
	movl	$64, %ebp
	cmovll	%eax, %ebp
	movl	$x264_zigzag_scan4, %eax
	movl	$x264_zigzag_scan8, %r12d
	cmovlq	%rax, %r12
	movq	%rdi, %rbx
	movl	%edx, %r13d
	movq	72(%rsi,%r13,8), %r14
	cmpl	$2, %edx
	je	.LBB4_1
# %bb.2:                                # %entry
	cmpl	$3, %edx
	jne	.LBB4_4
# %bb.3:                                # %cond.true7
	addq	$80, %rsi
	jmp	.LBB4_5
.LBB4_1:
	addq	$72, %rsi
	jmp	.LBB4_5
.LBB4_4:                                # %cond.false10
	leaq	x264_cqm_jvt(,%r13,8), %rsi
.LBB4_5:                                # %cond.end14
	movq	(%rsi), %rsi
	movl	%ebp, %r15d
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	bcmp@PLT
	testl	%eax, %eax
	je	.LBB4_6
# %bb.7:                                # %if.else
	movq	x264_cqm_jvt(,%r13,8), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	bcmp@PLT
	movl	32(%rbx), %ecx
	leal	-1(%rcx), %edx
	movq	24(%rbx), %rsi
	leaq	1(,%rsi,2), %rsi
	movq	%rsi, 24(%rbx)
	movl	%edx, 32(%rbx)
	testl	%eax, %eax
	je	.LBB4_8
# %bb.11:                               # %if.else22
	cmpl	$33, %ecx
	jg	.LBB4_13
# %bb.12:                               # %if.then.i160
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rax
	movl	%esi, (%rax)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB4_13:                               # %bs_write.exit168
	movl	%ebp, %eax
	.p2align	4, 0x90
.LBB4_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	movzbl	-1(%r12,%rcx), %esi
	movzbl	(%r14,%rsi), %esi
	movzbl	-2(%r12,%rcx), %ecx
	cmpb	(%r14,%rcx), %sil
	jne	.LBB4_17
# %bb.15:                               # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=1
	leal	-1(%rax), %ecx
	cmpl	$2, %eax
	movl	%ecx, %eax
	jg	.LBB4_14
# %bb.16:
	movl	$1, %eax
	jmp	.LBB4_18
.LBB4_6:                                # %if.then
	movq	24(%rbx), %rsi
	addq	%rsi, %rsi
	movq	%rsi, 24(%rbx)
	movl	32(%rbx), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$34, %eax
	jl	.LBB4_30
	jmp	.LBB4_31
.LBB4_8:                                # %if.then21
	cmpl	$33, %ecx
	jg	.LBB4_10
# %bb.9:                                # %if.then.i145
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rax
	movl	%esi, (%rax)
	movl	32(%rbx), %edx
	addl	$32, %edx
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rsi
.LBB4_10:                               # %bs_write.exit153
	shlq	$9, %rsi
	orq	$17, %rsi
	movq	%rsi, 24(%rbx)
	leal	-9(%rdx), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$42, %edx
	jl	.LBB4_30
	jmp	.LBB4_31
.LBB4_17:                               # %for.end
	cmpl	%ebp, %eax
	jge	.LBB4_21
.LBB4_18:                               # %land.lhs.true
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%eax, %esi
	movzbl	(%r12,%rsi), %esi
	xorl	%edi, %edi
	subb	(%r14,%rsi), %dil
	movsbl	%dil, %edi
	leal	(%rdi,%rdi), %r8d
	movl	$1, %esi
	subl	%r8d, %esi
	testb	%dil, %dil
	cmovgl	%r8d, %esi
	movl	$17, %edi
	cmpl	$255, %esi
	jg	.LBB4_20
# %bb.19:                               # %if.then3.i
	movslq	%esi, %rsi
	movzbl	x264_ue_size_tab(%rsi), %edi
.LBB4_20:                               # %bs_size_se.exit
	cmpl	%edi, %ecx
	cmovll	%ebp, %eax
.LBB4_21:                               # %cond.end74.peel
	movl	%eax, %eax
	movzbl	(%r12), %ecx
	movzbl	(%r14,%rcx), %ecx
	addb	$-8, %cl
	movsbl	%cl, %ecx
	leal	(%rcx,%rcx), %edi
	movl	$1, %esi
	subl	%edi, %esi
	testb	%cl, %cl
	cmovgl	%edi, %esi
	movl	%esi, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %esi                      # imm = 0x100
	setge	%dil
	cmovll	%esi, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	24(%rbx), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rsi
	movq	%rsi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB4_23
# %bb.22:                               # %if.then.i.i186.peel
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB4_23:                               # %bs_write_se.exit194.peel
	cmpl	$1, %eax
	jne	.LBB4_24
.LBB4_28:                               # %for.cond.cleanup
	cmpl	%ebp, %eax
	jge	.LBB4_31
# %bb.29:                               # %if.then83
	cltq
	movzbl	(%r12,%rax), %eax
	xorl	%ecx, %ecx
	subb	(%r14,%rax), %cl
	movsbl	%cl, %eax
	leal	(%rax,%rax), %ecx
	movl	$1, %esi
	subl	%ecx, %esi
	testb	%al, %al
	cmovgl	%ecx, %esi
	movl	%esi, %eax
	shrl	$8, %eax
	xorl	%edi, %edi
	cmpl	$256, %esi                      # imm = 0x100
	setge	%dil
	cmovll	%esi, %eax
	shll	$4, %edi
	cltq
	movzbl	x264_ue_size_tab(%rax), %ecx
	addl	%edi, %ecx
	movq	24(%rbx), %rax
	shlq	%cl, %rax
	orq	%rax, %rsi
	movq	%rsi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	movl	%edx, %ecx
	cmpl	$32, %edx
	jg	.LBB4_31
.LBB4_30:                               # %if.end94.sink.split
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rax
	movl	%esi, (%rax)
	addl	$32, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB4_31:                               # %if.end94
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_24:                               # %cond.end74.preheader
	.cfi_def_cfa_offset 64
	movl	$1, %esi
	jmp	.LBB4_25
	.p2align	4, 0x90
.LBB4_27:                               # %bs_write_se.exit194
                                        #   in Loop: Header=BB4_25 Depth=1
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB4_28
.LBB4_25:                               # %cond.end74
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r12,%rsi), %ecx
	movzbl	(%r14,%rcx), %ecx
	movzbl	-1(%r12,%rsi), %edi
	subb	(%r14,%rdi), %cl
	movsbl	%cl, %ecx
	leal	(%rcx,%rcx), %r8d
	movl	$1, %edi
	subl	%r8d, %edi
	testb	%cl, %cl
	cmovgl	%r8d, %edi
	movl	%edi, %ecx
	shrl	$8, %ecx
	xorl	%r8d, %r8d
	cmpl	$256, %edi                      # imm = 0x100
	setge	%r8b
	cmovll	%edi, %ecx
	shll	$4, %r8d
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%r8d, %ecx
	movq	24(%rbx), %r8
	shlq	%cl, %r8
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB4_27
# %bb.26:                               # %if.then.i.i186
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
	jmp	.LBB4_27
.Lfunc_end4:
	.size	scaling_list_write, .Lfunc_end4-scaling_list_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_sei_recovery_point_write   # -- Begin function x264_sei_recovery_point_write
	.p2align	4, 0x90
	.type	x264_sei_recovery_point_write,@function
x264_sei_recovery_point_write:          # @x264_sei_recovery_point_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	8(%rsi), %rcx
	movl	%ecx, %eax
	andl	$3, %eax
	je	.LBB5_2
# %bb.1:                                # %if.then.i
	movl	%ecx, %edx
	andl	$3, %edx
	andq	$-4, %rcx
	movq	%rcx, 8(%rbx)
	shll	$3, %edx
	movl	$64, %esi
	subl	%edx, %esi
	movl	%esi, 32(%rbx)
	movl	(%rcx), %edx
	bswapl	%edx
	leal	32(,%rax,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movq	%rdx, 24(%rbx)
.LBB5_2:                                # %bs_realign.exit
	movq	%rbx, %rdi
	movl	$6, %esi
	callq	x264_sei_write_header
	incl	%ebp
	movl	%ebp, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %ebp                    # imm = 0x10000
	setge	%dl
	cmovll	%ebp, %ecx
	shll	$5, %edx
	movl	%ecx, %esi
	shrl	$8, %esi
	leal	16(%rdx), %edi
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %esi
	movslq	%esi, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%dil, %esi
	cmovll	%edx, %esi
	movzbl	%sil, %esi
	addl	%ecx, %esi
	shrl	%esi
	movq	24(%rbx), %rdi
	movl	%esi, %ecx
	shlq	%cl, %rdi
	movq	%rdi, 24(%rbx)
	movl	32(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB5_4
# %bb.3:                                # %if.then.i.i
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rdi
.LBB5_4:                                # %bs_write.exit.i
	incl	%esi
	movl	%esi, %ecx
	shlq	%cl, %rdi
	movl	%ebp, %r8d
	orq	%rdi, %r8
	movq	%r8, 24(%rbx)
	subl	%esi, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB5_6
# %bb.5:                                # %if.then.i25.i
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	8(%rbx), %rcx
	movl	%r8d, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	addq	$4, 8(%rbx)
	movq	24(%rbx), %r8
.LBB5_6:                                # %bs_write_ue_big.exit
	leaq	1(,%r8,2), %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rdx), %esi
	movl	%esi, 32(%rbx)
	cmpl	$33, %edx
	jg	.LBB5_8
# %bb.7:                                # %if.then.i13
	movl	%esi, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	movl	32(%rbx), %esi
	addl	$32, %esi
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rdi
.LBB5_8:                                # %bs_write.exit
	addq	%rdi, %rdi
	movq	%rdi, 24(%rbx)
	leal	-1(%rsi), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$33, %esi
	jg	.LBB5_10
# %bb.9:                                # %if.then.i23
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rdi
.LBB5_10:                               # %bs_write.exit31
	shlq	$2, %rdi
	movq	%rdi, 24(%rbx)
	leal	-2(%rcx), %edx
	movl	%edx, 32(%rbx)
	cmpl	$34, %ecx
	jg	.LBB5_12
# %bb.11:                               # %if.then.i38
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	addl	$32, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB5_12:                               # %bs_write.exit46
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	x264_sei_write
	movl	24(%rbx), %eax
	movzbl	32(%rbx), %ecx
	shll	%cl, %eax
	bswapl	%eax
	movq	8(%rbx), %rcx
	movl	%eax, (%rcx)
	movl	32(%rbx), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rbx)
	movl	$64, 32(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	x264_sei_recovery_point_write, .Lfunc_end5-x264_sei_recovery_point_write
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_sei_write_header
	.type	x264_sei_write_header,@function
x264_sei_write_header:                  # @x264_sei_write_header
	.cfi_startproc
# %bb.0:                                # %entry
	movq	24(%rdi), %rcx
	shlq	$8, %rcx
	movl	%esi, %eax
	orq	%rcx, %rax
	movq	%rax, 24(%rdi)
	movl	32(%rdi), %edx
	leal	-8(%rdx), %ecx
	movl	%ecx, 32(%rdi)
	cmpl	$41, %edx
	jge	.LBB6_1
# %bb.2:                                # %if.then.i
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	bswapq	%rax
	movq	8(%rdi), %rcx
	movl	%eax, (%rcx)
	movl	32(%rdi), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rdi)
	movq	8(%rdi), %rdx
	movq	24(%rdi), %rax
	addq	$4, %rdx
	movq	%rdx, 8(%rdi)
	jmp	.LBB6_3
.LBB6_1:                                # %entry.bs_write.exit_crit_edge
	movq	8(%rdi), %rdx
.LBB6_3:                                # %bs_write.exit
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	bswapl	%eax
	movl	%eax, (%rdx)
	movl	32(%rdi), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rdi), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rdi)
	movl	%eax, %ecx
	andl	$3, %ecx
	je	.LBB6_4
# %bb.5:                                # %bs_realign.exit
	movl	%eax, %r8d
	andl	$3, %r8d
	movq	%rax, %rsi
	andq	$-4, %rsi
	movq	%rsi, 8(%rdi)
	leal	(,%r8,8), %edx
	movl	$64, %r9d
	subl	%edx, %r9d
	movl	%r9d, 32(%rdi)
	movl	(%rsi), %r9d
	bswapl	%r9d
	leal	32(,%rcx,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r9
	shlq	$8, %r9
	movq	%r9, 24(%rdi)
	xorl	$56, %edx
	movl	%edx, 32(%rdi)
	cmpq	$3, %r8
	jne	.LBB6_7
# %bb.6:                                # %if.then.i25
	bswapq	%r9
	movl	%edx, %ecx
	shrq	%cl, %r9
	movl	%r9d, (%rsi)
	addl	$32, 32(%rdi)
	addq	$4, 8(%rdi)
.LBB6_7:                                # %bs_write.exit33
	retq
.LBB6_4:                                # %bs_realign.exit.thread
	shlq	$8, 24(%rdi)
	movl	$56, 32(%rdi)
	retq
.Lfunc_end6:
	.size	x264_sei_write_header, .Lfunc_end6-x264_sei_write_header
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_sei_write
	.type	x264_sei_write,@function
x264_sei_write:                         # @x264_sei_write
	.cfi_startproc
# %bb.0:                                # %entry
	movl	32(%rdi), %eax
	movl	%eax, %edx
	andl	$7, %edx
	je	.LBB7_3
# %bb.1:                                # %if.then.i
	leal	-1(%rdx), %ecx
	movl	$1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	movq	24(%rdi), %r9
	movl	%edx, %ecx
	shlq	%cl, %r9
	orq	%r9, %r8
	movq	%r8, 24(%rdi)
	andl	$-8, %eax
	movl	%eax, 32(%rdi)
	cmpl	$32, %eax
	jg	.LBB7_3
# %bb.2:                                # %if.then.i.i
	bswapq	%r8
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	8(%rdi), %rax
	movl	%r8d, (%rax)
	movl	32(%rdi), %eax
	addl	$32, %eax
	movl	%eax, 32(%rdi)
	addq	$4, 8(%rdi)
.LBB7_3:                                # %bs_align_10.exit
	movl	24(%rdi), %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	bswapl	%edx
	movq	8(%rdi), %rax
	movl	%edx, (%rax)
	movl	32(%rdi), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rdi), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rdi)
	movl	$64, 32(%rdi)
	movl	%esi, %ecx
	notl	%ecx
	addl	%ecx, %eax
	movb	%al, (%rsi)
	movq	8(%rdi), %rdx
	movl	%edx, %ecx
	andl	$3, %ecx
	je	.LBB7_4
# %bb.5:                                # %if.then.i12
	movl	%edx, %esi
	andl	$3, %esi
	andq	$-4, %rdx
	movq	%rdx, 8(%rdi)
	shll	$3, %esi
	movl	$64, %eax
	subl	%esi, %eax
	movl	%eax, 32(%rdi)
	movl	(%rdx), %esi
	bswapl	%esi
	leal	32(,%rcx,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rsi
	jmp	.LBB7_6
.LBB7_4:                                # %bs_align_10.exit.bs_realign.exit_crit_edge
	movq	24(%rdi), %rsi
	movl	32(%rdi), %eax
.LBB7_6:                                # %bs_realign.exit
	leaq	1(,%rsi,2), %rsi
	movq	%rsi, 24(%rdi)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB7_8
# %bb.7:                                # %bs_write1.exit.thread.i
	bswapl	%esi
	movl	%esi, (%rdx)
	addq	$4, 8(%rdi)
	movl	$64, 32(%rdi)
	retq
.LBB7_8:                                # %bs_write1.exit.i
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rsi
	movq	%rsi, 24(%rdi)
	andl	$-8, %eax
	movl	%eax, 32(%rdi)
	cmpl	$32, %eax
	jg	.LBB7_10
# %bb.9:                                # %if.then.i8.i
	bswapq	%rsi
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movl	%esi, (%rdx)
	addl	$32, 32(%rdi)
	addq	$4, 8(%rdi)
.LBB7_10:                               # %bs_rbsp_trailing.exit
	retq
.Lfunc_end7:
	.size	x264_sei_write, .Lfunc_end7-x264_sei_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_sei_version_write          # -- Begin function x264_sei_version_write
	.p2align	4, 0x90
	.type	x264_sei_version_write,@function
x264_sei_version_write:                 # @x264_sei_version_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	xorl	%esi, %esi
	callq	x264_param2string@PLT
	testq	%rax, %rax
	je	.LBB8_1
# %bb.2:                                # %do.body
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	strlen@PLT
	leal	200(%rax), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB8_3
# %bb.4:                                # %do.end
	movq	%rax, %r15
	movl	$.L.str, %esi
	movl	$.L.str.1, %ecx
	movq	%rax, %rdi
	movl	$96, %edx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	sprintf@PLT
	movq	%r15, %rdi
	callq	strlen@PLT
	movq	8(%rbx), %rdi
	movl	%edi, %ecx
	andl	$3, %ecx
	je	.LBB8_5
# %bb.6:                                # %if.then.i
	movl	%edi, %edx
	andl	$3, %edx
	andq	$-4, %rdi
	movq	%rdi, 8(%rbx)
	shll	$3, %edx
	movl	$64, %esi
	subl	%edx, %esi
	movl	%esi, 32(%rbx)
	movl	(%rdi), %edx
	bswapl	%edx
	leal	32(,%rcx,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	jmp	.LBB8_7
.LBB8_1:
	movl	$-1, %ebx
	jmp	.LBB8_30
.LBB8_3:
	movl	$-1, %ebx
	movq	%r14, %r15
	jmp	.LBB8_29
.LBB8_5:                                # %do.end.bs_realign.exit_crit_edge
	movq	24(%rbx), %rdx
	movl	32(%rbx), %esi
.LBB8_7:                                # %bs_realign.exit
	shlq	$8, %rdx
	orq	$5, %rdx
	movq	%rdx, 24(%rbx)
	leal	-8(%rsi), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$40, %esi
	jg	.LBB8_9
# %bb.8:                                # %if.then.i63
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rdi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
.LBB8_9:                                # %bs_write.exit
	leal	17(%rax), %edx
	movl	%eax, %r8d
	addl	$-238, %r8d
	js	.LBB8_10
# %bb.11:                               # %for.body.preheader
	movl	%r8d, %r9d
	movl	$2155905153, %esi               # imm = 0x80808081
	imulq	%r9, %rsi
	shrq	$39, %rsi
	movl	%esi, %r9d
	shll	$8, %r9d
	subl	%r9d, %esi
	xorl	%r9d, %r9d
	jmp	.LBB8_12
	.p2align	4, 0x90
.LBB8_14:                               # %bs_write.exit80
                                        #   in Loop: Header=BB8_12 Depth=1
	addl	$255, %r9d
	cmpl	%r8d, %r9d
	jg	.LBB8_15
.LBB8_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r11d
	movq	24(%rbx), %r10
	shlq	$8, %r10
	orq	$255, %r10
	movq	%r10, 24(%rbx)
	leal	-8(%r11), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$40, %r11d
	jg	.LBB8_14
# %bb.13:                               # %if.then.i72
                                        #   in Loop: Header=BB8_12 Depth=1
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %r10
	bswapq	%r10
	movl	%r10d, (%rdi)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	jmp	.LBB8_14
.LBB8_15:                               # %for.end.loopexit
	addl	$-255, %esi
	jmp	.LBB8_16
.LBB8_10:
	xorl	%esi, %esi
.LBB8_16:                               # %for.end
	addl	%edx, %esi
	movq	24(%rbx), %rdx
	shlq	$8, %rdx
	orq	%rdx, %rsi
	movq	%rsi, 24(%rbx)
	leal	-8(%rcx), %edx
	movl	%edx, 32(%rbx)
	cmpl	$40, %ecx
	jg	.LBB8_18
# %bb.17:                               # %if.then.i88
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movl	%esi, (%rdi)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
.LBB8_18:                               # %for.body17.preheader
	movq	$-16, %rsi
	jmp	.LBB8_19
	.p2align	4, 0x90
.LBB8_21:                               # %bs_write.exit112
                                        #   in Loop: Header=BB8_19 Depth=1
	incq	%rsi
	je	.LBB8_22
.LBB8_19:                               # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	movzbl	.L__const.x264_sei_version_write.uuid+16(%rsi), %edx
	movq	24(%rbx), %r8
	shlq	$8, %r8
	orq	%rdx, %r8
	movq	%r8, 24(%rbx)
	leal	-8(%rcx), %edx
	movl	%edx, 32(%rbx)
	cmpl	$40, %ecx
	jg	.LBB8_21
# %bb.20:                               # %if.then.i104
                                        #   in Loop: Header=BB8_19 Depth=1
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rdi)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	jmp	.LBB8_21
.LBB8_22:                               # %for.cond22.preheader
	cmpl	$2147483646, %eax               # imm = 0x7FFFFFFE
	ja	.LBB8_23
# %bb.31:                               # %for.body27.preheader
	incl	%eax
	xorl	%r8d, %r8d
	jmp	.LBB8_32
	.p2align	4, 0x90
.LBB8_34:                               # %bs_write.exit137
                                        #   in Loop: Header=BB8_32 Depth=1
	incq	%r8
	movl	%esi, %edx
	cmpq	%r8, %rax
	je	.LBB8_24
.LBB8_32:                               # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%r8), %rcx
	movq	24(%rbx), %rsi
	shlq	$8, %rsi
	movl	%ecx, %r9d
	orq	%rsi, %r9
	movq	%r9, 24(%rbx)
	leal	-8(%rdx), %esi
	movl	%esi, 32(%rbx)
	cmpl	$40, %edx
	jg	.LBB8_34
# %bb.33:                               # %if.then.i129
                                        #   in Loop: Header=BB8_32 Depth=1
	movl	%esi, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movl	%r9d, (%rdi)
	movl	32(%rbx), %esi
	addl	$32, %esi
	movl	%esi, 32(%rbx)
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	jmp	.LBB8_34
.LBB8_23:
	movl	%edx, %esi
.LBB8_24:                               # %for.cond.cleanup26
	movq	24(%rbx), %rax
	leaq	1(,%rax,2), %rax
	movq	%rax, 24(%rbx)
	decl	%esi
	cmpl	$32, %esi
	jne	.LBB8_26
# %bb.25:                               # %bs_write1.exit.thread.i
	bswapl	%eax
	movl	%eax, (%rdi)
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
	movl	$64, 32(%rbx)
	movl	$64, %esi
	jmp	.LBB8_28
.LBB8_26:                               # %bs_write1.exit.i
	movl	%esi, %ecx
	andb	$7, %cl
	shlq	%cl, %rax
	movq	%rax, 24(%rbx)
	andl	$-8, %esi
	movl	%esi, 32(%rbx)
	cmpl	$32, %esi
	jg	.LBB8_28
# %bb.27:                               # %if.then.i8.i
	bswapq	%rax
	movl	%esi, %ecx
	shrq	%cl, %rax
	movl	%eax, (%rdi)
	movl	32(%rbx), %esi
	addl	$32, %esi
	movl	%esi, 32(%rbx)
	movq	8(%rbx), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rbx)
.LBB8_28:                               # %bs_rbsp_trailing.exit
	movl	24(%rbx), %eax
	movl	%esi, %ecx
	shll	%cl, %eax
	bswapl	%eax
	movl	%eax, (%rdi)
	movl	32(%rbx), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rbx)
	movl	$64, 32(%rbx)
	movq	%r14, %rdi
	callq	x264_free@PLT
	xorl	%ebx, %ebx
.LBB8_29:                               # %cleanup.sink.split
	movq	%r15, %rdi
	callq	x264_free@PLT
.LBB8_30:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	x264_sei_version_write, .Lfunc_end8-x264_sei_version_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_sei_buffering_period_write # -- Begin function x264_sei_buffering_period_write
	.p2align	4, 0x90
	.type	x264_sei_buffering_period_write,@function
x264_sei_buffering_period_write:        # @x264_sei_buffering_period_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	3200(%rdi), %r15
	movq	8(%rsi), %rcx
	movl	%ecx, %eax
	andl	$3, %eax
	je	.LBB9_2
# %bb.1:                                # %if.then.i
	movl	%ecx, %edx
	andl	$3, %edx
	andq	$-4, %rcx
	movq	%rcx, 8(%rbx)
	shll	$3, %edx
	movl	$64, %esi
	subl	%edx, %esi
	movl	%esi, 32(%rbx)
	movl	(%rcx), %edx
	bswapl	%edx
	leal	32(,%rax,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movq	%rdx, 24(%rbx)
.LBB9_2:                                # %bs_realign.exit
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	x264_sei_write_header
	movl	(%r15), %edi
	incl	%edi
	movl	%edi, %ecx
	shrl	$16, %ecx
	xorl	%edx, %edx
	cmpl	$65536, %edi                    # imm = 0x10000
	setge	%dl
	cmovll	%edi, %ecx
	shll	$5, %edx
	movl	%ecx, %esi
	shrl	$8, %esi
	leal	16(%rdx), %r8d
	cmpl	$256, %ecx                      # imm = 0x100
	cmovll	%ecx, %esi
	movslq	%esi, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movzbl	%r8b, %esi
	cmovll	%edx, %esi
	movzbl	%sil, %esi
	addl	%ecx, %esi
	shrl	%esi
	movq	24(%rbx), %r8
	movl	%esi, %ecx
	shlq	%cl, %r8
	movq	%r8, 24(%rbx)
	movl	32(%rbx), %edx
	subl	%esi, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB9_4
# %bb.3:                                # %if.then.i.i
	movl	%edx, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	8(%rbx), %rcx
	movl	%r8d, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	addq	$4, 8(%rbx)
	movq	24(%rbx), %r8
.LBB9_4:                                # %bs_write.exit.i
	incl	%esi
	movl	%esi, %ecx
	shlq	%cl, %r8
	movl	%edi, %edi
	orq	%r8, %rdi
	movq	%rdi, 24(%rbx)
	subl	%esi, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB9_6
# %bb.5:                                # %if.then.i25.i
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	8(%rbx), %rcx
	movl	%edi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB9_6:                                # %bs_write_ue_big.exit
	cmpl	$0, 1204(%r15)
	je	.LBB9_11
# %bb.7:                                # %if.then
	movl	1244(%r15), %ecx
	movl	15024(%r14), %edi
	movq	24(%rbx), %rsi
	shlq	%cl, %rsi
	orq	%rdi, %rsi
	movq	%rsi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB9_9
# %bb.8:                                # %if.then.i24
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rsi
.LBB9_9:                                # %bs_write.exit
	movl	1244(%r15), %ecx
	movl	15028(%r14), %edi
	shlq	%cl, %rsi
	orq	%rdi, %rsi
	movq	%rsi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB9_11
# %bb.10:                               # %if.then.i36
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	addl	$32, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB9_11:                               # %if.end
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	x264_sei_write
	movl	24(%rbx), %eax
	movzbl	32(%rbx), %ecx
	shll	%cl, %eax
	bswapl	%eax
	movq	8(%rbx), %rcx
	movl	%eax, (%rcx)
	movl	32(%rbx), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rbx)
	movl	$64, 32(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	x264_sei_buffering_period_write, .Lfunc_end9-x264_sei_buffering_period_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_sei_pic_timing_write       # -- Begin function x264_sei_pic_timing_write
	.p2align	4, 0x90
	.type	x264_sei_pic_timing_write,@function
x264_sei_pic_timing_write:              # @x264_sei_pic_timing_write
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	3200(%rdi), %r15
	movq	8(%rsi), %rcx
	movl	%ecx, %eax
	andl	$3, %eax
	je	.LBB10_2
# %bb.1:                                # %if.then.i
	movl	%ecx, %edx
	andl	$3, %edx
	andq	$-4, %rcx
	movq	%rcx, 8(%rbx)
	shll	$3, %edx
	movl	$64, %esi
	subl	%edx, %esi
	movl	%esi, 32(%rbx)
	movl	(%rcx), %edx
	bswapl	%edx
	leal	32(,%rax,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movq	%rdx, 24(%rbx)
.LBB10_2:                               # %bs_realign.exit
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_sei_write_header
	cmpl	$0, 1204(%r15)
	jne	.LBB10_4
# %bb.3:                                # %lor.lhs.false
	cmpl	$0, 1208(%r15)
	je	.LBB10_8
.LBB10_4:                               # %if.then
	movl	1248(%r15), %ecx
	movq	24(%rbx), %rsi
	shlq	%cl, %rsi
	movq	14680(%r14), %rdx
	movl	40(%rdx), %edx
	orq	%rdx, %rsi
	movq	%rsi, 24(%rbx)
	movl	32(%rbx), %edx
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB10_6
# %bb.5:                                # %if.then.i36
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	movl	32(%rbx), %edx
	addl	$32, %edx
	movl	%edx, 32(%rbx)
	addq	$4, 8(%rbx)
	movq	24(%rbx), %rsi
.LBB10_6:                               # %bs_write.exit
	movl	1252(%r15), %ecx
	movq	14680(%r14), %rdi
	movl	44(%rdi), %edi
	shlq	%cl, %rsi
	orq	%rdi, %rsi
	movq	%rsi, 24(%rbx)
	subl	%ecx, %edx
	movl	%edx, 32(%rbx)
	cmpl	$32, %edx
	jg	.LBB10_8
# %bb.7:                                # %if.then.i47
	movl	%edx, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	addl	$32, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB10_8:                               # %if.end
	cmpl	$0, 1260(%r15)
	je	.LBB10_16
# %bb.9:                                # %if.then10
	movq	14680(%r14), %rcx
	movl	76(%rcx), %edx
	decl	%edx
	movq	24(%rbx), %rcx
	shlq	$4, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 24(%rbx)
	movl	32(%rbx), %esi
	leal	-4(%rsi), %ecx
	movl	%ecx, 32(%rbx)
	cmpl	$36, %esi
	jg	.LBB10_11
# %bb.10:                               # %if.then.i63
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	8(%rbx), %rcx
	movl	%edx, (%rcx)
	movl	32(%rbx), %ecx
	addl	$32, %ecx
	movl	%ecx, 32(%rbx)
	addq	$4, 8(%rbx)
.LBB10_11:                              # %bs_write.exit71
	movq	14680(%r14), %rdx
	cmpl	$0, 76(%rdx)
	je	.LBB10_16
# %bb.12:                               # %for.body.preheader
	xorl	%edx, %edx
	jmp	.LBB10_13
	.p2align	4, 0x90
.LBB10_15:                              # %bs_write1.exit
                                        #   in Loop: Header=BB10_13 Depth=1
	incl	%edx
	movq	14680(%r14), %rsi
	movslq	76(%rsi), %rsi
	movzbl	num_clock_ts(%rsi), %esi
	cmpl	%esi, %edx
	jae	.LBB10_16
.LBB10_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rbx), %rsi
	addq	%rsi, %rsi
	movq	%rsi, 24(%rbx)
	decl	%ecx
	movl	%ecx, 32(%rbx)
	cmpl	$32, %ecx
	jne	.LBB10_15
# %bb.14:                               # %if.then.i77
                                        #   in Loop: Header=BB10_13 Depth=1
	bswapl	%esi
	movq	8(%rbx), %rcx
	movl	%esi, (%rcx)
	addq	$4, 8(%rbx)
	movl	$64, 32(%rbx)
	movl	$64, %ecx
	jmp	.LBB10_15
.LBB10_16:                              # %if.end15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	x264_sei_write
	movl	24(%rbx), %eax
	movzbl	32(%rbx), %ecx
	shll	%cl, %eax
	bswapl	%eax
	movq	8(%rbx), %rcx
	movl	%eax, (%rcx)
	movl	32(%rbx), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rbx), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rbx)
	movl	$64, 32(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	x264_sei_pic_timing_write, .Lfunc_end10-x264_sei_pic_timing_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_filler_write               # -- Begin function x264_filler_write
	.p2align	4, 0x90
	.type	x264_filler_write,@function
x264_filler_write:                      # @x264_filler_write
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rsi), %rdi
	movl	%edi, %eax
	andl	$3, %eax
	je	.LBB11_2
# %bb.1:                                # %if.then.i
	movl	%edi, %ecx
	andl	$3, %ecx
	andq	$-4, %rdi
	movq	%rdi, 8(%rsi)
	shll	$3, %ecx
	movl	$64, %r8d
	subl	%ecx, %r8d
	movl	%r8d, 32(%rsi)
	movl	(%rdi), %r8d
	bswapl	%r8d
	leal	32(,%rax,8), %ecx
	negl	%ecx
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %r8
	movq	%r8, 24(%rsi)
.LBB11_2:                               # %bs_realign.exit
	testl	%edx, %edx
	jle	.LBB11_3
# %bb.9:                                # %for.body.lr.ph
	movl	32(%rsi), %ecx
	jmp	.LBB11_10
	.p2align	4, 0x90
.LBB11_12:                              # %bs_write.exit
                                        #   in Loop: Header=BB11_10 Depth=1
	movl	%eax, %ecx
	decl	%edx
	je	.LBB11_4
.LBB11_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsi), %r8
	shlq	$8, %r8
	orq	$255, %r8
	movq	%r8, 24(%rsi)
	leal	-8(%rcx), %eax
	movl	%eax, 32(%rsi)
	cmpl	$40, %ecx
	jg	.LBB11_12
# %bb.11:                               # %if.then.i16
                                        #   in Loop: Header=BB11_10 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rdi)
	movl	32(%rsi), %eax
	addl	$32, %eax
	movl	%eax, 32(%rsi)
	movq	8(%rsi), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rsi)
	jmp	.LBB11_12
.LBB11_3:                               # %bs_realign.exit.for.cond.cleanup_crit_edge
	movl	32(%rsi), %eax
.LBB11_4:                               # %for.cond.cleanup
	movq	24(%rsi), %rcx
	leaq	1(,%rcx,2), %rdx
	movq	%rdx, 24(%rsi)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB11_6
# %bb.5:                                # %bs_write1.exit.thread.i
	bswapl	%edx
	movl	%edx, (%rdi)
	movq	8(%rsi), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rsi)
	movl	$64, 32(%rsi)
	movl	$64, %eax
	jmp	.LBB11_8
.LBB11_6:                               # %bs_write1.exit.i
	movl	%eax, %ecx
	andb	$7, %cl
	shlq	%cl, %rdx
	movq	%rdx, 24(%rsi)
	andl	$-8, %eax
	movl	%eax, 32(%rsi)
	cmpl	$32, %eax
	jg	.LBB11_8
# %bb.7:                                # %if.then.i8.i
	bswapq	%rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movl	%edx, (%rdi)
	movl	32(%rsi), %eax
	addl	$32, %eax
	movl	%eax, 32(%rsi)
	movq	8(%rsi), %rdi
	addq	$4, %rdi
	movq	%rdi, 8(%rsi)
.LBB11_8:                               # %bs_rbsp_trailing.exit
	movl	24(%rsi), %edx
	movl	%eax, %ecx
	shll	%cl, %edx
	bswapl	%edx
	movl	%edx, (%rdi)
	movl	32(%rsi), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	8(%rsi), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, 8(%rsi)
	movl	$64, 32(%rsi)
	retq
.Lfunc_end11:
	.size	x264_filler_write, .Lfunc_end11-x264_filler_write
	.cfi_endproc
                                        # -- End function
	.globl	x264_validate_levels            # -- Begin function x264_validate_levels
	.p2align	4, 0x90
	.type	x264_validate_levels,@function
x264_validate_levels:                   # @x264_validate_levels
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	3200(%rdi), %rax
	movl	1084(%rax), %ecx
	movl	1088(%rax), %r8d
	movl	%r8d, %r12d
	imull	%ecx, %r12d
	movl	%r12d, %edx
	shll	$7, %edx
	leal	(%rdx,%rdx,2), %r10d
	xorl	%ebp, %ebp
	cmpl	$100, 4(%rax)
	sete	%bpl
	movl	32(%rdi), %edx
	addl	$-10, %edx
	cmpl	$41, %edx
	ja	.LBB12_9
# %bb.1:                                # %entry
	jmpq	*.LJTI12_0(,%rdx,8)
.LBB12_2:
	movl	$x264_levels, %r13d
	jmp	.LBB12_18
.LBB12_3:                               # %while.end.fold.split264
	movl	$x264_levels+676, %r13d
	jmp	.LBB12_18
.LBB12_4:                               # %while.end.fold.split261
	movl	$x264_levels+520, %r13d
	jmp	.LBB12_18
.LBB12_5:                               # %while.end.fold.split263
	movl	$x264_levels+624, %r13d
	jmp	.LBB12_18
.LBB12_6:                               # %while.end.fold.split253
	movl	$x264_levels+104, %r13d
	jmp	.LBB12_18
.LBB12_7:                               # %while.end.fold.split256
	movl	$x264_levels+260, %r13d
	jmp	.LBB12_18
.LBB12_8:                               # %while.end.fold.split262
	movl	$x264_levels+572, %r13d
	jmp	.LBB12_18
.LBB12_9:                               # %while.body.14
	movl	$x264_levels+780, %r13d
	jmp	.LBB12_18
.LBB12_10:                              # %while.end.fold.split
	movl	$x264_levels+52, %r13d
	jmp	.LBB12_18
.LBB12_11:                              # %while.end.fold.split257
	movl	$x264_levels+312, %r13d
	jmp	.LBB12_18
.LBB12_12:                              # %while.end.fold.split258
	movl	$x264_levels+364, %r13d
	jmp	.LBB12_18
.LBB12_13:                              # %while.end.fold.split265
	movl	$x264_levels+728, %r13d
	jmp	.LBB12_18
.LBB12_14:                              # %while.end.fold.split254
	movl	$x264_levels+156, %r13d
	jmp	.LBB12_18
.LBB12_15:                              # %while.end.fold.split255
	movl	$x264_levels+208, %r13d
	jmp	.LBB12_18
.LBB12_16:                              # %while.end.fold.split260
	movl	$x264_levels+468, %r13d
	jmp	.LBB12_18
.LBB12_17:                              # %while.end.fold.split259
	movl	$x264_levels+416, %r13d
.LBB12_18:                              # %while.end
	movl	1292(%rax), %r15d
	imull	%r10d, %r15d
	orl	$4, %ebp
	movl	8(%r13), %r9d
	cmpl	%r12d, %r9d
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	jge	.LBB12_21
.LBB12_19:                              # %if.then
	testl	%esi, %esi
	je	.LBB12_27
# %bb.20:                               # %if.then27
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	movq	%r13, %r14
	movl	%r12d, %r13d
	movl	%r10d, %r12d
	callq	x264_log@PLT
	movl	%r12d, %r10d
	movl	%r13d, %r12d
	movq	%r14, %r13
	movl	$1, %r14d
	movl	20(%rsp), %esi                  # 4-byte Reload
	jmp	.LBB12_23
.LBB12_21:                              # %lor.lhs.false
	leal	(,%r9,8), %eax
	movl	%ecx, %edx
	imull	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB12_19
# %bb.22:                               # %lor.lhs.false
	movl	%r8d, %edx
	imull	%r8d, %edx
	xorl	%r14d, %r14d
	cmpl	%edx, %eax
	jl	.LBB12_19
.LBB12_23:                              # %if.end33
	movl	12(%r13), %edi
	cmpl	%edi, %r15d
	jle	.LBB12_28
# %bb.24:                               # %if.then36
	testl	%esi, %esi
	je	.LBB12_27
# %bb.25:                               # %if.then38
	movq	3200(%rbx), %rax
	movl	1292(%rax), %ecx
	movl	%edi, %eax
	cltd
	idivl	%r10d
	movl	%edi, (%rsp)
	movl	$1, %r14d
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %r8d
	movl	%eax, %r9d
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
	jmp	.LBB12_28
.LBB12_27:
	movl	$1, %r14d
.LBB12_28:                              # %if.end46
	movl	524(%rbx), %ecx
	movl	16(%r13), %eax
	imull	%ebp, %eax
	leal	3(%rax), %r8d
	testl	%eax, %eax
	cmovnsl	%eax, %r8d
	sarl	$2, %r8d
	cmpl	%r8d, %ecx
	jle	.LBB12_31
# %bb.29:                               # %if.then51
	movl	$1, %r14d
	testl	%esi, %esi
	je	.LBB12_34
# %bb.30:                               # %if.then53
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
.LBB12_31:                              # %if.end61
	movl	528(%rbx), %ecx
	imull	20(%r13), %ebp
	leal	3(%rbp), %r8d
	testl	%ebp, %ebp
	cmovnsl	%ebp, %r8d
	sarl	$2, %r8d
	cmpl	%r8d, %ecx
	jle	.LBB12_34
# %bb.32:                               # %if.then67
	movl	$1, %r14d
	testl	%esi, %esi
	je	.LBB12_34
# %bb.33:                               # %if.then69
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
.LBB12_34:                              # %if.end77
	movl	420(%rbx), %ecx
	movl	24(%r13), %r8d
	cmpl	%r8d, %ecx
	jle	.LBB12_37
# %bb.35:                               # %if.then80
	testl	%esi, %esi
	je	.LBB12_43
# %bb.36:                               # %if.then82
	movl	$1, %r14d
	movl	$.L.str.6, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
.LBB12_37:                              # %if.end88
	movl	136(%rbx), %ecx
	xorl	%r15d, %r15d
	cmpl	$0, 48(%r13)
	sete	%r15b
	cmpl	%r15d, %ecx
	jle	.LBB12_40
# %bb.38:                               # %if.then92
	movl	$1, %r14d
	testl	%esi, %esi
	je	.LBB12_40
# %bb.39:                               # %if.then94
	movl	$.L.str.7, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
.LBB12_40:                              # %if.end102
	movl	680(%rbx), %ecx
	cmpl	%r15d, %ecx
	jle	.LBB12_44
.LBB12_41:                              # %if.then109
	movl	$1, %r14d
	testl	%esi, %esi
	je	.LBB12_44
# %bb.42:                               # %if.then111
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	20(%rsp), %esi                  # 4-byte Reload
	jmp	.LBB12_44
.LBB12_43:                              # %if.end88.thread
	xorl	%r15d, %r15d
	cmpl	$0, 48(%r13)
	sete	%r15b
	movl	$1, %r14d
	movl	680(%rbx), %ecx
	cmpl	%r15d, %ecx
	jg	.LBB12_41
.LBB12_44:                              # %if.end119
	movl	656(%rbx), %ecx
	testq	%rcx, %rcx
	je	.LBB12_50
# %bb.45:                               # %if.then122
	movslq	%r12d, %rdx
	movl	652(%rbx), %eax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB12_47
# %bb.46:
	cqto
	idivq	%rcx
	movslq	4(%r13), %r8
	cmpq	%r8, %rax
	jg	.LBB12_48
	jmp	.LBB12_50
.LBB12_47:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movslq	4(%r13), %r8
	cmpq	%r8, %rax
	jle	.LBB12_50
.LBB12_48:                              # %if.then133
	movl	$1, %r14d
	testl	%esi, %esi
	je	.LBB12_50
# %bb.49:                               # %if.then135
	movl	$.L.str.9, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%eax, %ecx
                                        # kill: def $r8d killed $r8d killed $r8
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB12_50:                              # %if.end149
	movl	%r14d, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	x264_validate_levels, .Lfunc_end12-x264_validate_levels
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI12_0:
	.quad	.LBB12_2
	.quad	.LBB12_10
	.quad	.LBB12_6
	.quad	.LBB12_14
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_15
	.quad	.LBB12_7
	.quad	.LBB12_11
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_12
	.quad	.LBB12_17
	.quad	.LBB12_16
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_4
	.quad	.LBB12_8
	.quad	.LBB12_5
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_9
	.quad	.LBB12_3
	.quad	.LBB12_13
                                        # -- End function
	.type	x264_cqm_flat16,@object         # @x264_cqm_flat16
	.p2align	4, 0x0
x264_cqm_flat16:
	.zero	64,16
	.size	x264_cqm_flat16, 64

	.type	x264_cqm_jvt,@object            # @x264_cqm_jvt
	.p2align	4, 0x0
x264_cqm_jvt:
	.quad	x264_cqm_jvt4i
	.quad	x264_cqm_jvt4p
	.quad	x264_cqm_jvt4i
	.quad	x264_cqm_jvt4p
	.quad	x264_cqm_jvt8i
	.quad	x264_cqm_jvt8p
	.size	x264_cqm_jvt, 48

	.type	.L__const.x264_sei_version_write.uuid,@object # @__const.x264_sei_version_write.uuid
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.L__const.x264_sei_version_write.uuid:
	.ascii	"\334E\351\275\346\331H\267\226,\330 \331#\356\357"
	.size	.L__const.x264_sei_version_write.uuid, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x264 - core %d%s - H.264/MPEG-4 AVC codec - Copyleft 2003-2010 - http://www.videolan.org/x264.html - options: %s"
	.size	.L.str, 113

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	num_clock_ts,@object            # @num_clock_ts
	.section	.rodata,"a",@progbits
num_clock_ts:
	.ascii	"\000\001\001\001\002\002\003\003\002\003"
	.size	num_clock_ts, 10

	.type	x264_levels,@object             # @x264_levels
	.globl	x264_levels
	.p2align	4, 0x0
x264_levels:
	.long	10                              # 0xa
	.long	1485                            # 0x5cd
	.long	99                              # 0x63
	.long	152064                          # 0x25200
	.long	64                              # 0x40
	.long	175                             # 0xaf
	.long	64                              # 0x40
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	11                              # 0xb
	.long	3000                            # 0xbb8
	.long	396                             # 0x18c
	.long	345600                          # 0x54600
	.long	192                             # 0xc0
	.long	500                             # 0x1f4
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	12                              # 0xc
	.long	6000                            # 0x1770
	.long	396                             # 0x18c
	.long	912384                          # 0xdec00
	.long	384                             # 0x180
	.long	1000                            # 0x3e8
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	13                              # 0xd
	.long	11880                           # 0x2e68
	.long	396                             # 0x18c
	.long	912384                          # 0xdec00
	.long	768                             # 0x300
	.long	2000                            # 0x7d0
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	20                              # 0x14
	.long	11880                           # 0x2e68
	.long	396                             # 0x18c
	.long	912384                          # 0xdec00
	.long	2000                            # 0x7d0
	.long	2000                            # 0x7d0
	.long	128                             # 0x80
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	21                              # 0x15
	.long	19800                           # 0x4d58
	.long	792                             # 0x318
	.long	1824768                         # 0x1bd800
	.long	4000                            # 0xfa0
	.long	4000                            # 0xfa0
	.long	256                             # 0x100
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	22                              # 0x16
	.long	20250                           # 0x4f1a
	.long	1620                            # 0x654
	.long	3110400                         # 0x2f7600
	.long	4000                            # 0xfa0
	.long	4000                            # 0xfa0
	.long	256                             # 0x100
	.long	64                              # 0x40
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	30                              # 0x1e
	.long	40500                           # 0x9e34
	.long	1620                            # 0x654
	.long	3110400                         # 0x2f7600
	.long	10000                           # 0x2710
	.long	10000                           # 0x2710
	.long	256                             # 0x100
	.long	32                              # 0x20
	.long	22                              # 0x16
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	31                              # 0x1f
	.long	108000                          # 0x1a5e0
	.long	3600                            # 0xe10
	.long	6912000                         # 0x697800
	.long	14000                           # 0x36b0
	.long	14000                           # 0x36b0
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	60                              # 0x3c
	.long	4                               # 0x4
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	32                              # 0x20
	.long	216000                          # 0x34bc0
	.long	5120                            # 0x1400
	.long	7864320                         # 0x780000
	.long	20000                           # 0x4e20
	.long	20000                           # 0x4e20
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	60                              # 0x3c
	.long	4                               # 0x4
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	40                              # 0x28
	.long	245760                          # 0x3c000
	.long	8192                            # 0x2000
	.long	12582912                        # 0xc00000
	.long	20000                           # 0x4e20
	.long	25000                           # 0x61a8
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	60                              # 0x3c
	.long	4                               # 0x4
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	41                              # 0x29
	.long	245760                          # 0x3c000
	.long	8192                            # 0x2000
	.long	12582912                        # 0xc00000
	.long	50000                           # 0xc350
	.long	62500                           # 0xf424
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	24                              # 0x18
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	42                              # 0x2a
	.long	522240                          # 0x7f800
	.long	8704                            # 0x2200
	.long	13369344                        # 0xcc0000
	.long	50000                           # 0xc350
	.long	62500                           # 0xf424
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	24                              # 0x18
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	50                              # 0x32
	.long	589824                          # 0x90000
	.long	22080                           # 0x5640
	.long	42393600                        # 0x286e000
	.long	135000                          # 0x20f58
	.long	135000                          # 0x20f58
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	24                              # 0x18
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	51                              # 0x33
	.long	983040                          # 0xf0000
	.long	36864                           # 0x9000
	.long	70778880                        # 0x4380000
	.long	240000                          # 0x3a980
	.long	240000                          # 0x3a980
	.long	512                             # 0x200
	.long	16                              # 0x10
	.long	24                              # 0x18
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.zero	52
	.size	x264_levels, 832

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"frame MB size (%dx%d) > level limit (%d)\n"
	.size	.L.str.2, 42

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"DPB size (%d frames, %d bytes) > level limit (%d frames, %d bytes)\n"
	.size	.L.str.3, 68

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"VBV bitrate (%d) > level limit (%d)\n"
	.size	.L.str.4, 37

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"VBV buffer (%d) > level limit (%d)\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MV range (%d) > level limit (%d)\n"
	.size	.L.str.6, 34

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"interlaced (%d) > level limit (%d)\n"
	.size	.L.str.7, 36

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"fake interlaced (%d) > level limit (%d)\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MB rate (%d) > level limit (%d)\n"
	.size	.L.str.9, 33

	.type	x264_ue_size_tab,@object        # @x264_ue_size_tab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_ue_size_tab:
	.ascii	"\001\001\003\003\005\005\005\005\007\007\007\007\007\007\007\007\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017"
	.size	x264_ue_size_tab, 256

	.type	x264_cqm_jvt4i,@object          # @x264_cqm_jvt4i
	.p2align	4, 0x0
x264_cqm_jvt4i:
	.ascii	"\006\r\024\034\r\024\034 \024\034 %\034 %*"
	.size	x264_cqm_jvt4i, 16

	.type	x264_cqm_jvt4p,@object          # @x264_cqm_jvt4p
	.p2align	4, 0x0
x264_cqm_jvt4p:
	.ascii	"\n\016\024\030\016\024\030\033\024\030\033\036\030\033\036\""
	.size	x264_cqm_jvt4p, 16

	.type	x264_cqm_jvt8i,@object          # @x264_cqm_jvt8i
	.p2align	4, 0x0
x264_cqm_jvt8i:
	.ascii	"\006\n\r\020\022\027\031\033\n\013\020\022\027\031\033\035\r\020\022\027\031\033\035\037\020\022\027\031\033\035\037!\022\027\031\033\035\037!$\027\031\033\035\037!$&\031\033\035\037!$&(\033\035\037!$&(*"
	.size	x264_cqm_jvt8i, 64

	.type	x264_cqm_jvt8p,@object          # @x264_cqm_jvt8p
	.p2align	4, 0x0
x264_cqm_jvt8p:
	.ascii	"\t\r\017\021\023\025\026\030\r\r\021\023\025\026\030\031\017\021\023\025\026\030\031\033\021\023\025\026\030\031\033\034\023\025\026\030\031\033\034\036\025\026\030\031\033\034\036 \026\030\031\033\034\036 !\030\031\033\034\036 !#"
	.size	x264_cqm_jvt8p, 64

	.type	x264_zigzag_scan4,@object       # @x264_zigzag_scan4
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
x264_zigzag_scan4:
	.ascii	"\000\004\001\002\005\b\f\t\006\003\007\n\r\016\013\017"
	.ascii	"\000\001\004\002\003\005\006\007\b\t\n\013\f\r\016\017"
	.size	x264_zigzag_scan4, 32

	.type	x264_zigzag_scan8,@object       # @x264_zigzag_scan8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_zigzag_scan8:
	.ascii	"\000\b\001\002\t\020\030\021\n\003\004\013\022\031 (!\032\023\f\005\006\r\024\033\")081*#\034\025\016\007\017\026\035$+29:3,%\036\027\037&-4;<5.'/6=>7?"
	.ascii	"\000\001\002\b\t\003\004\n\020\013\005\006\007\f\021\030\022\r\016\017\023\031 \032\024\025\026\027\033!(\"\034\035\036\037#)0*$%&'+12,-./3894567:;<=>?"
	.size	x264_zigzag_scan8, 128

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
