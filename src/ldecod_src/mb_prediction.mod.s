	.text
	.file	"mb_prediction.c"
	.globl	mb_pred_intra4x4                # -- Begin function mb_pred_intra4x4
	.p2align	4, 0x90
	.type	mb_pred_intra4x4,@function
mb_pred_intra4x4:                       # @mb_pred_intra4x4
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	268(%rcx), %ecx
	cmpl	$0, 92(%rdi)
	jne	.LBB0_1
# %bb.2:                                # %entry
	movq	itrans4x4@GOTPCREL(%rip), %rax
	jmp	.LBB0_3
.LBB0_1:
	movq	Inv_Residual_trans_4x4@GOTPCREL(%rip), %rax
.LBB0_3:                                # %entry
	movq	(%rbx), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	decl	%ecx
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	%rax, 432(%rbx)
	movl	%esi, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	.p2align	4, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	decode_block_scan(%rax), %r15d
	movl	%r15d, %r13d
	andl	$3, %r13d
	shrl	$2, %r15d
	andl	$3, %r15d
	leal	(,%r13,4), %r14d
	movslq	36(%rbx), %rbp
	addq	%r15, %rbp
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$2, %r15d
	addl	32(%rbx), %r13d
	movq	%rbx, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	movl	%ebp, %r9d
	callq	intrapred@PLT
	cmpl	$1, %eax
	je	.LBB0_14
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	shll	$2, %r13d
	movq	%rbx, %rdi
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	*432(%rbx)
	shlq	$5, %rbp
	addq	32(%rsp), %rbp                  # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	shll	$3, %r15d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	(%rax,%rcx,8), %r15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	decode_block_scan+1(%rax), %r15d
	movl	%r15d, %r13d
	andl	$3, %r13d
	shrl	$2, %r15d
	andl	$3, %r15d
	leal	(,%r13,4), %r14d
	movslq	36(%rbx), %rbp
	addq	%r15, %rbp
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$2, %r15d
	addl	32(%rbx), %r13d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	movl	%ebp, %r9d
	callq	intrapred@PLT
	cmpl	$1, %eax
	je	.LBB0_14
# %bb.6:                                # %if.end.1
                                        #   in Loop: Header=BB0_4 Depth=1
	shll	$2, %r13d
	movq	%rbx, %rdi
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	*432(%rbx)
	shlq	$5, %rbp
	addq	32(%rsp), %rbp                  # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	shll	$3, %r15d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	(%rax,%rcx,8), %r15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	decode_block_scan+2(%rax), %r15d
	movl	%r15d, %r13d
	andl	$3, %r13d
	shrl	$2, %r15d
	andl	$3, %r15d
	leal	(,%r13,4), %r14d
	movslq	36(%rbx), %rbp
	addq	%r15, %rbp
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$2, %r15d
	addl	32(%rbx), %r13d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	movl	%ebp, %r9d
	callq	intrapred@PLT
	cmpl	$1, %eax
	je	.LBB0_14
# %bb.7:                                # %if.end.2
                                        #   in Loop: Header=BB0_4 Depth=1
	shll	$2, %r13d
	movq	%rbx, %rdi
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	*432(%rbx)
	shlq	$5, %rbp
	addq	32(%rsp), %rbp                  # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	shll	$3, %r15d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	(%rax,%rcx,8), %r15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzbl	decode_block_scan+3(%rax), %r15d
	movl	%r15d, %r13d
	andl	$3, %r13d
	shrl	$2, %r15d
	andl	$3, %r15d
	leal	(,%r13,4), %r14d
	movslq	36(%rbx), %rbp
	addq	%r15, %rbp
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$2, %r15d
	addl	32(%rbx), %r13d
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r14d, %edx
	movl	%r15d, %ecx
	movl	%r13d, %r8d
	movl	%ebp, %r9d
	callq	intrapred@PLT
	cmpl	$1, %eax
	je	.LBB0_14
# %bb.8:                                # %if.end.3
                                        #   in Loop: Header=BB0_4 Depth=1
	shll	$2, %r13d
	movq	%rbx, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	%r14d, %edx
	movl	%r15d, %ecx
	callq	*432(%rbx)
	shlq	$5, %rbp
	addq	32(%rsp), %rbp                  # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	shll	$3, %r15d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	(%rax,%rcx,8), %r15
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movl	%r14d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$4, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpl	$16, %eax
	jne	.LBB0_4
# %bb.9:                                # %for.end26
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	268(%rax), %eax
	testl	%eax, %eax
	je	.LBB0_12
# %bb.10:                               # %for.end26
	cmpl	$3, %eax
	je	.LBB0_12
# %bb.11:                               # %if.then33
	movq	%rbx, %rdi
	movl	44(%rsp), %esi                  # 4-byte Reload
	callq	intra_cr_decoding@PLT
.LBB0_12:                               # %if.end34
	cmpl	$0, 284(%rbx)
	movq	16(%rsp), %rax                  # 8-byte Reload
	je	.LBB0_14
# %bb.13:                               # %if.then37
	movl	$0, 1240(%rax)
.LBB0_14:                               # %cleanup
	movl	$1, %eax
	addq	$56, %rsp
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
.Lfunc_end0:
	.size	mb_pred_intra4x4, .Lfunc_end0-mb_pred_intra4x4
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_intra16x16              # -- Begin function mb_pred_intra16x16
	.p2align	4, 0x90
	.type	mb_pred_intra16x16,@function
mb_pred_intra16x16:                     # @mb_pred_intra16x16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	268(%rdx), %ebp
	movl	360(%rdi), %edx
	callq	intrapred16x16@PLT
	movzbl	360(%rbx), %eax
	movb	%al, 372(%rbx)
	movq	%rbx, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	iMBtrans4x4@PLT
	movl	268(%r14), %eax
	testl	%eax, %eax
	je	.LBB1_3
# %bb.1:                                # %entry
	cmpl	$3, %eax
	je	.LBB1_3
# %bb.2:                                # %if.then
	decl	%ebp
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	intra_cr_decoding@PLT
.LBB1_3:                                # %if.end
	movq	(%rbx), %rax
	movl	$0, 1240(%rax)
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	mb_pred_intra16x16, .Lfunc_end1-mb_pred_intra16x16
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_intra8x8                # -- Begin function mb_pred_intra8x8
	.p2align	4, 0x90
	.type	mb_pred_intra8x8,@function
mb_pred_intra8x8:                       # @mb_pred_intra8x8
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
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	cmpl	$0, 92(%rdi)
	jne	.LBB2_1
# %bb.2:                                # %entry
	movq	itrans8x8@GOTPCREL(%rip), %rax
	jmp	.LBB2_3
.LBB2_1:
	movq	Inv_Residual_trans_8x8@GOTPCREL(%rip), %rax
