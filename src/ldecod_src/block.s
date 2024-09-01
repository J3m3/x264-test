	.text
	.file	"block.c"
	.globl	itrans4x4                       # -- Begin function itrans4x4
	.p2align	4, 0x90
	.type	itrans4x4,@function
itrans4x4:                              # @itrans4x4
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
	movl	%ecx, %ebp
	movl	%edx, %ebx
	movq	%rdi, %r14
	movq	(%rdi), %r12
	movl	%esi, %r13d
	movq	1264(%r12), %rax
	movq	1272(%r12), %rcx
	movq	(%rax,%r13,8), %r15
	movq	(%rcx,%r13,8), %rdi
	movq	%r15, %rsi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	callq	inverse4x4@PLT
	movq	1248(%r12), %rax
	movq	1256(%r12), %rcx
	movslq	%ebp, %rdx
	leaq	(,%rdx,8), %rsi
	movq	(%rcx,%r13,8), %rdi
	addq	%rsi, %rdi
	addq	(%rax,%r13,8), %rsi
	leaq	(%r15,%rdx,8), %rdx
	movq	8(%r14), %rax
	movl	849072(%rax,%r13,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	%ebx, %ecx
	movl	%ebx, %r8d
	movl	$4, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
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
	.size	itrans4x4, .Lfunc_end0-itrans4x4
	.cfi_endproc
                                        # -- End function
	.globl	itrans4x4_ls                    # -- Begin function itrans4x4_ls
	.p2align	4, 0x90
	.type	itrans4x4_ls,@function
itrans4x4_ls:                           # @itrans4x4_ls
	.cfi_startproc
# %bb.0:                                # %for.end31
	movq	(%rdi), %r9
	movq	8(%rdi), %rax
	movl	%esi, %r10d
	movl	849072(%rax,%r10,4), %eax
	movq	1248(%r9), %rsi
	movq	(%rsi,%r10,8), %rsi
	movq	1264(%r9), %rdi
	movq	(%rdi,%r10,8), %rdi
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	movq	(%rsi,%rcx,8), %r8
	movzwl	(%r8,%rdx,2), %r11d
	movq	(%rdi,%rcx,8), %r8
	addl	(%r8,%rdx,4), %r11d
	xorl	%r8d, %r8d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	movq	1256(%r9), %r9
	cmpl	%eax, %r11d
	cmovgel	%eax, %r11d
	movq	(%r9,%r10,8), %r9
	movq	(%r9,%rcx,8), %r10
	movw	%r11w, (%r10,%rdx,2)
	movq	(%rsi,%rcx,8), %r10
	movzwl	2(%r10,%rdx,2), %r10d
	movq	(%rdi,%rcx,8), %r11
	addl	4(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	(%r9,%rcx,8), %r11
	movw	%r10w, 2(%r11,%rdx,2)
	movq	(%rsi,%rcx,8), %r10
	movzwl	4(%r10,%rdx,2), %r10d
	movq	(%rdi,%rcx,8), %r11
	addl	8(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	(%r9,%rcx,8), %r11
	movw	%r10w, 4(%r11,%rdx,2)
	movq	(%rsi,%rcx,8), %r10
	movzwl	6(%r10,%rdx,2), %r10d
	movq	(%rdi,%rcx,8), %r11
	addl	12(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	(%r9,%rcx,8), %r11
	movw	%r10w, 6(%r11,%rdx,2)
	movq	8(%rsi,%rcx,8), %r10
	movzwl	(%r10,%rdx,2), %r10d
	movq	8(%rdi,%rcx,8), %r11
	addl	(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	8(%r9,%rcx,8), %r11
	movw	%r10w, (%r11,%rdx,2)
	movq	8(%rsi,%rcx,8), %r10
	movzwl	2(%r10,%rdx,2), %r10d
	movq	8(%rdi,%rcx,8), %r11
	addl	4(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	8(%r9,%rcx,8), %r11
	movw	%r10w, 2(%r11,%rdx,2)
	movq	8(%rsi,%rcx,8), %r10
	movzwl	4(%r10,%rdx,2), %r10d
	movq	8(%rdi,%rcx,8), %r11
	addl	8(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	8(%r9,%rcx,8), %r11
	movw	%r10w, 4(%r11,%rdx,2)
	movq	8(%rsi,%rcx,8), %r10
	movzwl	6(%r10,%rdx,2), %r10d
	movq	8(%rdi,%rcx,8), %r11
	addl	12(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	8(%r9,%rcx,8), %r11
	movw	%r10w, 6(%r11,%rdx,2)
	movq	16(%rsi,%rcx,8), %r10
	movzwl	(%r10,%rdx,2), %r10d
	movq	16(%rdi,%rcx,8), %r11
	addl	(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	16(%r9,%rcx,8), %r11
	movw	%r10w, (%r11,%rdx,2)
	movq	16(%rsi,%rcx,8), %r10
	movzwl	2(%r10,%rdx,2), %r10d
	movq	16(%rdi,%rcx,8), %r11
	addl	4(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	16(%r9,%rcx,8), %r11
	movw	%r10w, 2(%r11,%rdx,2)
	movq	16(%rsi,%rcx,8), %r10
	movzwl	4(%r10,%rdx,2), %r10d
	movq	16(%rdi,%rcx,8), %r11
	addl	8(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	16(%r9,%rcx,8), %r11
	movw	%r10w, 4(%r11,%rdx,2)
	movq	16(%rsi,%rcx,8), %r10
	movzwl	6(%r10,%rdx,2), %r10d
	movq	16(%rdi,%rcx,8), %r11
	addl	12(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	16(%r9,%rcx,8), %r11
	movw	%r10w, 6(%r11,%rdx,2)
	movq	24(%rsi,%rcx,8), %r10
	movzwl	(%r10,%rdx,2), %r10d
	movq	24(%rdi,%rcx,8), %r11
	addl	(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	24(%r9,%rcx,8), %r11
	movw	%r10w, (%r11,%rdx,2)
	movq	24(%rsi,%rcx,8), %r10
	movzwl	2(%r10,%rdx,2), %r10d
	movq	24(%rdi,%rcx,8), %r11
	addl	4(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	24(%r9,%rcx,8), %r11
	movw	%r10w, 2(%r11,%rdx,2)
	movq	24(%rsi,%rcx,8), %r10
	movzwl	4(%r10,%rdx,2), %r10d
	movq	24(%rdi,%rcx,8), %r11
	addl	8(%r11,%rdx,4), %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movq	24(%r9,%rcx,8), %r11
	movw	%r10w, 4(%r11,%rdx,2)
	movq	24(%rsi,%rcx,8), %rsi
	movzwl	6(%rsi,%rdx,2), %esi
	movq	24(%rdi,%rcx,8), %rdi
	addl	12(%rdi,%rdx,4), %esi
	testl	%esi, %esi
	cmovlel	%r8d, %esi
	cmpl	%eax, %esi
	cmovgel	%eax, %esi
	movq	24(%r9,%rcx,8), %rax
	movw	%si, 6(%rax,%rdx,2)
	retq
.Lfunc_end1:
	.size	itrans4x4_ls, .Lfunc_end1-itrans4x4_ls
	.cfi_endproc
                                        # -- End function
	.globl	Inv_Residual_trans_4x4          # -- Begin function Inv_Residual_trans_4x4
	.p2align	4, 0x90
	.type	Inv_Residual_trans_4x4,@function
Inv_Residual_trans_4x4:                 # @Inv_Residual_trans_4x4
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r9
	movl	%esi, %r10d
	movq	1248(%r9), %rax
	movq	1256(%r9), %r8
	movq	(%rax,%r10,8), %rsi
	movq	(%r8,%r10,8), %rbx
	movq	1264(%r9), %r8
	movq	(%r8,%r10,8), %r8
	movq	1272(%r9), %r9
	movq	(%r9,%r10,8), %r9
	movzbl	372(%rdi), %edi
	testl	%edi, %edi
	je	.LBB2_4
# %bb.1:                                # %entry
	movslq	%edx, %rdx
	movslq	%ecx, %rcx
	cmpl	$1, %edi
	jne	.LBB2_5
# %bb.2:                                # %for.cond108.preheader
	movq	(%r9,%rcx,8), %rdi
	movq	8(%r9,%rcx,8), %r11
	movl	(%rdi,%rdx,4), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	movl	4(%rdi,%rdx,4), %r14d
	movl	8(%rdi,%rdx,4), %r15d
	movl	12(%rdi,%rdx,4), %eax
	movl	%eax, -28(%rsp)                 # 4-byte Spill
	movl	(%r11,%rdx,4), %eax
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	movl	4(%r11,%rdx,4), %eax
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	movl	8(%r11,%rdx,4), %r10d
	movl	12(%r11,%rdx,4), %eax
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	movq	16(%r9,%rcx,8), %r13
	movl	(%r13,%rdx,4), %eax
	movl	%eax, -16(%rsp)                 # 4-byte Spill
	movl	4(%r13,%rdx,4), %r11d
	movl	8(%r13,%rdx,4), %r12d
	movl	12(%r13,%rdx,4), %r13d
	movq	24(%r9,%rcx,8), %rax
	movl	(%rax,%rdx,4), %edi
	movl	%edi, -20(%rsp)                 # 4-byte Spill
	movl	4(%rax,%rdx,4), %r9d
	movl	8(%rax,%rdx,4), %ebp
	movl	12(%rax,%rdx,4), %eax
	movl	%eax, -8(%rsp)                  # 4-byte Spill
	movq	(%r8,%rcx,8), %rax
	movl	-32(%rsp), %edi                 # 4-byte Reload
	movl	%edi, (%rax,%rdx,4)
	addl	%edi, %r14d
	movq	(%r8,%rcx,8), %rax
	movl	%r14d, 4(%rax,%rdx,4)
	addl	%r14d, %r15d
	movq	(%r8,%rcx,8), %rax
	movl	%r15d, 8(%rax,%rdx,4)
	movl	-28(%rsp), %r14d                # 4-byte Reload
	addl	%r15d, %r14d
	movq	(%r8,%rcx,8), %rax
	movl	%r14d, 12(%rax,%rdx,4)
	movq	8(%r8,%rcx,8), %rax
	movl	-12(%rsp), %r14d                # 4-byte Reload
	movl	%r14d, (%rax,%rdx,4)
	movl	-24(%rsp), %edi                 # 4-byte Reload
	addl	%r14d, %edi
	movq	8(%r8,%rcx,8), %rax
	movl	%edi, 4(%rax,%rdx,4)
	addl	%edi, %r10d
	movq	8(%r8,%rcx,8), %rax
	movl	%r10d, 8(%rax,%rdx,4)
	movl	-4(%rsp), %edi                  # 4-byte Reload
	addl	%r10d, %edi
	movq	8(%r8,%rcx,8), %rax
	movl	%edi, 12(%rax,%rdx,4)
	movq	16(%r8,%rcx,8), %rax
	movl	-16(%rsp), %edi                 # 4-byte Reload
	movl	%edi, (%rax,%rdx,4)
	addl	%edi, %r11d
	movq	16(%r8,%rcx,8), %rax
	movl	%r11d, 4(%rax,%rdx,4)
	addl	%r11d, %r12d
	movq	16(%r8,%rcx,8), %rax
	movl	%r12d, 8(%rax,%rdx,4)
	addl	%r12d, %r13d
	movq	16(%r8,%rcx,8), %rax
	movl	%r13d, 12(%rax,%rdx,4)
	movq	24(%r8,%rcx,8), %rax
	movl	-20(%rsp), %edi                 # 4-byte Reload
	movl	%edi, (%rax,%rdx,4)
	addl	%edi, %r9d
	movq	24(%r8,%rcx,8), %rax
	movl	%r9d, 4(%rax,%rdx,4)
	addl	%r9d, %ebp
	movq	24(%r8,%rcx,8), %rax
	movl	%ebp, 8(%rax,%rdx,4)
	movl	-8(%rsp), %edi                  # 4-byte Reload
	jmp	.LBB2_3
.LBB2_4:                                # %for.cond.preheader
	movslq	%ecx, %rcx
	movq	(%r9,%rcx,8), %r13
	movq	8(%r9,%rcx,8), %rbp
	movq	16(%r9,%rcx,8), %r10
	movq	24(%r9,%rcx,8), %r11
	movslq	%edx, %rdx
	movl	(%r13,%rdx,4), %eax
	movl	%eax, -16(%rsp)                 # 4-byte Spill
	movl	4(%r13,%rdx,4), %eax
	movl	%eax, -12(%rsp)                 # 4-byte Spill
	movl	8(%r13,%rdx,4), %eax
	movl	%eax, -8(%rsp)                  # 4-byte Spill
	movl	12(%r13,%rdx,4), %eax
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	movl	(%rbp,%rdx,4), %r14d
	movl	(%r10,%rdx,4), %r15d
	movl	4(%rbp,%rdx,4), %r12d
	movl	8(%rbp,%rdx,4), %eax
	addl	4(%r13,%rdx,4), %r12d
	addl	8(%r13,%rdx,4), %eax
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	movl	4(%r10,%rdx,4), %r9d
	movl	12(%rbp,%rdx,4), %eax
	addl	12(%r13,%rdx,4), %eax
	movl	%eax, -24(%rsp)                 # 4-byte Spill
	movl	8(%r10,%rdx,4), %r13d
	movl	12(%r10,%rdx,4), %ebp
	movl	(%r11,%rdx,4), %edi
	movl	4(%r11,%rdx,4), %r10d
	movl	8(%r11,%rdx,4), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	movl	12(%r11,%rdx,4), %eax
	movl	%eax, -28(%rsp)                 # 4-byte Spill
	movq	(%r8,%rcx,8), %r11
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movl	%eax, (%r11,%rdx,4)
	addl	%eax, %r14d
	movq	8(%r8,%rcx,8), %r11
	movl	%r14d, (%r11,%rdx,4)
	addl	%r14d, %r15d
	movq	16(%r8,%rcx,8), %r11
	movl	%r15d, (%r11,%rdx,4)
	addl	%r15d, %edi
	movq	24(%r8,%rcx,8), %r11
	movl	%edi, (%r11,%rdx,4)
	movq	(%r8,%rcx,8), %rax
	movl	-12(%rsp), %r11d                # 4-byte Reload
	movl	%r11d, 4(%rax,%rdx,4)
	movq	8(%r8,%rcx,8), %rax
	movl	%r12d, 4(%rax,%rdx,4)
	addl	%r12d, %r9d
	movq	16(%r8,%rcx,8), %rax
	movl	%r9d, 4(%rax,%rdx,4)
	addl	%r9d, %r10d
	movq	24(%r8,%rcx,8), %rax
	movl	%r10d, 4(%rax,%rdx,4)
	movq	(%r8,%rcx,8), %rax
	movl	-8(%rsp), %edi                  # 4-byte Reload
	movl	%edi, 8(%rax,%rdx,4)
	movq	8(%r8,%rcx,8), %rax
	movl	-20(%rsp), %edi                 # 4-byte Reload
	movl	%edi, 8(%rax,%rdx,4)
	addl	%edi, %r13d
	movq	16(%r8,%rcx,8), %rax
	movl	%r13d, 8(%rax,%rdx,4)
	movl	-32(%rsp), %edi                 # 4-byte Reload
	addl	%r13d, %edi
	movq	24(%r8,%rcx,8), %rax
	movl	%edi, 8(%rax,%rdx,4)
	movq	(%r8,%rcx,8), %rax
	movl	-4(%rsp), %edi                  # 4-byte Reload
	movl	%edi, 12(%rax,%rdx,4)
	movq	8(%r8,%rcx,8), %rax
	movl	-24(%rsp), %edi                 # 4-byte Reload
	movl	%edi, 12(%rax,%rdx,4)
	addl	%edi, %ebp
	movq	16(%r8,%rcx,8), %rax
	movl	%ebp, 12(%rax,%rdx,4)
	movl	-28(%rsp), %edi                 # 4-byte Reload
.LBB2_3:                                # %for.end260
	addl	%ebp, %edi
	movq	24(%r8,%rcx,8), %rax
	movl	%edi, 12(%rax,%rdx,4)
	leaq	1(%rdx), %rdi
	jmp	.LBB2_6
.LBB2_5:                                # %if.end229.loopexit
	movq	(%r9,%rcx,8), %rax
	movl	(%rax,%rdx,4), %eax
	movq	(%r8,%rcx,8), %rdi
	movl	%eax, (%rdi,%rdx,4)
	leaq	1(%rdx), %rdi
	movq	(%r9,%rcx,8), %rax
	movl	4(%rax,%rdx,4), %eax
	movq	(%r8,%rcx,8), %r10
	movl	%eax, 4(%r10,%rdx,4)
	movq	(%r9,%rcx,8), %rax
	movl	8(%rax,%rdx,4), %eax
	movq	(%r8,%rcx,8), %r10
	movl	%eax, 8(%r10,%rdx,4)
	movq	(%r9,%rcx,8), %rax
	movl	12(%rax,%rdx,4), %eax
	movq	(%r8,%rcx,8), %r10
	movl	%eax, 12(%r10,%rdx,4)
	movq	8(%r9,%rcx,8), %rax
	movl	(%rax,%rdx,4), %eax
	movq	8(%r8,%rcx,8), %r10
	movl	%eax, (%r10,%rdx,4)
	movq	8(%r9,%rcx,8), %rax
	movl	4(%rax,%rdx,4), %eax
	movq	8(%r8,%rcx,8), %r10
	movl	%eax, 4(%r10,%rdx,4)
	movq	8(%r9,%rcx,8), %rax
	movl	8(%rax,%rdx,4), %eax
	movq	8(%r8,%rcx,8), %r10
	movl	%eax, 8(%r10,%rdx,4)
	movq	8(%r9,%rcx,8), %rax
	movl	12(%rax,%rdx,4), %eax
	movq	8(%r8,%rcx,8), %r10
	movl	%eax, 12(%r10,%rdx,4)
	movq	16(%r9,%rcx,8), %rax
	movl	(%rax,%rdx,4), %eax
	movq	16(%r8,%rcx,8), %r10
	movl	%eax, (%r10,%rdx,4)
	movq	16(%r9,%rcx,8), %rax
	movl	4(%rax,%rdx,4), %eax
	movq	16(%r8,%rcx,8), %r10
	movl	%eax, 4(%r10,%rdx,4)
	movq	16(%r9,%rcx,8), %rax
	movl	8(%rax,%rdx,4), %eax
	movq	16(%r8,%rcx,8), %r10
	movl	%eax, 8(%r10,%rdx,4)
	movq	16(%r9,%rcx,8), %rax
	movl	12(%rax,%rdx,4), %eax
	movq	16(%r8,%rcx,8), %r10
	movl	%eax, 12(%r10,%rdx,4)
	movq	24(%r9,%rcx,8), %rax
	movl	(%rax,%rdx,4), %eax
	movq	24(%r8,%rcx,8), %r10
	movl	%eax, (%r10,%rdx,4)
	movq	24(%r9,%rcx,8), %rax
	movl	4(%rax,%rdx,4), %eax
	movq	24(%r8,%rcx,8), %r10
	movl	%eax, 4(%r10,%rdx,4)
	movq	24(%r9,%rcx,8), %rax
	movl	8(%rax,%rdx,4), %eax
	movq	24(%r8,%rcx,8), %r10
	movl	%eax, 8(%r10,%rdx,4)
	movq	24(%r9,%rcx,8), %rax
	movl	12(%rax,%rdx,4), %eax
	movq	24(%r8,%rcx,8), %r9
	movl	%eax, 12(%r9,%rdx,4)
.LBB2_6:                                # %for.end260
	movq	(%r8,%rcx,8), %rax
	movq	(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdx,2), %r9d
	addw	(%rax,%rdx,4), %r9w
	movq	(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdx,2)
	movq	(%r8,%rcx,8), %rax
	movq	(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdi,2), %r9d
	addw	(%rax,%rdi,4), %r9w
	movq	(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdi,2)
	movq	(%r8,%rcx,8), %rax
	movq	(%rsi,%rcx,8), %r9
	movzwl	4(%r9,%rdx,2), %r9d
	addw	8(%rax,%rdx,4), %r9w
	movq	(%rbx,%rcx,8), %rax
	movw	%r9w, 4(%rax,%rdx,2)
	movq	(%r8,%rcx,8), %rax
	movq	(%rsi,%rcx,8), %r9
	movzwl	6(%r9,%rdx,2), %r9d
	addw	12(%rax,%rdx,4), %r9w
	movq	(%rbx,%rcx,8), %rax
	movw	%r9w, 6(%rax,%rdx,2)
	movq	8(%r8,%rcx,8), %rax
	movq	8(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdx,2), %r9d
	addw	(%rax,%rdx,4), %r9w
	movq	8(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdx,2)
	movq	8(%r8,%rcx,8), %rax
	movq	8(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdi,2), %r9d
	addw	(%rax,%rdi,4), %r9w
	movq	8(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdi,2)
	movq	8(%r8,%rcx,8), %rax
	movq	8(%rsi,%rcx,8), %r9
	movzwl	4(%r9,%rdx,2), %r9d
	addw	8(%rax,%rdx,4), %r9w
	movq	8(%rbx,%rcx,8), %rax
	movw	%r9w, 4(%rax,%rdx,2)
	movq	8(%r8,%rcx,8), %rax
	movq	8(%rsi,%rcx,8), %r9
	movzwl	6(%r9,%rdx,2), %r9d
	addw	12(%rax,%rdx,4), %r9w
	movq	8(%rbx,%rcx,8), %rax
	movw	%r9w, 6(%rax,%rdx,2)
	movq	16(%r8,%rcx,8), %rax
	movq	16(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdx,2), %r9d
	addw	(%rax,%rdx,4), %r9w
	movq	16(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdx,2)
	movq	16(%r8,%rcx,8), %rax
	movq	16(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdi,2), %r9d
	addw	(%rax,%rdi,4), %r9w
	movq	16(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdi,2)
	movq	16(%r8,%rcx,8), %rax
	movq	16(%rsi,%rcx,8), %r9
	movzwl	4(%r9,%rdx,2), %r9d
	addw	8(%rax,%rdx,4), %r9w
	movq	16(%rbx,%rcx,8), %rax
	movw	%r9w, 4(%rax,%rdx,2)
	movq	16(%r8,%rcx,8), %rax
	movq	16(%rsi,%rcx,8), %r9
	movzwl	6(%r9,%rdx,2), %r9d
	addw	12(%rax,%rdx,4), %r9w
	movq	16(%rbx,%rcx,8), %rax
	movw	%r9w, 6(%rax,%rdx,2)
	movq	24(%r8,%rcx,8), %rax
	movq	24(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdx,2), %r9d
	addw	(%rax,%rdx,4), %r9w
	movq	24(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdx,2)
	movq	24(%r8,%rcx,8), %rax
	movq	24(%rsi,%rcx,8), %r9
	movzwl	(%r9,%rdi,2), %r9d
	addw	(%rax,%rdi,4), %r9w
	movq	24(%rbx,%rcx,8), %rax
	movw	%r9w, (%rax,%rdi,2)
	movq	24(%r8,%rcx,8), %rax
	movq	24(%rsi,%rcx,8), %rdi
	movzwl	4(%rdi,%rdx,2), %edi
	addw	8(%rax,%rdx,4), %di
	movq	24(%rbx,%rcx,8), %rax
	movw	%di, 4(%rax,%rdx,2)
	movq	24(%r8,%rcx,8), %rax
	movq	24(%rsi,%rcx,8), %rsi
	movzwl	6(%rsi,%rdx,2), %esi
	addw	12(%rax,%rdx,4), %si
	movq	24(%rbx,%rcx,8), %rax
	movw	%si, 6(%rax,%rdx,2)
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
	.size	Inv_Residual_trans_4x4, .Lfunc_end2-Inv_Residual_trans_4x4
	.cfi_endproc
                                        # -- End function
	.globl	Inv_Residual_trans_8x8          # -- Begin function Inv_Residual_trans_8x8
	.p2align	4, 0x90
	.type	Inv_Residual_trans_8x8,@function
Inv_Residual_trans_8x8:                 # @Inv_Residual_trans_8x8
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
	subq	$96, %rsp
	.cfi_def_cfa_offset 152
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r9d
	movq	(%rdi), %rcx
	movl	%esi, %r8d
	movq	1248(%rcx), %rax
	movq	1256(%rcx), %rsi
	movq	(%rax,%r8,8), %rax
	movq	(%rsi,%r8,8), %rsi
	movq	1264(%rcx), %rcx
	movq	(%rcx,%r8,8), %r8
	movzbl	372(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB3_3
# %bb.1:                                # %entry
	movslq	%edx, %rdx
	movslq	%r9d, %rdi
	cmpl	$1, %ecx
	jne	.LBB3_4
# %bb.2:                                # %for.cond193.preheader
	movq	(%r8,%rdi,8), %r15
	movq	8(%r8,%rdi,8), %r14
	movl	4(%r15,%rdx,4), %r12d
	addl	(%r15,%rdx,4), %r12d
	movl	%r9d, 88(%rsp)                  # 4-byte Spill
	movl	8(%r15,%rdx,4), %r9d
	movl	12(%r15,%rdx,4), %r10d
	movl	16(%r15,%rdx,4), %r11d
	movl	20(%r15,%rdx,4), %ebx
	movl	24(%r15,%rdx,4), %ebp
	movl	28(%r15,%rdx,4), %ecx
	movl	%ecx, -128(%rsp)                # 4-byte Spill
	movl	(%r14,%rdx,4), %ecx
	movl	%ecx, -96(%rsp)                 # 4-byte Spill
	movl	4(%r14,%rdx,4), %ecx
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	movl	8(%r14,%rdx,4), %ecx
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	movl	12(%r14,%rdx,4), %ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	movl	16(%r14,%rdx,4), %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movl	20(%r14,%rdx,4), %ecx
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	movl	24(%r14,%rdx,4), %ecx
	movl	%ecx, 64(%rsp)                  # 4-byte Spill
	movl	28(%r14,%rdx,4), %ecx
	movl	%ecx, -68(%rsp)                 # 4-byte Spill
	movq	16(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -100(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, -124(%rsp)               # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r15d
	movl	12(%rcx,%rdx,4), %r13d
	movl	%r13d, 60(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r13d
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, 56(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	%r14d, 48(%rsp)                 # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	movq	24(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -104(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, 52(%rsp)                 # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r14d
	movl	%r14d, 40(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r14d
	movl	%r14d, 44(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r14d
	movl	%r14d, 32(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, 36(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	movq	32(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -108(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, 28(%rsp)                 # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r14d
	movl	%r14d, 16(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r14d
	movl	%r14d, 20(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r14d
	movl	%r14d, 8(%rsp)                  # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, 12(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	%r14d, (%rsp)                   # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -80(%rsp)                 # 4-byte Spill
	movq	40(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -112(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, 4(%rsp)                  # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r14d
	movl	%r14d, -8(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r14d
	movl	%r14d, -4(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r14d
	movl	%r14d, -16(%rsp)                # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, -12(%rsp)                # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	%r14d, -24(%rsp)                # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -84(%rsp)                 # 4-byte Spill
	movq	48(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -116(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, -20(%rsp)                # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r14d
	movl	%r14d, -32(%rsp)                # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r14d
	movl	%r14d, -28(%rsp)                # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r14d
	movl	%r14d, -40(%rsp)                # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, -36(%rsp)                # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	%r14d, -48(%rsp)                # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -88(%rsp)                 # 4-byte Spill
	movq	56(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, -120(%rsp)               # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r14d
	movl	%r14d, -44(%rsp)                # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r14d
	movl	%r14d, -56(%rsp)                # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r14d
	movl	%r14d, -52(%rsp)                # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r14d
	movl	%r14d, -64(%rsp)                # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r14d
	movl	%r14d, -60(%rsp)                # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r14d
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -92(%rsp)                 # 4-byte Spill
	movq	(%r8,%rdi,8), %rcx
	movl	%r12d, 4(%rcx,%rdx,4)
	addl	%r12d, %r9d
	movq	(%r8,%rdi,8), %rcx
	movl	%r9d, 8(%rcx,%rdx,4)
	addl	%r9d, %r10d
	movl	88(%rsp), %r9d                  # 4-byte Reload
	movq	(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	addl	%r10d, %r11d
	movq	(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	addl	%r11d, %ebx
	movq	(%r8,%rdi,8), %rcx
	movl	%ebx, 20(%rcx,%rdx,4)
	addl	%ebx, %ebp
	movq	(%r8,%rdi,8), %rcx
	movl	%ebp, 24(%rcx,%rdx,4)
	movl	-128(%rsp), %r10d               # 4-byte Reload
	addl	%ebp, %r10d
	movq	(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	8(%r8,%rdi,8), %rcx
	movl	-96(%rsp), %r11d                # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	84(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	80(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	76(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	72(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	68(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	64(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-68(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	16(%r8,%rdi,8), %rcx
	movl	-100(%rsp), %r10d               # 4-byte Reload
	movl	%r10d, (%rcx,%rdx,4)
	movl	-124(%rsp), %r11d               # 4-byte Reload
	addl	%r10d, %r11d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r11d, 4(%rcx,%rdx,4)
	addl	%r11d, %r15d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r15d, 8(%rcx,%rdx,4)
	movl	60(%rsp), %r10d                 # 4-byte Reload
	addl	%r15d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	addl	%r10d, %r13d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r13d, 16(%rcx,%rdx,4)
	movl	56(%rsp), %r10d                 # 4-byte Reload
	addl	%r13d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	48(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-72(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	24(%r8,%rdi,8), %rcx
	movl	-104(%rsp), %r11d               # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	52(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	40(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	44(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	32(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	36(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	24(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-76(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	32(%r8,%rdi,8), %rcx
	movl	-108(%rsp), %r11d               # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	28(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	16(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	20(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	8(%rsp), %r11d                  # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	12(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	(%rsp), %r11d                   # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-80(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	40(%r8,%rdi,8), %rcx
	movl	-112(%rsp), %r11d               # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	4(%rsp), %r10d                  # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	-8(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-4(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-16(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-12(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	-24(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-84(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	48(%r8,%rdi,8), %rcx
	movl	-116(%rsp), %r11d               # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	-20(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	-32(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-28(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-40(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-36(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	-48(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-88(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movq	56(%r8,%rdi,8), %rcx
	movl	-120(%rsp), %r11d               # 4-byte Reload
	movl	%r11d, (%rcx,%rdx,4)
	movl	-44(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	-56(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-52(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-64(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-60(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	%r14d, %r11d
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-92(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	jmp	.LBB3_4
.LBB3_3:                                # %for.cond.preheader
	movslq	%r9d, %rdi
	movl	%r9d, 88(%rsp)                  # 4-byte Spill
	movq	(%r8,%rdi,8), %r9
	movq	8(%r8,%rdi,8), %rcx
	movslq	%edx, %rdx
	movl	(%rcx,%rdx,4), %r10d
	addl	(%r9,%rdx,4), %r10d
	movl	%r10d, 36(%rsp)                 # 4-byte Spill
	movl	4(%r9,%rdx,4), %r10d
	movl	%r10d, 44(%rsp)                 # 4-byte Spill
	movl	8(%r9,%rdx,4), %r10d
	movl	%r10d, 84(%rsp)                 # 4-byte Spill
	movl	4(%rcx,%rdx,4), %r10d
	movl	%r10d, 40(%rsp)                 # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r10d
	movl	%r10d, 48(%rsp)                 # 4-byte Spill
	movl	12(%r9,%rdx,4), %r10d
	movl	%r10d, 52(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r10d
	movl	%r10d, 56(%rsp)                 # 4-byte Spill
	movl	16(%r9,%rdx,4), %r10d
	movl	%r10d, 60(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r10d
	movl	%r10d, 64(%rsp)                 # 4-byte Spill
	movl	20(%r9,%rdx,4), %r10d
	movl	%r10d, 68(%rsp)                 # 4-byte Spill
	movl	24(%r9,%rdx,4), %r10d
	movl	%r10d, 76(%rsp)                 # 4-byte Spill
	movl	28(%r9,%rdx,4), %r9d
	movl	%r9d, 80(%rsp)                  # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, (%rsp)                    # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, 24(%rsp)                  # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movq	16(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r13d
	movl	4(%rcx,%rdx,4), %r9d
	movl	%r9d, -108(%rsp)                # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r9d
	movl	%r9d, -84(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r9d
	movl	%r9d, -60(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r9d
	movl	%r9d, -36(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, -12(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movq	24(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r15d
	movl	4(%rcx,%rdx,4), %r9d
	movl	%r9d, -116(%rsp)                # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r9d
	movl	%r9d, -92(%rsp)                 # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r9d
	movl	%r9d, -68(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r9d
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, -20(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, 8(%rsp)                   # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	movq	32(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %ebp
	movl	4(%rcx,%rdx,4), %r9d
	movl	%r9d, -124(%rsp)                # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r9d
	movl	%r9d, -100(%rsp)                # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r9d
	movl	%r9d, -76(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r9d
	movl	%r9d, -52(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, -28(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, -4(%rsp)                  # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	movq	40(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %ebx
	movl	4(%rcx,%rdx,4), %r12d
	movl	8(%rcx,%rdx,4), %r9d
	movl	%r9d, -112(%rsp)                # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r9d
	movl	%r9d, -88(%rsp)                 # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r9d
	movl	%r9d, -64(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, -40(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, -16(%rsp)                 # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	48(%r8,%rdi,8), %r9
	movl	(%r9,%rdx,4), %r10d
	movl	4(%r9,%rdx,4), %r14d
	movl	8(%r9,%rdx,4), %ecx
	movl	%ecx, -120(%rsp)                # 4-byte Spill
	movl	12(%r9,%rdx,4), %ecx
	movl	%ecx, -96(%rsp)                 # 4-byte Spill
	movl	16(%r9,%rdx,4), %ecx
	movl	%ecx, -72(%rsp)                 # 4-byte Spill
	movl	20(%r9,%rdx,4), %ecx
	movl	%ecx, -48(%rsp)                 # 4-byte Spill
	movl	24(%r9,%rdx,4), %ecx
	movl	%ecx, -24(%rsp)                 # 4-byte Spill
	movl	28(%r9,%rdx,4), %ecx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movq	56(%r8,%rdi,8), %rcx
	movl	(%rcx,%rdx,4), %r11d
	movl	4(%rcx,%rdx,4), %r9d
	movl	%r9d, 92(%rsp)                  # 4-byte Spill
	movl	8(%rcx,%rdx,4), %r9d
	movl	%r9d, -128(%rsp)                # 4-byte Spill
	movl	12(%rcx,%rdx,4), %r9d
	movl	%r9d, -104(%rsp)                # 4-byte Spill
	movl	16(%rcx,%rdx,4), %r9d
	movl	%r9d, -80(%rsp)                 # 4-byte Spill
	movl	20(%rcx,%rdx,4), %r9d
	movl	%r9d, -56(%rsp)                 # 4-byte Spill
	movl	24(%rcx,%rdx,4), %r9d
	movl	%r9d, -32(%rsp)                 # 4-byte Spill
	movl	28(%rcx,%rdx,4), %ecx
	movl	%ecx, -8(%rsp)                  # 4-byte Spill
	movq	8(%r8,%rdi,8), %rcx
	movl	36(%rsp), %r9d                  # 4-byte Reload
	movl	%r9d, (%rcx,%rdx,4)
	addl	%r9d, %r13d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r13d, (%rcx,%rdx,4)
	addl	%r13d, %r15d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r15d, (%rcx,%rdx,4)
	addl	%r15d, %ebp
	movq	32(%r8,%rdi,8), %rcx
	movl	%ebp, (%rcx,%rdx,4)
	addl	%ebp, %ebx
	movq	40(%r8,%rdi,8), %rcx
	movl	%ebx, (%rcx,%rdx,4)
	addl	%ebx, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, (%rcx,%rdx,4)
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, (%rcx,%rdx,4)
	movl	88(%rsp), %r9d                  # 4-byte Reload
	movq	(%r8,%rdi,8), %rcx
	movl	44(%rsp), %r11d                 # 4-byte Reload
	movl	%r11d, 4(%rcx,%rdx,4)
	movl	40(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	-108(%rsp), %r11d               # 4-byte Reload
	addl	%r10d, %r11d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r11d, 4(%rcx,%rdx,4)
	movl	-116(%rsp), %r10d               # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movl	-124(%rsp), %r11d               # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 4(%rcx,%rdx,4)
	addl	%r11d, %r12d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r12d, 4(%rcx,%rdx,4)
	addl	%r12d, %r14d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r14d, 4(%rcx,%rdx,4)
	movl	92(%rsp), %r10d                 # 4-byte Reload
	addl	%r14d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 4(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	84(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, 8(%rcx,%rdx,4)
	movl	48(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-84(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 8(%rcx,%rdx,4)
	movl	-92(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-100(%rsp), %r10d               # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 8(%rcx,%rdx,4)
	movl	-112(%rsp), %r11d               # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movl	-120(%rsp), %r10d               # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 8(%rcx,%rdx,4)
	movl	-128(%rsp), %r11d               # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 8(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	52(%rsp), %r11d                 # 4-byte Reload
	movl	%r11d, 12(%rcx,%rdx,4)
	movl	56(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-60(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r11d, 12(%rcx,%rdx,4)
	movl	-68(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-76(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 12(%rcx,%rdx,4)
	movl	-88(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movl	-96(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r11d, 12(%rcx,%rdx,4)
	movl	-104(%rsp), %r10d               # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 12(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	60(%rsp), %r11d                 # 4-byte Reload
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	64(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r10d, 16(%rcx,%rdx,4)
	movl	-36(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-44(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r10d, 16(%rcx,%rdx,4)
	movl	-52(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-64(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r10d, 16(%rcx,%rdx,4)
	movl	-72(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r11d, 16(%rcx,%rdx,4)
	movl	-80(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r10d, 16(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	68(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	(%rsp), %r11d                   # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 20(%rcx,%rdx,4)
	movl	-12(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	-20(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 20(%rcx,%rdx,4)
	movl	-28(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	-40(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 20(%rcx,%rdx,4)
	movl	-48(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 20(%rcx,%rdx,4)
	movl	-56(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 20(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	76(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, 24(%rcx,%rdx,4)
	movl	24(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	16(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 24(%rcx,%rdx,4)
	movl	8(%rsp), %r11d                  # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-4(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 24(%rcx,%rdx,4)
	movl	-16(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movl	-24(%rsp), %r10d                # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 24(%rcx,%rdx,4)
	movl	-32(%rsp), %r11d                # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 24(%rcx,%rdx,4)
	movq	(%r8,%rdi,8), %rcx
	movl	80(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, 28(%rcx,%rdx,4)
	movl	72(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	8(%r8,%rdi,8), %rcx
	movl	%r11d, 28(%rcx,%rdx,4)
	movl	32(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	16(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movl	28(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	24(%r8,%rdi,8), %rcx
	movl	%r11d, 28(%rcx,%rdx,4)
	movl	20(%rsp), %r10d                 # 4-byte Reload
	addl	%r11d, %r10d
	movq	32(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movl	12(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	40(%r8,%rdi,8), %rcx
	movl	%r11d, 28(%rcx,%rdx,4)
	movl	4(%rsp), %r10d                  # 4-byte Reload
	addl	%r11d, %r10d
	movq	48(%r8,%rdi,8), %rcx
	movl	%r10d, 28(%rcx,%rdx,4)
	movl	-8(%rsp), %r11d                 # 4-byte Reload
	addl	%r10d, %r11d
	movq	56(%r8,%rdi,8), %rcx
	movl	%r11d, 28(%rcx,%rdx,4)
.LBB3_4:                                # %if.end379
	addl	$7, %r9d
	movslq	%r9d, %rcx
	decq	%rdi
	.p2align	4, 0x90
.LBB3_5:                                # %for.inc408
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	(%r10,%rdx,2), %r10d
	addw	(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, (%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	2(%r10,%rdx,2), %r10d
	addw	4(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 2(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	4(%r10,%rdx,2), %r10d
	addw	8(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 4(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	6(%r10,%rdx,2), %r10d
	addw	12(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 6(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	8(%r10,%rdx,2), %r10d
	addw	16(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 8(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	10(%r10,%rdx,2), %r10d
	addw	20(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 10(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	12(%r10,%rdx,2), %r10d
	addw	24(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 12(%r9,%rdx,2)
	movq	8(%r8,%rdi,8), %r9
	movq	8(%rax,%rdi,8), %r10
	movzwl	14(%r10,%rdx,2), %r10d
	addw	28(%r9,%rdx,4), %r10w
	movq	8(%rsi,%rdi,8), %r9
	movw	%r10w, 14(%r9,%rdx,2)
	incq	%rdi
	cmpq	%rcx, %rdi
	jl	.LBB3_5
# %bb.6:                                # %for.end410
	addq	$96, %rsp
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
	.size	Inv_Residual_trans_8x8, .Lfunc_end3-Inv_Residual_trans_8x8
	.cfi_endproc
                                        # -- End function
	.globl	Inv_Residual_trans_16x16        # -- Begin function Inv_Residual_trans_16x16
	.p2align	4, 0x90
	.type	Inv_Residual_trans_16x16,@function
Inv_Residual_trans_16x16:               # @Inv_Residual_trans_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$904, %rsp                      # imm = 0x388
	.cfi_def_cfa_offset 912
	movq	(%rdi), %r8
	movl	%esi, %esi
	movq	1248(%r8), %rax
	movq	1256(%r8), %rcx
	movq	(%rax,%rsi,8), %rax
	movq	(%rcx,%rsi,8), %rcx
	movq	1264(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movq	1272(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movzbl	372(%rdi), %edi
	testl	%edi, %edi
	je	.LBB4_6
# %bb.1:                                # %entry
	cmpl	$1, %edi
	jne	.LBB4_10
# %bb.2:                                # %for.body69.preheader
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_3:                                # %for.body69
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi), %r8
	movl	(%r8), %r9d
	movl	%r9d, -128(%rsp,%rdi,8)
	addl	4(%r8), %r9d
	movl	%r9d, -124(%rsp,%rdi,8)
	addl	8(%r8), %r9d
	movl	%r9d, -120(%rsp,%rdi,8)
	addl	12(%r8), %r9d
	movl	%r9d, -116(%rsp,%rdi,8)
	addl	16(%r8), %r9d
	movl	%r9d, -112(%rsp,%rdi,8)
	addl	20(%r8), %r9d
	movl	%r9d, -108(%rsp,%rdi,8)
	addl	24(%r8), %r9d
	movl	%r9d, -104(%rsp,%rdi,8)
	addl	28(%r8), %r9d
	movl	%r9d, -100(%rsp,%rdi,8)
	addl	32(%r8), %r9d
	movl	%r9d, -96(%rsp,%rdi,8)
	addl	36(%r8), %r9d
	movl	%r9d, -92(%rsp,%rdi,8)
	addl	40(%r8), %r9d
	movl	%r9d, -88(%rsp,%rdi,8)
	addl	44(%r8), %r9d
	movl	%r9d, -84(%rsp,%rdi,8)
	addl	48(%r8), %r9d
	movl	%r9d, -80(%rsp,%rdi,8)
	addl	52(%r8), %r9d
	movl	%r9d, -76(%rsp,%rdi,8)
	addl	56(%r8), %r9d
	movl	%r9d, -72(%rsp,%rdi,8)
	addl	60(%r8), %r9d
	movl	%r9d, -68(%rsp,%rdi,8)
	addq	$8, %rdi
	cmpq	$128, %rdi
	jne	.LBB4_3
# %bb.4:                                # %for.cond104.preheader.preheader
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_5:                                # %for.cond104.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, (%r8)
	movl	-124(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 4(%r8)
	movl	-120(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 8(%r8)
	movl	-116(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 12(%r8)
	movl	-112(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 16(%r8)
	movl	-108(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 20(%r8)
	movl	-104(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 24(%r8)
	movl	-100(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 28(%r8)
	movl	-96(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 32(%r8)
	movl	-92(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 36(%r8)
	movl	-88(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 40(%r8)
	movl	-84(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 44(%r8)
	movl	-80(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 48(%r8)
	movl	-76(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 52(%r8)
	movl	-72(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 56(%r8)
	movl	-68(%rsp,%rsi,8), %edi
	movq	(%rdx,%rsi), %r8
	movl	%edi, 60(%r8)
	addq	$8, %rsi
	cmpq	$128, %rsi
	jne	.LBB4_5
	jmp	.LBB4_12
.LBB4_6:                                # %for.cond.preheader
	movq	(%rsi), %rdi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB4_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%r8), %r9d
	movl	%r9d, -128(%rsp,%r8)
	movq	8(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, -64(%rsp,%r8)
	movq	16(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, (%rsp,%r8)
	movq	24(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 64(%rsp,%r8)
	movq	32(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 128(%rsp,%r8)
	movq	40(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 192(%rsp,%r8)
	movq	48(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 256(%rsp,%r8)
	movq	56(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 320(%rsp,%r8)
	movq	64(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 384(%rsp,%r8)
	movq	72(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 448(%rsp,%r8)
	movq	80(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 512(%rsp,%r8)
	movq	88(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 576(%rsp,%r8)
	movq	96(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 640(%rsp,%r8)
	movq	104(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 704(%rsp,%r8)
	movq	112(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 768(%rsp,%r8)
	movq	120(%rsi), %r10
	addl	(%r10,%r8), %r9d
	movl	%r9d, 832(%rsp,%r8)
	addq	$4, %r8
	cmpq	$64, %r8
	jne	.LBB4_7
# %bb.8:                                # %for.cond43.preheader.preheader
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_9:                                # %for.cond43.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rsp,%rsi), %edi
	movq	(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	-64(%rsp,%rsi), %edi
	movq	8(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	(%rsp,%rsi), %edi
	movq	16(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	64(%rsp,%rsi), %edi
	movq	24(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	128(%rsp,%rsi), %edi
	movq	32(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	192(%rsp,%rsi), %edi
	movq	40(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	256(%rsp,%rsi), %edi
	movq	48(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	320(%rsp,%rsi), %edi
	movq	56(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	384(%rsp,%rsi), %edi
	movq	64(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	448(%rsp,%rsi), %edi
	movq	72(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	512(%rsp,%rsi), %edi
	movq	80(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	576(%rsp,%rsi), %edi
	movq	88(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	640(%rsp,%rsi), %edi
	movq	96(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	704(%rsp,%rsi), %edi
	movq	104(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	768(%rsp,%rsi), %edi
	movq	112(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	movl	832(%rsp,%rsi), %edi
	movq	120(%rdx), %r8
	movl	%edi, (%r8,%rsi)
	addq	$4, %rsi
	cmpq	$64, %rsi
	jne	.LBB4_9
	jmp	.LBB4_12
.LBB4_10:                               # %for.cond127.preheader.preheader
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_11:                               # %for.cond127.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi,8), %r8
	movl	(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, (%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	4(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 4(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	8(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 8(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	12(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 12(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	16(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 16(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	20(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 20(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	24(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 24(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	28(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 28(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	32(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 32(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	36(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 36(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	40(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 40(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	44(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 44(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	48(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 48(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	52(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 52(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	56(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 56(%r9)
	movq	(%rsi,%rdi,8), %r8
	movl	60(%r8), %r8d
	movq	(%rdx,%rdi,8), %r9
	movl	%r8d, 60(%r9)
	incq	%rdi
	cmpq	$16, %rdi
	jne	.LBB4_11
.LBB4_12:                               # %for.cond150.preheader.preheader
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_13:                               # %for.cond150.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	(%r8), %r8d
	addw	(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, (%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	2(%r8), %r8d
	addw	4(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 2(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	4(%r8), %r8d
	addw	8(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 4(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	6(%r8), %r8d
	addw	12(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 6(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	8(%r8), %r8d
	addw	16(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 8(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	10(%r8), %r8d
	addw	20(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 10(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	12(%r8), %r8d
	addw	24(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 12(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	14(%r8), %r8d
	addw	28(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 14(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	16(%r8), %r8d
	addw	32(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 16(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	18(%r8), %r8d
	addw	36(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 18(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	20(%r8), %r8d
	addw	40(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 20(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	22(%r8), %r8d
	addw	44(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 22(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	24(%r8), %r8d
	addw	48(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 24(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	26(%r8), %r8d
	addw	52(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 26(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	28(%r8), %r8d
	addw	56(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 28(%rdi)
	movq	(%rdx,%rsi,8), %rdi
	movq	(%rax,%rsi,8), %r8
	movzwl	30(%r8), %r8d
	addw	60(%rdi), %r8w
	movq	(%rcx,%rsi,8), %rdi
	movw	%r8w, 30(%rdi)
	incq	%rsi
	cmpq	$16, %rsi
	jne	.LBB4_13
# %bb.14:                               # %for.end174
	addq	$904, %rsp                      # imm = 0x388
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	Inv_Residual_trans_16x16, .Lfunc_end4-Inv_Residual_trans_16x16
	.cfi_endproc
                                        # -- End function
	.globl	Inv_Residual_trans_Chroma       # -- Begin function Inv_Residual_trans_Chroma
	.p2align	4, 0x90
	.type	Inv_Residual_trans_Chroma,@function
Inv_Residual_trans_Chroma:              # @Inv_Residual_trans_Chroma
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
	subq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 1088
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movslq	%esi, %rax
	movq	(%rdi), %rcx
	movq	8(%rdi), %rdx
	movq	1264(%rcx), %rsi
	movq	1272(%rcx), %rcx
	movq	8(%rsi,%rax,8), %rbx
	movq	8(%rcx,%rax,8), %rax
	movl	849108(%rdx), %r14d
	movl	849112(%rdx), %r15d
	cmpb	$2, 373(%rdi)
	jne	.LBB5_1
# %bb.31:                               # %for.cond.preheader
	testl	%r14d, %r14d
	jle	.LBB5_51
# %bb.32:                               # %for.body.lr.ph
	movq	(%rax), %rsi
	cmpl	$1, %r15d
	jle	.LBB5_33
# %bb.34:                               # %for.body.us.preheader
	leaq	-1(%r15), %rcx
	leaq	128(%rsp), %rdx
	movq	%rcx, %rdi
	andq	$-2, %rdi
	negq	%rdi
	xorl	%r8d, %r8d
	jmp	.LBB5_35
	.p2align	4, 0x90
.LBB5_40:                               # %for.cond16.for.inc33_crit_edge.us
                                        #   in Loop: Header=BB5_35 Depth=1
	incq	%r8
	addq	$4, %rdx
	cmpq	%r14, %r8
	je	.LBB5_41
.LBB5_35:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_37 Depth 2
	movl	(%rsi,%r8,4), %r9d
	movl	%r9d, (%rsp,%r8,4)
	movl	$1, %r10d
	cmpl	$2, %r15d
	je	.LBB5_38
# %bb.36:                               # %for.body19.us.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	%rdx, %r11
	.p2align	4, 0x90
.LBB5_37:                               # %for.body19.us
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%r10,8), %r12
	addl	(%r12,%r8,4), %r9d
	movl	%r9d, -64(%r11)
	movq	8(%rax,%r10,8), %r12
	addl	(%r12,%r8,4), %r9d
	movl	%r9d, (%r11)
	subq	$-128, %r11
	leaq	(%rdi,%r10), %r12
	addq	$2, %r12
	addq	$2, %r10
	cmpq	$1, %r12
	jne	.LBB5_37
.LBB5_38:                               # %for.cond16.for.inc33_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB5_35 Depth=1
	testb	$1, %cl
	je	.LBB5_40
# %bb.39:                               # %for.body19.us.epil
                                        #   in Loop: Header=BB5_35 Depth=1
	movq	(%rax,%r10,8), %r11
	addl	(%r11,%r8,4), %r9d
	shlq	$6, %r10
	addq	%rsp, %r10
	movl	%r9d, (%r10,%r8,4)
	jmp	.LBB5_40
.LBB5_1:                                # %for.cond58.preheader
	testl	%r15d, %r15d
	jle	.LBB5_51
# %bb.2:                                # %for.body61.lr.ph
	cmpl	$1, %r14d
	jle	.LBB5_3
# %bb.22:                               # %for.body61.us.preheader
	leaq	-1(%r14), %rcx
	leaq	-2(%r14), %rdx
	movl	%ecx, %esi
	andl	$3, %esi
	andq	$-4, %rcx
	movq	%rsp, %rdi
	leaq	16(%rsp), %r8
	xorl	%r9d, %r9d
	jmp	.LBB5_23
	.p2align	4, 0x90
.LBB5_30:                               # %for.cond68.for.inc89_crit_edge.us
                                        #   in Loop: Header=BB5_23 Depth=1
	incq	%r9
	addq	$64, %r8
	addq	$64, %rdi
	cmpq	%r15, %r9
	je	.LBB5_14
.LBB5_23:                               # %for.body61.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_25 Depth 2
                                        #     Child Loop BB5_29 Depth 2
	movq	%r9, %r12
	shlq	$6, %r12
	movq	(%rax,%r9,8), %r11
	movl	(%r11), %r10d
	movl	%r10d, (%rsp,%r12)
	movl	$1, %r12d
	cmpq	$3, %rdx
	jb	.LBB5_27
# %bb.24:                               # %for.body71.us.preheader
                                        #   in Loop: Header=BB5_23 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB5_25:                               # %for.body71.us
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	4(%r11,%r12,4), %r10d
	movl	%r10d, -12(%r8,%r12,4)
	addl	8(%r11,%r12,4), %r10d
	movl	%r10d, -8(%r8,%r12,4)
	addl	12(%r11,%r12,4), %r10d
	movl	%r10d, -4(%r8,%r12,4)
	addl	16(%r11,%r12,4), %r10d
	movl	%r10d, (%r8,%r12,4)
	addq	$4, %r12
	cmpq	%r12, %rcx
	jne	.LBB5_25
# %bb.26:                               # %for.cond68.for.inc89_crit_edge.us.unr-lcssa.loopexit
                                        #   in Loop: Header=BB5_23 Depth=1
	incq	%r12
.LBB5_27:                               # %for.cond68.for.inc89_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB5_23 Depth=1
	testq	%rsi, %rsi
	je	.LBB5_30
# %bb.28:                               # %for.body71.us.epil.preheader
                                        #   in Loop: Header=BB5_23 Depth=1
	leaq	(%rdi,%r12,4), %r13
	leaq	(%r11,%r12,4), %r11
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB5_29:                               # %for.body71.us.epil
                                        #   Parent Loop BB5_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	(%r11,%r12,4), %r10d
	movl	%r10d, (%r13,%r12,4)
	incq	%r12
	cmpq	%r12, %rsi
	jne	.LBB5_29
	jmp	.LBB5_30
.LBB5_33:                               # %for.cond36.preheader.thread
	leaq	(,%r14,4), %rdx
	movq	%rsp, %rdi
	callq	memcpy@PLT
	cmpl	$1, %r15d
	je	.LBB5_42
	jmp	.LBB5_51
.LBB5_41:                               # %for.cond36.preheader
	testl	%r14d, %r14d
	jle	.LBB5_51
.LBB5_42:                               # %for.cond40.preheader.us.preheader
	leaq	-1(%r15), %rax
	movl	%r15d, %ecx
	andl	$3, %ecx
	andl	$2147483644, %r15d              # imm = 0x7FFFFFFC
	leaq	192(%rsp), %rdx
	leal	(,%rcx,8), %esi
	movq	%rsp, %rdi
	xorl	%r8d, %r8d
	jmp	.LBB5_43
	.p2align	4, 0x90
.LBB5_50:                               # %for.cond40.for.inc55_crit_edge.us
                                        #   in Loop: Header=BB5_43 Depth=1
	incq	%r8
	addq	$4, %rdx
	addq	$4, %rdi
	cmpq	%r14, %r8
	je	.LBB5_51
.LBB5_43:                               # %for.cond40.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
                                        #     Child Loop BB5_49 Depth 2
	cmpq	$3, %rax
	jae	.LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_43 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB5_47
	.p2align	4, 0x90
.LBB5_45:                               # %for.body43.us.preheader
                                        #   in Loop: Header=BB5_43 Depth=1
	movq	%rdx, %r10
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB5_46:                               # %for.body43.us
                                        #   Parent Loop BB5_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%r10), %r11d
	movq	(%rbx,%r9,8), %r12
	movl	%r11d, (%r12,%r8,4)
	movl	-128(%r10), %r11d
	movq	8(%rbx,%r9,8), %r12
	movl	%r11d, (%r12,%r8,4)
	movl	-64(%r10), %r11d
	movq	16(%rbx,%r9,8), %r12
	movl	%r11d, (%r12,%r8,4)
	movl	(%r10), %r11d
	movq	24(%rbx,%r9,8), %r12
	movl	%r11d, (%r12,%r8,4)
	addq	$4, %r9
	addq	$256, %r10                      # imm = 0x100
	cmpq	%r9, %r15
	jne	.LBB5_46
.LBB5_47:                               # %for.cond40.for.inc55_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB5_43 Depth=1
	testq	%rcx, %rcx
	je	.LBB5_50
# %bb.48:                               # %for.body43.us.epil.preheader
                                        #   in Loop: Header=BB5_43 Depth=1
	leaq	(%rbx,%r9,8), %r10
	shlq	$6, %r9
	addq	%rdi, %r9
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB5_49:                               # %for.body43.us.epil
                                        #   Parent Loop BB5_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r9,%r11,8), %ebp
	movq	(%r10,%r11), %r12
	movl	%ebp, (%r12,%r8,4)
	addq	$8, %r11
	cmpq	%r11, %rsi
	jne	.LBB5_49
	jmp	.LBB5_50
.LBB5_3:                                # %for.body61.preheader
	cmpl	$3, %r15d
	ja	.LBB5_11
# %bb.4:
	xorl	%ecx, %ecx
	jmp	.LBB5_5
.LBB5_11:                               # %vector.ph
	movl	%r15d, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movl	%r15d, %edx
	shrl	$2, %edx
	andl	$536870911, %edx                # imm = 0x1FFFFFFF
	shlq	$5, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rsi), %rdi
	movq	8(%rax,%rsi), %r8
	movq	16(%rax,%rsi), %r9
	movq	24(%rax,%rsi), %r10
	movl	(%rdi), %edi
	movl	(%r8), %r8d
	movl	(%r9), %r9d
	movl	(%r10), %r10d
	movl	%edi, (%rsp,%rsi,8)
	movl	%r8d, 64(%rsp,%rsi,8)
	movl	%r9d, 128(%rsp,%rsi,8)
	movl	%r10d, 192(%rsp,%rsi,8)
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB5_12
# %bb.13:                               # %middle.block
	cmpl	%r15d, %ecx
	je	.LBB5_14
.LBB5_5:                                # %for.body61.preheader244
	movq	%r15, %rsi
	movq	%rcx, %rdx
	andq	$3, %rsi
	je	.LBB5_8
# %bb.6:                                # %for.body61.prol.preheader
	movq	%rcx, %rdx
	shlq	$6, %rdx
	leaq	(%rsp,%rdx), %rdi
	shll	$6, %esi
	xorl	%r8d, %r8d
	movq	%rcx, %rdx
	.p2align	4, 0x90
.LBB5_7:                                # %for.body61.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rdx,8), %r9
	movl	(%r9), %r9d
	movl	%r9d, (%rdi,%r8)
	incq	%rdx
	addq	$64, %r8
	cmpq	%r8, %rsi
	jne	.LBB5_7
.LBB5_8:                                # %for.body61.prol.loopexit
	subq	%r15, %rcx
	cmpq	$-4, %rcx
	ja	.LBB5_14
# %bb.9:                                # %for.body61.preheader2
	movq	%rdx, %rcx
	shlq	$6, %rcx
	movq	%rsp, %rsi
	addq	%rsi, %rcx
	addq	$192, %rcx
	.p2align	4, 0x90
.LBB5_10:                               # %for.body61
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rax,%rdx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, -192(%rcx)
	movq	8(%rax,%rdx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, -128(%rcx)
	movq	16(%rax,%rdx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, -64(%rcx)
	movq	24(%rax,%rdx,8), %rsi
	movl	(%rsi), %esi
	movl	%esi, (%rcx)
	addq	$4, %rdx
	addq	$256, %rcx                      # imm = 0x100
	cmpq	%rdx, %r15
	jne	.LBB5_10
.LBB5_14:                               # %for.cond92.preheader
	testl	%r15d, %r15d
	setg	%al
	testl	%r14d, %r14d
	setg	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB5_51
# %bb.15:                               # %for.cond96.preheader.us.preheader
	movl	%r14d, %eax
	andl	$3, %eax
	movl	%r14d, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rsp, %rdx
	leaq	12(%rsp), %rsi
	xorl	%edi, %edi
	jmp	.LBB5_16
	.p2align	4, 0x90
.LBB5_21:                               # %for.cond96.for.inc111_crit_edge.us
                                        #   in Loop: Header=BB5_16 Depth=1
	incq	%rdi
	addq	$64, %rsi
	addq	$64, %rdx
	cmpq	%r15, %rdi
	je	.LBB5_51
.LBB5_16:                               # %for.cond96.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_20 Depth 2
	xorl	%r8d, %r8d
	cmpl	$4, %r14d
	jb	.LBB5_18
	.p2align	4, 0x90
.LBB5_17:                               # %for.body99.us
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rsi,%r8,4), %r9d
	movq	(%rbx,%rdi,8), %r10
	movl	%r9d, (%r10,%r8,4)
	movl	-8(%rsi,%r8,4), %r9d
	movq	(%rbx,%rdi,8), %r10
	movl	%r9d, 4(%r10,%r8,4)
	movl	-4(%rsi,%r8,4), %r9d
	movq	(%rbx,%rdi,8), %r10
	movl	%r9d, 8(%r10,%r8,4)
	movl	(%rsi,%r8,4), %r9d
	movq	(%rbx,%rdi,8), %r10
	movl	%r9d, 12(%r10,%r8,4)
	addq	$4, %r8
	cmpq	%r8, %rcx
	jne	.LBB5_17
.LBB5_18:                               # %for.cond96.for.inc111_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB5_16 Depth=1
	testq	%rax, %rax
	je	.LBB5_21
# %bb.19:                               # %for.body99.us.epil.preheader
                                        #   in Loop: Header=BB5_16 Depth=1
	movq	%rax, %r9
	.p2align	4, 0x90
.LBB5_20:                               # %for.body99.us.epil
                                        #   Parent Loop BB5_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx,%r8,4), %r10d
	movq	(%rbx,%rdi,8), %r11
	movl	%r10d, (%r11,%r8,4)
	incq	%r8
	decq	%r9
	jne	.LBB5_20
	jmp	.LBB5_21
.LBB5_51:                               # %if.end
	addq	$1032, %rsp                     # imm = 0x408
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
.Lfunc_end5:
	.size	Inv_Residual_trans_Chroma, .Lfunc_end5-Inv_Residual_trans_Chroma
	.cfi_endproc
                                        # -- End function
	.globl	itrans_2                        # -- Begin function itrans_2
	.p2align	4, 0x90
	.type	itrans_2,@function
itrans_2:                               # @itrans_2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	xorl	%edx, %edx
	cmpl	$0, 849280(%rcx)
	cmovel	%esi, %edx
	movq	1272(%rax), %r8
	movslq	%edx, %rdx
	movq	(%r8,%rdx,8), %r14
	movl	%esi, %edx
	movslq	80(%rdi,%rdx,4), %rsi
	movq	856032(%rcx), %rdi
	movq	856040(%rcx), %rcx
	movzbl	(%rdi,%rsi,4), %ebx
	movslq	(%rcx,%rsi,4), %rcx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$7, %rdx
	addq	%rax, %rdx
	shlq	$6, %rcx
	movl	1392(%rcx,%rdx), %ebp
	leaq	8(%rsp), %rdi
	movl	$4, %esi
	movl	$4, %edx
	callq	get_mem2Dint@PLT
	movq	(%r14), %rax
	movl	(%rax), %eax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	(%r14), %rax
	movl	16(%rax), %eax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	(%r14), %rax
	movl	32(%rax), %eax
	movq	8(%rsp), %rcx
	movq	(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	(%r14), %rax
	movl	48(%rax), %eax
	movq	(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	32(%r14), %rax
	movl	(%rax), %eax
	movq	8(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	32(%r14), %rax
	movl	16(%rax), %eax
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	32(%r14), %rax
	movl	32(%rax), %eax
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	32(%r14), %rax
	movl	48(%rax), %eax
	movq	8(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	64(%r14), %rax
	movl	(%rax), %eax
	movq	16(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	64(%r14), %rax
	movl	16(%rax), %eax
	movq	8(%rsp), %rcx
	movq	16(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	64(%r14), %rax
	movl	32(%rax), %eax
	movq	8(%rsp), %rcx
	movq	16(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	64(%r14), %rax
	movl	48(%rax), %eax
	movq	16(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	96(%r14), %rax
	movl	(%rax), %eax
	movq	24(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	96(%r14), %rax
	movl	16(%rax), %eax
	movq	8(%rsp), %rcx
	movq	24(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	96(%r14), %rax
	movl	32(%rax), %eax
	movq	8(%rsp), %rdi
	movq	24(%rdi), %rcx
	movl	%eax, 8(%rcx)
	movq	96(%r14), %rax
	movl	48(%rax), %eax
	movq	24(%rdi), %rcx
	movl	%eax, 12(%rcx)
	movq	%rdi, %rsi
	callq	ihadamard4x4@PLT
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	(%r14), %rcx
	movl	%eax, (%rcx)
	movq	8(%rsp), %rax
	movq	(%rax), %rcx
	movl	4(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	(%r14), %rcx
	movl	%edx, 16(%rcx)
	movq	(%rax), %rcx
	movl	8(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	(%r14), %rcx
	movl	%edx, 32(%rcx)
	movq	(%rax), %rcx
	movl	12(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	(%r14), %rcx
	movl	%edx, 48(%rcx)
	movq	8(%rax), %rax
	movl	(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	32(%r14), %rcx
	movl	%eax, (%rcx)
	movq	8(%rsp), %rax
	movq	8(%rax), %rcx
	movl	4(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	32(%r14), %rcx
	movl	%edx, 16(%rcx)
	movq	8(%rax), %rcx
	movl	8(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	32(%r14), %rcx
	movl	%edx, 32(%rcx)
	movq	8(%rax), %rcx
	movl	12(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	32(%r14), %rcx
	movl	%edx, 48(%rcx)
	movq	16(%rax), %rax
	movl	(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	64(%r14), %rcx
	movl	%eax, (%rcx)
	movq	8(%rsp), %rax
	movq	16(%rax), %rcx
	movl	4(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	64(%r14), %rcx
	movl	%edx, 16(%rcx)
	movq	16(%rax), %rcx
	movl	8(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	64(%r14), %rcx
	movl	%edx, 32(%rcx)
	movq	16(%rax), %rcx
	movl	12(%rcx), %edx
	imull	%ebp, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	addl	$32, %edx
	sarl	$6, %edx
	movq	64(%r14), %rcx
	movl	%edx, 48(%rcx)
	movq	24(%rax), %rax
	movl	(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	96(%r14), %rcx
	movl	%eax, (%rcx)
	movq	8(%rsp), %rdi
	movq	24(%rdi), %rax
	movl	4(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	96(%r14), %rcx
	movl	%eax, 16(%rcx)
	movq	24(%rdi), %rax
	movl	8(%rax), %eax
	imull	%ebp, %eax
	movl	%ebx, %ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	96(%r14), %rcx
	movl	%eax, 32(%rcx)
	movq	24(%rdi), %rax
	imull	12(%rax), %ebp
	movl	%ebx, %ecx
	shll	%cl, %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	movq	96(%r14), %rax
	movl	%ebp, 48(%rax)
	callq	free_mem2Dint@PLT
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	itrans_2, .Lfunc_end6-itrans_2
	.cfi_endproc
                                        # -- End function
	.globl	itrans_sp                       # -- Begin function itrans_sp
	.p2align	4, 0x90
	.type	itrans_sp,@function
itrans_sp:                              # @itrans_sp
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
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movl	%edx, %ebx
	movq	(%rdi), %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$4, 164(%r8)
	movq	8(%rdi), %rcx
	sete	%al
	movslq	148(%r8,%rax,8), %rax
	movq	856032(%rcx), %rdx
	movq	856040(%rcx), %rdi
	movl	(%rdx,%rax,4), %ebp
	movslq	(%rdi,%rax,4), %r15
	movslq	156(%r8), %rax
	movl	(%rdx,%rax,4), %r12d
	movslq	(%rdi,%rax,4), %r14
	movq	1248(%r8), %rax
	movl	%esi, %edx
	movq	(%rax,%rdx,8), %r13
	movq	1256(%r8), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	1264(%r8), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1272(%r8), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	849072(%rcx,%rdx,4), %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movq	%rsp, %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dint@PLT
	movslq	%ebx, %rbx
	movslq	8(%rsp), %rsi                   # 4-byte Folded Reload
	movq	(%r13,%rsi,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	(%r13,%rsi,8), %rax
	movzwl	2(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	(%r13,%rsi,8), %rax
	movzwl	4(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	(%r13,%rsi,8), %rax
	movzwl	6(%rax,%rbx,2), %eax
	movq	(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	8(%r13,%rsi,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	movq	8(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	8(%r13,%rsi,8), %rax
	movzwl	2(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	8(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	8(%r13,%rsi,8), %rax
	movzwl	4(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	8(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	8(%r13,%rsi,8), %rax
	movzwl	6(%rax,%rbx,2), %eax
	movq	8(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	16(%r13,%rsi,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	movq	16(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	16(%r13,%rsi,8), %rax
	movzwl	2(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	16(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	16(%r13,%rsi,8), %rax
	movzwl	4(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	16(%rcx), %rdx
	movl	%eax, 8(%rdx)
	movq	16(%r13,%rsi,8), %rax
	movzwl	6(%rax,%rbx,2), %eax
	movq	16(%rcx), %rdx
	movl	%eax, 12(%rdx)
	movq	24(%r13,%rsi,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	movq	24(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	24(%r13,%rsi,8), %rax
	movzwl	2(%rax,%rbx,2), %eax
	movq	(%rsp), %rcx
	movq	24(%rcx), %rcx
	movl	%eax, 4(%rcx)
	movq	24(%r13,%rsi,8), %rax
	movzwl	4(%rax,%rbx,2), %eax
	movq	(%rsp), %rdi
	movq	24(%rdi), %rcx
	movl	%eax, 8(%rcx)
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	24(%r13,%rsi,8), %rax
	movzwl	6(%rax,%rbx,2), %eax
	movq	24(%rdi), %rcx
	movl	%eax, 12(%rcx)
	leal	15(%r12), %r13d
	movq	%rdi, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	forward4x4@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 224(%rax)
	jne	.LBB7_4
# %bb.1:                                # %lor.lhs.false
	cmpl	$4, 164(%rax)
	jne	.LBB7_2
.LBB7_4:                                # %if.then
	leal	14(%r12), %ecx
	movl	$1, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rax,%rcx,8), %rdi
	shlq	$6, %r14
	shlq	$6, %r15
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB7_5:                                # %for.cond78.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r8), %r9
	movl	(%r9,%rbx,4), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef(%r15,%r8,2)
	movq	(%rsp), %rcx
	movq	(%rcx,%r8), %rcx
	movl	(%rcx), %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	imull	quant_coef(%r14,%r8,2), %r10d
	addl	%esi, %r10d
	movl	%r13d, %ecx
	sarl	%cl, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	cmovsl	%r10d, %ecx
	movl	%ecx, %r10d
	negl	%r10d
	testl	%edx, %edx
	cmovnsl	%ecx, %r10d
	addl	%eax, %r10d
	imull	dequant_coef(%r14,%r8,2), %r10d
	movl	%r12d, %ecx
	shll	%cl, %r10d
	movl	%r10d, (%r9,%rbx,4)
	movq	(%rdi,%r8), %r9
	movl	4(%r9,%rbx,4), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+4(%r15,%r8,2)
	movq	(%rsp), %rcx
	movq	(%rcx,%r8), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	imull	quant_coef+4(%r14,%r8,2), %r10d
	addl	%esi, %r10d
	movl	%r13d, %ecx
	sarl	%cl, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	cmovsl	%r10d, %ecx
	movl	%ecx, %r10d
	negl	%r10d
	testl	%edx, %edx
	cmovnsl	%ecx, %r10d
	addl	%eax, %r10d
	imull	dequant_coef+4(%r14,%r8,2), %r10d
	movl	%r12d, %ecx
	shll	%cl, %r10d
	movl	%r10d, 4(%r9,%rbx,4)
	movq	(%rdi,%r8), %r9
	movl	8(%r9,%rbx,4), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+8(%r15,%r8,2)
	movq	(%rsp), %rcx
	movq	(%rcx,%r8), %rcx
	movl	8(%rcx), %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	imull	quant_coef+8(%r14,%r8,2), %r10d
	addl	%esi, %r10d
	movl	%r13d, %ecx
	sarl	%cl, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	cmovsl	%r10d, %ecx
	movl	%ecx, %r10d
	negl	%r10d
	testl	%edx, %edx
	cmovnsl	%ecx, %r10d
	addl	%eax, %r10d
	imull	dequant_coef+8(%r14,%r8,2), %r10d
	movl	%r12d, %ecx
	shll	%cl, %r10d
	movl	%r10d, 8(%r9,%rbx,4)
	movq	(%rdi,%r8), %r9
	movl	12(%r9,%rbx,4), %eax
	movl	%ebp, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+12(%r15,%r8,2)
	movq	(%rsp), %rcx
	movq	(%rcx,%r8), %rcx
	movl	12(%rcx), %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	imull	quant_coef+12(%r14,%r8,2), %r10d
	addl	%esi, %r10d
	movl	%r13d, %ecx
	sarl	%cl, %r10d
	movl	%r10d, %ecx
	negl	%ecx
	cmovsl	%r10d, %ecx
	movl	%ecx, %r10d
	negl	%r10d
	testl	%edx, %edx
	cmovnsl	%ecx, %r10d
	addl	%eax, %r10d
	imull	dequant_coef+12(%r14,%r8,2), %r10d
	movl	%r12d, %ecx
	shll	%cl, %r10d
	movl	%r10d, 12(%r9,%rbx,4)
	addq	$8, %r8
	cmpq	$32, %r8
	jne	.LBB7_5
.LBB7_6:                                # %for.end250
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	%r15, %rsi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movl	%r14d, %edx
	movl	%ebx, %ecx
	callq	inverse4x4@PLT
	movq	(%r15,%r14,8), %rax
	movl	(%rax,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	movl	28(%rsp), %edi                  # 4-byte Reload
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%r14,8), %rdx
	movw	%cx, (%rdx,%rbx,2)
	movq	(%r15,%r14,8), %rcx
	movl	4(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	(%rsi,%r14,8), %rdx
	movw	%cx, 2(%rdx,%rbx,2)
	movq	(%r15,%r14,8), %rcx
	movl	8(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	(%rsi,%r14,8), %rdx
	movw	%cx, 4(%rdx,%rbx,2)
	movq	(%r15,%r14,8), %rcx
	movl	12(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	(%rsi,%r14,8), %rdx
	movw	%cx, 6(%rdx,%rbx,2)
	movq	8(%r15,%r14,8), %rcx
	movl	(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	8(%rsi,%r14,8), %rdx
	movw	%cx, (%rdx,%rbx,2)
	movq	8(%r15,%r14,8), %rcx
	movl	4(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	8(%rsi,%r14,8), %rdx
	movw	%cx, 2(%rdx,%rbx,2)
	movq	8(%r15,%r14,8), %rcx
	movl	8(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	8(%rsi,%r14,8), %rdx
	movw	%cx, 4(%rdx,%rbx,2)
	movq	8(%r15,%r14,8), %rcx
	movl	12(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	8(%rsi,%r14,8), %rdx
	movw	%cx, 6(%rdx,%rbx,2)
	movq	16(%r15,%r14,8), %rcx
	movl	(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	16(%rsi,%r14,8), %rdx
	movw	%cx, (%rdx,%rbx,2)
	movq	16(%r15,%r14,8), %rcx
	movl	4(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	16(%rsi,%r14,8), %rdx
	movw	%cx, 2(%rdx,%rbx,2)
	movq	16(%r15,%r14,8), %rcx
	movl	8(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	16(%rsi,%r14,8), %rdx
	movw	%cx, 4(%rdx,%rbx,2)
	movq	16(%r15,%r14,8), %rcx
	movl	12(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	16(%rsi,%r14,8), %rdx
	movw	%cx, 6(%rdx,%rbx,2)
	movq	24(%r15,%r14,8), %rcx
	movl	(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	24(%rsi,%r14,8), %rdx
	movw	%cx, (%rdx,%rbx,2)
	movq	24(%r15,%r14,8), %rcx
	movl	4(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	24(%rsi,%r14,8), %rdx
	movw	%cx, 2(%rdx,%rbx,2)
	movq	24(%r15,%r14,8), %rcx
	movl	8(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	24(%rsi,%r14,8), %rdx
	movw	%cx, 4(%rdx,%rbx,2)
	movq	24(%r15,%r14,8), %rcx
	movl	12(%rcx,%rbx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	cmovlel	%eax, %ecx
	cmpl	%edi, %ecx
	cmovgel	%edi, %ecx
	movq	24(%rsi,%r14,8), %rax
	movw	%cx, 6(%rax,%rbx,2)
	movq	(%rsp), %rdi
	callq	free_mem2Dint@PLT
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
.LBB7_2:                                # %for.cond127.preheader
	.cfi_def_cfa_offset 112
	leal	14(%r12), %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rax,%rcx,8), %r8
	shlq	$6, %r14
	shlq	$6, %r15
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB7_3:                                # %for.cond131.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r8,%r9), %r10
	movl	(%r10,%rbx,4), %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	movq	(%rsp), %rax
	movq	(%rax,%r9), %r11
	movl	%esi, %eax
	cltd
	idivl	dequant_coef(%r15,%r9,2)
	subl	%edx, %esi
	imull	A(%r9,%r9), %esi
	shll	%cl, %esi
	sarl	$6, %esi
	addl	(%r11), %esi
	movl	%esi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%dl
	orl	%eax, %edx
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	imull	quant_coef(%r14,%r9,2), %eax
	addl	%edi, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef(%r14,%r9,2), %edx
	imull	%eax, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	movl	%edx, (%r10,%rbx,4)
	movq	(%r8,%r9), %r10
	movl	4(%r10,%rbx,4), %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	movq	(%rsp), %rax
	movq	(%rax,%r9), %r11
	movl	%esi, %eax
	cltd
	idivl	dequant_coef+4(%r15,%r9,2)
	subl	%edx, %esi
	imull	A+4(%r9,%r9), %esi
	shll	%cl, %esi
	sarl	$6, %esi
	addl	4(%r11), %esi
	movl	%esi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%dl
	orl	%eax, %edx
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	imull	quant_coef+4(%r14,%r9,2), %eax
	addl	%edi, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+4(%r14,%r9,2), %edx
	imull	%eax, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	movl	%edx, 4(%r10,%rbx,4)
	movq	(%r8,%r9), %r10
	movl	8(%r10,%rbx,4), %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	movq	(%rsp), %rax
	movq	(%rax,%r9), %r11
	movl	%esi, %eax
	cltd
	idivl	dequant_coef+8(%r15,%r9,2)
	subl	%edx, %esi
	imull	A+8(%r9,%r9), %esi
	shll	%cl, %esi
	sarl	$6, %esi
	addl	8(%r11), %esi
	movl	%esi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%dl
	orl	%eax, %edx
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	imull	quant_coef+8(%r14,%r9,2), %eax
	addl	%edi, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+8(%r14,%r9,2), %edx
	imull	%eax, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	movl	%edx, 8(%r10,%rbx,4)
	movq	(%r8,%r9), %r10
	movl	12(%r10,%rbx,4), %esi
	movl	%ebp, %ecx
	sarl	%cl, %esi
	movq	(%rsp), %rax
	movq	(%rax,%r9), %r11
	movl	%esi, %eax
	cltd
	idivl	dequant_coef+12(%r15,%r9,2)
	subl	%edx, %esi
	imull	A+12(%r9,%r9), %esi
	shll	%cl, %esi
	sarl	$6, %esi
	addl	12(%r11), %esi
	movl	%esi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%esi, %esi
	setne	%dl
	orl	%eax, %edx
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	imull	quant_coef+12(%r14,%r9,2), %eax
	addl	%edi, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+12(%r14,%r9,2), %edx
	imull	%eax, %edx
	movl	%r12d, %ecx
	shll	%cl, %edx
	movl	%edx, 12(%r10,%rbx,4)
	addq	$8, %r9
	cmpq	$32, %r9
	jne	.LBB7_3
	jmp	.LBB7_6
.Lfunc_end7:
	.size	itrans_sp, .Lfunc_end7-itrans_sp
	.cfi_endproc
                                        # -- End function
	.globl	itrans_sp_cr                    # -- Begin function itrans_sp_cr
	.p2align	4, 0x90
	.type	itrans_sp_cr,@function
itrans_sp_cr:                           # @itrans_sp_cr
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r15
	movq	8(%rdi), %rbp
	movslq	%esi, %rax
	movq	1248(%r15), %rcx
	movq	1272(%r15), %rdx
	movq	8(%rcx,%rax,8), %r14
	movq	8(%rdx,%rax,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$16, %edi
	movl	$16, %esi
	callq	new_mem2Dint@PLT
	movq	%rax, %r13
	movq	856032(%rbp), %rax
	movslq	148(%r15), %rdx
	testq	%rdx, %rdx
	js	.LBB8_2
# %bb.1:                                # %cond.false18
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB8_2:                                # %cond.end23
	movl	(%rax,%rdx,4), %esi
	movq	856040(%rbp), %rcx
	movl	(%rcx,%rdx,4), %edi
	movslq	156(%r15), %rdx
	testq	%rdx, %rdx
	js	.LBB8_4
# %bb.3:                                # %cond.false47
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB8_4:                                # %cond.end52
	movl	(%rax,%rdx,4), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movslq	(%rcx,%rdx,4), %rbx
	cmpl	$4, 164(%r15)
	cmovel	%ebx, %edi
	cmovel	%eax, %esi
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	movl	849112(%rbp), %edx
	testl	%edx, %edx
	movl	%edi, 24(%rsp)                  # 4-byte Spill
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	jle	.LBB8_20
# %bb.5:                                # %for.cond61.preheader.lr.ph
	movl	849108(%rbp), %ecx
	testl	%ecx, %ecx
	jle	.LBB8_13
# %bb.6:                                # %for.cond61.preheader.preheader
	xorl	%eax, %eax
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_7:                                # %for.inc78
                                        #   in Loop: Header=BB8_8 Depth=1
	incq	%rax
	movslq	%edx, %rsi
	cmpq	%rsi, %rax
	jge	.LBB8_12
.LBB8_8:                                # %for.cond61.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
	testl	%ecx, %ecx
	jle	.LBB8_7
# %bb.9:                                # %for.body64.lr.ph
                                        #   in Loop: Header=BB8_8 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_10:                               # %for.body64
                                        #   Parent Loop BB8_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14,%rax,8), %rcx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	(%r13,%rax,8), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movq	(%r14,%rax,8), %rcx
	movw	$0, (%rcx,%rdx,2)
	incq	%rdx
	movslq	849108(%rbp), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB8_10
# %bb.11:                               # %for.inc78.loopexit
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	849112(%rbp), %edx
	jmp	.LBB8_7
.LBB8_12:                               # %for.cond81.preheader
	testl	%edx, %edx
	jle	.LBB8_20
.LBB8_13:                               # %for.cond86.preheader.lr.ph
	movl	849108(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB8_20
# %bb.14:                               # %for.cond86.preheader.preheader
	xorl	%r15d, %r15d
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_15:                               # %for.inc94
                                        #   in Loop: Header=BB8_16 Depth=1
	addl	$4, %r15d
	cmpl	%edx, %r15d
	jge	.LBB8_20
.LBB8_16:                               # %for.cond86.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
	testl	%eax, %eax
	jle	.LBB8_15
# %bb.17:                               # %for.body90.preheader
                                        #   in Loop: Header=BB8_16 Depth=1
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_18:                               # %for.body90
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	%r12d, %ecx
	callq	forward4x4@PLT
	addl	$4, %r12d
	movl	849108(%rbp), %eax
	cmpl	%eax, %r12d
	jl	.LBB8_18
# %bb.19:                               # %for.inc94.loopexit
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	849112(%rbp), %edx
	jmp	.LBB8_15
.LBB8_20:                               # %for.end96
	movq	16(%rsp), %r12                  # 8-byte Reload
	leal	15(%r12), %ecx
	movq	(%r13), %rax
	movq	32(%r13), %rsi
	movl	(%rax), %edi
	movl	16(%rax), %eax
	movl	(%rsi), %r9d
	movl	16(%rsi), %esi
	leal	(%r9,%rdi), %r8d
	leal	(%rsi,%rax), %r11d
	leal	(%r11,%r8), %r14d
	leal	(%rdi,%rax), %r10d
	subl	%r9d, %r10d
	subl	%esi, %r10d
	subl	%r11d, %r8d
	addl	%eax, %r9d
	subl	%r9d, %edi
	addl	%esi, %edi
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 224(%rax)
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	jne	.LBB8_22
# %bb.21:                               # %lor.lhs.false
	cmpl	$4, 164(%rax)
	jne	.LBB8_36
.LBB8_22:                               # %if.then147
	shlq	$6, %rbx
	movl	quant_coef(%rbx), %eax
	movl	$1, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	movl	%r14d, %r11d
	negl	%r11d
	cmovsl	%r14d, %r11d
	imull	%eax, %r11d
	addl	%r9d, %r11d
	leal	16(%r12), %ecx
	sarl	%cl, %r11d
	movl	%r11d, %r15d
	negl	%r15d
	cmovsl	%r11d, %r15d
	movl	%r15d, %r12d
	negl	%r12d
	testl	%r14d, %r14d
	cmovnsl	%r15d, %r12d
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi), %r14
	addl	(%r14), %r12d
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	movl	dequant_coef(%rbx), %r11d
	imull	%r11d, %r12d
	movq	%r12, 144(%rsp)                 # 8-byte Spill
	movl	%r10d, %r15d
	negl	%r15d
	cmovsl	%r10d, %r15d
	imull	%eax, %r15d
	addl	%r9d, %r15d
	sarl	%cl, %r15d
	movl	%r15d, %r12d
	negl	%r12d
	cmovsl	%r15d, %r12d
	movl	%r12d, %ebx
	negl	%ebx
	testl	%r10d, %r10d
	cmovnsl	%r12d, %ebx
	addl	16(%r14), %ebx
	imull	%r11d, %ebx
	movq	%rbx, 136(%rsp)                 # 8-byte Spill
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	imull	%eax, %r10d
	addl	%r9d, %r10d
	sarl	%cl, %r10d
	movl	%r10d, %r14d
	negl	%r14d
	cmovsl	%r10d, %r14d
	movl	%r14d, %r10d
	negl	%r10d
	testl	%r8d, %r8d
	movq	32(%rsi), %r8
	cmovnsl	%r14d, %r10d
	addl	(%r8), %r10d
	imull	%r11d, %r10d
	movq	%r10, 128(%rsp)                 # 8-byte Spill
	movl	%edi, %r10d
	negl	%r10d
	cmovsl	%edi, %r10d
	imull	%eax, %r10d
	addl	%r9d, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r10d
	movl	%r10d, %eax
	negl	%eax
	cmovsl	%r10d, %eax
	movl	%eax, %ecx
	negl	%ecx
	testl	%edi, %edi
	cmovnsl	%eax, %ecx
	addl	16(%r8), %ecx
	imull	%r11d, %ecx
	movq	%rcx, %r11
	movl	$1, %esi
	testl	%edx, %edx
	jle	.LBB8_47
# %bb.23:                               # %for.cond199.preheader.lr.ph
	movq	16(%rsp), %rdi                  # 8-byte Reload
	leal	14(%rdi), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movl	849108(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB8_35
# %bb.24:                               # %for.cond199.preheader.preheader
	movl	%esi, 120(%rsp)                 # 4-byte Spill
	movq	%r11, 96(%rsp)                  # 8-byte Spill
	movslq	24(%rsp), %rsi                  # 4-byte Folded Reload
	shlq	$6, %rsi
	xorl	%edi, %edi
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	%r13, %r8
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 112(%rsp)                 # 8-byte Spill
	movl	36(%rsp), %r15d                 # 4-byte Reload
	movq	112(%rsp), %r10                 # 8-byte Reload
	movl	120(%rsp), %ebx                 # 4-byte Reload
	movq	16(%rsp), %r9                   # 8-byte Reload
	jmp	.LBB8_26
	.p2align	4, 0x90
.LBB8_25:                               # %for.inc282
                                        #   in Loop: Header=BB8_26 Depth=1
	addq	$4, %rdi
	movslq	%edx, %rcx
	addq	$32, %r8
	addq	$32, %r11
	cmpq	%rcx, %rdi
	jge	.LBB8_32
.LBB8_26:                               # %for.cond199.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_28 Depth 2
                                        #       Child Loop BB8_29 Depth 3
	testl	%eax, %eax
	jle	.LBB8_25
# %bb.27:                               # %for.cond204.preheader.preheader
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	.p2align	4, 0x90
.LBB8_28:                               # %for.cond204.preheader
                                        #   Parent Loop BB8_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_29 Depth 3
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r8, %rax
	orq	$1, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	orq	$2, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	orq	$3, %r8
	xorl	%r14d, %r14d
	movq	104(%rsp), %rdi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB8_29:                               # %for.cond208.preheader
                                        #   Parent Loop BB8_26 Depth=1
                                        #     Parent Loop BB8_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r11,%r14), %rsi
	movq	8(%rsp), %r12                   # 8-byte Reload
	movl	(%rsi,%r12,4), %eax
	movl	%r15d, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef(%r10,%r14,2)
	movl	%eax, (%rsi,%r12,4)
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	(%r13,%r14), %rax
	movl	(%rax,%r12,4), %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	imull	quant_coef(%rdi,%r14,2), %edx
	addl	%ebx, %edx
	movl	68(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	testl	%eax, %eax
	movq	(%r11,%r14), %rax
	cmovnsl	%ecx, %edx
	addl	(%rax,%r12,4), %edx
	imull	dequant_coef(%rdi,%r14,2), %edx
	movl	%r9d, %ecx
	shll	%cl, %edx
	movl	%edx, (%rax,%r12,4)
	movq	(%r11,%r14), %rsi
	movq	24(%rsp), %r12                  # 8-byte Reload
	movl	(%rsi,%r12,4), %eax
	movl	%r15d, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+4(%r10,%r14,2)
	movl	%eax, (%rsi,%r12,4)
	movq	(%r13,%r14), %rax
	movl	(%rax,%r12,4), %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	imull	quant_coef+4(%rdi,%r14,2), %edx
	addl	%ebx, %edx
	movl	%ebp, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	testl	%eax, %eax
	movq	(%r11,%r14), %rax
	cmovnsl	%ecx, %edx
	addl	(%rax,%r12,4), %edx
	imull	dequant_coef+4(%rdi,%r14,2), %edx
	movl	%r9d, %ecx
	shll	%cl, %edx
	movl	%edx, (%rax,%r12,4)
	movq	(%r11,%r14), %rsi
	movq	40(%rsp), %r12                  # 8-byte Reload
	movl	(%rsi,%r12,4), %eax
	movl	%r15d, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+8(%r10,%r14,2)
	movl	%eax, (%rsi,%r12,4)
	movq	(%r13,%r14), %rax
	movl	(%rax,%r12,4), %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	imull	quant_coef+8(%rdi,%r14,2), %edx
	addl	%ebx, %edx
	movl	%ebp, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	testl	%eax, %eax
	movq	(%r11,%r14), %rax
	cmovnsl	%ecx, %edx
	addl	(%rax,%r12,4), %edx
	imull	dequant_coef+8(%rdi,%r14,2), %edx
	movl	%r9d, %ecx
	shll	%cl, %edx
	movl	%edx, (%rax,%r12,4)
	movq	(%r11,%r14), %rsi
	movl	(%rsi,%r8,4), %eax
	movl	%r15d, %ecx
	sarl	%cl, %eax
	cltd
	idivl	dequant_coef+12(%r10,%r14,2)
	movl	%eax, (%rsi,%r8,4)
	movq	(%r13,%r14), %rax
	movl	(%rax,%r8,4), %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	imull	quant_coef+12(%rdi,%r14,2), %edx
	addl	%ebx, %edx
	movl	%ebp, %ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	testl	%eax, %eax
	cmovnsl	%ecx, %edx
	movq	(%r11,%r14), %rax
	addl	(%rax,%r8,4), %edx
	imull	dequant_coef+12(%rdi,%r14,2), %edx
	movl	%r9d, %ecx
	shll	%cl, %edx
	movl	%edx, (%rax,%r8,4)
	addq	$8, %r14
	cmpq	$32, %r14
	jne	.LBB8_29
# %bb.30:                               # %for.inc279
                                        #   in Loop: Header=BB8_28 Depth=2
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	$4, %rdx
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movslq	849108(%rbp), %rax
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	cmpq	%rax, %rdx
	jl	.LBB8_28
# %bb.31:                               # %for.inc282.loopexit
                                        #   in Loop: Header=BB8_26 Depth=1
	movl	849112(%rbp), %edx
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	88(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB8_25
.LBB8_32:
	movq	16(%rsp), %rcx                  # 8-byte Reload
.LBB8_33:
	movq	96(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB8_48
.LBB8_35:
	movq	%rdi, %rcx
	jmp	.LBB8_48
.LBB8_36:                               # %for.cond285.preheader
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movslq	24(%rsp), %rax                  # 4-byte Folded Reload
	shlq	$6, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	dequant_coef(%rax), %r9d
	shll	$4, %r9d
	movl	$1, %r11d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	movq	%rbx, %r15
	shlq	$6, %r15
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi), %r13
	movl	(%r13), %eax
	imull	%r9d, %eax
	movl	36(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, %ecx
	shll	%cl, %eax
	sarl	$5, %eax
	addl	%r14d, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ebp, %ebp
	testl	%eax, %eax
	setne	%bpl
	orl	%ecx, %ebp
	movq	%r12, %rcx
	movl	%eax, %r12d
	negl	%r12d
	cmovsl	%eax, %r12d
	movl	quant_coef(%r15), %r14d
	imull	%r14d, %r12d
	addl	%r11d, %r12d
	leal	16(%rcx), %eax
	movl	%eax, %ecx
	sarl	%cl, %r12d
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movl	dequant_coef(%r15), %r15d
	movq	32(%rsi), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	16(%r13), %r13d
	imull	%r9d, %r13d
	movl	%ebx, %ecx
	shll	%cl, %r13d
	imull	%r15d, %ebp
	imull	%r12d, %ebp
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	sarl	$5, %r13d
	addl	%r10d, %r13d
	movl	%r13d, %ecx
	sarl	$31, %ecx
	xorl	%esi, %esi
	testl	%r13d, %r13d
	setne	%sil
	orl	%ecx, %esi
	movl	%r13d, %r10d
	negl	%r10d
	cmovsl	%r13d, %r10d
	imull	%r14d, %r10d
	addl	%r11d, %r10d
	movl	%eax, %ecx
	sarl	%cl, %r10d
	imull	%r15d, %esi
	imull	%r10d, %esi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r12                   # 8-byte Reload
	movl	(%r12), %r10d
	imull	%r9d, %r10d
	movl	%ebx, %ecx
	shll	%cl, %r10d
	sarl	$5, %r10d
	addl	%r8d, %r10d
	movl	%r10d, %ecx
	sarl	$31, %ecx
	xorl	%esi, %esi
	testl	%r10d, %r10d
	setne	%sil
	orl	%ecx, %esi
	movl	%r10d, %r8d
	negl	%r8d
	cmovsl	%r10d, %r8d
	imull	16(%r12), %r9d
	imull	%r14d, %r8d
	addl	%r11d, %r8d
	movl	%eax, %ecx
	sarl	%cl, %r8d
	movl	%ebx, %ecx
	shll	%cl, %r9d
	imull	%r15d, %esi
	imull	%r8d, %esi
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	sarl	$5, %r9d
	addl	%edi, %r9d
	movl	%r9d, %ecx
	sarl	$31, %ecx
	xorl	%esi, %esi
	testl	%r9d, %r9d
	setne	%sil
	orl	%ecx, %esi
	movl	%r9d, %edi
	negl	%edi
	cmovsl	%r9d, %edi
	imull	%r14d, %edi
	addl	%r11d, %edi
	movq	%rsi, %r11
	movl	%eax, %ecx
	sarl	%cl, %edi
	imull	%r15d, %r11d
	imull	%edi, %r11d
	movl	$1, %esi
	testl	%edx, %edx
	jle	.LBB8_46
# %bb.37:                               # %for.cond343.preheader.lr.ph
	movq	16(%rsp), %rdi                  # 8-byte Reload
	leal	14(%rdi), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	849108(%rax), %eax
	testl	%eax, %eax
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	%rdi, %rcx
	jle	.LBB8_48
# %bb.38:                               # %for.cond343.preheader.preheader
	movl	%esi, 24(%rsp)                  # 4-byte Spill
	movq	%r11, 96(%rsp)                  # 8-byte Spill
	xorl	%edi, %edi
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	%r13, %r8
	movl	36(%rsp), %ebx                  # 4-byte Reload
	movq	160(%rsp), %r12                 # 8-byte Reload
	movq	104(%rsp), %rbp                 # 8-byte Reload
	movl	24(%rsp), %r15d                 # 4-byte Reload
	jmp	.LBB8_40
	.p2align	4, 0x90
.LBB8_39:                               # %for.inc425
                                        #   in Loop: Header=BB8_40 Depth=1
	addq	$4, %rdi
	movslq	%edx, %rsi
	addq	$32, %r8
	addq	$32, %r11
	cmpq	%rsi, %rdi
	jge	.LBB8_33
.LBB8_40:                               # %for.cond343.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_42 Depth 2
                                        #       Child Loop BB8_43 Depth 3
	testl	%eax, %eax
	jle	.LBB8_39
# %bb.41:                               # %for.cond348.preheader.preheader
                                        #   in Loop: Header=BB8_40 Depth=1
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rdi, 152(%rsp)                 # 8-byte Spill
	movq	$0, 40(%rsp)                    # 8-byte Folded Spill
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	.p2align	4, 0x90
.LBB8_42:                               # %for.cond348.preheader
                                        #   Parent Loop BB8_40 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_43 Depth 3
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	orq	$1, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	orq	$2, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	orq	$3, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB8_43:                               # %for.cond352.preheader
                                        #   Parent Loop BB8_40 Depth=1
                                        #     Parent Loop BB8_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r11,%r9), %r14
	movq	%r11, %r10
	movq	40(%rsp), %r11                  # 8-byte Reload
	movl	(%r14,%r11,4), %edi
	movl	%ebx, %ecx
	sarl	%cl, %edi
	movq	80(%rsp), %r8                   # 8-byte Reload
	movq	(%r8,%r9), %rsi
	movl	%edi, %eax
	cltd
	idivl	dequant_coef(%r12,%r9,2)
	subl	%edx, %edi
	imull	A(%r9,%r9), %edi
	shll	%cl, %edi
	sarl	$6, %edi
	addl	(%rsi,%r11,4), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%edi, %edi
	setne	%dl
	orl	%eax, %edx
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	imull	quant_coef(%rbp,%r9,2), %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	movl	68(%rsp), %r13d                 # 4-byte Reload
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef(%rbp,%r9,2), %edx
	imull	%eax, %edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edx
	movl	%edx, (%r14,%r11,4)
	movq	(%r10,%r9), %r14
	movq	88(%rsp), %r10                  # 8-byte Reload
	movl	(%r14,%r10,4), %edi
	movl	%ebx, %ecx
	sarl	%cl, %edi
	movq	(%r8,%r9), %rsi
	movl	%edi, %eax
	cltd
	idivl	dequant_coef+4(%r12,%r9,2)
	subl	%edx, %edi
	imull	A+4(%r9,%r9), %edi
	shll	%cl, %edi
	sarl	$6, %edi
	addl	(%rsi,%r10,4), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%edi, %edi
	setne	%dl
	orl	%eax, %edx
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	imull	quant_coef+4(%rbp,%r9,2), %eax
	addl	%r15d, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+4(%rbp,%r9,2), %edx
	imull	%eax, %edx
	movq	16(%rsp), %r11                  # 8-byte Reload
	movl	%r11d, %ecx
	shll	%cl, %edx
	movl	%edx, (%r14,%r10,4)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax,%r9), %r14
	movq	120(%rsp), %r10                 # 8-byte Reload
	movl	(%r14,%r10,4), %edi
	movl	%ebx, %ecx
	sarl	%cl, %edi
	movq	(%r8,%r9), %rsi
	movl	%edi, %eax
	cltd
	idivl	dequant_coef+8(%r12,%r9,2)
	subl	%edx, %edi
	imull	A+8(%r9,%r9), %edi
	shll	%cl, %edi
	sarl	$6, %edi
	addl	(%rsi,%r10,4), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%edi, %edi
	setne	%dl
	orl	%eax, %edx
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	imull	quant_coef+8(%rbp,%r9,2), %eax
	addl	%r15d, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+8(%rbp,%r9,2), %edx
	imull	%eax, %edx
	movl	%r11d, %ecx
	shll	%cl, %edx
	movl	%edx, (%r14,%r10,4)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, %r11
	movq	(%rax,%r9), %r14
	movq	112(%rsp), %r10                 # 8-byte Reload
	movl	(%r14,%r10,4), %edi
	movl	%ebx, %ecx
	sarl	%cl, %edi
	movq	(%r8,%r9), %rsi
	movl	%edi, %eax
	cltd
	idivl	dequant_coef+12(%r12,%r9,2)
	subl	%edx, %edi
	imull	A+12(%r9,%r9), %edi
	shll	%cl, %edi
	sarl	$6, %edi
	addl	(%rsi,%r10,4), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	xorl	%edx, %edx
	testl	%edi, %edi
	setne	%dl
	orl	%eax, %edx
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	imull	quant_coef+12(%rbp,%r9,2), %eax
	addl	%r15d, %eax
	movl	%r13d, %ecx
	sarl	%cl, %eax
	imull	dequant_coef+12(%rbp,%r9,2), %edx
	imull	%eax, %edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edx
	movl	%edx, (%r14,%r10,4)
	addq	$8, %r9
	cmpq	$32, %r9
	jne	.LBB8_43
# %bb.44:                               # %for.inc422
                                        #   in Loop: Header=BB8_42 Depth=2
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$4, %rdx
	movq	56(%rsp), %rax                  # 8-byte Reload
	movslq	849108(%rax), %rax
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	cmpq	%rax, %rdx
	jl	.LBB8_42
# %bb.45:                               # %for.inc425.loopexit
                                        #   in Loop: Header=BB8_40 Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movl	849112(%rcx), %edx
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	152(%rsp), %rdi                 # 8-byte Reload
	movq	80(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB8_39
.LBB8_46:
	movq	72(%rsp), %r13                  # 8-byte Reload
.LBB8_47:                               # %if.end428
	movq	16(%rsp), %rcx                  # 8-byte Reload
.LBB8_48:                               # %if.end428
	movq	144(%rsp), %r8                  # 8-byte Reload
	shll	%cl, %r8d
	movq	136(%rsp), %r9                  # 8-byte Reload
	shll	%cl, %r9d
	movq	128(%rsp), %r10                 # 8-byte Reload
	shll	%cl, %r10d
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %r11d
	leal	(%r9,%r8), %eax
	leal	(%r11,%r10), %ecx
	leal	(%rcx,%rax), %edx
	sarl	%edx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi), %rsi
	movl	%edx, (%rsi)
	subl	%ecx, %eax
	sarl	%eax
	movq	(%rdi), %rcx
	movl	%eax, 16(%rcx)
	leal	(%r8,%r10), %eax
	subl	%r9d, %eax
	subl	%r11d, %eax
	sarl	%eax
	movq	32(%rdi), %rcx
	movl	%eax, (%rcx)
	addl	%r9d, %r10d
	subl	%r10d, %r8d
	addl	%r11d, %r8d
	sarl	%r8d
	movq	32(%rdi), %rax
	movl	%r8d, 16(%rax)
	movq	%r13, %rdi
	addq	$168, %rsp
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
	jmp	free_mem2Dint@PLT               # TAILCALL
.Lfunc_end8:
	.size	itrans_sp_cr, .Lfunc_end8-itrans_sp_cr
	.cfi_endproc
                                        # -- End function
	.globl	iMBtrans4x4                     # -- Begin function iMBtrans4x4
	.p2align	4, 0x90
	.type	iMBtrans4x4,@function
iMBtrans4x4:                            # @iMBtrans4x4
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
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	13520(%r13), %rax
	testl	%esi, %esi
	je	.LBB9_2
# %bb.1:                                # %cond.true
	leal	-1(%r14), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB9_3
.LBB9_2:                                # %cond.false
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB9_3:                                # %cond.end
	movq	(%rcx), %r12
	movl	92(%rbx), %ecx
	movl	%r14d, %ebp
	testl	%ecx, %ecx
	je	.LBB9_9
# %bb.4:                                # %land.lhs.true
	cmpw	$10, 152(%rbx)
	jne	.LBB9_6
# %bb.5:                                # %if.then
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	Inv_Residual_trans_16x16
	jmp	.LBB9_11
.LBB9_9:                                # %if.else.thread
	movl	$itrans_sp, %eax
	testl	%edx, %edx
	jne	.LBB9_8
	jmp	.LBB9_10
.LBB9_6:                                # %if.else
	movl	$itrans_sp, %eax
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.7:                                # %lor.lhs.false
	movl	$Inv_Residual_trans_4x4, %eax
	cmpl	$1, %ecx
	jne	.LBB9_10
.LBB9_8:                                # %cond.end17
	movq	%rax, 432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$4, %edx
	movl	$4, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$12, %edx
	xorl	%ecx, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	movl	$4, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$12, %edx
	movl	$4, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$4, %edx
	movl	$8, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	movl	$12, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$4, %edx
	movl	$12, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	movl	$8, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$12, %edx
	movl	$8, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	movl	$12, %ecx
	callq	*432(%rbx)
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$12, %edx
	movl	$12, %ecx
	callq	*432(%rbx)
	jmp	.LBB9_11
.LBB9_10:                               # %if.else37
	movq	1264(%r13), %rax
	movq	1272(%r13), %rcx
	movq	(%rcx,%rbp,8), %r15
	movq	(%rax,%rbp,8), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$12, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$4, %edx
	xorl	%ecx, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$4, %edx
	movl	$4, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$4, %edx
	movl	$8, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$4, %edx
	movl	$12, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$8, %edx
	movl	$4, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$8, %edx
	movl	$8, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$8, %edx
	movl	$12, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	xorl	%ecx, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	movl	$4, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	movl	$8, %ecx
	callq	inverse4x4@PLT
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	$12, %edx
	movl	$12, %ecx
	callq	inverse4x4@PLT
	movq	1248(%r13), %rax
	movq	1256(%r13), %rcx
	movq	(%rcx,%rbp,8), %rdi
	movq	(%rax,%rbp,8), %rsi
	movq	8(%rbx), %rax
	movl	849072(%rax,%rbp,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$16, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.LBB9_11:                               # %if.end57
	movslq	48(%rbx), %rcx
	movq	1256(%r13), %rax
	movq	(%rax,%rbp,8), %rdx
	movslq	44(%rbx), %rax
	movq	(%r12,%rcx,8), %rsi
	movq	(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	8(%r12,%rcx,8), %rsi
	movq	8(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	16(%r12,%rcx,8), %rsi
	movq	16(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	24(%r12,%rcx,8), %rsi
	movq	24(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	32(%r12,%rcx,8), %rsi
	movq	32(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	40(%r12,%rcx,8), %rsi
	movq	40(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	48(%r12,%rcx,8), %rsi
	movq	48(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	56(%r12,%rcx,8), %rsi
	movq	56(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	64(%r12,%rcx,8), %rsi
	movq	64(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	72(%r12,%rcx,8), %rsi
	movq	72(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	80(%r12,%rcx,8), %rsi
	movq	80(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	88(%r12,%rcx,8), %rsi
	movq	88(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	96(%r12,%rcx,8), %rsi
	movq	96(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	104(%r12,%rcx,8), %rsi
	movq	104(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	112(%r12,%rcx,8), %rsi
	movq	112(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rax,2)
	movups	%xmm0, (%rsi,%rax,2)
	movq	120(%r12,%rcx,8), %rcx
	movq	120(%rdx), %rdx
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 16(%rcx,%rax,2)
	movups	%xmm0, (%rcx,%rax,2)
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
.Lfunc_end9:
	.size	iMBtrans4x4, .Lfunc_end9-iMBtrans4x4
	.cfi_endproc
                                        # -- End function
	.globl	copy_image_data_16x16           # -- Begin function copy_image_data_16x16
	.p2align	4, 0x90
	.type	copy_image_data_16x16,@function
copy_image_data_16x16:                  # @copy_image_data_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	movq	(%rdi), %rdx
	movq	(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	8(%rdi), %rdx
	movq	8(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	16(%rdi), %rdx
	movq	16(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	24(%rdi), %rdx
	movq	24(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	32(%rdi), %rdx
	movq	32(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	40(%rdi), %rdx
	movq	40(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	48(%rdi), %rdx
	movq	48(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	56(%rdi), %rdx
	movq	56(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	64(%rdi), %rdx
	movq	64(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	72(%rdi), %rdx
	movq	72(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	80(%rdi), %rdx
	movq	80(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	88(%rdi), %rdx
	movq	88(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	96(%rdi), %rdx
	movq	96(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	104(%rdi), %rdx
	movq	104(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	112(%rdi), %rdx
	movq	112(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	16(%r8,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	movq	120(%rdi), %rdx
	movq	120(%rsi), %rsi
	movups	(%rsi,%rcx,2), %xmm0
	movups	16(%rsi,%rcx,2), %xmm1
	movups	%xmm1, 16(%rdx,%rax,2)
	movups	%xmm0, (%rdx,%rax,2)
	retq
.Lfunc_end10:
	.size	copy_image_data_16x16, .Lfunc_end10-copy_image_data_16x16
	.cfi_endproc
                                        # -- End function
	.globl	iMBtrans8x8                     # -- Begin function iMBtrans8x8
	.p2align	4, 0x90
	.type	iMBtrans8x8,@function
iMBtrans8x8:                            # @iMBtrans8x8
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
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	13520(%rax), %rax
	testl	%esi, %esi
	je	.LBB11_2
# %bb.1:                                # %cond.true
	leal	-1(%r14), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB11_3:                               # %cond.end
	movq	(%rcx), %r15
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	itrans8x8@PLT
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	itrans8x8@PLT
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	itrans8x8@PLT
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$8, %edx
	movl	$8, %ecx
	callq	itrans8x8@PLT
	movslq	48(%rbx), %rax
	movq	(%rbx), %rcx
	movq	1256(%rcx), %rcx
	movl	%r14d, %edx
	movq	(%rcx,%rdx,8), %rdx
	movslq	44(%rbx), %rcx
	movq	(%r15,%rax,8), %rsi
	movq	(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	8(%r15,%rax,8), %rsi
	movq	8(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	16(%r15,%rax,8), %rsi
	movq	16(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	24(%r15,%rax,8), %rsi
	movq	24(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	32(%r15,%rax,8), %rsi
	movq	32(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	40(%r15,%rax,8), %rsi
	movq	40(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	48(%r15,%rax,8), %rsi
	movq	48(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	56(%r15,%rax,8), %rsi
	movq	56(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	64(%r15,%rax,8), %rsi
	movq	64(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	72(%r15,%rax,8), %rsi
	movq	72(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	80(%r15,%rax,8), %rsi
	movq	80(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	88(%r15,%rax,8), %rsi
	movq	88(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	96(%r15,%rax,8), %rsi
	movq	96(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	104(%r15,%rax,8), %rsi
	movq	104(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	112(%r15,%rax,8), %rsi
	movq	112(%rdx), %rdi
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	%xmm1, 16(%rsi,%rcx,2)
	movups	%xmm0, (%rsi,%rcx,2)
	movq	120(%r15,%rax,8), %rax
	movq	120(%rdx), %rdx
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 16(%rax,%rcx,2)
	movups	%xmm0, (%rax,%rcx,2)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	iMBtrans8x8, .Lfunc_end11-iMBtrans8x8
	.cfi_endproc
                                        # -- End function
	.globl	iTransform                      # -- Begin function iTransform
	.p2align	4, 0x90
	.type	iTransform,@function
iTransform:                             # @iTransform
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
	movl	%edx, %ebp
                                        # kill: def $esi killed $esi def $rsi
	movq	(%rdi), %rax
	movq	8(%rdi), %r12
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	13520(%rax), %r15
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	284(%rdi), %eax
	andl	$15, %eax
	orl	%edx, %eax
	je	.LBB12_4
# %bb.1:                                # %if.then
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 420(%rax)
	je	.LBB12_2
# %bb.3:                                # %if.else
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	iMBtrans8x8
	movl	268(%r15), %eax
	testl	%eax, %eax
	jne	.LBB12_9
	jmp	.LBB12_66
.LBB12_4:                               # %if.else5
	testl	%esi, %esi
	je	.LBB12_6
# %bb.5:                                # %cond.true
	leal	-1(%rsi), %eax
	cltq
	shlq	$3, %rax
	addq	136(%r15), %rax
	jmp	.LBB12_7
.LBB12_2:                               # %if.then4
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ebp, %edx
	callq	iMBtrans4x4
	movl	268(%r15), %eax
	testl	%eax, %eax
	jne	.LBB12_9
	jmp	.LBB12_66
.LBB12_6:                               # %cond.false
	leaq	128(%r15), %rax
.LBB12_7:                               # %cond.end
	movq	(%rax), %rax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movslq	48(%rdi), %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	1248(%rdx), %rdx
	movl	%esi, %esi
	movq	(%rdx,%rsi,8), %rsi
	movslq	44(%rdi), %rdx
	movq	(%rax,%rcx,8), %rdi
	movq	(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	8(%rax,%rcx,8), %rdi
	movq	8(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	16(%rax,%rcx,8), %rdi
	movq	16(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	24(%rax,%rcx,8), %rdi
	movq	24(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	32(%rax,%rcx,8), %rdi
	movq	32(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	40(%rax,%rcx,8), %rdi
	movq	40(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	48(%rax,%rcx,8), %rdi
	movq	48(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	56(%rax,%rcx,8), %rdi
	movq	56(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	64(%rax,%rcx,8), %rdi
	movq	64(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	72(%rax,%rcx,8), %rdi
	movq	72(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	80(%rax,%rcx,8), %rdi
	movq	80(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	88(%rax,%rcx,8), %rdi
	movq	88(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	96(%rax,%rcx,8), %rdi
	movq	96(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	104(%rax,%rcx,8), %rdi
	movq	104(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	112(%rax,%rcx,8), %rdi
	movq	112(%rsi), %r8
	movups	(%r8), %xmm0
	movups	16(%r8), %xmm1
	movups	%xmm1, 16(%rdi,%rdx,2)
	movups	%xmm0, (%rdi,%rdx,2)
	movq	120(%rax,%rcx,8), %rax
	movq	120(%rsi), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rax,%rdx,2)
	movups	%xmm0, (%rax,%rdx,2)
	movl	268(%r15), %eax
	testl	%eax, %eax
	je	.LBB12_66
.LBB12_9:                               # %if.end11
	cmpl	$3, %eax
	jne	.LBB12_10
.LBB12_66:                              # %if.end149
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
.LBB12_10:                              # %for.cond.preheader
	.cfi_def_cfa_offset 160
	testl	%ebp, %ebp
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	je	.LBB12_11
# %bb.37:                               # %for.body.preheader
	movq	136(%r15), %rax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movslq	56(%rdi), %rbx
	shlq	$3, %rbx
	addq	(%rax), %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	movq	8(%rax), %r13
	cmpl	$0, 92(%rdi)
	movl	$itrans4x4, %eax
	movl	$itrans4x4_ls, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 432(%rdi)
	xorl	%esi, %esi
	callq	itrans_sp_cr
	movl	849112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_45
# %bb.38:                               # %for.cond116.preheader.lr.ph
	movl	849108(%r12), %eax
	testl	%eax, %eax
	jle	.LBB12_45
# %bb.39:                               # %for.cond116.preheader.preheader
	xorl	%ebp, %ebp
	jmp	.LBB12_40
	.p2align	4, 0x90
.LBB12_44:                              # %for.inc123
                                        #   in Loop: Header=BB12_40 Depth=1
	addl	$4, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB12_45
.LBB12_40:                              # %for.cond116.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_42 Depth 2
	testl	%eax, %eax
	jle	.LBB12_44
# %bb.41:                               # %for.body119.preheader
                                        #   in Loop: Header=BB12_40 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB12_42:                              # %for.body119
                                        #   Parent Loop BB12_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	*432(%rdi)
	addl	$4, %r14d
	movl	849108(%r12), %eax
	cmpl	%eax, %r14d
	jl	.LBB12_42
# %bb.43:                               # %for.inc123.loopexit
                                        #   in Loop: Header=BB12_40 Depth=1
	movl	849112(%r12), %ecx
	jmp	.LBB12_44
.LBB12_45:                              # %for.end125
	movl	849136(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_52
# %bb.46:                               # %for.body.lr.ph.i302
	movslq	849132(%r12), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movslq	52(%rax), %rdi
	addq	%r14, %r14
	cmpl	$1, %ecx
	je	.LBB12_50
# %bb.47:                               # %for.body.lr.ph.i302.new
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %r12
	movq	%rbx, %r15
	movq	%r13, %rbx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB12_48:                              # %for.body.i306
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbp,8), %rdi
	addq	%r12, %rdi
	movq	(%rbx,%rbp,8), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%r15,%rbp,8), %rdi
	addq	%r12, %rdi
	movq	8(%rbx,%rbp,8), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	$-16, %r13
	addq	$2, %rbp
	cmpl	%ebp, 24(%rsp)                  # 4-byte Folded Reload
	jne	.LBB12_48
# %bb.49:                               # %for.inc146.loopexit.unr-lcssa.loopexit
	subq	%r13, %r15
	subq	%r13, %rbx
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rbx, %r13
	movq	%r15, %rbx
	movq	%rax, %r15
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	32(%rsp), %ecx                  # 4-byte Reload
.LBB12_50:                              # %for.inc146.loopexit.unr-lcssa
	testb	$1, %cl
	je	.LBB12_52
# %bb.51:                               # %for.body.i306.epil
	addq	%rdi, %rdi
	addq	(%rbx), %rdi
	movq	(%r13), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB12_52:                              # %for.inc146
	movq	136(%r15), %rax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movslq	56(%rdi), %r13
	shlq	$3, %r13
	addq	8(%rax), %r13
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	movq	16(%rax), %rbx
	cmpl	$0, 92(%rdi)
	movl	$itrans4x4, %eax
	movl	$itrans4x4_ls, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 432(%rdi)
	movl	$1, %esi
	callq	itrans_sp_cr
	movl	849112(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_60
# %bb.53:                               # %for.cond116.preheader.lr.ph.1
	movl	849108(%r12), %eax
	testl	%eax, %eax
	jle	.LBB12_60
# %bb.54:                               # %for.cond116.preheader.1.preheader
	xorl	%ebp, %ebp
	jmp	.LBB12_55
	.p2align	4, 0x90
.LBB12_59:                              # %for.inc123.1
                                        #   in Loop: Header=BB12_55 Depth=1
	addl	$4, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB12_60
.LBB12_55:                              # %for.cond116.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_57 Depth 2
	testl	%eax, %eax
	jle	.LBB12_59
# %bb.56:                               # %for.body119.1.preheader
                                        #   in Loop: Header=BB12_55 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB12_57:                              # %for.body119.1
                                        #   Parent Loop BB12_55 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$2, %esi
	movl	%r14d, %edx
	movl	%ebp, %ecx
	callq	*432(%rdi)
	addl	$4, %r14d
	movl	849108(%r12), %eax
	cmpl	%eax, %r14d
	jl	.LBB12_57
# %bb.58:                               # %for.inc123.loopexit.1
                                        #   in Loop: Header=BB12_55 Depth=1
	movl	849112(%r12), %ecx
	jmp	.LBB12_59
.LBB12_60:                              # %for.end125.1
	movl	849136(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_66
# %bb.61:                               # %for.body.lr.ph.i302.1
	movslq	849132(%r12), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	movslq	52(%rax), %rdi
	addq	%r14, %r14
	cmpl	$1, %ecx
	je	.LBB12_65
# %bb.62:                               # %for.body.lr.ph.i302.1.new
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, %r15
	xorl	%ebx, %ebx
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %r12
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB12_63:                              # %for.body.i306.1
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	addq	%r12, %rdi
	movq	(%r15,%rbx,8), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%r13,%rbx,8), %rdi
	addq	%r12, %rdi
	movq	8(%r15,%rbx,8), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	$-16, %rbp
	addq	$2, %rbx
	cmpl	%ebx, 8(%rsp)                   # 4-byte Folded Reload
	jne	.LBB12_63
# %bb.64:                               # %if.end149.loopexit364.unr-lcssa.loopexit
	subq	%rbp, %r13
	subq	%rbp, %r15
	movq	%r15, %rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	16(%rsp), %ecx                  # 4-byte Reload
.LBB12_65:                              # %if.end149.loopexit364.unr-lcssa
	testb	$1, %cl
	je	.LBB12_66
# %bb.67:                               # %for.body.i306.1.epil
	addq	%rdi, %rdi
	addq	(%r13), %rdi
	movq	(%rbx), %rsi
	movq	%r14, %rdx
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
	jmp	memcpy@PLT                      # TAILCALL
.LBB12_11:                              # %for.body.us.preheader
	.cfi_def_cfa_offset 160
	movl	$1, %r14d
	jmp	.LBB12_12
	.p2align	4, 0x90
.LBB12_30:                              # %for.inc146.us
                                        #   in Loop: Header=BB12_12 Depth=1
	callq	memcpy@PLT
.LBB12_31:                              # %for.inc146.us
                                        #   in Loop: Header=BB12_12 Depth=1
	incq	%r14
	cmpq	$3, %r14
	movq	48(%rsp), %r12                  # 8-byte Reload
	je	.LBB12_66
.LBB12_12:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_36 Depth 2
                                        #     Child Loop BB12_33 Depth 2
                                        #     Child Loop BB12_19 Depth 2
                                        #     Child Loop BB12_26 Depth 2
	movq	136(%r15), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movslq	56(%rcx), %rbp
	shlq	$3, %rbp
	addq	-8(%rax,%r14,8), %rbp
	cmpl	$16, 284(%rcx)
	jae	.LBB12_13
# %bb.23:                               # %if.else133.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movl	849136(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB12_31
# %bb.24:                               # %for.body.lr.ph.i317.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movslq	849132(%rax), %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movslq	52(%rax), %rdi
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	1248(%rax), %rax
	movq	(%rax,%r14,8), %rbx
	addq	%rdx, %rdx
	cmpl	$1, %ecx
	je	.LBB12_28
# %bb.25:                               # %for.body.lr.ph.i317.us.new
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movl	%ecx, 100(%rsp)                 # 4-byte Spill
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB12_26:                              # %for.body.i321.us
                                        #   Parent Loop BB12_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%r15,8), %rdi
	movq	80(%rsp), %r14                  # 8-byte Reload
	addq	%r14, %rdi
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%r15,8), %rsi
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memcpy@PLT
	movq	8(%r12,%r15,8), %rdi
	addq	%r14, %rdi
	movq	8(%rbx,%r15,8), %rsi
	movq	%r13, %rdx
	callq	memcpy@PLT
	addq	$-16, %rbp
	addq	$2, %r15
	cmpl	%r15d, 88(%rsp)                 # 4-byte Folded Reload
	jne	.LBB12_26
# %bb.27:                               # %for.inc146.us.loopexit.unr-lcssa.loopexit
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	subq	%rbp, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rbp, %rax
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%rcx, %rbp
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	100(%rsp), %ecx                 # 4-byte Reload
	movq	%rax, %rbx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
.LBB12_28:                              # %for.inc146.us.loopexit.unr-lcssa
                                        #   in Loop: Header=BB12_12 Depth=1
	testb	$1, %cl
	je	.LBB12_31
# %bb.29:                               # %for.body.i321.us.epil
                                        #   in Loop: Header=BB12_12 Depth=1
	addq	%rdi, %rdi
	addq	(%rbp), %rdi
	movq	(%rbx), %rsi
	jmp	.LBB12_30
	.p2align	4, 0x90
.LBB12_13:                              # %if.then30.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	1256(%rax), %rax
	movq	(%rax,%r14,8), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$0, 92(%rax)
	movl	849100(%r12), %eax
	je	.LBB12_14
# %bb.34:                               # %for.cond69.preheader.us
                                        #   in Loop: Header=BB12_12 Depth=1
	testl	%eax, %eax
	jle	.LBB12_16
# %bb.35:                               # %for.body73.us.preheader
                                        #   in Loop: Header=BB12_12 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB12_36:                              # %for.body73.us
                                        #   Parent Loop BB12_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	subblk_offset_x+32(,%r15,4), %edx
	movzbl	subblk_offset_y+32(,%r15,4), %ecx
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	itrans4x4_ls
	movzbl	subblk_offset_x+33(,%r15,4), %edx
	movzbl	subblk_offset_y+33(,%r15,4), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	itrans4x4_ls
	movzbl	subblk_offset_x+34(,%r15,4), %edx
	movzbl	subblk_offset_y+34(,%r15,4), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	itrans4x4_ls
	movzbl	subblk_offset_x+35(,%r15,4), %edx
	movzbl	subblk_offset_y+35(,%r15,4), %ecx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	itrans4x4_ls
	incq	%r15
	movslq	849100(%r12), %rax
	cmpq	%rax, %r15
	jl	.LBB12_36
.LBB12_16:                              # %if.end97.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movl	849136(%r12), %ecx
	testl	%ecx, %ecx
	movq	56(%rsp), %r15                  # 8-byte Reload
	jg	.LBB12_17
	jmp	.LBB12_31
.LBB12_14:                              # %for.cond33.preheader.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB12_15
# %bb.32:                               # %for.body35.us.preheader
                                        #   in Loop: Header=BB12_12 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB12_33:                              # %for.body35.us
                                        #   Parent Loop BB12_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	subblk_offset_x+32(,%r15,4), %ebp
	movzbl	subblk_offset_y+32(,%r15,4), %r12d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rbx
	movq	1264(%rbx), %rax
	movq	1272(%rbx), %rcx
	movq	(%rax,%r14,8), %r13
	movq	(%rcx,%r14,8), %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	callq	inverse4x4@PLT
	movq	1248(%rbx), %rax
	movq	1256(%rbx), %rcx
	shll	$3, %r12d
	movq	(%rcx,%r14,8), %rdi
	addq	%r12, %rdi
	addq	%r12, %r13
	addq	(%rax,%r14,8), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rax
	movl	849072(%rax,%r14,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	movl	%ebp, %r8d
	movl	$4, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movzbl	subblk_offset_x+33(,%r15,4), %ebp
	movzbl	subblk_offset_y+33(,%r15,4), %r12d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rbx
	movq	1264(%rbx), %rax
	movq	1272(%rbx), %rcx
	movq	(%rax,%r14,8), %r13
	movq	(%rcx,%r14,8), %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	callq	inverse4x4@PLT
	movq	1248(%rbx), %rax
	movq	1256(%rbx), %rcx
	shll	$3, %r12d
	movq	(%rcx,%r14,8), %rdi
	addq	%r12, %rdi
	addq	%r12, %r13
	addq	(%rax,%r14,8), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rax
	movl	849072(%rax,%r14,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	movl	%ebp, %r8d
	movl	$4, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movzbl	subblk_offset_x+34(,%r15,4), %ebp
	movzbl	subblk_offset_y+34(,%r15,4), %r12d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rbx
	movq	1264(%rbx), %rax
	movq	1272(%rbx), %rcx
	movq	(%rax,%r14,8), %r13
	movq	(%rcx,%r14,8), %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	callq	inverse4x4@PLT
	movq	1248(%rbx), %rax
	movq	1256(%rbx), %rcx
	shll	$3, %r12d
	movq	(%rcx,%r14,8), %rdi
	addq	%r12, %rdi
	addq	%r12, %r13
	addq	(%rax,%r14,8), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rax
	movl	849072(%rax,%r14,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	%ebp, %ecx
	movl	%ebp, %r8d
	movl	$4, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movzbl	subblk_offset_x+35(,%r15,4), %ebp
	movzbl	subblk_offset_y+35(,%r15,4), %r12d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rbx
	movq	1264(%rbx), %rax
	movq	1272(%rbx), %rcx
	movq	(%rax,%r14,8), %r13
	movq	(%rcx,%r14,8), %rdi
	movq	%r13, %rsi
	movl	%r12d, %edx
	movl	%ebp, %ecx
	callq	inverse4x4@PLT
	movq	1248(%rbx), %rax
	movq	1256(%rbx), %rcx
	shll	$3, %r12d
	movq	(%rcx,%r14,8), %rdi
	addq	%r12, %rdi
	addq	%r12, %r13
	addq	(%rax,%r14,8), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	8(%rax), %rax
	movl	849072(%rax,%r14,4), %eax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rsi
	movq	56(%rsp), %r12                  # 8-byte Reload
	movq	%r13, %rdx
	movl	%ebp, %ecx
	movl	%ebp, %r8d
	movl	$4, %r9d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	incq	%r15
	movslq	849100(%r12), %rax
	cmpq	%rax, %r15
	jl	.LBB12_33
.LBB12_15:                              # %for.end.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	1248(%rcx), %rax
	movq	1264(%rcx), %rcx
	movq	(%rax,%r14,8), %rsi
	movq	(%rcx,%r14,8), %rdx
	movl	849132(%r12), %r9d
	movl	849136(%r12), %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	8(%rcx), %rcx
	movl	849072(%rcx,%r14,4), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	pushq	$6
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	sample_reconstruct@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movl	849136(%r12), %ecx
	testl	%ecx, %ecx
	movq	56(%rsp), %r15                  # 8-byte Reload
	jle	.LBB12_31
.LBB12_17:                              # %for.body.lr.ph.i.us
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movslq	849132(%rax), %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movslq	52(%rax), %rdi
	addq	%rdx, %rdx
	cmpl	$1, %ecx
	je	.LBB12_21
# %bb.18:                               # %for.body.lr.ph.i.us.new
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movl	%ecx, 64(%rsp)                  # 4-byte Spill
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB12_19:                              # %for.body.i.us
                                        #   Parent Loop BB12_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rdi,%rdi), %rbp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%r15,8), %rdi
	addq	%rbp, %rdi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%r15,8), %rsi
	movq	32(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdx
	callq	memcpy@PLT
	addq	8(%rbx,%r15,8), %rbp
	movq	8(%r14,%r15,8), %rsi
	movq	%rbp, %rdi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	88(%rsp), %rdi                  # 8-byte Reload
	addq	$-16, %r13
	addq	$2, %r15
	cmpl	%r15d, 80(%rsp)                 # 4-byte Folded Reload
	jne	.LBB12_19
# %bb.20:                               # %for.inc146.us.loopexit363.unr-lcssa.loopexit
                                        #   in Loop: Header=BB12_12 Depth=1
	movq	24(%rsp), %rbp                  # 8-byte Reload
	subq	%r13, %rbp
	movq	16(%rsp), %rax                  # 8-byte Reload
	subq	%r13, %rax
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%rax, %r13
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	64(%rsp), %ecx                  # 4-byte Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
.LBB12_21:                              # %for.inc146.us.loopexit363.unr-lcssa
                                        #   in Loop: Header=BB12_12 Depth=1
	testb	$1, %cl
	je	.LBB12_31
# %bb.22:                               # %for.body.i.us.epil
                                        #   in Loop: Header=BB12_12 Depth=1
	addq	%rdi, %rdi
	addq	(%rbp), %rdi
	movq	(%r13), %rsi
	jmp	.LBB12_30
.Lfunc_end12:
	.size	iTransform, .Lfunc_end12-iTransform
	.cfi_endproc
                                        # -- End function
	.globl	copy_image_data                 # -- Begin function copy_image_data
	.p2align	4, 0x90
	.type	copy_image_data,@function
copy_image_data:                        # @copy_image_data
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
	testl	%r9d, %r9d
	jle	.LBB13_6
# %bb.1:                                # %for.body.lr.ph
	movq	%rdi, %r10
	movslq	%edx, %rdi
	movslq	%ecx, %rax
	movslq	%r8d, %rdx
	addq	%rdx, %rdx
	cmpl	$1, %r9d
	je	.LBB13_5
# %bb.2:                                # %for.body.lr.ph.new
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r9d, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	addq	%rax, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB13_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13,%r15,8), %rdi
	addq	%rbx, %rdi
	movq	(%rbp,%r15,8), %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%r13,%r15,8), %rdi
	addq	%rbx, %rdi
	movq	8(%rbp,%r15,8), %rsi
	addq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	$-16, %r12
	addq	$2, %r15
	cmpl	%r15d, 64(%rsp)                 # 4-byte Folded Reload
	jne	.LBB13_3
# %bb.4:                                # %for.end.loopexit.unr-lcssa.loopexit
	movq	16(%rsp), %r10                  # 8-byte Reload
	subq	%r12, %r10
	movq	8(%rsp), %rsi                   # 8-byte Reload
	subq	%r12, %rsi
	movl	4(%rsp), %r9d                   # 4-byte Reload
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
.LBB13_5:                               # %for.end.loopexit.unr-lcssa
	testb	$1, %r9b
	jne	.LBB13_7
.LBB13_6:                               # %for.end
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
.LBB13_7:                               # %for.body.epil
	.cfi_def_cfa_offset 128
	addq	%rdi, %rdi
	addq	(%r10), %rdi
	addq	%rax, %rax
	addq	(%rsi), %rax
	movq	%rax, %rsi
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
	jmp	memcpy@PLT                      # TAILCALL
.Lfunc_end13:
	.size	copy_image_data, .Lfunc_end13-copy_image_data
	.cfi_endproc
                                        # -- End function
	.globl	copy_image_data_8x8             # -- Begin function copy_image_data_8x8
	.p2align	4, 0x90
	.type	copy_image_data_8x8,@function
copy_image_data_8x8:                    # @copy_image_data_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%edx, %rax
	movslq	%ecx, %rcx
	movq	(%rdi), %rdx
	movq	(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	8(%rdi), %rdx
	movq	8(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	16(%rdi), %rdx
	movq	16(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	24(%rdi), %rdx
	movq	24(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	32(%rdi), %rdx
	movq	32(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	40(%rdi), %rdx
	movq	40(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	48(%rdi), %rdx
	movq	48(%rsi), %r8
	movups	(%r8,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	movq	56(%rdi), %rdx
	movq	56(%rsi), %rsi
	movups	(%rsi,%rcx,2), %xmm0
	movups	%xmm0, (%rdx,%rax,2)
	retq
.Lfunc_end14:
	.size	copy_image_data_8x8, .Lfunc_end14-copy_image_data_8x8
	.cfi_endproc
                                        # -- End function
	.globl	copy_image_data_4x4             # -- Begin function copy_image_data_4x4
	.p2align	4, 0x90
	.type	copy_image_data_4x4,@function
copy_image_data_4x4:                    # @copy_image_data_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movslq	%edx, %rdx
	movq	(%rsi), %r8
	movslq	%ecx, %rcx
	movq	(%r8,%rcx,2), %r8
	movq	%r8, (%rax,%rdx,2)
	movq	8(%rdi), %rax
	movq	8(%rsi), %r8
	movq	(%r8,%rcx,2), %r8
	movq	%r8, (%rax,%rdx,2)
	movq	16(%rdi), %rax
	movq	16(%rsi), %r8
	movq	(%r8,%rcx,2), %r8
	movq	%r8, (%rax,%rdx,2)
	movq	24(%rdi), %rax
	movq	24(%rsi), %rsi
	movq	(%rsi,%rcx,2), %rcx
	movq	%rcx, (%rax,%rdx,2)
	retq
.Lfunc_end15:
	.size	copy_image_data_4x4, .Lfunc_end15-copy_image_data_4x4
	.cfi_endproc
                                        # -- End function
	.globl	CheckVertMV                     # -- Begin function CheckVertMV
	.p2align	4, 0x90
	.type	CheckVertMV,@function
CheckVertMV:                            # @CheckVertMV
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	13520(%rcx), %rcx
	sarl	$2, %esi
	cmpl	$0, 384(%rdi)
	je	.LBB16_2
# %bb.1:                                # %cond.true
	movl	68(%rcx), %ecx
	sarl	%ecx
	decl	%ecx
	jmp	.LBB16_3
.LBB16_2:                               # %cond.false
	movl	84(%rcx), %ecx
.LBB16_3:                               # %cond.end
	movl	856844(%rax), %edi
	movl	$2, %r8d
	subl	%edi, %r8d
	movl	$1, %eax
	cmpl	%r8d, %esi
	jl	.LBB16_5
# %bb.4:                                # %lor.lhs.false
	subl	%edx, %ecx
	addl	%edi, %ecx
	addl	$-2, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	setg	%al
.LBB16_5:                               # %cleanup
	retq
.Lfunc_end16:
	.size	CheckVertMV, .Lfunc_end16-CheckVertMV
	.cfi_endproc
                                        # -- End function
	.type	dequant_coef,@object            # @dequant_coef
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
dequant_coef:
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	10                              # 0xa
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	11                              # 0xb
	.long	14                              # 0xe
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	13                              # 0xd
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	14                              # 0xe
	.long	18                              # 0x12
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	18                              # 0x12
	.long	23                              # 0x17
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.long	23                              # 0x17
	.long	29                              # 0x1d
	.size	dequant_coef, 384

	.type	quant_coef,@object              # @quant_coef
	.p2align	4, 0x0
quant_coef:
	.long	13107                           # 0x3333
	.long	8066                            # 0x1f82
	.long	13107                           # 0x3333
	.long	8066                            # 0x1f82
	.long	8066                            # 0x1f82
	.long	5243                            # 0x147b
	.long	8066                            # 0x1f82
	.long	5243                            # 0x147b
	.long	13107                           # 0x3333
	.long	8066                            # 0x1f82
	.long	13107                           # 0x3333
	.long	8066                            # 0x1f82
	.long	8066                            # 0x1f82
	.long	5243                            # 0x147b
	.long	8066                            # 0x1f82
	.long	5243                            # 0x147b
	.long	11916                           # 0x2e8c
	.long	7490                            # 0x1d42
	.long	11916                           # 0x2e8c
	.long	7490                            # 0x1d42
	.long	7490                            # 0x1d42
	.long	4660                            # 0x1234
	.long	7490                            # 0x1d42
	.long	4660                            # 0x1234
	.long	11916                           # 0x2e8c
	.long	7490                            # 0x1d42
	.long	11916                           # 0x2e8c
	.long	7490                            # 0x1d42
	.long	7490                            # 0x1d42
	.long	4660                            # 0x1234
	.long	7490                            # 0x1d42
	.long	4660                            # 0x1234
	.long	10082                           # 0x2762
	.long	6554                            # 0x199a
	.long	10082                           # 0x2762
	.long	6554                            # 0x199a
	.long	6554                            # 0x199a
	.long	4194                            # 0x1062
	.long	6554                            # 0x199a
	.long	4194                            # 0x1062
	.long	10082                           # 0x2762
	.long	6554                            # 0x199a
	.long	10082                           # 0x2762
	.long	6554                            # 0x199a
	.long	6554                            # 0x199a
	.long	4194                            # 0x1062
	.long	6554                            # 0x199a
	.long	4194                            # 0x1062
	.long	9362                            # 0x2492
	.long	5825                            # 0x16c1
	.long	9362                            # 0x2492
	.long	5825                            # 0x16c1
	.long	5825                            # 0x16c1
	.long	3647                            # 0xe3f
	.long	5825                            # 0x16c1
	.long	3647                            # 0xe3f
	.long	9362                            # 0x2492
	.long	5825                            # 0x16c1
	.long	9362                            # 0x2492
	.long	5825                            # 0x16c1
	.long	5825                            # 0x16c1
	.long	3647                            # 0xe3f
	.long	5825                            # 0x16c1
	.long	3647                            # 0xe3f
	.long	8192                            # 0x2000
	.long	5243                            # 0x147b
	.long	8192                            # 0x2000
	.long	5243                            # 0x147b
	.long	5243                            # 0x147b
	.long	3355                            # 0xd1b
	.long	5243                            # 0x147b
	.long	3355                            # 0xd1b
	.long	8192                            # 0x2000
	.long	5243                            # 0x147b
	.long	8192                            # 0x2000
	.long	5243                            # 0x147b
	.long	5243                            # 0x147b
	.long	3355                            # 0xd1b
	.long	5243                            # 0x147b
	.long	3355                            # 0xd1b
	.long	7282                            # 0x1c72
	.long	4559                            # 0x11cf
	.long	7282                            # 0x1c72
	.long	4559                            # 0x11cf
	.long	4559                            # 0x11cf
	.long	2893                            # 0xb4d
	.long	4559                            # 0x11cf
	.long	2893                            # 0xb4d
	.long	7282                            # 0x1c72
	.long	4559                            # 0x11cf
	.long	7282                            # 0x1c72
	.long	4559                            # 0x11cf
	.long	4559                            # 0x11cf
	.long	2893                            # 0xb4d
	.long	4559                            # 0x11cf
	.long	2893                            # 0xb4d
	.size	quant_coef, 384

	.type	A,@object                       # @A
	.p2align	4, 0x0
A:
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	16                              # 0x10
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	25                              # 0x19
	.long	20                              # 0x14
	.long	25                              # 0x19
	.size	A, 64

	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.p2align	4, 0x0
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	subblk_offset_x,@object         # @subblk_offset_x
	.p2align	4, 0x0
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	subblk_offset_y,@object         # @subblk_offset_y
	.p2align	4, 0x0
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
