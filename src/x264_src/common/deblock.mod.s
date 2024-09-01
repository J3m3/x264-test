	.text
	.file	"deblock.c"
	.globl	x264_frame_deblock_row          # -- Begin function x264_frame_deblock_row
	.p2align	4, 0x90
	.type	x264_frame_deblock_row,@function
x264_frame_deblock_row:                 # @x264_frame_deblock_row
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
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movl	13888(%rdi), %ecx
	movl	13892(%rdi), %eax
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movl	408(%rdi), %ecx
	xorl	%edi, %edi
	testl	%ecx, %ecx
	cmovgl	%ecx, %edi
	movl	7268(%r13), %ecx
	movq	14688(%r13), %r8
	movslq	104(%r8), %rdx
	movl	%edx, %r9d
	shll	%cl, %r9d
	movq	%r9, 32(%rsp)                   # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movslq	108(%r8), %rsi
	movq	%rsi, %r15
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	31176(%r13), %r14
	movq	3328(%r13), %rcx
	cmpl	$0, 8(%rcx)
	je	.LBB0_1
.LBB0_57:                               # %if.end
	movq	%r14, 136(%rsp)                 # 8-byte Spill
	movq	3200(%r13), %rcx
	movl	1084(%rcx), %esi
	testl	%esi, %esi
	jle	.LBB0_139
# %bb.58:                               # %for.body.lr.ph
	addl	%edi, %eax
	movl	$15, %ecx
	subl	%eax, %ecx
	movl	%ecx, 132(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	shll	$4, %eax
	movl	%eax, 128(%rsp)                 # 4-byte Spill
	leal	(,%r15,8), %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rax,%rax,2), %rax
	negq	%rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	leaq	(,%r15,8), %rax
	subq	%rax, %r15
	movq	%r15, 192(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leal	(,%rcx,4), %eax
	movslq	%eax, %rdx
	leal	(,%rcx,8), %eax
	cltq
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(,%rax,4), %eax
	cltq
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx,2), %eax
	cltq
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movl	52(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %eax
	notl	%eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	movq	$0, 112(%rsp)                   # 8-byte Folded Spill
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_138:                              # %if.end452
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	orl	120(%rsp), %eax                 # 4-byte Folded Reload
	andl	$1, %eax
	movq	112(%rsp), %rdx                 # 8-byte Reload
	addl	%eax, %edx
	xorl	%r14d, %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	3200(%r13), %rcx
	movl	1084(%rcx), %esi
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	cmpl	%esi, %edx
	jge	.LBB0_139
.LBB0_59:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	sete	%bpl
	movq	14688(%r13), %rsi
	movq	%r13, %rdi
	movq	112(%rsp), %r12                 # 8-byte Reload
	movl	%r12d, %edx
	movq	16(%rsp), %r15                  # 8-byte Reload
	movl	%r15d, %ecx
	callq	x264_prefetch_fenc@PLT
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	x264_macroblock_cache_load_neighbours_deblock@PLT
	movslq	16392(%r13), %rax
	movq	17240(%r13), %rcx
	movzbl	(%rcx,%rax), %ecx
	movb	%cl, 14(%rsp)                   # 1-byte Spill
	movl	%r15d, %ecx
	andl	%r14d, %ecx
	movslq	%ecx, %rdx
	movl	%r12d, %r11d
	shlq	$5, %r11
	movq	14688(%r13), %r9
	movl	128(%rsp), %ecx                 # 4-byte Reload
	imull	%r15d, %ecx
	movslq	%ecx, %rcx
	addq	152(%r9), %rcx
	movl	%r12d, %esi
	shll	$4, %esi
	movl	124(%rsp), %edi                 # 4-byte Reload
	imull	%r15d, %edi
	movslq	%edi, %rbx
	movq	160(%r9), %rdi
	addq	%rbx, %rdi
	leal	(,%r12,8), %r8d
	addq	168(%r9), %rbx
	movq	16632(%r13), %r10
	movsbq	(%r10,%rax), %r12
	movq	7216(%r13), %r9
	movzbl	(%r9,%r12), %r14d
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	addq	31232(%r13,%rdx,8), %r11
	movq	%r11, 88(%rsp)                  # 8-byte Spill
	testb	$1, %r15b
	sete	%dl
	orb	%bpl, %dl
	movq	192(%rsp), %r14                 # 8-byte Reload
	movl	$0, %edx
	cmovneq	%rdx, %r14
	movq	184(%rsp), %r11                 # 8-byte Reload
	cmovneq	%rdx, %r11
	addq	%r8, %r14
	addq	%r14, %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	addq	%rdi, %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	addq	%rsi, %r11
	movq	16616(%r13), %rsi
	movzbl	(%rsi,%rax), %eax
	addq	%rcx, %r11
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	movq	%r12, %r11
	movl	%eax, %r12d
	cmpb	$6, %al
	sete	104(%rsp)                       # 1-byte Folded Spill
	cmpl	%r11d, 132(%rsp)                # 4-byte Folded Reload
	setge	%r15b
	testb	$1, 16488(%r13)
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	je	.LBB0_77
# %bb.60:                               # %if.then126
                                        #   in Loop: Header=BB0_59 Depth=1
	movslq	16600(%r13), %rax
	movsbq	(%r10,%rax), %rcx
	leal	(%r11,%rcx), %edx
	incl	%edx
	shrl	%edx
	movzbl	(%r9,%rcx), %ecx
	movq	72(%rsp), %rdi                  # 8-byte Reload
	addl	%edi, %ecx
	incl	%ecx
	shrl	%ecx
	movsbl	%dl, %edx
	movzbl	%cl, %r14d
	cmpb	$4, %r12b
	jb	.LBB0_62
# %bb.61:                               # %if.then126
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$3, (%rsi,%rax)
	jbe	.LBB0_62
# %bb.68:                               # %do.body202
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	13888(%r13), %ecx
	movl	13892(%r13), %eax
	movq	88(%rsp), %rbp                  # 8-byte Reload
	movl	(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_72
# %bb.69:                               # %do.body202
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rcx,%rdx), %esi
	addl	$12, %esi
	movslq	%esi, %rsi
	leaq	-28(%rsi), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_72
# %bb.70:                               # %do.body202
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%eax, %edx
	addl	$12, %edx
	movslq	%edx, %rdi
	leaq	-28(%rdi), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_72
# %bb.71:                               # %if.end.i747
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33256(%r13), %rax
	movzbl	i_alpha_table(%rsi), %edx
	movzbl	i_beta_table(%rdi), %ecx
	movl	%ebx, %edi
	shrl	$24, %edi
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movzbl	%bl, %r9d
	movzbl	i_tc0_table(%r9,%rsi,4), %r9d
	movb	%r9b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rsi,4), %r9d
	movb	%r9b, 11(%rsp)
	movzbl	%r8b, %r8d
	movzbl	i_tc0_table(%r8,%rsi,4), %r8d
	movb	%r8b, 12(%rsp)
	movzbl	i_tc0_table(%rdi,%rsi,4), %esi
	movb	%sil, 13(%rsp)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%rax
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	13888(%r13), %ecx
	movl	13892(%r13), %eax
.LBB0_72:                               # %deblock_edge.exit
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	(%rbp), %edx
	testq	%rdx, %rdx
	je	.LBB0_77
# %bb.73:                               # %deblock_edge.exit
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rsi
	cmpq	$47, %rsi
	ja	.LBB0_77
# %bb.74:                               # %deblock_edge.exit
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rsi
	cmpq	$47, %rsi
	ja	.LBB0_77
# %bb.75:                               # %if.end.i763
                                        #   in Loop: Header=BB0_59 Depth=1
	movb	%r15b, 96(%rsp)                 # 1-byte Spill
	movq	33272(%r13), %r15
	movzbl	i_alpha_table(%rcx), %r14d
	movb	%r12b, 15(%rsp)                 # 1-byte Spill
	movzbl	i_beta_table(%rax), %r12d
	movl	%edx, %eax
	shrl	$24, %eax
	movl	%edx, %esi
	shrl	$16, %esi
	movzbl	%dl, %edi
	movzbl	i_tc0_table(%rdi,%rcx,4), %edi
	incb	%dil
	movb	%dil, 10(%rsp)
	movzbl	%dh, %edx
	movzbl	i_tc0_table(%rdx,%rcx,4), %edx
	incb	%dl
	movb	%dl, 11(%rsp)
	movzbl	%sil, %edx
	movzbl	i_tc0_table(%rdx,%rcx,4), %edx
	incb	%dl
	movb	%dl, 12(%rsp)
	movzbl	i_tc0_table(%rax,%rcx,4), %eax
	incb	%al
	movb	%al, 13(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	leaq	10(%rsp), %rbx
	movq	%rbx, %r8
	callq	*%r15
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%ebp, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	movzbl	15(%rsp), %r12d                 # 1-byte Folded Reload
	movq	%rbx, %r8
	callq	*%r15
	movzbl	96(%rsp), %r15d                 # 1-byte Folded Reload
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_62:                               # %do.body
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	13888(%r13), %ecx
	movl	13892(%r13), %eax
	leal	(%rcx,%rdx), %esi
	addl	$12, %esi
	movslq	%esi, %rsi
	leaq	-28(%rsi), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_65
# %bb.63:                               # %do.body
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%eax, %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	leaq	-28(%rdx), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_65
# %bb.64:                               # %if.end.i720
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_beta_table(%rdx), %ecx
	movzbl	i_alpha_table(%rsi), %edx
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*33288(%r13)
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	13888(%r13), %ecx
	movl	13892(%r13), %eax
.LBB0_65:                               # %deblock_edge_intra.exit
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_77
# %bb.66:                               # %deblock_edge_intra.exit
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_77
# %bb.67:                               # %if.end.i733
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_beta_table(%rax), %r14d
	movb	%r15b, 96(%rsp)                 # 1-byte Spill
	movl	%r12d, %r15d
	movzbl	i_alpha_table(%rcx), %r12d
	movq	33304(%r13), %rbx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	*%rbx
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r15d, %r12d
	movzbl	96(%rsp), %r15d                 # 1-byte Folded Reload
	movl	%r14d, %ecx
	callq	*%rbx
.LBB0_76:                               # %if.end219
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB0_77:                               # %if.end219
                                        #   in Loop: Header=BB0_59 Depth=1
	orb	%r15b, 104(%rsp)                # 1-byte Folded Spill
	movq	88(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB0_98
# %bb.78:                               # %if.then221
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33256(%r13), %r9
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
	cmpb	$0, 14(%rsp)                    # 1-byte Folded Reload
	je	.LBB0_80
# %bb.79:                               # %if.then221.do.body235_crit_edge
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	12(%r11), %r14d
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movl	8(%rbp), %eax
	testq	%rax, %rax
	jne	.LBB0_86
	jmp	.LBB0_89
.LBB0_80:                               # %do.body224
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	4(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_84
# %bb.81:                               # %do.body224
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r11), %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_84
# %bb.82:                               # %do.body224
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%r11), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_84
# %bb.83:                               # %if.end.i791
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_alpha_table(%rax), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leaq	4(%rsi), %rdi
	movl	%ebx, %esi
	shrl	$24, %esi
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movzbl	%bl, %r10d
	movzbl	i_tc0_table(%r10,%rax,4), %r10d
	movb	%r10b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rax,4), %r10d
	movb	%r10b, 11(%rsp)
	movzbl	%r8b, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	movb	%r8b, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%rax,4), %eax
	movb	%al, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%r9
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	33256(%r13), %r9
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
.LBB0_84:                               # %deblock_edge.exit807
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	72(%rsp), %rbx                  # 8-byte Reload
	leal	12(%r11), %r14d
	movl	8(%rbp), %eax
	testq	%rax, %rax
	je	.LBB0_89
