	.text
	.file	"intra4x4_pred_mbaff.c"
	.globl	intra4x4_pred_mbaff             # -- Begin function intra4x4_pred_mbaff
	.p2align	4, 0x90
	.type	intra4x4_pred_mbaff,@function
intra4x4_pred_mbaff:                    # @intra4x4_pred_mbaff
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r13d
	movl	%esi, %r15d
	movq	8(%rdi), %rbx
	movq	848800(%rbx), %rax
	movslq	%r9d, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %esi
	movb	%sil, 372(%rdi)
	cmpq	$8, %rsi
	ja	.LBB0_24
# %bb.1:                                # %entry
	movl	%edx, %r12d
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_2:                                # %sw.bb4
	movq	(%rdi), %r14
	leal	-1(%r13), %edx
	leaq	849124(%rbx), %rcx
	leaq	48(%rsp), %r8
	movl	%r12d, %esi
	callq	getAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	48(%rsp), %eax
	je	.LBB0_5
# %bb.3:                                # %if.then.i
	testl	%eax, %eax
	je	.LBB0_25
# %bb.4:                                # %cond.true.i66
	movq	13544(%r14), %rax
	movslq	52(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_5:                                # %if.end.i70
	testl	%eax, %eax
	je	.LBB0_25
# %bb.6:                                # %if.else7.i
	movq	1248(%r14), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	13520(%r14), %rcx
	testl	%r15d, %r15d
	je	.LBB0_169
# %bb.7:                                # %cond.true12.i
	decl	%r15d
	shlq	$3, %r15
	addq	136(%rcx), %r15
	jmp	.LBB0_170
.LBB0_8:                                # %sw.bb8
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_26
# %bb.9:                                # %cond.true.i124
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_27
.LBB0_10:                               # %sw.bb
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_39
# %bb.11:                               # %cond.true.i
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_40
.LBB0_12:                               # %sw.bb10
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r12, %r14
	leal	-1(%r13), %ebp
	leaq	849124(%rbx), %r12
	leaq	48(%rsp), %r8
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r13
	movl	%r14d, %esi
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	leal	4(%r14), %esi
	leaq	32(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	cmpl	$0, 32(%rsp)
	je	.LBB0_58
# %bb.13:                               # %land.rhs.i
	movl	%r14d, %eax
	xorl	$4, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movl	%r13d, %edx
	andl	$-9, %edx
	xorl	$4, %edx
	xorl	%ecx, %ecx
	orl	%eax, %edx
	setne	%cl
	jmp	.LBB0_59
.LBB0_14:                               # %sw.bb14
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leal	-1(%r13), %ebp
	leaq	849124(%rbx), %r14
	leaq	48(%rsp), %r8
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r13
	movl	%r12d, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leal	4(%r12), %esi
	leaq	32(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	cmpl	$0, 32(%rsp)
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	je	.LBB0_67
# %bb.15:                               # %land.rhs.i376
	movl	%r12d, %eax
	xorl	$4, %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %r13
                                        # kill: def $ecx killed $ecx killed $rcx
	andl	$-9, %ecx
	xorl	$4, %ecx
	xorl	%ebp, %ebp
	orl	%eax, %ecx
	setne	%bpl
	jmp	.LBB0_68
.LBB0_16:                               # %sw.bb6
	movq	(%rdi), %r14
	movq	13520(%r14), %rax
	testl	%r15d, %r15d
	je	.LBB0_81
# %bb.17:                               # %cond.true.i78
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_82
.LBB0_18:                               # %sw.bb12
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_95
# %bb.19:                               # %cond.true.i218
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_96
.LBB0_20:                               # %sw.bb18
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_108
# %bb.21:                               # %cond.true.i562
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_109
.LBB0_22:                               # %sw.bb16
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	(%rdi), %r13
	movq	13520(%r13), %rax
	testl	%r15d, %r15d
	je	.LBB0_121
# %bb.23:                               # %cond.true.i467
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_122
.LBB0_24:                               # %sw.default
	movl	$.L.str, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_172
.LBB0_25:                               # %if.then6.i
	movl	108(%r14), %esi
	movl	$.L.str.1, %edi
	jmp	.LBB0_166
.LBB0_26:                               # %cond.false.i168
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_27:                               # %cond.end.i129
	movq	(%rcx), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%r12, %r14
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r13), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r13), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	3(%r13), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	decl	%r13d
	leaq	32(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leaq	136(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_38
# %bb.28:                               # %for.cond23.preheader.i
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_30
# %bb.29:                               # %cond.true29.i
	movq	13544(%r10), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_30:                               # %cond.end35.i
	cmpl	$0, 64(%rsp)
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB0_32
# %bb.31:                               # %cond.true29.1.i
	movq	13544(%r10), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_32:                               # %cond.end35.1.i
	xorl	%edx, %edx
	cmpl	$0, 80(%rsp)
	movl	$0, %esi
	je	.LBB0_34
# %bb.33:                               # %cond.true29.2.i
	movq	13544(%r10), %rsi
	movslq	84(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_34:                               # %cond.end35.2.i
	cmpl	$0, 96(%rsp)
	je	.LBB0_36
# %bb.35:                               # %cond.true29.3.i
	movq	13544(%r10), %rdx
	movslq	100(%rsp), %rdi
	movzbl	(%rdx,%rdi), %edx
.LBB0_36:                               # %cond.end35.3.i
	cmpl	$0, 32(%rsp)
	je	.LBB0_138
# %bb.37:                               # %cond.true42.i
	movq	13544(%r10), %rdi
	movslq	36(%rsp), %r8
	movsbl	(%rdi,%r8), %edi
	cmpl	$0, 136(%rsp)
	jne	.LBB0_139
	jmp	.LBB0_144
.LBB0_38:                               # %if.else.i167
	movl	48(%rsp), %eax
	movl	32(%rsp), %edi
	movl	136(%rsp), %ecx
	movq	24(%rsp), %r15                  # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB0_140
.LBB0_39:                               # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_40:                               # %cond.end.i
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %ebp
	leaq	849124(%rbx), %r15
	movslq	%r13d, %r14
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r13), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r13), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	3(%r13), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	24(%rsp), %rbp                  # 8-byte Reload
	movq	%r15, %rcx
	callq	*856744(%rbx)
	decl	%r13d
	leaq	32(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_53
# %bb.41:                               # %for.cond17.preheader.i
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	movq	120(%rsp), %rdi                 # 8-byte Reload
	je	.LBB0_43
# %bb.42:                               # %cond.true23.i
	movq	13544(%rdi), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_43:                               # %cond.end29.i
	cmpl	$0, 64(%rsp)
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_45
# %bb.44:                               # %cond.true23.1.i
	movq	13544(%rdi), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_45:                               # %cond.end29.1.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 80(%rsp)
	movl	$0, %edx
	je	.LBB0_47
# %bb.46:                               # %cond.true23.2.i
	movq	13544(%rdi), %rdx
	movslq	84(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_47:                               # %cond.end29.2.i
	andl	%edx, %eax
	cmpl	$0, 96(%rsp)
	je	.LBB0_49
# %bb.48:                               # %cond.true23.3.i
	movq	13544(%rdi), %rcx
	movslq	100(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_49:                               # %cond.end29.3.i
	andl	%ecx, %eax
	cmpl	$0, 32(%rsp)
	je	.LBB0_54
# %bb.50:                               # %cond.true36.i
	movq	13544(%rdi), %rcx
	movslq	36(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_54
.LBB0_51:                               # %if.end88.thread.i
	movswq	46(%rsp), %rcx
	movq	(%r10,%rcx,8), %rcx
	movswq	44(%rsp), %rdx
	movq	(%rcx,%rdx,2), %xmm0            # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	testl	%eax, %eax
	je	.LBB0_167
# %bb.52:
	movb	$1, %sil
	xorl	%edx, %edx
	jmp	.LBB0_56
.LBB0_53:                               # %if.else.i
	movl	48(%rsp), %eax
	movl	32(%rsp), %ecx
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	testl	%ecx, %ecx
	jne	.LBB0_51
.LBB0_54:                               # %if.end88.i
	testl	%eax, %eax
	je	.LBB0_137
# %bb.55:
	movb	$1, %dl
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB0_56:                               # %if.end131.i
	movswq	62(%rsp), %rax
	movq	(%r10,%rax,8), %rax
	movswq	60(%rsp), %rdi
	movzwl	(%rax,%rdi,2), %eax
	movswq	78(%rsp), %rdi
	movq	(%r10,%rdi,8), %rdi
	movswq	76(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%eax, %edi
	movswq	94(%rsp), %rax
	movq	(%r10,%rax,8), %rax
	movswq	92(%rsp), %r8
	movzwl	(%rax,%r8,2), %r8d
	addl	%edi, %r8d
	movswq	110(%rsp), %rax
	movq	(%r10,%rax,8), %rax
	movswq	108(%rsp), %rdi
	movzwl	(%rax,%rdi,2), %eax
	addl	%r8d, %eax
	addl	%ecx, %eax
	testb	%sil, %sil
	je	.LBB0_135
# %bb.57:                               # %if.then134.i
	addl	$4, %eax
	shrl	$3, %eax
	jmp	.LBB0_168
.LBB0_58:
	xorl	%ecx, %ecx
	movq	8(%rsp), %r13                   # 8-byte Reload
.LBB0_59:                               # %land.end10.i
	movl	%ecx, 32(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	48(%rsp), %eax
	je	.LBB0_64
# %bb.60:                               # %if.then.i178
	testl	%eax, %eax
	movl	$0, %eax
	movq	16(%rsp), %rsi                  # 8-byte Reload
	je	.LBB0_62
# %bb.61:                               # %cond.true.i179
	movq	13544(%rsi), %rax
	movslq	52(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
.LBB0_62:                               # %cond.end.i185
	testl	%ecx, %ecx
	je	.LBB0_145
# %bb.63:                               # %cond.true18.i188
	movq	13544(%rsi), %rcx
	movslq	36(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	testl	%eax, %eax
	je	.LBB0_146
.LBB0_65:                               # %if.else31.i
	movq	13520(%rsi), %rax
	testl	%r15d, %r15d
	je	.LBB0_147
# %bb.66:                               # %cond.true33.i
	leal	-1(%r15), %edx
	shlq	$3, %rdx
	addq	136(%rax), %rdx
	jmp	.LBB0_148
.LBB0_64:
	movq	16(%rsp), %rsi                  # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_65
.LBB0_146:                              # %if.then30.i
	movl	108(%rsi), %esi
	movl	$.L.str.4, %edi
	jmp	.LBB0_166
.LBB0_67:
	movq	8(%rsp), %r13                   # 8-byte Reload
	xorl	%ebp, %ebp
.LBB0_68:                               # %land.end10.i380
	movl	%ebp, 32(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	48(%rsp), %eax
	je	.LBB0_73
# %bb.69:                               # %if.then.i385
	testl	%eax, %eax
	movl	$0, %eax
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_71
# %bb.70:                               # %cond.true.i387
	movq	13544(%rbx), %rax
	movslq	52(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_71:                               # %cond.end.i393
	testl	%ebp, %ebp
	je	.LBB0_151
# %bb.72:                               # %cond.true18.i396
	movq	13544(%rbx), %rcx
	movslq	36(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ebp
	testl	%eax, %eax
	jne	.LBB0_75
.LBB0_74:                               # %if.then30.i460
	movl	108(%rbx), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_75:                               # %if.end31.i
	movq	13520(%rbx), %rax
	testl	%r15d, %r15d
	je	.LBB0_77
# %bb.76:                               # %cond.true33.i408
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_78
.LBB0_73:
	movq	16(%rsp), %rbx                  # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_75
	jmp	.LBB0_74
.LBB0_77:                               # %cond.false37.i458
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_78:                               # %cond.end40.i413
	movq	(%rcx), %rdx
	movq	1248(%rbx), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movswq	62(%rsp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movswq	60(%rsp), %rdi
	movzwl	(%rcx,%rdi,2), %ebx
	movzwl	2(%rcx,%rdi,2), %r10d
	movzwl	4(%rcx,%rdi,2), %esi
	movzwl	6(%rcx,%rdi,2), %r11d
	movzwl	%r11w, %ecx
	movl	%r11d, %r15d
	movl	%r11d, %edi
	testl	%ebp, %ebp
	je	.LBB0_80
# %bb.79:                               # %if.then52.i429
	movswq	46(%rsp), %rdi
	movq	(%rdx,%rdi,8), %rdx
	movswq	44(%rsp), %rdi
	movzwl	(%rdx,%rdi,2), %r11d
	movzwl	2(%rdx,%rdi,2), %r15d
	movzwl	4(%rdx,%rdi,2), %edi
.LBB0_80:                               # %intra4x4_vert_left_pred_mbaff.exit
	leal	(%r10,%rbx), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%r10,%rsi), %edx
	incl	%edx
	shrl	%edx
	leal	(%rcx,%rsi), %r8d
	incl	%r8d
	shrl	%r8d
	movzwl	%r11w, %r14d
	leal	(%rcx,%r14), %r11d
	incl	%r11d
	shrl	%r11d
	movzwl	%r15w, %r15d
	leal	(%r14,%r15), %ebp
	incl	%ebp
	shrl	%ebp
	leal	(%rbx,%r10,2), %ebx
	addl	%esi, %ebx
	addl	$2, %ebx
	shrl	$2, %ebx
	leal	(%r10,%rsi,2), %r10d
	addl	%ecx, %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	leal	(%rsi,%rcx,2), %esi
	addl	$2, %esi
	addl	%r14d, %esi
	shrl	$2, %esi
	leal	(%rcx,%r14,2), %ecx
	addl	$2, %ecx
	addl	%r15d, %ecx
	shrl	$2, %ecx
	movzwl	%di, %edi
	leal	(%r14,%r15,2), %r14d
	addl	%r14d, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movslq	%r13d, %r14
	movq	(%rax,%r14,8), %r15
	movslq	24(%rsp), %r12                  # 4-byte Folded Reload
	movw	%r9w, (%r15,%r12,2)
	movw	%dx, 2(%r15,%r12,2)
	movw	%r8w, 4(%r15,%r12,2)
	movw	%r11w, 6(%r15,%r12,2)
	movq	8(%rax,%r14,8), %r9
	movw	%bx, (%r9,%r12,2)
	movw	%r10w, 2(%r9,%r12,2)
	movw	%si, 4(%r9,%r12,2)
	movw	%cx, 6(%r9,%r12,2)
	movq	16(%rax,%r14,8), %r9
	movw	%dx, (%r9,%r12,2)
	movw	%r8w, 2(%r9,%r12,2)
	movw	%r11w, 4(%r9,%r12,2)
	movw	%bp, 6(%r9,%r12,2)
	movq	24(%rax,%r14,8), %rax
	movw	%r10w, (%rax,%r12,2)
	movw	%si, 2(%rax,%r12,2)
	movw	%cx, 4(%rax,%r12,2)
	movw	%di, 6(%rax,%r12,2)
	jmp	.LBB0_171
.LBB0_81:                               # %cond.false.i117
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_82:                               # %cond.end.i83
	movq	(%rcx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1248(%r14), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r13), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r13), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	leal	3(%r13), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_94
# %bb.83:                               # %for.cond12.preheader.i
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	je	.LBB0_85
# %bb.84:                               # %cond.true18.i
	movq	13544(%r14), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_85:                               # %cond.end24.i
	cmpl	$0, 64(%rsp)
	movq	24(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_87
# %bb.86:                               # %cond.true18.1.i
	movq	13544(%r14), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_87:                               # %cond.end24.1.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 80(%rsp)
	movl	$0, %edx
	je	.LBB0_89
# %bb.88:                               # %cond.true18.2.i
	movq	13544(%r14), %rdx
	movslq	84(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_89:                               # %cond.end24.2.i
	andl	%edx, %eax
	cmpl	$0, 96(%rsp)
	je	.LBB0_91
# %bb.90:                               # %cond.true18.3.i
	movq	13544(%r14), %rcx
	movslq	100(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_91:                               # %cond.end24.3.i
	andl	%ecx, %eax
	movslq	8(%rsp), %rbx                   # 4-byte Folded Reload
	testl	%eax, %eax
	jne	.LBB0_93
.LBB0_92:                               # %if.then32.i
	movl	108(%r14), %esi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_93:                               # %intra4x4_hor_pred_mbaff.exit
	movslq	%r15d, %rax
	movq	120(%rsp), %r8                  # 8-byte Reload
	movq	(%r8,%rbx,8), %rcx
	movswq	62(%rsp), %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi,%rdx,8), %rdx
	movswq	60(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rcx,%rax,2)
	movq	8(%r8,%rbx,8), %rcx
	movswq	78(%rsp), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movswq	76(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rcx,%rax,2)
	movq	16(%r8,%rbx,8), %rcx
	movswq	94(%rsp), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movswq	92(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rcx,%rax,2)
	movq	24(%r8,%rbx,8), %rcx
	movswq	110(%rsp), %rdx
	movq	(%rdi,%rdx,8), %rdx
	movswq	108(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movd	%edx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rcx,%rax,2)
	jmp	.LBB0_171
.LBB0_94:                               # %if.else.i116
	movl	48(%rsp), %eax
	movq	24(%rsp), %r15                  # 8-byte Reload
	movslq	8(%rsp), %rbx                   # 4-byte Folded Reload
	testl	%eax, %eax
	jne	.LBB0_93
	jmp	.LBB0_92
.LBB0_95:                               # %cond.false.i366
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_96:                               # %cond.end.i223
	movq	(%rcx), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r12, %r14
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r13), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r13), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	3(%r13), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	decl	%r13d
	leaq	32(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leaq	136(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_107
# %bb.97:                               # %for.cond23.preheader.i239
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	movq	128(%rsp), %r9                  # 8-byte Reload
	je	.LBB0_99
# %bb.98:                               # %cond.true29.i242
	movq	13544(%r9), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_99:                               # %cond.end35.i246
	cmpl	$0, 64(%rsp)
	movq	8(%rsp), %rbx                   # 8-byte Reload
	je	.LBB0_101
# %bb.100:                              # %cond.true29.1.i249
	movq	13544(%r9), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_101:                              # %cond.end35.1.i253
	xorl	%edx, %edx
	cmpl	$0, 80(%rsp)
	movl	$0, %esi
	je	.LBB0_103
# %bb.102:                              # %cond.true29.2.i257
	movq	13544(%r9), %rsi
	movslq	84(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_103:                              # %cond.end35.2.i261
	cmpl	$0, 96(%rsp)
	je	.LBB0_105
# %bb.104:                              # %cond.true29.3.i265
	movq	13544(%r9), %rdx
	movslq	100(%rsp), %rdi
	movzbl	(%rdx,%rdi), %edx
.LBB0_105:                              # %cond.end35.3.i269
	cmpl	$0, 32(%rsp)
	je	.LBB0_152
# %bb.106:                              # %cond.true42.i273
	movq	13544(%r9), %rdi
	movslq	36(%rsp), %r8
	movsbl	(%rdi,%r8), %edi
	cmpl	$0, 136(%rsp)
	jne	.LBB0_153
	jmp	.LBB0_157
.LBB0_107:                              # %if.else.i365
	movl	48(%rsp), %eax
	movl	32(%rsp), %edi
	movl	136(%rsp), %ecx
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	128(%rsp), %r9                  # 8-byte Reload
	jmp	.LBB0_154
.LBB0_108:                              # %cond.false.i708
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_109:                              # %cond.end.i567
	movq	(%rcx), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%r12, %r14
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r13), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r13), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	3(%r13), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	decl	%r13d
	leaq	32(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leaq	136(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_120
# %bb.110:                              # %for.cond23.preheader.i583
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_112
# %bb.111:                              # %cond.true29.i586
	movq	13544(%r10), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_112:                              # %cond.end35.i590
	cmpl	$0, 64(%rsp)
	movq	8(%rsp), %r9                    # 8-byte Reload
	je	.LBB0_114
# %bb.113:                              # %cond.true29.1.i593
	movq	13544(%r10), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_114:                              # %cond.end35.1.i597
	xorl	%edx, %edx
	cmpl	$0, 80(%rsp)
	movl	$0, %esi
	je	.LBB0_116
# %bb.115:                              # %cond.true29.2.i601
	movq	13544(%r10), %rsi
	movslq	84(%rsp), %rdi
	movzbl	(%rsi,%rdi), %esi
.LBB0_116:                              # %cond.end35.2.i605
	cmpl	$0, 96(%rsp)
	je	.LBB0_118
# %bb.117:                              # %cond.true29.3.i609
	movq	13544(%r10), %rdx
	movslq	100(%rsp), %rdi
	movzbl	(%rdx,%rdi), %edx
.LBB0_118:                              # %cond.end35.3.i613
	cmpl	$0, 32(%rsp)
	je	.LBB0_159
# %bb.119:                              # %cond.true42.i617
	movq	13544(%r10), %rdi
	movslq	36(%rsp), %r8
	movsbl	(%rdi,%r8), %edi
	cmpl	$0, 136(%rsp)
	jne	.LBB0_160
	jmp	.LBB0_165
.LBB0_120:                              # %if.else.i707
	movl	48(%rsp), %eax
	movl	32(%rsp), %edi
	movl	136(%rsp), %ecx
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB0_161
.LBB0_121:                              # %cond.false.i554
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_122:                              # %cond.end.i472
	movq	(%rcx), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	1248(%r13), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	leaq	48(%rsp), %r8
	movq	%rdi, %r12
	movl	%ebp, %esi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movl	%r14d, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	1(%r14), %edx
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	2(%r14), %edx
	leaq	80(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leal	3(%r14), %edx
	leaq	96(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_133
# %bb.123:                              # %for.cond12.preheader.i487
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	je	.LBB0_125
# %bb.124:                              # %cond.true18.i490
	movq	13544(%r13), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	andl	$1, %ecx
.LBB0_125:                              # %cond.end24.i494
	cmpl	$0, 64(%rsp)
	movq	24(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_127
# %bb.126:                              # %cond.true18.1.i497
	movq	13544(%r13), %rax
	movslq	68(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_127:                              # %cond.end24.1.i501
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 80(%rsp)
	movl	$0, %edx
	je	.LBB0_129
# %bb.128:                              # %cond.true18.2.i505
	movq	13544(%r13), %rdx
	movslq	84(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_129:                              # %cond.end24.2.i509
	andl	%edx, %eax
	cmpl	$0, 96(%rsp)
	je	.LBB0_131
# %bb.130:                              # %cond.true18.3.i513
	movq	13544(%r13), %rcx
	movslq	100(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_131:                              # %cond.end24.3.i517
	andl	%ecx, %eax
	testl	%eax, %eax
	je	.LBB0_134
.LBB0_132:                              # %if.else33.i
	movslq	8(%rsp), %rax                   # 4-byte Folded Reload
	movswq	62(%rsp), %rcx
	movq	120(%rsp), %r9                  # 8-byte Reload
	movq	(%r9,%rcx,8), %rcx
	movswq	60(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %edi
	movswq	78(%rsp), %rcx
	movq	(%r9,%rcx,8), %rcx
	movswq	76(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r8d
	movswq	94(%rsp), %rcx
	movq	(%r9,%rcx,8), %rcx
	movswq	92(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %esi
	movswq	110(%rsp), %rcx
	movq	(%r9,%rcx,8), %rcx
	movswq	108(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	leal	(%r8,%rdi), %edx
	incl	%edx
	shrl	%edx
	leal	(%rdi,%r8,2), %edi
	addl	%esi, %edi
	addl	$2, %edi
	shrl	$2, %edi
	leal	(%r8,%rsi), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%r8,%rsi,2), %r8d
	addl	%ecx, %r8d
	addl	$2, %r8d
	shrl	$2, %r8d
	leal	(%rsi,%rcx), %r10d
	incl	%r10d
	shrl	%r10d
	addl	%ecx, %esi
	addl	$2, %esi
	leal	(%rsi,%rcx,2), %esi
	shrl	$2, %esi
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	(%r14,%rax,8), %r11
	movslq	%ebx, %rbx
	movw	%dx, (%r11,%rbx,2)
	movw	%di, 2(%r11,%rbx,2)
	movw	%r9w, 4(%r11,%rbx,2)
	movw	%r8w, 6(%r11,%rbx,2)
	movq	8(%r14,%rax,8), %rdx
	movw	%r9w, (%rdx,%rbx,2)
	movw	%r8w, 2(%rdx,%rbx,2)
	movw	%r10w, 4(%rdx,%rbx,2)
	movw	%si, 6(%rdx,%rbx,2)
	movq	16(%r14,%rax,8), %rdx
	movw	%r10w, (%rdx,%rbx,2)
	movw	%si, 2(%rdx,%rbx,2)
	movw	%cx, 4(%rdx,%rbx,2)
	movw	%cx, 6(%rdx,%rbx,2)
	movq	24(%r14,%rax,8), %rax
	movd	%ecx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rax,%rbx,2)
	jmp	.LBB0_171
.LBB0_133:                              # %if.else.i553
	movl	48(%rsp), %eax
	movq	24(%rsp), %rbx                  # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_132
.LBB0_134:                              # %if.then32.i550
	movl	108(%r13), %esi
	movl	$.L.str.7, %edi
	jmp	.LBB0_166
.LBB0_135:                              # %if.else136.i
	testb	%dl, %dl
	je	.LBB0_137
# %bb.136:                              # %if.then140.i
	addl	$2, %eax
	shrl	$2, %eax
	jmp	.LBB0_168
.LBB0_137:                              # %if.else150.i
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	849060(%rbx,%rax,4), %eax
	jmp	.LBB0_168
.LBB0_138:
	xorl	%edi, %edi
	cmpl	$0, 136(%rsp)
	je	.LBB0_144
.LBB0_139:                              # %cond.true53.i
	andl	%ecx, %eax
	andl	%esi, %eax
	andl	%edx, %eax
	movq	13544(%r10), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_140:                              # %if.end.i154
	testl	%edi, %edi
	je	.LBB0_144
# %bb.141:                              # %if.end.i154
	testl	%eax, %eax
	je	.LBB0_144
# %bb.142:                              # %if.end.i154
	testl	%ecx, %ecx
	je	.LBB0_144
# %bb.143:                              # %if.else71.i
	movslq	%r9d, %rax
	movswq	46(%rsp), %rcx
	movq	128(%rsp), %r14                 # 8-byte Reload
	movq	(%r14,%rcx,8), %rcx
	movswq	44(%rsp), %rdi
	movzwl	(%rcx,%rdi,2), %r8d
	movzwl	2(%rcx,%rdi,2), %edx
	movzwl	4(%rcx,%rdi,2), %esi
	movzwl	6(%rcx,%rdi,2), %ecx
	movswq	62(%rsp), %rdi
	movq	(%r14,%rdi,8), %rdi
	movswq	60(%rsp), %r9
	movzwl	(%rdi,%r9,2), %r11d
	movswq	78(%rsp), %rdi
	movq	(%r14,%rdi,8), %rdi
	movswq	76(%rsp), %r9
	movzwl	(%rdi,%r9,2), %r10d
	movswq	94(%rsp), %rdi
	movq	(%r14,%rdi,8), %rdi
	movswq	92(%rsp), %r9
	movzwl	(%rdi,%r9,2), %r9d
	movswq	110(%rsp), %rdi
	movq	(%r14,%rdi,8), %rdi
	movswq	108(%rsp), %rbx
	movzwl	(%rdi,%rbx,2), %ebx
	movswq	150(%rsp), %rdi
	movq	(%r14,%rdi,8), %rdi
	movswq	148(%rsp), %r14
	movzwl	(%rdi,%r14,2), %r14d
	leal	(%r10,%r9,2), %edi
	addl	$2, %edi
	addl	%ebx, %edi
	shrl	$2, %edi
	leal	(%r11,%r10,2), %ebx
	addl	%ebx, %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	leal	(%r10,%r11,2), %r10d
	addl	$2, %r10d
	addl	%r14d, %r10d
	shrl	$2, %r10d
	addl	%r8d, %r11d
	addl	$2, %r11d
	leal	(%r11,%r14,2), %r11d
	shrl	$2, %r11d
	leal	(%rdx,%r8,2), %ebx
	addl	$2, %ebx
	addl	%r14d, %ebx
	shrl	$2, %ebx
	leal	(%r8,%rdx,2), %r8d
	addl	$2, %r8d
	addl	%esi, %r8d
	shrl	$2, %r8d
	leal	(%rdx,%rsi,2), %edx
	addl	$2, %edx
	addl	%ecx, %edx
	shrl	$2, %edx
	movq	120(%rsp), %r14                 # 8-byte Reload
	movq	(%r14,%rax,8), %rcx
	movslq	%r15d, %rsi
	movw	%r11w, (%rcx,%rsi,2)
	movw	%bx, 2(%rcx,%rsi,2)
	movw	%r8w, 4(%rcx,%rsi,2)
	movw	%dx, 6(%rcx,%rsi,2)
	movq	8(%r14,%rax,8), %rcx
	movw	%r10w, (%rcx,%rsi,2)
	movw	%r11w, 2(%rcx,%rsi,2)
	movw	%bx, 4(%rcx,%rsi,2)
	movw	%r8w, 6(%rcx,%rsi,2)
	movq	16(%r14,%rax,8), %rcx
	movw	%r9w, (%rcx,%rsi,2)
	movw	%r10w, 2(%rcx,%rsi,2)
	movw	%r11w, 4(%rcx,%rsi,2)
	movw	%bx, 6(%rcx,%rsi,2)
	movq	24(%r14,%rax,8), %rax
	movw	%di, (%rax,%rsi,2)
	movw	%r9w, 2(%rax,%rsi,2)
	movw	%r10w, 4(%rax,%rsi,2)
	movw	%r11w, 6(%rax,%rsi,2)
	jmp	.LBB0_171
.LBB0_144:                              # %if.then70.i
	movl	108(%r10), %esi
	movl	$.L.str.3, %edi
	jmp	.LBB0_166
.LBB0_145:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB0_65
	jmp	.LBB0_146
.LBB0_147:                              # %cond.false37.i
	subq	$-128, %rax
	movq	%rax, %rdx
.LBB0_148:                              # %cond.end40.i
	movq	(%rdx), %r12
	movq	1248(%rsi), %rax
	movl	%r15d, %edx
	movq	(%rax,%rdx,8), %rax
	movswq	62(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	60(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %ebx
	movzwl	2(%rdx,%rsi,2), %edi
	movzwl	4(%rdx,%rsi,2), %r8d
	movzwl	6(%rdx,%rsi,2), %edx
	movzwl	%dx, %esi
	movl	%edx, %r9d
	movl	%edx, %r10d
	movl	%edx, %r11d
	testl	%ecx, %ecx
	je	.LBB0_150
# %bb.149:                              # %if.then52.i
	movswq	46(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	44(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r11d
	movzwl	2(%rcx,%rdx,2), %r10d
	movzwl	4(%rcx,%rdx,2), %r9d
	movzwl	6(%rcx,%rdx,2), %edx
.LBB0_150:                              # %if.end63.i
	leal	(%rbx,%rdi,2), %ecx
	addl	%r8d, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	leal	(%rdi,%r8,2), %edi
	addl	%esi, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movzwl	%r11w, %r11d
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%r11d, %r8d
	shrl	$2, %r8d
	movzwl	%r10w, %r10d
	addl	%r10d, %esi
	addl	$2, %esi
	leal	(%rsi,%r11,2), %esi
	shrl	$2, %esi
	movzwl	%r9w, %ebx
	leal	(%rbx,%r11), %r9d
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	movzwl	%dx, %r11d
	addl	%r11d, %r10d
	leal	(%r10,%rbx,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	leal	(%r11,%r11,2), %r10d
	addl	%ebx, %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movslq	%r13d, %r11
	movq	(%rax,%r11,8), %rbx
	movslq	%r14d, %r14
	movw	%cx, (%rbx,%r14,2)
	movw	%di, 2(%rbx,%r14,2)
	movw	%r8w, 4(%rbx,%r14,2)
	movw	%si, 6(%rbx,%r14,2)
	movq	8(%rax,%r11,8), %rcx
	movw	%di, (%rcx,%r14,2)
	movw	%r8w, 2(%rcx,%r14,2)
	movw	%si, 4(%rcx,%r14,2)
	movw	%r9w, 6(%rcx,%r14,2)
	movq	16(%rax,%r11,8), %rcx
	movw	%r8w, (%rcx,%r14,2)
	movw	%si, 2(%rcx,%r14,2)
	movw	%r9w, 4(%rcx,%r14,2)
	movw	%dx, 6(%rcx,%r14,2)
	movq	24(%rax,%r11,8), %rax
	movw	%si, (%rax,%r14,2)
	movw	%r9w, 2(%rax,%r14,2)
	movw	%dx, 4(%rax,%r14,2)
	movw	%r10w, 6(%rax,%r14,2)
	jmp	.LBB0_171
.LBB0_151:
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB0_75
	jmp	.LBB0_74
.LBB0_152:
	xorl	%edi, %edi
	cmpl	$0, 136(%rsp)
	je	.LBB0_157
.LBB0_153:                              # %cond.true53.i281
	andl	%ecx, %eax
	andl	%esi, %eax
	andl	%edx, %eax
	movq	13544(%r9), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_154:                              # %if.end.i286
	testl	%edi, %edi
	je	.LBB0_157
# %bb.155:                              # %if.end.i286
	testl	%eax, %eax
	je	.LBB0_157
# %bb.156:                              # %if.end.i286
	testl	%ecx, %ecx
	jne	.LBB0_158
.LBB0_157:                              # %if.then70.i294
	movl	108(%r9), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_158:                              # %intra4x4_vert_right_pred_mbaff.exit
	movslq	%ebx, %r13
	movswq	46(%rsp), %rcx
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movswq	44(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r8d
	movzwl	2(%rcx,%rdx,2), %r9d
	movzwl	4(%rcx,%rdx,2), %r10d
	movzwl	6(%rcx,%rdx,2), %edi
	movswq	62(%rsp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movswq	60(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movswq	78(%rsp), %rdx
	movq	(%rax,%rdx,8), %rdx
	movswq	76(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movswq	94(%rsp), %rsi
	movq	(%rax,%rsi,8), %rsi
	movswq	92(%rsp), %r11
	movzwl	(%rsi,%r11,2), %esi
	movswq	150(%rsp), %r11
	movq	(%rax,%r11,8), %r11
	movswq	148(%rsp), %rbx
	movzwl	(%r11,%rbx,2), %r11d
	leal	(%r8,%r11), %ebx
	incl	%ebx
	shrl	%ebx
	leal	(%r8,%r9), %ebp
	incl	%ebp
	shrl	%ebp
	leal	(%r10,%r9), %r14d
	incl	%r14d
	shrl	%r14d
	leal	(%r10,%rdi), %r15d
	incl	%r15d
	shrl	%r15d
	movslq	24(%rsp), %r12                  # 4-byte Folded Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%r13, %rcx
	movq	(%rdx,%r13,8), %r13
	movw	%bx, (%r13,%r12,2)
	movw	%bp, 2(%r13,%r12,2)
	movw	%r14w, 4(%r13,%r12,2)
	movw	%r15w, 6(%r13,%r12,2)
	leal	(%r8,%r9,2), %r15d
	addl	$2, %r15d
	addl	%r10d, %r15d
	leal	(%r9,%r10,2), %r10d
	addl	$2, %r10d
	leal	2(%r9,%r8,2), %r9d
	movq	128(%rsp), %rax                 # 8-byte Reload
	addl	%eax, %r8d
	addl	$2, %r8d
	leal	(%r8,%r11,2), %r8d
	shrl	$2, %r8d
	addl	%r11d, %r9d
	shrl	$2, %r9d
	shrl	$2, %r15d
	addl	%edi, %r10d
	shrl	$2, %r10d
	movq	%rcx, %r13
	movq	8(%rdx,%rcx,8), %rdi
	movw	%r8w, (%rdi,%r12,2)
	movw	%r9w, 2(%rdi,%r12,2)
	movw	%r15w, 4(%rdi,%r12,2)
	movw	%r10w, 6(%rdi,%r12,2)
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leal	(%rcx,%rax,2), %edi
	addl	%r11d, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	16(%rdx,%r13,8), %r10
	movw	%di, (%r10,%r12,2)
	movw	%bx, 2(%r10,%r12,2)
	movw	%bp, 4(%r10,%r12,2)
	movw	%r14w, 6(%r10,%r12,2)
	leal	(%rax,%rcx,2), %ecx
	addl	%esi, %ecx
	addl	$2, %ecx
	movq	24(%rdx,%r13,8), %rax
	shrl	$2, %ecx
	movw	%cx, (%rax,%r12,2)
	movw	%r8w, 2(%rax,%r12,2)
	movw	%r9w, 4(%rax,%r12,2)
	movw	%r15w, 6(%rax,%r12,2)
	jmp	.LBB0_171
.LBB0_159:
	xorl	%edi, %edi
	cmpl	$0, 136(%rsp)
	je	.LBB0_165
.LBB0_160:                              # %cond.true53.i625
	andl	%ecx, %eax
	andl	%esi, %eax
	andl	%edx, %eax
	movq	13544(%r10), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_161:                              # %if.end.i630
	testl	%edi, %edi
	je	.LBB0_165
# %bb.162:                              # %if.end.i630
	testl	%eax, %eax
	je	.LBB0_165
# %bb.163:                              # %if.end.i630
	testl	%ecx, %ecx
	je	.LBB0_165
# %bb.164:                              # %if.else71.i641
	movslq	%r9d, %rax
	movswq	46(%rsp), %rcx
	movq	128(%rsp), %rbx                 # 8-byte Reload
	movq	(%rbx,%rcx,8), %rcx
	movswq	44(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r9d
	movzwl	2(%rcx,%rdx,2), %r11d
	movzwl	4(%rcx,%rdx,2), %r8d
	movswq	62(%rsp), %rcx
	movq	(%rbx,%rcx,8), %rcx
	movswq	60(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %esi
	movswq	78(%rsp), %rcx
	movq	(%rbx,%rcx,8), %rcx
	movswq	76(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movswq	94(%rsp), %rdx
	movq	(%rbx,%rdx,8), %rdx
	movswq	92(%rsp), %rdi
	movzwl	(%rdx,%rdi,2), %edx
	movswq	110(%rsp), %rdi
	movq	(%rbx,%rdi,8), %rdi
	movswq	108(%rsp), %r10
	movzwl	(%rdi,%r10,2), %edi
	movswq	150(%rsp), %r10
	movq	(%rbx,%r10,8), %r10
	movswq	148(%rsp), %rbx
	movzwl	(%r10,%rbx,2), %r10d
	leal	(%rsi,%r10), %ebx
	incl	%ebx
	shrl	%ebx
	leal	(%r11,%r9,2), %r14d
	leal	(%r9,%r11,2), %r11d
	addl	$2, %r11d
	addl	%esi, %r9d
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	leal	(%r10,%r14), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	addl	%r8d, %r11d
	movq	120(%rsp), %r15                 # 8-byte Reload
	movq	(%r15,%rax,8), %r14
	movslq	24(%rsp), %r8                   # 4-byte Folded Reload
	movw	%bx, (%r14,%r8,2)
	movw	%r9w, 2(%r14,%r8,2)
	movw	%bp, 4(%r14,%r8,2)
	shrl	$2, %r11d
	movw	%r11w, 6(%r14,%r8,2)
	leal	(%rsi,%rcx), %r11d
	incl	%r11d
	shrl	%r11d
	leal	(%rcx,%rsi,2), %ebp
	addl	$2, %ebp
	addl	%r10d, %ebp
	shrl	$2, %ebp
	movq	8(%r15,%rax,8), %r10
	movw	%r11w, (%r10,%r8,2)
	movw	%bp, 2(%r10,%r8,2)
	movw	%bx, 4(%r10,%r8,2)
	movw	%r9w, 6(%r10,%r8,2)
	leal	(%rdx,%rcx), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%rsi,%rcx,2), %esi
	addl	%edx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movq	16(%r15,%rax,8), %r10
	movw	%r9w, (%r10,%r8,2)
	movw	%si, 2(%r10,%r8,2)
	movw	%r11w, 4(%r10,%r8,2)
	movw	%bp, 6(%r10,%r8,2)
	leal	(%rcx,%rdx,2), %ecx
	addl	$2, %ecx
	addl	%edi, %edx
	incl	%edx
	addl	%edi, %ecx
	movq	24(%r15,%rax,8), %rax
	shrl	%edx
	movw	%dx, (%rax,%r8,2)
	shrl	$2, %ecx
	movw	%cx, 2(%rax,%r8,2)
	movw	%r9w, 4(%rax,%r8,2)
	movw	%si, 6(%rax,%r8,2)
	jmp	.LBB0_171
.LBB0_165:                              # %if.then70.i638
	movl	108(%r10), %esi
	movl	$.L.str.8, %edi
.LBB0_166:                              # %cleanup
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB0_171
.LBB0_167:                              # %if.then147.i
	addl	$2, %ecx
	shrl	$2, %ecx
	movl	%ecx, %eax
.LBB0_168:                              # %intra4x4_dc_pred_mbaff.exit
	movslq	%ebp, %rcx
	movq	(%r9,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	(%r9,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	(%r9,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	(%r9,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	8(%r9,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	8(%r9,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	8(%r9,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	8(%r9,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	16(%r9,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	16(%r9,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	16(%r9,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	16(%r9,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	movq	24(%r9,%r14,8), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	24(%r9,%r14,8), %rdx
	movw	%ax, 2(%rdx,%rcx,2)
	movq	24(%r9,%r14,8), %rdx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	24(%r9,%r14,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	jmp	.LBB0_171
.LBB0_169:                              # %cond.false20.i
	subq	$-128, %rcx
	movq	%rcx, %r15
.LBB0_170:                              # %cond.end29.i73
	movq	(%r15), %rcx
	movswq	62(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movswq	60(%rsp), %rdx
	movslq	%r13d, %rsi
	movq	(%rax,%rsi,8), %rdi
	movslq	%r12d, %r8
	movq	(%rcx,%rdx,2), %r9
	movq	%r9, (%rdi,%r8,2)
	movq	8(%rax,%rsi,8), %rdi
	movq	(%rcx,%rdx,2), %r9
	movq	%r9, (%rdi,%r8,2)
	movq	16(%rax,%rsi,8), %rdi
	movq	(%rcx,%rdx,2), %r9
	movq	%r9, (%rdi,%r8,2)
	movq	24(%rax,%rsi,8), %rax
	movq	(%rcx,%rdx,2), %rcx
	movq	%rcx, (%rax,%r8,2)
.LBB0_171:                              # %cleanup
	xorl	%eax, %eax
.LBB0_172:                              # %cleanup
	addq	$152, %rsp
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
	.size	intra4x4_pred_mbaff, .Lfunc_end0-intra4x4_pred_mbaff
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_16
	.quad	.LBB0_10
	.quad	.LBB0_12
	.quad	.LBB0_8
	.quad	.LBB0_18
	.quad	.LBB0_20
	.quad	.LBB0_14
	.quad	.LBB0_22
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error: illegal intra_4x4 prediction mode: %d\n"
	.size	.L.str, 46

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"warning: Intra_4x4_Vertical prediction mode not allowed at mb %d\n"
	.size	.L.str.1, 66

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"warning: Intra_4x4_Horizontal prediction mode not allowed at mb %d\n"
	.size	.L.str.2, 68

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.3, 77

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"warning: Intra_4x4_Diagonal_Down_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.4, 76

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"warning: Intra_4x4_Vertical_Right prediction mode not allowed at mb %d\n"
	.size	.L.str.5, 72

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"warning: Intra_4x4_Vertical_Left prediction mode not allowed at mb %d\n"
	.size	.L.str.6, 71

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"warning: Intra_4x4_Horizontal_Up prediction mode not allowed at mb %d\n"
	.size	.L.str.7, 71

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"warning: Intra_4x4_Horizontal_Down prediction mode not allowed at mb %d\n"
	.size	.L.str.8, 73

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
