	.text
	.file	"erc_do_p.c"
	.globl	ercConcealInterFrame            # -- Begin function ercConcealInterFrame
	.p2align	4, 0x90
	.type	ercConcealInterFrame,@function
ercConcealInterFrame:                   # @ercConcealInterFrame
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.LBB0_35
# %bb.1:                                # %land.lhs.true
	movq	%r8, %r13
	cmpl	$0, 64(%r8)
	je	.LBB0_35
# %bb.2:                                # %if.then
	movl	$1, %eax
	cmpl	$0, 60(%r13)
	je	.LBB0_35
# %bb.3:                                # %if.then4
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %r15
	testl	%r9d, %r9d
	je	.LBB0_5
# %bb.4:                                # %if.then5
	movl	849108(%r15), %eax
	imull	849112(%r15), %eax
	addl	%eax, %eax
	cltq
	leaq	512(,%rax,2), %rdi
	jmp	.LBB0_6
.LBB0_5:                                # %if.else
	movl	$512, %edi                      # imm = 0x200
.LBB0_6:                                # %if.end
	callq	malloc@PLT
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB0_8
# %bb.7:                                # %if.then11
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
.LBB0_8:                                # %if.end12
	movl	%ebp, %edi
	sarl	$4, %edi
	testl	%edi, %edi
	jle	.LBB0_34
# %bb.9:                                # %for.body.lr.ph
	sarl	$4, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_34
# %bb.10:                               # %for.body.us.preheader
	movl	%ebp, %edx
	shrl	$2, %edx
	andl	$-2, %edx
	leal	(%rbx,%rbx), %eax
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	leal	(%rdi,%rdi), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	%ebx, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_33:                               # %for.cond19.for.inc167_crit_edge.us
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	cmpl	%edi, %ecx
	je	.LBB0_34
.LBB0_11:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_36 Depth 3
	movl	%ecx, %eax
	shrl	%eax
	movl	%eax, %esi
	notl	%esi
	addl	%edi, %esi
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	testb	$1, %cl
	cmovel	%eax, %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	leal	(%rsi,%rsi), %r9d
	xorl	%r10d, %r10d
	movl	%r9d, (%rsp)                    # 4-byte Spill
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%r10d, %r11d
.LBB0_32:                               # %for.inc164.us
                                        #   in Loop: Header=BB0_12 Depth=2
	incl	%r11d
	movl	%r11d, %r10d
	cmpl	%ebx, %r11d
	jge	.LBB0_33
.LBB0_12:                               # %for.body22.us
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_36 Depth 3
	movq	8(%r13), %rax
	movl	%edx, %ecx
	imull	%r10d, %ecx
	addl	%r9d, %ecx
	movslq	%ecx, %rcx
	cmpb	$1, (%rax,%rcx)
	jg	.LBB0_13
# %bb.14:                               # %for.cond34.us.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	%r10d, %r11d
	movslq	%r10d, %rcx
	leal	1(%rcx), %esi
                                        # kill: def $edx killed $edx killed $rdx
	imull	%esi, %edx
	addl	%r9d, %edx
	movl	%edi, %r12d
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	imull	%r10d, %r12d
	movq	80(%rsp), %rdi                  # 8-byte Reload
	addl	%r12d, %edi
	leal	(%rcx,%rcx), %r9d
	movl	$1, %r8d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_15:                               # %for.cond34.us
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%esi, %ebp
	leaq	(%rcx,%rbx), %rsi
	incq	%rsi
	cmpq	120(%rsp), %rsi                 # 8-byte Folded Reload
	jge	.LBB0_42
# %bb.16:                               # %for.body37.us
                                        #   in Loop: Header=BB0_15 Depth=3
	movl	%r8d, %r14d
	movl	%edi, %r13d
	movl	%r9d, %r15d
	movslq	%edx, %r10
	incq	%rbx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addl	%r10d, %edx
	leal	1(%r14), %r8d
	leal	1(%rbp), %esi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	addl	%r13d, %edi
	leal	2(%r15), %r9d
	cmpb	$2, (%rax,%r10)
	jl	.LBB0_15
# %bb.17:                               # %for.end.us
                                        #   in Loop: Header=BB0_12 Depth=2
	addq	%rbx, %rcx
	decq	%rcx
	cmpl	%ecx, 56(%rsp)                  # 4-byte Folded Reload
	jle	.LBB0_42
# %bb.18:                               # %if.else85.us
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	24(%rsp), %r12                  # 8-byte Reload
	testl	%r12d, %r12d
	je	.LBB0_40
# %bb.19:                               # %if.else120.us
                                        #   in Loop: Header=BB0_12 Depth=2
	addq	%rbx, %r11
	cmpl	%ecx, %r12d
	movl	(%rsp), %edx                    # 4-byte Reload
	jle	.LBB0_26
# %bb.20:                               # %if.else120.us.for.inc164.us_crit_edge
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	%edx, %r9d
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_42:                               # %for.cond57.preheader.us
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	56(%rsp), %rbx                  # 8-byte Reload
	cmpl	%ebx, %r11d
	movl	%ebx, %r11d
	movq	64(%rsp), %r13                  # 8-byte Reload
	movl	4(%rsp), %ebp                   # 4-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	(%rsp), %r9d                    # 4-byte Reload
	jge	.LBB0_32
# %bb.43:                               # %for.body60.us.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	addl	80(%rsp), %r12d                 # 4-byte Folded Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rax), %r15d
	movl	%r9d, %edx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_23:                               # %if.then69.us
                                        #   in Loop: Header=BB0_21 Depth=3
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%r14, %r8
	movl	%ebp, %r9d
	pushq	8(%r13)
	.cfi_adjust_cfa_offset 8
	callq	concealByTrial
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB0_24:                               # %if.end79.us
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	%r12d, %edi
	movl	$-1, %esi
	movl	%ebp, %edx
	movq	%r13, %rcx
	callq	ercMarkCurrMBConcealed@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	incl	%ecx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	addl	%edi, %r12d
	addl	$2, %r15d
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	cmpl	%ecx, %ebx
	movl	(%rsp), %edx                    # 4-byte Reload
	je	.LBB0_25
.LBB0_21:                               # %for.body60.us
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	8(%r13), %rcx
	leaq	128(%rsp), %r14
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	36(%rsp), %r8d                  # 4-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	ercCollect8PredBlocks@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$7, 856512(%rax)
	jg	.LBB0_23
# %bb.22:                               # %if.else75.us
                                        #   in Loop: Header=BB0_21 Depth=3
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, %esi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	%ebp, %ecx
	callq	concealByCopy
	jmp	.LBB0_24
.LBB0_25:                               #   in Loop: Header=BB0_12 Depth=2
	movl	%edx, %r9d
	movl	%ebx, %r11d
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB0_32
.LBB0_40:                               # %for.cond89.preheader.us
                                        #   in Loop: Header=BB0_12 Depth=2
	testq	%rcx, %rcx
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	(%rsp), %edx                    # 4-byte Reload
	jns	.LBB0_36
.LBB0_41:                               # %for.end118.us
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	%edx, %r9d
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%ebx, %eax
	movl	%eax, %r11d
	movq	%r14, %r13
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_38:                               # %if.then103.us
                                        #   in Loop: Header=BB0_36 Depth=3
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%r13d, %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%r12, %r8
	movl	12(%rsp), %r12d                 # 4-byte Reload
	movl	%r12d, %r9d
	pushq	8(%r14)
	.cfi_adjust_cfa_offset 8
	callq	concealByTrial
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB0_39:                               # %if.end113.us
                                        #   in Loop: Header=BB0_36 Depth=3
	movl	%r13d, %edi
	movl	$-1, %esi
	movl	%r12d, %edx
	movq	%r14, %rcx
	callq	ercMarkCurrMBConcealed@PLT
	decl	%ebp
	movq	8(%rsp), %rdi                   # 8-byte Reload
	subl	%edi, %r13d
	addl	$-2, %r15d
	testl	%ebp, %ebp
	movl	(%rsp), %edx                    # 4-byte Reload
	jle	.LBB0_41
.LBB0_36:                               # %for.body92.us
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	8(%r14), %rcx
	leaq	128(%rsp), %r12
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	36(%rsp), %r8d                  # 4-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	ercCollect8PredBlocks@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$7, 856512(%rax)
	jg	.LBB0_38
# %bb.37:                               # %if.else109.us
                                        #   in Loop: Header=BB0_36 Depth=3
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r13d, %esi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movl	%r12d, %ecx
	callq	concealByCopy
	jmp	.LBB0_39