.LBB0_86:                               # %do.body235
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r14), %ecx
	movslq	%ecx, %r8
	leaq	-28(%r8), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_89
# %bb.87:                               # %do.body235
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%r14), %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_89
# %bb.88:                               # %if.end.i823
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_alpha_table(%r8), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leaq	8(%rsi), %rdi
	movl	%eax, %esi
	shrl	$24, %esi
	movl	%eax, %r10d
	shrl	$16, %r10d
	movzbl	%al, %r11d
	movzbl	i_tc0_table(%r11,%r8,4), %r11d
	movb	%r11b, 10(%rsp)
	movzbl	%ah, %eax
	movzbl	i_tc0_table(%rax,%r8,4), %eax
	movb	%al, 11(%rsp)
	movzbl	%r10b, %eax
	movzbl	i_tc0_table(%rax,%r8,4), %eax
	movb	%al, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%r8,4), %eax
	movb	%al, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%r9
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
.LBB0_89:                               # %deblock_edge.exit839
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	8(%rbp), %ecx
	testq	%rcx, %rcx
	je	.LBB0_93
# %bb.90:                               # %deblock_edge.exit839
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%rbx), %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_93
# %bb.91:                               # %deblock_edge.exit839
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%rbx), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	leaq	-28(%rdx), %rsi
	cmpq	$47, %rsi
	ja	.LBB0_93
# %bb.92:                               # %if.end.i855
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33272(%r13), %rbp
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movzbl	i_alpha_table(%rax), %r14d
	movb	%r12b, 15(%rsp)                 # 1-byte Spill
	movzbl	i_beta_table(%rdx), %r12d
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addq	$4, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rdx                  # 8-byte Reload
	leaq	4(%rdx), %rdi
	movl	%ecx, %edx
	shrl	$24, %edx
	movl	%ecx, %esi
	shrl	$16, %esi
	movzbl	%cl, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	incb	%r8b
	movb	%r8b, 10(%rsp)
	movzbl	%ch, %ecx
	movzbl	i_tc0_table(%rcx,%rax,4), %ecx
	incb	%cl
	movb	%cl, 11(%rsp)
	movzbl	%sil, %ecx
	movzbl	i_tc0_table(%rcx,%rax,4), %ecx
	incb	%cl
	movb	%cl, 12(%rsp)
	movzbl	i_tc0_table(%rdx,%rax,4), %eax
	incb	%al
	movb	%al, 13(%rsp)
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %esi
	movl	%r14d, %edx
	movl	%r12d, %ecx
	leaq	10(%rsp), %r15
	movq	%r15, %r8
	callq	*%rbp
	movq	176(%rsp), %rdi                 # 8-byte Reload
	movl	%ebx, %esi
	movl	%r14d, %edx
	movq	96(%rsp), %r14                  # 8-byte Reload
	movl	%r12d, %ecx
	movzbl	15(%rsp), %r12d                 # 1-byte Folded Reload
	movq	%r15, %r8
	movq	88(%rsp), %rbx                  # 8-byte Reload
	callq	*%rbp
	movq	%rbx, %rbp
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB0_93:                               # %deblock_edge.exit871
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$0, 14(%rsp)                    # 1-byte Folded Reload
	jne	.LBB0_98
# %bb.94:                               # %do.body255
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	12(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_98
# %bb.95:                               # %do.body255
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	13888(%r13), %eax
	addl	%r14d, %eax
	cltq
	leaq	-28(%rax), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_98
# %bb.96:                               # %do.body255
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	13892(%r13), %r14d
	movslq	%r14d, %rcx
	leaq	-28(%rcx), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_98
# %bb.97:                               # %if.end.i887
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33256(%r13), %r9
	movzbl	i_alpha_table(%rax), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leaq	12(%rsi), %rdi
	movl	%ebx, %esi
	shrl	$24, %esi
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movzbl	%bl, %r10d
	movzbl	i_tc0_table(%r10,%rax,4), %r10d
	movb	%r10b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rax,4), %r10d
	movb	%r10b, 11(%rsp)
	movzbl	%r8b, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	movb	%r8b, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%rax,4), %eax
	movb	%al, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%r9
	movq	24(%rsp), %r11                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_98:                               # %if.end266
                                        #   in Loop: Header=BB0_59 Depth=1
	testb	$2, 16488(%r13)
	je	.LBB0_119
# %bb.99:                               # %if.then271
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$4, %r12b
	setb	%cl
	movq	16632(%r13), %rax
	movslq	16604(%r13), %rdx
	movsbq	(%rax,%rdx), %rax
	leal	(%r11,%rax), %edi
	incl	%edi
	shrl	%edi
	movq	7216(%r13), %rsi
	movzbl	(%rsi,%r11), %r8d
	movzbl	(%rsi,%rax), %eax
	addl	%eax, %r8d
	incl	%r8d
	shrl	%r8d
	movq	16616(%r13), %rax
	movzbl	(%rax,%rdx), %edx
	cmpb	$4, %dl
	setb	%sil
	movsbl	%dil, %eax
	movzbl	%r8b, %r14d
	cmpl	$0, 52(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_107
# %bb.100:                              # %if.then271
                                        #   in Loop: Header=BB0_59 Depth=1
	orb	%sil, %cl
	je	.LBB0_107
# %bb.101:                              # %do.body339
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	13888(%r13), %edx
	movl	13892(%r13), %ecx
	leal	(%rdx,%rax), %esi
	addl	$12, %esi
	movslq	%esi, %rsi
	leaq	-28(%rsi), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_104
# %bb.102:                              # %do.body339
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%ecx, %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_104
# %bb.103:                              # %if.end.i916
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_beta_table(%rax), %ecx
	movzbl	i_alpha_table(%rsi), %edx
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	callq	*33296(%r13)
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	13888(%r13), %edx
	movl	13892(%r13), %ecx
.LBB0_104:                              # %deblock_edge_intra.exit917
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r14), %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_119
# %bb.105:                              # %deblock_edge_intra.exit917
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_119
# %bb.106:                              # %if.end.i930
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_beta_table(%rcx), %r14d
	movzbl	i_alpha_table(%rax), %r12d
	movq	33312(%r13), %rbx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movl	%ebp, %esi
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	*%rbx
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%ebp, %esi
	movq	88(%rsp), %rbp                  # 8-byte Reload
	movl	%r12d, %edx
	movl	%r14d, %ecx
	callq	*%rbx
	jmp	.LBB0_118
	.p2align	4, 0x90
.LBB0_107:                              # %if.else363
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$4, %dl
	jae	.LBB0_108
# %bb.109:                              # %if.then365
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	$50529027, 16(%rbp)             # imm = 0x3030303
	movl	$50529027, %ebx                 # imm = 0x3030303
	movl	13888(%r13), %edx
	movl	13892(%r13), %ecx
	testl	%ebx, %ebx
	jne	.LBB0_111
	jmp	.LBB0_114
.LBB0_108:                              # %if.else363.do.body370_crit_edge
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	16(%rbp), %ebx
	movl	13888(%r13), %edx
	movl	13892(%r13), %ecx
	testl	%ebx, %ebx
	je	.LBB0_114
.LBB0_111:                              # %do.body370
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%rax), %esi
	addl	$12, %esi
	movslq	%esi, %rsi
	leaq	-28(%rsi), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_114
# %bb.112:                              # %do.body370
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%ecx, %eax
	addl	$12, %eax
	movslq	%eax, %rdi
	leaq	-28(%rdi), %rax
	cmpq	$47, %rax
	ja	.LBB0_114
# %bb.113:                              # %if.end.i947
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33264(%r13), %rax
	movzbl	i_alpha_table(%rsi), %edx
	movzbl	i_beta_table(%rdi), %ecx
	movl	%ebx, %edi
	shrl	$24, %edi
	movl	%ebx, %r8d
	shrl	$16, %r8d
	movzbl	%bl, %r9d
	movzbl	i_tc0_table(%r9,%rsi,4), %r9d
	movb	%r9b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rsi,4), %r9d
	movb	%r9b, 11(%rsp)
	movzbl	%r8b, %r8d
	movzbl	i_tc0_table(%r8,%rsi,4), %r8d
	movb	%r8b, 12(%rsp)
	movzbl	i_tc0_table(%rdi,%rsi,4), %esi
	movb	%sil, 13(%rsp)
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%rax
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	13888(%r13), %edx
	movl	13892(%r13), %ecx
.LBB0_114:                              # %deblock_edge.exit963
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	16(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_119
# %bb.115:                              # %deblock_edge.exit963
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r14), %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_119
# %bb.116:                              # %deblock_edge.exit963
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	%r14d, %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_119
# %bb.117:                              # %if.end.i979
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33280(%r13), %r14
	movzbl	i_alpha_table(%rax), %ebp
	movzbl	i_beta_table(%rcx), %r12d
	movl	%ebx, %ecx
	shrl	$24, %ecx
	movl	%ebx, %edx
	shrl	$16, %edx
	movzbl	%bl, %esi
	movzbl	i_tc0_table(%rsi,%rax,4), %esi
	incb	%sil
	movb	%sil, 10(%rsp)
	movzbl	%bh, %esi
	movzbl	i_tc0_table(%rsi,%rax,4), %esi
	incb	%sil
	movb	%sil, 11(%rsp)
	movzbl	%dl, %edx
	movzbl	i_tc0_table(%rdx,%rax,4), %edx
	incb	%dl
	movb	%dl, 12(%rsp)
	movzbl	i_tc0_table(%rcx,%rax,4), %eax
	incb	%al
	movb	%al, 13(%rsp)
	movq	80(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	leaq	10(%rsp), %r15
	movq	%r15, %r8
	callq	*%r14
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%ebx, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	movq	%r15, %r8
	movq	88(%rsp), %rbp                  # 8-byte Reload
	callq	*%r14
.LBB0_118:                              # %if.end395
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB0_119:                              # %if.end395
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$0, 104(%rsp)                   # 1-byte Folded Reload
	movl	52(%rsp), %r14d                 # 4-byte Reload
	jne	.LBB0_138
# %bb.120:                              # %if.then397
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33264(%r13), %rax
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
	cmpb	$0, 14(%rsp)                    # 1-byte Folded Reload
	jne	.LBB0_125
# %bb.121:                              # %do.body400
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	20(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_125
# %bb.122:                              # %do.body400
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r11), %ecx
	addl	$12, %ecx
	movslq	%ecx, %r8
	leaq	-28(%r8), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_125
# %bb.123:                              # %do.body400
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%r11), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_125
# %bb.124:                              # %if.end.i1011
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_alpha_table(%r8), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	addq	%rsi, %rdi
	movl	%ebx, %esi
	shrl	$24, %esi
	movl	%ebx, %r9d
	shrl	$16, %r9d
	movzbl	%bl, %r10d
	movzbl	i_tc0_table(%r10,%r8,4), %r10d
	movb	%r10b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%r8,4), %r10d
	movb	%r10b, 11(%rsp)
	movzbl	%r9b, %r9d
	movzbl	i_tc0_table(%r9,%r8,4), %r9d
	movb	%r9b, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%r8,4), %esi
	movb	%sil, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%rax
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	33264(%r13), %rax
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
	.p2align	4, 0x90
