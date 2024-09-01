	.text
	.file	"fmo.c"
	.globl	fmo_init                        # -- Begin function fmo_init
	.p2align	4, 0x90
	.type	fmo_init,@function
fmo_init:                               # @fmo_init
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
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	8(%rdi), %r14
	movq	16(%rdi), %rax
	movl	3128(%rax), %ebp
	movl	3132(%rax), %eax
	incl	%eax
	incl	%ebp
	imull	%eax, %ebp
	cmpl	$6, 2048(%r14)
	jne	.LBB0_3
# %bb.1:                                # %if.then.i
	movl	2156(%r14), %eax
	incl	%eax
	cmpl	%ebp, %eax
	je	.LBB0_3
# %bb.2:                                # %if.then4.i
	movl	$.L.str, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB0_3:                                # %if.end5.i
	movq	856712(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_5
# %bb.4:                                # %if.then6.i
	callq	free@PLT
.LBB0_5:                                # %if.end8.i
	movl	%ebp, %r15d
	leaq	(,%r15,4), %rdi
	callq	malloc@PLT
	movq	%rax, 856712(%rbx)
	testq	%rax, %rax
	je	.LBB0_6
# %bb.7:                                # %if.end20.i
	cmpl	$0, 2044(%r14)
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	je	.LBB0_8
# %bb.9:                                # %if.end28.i
	movl	2048(%r14), %esi
	cmpq	$6, %rsi
	ja	.LBB0_99
# %bb.10:                               # %if.end28.i
	jmpq	*.LJTI0_0(,%rsi,8)
.LBB0_11:                               # %sw.bb.i
	movq	8(%rbx), %rax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_21:                               # %do.cond.i.i
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	%ebp, %r8d
	jae	.LBB0_95
.LBB0_12:                               # %do.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_17 Depth 3
	cmpl	%ebp, %r8d
	jae	.LBB0_95
# %bb.13:                               # %for.cond2.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_12 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_14:                               # %for.cond2.preheader.i.i
                                        #   Parent Loop BB0_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_17 Depth 3
	movl	%edx, %edi
	movl	%r8d, %esi
	movl	%ebp, %r9d
	subl	%r8d, %r9d
	cmovbl	%ecx, %r9d
	jbe	.LBB0_15
# %bb.16:                               # %for.body7.i.i.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	decq	%r9
	leaq	(,%rsi,4), %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB0_17:                               # %for.body7.i.i
                                        #   Parent Loop BB0_12 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	856712(%rbx), %r8
	addq	%r10, %r8
	movl	%edx, (%r8,%r11,4)
	movl	2052(%rax,%rdi,4), %r8d
	cmpq	%r8, %r11
	jae	.LBB0_19
# %bb.18:                               # %for.body7.i.i
                                        #   in Loop: Header=BB0_17 Depth=3
	leaq	1(%r11), %r14
	cmpq	%r11, %r9
	movq	%r14, %r11
	jne	.LBB0_17
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movl	2052(%rax,%rdi,4), %r8d
.LBB0_19:                               # %for.inc11.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	incl	%edx
	addl	%esi, %r8d
	incl	%r8d
	cmpl	2044(%rax), %edx
	ja	.LBB0_21
# %bb.20:                               # %for.inc11.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	cmpl	%ebp, %r8d
	jb	.LBB0_14
	jmp	.LBB0_21
.LBB0_8:                                # %if.then23.i
	shlq	$34, %r15
	sarq	$32, %r15
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset@PLT
.LBB0_95:                               # %FmoGenerateMapUnitToSliceGroupMap.exit
	movq	16(%rbx), %r14
	movq	856704(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_97
# %bb.96:                               # %if.then.i8
	callq	free@PLT
.LBB0_97:                               # %if.end.i
	movl	849012(%rbx), %r15d
	leaq	(,%r15,4), %rdi
	callq	malloc@PLT
	movq	%rax, 856704(%rbx)
	testq	%rax, %rax
	je	.LBB0_98
# %bb.101:                              # %if.end10.i
	cmpl	$0, 3136(%r14)
	jne	.LBB0_103
# %bb.102:                              # %lor.lhs.false.i
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, 176(%rcx)
	je	.LBB0_118
.LBB0_103:                              # %if.then13.i13
	testq	%r15, %r15
	movq	24(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_125
# %bb.104:                              # %for.body.preheader.i
	movq	856712(%rbx), %rdi
	xorl	%esi, %esi
	cmpl	$16, %r15d
	jb	.LBB0_105
# %bb.106:                              # %for.body.preheader.i
	movq	%rax, %rcx
	subq	%rdi, %rcx
	cmpq	$64, %rcx
	jb	.LBB0_105
# %bb.107:                              # %vector.ph61
	movl	%r15d, %esi
	andl	$-16, %esi
	leaq	(,%rsi,4), %r8
	leaq	(%rdi,%rsi,4), %rcx
	leaq	(%rax,%rsi,4), %rdx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB0_108:                              # %vector.body70
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdi,%r9), %xmm0
	movups	16(%rdi,%r9), %xmm1
	movups	32(%rdi,%r9), %xmm2
	movups	48(%rdi,%r9), %xmm3
	movups	%xmm0, (%rax,%r9)
	movups	%xmm1, 16(%rax,%r9)
	movups	%xmm2, 32(%rax,%r9)
	movups	%xmm3, 48(%rax,%r9)
	addq	$64, %r9
	cmpq	%r9, %r8
	jne	.LBB0_108
# %bb.109:                              # %middle.block58
	cmpl	%r15d, %esi
	je	.LBB0_125
# %bb.110:                              # %for.body.i.preheader
	movl	%r15d, %eax
	subl	%esi, %eax
	andl	$7, %eax
	je	.LBB0_111
.LBB0_112:                              # %for.body.i.prol.preheader
	negl	%eax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_113:                              # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %r8d
	addq	$4, %rcx
	movl	%r8d, (%rdx)
	addq	$4, %rdx
	decl	%edi
	cmpl	%edi, %eax
	jne	.LBB0_113
# %bb.114:                              # %for.body.i.prol.loopexit.loopexit
	movl	%esi, %eax
	subl	%edi, %eax
	subl	%r15d, %esi
	cmpl	$-8, %esi
	jbe	.LBB0_116
	jmp	.LBB0_125
.LBB0_105:
	movq	%rdi, %rcx
	movq	%rax, %rdx
	movl	%r15d, %eax
	subl	%esi, %eax
	andl	$7, %eax
	jne	.LBB0_112
.LBB0_111:
	movl	%esi, %eax
	subl	%r15d, %esi
	cmpl	$-8, %esi
	ja	.LBB0_125
.LBB0_116:                              # %for.body.i.preheader2
	subl	%eax, %r15d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_117:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rcx,%rax,4), %esi
	movl	%esi, (%rdx,%rax,4)
	movl	4(%rcx,%rax,4), %esi
	movl	%esi, 4(%rdx,%rax,4)
	movl	8(%rcx,%rax,4), %esi
	movl	%esi, 8(%rdx,%rax,4)
	movl	12(%rcx,%rax,4), %esi
	movl	%esi, 12(%rdx,%rax,4)
	movl	16(%rcx,%rax,4), %esi
	movl	%esi, 16(%rdx,%rax,4)
	movl	20(%rcx,%rax,4), %esi
	movl	%esi, 20(%rdx,%rax,4)
	movl	24(%rcx,%rax,4), %esi
	movl	%esi, 24(%rdx,%rax,4)
	movl	28(%rcx,%rax,4), %esi
	movl	%esi, 28(%rdx,%rax,4)
	addq	$8, %rax
	cmpl	%eax, %r15d
	jne	.LBB0_117
	jmp	.LBB0_125
.LBB0_118:                              # %if.else.i
	cmpl	$0, 3140(%r14)
	je	.LBB0_122
# %bb.119:                              # %for.cond25.preheader.i
	testq	%r15, %r15
	movq	24(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_125
# %bb.120:                              # %for.body29.i.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_121:                              # %for.body29.i
                                        # =>This Inner Loop Header: Depth=1
	movq	856704(%rbx), %rcx
	movq	856712(%rbx), %rdx
	movq	%rax, %rsi
	andq	$-2, %rsi
	movl	(%rdx,%rsi,2), %edx
	movl	%edx, (%rcx,%rax,4)
	incq	%rax
	movl	849012(%rbx), %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_121
	jmp	.LBB0_125
.LBB0_72:                               # %sw.bb33.i
	testl	%ebp, %ebp
	je	.LBB0_95
# %bb.73:                               # %for.body.lr.ph.i110.i
	movq	8(%rbx), %rax
	movl	2152(%rax), %edx
	incl	%edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	imull	228(%rcx), %edx
	cmpl	%ebp, %edx
	cmovgel	%ebp, %edx
	movl	%ebp, %ecx
	subl	%edx, %ecx
	cmpl	$0, 2148(%rax)
	cmovel	%edx, %ecx
	cmpl	$1, %ebp
	jne	.LBB0_77
# %bb.74:
	xorl	%edx, %edx
	jmp	.LBB0_75
.LBB0_25:                               # %sw.bb31.i
	movq	8(%rbx), %r8
	testl	%ebp, %ebp
	je	.LBB0_32
# %bb.26:                               # %for.body.lr.ph.i80.i
	movl	2044(%r8), %eax
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpl	$4, %ebp
	jae	.LBB0_28
# %bb.27:
	xorl	%edx, %edx
	jmp	.LBB0_30
.LBB0_48:                               # %sw.bb32.i
	movq	8(%rbx), %rax
	movl	2152(%rax), %edx
	incl	%edx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	imull	228(%rcx), %edx
	cmpl	%ebp, %edx
	cmovgel	%ebp, %edx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	testl	%ebp, %ebp
	je	.LBB0_95
# %bb.49:                               # %for.body.i100.i.preheader
	movl	%r15d, %edx
	andl	$3, %edx
	cmpl	$4, %ebp
	jae	.LBB0_51
# %bb.50:
	xorl	%esi, %esi
	jmp	.LBB0_53
.LBB0_22:                               # %sw.bb30.i
	testl	%ebp, %ebp
	je	.LBB0_95
# %bb.23:                               # %for.body.lr.ph.i.i
	movq	8(%rbx), %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_24:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	848996(%rbx)
	movl	2044(%rsi), %edi
	incl	%edi
	imull	%edi, %eax
	shrl	%eax
	addl	%edx, %eax
	xorl	%edx, %edx
	divl	%edi
	movq	856712(%rbx), %rax
	movl	%edx, (%rax,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %r15
	jne	.LBB0_24
	jmp	.LBB0_95
.LBB0_79:                               # %sw.bb34.i
	movq	8(%rbx), %rax
	movl	2152(%rax), %ecx
	incl	%ecx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	imull	228(%rdx), %ecx
	cmpl	%ebp, %ecx
	cmovgel	%ebp, %ecx
	subl	%ecx, %ebp
	cmpl	$0, 2148(%rax)
	cmovel	%ecx, %ebp
	movl	848996(%rbx), %esi
	testl	%esi, %esi
	je	.LBB0_95
# %bb.80:                               # %for.cond1.preheader.lr.ph.i.i
	cmpl	$0, 849000(%rbx)
	je	.LBB0_95
# %bb.81:                               # %for.cond1.preheader.i.i.preheader
	xorl	%ecx, %ecx
	movl	$1, %edi
	xorl	%edx, %edx
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_82 Depth=1
	xorl	%edi, %edi
	incl	%edx
	cmpl	%esi, %edx
	jae	.LBB0_95
.LBB0_82:                               # %for.cond1.preheader.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_85 Depth 2
	testl	%edi, %edi
	je	.LBB0_83
# %bb.84:                               # %for.body3.i.i.preheader
                                        #   in Loop: Header=BB0_82 Depth=1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_85:                               # %for.body3.i.i
                                        #   Parent Loop BB0_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%rcx,%r8), %esi
	movl	2148(%rax), %edi
	movl	$1, %r9d
	subl	%edi, %r9d
	cmpl	%ebp, %esi
	cmovbl	%edi, %r9d
	movq	856712(%rbx), %rsi
	movl	848996(%rbx), %edi
	imull	%r8d, %edi
	addl	%edx, %edi
	movl	%r9d, (%rsi,%rdi,4)
	incl	%r8d
	movl	849000(%rbx), %edi
	cmpl	%edi, %r8d
	jb	.LBB0_85
# %bb.86:                               # %for.inc18.loopexit.i.i
                                        #   in Loop: Header=BB0_82 Depth=1
	movl	848996(%rbx), %esi
	addl	%r8d, %ecx
	incl	%edx
	cmpl	%esi, %edx
	jb	.LBB0_82
	jmp	.LBB0_95
.LBB0_88:                               # %sw.bb35.i
	testl	%ebp, %ebp
	je	.LBB0_95
# %bb.89:                               # %for.body.lr.ph.i141.i
	movq	8(%rbx), %rax
	movl	%r15d, %ecx
	andl	$3, %ecx
	cmpl	$4, %ebp
	jae	.LBB0_91
# %bb.90:
	xorl	%edx, %edx
	jmp	.LBB0_93
.LBB0_122:                              # %for.cond38.preheader.i
	testq	%r15, %r15
	movq	24(%rsp), %r10                  # 8-byte Reload
	je	.LBB0_125
# %bb.123:                              # %for.body42.lr.ph.i
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_124:                              # %for.body42.i
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %rdi
	movl	848996(%rbx), %r8d
	leal	(%r8,%r8), %esi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %esi
	imull	%r8d, %esi
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $edx killed $edx def $rdx
	addl	%esi, %edx
	movl	(%rdi,%rdx,4), %eax
	movq	856704(%rbx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	incq	%rcx
	movl	849012(%rbx), %eax
	cmpq	%rax, %rcx
	jb	.LBB0_124
.LBB0_125:                              # %FmoGenerateMbToSliceGroupMap.exit
	movl	2044(%r10), %eax
	incl	%eax
	movl	%eax, 856720(%rbx)
	xorl	%eax, %eax
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
.LBB0_77:                               # %for.body.lr.ph.i110.i.new
	.cfi_def_cfa_offset 96
	movl	%r15d, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_78:                               # %for.body.i117.i
                                        # =>This Inner Loop Header: Depth=1
	movl	2148(%rax), %edi
	movl	$1, %r8d
	subl	%edi, %r8d
	cmpq	%rcx, %rdx
	cmovbl	%edi, %r8d
	movq	856712(%rbx), %rdi
	movl	%r8d, (%rdi,%rdx,4)
	leaq	1(%rdx), %rdi
	movl	2148(%rax), %r8d
	movl	$1, %r9d
	subl	%r8d, %r9d
	cmpq	%rcx, %rdi
	cmovbl	%r8d, %r9d
	movq	856712(%rbx), %rdi
	movl	%r9d, 4(%rdi,%rdx,4)
	addq	$2, %rdx
	cmpq	%rsi, %rdx
	jne	.LBB0_78
.LBB0_75:                               # %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit93.unr-lcssa
	testb	$1, %r15b
	je	.LBB0_95
# %bb.76:                               # %for.body.i117.i.epil
	movl	2148(%rax), %eax
	movl	$1, %esi
	subl	%eax, %esi
	cmpq	%rcx, %rdx
	cmovbl	%eax, %esi
	movq	856712(%rbx), %rax
	movl	%esi, (%rax,%rdx,4)
	jmp	.LBB0_95
.LBB0_28:                               # %for.body.lr.ph.i80.i.new
	andl	$-4, %r15d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_29:                               # %for.body.i84.i
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movq	856712(%rbx), %rsi
	movl	%eax, 4(%rsi,%rdx,4)
	movq	856712(%rbx), %rsi
	movl	%eax, 8(%rsi,%rdx,4)
	movq	856712(%rbx), %rsi
	movl	%eax, 12(%rsi,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %r15
	jne	.LBB0_29
.LBB0_30:                               # %for.end.i.i.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB0_32
	.p2align	4, 0x90
.LBB0_31:                               # %for.body.i84.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %rsi
	movl	%eax, (%rsi,%rdx,4)
	incq	%rdx
	decq	%rcx
	jne	.LBB0_31
.LBB0_32:                               # %for.end.i.i
	movl	2044(%r8), %eax
	decl	%eax
	js	.LBB0_95
# %bb.33:                               # %for.body4.lr.ph.i.i
	movl	%eax, %r9d
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               # %for.cond2.loopexit.i.i
                                        #   in Loop: Header=BB0_35 Depth=1
	leaq	-1(%r9), %rax
	testq	%r9, %r9
	movq	%rax, %r9
	jle	.LBB0_95
.LBB0_35:                               # %for.body4.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #     Child Loop BB0_44 Depth 2
	movl	848996(%rbx), %r10d
	movl	2084(%r8,%r9,4), %eax
	movl	2116(%r8,%r9,4), %edi
	xorl	%edx, %edx
	divl	%r10d
	movl	%edx, %esi
	movl	%eax, %ecx
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r10d
	cmpl	%eax, %ecx
	ja	.LBB0_34
# %bb.36:                               # %for.cond23.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_35 Depth=1
	cmpl	%edx, %esi
	jbe	.LBB0_45
# %bb.37:                               # %for.cond23.preheader.us.i.i.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	movl	%eax, %esi
	movl	%edi, %eax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
	incq	%rax
	leal	1(%rcx), %edi
	cmpq	%rdi, %rax
	cmovbeq	%rdi, %rax
	subl	%ecx, %eax
	cmpl	$3, %eax
	ja	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_35 Depth=1
	movl	%esi, %edx
	.p2align	4, 0x90
.LBB0_44:                               # %for.cond23.preheader.us.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	%ecx
	cmpl	%edx, %ecx
	jbe	.LBB0_44
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_45:                               # %for.cond23.preheader.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_46 Depth 3
	movl	%esi, %edi
	.p2align	4, 0x90
.LBB0_46:                               # %for.body25.i.i
                                        #   Parent Loop BB0_35 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	856712(%rbx), %r10
	movl	848996(%rbx), %r11d
	imull	%ecx, %r11d
	addl	%edi, %r11d
	movl	%r9d, (%r10,%r11,4)
	incl	%edi
	cmpl	%edx, %edi
	jbe	.LBB0_46
# %bb.47:                               # %for.cond23.for.inc33_crit_edge.i.i
                                        #   in Loop: Header=BB0_45 Depth=2
	incl	%ecx
	cmpl	%eax, %ecx
	jbe	.LBB0_45
	jmp	.LBB0_34
.LBB0_39:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_35 Depth=1
	movl	%esi, %edx
	movl	%esi, %r10d
	incq	%r10
	subq	%rdi, %r10
	movl	$0, %esi
	cmovaeq	%r10, %rsi
	movl	$-2, %edi
	subl	%ecx, %edi
	cmpl	%esi, %edi
	jb	.LBB0_44
# %bb.40:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_35 Depth=1
	shrq	$32, %rsi
	jne	.LBB0_44
# %bb.41:                               # %vector.ph
                                        #   in Loop: Header=BB0_35 Depth=1
	movl	%eax, %esi
	andl	$-4, %esi
	addl	%esi, %ecx
	movl	%esi, %edi
	.p2align	4, 0x90
.LBB0_42:                               # %vector.body
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-4, %edi
	jne	.LBB0_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB0_35 Depth=1
	cmpl	%esi, %eax
	jne	.LBB0_44
	jmp	.LBB0_34
.LBB0_51:                               # %for.body.i100.i.preheader.new
	andl	$-4, %r15d
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_52:                               # %for.body.i100.i
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %rdi
	movl	$2, (%rdi,%rsi,4)
	movq	856712(%rbx), %rdi
	movl	$2, 4(%rdi,%rsi,4)
	movq	856712(%rbx), %rdi
	movl	$2, 8(%rdi,%rsi,4)
	movq	856712(%rbx), %rdi
	movl	$2, 12(%rdi,%rsi,4)
	addq	$4, %rsi
	cmpq	%rsi, %r15
	jne	.LBB0_52
.LBB0_53:                               # %for.body9.lr.ph.i.i.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB0_55
	.p2align	4, 0x90
.LBB0_54:                               # %for.body.i100.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %rdi
	movl	$2, (%rdi,%rsi,4)
	incq	%rsi
	decq	%rdx
	jne	.LBB0_54
.LBB0_55:                               # %for.body9.lr.ph.i.i
	movl	2148(%rax), %r13d
	leal	-1(%r13), %r14d
	movl	848996(%rbx), %edi
	movl	849000(%rbx), %esi
	subl	%r13d, %esi
	shrl	%esi
	subl	%r13d, %edi
	shrl	%edi
	xorl	%edx, %edx
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	movl	%edi, %r10d
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%edi, %r11d
	jmp	.LBB0_56
	.p2align	4, 0x90
.LBB0_60:                               # %if.then29.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$2, %edi
	movl	$1, %ecx
	cmovll	%ecx, %edi
	decl	%edi
	movl	2148(%rax), %ecx
	leal	-1(,%rcx,2), %r13d
	xorl	%r14d, %r14d
	movl	%edi, %r11d
.LBB0_71:                               # %for.inc81.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	movb	%r15b, %r8b
	addl	%r8d, %edx
	cmpl	%ebp, %edx
	jae	.LBB0_95
.LBB0_56:                               # %for.body9.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	856712(%rbx), %r12
	movl	848996(%rbx), %r9d
	imull	%esi, %r9d
	addl	%edi, %r9d
	xorl	%r8d, %r8d
	cmpl	$2, (%r12,%r9,4)
	sete	%r15b
	jne	.LBB0_58
# %bb.57:                               # %if.then.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	xorl	%ecx, %ecx
	cmpl	36(%rsp), %edx                  # 4-byte Folded Reload
	setae	%cl
	movl	%ecx, (%r12,%r9,4)
.LBB0_58:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$-1, %r14d
	jne	.LBB0_61
# %bb.59:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	%r11d, %edi
	je	.LBB0_60
.LBB0_61:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$1, %r14d
	jne	.LBB0_64
# %bb.62:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	%r10d, %edi
	jne	.LBB0_64
# %bb.63:                               # %if.then40.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	%edi
	movl	848996(%rbx), %r10d
	decl	%r10d
	cmpl	%r10d, %edi
	cmovll	%edi, %r10d
	movl	2148(%rax), %ecx
	addl	%ecx, %ecx
	movl	$1, %r13d
	subl	%ecx, %r13d
	xorl	%r14d, %r14d
	movl	%r10d, %edi
	jmp	.LBB0_71
	.p2align	4, 0x90
.LBB0_64:                               # %if.else48.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$-1, %r13d
	jne	.LBB0_67
# %bb.65:                               # %if.else48.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	12(%rsp), %esi                  # 4-byte Folded Reload
	jne	.LBB0_67
# %bb.66:                               # %if.then54.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$2, %esi
	movl	$1, %ecx
	cmovll	%ecx, %esi
	decl	%esi
	movl	2148(%rax), %ecx
	addl	%ecx, %ecx
	movl	$1, %r14d
	subl	%ecx, %r14d
	xorl	%r13d, %r13d
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	jmp	.LBB0_71
.LBB0_67:                               # %if.else60.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	$1, %r13d
	jne	.LBB0_70
# %bb.68:                               # %if.else60.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	cmpl	8(%rsp), %esi                   # 4-byte Folded Reload
	jne	.LBB0_70
# %bb.69:                               # %if.then66.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	incl	%esi
	movl	849000(%rbx), %r9d
	decl	%r9d
	cmpl	%r9d, %esi
	cmovll	%esi, %r9d
	movl	2148(%rax), %ecx
	leal	-1(,%rcx,2), %r14d
	xorl	%r13d, %r13d
	movl	%r9d, 8(%rsp)                   # 4-byte Spill
	movl	%r9d, %esi
	jmp	.LBB0_71
.LBB0_70:                               # %if.else74.i.i
                                        #   in Loop: Header=BB0_56 Depth=1
	addl	%r14d, %edi
	addl	%r13d, %esi
	jmp	.LBB0_71
.LBB0_91:                               # %for.body.lr.ph.i141.i.new
	andl	$-4, %r15d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_92:                               # %for.body.i145.i
                                        # =>This Inner Loop Header: Depth=1
	movq	2160(%rax), %rsi
	movzbl	(%rsi,%rdx), %esi
	movq	856712(%rbx), %rdi
	movl	%esi, (%rdi,%rdx,4)
	movq	2160(%rax), %rsi
	movzbl	1(%rsi,%rdx), %esi
	movq	856712(%rbx), %rdi
	movl	%esi, 4(%rdi,%rdx,4)
	movq	2160(%rax), %rsi
	movzbl	2(%rsi,%rdx), %esi
	movq	856712(%rbx), %rdi
	movl	%esi, 8(%rdi,%rdx,4)
	movq	2160(%rax), %rsi
	movzbl	3(%rsi,%rdx), %esi
	movq	856712(%rbx), %rdi
	movl	%esi, 12(%rdi,%rdx,4)
	addq	$4, %rdx
	cmpq	%rdx, %r15
	jne	.LBB0_92
.LBB0_93:                               # %FmoGenerateMapUnitToSliceGroupMap.exit.loopexit96.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB0_95
	.p2align	4, 0x90
.LBB0_94:                               # %for.body.i145.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	2160(%rax), %rsi
	movzbl	(%rsi,%rdx), %esi
	movq	856712(%rbx), %rdi
	movl	%esi, (%rdi,%rdx,4)
	incq	%rdx
	decq	%rcx
	jne	.LBB0_94
	jmp	.LBB0_95
.LBB0_6:                                # %if.then13.i
	movl	2156(%r14), %eax
	leal	4(,%rax,4), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB0_98:                               # %if.then4.i15
	shll	$2, %r15d
	movl	$.L.str.3, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB0_99:                               # %sw.default.i
	movl	$.L.str.2, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	fmo_init, .Lfunc_end0-fmo_init
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_11
	.quad	.LBB0_22
	.quad	.LBB0_25
	.quad	.LBB0_48
	.quad	.LBB0_72
	.quad	.LBB0_79
	.quad	.LBB0_88
                                        # -- End function
	.text
	.globl	FmoFinit                        # -- Begin function FmoFinit
	.p2align	4, 0x90
	.type	FmoFinit,@function
FmoFinit:                               # @FmoFinit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	856704(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:                                # %if.then
	callq	free@PLT
	movq	$0, 856704(%rbx)
.LBB1_2:                                # %if.end
	movq	856712(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:                                # %if.then4
	callq	free@PLT
	movq	$0, 856712(%rbx)
.LBB1_4:                                # %if.end7
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	FmoFinit, .Lfunc_end1-FmoFinit
	.cfi_endproc
                                        # -- End function
	.globl	FmoGetNumberOfSliceGroup        # -- Begin function FmoGetNumberOfSliceGroup
	.p2align	4, 0x90
	.type	FmoGetNumberOfSliceGroup,@function
FmoGetNumberOfSliceGroup:               # @FmoGetNumberOfSliceGroup
	.cfi_startproc
# %bb.0:                                # %entry
	movl	856720(%rdi), %eax
	retq
.Lfunc_end2:
	.size	FmoGetNumberOfSliceGroup, .Lfunc_end2-FmoGetNumberOfSliceGroup
	.cfi_endproc
                                        # -- End function
	.globl	FmoGetLastMBOfPicture           # -- Begin function FmoGetLastMBOfPicture
	.p2align	4, 0x90
	.type	FmoGetLastMBOfPicture,@function
FmoGetLastMBOfPicture:                  # @FmoGetLastMBOfPicture
	.cfi_startproc
# %bb.0:                                # %entry
	movl	856720(%rdi), %ecx
	decl	%ecx
	movl	849012(%rdi), %eax
	movq	%rax, %rdx
	decq	%rdx
	.p2align	4, 0x90
.LBB3_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	decl	%eax
	js	.LBB3_2
# %bb.3:                                # %for.body.i
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	856704(%rdi), %rsi
	movl	%edx, %r8d
	andl	$2147483647, %r8d               # imm = 0x7FFFFFFF
	decq	%rdx
	cmpl	%ecx, (%rsi,%r8,4)
	jne	.LBB3_1
# %bb.4:                                # %FmoGetLastMBInSliceGroup.exit
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB3_2:
	movl	$-1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end3:
	.size	FmoGetLastMBOfPicture, .Lfunc_end3-FmoGetLastMBOfPicture
	.cfi_endproc
                                        # -- End function
	.globl	FmoGetLastMBInSliceGroup        # -- Begin function FmoGetLastMBInSliceGroup
	.p2align	4, 0x90
	.type	FmoGetLastMBInSliceGroup,@function
FmoGetLastMBInSliceGroup:               # @FmoGetLastMBInSliceGroup
	.cfi_startproc
# %bb.0:                                # %entry
	movl	849012(%rdi), %eax
	movq	%rax, %rcx
	decq	%rcx
	.p2align	4, 0x90
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	decl	%eax
	js	.LBB4_2
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	856704(%rdi), %rdx
	movl	%ecx, %r8d
	andl	$2147483647, %r8d               # imm = 0x7FFFFFFF
	decq	%rcx
	cmpl	%esi, (%rdx,%r8,4)
	jne	.LBB4_1
# %bb.4:                                # %cleanup
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB4_2:
	movl	$-1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end4:
	.size	FmoGetLastMBInSliceGroup, .Lfunc_end4-FmoGetLastMBInSliceGroup
	.cfi_endproc
                                        # -- End function
	.globl	FmoGetSliceGroupId              # -- Begin function FmoGetSliceGroupId
	.p2align	4, 0x90
	.type	FmoGetSliceGroupId,@function
FmoGetSliceGroupId:                     # @FmoGetSliceGroupId
	.cfi_startproc
# %bb.0:                                # %entry
	movq	856704(%rdi), %rax
	movslq	%esi, %rcx
	movl	(%rax,%rcx,4), %eax
	retq
.Lfunc_end5:
	.size	FmoGetSliceGroupId, .Lfunc_end5-FmoGetSliceGroupId
	.cfi_endproc
                                        # -- End function
	.globl	FmoGetNextMBNr                  # -- Begin function FmoGetNextMBNr
	.p2align	4, 0x90
	.type	FmoGetNextMBNr,@function
FmoGetNextMBNr:                         # @FmoGetNextMBNr
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	856704(%rdi), %rcx
	movslq	%esi, %rsi
	movl	(%rcx,%rsi,4), %edx
	movslq	849012(%rdi), %rdi
	incq	%rsi
	.p2align	4, 0x90
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rdi, %rsi
	jge	.LBB6_2
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	incl	%eax
	leaq	1(%rsi), %r8
	cmpl	%edx, (%rcx,%rsi,4)
	movq	%r8, %rsi
	jne	.LBB6_1
# %bb.4:                                # %while.end
	retq
.LBB6_2:
	movl	$-1, %eax
	retq
.Lfunc_end6:
	.size	FmoGetNextMBNr, .Lfunc_end6-FmoGetNextMBNr
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6"
	.size	.L.str, 68

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cannot allocated %d bytes for p_Vid->MapUnitToSliceGroupMap, exit\n"
	.size	.L.str.1, 67

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Illegal slice_group_map_type %d , exit \n"
	.size	.L.str.2, 41

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cannot allocate %d bytes for p_Vid->MbToSliceGroupMap, exit\n"
	.size	.L.str.3, 61

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
