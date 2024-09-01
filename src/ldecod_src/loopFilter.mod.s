	.text
	.file	"loopFilter.c"
	.globl	DeblockPicture                  # -- Begin function DeblockPicture
	.p2align	4, 0x90
	.type	DeblockPicture,@function
DeblockPicture:                         # @DeblockPicture
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 108(%rsi)
	je	.LBB0_4
# %bb.1:                                # %for.body.preheader
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	callq	DeblockMb
	incl	%ebp
	cmpl	108(%rbx), %ebp
	jb	.LBB0_2
# %bb.3:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.LBB0_4:                                # %for.end
	retq
.Lfunc_end0:
	.size	DeblockPicture, .Lfunc_end0-DeblockPicture
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function DeblockMb
	.type	DeblockMb,@function
DeblockMb:                              # @DeblockMb
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	848888(%rdi), %rax
	movslq	%edx, %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	leaq	(%rax,%rcx), %r15
	cmpw	$1, 376(%rax,%rcx)
	jne	.LBB1_1
.LBB1_78:                               # %for.end338
	movl	$0, 104(%r15)
	addq	$120, %rsp
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
.LBB1_1:                                # %if.else
	.cfi_def_cfa_offset 176
	movq	%rsi, %rbx
	movaps	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag(%rip), %xmm0
	movaps	%xmm0, 96(%rsp)
	cmpl	$0, (%rsi)
	je	.LBB1_2
.LBB1_4:                                # %lor.end.thread
	movl	$2, 28(%rsp)                    # 4-byte Folded Spill