.LBB0_125:                              # %deblock_edge.exit1027
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	12(%r11), %r15d
	movl	24(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_129
# %bb.126:                              # %do.body413
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%r15), %ecx
	movslq	%ecx, %r8
	leaq	-28(%r8), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_129
# %bb.127:                              # %do.body413
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%r15), %ecx
	movslq	%ecx, %rcx
	leaq	-28(%rcx), %rdi
	cmpq	$47, %rdi
	ja	.LBB0_129
# %bb.128:                              # %if.end.i1043
                                        #   in Loop: Header=BB0_59 Depth=1
	movzbl	i_alpha_table(%r8), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	168(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsp), %rdi                  # 8-byte Reload
	addq	%rsi, %rdi
	movl	%ebx, %esi
	shrl	$24, %esi
	movl	%ebx, %r9d
	shrl	$16, %r9d
	movzbl	%bl, %r10d
	movzbl	i_tc0_table(%r10,%r8,4), %r10d
	movb	%r10b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%r8,4), %r10d
	movb	%r10b, 11(%rsp)
	movzbl	%r9b, %r9d
	movzbl	i_tc0_table(%r9,%r8,4), %r9d
	movb	%r9b, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%r8,4), %esi
	movb	%sil, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%rax
	movl	13888(%r13), %edx
	movl	13892(%r13), %esi
.LBB0_129:                              # %deblock_edge.exit1059
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	24(%rbp), %ebx
	testq	%rbx, %rbx
	movq	72(%rsp), %rdi                  # 8-byte Reload
	je	.LBB0_133
# %bb.130:                              # %deblock_edge.exit1059
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rdx,%rdi), %eax
	addl	$12, %eax
	cltq
	leaq	-28(%rax), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_133
# %bb.131:                              # %deblock_edge.exit1059
                                        #   in Loop: Header=BB0_59 Depth=1
	leal	(%rsi,%rdi), %edx
	addl	$12, %edx
	movslq	%edx, %rdi
	leaq	-28(%rdi), %rsi
	cmpq	$47, %rsi
	ja	.LBB0_133
# %bb.132:                              # %if.end.i1075
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33280(%r13), %r12
	movzbl	i_alpha_table(%rax), %edx
	movzbl	i_beta_table(%rdi), %r14d
	movq	160(%rsp), %rsi                 # 8-byte Reload
	addq	%rsi, 64(%rsp)                  # 8-byte Folded Spill
	movq	80(%rsp), %rdi                  # 8-byte Reload
	addq	%rsi, %rdi
	movl	%ebx, %r10d
	shrl	$24, %r10d
	movl	%ebx, %esi
	shrl	$16, %esi
	movzbl	%bl, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	incb	%r8b
	movb	%r8b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rax,4), %r8d
	incb	%r8b
	movb	%r8b, 11(%rsp)
	movzbl	%sil, %esi
	movzbl	i_tc0_table(%rsi,%rax,4), %esi
	incb	%sil
	movb	%sil, 12(%rsp)
	movzbl	i_tc0_table(%r10,%rax,4), %eax
	incb	%al
	movb	%al, 13(%rsp)
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %esi
	movq	%r13, %rbp
	movl	%edx, %r13d
	movl	%r14d, %ecx
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	leaq	10(%rsp), %r15
	movq	%r15, %r8
	callq	*%r12
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movl	%ebx, %esi
	movl	%r13d, %edx
	movq	%rbp, %r13
	movl	%r14d, %ecx
	movl	52(%rsp), %r14d                 # 4-byte Reload
	movq	%r15, %r8
	movq	104(%rsp), %r15                 # 8-byte Reload
	movq	88(%rsp), %rbp                  # 8-byte Reload
	callq	*%r12
.LBB0_133:                              # %deblock_edge.exit1091
                                        #   in Loop: Header=BB0_59 Depth=1
	cmpb	$0, 14(%rsp)                    # 1-byte Folded Reload
	jne	.LBB0_138
# %bb.134:                              # %do.body439
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	28(%rbp), %ebx
	testq	%rbx, %rbx
	je	.LBB0_138
# %bb.135:                              # %do.body439
                                        #   in Loop: Header=BB0_59 Depth=1
	movl	13888(%r13), %eax
	addl	%r15d, %eax
	cltq
	leaq	-28(%rax), %rcx
	cmpq	$47, %rcx
	ja	.LBB0_138
# %bb.136:                              # %do.body439
                                        #   in Loop: Header=BB0_59 Depth=1
	addl	13892(%r13), %r15d
	movslq	%r15d, %rcx
	leaq	-28(%rcx), %rdx
	cmpq	$47, %rdx
	ja	.LBB0_138
# %bb.137:                              # %if.end.i1107
                                        #   in Loop: Header=BB0_59 Depth=1
	movq	33264(%r13), %r9
	movzbl	i_alpha_table(%rax), %edx
	movzbl	i_beta_table(%rcx), %ecx
	movq	40(%rsp), %rdi                  # 8-byte Reload
	addq	144(%rsp), %rdi                 # 8-byte Folded Reload
	movl	%ebx, %esi
	shrl	$24, %esi
	movl	%ebx, %r10d
	shrl	$16, %r10d
	movzbl	%bl, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	movb	%r8b, 10(%rsp)
	movzbl	%bh, %ebx
	movzbl	i_tc0_table(%rbx,%rax,4), %r8d
	movb	%r8b, 11(%rsp)
	movzbl	%r10b, %r8d
	movzbl	i_tc0_table(%r8,%rax,4), %r8d
	movb	%r8b, 12(%rsp)
	movzbl	i_tc0_table(%rsi,%rax,4), %eax
	movb	%al, 13(%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	leaq	10(%rsp), %r8
	callq	*%r9
	jmp	.LBB0_138
.LBB0_139:                              # %for.cond.cleanup
	movq	3328(%r13), %rax
	cmpl	$0, 8(%rax)
	movq	136(%rsp), %r8                  # 8-byte Reload
	je	.LBB0_140
.LBB0_156:                              # %if.end463
	addq	$200, %rsp
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
.LBB0_1:                                # %land.lhs.true
	.cfi_def_cfa_offset 256
	cmpl	$0, 60(%rcx)
	je	.LBB0_57
# %bb.2:                                # %if.then
	movq	3200(%r13), %r10
	movl	1084(%r10), %r11d
	testl	%r11d, %r11d
	jle	.LBB0_15
# %bb.3:                                # %for.body.i1244.preheader
	imull	16(%rsp), %r11d                 # 4-byte Folded Reload
	movslq	%r11d, %rcx
	leaq	(%rcx,%rcx,2), %rsi
	shlq	$3, %rsi
	addq	16656(%r13), %rsi
	addq	17240(%r13), %rcx
	xorl	%r8d, %r8d
	movq	%r14, %r9
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_13:                               # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	orl	%r10d, %r11d
	movl	%r11d, 12(%rsi)
	movl	%r11d, 8(%rsi)
.LBB0_14:                               # %for.inc.i1268
                                        #   in Loop: Header=BB0_4 Depth=1
	incq	%r8
	movq	3200(%r13), %r10
	movslq	1084(%r10), %r11
	addq	$24, %rsi
	addq	$16, %r9
	cmpq	%r11, %r8
	jge	.LBB0_15
.LBB0_4:                                # %for.body.i1244
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rsi), %xmm0
	movups	%xmm0, (%r9)
	cmpb	$0, (%rcx,%r8)
	je	.LBB0_14
# %bb.5:                                # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	4(%rsi), %ebx
	orl	(%rsi), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_7
# %bb.6:                                # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_7:                                # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$0, %ebp
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_9
# %bb.8:                                # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$16842752, %ebp                 # imm = 0x1010000
.LBB0_9:                                # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	orl	%ebp, %r11d
	movl	12(%rsi), %ebx
	movl	%r11d, 4(%rsi)
	movl	%r11d, (%rsi)
	orl	8(%rsi), %ebx
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_11
# %bb.10:                               # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_11:                               # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_13
# %bb.12:                               # %if.then.i1250
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$16842752, %r10d                # imm = 0x1010000
	jmp	.LBB0_13
.LBB0_140:                              # %land.lhs.true458
	cmpl	$0, 60(%rax)
	je	.LBB0_156
# %bb.141:                              # %if.then462
	testl	%esi, %esi
	jle	.LBB0_144
# %bb.142:                              # %for.body.i1321.preheader
	imull	16(%rsp), %esi                  # 4-byte Folded Reload
	movslq	%esi, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	16656(%r13), %rax
	xorl	%edx, %edx
	movq	%r8, %rsi
	.p2align	4, 0x90
.LBB0_143:                              # %for.body.i1321
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rax)
	incq	%rdx
	movq	3200(%r13), %rcx
	movslq	1084(%rcx), %rdi
	addq	$16, %rsi
	addq	$24, %rax
	cmpq	%rdi, %rdx
	jl	.LBB0_143
.LBB0_144:                              # %restore_cavlc_nnz_row.exit1328
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB0_148
# %bb.145:                              # %if.then.i1141
	movslq	1084(%rcx), %rdx
	testq	%rdx, %rdx
	jle	.LBB0_148
# %bb.146:                              # %for.body.i1306.preheader
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	-1(%rax), %ecx
	movq	%rdx, %rax
	shlq	$4, %rax
	addq	%r8, %rax
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	leaq	(%rcx,%rcx,2), %rdx
	shlq	$3, %rdx
	addq	16656(%r13), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_147:                              # %for.body.i1306
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rax), %xmm0
	movups	%xmm0, (%rdx)
	incq	%rsi
	movq	3200(%r13), %rcx
	movslq	1084(%rcx), %rdi
	addq	$16, %rax
	addq	$24, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB0_147
.LBB0_148:                              # %if.end.i1125
	cmpl	$0, 7268(%r13)
	je	.LBB0_156
# %bb.149:                              # %if.then1.i1128
	movl	1084(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB0_152
# %bb.150:                              # %for.body.i1291.preheader
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leal	1(%rcx), %edx
	leal	(%rax,%rax), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%r8, %rcx
	imull	%eax, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rax,2), %rdx
	shlq	$3, %rdx
	addq	16656(%r13), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_151:                              # %for.body.i1291
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rcx), %xmm0
	movups	%xmm0, (%rdx)
	incq	%rsi
	movq	3200(%r13), %rax
	movslq	1084(%rax), %rax
	addq	$16, %rcx
	addq	$24, %rdx
	cmpq	%rax, %rsi
	jl	.LBB0_151
