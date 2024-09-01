	.text
	.file	"intra16x16_pred_normal.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_16x16_normal
.LCPI0_0:
	.long	4294967290                      # 0xfffffffa
	.long	4294967290                      # 0xfffffffa
	.long	4294967290                      # 0xfffffffa
	.long	4294967290                      # 0xfffffffa
.LCPI0_1:
	.long	4294967289                      # 0xfffffff9
	.long	4294967290                      # 0xfffffffa
	.zero	4
	.zero	4
.LCPI0_2:
	.long	6                               # 0x6
	.long	6                               # 0x6
	.long	6                               # 0x6
	.long	6                               # 0x6
.LCPI0_3:
	.long	5                               # 0x5
	.long	6                               # 0x6
	.zero	4
	.zero	4
.LCPI0_4:
	.long	4294967289                      # 0xfffffff9
	.long	4294967290                      # 0xfffffffa
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_5:
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	0                               # 0x0
	.long	0                               # 0x0
	.text
	.globl	intrapred_16x16_normal
	.p2align	4, 0x90
	.type	intrapred_16x16_normal,@function
intrapred_16x16_normal:                 # @intrapred_16x16_normal
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
	je	.LBB0_26
# %bb.3:                                # %cond.true.i
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_27
.LBB0_4:                                # %sw.bb3
	movq	(%rdi), %rbp
	movq	8(%rdi), %r13
	movq	13520(%rbp), %rax
	testl	%ebx, %ebx
	je	.LBB0_11
# %bb.5:                                # %cond.true.i45
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_12
.LBB0_6:                                # %sw.bb5
	movq	(%rdi), %r13
	movq	8(%rdi), %rbp
	movq	13520(%r13), %rax
	testl	%ebx, %ebx
	je	.LBB0_19
# %bb.7:                                # %cond.true.i83
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_20
.LBB0_8:                                # %sw.bb1
	movq	(%rdi), %r15
	movq	8(%rdi), %r12
	movq	13520(%r15), %rax
	testl	%ebx, %ebx
	je	.LBB0_33
# %bb.9:                                # %cond.true.i18
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_34
.LBB0_10:                               # %sw.default
	movl	$.L.str, %edi
	movl	%edx, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_62
