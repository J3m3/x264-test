	.text
	.file	"frame.c"
	.globl	x264_frame_new                  # -- Begin function x264_frame_new
	.p2align	4, 0x90
	.type	x264_frame_new,@function
x264_frame_new:                         # @x264_frame_new
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
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movslq	16368(%rdi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	(%rdi), %ebp
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movl	136(%rdi), %r15d
	movl	$32, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	$15632, %edi                    # imm = 0x3D10
	callq	x264_malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_9
# %bb.1:                                # %do.end
	movl	%ebp, %r12d
	andl	$1, %r12d
	shll	$4, %r12d
	addl	$16, %r12d
	testb	$2, %bpl
	movl	$64, %r14d
	cmovnel	%r14d, %r12d
	movl	$15632, %edx                    # imm = 0x3D10
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	20(%rcx), %eax
	movl	24(%rcx), %edx
	addl	$15, %eax
	andl	$-16, %eax
	leal	(%r12,%rax), %esi
	addl	$63, %esi
	movl	%r12d, %r8d
	negl	%r8d
	movzbl	136(%rcx), %ecx
	movl	$16, %edi
	shll	%cl, %edi
	andl	%r8d, %esi
	leal	(%rdx,%rdi), %ecx
	decl	%ecx
	negl	%edi
	andl	%ecx, %edi
	movl	$3, 100(%rbx)
	leal	(%rsi,%r12), %ecx
	decl	%ecx
	andl	%r8d, %ecx
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movl	%ecx, 104(%rbx)
	movl	%eax, 116(%rbx)
	movl	%edi, 128(%rbx)
	sarl	%esi
	leal	(%rsi,%r12), %edx
	decl	%edx
	movl	%r8d, 40(%rsp)                  # 4-byte Spill
	andl	%r8d, %edx
	movl	%edx, 108(%rbx)
	sarl	%eax
	movl	%eax, 120(%rbx)
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movl	%edi, %ebp
	sarl	%ebp
	movl	%ebp, 132(%rbx)
	movl	%edx, 112(%rbx)
	movl	%r15d, %ecx
	shll	%cl, %r14d
	movl	%eax, 124(%rbx)
	movl	%ebp, 136(%rbx)
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	addl	%r14d, %ebp
	imull	%edx, %ebp
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 256(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.2:                                # %do.end86
	movl	108(%rbx), %ecx
	imull	12(%rsp), %ecx                  # 4-byte Folded Reload
	addl	$32, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, 160(%rbx)
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 264(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.3:                                # %do.end86.1
	movl	112(%rbx), %ecx
	imull	12(%rsp), %ecx                  # 4-byte Folded Reload
	addl	$32, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, 168(%rbx)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	100(%rsi), %eax
	cmpl	$-2, %eax
	jle	.LBB0_12
# %bb.4:                                # %for.cond107.preheader.preheader
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r15d
	sarl	$2, %r15d
	leaq	9536(%rbx), %rbp
	xorl	%r14d, %r14d
.LBB0_5:                                # %for.cond107.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	cmpl	$-1, %eax
	jl	.LBB0_10
# %bb.6:                                # %do.body114.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	movq	$-1, %r13
	.p2align	4, 0x90
.LBB0_8:                                # %do.body114
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 8(%rbp,%r13,8)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.7:                                # %for.cond107
                                        #   in Loop: Header=BB0_8 Depth=2
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	100(%rsi), %eax
	movslq	%eax, %rcx
	incq	%r13
	cmpq	%rcx, %r13
	jle	.LBB0_8
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_10:                               # %for.cond107.preheader.for.inc138_crit_edge
                                        #   in Loop: Header=BB0_5 Depth=1
	movslq	%eax, %rcx
.LBB0_11:                               # %for.inc138
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	1(%r14), %rdx
	addq	$144, %rbp
	cmpq	%rcx, %r14
	movq	%rdx, %r14
	jle	.LBB0_5
.LBB0_12:                               # %for.end142
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rax), %r15d
	imull	44(%rsp), %r15d                 # 4-byte Folded Reload
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	movq	$-1, 16(%rbx)
	movl	$-1, 56(%rbx)
	movl	$-1, 15592(%rbx)
	movl	28(%rsp), %eax                  # 4-byte Reload
	movb	%al, 84(%rbx)
	movl	$0, 76(%rbx)
	movq	$-1, 64(%rbx)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 32(%rbx)
	movq	$-1, 15584(%rbx)
	movq	%rbx, 3528(%rbx)
	testl	%eax, %eax
	je	.LBB0_16
# %bb.13:                               # %for.end142
	cmpl	$0, 428(%rsi)
	je	.LBB0_16
# %bb.14:                               # %do.body149
	leal	(,%r15,4), %edi
	callq	x264_malloc@PLT
	movq	%rax, 248(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.15:                               # %if.end211.thread
	movslq	%r15d, %rcx
	movslq	104(%rbx), %rdx
	movslq	12(%rsp), %rsi                  # 4-byte Folded Reload
	imulq	%rdx, %rsi
	leaq	(%rax,%rsi), %rdx
	addq	%rsi, %rax
	addq	$32, %rax
	movq	%rax, 176(%rbx)
	leaq	32(%rcx,%rdx), %rsi
	movq	%rsi, 184(%rbx)
	leaq	32(%rdx,%rcx,2), %rsi
	movq	%rsi, 192(%rbx)
	leaq	(%rcx,%rcx,2), %rcx
	leaq	32(%rdx,%rcx), %rcx
	movq	%rcx, 200(%rbx)
	movq	%rax, 152(%rbx)
	movl	$0, 3520(%rbx)
	jmp	.LBB0_18
.LBB0_16:                               # %do.body188
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 248(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.17:                               # %if.end211
	movslq	104(%rbx), %rcx
	movslq	12(%rsp), %rdx                  # 4-byte Folded Reload
	imulq	%rcx, %rdx
	addq	%rdx, %rax
	addq	$32, %rax
	movq	%rax, 152(%rbx)
	movq	%rax, 176(%rbx)
	movl	$0, 3520(%rbx)
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_32
.LBB0_18:                               # %do.body214
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 3536(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.19:                               # %do.body225
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 3544(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.20:                               # %do.body236
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %ebp
	shll	$6, %ebp
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 3552(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.21:                               # %do.body250
	movq	16(%rsp), %rdi                  # 8-byte Reload
	shll	$2, %edi
	movq	%rdi, %r14
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 3568(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.22:                               # %do.body262
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 6712(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.23:                               # %do.end275
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 100(%rax)
	je	.LBB0_26
# %bb.24:                               # %do.body280
	movl	%ebp, %edi
	callq	x264_malloc@PLT
	movq	%rax, 3560(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.25:                               # %do.body295
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 6720(%rbx)
	testq	%rax, %rax
	jne	.LBB0_27
	jmp	.LBB0_9
.LBB0_32:                               # %if.else376
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 14672(%rax)
	je	.LBB0_52
# %bb.33:                               # %if.then379
	addl	$63, %r12d
	movl	116(%rbx), %eax
	movl	128(%rbx), %ecx
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	%edx, 144(%rbx)
	addl	%r12d, %edx
	andl	40(%rsp), %edx                  # 4-byte Folded Reload
	movl	%edx, 140(%rbx)
	movl	%ecx, %r14d
	shrl	$31, %r14d
	addl	%ecx, %r14d
	sarl	%r14d
	movl	%r14d, 148(%rbx)
	addl	$64, %r14d
	imull	%edx, %r14d
	leal	(,%r14,4), %edi
	callq	x264_malloc@PLT
	movq	%rax, 280(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.34:                               # %for.cond411.preheader
	movslq	%r14d, %rcx
	movslq	140(%rbx), %rdx
	shlq	$5, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	%rdx, %rax
	addq	$32, %rax
	movq	%rax, 208(%rbx)
	leaq	32(%rcx,%rsi), %rdx
	movq	%rdx, 216(%rbx)
	leaq	(%rsi,%rcx,2), %rdx
	addq	$32, %rdx
	movq	%rdx, 224(%rbx)
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rax, %rcx
	movq	%rcx, 232(%rbx)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movl	100(%rsi), %eax
	testl	%eax, %eax
	js	.LBB0_42
# %bb.35:                               # %for.cond446.preheader.preheader
	leaq	6440(%rbx), %r14
	movb	$1, %bpl
	xorl	%ecx, %ecx
	movq	(%rsp), %r13                    # 8-byte Reload
	jmp	.LBB0_36
.LBB0_41:                               # %for.inc514
                                        #   in Loop: Header=BB0_36 Depth=1
	testl	%eax, %eax
	setne	%dl
	movl	$1, %ecx
	testb	%dl, %bpl
	movl	$0, %ebp
	je	.LBB0_42
.LBB0_36:                               # %for.cond446.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	testl	%eax, %eax
	js	.LBB0_41
# %bb.37:                               # %do.body454.preheader
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	%rcx, %rax
	shlq	$7, %rax
	leaq	(%rax,%rcx,8), %r15
	addq	%r14, %r15
	movq	$-1, %r12
.LBB0_39:                               # %do.body454
                                        #   Parent Loop BB0_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16368(%rsi), %edi
	shll	$2, %edi
	callq	x264_malloc@PLT
	movq	%rax, -2856(%r15,%r12,8)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.40:                               # %do.end475
                                        #   in Loop: Header=BB0_39 Depth=2
	movslq	16368(%r13), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	16368(%r13), %edi
	shll	$2, %edi
	callq	x264_malloc@PLT
	movq	%rax, 8(%r15,%r12,8)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.38:                               # %for.cond446
                                        #   in Loop: Header=BB0_39 Depth=2
	movq	(%rsp), %rsi                    # 8-byte Reload
	movslq	100(%rsi), %rax
	incq	%r12
	cmpq	%rax, %r12
	jl	.LBB0_39
	jmp	.LBB0_41
.LBB0_42:                               # %do.body519
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	6(,%rax,2), %r15
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 12184(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.43:                               # %for.cond532.preheader
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	100(%rax), %eax
	cmpl	$-1, %eax
	jge	.LBB0_44
.LBB0_51:                               # %for.end578
	movq	3848(%rbx), %rdi
	movq	%rdi, 12176(%rbx)
	movl	$255, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
.LBB0_52:                               # %if.end586
	cmpl	$0, 544(%rax)
	je	.LBB0_58
# %bb.53:                               # %do.body590
	movl	16368(%rax), %edi
	shll	$2, %edi
	callq	x264_malloc@PLT
	movq	%rax, 12152(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.54:                               # %do.body603
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	16368(%rax), %edi
	shll	$2, %edi
	callq	x264_malloc@PLT
	movq	%rax, 12160(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.55:                               # %do.end615
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 14672(%rax)
	je	.LBB0_58
# %bb.56:                               # %do.body621
	movl	16368(%rax), %eax
	leal	6(,%rax,2), %edi
	callq	x264_malloc@PLT
	movq	%rax, 12192(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.57:                               # %do.end634
	movq	(%rsp), %rcx                    # 8-byte Reload
	movslq	16368(%rcx), %rcx
	leaq	6(,%rcx,2), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	jmp	.LBB0_58
.LBB0_26:                               # %if.else310
	movq	$0, 3560(%rbx)
	movq	$0, 6720(%rbx)
.LBB0_27:                               # %do.body316
	movq	32(%rsp), %rdi                  # 8-byte Reload
	sarl	$2, %edi
	movq	%rdi, %r14
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 12136(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.28:                               # %do.body328
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 12144(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.29:                               # %do.end339
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$3, 412(%rax)
	jl	.LBB0_58
# %bb.30:                               # %do.body345
	movq	48(%rsp), %rdi                  # 8-byte Reload
	addl	128(%rbx), %edi
	imull	104(%rbx), %edi
	addl	%edi, %edi
	movzbl	14676(%rax), %ecx
	shlq	%cl, %rdi
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 272(%rbx)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.31:                               # %do.end366
	movslq	104(%rbx), %rcx
	movslq	12(%rsp), %rdx                  # 4-byte Folded Reload
	imulq	%rcx, %rdx
	leaq	(%rax,%rdx,2), %rax
	addq	$64, %rax
	movq	%rax, 240(%rbx)
	jmp	.LBB0_58
.LBB0_44:                               # %for.cond541.preheader.preheader
	movq	%rbx, %r14
	addq	$3848, %r14                     # imm = 0xF08
	xorl	%r12d, %r12d
.LBB0_45:                               # %for.cond541.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	cmpl	$-1, %eax
	jge	.LBB0_46
# %bb.49:                               # %for.cond541.preheader.for.inc574_crit_edge
                                        #   in Loop: Header=BB0_45 Depth=1
	movslq	%eax, %rcx
	jmp	.LBB0_50
.LBB0_46:                               # %do.body549.preheader
                                        #   in Loop: Header=BB0_45 Depth=1
	movq	$-1, %r13
.LBB0_48:                               # %do.body549
                                        #   Parent Loop BB0_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r15d, %edi
	callq	x264_malloc@PLT
	movq	%rax, 8(%r14,%r13,8)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.47:                               # %for.cond541
                                        #   in Loop: Header=BB0_48 Depth=2
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	100(%rax), %eax
	movslq	%eax, %rcx
	incq	%r13
	cmpq	%rcx, %r13
	jle	.LBB0_48
.LBB0_50:                               # %for.inc574
                                        #   in Loop: Header=BB0_45 Depth=1
	leaq	1(%r12), %rdx
	addq	$144, %r14
	cmpq	%rcx, %r12
	movq	%rdx, %r12
	jle	.LBB0_45
	jmp	.LBB0_51
.LBB0_9:                                # %fail
	movq	%rbx, %rdi
	callq	x264_free@PLT
	xorl	%ebx, %ebx
.LBB0_58:                               # %cleanup646
	movq	%rbx, %rax
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
	.size	x264_frame_new, .Lfunc_end0-x264_frame_new
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_delete               # -- Begin function x264_frame_delete
	.p2align	4, 0x90
	.type	x264_frame_delete,@function
x264_frame_delete:                      # @x264_frame_delete
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
	movq	%rdi, %rbx
	cmpl	$0, 3520(%rdi)
	jne	.LBB1_6
# %bb.1:                                # %for.cond.preheader
	movq	248(%rbx), %rdi
	callq	x264_free@PLT
	movq	256(%rbx), %rdi
	callq	x264_free@PLT
	movq	264(%rbx), %rdi
	callq	x264_free@PLT
	movq	272(%rbx), %rdi
	callq	x264_free@PLT
	movq	280(%rbx), %rdi
	callq	x264_free@PLT
	movq	288(%rbx), %rdi
	callq	x264_free@PLT
	movq	296(%rbx), %rdi
	callq	x264_free@PLT
	movq	304(%rbx), %rdi
	callq	x264_free@PLT
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_2:                                # %for.cond16.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	9536(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9544(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9552(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9560(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9568(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9576(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9584(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9592(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9600(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9608(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9616(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9624(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9632(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9640(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9648(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9656(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9664(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	9672(%rbx,%r14), %rdi
	callq	x264_free@PLT
	addq	$144, %r14
	cmpq	$2592, %r14                     # imm = 0xA20
	jne	.LBB1_2
# %bb.3:                                # %for.cond31.preheader
	movq	3576(%rbx), %rdi
	callq	x264_free@PLT
	movq	6440(%rbx), %rdi
	callq	x264_free@PLT
	movq	3584(%rbx), %rdi
	callq	x264_free@PLT
	movq	6448(%rbx), %rdi
	callq	x264_free@PLT
	movq	3592(%rbx), %rdi
	callq	x264_free@PLT
	movq	6456(%rbx), %rdi
	callq	x264_free@PLT
	movq	3600(%rbx), %rdi
	callq	x264_free@PLT
	movq	6464(%rbx), %rdi
	callq	x264_free@PLT
	movq	3608(%rbx), %rdi
	callq	x264_free@PLT
	movq	6472(%rbx), %rdi
	callq	x264_free@PLT
	movq	3616(%rbx), %rdi
	callq	x264_free@PLT
	movq	6480(%rbx), %rdi
	callq	x264_free@PLT
	movq	3624(%rbx), %rdi
	callq	x264_free@PLT
	movq	6488(%rbx), %rdi
	callq	x264_free@PLT
	movq	3632(%rbx), %rdi
	callq	x264_free@PLT
	movq	6496(%rbx), %rdi
	callq	x264_free@PLT
	movq	3640(%rbx), %rdi
	callq	x264_free@PLT
	movq	6504(%rbx), %rdi
	callq	x264_free@PLT
	movq	3648(%rbx), %rdi
	callq	x264_free@PLT
	movq	6512(%rbx), %rdi
	callq	x264_free@PLT
	movq	3656(%rbx), %rdi
	callq	x264_free@PLT
	movq	6520(%rbx), %rdi
	callq	x264_free@PLT
	movq	3664(%rbx), %rdi
	callq	x264_free@PLT
	movq	6528(%rbx), %rdi
	callq	x264_free@PLT
	movq	3672(%rbx), %rdi
	callq	x264_free@PLT
	movq	6536(%rbx), %rdi
	callq	x264_free@PLT
	movq	3680(%rbx), %rdi
	callq	x264_free@PLT
	movq	6544(%rbx), %rdi
	callq	x264_free@PLT
	movq	3688(%rbx), %rdi
	callq	x264_free@PLT
	movq	6552(%rbx), %rdi
	callq	x264_free@PLT
	movq	3696(%rbx), %rdi
	callq	x264_free@PLT
	movq	6560(%rbx), %rdi
	callq	x264_free@PLT
	movq	3704(%rbx), %rdi
	callq	x264_free@PLT
	movq	6568(%rbx), %rdi
	callq	x264_free@PLT
	movq	3712(%rbx), %rdi
	callq	x264_free@PLT
	movq	6576(%rbx), %rdi
	callq	x264_free@PLT
	movq	3720(%rbx), %rdi
	callq	x264_free@PLT
	movq	6584(%rbx), %rdi
	callq	x264_free@PLT
	movq	3728(%rbx), %rdi
	callq	x264_free@PLT
	movq	6592(%rbx), %rdi
	callq	x264_free@PLT
	movq	3736(%rbx), %rdi
	callq	x264_free@PLT
	movq	6600(%rbx), %rdi
	callq	x264_free@PLT
	movq	3744(%rbx), %rdi
	callq	x264_free@PLT
	movq	6608(%rbx), %rdi
	callq	x264_free@PLT
	movq	3752(%rbx), %rdi
	callq	x264_free@PLT
	movq	6616(%rbx), %rdi
	callq	x264_free@PLT
	movq	3760(%rbx), %rdi
	callq	x264_free@PLT
	movq	6624(%rbx), %rdi
	callq	x264_free@PLT
	movq	3768(%rbx), %rdi
	callq	x264_free@PLT
	movq	6632(%rbx), %rdi
	callq	x264_free@PLT
	movq	3776(%rbx), %rdi
	callq	x264_free@PLT
	movq	6640(%rbx), %rdi
	callq	x264_free@PLT
	movq	3784(%rbx), %rdi
	callq	x264_free@PLT
	movq	6648(%rbx), %rdi
	callq	x264_free@PLT
	movq	3792(%rbx), %rdi
	callq	x264_free@PLT
	movq	6656(%rbx), %rdi
	callq	x264_free@PLT
	movq	3800(%rbx), %rdi
	callq	x264_free@PLT
	movq	6664(%rbx), %rdi
	callq	x264_free@PLT
	movq	3808(%rbx), %rdi
	callq	x264_free@PLT
	movq	6672(%rbx), %rdi
	callq	x264_free@PLT
	movq	3816(%rbx), %rdi
	callq	x264_free@PLT
	movq	6680(%rbx), %rdi
	callq	x264_free@PLT
	movq	3824(%rbx), %rdi
	callq	x264_free@PLT
	movq	6688(%rbx), %rdi
	callq	x264_free@PLT
	movq	3832(%rbx), %rdi
	callq	x264_free@PLT
	movq	6696(%rbx), %rdi
	callq	x264_free@PLT
	movq	3840(%rbx), %rdi
	callq	x264_free@PLT
	movq	6704(%rbx), %rdi
	callq	x264_free@PLT
	movq	12184(%rbx), %rdi
	callq	x264_free@PLT
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_4:                                # %for.cond60.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	3848(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3856(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3864(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3872(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3880(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3888(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3896(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3904(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3912(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3920(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3928(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3936(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3944(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3952(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3960(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3968(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3976(%rbx,%r14), %rdi
	callq	x264_free@PLT
	movq	3984(%rbx,%r14), %rdi
	callq	x264_free@PLT
	addq	$144, %r14
	cmpq	$2592, %r14                     # imm = 0xA20
	jne	.LBB1_4
# %bb.5:                                # %for.cond.cleanup57
	movq	12152(%rbx), %rdi
	callq	x264_free@PLT
	movq	12160(%rbx), %rdi
	callq	x264_free@PLT
	movq	12192(%rbx), %rdi
	callq	x264_free@PLT
	movq	12136(%rbx), %rdi
	callq	x264_free@PLT
	movq	12144(%rbx), %rdi
	callq	x264_free@PLT
	movq	3536(%rbx), %rdi
	callq	x264_free@PLT
	movq	3544(%rbx), %rdi
	callq	x264_free@PLT
	movq	3552(%rbx), %rdi
	callq	x264_free@PLT
	movq	3560(%rbx), %rdi
	callq	x264_free@PLT
	movq	3568(%rbx), %rdi
	callq	x264_free@PLT
	movq	6712(%rbx), %rdi
	callq	x264_free@PLT
	movq	6720(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_6:                                # %if.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.Lfunc_end1:
	.size	x264_frame_delete, .Lfunc_end1-x264_frame_delete
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_copy_picture         # -- Begin function x264_frame_copy_picture
	.p2align	4, 0x90
	.type	x264_frame_copy_picture,@function
x264_frame_copy_picture:                # @x264_frame_copy_picture
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movl	40(%rdx), %edx
	cmpb	$1, %dl
	je	.LBB2_4
# %bb.1:                                # %entry
	movzbl	%dl, %eax
	cmpl	$4, %eax
	jne	.LBB2_2
.LBB2_4:                                # %if.end
	movl	(%r14), %eax
	movl	%eax, 4(%rbx)
	movl	4(%r14), %eax
	movl	%eax, 8(%rbx)
	movq	16(%r14), %rax
	movq	%rax, 24(%rbx)
	movq	%rax, 16(%rbx)
	movq	32(%r14), %rax
	movq	%rax, 48(%rbx)
	movl	8(%r14), %eax
	movl	%eax, 76(%rbx)
	movl	48(%r14), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	%eax, %esi
	cmovnsl	%ecx, %esi
	movl	20(%rdi), %r8d
	cmpb	$4, %dl
	jne	.LBB2_9
# %bb.5:                                # %for.body.preheader
	cmpl	%esi, %r8d
	jg	.LBB2_12
# %bb.6:                                # %for.inc
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	64(%r14), %rdx
	movq	152(%rbx), %rax
	movl	104(%rbx), %esi
	movq	%rdi, %r15
	movq	%rax, %rdi
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32784(%r15)
	movq	%r15, %rdi
	movl	56(%r14), %eax
	movl	20(%r15), %r8d
	sarl	%r8d
	movl	%eax, %ecx
	negl	%ecx
	movl	%eax, %edx
	cmovnsl	%ecx, %edx
	cmpl	%edx, %r8d
	jg	.LBB2_12
# %bb.7:                                # %for.inc.1
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	sarl	%r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	80(%r14), %rdx
	movq	160(%rbx), %rdi
	movl	108(%rbx), %esi
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32784(%r15)
	movq	%r15, %rdi
	movl	52(%r14), %eax
	movl	20(%r15), %r8d
	sarl	%r8d
	movl	%eax, %ecx
	negl	%ecx
	movl	%eax, %edx
	cmovnsl	%ecx, %edx
	cmpl	%edx, %r8d
	jg	.LBB2_12
# %bb.8:                                # %for.inc.2
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	sarl	%r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	72(%r14), %rdx
	jmp	.LBB2_14
.LBB2_9:                                # %if.end.split.us
	cmpl	%esi, %r8d
	jg	.LBB2_12
# %bb.10:                               # %for.inc.us.preheader
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	64(%r14), %rdx
	movq	152(%rbx), %rax
	movl	104(%rbx), %esi
	movq	%rdi, %r15
	movq	%rax, %rdi
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32784(%r15)
	movq	%r15, %rdi
	movl	52(%r14), %eax
	movl	20(%r15), %r8d
	sarl	%r8d
	movl	%eax, %ecx
	negl	%ecx
	movl	%eax, %edx
	cmovnsl	%ecx, %edx
	cmpl	%edx, %r8d
	jg	.LBB2_12
# %bb.11:                               # %for.inc.us.1
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	sarl	%r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	72(%r14), %rdx
	movq	160(%rbx), %rdi
	movl	108(%rbx), %esi
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32784(%r15)
	movq	%r15, %rdi
	movl	56(%r14), %eax
	movl	20(%r15), %r8d
	sarl	%r8d
	movl	%eax, %ecx
	negl	%ecx
	movl	%eax, %edx
	cmovnsl	%ecx, %edx
	cmpl	%edx, %r8d
	jle	.LBB2_13
.LBB2_12:                               # %cleanup.thread
	movl	$.L.str.1, %edx
	jmp	.LBB2_3
.LBB2_2:                                # %if.then
	movl	$.L.str, %edx
.LBB2_3:                                # %cleanup48
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB2_13:                               # %cleanup46.loopexit100
	.cfi_def_cfa_offset 32
	movl	40(%r14), %edx
	movl	%edx, %esi
	shll	$19, %esi
	sarl	$31, %esi
	testl	$4096, %edx                     # imm = 0x1000
	cmovel	%eax, %ecx
	movl	24(%rdi), %r9d
	sarl	%r9d
	leal	-1(%r9), %edx
	imull	%eax, %edx
	andl	%esi, %edx
	movslq	%edx, %rdx
	addq	80(%r14), %rdx
.LBB2_14:                               # %cleanup48
	movq	168(%rbx), %rax
	movl	112(%rbx), %esi
	movq	%rdi, %r10
	movq	%rax, %rdi
                                        # kill: def $r9d killed $r9d killed $r9
	callq	*32784(%r10)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	x264_frame_copy_picture, .Lfunc_end2-x264_frame_copy_picture
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_expand_border        # -- Begin function x264_frame_expand_border
	.p2align	4, 0x90
	.type	x264_frame_expand_border,@function
x264_frame_expand_border:               # @x264_frame_expand_border
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movl	%edx, 32(%rsp)                  # 4-byte Spill
	testl	%edx, 7268(%rdi)
	je	.LBB3_1
.LBB3_32:                               # %cleanup
	addq	$216, %rsp
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
.LBB3_1:                                # %for.cond.preheader
	.cfi_def_cfa_offset 272
	cmpl	$0, 100(%rsi)
	jle	.LBB3_32
# %bb.2:                                # %for.body.lr.ph
	movl	32(%rsp), %ecx                  # 4-byte Reload
	testl	%ecx, %ecx
	sete	%al
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	sete	%dl
	shll	$4, %ecx
	addl	$-4, %ecx
	movl	%ecx, 172(%rsp)                 # 4-byte Spill
	orb	%al, %dl
	movb	%dl, 15(%rsp)                   # 1-byte Spill
	xorl	%r9d, %r9d
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movq	%rdi, 184(%rsp)                 # 8-byte Spill
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_31:                               # %if.end77
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	208(%rsp), %r9                  # 8-byte Reload
	incq	%r9
	movq	192(%rsp), %rsi                 # 8-byte Reload
	movslq	100(%rsi), %rax
	cmpq	%rax, %r9
	movq	184(%rsp), %rdi                 # 8-byte Reload
	jge	.LBB3_32
.LBB3_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_34 Depth 2
                                        #     Child Loop BB3_12 Depth 2
                                        #     Child Loop BB3_15 Depth 2
                                        #     Child Loop BB3_18 Depth 2
                                        #     Child Loop BB3_36 Depth 2
                                        #     Child Loop BB3_24 Depth 2
                                        #     Child Loop BB3_27 Depth 2
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_50 Depth 2
                                        #     Child Loop BB3_42 Depth 2
                                        #     Child Loop BB3_45 Depth 2
                                        #     Child Loop BB3_48 Depth 2
	movq	3200(%rdi), %r8
	movl	1084(%r8), %r10d
	shll	$4, %r10d
	xorl	%eax, %eax
	testq	%r9, %r9
	setne	%dl
	movl	%edx, %ecx
	sarl	%cl, %r10d
	movq	%r10, 56(%rsp)                  # 8-byte Spill
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	je	.LBB3_4
# %bb.5:                                # %cond.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	1088(%r8), %r8d
	subl	32(%rsp), %r8d                  # 4-byte Folded Reload
	shll	$4, %r8d
	movzbl	7268(%rdi), %ecx
	sarl	%cl, %r8d
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movl	$16, %r8d
.LBB3_6:                                # %cond.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movslq	104(%rsi,%r9,4), %rbx
	movl	%edx, %ecx
	sarl	%cl, %r8d
	movl	$32, %r10d
	shrl	%cl, %r10d
	movb	%dl, %al
	movq	%r9, 208(%rsp)                  # 8-byte Spill
	movq	152(%rsi,%r9,8), %r9
	movl	%ebx, %r11d
	imull	172(%rsp), %r11d                # 4-byte Folded Reload
	sarl	%cl, %r11d
	testl	%r11d, %r11d
	movl	$0, %esi
	cmovlel	%esi, %r11d
	movq	%r9, 88(%rsp)                   # 8-byte Spill
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	leaq	(%r9,%r11), %r14
	movl	7268(%rdi), %edx
	addl	%edx, %eax
	movl	$4, %edi
	movl	%eax, %ecx
	shrl	%cl, %edi
	cmpb	$0, 15(%rsp)                    # 1-byte Folded Reload
	cmovnel	%esi, %edi
	addl	%r8d, %edi
	testl	%edx, %edx
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	je	.LBB3_37
# %bb.7:                                # %if.then72
                                        #   in Loop: Header=BB3_3 Depth=1
	leal	(%rbx,%rbx), %eax
	movl	%r10d, %ebp
	movslq	56(%rsp), %r12                  # 4-byte Folded Reload
	movslq	%eax, %r13
	movl	%edi, %eax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	testl	%edi, %edi
	jle	.LBB3_13
# %bb.8:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	negl	%eax
	movslq	%eax, %rcx
	cmpl	$4, 64(%rsp)                    # 4-byte Folded Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	jae	.LBB3_33
# %bb.9:                                #   in Loop: Header=BB3_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB3_10
	.p2align	4, 0x90
.LBB3_37:                               # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	testl	%edi, %edi
	jle	.LBB3_43
# %bb.38:                               # %for.body.lr.ph.i208
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movslq	%eax, %rdx
	movl	%ecx, %r13d
	movslq	56(%rsp), %r15                  # 4-byte Folded Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	cmpl	$4, %eax
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	jae	.LBB3_49
# %bb.39:                               #   in Loop: Header=BB3_3 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB3_40
.LBB3_33:                               # %for.body.lr.ph.i.new
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	160(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	(,%r13,2), %rdx
	addq	%r13, %rdx
	leaq	(%rdx,%r12), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	leaq	(,%r13,4), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	subq	%rbp, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	leaq	(,%r13,2), %rax
	leaq	(%r12,%r13,2), %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	subq	%rbp, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r13), %rbx
	movq	%r13, %rax
	subq	%rbp, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_34:                               # %for.body.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r14,%rcx), %rdi
	movzbl	(%r14), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r14,%r12), %rdi
	movzbl	-1(%r14,%r12), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	(%r14,%r13), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r14,%rbx), %rdi
	movzbl	-1(%r14,%rbx), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	(%r14,%r13,2), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	-1(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movq	152(%rsp), %rax                 # 8-byte Reload
	movzbl	(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	-1(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	$4, %r15
	addq	136(%rsp), %r14                 # 8-byte Folded Reload
	cmpq	%r15, 72(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_34
.LBB3_10:                               # %for.cond.cleanup.i.loopexit.unr-lcssa
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	160(%rsp), %rbx                 # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	andl	$3, %ebx
	je	.LBB3_13
# %bb.11:                               # %for.body.i.epil.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	imulq	%r13, %r15
	addq	80(%rsp), %r15                  # 8-byte Folded Reload
	addq	88(%rsp), %r15                  # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB3_12:                               # %for.body.i.epil
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rdi
	movzbl	(%r15), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r15,%r12), %rdi
	movzbl	-1(%r15,%r12), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	%r13, %r15
	decq	%rbx
	jne	.LBB3_12
.LBB3_13:                               # %for.cond.cleanup.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	%r12, 200(%rsp)                 # 8-byte Spill
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	jne	.LBB3_16
# %bb.14:                               # %for.body27.lr.ph.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movslq	%eax, %r13
	addq	48(%rsp), %r13                  # 8-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movslq	%eax, %rbx
	movq	80(%rsp), %r15                  # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %r15
	subq	%rbp, %r15
	addq	88(%rsp), %r15                  # 8-byte Folded Reload
	leaq	(%rax,%rax), %r14
	negq	%r14
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_15:                               # %for.body27.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	%r12, %rdi
	xorq	$-2, %rdi
	imulq	16(%rsp), %rdi                  # 8-byte Folded Reload
	addq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	addq	%r14, %r15
	cmpq	%r12, %rbp
	jne	.LBB3_15
.LBB3_16:                               # %if.end.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movslq	64(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	je	.LBB3_19
# %bb.17:                               # %for.body54.lr.ph.i
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %eax
	negl	%eax
	movslq	%eax, %r14
	addq	48(%rsp), %r14                  # 8-byte Folded Reload
	movq	64(%rsp), %rax                  # 8-byte Reload
	decl	%eax
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rbx
	addq	%r14, %rbx
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rdx,2), %eax
	movslq	%eax, %r15
	movq	176(%rsp), %rax                 # 8-byte Reload
	leaq	1(%rax), %rcx
	imulq	%r12, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	leaq	(%r12,%r12), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	imulq	%rax, %r12
	movq	%rbp, %r13
	.p2align	4, 0x90
.LBB3_18:                               # %for.body54.i
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r14,%r12), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	72(%rsp), %r14                  # 8-byte Folded Reload
	addq	$-2, %r13
	jne	.LBB3_18
.LBB3_19:                               # %plane_expand_border.exit
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	%rax, 48(%rsp)                  # 8-byte Folded Spill
	cmpl	$0, 64(%rsp)                    # 4-byte Folded Reload
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	200(%rsp), %rbx                 # 8-byte Reload
	movq	160(%rsp), %rcx                 # 8-byte Reload
	jle	.LBB3_25
# %bb.20:                               # %for.body.lr.ph.i156
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	negl	%eax
	cltq
	cmpl	$4, 64(%rsp)                    # 4-byte Folded Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	jae	.LBB3_35
# %bb.21:                               #   in Loop: Header=BB3_3 Depth=1
	xorl	%r15d, %r15d
	movq	%r14, %r13
	jmp	.LBB3_22
.LBB3_35:                               # %for.body.lr.ph.i156.new
                                        #   in Loop: Header=BB3_3 Depth=1
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	leaq	(%r14,%r14,2), %rdx
	leaq	(%rdx,%rbx), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	leaq	(,%r14,4), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	subq	%rbp, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	leaq	(%r14,%r14), %rcx
	leaq	(%rbx,%r14,2), %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	subq	%rbp, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%r14), %r12
	movq	%r14, %rcx
	subq	%rbp, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%r14, %r13
	movq	48(%rsp), %r14                  # 8-byte Reload
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_36:                               # %for.body.i165
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	(%r14), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r14,%rbx), %rdi
	movzbl	-1(%r14,%rbx), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	(%r14,%r13), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r14,%r12), %rdi
	movzbl	-1(%r14,%r12), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	(%r14,%r13,2), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	-1(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movq	152(%rsp), %rax                 # 8-byte Reload
	movzbl	(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	movzbl	-1(%r14,%rax), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	addq	$4, %r15
	addq	136(%rsp), %r14                 # 8-byte Folded Reload
	cmpq	%r15, 72(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_36
.LBB3_22:                               # %for.cond.cleanup.i123.loopexit.unr-lcssa
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	160(%rsp), %r12                 # 8-byte Reload
	andl	$3, %r12d
	movq	%r13, %r14
	movq	24(%rsp), %r13                  # 8-byte Reload
	je	.LBB3_25
# %bb.23:                               # %for.body.i165.epil.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	imulq	%r14, %r15
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %rax
	addq	%rax, %r15
	addq	88(%rsp), %r15                  # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB3_24:                               # %for.body.i165.epil
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%r13), %rdi
	movzbl	(%r15), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	leaq	(%r15,%rbx), %rdi
	movzbl	-1(%r15,%rbx), %esi
	movq	%rbp, %rdx
	callq	memset@PLT
	addq	%r14, %r15
	decq	%r12
	jne	.LBB3_24
.LBB3_25:                               # %for.cond.cleanup.i123
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	movq	88(%rsp), %r13                  # 8-byte Reload
	jne	.LBB3_28
# %bb.26:                               # %for.body27.lr.ph.i143
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movslq	%eax, %r12
	addq	48(%rsp), %r12                  # 8-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movslq	%eax, %rbx
	addq	80(%rsp), %rcx                  # 8-byte Folded Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rcx
	subq	%rbp, %rcx
	addq	%rcx, %r13
	leaq	(%rax,%rax), %r14
	negq	%r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_27:                               # %for.body27.i151
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	%r15, %rdi
	xorq	$-2, %rdi
	imulq	16(%rsp), %rdi                  # 8-byte Folded Reload
	addq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	addq	%r14, %r13
	cmpq	%r15, %rbp
	jne	.LBB3_27
.LBB3_28:                               # %if.end.i124
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	je	.LBB3_31
# %bb.29:                               # %for.body54.lr.ph.i126
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	cltq
	addq	%rax, %r13
	movq	64(%rsp), %rdx                  # 8-byte Reload
	decl	%edx
	movl	%r12d, %eax
	imull	%edx, %eax
	movslq	%eax, %rbx
	addq	%r13, %rbx
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movslq	%eax, %r15
	movq	176(%rsp), %rax                 # 8-byte Reload
	leaq	1(%rax), %r14
	imulq	%r12, %r14
	leaq	(%r12,%r12), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	imulq	%rax, %r12
	.p2align	4, 0x90
.LBB3_30:                               # %for.body54.i138
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%r13), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	leaq	(%r14,%r13), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	24(%rsp), %r13                  # 8-byte Folded Reload
	addq	$-2, %rbp
	jne	.LBB3_30
	jmp	.LBB3_31
.LBB3_49:                               # %for.body.lr.ph.i208.new
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	%r14d, %eax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	(%rbx,%rbx,2), %rcx
	leaq	(%rcx,%r15), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	leaq	(,%rbx,4), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	subq	%r13, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx), %rax
	leaq	(%r15,%rbx,2), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	subq	%r13, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%r15), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rbx, %rax
	subq	%r13, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %r12                  # 8-byte Reload
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB3_50:                               # %for.body.i217
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	(%r12), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	leaq	(%r12,%r15), %rdi
	movzbl	-1(%r12,%r15), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	(%r12,%rbx), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	-1(%r12,%rax), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	(%r12,%rbx,2), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	-1(%r12,%rax), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	(%r12,%rax), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	movq	152(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax), %rdi
	movzbl	-1(%r12,%rax), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	$4, %rbp
	addq	144(%rsp), %r12                 # 8-byte Folded Reload
	cmpq	%rbp, 24(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_50
.LBB3_40:                               # %for.cond.cleanup.i175.loopexit.unr-lcssa
                                        #   in Loop: Header=BB3_3 Depth=1
	andl	$3, %r14d
	movq	16(%rsp), %r12                  # 8-byte Reload
	je	.LBB3_43
# %bb.41:                               # %for.body.i217.epil.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	imulq	%rbx, %rbp
	addq	80(%rsp), %rbp                  # 8-byte Folded Reload
	addq	88(%rsp), %rbp                  # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB3_42:                               # %for.body.i217.epil
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r12,%rbp), %rdi
	movzbl	(%rbp), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	leaq	(%r15,%rbp), %rdi
	movzbl	-1(%rbp,%r15), %esi
	movq	%r13, %rdx
	callq	memset@PLT
	addq	%rbx, %rbp
	decq	%r14
	jne	.LBB3_42
.LBB3_43:                               # %for.cond.cleanup.i175
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	movq	88(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB3_46
# %bb.44:                               # %for.body27.lr.ph.i195
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	movslq	%eax, %r13
	addq	48(%rsp), %r13                  # 8-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movslq	%eax, %rbx
	movl	%ecx, %r14d
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	subq	%rcx, %rax
	subq	%r14, %rax
	addq	%rax, %rbp
	leaq	(%rcx,%rcx), %r15
	negq	%r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_45:                               # %for.body27.i203
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	%r12, %rdi
	xorq	$-2, %rdi
	imulq	96(%rsp), %rdi                  # 8-byte Folded Reload
	addq	%r13, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	addq	%r15, %rbp
	cmpq	%r12, %r14
	jne	.LBB3_45
.LBB3_46:                               # %if.end.i176
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movq	96(%rsp), %r13                  # 8-byte Reload
	je	.LBB3_31
# %bb.47:                               # %for.body54.lr.ph.i178
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	negl	%eax
	cltq
	addq	%rax, %rbp
	movq	64(%rsp), %rdx                  # 8-byte Reload
	leal	-1(%rdx), %eax
	imull	%r13d, %eax
	movslq	%eax, %rbx
	addq	%rbp, %rbx
	movq	56(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movslq	%eax, %r15
	movslq	%edx, %rax
	movl	%ecx, %r14d
	leaq	1(%rax), %r12
	imulq	%r13, %r12
	leaq	(,%r13,2), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	imulq	%rax, %r13
	.p2align	4, 0x90
.LBB3_48:                               # %for.body54.i190
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	addq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	leaq	(%r12,%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	16(%rsp), %rbp                  # 8-byte Folded Reload
	addq	$-2, %r14
	jne	.LBB3_48
	jmp	.LBB3_31
.Lfunc_end3:
	.size	x264_frame_expand_border, .Lfunc_end3-x264_frame_expand_border
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_expand_border_filtered # -- Begin function x264_frame_expand_border_filtered
	.p2align	4, 0x90
	.type	x264_frame_expand_border_filtered,@function
x264_frame_expand_border_filtered:      # @x264_frame_expand_border_filtered
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
	subq	$984, %rsp                      # imm = 0x3D8
	.cfi_def_cfa_offset 1040
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rsi, 976(%rsp)                 # 8-byte Spill
	movslq	104(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	3200(%rdi), %rdx
	movl	1084(%rdx), %eax
	shll	$4, %eax
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	testl	%ecx, %ecx
	je	.LBB4_1
# %bb.2:                                # %cond.true
	movl	1088(%rdx), %edx
	subl	4(%rsp), %edx                   # 4-byte Folded Reload
	shll	$4, %edx
	movzbl	7268(%rdi), %ecx
	sarl	%cl, %edx
	addl	$16, %edx
	jmp	.LBB4_3
.LBB4_1:
	movl	$16, %edx
.LBB4_3:                                # %cond.end
	movl	4(%rsp), %ecx                   # 4-byte Reload
	shll	$4, %ecx
	movl	%ecx, 268(%rsp)                 # 4-byte Spill
	movq	16(%rsp), %r9                   # 8-byte Reload
	leal	(%r9,%r9), %ecx
	movslq	%ecx, %r15
	movl	%edx, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leal	64(%rax), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	leal	-1(%rdx), %ecx
	movl	%r15d, %esi
	imull	%ecx, %esi
	movslq	%esi, %rsi
	movq	%rsi, 656(%rsp)                 # 8-byte Spill
	movslq	%edx, %rdx
	imull	%r9d, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 936(%rsp)                 # 8-byte Spill
	movq	%r15, %rcx
	negq	%rcx
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	leaq	(%r15,%r15), %rsi
	movq	%rsi, %rcx
	negq	%rcx
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	leaq	(%r15,%r15,2), %r11
	movq	%r11, %rcx
	negq	%rcx
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	leaq	(,%r15,4), %rbx
	movq	%rbx, %rcx
	negq	%rcx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	leaq	(%r15,%r15,4), %rcx
	negq	%rcx
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rsi,2), %rcx
	negq	%rcx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	leaq	(,%r15,8), %rcx
	movq	%r15, %r14
	subq	%rcx, %r14
	movq	%r14, 408(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx,2), %r14
	negq	%rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	leaq	(%r15,%r15,8), %rcx
	negq	%rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rsi,4), %rcx
	negq	%rcx
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx,2), %rcx
	negq	%rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movq	%r15, %rcx
	shlq	$4, %rcx
	movq	%r15, %r12
	subq	%rcx, %r12
	movq	%r12, 352(%rsp)                 # 8-byte Spill
	leaq	(%r15,%rcx), %r12
	negq	%rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	negq	%r12
	movq	%r12, 344(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rsi,8), %rcx
	negq	%rcx
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx,4), %rcx
	negq	%rcx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	negq	%r14
	movq	%r14, 400(%rsp)                 # 8-byte Spill
	movq	%rdx, %rcx
	imulq	%r15, %rcx
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	leaq	1(%rdx), %r10
	movq	%r10, %rcx
	imulq	%r15, %rcx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	leaq	2(%rdx), %rcx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	leaq	3(%rdx), %rcx
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	leaq	4(%rdx), %rcx
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	leaq	5(%rdx), %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 608(%rsp)                 # 8-byte Spill
	leaq	6(%rdx), %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	leaq	7(%rdx), %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 592(%rsp)                 # 8-byte Spill
	leaq	8(%rdx), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 584(%rsp)                 # 8-byte Spill
	leaq	9(%rdx), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	leaq	10(%rdx), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	leaq	11(%rdx), %rcx
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	leaq	12(%rdx), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	leaq	13(%rdx), %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	leaq	14(%rdx), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 536(%rsp)                 # 8-byte Spill
	leaq	15(%rdx), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	leaq	16(%rdx), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	leaq	17(%rdx), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	leaq	18(%rdx), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 504(%rsp)                 # 8-byte Spill
	leaq	19(%rdx), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	leaq	20(%rdx), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 488(%rsp)                 # 8-byte Spill
	leaq	21(%rdx), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	imulq	%r15, %rcx
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	leaq	22(%rdx), %r12
	movq	%r12, %rcx
	imulq	%r15, %rcx
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	leaq	23(%rdx), %r14
	movq	%r14, %rcx
	imulq	%r15, %rcx
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	movq	%r9, %rcx
	negq	%rcx
	movq	%rcx, 904(%rsp)                 # 8-byte Spill
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9), %rax
	movq	%rax, %rcx
	negq	%rcx
	movq	%rcx, 896(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9,2), %rcx
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	negq	%rcx
	movq	%rcx, 888(%rsp)                 # 8-byte Spill
	leaq	(,%r9,4), %r8
	movq	%r8, %rcx
	negq	%rcx
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9,4), %rcx
	negq	%rcx
	movq	%rcx, 872(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,2), %rcx
	negq	%rcx
	movq	%rcx, 864(%rsp)                 # 8-byte Spill
	leaq	(,%r9,8), %rcx
	movq	%r9, %rbp
	subq	%rcx, %rbp
	movq	%rbp, 856(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rbp
	negq	%rcx
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9,8), %rcx
	negq	%rcx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	negq	%rcx
	movq	%rcx, 824(%rsp)                 # 8-byte Spill
	leaq	(%r8,%r8,2), %rcx
	negq	%rcx
	movq	%rcx, 816(%rsp)                 # 8-byte Spill
	movq	%r9, %rcx
	shlq	$4, %rcx
	movq	%r9, %r13
	subq	%rcx, %r13
	movq	%r13, 800(%rsp)                 # 8-byte Spill
	leaq	(%r9,%rcx), %r13
	negq	%rcx
	movq	%rcx, 808(%rsp)                 # 8-byte Spill
	negq	%r13
	movq	%r13, 792(%rsp)                 # 8-byte Spill
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,8), %rax
	negq	%rax
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	movq	%r8, 712(%rsp)                  # 8-byte Spill
	leaq	(%r8,%r8,4), %rax
	negq	%rax
	movq	%rax, 776(%rsp)                 # 8-byte Spill
	negq	%rbp
	movq	%rbp, 848(%rsp)                 # 8-byte Spill
	imulq	%r9, %rdx
	movq	%rdx, 944(%rsp)                 # 8-byte Spill
	imulq	%r9, %r10
	movq	%r10, 928(%rsp)                 # 8-byte Spill
	movq	240(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	232(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	224(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movq	216(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	208(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	184(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	176(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	160(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	imulq	%r9, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	664(%rsp), %r13                 # 8-byte Reload
	imulq	%r9, %r12
	movq	%r12, 920(%rsp)                 # 8-byte Spill
	imulq	%r9, %r14
	movq	%r14, 912(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	%ecx, %eax
	andl	$3, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movslq	256(%rsp), %rax                 # 4-byte Folded Reload
	leaq	(%rax,%r11), %rcx
	addq	$4, %rcx
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	leaq	4(%rax,%r15,2), %r8
	leaq	4(%rax,%r15), %r10
	leaq	4(%rax), %r12
	leaq	4(%rax,%r13), %rbp
	leaq	4(%rax,%r9,2), %rdx
	movq	%rdx, 696(%rsp)                 # 8-byte Spill
	addq	%r9, %rax
	addq	$4, %rax
	movq	%rax, 688(%rsp)                 # 8-byte Spill
	imulq	$-11, %r15, %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	imulq	$-13, %r15, %rax
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	imulq	$-14, %r15, %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	imulq	$-19, %r15, %rax
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	imulq	$-21, %r15, %rax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	imulq	$-22, %r15, %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	imulq	$-23, %r15, %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	imulq	$-11, %r9, %rax
	movq	%rax, 768(%rsp)                 # 8-byte Spill
	imulq	$-13, %r9, %rax
	movq	%rax, 760(%rsp)                 # 8-byte Spill
	imulq	$-14, %r9, %rax
	movq	%rax, 752(%rsp)                 # 8-byte Spill
	imulq	$-19, %r9, %rax
	movq	%rax, 744(%rsp)                 # 8-byte Spill
	imulq	$-21, %r9, %rax
	movq	%rax, 736(%rsp)                 # 8-byte Spill
	imulq	$-22, %r9, %rax
	movq	%rax, 728(%rsp)                 # 8-byte Spill
	imulq	$-23, %r9, %rax
	movq	%rax, 720(%rsp)                 # 8-byte Spill
	movl	$1, %edx
	movq	%rsi, 680(%rsp)                 # 8-byte Spill
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	movq	%rbx, 672(%rsp)                 # 8-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, 968(%rsp)                 # 8-byte Spill
	movq	%rbp, 704(%rsp)                 # 8-byte Spill
	jmp	.LBB4_4
	.p2align	4, 0x90
.LBB4_24:                               # %for.body54.lr.ph.i51
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	656(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %r13
	addq	$-28, %r13
	movq	648(%rsp), %rax                 # 8-byte Reload
	leaq	-28(%r14,%rax), %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	640(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	632(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	624(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	616(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	608(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	600(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	592(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	584(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	576(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	568(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	560(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	552(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	544(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	536(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	528(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	520(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	512(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	504(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	496(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	488(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	480(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	472(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	464(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
.LBB4_39:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
.LBB4_40:                               # %if.end
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	256(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	cmpq	$4, %rdx
	movq	968(%rsp), %rdi                 # 8-byte Reload
	movq	664(%rsp), %r13                 # 8-byte Reload
	je	.LBB4_41
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_10 Depth 2
                                        #     Child Loop BB4_28 Depth 2
                                        #     Child Loop BB4_20 Depth 2
                                        #     Child Loop BB4_43 Depth 2
                                        #     Child Loop BB4_34 Depth 2
	movq	976(%rsp), %rax                 # 8-byte Reload
	movq	176(%rax,%rdx,8), %rbp
	movl	7268(%rdi), %ecx
	movl	$-8, %eax
	shll	%cl, %eax
	addl	268(%rsp), %eax                 # 4-byte Folded Reload
	imull	16(%rsp), %eax                  # 4-byte Folded Reload
	movslq	%eax, %rsi
	leaq	(%rsi,%rbp), %r14
	testl	%ecx, %ecx
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	je	.LBB4_29
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	248(%rsp), %r13                 # 8-byte Reload
	jle	.LBB4_11
# %bb.6:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	jae	.LBB4_25
# %bb.7:                                #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_29:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	movq	952(%rsp), %rdi                 # 8-byte Reload
	jle	.LBB4_35
# %bb.30:                               # %for.body.lr.ph.i114
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	movq	%r14, 960(%rsp)                 # 8-byte Spill
	jae	.LBB4_42
# %bb.31:                               #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	jmp	.LBB4_32
.LBB4_25:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%r14, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_26:                               # %for.body.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rcx), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -20(%rcx)
	movzbl	-1(%rcx,%r12), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r12)
	movdqu	%xmm0, 12(%rcx,%r12)
	movzbl	-4(%rcx,%r15), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%r15)
	movdqu	%xmm0, -20(%rcx,%r15)
	movzbl	-1(%rcx,%r10), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r10)
	movdqu	%xmm0, 12(%rcx,%r10)
	movzbl	-4(%rcx,%r15,2), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movq	680(%rsp), %rdx                 # 8-byte Reload
	movdqu	%xmm0, -20(%rcx,%rdx)
	movdqu	%xmm0, -32(%rcx,%rdx)
	movzbl	-1(%rcx,%r8), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r8)
	movdqu	%xmm0, 12(%rcx,%r8)
	movzbl	-4(%rcx,%r11), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%r11)
	movdqu	%xmm0, -20(%rcx,%r11)
	movzbl	-1(%rcx,%r13), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r13)
	movdqu	%xmm0, 12(%rcx,%r13)
	addq	$4, %rax
	addq	672(%rsp), %rcx                 # 8-byte Folded Reload
	cmpq	%rax, %rdi
	jne	.LBB4_26
.LBB4_8:                                # %for.cond.cleanup.i.loopexit.unr-lcssa
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpq	$0, 64(%rsp)                    # 8-byte Folded Reload
	je	.LBB4_11
# %bb.9:                                # %for.body.i.epil.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	imulq	%r15, %rax
	addq	%rsi, %rax
	addq	%rbp, %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_10:                               # %for.body.i.epil
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rax), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -20(%rax)
	movzbl	-1(%rax,%r12), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rax,%r12)
	movdqu	%xmm0, 12(%rax,%r12)
	addq	%r15, %rax
	decq	%rcx
	jne	.LBB4_10
.LBB4_11:                               # %for.cond.cleanup.i
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	je	.LBB4_12
# %bb.13:                               # %if.end.i
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_15
.LBB4_14:                               # %for.body54.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	656(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %r13
	addq	$-32, %r13
	movq	648(%rsp), %rax                 # 8-byte Reload
	leaq	-32(%r14,%rax), %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	640(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	632(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	624(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	616(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	608(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	600(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	592(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	584(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	576(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	568(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	560(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	552(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	544(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	536(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	528(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	520(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	512(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	504(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	496(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	488(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	480(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	472(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	464(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	248(%rsp), %r13                 # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
.LBB4_15:                               # %plane_expand_border.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	jle	.LBB4_21
# %bb.16:                               # %for.body.lr.ph.i73
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	jae	.LBB4_27
# %bb.17:                               #   in Loop: Header=BB4_4 Depth=1
	xorl	%eax, %eax
	jmp	.LBB4_18
	.p2align	4, 0x90
.LBB4_12:                               # %for.body27.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-32(%r14), %r13
	movq	456(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	448(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	440(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	432(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	424(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	416(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	408(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	392(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	384(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	376(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	320(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	368(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	312(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	304(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	352(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	360(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	344(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	336(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	296(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	328(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	288(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	280(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	400(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	248(%rsp), %r13                 # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_14
	jmp	.LBB4_15
.LBB4_27:                               # %for.body.i79.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rbp), %rcx
	addq	%rsi, %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_28:                               # %for.body.i79
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rcx), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -20(%rcx)
	movzbl	-1(%rcx,%r12), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r12)
	movdqu	%xmm0, 12(%rcx,%r12)
	movzbl	-4(%rcx,%r15), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%r15)
	movdqu	%xmm0, -20(%rcx,%r15)
	movzbl	-1(%rcx,%r10), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r10)
	movdqu	%xmm0, 12(%rcx,%r10)
	movzbl	-4(%rcx,%r15,2), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movq	680(%rsp), %rdx                 # 8-byte Reload
	movdqu	%xmm0, -20(%rcx,%rdx)
	movdqu	%xmm0, -32(%rcx,%rdx)
	movzbl	-1(%rcx,%r8), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r8)
	movdqu	%xmm0, 12(%rcx,%r8)
	movzbl	-4(%rcx,%r11), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%r11)
	movdqu	%xmm0, -20(%rcx,%r11)
	movzbl	-1(%rcx,%r13), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r13)
	movdqu	%xmm0, 12(%rcx,%r13)
	addq	$4, %rax
	addq	672(%rsp), %rcx                 # 8-byte Folded Reload
	cmpq	%rax, %rdi
	jne	.LBB4_28
.LBB4_18:                               # %for.cond.cleanup.i48.loopexit.unr-lcssa
                                        #   in Loop: Header=BB4_4 Depth=1
	testb	$3, 8(%rsp)                     # 1-byte Folded Reload
	je	.LBB4_21
# %bb.19:                               # %for.body.i79.epil.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	%rbp, %rcx
	imulq	%r15, %rax
	addq	%rsi, %rax
	addq	%rcx, %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_20:                               # %for.body.i79.epil
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rax), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rax)
	movdqu	%xmm0, -20(%rax)
	movzbl	-1(%rax,%r12), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rax,%r12)
	movdqu	%xmm0, 12(%rax,%r12)
	addq	%r15, %rax
	decq	%rcx
	jne	.LBB4_20
.LBB4_21:                               # %for.cond.cleanup.i48
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	(%rsi,%rbp), %r14
	addq	$-4, %r14
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB4_22
# %bb.23:                               # %if.end.i49
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_24
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_22:                               # %for.body27.lr.ph.i64
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-28(%r14), %r13
	movq	456(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	448(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	440(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	432(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	424(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	416(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	408(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	392(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	384(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	376(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	320(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	368(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	312(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	304(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	352(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	360(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	344(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	336(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	296(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	328(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	288(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	280(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	272(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	400(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-28, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_24
	jmp	.LBB4_40
.LBB4_42:                               # %for.body.i120.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%r14, %rcx
	xorl	%eax, %eax
	movq	712(%rsp), %r8                  # 8-byte Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	movq	704(%rsp), %rbx                 # 8-byte Reload
	movq	696(%rsp), %r14                 # 8-byte Reload
	movq	688(%rsp), %r9                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_43:                               # %for.body.i120
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rcx), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -20(%rcx)
	movzbl	-1(%rcx,%r12), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r12)
	movdqu	%xmm0, 12(%rcx,%r12)
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movzbl	-4(%rcx,%rsi), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%rsi)
	movdqu	%xmm0, -20(%rcx,%rsi)
	movzbl	-1(%rcx,%r9), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r9)
	movdqu	%xmm0, 12(%rcx,%r9)
	movzbl	-4(%rcx,%rsi,2), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -20(%rcx,%rdi)
	movdqu	%xmm0, -32(%rcx,%rdi)
	movzbl	-1(%rcx,%r14), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%r14)
	movdqu	%xmm0, 12(%rcx,%r14)
	movzbl	-4(%rcx,%r13), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx,%r13)
	movdqu	%xmm0, -20(%rcx,%r13)
	movzbl	-1(%rcx,%rbx), %edx
	movd	%edx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%rbx)
	movdqu	%xmm0, 12(%rcx,%rbx)
	addq	$4, %rax
	addq	%r8, %rcx
	cmpq	%rax, %r10
	jne	.LBB4_43
.LBB4_32:                               # %for.cond.cleanup.i89.loopexit.unr-lcssa
                                        #   in Loop: Header=BB4_4 Depth=1
	testb	$3, 8(%rsp)                     # 1-byte Folded Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	960(%rsp), %r14                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	je	.LBB4_35
# %bb.33:                               # %for.body.i120.epil.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	imulq	16(%rsp), %rax                  # 8-byte Folded Reload
	addq	%rcx, %rax
	addq	%rax, %rbp
	movq	64(%rsp), %rax                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_34:                               # %for.body.i120.epil
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-4(%rbp), %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rbp)
	movdqu	%xmm0, -20(%rbp)
	movzbl	-1(%rbp,%r12), %ecx
	movd	%ecx, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rbp,%r12)
	movdqu	%xmm0, 12(%rbp,%r12)
	addq	16(%rsp), %rbp                  # 8-byte Folded Reload
	decq	%rax
	jne	.LBB4_34
.LBB4_35:                               # %for.cond.cleanup.i89
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB4_36
# %bb.37:                               # %if.end.i90
                                        #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_38
	jmp	.LBB4_40
.LBB4_36:                               # %for.body27.lr.ph.i105
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	-32(%r14), %r13
	movq	904(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	896(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	888(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	880(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	872(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	864(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	856(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	840(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	832(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	824(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	768(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	816(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	760(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	752(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	800(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	808(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	792(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	784(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	744(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	776(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	736(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	728(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	720(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	848(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	48(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_40
.LBB4_38:                               # %for.body54.lr.ph.i92
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	936(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %r13
	addq	$-32, %r13
	movq	944(%rsp), %rax                 # 8-byte Reload
	leaq	-32(%r14,%rax), %rdi
	movq	%r13, %rsi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	928(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	240(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	224(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	216(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	208(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	200(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	192(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	184(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	176(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	160(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	152(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	144(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	88(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	920(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	912(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax), %rdi
	addq	$-32, %rdi
	jmp	.LBB4_39
.LBB4_41:                               # %for.cond.cleanup
	addq	$984, %rsp                      # imm = 0x3D8
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
.Lfunc_end4:
	.size	x264_frame_expand_border_filtered, .Lfunc_end4-x264_frame_expand_border_filtered
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_expand_border_lowres # -- Begin function x264_frame_expand_border_lowres
	.p2align	4, 0x90
	.type	x264_frame_expand_border_lowres,@function
x264_frame_expand_border_lowres:        # @x264_frame_expand_border_lowres
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
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_7:                                # %for.cond.cleanup.i
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-32(%r13), %r15
	addl	$64, %eax
	movslq	%eax, %r14
	movq	%r15, %rdi
	subq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(%r12,%r12), %rax
	movq	%r15, %rdi
	subq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(%r12,%r12,2), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(,%r12,4), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%r15, %rdi
	subq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(%r12,%r12,4), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(,%rbp,2), %rax
	addq	%rbp, %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(,%r12,8), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	%r12, %rax
	subq	%rbp, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r15, %rdi
	subq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	(%r12,%r12,8), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-11, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-13, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-14, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r12, %rbp
	shlq	$4, %rbp
	movq	%r12, %rax
	subq	%rbp, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r15, %rdi
	subq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	%r12, %rbp
	negq	%rbp
	leaq	-32(,%rbp), %rdi
	addq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%rax,%rax,8), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-19, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-21, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-22, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-23, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax,2), %rax
	negq	%rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-25, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-26, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-27, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-28, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-29, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	imulq	$-30, %r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r12, %rbp
	shlq	$5, %rbp
	movq	%r12, %rax
	subq	%rbp, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	%r15, %rdi
	subq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leal	-1(%rbx), %eax
	imull	%r12d, %eax
	cltq
	leaq	(%rax,%r13), %r15
	addq	$-32, %r15
	movq	%r12, %rax
	imulq	%rbx, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	1(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	2(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	3(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	4(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	5(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	6(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	7(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	8(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	9(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	10(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	11(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	12(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	13(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	14(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	15(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	16(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	17(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	18(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	19(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	20(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	21(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	22(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	23(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	24(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	25(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	26(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	27(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	28(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	29(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	leaq	30(%rbx), %rax
	imulq	%r12, %rax
	leaq	(%rax,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	addq	$31, %rbx
	imulq	%r12, %rbx
	leaq	(%rbx,%r13), %rdi
	addq	$-32, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	cmpq	$4, %rax
	je	.LBB5_8
.LBB5_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_10 Depth 2
                                        #     Child Loop BB5_6 Depth 2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	208(%rcx,%rax,8), %r13
	movslq	140(%rcx), %r12
	movslq	144(%rcx), %rax
	movslq	148(%rcx), %rbx
	testq	%rbx, %rbx
	jle	.LBB5_7
# %bb.2:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_1 Depth=1
	cmpl	$4, %ebx
	jae	.LBB5_9
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_9:                                # %for.body.lr.ph.i.new
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	%ebx, %edx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	leaq	(%r12,%r12,2), %rsi
	leaq	(%rsi,%rax), %rdi
	leaq	(,%r12,4), %r8
	leaq	(%r12,%r12), %r9
	leaq	(%rax,%r12,2), %r10
	leaq	(%r12,%rax), %r11
	movq	%r13, %r14
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB5_10:                               # %for.body.i
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%r14)
	movdqu	%xmm0, -16(%r14)
	movzbl	-1(%r14,%rax), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%r14,%rax)
	movdqu	%xmm0, 16(%r14,%rax)
	movzbl	(%r14,%r12), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%r14,%r12)
	movdqu	%xmm0, -16(%r14,%r12)
	movzbl	-1(%r14,%r11), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%r14,%r11)
	movdqu	%xmm0, 16(%r14,%r11)
	movzbl	(%r14,%r12,2), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -16(%r14,%r9)
	movdqu	%xmm0, -32(%r14,%r9)
	movzbl	-1(%r14,%r10), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%r14,%r10)
	movdqu	%xmm0, 16(%r14,%r10)
	movzbl	(%r14,%rsi), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%r14,%rsi)
	movdqu	%xmm0, -16(%r14,%rsi)
	movzbl	-1(%r14,%rdi), %ebp
	movd	%ebp, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%r14,%rdi)
	movdqu	%xmm0, 16(%r14,%rdi)
	addq	$4, %rcx
	addq	%r8, %r14
	cmpq	%rcx, %rdx
	jne	.LBB5_10
.LBB5_4:                                # %for.cond.cleanup.i.loopexit.unr-lcssa
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	%ebx, %edx
	andl	$3, %edx
	je	.LBB5_7
# %bb.5:                                # %for.body.i.epil.preheader
                                        #   in Loop: Header=BB5_1 Depth=1
	imulq	%r12, %rcx
	addq	%r13, %rcx
	.p2align	4, 0x90
.LBB5_6:                                # %for.body.i.epil
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rcx), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movzbl	-1(%rcx,%rax), %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rcx,%rax)
	movdqu	%xmm0, 16(%rcx,%rax)
	addq	%r12, %rcx
	decq	%rdx
	jne	.LBB5_6
	jmp	.LBB5_7
.LBB5_8:                                # %for.cond.cleanup
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
.Lfunc_end5:
	.size	x264_frame_expand_border_lowres, .Lfunc_end5-x264_frame_expand_border_lowres
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_expand_border_mod16  # -- Begin function x264_frame_expand_border_mod16
	.p2align	4, 0x90
	.type	x264_frame_expand_border_mod16,@function
x264_frame_expand_border_mod16:         # @x264_frame_expand_border_mod16
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 100(%rsi)
	jle	.LBB6_15
# %bb.1:                                # %for.body.lr.ph
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
	movq	%rsi, %rbx
	movq	%rdi, %r13
	xorl	%r12d, %r12d
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB6_2
	.p2align	4, 0x90
.LBB6_13:                               # %if.end71
                                        #   in Loop: Header=BB6_2 Depth=1
	incq	%r12
	movslq	100(%rbx), %rax
	cmpq	%rax, %r12
	jge	.LBB6_14
.LBB6_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
                                        #     Child Loop BB6_12 Depth 2
	testq	%r12, %r12
	setne	%cl
	movl	20(%r13), %r14d
	movl	24(%r13), %eax
	movq	3200(%r13), %rdx
	movl	1084(%rdx), %ebp
	shll	$4, %ebp
	subl	%r14d, %ebp
	sarl	%cl, %r14d
	movl	1088(%rdx), %edx
	shll	$4, %edx
	subl	%eax, %edx
	movl	%eax, %esi
	sarl	%cl, %esi
	sarl	%cl, %ebp
	sarl	%cl, %edx
	testl	%ebp, %ebp
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	je	.LBB6_9
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB6_2 Depth=1
	testl	%esi, %esi
	jle	.LBB6_9
# %bb.4:                                # %for.body18.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	movslq	%ebp, %r15
	xorl	%r13d, %r13d
	cmpl	$1, %esi
	je	.LBB6_7
# %bb.5:                                # %for.body18.lr.ph.new
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	4(%rsp), %ebp                   # 4-byte Reload
	andl	$2147483646, %ebp               # imm = 0x7FFFFFFE
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB6_6:                                # %for.body18
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%rbx,%r12,8), %rax
	movl	104(%rbx,%r12,4), %ecx
	imull	%r13d, %ecx
	addl	%r14d, %ecx
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx), %rdi
	movzbl	-1(%rax,%rcx), %esi
	movq	%r15, %rdx
	callq	memset@PLT
	leal	1(%r13), %eax
	movq	152(%rbx,%r12,8), %rcx
	imull	104(%rbx,%r12,4), %eax
	addl	%r14d, %eax
	cltq
	leaq	(%rcx,%rax), %rdi
	movzbl	-1(%rcx,%rax), %esi
	movq	%r15, %rdx
	callq	memset@PLT
	addl	$2, %r13d
	cmpl	%r13d, %ebp
	jne	.LBB6_6
.LBB6_7:                                # %if.end.loopexit.unr-lcssa
                                        #   in Loop: Header=BB6_2 Depth=1
	movl	4(%rsp), %esi                   # 4-byte Reload
	testb	$1, %sil
	movl	8(%rsp), %edx                   # 4-byte Reload
	movl	12(%rsp), %ebp                  # 4-byte Reload
	je	.LBB6_9
# %bb.8:                                # %for.body18.epil
                                        #   in Loop: Header=BB6_2 Depth=1
	movq	152(%rbx,%r12,8), %rax
	imull	104(%rbx,%r12,4), %r13d
	addl	%r14d, %r13d
	movslq	%r13d, %rcx
	leaq	(%rax,%rcx), %rdi
	movzbl	-1(%rax,%rcx), %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	8(%rsp), %edx                   # 4-byte Reload
.LBB6_9:                                # %if.end
                                        #   in Loop: Header=BB6_2 Depth=1
	testl	%edx, %edx
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB6_13
# %bb.10:                               # %for.cond39.preheader
                                        #   in Loop: Header=BB6_2 Depth=1
	jle	.LBB6_13
# %bb.11:                               # %for.body44.lr.ph
                                        #   in Loop: Header=BB6_2 Depth=1
	addl	%esi, %edx
	addl	%r14d, %ebp
	movslq	%ebp, %r15
	movl	%esi, %ebp
	.p2align	4, 0x90
.LBB6_12:                               # %for.body44
                                        #   Parent Loop BB6_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%rbx,%r12,8), %rax
	movl	104(%rbx,%r12,4), %ecx
	movl	%edx, %r14d
	movl	136(%r13), %edx
	notl	%edx
	orl	%ebp, %edx
	addl	%esi, %edx
	imull	%ecx, %edx
	imull	%ebp, %ecx
	movslq	%ecx, %rdi
	addq	%rax, %rdi
	movslq	%edx, %rsi
	addq	%rax, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	%r14d, %edx
	incl	%ebp
	cmpl	%r14d, %ebp
	jl	.LBB6_12
	jmp	.LBB6_13
.LBB6_14:
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
.LBB6_15:                               # %for.cond.cleanup
	retq
.Lfunc_end6:
	.size	x264_frame_expand_border_mod16, .Lfunc_end6-x264_frame_expand_border_mod16
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_cond_broadcast       # -- Begin function x264_frame_cond_broadcast
	.p2align	4, 0x90
	.type	x264_frame_cond_broadcast,@function
x264_frame_cond_broadcast:              # @x264_frame_cond_broadcast
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, 15592(%rdi)
	retq
.Lfunc_end7:
	.size	x264_frame_cond_broadcast, .Lfunc_end7-x264_frame_cond_broadcast
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_cond_wait            # -- Begin function x264_frame_cond_wait
	.p2align	4, 0x90
	.type	x264_frame_cond_wait,@function
x264_frame_cond_wait:                   # @x264_frame_cond_wait
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	%esi, 15592(%rdi)
	jge	.LBB8_2
	.p2align	4, 0x90
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB8_1
.LBB8_2:                                # %while.end
	retq
.Lfunc_end8:
	.size	x264_frame_cond_wait, .Lfunc_end8-x264_frame_cond_wait
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_push                 # -- Begin function x264_frame_push
	.p2align	4, 0x90
	.type	x264_frame_push,@function
x264_frame_push:                        # @x264_frame_push
	.cfi_startproc
# %bb.0:                                # %entry
	.p2align	4, 0x90
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rdi)
	leaq	8(%rdi), %rdi
	jne	.LBB9_1
# %bb.2:                                # %while.end
	movq	%rsi, -8(%rdi)
	retq
.Lfunc_end9:
	.size	x264_frame_push, .Lfunc_end9-x264_frame_push
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_pop                  # -- Begin function x264_frame_pop
	.p2align	4, 0x90
	.type	x264_frame_pop,@function
x264_frame_pop:                         # @x264_frame_pop
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rdi,%rax,8)
	leaq	1(%rax), %rax
	jne	.LBB10_1
# %bb.2:                                # %while.end
	movl	%eax, %ecx
	movq	(%rdi,%rcx,8), %rax
	movq	$0, (%rdi,%rcx,8)
	retq
.Lfunc_end10:
	.size	x264_frame_pop, .Lfunc_end10-x264_frame_pop
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_unshift              # -- Begin function x264_frame_unshift
	.p2align	4, 0x90
	.type	x264_frame_unshift,@function
x264_frame_unshift:                     # @x264_frame_unshift
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	-16(%rdi), %rcx
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	incq	%rax
	cmpq	$0, 16(%rcx)
	leaq	8(%rcx), %rcx
	jne	.LBB11_1
# %bb.2:                                # %while.cond1.preheader
	testq	%rax, %rax
	je	.LBB11_10
# %bb.3:                                # %while.body3.preheader
	cmpq	$8, %rax
	jae	.LBB11_5
# %bb.4:
	movq	%rax, %rdx
	jmp	.LBB11_8
.LBB11_5:                               # %vector.ph
	movabsq	$9223372036854775800, %r8       # imm = 0x7FFFFFFFFFFFFFF8
	andq	%rax, %r8
	movl	%eax, %edx
	andl	$7, %edx
	movq	%rax, %r9
	andq	$-8, %r9
	.p2align	4, 0x90
.LBB11_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-56(%rcx), %xmm0
	movups	-40(%rcx), %xmm1
	movups	-24(%rcx), %xmm2
	movups	-8(%rcx), %xmm3
	movups	%xmm3, (%rcx)
	movups	%xmm2, -16(%rcx)
	movups	%xmm1, -32(%rcx)
	movups	%xmm0, -48(%rcx)
	addq	$-64, %rcx
	addq	$-8, %r9
	jne	.LBB11_6
# %bb.7:                                # %middle.block
	cmpq	%r8, %rax
	je	.LBB11_10
.LBB11_8:                               # %while.body3.preheader36
	movq	%rdx, %rax
	.p2align	4, 0x90
.LBB11_9:                               # %while.body3
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rdi,%rdx,8), %rcx
	movq	%rcx, (%rdi,%rdx,8)
	decq	%rax
	movq	%rax, %rdx
	jne	.LBB11_9
.LBB11_10:                              # %while.end8
	movq	%rsi, (%rdi)
	retq
.Lfunc_end11:
	.size	x264_frame_unshift, .Lfunc_end11-x264_frame_unshift
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_shift                # -- Begin function x264_frame_shift
	.p2align	4, 0x90
	.type	x264_frame_shift,@function
x264_frame_shift:                       # @x264_frame_shift
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB12_3
# %bb.1:                                # %for.body.preheader
	addq	$8, %rdi
	.p2align	4, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rcx
	movq	%rcx, -8(%rdi)
	addq	$8, %rdi
	testq	%rcx, %rcx
	jne	.LBB12_2
.LBB12_3:                               # %for.end
	retq
.Lfunc_end12:
	.size	x264_frame_shift, .Lfunc_end12-x264_frame_shift
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_push_unused          # -- Begin function x264_frame_push_unused
	.p2align	4, 0x90
	.type	x264_frame_push_unused,@function
x264_frame_push_unused:                 # @x264_frame_push_unused
	.cfi_startproc
# %bb.0:                                # %entry
	decl	15600(%rsi)
	je	.LBB13_1
# %bb.4:                                # %if.end
	retq
.LBB13_1:                               # %if.then
	movzbl	84(%rsi), %eax
	movq	14424(%rdi,%rax,8), %rax
	.p2align	4, 0x90
.LBB13_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	leaq	8(%rax), %rax
	jne	.LBB13_2
# %bb.3:                                # %x264_frame_push.exit
	movq	%rsi, -8(%rax)
	retq
.Lfunc_end13:
	.size	x264_frame_push_unused, .Lfunc_end13-x264_frame_push_unused
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_pop_unused           # -- Begin function x264_frame_pop_unused
	.p2align	4, 0x90
	.type	x264_frame_pop_unused,@function
x264_frame_pop_unused:                  # @x264_frame_pop_unused
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movslq	%esi, %rax
	movq	14424(%rdi,%rax,8), %rax
	cmpq	$0, (%rax)
	je	.LBB14_4
# %bb.1:                                # %while.cond.i.preheader
	movq	$-1, %rcx
	.p2align	4, 0x90
.LBB14_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rax,%rcx,8)
	leaq	1(%rcx), %rcx
	jne	.LBB14_2
# %bb.3:                                # %x264_frame_pop.exit
	movl	%ecx, %ecx
	movq	(%rax,%rcx,8), %rbx
	movq	$0, (%rax,%rcx,8)
	testq	%rbx, %rbx
	je	.LBB14_7
.LBB14_6:                               # %if.end9
	movb	$0, 85(%rbx)
	movl	$1, 15600(%rbx)
	movl	$0, 12168(%rbx)
	movl	$1, 12200(%rbx)
	movl	$0, 80(%rbx)
	leaq	320(%rbx), %rdi
	movl	$3072, %edx                     # imm = 0xC00
	xorl	%esi, %esi
	callq	memset@PLT
	xorps	%xmm0, %xmm0
	movups	%xmm0, 12204(%rbx)
	movups	%xmm0, 12220(%rbx)
	movups	%xmm0, 12236(%rbx)
	movups	%xmm0, 12252(%rbx)
	movq	$0, 12268(%rbx)
.LBB14_7:                               # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB14_4:                               # %if.else
	.cfi_def_cfa_offset 16
	callq	x264_frame_new
	movq	%rax, %rbx
	testq	%rbx, %rbx
	jne	.LBB14_6
	jmp	.LBB14_7
.Lfunc_end14:
	.size	x264_frame_pop_unused, .Lfunc_end14-x264_frame_pop_unused
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_push_blank_unused    # -- Begin function x264_frame_push_blank_unused
	.p2align	4, 0x90
	.type	x264_frame_push_blank_unused,@function
x264_frame_push_blank_unused:           # @x264_frame_push_blank_unused
	.cfi_startproc
# %bb.0:                                # %entry
	decl	15600(%rsi)
	je	.LBB15_1
# %bb.4:                                # %if.end
	retq
.LBB15_1:                               # %if.then
	movq	14440(%rdi), %rax
	.p2align	4, 0x90
.LBB15_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rax)
	leaq	8(%rax), %rax
	jne	.LBB15_2
# %bb.3:                                # %x264_frame_push.exit
	movq	%rsi, -8(%rax)
	retq
.Lfunc_end15:
	.size	x264_frame_push_blank_unused, .Lfunc_end15-x264_frame_push_blank_unused
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_pop_blank_unused     # -- Begin function x264_frame_pop_blank_unused
	.p2align	4, 0x90
	.type	x264_frame_pop_blank_unused,@function
x264_frame_pop_blank_unused:            # @x264_frame_pop_blank_unused
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	14440(%rdi), %rcx
	cmpq	$0, (%rcx)
	je	.LBB16_4
# %bb.1:                                # %while.cond.i.preheader
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB16_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rcx,%rax,8)
	leaq	1(%rax), %rax
	jne	.LBB16_2
# %bb.3:                                # %x264_frame_pop.exit
	movl	%eax, %edx
	movq	(%rcx,%rdx,8), %rax
	movq	$0, (%rcx,%rdx,8)
	testq	%rax, %rax
	je	.LBB16_7
.LBB16_6:                               # %if.end6
	movl	$1, 3520(%rax)
	movl	$1, 15600(%rax)
.LBB16_7:                               # %cleanup
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB16_4:                               # %if.else
	.cfi_def_cfa_offset 16
	movl	$15632, %edi                    # imm = 0x3D10
	callq	x264_malloc@PLT
	testq	%rax, %rax
	jne	.LBB16_6
	jmp	.LBB16_7
.Lfunc_end16:
	.size	x264_frame_pop_blank_unused, .Lfunc_end16-x264_frame_pop_blank_unused
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_sort                 # -- Begin function x264_frame_sort
	.p2align	4, 0x90
	.type	x264_frame_sort,@function
x264_frame_sort:                        # @x264_frame_sort
	.cfi_startproc
# %bb.0:                                # %entry
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_11:                              # %for.cond.cleanup
                                        #   in Loop: Header=BB17_1 Depth=1
	testl	%ecx, %ecx
	jne	.LBB17_12
.LBB17_1:                               # %do.bodythread-pre-split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #     Child Loop BB17_8 Depth 2
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB17_12
# %bb.2:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	$1, %ecx
	movq	%rdi, %rdx
	testl	%esi, %esi
	jne	.LBB17_3
	jmp	.LBB17_8
	.p2align	4, 0x90
.LBB17_6:                               # %do.body19
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	%rax, (%rdx)
	movq	%r8, 8(%rdx)
	xorl	%ecx, %ecx
.LBB17_7:                               # %if.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	16(%rdx), %rax
	addq	$8, %rdx
	testq	%rax, %rax
	je	.LBB17_11
.LBB17_3:                               # %for.body
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %r8
	movl	4(%rax), %r9d
	cmpl	%r9d, 4(%r8)
	jg	.LBB17_6
# %bb.4:                                # %cond.end
                                        #   in Loop: Header=BB17_3 Depth=2
	jne	.LBB17_7
# %bb.5:                                # %cond.end
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	56(%rax), %r9d
	cmpl	%r9d, 56(%r8)
	jg	.LBB17_6
	jmp	.LBB17_7
	.p2align	4, 0x90
.LBB17_10:                              # %if.end.us
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	16(%rdx), %rax
	addq	$8, %rdx
	testq	%rax, %rax
	je	.LBB17_11
.LBB17_8:                               # %for.body.us
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %r8
	movl	56(%r8), %r9d
	cmpl	56(%rax), %r9d
	jle	.LBB17_10
# %bb.9:                                # %do.body19.us
                                        #   in Loop: Header=BB17_8 Depth=2
	movq	%rax, (%rdx)
	movq	%r8, 8(%rdx)
	xorl	%ecx, %ecx
	jmp	.LBB17_10
.LBB17_12:                              # %do.end32
	retq
.Lfunc_end17:
	.size	x264_frame_sort, .Lfunc_end17-x264_frame_sort
	.cfi_endproc
                                        # -- End function
	.globl	x264_weight_scale_plane         # -- Begin function x264_weight_scale_plane
	.p2align	4, 0x90
	.type	x264_weight_scale_plane,@function
x264_weight_scale_plane:                # @x264_weight_scale_plane
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
	movl	%edx, %r14d
	movl	96(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB18_6
# %bb.1:                                # %for.cond.preheader.lr.ph
	movl	%r9d, %r15d
	testl	%r9d, %r9d
	jle	.LBB18_6
# %bb.2:                                # %for.cond.preheader.us.preheader
	movl	%r8d, %r13d
	movq	%rcx, %r12
	movq	104(%rsp), %rbx
	movl	%r14d, %eax
	shll	$4, %eax
	movl	%r8d, %ecx
	shll	$4, %ecx
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	.p2align	4, 0x90
.LBB18_3:                               # %for.cond.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_4 Depth 2
	cmpl	$16, %edx
	movl	$16, %eax
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	cmovbl	%edx, %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	xorl	%ebp, %ebp
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB18_4:                               # %for.body.us
                                        #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%rbx), %rax
	leaq	(%rsi,%rbp), %rdi
	leaq	(%r12,%rbp), %rdx
	movl	%r14d, %esi
	movl	%r13d, %ecx
	movq	%rbx, %r8
	movl	4(%rsp), %r9d                   # 4-byte Reload
	callq	*32(%rax)
	movq	32(%rsp), %rsi                  # 8-byte Reload
	addq	$16, %rbp
	cmpl	%r15d, %ebp
	jl	.LBB18_4
# %bb.5:                                # %for.cond.for.cond.cleanup_crit_edge.us
                                        #   in Loop: Header=BB18_3 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leal	-16(%rcx), %eax
	addq	16(%rsp), %rsi                  # 8-byte Folded Reload
	addq	8(%rsp), %r12                   # 8-byte Folded Reload
	cmpl	$16, %ecx
	movl	%eax, %edx
	jg	.LBB18_3
.LBB18_6:                               # %while.end
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
.Lfunc_end18:
	.size	x264_weight_scale_plane, .Lfunc_end18-x264_weight_scale_plane
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_delete_list          # -- Begin function x264_frame_delete_list
	.p2align	4, 0x90
	.type	x264_frame_delete_list,@function
x264_frame_delete_list:                 # @x264_frame_delete_list
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB19_5
# %bb.1:                                # %while.cond.preheader
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB19_4
# %bb.2:                                # %while.body.preheader
	leaq	8(%rbx), %r14
	.p2align	4, 0x90
.LBB19_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	x264_frame_delete
	movq	(%r14), %rdi
	addq	$8, %r14
	testq	%rdi, %rdi
	jne	.LBB19_3
.LBB19_4:                               # %while.end
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.LBB19_5:                               # %cleanup
	.cfi_restore %rbx
	.cfi_restore %r14
	retq
.Lfunc_end19:
	.size	x264_frame_delete_list, .Lfunc_end19-x264_frame_delete_list
	.cfi_endproc
                                        # -- End function
	.globl	x264_synch_frame_list_init      # -- Begin function x264_synch_frame_list_init
	.p2align	4, 0x90
	.type	x264_synch_frame_list_init,@function
x264_synch_frame_list_init:             # @x264_synch_frame_list_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$-1, %ebx
	testl	%esi, %esi
	js	.LBB20_3
# %bb.1:                                # %if.end
	movl	%esi, 8(%rdi)
	movl	$0, 12(%rdi)
	movl	%esi, %eax
	leaq	8(,%rax,8), %r14
	movq	%rdi, %r15
	movl	%r14d, %edi
	callq	x264_malloc@PLT
	movq	%rax, (%r15)
	testq	%rax, %rax
	je	.LBB20_3
# %bb.2:                                # %do.end
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset@PLT
.LBB20_3:                               # %return
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	x264_synch_frame_list_init, .Lfunc_end20-x264_synch_frame_list_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_synch_frame_list_delete    # -- Begin function x264_synch_frame_list_delete
	.p2align	4, 0x90
	.type	x264_synch_frame_list_delete,@function
x264_synch_frame_list_delete:           # @x264_synch_frame_list_delete
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
	movq	(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB21_5
# %bb.1:                                # %while.cond.preheader.i
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB21_4
# %bb.2:                                # %while.body.i.preheader
	leaq	8(%rbx), %r14
	.p2align	4, 0x90
.LBB21_3:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	callq	x264_frame_delete
	movq	(%r14), %rdi
	addq	$8, %r14
	testq	%rdi, %rdi
	jne	.LBB21_3
.LBB21_4:                               # %while.end.i
	movq	%rbx, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.LBB21_5:                               # %x264_frame_delete_list.exit
	.cfi_def_cfa_offset 32
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	x264_synch_frame_list_delete, .Lfunc_end21-x264_synch_frame_list_delete
	.cfi_endproc
                                        # -- End function
	.globl	x264_synch_frame_list_push      # -- Begin function x264_synch_frame_list_push
	.p2align	4, 0x90
	.type	x264_synch_frame_list_push,@function
x264_synch_frame_list_push:             # @x264_synch_frame_list_push
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	12(%rdi), %rax
	cmpl	8(%rdi), %eax
	jne	.LBB22_2
	.p2align	4, 0x90
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB22_1
.LBB22_2:                               # %while.end
	movq	(%rdi), %rcx
	leal	1(%rax), %edx
	movl	%edx, 12(%rdi)
	movq	%rsi, (%rcx,%rax,8)
	retq
.Lfunc_end22:
	.size	x264_synch_frame_list_push, .Lfunc_end22-x264_synch_frame_list_push
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid input colorspace\n"
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Input picture width is greater than stride\n"
	.size	.L.str.1, 44

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