.LBB1_5:                                # %lor.end.thread544
	movq	128(%rbx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	136(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%r15), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	16(%rdi), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	$1, 104(%r15)
	leaq	849124(%rdi), %rax
	leaq	70(%rsp), %rcx
	leaq	68(%rsp), %r8
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movl	%edx, %r14d
	movl	%edx, %esi
	movq	%rax, %rdx
	callq	get_mb_pos@PLT
	xorl	%eax, %eax
	cmpl	$0, 420(%r15)
	sete	%al
	movl	%eax, 108(%rsp)
	xorl	%ebp, %ebp
	cmpw	$0, 70(%rsp)
	movl	%eax, 100(%rsp)
	setne	%cl
	movzwl	68(%rsp), %edx
	testw	%dx, %dx
	setne	15(%rsp)                        # 1-byte Folded Spill
	movl	100(%rbx), %eax
	testl	%eax, %eax
	setne	%sil
	cmpw	$16, %dx
	sete	%dl
	andb	%sil, %dl
	cmpb	$1, %dl
	jne	.LBB1_7
# %bb.6:                                # %land.lhs.true29
	cmpl	$0, 384(%r15)
	sete	15(%rsp)                        # 1-byte Folded Spill
.LBB1_7:                                # %if.end33
	cmpw	$2, 376(%r15)
	jne	.LBB1_8
# %bb.9:                                # %if.then38
	movl	404(%r15), %ebp
	testl	%eax, %eax
	je	.LBB1_12
# %bb.10:                               # %land.lhs.true41
	testb	$1, %r14b
	je	.LBB1_12
# %bb.11:                               # %land.lhs.true41
	movb	$1, 15(%rsp)                    # 1-byte Folded Spill
	cmpl	$0, 384(%r15)
	jne	.LBB1_12
# %bb.13:                               # %if.end47
	cmpl	$1, %eax
	je	.LBB1_14
.LBB1_15:                               # %if.end52
	testl	%ebp, %ebp
	movq	80(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB1_16
	jmp	.LBB1_23
.LBB1_8:
	movb	%cl, %bpl
	cmpl	$1, %eax
	jne	.LBB1_15
	jmp	.LBB1_14
.LBB1_2:                                # %lor.rhs
	movl	$4, 28(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 100(%rbx)
	je	.LBB1_5
# %bb.3:                                # %lor.end
	cmpl	$0, 384(%r15)
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_12:                               # %cond.false
	cmpl	$0, 408(%r15)
	setne	15(%rsp)                        # 1-byte Folded Spill
	cmpl	$1, %eax
	jne	.LBB1_15
.LBB1_14:                               # %if.then51
	movq	%r15, %rdi
	callq	CheckAvailabilityOfNeighbors@PLT
	testl	%ebp, %ebp
	movq	80(%rsp), %rbp                  # 8-byte Reload
	je	.LBB1_23
.LBB1_16:                               # %if.then115.peel
	leaq	32(%rsp), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%rbx, %r8
	callq	*856760(%rbp)
	movq	32(%rsp), %rax
	orq	40(%rsp), %rax
	je	.LBB1_23
# %bb.17:                               # %if.then125.peel
	leaq	32(%rsp), %rdx
	xorl	%edi, %edi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 64(%rax)
	je	.LBB1_19
# %bb.18:                               # %if.then128.peel
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	(%r14), %rsi
	leaq	32(%rsp), %r12
	movl	$1, %edi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
	movq	8(%r14), %rsi
	movl	$2, %edi
	movq	%r12, %rdx
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
.LBB1_19:                               # %if.end136.peel
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_23
# %bb.20:                               # %if.then144.peel
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB1_23
# %bb.21:                               # %if.then144.peel
	movslq	268(%rbx), %rax
	movzbl	chroma_edge(%rax), %eax
	testb	%al, %al
	js	.LBB1_23
# %bb.22:                               # %if.then156.peel
	movzbl	%al, %r12d
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	(%r14), %rdi
	leaq	32(%rsp), %r13
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	callq	*856792(%rbp)
	movq	8(%r14), %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	%r12d, %ecx
	movl	$1, %r8d
	movq	%rbx, %r9
	callq	*856792(%rbp)
.LBB1_23:                               # %for.body.preheader
	movl	$1, %r14d
	movl	$4, %r12d
	leaq	32(%rsp), %r13
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_43:                               # %for.inc
                                        #   in Loop: Header=BB1_24 Depth=1
	incq	%r14
	addl	$4, %r12d
	cmpq	$4, %r14
	je	.LBB1_44
.LBB1_24:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 284(%r15)
	je	.LBB1_25
.LBB1_35:                               # %if.then115
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%rbx, %r8
	callq	*856760(%rbp)
	movq	32(%rsp), %rax
	orq	40(%rsp), %rax
	je	.LBB1_43
# %bb.36:                               # %if.then121
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpl	$0, 96(%rsp,%r14,4)
	je	.LBB1_39
# %bb.37:                               # %if.then125
                                        #   in Loop: Header=BB1_24 Depth=1
	xorl	%edi, %edi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 64(%rax)
	je	.LBB1_39
# %bb.38:                               # %if.then128
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	(%r13), %rsi
	movl	$1, %edi
	leaq	32(%rsp), %rdx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
	movq	8(%r13), %rsi
	leaq	32(%rsp), %r13
	movl	$2, %edi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movl	%r12d, %r8d
	movq	%rbx, %r9
	callq	*856776(%rbp)
.LBB1_39:                               # %if.end136
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_43
# %bb.40:                               # %if.then144
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB1_43
# %bb.41:                               # %if.then144
                                        #   in Loop: Header=BB1_24 Depth=1
	movslq	268(%rbx), %rax
	movzbl	chroma_edge(%rax,%r14,4), %eax
	testb	%al, %al
	js	.LBB1_43
# %bb.42:                               # %if.then156
                                        #   in Loop: Header=BB1_24 Depth=1
	movzbl	%al, %ebp
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	(%r13), %rdi
	leaq	32(%rsp), %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	xorl	%r8d, %r8d
	movq	%rbx, %r9
	movq	80(%rsp), %rax                  # 8-byte Reload
	callq	*856792(%rax)
	movq	8(%r13), %rdi
	leaq	32(%rsp), %r13
	movq	%r13, %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movl	$1, %r8d
	movq	%rbx, %r9
	callq	*856792(%rbp)
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_25:                               # %if.then57
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpl	$0, 96(%rsp,%r14,4)
	jne	.LBB1_27
# %bb.26:                               # %land.lhs.true62
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpl	$3, 36(%rax)
	jne	.LBB1_43
.LBB1_27:                               # %if.then69
                                        #   in Loop: Header=BB1_24 Depth=1
	movzwl	152(%r15), %eax
	testw	%ax, %ax
	je	.LBB1_28
# %bb.32:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpw	$3, %ax
	jb	.LBB1_43
# %bb.33:                               # %if.else87
                                        #   in Loop: Header=BB1_24 Depth=1
	testb	$1, %r14b
	je	.LBB1_35
# %bb.34:                               # %if.else87
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpw	$3, %ax
	je	.LBB1_43
	jmp	.LBB1_35
.LBB1_28:                               # %land.lhs.true74
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	164(%rax), %eax
	testl	%eax, %eax
	je	.LBB1_43
# %bb.29:                               # %if.else87.thread
                                        #   in Loop: Header=BB1_24 Depth=1
	testb	$1, %r14b
	je	.LBB1_35
# %bb.30:                               # %if.else87.thread
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpl	$1, %eax
	jne	.LBB1_35
# %bb.31:                               # %land.lhs.true104
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 3144(%rax)
	jne	.LBB1_43
	jmp	.LBB1_35
.LBB1_44:                               # %for.cond164.preheader
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB1_45
.LBB1_76:                               # %if.end332
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	$1, 104(%r15)
	.p2align	4, 0x90
.LBB1_77:                               # %for.inc336
                                        #   in Loop: Header=BB1_45 Depth=1
	incq	%r12
	addl	$4, %r13d
	cmpq	$4, %r12
	je	.LBB1_78
.LBB1_45:                               # %for.body167
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 284(%r15)
	je	.LBB1_46
.LBB1_58:                               # %if.end229
                                        #   in Loop: Header=BB1_45 Depth=1
	testq	%r12, %r12
	setne	%r14b
	movl	%r14d, %eax
	orb	15(%rsp), %al                   # 1-byte Folded Reload
	cmpb	$1, %al
	jne	.LBB1_77
.LBB1_59:                               # %if.then233
                                        #   in Loop: Header=BB1_45 Depth=1
	leaq	32(%rsp), %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%rbx, %r8
	callq	*856768(%rbp)
	movq	32(%rsp), %rax
	orq	40(%rsp), %rax
	je	.LBB1_67
# %bb.60:                               # %if.then240
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpl	$0, 96(%rsp,%r12,4)
	je	.LBB1_63
# %bb.61:                               # %if.then244
                                        #   in Loop: Header=BB1_45 Depth=1
	xorl	%edi, %edi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	leaq	32(%rsp), %rdx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	movq	%rbx, %r9
	callq	*856784(%rbp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 64(%rax)
	je	.LBB1_63
# %bb.62:                               # %if.then248
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %rsi
	movl	$1, %edi
	leaq	32(%rsp), %rdx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
	callq	*856784(%rbp)
	movq	8(%rbx), %rsi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movl	$2, %edi
	leaq	32(%rsp), %rdx
	movq	%r15, %rcx
	movl	%r13d, %r8d
	movq	%rbx, %r9
	callq	*856784(%rbp)
.LBB1_63:                               # %if.end256
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_67
# %bb.64:                               # %if.then264
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB1_67
# %bb.65:                               # %if.then264
                                        #   in Loop: Header=BB1_45 Depth=1
	movslq	268(%rbx), %rax
	movzbl	chroma_edge+16(%rax,%r12,4), %eax
	testb	%al, %al
	js	.LBB1_67
# %bb.66:                               # %if.then276
                                        #   in Loop: Header=BB1_45 Depth=1
	movzbl	%al, %ebp
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %rdi
	leaq	32(%rsp), %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	xorl	%r8d, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	callq	*856800(%rax)
	movq	8(%rbx), %rdi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	leaq	32(%rsp), %rsi
	movq	%r15, %rdx
	movl	%ebp, %ecx
	movq	80(%rsp), %rbp                  # 8-byte Reload
	movl	$1, %r8d
	movq	%rbx, %r9
	callq	*856800(%rbp)
	.p2align	4, 0x90
.LBB1_67:                               # %if.end282
                                        #   in Loop: Header=BB1_45 Depth=1
	testb	%r14b, %r14b
	jne	.LBB1_77
# %bb.68:                               # %land.lhs.true284
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpl	$0, 384(%r15)
	jne	.LBB1_77
# %bb.69:                               # %land.lhs.true287
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpb	$0, 472(%r15)
	je	.LBB1_77
# %bb.70:                               # %if.then296
                                        #   in Loop: Header=BB1_45 Depth=1
	movl	$2, 104(%r15)
	leaq	32(%rsp), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$16, %edx
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movq	%rbx, %r8
	callq	*856768(%rbp)
	xorl	%edi, %edi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	$16, %r8d
	movq	%rbx, %r9
	callq	*856784(%rbp)
	movq	72(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 64(%rax)
	je	.LBB1_72
# %bb.71:                               # %if.then300
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %rsi
	movl	$1, %edi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	$16, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
	callq	*856784(%rbp)
	movq	8(%rbx), %rsi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movl	$2, %edi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movl	$16, %r8d
	movq	%rbx, %r9
	callq	*856784(%rbp)
.LBB1_72:                               # %if.end306
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.LBB1_76
# %bb.73:                               # %if.then314
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpq	$0, 16(%rsp)                    # 8-byte Folded Reload
	je	.LBB1_76
# %bb.74:                               # %if.then314
                                        #   in Loop: Header=BB1_45 Depth=1
	movslq	268(%rbx), %rax
	cmpb	$0, chroma_edge+16(%rax)
	js	.LBB1_76
# %bb.75:                               # %if.then326
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	$16, %ecx
	xorl	%r8d, %r8d
	movq	48(%rsp), %r9                   # 8-byte Reload
	callq	*856800(%rbp)
	movq	8(%rbx), %rdi
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	$16, %ecx
	movl	$1, %r8d
	movq	%rbx, %r9
	callq	*856800(%rbp)
	jmp	.LBB1_76
	.p2align	4, 0x90
.LBB1_46:                               # %if.then171
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpl	$0, 96(%rsp,%r12,4)
	jne	.LBB1_48
# %bb.47:                               # %land.lhs.true176
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpl	$1, 36(%rax)
	je	.LBB1_77
.LBB1_48:                               # %if.else181
                                        #   in Loop: Header=BB1_45 Depth=1
	testq	%r12, %r12
	je	.LBB1_58
# %bb.49:                               # %if.then184
                                        #   in Loop: Header=BB1_45 Depth=1
	movzwl	152(%r15), %eax
	cmpl	$3, %eax
	je	.LBB1_77
# %bb.50:                               # %if.then184
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpl	$1, %eax
	je	.LBB1_77
# %bb.51:                               # %if.then184
                                        #   in Loop: Header=BB1_45 Depth=1
	testl	%eax, %eax
	jne	.LBB1_56
# %bb.52:                               # %land.lhs.true189
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movl	164(%rax), %eax
	testl	%eax, %eax
	je	.LBB1_77
# %bb.53:                               # %if.else204.thread
                                        #   in Loop: Header=BB1_45 Depth=1
	movb	$1, %r14b
	testb	$1, %r12b
	je	.LBB1_59
# %bb.54:                               # %if.else204.thread
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpl	$1, %eax
	jne	.LBB1_59
# %bb.55:                               # %land.lhs.true221
                                        #   in Loop: Header=BB1_45 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 3144(%rax)
	jne	.LBB1_77
	jmp	.LBB1_59
.LBB1_56:                               # %if.else204
                                        #   in Loop: Header=BB1_45 Depth=1
	movb	$1, %r14b
	testb	$1, %r12b
	je	.LBB1_59
# %bb.57:                               # %if.else204
                                        #   in Loop: Header=BB1_45 Depth=1
	cmpw	$2, %ax
	je	.LBB1_77
	jmp	.LBB1_59
.Lfunc_end1:
	.size	DeblockMb, .Lfunc_end1-DeblockMb
	.cfi_endproc
                                        # -- End function
	.globl	DeblockPicturePartially         # -- Begin function DeblockPicturePartially
	.p2align	4, 0x90
	.type	DeblockPicturePartially,@function
DeblockPicturePartially:                # @DeblockPicturePartially
	.cfi_startproc
# %bb.0:                                # %entry
	movl	108(%rsi), %eax
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	cmpl	%edx, %eax
	jle	.LBB2_4
# %bb.1:                                # %for.body.preheader
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
	movl	%ecx, %ebx
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	.p2align	4, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	DeblockMb
	incl	%ebp
	movl	108(%r14), %eax
	cmpl	%eax, %ebx
	cmovll	%ebx, %eax
	cmpl	%eax, %ebp
	jl	.LBB2_2
# %bb.3:
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
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB2_4:                                # %for.end
	retq
.Lfunc_end2:
	.size	DeblockPicturePartially, .Lfunc_end2-DeblockPicturePartially
	.cfi_endproc
                                        # -- End function
	.globl	init_Deblock                    # -- Begin function init_Deblock
	.p2align	4, 0x90
	.type	init_Deblock,@function
init_Deblock:                           # @init_Deblock
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$3, 849088(%rdi)
	jne	.LBB3_54
# %bb.1:                                # %land.lhs.true
	cmpl	$0, 849280(%rbx)
	je	.LBB3_54
# %bb.2:                                # %if.then
	movl	%esi, %ebp
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	p_Dec@GOTPCREL(%rip), %r14
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movslq	848996(%rax), %rcx
	movl	849008(%rax), %edx
	movslq	849012(%rax), %rsi
	movq	848888(%rax), %rdi
	movq	$0, 136(%rdi)
	movq	848888(%rax), %rdi
	movq	$0, 144(%rdi)
	cmpq	$2, %rcx
	jl	.LBB3_8
# %bb.3:                                # %for.body.preheader.i
	leaq	-1(%rcx), %rdi
	movl	$1, %r8d
	cmpl	$2, %ecx
	je	.LBB3_6
# %bb.4:                                # %for.body.preheader.i.new
	movq	%rdi, %r9
	andq	$-2, %r9
	negq	%r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	movq	$0, 616(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r15
	movq	%r15, 624(%r11,%r10)
	movq	848888(%rax), %r11
	movq	$0, 1096(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r15
	addq	$480, %r15                      # imm = 0x1E0
	movq	%r15, 1104(%r11,%r10)
	addq	$960, %r10                      # imm = 0x3C0
	leaq	(%r9,%r8), %r11
	addq	$2, %r11
	addq	$2, %r8
	cmpq	$1, %r11
	jne	.LBB3_5
.LBB3_6:                                # %for.cond13.preheader.i.loopexit.unr-lcssa
	testb	$1, %dil
	je	.LBB3_8
# %bb.7:                                # %for.body.i.epil
	movq	848888(%rax), %rdi
	imulq	$480, %r8, %r8                  # imm = 0x1E0
	movq	$0, 136(%rdi,%r8)
	movq	848888(%rax), %rdi
	leaq	(%rdi,%r8), %r9
	addq	$-480, %r9                      # imm = 0xFE20
	movq	%r9, 144(%rdi,%r8)
.LBB3_8:                                # %for.cond13.preheader.i
	cmpl	%esi, %ecx
	jge	.LBB3_11
# %bb.9:                                # %for.body15.preheader.i
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	leaq	144(%rdi), %r8
	xorl	%r9d, %r9d
	movq	%rcx, %r10
	.p2align	4, 0x90
.LBB3_10:                               # %for.body15.i
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	leaq	(%r11,%r9), %r15
	movq	%r15, -8(%r11,%r8)
	movq	848888(%rax), %r11
	movq	$0, (%r11,%r8)
	addq	%rcx, %r10
	addq	%rdi, %r8
	addq	%rdi, %r9
	cmpq	%rsi, %r10
	jl	.LBB3_10
.LBB3_11:                               # %for.cond30.preheader.i
	cmpl	$2, %ecx
	setl	%sil
	cmpl	$2, %edx
	setl	%dil
	orb	%sil, %dil
	je	.LBB3_12
.LBB3_19:                               # %init_neighbors.exit
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movslq	848996(%rax), %rcx
	movl	849008(%rax), %edx
	movslq	849012(%rax), %rsi
	movq	848888(%rax), %rdi
	movq	$0, 136(%rdi)
	movq	848888(%rax), %rdi
	movq	$0, 144(%rdi)
	cmpq	$2, %rcx
	jl	.LBB3_25
# %bb.20:                               # %for.body.preheader.i23
	leaq	-1(%rcx), %rdi
	movl	$1, %r8d
	cmpl	$2, %ecx
	je	.LBB3_23
# %bb.21:                               # %for.body.preheader.i23.new
	movq	%rdi, %r9
	andq	$-2, %r9
	negq	%r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_22:                               # %for.body.i25
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	movq	$0, 616(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r15
	movq	%r15, 624(%r11,%r10)
	movq	848888(%rax), %r11
	movq	$0, 1096(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r15
	addq	$480, %r15                      # imm = 0x1E0
	movq	%r15, 1104(%r11,%r10)
	addq	$960, %r10                      # imm = 0x3C0
	leaq	(%r9,%r8), %r11
	addq	$2, %r11
	addq	$2, %r8
	cmpq	$1, %r11
	jne	.LBB3_22
.LBB3_23:                               # %for.cond13.preheader.i32.loopexit.unr-lcssa
	testb	$1, %dil
	je	.LBB3_25
# %bb.24:                               # %for.body.i25.epil
	movq	848888(%rax), %rdi
	imulq	$480, %r8, %r8                  # imm = 0x1E0
	movq	$0, 136(%rdi,%r8)
	movq	848888(%rax), %rdi
	leaq	(%rdi,%r8), %r9
	addq	$-480, %r9                      # imm = 0xFE20
	movq	%r9, 144(%rdi,%r8)
.LBB3_25:                               # %for.cond13.preheader.i32
	cmpl	%esi, %ecx
	jge	.LBB3_28
# %bb.26:                               # %for.body15.preheader.i53
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	leaq	144(%rdi), %r8
	xorl	%r9d, %r9d
	movq	%rcx, %r10
	.p2align	4, 0x90
.LBB3_27:                               # %for.body15.i54
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	leaq	(%r11,%r9), %r15
	movq	%r15, -8(%r11,%r8)
	movq	848888(%rax), %r11
	movq	$0, (%r11,%r8)
	addq	%rcx, %r10
	addq	%rdi, %r8
	addq	%rdi, %r9
	cmpq	%rsi, %r10
	jl	.LBB3_27
.LBB3_28:                               # %for.cond30.preheader.i34
	cmpl	$2, %ecx
	setl	%sil
	cmpl	$2, %edx
	setl	%dil
	orb	%sil, %dil
	je	.LBB3_29
.LBB3_36:                               # %init_neighbors.exit61
	movq	%rbx, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movq	(%r14), %rax
	movq	8(%rax), %rax
	movslq	848996(%rax), %rcx
	movl	849008(%rax), %edx
	movslq	849012(%rax), %rsi
	movq	848888(%rax), %rdi
	movq	$0, 136(%rdi)
	movq	848888(%rax), %rdi
	movq	$0, 144(%rdi)
	cmpq	$2, %rcx
	jl	.LBB3_42
# %bb.37:                               # %for.body.preheader.i69
	leaq	-1(%rcx), %rdi
	movl	$1, %r8d
	cmpl	$2, %ecx
	je	.LBB3_40
# %bb.38:                               # %for.body.preheader.i69.new
	movq	%rdi, %r9
	andq	$-2, %r9
	negq	%r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_39:                               # %for.body.i71
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	movq	$0, 616(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r14
	movq	%r14, 624(%r11,%r10)
	movq	848888(%rax), %r11
	movq	$0, 1096(%r11,%r10)
	movq	848888(%rax), %r11
	leaq	(%r11,%r10), %r14
	addq	$480, %r14                      # imm = 0x1E0
	movq	%r14, 1104(%r11,%r10)
	addq	$960, %r10                      # imm = 0x3C0
	leaq	(%r9,%r8), %r11
	addq	$2, %r11
	addq	$2, %r8
	cmpq	$1, %r11
	jne	.LBB3_39
.LBB3_40:                               # %for.cond13.preheader.i78.loopexit.unr-lcssa
	testb	$1, %dil
	je	.LBB3_42
# %bb.41:                               # %for.body.i71.epil
	movq	848888(%rax), %rdi
	imulq	$480, %r8, %r8                  # imm = 0x1E0
	movq	$0, 136(%rdi,%r8)
	movq	848888(%rax), %rdi
	leaq	(%rdi,%r8), %r9
	addq	$-480, %r9                      # imm = 0xFE20
	movq	%r9, 144(%rdi,%r8)
.LBB3_42:                               # %for.cond13.preheader.i78
	cmpl	%esi, %ecx
	jge	.LBB3_45
# %bb.43:                               # %for.body15.preheader.i99
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	leaq	144(%rdi), %r8
	xorl	%r9d, %r9d
	movq	%rcx, %r10
	.p2align	4, 0x90
.LBB3_44:                               # %for.body15.i100
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r11
	leaq	(%r11,%r9), %r14
	movq	%r14, -8(%r11,%r8)
	movq	848888(%rax), %r11
	movq	$0, (%r11,%r8)
	addq	%rcx, %r10
	addq	%rdi, %r8
	addq	%rdi, %r9
	cmpq	%rsi, %r10
	jl	.LBB3_44
.LBB3_45:                               # %for.cond30.preheader.i80
	cmpl	$2, %ecx
	setl	%sil
	cmpl	$2, %edx
	setl	%dil
	orb	%sil, %dil
	je	.LBB3_46
.LBB3_53:                               # %init_neighbors.exit107
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	change_plane_JV@PLT
	movl	%ebp, %esi
	jmp	.LBB3_71
.LBB3_54:                               # %if.else
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movslq	848996(%rax), %rcx
	movl	849008(%rax), %edx
	movslq	849012(%rax), %rdi
	movq	848888(%rax), %r8
	movq	$0, 136(%r8)
	movq	848888(%rax), %r8
	movq	$0, 144(%r8)
	cmpq	$2, %rcx
	jl	.LBB3_60
# %bb.55:                               # %for.body.preheader.i115
	leaq	-1(%rcx), %r8
	movl	$1, %r9d
	cmpl	$2, %ecx
	je	.LBB3_58
# %bb.56:                               # %for.body.preheader.i115.new
	movq	%r8, %r10
	andq	$-2, %r10
	negq	%r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_57:                               # %for.body.i117
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r14
	movq	$0, 616(%r14,%r11)
	movq	848888(%rax), %r14
	leaq	(%r14,%r11), %r15
	movq	%r15, 624(%r14,%r11)
	movq	848888(%rax), %r14
	movq	$0, 1096(%r14,%r11)
	movq	848888(%rax), %r14
	leaq	(%r14,%r11), %r15
	addq	$480, %r15                      # imm = 0x1E0
	movq	%r15, 1104(%r14,%r11)
	addq	$960, %r11                      # imm = 0x3C0
	leaq	(%r10,%r9), %r14
	addq	$2, %r14
	addq	$2, %r9
	cmpq	$1, %r14
	jne	.LBB3_57
.LBB3_58:                               # %for.cond13.preheader.i124.loopexit.unr-lcssa
	testb	$1, %r8b
	je	.LBB3_60
# %bb.59:                               # %for.body.i117.epil
	movq	848888(%rax), %r8
	imulq	$480, %r9, %r9                  # imm = 0x1E0
	movq	$0, 136(%r8,%r9)
	movq	848888(%rax), %r8
	leaq	(%r8,%r9), %r10
	addq	$-480, %r10                     # imm = 0xFE20
	movq	%r10, 144(%r8,%r9)
.LBB3_60:                               # %for.cond13.preheader.i124
	cmpl	%edi, %ecx
	jge	.LBB3_63
# %bb.61:                               # %for.body15.preheader.i145
	imulq	$480, %rcx, %r8                 # imm = 0x1E0
	leaq	144(%r8), %r9
	xorl	%r10d, %r10d
	movq	%rcx, %r11
	.p2align	4, 0x90
.LBB3_62:                               # %for.body15.i146
                                        # =>This Inner Loop Header: Depth=1
	movq	848888(%rax), %r14
	leaq	(%r14,%r10), %r15
	movq	%r15, -8(%r14,%r9)
	movq	848888(%rax), %r14
	movq	$0, (%r14,%r9)
	addq	%rcx, %r11
	addq	%r8, %r9
	addq	%r8, %r10
	cmpq	%rdi, %r11
	jl	.LBB3_62
.LBB3_63:                               # %for.cond30.preheader.i126
	cmpl	$2, %ecx
	setl	%dil
	cmpl	$2, %edx
	setl	%r8b
	orb	%dil, %r8b
	je	.LBB3_64
.LBB3_71:                               # %if.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	cmpl	$1, %esi
	jne	.LBB3_73
# %bb.72:                               # %if.then6
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
	jmp	set_loop_filter_functions_mbaff@PLT # TAILCALL
.LBB3_73:                               # %if.else7
	.cfi_def_cfa_offset 64
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
	jmp	set_loop_filter_functions_normal@PLT # TAILCALL
.LBB3_64:                               # %for.cond33.preheader.us.preheader.i129
	.cfi_def_cfa_offset 64
	leaq	-1(%rcx), %rdi
	imulq	$480, %rcx, %r8                 # imm = 0x1E0
	movq	%rdi, %r9
	andq	$-2, %r9
	negq	%r9
	movl	$1, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB3_65
	.p2align	4, 0x90
.LBB3_70:                               # %for.cond33.for.inc56_crit_edge.us.i142
                                        #   in Loop: Header=BB3_65 Depth=1
	incq	%r10
	addq	%r8, %r11
	cmpq	%rdx, %r10
	je	.LBB3_71
.LBB3_65:                               # %for.cond33.preheader.us.i132
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_67 Depth 2
	movl	$1, %r14d
	cmpl	$2, %ecx
	je	.LBB3_68
# %bb.66:                               # %for.body35.us.i134.preheader
                                        #   in Loop: Header=BB3_65 Depth=1
	movq	%r11, %r15
	.p2align	4, 0x90
.LBB3_67:                               # %for.body35.us.i134
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$480, %r13                      # imm = 0x1E0
	addq	%r15, %r12
	movq	%r13, 616(%r8,%r12)
	movq	848888(%rax), %r12
	addq	%r8, %r12
	leaq	(%r12,%r15), %r13
	movq	%r13, 624(%r15,%r12)
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$960, %r13                      # imm = 0x3C0
	addq	%r15, %r12
	movq	%r13, 1096(%r8,%r12)
	movq	848888(%rax), %r12
	addq	%r8, %r12
	leaq	(%r15,%r12), %r13
	addq	$480, %r13                      # imm = 0x1E0
	movq	%r13, 1104(%r15,%r12)
	addq	$960, %r15                      # imm = 0x3C0
	leaq	(%r9,%r14), %r12
	addq	$2, %r12
	addq	$2, %r14
	cmpq	$1, %r12
	jne	.LBB3_67
.LBB3_68:                               # %for.cond33.for.inc56_crit_edge.us.i142.unr-lcssa
                                        #   in Loop: Header=BB3_65 Depth=1
	testb	$1, %dil
	je	.LBB3_70
# %bb.69:                               # %for.body35.us.i134.epil
                                        #   in Loop: Header=BB3_65 Depth=1
	movq	%r10, %r15
	imulq	%rcx, %r15
	addq	%r15, %r14
	movq	848888(%rax), %r15
	imulq	$480, %r14, %r12                # imm = 0x1E0
	subq	%rcx, %r14
	imulq	$480, %r14, %r14                # imm = 0x1E0
	addq	%r15, %r14
	movq	%r14, 136(%r15,%r12)
	movq	848888(%rax), %r14
	leaq	(%r14,%r12), %r15
	addq	$-480, %r15                     # imm = 0xFE20
	movq	%r15, 144(%r14,%r12)
	jmp	.LBB3_70
.LBB3_12:                               # %for.cond33.preheader.us.preheader.i
	leaq	-1(%rcx), %rsi
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	movq	%rsi, %r8
	andq	$-2, %r8
	negq	%r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_18:                               # %for.cond33.for.inc56_crit_edge.us.i
                                        #   in Loop: Header=BB3_13 Depth=1
	incq	%r9
	addq	%rdi, %r10
	cmpq	%rdx, %r9
	je	.LBB3_19
.LBB3_13:                               # %for.cond33.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_15 Depth 2
	movl	$1, %r11d
	cmpl	$2, %ecx
	je	.LBB3_16
# %bb.14:                               # %for.body35.us.i.preheader
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	%r10, %r15
	.p2align	4, 0x90
.LBB3_15:                               # %for.body35.us.i
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$480, %r13                      # imm = 0x1E0
	addq	%r15, %r12
	movq	%r13, 616(%rdi,%r12)
	movq	848888(%rax), %r12
	addq	%rdi, %r12
	leaq	(%r12,%r15), %r13
	movq	%r13, 624(%r15,%r12)
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$960, %r13                      # imm = 0x3C0
	addq	%r15, %r12
	movq	%r13, 1096(%rdi,%r12)
	movq	848888(%rax), %r12
	addq	%rdi, %r12
	leaq	(%r15,%r12), %r13
	addq	$480, %r13                      # imm = 0x1E0
	movq	%r13, 1104(%r15,%r12)
	addq	$960, %r15                      # imm = 0x3C0
	leaq	(%r8,%r11), %r12
	addq	$2, %r12
	addq	$2, %r11
	cmpq	$1, %r12
	jne	.LBB3_15
.LBB3_16:                               # %for.cond33.for.inc56_crit_edge.us.i.unr-lcssa
                                        #   in Loop: Header=BB3_13 Depth=1
	testb	$1, %sil
	je	.LBB3_18
# %bb.17:                               # %for.body35.us.i.epil
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	%r9, %r15
	imulq	%rcx, %r15
	addq	%r15, %r11
	movq	848888(%rax), %r15
	imulq	$480, %r11, %r12                # imm = 0x1E0
	subq	%rcx, %r11
	imulq	$480, %r11, %r11                # imm = 0x1E0
	addq	%r15, %r11
	movq	%r11, 136(%r15,%r12)
	movq	848888(%rax), %r11
	leaq	(%r11,%r12), %r15
	addq	$-480, %r15                     # imm = 0xFE20
	movq	%r15, 144(%r11,%r12)
	jmp	.LBB3_18
.LBB3_29:                               # %for.cond33.preheader.us.preheader.i37
	leaq	-1(%rcx), %rsi
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	movq	%rsi, %r8
	andq	$-2, %r8
	negq	%r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB3_30
	.p2align	4, 0x90
.LBB3_35:                               # %for.cond33.for.inc56_crit_edge.us.i50
                                        #   in Loop: Header=BB3_30 Depth=1
	incq	%r9
	addq	%rdi, %r10
	cmpq	%rdx, %r9
	je	.LBB3_36
.LBB3_30:                               # %for.cond33.preheader.us.i40
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_32 Depth 2
	movl	$1, %r11d
	cmpl	$2, %ecx
	je	.LBB3_33
# %bb.31:                               # %for.body35.us.i42.preheader
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	%r10, %r15
	.p2align	4, 0x90
.LBB3_32:                               # %for.body35.us.i42
                                        #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$480, %r13                      # imm = 0x1E0
	addq	%r15, %r12
	movq	%r13, 616(%rdi,%r12)
	movq	848888(%rax), %r12
	addq	%rdi, %r12
	leaq	(%r12,%r15), %r13
	movq	%r13, 624(%r15,%r12)
	movq	848888(%rax), %r12
	leaq	(%r12,%r15), %r13
	addq	$960, %r13                      # imm = 0x3C0
	addq	%r15, %r12
	movq	%r13, 1096(%rdi,%r12)
	movq	848888(%rax), %r12
	addq	%rdi, %r12
	leaq	(%r15,%r12), %r13
	addq	$480, %r13                      # imm = 0x1E0
	movq	%r13, 1104(%r15,%r12)
	addq	$960, %r15                      # imm = 0x3C0
	leaq	(%r8,%r11), %r12
	addq	$2, %r12
	addq	$2, %r11
	cmpq	$1, %r12
	jne	.LBB3_32
.LBB3_33:                               # %for.cond33.for.inc56_crit_edge.us.i50.unr-lcssa
                                        #   in Loop: Header=BB3_30 Depth=1
	testb	$1, %sil
	je	.LBB3_35
# %bb.34:                               # %for.body35.us.i42.epil
                                        #   in Loop: Header=BB3_30 Depth=1
	movq	%r9, %r15
	imulq	%rcx, %r15
	addq	%r15, %r11
	movq	848888(%rax), %r15
	imulq	$480, %r11, %r12                # imm = 0x1E0
	subq	%rcx, %r11
	imulq	$480, %r11, %r11                # imm = 0x1E0
	addq	%r15, %r11
	movq	%r11, 136(%r15,%r12)
	movq	848888(%rax), %r11
	leaq	(%r11,%r12), %r15
	addq	$-480, %r15                     # imm = 0xFE20
	movq	%r15, 144(%r11,%r12)
	jmp	.LBB3_35
.LBB3_46:                               # %for.cond33.preheader.us.preheader.i83
	leaq	-1(%rcx), %rsi
	imulq	$480, %rcx, %rdi                # imm = 0x1E0
	movq	%rsi, %r8
	andq	$-2, %r8
	negq	%r8
	movl	$1, %r9d
	xorl	%r10d, %r10d
	jmp	.LBB3_47
	.p2align	4, 0x90
.LBB3_52:                               # %for.cond33.for.inc56_crit_edge.us.i96
                                        #   in Loop: Header=BB3_47 Depth=1
	incq	%r9
	addq	%rdi, %r10
	cmpq	%rdx, %r9
	je	.LBB3_53
.LBB3_47:                               # %for.cond33.preheader.us.i86
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_49 Depth 2
	movl	$1, %r11d
	cmpl	$2, %ecx
	je	.LBB3_50
# %bb.48:                               # %for.body35.us.i88.preheader
                                        #   in Loop: Header=BB3_47 Depth=1
	movq	%r10, %r14
	.p2align	4, 0x90
.LBB3_49:                               # %for.body35.us.i88
                                        #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	848888(%rax), %r15
	leaq	(%r15,%r14), %r12
	addq	$480, %r12                      # imm = 0x1E0
	addq	%r14, %r15
	movq	%r12, 616(%rdi,%r15)
	movq	848888(%rax), %r15
	addq	%rdi, %r15
	leaq	(%r15,%r14), %r12
	movq	%r12, 624(%r14,%r15)
	movq	848888(%rax), %r15
	leaq	(%r15,%r14), %r12
	addq	$960, %r12                      # imm = 0x3C0
	addq	%r14, %r15
	movq	%r12, 1096(%rdi,%r15)
	movq	848888(%rax), %r15
	addq	%rdi, %r15
	leaq	(%r14,%r15), %r12
	addq	$480, %r12                      # imm = 0x1E0
	movq	%r12, 1104(%r14,%r15)
	addq	$960, %r14                      # imm = 0x3C0
	leaq	(%r8,%r11), %r15
	addq	$2, %r15
	addq	$2, %r11
	cmpq	$1, %r15
	jne	.LBB3_49
.LBB3_50:                               # %for.cond33.for.inc56_crit_edge.us.i96.unr-lcssa
                                        #   in Loop: Header=BB3_47 Depth=1
	testb	$1, %sil
	je	.LBB3_52
# %bb.51:                               # %for.body35.us.i88.epil
                                        #   in Loop: Header=BB3_47 Depth=1
	movq	%r9, %r14
	imulq	%rcx, %r14
	addq	%r14, %r11
	movq	848888(%rax), %r14
	imulq	$480, %r11, %r15                # imm = 0x1E0
	subq	%rcx, %r11
	imulq	$480, %r11, %r11                # imm = 0x1E0
	addq	%r14, %r11
	movq	%r11, 136(%r14,%r15)
	movq	848888(%rax), %r11
	leaq	(%r11,%r15), %r14
	addq	$-480, %r14                     # imm = 0xFE20
	movq	%r14, 144(%r11,%r15)
	jmp	.LBB3_52
.Lfunc_end3:
	.size	init_Deblock, .Lfunc_end3-init_Deblock
	.cfi_endproc
                                        # -- End function
	.type	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag,@object # @__const.DeblockMb.filterNon8x8LumaEdgesFlag
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.L__const.DeblockMb.filterNon8x8LumaEdgesFlag:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	.L__const.DeblockMb.filterNon8x8LumaEdgesFlag, 16

	.type	chroma_edge,@object             # @chroma_edge
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
chroma_edge:
	.asciz	"\374\000\000"
	.ascii	"\374\374\374\004"
	.ascii	"\374\004\004\b"
	.ascii	"\374\374\374\f"
	.asciz	"\374\000\000"
	.ascii	"\374\374\004\004"
	.ascii	"\374\004\b\b"
	.ascii	"\374\374\f\f"
	.size	chroma_edge, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
