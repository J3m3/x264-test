	.text
	.file	"yuv.c"
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
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
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	malloc@PLT
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB0_17
# %bb.1:                                # %if.end
	movq	%rax, %r15
	movq	%r12, (%rsp)                    # 8-byte Spill
	movq	8(%r14), %rdi
	leaq	44(%r13), %rbp
	leaq	12(%r13), %r14
	testq	%rdi, %rdi
	je	.LBB0_2
# %bb.7:                                # %if.else
	movl	$.L.str, %esi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
.LBB0_8:                                # %if.end18
	movl	44(%r13), %eax
	testl	%eax, %eax
	je	.LBB0_10
# %bb.9:                                # %lor.lhs.false
	movl	12(%r13), %ecx
	testl	%ecx, %ecx
	je	.LBB0_10
# %bb.11:                               # %if.end25
	movl	$0, 16(%r15)
	movl	$0, 40(%r13)
	movl	%eax, 8(%r15)
	movl	%ecx, 12(%r15)
	cmpb	$45, (%rbx)
	jne	.LBB0_14
# %bb.12:                               # %if.end25.tail
	cmpb	$0, 1(%rbx)
	je	.LBB0_13
.LBB0_14:                               # %if.else33
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	fopen64@PLT
.LBB0_15:                               # %if.end36
	movl	$-1, %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB0_17
# %bb.16:                               # %if.end41
	movq	%r15, (%rdx)
	xorl	%ecx, %ecx
.LBB0_17:                               # %cleanup42
	movl	%ecx, %eax
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
.LBB0_2:                                # %for.cond.preheader
	.cfi_def_cfa_offset 64
	movzbl	(%rbx), %eax
	testb	%al, %al
	je	.LBB0_8
# %bb.3:                                # %for.body.preheader
	movq	%rbx, %r12
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movzbl	1(%r12), %eax
	incq	%r12
	testb	%al, %al
	je	.LBB0_8
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addb	$-48, %al
	cmpb	$9, %al
	ja	.LBB0_6
# %bb.5:                                # %land.lhs.true8
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rbp, %rdx
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_13:                               # %if.then32
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LBB0_15
.LBB0_10:                               # %if.then23
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.1, %edi
	movl	$49, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$-1, %ecx
	jmp	.LBB0_17
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
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
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
	movq	(%rbx), %rdi
	callq	ftell@PLT
	movq	%rax, %r14
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek@PLT
	movl	8(%rbx), %ecx
	imull	12(%rbx), %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	addl	%edx, %ecx
	sarl	%ecx
	movslq	%ecx, %rsi
	movq	%r14, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB1_1
# %bb.2:
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rsi
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	.cfi_def_cfa_offset 32
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
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
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	%edx, 16(%rsi)
	jge	.LBB2_2
# %bb.1:                                # %if.then
	movq	(%r14), %rdi
	movslq	%ebx, %rax
	movslq	8(%r14), %rcx
	imulq	%rax, %rcx
	movslq	12(%r14), %rax
	imulq	%rcx, %rax
	leaq	(%rax,%rax,2), %rsi
	shrq	%rsi
	xorl	%edx, %edx
	callq	fseek@PLT
.LBB2_2:                                # %if.end16
	movq	64(%r15), %rdi
	movslq	8(%r14), %rax
	movslq	12(%r14), %rsi
	imulq	%rax, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	movl	$-1, %ebp
	testq	%rax, %rax
	je	.LBB2_6
# %bb.3:                                # %lor.lhs.false.i
	movl	12(%r14), %eax
	imull	8(%r14), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movq	72(%r15), %rdi
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB2_6
# %bb.4:                                # %read_frame_internal.exit
	movl	12(%r14), %eax
	imull	8(%r14), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movq	80(%r15), %rdi
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB2_6
# %bb.5:                                # %if.end20
	incl	%ebx
	movl	%ebx, 16(%r14)
	xorl	%ebp, %ebp
.LBB2_6:                                # %cleanup
	movl	%ebp, %eax
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
.Lfunc_end2:
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:                                # %lor.lhs.false
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_3
# %bb.2:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	fclose@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB3_3:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	close_file, .Lfunc_end3-close_file
	.cfi_endproc
                                        # -- End function
	.type	yuv_input,@object               # @yuv_input
	.section	.rodata,"a",@progbits
	.globl	yuv_input
	.p2align	3, 0x0
yuv_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	x264_picture_alloc
	.quad	read_frame
	.quad	0
	.quad	x264_picture_clean
	.quad	close_file
	.size	yuv_input, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%dx%d"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"yuv [error]: rawyuv input requires a resolution.\n"
	.size	.L.str.1, 50

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
