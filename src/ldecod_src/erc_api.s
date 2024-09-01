	.text
	.file	"erc_api.c"
	.globl	ercInit                         # -- Begin function ercInit
	.p2align	4, 0x90
	.type	ercInit,@function
ercInit:                                # @ercInit
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
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	856504(%rdi), %rsi
	callq	ercClose
	imull	%ebp, %r15d
	sarl	$6, %r15d
	movslq	%r15d, %rdi
	movl	$24, %esi
	callq	calloc@PLT
	movq	%rax, 856496(%r14)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
.LBB0_2:                                # %if.end
	movl	$72, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then.i
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB0_4:                                # %ercSetErrorConcealment.exit
	movl	$0, (%r15)
	movq	$0, 48(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r15)
	movups	%xmm0, 24(%r15)
	movl	$0, 40(%r15)
	movq	%r15, 856504(%r14)
	movl	%ebx, 64(%r15)
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
.Lfunc_end0:
	.size	ercInit, .Lfunc_end0-ercInit
	.cfi_endproc
                                        # -- End function
	.globl	ercClose                        # -- Begin function ercClose
	.p2align	4, 0x90
	.type	ercClose,@function
ercClose:                               # @ercClose
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
	testq	%rsi, %rsi
	je	.LBB1_4
# %bb.1:                                # %if.then
	movq	%rsi, %r14
	cmpq	$0, 8(%rsi)
	je	.LBB1_3
# %bb.2:                                # %if.then2
	movq	32(%r14), %rdi
	callq	free@PLT
	movq	8(%r14), %rdi
	callq	free@PLT
	movq	16(%r14), %rdi
	callq	free@PLT
	movq	24(%r14), %rdi
	callq	free@PLT
	movq	48(%r14), %rdi
	callq	free@PLT
.LBB1_3:                                # %if.end
	movq	%r14, %rdi
	callq	free@PLT
