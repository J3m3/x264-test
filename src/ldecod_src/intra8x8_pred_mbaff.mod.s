	.text
	.file	"intra8x8_pred_mbaff.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred8x8_mbaff
.LCPI0_0:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.text
	.globl	intrapred8x8_mbaff
	.p2align	4, 0x90
	.type	intrapred8x8_mbaff,@function
intrapred8x8_mbaff:                     # @intrapred8x8_mbaff
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
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movl	%edx, %r14d
                                        # kill: def $esi killed $esi def $rsi
	movslq	32(%rdi), %rax
	sarl	$2, %edx
	movslq	%edx, %r8
	addq	%rax, %r8
	movslq	36(%rdi), %rax
	movq	%rcx, %rdx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	sarl	$2, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	(%rdi), %r9
	movq	13536(%r9), %rax
	movq	(%rax,%rdx,8), %rax
	movzbl	(%rax,%r8), %eax
	movb	%al, 372(%rdi)
	cmpq	$8, %rax
	ja	.LBB0_20
# %bb.1:                                # %entry
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:                                # %sw.bb7
	movq	8(%rdi), %rdx
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_142
# %bb.3:                                # %cond.true.i75
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_143
.LBB0_4:                                # %sw.bb11
	movq	8(%rdi), %rdx
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_21
# %bb.5:                                # %cond.true.i296
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_22
.LBB0_6:                                # %sw.bb
	movq	8(%rdi), %r13
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_55
# %bb.7:                                # %cond.true.i
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_56
.LBB0_8:                                # %sw.bb13
	movq	8(%rdi), %r13
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_84
# %bb.9:                                # %cond.true.i509
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_85
.LBB0_10:                               # %sw.bb17
	movq	8(%rdi), %r10
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_113
# %bb.11:                               # %cond.true.i1029
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_114
.LBB0_12:                               # %sw.bb9
	movq	8(%rdi), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_150
# %bb.13:                               # %cond.true.i225
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_151
.LBB0_14:                               # %sw.bb15
	movq	8(%rdi), %rdx
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_193
# %bb.15:                               # %cond.true.i681
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_194
.LBB0_16:                               # %sw.bb21
	movq	8(%rdi), %rdx
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_227
# %bb.17:                               # %cond.true.i1593
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_228
.LBB0_18:                               # %sw.bb19
	movq	8(%rdi), %r10
	movq	13520(%r9), %rax
	testl	%esi, %esi
	je	.LBB0_261
# %bb.19:                               # %cond.true.i1391
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_262
.LBB0_20:                               # %sw.default
	movl	$.L.str, %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_348
.LBB0_21:                               # %cond.false.i500
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_22:                               # %cond.end.i301
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	849124(%rdx), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	setne	%al
	movq	%rbx, %rdi
	movl	%ebx, %ecx
	movq	88(%rsp), %rbx                  # 8-byte Reload
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%rbx), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_45
# %bb.23:                               # %for.cond23.preheader.i327
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_25
# %bb.24:                               # %cond.true30.i330
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_25:                               # %cond.end36.i334
	cmpl	$0, 160(%rsp)
	movq	%rdi, %r14
	je	.LBB0_27
# %bb.26:                               # %cond.true30.1.i338
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_27:                               # %cond.end36.1.i342
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_29
# %bb.28:                               # %cond.true30.2.i346
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_29:                               # %cond.end36.2.i350
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_31
# %bb.30:                               # %cond.true30.3.i354
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_31:                               # %cond.end36.3.i358
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_33
# %bb.32:                               # %cond.true30.4.i362
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_33:                               # %cond.end36.4.i366
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_35
# %bb.34:                               # %cond.true30.5.i370
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_35:                               # %cond.end36.5.i374
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_37
# %bb.36:                               # %cond.true30.6.i378
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_37:                               # %cond.end36.6.i382
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_39
# %bb.38:                               # %cond.true30.7.i386
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_39:                               # %cond.end36.7.i391
	andl	%edx, %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_41
# %bb.40:                               # %cond.true43.i395
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_41:                               # %cond.end50.i400
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_43
# %bb.42:                               # %cond.true54.i494
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r13d
.LBB0_43:                               # %cond.end61.i402
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_297
# %bb.44:                               # %cond.true65.i405
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.i499
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r13d
	movq	%rdi, %r14
	movq	72(%rsp), %r9                   # 8-byte Reload
.LBB0_46:                               # %if.end.i410
	testl	%ebp, %ebp
	setne	%dl
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_50
# %bb.47:                               # %if.end.i410
	testl	%ebp, %ebp
	je	.LBB0_50
# %bb.48:                               # %if.end.i410
	testl	%r12d, %r12d
	je	.LBB0_50
# %bb.49:
	movb	$1, %r9b
	movb	$1, %r8b
	jmp	.LBB0_51
.LBB0_50:                               # %if.then83.i417
	movl	108(%r9), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movl	%r13d, 72(%rsp)                 # 4-byte Spill
	movl	%r12d, 304(%rsp)                # 4-byte Spill
	movl	%r15d, %r12d
	movq	%rbx, %r15
	movq	%r14, %rbx
	movl	%ecx, %r14d
	movl	%edx, %r13d
	callq	printf@PLT
	movl	%r13d, %r9d
	movl	%r14d, %r8d
	movq	%rbx, %r14
	movq	%r15, %rbx
	movl	%r12d, %r15d
	movl	304(%rsp), %r12d                # 4-byte Reload
	movl	72(%rsp), %r13d                 # 4-byte Reload
	testl	%r15d, %r15d
	je	.LBB0_298
.LBB0_51:                               # %if.then86.i
	movswq	142(%rsp), %rax
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	testl	%r13d, %r13d
	je	.LBB0_299
.LBB0_52:                               # %if.then121.i
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testb	%r9b, %r9b
	je	.LBB0_300
.LBB0_53:                               # %if.then156.i
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	movq	%r14, %r13
	testb	%r8b, %r8b
	jne	.LBB0_301
.LBB0_54:                               # %if.else252.i
	movzwl	849060(%rbx,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_302
.LBB0_55:                               # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_56:                               # %cond.end.i
	movq	(%rcx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	(%rax,%rcx,8), %rbx
	leaq	849124(%r13), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%ebp, 64(%rsp)                  # 4-byte Spill
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movq	296(%rsp), %rbp                 # 8-byte Reload
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbp), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	64(%rsp), %esi                  # 4-byte Reload
	movl	%r13d, %edx
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	setne	%al
	movq	%rbp, %r12
	movl	%ebp, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%r13), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_79
# %bb.57:                               # %for.cond23.preheader.i
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_59
# %bb.58:                               # %cond.true30.i
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_59:                               # %cond.end36.i
	cmpl	$0, 160(%rsp)
	je	.LBB0_61
# %bb.60:                               # %cond.true30.1.i
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_61:                               # %cond.end36.1.i
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_63
# %bb.62:                               # %cond.true30.2.i
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_63:                               # %cond.end36.2.i
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_65
# %bb.64:                               # %cond.true30.3.i
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_65:                               # %cond.end36.3.i
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_67
# %bb.66:                               # %cond.true30.4.i
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_67:                               # %cond.end36.4.i
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_69
# %bb.68:                               # %cond.true30.5.i
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_69:                               # %cond.end36.5.i
	andl	%ecx, %ebp
	xorl	%esi, %esi
	cmpl	$0, 240(%rsp)
	movl	$0, %r8d
	je	.LBB0_71
# %bb.70:                               # %cond.true30.6.i
	movq	13544(%r9), %rcx
	movslq	244(%rsp), %r8
	movzbl	(%rcx,%r8), %r8d
.LBB0_71:                               # %cond.end36.6.i
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_73
# %bb.72:                               # %cond.true30.7.i
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rsi
	movzbl	(%rcx,%rsi), %esi
.LBB0_73:                               # %cond.end36.7.i
	andl	%edx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_75
# %bb.74:                               # %cond.true43.i
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_75:                               # %cond.end50.i
	andl	%r8d, %ebp
	testl	%eax, %eax
	je	.LBB0_77
# %bb.76:                               # %cond.true54.i
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rcx
	movsbl	(%rax,%rcx), %ecx
.LBB0_77:                               # %cond.end61.i
	andl	%esi, %ebp
	cmpl	$0, 280(%rsp)
	movq	80(%rsp), %r8                   # 8-byte Reload
	je	.LBB0_303
# %bb.78:                               # %cond.true65.i
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rdx
	movsbl	(%rax,%rdx), %esi
	testl	%r15d, %r15d
	je	.LBB0_304