.LBB0_152:                              # %restore_cavlc_nnz_row.exit1298
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB0_156
# %bb.153:                              # %if.then7.i1135
	testl	%eax, %eax
	jle	.LBB0_156
# %bb.154:                              # %for.body.i1279.preheader
	movq	16(%rsp), %rdx                  # 8-byte Reload
	addl	$-2, %edx
	leal	(%rax,%rax,2), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %r8
	imull	%eax, %edx
	movslq	%edx, %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$3, %rax
	addq	16656(%r13), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_155:                              # %for.body.i1279
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r8), %xmm0
	movups	%xmm0, (%rax)
	incq	%rcx
	movq	3200(%r13), %rdx
	movslq	1084(%rdx), %rdx
	addq	$16, %r8
	addq	$24, %rax
	cmpq	%rdx, %rcx
	jl	.LBB0_155
	jmp	.LBB0_156
.LBB0_15:                               # %munge_cavlc_nnz_row.exit1272
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB0_29
# %bb.16:                               # %if.then.i
	testl	%r11d, %r11d
	jle	.LBB0_29
# %bb.17:                               # %for.body.i1206.preheader
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leal	-1(%rcx), %esi
	movslq	%r11d, %rcx
	shlq	$4, %rcx
	imull	%r11d, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %r8
	shlq	$3, %r8
	addq	16656(%r13), %r8
	addq	%r14, %rcx
	addq	17240(%r13), %rsi
	xorl	%r9d, %r9d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_27:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	orl	%r10d, %r11d
	movl	%r11d, 12(%r8)
	movl	%r11d, 8(%r8)
.LBB0_28:                               # %for.inc.i1230
                                        #   in Loop: Header=BB0_18 Depth=1
	incq	%r9
	movq	3200(%r13), %r10
	movslq	1084(%r10), %r11
	addq	$24, %r8
	addq	$16, %rcx
	cmpq	%r11, %r9
	jge	.LBB0_29
.LBB0_18:                               # %for.body.i1206
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r8), %xmm0
	movups	%xmm0, (%rcx)
	cmpb	$0, (%rsi,%r9)
	je	.LBB0_28
# %bb.19:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	4(%r8), %ebx
	orl	(%r8), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_21
# %bb.20:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_21:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	$0, %ebp
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_23
# %bb.22:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	$16842752, %ebp                 # imm = 0x1010000
.LBB0_23:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	orl	%ebp, %r11d
	movl	12(%r8), %ebx
	movl	%r11d, 4(%r8)
	movl	%r11d, (%r8)
	orl	8(%r8), %ebx
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_25
# %bb.24:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_25:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_27
# %bb.26:                               # %if.then.i1212
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	$16842752, %r10d                # imm = 0x1010000
	jmp	.LBB0_27
.LBB0_29:                               # %if.end.i
	cmpl	$0, 7268(%r13)
	je	.LBB0_57
# %bb.30:                               # %if.then1.i
	movl	1084(%r10), %r10d
	testl	%r10d, %r10d
	jle	.LBB0_43
# %bb.31:                               # %for.body.i1168.preheader
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leal	1(%rcx), %esi
	leal	(%r10,%r10), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	imull	%r10d, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %r8
	shlq	$3, %r8
	addq	16656(%r13), %r8
	addq	%r14, %rcx
	addq	17240(%r13), %rsi
	xorl	%r9d, %r9d
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_41:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	orl	%r10d, %r11d
	movl	%r11d, 12(%r8)
	movl	%r11d, 8(%r8)
.LBB0_42:                               # %for.inc.i1192
                                        #   in Loop: Header=BB0_32 Depth=1
	incq	%r9
	movq	3200(%r13), %r10
	movslq	1084(%r10), %r10
	addq	$24, %r8
	addq	$16, %rcx
	cmpq	%r10, %r9
	jge	.LBB0_43
.LBB0_32:                               # %for.body.i1168
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r8), %xmm0
	movups	%xmm0, (%rcx)
	cmpb	$0, (%rsi,%r9)
	je	.LBB0_42
# %bb.33:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	4(%r8), %ebx
	orl	(%r8), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_35
# %bb.34:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_35:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$0, %ebp
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_37
# %bb.36:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$16842752, %ebp                 # imm = 0x1010000
.LBB0_37:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	orl	%ebp, %r11d
	movl	12(%r8), %ebx
	movl	%r11d, 4(%r8)
	movl	%r11d, (%r8)
	orl	8(%r8), %ebx
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_39
# %bb.38:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_39:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_41
# %bb.40:                               # %if.then.i1174
                                        #   in Loop: Header=BB0_32 Depth=1
	movl	$16842752, %r10d                # imm = 0x1010000
	jmp	.LBB0_41
.LBB0_43:                               # %munge_cavlc_nnz_row.exit1196
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB0_57
# %bb.44:                               # %if.then7.i
	testl	%r10d, %r10d
	jle	.LBB0_57
# %bb.45:                               # %for.body.i.preheader
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leal	-2(%rcx), %esi
	leal	(%r10,%r10,2), %ecx
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	imull	%r10d, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi,2), %r8
	shlq	$3, %r8
	addq	16656(%r13), %r8
	addq	%r14, %rcx
	addq	17240(%r13), %rsi
	xorl	%r9d, %r9d
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_55:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	orl	%r10d, %r11d
	movl	%r11d, 12(%r8)
	movl	%r11d, 8(%r8)
.LBB0_56:                               # %for.inc.i
                                        #   in Loop: Header=BB0_46 Depth=1
	incq	%r9
	movq	3200(%r13), %r10
	movslq	1084(%r10), %r10
	addq	$24, %r8
	addq	$16, %rcx
	cmpq	%r10, %r9
	jge	.LBB0_57
.LBB0_46:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r8), %xmm0
	movups	%xmm0, (%rcx)
	cmpb	$0, (%rsi,%r9)
	je	.LBB0_56
# %bb.47:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	4(%r8), %ebx
	orl	(%r8), %ebx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_49
# %bb.48:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_49:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	$0, %ebp
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_51
# %bb.50:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	$16842752, %ebp                 # imm = 0x1010000
.LBB0_51:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	orl	%ebp, %r11d
	movl	12(%r8), %ebx
	movl	%r11d, 4(%r8)
	movl	%r11d, (%r8)
	orl	8(%r8), %ebx
	movl	$0, %r11d
	testw	%bx, %bx
	je	.LBB0_53
# %bb.52:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	$257, %r11d                     # imm = 0x101
.LBB0_53:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	cmpl	$65536, %ebx                    # imm = 0x10000
	jb	.LBB0_55
# %bb.54:                               # %if.then.i1155
                                        #   in Loop: Header=BB0_46 Depth=1
	movl	$16842752, %r10d                # imm = 0x1010000
	jmp	.LBB0_55
.Lfunc_end0:
	.size	x264_frame_deblock_row, .Lfunc_end0-x264_frame_deblock_row
	.cfi_endproc
                                        # -- End function
	.globl	x264_deblock_init               # -- Begin function x264_deblock_init
	.p2align	4, 0x90
	.type	x264_deblock_init,@function
x264_deblock_init:                      # @x264_deblock_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$deblock_v_luma_c, 8(%rsi)
	movq	$deblock_h_luma_c, (%rsi)
	movq	$deblock_v_chroma_c, 24(%rsi)
	movq	$deblock_h_chroma_c, 16(%rsi)
	movq	$deblock_v_luma_intra_c, 40(%rsi)
	movq	$deblock_h_luma_intra_c, 32(%rsi)
	movq	$deblock_v_chroma_intra_c, 56(%rsi)
	movq	$deblock_h_chroma_intra_c, 48(%rsi)
	movq	$deblock_strength_c, 64(%rsi)
	retq
.Lfunc_end1:
	.size	x264_deblock_init, .Lfunc_end1-x264_deblock_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_v_luma_c
	.type	deblock_v_luma_c,@function
deblock_v_luma_c:                       # @deblock_v_luma_c
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%r8, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	jmp	deblock_luma_c                  # TAILCALL
.Lfunc_end2:
	.size	deblock_v_luma_c, .Lfunc_end2-deblock_v_luma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_h_luma_c
	.type	deblock_h_luma_c,@function
deblock_h_luma_c:                       # @deblock_h_luma_c
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%r8, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$1, %esi
	jmp	deblock_luma_c                  # TAILCALL
.Lfunc_end3:
	.size	deblock_h_luma_c, .Lfunc_end3-deblock_h_luma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_v_chroma_c
	.type	deblock_v_chroma_c,@function
deblock_v_chroma_c:                     # @deblock_v_chroma_c
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%r8, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	jmp	deblock_chroma_c                # TAILCALL
.Lfunc_end4:
	.size	deblock_v_chroma_c, .Lfunc_end4-deblock_v_chroma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_h_chroma_c
	.type	deblock_h_chroma_c,@function
deblock_h_chroma_c:                     # @deblock_h_chroma_c
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%r8, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$1, %esi
	jmp	deblock_chroma_c                # TAILCALL
.Lfunc_end5:
	.size	deblock_h_chroma_c, .Lfunc_end5-deblock_h_chroma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_v_luma_intra_c
	.type	deblock_v_luma_intra_c,@function
deblock_v_luma_intra_c:                 # @deblock_v_luma_intra_c
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	jmp	deblock_luma_intra_c            # TAILCALL
.Lfunc_end6:
	.size	deblock_v_luma_intra_c, .Lfunc_end6-deblock_v_luma_intra_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_h_luma_intra_c
	.type	deblock_h_luma_intra_c,@function
deblock_h_luma_intra_c:                 # @deblock_h_luma_intra_c
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$1, %esi
	jmp	deblock_luma_intra_c            # TAILCALL
.Lfunc_end7:
	.size	deblock_h_luma_intra_c, .Lfunc_end7-deblock_h_luma_intra_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_v_chroma_intra_c
	.type	deblock_v_chroma_intra_c,@function
deblock_v_chroma_intra_c:               # @deblock_v_chroma_intra_c
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	$1, %edx
	jmp	deblock_chroma_intra_c          # TAILCALL
.Lfunc_end8:
	.size	deblock_v_chroma_intra_c, .Lfunc_end8-deblock_v_chroma_intra_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_h_chroma_intra_c
	.type	deblock_h_chroma_intra_c,@function
deblock_h_chroma_intra_c:               # @deblock_h_chroma_intra_c
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	$1, %esi
	jmp	deblock_chroma_intra_c          # TAILCALL
.Lfunc_end9:
	.size	deblock_h_chroma_intra_c, .Lfunc_end9-deblock_h_chroma_intra_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_strength_c
	.type	deblock_strength_c,@function
deblock_strength_c:                     # @deblock_strength_c
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
	movl	%r8d, -12(%rsp)                 # 4-byte Spill
	movq	%rcx, %rax
	testl	%r9d, %r9d
	je	.LBB10_20
