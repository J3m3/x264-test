	.text
	.file	"vlc.c"
	.globl	x264_init_vlc_tables            # -- Begin function x264_init_vlc_tables
	.p2align	4, 0x90
	.type	x264_init_vlc_tables,@function
x264_init_vlc_tables:                   # @x264_init_vlc_tables
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
	movl	$x264_level_token+3, %edx
	xorl	%eax, %eax
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_9:                                # %for.cond.cleanup4
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	$512, %rdx                      # imm = 0x200
	movq	%rdi, %rax
	cmpq	$7, %rdi
	je	.LBB0_10
.LBB0_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$2, %eax
	movl	$1, %r8d
	cmovael	%eax, %r8d
	leal	-1(%r8), %ecx
	movl	$3, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movl	$-15, %r9d
	movl	%eax, %ecx
	shll	%cl, %r9d
	movl	$1, %r10d
	shll	%cl, %r10d
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	je	.LBB0_2
# %bb.11:                               # %for.body5.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	leal	15(%rax), %r11d
	leal	65535(%r10), %ebx
	xorl	%r14d, %r14d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_17:                               # %if.else52
                                        #   in Loop: Header=BB0_12 Depth=2
	movb	$28, -1(%rdx,%r14,4)
	addl	%r9d, %r12d
	addl	$4096, %r12d                    # imm = 0x1000
.LBB0_18:                               # %if.end65
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpq	$6, %rax
	setne	%cl
	movw	%r12w, -3(%rdx,%r14,4)
	cmpl	%esi, %r15d
	setg	%bpl
	andb	%cl, %bpl
	movzbl	%bpl, %ecx
	addl	%r8d, %ecx
	movb	%cl, (%rdx,%r14,4)
	incq	%r14
	cmpq	$128, %r14
	je	.LBB0_9
.LBB0_12:                               # %for.body5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-64(%r14), %r15d
	movl	%r15d, %ecx
	sarl	$15, %ecx
	xorl	%ecx, %r15d
	subl	%ecx, %r15d
	leal	(%r15,%r15), %r12d
	subl	%ecx, %r12d
	addl	$-2, %r12d
	movl	%r12d, %ebp
	movl	%eax, %ecx
	sarl	%cl, %ebp
	cmpl	$13, %ebp
	jg	.LBB0_14
# %bb.13:                               # %if.then
                                        #   in Loop: Header=BB0_12 Depth=2
	addl	%edi, %ebp
	movb	%bpl, -1(%rdx,%r14,4)
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_14:                               # %if.else34
                                        #   in Loop: Header=BB0_12 Depth=2
	cmpl	$14, %ebp
	jne	.LBB0_17
# %bb.15:                               # %if.then41
                                        #   in Loop: Header=BB0_12 Depth=2
	movb	%r11b, -1(%rdx,%r14,4)
.LBB0_16:                               # %if.end65
                                        #   in Loop: Header=BB0_12 Depth=2
	andl	%ebx, %r12d
	addl	%r10d, %r12d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_2:                                # %for.body5.us.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                # %if.then.us
                                        #   in Loop: Header=BB0_3 Depth=2
	decb	%r9b
	movb	%r9b, x264_level_token+2(,%rcx,4)
	movw	$1, %r9w
.LBB0_8:                                # %if.end65.us
                                        #   in Loop: Header=BB0_3 Depth=2
	cmpq	$6, %rax
	setne	%r10b
	movw	%r9w, x264_level_token(,%rcx,4)
	cmpl	%esi, %r8d
	setg	%r8b
	andb	%r10b, %r8b
	incb	%r8b
	movb	%r8b, x264_level_token+3(,%rcx,4)
	incq	%rcx
	cmpq	$128, %rcx
	je	.LBB0_9
.LBB0_3:                                # %for.body5.us
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-64(%rcx), %r8d
	movl	%r8d, %r10d
	sarl	$15, %r10d
	xorl	%r10d, %r8d
	subl	%r10d, %r8d
	leal	(%r8,%r8), %r9d
	subl	%r10d, %r9d
	cmpl	$16, %r9d
	jl	.LBB0_7
# %bb.4:                                # %if.else.us
                                        #   in Loop: Header=BB0_3 Depth=2
	cmpl	$32, %r9d
	jae	.LBB0_5
# %bb.6:                                # %if.then28.us
                                        #   in Loop: Header=BB0_3 Depth=2
	movb	$19, x264_level_token+2(,%rcx,4)
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_5:                                # %if.else34.us
                                        #   in Loop: Header=BB0_3 Depth=2
	movb	$28, x264_level_token+2(,%rcx,4)
	addl	$4064, %r9d                     # imm = 0xFE0
	jmp	.LBB0_8
