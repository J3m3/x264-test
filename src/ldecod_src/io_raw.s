	.text
	.file	"io_raw.c"
	.globl	ReadFrameConcatenated           # -- Begin function ReadFrameConcatenated
	.p2align	4, 0x90
	.type	ReadFrameConcatenated,@function
ReadFrameConcatenated:                  # @ReadFrameConcatenated
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
	movq	%r9, %rbx
	movq	%r8, %r14
	movl	%edx, %r15d
	movq	%rdi, %r12
	movl	76(%r8), %eax
	addl	%eax, %eax
	addl	72(%r8), %eax
	imull	128(%r8), %eax
	movl	768(%rsi), %ebp
	cltq
	movslq	%ecx, %rcx
	movslq	3992(%rdi), %rdx
	movslq	%r15d, %rsi
	addq	%rdx, %rsi
	imulq	%rax, %rsi
	addq	%rcx, %rsi
	movl	%ebp, %edi
	xorl	%edx, %edx
	callq	lseek@PLT
	cmpq	$-1, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	addl	3992(%r12), %r15d
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str, %edx
	movq	%r12, %rdi
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$-1, %esi
	callq	error@PLT
.LBB0_2:                                # %if.end
	testb	$7, 124(%r14)
	jne	.LBB0_19
# %bb.3:                                # %if.then16
	cmpl	$0, 28(%r14)
	jle	.LBB0_7
# %bb.4:                                # %for.body.lr.ph.i
	leaq	16(%r14), %r13
	movslq	16(%r14), %rax
	movslq	128(%r14), %r15
	imulq	%rax, %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	read@PLT
	cmpq	%r15, %rax
	jne	.LBB0_12
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	%r15, %rbx
	incl	%r12d
	cmpl	28(%r14), %r12d
	jl	.LBB0_5
.LBB0_7:                                # %for.end.i
	movl	$1, %r15d
	cmpl	$0, (%r14)
	je	.LBB0_18
# %bb.8:                                # %if.then10.i
	cmpl	$0, 32(%r14)
	jle	.LBB0_18
# %bb.9:                                # %for.body24.i.preheader
	movslq	128(%r14), %rax
	leaq	20(%r14), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movslq	20(%r14), %r12
	imulq	%rax, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_10:                               # %for.body24.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	cmpq	%r12, %rax
	jne	.LBB0_11
# %bb.13:                               # %if.end34.i
                                        #   in Loop: Header=BB0_10 Depth=1
	addq	%r12, %rbx
	incl	%r13d
	movl	32(%r14), %eax
	cmpl	%eax, %r13d
	jl	.LBB0_10
# %bb.14:                               # %for.inc40.i
	testl	%eax, %eax
	jle	.LBB0_18
# %bb.15:                               # %for.body24.1.i.preheader
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_16:                               # %for.body24.1.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	cmpq	%r12, %rax
	jne	.LBB0_11
# %bb.17:                               # %if.end34.1.i
                                        #   in Loop: Header=BB0_16 Depth=1
	addq	%r12, %rbx
	incl	%r13d
	cmpl	32(%r14), %r13d
	jl	.LBB0_16
	jmp	.LBB0_18
.LBB0_11:
	movq	(%rsp), %r13                    # 8-byte Reload
.LBB0_12:                               # %cleanup.sink.split.i
	movl	(%r13), %esi
	xorl	%r15d, %r15d
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_18:                               # %ReadData.exit
	movl	%r15d, %eax
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
.LBB0_19:                               # %if.else
	.cfi_def_cfa_offset 64
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	ReadFrameConcatenated, .Lfunc_end0-ReadFrameConcatenated
	.cfi_endproc
                                        # -- End function
	.globl	ReadFrameSeparate               # -- Begin function ReadFrameSeparate
	.p2align	4, 0x90
	.type	ReadFrameSeparate,@function
ReadFrameSeparate:                      # @ReadFrameSeparate
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
	movq	%r9, %r14
	movq	%r8, %r15
	movl	%ecx, %ebp
	movl	768(%rsi), %ebx
	addl	3992(%rdi), %edx
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	OpenFrameFile@PLT
	movslq	%ebp, %r12
	movl	%ebx, %edi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lseek@PLT
	cmpq	%r12, %rax
	je	.LBB1_2
# %bb.1:                                # %if.then
	movl	$.L.str.2, %edi
	movl	$-1, %esi
	callq	error@PLT
.LBB1_2:                                # %if.end
	testb	$7, 124(%r15)
	jne	.LBB1_21
# %bb.3:                                # %if.then5
	cmpl	$0, 28(%r15)
	jle	.LBB1_7
# %bb.4:                                # %for.body.lr.ph.i
	leaq	16(%r15), %r13
	movslq	16(%r15), %rax
	movslq	128(%r15), %r12
	imulq	%rax, %r12
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	cmpq	%r12, %rax
	jne	.LBB1_12
# %bb.6:                                # %if.end.i
                                        #   in Loop: Header=BB1_5 Depth=1
	addq	%r12, %r14
	incl	%ebp
	cmpl	28(%r15), %ebp
	jl	.LBB1_5
.LBB1_7:                                # %for.end.i
	movl	$1, %ebp
	cmpl	$0, (%r15)
	je	.LBB1_18
# %bb.8:                                # %if.then10.i
	cmpl	$0, 32(%r15)
	jle	.LBB1_18
# %bb.9:                                # %for.body24.i.preheader
	movslq	128(%r15), %rax
	leaq	20(%r15), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movslq	20(%r15), %r12
	imulq	%rax, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB1_10:                               # %for.body24.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	cmpq	%r12, %rax
	jne	.LBB1_11
# %bb.13:                               # %if.end34.i
                                        #   in Loop: Header=BB1_10 Depth=1
	addq	%r12, %r14
	incl	%r13d
	movl	32(%r15), %eax
	cmpl	%eax, %r13d
	jl	.LBB1_10
# %bb.14:                               # %for.inc40.i
	testl	%eax, %eax
	jle	.LBB1_18
# %bb.15:                               # %for.body24.1.i.preheader
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB1_16:                               # %for.body24.1.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	read@PLT
	cmpq	%r12, %rax
	jne	.LBB1_11
# %bb.17:                               # %if.end34.1.i
                                        #   in Loop: Header=BB1_16 Depth=1
	addq	%r12, %r14
	incl	%r13d
	cmpl	32(%r15), %r13d
	jl	.LBB1_16
	jmp	.LBB1_18
.LBB1_11:
	movq	(%rsp), %r13                    # 8-byte Reload
.LBB1_12:                               # %cleanup.sink.split.i
	movl	(%r13), %esi
	xorl	%ebp, %ebp
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB1_18:                               # %ReadData.exit
	cmpl	$-1, %ebx
	je	.LBB1_20
# %bb.19:                               # %if.then11
	movl	%ebx, %edi
	callq	close@PLT
.LBB1_20:                               # %if.end13
	movl	%ebp, %eax
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
.LBB1_21:                               # %if.else
	.cfi_def_cfa_offset 64
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end1:
	.size	ReadFrameSeparate, .Lfunc_end1-ReadFrameSeparate
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"read_one_frame: cannot advance file pointer in input file beyond frame %d\n"
	.size	.L.str, 75

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divided by 8"
	.size	.L.str.1, 77

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"read_one_frame: cannot fseek to (Header size) in input file"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"read_one_frame (NOT IMPLEMENTED): pic unit size on disk must be divisible by 8"
	.size	.L.str.3, 79

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"read_one_frame: cannot read %d bytes from input file, unexpected EOF!\n"
	.size	.L.str.4, 71

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