.LBB0_11:                               # %cond.false.i76
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_12:                               # %cond.end.i50
	movq	(%rcx), %r12
	movq	1248(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %r15
	leaq	849124(%r13), %rbx
	movq	%rsp, %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	16(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	movl	16(%rsp), %eax
	je	.LBB0_16
# %bb.13:                               # %if.else.i59
	testl	%eax, %eax
	je	.LBB0_40
# %bb.14:                               # %cond.end20.i
	movq	13544(%rbp), %rcx
	movslq	20(%rsp), %rax
	movsbl	(%rcx,%rax), %eax
	cmpl	$0, (%rsp)
	jne	.LBB0_42
# %bb.15:                               # %if.end.i65.thread
	xorl	%ecx, %ecx
	testb	%al, %al
	jne	.LBB0_43
	jmp	.LBB0_48
.LBB0_16:                               # %if.then.i
	movl	(%rsp), %ecx
	testl	%eax, %eax
	jne	.LBB0_43
.LBB0_17:                               # %if.end41.i
	testl	%ecx, %ecx
	je	.LBB0_48
# %bb.18:
	xorl	%eax, %eax
	movb	$1, %cl
	jmp	.LBB0_45
.LBB0_19:                               # %cond.false.i117
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_20:                               # %cond.end.i88
	movq	(%rcx), %r12
	movq	1248(%r13), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %r15
	movl	849072(%rbp,%rcx,4), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	leaq	849124(%rbp), %rbx
	leaq	40(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%rsp, %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	16(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbp), %rax
	cmpl	$0, 2204(%rax)
	movl	16(%rsp), %ecx
	je	.LBB0_25
# %bb.21:                               # %if.else.i97
	testl	%ecx, %ecx
	movl	$0, %esi
	je	.LBB0_23
# %bb.22:                               # %cond.true22.i
	movq	13544(%r13), %rax
	movslq	20(%rsp), %rcx
	movsbl	(%rax,%rcx), %esi
.LBB0_23:                               # %cond.end26.i
	cmpl	$0, (%rsp)
	je	.LBB0_49
# %bb.24:                               # %cond.true30.i
	movq	13544(%r13), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, 40(%rsp)
	jne	.LBB0_50
	jmp	.LBB0_54
.LBB0_25:                               # %if.then.i116
	movl	(%rsp), %eax
	movl	40(%rsp), %edx
	jmp	.LBB0_51
.LBB0_26:                               # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_27:                               # %cond.end.i
	movq	(%rcx), %r15
	leaq	849124(%r12), %rcx
	movq	%rsp, %r8
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	*856744(%r12)
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_30
# %bb.28:                               # %if.else.i
	testl	%eax, %eax
	je	.LBB0_31
# %bb.29:                               # %cond.true8.i
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_30:                               # %if.end.i
	testl	%eax, %eax
	jne	.LBB0_32
.LBB0_31:                               # %if.then15.i
	movl	$.L.str.1, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_32:                               # %intra16x16_vert_pred.exit
	movq	1248(%r14), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %rax
	movswq	14(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	12(%rsp), %rdx
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
	jmp	.LBB0_61
.LBB0_33:                               # %cond.false.i38
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_34:                               # %cond.end.i23
	movq	(%rcx), %r14
	movq	1248(%r15), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %rbx
	leaq	849124(%r12), %rcx
	movq	%rsp, %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	getNonAffNeighbour@PLT
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_37
# %bb.35:                               # %if.else.i29
	testl	%eax, %eax
	je	.LBB0_38
# %bb.36:                               # %cond.true12.i
	movq	13544(%r15), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_37:                               # %if.end.i33
	testl	%eax, %eax
	jne	.LBB0_39
.LBB0_38:                               # %if.then19.i
	movl	$.L.str.2, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_39:                               # %for.body.i
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %rcx
	movq	(%rbx), %rdx
	movq	(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	8(%rbx), %rdx
	movq	8(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	16(%rbx), %rdx
	movq	16(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	24(%rbx), %rdx
	movq	24(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	32(%rbx), %rdx
	movq	32(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	40(%rbx), %rdx
	movq	40(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	48(%rbx), %rdx
	movq	48(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	56(%rbx), %rdx
	movq	56(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	64(%rbx), %rdx
	movq	64(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	72(%rbx), %rdx
	movq	72(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	80(%rbx), %rdx
	movq	80(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	88(%rbx), %rdx
	movq	88(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	96(%rbx), %rdx
	movq	96(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	104(%rbx), %rdx
	movq	104(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	112(%rbx), %rdx
	movq	112(%r14,%rax,8), %rsi
	movzwl	(%rsi,%rcx,2), %esi
	movd	%esi, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	movq	120(%rbx), %rdx
	movq	120(%r14,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdx)
	movdqu	%xmm0, 16(%rdx)
	jmp	.LBB0_61
.LBB0_40:                               # %cond.end20.i.thread
	cmpl	$0, (%rsp)
	je	.LBB0_48
# %bb.41:                               # %cond.end20.i.thread.cond.true24.i_crit_edge
	movq	13544(%rbp), %rcx
	xorl	%eax, %eax
.LBB0_42:                               # %cond.true24.i
	movslq	4(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	testl	%eax, %eax
	je	.LBB0_17
.LBB0_43:                               # %if.end41.i.thread
	movswq	30(%rsp), %rax
	movq	(%r12,%rax,8), %rax
	movswq	28(%rsp), %rdx
	movdqu	(%rax,%rdx,2), %xmm0
	movdqu	16(%rax,%rdx,2), %xmm1
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
	testl	%ecx, %ecx
	je	.LBB0_58
# %bb.44:
	xorl	%ecx, %ecx
.LBB0_45:                               # %if.then43.i
	movswq	14(%rsp), %rdx
	movswq	12(%rsp), %rsi
	movq	(%r12,%rdx,8), %rdi
	movq	8(%r12,%rdx,8), %r8
	movzwl	(%rdi,%rsi,2), %edi
	movzwl	(%r8,%rsi,2), %r8d
	addl	%edi, %r8d
	movq	16(%r12,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %edi
	movq	24(%r12,%rdx,8), %r9
	movzwl	(%r9,%rsi,2), %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	movq	32(%r12,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %edi
	movq	40(%r12,%rdx,8), %r8
	movzwl	(%r8,%rsi,2), %r8d
	addl	%edi, %r8d
	movq	48(%r12,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %edi
	addl	%r8d, %edi
	addl	%r9d, %edi
	movq	56(%r12,%rdx,8), %r8
	movzwl	(%r8,%rsi,2), %r8d
	movq	64(%r12,%rdx,8), %r9
	movzwl	(%r9,%rsi,2), %r9d
	addl	%r8d, %r9d
	movq	72(%r12,%rdx,8), %r8
	movzwl	(%r8,%rsi,2), %r8d
	addl	%r9d, %r8d
	movq	80(%r12,%rdx,8), %r9
	movzwl	(%r9,%rsi,2), %r9d
	addl	%r8d, %r9d
	addl	%edi, %r9d
	movq	88(%r12,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %edi
	movq	96(%r12,%rdx,8), %r8
	movzwl	(%r8,%rsi,2), %r8d
	addl	%edi, %r8d
	movq	104(%r12,%rdx,8), %rdi
	movzwl	(%rdi,%rsi,2), %edi
	addl	%r8d, %edi
	movq	112(%r12,%rdx,8), %r8
	movzwl	(%r8,%rsi,2), %r8d
	addl	%edi, %r8d
	movq	120(%r12,%rdx,8), %rdx
	movzwl	(%rdx,%rsi,2), %edx
	addl	%r8d, %edx
	addl	%r9d, %edx
	testb	%cl, %cl
	je	.LBB0_47
# %bb.46:                               # %if.then74.i
	addl	$8, %edx
	shrl	$4, %edx
	jmp	.LBB0_59
.LBB0_47:                               # %if.then67.i
	addl	%eax, %edx
	addl	$16, %edx
	shrl	$5, %edx
	jmp	.LBB0_59
.LBB0_48:                               # %if.else84.i
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	849060(%r13,%rax,4), %edx
	jmp	.LBB0_59
.LBB0_49:
	xorl	%eax, %eax
	cmpl	$0, 40(%rsp)
	je	.LBB0_54
.LBB0_50:                               # %cond.true41.i
	movq	13544(%r13), %rcx
	movslq	44(%rsp), %rdx
	movsbl	(%rcx,%rdx), %edx
	movl	%esi, %ecx
.LBB0_51:                               # %if.end.i101
	testl	%ecx, %ecx
	je	.LBB0_54
# %bb.52:                               # %if.end.i101
	testl	%edx, %edx
	je	.LBB0_54
# %bb.53:                               # %if.end.i101
	testl	%eax, %eax
	jne	.LBB0_55
.LBB0_54:                               # %if.then54.i
	movl	$.L.str.3, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_55:                               # %if.end55.i
	movswq	30(%rsp), %rax
	movq	(%r12,%rax,8), %rdx
	movswq	28(%rsp), %rsi
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %rcx
	movzwl	16(%rdx,%rsi,2), %edi
	movzwl	12(%rdx,%rsi,2), %r8d
	subl	%r8d, %edi
	movq	64(%r12,%rax,8), %r8
	movzwl	(%r8,%rcx,2), %r8d
	movq	48(%r12,%rax,8), %r9
	movzwl	(%r9,%rcx,2), %r9d
	subl	%r9d, %r8d
	movzwl	18(%rdx,%rsi,2), %r9d
	movzwl	10(%rdx,%rsi,2), %r10d
	subl	%r10d, %r9d
	leal	(%rdi,%r9,2), %edi
	movq	72(%r12,%rax,8), %r9
	movzwl	(%r9,%rcx,2), %r9d
	movq	40(%r12,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	subl	%r10d, %r9d
	leal	(%r8,%r9,2), %r8d
	movzwl	20(%rdx,%rsi,2), %r9d
	movzwl	8(%rdx,%rsi,2), %r10d
	subl	%r10d, %r9d
	leal	(%r9,%r9,2), %r9d
	addl	%edi, %r9d
	movq	80(%r12,%rax,8), %rdi
	movzwl	(%rdi,%rcx,2), %edi
	movq	32(%r12,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	subl	%r10d, %edi
	leal	(%rdi,%rdi,2), %edi
	addl	%r8d, %edi
	movzwl	22(%rdx,%rsi,2), %r8d
	movzwl	6(%rdx,%rsi,2), %r10d
	subl	%r10d, %r8d
	leal	(%r9,%r8,4), %r8d
	movq	88(%r12,%rax,8), %r9
	movzwl	(%r9,%rcx,2), %r9d
	movq	24(%r12,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	subl	%r10d, %r9d
	leal	(%rdi,%r9,4), %edi
	movzwl	24(%rdx,%rsi,2), %r9d
	movzwl	4(%rdx,%rsi,2), %r10d
	subl	%r10d, %r9d
	leal	(%r9,%r9,4), %r9d
	addl	%r8d, %r9d
	movq	96(%r12,%rax,8), %r8
	movzwl	(%r8,%rcx,2), %r8d
	movq	16(%r12,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	subl	%r10d, %r8d
	leal	(%r8,%r8,4), %r8d
	addl	%edi, %r8d
	movzwl	26(%rdx,%rsi,2), %edi
	movzwl	2(%rdx,%rsi,2), %r10d
	subl	%r10d, %edi
	leal	(%rdi,%rdi,2), %edi
	leal	(%r9,%rdi,2), %edi
	movq	104(%r12,%rax,8), %r9
	movzwl	(%r9,%rcx,2), %r9d
	movq	(%r12,%rax,8), %r10
	movq	8(%r12,%rax,8), %r11
	movzwl	(%r11,%rcx,2), %r11d
	subl	%r11d, %r9d
	leal	(%r9,%r9,2), %r9d
	leal	(%r8,%r9,2), %r11d
	movzwl	28(%rdx,%rsi,2), %r9d
	movzwl	(%rdx,%rsi,2), %r8d
	subl	%r8d, %r9d
	leal	(,%r9,8), %r8d
	subl	%r9d, %r8d
	addl	%edi, %r8d
	movq	112(%r12,%rax,8), %rdi
	movzwl	(%rdi,%rcx,2), %edi
	movzwl	(%r10,%rcx,2), %r9d
	subl	%r9d, %edi
	leal	(,%rdi,8), %r9d
	subl	%edi, %r9d
	addl	%r11d, %r9d
	movzwl	30(%rdx,%rsi,2), %edx
	movswq	54(%rsp), %rsi
	movq	(%r12,%rsi,8), %rsi
	movswq	52(%rsp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	movq	120(%r12,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %edi
	movl	%edi, %eax
	addl	%edx, %edi
	movl	%edx, %ecx
	subl	%esi, %ecx
	leal	(%r8,%rcx,8), %ecx
	subl	%esi, %eax
	leal	(%r9,%rax,8), %eax
	leal	(%rcx,%rcx,4), %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	leal	(%rax,%rax,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	shll	$4, %edi
	movd	%r8d, %xmm5
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [4294967290,4294967290,4294967290,4294967290]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3]
	movq	.LCPI0_4(%rip), %xmm0           # xmm0 = [4294967289,4294967290,0,0]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	leal	(%r8,%r8,4), %ecx
	negl	%ecx
	leal	(,%r8,4), %edx
	leal	(%r8,%r8,2), %esi
	movd	%esi, %xmm6
                                        # kill: def $esi killed $esi def $rsi
	negl	%esi
	leal	(%r8,%r8), %r9d
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [6,6,6,6]
	pmuludq	%xmm5, %xmm2
	movq	.LCPI0_5(%rip), %xmm1           # xmm1 = [5,6,0,0]
	pmuludq	%xmm5, %xmm1
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	leal	(,%r8,8), %r10d
	movd	%r10d, %xmm7
	subl	%r8d, %r10d
	movd	32(%rsp), %xmm2                 # 4-byte Folded Reload
                                        # xmm2 = mem[0],zero,zero,zero
	pshufd	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movd	%r9d, %xmm3
	movdqa	%xmm5, %xmm4
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movd	%edx, %xmm8
	punpckldq	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	punpckldq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movd	%r10d, %xmm5
	punpcklqdq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0]
	shufps	$36, %xmm7, %xmm1               # xmm1 = xmm1[0,1],xmm7[2,0]
	leal	(,%rax,8), %r8d
	movl	%eax, %r9d
	subl	%r8d, %r9d
	addl	%r9d, %edi
	addl	$16, %edi
	negl	%edx
	xorl	%r8d, %r8d
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
.LBB0_56:                               # %for.body139.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%r8,8), %r9
	movd	%edi, %xmm8
	pshufd	$80, %xmm8, %xmm6               # xmm6 = xmm8[0,0,1,1]
	movdqa	%xmm6, %xmm7
	paddd	%xmm0, %xmm7
	leal	(%rcx,%rdi), %r10d
	leal	(%rdx,%rdi), %r11d
	leal	(%rsi,%rdi), %ebx
	psubd	%xmm3, %xmm6
	movd	%r10d, %xmm9
	movd	%r11d, %xmm10
	punpcklqdq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0]
	shufps	$36, %xmm10, %xmm7              # xmm7 = xmm7[0,1],xmm10[2,0]
	movd	%ebx, %xmm9
	pshufd	$0, %xmm8, %xmm10               # xmm10 = xmm8[0,0,0,0]
	shufps	$212, %xmm6, %xmm8              # xmm8 = xmm8[0,1],xmm6[1,3]
	punpckldq	%xmm9, %xmm6            # xmm6 = xmm6[0],xmm9[0],xmm6[1],xmm9[1]
	shufps	$33, %xmm8, %xmm6               # xmm6 = xmm6[1,0],xmm8[2,0]
	psrad	$5, %xmm6
	psrad	$5, %xmm7
	movdqa	%xmm7, %xmm8
	pcmpgtd	%xmm5, %xmm8
	pand	%xmm7, %xmm8
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm5, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm7, %xmm8
	pandn	%xmm2, %xmm7
	por	%xmm8, %xmm7
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm6, %xmm7
	movdqu	%xmm7, (%r9)
	movdqa	%xmm10, %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm4, %xmm10
	psrad	$5, %xmm10
	psrad	$5, %xmm6
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm5, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm5, %xmm6
	pand	%xmm10, %xmm6
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm8, %xmm6
	pandn	%xmm2, %xmm8
	por	%xmm6, %xmm8
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm2, %xmm6
	por	%xmm7, %xmm6
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm6, %xmm8
	movdqu	%xmm8, 16(%r9)
	incq	%r8
	addl	%eax, %edi
	cmpq	$16, %r8
	jne	.LBB0_56
	jmp	.LBB0_61
.LBB0_58:                               # %if.then81.i
	addl	$8, %eax
	shrl	$4, %eax
	movl	%eax, %edx
.LBB0_59:                               # %if.end89.i
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_60:                               # %for.cond94.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rax,8), %rcx
	movw	%dx, (%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 2(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 4(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 6(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 8(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 10(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 12(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 14(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 16(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 18(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 20(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 22(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 24(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 26(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 28(%rcx)
	movq	(%r15,%rax,8), %rcx
	movw	%dx, 30(%rcx)
	incq	%rax
	cmpq	$16, %rax
	jne	.LBB0_60
.LBB0_61:                               # %intra16x16_dc_pred.exit
	xorl	%eax, %eax
.LBB0_62:                               # %return
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
.Lfunc_end0:
	.size	intrapred_16x16_normal, .Lfunc_end0-intrapred_16x16_normal
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
