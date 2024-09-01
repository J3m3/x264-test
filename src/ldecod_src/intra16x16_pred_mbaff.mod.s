	.text
	.file	"intra16x16_pred_mbaff.c"
	.globl	intrapred_16x16_mbaff           # -- Begin function intrapred_16x16_mbaff
	.p2align	4, 0x90
	.type	intrapred_16x16_mbaff,@function
intrapred_16x16_mbaff:                  # @intrapred_16x16_mbaff
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$3, %edx
	ja	.LBB0_10
# %bb.1:                                # %entry
	movl	%esi, %ebx
	movl	%edx, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:                                # %sw.bb
	movq	(%rdi), %r14
	movq	8(%rdi), %r12
	movq	13520(%r14), %rax
	testl	%ebx, %ebx
	je	.LBB0_122
# %bb.3:                                # %cond.true.i
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_123
.LBB0_4:                                # %sw.bb3
	movq	(%rdi), %rbp
	movq	8(%rdi), %r13
	movq	13520(%rbp), %rax
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.5:                                # %cond.true.i42
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_12
.LBB0_6:                                # %sw.bb5
	movq	(%rdi), %rdx
	movq	8(%rdi), %r13
	movq	13520(%rdx), %rax
	testl	%ebx, %ebx
	je	.LBB0_53
# %bb.7:                                # %cond.true.i111
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_54
.LBB0_8:                                # %sw.bb1
	movq	(%rdi), %rdx
	movq	8(%rdi), %r13
	movq	13520(%rdx), %rax
	testl	%ebx, %ebx
	je	.LBB0_129
# %bb.9:                                # %cond.true.i18
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_130
.LBB0_10:                               # %sw.default
	movl	$.L.str, %edi
	movl	%edx, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_175
