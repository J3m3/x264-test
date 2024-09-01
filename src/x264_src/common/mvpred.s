	.text
	.file	"mvpred.c"
	.globl	x264_mb_predict_mv              # -- Begin function x264_mb_predict_mv
	.p2align	4, 0x90
	.type	x264_mb_predict_mv,@function
x264_mb_predict_mv:                     # @x264_mb_predict_mv
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
	movslq	%edx, %r11
	movslq	x264_scan8(,%r11,4), %rax
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,4), %r10
	leaq	(%rdi,%r10,8), %r9
	addq	$25120, %r9                     # imm = 0x6220
	leaq	25200(%rdi), %rbx
	movq	%r10, %r14
	shlq	$5, %r14
	leaq	(%rdi,%r14), %r15
	addq	$25200, %r15                    # imm = 0x6270
	andl	$3, %r11d
	movl	%ecx, %esi
	andl	$1, %esi
	orl	$2, %esi
	cmpl	%esi, %r11d
	jae	.LBB0_2
# %bb.1:                                # %entry
	leaq	-8(%rax), %rsi
	addl	%ecx, %esi
	movslq	%esi, %rcx
	movzbl	(%rcx,%r9), %esi
	cmpb	$-2, %sil
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	leaq	25120(%rdi), %rsi
	leaq	-9(%rax), %rcx
	leaq	(%rsi,%r10,8), %rsi
	movzbl	-9(%rax,%rsi), %esi
.LBB0_3:                                # %if.end
	movzbl	(%rax,%r9), %r11d
	movzbl	-8(%rax,%r9), %r10d
	movzbl	-1(%rax,%r9), %r9d
	leaq	(%r15,%rax,4), %rax
	addq	$-4, %rax
	addq	%r14, %rbx
	leaq	(%rbx,%rcx,4), %rcx
	movl	17388(%rdi), %edi
	cmpl	$15, %edi
	je	.LBB0_8
# %bb.4:                                # %if.end
	cmpl	$14, %edi
	jne	.LBB0_10
# %bb.5:                                # %if.then85
	testl	%edx, %edx
	jne	.LBB0_9
# %bb.6:                                # %if.then88
	cmpb	%r11b, %r10b
	jne	.LBB0_10
	jmp	.LBB0_7
.LBB0_8:                                # %if.then103
	testl	%edx, %edx
	je	.LBB0_9
# %bb.12:                               # %if.else111
	cmpb	%r11b, %sil
	jne	.LBB0_10
	jmp	.LBB0_13
.LBB0_9:                                # %if.then106
	cmpb	%r11b, %r9b
	je	.LBB0_20
.LBB0_10:                               # %if.end118
	xorl	%edx, %edx
	cmpb	%r11b, %r9b
	sete	%dl
	xorl	%edi, %edi
	cmpb	%r11b, %r10b
	sete	%dil
	addl	%edx, %edi
	xorl	%edx, %edx
	cmpb	%r11b, %sil
	sete	%dl
	addl	%edi, %edx
	cmpl	$2, %edx
	jb	.LBB0_14
.LBB0_11:                               # %median
	movswl	(%rax), %edx
	movswl	-28(%rax), %esi
	movswl	(%rcx), %edi
	movl	%edx, %r9d
	subl	%esi, %r9d
	cmovlel	%esi, %edx
	movl	%r9d, %r10d
	sarl	$31, %r10d
	andl	%r9d, %r10d
	addl	%esi, %r10d
	cmpl	%edi, %r10d
	cmovlel	%edi, %r10d
	subl	%r10d, %edx
	movl	%edx, %esi
	sarl	$31, %esi
	andl	%edx, %esi
	addl	%r10d, %esi
	movw	%si, (%r8)
	movswl	2(%rax), %edx
	movswl	-26(%rax), %eax
	movswl	2(%rcx), %ecx
	movl	%edx, %esi
	subl	%eax, %esi
	cmovlel	%eax, %edx
	movl	%esi, %edi
	sarl	$31, %edi
	andl	%esi, %edi
	addl	%eax, %edi
	cmpl	%ecx, %edi
	cmovlel	%ecx, %edi
	subl	%edi, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%edx, %eax
	addl	%edi, %eax
	movw	%ax, 2(%r8)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_14:                               # %if.else130
	.cfi_def_cfa_offset 32
	cmpl	$1, %edx
	jne	.LBB0_17
# %bb.15:                               # %if.then133
	cmpb	%r11b, %r9b
	je	.LBB0_20
# %bb.16:                               # %if.else137
	cmpb	%r11b, %r10b
	jne	.LBB0_13
.LBB0_7:                                # %if.then91
	movl	-28(%rax), %eax
	jmp	.LBB0_21
.LBB0_17:                               # %if.else144
	cmpb	$-2, %r10b
	jne	.LBB0_11
# %bb.18:                               # %if.else144
	cmpb	$-2, %sil
	jne	.LBB0_11
# %bb.19:                               # %if.else144
	cmpb	$-2, %r9b
	je	.LBB0_11
.LBB0_20:                               # %if.then152
	movl	(%rax), %eax
	jmp	.LBB0_21
.LBB0_13:                               # %if.then114
	movl	(%rcx), %eax
.LBB0_21:                               # %cleanup
	movl	%eax, (%r8)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	x264_mb_predict_mv, .Lfunc_end0-x264_mb_predict_mv
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_predict_mv_16x16        # -- Begin function x264_mb_predict_mv_16x16
	.p2align	4, 0x90
	.type	x264_mb_predict_mv_16x16,@function
x264_mb_predict_mv_16x16:               # @x264_mb_predict_mv_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	leaq	(%rax,%rax,4), %rsi
	movsbl	25131(%rdi,%rsi,8), %r8d
	movq	%rsi, %r11
	shlq	$5, %r11
	leaq	(%rdi,%r11), %rax
	addq	$25200, %rax                    # imm = 0x6270
	movsbl	25124(%rdi,%rsi,8), %r9d
	movzbl	25128(%rdi,%rsi,8), %r10d
	cmpb	$-2, %r10b
	jne	.LBB1_1
# %bb.2:                                # %if.then
	leaq	(%rdi,%rsi,8), %rsi
	addq	$25120, %rsi                    # imm = 0x6220
	movzbl	3(%rsi), %r10d
	leaq	12(%rax), %rsi
	jmp	.LBB1_3
.LBB1_1:
	leaq	(%rdi,%r11), %rsi
	addq	$25232, %rsi                    # imm = 0x6290
.LBB1_3:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movsbl	%r10b, %r11d
	xorl	%edi, %edi
	cmpl	%edx, %r8d
	sete	%dil
	xorl	%ebx, %ebx
	cmpl	%edx, %r9d
	sete	%bl
	addl	%edi, %ebx
	xorl	%edi, %edi
	cmpl	%edx, %r11d
	sete	%dil
	addl	%ebx, %edi
	cmpl	$2, %edi
	jb	.LBB1_5
