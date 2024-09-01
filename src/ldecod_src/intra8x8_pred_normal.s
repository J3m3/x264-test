	.text
	.file	"intra8x8_pred_normal.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred8x8_normal
.LCPI0_0:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.text
	.globl	intrapred8x8_normal
	.p2align	4, 0x90
	.type	intrapred8x8_normal,@function
intrapred8x8_normal:                    # @intrapred8x8_normal
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
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r14d
	movl	%edx, %r13d
                                        # kill: def $esi killed $esi def $rsi
	movslq	32(%rdi), %rax
	movl	%edx, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movslq	36(%rdi), %rax
	movl	%r14d, %edx
	sarl	$2, %edx
	movslq	%edx, %rdx
	addq	%rax, %rdx
	movq	(%rdi), %r8
	movq	13536(%r8), %rax
	movq	(%rax,%rdx,8), %rax
	movzbl	(%rax,%rcx), %eax
	movb	%al, 372(%rdi)
	cmpq	$8, %rax
	ja	.LBB0_20
# %bb.1:                                # %entry
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:                                # %sw.bb7
	movq	8(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_112
# %bb.3:                                # %cond.true.i75
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_113
.LBB0_4:                                # %sw.bb11
	movq	8(%rdi), %rbx
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_21
# %bb.5:                                # %cond.true.i222
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_22
.LBB0_6:                                # %sw.bb
	movq	8(%rdi), %rdx
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_41
# %bb.7:                                # %cond.true.i
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_42
.LBB0_8:                                # %sw.bb13
	movq	8(%rdi), %r9
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_70
# %bb.9:                                # %cond.true.i366
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_71
.LBB0_10:                               # %sw.bb17
	movq	8(%rdi), %r9
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_91
# %bb.11:                               # %cond.true.i769
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_92
.LBB0_12:                               # %sw.bb9
	movq	8(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_120
# %bb.13:                               # %cond.true.i168
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_121
.LBB0_14:                               # %sw.bb15
	movq	8(%rdi), %rbx
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_141
# %bb.15:                               # %cond.true.i511
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_142
.LBB0_16:                               # %sw.bb21
	movq	8(%rdi), %rbx
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_161
# %bb.17:                               # %cond.true.i1200
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_162
.LBB0_18:                               # %sw.bb19
	movq	8(%rdi), %rbx
	movq	13520(%r8), %rax
	testl	%esi, %esi
	je	.LBB0_181
# %bb.19:                               # %cond.true.i1026
	leal	-1(%rsi), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_182
.LBB0_20:                               # %sw.default
	movl	$.L.str, %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_241
.LBB0_21:                               # %cond.false.i357
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_22:                               # %cond.end.i227
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	849124(%rbx), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movl	%r14d, %ecx
	movq	%rbx, %r10
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_31
# %bb.23:                               # %if.then.i246
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_25
# %bb.24:                               # %cond.true21.i248
	movq	13544(%rbx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_25:                               # %cond.end25.i254
	cmpl	$0, 120(%rsp)
	je	.LBB0_27
# %bb.26:                               # %cond.true29.i257
	movq	13544(%rbx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_27:                               # %cond.end36.i263
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_29
# %bb.28:                               # %cond.true40.i350
	movq	13544(%rbx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_29:                               # %cond.end47.i265
	cmpl	$0, 152(%rsp)
	je	.LBB0_208
# %bb.30:                               # %cond.true51.i268
	movq	13544(%rbx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.i356
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB0_32:                               # %if.end.i274
	testl	%ebp, %ebp
	setne	%r14b
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_36
# %bb.33:                               # %if.end.i274
	testl	%ebp, %ebp
	je	.LBB0_36
# %bb.34:                               # %if.end.i274
	testl	%r12d, %r12d
	je	.LBB0_36
# %bb.35:
	movb	$1, %r14b
	movb	$1, %r8b
	jmp	.LBB0_37
.LBB0_36:                               # %if.then68.i281
	movl	108(%rbx), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	%r13d, 56(%rsp)                 # 4-byte Spill
	movl	%ebp, %r13d
	movl	%r12d, %ebp
	movl	%r15d, %r12d
	movq	%r10, %r15
	callq	printf@PLT
	movq	%r15, %r10
	movl	%r12d, %r15d
	movl	%ebp, %r12d
	movl	%r13d, %ebp
	movl	56(%rsp), %r13d                 # 4-byte Reload
	movl	%ebx, %r8d
	testl	%r15d, %r15d
	je	.LBB0_209
.LBB0_37:                               # %if.then71.i
	movswq	134(%rsp), %rax
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	movq	88(%rsp), %rdi                  # 8-byte Reload
	testl	%r13d, %r13d
	je	.LBB0_210
.LBB0_38:                               # %if.then106.i
	movswq	118(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	movq	96(%rsp), %r13                  # 8-byte Reload
	testb	%r14b, %r14b
	je	.LBB0_211
.LBB0_39:                               # %if.then141.i
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%rsi,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	jne	.LBB0_212
.LBB0_40:                               # %if.else199.i
	movzwl	849060(%r10,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_213
.LBB0_41:                               # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_42:                               # %cond.end.i
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rbx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	leaq	849124(%rdx), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r14, %rax
	movq	%r13, %r14
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 104(%rsp)
	je	.LBB0_44
# %bb.43:                               # %land.rhs.i
	movl	%r14d, %eax
	xorl	$8, %eax
	movq	80(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	$8, %ecx
	orl	%eax, %ecx
	setne	%al
	jmp	.LBB0_45
.LBB0_44:
	xorl	%eax, %eax
.LBB0_45:                               # %land.end16.i
	movzbl	%al, %eax
	movl	%eax, 104(%rsp)
	movq	96(%rsp), %r12                  # 8-byte Reload
	movq	8(%r12), %rcx
	cmpl	$0, 2204(%rcx)
	movl	136(%rsp), %ebp
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	je	.LBB0_59
# %bb.46:                               # %if.then.i
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	je	.LBB0_48
# %bb.47:                               # %cond.true21.i
	movq	13544(%rdi), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ebp
.LBB0_48:                               # %cond.end25.i
	cmpl	$0, 120(%rsp)
	je	.LBB0_50
# %bb.49:                               # %cond.true29.i
	movq	13544(%rdi), %rcx
	movslq	124(%rsp), %rdx
	movsbl	(%rcx,%rdx), %r15d
.LBB0_50:                               # %cond.end36.i
	xorl	%esi, %esi
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB0_52
# %bb.51:                               # %cond.true40.i
	movq	13544(%rdi), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_52:                               # %cond.end47.i
	cmpl	$0, 152(%rsp)
	je	.LBB0_54
# %bb.53:                               # %cond.true51.i
	movq	13544(%rdi), %rcx
	movslq	156(%rsp), %rdx
	movsbl	(%rcx,%rdx), %esi
.LBB0_54:                               # %if.end.i
	testl	%r15d, %r15d
	je	.LBB0_60
.LBB0_55:                               # %if.then65.i
	movswq	134(%rsp), %rcx
	movq	(%r8,%rcx,8), %rcx
	movswq	132(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %edi
	movw	%di, 2(%rsp)
	movzwl	2(%rcx,%rdx,2), %edi
	movw	%di, 4(%rsp)
	movzwl	4(%rcx,%rdx,2), %edi
	movw	%di, 6(%rsp)
	movzwl	6(%rcx,%rdx,2), %edi
	movw	%di, 8(%rsp)
	movzwl	8(%rcx,%rdx,2), %edi
	movw	%di, 10(%rsp)
	movzwl	10(%rcx,%rdx,2), %edi
	movw	%di, 12(%rsp)
	movzwl	12(%rcx,%rdx,2), %edi
	movw	%di, 14(%rsp)
	movzwl	14(%rcx,%rdx,2), %ecx
	movw	%cx, 16(%rsp)
	testl	%eax, %eax
	je	.LBB0_61
.LBB0_56:                               # %if.then100.i
	movswq	118(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	je	.LBB0_62
.LBB0_57:                               # %if.then135.i
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%r8,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%r8,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%esi, %esi
	je	.LBB0_63
.LBB0_58:                               # %if.then185.i
	movswq	166(%rsp), %rax
	movq	(%r8,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_64
.LBB0_59:                               # %if.else.i
	movl	120(%rsp), %r15d
	movl	152(%rsp), %esi
	testl	%r15d, %r15d
	jne	.LBB0_55
.LBB0_60:                               # %if.else86.i
	movl	849060(%r12,%r13,4), %ecx
	movw	%cx, 14(%rsp)
	movw	%cx, 12(%rsp)
	movw	%cx, 10(%rsp)
	movd	%ecx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 2(%rsp)
	movw	%cx, 16(%rsp)
	testl	%eax, %eax
	jne	.LBB0_56
.LBB0_61:                               # %if.else123.i
	movd	%ecx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_57
.LBB0_62:                               # %if.else170.i
	movl	849060(%r12,%r13,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testl	%esi, %esi
	jne	.LBB0_58
.LBB0_63:                               # %if.else193.i
	movzwl	849060(%r12,%r13,4), %eax
.LBB0_64:                               # %if.end199.i
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	testl	%ebp, %ebp
	je	.LBB0_67
# %bb.65:                               # %if.end199.i
	testl	%r15d, %r15d
	je	.LBB0_67
# %bb.66:                               # %if.then203.i
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
	jmp	.LBB0_235
.LBB0_67:                               # %if.else252.i
	testl	%ebp, %ebp
	je	.LBB0_204
# %bb.68:                               # %if.else252.i
	testl	%r15d, %r15d
	jne	.LBB0_204
# %bb.69:                               # %if.then256.i
	movdqu	34(%rsp), %xmm0
	jmp	.LBB0_207
.LBB0_70:                               # %cond.false.i502
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_71:                               # %cond.end.i370
	movq	(%rcx), %rbx
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	849124(%r9), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	72(%rsp), %rsi                  # 8-byte Reload
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%r14, %rcx
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rsi), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_85
# %bb.72:                               # %if.then.i382
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	je	.LBB0_74
# %bb.73:                               # %cond.true22.i
	movq	13544(%rdx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_74:                               # %cond.end26.i
	cmpl	$0, 120(%rsp)
	movq	88(%rsp), %r14                  # 8-byte Reload
	je	.LBB0_76
# %bb.75:                               # %cond.true30.i
	movq	13544(%rdx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_76:                               # %cond.end37.i
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_78
# %bb.77:                               # %cond.true41.i
	movq	13544(%rdx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_78:                               # %cond.end48.i
	cmpl	$0, 152(%rsp)
	je	.LBB0_80
# %bb.79:                               # %cond.true52.i
	movq	13544(%rdx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
.LBB0_80:                               # %if.end.i386
	testl	%r15d, %r15d
	je	.LBB0_86
.LBB0_81:                               # %if.then69.i
	movswq	134(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	je	.LBB0_87
.LBB0_82:                               # %if.then104.i
	movswq	118(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	je	.LBB0_88
.LBB0_83:                               # %if.then139.i
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%rbx,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%r12d, %r12d
	je	.LBB0_89
.LBB0_84:                               # %if.then189.i
	movswq	166(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_90
.LBB0_85:                               # %if.else.i501
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	88(%rsp), %r14                  # 8-byte Reload
	testl	%r15d, %r15d
	jne	.LBB0_81
.LBB0_86:                               # %if.then66.i
	movl	108(%rdx), %esi
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movl	849060(%rsi,%r14,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	testl	%r13d, %r13d
	jne	.LBB0_82
.LBB0_87:                               # %if.else127.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_83
.LBB0_88:                               # %if.else174.i
	movd	849060(%rsi,%r14,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_84
.LBB0_89:                               # %if.else197.i
	movzwl	849060(%rsi,%r14,4), %eax
.LBB0_90:                               # %intra8x8_diag_down_left_pred.exit
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
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	movzwl	12(%rsp), %ecx
	leal	2(%rax,%rcx), %eax
	leal	(%rax,%rdx,2), %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
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
	leal	(%r14,%rcx,2), %r14d
	addl	$2, %r14d
	movzwl	28(%rsp), %r12d
	addl	%r12d, %ecx
	leal	(%rcx,%rax,2), %ecx
	addl	$2, %ecx
	movl	%ecx, 184(%rsp)                 # 4-byte Spill
	movzwl	30(%rsp), %ecx
	addl	%ecx, %eax
	leal	(%rax,%r12,2), %eax
	addl	$2, %eax
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movzwl	32(%rsp), %eax
	addl	%eax, %r12d
	leal	(%r12,%rcx,2), %r12d
	addl	$2, %r12d
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	addl	$2, %eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	shrl	$2, %edi
	movslq	80(%rsp), %r9                   # 4-byte Folded Reload
	movslq	96(%rsp), %rax                  # 4-byte Folded Reload
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	(%r8,%r9,8), %rcx
	movw	%di, (%rcx,%rax,2)
	shrl	$2, %esi
	movl	56(%rsp), %edx                  # 4-byte Reload
	shrl	$2, %edx
	movl	72(%rsp), %edi                  # 4-byte Reload
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
	shrl	$2, %r14d
	movw	%bx, 2(%rcx,%rax,2)
	movw	%r13w, 4(%rcx,%rax,2)
	movw	%bp, 6(%rcx,%rax,2)
	movw	%r10w, 8(%rcx,%rax,2)
	movw	%r11w, 10(%rcx,%rax,2)
	movw	%r15w, 12(%rcx,%rax,2)
	movw	%r14w, 14(%rcx,%rax,2)
	movq	32(%r8,%r9,8), %rcx
	movw	%bx, (%rcx,%rax,2)
	movl	184(%rsp), %edx                 # 4-byte Reload
	shrl	$2, %edx
	movw	%r13w, 2(%rcx,%rax,2)
	movw	%bp, 4(%rcx,%rax,2)
	movw	%r10w, 6(%rcx,%rax,2)
	movw	%r11w, 8(%rcx,%rax,2)
	movw	%r15w, 10(%rcx,%rax,2)
	movw	%r14w, 12(%rcx,%rax,2)
	movw	%dx, 14(%rcx,%rax,2)
	movq	40(%r8,%r9,8), %rcx
	movw	%r13w, (%rcx,%rax,2)
	movl	168(%rsp), %esi                 # 4-byte Reload
	shrl	$2, %esi
	movw	%bp, 2(%rcx,%rax,2)
	movw	%r10w, 4(%rcx,%rax,2)
	movw	%r11w, 6(%rcx,%rax,2)
	movw	%r15w, 8(%rcx,%rax,2)
	movw	%r14w, 10(%rcx,%rax,2)
	movw	%dx, 12(%rcx,%rax,2)
	movw	%si, 14(%rcx,%rax,2)
	movq	48(%r8,%r9,8), %rcx
	movw	%bp, (%rcx,%rax,2)
	shrl	$2, %r12d
	movw	%r10w, 2(%rcx,%rax,2)
	movw	%r11w, 4(%rcx,%rax,2)
	movw	%r15w, 6(%rcx,%rax,2)
	movw	%r14w, 8(%rcx,%rax,2)
	movw	%dx, 10(%rcx,%rax,2)
	movw	%si, 12(%rcx,%rax,2)
	movw	%r12w, 14(%rcx,%rax,2)
	movq	56(%r8,%r9,8), %rcx
	movw	%r10w, (%rcx,%rax,2)
	movw	%r11w, 2(%rcx,%rax,2)
	movw	%r15w, 4(%rcx,%rax,2)
	movw	%r14w, 6(%rcx,%rax,2)
	movw	%dx, 8(%rcx,%rax,2)
	movw	%si, 10(%rcx,%rax,2)
	movw	%r12w, 12(%rcx,%rax,2)
	movl	88(%rsp), %edx                  # 4-byte Reload
	shrl	$2, %edx
	movw	%dx, 14(%rcx,%rax,2)
	jmp	.LBB0_240
.LBB0_91:                               # %cond.false.i1016
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_92:                               # %cond.end.i774
	movq	(%rcx), %rbx
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	849124(%r9), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	64(%rsp), %rsi                  # 8-byte Reload
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%r14, %rcx
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rsi), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_106
# %bb.93:                               # %if.then.i793
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	je	.LBB0_95
# %bb.94:                               # %cond.true22.i795
	movq	13544(%rdx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_95:                               # %cond.end26.i801
	cmpl	$0, 120(%rsp)
	movq	88(%rsp), %r14                  # 8-byte Reload
	je	.LBB0_97
# %bb.96:                               # %cond.true30.i804
	movq	13544(%rdx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_97:                               # %cond.end37.i810
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_99
# %bb.98:                               # %cond.true41.i1009
	movq	13544(%rdx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_99:                               # %cond.end48.i812
	cmpl	$0, 152(%rsp)
	je	.LBB0_101
# %bb.100:                              # %cond.true52.i815
	movq	13544(%rdx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
.LBB0_101:                              # %if.end.i821
	testl	%r15d, %r15d
	je	.LBB0_107
.LBB0_102:                              # %if.then69.i827
	movswq	134(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	je	.LBB0_108
.LBB0_103:                              # %if.then104.i851
	movswq	118(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	je	.LBB0_109
.LBB0_104:                              # %if.then139.i875
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%rbx,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%rbx,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%r12d, %r12d
	je	.LBB0_110
.LBB0_105:                              # %if.then189.i906
	movswq	166(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_111
.LBB0_106:                              # %if.else.i1015
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	88(%rsp), %r14                  # 8-byte Reload
	testl	%r15d, %r15d
	jne	.LBB0_102
.LBB0_107:                              # %if.then66.i995
	movl	108(%rdx), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movl	849060(%rsi,%r14,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	testl	%r13d, %r13d
	jne	.LBB0_103
.LBB0_108:                              # %if.else127.i986
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_104
.LBB0_109:                              # %if.else174.i974
	movd	849060(%rsi,%r14,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_105
.LBB0_110:                              # %if.else197.i970
	movzwl	849060(%rsi,%r14,4), %eax
.LBB0_111:                              # %intra8x8_vert_left_pred.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	2(%rsp), %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movzwl	4(%rsp), %r12d
	addl	%r12d, %eax
	incl	%eax
	shrl	%eax
	movzwl	6(%rsp), %edi
	movzwl	8(%rsp), %r8d
	movzwl	10(%rsp), %ebx
	movzwl	12(%rsp), %r14d
	movzwl	14(%rsp), %r10d
	movzwl	16(%rsp), %r11d
	movzwl	18(%rsp), %r13d
	movzwl	20(%rsp), %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movzwl	22(%rsp), %ecx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movslq	80(%rsp), %r9                   # 4-byte Folded Reload
	movq	%r9, 224(%rsp)                  # 8-byte Spill
	movslq	96(%rsp), %r15                  # 4-byte Folded Reload
	movzwl	24(%rsp), %ecx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movzwl	26(%rsp), %ecx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r9,8), %rcx
	movw	%ax, (%rcx,%r15,2)
	movq	%rdi, %r9
	leal	(%r12,%rdi), %ebp
	incl	%ebp
	shrl	%ebp
	movl	%ebp, 232(%rsp)                 # 4-byte Spill
	movq	%r8, %rdx
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	addl	%edi, %r8d
	incl	%r8d
	shrl	%r8d
	movl	%r8d, 88(%rsp)                  # 4-byte Spill
	movq	%rbx, 184(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rbx), %edi
	incl	%edi
	shrl	%edi
	movl	%edi, 192(%rsp)                 # 4-byte Spill
	leal	(%rbx,%r14), %esi
	incl	%esi
	shrl	%esi
	movl	%esi, 200(%rsp)                 # 4-byte Spill
	leal	(%r14,%r10), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 208(%rsp)                 # 4-byte Spill
	leal	(%r10,%r11), %edx
	incl	%edx
	shrl	%edx
	movl	%edx, 96(%rsp)                  # 4-byte Spill
	leal	(%r11,%r13), %ebx
	incl	%ebx
	shrl	%ebx
	movl	%ebx, 180(%rsp)                 # 4-byte Spill
	movw	%bp, 2(%rcx,%r15,2)
	movw	%r8w, 4(%rcx,%r15,2)
	movw	%di, 6(%rcx,%r15,2)
	movw	%si, 8(%rcx,%r15,2)
	movw	%ax, 10(%rcx,%r15,2)
	movw	%dx, 12(%rcx,%r15,2)
	movw	%bx, 14(%rcx,%r15,2)
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r12,2), %ecx
	addl	%r9d, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movq	224(%rsp), %rbx                 # 8-byte Reload
	movq	72(%rsp), %rbp                  # 8-byte Reload
	movq	8(%rbp,%rbx,8), %rax
	movw	%cx, (%rax,%r15,2)
	leal	(%r12,%r9,2), %ecx
	movq	168(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movq	184(%rsp), %rsi                 # 8-byte Reload
	leal	(%r9,%rsi), %edx
	addl	$2, %edx
	leal	(%rdx,%rdi,2), %r12d
	shrl	$2, %r12d
	leal	(%rdi,%r14), %r9d
	addl	$2, %r9d
	leal	(%r9,%rsi,2), %edx
	shrl	$2, %edx
	movl	%edx, 168(%rsp)                 # 4-byte Spill
	movq	%r10, %rdi
	addl	%esi, %r10d
	addl	$2, %r10d
	leal	(%r10,%r14,2), %esi
	shrl	$2, %esi
	movl	%esi, %r10d
	movl	%esi, 184(%rsp)                 # 4-byte Spill
	movq	%r11, %rsi
	addl	%r14d, %r11d
	addl	$2, %r11d
	leal	(%r11,%rdi,2), %r8d
	shrl	$2, %r8d
	movl	%r8d, %r11d
	movl	%r8d, 80(%rsp)                  # 4-byte Spill
	movq	%r13, %r9
	addl	%edi, %r13d
	addl	$2, %r13d
	leal	(%r13,%rsi,2), %edi
	shrl	$2, %edi
	movl	%edi, 56(%rsp)                  # 4-byte Spill
	movq	64(%rsp), %r8                   # 8-byte Reload
	leal	(%rsi,%r8), %r14d
	addl	$2, %r14d
	leal	(%r14,%r9,2), %r13d
	shrl	$2, %r13d
	movw	%cx, 2(%rax,%r15,2)
	movw	%r12w, 4(%rax,%r15,2)
	movw	%dx, 6(%rax,%r15,2)
	movw	%r10w, 8(%rax,%r15,2)
	movw	%r11w, 10(%rax,%r15,2)
	movw	%di, 12(%rax,%r15,2)
	movw	%r13w, 14(%rax,%r15,2)
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movq	16(%rbp,%rbx,8), %rax
	movl	232(%rsp), %edx                 # 4-byte Reload
	movw	%dx, (%rax,%r15,2)
	leal	(%r9,%r8), %r14d
	incl	%r14d
	movq	%r8, %r11
	shrl	%r14d
	movl	88(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 2(%rax,%r15,2)
	movl	192(%rsp), %ebp                 # 4-byte Reload
	movw	%bp, 4(%rax,%r15,2)
	movl	200(%rsp), %r10d                # 4-byte Reload
	movw	%r10w, 6(%rax,%r15,2)
	movl	208(%rsp), %r8d                 # 4-byte Reload
	movw	%r8w, 8(%rax,%r15,2)
	movl	96(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 10(%rax,%r15,2)
	movl	180(%rsp), %ebx                 # 4-byte Reload
	movw	%bx, 12(%rax,%r15,2)
	movw	%r14w, 14(%rax,%r15,2)
	movq	24(%rsi,%rdi,8), %rax
	movw	%cx, (%rax,%r15,2)
	movq	216(%rsp), %rsi                 # 8-byte Reload
	addl	%esi, %r9d
	movq	%r11, %rdx
	leal	(%r9,%r11,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movw	%r12w, 2(%rax,%r15,2)
	movl	168(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 4(%rax,%r15,2)
	movl	184(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 6(%rax,%r15,2)
	movl	80(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 8(%rax,%r15,2)
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 10(%rax,%r15,2)
	movw	%r13w, 12(%rax,%r15,2)
	movw	%r11w, 14(%rax,%r15,2)
	movq	%rdi, %r9
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rcx,%rdi,8), %rax
	movl	88(%rsp), %edi                  # 4-byte Reload
	movw	%di, (%rax,%r15,2)
	leal	(%rdx,%rsi), %edi
	incl	%edi
	movq	%rsi, %rdx
	shrl	%edi
	movw	%bp, 2(%rax,%r15,2)
	movw	%r10w, 4(%rax,%r15,2)
	movw	%r8w, 6(%rax,%r15,2)
	movl	96(%rsp), %ebp                  # 4-byte Reload
	movw	%bp, 8(%rax,%r15,2)
	movw	%bx, 10(%rax,%r15,2)
	movw	%r14w, 12(%rax,%r15,2)
	movw	%di, 14(%rax,%r15,2)
	movq	40(%rcx,%r9,8), %rax
	movq	%rcx, %rsi
	movw	%r12w, (%rax,%r15,2)
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	240(%rsp), %r10                 # 8-byte Reload
	addl	%r10d, %ecx
	movq	%rdx, %r8
	leal	(%rcx,%rdx,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movl	168(%rsp), %ebx                 # 4-byte Reload
	movw	%bx, 2(%rax,%r15,2)
	movl	184(%rsp), %r12d                # 4-byte Reload
	movw	%r12w, 4(%rax,%r15,2)
	movl	80(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 6(%rax,%r15,2)
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 8(%rax,%r15,2)
	movw	%r13w, 10(%rax,%r15,2)
	movw	%r11w, 12(%rax,%r15,2)
	movw	%dx, 14(%rax,%r15,2)
	movq	48(%rsi,%r9,8), %rax
	movl	192(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, (%rax,%r15,2)
	movl	200(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 2(%rax,%r15,2)
	movl	208(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 4(%rax,%r15,2)
	movw	%bp, 6(%rax,%r15,2)
	movl	180(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, 8(%rax,%r15,2)
	movw	%r14w, 10(%rax,%r15,2)
	movw	%di, 12(%rax,%r15,2)
	leal	(%r8,%r10), %esi
	incl	%esi
	shrl	%esi
	movw	%si, 14(%rax,%r15,2)
	movq	248(%rsp), %rax                 # 8-byte Reload
	addl	%r8d, %eax
	leal	(%rax,%r10,2), %eax
	addl	$2, %eax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	56(%rcx,%r9,8), %rsi
	movw	%bx, (%rsi,%r15,2)
	movw	%r12w, 2(%rsi,%r15,2)
	movl	80(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 4(%rsi,%r15,2)
	movl	56(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 6(%rsi,%r15,2)
	movw	%r13w, 8(%rsi,%r15,2)
	movw	%r11w, 10(%rsi,%r15,2)
	movw	%dx, 12(%rsi,%r15,2)
	shrl	$2, %eax
	movw	%ax, 14(%rsi,%r15,2)
	jmp	.LBB0_240
.LBB0_112:                              # %cond.false.i159
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_113:                              # %cond.end.i80
	movq	(%rcx), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rbx                  # 8-byte Reload
	leaq	849124(%rbx), %r15
	leal	-1(%r13), %ebp
	movq	%rsp, %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	136(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r14, %r13
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 120(%rsp)
	setne	%al
	movl	%r13d, %ecx
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 120(%rsp)
	movq	8(%rbx), %rcx
	cmpl	$0, 2204(%rcx)
	movl	136(%rsp), %ebp
	je	.LBB0_128
# %bb.114:                              # %cond.end25.i106
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rsi                  # 8-byte Reload
	je	.LBB0_116
# %bb.115:                              # %cond.true29.i109
	movq	13544(%rsi), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ebp
.LBB0_116:                              # %cond.end36.i115
	testl	%eax, %eax
	je	.LBB0_118
# %bb.117:                              # %cond.true40.i152
	movq	13544(%rsi), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_118:                              # %cond.end47.i117
	cmpl	$0, 104(%rsp)
	je	.LBB0_214
# %bb.119:                              # %cond.true51.i120
	movq	13544(%rsi), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	testl	%ebp, %ebp
	je	.LBB0_215
.LBB0_129:                              # %if.then68.i
	movswq	150(%rsp), %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movswq	148(%rsp), %r11
	movzwl	(%rax,%r11,2), %r9d
	movzwl	2(%rax,%r11,2), %r10d
	movzwl	4(%rax,%r11,2), %r8d
	movzwl	6(%rax,%r11,2), %edi
	movzwl	8(%rax,%r11,2), %esi
	movzwl	10(%rax,%r11,2), %edx
	movzwl	12(%rax,%r11,2), %ecx
	movzwl	14(%rax,%r11,2), %eax
	movl	%eax, %r11d
	testl	%r15d, %r15d
	je	.LBB0_131
.LBB0_130:                              # %if.then101.i
	movswq	134(%rsp), %r11
	movq	96(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%r11,8), %r11
	movswq	132(%rsp), %r14
	movzwl	(%r11,%r14,2), %r11d
.LBB0_131:                              # %if.end133.i138
	testl	%r12d, %r12d
	je	.LBB0_137
# %bb.132:                              # %if.then.i1417
	testl	%ebp, %ebp
	je	.LBB0_140
# %bb.133:                              # %if.then51.i
	movswq	118(%rsp), %r14
	movq	96(%rsp), %r15                  # 8-byte Reload
	movq	(%r15,%r14,8), %r14
	movswq	116(%rsp), %r15
	movzwl	(%r14,%r15,2), %r15d
	movzwl	%r9w, %r14d
	movzwl	%r10w, %r10d
	leal	2(%r10), %ebp
	leal	(%r10,%r14,2), %r9d
	addl	$2, %r9d
	addl	%r15d, %r9d
	jmp	.LBB0_139
.LBB0_120:                              # %cond.false.i212
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_121:                              # %cond.end.i173
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rbx
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	849124(%rax), %r15
	leal	-1(%r13), %ebp
	movq	%rsp, %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	leal	-1(%r14), %r13d
	leaq	136(%rsp), %r8
	movq	%r12, %rdi
	movq	96(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	leal	8(%rax), %esi
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	96(%rsp), %r13                  # 8-byte Reload
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 120(%rsp)
	setne	%al
	movl	%r13d, %ecx
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, 120(%rsp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %ebp
	je	.LBB0_134
# %bb.122:                              # %if.then.i184
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	je	.LBB0_124
# %bb.123:                              # %cond.true28.i
	movq	13544(%rdx), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_124:                              # %cond.end32.i
	cmpl	$0, 136(%rsp)
	je	.LBB0_126
# %bb.125:                              # %cond.true36.i
	movq	13544(%rdx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_126:                              # %cond.end43.i
	cmpl	$0, 104(%rsp)
	je	.LBB0_216
# %bb.127:                              # %cond.true58.i
	movq	13544(%rdx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	testl	%ebp, %ebp
	je	.LBB0_217
.LBB0_135:                              # %if.end120.thread.i
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %r11
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%rax,8), %rcx
	movq	8(%r14,%rax,8), %rdx
	movzwl	(%rcx,%r11,2), %r9d
	movzwl	(%rdx,%r11,2), %r10d
	movq	16(%r14,%rax,8), %rcx
	movzwl	(%rcx,%r11,2), %r8d
	movq	24(%r14,%rax,8), %rcx
	movzwl	(%rcx,%r11,2), %esi
	movq	32(%r14,%rax,8), %rcx
	movzwl	(%rcx,%r11,2), %edi
	movq	40(%r14,%rax,8), %rcx
	movzwl	(%rcx,%r11,2), %edx
	movq	48(%r14,%rax,8), %rcx
	movzwl	(%rcx,%r11,2), %ecx
	movq	56(%r14,%rax,8), %rax
	movzwl	(%rax,%r11,2), %eax
	testl	%r12d, %r12d
	jne	.LBB0_218
# %bb.136:                              # %if.else65.i270.i
	movzwl	%r9w, %r13d
	movzwl	%r10w, %ebp
	movzwl	%r8w, %r11d
	movzwl	%si, %r12d
	movzwl	%di, %r15d
	movzwl	%dx, %r14d
	movzwl	%cx, %edx
	movzwl	%ax, %eax
	leal	(%r13,%r13,2), %ecx
	leal	(%rcx,%rbp), %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	leal	(%r13,%rbp,2), %ecx
	movq	96(%rsp), %r13                  # 8-byte Reload
	leal	(%r11,%rcx), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	leal	2(%rbp,%r11,2), %r8d
	addl	%r12d, %r8d
	shrl	$2, %r8d
	leal	(%r11,%r12,2), %esi
	addl	$2, %esi
	addl	%r15d, %esi
	shrl	$2, %esi
	leal	(%r12,%r15,2), %ecx
	leal	(%r14,%rcx), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	%rdx, %r11
	leal	(%rdx,%r15), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r14,2), %edx
	shrl	$2, %edx
	leal	(%r14,%r11,2), %ecx
	addl	$2, %ecx
	movq	80(%rsp), %r14                  # 8-byte Reload
	addl	%eax, %ecx
	shrl	$2, %ecx
	addl	%eax, %r11d
	addl	$2, %r11d
	leal	(%r11,%rax,2), %eax
	shrl	$2, %eax
	jmp	.LBB0_239
.LBB0_128:                              # %if.else.i158
	movl	104(%rsp), %r12d
	movl	%eax, %r15d
	movq	56(%rsp), %rsi                  # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_129
.LBB0_215:                              # %if.then65.i148
	movl	108(%rsi), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzwl	849060(%rax,%rcx,4), %eax
	movl	%eax, %ecx
	movl	%eax, %edx
	movl	%eax, %esi
	movl	%eax, %edi
	movl	%eax, %r8d
	movl	%eax, %r10d
	movl	%eax, %r9d
	movl	%eax, %r11d
	testl	%r15d, %r15d
	jne	.LBB0_130
	jmp	.LBB0_131
.LBB0_137:                              # %if.end47.i
	testl	%ebp, %ebp
	je	.LBB0_140
# %bb.138:                              # %if.else65.i
	movzwl	%r9w, %r14d
	leal	(%r14,%r14,2), %r9d
	movzwl	%r10w, %r10d
	leal	2(%r10), %ebp
	addl	%r10d, %r9d
	addl	$2, %r9d
.LBB0_139:                              # %if.end79.i
	shrl	$2, %r9d
	movzwl	%r8w, %r15d
	leal	(%r15,%r14), %r8d
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r10d
	shrl	$2, %r10d
	movzwl	%di, %r14d
	leal	(%r14,%r15,2), %r8d
	addl	%ebp, %r8d
	shrl	$2, %r8d
	movzwl	%si, %r12d
	leal	(%r15,%r12), %esi
	addl	$2, %esi
	leal	(%rsi,%r14,2), %edi
	shrl	$2, %edi
	movzwl	%dx, %r15d
	leal	(%r15,%r14), %edx
	addl	$2, %edx
	leal	(%rdx,%r12,2), %esi
	shrl	$2, %esi
	movzwl	%cx, %r14d
	leal	(%r14,%r12), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r15,2), %edx
	shrl	$2, %edx
	movzwl	%ax, %eax
	leal	(%r15,%rax), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r14,2), %ecx
	shrl	$2, %ecx
	movzwl	%r11w, %r11d
	leal	(%r14,%rax,2), %eax
	addl	$2, %eax
	addl	%r11d, %eax
	shrl	$2, %eax
.LBB0_140:                              # %LowPassForIntra8x8PredHor.exit
	movslq	%r13d, %r11
	movslq	80(%rsp), %r14                  # 4-byte Folded Reload
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	8(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	16(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	24(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	32(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	40(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	48(%rbx,%r14,8), %r15
	movw	%r9w, (%r15,%r11,2)
	movw	%r10w, 2(%r15,%r11,2)
	movw	%r8w, 4(%r15,%r11,2)
	movw	%di, 6(%r15,%r11,2)
	movw	%si, 8(%r15,%r11,2)
	movw	%dx, 10(%r15,%r11,2)
	movw	%cx, 12(%r15,%r11,2)
	movw	%ax, 14(%r15,%r11,2)
	movq	56(%rbx,%r14,8), %rbx
	movw	%r9w, (%rbx,%r11,2)
	movw	%r10w, 2(%rbx,%r11,2)
	movw	%r8w, 4(%rbx,%r11,2)
	movw	%di, 6(%rbx,%r11,2)
	movw	%si, 8(%rbx,%r11,2)
	movw	%dx, 10(%rbx,%r11,2)
	movw	%cx, 12(%rbx,%r11,2)
	movw	%ax, 14(%rbx,%r11,2)
	jmp	.LBB0_240
.LBB0_134:                              # %if.else.i211
	movl	136(%rsp), %r15d
	movl	104(%rsp), %r12d
	movq	56(%rsp), %rdx                  # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_135
.LBB0_217:                              # %if.end120.i
	movl	108(%rdx), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzwl	849060(%rax,%rcx,4), %eax
	movl	%eax, %r9d
	movl	%eax, %r10d
	movl	%eax, %r8d
	movl	%eax, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	movl	%eax, %ecx
	testl	%r12d, %r12d
	je	.LBB0_239
.LBB0_218:                              # %if.then.i.i
	movswq	118(%rsp), %r11
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%r11,8), %r11
	movswq	116(%rsp), %r14
	movzwl	(%r11,%r14,2), %r11d
	testl	%ebp, %ebp
	je	.LBB0_220
# %bb.219:                              # %if.then.i.i
	testl	%r15d, %r15d
	jne	.LBB0_237
.LBB0_220:                              # %if.else.i.i
	testl	%r15d, %r15d
	testl	%ebp, %ebp
	je	.LBB0_238
.LBB0_237:                              # %if.end79.i.i
	movzwl	%r9w, %r14d
	movzwl	%r10w, %r15d
	leal	(%r15,%r14,2), %r9d
	addl	$2, %r9d
	addl	%r11d, %r9d
	shrl	$2, %r9d
	movzwl	%r8w, %r11d
	leal	(%r14,%r15,2), %r8d
	leal	(%r11,%r8), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	%si, %r14d
	leal	(%r15,%r11,2), %r8d
	addl	$2, %r8d
	addl	%r14d, %r8d
	shrl	$2, %r8d
	movzwl	%di, %r15d
	leal	(%r11,%r14,2), %esi
	addl	$2, %esi
	addl	%r15d, %esi
	shrl	$2, %esi
	movzwl	%dx, %r11d
	addl	%r11d, %r14d
	leal	(%r14,%r15,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movzwl	%cx, %r14d
	addl	%r14d, %r15d
	leal	(%r15,%r11,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movzwl	%ax, %eax
	leal	(%rax,%r11), %ecx
	addl	$2, %ecx
	leal	(%rcx,%r14,2), %ecx
	shrl	$2, %ecx
	leal	(%rax,%rax,2), %eax
	addl	$2, %eax
	addl	%r14d, %eax
	shrl	$2, %eax
.LBB0_238:                              # %intra8x8_hor_pred.exit
	movq	80(%rsp), %r14                  # 8-byte Reload
.LBB0_239:                              # %intra8x8_hor_pred.exit
	movslq	%r13d, %r11
	movslq	%r14d, %r14
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
	jmp	.LBB0_240
.LBB0_141:                              # %cond.false.i759
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_142:                              # %cond.end.i516
	movq	(%rcx), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	leaq	849124(%rbx), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%r14, %rcx
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movq	%rbx, %r10
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_151
# %bb.143:                              # %if.then.i535
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_145
# %bb.144:                              # %cond.true21.i537
	movq	13544(%rbx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_145:                              # %cond.end25.i543
	cmpl	$0, 120(%rsp)
	je	.LBB0_147
# %bb.146:                              # %cond.true29.i546
	movq	13544(%rbx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_147:                              # %cond.end36.i552
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_149
# %bb.148:                              # %cond.true40.i752
	movq	13544(%rbx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_149:                              # %cond.end47.i554
	cmpl	$0, 152(%rsp)
	je	.LBB0_222
# %bb.150:                              # %cond.true51.i557
	movq	13544(%rbx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_152
.LBB0_151:                              # %if.else.i758
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB0_152:                              # %if.end.i563
	testl	%ebp, %ebp
	setne	%r14b
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_156
# %bb.153:                              # %if.end.i563
	testl	%ebp, %ebp
	je	.LBB0_156
# %bb.154:                              # %if.end.i563
	testl	%r12d, %r12d
	je	.LBB0_156
# %bb.155:
	movb	$1, %r14b
	movb	$1, %r8b
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_157
.LBB0_156:                              # %if.then68.i572
	movl	108(%rbx), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	%r13d, 56(%rsp)                 # 4-byte Spill
	movl	%ebp, %r13d
	movl	%r12d, %ebp
	movl	%r15d, %r12d
	movq	%r10, %r15
	callq	printf@PLT
	movq	%r15, %r10
	movl	%r12d, %r15d
	movl	%ebp, %r12d
	movl	%r13d, %ebp
	movl	56(%rsp), %r13d                 # 4-byte Reload
	movl	%ebx, %r8d
	testl	%r15d, %r15d
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_223
.LBB0_157:                              # %if.then71.i729
	movswq	134(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	je	.LBB0_224
.LBB0_158:                              # %if.then106.i589
	movswq	118(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	testb	%r14b, %r14b
	je	.LBB0_225
.LBB0_159:                              # %if.then141.i692
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%rsi,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	jne	.LBB0_226
.LBB0_160:                              # %if.else199.i625
	movzwl	849060(%r10,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_227
.LBB0_161:                              # %cond.false.i1414
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_162:                              # %cond.end.i1205
	movq	(%rcx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	849124(%rbx), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%r14), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%r14, %rcx
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movq	%rbx, %r10
	xorl	$8, %ecx
	movq	80(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_171
# %bb.163:                              # %if.then.i1224
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_165
# %bb.164:                              # %cond.true28.i1226
	movq	13544(%rbx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_165:                              # %cond.end32.i1232
	cmpl	$0, 120(%rsp)
	je	.LBB0_167
# %bb.166:                              # %cond.true36.i1235
	movq	13544(%rbx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_167:                              # %cond.end43.i1241
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_169
# %bb.168:                              # %cond.true47.i
	movq	13544(%rbx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_169:                              # %cond.end54.i
	cmpl	$0, 152(%rsp)
	je	.LBB0_228
# %bb.170:                              # %cond.true58.i1244
	movq	13544(%rbx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
	jmp	.LBB0_172
.LBB0_171:                              # %if.else.i1413
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB0_172:                              # %if.end.i1250
	testl	%ebp, %ebp
	setne	%r14b
	testl	%r12d, %r12d
	setne	%cl
	testl	%r15d, %r15d
	je	.LBB0_176
# %bb.173:                              # %if.end.i1250
	testl	%ebp, %ebp
	je	.LBB0_176
# %bb.174:                              # %if.end.i1250
	testl	%r12d, %r12d
	je	.LBB0_176
# %bb.175:
	movb	$1, %r14b
	movb	$1, %r8b
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_177
.LBB0_176:                              # %if.then75.i
	movl	108(%rbx), %esi
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	%r13d, 56(%rsp)                 # 4-byte Spill
	movl	%ebp, %r13d
	movl	%r12d, %ebp
	movl	%r15d, %r12d
	movq	%r10, %r15
	callq	printf@PLT
	movq	%r15, %r10
	movl	%r12d, %r15d
	movl	%ebp, %r12d
	movl	%r13d, %ebp
	movl	56(%rsp), %r13d                 # 4-byte Reload
	movl	%ebx, %r8d
	testl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_229
.LBB0_177:                              # %if.then78.i
	movswq	134(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	je	.LBB0_230
.LBB0_178:                              # %if.then113.i
	movswq	118(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	testb	%r14b, %r14b
	je	.LBB0_231
.LBB0_179:                              # %if.then148.i
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%rsi,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%rsi,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	jne	.LBB0_232
.LBB0_180:                              # %if.else206.i
	movzwl	849060(%r10,%rdi,4), %eax
	xorl	%r12d, %r12d
	jmp	.LBB0_233
.LBB0_181:                              # %cond.false.i1190
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_182:                              # %cond.end.i1031
	movq	(%rcx), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	1248(%r8), %rax
	movl	%esi, %ecx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	849124(%rbx), %r15
	leal	-1(%r13), %ebp
	leaq	136(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	%r13, %rbx
	leal	-1(%r14), %r13d
	leaq	120(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	8(%rbx), %esi
	leaq	104(%rsp), %r8
	movq	%r12, %rdi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	152(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	cmpl	$0, 104(%rsp)
	setne	%al
	movq	%rbx, %rcx
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rbx                  # 8-byte Reload
	xorl	$8, %ecx
	movl	%r14d, %edx
	xorl	$8, %edx
	orl	%ecx, %edx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %r13d
	movl	%r13d, 104(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	136(%rsp), %ebp
	je	.LBB0_197
# %bb.183:                              # %if.then.i1042
	xorl	%r15d, %r15d
	testl	%ebp, %ebp
	movl	$0, %ebp
	movq	56(%rsp), %rdx                  # 8-byte Reload
	je	.LBB0_185
# %bb.184:                              # %cond.true35.i
	movq	13544(%rdx), %rax
	movslq	140(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB0_185:                              # %cond.end39.i
	cmpl	$0, 120(%rsp)
	movq	168(%rsp), %r14                 # 8-byte Reload
	je	.LBB0_187
# %bb.186:                              # %cond.true43.i
	movq	13544(%rdx), %rax
	movslq	124(%rsp), %rcx
	movsbl	(%rax,%rcx), %r15d
.LBB0_187:                              # %cond.end50.i
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	movl	$0, %r13d
	je	.LBB0_189
# %bb.188:                              # %cond.true54.i
	movq	13544(%rdx), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %r13d
.LBB0_189:                              # %cond.end61.i
	cmpl	$0, 152(%rsp)
	je	.LBB0_191
# %bb.190:                              # %cond.true65.i
	movq	13544(%rdx), %rax
	movslq	156(%rsp), %rcx
	movsbl	(%rax,%rcx), %r12d
.LBB0_191:                              # %if.end.i1049
	testl	%ebp, %ebp
	je	.LBB0_198
.LBB0_192:                              # %if.end80.i
	testl	%r15d, %r15d
	je	.LBB0_199
.LBB0_193:                              # %if.then82.i
	movswq	134(%rsp), %rax
	movq	(%r14,%rax,8), %rax
	movswq	132(%rsp), %rcx
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
	je	.LBB0_200
.LBB0_194:                              # %if.then117.i
	movswq	118(%rsp), %rax
	movq	(%r14,%rax,8), %rax
	movswq	116(%rsp), %rcx
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
	je	.LBB0_201
.LBB0_195:                              # %if.then152.i
	movswq	150(%rsp), %rax
	movswq	148(%rsp), %rcx
	movq	(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 34(%rsp)
	movq	8(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 36(%rsp)
	movq	16(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 38(%rsp)
	movq	24(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 40(%rsp)
	movq	32(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 42(%rsp)
	movq	40(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 44(%rsp)
	movq	48(%r14,%rax,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movw	%dx, 46(%rsp)
	movq	56(%r14,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movw	%ax, 48(%rsp)
	testl	%r12d, %r12d
	je	.LBB0_202
.LBB0_196:                              # %if.then202.i
	movswq	166(%rsp), %rax
	movq	(%r14,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	jmp	.LBB0_203
.LBB0_197:                              # %if.else.i1189
	movl	120(%rsp), %r15d
	movl	152(%rsp), %r12d
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	168(%rsp), %r14                 # 8-byte Reload
	testl	%ebp, %ebp
	jne	.LBB0_192
.LBB0_198:                              # %if.then79.i
	movl	108(%rdx), %esi
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	testl	%r15d, %r15d
	jne	.LBB0_193
.LBB0_199:                              # %if.else103.i
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	849060(%rbx,%rax,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	testl	%r13d, %r13d
	jne	.LBB0_194
.LBB0_200:                              # %if.else140.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testl	%ebp, %ebp
	jne	.LBB0_195
.LBB0_201:                              # %if.else187.i
	movq	72(%rsp), %rax                  # 8-byte Reload
	movd	849060(%rbx,%rax,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 34(%rsp)
	testl	%r12d, %r12d
	jne	.LBB0_196
.LBB0_202:                              # %if.else210.i
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzwl	849060(%rbx,%rax,4), %eax
.LBB0_203:                              # %intra8x8_hor_up_pred.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	34(%rsp), %eax
	movzwl	36(%rsp), %ecx
	leal	(%rcx,%rax), %edi
	incl	%edi
	shrl	%edi
	movzwl	38(%rsp), %r9d
	leal	(%rax,%rcx,2), %eax
	leal	(%r9,%rax), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	leal	(%rcx,%r9), %esi
	incl	%esi
	shrl	%esi
	movzwl	40(%rsp), %r12d
	leal	(%rcx,%r9,2), %eax
	leal	(%r12,%rax), %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
	movzwl	42(%rsp), %r15d
	movzwl	44(%rsp), %r10d
	movzwl	46(%rsp), %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movzwl	48(%rsp), %r14d
	movslq	80(%rsp), %rcx                  # 4-byte Folded Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rcx,8), %r13
	movslq	96(%rsp), %rdx                  # 4-byte Folded Reload
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
	movq	8(%rax,%rcx,8), %r11
	movw	%si, (%r11,%rdx,2)
	movw	%r8w, 2(%r11,%rdx,2)
	leal	(%r15,%r10), %esi
	incl	%esi
	shrl	%esi
	movq	56(%rsp), %r12                  # 8-byte Reload
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
	movq	16(%rax,%rcx,8), %r15
	movw	%bp, (%r15,%rdx,2)
	movw	%bx, 2(%r15,%rdx,2)
	leal	(%r10,%r12), %r11d
	incl	%r11d
	shrl	%r11d
	addl	%r14d, %r10d
	leal	(%r10,%r12,2), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	movw	%di, 4(%r15,%rdx,2)
	movw	%r9w, 6(%r15,%rdx,2)
	movw	%si, 8(%r15,%rdx,2)
	movw	%r8w, 10(%r15,%rdx,2)
	movw	%r11w, 12(%r15,%rdx,2)
	movw	%bp, 14(%r15,%rdx,2)
	movq	24(%rax,%rcx,8), %rbx
	movw	%di, (%rbx,%rdx,2)
	movw	%r9w, 2(%rbx,%rdx,2)
	leal	(%r14,%r14,2), %edi
	addl	%r12d, %edi
	addl	$2, %edi
	leal	(%r12,%r14), %r9d
	incl	%r9d
	shrl	%r9d
	shrl	$2, %edi
	movw	%si, 4(%rbx,%rdx,2)
	movw	%r8w, 6(%rbx,%rdx,2)
	movw	%r11w, 8(%rbx,%rdx,2)
	movw	%bp, 10(%rbx,%rdx,2)
	movw	%r9w, 12(%rbx,%rdx,2)
	movw	%di, 14(%rbx,%rdx,2)
	movq	32(%rax,%rcx,8), %r10
	movw	%si, (%r10,%rdx,2)
	movw	%r8w, 2(%r10,%rdx,2)
	movw	%r11w, 4(%r10,%rdx,2)
	movw	%bp, 6(%r10,%rdx,2)
	movw	%r9w, 8(%r10,%rdx,2)
	movw	%di, 10(%r10,%rdx,2)
	movw	%r14w, 12(%r10,%rdx,2)
	movq	40(%rax,%rcx,8), %rsi
	movw	%r11w, (%rsi,%rdx,2)
	movw	%bp, 2(%rsi,%rdx,2)
	movw	%r9w, 4(%rsi,%rdx,2)
	movw	%di, 6(%rsi,%rdx,2)
	movw	%r14w, 8(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r9w, (%rsi,%rdx,2)
	movw	%di, 2(%rsi,%rdx,2)
	movw	%r14w, 4(%rsi,%rdx,2)
	movq	32(%rax,%rcx,8), %rsi
	movw	%r14w, 14(%rsi,%rdx,2)
	movq	40(%rax,%rcx,8), %rsi
	movw	%r14w, 14(%rsi,%rdx,2)
	movq	40(%rax,%rcx,8), %rsi
	movw	%r14w, 12(%rsi,%rdx,2)
	movq	40(%rax,%rcx,8), %rsi
	movw	%r14w, 10(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r14w, 14(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r14w, 12(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r14w, 10(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r14w, 8(%rsi,%rdx,2)
	movq	48(%rax,%rcx,8), %rsi
	movw	%r14w, 6(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 14(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 12(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 10(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 8(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 6(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 4(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rsi
	movw	%r14w, 2(%rsi,%rdx,2)
	movq	56(%rax,%rcx,8), %rcx
	movw	%r14w, (%rcx,%rdx,2)
	jmp	.LBB0_240
.LBB0_204:                              # %if.else282.i
	testl	%ebp, %ebp
	jne	.LBB0_234
# %bb.205:                              # %if.else282.i
	testl	%r15d, %r15d
	je	.LBB0_234
# %bb.206:                              # %if.then286.i
	movdqu	2(%rsp), %xmm0
.LBB0_207:                              # %if.end318.i
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
	jmp	.LBB0_235
.LBB0_208:                              # %if.end.thread.i
	testl	%ebp, %ebp
	setne	%r14b
	movl	108(%rbx), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	printf@PLT
	movq	%rbx, %r10
	movl	$0, %r8d
	testl	%r15d, %r15d
	jne	.LBB0_37
.LBB0_209:                              # %if.else92.i
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movl	849060(%r10,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	testl	%r13d, %r13d
	jne	.LBB0_38
.LBB0_210:                              # %if.else129.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	movq	96(%rsp), %r13                  # 8-byte Reload
	testb	%r14b, %r14b
	jne	.LBB0_39
.LBB0_211:                              # %if.else176.i
	movl	849060(%r10,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	je	.LBB0_40
.LBB0_212:                              # %if.then191.i
	movswq	166(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_213:                              # %intra8x8_diag_down_right_pred.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	48(%rsp), %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movzwl	44(%rsp), %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movzwl	46(%rsp), %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movzwl	36(%rsp), %r8d
	movzwl	34(%rsp), %r9d
	movzwl	(%rsp), %edi
	leal	2(%r8,%rdi), %r15d
	movzwl	2(%rsp), %r10d
	leal	(%r9,%r10), %esi
	addl	$2, %esi
	leal	(%rsi,%rdi,2), %ecx
	movzwl	4(%rsp), %r11d
	addl	%r11d, %edi
	leal	(%rdi,%r10,2), %edi
	addl	$2, %edi
	movq	6(%rsp), %rbx
	movzwl	%bx, %r14d
	addl	%r14d, %r10d
	movq	%rbx, %xmm1
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movzwl	14(%rsp), %ebx
	movd	%ebx, %xmm2
	movd	%xmm0, %r12d
	addl	%r11d, %r12d
	leal	(%r10,%r11,2), %ebx
	addl	$2, %ebx
	movzwl	42(%rsp), %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leal	2(%r12,%r14,2), %ebp
	movzwl	16(%rsp), %r10d
	movd	%r10d, %xmm3
	movzwl	40(%rsp), %r11d
	shrl	$2, %ecx
	shrl	$2, %edi
	movslq	80(%rsp), %r14                  # 4-byte Folded Reload
	movslq	%r13d, %r10
	shrl	$2, %ebx
	shrl	$2, %ebp
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
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%r14,8), %rax
	movw	%cx, (%rax,%r10,2)
	movw	%di, 2(%rax,%r10,2)
	movw	%bx, 4(%rax,%r10,2)
	movw	%bp, 6(%rax,%r10,2)
	movq	%xmm2, 8(%rax,%r10,2)
	leal	(%r15,%r9,2), %r15d
	shrl	$2, %r15d
	movq	8(%rsi,%r14,8), %rax
	movw	%r15w, (%rax,%r10,2)
	movw	%cx, 2(%rax,%r10,2)
	movw	%di, 4(%rax,%r10,2)
	movw	%bx, 6(%rax,%r10,2)
	movw	%bp, 8(%rax,%r10,2)
	movd	%xmm1, 10(%rax,%r10,2)
	pextrw	$4, %xmm0, %edx
	movw	%dx, 14(%rax,%r10,2)
	leal	(%r9,%r13), %eax
	addl	$2, %eax
	leal	(%rax,%r8,2), %r9d
	shrl	$2, %r9d
	movq	16(%rsi,%r14,8), %rax
	movw	%r9w, (%rax,%r10,2)
	movw	%r15w, 2(%rax,%r10,2)
	movl	%ecx, %r12d
	movw	%r12w, 4(%rax,%r10,2)
	movw	%di, 6(%rax,%r10,2)
	movw	%bx, 8(%rax,%r10,2)
	movw	%bp, 10(%rax,%r10,2)
	movd	%xmm1, 12(%rax,%r10,2)
	leal	(%r8,%r11), %eax
	addl	$2, %eax
	leal	(%rax,%r13,2), %r8d
	shrl	$2, %r8d
	movq	24(%rsi,%r14,8), %rax
	movw	%r8w, (%rax,%r10,2)
	movw	%r9w, 2(%rax,%r10,2)
	movw	%r15w, 4(%rax,%r10,2)
	movw	%r12w, 6(%rax,%r10,2)
	movw	%di, 8(%rax,%r10,2)
	movw	%bx, 10(%rax,%r10,2)
	movw	%bp, 12(%rax,%r10,2)
	movd	%xmm0, %edx
	movw	%dx, 14(%rax,%r10,2)
	movq	88(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%r13), %eax
	addl	$2, %eax
	leal	(%rax,%r11,2), %r13d
	shrl	$2, %r13d
	movq	32(%rsi,%r14,8), %rax
	movw	%r13w, (%rax,%r10,2)
	movw	%r8w, 2(%rax,%r10,2)
	movw	%r9w, 4(%rax,%r10,2)
	movw	%r15w, 6(%rax,%r10,2)
	movw	%r12w, 8(%rax,%r10,2)
	movw	%di, 10(%rax,%r10,2)
	movw	%bx, 12(%rax,%r10,2)
	movw	%bp, 14(%rax,%r10,2)
	movq	64(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%r11), %eax
	addl	$2, %eax
	leal	(%rax,%rdx,2), %eax
	movq	%rdx, %r11
	shrl	$2, %eax
	movq	40(%rsi,%r14,8), %rdx
	movw	%ax, (%rdx,%r10,2)
	movw	%r13w, 2(%rdx,%r10,2)
	movw	%r8w, 4(%rdx,%r10,2)
	movw	%r9w, 6(%rdx,%r10,2)
	movw	%r15w, 8(%rdx,%r10,2)
	movw	%r12w, 10(%rdx,%r10,2)
	movw	%di, 12(%rdx,%r10,2)
	movw	%bx, 14(%rdx,%r10,2)
	movq	96(%rsp), %rbx                  # 8-byte Reload
	leal	(%rbx,%rcx,2), %edx
	addl	%r11d, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movq	48(%rsi,%r14,8), %r11
	movw	%dx, (%r11,%r10,2)
	movw	%ax, 2(%r11,%r10,2)
	movw	%r13w, 4(%r11,%r10,2)
	movw	%r8w, 6(%r11,%r10,2)
	movw	%r9w, 8(%r11,%r10,2)
	movw	%r15w, 10(%r11,%r10,2)
	movw	%r12w, 12(%r11,%r10,2)
	movw	%di, 14(%r11,%r10,2)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	addl	%edi, %ecx
	addl	$2, %ecx
	leal	(%rcx,%rbx,2), %ecx
	movq	56(%rsi,%r14,8), %rdi
	shrl	$2, %ecx
	movw	%cx, (%rdi,%r10,2)
	movw	%dx, 2(%rdi,%r10,2)
	movw	%ax, 4(%rdi,%r10,2)
	movw	%r13w, 6(%rdi,%r10,2)
	movw	%r8w, 8(%rdi,%r10,2)
	movw	%r9w, 10(%rdi,%r10,2)
	movw	%r15w, 12(%rdi,%r10,2)
	movw	%r12w, 14(%rdi,%r10,2)
	jmp	.LBB0_240
.LBB0_214:
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jne	.LBB0_129
	jmp	.LBB0_215
.LBB0_216:
	xorl	%r12d, %r12d
	testl	%ebp, %ebp
	jne	.LBB0_135
	jmp	.LBB0_217
.LBB0_222:                              # %if.end.thread.i751
	testl	%ebp, %ebp
	setne	%r14b
	movl	108(%rbx), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	printf@PLT
	movq	%rbx, %r10
	movl	$0, %r8d
	testl	%r15d, %r15d
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB0_157
.LBB0_223:                              # %if.else92.i575
	movl	849060(%r10,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jne	.LBB0_158
.LBB0_224:                              # %if.else129.i720
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testb	%r14b, %r14b
	jne	.LBB0_159
.LBB0_225:                              # %if.else176.i612
	movl	849060(%r10,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	je	.LBB0_160
.LBB0_226:                              # %if.then191.i685
	movswq	166(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_227:                              # %intra8x8_vert_right_pred.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	(%rsp), %eax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movzwl	2(%rsp), %r9d
	leal	(%r9,%rax), %r10d
	incl	%r10d
	shrl	%r10d
	movzwl	4(%rsp), %r8d
	leal	(%r9,%r8), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	movzwl	6(%rsp), %edi
	leal	(%rdi,%r8), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movzwl	8(%rsp), %r15d
	leal	(%rdi,%r15), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movzwl	10(%rsp), %r12d
	leal	(%r15,%r12), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movzwl	12(%rsp), %r13d
	leal	(%r12,%r13), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 168(%rsp)                 # 4-byte Spill
	movzwl	14(%rsp), %edx
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	leal	(%rdx,%r13), %eax
	incl	%eax
	shrl	%eax
	movl	%eax, 180(%rsp)                 # 4-byte Spill
	movzwl	16(%rsp), %eax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	addl	%edx, %eax
	incl	%eax
	shrl	%eax
	movslq	80(%rsp), %rbx                  # 4-byte Folded Reload
	movslq	96(%rsp), %rbp                  # 4-byte Folded Reload
	movzwl	44(%rsp), %edx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	movzwl	40(%rsp), %edx
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	movzwl	42(%rsp), %edx
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	movzwl	36(%rsp), %edx
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movzwl	38(%rsp), %edx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movzwl	34(%rsp), %r14d
	movq	%r14, 272(%rsp)                 # 8-byte Spill
	movzwl	46(%rsp), %edx
	movl	%edx, 248(%rsp)                 # 4-byte Spill
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx,%rbx,8), %rdx
	movl	%r10d, 264(%rsp)                # 4-byte Spill
	movw	%r10w, (%rdx,%rbp,2)
	movl	56(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 2(%rdx,%rbp,2)
	movl	88(%rsp), %ecx                  # 4-byte Reload
	movw	%cx, 4(%rdx,%rbp,2)
	movl	72(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 6(%rdx,%rbp,2)
	movl	64(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 8(%rdx,%rbp,2)
	movl	168(%rsp), %esi                 # 4-byte Reload
	movw	%si, 10(%rdx,%rbp,2)
	movl	180(%rsp), %r11d                # 4-byte Reload
	movw	%r11w, 12(%rdx,%rbp,2)
	movw	%ax, 14(%rdx,%rbp,2)
	movq	192(%rsp), %rax                 # 8-byte Reload
	leal	(%r14,%rax,2), %edx
	addl	$2, %edx
	addl	%r9d, %edx
	movl	%edx, %r11d
	leal	(%rax,%r8), %edx
	addl	$2, %edx
	leal	(%rdx,%r9,2), %eax
	addl	%edi, %r9d
	leal	(%r9,%r8,2), %esi
	addl	$2, %esi
	addl	%r15d, %r8d
	leal	(%r8,%rdi,2), %r8d
	addl	$2, %r8d
	addl	%r12d, %edi
	leal	(%rdi,%r15,2), %edx
	addl	$2, %edx
	addl	%r13d, %r15d
	leal	(%r15,%r12,2), %ecx
	addl	$2, %ecx
	movq	200(%rsp), %rdi                 # 8-byte Reload
	addl	%edi, %r12d
	leal	(%r12,%r13,2), %r12d
	addl	$2, %r12d
	addl	208(%rsp), %r13d                # 4-byte Folded Reload
	leal	2(%r13,%rdi,2), %r9d
	shrl	$2, %r11d
	movl	%r11d, 256(%rsp)                # 4-byte Spill
	shrl	$2, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	shrl	$2, %esi
	movl	%esi, 200(%rsp)                 # 4-byte Spill
	shrl	$2, %r8d
	movl	%r8d, 260(%rsp)                 # 4-byte Spill
	shrl	$2, %edx
	movl	%edx, 208(%rsp)                 # 4-byte Spill
	shrl	$2, %ecx
	shrl	$2, %r12d
	shrl	$2, %r9d
	movq	184(%rsp), %r15                 # 8-byte Reload
	movq	8(%r15,%rbx,8), %r13
	movw	%r11w, (%r13,%rbp,2)
	movw	%ax, 2(%r13,%rbp,2)
	movw	%si, 4(%r13,%rbp,2)
	movw	%r8w, 6(%r13,%rbp,2)
	movw	%dx, 8(%r13,%rbp,2)
	movw	%cx, 10(%r13,%rbp,2)
	movl	%ecx, 268(%rsp)                 # 4-byte Spill
	movw	%r12w, 12(%r13,%rbp,2)
	movw	%r9w, 14(%r13,%rbp,2)
	movq	216(%rsp), %rdx                 # 8-byte Reload
	movq	192(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rdx), %r9d
	addl	$2, %r9d
	movq	272(%rsp), %rsi                 # 8-byte Reload
	leal	(%r9,%rsi,2), %eax
	shrl	$2, %eax
	movl	%eax, 192(%rsp)                 # 4-byte Spill
	movq	16(%r15,%rbx,8), %r13
	movq	%rbx, %r14
	movw	%ax, (%r13,%rbp,2)
	movw	%r10w, 2(%r13,%rbp,2)
	movl	56(%rsp), %r9d                  # 4-byte Reload
	movw	%r9w, 4(%r13,%rbp,2)
	movl	88(%rsp), %r11d                 # 4-byte Reload
	movw	%r11w, 6(%r13,%rbp,2)
	movl	72(%rsp), %r8d                  # 4-byte Reload
	movw	%r8w, 8(%r13,%rbp,2)
	movl	64(%rsp), %r10d                 # 4-byte Reload
	movw	%r10w, 10(%r13,%rbp,2)
	movl	168(%rsp), %eax                 # 4-byte Reload
	movw	%ax, 12(%r13,%rbp,2)
	movl	180(%rsp), %edi                 # 4-byte Reload
	movw	%di, 14(%r13,%rbp,2)
	movq	96(%rsp), %rax                  # 8-byte Reload
	addl	%eax, %esi
	addl	$2, %esi
	leal	(%rsi,%rdx,2), %ebx
	shrl	$2, %ebx
	movq	24(%r15,%r14,8), %r13
	movw	%bx, (%r13,%rbp,2)
	movl	256(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 2(%r13,%rbp,2)
	movl	80(%rsp), %esi                  # 4-byte Reload
	movw	%si, 4(%r13,%rbp,2)
	movl	200(%rsp), %esi                 # 4-byte Reload
	movw	%si, 6(%r13,%rbp,2)
	movl	260(%rsp), %esi                 # 4-byte Reload
	movw	%si, 8(%r13,%rbp,2)
	movl	208(%rsp), %edi                 # 4-byte Reload
	movw	%di, 10(%r13,%rbp,2)
	movw	%cx, 12(%r13,%rbp,2)
	movw	%r12w, 14(%r13,%rbp,2)
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	216(%rsp), %rdi                 # 8-byte Reload
	addl	%ecx, %edi
	addl	$2, %edi
	leal	(%rdi,%rax,2), %edi
	shrl	$2, %edi
	movq	32(%r15,%r14,8), %r12
	movw	%di, (%r12,%rbp,2)
	movl	192(%rsp), %eax                 # 4-byte Reload
	movw	%ax, 2(%r12,%rbp,2)
	movl	264(%rsp), %r13d                # 4-byte Reload
	movw	%r13w, 4(%r12,%rbp,2)
	movw	%r9w, 6(%r12,%rbp,2)
	movw	%r11w, 8(%r12,%rbp,2)
	movw	%r8w, 10(%r12,%rbp,2)
	movw	%r10w, 12(%r12,%rbp,2)
	movl	168(%rsp), %eax                 # 4-byte Reload
	movw	%ax, 14(%r12,%rbp,2)
	movq	232(%rsp), %r10                 # 8-byte Reload
	movq	%rcx, %rax
	leal	(%r10,%rcx,2), %r12d
	addl	$2, %r12d
	addl	96(%rsp), %r12d                 # 4-byte Folded Reload
	shrl	$2, %r12d
	movq	%r15, %rcx
	movq	40(%r15,%r14,8), %r8
	movw	%r12w, (%r8,%rbp,2)
	movw	%bx, 2(%r8,%rbp,2)
	movw	%dx, 4(%r8,%rbp,2)
	movl	%edx, %r11d
	movl	80(%rsp), %edx                  # 4-byte Reload
	movw	%dx, 6(%r8,%rbp,2)
	movl	200(%rsp), %r9d                 # 4-byte Reload
	movw	%r9w, 8(%r8,%rbp,2)
	movw	%si, 10(%r8,%rbp,2)
	movl	208(%rsp), %edx                 # 4-byte Reload
	movw	%dx, 12(%r8,%rbp,2)
	movl	268(%rsp), %r15d                # 4-byte Reload
	movw	%r15w, 14(%r8,%rbp,2)
	movq	240(%rsp), %r15                 # 8-byte Reload
	leal	(%rax,%r15), %r8d
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r8d
	movq	%r10, %rax
	shrl	$2, %r8d
	movq	48(%rcx,%r14,8), %r10
	movw	%r8w, (%r10,%rbp,2)
	movw	%di, 2(%r10,%rbp,2)
	movl	192(%rsp), %edi                 # 4-byte Reload
	movw	%di, 4(%r10,%rbp,2)
	movw	%r13w, 6(%r10,%rbp,2)
	movl	56(%rsp), %edi                  # 4-byte Reload
	movw	%di, 8(%r10,%rbp,2)
	movl	88(%rsp), %edi                  # 4-byte Reload
	movw	%di, 10(%r10,%rbp,2)
	movl	72(%rsp), %edi                  # 4-byte Reload
	movw	%di, 12(%r10,%rbp,2)
	movl	64(%rsp), %edi                  # 4-byte Reload
	movw	%di, 14(%r10,%rbp,2)
	leal	(%rax,%r15,2), %edi
	addl	$2, %edi
	addl	248(%rsp), %edi                 # 4-byte Folded Reload
	movq	56(%rcx,%r14,8), %rcx
	shrl	$2, %edi
	movw	%di, (%rcx,%rbp,2)
	movw	%r12w, 2(%rcx,%rbp,2)
	movw	%bx, 4(%rcx,%rbp,2)
	movw	%r11w, 6(%rcx,%rbp,2)
	movl	80(%rsp), %eax                  # 4-byte Reload
	movw	%ax, 8(%rcx,%rbp,2)
	movw	%r9w, 10(%rcx,%rbp,2)
	movw	%si, 12(%rcx,%rbp,2)
	movw	%dx, 14(%rcx,%rbp,2)
	jmp	.LBB0_240
.LBB0_228:                              # %if.end.thread.i1412
	testl	%ebp, %ebp
	setne	%r14b
	movl	108(%rbx), %esi
	xorl	%r12d, %r12d
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	printf@PLT
	movq	%rbx, %r10
	movl	$0, %r8d
	testl	%r15d, %r15d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB0_177
.LBB0_229:                              # %if.else99.i
	movl	849060(%r10,%rdi,4), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 2(%rsp)
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	jne	.LBB0_178
.LBB0_230:                              # %if.else136.i
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 18(%rsp)
	testb	%r14b, %r14b
	jne	.LBB0_179
.LBB0_231:                              # %if.else183.i
	movl	849060(%r10,%rdi,4), %eax
	movw	%ax, 46(%rsp)
	movw	%ax, 44(%rsp)
	movw	%ax, 42(%rsp)
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, 34(%rsp)
	movw	%ax, 48(%rsp)
	testb	%r8b, %r8b
	je	.LBB0_180
.LBB0_232:                              # %if.then198.i
	movswq	166(%rsp), %rax
	movq	(%rsi,%rax,8), %rax
	movswq	164(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
.LBB0_233:                              # %intra8x8_hor_down_pred.exit
	movw	%ax, (%rsp)
	movq	%rsp, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%ebp, %ecx
	callq	LowPassForIntra8x8Pred
	movzwl	48(%rsp), %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movzwl	46(%rsp), %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movzwl	44(%rsp), %eax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movzwl	36(%rsp), %esi
	movzwl	34(%rsp), %r13d
	movzwl	(%rsp), %eax
	leal	2(%rsi,%rax), %r14d
	leal	1(%r13,%rax), %edi
	movzwl	2(%rsp), %ecx
	leal	2(%r13,%rcx), %r8d
	leal	(%r8,%rax,2), %r11d
	movq	4(%rsp), %r8
	movzwl	%r8w, %r10d
	addl	%r10d, %eax
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
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leal	2(%r8,%r10,2), %r12d
	movzwl	14(%rsp), %eax
	movd	%eax, %xmm2
	movzwl	40(%rsp), %r9d
	shrl	%edi
	shrl	$2, %r11d
	movslq	80(%rsp), %r15                  # 4-byte Folded Reload
	movslq	96(%rsp), %r8                   # 4-byte Folded Reload
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
	movzwl	38(%rsp), %edx
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%r15,8), %rax
	movw	%di, (%rax,%r8,2)
	movw	%r11w, 2(%rax,%r8,2)
	movw	%bp, 4(%rax,%r8,2)
	movw	%r12w, 6(%rax,%r8,2)
	movq	%xmm1, 8(%rax,%r8,2)
	leal	(%rsi,%r13), %ecx
	incl	%ecx
	shrl	%ecx
	leal	(%r14,%r13,2), %r10d
	shrl	$2, %r10d
	movq	8(%rbx,%r15,8), %r14
	movw	%cx, (%r14,%r8,2)
	movw	%r10w, 2(%r14,%r8,2)
	movw	%di, 4(%r14,%r8,2)
	movw	%r11w, 6(%r14,%r8,2)
	movw	%bp, 8(%r14,%r8,2)
	movw	%r12w, 10(%r14,%r8,2)
	movd	%xmm0, 12(%r14,%r8,2)
	leal	(%rdx,%rsi), %r14d
	incl	%r14d
	shrl	%r14d
	addl	%edx, %r13d
	addl	$2, %r13d
	leal	(%r13,%rsi,2), %r13d
	shrl	$2, %r13d
	movq	16(%rbx,%r15,8), %rax
	movw	%r14w, (%rax,%r8,2)
	movw	%r13w, 2(%rax,%r8,2)
	movw	%cx, 4(%rax,%r8,2)
	movw	%r10w, 6(%rax,%r8,2)
	movw	%di, 8(%rax,%r8,2)
	movw	%r11w, 10(%rax,%r8,2)
	movw	%bp, 12(%rax,%r8,2)
	movw	%r12w, 14(%rax,%r8,2)
	leal	(%r9,%rdx), %r12d
	incl	%r12d
	shrl	%r12d
	leal	(%rsi,%r9), %eax
	addl	$2, %eax
	leal	(%rax,%rdx,2), %ebp
	shrl	$2, %ebp
	movq	24(%rbx,%r15,8), %rax
	movw	%r12w, (%rax,%r8,2)
	movw	%bp, 2(%rax,%r8,2)
	movw	%r14w, 4(%rax,%r8,2)
	movw	%r13w, 6(%rax,%r8,2)
	movw	%cx, 8(%rax,%r8,2)
	movw	%r10w, 10(%rax,%r8,2)
	movw	%di, 12(%rax,%r8,2)
	movw	%r11w, 14(%rax,%r8,2)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	leal	(%rdi,%r9), %esi
	incl	%esi
	shrl	%esi
	leal	(%rdi,%rdx), %eax
	addl	$2, %eax
	movq	%rdi, %rdx
	leal	(%rax,%r9,2), %edi
	shrl	$2, %edi
	movq	32(%rbx,%r15,8), %rax
	movw	%si, (%rax,%r8,2)
	movw	%di, 2(%rax,%r8,2)
	movw	%r12w, 4(%rax,%r8,2)
	movw	%bp, 6(%rax,%r8,2)
	movw	%r14w, 8(%rax,%r8,2)
	movw	%r13w, 10(%rax,%r8,2)
	movw	%cx, 12(%rax,%r8,2)
	movw	%r10w, 14(%rax,%r8,2)
	movq	168(%rsp), %r11                 # 8-byte Reload
	leal	(%rdx,%r11), %eax
	incl	%eax
	shrl	%eax
	leal	(%r11,%r9), %ecx
	addl	$2, %ecx
	leal	(%rcx,%rdx,2), %ecx
	shrl	$2, %ecx
	movq	40(%rbx,%r15,8), %rdx
	movw	%ax, (%rdx,%r8,2)
	movw	%cx, 2(%rdx,%r8,2)
	movw	%si, 4(%rdx,%r8,2)
	movw	%di, 6(%rdx,%r8,2)
	movw	%r12w, 8(%rdx,%r8,2)
	movw	%bp, 10(%rdx,%r8,2)
	movw	%r14w, 12(%rdx,%r8,2)
	movw	%r13w, 14(%rdx,%r8,2)
	movq	88(%rsp), %r9                   # 8-byte Reload
	leal	(%r9,%r11), %edx
	incl	%edx
	shrl	%edx
	leal	(%r9,%r11,2), %r10d
	movq	%r11, %r13
	movq	%r9, %r14
	movq	56(%rsp), %r9                   # 8-byte Reload
	addl	%r10d, %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	movq	48(%rbx,%r15,8), %r10
	movw	%dx, (%r10,%r8,2)
	movw	%r9w, 2(%r10,%r8,2)
	movw	%ax, 4(%r10,%r8,2)
	movw	%cx, 6(%r10,%r8,2)
	movw	%si, 8(%r10,%r8,2)
	movw	%di, 10(%r10,%r8,2)
	movw	%r12w, 12(%r10,%r8,2)
	movw	%bp, 14(%r10,%r8,2)
	movq	64(%rsp), %r11                  # 8-byte Reload
	leal	1(%r14,%r11), %r10d
	leal	(%r11,%r14,2), %r11d
	addl	%r13d, %r11d
	addl	$2, %r11d
	movq	56(%rbx,%r15,8), %rbx
	shrl	%r10d
	movw	%r10w, (%rbx,%r8,2)
	shrl	$2, %r11d
	movw	%r11w, 2(%rbx,%r8,2)
	movw	%dx, 4(%rbx,%r8,2)
	movw	%r9w, 6(%rbx,%r8,2)
	movw	%ax, 8(%rbx,%r8,2)
	movw	%cx, 10(%rbx,%r8,2)
	movw	%si, 12(%rbx,%r8,2)
	movw	%di, 14(%rbx,%r8,2)
	jmp	.LBB0_240
.LBB0_234:                              # %if.else312.i
	movl	849060(%r12,%r13,4), %eax
.LBB0_235:                              # %if.end318.i
	movslq	%r14d, %rcx
	movslq	80(%rsp), %rdx                  # 4-byte Folded Reload
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	8(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	16(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	24(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	32(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	40(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	48(%rbx,%rdx,8), %rsi
	movw	%ax, 14(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 8(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 10(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rsi
	movw	%ax, 12(%rsi,%rcx,2)
	movq	56(%rbx,%rdx,8), %rdx
	movw	%ax, 14(%rdx,%rcx,2)
.LBB0_240:                              # %cleanup
	xorl	%eax, %eax
.LBB0_241:                              # %cleanup
	addq	$280, %rsp                      # imm = 0x118
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
	.size	intrapred8x8_normal, .Lfunc_end0-intrapred8x8_normal
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