.LBB0_26:                               # %for.body127.us.preheader
                                        #   in Loop: Header=BB0_12 Depth=2
	movq	%r11, 104(%rsp)                 # 8-byte Spill
	xorl	%ebx, %ebx
	movq	64(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_29:                               # %if.then145.us
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	%r13, %rax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movl	%r15d, %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%r12, %r8
	movl	12(%rsp), %r13d                 # 4-byte Reload
	movl	%r13d, %r9d
	pushq	8(%rax)
	.cfi_adjust_cfa_offset 8
	callq	concealByTrial
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB0_30:                               # %if.end155.us
                                        #   in Loop: Header=BB0_27 Depth=3
	movl	%ebx, %eax
	andl	$1, %eax
	movq	112(%rsp), %rbp                 # 8-byte Reload
	subl	%eax, %ebp
	xorl	$1, %eax
	movq	24(%rsp), %r12                  # 8-byte Reload
	addl	%eax, %r12d
	movl	%r15d, %edi
	movl	$-1, %esi
	movl	%r13d, %edx
	movq	64(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rcx
	callq	ercMarkCurrMBConcealed@PLT
	movq	%rbp, %rcx
	incl	%ebx
	decl	%r14d
	movl	(%rsp), %edx                    # 4-byte Reload
	je	.LBB0_31
.LBB0_27:                               # %for.body127.us
                                        #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testb	$1, %bl
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	movl	%r12d, %r15d
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	cmovnel	%ecx, %r15d
	leal	(%r15,%r15), %esi
	movq	8(%r13), %rcx
	leaq	128(%rsp), %r12
	movq	%r12, %rdi
	movl	36(%rsp), %r8d                  # 4-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$2
	.cfi_adjust_cfa_offset 8
	callq	ercCollect8PredBlocks@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	imull	8(%rsp), %r15d                  # 4-byte Folded Reload
	addl	80(%rsp), %r15d                 # 4-byte Folded Reload
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$7, 856512(%rax)
	jg	.LBB0_29
# %bb.28:                               # %if.else151.us
                                        #   in Loop: Header=BB0_27 Depth=3
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%r15d, %esi
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	4(%rsp), %r13d                  # 4-byte Reload
	movl	%r13d, %ecx
	callq	concealByCopy
	jmp	.LBB0_30
.LBB0_31:                               # %for.inc164.us.loopexit
                                        #   in Loop: Header=BB0_12 Depth=2
	movl	%edx, %r9d
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	104(%rsp), %r11                 # 8-byte Reload
	jmp	.LBB0_32
.LBB0_34:                               # %for.end169
	movq	72(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movl	$1, %eax
.LBB0_35:                               # %cleanup
	addq	$168, %rsp
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
	.size	ercConcealInterFrame, .Lfunc_end0-ercConcealInterFrame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function concealByTrial
	.type	concealByTrial,@function
concealByTrial:                         # @concealByTrial
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movl	%edx, %r10d
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	(%rdi), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	$0, 88(%rsp)
	movq	$0, 80(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, 24(%rsp)
	movl	%r9d, %r8d
	sarl	$4, %r8d
	leal	(,%r10,4), %eax
	cltq
	leaq	(%rax,%rax,2), %rsi
	leaq	(%rcx,%rsi,8), %rbx
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	movl	%r9d, %edi
	sarl	$3, %edi
	movl	%edx, %eax
	cltd
	idivl	%r8d
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $eax killed $eax def $rax
	imull	%edi, %eax
	addl	%edx, %edx
	leal	(%rdx,%rax,2), %r11d
	movl	%r11d, %eax
	cltd
	idivl	%edi
	shll	$3, %edx
	movl	%edx, 4(%rcx,%rsi,8)
	shll	$3, %eax
	movl	%eax, 8(%rcx,%rsi,8)
	leal	1(%r10), %eax
	movl	%eax, 148(%rsp)                 # 4-byte Spill
	leal	(%r8,%r10), %eax
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	leal	-1(%r10), %eax
	movl	%eax, 140(%rsp)                 # 4-byte Spill
	subl	%r8d, %r10d
	movq	%r10, 160(%rsp)                 # 8-byte Spill
	xorl	%r8d, %r8d
	movl	$3, %edi
	xorl	%r9d, %r9d
	xorl	%r12d, %r12d
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movl	%r11d, 44(%rsp)                 # 4-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB1_1:                                # %do.body31
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	$4, %r15d
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	movl	%edi, 52(%rsp)                  # 4-byte Spill
	jmp	.LBB1_4
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=2
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	52(%rsp), %edi                  # 4-byte Reload
	movl	%ebp, %r8d
	movl	40(%rsp), %r9d                  # 4-byte Reload
	.p2align	4, 0x90
.LBB1_3:                                # %for.inc276
                                        #   in Loop: Header=BB1_4 Depth=2
	incq	%r15
	cmpq	$8, %r15
	je	.LBB1_53
.LBB1_4:                                # %for.body
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	%edi, (%r14,%r15,4)
	jl	.LBB1_3
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=2
	leal	-4(%r15), %eax
	cmpl	$3, %eax
	ja	.LBB1_12
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB1_4 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$2, %r9d
	movl	$3, %r8d
	movq	160(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r12d
	jmp	.LBB1_12
.LBB1_8:                                # %sw.bb35
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%r9d, %r9d
	movl	$1, %r8d
	movl	144(%rsp), %eax                 # 4-byte Reload
	jmp	.LBB1_11
.LBB1_9:                                # %sw.bb37
                                        #   in Loop: Header=BB1_4 Depth=2
	xorl	%r9d, %r9d
	movl	$2, %r8d
	movl	148(%rsp), %eax                 # 4-byte Reload
	jmp	.LBB1_11
.LBB1_10:                               # %sw.bb33
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	$1, %r9d
	movl	$3, %r8d
	movl	140(%rsp), %eax                 # 4-byte Reload
.LBB1_11:                               # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%eax, %r12d
.LBB1_12:                               # %sw.epilog
                                        #   in Loop: Header=BB1_4 Depth=2
	leal	(,%r12,4), %eax
	cltq
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,8), %r13
	movzbl	(%rcx,%rax,8), %eax
	cmpb	$3, %al
	jb	.LBB1_17
# %bb.13:                               # %cond.true
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r9d, %esi
	leaq	(%rsi,%rsi,2), %rdx
	cmpb	$6, (%r13,%rdx,8)
	je	.LBB1_3
# %bb.14:                               # %cond.true67
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r8d, %edx
	leaq	(%rdx,%rdx,2), %rdx
	cmpb	$6, (%r13,%rdx,8)
	je	.LBB1_3
# %bb.15:                               # %cond.true104.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	12(%r13), %r10
	xorl	%ebp, %ebp
	cmpl	%r8d, %r9d
	sete	%bpl
	notl	%ebp
	leaq	(%rsi,%rsi,2), %rdx
	movzbl	(%r13,%rdx,8), %edx
	movl	$1, %r11d
	cmpl	$4, %edx
	je	.LBB1_27
# %bb.16:                               # %cond.true104.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$6, %edx
	je	.LBB1_29
	jmp	.LBB1_20
	.p2align	4, 0x90
.LBB1_17:                               # %cond.false
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpb	$2, %al
	je	.LBB1_3
# %bb.18:                               # %cond.false114.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	leaq	12(%r13), %r10
	xorl	%ebp, %ebp
	cmpl	%r8d, %r9d
	sete	%bpl
	notl	%ebp
	testb	%al, %al
	je	.LBB1_26
# %bb.19:                               # %cond.false114.peel.if.else157.peel_crit_edge
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r9d, %esi
	xorl	%r11d, %r11d
.LBB1_20:                               # %if.else157.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r11d, 56(%rsp)                 # 4-byte Spill
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movl	%r9d, %r12d
	movl	%r8d, 60(%rsp)                  # 4-byte Spill
	cmpb	$3, %al
	leaq	(%rsi,%rsi,2), %rax
	leaq	12(%r13,%rax,8), %rax
	movq	%r10, 128(%rsp)                 # 8-byte Spill
	cmovbq	%r10, %rax
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movl	8(%rax), %eax
.LBB1_21:                               # %if.end189.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%eax, 32(%rsp)
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	856520(%rax), %rdi
	movl	4(%rbx), %edx
	movl	8(%rbx), %ecx
	leaq	24(%rsp), %rsi
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %r8
	callq	buildPredRegionYUV
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%r14, %rdi
	movl	44(%rsp), %esi                  # 4-byte Reload
	movq	%rbx, %rdx
	movl	16(%rsp), %r8d                  # 4-byte Reload
	callq	edgeDistortion
	movl	%eax, %r14d
	cmpl	48(%rsp), %eax                  # 4-byte Folded Reload
	setge	%al
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	setne	%cl
	movl	$1, 20(%rsp)                    # 4-byte Folded Spill
	testb	%cl, %al
	je	.LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_4 Depth=2
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movq	152(%rsp), %r14                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	52(%rsp), %edi                  # 4-byte Reload
	movl	60(%rsp), %r8d                  # 4-byte Reload
	movl	%r12d, %r9d
	jmp	.LBB1_35
.LBB1_23:                               # %for.body211.preheader.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	32(%rsp), %eax
	movl	%eax, 88(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movzbl	(%r13), %eax
	cmpb	$2, %al
	movl	%r12d, 40(%rsp)                 # 4-byte Spill
	jbe	.LBB1_30
# %bb.24:                               # %cond.true224.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r12d, %eax
	leaq	(%rax,%rax,2), %rax
	cmpb	$4, (%r13,%rax,8)
	jne	.LBB1_31
.LBB1_33:                               #   in Loop: Header=BB1_4 Depth=2
	xorl	%eax, %eax
	jmp	.LBB1_34
.LBB1_26:                               #   in Loop: Header=BB1_4 Depth=2
	xorl	%r11d, %r11d
.LBB1_27:                               # %if.then122.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_32
# %bb.28:                               #   in Loop: Header=BB1_4 Depth=2
	movl	$1, 12(%rsp)                    # 4-byte Folded Spill
.LBB1_29:                               # %for.inc268.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	addl	%r11d, %ebp
	jns	.LBB1_36
	jmp	.LBB1_3
.LBB1_30:                               # %cond.false234.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	testb	%al, %al
	je	.LBB1_33
.LBB1_31:                               # %cond.false246.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movb	$1, %al
.LBB1_34:                               # %cond.end250.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movb	%al, (%rbx)
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdx
	movl	44(%rsp), %edi                  # 4-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rsp), %ecx                  # 4-byte Reload
	callq	copyPredMB
	movl	%r14d, 48(%rsp)                 # 4-byte Spill
	movq	152(%rsp), %r14                 # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	52(%rsp), %edi                  # 4-byte Reload
	movl	60(%rsp), %r8d                  # 4-byte Reload
	movl	40(%rsp), %r9d                  # 4-byte Reload
.LBB1_35:                               # %for.inc268.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	104(%rsp), %r12                 # 8-byte Reload
	movq	128(%rsp), %r10                 # 8-byte Reload
	movl	56(%rsp), %r11d                 # 4-byte Reload
	addl	%r11d, %ebp
	js	.LBB1_3
.LBB1_36:                               # %for.body96
                                        #   in Loop: Header=BB1_4 Depth=2
	movzbl	(%r13), %eax
	cmpl	$3, %eax
	jb	.LBB1_39
# %bb.37:                               # %cond.true104
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r8d, %esi
	leaq	(%rsi,%rsi,2), %rdx
	movzbl	(%r13,%rdx,8), %edx
	cmpl	$4, %edx
	je	.LBB1_43
# %bb.38:                               # %cond.true104
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$6, %edx
	je	.LBB1_3
	jmp	.LBB1_42
.LBB1_39:                               # %cond.false114
                                        #   in Loop: Header=BB1_4 Depth=2
	testl	%eax, %eax
	je	.LBB1_43
# %bb.40:                               # %cond.false114
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$2, %eax
	je	.LBB1_3
# %bb.41:                               # %cond.false114.if.else157_crit_edge
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r8d, %esi
.LBB1_42:                               # %if.else157
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r9d, 40(%rsp)                  # 4-byte Spill
	movl	%r8d, %ebp
	cmpb	$3, %al
	leaq	(%rsi,%rsi,2), %rax
	leaq	12(%r13,%rax,8), %rax
	cmovaeq	%rax, %r10
	movq	(%r10), %rax
	movq	%rax, 24(%rsp)
	movl	8(%r10), %eax
	jmp	.LBB1_46
.LBB1_43:                               # %if.then122
                                        #   in Loop: Header=BB1_4 Depth=2
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_4 Depth=2
	movl	$1, 12(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB1_3
.LBB1_32:                               # %if.else124.peel
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r11d, 56(%rsp)                 # 4-byte Spill
	movq	%r10, 128(%rsp)                 # 8-byte Spill
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movl	%r9d, %r12d
	movl	%r8d, 60(%rsp)                  # 4-byte Spill
	movq	$0, 24(%rsp)
	movl	$1, 12(%rsp)                    # 4-byte Folded Spill
	xorl	%eax, %eax
	jmp	.LBB1_21
.LBB1_45:                               # %if.else124
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%r9d, 40(%rsp)                  # 4-byte Spill
	movl	%r8d, %ebp
	movq	$0, 24(%rsp)
	movl	$1, 12(%rsp)                    # 4-byte Folded Spill
	xorl	%eax, %eax
.LBB1_46:                               # %if.end189
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%eax, 32(%rsp)
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	856520(%rax), %rdi
	movl	4(%rbx), %edx
	movl	8(%rbx), %ecx
	leaq	24(%rsp), %rsi
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %r8
	callq	buildPredRegionYUV
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%r14, %rdi
	movl	44(%rsp), %esi                  # 4-byte Reload
	movq	%rbx, %rdx
	movl	16(%rsp), %r8d                  # 4-byte Reload
	callq	edgeDistortion
	movl	%eax, %ebx
	cmpl	48(%rsp), %eax                  # 4-byte Folded Reload
	setge	%al
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	setne	%cl
	movl	$1, 20(%rsp)                    # 4-byte Folded Spill
	testb	%cl, %al
	jne	.LBB1_2
# %bb.47:                               # %for.body211.preheader
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	32(%rsp), %eax
	movl	%eax, 88(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movzbl	(%r13), %eax
	cmpb	$3, %al
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	jb	.LBB1_50
# %bb.48:                               # %cond.true224
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%ebp, %eax
	leaq	(%rax,%rax,2), %rax
	cmpb	$4, (%r13,%rax,8)
	jne	.LBB1_51
.LBB1_49:                               #   in Loop: Header=BB1_4 Depth=2
	movl	%ebp, %r13d
	xorl	%eax, %eax
	jmp	.LBB1_52
.LBB1_50:                               # %cond.false234
                                        #   in Loop: Header=BB1_4 Depth=2
	testb	%al, %al
	je	.LBB1_49
.LBB1_51:                               # %cond.false246
                                        #   in Loop: Header=BB1_4 Depth=2
	movl	%ebp, %r13d
	movb	$1, %al
.LBB1_52:                               # %cond.end250
                                        #   in Loop: Header=BB1_4 Depth=2
	movq	96(%rsp), %r12                  # 8-byte Reload
	movb	%al, (%r12)
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdx
	movl	44(%rsp), %edi                  # 4-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rsp), %ecx                  # 4-byte Reload
	callq	copyPredMB
	movl	%ebx, 48(%rsp)                  # 4-byte Spill
	movq	%r12, %rbx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	52(%rsp), %edi                  # 4-byte Reload
	movl	%r13d, %r8d
	movl	40(%rsp), %r9d                  # 4-byte Reload
	movq	104(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_53:                               # %for.end278
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	$-3, %edi
	cmpl	$-3, %edi
	ja	.LBB1_55
# %bb.54:                               # %for.end278
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	$2, %edi
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	je	.LBB1_1
.LBB1_55:                               # %do.end
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	movl	44(%rsp), %ebp                  # 4-byte Reload
	jne	.LBB1_58
# %bb.56:                               # %if.then284
	movq	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	856520(%rax), %rdi
	movl	4(%rbx), %edx
	movl	8(%rbx), %ecx
	leaq	24(%rsp), %rsi
	movq	72(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %r8
	callq	buildPredRegionYUV
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movl	16(%rsp), %r8d                  # 4-byte Reload
	callq	edgeDistortion
	cmpl	48(%rsp), %eax                  # 4-byte Folded Reload
	setge	%al
	cmpl	$0, 20(%rsp)                    # 4-byte Folded Reload
	setne	%cl
	testb	%cl, %al
	jne	.LBB1_58
# %bb.57:                               # %for.body315.preheader
	movl	32(%rsp), %eax
	movl	%eax, 88(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 80(%rsp)
	movb	$0, (%rbx)
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rdx
	movl	%ebp, %edi
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rsp), %ecx                  # 4-byte Reload
	callq	copyPredMB
.LBB1_58:                               # %if.end342
	movl	88(%rsp), %eax
	movl	%eax, 20(%rbx)
	movq	80(%rsp), %rax
	movq	%rax, 12(%rbx)
	movslq	%ebp, %rax
	movq	224(%rsp), %rcx
	movb	$2, (%rcx,%rax)
	addq	$168, %rsp
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
.Lfunc_end1:
	.size	concealByTrial, .Lfunc_end1-concealByTrial
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_7
	.quad	.LBB1_10
	.quad	.LBB1_8
	.quad	.LBB1_9
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function concealByCopy
	.type	concealByCopy,@function
concealByCopy:                          # @concealByCopy
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
	movq	%rdx, %r9
	movl	%esi, %eax
	leal	(,%rax,4), %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rdx,2), %rsi
	movb	$0, (%r9,%rsi,8)
	movl	%ecx, %r8d
	sarl	$4, %r8d
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%r8d
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	movl	%edx, %r8d
	shll	$4, %r8d
	movl	%r8d, 4(%r9,%rsi,8)
	movl	%eax, %r8d
	shll	$4, %r8d
	movl	%r8d, 8(%r9,%rsi,8)
	movl	%ecx, %r8d
	sarl	$3, %r8d
	imull	%r8d, %eax
	addl	%edx, %edx
	leal	(%rdx,%rax,2), %eax
	movq	(%rdi), %rdx
	movq	856456(%rdx), %rsi
	movq	848736(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	264(%rdx), %rdx
	movq	(%rdx), %r9
	cltd
	idivl	%r8d
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	shll	$3, %edx
	leal	16(,%rax,8), %r8d
                                        # kill: def $eax killed $eax killed $rax
	shll	$3, %eax
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movslq	%edx, %r12
	movl	%eax, -36(%rsp)                 # 4-byte Spill
	movslq	%eax, %r11
	movl	%ecx, -28(%rsp)                 # 4-byte Spill
	movslq	%ecx, %rbx
	movl	%r8d, -32(%rsp)                 # 4-byte Spill
	movslq	%r8d, %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	leaq	1(%r12), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	leaq	2(%r12), %rcx
	movq	%rbx, %rax
	imulq	%r11, %rax
	leaq	(%r12,%r12), %r8
	leaq	(%r8,%rax,2), %r13
	leaq	3(%r12), %rbp
	addq	%rbx, %rbx
	leaq	4(%r12), %r8
	leaq	5(%r12), %rax
	leaq	6(%r12), %r10
	leaq	7(%r12), %r14
	.p2align	4, 0x90
.LBB2_1:                                # %for.cond7.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, (%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movq	-16(%rsp), %r15                 # 8-byte Reload
	movzwl	(%rdx,%r15,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 2(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%rcx,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 4(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%rbp,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 6(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%r8,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 8(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%rax,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 10(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%r10,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 12(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	(%rdx,%r14,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 14(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	16(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 16(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	18(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 18(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	20(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 20(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	22(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 22(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	24(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 24(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	26(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 26(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	28(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 28(%r15,%r13)
	movq	128(%r9), %rdx
	movq	(%rdx,%r11,8), %rdx
	movzwl	30(%rdx,%r12,2), %edx
	movq	8(%rdi), %r15
	movw	%dx, 30(%r15,%r13)
	incq	%r11
	addq	%rbx, %r13
	cmpq	-8(%rsp), %r11                  # 8-byte Folded Reload
	jl	.LBB2_1
# %bb.2:                                # %for.end19.i
	movl	268(%rsi), %r8d
	movslq	%r8d, %r10
	movzbl	uv_div+16(,%r10,4), %ecx
	movl	-36(%rsp), %edx                 # 4-byte Reload
	sarl	%cl, %edx
	movl	-32(%rsp), %r13d                # 4-byte Reload
	movl	%r13d, %eax
	sarl	%cl, %eax
	cmpl	%eax, %edx
	movl	-28(%rsp), %r15d                # 4-byte Reload
	movq	-24(%rsp), %r12                 # 8-byte Reload
	jge	.LBB2_8
# %bb.3:                                # %for.body30.lr.ph.i
	leal	16(%r12), %eax
	movslq	%edx, %rdx
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_7:                                # %for.inc67.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movzbl	uv_div+16(,%r10,4), %ecx
	movl	%r13d, %r11d
	sarl	%cl, %r11d
	incq	%rdx
	movslq	%r11d, %rcx
	cmpq	%rcx, %rdx
	jge	.LBB2_8
.LBB2_4:                                # %for.body30.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	movzbl	uv_div(,%r10,4), %ecx
	movl	%r12d, %r11d
	sarl	%cl, %r11d
	movslq	%r8d, %r10
	movl	uv_div(,%r10,4), %ecx
	movl	%eax, %ebx
	sarl	%cl, %ebx
	cmpl	%ebx, %r11d
	jge	.LBB2_7
# %bb.5:                                # %for.body42.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	movslq	%r11d, %r11
	movl	%edx, %ebx
	imull	%r15d, %ebx
	.p2align	4, 0x90
.LBB2_6:                                # %for.body42.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r8d
	movslq	%r8d, %rcx
	addq	%r11, %rcx
	movq	136(%r9), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx,8), %r8
	movzwl	(%r8,%r11,2), %r8d
	movq	16(%rdi), %r10
	movw	%r8w, (%r10,%rcx,2)
	movq	136(%r9), %r8
	movq	8(%r8), %r8
	movq	(%r8,%rdx,8), %r8
	movzwl	(%r8,%r11,2), %r8d
	movq	24(%rdi), %r10
	movw	%r8w, (%r10,%rcx,2)
	movl	268(%rsi), %r8d
	movslq	%r8d, %r10
	movl	uv_div(,%r10,4), %ecx
	movl	%eax, %ebp
	sarl	%cl, %ebp
	incq	%r11
	movslq	%ebp, %r14
	cmpq	%r14, %r11
	jl	.LBB2_6
	jmp	.LBB2_7
.LBB2_8:                                # %copyBetweenFrames.exit
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
.Lfunc_end2:
	.size	concealByCopy, .Lfunc_end2-concealByCopy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function conceal_lost_frames
.LCPI3_0:
	.zero	16
	.text
	.globl	conceal_lost_frames
	.p2align	4, 0x90
	.type	conceal_lost_frames,@function
conceal_lost_frames:                    # @conceal_lost_frames
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	movq	88(%rsi), %xmm0                 # xmm0 = mem[0],zero
	movq	$0, 88(%rsi)
	cmpl	$1, 849252(%r15)
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	jne	.LBB3_2
# %bb.1:                                # %if.then
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	subl	849236(%r15), %eax
	movl	%eax, 849228(%r15)
	movl	$0, 849244(%r15)
	movl	172(%r14), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	%ebp, %eax
	je	.LBB3_15
	jmp	.LBB3_4
.LBB3_2:                                # %if.else
	movl	848944(%r15), %eax
	incl	%eax
	xorl	%edx, %edx
	divl	848992(%r15)
	movl	%edx, %ebp
	movl	172(%r14), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	%ebp, %eax
	jne	.LBB3_4
.LBB3_15:                               # %while.end
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	movlps	%xmm0, 88(%r14)
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 172(%r14)
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
.LBB3_4:                                # %while.body.lr.ph
	.cfi_def_cfa_offset 112
	leaq	13340(%r14), %r13
	leaq	13344(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_14:                               # %if.end31
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	856656(%r15), %rdi
	movq	%r12, %rsi
	callq	store_picture_in_dpb@PLT
	movl	%ebp, 848944(%r15)
	movdqu	(%r13), %xmm0
	movups	16(%r13), %xmm1
	movups	32(%r13), %xmm2
	movups	48(%r13), %xmm3
	incl	%ebp
	movl	%ebp, %eax
	cltd
	idivl	848992(%r15)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movups	%xmm3, 48(%rax)
	movups	%xmm2, 32(%rax)
	movups	%xmm1, 16(%rax)
	movdqu	%xmm0, (%rax)
	movl	$0, (%r13)
	movl	%edx, %ebp
	cmpl	%edx, 12(%rsp)                  # 4-byte Folded Reload
	je	.LBB3_15
.LBB3_5:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	movl	848780(%r15), %edx
	movl	848784(%r15), %ecx
	movl	848788(%r15), %r8d
	movl	848792(%r15), %r9d
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture@PLT
	movq	%rax, %r12
	movl	$1, 96(%rax)
	movl	%ebp, 28(%rax)
	movl	%ebp, 20(%rax)
	movl	$0, 52(%rax)
	movq	$1, 44(%rax)
	movl	$1, 320(%rax)
	movl	$0, 264(%rax)
	movl	%ebp, 172(%r14)
	movl	849232(%r15), %eax
	addl	849228(%r15), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 4(%r12)
	movl	%eax, 849228(%r15)
	movl	44(%rbx), %ecx
	decl	%ecx
	js	.LBB3_11
# %bb.6:                                # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	16(%rbx), %rax
	movl	%ecx, %ecx
	incq	%rcx
	jmp	.LBB3_7
	.p2align	4, 0x90
.LBB3_10:                               # %for.inc.i.i
                                        #   in Loop: Header=BB3_7 Depth=2
	decq	%rcx
	jle	.LBB3_11
.LBB3_7:                                # %for.body.i.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rax,%rcx,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB3_10
# %bb.8:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_7 Depth=2
	movq	48(%rdx), %rdi
	cmpl	$0, 44(%rdi)
	je	.LBB3_10
# %bb.9:                                # %land.lhs.true.i.i
                                        #   in Loop: Header=BB3_7 Depth=2
	cmpb	$0, 40(%rdi)
	jne	.LBB3_10
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_5 Depth=1
	xorl	%edi, %edi
.LBB3_12:                               # %copy_prev_pic_to_concealed_pic.exit
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	(%rbx), %rdx
	movl	$0, 849256(%rdx)
	movq	%r12, %rsi
	callq	copy_to_conceal
	cmpl	$1, 849252(%r15)
	jne	.LBB3_14
# %bb.13:                               # %if.then20
                                        #   in Loop: Header=BB3_5 Depth=1
	movq	%r12, %r14
	addq	$4, %r14
	movabsq	$4294967298, %rax               # imm = 0x100000002
	movq	%rax, 248(%r12)
	movq	848736(%r15), %rax
	movq	(%rax), %rax
	movl	1176(%rax), %esi
	movq	%rbx, %rdi
	callq	flush_dpb@PLT
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, (%r14)
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	$0, 849228(%r15)
	jmp	.LBB3_14
.Lfunc_end3:
	.size	conceal_lost_frames, .Lfunc_end3-conceal_lost_frames
	.cfi_endproc
                                        # -- End function
	.globl	update_ref_list_for_concealment # -- Begin function update_ref_list_for_concealment
	.p2align	4, 0x90
	.type	update_ref_list_for_concealment,@function
update_ref_list_for_concealment:        # @update_ref_list_for_concealment
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	44(%rdi), %edx
	testl	%edx, %edx
	je	.LBB4_5
# %bb.1:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_4:                                # %for.inc
                                        #   in Loop: Header=BB4_2 Depth=1
	incq	%rcx
	movl	%edx, %r8d
	cmpq	%r8, %rcx
	jae	.LBB4_5
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rdi), %r8
	movq	(%r8,%rcx,8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB4_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	24(%rdi), %rdx
	movl	%esi, %r9d
	incl	%esi
	movq	%r8, (%rdx,%r9,8)
	movl	44(%rdi), %edx
	jmp	.LBB4_4
.LBB4_5:                                # %for.end
	movq	8(%rax), %rax
	movl	2168(%rax), %eax
	movl	%eax, 48(%rdi)
	retq
.Lfunc_end4:
	.size	update_ref_list_for_concealment, .Lfunc_end4-update_ref_list_for_concealment
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_for_non_reference_loss # -- Begin function init_lists_for_non_reference_loss
	.p2align	4, 0x90
	.type	init_lists_for_non_reference_loss,@function
init_lists_for_non_reference_loss:      # @init_lists_for_non_reference_loss
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	16(%r12), %r11
	movzbl	2068(%r11), %ecx
	addb	$4, %cl
	movl	$-1, %eax
	shll	%cl, %eax
	testl	%edx, %edx
	je	.LBB5_1
.LBB5_8:                                # %if.end33
	xorl	%r13d, %r13d
	movl	%ebp, %eax
	orl	%r14d, %eax
	je	.LBB5_9
# %bb.16:                               # %if.end69
	xorl	$1, %r14d
	orl	%ebp, %r14d
	je	.LBB5_17
	jmp	.LBB5_41
.LBB5_1:                                # %for.cond.preheader
	movl	48(%rbx), %edx
	testl	%edx, %edx
	je	.LBB5_8
# %bb.2:                                # %for.body.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_6:                                # %if.then5
                                        #   in Loop: Header=BB5_3 Depth=1
	addl	%esi, %edx
	movq	24(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movl	%edx, 28(%rsi)
	movq	24(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	28(%rdx), %esi
	movq	48(%rdx), %rdx
	movl	%esi, 28(%rdx)
	movl	48(%rbx), %edx
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%rcx
	movl	%edx, %esi
	cmpq	%rsi, %rcx
	jae	.LBB5_8
.LBB5_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	cmpl	$1, 44(%rsi)
	jne	.LBB5_7
# %bb.4:                                # %if.then5
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	20(%rsi), %edx
	movl	%eax, %esi
	cmpl	849248(%r12), %edx
	ja	.LBB5_6
# %bb.5:                                # %if.then5
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%esi, %esi
	jmp	.LBB5_6
.LBB5_9:                                # %for.cond38.preheader
	movl	44(%rbx), %ecx
	testl	%ecx, %ecx
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	je	.LBB5_10
# %bb.11:                               # %for.body40.lr.ph
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_14:                               # %for.inc57
                                        #   in Loop: Header=BB5_12 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB5_15
.LBB5_12:                               # %for.body40
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$1, 44(%rdx)
	jne	.LBB5_14
# %bb.13:                               # %if.then46
                                        #   in Loop: Header=BB5_12 Depth=1
	movq	48(%rdx), %rcx
	movq	848736(%r12), %rdx
	movq	(%rdx), %rdx
	movq	264(%rdx), %rdx
	movslq	%r13d, %rsi
	incl	%r13d
	movq	%rcx, (%rdx,%rsi,8)
	movl	44(%rbx), %ecx
	jmp	.LBB5_14
.LBB5_10:
	xorl	%r13d, %r13d
.LBB5_15:                               # %for.end59
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rdi
	movslq	%r13d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_pic_num_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	%r15b, 256(%rax)
	movq	8(%rsp), %r11                   # 8-byte Reload
	xorl	$1, %r14d
	orl	%ebp, %r14d
	jne	.LBB5_41
.LBB5_17:                               # %for.cond76.preheader
	movl	44(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB5_23
# %bb.18:                               # %for.body80.lr.ph
	xorl	%eax, %eax
	jmp	.LBB5_19
	.p2align	4, 0x90
.LBB5_22:                               # %for.inc108
                                        #   in Loop: Header=BB5_19 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB5_23
.LBB5_19:                               # %for.body80
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$1, 44(%rdx)
	jne	.LBB5_22
# %bb.20:                               # %if.then87
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	849244(%r12), %esi
	movq	48(%rdx), %rdx
	cmpl	4(%rdx), %esi
	jle	.LBB5_22
# %bb.21:                               # %if.then94
                                        #   in Loop: Header=BB5_19 Depth=1
	movq	848736(%r12), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rcx
	movslq	%r13d, %rsi
	incl	%r13d
	movq	%rdx, (%rcx,%rsi,8)
	movl	44(%rbx), %ecx
	jmp	.LBB5_22
.LBB5_23:                               # %for.end110
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rdi
	movslq	%r13d, %r14
	movl	$8, %edx
	movl	$compare_pic_by_poc_desc, %ecx
	movq	%r14, %rsi
	callq	qsort@PLT
	movl	44(%rbx), %ecx
	movl	%r13d, %ebp
	testl	%ecx, %ecx
	je	.LBB5_29
# %bb.24:                               # %for.body120.lr.ph
	xorl	%eax, %eax
	movl	%r13d, %ebp
	jmp	.LBB5_25
	.p2align	4, 0x90
.LBB5_28:                               # %for.inc150
                                        #   in Loop: Header=BB5_25 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB5_29
.LBB5_25:                               # %for.body120
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$1, 44(%rdx)
	jne	.LBB5_28
# %bb.26:                               # %if.then127
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	849244(%r12), %esi
	movq	48(%rdx), %rdx
	cmpl	4(%rdx), %esi
	jge	.LBB5_28
# %bb.27:                               # %if.then136
                                        #   in Loop: Header=BB5_25 Depth=1
	movq	848736(%r12), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	44(%rbx), %ecx
	jmp	.LBB5_28
.LBB5_29:                               # %for.end152
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	leaq	(,%r14,8), %r15
	movq	264(%rax), %rdi
	addq	%r15, %rdi
	movl	%ebp, %eax
	subl	%r14d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_poc_asc, %ecx
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	callq	qsort@PLT
	movslq	%ebp, %rbx
	testl	%r14d, %r14d
	jle	.LBB5_34
# %bb.30:                               # %for.body164.preheader
	movl	%r13d, %eax
	cmpl	$1, %r13d
	jne	.LBB5_45
# %bb.31:
	xorl	%ecx, %ecx
	jmp	.LBB5_32
.LBB5_45:                               # %for.body164.preheader.new
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	leaq	(,%rbx,8), %rsi
	subq	%r15, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB5_46:                               # %for.body164
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%r12), %rdi
	movq	(%rdi), %rdi
	movq	264(%rdi), %r8
	movq	(%r8,%rcx,8), %r8
	movq	272(%rdi), %rdi
	addq	%rsi, %rdi
	movq	%r8, (%rdi,%rcx,8)
	movq	848736(%r12), %rdi
	movq	(%rdi), %rdi
	movq	264(%rdi), %r8
	movq	8(%r8,%rcx,8), %r8
	movq	272(%rdi), %rdi
	addq	%rsi, %rdi
	movq	%r8, 8(%rdi,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB5_46
.LBB5_32:                               # %for.cond182.preheader.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB5_34
# %bb.33:                               # %for.body164.epil
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rdx
	movq	(%rdx,%rcx,8), %rdx
	shlq	$3, %rcx
	addq	272(%rax), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, (%rcx,%rax,8)
.LBB5_34:                               # %for.cond182.preheader
	movl	%ebp, %ecx
	subl	%r13d, %ecx
	jle	.LBB5_40
# %bb.35:                               # %for.body185.preheader
	movq	%r14, %rax
	testb	$1, %cl
	je	.LBB5_37
# %bb.36:                               # %for.body185.prol
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movq	264(%rax), %rcx
	movq	272(%rax), %rax
	movq	(%rcx,%r14,8), %rcx
	movq	%rcx, (%rax)
	leaq	1(%r14), %rax
.LBB5_37:                               # %for.body185.prol.loopexit
	leaq	-1(%rbx), %rcx
	cmpq	%r14, %rcx
	je	.LBB5_40
# %bb.38:                               # %for.body185.preheader1
	negq	%r15
	.p2align	4, 0x90
.LBB5_39:                               # %for.body185
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%r12), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rdx
	movq	(%rdx,%rax,8), %rdx
	movq	272(%rcx), %rcx
	addq	%r15, %rcx
	movq	%rdx, (%rcx,%rax,8)
	movq	848736(%r12), %rcx
	movq	(%rcx), %rcx
	movq	264(%rcx), %rdx
	movq	8(%rdx,%rax,8), %rdx
	movq	272(%rcx), %rcx
	addq	%r15, %rcx
	movq	%rdx, 8(%rcx,%rax,8)
	addq	$2, %rax
	cmpq	%rax, %rbx
	jne	.LBB5_39
.LBB5_40:                               # %for.end201
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	%bpl, 257(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	%bpl, 256(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movsbq	256(%rax), %rcx
	leaq	(,%rcx,8), %rdi
	addq	264(%rax), %rdi
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movsbq	256(%rax), %rcx
	leaq	(,%rcx,8), %rdi
	addq	272(%rax), %rdi
	subq	%rcx, %rbx
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	movq	%rbx, %rsi
	callq	qsort@PLT
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	%bpl, 257(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	%bpl, 256(%rax)
	movq	8(%rsp), %r11                   # 8-byte Reload
.LBB5_41:                               # %if.end257
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movsbq	256(%rax), %rcx
	cmpq	$2, %rcx
	jl	.LBB5_54
# %bb.42:                               # %if.end257
	cmpb	257(%rax), %cl
	jne	.LBB5_54
# %bb.43:                               # %for.cond278.preheader
	movq	264(%rax), %rsi
	movq	272(%rax), %rdx
	cmpb	$8, %cl
	jae	.LBB5_47
# %bb.44:
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.LBB5_50
.LBB5_47:                               # %vector.ph
	movl	%ecx, %edi
	andl	$120, %edi
	movl	%edi, %r8d
	shll	$3, %r8d
	pxor	%xmm0, %xmm0
	xorl	%r9d, %r9d
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB5_48:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rsi,%r9), %xmm5
	movdqu	16(%rsi,%r9), %xmm6
	movdqu	32(%rsi,%r9), %xmm7
	movdqu	48(%rsi,%r9), %xmm8
	movdqu	(%rdx,%r9), %xmm9
	pcmpeqd	%xmm5, %xmm9
	movdqu	16(%rdx,%r9), %xmm5
	pcmpeqd	%xmm6, %xmm5
	movdqu	32(%rdx,%r9), %xmm6
	pcmpeqd	%xmm7, %xmm6
	movdqu	48(%rdx,%r9), %xmm7
	pcmpeqd	%xmm8, %xmm7
	pshufd	$177, %xmm9, %xmm8              # xmm8 = xmm9[1,0,3,2]
	pand	%xmm9, %xmm8
	pxor	%xmm4, %xmm8
	por	%xmm8, %xmm0
	pshufd	$177, %xmm5, %xmm8              # xmm8 = xmm5[1,0,3,2]
	pand	%xmm5, %xmm8
	pxor	%xmm4, %xmm8
	por	%xmm8, %xmm3
	pshufd	$177, %xmm6, %xmm5              # xmm5 = xmm6[1,0,3,2]
	pand	%xmm6, %xmm5
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm2
	pshufd	$177, %xmm7, %xmm5              # xmm5 = xmm7[1,0,3,2]
	pand	%xmm7, %xmm5
	pxor	%xmm4, %xmm5
	por	%xmm5, %xmm1
	addq	$64, %r9
	cmpq	%r9, %r8
	jne	.LBB5_48
# %bb.49:                               # %middle.block
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	psllq	$63, %xmm1
	movmskpd	%xmm1, %r9d
	xorl	%r8d, %r8d
	testl	%r9d, %r9d
	setne	%r8b
	cmpq	%rcx, %rdi
	je	.LBB5_52
.LBB5_50:                               # %for.body286.preheader
	movl	$1, %r9d
	.p2align	4, 0x90
.LBB5_51:                               # %for.body286
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi,8), %r10
	cmpq	(%rdx,%rdi,8), %r10
	cmovnel	%r9d, %r8d
	incq	%rdi
	cmpq	%rdi, %rcx
	jne	.LBB5_51
.LBB5_52:                               # %for.end305
	testl	%r8d, %r8d
	jne	.LBB5_54
# %bb.53:                               # %if.then306
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	movq	%rcx, (%rdx)
	movq	848736(%r12), %rcx
	movq	(%rcx), %rcx
	movq	272(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movzbl	256(%rax), %ecx
.LBB5_54:                               # %if.end328
	movsbl	%cl, %ecx
	movl	3120(%r11), %edx
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movsbl	257(%rax), %ecx
	movl	3120(%r11), %edx
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 257(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rax
	movb	$0, 257(%rax)
	movq	848736(%r12), %rax
	movq	(%rax), %rcx
	movzbl	256(%rcx), %eax
	cmpq	$32, %rax
	ja	.LBB5_58
# %bb.55:                               # %for.body363.preheader
	incq	%rax
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB5_56:                               # %for.body363
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%r12), %rdx
	movq	(%rdx), %rdx
	movq	264(%rdx), %rdx
	movq	$0, -8(%rdx,%rax,8)
	incq	%rcx
	cmpl	$33, %eax
	movq	%rcx, %rax
	jne	.LBB5_56
# %bb.57:                               # %for.end372.loopexit
	movq	848736(%r12), %rax
	movq	(%rax), %rcx
.LBB5_58:                               # %for.end372
	movzbl	257(%rcx), %eax
	cmpq	$32, %rax
	ja	.LBB5_61
# %bb.59:                               # %for.body381.preheader
	incq	%rax
	movq	%rax, %rcx
	.p2align	4, 0x90
.LBB5_60:                               # %for.body381
                                        # =>This Inner Loop Header: Depth=1
	movq	848736(%r12), %rdx
	movq	(%rdx), %rdx
	movq	272(%rdx), %rdx
	movq	$0, -8(%rdx,%rax,8)
	incq	%rcx
	cmpl	$33, %eax
	movq	%rcx, %rax
	jne	.LBB5_60
.LBB5_61:                               # %for.end390
	addq	$24, %rsp
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
.Lfunc_end5:
	.size	init_lists_for_non_reference_loss, .Lfunc_end5-init_lists_for_non_reference_loss
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc,@function
compare_pic_by_pic_num_desc:            # @compare_pic_by_pic_num_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	28(%rax), %eax
	movq	(%rsi), %rcx
	movl	28(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end6:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end6-compare_pic_by_pic_num_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc,@function
compare_pic_by_poc_desc:                # @compare_pic_by_poc_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	4(%rax), %eax
	movq	(%rsi), %rcx
	movl	4(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end7:
	.size	compare_pic_by_poc_desc, .Lfunc_end7-compare_pic_by_poc_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc,@function
compare_pic_by_poc_asc:                 # @compare_pic_by_poc_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	4(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	4(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end8:
	.size	compare_pic_by_poc_asc, .Lfunc_end8-compare_pic_by_poc_asc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc,@function
compare_pic_by_lt_pic_num_asc:          # @compare_pic_by_lt_pic_num_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	32(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	32(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end9:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end9-compare_pic_by_lt_pic_num_asc
	.cfi_endproc
                                        # -- End function
	.globl	get_pic_from_dpb                # -- Begin function get_pic_from_dpb
	.p2align	4, 0x90
	.type	get_pic_from_dpb,@function
get_pic_from_dpb:                       # @get_pic_from_dpb
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	44(%rdi), %ecx
	movl	849240(%rax), %r9d
	cmpl	$2, %r9d
	je	.LBB10_3
# %bb.1:                                # %entry
	xorl	%r8d, %r8d
	cmpl	$1, %r9d
	jne	.LBB10_5
# %bb.2:                                # %if.then
	subl	849236(%rax), %esi
	jmp	.LBB10_4
.LBB10_3:                               # %if.then6
	addl	849236(%rax), %esi
.LBB10_4:                               # %if.end8
	movl	%esi, %r8d
.LBB10_5:                               # %if.end8
	leaq	-1(%rcx), %rsi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB10_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	decl	%ecx
	js	.LBB10_9
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB10_6 Depth=1
	movq	16(%rdi), %r10
	movl	%esi, %r9d
	andl	$2147483647, %r9d               # imm = 0x7FFFFFFF
	movq	(%r10,%r9,8), %r10
	decq	%rsi
	cmpl	%r8d, 40(%r10)
	jne	.LBB10_6
# %bb.8:                                # %if.then11
	movl	%ecx, (%rdx)
	movq	16(%rdi), %rax
	movq	(%rax,%r9,8), %rax
	movq	48(%rax), %rax
.LBB10_9:                               # %cleanup
	retq
.Lfunc_end10:
	.size	get_pic_from_dpb, .Lfunc_end10-get_pic_from_dpb
	.cfi_endproc
                                        # -- End function
	.globl	comp                            # -- Begin function comp
	.p2align	4, 0x90
	.type	comp,@function
comp:                                   # @comp
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	subl	(%rsi), %eax
	retq
.Lfunc_end11:
	.size	comp, .Lfunc_end11-comp
	.cfi_endproc
                                        # -- End function
	.globl	init_node                       # -- Begin function init_node
	.p2align	4, 0x90
	.type	init_node,@function
init_node:                              # @init_node
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB12_2
# %bb.1:                                # %if.else
	movq	%r14, (%rax)
	movl	%ebx, 8(%rax)
.LBB12_2:                               # %cleanup
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	init_node, .Lfunc_end12-init_node
	.cfi_endproc
                                        # -- End function
	.globl	print_node                      # -- Begin function print_node
	.p2align	4, 0x90
	.type	print_node,@function
print_node:                             # @print_node
	.cfi_startproc
# %bb.0:                                # %entry
	movl	8(%rdi), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	jmp	printf@PLT                      # TAILCALL
.Lfunc_end13:
	.size	print_node, .Lfunc_end13-print_node
	.cfi_endproc
                                        # -- End function
	.globl	print_list                      # -- Begin function print_list
	.p2align	4, 0x90
	.type	print_list,@function
print_list:                             # @print_list
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB14_4
# %bb.1:                                # %while.body.preheader
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB14_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB14_2
# %bb.3:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB14_4:                               # %while.end
	retq
.Lfunc_end14:
	.size	print_list, .Lfunc_end14-print_list
	.cfi_endproc
                                        # -- End function
	.globl	delete_list                     # -- Begin function delete_list
	.p2align	4, 0x90
	.type	delete_list,@function
delete_list:                            # @delete_list
	.cfi_startproc
# %bb.0:                                # %entry
	movq	848928(%rdi), %rax
	testq	%rax, %rax
	je	.LBB15_8
# %bb.1:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	%rsi, %rax
	je	.LBB15_2
	.p2align	4, 0x90
.LBB15_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	16(%rax), %rax
	cmpq	%rsi, %rax
	jne	.LBB15_3
# %bb.4:                                # %while.end
	movq	%rcx, 848936(%rdi)
	testq	%rsi, %rsi
	je	.LBB15_7
	.p2align	4, 0x90
.LBB15_6:                               # %while.body12
                                        # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movq	%rsi, %rdi
	callq	free@PLT
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB15_6
.LBB15_7:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB15_8:                               # %cleanup
	retq
.LBB15_2:                               # %if.then3
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	addq	$848928, %rdi                   # imm = 0xCF420
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	testq	%rsi, %rsi
	jne	.LBB15_6
	jmp	.LBB15_7
.Lfunc_end15:
	.size	delete_list, .Lfunc_end15-delete_list
	.cfi_endproc
                                        # -- End function
	.globl	conceal_non_ref_pics            # -- Begin function conceal_non_ref_pics
	.p2align	4, 0x90
	.type	conceal_non_ref_pics,@function
conceal_non_ref_pics:                   # @conceal_non_ref_pics
	.cfi_startproc
# %bb.0:                                # %entry
	movl	44(%rdi), %eax
	testl	%eax, %eax
	je	.LBB16_26
# %bb.1:                                # %if.end
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movq	(%rdi), %r14
	leaq	856056(%r14), %rdi
	movl	40(%rbx), %esi
	movl	$4, %edx
	movl	$comp, %ecx
	callq	qsort@PLT
	movl	40(%rbx), %eax
	cmpl	%ebp, %eax
	jne	.LBB16_2
.LBB16_25:                              # %for.end
	movl	4(%rsp), %eax                   # 4-byte Reload
	movl	%eax, 44(%rbx)
	addq	$24, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB16_26:                              # %cleanup
	retq
.LBB16_2:                               # %for.body.lr.ph
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	848928(%r14), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	jmp	.LBB16_3
	.p2align	4, 0x90
.LBB16_23:                              # %add_node.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rax, (%rcx)
	movq	%rax, 848936(%r14)
.LBB16_24:                              # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=1
	incq	%r12
	movl	40(%rbx), %eax
	movl	%eax, %ecx
	subl	%ebp, %ecx
	cmpq	%rcx, %r12
	jae	.LBB16_25
.LBB16_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_10 Depth 2
                                        #     Child Loop BB16_16 Depth 2
	movl	%eax, 44(%rbx)
	movl	856060(%r14,%r12,4), %eax
	subl	856056(%r14,%r12,4), %eax
	cmpl	849236(%r14), %eax
	jle	.LBB16_24
# %bb.4:                                # %if.then15
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	848780(%r14), %edx
	movl	848784(%r14), %ecx
	movl	848788(%r14), %r8d
	movl	848792(%r14), %r9d
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture@PLT
	movl	849236(%r14), %r13d
	addl	856056(%r14,%r12,4), %r13d
	cmpl	849244(%r14), %r13d
	jle	.LBB16_24
# %bb.5:                                # %if.then23
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rax, %r15
	movl	%r13d, 849244(%r14)
	movd	%r13d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 4(%rax)
	movq	(%rbx), %rcx
	movl	849240(%rcx), %edx
	cmpl	$2, %edx
	je	.LBB16_8
# %bb.6:                                # %if.then23
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%eax, %eax
	cmpl	$1, %edx
	jne	.LBB16_9
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	%r13d, %eax
	subl	849236(%rcx), %eax
	jmp	.LBB16_9
.LBB16_8:                               # %if.then6.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	849236(%rcx), %eax
	addl	%r13d, %eax
.LBB16_9:                               # %if.end8.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	44(%rbx), %ecx
	leaq	-1(%rcx), %rdx
	.p2align	4, 0x90
.LBB16_10:                              # %for.cond.i
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%ecx
	js	.LBB16_11
# %bb.12:                               # %for.body.i
                                        #   in Loop: Header=BB16_10 Depth=2
	movq	16(%rbx), %rsi
	movl	%edx, %edi
	andl	$2147483647, %edi               # imm = 0x7FFFFFFF
	movq	(%rsi,%rdi,8), %rsi
	decq	%rdx
	cmpl	%eax, 40(%rsi)
	jne	.LBB16_10
# %bb.13:                               # %if.then11.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	48(%rsi), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	jmp	.LBB16_14
.LBB16_11:                              #   in Loop: Header=BB16_3 Depth=1
	xorl	%edi, %edi
	movq	8(%rsp), %rcx                   # 8-byte Reload
.LBB16_14:                              # %get_pic_from_dpb.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leal	1(%rcx), %eax
	movl	%eax, 44(%rbx)
	movl	20(%rdi), %eax
	incl	%eax
	movl	%eax, 849248(%r14)
	movq	(%rbx), %rax
	movl	44(%rbx), %edx
	testl	%edx, %edx
	je	.LBB16_19
# %bb.15:                               # %for.body.i84.preheader
                                        #   in Loop: Header=BB16_3 Depth=1
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.LBB16_16
	.p2align	4, 0x90
.LBB16_18:                              # %for.inc.i
                                        #   in Loop: Header=BB16_16 Depth=2
	incq	%rcx
	movl	%edx, %r8d
	cmpq	%r8, %rcx
	jae	.LBB16_19
.LBB16_16:                              # %for.body.i84
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r8
	movq	(%r8,%rcx,8), %r8
	cmpl	$0, 44(%r8)
	je	.LBB16_18
# %bb.17:                               # %if.then.i87
                                        #   in Loop: Header=BB16_16 Depth=2
	movq	24(%rbx), %rdx
	movl	%esi, %r9d
	incl	%esi
	movq	%r8, (%rdx,%r9,8)
	movl	44(%rbx), %edx
	jmp	.LBB16_18
	.p2align	4, 0x90
.LBB16_19:                              # %update_ref_list_for_concealment.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	8(%rax), %rax
	movl	2168(%rax), %eax
	movl	%eax, 48(%rbx)
	movl	$1, 849256(%r14)
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	copy_to_conceal
	movl	$1, %edi
	movl	$24, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB16_21
# %bb.20:                               # %if.else.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	%r15, (%rax)
	movl	%r13d, 8(%rax)
.LBB16_21:                              # %init_node.exit
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmpq	$0, (%rcx)
	je	.LBB16_23
# %bb.22:                               # %if.end.i
                                        #   in Loop: Header=BB16_3 Depth=1
	movq	848936(%r14), %rcx
	addq	$16, %rcx
	jmp	.LBB16_23
.Lfunc_end16:
	.size	conceal_non_ref_pics, .Lfunc_end16-conceal_non_ref_pics
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function copy_to_conceal
	.type	copy_to_conceal,@function
copy_to_conceal:                        # @copy_to_conceal
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
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	108(%rdi), %eax
	movl	%eax, 108(%rsi)
	movl	849256(%rdx), %eax
	movl	%eax, 248(%rdi)
	movl	%eax, 248(%rsi)
	movl	$0, 252(%rsi)
	movl	256(%rdi), %eax
	movl	%eax, 256(%rsi)
	movl	260(%rdi), %eax
	movl	%eax, 260(%rsi)
	movl	$0, 264(%rdi)
	movl	$0, 264(%rsi)
	movl	268(%rdi), %eax
	movl	%eax, 268(%rsi)
	movl	272(%rdi), %eax
	movl	%eax, 272(%rsi)
	movl	276(%rdi), %eax
	movl	%eax, 276(%rsi)
	movl	280(%rdi), %eax
	movl	%eax, 280(%rsi)
	movl	284(%rdi), %eax
	movl	%eax, 284(%rsi)
	movl	292(%rdi), %eax
	movl	%eax, 292(%rsi)
	movl	288(%rdi), %eax
	movl	%eax, 288(%rsi)
	movl	296(%rdi), %eax
	movl	%eax, 296(%rsi)
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movl	308(%rdi), %eax
	movl	%eax, 308(%rsi)
	movl	849240(%rdx), %eax
	cmpl	$1, %eax
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	jne	.LBB17_16
# %bb.1:                                # %if.then
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movl	104(%rcx), %eax
	movl	%eax, 104(%rsi)
	movl	108(%rcx), %eax
	movl	%eax, 108(%rsi)
	movq	136(%rcx), %rax
	movq	136(%rsi), %rcx
	movslq	848780(%r15), %rdi
	testq	%rdi, %rdi
	setle	%r9b
	movslq	848784(%r15), %r8
	testq	%r8, %r8
	setle	%r10b
	movl	848788(%r15), %edx
	movl	848792(%r15), %esi
	orb	%r9b, %r10b
	jne	.LBB17_9
# %bb.2:                                # %for.cond1.preheader.us.preheader.i
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	128(%r9), %r9
	movq	88(%rsp), %r10                  # 8-byte Reload
	movq	128(%r10), %r10
	movl	%edi, %r11d
	andl	$3, %r11d
	movl	%edi, %ebx
	andl	$2147483644, %ebx               # imm = 0x7FFFFFFC
	xorl	%r14d, %r14d
	jmp	.LBB17_3
	.p2align	4, 0x90
.LBB17_8:                               # %for.cond1.for.inc10_crit_edge.us.i
                                        #   in Loop: Header=BB17_3 Depth=1
	incq	%r14
	cmpq	%r8, %r14
	je	.LBB17_9
.LBB17_3:                               # %for.cond1.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_4 Depth 2
                                        #     Child Loop BB17_7 Depth 2
	xorl	%r15d, %r15d
	cmpl	$4, %edi
	jb	.LBB17_5
	.p2align	4, 0x90
.LBB17_4:                               # %for.body3.us.i
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9,%r14,8), %r12
	movzwl	(%r12,%r15,2), %ebp
	movq	(%r10,%r14,8), %r12
	movw	%bp, (%r12,%r15,2)
	movq	(%r9,%r14,8), %r12
	movzwl	2(%r12,%r15,2), %ebp
	movq	(%r10,%r14,8), %r12
	movw	%bp, 2(%r12,%r15,2)
	movq	(%r9,%r14,8), %r12
	movzwl	4(%r12,%r15,2), %ebp
	movq	(%r10,%r14,8), %r12
	movw	%bp, 4(%r12,%r15,2)
	movq	(%r9,%r14,8), %r12
	movzwl	6(%r12,%r15,2), %ebp
	movq	(%r10,%r14,8), %r12
	movw	%bp, 6(%r12,%r15,2)
	addq	$4, %r15
	cmpq	%r15, %rbx
	jne	.LBB17_4
.LBB17_5:                               # %for.cond1.for.inc10_crit_edge.us.i.unr-lcssa
                                        #   in Loop: Header=BB17_3 Depth=1
	testq	%r11, %r11
	je	.LBB17_8
# %bb.6:                                # %for.body3.us.i.epil.preheader
                                        #   in Loop: Header=BB17_3 Depth=1
	movq	%r11, %r12
	.p2align	4, 0x90
.LBB17_7:                               # %for.body3.us.i.epil
                                        #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9,%r14,8), %r13
	movzwl	(%r13,%r15,2), %ebp
	movq	(%r10,%r14,8), %r13
	movw	%bp, (%r13,%r15,2)
	incq	%r15
	decq	%r12
	jne	.LBB17_7
	jmp	.LBB17_8
.LBB17_9:                               # %for.cond13.preheader.i
	testl	%esi, %esi
	movq	160(%rsp), %r15                 # 8-byte Reload
	jle	.LBB17_15
# %bb.10:                               # %for.cond16.preheader.lr.ph.i
	testl	%edx, %edx
	jle	.LBB17_15
# %bb.11:                               # %for.cond16.preheader.us.preheader.i
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB17_12:                              # %for.cond16.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_13 Depth 2
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB17_13:                              # %for.body18.us.i
                                        #   Parent Loop BB17_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %r9
	movq	(%r9,%rdi,8), %r9
	movzwl	(%r9,%r8,2), %r9d
	movq	(%rcx), %r10
	movq	(%r10,%rdi,8), %r10
	movw	%r9w, (%r10,%r8,2)
	movq	8(%rax), %r9
	movq	(%r9,%rdi,8), %r9
	movzwl	(%r9,%r8,2), %r9d
	movq	8(%rcx), %r10
	movq	(%r10,%rdi,8), %r10
	movw	%r9w, (%r10,%r8,2)
	incq	%r8
	cmpq	%r8, %rdx
	jne	.LBB17_13
# %bb.14:                               # %for.cond16.for.inc42_crit_edge.us.i
                                        #   in Loop: Header=BB17_12 Depth=1
	incq	%rdi
	cmpq	%rsi, %rdi
	jne	.LBB17_12
.LBB17_15:                              # %if.endthread-pre-split
	movl	849240(%r15), %eax
.LBB17_16:                              # %if.end
	cmpl	$2, %eax
	jne	.LBB17_86
# %bb.17:                               # %if.then23
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 268(%rax)
	je	.LBB17_19
# %bb.18:                               # %if.then26
	movl	849112(%r15), %eax
	imull	849108(%r15), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rax
	leaq	32(,%rax,2), %rdi
	jmp	.LBB17_20
.LBB17_19:                              # %if.else
	movl	$32, %edi
.LBB17_20:                              # %if.end30
	callq	malloc@PLT
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%r15, 856520(%r15)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	104(%rax), %ebp
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movl	%ebp, 104(%rcx)
	movl	108(%rax), %eax
	movl	%eax, 108(%rcx)
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %ebx
	movl	849256(%r15), %eax
	cmpl	$1, %eax
	sete	%r14b
	jne	.LBB17_22
# %bb.21:                               # %if.then45
	movq	856656(%r15), %rdi
	movl	248(%rcx), %esi
	movq	848736(%r15), %rax
	movq	(%rax), %rax
	movl	184(%rax), %edx
	callq	init_lists_for_non_reference_loss
	testl	%ebx, %ebx
	movq	88(%rsp), %r8                   # 8-byte Reload
	movq	112(%rsp), %rdi                 # 8-byte Reload
	jg	.LBB17_24
	jmp	.LBB17_85
.LBB17_22:                              # %if.else47
	movq	848736(%r15), %rax
	movq	(%rax), %rdi
	callq	init_lists@PLT
	testl	%ebx, %ebx
	movq	88(%rsp), %r8                   # 8-byte Reload
	movq	112(%rsp), %rdi                 # 8-byte Reload
	jle	.LBB17_85
.LBB17_24:                              # %for.body.lr.ph
	testl	%ebp, %ebp
	jle	.LBB17_85
# %bb.25:                               # %for.body.us.preheader
	xorl	%eax, %eax
	movb	%r14b, %al
	incl	%eax
	movl	%eax, 136(%rsp)                 # 4-byte Spill
	shll	$2, %ebx
	leaq	32(%rdi), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	shll	$2, %ebp
	cmpl	$2, %ebp
	movl	$1, %eax
	cmovgel	%ebp, %eax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	jmp	.LBB17_26
	.p2align	4, 0x90
.LBB17_84:                              # %for.cond55.for.inc211_crit_edge.us
                                        #   in Loop: Header=BB17_26 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	incq	%rax
	cmpq	200(%rsp), %rax                 # 8-byte Folded Reload
	jae	.LBB17_85
.LBB17_26:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_27 Depth 2
                                        #       Child Loop BB17_32 Depth 3
	movswl	%ax, %ecx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	leal	(,%rcx,4), %ecx
	movl	%ecx, 140(%rsp)                 # 4-byte Spill
	leaq	(%rax,%rax), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	leal	(,%rax,4), %ecx
	movl	%eax, %edx
	shll	$4, %edx
	movq	%rdx, 264(%rsp)                 # 8-byte Spill
	leaq	1(%rcx), %rdx
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	leaq	2(%rcx), %rdx
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	addq	$3, %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	1(,%rax,2), %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	xorl	%r10d, %r10d
	jmp	.LBB17_27
	.p2align	4, 0x90
.LBB17_83:                              # %for.inc208.us
                                        #   in Loop: Header=BB17_27 Depth=2
	incq	%r10
	cmpq	232(%rsp), %r10                 # 8-byte Folded Reload
	movl	144(%rsp), %r9d                 # 4-byte Reload
	je	.LBB17_84
.LBB17_27:                              # %for.body59.us
                                        #   Parent Loop BB17_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_32 Depth 3
	movq	%r10, 176(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	152(%rax), %rax
	movq	168(%rsp), %r12                 # 8-byte Reload
	movq	(%rax,%r12,8), %rsi
	movq	%r10, %rcx
	shlq	$5, %rcx
	movswl	16(%rsi,%rcx), %eax
	cltd
	movl	136(%rsp), %edi                 # 4-byte Reload
	idivl	%edi
	movl	%eax, %r11d
	movswl	18(%rsi,%rcx), %eax
	cltd
	idivl	%edi
	movl	%eax, %edx
	movl	24(%rsi,%rcx), %ebp
	testb	%bpl, %bpl
	movl	$0, %eax
	cmovlel	%eax, %ebp
	movq	152(%r8), %rax
	movq	(%rax,%r12,8), %rax
	movl	%r11d, 80(%rsp)                 # 4-byte Spill
	movw	%r11w, 16(%rax,%rcx)
	movq	152(%r8), %rax
	movq	(%rax,%r12,8), %rax
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movw	%dx, 18(%rax,%rcx)
	movq	152(%r8), %rax
	movq	(%rax,%r12,8), %rax
	movb	%bpl, 24(%rax,%rcx)
	movl	%r10d, %eax
	orl	%r12d, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	adcl	$0, %r9d
	movq	856520(%r15), %r13
	movq	856456(%r13), %r15
	movq	848888(%r13), %rbx
	movl	%r9d, 144(%rsp)                 # 4-byte Spill
	movslq	%r9d, %rax
	imulq	$480, %rax, %r14                # imm = 0x1E0
	movq	(%rbx,%r14), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	8(%rsp), %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movw	%dx, 28(%rbx,%r14)
	movw	%r12w, 30(%rbx,%r14)
	movl	140(%rsp), %eax                 # 4-byte Reload
	movl	%eax, 36(%rbx,%r14)
	movl	849112(%r13), %eax
	imull	280(%rsp), %eax                 # 4-byte Folded Reload
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	movl	%ecx, 56(%rbx,%r14)
	movswl	%dx, %eax
	leal	(,%rax,4), %ecx
	movl	%ecx, 32(%rbx,%r14)
	movq	%r13, %r8
	imull	849108(%r13), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$2, %ecx
	movl	%ecx, 52(%rbx,%r14)
	movq	%rbx, %rcx
	cmpl	$0, 384(%rbx,%r14)
	je	.LBB17_29
# %bb.28:                               # %cond.true.i.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movl	68(%r15), %eax
	sarl	%eax
	decl	%eax
	jmp	.LBB17_30
	.p2align	4, 0x90
.LBB17_29:                              # %cond.false.i.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movl	84(%r15), %eax
.LBB17_30:                              # %cond.end.i.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movq	%r15, %r11
	movq	%rcx, %rbx
	addq	%r14, %rbx
	movl	%edx, %esi
	shll	$4, %esi
	movl	80(%rsp), %r13d                 # 4-byte Reload
	addl	%r13d, %esi
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	120(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %edx
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	264(%r14), %rcx
	movzbl	%bpl, %edi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	(%rcx,%rdi,8), %rdi
	movq	8(%rsp), %r9
	movl	80(%r15), %r10d
	movl	356(%r15), %ecx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r8, %rbp
	movl	849072(%r8), %r12d
	movzwl	849060(%r8), %r15d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$4, %ecx
	movl	$4, %r8d
	movq	%rbx, 200(%rsp)                 # 8-byte Spill
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	movq	%r11, %r15
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	1368(%r14)
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma@PLT
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movw	%ax, 4(%rcx)
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	movw	%ax, 6(%rcx)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, 4(%rcx)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, 6(%rcx)
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rcx
	movw	%ax, 4(%rcx)
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	16(%rcx), %rcx
	movw	%ax, 6(%rcx)
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	%ax, 4(%rcx)
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r14), %rcx
	movq	(%rcx), %rcx
	movq	24(%rcx), %rcx
	movw	%ax, 6(%rcx)
	movq	1248(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	pinsrw	$4, (%rdx), %xmm0
	pinsrw	$5, 2(%rdx), %xmm0
	pinsrw	$6, 4(%rdx), %xmm0
	pinsrw	$7, 6(%rdx), %xmm0
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movdqu	%xmm0, (%rdx)
	movq	16(%rax), %rcx
	movq	24(%rax), %rax
	movq	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	pinsrw	$4, (%rax), %xmm0
	pinsrw	$5, 2(%rax), %xmm0
	pinsrw	$6, 4(%rax), %xmm0
	pinsrw	$7, 6(%rax), %xmm0
	movdqu	%xmm0, 16(%rdx)
	cmpl	$0, 268(%r15)
	je	.LBB17_81
# %bb.31:                               # %if.then.i.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movl	%r13d, %r8d
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	849108(%rbp)
	movl	%eax, %ebx
	leal	-1(%rbx), %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	849112(%rbp)
                                        # kill: def $eax killed $eax def $rax
	leal	-1(%rax), %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%ebx, %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	sarl	%eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movb	$1, %al
	movq	56(%rsp), %rcx                  # 8-byte Reload
	shll	$3, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	$0, 72(%rsp)                    # 8-byte Folded Spill
	movq	208(%rsp), %r12                 # 8-byte Reload
	movq	%r15, 128(%rsp)                 # 8-byte Spill
	movq	%rbx, 184(%rsp)                 # 8-byte Spill
	jmp	.LBB17_32
	.p2align	4, 0x90
.LBB17_80:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	264(%rbx), %rax
	movq	(%rax,%rdx), %rax
	movq	136(%rax), %rax
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	(%rax,%r13,8), %rcx
	movslq	%r8d, %rax
	movq	(%rcx,%rax,8), %rax
	movslq	%r11d, %rdx
	movzwl	(%rax,%rdx,2), %r8d
	imull	%r9d, %r8d
	movslq	20(%rsp), %r11                  # 4-byte Folded Reload
	movzwl	(%rax,%r11,2), %eax
	imull	%edi, %eax
	addl	%r8d, %eax
	movslq	%ebp, %r8
	movq	(%rcx,%r8,8), %rcx
	movzwl	(%rcx,%rdx,2), %edx
	imull	%r9d, %edx
	movzwl	(%rcx,%r11,2), %ecx
	imull	%edi, %ecx
	addl	%edx, %ecx
	imull	%r14d, %ecx
	imull	%r10d, %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	addl	%ecx, %eax
	cltd
	idivl	28(%rsp)                        # 4-byte Folded Reload
	movq	1248(%rbx), %rcx
	movq	8(%rcx,%r13,8), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	1248(%rbx), %rax
	movq	8(%rax,%r13,8), %rax
	movq	(%rax), %rcx
	movzwl	(%rcx), %ecx
	movw	%cx, (%r12)
	movq	(%rax), %rax
	movzwl	2(%rax), %eax
	movw	%ax, 2(%r12)
	movq	1248(%rbx), %rax
	movq	8(%rax,%r13,8), %rax
	movq	8(%rax), %rax
	movzwl	(%rax), %eax
	movw	%ax, 4(%r12)
	movq	1248(%rbx), %rax
	movq	8(%rax,%r13,8), %rax
	movq	8(%rax), %rax
	movzwl	2(%rax), %eax
	movw	%ax, 6(%r12)
	addq	$8, %r12
	movl	$1, %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	testb	$1, 156(%rsp)                   # 1-byte Folded Reload
	movl	$0, %eax
	movq	184(%rsp), %rbx                 # 8-byte Reload
	movl	%esi, %r8d
	je	.LBB17_81
.LBB17_32:                              # %for.body93.i.us
                                        #   Parent Loop BB17_26 Depth=1
                                        #     Parent Loop BB17_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	movl	52(%rax), %edi
	movl	%edi, %r11d
	imull	%ebx, %r11d
	addl	%r8d, %r11d
	movl	%r11d, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	testl	%eax, %eax
	jg	.LBB17_34
# %bb.33:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%ecx, %ecx
.LBB17_34:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	192(%rsp), %rax                 # 8-byte Reload
	movl	56(%rax), %r14d
	movq	104(%rsp), %rax                 # 8-byte Reload
	addl	%r11d, %eax
	cltd
	idivl	%ebx
	movl	%eax, %r9d
	testl	%eax, %eax
	movq	56(%rsp), %rsi                  # 8-byte Reload
	jg	.LBB17_36
# %bb.35:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%r9d, %r9d
.LBB17_36:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	incl	%edi
	imull	%ebx, %edi
	addl	%r8d, %edi
	movl	%edi, %eax
	cltd
	idivl	%ebx
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	jg	.LBB17_38
# %bb.37:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	$0, 44(%rsp)                    # 4-byte Folded Spill
.LBB17_38:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r9d, 84(%rsp)                  # 4-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	addl	%edi, %eax
	cltd
	idivl	%ebx
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	testl	%eax, %eax
	jg	.LBB17_40
# %bb.39:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
.LBB17_40:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	%r12, 288(%rsp)                 # 8-byte Spill
	movl	72(%r15), %ebp
	movl	76(%r15), %r10d
	decl	%ebp
	movl	%ecx, %r9d
	movl	%ecx, 152(%rsp)                 # 4-byte Spill
	cmpl	%ebp, %ecx
	jl	.LBB17_42
# %bb.41:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %r9d
.LBB17_42:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r14d, %r8d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	imull	%ecx, %r8d
	addl	120(%rsp), %r8d                 # 4-byte Folded Reload
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r12d
	testl	%eax, %eax
	jle	.LBB17_43
# %bb.44:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	decl	%r10d
	movl	%r12d, %ecx
	cmpl	%r10d, %r12d
	jge	.LBB17_45
.LBB17_46:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	84(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r15d
	cmpl	%ebp, %eax
	jl	.LBB17_48
.LBB17_47:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %r15d
.LBB17_48:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	96(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	cltd
	idivl	32(%rsp)                        # 4-byte Folded Reload
	movl	%eax, %ebp
	testl	%eax, %eax
	jg	.LBB17_50
# %bb.49:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%ebp, %ebp
.LBB17_50:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %edx
	cmpl	%r10d, %ebp
	jl	.LBB17_52
# %bb.51:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r10d, %edx
.LBB17_52:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	andl	104(%rsp), %r11d                # 4-byte Folded Reload
	movl	%ebx, %r13d
	subl	%r11d, %r13d
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	264(%rbx), %rax
	movq	(%rax,%rsi), %rax
	movq	136(%rax), %rax
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	(%rax,%rsi,8), %r10
	movslq	%ecx, %rax
	movq	(%r10,%rax,8), %rax
	movslq	%r9d, %rcx
	movzwl	(%rax,%rcx,2), %r9d
	imull	%r13d, %r9d
	movslq	%r15d, %r15
	movzwl	(%rax,%r15,2), %eax
	imull	%r11d, %eax
	addl	%r9d, %eax
	movslq	%edx, %rdx
	movq	(%r10,%rdx,8), %rdx
	andl	96(%rsp), %r8d                  # 4-byte Folded Reload
	movzwl	(%rdx,%rcx,2), %ecx
	movzwl	(%rdx,%r15,2), %edx
	movq	32(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, %r10d
	subl	%r8d, %r10d
	movl	%r13d, 148(%rsp)                # 4-byte Spill
	imull	%r13d, %ecx
	imull	%r11d, %edx
	addl	%ecx, %edx
	imull	%r8d, %edx
	imull	%r10d, %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	addl	%edx, %eax
	cltd
	idivl	28(%rsp)                        # 4-byte Folded Reload
	movq	1248(%rbx), %rcx
	movq	8(%rcx,%rsi,8), %rcx
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	128(%rsp), %rax                 # 8-byte Reload
	movl	72(%rax), %r9d
	movl	76(%rax), %ecx
	decl	%r9d
	movl	44(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %eax
	cmpl	%r9d, %edx
	jl	.LBB17_54
# %bb.53:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r9d, %eax
.LBB17_54:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	decl	%ecx
	cmpl	%ecx, %r12d
	jl	.LBB17_56
# %bb.55:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ecx, %r12d
.LBB17_56:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%esi, %edx
	cmpl	%r9d, %esi
	movq	184(%rsp), %rbx                 # 8-byte Reload
	jl	.LBB17_58
# %bb.57:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r9d, %edx
.LBB17_58:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	cmpl	%ecx, %ebp
	jl	.LBB17_60
# %bb.59:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ecx, %ebp
.LBB17_60:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	andl	104(%rsp), %edi                 # 4-byte Folded Reload
	movl	%ebx, %r9d
	subl	%edi, %r9d
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	264(%rsi), %rcx
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx), %rcx
	movq	136(%rcx), %rcx
	movq	72(%rsp), %r13                  # 8-byte Reload
	movq	(%rcx,%r13,8), %rcx
	movslq	%r12d, %r15
	movq	(%rcx,%r15,8), %r15
	movslq	%eax, %r12
	movzwl	(%r15,%r12,2), %ebx
	imull	%r9d, %ebx
	movslq	%edx, %rdx
	movzwl	(%r15,%rdx,2), %eax
	imull	%edi, %eax
	addl	%ebx, %eax
	movslq	%ebp, %rbx
	movq	(%rcx,%rbx,8), %rcx
	movzwl	(%rcx,%r12,2), %ebx
	movzwl	(%rcx,%rdx,2), %ecx
	imull	%r9d, %ebx
	imull	%edi, %ecx
	addl	%ebx, %ecx
	imull	%r8d, %ecx
	imull	%r10d, %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	addl	%ecx, %eax
	cltd
	idivl	28(%rsp)                        # 4-byte Folded Reload
	movq	1248(%rsi), %rcx
	movq	8(%rcx,%r13,8), %rcx
	movq	(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movl	72(%rsi), %ebp
	movl	76(%rsi), %r10d
	decl	%ebp
	movl	152(%rsp), %ebx                 # 4-byte Reload
	cmpl	%ebp, %ebx
	jl	.LBB17_62
# %bb.61:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %ebx
.LBB17_62:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	incl	%r14d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	imull	%ecx, %r14d
	addl	120(%rsp), %r14d                # 4-byte Folded Reload
	movl	%r14d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r8d
	testl	%eax, %eax
	movl	84(%rsp), %r15d                 # 4-byte Reload
	jle	.LBB17_63
# %bb.64:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	decl	%r10d
	movl	%r8d, %ecx
	cmpl	%r10d, %r8d
	jge	.LBB17_65
.LBB17_66:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	cmpl	%ebp, %r15d
	jl	.LBB17_68
.LBB17_67:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %r15d
.LBB17_68:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	96(%rsp), %rax                  # 8-byte Reload
	addl	%r14d, %eax
	cltd
	idivl	32(%rsp)                        # 4-byte Folded Reload
	movl	%eax, %ebp
	testl	%eax, %eax
	jg	.LBB17_70
# %bb.69:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%ebp, %ebp
.LBB17_70:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ebp, %edx
	cmpl	%r10d, %ebp
	jl	.LBB17_72
# %bb.71:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r10d, %edx
.LBB17_72:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movq	64(%rsp), %r12                  # 8-byte Reload
	movq	264(%r12), %rax
	movq	56(%rsp), %r10                  # 8-byte Reload
	movq	(%rax,%r10), %rax
	movq	136(%rax), %rax
	movq	72(%rsp), %rsi                  # 8-byte Reload
	movq	(%rax,%rsi,8), %r10
	movslq	%ecx, %rax
	movq	(%r10,%rax,8), %rax
	movslq	%ebx, %rcx
	movzwl	(%rax,%rcx,2), %ebx
	movl	148(%rsp), %r13d                # 4-byte Reload
	imull	%r13d, %ebx
	movslq	%r15d, %r15
	movzwl	(%rax,%r15,2), %eax
	imull	%r11d, %eax
	addl	%ebx, %eax
	movslq	%edx, %rdx
	movq	(%r10,%rdx,8), %rdx
	movzwl	(%rdx,%rcx,2), %ecx
	imull	%r13d, %ecx
	movzwl	(%rdx,%r15,2), %edx
	imull	%r11d, %edx
	andl	96(%rsp), %r14d                 # 4-byte Folded Reload
	addl	%ecx, %edx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r10d
	subl	%r14d, %r10d
	imull	%r14d, %edx
	imull	%r10d, %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	addl	%edx, %eax
	cltd
	idivl	28(%rsp)                        # 4-byte Folded Reload
	movq	1248(%r12), %rcx
	movq	8(%rcx,%rsi,8), %rcx
	movq	8(%rcx), %rcx
	movw	%ax, (%rcx)
	movq	128(%rsp), %r15                 # 8-byte Reload
	movl	72(%r15), %ecx
	movl	76(%r15), %eax
	decl	%ecx
	movl	44(%rsp), %r11d                 # 4-byte Reload
	cmpl	%ecx, %r11d
	jge	.LBB17_73
# %bb.74:                               # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	decl	%eax
	cmpl	%eax, %r8d
	movl	80(%rsp), %esi                  # 4-byte Reload
	jge	.LBB17_75
.LBB17_76:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	cmpl	%ecx, 20(%rsp)                  # 4-byte Folded Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	jge	.LBB17_77
.LBB17_78:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	cmpl	%eax, %ebp
	movq	288(%rsp), %r12                 # 8-byte Reload
	jl	.LBB17_80
	jmp	.LBB17_79
	.p2align	4, 0x90
.LBB17_43:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%r12d, %r12d
	decl	%r10d
	movl	%r12d, %ecx
	cmpl	%r10d, %r12d
	jl	.LBB17_46
.LBB17_45:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r10d, %ecx
	movl	84(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r15d
	cmpl	%ebp, %eax
	jge	.LBB17_47
	jmp	.LBB17_48
	.p2align	4, 0x90
.LBB17_63:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	xorl	%r8d, %r8d
	decl	%r10d
	movl	%r8d, %ecx
	cmpl	%r10d, %r8d
	jl	.LBB17_66
.LBB17_65:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%r10d, %ecx
	cmpl	%ebp, %r15d
	jge	.LBB17_67
	jmp	.LBB17_68
	.p2align	4, 0x90
.LBB17_73:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ecx, %r11d
	decl	%eax
	cmpl	%eax, %r8d
	movl	80(%rsp), %esi                  # 4-byte Reload
	jl	.LBB17_76
.LBB17_75:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%eax, %r8d
	cmpl	%ecx, 20(%rsp)                  # 4-byte Folded Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	jl	.LBB17_78
.LBB17_77:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	cmpl	%eax, %ebp
	movq	288(%rsp), %r12                 # 8-byte Reload
	jl	.LBB17_80
.LBB17_79:                              # %for.body93.i.us
                                        #   in Loop: Header=BB17_32 Depth=3
	movl	%eax, %ebp
	jmp	.LBB17_80
	.p2align	4, 0x90
.LBB17_81:                              # %buildPredblockRegionYUV.exit.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movq	8(%rsp), %rdi
	callq	free_mem2Dpel@PLT
	movq	176(%rsp), %r10                 # 8-byte Reload
	leal	(,%r10,4), %eax
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rdi), %ecx
	movq	88(%rsp), %r8                   # 8-byte Reload
	movq	128(%r8), %rdx
	movq	272(%rsp), %rsi                 # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, (%rdx,%rax,2)
	movzwl	2(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 2(%rdx,%rax,2)
	movzwl	4(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 4(%rdx,%rax,2)
	movzwl	6(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 6(%rdx,%rax,2)
	movzwl	8(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	256(%rsp), %rsi                 # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, (%rdx,%rax,2)
	movzwl	10(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 2(%rdx,%rax,2)
	movzwl	12(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 4(%rdx,%rax,2)
	movzwl	14(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 6(%rdx,%rax,2)
	movzwl	16(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	248(%rsp), %rsi                 # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, (%rdx,%rax,2)
	movzwl	18(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 2(%rdx,%rax,2)
	movzwl	20(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 4(%rdx,%rax,2)
	movzwl	22(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 6(%rdx,%rax,2)
	movzwl	24(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	240(%rsp), %rsi                 # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, (%rdx,%rax,2)
	movzwl	26(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 2(%rdx,%rax,2)
	movzwl	28(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 4(%rdx,%rax,2)
	movzwl	30(%rdi), %ecx
	movq	128(%r8), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movw	%cx, 6(%rdx,%rax,2)
	movq	48(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 268(%rax)
	movq	160(%rsp), %r15                 # 8-byte Reload
	je	.LBB17_83
# %bb.82:                               # %if.then161.us
                                        #   in Loop: Header=BB17_27 Depth=2
	movzwl	32(%rdi), %eax
	movq	136(%r8), %rcx
	movq	(%rcx), %rcx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, (%rcx,%r10,4)
	movzwl	34(%rdi), %eax
	movq	136(%r8), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, 2(%rcx,%r10,4)
	movzwl	36(%rdi), %eax
	movq	136(%r8), %rcx
	movq	(%rcx), %rcx
	movq	216(%rsp), %rsi                 # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, (%rcx,%r10,4)
	movzwl	38(%rdi), %eax
	movq	136(%r8), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, 2(%rcx,%r10,4)
	movzwl	40(%rdi), %eax
	movq	136(%r8), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, (%rcx,%r10,4)
	movzwl	42(%rdi), %eax
	movq	136(%r8), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, 2(%rcx,%r10,4)
	movzwl	44(%rdi), %eax
	movq	136(%r8), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, (%rcx,%r10,4)
	movzwl	46(%rdi), %eax
	movq	136(%r8), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, 2(%rcx,%r10,4)
	jmp	.LBB17_83
.LBB17_85:                              # %for.end213
	callq	free@PLT
.LBB17_86:                              # %if.end214
	addq	$296, %rsp                      # imm = 0x128
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
.Lfunc_end17:
	.size	copy_to_conceal, .Lfunc_end17-copy_to_conceal
	.cfi_endproc
                                        # -- End function
	.globl	sliding_window_poc_management   # -- Begin function sliding_window_poc_management
	.p2align	4, 0x90
	.type	sliding_window_poc_management,@function
sliding_window_poc_management:          # @sliding_window_poc_management
	.cfi_startproc
# %bb.0:                                # %entry
	movl	44(%rdi), %eax
	cmpl	40(%rdi), %eax
	setne	%cl
	cmpl	$1, %eax
	sete	%al
	orb	%cl, %al
	jne	.LBB18_3
# %bb.1:                                # %for.body.lr.ph
	movq	(%rdi), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB18_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	856060(%rax,%rcx,4), %edx
	movl	%edx, 856056(%rax,%rcx,4)
	leaq	1(%rcx), %rdx
	movl	40(%rdi), %esi
	decl	%esi
	movq	%rdx, %rcx
	cmpq	%rsi, %rdx
	jb	.LBB18_2
.LBB18_3:                               # %if.end
	retq
.Lfunc_end18:
	.size	sliding_window_poc_management, .Lfunc_end18-sliding_window_poc_management
	.cfi_endproc
                                        # -- End function
	.globl	write_lost_non_ref_pic          # -- Begin function write_lost_non_ref_pic
	.p2align	4, 0x90
	.type	write_lost_non_ref_pic,@function
write_lost_non_ref_pic:                 # @write_lost_non_ref_pic
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB19_6
# %bb.1:                                # %if.then
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	(%rdi), %rbx
	subl	56(%rdi), %esi
	cmpl	849236(%rbx), %esi
	jle	.LBB19_5
# %bb.2:                                # %if.then.i
	movq	848928(%rbx), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movl	$0, 36(%rsp)
	movq	$3, (%rsp)
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	callq	write_stored_frame@PLT
	movq	848928(%rbx), %rdi
	movq	848936(%rbx), %rax
	movq	16(%rdi), %rcx
	movq	%rcx, 848928(%rbx)
	cmpq	%rdi, %rax
	jne	.LBB19_4
# %bb.3:                                # %if.then4.i
	movq	16(%rax), %rax
	movq	%rax, 848936(%rbx)
.LBB19_4:                               # %delete_node.exit
	callq	free@PLT
.LBB19_5:
	addq	$96, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB19_6:                               # %if.end5
	retq
.Lfunc_end19:
	.size	write_lost_non_ref_pic, .Lfunc_end19-write_lost_non_ref_pic
	.cfi_endproc
                                        # -- End function
	.globl	write_lost_ref_after_idr        # -- Begin function write_lost_ref_after_idr
	.p2align	4, 0x90
	.type	write_lost_ref_after_idr,@function
write_lost_ref_after_idr:               # @write_lost_ref_after_idr
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
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	856048(%rbx), %rax
	cmpq	$0, 48(%rax)
	je	.LBB20_1
# %bb.2:                                # %if.end
	movl	$1, %r15d
	cmpl	$2, 849240(%rbx)
	jne	.LBB20_4
.LBB20_3:                               # %if.then6
	movl	$1, 849240(%rbx)
	movl	$2, %r15d
.LBB20_4:                               # %if.end8
	movq	16(%r14), %rax
	movslq	%ebp, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	48(%rax), %rdi
	movq	856048(%rbx), %rax
	movq	48(%rax), %rsi
	movq	%rbx, %rdx
	callq	copy_to_conceal
	movl	%r15d, 849240(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB20_1:                               # %if.then
	.cfi_def_cfa_offset 48
	movl	848780(%rbx), %edx
	movl	848784(%rbx), %ecx
	movl	848788(%rbx), %r8d
	movl	848792(%rbx), %r9d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	alloc_storable_picture@PLT
	movq	856048(%rbx), %rcx
	movq	%rax, 48(%rcx)
	movq	856048(%rbx), %rax
	movl	$3, (%rax)
	movl	$1, %r15d
	cmpl	$2, 849240(%rbx)
	je	.LBB20_3
	jmp	.LBB20_4
.Lfunc_end20:
	.size	write_lost_ref_after_idr, .Lfunc_end20-write_lost_ref_after_idr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function buildPredRegionYUV
	.type	buildPredRegionYUV,@function
buildPredRegionYUV:                     # @buildPredRegionYUV
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 40(%rsp)                   # 8-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %r12
	movq	856456(%rdi), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movslq	268(%rax), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movl	8(%rsi), %eax
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovlel	%esi, %eax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	leal	15(%rcx), %ebx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %ebx
	sarl	$4, %ebx
	movl	848780(%rdi), %eax
	leal	15(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$4, %ecx
	imull	%ebx, %ecx
	leal	15(%rdx), %ebp
	testl	%edx, %edx
	cmovnsl	%edx, %ebp
	sarl	$4, %ebp
	addl	%ebp, %ecx
	movq	848888(%rdi), %r14
	movslq	%ecx, %rax
	imulq	$480, %rax, %r15                # imm = 0x1E0
	leaq	(%r14,%r15), %r13
	movq	(%r14,%r15), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1368(%rax), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rsp, %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movq	%r13, %r9
	movw	%bp, 28(%r14,%r15)
	movw	%bx, 30(%r14,%r15)
	movswl	%bx, %eax
	leal	(,%rax,4), %ecx
	movl	%ecx, 36(%r14,%r15)
	imull	849112(%r12), %eax
	movl	%eax, 56(%r14,%r15)
	movswl	%bp, %eax
	leal	(,%rax,4), %ecx
	movl	%ecx, 32(%r14,%r15)
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	imull	849108(%r12), %eax
	movl	%eax, 52(%r14,%r15)
	xorl	%eax, %eax
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB21_1
	.p2align	4, 0x90
.LBB21_6:                               # %for.inc80
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	cmpq	$4, %rax
	je	.LBB21_7
.LBB21_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_2 Depth 2
	leaq	(,%rax,4), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	36(%r9), %ecx
	addl	%eax, %ecx
	shll	$4, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	leaq	1(,%rax,4), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	2(,%rax,4), %r13
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	3(,%rax,4), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_4:                               # %cond.false
                                        #   in Loop: Header=BB21_2 Depth=2
	movl	84(%r8), %eax
.LBB21_5:                               # %cond.end
                                        #   in Loop: Header=BB21_2 Depth=2
	movl	32(%r9), %esi
	addl	%r14d, %esi
	shll	$4, %esi
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addl	(%rcx), %esi
	movl	4(%rcx), %edx
	addl	32(%rsp), %edx                  # 4-byte Folded Reload
	movq	264(%r12), %rcx
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	(%rcx,%rdi,8), %rdi
	movq	(%rsp), %r9
	movl	80(%r8), %r10d
	movl	356(%r8), %r11d
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	849072(%rcx), %ebp
	movzwl	849060(%rcx), %r15d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$4, %ecx
	movl	$4, %r8d
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	112(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma@PLT
	movq	120(%rsp), %r9                  # 8-byte Reload
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, (%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, (%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movw	%ax, (%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, (%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, 2(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, 2(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movw	%ax, 2(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	2(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, 2(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, 4(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, 4(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movw	%ax, 4(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	4(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, 4(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rdx,8), %rcx
	movw	%ax, 6(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	movw	%ax, 6(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	16(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movw	%ax, 6(%rcx,%r14,8)
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	movzwl	6(%rax), %eax
	movq	1248(%r12), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movw	%ax, 6(%rcx,%r14,8)
	incq	%r14
	cmpq	$4, %r14
	je	.LBB21_6
.LBB21_2:                               # %for.body36
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, 384(%r9)
	movq	64(%rsp), %r8                   # 8-byte Reload
	je	.LBB21_4
# %bb.3:                                # %cond.true
                                        #   in Loop: Header=BB21_2 Depth=2
	movl	68(%r8), %eax
	sarl	%eax
	decl	%eax
	jmp	.LBB21_5
.LBB21_7:                               # %for.cond87.preheader.preheader
	xorl	%eax, %eax
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB21_8:                               # %for.cond87.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	(%rcx), %ecx
	movw	%cx, (%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	2(%rcx), %ecx
	movw	%cx, 2(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	4(%rcx), %ecx
	movw	%cx, 4(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	6(%rcx), %ecx
	movw	%cx, 6(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	8(%rcx), %ecx
	movw	%cx, 8(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	10(%rcx), %ecx
	movw	%cx, 10(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	12(%rcx), %ecx
	movw	%cx, 12(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	14(%rcx), %ecx
	movw	%cx, 14(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	16(%rcx), %ecx
	movw	%cx, 16(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	18(%rcx), %ecx
	movw	%cx, 18(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	20(%rcx), %ecx
	movw	%cx, 20(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	22(%rcx), %ecx
	movw	%cx, 22(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	24(%rcx), %ecx
	movw	%cx, 24(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	26(%rcx), %ecx
	movw	%cx, 26(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	28(%rcx), %ecx
	movw	%cx, 28(%rdi,%rax,4)
	movq	1248(%rdx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax), %rcx
	movzwl	30(%rcx), %ecx
	movw	%cx, 30(%rdi,%rax,4)
	addq	$8, %rax
	cmpq	$128, %rax
	jne	.LBB21_8
# %bb.9:                                # %for.end106
	movq	64(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 268(%rax)
	je	.LBB21_39
# %bb.10:                               # %if.then
	movq	48(%rsp), %r8                   # 8-byte Reload
	decq	%r8
	addq	$512, %rdi                      # imm = 0x200
	xorl	%r10d, %r10d
	movl	$64, %eax
	xorl	%edx, %edx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	idivl	849108(%rsi)
	movl	%eax, %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	849112(%rsi)
                                        # kill: def $eax killed $eax def $rax
	leal	-1(%rax), %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	imull	%ecx, %eax
	movl	%eax, 120(%rsp)                 # 4-byte Spill
	sarl	%eax
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	movb	$1, %al
	shlq	$5, %r8
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	24(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB21_11:                              # %for.cond122.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_13 Depth 2
                                        #       Child Loop BB21_14 Depth 3
                                        #         Child Loop BB21_15 Depth 4
                                        #           Child Loop BB21_16 Depth 5
                                        #     Child Loop BB21_37 Depth 2
	movl	%eax, 104(%rsp)                 # 4-byte Spill
	movq	%r10, 128(%rsp)                 # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 849100(%rax)
	jle	.LBB21_36
# %bb.12:                               # %for.cond126.preheader.preheader
                                        #   in Loop: Header=BB21_11 Depth=1
	xorl	%edx, %edx
	jmp	.LBB21_13
	.p2align	4, 0x90
.LBB21_35:                              # %for.inc271
                                        #   in Loop: Header=BB21_13 Depth=2
	movq	144(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movslq	849100(%rax), %rax
	cmpq	%rax, %rdx
	jge	.LBB21_36
.LBB21_13:                              # %for.cond126.preheader
                                        #   Parent Loop BB21_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB21_14 Depth 3
                                        #         Child Loop BB21_15 Depth 4
                                        #           Child Loop BB21_16 Depth 5
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rdx,4), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	jmp	.LBB21_14
	.p2align	4, 0x90
.LBB21_34:                              # %for.inc268
                                        #   in Loop: Header=BB21_14 Depth=3
	movq	160(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	cmpq	$4, %rdx
	movq	56(%rsp), %r9                   # 8-byte Reload
	je	.LBB21_35
.LBB21_14:                              # %for.body129
                                        #   Parent Loop BB21_11 Depth=1
                                        #     Parent Loop BB21_13 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB21_15 Depth 4
                                        #           Child Loop BB21_16 Depth 5
	movq	152(%rsp), %rax                 # 8-byte Reload
	movzbl	subblk_offset_y(%rdx,%rax), %edi
	movl	56(%r9), %r8d
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	addl	%edi, %r8d
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	movzbl	subblk_offset_x(%rdx,%rax), %eax
	movl	52(%r9), %edx
	leal	(%rax,%rax), %esi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rax), %esi
	imull	%ecx, %esi
	movl	%esi, 112(%rsp)                 # 4-byte Spill
	addl	%edx, %eax
	incl	%eax
	imull	%ecx, %eax
	decl	%eax
	movl	%eax, 108(%rsp)                 # 4-byte Spill
	xorl	%r8d, %r8d
	jmp	.LBB21_15
	.p2align	4, 0x90
.LBB21_33:                              # %for.inc265
                                        #   in Loop: Header=BB21_15 Depth=4
	incq	%r8
	cmpq	$4, %r8
	je	.LBB21_34
.LBB21_15:                              # %for.body151
                                        #   Parent Loop BB21_11 Depth=1
                                        #     Parent Loop BB21_13 Depth=2
                                        #       Parent Loop BB21_14 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB21_16 Depth 5
	movq	168(%rsp), %rax                 # 8-byte Reload
	addl	%r8d, %eax
	imull	8(%rsp), %eax                   # 4-byte Folded Reload
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movl	108(%rsp), %r13d                # 4-byte Reload
	movl	112(%rsp), %eax                 # 4-byte Reload
	movl	%eax, %r15d
	xorl	%r12d, %r12d
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	jmp	.LBB21_16
	.p2align	4, 0x90
.LBB21_32:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	andl	124(%rsp), %edi                 # 4-byte Folded Reload
	andl	32(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%ecx, %edx
	subl	%edi, %edx
	movq	264(%r14), %r9
	movq	136(%rsp), %r10                 # 8-byte Reload
	movq	(%r9,%r10,8), %r9
	movq	136(%r9), %r9
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movq	(%r9,%rsi,8), %r9
	movslq	%ebx, %r10
	movq	(%r9,%r10,8), %r10
	movslq	%ebp, %rbx
	movzwl	(%r10,%rbx,2), %ebp
	imull	%edx, %ebp
	movslq	%r11d, %r11
	movzwl	(%r10,%r11,2), %r10d
	imull	%edi, %r10d
	addl	%ebp, %r10d
	movq	8(%rsp), %rbp                   # 8-byte Reload
                                        # kill: def $ebp killed $ebp killed $rbp
	subl	%r8d, %ebp
	imull	%ebp, %r10d
	cltq
	movq	(%r9,%rax,8), %rax
	movzwl	(%rax,%rbx,2), %r9d
	imull	%edx, %r9d
	movzwl	(%rax,%r11,2), %eax
	imull	%edi, %eax
	addl	%r9d, %eax
	addl	116(%rsp), %r10d                # 4-byte Folded Reload
	imull	%r8d, %eax
	addl	%r10d, %eax
	cltd
	idivl	120(%rsp)                       # 4-byte Folded Reload
	movq	1248(%r14), %rdx
	movq	88(%rsp), %r8                   # 8-byte Reload
	leaq	(,%r8,8), %rdi
	addq	8(%rdx,%rsi,8), %rdi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdi,%rdx,8), %rdx
	addq	176(%rsp), %rdx                 # 8-byte Folded Reload
	movw	%ax, (%rdx,%r12,2)
	incq	%r12
	addl	%ecx, %r15d
	addl	%ecx, %r13d
	cmpq	$4, %r12
	je	.LBB21_33
.LBB21_16:                              # %for.body159
                                        #   Parent Loop BB21_11 Depth=1
                                        #     Parent Loop BB21_13 Depth=2
                                        #       Parent Loop BB21_14 Depth=3
                                        #         Parent Loop BB21_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %r11d
	leal	(%r15,%r11), %edi
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	%eax, %ebp
	testl	%eax, %eax
	jg	.LBB21_18
# %bb.17:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	xorl	%ebp, %ebp
.LBB21_18:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %r8d
	addl	80(%rsp), %r8d                  # 4-byte Folded Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	72(%rax), %r9d
	movl	76(%rax), %r10d
	decl	%r9d
	cmpl	%r9d, %ebp
	jl	.LBB21_20
# %bb.19:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movl	%r9d, %ebp
.LBB21_20:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movl	%r8d, %eax
	cltd
	idivl	8(%rsp)                         # 4-byte Folded Reload
	movl	%eax, %ebx
	testl	%eax, %eax
	jg	.LBB21_22
# %bb.21:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	xorl	%ebx, %ebx
.LBB21_22:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	decl	%r10d
	cmpl	%r10d, %ebx
	jl	.LBB21_24
# %bb.23:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movl	%r10d, %ebx
.LBB21_24:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	addl	%r13d, %r11d
	movl	%r11d, %eax
	cltd
	idivl	%ecx
	movl	%eax, %r11d
	testl	%eax, %eax
	jg	.LBB21_26
# %bb.25:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	xorl	%r11d, %r11d
.LBB21_26:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	cmpl	%r9d, %r11d
	jl	.LBB21_28
# %bb.27:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movl	%r9d, %r11d
.LBB21_28:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movq	32(%rsp), %rax                  # 8-byte Reload
	addl	%r8d, %eax
	cltd
	idivl	8(%rsp)                         # 4-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB21_30
# %bb.29:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	xorl	%eax, %eax
.LBB21_30:                              # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	cmpl	%r10d, %eax
	jl	.LBB21_32
# %bb.31:                               # %for.body159
                                        #   in Loop: Header=BB21_16 Depth=5
	movl	%r10d, %eax
	jmp	.LBB21_32
	.p2align	4, 0x90
.LBB21_36:                              # %for.cond278.preheader.preheader
                                        #   in Loop: Header=BB21_11 Depth=1
	xorl	%eax, %eax
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	128(%rsp), %r10                 # 8-byte Reload
	.p2align	4, 0x90
.LBB21_37:                              # %for.cond278.preheader
                                        #   Parent Loop BB21_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	(%rdx), %edx
	movw	%dx, (%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	2(%rdx), %edx
	movw	%dx, 2(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	4(%rdx), %edx
	movw	%dx, 4(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	6(%rdx), %edx
	movw	%dx, 6(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	8(%rdx), %edx
	movw	%dx, 8(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	10(%rdx), %edx
	movw	%dx, 10(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	12(%rdx), %edx
	movw	%dx, 12(%rdi,%rax,2)
	movq	1248(%r8), %rdx
	movq	8(%rdx,%r10,8), %rdx
	movq	(%rdx,%rax), %rdx
	movzwl	14(%rdx), %edx
	movw	%dx, 14(%rdi,%rax,2)
	addq	$8, %rax
	cmpq	$64, %rax
	jne	.LBB21_37
# %bb.38:                               # %for.end299
                                        #   in Loop: Header=BB21_11 Depth=1
	subq	$-128, %rdi
	movl	$1, %r10d
	testb	$1, 104(%rsp)                   # 1-byte Folded Reload
	movl	$0, %eax
	jne	.LBB21_11
.LBB21_39:                              # %if.end
	movq	(%rsp), %rdi
	callq	free_mem2Dpel@PLT
	addq	$184, %rsp
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
.Lfunc_end21:
	.size	buildPredRegionYUV, .Lfunc_end21-buildPredRegionYUV
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function edgeDistortion
	.type	edgeDistortion,@function
edgeDistortion:                         # @edgeDistortion
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
	subq	$1032, %rsp                     # imm = 0x408
	.cfi_def_cfa_offset 1088
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r11
	movl	%esi, %eax
	movl	%r8d, %esi
	sarl	$3, %esi
	cltd
	idivl	%esi
	imull	%r8d, %eax
	shll	$3, %eax
	cltq
	leaq	(%rcx,%rax,2), %rcx
	shll	$3, %edx
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,2), %rax
	leaq	(%rcx,%rdx,2), %r14
	addq	$32, %r14
	movslq	%r8d, %r9
	shll	$4, %r8d
	movslq	%r8d, %rbx
	leaq	(%rcx,%rdx,2), %r15
	addq	$-2, %r15
	leaq	(%r9,%r9), %rcx
	leaq	32(%rax,%r9,2), %rdx
	movq	%rdx, 1008(%rsp)                # 8-byte Spill
	leaq	(,%r9,4), %rdx
	leaq	32(%rax,%r9,4), %rsi
	movq	%rsi, 1000(%rsp)                # 8-byte Spill
	leaq	(,%r9,8), %rsi
	leaq	(%r9,%r9,4), %r8
	leaq	(%r8,%r8,4), %r12
	addq	%r9, %r12
	leaq	(%r9,%r9,8), %r10
	leaq	(%r10,%r10,2), %r13
	addq	%r9, %r13
	leaq	(%rax,%r9,8), %r10
	addq	$32, %r10
	movq	%r10, 992(%rsp)                 # 8-byte Spill
	movq	%r9, %r10
	leaq	-2(%rax,%r9,2), %rbp
	movq	%rbp, 752(%rsp)                 # 8-byte Spill
	leaq	-2(%rax,%r9,4), %rbp
	movq	%rbp, 744(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r9,8), %rbp
	addq	$-2, %rbp
	movq	%rbp, 736(%rsp)                 # 8-byte Spill
	shlq	$4, %r9
	leaq	(%r9,%rax), %rbp
	addq	$32, %rbp
	movq	%rbp, 984(%rsp)                 # 8-byte Spill
	leaq	(%r9,%rax), %rbp
	addq	$-2, %rbp
	movq	%rbp, 728(%rsp)                 # 8-byte Spill
	subq	%rcx, %r9
	shlq	$5, %r10
	subq	%rcx, %r10
	leaq	(%rax,%rbx,2), %rbp
	movq	%rbp, 720(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rbx,2), %rbp
	addq	$2, %rbp
	movq	%rbp, 712(%rsp)                 # 8-byte Spill
	leaq	4(%rax,%rbx,2), %rbp
	movq	%rbp, 704(%rsp)                 # 8-byte Spill
	leaq	6(%rax,%rbx,2), %rbp
	movq	%rbp, 696(%rsp)                 # 8-byte Spill
	leaq	8(%rax,%rbx,2), %rbp
	movq	%rbp, 688(%rsp)                 # 8-byte Spill
	leaq	10(%rax,%rbx,2), %rbp
	movq	%rbp, 680(%rsp)                 # 8-byte Spill
	leaq	12(%rax,%rbx,2), %rbp
	movq	%rbp, 672(%rsp)                 # 8-byte Spill
	leaq	14(%rax,%rbx,2), %rbp
	movq	%rbp, 664(%rsp)                 # 8-byte Spill
	leaq	16(%rax,%rbx,2), %rbp
	movq	%rbp, 656(%rsp)                 # 8-byte Spill
	leaq	18(%rax,%rbx,2), %rbp
	movq	%rbp, 648(%rsp)                 # 8-byte Spill
	leaq	20(%rax,%rbx,2), %rbp
	movq	%rbp, 640(%rsp)                 # 8-byte Spill
	leaq	22(%rax,%rbx,2), %rbp
	movq	%rbp, 632(%rsp)                 # 8-byte Spill
	leaq	24(%rax,%rbx,2), %rbp
	movq	%rbp, 624(%rsp)                 # 8-byte Spill
	leaq	26(%rax,%rbx,2), %rbp
	movq	%rbp, 616(%rsp)                 # 8-byte Spill
	leaq	28(%rax,%rbx,2), %rbp
	movq	%rbp, 608(%rsp)                 # 8-byte Spill
	leaq	30(%rax,%rbx,2), %rbx
	movq	%rbx, 600(%rsp)                 # 8-byte Spill
	leaq	32(%r9,%rax), %rbx
	movq	%rbx, 976(%rsp)                 # 8-byte Spill
	leaq	-2(%r9,%rax), %r9
	movq	%r9, 592(%rsp)                  # 8-byte Spill
	leaq	32(%r10,%rax), %r9
	movq	%r9, 968(%rsp)                  # 8-byte Spill
	leaq	(%r10,%rax), %r9
	addq	$-2, %r9
	movq	%r9, 584(%rsp)                  # 8-byte Spill
	subq	%rcx, %rax
	leaq	(%rcx,%r8,4), %r8
	leaq	(%rcx,%rcx,2), %r9
	leaq	(%rcx,%rcx,4), %r10
	leaq	(%rcx,%rcx,8), %rcx
	leaq	(%rdx,%rdx,2), %rbx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rsi,%rsi,2), %rsi
	leaq	(%r14,%r9), %rbp
	movq	%rbp, 960(%rsp)                 # 8-byte Spill
	addq	%r15, %r9
	movq	%r9, 560(%rsp)                  # 8-byte Spill
	leaq	(%r14,%r10), %r9
	movq	%r9, 952(%rsp)                  # 8-byte Spill
	addq	%r15, %r10
	movq	%r10, 552(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rbx), %r9
	movq	%r9, 944(%rsp)                  # 8-byte Spill
	addq	%r15, %rbx
	movq	%rbx, 536(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rcx), %r9
	movq	%r9, 936(%rsp)                  # 8-byte Spill
	addq	%r15, %rcx
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rdx), %rcx
	movq	%rcx, 928(%rsp)                 # 8-byte Spill
	addq	%r15, %rdx
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	leaq	(%r14,%r8), %rcx
	movq	%rcx, 920(%rsp)                 # 8-byte Spill
	addq	%r15, %r8
	movq	%r8, 568(%rsp)                  # 8-byte Spill
	leaq	(%r14,%rsi), %rcx
	movq	%rcx, 912(%rsp)                 # 8-byte Spill
	addq	%r15, %rsi
	movq	%rsi, 520(%rsp)                 # 8-byte Spill
	leaq	(%r14,%r12), %rcx
	movq	%rcx, 904(%rsp)                 # 8-byte Spill
	addq	%r15, %r12
	movq	%r12, 768(%rsp)                 # 8-byte Spill
	movq	%r14, 1016(%rsp)                # 8-byte Spill
	leaq	(%r14,%r13), %rcx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	movq	%r15, 776(%rsp)                 # 8-byte Spill
	addq	%r15, %r13
	movq	%r13, 760(%rsp)                 # 8-byte Spill
	leaq	30(%r11), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	leaq	62(%r11), %rcx
	movq	%rcx, 888(%rsp)                 # 8-byte Spill
	leaq	94(%r11), %rcx
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	leaq	126(%r11), %rcx
	movq	%rcx, 872(%rsp)                 # 8-byte Spill
	leaq	158(%r11), %rcx
	movq	%rcx, 864(%rsp)                 # 8-byte Spill
	leaq	190(%r11), %rcx
	movq	%rcx, 856(%rsp)                 # 8-byte Spill
	leaq	222(%r11), %rcx
	movq	%rcx, 848(%rsp)                 # 8-byte Spill
	leaq	254(%r11), %rcx
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	leaq	286(%r11), %rcx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	leaq	318(%r11), %rcx
	movq	%rcx, 824(%rsp)                 # 8-byte Spill
	leaq	350(%r11), %rcx
	movq	%rcx, 816(%rsp)                 # 8-byte Spill
	leaq	382(%r11), %rcx
	movq	%rcx, 808(%rsp)                 # 8-byte Spill
	leaq	414(%r11), %rcx
	movq	%rcx, 800(%rsp)                 # 8-byte Spill
	leaq	446(%r11), %rcx
	movq	%rcx, 792(%rsp)                 # 8-byte Spill
	leaq	478(%r11), %rcx
	movq	%rcx, 784(%rsp)                 # 8-byte Spill
	leaq	510(%r11), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leaq	480(%r11), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	482(%r11), %rcx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	leaq	484(%r11), %rcx
	movq	%rcx, 504(%rsp)                 # 8-byte Spill
	leaq	486(%r11), %rcx
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	leaq	488(%r11), %rcx
	movq	%rcx, 488(%rsp)                 # 8-byte Spill
	leaq	490(%r11), %rcx
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	leaq	492(%r11), %rcx
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	leaq	494(%r11), %rcx
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	leaq	496(%r11), %rcx
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	leaq	498(%r11), %rcx
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	leaq	500(%r11), %rcx
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	leaq	502(%r11), %rcx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	leaq	504(%r11), %rcx
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	leaq	506(%r11), %rcx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	leaq	508(%r11), %rcx
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	leaq	32(%r11), %rcx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	leaq	64(%r11), %rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	leaq	96(%r11), %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	leaq	128(%r11), %rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	leaq	160(%r11), %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	leaq	192(%r11), %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	leaq	224(%r11), %rcx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	leaq	256(%r11), %rcx
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	leaq	288(%r11), %rcx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	leaq	320(%r11), %rcx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	leaq	352(%r11), %rcx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	leaq	384(%r11), %rcx
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	leaq	416(%r11), %rcx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	leaq	448(%r11), %rcx
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	leaq	2(%r11), %rcx
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	leaq	2(%rax), %rcx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	leaq	4(%r11), %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	leaq	4(%rax), %rcx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	leaq	6(%r11), %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	leaq	6(%rax), %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	leaq	8(%r11), %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	leaq	8(%rax), %rcx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	leaq	10(%r11), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	leaq	10(%rax), %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	leaq	12(%r11), %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	leaq	12(%rax), %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	leaq	14(%r11), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	leaq	14(%rax), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	leaq	16(%r11), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	leaq	16(%rax), %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	leaq	18(%r11), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	leaq	18(%rax), %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	leaq	20(%r11), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	leaq	20(%rax), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	leaq	22(%r11), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leaq	22(%rax), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	leaq	24(%r11), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	leaq	24(%rax), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	leaq	26(%r11), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	26(%rax), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	leaq	28(%r11), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	28(%rax), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 576(%rsp)                 # 8-byte Spill
	addq	$30, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	xorl	%esi, %esi
	movl	$4, %r13d
	xorl	%eax, %eax
	movq	%rdi, 1024(%rsp)                # 8-byte Spill
	jmp	.LBB22_1
.LBB22_5:                               # %for.body21.preheader
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	776(%rsp), %rdx                 # 8-byte Reload
	movq	400(%rsp), %r8                  # 8-byte Reload
	movq	752(%rsp), %rsi                 # 8-byte Reload
	movq	392(%rsp), %r9                  # 8-byte Reload
	movq	744(%rsp), %rbp                 # 8-byte Reload
	movq	384(%rsp), %r14                 # 8-byte Reload
	movq	560(%rsp), %rdi                 # 8-byte Reload
	movq	376(%rsp), %r12                 # 8-byte Reload
	movq	736(%rsp), %rbx                 # 8-byte Reload
	movq	368(%rsp), %rax                 # 8-byte Reload
	movq	552(%rsp), %rcx                 # 8-byte Reload
	movq	360(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -112(%rsp)                # 8-byte Spill
	movq	536(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -128(%rsp)                # 8-byte Spill
	movq	352(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -104(%rsp)                # 8-byte Spill
	movq	592(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -120(%rsp)                # 8-byte Spill
	movq	344(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -88(%rsp)                 # 8-byte Spill
	movq	728(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	movq	336(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -72(%rsp)                 # 8-byte Spill
	movq	544(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -80(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	movq	528(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movq	320(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movq	568(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -56(%rsp)                 # 8-byte Spill
	movq	312(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movq	520(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	movq	304(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	768(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	movq	296(%rsp), %r10                 # 8-byte Reload
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movq	760(%rsp), %r10                 # 8-byte Reload
	movq	%r10, (%rsp)                    # 8-byte Spill
	movq	32(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	584(%rsp), %r15                 # 8-byte Reload
.LBB22_7:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB22_1 Depth=1
	movzwl	(%r11), %r10d
	movzwl	(%rdx), %edx
	subl	%edx, %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movzwl	%dx, %r10d
	addl	24(%rsp), %r10d                 # 4-byte Folded Reload
	movzwl	(%r8), %edx
	movzwl	(%rsi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	(%r9), %edx
	movzwl	(%rbp), %r8d
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	movzwl	%si, %esi
	movzwl	%r8w, %edx
	addl	%esi, %edx
	addl	%r10d, %edx
	movzwl	(%r14), %esi
	movzwl	(%rdi), %edi
	subl	%edi, %esi
	movl	%esi, %edi
	negl	%edi
	cmovsl	%esi, %edi
	movzwl	(%r12), %esi
	movzwl	(%rbx), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzwl	%di, %esi
	movzwl	%r8w, %edi
	addl	%esi, %edi
	movzwl	(%rax), %eax
	movzwl	(%rcx), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movzwl	%cx, %ecx
	addl	%edi, %ecx
	addl	%edx, %ecx
	movq	-112(%rsp), %rax                # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movq	-104(%rsp), %rax                # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	movzwl	%dx, %eax
	movzwl	%si, %edx
	addl	%eax, %edx
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	movzwl	%si, %esi
	addl	%edx, %esi
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%dx, %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%dx, %ecx
	movzwl	%si, %edx
	addl	%ecx, %edx
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%si, %ecx
	addl	%edx, %ecx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx), %edx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	%si, %edx
	addl	%ecx, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%si, %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax), %eax
	movzwl	(%r15), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%dx, %eax
	addl	%ecx, %eax
	movq	1024(%rsp), %rdi                # 8-byte Reload
	movl	28(%rsp), %esi                  # 4-byte Reload
.LBB22_8:                               # %sw.epilog
                                        #   in Loop: Header=BB22_1 Depth=1
	incl	%esi
.LBB22_9:                               # %for.inc83
                                        #   in Loop: Header=BB22_1 Depth=1
	incq	%r13
	cmpq	$8, %r13
	je	.LBB22_10
.LBB22_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, (%rdi,%r13,4)
	jl	.LBB22_9
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	leal	-4(%r13), %r10d
	cmpl	$3, %r10d
	ja	.LBB22_8
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movq	56(%rsp), %r11                  # 8-byte Reload
	movq	1016(%rsp), %rdx                # 8-byte Reload
	movq	888(%rsp), %r8                  # 8-byte Reload
	movq	1008(%rsp), %rsi                # 8-byte Reload
	movq	880(%rsp), %r9                  # 8-byte Reload
	movq	1000(%rsp), %rbp                # 8-byte Reload
	movq	872(%rsp), %r14                 # 8-byte Reload
	movq	960(%rsp), %rdi                 # 8-byte Reload
	movq	864(%rsp), %r12                 # 8-byte Reload
	movq	992(%rsp), %rbx                 # 8-byte Reload
	movq	856(%rsp), %rax                 # 8-byte Reload
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	848(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -112(%rsp)                # 8-byte Spill
	movq	944(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -128(%rsp)                # 8-byte Spill
	movq	840(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -104(%rsp)                # 8-byte Spill
	movq	976(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -120(%rsp)                # 8-byte Spill
	movq	832(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -88(%rsp)                 # 8-byte Spill
	movq	984(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -96(%rsp)                 # 8-byte Spill
	movq	824(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -72(%rsp)                 # 8-byte Spill
	movq	936(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -80(%rsp)                 # 8-byte Spill
	movq	816(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -48(%rsp)                 # 8-byte Spill
	movq	928(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -64(%rsp)                 # 8-byte Spill
	movq	808(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -40(%rsp)                 # 8-byte Spill
	movq	920(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -56(%rsp)                 # 8-byte Spill
	movq	800(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -24(%rsp)                 # 8-byte Spill
	movq	912(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -32(%rsp)                 # 8-byte Spill
	movq	792(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	movq	904(%rsp), %r15                 # 8-byte Reload
	movq	%r15, -16(%rsp)                 # 8-byte Spill
	movq	784(%rsp), %r15                 # 8-byte Reload
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	896(%rsp), %r15                 # 8-byte Reload
	movq	%r15, (%rsp)                    # 8-byte Spill
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	968(%rsp), %r15                 # 8-byte Reload
	jmpq	*.LJTI22_0(,%r10,8)
.LBB22_6:                               # %for.body10.preheader
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	576(%rsp), %rdx                 # 8-byte Reload
	movq	288(%rsp), %r8                  # 8-byte Reload
	movq	280(%rsp), %rsi                 # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	264(%rsp), %rbp                 # 8-byte Reload
	movq	256(%rsp), %r14                 # 8-byte Reload
	movq	248(%rsp), %rdi                 # 8-byte Reload
	movq	240(%rsp), %r12                 # 8-byte Reload
	movq	232(%rsp), %rbx                 # 8-byte Reload
	movq	224(%rsp), %rax                 # 8-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	208(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -112(%rsp)                # 8-byte Spill
	movq	200(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -128(%rsp)                # 8-byte Spill
	movq	192(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -104(%rsp)                # 8-byte Spill
	movq	184(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -120(%rsp)                # 8-byte Spill
	movq	176(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -88(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	movq	160(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -72(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -80(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	movq	136(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -56(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r10                  # 8-byte Reload
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r10                  # 8-byte Reload
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	%r10, (%rsp)                    # 8-byte Spill
	movq	56(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB22_7
.LBB22_4:                               # %for.body45.preheader
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	720(%rsp), %rdx                 # 8-byte Reload
	movq	512(%rsp), %r8                  # 8-byte Reload
	movq	712(%rsp), %rsi                 # 8-byte Reload
	movq	504(%rsp), %r9                  # 8-byte Reload
	movq	704(%rsp), %rbp                 # 8-byte Reload
	movq	496(%rsp), %r14                 # 8-byte Reload
	movq	696(%rsp), %rdi                 # 8-byte Reload
	movq	488(%rsp), %r12                 # 8-byte Reload
	movq	688(%rsp), %rbx                 # 8-byte Reload
	movq	480(%rsp), %rax                 # 8-byte Reload
	movq	680(%rsp), %rcx                 # 8-byte Reload
	movq	472(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -112(%rsp)                # 8-byte Spill
	movq	672(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -128(%rsp)                # 8-byte Spill
	movq	464(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -104(%rsp)                # 8-byte Spill
	movq	664(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -120(%rsp)                # 8-byte Spill
	movq	456(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -88(%rsp)                 # 8-byte Spill
	movq	656(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	movq	448(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -72(%rsp)                 # 8-byte Spill
	movq	648(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -80(%rsp)                 # 8-byte Spill
	movq	440(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	movq	640(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movq	432(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -56(%rsp)                 # 8-byte Spill
	movq	424(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movq	624(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -32(%rsp)                 # 8-byte Spill
	movq	416(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	616(%rsp), %r10                 # 8-byte Reload
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	movq	408(%rsp), %r10                 # 8-byte Reload
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movq	608(%rsp), %r10                 # 8-byte Reload
	movq	%r10, (%rsp)                    # 8-byte Spill
	movq	48(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	600(%rsp), %r15                 # 8-byte Reload
	jmp	.LBB22_7
.LBB22_10:                              # %for.end85
	testl	%esi, %esi
	sete	%dl
	je	.LBB22_11
# %bb.22:                               # %do.end
	xorl	%ecx, %ecx
	testb	%dl, %dl
	jne	.LBB22_24
.LBB22_23:                              # %if.end95
	cltd
	idivl	%esi
	movl	%eax, %ecx
.LBB22_24:                              # %cleanup
	movl	%ecx, %eax
	addq	$1032, %rsp                     # imm = 0x408
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
.LBB22_11:                              # %for.body.1.preheader
	.cfi_def_cfa_offset 1088
	xorl	%esi, %esi
	movl	$4, %r13d
	xorl	%eax, %eax
	jmp	.LBB22_12
.LBB22_16:                              # %for.body21.preheader.1
                                        #   in Loop: Header=BB22_12 Depth=1
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	776(%rsp), %rdx                 # 8-byte Reload
	movq	400(%rsp), %r8                  # 8-byte Reload
	movq	752(%rsp), %rsi                 # 8-byte Reload
	movq	392(%rsp), %r9                  # 8-byte Reload
	movq	744(%rsp), %rbp                 # 8-byte Reload
	movq	384(%rsp), %r14                 # 8-byte Reload
	movq	560(%rsp), %rdi                 # 8-byte Reload
	movq	376(%rsp), %r12                 # 8-byte Reload
	movq	736(%rsp), %rbx                 # 8-byte Reload
	movq	368(%rsp), %r15                 # 8-byte Reload
	movq	552(%rsp), %rcx                 # 8-byte Reload
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	536(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	352(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	592(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	728(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	336(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	544(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	528(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	320(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	568(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	312(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	304(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	768(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	760(%rsp), %rax                 # 8-byte Reload
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	32(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	584(%rsp), %rax                 # 8-byte Reload
.LBB22_18:                              # %sw.epilog.sink.split.1
                                        #   in Loop: Header=BB22_12 Depth=1
	movzwl	(%r11), %r10d
	movzwl	(%rdx), %edx
	subl	%edx, %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movzwl	%dx, %r10d
	addl	24(%rsp), %r10d                 # 4-byte Folded Reload
	movzwl	(%r8), %edx
	movzwl	(%rsi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	(%r9), %edx
	movzwl	(%rbp), %r8d
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	movzwl	%si, %esi
	movzwl	%r8w, %edx
	addl	%esi, %edx
	addl	%r10d, %edx
	movzwl	(%r14), %esi
	movzwl	(%rdi), %edi
	subl	%edi, %esi
	movl	%esi, %edi
	negl	%edi
	cmovsl	%esi, %edi
	movzwl	(%r12), %esi
	movzwl	(%rbx), %r8d
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	movzwl	%di, %esi
	movzwl	%r8w, %edi
	addl	%esi, %edi
	movzwl	(%r15), %esi
	movzwl	(%rcx), %ecx
	subl	%ecx, %esi
	movl	%esi, %ecx
	negl	%ecx
	cmovsl	%esi, %ecx
	movzwl	%cx, %ecx
	addl	%edi, %ecx
	addl	%edx, %ecx
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx), %edx
	movq	%rax, %rdi
	movq	-128(%rsp), %rax                # 8-byte Reload
	movzwl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx), %edx
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	%ax, %eax
	movzwl	%si, %edx
	addl	%eax, %edx
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %eax
	movl	%eax, %esi
	negl	%esi
	cmovsl	%eax, %esi
	movzwl	%si, %esi
	addl	%edx, %esi
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax), %eax
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%dx, %eax
	addl	%esi, %eax
	addl	%ecx, %eax
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx), %edx
	subl	%edx, %ecx
	movl	%ecx, %edx
	negl	%edx
	cmovsl	%ecx, %edx
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%dx, %ecx
	movzwl	%si, %edx
	addl	%ecx, %edx
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%si, %ecx
	addl	%edx, %ecx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rdx), %edx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	movzwl	%si, %edx
	addl	%ecx, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movzwl	(%rcx), %ecx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movzwl	(%rsi), %esi
	subl	%esi, %ecx
	movl	%ecx, %esi
	negl	%esi
	cmovsl	%ecx, %esi
	movzwl	%si, %ecx
	addl	%edx, %ecx
	addl	%eax, %ecx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax), %eax
	movzwl	(%rdi), %edx
	subl	%edx, %eax
	movl	%eax, %edx
	negl	%edx
	cmovsl	%eax, %edx
	movzwl	%dx, %eax
	addl	%ecx, %eax
	movq	1024(%rsp), %rdi                # 8-byte Reload
	movl	28(%rsp), %esi                  # 4-byte Reload
.LBB22_19:                              # %sw.epilog.1
                                        #   in Loop: Header=BB22_12 Depth=1
	incl	%esi
.LBB22_20:                              # %for.inc83.1
                                        #   in Loop: Header=BB22_12 Depth=1
	incq	%r13
	cmpq	$8, %r13
	je	.LBB22_21
.LBB22_12:                              # %for.body.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, (%rdi,%r13,4)
	jl	.LBB22_20
# %bb.13:                               # %if.then.1
                                        #   in Loop: Header=BB22_12 Depth=1
	leal	-4(%r13), %r10d
	cmpl	$3, %r10d
	ja	.LBB22_19
# %bb.14:                               # %if.then.1
                                        #   in Loop: Header=BB22_12 Depth=1
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movq	56(%rsp), %r11                  # 8-byte Reload
	movq	1016(%rsp), %rdx                # 8-byte Reload
	movq	888(%rsp), %r8                  # 8-byte Reload
	movq	1008(%rsp), %rsi                # 8-byte Reload
	movq	880(%rsp), %r9                  # 8-byte Reload
	movq	1000(%rsp), %rbp                # 8-byte Reload
	movq	872(%rsp), %r14                 # 8-byte Reload
	movq	960(%rsp), %rdi                 # 8-byte Reload
	movq	864(%rsp), %r12                 # 8-byte Reload
	movq	992(%rsp), %rbx                 # 8-byte Reload
	movq	856(%rsp), %r15                 # 8-byte Reload
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	848(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	944(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	840(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	976(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	832(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	984(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	824(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	936(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	816(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	928(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	808(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	920(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	800(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	912(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	792(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	904(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	784(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	896(%rsp), %rax                 # 8-byte Reload
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	968(%rsp), %rax                 # 8-byte Reload
	jmpq	*.LJTI22_1(,%r10,8)
.LBB22_17:                              # %for.body10.preheader.1
                                        #   in Loop: Header=BB22_12 Depth=1
	movq	40(%rsp), %r11                  # 8-byte Reload
	movq	576(%rsp), %rdx                 # 8-byte Reload
	movq	288(%rsp), %r8                  # 8-byte Reload
	movq	280(%rsp), %rsi                 # 8-byte Reload
	movq	272(%rsp), %r9                  # 8-byte Reload
	movq	264(%rsp), %rbp                 # 8-byte Reload
	movq	256(%rsp), %r14                 # 8-byte Reload
	movq	248(%rsp), %rdi                 # 8-byte Reload
	movq	240(%rsp), %r12                 # 8-byte Reload
	movq	232(%rsp), %rbx                 # 8-byte Reload
	movq	224(%rsp), %r15                 # 8-byte Reload
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	184(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB22_18
.LBB22_15:                              # %for.body45.preheader.1
                                        #   in Loop: Header=BB22_12 Depth=1
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	720(%rsp), %rdx                 # 8-byte Reload
	movq	512(%rsp), %r8                  # 8-byte Reload
	movq	712(%rsp), %rsi                 # 8-byte Reload
	movq	504(%rsp), %r9                  # 8-byte Reload
	movq	704(%rsp), %rbp                 # 8-byte Reload
	movq	496(%rsp), %r14                 # 8-byte Reload
	movq	696(%rsp), %rdi                 # 8-byte Reload
	movq	488(%rsp), %r12                 # 8-byte Reload
	movq	688(%rsp), %rbx                 # 8-byte Reload
	movq	480(%rsp), %r15                 # 8-byte Reload
	movq	680(%rsp), %rcx                 # 8-byte Reload
	movq	472(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	672(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	664(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	456(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	656(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	648(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	440(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	640(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	432(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	424(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	624(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	416(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	616(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	408(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	608(%rsp), %rax                 # 8-byte Reload
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	48(%rsp), %r10                  # 8-byte Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	600(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB22_18
.LBB22_21:                              # %for.end85.1
	testl	%esi, %esi
	sete	%dl
	xorl	%ecx, %ecx
	testb	%dl, %dl
	je	.LBB22_23
	jmp	.LBB22_24
.Lfunc_end22:
	.size	edgeDistortion, .Lfunc_end22-edgeDistortion
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI22_0:
	.quad	.LBB22_6
	.quad	.LBB22_5
	.quad	.LBB22_4
	.quad	.LBB22_7
.LJTI22_1:
	.quad	.LBB22_17
	.quad	.LBB22_16
	.quad	.LBB22_15
	.quad	.LBB22_18
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function copyPredMB
	.type	copyPredMB,@function
copyPredMB:                             # @copyPredMB
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
	movl	%ecx, %r9d
	movq	%rdx, %r8
	movl	%edi, %eax
	movq	856456(%rdx), %r10
	movslq	268(%r10), %rcx
	movl	uv_div(,%rcx,4), %edx
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	uv_div+16(,%rcx,4), %ecx
	movl	%ecx, -52(%rsp)                 # 4-byte Spill
	sarl	$3, %r9d
	cltd
	idivl	%r9d
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	leal	(,%rdx,8), %ecx
	leal	15(,%rax,8), %ebp
                                        # kill: def $eax killed $eax killed $rax
	shll	$3, %eax
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rbx
	movslq	%eax, %r14
	cmpl	%ebp, %r14d
	movl	%ebp, -44(%rsp)                 # 4-byte Spill
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	cmovgl	%eax, %ebp
	leaq	1(%rbx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	leaq	2(%rbx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	leaq	3(%rbx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	subl	%r14d, %ebp
	incl	%ebp
	shlq	$3, %r14
	leaq	4(%rbx), %rdi
	leaq	5(%rbx), %r11
	leaq	6(%rbx), %rdx
	leaq	7(%rbx), %rax
	movl	$15, %r9d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB23_1:                               # %for.cond10.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r15,4), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, (%r12,%rbx,2)
	leal	-14(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movq	-8(%rsp), %r13                  # 8-byte Reload
	movw	%cx, (%r12,%r13,2)
	leal	-13(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movq	-16(%rsp), %r13                 # 8-byte Reload
	movw	%cx, (%r12,%r13,2)
	leal	-12(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movq	-24(%rsp), %r13                 # 8-byte Reload
	movw	%cx, (%r12,%r13,2)
	leal	-11(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, (%r12,%rdi,2)
	leal	-10(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, (%r12,%r11,2)
	leal	-9(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, (%r12,%rdx,2)
	leal	-8(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, (%r12,%rax,2)
	leal	-7(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 16(%r12,%rbx,2)
	leal	-6(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 18(%r12,%rbx,2)
	leal	-5(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 20(%r12,%rbx,2)
	leal	-4(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 22(%r12,%rbx,2)
	leal	-3(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 24(%r12,%rbx,2)
	leal	-2(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 26(%r12,%rbx,2)
	leal	-1(%r9), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rsi,%rcx,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 28(%r12,%rbx,2)
	movslq	%r9d, %r9
	movzwl	(%rsi,%r9,2), %ecx
	movq	128(%r10), %r12
	addq	%r14, %r12
	movq	(%r15,%r12), %r12
	movw	%cx, 30(%r12,%rbx,2)
	addq	$8, %r15
	addl	$16, %r9d
	decl	%ebp
	jne	.LBB23_1
# %bb.2:                                # %for.end26
	cmpl	$0, 268(%r10)
	movl	-44(%rsp), %r12d                # 4-byte Reload
	movl	-48(%rsp), %edi                 # 4-byte Reload
	je	.LBB23_9
# %bb.3:                                # %if.then
	movl	-52(%rsp), %ecx                 # 4-byte Reload
	sarl	%cl, %edi
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r12d
	cmpl	%r12d, %edi
	jg	.LBB23_9
# %bb.4:                                # %for.body33.lr.ph
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leal	15(%rdx), %eax
	movl	-56(%rsp), %ecx                 # 4-byte Reload
	sarl	%cl, %edx
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %eax
	cmpl	%eax, %edx
	jg	.LBB23_9
# %bb.5:                                # %for.body33.preheader
	movq	%rdx, %rcx
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	shll	$2, %edx
	movq	%rcx, %r9
	movslq	%r9d, %rcx
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	incl	%r12d
	subl	%r9d, %eax
	incl	%eax
	negq	%rdx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB23_6:                               # %for.body33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_7 Depth 2
	movl	%eax, %r11d
	movq	%rcx, %rbx
	.p2align	4, 0x90
.LBB23_7:                               # %for.body38
                                        #   Parent Loop BB23_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	849108(%r8), %r14
	imulq	%r9, %r14
	addq	%rdx, %r14
	addq	%rbx, %r14
	movzwl	512(%rsi,%r14,2), %ebp
	movq	136(%r10), %r15
	movq	(%r15), %r15
	movq	(%r15,%rdi,8), %r15
	movw	%bp, (%r15,%rbx,2)
	movzwl	640(%rsi,%r14,2), %ebp
	movq	136(%r10), %r14
	movq	8(%r14), %r14
	movq	(%r14,%rdi,8), %r14
	movw	%bp, (%r14,%rbx,2)
	incq	%rbx
	decl	%r11d
	jne	.LBB23_7
# %bb.8:                                # %for.cond35.for.inc68_crit_edge
                                        #   in Loop: Header=BB23_6 Depth=1
	incq	%rdi
	incq	%r9
	cmpl	%edi, %r12d
	jne	.LBB23_6
.LBB23_9:                               # %if.end
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
.Lfunc_end23:
	.size	copyPredMB, .Lfunc_end23-copyPredMB
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ercConcealInterFrame: predMB"
	.size	.L.str, 29

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Missing POC=%d\n"
	.size	.L.str.1, 16

	.type	uv_div,@object                  # @uv_div
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
uv_div:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	uv_div, 32

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

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
