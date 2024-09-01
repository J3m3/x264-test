	.text
	.file	"erc_do_i.c"
	.globl	ercConcealIntraFrame            # -- Begin function ercConcealIntraFrame
	.p2align	4, 0x90
	.type	ercConcealIntraFrame,@function
ercConcealIntraFrame:                   # @ercConcealIntraFrame
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.LBB0_5
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 64(%r8)
	je	.LBB0_5
# %bb.2:                                # %if.then
	cmpl	$0, 60(%r8)
	je	.LBB0_3
# %bb.4:                                # %if.then3
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %eax
	sarl	$3, %eax
	movl	%edx, %r9d
	sarl	$3, %r9d
	movq	8(%r8), %r10
	movq	%r10, (%rsp)
	movq	%rdi, %r15
	movq	%rsi, %r14
	movl	%r9d, %esi
	movl	%edx, %ebx
	movl	%eax, %edx
	movl	%ecx, %ebp
	xorl	%ecx, %ecx
	movq	%r8, %r13
	movq	%r14, %r8
	movl	%ebx, %r9d
	callq	concealBlocks
	sarl	$4, %ebp
	movl	%ebx, %r12d
	sarl	$4, %r12d
	movq	16(%r13), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	$1, %ecx
	movq	%r14, %r8
	movl	%ebx, %r9d
	callq	concealBlocks
	movq	24(%r13), %rax
	movq	%rax, (%rsp)
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movl	$2, %ecx
	movq	%r14, %r8
	movl	%ebx, %r9d
	callq	concealBlocks
	movl	$1, %eax
	addq	$8, %rsp
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
.LBB0_5:                                # %cleanup
	retq
.LBB0_3:
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	ercConcealIntraFrame, .Lfunc_end0-ercConcealIntraFrame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function concealBlocks
	.type	concealBlocks,@function
concealBlocks:                          # @concealBlocks
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
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 40(%rsp)                  # 4-byte Spill
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	xorl	%r10d, %r10d
	cmpl	$1, %ecx
	adcl	$1, %r10d
	testl	%esi, %esi
	jle	.LBB1_4
# %bb.1:                                # %for.cond2.preheader.lr.ph
	movl	%esi, %r15d
	testl	%edx, %edx
	jle	.LBB1_2
