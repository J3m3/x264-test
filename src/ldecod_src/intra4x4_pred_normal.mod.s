	.text
	.file	"intra4x4_pred_normal.c"
	.globl	intra4x4_pred_normal            # -- Begin function intra4x4_pred_normal
	.p2align	4, 0x90
	.type	intra4x4_pred_normal,@function
intra4x4_pred_normal:                   # @intra4x4_pred_normal
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
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
	ja	.LBB0_42
# %bb.1:                                # %entry
	movl	%edx, %r12d
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_2:                                # %sw.bb4
	movq	(%rdi), %r14
	leal	-1(%r13), %edx
	leaq	849124(%rbx), %rcx
	movq	%rsp, %r8
	movl	%r12d, %esi
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_5
# %bb.3:                                # %if.then.i66
	testl	%eax, %eax
	je	.LBB0_43
# %bb.4:                                # %cond.true.i67
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_5:                                # %if.end.i72
	testl	%eax, %eax
	je	.LBB0_43
# %bb.6:                                # %if.else7.i
	movq	1248(%r14), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	13520(%r14), %rcx
	testl	%r15d, %r15d
	je	.LBB0_126
# %bb.7:                                # %cond.true12.i
	decl	%r15d
	shlq	$3, %r15
	addq	136(%rcx), %r15
	jmp	.LBB0_127
.LBB0_8:                                # %sw.bb8
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_46
# %bb.9:                                # %cond.true.i107
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_47
.LBB0_10:                               # %sw.bb
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rdx
	movq	13520(%rdx), %rax
	testl	%r15d, %r15d
	je	.LBB0_60