.LBB0_11:                               # %cond.false.i104
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_12:                               # %cond.end.i47
	movq	(%rcx), %r12
	movq	1248(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	(%rax,%rcx,8), %r15
	leaq	849124(%r13), %rbx
	leaq	16(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	32(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	48(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	64(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$2, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	80(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$3, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	96(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	112(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$5, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	128(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$6, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	144(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$7, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	160(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	176(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$9, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	192(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$10, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	208(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$11, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	224(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$12, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	240(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$13, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	256(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$14, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	272(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$15, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	292(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	movl	292(%rsp), %ecx
	je	.LBB0_50
# %bb.13:                               # %if.else.i73
	testl	%ecx, %ecx
	movl	$0, %edi
	je	.LBB0_15
# %bb.14:                               # %cond.true23.i75
	movq	13544(%rbp), %rax
	movslq	296(%rsp), %rcx
	movsbl	(%rax,%rcx), %edi
.LBB0_15:                               # %cond.end27.i
	xorl	%ecx, %ecx
	cmpl	$0, 32(%rsp)
	movl	$0, %eax
	je	.LBB0_17
# %bb.16:                               # %cond.true37.i
	movq	13544(%rbp), %rax
	movslq	36(%rsp), %rdx
	movzbl	(%rax,%rdx), %eax
.LBB0_17:                               # %cond.end46.i
	andl	$1, %eax
	cmpl	$0, 48(%rsp)
	je	.LBB0_19
# %bb.18:                               # %cond.true37.1.i
	movq	13544(%rbp), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_19:                               # %cond.end46.1.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 64(%rsp)
	movl	$0, %edx
	je	.LBB0_21
# %bb.20:                               # %cond.true37.2.i
	movq	13544(%rbp), %rdx
	movslq	68(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_21:                               # %cond.end46.2.i
	andl	%edx, %eax
	cmpl	$0, 80(%rsp)
	je	.LBB0_23
# %bb.22:                               # %cond.true37.3.i
	movq	13544(%rbp), %rcx
	movslq	84(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_23:                               # %cond.end46.3.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 96(%rsp)
	movl	$0, %edx
	je	.LBB0_25
# %bb.24:                               # %cond.true37.4.i
	movq	13544(%rbp), %rdx
	movslq	100(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_25:                               # %cond.end46.4.i
	andl	%edx, %eax
	cmpl	$0, 112(%rsp)
	je	.LBB0_27
# %bb.26:                               # %cond.true37.5.i
	movq	13544(%rbp), %rcx
	movslq	116(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_27:                               # %cond.end46.5.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 128(%rsp)
	movl	$0, %edx
	je	.LBB0_29
# %bb.28:                               # %cond.true37.6.i
	movq	13544(%rbp), %rdx
	movslq	132(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_29:                               # %cond.end46.6.i
	andl	%edx, %eax
	cmpl	$0, 144(%rsp)
	je	.LBB0_31
# %bb.30:                               # %cond.true37.7.i
	movq	13544(%rbp), %rcx
	movslq	148(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_31:                               # %cond.end46.7.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 160(%rsp)
	movl	$0, %edx
	je	.LBB0_33
# %bb.32:                               # %cond.true37.8.i
	movq	13544(%rbp), %rdx
	movslq	164(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_33:                               # %cond.end46.8.i
	andl	%edx, %eax
	cmpl	$0, 176(%rsp)
	je	.LBB0_35
# %bb.34:                               # %cond.true37.9.i
	movq	13544(%rbp), %rcx
	movslq	180(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_35:                               # %cond.end46.9.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 192(%rsp)
	movl	$0, %edx
	je	.LBB0_37
# %bb.36:                               # %cond.true37.10.i
	movq	13544(%rbp), %rdx
	movslq	196(%rsp), %rsi
	movzbl	(%rdx,%rsi), %edx
.LBB0_37:                               # %cond.end46.10.i
	andl	%edx, %eax
	cmpl	$0, 208(%rsp)
	je	.LBB0_39
# %bb.38:                               # %cond.true37.11.i
	movq	13544(%rbp), %rcx
	movslq	212(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_39:                               # %cond.end46.11.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 224(%rsp)
	movl	$0, %edx
	je	.LBB0_41
# %bb.40:                               # %cond.true37.12.i
	movq	13544(%rbp), %rdx
	movslq	228(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
.LBB0_41:                               # %cond.end46.12.i
	andl	%edx, %eax
	cmpl	$0, 240(%rsp)
	je	.LBB0_43
# %bb.42:                               # %cond.true37.13.i
	movq	13544(%rbp), %rcx
	movslq	244(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_43:                               # %cond.end46.13.i
	andl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 256(%rsp)
	movl	$0, %edx
	je	.LBB0_45
# %bb.44:                               # %cond.true37.14.i
	movq	13544(%rbp), %rdx
	movslq	260(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
.LBB0_45:                               # %cond.end46.14.i
	andl	%edx, %eax
	cmpl	$0, 272(%rsp)
	je	.LBB0_47
# %bb.46:                               # %cond.true37.15.i
	movq	13544(%rbp), %rcx
	movslq	276(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_47:                               # %cond.end46.15.i
	andl	%ecx, %eax
	movswq	306(%rsp), %rdx
	movswq	304(%rsp), %rcx
	testl	%eax, %eax
	je	.LBB0_51
.LBB0_48:                               # %if.end.split.i
	testl	%edi, %edi
	je	.LBB0_164
# %bb.49:                               # %for.end97.i
	movq	(%r12,%rdx,8), %rax
	movzwl	(%rax,%rcx,2), %edx
	movswq	46(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	44(%rsp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%edx, %esi
	movzwl	2(%rax,%rcx,2), %edx
	movswq	62(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	60(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%edx, %edi
	addl	%esi, %edi
	movzwl	4(%rax,%rcx,2), %edx
	movswq	78(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	76(%rsp), %r8
	movzwl	(%rsi,%r8,2), %esi
	addl	%edx, %esi
	movzwl	6(%rax,%rcx,2), %edx
	addl	%esi, %edx
	addl	%edi, %edx
	movswq	94(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	92(%rsp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	movzwl	8(%rax,%rcx,2), %edi
	addl	%esi, %edi
	movswq	110(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	108(%rsp), %r8
	movzwl	(%rsi,%r8,2), %esi
	addl	%edi, %esi
	movzwl	10(%rax,%rcx,2), %edi
	addl	%esi, %edi
	addl	%edx, %edi
	movswq	126(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	124(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movzwl	12(%rax,%rcx,2), %esi
	addl	%edx, %esi
	movswq	142(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp), %r8
	movzwl	(%rdx,%r8,2), %edx
	addl	%esi, %edx
	movzwl	14(%rax,%rcx,2), %r8d
	addl	%edx, %r8d
	movswq	158(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	156(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %esi
	addl	%r8d, %esi
	addl	%edi, %esi
	movzwl	16(%rax,%rcx,2), %edx
	movswq	174(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	172(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%edx, %edi
	movzwl	18(%rax,%rcx,2), %edx
	addl	%edi, %edx
	movswq	190(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	188(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%edx, %edi
	movzwl	20(%rax,%rcx,2), %r8d
	addl	%edi, %r8d
	movswq	206(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	204(%rsp), %rdi
	movzwl	(%rdx,%rdi,2), %edx
	addl	%r8d, %edx
	addl	%esi, %edx
	movzwl	22(%rax,%rcx,2), %esi
	movswq	222(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	220(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%esi, %edi
	movzwl	24(%rax,%rcx,2), %esi
	addl	%edi, %esi
	movswq	238(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	236(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%esi, %edi
	movzwl	26(%rax,%rcx,2), %esi
	addl	%edi, %esi
	movswq	254(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	252(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	addl	%esi, %edi
	movzwl	28(%rax,%rcx,2), %esi
	addl	%edi, %esi
	addl	%edx, %esi
	movswq	270(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	268(%rsp), %rdi
	movzwl	(%rdx,%rdi,2), %edx
	movzwl	30(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	%esi, %eax
	movswq	286(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	284(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	addl	$16, %eax
	shrl	$5, %eax
	jmp	.LBB0_172
.LBB0_50:                               # %if.then.i103
	movl	32(%rsp), %eax
	movl	%ecx, %edi
	movswq	306(%rsp), %rdx
	movswq	304(%rsp), %rcx
	testl	%eax, %eax
	jne	.LBB0_48
.LBB0_51:                               # %if.end.split.us.i
	testl	%edi, %edi
	je	.LBB0_171
# %bb.52:                               # %if.then114.i
	movq	(%r12,%rdx,8), %rax
	movdqu	(%rax,%rcx,2), %xmm0
	movdqu	16(%rax,%rcx,2), %xmm1
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
	jmp	.LBB0_172
.LBB0_53:                               # %cond.false.i160
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_54:                               # %cond.end.i116
	movq	(%rcx), %r12
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %r15
	movl	849072(%r13,%rcx,4), %ebp
	leaq	849124(%r13), %rbx
	leaq	16(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	32(%rsp), %r8
	movl	$0, 288(%rsp)                   # 4-byte Folded Spill
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	48(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	64(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$2, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	80(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$3, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	96(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	112(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$5, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	128(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$6, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	144(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$7, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	160(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	176(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$9, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	192(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$10, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	208(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$11, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	224(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$12, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	240(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$13, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	256(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$14, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	272(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$15, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	292(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	movl	292(%rsp), %ecx
	je	.LBB0_91
# %bb.55:                               # %if.else.i126
	testl	%ecx, %ecx
	movq	8(%rsp), %r8                    # 8-byte Reload
	je	.LBB0_57
# %bb.56:                               # %cond.true25.i
	movq	13544(%r8), %rax
	movslq	296(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	movl	%eax, 288(%rsp)                 # 4-byte Spill
.LBB0_57:                               # %cond.end29.i132
	xorl	%edx, %edx
	cmpl	$0, 32(%rsp)
	movl	$0, %eax
	je	.LBB0_59
# %bb.58:                               # %cond.true39.i
	movq	13544(%r8), %rax
	movslq	36(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_59:                               # %cond.end48.i
	cmpl	$0, 48(%rsp)
	je	.LBB0_61
# %bb.60:                               # %cond.true39.1.i
	movq	13544(%r8), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %edx
.LBB0_61:                               # %cond.end48.1.i
	movl	%edx, 324(%rsp)                 # 4-byte Spill
	xorl	%esi, %esi
	cmpl	$0, 64(%rsp)
	movl	$0, %ecx
	je	.LBB0_63
# %bb.62:                               # %cond.true39.2.i
	movq	13544(%r8), %rcx
	movslq	68(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_63:                               # %cond.end48.2.i
	movl	%ecx, 320(%rsp)                 # 4-byte Spill
	cmpl	$0, 80(%rsp)
	je	.LBB0_65
# %bb.64:                               # %cond.true39.3.i
	movq	13544(%r8), %rcx
	movslq	84(%rsp), %rdx
	movzbl	(%rcx,%rdx), %esi
.LBB0_65:                               # %cond.end48.3.i
	xorl	%r10d, %r10d
	cmpl	$0, 96(%rsp)
	movl	$0, %ecx
	je	.LBB0_67
# %bb.66:                               # %cond.true39.4.i
	movq	13544(%r8), %rcx
	movslq	100(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_67:                               # %cond.end48.4.i
	movl	%ecx, 316(%rsp)                 # 4-byte Spill
	cmpl	$0, 112(%rsp)
	je	.LBB0_69
# %bb.68:                               # %cond.true39.5.i
	movq	13544(%r8), %rcx
	movslq	116(%rsp), %rdx
	movzbl	(%rcx,%rdx), %r10d
.LBB0_69:                               # %cond.end48.5.i
	xorl	%r9d, %r9d
	cmpl	$0, 128(%rsp)
	movl	$0, %ecx
	je	.LBB0_71
# %bb.70:                               # %cond.true39.6.i
	movq	13544(%r8), %rcx
	movslq	132(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_71:                               # %cond.end48.6.i
	movl	%ecx, 308(%rsp)                 # 4-byte Spill
	cmpl	$0, 144(%rsp)
	je	.LBB0_73
# %bb.72:                               # %cond.true39.7.i
	movq	13544(%r8), %rcx
	movslq	148(%rsp), %rdx
	movzbl	(%rcx,%rdx), %r9d
.LBB0_73:                               # %cond.end48.7.i
	xorl	%r11d, %r11d
	cmpl	$0, 160(%rsp)
	movl	$0, %ebx
	je	.LBB0_75
# %bb.74:                               # %cond.true39.8.i
	movq	13544(%r8), %rcx
	movslq	164(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ebx
.LBB0_75:                               # %cond.end48.8.i
	cmpl	$0, 176(%rsp)
	je	.LBB0_77
# %bb.76:                               # %cond.true39.9.i
	movq	13544(%r8), %rcx
	movslq	180(%rsp), %rdx
	movzbl	(%rcx,%rdx), %r11d
.LBB0_77:                               # %cond.end48.9.i
	movl	%r9d, 312(%rsp)                 # 4-byte Spill
	xorl	%r14d, %r14d
	cmpl	$0, 192(%rsp)
	movl	$0, %r13d
	je	.LBB0_79
# %bb.78:                               # %cond.true39.10.i
	movq	13544(%r8), %rcx
	movslq	196(%rsp), %rdx
	movzbl	(%rcx,%rdx), %r13d
.LBB0_79:                               # %cond.end48.10.i
	movl	%esi, %r9d
	cmpl	$0, 208(%rsp)
	je	.LBB0_81
# %bb.80:                               # %cond.true39.11.i
	movq	13544(%r8), %rcx
	movslq	212(%rsp), %rdx
	movsbl	(%rcx,%rdx), %r14d
.LBB0_81:                               # %cond.end48.11.i
	xorl	%ecx, %ecx
	cmpl	$0, 224(%rsp)
	movl	$0, %edx
	je	.LBB0_83
# %bb.82:                               # %cond.true39.12.i
	movq	13544(%r8), %rdx
	movslq	228(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
.LBB0_83:                               # %cond.end48.12.i
	cmpl	$0, 240(%rsp)
	je	.LBB0_85
# %bb.84:                               # %cond.true39.13.i
	movq	13544(%r8), %rcx
	movslq	244(%rsp), %rsi
	movsbl	(%rcx,%rsi), %ecx
.LBB0_85:                               # %cond.end48.13.i
	xorl	%esi, %esi
	cmpl	$0, 256(%rsp)
	movl	$0, %edi
	je	.LBB0_87
# %bb.86:                               # %cond.true39.14.i
	movq	13544(%r8), %rdi
	movslq	260(%rsp), %r8
	movsbl	(%rdi,%r8), %edi
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB0_87:                               # %cond.end48.14.i
	cmpl	$0, 272(%rsp)
	je	.LBB0_89
# %bb.88:                               # %cond.true39.15.i
	movq	13544(%r8), %rsi
	movslq	276(%rsp), %r8
	movsbl	(%rsi,%r8), %esi
	movq	8(%rsp), %r8                    # 8-byte Reload
.LBB0_89:                               # %cond.end48.15.i
	cmpl	$0, 16(%rsp)
	je	.LBB0_94
# %bb.90:                               # %cond.true56.i
	andl	$1, %eax
	andl	324(%rsp), %eax                 # 4-byte Folded Reload
	andl	320(%rsp), %eax                 # 4-byte Folded Reload
	andl	%r9d, %eax
	andl	316(%rsp), %eax                 # 4-byte Folded Reload
	andl	%r10d, %eax
	andl	308(%rsp), %eax                 # 4-byte Folded Reload
	andl	312(%rsp), %eax                 # 4-byte Folded Reload
	andl	%ebx, %eax
	andl	%r11d, %eax
	andl	%r13d, %eax
	andl	%r14d, %eax
	andl	%edx, %eax
	andl	%ecx, %eax
	andl	%edi, %eax
	andl	%esi, %eax
	movq	13544(%r8), %rcx
	movslq	20(%rsp), %rdx
	movsbl	(%rcx,%rdx), %edx
	movl	288(%rsp), %ecx                 # 4-byte Reload
	testl	%ecx, %ecx
	jne	.LBB0_92
	jmp	.LBB0_94
.LBB0_91:                               # %if.then.i159
	movl	16(%rsp), %edx
	movl	32(%rsp), %eax
	testl	%ecx, %ecx
	je	.LBB0_94
.LBB0_92:                               # %if.end.i150
	testl	%edx, %edx
	je	.LBB0_94
# %bb.93:                               # %if.end.i150
	testl	%eax, %eax
	jne	.LBB0_95
.LBB0_94:                               # %if.then70.i
	movl	$.L.str.3, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_95:                               # %if.end71.i
	movswq	306(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	304(%rsp), %rcx
	movzwl	16(%rax,%rcx,2), %edx
	movzwl	12(%rax,%rcx,2), %esi
	subl	%esi, %edx
	movswq	174(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	172(%rsp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	movswq	142(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	140(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	subl	%edi, %esi
	movzwl	18(%rax,%rcx,2), %edi
	movzwl	10(%rax,%rcx,2), %r8d
	subl	%r8d, %edi
	leal	(%rdx,%rdi,2), %edx
	movswq	190(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	188(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	movswq	126(%rsp), %r8
	movq	(%r12,%r8,8), %r8
	movswq	124(%rsp), %r9
	movzwl	(%r8,%r9,2), %r8d
	subl	%r8d, %edi
	leal	(%rsi,%rdi,2), %esi
	movzwl	20(%rax,%rcx,2), %edi
	movzwl	8(%rax,%rcx,2), %r8d
	subl	%r8d, %edi
	leal	(%rdi,%rdi,2), %edi
	addl	%edx, %edi
	movswq	206(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	204(%rsp), %r8
	movzwl	(%rdx,%r8,2), %edx
	movswq	110(%rsp), %r8
	movq	(%r12,%r8,8), %r8
	movswq	108(%rsp), %r9
	movzwl	(%r8,%r9,2), %r8d
	subl	%r8d, %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%esi, %edx
	movzwl	22(%rax,%rcx,2), %esi
	movzwl	6(%rax,%rcx,2), %r8d
	subl	%r8d, %esi
	leal	(%rdi,%rsi,4), %esi
	movswq	222(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	220(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	movswq	94(%rsp), %r8
	movq	(%r12,%r8,8), %r8
	movswq	92(%rsp), %r9
	movzwl	(%r8,%r9,2), %r8d
	subl	%r8d, %edi
	leal	(%rdx,%rdi,4), %edx
	movzwl	24(%rax,%rcx,2), %edi
	movzwl	4(%rax,%rcx,2), %r8d
	subl	%r8d, %edi
	leal	(%rdi,%rdi,4), %edi
	addl	%esi, %edi
	movswq	238(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	236(%rsp), %r8
	movzwl	(%rsi,%r8,2), %esi
	movswq	78(%rsp), %r8
	movq	(%r12,%r8,8), %r8
	movswq	76(%rsp), %r9
	movzwl	(%r8,%r9,2), %r8d
	subl	%r8d, %esi
	leal	(%rsi,%rsi,4), %esi
	addl	%edx, %esi
	movzwl	26(%rax,%rcx,2), %edx
	movzwl	2(%rax,%rcx,2), %r8d
	subl	%r8d, %edx
	leal	(%rdx,%rdx,2), %edx
	leal	(%rdi,%rdx,2), %edi
	movswq	254(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	252(%rsp), %r8
	movzwl	(%rdx,%r8,2), %edx
	movswq	62(%rsp), %r8
	movq	(%r12,%r8,8), %r8
	movswq	60(%rsp), %r9
	movzwl	(%r8,%r9,2), %r8d
	subl	%r8d, %edx
	leal	(%rdx,%rdx,2), %edx
	leal	(%rsi,%rdx,2), %r8d
	movzwl	28(%rax,%rcx,2), %esi
	movzwl	(%rax,%rcx,2), %edx
	subl	%edx, %esi
	leal	(,%rsi,8), %edx
	subl	%esi, %edx
	addl	%edi, %edx
	movswq	270(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	268(%rsp), %rdi
	movzwl	(%rsi,%rdi,2), %edi
	movswq	46(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	44(%rsp), %r9
	movzwl	(%rsi,%r9,2), %esi
	subl	%esi, %edi
	leal	(,%rdi,8), %esi
	subl	%edi, %esi
	addl	%r8d, %esi
	movzwl	30(%rax,%rcx,2), %eax
	movswq	30(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	28(%rsp), %rdi
	movzwl	(%rcx,%rdi,2), %ecx
	movswq	286(%rsp), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	284(%rsp), %r8
	movzwl	(%rdi,%r8,2), %edi
	movl	%edi, %r8d
	addl	%eax, %edi
                                        # kill: def $eax killed $eax def $rax
	subl	%ecx, %eax
	leal	(%rdx,%rax,8), %eax
	subl	%ecx, %r8d
	leal	(%rsi,%r8,8), %ecx
	leal	(%rax,%rax,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	leal	(%rcx,%rcx,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	shll	$4, %edi
	leal	(%rax,%rax), %edx
	leal	(,%rax,8), %r8d
	leal	(%rax,%rdi), %esi
	leal	(,%rcx,8), %r9d
	subl	%ecx, %r9d
	subl	%r9d, %esi
	addl	$16, %esi
	subl	%r9d, %edi
	movl	%eax, %r9d
	subl	%r8d, %r9d
	addl	%r9d, %edi
	addl	$16, %edi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	jmp	.LBB0_97
	.p2align	4, 0x90
.LBB0_96:                               # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %r11
	movw	%r10w, 30(%r11)
	incq	%r9
	addl	%ecx, %esi
	addl	%ecx, %edi
	cmpq	$16, %r9
	je	.LBB0_174
.LBB0_97:                               # %for.cond179.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %r10d
	sarl	$5, %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%ebp, %r10d
	cmovgel	%ebp, %r10d
	movq	(%r15,%r9,8), %r11
	movw	%r10w, (%r11)
	leal	(%rax,%rdi), %r11d
	leal	(%rax,%r11), %ebx
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	cmovgel	%ebp, %r11d
	movq	(%r15,%r9,8), %r14
	leal	(%rax,%rbx), %r10d
	sarl	$5, %ebx
	testl	%ebx, %ebx
	cmovlel	%r8d, %ebx
	movw	%r11w, 2(%r14)
	cmpl	%ebp, %ebx
	cmovgel	%ebp, %ebx
	movq	(%r15,%r9,8), %r11
	movw	%bx, 4(%r11)
	leal	(%rax,%r10), %ebx
	sarl	$5, %r10d
	testl	%r10d, %r10d
	cmovlel	%r8d, %r10d
	cmpl	%ebp, %r10d
	cmovgel	%ebp, %r10d
	movq	(%r15,%r9,8), %r14
	leal	(%rax,%rbx), %r11d
	sarl	$5, %ebx
	testl	%ebx, %ebx
	cmovlel	%r8d, %ebx
	movw	%r10w, 6(%r14)
	cmpl	%ebp, %ebx
	cmovgel	%ebp, %ebx
	movq	(%r15,%r9,8), %r10
	movw	%bx, 8(%r10)
	leal	(%rax,%r11), %ebx
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	cmovgel	%ebp, %r11d
	movq	(%r15,%r9,8), %r14
	leal	(%rax,%rbx), %r10d
	sarl	$5, %ebx
	testl	%ebx, %ebx
	cmovlel	%r8d, %ebx
	movw	%r11w, 10(%r14)
	cmpl	%ebp, %ebx
	cmovgel	%ebp, %ebx
	movq	(%r15,%r9,8), %r11
	movw	%bx, 12(%r11)
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	jl	.LBB0_99
# %bb.98:                               # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_99:                               # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 14(%rbx)
	movl	%esi, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	cmovgel	%ebp, %r11d
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 16(%rbx)
	addl	%edx, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	jl	.LBB0_101
# %bb.100:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_101:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 18(%rbx)
	addl	%eax, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	jl	.LBB0_103
# %bb.102:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_103:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 20(%rbx)
	addl	%eax, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r8d, %r11d
	cmpl	%ebp, %r11d
	jl	.LBB0_105
# %bb.104:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_105:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 22(%rbx)
	addl	%eax, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	jg	.LBB0_107
# %bb.106:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	xorl	%r11d, %r11d
.LBB0_107:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	cmpl	%ebp, %r11d
	jl	.LBB0_109
# %bb.108:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_109:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 24(%rbx)
	addl	%eax, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	jg	.LBB0_111
# %bb.110:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	xorl	%r11d, %r11d
.LBB0_111:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	cmpl	%ebp, %r11d
	jl	.LBB0_113
# %bb.112:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_113:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 26(%rbx)
	addl	%eax, %r10d
	movl	%r10d, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	jg	.LBB0_115
# %bb.114:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	xorl	%r11d, %r11d
.LBB0_115:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	cmpl	%ebp, %r11d
	jl	.LBB0_117
# %bb.116:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r11d
.LBB0_117:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movq	(%r15,%r9,8), %rbx
	movw	%r11w, 28(%rbx)
	addl	%eax, %r10d
	sarl	$5, %r10d
	testl	%r10d, %r10d
	jg	.LBB0_119
# %bb.118:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	xorl	%r10d, %r10d
.LBB0_119:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	cmpl	%ebp, %r10d
	jl	.LBB0_96
# %bb.120:                              # %for.cond179.preheader.i
                                        #   in Loop: Header=BB0_97 Depth=1
	movl	%ebp, %r10d
	jmp	.LBB0_96
.LBB0_122:                              # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_123:                              # %cond.end.i
	movq	(%rcx), %r15
	leaq	849124(%r12), %rcx
	leaq	16(%rsp), %r8
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	*856744(%r12)
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	movl	16(%rsp), %eax
	je	.LBB0_126
# %bb.124:                              # %if.else.i
	testl	%eax, %eax
	je	.LBB0_127
# %bb.125:                              # %cond.true8.i
	movq	13544(%r14), %rax
	movslq	20(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_126:                              # %if.end.i
	testl	%eax, %eax
	jne	.LBB0_128
.LBB0_127:                              # %if.then15.i
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_128:                              # %intra16x16_vert_pred_mbaff.exit
	movq	1248(%r14), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %rax
	movswq	30(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	28(%rsp), %rdx
	movq	(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	8(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	16(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	24(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	32(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	40(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	48(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	56(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	64(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	72(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	80(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	88(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	96(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	104(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	112(%rax), %rsi
	movups	(%rcx,%rdx,2), %xmm0
	movups	16(%rcx,%rdx,2), %xmm1
	movups	%xmm1, 16(%rsi)
	movups	%xmm0, (%rsi)
	movq	120(%rax), %rax
	movdqu	(%rcx,%rdx,2), %xmm0
	movdqu	16(%rcx,%rdx,2), %xmm1
	movdqu	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	jmp	.LBB0_174
.LBB0_129:                              # %cond.false.i35
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_130:                              # %cond.end.i23
	movq	(%rcx), %r15
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %r12
	leaq	849124(%r13), %rbx
	leaq	16(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	32(%rsp), %r8
	xorl	%ebp, %ebp
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	48(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	64(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$2, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	80(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$3, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	96(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	112(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$5, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	128(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$6, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	144(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$7, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	160(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$8, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	176(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$9, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	192(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$10, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	208(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$11, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	224(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$12, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	240(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$13, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	256(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$14, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	leaq	272(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	movl	$15, %edx
	movq	%rbx, %rcx
	callq	*856744(%r13)
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB0_163
# %bb.131:                              # %for.cond16.preheader.i
	cmpl	$0, 32(%rsp)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	je	.LBB0_133
# %bb.132:                              # %cond.true23.i
	movq	13544(%rsi), %rax
	movslq	36(%rsp), %rcx
	movzbl	(%rax,%rcx), %ebp
.LBB0_133:                              # %cond.end29.i
	andl	$1, %ebp
	xorl	%eax, %eax
	cmpl	$0, 48(%rsp)
	movl	$0, %ecx
	je	.LBB0_135
# %bb.134:                              # %cond.true23.1.i
	movq	13544(%rsi), %rcx
	movslq	52(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_135:                              # %cond.end29.1.i
	andl	%ecx, %ebp
	cmpl	$0, 64(%rsp)
	je	.LBB0_137
# %bb.136:                              # %cond.true23.2.i
	movq	13544(%rsi), %rax
	movslq	68(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_137:                              # %cond.end29.2.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 80(%rsp)
	movl	$0, %ecx
	je	.LBB0_139
# %bb.138:                              # %cond.true23.3.i
	movq	13544(%rsi), %rcx
	movslq	84(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_139:                              # %cond.end29.3.i
	andl	%ecx, %ebp
	cmpl	$0, 96(%rsp)
	je	.LBB0_141
# %bb.140:                              # %cond.true23.4.i
	movq	13544(%rsi), %rax
	movslq	100(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_141:                              # %cond.end29.4.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 112(%rsp)
	movl	$0, %ecx
	je	.LBB0_143
# %bb.142:                              # %cond.true23.5.i
	movq	13544(%rsi), %rcx
	movslq	116(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_143:                              # %cond.end29.5.i
	andl	%ecx, %ebp
	cmpl	$0, 128(%rsp)
	je	.LBB0_145
# %bb.144:                              # %cond.true23.6.i
	movq	13544(%rsi), %rax
	movslq	132(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_145:                              # %cond.end29.6.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 144(%rsp)
	movl	$0, %ecx
	je	.LBB0_147
# %bb.146:                              # %cond.true23.7.i
	movq	13544(%rsi), %rcx
	movslq	148(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_147:                              # %cond.end29.7.i
	andl	%ecx, %ebp
	cmpl	$0, 160(%rsp)
	je	.LBB0_149
# %bb.148:                              # %cond.true23.8.i
	movq	13544(%rsi), %rax
	movslq	164(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_149:                              # %cond.end29.8.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 176(%rsp)
	movl	$0, %ecx
	je	.LBB0_151
# %bb.150:                              # %cond.true23.9.i
	movq	13544(%rsi), %rcx
	movslq	180(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
.LBB0_151:                              # %cond.end29.9.i
	andl	%ecx, %ebp
	cmpl	$0, 192(%rsp)
	je	.LBB0_153
# %bb.152:                              # %cond.true23.10.i
	movq	13544(%rsi), %rax
	movslq	196(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
.LBB0_153:                              # %cond.end29.10.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 208(%rsp)
	movl	$0, %ecx
	je	.LBB0_155
# %bb.154:                              # %cond.true23.11.i
	movq	13544(%rsi), %rcx
	movslq	212(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_155:                              # %cond.end29.11.i
	andl	%ecx, %ebp
	cmpl	$0, 224(%rsp)
	je	.LBB0_157
# %bb.156:                              # %cond.true23.12.i
	movq	13544(%rsi), %rax
	movslq	228(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_157:                              # %cond.end29.12.i
	andl	%eax, %ebp
	xorl	%eax, %eax
	cmpl	$0, 240(%rsp)
	movl	$0, %ecx
	je	.LBB0_159
# %bb.158:                              # %cond.true23.13.i
	movq	13544(%rsi), %rcx
	movslq	244(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_159:                              # %cond.end29.13.i
	andl	%ecx, %ebp
	cmpl	$0, 256(%rsp)
	je	.LBB0_161
# %bb.160:                              # %cond.true23.14.i
	movq	13544(%rsi), %rax
	movslq	260(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_161:                              # %cond.end29.14.i
	andl	%eax, %ebp
	cmpl	$0, 272(%rsp)
	je	.LBB0_165
# %bb.162:                              # %cond.true23.15.i
	movq	13544(%rsi), %rax
	movslq	276(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	andl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_168
.LBB0_167:                              # %if.then48.i
	movl	$.L.str.2, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_168:                              # %for.body53.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_169:                              # %for.body53.i
                                        # =>This Inner Loop Header: Depth=1
	movswq	46(%rsp,%rax,2), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	44(%rsp,%rax,2), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	(%r12,%rax), %rdx
	movw	%cx, (%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 2(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 4(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 6(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 8(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 10(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 12(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 14(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 16(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 18(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 20(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 22(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 24(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 26(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 28(%rdx)
	movq	(%r12,%rax), %rdx
	movw	%cx, 30(%rdx)
	addq	$8, %rax
	cmpq	$128, %rax
	jne	.LBB0_169
	jmp	.LBB0_174
.LBB0_163:                              # %if.then.i
	movl	32(%rsp), %ebp
	testl	%ebp, %ebp
	jne	.LBB0_168
	jmp	.LBB0_167
.LBB0_164:                              # %if.else103.i
	movswq	46(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	44(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movswq	62(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	60(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%eax, %ecx
	movswq	78(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	76(%rsp), %rdx
	movzwl	(%rax,%rdx,2), %eax
	movswq	94(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	92(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movswq	110(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	108(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movswq	126(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	124(%rsp), %rsi
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movswq	142(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	140(%rsp), %rsi
	movzwl	(%rax,%rsi,2), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movswq	158(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	156(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movswq	174(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	172(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%ecx, %edx
	movswq	190(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	188(%rsp), %rsi
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%edx, %ecx
	movswq	206(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	204(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movswq	222(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	220(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movswq	238(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	236(%rsp), %rsi
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movswq	254(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	252(%rsp), %rsi
	movzwl	(%rax,%rsi,2), %eax
	addl	%ecx, %eax
	movswq	270(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	268(%rsp), %rsi
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	movswq	286(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	284(%rsp), %rdx
	movzwl	(%rax,%rdx,2), %eax
	addl	%ecx, %eax
	addl	$8, %eax
	shrl	$4, %eax
	jmp	.LBB0_172
.LBB0_165:
	xorl	%eax, %eax
	andl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB0_168
	jmp	.LBB0_167
.LBB0_171:                              # %if.else117.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	849060(%r13,%rax,4), %eax
.LBB0_172:                              # %if.end122.i
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_173:                              # %for.cond127.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, (%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 2(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 4(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 6(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 8(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 10(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 12(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 14(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 16(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 18(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 20(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 22(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 24(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 26(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 28(%rdx)
	movq	(%r15,%rcx,8), %rdx
	movw	%ax, 30(%rdx)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_173
.LBB0_174:                              # %intra16x16_dc_pred_mbaff.exit
	xorl	%eax, %eax
.LBB0_175:                              # %return
	addq	$328, %rsp                      # imm = 0x148
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
	.size	intrapred_16x16_mbaff, .Lfunc_end0-intrapred_16x16_mbaff
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_8
	.quad	.LBB0_4
	.quad	.LBB0_6
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"illegal 16x16 intra prediction mode input: %d\n"
	.size	.L.str, 47

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"invalid 16x16 intra pred Mode VERT_PRED_16"
	.size	.L.str.1, 43

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"invalid 16x16 intra pred Mode HOR_PRED_16"
	.size	.L.str.2, 42

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"invalid 16x16 intra pred Mode PLANE_16"
	.size	.L.str.3, 39

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
