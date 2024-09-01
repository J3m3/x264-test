	.text
	.file	"thread.c"
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	$224, %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:                                # %lor.lhs.false
	movq	%rax, %r14
	movq	input@GOTPCREL(%rip), %r12
	leaq	64(%rax), %rdi
	movl	44(%r15), %edx
	movl	(%r15), %esi
	movl	12(%r15), %ecx
	callq	*16(%r12)
	testl	%eax, %eax
	jne	.LBB0_5
# %bb.2:                                # %if.end
	movq	48(%r12), %rax
	movq	%rax, 48(%r14)
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	(%rbx), %r15
	movq	%r15, 56(%r14)
	movl	$0, 212(%r14)
	movl	$-1, 204(%r14)
	movl	$24, %edi
	callq	malloc@PLT
	movq	%rax, 216(%r14)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.3:                                # %if.end9
	movq	%r14, (%rax)
	movl	$0, 20(%rax)
	movq	%r15, %rdi
	callq	*8(%r12)
	movl	%eax, 208(%r14)
	movq	16(%r14), %rax
	movq	%rax, thread_input+16(%rip)
	movq	40(%r14), %rax
	movq	%rax, thread_input+40(%rip)
	movq	%r14, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_5:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str, %edi
	movl	$28, %esi
	movl	$1, %edx
	callq	fwrite@PLT
.LBB0_6:                                # %cleanup
	movl	$-1, %eax
.LBB0_7:                                # %cleanup
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
	.cfi_startproc
# %bb.0:                                # %entry
	movl	208(%rdi), %eax
	retq
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_frame
	.type	read_frame,@function
read_frame:                             # @read_frame
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movl	204(%rsi), %eax
	testl	%eax, %eax
	js	.LBB2_1
# %bb.2:                                # %if.then
	movq	216(%rbx), %rcx
	movl	20(%rcx), %r14d
	movl	$0, 212(%rbx)
	cmpl	%ebp, %eax
	jne	.LBB2_5
.LBB2_4:                                # %do.body
	movq	%rsp, %r15
	movl	$136, %edx
	movq	%rdi, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	leaq	64(%rbx), %r13
	movl	$136, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy@PLT
	movl	$136, %edx
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	memcpy@PLT
	jmp	.LBB2_6
.LBB2_1:
	xorl	%r14d, %r14d
	cmpl	%ebp, %eax
	je	.LBB2_4
.LBB2_5:                                # %if.else
	movq	56(%rbx), %rsi
	movl	%ebp, %edx
	callq	*24(%rbx)
	orl	%eax, %r14d
.LBB2_6:                                # %if.end6
	movl	208(%rbx), %eax
	testl	%eax, %eax
	sete	%cl
	incl	%ebp
	cmpl	%eax, %ebp
	setl	%al
	orb	%cl, %al
	cmpb	$1, %al
	jne	.LBB2_8
# %bb.7:                                # %if.then9
	movq	216(%rbx), %rax
	movl	%ebp, 16(%rax)
	movl	%ebp, 204(%rbx)
	leaq	64(%rbx), %rax
	movq	216(%rbx), %rcx
	movq	%rax, 8(%rcx)
	movl	$1, 212(%rbx)
	jmp	.LBB2_9
.LBB2_8:                                # %if.else18
	movl	$-1, 204(%rbx)
.LBB2_9:                                # %if.end20
	movl	%r14d, %eax
	addq	$136, %rsp
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
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function release_frame
	.type	release_frame,@function
release_frame:                          # @release_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movq	32(%rsi), %rax
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:                                # %if.then
	movq	56(%rsi), %rsi
	jmpq	*%rax                           # TAILCALL
.LBB3_1:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	release_frame, .Lfunc_end3-release_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	56(%rdi), %rdi
	callq	*48(%rbx)
	leaq	64(%rbx), %rdi
	callq	*40(%rbx)
	movq	216(%rbx), %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.type	thread_input,@object            # @thread_input
	.data
	.globl	thread_input
	.p2align	3, 0x0
thread_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	0
	.quad	read_frame
	.quad	release_frame
	.quad	0
	.quad	close_file
	.size	thread_input, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"x264 [error]: malloc failed\n"
	.size	.L.str, 29

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