.LBB0_10:                               # %for.cond.cleanup
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
.Lfunc_end0:
	.size	x264_init_vlc_tables, .Lfunc_end0-x264_init_vlc_tables
	.cfi_endproc
                                        # -- End function
	.type	x264_coeff0_token,@object       # @x264_coeff0_token
	.section	.rodata,"a",@progbits
	.globl	x264_coeff0_token
x264_coeff0_token:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	15                              # 0xf
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.size	x264_coeff0_token, 10

	.type	x264_coeff_token,@object        # @x264_coeff_token
	.globl	x264_coeff_token
	.p2align	4, 0x0
x264_coeff_token:
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	2
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	15                              # 0xf
	.byte	15                              # 0xf
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	10                              # 0xa
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	1                               # 0x1
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	15                              # 0xf
	.byte	12                              # 0xc
	.byte	15                              # 0xf
	.byte	11                              # 0xb
	.byte	16                              # 0x10
	.byte	14                              # 0xe
	.byte	16                              # 0x10
	.byte	13                              # 0xd
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	15                              # 0xf
	.byte	7                               # 0x7
	.byte	16                              # 0x10
	.byte	10                              # 0xa
	.byte	16                              # 0x10
	.byte	9                               # 0x9
	.byte	16                              # 0x10
	.byte	12                              # 0xc
	.byte	16                              # 0x10
	.byte	4                               # 0x4
	.byte	16                              # 0x10
	.byte	6                               # 0x6
	.byte	16                              # 0x10
	.byte	5                               # 0x5
	.byte	16                              # 0x10
	.byte	8                               # 0x8
	.byte	16                              # 0x10
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	2
	.zero	2
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	2
	.byte	7                               # 0x7
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	15                              # 0xf
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	11                              # 0xb
	.byte	15                              # 0xf
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	12                              # 0xc
	.byte	11                              # 0xb
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	11                              # 0xb
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	10                              # 0xa
	.byte	14                              # 0xe
	.byte	1                               # 0x1
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	5                               # 0x5
	.byte	14                              # 0xe
	.byte	4                               # 0x4
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	4                               # 0x4
	.zero	2
	.zero	2
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	5                               # 0x5
	.byte	13                              # 0xd
	.byte	4                               # 0x4
	.zero	2
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	12                              # 0xc
	.byte	5                               # 0x5
	.byte	14                              # 0xe
	.byte	5                               # 0x5
	.byte	12                              # 0xc
	.byte	4                               # 0x4
	.byte	15                              # 0xf
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	4                               # 0x4
	.byte	11                              # 0xb
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	5                               # 0x5
	.byte	9                               # 0x9
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	4                               # 0x4
	.byte	8                               # 0x8
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	4                               # 0x4
	.byte	15                              # 0xf
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	7                               # 0x7
	.byte	13                              # 0xd
	.byte	5                               # 0x5
	.byte	11                              # 0xb
	.byte	8                               # 0x8
	.byte	14                              # 0xe
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	7                               # 0x7
	.byte	11                              # 0xb
	.byte	9                               # 0x9
	.byte	14                              # 0xe
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	12                              # 0xc
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	9                               # 0x9
	.byte	13                              # 0xd
	.byte	9                               # 0x9
	.byte	8                               # 0x8
	.byte	8                               # 0x8
	.byte	13                              # 0xd
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	12                              # 0xc
	.byte	9                               # 0x9
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	10                              # 0xa
	.byte	5                               # 0x5
	.byte	10                              # 0xa
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	7                               # 0x7
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	4                               # 0x4
	.byte	10                              # 0xa
	.byte	3                               # 0x3
	.byte	10                              # 0xa
	.byte	2                               # 0x2
	.byte	10                              # 0xa
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.zero	2
	.byte	8                               # 0x8
	.byte	6                               # 0x6
	.byte	9                               # 0x9
	.byte	6                               # 0x6
	.byte	10                              # 0xa
	.byte	6                               # 0x6
	.byte	11                              # 0xb
	.byte	6                               # 0x6
	.byte	12                              # 0xc
	.byte	6                               # 0x6
	.byte	13                              # 0xd
	.byte	6                               # 0x6
	.byte	14                              # 0xe
	.byte	6                               # 0x6
	.byte	15                              # 0xf
	.byte	6                               # 0x6
	.byte	16                              # 0x10
	.byte	6                               # 0x6
	.byte	17                              # 0x11
	.byte	6                               # 0x6
	.byte	18                              # 0x12
	.byte	6                               # 0x6
	.byte	19                              # 0x13
	.byte	6                               # 0x6
	.byte	20                              # 0x14
	.byte	6                               # 0x6
	.byte	21                              # 0x15
	.byte	6                               # 0x6
	.byte	22                              # 0x16
	.byte	6                               # 0x6
	.byte	23                              # 0x17
	.byte	6                               # 0x6
	.byte	24                              # 0x18
	.byte	6                               # 0x6
	.byte	25                              # 0x19
	.byte	6                               # 0x6
	.byte	26                              # 0x1a
	.byte	6                               # 0x6
	.byte	27                              # 0x1b
	.byte	6                               # 0x6
	.byte	28                              # 0x1c
	.byte	6                               # 0x6
	.byte	29                              # 0x1d
	.byte	6                               # 0x6
	.byte	30                              # 0x1e
	.byte	6                               # 0x6
	.byte	31                              # 0x1f
	.byte	6                               # 0x6
	.byte	32                              # 0x20
	.byte	6                               # 0x6
	.byte	33                              # 0x21
	.byte	6                               # 0x6
	.byte	34                              # 0x22
	.byte	6                               # 0x6
	.byte	35                              # 0x23
	.byte	6                               # 0x6
	.byte	36                              # 0x24
	.byte	6                               # 0x6
	.byte	37                              # 0x25
	.byte	6                               # 0x6
	.byte	38                              # 0x26
	.byte	6                               # 0x6
	.byte	39                              # 0x27
	.byte	6                               # 0x6
	.byte	40                              # 0x28
	.byte	6                               # 0x6
	.byte	41                              # 0x29
	.byte	6                               # 0x6
	.byte	42                              # 0x2a
	.byte	6                               # 0x6
	.byte	43                              # 0x2b
	.byte	6                               # 0x6
	.byte	44                              # 0x2c
	.byte	6                               # 0x6
	.byte	45                              # 0x2d
	.byte	6                               # 0x6
	.byte	46                              # 0x2e
	.byte	6                               # 0x6
	.byte	47                              # 0x2f
	.byte	6                               # 0x6
	.byte	48                              # 0x30
	.byte	6                               # 0x6
	.byte	49                              # 0x31
	.byte	6                               # 0x6
	.byte	50                              # 0x32
	.byte	6                               # 0x6
	.byte	51                              # 0x33
	.byte	6                               # 0x6
	.byte	52                              # 0x34
	.byte	6                               # 0x6
	.byte	53                              # 0x35
	.byte	6                               # 0x6
	.byte	54                              # 0x36
	.byte	6                               # 0x6
	.byte	55                              # 0x37
	.byte	6                               # 0x6
	.byte	56                              # 0x38
	.byte	6                               # 0x6
	.byte	57                              # 0x39
	.byte	6                               # 0x6
	.byte	58                              # 0x3a
	.byte	6                               # 0x6
	.byte	59                              # 0x3b
	.byte	6                               # 0x6
	.byte	60                              # 0x3c
	.byte	6                               # 0x6
	.byte	61                              # 0x3d
	.byte	6                               # 0x6
	.byte	62                              # 0x3e
	.byte	6                               # 0x6
	.byte	63                              # 0x3f
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	2
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	0                               # 0x0
	.byte	7                               # 0x7
	.zero	96
	.size	x264_coeff_token, 640

	.type	x264_total_zeros,@object        # @x264_total_zeros
	.globl	x264_total_zeros
	.p2align	4, 0x0