# %bb.11:                               # %cond.true.i
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_61
.LBB0_12:                               # %sw.bb10
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leal	-1(%r13), %ebp
	leaq	849124(%rbx), %r14
	movq	%rsp, %r8
	movq	%r13, %r15
	movq	%rdi, %r13
	movl	%r12d, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leal	4(%r12), %esi
	leaq	24(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	cmpl	$0, 24(%rsp)
	je	.LBB0_68
# %bb.13:                               # %land.rhs.i
	movl	%r12d, %eax
	xorl	$4, %eax
	movl	%r15d, %edx
	andl	$-9, %edx
	xorl	$4, %edx
	xorl	%ecx, %ecx
	orl	%eax, %edx
	setne	%cl
	jmp	.LBB0_69
.LBB0_14:                               # %sw.bb14
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leal	-1(%r13), %ebp
	leaq	849124(%rbx), %r14
	movq	%rsp, %r8
	movq	%r13, %r15
	movq	%r12, %r13
	movq	%rdi, %r12
	movl	%r13d, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leal	4(%r13), %esi
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	cmpl	$0, 24(%rsp)
	je	.LBB0_77
# %bb.15:                               # %land.rhs.i268
	movl	%r13d, %eax
	xorl	$4, %eax
	movq	%r15, %r12
	movl	%r15d, %ecx
	andl	$-9, %ecx
	xorl	$4, %ecx
	xorl	%ebp, %ebp
	orl	%eax, %ecx
	setne	%bpl
	jmp	.LBB0_78
.LBB0_16:                               # %sw.bb6
	movq	(%rdi), %r14
	leal	-1(%r12), %esi
	leaq	849124(%rbx), %rcx
	movq	%rsp, %r8
	movl	%r13d, %edx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_19
# %bb.17:                               # %if.then.i85
	testl	%eax, %eax
	je	.LBB0_44
# %bb.18:                               # %cond.true.i87
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_19:                               # %if.end.i93
	testl	%eax, %eax
	je	.LBB0_44
# %bb.20:                               # %if.else7.i96
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %rcx
	movq	1248(%r14), %rdx
	movl	%r15d, %esi
	movq	(%rdx,%rsi,8), %rdx
	movslq	%r13d, %rsi
	movq	13520(%r14), %rdi
	testl	%r15d, %r15d
	je	.LBB0_128
# %bb.21:                               # %cond.true18.i
	decl	%r15d
	shlq	$3, %r15
	addq	136(%rdi), %r15
	jmp	.LBB0_129
.LBB0_22:                               # %sw.bb12
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leal	-1(%r12), %ebp
	movq	%r12, %r15
	leaq	849124(%rbx), %r12
	movq	%rsp, %r8
	movq	%r13, %r14
	movq	%rdi, %r13
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r12, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	decl	%r14d
	leaq	24(%rsp), %r8
	movq	%r13, %rdi
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movl	%r15d, %esi
	movl	%r14d, %edx
	movq	%r12, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	64(%rsp), %r8
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%r14d, %edx
	movq	%r12, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_91
# %bb.23:                               # %if.then.i201
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	movq	56(%rsp), %r14                  # 8-byte Reload
	je	.LBB0_25
# %bb.24:                               # %cond.true.i203
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
.LBB0_25:                               # %cond.end.i208
	cmpl	$0, 24(%rsp)
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_27
# %bb.26:                               # %cond.true15.i211
	movq	13544(%r14), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_27:                               # %cond.end22.i
	cmpl	$0, 64(%rsp)
	je	.LBB0_95
# %bb.28:                               # %cond.true26.i
	movq	13544(%r14), %rdx
	movslq	68(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
	jmp	.LBB0_92
.LBB0_29:                               # %sw.bb18
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r14
	movq	%rsp, %r8
	movq	%r12, %r15
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	decl	%r13d
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movl	%r15d, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r14, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_100
# %bb.30:                               # %if.then.i408
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	movq	56(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_32
# %bb.31:                               # %cond.true.i410
	movq	13544(%rdi), %rax
	movslq	4(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
.LBB0_32:                               # %cond.end.i416
	cmpl	$0, 24(%rsp)
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_34
# %bb.33:                               # %cond.true15.i419
	movq	13544(%rdi), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_34:                               # %cond.end22.i425
	cmpl	$0, 64(%rsp)
	je	.LBB0_106
# %bb.35:                               # %cond.true26.i428
	movq	13544(%rdi), %rdx
	movslq	68(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
	jmp	.LBB0_101
.LBB0_36:                               # %sw.bb16
	movq	(%rdi), %r14
	leal	-1(%r12), %esi
	leaq	849124(%rbx), %rcx
	movq	%rsp, %r8
	movl	%r13d, %edx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_39
# %bb.37:                               # %if.then.i366
	testl	%eax, %eax
	je	.LBB0_45
# %bb.38:                               # %cond.true.i368
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_39:                               # %if.end.i374
	testl	%eax, %eax
	je	.LBB0_45
# %bb.40:                               # %if.else7.i377
	movq	13520(%r14), %rax
	testl	%r15d, %r15d
	je	.LBB0_130
# %bb.41:                               # %cond.true9.i
	leal	-1(%r15), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_131
.LBB0_42:                               # %sw.default
	movl	$.L.str, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$1, %eax
	jmp	.LBB0_135
.LBB0_43:                               # %if.then6.i
	movl	108(%r14), %esi
	movl	$.L.str.1, %edi
	jmp	.LBB0_118
.LBB0_44:                               # %if.then6.i99
	movl	108(%r14), %esi
	movl	$.L.str.2, %edi
	jmp	.LBB0_118
.LBB0_45:                               # %if.then6.i395
	movl	108(%r14), %esi
	movl	$.L.str.7, %edi
	jmp	.LBB0_118
.LBB0_46:                               # %cond.false.i143
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_47:                               # %cond.end.i112
	movq	(%rcx), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leal	-1(%r12), %ebp
	leaq	849124(%rbx), %r15
	movq	%rsp, %r8
	movq	%r12, %r14
	movq	%rdi, %r12
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	decl	%r13d
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movl	%r14d, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	64(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_54
# %bb.48:                               # %if.then.i123
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$0, %eax
	movq	40(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_50
# %bb.49:                               # %cond.true20.i
	movq	13544(%rdi), %rax
	movslq	4(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
.LBB0_50:                               # %cond.end24.i
	cmpl	$0, 24(%rsp)
	movq	48(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_52
# %bb.51:                               # %cond.true28.i
	movq	13544(%rdi), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB0_52:                               # %cond.end35.i
	cmpl	$0, 64(%rsp)
	je	.LBB0_59
# %bb.53:                               # %cond.true39.i
	movq	13544(%rdi), %rdx
	movslq	68(%rsp), %rsi
	movsbl	(%rdx,%rsi), %edx
	jmp	.LBB0_55
.LBB0_54:                               # %if.else.i142
	movl	24(%rsp), %ecx
	movl	64(%rsp), %edx
	movq	48(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
.LBB0_55:                               # %if.end.i130
	testl	%ecx, %ecx
	je	.LBB0_59
# %bb.56:                               # %if.end.i130
	testl	%eax, %eax
	je	.LBB0_59
# %bb.57:                               # %if.end.i130
	testl	%edx, %edx
	je	.LBB0_59
# %bb.58:                               # %if.else56.i
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %rsi
	movswq	38(%rsp), %rcx
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%rcx,8), %rcx
	movswq	36(%rsp), %r8
	movzwl	(%rcx,%r8,2), %r9d
	movzwl	2(%rcx,%r8,2), %edx
	movzwl	4(%rcx,%r8,2), %edi
	movzwl	6(%rcx,%r8,2), %ecx
	movq	(%rbx,%rax,8), %r8
	movq	8(%rbx,%rax,8), %r11
	movzwl	(%r8,%rsi,2), %r10d
	movzwl	(%r11,%rsi,2), %r8d
	movq	16(%rbx,%rax,8), %r11
	movzwl	(%r11,%rsi,2), %r11d
	movq	24(%rbx,%rax,8), %rax
	movzwl	(%rax,%rsi,2), %esi
	movswq	78(%rsp), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	76(%rsp), %rbx
	movzwl	(%rax,%rbx,2), %ebx
	leal	(%r8,%r11,2), %eax
	addl	$2, %eax
	addl	%esi, %eax
	shrl	$2, %eax
	leal	(%r10,%r8,2), %esi
	addl	%r11d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	leal	(%r8,%r10,2), %r8d
	addl	$2, %r8d
	addl	%ebx, %r8d
	shrl	$2, %r8d
	addl	%r9d, %r10d
	addl	$2, %r10d
	leal	(%r10,%rbx,2), %r10d
	shrl	$2, %r10d
	leal	(%rdx,%r9,2), %r11d
	addl	$2, %r11d
	addl	%ebx, %r11d
	shrl	$2, %r11d
	leal	(%r9,%rdx,2), %r9d
	addl	$2, %r9d
	addl	%edi, %r9d
	shrl	$2, %r9d
	leal	(%rdx,%rdi,2), %edx
	addl	$2, %edx
	addl	%ecx, %edx
	shrl	$2, %edx
	movslq	%r15d, %rcx
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	(%r15,%rcx,8), %rdi
	movslq	%r14d, %rbx
	movw	%r10w, (%rdi,%rbx,2)
	movw	%r11w, 2(%rdi,%rbx,2)
	movw	%r9w, 4(%rdi,%rbx,2)
	movw	%dx, 6(%rdi,%rbx,2)
	movq	8(%r15,%rcx,8), %rdx
	movw	%r8w, (%rdx,%rbx,2)
	movw	%r10w, 2(%rdx,%rbx,2)
	movw	%r11w, 4(%rdx,%rbx,2)
	movw	%r9w, 6(%rdx,%rbx,2)
	movq	16(%r15,%rcx,8), %rdx
	movw	%si, (%rdx,%rbx,2)
	movw	%r8w, 2(%rdx,%rbx,2)
	movw	%r10w, 4(%rdx,%rbx,2)
	movw	%r11w, 6(%rdx,%rbx,2)
	movq	24(%r15,%rcx,8), %rcx
	movw	%ax, (%rcx,%rbx,2)
	movw	%si, 2(%rcx,%rbx,2)
	movw	%r8w, 4(%rcx,%rbx,2)
	movw	%r10w, 6(%rcx,%rbx,2)
	jmp	.LBB0_134
.LBB0_59:                               # %if.then55.i
	movl	108(%rdi), %esi
	movl	$.L.str.3, %edi
	jmp	.LBB0_118
.LBB0_60:                               # %cond.false.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_61:                               # %cond.end.i
	movq	(%rcx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	1248(%rdx), %rax
	movl	%r15d, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %r14
	leal	-1(%r12), %esi
	leaq	849124(%rbx), %r15
	movq	%rsp, %r8
	movq	%r12, %rbp
	movq	%rdi, %r12
	movq	16(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, %edx
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	leal	-1(%r13), %edx
	leaq	24(%rsp), %r8
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	je	.LBB0_65
# %bb.62:                               # %if.then.i
	testl	%eax, %eax
	je	.LBB0_107
# %bb.63:                               # %cond.true15.i
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	13544(%rdx), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	40(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 24(%rsp)
	je	.LBB0_108
.LBB0_64:                               # %cond.true23.i
	movq	13544(%rdx), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	testl	%ecx, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	jne	.LBB0_66
	jmp	.LBB0_109
.LBB0_65:                               # %if.else.i
	movl	24(%rsp), %ecx
	movq	40(%rsp), %r11                  # 8-byte Reload
	testl	%ecx, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_109
.LBB0_66:                               # %if.end49.thread.i
	movswq	38(%rsp), %rcx
	movq	(%r11,%rcx,8), %rcx
	movswq	36(%rsp), %rdx
	movq	(%rcx,%rdx,2), %xmm0            # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ecx
	testl	%eax, %eax
	je	.LBB0_124
# %bb.67:
	movb	$1, %sil
	xorl	%edx, %edx
	jmp	.LBB0_111
.LBB0_68:
	xorl	%ecx, %ecx
.LBB0_69:                               # %land.end10.i
	movl	%ecx, 24(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	movq	40(%rsp), %rsi                  # 8-byte Reload
	je	.LBB0_74
# %bb.70:                               # %if.then.i153
	testl	%eax, %eax
	movl	$0, %eax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_72
# %bb.71:                               # %cond.true.i155
	movq	13544(%rdi), %rax
	movslq	4(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
.LBB0_72:                               # %cond.end.i161
	testl	%ecx, %ecx
	je	.LBB0_116
# %bb.73:                               # %cond.true18.i164
	movq	13544(%rdi), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	testl	%eax, %eax
	je	.LBB0_117
.LBB0_75:                               # %if.else31.i
	movq	13520(%rdi), %rax
	movq	%r12, %r14
	testl	%esi, %esi
	je	.LBB0_119
# %bb.76:                               # %cond.true33.i
	leal	-1(%rsi), %edx
	shlq	$3, %rdx
	addq	136(%rax), %rdx
	jmp	.LBB0_120
.LBB0_74:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB0_75
.LBB0_117:                              # %if.then30.i
	movl	108(%rdi), %esi
	movl	$.L.str.4, %edi
	jmp	.LBB0_118
.LBB0_77:
	movq	%r15, %r12
	xorl	%ebp, %ebp
.LBB0_78:                               # %land.end10.i272
	movl	%ebp, 24(%rsp)
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	(%rsp), %eax
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r14                  # 8-byte Reload
	je	.LBB0_83
# %bb.79:                               # %if.then.i277
	testl	%eax, %eax
	movl	$0, %eax
	je	.LBB0_81
# %bb.80:                               # %cond.true.i279
	movq	13544(%r14), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_81:                               # %cond.end.i285
	testl	%ebp, %ebp
	je	.LBB0_123
# %bb.82:                               # %cond.true18.i288
	movq	13544(%r14), %rcx
	movslq	28(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ebp
.LBB0_83:                               # %if.end.i294
	testl	%eax, %eax
	jne	.LBB0_85
.LBB0_84:                               # %if.then30.i356
	movl	108(%r14), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_85:                               # %if.end31.i
	movq	13520(%r14), %rax
	testl	%ebx, %ebx
	je	.LBB0_87
# %bb.86:                               # %cond.true33.i300
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_88
.LBB0_87:                               # %cond.false37.i354
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_88:                               # %cond.end40.i305
	movq	(%rcx), %rdx
	movq	1248(%r14), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %rax
	movswq	14(%rsp), %rcx
	movq	(%rdx,%rcx,8), %rcx
	movswq	12(%rsp), %rdi
	movzwl	(%rcx,%rdi,2), %ebx
	movzwl	2(%rcx,%rdi,2), %r10d
	movzwl	4(%rcx,%rdi,2), %esi
	movzwl	6(%rcx,%rdi,2), %r11d
	movzwl	%r11w, %ecx
	movl	%r11d, %r15d
	movl	%r11d, %edi
	testl	%ebp, %ebp
	je	.LBB0_90
# %bb.89:                               # %if.then52.i321
	movswq	38(%rsp), %rdi
	movq	(%rdx,%rdi,8), %rdx
	movswq	36(%rsp), %rdi
	movzwl	(%rdx,%rdi,2), %r11d
	movzwl	2(%rdx,%rdi,2), %r15d
	movzwl	4(%rdx,%rdi,2), %edi
.LBB0_90:                               # %intra4x4_vert_left_pred.exit
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
	movslq	%r12d, %r14
	movq	(%rax,%r14,8), %r15
	movslq	%r13d, %r12
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
	jmp	.LBB0_134
.LBB0_91:                               # %if.else.i259
	movl	24(%rsp), %ecx
	movl	64(%rsp), %edx
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
.LBB0_92:                               # %if.end.i212
	testl	%ecx, %ecx
	je	.LBB0_95
# %bb.93:                               # %if.end.i212
	testl	%eax, %eax
	je	.LBB0_95
# %bb.94:                               # %if.end.i212
	testl	%edx, %edx
	jne	.LBB0_96
.LBB0_95:                               # %if.then42.i
	movl	108(%r14), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB0_96:                               # %if.end43.i
	movq	13520(%r14), %rax
	testl	%ebx, %ebx
	je	.LBB0_98
# %bb.97:                               # %cond.true45.i
	leal	-1(%rbx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_99
.LBB0_98:                               # %cond.false49.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_99:                               # %intra4x4_vert_right_pred.exit
	movq	(%rcx), %r8
	movq	1248(%r14), %rax
	movl	%ebx, %ecx
	movq	(%rax,%rcx,8), %rdi
	movswq	14(%rsp), %rsi
	movswq	12(%rsp), %rbx
	movswq	38(%rsp), %rcx
	movq	(%r8,%rcx,8), %rcx
	movswq	36(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r9d
	movzwl	2(%rcx,%rdx,2), %r10d
	movzwl	4(%rcx,%rdx,2), %r11d
	movzwl	6(%rcx,%rdx,2), %eax
	movq	(%r8,%rsi,8), %rcx
	movq	8(%r8,%rsi,8), %rdx
	movzwl	(%rcx,%rbx,2), %ecx
	movzwl	(%rdx,%rbx,2), %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	16(%r8,%rsi,8), %rsi
	movzwl	(%rsi,%rbx,2), %esi
	movswq	78(%rsp), %rbx
	movq	(%r8,%rbx,8), %r8
	movswq	76(%rsp), %rbx
	movzwl	(%r8,%rbx,2), %r8d
	leal	(%r9,%r8), %ebx
	incl	%ebx
	shrl	%ebx
	leal	(%r9,%r10), %ebp
	incl	%ebp
	shrl	%ebp
	leal	(%r11,%r10), %r14d
	incl	%r14d
	shrl	%r14d
	leal	(%r11,%rax), %r15d
	incl	%r15d
	movq	%rax, %rdx
	shrl	%r15d
	movslq	%r13d, %r13
	movslq	%r12d, %r12
	movq	(%rdi,%r13,8), %rax
	movw	%bx, (%rax,%r12,2)
	movw	%bp, 2(%rax,%r12,2)
	movw	%r14w, 4(%rax,%r12,2)
	movw	%r15w, 6(%rax,%r12,2)
	leal	(%r9,%r10,2), %r15d
	addl	$2, %r15d
	addl	%r11d, %r15d
	leal	(%r10,%r11,2), %eax
	addl	$2, %eax
	leal	(%r10,%r9,2), %r10d
	addl	$2, %r10d
	addl	%ecx, %r9d
	addl	$2, %r9d
	leal	(%r9,%r8,2), %r9d
	shrl	$2, %r9d
	addl	%r8d, %r10d
	shrl	$2, %r10d
	shrl	$2, %r15d
	addl	%edx, %eax
	shrl	$2, %eax
	movq	8(%rdi,%r13,8), %r11
	movw	%r9w, (%r11,%r12,2)
	movw	%r10w, 2(%r11,%r12,2)
	movw	%r15w, 4(%r11,%r12,2)
	movw	%ax, 6(%r11,%r12,2)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	leal	(%rdx,%rcx,2), %eax
	addl	%r8d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movq	16(%rdi,%r13,8), %r8
	movw	%ax, (%r8,%r12,2)
	movw	%bx, 2(%r8,%r12,2)
	movw	%bp, 4(%r8,%r12,2)
	movw	%r14w, 6(%r8,%r12,2)
	leal	(%rcx,%rdx,2), %eax
	addl	%esi, %eax
	addl	$2, %eax
	movq	24(%rdi,%r13,8), %rcx
	shrl	$2, %eax
	movw	%ax, (%rcx,%r12,2)
	movw	%r9w, 2(%rcx,%r12,2)
	movw	%r10w, 4(%rcx,%r12,2)
	movw	%r15w, 6(%rcx,%r12,2)
	jmp	.LBB0_134
.LBB0_100:                              # %if.else.i519
	movl	24(%rsp), %ecx
	movl	64(%rsp), %edx
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	56(%rsp), %rdi                  # 8-byte Reload
.LBB0_101:                              # %if.end.i434
	testl	%ecx, %ecx
	je	.LBB0_106
# %bb.102:                              # %if.end.i434
	testl	%eax, %eax
	je	.LBB0_106
# %bb.103:                              # %if.end.i434
	testl	%edx, %edx
	je	.LBB0_106
# %bb.104:                              # %if.else43.i
	movq	13520(%rdi), %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	testl	%edx, %edx
	je	.LBB0_132
# %bb.105:                              # %cond.true45.i447
	leal	-1(%rdx), %ecx
	shlq	$3, %rcx
	addq	136(%rax), %rcx
	jmp	.LBB0_133
.LBB0_106:                              # %if.then42.i442
	movl	108(%rdi), %esi
	movl	$.L.str.8, %edi
.LBB0_118:                              # %cleanup
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB0_134
.LBB0_107:
	xorl	%eax, %eax
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 24(%rsp)
	jne	.LBB0_64
.LBB0_108:
	movq	16(%rsp), %r10                  # 8-byte Reload
.LBB0_109:                              # %if.end49.i
	testl	%eax, %eax
	je	.LBB0_115
# %bb.110:
	movb	$1, %dl
	xorl	%ecx, %ecx
	xorl	%esi, %esi
.LBB0_111:                              # %if.end75.i
	movswq	14(%rsp), %rax
	movswq	12(%rsp), %rdi
	movq	(%r11,%rax,8), %r8
	movq	8(%r11,%rax,8), %r9
	movzwl	(%r8,%rdi,2), %r8d
	movzwl	(%r9,%rdi,2), %r9d
	addl	%r8d, %r9d
	movq	16(%r11,%rax,8), %r8
	movzwl	(%r8,%rdi,2), %r8d
	addl	%r9d, %r8d
	movq	24(%r11,%rax,8), %rax
	movzwl	(%rax,%rdi,2), %eax
	addl	%r8d, %eax
	addl	%ecx, %eax
	testb	%sil, %sil
	je	.LBB0_113
# %bb.112:                              # %if.then78.i
	addl	$4, %eax
	shrl	$3, %eax
	jmp	.LBB0_125
.LBB0_113:                              # %if.else80.i
	testb	%dl, %dl
	je	.LBB0_115
# %bb.114:                              # %if.then84.i
	addl	$2, %eax
	shrl	$2, %eax
	jmp	.LBB0_125
.LBB0_115:                              # %if.else94.i
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	849060(%rbx,%rax,4), %eax
	jmp	.LBB0_125
.LBB0_116:
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB0_75
	jmp	.LBB0_117
.LBB0_119:                              # %cond.false37.i
	subq	$-128, %rax
	movq	%rax, %rdx
.LBB0_120:                              # %cond.end40.i
	movq	(%rdx), %r12
	movq	1248(%rdi), %rax
	movl	%esi, %edx
	movq	(%rax,%rdx,8), %rax
	movswq	14(%rsp), %rdx
	movq	(%r12,%rdx,8), %rdx
	movswq	12(%rsp), %rsi
	movzwl	(%rdx,%rsi,2), %ebx
	movzwl	2(%rdx,%rsi,2), %edi
	movzwl	4(%rdx,%rsi,2), %r8d
	movzwl	6(%rdx,%rsi,2), %edx
	movzwl	%dx, %esi
	movl	%edx, %r9d
	movl	%edx, %r10d
	movl	%edx, %r11d
	testl	%ecx, %ecx
	je	.LBB0_122
# %bb.121:                              # %if.then52.i
	movswq	38(%rsp), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	36(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r11d
	movzwl	2(%rcx,%rdx,2), %r10d
	movzwl	4(%rcx,%rdx,2), %r9d
	movzwl	6(%rcx,%rdx,2), %edx
.LBB0_122:                              # %if.end63.i
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
	movslq	%r15d, %r11
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
	jmp	.LBB0_134
.LBB0_123:
	xorl	%ebp, %ebp
	testl	%eax, %eax
	jne	.LBB0_85
	jmp	.LBB0_84
.LBB0_124:                              # %if.then91.i
	addl	$2, %ecx
	shrl	$2, %ecx
	movl	%ecx, %eax
.LBB0_125:                              # %intra4x4_dc_pred.exit
	movslq	%ebp, %rcx
	movslq	%r10d, %rdx
	movq	(%r14,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	(%r14,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	(%r14,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	(%r14,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	8(%r14,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	8(%r14,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	8(%r14,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	8(%r14,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	16(%r14,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	16(%r14,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	16(%r14,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	16(%r14,%rdx,8), %rsi
	movw	%ax, 6(%rsi,%rcx,2)
	movq	24(%r14,%rdx,8), %rsi
	movw	%ax, (%rsi,%rcx,2)
	movq	24(%r14,%rdx,8), %rsi
	movw	%ax, 2(%rsi,%rcx,2)
	movq	24(%r14,%rdx,8), %rsi
	movw	%ax, 4(%rsi,%rcx,2)
	movq	24(%r14,%rdx,8), %rdx
	movw	%ax, 6(%rdx,%rcx,2)
	jmp	.LBB0_134
.LBB0_126:                              # %cond.false20.i
	subq	$-128, %rcx
	movq	%rcx, %r15
.LBB0_127:                              # %cond.end29.i
	movq	(%r15), %rcx
	movswq	14(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movswq	12(%rsp), %rdx
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
	jmp	.LBB0_134
.LBB0_128:                              # %cond.false22.i
	subq	$-128, %rdi
	movq	%rdi, %r15
.LBB0_129:                              # %cond.end25.i
	movq	(%r15), %rdi
	movslq	%r12d, %r8
	movq	(%rdx,%rsi,8), %r9
	movq	(%rdi,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	movd	%r10d, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%r9,%r8,2)
	movq	8(%rdx,%rsi,8), %r9
	movq	8(%rdi,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	movd	%r10d, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%r9,%r8,2)
	movq	16(%rdx,%rsi,8), %r9
	movq	16(%rdi,%rax,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	movd	%r10d, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%r9,%r8,2)
	movq	24(%rdx,%rsi,8), %rdx
	movq	24(%rdi,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movd	%eax, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rdx,%r8,2)
	jmp	.LBB0_134
.LBB0_130:                              # %cond.false13.i
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_131:                              # %cond.end16.i
	movq	(%rcx), %rcx
	movq	1248(%r14), %rax
	movl	%r15d, %edx
	movq	(%rax,%rdx,8), %rax
	movswq	14(%rsp), %rdx
	movswq	12(%rsp), %rdi
	movq	(%rcx,%rdx,8), %rsi
	movq	8(%rcx,%rdx,8), %r8
	movzwl	(%rsi,%rdi,2), %r9d
	movzwl	(%r8,%rdi,2), %r8d
	movq	16(%rcx,%rdx,8), %rsi
	movzwl	(%rsi,%rdi,2), %esi
	movq	24(%rcx,%rdx,8), %rcx
	movzwl	(%rcx,%rdi,2), %ecx
	leal	(%r8,%r9), %edx
	incl	%edx
	shrl	%edx
	leal	(%r9,%r8,2), %edi
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
	movslq	%r13d, %r11
	movq	(%rax,%r11,8), %rbx
	movslq	%r12d, %r14
	movw	%dx, (%rbx,%r14,2)
	movw	%di, 2(%rbx,%r14,2)
	movw	%r9w, 4(%rbx,%r14,2)
	movw	%r8w, 6(%rbx,%r14,2)
	movq	8(%rax,%r11,8), %rdx
	movw	%r9w, (%rdx,%r14,2)
	movw	%r8w, 2(%rdx,%r14,2)
	movw	%r10w, 4(%rdx,%r14,2)
	movw	%si, 6(%rdx,%r14,2)
	movq	16(%rax,%r11,8), %rdx
	movw	%r10w, (%rdx,%r14,2)
	movw	%si, 2(%rdx,%r14,2)
	movw	%cx, 4(%rdx,%r14,2)
	movw	%cx, 6(%rdx,%r14,2)
	movq	24(%rax,%r11,8), %rax
	movd	%ecx, %xmm0
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%xmm0, (%rax,%r14,2)
	jmp	.LBB0_134
.LBB0_132:                              # %cond.false49.i517
	subq	$-128, %rax
	movq	%rax, %rcx
.LBB0_133:                              # %cond.end52.i
	movq	(%rcx), %r8
	movq	1248(%rdi), %rax
	movl	%edx, %ecx
	movq	(%rax,%rcx,8), %rax
	movswq	14(%rsp), %rsi
	movswq	12(%rsp), %rbx
	movswq	38(%rsp), %rcx
	movq	(%r8,%rcx,8), %rcx
	movswq	36(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %r10d
	movzwl	2(%rcx,%rdx,2), %r11d
	movzwl	4(%rcx,%rdx,2), %r9d
	movq	(%r8,%rsi,8), %rcx
	movq	8(%r8,%rsi,8), %rdx
	movzwl	(%rcx,%rbx,2), %edi
	movzwl	(%rdx,%rbx,2), %ecx
	movq	16(%r8,%rsi,8), %rdx
	movzwl	(%rdx,%rbx,2), %edx
	movq	24(%r8,%rsi,8), %rsi
	movzwl	(%rsi,%rbx,2), %esi
	movswq	78(%rsp), %rbx
	movq	(%r8,%rbx,8), %r8
	movswq	76(%rsp), %rbx
	movzwl	(%r8,%rbx,2), %r8d
	leal	(%rdi,%r8), %ebx
	incl	%ebx
	shrl	%ebx
	leal	(%r11,%r10,2), %r14d
	leal	(%r10,%r11,2), %r11d
	addl	$2, %r11d
	addl	%edi, %r10d
	addl	$2, %r10d
	leal	(%r10,%r8,2), %ebp
	shrl	$2, %ebp
	addl	%r8d, %r14d
	addl	$2, %r14d
	shrl	$2, %r14d
	addl	%r9d, %r11d
	movslq	%r15d, %r10
	movq	(%rax,%r10,8), %r15
	movslq	%r12d, %r9
	movw	%bx, (%r15,%r9,2)
	movw	%bp, 2(%r15,%r9,2)
	movw	%r14w, 4(%r15,%r9,2)
	shrl	$2, %r11d
	movw	%r11w, 6(%r15,%r9,2)
	leal	(%rdi,%rcx), %r11d
	incl	%r11d
	shrl	%r11d
	leal	(%rcx,%rdi,2), %r14d
	addl	$2, %r14d
	addl	%r8d, %r14d
	shrl	$2, %r14d
	movq	8(%rax,%r10,8), %r8
	movw	%r11w, (%r8,%r9,2)
	movw	%r14w, 2(%r8,%r9,2)
	movw	%bx, 4(%r8,%r9,2)
	movw	%bp, 6(%r8,%r9,2)
	leal	(%rdx,%rcx), %r8d
	incl	%r8d
	shrl	%r8d
	leal	(%rdi,%rcx,2), %edi
	addl	%edx, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movq	16(%rax,%r10,8), %rbx
	movw	%r8w, (%rbx,%r9,2)
	movw	%di, 2(%rbx,%r9,2)
	movw	%r11w, 4(%rbx,%r9,2)
	movw	%r14w, 6(%rbx,%r9,2)
	leal	(%rcx,%rdx,2), %ecx
	addl	$2, %ecx
	addl	%esi, %edx
	incl	%edx
	addl	%esi, %ecx
	movq	24(%rax,%r10,8), %rax
	shrl	%edx
	movw	%dx, (%rax,%r9,2)
	shrl	$2, %ecx
	movw	%cx, 2(%rax,%r9,2)
	movw	%r8w, 4(%rax,%r9,2)
	movw	%di, 6(%rax,%r9,2)
.LBB0_134:                              # %cleanup
	xorl	%eax, %eax
.LBB0_135:                              # %cleanup
	addq	$88, %rsp
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
	.size	intra4x4_pred_normal, .Lfunc_end0-intra4x4_pred_normal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_2
	.quad	.LBB0_16
	.quad	.LBB0_10
	.quad	.LBB0_12
	.quad	.LBB0_8
	.quad	.LBB0_22
	.quad	.LBB0_29
	.quad	.LBB0_14
	.quad	.LBB0_36
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