.LBB0_80:                               # %if.then80.i
	movswq	142(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	140(%rsp), %rdx
	movzwl	(%rax,%rdx,2), %edi
	movw	%di, 2(%rsp)
	movzwl	2(%rax,%rdx,2), %edi
	movw	%di, 4(%rsp)
	movzwl	4(%rax,%rdx,2), %edi
	movw	%di, 6(%rsp)
	movzwl	6(%rax,%rdx,2), %edi
	movw	%di, 8(%rsp)
	movzwl	8(%rax,%rdx,2), %edi
	movw	%di, 10(%rsp)
	movzwl	10(%rax,%rdx,2), %edi
	movw	%di, 12(%rsp)
	movzwl	12(%rax,%rdx,2), %edi
	movw	%di, 14(%rsp)
	movzwl	14(%rax,%rdx,2), %eax
	movw	%ax, 16(%rsp)
	testl	%ecx, %ecx
	je	.LBB0_305
.LBB0_81:                               # %if.then115.i
	movswq	126(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testl	%ebp, %ebp
	je	.LBB0_306
.LBB0_82:                               # %if.then150.i
	movswq	158(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%esi, %esi
	je	.LBB0_307
.LBB0_83:                               # %if.then238.i
	movswq	294(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_308
.LBB0_79:                               # %if.else.i
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %esi
	movl	%eax, %ecx
	movq	80(%rsp), %r8                   # 8-byte Reload
	testl	%r15d, %r15d
	jne	.LBB0_80
.LBB0_304:                              # %if.else101.i
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	849060(%r13,%rax,4), %eax
	movw	%ax, 14(%rsp)
	movw	%ax, 12(%rsp)
	movw	%ax, 10(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 2(%rsp)
	movw	%ax, 16(%rsp)
	testl	%ecx, %ecx
	jne	.LBB0_81
.LBB0_305:                              # %if.else138.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_82
.LBB0_306:                              # %if.else223.i
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	849060(%r13,%rax,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testl	%esi, %esi
	jne	.LBB0_83
.LBB0_307:                              # %if.else246.i
	movq	104(%rsp), %rax                 # 8-byte Reload
	movzwl	849060(%r13,%rax,4), %eax
.LBB0_308:                              # %if.end252.i
	movslq	96(%rsp), %r14                  # 4-byte Folded Reload
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	testl	%r15d, %r15d
	je	.LBB0_311
# %bb.309:                              # %if.end252.i
	testl	%ebp, %ebp
	je	.LBB0_311
# %bb.310:                              # %if.then256.i
	movdqu	2(%rsp), %xmm0
	movdqu	34(%rsp), %xmm1
	pxor	%xmm2, %xmm2
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm1            # xmm1 = xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpckhwd	%xmm2, %xmm0            # xmm0 = xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	$8, %eax
	shrl	$4, %eax
	jmp	.LBB0_346
.LBB0_311:                              # %if.else305.i
	testl	%r15d, %r15d
	jne	.LBB0_314
# %bb.312:                              # %if.else305.i
	testl	%ebp, %ebp
	je	.LBB0_314
# %bb.313:                              # %if.then309.i
	movdqu	34(%rsp), %xmm0
	jmp	.LBB0_317
.LBB0_84:                               # %cond.false.i672
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_85:                               # %cond.end.i513
	movq	(%rcx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	849124(%r13), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	movq	%r13, 80(%rsp)                  # 8-byte Spill
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	80(%rsp), %r13                  # 8-byte Reload
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	setne	%al
	movl	%ebx, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%r13), %rcx
	cmpl	$0, 2204(%rcx)
	movq	%rbx, 296(%rsp)                 # 8-byte Spill
	je	.LBB0_108
# %bb.86:                               # %for.cond24.preheader.i
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_88
# %bb.87:                               # %cond.true31.i
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_88:                               # %cond.end37.i
	cmpl	$0, 160(%rsp)
	je	.LBB0_90
# %bb.89:                               # %cond.true31.1.i
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_90:                               # %cond.end37.1.i
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_92
# %bb.91:                               # %cond.true31.2.i
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_92:                               # %cond.end37.2.i
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_94
# %bb.93:                               # %cond.true31.3.i
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_94:                               # %cond.end37.3.i
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_96
# %bb.95:                               # %cond.true31.4.i
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_96:                               # %cond.end37.4.i
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_98
# %bb.97:                               # %cond.true31.5.i
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_98:                               # %cond.end37.5.i
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_100
# %bb.99:                               # %cond.true31.6.i
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_100:                              # %cond.end37.6.i
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_102
# %bb.101:                              # %cond.true31.7.i
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_102:                              # %cond.end37.7.i
	andl	%edx, %ebp
	xorl	%r14d, %r14d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_104
# %bb.103:                              # %cond.true44.i
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_104:                              # %cond.end51.i
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_106
# %bb.105:                              # %cond.true55.i
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r14d
.LBB0_106:                              # %cond.end62.i
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_318
# %bb.107:                              # %cond.true66.i
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	testl	%r15d, %r15d
	je	.LBB0_319
.LBB0_109:                              # %if.then84.i
	movswq	142(%rsp), %rax
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	movq	64(%rsp), %rdi                  # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB0_320
.LBB0_110:                              # %if.then119.i
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testl	%ebp, %ebp
	je	.LBB0_321
.LBB0_111:                              # %if.then154.i
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%r12d, %r12d
	je	.LBB0_322
.LBB0_112:                              # %if.then242.i
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_323
.LBB0_108:                              # %if.else.i671
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r14d
	movq	72(%rsp), %r9                   # 8-byte Reload
	testl	%r15d, %r15d
	jne	.LBB0_109
.LBB0_319:                              # %if.then81.i
	movl	108(%r9), %esi
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	849060(%r13,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	movq	88(%rsp), %rsi                  # 8-byte Reload
	testl	%r14d, %r14d
	jne	.LBB0_110
.LBB0_320:                              # %if.else142.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_111
.LBB0_321:                              # %if.else227.i
	movd	849060(%r13,%rdi,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_112
.LBB0_322:                              # %if.else250.i
	movzwl	849060(%r13,%rdi,4), %eax
.LBB0_323:                              # %intra8x8_diag_down_left_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	2(%rsp), %eax
	movzwl	6(%rsp), %ecx
	movzwl	4(%rsp), %edx
	addl	%ecx, %eax
	addl	$2, %eax
	leal	(%rax,%rdx,2), %edi
	movzwl	8(%rsp), %eax
	leal	(%rdx,%rcx,2), %edx
	leal	2(%rax,%rdx), %esi
	movzwl	10(%rsp), %edx
	leal	2(%rcx,%rdx), %ecx
	leal	(%rcx,%rax,2), %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movzwl	12(%rsp), %ecx
	leal	2(%rax,%rcx), %eax
	leal	(%rax,%rdx,2), %eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movzwl	14(%rsp), %eax
	leal	2(%rax,%rdx), %edx
	leal	(%rdx,%rcx,2), %ebx
	movzwl	16(%rsp), %edx
	leal	2(%rdx,%rcx), %ecx
	leal	(%rcx,%rax,2), %r13d
	movzwl	18(%rsp), %ecx
	leal	2(%rax,%rcx), %eax
	leal	(%rax,%rdx,2), %ebp
	movzwl	20(%rsp), %eax
	addl	%eax, %edx
	addl	$2, %edx
	leal	(%rdx,%rcx,2), %r10d
	movzwl	22(%rsp), %r14d
	addl	%r14d, %ecx
	leal	(%rcx,%rax,2), %r11d
	addl	$2, %r11d
	movzwl	24(%rsp), %ecx
	addl	%ecx, %eax
	leal	(%rax,%r14,2), %r15d
	addl	$2, %r15d
	movzwl	26(%rsp), %eax
	addl	%eax, %r14d
	leal	(%r14,%rcx,2), %r12d
	addl	$2, %r12d
	movzwl	28(%rsp), %r14d
	addl	%r14d, %ecx
	leal	(%rcx,%rax,2), %ecx
	addl	$2, %ecx
	movl	%ecx, 304(%rsp)                 # 4-byte Spill
	movzwl	30(%rsp), %ecx
	addl	%ecx, %eax
	leal	(%rax,%r14,2), %eax
	addl	$2, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movzwl	32(%rsp), %eax
	addl	%eax, %r14d
	leal	(%r14,%rcx,2), %r14d
	addl	$2, %r14d
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	addl	$2, %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movslq	96(%rsp), %r9                   # 4-byte Folded Reload
	shrl	$2, %edi
	movslq	296(%rsp), %rax                 # 4-byte Folded Reload
	movq	104(%rsp), %r8                  # 8-byte Reload
	movq	(%r8,%r9,8), %rcx
	movw	%di, (%rcx,%rax,2)
	shrl	$2, %esi
	movl	72(%rsp), %edx                  # 4-byte Reload
	shrl	$2, %edx
	movl	88(%rsp), %edi                  # 4-byte Reload
	shrl	$2, %edi
	shrl	$2, %ebx
	shrl	$2, %r13d
	shrl	$2, %ebp
	shrl	$2, %r10d
	movw	%si, 2(%rcx,%rax,2)
	movw	%dx, 4(%rcx,%rax,2)
	movw	%di, 6(%rcx,%rax,2)
	movw	%bx, 8(%rcx,%rax,2)
	movw	%r13w, 10(%rcx,%rax,2)
	movw	%bp, 12(%rcx,%rax,2)
	movw	%r10w, 14(%rcx,%rax,2)
	movq	8(%r8,%r9,8), %rcx
	movw	%si, (%rcx,%rax,2)
	shrl	$2, %r11d
	movw	%dx, 2(%rcx,%rax,2)
	movw	%di, 4(%rcx,%rax,2)
	movw	%bx, 6(%rcx,%rax,2)
	movw	%r13w, 8(%rcx,%rax,2)
	movw	%bp, 10(%rcx,%rax,2)
	movw	%r10w, 12(%rcx,%rax,2)
	movw	%r11w, 14(%rcx,%rax,2)
	movq	16(%r8,%r9,8), %rcx
	movw	%dx, (%rcx,%rax,2)
	shrl	$2, %r15d
	movw	%di, 2(%rcx,%rax,2)
	movw	%bx, 4(%rcx,%rax,2)
	movw	%r13w, 6(%rcx,%rax,2)
	movw	%bp, 8(%rcx,%rax,2)
	movw	%r10w, 10(%rcx,%rax,2)
	movw	%r11w, 12(%rcx,%rax,2)
	movw	%r15w, 14(%rcx,%rax,2)
	movq	24(%r8,%r9,8), %rcx
	movw	%di, (%rcx,%rax,2)
	shrl	$2, %r12d
	movw	%bx, 2(%rcx,%rax,2)
	movw	%r13w, 4(%rcx,%rax,2)
	movw	%bp, 6(%rcx,%rax,2)
	movw	%r10w, 8(%rcx,%rax,2)
	movw	%r11w, 10(%rcx,%rax,2)
	movw	%r15w, 12(%rcx,%rax,2)
	movw	%r12w, 14(%rcx,%rax,2)
	movq	32(%r8,%r9,8), %rcx
	movw	%bx, (%rcx,%rax,2)
	movl	304(%rsp), %edx                 # 4-byte Reload
	shrl	$2, %edx
	movw	%r13w, 2(%rcx,%rax,2)
	movw	%bp, 4(%rcx,%rax,2)
	movw	%r10w, 6(%rcx,%rax,2)
	movw	%r11w, 8(%rcx,%rax,2)
	movw	%r15w, 10(%rcx,%rax,2)
	movw	%r12w, 12(%rcx,%rax,2)
	movw	%dx, 14(%rcx,%rax,2)
	movq	40(%r8,%r9,8), %rcx
	movw	%r13w, (%rcx,%rax,2)
	movl	80(%rsp), %esi                  # 4-byte Reload
	shrl	$2, %esi
	movw	%bp, 2(%rcx,%rax,2)
	movw	%r10w, 4(%rcx,%rax,2)
	movw	%r11w, 6(%rcx,%rax,2)
	movw	%r15w, 8(%rcx,%rax,2)
	movw	%r12w, 10(%rcx,%rax,2)
	movw	%dx, 12(%rcx,%rax,2)
	movw	%si, 14(%rcx,%rax,2)
	movq	48(%r8,%r9,8), %rcx
	movw	%bp, (%rcx,%rax,2)
	shrl	$2, %r14d
	movw	%r10w, 2(%rcx,%rax,2)
	movw	%r11w, 4(%rcx,%rax,2)
	movw	%r15w, 6(%rcx,%rax,2)
	movw	%r12w, 8(%rcx,%rax,2)
	movw	%dx, 10(%rcx,%rax,2)
	movw	%si, 12(%rcx,%rax,2)
	movw	%r14w, 14(%rcx,%rax,2)
	movq	56(%r8,%r9,8), %rcx
	movw	%r10w, (%rcx,%rax,2)
	movw	%r11w, 2(%rcx,%rax,2)
	movw	%r15w, 4(%rcx,%rax,2)
	movw	%r12w, 6(%rcx,%rax,2)
	movw	%dx, 8(%rcx,%rax,2)
	movw	%si, 10(%rcx,%rax,2)
	movw	%r14w, 12(%rcx,%rax,2)
	movl	64(%rsp), %edx                  # 4-byte Reload
	shrl	$2, %edx
	movw	%dx, 14(%rcx,%rax,2)
	jmp	.LBB0_347
.LBB0_113:                              # %cond.false.i1381
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_114:                              # %cond.end.i1034
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	849124(%r10), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	movq	%r10, 88(%rsp)                  # 8-byte Spill
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	movq	88(%rsp), %r10                  # 8-byte Reload
	cmpl	$0, 112(%rsp)
	setne	%al
	movl	%ebx, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%r10), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_137
# %bb.115:                              # %for.cond24.preheader.i1060
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_117
# %bb.116:                              # %cond.true31.i1063
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_117:                              # %cond.end37.i1067
	cmpl	$0, 160(%rsp)
	je	.LBB0_119
# %bb.118:                              # %cond.true31.1.i1071
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_119:                              # %cond.end37.1.i1075
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_121
# %bb.120:                              # %cond.true31.2.i1079
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_121:                              # %cond.end37.2.i1083
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_123
# %bb.122:                              # %cond.true31.3.i1087
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_123:                              # %cond.end37.3.i1091
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_125
# %bb.124:                              # %cond.true31.4.i1095
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_125:                              # %cond.end37.4.i1099
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_127
# %bb.126:                              # %cond.true31.5.i1103
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_127:                              # %cond.end37.5.i1107
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_129
# %bb.128:                              # %cond.true31.6.i1111
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_129:                              # %cond.end37.6.i1115
	movq	%rbx, %r13
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_131
# %bb.130:                              # %cond.true31.7.i1119
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_131:                              # %cond.end37.7.i1124
	andl	%edx, %ebp
	xorl	%r14d, %r14d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_133
# %bb.132:                              # %cond.true44.i1128
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_133:                              # %cond.end51.i1133
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_135
# %bb.134:                              # %cond.true55.i1375
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r14d
.LBB0_135:                              # %cond.end62.i1135
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_324
# %bb.136:                              # %cond.true66.i1138
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	testl	%r15d, %r15d
	je	.LBB0_325
.LBB0_138:                              # %if.then84.i1149
	movswq	142(%rsp), %rax
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB0_326
.LBB0_139:                              # %if.then119.i1173
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testl	%ebp, %ebp
	je	.LBB0_327
.LBB0_140:                              # %if.then154.i1197
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%r12d, %r12d
	je	.LBB0_328
.LBB0_141:                              # %if.then242.i1256
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_329
.LBB0_137:                              # %if.else.i1380
	movq	%rbx, %r13
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r14d
	movq	72(%rsp), %r9                   # 8-byte Reload
	testl	%r15d, %r15d
	jne	.LBB0_138
.LBB0_325:                              # %if.then81.i1361
	movl	108(%r9), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	88(%rsp), %r10                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	849060(%r10,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	movq	64(%rsp), %rsi                  # 8-byte Reload
	testl	%r14d, %r14d
	jne	.LBB0_139
.LBB0_326:                              # %if.else142.i1352
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_140
.LBB0_327:                              # %if.else227.i1340
	movd	849060(%r10,%rdi,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_141
.LBB0_328:                              # %if.else250.i1336
	movzwl	849060(%r10,%rdi,4), %eax
.LBB0_329:                              # %intra8x8_vert_left_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movslq	96(%rsp), %r11                  # 4-byte Folded Reload
	movzwl	2(%rsp), %ecx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	movzwl	4(%rsp), %r15d
	leal	(%r15,%rcx), %ebp
	incl	%ebp
	shrl	%ebp
	movzwl	6(%rsp), %esi
	movzwl	8(%rsp), %r10d
	movzwl	10(%rsp), %r8d
	movzwl	12(%rsp), %edx
	movzwl	14(%rsp), %ebx
	movzwl	16(%rsp), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movzwl	18(%rsp), %ecx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movzwl	20(%rsp), %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movzwl	22(%rsp), %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movslq	%r13d, %r12
	movzwl	24(%rsp), %ecx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movzwl	26(%rsp), %ecx
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	movq	%r11, 360(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r11,8), %rcx
	movw	%bp, (%rcx,%r12,2)
	movq	%rsi, %rax
	leal	(%r15,%rsi), %r14d
	incl	%r14d
	shrl	%r14d
	movl	%r14d, 340(%rsp)                # 4-byte Spill
	movq	%r10, 352(%rsp)                 # 8-byte Spill
	addl	%r10d, %esi
	incl	%esi
	movq	%rax, %rbp
	shrl	%esi
	movl	%esi, %r13d
	movl	%esi, 296(%rsp)                 # 4-byte Spill
	movq	%r8, 320(%rsp)                  # 8-byte Spill
	leal	(%r10,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	movl	%r9d, 316(%rsp)                 # 4-byte Spill
	movq	%rdx, %r10
	leal	(%r8,%rdx), %edi
	incl	%edi
	shrl	%edi
	movl	%edi, 312(%rsp)                 # 4-byte Spill
	addl	%ebx, %edx
	incl	%edx
	movq	%r10, %r8
	shrl	%edx
	movl	%edx, 96(%rsp)                  # 4-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	(%rbx,%rax), %esi
	incl	%esi
	shrl	%esi
	movl	%esi, 72(%rsp)                  # 4-byte Spill
	movq	304(%rsp), %r10                 # 8-byte Reload
	addl	%eax, %r10d
	incl	%r10d
	shrl	%r10d
	movl	%r10d, 368(%rsp)                # 4-byte Spill
	movw	%r14w, 2(%rcx,%r12,2)
	movw	%r13w, 4(%rcx,%r12,2)
	movw	%r9w, 6(%rcx,%r12,2)
	movw	%di, 8(%rcx,%r12,2)
	movw	%dx, 10(%rcx,%r12,2)
	movw	%si, 12(%rcx,%r12,2)
	movw	%r10w, 14(%rcx,%r12,2)
	movq	328(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r15,2), %ecx
	addl	%ebp, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	8(%r13,%r11,8), %rax
	movw	%cx, (%rax,%r12,2)
	leal	(%r15,%rbp,2), %ecx
	movq	352(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movq	320(%rsp), %rdi                 # 8-byte Reload
	leal	(%rdi,%rbp), %edx
	addl	$2, %edx
	leal	(%rdx,%rsi,2), %ebp
	shrl	$2, %ebp
	leal	(%rsi,%r8), %r10d
	addl	$2, %r10d
	movq	%rdi, %rsi
	leal	(%r10,%rdi,2), %edx
	shrl	$2, %edx
	movq	%rbx, %rdi
	leal	(%rbx,%rsi), %r11d
	addl	$2, %r11d
	leal	(%r11,%r8,2), %esi
	shrl	$2, %esi
	movl	%esi, %r10d
	movl	%esi, 328(%rsp)                 # 4-byte Spill
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%r8), %ebx
	addl	$2, %ebx
	leal	(%rbx,%rdi,2), %r8d
	shrl	$2, %r8d
	movl	%r8d, %r11d
	movl	%r8d, 320(%rsp)                 # 4-byte Spill
	movq	304(%rsp), %r9                  # 8-byte Reload
	leal	(%rdi,%r9), %r14d
	addl	$2, %r14d
	leal	(%r14,%rsi,2), %r14d
	shrl	$2, %r14d
	movq	64(%rsp), %r8                   # 8-byte Reload
	leal	(%rsi,%r8), %r15d
	addl	$2, %r15d
	leal	(%r15,%r9,2), %r15d
	shrl	$2, %r15d
	movw	%cx, 2(%rax,%r12,2)
	movw	%bp, 4(%rax,%r12,2)
	movl	%edx, %edi
	movl	%edx, 352(%rsp)                 # 4-byte Spill
	movw	%di, 6(%rax,%r12,2)
	movw	%r10w, 8(%rax,%r12,2)
	movw	%r11w, 10(%rax,%r12,2)
	movw	%r14w, 12(%rax,%r12,2)
	movw	%r15w, 14(%rax,%r12,2)
	movq	%r13, %r11
	movq	360(%rsp), %r13                 # 8-byte Reload
	movq	16(%r11,%r13,8), %rax
	movl	340(%rsp), %edx                 # 4-byte Reload
	movw	%dx, (%rax,%r12,2)
	leal	(%r9,%r8), %ebx
	incl	%ebx
	movq	%r8, %r10
	shrl	%ebx
	movl	296(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 2(%rax,%r12,2)
	movl	316(%rsp), %esi                 # 4-byte Reload
	movw	%si, 4(%rax,%r12,2)
	movl	312(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 6(%rax,%r12,2)
	movl	96(%rsp), %r8d                  # 4-byte Reload
	movw	%r8w, 8(%rax,%r12,2)
	movl	72(%rsp), %r8d                  # 4-byte Reload
	movw	%r8w, 10(%rax,%r12,2)
	movl	368(%rsp), %r8d                 # 4-byte Reload
	movw	%r8w, 12(%rax,%r12,2)
	movw	%bx, 14(%rax,%r12,2)
	movq	24(%r11,%r13,8), %rax
	movq	%r11, %r13
	movw	%cx, (%rax,%r12,2)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %r9d
	leal	(%r9,%r10,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movw	%bp, 2(%rax,%r12,2)
	movw	%di, 4(%rax,%r12,2)
	movl	328(%rsp), %edi                 # 4-byte Reload
	movw	%di, 6(%rax,%r12,2)
	movl	320(%rsp), %edi                 # 4-byte Reload
	movw	%di, 8(%rax,%r12,2)
	movw	%r14w, 10(%rax,%r12,2)
	movw	%r15w, 12(%rax,%r12,2)
	movw	%r11w, 14(%rax,%r12,2)
	movq	360(%rsp), %r9                  # 8-byte Reload
	movq	32(%r13,%r9,8), %rax
	movl	296(%rsp), %edi                 # 4-byte Reload
	movw	%di, (%rax,%r12,2)
	leal	(%r10,%rcx), %edi
	incl	%edi
	movq	%rcx, %r10
	shrl	%edi
	movw	%si, 2(%rax,%r12,2)
	movw	%dx, 4(%rax,%r12,2)
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 6(%rax,%r12,2)
	movl	72(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 8(%rax,%r12,2)
	movw	%r8w, 10(%rax,%r12,2)
	movw	%bx, 12(%rax,%r12,2)
	movw	%di, 14(%rax,%r12,2)
	movq	40(%r13,%r9,8), %rax
	movw	%bp, (%rax,%r12,2)
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	376(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %ecx
	leal	(%rcx,%r10,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movl	352(%rsp), %ebp                 # 4-byte Reload
	movw	%bp, 2(%rax,%r12,2)
	movl	328(%rsp), %r8d                 # 4-byte Reload
	movw	%r8w, 4(%rax,%r12,2)
	movl	320(%rsp), %r10d                # 4-byte Reload
	movw	%r10w, 6(%rax,%r12,2)
	movw	%r14w, 8(%rax,%r12,2)
	movw	%r15w, 10(%rax,%r12,2)
	movw	%r11w, 12(%rax,%r12,2)
	movw	%dx, 14(%rax,%r12,2)
	movq	48(%r13,%r9,8), %rax
	movl	316(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, (%rax,%r12,2)
	movl	312(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 2(%rax,%r12,2)
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 4(%rax,%r12,2)
	movl	72(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 6(%rax,%r12,2)
	movl	368(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 8(%rax,%r12,2)
	movw	%bx, 10(%rax,%r12,2)
	movw	%di, 12(%rax,%r12,2)
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%rsi, %rcx
	addl	%edi, %esi
	incl	%esi
	shrl	%esi
	movw	%si, 14(%rax,%r12,2)
	movq	344(%rsp), %rax                 # 8-byte Reload
	addl	%edi, %eax
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	movq	56(%r13,%r9,8), %rsi
	movw	%bp, (%rsi,%r12,2)
	movw	%r8w, 2(%rsi,%r12,2)
	movw	%r10w, 4(%rsi,%r12,2)
	movw	%r14w, 6(%rsi,%r12,2)
	movw	%r15w, 8(%rsi,%r12,2)
	movw	%r11w, 10(%rsi,%r12,2)
	movw	%dx, 12(%rsi,%r12,2)
	shrl	$2, %eax
	movw	%ax, 14(%rsi,%r12,2)
	jmp	.LBB0_347
.LBB0_142:                              # %cond.false.i216
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_143:                              # %cond.end.i80
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	849124(%rax), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	movq	%rsp, %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	movq	104(%rsp), %r15                 # 8-byte Reload
	callq	getAffNeighbour@PLT
	cmpl	$0, 128(%rsp)
	setne	%al
	movl	%ebx, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 128(%rsp)
	movq	8(%r15), %rcx
	cmpl	$0, 2204(%rcx)
	movq	%rbx, 296(%rsp)                 # 8-byte Spill
	je	.LBB0_175
# %bb.144:                              # %for.cond23.preheader.i106
	xorl	%r12d, %r12d
	cmpl	$0, (%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %rsi                  # 8-byte Reload
	je	.LBB0_146
# %bb.145:                              # %cond.true43.i173
	movq	13544(%rsi), %rcx
	movslq	4(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ebp
.LBB0_146:                              # %cond.end50.i178
	testl	%eax, %eax
	je	.LBB0_148
# %bb.147:                              # %cond.true54.i210
	movq	13544(%rsi), %rax
	movslq	132(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
.LBB0_148:                              # %cond.end61.i180
	cmpl	$0, 112(%rsp)
	movq	64(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_330
# %bb.149:                              # %cond.true65.i183
	movq	13544(%rsi), %rax
	movslq	116(%rsp), %rcx
	movsbl	(%rax,%rcx), %r14d
	testl	%ebp, %ebp
	je	.LBB0_331
.LBB0_176:                              # %if.then83.i
	movswq	14(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	12(%rsp), %r11
	movzwl	(%rax,%r11,2), %r9d
	movzwl	2(%rax,%r11,2), %r10d
	movzwl	4(%rax,%r11,2), %r8d
	movzwl	6(%rax,%r11,2), %edi
	movzwl	8(%rax,%r11,2), %esi
	movzwl	10(%rax,%r11,2), %edx
	movzwl	12(%rax,%r11,2), %ecx
	movzwl	14(%rax,%r11,2), %eax
	movl	%eax, %r15d
	testl	%r12d, %r12d
	je	.LBB0_178
.LBB0_177:                              # %if.then116.i
	movswq	142(%rsp), %r11
	movq	(%rbx,%r11,8), %r11
	movswq	140(%rsp), %r15
	movzwl	(%r11,%r15,2), %r15d
.LBB0_178:                              # %if.end148.i199
	movslq	96(%rsp), %r11                  # 4-byte Folded Reload
	testl	%r14d, %r14d
	je	.LBB0_189
# %bb.179:                              # %if.then.i
	testl	%ebp, %ebp
	je	.LBB0_192
# %bb.180:                              # %if.then51.i
	movswq	126(%rsp), %r14
	movq	(%rbx,%r14,8), %r14
	movswq	124(%rsp), %r12
	movzwl	(%r14,%r12,2), %r12d
	movzwl	%r9w, %r14d
	movzwl	%r10w, %r10d
	leal	2(%r10), %ebp
	leal	(%r10,%r14,2), %r9d
	addl	$2, %r9d
	addl	%r12d, %r9d
	jmp	.LBB0_191
.LBB0_150:                              # %cond.false.i286
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_151:                              # %cond.end.i230
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rbx
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	849124(%rax), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%ebp, 88(%rsp)                  # 4-byte Spill
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	movq	%rsp, %r8
	movq	%r12, %rdi
	movq	296(%rsp), %rbp                 # 8-byte Reload
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbp), %esi
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	88(%rsp), %esi                  # 4-byte Reload
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 128(%rsp)
	setne	%al
	movl	%ebp, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 128(%rsp)
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_181
# %bb.152:                              # %for.cond30.preheader.i
	xorl	%ebp, %ebp
	cmpl	$0, 144(%rsp)
	movl	$0, %ecx
	movq	72(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_154
# %bb.153:                              # %cond.true37.i
	movq	13544(%rdi), %rax
	movslq	148(%rsp), %rcx
	movzbl	(%rax,%rcx), %ecx
	andl	$1, %ecx
.LBB0_154:                              # %cond.end43.i
	cmpl	$0, 160(%rsp)
	movq	64(%rsp), %r13                  # 8-byte Reload
	je	.LBB0_156
# %bb.155:                              # %cond.true37.1.i
	movq	13544(%rdi), %rax
	movslq	164(%rsp), %rdx
	movzbl	(%rax,%rdx), %ebp
.LBB0_156:                              # %cond.end43.1.i
	xorl	%eax, %eax
	cmpl	$0, 176(%rsp)
	movl	$0, %edx
	je	.LBB0_158
# %bb.157:                              # %cond.true37.2.i
	movq	13544(%rdi), %rdx
	movslq	180(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_158:                              # %cond.end43.2.i
	andl	%ecx, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_160
# %bb.159:                              # %cond.true37.3.i
	movq	13544(%rdi), %rax
	movslq	196(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_160:                              # %cond.end43.3.i
	andl	%edx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 208(%rsp)
	movl	$0, %edx
	je	.LBB0_162
# %bb.161:                              # %cond.true37.4.i
	movq	13544(%rdi), %rdx
	movslq	212(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_162:                              # %cond.end43.4.i
	andl	%eax, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_164
# %bb.163:                              # %cond.true37.5.i
	movq	13544(%rdi), %rax
	movslq	228(%rsp), %rcx
	movzbl	(%rax,%rcx), %ecx
.LBB0_164:                              # %cond.end43.5.i
	andl	%edx, %ebp
	xorl	%eax, %eax
	cmpl	$0, 240(%rsp)
	movl	$0, %edx
	je	.LBB0_166
# %bb.165:                              # %cond.true37.6.i
	movq	13544(%rdi), %rdx
	movslq	244(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_166:                              # %cond.end43.6.i
	andl	%ecx, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_168
# %bb.167:                              # %cond.true37.7.i
	movq	13544(%rdi), %rax
	movslq	260(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_168:                              # %cond.end43.7.i
	andl	%edx, %ebp
	xorl	%r12d, %r12d
	cmpl	$0, (%rsp)
	movl	$0, %r15d
	je	.LBB0_170
# %bb.169:                              # %cond.true50.i
	movq	13544(%rdi), %rcx
	movslq	4(%rsp), %rdx
	movsbl	(%rcx,%rdx), %r15d
.LBB0_170:                              # %cond.end57.i
	andl	%eax, %ebp
	cmpl	$0, 112(%rsp)
	je	.LBB0_172
# %bb.171:                              # %cond.true72.i
	movq	13544(%rdi), %rax
	movslq	116(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
.LBB0_172:                              # %if.end.i257
	movslq	96(%rsp), %r14                  # 4-byte Folded Reload
	testl	%ebp, %ebp
	je	.LBB0_182
.LBB0_173:                              # %if.end173.thread.i
	movswq	158(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %r9d
	movswq	174(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %r10d
	movswq	190(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %r8d
	movswq	206(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %esi
	movswq	222(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edi
	movswq	238(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movswq	254(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %ecx
	movswq	270(%rsp), %rax
	movq	(%r13,%rax,8), %rax
	movswq	268(%rsp), %r11
	movzwl	(%rax,%r11,2), %eax
	testl	%r12d, %r12d
	jne	.LBB0_183
# %bb.174:                              # %if.else65.i329.i
	movzwl	%r9w, %ebp
	movzwl	%r10w, %r11d
	movzwl	%r8w, %r15d
	movzwl	%si, %r13d
	movzwl	%di, %r12d
	movzwl	%dx, %edi
	movzwl	%cx, %edx
	movzwl	%ax, %eax
	leal	(%rbp,%rbp,2), %ecx
	leal	(%r11,%rcx), %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	leal	(%rbp,%r11,2), %ecx
	leal	(%r15,%rcx), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	leal	(%r11,%r15,2), %r8d
	addl	$2, %r8d
	addl	%r13d, %r8d
	shrl	$2, %r8d
	leal	(%r15,%r13,2), %esi
	addl	$2, %esi
	addl	%r12d, %esi
	shrl	$2, %esi
	leal	(%r13,%r12,2), %ecx
	movq	%rdi, %r15
	addl	%ecx, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	%rdx, %r11
	leal	(%rdx,%r12), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r15,2), %edx
	shrl	$2, %edx
	leal	(%r15,%r11,2), %ecx
	addl	$2, %ecx
	addl	%eax, %ecx
	shrl	$2, %ecx
	addl	%eax, %r11d
	addl	$2, %r11d
	leal	(%r11,%rax,2), %eax
	jmp	.LBB0_187
.LBB0_175:                              # %if.else.i215
	movl	(%rsp), %ebp
	movl	112(%rsp), %r14d
	movl	%eax, %r12d
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rbx                  # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_176
.LBB0_331:                              # %if.then80.i206
	movl	108(%rsi), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	80(%rsp), %rax                  # 8-byte Reload
	movzwl	849060(%r15,%rax,4), %eax
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, %esi
	movl	%eax, %edi
	movl	%eax, %r8d
	movl	%eax, %r10d
	movl	%eax, %r9d
	movl	%eax, %r15d
	testl	%r12d, %r12d
	jne	.LBB0_177
	jmp	.LBB0_178
.LBB0_189:                              # %if.end47.i
	testl	%ebp, %ebp
	je	.LBB0_192
# %bb.190:                              # %if.else65.i
	movzwl	%r9w, %r14d
	leal	(%r14,%r14,2), %r9d
	movzwl	%r10w, %r10d
	leal	2(%r10), %ebp
	addl	%r10d, %r9d
	addl	$2, %r9d
.LBB0_191:                              # %if.end79.i
	shrl	$2, %r9d
	movzwl	%r8w, %r12d
	leal	(%r12,%r14), %r8d
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r10d
	shrl	$2, %r10d
	movzwl	%di, %r14d
	leal	(%r14,%r12,2), %r8d
	addl	%ebp, %r8d
	shrl	$2, %r8d
	movzwl	%si, %r13d
	leal	(%r12,%r13), %esi
	addl	$2, %esi
	leal	(%rsi,%r14,2), %edi
	shrl	$2, %edi
	movzwl	%dx, %r12d
	leal	(%r12,%r14), %edx
	addl	$2, %edx
	leal	(%rdx,%r13,2), %esi
	shrl	$2, %esi
	movzwl	%cx, %r14d
	leal	(%r14,%r13), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r12,2), %edx
	shrl	$2, %edx
	movzwl	%ax, %eax
	leal	(%r12,%rax), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r14,2), %ecx
	shrl	$2, %ecx
	movzwl	%r15w, %ebp
	leal	(%r14,%rax,2), %eax
	addl	$2, %eax
	addl	%ebp, %eax
	shrl	$2, %eax
.LBB0_192:                              # %LowPassForIntra8x8PredHor.exit
	movslq	296(%rsp), %r14                 # 4-byte Folded Reload
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	8(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	16(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	24(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	32(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	40(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	48(%rbx,%r11,8), %r15
	movw	%r9w, (%r15,%r14,2)
	movw	%r10w, 2(%r15,%r14,2)
	movw	%r8w, 4(%r15,%r14,2)
	movw	%di, 6(%r15,%r14,2)
	movw	%si, 8(%r15,%r14,2)
	movw	%dx, 10(%r15,%r14,2)
	movw	%cx, 12(%r15,%r14,2)
	movw	%ax, 14(%r15,%r14,2)
	movq	56(%rbx,%r11,8), %r11
	movw	%r9w, (%r11,%r14,2)
	movw	%r10w, 2(%r11,%r14,2)
	movw	%r8w, 4(%r11,%r14,2)
	movw	%di, 6(%r11,%r14,2)
	movw	%si, 8(%r11,%r14,2)
	movw	%dx, 10(%r11,%r14,2)
	movw	%cx, 12(%r11,%r14,2)
	movw	%ax, 14(%r11,%r14,2)
	jmp	.LBB0_347
.LBB0_181:                              # %if.else.i285
	movl	144(%rsp), %ebp
	movl	(%rsp), %r15d
	movl	112(%rsp), %r12d
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %r13                  # 8-byte Reload
	movslq	96(%rsp), %r14                  # 4-byte Folded Reload
	testl	%ebp, %ebp
	jne	.LBB0_173
.LBB0_182:                              # %if.end173.i
	movl	108(%rdi), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movzwl	849060(%rax,%rcx,4), %eax
	movl	%eax, %r9d
	movl	%eax, %r10d
	movl	%eax, %r8d
	movl	%eax, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	testl	%r12d, %r12d
	je	.LBB0_188
.LBB0_183:                              # %if.then.i.i
	movswq	126(%rsp), %r11
	movq	(%r13,%r11,8), %r11
	movswq	124(%rsp), %r12
	movzwl	(%r11,%r12,2), %r11d
	testl	%ebp, %ebp
	je	.LBB0_185
# %bb.184:                              # %if.then.i.i
	testl	%r15d, %r15d
	jne	.LBB0_186
.LBB0_185:                              # %if.else.i.i
	testl	%r15d, %r15d
	testl	%ebp, %ebp
	je	.LBB0_188
.LBB0_186:                              # %if.end79.i.i
	movzwl	%r9w, %r15d
	movzwl	%r10w, %r12d
	leal	(%r12,%r15,2), %r9d
	addl	$2, %r9d
	addl	%r11d, %r9d
	shrl	$2, %r9d
	movzwl	%r8w, %r11d
	leal	(%r15,%r12,2), %r8d
	leal	(%r11,%r8), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	%si, %r15d
	leal	(%r12,%r11,2), %r8d
	addl	$2, %r8d
	addl	%r15d, %r8d
	shrl	$2, %r8d
	movzwl	%di, %r12d
	leal	(%r11,%r15,2), %esi
	addl	$2, %esi
	addl	%r12d, %esi
	shrl	$2, %esi
	movzwl	%dx, %r11d
	addl	%r11d, %r15d
	leal	(%r15,%r12,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movzwl	%cx, %r15d
	addl	%r15d, %r12d
	leal	(%r12,%r11,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movzwl	%ax, %eax
	leal	(%rax,%r11), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r15,2), %ecx
	shrl	$2, %ecx
	leal	(%rax,%rax,2), %eax
	addl	$2, %eax
	addl	%r15d, %eax
.LBB0_187:                              # %intra8x8_hor_pred_mbaff.exit
	shrl	$2, %eax
.LBB0_188:                              # %intra8x8_hor_pred_mbaff.exit
	movslq	296(%rsp), %r11                 # 4-byte Folded Reload
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 14(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 12(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 10(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 8(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 6(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 4(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, 2(%r15,%r11,2)
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 14(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 12(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 10(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 8(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 6(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 4(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, 2(%r9,%r11,2)
	movq	8(%rbx,%r14,8), %r9
	movw	%r10w, (%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 14(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 12(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 10(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 8(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 6(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 4(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, 2(%r9,%r11,2)
	movq	16(%rbx,%r14,8), %r9
	movw	%r8w, (%r9,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 14(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 12(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 10(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 8(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 6(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 4(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, 2(%r8,%r11,2)
	movq	24(%rbx,%r14,8), %r8
	movw	%si, (%r8,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 14(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 12(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 10(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 8(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 6(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 4(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, 2(%rsi,%r11,2)
	movq	32(%rbx,%r14,8), %rsi
	movw	%di, (%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 14(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 12(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 10(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 8(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 6(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 4(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, 2(%rsi,%r11,2)
	movq	40(%rbx,%r14,8), %rsi
	movw	%dx, (%rsi,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 14(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 12(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 10(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 8(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 6(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 4(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, 2(%rdx,%r11,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%cx, (%rdx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 14(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 12(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 10(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 8(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 6(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 4(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, 2(%rcx,%r11,2)
	movq	56(%rbx,%r14,8), %rcx
	movw	%ax, (%rcx,%r11,2)
	jmp	.LBB0_347
.LBB0_193:                              # %cond.false.i1019
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_194:                              # %cond.end.i686
	movq	(%rcx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	leaq	849124(%rdx), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	setne	%al
	movq	%rbx, %rdi
	movl	%ebx, %ecx
	movq	104(%rsp), %rbx                 # 8-byte Reload
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%rbx), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_217
# %bb.195:                              # %for.cond23.preheader.i712
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_197
# %bb.196:                              # %cond.true30.i715
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_197:                              # %cond.end36.i719
	cmpl	$0, 160(%rsp)
	movq	%rdi, %r14
	je	.LBB0_199
# %bb.198:                              # %cond.true30.1.i723
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_199:                              # %cond.end36.1.i727
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_201
# %bb.200:                              # %cond.true30.2.i731
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_201:                              # %cond.end36.2.i735
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_203
# %bb.202:                              # %cond.true30.3.i739
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_203:                              # %cond.end36.3.i743
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_205
# %bb.204:                              # %cond.true30.4.i747
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_205:                              # %cond.end36.4.i751
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_207
# %bb.206:                              # %cond.true30.5.i755
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_207:                              # %cond.end36.5.i759
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_209
# %bb.208:                              # %cond.true30.6.i763
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_209:                              # %cond.end36.6.i767
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_211
# %bb.210:                              # %cond.true30.7.i771
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_211:                              # %cond.end36.7.i776
	andl	%edx, %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_213
# %bb.212:                              # %cond.true43.i780
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_213:                              # %cond.end50.i785
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_215
# %bb.214:                              # %cond.true54.i1013
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r13d
.LBB0_215:                              # %cond.end61.i787
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_332
# %bb.216:                              # %cond.true65.i790
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_218
.LBB0_217:                              # %if.else.i1018
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r13d
	movq	%rdi, %r14
	movq	72(%rsp), %r9                   # 8-byte Reload
.LBB0_218:                              # %if.end.i795
	testl	%ebp, %ebp
	setne	%dl
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_222
# %bb.219:                              # %if.end.i795
	testl	%ebp, %ebp
	je	.LBB0_222
# %bb.220:                              # %if.end.i795
	testl	%r12d, %r12d
	je	.LBB0_222
# %bb.221:
	movb	$1, %r9b
	movb	$1, %r8b
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_223
.LBB0_222:                              # %if.then83.i804
	movl	108(%r9), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movl	%r13d, 72(%rsp)                 # 4-byte Spill
	movl	%r12d, 80(%rsp)                 # 4-byte Spill
	movl	%r15d, %r12d
	movq	%rbx, %r15
	movq	%r14, %rbx
	movl	%ecx, %r14d
	movl	%edx, %r13d
	callq	printf@PLT
	movl	%r13d, %r9d
	movl	%r14d, %r8d
	movq	%rbx, %r14
	movq	%r15, %rbx
	movl	%r12d, %r15d
	movl	80(%rsp), %r12d                 # 4-byte Reload
	movl	72(%rsp), %r13d                 # 4-byte Reload
	testl	%r15d, %r15d
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_333
.LBB0_223:                              # %if.then86.i990
	movswq	142(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	testl	%r13d, %r13d
	je	.LBB0_334
.LBB0_224:                              # %if.then121.i821
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testb	%r9b, %r9b
	je	.LBB0_335
.LBB0_225:                              # %if.then156.i925
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	jne	.LBB0_336
.LBB0_226:                              # %if.else252.i857
	movzwl	849060(%rbx,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_337
.LBB0_227:                              # %cond.false.i1922
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_228:                              # %cond.end.i1598
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leaq	849124(%rdx), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%r14, %rbx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	1(%r14), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%r14), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%r14), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%r14), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%r14), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%r14), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%r14), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%r14), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	cmpl	$0, 112(%rsp)
	setne	%al
	movq	%rbx, %rdi
	movl	%ebx, %ecx
	movq	88(%rsp), %rbx                  # 8-byte Reload
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%rbx), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_251
# %bb.229:                              # %for.cond30.preheader.i1624
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_231
# %bb.230:                              # %cond.true37.i1627
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_231:                              # %cond.end43.i1632
	cmpl	$0, 160(%rsp)
	movq	%rdi, %r14
	je	.LBB0_233
# %bb.232:                              # %cond.true37.1.i1636
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_233:                              # %cond.end43.1.i1641
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_235
# %bb.234:                              # %cond.true37.2.i1645
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_235:                              # %cond.end43.2.i1650
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_237
# %bb.236:                              # %cond.true37.3.i1654
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_237:                              # %cond.end43.3.i1659
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_239
# %bb.238:                              # %cond.true37.4.i1663
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_239:                              # %cond.end43.4.i1668
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_241
# %bb.240:                              # %cond.true37.5.i1672
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_241:                              # %cond.end43.5.i1677
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_243
# %bb.242:                              # %cond.true37.6.i1681
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_243:                              # %cond.end43.6.i1686
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_245
# %bb.244:                              # %cond.true37.7.i1690
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_245:                              # %cond.end43.7.i1695
	andl	%edx, %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_247
# %bb.246:                              # %cond.true50.i1699
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_247:                              # %cond.end57.i1704
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_249
# %bb.248:                              # %cond.true61.i
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r13d
.LBB0_249:                              # %cond.end68.i
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_338
# %bb.250:                              # %cond.true72.i1707
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_252
.LBB0_251:                              # %if.else.i1921
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r13d
	movq	%rdi, %r14
	movq	72(%rsp), %r9                   # 8-byte Reload
.LBB0_252:                              # %if.end.i1712
	testl	%ebp, %ebp
	setne	%dl
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_256
# %bb.253:                              # %if.end.i1712
	testl	%ebp, %ebp
	je	.LBB0_256
# %bb.254:                              # %if.end.i1712
	testl	%r12d, %r12d
	je	.LBB0_256
# %bb.255:
	movb	$1, %r9b
	movb	$1, %r8b
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_257
.LBB0_256:                              # %if.then90.i
	movl	108(%r9), %esi
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movl	%r13d, 72(%rsp)                 # 4-byte Spill
	movl	%r12d, 304(%rsp)                # 4-byte Spill
	movl	%r15d, %r12d
	movq	%rbx, %r15
	movq	%r14, %rbx
	movl	%ecx, %r14d
	movl	%edx, %r13d
	callq	printf@PLT
	movl	%r13d, %r9d
	movl	%r14d, %r8d
	movq	%rbx, %r14
	movq	%r15, %rbx
	movl	%r12d, %r15d
	movl	304(%rsp), %r12d                # 4-byte Reload
	movl	72(%rsp), %r13d                 # 4-byte Reload
	testl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_339
.LBB0_257:                              # %if.then93.i
	movswq	142(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	testl	%r13d, %r13d
	je	.LBB0_340
.LBB0_258:                              # %if.then128.i
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testb	%r9b, %r9b
	je	.LBB0_341
.LBB0_259:                              # %if.then163.i
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	jne	.LBB0_342
.LBB0_260:                              # %if.else259.i
	movzwl	849060(%rbx,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_343
.LBB0_261:                              # %cond.false.i1583
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_262:                              # %cond.end.i1396
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r9), %rax
	movl	%esi, %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	849124(%r10), %r15
	leal	-1(%r14), %ebp
	leaq	144(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %edx
	movq	%r15, %rcx
	movq	%r10, 104(%rsp)                 # 8-byte Spill
	callq	getAffNeighbour@PLT
	leal	1(%rbx), %edx
	leaq	160(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	2(%rbx), %edx
	leaq	176(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	3(%rbx), %edx
	leaq	192(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	4(%rbx), %edx
	leaq	208(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	5(%rbx), %edx
	leaq	224(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	6(%rbx), %edx
	leaq	240(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	7(%rbx), %edx
	leaq	256(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	-1(%rbx), %r13d
	leaq	128(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	112(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	leaq	280(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getAffNeighbour@PLT
	movq	104(%rsp), %r10                 # 8-byte Reload
	cmpl	$0, 112(%rsp)
	setne	%al
	movl	%r14d, %ecx
	xorl	$8, %ecx
	movl	%ebx, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 112(%rsp)
	movq	8(%r10), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB0_285
# %bb.263:                              # %for.cond37.preheader.i
	xorl	%edx, %edx
	cmpl	$0, 144(%rsp)
	movl	$0, %ebp
	movq	72(%rsp), %r9                   # 8-byte Reload
	je	.LBB0_265
# %bb.264:                              # %cond.true44.i1409
	movq	13544(%r9), %rcx
	movslq	148(%rsp), %rsi
	movzbl	(%rcx,%rsi), %ebp
.LBB0_265:                              # %cond.end50.i1413
	cmpl	$0, 160(%rsp)
	je	.LBB0_267
# %bb.266:                              # %cond.true44.1.i
	movq	13544(%r9), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_267:                              # %cond.end50.1.i
	xorl	%ecx, %ecx
	cmpl	$0, 176(%rsp)
	movl	$0, %esi
	je	.LBB0_269
# %bb.268:                              # %cond.true44.2.i
	movq	13544(%r9), %rsi
	movslq	180(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_269:                              # %cond.end50.2.i
	andl	$1, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_271
# %bb.270:                              # %cond.true44.3.i
	movq	13544(%r9), %rcx
	movslq	196(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_271:                              # %cond.end50.3.i
	andl	%edx, %ebp
	xorl	%edx, %edx
	cmpl	$0, 208(%rsp)
	movl	$0, %edi
	je	.LBB0_273
# %bb.272:                              # %cond.true44.4.i
	movq	13544(%r9), %rdi
	movslq	212(%rsp), %r8
	movzbl	(%rdi,%r8), %edi
.LBB0_273:                              # %cond.end50.4.i
	andl	%esi, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_275
# %bb.274:                              # %cond.true44.5.i
	movq	13544(%r9), %rdx
	movslq	228(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_275:                              # %cond.end50.5.i
	andl	%ecx, %ebp
	xorl	%ecx, %ecx
	cmpl	$0, 240(%rsp)
	movl	$0, %esi
	je	.LBB0_277
# %bb.276:                              # %cond.true44.6.i
	movq	13544(%r9), %rsi
	movslq	244(%rsp), %r8
	movzbl	(%rsi,%r8), %esi
.LBB0_277:                              # %cond.end50.6.i
	andl	%edi, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_279
# %bb.278:                              # %cond.true44.7.i
	movq	13544(%r9), %rcx
	movslq	260(%rsp), %rdi
	movzbl	(%rcx,%rdi), %ecx
.LBB0_279:                              # %cond.end50.7.i
	andl	%edx, %ebp
	xorl	%r13d, %r13d
	cmpl	$0, 128(%rsp)
	movl	$0, %r15d
	je	.LBB0_281
# %bb.280:                              # %cond.true57.i
	movq	13544(%r9), %rdx
	movslq	132(%rsp), %rdi
	movsbl	(%rdx,%rdi), %r15d
.LBB0_281:                              # %cond.end64.i
	andl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB0_283
# %bb.282:                              # %cond.true68.i
	movq	13544(%r9), %rax
	movslq	116(%rsp), %rdx
	movsbl	(%rax,%rdx), %r13d
.LBB0_283:                              # %cond.end75.i
	andl	%ecx, %ebp
	cmpl	$0, 280(%rsp)
	je	.LBB0_344
# %bb.284:                              # %cond.true79.i
	movq	13544(%r9), %rax
	movslq	284(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	testl	%ebp, %ebp
	jne	.LBB0_287
.LBB0_286:                              # %if.then94.i
	movl	108(%r9), %esi
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	104(%rsp), %r10                 # 8-byte Reload
.LBB0_287:                              # %if.end95.i
	testl	%r15d, %r15d
	je	.LBB0_292
# %bb.288:                              # %if.then97.i
	movswq	142(%rsp), %rax
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rax,8), %rax
	movswq	140(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 2(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 4(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 6(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 8(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 10(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 12(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 14(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 16(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	testl	%r13d, %r13d
	je	.LBB0_293
.LBB0_289:                              # %if.then132.i
	movswq	126(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	124(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %edx
	movw	%dx, 18(%rsp)
	movzwl	2(%rax,%rcx,2), %edx
	movw	%dx, 20(%rsp)
	movzwl	4(%rax,%rcx,2), %edx
	movw	%dx, 22(%rsp)
	movzwl	6(%rax,%rcx,2), %edx
	movw	%dx, 24(%rsp)
	movzwl	8(%rax,%rcx,2), %edx
	movw	%dx, 26(%rsp)
	movzwl	10(%rax,%rcx,2), %edx
	movw	%dx, 28(%rsp)
	movzwl	12(%rax,%rcx,2), %edx
	movw	%dx, 30(%rsp)
	movzwl	14(%rax,%rcx,2), %eax
	movw	%ax, 32(%rsp)
	testl	%ebp, %ebp
	je	.LBB0_294
.LBB0_290:                              # %if.then167.i
	movswq	158(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	156(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 34(%rsp)
	movswq	174(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	172(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 36(%rsp)
	movswq	190(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	188(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 38(%rsp)
	movswq	206(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	204(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 40(%rsp)
	movswq	222(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 42(%rsp)
	movswq	238(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	236(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 44(%rsp)
	movswq	254(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	252(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 46(%rsp)
	movswq	270(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	268(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	movq	%r14, %rbx
	testl	%r12d, %r12d
	je	.LBB0_295
.LBB0_291:                              # %if.then255.i
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_296
.LBB0_285:                              # %if.else.i1582
	movl	144(%rsp), %ebp
	movl	128(%rsp), %r15d
	movl	280(%rsp), %r12d
	movl	%eax, %r13d
	movq	72(%rsp), %r9                   # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_287
	jmp	.LBB0_286
.LBB0_292:                              # %if.else118.i
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	849060(%r10,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	movq	64(%rsp), %rsi                  # 8-byte Reload
	testl	%r13d, %r13d
	jne	.LBB0_289
.LBB0_293:                              # %if.else155.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_290
.LBB0_294:                              # %if.else240.i
	movd	849060(%r10,%rdi,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	movq	%r14, %rbx
	testl	%r12d, %r12d
	jne	.LBB0_291
.LBB0_295:                              # %if.else263.i
	movzwl	849060(%r10,%rdi,4), %eax
.LBB0_296:                              # %intra8x8_hor_up_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movslq	96(%rsp), %r14                  # 4-byte Folded Reload
	movzwl	34(%rsp), %ecx
	movzwl	36(%rsp), %edx
	leal	(%rdx,%rcx), %edi
	incl	%edi
	shrl	%edi
	movzwl	38(%rsp), %r9d
	leal	(%rcx,%rdx,2), %ecx
	leal	(%r9,%rcx), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	leal	(%rdx,%r9), %esi
	incl	%esi
	shrl	%esi
	movzwl	40(%rsp), %r12d
	leal	(%rdx,%r9,2), %ecx
	leal	(%r12,%rcx), %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
	movzwl	42(%rsp), %r15d
	movzwl	44(%rsp), %r10d
	movzwl	46(%rsp), %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movzwl	48(%rsp), %ecx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r14,8), %r13
	movslq	%ebx, %rdx
	movw	%di, (%r13,%rdx,2)
	leal	(%r12,%r9), %ebp
	incl	%ebp
	shrl	%ebp
	leal	(%r9,%r15), %edi
	addl	$2, %edi
	leal	(%rdi,%r12,2), %ebx
	shrl	$2, %ebx
	movw	%r11w, 2(%r13,%rdx,2)
	leal	(%r12,%r15), %edi
	incl	%edi
	shrl	%edi
	leal	(%r12,%r10), %r9d
	addl	$2, %r9d
	leal	(%r9,%r15,2), %r9d
	shrl	$2, %r9d
	movw	%si, 4(%r13,%rdx,2)
	movw	%r8w, 6(%r13,%rdx,2)
	movw	%bp, 8(%r13,%rdx,2)
	movw	%bx, 10(%r13,%rdx,2)
	movw	%di, 12(%r13,%rdx,2)
	movw	%r9w, 14(%r13,%rdx,2)
	movq	8(%rax,%r14,8), %r11
	movw	%si, (%r11,%rdx,2)
	movw	%r8w, 2(%r11,%rdx,2)
	leal	(%r15,%r10), %esi
	incl	%esi
	shrl	%esi
	movq	96(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%r15), %r8d
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r8d
	shrl	$2, %r8d
	movw	%bp, 4(%r11,%rdx,2)
	movw	%bx, 6(%r11,%rdx,2)
	movw	%di, 8(%r11,%rdx,2)
	movw	%r9w, 10(%r11,%rdx,2)
	movw	%si, 12(%r11,%rdx,2)
	movw	%r8w, 14(%r11,%rdx,2)
	movq	16(%rax,%r14,8), %r15
	movw	%bp, (%r15,%rdx,2)
	movw	%bx, 2(%r15,%rdx,2)
	leal	(%r10,%r12), %r11d
	incl	%r11d
	shrl	%r11d
	addl	%ecx, %r10d
	leal	(%r10,%r12,2), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	movw	%di, 4(%r15,%rdx,2)
	movw	%r9w, 6(%r15,%rdx,2)
	movw	%si, 8(%r15,%rdx,2)
	movw	%r8w, 10(%r15,%rdx,2)
	movw	%r11w, 12(%r15,%rdx,2)
	movw	%bp, 14(%r15,%rdx,2)
	movq	24(%rax,%r14,8), %rbx
	movw	%di, (%rbx,%rdx,2)
	movw	%r9w, 2(%rbx,%rdx,2)
	leal	(%rcx,%rcx,2), %edi
	addl	%r12d, %edi
	addl	$2, %edi
	leal	(%r12,%rcx), %r9d
	incl	%r9d
	shrl	%r9d
	shrl	$2, %edi
	movw	%si, 4(%rbx,%rdx,2)
	movw	%r8w, 6(%rbx,%rdx,2)
	movw	%r11w, 8(%rbx,%rdx,2)
	movw	%bp, 10(%rbx,%rdx,2)
	movw	%r9w, 12(%rbx,%rdx,2)
	movw	%di, 14(%rbx,%rdx,2)
	movq	32(%rax,%r14,8), %r10
	movw	%si, (%r10,%rdx,2)
	movw	%r8w, 2(%r10,%rdx,2)
	movw	%r11w, 4(%r10,%rdx,2)
	movw	%bp, 6(%r10,%rdx,2)
	movw	%r9w, 8(%r10,%rdx,2)
	movw	%di, 10(%r10,%rdx,2)
	movw	%cx, 12(%r10,%rdx,2)
	movq	40(%rax,%r14,8), %rsi
	movw	%r11w, (%rsi,%rdx,2)
	movw	%bp, 2(%rsi,%rdx,2)
	movw	%r9w, 4(%rsi,%rdx,2)
	movw	%di, 6(%rsi,%rdx,2)
	movw	%cx, 8(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%r9w, (%rsi,%rdx,2)
	movw	%di, 2(%rsi,%rdx,2)
	movw	%cx, 4(%rsi,%rdx,2)
	movq	32(%rax,%r14,8), %rsi
	movw	%cx, 14(%rsi,%rdx,2)
	movq	40(%rax,%r14,8), %rsi
	movw	%cx, 14(%rsi,%rdx,2)
	movq	40(%rax,%r14,8), %rsi
	movw	%cx, 12(%rsi,%rdx,2)
	movq	40(%rax,%r14,8), %rsi
	movw	%cx, 10(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%cx, 14(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%cx, 12(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%cx, 10(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%cx, 8(%rsi,%rdx,2)
	movq	48(%rax,%r14,8), %rsi
	movw	%cx, 6(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 14(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 12(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 10(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 8(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 6(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 4(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rsi
	movw	%cx, 2(%rsi,%rdx,2)
	movq	56(%rax,%r14,8), %rax
	movw	%cx, (%rax,%rdx,2)
	jmp	.LBB0_347
.LBB0_314:                              # %if.else335.i
	testl	%r15d, %r15d
	je	.LBB0_345
# %bb.315:                              # %if.else335.i
	testl	%ebp, %ebp
	jne	.LBB0_345
# %bb.316:                              # %if.then339.i
	movdqu	2(%rsp), %xmm0
.LBB0_317:                              # %if.end371.i
	pxor	%xmm1, %xmm1
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm2            # xmm2 = xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	paddd	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	$4, %eax
	shrl	$3, %eax
	jmp	.LBB0_346
.LBB0_297:                              # %if.end.thread.i
	movl	108(%r9), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	%ebp, %r9d
	movl	$0, %r8d
	testl	%r15d, %r15d
	jne	.LBB0_51
.LBB0_298:                              # %if.else107.i
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movl	849060(%rbx,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	testl	%r13d, %r13d
	jne	.LBB0_52
.LBB0_299:                              # %if.else144.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testb	%r9b, %r9b
	jne	.LBB0_53
.LBB0_300:                              # %if.else229.i
	movl	849060(%rbx,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	movq	%r14, %r13
	testb	%r8b, %r8b
	je	.LBB0_54
.LBB0_301:                              # %if.then244.i
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_302:                              # %intra8x8_diag_down_right_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movslq	96(%rsp), %rdx                  # 4-byte Folded Reload
	movzwl	48(%rsp), %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movzwl	44(%rsp), %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movzwl	46(%rsp), %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movzwl	36(%rsp), %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movzwl	34(%rsp), %r10d
	movzwl	(%rsp), %r8d
	leal	2(%rax,%r8), %r14d
	movzwl	2(%rsp), %r11d
	leal	(%r10,%r11), %edi
	addl	$2, %edi
	leal	(%rdi,%r8,2), %eax
	movzwl	4(%rsp), %ebx
	addl	%ebx, %r8d
	leal	(%r8,%r11,2), %r9d
	addl	$2, %r9d
	movq	6(%rsp), %r15
	movzwl	%r15w, %r12d
	addl	%r12d, %r11d
	movq	%r15, %xmm1
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movzwl	14(%rsp), %ebp
	movd	%ebp, %xmm2
	movd	%xmm0, %r15d
	addl	%ebx, %r15d
	leal	(%r11,%rbx,2), %ebp
	addl	$2, %ebp
	movzwl	42(%rsp), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leal	2(%r15,%r12,2), %ebx
	movzwl	16(%rsp), %r11d
	movd	%r11d, %xmm3
	movzwl	40(%rsp), %r12d
	movl	%eax, %r8d
	shrl	$2, %r8d
	shrl	$2, %r9d
	movslq	%r13d, %r11
	shrl	$2, %ebp
	shrl	$2, %ebx
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	movdqa	%xmm1, %xmm0
	shufps	$46, %xmm3, %xmm0               # xmm0 = xmm0[2,3],xmm3[2,0]
	paddd	%xmm1, %xmm0
	movss	%xmm2, %xmm1                    # xmm1 = xmm2[0],xmm1[1,2,3]
	paddd	%xmm1, %xmm1
	pshufd	$57, %xmm1, %xmm1               # xmm1 = xmm1[1,2,3,0]
	paddd	%xmm1, %xmm0
	paddd	.LCPI0_0(%rip), %xmm0
	psrld	$2, %xmm0
	pshuflw	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm2              # xmm2 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	movzwl	38(%rsp), %r13d
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%rdx,8), %rax
	movw	%r8w, (%rax,%r11,2)
	movw	%r9w, 2(%rax,%r11,2)
	movw	%bp, 4(%rax,%r11,2)
	movw	%bx, 6(%rax,%r11,2)
	movq	%xmm2, 8(%rax,%r11,2)
	leal	(%r14,%r10,2), %r14d
	shrl	$2, %r14d
	movq	8(%rcx,%rdx,8), %rax
	movw	%r14w, (%rax,%r11,2)
	movw	%r8w, 2(%rax,%r11,2)
	movw	%r9w, 4(%rax,%r11,2)
	movw	%bp, 6(%rax,%r11,2)
	movw	%bx, 8(%rax,%r11,2)
	movd	%xmm1, 10(%rax,%r11,2)
	pextrw	$4, %xmm0, %esi
	movw	%si, 14(%rax,%r11,2)
	leal	(%r10,%r13), %eax
	addl	$2, %eax
	movq	64(%rsp), %rdi                  # 8-byte Reload
	leal	(%rax,%rdi,2), %r10d
	shrl	$2, %r10d
	movq	%rdx, %r15
	movq	16(%rcx,%rdx,8), %rax
	movw	%r10w, (%rax,%r11,2)
	movw	%r14w, 2(%rax,%r11,2)
	movw	%r8w, 4(%rax,%r11,2)
	movl	%r9d, %esi
	movw	%si, 6(%rax,%r11,2)
	movw	%bp, 8(%rax,%r11,2)
	movw	%bx, 10(%rax,%r11,2)
	movd	%xmm1, 12(%rax,%r11,2)
	leal	(%rdi,%r12), %eax
	addl	$2, %eax
	leal	(%rax,%r13,2), %r9d
	shrl	$2, %r9d
	movq	24(%rcx,%rdx,8), %rax
	movw	%r9w, (%rax,%r11,2)
	movw	%r10w, 2(%rax,%r11,2)
	movw	%r14w, 4(%rax,%r11,2)
	movw	%r8w, 6(%rax,%r11,2)
	movw	%si, 8(%rax,%r11,2)
	movl	%esi, %edi
	movw	%bp, 10(%rax,%r11,2)
	movw	%bx, 12(%rax,%r11,2)
	movd	%xmm0, %esi
	movw	%si, 14(%rax,%r11,2)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%r13), %eax
	addl	$2, %eax
	leal	(%rax,%r12,2), %r13d
	shrl	$2, %r13d
	movq	32(%rcx,%rdx,8), %rax
	movw	%r13w, (%rax,%r11,2)
	movw	%r9w, 2(%rax,%r11,2)
	movw	%r10w, 4(%rax,%r11,2)
	movw	%r14w, 6(%rax,%r11,2)
	movw	%r8w, 8(%rax,%r11,2)
	movw	%di, 10(%rax,%r11,2)
	movl	%edi, 304(%rsp)                 # 4-byte Spill
	movw	%bp, 12(%rax,%r11,2)
	movw	%bx, 14(%rax,%r11,2)
	movq	88(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%r12), %eax
	addl	$2, %eax
	leal	(%rax,%rsi,2), %eax
	movq	%rsi, %rbx
	shrl	$2, %eax
	movq	40(%rcx,%r15,8), %rsi
	movw	%ax, (%rsi,%r11,2)
	movw	%r13w, 2(%rsi,%r11,2)
	movw	%r9w, 4(%rsi,%r11,2)
	movw	%r10w, 6(%rsi,%r11,2)
	movw	%r14w, 8(%rsi,%r11,2)
	movw	%r8w, 10(%rsi,%r11,2)
	movw	%di, 12(%rsi,%r11,2)
	movw	%bp, 14(%rsi,%r11,2)
	movq	72(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%rdx,2), %esi
	movq	%rdx, %rdi
	addl	%ebx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movq	48(%rcx,%r15,8), %rbx
	movw	%si, (%rbx,%r11,2)
	movw	%ax, 2(%rbx,%r11,2)
	movw	%r13w, 4(%rbx,%r11,2)
	movw	%r9w, 6(%rbx,%r11,2)
	movw	%r10w, 8(%rbx,%r11,2)
	movw	%r14w, 10(%rbx,%r11,2)
	movw	%r8w, 12(%rbx,%r11,2)
	movl	304(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 14(%rbx,%r11,2)
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addl	%edi, %edx
	addl	$2, %edx
	leal	(%rdx,%r12,2), %edx
	movq	56(%rcx,%r15,8), %rcx
	shrl	$2, %edx
	movw	%dx, (%rcx,%r11,2)
	movw	%si, 2(%rcx,%r11,2)
	movw	%ax, 4(%rcx,%r11,2)
	movw	%r13w, 6(%rcx,%r11,2)
	movw	%r9w, 8(%rcx,%r11,2)
	movw	%r10w, 10(%rcx,%r11,2)
	movw	%r14w, 12(%rcx,%r11,2)
	movw	%r8w, 14(%rcx,%r11,2)
	jmp	.LBB0_347
.LBB0_303:
	xorl	%esi, %esi
	testl	%r15d, %r15d
	jne	.LBB0_80
	jmp	.LBB0_304
.LBB0_318:
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jne	.LBB0_109
	jmp	.LBB0_319
.LBB0_324:
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jne	.LBB0_138
	jmp	.LBB0_325
.LBB0_330:
	xorl	%r14d, %r14d
	testl	%ebp, %ebp
	jne	.LBB0_176
	jmp	.LBB0_331
.LBB0_332:                              # %if.end.thread.i1012
	movl	108(%r9), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	%ebp, %r9d
	movl	$0, %r8d
	testl	%r15d, %r15d
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB0_223
.LBB0_333:                              # %if.else107.i807
	movl	849060(%rbx,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jne	.LBB0_224
.LBB0_334:                              # %if.else144.i981
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testb	%r9b, %r9b
	jne	.LBB0_225
.LBB0_335:                              # %if.else229.i844
	movl	849060(%rbx,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	je	.LBB0_226
.LBB0_336:                              # %if.then244.i918
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_337:                              # %intra8x8_vert_right_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movslq	96(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movzwl	(%rsp), %eax
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movzwl	2(%rsp), %r9d
	leal	(%r9,%rax), %r8d
	incl	%r8d
	shrl	%r8d
	movzwl	4(%rsp), %r11d
	leal	(%r9,%r11), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	movzwl	6(%rsp), %r15d
	leal	(%r15,%r11), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movzwl	8(%rsp), %r12d
	leal	(%r15,%r12), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movzwl	10(%rsp), %r13d
	leal	(%r12,%r13), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	movzwl	12(%rsp), %ebp
	leal	1(%r13,%rbp), %eax
	shrl	%eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movzwl	14(%rsp), %ecx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rbp), %r10d
	incl	%r10d
	shrl	%r10d
	movl	%r10d, 388(%rsp)                # 4-byte Spill
	movzwl	16(%rsp), %eax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rax), %r14d
	incl	%r14d
	shrl	%r14d
	movslq	296(%rsp), %rax                 # 4-byte Folded Reload
	movzwl	44(%rsp), %edx
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	movzwl	40(%rsp), %ecx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movzwl	42(%rsp), %ecx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movzwl	36(%rsp), %ecx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movzwl	38(%rsp), %ecx
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	movzwl	34(%rsp), %esi
	movzwl	46(%rsp), %edx
	movl	%edx, 340(%rsp)                 # 4-byte Spill
	movq	376(%rsp), %rbx                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	(%rbx,%rcx,8), %rdx
	movl	%r8d, 304(%rsp)                 # 4-byte Spill
	movw	%r8w, (%rdx,%rax,2)
	movl	96(%rsp), %edi                  # 4-byte Reload
	movw	%di, 2(%rdx,%rax,2)
	movl	72(%rsp), %edi                  # 4-byte Reload
	movw	%di, 4(%rdx,%rax,2)
	movl	88(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 6(%rdx,%rax,2)
	movl	104(%rsp), %edi                 # 4-byte Reload
	movw	%di, 8(%rdx,%rax,2)
	movl	64(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 10(%rdx,%rax,2)
	movw	%r10w, 12(%rdx,%rax,2)
	movw	%r14w, 14(%rdx,%rax,2)
	movq	344(%rsp), %r10                 # 8-byte Reload
	leal	(%rsi,%r10,2), %ecx
	addl	$2, %ecx
	addl	%r9d, %ecx
	movl	%ecx, %r14d
	leal	(%r10,%r11), %edx
	addl	$2, %edx
	leal	(%rdx,%r9,2), %edx
	addl	%r15d, %r9d
	leal	(%r9,%r11,2), %edi
	addl	$2, %edi
	addl	%r12d, %r11d
	leal	(%r11,%r15,2), %r11d
	addl	$2, %r11d
	addl	%r13d, %r15d
	leal	(%r15,%r12,2), %r15d
	addl	$2, %r15d
	addl	%ebp, %r12d
	leal	(%r12,%r13,2), %r12d
	addl	$2, %r12d
	movq	320(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %r13d
	leal	2(%r13,%rbp,2), %r13d
	addl	328(%rsp), %ebp                 # 4-byte Folded Reload
	leal	2(%rbp,%rcx,2), %r9d
	shrl	$2, %r14d
	movl	%r14d, 360(%rsp)                # 4-byte Spill
	shrl	$2, %edx
	movl	%edx, %ecx
	movl	%edx, 316(%rsp)                 # 4-byte Spill
	shrl	$2, %edi
	movl	%edi, 320(%rsp)                 # 4-byte Spill
	shrl	$2, %r11d
	shrl	$2, %r15d
	movl	%r15d, 312(%rsp)                # 4-byte Spill
	shrl	$2, %r12d
	movl	%r12d, 328(%rsp)                # 4-byte Spill
	shrl	$2, %r13d
	shrl	$2, %r9d
	movq	80(%rsp), %rdx                  # 8-byte Reload
	movq	8(%rbx,%rdx,8), %rbp
	movw	%r14w, (%rbp,%rax,2)
	movw	%cx, 2(%rbp,%rax,2)
	movw	%di, 4(%rbp,%rax,2)
	movw	%r11w, 6(%rbp,%rax,2)
	movl	%r11d, %edi
	movl	%r11d, 384(%rsp)                # 4-byte Spill
	movw	%r15w, 8(%rbp,%rax,2)
	movw	%r12w, 10(%rbp,%rax,2)
	movw	%r13w, 12(%rbp,%rax,2)
	movw	%r9w, 14(%rbp,%rax,2)
	movq	368(%rsp), %rcx                 # 8-byte Reload
	leal	(%r10,%rcx), %r9d
	addl	$2, %r9d
	movq	%rsi, %r15
	leal	(%r9,%rsi,2), %esi
	shrl	$2, %esi
	movl	%esi, 344(%rsp)                 # 4-byte Spill
	movq	16(%rbx,%rdx,8), %rbp
	movq	%rdx, %r12
	movw	%si, (%rbp,%rax,2)
	movw	%r8w, 2(%rbp,%rax,2)
	movl	96(%rsp), %r8d                  # 4-byte Reload
	movw	%r8w, 4(%rbp,%rax,2)
	movl	72(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 6(%rbp,%rax,2)
	movl	88(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 8(%rbp,%rax,2)
	movl	104(%rsp), %r10d                # 4-byte Reload
	movw	%r10w, 10(%rbp,%rax,2)
	movl	64(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 12(%rbp,%rax,2)
	movl	388(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 14(%rbp,%rax,2)
	movq	296(%rsp), %rdx                 # 8-byte Reload
	leal	(%r15,%rdx), %esi
	addl	$2, %esi
	leal	(%rsi,%rcx,2), %r15d
	shrl	$2, %r15d
	movq	24(%rbx,%r12,8), %rbp
	movw	%r15w, (%rbp,%rax,2)
	movl	360(%rsp), %r14d                # 4-byte Reload
	movw	%r14w, 2(%rbp,%rax,2)
	movl	316(%rsp), %esi                 # 4-byte Reload
	movw	%si, 4(%rbp,%rax,2)
	movl	320(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 6(%rbp,%rax,2)
	movw	%di, 8(%rbp,%rax,2)
	movl	312(%rsp), %r9d                 # 4-byte Reload
	movw	%r9w, 10(%rbp,%rax,2)
	movl	328(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 12(%rbp,%rax,2)
	movw	%r13w, 14(%rbp,%rax,2)
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movq	368(%rsp), %rdi                 # 8-byte Reload
	addl	%ecx, %edi
	addl	$2, %edi
	leal	(%rdi,%rdx,2), %edi
	shrl	$2, %edi
	movq	32(%rbx,%r12,8), %r13
	movw	%di, (%r13,%rax,2)
	movl	344(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 2(%r13,%rax,2)
	movl	304(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 4(%r13,%rax,2)
	movw	%r8w, 6(%r13,%rax,2)
	movw	%r11w, 8(%r13,%rax,2)
	movl	88(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 10(%r13,%rax,2)
	movw	%r10w, 12(%r13,%rax,2)
	movl	64(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 14(%r13,%rax,2)
	movq	400(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rcx,2), %ebp
	addl	$2, %ebp
	movq	%rcx, %r10
	addl	296(%rsp), %ebp                 # 4-byte Folded Reload
	shrl	$2, %ebp
	movq	%r12, %r13
	movq	%rbx, %rcx
	movq	40(%rbx,%r12,8), %r8
	movw	%bp, (%r8,%rax,2)
	movw	%r15w, 2(%r8,%rax,2)
	movw	%r14w, 4(%r8,%rax,2)
	movw	%si, 6(%r8,%rax,2)
	movl	320(%rsp), %ebx                 # 4-byte Reload
	movw	%bx, 8(%r8,%rax,2)
	movl	384(%rsp), %esi                 # 4-byte Reload
	movw	%si, 10(%r8,%rax,2)
	movw	%r9w, 12(%r8,%rax,2)
	movl	328(%rsp), %r9d                 # 4-byte Reload
	movw	%r9w, 14(%r8,%rax,2)
	movq	352(%rsp), %r12                 # 8-byte Reload
	leal	(%r10,%r12), %r8d
	addl	$2, %r8d
	leal	(%r8,%rdx,2), %r8d
	movq	%rdx, %r9
	shrl	$2, %r8d
	movq	%rcx, %rdx
	movq	48(%rcx,%r13,8), %r10
	movw	%r8w, (%r10,%rax,2)
	movw	%di, 2(%r10,%rax,2)
	movl	344(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 4(%r10,%rax,2)
	movl	304(%rsp), %edi                 # 4-byte Reload
	movw	%di, 6(%r10,%rax,2)
	movl	96(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 8(%r10,%rax,2)
	movl	72(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 10(%r10,%rax,2)
	movw	%r11w, 12(%r10,%rax,2)
	movl	104(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 14(%r10,%rax,2)
	leal	(%r9,%r12,2), %edi
	addl	$2, %edi
	addl	340(%rsp), %edi                 # 4-byte Folded Reload
	movq	56(%rdx,%r13,8), %r8
	shrl	$2, %edi
	movw	%di, (%r8,%rax,2)
	movw	%bp, 2(%r8,%rax,2)
	movw	%r15w, 4(%r8,%rax,2)
	movl	360(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 6(%r8,%rax,2)
	movl	316(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 8(%r8,%rax,2)
	movw	%bx, 10(%r8,%rax,2)
	movw	%si, 12(%r8,%rax,2)
	movl	312(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 14(%r8,%rax,2)
	jmp	.LBB0_347
.LBB0_338:                              # %if.end.thread.i1918
	movl	108(%r9), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	%ebp, %r9d
	movl	$0, %r8d
	testl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB0_257
.LBB0_339:                              # %if.else114.i
	movl	849060(%rbx,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jne	.LBB0_258
.LBB0_340:                              # %if.else151.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testb	%r9b, %r9b
	jne	.LBB0_259
.LBB0_341:                              # %if.else236.i
	movl	849060(%rbx,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	movq	%r14, 296(%rsp)                 # 8-byte Spill
	je	.LBB0_260
.LBB0_342:                              # %if.then251.i
	movswq	294(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	292(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_343:                              # %intra8x8_hor_down_pred_mbaff.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movslq	96(%rsp), %rbx                  # 4-byte Folded Reload
	movzwl	48(%rsp), %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movzwl	46(%rsp), %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movzwl	44(%rsp), %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movzwl	36(%rsp), %edx
	movzwl	34(%rsp), %r13d
	movzwl	(%rsp), %eax
	leal	2(%rdx,%rax), %r14d
	leal	1(%r13,%rax), %r9d
	movzwl	2(%rsp), %ecx
	leal	2(%r13,%rcx), %r8d
	leal	(%r8,%rax,2), %r10d
	movq	4(%rsp), %r8
	movzwl	%r8w, %r11d
	addl	%r11d, %eax
	movq	%r8, %xmm0
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	pshufd	$85, %xmm0, %xmm2               # xmm2 = xmm0[1,1,1,1]
	movzwl	12(%rsp), %r8d
	movd	%r8d, %xmm1
	movd	%xmm2, %r8d
	addl	%ecx, %r8d
	leal	(%rax,%rcx,2), %ebp
	addl	$2, %ebp
	movzwl	42(%rsp), %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leal	2(%r8,%r11,2), %r12d
	movzwl	14(%rsp), %eax
	movd	%eax, %xmm2
	movzwl	40(%rsp), %r15d
	shrl	%r9d
	shrl	$2, %r10d
	movslq	296(%rsp), %r8                  # 4-byte Folded Reload
	shrl	$2, %ebp
	shrl	$2, %r12d
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movdqa	%xmm0, %xmm3
	shufps	$46, %xmm2, %xmm3               # xmm3 = xmm3[2,3],xmm2[2,0]
	paddd	%xmm0, %xmm3
	movss	%xmm1, %xmm0                    # xmm0 = xmm1[0],xmm0[1,2,3]
	paddd	%xmm0, %xmm0
	pshufd	$57, %xmm0, %xmm0               # xmm0 = xmm0[1,2,3,0]
	paddd	%xmm0, %xmm3
	paddd	.LCPI0_0(%rip), %xmm3
	psrld	$2, %xmm3
	pshuflw	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	movzwl	38(%rsp), %esi
	movq	104(%rsp), %r11                 # 8-byte Reload
	movq	(%r11,%rbx,8), %rax
	movq	%r11, %rdi
	movw	%r9w, (%rax,%r8,2)
	movw	%r10w, 2(%rax,%r8,2)
	movw	%bp, 4(%rax,%r8,2)
	movw	%r12w, 6(%rax,%r8,2)
	movq	%xmm1, 8(%rax,%r8,2)
	movq	%rdx, %rax
	addl	%r13d, %edx
	incl	%edx
	shrl	%edx
	leal	(%r14,%r13,2), %r11d
	shrl	$2, %r11d
	movq	8(%rdi,%rbx,8), %r14
	movw	%dx, (%r14,%r8,2)
	movw	%r11w, 2(%r14,%r8,2)
	movl	%r9d, %ecx
	movl	%r9d, 80(%rsp)                  # 4-byte Spill
	movw	%cx, 4(%r14,%r8,2)
	movw	%r10w, 6(%r14,%r8,2)
	movw	%bp, 8(%r14,%r8,2)
	movw	%r12w, 10(%r14,%r8,2)
	movd	%xmm0, 12(%r14,%r8,2)
	movq	%rax, %r9
	leal	(%rsi,%rax), %r14d
	incl	%r14d
	shrl	%r14d
	addl	%esi, %r13d
	addl	$2, %r13d
	leal	(%r13,%rax,2), %r13d
	shrl	$2, %r13d
	movq	16(%rdi,%rbx,8), %rax
	movw	%r14w, (%rax,%r8,2)
	movw	%r13w, 2(%rax,%r8,2)
	movw	%dx, 4(%rax,%r8,2)
	movw	%r11w, 6(%rax,%r8,2)
	movw	%cx, 8(%rax,%r8,2)
	movw	%r10w, 10(%rax,%r8,2)
	movw	%bp, 12(%rax,%r8,2)
	movw	%r12w, 14(%rax,%r8,2)
	leal	(%r15,%rsi), %r12d
	incl	%r12d
	shrl	%r12d
	leal	(%r9,%r15), %eax
	addl	$2, %eax
	leal	(%rax,%rsi,2), %ebp
	shrl	$2, %ebp
	movq	24(%rdi,%rbx,8), %rax
	movq	%rdi, %rcx
	movw	%r12w, (%rax,%r8,2)
	movw	%bp, 2(%rax,%r8,2)
	movw	%r14w, 4(%rax,%r8,2)
	movw	%r13w, 6(%rax,%r8,2)
	movw	%dx, 8(%rax,%r8,2)
	movw	%r11w, 10(%rax,%r8,2)
	movl	80(%rsp), %edi                  # 4-byte Reload
	movw	%di, 12(%rax,%r8,2)
	movw	%r10w, 14(%rax,%r8,2)
	movq	64(%rsp), %r10                  # 8-byte Reload
	leal	(%r10,%r15), %edi
	incl	%edi
	shrl	%edi
	leal	(%r10,%rsi), %eax
	addl	$2, %eax
	leal	(%rax,%r15,2), %r9d
	shrl	$2, %r9d
	movq	%rbx, %rsi
	movq	32(%rcx,%rbx,8), %rax
	movq	%rcx, %rbx
	movw	%di, (%rax,%r8,2)
	movw	%r9w, 2(%rax,%r8,2)
	movw	%r12w, 4(%rax,%r8,2)
	movw	%bp, 6(%rax,%r8,2)
	movw	%r14w, 8(%rax,%r8,2)
	movw	%r13w, 10(%rax,%r8,2)
	movw	%dx, 12(%rax,%r8,2)
	movw	%r11w, 14(%rax,%r8,2)
	movq	88(%rsp), %rdx                  # 8-byte Reload
	leal	(%r10,%rdx), %eax
	incl	%eax
	shrl	%eax
	leal	(%rdx,%r15), %ecx
	addl	$2, %ecx
	movq	%rdx, %r11
	leal	(%rcx,%r10,2), %ecx
	shrl	$2, %ecx
	movq	40(%rbx,%rsi,8), %rdx
	movw	%ax, (%rdx,%r8,2)
	movw	%cx, 2(%rdx,%r8,2)
	movw	%di, 4(%rdx,%r8,2)
	movw	%r9w, 6(%rdx,%r8,2)
	movw	%r12w, 8(%rdx,%r8,2)
	movw	%bp, 10(%rdx,%r8,2)
	movw	%r14w, 12(%rdx,%r8,2)
	movw	%r13w, 14(%rdx,%r8,2)
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	%r11, %r14
	leal	(%rbx,%r11), %edx
	incl	%edx
	shrl	%edx
	leal	(%rbx,%r11,2), %r11d
	movq	%r14, %r13
	movq	%rbx, %r15
	addl	%r11d, %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movq	%rsi, %r14
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	48(%rsi,%r14,8), %r11
	movw	%dx, (%r11,%r8,2)
	movw	%r10w, 2(%r11,%r8,2)
	movw	%ax, 4(%r11,%r8,2)
	movw	%cx, 6(%r11,%r8,2)
	movw	%di, 8(%r11,%r8,2)
	movw	%r9w, 10(%r11,%r8,2)
	movw	%r12w, 12(%r11,%r8,2)
	movw	%bp, 14(%r11,%r8,2)
	movq	96(%rsp), %rbx                  # 8-byte Reload
	leal	1(%r15,%rbx), %r11d
	leal	(%rbx,%r15,2), %ebx
	addl	%r13d, %ebx
	addl	$2, %ebx
	movq	56(%rsi,%r14,8), %rsi
	shrl	%r11d
	movw	%r11w, (%rsi,%r8,2)
	shrl	$2, %ebx
	movw	%bx, 2(%rsi,%r8,2)
	movw	%dx, 4(%rsi,%r8,2)
	movw	%r10w, 6(%rsi,%r8,2)
	movw	%ax, 8(%rsi,%r8,2)
	movw	%cx, 10(%rsi,%r8,2)
	movw	%di, 12(%rsi,%r8,2)
	movw	%r9w, 14(%rsi,%r8,2)
	jmp	.LBB0_347
.LBB0_344:
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jne	.LBB0_287
	jmp	.LBB0_286
.LBB0_345:                              # %if.else365.i
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	849060(%r13,%rax,4), %eax
.LBB0_346:                              # %if.end371.i
	movslq	%r12d, %rcx
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	8(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	16(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	24(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	32(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	40(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	48(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 8(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 10(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 12(%rdx,%rcx,2)
	movq	56(%rbx,%r14,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
.LBB0_347:                              # %cleanup
	xorl	%eax, %eax
.LBB0_348:                              # %cleanup
	addq	$408, %rsp                      # imm = 0x198
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
	.size	intrapred8x8_mbaff, .Lfunc_end0-intrapred8x8_mbaff
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_12
	.quad	.LBB0_6
	.quad	.LBB0_8
	.quad	.LBB0_4
	.quad	.LBB0_14
	.quad	.LBB0_16
	.quad	.LBB0_10
	.quad	.LBB0_18
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function LowPassForIntra8x8Pred
.LCPI1_0:
	.long	65535                           # 0xffff
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_1:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.text
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
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
	movzwl	(%rdi), %r8d
	movzwl	2(%rdi), %r9d
	movzwl	%r9w, %ebx
	movzwl	4(%rdi), %r10d
	movzwl	%r10w, %r14d
	movzwl	6(%rdi), %eax
	movdqu	8(%rdi), %xmm1
	movq	24(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movdqu	32(%rdi), %xmm2
	movzwl	48(%rdi), %r11d
	testl	%esi, %esi
	je	.LBB1_8
# %bb.1:                                # %if.then
	movzwl	%r8w, %r15d
	testl	%edx, %edx
	sete	%bpl
	testl	%ecx, %ecx
	sete	%r12b
	orb	%bpl, %r12b
	jne	.LBB1_3
# %bb.2:                                # %if.then4
	pextrw	$1, %xmm2, %edx
	leal	(%rdx,%r15,2), %edx
	jmp	.LBB1_5
.LBB1_8:                                # %if.end47
	testl	%edx, %edx
	je	.LBB1_12
# %bb.9:                                # %if.else65
	leal	(%rbx,%rbx,2), %r9d
	leal	2(%r14), %edx
	addl	%r14d, %r9d
	addl	$2, %r9d
	jmp	.LBB1_10
.LBB1_3:                                # %if.else
	testl	%edx, %edx
	je	.LBB1_6
# %bb.4:                                # %if.then15
	leal	(%r15,%r15,2), %edx
.LBB1_5:                                # %if.then51
	leal	(%rdx,%rbx), %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
	leal	(%r15,%rbx,2), %edx
	leal	(%r14,%rdx), %r9d
	addl	$2, %r9d
	leal	2(%r14), %edx
.LBB1_10:                               # %if.end79
	movd	%eax, %xmm3
	pand	.LCPI1_0(%rip), %xmm3
	shrl	$2, %r9d
	movdqa	%xmm1, %xmm4
	pslldq	$2, %xmm4                       # xmm4 = zero,zero,xmm4[0,1,2,3,4,5,6,7,8,9,10,11,12,13]
	por	%xmm4, %xmm3
	pxor	%xmm5, %xmm5
	punpckhwd	%xmm5, %xmm4            # xmm4 = xmm4[4],xmm5[4],xmm4[5],xmm5[5],xmm4[6],xmm5[6],xmm4[7],xmm5[7]
	punpcklwd	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1],xmm3[2],xmm5[2],xmm3[3],xmm5[3]
	leal	(%rbx,%r14,2), %r10d
	movzwl	%ax, %eax
	addl	%eax, %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	leal	(%rdx,%rax,2), %edx
	pshufd	$85, %xmm3, %xmm6               # xmm6 = xmm3[1,1,1,1]
	movd	%xmm6, %eax
	addl	%edx, %eax
	shrl	$2, %eax
	movd	26(%rdi), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	psrldq	$14, %xmm1                      # xmm1 = xmm1[14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	punpcklwd	%xmm5, %xmm1            # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1],xmm1[2],xmm5[2],xmm1[3],xmm5[3]
	movdqa	%xmm1, %xmm9
	shufps	$48, %xmm4, %xmm9               # xmm9 = xmm9[0,0],xmm4[3,0]
	movaps	%xmm4, %xmm7
	movd	30(%rdi), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	movaps	%xmm4, %xmm8
	shufps	$78, %xmm1, %xmm8               # xmm8 = xmm8[2,3],xmm1[0,1]
	paddd	%xmm4, %xmm8
	psrlq	$16, %xmm0
	punpckldq	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1]
	punpcklwd	%xmm5, %xmm0            # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3]
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pshufd	$237, %xmm1, %xmm10             # xmm10 = xmm1[1,3,2,3]
	punpckldq	%xmm5, %xmm10           # xmm10 = xmm10[0],xmm5[0],xmm10[1],xmm5[1]
	movdqa	.LCPI1_1(%rip), %xmm5           # xmm5 = [2,2,2,2]
	paddd	%xmm10, %xmm10
	paddd	%xmm0, %xmm1
	paddd	%xmm5, %xmm1
	paddd	%xmm10, %xmm1
	psrld	$2, %xmm1
	pshuflw	$232, %xmm1, %xmm10             # xmm10 = xmm1[0,2,2,3,4,5,6,7]
	movdqa	%xmm3, %xmm1
	shufps	$78, %xmm4, %xmm1               # xmm1 = xmm1[2,3],xmm4[0,1]
	shufps	$48, %xmm3, %xmm4               # xmm4 = xmm4[0,0],xmm3[3,0]
	paddd	%xmm3, %xmm1
	shufps	$41, %xmm4, %xmm3               # xmm3 = xmm3[1,2],xmm4[2,0]
	paddd	%xmm3, %xmm3
	shufps	$41, %xmm9, %xmm7               # xmm7 = xmm7[1,2],xmm9[2,0]
	paddd	%xmm7, %xmm7
	paddd	%xmm5, %xmm1
	paddd	%xmm3, %xmm1
	paddd	%xmm5, %xmm8
	paddd	%xmm7, %xmm8
	pslld	$14, %xmm8
	psrad	$16, %xmm8
	pslld	$14, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm8, %xmm1
	pshufhw	$232, %xmm10, %xmm3             # xmm3 = xmm10[0,1,2,3,4,6,6,7]
	pshufd	$238, %xmm0, %xmm4              # xmm4 = xmm0[2,3,2,3]
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	pextrw	$1, %xmm6, %edx
	leal	(%rdx,%rdx,2), %edx
	movd	%xmm4, %ebx
	addl	%ebx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	testl	%ecx, %ecx
	je	.LBB1_11
# %bb.15:                               # %if.then113
	movzwl	34(%rdi), %r11d
	movzwl	36(%rdi), %ecx
	testl	%esi, %esi
	je	.LBB1_14
# %bb.16:                               # %if.then113.if.then115_crit_edge
	movzwl	%r11w, %esi
	movzwl	(%rdi), %r15d
	jmp	.LBB1_17
.LBB1_11:
	pinsrw	$0, %edx, %xmm2
	jmp	.LBB1_19
.LBB1_12:                               # %if.end111.thread242
	testl	%ecx, %ecx
	je	.LBB1_19
# %bb.13:
	movd	%xmm2, %edx
	pextrw	$1, %xmm2, %r11d
	pextrw	$2, %xmm2, %ecx
.LBB1_14:                               # %if.else129
	movzwl	%r11w, %esi
	leal	(%rsi,%rsi,2), %r14d
	movzwl	%cx, %r11d
	leal	2(%r11), %ebx
	leal	(%r11,%r14), %ecx
	addl	$2, %ecx
	jmp	.LBB1_18
.LBB1_6:                                # %if.else29
	testl	%ecx, %ecx
	je	.LBB1_19
# %bb.7:                                # %if.then113.thread
	leal	(%r15,%r15,2), %ecx
	pextrw	$1, %xmm2, %esi
	leal	(%rsi,%rcx), %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
	movd	%xmm2, %edx
	pextrw	$2, %xmm2, %ecx
.LBB1_17:                               # %if.then115
	movzwl	%cx, %r11d
	leal	(%r15,%rsi,2), %ecx
	addl	%r11d, %ecx
	addl	$2, %ecx
	leal	2(%r11), %ebx
.LBB1_18:                               # %if.end143
	shrl	$2, %ecx
	movzwl	38(%rdi), %r14d
	leal	(%rsi,%r11,2), %esi
	addl	%r14d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movzwl	40(%rdi), %r11d
	leal	(%rbx,%r14,2), %ebx
	addl	%r11d, %ebx
	shrl	$2, %ebx
	movzwl	42(%rdi), %r15d
	leal	(%r14,%r11,2), %r14d
	leal	(%r15,%r14), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	movzwl	44(%rdi), %r14d
	leal	(%r11,%r15,2), %r11d
	leal	(%r14,%r11), %r12d
	addl	$2, %r12d
	shrl	$2, %r12d
	movzwl	46(%rdi), %r11d
	leal	(%r15,%r14,2), %r15d
	addl	%r11d, %r15d
	addl	$2, %r15d
	shrl	$2, %r15d
	movzwl	48(%rdi), %r13d
	leal	(%r14,%r11,2), %r14d
	addl	%r13d, %r14d
	addl	$2, %r14d
	shrl	$2, %r14d
	addl	%r13d, %r11d
	leal	(%r11,%r13,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movd	%r14d, %xmm2
	movd	%r15d, %xmm3
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	movd	%r12d, %xmm2
	movd	%ebp, %xmm4
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	%ebx, %xmm2
	movd	%esi, %xmm3
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	movd	%edx, %xmm2
	movd	%ecx, %xmm5
	punpcklwd	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1],xmm2[2],xmm5[2],xmm2[3],xmm5[3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpcklqdq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0]
.LBB1_19:                               # %if.end183
	movw	%r8w, (%rdi)
	movw	%r9w, 2(%rdi)
	movw	%r10w, 4(%rdi)
	movw	%ax, 6(%rdi)
	movdqu	%xmm1, 8(%rdi)
	movq	%xmm0, 24(%rdi)
	movdqu	%xmm2, 32(%rdi)
	movw	%r11w, 48(%rdi)
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
.Lfunc_end1:
	.size	LowPassForIntra8x8Pred, .Lfunc_end1-LowPassForIntra8x8Pred
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: illegal intra_8x8 prediction mode: %d\n"
	.size	.L.str, 46

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_8x8_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 66

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_8x8_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 68

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 77

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_8x8_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 76

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_8x8_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 71

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_8x8_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 71

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"warning: Intra_8x8_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.8, 73

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