.LBB1_4:                                # %if.end4
	movq	856496(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_6
# %bb.5:                                # %if.then5
	callq	free@PLT
	movq	$0, 856496(%rbx)
.LBB1_6:                                # %if.end8
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	ercClose, .Lfunc_end1-ercClose
	.cfi_endproc
                                        # -- End function
	.globl	ercOpen                         # -- Begin function ercOpen
	.p2align	4, 0x90
	.type	ercOpen,@function
ercOpen:                                # @ercOpen
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$72, %edi
	callq	malloc@PLT
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:                                # %if.then
	movl	$.L.str.1, %edi
	movq	%rax, %rbx
	callq	no_mem_exit@PLT
	movq	%rbx, %rax
.LBB2_2:                                # %if.end
	movl	$0, (%rax)
	movq	$0, 48(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movups	%xmm0, 24(%rax)
	movl	$0, 40(%rax)
	movl	$1, 64(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	ercOpen, .Lfunc_end2-ercOpen
	.cfi_endproc
                                        # -- End function
	.globl	ercSetErrorConcealment          # -- Begin function ercSetErrorConcealment
	.p2align	4, 0x90
	.type	ercSetErrorConcealment,@function
ercSetErrorConcealment:                 # @ercSetErrorConcealment
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB3_2
# %bb.1:                                # %if.then
	movl	%esi, 64(%rdi)
.LBB3_2:                                # %if.end
	retq
.Lfunc_end3:
	.size	ercSetErrorConcealment, .Lfunc_end3-ercSetErrorConcealment
	.cfi_endproc
                                        # -- End function
	.globl	ercReset                        # -- Begin function ercReset
	.p2align	4, 0x90
	.type	ercReset,@function
ercReset:                               # @ercReset
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB4_27
# %bb.1:                                # %land.lhs.true
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
	movq	%rdi, %rbx
	cmpl	$0, 64(%rdi)
	je	.LBB4_26
# %bb.2:                                # %if.then
	movl	%edx, %ebp
	movl	%esi, %r14d
	cmpl	%esi, (%rbx)
	je	.LBB4_5
# %bb.3:                                # %land.lhs.true3
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB4_5
# %bb.4:                                # %if.then5
	callq	free@PLT
	movq	$0, 8(%rbx)
	movq	48(%rbx), %rdi
	callq	free@PLT
	movq	$0, 48(%rbx)
	movq	16(%rbx), %rdi
	callq	free@PLT
	movq	$0, 16(%rbx)
	movq	24(%rbx), %rdi
	callq	free@PLT
	movq	$0, 24(%rbx)
	movq	32(%rbx), %rdi
	callq	free@PLT
	movq	$0, 32(%rbx)
.LBB4_5:                                # %if.end
	movq	8(%rbx), %rax
	testq	%rax, %rax
	je	.LBB4_6
# %bb.17:                               # %if.else
	movq	48(%rbx), %rdi
	movq	%rax, 48(%rbx)
	movq	%rdi, 8(%rbx)
	leal	(,%r14,4), %eax
	movslq	%eax, %r15
	movslq	%r14d, %r12
	jmp	.LBB4_18
.LBB4_6:                                # %if.then15
	movslq	%ebp, %r15
	leaq	(%r15,%r15), %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	jne	.LBB4_8
# %bb.7:                                # %if.then20
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
	movq	32(%rbx), %rax
.LBB4_8:                                # %if.end21
	movq	%r15, %rcx
	shlq	$33, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	sarq	$32, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	%r15d, 4(%rbx)
	leal	(,%r14,4), %eax
	movslq	%eax, %r15
	movq	%r15, %rdi
	callq	malloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	jne	.LBB4_10
# %bb.9:                                # %if.then34
	movl	$.L.str.3, %edi
	callq	no_mem_exit@PLT
.LBB4_10:                               # %if.end35
	movq	%r15, %rdi
	callq	malloc@PLT
	movq	%rax, 48(%rbx)
	testq	%rax, %rax
	jne	.LBB4_12
# %bb.11:                               # %if.then44
	movl	$.L.str.4, %edi
	callq	no_mem_exit@PLT
.LBB4_12:                               # %if.end45
	movslq	%r14d, %r12
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	jne	.LBB4_14
# %bb.13:                               # %if.then53
	movl	$.L.str.5, %edi
	callq	no_mem_exit@PLT
.LBB4_14:                               # %if.end54
	movq	%r12, %rdi
	callq	malloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	jne	.LBB4_16
# %bb.15:                               # %if.then62
	movl	$.L.str.6, %edi
	callq	no_mem_exit@PLT
.LBB4_16:                               # %if.end63
	movl	%r14d, (%rbx)
	movq	8(%rbx), %rdi
.LBB4_18:                               # %if.end69
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	16(%rbx), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset@PLT
	movq	24(%rbx), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset@PLT
	cmpl	%ebp, 4(%rbx)
	je	.LBB4_22
# %bb.19:                               # %if.then86
	movq	32(%rbx), %rdi
	callq	free@PLT
	movslq	%ebp, %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc@PLT
	movq	%rax, 32(%rbx)
	testq	%rax, %rax
	jne	.LBB4_21
# %bb.20:                               # %if.then96
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
.LBB4_21:                               # %if.end97
	movl	%ebp, 4(%rbx)
.LBB4_22:                               # %if.end99
	testl	%ebp, %ebp
	jle	.LBB4_25
# %bb.23:                               # %for.body.lr.ph
	movq	32(%rbx), %rax
	decl	%r14d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_24:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	movw	%r14w, 2(%rax)
	movb	$1, 4(%rax)
	addq	$6, %rax
	incl	%ecx
	cmpl	4(%rbx), %ecx
	jl	.LBB4_24
.LBB4_25:                               # %for.end
	movl	$0, 40(%rbx)
	movl	$0, 60(%rbx)
.LBB4_26:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB4_27:                               # %if.end105
	retq
.Lfunc_end4:
	.size	ercReset, .Lfunc_end4-ercReset
	.cfi_endproc
                                        # -- End function
	.globl	ercStartSegment                 # -- Begin function ercStartSegment
	.p2align	4, 0x90
	.type	ercStartSegment,@function
ercStartSegment:                        # @ercStartSegment
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rcx, %rcx
	je	.LBB5_3
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 64(%rcx)
	je	.LBB5_3
# %bb.2:                                # %if.then
	movl	$0, 56(%rcx)
	movq	32(%rcx), %rax
	movslq	%esi, %rdx
	addq	%rdx, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movb	$0, 4(%rax,%rdx)
	movq	32(%rcx), %rax
	movw	%di, (%rax,%rdx)
.LBB5_3:                                # %if.end
	retq
.Lfunc_end5:
	.size	ercStartSegment, .Lfunc_end5-ercStartSegment
	.cfi_endproc
                                        # -- End function
	.globl	ercStopSegment                  # -- Begin function ercStopSegment
	.p2align	4, 0x90
	.type	ercStopSegment,@function
ercStopSegment:                         # @ercStopSegment
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rcx, %rcx
	je	.LBB6_3
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 64(%rcx)
	je	.LBB6_3
# %bb.2:                                # %if.then
	movq	32(%rcx), %rax
	movslq	%esi, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movw	%di, 2(%rax,%rdx,2)
	incl	40(%rcx)
.LBB6_3:                                # %if.end
	retq
.Lfunc_end6:
	.size	ercStopSegment, .Lfunc_end6-ercStopSegment
	.cfi_endproc
                                        # -- End function
	.globl	ercMarkCurrSegmentLost          # -- Begin function ercMarkCurrSegmentLost
	.p2align	4, 0x90
	.type	ercMarkCurrSegmentLost,@function
ercMarkCurrSegmentLost:                 # @ercMarkCurrSegmentLost
	.cfi_startproc
# %bb.0:                                # %land.lhs.true
	cmpl	$0, 64(%rsi)
	je	.LBB7_7
# %bb.1:                                # %if.then
	movslq	40(%rsi), %rcx
	decq	%rcx
	cmpl	$0, 56(%rsi)
	jne	.LBB7_3
# %bb.2:                                # %if.then2
	incl	60(%rsi)
	movl	$1, 56(%rsi)
.LBB7_3:                                # %if.end
	movq	32(%rsi), %rax
	leaq	(%rcx,%rcx,2), %r8
	movswq	(%rax,%r8,2), %rcx
	cmpw	2(%rax,%r8,2), %cx
	jg	.LBB7_6
# %bb.4:                                # %for.body.lr.ph
	movl	%edi, %r9d
	sarl	$4, %r9d
	sarl	$3, %edi
	.p2align	4, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %r10
	movl	%ecx, %eax
	cltd
	idivl	%r9d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rax), %r11d
	imull	%edi, %r11d
	leal	(%r11,%rdx,2), %r11d
	movslq	%r11d, %r11
	movb	$1, (%r10,%r11)
	movq	8(%rsi), %r10
	movb	$1, 1(%r10,%r11)
	movq	8(%rsi), %r10
	leal	1(,%rax,2), %eax
	imull	%edi, %eax
	leal	(%rax,%rdx,2), %eax
	cltq
	movb	$1, (%r10,%rax)
	movq	8(%rsi), %rdx
	movb	$1, 1(%rdx,%rax)
	movq	16(%rsi), %rax
	movb	$1, (%rax,%rcx)
	movq	24(%rsi), %rax
	movb	$1, (%rax,%rcx)
	leaq	1(%rcx), %rdx
	movq	32(%rsi), %rax
	movswq	2(%rax,%r8,2), %r10
	cmpq	%r10, %rcx
	movq	%rdx, %rcx
	jl	.LBB7_5
.LBB7_6:                                # %for.end
	movb	$1, 4(%rax,%r8,2)
.LBB7_7:                                # %if.end67
	retq
.Lfunc_end7:
	.size	ercMarkCurrSegmentLost, .Lfunc_end7-ercMarkCurrSegmentLost
	.cfi_endproc
                                        # -- End function
	.globl	ercMarkCurrSegmentOK            # -- Begin function ercMarkCurrSegmentOK
	.p2align	4, 0x90
	.type	ercMarkCurrSegmentOK,@function
ercMarkCurrSegmentOK:                   # @ercMarkCurrSegmentOK
	.cfi_startproc
# %bb.0:                                # %land.lhs.true
	cmpl	$0, 64(%rsi)
	je	.LBB8_5
# %bb.1:                                # %if.then
	movslq	40(%rsi), %rcx
	decq	%rcx
	movq	32(%rsi), %rax
	leaq	(%rcx,%rcx,2), %r8
	movswq	(%rax,%r8,2), %rcx
	cmpw	2(%rax,%r8,2), %cx
	jg	.LBB8_4
# %bb.2:                                # %for.body.lr.ph
	movl	%edi, %r9d
	sarl	$4, %r9d
	sarl	$3, %edi
	.p2align	4, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%rsi), %r10
	movl	%ecx, %eax
	cltd
	idivl	%r9d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rax), %r11d
	imull	%edi, %r11d
	leal	(%r11,%rdx,2), %r11d
	movslq	%r11d, %r11
	movb	$3, (%r10,%r11)
	movq	8(%rsi), %r10
	movb	$3, 1(%r10,%r11)
	movq	8(%rsi), %r10
	leal	1(,%rax,2), %eax
	imull	%edi, %eax
	leal	(%rax,%rdx,2), %eax
	cltq
	movb	$3, (%r10,%rax)
	movq	8(%rsi), %rdx
	movb	$3, 1(%rdx,%rax)
	movq	16(%rsi), %rax
	movb	$3, (%rax,%rcx)
	movq	24(%rsi), %rax
	movb	$3, (%rax,%rcx)
	leaq	1(%rcx), %rdx
	movq	32(%rsi), %rax
	movswq	2(%rax,%r8,2), %r10
	cmpq	%r10, %rcx
	movq	%rdx, %rcx
	jl	.LBB8_3