# %bb.1:                                # %for.body.preheader
	addq	$3, %rax
	movb	$1, %r9b
	xorl	%r10d, %r10d
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_103:                             # %for.cond.cleanup5.split
                                        #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r10d
	testb	$1, %r9b
	movl	$0, %r9d
	movq	-8(%rsp), %rax                  # 8-byte Reload
	je	.LBB10_80
.LBB10_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	%r9d, %ecx
	notb	%cl
	movzbl	%cl, %ecx
	andl	$1, %ecx
	testb	$1, %r9b
	movl	$1, %ebx
	movl	$8, %r8d
	cmovneq	%r8, %rbx
	leal	(%rcx,%rcx,2), %ecx
	movzbl	%r9b, %r14d
	andl	$1, %r14d
	negl	%r14d
	orq	$-8, %r14
	shlq	$4, %r10
	addq	%rax, %r10
	xorl	%r15d, %r15d
	jmp	.LBB10_3
.LBB10_101:                             # %if.then100.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	$1, %bpl
	.p2align	4, 0x90
.LBB10_102:                             # %if.end114.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	%bpl, (%r10,%r15,4)
	incq	%r15
	cmpq	$4, %r15
	je	.LBB10_103
.LBB10_3:                               # %for.body6
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %r11d
	shll	%cl, %r11d
	addl	$12, %r11d
	movslq	%r11d, %r12
	movb	$2, %bpl
	cmpb	$0, (%rdi,%r12)
	movb	$2, %r13b
	jne	.LBB10_11
# %bb.4:                                # %lor.lhs.false
                                        #   in Loop: Header=BB10_3 Depth=2
	leaq	(%r14,%r12), %r11
	cmpb	$0, (%rdi,%r11)
	jne	.LBB10_11
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	(%rsi,%r12), %eax
	movb	$1, %r13b
	cmpb	(%rsi,%r11), %al
	jne	.LBB10_11