.LBB1_4:                                # %median
	movswl	44(%rax), %edx
	movswl	16(%rax), %edi
	movswl	(%rsi), %r8d
	movl	%edx, %r9d
	subl	%edi, %r9d
	cmovlel	%edi, %edx
	movl	%r9d, %r10d
	sarl	$31, %r10d
	andl	%r9d, %r10d
	addl	%edi, %r10d
	cmpl	%r8d, %r10d
	cmovlel	%r8d, %r10d
	subl	%r10d, %edx
	movl	%edx, %edi
	sarl	$31, %edi
	andl	%edx, %edi
	addl	%r10d, %edi
	movw	%di, (%rcx)
	movswl	46(%rax), %edx
	movswl	18(%rax), %eax
	movswl	2(%rsi), %esi
	movl	%edx, %edi
	subl	%eax, %edi
	cmovlel	%eax, %edx
	movl	%edi, %r8d
	sarl	$31, %r8d
	andl	%edi, %r8d
	addl	%eax, %r8d
	cmpl	%esi, %r8d
	cmovlel	%esi, %r8d
	subl	%r8d, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	%edx, %eax
	addl	%r8d, %eax
	movw	%ax, 2(%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:                                # %if.else
	.cfi_def_cfa_offset 16
	cmpl	$1, %edi
	jne	.LBB1_10
# %bb.6:                                # %if.then62
	cmpl	%edx, %r8d
	je	.LBB1_13
# %bb.7:                                # %if.else66
	cmpl	%edx, %r9d
	jne	.LBB1_9
# %bb.8:                                # %if.then69
	movl	16(%rax), %eax
	movl	%eax, (%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_10:                               # %if.else73
	.cfi_def_cfa_offset 16
	cmpb	$-2, %r9b
	jne	.LBB1_4
# %bb.11:                               # %if.else73
	cmpb	$-2, %r10b
	jne	.LBB1_4
# %bb.12:                               # %if.else73
	cmpb	$-2, %r8b
	je	.LBB1_4
.LBB1_13:                               # %if.then81
	movl	44(%rax), %eax
	movl	%eax, (%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_9:                                # %if.else70
	.cfi_def_cfa_offset 16
	movl	(%rsi), %eax
	movl	%eax, (%rcx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	x264_mb_predict_mv_16x16, .Lfunc_end1-x264_mb_predict_mv_16x16
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_predict_mv_pskip        # -- Begin function x264_mb_predict_mv_pskip
	.p2align	4, 0x90
	.type	x264_mb_predict_mv_pskip,@function
x264_mb_predict_mv_pskip:               # @x264_mb_predict_mv_pskip
	.cfi_startproc
# %bb.0:                                # %entry
	movsbl	25131(%rdi), %edx
	cmpl	$-2, %edx
	sete	%al
	movsbl	25124(%rdi), %ecx
	cmpl	$-2, %ecx
	sete	%r8b
	orb	%al, %r8b
	jne	.LBB2_3
# %bb.1:                                # %lor.lhs.false22
	movl	25244(%rdi), %r8d
	movl	%r8d, %eax
	orl	%edx, %eax
	je	.LBB2_3
# %bb.2:                                # %lor.lhs.false23
	movl	25216(%rdi), %r9d
	movl	%r9d, %eax
	orl	%ecx, %eax
	je	.LBB2_3
# %bb.5:                                # %if.else
	movzbl	25128(%rdi), %r10d
	cmpb	$-2, %r10b
	jne	.LBB2_6
# %bb.7:                                # %if.then.i
	movzbl	25123(%rdi), %r10d
	leaq	25212(%rdi), %rax
	jmp	.LBB2_8
.LBB2_3:                                # %if.then
	movl	$0, (%rsi)
	retq
.LBB2_6:
	leaq	25232(%rdi), %rax
.LBB2_8:                                # %if.end.i
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	xorl	%r11d, %r11d
	testb	%dl, %dl
	sete	%r11b
	xorl	%ebx, %ebx
	testb	%cl, %cl
	sete	%bl
	cmpb	$1, %r10b
	adcl	%r11d, %ebx
	cmpl	$1, %ebx
	jne	.LBB2_9
# %bb.10:                               # %if.then62.i
	testb	%dl, %dl
	je	.LBB2_11
# %bb.12:                               # %if.else66.i
	testb	%cl, %cl
	je	.LBB2_13
# %bb.14:                               # %if.else70.i
	movl	(%rax), %eax
	movl	%eax, (%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_9:                                # %median.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movswl	%r8w, %ecx
	movswl	%r9w, %edx
	movswl	(%rax), %r8d
	movl	%ecx, %r9d
	subl	%edx, %r9d
	cmovlel	%edx, %ecx
	movl	%r9d, %r10d
	sarl	$31, %r10d
	andl	%r9d, %r10d
	addl	%edx, %r10d
	cmpl	%r8d, %r10d
	cmovlel	%r8d, %r10d
	subl	%r10d, %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	%ecx, %edx
	addl	%r10d, %edx
	movw	%dx, (%rsi)
	movswl	25246(%rdi), %ecx
	movswl	25218(%rdi), %edx
	movswl	2(%rax), %eax
	movl	%ecx, %edi
	subl	%edx, %edi
	cmovlel	%edx, %ecx
	movl	%edi, %r8d
	sarl	$31, %r8d
	andl	%edi, %r8d
	addl	%edx, %r8d
	cmpl	%eax, %r8d
	cmovlel	%eax, %r8d
	subl	%r8d, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	%ecx, %eax
	addl	%r8d, %eax
	movw	%ax, 2(%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_11:                               # %if.then65.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%r8d, (%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB2_13:                               # %if.then69.i
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%r9d, (%rsi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end2:
	.size	x264_mb_predict_mv_pskip, .Lfunc_end2-x264_mb_predict_mv_pskip
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_predict_mv_direct16x16  # -- Begin function x264_mb_predict_mv_direct16x16
	.p2align	4, 0x90
	.type	x264_mb_predict_mv_direct16x16,@function
x264_mb_predict_mv_direct16x16:         # @x264_mb_predict_mv_direct16x16
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 404(%rdi)
	je	.LBB3_4
# %bb.1:                                # %if.else
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$0, 7304(%rdi)
	movslq	16392(%rdi), %rdx
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	je	.LBB3_5
# %bb.2:                                # %if.then1
	movq	14864(%rdi), %rax
	movq	6712(%rax), %rcx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	movslq	16396(%rdi), %r10
	movq	6720(%rax), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	3552(%rax), %r8
	movslq	16400(%rdi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	3560(%rax), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	3536(%rax), %rcx
	movq	3544(%rax), %rax
	movzbl	(%rcx,%rdx), %r11d
	movzbl	(%rax,%rdx), %r12d
	movl	%r12d, 17388(%rdi)
	movsbl	25131(%rdi), %edx
	movsbl	25124(%rdi), %ecx
	movzbl	25128(%rdi), %r9d
	cmpb	$-2, %r9b
	movq	%r10, -112(%rsp)                # 8-byte Spill
	movb	%r11b, -120(%rsp)               # 1-byte Spill
	jne	.LBB3_7
# %bb.3:                                # %if.then.i
	movzbl	25123(%rdi), %r9d
	leaq	25212(%rdi), %rax
	jmp	.LBB3_8
.LBB3_4:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	xorl	%eax, %eax
	retq
.LBB3_5:                                # %if.else2
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	16372(%rdi), %eax
	imull	16388(%rdi), %eax
	movl	16384(%rdi), %esi
	movq	14864(%rdi), %rcx
	movq	3536(%rcx), %r8
	movq	3544(%rcx), %rcx
	movzbl	(%r8,%rdx), %r8d
	movzbl	(%rcx,%rdx), %r9d
	movl	$0, 25172(%rdi)
	movl	$0, 25180(%rdi)
	movl	$0, 25188(%rdi)
	movl	$0, 25196(%rdi)
	movl	%r9d, 17388(%rdi)
	cmpb	$3, %r8b
	ja	.LBB3_14
# %bb.6:                                # %if.then.i508
	movl	$0, 25132(%rdi)
	movl	$0, 25140(%rdi)
	movl	$0, 25148(%rdi)
	movl	$0, 25156(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 25248(%rdi)
	movups	%xmm0, 25280(%rdi)
	movups	%xmm0, 25312(%rdi)
	movups	%xmm0, 25344(%rdi)
	movups	%xmm0, 25408(%rdi)
	movups	%xmm0, 25440(%rdi)
	movups	%xmm0, 25472(%rdi)
	movups	%xmm0, 25504(%rdi)
	jmp	.LBB3_80
.LBB3_7:
	leaq	25232(%rdi), %rax
.LBB3_8:                                # %if.end.i
	movsbl	%r9b, %r11d
	cmpl	%r11d, %ecx
	movl	%r11d, %r9d
	cmovbl	%ecx, %r9d
	cmpl	%edx, %r9d
	movl	%edx, %ebp
	cmovbl	%r9d, %ebp
	testl	%ebp, %ebp
	js	.LBB3_11
# %bb.9:                                # %if.else.i
	xorl	%ebx, %ebx
	cmpl	%ecx, %ebp
	sete	%bl
	cmpl	%edx, %r9d
	sbbl	$-1, %ebx
	xorl	%r14d, %r14d
	cmpl	%r11d, %ebp
	sete	%r14b
	addl	%ebx, %r14d
	cmpl	$2, %r14d
	jb	.LBB3_12
# %bb.10:                               # %if.then126.i
	movswl	25244(%rdi), %esi
	movswl	25216(%rdi), %edx
	movl	%esi, %r9d
	subl	%edx, %r9d
	cmovlel	%edx, %esi
	movswl	(%rax), %r11d
	movl	%r9d, %ebx
	sarl	$31, %ebx
	andl	%r9d, %ebx
	addl	%edx, %ebx
	cmpl	%r11d, %ebx
	cmovlel	%r11d, %ebx
	subl	%ebx, %esi
	movl	%esi, %edx
	sarl	$31, %edx
	andl	%esi, %edx
	addl	%ebx, %edx
	movswl	25246(%rdi), %esi
	movswl	25218(%rdi), %r9d
	movswl	2(%rax), %eax
	movl	%esi, %r11d
	subl	%r9d, %r11d
	cmovlel	%r9d, %esi
	movl	%r11d, %ebx
	sarl	$31, %ebx
	andl	%r11d, %ebx
	addl	%r9d, %ebx
	cmpl	%eax, %ebx
	cmovlel	%eax, %ebx
	subl	%ebx, %esi
	movl	%esi, %eax
	sarl	$31, %eax
	andl	%esi, %eax
	addl	%ebx, %eax
	jmp	.LBB3_65
.LBB3_11:
	movl	$-1, %ebp
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB3_65
.LBB3_12:                               # %if.else130.i
	cmpl	%edx, %r9d
	jb	.LBB3_61
# %bb.13:                               # %if.then133.i
	movl	25244(%rdi), %edx
	jmp	.LBB3_64
.LBB3_14:                               # %if.end.i491
	movl	$16, %edx
	subl	%r9d, %edx
	cmpl	$14, %r9d
	sete	%r10b
	movl	%edx, %r11d
	sarl	%edx
	movl	$4, %r8d
	movl	$4, %ebx
	movl	%edx, %ecx
	shrl	%cl, %ebx
	movq	%rbx, -88(%rsp)                 # 8-byte Spill
	cmpb	$16, %r9b
	ja	.LBB3_80
# %bb.15:                               # %for.body.lr.ph.i
	movl	%eax, %ecx
	shll	$4, %ecx
	leal	(,%rsi,4), %ebx
	addl	%ecx, %ebx
	movl	%ebx, -96(%rsp)                 # 4-byte Spill
	shll	$2, %eax
	leal	(%rax,%rsi,2), %eax
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	movl	$17, %eax
	subl	%r9d, %eax
	movl	%eax, -120(%rsp)                # 4-byte Spill
	xorl	%eax, %eax
	movb	%r10b, %al
	incl	%eax
	movl	%eax, -56(%rsp)                 # 4-byte Spill
	movabsq	$4294967297, %r15               # imm = 0x100000001
	movl	%r11d, %ecx
	andl	$1, %ecx
	movl	%ecx, -64(%rsp)                 # 4-byte Spill
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r8d
	leal	-2(,%r8,4), %ecx
	movl	$2, %eax
	shldl	$31, %ecx, %eax
	leaq	25200(%rdi), %r12
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	leal	-2(%rsi), %ecx
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	shrl	%ecx
	incl	%ecx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$-4, %ecx
	movq	%rcx, %r8
	shlq	$6, %r8
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	addl	%ecx, %ecx
                                        # kill: def $esi killed $esi killed $rsi
	subl	%ecx, %esi
	movl	%esi, -68(%rsp)                 # 4-byte Spill
	leaq	25432(%rdi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	leaq	25592(%rdi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	xorl	%r10d, %r10d
	movq	%r12, -112(%rsp)                # 8-byte Spill
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_16:                               # %for.inc.i
                                        #   in Loop: Header=BB3_17 Depth=1
	addl	-56(%rsp), %r10d                # 4-byte Folded Reload
	cmpl	-120(%rsp), %r10d               # 4-byte Folded Reload
	jge	.LBB3_80
.LBB3_17:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_37 Depth 2
                                        #     Child Loop BB3_41 Depth 2
                                        #     Child Loop BB3_44 Depth 2
                                        #     Child Loop BB3_53 Depth 2
                                        #     Child Loop BB3_57 Depth 2
                                        #     Child Loop BB3_60 Depth 2
	movl	%r10d, %r9d
	andl	$1, %r9d
	movl	%r10d, %r8d
	shrl	%r8d
	movl	-48(%rsp), %ecx                 # 4-byte Reload
	orl	%r9d, %ecx
	movl	16376(%rdi), %r11d
	imull	%r8d, %r11d
	addl	%ecx, %r11d
	movq	14864(%rdi), %rsi
	movq	6712(%rsi), %rcx
	movslq	%r11d, %r11
	movsbl	(%rcx,%r11), %r11d
	movl	7268(%rdi), %ecx
	movl	%ecx, %ebx
	andl	%r11d, %ebx
	sarl	%cl, %r11d
	movslq	%r11d, %r11
	movsbl	26634(%rdi,%r11), %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	addl	%ebx, %ebp
	js	.LBB3_132
# %bb.18:                               # %if.then70.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	26360(%rdi), %rcx
	movl	%ebp, %r11d
	movswl	(%rcx,%r11,8), %ecx
	movq	3552(%rsi), %rsi
	imull	16380(%rdi), %r8d
	addl	%r9d, %r8d
	leal	(%r8,%r8,2), %r8d
	addl	-96(%rsp), %r8d                 # 4-byte Folded Reload
	movslq	%r8d, %rbx
	movswl	(%rsi,%rbx,4), %r14d
	movswl	2(%rsi,%rbx,4), %r8d
	movl	%r8d, %r11d
	imull	%ecx, %r11d
	subl	$-128, %r11d
	sarl	$8, %r11d
	cmpl	$2, 4(%rdi)
	jl	.LBB3_21
# %bb.19:                               # %land.lhs.true.i505
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	16468(%rdi), %r15d
	cmpl	%r15d, %r11d
	jg	.LBB3_132
# %bb.20:                               # %land.lhs.true.i505
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	%r11d, %r12d
	subl	%r8d, %r12d
	cmpl	%r15d, %r12d
	movq	-112(%rsp), %r12                # 8-byte Reload
	movabsq	$4294967297, %r15               # imm = 0x100000001
	jg	.LBB3_132
.LBB3_21:                               # %if.end114.i
                                        #   in Loop: Header=BB3_17 Depth=1
	leal	(,%r10,8), %r8d
	leal	(%r8,%r9,2), %r8d
	movslq	%r8d, %r13
	orq	$12, %r13
	movzbl	%bpl, %r8d
	cmpl	$0, -64(%rsp)                   # 4-byte Folded Reload
	jne	.LBB3_25
# %bb.22:                               # %if.then39.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	imull	$16843009, %r8d, %r8d           # imm = 0x1010101
	movl	%r8d, 25120(%rdi,%r13)
	cmpl	$2, %edx
	je	.LBB3_28
# %bb.23:                               # %if.end46.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	%r8d, 25128(%rdi,%r13)
	cmpl	$1, %edx
	je	.LBB3_28
# %bb.24:                               # %if.end53.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	%r8d, 25136(%rdi,%r13)
	movl	%r8d, 25144(%rdi,%r13)
	jmp	.LBB3_28
	.p2align	4, 0x90
.LBB3_25:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	shll	$8, %ebp
	orl	%ebp, %r8d
	movw	%r8w, 25120(%rdi,%r13)
	cmpl	$2, %edx
	je	.LBB3_28
# %bb.26:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movw	%r8w, 25128(%rdi,%r13)
	cmpl	$1, %edx
	je	.LBB3_28
# %bb.27:                               # %if.end30.i.i.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movw	%r8w, 25136(%rdi,%r13)
	movw	%r8w, 25144(%rdi,%r13)
	.p2align	4, 0x90
.LBB3_28:                               # %x264_macroblock_cache_ref.exit.i
                                        #   in Loop: Header=BB3_17 Depth=1
	imull	%ecx, %r14d
	subl	$-128, %r14d
	sarl	$8, %r14d
	movzwl	%r14w, %r8d
	movl	%r11d, %ecx
	shll	$16, %ecx
	orl	%r8d, %ecx
	leaq	(%r12,%r13,4), %rbp
	imulq	%r15, %rcx
	cmpl	$3, %eax
	je	.LBB3_32
# %bb.29:                               # %x264_macroblock_cache_ref.exit.i
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$7, %eax
	jne	.LBB3_45
# %bb.30:                               # %do.body.i.i275.i.preheader
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$5, -80(%rsp)                   # 4-byte Folded Reload
	ja	.LBB3_36
# %bb.31:                               #   in Loop: Header=BB3_17 Depth=1
	movq	-88(%rsp), %r9                  # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	jmp	.LBB3_39
	.p2align	4, 0x90
.LBB3_32:                               # %if.then63.i.i259.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%rcx, (%rbp)
	cmpl	$2, %edx
	je	.LBB3_35
# %bb.33:                               # %if.end70.i.i261.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%rcx, 32(%rbp)
	cmpl	$1, %edx
	je	.LBB3_35
# %bb.34:                               # %if.end77.i.i264.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%rcx, 64(%rbp)
	movq	%rcx, 96(%rbp)
.LBB3_35:                               # %x264_macroblock_cache_mv.exit284.thread336.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movzwl	2(%rsi,%rbx,4), %ecx
	subl	%ecx, %r11d
	subw	(%rsi,%rbx,4), %r14w
	movzwl	%r14w, %ecx
	shll	$16, %r11d
	orl	%ecx, %r11d
	leaq	(%r12,%r13,4), %rcx
	addq	$160, %rcx
	imulq	%r15, %r11
	jmp	.LBB3_49
.LBB3_36:                               # %vector.ph548
                                        #   in Loop: Header=BB3_17 Depth=1
	addq	-40(%rsp), %rbp                 # 8-byte Folded Reload
	movq	-16(%rsp), %r8                  # 8-byte Reload
	leaq	(%r8,%r13,4), %r8
	movq	-104(%rsp), %r9                 # 8-byte Reload
	.p2align	4, 0x90
.LBB3_37:                               # %vector.body556
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -232(%r8)
	movq	%rcx, -168(%r8)
	movq	%rcx, -104(%r8)
	movq	%rcx, -40(%r8)
	movq	%rcx, -224(%r8)
	movq	%rcx, -160(%r8)
	movq	%rcx, -96(%r8)
	movq	%rcx, -32(%r8)
	movq	%rcx, -200(%r8)
	movq	%rcx, -136(%r8)
	movq	%rcx, -72(%r8)
	movq	%rcx, -8(%r8)
	movq	%rcx, -192(%r8)
	movq	%rcx, -128(%r8)
	movq	%rcx, -64(%r8)
	movq	%rcx, (%r8)
	addq	$256, %r8                       # imm = 0x100
	addq	$-4, %r9
	jne	.LBB3_37
# %bb.38:                               # %middle.block545
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-68(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %r9d
	movq	-104(%rsp), %r8                 # 8-byte Reload
	cmpl	-32(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB3_45
.LBB3_39:                               # %do.body.i.i275.i.preheader567
                                        #   in Loop: Header=BB3_17 Depth=1
	leal	-2(%r9), %r12d
	movl	%r12d, %r8d
	shrl	%r8d
	incl	%r8d
	andl	$3, %r8d
	je	.LBB3_43
# %bb.40:                               # %do.body.i.i275.i.prol.preheader
                                        #   in Loop: Header=BB3_17 Depth=1
	addl	%r8d, %r8d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_41:                               # %do.body.i.i275.i.prol
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, (%rbp)
	movq	%rcx, 8(%rbp)
	movq	%rcx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	addq	$64, %rbp
	addl	$2, %r15d
	cmpl	%r15d, %r8d
	jne	.LBB3_41
# %bb.42:                               # %do.body.i.i275.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB3_17 Depth=1
	subl	%r15d, %r9d
	movabsq	$4294967297, %r15               # imm = 0x100000001
.LBB3_43:                               # %do.body.i.i275.i.prol.loopexit
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$6, %r12d
	movq	-112(%rsp), %r12                # 8-byte Reload
	jb	.LBB3_45
	.p2align	4, 0x90
.LBB3_44:                               # %do.body.i.i275.i
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, (%rbp)
	movq	%rcx, 8(%rbp)
	movq	%rcx, 32(%rbp)
	movq	%rcx, 40(%rbp)
	movq	%rcx, 64(%rbp)
	movq	%rcx, 72(%rbp)
	movq	%rcx, 96(%rbp)
	movq	%rcx, 104(%rbp)
	movq	%rcx, 128(%rbp)
	movq	%rcx, 136(%rbp)
	movq	%rcx, 160(%rbp)
	movq	%rcx, 168(%rbp)
	movq	%rcx, 192(%rbp)
	movq	%rcx, 200(%rbp)
	movq	%rcx, 224(%rbp)
	movq	%rcx, 232(%rbp)
	addq	$256, %rbp                      # imm = 0x100
	addl	$-8, %r9d
	jne	.LBB3_44
	.p2align	4, 0x90
.LBB3_45:                               # %x264_macroblock_cache_mv.exit284.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movzwl	2(%rsi,%rbx,4), %ecx
	subl	%ecx, %r11d
	subw	(%rsi,%rbx,4), %r14w
	movzwl	%r14w, %ecx
	shll	$16, %r11d
	orl	%ecx, %r11d
	leaq	(%r12,%r13,4), %rcx
	addq	$160, %rcx
	imulq	%r15, %r11
	cmpl	$3, %eax
	je	.LBB3_49
# %bb.46:                               # %x264_macroblock_cache_mv.exit284.i
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$7, %eax
	jne	.LBB3_16
# %bb.47:                               # %do.body.i.i313.i.preheader
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$5, -80(%rsp)                   # 4-byte Folded Reload
	ja	.LBB3_52
# %bb.48:                               #   in Loop: Header=BB3_17 Depth=1
	movq	-88(%rsp), %rsi                 # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	jmp	.LBB3_55
	.p2align	4, 0x90
.LBB3_49:                               # %if.then63.i.i297.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%r11, (%rcx)
	cmpl	$2, %edx
	je	.LBB3_16
# %bb.50:                               # %if.end70.i.i299.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%r11, 25392(%rdi,%r13,4)
	cmpl	$1, %edx
	je	.LBB3_16
# %bb.51:                               # %if.end77.i.i302.i
                                        #   in Loop: Header=BB3_17 Depth=1
	movq	%r11, 25424(%rdi,%r13,4)
	movq	%r11, 25456(%rdi,%r13,4)
	jmp	.LBB3_16
.LBB3_52:                               # %vector.ph
                                        #   in Loop: Header=BB3_17 Depth=1
	addq	-40(%rsp), %rcx                 # 8-byte Folded Reload
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%r13,4), %rsi
	movq	-104(%rsp), %r8                 # 8-byte Reload
	.p2align	4, 0x90
.LBB3_53:                               # %vector.body
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, -232(%rsi)
	movq	%r11, -168(%rsi)
	movq	%r11, -104(%rsi)
	movq	%r11, -40(%rsi)
	movq	%r11, -224(%rsi)
	movq	%r11, -160(%rsi)
	movq	%r11, -96(%rsi)
	movq	%r11, -32(%rsi)
	movq	%r11, -200(%rsi)
	movq	%r11, -136(%rsi)
	movq	%r11, -72(%rsi)
	movq	%r11, -8(%rsi)
	movq	%r11, -192(%rsi)
	movq	%r11, -128(%rsi)
	movq	%r11, -64(%rsi)
	movq	%r11, (%rsi)
	addq	$256, %rsi                      # imm = 0x100
	addq	$-4, %r8
	jne	.LBB3_53
# %bb.54:                               # %middle.block
                                        #   in Loop: Header=BB3_17 Depth=1
	movl	-68(%rsp), %esi                 # 4-byte Reload
                                        # kill: def $esi killed $esi def $rsi
	movq	-104(%rsp), %r8                 # 8-byte Reload
	cmpl	-32(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB3_16
.LBB3_55:                               # %do.body.i.i313.i.preheader566
                                        #   in Loop: Header=BB3_17 Depth=1
	leal	-2(%rsi), %r8d
	movl	%r8d, %r9d
	shrl	%r9d
	incl	%r9d
	andl	$3, %r9d
	je	.LBB3_59
# %bb.56:                               # %do.body.i.i313.i.prol.preheader
                                        #   in Loop: Header=BB3_17 Depth=1
	addl	%r9d, %r9d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_57:                               # %do.body.i.i313.i.prol
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, (%rcx)
	movq	%r11, 8(%rcx)
	movq	%r11, 32(%rcx)
	movq	%r11, 40(%rcx)
	addq	$64, %rcx
	addl	$2, %ebx
	cmpl	%ebx, %r9d
	jne	.LBB3_57
# %bb.58:                               # %do.body.i.i313.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB3_17 Depth=1
	subl	%ebx, %esi
.LBB3_59:                               # %do.body.i.i313.i.prol.loopexit
                                        #   in Loop: Header=BB3_17 Depth=1
	cmpl	$6, %r8d
	jb	.LBB3_16
	.p2align	4, 0x90
.LBB3_60:                               # %do.body.i.i313.i
                                        #   Parent Loop BB3_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r11, (%rcx)
	movq	%r11, 8(%rcx)
	movq	%r11, 32(%rcx)
	movq	%r11, 40(%rcx)
	movq	%r11, 64(%rcx)
	movq	%r11, 72(%rcx)
	movq	%r11, 96(%rcx)
	movq	%r11, 104(%rcx)
	movq	%r11, 128(%rcx)
	movq	%r11, 136(%rcx)
	movq	%r11, 160(%rcx)
	movq	%r11, 168(%rcx)
	movq	%r11, 192(%rcx)
	movq	%r11, 200(%rcx)
	movq	%r11, 224(%rcx)
	movq	%r11, 232(%rcx)
	addq	$256, %rcx                      # imm = 0x100
	addl	$-8, %esi
	jne	.LBB3_60
	jmp	.LBB3_16
.LBB3_61:                               # %if.else137.i
	cmpl	%ecx, %ebp
	jne	.LBB3_63
# %bb.62:                               # %if.then140.i
	movl	25216(%rdi), %edx
	movl	%edx, %eax
	shrl	$16, %eax
	movl	%ecx, %ebp
	jmp	.LBB3_65
.LBB3_132:
	xorl	%eax, %eax
	jmp	.LBB3_85
.LBB3_63:                               # %if.else144.i
	movl	(%rax), %edx
.LBB3_64:                               # %if.end151.i
	movl	%edx, %eax
	shrl	$16, %eax
.LBB3_65:                               # %if.end151.i
	movzbl	%bpl, %esi
	imull	$16843009, %esi, %esi           # imm = 0x1010101
	movl	%esi, 25132(%rdi)
	movl	%esi, 25140(%rdi)
	movl	%esi, 25148(%rdi)
	movl	%esi, 25156(%rdi)
	movl	%eax, %esi
	shll	$16, %esi
	movzwl	%dx, %edx
	orl	%esi, %edx
	movq	%rdx, %rsi
	shlq	$32, %rsi
	orq	%rdx, %rsi
	movq	%rsi, 25248(%rdi)
	movq	%rsi, 25256(%rdi)
	movq	%rsi, 25280(%rdi)
	movq	%rsi, 25288(%rdi)
	movq	%rsi, 25312(%rdi)
	movq	%rsi, 25320(%rdi)
	movq	%rsi, 25344(%rdi)
	movq	%rsi, 25352(%rdi)
	movsbl	25171(%rdi), %ebx
	movsbl	25164(%rdi), %r14d
	movzbl	25168(%rdi), %r9d
	cmpb	$-2, %r9b
	jne	.LBB3_67
# %bb.66:                               # %if.then.1.i
	movzbl	25163(%rdi), %r9d
	leaq	25372(%rdi), %r13
	jmp	.LBB3_68
.LBB3_67:
	leaq	25392(%rdi), %r13
.LBB3_68:                               # %if.end.1.i
	movabsq	$4294967297, %rsi               # imm = 0x100000001
	movsbl	%r9b, %r15d
	cmpl	%r15d, %r14d
	movl	%r15d, %r11d
	cmovbl	%r14d, %r11d
	cmpl	%ebx, %r11d
	movl	%ebx, %r9d
	cmovbl	%r11d, %r9d
	testl	%r9d, %r9d
	js	.LBB3_71
# %bb.69:                               # %if.else.1.i
	xorl	%ecx, %ecx
	cmpl	%r14d, %r9d
	sete	%cl
	cmpl	%ebx, %r11d
	sbbl	$-1, %ecx
	xorl	%r10d, %r10d
	cmpl	%r15d, %r9d
	sete	%r10b
	addl	%ecx, %r10d
	cmpl	$1, %r10d
	jbe	.LBB3_72
# %bb.70:                               # %if.then126.1.i
	movswl	25404(%rdi), %ecx
	movswl	25376(%rdi), %r10d
	movl	%ecx, %r11d
	subl	%r10d, %r11d
	cmovlel	%r10d, %ecx
	movswl	(%r13), %ebx
	movl	%r11d, %r14d
	sarl	$31, %r14d
	andl	%r11d, %r14d
	addl	%r10d, %r14d
	cmpl	%ebx, %r14d
	cmovlel	%ebx, %r14d
	subl	%r14d, %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	andl	%ecx, %ebx
	addl	%r14d, %ebx
	movswl	25406(%rdi), %ecx
	movswl	25378(%rdi), %r10d
	movswl	2(%r13), %r11d
	movl	%ecx, %r14d
	subl	%r10d, %r14d
	cmovlel	%r10d, %ecx
	movl	%r14d, %r15d
	sarl	$31, %r15d
	andl	%r14d, %r15d
	addl	%r10d, %r15d
	cmpl	%r11d, %r15d
	cmovlel	%r11d, %r15d
	subl	%r15d, %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	andl	%ecx, %r13d
	addl	%r15d, %r13d
	jmp	.LBB3_78
.LBB3_71:
	movl	$-1, %r9d
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB3_78
.LBB3_72:                               # %if.else130.1.i
	cmpl	%ebx, %r11d
	jb	.LBB3_74
# %bb.73:                               # %if.then133.1.i
	movl	25404(%rdi), %ebx
	jmp	.LBB3_77
.LBB3_74:                               # %if.else137.1.i
	cmpl	%r14d, %r9d
	jne	.LBB3_76
# %bb.75:                               # %if.then140.1.i
	movl	25376(%rdi), %ebx
	movl	%ebx, %r13d
	shrl	$16, %r13d
	movl	%r14d, %r9d
	jmp	.LBB3_78
.LBB3_76:                               # %if.else144.1.i
	movl	(%r13), %ebx
.LBB3_77:                               # %if.end151.1.i
	movl	%ebx, %r13d
	shrl	$16, %r13d
.LBB3_78:                               # %if.end151.1.i
	movzbl	%r9b, %ecx
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
	movl	%ecx, 25172(%rdi)
	movl	%ecx, 25180(%rdi)
	movl	%ecx, 25188(%rdi)
	movl	%ecx, 25196(%rdi)
	movl	%r13d, %ecx
	shll	$16, %ecx
	movzwl	%bx, %ebx
	orl	%ecx, %ebx
	imulq	%rbx, %rsi
	movq	%rsi, 25408(%rdi)
	movq	%rsi, 25416(%rdi)
	movq	%rsi, 25440(%rdi)
	movq	%rsi, 25448(%rdi)
	movq	%rsi, 25472(%rdi)
	movq	%rsi, 25480(%rdi)
	movq	%rsi, 25504(%rdi)
	movq	%rsi, 25512(%rdi)
	movl	%ebp, %ecx
	andl	$128, %ecx
	movl	%r9d, %esi
	andl	$-32768, %esi                   # imm = 0x8000
	orl	%ecx, %esi
	movzwl	%si, %ecx
	cmpl	$32896, %ecx                    # imm = 0x8080
	jne	.LBB3_86
# %bb.79:                               # %if.then163.i
	movl	$0, 25132(%rdi)
	movl	$0, 25140(%rdi)
	movl	$0, 25148(%rdi)
	movl	$0, 25156(%rdi)
	movl	$0, 25172(%rdi)
	movl	$0, 25180(%rdi)
	movl	$0, 25188(%rdi)
	movl	$0, 25196(%rdi)
.LBB3_80:                               # %if.end4
	movq	-8(%rsp), %r9                   # 8-byte Reload
	testq	%r9, %r9
	je	.LBB3_83
# %bb.81:                               # %if.then7
	movl	25248(%rdi), %eax
	xorl	25720(%rdi), %eax
	movl	25408(%rdi), %ecx
	xorl	25736(%rdi), %ecx
	orl	%eax, %ecx
	movzbl	25132(%rdi), %eax
	movzbl	25172(%rdi), %edx
	xorb	25752(%rdi), %al
	movsbl	%al, %eax
	orl	%ecx, %eax
	xorb	25756(%rdi), %dl
	movsbl	%dl, %ecx
	orl	%eax, %ecx
	je	.LBB3_127
.LBB3_82:                               # %if.end249.thread535
	movl	%ecx, (%r9)
.LBB3_83:                               # %for.cond.preheader
	movl	17388(%rdi), %eax
	movl	25248(%rdi), %ecx
	movl	%ecx, 25720(%rdi)
	movl	25256(%rdi), %ecx
	movl	%ecx, 25724(%rdi)
	movl	25312(%rdi), %ecx
	movl	%ecx, 25728(%rdi)
	movl	25320(%rdi), %ecx
	movl	%ecx, 25732(%rdi)
	movzbl	25132(%rdi), %ecx
	movb	%cl, 25752(%rdi)
	movzbl	25134(%rdi), %ecx
	movb	%cl, 25753(%rdi)
	movzbl	25148(%rdi), %ecx
	movb	%cl, 25754(%rdi)
	movzbl	25150(%rdi), %ecx
	movb	%cl, 25755(%rdi)
	movl	25408(%rdi), %ecx
	movl	%ecx, 25736(%rdi)
	movl	25416(%rdi), %ecx
	movl	%ecx, 25740(%rdi)
	movl	25472(%rdi), %ecx
	movl	%ecx, 25744(%rdi)
	movl	25480(%rdi), %ecx
	movl	%ecx, 25748(%rdi)
	movzbl	25172(%rdi), %ecx
	movzbl	25174(%rdi), %edx
	movb	%cl, 25756(%rdi)
	movb	%dl, 25757(%rdi)
	movzbl	25188(%rdi), %ecx
	movb	%cl, 25758(%rdi)
	movzbl	25190(%rdi), %ecx
	movb	%cl, 25759(%rdi)
	movl	%eax, 25760(%rdi)
.LBB3_84:
	movl	$1, %eax
.LBB3_85:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.LBB3_86:                               # %if.end164.i
	.cfi_def_cfa_offset 56
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r14
	cmpl	$2, 4(%rdi)
	movq	-96(%rsp), %r8                  # 8-byte Reload
	jl	.LBB3_89
# %bb.87:                               # %land.lhs.true.i
	movswl	%ax, %ecx
	movl	16468(%rdi), %esi
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	jl	.LBB3_85
# %bb.88:                               # %land.lhs.true.i
	movswl	%r13w, %ecx
	cmpl	%ecx, %esi
	jl	.LBB3_85
.LBB3_89:                               # %if.end183.i
	orq	%rbx, %rdx
	je	.LBB3_80
# %bb.90:                               # %if.end183.i
	cmpb	$4, -120(%rsp)                  # 1-byte Folded Reload
	jb	.LBB3_80
# %bb.91:                               # %lor.lhs.false197.i
	testl	%ebp, %ebp
	je	.LBB3_93
# %bb.92:                               # %lor.lhs.false197.i
	testl	%r9d, %r9d
	jne	.LBB3_80
.LBB3_93:                               # %if.end206.i
	movl	$16, %edx
	subl	%r12d, %edx
	xorl	%r13d, %r13d
	cmpl	$14, %r12d
	sete	%r11b
	movl	%edx, %eax
	sarl	%eax
	movl	$4, %esi
	movl	$4, %r10d
	movl	%eax, %ecx
	shrl	%cl, %r10d
	movq	%r10, -120(%rsp)                # 8-byte Spill
	cmpb	$16, %r12b
	ja	.LBB3_80
# %bb.94:                               # %for.body220.lr.ph.i
	leaq	25200(%rdi), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rcx                # 8-byte Reload
	addq	%rcx, %r8
	addq	%rcx, -64(%rsp)                 # 8-byte Folded Spill
	movl	$17, %r15d
	subl	%r12d, %r15d
	movb	%r11b, %r13b
	incl	%r13d
	andb	$1, %dl
	movl	%edx, %ecx
	shrl	%cl, %esi
	leal	-2(,%rsi,4), %ecx
	movl	$2, %edx
	shldl	$31, %ecx, %edx
	movl	%edx, -96(%rsp)                 # 4-byte Spill
	movq	-120(%rsp), %rcx                # 8-byte Reload
	addl	$-2, %ecx
	movl	%ecx, -112(%rsp)                # 4-byte Spill
	shrl	%ecx
	incl	%ecx
	movl	%ecx, -104(%rsp)                # 4-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	andl	$7, %ecx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx), %edx
	xorl	%r12d, %r12d
	xorps	%xmm0, %xmm0
	jmp	.LBB3_96
	.p2align	4, 0x90
.LBB3_95:                               # %cleanup.i
                                        #   in Loop: Header=BB3_96 Depth=1
	addl	%r13d, %r12d
	cmpl	%r15d, %r12d
	jge	.LBB3_80
.LBB3_96:                               # %for.body220.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_113 Depth 2
                                        #     Child Loop BB3_126 Depth 2
                                        #     Child Loop BB3_107 Depth 2
                                        #     Child Loop BB3_123 Depth 2
	movl	%r12d, %esi
	andl	$1, %esi
	movl	%r12d, %ecx
	shrl	%ecx
	movl	16376(%rdi), %r10d
	imull	%ecx, %r10d
	addl	%esi, %r10d
	imull	16380(%rdi), %ecx
	movslq	%r10d, %rbx
	cmpb	$0, (%r8,%rbx)
	movq	%r14, %r11
	je	.LBB3_99
# %bb.97:                               # %if.else235.i
                                        #   in Loop: Header=BB3_96 Depth=1
	jns	.LBB3_95
# %bb.98:                               # %land.lhs.true241.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	-64(%rsp), %r10                 # 8-byte Reload
	cmpb	$0, (%r10,%rbx)
	movq	-56(%rsp), %r11                 # 8-byte Reload
	jne	.LBB3_95
	.p2align	4, 0x90
.LBB3_99:                               # %if.end250.i
                                        #   in Loop: Header=BB3_96 Depth=1
	addl	%esi, %ecx
	leal	(%rcx,%rcx,2), %r10d
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r11,%rcx,4), %rcx
	movslq	%r10d, %r11
	movzwl	(%rcx,%r11,4), %r10d
	movl	%r10d, %ebx
	negw	%bx
	cmovsw	%r10w, %bx
	cmpw	$1, %bx
	ja	.LBB3_95
# %bb.100:                              # %land.lhs.true259.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movzwl	2(%rcx,%r11,4), %ecx
	movl	%ecx, %r10d
	negw	%r10w
	cmovsw	%cx, %r10w
	cmpw	$1, %r10w
	ja	.LBB3_95
# %bb.101:                              # %if.then268.i
                                        #   in Loop: Header=BB3_96 Depth=1
	testl	%ebp, %ebp
	je	.LBB3_109
.LBB3_102:                              # %if.end276.i
                                        #   in Loop: Header=BB3_96 Depth=1
	testl	%r9d, %r9d
	jne	.LBB3_95
# %bb.103:                              # %if.then281.i
                                        #   in Loop: Header=BB3_96 Depth=1
	leal	(,%r12,8), %ecx
	leal	(%rcx,%rsi,2), %ecx
	orl	$12, %ecx
	movslq	%ecx, %rcx
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rcx,4), %rsi
	addq	$160, %rsi
	movl	-96(%rsp), %ecx                 # 4-byte Reload
	cmpl	$3, %ecx
	je	.LBB3_115
# %bb.104:                              # %if.then281.i
                                        #   in Loop: Header=BB3_96 Depth=1
	cmpl	$7, %ecx
	jne	.LBB3_95
# %bb.105:                              # %do.body.i.i459.i.preheader
                                        #   in Loop: Header=BB3_96 Depth=1
	testb	$7, -104(%rsp)                  # 1-byte Folded Reload
	je	.LBB3_121
# %bb.106:                              # %do.body.i.i459.i.prol.preheader
                                        #   in Loop: Header=BB3_96 Depth=1
	xorl	%r11d, %r11d
.LBB3_107:                              # %do.body.i.i459.i.prol
                                        #   Parent Loop BB3_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rsi)
	movups	%xmm0, 32(%rsi)
	addq	$64, %rsi
	addl	$2, %r11d
	cmpl	%r11d, %edx
	jne	.LBB3_107
# %bb.108:                              # %do.body.i.i459.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%r11d, %ecx
	jmp	.LBB3_122
.LBB3_109:                              # %if.then273.i
                                        #   in Loop: Header=BB3_96 Depth=1
	leal	(,%r12,8), %ecx
	leal	(%rcx,%rsi,2), %ecx
	orl	$12, %ecx
	movslq	%ecx, %rcx
	movq	-80(%rsp), %r10                 # 8-byte Reload
	leaq	(%r10,%rcx,4), %rcx
	movl	-96(%rsp), %r10d                # 4-byte Reload
	cmpl	$3, %r10d
	je	.LBB3_118
# %bb.110:                              # %if.then273.i
                                        #   in Loop: Header=BB3_96 Depth=1
	cmpl	$7, %r10d
	jne	.LBB3_102
# %bb.111:                              # %do.body.i.i426.i.preheader
                                        #   in Loop: Header=BB3_96 Depth=1
	cmpl	$0, -88(%rsp)                   # 4-byte Folded Reload
	je	.LBB3_124
# %bb.112:                              # %do.body.i.i426.i.prol.preheader
                                        #   in Loop: Header=BB3_96 Depth=1
	xorl	%r11d, %r11d
.LBB3_113:                              # %do.body.i.i426.i.prol
                                        #   Parent Loop BB3_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rcx)
	movups	%xmm0, 32(%rcx)
	addq	$64, %rcx
	addl	$2, %r11d
	cmpl	%r11d, %edx
	jne	.LBB3_113
# %bb.114:                              # %do.body.i.i426.i.prol.loopexit.loopexit
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	-120(%rsp), %r10                # 8-byte Reload
	movl	%r10d, %ebx
	subl	%r11d, %ebx
	jmp	.LBB3_125
.LBB3_115:                              # %if.then63.i.i443.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, (%rsi)
	cmpl	$2, %eax
	je	.LBB3_95
# %bb.116:                              # %if.end70.i.i445.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, 32(%rsi)
	cmpl	$1, %eax
	je	.LBB3_95
# %bb.117:                              # %if.end77.i.i448.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, 64(%rsi)
	movq	$0, 96(%rsi)
	jmp	.LBB3_95
.LBB3_118:                              # %if.then63.i.i.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, (%rcx)
	cmpl	$2, %eax
	je	.LBB3_102
# %bb.119:                              # %if.end70.i.i.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, 32(%rcx)
	cmpl	$1, %eax
	je	.LBB3_102
# %bb.120:                              # %if.end77.i.i.i
                                        #   in Loop: Header=BB3_96 Depth=1
	movq	$0, 64(%rcx)
	movq	$0, 96(%rcx)
	jmp	.LBB3_102
.LBB3_121:                              #   in Loop: Header=BB3_96 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
.LBB3_122:                              # %do.body.i.i459.i.prol.loopexit
                                        #   in Loop: Header=BB3_96 Depth=1
	cmpl	$14, -112(%rsp)                 # 4-byte Folded Reload
	jb	.LBB3_95
.LBB3_123:                              # %do.body.i.i459.i
                                        #   Parent Loop BB3_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rsi)
	movups	%xmm0, 32(%rsi)
	movups	%xmm0, 64(%rsi)
	movups	%xmm0, 96(%rsi)
	movups	%xmm0, 128(%rsi)
	movups	%xmm0, 160(%rsi)
	movups	%xmm0, 192(%rsi)
	movups	%xmm0, 224(%rsi)
	movups	%xmm0, 256(%rsi)
	movups	%xmm0, 288(%rsi)
	movups	%xmm0, 320(%rsi)
	movups	%xmm0, 352(%rsi)
	movups	%xmm0, 384(%rsi)
	movups	%xmm0, 416(%rsi)
	movups	%xmm0, 448(%rsi)
	movups	%xmm0, 480(%rsi)
	addq	$512, %rsi                      # imm = 0x200
	addl	$-16, %ecx
	jne	.LBB3_123
	jmp	.LBB3_95
.LBB3_124:                              #   in Loop: Header=BB3_96 Depth=1
	movq	-120(%rsp), %r10                # 8-byte Reload
	movl	%r10d, %ebx
.LBB3_125:                              # %do.body.i.i426.i.prol.loopexit
                                        #   in Loop: Header=BB3_96 Depth=1
	cmpl	$14, -112(%rsp)                 # 4-byte Folded Reload
	jb	.LBB3_102
.LBB3_126:                              # %do.body.i.i426.i
                                        #   Parent Loop BB3_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	%xmm0, (%rcx)
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 64(%rcx)
	movups	%xmm0, 96(%rcx)
	movups	%xmm0, 128(%rcx)
	movups	%xmm0, 160(%rcx)
	movups	%xmm0, 192(%rcx)
	movups	%xmm0, 224(%rcx)
	movups	%xmm0, 256(%rcx)
	movups	%xmm0, 288(%rcx)
	movups	%xmm0, 320(%rcx)
	movups	%xmm0, 352(%rcx)
	movups	%xmm0, 384(%rcx)
	movups	%xmm0, 416(%rcx)
	movups	%xmm0, 448(%rcx)
	movups	%xmm0, 480(%rcx)
	addq	$512, %rcx                      # imm = 0x200
	addl	$-16, %ebx
	jne	.LBB3_126
	jmp	.LBB3_102
.LBB3_127:                              # %land.lhs.true56
	movl	17388(%rdi), %eax
	cmpl	$16, %eax
	jne	.LBB3_129
.LBB3_128:                              # %if.end249.thread
	movl	$0, (%r9)
	jmp	.LBB3_84
.LBB3_129:                              # %if.end121
	movl	25320(%rdi), %ecx
	xorl	25732(%rdi), %ecx
	movl	25480(%rdi), %edx
	xorl	25748(%rdi), %edx
	orl	%ecx, %edx
	movzbl	25150(%rdi), %ecx
	movzbl	25190(%rdi), %esi
	xorb	25755(%rdi), %cl
	movsbl	%cl, %r8d
	orl	%edx, %r8d
	xorb	25759(%rdi), %sil
	movsbl	%sil, %ecx
	orl	%r8d, %ecx
	jne	.LBB3_82
# %bb.130:                              # %land.lhs.true123
	cmpl	$13, %eax
	jne	.LBB3_128
# %bb.131:                              # %if.end249
	movl	25256(%rdi), %eax
	xorl	25724(%rdi), %eax
	movl	25416(%rdi), %ecx
	xorl	25740(%rdi), %ecx
	movl	25312(%rdi), %edx
	xorl	25728(%rdi), %edx
	movl	25472(%rdi), %esi
	xorl	25744(%rdi), %esi
	orl	%eax, %ecx
	orl	%edx, %esi
	orl	%ecx, %esi
	movzbl	25134(%rdi), %eax
	movzbl	25148(%rdi), %ecx
	xorb	25753(%rdi), %al
	movsbl	%al, %eax
	movzbl	25174(%rdi), %edx
	xorb	25757(%rdi), %dl
	movsbl	%dl, %edx
	orl	%eax, %edx
	orl	%esi, %edx
	xorb	25754(%rdi), %cl
	movsbl	%cl, %eax
	movzbl	25188(%rdi), %ecx
	xorb	25758(%rdi), %cl
	orl	%edx, %eax
	movsbl	%cl, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r9)
	jne	.LBB3_83
	jmp	.LBB3_84
.Lfunc_end3:
	.size	x264_mb_predict_mv_direct16x16, .Lfunc_end3-x264_mb_predict_mv_direct16x16
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_predict_mv_ref16x16     # -- Begin function x264_mb_predict_mv_ref16x16
	.p2align	4, 0x90
	.type	x264_mb_predict_mv_ref16x16,@function
x264_mb_predict_mv_ref16x16:            # @x264_mb_predict_mv_ref16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rcx, %rax
	movslq	%esi, %r10
	movq	%r10, %rcx
	shlq	$8, %rcx
	addq	%rdi, %rcx
	movslq	%edx, %r9
	movq	16720(%rcx,%r9,8), %rcx
	xorl	%r9d, %r9d
	cmpl	$1, 7248(%rdi)
	jne	.LBB4_3
# %bb.1:                                # %land.lhs.true
	leaq	(%r10,%r10,4), %r10
	movsbl	25150(%rdi,%r10,8), %r11d
	cmpl	%edx, %r11d
	jne	.LBB4_3
# %bb.2:                                # %if.then
	shlq	$5, %r10
	movl	25320(%rdi,%r10), %r9d
	movl	%r9d, (%rax)
	movl	$1, %r9d
.LBB4_3:                                # %if.end
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testl	%edx, %edx
	je	.LBB4_4
.LBB4_10:                               # %if.end58
	movl	16576(%rdi), %r10d
	testb	$1, %r10b
	jne	.LBB4_11
# %bb.12:                               # %if.end71
	testb	$2, %r10b
	jne	.LBB4_13
.LBB4_18:                               # %if.end113
	movq	14704(%rdi), %r10
	cmpl	$0, 6728(%r10)
	jg	.LBB4_19
	jmp	.LBB4_26
.LBB4_11:                               # %if.then62
	movslq	16600(%rdi), %r10
	movl	(%rcx,%r10,4), %r10d
	movl	%r9d, %r11d
	movl	%r10d, (%rax,%r11,4)
	incl	%r9d
	movl	16576(%rdi), %r10d
	testb	$2, %r10b
	je	.LBB4_18
.LBB4_13:                               # %if.then76
	movslq	16604(%rdi), %r10
	movl	(%rcx,%r10,4), %r10d
	movl	%r9d, %r11d
	movl	%r10d, (%rax,%r11,4)
	leal	1(%r9), %r10d
	movl	16576(%rdi), %r11d
	testb	$8, %r11b
	je	.LBB4_15
# %bb.14:                               # %if.then89
	movslq	16608(%rdi), %r11
	movl	(%rcx,%r11,4), %r11d
	movl	%r10d, %r10d
	movl	%r11d, (%rax,%r10,4)
	addl	$2, %r9d
	movl	16576(%rdi), %r11d
	movl	%r9d, %r10d
.LBB4_15:                               # %if.end98
	testb	$4, %r11b
	je	.LBB4_17
# %bb.16:                               # %if.then103
	movslq	16612(%rdi), %r9
	movl	(%rcx,%r9,4), %ecx
	movl	%r10d, %r9d
	movl	%ecx, (%rax,%r9,4)
	incl	%r10d
.LBB4_17:                               # %if.end113
	movl	%r10d, %r9d
	movq	14704(%rdi), %r10
	cmpl	$0, 6728(%r10)
	jle	.LBB4_26
.LBB4_19:                               # %if.then120
	leaq	14704(%rdi), %rcx
	leaq	14864(%rdi), %r14
	testl	%esi, %esi
	cmoveq	%rcx, %r14
	movl	16388(%rdi), %ebx
	movl	%ebx, %r11d
	andl	$1, %r11d
	movq	14688(%rdi), %r15
	movl	7268(%rdi), %ecx
	movl	7288(%rdi), %ebp
	movl	%ebp, %esi
	imull	%r11d, %esi
	addl	(%r15), %esi
	movl	%edx, %r15d
	sarl	%cl, %r15d
	movslq	%r15d, %r15
	movq	(%r14,%r15,8), %r14
	movl	(%r14), %r14d
	testl	%ecx, %ecx
	je	.LBB4_21
# %bb.20:                               # %land.lhs.true143
	xorl	%edx, %ebx
	andl	$1, %ebx
	negl	%ebx
	andl	%ebp, %ebx
	addl	%ebx, %r14d
.LBB4_21:                               # %if.end150
	subl	%r14d, %esi
	movslq	16392(%rdi), %rcx
	movl	16436(%rdi), %edx
	andl	%r11d, %edx
	movswl	6864(%r10,%rdx,2), %edx
	imull	%esi, %edx
	movq	3568(%r10), %rbx
	movswl	(%rbx,%rcx,4), %ebx
	imull	%edx, %ebx
	subl	$-128, %ebx
	shrl	$8, %ebx
	movl	%r9d, %r14d
	movw	%bx, (%rax,%r14,4)
	movq	3568(%r10), %rbx
	movswl	2(%rbx,%rcx,4), %ecx
	imull	%edx, %ecx
	subl	$-128, %ecx
	shrl	$8, %ecx
	movw	%cx, 2(%rax,%r14,4)
	leal	1(%r9), %ecx
	movq	3200(%rdi), %rdx
	movl	1084(%rdx), %ebx
	decl	%ebx
	cmpl	%ebx, 16384(%rdi)
	jge	.LBB4_23
# %bb.22:                               # %if.then192
	movslq	16392(%rdi), %rdx
	movl	16436(%rdi), %ebx
	andl	%r11d, %ebx
	movswl	6864(%r10,%rbx,2), %ebx
	imull	%esi, %ebx
	movq	3568(%r10), %r14
	movswl	4(%r14,%rdx,4), %ebp
	imull	%ebx, %ebp
	subl	$-128, %ebp
	shrl	$8, %ebp
	movl	%ecx, %ecx
	movw	%bp, (%rax,%rcx,4)
	movq	3568(%r10), %r14
	movswl	6(%r14,%rdx,4), %edx
	imull	%ebx, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	movw	%dx, 2(%rax,%rcx,4)
	addl	$2, %r9d
	movq	3200(%rdi), %rdx
	movl	%r9d, %ecx
.LBB4_23:                               # %if.end236
	movl	1088(%rdx), %edx
	decl	%edx
	cmpl	%edx, 16388(%rdi)
	jge	.LBB4_25
# %bb.24:                               # %if.then243
	movslq	16392(%rdi), %rdx
	movslq	16372(%rdi), %r9
	addq	%rdx, %r9
	andl	16436(%rdi), %r11d
	movswl	6864(%r10,%r11,2), %edx
	imull	%edx, %esi
	movq	3568(%r10), %rdx
	movswl	(%rdx,%r9,4), %edx
	imull	%esi, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	movl	%ecx, %edi
	movw	%dx, (%rax,%rdi,4)
	movq	3568(%r10), %rdx
	movswl	2(%rdx,%r9,4), %edx
	imull	%esi, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	movw	%dx, 2(%rax,%rdi,4)
	incl	%ecx
.LBB4_25:                               # %if.end288
	movl	%ecx, %r9d
.LBB4_26:                               # %if.end288
	movl	%r9d, (%r8)
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_4:                                # %land.lhs.true22
	.cfi_def_cfa_offset 40
	cmpl	$0, 14672(%rdi)
	je	.LBB4_10
# %bb.5:                                # %if.then23
	movq	14680(%rdi), %r10
	testl	%esi, %esi
	je	.LBB4_7
# %bb.6:                                # %cond.true
	movq	14864(%rdi), %r11
	movl	$3712, %r14d                    # imm = 0xE80
	movq	%r10, %rbx
	jmp	.LBB4_8
.LBB4_7:                                # %cond.false
	movq	14704(%rdi), %rbx
	movl	$3576, %r14d                    # imm = 0xDF8
	movq	%r10, %r11
.LBB4_8:                                # %cond.end
	addq	%r14, %r10
	movl	56(%rbx), %ebx
	notl	%ebx
	addl	56(%r11), %ebx
	movslq	%ebx, %r11
	movq	(%r10,%r11,8), %r10
	cmpw	$32767, (%r10)                  # imm = 0x7FFF
	je	.LBB4_10
# %bb.9:                                # %if.then48
	movslq	16392(%rdi), %r11
	movl	(%r10,%r11,4), %r10d
	addl	%r10d, %r10d
	andl	$-65538, %r10d                  # imm = 0xFFFEFFFE
	movl	%r9d, %r11d
	movl	%r10d, (%rax,%r11,4)
	incl	%r9d
	jmp	.LBB4_10
.Lfunc_end4:
	.size	x264_mb_predict_mv_ref16x16, .Lfunc_end4-x264_mb_predict_mv_ref16x16
	.cfi_endproc
                                        # -- End function
	.type	x264_scan8,@object              # @x264_scan8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_scan8:
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	44                              # 0x2c
	.long	46                              # 0x2e
	.long	47                              # 0x2f
	.size	x264_scan8, 108

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
