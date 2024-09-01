	.text
	.file	"memalloc.c"
	.globl	init_top_bot_planes             # -- Begin function init_top_bot_planes
	.p2align	4, 0x90
	.type	init_top_bot_planes,@function
init_top_bot_planes:                    # @init_top_bot_planes
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
	movq	%rdx, %r12
	movl	%esi, %r15d
	movq	%rdi, %rbp
	movl	%esi, %ebx
	sarl	%ebx
	movslq	%ebx, %r13
	shlq	$3, %r13
	movq	%r13, %rdi
	callq	malloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB0_2:                                # %if.end
	movq	%r13, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then8
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.1, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB0_4:                                # %if.end9
	testl	%ebx, %ebx
	jle	.LBB0_11
# %bb.5:                                # %for.body.preheader
	movl	%ebx, %eax
	cmpl	$1, %ebx
	jne	.LBB0_7
# %bb.6:
	xorl	%ecx, %ecx
	jmp	.LBB0_9
.LBB0_7:                                # %for.body.preheader.new
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	24(%rbp), %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rsi), %rdi
	movq	(%r12), %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	-16(%rsi), %rdi
	movq	(%r14), %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	-8(%rsi), %rdi
	movq	(%r12), %r8
	movq	%rdi, 8(%r8,%rcx,8)
	movq	(%rsi), %rdi
	movq	(%r14), %r8
	movq	%rdi, 8(%r8,%rcx,8)
	addq	$2, %rcx
	addq	$32, %rsi
	cmpq	%rcx, %rdx
	jne	.LBB0_8
.LBB0_9:                                # %for.end.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB0_11
# %bb.10:                               # %for.body.epil
	movq	%rcx, %rax
	shlq	$4, %rax
	movq	(%rbp,%rax), %rdx
	movq	(%r12), %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	8(%rbp,%rax), %rax
	movq	(%r14), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB0_11:                               # %for.end
	shll	$3, %r15d
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
.Lfunc_end0:
	.size	init_top_bot_planes, .Lfunc_end0-init_top_bot_planes
	.cfi_endproc
                                        # -- End function
	.globl	no_mem_exit                     # -- Begin function no_mem_exit
	.p2align	4, 0x90
	.type	no_mem_exit,@function
no_mem_exit:                            # @no_mem_exit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movq	errortext@GOTPCREL(%rip), %rbx
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%rbx, %rdi
	movl	$100, %esi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end1:
	.size	no_mem_exit, .Lfunc_end1-no_mem_exit
	.cfi_endproc
                                        # -- End function
	.globl	free_top_bot_planes             # -- Begin function free_top_bot_planes
	.p2align	4, 0x90
	.type	free_top_bot_planes,@function
free_top_bot_planes:                    # @free_top_bot_planes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end2:
	.size	free_top_bot_planes, .Lfunc_end2-free_top_bot_planes
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Ddist                   # -- Begin function get_mem2Ddist
	.p2align	4, 0x90
	.type	get_mem2Ddist,@function
get_mem2Ddist:                          # @get_mem2Ddist
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB3_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.2, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r15
.LBB3_2:                                # %if.end
	movl	%ebx, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$256, %esi                      # imm = 0x100
	callq	calloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB3_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB3_5
	jmp	.LBB3_12
.LBB3_3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.2, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB3_12
.LBB3_5:                                # %for.body.lr.ph
	movslq	%ebx, %rax
	movl	%ebp, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB3_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	shlq	$8, %rdi
	.p2align	4, 0x90
.LBB3_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB3_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB3_9:                                # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB3_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$8, %rax
	.p2align	4, 0x90
.LBB3_11:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB3_11
.LBB3_12:                               # %for.end
	shll	$8, %ebx
	orl	$8, %ebx
	imull	%ebp, %ebx
	movl	%ebx, %eax
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
.Lfunc_end3:
	.size	get_mem2Ddist, .Lfunc_end3-get_mem2Ddist
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dlm                     # -- Begin function get_mem2Dlm
	.p2align	4, 0x90
	.type	get_mem2Dlm,@function
get_mem2Dlm:                            # @get_mem2Dlm
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB4_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.3, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB4_2:                                # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$48, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB4_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB4_5
	jmp	.LBB4_12
.LBB4_3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.3, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB4_12
.LBB4_5:                                # %for.body.lr.ph
	movslq	%r14d, %rdx
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpq	$3, %rdi
	jb	.LBB4_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%ecx, %ecx
	movq	%rdx, %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	.p2align	4, 0x90
.LBB4_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB4_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rcx
.LBB4_9:                                # %for.end.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB4_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	.p2align	4, 0x90
.LBB4_11:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rcx,8), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%rsi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB4_11
.LBB4_12:                               # %for.end
	shll	$4, %r14d
	leal	(%r14,%r14,2), %eax
	addl	$8, %eax
	imull	%ebx, %eax
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
.Lfunc_end4:
	.size	get_mem2Dlm, .Lfunc_end4-get_mem2Dlm
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Ddist                  # -- Begin function free_mem2Ddist
	.p2align	4, 0x90
	.type	free_mem2Ddist,@function
free_mem2Ddist:                         # @free_mem2Ddist
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB5_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB5_5:                                # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.4, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB5_3:                                # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.4, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end5:
	.size	free_mem2Ddist, .Lfunc_end5-free_mem2Ddist
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dlm                    # -- Begin function free_mem2Dlm
	.p2align	4, 0x90
	.type	free_mem2Dlm,@function
free_mem2Dlm:                           # @free_mem2Dlm
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB6_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB6_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB6_5:                                # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.5, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB6_3:                                # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.5, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end6:
	.size	free_mem2Dlm, .Lfunc_end6-free_mem2Dlm
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dmp                     # -- Begin function get_mem2Dmp
	.p2align	4, 0x90
	.type	get_mem2Dmp,@function
get_mem2Dmp:                            # @get_mem2Dmp
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB7_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.6, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r15
.LBB7_2:                                # %if.end
	movl	%ebx, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$32, %esi
	callq	calloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB7_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB7_5
	jmp	.LBB7_12
.LBB7_3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.7, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB7_12
.LBB7_5:                                # %for.body.lr.ph
	movslq	%ebx, %rax
	movl	%ebp, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB7_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	movq	%rax, %rdi
	shlq	$5, %rdi
	.p2align	4, 0x90
.LBB7_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r14), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB7_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB7_9:                                # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB7_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$5, %rax
	.p2align	4, 0x90
.LBB7_11:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB7_11
.LBB7_12:                               # %for.end
	shll	$5, %ebx
	orl	$8, %ebx
	imull	%ebp, %ebx
	movl	%ebx, %eax
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
.Lfunc_end7:
	.size	get_mem2Dmp, .Lfunc_end7-get_mem2Dmp
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dmp                     # -- Begin function get_mem3Dmp
	.p2align	4, 0x90
	.type	get_mem3Dmp,@function
get_mem3Dmp:                            # @get_mem3Dmp
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB8_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.8, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB8_2:                                # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dmp
	cmpl	$2, %ebp
	jl	.LBB8_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB8_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB8_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB8_7:                                # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB8_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB8_9:                                # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB8_9
.LBB8_10:                               # %for.end
	addl	%ebx, %eax
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
.Lfunc_end8:
	.size	get_mem3Dmp, .Lfunc_end8-get_mem3Dmp
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dmp                    # -- Begin function free_mem2Dmp
	.p2align	4, 0x90
	.type	free_mem2Dmp,@function
free_mem2Dmp:                           # @free_mem2Dmp
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB9_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB9_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB9_5:                                # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.9, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB9_3:                                # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.9, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end9:
	.size	free_mem2Dmp, .Lfunc_end9-free_mem2Dmp
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dmp                    # -- Begin function free_mem3Dmp
	.p2align	4, 0x90
	.type	free_mem3Dmp,@function
free_mem3Dmp:                           # @free_mem3Dmp
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB10_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB10_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB10_5
.LBB10_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.10, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB10_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.9, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB10_7
.LBB10_4:                               # %if.else.i
	movl	$.L.str.9, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB10_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB10_7:                               # %free_mem2Dmp.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end10:
	.size	free_mem3Dmp, .Lfunc_end10-free_mem3Dmp
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dquant                  # -- Begin function get_mem2Dquant
	.p2align	4, 0x90
	.type	get_mem2Dquant,@function
get_mem2Dquant:                         # @get_mem2Dquant
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB11_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.11, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB11_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$12, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB11_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB11_5
	jmp	.LBB11_12
.LBB11_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.11, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB11_12
.LBB11_5:                               # %for.body.lr.ph
	movslq	%r14d, %rdx
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpq	$3, %rdi
	jb	.LBB11_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%ecx, %ecx
	leaq	(,%rdx,4), %rdi
	leaq	(%rdi,%rdi,2), %rdi
	.p2align	4, 0x90
.LBB11_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB11_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rcx
.LBB11_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB11_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$2, %rdx
	.p2align	4, 0x90
.LBB11_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rcx,8), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%rsi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB11_11
.LBB11_12:                              # %for.end
	leal	(%r14,%r14,2), %eax
	leal	8(,%rax,4), %eax
	imull	%ebx, %eax
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
.Lfunc_end11:
	.size	get_mem2Dquant, .Lfunc_end11-get_mem2Dquant
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dquant                  # -- Begin function get_mem3Dquant
	.p2align	4, 0x90
	.type	get_mem3Dquant,@function
get_mem3Dquant:                         # @get_mem3Dquant
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB12_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.12, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB12_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dquant
	cmpl	$2, %ebp
	jl	.LBB12_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB12_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB12_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB12_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB12_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB12_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB12_9
.LBB12_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end12:
	.size	get_mem3Dquant, .Lfunc_end12-get_mem3Dquant
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dquant                  # -- Begin function get_mem4Dquant
	.p2align	4, 0x90
	.type	get_mem4Dquant,@function
get_mem4Dquant:                         # @get_mem4Dquant
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB13_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.13, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB13_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB13_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.12, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB13_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dquant
	cmpl	$2, %r15d
	jl	.LBB13_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB13_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB13_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB13_7
# %bb.8:                                # %get_mem3Dquant.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB13_9:                               # %get_mem3Dquant.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB13_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB13_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB13_11
.LBB13_12:                              # %get_mem3Dquant.exit
	cmpl	$2, %ebp
	jl	.LBB13_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB13_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB13_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB13_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB13_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB13_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB13_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB13_19
.LBB13_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end13:
	.size	get_mem4Dquant, .Lfunc_end13-get_mem4Dquant
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5Dquant                  # -- Begin function get_mem5Dquant
	.p2align	4, 0x90
	.type	get_mem5Dquant,@function
get_mem5Dquant:                         # @get_mem5Dquant
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB14_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.14, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB14_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem4Dquant
	cmpl	$2, %ebp
	jl	.LBB14_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB14_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB14_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB14_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB14_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB14_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB14_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB14_9
.LBB14_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end14:
	.size	get_mem5Dquant, .Lfunc_end14-get_mem5Dquant
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dquant                 # -- Begin function free_mem2Dquant
	.p2align	4, 0x90
	.type	free_mem2Dquant,@function
free_mem2Dquant:                        # @free_mem2Dquant
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB15_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB15_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB15_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.15, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB15_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.15, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end15:
	.size	free_mem2Dquant, .Lfunc_end15-free_mem2Dquant
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dquant                 # -- Begin function free_mem3Dquant
	.p2align	4, 0x90
	.type	free_mem3Dquant,@function
free_mem3Dquant:                        # @free_mem3Dquant
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB16_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB16_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB16_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB16_5
.LBB16_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.16, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB16_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.15, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB16_7
.LBB16_4:                               # %if.else.i
	movl	$.L.str.15, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB16_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB16_7:                               # %free_mem2Dquant.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end16:
	.size	free_mem3Dquant, .Lfunc_end16-free_mem3Dquant
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dquant                 # -- Begin function free_mem4Dquant
	.p2align	4, 0x90
	.type	free_mem4Dquant,@function
free_mem4Dquant:                        # @free_mem4Dquant
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB17_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB17_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB17_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB17_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB17_6
.LBB17_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.17, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB17_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.16, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB17_10
.LBB17_7:                               # %if.else3.i.i
	movl	$.L.str.15, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB17_8
.LBB17_5:                               # %if.else.i.i
	movl	$.L.str.15, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB17_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB17_8:                               # %free_mem2Dquant.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB17_10:                              # %free_mem3Dquant.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end17:
	.size	free_mem4Dquant, .Lfunc_end17-free_mem4Dquant
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5Dquant                 # -- Begin function free_mem5Dquant
	.p2align	4, 0x90
	.type	free_mem5Dquant,@function
free_mem5Dquant:                        # @free_mem5Dquant
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB18_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4Dquant
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB18_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.18, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end18:
	.size	free_mem5Dquant, .Lfunc_end18-free_mem5Dquant
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2D_spp                   # -- Begin function get_mem2D_spp
	.p2align	4, 0x90
	.type	get_mem2D_spp,@function
get_mem2D_spp:                          # @get_mem2D_spp
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB19_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.19, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB19_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB19_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB19_5
	jmp	.LBB19_12
.LBB19_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.19, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB19_12
.LBB19_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB19_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB19_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB19_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB19_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB19_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB19_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB19_11
.LBB19_12:                              # %for.end
	leal	8(,%r14,8), %eax
	imull	%ebx, %eax
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
.Lfunc_end19:
	.size	get_mem2D_spp, .Lfunc_end19-get_mem2D_spp
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3D_spp                   # -- Begin function get_mem3D_spp
	.p2align	4, 0x90
	.type	get_mem3D_spp,@function
get_mem3D_spp:                          # @get_mem3D_spp
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB20_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.20, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB20_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2D_spp
	cmpl	$2, %ebp
	jl	.LBB20_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB20_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB20_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB20_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB20_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB20_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB20_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB20_9
.LBB20_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end20:
	.size	get_mem3D_spp, .Lfunc_end20-get_mem3D_spp
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dmv                     # -- Begin function get_mem2Dmv
	.p2align	4, 0x90
	.type	get_mem2Dmv,@function
get_mem2Dmv:                            # @get_mem2Dmv
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB21_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.6, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB21_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB21_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB21_5
	jmp	.LBB21_12
.LBB21_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.6, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB21_12
.LBB21_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB21_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,4), %rdi
	.p2align	4, 0x90
.LBB21_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB21_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB21_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB21_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB21_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB21_11
.LBB21_12:                              # %for.end
	leal	8(,%r14,4), %eax
	imull	%ebx, %eax
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
.Lfunc_end21:
	.size	get_mem2Dmv, .Lfunc_end21-get_mem2Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dmv                     # -- Begin function get_mem3Dmv
	.p2align	4, 0x90
	.type	get_mem3Dmv,@function