# %bb.6:                                # %lor.lhs.false32
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	(%rdx,%r12,4), %eax
	movswl	(%rdx,%r11,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_11
# %bb.7:                                # %lor.lhs.false46
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	2(%rdx,%r12,4), %eax
	movswl	2(%rdx,%r11,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jge	.LBB10_11
# %bb.8:                                # %lor.lhs.false60
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	40(%rsi,%r12), %eax
	cmpb	40(%rsi,%r11), %al
	jne	.LBB10_11
# %bb.9:                                # %lor.lhs.false72
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	160(%rdx,%r12,4), %eax
	movswl	160(%rdx,%r11,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_11
# %bb.10:                               # %lor.lhs.false86
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	162(%rdx,%r12,4), %eax
	movswl	162(%rdx,%r11,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	setae	%r13b
	.p2align	4, 0x90
.LBB10_11:                              # %if.end114
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	%r13b, -3(%r10,%r15,4)
	addq	%rbx, %r12
	cmpb	$0, (%rdi,%r12)
	jne	.LBB10_82
# %bb.12:                               # %lor.lhs.false.1
                                        #   in Loop: Header=BB10_3 Depth=2
	leaq	(%r12,%r14), %r13
	cmpb	$0, (%rdi,%r13)
	jne	.LBB10_82
# %bb.13:                               # %if.else.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	(%rsi,%r12), %eax
	cmpb	(%rsi,%r13), %al
	jne	.LBB10_81
# %bb.14:                               # %lor.lhs.false32.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	(%rdx,%r12,4), %eax
	movswl	(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_81
# %bb.15:                               # %lor.lhs.false46.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	2(%rdx,%r12,4), %eax
	movswl	2(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jge	.LBB10_81
# %bb.16:                               # %lor.lhs.false60.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	40(%rsi,%r12), %eax
	cmpb	40(%rsi,%r13), %al
	jne	.LBB10_81
# %bb.17:                               # %lor.lhs.false72.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	160(%rdx,%r12,4), %eax
	movswl	160(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_81
# %bb.18:                               # %lor.lhs.false86.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	162(%rdx,%r12,4), %eax
	movswl	162(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jae	.LBB10_81
# %bb.19:                               #   in Loop: Header=BB10_3 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB10_82
.LBB10_81:                              # %if.then100.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	$1, %bpl
	.p2align	4, 0x90
.LBB10_82:                              # %if.end114.1
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	%bpl, -2(%r10,%r15,4)
	addq	%rbx, %r12
	movb	$2, %bpl
	cmpb	$0, (%rdi,%r12)
	movb	$2, %r11b
	jne	.LBB10_92
# %bb.83:                               # %lor.lhs.false.2
                                        #   in Loop: Header=BB10_3 Depth=2
	leaq	(%r12,%r14), %r13
	cmpb	$0, (%rdi,%r13)
	movb	$2, %r11b
	jne	.LBB10_92
# %bb.84:                               # %if.else.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	(%rsi,%r12), %eax
	cmpb	(%rsi,%r13), %al
	jne	.LBB10_91
# %bb.85:                               # %lor.lhs.false32.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	(%rdx,%r12,4), %eax
	movswl	(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_91
# %bb.86:                               # %lor.lhs.false46.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	2(%rdx,%r12,4), %eax
	movswl	2(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jge	.LBB10_91
# %bb.87:                               # %lor.lhs.false60.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	40(%rsi,%r12), %eax
	cmpb	40(%rsi,%r13), %al
	jne	.LBB10_91
# %bb.88:                               # %lor.lhs.false72.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	160(%rdx,%r12,4), %eax
	movswl	160(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_91
# %bb.89:                               # %lor.lhs.false86.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	162(%rdx,%r12,4), %eax
	movswl	162(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jae	.LBB10_91
# %bb.90:                               #   in Loop: Header=BB10_3 Depth=2
	xorl	%r11d, %r11d
	jmp	.LBB10_92
.LBB10_91:                              # %if.then100.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	$1, %r11b
	.p2align	4, 0x90
.LBB10_92:                              # %if.end114.2
                                        #   in Loop: Header=BB10_3 Depth=2
	movb	%r11b, -1(%r10,%r15,4)
	addq	%rbx, %r12
	cmpb	$0, (%rdi,%r12)
	jne	.LBB10_102
# %bb.93:                               # %lor.lhs.false.3
                                        #   in Loop: Header=BB10_3 Depth=2
	leaq	(%r12,%r14), %r13
	cmpb	$0, (%rdi,%r13)
	jne	.LBB10_102
# %bb.94:                               # %if.else.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	(%rsi,%r12), %eax
	cmpb	(%rsi,%r13), %al
	jne	.LBB10_101
# %bb.95:                               # %lor.lhs.false32.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	(%rdx,%r12,4), %eax
	movswl	(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_101
# %bb.96:                               # %lor.lhs.false46.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	2(%rdx,%r12,4), %eax
	movswl	2(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jge	.LBB10_101
# %bb.97:                               # %lor.lhs.false60.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movzbl	40(%rsi,%r12), %eax
	cmpb	40(%rsi,%r13), %al
	jne	.LBB10_101
# %bb.98:                               # %lor.lhs.false72.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	160(%rdx,%r12,4), %eax
	movswl	160(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	cmpw	$3, %r8w
	ja	.LBB10_101
# %bb.99:                               # %lor.lhs.false86.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movswl	162(%rdx,%r12,4), %eax
	movswl	162(%rdx,%r13,4), %r8d
	subl	%r8d, %eax
	movl	%eax, %r8d
	negl	%r8d
	cmovsl	%eax, %r8d
	movzwl	%r8w, %eax
	cmpl	-12(%rsp), %eax                 # 4-byte Folded Reload
	jae	.LBB10_101
# %bb.100:                              #   in Loop: Header=BB10_3 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB10_102
.LBB10_20:                              # %for.body6.us.us.preheader
	xorl	%ecx, %ecx
	jmp	.LBB10_21
.LBB10_48:                              # %if.then100.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %r9b
	.p2align	4, 0x90
.LBB10_49:                              # %if.end114.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	%r9b, 3(%rax,%rcx,4)
	incq	%rcx
	cmpq	$4, %rcx
	je	.LBB10_50
.LBB10_21:                              # %for.body6.us.us
                                        # =>This Inner Loop Header: Depth=1
	movb	$2, %r9b
	cmpb	$0, 12(%rdi,%rcx)
	movb	$2, %r10b
	jne	.LBB10_28
# %bb.22:                               # %lor.lhs.false.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpb	$0, 11(%rdi,%rcx)
	movb	$2, %r10b
	jne	.LBB10_28
# %bb.23:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	movzbl	12(%rsi,%rcx), %r10d
	cmpb	11(%rsi,%rcx), %r10b
	jne	.LBB10_27
# %bb.24:                               # %lor.lhs.false32.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	48(%rdx,%rcx,4), %r10d
	movswl	44(%rdx,%rcx,4), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpw	$3, %r11w
	ja	.LBB10_27
# %bb.25:                               # %lor.lhs.false46.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	50(%rdx,%rcx,4), %r10d
	movswl	46(%rdx,%rcx,4), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzwl	%r11w, %r10d
	cmpl	-12(%rsp), %r10d                # 4-byte Folded Reload
	jge	.LBB10_27
# %bb.26:                               #   in Loop: Header=BB10_21 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB10_28
.LBB10_27:                              # %if.then100.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %r10b
	.p2align	4, 0x90
.LBB10_28:                              # %if.end114.us.us.us
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	%r10b, (%rax,%rcx,4)
	cmpb	$0, 20(%rdi,%rcx)
	jne	.LBB10_35
# %bb.29:                               # %lor.lhs.false.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpb	$0, 19(%rdi,%rcx)
	jne	.LBB10_35
# %bb.30:                               # %if.else.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	movzbl	20(%rsi,%rcx), %r9d
	cmpb	19(%rsi,%rcx), %r9b
	jne	.LBB10_34
# %bb.31:                               # %lor.lhs.false32.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	80(%rdx,%rcx,4), %r9d
	movswl	76(%rdx,%rcx,4), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$3, %r10w
	ja	.LBB10_34
# %bb.32:                               # %lor.lhs.false46.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	82(%rdx,%rcx,4), %r9d
	movswl	78(%rdx,%rcx,4), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	-12(%rsp), %r9d                 # 4-byte Folded Reload
	jge	.LBB10_34
# %bb.33:                               #   in Loop: Header=BB10_21 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_35
.LBB10_34:                              # %if.then100.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %r9b
	.p2align	4, 0x90
.LBB10_35:                              # %if.end114.us.us.us.1
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	%r9b, 1(%rax,%rcx,4)
	movb	$2, %r9b
	cmpb	$0, 28(%rdi,%rcx)
	movb	$2, %r10b
	jne	.LBB10_42
# %bb.36:                               # %lor.lhs.false.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpb	$0, 27(%rdi,%rcx)
	movb	$2, %r10b
	jne	.LBB10_42
# %bb.37:                               # %if.else.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	movzbl	28(%rsi,%rcx), %r10d
	cmpb	27(%rsi,%rcx), %r10b
	jne	.LBB10_41
# %bb.38:                               # %lor.lhs.false32.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	112(%rdx,%rcx,4), %r10d
	movswl	108(%rdx,%rcx,4), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpw	$3, %r11w
	ja	.LBB10_41
# %bb.39:                               # %lor.lhs.false46.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	114(%rdx,%rcx,4), %r10d
	movswl	110(%rdx,%rcx,4), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzwl	%r11w, %r10d
	cmpl	-12(%rsp), %r10d                # 4-byte Folded Reload
	jge	.LBB10_41
# %bb.40:                               #   in Loop: Header=BB10_21 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB10_42
.LBB10_41:                              # %if.then100.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	$1, %r10b
	.p2align	4, 0x90
.LBB10_42:                              # %if.end114.us.us.us.2
                                        #   in Loop: Header=BB10_21 Depth=1
	movb	%r10b, 2(%rax,%rcx,4)
	cmpb	$0, 36(%rdi,%rcx)
	jne	.LBB10_49
# %bb.43:                               # %lor.lhs.false.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	cmpb	$0, 35(%rdi,%rcx)
	jne	.LBB10_49
# %bb.44:                               # %if.else.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	movzbl	36(%rsi,%rcx), %r9d
	cmpb	35(%rsi,%rcx), %r9b
	jne	.LBB10_48
# %bb.45:                               # %lor.lhs.false32.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	144(%rdx,%rcx,4), %r9d
	movswl	140(%rdx,%rcx,4), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$3, %r10w
	ja	.LBB10_48
# %bb.46:                               # %lor.lhs.false46.us.us.us.3
                                        #   in Loop: Header=BB10_21 Depth=1
	movswl	146(%rdx,%rcx,4), %r9d
	movswl	142(%rdx,%rcx,4), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	-12(%rsp), %r9d                 # 4-byte Folded Reload
	jge	.LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_21 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_49
.LBB10_50:                              # %for.body6.us.us.1.preheader
	xorl	%ecx, %ecx
	jmp	.LBB10_51
.LBB10_78:                              # %if.then100.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	$1, %r9b
	.p2align	4, 0x90
.LBB10_79:                              # %if.end114.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	%r9b, 19(%rax,%rcx)
	addq	$4, %rcx
	cmpq	$16, %rcx
	je	.LBB10_80
.LBB10_51:                              # %for.body6.us.us.1
                                        # =>This Inner Loop Header: Depth=1
	movb	$2, %r9b
	cmpb	$0, 12(%rdi,%rcx,2)
	movb	$2, %r10b
	jne	.LBB10_58
# %bb.52:                               # %lor.lhs.false.us.us.us.1213
                                        #   in Loop: Header=BB10_51 Depth=1
	cmpb	$0, 4(%rdi,%rcx,2)
	movb	$2, %r10b
	jne	.LBB10_58
# %bb.53:                               # %if.else.us.us.us.1217
                                        #   in Loop: Header=BB10_51 Depth=1
	movzbl	12(%rsi,%rcx,2), %r10d
	cmpb	4(%rsi,%rcx,2), %r10b
	jne	.LBB10_57
# %bb.54:                               # %lor.lhs.false32.us.us.us.1224
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	48(%rdx,%rcx,8), %r10d
	movswl	16(%rdx,%rcx,8), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpw	$3, %r11w
	ja	.LBB10_57
# %bb.55:                               # %lor.lhs.false46.us.us.us.1231
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	50(%rdx,%rcx,8), %r10d
	movswl	18(%rdx,%rcx,8), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzwl	%r11w, %r10d
	cmpl	-12(%rsp), %r10d                # 4-byte Folded Reload
	jge	.LBB10_57
# %bb.56:                               #   in Loop: Header=BB10_51 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB10_58
.LBB10_57:                              # %if.then100.us.us.us.1232
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	$1, %r10b
	.p2align	4, 0x90
.LBB10_58:                              # %if.end114.us.us.us.1235
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	%r10b, 16(%rax,%rcx)
	cmpb	$0, 13(%rdi,%rcx,2)
	jne	.LBB10_65
# %bb.59:                               # %lor.lhs.false.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	cmpb	$0, 5(%rdi,%rcx,2)
	jne	.LBB10_65
# %bb.60:                               # %if.else.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movzbl	13(%rsi,%rcx,2), %r9d
	cmpb	5(%rsi,%rcx,2), %r9b
	jne	.LBB10_64
# %bb.61:                               # %lor.lhs.false32.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	52(%rdx,%rcx,8), %r9d
	movswl	20(%rdx,%rcx,8), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$3, %r10w
	ja	.LBB10_64
# %bb.62:                               # %lor.lhs.false46.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	54(%rdx,%rcx,8), %r9d
	movswl	22(%rdx,%rcx,8), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	-12(%rsp), %r9d                 # 4-byte Folded Reload
	jge	.LBB10_64
# %bb.63:                               #   in Loop: Header=BB10_51 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_65
.LBB10_64:                              # %if.then100.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	$1, %r9b
	.p2align	4, 0x90
.LBB10_65:                              # %if.end114.us.us.us.1.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	%r9b, 17(%rax,%rcx)
	movb	$2, %r9b
	cmpb	$0, 14(%rdi,%rcx,2)
	movb	$2, %r10b
	jne	.LBB10_72
# %bb.66:                               # %lor.lhs.false.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	cmpb	$0, 6(%rdi,%rcx,2)
	movb	$2, %r10b
	jne	.LBB10_72
# %bb.67:                               # %if.else.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movzbl	14(%rsi,%rcx,2), %r10d
	cmpb	6(%rsi,%rcx,2), %r10b
	jne	.LBB10_71
# %bb.68:                               # %lor.lhs.false32.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	56(%rdx,%rcx,8), %r10d
	movswl	24(%rdx,%rcx,8), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpw	$3, %r11w
	ja	.LBB10_71
# %bb.69:                               # %lor.lhs.false46.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	58(%rdx,%rcx,8), %r10d
	movswl	26(%rdx,%rcx,8), %r11d
	subl	%r11d, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	movzwl	%r11w, %r10d
	cmpl	-12(%rsp), %r10d                # 4-byte Folded Reload
	jge	.LBB10_71
# %bb.70:                               #   in Loop: Header=BB10_51 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB10_72
.LBB10_71:                              # %if.then100.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	$1, %r10b
	.p2align	4, 0x90
.LBB10_72:                              # %if.end114.us.us.us.2.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movb	%r10b, 18(%rax,%rcx)
	cmpb	$0, 15(%rdi,%rcx,2)
	jne	.LBB10_79
# %bb.73:                               # %lor.lhs.false.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	cmpb	$0, 7(%rdi,%rcx,2)
	jne	.LBB10_79
# %bb.74:                               # %if.else.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movzbl	15(%rsi,%rcx,2), %r9d
	cmpb	7(%rsi,%rcx,2), %r9b
	jne	.LBB10_78
# %bb.75:                               # %lor.lhs.false32.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	60(%rdx,%rcx,8), %r9d
	movswl	28(%rdx,%rcx,8), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$3, %r10w
	ja	.LBB10_78
# %bb.76:                               # %lor.lhs.false46.us.us.us.3.1
                                        #   in Loop: Header=BB10_51 Depth=1
	movswl	62(%rdx,%rcx,8), %r9d
	movswl	30(%rdx,%rcx,8), %r10d
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	-12(%rsp), %r9d                 # 4-byte Folded Reload
	jge	.LBB10_78
# %bb.77:                               #   in Loop: Header=BB10_51 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB10_79
.LBB10_80:                              # %for.cond.cleanup
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
.Lfunc_end10:
	.size	deblock_strength_c, .Lfunc_end10-deblock_strength_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_luma_c
	.type	deblock_luma_c,@function
deblock_luma_c:                         # @deblock_luma_c
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
	movq	%r9, -48(%rsp)                  # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	leal	(%rsi,%rsi,2), %eax
	negl	%eax
	cltq
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	leal	(%rsi,%rsi), %eax
	movslq	%eax, %r9
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	negl	%eax
	movslq	%eax, %r11
	movslq	%esi, %r15
	negl	%esi
	movslq	%esi, %rsi
	movslq	%edx, %rdx
	leal	(,%rdx,4), %eax
	cltq
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	xorl	%r9d, %r9d
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	jmp	.LBB11_1
	.p2align	4, 0x90
.LBB11_18:                              # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	addq	-24(%rsp), %rdi                 # 8-byte Folded Reload
.LBB11_16:                              # %for.inc121
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rsp), %r9                  # 8-byte Reload
	incq	%r9
	cmpq	$4, %r9
	je	.LBB11_17
.LBB11_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	%r9, -40(%rsp)                  # 8-byte Spill
	cmpb	$0, (%rax,%r9)
	js	.LBB11_18
# %bb.2:                                # %for.body7.preheader
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$4, %ebp
	jmp	.LBB11_3
.LBB11_13:                              # %if.end97
                                        #   in Loop: Header=BB11_3 Depth=2
	incl	%eax
.LBB11_14:                              # %if.end99
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	%r12d, %r9d
	subl	%r13d, %r9d
	subl	%r10d, %r14d
	leal	(%r14,%r9,4), %r9d
	addl	$4, %r9d
	sarl	$3, %r9d
	movl	%eax, %r10d
	negl	%r10d
	cmpl	%eax, %r9d
	cmovll	%r9d, %eax
	cmpl	%r10d, %r9d
	cmovll	%r10d, %eax
	addl	%eax, %r13d
	testl	%r13d, %r13d
	setg	%r9b
	negb	%r9b
	cmpl	$256, %r13d                     # imm = 0x100
	movzbl	%r9b, %r9d
	cmovbl	%r13d, %r9d
	movb	%r9b, (%rdi,%rsi)
	subl	%eax, %r12d
	testl	%r12d, %r12d
	setg	%al
	negb	%al
	cmpl	$256, %r12d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r12d, %eax
	movb	%al, (%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	.p2align	4, 0x90
.LBB11_15:                              # %if.end117
                                        #   in Loop: Header=BB11_3 Depth=2
	addq	%rdx, %rdi
	decl	%ebp
	je	.LBB11_16
.LBB11_3:                               # %for.body7
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %r13d
	movzbl	(%rdi), %r12d
	movl	%r13d, %eax
	subl	%r12d, %eax
	movl	%eax, %r9d
	negl	%r9d
	cmovsl	%eax, %r9d
	movzbl	%r9b, %eax
	cmpl	%ecx, %eax
	jge	.LBB11_15
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB11_3 Depth=2
	movzbl	(%rdi,%r11), %r14d
	movl	%r14d, %eax
	subl	%r13d, %eax
	movl	%eax, %r9d
	negl	%r9d
	cmovsl	%eax, %r9d
	cmpl	%r8d, %r9d
	jge	.LBB11_15
# %bb.5:                                # %land.lhs.true37
                                        #   in Loop: Header=BB11_3 Depth=2
	movzbl	(%rdi,%r15), %r10d
	movl	%r10d, %eax
	subl	%r12d, %eax
	movl	%eax, %r9d
	negl	%r9d
	cmovsl	%eax, %r9d
	cmpl	%r8d, %r9d
	jae	.LBB11_15
# %bb.6:                                # %if.then41
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	%r15, %rbx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rdi,%rax), %r15d
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %eax
	movl	%eax, -52(%rsp)                 # 4-byte Spill
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	-40(%rsp), %r9                  # 8-byte Reload
	movsbl	(%rax,%r9), %eax
	movl	%r15d, %r11d
	subl	%r13d, %r11d
	movl	%r11d, %r9d
	negl	%r9d
	cmovsl	%r11d, %r9d
	cmpl	%r8d, %r9d
	jae	.LBB11_10
# %bb.7:                                # %if.then48
                                        #   in Loop: Header=BB11_3 Depth=2
	testb	%al, %al
	je	.LBB11_9
# %bb.8:                                # %if.then51
                                        #   in Loop: Header=BB11_3 Depth=2
	leal	(%r12,%r13), %r9d
	incl	%r9d
	shrl	%r9d
	movzbl	%r9b, %r9d
	addl	%r15d, %r9d
	shrl	%r9d
	subl	%r14d, %r9d
	movl	%eax, %r11d
	negl	%r11d
	cmpl	%eax, %r9d
	movl	%eax, %r15d
	cmovll	%r9d, %r15d
	cmpl	%r11d, %r9d
	cmovll	%r11d, %r15d
	addb	%r14b, %r15b
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movb	%r15b, (%rdi,%r9)
.LBB11_9:                               # %if.end68
                                        #   in Loop: Header=BB11_3 Depth=2
	incl	%eax
.LBB11_10:                              # %if.end69
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	subl	%r12d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	cmpl	%r8d, %r11d
	movq	%rbx, %r15
	jae	.LBB11_14
# %bb.11:                               # %if.then73
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	-48(%rsp), %r9                  # 8-byte Reload
	movq	-40(%rsp), %r11                 # 8-byte Reload
	movsbl	(%r9,%r11), %r9d
	testl	%r9d, %r9d
	je	.LBB11_13
# %bb.12:                               # %if.then77
                                        #   in Loop: Header=BB11_3 Depth=2
	leal	(%r12,%r13), %r11d
	incl	%r11d
	shrl	%r11d
	movzbl	%r11b, %r11d
	addl	-52(%rsp), %r11d                # 4-byte Folded Reload
	shrl	%r11d
	subl	%r10d, %r11d
	movl	%r9d, %ebx
	negl	%ebx
	cmpl	%r9d, %r11d
	cmovll	%r11d, %r9d
	cmpl	%ebx, %r11d
	cmovll	%ebx, %r9d
	addb	%r10b, %r9b
	movb	%r9b, (%rdi,%r15)
	jmp	.LBB11_13
.LBB11_17:                              # %for.cond.cleanup
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
.Lfunc_end11:
	.size	deblock_luma_c, .Lfunc_end11-deblock_luma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_chroma_c
	.type	deblock_chroma_c,@function
deblock_chroma_c:                       # @deblock_chroma_c
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
	movslq	%esi, %r10
	leaq	(%r10,%r10), %rax
	negq	%rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	negq	%r10
	movslq	%edx, %rdx
	leal	(%rdx,%rdx), %eax
	cltq
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_10:                              # %if.end48.1
                                        #   in Loop: Header=BB12_1 Depth=1
	addq	%rdx, %r15
	movq	%r15, %rdi
	incq	%rbx
	cmpq	$4, %rbx
	je	.LBB12_12
.LBB12_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsbl	(%r9,%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB12_13
# %bb.2:                                # %for.cond3.preheader
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	%ebp, %r14d
	negl	%r14d
	movzbl	(%rdi,%r10), %r12d
	movzbl	(%rdi), %r15d
	movl	%r12d, %eax
	subl	%r15d, %eax
	movl	%eax, %r13d
	negl	%r13d
	cmovsl	%eax, %r13d
	movzbl	%r13b, %eax
	cmpl	%ecx, %eax
	jge	.LBB12_6
# %bb.3:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %r13d
	movl	%r13d, %r11d
	subl	%r12d, %r11d
	movl	%r11d, %eax
	negl	%eax
	cmovsl	%r11d, %eax
	cmpl	%r8d, %eax
	jge	.LBB12_6
# %bb.4:                                # %land.lhs.true29
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %esi
	movl	%esi, %eax
	subl	%r15d, %eax
	movl	%eax, %r11d
	negl	%r11d
	cmovsl	%eax, %r11d
	cmpl	%r8d, %r11d
	jae	.LBB12_6
# %bb.5:                                # %if.then33
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	%r15d, %eax
	subl	%r12d, %eax
	subl	%esi, %r13d
	leal	4(%r13,%rax,4), %eax
	sarl	$3, %eax
	cmpl	%ebp, %eax
	movl	%ebp, %esi
	cmovll	%eax, %esi
	cmpl	%r14d, %eax
	cmovll	%r14d, %esi
	addl	%esi, %r12d
	testl	%r12d, %r12d
	setg	%al
	negb	%al
	cmpl	$256, %r12d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r12d, %eax
	movb	%al, (%rdi,%r10)
	subl	%esi, %r15d
	testl	%r15d, %r15d
	setg	%al
	negb	%al
	cmpl	$256, %r15d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r15d, %eax
	movb	%al, (%rdi)
	.p2align	4, 0x90
.LBB12_6:                               # %if.end48
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	(%rdi,%rdx), %r15
	movzbl	(%r10,%r15), %r12d
	movzbl	(%rdi,%rdx), %edi
	movl	%r12d, %eax
	subl	%edi, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	movzbl	%sil, %eax
	cmpl	%ecx, %eax
	jge	.LBB12_10
# %bb.7:                                # %land.lhs.true.1
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%r15), %r13d
	movl	%r13d, %eax
	subl	%r12d, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	cmpl	%r8d, %esi
	jge	.LBB12_10
# %bb.8:                                # %land.lhs.true29.1
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rax,%r15), %eax
	movl	%eax, %esi
	subl	%edi, %esi
	movl	%esi, %r11d
	negl	%r11d
	cmovsl	%esi, %r11d
	cmpl	%r8d, %r11d
	jae	.LBB12_10
# %bb.9:                                # %if.then33.1
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	%edi, %esi
	subl	%r12d, %esi
	subl	%eax, %r13d
	leal	4(%r13,%rsi,4), %eax
	sarl	$3, %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	cmpl	%r14d, %eax
	cmovll	%r14d, %ebp
	addl	%ebp, %r12d
	testl	%r12d, %r12d
	setg	%al
	negb	%al
	cmpl	$256, %r12d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r12d, %eax
	movb	%al, (%r15,%r10)
	subl	%ebp, %edi
	testl	%edi, %edi
	setg	%al
	negb	%al
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%edi, %eax
	movb	%al, (%r15)
	jmp	.LBB12_10
	.p2align	4, 0x90
.LBB12_13:                              # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	addq	-8(%rsp), %rdi                  # 8-byte Folded Reload
	incq	%rbx
	cmpq	$4, %rbx
	jne	.LBB12_1
.LBB12_12:                              # %for.cond.cleanup
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
.Lfunc_end12:
	.size	deblock_chroma_c, .Lfunc_end12-deblock_chroma_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_luma_intra_c
	.type	deblock_luma_intra_c,@function
deblock_luma_intra_c:                   # @deblock_luma_intra_c
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
	movslq	%esi, %rax
	leaq	(%rax,%rax,2), %r9
	negq	%r9
	leaq	(%rax,%rax), %rsi
	negq	%rsi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	negq	%r10
	leal	(%rax,%rax), %esi
	movslq	%esi, %rsi
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	movslq	%edx, %rdx
	movl	%ecx, %esi
	shrl	$2, %esi
	addl	$2, %esi
	movl	%esi, -68(%rsp)                 # 4-byte Spill
	leal	(,%rax,4), %esi
	negl	%esi
	movslq	%esi, %rsi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	leal	(%rax,%rax,2), %esi
	movq	%r9, %rax
	movslq	%esi, %rsi
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movl	$16, %ebp
	movq	%r9, -40(%rsp)                  # 8-byte Spill
	jmp	.LBB13_1
.LBB13_11:                              # %if.else138
                                        #   in Loop: Header=BB13_1 Depth=1
	leal	(%r14,%r13,2), %eax
	addl	%r15d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, (%rsi)
	movq	%r9, %rax
	addl	%r13d, %r12d
	leal	(%r12,%r15,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	%rdi, %rsi
.LBB13_12:                              # %if.end158.sink.split
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	%r11b, (%rsi)
	.p2align	4, 0x90
.LBB13_13:                              # %if.end158
                                        #   in Loop: Header=BB13_1 Depth=1
	addq	%rdx, %rdi
	decl	%ebp
	je	.LBB13_14
.LBB13_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%r10), %r14d
	movzbl	(%rdi), %r12d
	movl	%r14d, %esi
	subl	%r12d, %esi
	movl	%esi, %r11d
	negl	%r11d
	cmovsl	%esi, %r11d
	movzbl	%r11b, %r11d
	cmpl	%ecx, %r11d
	jge	.LBB13_13
# %bb.2:                                # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movzbl	(%rdi,%rsi), %r13d
	movl	%r13d, %esi
	subl	%r14d, %esi
	movl	%esi, %ebx
	negl	%ebx
	cmovsl	%esi, %ebx
	cmpl	%r8d, %ebx
	jge	.LBB13_13
# %bb.3:                                # %land.lhs.true26
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	%rax, %r9
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %r15d
	movq	%r9, %rax
	movl	%r15d, %esi
	subl	%r12d, %esi
	movl	%esi, %ebx
	negl	%ebx
	cmovsl	%esi, %ebx
	cmpl	%r8d, %ebx
	jae	.LBB13_13
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	(%rdi,%r10), %rsi
	cmpl	-68(%rsp), %r11d                # 4-byte Folded Reload
	jae	.LBB13_11
# %bb.5:                                # %if.then33
                                        #   in Loop: Header=BB13_1 Depth=1
	movzbl	(%rdi,%rax), %ebx
	movq	-64(%rsp), %r11                 # 8-byte Reload
	movzbl	(%rdi,%r11), %r11d
	movq	%r11, -8(%rsp)                  # 8-byte Spill
	movl	%ebx, %eax
	subl	%r14d, %eax
	movl	%eax, %r11d
	negl	%r11d
	cmovsl	%eax, %r11d
	cmpl	%r8d, %r11d
	jae	.LBB13_7
# %bb.6:                                # %if.then37
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %eax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	leal	(%r12,%r13), %eax
	addl	%r14d, %eax
	leal	(%r15,%rbx), %r11d
	leal	(%r11,%rax,2), %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	movb	%r11b, (%rsi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	addq	%rdi, %rsi
	addl	%ebx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movq	-48(%rsp), %r11                 # 8-byte Reload
	movb	%al, (%rdi,%r11)
	leal	(%rbx,%rbx,2), %eax
	addl	%r13d, %eax
	addl	%r14d, %eax
	addl	%r12d, %eax
	movq	-32(%rsp), %r11                 # 8-byte Reload
	leal	(%rax,%r11,2), %ebx
	addl	$4, %ebx
	shrl	$3, %ebx
	jmp	.LBB13_8
.LBB13_7:                               # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	leal	(%r14,%r13,2), %eax
	leal	(%r15,%rax), %ebx
	addl	$2, %ebx
	shrl	$2, %ebx
.LBB13_8:                               # %if.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	%bl, (%rsi)
	movq	-8(%rsp), %r11                  # 8-byte Reload
	movl	%r11d, %eax
	subl	%r12d, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	cmpl	%r8d, %esi
	jae	.LBB13_10
# %bb.9:                                # %if.then88
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax), %rsi
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movzbl	(%rdi,%rax), %eax
	addl	%r14d, %r12d
	addl	%r15d, %r12d
	addl	%r11d, %r13d
	movq	%r11, %r14
	leal	4(%r13,%r12,2), %r11d
	shrl	$3, %r11d
	movb	%r11b, (%rdi)
	leal	(%r14,%r12), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	-56(%rsp), %rbx                 # 8-byte Reload
	movb	%r11b, (%rdi,%rbx)
	leal	(%r14,%r14,2), %r11d
	addl	%r12d, %r11d
	leal	(%r11,%rax,2), %r11d
	addl	$4, %r11d
	shrl	$3, %r11d
	movq	%r9, %rax
	jmp	.LBB13_12
.LBB13_10:                              # %if.else127
                                        #   in Loop: Header=BB13_1 Depth=1
	addl	%r13d, %r12d
	leal	(%r12,%r15,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movq	%rdi, %rsi
	movq	%r9, %rax
	jmp	.LBB13_12
.LBB13_14:                              # %for.cond.cleanup
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
.Lfunc_end13:
	.size	deblock_luma_intra_c, .Lfunc_end13-deblock_luma_intra_c
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function deblock_chroma_intra_c
	.type	deblock_chroma_intra_c,@function
deblock_chroma_intra_c:                 # @deblock_chroma_intra_c
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movslq	%esi, %rsi
	leaq	(%rsi,%rsi), %r9
	movq	%rsi, %rax
	negq	%rax
	movslq	%edx, %rdx
	movq	%rdi, %r10
	subq	%rsi, %r10
	movzbl	(%r10), %r11d
	movzbl	(%rdi), %r10d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_4
# %bb.1:                                # %land.lhs.true
	movq	%rdi, %rbx
	subq	%r9, %rbx
	movzbl	(%rbx), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_4
# %bb.2:                                # %land.lhs.true18
	movzbl	(%rdi,%rsi), %r14d
	movl	%r14d, %ebp
	subl	%r10d, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_4
# %bb.3:                                # %if.then
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%rdi,%rax)
	addl	%ebx, %r10d
	leal	(%r10,%r14,2), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movb	%r10b, (%rdi)
.LBB14_4:                               # %if.end
	negq	%r9
	leaq	(%rdi,%rdx), %r10
	movzbl	(%rax,%r10), %r11d
	movzbl	(%rdi,%rdx), %edi
	movl	%r11d, %ebx
	subl	%edi, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_8
# %bb.5:                                # %land.lhs.true.1
	movzbl	(%r9,%r10), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_8
# %bb.6:                                # %land.lhs.true18.1
	movzbl	(%rsi,%r10), %r14d
	movl	%r14d, %ebp
	subl	%edi, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_8
# %bb.7:                                # %if.then.1
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%r10,%rax)
	addl	%ebx, %edi
	leal	(%rdi,%r14,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movb	%dil, (%r10)
.LBB14_8:                               # %if.end.1
	leaq	(%r10,%rdx), %rdi
	movzbl	(%rax,%rdi), %r11d
	movzbl	(%r10,%rdx), %r10d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_12
# %bb.9:                                # %land.lhs.true.2
	movzbl	(%r9,%rdi), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_12
# %bb.10:                               # %land.lhs.true18.2
	movzbl	(%rsi,%rdi), %r14d
	movl	%r14d, %ebp
	subl	%r10d, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_12
# %bb.11:                               # %if.then.2
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%rdi,%rax)
	addl	%ebx, %r10d
	leal	(%r10,%r14,2), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movb	%r10b, (%rdi)
.LBB14_12:                              # %if.end.2
	leaq	(%rdi,%rdx), %r10
	movzbl	(%rax,%r10), %r11d
	movzbl	(%rdi,%rdx), %edi
	movl	%r11d, %ebx
	subl	%edi, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_16
# %bb.13:                               # %land.lhs.true.3
	movzbl	(%r9,%r10), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_16
# %bb.14:                               # %land.lhs.true18.3
	movzbl	(%rsi,%r10), %r14d
	movl	%r14d, %ebp
	subl	%edi, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_16
# %bb.15:                               # %if.then.3
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%r10,%rax)
	addl	%ebx, %edi
	leal	(%rdi,%r14,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movb	%dil, (%r10)
.LBB14_16:                              # %if.end.3
	leaq	(%r10,%rdx), %rdi
	movzbl	(%rax,%rdi), %r11d
	movzbl	(%r10,%rdx), %r10d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_20
# %bb.17:                               # %land.lhs.true.4
	movzbl	(%r9,%rdi), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_20
# %bb.18:                               # %land.lhs.true18.4
	movzbl	(%rsi,%rdi), %r14d
	movl	%r14d, %ebp
	subl	%r10d, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_20
# %bb.19:                               # %if.then.4
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%rdi,%rax)
	addl	%ebx, %r10d
	leal	(%r10,%r14,2), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movb	%r10b, (%rdi)
.LBB14_20:                              # %if.end.4
	leaq	(%rdi,%rdx), %r10
	movzbl	(%rax,%r10), %r11d
	movzbl	(%rdi,%rdx), %edi
	movl	%r11d, %ebx
	subl	%edi, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_24
# %bb.21:                               # %land.lhs.true.5
	movzbl	(%r9,%r10), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_24
# %bb.22:                               # %land.lhs.true18.5
	movzbl	(%rsi,%r10), %r14d
	movl	%r14d, %ebp
	subl	%edi, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_24
# %bb.23:                               # %if.then.5
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%r10,%rax)
	addl	%ebx, %edi
	leal	(%rdi,%r14,2), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movb	%dil, (%r10)
.LBB14_24:                              # %if.end.5
	leaq	(%r10,%rdx), %rdi
	movzbl	(%rax,%rdi), %r11d
	movzbl	(%r10,%rdx), %r10d
	movl	%r11d, %ebx
	subl	%r10d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	movzbl	%bpl, %ebx
	cmpl	%ecx, %ebx
	jge	.LBB14_28
# %bb.25:                               # %land.lhs.true.6
	movzbl	(%r9,%rdi), %ebx
	movl	%ebx, %ebp
	subl	%r11d, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jge	.LBB14_28
# %bb.26:                               # %land.lhs.true18.6
	movzbl	(%rsi,%rdi), %r14d
	movl	%r14d, %ebp
	subl	%r10d, %ebp
	movl	%ebp, %r15d
	negl	%r15d
	cmovsl	%ebp, %r15d
	cmpl	%r8d, %r15d
	jae	.LBB14_28
# %bb.27:                               # %if.then.6
	leal	(%r11,%rbx,2), %r11d
	addl	%r14d, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, (%rdi,%rax)
	addl	%ebx, %r10d
	leal	(%r10,%r14,2), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
	movb	%r10b, (%rdi)
.LBB14_28:                              # %if.end.6
	leaq	(%rdi,%rdx), %r10
	movzbl	(%rax,%r10), %r11d
	movzbl	(%rdi,%rdx), %edx
	movl	%r11d, %edi
	subl	%edx, %edi
	movl	%edi, %ebx
	negl	%ebx
	cmovsl	%edi, %ebx
	movzbl	%bl, %edi
	cmpl	%ecx, %edi
	jge	.LBB14_32
# %bb.29:                               # %land.lhs.true.7
	movzbl	(%r9,%r10), %ecx
	movl	%ecx, %edi
	subl	%r11d, %edi
	movl	%edi, %r9d
	negl	%r9d
	cmovsl	%edi, %r9d
	cmpl	%r8d, %r9d
	jge	.LBB14_32
# %bb.30:                               # %land.lhs.true18.7
	movzbl	(%rsi,%r10), %esi
	movl	%esi, %edi
	subl	%edx, %edi
	movl	%edi, %r9d
	negl	%r9d
	cmovsl	%edi, %r9d
	cmpl	%r8d, %r9d
	jae	.LBB14_32
# %bb.31:                               # %if.then.7
	leal	(%r11,%rcx,2), %edi
	addl	%esi, %edi
	addl	$2, %edi
	shrl	$2, %edi
	movb	%dil, (%r10,%rax)
	addl	%ecx, %edx
	leal	(%rdx,%rsi,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, (%r10)
.LBB14_32:                              # %if.end.7
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	deblock_chroma_intra_c, .Lfunc_end14-deblock_chroma_intra_c
	.cfi_endproc
                                        # -- End function
	.type	i_alpha_table,@object           # @i_alpha_table
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
i_alpha_table:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\005\006\007\b\t\n\f\r\017\021\024\026\031\034 $(-28?GPZeq\177\220\242\266\313\342\377\377\377\377\377\377\377\377\377\377\377\377\377\377"
	.size	i_alpha_table, 76

	.type	i_beta_table,@object            # @i_beta_table
	.p2align	4, 0x0
i_beta_table:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\002\003\003\003\003\004\004\004\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\021\021\022\022\022\022\022\022\022\022\022\022\022\022\022\022"
	.size	i_beta_table, 76

	.type	i_tc0_table,@object             # @i_tc0_table
	.p2align	4, 0x0
i_tc0_table:
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.asciz	"\377\000\000"
	.ascii	"\377\000\000\001"
	.ascii	"\377\000\000\001"
	.ascii	"\377\000\000\001"
	.ascii	"\377\000\000\001"
	.ascii	"\377\000\001\001"
	.ascii	"\377\000\001\001"
	.ascii	"\377\001\001\001"
	.ascii	"\377\001\001\001"
	.ascii	"\377\001\001\001"
	.ascii	"\377\001\001\001"
	.ascii	"\377\001\001\002"
	.ascii	"\377\001\001\002"
	.ascii	"\377\001\001\002"
	.ascii	"\377\001\001\002"
	.ascii	"\377\001\002\003"
	.ascii	"\377\001\002\003"
	.ascii	"\377\002\002\003"
	.ascii	"\377\002\002\004"
	.ascii	"\377\002\003\004"
	.ascii	"\377\002\003\004"
	.ascii	"\377\003\003\005"
	.ascii	"\377\003\004\006"
	.ascii	"\377\003\004\006"
	.ascii	"\377\004\005\007"
	.ascii	"\377\004\005\b"
	.ascii	"\377\004\006\t"
	.ascii	"\377\005\007\n"
	.ascii	"\377\006\b\013"
	.ascii	"\377\006\b\r"
	.ascii	"\377\007\n\016"
	.ascii	"\377\b\013\020"
	.ascii	"\377\t\f\022"
	.ascii	"\377\n\r\024"
	.ascii	"\377\013\017\027"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.ascii	"\377\r\021\031"
	.size	i_tc0_table, 304

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