.LBB2_3:                                # %entry
	movl	268(%r14), %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movq	%rax, 440(%rbx)
	movl	%r12d, %ebp
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	intrapred8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*440(%rbx)
	movslq	48(%rbx), %rax
	leaq	(%r15,%rax,8), %rdi
	movq	1256(%r13), %rax
	movq	(%rax,%rbp,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	intrapred8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	*440(%rbx)
	movslq	48(%rbx), %rax
	leaq	(%r15,%rax,8), %rdi
	movq	1256(%r13), %rax
	movq	(%rax,%rbp,8), %rsi
	movl	44(%rbx), %edx
	addl	$8, %edx
	movl	$8, %ecx
	callq	copy_image_data_8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	intrapred8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	*440(%rbx)
	movslq	48(%rbx), %rax
	leaq	(%r15,%rax,8), %rdi
	addq	$64, %rdi
	movq	1256(%r13), %rax
	movq	(%rax,%rbp,8), %rsi
	addq	$64, %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$8, %edx
	movl	$8, %ecx
	callq	intrapred8x8@PLT
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$8, %edx
	movl	$8, %ecx
	callq	*440(%rbx)
	movslq	48(%rbx), %rax
	leaq	(%r15,%rax,8), %rdi
	addq	$64, %rdi
	movq	1256(%r13), %rax
	movq	(%rax,%rbp,8), %rsi
	addq	$64, %rsi
	movl	44(%rbx), %edx
	addl	$8, %edx
	movl	$8, %ecx
	callq	copy_image_data_8x8@PLT
	movl	268(%r14), %eax
	testl	%eax, %eax
	je	.LBB2_6
# %bb.4:                                # %entry
	cmpl	$3, %eax
	je	.LBB2_6
# %bb.5:                                # %if.then
	movl	4(%rsp), %esi                   # 4-byte Reload
	decl	%esi
	movq	%rbx, %rdi
	callq	intra_cr_decoding@PLT
.LBB2_6:                                # %if.end
	cmpl	$0, 284(%rbx)
	je	.LBB2_8
# %bb.7:                                # %if.then14
	movl	$0, 1240(%r13)
.LBB2_8:                                # %if.end15
	movl	$1, %eax
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
.Lfunc_end2:
	.size	mb_pred_intra8x8, .Lfunc_end2-mb_pred_intra8x8
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_skip                    # -- Begin function mb_pred_skip
	.p2align	4, 0x90
	.type	mb_pred_skip,@function
mb_pred_skip:                           # @mb_pred_skip
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
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	8(%rdi), %r12
	callq	set_chroma_vector
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	48(%rbx), %rax
	leaq	(%r15,%rax,8), %rdi
	movq	1248(%r13), %rax
	movl	%ebp, %ecx
	movq	(%rax,%rcx,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_16x16@PLT
	movl	268(%r14), %eax
	testl	%eax, %eax
	je	.LBB3_3
# %bb.1:                                # %entry
	cmpl	$3, %eax
	je	.LBB3_3
# %bb.2:                                # %if.then
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	(%rax), %rdi
	movq	1248(%r13), %rax
	movq	8(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	8(%rax), %rdi
	movq	1248(%r13), %rax
	movq	16(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
.LBB3_3:                                # %if.end
	movl	$1, %eax
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
.Lfunc_end3:
	.size	mb_pred_skip, .Lfunc_end3-mb_pred_skip
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_chroma_vector
	.type	set_chroma_vector,@function
set_chroma_vector:                      # @set_chroma_vector
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	cmpl	$0, 128(%rax)
	je	.LBB4_1
# %bb.54:                               # %if.else104
	cmpl	$0, 384(%rdi)
	je	.LBB4_55
# %bb.58:                               # %if.then108
	movl	24(%rdi), %r8d
	movswq	114(%rdi), %rdx
	movzbl	256(%rax,%rdx), %esi
	testb	$1, %r8b
	jne	.LBB4_59
# %bb.65:                               # %for.cond116.preheader.us.preheader
	testb	%sil, %sil
	jle	.LBB4_66
# %bb.69:                               # %for.body123.lr.ph.us
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rax, %rsi
	addq	$13552, %rsi                    # imm = 0x34F0
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_70:                               # %for.body123.us.us
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rax,%rdx,8), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$2, (%r9)
	setne	%r9b
	addb	%r9b, %r9b
	addb	$-2, %r9b
	movb	%r9b, (%rsi,%r8)
	incq	%r8
	movsbq	256(%rax,%rdx), %r9
	cmpq	%r9, %r8
	jl	.LBB4_70
.LBB4_66:                               # %for.inc169.us
	cmpb	$0, 257(%rax,%rdx)
	jle	.LBB4_90
# %bb.67:                               # %for.body123.lr.ph.us.1
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rax, %rsi
	addq	$13568, %rsi                    # imm = 0x3500
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_68:                               # %for.body123.us.us.1
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rax,%rdx,8), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$2, (%r9)
	setne	%r9b
	addb	%r9b, %r9b
	addb	$-2, %r9b
	movb	%r9b, (%rsi,%r8)
	incq	%r8
	movsbq	257(%rax,%rdx), %r9
	cmpq	%r9, %r8
	jl	.LBB4_68
	jmp	.LBB4_90
.LBB4_1:                                # %if.then
	movl	184(%rax), %edx
	cmpl	$1, %edx
	je	.LBB4_6
# %bb.2:                                # %if.then
	cmpl	$2, %edx
	jne	.LBB4_32
# %bb.3:                                # %for.cond36.preheader
	movsbq	256(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_24
# %bb.4:                                # %for.body47.lr.ph
	movq	264(%rax), %rsi
	cmpb	$1, %dl
	jne	.LBB4_20
# %bb.5:
	xorl	%r8d, %r8d
	jmp	.LBB4_22
.LBB4_55:                               # %for.cond173.preheader
	movsbq	256(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_79
# %bb.56:                               # %iter.check
	cmpb	$8, %dl
	jae	.LBB4_71
# %bb.57:
	xorl	%esi, %esi
	jmp	.LBB4_78
.LBB4_59:                               # %for.cond116.preheader.preheader
	testb	%sil, %sil
	jle	.LBB4_62
# %bb.60:                               # %for.body123.lr.ph
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rax, %rsi
	addq	$13552, %rsi                    # imm = 0x34F0
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_61:                               # %for.body123
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rax,%rdx,8), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$1, (%r9)
	sete	%r9b
	addb	%r9b, %r9b
	movb	%r9b, (%rsi,%r8)
	incq	%r8
	movsbq	256(%rax,%rdx), %r9
	cmpq	%r9, %r8
	jl	.LBB4_61
.LBB4_62:                               # %for.inc169
	cmpb	$0, 257(%rax,%rdx)
	jle	.LBB4_90
# %bb.63:                               # %for.body123.lr.ph.1
	movq	%rdx, %rsi
	shlq	$4, %rsi
	addq	%rax, %rsi
	addq	$13568, %rsi                    # imm = 0x3500
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_64:                               # %for.body123.1
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rax,%rdx,8), %r9
	movq	(%r9,%r8,8), %r9
	cmpl	$1, (%r9)
	sete	%r9b
	addb	%r9b, %r9b
	movb	%r9b, (%rsi,%r8)
	incq	%r8
	movsbq	257(%rax,%rdx), %r9
	cmpq	%r9, %r8
	jl	.LBB4_64
	jmp	.LBB4_90
.LBB4_6:                                # %for.cond.preheader
	movsbq	256(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_13
# %bb.7:                                # %for.body7.lr.ph
	movq	264(%rax), %rsi
	cmpb	$1, %dl
	jne	.LBB4_9
# %bb.8:
	xorl	%r8d, %r8d
	jmp	.LBB4_11
.LBB4_32:                               # %for.cond79.preheader
	movsbq	256(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_43
# %bb.33:                               # %iter.check406
	cmpb	$8, %dl
	jae	.LBB4_35
# %bb.34:
	xorl	%esi, %esi
	jmp	.LBB4_42
.LBB4_71:                               # %vector.main.loop.iter.check
	cmpb	$64, %dl
	jae	.LBB4_73
# %bb.72:
	xorl	%esi, %esi
	jmp	.LBB4_75
.LBB4_20:                               # %for.body47.lr.ph.new
	movl	%edx, %r9d
	andl	$126, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_21:                               # %for.body47
                                        # =>This Inner Loop Header: Depth=1
	movl	848876(%rcx), %r10d
	movq	(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	setne	%r10b
	addb	%r10b, %r10b
	movb	%r10b, 13552(%rax,%r8)
	movl	848876(%rcx), %r10d
	movq	8(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	setne	%r10b
	addb	%r10b, %r10b
	movb	%r10b, 13553(%rax,%r8)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB4_21
.LBB4_22:                               # %for.inc73.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB4_24
# %bb.23:                               # %for.body47.epil
	movl	848876(%rcx), %edx
	movq	(%rsi,%r8,8), %rsi
	cmpl	(%rsi), %edx
	setne	%dl
	addb	%dl, %dl
	movb	%dl, 13552(%rax,%r8)
.LBB4_24:                               # %for.inc73
	movsbq	257(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_90
# %bb.25:                               # %for.body47.lr.ph.1
	movq	272(%rax), %rsi
	cmpb	$1, %dl
	jne	.LBB4_27
# %bb.26:
	xorl	%r8d, %r8d
	jmp	.LBB4_29
.LBB4_27:                               # %for.body47.lr.ph.1.new
	movl	%edx, %r9d
	andl	$126, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_28:                               # %for.body47.1
                                        # =>This Inner Loop Header: Depth=1
	movl	848876(%rcx), %r10d
	movq	(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	setne	%r10b
	addb	%r10b, %r10b
	movb	%r10b, 13568(%rax,%r8)
	movl	848876(%rcx), %r10d
	movq	8(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	setne	%r10b
	addb	%r10b, %r10b
	movb	%r10b, 13569(%rax,%r8)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB4_28
.LBB4_29:                               # %if.end197.loopexit458.unr-lcssa
	testb	$1, %dl
	je	.LBB4_90
# %bb.30:                               # %for.body47.1.epil
	movl	848876(%rcx), %edx
	movq	(%rsi,%r8,8), %rsi
	cmpl	(%rsi), %edx
	setne	%dl
	addb	%dl, %dl
	movb	%dl, 13568(%rax,%r8)
	jmp	.LBB4_90
.LBB4_9:                                # %for.body7.lr.ph.new
	movl	%edx, %r9d
	andl	$126, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_10:                               # %for.body7
                                        # =>This Inner Loop Header: Depth=1
	movl	848876(%rcx), %r10d
	movq	(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	sete	%r10b
	addb	%r10b, %r10b
	addb	$-2, %r10b
	movb	%r10b, 13552(%rax,%r8)
	movl	848876(%rcx), %r10d
	movq	8(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	sete	%r10b
	addb	%r10b, %r10b
	addb	$-2, %r10b
	movb	%r10b, 13553(%rax,%r8)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB4_10
.LBB4_11:                               # %for.inc26.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB4_13
# %bb.12:                               # %for.body7.epil
	movl	848876(%rcx), %edx
	movq	(%rsi,%r8,8), %rsi
	cmpl	(%rsi), %edx
	sete	%dl
	addb	%dl, %dl
	addb	$-2, %dl
	movb	%dl, 13552(%rax,%r8)
.LBB4_13:                               # %for.inc26
	movsbq	257(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_90
# %bb.14:                               # %for.body7.lr.ph.1
	movq	272(%rax), %rsi
	cmpb	$1, %dl
	jne	.LBB4_16
# %bb.15:
	xorl	%r8d, %r8d
	jmp	.LBB4_18
.LBB4_16:                               # %for.body7.lr.ph.1.new
	movl	%edx, %r9d
	andl	$126, %r9d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_17:                               # %for.body7.1
                                        # =>This Inner Loop Header: Depth=1
	movl	848876(%rcx), %r10d
	movq	(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	sete	%r10b
	addb	%r10b, %r10b
	addb	$-2, %r10b
	movb	%r10b, 13568(%rax,%r8)
	movl	848876(%rcx), %r10d
	movq	8(%rsi,%r8,8), %r11
	cmpl	(%r11), %r10d
	sete	%r10b
	addb	%r10b, %r10b
	addb	$-2, %r10b
	movb	%r10b, 13569(%rax,%r8)
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB4_17
.LBB4_18:                               # %if.end197.loopexit457.unr-lcssa
	testb	$1, %dl
	je	.LBB4_90
# %bb.19:                               # %for.body7.1.epil
	movl	848876(%rcx), %edx
	movq	(%rsi,%r8,8), %rsi
	cmpl	(%rsi), %edx
	sete	%dl
	addb	%dl, %dl
	addb	$-2, %dl
	movb	%dl, 13568(%rax,%r8)
	jmp	.LBB4_90
.LBB4_35:                               # %vector.main.loop.iter.check408
	cmpb	$64, %dl
	jae	.LBB4_37
# %bb.36:
	xorl	%esi, %esi
	jmp	.LBB4_39
.LBB4_73:                               # %vector.ph
	movl	%edx, %esi
	andl	$64, %esi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 13552(%rax)
	movups	%xmm0, 13568(%rax)
	movups	%xmm0, 13584(%rax)
	movups	%xmm0, 13600(%rax)
	cmpq	%rdx, %rsi
	je	.LBB4_79
# %bb.74:                               # %vec.epilog.iter.check
	testb	$56, %dl
	je	.LBB4_78
.LBB4_75:                               # %vec.epilog.ph
	movq	%rsi, %r8
	movl	%edx, %esi
	andl	$120, %esi
	.p2align	4, 0x90
.LBB4_76:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 13552(%rax,%r8)
	addq	$8, %r8
	cmpq	%r8, %rsi
	jne	.LBB4_76
# %bb.77:                               # %vec.epilog.middle.block
	cmpq	%rdx, %rsi
	je	.LBB4_79
	.p2align	4, 0x90
.LBB4_78:                               # %for.body184
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 13552(%rax,%rsi)
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	.LBB4_78
.LBB4_79:                               # %for.inc193
	movsbq	257(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_90
# %bb.80:                               # %iter.check379
	cmpb	$8, %dl
	jae	.LBB4_82
# %bb.81:
	xorl	%esi, %esi
	jmp	.LBB4_89
.LBB4_82:                               # %vector.main.loop.iter.check381
	cmpb	$64, %dl
	jae	.LBB4_84
# %bb.83:
	xorl	%esi, %esi
	jmp	.LBB4_86
.LBB4_84:                               # %vector.ph382
	movl	%edx, %esi
	andl	$64, %esi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 13568(%rax)
	movups	%xmm0, 13584(%rax)
	movups	%xmm0, 13600(%rax)
	movups	%xmm0, 13616(%rax)
	cmpq	%rdx, %rsi
	je	.LBB4_90
# %bb.85:                               # %vec.epilog.iter.check392
	testb	$56, %dl
	je	.LBB4_89
.LBB4_86:                               # %vec.epilog.ph391
	movq	%rsi, %r8
	movl	%edx, %esi
	andl	$120, %esi
	.p2align	4, 0x90
.LBB4_87:                               # %vec.epilog.vector.body399
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 13568(%rax,%r8)
	addq	$8, %r8
	cmpq	%r8, %rsi
	jne	.LBB4_87
# %bb.88:                               # %vec.epilog.middle.block389
	cmpq	%rdx, %rsi
	je	.LBB4_90
	.p2align	4, 0x90
.LBB4_89:                               # %for.body184.1
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 13568(%rax,%rsi)
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	.LBB4_89
	jmp	.LBB4_90
.LBB4_37:                               # %vector.ph409
	movl	%edx, %esi
	andl	$64, %esi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 13552(%rax)
	movups	%xmm0, 13568(%rax)
	movups	%xmm0, 13584(%rax)
	movups	%xmm0, 13600(%rax)
	cmpq	%rdx, %rsi
	je	.LBB4_43
# %bb.38:                               # %vec.epilog.iter.check419
	testb	$56, %dl
	je	.LBB4_42
.LBB4_39:                               # %vec.epilog.ph418
	movq	%rsi, %r8
	movl	%edx, %esi
	andl	$120, %esi
	.p2align	4, 0x90
.LBB4_40:                               # %vec.epilog.vector.body426
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 13552(%rax,%r8)
	addq	$8, %r8
	cmpq	%r8, %rsi
	jne	.LBB4_40
# %bb.41:                               # %vec.epilog.middle.block416
	cmpq	%rdx, %rsi
	je	.LBB4_43
	.p2align	4, 0x90
.LBB4_42:                               # %for.body90
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 13552(%rax,%rsi)
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	.LBB4_42
.LBB4_43:                               # %for.inc99
	movsbq	257(%rax), %rdx
	testq	%rdx, %rdx
	jle	.LBB4_90
# %bb.44:                               # %iter.check433
	cmpb	$8, %dl
	jae	.LBB4_46
# %bb.45:
	xorl	%esi, %esi
	jmp	.LBB4_53
.LBB4_46:                               # %vector.main.loop.iter.check435
	cmpb	$64, %dl
	jae	.LBB4_48
# %bb.47:
	xorl	%esi, %esi
	jmp	.LBB4_50
.LBB4_48:                               # %vector.ph436
	movl	%edx, %esi
	andl	$64, %esi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 13568(%rax)
	movups	%xmm0, 13584(%rax)
	movups	%xmm0, 13600(%rax)
	movups	%xmm0, 13616(%rax)
	cmpq	%rdx, %rsi
	je	.LBB4_90
# %bb.49:                               # %vec.epilog.iter.check446
	testb	$56, %dl
	je	.LBB4_53
.LBB4_50:                               # %vec.epilog.ph445
	movq	%rsi, %r8
	movl	%edx, %esi
	andl	$120, %esi
	.p2align	4, 0x90
.LBB4_51:                               # %vec.epilog.vector.body453
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, 13568(%rax,%r8)
	addq	$8, %r8
	cmpq	%r8, %rsi
	jne	.LBB4_51
# %bb.52:                               # %vec.epilog.middle.block443
	cmpq	%rdx, %rsi
	je	.LBB4_90
	.p2align	4, 0x90
.LBB4_53:                               # %for.body90.1
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, 13568(%rax,%rsi)
	incq	%rsi
	cmpq	%rdx, %rsi
	jb	.LBB4_53
.LBB4_90:                               # %if.end197
	cmpl	$0, 184(%rax)
	jne	.LBB4_92
# %bb.91:                               # %lor.lhs.false
	cmpl	$0, 384(%rdi)
	je	.LBB4_93
.LBB4_92:                               # %cond.true
	movl	849216(%rcx), %ecx
	sarl	%ecx
	movl	%ecx, 13336(%rax)
	retq
.LBB4_93:                               # %cond.false
	movl	849216(%rcx), %ecx
	movl	%ecx, 13336(%rax)
	retq
.Lfunc_end4:
	.size	set_chroma_vector, .Lfunc_end4-set_chroma_vector
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_sp_skip                 # -- Begin function mb_pred_sp_skip
	.p2align	4, 0x90
	.type	mb_pred_sp_skip,@function
mb_pred_sp_skip:                        # @mb_pred_sp_skip
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r14
	callq	set_chroma_vector
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%r14, %rdi
	movl	%ebp, %esi
	movl	$1, %edx
	callq	iTransform@PLT
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	mb_pred_sp_skip, .Lfunc_end5-mb_pred_sp_skip
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_p_inter8x8              # -- Begin function mb_pred_p_inter8x8
	.p2align	4, 0x90
	.type	mb_pred_p_inter8x8,@function
mb_pred_p_inter8x8:                     # @mb_pred_p_inter8x8
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	xorl	%ecx, %ecx
	cmpl	$3, 848776(%rax)
	jne	.LBB6_2
# %bb.1:                                # %land.rhs
	xorl	%ecx, %ecx
	cmpl	$0, 96(%rbx)
	sete	%cl
.LBB6_2:                                # %land.end
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	set_chroma_vector
	movzbl	364(%rbx), %eax
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movsbl	368(%rbx), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	cmpb	$5, %al
	sete	%cl
	leal	1(%rcx), %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	orl	$2, %ecx
	cmpb	$7, %al
	movl	$4, %edx
	cmovnel	%ecx, %edx
	xorl	%ecx, %ecx
	cmpb	$4, %al
	sete	%cl
	movl	$1, %r15d
	cmovnel	%edx, %r15d
	movl	%eax, %edx
	andb	$-2, %dl
	xorl	%esi, %esi
	cmpb	$4, %dl
	sete	%sil
	leal	4(,%rsi,4), %r12d
	cmpb	$6, %al
	leal	4(,%rcx,4), %eax
	movl	$8, %r13d
	cmovnel	%eax, %r13d
	xorl	%r14d, %r14d
	movl	28(%rsp), %esi                  # 4-byte Reload
	.p2align	4, 0x90
.LBB6_3:                                # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	movl	%esi, %ebx
	callq	perform_mc@PLT
	movl	%ebx, %esi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmpl	%r14d, %r15d
	jg	.LBB6_3
# %bb.4:                                # %for.end
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	365(%rcx), %eax
	movsbl	369(%rcx), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	cmpb	$5, %al
	sete	%cl
	leal	1(%rcx), %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	orl	$6, %ecx
	cmpb	$7, %al
	movl	$8, %edx
	cmovel	%edx, %ecx
	xorl	%r8d, %r8d
	cmpb	$4, %al
	movl	$5, %r15d
	cmovnel	%ecx, %r15d
	sete	%r8b
	movl	%eax, %ecx
	andb	$-2, %cl
	xorl	%edi, %edi
	cmpb	$4, %cl
	sete	%dil
	leal	4(,%rdi,4), %r12d
	cmpb	$6, %al
	leal	4(,%r8,4), %r13d
	cmovel	%edx, %r13d
	movl	$4, %r14d
	.p2align	4, 0x90
.LBB6_5:                                # %for.body36.1
                                        # =>This Inner Loop Header: Depth=1
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movl	%ebx, %esi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmpl	%r14d, %r15d
	jg	.LBB6_5
# %bb.6:                                # %for.end.1
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movzbl	366(%rbx), %eax
	movsbl	370(%rbx), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	cmpb	$5, %al
	sete	%cl
	leal	1(%rcx), %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	orl	$10, %ecx
	cmpb	$7, %al
	movl	$12, %edx
	cmovnel	%ecx, %edx
	xorl	%ecx, %ecx
	cmpb	$4, %al
	sete	%cl
	movl	$9, %r15d
	cmovnel	%edx, %r15d
	movl	%eax, %edx
	andb	$-2, %dl
	xorl	%edi, %edi
	cmpb	$4, %dl
	sete	%dil
	leal	4(,%rdi,4), %r12d
	cmpb	$6, %al
	leal	4(,%rcx,4), %eax
	movl	$8, %r13d
	cmovnel	%eax, %r13d
	movl	$8, %r14d
	.p2align	4, 0x90
.LBB6_7:                                # %for.body36.2
                                        # =>This Inner Loop Header: Depth=1
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movl	44(%rsp), %esi                  # 4-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmpl	%r14d, %r15d
	jg	.LBB6_7
# %bb.8:                                # %for.end.2
	movzbl	367(%rbx), %eax
	movsbl	371(%rbx), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	cmpb	$5, %al
	sete	%cl
	leal	1(%rcx), %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	orl	$14, %ecx
	cmpb	$7, %al
	movl	$16, %edx
	cmovnel	%ecx, %edx
	xorl	%ecx, %ecx
	cmpb	$4, %al
	sete	%cl
	movl	$13, %r15d
	cmovnel	%edx, %r15d
	movl	%eax, %edx
	andb	$-2, %dl
	xorl	%edi, %edi
	cmpb	$4, %dl
	sete	%dil
	leal	4(,%rdi,4), %r12d
	cmpb	$6, %al
	leal	4(,%rcx,4), %eax
	movl	$8, %r13d
	cmovnel	%eax, %r13d
	movl	$12, %r14d
	.p2align	4, 0x90
.LBB6_9:                                # %for.body36.3
                                        # =>This Inner Loop Header: Depth=1
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	movl	12(%rsp), %ecx                  # 4-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movl	44(%rsp), %esi                  # 4-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmpl	%r14d, %r15d
	jg	.LBB6_9
# %bb.10:                               # %for.end.3
	movq	%rbx, %rdi
	movl	44(%rsp), %edx                  # 4-byte Reload
	callq	iTransform@PLT
	cmpl	$0, 284(%rbx)
	je	.LBB6_12
# %bb.11:                               # %if.then
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	$0, 1240(%rax)
.LBB6_12:                               # %if.end
	movl	$1, %eax
	addq	$56, %rsp
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
.Lfunc_end6:
	.size	mb_pred_p_inter8x8, .Lfunc_end6-mb_pred_p_inter8x8
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_p_inter16x16            # -- Begin function mb_pred_p_inter16x16
	.p2align	4, 0x90
	.type	mb_pred_p_inter16x16,@function
mb_pred_p_inter16x16:                   # @mb_pred_p_inter16x16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	8(%rdi), %rax
	xorl	%r15d, %r15d
	cmpl	$3, 848776(%rax)
	sete	%r15b
	callq	set_chroma_vector
	movsbl	368(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r14, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r15d, %edx
	callq	iTransform@PLT
	cmpl	$0, 284(%rbx)
	je	.LBB7_2
# %bb.1:                                # %if.then
	movl	$0, 1240(%r12)
.LBB7_2:                                # %if.end
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	mb_pred_p_inter16x16, .Lfunc_end7-mb_pred_p_inter16x16
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_p_inter16x8             # -- Begin function mb_pred_p_inter16x8
	.p2align	4, 0x90
	.type	mb_pred_p_inter16x8,@function
mb_pred_p_inter16x8:                    # @mb_pred_p_inter16x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	8(%rdi), %rax
	xorl	%r14d, %r14d
	cmpl	$3, 848776(%rax)
	sete	%r14b
	callq	set_chroma_vector
	movsbl	368(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movsbl	370(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	iTransform@PLT
	cmpl	$0, 284(%rbx)
	je	.LBB8_2
# %bb.1:                                # %if.then
	movl	$0, 1240(%r12)
.LBB8_2:                                # %if.end
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	mb_pred_p_inter16x8, .Lfunc_end8-mb_pred_p_inter16x8
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_p_inter8x16             # -- Begin function mb_pred_p_inter8x16
	.p2align	4, 0x90
	.type	mb_pred_p_inter8x16,@function
mb_pred_p_inter8x16:                    # @mb_pred_p_inter8x16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	8(%rdi), %rax
	xorl	%r14d, %r14d
	cmpl	$3, 848776(%rax)
	sete	%r14b
	callq	set_chroma_vector
	movsbl	368(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movsbl	369(%rbx), %ecx
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	iTransform@PLT
	cmpl	$0, 284(%rbx)
	je	.LBB9_2
# %bb.1:                                # %if.then
	movl	$0, 1240(%r12)
.LBB9_2:                                # %if.end
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	mb_pred_p_inter8x16, .Lfunc_end9-mb_pred_p_inter8x16
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_b_d8x8temporal          # -- Begin function mb_pred_b_d8x8temporal
	.p2align	4, 0x90
	.type	mb_pred_b_d8x8temporal,@function
mb_pred_b_d8x8temporal:                 # @mb_pred_b_d8x8temporal
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	8(%rdi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movswq	114(%rdi), %rbp
	movq	264(%r13,%rbp,8), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	272(%r13,%rbp,8), %r15
	callq	set_chroma_vector
	leaq	336(%r13), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movl	$4, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_1:                               # %for.body598.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	movq	72(%rsp), %r14                  # 8-byte Reload
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	36(%rsp), %ecx                  # 4-byte Reload
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	80(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	addq	$4, %r14
	addq	$4, 40(%rsp)                    # 8-byte Folded Spill
	cmpq	$4, %rax
	je	.LBB10_72
.LBB10_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
                                        #       Child Loop BB10_37 Depth 3
                                        #       Child Loop BB10_24 Depth 3
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movsbl	368(%rbx,%rax), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB10_5
	.p2align	4, 0x90
.LBB10_3:                               # %if.then290
                                        #   in Loop: Header=BB10_5 Depth=2
	movw	$0, 24(%r12)
	movq	$0, 16(%r12)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB10_4:                               # %if.end577
                                        #   in Loop: Header=BB10_5 Depth=2
	movsbq	%cl, %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, (%r12)
	movsbq	%al, %rax
	movq	(%r15,%rax,8), %rax
	movq	%rax, 8(%r12)
	incq	%r14
	cmpq	40(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB10_1
.LBB10_5:                               # %for.body16
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_37 Depth 3
                                        #       Child Loop BB10_24 Depth 3
	movzbl	decode_block_scan(%r14), %ecx
	movl	%ecx, %edx
	andl	$3, %edx
	shrl	$2, %ecx
	andl	$3, %ecx
	movslq	32(%rbx), %rax
	addq	%rdx, %rax
	movslq	36(%rbx), %rsi
	addq	%rcx, %rsi
	movslq	40(%rbx), %rdi
	addq	%rcx, %rdi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rcx), %rcx
	movq	%rax, %rdx
	shlq	$5, %rdx
	movq	(%rcx,%rsi,8), %r12
	addq	%rdx, %r12
	movq	(%r15), %r9
	movq	152(%r9), %rcx
	movl	%edi, %esi
	andl	$-2, %esi
	movl	%edi, %r8d
	shrl	%r8d
	andl	$1, %r8d
	orl	%esi, %r8d
	movslq	%r8d, %r8
	movl	%eax, %esi
	andl	$-2, %esi
	shrl	%eax
	andl	$1, %eax
	orl	%esi, %eax
	movslq	%eax, %rsi
	shlq	$5, %rsi
	movq	(%rcx,%r8,8), %rax
	addq	%rsi, %rax
	movl	128(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB10_13
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$0, 384(%rbx)
	jne	.LBB10_14
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	272(%r13), %r8
	movq	(%r8), %r8
	movl	388(%r8), %r9d
	cmpl	$1, %r9d
	je	.LBB10_10
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$3, %r9d
	jne	.LBB10_14
# %bb.9:                                # %land.lhs.true45
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	184(%r8), %r8
	movslq	24(%rbx), %r9
	cmpb	$0, (%r8,%r9)
	je	.LBB10_14
.LBB10_10:                              # %if.then60
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %r9d
	movq	288(%r13), %r8
	movq	304(%r13), %rax
	movq	(%rax), %rax
	movl	%r9d, %r10d
	subl	4(%rax), %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movq	(%r8), %r8
	subl	4(%r8), %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	sarl	%edi
	movq	24(%rsp), %r9                   # 8-byte Reload
	movq	16(%r9), %r9
	movl	3144(%r9), %r9d
	movslq	%edi, %rdi
	cmpl	%r10d, %r11d
	jbe	.LBB10_49
# %bb.11:                               # %if.then75
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	152(%r8), %rax
	movq	(%rax,%rdi,8), %rax
	testl	%r9d, %r9d
	jne	.LBB10_12
.LBB10_62:                              # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=2
	addq	%rdx, %rax
	jmp	.LBB10_14
	.p2align	4, 0x90
.LBB10_13:                              # %if.else125
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	16(%r10), %r10
	cmpl	$0, 3136(%r10)
	jne	.LBB10_14
# %bb.28:                               # %land.lhs.true128
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$0, 176(%r13)
	je	.LBB10_58
# %bb.29:                               # %land.lhs.true210
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	184(%r13), %r11d
	cmpl	(%r9), %r11d
	je	.LBB10_14
# %bb.30:                               # %land.lhs.true215
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$0, 96(%r9)
	je	.LBB10_14
# %bb.31:                               # %if.then218
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	3144(%r10), %eax
	movq	240(%r9), %r9
	cmpl	$1, %r11d
	jne	.LBB10_66
# %bb.32:                               # %if.then222
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	224(%r9), %r9
	movq	152(%r9), %r9
	testl	%eax, %eax
	jne	.LBB10_67
# %bb.33:                               # %cond.false236
                                        #   in Loop: Header=BB10_5 Depth=2
	addq	(%r9,%rdi,8), %rdx
	jmp	.LBB10_71
.LBB10_49:                              # %if.else
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	152(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	testl	%r9d, %r9d
	je	.LBB10_62
.LBB10_12:                              # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=2
	addq	%rsi, %rax
	.p2align	4, 0x90
.LBB10_14:                              # %if.end276
                                        #   in Loop: Header=BB10_5 Depth=2
	xorl	%edx, %edx
	cmpb	$-1, 24(%rax)
	sete	%dl
	cmpb	$-1, 24(%rax,%rdx)
	je	.LBB10_3
# %bb.15:                               # %if.else298
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%ecx, %ecx
	je	.LBB10_18
# %bb.16:                               # %land.lhs.true301
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$0, 384(%rbx)
	movq	(%rax,%rdx,8), %rdi
	movl	(%rdi), %esi
	je	.LBB10_21
# %bb.17:                               # %land.lhs.true304
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%esi, %esi
	jne	.LBB10_35
	jmp	.LBB10_22
	.p2align	4, 0x90
.LBB10_18:                              # %land.lhs.true323
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	176(%r13), %esi
	cmpl	$1, %esi
	je	.LBB10_34
# %bb.19:                               # %land.lhs.true323
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%esi, %esi
	jne	.LBB10_35
# %bb.20:                               # %land.lhs.true327
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	(%rax,%rdx,8), %rdi
	cmpl	$0, (%rdi)
	jne	.LBB10_22
	jmp	.LBB10_35
.LBB10_21:                              # %land.lhs.true313
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%esi, %esi
	je	.LBB10_35
.LBB10_22:                              # %if.then345
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	136(%r13), %r8d
	movsbl	256(%r13,%rbp), %esi
	cmpl	%esi, %r8d
	cmovll	%r8d, %esi
	testl	%esi, %esi
	jle	.LBB10_40
# %bb.23:                               # %for.body355.lr.ph
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	264(%r13,%rbp,8), %r8
	movl	%esi, %r9d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB10_24:                              # %for.body355
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r8,%rsi,8), %r10
	cmpq	%rdi, 224(%r10)
	je	.LBB10_41
# %bb.25:                               # %lor.lhs.false368
                                        #   in Loop: Header=BB10_24 Depth=3
	cmpq	%rdi, 232(%r10)
	je	.LBB10_41
# %bb.26:                               # %lor.lhs.false381
                                        #   in Loop: Header=BB10_24 Depth=3
	cmpq	%rdi, 240(%r10)
	je	.LBB10_41
# %bb.27:                               # %if.else395
                                        #   in Loop: Header=BB10_24 Depth=3
	incq	%rsi
	cmpq	%rsi, %r9
	jne	.LBB10_24
	jmp	.LBB10_39
.LBB10_34:                              # %land.lhs.true338
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	(%rax,%rdx,8), %rdi
	cmpl	$0, (%rdi)
	je	.LBB10_22
	.p2align	4, 0x90
.LBB10_35:                              # %if.else397
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	136(%r13), %edi
	movsbl	256(%r13,%rbp), %esi
	cmpl	%esi, %edi
	cmovll	%edi, %esi
	testl	%esi, %esi
	jle	.LBB10_40
# %bb.36:                               # %for.body409.lr.ph
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	264(%r13,%rbp,8), %rdi
	movq	(%rax,%rdx,8), %r8
	movl	%esi, %r9d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB10_37:                              # %for.body409
                                        #   Parent Loop BB10_2 Depth=1
                                        #     Parent Loop BB10_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r8, (%rdi,%rsi,8)
	je	.LBB10_41
# %bb.38:                               # %if.else422
                                        #   in Loop: Header=BB10_37 Depth=3
	incq	%rsi
	cmpq	%rsi, %r9
	jne	.LBB10_37
.LBB10_39:                              # %if.then574
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	$.L.str, %edi
	movl	$-1111, %esi                    # imm = 0xFBA9
	callq	error@PLT
	movzbl	24(%r12), %ecx
	movzbl	25(%r12), %eax
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_40:                              #   in Loop: Header=BB10_5 Depth=2
	xorl	%esi, %esi
.LBB10_41:                              # %if.then430
                                        #   in Loop: Header=BB10_5 Depth=2
	movswl	18(%rax,%rdx,4), %edi
	testl	%ecx, %ecx
	je	.LBB10_44
# %bb.42:                               # %land.lhs.true443
                                        #   in Loop: Header=BB10_5 Depth=2
	cmpl	$0, 384(%rbx)
	movq	(%rax,%rdx,8), %rcx
	movl	(%rcx), %ecx
	je	.LBB10_47
# %bb.43:                               # %land.lhs.true474
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%ecx, %ecx
	jne	.LBB10_53
	jmp	.LBB10_52
.LBB10_44:                              # %land.lhs.true456
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	176(%r13), %ecx
	cmpl	$1, %ecx
	je	.LBB10_51
# %bb.45:                               # %land.lhs.true456
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%ecx, %ecx
	jne	.LBB10_53
# %bb.46:                               # %land.lhs.true460
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	(%rax,%rdx,8), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB10_48
	jmp	.LBB10_53
.LBB10_47:                              # %land.lhs.true446
                                        #   in Loop: Header=BB10_5 Depth=2
	testl	%ecx, %ecx
	je	.LBB10_53
.LBB10_48:                              # %if.then467
                                        #   in Loop: Header=BB10_5 Depth=2
	addl	%edi, %edi
	jmp	.LBB10_53
.LBB10_51:                              # %land.lhs.true488
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	(%rax,%rdx,8), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB10_53
.LBB10_52:                              # %if.then495
                                        #   in Loop: Header=BB10_5 Depth=2
	movzwl	%di, %ecx
	shrl	$15, %ecx
	addl	%edi, %ecx
	movswl	%cx, %edi
	sarl	%edi
	.p2align	4, 0x90
.LBB10_53:                              # %if.end497
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	%rbp, %r8
	shlq	$7, %r8
	addq	88(%rsp), %r8                   # 8-byte Folded Reload
	movslq	%esi, %rcx
	movl	(%r8,%rcx,4), %esi
	cmpl	$9999, %esi                     # imm = 0x270F
	je	.LBB10_55
# %bb.54:                               # %lor.lhs.false500
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	264(%r13,%rbp,8), %r8
	movq	(%r8,%rcx,8), %r8
	cmpb	$0, 40(%r8)
	je	.LBB10_57
.LBB10_55:                              # %if.then509
                                        #   in Loop: Header=BB10_5 Depth=2
	movzwl	16(%rax,%rdx,4), %eax
	movw	%ax, 16(%r12)
	movw	%di, 18(%r12)
	movl	$0, 20(%r12)
.LBB10_56:                              # %if.end565
                                        #   in Loop: Header=BB10_5 Depth=2
	movb	%cl, 24(%r12)
	movb	$0, 25(%r12)
	xorl	%eax, %eax
	jmp	.LBB10_4
.LBB10_57:                              # %if.else522
                                        #   in Loop: Header=BB10_5 Depth=2
	movswl	16(%rax,%rdx,4), %r8d
	imull	%esi, %r8d
	subl	$-128, %r8d
	shrl	$8, %r8d
	movw	%r8w, 16(%r12)
	imull	%edi, %esi
	subl	$-128, %esi
	shrl	$8, %esi
	movw	%si, 18(%r12)
	subw	16(%rax,%rdx,4), %r8w
	movw	%r8w, 20(%r12)
	subl	%edi, %esi
	movw	%si, 22(%r12)
	jmp	.LBB10_56
.LBB10_58:                              # %land.lhs.true130
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	272(%r13), %r8
	movq	(%r8), %r8
	cmpl	$0, 388(%r8)
	je	.LBB10_14
# %bb.59:                               # %if.then137
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %r8d
	movq	224(%r9), %r11
	movq	232(%r9), %rax
	movl	%r8d, %r9d
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	subl	4(%rax), %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	subl	4(%r11), %r8d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	sarl	%edi
	movl	3144(%r10), %r9d
	movslq	%edi, %rdi
	cmpl	%r11d, %eax
	jbe	.LBB10_64
# %bb.60:                               # %if.then150
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	testl	%r9d, %r9d
	jne	.LBB10_12
	jmp	.LBB10_62
.LBB10_64:                              # %if.else176
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	testl	%r9d, %r9d
	jne	.LBB10_12
	jmp	.LBB10_62
.LBB10_66:                              # %if.else247
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	232(%r9), %r9
	movq	152(%r9), %r9
	testl	%eax, %eax
	je	.LBB10_70
.LBB10_67:                              # %cond.true226
                                        #   in Loop: Header=BB10_5 Depth=2
	addq	(%r9,%r8,8), %rsi
	movq	%rsi, %rax
	jmp	.LBB10_14
.LBB10_70:                              # %cond.false262
                                        #   in Loop: Header=BB10_5 Depth=2
	movslq	%edi, %rax
	addq	(%r9,%rax,8), %rdx
.LBB10_71:                              # %if.end276
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	%rdx, %rax
	jmp	.LBB10_14
.LBB10_72:                              # %for.end615
	cmpl	$0, 284(%rbx)
	je	.LBB10_75
# %bb.73:                               # %if.else655
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	xorl	%edx, %edx
	callq	iTransform@PLT
	movl	$0, 1240(%r13)
.LBB10_74:                              # %if.end656
	movl	$1, %eax
	addq	$104, %rsp
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
.LBB10_75:                              # %if.then618
	.cfi_def_cfa_offset 160
	movslq	48(%rbx), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1248(%r13), %rax
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_16x16@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	268(%rax), %eax
	testl	%eax, %eax
	je	.LBB10_74
# %bb.76:                               # %if.then618
	cmpl	$3, %eax
	je	.LBB10_74
# %bb.77:                               # %if.then629
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	136(%r15), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	(%rax), %rdi
	movq	1248(%r13), %rax
	movq	8(%rax), %rsi
	movl	52(%rbx), %edx
	movq	24(%rsp), %r14                  # 8-byte Reload
	movl	849132(%r14), %r8d
	movl	849136(%r14), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	movq	136(%r15), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	8(%rax), %rdi
	movq	1248(%r13), %rax
	movq	16(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r14), %r8d
	movl	849136(%r14), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	jmp	.LBB10_74
.Lfunc_end10:
	.size	mb_pred_b_d8x8temporal, .Lfunc_end10-mb_pred_b_d8x8temporal
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_b_d4x4temporal          # -- Begin function mb_pred_b_d4x4temporal
	.p2align	4, 0x90
	.type	mb_pred_b_d4x4temporal,@function
mb_pred_b_d4x4temporal:                 # @mb_pred_b_d4x4temporal
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	8(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movswq	114(%rdi), %r15
	movq	264(%r13,%r15,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	272(%r13,%r15,8), %r12
	callq	set_chroma_vector
	leaq	336(%r13), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	$4, %r8d
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_18:                              # %for.body180.preheader
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	64(%rsp), %r14                  # 8-byte Reload
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movl	36(%rsp), %ecx                  # 4-byte Reload
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	movq	%rdx, %rbp
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+1(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	%rbp, %rdx
	movl	36(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+2(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%ebp, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+3(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%ebp, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movq	40(%rsp), %r8                   # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	72(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	addq	$4, %r14
	addq	$4, %r8
	cmpq	$4, %rax
	je	.LBB11_19
.LBB11_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_2 Depth 2
                                        #       Child Loop BB11_7 Depth 3
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movsbl	368(%rbx,%rax), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	%r14, %rbp
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	jmp	.LBB11_2
	.p2align	4, 0x90
.LBB11_5:                               # %if.then
                                        #   in Loop: Header=BB11_2 Depth=2
	movw	$0, 24(%r14)
	movq	$0, 16(%r14)
	xorl	%eax, %eax
	xorl	%r9d, %r9d
.LBB11_17:                              # %if.end159
                                        #   in Loop: Header=BB11_2 Depth=2
	movsbq	%r9b, %rcx
	movq	(%r11,%rcx,8), %rcx
	movq	%rcx, (%r14)
	movsbq	%al, %rax
	movq	(%r12,%rax,8), %rax
	movq	%rax, 8(%r14)
	incq	%rbp
	cmpq	%r8, %rbp
	je	.LBB11_18
.LBB11_2:                               # %for.body15
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_7 Depth 3
	movzbl	decode_block_scan(%rbp), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	shrl	$2, %eax
	andl	$3, %eax
	movslq	32(%rbx), %rdi
	addq	%rcx, %rdi
	movslq	36(%rbx), %rcx
	addq	%rax, %rcx
	movslq	40(%rbx), %rsi
	addq	%rax, %rsi
	movq	152(%rdx), %rax
	shlq	$5, %rdi
	movq	(%rax,%rcx,8), %r14
	addq	%rdi, %r14
	movq	(%r12), %rax
	movq	152(%rax), %rax
	movq	(%rax,%rsi,8), %rcx
	xorl	%eax, %eax
	cmpb	$-1, 24(%rcx,%rdi)
	leaq	(%rcx,%rdi), %rcx
	sete	%al
	cmpb	$-1, 24(%rax,%rcx)
	je	.LBB11_5
# %bb.3:                                # %for.cond56.preheader
                                        #   in Loop: Header=BB11_2 Depth=2
	movl	136(%r13), %esi
	movsbl	256(%r13,%r15), %r10d
	cmpl	%r10d, %esi
	cmovll	%esi, %r10d
	testl	%r10d, %r10d
	jle	.LBB11_4
# %bb.6:                                # %for.body64.lr.ph
                                        #   in Loop: Header=BB11_2 Depth=2
	movq	264(%r13,%r15,8), %rdi
	movq	(%rcx,%rax,8), %r8
	movl	%r10d, %r9d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB11_7:                               # %for.body64
                                        #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpq	%r8, (%rdi,%rsi,8)
	je	.LBB11_11
# %bb.8:                                # %if.else76
                                        #   in Loop: Header=BB11_7 Depth=3
	incq	%rsi
	cmpq	%rsi, %r9
	jne	.LBB11_7
# %bb.9:                                # %for.end
                                        #   in Loop: Header=BB11_2 Depth=2
	testl	%r10d, %r10d
	jle	.LBB11_10
# %bb.25:                               # %if.then79
                                        #   in Loop: Header=BB11_2 Depth=2
	movl	$.L.str, %edi
	movl	$-1111, %esi                    # imm = 0xFBA9
	callq	error@PLT
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movzbl	24(%r14), %r9d
	movzbl	25(%r14), %eax
	movq	24(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB11_17
	.p2align	4, 0x90
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=2
	xorl	%esi, %esi
	jmp	.LBB11_12
.LBB11_10:                              #   in Loop: Header=BB11_2 Depth=2
	movl	$-135792468, %esi               # imm = 0xF7E7F8AC
.LBB11_11:                              # %if.else80.loopexit
                                        #   in Loop: Header=BB11_2 Depth=2
	movq	24(%rsp), %r8                   # 8-byte Reload
.LBB11_12:                              # %if.else80
                                        #   in Loop: Header=BB11_2 Depth=2
	movslq	%esi, %r9
	movq	%r15, %rsi
	shlq	$7, %rsi
	addq	80(%rsp), %rsi                  # 8-byte Folded Reload
	movl	(%rsi,%r9,4), %esi
	cmpl	$9999, %esi                     # imm = 0x270F
	je	.LBB11_14
# %bb.13:                               # %lor.lhs.false
                                        #   in Loop: Header=BB11_2 Depth=2
	movq	264(%r13,%r15,8), %rdi
	movq	(%rdi,%r9,8), %rdi
	cmpb	$0, 40(%rdi)
	je	.LBB11_15
.LBB11_14:                              # %if.then95
                                        #   in Loop: Header=BB11_2 Depth=2
	movl	16(%rcx,%rax,4), %eax
	movl	%eax, 16(%r14)
	movl	$0, 20(%r14)
.LBB11_16:                              # %if.end152
                                        #   in Loop: Header=BB11_2 Depth=2
	movb	%r9b, 24(%r14)
	movb	$0, 25(%r14)
	xorl	%eax, %eax
	jmp	.LBB11_17
.LBB11_15:                              # %if.else103
                                        #   in Loop: Header=BB11_2 Depth=2
	movswl	16(%rcx,%rax,4), %edi
	imull	%esi, %edi
	subl	$-128, %edi
	shrl	$8, %edi
	movw	%di, 16(%r14)
	movswl	18(%rcx,%rax,4), %r8d
	imull	%esi, %r8d
	subl	$-128, %r8d
	shrl	$8, %r8d
	movw	%r8w, 18(%r14)
	subw	16(%rcx,%rax,4), %di
	movw	%di, 20(%r14)
	subw	18(%rcx,%rax,4), %r8w
	movw	%r8w, 22(%r14)
	movq	24(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB11_16
.LBB11_19:                              # %for.end197
	cmpl	$0, 284(%rbx)
	je	.LBB11_20
# %bb.23:                               # %if.else236
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	xorl	%edx, %edx
	callq	iTransform@PLT
	movl	$0, 1240(%r13)
.LBB11_24:                              # %if.end237
	movl	$1, %eax
	addq	$88, %rsp
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
.LBB11_20:                              # %if.then200
	.cfi_def_cfa_offset 144
	movslq	48(%rbx), %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1248(%r13), %rax
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_16x16@PLT
	movq	16(%rsp), %r10                  # 8-byte Reload
	movl	268(%r10), %eax
	testl	%eax, %eax
	je	.LBB11_24
# %bb.21:                               # %if.then200
	cmpl	$3, %eax
	je	.LBB11_24
# %bb.22:                               # %if.then210
	movq	136(%r10), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	(%rax), %rdi
	movq	1248(%r13), %rax
	movq	8(%rax), %rsi
	movl	52(%rbx), %edx
	movq	48(%rsp), %r14                  # 8-byte Reload
	movl	849132(%r14), %r8d
	movl	849136(%r14), %r9d
	xorl	%ecx, %ecx
	movq	%r10, %r15
	callq	copy_image_data@PLT
	movq	136(%r15), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	8(%rax), %rdi
	movq	1248(%r13), %rax
	movq	16(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r14), %r8d
	movl	849136(%r14), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	jmp	.LBB11_24
.Lfunc_end11:
	.size	mb_pred_b_d4x4temporal, .Lfunc_end11-mb_pred_b_d4x4temporal
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mb_pred_b_d8x8spatial
.LCPI12_0:
	.zero	16
	.text
	.globl	mb_pred_b_d8x8spatial
	.p2align	4, 0x90
	.type	mb_pred_b_d8x8spatial,@function
mb_pred_b_d8x8spatial:                  # @mb_pred_b_d8x8spatial
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movq	%rdi, %rbx
	movb	$-1, 11(%rsp)
	movb	$-1, 10(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 12(%rsp)
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movswq	114(%rdi), %rax
	movq	264(%r15,%rax,8), %r13
	movq	272(%r15,%rax,8), %rbp
	callq	set_chroma_vector
	leaq	16(%rsp), %rdx
	leaq	12(%rsp), %rcx
	leaq	11(%rsp), %r8
	leaq	10(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	prepare_direct_params@PLT
	movzbl	11(%rsp), %edx
	testb	%dl, %dl
	sete	%cl
	movzbl	10(%rsp), %eax
	testb	%al, %al
	sete	%sil
	orb	%cl, %sil
	cmpb	$1, %sil
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	jne	.LBB12_19
# %bb.1:                                # %for.cond.preheader
	movq	$-16, %rax
	jmp	.LBB12_2
.LBB12_16:                              # %if.else132
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rbp,%rcx,8), %rax
	movq	%rax, 8(%rdx)
	movl	12(%rsp), %eax
	movl	%eax, 20(%rdx)
	movb	%cl, 25(%rdx)
.LBB12_17:                              # %if.end144
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	$2, %ecx
.LBB12_18:                              # %if.end144
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	152(%r14), %rax
	movq	(%rax,%r12,8), %rdi
	movslq	%r15d, %r8
	shlq	$5, %r8
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 48(%rdi,%r8)
	movups	%xmm0, 32(%rdi,%r8)
	movq	8(%rax,%r12,8), %rdi
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 16(%rdi,%rsi)
	movups	%xmm0, (%rdi,%rsi)
	movq	8(%rax,%r12,8), %rax
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 48(%rax,%r8)
	movups	%xmm0, 32(%rax,%r8)
	movq	%rbx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	%r14, %rdx
	movq	56(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	48(%rsp), %r9                   # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	$4, %rax
	je	.LBB12_40
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movzbl	decode_block_scan+16(%rax), %edx
	movl	%edx, %eax
	andl	$3, %eax
	shrl	$2, %edx
	andl	$3, %edx
	movslq	32(%rbx), %r15
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	addq	%rax, %r15
	movslq	36(%rbx), %r12
	addq	%rdx, %r12
	movq	(%rbp), %rsi
	movl	40(%rbx), %ecx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	addl	%edx, %ecx
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	get_colocated_info_8x8@PLT
	movq	152(%r14), %rcx
	movq	%r15, %rsi
	shlq	$5, %rsi
	movq	(%rcx,%r12,8), %rdx
	addq	%rsi, %rdx
	movsbq	10(%rsp), %rdi
	cmpq	$-1, %rdi
	je	.LBB12_3
# %bb.6:                                # %if.else62
                                        #   in Loop: Header=BB12_2 Depth=1
	movsbq	11(%rsp), %rcx
	cmpq	$-1, %rcx
	je	.LBB12_7
# %bb.10:                               # %if.else95
                                        #   in Loop: Header=BB12_2 Depth=1
	testl	%eax, %eax
	sete	%dil
	testb	%cl, %cl
	sete	%r8b
	testb	%dil, %r8b
	jne	.LBB12_11
# %bb.12:                               # %if.else95
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	16(%rsp), %r8d
	movq	%rcx, %rdi
	jmp	.LBB12_13
	.p2align	4, 0x90
.LBB12_3:                               # %if.then35
                                        #   in Loop: Header=BB12_2 Depth=1
	testl	%eax, %eax
	je	.LBB12_4
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB12_2 Depth=1
	movsbq	11(%rsp), %rax
	movq	(%r13,%rax,8), %rcx
	movq	%rcx, (%rdx)
	movq	$0, 8(%rdx)
	movl	16(%rsp), %ecx
	movl	%ecx, 16(%rdx)
	movl	$0, 20(%rdx)
	movb	%al, 24(%rdx)
	movb	$-1, 25(%rdx)
	xorl	%ecx, %ecx
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_7:                               # %if.then66
                                        #   in Loop: Header=BB12_2 Depth=1
	testl	%eax, %eax
	je	.LBB12_8
# %bb.9:                                # %if.else80
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rbp,%rdi,8), %rax
	movq	%rax, 8(%rdx)
	movl	$0, 16(%rdx)
	movl	12(%rsp), %eax
	movl	%eax, 20(%rdx)
	movb	$-1, 24(%rdx)
	movzbl	10(%rsp), %eax
	movb	%al, 25(%rdx)
	movl	$1, %ecx
	jmp	.LBB12_18
.LBB12_11:                              #   in Loop: Header=BB12_2 Depth=1
	xorl	%edi, %edi
	xorl	%r8d, %r8d
.LBB12_13:                              # %if.else95
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%r13,%rdi,8), %rdi
	movq	%rdi, (%rdx)
	movl	%r8d, 16(%rdx)
	movb	%cl, 24(%rdx)
	movsbq	10(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.LBB12_16
# %bb.14:                               # %if.else95
                                        #   in Loop: Header=BB12_2 Depth=1
	testl	%eax, %eax
	jne	.LBB12_16
# %bb.15:                               # %if.then124
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rbp), %rax
	movq	%rax, 8(%rdx)
	movl	$0, 20(%rdx)
	movb	$0, 25(%rdx)
	jmp	.LBB12_17
.LBB12_4:                               # %if.then36
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%r13), %rax
	movq	%rax, (%rdx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rdx)
	movw	$-256, 24(%rdx)
	xorl	%ecx, %ecx
	jmp	.LBB12_18
.LBB12_8:                               # %if.then68
                                        #   in Loop: Header=BB12_2 Depth=1
	movq	(%rbp), %rax
	movq	%rax, 8(%rdx)
	movq	$0, 16(%rdx)
	movw	$255, 24(%rdx)
	movl	$1, %ecx
	jmp	.LBB12_18
.LBB12_19:                              # %if.else148
	testb	%al, %dl
	jns	.LBB12_24
# %bb.20:                               # %for.body163.lr.ph
	movslq	36(%rbx), %rax
	.p2align	4, 0x90
.LBB12_21:                              # %for.body170.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_22 Depth 2
	movslq	32(%rbx), %rcx
	leaq	-2(%rcx), %rdx
	shlq	$5, %rcx
	.p2align	4, 0x90
.LBB12_22:                              # %for.body170
                                        #   Parent Loop BB12_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%r14), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	(%r13), %rdi
	movq	%rdi, (%rsi,%rcx)
	movq	(%rbp), %rdi
	movq	%rdi, 8(%rsi,%rcx)
	movq	$0, 16(%rsi,%rcx)
	movw	$0, 24(%rsi,%rcx)
	movq	152(%r14), %rdi
	movq	(%rdi,%rax,8), %r8
	movups	16(%rsi,%rcx), %xmm0
	movups	%xmm0, 48(%r8,%rcx)
	movups	(%rsi,%rcx), %xmm0
	movups	%xmm0, 32(%r8,%rcx)
	movq	8(%rdi,%rax,8), %r8
	movups	(%rsi,%rcx), %xmm0
	movups	16(%rsi,%rcx), %xmm1
	movups	%xmm1, 16(%r8,%rcx)
	movups	%xmm0, (%r8,%rcx)
	movq	8(%rdi,%rax,8), %rdi
	movups	(%rsi,%rcx), %xmm0
	movups	16(%rsi,%rcx), %xmm1
	movups	%xmm1, 48(%rdi,%rcx)
	movups	%xmm0, 32(%rdi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$2, %rsi
	addq	$2, %rdx
	addq	$64, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB12_22
# %bb.23:                               # %for.inc196
                                        #   in Loop: Header=BB12_21 Depth=1
	movslq	36(%rbx), %rcx
	leaq	2(%rax), %rdx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	movq	%rdx, %rax
	jl	.LBB12_21
	jmp	.LBB12_38
.LBB12_24:                              # %if.else199
	cmpb	$-1, %al
	je	.LBB12_25
# %bb.30:                               # %if.else247
	movslq	36(%rbx), %rcx
	cmpb	$-1, %dl
	je	.LBB12_31
	.p2align	4, 0x90
.LBB12_35:                              # %for.body309.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_36 Depth 2
	movslq	32(%rbx), %rdx
	leaq	-2(%rdx), %rsi
	shlq	$5, %rdx
	.p2align	4, 0x90
.LBB12_36:                              # %for.body309
                                        #   Parent Loop BB12_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%r14), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movsbq	11(%rsp), %r8
	movq	(%r13,%r8,8), %r9
	movq	%r9, (%rdi,%rdx)
	movsbq	%al, %rax
	movq	(%rbp,%rax,8), %rax
	movq	%rax, 8(%rdi,%rdx)
	movl	16(%rsp), %eax
	movl	%eax, 16(%rdi,%rdx)
	movl	12(%rsp), %eax
	movl	%eax, 20(%rdi,%rdx)
	movb	%r8b, 24(%rdi,%rdx)
	movzbl	10(%rsp), %eax
	movb	%al, 25(%rdi,%rdx)
	movq	152(%r14), %r8
	movq	(%r8,%rcx,8), %r9
	movups	16(%rdi,%rdx), %xmm0
	movups	%xmm0, 48(%r9,%rdx)
	movups	(%rdi,%rdx), %xmm0
	movups	%xmm0, 32(%r9,%rdx)
	movq	8(%r8,%rcx,8), %r9
	movups	(%rdi,%rdx), %xmm0
	movups	16(%rdi,%rdx), %xmm1
	movups	%xmm1, 16(%r9,%rdx)
	movups	%xmm0, (%r9,%rdx)
	movq	8(%r8,%rcx,8), %r8
	movups	(%rdi,%rdx), %xmm0
	movups	16(%rdi,%rdx), %xmm1
	movups	%xmm1, 48(%r8,%rdx)
	movups	%xmm0, 32(%r8,%rdx)
	movslq	32(%rbx), %rdi
	addq	$2, %rdi
	addq	$2, %rsi
	addq	$64, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB12_36
# %bb.37:                               # %for.inc339
                                        #   in Loop: Header=BB12_35 Depth=1
	movslq	36(%rbx), %rdx
	leaq	2(%rcx), %rsi
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	movq	%rsi, %rcx
	jl	.LBB12_35
.LBB12_38:
	movl	$2, %ecx
	jmp	.LBB12_39
	.p2align	4, 0x90
.LBB12_31:                              # %for.body265.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_32 Depth 2
	movslq	32(%rbx), %rdx
	leaq	-2(%rdx), %rsi
	shlq	$5, %rdx
	.p2align	4, 0x90
.LBB12_32:                              # %for.body265
                                        #   Parent Loop BB12_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%r14), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	$0, (%rdi,%rdx)
	movsbq	%al, %rax
	movq	(%rbp,%rax,8), %rax
	movq	%rax, 8(%rdi,%rdx)
	movl	$0, 16(%rdi,%rdx)
	movl	12(%rsp), %eax
	movl	%eax, 20(%rdi,%rdx)
	movb	$-1, 24(%rdi,%rdx)
	movzbl	10(%rsp), %eax
	movb	%al, 25(%rdi,%rdx)
	movq	152(%r14), %r8
	movq	(%r8,%rcx,8), %r9
	movups	16(%rdi,%rdx), %xmm0
	movups	%xmm0, 48(%r9,%rdx)
	movups	(%rdi,%rdx), %xmm0
	movups	%xmm0, 32(%r9,%rdx)
	movq	8(%r8,%rcx,8), %r9
	movups	(%rdi,%rdx), %xmm0
	movups	16(%rdi,%rdx), %xmm1
	movups	%xmm1, 16(%r9,%rdx)
	movups	%xmm0, (%r9,%rdx)
	movq	8(%r8,%rcx,8), %r8
	movups	(%rdi,%rdx), %xmm0
	movups	16(%rdi,%rdx), %xmm1
	movups	%xmm1, 48(%r8,%rdx)
	movups	%xmm0, 32(%r8,%rdx)
	movslq	32(%rbx), %rdi
	addq	$2, %rdi
	addq	$2, %rsi
	addq	$64, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB12_32
# %bb.33:                               # %for.inc292
                                        #   in Loop: Header=BB12_31 Depth=1
	movslq	36(%rbx), %rdx
	leaq	2(%rcx), %rsi
	addq	$2, %rdx
	cmpq	%rdx, %rcx
	movq	%rsi, %rcx
	jl	.LBB12_31
# %bb.34:
	movl	$1, %ecx
	jmp	.LBB12_39
.LBB12_25:                              # %for.body210.lr.ph
	movslq	36(%rbx), %rax
	.p2align	4, 0x90
.LBB12_26:                              # %for.body217.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_27 Depth 2
	movslq	32(%rbx), %rcx
	leaq	-2(%rcx), %rdx
	shlq	$5, %rcx
	.p2align	4, 0x90
.LBB12_27:                              # %for.body217
                                        #   Parent Loop BB12_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%r14), %rsi
	movq	(%rsi,%rax,8), %rsi
	movsbq	11(%rsp), %rdi
	movq	(%r13,%rdi,8), %r8
	movq	%r8, (%rsi,%rcx)
	movq	$0, 8(%rsi,%rcx)
	movl	16(%rsp), %r8d
	movl	%r8d, 16(%rsi,%rcx)
	movl	$0, 20(%rsi,%rcx)
	movb	%dil, 24(%rsi,%rcx)
	movb	$-1, 25(%rsi,%rcx)
	movq	152(%r14), %rdi
	movq	(%rdi,%rax,8), %r8
	movups	16(%rsi,%rcx), %xmm0
	movups	%xmm0, 48(%r8,%rcx)
	movups	(%rsi,%rcx), %xmm0
	movups	%xmm0, 32(%r8,%rcx)
	movq	8(%rdi,%rax,8), %r8
	movups	(%rsi,%rcx), %xmm0
	movups	16(%rsi,%rcx), %xmm1
	movups	%xmm1, 16(%r8,%rcx)
	movups	%xmm0, (%r8,%rcx)
	movq	8(%rdi,%rax,8), %rdi
	movups	(%rsi,%rcx), %xmm0
	movups	16(%rsi,%rcx), %xmm1
	movups	%xmm1, 48(%rdi,%rcx)
	movups	%xmm0, 32(%rdi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$2, %rsi
	addq	$2, %rdx
	addq	$64, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB12_27
# %bb.28:                               # %for.inc244
                                        #   in Loop: Header=BB12_26 Depth=1
	movslq	36(%rbx), %rcx
	leaq	2(%rax), %rdx
	addq	$2, %rcx
	cmpq	%rcx, %rax
	movq	%rdx, %rax
	jl	.LBB12_26
# %bb.29:
	xorl	%ecx, %ecx
.LBB12_39:                              # %if.end344
	movq	%rbx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	%r14, %rdx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB12_40:                              # %if.end345
	cmpl	$0, 284(%rbx)
	je	.LBB12_41
# %bb.44:                               # %if.else385
	movq	%rbx, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	xorl	%edx, %edx
	callq	iTransform@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	$0, 1240(%rax)
.LBB12_45:                              # %if.end386
	movl	$1, %eax
	addq	$72, %rsp
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
.LBB12_41:                              # %if.then348
	.cfi_def_cfa_offset 128
	movslq	48(%rbx), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	1248(%r15), %rax
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_16x16@PLT
	movl	268(%r14), %eax
	testl	%eax, %eax
	je	.LBB12_45
# %bb.42:                               # %if.then348
	cmpl	$3, %eax
	je	.LBB12_45
# %bb.43:                               # %if.then359
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	(%rax), %rdi
	movq	1248(%r15), %rax
	movq	8(%rax), %rsi
	movl	52(%rbx), %edx
	movq	32(%rsp), %r12                  # 8-byte Reload
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	8(%rax), %rdi
	movq	1248(%r15), %rax
	movq	16(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	jmp	.LBB12_45
.Lfunc_end12:
	.size	mb_pred_b_d8x8spatial, .Lfunc_end12-mb_pred_b_d8x8spatial
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mb_pred_b_d4x4spatial
.LCPI13_0:
	.zero	16
	.text
	.globl	mb_pred_b_d4x4spatial
	.p2align	4, 0x90
	.type	mb_pred_b_d4x4spatial,@function
mb_pred_b_d4x4spatial:                  # @mb_pred_b_d4x4spatial
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movq	%rdi, %rbx
	movb	$-1, 3(%rsp)
	movb	$-1, 2(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 4(%rsp)
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movswq	114(%rdi), %rax
	movq	264(%rcx,%rax,8), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	272(%rcx,%rax,8), %r13
	callq	set_chroma_vector
	leaq	8(%rsp), %rdx
	leaq	4(%rsp), %rcx
	leaq	3(%rsp), %r8
	leaq	2(%rsp), %r9
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	prepare_direct_params@PLT
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_28:                              # %for.cond241.preheader
                                        #   in Loop: Header=BB13_1 Depth=1
	movzbl	decode_block_scan(%rbp), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	12(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %esi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+1(%rbp), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+2(%rbp), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movzbl	decode_block_scan+3(%rbp), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movq	%r14, %rdx
	movl	%r12d, %ecx
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	28(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	addq	$4, %rbp
	cmpl	$4, %eax
	je	.LBB13_29
.LBB13_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_2 Depth 2
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movq	$-4, %r15
	jmp	.LBB13_2
	.p2align	4, 0x90
.LBB13_20:                              # %if.then163
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r12)
	movq	(%r13), %rax
	movq	%rax, 8(%r12)
	movq	$0, 16(%r12)
	movw	$0, 24(%r12)
.LBB13_26:                              # %if.end240
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	$2, %r12d
.LBB13_27:                              # %if.end240
                                        #   in Loop: Header=BB13_2 Depth=2
	incq	%r15
	je	.LBB13_28
.LBB13_2:                               # %for.body12
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	decode_block_scan+4(%rbp,%r15), %ecx
	movl	%ecx, %eax
	andl	$3, %eax
	shrl	$2, %ecx
	andl	$3, %ecx
	movslq	32(%rbx), %rdx
	addq	%rax, %rdx
	movslq	36(%rbx), %rax
	addq	%rcx, %rax
	movq	152(%r14), %rsi
	movq	%rdx, %r12
	shlq	$5, %r12
	addq	(%rsi,%rax,8), %r12
	movsbq	3(%rsp), %rax
	testq	%rax, %rax
	sete	%dil
	movsbq	2(%rsp), %rsi
	testq	%rsi, %rsi
	sete	%r8b
	orb	%dil, %r8b
	cmpb	$1, %r8b
	jne	.LBB13_19
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r13), %rsi
	addl	40(%rbx), %ecx
	movq	%rbx, %rdi
                                        # kill: def $edx killed $edx killed $rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	get_colocated_info_4x4@PLT
	movsbq	2(%rsp), %rdx
	cmpq	$-1, %rdx
	je	.LBB13_4
# %bb.7:                                # %if.else67
                                        #   in Loop: Header=BB13_2 Depth=2
	movsbq	3(%rsp), %rcx
	cmpq	$-1, %rcx
	je	.LBB13_8
# %bb.12:                               # %if.else100
                                        #   in Loop: Header=BB13_2 Depth=2
	testl	%eax, %eax
	sete	%dl
	testb	%cl, %cl
	sete	%sil
	testb	%dl, %sil
	jne	.LBB13_13
# %bb.14:                               # %if.else100
                                        #   in Loop: Header=BB13_2 Depth=2
	movl	8(%rsp), %esi
	movq	%rcx, %rdx
	jmp	.LBB13_15
	.p2align	4, 0x90
.LBB13_19:                              # %if.else150
                                        #   in Loop: Header=BB13_2 Depth=2
	testb	%sil, %al
	js	.LBB13_20
# %bb.21:                               # %if.else178
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpb	$-1, %sil
	je	.LBB13_22
# %bb.23:                               # %if.else198
                                        #   in Loop: Header=BB13_2 Depth=2
	cmpb	$-1, %al
	je	.LBB13_24
# %bb.25:                               # %if.else218
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, (%r12)
	movq	(%r13,%rsi,8), %rcx
	movq	%rcx, 8(%r12)
	movl	8(%rsp), %ecx
	movl	%ecx, 16(%r12)
	movl	4(%rsp), %ecx
	movl	%ecx, 20(%r12)
	movb	%al, 24(%r12)
	movzbl	2(%rsp), %eax
	movb	%al, 25(%r12)
	jmp	.LBB13_26
.LBB13_4:                               # %if.then40
                                        #   in Loop: Header=BB13_2 Depth=2
	testl	%eax, %eax
	je	.LBB13_5
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB13_2 Depth=2
	movsbq	3(%rsp), %rax
.LBB13_22:                              # %if.then182
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, (%r12)
	movq	$0, 8(%r12)
	movl	8(%rsp), %ecx
	movl	%ecx, 16(%r12)
	movl	$0, 20(%r12)
	movb	%al, 24(%r12)
	movb	$-1, 25(%r12)
	xorl	%r12d, %r12d
	jmp	.LBB13_27
.LBB13_8:                               # %if.then71
                                        #   in Loop: Header=BB13_2 Depth=2
	testl	%eax, %eax
	je	.LBB13_9
# %bb.10:                               # %if.else85
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r13,%rdx,8), %rax
	jmp	.LBB13_11
.LBB13_13:                              #   in Loop: Header=BB13_2 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB13_15:                              # %if.else100
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi,%rdx,8), %rdx
	movq	%rdx, (%r12)
	movl	%esi, 16(%r12)
	movb	%cl, 24(%r12)
	movsbq	2(%rsp), %rcx
	testq	%rcx, %rcx
	jne	.LBB13_18
# %bb.16:                               # %if.else100
                                        #   in Loop: Header=BB13_2 Depth=2
	testl	%eax, %eax
	jne	.LBB13_18
# %bb.17:                               # %if.then129
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r13), %rax
	movq	%rax, 8(%r12)
	movl	$0, 20(%r12)
	movb	$0, 25(%r12)
	jmp	.LBB13_26
.LBB13_18:                              # %if.else137
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r13,%rcx,8), %rax
	movq	%rax, 8(%r12)
	movl	4(%rsp), %eax
	movl	%eax, 20(%r12)
	movb	%cl, 25(%r12)
	jmp	.LBB13_26
.LBB13_5:                               # %if.then41
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, (%r12)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r12)
	movw	$-256, 24(%r12)
	xorl	%r12d, %r12d
	jmp	.LBB13_27
.LBB13_24:                              # %if.then202
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	$0, (%r12)
	movq	(%r13,%rsi,8), %rax
.LBB13_11:                              # %if.end240
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	%rax, 8(%r12)
	movl	$0, 16(%r12)
	movl	4(%rsp), %eax
	movl	%eax, 20(%r12)
	movb	$-1, 24(%r12)
	movzbl	2(%rsp), %eax
	movb	%al, 25(%r12)
	movl	$1, %r12d
	jmp	.LBB13_27
.LBB13_9:                               # %if.then73
                                        #   in Loop: Header=BB13_2 Depth=2
	movq	(%r13), %rax
	movq	%rax, 8(%r12)
	movq	$0, 16(%r12)
	movw	$255, 24(%r12)
	movl	$1, %r12d
	jmp	.LBB13_27
.LBB13_29:                              # %for.end261
	cmpl	$0, 284(%rbx)
	je	.LBB13_30
# %bb.33:                               # %if.else301
	movq	%rbx, %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	xorl	%edx, %edx
	callq	iTransform@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	$0, 1240(%rax)
.LBB13_34:                              # %if.end302
	movl	$1, %eax
	addq	$56, %rsp
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
.LBB13_30:                              # %if.then264
	.cfi_def_cfa_offset 112
	movslq	48(%rbx), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	1248(%r15), %rax
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movq	(%rax,%rcx,8), %rsi
	movl	44(%rbx), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_16x16@PLT
	movl	268(%r14), %eax
	testl	%eax, %eax
	je	.LBB13_34
# %bb.31:                               # %if.then264
	cmpl	$3, %eax
	je	.LBB13_34
# %bb.32:                               # %if.then275
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	(%rax), %rdi
	movq	1248(%r15), %rax
	movq	8(%rax), %rsi
	movl	52(%rbx), %edx
	movq	40(%rsp), %r12                  # 8-byte Reload
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	movq	136(%r14), %rax
	movslq	56(%rbx), %rdi
	shlq	$3, %rdi
	addq	8(%rax), %rdi
	movq	1248(%r15), %rax
	movq	16(%rax), %rsi
	movl	52(%rbx), %edx
	movl	849132(%r12), %r8d
	movl	849136(%r12), %r9d
	xorl	%ecx, %ecx
	callq	copy_image_data@PLT
	jmp	.LBB13_34
.Lfunc_end13:
	.size	mb_pred_b_d4x4spatial, .Lfunc_end13-mb_pred_b_d4x4spatial
	.cfi_endproc
                                        # -- End function
	.globl	mb_pred_b_inter8x8              # -- Begin function mb_pred_b_inter8x8
	.p2align	4, 0x90
	.type	mb_pred_b_inter8x8,@function
mb_pred_b_inter8x8:                     # @mb_pred_b_inter8x8
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movq	%rdi, %rbx
	movb	$-1, 3(%rsp)
	movb	$-1, 2(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 40(%rsp)
	movq	(%rdi), %r14
	movq	8(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movswq	114(%rdi), %rax
	movq	264(%r14,%rax,8), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	272(%r14,%rax,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	callq	set_chroma_vector
	movq	%rbx, %r11
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	cmpl	$0, 132(%r14)
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	je	.LBB14_6
# %bb.1:                                # %land.lhs.true
	cmpb	$0, 364(%r11)
	je	.LBB14_5
# %bb.2:                                # %land.lhs.true10
	cmpb	$0, 365(%r11)
	je	.LBB14_5
# %bb.3:                                # %land.lhs.true15
	cmpb	$0, 366(%r11)
	je	.LBB14_5
# %bb.4:                                # %land.lhs.true20
	cmpb	$0, 367(%r11)
	jne	.LBB14_6
.LBB14_5:                               # %if.then
	leaq	44(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	3(%rsp), %r8
	leaq	2(%rsp), %r9
	movq	%r11, %rdi
	movq	%r15, %rsi
	callq	prepare_direct_params@PLT
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB14_6:                               # %if.end
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	xorl	%edi, %edi
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	movl	4(%rsp), %r10d                  # 4-byte Reload
	jmp	.LBB14_7
	.p2align	4, 0x90
.LBB14_25:                              # %if.end191
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	80(%rsp), %rdi                  # 8-byte Reload
	incq	%rdi
	addq	$4, 8(%rsp)                     # 8-byte Folded Spill
	cmpq	$4, %rdi
	je	.LBB14_26
.LBB14_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_15 Depth 2
                                        #     Child Loop BB14_24 Depth 2
	movzbl	364(%r11,%rdi), %edx
	movsbl	368(%r11,%rdi), %ebp
	leaq	(,%rdi,4), %rax
	testb	%dl, %dl
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	je	.LBB14_16
# %bb.8:                                # %if.then35
                                        #   in Loop: Header=BB14_7 Depth=1
	xorl	%ecx, %ecx
	cmpb	$5, %dl
	sete	%cl
	incl	%ecx
	cmpb	$4, %dl
	jne	.LBB14_10
# %bb.9:                                # %cond.true
                                        #   in Loop: Header=BB14_7 Depth=1
	leal	1(,%rdi,4), %r12d
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_16:                              # %if.else
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rcx), %rdx
	leaq	4(%rax), %rsi
	xorl	%ecx, %ecx
	cmpl	$0, 3144(%rdx)
	setne	%dl
	leaq	1(,%rdi,4), %r13
	cmoveq	%rsi, %r13
	movq	48(%rsp), %rsi                  # 8-byte Reload
	cmpl	$0, 132(%rsi)
	je	.LBB14_17
# %bb.18:                               # %for.cond86.preheader
                                        #   in Loop: Header=BB14_7 Depth=1
	movslq	32(%r11), %rdi
	movslq	36(%r11), %r8
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	152(%rsi), %r9
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movzbl	decode_block_scan+3(%rsi), %r10d
	movl	%r10d, %esi
	andl	$3, %esi
	addq	%rdi, %rsi
	shrl	$2, %r10d
	andl	$3, %r10d
	addq	%r8, %r10
	movq	(%r9,%r10,8), %rdi
	shlq	$5, %rsi
	cmpb	$-1, 25(%rdi,%rsi)
	je	.LBB14_19
# %bb.20:                               # %if.else114.3
                                        #   in Loop: Header=BB14_7 Depth=1
	addq	%rdi, %rsi
	addq	$24, %rsi
	xorl	%ebp, %ebp
	cmpb	$-1, (%rsi)
	setne	%bpl
	incl	%ebp
	jmp	.LBB14_21
	.p2align	4, 0x90
.LBB14_10:                              # %cond.false
                                        #   in Loop: Header=BB14_7 Depth=1
	cmpb	$7, %dl
	jne	.LBB14_12
# %bb.11:                               # %cond.true43
                                        #   in Loop: Header=BB14_7 Depth=1
	leal	4(%rax), %r12d
	jmp	.LBB14_13
.LBB14_12:                              # %cond.false45
                                        #   in Loop: Header=BB14_7 Depth=1
	leal	(%rcx,%rax), %r12d
	incl	%r12d
.LBB14_13:                              # %cond.end49
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	%ebp, 36(%rsp)                  # 4-byte Spill
	movl	%edx, %edi
	andb	$-2, %dil
	xorl	%esi, %esi
	cmpb	$4, %dil
	sete	%r8b
	addb	$-4, %dl
	xorl	%edi, %edi
	testb	$-3, %dl
	sete	%dl
	movl	%r12d, %r9d
	cmpq	%r9, %rax
	jae	.LBB14_25
# %bb.14:                               # %for.body66.preheader
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%r8b, %sil
	leal	4(,%rsi,4), %ebp
	movb	%dl, %dil
	leal	4(,%rdi,4), %r14d
	movl	%ecx, %ebx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB14_15:                              # %for.body66
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzbl	decode_block_scan(%r13,%r15), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%r11, %rdi
	movl	%r10d, %esi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	36(%rsp), %ecx                  # 4-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movl	20(%rsp), %r10d                 # 4-byte Reload
	movq	40(%rsp), %r11                  # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addq	%rbx, %r15
	leal	(%r15,%r13), %eax
	cmpl	%eax, %r12d
	jg	.LBB14_15
	jmp	.LBB14_25
.LBB14_17:                              # %for.body132.preheader
                                        #   in Loop: Header=BB14_7 Depth=1
	movq	8(%rsp), %r15                   # 8-byte Reload
	movzbl	decode_block_scan(%r15), %esi
	movl	%esi, %edi
	andl	$3, %edi
	shrl	$2, %esi
	andl	$3, %esi
	movslq	32(%r11), %r8
	addq	%rdi, %r8
	movslq	36(%r11), %rdi
	addq	%rsi, %rdi
	movq	16(%rsp), %r9                   # 8-byte Reload
	movq	152(%r9), %rsi
	movq	(%rsi,%rdi,8), %rsi
	shlq	$5, %r8
	movsbq	24(%rsi,%r8), %rdi
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%rdi,8), %rdi
	movq	%rdi, (%rsi,%r8)
	movsbq	25(%rsi,%r8), %rdi
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%rdi,8), %rdi
	movq	%rdi, 8(%rsi,%r8)
	movzbl	decode_block_scan+1(%r15), %esi
	movl	%esi, %edi
	andl	$3, %edi
	shrl	$2, %esi
	andl	$3, %esi
	movslq	32(%r11), %r8
	addq	%rdi, %r8
	movslq	36(%r11), %rdi
	addq	%rsi, %rdi
	movq	152(%r9), %rsi
	movq	(%rsi,%rdi,8), %rsi
	shlq	$5, %r8
	movsbq	24(%rsi,%r8), %rdi
	movq	(%rbx,%rdi,8), %rdi
	movq	%rdi, (%rsi,%r8)
	movsbq	25(%rsi,%r8), %rdi
	movq	(%r14,%rdi,8), %rdi
	movq	%rdi, 8(%rsi,%r8)
	movzbl	decode_block_scan+2(%r15), %esi
	movl	%esi, %edi
	andl	$3, %edi
	shrl	$2, %esi
	andl	$3, %esi
	movslq	32(%r11), %r8
	addq	%rdi, %r8
	movslq	36(%r11), %rdi
	addq	%rsi, %rdi
	movq	152(%r9), %rsi
	movq	(%rsi,%rdi,8), %rsi
	shlq	$5, %r8
	movsbq	24(%rsi,%r8), %rdi
	movq	(%rbx,%rdi,8), %rdi
	movq	%rdi, (%rsi,%r8)
	movsbq	25(%rsi,%r8), %rdi
	movq	(%r14,%rdi,8), %rdi
	movq	%rdi, 8(%rsi,%r8)
	movzbl	decode_block_scan+3(%r15), %esi
	movl	%esi, %edi
	andl	$3, %edi
	shrl	$2, %esi
	andl	$3, %esi
	movslq	32(%r11), %r8
	addq	%rdi, %r8
	movslq	36(%r11), %rdi
	addq	%rsi, %rdi
	movq	152(%r9), %rsi
	movq	(%rsi,%rdi,8), %rsi
	shlq	$5, %r8
	movsbq	24(%rsi,%r8), %rdi
	movq	(%rbx,%rdi,8), %rdi
	movq	%rdi, (%rsi,%r8)
	movsbq	25(%rsi,%r8), %rdi
	movq	(%r14,%rdi,8), %rdi
	movq	%rdi, 8(%rsi,%r8)
	andl	$-3, %r13d
	cmpq	%r13, %rax
	movq	16(%rsp), %r15                  # 8-byte Reload
	jae	.LBB14_25
	jmp	.LBB14_23
.LBB14_19:                              #   in Loop: Header=BB14_7 Depth=1
	xorl	%ebp, %ebp
.LBB14_21:                              # %if.end172
                                        #   in Loop: Header=BB14_7 Depth=1
	movl	4(%rsp), %r10d                  # 4-byte Reload
	andl	$-3, %r13d
	cmpq	%r13, %rax
	movq	16(%rsp), %r15                  # 8-byte Reload
	jae	.LBB14_25
.LBB14_23:                              # %for.body176.preheader
                                        #   in Loop: Header=BB14_7 Depth=1
	movb	%dl, %cl
	leal	4(,%rcx,4), %ebx
	movq	8(%rsp), %r14                   # 8-byte Reload
	.p2align	4, 0x90
.LBB14_24:                              # %for.body176
                                        #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	decode_block_scan(%r14), %r9d
	movl	%r9d, %r8d
	andl	$3, %r8d
	shrl	$2, %r9d
	andl	$3, %r9d
	movq	%r11, %rdi
	movl	%r10d, %esi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	perform_mc@PLT
	movl	20(%rsp), %r10d                 # 4-byte Reload
	movq	40(%rsp), %r11                  # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	incq	%r14
	cmpq	%r14, %r13
	jne	.LBB14_24
	jmp	.LBB14_25
.LBB14_26:                              # %for.end194
	movq	%r11, %rdi
	movl	%r10d, %esi
	xorl	%edx, %edx
	movq	%r11, %rbx
	callq	iTransform@PLT
	cmpl	$0, 284(%rbx)
	je	.LBB14_28
# %bb.27:                               # %if.then197
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	$0, 1240(%rax)
.LBB14_28:                              # %if.end198
	movl	$1, %eax
	addq	$88, %rsp
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
.Lfunc_end14:
	.size	mb_pred_b_inter8x8, .Lfunc_end14-mb_pred_b_inter8x8
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mb_pred_ipcm
.LCPI15_0:
	.zero	16,16
	.text
	.globl	mb_pred_ipcm
	.p2align	4, 0x90
	.type	mb_pred_ipcm,@function
mb_pred_ipcm:                           # @mb_pred_ipcm
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
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movq	13520(%r14), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB15_1:                               # %for.cond3.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, (%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	4(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 2(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	8(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 4(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	12(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 6(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	16(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 8(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	20(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 10(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	24(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 12(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	28(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 14(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	32(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 16(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	36(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 18(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	40(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 20(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	44(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 22(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	48(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 24(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	52(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 26(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	128(%rax), %rsi
	movslq	48(%rbx), %rdi
	movzwl	56(%rdx), %edx
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movslq	44(%rbx), %rdi
	movw	%dx, 28(%rsi,%rdi,2)
	movq	1272(%r14), %rdx
	movq	(%rdx), %rdx
	movq	128(%rax), %rsi
	movq	(%rdx,%rcx,8), %rdx
	movslq	48(%rbx), %rdi
	addq	%rcx, %rdi
	movq	(%rsi,%rdi,8), %rsi
	movzwl	60(%rdx), %edx
	movslq	44(%rbx), %rdi
	movw	%dx, 30(%rsi,%rdi,2)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB15_1
# %bb.2:                                # %for.end16
	cmpl	$0, 268(%rax)
	je	.LBB15_20
# %bb.3:                                # %land.lhs.true
	cmpl	$0, 849280(%r15)
	je	.LBB15_4
.LBB15_20:                              # %if.end
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	update_qp@PLT
	movq	848832(%r15), %rax
	movslq	24(%rbx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movaps	.LCPI15_0(%rip), %xmm0          # xmm0 = [16,16,16,16,16,16,16,16,16,16,16,16,16,16,16,16]
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	movb	$0, 374(%rbx)
	movq	$65535, 288(%rbx)               # imm = 0xFFFF
	movl	$0, 212(%r14)
	movl	$0, 1240(%r14)
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB15_4:                               # %for.cond21.preheader
	.cfi_def_cfa_offset 32
	movl	849112(%r15), %ecx
	testl	%ecx, %ecx
	jle	.LBB15_20
# %bb.5:                                # %for.cond29.preheader.lr.ph
	movl	849108(%r15), %esi
	testl	%esi, %esi
	jle	.LBB15_20
# %bb.6:                                # %for.cond29.preheader.preheader
	xorl	%edx, %edx
	jmp	.LBB15_7
	.p2align	4, 0x90
.LBB15_11:                              # %for.inc53
                                        #   in Loop: Header=BB15_7 Depth=1
	incq	%rdx
	movslq	%ecx, %rdi
	cmpq	%rdi, %rdx
	jge	.LBB15_12
.LBB15_7:                               # %for.cond29.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_9 Depth 2
	testl	%esi, %esi
	jle	.LBB15_11
# %bb.8:                                # %for.body32.lr.ph
                                        #   in Loop: Header=BB15_7 Depth=1
	movslq	%edx, %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB15_9:                               # %for.body32
                                        #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1272(%r14), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rsi
	movzwl	(%rsi,%rdi,4), %esi
	movq	136(%rax), %r8
	movq	(%r8), %r8
	movslq	56(%rbx), %r9
	addq	%rcx, %r9
	movq	(%r8,%r9,8), %r8
	movslq	52(%rbx), %r9
	addq	%rdi, %r9
	movw	%si, (%r8,%r9,2)
	incq	%rdi
	movslq	849108(%r15), %rsi
	cmpq	%rsi, %rdi
	jl	.LBB15_9
# %bb.10:                               # %for.inc53.loopexit
                                        #   in Loop: Header=BB15_7 Depth=1
	movl	849112(%r15), %ecx
	jmp	.LBB15_11
.LBB15_12:                              # %for.inc56
	testl	%ecx, %ecx
	jle	.LBB15_20
# %bb.13:                               # %for.cond29.preheader.lr.ph.1
	movl	849108(%r15), %esi
	testl	%esi, %esi
	jle	.LBB15_20
# %bb.14:                               # %for.cond29.preheader.1.preheader
	xorl	%edx, %edx
	jmp	.LBB15_15
	.p2align	4, 0x90
.LBB15_18:                              # %for.inc53.loopexit.1
                                        #   in Loop: Header=BB15_15 Depth=1
	movl	849112(%r15), %ecx
.LBB15_19:                              # %for.inc53.1
                                        #   in Loop: Header=BB15_15 Depth=1
	incq	%rdx
	movslq	%ecx, %rdi
	cmpq	%rdi, %rdx
	jge	.LBB15_20
.LBB15_15:                              # %for.cond29.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_17 Depth 2
	testl	%esi, %esi
	jle	.LBB15_19
# %bb.16:                               # %for.body32.lr.ph.1
                                        #   in Loop: Header=BB15_15 Depth=1
	movslq	%edx, %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB15_17:                              # %for.body32.1
                                        #   Parent Loop BB15_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1272(%r14), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi,%rdx,8), %rsi
	movzwl	(%rsi,%rdi,4), %esi
	movq	136(%rax), %r8
	movq	8(%r8), %r8
	movslq	56(%rbx), %r9
	addq	%rcx, %r9
	movq	(%r8,%r9,8), %r8
	movslq	52(%rbx), %r9
	addq	%rdi, %r9
	movw	%si, (%r8,%r9,2)
	incq	%rdi
	movslq	849108(%r15), %rsi
	cmpq	%rsi, %rdi
	jl	.LBB15_17
	jmp	.LBB15_18
.Lfunc_end15:
	.size	mb_pred_ipcm, .Lfunc_end15-mb_pred_ipcm
	.cfi_endproc
                                        # -- End function
	.type	decode_block_scan,@object       # @decode_block_scan
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
decode_block_scan:
	.ascii	"\000\001\004\005\002\003\006\007\b\t\f\r\n\013\016\017"
	.size	decode_block_scan, 16

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"temporal direct error: colocated block has ref that is unavailable"
	.size	.L.str, 67

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