# %bb.5:                                # %for.cond2.preheader.us.preheader
	movl	%ecx, %r11d
	movq	320(%rsp), %rcx
	movl	%edx, %esi
	subl	%r10d, %esi
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	24(%rax), %rdi
	movq	%rdi, 176(%rsp)                 # 8-byte Spill
	movl	40(%rsp), %edi                  # 4-byte Reload
	sarl	%edi
	movl	%edi, 92(%rsp)                  # 4-byte Spill
	addq	$16, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movl	%r15d, %eax
	subl	%r10d, %eax
	movl	%r10d, %edi
	movl	%edx, %r8d
	movq	%r8, 232(%rsp)                  # 8-byte Spill
	movl	%r15d, %r8d
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movslq	%esi, %rsi
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	cltq
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	negq	%rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	%r10d, %eax
	negl	%eax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	imulq	%r8, %rdi
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	leaq	1(%rcx), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	%r10d, %eax
	imull	%r15d, %eax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	xorl	%r9d, %r9d
	movl	%r10d, %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%r10, 184(%rsp)                 # 8-byte Spill
	movl	%r11d, 24(%rsp)                 # 4-byte Spill
	movl	%r15d, 20(%rsp)                 # 4-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_80:                               # %for.cond2.for.inc196_crit_edge.us
                                        #   in Loop: Header=BB1_6 Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %r9
	addq	%rax, 200(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 192(%rsp)                 # 8-byte Folded Spill
	movq	160(%rsp), %rax                 # 8-byte Reload
	addl	%r10d, %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	cmpq	152(%rsp), %r9                  # 8-byte Folded Reload
	jae	.LBB1_4
.LBB1_6:                                # %for.cond2.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_47 Depth 3
                                        #       Child Loop BB1_81 Depth 3
	movq	320(%rsp), %rax
	addq	%r9, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	jmp	.LBB1_7
.LBB1_45:                               #   in Loop: Header=BB1_7 Depth=2
	movl	28(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %r8d
	movl	20(%rsp), %r15d                 # 4-byte Reload
	.p2align	4, 0x90
.LBB1_79:                               # %for.inc193.us
                                        #   in Loop: Header=BB1_7 Depth=2
	addl	%r10d, %r8d
	cmpl	%edx, %r8d
	jge	.LBB1_80
.LBB1_7:                                # %for.body4.us
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_14 Depth 3
                                        #       Child Loop BB1_47 Depth 3
                                        #       Child Loop BB1_81 Depth 3
	movl	%r8d, %ebp
	imull	%r15d, %ebp
	movslq	%ebp, %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpb	$1, (%rcx,%rax)
	jg	.LBB1_79
# %bb.8:                                # %for.cond9.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	%r8d, %eax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movslq	%r8d, %r12
	movq	136(%rsp), %rax                 # 8-byte Reload
	addq	%r12, %rax
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	imulq	%rax, %rdx
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	addq	%rdx, %rcx
	leal	1(%r12), %r11d
	imull	%r15d, %r11d
	addl	%r9d, %r11d
	movq	160(%rsp), %rdx                 # 8-byte Reload
	leal	(%rdx,%rbp), %eax
	addl	%r9d, %ebp
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	addl	%r10d, %r8d
	imull	%r15d, %r8d
	leal	-1(%r12), %r9d
	imull	%r15d, %r9d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_9:                                # %for.cond9.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%eax, %edi
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbx), %rdx
	cmpq	232(%rsp), %rdx                 # 8-byte Folded Reload
	jge	.LBB1_116
# %bb.10:                               # %for.body12.us
                                        #   in Loop: Header=BB1_9 Depth=3
	movl	%r11d, %esi
	movl	%ebp, %r13d
	movl	%r8d, %r14d
	movl	%r9d, %r15d
	addq	136(%rsp), %rbx                 # 8-byte Folded Reload
	cmpb	$2, (%rcx)
	movq	224(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movq	216(%rsp), %rdx                 # 8-byte Reload
	leal	(%rsi,%rdx), %r11d
	leal	(%rdi,%rdx), %eax
	leal	(%r13,%rdx), %ebp
	leal	(%r14,%rdx), %r8d
	leal	(%r15,%rdx), %r9d
	jl	.LBB1_9
# %bb.11:                               # %if.else69.us
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	248(%rsp), %rax                 # 8-byte Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leal	(%rax,%rcx), %ebp
	addq	%rbx, %rbp
	testl	%ecx, %ecx
	je	.LBB1_114
# %bb.12:                               # %if.else124.us
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	256(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %r8
	addq	%rbx, %r8
	testl	%ebx, %ebx
	movq	112(%rsp), %r9                  # 8-byte Reload
	movl	24(%rsp), %r11d                 # 4-byte Reload
	jle	.LBB1_13
# %bb.46:                               # %for.body131.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movq	%rbp, %rdx
	jmp	.LBB1_47
	.p2align	4, 0x90
.LBB1_75:                               # %if.else181.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	(%rax), %rsi
	movl	$1, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	92(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	addq	320(%rsp), %r15
.LBB1_77:                               # %for.inc187.us
                                        #   in Loop: Header=BB1_47 Depth=3
	negl	%r14d
	movq	184(%rsp), %r10                 # 8-byte Reload
	andl	%r10d, %r14d
	movq	80(%rsp), %rdx                  # 8-byte Reload
	subl	%r14d, %edx
	addl	%ebp, %r13d
	movb	$2, (%r15)
	addl	%r10d, %ebx
	cmpl	96(%rsp), %ebx                  # 4-byte Folded Reload
	movl	24(%rsp), %r11d                 # 4-byte Reload
	movq	112(%rsp), %r9                  # 8-byte Reload
	movl	20(%rsp), %r15d                 # 4-byte Reload
	jge	.LBB1_78
.LBB1_47:                               # %for.body131.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	%ebx, %r14d
	andl	$1, %r14d
	movl	$0, %ebp
	cmovel	%r10d, %ebp
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	cmovel	%r13d, %edx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	leal	-1(%rdx), %eax
	imull	%r15d, %eax
	cltq
	movl	$0, %esi
	testl	%edx, %edx
	jle	.LBB1_50
# %bb.48:                               # %land.lhs.true.peel.i586.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movsbl	(%rcx,%rax), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_50
# %bb.49:                               # %if.then.peel.i588.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%ecx, 64(%rsp)
	movl	$1, %esi
.LBB1_50:                               # %if.end.peel.i527.us
                                        #   in Loop: Header=BB1_47 Depth=3
	leal	(%rdx,%r10), %ecx
	imull	%r15d, %ecx
	movslq	%ecx, %rcx
	cmpl	%edx, 44(%rsp)                  # 4-byte Folded Reload
	jle	.LBB1_53
# %bb.51:                               # %land.lhs.true15.peel.i581.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movsbl	(%rdi,%rcx), %edi
	cmpl	$3, %edi
	jl	.LBB1_53
# %bb.52:                               # %if.then24.peel.i583.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%edi, 72(%rsp)
	incl	%esi
.LBB1_53:                               # %if.end33.peel.i529.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%edx, %r12d
	imull	%r15d, %r12d
	addl	%r9d, %r12d
	movslq	%r12d, %r15
	testq	%r9, %r9
	je	.LBB1_56
# %bb.54:                               # %if.then36.peel.i574.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	320(%rsp), %rdi
	movsbl	-1(%rdi,%r15), %edi
	cmpl	$3, %edi
	jl	.LBB1_56
# %bb.55:                               # %if.then45.peel.i576.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%edi, 68(%rsp)
	incl	%esi
.LBB1_56:                               # %if.end105.peel.i531.us
                                        #   in Loop: Header=BB1_47 Depth=3
	leal	(%r12,%r10), %edi
	movslq	%edi, %rdi
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_59
# %bb.57:                               # %if.then109.peel.i567.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	320(%rsp), %r8
	movsbl	(%r8,%rdi), %r8d
	cmpl	$3, %r8d
	jl	.LBB1_59
# %bb.58:                               # %if.then118.peel.i569.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%r8d, 76(%rsp)
	incl	%esi
.LBB1_59:                               # %if.end178.peel.i533.us
                                        #   in Loop: Header=BB1_47 Depth=3
	cmpl	$1, %esi
	ja	.LBB1_72
# %bb.60:                               # %do.body.i537.us
                                        #   in Loop: Header=BB1_47 Depth=3
	testl	%edx, %edx
	jle	.LBB1_63
# %bb.61:                               # %land.lhs.true.i563.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movsbl	(%rsi,%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_63
# %bb.62:                               # %if.then.i565.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%eax, 64(%rsp)
.LBB1_63:                               # %if.end.i538.us
                                        #   in Loop: Header=BB1_47 Depth=3
	cmpl	%edx, 44(%rsp)                  # 4-byte Folded Reload
	jle	.LBB1_66
# %bb.64:                               # %land.lhs.true15.i558.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	32(%rsp), %rax                  # 8-byte Reload
	movsbl	(%rax,%rcx), %eax
	cmpl	$2, %eax
	jl	.LBB1_66
# %bb.65:                               # %if.then24.i560.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%eax, 72(%rsp)
.LBB1_66:                               # %if.end33.i540.us
                                        #   in Loop: Header=BB1_47 Depth=3
	testq	%r9, %r9
	je	.LBB1_69
# %bb.67:                               # %if.then36.i551.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	320(%rsp), %rax
	movsbl	-1(%rax,%r15), %eax
	cmpl	$2, %eax
	jl	.LBB1_69
# %bb.68:                               # %if.then45.i553.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%eax, 68(%rsp)
.LBB1_69:                               # %if.end105.i542.us
                                        #   in Loop: Header=BB1_47 Depth=3
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_72
# %bb.70:                               # %if.then109.i544.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	320(%rsp), %rax
	movsbl	(%rax,%rdi), %eax
	cmpl	$2, %eax
	jl	.LBB1_72
# %bb.71:                               # %if.then118.i546.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movl	%eax, 76(%rsp)
	.p2align	4, 0x90
.LBB1_72:                               # %ercCollect8PredBlocks.exit590.us
                                        #   in Loop: Header=BB1_47 Depth=3
	testl	%r11d, %r11d
	je	.LBB1_76
# %bb.73:                               # %ercCollect8PredBlocks.exit590.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpl	$2, %r11d
	je	.LBB1_75
# %bb.74:                               # %sw.bb149.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	168(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB1_75
	.p2align	4, 0x90
.LBB1_76:                               # %if.then160.us
                                        #   in Loop: Header=BB1_47 Depth=3
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rsi
	movl	$2, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	40(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	movq	320(%rsp), %rcx
	movw	$514, (%rcx,%r15)               # imm = 0x202
	addl	20(%rsp), %r12d                 # 4-byte Folded Reload
	movslq	%r12d, %rax
	movb	$2, (%rcx,%rax)
	leaq	(%rcx,%rax), %r15
	incq	%r15
	jmp	.LBB1_77
	.p2align	4, 0x90
.LBB1_116:                              # %for.cond27.preheader.us
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	28(%rsp), %edx                  # 4-byte Reload
	cmpl	%edx, 128(%rsp)                 # 4-byte Folded Reload
	movl	%edx, %r8d
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movq	112(%rsp), %r9                  # 8-byte Reload
	movl	24(%rsp), %r11d                 # 4-byte Reload
	jge	.LBB1_79
# %bb.117:                              # %for.body30.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	leaq	1(%r12), %rax
	movq	152(%rsp), %r15                 # 8-byte Reload
	imulq	%r15, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	-1(%r12), %r14
	imulq	%r15, %r14
	imulq	%r12, %r15
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15), %rbx
	movq	192(%rsp), %r13                 # 8-byte Reload
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_42:                               # %if.else60.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	%r12, %rbp
	imulq	152(%rsp), %rbp                 # 8-byte Folded Reload
	addq	%r9, %rbp
	movq	(%rax), %rsi
	movl	$1, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	%r12d, %edx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	92(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	addq	320(%rsp), %rbp
.LBB1_44:                               # %for.inc66.us
                                        #   in Loop: Header=BB1_14 Depth=3
	addq	136(%rsp), %r12                 # 8-byte Folded Reload
	movb	$2, (%rbp)
	addq	224(%rsp), %r13                 # 8-byte Folded Reload
	cmpq	232(%rsp), %r12                 # 8-byte Folded Reload
	movq	184(%rsp), %r10                 # 8-byte Reload
	movl	24(%rsp), %r11d                 # 4-byte Reload
	movq	112(%rsp), %r9                  # 8-byte Reload
	jge	.LBB1_45
.LBB1_14:                               # %for.body30.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	xorl	%eax, %eax
	testq	%r12, %r12
	jle	.LBB1_17
# %bb.15:                               # %land.lhs.true.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-1(%r13,%r14), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_17
# %bb.16:                               # %if.then.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%ecx, 64(%rsp)
	movl	$1, %eax
.LBB1_17:                               # %if.end.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
	jge	.LBB1_20
# %bb.18:                               # %land.lhs.true15.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movsbl	-1(%r13,%rcx), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_20
# %bb.19:                               # %if.then24.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%ecx, 72(%rsp)
	incl	%eax
.LBB1_20:                               # %if.end33.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	testq	%r9, %r9
	je	.LBB1_23
# %bb.21:                               # %if.then36.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-2(%r13,%r15), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_23
# %bb.22:                               # %if.then45.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%ecx, 68(%rsp)
	incl	%eax
.LBB1_23:                               # %if.end105.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_26
# %bb.24:                               # %if.then109.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-1(%r13,%rbx), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_26
# %bb.25:                               # %if.then118.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%ecx, 76(%rsp)
	incl	%eax
.LBB1_26:                               # %if.end178.peel.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	cmpl	$1, %eax
	ja	.LBB1_39
# %bb.27:                               # %do.body.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	testq	%r12, %r12
	jle	.LBB1_30
# %bb.28:                               # %land.lhs.true.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-1(%r13,%r14), %eax
	cmpl	$2, %eax
	jl	.LBB1_30
# %bb.29:                               # %if.then.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%eax, 64(%rsp)
.LBB1_30:                               # %if.end.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	cmpq	208(%rsp), %r12                 # 8-byte Folded Reload
	jge	.LBB1_33
# %bb.31:                               # %land.lhs.true15.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	96(%rsp), %rax                  # 8-byte Reload
	movsbl	-1(%r13,%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_33
# %bb.32:                               # %if.then24.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%eax, 72(%rsp)
.LBB1_33:                               # %if.end33.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	testq	%r9, %r9
	je	.LBB1_36
# %bb.34:                               # %if.then36.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-2(%r13,%r15), %eax
	cmpl	$2, %eax
	jl	.LBB1_36
# %bb.35:                               # %if.then45.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%eax, 68(%rsp)
.LBB1_36:                               # %if.end105.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_39
# %bb.37:                               # %if.then109.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movsbl	-1(%r13,%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB1_39
# %bb.38:                               # %if.then118.i.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movl	%eax, 76(%rsp)
	.p2align	4, 0x90
.LBB1_39:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_14 Depth=3
	testl	%r11d, %r11d
	je	.LBB1_43
# %bb.40:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpl	$2, %r11d
	je	.LBB1_42
# %bb.41:                               # %sw.bb32.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	168(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_43:                               # %if.then39.us
                                        #   in Loop: Header=BB1_14 Depth=3
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rsi
	movl	$2, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	%r12d, %edx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	40(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	movw	$514, -1(%r13,%r15)             # imm = 0x202
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r13), %rbp
	movb	$2, -1(%r13,%rax)
	jmp	.LBB1_44
.LBB1_78:                               # %for.inc193.us.loopexit
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	28(%rsp), %edx                  # 4-byte Reload
	movq	128(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB1_79
.LBB1_114:                              # %for.cond73.preheader.us
                                        #   in Loop: Header=BB1_7 Depth=2
	addq	240(%rsp), %r12                 # 8-byte Folded Reload
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	addq	%rbx, %r12
	movq	112(%rsp), %r9                  # 8-byte Reload
	movl	24(%rsp), %r11d                 # 4-byte Reload
	js	.LBB1_113
# %bb.115:                              # %for.body76.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	%rsi, %rbx
	jmp	.LBB1_81
	.p2align	4, 0x90
.LBB1_110:                              # %if.else114.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	(%rax), %rsi
	movl	$1, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	%ebp, %edx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	92(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	addq	320(%rsp), %r12
.LBB1_112:                              # %for.inc120.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movb	$2, (%r12)
	movq	216(%rsp), %rax                 # 8-byte Reload
	subl	%eax, %ebx
	movq	80(%rsp), %rdi                  # 8-byte Reload
	subl	%eax, %edi
	subl	%eax, %r13d
	subl	%eax, %r14d
	subl	%eax, %r15d
	movq	184(%rsp), %r10                 # 8-byte Reload
	subl	%r10d, %ebp
	movl	24(%rsp), %r11d                 # 4-byte Reload
	movq	112(%rsp), %r9                  # 8-byte Reload
	js	.LBB1_113
.LBB1_81:                               # %for.body76.us
                                        #   Parent Loop BB1_6 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	xorl	%edx, %edx
	movslq	%r15d, %rax
	testl	%ebp, %ebp
	je	.LBB1_84
# %bb.82:                               # %land.lhs.true.peel.i483.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movsbl	(%rcx,%rax), %ecx
	cmpl	$3, %ecx
	jl	.LBB1_84
# %bb.83:                               # %if.then.peel.i485.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%ecx, 64(%rsp)
	movl	$1, %edx
.LBB1_84:                               # %if.end.peel.i424.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movslq	%r14d, %rcx
	cmpl	%ebp, 44(%rsp)                  # 4-byte Folded Reload
	jle	.LBB1_87
# %bb.85:                               # %land.lhs.true15.peel.i478.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movsbl	(%rsi,%rcx), %esi
	cmpl	$3, %esi
	jl	.LBB1_87
# %bb.86:                               # %if.then24.peel.i480.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%esi, 72(%rsp)
	incl	%edx
.LBB1_87:                               # %if.end33.peel.i426.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movslq	%r13d, %r12
	testq	%r9, %r9
	je	.LBB1_90
# %bb.88:                               # %if.then36.peel.i471.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	320(%rsp), %rsi
	movsbl	-1(%rsi,%r12), %esi
	cmpl	$3, %esi
	jl	.LBB1_90
# %bb.89:                               # %if.then45.peel.i473.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%esi, 68(%rsp)
	incl	%edx
.LBB1_90:                               # %if.end105.peel.i428.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movslq	%edi, %rsi
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_94
# %bb.91:                               # %if.then109.peel.i464.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	%rdi, %r8
	movq	320(%rsp), %rdi
	movsbl	(%rdi,%rsi), %edi
	cmpl	$3, %edi
	jl	.LBB1_93
# %bb.92:                               # %if.then118.peel.i466.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%edi, 76(%rsp)
	incl	%edx
.LBB1_93:                               # %if.end178.peel.i430.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	%r8, %rdi
.LBB1_94:                               # %if.end178.peel.i430.us
                                        #   in Loop: Header=BB1_81 Depth=3
	cmpl	$1, %edx
	ja	.LBB1_107
# %bb.95:                               # %do.body.i434.us
                                        #   in Loop: Header=BB1_81 Depth=3
	testl	%ebp, %ebp
	je	.LBB1_98
# %bb.96:                               # %land.lhs.true.i460.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movsbl	(%rdx,%rax), %eax
	cmpl	$2, %eax
	jl	.LBB1_98
# %bb.97:                               # %if.then.i462.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%eax, 64(%rsp)
.LBB1_98:                               # %if.end.i435.us
                                        #   in Loop: Header=BB1_81 Depth=3
	cmpl	%ebp, 44(%rsp)                  # 4-byte Folded Reload
	jle	.LBB1_101
# %bb.99:                               # %land.lhs.true15.i455.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	32(%rsp), %rax                  # 8-byte Reload
	movsbl	(%rax,%rcx), %eax
	cmpl	$2, %eax
	jl	.LBB1_101
# %bb.100:                              # %if.then24.i457.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%eax, 72(%rsp)
.LBB1_101:                              # %if.end33.i437.us
                                        #   in Loop: Header=BB1_81 Depth=3
	testq	%r9, %r9
	je	.LBB1_104
# %bb.102:                              # %if.then36.i448.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	320(%rsp), %rax
	movsbl	-1(%rax,%r12), %eax
	cmpl	$2, %eax
	jl	.LBB1_104
# %bb.103:                              # %if.then45.i450.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%eax, 68(%rsp)
.LBB1_104:                              # %if.end105.i439.us
                                        #   in Loop: Header=BB1_81 Depth=3
	cmpq	120(%rsp), %r9                  # 8-byte Folded Reload
	jge	.LBB1_107
# %bb.105:                              # %if.then109.i441.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	320(%rsp), %rax
	movsbl	(%rax,%rsi), %eax
	cmpl	$2, %eax
	jl	.LBB1_107
# %bb.106:                              # %if.then118.i443.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movl	%eax, 76(%rsp)
	.p2align	4, 0x90
.LBB1_107:                              # %ercCollect8PredBlocks.exit487.us
                                        #   in Loop: Header=BB1_81 Depth=3
	testl	%r11d, %r11d
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	je	.LBB1_111
# %bb.108:                              # %ercCollect8PredBlocks.exit487.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpl	$2, %r11d
	je	.LBB1_110
# %bb.109:                              # %sw.bb82.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	168(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB1_110
	.p2align	4, 0x90
.LBB1_111:                              # %if.then93.us
                                        #   in Loop: Header=BB1_81 Depth=3
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	8(%rax), %rsi
	movl	$2, (%rsp)
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	%ebp, %edx
	movl	%r9d, %ecx
	leaq	48(%rsp), %r8
	movl	40(%rsp), %r9d                  # 4-byte Reload
	callq	ercPixConcealIMB
	movq	320(%rsp), %rcx
	movw	$514, (%rcx,%r12)               # imm = 0x202
	movslq	%ebx, %rax
	movb	$2, (%rcx,%rax)
	leaq	(%rcx,%rax), %r12
	incq	%r12
	jmp	.LBB1_112
.LBB1_113:                              # %for.end122.us
                                        #   in Loop: Header=BB1_7 Depth=2
	movq	128(%rsp), %r8                  # 8-byte Reload
	addl	96(%rsp), %r8d                  # 4-byte Folded Reload
.LBB1_13:                               # %if.else124.us.for.inc193.us_crit_edge
                                        #   in Loop: Header=BB1_7 Depth=2
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movl	28(%rsp), %edx                  # 4-byte Reload
	jmp	.LBB1_79
.LBB1_2:                                # %for.cond2.preheader.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_3:                                # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	addl	%r10d, %eax
	cmpl	%r15d, %eax
	jl	.LBB1_3
.LBB1_4:                                # %for.end198
	addq	$264, %rsp                      # imm = 0x108
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
	.size	concealBlocks, .Lfunc_end1-concealBlocks
	.cfi_endproc
                                        # -- End function
	.globl	ercPixConcealIMB                # -- Begin function ercPixConcealIMB
	.p2align	4, 0x90
	.type	ercPixConcealIMB,@function
ercPixConcealIMB:                       # @ercPixConcealIMB
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
	subq	$144, %rsp
	.cfi_def_cfa_offset 200
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %rbp
	movl	200(%rsp), %r10d
	cmpl	$0, 16(%r8)
	je	.LBB2_4
# %bb.1:                                # %if.then50
	movl	%edx, %eax
	subl	%r10d, %eax
	imull	%r9d, %eax
	shll	$3, %eax
	cltq
	leaq	(,%rax,2), %rax
	addq	%rbp, %rax
	leal	(,%rcx,8), %r11d
	movslq	%r11d, %r11
	leaq	(%rax,%r11,2), %r14
	cmpl	$0, 20(%r8)
	je	.LBB2_5
.LBB2_2:                                # %if.then63
	movl	%r9d, %eax
	imull	%edx, %eax
	shll	$3, %eax
	cltq
	leaq	(,%rax,2), %rax
	addq	%rbp, %rax
	movl	%ecx, %r11d
	subl	%r10d, %r11d
	shll	$3, %r11d
	movslq	%r11d, %r11
	leaq	(%rax,%r11,2), %r15
	cmpl	$0, 24(%r8)
	movq	%r14, -96(%rsp)                 # 8-byte Spill
	je	.LBB2_6
.LBB2_3:                                # %if.then76
	leal	(%r10,%rdx), %eax
	imull	%r9d, %eax
	shll	$3, %eax
	cltq
	leaq	(,%rax,2), %rax
	addq	%rbp, %rax
	leal	(,%rcx,8), %r11d
	movslq	%r11d, %r11
	leaq	(%rax,%r11,2), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	jmp	.LBB2_7
.LBB2_4:
	xorl	%r14d, %r14d
	cmpl	$0, 20(%r8)
	jne	.LBB2_2
.LBB2_5:
	xorl	%r15d, %r15d
	cmpl	$0, 24(%r8)
	movq	%r14, -96(%rsp)                 # 8-byte Spill
	jne	.LBB2_3
.LBB2_6:
	movq	$0, -80(%rsp)                   # 8-byte Folded Spill
.LBB2_7:                                # %if.end86
	imull	%r9d, %edx
	shll	$3, %edx
	leal	(%r10,%rcx), %r11d
	shll	$3, %r11d
	xorl	%r14d, %r14d
	cmpl	$0, 28(%r8)
	movslq	%edx, %rax
	leaq	(%rbp,%rax,2), %rdx
	movslq	%r11d, %r8
	leaq	(%rdx,%r8,2), %r8
	cmovneq	%r8, %r14
	testl	%r10d, %r10d
	jle	.LBB2_194
# %bb.8:                                # %for.cond1.preheader.lr.ph.i
	movq	%r14, -120(%rsp)                # 8-byte Spill
	shll	$3, %ecx
	movslq	%ecx, %rcx
	leaq	(%rdx,%rcx,2), %r13
	leal	(,%r10,8), %r14d
	leal	-1(%r14), %r11d
	movl	%r11d, %edx
	imull	%r9d, %edx
	movslq	%edx, %rdx
	xorl	%r8d, %r8d
	cmpl	$1, %r10d
	sete	%r8b
	leaq	849060(,%r8,4), %r10
	leaq	849060(%rdi,%r8,4), %rbx
	movslq	%r9d, %r12
	movl	%r14d, %r9d
	movq	-96(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, %rsi
	leaq	(%r8,%rdx,2), %rdx
	testq	%r15, %r15
	movq	%r9, -112(%rsp)                 # 8-byte Spill
	movq	%r14, -48(%rsp)                 # 8-byte Spill
	movq	%rbx, -128(%rsp)                # 8-byte Spill
	movq	%r12, -56(%rsp)                 # 8-byte Spill
	je	.LBB2_66
# %bb.9:                                # %for.cond1.preheader.us.i.preheader
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, %rbx
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leaq	(%r15,%r11,2), %r11
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	movq	%r10, %r11
	movq	%r15, %r10
	movq	%r8, %r15
	movabsq	$9223372036854775807, %r8       # imm = 0x7FFFFFFFFFFFFFFF
	addq	%r9, %r8
	imulq	%r12, %r8
	movq	%r9, %rbp
	leal	-8(%r14), %r9d
	addq	%r8, %r9
	leaq	(%r10,%r9,2), %r10
	addq	$16, %r10
	leaq	(%rax,%rcx), %r9
	addq	%rbp, %r9
	addq	%r8, %r9
	leaq	(%rbx,%r9,2), %r9
	addq	%r11, %rdi
	addq	$4, %rdi
	leaq	(%rsi,%rbp), %r11
	leaq	(%r15,%r11,2), %r11
	cmpq	%r11, %r13
	setb	%r11b
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	cmpq	%r9, %rdx
	setb	%bl
	andb	%r11b, %bl
	cmpq	%r10, %r13
	setb	%r10b
	cmpq	%r9, 32(%rsp)                   # 8-byte Folded Reload
	setb	%r11b
	andb	%r10b, %r11b
	testl	%r12d, %r12d
	sets	%r10b
	orb	%r11b, %r10b
	movq	-80(%rsp), %r11                 # 8-byte Reload
	movq	%r13, %rdx
	movq	%r11, %r13
	leaq	(%r11,%rbp,2), %r11
	cmpq	%r11, %rdx
	setb	%r11b
	cmpq	%r9, %r13
	setb	%bpl
	andb	%r11b, %bpl
	orb	%bl, %bpl
	orb	%r10b, %bpl
	movq	-120(%rsp), %r11                # 8-byte Reload
	leaq	(%r11,%r8,2), %r8
	addq	$2, %r8
	cmpq	%r8, %rdx
	setb	%r8b
	cmpq	%r9, %r11
	setb	%r10b
	andb	%r8b, %r10b
	cmpq	%rdi, %rdx
	setb	%dil
	cmpq	%r9, -128(%rsp)                 # 8-byte Folded Reload
	movq	%r11, %r15
	setb	%al
	andb	%dil, %al
	orb	%r10b, %al
	orb	%bpl, %al
	movb	%al, -65(%rsp)                  # 1-byte Spill
	addq	%rcx, %rcx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	leaq	(%rcx,%rax,2), %rax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rax
	addq	$6, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	(%r12,%r12), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	leaq	6(%rax,%rsi,2), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leal	-3(%r14), %eax
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	leal	-2(%r14), %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	xorl	%ebp, %ebp
	jmp	.LBB2_11
	.p2align	4, 0x90
.LBB2_10:                               # %for.cond1.for.end_crit_edge.us.i.split
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rax, 72(%rsp)                  # 8-byte Folded Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	%rax, %rdx
	cmpq	%rbx, %rbp
	movq	-56(%rsp), %r12                 # 8-byte Reload
	je	.LBB2_194
.LBB2_11:                               # %for.cond1.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #     Child Loop BB2_15 Depth 2
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	testl	%edx, %edx
	sete	%cl
	movq	%rbp, %rsi
	imulq	%r12, %rsi
	movq	%rsi, %r12
	movl	%edx, %esi
	subl	%ebp, %esi
	movl	%esi, -104(%rsp)                # 4-byte Spill
	incq	%rbp
	orb	-65(%rsp), %cl                  # 1-byte Folded Reload
	testb	$1, %cl
	je	.LBB2_24
# %bb.12:                               # %for.body3.us.i.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	movl	$1, %ecx
	xorl	%esi, %esi
	movq	-112(%rsp), %rbx                # 8-byte Reload
	movq	%rbx, %rdi
	xorl	%r8d, %r8d
	movq	-80(%rsp), %r10                 # 8-byte Reload
	movq	-96(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_13:                               # %if.then56.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	cltd
	idivl	%r9d
.LBB2_14:                               # %for.inc.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movw	%ax, (%r11,%rsi)
	incq	%r8
	addq	$2, %rsi
	incl	%ecx
	decq	%rdi
	je	.LBB2_10
.LBB2_15:                               # %for.body3.us.i
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r14, %r14
	je	.LBB2_17
# %bb.16:                               # %if.then.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rsi), %edx
	movl	-104(%rsp), %eax                # 4-byte Reload
	imull	%eax, %edx
	movl	%eax, %r9d
	jmp	.LBB2_18
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_15 Depth=2
	xorl	%edx, %edx
	xorl	%r9d, %r9d
.LBB2_18:                               # %if.end.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%r12,2), %eax
	imull	%edi, %eax
	addl	%edx, %eax
	testq	%r10, %r10
	je	.LBB2_23
# %bb.19:                               # %if.then30.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	-48(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	subl	%r8d, %edx
	addl	%edx, %r9d
	movzwl	(%r10,%rsi), %edx
	imull	%ebp, %edx
	addl	%edx, %eax
	addl	%ebp, %r9d
	movq	8(%rsp), %r11                   # 8-byte Reload
	testq	%r15, %r15
	je	.LBB2_21
.LBB2_20:                               # %if.then43.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movzwl	(%r15,%r12,2), %edx
	imull	%ecx, %edx
	addl	%edx, %eax
	addl	%ecx, %r9d
.LBB2_21:                               # %if.end53.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	testl	%r9d, %r9d
	jg	.LBB2_13
# %bb.22:                               # %if.else.us.i
                                        #   in Loop: Header=BB2_15 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %eax
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_23:                               # %if.end.us.i.if.end39.us.i_crit_edge
                                        #   in Loop: Header=BB2_15 Depth=2
	movl	%r9d, %r9d
	addq	%rdi, %r9
	movq	8(%rsp), %r11                   # 8-byte Reload
	testq	%r15, %r15
	jne	.LBB2_20
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_24:                               # %vector.body.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%r12,2), %ecx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	imull	%ecx, %edx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	leal	(,%rcx,4), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	movl	64(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	imull	%ecx, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	60(%rsp), %eax                  # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	imull	%ecx, %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	imull	80(%rsp), %ecx                  # 4-byte Folded Reload
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	movl	$-4, %r10d
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	movq	-80(%rsp), %r13                 # 8-byte Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%r12, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB2_26
	.p2align	4, 0x90
.LBB2_25:                               # %pred.sdiv.continue361
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movl	-84(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, -6(%rdx,%r11,2)
	movl	-40(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, -4(%rdx,%r11,2)
	movl	-24(%rsp), %ecx                 # 4-byte Reload
	movw	%cx, -2(%rdx,%r11,2)
	movw	%ax, (%rdx,%r11,2)
	subl	68(%rsp), %r8d                  # 4-byte Folded Reload
	addq	$-4, %r14
	addl	$-4, %r10d
	movq	%r9, %r11
	movq	-112(%rsp), %rbx                # 8-byte Reload
	cmpq	%r9, %rbx
	je	.LBB2_10
.LBB2_26:                               # %vector.body
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%rsi, %rsi
	movq	128(%rsp), %rax                 # 8-byte Reload
	je	.LBB2_28
# %bb.27:                               # %pred.load.if
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	-6(%rax,%r11,2), %ecx
	movw	%cx, 40(%rsp)                   # 2-byte Spill
.LBB2_28:                               # %pred.load.continue
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $cx
                                        # kill: killed $cx
	testq	%rsi, %rsi
	je	.LBB2_30
# %bb.29:                               # %pred.load.if303
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	-4(%rax,%r11,2), %ecx
	movw	%cx, 6(%rsp)                    # 2-byte Spill
.LBB2_30:                               # %pred.load.continue304
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $cx
                                        # kill: killed $cx
	testq	%rsi, %rsi
	je	.LBB2_32
# %bb.31:                               # %pred.load.if305
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	-2(%rax,%r11,2), %ecx
	movw	%cx, -68(%rsp)                  # 2-byte Spill
.LBB2_32:                               # %pred.load.continue306
                                        #   in Loop: Header=BB2_26 Depth=2
	testq	%rsi, %rsi
	je	.LBB2_63
# %bb.33:                               # %pred.load.if307
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%rax,%r11,2), %eax
	movw	%ax, 24(%rsp)                   # 2-byte Spill
	movl	-104(%rsp), %edi                # 4-byte Reload
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r13, %r13
	je	.LBB2_35
.LBB2_34:                               # %pred.load.if316
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%r13,%r11,2), %eax
	movw	%ax, -4(%rsp)                   # 2-byte Spill
.LBB2_35:                               # %pred.load.continue317
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r13, %r13
	je	.LBB2_37
# %bb.36:                               # %pred.load.if318
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	2(%r13,%r11,2), %eax
	movw	%ax, (%rsp)                     # 2-byte Spill
.LBB2_37:                               # %pred.load.continue319
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r13, %r13
	je	.LBB2_39
# %bb.38:                               # %pred.load.if320
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	4(%r13,%r11,2), %eax
	movw	%ax, 4(%rsp)                    # 2-byte Spill
.LBB2_39:                               # %pred.load.continue321
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	%r8, -64(%rsp)                  # 8-byte Spill
	testq	%r13, %r13
	je	.LBB2_64
# %bb.40:                               # %pred.load.if322
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	6(%r13,%r11,2), %eax
	movw	%ax, 48(%rsp)                   # 2-byte Spill
	movl	%ebp, %r8d
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r15, %r15
	je	.LBB2_42
.LBB2_41:                               # %pred.load.if332
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%r15,%r12,2), %eax
	movw	%ax, -8(%rsp)                   # 2-byte Spill
.LBB2_42:                               # %pred.load.continue333
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r15, %r15
	je	.LBB2_44
# %bb.43:                               # %pred.load.if334
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%r15,%r12,2), %eax
	movw	%ax, -6(%rsp)                   # 2-byte Spill
.LBB2_44:                               # %pred.load.continue335
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r15, %r15
	je	.LBB2_46
# %bb.45:                               # %pred.load.if336
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%r15,%r12,2), %eax
	movw	%ax, -2(%rsp)                   # 2-byte Spill
.LBB2_46:                               # %pred.load.continue337
                                        #   in Loop: Header=BB2_26 Depth=2
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r15, %r15
	je	.LBB2_48
# %bb.47:                               # %pred.load.if338
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	(%r15,%r12,2), %eax
	movw	%ax, 2(%rsp)                    # 2-byte Spill
.LBB2_48:                               # %pred.load.continue339
                                        #   in Loop: Header=BB2_26 Depth=2
	leaq	1(%r11), %rdx
	leaq	2(%r11), %r12
	testq	%r15, %r15
	movl	%edx, %esi
	movl	$0, %eax
	cmovel	%eax, %esi
	leaq	3(%r11), %r15
	movl	%r12d, %ecx
	cmovel	%eax, %ecx
	leaq	4(%r11), %rbx
	movl	%r15d, %r9d
	cmovel	%eax, %r9d
	movq	%rbx, -16(%rsp)                 # 8-byte Spill
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	cmovel	%eax, %ebx
	addl	%edi, %r8d
	addl	%r8d, %esi
	movq	-112(%rsp), %r13                # 8-byte Reload
	addq	%r13, %rsi
	addq	%r14, %rsi
                                        # implicit-def: $eax
                                        # kill: killed $eax
	testl	%esi, %esi
	jg	.LBB2_50
# %bb.49:                               # %pred.load.if348
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, -84(%rsp)                 # 4-byte Spill
.LBB2_50:                               # %pred.load.continue349
                                        #   in Loop: Header=BB2_26 Depth=2
	movl	%r10d, %eax
	leaq	3(%rax), %rdi
	addl	%r8d, %ecx
	addq	%r13, %rcx
	addq	%rdi, %rcx
                                        # implicit-def: $edi
                                        # kill: killed $edi
	testl	%ecx, %ecx
	jg	.LBB2_52
# %bb.51:                               # %pred.load.if350
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, -40(%rsp)                 # 4-byte Spill
.LBB2_52:                               # %pred.load.continue351
                                        #   in Loop: Header=BB2_26 Depth=2
	leaq	2(%rax), %rdi
	addl	%r8d, %r9d
	addq	%r13, %r9
	addq	%rdi, %r9
                                        # implicit-def: $edi
                                        # kill: killed $edi
	testl	%r9d, %r9d
	jg	.LBB2_54
# %bb.53:                               # %pred.load.if352
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movl	(%rdi), %edi
	movl	%edi, -24(%rsp)                 # 4-byte Spill
.LBB2_54:                               # %pred.load.continue353
                                        #   in Loop: Header=BB2_26 Depth=2
	incq	%rax
	addl	%r8d, %ebx
	addq	%r13, %rbx
	addq	%rax, %rbx
                                        # implicit-def: $eax
                                        # kill: killed $eax
	testl	%ebx, %ebx
	jle	.LBB2_65
# %bb.55:                               # %pred.load.continue355
                                        #   in Loop: Header=BB2_26 Depth=2
	testl	%esi, %esi
	movq	-80(%rsp), %r13                 # 8-byte Reload
	movq	-64(%rsp), %r8                  # 8-byte Reload
	jle	.LBB2_57
.LBB2_56:                               # %pred.sdiv.if
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	40(%rsp), %edi                  # 2-byte Folded Reload
	imull	-104(%rsp), %edi                # 4-byte Folded Reload
	cmpq	$0, -96(%rsp)                   # 8-byte Folded Reload
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%r15, %r12
	movl	%r10d, %r15d
	movq	%r14, %r10
	movl	$0, %r14d
	cmovel	%r14d, %edi
	movzwl	-4(%rsp), %eax                  # 2-byte Folded Reload
	imull	%ebp, %eax
	testq	%r13, %r13
	cmovel	%r14d, %eax
	movzwl	-8(%rsp), %r8d                  # 2-byte Folded Reload
	imull	%r8d, %edx
	movq	-64(%rsp), %r8                  # 8-byte Reload
	cmpq	$0, -120(%rsp)                  # 8-byte Folded Reload
	cmovel	%r14d, %edx
	movq	%r10, %r14
	movl	%r15d, %r10d
	movq	%r12, %r15
	movq	40(%rsp), %r12                  # 8-byte Reload
	addl	%edi, %eax
	addl	%edx, %eax
	movq	112(%rsp), %rdx                 # 8-byte Reload
	addl	%r8d, %edx
	addl	%edx, %eax
	cltd
	idivl	%esi
	movl	%eax, -84(%rsp)                 # 4-byte Spill
.LBB2_57:                               # %pred.sdiv.continue
                                        #   in Loop: Header=BB2_26 Depth=2
	testl	%ecx, %ecx
	jle	.LBB2_59
# %bb.58:                               # %pred.sdiv.if356
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	6(%rsp), %edx                   # 2-byte Folded Reload
	imull	-104(%rsp), %edx                # 4-byte Folded Reload
	cmpq	$0, -96(%rsp)                   # 8-byte Folded Reload
	movl	$0, %edi
	cmovel	%edi, %edx
	movzwl	(%rsp), %eax                    # 2-byte Folded Reload
	imull	%ebp, %eax
	testq	%r13, %r13
	cmovel	%edi, %eax
	movzwl	-6(%rsp), %esi                  # 2-byte Folded Reload
	imull	%esi, %r12d
	cmpq	$0, -120(%rsp)                  # 8-byte Folded Reload
	cmovel	%edi, %r12d
	addl	%edx, %eax
	addl	%r12d, %eax
	movq	120(%rsp), %rdx                 # 8-byte Reload
	addl	%r8d, %edx
	addl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -40(%rsp)                 # 4-byte Spill
.LBB2_59:                               # %pred.sdiv.continue357
                                        #   in Loop: Header=BB2_26 Depth=2
	testl	%r9d, %r9d
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	jle	.LBB2_61
# %bb.60:                               # %pred.sdiv.if358
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	-68(%rsp), %ecx                 # 2-byte Folded Reload
	imull	-104(%rsp), %ecx                # 4-byte Folded Reload
	testq	%rsi, %rsi
	movl	$0, %edi
	cmovel	%edi, %ecx
	movzwl	4(%rsp), %eax                   # 2-byte Folded Reload
	imull	%ebp, %eax
	testq	%r13, %r13
	cmovel	%edi, %eax
	movzwl	-2(%rsp), %edx                  # 2-byte Folded Reload
	imull	%edx, %r15d
	cmpq	$0, -120(%rsp)                  # 8-byte Folded Reload
	cmovel	%edi, %r15d
	addl	%ecx, %eax
	addl	%r15d, %eax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addl	%r8d, %ecx
	addl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%eax, -24(%rsp)                 # 4-byte Spill
.LBB2_61:                               # %pred.sdiv.continue359
                                        #   in Loop: Header=BB2_26 Depth=2
	testl	%ebx, %ebx
	movq	-120(%rsp), %r15                # 8-byte Reload
	movq	136(%rsp), %r12                 # 8-byte Reload
	movq	-16(%rsp), %r9                  # 8-byte Reload
	movl	-32(%rsp), %eax                 # 4-byte Reload
	jle	.LBB2_25
# %bb.62:                               # %pred.sdiv.if360
                                        #   in Loop: Header=BB2_26 Depth=2
	movzwl	24(%rsp), %ecx                  # 2-byte Folded Reload
	imull	-104(%rsp), %ecx                # 4-byte Folded Reload
	testq	%rsi, %rsi
	movl	$0, %edi
	cmovel	%edi, %ecx
	movzwl	48(%rsp), %eax                  # 2-byte Folded Reload
	imull	%ebp, %eax
	testq	%r13, %r13
	cmovel	%edi, %eax
	movzwl	2(%rsp), %edx                   # 2-byte Folded Reload
	imull	%r9d, %edx
	testq	%r15, %r15
	cmovel	%edi, %edx
	addl	%ecx, %eax
	addl	%edx, %eax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addl	%r8d, %ecx
	addl	%ecx, %eax
	cltd
	idivl	%ebx
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_63:                               #   in Loop: Header=BB2_26 Depth=2
	xorl	%edi, %edi
                                        # implicit-def: $ax
                                        # kill: killed $ax
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r13, %r13
	jne	.LBB2_34
	jmp	.LBB2_35
	.p2align	4, 0x90
.LBB2_64:                               #   in Loop: Header=BB2_26 Depth=2
	xorl	%r8d, %r8d
                                        # implicit-def: $ax
                                        # kill: killed $ax
                                        # implicit-def: $ax
                                        # kill: killed $ax
	testq	%r15, %r15
	jne	.LBB2_41
	jmp	.LBB2_42
	.p2align	4, 0x90
.LBB2_65:                               # %pred.load.if354
                                        #   in Loop: Header=BB2_26 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	testl	%esi, %esi
	movq	-80(%rsp), %r13                 # 8-byte Reload
	movq	-64(%rsp), %r8                  # 8-byte Reload
	jg	.LBB2_56
	jmp	.LBB2_57
.LBB2_66:                               # %for.cond1.preheader.lr.ph.i.split.us
	movq	%rsi, %r11
	cmpq	$0, -120(%rsp)                  # 8-byte Folded Reload
	movq	-80(%rsp), %r15                 # 8-byte Reload
	je	.LBB2_105
# %bb.67:                               # %for.cond1.preheader.lr.ph.i.split.us.split
	movq	%r9, %r12
	testq	%r15, %r15
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	-96(%rsp), %rbx                 # 8-byte Reload
	je	.LBB2_123
# %bb.68:                               # %for.cond1.preheader.us.i.us.preheader
	movabsq	$9223372036854775807, %r9       # imm = 0x7FFFFFFFFFFFFFFF
	addq	%r12, %r9
	movq	-56(%rsp), %r14                 # 8-byte Reload
	imulq	%r14, %r9
	leaq	(%rax,%rcx), %r8
	addq	%r12, %r8
	addq	%r9, %r8
	leaq	(,%r8,2), %r8
	addq	%rbp, %r8
	addq	%r10, %rdi
	addq	$4, %rdi
	leaq	(%r11,%r12), %r10
	leaq	(%rbx,%r10,2), %r10
	cmpq	%r10, %r13
	setb	%r10b
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	cmpq	%r8, %rdx
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	setb	%r11b
	andb	%r10b, %r11b
	cmpq	%rdi, %r13
	setb	%dil
	cmpq	%r8, %rsi
	setb	%r10b
	andb	%dil, %r10b
	testl	%r14d, %r14d
	sets	%dil
	orb	%r10b, %dil
	movq	-120(%rsp), %r10                # 8-byte Reload
	leaq	(%r10,%r9,2), %r9
	addq	$2, %r9
	cmpq	%r9, %r13
	setb	%r9b
	cmpq	%r8, %r10
	setb	%r10b
	andb	%r9b, %r10b
	orb	%r11b, %r10b
	orb	%dil, %r10b
	leaq	(%r15,%r12,2), %rdi
	cmpq	%rdi, %r13
	setb	%dil
	cmpq	%r8, %r15
	movq	%rcx, %rdx
	setb	%cl
	andb	%dil, %cl
	orb	%r10b, %cl
	movb	%cl, -68(%rsp)                  # 1-byte Spill
	addq	%rdx, %rdx
	leaq	(%rdx,%rax,2), %rax
	leaq	(%rax,%rbp), %r10
	addq	$6, %r10
	leaq	(%r14,%r14), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	-32(%rsp), %rax                 # 8-byte Reload
	leaq	6(%rbx,%rax,2), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	$2, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	xorl	%esi, %esi
	jmp	.LBB2_70
	.p2align	4, 0x90
.LBB2_69:                               # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split
                                        #   in Loop: Header=BB2_70 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %r10
	addq	%rax, %r13
	incq	-24(%rsp)                       # 8-byte Folded Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, %rsi
	cmpq	%r15, %rax
	movq	-56(%rsp), %r14                 # 8-byte Reload
	je	.LBB2_194
.LBB2_70:                               # %for.cond1.preheader.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_80 Depth 2
                                        #     Child Loop BB2_73 Depth 2
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	sete	%al
	movq	%rsi, %rdx
	imulq	%r14, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	leaq	1(%rsi), %rdx
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movl	%ecx, %r11d
	subl	%esi, %r11d
	orb	-68(%rsp), %al                  # 1-byte Folded Reload
	je	.LBB2_78
# %bb.71:                               # %for.body3.us.i.us.us.preheader
                                        #   in Loop: Header=BB2_70 Depth=1
	xorl	%ecx, %ecx
	movq	-112(%rsp), %r15                # 8-byte Reload
	movq	-128(%rsp), %rbx                # 8-byte Reload
	movq	-80(%rsp), %r14                 # 8-byte Reload
	movq	-96(%rsp), %r9                  # 8-byte Reload
	jmp	.LBB2_73
	.p2align	4, 0x90
.LBB2_77:                               # %if.else.us.i.us.us
                                        #   in Loop: Header=BB2_73 Depth=2
	movl	(%rbx), %eax
	movw	%ax, (%r13,%rcx,2)
	movq	%rsi, %rcx
	cmpq	%rsi, %r15
	je	.LBB2_69
.LBB2_73:                               # %for.body3.us.i.us.us
                                        #   Parent Loop BB2_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r9, %r9
	je	.LBB2_75
# %bb.74:                               # %if.then.us.i.us.us
                                        #   in Loop: Header=BB2_73 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rcx,2), %edx
	imull	%r11d, %edx
	movl	%r11d, %eax
	jmp	.LBB2_76
	.p2align	4, 0x90
.LBB2_75:                               #   in Loop: Header=BB2_73 Depth=2
	xorl	%edx, %edx
	xorl	%eax, %eax
.LBB2_76:                               # %if.end.us.i.us.us
                                        #   in Loop: Header=BB2_73 Depth=2
	leaq	1(%rcx), %rsi
	movl	%eax, %edi
	movq	-24(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	addq	%rax, %rdi
	testl	%edi, %edi
	jle	.LBB2_77
# %bb.72:                               # %if.then56.us.i.us.us
                                        #   in Loop: Header=BB2_73 Depth=2
	movq	-120(%rsp), %rax                # 8-byte Reload
	movq	-64(%rsp), %r8                  # 8-byte Reload
	movzwl	(%rax,%r8,2), %r8d
	imull	%esi, %r8d
	movzwl	(%r14,%rcx,2), %eax
	imull	-104(%rsp), %eax                # 4-byte Folded Reload
	addl	%edx, %eax
	addl	%r8d, %eax
	cltd
	idivl	%edi
	movw	%ax, (%r13,%rcx,2)
	movq	%rsi, %rcx
	cmpq	%rsi, %r15
	jne	.LBB2_73
	jmp	.LBB2_69
	.p2align	4, 0x90
.LBB2_78:                               # %vector.body399.preheader
                                        #   in Loop: Header=BB2_70 Depth=1
	xorl	%r14d, %r14d
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movq	-96(%rsp), %r12                 # 8-byte Reload
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	jmp	.LBB2_80
	.p2align	4, 0x90
.LBB2_79:                               # %pred.sdiv.continue432
                                        #   in Loop: Header=BB2_80 Depth=2
	movw	%cx, -6(%r10,%r14,2)
	movw	%si, -4(%r10,%r14,2)
	movw	%di, -2(%r10,%r14,2)
	movw	%r8w, (%r10,%r14,2)
	movq	%rbx, %r14
	cmpq	%rbx, %r15
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movq	%r9, %r13
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	je	.LBB2_69
.LBB2_80:                               # %vector.body399
                                        #   Parent Loop BB2_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
                                        # implicit-def: $dx
	testq	%r12, %r12
	movq	24(%rsp), %rax                  # 8-byte Reload
	je	.LBB2_82
# %bb.81:                               # %pred.load.if401
                                        #   in Loop: Header=BB2_80 Depth=2
	movzwl	-6(%rax,%r14,2), %edx
.LBB2_82:                               # %pred.load.continue402
                                        #   in Loop: Header=BB2_80 Depth=2
                                        # implicit-def: $cx
                                        # kill: killed $cx
	testq	%r12, %r12
	je	.LBB2_84
# %bb.83:                               # %pred.load.if403
                                        #   in Loop: Header=BB2_80 Depth=2
	movzwl	-4(%rax,%r14,2), %ecx
	movw	%cx, -40(%rsp)                  # 2-byte Spill
.LBB2_84:                               # %pred.load.continue404
                                        #   in Loop: Header=BB2_80 Depth=2
                                        # implicit-def: $cx
                                        # kill: killed $cx
	testq	%r12, %r12
	je	.LBB2_86
# %bb.85:                               # %pred.load.if405
                                        #   in Loop: Header=BB2_80 Depth=2
	movzwl	-2(%rax,%r14,2), %ecx
	movw	%cx, -84(%rsp)                  # 2-byte Spill
.LBB2_86:                               # %pred.load.continue406
                                        #   in Loop: Header=BB2_80 Depth=2
	testq	%r12, %r12
	je	.LBB2_88
# %bb.87:                               # %pred.load.if407
                                        #   in Loop: Header=BB2_80 Depth=2
	movzwl	(%rax,%r14,2), %eax
	movw	%ax, -16(%rsp)                  # 2-byte Spill
	movl	%r11d, %eax
	jmp	.LBB2_89
	.p2align	4, 0x90
.LBB2_88:                               #   in Loop: Header=BB2_80 Depth=2
	xorl	%eax, %eax
                                        # implicit-def: $cx
                                        # kill: killed $cx
.LBB2_89:                               # %pred.load.continue408
                                        #   in Loop: Header=BB2_80 Depth=2
	movl	%eax, %eax
	leaq	(%rsi,%r14), %r8
	leaq	(%rax,%r8), %r15
	addq	$2, %r15
                                        # implicit-def: $ecx
	testl	%r15d, %r15d
	jle	.LBB2_101
# %bb.90:                               # %pred.load.continue418
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	(%rax,%r8), %r12
	addq	$3, %r12
                                        # implicit-def: $esi
	testl	%r12d, %r12d
	jle	.LBB2_102
.LBB2_91:                               # %pred.load.continue420
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	%r13, %r9
	leaq	(%rax,%r8), %rbx
	addq	$4, %rbx
                                        # implicit-def: $edi
	testl	%ebx, %ebx
	jle	.LBB2_103
.LBB2_92:                               # %pred.load.continue422
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	(%rax,%r8), %r13
	addq	$5, %r13
                                        # implicit-def: $r8d
	testl	%r13d, %r13d
	jle	.LBB2_104
.LBB2_93:                               # %pred.load.continue424
                                        #   in Loop: Header=BB2_80 Depth=2
	testl	%r15d, %r15d
	jle	.LBB2_95
.LBB2_94:                               # %pred.sdiv.if425
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	1(%r14), %rax
	movzwl	%dx, %ecx
	imull	%r11d, %ecx
	cmpq	$0, -96(%rsp)                   # 8-byte Folded Reload
	movl	$0, %edx
	cmovel	%edx, %ecx
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	-64(%rsp), %rbp                 # 8-byte Reload
	movzwl	(%rdx,%rbp,2), %edx
	movq	-80(%rsp), %rbp                 # 8-byte Reload
	movzwl	(%rbp,%r14,2), %ebp
	imull	-104(%rsp), %ebp                # 4-byte Folded Reload
	addl	%ecx, %ebp
	imull	%edx, %eax
	addl	%ebp, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%r15d
	movl	%eax, %ecx
.LBB2_95:                               # %pred.sdiv.continue426
                                        #   in Loop: Header=BB2_80 Depth=2
	testl	%r12d, %r12d
	jle	.LBB2_97
# %bb.96:                               # %pred.sdiv.if427
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	2(%r14), %rax
	movzwl	-40(%rsp), %edx                 # 2-byte Folded Reload
	imull	%r11d, %edx
	cmpq	$0, -96(%rsp)                   # 8-byte Folded Reload
	movl	$0, %esi
	cmovel	%esi, %edx
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	-64(%rsp), %r15                 # 8-byte Reload
	movzwl	(%rsi,%r15,2), %esi
	movq	-80(%rsp), %r15                 # 8-byte Reload
	movzwl	2(%r15,%r14,2), %ebp
	imull	-104(%rsp), %ebp                # 4-byte Folded Reload
	addl	%edx, %ebp
	imull	%esi, %eax
	addl	%ebp, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%r12d
	movl	%eax, %esi
.LBB2_97:                               # %pred.sdiv.continue428
                                        #   in Loop: Header=BB2_80 Depth=2
	testl	%ebx, %ebx
	movq	-112(%rsp), %r15                # 8-byte Reload
	jle	.LBB2_99
# %bb.98:                               # %pred.sdiv.if429
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	3(%r14), %rax
	movzwl	-84(%rsp), %edx                 # 2-byte Folded Reload
	imull	%r11d, %edx
	cmpq	$0, -96(%rsp)                   # 8-byte Folded Reload
	movl	$0, %edi
	cmovel	%edi, %edx
	movq	-120(%rsp), %rdi                # 8-byte Reload
	movq	-64(%rsp), %r12                 # 8-byte Reload
	movzwl	(%rdi,%r12,2), %edi
	movq	-80(%rsp), %r12                 # 8-byte Reload
	movzwl	4(%r12,%r14,2), %ebp
	imull	-104(%rsp), %ebp                # 4-byte Folded Reload
	addl	%edx, %ebp
	imull	%edi, %eax
	addl	%ebp, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%ebx
	movl	%eax, %edi
.LBB2_99:                               # %pred.sdiv.continue430
                                        #   in Loop: Header=BB2_80 Depth=2
	leaq	4(%r14), %rbx
	testl	%r13d, %r13d
	movq	-96(%rsp), %r12                 # 8-byte Reload
	jle	.LBB2_79
# %bb.100:                              # %pred.sdiv.if431
                                        #   in Loop: Header=BB2_80 Depth=2
	movzwl	-16(%rsp), %edx                 # 2-byte Folded Reload
	imull	%r11d, %edx
	testq	%r12, %r12
	movl	$0, %eax
	cmovel	%eax, %edx
	movq	-120(%rsp), %rax                # 8-byte Reload
	movq	-64(%rsp), %r8                  # 8-byte Reload
	movzwl	(%rax,%r8,2), %eax
	movq	-80(%rsp), %r8                  # 8-byte Reload
	movzwl	6(%r8,%r14,2), %r8d
	imull	-104(%rsp), %r8d                # 4-byte Folded Reload
	addl	%edx, %r8d
	imull	%ebx, %eax
	addl	%r8d, %eax
	cltd
	idivl	%r13d
	movl	%eax, %r8d
	jmp	.LBB2_79
	.p2align	4, 0x90
.LBB2_101:                              # %pred.load.if417
                                        #   in Loop: Header=BB2_80 Depth=2
	movl	(%rdi), %ecx
	leaq	(%rax,%r8), %r12
	addq	$3, %r12
                                        # implicit-def: $esi
	testl	%r12d, %r12d
	jg	.LBB2_91
.LBB2_102:                              # %pred.load.if419
                                        #   in Loop: Header=BB2_80 Depth=2
	movl	(%rdi), %esi
	movq	%r13, %r9
	leaq	(%rax,%r8), %rbx
	addq	$4, %rbx
                                        # implicit-def: $edi
	testl	%ebx, %ebx
	jg	.LBB2_92
.LBB2_103:                              # %pred.load.if421
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	-128(%rsp), %rdi                # 8-byte Reload
	movl	(%rdi), %edi
	leaq	(%rax,%r8), %r13
	addq	$5, %r13
                                        # implicit-def: $r8d
	testl	%r13d, %r13d
	jg	.LBB2_93
.LBB2_104:                              # %pred.load.if423
                                        #   in Loop: Header=BB2_80 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %r8d
	testl	%r15d, %r15d
	jg	.LBB2_94
	jmp	.LBB2_95
.LBB2_105:                              # %for.cond1.preheader.lr.ph.i.split.us.split.us
	testq	%r15, %r15
	movq	-128(%rsp), %rbx                # 8-byte Reload
	movq	-96(%rsp), %r12                 # 8-byte Reload
	je	.LBB2_150
# %bb.106:                              # %for.cond1.preheader.lr.ph.i.split.us.split.us.split
	testq	%r12, %r12
	je	.LBB2_167
# %bb.107:                              # %for.cond1.preheader.us.i.us.us.preheader
	movq	%r13, %r8
	subq	%rdx, %r8
	movq	%r8, -104(%rsp)                 # 8-byte Spill
	leaq	-1(%r9), %r8
	movq	-56(%rsp), %r14                 # 8-byte Reload
	imulq	%r14, %r8
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	movq	%r9, %r11
	leaq	(%rax,%rcx), %r9
	addq	%r11, %r9
	addq	%r8, %r9
	movq	-48(%rsp), %r8                  # 8-byte Reload
	movq	%r10, %rdx
	movl	%r8d, %r10d
	orl	$1, %r10d
	addq	%rdx, %rdi
	addq	$4, %rdi
	movq	%r13, %rdx
	subq	%r15, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	cmpq	%rdi, %r13
	leaq	(%r14,%r14), %rdx
	movq	%rbp, %rsi
	leaq	(%rbp,%r9,2), %rdi
	setb	%r8b
	cmpq	%rdi, %rbx
	setb	%dil
	andb	%r8b, %dil
	testl	%r14d, %r14d
	sets	%r8b
	orb	%dil, %r8b
	movb	%r8b, -84(%rsp)                 # 1-byte Spill
	movl	%r11d, %ebp
	andl	$-16, %ebp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%rax,2), %rax
	leaq	(%rsi,%rax), %rdi
	addq	$24, %rdi
	movq	%r12, %rcx
	leaq	4(%rsi,%rax), %r12
	movq	-32(%rsp), %r8                  # 8-byte Reload
	leaq	(%rcx,%r8,2), %r13
	addq	$6, %r13
	leaq	(%rsi,%rax), %rbp
	addq	$6, %rbp
	leaq	(%rsi,%rax), %r9
	addq	$2, %r9
	xorl	%r11d, %r11d
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	jmp	.LBB2_109
	.p2align	4, 0x90
.LBB2_108:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split
                                        #   in Loop: Header=BB2_109 Depth=1
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-120(%rsp), %rdi                # 8-byte Reload
	addq	%rdx, %rdi
	addq	%rdx, %r12
	addq	%rdx, %rbp
	addq	%rdx, %r9
	cmpq	%r15, %r11
	je	.LBB2_194
.LBB2_109:                              # %for.cond1.preheader.us.i.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_122 Depth 2
                                        #     Child Loop BB2_114 Depth 2
                                        #     Child Loop BB2_116 Depth 2
	movq	%rdx, %rax
	imulq	%r11, %rax
	movq	-104(%rsp), %rcx                # 8-byte Reload
	addq	%rax, %rcx
	addq	-64(%rsp), %rax                 # 8-byte Folded Reload
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %ebx
	subl	%r11d, %ebx
	incq	%r11
	testl	%edx, %edx
	movq	%rdi, -120(%rsp)                # 8-byte Spill
	js	.LBB2_117
# %bb.110:                              # %for.body3.us.i.us.us.us.us.us207.preheader
                                        #   in Loop: Header=BB2_109 Depth=1
	je	.LBB2_115
# %bb.111:                              # %vector.memcheck490
                                        #   in Loop: Header=BB2_109 Depth=1
	cmpq	$8, %rcx
	jb	.LBB2_115
# %bb.112:                              # %vector.memcheck490
                                        #   in Loop: Header=BB2_109 Depth=1
	cmpq	$8, %rax
	jb	.LBB2_115
# %bb.113:                              # %vector.body503.preheader
                                        #   in Loop: Header=BB2_109 Depth=1
	xorl	%r14d, %r14d
	movq	-112(%rsp), %r15                # 8-byte Reload
	.p2align	4, 0x90
.LBB2_114:                              # %vector.body503
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-6(%r13,%r14,2), %ecx
	movzwl	-4(%r13,%r14,2), %esi
	movzwl	-2(%r13,%r14,2), %edi
	movzwl	(%r13,%r14,2), %edx
	imull	%ebx, %ecx
	imull	%ebx, %esi
	imull	%ebx, %edi
	imull	%ebx, %edx
	movq	-80(%rsp), %r8                  # 8-byte Reload
	movzwl	(%r8,%r14,2), %eax
	imull	%r11d, %eax
	addl	%ecx, %eax
	movzwl	2(%r8,%r14,2), %ecx
	imull	%r11d, %ecx
	addl	%esi, %ecx
	movzwl	4(%r8,%r14,2), %esi
	imull	%r11d, %esi
	addl	%edi, %esi
	movzwl	6(%r8,%r14,2), %edi
	imull	%r11d, %edi
	addl	%edx, %edi
	cltd
	idivl	%r10d
	movl	%eax, %r8d
	movl	%ecx, %eax
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%r10d
	movl	%eax, %esi
	movl	%edi, %eax
	cltd
	idivl	%r10d
	movw	%r8w, -6(%rbp,%r14,2)
	movw	%cx, -4(%rbp,%r14,2)
	movw	%si, -2(%rbp,%r14,2)
	movw	%ax, (%rbp,%r14,2)
	addq	$4, %r14
	cmpq	%r14, %r15
	jne	.LBB2_114
	jmp	.LBB2_108
	.p2align	4, 0x90
.LBB2_115:                              # %for.body3.us.i.us.us.us.us.us207.preheader618
                                        #   in Loop: Header=BB2_109 Depth=1
	xorl	%ecx, %ecx
	movq	-112(%rsp), %r15                # 8-byte Reload
	.p2align	4, 0x90
.LBB2_116:                              # %for.body3.us.i.us.us.us.us.us207
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-6(%r13,%rcx,2), %edx
	imull	%ebx, %edx
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movzwl	(%rsi,%rcx,2), %eax
	imull	%r11d, %eax
	addl	%edx, %eax
	cltd
	idivl	%r10d
	movw	%ax, -2(%r9,%rcx,2)
	movzwl	-4(%r13,%rcx,2), %edx
	imull	%ebx, %edx
	movzwl	2(%rsi,%rcx,2), %eax
	imull	%r11d, %eax
	addl	%edx, %eax
	cltd
	idivl	%r10d
	movw	%ax, (%r9,%rcx,2)
	addq	$2, %rcx
	cmpq	%rcx, %r15
	jne	.LBB2_116
	jmp	.LBB2_108
	.p2align	4, 0x90
.LBB2_117:                              # %vector.memcheck507
                                        #   in Loop: Header=BB2_109 Depth=1
	cmpb	$0, -84(%rsp)                   # 1-byte Folded Reload
	je	.LBB2_119
# %bb.118:                              #   in Loop: Header=BB2_109 Depth=1
	xorl	%eax, %eax
	movq	-112(%rsp), %r15                # 8-byte Reload
	jmp	.LBB2_122
.LBB2_119:                              # %vector.ph517
                                        #   in Loop: Header=BB2_109 Depth=1
	movq	-128(%rsp), %rax                # 8-byte Reload
	movd	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	punpcklqdq	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	xorl	%eax, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB2_120:                              # %vector.body521
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -24(%rdi,%rax,2)
	movdqu	%xmm0, -8(%rdi,%rax,2)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.LBB2_120
# %bb.121:                              # %middle.block514
                                        #   in Loop: Header=BB2_109 Depth=1
	movq	%rcx, %rax
	movq	-112(%rsp), %r15                # 8-byte Reload
	cmpl	%r15d, %ecx
	je	.LBB2_108
	.p2align	4, 0x90
.LBB2_122:                              # %for.body3.us.i.us.us.us.us
                                        #   Parent Loop BB2_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx), %ecx
	movw	%cx, -4(%r12,%rax,2)
	movzwl	(%rdx), %ecx
	movw	%cx, -2(%r12,%rax,2)
	movzwl	(%rdx), %ecx
	movw	%cx, (%r12,%rax,2)
	movzwl	(%rdx), %ecx
	movw	%cx, 2(%r12,%rax,2)
	addq	$4, %rax
	cmpq	%rax, %r15
	jne	.LBB2_122
	jmp	.LBB2_108
.LBB2_123:                              # %for.cond1.preheader.lr.ph.i.split.us.split.split.us
	testq	%rbx, %rbx
	je	.LBB2_177
# %bb.124:                              # %for.cond1.preheader.us.i.us.us183.preheader
	movabsq	$9223372036854775807, %r8       # imm = 0x7FFFFFFFFFFFFFFF
	movq	%r12, %rsi
	addq	%r12, %r8
	movq	-56(%rsp), %r14                 # 8-byte Reload
	imulq	%r14, %r8
	leaq	(%rax,%rcx), %r9
	addq	%r12, %r9
	addq	%r8, %r9
	leaq	(,%r9,2), %r9
	addq	%rbp, %r9
	leaq	4(%rdi,%r10), %rdi
	movq	-120(%rsp), %r15                # 8-byte Reload
	leaq	(%r15,%r8,2), %r8
	addq	$2, %r8
	leaq	(%r11,%r12), %r10
	leaq	(%rbx,%r10,2), %r10
	cmpq	%rdi, %r13
	setb	%dil
	cmpq	%r9, -128(%rsp)                 # 8-byte Folded Reload
	movq	%r11, %r12
	setb	%r11b
	andb	%dil, %r11b
	cmpq	%r8, %r13
	setb	%dil
	cmpq	%r9, %r15
	setb	%r8b
	andb	%dil, %r8b
	testl	%r14d, %r14d
	sets	%dil
	orb	%r8b, %dil
	cmpq	%r10, %r13
	setb	%r8b
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	cmpq	%r9, %rdx
	setb	%dl
	andb	%r8b, %dl
	orb	%r11b, %dl
	orb	%dil, %dl
	movb	%dl, -84(%rsp)                  # 1-byte Spill
	addq	%rcx, %rcx
	leaq	(%rcx,%rax,2), %rax
	leaq	(%rax,%rbp), %r10
	addq	$6, %r10
	leaq	(%r14,%r14), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%r12,2), %rax
	addq	$6, %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	negq	%rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	leaq	1(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	movq	%rsi, %rbp
	jmp	.LBB2_126
	.p2align	4, 0x90
.LBB2_125:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split
                                        #   in Loop: Header=BB2_126 Depth=1
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %r10
	decq	%rbp
	movq	8(%rsp), %r13                   # 8-byte Reload
	addq	%rax, %r13
	decq	-96(%rsp)                       # 8-byte Folded Spill
	cmpq	-112(%rsp), %rdx                # 8-byte Folded Reload
	movq	-56(%rsp), %r14                 # 8-byte Reload
	je	.LBB2_194
.LBB2_126:                              # %for.cond1.preheader.us.i.us.us183
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_134 Depth 2
                                        #     Child Loop BB2_130 Depth 2
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	sete	%al
	movq	%rdx, %r13
	imulq	%r14, %r13
	movl	%ecx, %r11d
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	subl	%edx, %r11d
	orb	-84(%rsp), %al                  # 1-byte Folded Reload
	je	.LBB2_132
# %bb.127:                              # %for.body3.us.i.us.us.us160.us.preheader
                                        #   in Loop: Header=BB2_126 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB2_130
	.p2align	4, 0x90
.LBB2_128:                              # %if.then56.us.i.us.us.us175.us
                                        #   in Loop: Header=BB2_130 Depth=2
	movq	-120(%rsp), %rax                # 8-byte Reload
	movzwl	(%rax,%r13,2), %edx
	imull	%esi, %edx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%rax,%rcx,2), %eax
	imull	%r11d, %eax
	addl	%edx, %eax
	cltd
	idivl	%edi
.LBB2_129:                              # %for.inc.us.i.us.us.us177.us
                                        #   in Loop: Header=BB2_130 Depth=2
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movw	%ax, (%rdx,%rcx,2)
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	%rsi, %rcx
	addq	%rsi, %rax
	je	.LBB2_125
.LBB2_130:                              # %for.body3.us.i.us.us.us160.us
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%rcx), %rsi
	movq	-96(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %rdi
	testl	%edi, %edi
	jg	.LBB2_128
# %bb.131:                              # %if.else.us.i.us.us.us173.us
                                        #   in Loop: Header=BB2_130 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %eax
	jmp	.LBB2_129
	.p2align	4, 0x90
.LBB2_132:                              # %vector.body466.preheader
                                        #   in Loop: Header=BB2_126 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB2_134
	.p2align	4, 0x90
.LBB2_133:                              # %pred.sdiv.continue483
                                        #   in Loop: Header=BB2_134 Depth=2
	movw	%cx, -6(%r10,%r15,2)
	movw	%si, -4(%r10,%r15,2)
	movw	%di, -2(%r10,%r15,2)
	movw	%r8w, (%r10,%r15,2)
	movq	%rbx, %r15
	cmpq	%rbx, -112(%rsp)                # 8-byte Folded Reload
	je	.LBB2_125
.LBB2_134:                              # %vector.body466
                                        #   Parent Loop BB2_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rbp), %rbx
	incq	%rbx
                                        # implicit-def: $ecx
	testl	%ebx, %ebx
	jle	.LBB2_146
# %bb.135:                              # %pred.load.continue469
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	(%r15,%rbp), %r12
	addq	$2, %r12
                                        # implicit-def: $esi
	testl	%r12d, %r12d
	jle	.LBB2_147
.LBB2_136:                              # %pred.load.continue471
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	(%r15,%rbp), %r14
	addq	$3, %r14
                                        # implicit-def: $edi
	testl	%r14d, %r14d
	jle	.LBB2_148
.LBB2_137:                              # %pred.load.continue473
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	(%r15,%rbp), %r9
	addq	$4, %r9
                                        # implicit-def: $r8d
	testl	%r9d, %r9d
	jle	.LBB2_149
.LBB2_138:                              # %pred.load.continue475
                                        #   in Loop: Header=BB2_134 Depth=2
	testl	%ebx, %ebx
	jle	.LBB2_140
.LBB2_139:                              # %pred.sdiv.if476
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	1(%r15), %rax
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movzwl	(%rcx,%r13,2), %ecx
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movzwl	-6(%rdx,%r15,2), %edx
	imull	%r11d, %edx
	imull	%ecx, %eax
	addl	%edx, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
.LBB2_140:                              # %pred.sdiv.continue477
                                        #   in Loop: Header=BB2_134 Depth=2
	testl	%r12d, %r12d
	jle	.LBB2_142
# %bb.141:                              # %pred.sdiv.if478
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	2(%r15), %rax
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx,%r13,2), %edx
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movzwl	-4(%rsi,%r15,2), %esi
	imull	%r11d, %esi
	imull	%edx, %eax
	addl	%esi, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%r12d
	movl	%eax, %esi
.LBB2_142:                              # %pred.sdiv.continue479
                                        #   in Loop: Header=BB2_134 Depth=2
	testl	%r14d, %r14d
	jle	.LBB2_144
# %bb.143:                              # %pred.sdiv.if480
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	3(%r15), %rax
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx,%r13,2), %edx
	movq	-104(%rsp), %rdi                # 8-byte Reload
	movzwl	-2(%rdi,%r15,2), %edi
	imull	%r11d, %edi
	imull	%edx, %eax
	addl	%edi, %eax
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%r14d
	movl	%eax, %edi
.LBB2_144:                              # %pred.sdiv.continue481
                                        #   in Loop: Header=BB2_134 Depth=2
	leaq	4(%r15), %rbx
	testl	%r9d, %r9d
	jle	.LBB2_133
# %bb.145:                              # %pred.sdiv.if482
                                        #   in Loop: Header=BB2_134 Depth=2
	movq	-120(%rsp), %rax                # 8-byte Reload
	movzwl	(%rax,%r13,2), %eax
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movzwl	(%rdx,%r15,2), %edx
	imull	%r11d, %edx
	imull	%ebx, %eax
	addl	%edx, %eax
	cltd
	idivl	%r9d
	movl	%eax, %r8d
	jmp	.LBB2_133
	.p2align	4, 0x90
.LBB2_146:                              # %pred.load.if468
                                        #   in Loop: Header=BB2_134 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %ecx
	leaq	(%r15,%rbp), %r12
	addq	$2, %r12
                                        # implicit-def: $esi
	testl	%r12d, %r12d
	jg	.LBB2_136
.LBB2_147:                              # %pred.load.if470
                                        #   in Loop: Header=BB2_134 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %esi
	leaq	(%r15,%rbp), %r14
	addq	$3, %r14
                                        # implicit-def: $edi
	testl	%r14d, %r14d
	jg	.LBB2_137
.LBB2_148:                              # %pred.load.if472
                                        #   in Loop: Header=BB2_134 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %edi
	leaq	(%r15,%rbp), %r9
	addq	$4, %r9
                                        # implicit-def: $r8d
	testl	%r9d, %r9d
	jg	.LBB2_138
.LBB2_149:                              # %pred.load.if474
                                        #   in Loop: Header=BB2_134 Depth=2
	movq	-128(%rsp), %rax                # 8-byte Reload
	movl	(%rax), %r8d
	testl	%ebx, %ebx
	jg	.LBB2_139
	jmp	.LBB2_140
.LBB2_150:                              # %for.cond1.preheader.lr.ph.i.split.us.split.us.split.us
	movq	%r10, %r14
	movabsq	$9223372036854775807, %r10      # imm = 0x7FFFFFFFFFFFFFFF
	testq	%r12, %r12
	je	.LBB2_186
# %bb.151:                              # %for.cond1.preheader.us.i.us.us.us.preheader
	leaq	(%rax,%rcx), %rbx
	movq	%rbp, %rsi
	leaq	(,%rbx,2), %r8
	addq	%rbp, %r8
	subq	%rdx, %r8
	movq	-56(%rsp), %r15                 # 8-byte Reload
	movq	%r9, %rbp
	leaq	(%r15,%r15), %r9
	addq	%rbp, %r10
	imulq	%r15, %r10
	addq	%rbp, %rbx
	addq	%r10, %rbx
	leaq	(%rsi,%rbx,2), %r10
	addq	%r14, %rdi
	addq	$4, %rdi
	cmpq	%rdi, %r13
	setb	%dil
	cmpq	%r10, -128(%rsp)                # 8-byte Folded Reload
	setb	%r10b
	andb	%dil, %r10b
	testl	%r15d, %r15d
	sets	%dil
	orb	%r10b, %dil
	movl	%ebp, %r10d
	andl	$-16, %r10d
	movq	%r11, %rdx
	movl	%ebp, %r11d
	andl	$-32, %r11d
	addq	%rcx, %rcx
	leaq	(%rcx,%rax,2), %rbx
	leaq	(%rsi,%rbx), %rax
	addq	$24, %rax
	leaq	(%rsi,%rbx), %rcx
	addq	$4, %rcx
	addq	%rbx, %rsi
	addq	$48, %rsi
	leaq	(%r12,%rdx,2), %rdx
	addq	$48, %rdx
	xorl	%ebx, %ebx
	movq	-128(%rsp), %r12                # 8-byte Reload
	jmp	.LBB2_153
	.p2align	4, 0x90
.LBB2_152:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split
                                        #   in Loop: Header=BB2_153 Depth=1
	incq	%rbx
	addq	%r9, %rax
	addq	%r9, %rcx
	addq	%r9, %rsi
	cmpq	%r15, %rbx
	je	.LBB2_194
.LBB2_153:                              # %for.cond1.preheader.us.i.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_162 Depth 2
                                        #     Child Loop BB2_164 Depth 2
                                        #     Child Loop BB2_157 Depth 2
                                        #     Child Loop BB2_166 Depth 2
	movq	-48(%rsp), %r14                 # 8-byte Reload
	movl	%r14d, %ebp
	subl	%ebx, %ebp
	testl	%ebp, %ebp
	jle	.LBB2_159
# %bb.154:                              # %for.body3.us.i.us.us.us.us.us.us.us238.preheader
                                        #   in Loop: Header=BB2_153 Depth=1
	cmpl	$32, %r14d
	jb	.LBB2_165
# %bb.155:                              # %for.body3.us.i.us.us.us.us.us.us.us238.preheader
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	%r9, %r15
	imulq	%rbx, %r15
	addq	%r8, %r15
	movl	$0, %r14d
	cmpq	$64, %r15
	movq	-112(%rsp), %r15                # 8-byte Reload
	jb	.LBB2_166
# %bb.156:                              # %vector.body556.preheader
                                        #   in Loop: Header=BB2_153 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_157:                              # %vector.body556
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rdx,%r14,2), %xmm0
	movups	-32(%rdx,%r14,2), %xmm1
	movups	-16(%rdx,%r14,2), %xmm2
	movups	(%rdx,%r14,2), %xmm3
	movdqu	%xmm0, -48(%rsi,%r14,2)
	movups	%xmm1, -32(%rsi,%r14,2)
	movups	%xmm2, -16(%rsi,%r14,2)
	movups	%xmm3, (%rsi,%r14,2)
	addq	$32, %r14
	cmpq	%r14, %r11
	jne	.LBB2_157
# %bb.158:                              # %middle.block549
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	%r11, %r14
	cmpl	%r15d, %r11d
	jne	.LBB2_166
	jmp	.LBB2_152
	.p2align	4, 0x90
.LBB2_159:                              # %for.body3.us.i.us.us.us.us.us.us.preheader
                                        #   in Loop: Header=BB2_153 Depth=1
	cmpl	$16, %r14d
	setb	%bpl
	orb	%dil, %bpl
	cmpb	$1, %bpl
	jne	.LBB2_161
# %bb.160:                              #   in Loop: Header=BB2_153 Depth=1
	xorl	%r14d, %r14d
	movq	-112(%rsp), %r15                # 8-byte Reload
	jmp	.LBB2_164
.LBB2_161:                              # %vector.ph574
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	-128(%rsp), %r14                # 8-byte Reload
	movd	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	punpcklqdq	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	xorl	%r14d, %r14d
	movq	-112(%rsp), %r15                # 8-byte Reload
	.p2align	4, 0x90
.LBB2_162:                              # %vector.body578
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -24(%rax,%r14,2)
	movdqu	%xmm0, -8(%rax,%r14,2)
	addq	$16, %r14
	cmpq	%r14, %r10
	jne	.LBB2_162
# %bb.163:                              # %middle.block571
                                        #   in Loop: Header=BB2_153 Depth=1
	movq	%r10, %r14
	cmpl	%r15d, %r10d
	je	.LBB2_152
	.p2align	4, 0x90
.LBB2_164:                              # %for.body3.us.i.us.us.us.us.us.us
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12), %ebp
	movw	%bp, -4(%rcx,%r14,2)
	movzwl	(%r12), %ebp
	movw	%bp, -2(%rcx,%r14,2)
	movzwl	(%r12), %ebp
	movw	%bp, (%rcx,%r14,2)
	movzwl	(%r12), %ebp
	movw	%bp, 2(%rcx,%r14,2)
	addq	$4, %r14
	cmpq	%r14, %r15
	jne	.LBB2_164
	jmp	.LBB2_152
.LBB2_165:                              #   in Loop: Header=BB2_153 Depth=1
	xorl	%r14d, %r14d
	movq	-112(%rsp), %r15                # 8-byte Reload
	.p2align	4, 0x90
.LBB2_166:                              # %for.body3.us.i.us.us.us.us.us.us.us238
                                        #   Parent Loop BB2_153 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	-48(%rdx,%r14,2), %ebp
	movw	%bp, -4(%rcx,%r14,2)
	movzwl	-46(%rdx,%r14,2), %ebp
	movw	%bp, -2(%rcx,%r14,2)
	movzwl	-44(%rdx,%r14,2), %ebp
	movw	%bp, (%rcx,%r14,2)
	movzwl	-42(%rdx,%r14,2), %ebp
	movw	%bp, 2(%rcx,%r14,2)
	addq	$4, %r14
	cmpq	%r14, %r15
	jne	.LBB2_166
	jmp	.LBB2_152
.LBB2_167:                              # %for.body3.us.i.us.us.us.us.us191.us.us.preheader.preheader
	leaq	(%rax,%rcx), %rdx
	leaq	(,%rdx,2), %rdx
	addq	%rbp, %rdx
	subq	%r15, %rdx
	movq	-56(%rsp), %r11                 # 8-byte Reload
	addq	%r11, %r11
	movl	%r9d, %edi
	andl	$-32, %edi
	addq	%rcx, %rcx
	leaq	(%rcx,%rax,2), %rcx
	leaq	(%rcx,%rbp), %rax
	addq	$48, %rax
	addq	%rbp, %rcx
	addq	$4, %rcx
	xorl	%esi, %esi
	jmp	.LBB2_169
	.p2align	4, 0x90
.LBB2_168:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.split.us.us
                                        #   in Loop: Header=BB2_169 Depth=1
	incq	%rsi
	addq	%r11, %rax
	addq	%r11, %rcx
	cmpq	%r10, %rsi
	je	.LBB2_194
.LBB2_169:                              # %for.body3.us.i.us.us.us.us.us191.us.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_174 Depth 2
                                        #     Child Loop BB2_176 Depth 2
	cmpl	$31, -48(%rsp)                  # 4-byte Folded Reload
	ja	.LBB2_171
# %bb.170:                              #   in Loop: Header=BB2_169 Depth=1
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r10                # 8-byte Reload
	movq	-80(%rsp), %rbx                 # 8-byte Reload
	jmp	.LBB2_176
	.p2align	4, 0x90
.LBB2_171:                              # %vector.memcheck531
                                        #   in Loop: Header=BB2_169 Depth=1
	movq	%r11, %r8
	imulq	%rsi, %r8
	addq	%rdx, %r8
	cmpq	$64, %r8
	movq	-112(%rsp), %r10                # 8-byte Reload
	movq	-80(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB2_173
# %bb.172:                              #   in Loop: Header=BB2_169 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB2_176
.LBB2_173:                              # %vector.body540.preheader
                                        #   in Loop: Header=BB2_169 Depth=1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB2_174:                              # %vector.body540
                                        #   Parent Loop BB2_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rbx,%r8,2), %xmm0
	movups	16(%rbx,%r8,2), %xmm1
	movups	32(%rbx,%r8,2), %xmm2
	movups	48(%rbx,%r8,2), %xmm3
	movdqu	%xmm0, -48(%rax,%r8,2)
	movups	%xmm1, -32(%rax,%r8,2)
	movups	%xmm2, -16(%rax,%r8,2)
	movups	%xmm3, (%rax,%r8,2)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB2_174
# %bb.175:                              # %middle.block533
                                        #   in Loop: Header=BB2_169 Depth=1
	movq	%rdi, %r8
	cmpl	%r10d, %edi
	je	.LBB2_168
	.p2align	4, 0x90
.LBB2_176:                              # %for.body3.us.i.us.us.us.us.us191.us.us
                                        #   Parent Loop BB2_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%r8,2), %r9d
	movw	%r9w, -4(%rcx,%r8,2)
	movzwl	2(%rbx,%r8,2), %r9d
	movw	%r9w, -2(%rcx,%r8,2)
	movzwl	4(%rbx,%r8,2), %r9d
	movw	%r9w, (%rcx,%r8,2)
	movzwl	6(%rbx,%r8,2), %r9d
	movw	%r9w, 2(%rcx,%r8,2)
	addq	$4, %r8
	cmpq	%r8, %r10
	jne	.LBB2_176
	jmp	.LBB2_168
.LBB2_177:                              # %for.cond1.preheader.us.i.us.us183.us.preheader
	addq	%rcx, %rcx
	leaq	(%rcx,%rax,2), %rax
	addq	%rbp, %rax
	addq	$2, %rax
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rdi), %rcx
	xorl	%edx, %edx
	movq	-120(%rsp), %rbx                # 8-byte Reload
	movq	-112(%rsp), %r10                # 8-byte Reload
	movq	-128(%rsp), %r11                # 8-byte Reload
	jmp	.LBB2_179
	.p2align	4, 0x90
.LBB2_178:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.split.us.us.split.us.us
                                        #   in Loop: Header=BB2_179 Depth=1
	incq	%rdx
	addq	%rcx, %rax
	cmpq	%r10, %rdx
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	je	.LBB2_194
.LBB2_179:                              # %for.cond1.preheader.us.i.us.us183.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_182 Depth 2
	movq	%rdx, %rsi
	imulq	%rdi, %rsi
	xorl	%edi, %edi
	jmp	.LBB2_182
	.p2align	4, 0x90
.LBB2_180:                              # %if.else.us.i.us.us.us173.us.us.us.1
                                        #   in Loop: Header=BB2_182 Depth=2
	movl	(%r11), %r9d
.LBB2_181:                              # %for.inc.us.i.us.us.us177.us.us.us.1
                                        #   in Loop: Header=BB2_182 Depth=2
	movw	%r9w, (%rax,%rdi,2)
	incq	%r8
	movq	%r8, %rdi
	cmpq	%r10, %r8
	je	.LBB2_178
.LBB2_182:                              # %for.body3.us.i.us.us.us160.us.us.us
                                        #   Parent Loop BB2_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2147483647, %edi               # imm = 0x7FFFFFFF
	jae	.LBB2_184
# %bb.183:                              #   in Loop: Header=BB2_182 Depth=2
	movzwl	(%rbx,%rsi,2), %r8d
	movw	%r8w, -2(%rax,%rdi,2)
	leaq	1(%rdi), %r8
	cmpl	$2147483647, %r8d               # imm = 0x7FFFFFFF
	jae	.LBB2_180
	jmp	.LBB2_185
	.p2align	4, 0x90
.LBB2_184:                              # %if.else.us.i.us.us.us173.us.us.us
                                        #   in Loop: Header=BB2_182 Depth=2
	movl	(%r11), %r8d
	movw	%r8w, -2(%rax,%rdi,2)
	leaq	1(%rdi), %r8
	cmpl	$2147483647, %r8d               # imm = 0x7FFFFFFF
	jae	.LBB2_180
.LBB2_185:                              #   in Loop: Header=BB2_182 Depth=2
	movzwl	(%rbx,%rsi,2), %r9d
	jmp	.LBB2_181
.LBB2_186:                              # %for.cond1.preheader.us.i.us.us.us.us.preheader
	addq	%r9, %r10
	movq	%r9, %r11
	movq	-56(%rsp), %r9                  # 8-byte Reload
	imulq	%r9, %r10
	leaq	(%rax,%rcx), %rdx
	addq	%r11, %rdx
	addq	%r10, %rdx
	leaq	(,%rdx,2), %rdx
	addq	%rbp, %rdx
	addq	%r14, %rdi
	addq	$4, %rdi
	cmpq	%rdi, %r13
	setb	%dil
	cmpq	%rdx, %rbx
	setb	%r8b
	andb	%dil, %r8b
	testl	%r9d, %r9d
	sets	%dl
	orb	%r8b, %dl
	movl	%r11d, %edi
	andl	$-16, %edi
	addq	%rcx, %rcx
	leaq	(%rcx,%rax,2), %rcx
	leaq	(%rcx,%rbp), %rax
	addq	$24, %rax
	addq	%r9, %r9
	addq	%rbp, %rcx
	addq	$4, %rcx
	xorl	%esi, %esi
	jmp	.LBB2_188
	.p2align	4, 0x90
.LBB2_187:                              # %for.cond1.for.end_crit_edge.us.i.split.us.us.split.us.us.split.us.us.split.us.us
                                        #   in Loop: Header=BB2_188 Depth=1
	incq	%rsi
	movq	%rbx, %r9
	addq	%rbx, %rax
	addq	%rbx, %rcx
	cmpq	%r10, %rsi
	je	.LBB2_194
.LBB2_188:                              # %for.cond1.preheader.us.i.us.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_191 Depth 2
                                        #     Child Loop BB2_193 Depth 2
	movq	%r9, %rbx
	cmpl	$16, -48(%rsp)                  # 4-byte Folded Reload
	setb	%r8b
	orb	%dl, %r8b
	je	.LBB2_190
# %bb.189:                              #   in Loop: Header=BB2_188 Depth=1
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r10                # 8-byte Reload
	movq	-128(%rsp), %r11                # 8-byte Reload
	jmp	.LBB2_193
.LBB2_190:                              # %vector.ph598
                                        #   in Loop: Header=BB2_188 Depth=1
	movq	-128(%rsp), %r11                # 8-byte Reload
	movd	(%r11), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	punpcklqdq	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r10                # 8-byte Reload
	.p2align	4, 0x90
.LBB2_191:                              # %vector.body602
                                        #   Parent Loop BB2_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	%xmm0, -24(%rax,%r8,2)
	movdqu	%xmm0, -8(%rax,%r8,2)
	addq	$16, %r8
	cmpq	%r8, %rdi
	jne	.LBB2_191
# %bb.192:                              # %middle.block595
                                        #   in Loop: Header=BB2_188 Depth=1
	movq	%rdi, %r8
	cmpl	%r10d, %edi
	je	.LBB2_187
	.p2align	4, 0x90
.LBB2_193:                              # %for.body3.us.i.us.us.us.us.us.us.us.us
                                        #   Parent Loop BB2_188 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r11), %r9d
	movw	%r9w, -4(%rcx,%r8,2)
	movzwl	(%r11), %r9d
	movw	%r9w, -2(%rcx,%r8,2)
	movzwl	(%r11), %r9d
	movw	%r9w, (%rcx,%r8,2)
	movzwl	(%r11), %r9d
	movw	%r9w, 2(%rcx,%r8,2)
	addq	$4, %r8
	cmpq	%r8, %r10
	jne	.LBB2_193
	jmp	.LBB2_187
.LBB2_194:                              # %pixMeanInterpolateBlock.exit
	addq	$144, %rsp
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
.Lfunc_end2:
	.size	ercPixConcealIMB, .Lfunc_end2-ercPixConcealIMB
	.cfi_endproc
                                        # -- End function
	.globl	ercCollect8PredBlocks           # -- Begin function ercCollect8PredBlocks
	.p2align	4, 0x90
	.type	ercCollect8PredBlocks,@function
ercCollect8PredBlocks:                  # @ercCollect8PredBlocks
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
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
	movl	56(%rsp), %r15d
	xorl	%r14d, %r14d
	cmpb	$0, 64(%rsp)
	sete	%r10b
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdi)
	movups	%xmm0, (%rdi)
	subl	%r15d, %r8d
	leal	-1(%rsi), %ebp
	imull	%r9d, %ebp
	addl	%edx, %ebp
	leal	(%r15,%rsi), %r12d
	imull	%r9d, %r12d
	leal	(%r12,%rdx), %r13d
	movl	%r9d, %ebx
	imull	%esi, %ebx
	xorl	%eax, %eax
	movslq	%ebp, %r11
	testl	%esi, %esi
	movq	%r11, -8(%rsp)                  # 8-byte Spill
	jle	.LBB3_3
# %bb.1:                                # %land.lhs.true.peel
	movsbl	(%rcx,%r11), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_3
# %bb.2:                                # %if.then.peel
	movl	%r11d, 16(%rdi)
	movl	$1, %eax
.LBB3_3:                                # %if.end.peel
	movb	%r10b, %r14b
	addl	%edx, %ebx
	leal	(%r15,%rdx), %r10d
	movslq	%r13d, %r13
	cmpl	%esi, %r8d
	movq	%r13, -16(%rsp)                 # 8-byte Spill
	jle	.LBB3_6
# %bb.4:                                # %land.lhs.true15.peel
	movsbl	(%rcx,%r13), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_6
# %bb.5:                                # %if.then24.peel
	movl	%r11d, 24(%rdi)
	incl	%eax
.LBB3_6:                                # %if.end33.peel
	leal	(%rbx,%r15), %r13d
	addl	%r15d, %ebp
	addl	%r12d, %r10d
	subl	%r15d, %r9d
	movslq	%ebx, %r12
	testl	%edx, %edx
	jle	.LBB3_7
# %bb.8:                                # %if.then36.peel
	movsbl	-1(%rcx,%r12), %r11d
	cmpl	$3, %r11d
	movzbl	64(%rsp), %ebx
	jl	.LBB3_10
# %bb.9:                                # %if.then45.peel
	movl	%r11d, 20(%rdi)
	incl	%eax
.LBB3_10:                               # %if.end54.peel
	testb	%bl, %bl
	jne	.LBB3_17
# %bb.11:                               # %if.then56.peel
	testl	%esi, %esi
	jle	.LBB3_14
# %bb.12:                               # %land.lhs.true59.peel
	movq	-8(%rsp), %r11                  # 8-byte Reload
	movsbl	-1(%rcx,%r11), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_14
# %bb.13:                               # %if.then69.peel
	movl	%r11d, 4(%rdi)
	incl	%eax
.LBB3_14:                               # %if.end79.peel
	cmpl	%esi, %r8d
	jle	.LBB3_17
# %bb.15:                               # %land.lhs.true83.peel
	movq	-16(%rsp), %r11                 # 8-byte Reload
	movsbl	-1(%rcx,%r11), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_17
# %bb.16:                               # %if.then93.peel
	movl	%r11d, 8(%rdi)
	incl	%eax
	jmp	.LBB3_17
.LBB3_7:
	movzbl	64(%rsp), %ebx
.LBB3_17:                               # %if.end105.peel
	leal	2(,%r14,2), %r14d
	movslq	%r13d, %r13
	movslq	%ebp, %r15
	movslq	%r10d, %r10
	cmpl	%edx, %r9d
	jle	.LBB3_27
# %bb.18:                               # %if.then109.peel
	movsbl	(%rcx,%r13), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_20
# %bb.19:                               # %if.then118.peel
	movl	%r11d, 28(%rdi)
	incl	%eax
.LBB3_20:                               # %if.end127.peel
	testb	%bl, %bl
	jne	.LBB3_27
# %bb.21:                               # %if.then129.peel
	testl	%esi, %esi
	jle	.LBB3_24
# %bb.22:                               # %land.lhs.true132.peel
	movsbl	(%rcx,%r15), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_24
# %bb.23:                               # %if.then142.peel
	movl	%r11d, (%rdi)
	incl	%eax
.LBB3_24:                               # %if.end152.peel
	cmpl	%esi, %r8d
	jle	.LBB3_27
# %bb.25:                               # %land.lhs.true156.peel
	movsbl	(%rcx,%r10), %r11d
	cmpl	$3, %r11d
	jl	.LBB3_27
# %bb.26:                               # %if.then166.peel
	movl	%r11d, 12(%rdi)
	incl	%eax
.LBB3_27:                               # %if.end178.peel
	cmpl	%r14d, %eax
	jae	.LBB3_55
# %bb.28:                               # %do.body
	xorl	%eax, %eax
	testl	%esi, %esi
	jle	.LBB3_29
# %bb.30:                               # %land.lhs.true
	movq	-8(%rsp), %r14                  # 8-byte Reload
	movsbl	(%rcx,%r14), %r11d
	cmpl	$2, %r11d
	jl	.LBB3_32
# %bb.31:                               # %if.then
	movl	%r11d, 16(%rdi)
	movl	$1, %eax
.LBB3_32:                               # %if.end
	cmpl	%esi, %r8d
	jg	.LBB3_33
	jmp	.LBB3_35
.LBB3_29:
	movq	-8(%rsp), %r14                  # 8-byte Reload
	cmpl	%esi, %r8d
	jle	.LBB3_35
.LBB3_33:                               # %land.lhs.true15
	movq	-16(%rsp), %r11                 # 8-byte Reload
	movsbl	(%rcx,%r11), %r11d
	cmpl	$2, %r11d
	jl	.LBB3_35
# %bb.34:                               # %if.then24
	movl	%r11d, 24(%rdi)
	incl	%eax
.LBB3_35:                               # %if.end33
	testl	%edx, %edx
	jle	.LBB3_45
# %bb.36:                               # %if.then36
	movsbl	-1(%rcx,%r12), %r11d
	cmpl	$2, %r11d
	jl	.LBB3_38
# %bb.37:                               # %if.then45
	movl	%r11d, 20(%rdi)
	incl	%eax
.LBB3_38:                               # %if.end54
	testb	%bl, %bl
	jne	.LBB3_45
# %bb.39:                               # %if.then56
	testl	%esi, %esi
	jle	.LBB3_42
# %bb.40:                               # %land.lhs.true59
	movsbl	-1(%rcx,%r14), %r11d
	cmpl	$2, %r11d
	jl	.LBB3_42
# %bb.41:                               # %if.then69
	movl	%r11d, 4(%rdi)
	incl	%eax
.LBB3_42:                               # %if.end79
	cmpl	%esi, %r8d
	jle	.LBB3_45
# %bb.43:                               # %land.lhs.true83
	movq	-16(%rsp), %r11                 # 8-byte Reload
	movsbl	-1(%rcx,%r11), %r11d
	cmpl	$2, %r11d
	jl	.LBB3_45
# %bb.44:                               # %if.then93
	movl	%r11d, 8(%rdi)
	incl	%eax
.LBB3_45:                               # %if.end105
	cmpl	%edx, %r9d
	jle	.LBB3_55
# %bb.46:                               # %if.then109
	movsbl	(%rcx,%r13), %edx
	cmpl	$2, %edx
	jl	.LBB3_48
# %bb.47:                               # %if.then118
	movl	%edx, 28(%rdi)
	incl	%eax
.LBB3_48:                               # %if.end127
	testb	%bl, %bl
	jne	.LBB3_55
# %bb.49:                               # %if.then129
	testl	%esi, %esi
	jle	.LBB3_52
# %bb.50:                               # %land.lhs.true132
	movsbl	(%rcx,%r15), %edx
	cmpl	$2, %edx
	jl	.LBB3_52
# %bb.51:                               # %if.then142
	movl	%edx, (%rdi)
	incl	%eax
.LBB3_52:                               # %if.end152
	cmpl	%esi, %r8d
	jle	.LBB3_55
# %bb.53:                               # %land.lhs.true156
	movsbl	(%rcx,%r10), %ecx
	cmpl	$2, %ecx
	jl	.LBB3_55
# %bb.54:                               # %if.then166
	movl	%ecx, 12(%rdi)
	incl	%eax
.LBB3_55:                               # %do.end
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
.Lfunc_end3:
	.size	ercCollect8PredBlocks, .Lfunc_end3-ercCollect8PredBlocks
	.cfi_endproc
                                        # -- End function
	.globl	ercCollectColumnBlocks          # -- Begin function ercCollectColumnBlocks
	.p2align	4, 0x90
	.type	ercCollectColumnBlocks,@function
ercCollectColumnBlocks:                 # @ercCollectColumnBlocks
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	movl	8(%rsp), %r8d
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdi)
	movups	%xmm0, (%rdi)
	leal	-1(%rsi), %eax
	imull	%r9d, %eax
	addl	%edx, %eax
	movslq	%eax, %r10
	xorl	%eax, %eax
	cmpb	$2, (%rcx,%r10)
	jl	.LBB4_2
# %bb.1:                                # %if.then
	movl	$1, 16(%rdi)
	movl	$1, %eax
.LBB4_2:                                # %if.end
	addl	%esi, %r8d
	imull	%r9d, %r8d
	addl	%edx, %r8d
	movslq	%r8d, %rdx
	cmpb	$2, (%rcx,%rdx)
	jl	.LBB4_4
# %bb.3:                                # %if.then11
	movl	$1, 24(%rdi)
	incl	%eax
.LBB4_4:                                # %if.end14
	retq
.Lfunc_end4:
	.size	ercCollectColumnBlocks, .Lfunc_end4-ercCollectColumnBlocks
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