get_mem3Dmv:                            # @get_mem3Dmv
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB22_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.21, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB22_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dmv
	cmpl	$2, %ebp
	jl	.LBB22_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB22_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB22_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB22_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB22_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB22_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB22_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB22_9
.LBB22_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end22:
	.size	get_mem3Dmv, .Lfunc_end22-get_mem3Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dmv                     # -- Begin function get_mem4Dmv
	.p2align	4, 0x90
	.type	get_mem4Dmv,@function
get_mem4Dmv:                            # @get_mem4Dmv
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB23_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.22, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB23_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB23_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.21, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB23_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dmv
	cmpl	$2, %r15d
	jl	.LBB23_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB23_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB23_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB23_7
# %bb.8:                                # %get_mem3Dmv.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB23_9:                               # %get_mem3Dmv.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB23_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB23_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB23_11
.LBB23_12:                              # %get_mem3Dmv.exit
	cmpl	$2, %ebp
	jl	.LBB23_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB23_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB23_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB23_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB23_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB23_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB23_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB23_19
.LBB23_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end23:
	.size	get_mem4Dmv, .Lfunc_end23-get_mem4Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5Dmv                     # -- Begin function get_mem5Dmv
	.p2align	4, 0x90
	.type	get_mem5Dmv,@function
get_mem5Dmv:                            # @get_mem5Dmv
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB24_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.23, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB24_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem4Dmv
	cmpl	$2, %ebp
	jl	.LBB24_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB24_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB24_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB24_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB24_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB24_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB24_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB24_9
.LBB24_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end24:
	.size	get_mem5Dmv, .Lfunc_end24-get_mem5Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem6Dmv                     # -- Begin function get_mem6Dmv
	.p2align	4, 0x90
	.type	get_mem6Dmv,@function
