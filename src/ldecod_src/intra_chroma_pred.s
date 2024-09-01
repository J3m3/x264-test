	.text
	.file	"intra_chroma_pred.c"
	.globl	intrapred_chroma_ver_mbaff      # -- Begin function intrapred_chroma_ver_mbaff
	.p2align	4, 0x90
	.type	intrapred_chroma_ver_mbaff,@function
intrapred_chroma_ver_mbaff:             # @intrapred_chroma_ver_mbaff
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
	movq	(%rdi), %r15
	movq	8(%rdi), %r12
	movq	13520(%r15), %r14
	movslq	849108(%r12), %rbx
	movl	849112(%r12), %r13d
	leaq	849132(%r12), %rcx
	leaq	8(%rsp), %r8
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	getAffNeighbour@PLT
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	movl	8(%rsp), %eax
	je	.LBB0_3
# %bb.1:                                # %if.else
	testl	%eax, %eax
	je	.LBB0_4
# %bb.2:                                # %cond.true
	movq	13544(%r15), %rax
	movslq	12(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB0_3:                                # %if.end
	testl	%eax, %eax
	je	.LBB0_4
# %bb.5:                                # %if.else8
	testl	%r13d, %r13d
	jle	.LBB0_12
# %bb.6:                                # %for.body.lr.ph
	movq	1248(%r15), %rax
	movq	8(%rax), %rbp
	movq	%r13, %rsi
	movq	16(%rax), %r13
	movq	136(%r14), %rax
	movswq	22(%rsp), %rcx
	movswq	20(%rsp), %r14
	addq	%r14, %r14
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	(%rdx,%rcx,8), %r15
	addq	%r14, %r15
	addq	(%rax,%rcx,8), %r14
	addq	%rbx, %rbx
	cmpl	$1, %esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	jne	.LBB0_8
# %bb.7:
	xorl	%r12d, %r12d
	jmp	.LBB0_10
.LBB0_4:                                # %if.then7
	movl	$.L.str, %edi
	movl	$-1, %esi
	callq	error@PLT
	jmp	.LBB0_12
.LBB0_8:                                # %for.body.lr.ph.new
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	8(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	8(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	cmpq	%r12, 32(%rsp)                  # 8-byte Folded Reload
	jne	.LBB0_9
.LBB0_10:                               # %if.end35.loopexit.unr-lcssa
	testb	$1, 24(%rsp)                    # 1-byte Folded Reload
	je	.LBB0_12
# %bb.11:                               # %for.body.epil
	movq	(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB0_12:                               # %if.end35
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
.Lfunc_end0:
	.size	intrapred_chroma_ver_mbaff, .Lfunc_end0-intrapred_chroma_ver_mbaff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_chroma
.LCPI1_0:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI1_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI1_2:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI1_3:
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
.LCPI1_4:
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
.LCPI1_5:
	.quad	16                              # 0x10
	.quad	16                              # 0x10
.LCPI1_6:
	.zero	16,255
	.text
	.globl	intrapred_chroma
	.p2align	4, 0x90
	.type	intrapred_chroma,@function
intrapred_chroma:                       # @intrapred_chroma
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	373(%rdi), %eax
	cmpq	$3, %rax
	ja	.LBB1_205
# %bb.1:                                # %entry
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_2:                                # %sw.bb
	movq	(%rdi), %rdx
	movq	8(%rdi), %r15
	movq	13520(%rdx), %rax
	movslq	268(%rax), %r12
	movq	136(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	1248(%rdx), %rax
	movq	8(%rax), %r13
	movq	16(%rax), %rbp
	leaq	849132(%r15), %rbx
	leaq	136(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	48(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	72(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%r15), %rax
	cmpl	$0, 2204(%rax)
	movl	72(%rsp), %eax
	je	.LBB1_3
# %bb.4:                                # %if.else.i
	testl	%eax, %eax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	$0, %esi
	je	.LBB1_6
# %bb.5:                                # %cond.true.i
	movq	13544(%rdx), %rax
	movslq	76(%rsp), %rcx
	movsbl	(%rax,%rcx), %esi
.LBB1_6:                                # %cond.end.i
	cmpl	$0, 48(%rsp)
	je	.LBB1_7
# %bb.8:                                # %cond.true22.i
	movq	13544(%rdx), %rax
	movslq	52(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	jmp	.LBB1_9
.LBB1_113:                              # %sw.bb2
	movq	(%rdi), %r15
	movq	8(%rdi), %r12
	movq	13520(%r15), %r14
	movslq	849108(%r12), %rbx
	movl	849112(%r12), %r13d
	leaq	849132(%r12), %rcx
	leaq	72(%rsp), %r8
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	getNonAffNeighbour@PLT
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	movl	72(%rsp), %eax
	je	.LBB1_116
# %bb.114:                              # %if.else.i35
	testl	%eax, %eax
	je	.LBB1_117
# %bb.115:                              # %cond.true.i36
	movq	13544(%r15), %rax
	movslq	76(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB1_116:                              # %if.end.i42
	testl	%eax, %eax
	je	.LBB1_117
# %bb.118:                              # %if.else8.i
	testl	%r13d, %r13d
	jle	.LBB1_97
# %bb.119:                              # %for.body.lr.ph.i48
	movq	1248(%r15), %rax
	movq	8(%rax), %rbp
	movq	%r13, %rsi
	movq	16(%rax), %r13
	movq	136(%r14), %rax
	movswq	86(%rsp), %rcx
	movswq	84(%rsp), %r14
	addq	%r14, %r14
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	(%rdx,%rcx,8), %r15
	addq	%r14, %r15
	addq	(%rax,%rcx,8), %r14
	addq	%rbx, %rbx
	cmpl	$1, %esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	jne	.LBB1_121
# %bb.120:
	xorl	%r12d, %r12d
	jmp	.LBB1_123
.LBB1_125:                              # %sw.bb3
	movq	(%rdi), %r12
	movq	8(%rdi), %r15
	movq	13520(%r12), %r13
	leaq	849132(%r15), %rbx
	leaq	136(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	xorl	%ebp, %ebp
	leaq	48(%rsp), %r8
	movq	%r14, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	leaq	72(%rsp), %r8
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%rbx, %rcx
	callq	getNonAffNeighbour@PLT
	movq	8(%r15), %rax
	cmpl	$0, 2204(%rax)
	movl	72(%rsp), %ecx
	je	.LBB1_126
# %bb.127:                              # %if.else.i62
	testl	%ecx, %ecx
	je	.LBB1_129
# %bb.128:                              # %cond.true.i63
	movq	13544(%r12), %rax
	movslq	76(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB1_129:                              # %cond.end.i68
	cmpl	$0, 48(%rsp)
	je	.LBB1_130
# %bb.131:                              # %cond.true16.i
	movq	13544(%r12), %rax
	movslq	52(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, 136(%rsp)
	jne	.LBB1_133
	jmp	.LBB1_137
.LBB1_98:                               # %sw.bb1
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %rcx
	leaq	72(%rsp), %r8
	movq	%rdi, %r14
	movl	$-1, %esi
	xorl	%edx, %edx
	callq	getNonAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	72(%rsp), %eax
	je	.LBB1_99
# %bb.100:                              # %if.else.i12
	testl	%eax, %eax
	je	.LBB1_103
# %bb.101:                              # %cond.true.i13
	movq	%r14, %rdx
	movq	(%r14), %rax
	movq	13544(%rax), %rax
	movslq	76(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	testl	%eax, %eax
	je	.LBB1_103
.LBB1_105:                              # %if.else7.i
	movslq	849112(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB1_97
# %bb.106:                              # %for.body.lr.ph.i
	movl	849108(%rbx), %ecx
	testl	%ecx, %ecx
	jle	.LBB1_97
# %bb.107:                              # %for.body.us.preheader.i
	movq	(%rdx), %rdx
	movq	13520(%rdx), %rdi
	movq	1248(%rdx), %rsi
	movq	8(%rsi), %rdx
	movq	16(%rsi), %rsi
	movq	136(%rdi), %r8
	movq	(%r8), %rdi
	movq	8(%r8), %r8
	movswq	84(%rsp), %r9
	movswq	86(%rsp), %r10
	movl	%ecx, %r11d
	andl	$2147483646, %r11d              # imm = 0x7FFFFFFE
	xorl	%ebx, %ebx
	jmp	.LBB1_108
	.p2align	4, 0x90
.LBB1_112:                              # %for.cond31.for.inc46_crit_edge.us.i
                                        #   in Loop: Header=BB1_108 Depth=1
	incq	%r10
	incq	%rbx
	cmpq	%rax, %rbx
	je	.LBB1_97
.LBB1_108:                              # %for.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_109 Depth 2
	movq	(%rdi,%r10,8), %r14
	movzwl	(%r14,%r9,2), %ebp
	movq	(%r8,%r10,8), %r14
	movzwl	(%r14,%r9,2), %r14d
	xorl	%r15d, %r15d
	cmpl	$1, %ecx
	je	.LBB1_110
	.p2align	4, 0x90
.LBB1_109:                              # %for.body34.us.i
                                        #   Parent Loop BB1_108 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx,%rbx,8), %r12
	movw	%bp, (%r12,%r15,2)
	movq	(%rsi,%rbx,8), %r12
	movw	%r14w, (%r12,%r15,2)
	movq	(%rdx,%rbx,8), %r12
	movw	%bp, 2(%r12,%r15,2)
	movq	(%rsi,%rbx,8), %r12
	movw	%r14w, 2(%r12,%r15,2)
	addq	$2, %r15
	cmpq	%r15, %r11
	jne	.LBB1_109
.LBB1_110:                              # %for.cond31.for.inc46_crit_edge.us.i.unr-lcssa
                                        #   in Loop: Header=BB1_108 Depth=1
	testb	$1, %cl
	je	.LBB1_112
# %bb.111:                              # %for.body34.us.i.epil
                                        #   in Loop: Header=BB1_108 Depth=1
	movq	(%rdx,%rbx,8), %r12
	movw	%bp, (%r12,%r15,2)
	movq	(%rsi,%rbx,8), %r12
	movw	%r14w, (%r12,%r15,2)
	jmp	.LBB1_112
.LBB1_205:                              # %sw.default
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.1, %edi
	movl	$600, %esi                      # imm = 0x258
	jmp	error@PLT                       # TAILCALL
.LBB1_117:                              # %if.then7.i
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$.L.str, %edi
	jmp	.LBB1_104
.LBB1_126:                              # %if.then.i92
	movl	48(%rsp), %eax
	movl	136(%rsp), %edx
	jmp	.LBB1_134
.LBB1_3:                                # %if.then.i
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movl	48(%rsp), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	cmpl	$0, 849100(%r15)
	jg	.LBB1_11
	jmp	.LBB1_97
.LBB1_99:
	movq	%r14, %rdx
	testl	%eax, %eax
	jne	.LBB1_105
.LBB1_103:                              # %if.then6.i
	movl	$.L.str.2, %edi
	jmp	.LBB1_104
.LBB1_130:
	xorl	%eax, %eax
	cmpl	$0, 136(%rsp)
	je	.LBB1_137
.LBB1_133:                              # %cond.true27.i
	movq	13544(%r12), %rcx
	movslq	140(%rsp), %rdx
	movsbl	(%rcx,%rdx), %edx
	movl	%ebp, %ecx
.LBB1_134:                              # %if.end.i71
	testl	%edx, %edx
	je	.LBB1_137
# %bb.135:                              # %if.end.i71
	testl	%eax, %eax
	je	.LBB1_137
# %bb.136:                              # %if.end.i71
	testl	%ecx, %ecx
	je	.LBB1_137
# %bb.138:                              # %if.else41.i
	movq	%r12, 120(%rsp)                 # 8-byte Spill
	movslq	849108(%r15), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%r15, 128(%rsp)                 # 8-byte Spill
	movl	849112(%r15), %ecx
	movl	%ecx, %r12d
	sarl	%r12d
	movl	%edx, %ebp
	sarl	%ebp
	xorl	%r11d, %r11d
	cmpq	$8, %rdx
	movl	$17, %eax
	movl	$5, %esi
	movl	$5, %edi
	cmovel	%eax, %edi
	movl	%edi, 88(%rsp)                  # 4-byte Spill
	setne	%r11b
	xorl	%ebx, %ebx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	cmpq	$8, %rcx
	cmovel	%eax, %esi
	movl	%esi, 64(%rsp)                  # 4-byte Spill
	setne	%bl
	movq	136(%r13), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	(%rax), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movswq	86(%rsp), %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movq	(%rcx,%rax,8), %r10
	movswq	148(%rsp), %r14
	movswq	150(%rsp), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	(%rcx,%rax,8), %rcx
	movzwl	(%rcx,%r14,2), %ecx
	movswq	84(%rsp), %r8
	leaq	(%r10,%r8,2), %r15
	movzwl	-2(%r15,%rdx,2), %eax
	movl	%eax, 180(%rsp)                 # 4-byte Spill
	movl	%eax, %edx
	subl	%ecx, %edx
	imull	%ebp, %edx
	leal	-1(%rbp), %edi
	movl	%edi, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	leal	-1(%r12), %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	leal	-2(%r12), %esi
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	movswl	62(%rsp), %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addl	%r12d, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movslq	%ebp, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	cmpl	$1, %ebp
	movq	%r13, 232(%rsp)                 # 8-byte Spill
	movq	%r8, 216(%rsp)                  # 8-byte Spill
	jle	.LBB1_180
# %bb.139:                              # %for.body80.preheader.i
	cmpl	$17, %ebp
	jae	.LBB1_175
# %bb.140:
	xorl	%r13d, %r13d
	movq	112(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB1_178
.LBB1_137:                              # %if.then40.i
	movl	$.L.str.3, %edi
.LBB1_104:                              # %sw.epilog
	movl	$-1, %esi
	callq	error@PLT
.LBB1_97:                               # %sw.epilog
	addq	$248, %rsp
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
.LBB1_7:
	.cfi_def_cfa_offset 304
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
.LBB1_9:                                # %if.end.i
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	cmpl	$0, 849100(%r15)
	jle	.LBB1_97
.LBB1_11:                               # %for.cond43.preheader.lr.ph.i
	decq	%r12
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	sete	%al
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	setne	%cl
	andb	%al, %cl
	movb	%cl, 88(%rsp)                   # 1-byte Spill
	movq	%r12, %rax
	shlq	$6, %rax
	leaq	intrapred_chroma_dc.block_pos+12(%rax), %rsi
	shlq	$5, %r12
	xorl	%edi, %edi
	pxor	%xmm0, %xmm0
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_91:                               # %sw.bb71.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_89
.LBB1_92:                               # %if.then.i381.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rcx,8), %rdx
	shrq	$16, %rax
	sarl	$16, %eax
	movslq	%eax, %r11
	addq	%r9, %r11
	movq	(%rdx,%r11,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r10d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movzwl	(%rcx,%r11,2), %eax
	movzwl	2(%rcx,%r11,2), %edx
	addl	%eax, %edx
	leaq	(%rcx,%r11,2), %rax
	addq	$6, %rax
	movzwl	4(%rcx,%r11,2), %ecx
	addl	%edx, %ecx
.LBB1_93:                               # %if.end34.sink.split.i374.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
.LBB1_96:                               # %sw.epilog.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	shll	$3, %r8d
	movq	(%r13,%r8), %rax
	addl	%r9d, %r9d
	movw	%r10w, (%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	incq	%rdi
	movslq	849100(%r15), %rax
	addq	$16, %rsi
	cmpq	%rax, %rdi
	jge	.LBB1_97
.LBB1_12:                               # %for.cond43.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	subblk_offset_y(%r12,%rdi,4), %r8d
	movzbl	subblk_offset_x(%r12,%rdi,4), %r9d
	movl	849064(%r15), %r10d
	movl	849068(%r15), %r11d
	movl	-12(%rsi), %eax
	cmpq	$3, %rax
	ja	.LBB1_33
# %bb.13:                               # %for.cond43.preheader.i
                                        #   in Loop: Header=BB1_12 Depth=1
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_14:                               # %sw.bb.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %r14
	movq	80(%rsp), %rcx
	movswq	60(%rsp), %rbx
	movswl	62(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_17
# %bb.15:                               # %if.then.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, %r11
	sarq	$48, %r11
	movq	%rcx, %rax
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	addq	%r9, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%r11,8), %rdx
	movq	(%rdx,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB1_18
# %bb.16:                               # %if.then34.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %edx
	shrl	$2, %edx
	movl	%edx, %r10d
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_25:                               # %sw.bb71.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_26
.LBB1_30:                               # %if.then.i381.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rcx,8), %rdx
	shrq	$16, %rax
	sarl	$16, %eax
	movslq	%eax, %r11
	addq	%r9, %r11
	movq	(%rdx,%r11,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r10d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movzwl	(%rcx,%r11,2), %eax
	movzwl	2(%rcx,%r11,2), %edx
	addl	%eax, %edx
	leaq	(%rcx,%r11,2), %rax
	addq	$6, %rax
	movzwl	4(%rcx,%r11,2), %ecx
	addl	%edx, %ecx
	jmp	.LBB1_28
	.p2align	4, 0x90
.LBB1_29:                               # %sw.bb74.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpb	$0, 88(%rsp)                    # 1-byte Folded Reload
	jne	.LBB1_30
.LBB1_26:                               # %if.else.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_33
# %bb.27:                               # %if.then12.i269.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %rax
	movswq	60(%rsp), %rcx
	movswq	62(%rsp), %rdx
	addq	%rax, %rdx
	leaq	(%rcx,%rcx), %rax
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r10
	movq	(%r14,%rdx,8), %r11
	movzwl	(%r10,%rcx,2), %r10d
	movzwl	(%r11,%rcx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %ebx
	movq	16(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	addl	%ebx, %r10d
	addl	%r11d, %r10d
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r11
	movq	(%r14,%rdx,8), %rbx
	movzwl	(%r11,%rcx,2), %r11d
	movzwl	(%rbx,%rcx,2), %ebx
	addl	%r11d, %ebx
	movq	8(%r14,%rdx,8), %r11
	movzwl	(%r11,%rcx,2), %ecx
	addl	%ebx, %ecx
	addq	16(%r14,%rdx,8), %rax
.LBB1_28:                               # %if.end34.sink.split.i285.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	jmp	.LBB1_33
.LBB1_17:                               # %if.end.thread.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_33
.LBB1_18:                               # %if.then7.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	addq	%r14, %rax
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	-8(%r15,%rax,8), %r10
	movq	(%r15,%rax,8), %r11
	movzwl	(%r10,%rbx,2), %r10d
	movzwl	(%r11,%rbx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r12d
	movq	16(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r10d
	addl	%r12d, %r10d
	addl	%r11d, %r10d
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_22
# %bb.19:                               # %if.then30.i.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%edx, %r10d
	addl	$4, %r10d
	shrl	$3, %r10d
	movq	%rcx, %r11
	sarq	$48, %r11
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rax
	addq	%r9, %rax
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_20:                               # %if.then.i196.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movzwl	2(%rcx,%rax,2), %r12d
	addl	%edx, %r12d
	movzwl	4(%rcx,%rax,2), %edx
	movzwl	6(%rcx,%rax,2), %r11d
	addl	%edx, %r11d
	addl	%r12d, %r11d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_31
# %bb.21:                               # %if.then.i196.if.then7.i216_crit_edge.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	4(%rsp), %r14d                  # 4-byte Folded Reload
	movslq	%r14d, %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_23
.LBB1_31:                               # %if.then34.i244.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_33
.LBB1_22:                               # %if.end.thread.i247.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	xorl	%r11d, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_23:                               # %if.then7.i216.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rax,8), %rcx
	movq	(%r14,%rax,8), %rdx
	movzwl	(%rcx,%rbx,2), %ecx
	movzwl	(%rdx,%rbx,2), %edx
	addl	%ecx, %edx
	movq	8(%r14,%rax,8), %rcx
	movzwl	(%rcx,%rbx,2), %ecx
	movq	16(%r14,%rax,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_32
# %bb.24:                               # %if.then30.i235.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%eax, %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	jmp	.LBB1_33
.LBB1_32:                               # %if.then39.i500.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r11d
	.p2align	4, 0x90
.LBB1_33:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_12 Depth=1
	shll	$3, %r8d
	movq	(%r13,%r8), %rax
	addl	%r9d, %r9d
	movw	%r10w, (%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movzbl	subblk_offset_y+1(%r12,%rdi,4), %r8d
	movzbl	subblk_offset_x+1(%r12,%rdi,4), %r9d
	movl	849064(%r15), %r10d
	movl	849068(%r15), %r11d
	movl	-8(%rsi), %eax
	cmpq	$3, %rax
	ja	.LBB1_54
# %bb.34:                               # %sw.epilog.i
                                        #   in Loop: Header=BB1_12 Depth=1
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_35:                               # %sw.bb77.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %r14
	movq	80(%rsp), %rcx
	movswq	60(%rsp), %rbx
	movswl	62(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_38
# %bb.36:                               # %if.then.i400.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, %r11
	sarq	$48, %r11
	movq	%rcx, %rax
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	addq	%r9, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%r11,8), %rdx
	movq	(%rdx,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB1_39
# %bb.37:                               # %if.then34.i448.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %edx
	shrl	$2, %edx
	movl	%edx, %r10d
	jmp	.LBB1_41
	.p2align	4, 0x90
.LBB1_49:                               # %sw.bb71.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_47
.LBB1_50:                               # %if.then.i381.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rcx,8), %rdx
	shrq	$16, %rax
	sarl	$16, %eax
	movslq	%eax, %r11
	addq	%r9, %r11
	movq	(%rdx,%r11,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r10d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movzwl	(%rcx,%r11,2), %eax
	movzwl	2(%rcx,%r11,2), %edx
	addl	%eax, %edx
	leaq	(%rcx,%r11,2), %rax
	addq	$6, %rax
	movzwl	4(%rcx,%r11,2), %ecx
	addl	%edx, %ecx
	jmp	.LBB1_51
	.p2align	4, 0x90
.LBB1_46:                               # %sw.bb74.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpb	$0, 88(%rsp)                    # 1-byte Folded Reload
	jne	.LBB1_50
.LBB1_47:                               # %if.else.i312.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_54
# %bb.48:                               # %if.then12.i358.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %rax
	movswq	60(%rsp), %rcx
	movswq	62(%rsp), %rdx
	addq	%rax, %rdx
	leaq	(%rcx,%rcx), %rax
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r10
	movq	(%r14,%rdx,8), %r11
	movzwl	(%r10,%rcx,2), %r10d
	movzwl	(%r11,%rcx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %ebx
	movq	16(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	addl	%ebx, %r10d
	addl	%r11d, %r10d
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r11
	movq	(%r14,%rdx,8), %rbx
	movzwl	(%r11,%rcx,2), %r11d
	movzwl	(%rbx,%rcx,2), %ebx
	addl	%r11d, %ebx
	movq	8(%r14,%rdx,8), %r11
	movzwl	(%r11,%rcx,2), %ecx
	addl	%ebx, %ecx
	addq	16(%r14,%rdx,8), %rax
.LBB1_51:                               # %if.end34.sink.split.i374.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	jmp	.LBB1_54
.LBB1_38:                               # %if.end.thread.i451.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_54
.LBB1_39:                               # %if.then7.i420.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	addq	%r14, %rax
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	-8(%r15,%rax,8), %r10
	movq	(%r15,%rax,8), %r11
	movzwl	(%r10,%rbx,2), %r10d
	movzwl	(%r11,%rbx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r12d
	movq	16(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r10d
	addl	%r12d, %r10d
	addl	%r11d, %r10d
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_43
# %bb.40:                               # %if.then30.i439.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%edx, %r10d
	addl	$4, %r10d
	shrl	$3, %r10d
	movq	%rcx, %r11
	sarq	$48, %r11
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rax
	addq	%r9, %rax
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_41:                               # %if.then.i455.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movzwl	2(%rcx,%rax,2), %r12d
	addl	%edx, %r12d
	movzwl	4(%rcx,%rax,2), %edx
	movzwl	6(%rcx,%rax,2), %r11d
	addl	%edx, %r11d
	addl	%r12d, %r11d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_52
# %bb.42:                               # %if.then.i455.1.if.then7.i475.1_crit_edge.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	4(%rsp), %r14d                  # 4-byte Folded Reload
	movslq	%r14d, %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_44
.LBB1_52:                               # %if.then34.i503.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_54
.LBB1_43:                               # %if.end.thread.i506.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	xorl	%r11d, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_44:                               # %if.then7.i475.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rax,8), %rcx
	movq	(%r14,%rax,8), %rdx
	movzwl	(%rcx,%rbx,2), %ecx
	movzwl	(%rdx,%rbx,2), %edx
	addl	%ecx, %edx
	movq	8(%r14,%rax,8), %rcx
	movzwl	(%rcx,%rbx,2), %ecx
	movq	16(%r14,%rax,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_53
# %bb.45:                               # %if.then30.i494.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%eax, %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	jmp	.LBB1_54
.LBB1_53:                               # %if.then39.i241.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r11d
	.p2align	4, 0x90
.LBB1_54:                               # %sw.epilog.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	shll	$3, %r8d
	movq	(%r13,%r8), %rax
	addl	%r9d, %r9d
	movw	%r10w, (%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movzbl	subblk_offset_y+2(%r12,%rdi,4), %r8d
	movzbl	subblk_offset_x+2(%r12,%rdi,4), %r9d
	movl	849064(%r15), %r10d
	movl	849068(%r15), %r11d
	movl	-4(%rsi), %eax
	cmpq	$3, %rax
	ja	.LBB1_75
# %bb.55:                               # %sw.epilog.1.i
                                        #   in Loop: Header=BB1_12 Depth=1
	jmpq	*.LJTI1_3(,%rax,8)
.LBB1_56:                               # %sw.bb77.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %r14
	movq	80(%rsp), %rcx
	movswq	60(%rsp), %rbx
	movswl	62(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_59
# %bb.57:                               # %if.then.i400.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, %r11
	sarq	$48, %r11
	movq	%rcx, %rax
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	addq	%r9, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%r11,8), %rdx
	movq	(%rdx,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB1_60
# %bb.58:                               # %if.then34.i448.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %edx
	shrl	$2, %edx
	movl	%edx, %r10d
	jmp	.LBB1_62
	.p2align	4, 0x90
.LBB1_70:                               # %sw.bb71.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_68
.LBB1_71:                               # %if.then.i381.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rcx,8), %rdx
	shrq	$16, %rax
	sarl	$16, %eax
	movslq	%eax, %r11
	addq	%r9, %r11
	movq	(%rdx,%r11,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r10d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rcx
	movzwl	(%rcx,%r11,2), %eax
	movzwl	2(%rcx,%r11,2), %edx
	addl	%eax, %edx
	leaq	(%rcx,%r11,2), %rax
	addq	$6, %rax
	movzwl	4(%rcx,%r11,2), %ecx
	addl	%edx, %ecx
	jmp	.LBB1_72
	.p2align	4, 0x90
.LBB1_67:                               # %sw.bb74.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpb	$0, 88(%rsp)                    # 1-byte Folded Reload
	jne	.LBB1_71
.LBB1_68:                               # %if.else.i312.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_75
# %bb.69:                               # %if.then12.i358.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %rax
	movswq	60(%rsp), %rcx
	movswq	62(%rsp), %rdx
	addq	%rax, %rdx
	leaq	(%rcx,%rcx), %rax
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r10
	movq	(%r14,%rdx,8), %r11
	movzwl	(%r10,%rcx,2), %r10d
	movzwl	(%r11,%rcx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %ebx
	movq	16(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	addl	%ebx, %r10d
	addl	%r11d, %r10d
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r11
	movq	(%r14,%rdx,8), %rbx
	movzwl	(%r11,%rcx,2), %r11d
	movzwl	(%rbx,%rcx,2), %ebx
	addl	%r11d, %ebx
	movq	8(%r14,%rdx,8), %r11
	movzwl	(%r11,%rcx,2), %ecx
	addl	%ebx, %ecx
	addq	16(%r14,%rdx,8), %rax
.LBB1_72:                               # %if.end34.sink.split.i374.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	jmp	.LBB1_75
.LBB1_59:                               # %if.end.thread.i451.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_75
.LBB1_60:                               # %if.then7.i420.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	addq	%r14, %rax
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	-8(%r15,%rax,8), %r10
	movq	(%r15,%rax,8), %r11
	movzwl	(%r10,%rbx,2), %r10d
	movzwl	(%r11,%rbx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r12d
	movq	16(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r10d
	addl	%r12d, %r10d
	addl	%r11d, %r10d
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_64
# %bb.61:                               # %if.then30.i439.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%edx, %r10d
	addl	$4, %r10d
	shrl	$3, %r10d
	movq	%rcx, %r11
	sarq	$48, %r11
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rax
	addq	%r9, %rax
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_62:                               # %if.then.i455.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movzwl	2(%rcx,%rax,2), %r12d
	addl	%edx, %r12d
	movzwl	4(%rcx,%rax,2), %edx
	movzwl	6(%rcx,%rax,2), %r11d
	addl	%edx, %r11d
	addl	%r12d, %r11d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_73
# %bb.63:                               # %if.then.i455.2.if.then7.i475.2_crit_edge.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	4(%rsp), %r14d                  # 4-byte Folded Reload
	movslq	%r14d, %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_65
.LBB1_73:                               # %if.then34.i503.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_75
.LBB1_64:                               # %if.end.thread.i506.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	xorl	%r11d, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_65:                               # %if.then7.i475.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rax,8), %rcx
	movq	(%r14,%rax,8), %rdx
	movzwl	(%rcx,%rbx,2), %ecx
	movzwl	(%rdx,%rbx,2), %edx
	addl	%ecx, %edx
	movq	8(%r14,%rax,8), %rcx
	movzwl	(%rcx,%rbx,2), %ecx
	movq	16(%r14,%rax,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_74
# %bb.66:                               # %if.then30.i494.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%eax, %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	jmp	.LBB1_75
.LBB1_74:                               # %if.then39.i241.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r11d
	.p2align	4, 0x90
.LBB1_75:                               # %sw.epilog.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	shll	$3, %r8d
	movq	(%r13,%r8), %rax
	addl	%r9d, %r9d
	movw	%r10w, (%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	8(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	8(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	16(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	16(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, (%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, (%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 2(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 2(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 4(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 4(%rax,%r9)
	movq	24(%r13,%r8), %rax
	movw	%r10w, 6(%rax,%r9)
	movq	24(%rbp,%r8), %rax
	movw	%r11w, 6(%rax,%r9)
	movzbl	subblk_offset_y+3(%r12,%rdi,4), %r8d
	movzbl	subblk_offset_x+3(%r12,%rdi,4), %r9d
	movl	849064(%r15), %r10d
	movl	849068(%r15), %r11d
	movl	(%rsi), %eax
	cmpq	$3, %rax
	ja	.LBB1_96
# %bb.76:                               # %sw.epilog.2.i
                                        #   in Loop: Header=BB1_12 Depth=1
	jmpq	*.LJTI1_4(,%rax,8)
.LBB1_77:                               # %sw.bb77.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %r14
	movq	80(%rsp), %rcx
	movswq	60(%rsp), %rbx
	movswl	62(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_80
# %bb.78:                               # %if.then.i400.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	%rcx, %r11
	sarq	$48, %r11
	movq	%rcx, %rax
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	addq	%r9, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%r11,8), %rdx
	movq	(%rdx,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB1_81
# %bb.79:                               # %if.then34.i448.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %edx
	shrl	$2, %edx
	movl	%edx, %r10d
	jmp	.LBB1_83
	.p2align	4, 0x90
.LBB1_88:                               # %sw.bb74.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpb	$0, 88(%rsp)                    # 1-byte Folded Reload
	jne	.LBB1_92
.LBB1_89:                               # %if.else.i312.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_96
# %bb.90:                               # %if.then12.i358.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	leaq	1(%r8), %rax
	movswq	60(%rsp), %rcx
	movswq	62(%rsp), %rdx
	addq	%rax, %rdx
	leaq	(%rcx,%rcx), %rax
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r10
	movq	(%r14,%rdx,8), %r11
	movzwl	(%r10,%rcx,2), %r10d
	movzwl	(%r11,%rcx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %ebx
	movq	16(%r14,%rdx,8), %r10
	movzwl	(%r10,%rcx,2), %r10d
	addl	%ebx, %r10d
	addl	%r11d, %r10d
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rdx,8), %r11
	movq	(%r14,%rdx,8), %rbx
	movzwl	(%r11,%rcx,2), %r11d
	movzwl	(%rbx,%rcx,2), %ebx
	addl	%r11d, %ebx
	movq	8(%r14,%rdx,8), %r11
	movzwl	(%r11,%rcx,2), %ecx
	addl	%ebx, %ecx
	addq	16(%r14,%rdx,8), %rax
	jmp	.LBB1_93
.LBB1_80:                               # %if.end.thread.i451.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	xorl	%edx, %edx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_96
.LBB1_81:                               # %if.then7.i420.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	addq	%r14, %rax
	movq	32(%rsp), %r15                  # 8-byte Reload
	movq	-8(%r15,%rax,8), %r10
	movq	(%r15,%rax,8), %r11
	movzwl	(%r10,%rbx,2), %r10d
	movzwl	(%r11,%rbx,2), %r11d
	addl	%r10d, %r11d
	movq	8(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r12d
	movq	16(%r15,%rax,8), %r10
	movzwl	(%r10,%rbx,2), %r10d
	addl	%r12d, %r10d
	addl	%r11d, %r10d
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_85
# %bb.82:                               # %if.then30.i439.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%edx, %r10d
	addl	$4, %r10d
	shrl	$3, %r10d
	movq	%rcx, %r11
	sarq	$48, %r11
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rax
	addq	%r9, %rax
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_83:                               # %if.then.i455.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movzwl	2(%rcx,%rax,2), %r12d
	addl	%edx, %r12d
	movzwl	4(%rcx,%rax,2), %edx
	movzwl	6(%rcx,%rax,2), %r11d
	addl	%edx, %r11d
	addl	%r12d, %r11d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB1_94
# %bb.84:                               # %if.then.i455.3.if.then7.i475.3_crit_edge.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	4(%rsp), %r14d                  # 4-byte Folded Reload
	movslq	%r14d, %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_86
.LBB1_94:                               # %if.then34.i503.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB1_96
.LBB1_85:                               # %if.end.thread.i506.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %r10d
	shrl	$2, %r10d
	xorl	%r11d, %r11d
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB1_86:                               # %if.then7.i475.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	24(%rsp), %r14                  # 8-byte Reload
	movq	-8(%r14,%rax,8), %rcx
	movq	(%r14,%rax,8), %rdx
	movzwl	(%rcx,%rbx,2), %ecx
	movzwl	(%rdx,%rbx,2), %edx
	addl	%ecx, %edx
	movq	8(%r14,%rax,8), %rcx
	movzwl	(%rcx,%rbx,2), %ecx
	movq	16(%r14,%rax,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_95
# %bb.87:                               # %if.then30.i494.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	%eax, %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	jmp	.LBB1_96
.LBB1_95:                               # %if.then39.i241.3.i
                                        #   in Loop: Header=BB1_12 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r11d
	jmp	.LBB1_96
.LBB1_121:                              # %for.body.lr.ph.i48.new
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_122:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	8(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	8(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	cmpq	%r12, 16(%rsp)                  # 8-byte Folded Reload
	jne	.LBB1_122
.LBB1_123:                              # %intrapred_chroma_ver.exit.loopexit.unr-lcssa
	testb	$1, 32(%rsp)                    # 1-byte Folded Reload
	je	.LBB1_97
# %bb.124:                              # %for.body.i.epil
	movq	(%rbp,%r12,8), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r13,%r12,8), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	jmp	.LBB1_97
.LBB1_175:                              # %vector.ph
	movl	%ebx, %edi
	movl	%r11d, %esi
	movq	112(%rsp), %r13                 # 8-byte Reload
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	andl	$2147483632, %r13d              # imm = 0x7FFFFFF0
	movd	%edx, %xmm0
	movq	152(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rax), %rdx
	leaq	(%rdx,%r8,2), %rdx
	leaq	(%r10,%rdx), %rbx
	addq	$-10, %rbx
	addq	%r10, %rdx
	movaps	.LCPI1_0(%rip), %xmm1           # xmm1 = [2,3]
	movaps	.LCPI1_1(%rip), %xmm2           # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	pxor	%xmm3, %xmm3
	xorl	%r11d, %r11d
	movdqa	.LCPI1_4(%rip), %xmm8           # xmm8 = [13,13,13,13]
	movdqa	.LCPI1_5(%rip), %xmm9           # xmm9 = [16,16]
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	pxor	%xmm7, %xmm7
	.p2align	4, 0x90
.LBB1_176:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%r11,2), %xmm4            # xmm4 = mem[0],zero
	movq	8(%rdx,%r11,2), %xmm14          # xmm14 = mem[0],zero
	movq	16(%rdx,%r11,2), %xmm13         # xmm13 = mem[0],zero
	movq	24(%rdx,%r11,2), %xmm12         # xmm12 = mem[0],zero
	punpcklwd	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	punpcklwd	%xmm3, %xmm14           # xmm14 = xmm14[0],xmm3[0],xmm14[1],xmm3[1],xmm14[2],xmm3[2],xmm14[3],xmm3[3]
	punpcklwd	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1],xmm13[2],xmm3[2],xmm13[3],xmm3[3]
	punpcklwd	%xmm3, %xmm12           # xmm12 = xmm12[0],xmm3[0],xmm12[1],xmm3[1],xmm12[2],xmm3[2],xmm12[3],xmm3[3]
	movq	(%rbx), %xmm15                  # xmm15 = mem[0],zero
	movq	-8(%rbx), %xmm5                 # xmm5 = mem[0],zero
	movq	-16(%rbx), %xmm6                # xmm6 = mem[0],zero
	pshuflw	$27, %xmm15, %xmm15             # xmm15 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm15           # xmm15 = xmm15[0],xmm3[0],xmm15[1],xmm3[1],xmm15[2],xmm3[2],xmm15[3],xmm3[3]
	psubd	%xmm15, %xmm4
	movq	-24(%rbx), %xmm15               # xmm15 = mem[0],zero
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm14
	pshuflw	$27, %xmm6, %xmm5               # xmm5 = xmm6[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm13
	pshuflw	$27, %xmm15, %xmm5              # xmm5 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm12
	movaps	%xmm2, %xmm15
	shufps	$136, %xmm1, %xmm15             # xmm15 = xmm15[0,2],xmm1[0,2]
	movaps	%xmm15, %xmm5
	psubd	.LCPI1_6(%rip), %xmm5
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI1_2(%rip), %xmm5
	paddd	%xmm4, %xmm0
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm14, %xmm4             # xmm4 = xmm14[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI1_3(%rip), %xmm5
	paddd	%xmm4, %xmm11
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm8, %xmm15
	paddd	%xmm4, %xmm10
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm15, %xmm12
	pshufd	$245, %xmm15, %xmm5             # xmm5 = xmm15[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm4, %xmm7
	addq	$16, %r11
	paddq	%xmm9, %xmm2
	paddq	%xmm9, %xmm1
	addq	$-32, %rbx
	cmpq	%r11, %r13
	jne	.LBB1_176
# %bb.177:                              # %middle.block
	paddd	%xmm0, %xmm11
	paddd	%xmm11, %xmm10
	paddd	%xmm10, %xmm7
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpl	%eax, %r13d
	movl	%esi, %r11d
	movl	%edi, %ebx
	je	.LBB1_180
.LBB1_178:                              # %for.body80.i.preheader
	movq	152(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r15,%rsi,2), %rdi
	movq	216(%rsp), %r8                  # 8-byte Reload
	addq	%r8, %rsi
	addq	%rsi, %rsi
	leal	(,%r13,2), %r8d
	subq	%r8, %rsi
	leaq	(%rsi,%r10), %r8
	addq	$-4, %r8
	.p2align	4, 0x90
.LBB1_179:                              # %for.body80.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%r13,2), %esi
	incq	%r13
	movzwl	(%r8), %r9d
	subl	%r9d, %esi
	movl	%r13d, %r9d
	imull	%esi, %r9d
	addl	%r9d, %edx
	addq	$-2, %r8
	cmpq	%r13, %rax
	jne	.LBB1_179
.LBB1_180:                              # %for.end.i
	movq	8(%rsp), %r8                    # 8-byte Reload
	movslq	%r8d, %rdi
	movq	16(%rsp), %r13                  # 8-byte Reload
	leal	(,%r13,2), %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	addl	$5, %r11d
	movq	32(%rsp), %rsi                  # 8-byte Reload
	leal	(%rsi,%rsi), %r15d
	addl	$5, %ebx
	movq	40(%rsp), %rax                  # 8-byte Reload
	addl	%eax, %esi
	movslq	%esi, %rsi
	movq	96(%rsp), %r9                   # 8-byte Reload
	movq	-8(%r9,%rsi,8), %rsi
	movzwl	(%rsi,%r14,2), %r10d
	subl	%ecx, %r10d
	movq	168(%rsp), %rcx                 # 8-byte Reload
	leaq	1(%rcx), %rax
	imull	%r12d, %r10d
	movl	24(%rsp), %ecx                  # 4-byte Reload
	cmpl	$2, %r12d
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	movl	%ebx, 92(%rsp)                  # 4-byte Spill
	movl	%r11d, 108(%rsp)                # 4-byte Spill
	movl	%r15d, 104(%rsp)                # 4-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rdi, 160(%rsp)                 # 8-byte Spill
	jl	.LBB1_181
# %bb.182:                              # %for.body115.i.preheader
	leaq	(%r9,%rdi,8), %r11
	addq	$-16, %r11
	xorl	%r15d, %r15d
	cmpl	$5, %r12d
	jae	.LBB1_184
# %bb.183:
	movq	%rdi, %r8
	movq	%r11, %rcx
	jmp	.LBB1_187
.LBB1_181:
	movl	%r8d, %edi
	jmp	.LBB1_194
.LBB1_184:                              # %vector.ph117
	leaq	(%r9,%rdi,8), %r9
	movl	%ecx, %r15d
	andl	$-4, %r15d
	leaq	(%r15,%rdi), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	leaq	(,%r15,8), %rsi
	movq	%r11, %rcx
	subq	%rsi, %rcx
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_185:                              # %vector.body125
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rdi,8), %rsi
	movzwl	(%rsi,%r14,2), %esi
	movq	(%r11), %r8
	movzwl	(%r8,%r14,2), %r8d
	subl	%r8d, %esi
	leal	1(%rdi), %r8d
	imull	%r8d, %esi
	movq	8(%r9,%rdi,8), %r8
	movzwl	(%r8,%r14,2), %r8d
	addl	%esi, %r10d
	movq	-8(%r11), %rsi
	movzwl	(%rsi,%r14,2), %esi
	subl	%esi, %r8d
	leal	2(%rdi), %esi
	imull	%esi, %r8d
	movq	16(%r9,%rdi,8), %rsi
	movzwl	(%rsi,%r14,2), %esi
	addl	%r8d, %r13d
	movq	-16(%r11), %r8
	movzwl	(%r8,%r14,2), %r8d
	subl	%r8d, %esi
	leal	3(%rdi), %r8d
	imull	%r8d, %esi
	movq	24(%r9,%rdi,8), %r8
	addq	$4, %rdi
	movzwl	(%r8,%r14,2), %r8d
	addl	%esi, %r12d
	movq	-24(%r11), %rsi
	movzwl	(%rsi,%r14,2), %esi
	subl	%esi, %r8d
	movl	%edi, %esi
	imull	%r8d, %esi
	addl	%esi, %ebx
	addq	$-32, %r11
	cmpq	%rdi, %r15
	jne	.LBB1_185
# %bb.186:                              # %middle.block114
	addl	%r10d, %r13d
	addl	%r13d, %r12d
	addl	%r12d, %ebx
	movl	%ebx, %r10d
	cmpl	184(%rsp), %r15d                # 4-byte Folded Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	224(%rsp), %r8                  # 8-byte Reload
	je	.LBB1_193
.LBB1_187:                              # %for.body115.i.preheader219
	movl	%r15d, %esi
	subl	%r12d, %esi
	testb	$1, %sil
	jne	.LBB1_188
# %bb.189:                              # %for.body115.i.prol
	leal	1(%r15), %r9d
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%r8,8), %rsi
	incq	%r8
	movzwl	(%rsi,%r14,2), %esi
	movq	(%rcx), %rdi
	addq	$-8, %rcx
	movzwl	(%rdi,%r14,2), %edi
	subl	%edi, %esi
	imull	%r9d, %esi
	addl	%esi, %r10d
	jmp	.LBB1_190
.LBB1_188:
	movl	%r15d, %r9d
.LBB1_190:                              # %for.body115.i.prol.loopexit
	cmpl	%r15d, 168(%rsp)                # 4-byte Folded Reload
	je	.LBB1_193
# %bb.191:                              # %for.body115.i.preheader219.new
	movq	96(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%r8,8), %rdi
	addq	$8, %rdi
	incl	%r9d
	.p2align	4, 0x90
.LBB1_192:                              # %for.body115.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %rsi
	movq	(%rdi), %r8
	movzwl	(%rsi,%r14,2), %esi
	movq	-8(%rcx), %r11
	movq	(%rcx), %rbx
	movzwl	(%rbx,%r14,2), %ebx
	subl	%ebx, %esi
	imull	%r9d, %esi
	addl	%r10d, %esi
	leal	1(%r9), %ebx
	movzwl	(%r8,%r14,2), %r10d
	movzwl	(%r11,%r14,2), %r8d
	subl	%r8d, %r10d
	imull	%ebx, %r10d
	addl	%esi, %r10d
	addq	$16, %rdi
	addl	$2, %r9d
	addq	$-16, %rcx
	cmpl	%r9d, %r12d
	jne	.LBB1_192
.LBB1_193:                              # %for.end129.loopexit.i
	movq	8(%rsp), %r8                    # 8-byte Reload
	leal	(%r8,%rax), %edi
	movl	108(%rsp), %r11d                # 4-byte Reload
	movl	92(%rsp), %ebx                  # 4-byte Reload
	movl	104(%rsp), %r15d                # 4-byte Reload
.LBB1_194:                              # %for.end129.i
	imull	88(%rsp), %edx                  # 4-byte Folded Reload
	addl	4(%rsp), %edx                   # 4-byte Folded Reload
	movl	%r11d, %ecx
	sarl	%cl, %edx
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	1248(%rcx), %rsi
	imull	64(%rsp), %r10d                 # 4-byte Folded Reload
	addl	%r15d, %r10d
	movl	%ebx, %ecx
	sarl	%cl, %r10d
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	216(%rsp), %r9                  # 8-byte Reload
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	jle	.LBB1_195
# %bb.196:                              # %for.body163.lr.ph.i
	testl	%r13d, %r13d
	jle	.LBB1_195
# %bb.197:                              # %for.body163.us.preheader.i
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movl	849076(%rcx), %ecx
	movq	8(%rsi), %r11
	movslq	%edi, %rsi
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rsi,8), %rax
	movzwl	(%rax,%r14,2), %edi
	addl	180(%rsp), %edi                 # 4-byte Folded Reload
	shll	$4, %edi
	leal	16(%rdi), %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movl	%r13d, %ebx
	andl	$2147483646, %ebx               # imm = 0x7FFFFFFE
	movl	$2, %esi
	subl	%ebp, %esi
	imull	%edx, %esi
	movl	$1, %r8d
	movl	$1, %r9d
	subl	%r12d, %r9d
	imull	%r10d, %r9d
	addl	%r9d, %esi
	movq	%rbp, %rax
	leal	(%rdi,%rsi), %ebp
	addl	$16, %ebp
	leal	(%rdx,%rdx), %r15d
	subl	%eax, %r8d
	imull	%edx, %r8d
	addl	%r9d, %r8d
	addl	%edi, %r8d
	addl	$16, %r8d
	xorl	%r12d, %r12d
	xorl	%r9d, %r9d
	jmp	.LBB1_198
	.p2align	4, 0x90
.LBB1_204:                              # %for.cond172.for.end186_crit_edge.us.i
                                        #   in Loop: Header=BB1_198 Depth=1
	incq	%r9
	addl	%r10d, %ebp
	addl	%r10d, %r8d
	cmpq	32(%rsp), %r9                   # 8-byte Folded Reload
	je	.LBB1_141
.LBB1_198:                              # %for.body163.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_201 Depth 2
	cmpl	$1, %r13d
	jne	.LBB1_200
# %bb.199:                              #   in Loop: Header=BB1_198 Depth=1
	xorl	%edi, %edi
	jmp	.LBB1_202
	.p2align	4, 0x90
.LBB1_200:                              # %for.body175.us.i.preheader
                                        #   in Loop: Header=BB1_198 Depth=1
	movl	%r8d, %r13d
	movl	%ebp, %r14d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_201:                              # %for.body175.us.i
                                        #   Parent Loop BB1_198 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %esi
	sarl	$5, %esi
	testl	%esi, %esi
	cmovlel	%r12d, %esi
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movq	(%r11,%r9,8), %rax
	movw	%si, (%rax,%rdi,2)
	movl	%r14d, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	cmovlel	%r12d, %eax
	cmpl	%ecx, %eax
	cmovgel	%ecx, %eax
	movq	(%r11,%r9,8), %rsi
	movw	%ax, 2(%rsi,%rdi,2)
	addq	$2, %rdi
	addl	%r15d, %r14d
	addl	%r15d, %r13d
	cmpq	%rdi, %rbx
	jne	.LBB1_201
.LBB1_202:                              # %for.cond172.for.end186_crit_edge.us.i.unr-lcssa
                                        #   in Loop: Header=BB1_198 Depth=1
	movq	16(%rsp), %r13                  # 8-byte Reload
	testb	$1, %r13b
	je	.LBB1_204
# %bb.203:                              # %for.body175.us.i.epil
                                        #   in Loop: Header=BB1_198 Depth=1
	movl	%r9d, %eax
	subl	24(%rsp), %eax                  # 4-byte Folded Reload
	incl	%eax
	imull	%r10d, %eax
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	movl	%edi, %esi
	subl	8(%rsp), %esi                   # 4-byte Folded Reload
	incl	%esi
	imull	%edx, %esi
	addl	%eax, %esi
	sarl	$5, %esi
	testl	%esi, %esi
	cmovlel	%r12d, %esi
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movq	(%r11,%r9,8), %rax
	movw	%si, (%rax,%rdi,2)
	jmp	.LBB1_204
.LBB1_195:
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movq	200(%rsp), %rsi                 # 8-byte Reload
	movq	192(%rsp), %r10                 # 8-byte Reload
	jmp	.LBB1_142
.LBB1_141:                              # %for.cond.loopexit.loopexit.i
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	136(%rax), %rdx
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	1248(%rax), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movswq	86(%rsp), %rsi
	movswq	84(%rsp), %r9
	movswq	148(%rsp), %r14
	movswl	62(%rsp), %ecx
	movswq	150(%rsp), %r10
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leal	(%rax,%rcx), %r8d
	movslq	%r8d, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movl	108(%rsp), %r11d                # 4-byte Reload
	movl	92(%rsp), %ebx                  # 4-byte Reload
	movl	104(%rsp), %r15d                # 4-byte Reload
.LBB1_142:                              # %for.cond.loopexit.i
	movq	8(%rdx), %rax
	movq	(%rax,%rsi,8), %r12
	leaq	(%r12,%r9,2), %rdi
	movzwl	-2(%rdi,%r13,2), %edx
	movq	(%rax,%r10,8), %rcx
	movzwl	(%rcx,%r14,2), %ecx
	movl	%edx, 120(%rsp)                 # 4-byte Spill
                                        # kill: def $edx killed $edx def $rdx
	subl	%ecx, %edx
	imull	%ebp, %edx
	cmpl	$2, %ebp
	jl	.LBB1_143
# %bb.144:                              # %for.body80.preheader.1.i
	movq	152(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rdi,%rsi,2), %r10
	movq	%rsi, %rdi
	cmpl	$17, %ebp
	jae	.LBB1_146
# %bb.145:
	movq	%r8, %rbp
	xorl	%r13d, %r13d
	movq	112(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB1_149
.LBB1_143:
	movq	%r8, %rbp
	jmp	.LBB1_151
.LBB1_146:                              # %vector.ph145
	movq	%r8, %rbp
	movq	112(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, %r13d
	andl	$2147483632, %r13d              # imm = 0x7FFFFFF0
	movd	%edx, %xmm0
	leaq	(%rdi,%rdi), %rdx
	leaq	(%rdx,%r9,2), %rdx
	addq	%r12, %rdx
	addq	$-10, %rdx
	movaps	.LCPI1_0(%rip), %xmm1           # xmm1 = [2,3]
	movaps	.LCPI1_1(%rip), %xmm2           # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	pxor	%xmm3, %xmm3
	xorl	%ebx, %ebx
	movdqa	.LCPI1_4(%rip), %xmm8           # xmm8 = [13,13,13,13]
	movdqa	.LCPI1_5(%rip), %xmm9           # xmm9 = [16,16]
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	pxor	%xmm7, %xmm7
	.p2align	4, 0x90
.LBB1_147:                              # %vector.body149
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r10,%rbx,2), %xmm4            # xmm4 = mem[0],zero
	movq	8(%r10,%rbx,2), %xmm14          # xmm14 = mem[0],zero
	movq	16(%r10,%rbx,2), %xmm13         # xmm13 = mem[0],zero
	movq	24(%r10,%rbx,2), %xmm12         # xmm12 = mem[0],zero
	punpcklwd	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	punpcklwd	%xmm3, %xmm14           # xmm14 = xmm14[0],xmm3[0],xmm14[1],xmm3[1],xmm14[2],xmm3[2],xmm14[3],xmm3[3]
	punpcklwd	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1],xmm13[2],xmm3[2],xmm13[3],xmm3[3]
	punpcklwd	%xmm3, %xmm12           # xmm12 = xmm12[0],xmm3[0],xmm12[1],xmm3[1],xmm12[2],xmm3[2],xmm12[3],xmm3[3]
	movq	(%rdx), %xmm15                  # xmm15 = mem[0],zero
	movq	-8(%rdx), %xmm5                 # xmm5 = mem[0],zero
	movq	-16(%rdx), %xmm6                # xmm6 = mem[0],zero
	pshuflw	$27, %xmm15, %xmm15             # xmm15 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm15           # xmm15 = xmm15[0],xmm3[0],xmm15[1],xmm3[1],xmm15[2],xmm3[2],xmm15[3],xmm3[3]
	psubd	%xmm15, %xmm4
	movq	-24(%rdx), %xmm15               # xmm15 = mem[0],zero
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm14
	pshuflw	$27, %xmm6, %xmm5               # xmm5 = xmm6[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm13
	pshuflw	$27, %xmm15, %xmm5              # xmm5 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm12
	movaps	%xmm2, %xmm15
	shufps	$136, %xmm1, %xmm15             # xmm15 = xmm15[0,2],xmm1[0,2]
	movaps	%xmm15, %xmm5
	psubd	.LCPI1_6(%rip), %xmm5
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI1_2(%rip), %xmm5
	paddd	%xmm4, %xmm0
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm14, %xmm4             # xmm4 = xmm14[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI1_3(%rip), %xmm5
	paddd	%xmm4, %xmm11
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm8, %xmm15
	paddd	%xmm4, %xmm10
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm15, %xmm12
	pshufd	$245, %xmm15, %xmm5             # xmm5 = xmm15[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm4, %xmm7
	addq	$16, %rbx
	paddq	%xmm9, %xmm2
	paddq	%xmm9, %xmm1
	addq	$-32, %rdx
	cmpq	%rbx, %r13
	jne	.LBB1_147
# %bb.148:                              # %middle.block142
	paddd	%xmm0, %xmm11
	paddd	%xmm11, %xmm10
	paddd	%xmm10, %xmm7
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	cmpl	%esi, %r13d
	movl	92(%rsp), %ebx                  # 4-byte Reload
	je	.LBB1_151
.LBB1_149:                              # %for.body80.1.i.preheader
	addq	%rdi, %r9
	addq	%r9, %r9
	leal	(,%r13,2), %edi
	subq	%rdi, %r9
	leaq	(%r9,%r12), %rdi
	addq	$-4, %rdi
	.p2align	4, 0x90
.LBB1_150:                              # %for.body80.1.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r10,%r13,2), %r8d
	incq	%r13
	movzwl	(%rdi), %r9d
	subl	%r9d, %r8d
	movl	%r13d, %r9d
	imull	%r8d, %r9d
	addl	%r9d, %edx
	addq	$-2, %rdi
	cmpq	%r13, %rsi
	jne	.LBB1_150
.LBB1_151:                              # %for.end.1.i
	movq	40(%rsp), %rsi                  # 8-byte Reload
	addl	32(%rsp), %esi                  # 4-byte Folded Reload
	movslq	%esi, %rdi
	movq	-8(%rax,%rdi,8), %rdi
	movzwl	(%rdi,%r14,2), %r10d
	subl	%ecx, %r10d
	movq	24(%rsp), %rsi                  # 8-byte Reload
	imull	%esi, %r10d
	cmpl	$2, %esi
	jl	.LBB1_152
# %bb.153:                              # %for.body115.1.i.preheader
	movq	160(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r15
	addq	$-16, %r15
	xorl	%r11d, %r11d
	cmpl	$5, %esi
	jae	.LBB1_155
# %bb.154:
	movq	%rcx, %rbx
	movq	%r15, %rcx
	movq	128(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB1_158
.LBB1_152:
	movq	128(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB1_165
.LBB1_155:                              # %vector.ph182
	leaq	(%rax,%rcx,8), %r9
	movq	184(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, %r11d
	andl	$-4, %r11d
	addq	%r11, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	(,%r11,8), %rdi
	movq	%r15, %rcx
	subq	%rdi, %rcx
	xorl	%edi, %edi
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_156:                              # %vector.body191
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rdi,8), %r8
	movzwl	(%r8,%r14,2), %r8d
	movq	(%r15), %rbx
	movzwl	(%rbx,%r14,2), %ebx
	subl	%ebx, %r8d
	leal	1(%rdi), %ebx
	imull	%ebx, %r8d
	movq	8(%r9,%rdi,8), %rbx
	movzwl	(%rbx,%r14,2), %ebx
	addl	%r8d, %r10d
	movq	-8(%r15), %r8
	movzwl	(%r8,%r14,2), %r8d
	subl	%r8d, %ebx
	leal	2(%rdi), %r8d
	imull	%r8d, %ebx
	movq	16(%r9,%rdi,8), %r8
	movzwl	(%r8,%r14,2), %r8d
	addl	%ebx, %r13d
	movq	-16(%r15), %rbx
	movzwl	(%rbx,%r14,2), %ebx
	subl	%ebx, %r8d
	leal	3(%rdi), %ebx
	imull	%ebx, %r8d
	movq	24(%r9,%rdi,8), %rbx
	addq	$4, %rdi
	movzwl	(%rbx,%r14,2), %ebx
	addl	%r8d, %r12d
	movq	-24(%r15), %r8
	movzwl	(%r8,%r14,2), %r8d
	subl	%r8d, %ebx
	movl	%edi, %r8d
	imull	%ebx, %r8d
	addl	%r8d, %ebp
	addq	$-32, %r15
	cmpq	%rdi, %r11
	jne	.LBB1_156
# %bb.157:                              # %middle.block179
	addl	%r10d, %r13d
	addl	%r13d, %r12d
	addl	%r12d, %ebp
	movl	%ebp, %r10d
	cmpl	%esi, %r11d
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	je	.LBB1_164
.LBB1_158:                              # %for.body115.1.i.preheader210
	movl	%r11d, %edi
	subl	%esi, %edi
	testb	$1, %dil
	jne	.LBB1_159
# %bb.160:                              # %for.body115.1.i.prol
	leal	1(%r11), %r9d
	movq	(%rax,%rbx,8), %rdi
	incq	%rbx
	movzwl	(%rdi,%r14,2), %edi
	movq	(%rcx), %r8
	addq	$-8, %rcx
	movzwl	(%r8,%r14,2), %r8d
	subl	%r8d, %edi
	imull	%r9d, %edi
	addl	%edi, %r10d
	jmp	.LBB1_161
.LBB1_159:
	movl	%r11d, %r9d
.LBB1_161:                              # %for.body115.1.i.prol.loopexit
	cmpl	%r11d, 168(%rsp)                # 4-byte Folded Reload
	je	.LBB1_164
# %bb.162:                              # %for.body115.1.i.preheader210.new
	leaq	(%rax,%rbx,8), %rdi
	addq	$8, %rdi
	incl	%r9d
	.p2align	4, 0x90
.LBB1_163:                              # %for.body115.1.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi), %r8
	movq	(%rdi), %r11
	movzwl	(%r8,%r14,2), %r8d
	movq	-8(%rcx), %rbx
	movq	(%rcx), %r15
	movzwl	(%r15,%r14,2), %ebp
	subl	%ebp, %r8d
	imull	%r9d, %r8d
	addl	%r10d, %r8d
	leal	1(%r9), %ebp
	movzwl	(%r11,%r14,2), %r10d
	movzwl	(%rbx,%r14,2), %r11d
	subl	%r11d, %r10d
	imull	%ebp, %r10d
	addl	%r8d, %r10d
	addq	$16, %rdi
	addl	$2, %r9d
	addq	$-16, %rcx
	cmpl	%r9d, %esi
	jne	.LBB1_163
.LBB1_164:                              # %for.end129.loopexit.1.i
	movq	160(%rsp), %rbp                 # 8-byte Reload
	addl	240(%rsp), %ebp                 # 4-byte Folded Reload
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	movl	108(%rsp), %r11d                # 4-byte Reload
	movl	92(%rsp), %ebx                  # 4-byte Reload
	movl	104(%rsp), %r15d                # 4-byte Reload
.LBB1_165:                              # %for.end129.1.i
	imull	88(%rsp), %edx                  # 4-byte Folded Reload
	addl	4(%rsp), %edx                   # 4-byte Folded Reload
	movl	%r11d, %ecx
	sarl	%cl, %edx
	imull	64(%rsp), %r10d                 # 4-byte Folded Reload
	addl	%r15d, %r10d
	movl	%ebx, %ecx
	sarl	%cl, %r10d
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	jle	.LBB1_97
# %bb.166:                              # %for.body163.lr.ph.1.i
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB1_97
# %bb.167:                              # %for.body163.us.preheader.1.i
	movq	16(%rcx), %rcx
	movl	849080(%r12), %r11d
	movslq	%ebp, %rdi
	movq	(%rax,%rdi,8), %rax
	movzwl	(%rax,%r14,2), %edi
	addl	120(%rsp), %edi                 # 4-byte Folded Reload
	shll	$4, %edi
	leal	16(%rdi), %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	andl	$2147483646, %ebx               # imm = 0x7FFFFFFE
	movl	$2, %r8d
	movq	8(%rsp), %rax                   # 8-byte Reload
	subl	%eax, %r8d
	imull	%edx, %r8d
	movl	$1, %r9d
	movl	$1, %r15d
	subl	24(%rsp), %r15d                 # 4-byte Folded Reload
	imull	%r10d, %r15d
	addl	%r15d, %r8d
	leal	(%rdi,%r8), %ebp
	addl	$16, %ebp
	leal	(%rdx,%rdx), %r14d
	subl	%eax, %r9d
	imull	%edx, %r9d
	addl	%r15d, %r9d
	leal	(%rdi,%r9), %esi
	addl	$16, %esi
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	jmp	.LBB1_168
	.p2align	4, 0x90
.LBB1_174:                              # %for.cond172.for.end186_crit_edge.us.1.i
                                        #   in Loop: Header=BB1_168 Depth=1
	incq	%r13
	addl	%r10d, %ebp
	addl	%r10d, %esi
	cmpq	32(%rsp), %r13                  # 8-byte Folded Reload
	je	.LBB1_97
.LBB1_168:                              # %for.body163.us.1.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_171 Depth 2
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	jne	.LBB1_170
# %bb.169:                              #   in Loop: Header=BB1_168 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB1_172
	.p2align	4, 0x90
.LBB1_170:                              # %for.body175.us.1.i.preheader
                                        #   in Loop: Header=BB1_168 Depth=1
	movl	%esi, %r15d
	movl	%ebp, %r8d
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB1_171:                              # %for.body175.us.1.i
                                        #   Parent Loop BB1_168 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r12d, %edi
	cmpl	%r11d, %edi
	cmovgel	%r11d, %edi
	movq	(%rcx,%r13,8), %rax
	movw	%di, (%rax,%r9,2)
	movl	%r8d, %eax
	sarl	$5, %eax
	testl	%eax, %eax
	cmovlel	%r12d, %eax
	cmpl	%r11d, %eax
	cmovgel	%r11d, %eax
	movq	(%rcx,%r13,8), %rdi
	movw	%ax, 2(%rdi,%r9,2)
	addq	$2, %r9
	addl	%r14d, %r8d
	addl	%r14d, %r15d
	cmpq	%r9, %rbx
	jne	.LBB1_171
.LBB1_172:                              # %for.cond172.for.end186_crit_edge.us.1.i.unr-lcssa
                                        #   in Loop: Header=BB1_168 Depth=1
	testb	$1, 16(%rsp)                    # 1-byte Folded Reload
	je	.LBB1_174
# %bb.173:                              # %for.body175.us.1.i.epil
                                        #   in Loop: Header=BB1_168 Depth=1
	movl	%r13d, %eax
	subl	24(%rsp), %eax                  # 4-byte Folded Reload
	incl	%eax
	imull	%r10d, %eax
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	movl	%r9d, %edi
	subl	8(%rsp), %edi                   # 4-byte Folded Reload
	incl	%edi
	imull	%edx, %edi
	addl	%eax, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r12d, %edi
	cmpl	%r11d, %edi
	cmovgel	%r11d, %edi
	movq	(%rcx,%r13,8), %rax
	movw	%di, (%rax,%r9,2)
	jmp	.LBB1_174
.Lfunc_end1:
	.size	intrapred_chroma, .Lfunc_end1-intrapred_chroma
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_2
	.quad	.LBB1_98
	.quad	.LBB1_113
	.quad	.LBB1_125
.LJTI1_1:
	.quad	.LBB1_14
	.quad	.LBB1_25
	.quad	.LBB1_29
	.quad	.LBB1_14
.LJTI1_2:
	.quad	.LBB1_35
	.quad	.LBB1_49
	.quad	.LBB1_46
	.quad	.LBB1_35
.LJTI1_3:
	.quad	.LBB1_56
	.quad	.LBB1_70
	.quad	.LBB1_67
	.quad	.LBB1_56
.LJTI1_4:
	.quad	.LBB1_77
	.quad	.LBB1_91
	.quad	.LBB1_88
	.quad	.LBB1_77
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function intrapred_chroma_mbaff
.LCPI2_0:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI2_1:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI2_2:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI2_3:
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
	.long	9                               # 0x9
.LCPI2_4:
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
.LCPI2_5:
	.quad	16                              # 0x10
	.quad	16                              # 0x10
.LCPI2_6:
	.zero	16,255
	.text
	.globl	intrapred_chroma_mbaff
	.p2align	4, 0x90
	.type	intrapred_chroma_mbaff,@function
intrapred_chroma_mbaff:                 # @intrapred_chroma_mbaff
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	373(%rdi), %eax
	cmpq	$3, %rax
	ja	.LBB2_34
# %bb.1:                                # %entry
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
	subq	$504, %rsp                      # imm = 0x1F8
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rcx
	movq	8(%rdi), %r9
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	13520(%rcx), %r15
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_2:                                # %sw.bb
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movslq	268(%r15), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	849112(%r9), %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	testl	%eax, %eax
	js	.LBB2_5
# %bb.3:                                # %for.body.lr.ph
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	849132(%rax), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	1(%rax), %r13
	movl	$-1, %ebp
	leaq	128(%rsp), %r15
	.p2align	4, 0x90
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	getAffNeighbour@PLT
	incl	%ebp
	addq	$16, %r15
	decq	%r13
	jne	.LBB2_4
.LBB2_5:                                # %for.end
	movq	32(%rsp), %r14                  # 8-byte Reload
	leaq	849132(%r14), %rcx
	xorl	%ebp, %ebp
	leaq	104(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	callq	getAffNeighbour@PLT
	movq	%r14, %r11
	movq	8(%r14), %rax
	cmpl	$0, 2204(%rax)
	movl	104(%rsp), %eax
	je	.LBB2_37
# %bb.6:                                # %if.else
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	%r10d, %ebx
	sarl	%ebx
	testl	%eax, %eax
	je	.LBB2_8
# %bb.7:                                # %cond.true
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	13544(%rax), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB2_8:                                # %cond.end
	movl	$1, 56(%rsp)                    # 4-byte Folded Spill
	movl	%ebx, %r14d
	movl	$1, %r9d
	testl	%ebx, %ebx
	movq	48(%rsp), %r13                  # 8-byte Reload
	jle	.LBB2_184
# %bb.9:                                # %for.body24.lr.ph
	cmpl	$3, %ebx
	ja	.LBB2_52
# %bb.10:
	movl	$1, %r8d
	xorl	%esi, %esi
	jmp	.LBB2_73
.LBB2_11:                               # %sw.bb350
	movslq	849108(%r9), %r14
	movl	849112(%r9), %r13d
	leaq	849132(%r9), %rcx
	leaq	128(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r9, %rbx
	callq	getAffNeighbour@PLT
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	128(%rsp), %eax
	je	.LBB2_14
# %bb.12:                               # %if.else365
	testl	%eax, %eax
	je	.LBB2_35
# %bb.13:                               # %cond.true368
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	13544(%rax), %rax
	movslq	132(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB2_14:                               # %if.end377
	testl	%eax, %eax
	je	.LBB2_35
# %bb.15:                               # %if.else380
	testl	%r13d, %r13d
	jle	.LBB2_366
# %bb.16:                               # %for.body408.lr.ph
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	1248(%rax), %rax
	movq	8(%rax), %rbp
	movq	16(%rax), %r12
	movq	136(%r15), %rax
	movswq	142(%rsp), %rcx
	movswq	140(%rsp), %rbx
	addq	%rbx, %rbx
	movq	(%rax), %rdx
	movq	8(%rax), %rax
	movq	(%rdx,%rcx,8), %r15
	addq	%rbx, %r15
	addq	(%rax,%rcx,8), %rbx
	addq	%r14, %r14
	cmpl	$1, %r13d
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	jne	.LBB2_78
# %bb.17:
	xorl	%r13d, %r13d
	jmp	.LBB2_80
.LBB2_18:                               # %sw.bb422
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movslq	849108(%r9), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movslq	849112(%r9), %rax
	movl	%eax, %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	js	.LBB2_21
# %bb.19:                               # %for.body439.lr.ph
	leaq	849132(%r9), %r14
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	1(%rax), %r13
	movl	$-1, %ebp
	leaq	128(%rsp), %r15
	.p2align	4, 0x90
.LBB2_20:                               # %for.body439
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*856744(%rax)
	movq	32(%rsp), %r9                   # 8-byte Reload
	incl	%ebp
	addq	$16, %r15
	decq	%r13
	jne	.LBB2_20
.LBB2_21:                               # %for.end448
	movq	16(%rsp), %rax                  # 8-byte Reload
	sarl	%eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	849132(%r9), %rcx
	xorl	%ebp, %ebp
	leaq	104(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*856744(%rax)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	cmpl	$0, 2204(%rax)
	movl	104(%rsp), %edx
	je	.LBB2_36
# %bb.22:                               # %if.else464
	testl	%edx, %edx
	je	.LBB2_24
# %bb.23:                               # %cond.true467
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	13544(%rax), %rax
	movslq	108(%rsp), %rcx
	movsbl	(%rax,%rcx), %ebp
.LBB2_24:                               # %cond.end474
	movl	%ebp, 48(%rsp)                  # 4-byte Spill
	movl	$1, %eax
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %r10d
	movl	$1, %ecx
	testl	%ebx, %ebx
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	jle	.LBB2_91
# %bb.25:                               # %for.body480.lr.ph
	cmpl	$3, %ebx
	ja	.LBB2_39
# %bb.26:
	movl	$1, %edi
	xorl	%esi, %esi
	jmp	.LBB2_50
.LBB2_27:                               # %sw.bb183
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movl	849108(%r9), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	849112(%r9), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	js	.LBB2_30
# %bb.28:                               # %for.body195.lr.ph
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	849132(%rax), %r14
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	1(%rax), %r13
	movl	$-1, %ebp
	leaq	128(%rsp), %r15
	.p2align	4, 0x90
.LBB2_29:                               # %for.body195
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	getAffNeighbour@PLT
	incl	%ebp
	addq	$16, %r15
	decq	%r13
	jne	.LBB2_29
.LBB2_30:                               # %for.end204
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB2_38
# %bb.31:                               # %for.cond217.preheader
	movq	24(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %r10d
	sarl	%r10d
	movl	$1, %eax
	movl	%r10d, %r11d
	movl	$1, %edx
	testl	%r10d, %r10d
	jle	.LBB2_338
# %bb.32:                               # %for.body220.lr.ph
	cmpl	$3, %r10d
	ja	.LBB2_62
# %bb.33:
	movl	$1, %r8d
	xorl	%esi, %esi
	jmp	.LBB2_76
.LBB2_34:                               # %sw.default
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$.L.str.1, %edi
	movl	$600, %esi                      # imm = 0x258
	jmp	error@PLT                       # TAILCALL
.LBB2_35:                               # %if.then379
	.cfi_def_cfa_offset 560
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$.L.str, %edi
	jmp	.LBB2_365
.LBB2_36:                               # %if.then456
	movl	128(%rsp), %esi
	movl	144(%rsp), %eax
	movl	%eax, %ecx
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB2_114
.LBB2_37:                               # %if.then
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	144(%rsp), %eax
	movl	%eax, 72(%rsp)                  # 4-byte Spill
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 849100(%r11)
	jg	.LBB2_199
	jmp	.LBB2_366
.LBB2_38:                               # %if.then208
	movl	144(%rsp), %edx
	movl	%edx, %eax
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB2_354
.LBB2_39:                               # %vector.ph
	movl	%r10d, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%r10, 72(%rsp)                  # 8-byte Spill
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	shrl	$2, %r10d
	andl	$536870911, %r10d               # imm = 0x1FFFFFFF
	shlq	$6, %r10
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movl	$-1, %r8d
	movl	$1, %r9d
	xorl	%r11d, %r11d
	movl	$-1, %r10d
	movl	$-1, %edi
	jmp	.LBB2_41
	.p2align	4, 0x90
.LBB2_40:                               # %pred.load.continue1963
                                        #   in Loop: Header=BB2_41 Depth=1
	testl	%ebx, %ebx
	movsbl	%r14b, %ecx
	cmovel	%ebx, %ecx
	testl	%r15d, %r15d
	movsbl	%r13b, %ebx
	cmovel	%r15d, %ebx
	testl	%ebp, %ebp
	movsbl	%sil, %esi
	cmovel	%ebp, %esi
	testl	%r12d, %r12d
	movsbl	%dl, %edx
	cmovel	%r12d, %edx
	andl	%ecx, %r9d
	andl	%ebx, %r8d
	andl	%esi, %r10d
	andl	%edx, %edi
	addq	$64, %r11
	cmpq	%r11, 8(%rsp)                   # 8-byte Folded Reload
	je	.LBB2_49
.LBB2_41:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	144(%rsp,%r11), %ebx
                                        # implicit-def: $r14b
	testl	%ebx, %ebx
	je	.LBB2_43
# %bb.42:                               # %pred.load.if
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rdx
	movslq	148(%rsp,%r11), %rsi
	movzbl	(%rdx,%rsi), %r14d
.LBB2_43:                               # %pred.load.continue
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	160(%rsp,%r11), %r15d
                                        # implicit-def: $r13b
	testl	%r15d, %r15d
	je	.LBB2_45
# %bb.44:                               # %pred.load.if1958
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rdx
	movslq	164(%rsp,%r11), %rsi
	movzbl	(%rdx,%rsi), %r13d
.LBB2_45:                               # %pred.load.continue1959
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	176(%rsp,%r11), %ebp
                                        # implicit-def: $sil
	testl	%ebp, %ebp
	je	.LBB2_47
# %bb.46:                               # %pred.load.if1960
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rdx
	movslq	180(%rsp,%r11), %rsi
	movzbl	(%rdx,%rsi), %esi
.LBB2_47:                               # %pred.load.continue1961
                                        #   in Loop: Header=BB2_41 Depth=1
	movl	192(%rsp,%r11), %r12d
                                        # implicit-def: $dl
	testl	%r12d, %r12d
	je	.LBB2_40
# %bb.48:                               # %pred.load.if1962
                                        #   in Loop: Header=BB2_41 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rdx
	movslq	196(%rsp,%r11), %rcx
	movzbl	(%rdx,%rcx), %edx
	jmp	.LBB2_40
.LBB2_49:                               # %middle.block
	andl	%r9d, %r8d
	andl	%r8d, %r10d
	andl	%r10d, %edi
	movl	%edi, %ecx
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	cmpl	%r10d, %esi
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB2_91
.LBB2_50:                               # %for.body480.preheader
	testb	$1, %r10b
	jne	.LBB2_82
# %bb.51:
                                        # implicit-def: $ecx
	movq	%rsi, %r8
	jmp	.LBB2_90
.LBB2_52:                               # %vector.ph2175
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movl	%ebp, 24(%rsp)                  # 4-byte Spill
	movl	%r14d, %eax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movl	%r14d, %ecx
	shrl	$2, %ecx
	andl	$536870911, %ecx                # imm = 0x1FFFFFFF
	shlq	$6, %rcx
	movl	$-1, %r9d
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	$-1, %r11d
	movl	$-1, %r8d
	jmp	.LBB2_54
	.p2align	4, 0x90
.LBB2_53:                               # %pred.load.continue2192
                                        #   in Loop: Header=BB2_54 Depth=1
	testl	%eax, %eax
	movsbl	%r14b, %esi
	cmovel	%eax, %esi
	testl	%r15d, %r15d
	movsbl	%r13b, %eax
	cmovel	%r15d, %eax
	testl	%ebp, %ebp
	movsbl	%dil, %edi
	cmovel	%ebp, %edi
	testl	%edx, %edx
	movsbl	%r12b, %ebp
	cmovel	%edx, %ebp
	andl	%esi, %r10d
	andl	%eax, %r9d
	andl	%edi, %r11d
	andl	%ebp, %r8d
	addq	$64, %rbx
	cmpq	%rbx, %rcx
	je	.LBB2_72
.LBB2_54:                               # %vector.body2179
                                        # =>This Inner Loop Header: Depth=1
	movl	144(%rsp,%rbx), %eax
                                        # implicit-def: $r14b
	testl	%eax, %eax
	je	.LBB2_56
# %bb.55:                               # %pred.load.if2185
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	148(%rsp,%rbx), %rdi
	movzbl	(%rdx,%rdi), %r14d
.LBB2_56:                               # %pred.load.continue2186
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	160(%rsp,%rbx), %r15d
                                        # implicit-def: $r13b
	testl	%r15d, %r15d
	je	.LBB2_58
# %bb.57:                               # %pred.load.if2187
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	164(%rsp,%rbx), %rdi
	movzbl	(%rdx,%rdi), %r13d
.LBB2_58:                               # %pred.load.continue2188
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	176(%rsp,%rbx), %ebp
                                        # implicit-def: $dil
	testl	%ebp, %ebp
	je	.LBB2_60
# %bb.59:                               # %pred.load.if2189
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	180(%rsp,%rbx), %rdi
	movzbl	(%rdx,%rdi), %edi
.LBB2_60:                               # %pred.load.continue2190
                                        #   in Loop: Header=BB2_54 Depth=1
	movl	192(%rsp,%rbx), %edx
                                        # implicit-def: $r12b
	testl	%edx, %edx
	je	.LBB2_53
# %bb.61:                               # %pred.load.if2191
                                        #   in Loop: Header=BB2_54 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %r12
	movslq	196(%rsp,%rbx), %rsi
	movzbl	(%r12,%rsi), %r12d
	jmp	.LBB2_53
.LBB2_62:                               # %vector.ph2110
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	movl	%r11d, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r11, 32(%rsp)                  # 8-byte Spill
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	shrl	$2, %r11d
	andl	$536870911, %r11d               # imm = 0x1FFFFFFF
	shlq	$6, %r11
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	movl	$-1, %r9d
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	$-1, %r11d
	movl	$-1, %r8d
	jmp	.LBB2_64
	.p2align	4, 0x90
.LBB2_63:                               # %pred.load.continue2127
                                        #   in Loop: Header=BB2_64 Depth=1
	testl	%ebp, %ebp
	movsbl	%r14b, %edx
	cmovel	%ebp, %edx
	testl	%r15d, %r15d
	movsbl	%dil, %edi
	cmovel	%r15d, %edi
	testl	%esi, %esi
	movsbl	%cl, %ecx
	cmovel	%esi, %ecx
	testl	%r13d, %r13d
	movsbl	%r12b, %esi
	cmovel	%r13d, %esi
	andl	%edx, %r10d
	andl	%edi, %r9d
	andl	%ecx, %r11d
	andl	%esi, %r8d
	addq	$64, %rbx
	cmpq	%rbx, 8(%rsp)                   # 8-byte Folded Reload
	je	.LBB2_75
.LBB2_64:                               # %vector.body2114
                                        # =>This Inner Loop Header: Depth=1
	movl	144(%rsp,%rbx), %ebp
                                        # implicit-def: $r14b
	testl	%ebp, %ebp
	je	.LBB2_66
# %bb.65:                               # %pred.load.if2120
                                        #   in Loop: Header=BB2_64 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	148(%rsp,%rbx), %rsi
	movzbl	(%rcx,%rsi), %r14d
.LBB2_66:                               # %pred.load.continue2121
                                        #   in Loop: Header=BB2_64 Depth=1
	movl	160(%rsp,%rbx), %r15d
                                        # implicit-def: $dil
	testl	%r15d, %r15d
	je	.LBB2_68
# %bb.67:                               # %pred.load.if2122
                                        #   in Loop: Header=BB2_64 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	164(%rsp,%rbx), %rsi
	movzbl	(%rcx,%rsi), %edi
.LBB2_68:                               # %pred.load.continue2123
                                        #   in Loop: Header=BB2_64 Depth=1
	movl	176(%rsp,%rbx), %esi
                                        # implicit-def: $cl
	testl	%esi, %esi
	je	.LBB2_70
# %bb.69:                               # %pred.load.if2124
                                        #   in Loop: Header=BB2_64 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	180(%rsp,%rbx), %r12
	movzbl	(%rcx,%r12), %ecx
.LBB2_70:                               # %pred.load.continue2125
                                        #   in Loop: Header=BB2_64 Depth=1
	movl	192(%rsp,%rbx), %r13d
                                        # implicit-def: $r12b
	testl	%r13d, %r13d
	je	.LBB2_63
# %bb.71:                               # %pred.load.if2126
                                        #   in Loop: Header=BB2_64 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %r12
	movslq	196(%rsp,%rbx), %rdx
	movzbl	(%r12,%rdx), %r12d
	jmp	.LBB2_63
.LBB2_72:                               # %middle.block2172
	andl	%r10d, %r9d
	andl	%r9d, %r11d
	andl	%r11d, %r8d
	movl	%r8d, %r9d
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	cmpl	%r14d, %esi
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	24(%rsp), %ebp                  # 4-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB2_184
.LBB2_73:                               # %for.body24.preheader
	testb	$1, %r14b
	jne	.LBB2_84
# %bb.74:
                                        # implicit-def: $r9d
	movq	%rsi, %rcx
	jmp	.LBB2_183
.LBB2_75:                               # %middle.block2107
	andl	%r10d, %r9d
	andl	%r9d, %r11d
	andl	%r11d, %r8d
	movl	%r8d, %edx
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	cmpl	%r11d, %esi
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	40(%rsp), %r10                  # 8-byte Reload
	je	.LBB2_338
.LBB2_76:                               # %for.body220.preheader
	testb	$1, %r11b
	jne	.LBB2_86
# %bb.77:
                                        # implicit-def: $edx
	movq	%rsi, %r9
	jmp	.LBB2_337
.LBB2_78:                               # %for.body408.lr.ph.new
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	andl	$2147483646, %r13d              # imm = 0x7FFFFFFE
	movq	%r13, (%rsp)                    # 8-byte Spill
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB2_79:                               # %for.body408
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%r13,8), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%rbp,%r13,8), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	$2, %r13
	cmpq	%r13, (%rsp)                    # 8-byte Folded Reload
	jne	.LBB2_79
.LBB2_80:                               # %if.end421.loopexit.unr-lcssa
	testb	$1, 8(%rsp)                     # 1-byte Folded Reload
	je	.LBB2_366
# %bb.81:                               # %for.body408.epil
	movq	(%rbp,%r13,8), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	jmp	.LBB2_366
.LBB2_82:                               # %for.body480.prol
	movq	%rsi, %r8
	orq	$1, %r8
	movq	%r8, %rcx
	shlq	$4, %rcx
	cmpl	$0, 128(%rsp,%rcx)
	je	.LBB2_88
# %bb.83:                               # %cond.true486.prol
	addq	%rsp, %rcx
	addq	$128, %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	4(%rcx), %rcx
	movsbl	(%rdx,%rcx), %ecx
	jmp	.LBB2_89
.LBB2_84:                               # %for.body24.prol
	movq	%rsi, %rcx
	orq	$1, %rcx
	movq	%rcx, %rax
	shlq	$4, %rax
	cmpl	$0, 128(%rsp,%rax)
	je	.LBB2_181
# %bb.85:                               # %cond.true30.prol
	addq	%rsp, %rax
	addq	$128, %rax
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	4(%rax), %rax
	movsbl	(%rdx,%rax), %r9d
	jmp	.LBB2_182
.LBB2_86:                               # %for.body220.prol
	movq	%rsi, %r9
	orq	$1, %r9
	movq	%r9, %rcx
	shlq	$4, %rcx
	cmpl	$0, 128(%rsp,%rcx)
	je	.LBB2_335
# %bb.87:                               # %cond.true226.prol
	addq	%rsp, %rcx
	addq	$128, %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	4(%rcx), %rcx
	movsbl	(%rdx,%rcx), %edx
	jmp	.LBB2_336
.LBB2_88:
	xorl	%ecx, %ecx
.LBB2_89:                               # %cond.end496.prol
	andl	%edi, %ecx
	movl	%ecx, %edi
.LBB2_90:                               # %for.body480.prol.loopexit
	leaq	-1(%r10), %rdx
	cmpq	%rdx, %rsi
	jne	.LBB2_123
.LBB2_91:                               # %for.cond504.preheader
	testl	%r14d, %r14d
	jle	.LBB2_105
# %bb.92:                               # %for.body507.lr.ph
	leal	1(%rbx), %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	cmpl	%eax, %edx
	cmovgl	%edx, %eax
	movl	%ebx, %edx
	notl	%edx
	addl	%eax, %edx
	movl	$1, %eax
	cmpl	$2, %edx
	ja	.LBB2_94
# %bb.93:
	movq	%r10, %rsi
	jmp	.LBB2_107
.LBB2_94:                               # %vector.ph1972
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	incq	%rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbx
	andq	$-4, %rbx
	leaq	(%rbx,%r10), %rsi
	shlq	$4, %r10
	leaq	128(%rsp), %rax
	addq	%rax, %r10
	addq	$68, %r10
	movl	$-1, %edx
	movl	$1, %r9d
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movl	$-1, %r11d
	movl	$-1, %eax
	jmp	.LBB2_96
	.p2align	4, 0x90
.LBB2_95:                               # %pred.load.continue1989
                                        #   in Loop: Header=BB2_96 Depth=1
	testl	%r14d, %r14d
	movsbl	%bpl, %ebp
	cmovel	%r14d, %ebp
	testl	%r13d, %r13d
	movsbl	%cl, %r14d
	cmovel	%r13d, %r14d
	testl	%r8d, %r8d
	movsbl	%dil, %edi
	cmovel	%r8d, %edi
	testl	%r12d, %r12d
	movsbl	%r15b, %r8d
	cmovel	%r12d, %r8d
	andl	%ebp, %r9d
	andl	%r14d, %edx
	andl	%edi, %r11d
	andl	%r8d, %eax
	addq	$64, %r10
	addq	$-4, %rbx
	je	.LBB2_104
.LBB2_96:                               # %vector.body1976
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%r10), %r14d
                                        # implicit-def: $bpl
	testl	%r14d, %r14d
	je	.LBB2_98
# %bb.97:                               # %pred.load.if1982
                                        #   in Loop: Header=BB2_96 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	13544(%rdi), %rdi
	movslq	-48(%r10), %r8
	movzbl	(%rdi,%r8), %ebp
.LBB2_98:                               # %pred.load.continue1983
                                        #   in Loop: Header=BB2_96 Depth=1
	movl	-36(%r10), %r13d
                                        # implicit-def: $cl
	testl	%r13d, %r13d
	je	.LBB2_100
# %bb.99:                               # %pred.load.if1984
                                        #   in Loop: Header=BB2_96 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	13544(%rdi), %rdi
	movslq	-32(%r10), %r8
	movzbl	(%rdi,%r8), %ecx
.LBB2_100:                              # %pred.load.continue1985
                                        #   in Loop: Header=BB2_96 Depth=1
	movl	-20(%r10), %r8d
                                        # implicit-def: $dil
	testl	%r8d, %r8d
	je	.LBB2_102
# %bb.101:                              # %pred.load.if1986
                                        #   in Loop: Header=BB2_96 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	13544(%rdi), %rdi
	movslq	-16(%r10), %r15
	movzbl	(%rdi,%r15), %edi
.LBB2_102:                              # %pred.load.continue1987
                                        #   in Loop: Header=BB2_96 Depth=1
	movl	-4(%r10), %r12d
                                        # implicit-def: $r15b
	testl	%r12d, %r12d
	je	.LBB2_95
# %bb.103:                              # %pred.load.if1988
                                        #   in Loop: Header=BB2_96 Depth=1
	movq	(%rsp), %r15                    # 8-byte Reload
	movq	13544(%r15), %r15
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%edi, %eax
	movl	%ecx, %edi
	movl	%ebp, %ecx
	movslq	(%r10), %rbp
	movzbl	(%r15,%rbp), %r15d
	movl	%ecx, %ebp
	movl	%edi, %ecx
	movl	%eax, %edi
	movl	8(%rsp), %eax                   # 4-byte Reload
	jmp	.LBB2_95
.LBB2_104:                              # %middle.block1969
	andl	%r9d, %edx
	andl	%edx, %r11d
	andl	%r11d, %eax
	movq	64(%rsp), %rdx                  # 8-byte Reload
	cmpq	%rdx, 72(%rsp)                  # 8-byte Folded Reload
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movl	80(%rsp), %ecx                  # 4-byte Reload
	jne	.LBB2_107
.LBB2_105:                              # %for.end529
	cmpl	$0, 128(%rsp)
	je	.LBB2_112
# %bb.106:                              # %cond.true533
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	132(%rsp), %rsi
	movsbl	(%rdx,%rsi), %esi
	jmp	.LBB2_113
.LBB2_107:                              # %for.body507.preheader
	movq	%rsi, %rdx
	shlq	$4, %rdx
	leaq	128(%rsp), %rdi
	addq	%rdi, %rdx
	addq	$20, %rdx
	jmp	.LBB2_110
	.p2align	4, 0x90
.LBB2_108:                              # %cond.true513
                                        #   in Loop: Header=BB2_110 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	13544(%rdi), %rdi
	movslq	(%rdx), %r8
	movsbl	(%rdi,%r8), %edi
.LBB2_109:                              # %cond.end523
                                        #   in Loop: Header=BB2_110 Depth=1
	andl	%edi, %eax
	incl	%esi
	addq	$16, %rdx
	cmpl	%esi, %r14d
	jle	.LBB2_105
.LBB2_110:                              # %for.body507
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rdx)
	jne	.LBB2_108
# %bb.111:                              #   in Loop: Header=BB2_110 Depth=1
	xorl	%edi, %edi
	jmp	.LBB2_109
.LBB2_112:
	xorl	%esi, %esi
.LBB2_113:                              # %if.end543
	movl	48(%rsp), %edx                  # 4-byte Reload
.LBB2_114:                              # %if.end543
	testl	%esi, %esi
	je	.LBB2_121
# %bb.115:                              # %if.end543
	testl	%ecx, %ecx
	je	.LBB2_121
# %bb.116:                              # %if.end543
	testl	%eax, %eax
	je	.LBB2_121
# %bb.117:                              # %if.end543
	testl	%edx, %edx
	je	.LBB2_121
# %bb.118:                              # %for.cond555.preheader
	movl	%r13d, %ecx
	sarl	%ecx
	movq	%r14, %rsi
	shlq	$4, %rsi
	xorl	%r15d, %r15d
	cmpl	$8, %r13d
	movl	$17, %eax
	movl	$5, %ebp
	movl	$5, %edx
	cmovel	%eax, %edx
	movl	%edx, 72(%rsp)                  # 4-byte Spill
	setne	%r15b
	movq	40(%rsp), %rdx                  # 8-byte Reload
	cmpl	$8, %edx
	cmovel	%eax, %ebp
	xorl	%r12d, %r12d
	cmpq	$8, %rdx
	setne	%r12b
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	136(%rax), %r11
	movq	(%r11), %r9
	movswq	118(%rsp), %rax
	movq	%rax, 464(%rsp)                 # 8-byte Spill
	movq	(%r9,%rax,8), %rax
	movswq	116(%rsp), %r8
	leaq	(%rax,%r8,2), %rdx
	movswq	142(%rsp), %rdi
	movq	%rdi, 456(%rsp)                 # 8-byte Spill
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	movq	(%r9,%rdi,8), %rdi
	movswq	140(%rsp), %r9
	movq	%r9, 448(%rsp)                  # 8-byte Spill
	movzwl	(%rdi,%r9,2), %r9d
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movzwl	-2(%rdx,%r13,2), %edi
	movl	%edi, 436(%rsp)                 # 4-byte Spill
	movl	%edi, %edx
	subl	%r9d, %edx
	imull	%ecx, %edx
	leaq	(%rsp,%rsi), %rdi
	addq	$128, %rdi
	leal	-1(%rcx), %r10d
	movslq	%ecx, %rsi
	cmpl	$1, %ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	%rdi, 424(%rsp)                 # 8-byte Spill
	movq	%r8, 416(%rsp)                  # 8-byte Spill
	movl	%r10d, 440(%rsp)                # 4-byte Spill
	movq	%r11, 472(%rsp)                 # 8-byte Spill
	jle	.LBB2_122
# %bb.119:                              # %for.body596.preheader
	movl	%r10d, %r8d
	cmpl	$17, %ecx
	jae	.LBB2_129
# %bb.120:
	xorl	%r10d, %r10d
	movq	%rdx, %rcx
	jmp	.LBB2_132
.LBB2_121:                              # %if.then553
	movl	$.L.str.3, %edi
	jmp	.LBB2_365
.LBB2_122:
	movq	%rdx, %rcx
	jmp	.LBB2_134
.LBB2_123:                              # %for.body480.preheader3
	movq	%r10, %rsi
	subq	%r8, %rsi
	shlq	$4, %r8
	leaq	128(%rsp), %rcx
	addq	%rcx, %r8
	addq	$36, %r8
	movl	%edi, %ecx
	jmp	.LBB2_125
	.p2align	4, 0x90
.LBB2_124:                              # %cond.end496.1
                                        #   in Loop: Header=BB2_125 Depth=1
	andl	%edx, %ecx
	andl	%edi, %ecx
	addq	$32, %r8
	addq	$-2, %rsi
	je	.LBB2_91
.LBB2_125:                              # %for.body480
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	cmpl	$0, -20(%r8)
	movl	$0, %edx
	je	.LBB2_127
# %bb.126:                              # %cond.true486
                                        #   in Loop: Header=BB2_125 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	-16(%r8), %r9
	movsbl	(%rdx,%r9), %edx
.LBB2_127:                              # %cond.end496
                                        #   in Loop: Header=BB2_125 Depth=1
	cmpl	$0, -4(%r8)
	je	.LBB2_124
# %bb.128:                              # %cond.true486.1
                                        #   in Loop: Header=BB2_125 Depth=1
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	13544(%rdi), %rdi
	movslq	(%r8), %r9
	movsbl	(%rdi,%r9), %edi
	jmp	.LBB2_124
.LBB2_129:                              # %vector.ph2003
	movl	%r15d, %r11d
	movl	%ebp, %ecx
	movl	%r8d, %r10d
	andl	$2147483632, %r10d              # imm = 0x7FFFFFF0
	movd	%edx, %xmm0
	addq	%rsi, %rsi
	movq	416(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rsi,%rdi,2), %rdi
	leaq	(%rax,%rdi), %rbp
	addq	$-10, %rbp
	addq	%rax, %rdi
	movaps	.LCPI2_0(%rip), %xmm1           # xmm1 = [2,3]
	movaps	.LCPI2_1(%rip), %xmm2           # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	pxor	%xmm3, %xmm3
	xorl	%r15d, %r15d
	movdqa	.LCPI2_4(%rip), %xmm8           # xmm8 = [13,13,13,13]
	movdqa	.LCPI2_5(%rip), %xmm9           # xmm9 = [16,16]
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	pxor	%xmm7, %xmm7
	.p2align	4, 0x90
.LBB2_130:                              # %vector.body2007
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%r15,2), %xmm4            # xmm4 = mem[0],zero
	movq	8(%rdi,%r15,2), %xmm14          # xmm14 = mem[0],zero
	movq	16(%rdi,%r15,2), %xmm13         # xmm13 = mem[0],zero
	movq	24(%rdi,%r15,2), %xmm12         # xmm12 = mem[0],zero
	punpcklwd	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	punpcklwd	%xmm3, %xmm14           # xmm14 = xmm14[0],xmm3[0],xmm14[1],xmm3[1],xmm14[2],xmm3[2],xmm14[3],xmm3[3]
	punpcklwd	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1],xmm13[2],xmm3[2],xmm13[3],xmm3[3]
	punpcklwd	%xmm3, %xmm12           # xmm12 = xmm12[0],xmm3[0],xmm12[1],xmm3[1],xmm12[2],xmm3[2],xmm12[3],xmm3[3]
	movq	(%rbp), %xmm15                  # xmm15 = mem[0],zero
	movq	-8(%rbp), %xmm5                 # xmm5 = mem[0],zero
	movq	-16(%rbp), %xmm6                # xmm6 = mem[0],zero
	pshuflw	$27, %xmm15, %xmm15             # xmm15 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm15           # xmm15 = xmm15[0],xmm3[0],xmm15[1],xmm3[1],xmm15[2],xmm3[2],xmm15[3],xmm3[3]
	psubd	%xmm15, %xmm4
	movq	-24(%rbp), %xmm15               # xmm15 = mem[0],zero
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm14
	pshuflw	$27, %xmm6, %xmm5               # xmm5 = xmm6[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm13
	pshuflw	$27, %xmm15, %xmm5              # xmm5 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm12
	movaps	%xmm2, %xmm15
	shufps	$136, %xmm1, %xmm15             # xmm15 = xmm15[0,2],xmm1[0,2]
	movaps	%xmm15, %xmm5
	psubd	.LCPI2_6(%rip), %xmm5
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI2_2(%rip), %xmm5
	paddd	%xmm4, %xmm0
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm14, %xmm4             # xmm4 = xmm14[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI2_3(%rip), %xmm5
	paddd	%xmm4, %xmm11
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm8, %xmm15
	paddd	%xmm4, %xmm10
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm15, %xmm12
	pshufd	$245, %xmm15, %xmm5             # xmm5 = xmm15[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm4, %xmm7
	addq	$16, %r15
	paddq	%xmm9, %xmm2
	paddq	%xmm9, %xmm1
	addq	$-32, %rbp
	cmpq	%r15, %r10
	jne	.LBB2_130
# %bb.131:                              # %middle.block2000
	paddd	%xmm0, %xmm11
	paddd	%xmm11, %xmm10
	paddd	%xmm10, %xmm7
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edx
	cmpl	%r8d, %r10d
	movl	%ecx, %ebp
	movq	%rdx, %rcx
	movl	%r11d, %r15d
	movq	424(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_134
.LBB2_132:                              # %for.body596.preheader2288
	movq	%rcx, %r11
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	64(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rcx,2), %rdx
	movq	416(%rsp), %rsi                 # 8-byte Reload
	addq	%rcx, %rsi
	movq	%r11, %rcx
	addq	%rsi, %rsi
	leal	(%r10,%r10), %r11d
	subq	%r11, %rsi
	addq	%rsi, %rax
	addq	$-4, %rax
	.p2align	4, 0x90
.LBB2_133:                              # %for.body596
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx,%r10,2), %esi
	incq	%r10
	movzwl	(%rax), %r11d
	subl	%r11d, %esi
	movl	%r10d, %r11d
	imull	%esi, %r11d
	addl	%r11d, %ecx
	addq	$-2, %rax
	cmpq	%r10, %r8
	jne	.LBB2_133
.LBB2_134:                              # %for.end612
	movl	%ebp, %r10d
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	leal	-1(%rbx), %ecx
	leal	(,%r13,2), %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	addl	$5, %r15d
	leal	(%r14,%r14), %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movl	%r12d, %r11d
	addl	$5, %r11d
	movswq	14(%rdi), %rax
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	(%r12,%rax,8), %rax
	movswq	12(%rdi), %rdx
	movzwl	(%rax,%rdx,2), %eax
	movl	%eax, %r8d
	subl	%r9d, %r8d
	imull	%ebx, %r8d
	cmpl	$2, %ebx
	movl	%r15d, 124(%rsp)                # 4-byte Spill
	movl	%r11d, 412(%rsp)                # 4-byte Spill
	movl	%ecx, 444(%rsp)                 # 4-byte Spill
	movq	%rax, 488(%rsp)                 # 8-byte Spill
	jl	.LBB2_142
# %bb.135:                              # %for.body639.preheader
	movl	%ecx, %ebp
	xorl	%r9d, %r9d
	cmpl	$5, %ebx
	jae	.LBB2_137
# %bb.136:
	xorl	%edx, %edx
	jmp	.LBB2_140
.LBB2_137:                              # %vector.ph2035
	movl	%r10d, 120(%rsp)                # 4-byte Spill
	movq	%rbp, 480(%rsp)                 # 8-byte Spill
	movl	%ebp, %edx
	andl	$-4, %edx
	movslq	%ebx, %rax
	shlq	$4, %rax
	leaq	128(%rsp), %rsi
	leaq	(%rax,%rsi), %r15
	addq	$-2, %r15
	leaq	(%rax,%rsi), %r11
	addq	$78, %r11
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_138:                              # %vector.body2039
                                        # =>This Inner Loop Header: Depth=1
	movswq	-48(%r11), %rax
	movswq	-32(%r11), %rsi
	movswq	-16(%r11), %r10
	movswq	(%r11), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx,%rsi,8), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx,%r10,8), %r10
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx,%r12,8), %r12
	movswq	-50(%r11), %r13
	movswq	-34(%r11), %rdi
	movzwl	(%rax,%r13,2), %eax
	movswq	-18(%r11), %rcx
	movzwl	(%rsi,%rdi,2), %r13d
	movswq	-2(%r11), %rdi
	movzwl	(%r10,%rcx,2), %esi
	movzwl	(%r12,%rdi,2), %r10d
	movq	8(%rsp), %r12                   # 8-byte Reload
	movswq	(%r15), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	-2(%r15), %rdi
	movzwl	(%rcx,%rdi,2), %ecx
	movswq	-16(%r15), %rdi
	movq	(%r12,%rdi,8), %rdi
	subl	%ecx, %eax
	movswq	-18(%r15), %rcx
	movzwl	(%rdi,%rcx,2), %ecx
	movswq	-32(%r15), %rdi
	movq	(%r12,%rdi,8), %rdi
	subl	%ecx, %r13d
	movswq	-34(%r15), %rcx
	movzwl	(%rdi,%rcx,2), %ecx
	movswq	-48(%r15), %rdi
	movq	(%r12,%rdi,8), %rdi
	subl	%ecx, %esi
	movswq	-50(%r15), %rcx
	movzwl	(%rdi,%rcx,2), %ecx
	subl	%ecx, %r10d
	leal	1(%r14), %ecx
	imull	%eax, %ecx
	addl	%ecx, %r8d
	leal	2(%r14), %eax
	imull	%r13d, %eax
	addl	%eax, %r9d
	leal	3(%r14), %eax
	imull	%esi, %eax
	addl	%eax, %ebx
	addq	$4, %r14
	movl	%r14d, %eax
	imull	%r10d, %eax
	addl	%eax, %ebp
	addq	$-64, %r15
	addq	$64, %r11
	cmpq	%r14, %rdx
	jne	.LBB2_138
# %bb.139:                              # %middle.block2032
	addl	%r8d, %r9d
	addl	%r9d, %ebx
	addl	%ebx, %ebp
	movl	%ebp, %r8d
	movq	480(%rsp), %rbp                 # 8-byte Reload
	cmpl	%ebp, %edx
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movl	120(%rsp), %r10d                # 4-byte Reload
	movl	124(%rsp), %r15d                # 4-byte Reload
	movl	412(%rsp), %r11d                # 4-byte Reload
	je	.LBB2_142
.LBB2_140:                              # %for.body639.preheader2283
	movslq	%ebx, %rax
	leaq	(%rdx,%rax), %rcx
	shlq	$4, %rax
	movq	%rdx, %rsi
	shlq	$4, %rsi
	subq	%rsi, %rax
	leaq	128(%rsp), %rsi
	addq	%rsi, %rax
	addq	$-2, %rax
	shlq	$4, %rcx
	addq	%rcx, %rsi
	addq	$30, %rsi
	.p2align	4, 0x90
.LBB2_141:                              # %for.body639
                                        # =>This Inner Loop Header: Depth=1
	incq	%rdx
	movswq	(%rsi), %rcx
	movq	(%r12,%rcx,8), %rcx
	movswq	-2(%rsi), %rdi
	movzwl	(%rcx,%rdi,2), %ecx
	movswq	(%rax), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	-2(%rax), %r9
	movzwl	(%rdi,%r9,2), %edi
	subl	%edi, %ecx
	movl	%edx, %edi
	imull	%ecx, %edi
	addl	%edi, %r8d
	addq	$-16, %rax
	addq	$16, %rsi
	cmpq	%rdx, %rbp
	jne	.LBB2_141
.LBB2_142:                              # %for.end676
	movq	496(%rsp), %rdx                 # 8-byte Reload
	imull	72(%rsp), %edx                  # 4-byte Folded Reload
	addl	80(%rsp), %edx                  # 4-byte Folded Reload
	movl	%r15d, %ecx
	sarl	%cl, %edx
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	1248(%rax), %rax
	movl	%r10d, %ebp
	imull	%r10d, %r8d
	addl	64(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r11d, %ecx
	sarl	%cl, %r8d
	cmpl	$0, 40(%rsp)                    # 4-byte Folded Reload
	jle	.LBB2_152
# %bb.143:                              # %for.cond718.preheader.lr.ph
	testl	%r13d, %r13d
	jle	.LBB2_152
# %bb.144:                              # %for.cond718.preheader.us.preheader
	movl	%ebp, 120(%rsp)                 # 4-byte Spill
	movq	8(%rax), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	849076(%rcx), %ecx
	movq	488(%rsp), %r12                 # 8-byte Reload
	addl	436(%rsp), %r12d                # 4-byte Folded Reload
	shll	$4, %r12d
	leal	16(%r12), %esi
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	movl	%r13d, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	movl	$2, %esi
	movq	48(%rsp), %r14                  # 8-byte Reload
	subl	%r14d, %esi
	movq	%rdx, %r15
	imull	%r15d, %esi
	movl	$1, %edi
	movl	$1, %r10d
	subl	%ebx, %r10d
	imull	%r8d, %r10d
	addl	%r10d, %esi
	leal	(%r12,%rsi), %r11d
	addl	$16, %r11d
	leal	(%rdx,%rdx), %ebx
	subl	%r14d, %edi
	imull	%r15d, %edi
	addl	%r10d, %edi
	leal	(%r12,%rdi), %r10d
	addl	$16, %r10d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB2_146
	.p2align	4, 0x90
.LBB2_145:                              # %for.cond718.for.inc740_crit_edge.us
                                        #   in Loop: Header=BB2_146 Depth=1
	incq	%r15
	addl	%r8d, %r11d
	addl	%r8d, %r10d
	cmpq	40(%rsp), %r15                  # 8-byte Folded Reload
	je	.LBB2_153
.LBB2_146:                              # %for.cond718.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_149 Depth 2
	cmpl	$1, %r13d
	jne	.LBB2_148
# %bb.147:                              #   in Loop: Header=BB2_146 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB2_150
	.p2align	4, 0x90
.LBB2_148:                              # %for.body721.us.preheader
                                        #   in Loop: Header=BB2_146 Depth=1
	movl	%r10d, %esi
	movl	%r11d, %r13d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_149:                              # %for.body721.us
                                        #   Parent Loop BB2_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %r12
	movw	%di, (%r12,%rbp,2)
	movl	%r13d, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %r12
	movw	%di, 2(%r12,%rbp,2)
	addq	$2, %rbp
	addl	%ebx, %r13d
	addl	%ebx, %esi
	cmpq	%rbp, %r9
	jne	.LBB2_149
.LBB2_150:                              # %for.cond718.for.inc740_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB2_146 Depth=1
	movq	24(%rsp), %r13                  # 8-byte Reload
	testb	$1, %r13b
	je	.LBB2_145
# %bb.151:                              # %for.body721.us.epil
                                        #   in Loop: Header=BB2_146 Depth=1
	movl	%r15d, %esi
	subl	16(%rsp), %esi                  # 4-byte Folded Reload
	incl	%esi
	imull	%r8d, %esi
	addl	8(%rsp), %esi                   # 4-byte Folded Reload
	movl	%ebp, %edi
	subl	48(%rsp), %edi                  # 4-byte Folded Reload
	incl	%edi
	imull	%edx, %edi
	addl	%esi, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %rsi
	movw	%di, (%rsi,%rbp,2)
	jmp	.LBB2_145
.LBB2_152:
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	416(%rsp), %r10                 # 8-byte Reload
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	456(%rsp), %rdx                 # 8-byte Reload
	movq	448(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB2_154
.LBB2_153:                              # %for.cond555.loopexit.loopexit
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	136(%rax), %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	1248(%rax), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movswq	118(%rsp), %rax
	movswq	116(%rsp), %r10
	movswq	142(%rsp), %rdx
	movswq	140(%rsp), %rsi
	movq	56(%rsp), %r14                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movl	120(%rsp), %ebp                 # 4-byte Reload
.LBB2_154:                              # %for.cond555.loopexit
	movq	8(%rcx), %rdi
	movq	(%rdi,%rax,8), %r15
	leaq	(%r15,%r10,2), %rax
	movzwl	-2(%rax,%r13,2), %ecx
	movq	%rdi, %r12
	movq	(%rdi,%rdx,8), %rdx
	movzwl	(%rdx,%rsi,2), %r11d
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movl	%ecx, %edi
	subl	%r11d, %edi
	movq	48(%rsp), %rdx                  # 8-byte Reload
	imull	%edx, %edi
	cmpl	$2, %edx
	movq	424(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	jl	.LBB2_162
# %bb.155:                              # %for.body596.preheader.1
	movl	440(%rsp), %r8d                 # 4-byte Reload
	leaq	(%rax,%rsi,2), %r9
	cmpl	$17, %edx
	jae	.LBB2_157
# %bb.156:
	xorl	%eax, %eax
	jmp	.LBB2_160
.LBB2_157:                              # %vector.ph2054
	movl	%r8d, %eax
	andl	$2147483632, %eax               # imm = 0x7FFFFFF0
	movd	%edi, %xmm0
	leaq	(%rsi,%rsi), %rdx
	leaq	(%rdx,%r10,2), %rdx
	addq	%r15, %rdx
	addq	$-10, %rdx
	movaps	.LCPI2_0(%rip), %xmm1           # xmm1 = [2,3]
	movaps	.LCPI2_1(%rip), %xmm2           # xmm2 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	pxor	%xmm3, %xmm3
	xorl	%edi, %edi
	movdqa	.LCPI2_4(%rip), %xmm8           # xmm8 = [13,13,13,13]
	movdqa	.LCPI2_5(%rip), %xmm9           # xmm9 = [16,16]
	pxor	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	pxor	%xmm7, %xmm7
	.p2align	4, 0x90
.LBB2_158:                              # %vector.body2058
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r9,%rdi,2), %xmm4             # xmm4 = mem[0],zero
	movq	8(%r9,%rdi,2), %xmm14           # xmm14 = mem[0],zero
	movq	16(%r9,%rdi,2), %xmm13          # xmm13 = mem[0],zero
	movq	24(%r9,%rdi,2), %xmm12          # xmm12 = mem[0],zero
	punpcklwd	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1],xmm4[2],xmm3[2],xmm4[3],xmm3[3]
	punpcklwd	%xmm3, %xmm14           # xmm14 = xmm14[0],xmm3[0],xmm14[1],xmm3[1],xmm14[2],xmm3[2],xmm14[3],xmm3[3]
	punpcklwd	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1],xmm13[2],xmm3[2],xmm13[3],xmm3[3]
	punpcklwd	%xmm3, %xmm12           # xmm12 = xmm12[0],xmm3[0],xmm12[1],xmm3[1],xmm12[2],xmm3[2],xmm12[3],xmm3[3]
	movq	(%rdx), %xmm15                  # xmm15 = mem[0],zero
	movq	-8(%rdx), %xmm5                 # xmm5 = mem[0],zero
	movq	-16(%rdx), %xmm6                # xmm6 = mem[0],zero
	pshuflw	$27, %xmm15, %xmm15             # xmm15 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm15           # xmm15 = xmm15[0],xmm3[0],xmm15[1],xmm3[1],xmm15[2],xmm3[2],xmm15[3],xmm3[3]
	psubd	%xmm15, %xmm4
	movq	-24(%rdx), %xmm15               # xmm15 = mem[0],zero
	pshuflw	$27, %xmm5, %xmm5               # xmm5 = xmm5[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm14
	pshuflw	$27, %xmm6, %xmm5               # xmm5 = xmm6[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm13
	pshuflw	$27, %xmm15, %xmm5              # xmm5 = xmm15[3,2,1,0,4,5,6,7]
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psubd	%xmm5, %xmm12
	movaps	%xmm2, %xmm15
	shufps	$136, %xmm1, %xmm15             # xmm15 = xmm15[0,2],xmm1[0,2]
	movaps	%xmm15, %xmm5
	psubd	.LCPI2_6(%rip), %xmm5
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI2_2(%rip), %xmm5
	paddd	%xmm4, %xmm0
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm14, %xmm4             # xmm4 = xmm14[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movaps	%xmm15, %xmm5
	paddd	.LCPI2_3(%rip), %xmm5
	paddd	%xmm4, %xmm11
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm8, %xmm15
	paddd	%xmm4, %xmm10
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm15, %xmm12
	pshufd	$245, %xmm15, %xmm5             # xmm5 = xmm15[1,1,3,3]
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	paddd	%xmm4, %xmm7
	addq	$16, %rdi
	paddq	%xmm9, %xmm2
	paddq	%xmm9, %xmm1
	addq	$-32, %rdx
	cmpq	%rdi, %rax
	jne	.LBB2_158
# %bb.159:                              # %middle.block2051
	paddd	%xmm0, %xmm11
	paddd	%xmm11, %xmm10
	paddd	%xmm10, %xmm7
	pshufd	$238, %xmm7, %xmm0              # xmm0 = xmm7[2,3,2,3]
	paddd	%xmm7, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddd	%xmm0, %xmm1
	movd	%xmm1, %edi
	cmpl	%r8d, %eax
	je	.LBB2_162
.LBB2_160:                              # %for.body596.1.preheader
	addq	%rsi, %r10
	addq	%r10, %r10
	leal	(%rax,%rax), %edx
	subq	%rdx, %r10
	leaq	(%r10,%r15), %rdx
	addq	$-4, %rdx
	.p2align	4, 0x90
.LBB2_161:                              # %for.body596.1
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r9,%rax,2), %esi
	incq	%rax
	movzwl	(%rdx), %r10d
	subl	%r10d, %esi
	movl	%eax, %r10d
	imull	%esi, %r10d
	addl	%r10d, %edi
	addq	$-2, %rdx
	cmpq	%rax, %r8
	jne	.LBB2_161
.LBB2_162:                              # %for.end612.1
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movswq	14(%rcx), %rax
	movq	(%r12,%rax,8), %rax
	movswq	12(%rcx), %rdx
	movzwl	(%rax,%rdx,2), %r15d
	movl	%r15d, %r9d
	subl	%r11d, %r9d
	imull	%ebx, %r9d
	cmpl	$2, %ebx
	jl	.LBB2_165
# %bb.163:                              # %for.body639.preheader.1
	movq	%rbx, %rax
	movl	444(%rsp), %ebx                 # 4-byte Reload
	xorl	%ecx, %ecx
	movslq	%eax, %r8
	cmpl	$5, %eax
	jae	.LBB2_166
# %bb.164:
	xorl	%edx, %edx
	movq	32(%rsp), %r11                  # 8-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	jmp	.LBB2_169
.LBB2_165:
	movq	32(%rsp), %r11                  # 8-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	jmp	.LBB2_171
.LBB2_166:                              # %vector.ph2091
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movl	%ebp, 120(%rsp)                 # 4-byte Spill
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movl	%ebx, %edx
	andl	$-4, %edx
	movq	%r8, 424(%rsp)                  # 8-byte Spill
	movq	%r8, %rsi
	shlq	$4, %rsi
	leaq	128(%rsp), %r8
	leaq	(%rsi,%r8), %r14
	addq	$-2, %r14
	movq	%r12, %rbx
	leaq	(%rsi,%r8), %r15
	addq	$78, %r15
	xorl	%r10d, %r10d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_167:                              # %vector.body2095
                                        # =>This Inner Loop Header: Depth=1
	movswq	-48(%r15), %rsi
	movswq	-32(%r15), %r8
	movswq	-16(%r15), %r11
	movswq	(%r15), %r13
	movq	(%rbx,%rsi,8), %rsi
	movq	(%rbx,%r8,8), %r8
	movq	(%rbx,%r11,8), %rax
	movq	(%rbx,%r13,8), %rdi
	movswq	-50(%r15), %r11
	movswq	-34(%r15), %r13
	movzwl	(%rsi,%r11,2), %r11d
	movswq	-18(%r15), %rsi
	movzwl	(%r8,%r13,2), %r13d
	movswq	-2(%r15), %r8
	movzwl	(%rax,%rsi,2), %esi
	movzwl	(%rdi,%r8,2), %r8d
	movswq	(%r14), %rax
	movq	(%rbx,%rax,8), %rax
	movswq	-2(%r14), %rdi
	movzwl	(%rax,%rdi,2), %eax
	movswq	-16(%r14), %rdi
	movq	(%rbx,%rdi,8), %rdi
	subl	%eax, %r11d
	movswq	-18(%r14), %rax
	movzwl	(%rdi,%rax,2), %eax
	movswq	-32(%r14), %rdi
	movq	(%rbx,%rdi,8), %rdi
	subl	%eax, %r13d
	movswq	-34(%r14), %rax
	movzwl	(%rdi,%rax,2), %eax
	movswq	-48(%r14), %rdi
	movq	(%rbx,%rdi,8), %rdi
	subl	%eax, %esi
	movswq	-50(%r14), %rax
	movzwl	(%rdi,%rax,2), %eax
	subl	%eax, %r8d
	leal	1(%r10), %eax
	imull	%r11d, %eax
	addl	%eax, %r9d
	leal	2(%r10), %eax
	imull	%r13d, %eax
	addl	%eax, %ecx
	leal	3(%r10), %eax
	imull	%esi, %eax
	addl	%eax, %r12d
	addq	$4, %r10
	movl	%r10d, %eax
	imull	%r8d, %eax
	addl	%eax, %ebp
	addq	$-64, %r14
	addq	$64, %r15
	cmpq	%r10, %rdx
	jne	.LBB2_167
# %bb.168:                              # %middle.block2088
	addl	%r9d, %ecx
	addl	%ecx, %r12d
	addl	%r12d, %ebp
	movl	%ebp, %r9d
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, %edx
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %r14                  # 8-byte Reload
	movl	120(%rsp), %ebp                 # 4-byte Reload
	movl	124(%rsp), %ecx                 # 4-byte Reload
	movq	%rbx, %r12
	movq	%rax, %rbx
	movq	96(%rsp), %r15                  # 8-byte Reload
	movq	424(%rsp), %r8                  # 8-byte Reload
	je	.LBB2_171
.LBB2_169:                              # %for.body639.1.preheader
	leaq	(%rdx,%r8), %rax
	shlq	$4, %r8
	movq	%rdx, %rsi
	shlq	$4, %rsi
	subq	%rsi, %r8
	leaq	128(%rsp), %rdi
	leaq	(%r8,%rdi), %rsi
	addq	$-2, %rsi
	shlq	$4, %rax
	leaq	(%rax,%rdi), %r8
	addq	$30, %r8
	.p2align	4, 0x90
.LBB2_170:                              # %for.body639.1
                                        # =>This Inner Loop Header: Depth=1
	incq	%rdx
	movswq	(%r8), %rax
	movq	(%r12,%rax,8), %rax
	movswq	-2(%r8), %rdi
	movzwl	(%rax,%rdi,2), %eax
	movswq	(%rsi), %rdi
	movq	(%r12,%rdi,8), %rdi
	movswq	-2(%rsi), %r10
	movzwl	(%rdi,%r10,2), %edi
	subl	%edi, %eax
	movl	%edx, %edi
	imull	%eax, %edi
	addl	%edi, %r9d
	addq	$-16, %rsi
	addq	$16, %r8
	cmpq	%rdx, %rbx
	jne	.LBB2_170
.LBB2_171:                              # %for.end676.1
	movq	(%rsp), %rdx                    # 8-byte Reload
	imull	72(%rsp), %edx                  # 4-byte Folded Reload
	addl	80(%rsp), %edx                  # 4-byte Folded Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edx
	imull	%ebp, %r9d
	addl	64(%rsp), %r9d                  # 4-byte Folded Reload
	movl	412(%rsp), %ecx                 # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r9d
	testl	%r14d, %r14d
	jle	.LBB2_366
# %bb.172:                              # %for.cond718.preheader.lr.ph.1
	testl	%r13d, %r13d
	jle	.LBB2_366
# %bb.173:                              # %for.cond718.preheader.us.preheader.1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	16(%rax), %rax
	movl	849080(%r11), %ecx
	addl	40(%rsp), %r15d                 # 4-byte Folded Reload
	shll	$4, %r15d
	leal	16(%r15), %esi
	movl	%esi, (%rsp)                    # 4-byte Spill
	movl	%r13d, %r10d
	andl	$2147483646, %r10d              # imm = 0x7FFFFFFE
	movl	$2, %esi
	movq	48(%rsp), %r14                  # 8-byte Reload
	subl	%r14d, %esi
	movq	%r15, %r12
	movq	%rdx, %r15
	imull	%r15d, %esi
	movl	$1, %edi
	movl	$1, %r8d
	subl	16(%rsp), %r8d                  # 4-byte Folded Reload
	imull	%r9d, %r8d
	addl	%r8d, %esi
	leal	(%r12,%rsi), %r11d
	addl	$16, %r11d
	leal	(%rdx,%rdx), %ebx
	subl	%r14d, %edi
	imull	%r15d, %edi
	addl	%r8d, %edi
	leal	(%r12,%rdi), %r8d
	addl	$16, %r8d
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB2_175
	.p2align	4, 0x90
.LBB2_174:                              # %for.cond718.for.inc740_crit_edge.us.1
                                        #   in Loop: Header=BB2_175 Depth=1
	incq	%r15
	addl	%r9d, %r11d
	addl	%r9d, %r8d
	cmpq	56(%rsp), %r15                  # 8-byte Folded Reload
	je	.LBB2_366
.LBB2_175:                              # %for.cond718.preheader.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_178 Depth 2
	cmpl	$1, %r13d
	jne	.LBB2_177
# %bb.176:                              #   in Loop: Header=BB2_175 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB2_179
	.p2align	4, 0x90
.LBB2_177:                              # %for.body721.us.1.preheader
                                        #   in Loop: Header=BB2_175 Depth=1
	movl	%r8d, %esi
	movl	%r11d, %ebp
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB2_178:                              # %for.body721.us.1
                                        #   Parent Loop BB2_175 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%esi, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %r13
	movw	%di, (%r13,%r12,2)
	movl	%ebp, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %r13
	movw	%di, 2(%r13,%r12,2)
	addq	$2, %r12
	addl	%ebx, %ebp
	addl	%ebx, %esi
	cmpq	%r12, %r10
	jne	.LBB2_178
.LBB2_179:                              # %for.cond718.for.inc740_crit_edge.us.1.unr-lcssa
                                        #   in Loop: Header=BB2_175 Depth=1
	movq	24(%rsp), %r13                  # 8-byte Reload
	testb	$1, %r13b
	je	.LBB2_174
# %bb.180:                              # %for.body721.us.1.epil
                                        #   in Loop: Header=BB2_175 Depth=1
	movl	%r15d, %esi
	subl	16(%rsp), %esi                  # 4-byte Folded Reload
	incl	%esi
	imull	%r9d, %esi
	addl	(%rsp), %esi                    # 4-byte Folded Reload
	movl	%r12d, %edi
	subl	48(%rsp), %edi                  # 4-byte Folded Reload
	incl	%edi
	imull	%edx, %edi
	addl	%esi, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	cmovlel	%r14d, %edi
	cmpl	%ecx, %edi
	cmovgel	%ecx, %edi
	movq	(%rax,%r15,8), %rsi
	movw	%di, (%rsi,%r12,2)
	jmp	.LBB2_174
.LBB2_181:
	xorl	%r9d, %r9d
.LBB2_182:                              # %cond.end40.prol
	andl	%r8d, %r9d
	movl	%r9d, %r8d
.LBB2_183:                              # %for.body24.prol.loopexit
	leaq	-1(%r14), %rax
	cmpq	%rax, %rsi
	jne	.LBB2_329
.LBB2_184:                              # %for.cond47.preheader
	testl	%r10d, %r10d
	movl	%r9d, 72(%rsp)                  # 4-byte Spill
	jle	.LBB2_198
# %bb.185:                              # %for.body50.lr.ph
	leal	1(%rbx), %eax
	cmpl	%eax, %r10d
	cmovgl	%r10d, %eax
	notl	%ebx
	addl	%eax, %ebx
	movl	$1, 56(%rsp)                    # 4-byte Folded Spill
	cmpl	$2, %ebx
	ja	.LBB2_187
# %bb.186:
	movq	%r14, %rdi
	jmp	.LBB2_324
.LBB2_187:                              # %vector.ph2207
	movl	%ebp, 24(%rsp)                  # 4-byte Spill
	incq	%rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	andq	$-4, %rbx
	leaq	(%rbx,%r14), %rdi
	shlq	$4, %r14
	leaq	128(%rsp), %rax
	leaq	(%r14,%rax), %r10
	addq	$68, %r10
	movl	$-1, %edx
	movl	$1, %r9d
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movl	$-1, %r11d
	movl	$-1, 56(%rsp)                   # 4-byte Folded Spill
	jmp	.LBB2_189
	.p2align	4, 0x90
.LBB2_188:                              # %pred.load.continue2226
                                        #   in Loop: Header=BB2_189 Depth=1
	testl	%eax, %eax
	movsbl	%cl, %ecx
	cmovel	%eax, %ecx
	testl	%r14d, %r14d
	movsbl	%r15b, %eax
	cmovel	%r14d, %eax
	testl	%ebp, %ebp
	movsbl	%r13b, %esi
	cmovel	%ebp, %esi
	testl	%r8d, %r8d
	movsbl	%r12b, %ebp
	cmovel	%r8d, %ebp
	andl	%ecx, %r9d
	andl	%eax, %edx
	andl	%esi, %r11d
	andl	%ebp, 56(%rsp)                  # 4-byte Folded Spill
	addq	$64, %r10
	addq	$-4, %rbx
	movq	48(%rsp), %r13                  # 8-byte Reload
	je	.LBB2_197
.LBB2_189:                              # %vector.body2212
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%r10), %eax
                                        # implicit-def: $cl
	testl	%eax, %eax
	je	.LBB2_191
# %bb.190:                              # %pred.load.if2219
                                        #   in Loop: Header=BB2_189 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	-48(%r10), %rsi
	movzbl	(%rcx,%rsi), %ecx
.LBB2_191:                              # %pred.load.continue2220
                                        #   in Loop: Header=BB2_189 Depth=1
	movl	-36(%r10), %r14d
                                        # implicit-def: $r15b
	testl	%r14d, %r14d
	je	.LBB2_193
# %bb.192:                              # %pred.load.if2221
                                        #   in Loop: Header=BB2_189 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	-32(%r10), %r8
	movzbl	(%rsi,%r8), %r15d
.LBB2_193:                              # %pred.load.continue2222
                                        #   in Loop: Header=BB2_189 Depth=1
	movl	-20(%r10), %ebp
                                        # implicit-def: $r13b
	testl	%ebp, %ebp
	je	.LBB2_195
# %bb.194:                              # %pred.load.if2223
                                        #   in Loop: Header=BB2_189 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	-16(%r10), %r8
	movzbl	(%rsi,%r8), %r13d
.LBB2_195:                              # %pred.load.continue2224
                                        #   in Loop: Header=BB2_189 Depth=1
	movl	-4(%r10), %r8d
                                        # implicit-def: $r12b
	testl	%r8d, %r8d
	je	.LBB2_188
# %bb.196:                              # %pred.load.if2225
                                        #   in Loop: Header=BB2_189 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	(%r10), %r12
	movzbl	(%rsi,%r12), %r12d
	jmp	.LBB2_188
.LBB2_197:                              # %middle.block2204
	andl	%r9d, %edx
	andl	%edx, %r11d
	andl	%r11d, 56(%rsp)                 # 4-byte Folded Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 16(%rsp)                  # 8-byte Folded Reload
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	movl	24(%rsp), %ebp                  # 4-byte Reload
	jne	.LBB2_324
.LBB2_198:
	movl	%ebp, 8(%rsp)                   # 4-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 849100(%r11)
	jle	.LBB2_366
.LBB2_199:                              # %for.cond96.preheader.lr.ph
	decq	%r13
	movq	136(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	1248(%rax), %rax
	movq	8(%rax), %r8
	movq	16(%rax), %r9
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	sete	%al
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	setne	%cl
	andb	%al, %cl
	movb	%cl, 96(%rsp)                   # 1-byte Spill
	movq	%r13, %rax
	shlq	$6, %rax
	leaq	intrapred_chroma_dc.block_pos+12(%rax), %rdi
	shlq	$5, %r13
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB2_203
.LBB2_200:                              # %if.then40.i1046.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %ebp
.LBB2_201:                              # %sw.epilog.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB2_202:                              # %sw.epilog.3
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$3, %r14d
	movq	(%r8,%r14), %rax
	addl	%r15d, %r15d
	movw	%r12w, (%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	incq	%rbx
	movslq	849100(%r11), %rax
	addq	$16, %rdi
	cmpq	%rax, %rbx
	jge	.LBB2_366
.LBB2_203:                              # %for.cond96.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movzbl	subblk_offset_y(%r13,%rbx,4), %r14d
	movzbl	subblk_offset_x(%r13,%rbx,4), %r15d
	movl	849064(%r11), %r12d
	movl	849068(%r11), %ebp
	movl	-12(%rdi), %eax
	cmpq	$3, %rax
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	ja	.LBB2_236
# %bb.204:                              # %for.cond96.preheader
                                        #   in Loop: Header=BB2_203 Depth=1
	jmpq	*.LJTI2_1(,%rax,8)
.LBB2_205:                              # %sw.bb123
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_220
# %bb.206:                              # %if.end.i
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rax
	sarq	$48, %rax
	leaq	(%r15,%r15), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	(%rdx,%rax,8), %rsi
	movq	%rcx, %rdx
	shrq	$16, %rdx
	sarl	$16, %edx
	movslq	%edx, %rdx
	movq	(%rsi,%rdx,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %ebx
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_221
# %bb.207:                              # %if.then35.i
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %ebx
	shrl	$2, %ebx
	movl	%ebx, %r12d
	jmp	.LBB2_223
	.p2align	4, 0x90
.LBB2_208:                              # %sw.bb137
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	jne	.LBB2_214
# %bb.209:                              # %if.else.i1128
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_227
	jmp	.LBB2_236
	.p2align	4, 0x90
.LBB2_210:                              # %sw.bb144
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_215
# %bb.211:                              # %if.end.i1242
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_216
# %bb.212:                              # %if.then35.i1303
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movq	%r15, %rcx
	movl	%eax, %r12d
	jmp	.LBB2_218
.LBB2_213:                              # %sw.bb130
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_226
.LBB2_214:                              # %for.end.i1225
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	leal	(%r15,%r15), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rcx,8), %rsi
	addq	%rdx, %rsi
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	movq	(%rsi,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r12d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rcx,8), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movzwl	2(%rdx,%rax,2), %esi
	addl	%ecx, %esi
	movzwl	4(%rdx,%rax,2), %ecx
	addl	%esi, %ecx
	leaq	(%rdx,%rax,2), %rax
	addq	$6, %rax
	jmp	.LBB2_228
.LBB2_215:                              # %if.end.thread.i1306
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_236
.LBB2_216:                              # %if.end28.i1260
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_229
# %bb.217:                              # %if.then31.i1294
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	%r15, %rcx
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_218:                              # %if.end.i1310
                                        #   in Loop: Header=BB2_203 Depth=1
	addq	%rcx, %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	(%rax,%rdx,8), %rcx
	movzwl	(%rcx,%rsi,2), %eax
	movzwl	2(%rcx,%rsi,2), %edx
	addl	%eax, %edx
	movzwl	4(%rcx,%rsi,2), %eax
	movzwl	6(%rcx,%rsi,2), %ebp
	addl	%eax, %ebp
	addl	%edx, %ebp
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_225
# %bb.219:                              # %if.end.i1310.if.end28.i1328_crit_edge
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$4, %r10d
	movswq	142(%rsp,%r10), %rax
	movswq	140(%rsp,%r10), %rcx
	movswq	158(%rsp,%r10), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movswq	156(%rsp,%r10), %rsi
	movswq	174(%rsp,%r10), %rdi
	movswq	172(%rsp,%r10), %r11
	movswq	190(%rsp,%r10), %rdx
	movswq	188(%rsp,%r10), %rbx
	jmp	.LBB2_230
.LBB2_220:                              # %if.end.thread.i
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%ebx, %ebx
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_236
.LBB2_221:                              # %if.end28.i
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %eax
	shll	$4, %eax
	movswq	142(%rsp,%rax), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rax), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rax), %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rax), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rax), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rax), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rax), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rax), %rax
	movzwl	(%r12,%rax,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_232
# %bb.222:                              # %if.then31.i
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%ebx, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rax
	sarq	$48, %rax
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rdx
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_223:                              # %if.end.i988
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	(%r15,%r15), %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rax,8), %rcx
	movzwl	(%rcx,%rdx,2), %eax
	movzwl	2(%rcx,%rdx,2), %esi
	addl	%eax, %esi
	movzwl	4(%rcx,%rdx,2), %eax
	movzwl	6(%rcx,%rdx,2), %ebp
	addl	%eax, %ebp
	addl	%esi, %ebp
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_225
# %bb.224:                              # %if.end.i988.if.end28.i1006_crit_edge
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$4, %r10d
	movswq	142(%rsp,%r10), %rcx
	movswq	140(%rsp,%r10), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movswq	158(%rsp,%r10), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movswq	156(%rsp,%r10), %rsi
	movswq	174(%rsp,%r10), %rdi
	movswq	172(%rsp,%r10), %r11
	movswq	190(%rsp,%r10), %rdx
	movswq	188(%rsp,%r10), %rax
	jmp	.LBB2_233
.LBB2_225:                              # %if.then35.i1049
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_235
.LBB2_226:                              # %if.else.i
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_236
.LBB2_227:                              # %for.end32.i1072
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r14d, %eax
	shll	$4, %eax
	movswq	158(%rsp,%rax), %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%rcx,8), %rdx
	movswq	156(%rsp,%rax), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movswq	174(%rsp,%rax), %rdi
	movq	(%r12,%rdi,8), %r10
	movswq	172(%rsp,%rax), %r11
	movzwl	(%r10,%r11,2), %r10d
	addl	%edx, %r10d
	movswq	190(%rsp,%rax), %rdx
	movq	(%r12,%rdx,8), %rbx
	movswq	188(%rsp,%rax), %r13
	movzwl	(%rbx,%r13,2), %ebx
	movswq	206(%rsp,%rax), %rbp
	movq	(%r12,%rbp,8), %r12
	movswq	204(%rsp,%rax), %rax
	movzwl	(%r12,%rax,2), %r12d
	addq	%rax, %rax
	addl	%ebx, %r12d
	addl	%r10d, %r12d
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	movq	(%r10,%rdi,8), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rsi,%r11,2), %esi
	movq	32(%rsp), %r11                  # 8-byte Reload
	addl	%ecx, %esi
	movq	(%r10,%rdx,8), %rcx
	movzwl	(%rcx,%r13,2), %ecx
	movq	48(%rsp), %r13                  # 8-byte Reload
	addl	%esi, %ecx
	addq	(%r10,%rbp,8), %rax
.LBB2_228:                              # %if.end35.sink.split.i1103
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_236
.LBB2_229:                              # %if.end.thread.i1374
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	xorl	%ebp, %ebp
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB2_230:                              # %if.end28.i1328
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movq	(%r10,%rdi,8), %rax
	movzwl	(%rax,%r11,2), %esi
	movq	(%r10,%rdx,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_234
.LBB2_231:                              # %if.then31.i1040
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	jmp	.LBB2_235
.LBB2_232:                              # %if.end.thread.i1052
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	xorl	%ebp, %ebp
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB2_233:                              # %if.end28.i1006
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx,%rcx,8), %rcx
	movq	64(%rsp), %r10                  # 8-byte Reload
	movzwl	(%rcx,%r10,2), %ecx
	movq	80(%rsp), %r10                  # 8-byte Reload
	movq	(%rbx,%r10,8), %r10
	movzwl	(%r10,%rsi,2), %esi
	addl	%ecx, %esi
	movq	(%rbx,%rdi,8), %rcx
	movzwl	(%rcx,%r11,2), %ecx
	movq	(%rbx,%rdx,8), %rdx
	movzwl	(%rdx,%rax,2), %eax
	addl	%ecx, %eax
	addl	%esi, %eax
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB2_231
.LBB2_234:                              # %if.then40.i1368
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %ebp
.LBB2_235:                              # %sw.epilog
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
.LBB2_236:                              # %sw.epilog
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$3, %r14d
	movq	(%r8,%r14), %rax
	addl	%r15d, %r15d
	movw	%r12w, (%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	(%rsp), %rbx                    # 8-byte Reload
	movzbl	subblk_offset_y+1(%r13,%rbx,4), %r14d
	movzbl	subblk_offset_x+1(%r13,%rbx,4), %r15d
	movl	849064(%r11), %r12d
	movl	849068(%r11), %ebp
	movl	-8(%rdi), %eax
	cmpq	$3, %rax
	ja	.LBB2_266
# %bb.237:                              # %sw.epilog
                                        #   in Loop: Header=BB2_203 Depth=1
	jmpq	*.LJTI2_2(,%rax,8)
.LBB2_238:                              # %sw.bb123.1
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_253
# %bb.239:                              # %if.end.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_254
# %bb.240:                              # %if.then35.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movq	%r15, %rcx
	movl	%eax, %r12d
	jmp	.LBB2_256
	.p2align	4, 0x90
.LBB2_241:                              # %sw.bb137.1
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	jne	.LBB2_247
# %bb.242:                              # %if.else.i1128.1
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_264
	jmp	.LBB2_266
	.p2align	4, 0x90
.LBB2_243:                              # %sw.bb144.1
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_248
# %bb.244:                              # %if.end.i1242.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_249
# %bb.245:                              # %if.then35.i1303.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r12d
	jmp	.LBB2_251
.LBB2_246:                              # %sw.bb130.1
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_263
.LBB2_247:                              # %for.end.i1225.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	leal	(%r15,%r15), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rcx,8), %rsi
	addq	%rdx, %rsi
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	movq	(%rsi,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r12d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rcx,8), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movzwl	2(%rdx,%rax,2), %esi
	addl	%ecx, %esi
	movzwl	4(%rdx,%rax,2), %ecx
	addl	%esi, %ecx
	leaq	(%rdx,%rax,2), %rax
	addq	$6, %rax
	jmp	.LBB2_265
.LBB2_248:                              # %if.end.thread.i1306.1
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_266
.LBB2_249:                              # %if.end28.i1260.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_258
# %bb.250:                              # %if.then31.i1294.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_251:                              # %if.end.i1310.1
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	(%r15,%r15), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	(%rcx,%rdx,8), %rax
	movzwl	(%rax,%rsi,2), %ecx
	movzwl	2(%rax,%rsi,2), %edx
	addl	%ecx, %edx
	movzwl	4(%rax,%rsi,2), %ecx
	movzwl	6(%rax,%rsi,2), %ebp
	addl	%ecx, %ebp
	addl	%edx, %ebp
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_257
.LBB2_252:                              # %if.end.i1310.1.if.end28.i1328.1_crit_edge
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$4, %r10d
	movswq	142(%rsp,%r10), %rax
	movswq	140(%rsp,%r10), %rcx
	movswq	158(%rsp,%r10), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movswq	156(%rsp,%r10), %rsi
	movswq	174(%rsp,%r10), %rdi
	movswq	172(%rsp,%r10), %r11
	movswq	190(%rsp,%r10), %rdx
	movswq	188(%rsp,%r10), %rbx
	jmp	.LBB2_259
.LBB2_253:                              # %if.end.thread.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_266
.LBB2_254:                              # %if.end28.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_258
# %bb.255:                              # %if.then31.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	%r15, %rcx
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_256:                              # %if.end.i988.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addq	%rcx, %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	(%rax,%rdx,8), %rcx
	movzwl	(%rcx,%rsi,2), %eax
	movzwl	2(%rcx,%rsi,2), %edx
	addl	%eax, %edx
	movzwl	4(%rcx,%rsi,2), %eax
	movzwl	6(%rcx,%rsi,2), %ebp
	addl	%eax, %ebp
	addl	%edx, %ebp
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_252
.LBB2_257:                              # %if.then35.i1371.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_262
.LBB2_258:                              # %if.end.thread.i1374.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	xorl	%ebp, %ebp
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB2_259:                              # %if.end28.i1328.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movq	(%r10,%rdi,8), %rax
	movzwl	(%rax,%r11,2), %esi
	movq	(%r10,%rdx,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_261
# %bb.260:                              # %if.then31.i1362.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	jmp	.LBB2_262
.LBB2_261:                              # %if.then40.i1046.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %ebp
.LBB2_262:                              # %sw.epilog.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB2_266
.LBB2_263:                              # %if.else.i.1
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_266
.LBB2_264:                              # %for.end32.i1187.1
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r14d, %eax
	shll	$4, %eax
	movswq	158(%rsp,%rax), %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%rcx,8), %rdx
	movswq	156(%rsp,%rax), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movswq	174(%rsp,%rax), %rdi
	movq	(%r12,%rdi,8), %r10
	movswq	172(%rsp,%rax), %r11
	movzwl	(%r10,%r11,2), %r10d
	addl	%edx, %r10d
	movswq	190(%rsp,%rax), %rdx
	movq	(%r12,%rdx,8), %rbx
	movswq	188(%rsp,%rax), %r13
	movzwl	(%rbx,%r13,2), %ebx
	movswq	206(%rsp,%rax), %rbp
	movq	(%r12,%rbp,8), %r12
	movswq	204(%rsp,%rax), %rax
	movzwl	(%r12,%rax,2), %r12d
	addq	%rax, %rax
	addl	%ebx, %r12d
	movq	(%rsp), %rbx                    # 8-byte Reload
	addl	%r10d, %r12d
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	movq	(%r10,%rdi,8), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rsi,%r11,2), %esi
	movq	32(%rsp), %r11                  # 8-byte Reload
	addl	%ecx, %esi
	movq	(%r10,%rdx,8), %rcx
	movzwl	(%rcx,%r13,2), %ecx
	movq	48(%rsp), %r13                  # 8-byte Reload
	addl	%esi, %ecx
	addq	(%r10,%rbp,8), %rax
.LBB2_265:                              # %if.end35.sink.split.i1218.1
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
.LBB2_266:                              # %sw.epilog.1
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$3, %r14d
	movq	(%r8,%r14), %rax
	addl	%r15d, %r15d
	movw	%r12w, (%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movzbl	subblk_offset_y+2(%r13,%rbx,4), %r14d
	movzbl	subblk_offset_x+2(%r13,%rbx,4), %r15d
	movl	849064(%r11), %r12d
	movl	849068(%r11), %ebp
	movl	-4(%rdi), %eax
	cmpq	$3, %rax
	ja	.LBB2_296
# %bb.267:                              # %sw.epilog.1
                                        #   in Loop: Header=BB2_203 Depth=1
	jmpq	*.LJTI2_3(,%rax,8)
.LBB2_268:                              # %sw.bb123.2
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_283
# %bb.269:                              # %if.end.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_284
# %bb.270:                              # %if.then35.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movq	%r15, %rcx
	movl	%eax, %r12d
	jmp	.LBB2_286
	.p2align	4, 0x90
.LBB2_271:                              # %sw.bb137.2
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	jne	.LBB2_277
# %bb.272:                              # %if.else.i1128.2
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_294
	jmp	.LBB2_296
	.p2align	4, 0x90
.LBB2_273:                              # %sw.bb144.2
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_278
# %bb.274:                              # %if.end.i1242.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_279
# %bb.275:                              # %if.then35.i1303.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r12d
	jmp	.LBB2_281
.LBB2_276:                              # %sw.bb130.2
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_293
.LBB2_277:                              # %for.end.i1225.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	leal	(%r15,%r15), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rcx,8), %rsi
	addq	%rdx, %rsi
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	movq	(%rsi,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r12d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rcx,8), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movzwl	2(%rdx,%rax,2), %esi
	addl	%ecx, %esi
	movzwl	4(%rdx,%rax,2), %ecx
	addl	%esi, %ecx
	leaq	(%rdx,%rax,2), %rax
	addq	$6, %rax
	jmp	.LBB2_295
.LBB2_278:                              # %if.end.thread.i1306.2
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_296
.LBB2_279:                              # %if.end28.i1260.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_288
# %bb.280:                              # %if.then31.i1294.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_281:                              # %if.end.i1310.2
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	(%r15,%r15), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	(%rcx,%rdx,8), %rax
	movzwl	(%rax,%rsi,2), %ecx
	movzwl	2(%rax,%rsi,2), %edx
	addl	%ecx, %edx
	movzwl	4(%rax,%rsi,2), %ecx
	movzwl	6(%rax,%rsi,2), %ebp
	addl	%ecx, %ebp
	addl	%edx, %ebp
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_287
.LBB2_282:                              # %if.end.i1310.2.if.end28.i1328.2_crit_edge
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$4, %r10d
	movswq	142(%rsp,%r10), %rax
	movswq	140(%rsp,%r10), %rcx
	movswq	158(%rsp,%r10), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movswq	156(%rsp,%r10), %rsi
	movswq	174(%rsp,%r10), %rdi
	movswq	172(%rsp,%r10), %r11
	movswq	190(%rsp,%r10), %rdx
	movswq	188(%rsp,%r10), %rbx
	jmp	.LBB2_289
.LBB2_283:                              # %if.end.thread.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_296
.LBB2_284:                              # %if.end28.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_288
# %bb.285:                              # %if.then31.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	%r15, %rcx
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_286:                              # %if.end.i988.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addq	%rcx, %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	(%rax,%rdx,8), %rcx
	movzwl	(%rcx,%rsi,2), %eax
	movzwl	2(%rcx,%rsi,2), %edx
	addl	%eax, %edx
	movzwl	4(%rcx,%rsi,2), %eax
	movzwl	6(%rcx,%rsi,2), %ebp
	addl	%eax, %ebp
	addl	%edx, %ebp
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_282
.LBB2_287:                              # %if.then35.i1371.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_292
.LBB2_288:                              # %if.end.thread.i1374.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	xorl	%ebp, %ebp
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB2_289:                              # %if.end28.i1328.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movq	(%r10,%rdi,8), %rax
	movzwl	(%rax,%r11,2), %esi
	movq	(%r10,%rdx,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_291
# %bb.290:                              # %if.then31.i1362.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	jmp	.LBB2_292
.LBB2_291:                              # %if.then40.i1046.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %ebp
.LBB2_292:                              # %sw.epilog.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB2_296
.LBB2_293:                              # %if.else.i.2
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_296
.LBB2_294:                              # %for.end32.i1187.2
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r14d, %eax
	shll	$4, %eax
	movswq	158(%rsp,%rax), %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%rcx,8), %rdx
	movswq	156(%rsp,%rax), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movswq	174(%rsp,%rax), %rdi
	movq	(%r12,%rdi,8), %r10
	movswq	172(%rsp,%rax), %r11
	movzwl	(%r10,%r11,2), %r10d
	addl	%edx, %r10d
	movswq	190(%rsp,%rax), %rdx
	movq	(%r12,%rdx,8), %rbx
	movswq	188(%rsp,%rax), %r13
	movzwl	(%rbx,%r13,2), %ebx
	movswq	206(%rsp,%rax), %rbp
	movq	(%r12,%rbp,8), %r12
	movswq	204(%rsp,%rax), %rax
	movzwl	(%r12,%rax,2), %r12d
	addq	%rax, %rax
	addl	%ebx, %r12d
	movq	(%rsp), %rbx                    # 8-byte Reload
	addl	%r10d, %r12d
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	movq	(%r10,%rdi,8), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rsi,%r11,2), %esi
	movq	32(%rsp), %r11                  # 8-byte Reload
	addl	%ecx, %esi
	movq	(%r10,%rdx,8), %rcx
	movzwl	(%rcx,%r13,2), %ecx
	movq	48(%rsp), %r13                  # 8-byte Reload
	addl	%esi, %ecx
	addq	(%r10,%rbp,8), %rax
.LBB2_295:                              # %if.end35.sink.split.i1218.2
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
.LBB2_296:                              # %sw.epilog.2
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$3, %r14d
	movq	(%r8,%r14), %rax
	addl	%r15d, %r15d
	movw	%r12w, (%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	8(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	8(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	16(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	16(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, (%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, (%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 2(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 2(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 4(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 4(%rax,%r15)
	movq	24(%r8,%r14), %rax
	movw	%r12w, 6(%rax,%r15)
	movq	24(%r9,%r14), %rax
	movw	%bp, 6(%rax,%r15)
	movzbl	subblk_offset_y+3(%r13,%rbx,4), %r14d
	movzbl	subblk_offset_x+3(%r13,%rbx,4), %r15d
	movl	849064(%r11), %r12d
	movl	849068(%r11), %ebp
	movl	(%rdi), %eax
	cmpq	$3, %rax
	ja	.LBB2_202
# %bb.297:                              # %sw.epilog.2
                                        #   in Loop: Header=BB2_203 Depth=1
	jmpq	*.LJTI2_4(,%rax,8)
.LBB2_298:                              # %sw.bb123.3
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_313
# %bb.299:                              # %if.end.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_314
# %bb.300:                              # %if.then35.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movq	%r15, %rcx
	movl	%eax, %r12d
	jmp	.LBB2_316
	.p2align	4, 0x90
.LBB2_301:                              # %sw.bb137.3
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	jne	.LBB2_307
# %bb.302:                              # %if.else.i1128.3
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_322
	jmp	.LBB2_202
	.p2align	4, 0x90
.LBB2_303:                              # %sw.bb144.3
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	1(%r14), %r10
	movq	112(%rsp), %rcx
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_308
# %bb.304:                              # %if.end.i1242.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	%rcx, %rdx
	sarq	$48, %rdx
	leaq	(%r15,%r15), %rax
	movq	24(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rdx,8), %rax
	movq	%rcx, %rsi
	shrq	$16, %rsi
	sarl	$16, %esi
	movslq	%esi, %rsi
	movq	(%rax,%rsi,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_309
# %bb.305:                              # %if.then35.i1303.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %eax
	shrl	$2, %eax
	movl	%eax, %r12d
	jmp	.LBB2_311
.LBB2_306:                              # %sw.bb130.3
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_321
.LBB2_307:                              # %for.end.i1225.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	112(%rsp), %rax
	movq	%rax, %rcx
	sarq	$48, %rcx
	leal	(%r15,%r15), %edx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rcx,8), %rsi
	addq	%rdx, %rsi
	shrq	$16, %rax
	sarl	$16, %eax
	cltq
	movq	(%rsi,%rax,2), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r12d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	(%rsi,%rcx,8), %rdx
	movzwl	(%rdx,%rax,2), %ecx
	movzwl	2(%rdx,%rax,2), %esi
	addl	%ecx, %esi
	movzwl	4(%rdx,%rax,2), %ecx
	addl	%esi, %ecx
	leaq	(%rdx,%rax,2), %rax
	addq	$6, %rax
	jmp	.LBB2_323
.LBB2_308:                              # %if.end.thread.i1306.3
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_202
.LBB2_309:                              # %if.end28.i1260.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_318
# %bb.310:                              # %if.then31.i1294.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_311:                              # %if.end.i1310.3
                                        #   in Loop: Header=BB2_203 Depth=1
	leaq	(%r15,%r15), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	(%rcx,%rdx,8), %rax
	movzwl	(%rax,%rsi,2), %ecx
	movzwl	2(%rax,%rsi,2), %edx
	addl	%ecx, %edx
	movzwl	4(%rax,%rsi,2), %ecx
	movzwl	6(%rax,%rsi,2), %ebp
	addl	%ecx, %ebp
	addl	%edx, %ebp
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_317
.LBB2_312:                              # %if.end.i1310.3.if.end28.i1328.3_crit_edge
                                        #   in Loop: Header=BB2_203 Depth=1
	shll	$4, %r10d
	movswq	142(%rsp,%r10), %rax
	movswq	140(%rsp,%r10), %rcx
	movswq	158(%rsp,%r10), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movswq	156(%rsp,%r10), %rsi
	movswq	174(%rsp,%r10), %rdi
	movswq	172(%rsp,%r10), %r11
	movswq	190(%rsp,%r10), %rdx
	movswq	188(%rsp,%r10), %rbx
	jmp	.LBB2_319
.LBB2_313:                              # %if.end.thread.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_202
.LBB2_314:                              # %if.end28.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r10d, %ebx
	shll	$4, %ebx
	movswq	142(%rsp,%rbx), %rdx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r12,%rdx,8), %rdx
	movswq	140(%rsp,%rbx), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movzwl	(%rdx,%rsi,2), %edx
	movswq	158(%rsp,%rbx), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	(%r12,%rsi,8), %rdi
	movswq	156(%rsp,%rbx), %rsi
	movzwl	(%rdi,%rsi,2), %ebp
	addl	%edx, %ebp
	movswq	174(%rsp,%rbx), %rdi
	movq	(%r12,%rdi,8), %rdx
	movswq	172(%rsp,%rbx), %r11
	movzwl	(%rdx,%r11,2), %r13d
	movswq	190(%rsp,%rbx), %rdx
	movq	(%r12,%rdx,8), %r12
	movswq	188(%rsp,%rbx), %rbx
	movzwl	(%r12,%rbx,2), %r12d
	addl	%r13d, %r12d
	addl	%ebp, %r12d
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_318
# %bb.315:                              # %if.then31.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %r12d
	addl	$4, %r12d
	shrl	$3, %r12d
	movq	%rcx, %rdx
	sarq	$48, %rdx
	shrq	$16, %rcx
	sarl	$16, %ecx
	movslq	%ecx, %rsi
	movq	%r15, %rcx
	movq	48(%rsp), %r13                  # 8-byte Reload
.LBB2_316:                              # %if.end.i988.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addq	%rcx, %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	(%rax,%rdx,8), %rcx
	movzwl	(%rcx,%rsi,2), %eax
	movzwl	2(%rcx,%rsi,2), %edx
	addl	%eax, %edx
	movzwl	4(%rcx,%rsi,2), %eax
	movzwl	6(%rcx,%rsi,2), %ebp
	addl	%eax, %ebp
	addl	%edx, %ebp
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB2_312
.LBB2_317:                              # %if.then35.i1371.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_201
.LBB2_318:                              # %if.end.thread.i1374.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	xorl	%ebp, %ebp
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	88(%rsp), %rcx                  # 8-byte Reload
.LBB2_319:                              # %if.end28.i1328.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rax,8), %rax
	movzwl	(%rax,%rcx,2), %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	addl	%eax, %ecx
	movq	(%r10,%rdi,8), %rax
	movzwl	(%rax,%r11,2), %esi
	movq	(%r10,%rdx,8), %rax
	movzwl	(%rax,%rbx,2), %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_200
# %bb.320:                              # %if.then31.i1362.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	%eax, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	jmp	.LBB2_201
.LBB2_321:                              # %if.else.i.3
                                        #   in Loop: Header=BB2_203 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB2_202
.LBB2_322:                              # %for.end32.i1187.3
                                        #   in Loop: Header=BB2_203 Depth=1
	movl	%r14d, %eax
	shll	$4, %eax
	movswq	158(%rsp,%rax), %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	(%r12,%rcx,8), %rdx
	movswq	156(%rsp,%rax), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	movswq	174(%rsp,%rax), %rdi
	movq	(%r12,%rdi,8), %r10
	movswq	172(%rsp,%rax), %r11
	movzwl	(%r10,%r11,2), %r10d
	addl	%edx, %r10d
	movswq	190(%rsp,%rax), %rdx
	movq	(%r12,%rdx,8), %rbx
	movswq	188(%rsp,%rax), %r13
	movzwl	(%rbx,%r13,2), %ebx
	movswq	206(%rsp,%rax), %rbp
	movq	(%r12,%rbp,8), %r12
	movswq	204(%rsp,%rax), %rax
	movzwl	(%r12,%rax,2), %r12d
	addq	%rax, %rax
	addl	%ebx, %r12d
	movq	(%rsp), %rbx                    # 8-byte Reload
	addl	%r10d, %r12d
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	(%r10,%rcx,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	movq	(%r10,%rdi,8), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rsi,%r11,2), %esi
	movq	32(%rsp), %r11                  # 8-byte Reload
	addl	%ecx, %esi
	movq	(%r10,%rdx,8), %rcx
	movzwl	(%rcx,%r13,2), %ecx
	movq	48(%rsp), %r13                  # 8-byte Reload
	addl	%esi, %ecx
	addq	(%r10,%rbp,8), %rax
.LBB2_323:                              # %if.end35.sink.split.i1218.3
                                        #   in Loop: Header=BB2_203 Depth=1
	addl	$2, %r12d
	shrl	$2, %r12d
	movzwl	(%rax), %eax
	leal	(%rcx,%rax), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	jmp	.LBB2_202
.LBB2_324:                              # %for.body50.preheader
	movq	%rdi, %rax
	shlq	$4, %rax
	leaq	128(%rsp), %rcx
	addq	%rcx, %rax
	addq	$20, %rax
	jmp	.LBB2_327
	.p2align	4, 0x90
.LBB2_325:                              # %cond.true56
                                        #   in Loop: Header=BB2_327 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	(%rax), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB2_326:                              # %cond.end66
                                        #   in Loop: Header=BB2_327 Depth=1
	andl	%ecx, 56(%rsp)                  # 4-byte Folded Spill
	incl	%edi
	addq	$16, %rax
	cmpl	%edi, %r10d
	jle	.LBB2_198
.LBB2_327:                              # %for.body50
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rax)
	jne	.LBB2_325
# %bb.328:                              #   in Loop: Header=BB2_327 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB2_326
.LBB2_329:                              # %for.body24.preheader1
	movq	%r14, %rax
	subq	%rcx, %rax
	shlq	$4, %rcx
	leaq	128(%rsp), %rdx
	addq	%rdx, %rcx
	addq	$36, %rcx
	movl	%r8d, %r9d
	jmp	.LBB2_331
	.p2align	4, 0x90
.LBB2_330:                              # %cond.end40.1
                                        #   in Loop: Header=BB2_331 Depth=1
	andl	%edi, %r9d
	andl	%edx, %r9d
	addq	$32, %rcx
	addq	$-2, %rax
	je	.LBB2_184
.LBB2_331:                              # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	cmpl	$0, -20(%rcx)
	movl	$0, %edi
	je	.LBB2_333
# %bb.332:                              # %cond.true30
                                        #   in Loop: Header=BB2_331 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	-16(%rcx), %rdi
	movsbl	(%rsi,%rdi), %edi
.LBB2_333:                              # %cond.end40
                                        #   in Loop: Header=BB2_331 Depth=1
	cmpl	$0, -4(%rcx)
	je	.LBB2_330
# %bb.334:                              # %cond.true30.1
                                        #   in Loop: Header=BB2_331 Depth=1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	13544(%rdx), %rdx
	movslq	(%rcx), %rsi
	movsbl	(%rdx,%rsi), %edx
	jmp	.LBB2_330
.LBB2_335:
	xorl	%edx, %edx
.LBB2_336:                              # %cond.end236.prol
	andl	%r8d, %edx
	movl	%edx, %r8d
.LBB2_337:                              # %for.body220.prol.loopexit
	leaq	-1(%r11), %rcx
	cmpq	%rcx, %rsi
	jne	.LBB2_372
.LBB2_338:                              # %for.cond244.preheader
	testl	%r12d, %r12d
	jle	.LBB2_353
# %bb.339:                              # %for.body247.lr.ph
	leal	1(%r10), %eax
	cmpl	%eax, %r12d
	cmovgl	%r12d, %eax
	notl	%r10d
	addl	%eax, %r10d
	movl	$1, %eax
	cmpl	$2, %r10d
	ja	.LBB2_342
# %bb.340:
	movq	%r11, %rdi
	jmp	.LBB2_367
.LBB2_342:                              # %vector.ph2142
	incq	%r10
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	movq	%r10, %rbx
	andq	$-4, %rbx
	leaq	(%rbx,%r11), %rdi
	shlq	$4, %r11
	leaq	128(%rsp), %rax
	leaq	(%r11,%rax), %r10
	addq	$68, %r10
	movl	$-1, %esi
	movl	$1, %r9d
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movl	$-1, %r11d
	movl	$-1, %eax
	jmp	.LBB2_344
	.p2align	4, 0x90
.LBB2_343:                              # %pred.load.continue2161
                                        #   in Loop: Header=BB2_344 Depth=1
	testl	%ebp, %ebp
	movsbl	8(%rsp), %r8d                   # 1-byte Folded Reload
	cmovel	%ebp, %r8d
	testl	%r15d, %r15d
	movsbl	32(%rsp), %ebp                  # 1-byte Folded Reload
	cmovel	%r15d, %ebp
	testl	%ecx, %ecx
	movsbl	%r13b, %r15d
	cmovel	%ecx, %r15d
	testl	%r12d, %r12d
	movsbl	%r14b, %ecx
	cmovel	%r12d, %ecx
	andl	%r8d, %r9d
	andl	%ebp, %esi
	andl	%r15d, %r11d
	andl	%ecx, %eax
	addq	$64, %r10
	addq	$-4, %rbx
	je	.LBB2_352
.LBB2_344:                              # %vector.body2147
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%r10), %ebp
                                        # implicit-def: $cl
                                        # kill: killed $cl
	testl	%ebp, %ebp
	je	.LBB2_346
# %bb.345:                              # %pred.load.if2154
                                        #   in Loop: Header=BB2_344 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	-48(%r10), %r8
	movzbl	(%rcx,%r8), %ecx
	movb	%cl, 8(%rsp)                    # 1-byte Spill
.LBB2_346:                              # %pred.load.continue2155
                                        #   in Loop: Header=BB2_344 Depth=1
	movl	-36(%r10), %r15d
                                        # implicit-def: $cl
                                        # kill: killed $cl
	testl	%r15d, %r15d
	je	.LBB2_348
# %bb.347:                              # %pred.load.if2156
                                        #   in Loop: Header=BB2_344 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	-32(%r10), %r8
	movzbl	(%rcx,%r8), %ecx
	movb	%cl, 32(%rsp)                   # 1-byte Spill
.LBB2_348:                              # %pred.load.continue2157
                                        #   in Loop: Header=BB2_344 Depth=1
	movl	-20(%r10), %ecx
                                        # implicit-def: $r13b
	testl	%ecx, %ecx
	je	.LBB2_350
# %bb.349:                              # %pred.load.if2158
                                        #   in Loop: Header=BB2_344 Depth=1
	movq	(%rsp), %r8                     # 8-byte Reload
	movq	13544(%r8), %r14
	movslq	-16(%r10), %r12
	movzbl	(%r14,%r12), %r13d
.LBB2_350:                              # %pred.load.continue2159
                                        #   in Loop: Header=BB2_344 Depth=1
	movl	-4(%r10), %r12d
                                        # implicit-def: $r14b
	testl	%r12d, %r12d
	je	.LBB2_343
# %bb.351:                              # %pred.load.if2160
                                        #   in Loop: Header=BB2_344 Depth=1
	movq	(%rsp), %r8                     # 8-byte Reload
	movq	13544(%r8), %r14
	movslq	(%r10), %r8
	movzbl	(%r14,%r8), %r14d
	jmp	.LBB2_343
.LBB2_352:                              # %middle.block2139
	andl	%r9d, %esi
	andl	%esi, %r11d
	andl	%r11d, %eax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, 40(%rsp)                  # 8-byte Folded Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
	jne	.LBB2_367
.LBB2_353:
	movq	16(%rsp), %r15                  # 8-byte Reload
.LBB2_354:                              # %if.end283
	testl	%edx, %edx
	je	.LBB2_364
# %bb.355:                              # %if.end283
	testl	%eax, %eax
	je	.LBB2_364
# %bb.356:                              # %if.else289
	testl	%r12d, %r12d
	jle	.LBB2_366
# %bb.357:                              # %for.body304.lr.ph
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	1248(%rax), %rcx
	movq	8(%rcx), %rax
	movq	16(%rcx), %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	136(%rdx), %rsi
	movq	(%rsi), %rdx
	movq	8(%rsi), %rsi
	movl	%r15d, %edi
	andl	$2147483646, %edi               # imm = 0x7FFFFFFE
	xorl	%r8d, %r8d
	jmp	.LBB2_359
	.p2align	4, 0x90
.LBB2_358:                              # %for.cond301.loopexit
                                        #   in Loop: Header=BB2_359 Depth=1
	cmpq	%r12, %r8
	je	.LBB2_366
.LBB2_359:                              # %for.body304
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_361 Depth 2
	movq	%r8, %r9
	incq	%r8
	testl	%r15d, %r15d
	jle	.LBB2_358
# %bb.360:                              # %for.body332.lr.ph
                                        #   in Loop: Header=BB2_359 Depth=1
	movq	%r8, %r10
	shlq	$4, %r10
	movswq	142(%rsp,%r10), %r11
	movq	(%rdx,%r11,8), %rbx
	movswq	140(%rsp,%r10), %r14
	movzwl	(%rbx,%r14,2), %r10d
	movq	(%rsi,%r11,8), %r11
	movzwl	(%r11,%r14,2), %r11d
	xorl	%ebx, %ebx
	cmpl	$1, %r15d
	je	.LBB2_362
	.p2align	4, 0x90
.LBB2_361:                              # %for.body332
                                        #   Parent Loop BB2_359 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%r9,8), %r14
	movw	%r10w, (%r14,%rbx,2)
	movq	(%rcx,%r9,8), %r14
	movw	%r11w, (%r14,%rbx,2)
	movq	(%rax,%r9,8), %r14
	movw	%r10w, 2(%r14,%rbx,2)
	movq	(%rcx,%r9,8), %r14
	movw	%r11w, 2(%r14,%rbx,2)
	addq	$2, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB2_361
.LBB2_362:                              # %for.cond301.loopexit.loopexit.unr-lcssa
                                        #   in Loop: Header=BB2_359 Depth=1
	testb	$1, %r15b
	je	.LBB2_358
# %bb.363:                              # %for.body332.epil
                                        #   in Loop: Header=BB2_359 Depth=1
	movq	(%rax,%r9,8), %r14
	movw	%r10w, (%r14,%rbx,2)
	movq	(%rcx,%r9,8), %r9
	movw	%r11w, (%r9,%rbx,2)
	jmp	.LBB2_358
.LBB2_364:                              # %if.then288
	movl	$.L.str.2, %edi
.LBB2_365:                              # %sw.epilog747
	movl	$-1, %esi
	callq	error@PLT
.LBB2_366:                              # %sw.epilog747
	addq	$504, %rsp                      # imm = 0x1F8
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
.LBB2_367:                              # %for.body247.preheader
	.cfi_def_cfa_offset 560
	movq	%rdi, %rcx
	shlq	$4, %rcx
	leaq	128(%rsp), %rsi
	addq	%rsi, %rcx
	addq	$20, %rcx
	movq	16(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB2_370
	.p2align	4, 0x90
.LBB2_368:                              # %cond.true253
                                        #   in Loop: Header=BB2_370 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	(%rcx), %r8
	movsbl	(%rsi,%r8), %esi
.LBB2_369:                              # %cond.end263
                                        #   in Loop: Header=BB2_370 Depth=1
	andl	%esi, %eax
	incl	%edi
	addq	$16, %rcx
	cmpl	%edi, %r12d
	jle	.LBB2_354
.LBB2_370:                              # %for.body247
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rcx)
	jne	.LBB2_368
# %bb.371:                              #   in Loop: Header=BB2_370 Depth=1
	xorl	%esi, %esi
	jmp	.LBB2_369
.LBB2_372:                              # %for.body220.preheader2
	movq	%r11, %rdi
	subq	%r9, %rdi
	shlq	$4, %r9
	leaq	128(%rsp), %rcx
	addq	%rcx, %r9
	addq	$36, %r9
	movl	%r8d, %edx
	jmp	.LBB2_374
	.p2align	4, 0x90
.LBB2_373:                              # %cond.end236.1
                                        #   in Loop: Header=BB2_374 Depth=1
	andl	%esi, %edx
	andl	%ecx, %edx
	addq	$32, %r9
	addq	$-2, %rdi
	je	.LBB2_338
.LBB2_374:                              # %for.body220
                                        # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	cmpl	$0, -20(%r9)
	movl	$0, %esi
	je	.LBB2_376
# %bb.375:                              # %cond.true226
                                        #   in Loop: Header=BB2_374 Depth=1
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	13544(%rsi), %rsi
	movslq	-16(%r9), %r8
	movsbl	(%rsi,%r8), %esi
.LBB2_376:                              # %cond.end236
                                        #   in Loop: Header=BB2_374 Depth=1
	cmpl	$0, -4(%r9)
	je	.LBB2_373
# %bb.377:                              # %cond.true226.1
                                        #   in Loop: Header=BB2_374 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	(%r9), %r8
	movsbl	(%rcx,%r8), %ecx
	jmp	.LBB2_373
.Lfunc_end2:
	.size	intrapred_chroma_mbaff, .Lfunc_end2-intrapred_chroma_mbaff
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_27
	.quad	.LBB2_11
	.quad	.LBB2_18
.LJTI2_1:
	.quad	.LBB2_205
	.quad	.LBB2_213
	.quad	.LBB2_208
	.quad	.LBB2_210
.LJTI2_2:
	.quad	.LBB2_238
	.quad	.LBB2_246
	.quad	.LBB2_241
	.quad	.LBB2_243
.LJTI2_3:
	.quad	.LBB2_268
	.quad	.LBB2_276
	.quad	.LBB2_271
	.quad	.LBB2_273
.LJTI2_4:
	.quad	.LBB2_298
	.quad	.LBB2_306
	.quad	.LBB2_301
	.quad	.LBB2_303
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unexpected VERT_PRED_8 chroma intra prediction mode"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"illegal chroma intra prediction mode"
	.size	.L.str.1, 37

	.type	subblk_offset_y,@object         # @subblk_offset_y
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
subblk_offset_y:
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.ascii	"\000\000\004\004"
	.ascii	"\000\000\004\004"
	.ascii	"\b\b\f\f"
	.ascii	"\b\b\f\f"
	.size	subblk_offset_y, 96

	.type	subblk_offset_x,@object         # @subblk_offset_x
	.p2align	4, 0x0
subblk_offset_x:
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.ascii	"\000\004\000\004"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.ascii	"\000\004\000\004"
	.ascii	"\b\f\b\f"
	.size	subblk_offset_x, 96

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"unexpected HOR_PRED_8 chroma intra prediction mode"
	.size	.L.str.2, 51

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"unexpected PLANE_8 chroma intra prediction mode"
	.size	.L.str.3, 48

	.type	intrapred_chroma_dc.block_pos,@object # @intrapred_chroma_dc.block_pos
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
intrapred_chroma_dc.block_pos:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.zero	16
	.zero	16
	.zero	16
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	3                               # 0x3
	.zero	16
	.zero	16
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	3                               # 0x3
	.size	intrapred_chroma_dc.block_pos, 192

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