.LBB8_4:                                # %for.end
	movb	$0, 4(%rax,%r8,2)
.LBB8_5:                                # %if.end
	retq
.Lfunc_end8:
	.size	ercMarkCurrSegmentOK, .Lfunc_end8-ercMarkCurrSegmentOK
	.cfi_endproc
                                        # -- End function
	.globl	ercMarkCurrMBConcealed          # -- Begin function ercMarkCurrMBConcealed
	.p2align	4, 0x90
	.type	ercMarkCurrMBConcealed,@function
ercMarkCurrMBConcealed:                 # @ercMarkCurrMBConcealed
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rcx, %rcx
	je	.LBB9_10
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 64(%rcx)
	je	.LBB9_10
# %bb.2:                                # %if.then
	xorl	%eax, %eax
	testl	%esi, %esi
	cmovnsl	%esi, %eax
	testl	%eax, %eax
	je	.LBB9_7
# %bb.3:                                # %if.then
	cmpl	$1, %eax
	je	.LBB9_6
# %bb.4:                                # %if.then
	cmpl	$2, %eax
	jne	.LBB9_10
# %bb.5:                                # %if.then.sw.bb59_crit_edge
	movslq	%edi, %rax
	movq	24(%rcx), %rcx
	movb	$2, (%rcx,%rax)
	retq