x264_total_zeros:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	8                               # 0x8
	.byte	2                               # 0x2
	.byte	8                               # 0x8
	.byte	3                               # 0x3
	.byte	9                               # 0x9
	.byte	2                               # 0x2
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.zero	16
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.zero	18
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	20
	.byte	0                               # 0x0
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	22
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	24
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	26
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	28
	.size	x264_total_zeros, 480

	.type	x264_total_zeros_dc,@object     # @x264_total_zeros_dc
	.globl	x264_total_zeros_dc
	.p2align	4, 0x0
x264_total_zeros_dc:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	2
	.zero	2
	.size	x264_total_zeros_dc, 24

	.type	x264_run_before,@object         # @x264_run_before
	.globl	x264_run_before
	.p2align	4, 0x0
x264_run_before:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	28
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	26
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.zero	24
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.zero	22
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.zero	20
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.zero	18
	.byte	7                               # 0x7
	.byte	3                               # 0x3
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	1                               # 0x1
	.byte	5                               # 0x5
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	1                               # 0x1
	.byte	8                               # 0x8
	.byte	1                               # 0x1
	.byte	9                               # 0x9
	.byte	1                               # 0x1
	.byte	10                              # 0xa
	.byte	1                               # 0x1
	.byte	11                              # 0xb
	.zero	2
	.size	x264_run_before, 224

	.type	x264_level_token,@object        # @x264_level_token
	.bss
	.globl	x264_level_token
	.p2align	4, 0x0
x264_level_token:
	.zero	3584
	.size	x264_level_token, 3584

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