get_mem6Dmv:                            # @get_mem6Dmv
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
	movl	%r9d, 12(%rsp)                  # 4-byte Spill
	movl	%r8d, 8(%rsp)                   # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB25_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.24, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB25_2:                               # %if.end
	movl	%r15d, 4(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB25_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.23, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB25_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	80(%rsp), %r8d
	callq	get_mem4Dmv
	cmpl	$2, %r15d
	jl	.LBB25_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB25_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB25_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB25_7
# %bb.8:                                # %get_mem5Dmv.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB25_9:                               # %get_mem5Dmv.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB25_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB25_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB25_11
.LBB25_12:                              # %get_mem5Dmv.exit
	cmpl	$2, %ebp
	jl	.LBB25_20
# %bb.13:                               # %for.body.lr.ph
	movslq	4(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB25_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB25_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB25_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB25_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB25_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB25_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB25_19
.LBB25_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end25:
	.size	get_mem6Dmv, .Lfunc_end25-get_mem6Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem7Dmv                     # -- Begin function get_mem7Dmv
	.p2align	4, 0x90
	.type	get_mem7Dmv,@function
get_mem7Dmv:                            # @get_mem7Dmv
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
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB26_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.25, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB26_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movl	88(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	20(%rsp), %r8d                  # 4-byte Reload
	movl	80(%rsp), %r9d
	callq	get_mem6Dmv
	cmpl	$2, %ebp
	jl	.LBB26_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB26_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB26_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB26_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB26_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB26_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB26_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB26_9
.LBB26_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end26:
	.size	get_mem7Dmv, .Lfunc_end26-get_mem7Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2D_spp                  # -- Begin function free_mem2D_spp
	.p2align	4, 0x90
	.type	free_mem2D_spp,@function
free_mem2D_spp:                         # @free_mem2D_spp
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB27_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB27_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB27_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.26, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB27_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.26, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end27:
	.size	free_mem2D_spp, .Lfunc_end27-free_mem2D_spp
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3D_spp                  # -- Begin function free_mem3D_spp
	.p2align	4, 0x90
	.type	free_mem3D_spp,@function
free_mem3D_spp:                         # @free_mem3D_spp
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB28_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB28_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB28_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB28_5
.LBB28_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.27, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB28_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.26, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB28_7
.LBB28_4:                               # %if.else.i
	movl	$.L.str.26, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB28_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB28_7:                               # %free_mem2D_spp.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end28:
	.size	free_mem3D_spp, .Lfunc_end28-free_mem3D_spp
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dmv                    # -- Begin function free_mem2Dmv
	.p2align	4, 0x90
	.type	free_mem2Dmv,@function
free_mem2Dmv:                           # @free_mem2Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB29_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB29_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB29_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.28, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB29_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.28, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end29:
	.size	free_mem2Dmv, .Lfunc_end29-free_mem2Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dmv                    # -- Begin function free_mem3Dmv
	.p2align	4, 0x90
	.type	free_mem3Dmv,@function
free_mem3Dmv:                           # @free_mem3Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB30_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB30_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB30_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB30_5
.LBB30_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.29, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB30_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.28, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB30_7
.LBB30_4:                               # %if.else.i
	movl	$.L.str.28, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB30_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB30_7:                               # %free_mem2Dmv.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end30:
	.size	free_mem3Dmv, .Lfunc_end30-free_mem3Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dmv                    # -- Begin function free_mem4Dmv
	.p2align	4, 0x90
	.type	free_mem4Dmv,@function
free_mem4Dmv:                           # @free_mem4Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB31_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB31_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB31_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB31_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB31_6
.LBB31_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.30, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB31_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.29, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB31_10
.LBB31_7:                               # %if.else3.i.i
	movl	$.L.str.28, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB31_8
.LBB31_5:                               # %if.else.i.i
	movl	$.L.str.28, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB31_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB31_8:                               # %free_mem2Dmv.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB31_10:                              # %free_mem3Dmv.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end31:
	.size	free_mem4Dmv, .Lfunc_end31-free_mem4Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5Dmv                    # -- Begin function free_mem5Dmv
	.p2align	4, 0x90
	.type	free_mem5Dmv,@function
free_mem5Dmv:                           # @free_mem5Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB32_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4Dmv
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB32_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.31, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end32:
	.size	free_mem5Dmv, .Lfunc_end32-free_mem5Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem6Dmv                    # -- Begin function free_mem6Dmv
	.p2align	4, 0x90
	.type	free_mem6Dmv,@function
free_mem6Dmv:                           # @free_mem6Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB33_5
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB33_3
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	callq	free_mem4Dmv
	movq	%r14, %rdi
	callq	free@PLT
	jmp	.LBB33_4
.LBB33_5:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.32, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB33_3:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.31, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB33_4:                               # %free_mem5Dmv.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end33:
	.size	free_mem6Dmv, .Lfunc_end33-free_mem6Dmv
	.cfi_endproc
                                        # -- End function
	.globl	free_mem7Dmv                    # -- Begin function free_mem7Dmv
	.p2align	4, 0x90
	.type	free_mem7Dmv,@function
free_mem7Dmv:                           # @free_mem7Dmv
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB34_8
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB34_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB34_4
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	callq	free_mem4Dmv
	movq	%r15, %rdi
	callq	free@PLT
	jmp	.LBB34_5
.LBB34_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.33, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB34_6:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.32, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB34_7
.LBB34_4:                               # %if.else.i.i
	movl	$.L.str.31, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB34_5:                               # %free_mem5Dmv.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB34_7:                               # %free_mem6Dmv.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end34:
	.size	free_mem7Dmv, .Lfunc_end34-free_mem7Dmv
	.cfi_endproc
                                        # -- End function
	.globl	get_mem1Dpel                    # -- Begin function get_mem1Dpel
	.p2align	4, 0x90
	.type	get_mem1Dpel,@function
get_mem1Dpel:                           # @get_mem1Dpel
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movslq	%esi, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB35_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r14
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.34, %ecx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB35_2:                               # %if.end
	leal	8(,%rbx,2), %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	get_mem1Dpel, .Lfunc_end35-get_mem1Dpel
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dpel                    # -- Begin function get_mem2Dpel
	.p2align	4, 0x90
	.type	get_mem2Dpel,@function
get_mem2Dpel:                           # @get_mem2Dpel
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB36_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.35, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB36_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB36_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB36_5
	jmp	.LBB36_12
.LBB36_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.35, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB36_12
.LBB36_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB36_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB36_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB36_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB36_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB36_12
# %bb.10:                               # %for.body.epil.preheader
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB36_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB36_11
.LBB36_12:                              # %for.end
	leal	8(,%r14,2), %eax
	imull	%ebx, %eax
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
.Lfunc_end36:
	.size	get_mem2Dpel, .Lfunc_end36-get_mem2Dpel
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2DpelWithPad             # -- Begin function get_mem2DpelWithPad
	.p2align	4, 0x90
	.type	get_mem2DpelWithPad,@function
get_mem2DpelWithPad:                    # @get_mem2DpelWithPad
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
	movl	%r8d, %r15d
	movl	%ecx, %r14d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	leal	(%rsi,%r14,2), %ebp
	leal	(%rdx,%r15,2), %r13d
	movslq	%ebp, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB37_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.36, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%rbx), %r12
.LBB37_2:                               # %if.end
	movl	%r13d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB37_4
# %bb.3:                                # %if.then10
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.36, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB37_4:                               # %if.end11
	movq	(%rbx), %rax
	movslq	%r15d, %rcx
	addq	%rcx, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebp
	jl	.LBB37_12
# %bb.5:                                # %for.body.lr.ph
	movq	(%rbx), %rax
	movq	(%rax), %rsi
	movslq	%r13d, %rax
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %r8
	jb	.LBB37_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	leaq	(,%rax,8), %r8
	leaq	(%rax,%rax), %r9
	leaq	(%r9,%r9,2), %r10
	leaq	(,%rax,4), %r11
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB37_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%r9), %r15
	movq	(%rbx), %r12
	movq	%r15, 8(%r12,%rdx,8)
	leaq	(%rsi,%r11), %r15
	movq	(%rbx), %r12
	movq	%r15, 16(%r12,%rdx,8)
	leaq	(%rsi,%r10), %r15
	movq	(%rbx), %r12
	movq	%r15, 24(%r12,%rdx,8)
	addq	%r8, %rsi
	movq	(%rbx), %r15
	movq	%rsi, 32(%r15,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB37_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB37_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB37_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rsi,%rax,2), %rsi
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB37_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%rsi, (%rdi,%rdx,8)
	incq	%rdx
	addq	%rax, %rsi
	decq	%rcx
	jne	.LBB37_11
.LBB37_12:                              # %for.end
	movslq	%r14d, %rax
	shlq	$3, %rax
	addq	%rax, (%rbx)
	leal	8(,%r13,2), %eax
	imull	%ebp, %eax
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
.Lfunc_end37:
	.size	get_mem2DpelWithPad, .Lfunc_end37-get_mem2DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dpel                    # -- Begin function get_mem3Dpel
	.p2align	4, 0x90
	.type	get_mem3Dpel,@function
get_mem3Dpel:                           # @get_mem3Dpel
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB38_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.37, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB38_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dpel
	cmpl	$2, %ebp
	jl	.LBB38_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB38_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB38_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB38_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB38_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB38_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB38_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB38_9
.LBB38_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end38:
	.size	get_mem3Dpel, .Lfunc_end38-get_mem3Dpel
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3DpelWithPad             # -- Begin function get_mem3DpelWithPad
	.p2align	4, 0x90
	.type	get_mem3DpelWithPad,@function
get_mem3DpelWithPad:                    # @get_mem3DpelWithPad
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r15d
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movl	%esi, %r12d
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB39_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.38, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB39_2:                               # %if.end
	movl	%r13d, %ecx
	imull	%r12d, %ecx
	leal	-2(,%r12,2), %esi
	imull	%r15d, %esi
	addl	%ecx, %esi
	movq	%rax, %rdi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem2DpelWithPad
	cmpl	$2, %r12d
	jl	.LBB39_10
# %bb.3:                                # %for.body.lr.ph
	leal	(%r13,%r15,2), %ecx
	movslq	%ecx, %rcx
	movl	%r12d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB39_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB39_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB39_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB39_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB39_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB39_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB39_9
.LBB39_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end39:
	.size	get_mem3DpelWithPad, .Lfunc_end39-get_mem3DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3DpelWithPadSeparately   # -- Begin function get_mem3DpelWithPadSeparately
	.p2align	4, 0x90
	.type	get_mem3DpelWithPadSeparately,@function
get_mem3DpelWithPadSeparately:          # @get_mem3DpelWithPadSeparately
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
	movl	%r9d, %ebx
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r15d
	movl	%edx, %r12d
	movl	%esi, %ebp
	movq	%rdi, %r13
	movslq	%esi, %r14
	shlq	$3, %r14
	movq	%r14, %rdi
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB40_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.39, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB40_2:                               # %if.end
	testl	%ebp, %ebp
	jle	.LBB40_5
# %bb.3:                                # %for.body.preheader
	movl	%r15d, 20(%rsp)                 # 4-byte Spill
	movl	%ebx, 16(%rsp)                  # 4-byte Spill
	movl	%ebp, %ebx
	shlq	$3, %rbx
	movl	%r12d, %r15d
	movl	12(%rsp), %r12d                 # 4-byte Reload
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB40_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	addq	%rbp, %rdi
	movl	%r15d, %esi
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	16(%rsp), %r8d                  # 4-byte Reload
	callq	get_mem2DpelWithPad
	addl	%eax, %r14d
	addq	$8, %rbp
	cmpq	%rbp, %rbx
	jne	.LBB40_4
.LBB40_5:                               # %for.end
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
.Lfunc_end40:
	.size	get_mem3DpelWithPadSeparately, .Lfunc_end40-get_mem3DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dpel                    # -- Begin function get_mem4Dpel
	.p2align	4, 0x90
	.type	get_mem4Dpel,@function
get_mem4Dpel:                           # @get_mem4Dpel
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB41_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.22, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB41_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB41_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.37, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB41_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dpel
	cmpl	$2, %r15d
	jl	.LBB41_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB41_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB41_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB41_7
# %bb.8:                                # %get_mem3Dpel.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB41_9:                               # %get_mem3Dpel.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB41_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB41_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB41_11
.LBB41_12:                              # %get_mem3Dpel.exit
	cmpl	$2, %ebp
	jl	.LBB41_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB41_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB41_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB41_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB41_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB41_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB41_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB41_19
.LBB41_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end41:
	.size	get_mem4Dpel, .Lfunc_end41-get_mem4Dpel
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4DpelWithPad             # -- Begin function get_mem4DpelWithPad
	.p2align	4, 0x90
	.type	get_mem4DpelWithPad,@function
get_mem4DpelWithPad:                    # @get_mem4DpelWithPad
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r12d
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB42_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.40, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB42_2:                               # %if.end
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
                                        # kill: def $r15d killed $r15d def $r15
	movl	%ebp, 20(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB42_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rbp
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.38, %ecx
	movq	%rbp, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%rbp, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB42_4:                               # %if.end.i
	movl	%r15d, %ecx
	movq	24(%rsp), %rbp                  # 8-byte Reload
	imull	%ebp, %ecx
	leal	-2(,%r15,2), %esi
	imull	%r12d, %esi
	addl	%ecx, %esi
	movq	%rax, %rdi
	movl	16(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	96(%rsp), %r8d
	callq	get_mem2DpelWithPad
	cmpl	$2, %r15d
	jl	.LBB42_12
# %bb.5:                                # %for.body.lr.ph.i
	leal	(%rbp,%r12,2), %ecx
	movslq	%ecx, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB42_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB42_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB42_7
# %bb.8:                                # %get_mem3DpelWithPad.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB42_9:                               # %get_mem3DpelWithPad.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB42_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB42_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB42_11
.LBB42_12:                              # %get_mem3DpelWithPad.exit
	movl	20(%rsp), %edx                  # 4-byte Reload
	cmpl	$2, %edx
	jl	.LBB42_20
# %bb.13:                               # %for.body.lr.ph
	movslq	12(%rsp), %rcx                  # 4-byte Folded Reload
	movl	%edx, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB42_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB42_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB42_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB42_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB42_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB42_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB42_19
.LBB42_20:                              # %for.end
	addl	32(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
	addq	$40, %rsp
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
.Lfunc_end42:
	.size	get_mem4DpelWithPad, .Lfunc_end42-get_mem4DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4DpelWithPadSeparately   # -- Begin function get_mem4DpelWithPadSeparately
	.p2align	4, 0x90
	.type	get_mem4DpelWithPadSeparately,@function
get_mem4DpelWithPadSeparately:          # @get_mem4DpelWithPadSeparately
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebx
	movq	%rdi, %r14
	movslq	%esi, %rdi
	shlq	$3, %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, %rbp
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB43_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.41, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rbp
.LBB43_2:                               # %if.end
	movl	%r13d, %r12d
	imull	%ebx, %r12d
	movslq	%r12d, %r15
	shlq	$3, %r15
	movq	%r15, %rdi
	callq	malloc@PLT
	movq	%rax, (%rbp)
	testq	%rax, %rax
	jne	.LBB43_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.39, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB43_4:                               # %if.end.i
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	%r13d, 4(%rsp)                  # 4-byte Spill
	movl	%ebx, 16(%rsp)                  # 4-byte Spill
	testl	%r12d, %r12d
	jle	.LBB43_7
# %bb.5:                                # %for.body.preheader.i
	movl	%r12d, %r12d
	shlq	$3, %r12
	xorl	%ebx, %ebx
	movl	12(%rsp), %r14d                 # 4-byte Reload
	movl	8(%rsp), %r13d                  # 4-byte Reload
	.p2align	4, 0x90
.LBB43_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	addq	%rbx, %rdi
	movl	%r13d, %esi
	movl	%r14d, %edx
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	96(%rsp), %r8d
	callq	get_mem2DpelWithPad
	addl	%eax, %r15d
	addq	$8, %rbx
	cmpq	%rbx, %r12
	jne	.LBB43_6
.LBB43_7:                               # %get_mem3DpelWithPadSeparately.exit
	movl	16(%rsp), %ecx                  # 4-byte Reload
	cmpl	$2, %ecx
	movq	24(%rsp), %r10                  # 8-byte Reload
	jl	.LBB43_15
# %bb.8:                                # %for.body.lr.ph
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	movl	%ecx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB43_12
# %bb.9:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB43_10:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r10), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r10), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r10), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r10), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB43_10
# %bb.11:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB43_12:                              # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB43_15
# %bb.13:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB43_14:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r10), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB43_14
.LBB43_15:                              # %for.end
	addl	32(%rsp), %r15d                 # 4-byte Folded Reload
	movl	%r15d, %eax
	addq	$40, %rsp
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
.Lfunc_end43:
	.size	get_mem4DpelWithPadSeparately, .Lfunc_end43-get_mem4DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5Dpel                    # -- Begin function get_mem5Dpel
	.p2align	4, 0x90
	.type	get_mem5Dpel,@function
get_mem5Dpel:                           # @get_mem5Dpel
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB44_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.23, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB44_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem4Dpel
	cmpl	$2, %ebp
	jl	.LBB44_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB44_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB44_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB44_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB44_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB44_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB44_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB44_9
.LBB44_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end44:
	.size	get_mem5Dpel, .Lfunc_end44-get_mem5Dpel
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5DpelWithPad             # -- Begin function get_mem5DpelWithPad
	.p2align	4, 0x90
	.type	get_mem5DpelWithPad,@function
get_mem5DpelWithPad:                    # @get_mem5DpelWithPad
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
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB45_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.42, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB45_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movl	88(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	20(%rsp), %r8d                  # 4-byte Reload
	movl	80(%rsp), %r9d
	callq	get_mem4DpelWithPad
	cmpl	$2, %ebp
	jl	.LBB45_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB45_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB45_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB45_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB45_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB45_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB45_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB45_9
.LBB45_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end45:
	.size	get_mem5DpelWithPad, .Lfunc_end45-get_mem5DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5DpelWithPadSeparately   # -- Begin function get_mem5DpelWithPadSeparately
	.p2align	4, 0x90
	.type	get_mem5DpelWithPadSeparately,@function
get_mem5DpelWithPadSeparately:          # @get_mem5DpelWithPadSeparately
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
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB46_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.43, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB46_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movl	88(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	20(%rsp), %r8d                  # 4-byte Reload
	movl	80(%rsp), %r9d
	callq	get_mem4DpelWithPadSeparately
	cmpl	$2, %ebp
	jl	.LBB46_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB46_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB46_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB46_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB46_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB46_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB46_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB46_9
.LBB46_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end46:
	.size	get_mem5DpelWithPadSeparately, .Lfunc_end46-get_mem5DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	free_mem1Dpel                   # -- Begin function free_mem1Dpel
	.p2align	4, 0x90
	.type	free_mem1Dpel,@function
free_mem1Dpel:                          # @free_mem1Dpel
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB47_2
# %bb.1:                                # %if.then
	jmp	free@PLT                        # TAILCALL
.LBB47_2:                               # %if.else
	movl	$.L.str.44, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end47:
	.size	free_mem1Dpel, .Lfunc_end47-free_mem1Dpel
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dpel                   # -- Begin function free_mem2Dpel
	.p2align	4, 0x90
	.type	free_mem2Dpel,@function
free_mem2Dpel:                          # @free_mem2Dpel
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB48_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB48_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB48_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.45, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB48_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.45, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end48:
	.size	free_mem2Dpel, .Lfunc_end48-free_mem2Dpel
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2DpelWithPad            # -- Begin function free_mem2DpelWithPad
	.p2align	4, 0x90
	.type	free_mem2DpelWithPad,@function
free_mem2DpelWithPad:                   # @free_mem2DpelWithPad
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB49_5
# %bb.1:                                # %if.then
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	je	.LBB49_3
# %bb.2:                                # %if.then2
	negl	%esi
	movslq	%esi, %r14
	movq	(%rbx,%r14,8), %rdi
	movslq	%edx, %rax
	addq	%rax, %rax
	subq	%rax, %rdi
	callq	free@PLT
	jmp	.LBB49_4
.LBB49_5:                               # %if.else6
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	movl	$.L.str.46, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB49_3:                               # %if.else
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -24
	movl	$.L.str.46, %edi
	movl	%esi, %ebp
	movl	$100, %esi
	callq	error@PLT
	negl	%ebp
	movslq	%ebp, %r14
.LBB49_4:                               # %if.end
	leaq	(%rbx,%r14,8), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end49:
	.size	free_mem2DpelWithPad, .Lfunc_end49-free_mem2DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dpel                   # -- Begin function free_mem3Dpel
	.p2align	4, 0x90
	.type	free_mem3Dpel,@function
free_mem3Dpel:                          # @free_mem3Dpel
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB50_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB50_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB50_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB50_5
.LBB50_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.47, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB50_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.45, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB50_7
.LBB50_4:                               # %if.else.i
	movl	$.L.str.45, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB50_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB50_7:                               # %free_mem2Dpel.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end50:
	.size	free_mem3Dpel, .Lfunc_end50-free_mem3Dpel
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3DpelWithPad            # -- Begin function free_mem3DpelWithPad
	.p2align	4, 0x90
	.type	free_mem3DpelWithPad,@function
free_mem3DpelWithPad:                   # @free_mem3DpelWithPad
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB51_8
# %bb.1:                                # %if.then
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
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB51_6
# %bb.2:                                # %if.then.i
	cmpq	$0, (%r14)
	je	.LBB51_4
# %bb.3:                                # %if.then2.i
	negl	%esi
	movslq	%esi, %r15
	movq	(%r14,%r15,8), %rdi
	movslq	%edx, %rax
	addq	%rax, %rax
	subq	%rax, %rdi
	callq	free@PLT
	jmp	.LBB51_5
.LBB51_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.47, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB51_6:                               # %if.else6.i
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$.L.str.46, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB51_7
.LBB51_4:                               # %if.else.i
	movl	$.L.str.46, %edi
	movl	%esi, %ebp
	movl	$100, %esi
	callq	error@PLT
	negl	%ebp
	movslq	%ebp, %r15
.LBB51_5:                               # %if.end.i
	leaq	(%r14,%r15,8), %rdi
	callq	free@PLT
.LBB51_7:                               # %free_mem2DpelWithPad.exit
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end51:
	.size	free_mem3DpelWithPad, .Lfunc_end51-free_mem3DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3DpelWithPadSeparately  # -- Begin function free_mem3DpelWithPadSeparately
	.p2align	4, 0x90
	.type	free_mem3DpelWithPadSeparately,@function
free_mem3DpelWithPadSeparately:         # @free_mem3DpelWithPadSeparately
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB52_10
# %bb.1:                                # %for.cond.preheader
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
	movq	%rdi, %rbx
	testl	%esi, %esi
	jle	.LBB52_9
# %bb.2:                                # %for.body.lr.ph
	negl	%edx
	movslq	%edx, %r14
	movslq	%ecx, %r15
	negq	%r15
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	addq	%r15, %r15
	jmp	.LBB52_3
	.p2align	4, 0x90
.LBB52_6:                               # %if.else.i
                                        #   in Loop: Header=BB52_3 Depth=1
	movl	$.L.str.46, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB52_7:                               # %free_mem2DpelWithPad.exit
                                        #   in Loop: Header=BB52_3 Depth=1
	leaq	(,%r14,8), %rdi
	addq	%rbp, %rdi
	callq	free@PLT
	movq	$0, (%rbx,%r13,8)
.LBB52_8:                               # %for.inc
                                        #   in Loop: Header=BB52_3 Depth=1
	incq	%r13
	cmpq	%r13, %r12
	je	.LBB52_9
.LBB52_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%r13,8), %rbp
	testq	%rbp, %rbp
	je	.LBB52_8
# %bb.4:                                # %if.then.i
                                        #   in Loop: Header=BB52_3 Depth=1
	cmpq	$0, (%rbp)
	je	.LBB52_6
# %bb.5:                                # %if.then2.i
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	(%rbp,%r14,8), %rdi
	addq	%r15, %rdi
	callq	free@PLT
	jmp	.LBB52_7
.LBB52_9:                               # %for.end
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.LBB52_10:                              # %if.else
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.48, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end52:
	.size	free_mem3DpelWithPadSeparately, .Lfunc_end52-free_mem3DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dpel                   # -- Begin function free_mem4Dpel
	.p2align	4, 0x90
	.type	free_mem4Dpel,@function
free_mem4Dpel:                          # @free_mem4Dpel
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB53_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB53_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB53_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB53_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB53_6
.LBB53_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.49, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB53_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.47, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB53_10
.LBB53_7:                               # %if.else3.i.i
	movl	$.L.str.45, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB53_8
.LBB53_5:                               # %if.else.i.i
	movl	$.L.str.45, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB53_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB53_8:                               # %free_mem2Dpel.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB53_10:                              # %free_mem3Dpel.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end53:
	.size	free_mem4Dpel, .Lfunc_end53-free_mem4Dpel
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4DpelWithPad            # -- Begin function free_mem4DpelWithPad
	.p2align	4, 0x90
	.type	free_mem4DpelWithPad,@function
free_mem4DpelWithPad:                   # @free_mem4DpelWithPad
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB54_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem3DpelWithPad
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB54_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.50, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end54:
	.size	free_mem4DpelWithPad, .Lfunc_end54-free_mem4DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4DpelWithPadSeparately  # -- Begin function free_mem4DpelWithPadSeparately
	.p2align	4, 0x90
	.type	free_mem4DpelWithPadSeparately,@function
free_mem4DpelWithPadSeparately:         # @free_mem4DpelWithPadSeparately
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB55_13
# %bb.1:                                # %if.then
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
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB55_11
# %bb.2:                                # %for.cond.preheader.i
	movq	%rdi, (%rsp)                    # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB55_10
# %bb.3:                                # %for.body.lr.ph.i
	negl	%edx
	movslq	%edx, %r15
	movslq	%ecx, %r12
	negq	%r12
	movl	%esi, %r13d
	xorl	%ebp, %ebp
	addq	%r12, %r12
	jmp	.LBB55_4
	.p2align	4, 0x90
.LBB55_7:                               # %if.else.i.i
                                        #   in Loop: Header=BB55_4 Depth=1
	movl	$.L.str.46, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB55_8:                               # %free_mem2DpelWithPad.exit.i
                                        #   in Loop: Header=BB55_4 Depth=1
	leaq	(%rbx,%r15,8), %rdi
	callq	free@PLT
	movq	$0, (%r14,%rbp,8)
.LBB55_9:                               # %for.inc.i
                                        #   in Loop: Header=BB55_4 Depth=1
	incq	%rbp
	cmpq	%rbp, %r13
	je	.LBB55_10
.LBB55_4:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbp,8), %rbx
	testq	%rbx, %rbx
	je	.LBB55_9
# %bb.5:                                # %if.then.i.i
                                        #   in Loop: Header=BB55_4 Depth=1
	cmpq	$0, (%rbx)
	je	.LBB55_7
# %bb.6:                                # %if.then2.i.i
                                        #   in Loop: Header=BB55_4 Depth=1
	movq	(%rbx,%r15,8), %rdi
	addq	%r12, %rdi
	callq	free@PLT
	jmp	.LBB55_8
.LBB55_10:                              # %for.end.i
	movq	%r14, %rdi
	callq	free@PLT
	movq	(%rsp), %rdi                    # 8-byte Reload
	jmp	.LBB55_12
.LBB55_13:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.51, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB55_11:                              # %if.else.i
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	movl	$.L.str.48, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
.LBB55_12:                              # %free_mem3DpelWithPadSeparately.exit
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end55:
	.size	free_mem4DpelWithPadSeparately, .Lfunc_end55-free_mem4DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5Dpel                   # -- Begin function free_mem5Dpel
	.p2align	4, 0x90
	.type	free_mem5Dpel,@function
free_mem5Dpel:                          # @free_mem5Dpel
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB56_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4Dpel
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB56_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.52, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end56:
	.size	free_mem5Dpel, .Lfunc_end56-free_mem5Dpel
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5DpelWithPad            # -- Begin function free_mem5DpelWithPad
	.p2align	4, 0x90
	.type	free_mem5DpelWithPad,@function
free_mem5DpelWithPad:                   # @free_mem5DpelWithPad
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB57_5
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB57_3
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	callq	free_mem3DpelWithPad
	movq	%r14, %rdi
	callq	free@PLT
	jmp	.LBB57_4
.LBB57_5:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.53, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB57_3:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.50, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB57_4:                               # %free_mem4DpelWithPad.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end57:
	.size	free_mem5DpelWithPad, .Lfunc_end57-free_mem5DpelWithPad
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5DpelWithPadSeparately  # -- Begin function free_mem5DpelWithPadSeparately
	.p2align	4, 0x90
	.type	free_mem5DpelWithPadSeparately,@function
free_mem5DpelWithPadSeparately:         # @free_mem5DpelWithPadSeparately
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB58_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4DpelWithPadSeparately
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB58_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.53, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end58:
	.size	free_mem5DpelWithPadSeparately, .Lfunc_end58-free_mem5DpelWithPadSeparately
	.cfi_endproc
                                        # -- End function
	.globl	new_mem2D                       # -- Begin function new_mem2D
	.p2align	4, 0x90
	.type	new_mem2D,@function
new_mem2D:                              # @new_mem2D
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
	movl	%esi, %r14d
	movl	%edi, %ebp
	movslq	%edi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB59_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.54, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB59_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB59_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB59_5
	jmp	.LBB59_12
.LBB59_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.54, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB59_12
.LBB59_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebp, %r8d
	movq	(%rbx), %rcx
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$7, %edx
	movl	$1, %esi
	cmpq	$7, %r8
	jb	.LBB59_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-8, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB59_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addq	%rax, %rcx
	movq	%rcx, 8(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 16(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 24(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 32(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 40(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 48(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 56(%rbx,%rsi,8)
	addq	%rax, %rcx
	movq	%rcx, 64(%rbx,%rsi,8)
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB59_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB59_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB59_12
# %bb.10:                               # %for.body.epil.preheader
	addq	%rax, %rcx
	leaq	(%rbx,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB59_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, (%rsi,%rdi,8)
	incq	%rdi
	addq	%rax, %rcx
	cmpq	%rdi, %rdx
	jne	.LBB59_11
.LBB59_12:                              # %for.end
	movq	%rbx, %rax
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
.Lfunc_end59:
	.size	new_mem2D, .Lfunc_end59-new_mem2D
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2D                       # -- Begin function get_mem2D
	.p2align	4, 0x90
	.type	get_mem2D,@function
get_mem2D:                              # @get_mem2D
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB60_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.54, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r15
.LBB60_2:                               # %if.end
	movl	%ebx, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB60_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB60_5
	jmp	.LBB60_11
.LBB60_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.54, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB60_11
.LBB60_5:                               # %for.body.lr.ph
	movslq	%ebx, %rax
	movl	%ebp, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB60_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB60_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	(%rdi,%rdx,8), %r8
	addq	%rax, %r8
	movq	%r8, 8(%rdi,%rdx,8)
	movq	(%r14), %rdi
	movq	8(%rdi,%rdx,8), %r8
	addq	%rax, %r8
	movq	%r8, 16(%rdi,%rdx,8)
	movq	(%r14), %rdi
	movq	16(%rdi,%rdx,8), %r8
	addq	%rax, %r8
	movq	%r8, 24(%rdi,%rdx,8)
	movq	(%r14), %rdi
	movq	24(%rdi,%rdx,8), %r8
	addq	%rax, %r8
	movq	%r8, 32(%rdi,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB60_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB60_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB60_11
	.p2align	4, 0x90
.LBB60_10:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB60_10
.LBB60_11:                              # %for.end
	addl	$8, %ebx
	imull	%ebp, %ebx
	movl	%ebx, %eax
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
.Lfunc_end60:
	.size	get_mem2D, .Lfunc_end60-get_mem2D
	.cfi_endproc
                                        # -- End function
	.globl	new_mem2Dint                    # -- Begin function new_mem2Dint
	.p2align	4, 0x90
	.type	new_mem2Dint,@function
new_mem2Dint:                           # @new_mem2Dint
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
	movl	%esi, %r14d
	movl	%edi, %ebp
	movslq	%edi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB61_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB61_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB61_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB61_5
	jmp	.LBB61_12
.LBB61_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB61_12
.LBB61_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebp, %r8d
	movq	(%rbx), %rdx
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	$1, %esi
	cmpq	$7, %r8
	jb	.LBB61_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-8, %rdi
	movq	%rax, %r8
	shlq	$5, %r8
	leaq	(,%rax,4), %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB61_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r10
	addq	%r9, %rdx
	movq	%rdx, 8(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 16(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 24(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 32(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 40(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 48(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 56(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 64(%rbx,%rsi,8)
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB61_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	addq	%r8, %r10
	incq	%rsi
	movq	%r10, %rdx
.LBB61_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB61_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rdx,%rax,4), %rdx
	shlq	$2, %rax
	leaq	(%rbx,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB61_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rsi,%rdi,8)
	incq	%rdi
	addq	%rax, %rdx
	cmpq	%rdi, %rcx
	jne	.LBB61_11
.LBB61_12:                              # %for.end
	movq	%rbx, %rax
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
.Lfunc_end61:
	.size	new_mem2Dint, .Lfunc_end61-new_mem2Dint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dint                    # -- Begin function get_mem2Dint
	.p2align	4, 0x90
	.type	get_mem2Dint,@function
get_mem2Dint:                           # @get_mem2Dint
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB62_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB62_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB62_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB62_5
	jmp	.LBB62_12
.LBB62_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB62_12
.LBB62_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB62_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,4), %rdi
	.p2align	4, 0x90
.LBB62_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB62_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB62_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB62_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB62_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB62_11
.LBB62_12:                              # %for.end
	leal	8(,%r14,4), %eax
	imull	%ebx, %eax
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
.Lfunc_end62:
	.size	get_mem2Dint, .Lfunc_end62-get_mem2Dint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2DintWithPad             # -- Begin function get_mem2DintWithPad
	.p2align	4, 0x90
	.type	get_mem2DintWithPad,@function
get_mem2DintWithPad:                    # @get_mem2DintWithPad
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
	movl	%r8d, %r15d
	movl	%ecx, %r14d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	leal	(%rsi,%r14,2), %ebp
	leal	(%rdx,%r15,2), %r13d
	movslq	%ebp, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB63_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.56, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%rbx), %r12
.LBB63_2:                               # %if.end
	movl	%r13d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB63_4
# %bb.3:                                # %if.then10
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.56, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB63_4:                               # %if.end11
	movq	(%rbx), %rax
	movslq	%r15d, %rcx
	shlq	$2, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebp
	jl	.LBB63_12
# %bb.5:                                # %for.body.lr.ph
	movq	(%rbx), %rax
	movq	(%rax), %rsi
	movslq	%r13d, %rax
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %r8
	jb	.LBB63_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	movq	%rax, %r8
	shlq	$4, %r8
	leaq	(,%rax,4), %r9
	leaq	(%r9,%r9,2), %r10
	leaq	(,%rax,8), %r11
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB63_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%r9), %r15
	movq	(%rbx), %r12
	movq	%r15, 8(%r12,%rdx,8)
	leaq	(%rsi,%r11), %r15
	movq	(%rbx), %r12
	movq	%r15, 16(%r12,%rdx,8)
	leaq	(%rsi,%r10), %r15
	movq	(%rbx), %r12
	movq	%r15, 24(%r12,%rdx,8)
	addq	%r8, %rsi
	movq	(%rbx), %r15
	movq	%rsi, 32(%r15,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB63_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB63_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB63_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rsi,%rax,4), %rsi
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB63_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%rsi, (%rdi,%rdx,8)
	incq	%rdx
	addq	%rax, %rsi
	decq	%rcx
	jne	.LBB63_11
.LBB63_12:                              # %for.end
	movslq	%r14d, %rax
	shlq	$3, %rax
	addq	%rax, (%rbx)
	leal	8(,%r13,4), %eax
	imull	%ebp, %eax
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
.Lfunc_end63:
	.size	get_mem2DintWithPad, .Lfunc_end63-get_mem2DintWithPad
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dint64                  # -- Begin function get_mem2Dint64
	.p2align	4, 0x90
	.type	get_mem2Dint64,@function
get_mem2Dint64:                         # @get_mem2Dint64
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB64_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.57, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB64_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB64_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB64_5
	jmp	.LBB64_12
.LBB64_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.57, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB64_12
.LBB64_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB64_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB64_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB64_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB64_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB64_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB64_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB64_11
.LBB64_12:                              # %for.end
	leal	8(,%r14,8), %eax
	imull	%ebx, %eax
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
.Lfunc_end64:
	.size	get_mem2Dint64, .Lfunc_end64-get_mem2Dint64
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Ddistblk                # -- Begin function get_mem2Ddistblk
	.p2align	4, 0x90
	.type	get_mem2Ddistblk,@function
get_mem2Ddistblk:                       # @get_mem2Ddistblk
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB65_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.58, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB65_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB65_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB65_5
	jmp	.LBB65_12
.LBB65_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.58, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB65_12
.LBB65_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB65_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB65_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB65_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB65_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB65_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB65_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB65_11
.LBB65_12:                              # %for.end
	leal	8(,%r14,8), %eax
	imull	%ebx, %eax
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
.Lfunc_end65:
	.size	get_mem2Ddistblk, .Lfunc_end65-get_mem2Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3D                       # -- Begin function get_mem3D
	.p2align	4, 0x90
	.type	get_mem3D,@function
get_mem3D:                              # @get_mem3D
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB66_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.59, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB66_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2D
	cmpl	$2, %ebp
	jl	.LBB66_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB66_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB66_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB66_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB66_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB66_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB66_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB66_9
.LBB66_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end66:
	.size	get_mem3D, .Lfunc_end66-get_mem3D
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4D                       # -- Begin function get_mem4D
	.p2align	4, 0x90
	.type	get_mem4D,@function
get_mem4D:                              # @get_mem4D
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB67_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.60, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB67_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB67_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.59, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB67_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2D
	cmpl	$2, %r15d
	jl	.LBB67_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB67_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB67_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB67_7
# %bb.8:                                # %get_mem3D.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB67_9:                               # %get_mem3D.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB67_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB67_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB67_11
.LBB67_12:                              # %get_mem3D.exit
	cmpl	$2, %ebp
	jl	.LBB67_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB67_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB67_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB67_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB67_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB67_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB67_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB67_19
.LBB67_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end67:
	.size	get_mem4D, .Lfunc_end67-get_mem4D
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dint                    # -- Begin function get_mem3Dint
	.p2align	4, 0x90
	.type	get_mem3Dint,@function
get_mem3Dint:                           # @get_mem3Dint
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB68_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.61, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB68_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dint
	cmpl	$2, %ebp
	jl	.LBB68_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB68_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB68_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB68_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB68_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB68_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB68_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB68_9
.LBB68_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end68:
	.size	get_mem3Dint, .Lfunc_end68-get_mem3Dint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dint64                  # -- Begin function get_mem3Dint64
	.p2align	4, 0x90
	.type	get_mem3Dint64,@function
get_mem3Dint64:                         # @get_mem3Dint64
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB69_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.62, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB69_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dint64
	cmpl	$2, %ebp
	jl	.LBB69_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB69_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB69_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB69_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB69_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB69_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB69_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB69_9
.LBB69_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end69:
	.size	get_mem3Dint64, .Lfunc_end69-get_mem3Dint64
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Ddistblk                # -- Begin function get_mem3Ddistblk
	.p2align	4, 0x90
	.type	get_mem3Ddistblk,@function
get_mem3Ddistblk:                       # @get_mem3Ddistblk
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB70_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.63, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB70_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Ddistblk
	cmpl	$2, %ebp
	jl	.LBB70_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB70_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB70_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB70_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB70_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB70_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB70_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB70_9
.LBB70_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end70:
	.size	get_mem3Ddistblk, .Lfunc_end70-get_mem3Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dint                    # -- Begin function get_mem4Dint
	.p2align	4, 0x90
	.type	get_mem4Dint,@function
get_mem4Dint:                           # @get_mem4Dint
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB71_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.64, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB71_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB71_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.61, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB71_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dint
	cmpl	$2, %r15d
	jl	.LBB71_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB71_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB71_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB71_7
# %bb.8:                                # %get_mem3Dint.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB71_9:                               # %get_mem3Dint.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB71_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB71_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB71_11
.LBB71_12:                              # %get_mem3Dint.exit
	cmpl	$2, %ebp
	jl	.LBB71_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB71_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB71_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB71_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB71_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB71_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB71_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB71_19
.LBB71_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end71:
	.size	get_mem4Dint, .Lfunc_end71-get_mem4Dint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dint64                  # -- Begin function get_mem4Dint64
	.p2align	4, 0x90
	.type	get_mem4Dint64,@function
get_mem4Dint64:                         # @get_mem4Dint64
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB72_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.65, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB72_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB72_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.62, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB72_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dint64
	cmpl	$2, %r15d
	jl	.LBB72_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB72_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB72_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB72_7
# %bb.8:                                # %get_mem3Dint64.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB72_9:                               # %get_mem3Dint64.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB72_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB72_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB72_11
.LBB72_12:                              # %get_mem3Dint64.exit
	cmpl	$2, %ebp
	jl	.LBB72_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB72_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB72_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB72_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB72_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB72_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB72_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB72_19
.LBB72_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end72:
	.size	get_mem4Dint64, .Lfunc_end72-get_mem4Dint64
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Ddistblk                # -- Begin function get_mem4Ddistblk
	.p2align	4, 0x90
	.type	get_mem4Ddistblk,@function
get_mem4Ddistblk:                       # @get_mem4Ddistblk
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB73_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.66, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB73_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB73_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.63, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB73_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Ddistblk
	cmpl	$2, %r15d
	jl	.LBB73_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB73_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB73_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB73_7
# %bb.8:                                # %get_mem3Ddistblk.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB73_9:                               # %get_mem3Ddistblk.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB73_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB73_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB73_11
.LBB73_12:                              # %get_mem3Ddistblk.exit
	cmpl	$2, %ebp
	jl	.LBB73_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB73_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB73_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB73_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB73_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB73_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB73_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB73_19
.LBB73_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end73:
	.size	get_mem4Ddistblk, .Lfunc_end73-get_mem4Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5Dint                    # -- Begin function get_mem5Dint
	.p2align	4, 0x90
	.type	get_mem5Dint,@function
get_mem5Dint:                           # @get_mem5Dint
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB74_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.67, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB74_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem4Dint
	cmpl	$2, %ebp
	jl	.LBB74_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB74_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB74_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB74_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB74_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB74_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB74_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB74_9
.LBB74_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end74:
	.size	get_mem5Dint, .Lfunc_end74-get_mem5Dint
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2D                      # -- Begin function free_mem2D
	.p2align	4, 0x90
	.type	free_mem2D,@function
free_mem2D:                             # @free_mem2D
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB75_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB75_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB75_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.68, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB75_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.68, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end75:
	.size	free_mem2D, .Lfunc_end75-free_mem2D
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dint                   # -- Begin function free_mem2Dint
	.p2align	4, 0x90
	.type	free_mem2Dint,@function
free_mem2Dint:                          # @free_mem2Dint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB76_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB76_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB76_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.69, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB76_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.69, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end76:
	.size	free_mem2Dint, .Lfunc_end76-free_mem2Dint
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2DintWithPad            # -- Begin function free_mem2DintWithPad
	.p2align	4, 0x90
	.type	free_mem2DintWithPad,@function
free_mem2DintWithPad:                   # @free_mem2DintWithPad
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB77_5
# %bb.1:                                # %if.then
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	je	.LBB77_3
# %bb.2:                                # %if.then2
	negl	%esi
	movslq	%esi, %r14
	movq	(%rbx,%r14,8), %rdi
	movslq	%edx, %rax
	shlq	$2, %rax
	subq	%rax, %rdi
	callq	free@PLT
	jmp	.LBB77_4
.LBB77_5:                               # %if.else6
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	movl	$.L.str.70, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB77_3:                               # %if.else
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -24
	movl	$.L.str.70, %edi
	movl	%esi, %ebp
	movl	$100, %esi
	callq	error@PLT
	negl	%ebp
	movslq	%ebp, %r14
.LBB77_4:                               # %if.end
	leaq	(%rbx,%r14,8), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end77:
	.size	free_mem2DintWithPad, .Lfunc_end77-free_mem2DintWithPad
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dint64                 # -- Begin function free_mem2Dint64
	.p2align	4, 0x90
	.type	free_mem2Dint64,@function
free_mem2Dint64:                        # @free_mem2Dint64
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB78_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB78_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB78_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.71, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB78_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.71, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end78:
	.size	free_mem2Dint64, .Lfunc_end78-free_mem2Dint64
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3D                      # -- Begin function free_mem3D
	.p2align	4, 0x90
	.type	free_mem3D,@function
free_mem3D:                             # @free_mem3D
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB79_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB79_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB79_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB79_5
.LBB79_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.72, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB79_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.68, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB79_7
.LBB79_4:                               # %if.else.i
	movl	$.L.str.68, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB79_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB79_7:                               # %free_mem2D.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end79:
	.size	free_mem3D, .Lfunc_end79-free_mem3D
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4D                      # -- Begin function free_mem4D
	.p2align	4, 0x90
	.type	free_mem4D,@function
free_mem4D:                             # @free_mem4D
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB80_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB80_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB80_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB80_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB80_6
.LBB80_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.73, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB80_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.72, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB80_10
.LBB80_7:                               # %if.else3.i.i
	movl	$.L.str.68, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB80_8
.LBB80_5:                               # %if.else.i.i
	movl	$.L.str.68, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB80_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB80_8:                               # %free_mem2D.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB80_10:                              # %free_mem3D.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end80:
	.size	free_mem4D, .Lfunc_end80-free_mem4D
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dint                   # -- Begin function free_mem3Dint
	.p2align	4, 0x90
	.type	free_mem3Dint,@function
free_mem3Dint:                          # @free_mem3Dint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB81_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB81_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB81_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB81_5
.LBB81_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.74, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB81_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.69, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB81_7
.LBB81_4:                               # %if.else.i
	movl	$.L.str.69, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB81_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB81_7:                               # %free_mem2Dint.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end81:
	.size	free_mem3Dint, .Lfunc_end81-free_mem3Dint
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dint64                 # -- Begin function free_mem3Dint64
	.p2align	4, 0x90
	.type	free_mem3Dint64,@function
free_mem3Dint64:                        # @free_mem3Dint64
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB82_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB82_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB82_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB82_5
.LBB82_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.75, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB82_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.71, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB82_7
.LBB82_4:                               # %if.else.i
	movl	$.L.str.71, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB82_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB82_7:                               # %free_mem2Dint64.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end82:
	.size	free_mem3Dint64, .Lfunc_end82-free_mem3Dint64
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Ddistblk               # -- Begin function free_mem3Ddistblk
	.p2align	4, 0x90
	.type	free_mem3Ddistblk,@function
free_mem3Ddistblk:                      # @free_mem3Ddistblk
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB83_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB83_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB83_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB83_5
.LBB83_8:                               # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.76, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB83_6:                               # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.116, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB83_7
.LBB83_4:                               # %if.else.i
	movl	$.L.str.116, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB83_5:                               # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB83_7:                               # %free_mem2Ddistblk.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end83:
	.size	free_mem3Ddistblk, .Lfunc_end83-free_mem3Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Ddistblk               # -- Begin function free_mem2Ddistblk
	.p2align	4, 0x90
	.type	free_mem2Ddistblk,@function
free_mem2Ddistblk:                      # @free_mem2Ddistblk
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB84_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB84_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB84_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.116, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB84_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.116, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end84:
	.size	free_mem2Ddistblk, .Lfunc_end84-free_mem2Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dint                   # -- Begin function free_mem4Dint
	.p2align	4, 0x90
	.type	free_mem4Dint,@function
free_mem4Dint:                          # @free_mem4Dint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB85_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB85_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB85_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB85_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB85_6
.LBB85_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.77, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB85_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.74, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB85_10
.LBB85_7:                               # %if.else3.i.i
	movl	$.L.str.69, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB85_8
.LBB85_5:                               # %if.else.i.i
	movl	$.L.str.69, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB85_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB85_8:                               # %free_mem2Dint.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB85_10:                              # %free_mem3Dint.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end85:
	.size	free_mem4Dint, .Lfunc_end85-free_mem4Dint
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dint64                 # -- Begin function free_mem4Dint64
	.p2align	4, 0x90
	.type	free_mem4Dint64,@function
free_mem4Dint64:                        # @free_mem4Dint64
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB86_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB86_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB86_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB86_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB86_6
.LBB86_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.78, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB86_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.75, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB86_10
.LBB86_7:                               # %if.else3.i.i
	movl	$.L.str.71, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB86_8
.LBB86_5:                               # %if.else.i.i
	movl	$.L.str.71, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB86_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB86_8:                               # %free_mem2Dint64.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB86_10:                              # %free_mem3Dint64.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end86:
	.size	free_mem4Dint64, .Lfunc_end86-free_mem4Dint64
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Ddistblk               # -- Begin function free_mem4Ddistblk
	.p2align	4, 0x90
	.type	free_mem4Ddistblk,@function
free_mem4Ddistblk:                      # @free_mem4Ddistblk
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB87_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB87_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB87_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB87_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB87_6
.LBB87_11:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.79, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB87_9:                               # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.76, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB87_10
.LBB87_7:                               # %if.else3.i.i
	movl	$.L.str.116, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB87_8
.LBB87_5:                               # %if.else.i.i
	movl	$.L.str.116, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB87_6:                               # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB87_8:                               # %free_mem2Ddistblk.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB87_10:                              # %free_mem3Ddistblk.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end87:
	.size	free_mem4Ddistblk, .Lfunc_end87-free_mem4Ddistblk
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5Dint                   # -- Begin function free_mem5Dint
	.p2align	4, 0x90
	.type	free_mem5Dint,@function
free_mem5Dint:                          # @free_mem5Dint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB88_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4Dint
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB88_2:                               # %if.else
	.cfi_restore %rbx
	movl	$.L.str.80, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end88:
	.size	free_mem5Dint, .Lfunc_end88-free_mem5Dint
	.cfi_endproc
                                        # -- End function
	.globl	new_mem2Duint16                 # -- Begin function new_mem2Duint16
	.p2align	4, 0x90
	.type	new_mem2Duint16,@function
new_mem2Duint16:                        # @new_mem2Duint16
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
	movl	%esi, %r14d
	movl	%edi, %ebp
	movslq	%edi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB89_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.82, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB89_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB89_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebp
	jge	.LBB89_5
	jmp	.LBB89_12
.LBB89_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.82, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebp
	jl	.LBB89_12
.LBB89_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebp, %r8d
	movq	(%rbx), %rdx
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %ecx
	andl	$7, %ecx
	movl	$1, %esi
	cmpq	$7, %r8
	jb	.LBB89_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-8, %rdi
	movq	%rax, %r8
	shlq	$4, %r8
	leaq	(%rax,%rax), %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB89_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r10
	addq	%r9, %rdx
	movq	%rdx, 8(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 16(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 24(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 32(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 40(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 48(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 56(%rbx,%rsi,8)
	addq	%r9, %rdx
	movq	%rdx, 64(%rbx,%rsi,8)
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB89_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	addq	%r8, %r10
	incq	%rsi
	movq	%r10, %rdx
.LBB89_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB89_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rdx,%rax,2), %rdx
	addq	%rax, %rax
	leaq	(%rbx,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB89_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rsi,%rdi,8)
	incq	%rdi
	addq	%rax, %rdx
	cmpq	%rdi, %rcx
	jne	.LBB89_11
.LBB89_12:                              # %for.end
	movq	%rbx, %rax
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
.Lfunc_end89:
	.size	new_mem2Duint16, .Lfunc_end89-new_mem2Duint16
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Duint16                 # -- Begin function get_mem2Duint16
	.p2align	4, 0x90
	.type	get_mem2Duint16,@function
get_mem2Duint16:                        # @get_mem2Duint16
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB90_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.82, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB90_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB90_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB90_5
	jmp	.LBB90_12
.LBB90_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.82, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB90_12
.LBB90_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB90_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB90_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB90_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB90_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB90_12
# %bb.10:                               # %for.body.epil.preheader
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB90_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB90_11
.LBB90_12:                              # %for.end
	leal	8(,%r14,2), %eax
	imull	%ebx, %eax
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
.Lfunc_end90:
	.size	get_mem2Duint16, .Lfunc_end90-get_mem2Duint16
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Duint16                 # -- Begin function get_mem3Duint16
	.p2align	4, 0x90
	.type	get_mem3Duint16,@function
get_mem3Duint16:                        # @get_mem3Duint16
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB91_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.83, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB91_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Duint16
	cmpl	$2, %ebp
	jl	.LBB91_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB91_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB91_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB91_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB91_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB91_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB91_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB91_9
.LBB91_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end91:
	.size	get_mem3Duint16, .Lfunc_end91-get_mem3Duint16
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Duint16                 # -- Begin function get_mem4Duint16
	.p2align	4, 0x90
	.type	get_mem4Duint16,@function
get_mem4Duint16:                        # @get_mem4Duint16
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB92_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.84, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB92_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB92_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.83, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB92_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Duint16
	cmpl	$2, %r15d
	jl	.LBB92_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB92_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB92_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB92_7
# %bb.8:                                # %get_mem3Duint16.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB92_9:                               # %get_mem3Duint16.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB92_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB92_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB92_11
.LBB92_12:                              # %get_mem3Duint16.exit
	cmpl	$2, %ebp
	jl	.LBB92_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB92_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB92_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB92_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB92_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB92_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB92_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB92_19
.LBB92_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end92:
	.size	get_mem4Duint16, .Lfunc_end92-get_mem4Duint16
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dshort                  # -- Begin function get_mem2Dshort
	.p2align	4, 0x90
	.type	get_mem2Dshort,@function
get_mem2Dshort:                         # @get_mem2Dshort
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB93_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.85, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB93_2:                               # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB93_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB93_5
	jmp	.LBB93_12
.LBB93_3:                               # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.85, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB93_12
.LBB93_5:                               # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB93_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB93_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB93_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB93_9:                               # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB93_12
# %bb.10:                               # %for.body.epil.preheader
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB93_11:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB93_11
.LBB93_12:                              # %for.end
	leal	8(,%r14,2), %eax
	imull	%ebx, %eax
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
.Lfunc_end93:
	.size	get_mem2Dshort, .Lfunc_end93-get_mem2Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dshort                  # -- Begin function get_mem3Dshort
	.p2align	4, 0x90
	.type	get_mem3Dshort,@function
get_mem3Dshort:                         # @get_mem3Dshort
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB94_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.86, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB94_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	callq	get_mem2Dshort
	cmpl	$2, %ebp
	jl	.LBB94_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB94_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB94_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB94_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB94_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB94_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB94_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB94_9
.LBB94_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end94:
	.size	get_mem3Dshort, .Lfunc_end94-get_mem3Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem4Dshort                  # -- Begin function get_mem4Dshort
	.p2align	4, 0x90
	.type	get_mem4Dshort,@function
get_mem4Dshort:                         # @get_mem4Dshort
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
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB95_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.87, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB95_2:                               # %if.end
	movl	%r15d, 8(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB95_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.86, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB95_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	get_mem2Dshort
	cmpl	$2, %r15d
	jl	.LBB95_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB95_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB95_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB95_7
# %bb.8:                                # %get_mem3Dshort.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB95_9:                               # %get_mem3Dshort.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB95_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB95_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB95_11
.LBB95_12:                              # %get_mem3Dshort.exit
	cmpl	$2, %ebp
	jl	.LBB95_20
# %bb.13:                               # %for.body.lr.ph
	movslq	8(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB95_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB95_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB95_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB95_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB95_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB95_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB95_19
.LBB95_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end95:
	.size	get_mem4Dshort, .Lfunc_end95-get_mem4Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem5Dshort                  # -- Begin function get_mem5Dshort
	.p2align	4, 0x90
	.type	get_mem5Dshort,@function
get_mem5Dshort:                         # @get_mem5Dshort
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
	movl	%r9d, 4(%rsp)                   # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB96_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.88, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB96_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	4(%rsp), %r8d                   # 4-byte Reload
	callq	get_mem4Dshort
	cmpl	$2, %ebp
	jl	.LBB96_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB96_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB96_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB96_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB96_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB96_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB96_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB96_9
.LBB96_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end96:
	.size	get_mem5Dshort, .Lfunc_end96-get_mem5Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem6Dshort                  # -- Begin function get_mem6Dshort
	.p2align	4, 0x90
	.type	get_mem6Dshort,@function
get_mem6Dshort:                         # @get_mem6Dshort
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
	movl	%r9d, 12(%rsp)                  # 4-byte Spill
	movl	%r8d, 8(%rsp)                   # 4-byte Spill
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB97_2
# %bb.1:                                # %if.then
	movl	%r15d, %r13d
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.89, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	%r13d, %r15d
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %r13
.LBB97_2:                               # %if.end
	movl	%r15d, 4(%rsp)                  # 4-byte Spill
	imull	%ebp, %r15d
	movslq	%r15d, %rdi
	shlq	$3, %rdi
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	callq	malloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB97_4
# %bb.3:                                # %if.then.i
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.88, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r13), %rax
.LBB97_4:                               # %if.end.i
	movl	%r15d, %esi
	imull	%r12d, %esi
	movq	%rax, %rdi
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	80(%rsp), %r8d
	callq	get_mem4Dshort
	cmpl	$2, %r15d
	jl	.LBB97_12
# %bb.5:                                # %for.body.lr.ph.i
	movslq	%r12d, %rcx
	movl	%r15d, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB97_9
# %bb.6:                                # %for.body.lr.ph.i.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB97_7:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r13), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB97_7
# %bb.8:                                # %get_mem5Dshort.exit.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB97_9:                               # %get_mem5Dshort.exit.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB97_12
# %bb.10:                               # %for.body.i.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB97_11:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB97_11
.LBB97_12:                              # %get_mem5Dshort.exit
	cmpl	$2, %ebp
	jl	.LBB97_20
# %bb.13:                               # %for.body.lr.ph
	movslq	4(%rsp), %rcx                   # 4-byte Folded Reload
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB97_17
# %bb.14:                               # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB97_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB97_15
# %bb.16:                               # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB97_17:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB97_20
# %bb.18:                               # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB97_19:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB97_19
.LBB97_20:                              # %for.end
	addl	16(%rsp), %ebx                  # 4-byte Folded Reload
	addl	%eax, %ebx
	movl	%ebx, %eax
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
.Lfunc_end97:
	.size	get_mem6Dshort, .Lfunc_end97-get_mem6Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem7Dshort                  # -- Begin function get_mem7Dshort
	.p2align	4, 0x90
	.type	get_mem7Dshort,@function
get_mem7Dshort:                         # @get_mem7Dshort
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
	movl	%r9d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, %r13d
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB98_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.90, %ecx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB98_2:                               # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movl	88(%rsp), %ecx
	movl	%ecx, (%rsp)
	movq	%rax, %rdi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	movl	20(%rsp), %r8d                  # 4-byte Reload
	movl	80(%rsp), %r9d
	callq	get_mem6Dshort
	cmpl	$2, %ebp
	jl	.LBB98_10
# %bb.3:                                # %for.body.lr.ph
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	leaq	-1(%r8), %rdi
	addq	$-2, %r8
	movl	%edi, %edx
	andl	$3, %edx
	movl	$1, %esi
	cmpq	$3, %r8
	jb	.LBB98_7
# %bb.4:                                # %for.body.lr.ph.new
	andq	$-4, %rdi
	xorl	%esi, %esi
	leaq	(,%rcx,8), %r8
	.p2align	4, 0x90
.LBB98_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r9
	movq	(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 8(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	8(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 16(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	16(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 24(%r9,%rsi,8)
	movq	(%r14), %r9
	movq	24(%r9,%rsi,8), %r10
	addq	%r8, %r10
	movq	%r10, 32(%r9,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB98_5
# %bb.6:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rsi
.LBB98_7:                               # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB98_10
# %bb.8:                                # %for.body.epil.preheader
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB98_9:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	movq	-8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	incq	%rsi
	decq	%rdx
	jne	.LBB98_9
.LBB98_10:                              # %for.end
	addl	%ebx, %eax
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
.Lfunc_end98:
	.size	get_mem7Dshort, .Lfunc_end98-get_mem7Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Duint16                # -- Begin function free_mem2Duint16
	.p2align	4, 0x90
	.type	free_mem2Duint16,@function
free_mem2Duint16:                       # @free_mem2Duint16
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB99_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB99_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB99_5:                               # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.91, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB99_3:                               # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.91, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end99:
	.size	free_mem2Duint16, .Lfunc_end99-free_mem2Duint16
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Duint16                # -- Begin function free_mem3Duint16
	.p2align	4, 0x90
	.type	free_mem3Duint16,@function
free_mem3Duint16:                       # @free_mem3Duint16
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB100_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB100_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB100_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB100_5
.LBB100_8:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.92, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB100_6:                              # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.91, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB100_7
.LBB100_4:                              # %if.else.i
	movl	$.L.str.91, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB100_5:                              # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB100_7:                              # %free_mem2Duint16.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end100:
	.size	free_mem3Duint16, .Lfunc_end100-free_mem3Duint16
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Duint16                # -- Begin function free_mem4Duint16
	.p2align	4, 0x90
	.type	free_mem4Duint16,@function
free_mem4Duint16:                       # @free_mem4Duint16
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB101_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB101_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB101_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB101_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB101_6
.LBB101_11:                             # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.93, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB101_9:                              # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.92, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB101_10
.LBB101_7:                              # %if.else3.i.i
	movl	$.L.str.91, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB101_8
.LBB101_5:                              # %if.else.i.i
	movl	$.L.str.91, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB101_6:                              # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB101_8:                              # %free_mem2Duint16.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB101_10:                             # %free_mem3Duint16.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end101:
	.size	free_mem4Duint16, .Lfunc_end101-free_mem4Duint16
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dshort                 # -- Begin function free_mem2Dshort
	.p2align	4, 0x90
	.type	free_mem2Dshort,@function
free_mem2Dshort:                        # @free_mem2Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB102_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB102_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB102_5:                              # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.94, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB102_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.94, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end102:
	.size	free_mem2Dshort, .Lfunc_end102-free_mem2Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dshort                 # -- Begin function free_mem3Dshort
	.p2align	4, 0x90
	.type	free_mem3Dshort,@function
free_mem3Dshort:                        # @free_mem3Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB103_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB103_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB103_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB103_5
.LBB103_8:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.95, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB103_6:                              # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.94, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB103_7
.LBB103_4:                              # %if.else.i
	movl	$.L.str.94, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB103_5:                              # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB103_7:                              # %free_mem2Dshort.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end103:
	.size	free_mem3Dshort, .Lfunc_end103-free_mem3Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem4Dshort                 # -- Begin function free_mem4Dshort
	.p2align	4, 0x90
	.type	free_mem4Dshort,@function
free_mem4Dshort:                        # @free_mem4Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB104_11
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB104_9
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB104_7
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB104_5
# %bb.4:                                # %if.then2.i.i
	callq	free@PLT
	jmp	.LBB104_6
.LBB104_11:                             # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.96, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB104_9:                              # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.95, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB104_10
.LBB104_7:                              # %if.else3.i.i
	movl	$.L.str.94, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB104_8
.LBB104_5:                              # %if.else.i.i
	movl	$.L.str.94, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB104_6:                              # %if.end.i.i
	movq	%r15, %rdi
	callq	free@PLT
.LBB104_8:                              # %free_mem2Dshort.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB104_10:                             # %free_mem3Dshort.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end104:
	.size	free_mem4Dshort, .Lfunc_end104-free_mem4Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem5Dshort                 # -- Begin function free_mem5Dshort
	.p2align	4, 0x90
	.type	free_mem5Dshort,@function
free_mem5Dshort:                        # @free_mem5Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB105_2
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free_mem4Dshort
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB105_2:                              # %if.else
	.cfi_restore %rbx
	movl	$.L.str.97, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end105:
	.size	free_mem5Dshort, .Lfunc_end105-free_mem5Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem6Dshort                 # -- Begin function free_mem6Dshort
	.p2align	4, 0x90
	.type	free_mem6Dshort,@function
free_mem6Dshort:                        # @free_mem6Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB106_5
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB106_3
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	callq	free_mem4Dshort
	movq	%r14, %rdi
	callq	free@PLT
	jmp	.LBB106_4
.LBB106_5:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.98, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB106_3:                              # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.97, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB106_4:                              # %free_mem5Dshort.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end106:
	.size	free_mem6Dshort, .Lfunc_end106-free_mem6Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem7Dshort                 # -- Begin function free_mem7Dshort
	.p2align	4, 0x90
	.type	free_mem7Dshort,@function
free_mem7Dshort:                        # @free_mem7Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB107_8
# %bb.1:                                # %if.then
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
	testq	%r14, %r14
	je	.LBB107_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %r15
	testq	%r15, %r15
	je	.LBB107_4
# %bb.3:                                # %if.then.i.i
	movq	(%r15), %rdi
	callq	free_mem4Dshort
	movq	%r15, %rdi
	callq	free@PLT
	jmp	.LBB107_5
.LBB107_8:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.99, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB107_6:                              # %if.else.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$.L.str.98, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB107_7
.LBB107_4:                              # %if.else.i.i
	movl	$.L.str.97, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB107_5:                              # %free_mem5Dshort.exit.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB107_7:                              # %free_mem6Dshort.exit
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end107:
	.size	free_mem7Dshort, .Lfunc_end107-free_mem7Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Ddouble                 # -- Begin function get_mem2Ddouble
	.p2align	4, 0x90
	.type	get_mem2Ddouble,@function
get_mem2Ddouble:                        # @get_mem2Ddouble
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
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB108_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.100, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB108_2:                              # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	je	.LBB108_3
# %bb.4:                                # %if.end8
	cmpl	$2, %ebx
	jge	.LBB108_5
	jmp	.LBB108_12
.LBB108_3:                              # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.100, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	cmpl	$2, %ebx
	jl	.LBB108_12
.LBB108_5:                              # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB108_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB108_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB108_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB108_9:                              # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB108_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB108_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB108_11
.LBB108_12:                             # %for.end
	leal	8(,%r14,8), %eax
	imull	%ebx, %eax
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
.Lfunc_end108:
	.size	get_mem2Ddouble, .Lfunc_end108-get_mem2Ddouble
	.cfi_endproc
                                        # -- End function
	.globl	get_mem1Dodouble                # -- Begin function get_mem1Dodouble
	.p2align	4, 0x90
	.type	get_mem1Dodouble,@function
get_mem1Dodouble:                       # @get_mem1Dodouble
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
	movl	%edx, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB109_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r15
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.101, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r14), %rax
.LBB109_2:                              # %if.end
	movslq	%ebp, %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, (%r14)
	movl	%ebx, %eax
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
.Lfunc_end109:
	.size	get_mem1Dodouble, .Lfunc_end109-get_mem1Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dodouble                # -- Begin function get_mem2Dodouble
	.p2align	4, 0x90
	.type	get_mem2Dodouble,@function
get_mem2Dodouble:                       # @get_mem2Dodouble
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
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB110_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.102, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB110_2:                              # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB110_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.102, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB110_4:                              # %if.end8
	movq	(%r15), %rax
	movslq	%ebp, %rcx
	shlq	$3, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebx
	jl	.LBB110_12
# %bb.5:                                # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB110_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB110_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB110_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB110_9:                              # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB110_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB110_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB110_11
.LBB110_12:                             # %for.end
	leal	8(,%r14,8), %eax
	imull	%ebx, %eax
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
.Lfunc_end110:
	.size	get_mem2Dodouble, .Lfunc_end110-get_mem2Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Dodouble                # -- Begin function get_mem3Dodouble
	.p2align	4, 0x90
	.type	get_mem3Dodouble,@function
get_mem3Dodouble:                       # @get_mem3Dodouble
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB111_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.103, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r13
.LBB111_2:                              # %if.end
	movl	%ebp, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB111_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.103, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB111_4:                              # %if.end8
	movq	(%r15), %rax
	movslq	%r12d, %rcx
	shlq	$3, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebx
	jl	.LBB111_12
# %bb.5:                                # %for.body.lr.ph
	movslq	%ebp, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB111_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB111_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB111_7
# %bb.8:                                # %for.cond17.preheader.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB111_9:                              # %for.cond17.preheader.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB111_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB111_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB111_11
.LBB111_12:                             # %for.cond17.preheader
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movl	%ebx, 12(%rsp)                  # 4-byte Spill
	testl	%ebx, %ebx
	jle	.LBB111_20
# %bb.13:                               # %for.body20.lr.ph
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB111_20
# %bb.14:                               # %for.body20.us.preheader
	movslq	16(%rsp), %r13                  # 4-byte Folded Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	subl	%r12d, %eax
	negl	%r12d
	movslq	%r12d, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movslq	%eax, %rbp
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	errortext@GOTPCREL(%rip), %r12
	xorl	%r14d, %r14d
	jmp	.LBB111_15
	.p2align	4, 0x90
.LBB111_19:                             # %for.cond22.for.inc40_crit_edge.us
                                        #   in Loop: Header=BB111_15 Depth=1
	incq	%r14
	cmpq	24(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB111_20
.LBB111_15:                             # %for.body20.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB111_16 Depth 2
	movq	32(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB111_16
	.p2align	4, 0x90
.LBB111_18:                             # %for.inc37.us
                                        #   in Loop: Header=BB111_16 Depth=2
	incq	%rbx
	cmpq	%rbp, %rbx
	jge	.LBB111_19
.LBB111_16:                             # %for.body26.us
                                        #   Parent Loop BB111_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %esi
	movq	%r13, %rdi
	callq	calloc@PLT
	movq	(%r15), %rcx
	movq	(%rcx,%r14,8), %rcx
	movq	%rax, (%rcx,%rbx,8)
	testq	%rax, %rax
	jne	.LBB111_18
# %bb.17:                               # %if.then35.us
                                        #   in Loop: Header=BB111_16 Depth=2
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.103, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB111_18
.LBB111_20:                             # %for.end42
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	8(,%rax,8), %eax
	imull	8(%rsp), %eax                   # 4-byte Folded Reload
	addl	$8, %eax
	imull	12(%rsp), %eax                  # 4-byte Folded Reload
	addq	$40, %rsp
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
.Lfunc_end111:
	.size	get_mem3Dodouble, .Lfunc_end111-get_mem3Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	get_offset_mem2Dshort           # -- Begin function get_offset_mem2Dshort
	.p2align	4, 0x90
	.type	get_offset_mem2Dshort,@function
get_offset_mem2Dshort:                  # @get_offset_mem2Dshort
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
	movl	%r8d, %r12d
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB112_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.104, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r13
.LBB112_2:                              # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$2, %esi
	callq	calloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB112_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.104, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB112_4:                              # %if.end8
	movl	%ebp, %eax
	imull	%r14d, %eax
	addl	%r12d, %eax
	movq	(%r15), %rcx
	cltq
	addq	%rax, %rax
	addq	%rax, (%rcx)
	movslq	%r14d, %rax
	testl	%ebp, %ebp
	jle	.LBB112_7
# %bb.5:                                # %for.body.lr.ph
	movl	%ebp, %edx
	notl	%edx
	movq	%rax, %rcx
	negq	%rcx
	movslq	%edx, %rdx
	movq	$-1, %rsi
	addq	%rcx, %rcx
	.p2align	4, 0x90
.LBB112_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movq	8(%rdi,%rsi,8), %r8
	addq	%rcx, %r8
	movq	%r8, (%rdi,%rsi,8)
	decq	%rsi
	cmpq	%rdx, %rsi
	jg	.LBB112_6
.LBB112_7:                              # %for.cond20.preheader
	movl	%r14d, %ecx
	subl	%ebp, %ecx
	cmpl	$2, %ecx
	jl	.LBB112_15
# %bb.8:                                # %for.body24.lr.ph
	movl	%ecx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB112_12
# %bb.9:                                # %for.body24.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(%rax,%rax), %rdi
	.p2align	4, 0x90
.LBB112_10:                             # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB112_10
# %bb.11:                               # %for.end33.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB112_12:                             # %for.end33.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB112_15
# %bb.13:                               # %for.body24.epil.preheader
	addq	%rax, %rax
	.p2align	4, 0x90
.LBB112_14:                             # %for.body24.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB112_14
.LBB112_15:                             # %for.end33
	leal	8(,%r14,2), %eax
	imull	%ebx, %eax
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
.Lfunc_end112:
	.size	get_offset_mem2Dshort, .Lfunc_end112-get_offset_mem2Dshort
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Doint                   # -- Begin function get_mem3Doint
	.p2align	4, 0x90
	.type	get_mem3Doint,@function
get_mem3Doint:                          # @get_mem3Doint
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r12d
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, %ebp
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB113_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.105, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r13
.LBB113_2:                              # %if.end
	movl	%ebp, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, (%r13)
	testq	%rax, %rax
	jne	.LBB113_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.105, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB113_4:                              # %if.end8
	movq	(%r15), %rax
	movslq	%r12d, %rcx
	shlq	$3, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebx
	jl	.LBB113_12
# %bb.5:                                # %for.body.lr.ph
	movslq	%ebp, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB113_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,8), %rdi
	.p2align	4, 0x90
.LBB113_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB113_7
# %bb.8:                                # %for.cond17.preheader.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB113_9:                              # %for.cond17.preheader.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB113_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$3, %rax
	.p2align	4, 0x90
.LBB113_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB113_11
.LBB113_12:                             # %for.cond17.preheader
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movl	%ebx, 12(%rsp)                  # 4-byte Spill
	testl	%ebx, %ebx
	jle	.LBB113_20
# %bb.13:                               # %for.body20.lr.ph
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB113_20
# %bb.14:                               # %for.body20.us.preheader
	movslq	16(%rsp), %r13                  # 4-byte Folded Reload
	movl	8(%rsp), %eax                   # 4-byte Reload
	subl	%r12d, %eax
	negl	%r12d
	movslq	%r12d, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movslq	%eax, %rbp
	movl	12(%rsp), %eax                  # 4-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	errortext@GOTPCREL(%rip), %r12
	xorl	%r14d, %r14d
	jmp	.LBB113_15
	.p2align	4, 0x90
.LBB113_19:                             # %for.cond22.for.inc40_crit_edge.us
                                        #   in Loop: Header=BB113_15 Depth=1
	incq	%r14
	cmpq	24(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB113_20
.LBB113_15:                             # %for.body20.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB113_16 Depth 2
	movq	32(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB113_16
	.p2align	4, 0x90
.LBB113_18:                             # %for.inc37.us
                                        #   in Loop: Header=BB113_16 Depth=2
	incq	%rbx
	cmpq	%rbp, %rbx
	jge	.LBB113_19
.LBB113_16:                             # %for.body26.us
                                        #   Parent Loop BB113_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$4, %esi
	movq	%r13, %rdi
	callq	calloc@PLT
	movq	(%r15), %rcx
	movq	(%rcx,%r14,8), %rcx
	movq	%rax, (%rcx,%rbx,8)
	testq	%rax, %rax
	jne	.LBB113_18
# %bb.17:                               # %if.then35.us
                                        #   in Loop: Header=BB113_16 Depth=2
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.105, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB113_18
.LBB113_20:                             # %for.end42
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	8(,%rax,4), %eax
	imull	8(%rsp), %eax                   # 4-byte Folded Reload
	addl	$8, %eax
	imull	12(%rsp), %eax                  # 4-byte Folded Reload
	addq	$40, %rsp
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
.Lfunc_end113:
	.size	get_mem3Doint, .Lfunc_end113-get_mem3Doint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Doint                   # -- Begin function get_mem2Doint
	.p2align	4, 0x90
	.type	get_mem2Doint,@function
get_mem2Doint:                          # @get_mem2Doint
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
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB114_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB114_2:                              # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB114_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.55, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB114_4:                              # %if.end8
	movq	(%r15), %rax
	movslq	%ebp, %rcx
	shlq	$2, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebx
	jl	.LBB114_12
# %bb.5:                                # %for.body.lr.ph
	movslq	%r14d, %rax
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %ecx
	andl	$3, %ecx
	movl	$1, %edx
	cmpq	$3, %rdi
	jb	.LBB114_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%edx, %edx
	leaq	(,%rax,4), %rdi
	.p2align	4, 0x90
.LBB114_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rdx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rdx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB114_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rdx
.LBB114_9:                              # %for.end.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB114_12
# %bb.10:                               # %for.body.epil.preheader
	shlq	$2, %rax
	.p2align	4, 0x90
.LBB114_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rdx,8), %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rsi,%rdx,8)
	incq	%rdx
	decq	%rcx
	jne	.LBB114_11
.LBB114_12:                             # %for.end
	leal	8(,%r14,4), %eax
	imull	%ebx, %eax
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
.Lfunc_end114:
	.size	get_mem2Doint, .Lfunc_end114-get_mem2Doint
	.cfi_endproc
                                        # -- End function
	.globl	get_mem3Ddouble                 # -- Begin function get_mem3Ddouble
	.p2align	4, 0x90
	.type	get_mem3Ddouble,@function
get_mem3Ddouble:                        # @get_mem3Ddouble
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
	movl	%ecx, %r12d
	movl	%edx, %r15d
	movl	%esi, %ebp
	movq	%rdi, %r14
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc@PLT
	movq	%rax, (%r14)
	testq	%rax, %rax
	jne	.LBB115_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r13
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.106, %ecx
	movq	%r13, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB115_2:                              # %if.end
	movl	%r15d, %esi
	imull	%ebp, %esi
	movq	%rsp, %rdi
	movl	%r12d, %edx
	callq	get_mem2Ddouble
	testl	%ebp, %ebp
	jle	.LBB115_10
# %bb.3:                                # %for.body.lr.ph
	movq	(%rsp), %rdi
	movslq	%r15d, %rcx
	movl	%ebp, %r8d
	movl	%r8d, %edx
	andl	$3, %edx
	cmpl	$4, %ebp
	jae	.LBB115_5
# %bb.4:
	xorl	%esi, %esi
	jmp	.LBB115_7
.LBB115_5:                              # %for.body.lr.ph.new
	andl	$2147483644, %r8d               # imm = 0x7FFFFFFC
	leaq	(,%rcx,8), %r9
	leaq	(%r9,%r9,2), %r10
	movq	%rcx, %r11
	shlq	$5, %r11
	movq	%rcx, %r15
	shlq	$4, %r15
	xorl	%esi, %esi
	movq	%rdi, %r12
	.p2align	4, 0x90
.LBB115_6:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r13
	movq	%r12, (%r13,%rsi,8)
	leaq	(%r12,%r9), %r13
	movq	(%r14), %rbp
	movq	%r13, 8(%rbp,%rsi,8)
	leaq	(%r12,%r15), %r13
	movq	(%r14), %rbp
	movq	%r13, 16(%rbp,%rsi,8)
	leaq	(%r12,%r10), %r13
	movq	(%r14), %rbp
	movq	%r13, 24(%rbp,%rsi,8)
	addq	$4, %rsi
	addq	%r11, %r12
	cmpq	%rsi, %r8
	jne	.LBB115_6
.LBB115_7:                              # %for.end.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB115_10
# %bb.8:                                # %for.body.epil.preheader
	movq	%rsi, %r8
	imulq	%rcx, %r8
	leaq	(%rdi,%r8,8), %rdi
	shlq	$3, %rcx
	.p2align	4, 0x90
.LBB115_9:                              # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r8
	movq	%rdi, (%r8,%rsi,8)
	incq	%rsi
	addq	%rcx, %rdi
	decq	%rdx
	jne	.LBB115_9
.LBB115_10:                             # %for.end
	addl	%ebx, %eax
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
.Lfunc_end115:
	.size	get_mem3Ddouble, .Lfunc_end115-get_mem3Ddouble
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Ddouble                # -- Begin function free_mem2Ddouble
	.p2align	4, 0x90
	.type	free_mem2Ddouble,@function
free_mem2Ddouble:                       # @free_mem2Ddouble
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB116_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB116_3
# %bb.2:                                # %if.then2
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB116_5:                              # %if.else3
	.cfi_restore %rbx
	movl	$.L.str.107, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB116_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.107, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end116:
	.size	free_mem2Ddouble, .Lfunc_end116-free_mem2Ddouble
	.cfi_endproc
                                        # -- End function
	.globl	free_mem1Dodouble               # -- Begin function free_mem1Dodouble
	.p2align	4, 0x90
	.type	free_mem1Dodouble,@function
free_mem1Dodouble:                      # @free_mem1Dodouble
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB117_2
# %bb.1:                                # %if.then
	movslq	%esi, %rax
	shlq	$3, %rax
	subq	%rax, %rdi
	jmp	free@PLT                        # TAILCALL
.LBB117_2:                              # %if.else
	movl	$.L.str.108, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.Lfunc_end117:
	.size	free_mem1Dodouble, .Lfunc_end117-free_mem1Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dodouble               # -- Begin function free_mem2Dodouble
	.p2align	4, 0x90
	.type	free_mem2Dodouble,@function
free_mem2Dodouble:                      # @free_mem2Dodouble
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB118_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$3, %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB118_3
# %bb.2:                                # %if.then3
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB118_5:                              # %if.else5
	.cfi_restore %rbx
	movl	$.L.str.109, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB118_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.109, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end118:
	.size	free_mem2Dodouble, .Lfunc_end118-free_mem2Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Dodouble               # -- Begin function free_mem3Dodouble
	.p2align	4, 0x90
	.type	free_mem3Dodouble,@function
free_mem3Dodouble:                      # @free_mem3Dodouble
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB119_13
# %bb.1:                                # %for.cond.preheader
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
	movq	%rdi, %rbx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	testl	%esi, %esi
	setle	%al
	testl	%edx, %edx
	setle	%cl
	orb	%al, %cl
	jne	.LBB119_9
# %bb.2:                                # %for.body.us.preheader
	movl	4(%rsp), %eax                   # 4-byte Reload
	subl	%eax, %edx
	negl	%eax
	movslq	%eax, %rbp
	movslq	%edx, %r15
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB119_3
	.p2align	4, 0x90
.LBB119_8:                              # %for.cond1.for.inc13_crit_edge.us
                                        #   in Loop: Header=BB119_3 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	je	.LBB119_9
.LBB119_3:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB119_4 Depth 2
	movq	%rbp, %r14
	jmp	.LBB119_4
	.p2align	4, 0x90
.LBB119_6:                              # %if.else.us
                                        #   in Loop: Header=BB119_4 Depth=2
	movl	$.L.str.110, %edi
	movl	$100, %esi
	callq	error@PLT
	incq	%r14
	cmpq	%r15, %r14
	jge	.LBB119_8
.LBB119_4:                              # %for.body4.us
                                        #   Parent Loop BB119_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r13,8), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB119_6
# %bb.5:                                # %if.then8.us
                                        #   in Loop: Header=BB119_4 Depth=2
	callq	free@PLT
	incq	%r14
	cmpq	%r15, %r14
	jl	.LBB119_4
	jmp	.LBB119_8
.LBB119_9:                              # %for.end15
	movq	(%rbx), %rax
	movslq	4(%rsp), %rcx                   # 4-byte Folded Reload
	shlq	$3, %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB119_11
# %bb.10:                               # %if.then19
	callq	free@PLT
	jmp	.LBB119_12
.LBB119_13:                             # %if.else23
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.110, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB119_11:                             # %if.else21
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$.L.str.110, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB119_12:                             # %if.end22
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end119:
	.size	free_mem3Dodouble, .Lfunc_end119-free_mem3Dodouble
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Doint                  # -- Begin function free_mem3Doint
	.p2align	4, 0x90
	.type	free_mem3Doint,@function
free_mem3Doint:                         # @free_mem3Doint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB120_13
# %bb.1:                                # %for.cond.preheader
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
	movq	%rdi, %rbx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	testl	%esi, %esi
	setle	%al
	testl	%edx, %edx
	setle	%cl
	orb	%al, %cl
	jne	.LBB120_9
# %bb.2:                                # %for.body.us.preheader
	movl	4(%rsp), %eax                   # 4-byte Reload
	subl	%eax, %edx
	negl	%eax
	movslq	%eax, %rbp
	movslq	%edx, %r15
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB120_3
	.p2align	4, 0x90
.LBB120_8:                              # %for.cond1.for.inc13_crit_edge.us
                                        #   in Loop: Header=BB120_3 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	je	.LBB120_9
.LBB120_3:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB120_4 Depth 2
	movq	%rbp, %r14
	jmp	.LBB120_4
	.p2align	4, 0x90
.LBB120_6:                              # %if.else.us
                                        #   in Loop: Header=BB120_4 Depth=2
	movl	$.L.str.111, %edi
	movl	$100, %esi
	callq	error@PLT
	incq	%r14
	cmpq	%r15, %r14
	jge	.LBB120_8
.LBB120_4:                              # %for.body4.us
                                        #   Parent Loop BB120_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r13,8), %rax
	movq	(%rax,%r14,8), %rdi
	testq	%rdi, %rdi
	je	.LBB120_6
# %bb.5:                                # %if.then8.us
                                        #   in Loop: Header=BB120_4 Depth=2
	callq	free@PLT
	incq	%r14
	cmpq	%r15, %r14
	jl	.LBB120_4
	jmp	.LBB120_8
.LBB120_9:                              # %for.end15
	movq	(%rbx), %rax
	movslq	4(%rsp), %rcx                   # 4-byte Folded Reload
	shlq	$3, %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB120_11
# %bb.10:                               # %if.then19
	callq	free@PLT
	jmp	.LBB120_12
.LBB120_13:                             # %if.else23
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.111, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB120_11:                             # %if.else21
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$.L.str.111, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB120_12:                             # %if.end22
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end120:
	.size	free_mem3Doint, .Lfunc_end120-free_mem3Doint
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Doint                  # -- Begin function free_mem2Doint
	.p2align	4, 0x90
	.type	free_mem2Doint,@function
free_mem2Doint:                         # @free_mem2Doint
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB121_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movslq	%esi, %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB121_3
# %bb.2:                                # %if.then3
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB121_5:                              # %if.else5
	.cfi_restore %rbx
	movl	$.L.str.112, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB121_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.112, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end121:
	.size	free_mem2Doint, .Lfunc_end121-free_mem2Doint
	.cfi_endproc
                                        # -- End function
	.globl	free_offset_mem2Dshort          # -- Begin function free_offset_mem2Dshort
	.p2align	4, 0x90
	.type	free_offset_mem2Dshort,@function
free_offset_mem2Dshort:                 # @free_offset_mem2Dshort
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB122_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	imull	%esi, %edx
	addl	%ecx, %edx
	movq	(%rdi), %rax
	movslq	%edx, %rcx
	addq	%rcx, %rcx
	movq	%rax, %rdi
	subq	%rcx, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB122_3
# %bb.2:                                # %if.then3
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB122_5:                              # %if.else5
	.cfi_restore %rbx
	movl	$.L.str.113, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB122_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.113, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end122:
	.size	free_offset_mem2Dshort, .Lfunc_end122-free_offset_mem2Dshort
	.cfi_endproc
                                        # -- End function
	.globl	free_mem3Ddouble                # -- Begin function free_mem3Ddouble
	.p2align	4, 0x90
	.type	free_mem3Ddouble,@function
free_mem3Ddouble:                       # @free_mem3Ddouble
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB123_8
# %bb.1:                                # %if.then
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	testq	%r14, %r14
	je	.LBB123_6
# %bb.2:                                # %if.then.i
	movq	(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB123_4
# %bb.3:                                # %if.then2.i
	callq	free@PLT
	jmp	.LBB123_5
.LBB123_8:                              # %if.else
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	movl	$.L.str.72, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB123_6:                              # %if.else3.i
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.107, %edi
	movl	$100, %esi
	callq	error@PLT
	jmp	.LBB123_7
.LBB123_4:                              # %if.else.i
	movl	$.L.str.107, %edi
	movl	$100, %esi
	callq	error@PLT
.LBB123_5:                              # %if.end.i
	movq	%r14, %rdi
	callq	free@PLT
.LBB123_7:                              # %free_mem2Ddouble.exit
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end123:
	.size	free_mem3Ddouble, .Lfunc_end123-free_mem3Ddouble
	.cfi_endproc
                                        # -- End function
	.globl	get_mem2Dolm                    # -- Begin function get_mem2Dolm
	.p2align	4, 0x90
	.type	get_mem2Dolm,@function
get_mem2Dolm:                           # @get_mem2Dolm
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
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movl	%esi, %ebx
	movq	%rdi, %r15
	movslq	%esi, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	movq	%rax, %r12
	movq	%rax, (%r15)
	testq	%rax, %rax
	jne	.LBB124_2
# %bb.1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.114, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
	movq	(%r15), %r12
.LBB124_2:                              # %if.end
	movl	%r14d, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	movl	$48, %esi
	callq	calloc@PLT
	movq	%rax, (%r12)
	testq	%rax, %rax
	jne	.LBB124_4
# %bb.3:                                # %if.then7
	movq	errortext@GOTPCREL(%rip), %r12
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.81, %edx
	movl	$.L.str.114, %ecx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r12, %rdi
	movl	$100, %esi
	callq	error@PLT
.LBB124_4:                              # %if.end8
	movq	(%r15), %rax
	movslq	%ebp, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$4, %rcx
	addq	%rcx, (%rax)
	cmpl	$2, %ebx
	jl	.LBB124_12
# %bb.5:                                # %for.body.lr.ph
	movslq	%r14d, %rdx
	movl	%ebx, %edi
	leaq	-1(%rdi), %rsi
	addq	$-2, %rdi
	movl	%esi, %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpq	$3, %rdi
	jb	.LBB124_9
# %bb.6:                                # %for.body.lr.ph.new
	andq	$-4, %rsi
	xorl	%ecx, %ecx
	movq	%rdx, %rdi
	shlq	$4, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	.p2align	4, 0x90
.LBB124_7:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r8
	movq	(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 8(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	8(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 16(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	16(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 24(%r8,%rcx,8)
	movq	(%r15), %r8
	movq	24(%r8,%rcx,8), %r9
	addq	%rdi, %r9
	movq	%r9, 32(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB124_7
# %bb.8:                                # %for.end.loopexit.unr-lcssa.loopexit
	incq	%rcx
.LBB124_9:                              # %for.end.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB124_12
# %bb.10:                               # %for.body.epil.preheader
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$4, %rdx
	.p2align	4, 0x90
.LBB124_11:                             # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	-8(%rsi,%rcx,8), %rdi
	addq	%rdx, %rdi
	movq	%rdi, (%rsi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB124_11
.LBB124_12:                             # %for.end
	shll	$4, %r14d
	leal	(%r14,%r14,2), %eax
	addl	$8, %eax
	imull	%ebx, %eax
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
.Lfunc_end124:
	.size	get_mem2Dolm, .Lfunc_end124-get_mem2Dolm
	.cfi_endproc
                                        # -- End function
	.globl	free_mem2Dolm                   # -- Begin function free_mem2Dolm
	.p2align	4, 0x90
	.type	free_mem2Dolm,@function
free_mem2Dolm:                          # @free_mem2Dolm
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB125_5
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movslq	%esi, %rcx
	negq	%rcx
	leaq	(%rcx,%rcx,2), %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	movq	%rdi, (%rbx)
	testq	%rax, %rax
	je	.LBB125_3
# %bb.2:                                # %if.then3
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.LBB125_5:                              # %if.else5
	.cfi_restore %rbx
	movl	$.L.str.115, %edi
	movl	$100, %esi
	jmp	error@PLT                       # TAILCALL
.LBB125_3:                              # %if.else
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.115, %edi
	movl	$100, %esi
	callq	error@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end125:
	.size	free_mem2Dolm, .Lfunc_end125-free_mem2Dolm
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_top_bot_planes: imgTopField"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_top_bot_planes: imgBotField"
	.size	.L.str.1, 33

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"get_mem2Ddist: array2D"
	.size	.L.str.2, 23

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"get_mem2Dlm: array2D"
	.size	.L.str.3, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"free_mem2Ddist: trying to free unused memory"
	.size	.L.str.4, 45

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"free_mem2Dlm: trying to free unused memory"
	.size	.L.str.5, 43

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"get_mem2Dmv: array2D"
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"get_mem2Dmp: array2D"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"get_mem3Dmp: array3D"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"free_mem2Dmp: trying to free unused memory"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"free_mem3Dmp: trying to free unused memory"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"get_mem2Dquant: array2D"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"get_mem3Dquant: array3D"
	.size	.L.str.12, 24

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"get_mem4Dquant: array4D"
	.size	.L.str.13, 24

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"get_mem5Dquant: array5D"
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"free_mem2Dquant: trying to free unused memory"
	.size	.L.str.15, 46

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"free_mem3Dquant: trying to free unused memory"
	.size	.L.str.16, 46

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"free_mem4Dquant: trying to free unused memory"
	.size	.L.str.17, 46

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"free_mem5Dquant: trying to free unused memory"
	.size	.L.str.18, 46

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"get_mem2D_spp: array2D"
	.size	.L.str.19, 23

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"get_mem3D_spp: array3D"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"get_mem3Dmv: array3D"
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"get_mem4Dpel: array4D"
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"get_mem5Dpel: array5D"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"get_mem5Dpel: array6D"
	.size	.L.str.24, 22

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"get_mem7Dmv: array7D"
	.size	.L.str.25, 21

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"free_mem2D_spp: trying to free unused memory"
	.size	.L.str.26, 45

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"free_mem3D_spp: trying to free unused memory"
	.size	.L.str.27, 45

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"free_mem2Dmv: trying to free unused memory"
	.size	.L.str.28, 43

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"free_mem3Dmv: trying to free unused memory"
	.size	.L.str.29, 43

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"free_mem4Dmv: trying to free unused memory"
	.size	.L.str.30, 43

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"free_mem5Dmv: trying to free unused memory"
	.size	.L.str.31, 43

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"free_mem6Dmv: trying to free unused memory"
	.size	.L.str.32, 43

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"free_mem7Dmv: trying to free unused memory"
	.size	.L.str.33, 43

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"get_mem1Dpel: arra12D"
	.size	.L.str.34, 22

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"get_mem2Dpel: array2D"
	.size	.L.str.35, 22

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"get_mem2DpelWithPad: array2D"
	.size	.L.str.36, 29

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"get_mem3Dpel: array3D"
	.size	.L.str.37, 22

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"get_mem3DpelWithPad: array3D"
	.size	.L.str.38, 29

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"get_mem3DpelWithPadSeparately: array3D"
	.size	.L.str.39, 39

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"get_mem4DpelWithPad: array4D"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"get_mem4DpelWithPadSeparately: array4D"
	.size	.L.str.41, 39

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"get_mem5DpelWithPad: array5D"
	.size	.L.str.42, 29

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"get_mem5DpelWithPadSeparately: array5D"
	.size	.L.str.43, 39

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"free_mem1Dpel: trying to free unused memory"
	.size	.L.str.44, 44

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"free_mem2Dpel: trying to free unused memory"
	.size	.L.str.45, 44

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"free_mem2DpelWithPad: trying to free unused memory"
	.size	.L.str.46, 51

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"free_mem3Dpel: trying to free unused memory"
	.size	.L.str.47, 44

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"free_mem3DpelWithPadSeparately: trying to free unused memory"
	.size	.L.str.48, 61

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"free_mem4Dpel: trying to free unused memory"
	.size	.L.str.49, 44

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"free_mem4DpelWithPad: trying to free unused memory"
	.size	.L.str.50, 51

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"free_mem4DpelWithPadSeparately: trying to free unused memory"
	.size	.L.str.51, 61

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"free_mem5Dpel: trying to free unused memory"
	.size	.L.str.52, 44

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"free_mem5DpelWithPad: trying to free unused memory"
	.size	.L.str.53, 51

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"get_mem2D: array2D"
	.size	.L.str.54, 19

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"get_mem2Dint: array2D"
	.size	.L.str.55, 22

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"get_mem2DintWithPad: array2D"
	.size	.L.str.56, 29

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"get_mem2Dint64: array2D"
	.size	.L.str.57, 24

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"get_mem2Ddistblk: array2D"
	.size	.L.str.58, 26

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"get_mem3D: array3D"
	.size	.L.str.59, 19

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"get_mem4D: array4D"
	.size	.L.str.60, 19

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"get_mem3Dint: array3D"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"get_mem3Dint64: array3D"
	.size	.L.str.62, 24

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"get_mem3Ddistblk: array3D"
	.size	.L.str.63, 26

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"get_mem4Dint: array4D"
	.size	.L.str.64, 22

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"get_mem4Dint64: array4D"
	.size	.L.str.65, 24

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"get_mem4Ddistblk: array4D"
	.size	.L.str.66, 26

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"get_mem5Dint: array5D"
	.size	.L.str.67, 22

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"free_mem2D: trying to free unused memory"
	.size	.L.str.68, 41

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"free_mem2Dint: trying to free unused memory"
	.size	.L.str.69, 44

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"free_mem2DintWithPad: trying to free unused memory"
	.size	.L.str.70, 51

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"free_mem2Dint64: trying to free unused memory"
	.size	.L.str.71, 46

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"free_mem3D: trying to free unused memory"
	.size	.L.str.72, 41

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"free_mem4D: trying to free unused memory"
	.size	.L.str.73, 41

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"free_mem3Dint: trying to free unused memory"
	.size	.L.str.74, 44

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"free_mem3Dint64: trying to free unused memory"
	.size	.L.str.75, 46

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"free_mem3Ddistblk: trying to free unused memory"
	.size	.L.str.76, 48

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"free_mem4Dint: trying to free unused memory"
	.size	.L.str.77, 44

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"free_mem4Dint64: trying to free unused memory"
	.size	.L.str.78, 46

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"free_mem4Ddistblk: trying to free unused memory"
	.size	.L.str.79, 48

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"free_mem5Dint: trying to free unused memory"
	.size	.L.str.80, 44

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Could not allocate memory: %s"
	.size	.L.str.81, 30

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"get_mem2Duint16: array2D"
	.size	.L.str.82, 25

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"get_mem3Duint16: array3D"
	.size	.L.str.83, 25

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"get_mem4Duint16: array4D"
	.size	.L.str.84, 25

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"get_mem2Dshort: array2D"
	.size	.L.str.85, 24

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"get_mem3Dshort: array3D"
	.size	.L.str.86, 24

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"get_mem4Dshort: array4D"
	.size	.L.str.87, 24

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"get_mem5Dshort: array5D"
	.size	.L.str.88, 24

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"get_mem6Dshort: array6D"
	.size	.L.str.89, 24

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"get_mem7Dshort: array7D"
	.size	.L.str.90, 24

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"free_mem2Duint16: trying to free unused memory"
	.size	.L.str.91, 47

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"free_mem3Duint16: trying to free unused memory"
	.size	.L.str.92, 47

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"free_mem4Duint16: trying to free unused memory"
	.size	.L.str.93, 47

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"free_mem2Dshort: trying to free unused memory"
	.size	.L.str.94, 46

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"free_mem3Dshort: trying to free unused memory"
	.size	.L.str.95, 46

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"free_mem4Dshort: trying to free unused memory"
	.size	.L.str.96, 46

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"free_mem5Dshort: trying to free unused memory"
	.size	.L.str.97, 46

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"free_mem6Dshort: trying to free unused memory"
	.size	.L.str.98, 46

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"free_mem7Dshort: trying to free unused memory"
	.size	.L.str.99, 46

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"get_mem2Ddouble: array2D"
	.size	.L.str.100, 25

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"get_mem1Dodouble: array2D"
	.size	.L.str.101, 26

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"get_mem2Dodouble: array2D"
	.size	.L.str.102, 26

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"get_mem3Dodouble: array3D"
	.size	.L.str.103, 26

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"get_offset_mem2Dshort: array2D"
	.size	.L.str.104, 31

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"get_mem3Doint: array3D"
	.size	.L.str.105, 23

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"get_mem3Ddouble: array3D"
	.size	.L.str.106, 25

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"free_mem2Ddouble: trying to free unused memory"
	.size	.L.str.107, 47

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"free_mem1Dodouble: trying to free unused memory"
	.size	.L.str.108, 48

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"free_mem2Dodouble: trying to free unused memory"
	.size	.L.str.109, 48

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"free_mem3Dodouble: trying to free unused memory"
	.size	.L.str.110, 48

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"free_mem3Doint: trying to free unused memory"
	.size	.L.str.111, 45

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"free_mem2Doint: trying to free unused memory"
	.size	.L.str.112, 45

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"free_offset_mem2Dshort: trying to free unused memory"
	.size	.L.str.113, 53

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"get_mem2Dolm: array2D"
	.size	.L.str.114, 22

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"free_mem2Dolm: trying to free unused memory"
	.size	.L.str.115, 44

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"free_mem2Ddistblk: trying to free unused memory"
	.size	.L.str.116, 48

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