.LBB9_6:                                # %sw.bb53
	movq	16(%rcx), %rdx
	movslq	%edi, %rax
	movb	$2, (%rdx,%rax)
	testl	%esi, %esi
	js	.LBB9_9
.LBB9_10:                               # %if.end62
	retq
.LBB9_7:                                # %sw.bb
	movl	%edx, %r8d
	sarl	$4, %r8d
	movl	%edi, %eax
	movl	%edx, %r9d
	cltd
	idivl	%r8d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rax), %r8d
	sarl	$3, %r9d
	imull	%r9d, %r8d
	leal	1(,%rax,2), %eax
	imull	%r9d, %eax
	movq	8(%rcx), %r9
	leal	(%r8,%rdx,2), %r8d
	movslq	%r8d, %r8
	movb	$2, (%r9,%r8)
	movq	8(%rcx), %r9
	movb	$2, 1(%r9,%r8)
	movq	8(%rcx), %r8
	leal	(%rax,%rdx,2), %eax
	cltq
	movb	$2, (%r8,%rax)
	movq	8(%rcx), %rdx
	movb	$2, 1(%rdx,%rax)
	testl	%esi, %esi
	jns	.LBB9_10
# %bb.8:                                # %sw.bb59.critedge
	movq	16(%rcx), %rdx
	movslq	%edi, %rax
	movb	$2, (%rdx,%rax)
.LBB9_9:                                # %sw.bb59
	movq	24(%rcx), %rcx
	movb	$2, (%rcx,%rax)
	retq
.Lfunc_end9:
	.size	ercMarkCurrMBConcealed, .Lfunc_end9-ercMarkCurrMBConcealed
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ercInit: erc_object_list"
	.size	.L.str, 25

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"ercOpen: errorVar"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ercReset: errorVar->segments"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ercReset: errorVar->yCondition"
	.size	.L.str.3, 31

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ercReset: errorVar->prevFrameYCondition"
	.size	.L.str.4, 40

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ercReset: errorVar->uCondition"
	.size	.L.str.5, 31

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"ercReset: errorVar->vCondition"
	.size	.L.str.6, 31

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
