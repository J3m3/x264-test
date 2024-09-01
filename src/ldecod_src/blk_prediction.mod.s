	.text
	.file	"blk_prediction.c"
	.globl	compute_residue                 # -- Begin function compute_residue
	.p2align	4, 0x90
	.type	compute_residue,@function
compute_residue:                        # @compute_residue
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
                                        # kill: def $r9d killed $r9d def $r9
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	56(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.LBB0_20
# %bb.1:                                # %for.body.lr.ph
	testl	%r9d, %r9d
	jle	.LBB0_20
# %bb.2:                                # %for.body.us.preheader
	movslq	%r8d, %rax
	movslq	%ecx, %rdx
	movq	%rax, %rcx
	movl	%r10d, %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	leal	-1(%r9), %eax
	leaq	(%rdx,%rax), %r8
	leaq	(,%r8,4), %r10
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	addq	%rax, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	addq	%r8, %r8
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movl	%r9d, %eax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483632, %eax               # imm = 0x7FFFFFF0
	leaq	(,%rax,4), %r8
	movq	%r8, -72(%rsp)                  # 8-byte Spill
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	leal	(%r9,%r9), %ebp
	andl	$-32, %ebp
	leaq	24(,%rcx,2), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	leaq	24(,%rdx,2), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leaq	48(,%rdx,4), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	xorl	%r12d, %r12d
	pxor	%xmm0, %xmm0
	movq	%r9, -112(%rsp)                 # 8-byte Spill
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_19:                               # %for.cond11.for.inc17_crit_edge.us
                                        #   in Loop: Header=BB0_3 Depth=1
	incq	%r12
	cmpq	-24(%rsp), %r12                 # 8-byte Folded Reload
	je	.LBB0_20
.LBB0_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_18 Depth 2
	movq	(%rdi,%r12,8), %r11
	leaq	(%r11,%rcx,2), %r14
	movq	(%rsi,%r12,8), %r10
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r10,%rdx,2), %rbx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r12,8), %r15
	leaq	(%r15,%rdx,4), %r13
	cmpl	$16, %r9d
	jae	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%r11d, %r11d
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	jne	.LBB0_13
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rdi, %r9
	movq	%rsi, %rcx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	addq	$4, %rax
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r11,%rdx), %r8
	addq	$2, %r8
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	addq	%r10, %rdx
	addq	$2, %rdx
	cmpq	%r8, %r13
	setb	%sil
	cmpq	%rax, %r14
	setb	%dil
	cmpq	%rdx, %r13
	setb	%r8b
	cmpq	%rax, %rbx
	setb	%al
	testb	%dil, %sil
	jne	.LBB0_6
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB0_3 Depth=1
	andb	%al, %r8b
	jne	.LBB0_6
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	-72(%rsp), %r13                 # 8-byte Folded Reload
	movq	-80(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rbx
	addq	%rax, %r14
	addq	-88(%rsp), %r11                 # 8-byte Folded Reload
	addq	-96(%rsp), %r10                 # 8-byte Folded Reload
	addq	-104(%rsp), %r15                # 8-byte Folded Reload
	xorl	%r8d, %r8d
	movq	%rcx, %rsi
	movq	%r9, %rdi
	.p2align	4, 0x90
.LBB0_9:                                # %vector.body
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%r11,%r8), %xmm1            # xmm1 = mem[0],zero
	movq	-16(%r11,%r8), %xmm2            # xmm2 = mem[0],zero
	movq	-8(%r11,%r8), %xmm3             # xmm3 = mem[0],zero
	movq	(%r11,%r8), %xmm4               # xmm4 = mem[0],zero
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	movq	-24(%r10,%r8), %xmm5            # xmm5 = mem[0],zero
	movq	-16(%r10,%r8), %xmm6            # xmm6 = mem[0],zero
	movq	-8(%r10,%r8), %xmm7             # xmm7 = mem[0],zero
	movq	(%r10,%r8), %xmm8               # xmm8 = mem[0],zero
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	psubd	%xmm5, %xmm1
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	psubd	%xmm6, %xmm2
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	psubd	%xmm7, %xmm3
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	psubd	%xmm8, %xmm4
	movdqu	%xmm1, -48(%r15,%r8,2)
	movdqu	%xmm2, -32(%r15,%r8,2)
	movdqu	%xmm3, -16(%r15,%r8,2)
	movdqu	%xmm4, (%r15,%r8,2)
	addq	$32, %r8
	cmpq	%r8, %rbp
	jne	.LBB0_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %r11d
	cmpl	-56(%rsp), %eax                 # 4-byte Folded Reload
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rcx                # 8-byte Reload
	je	.LBB0_19
	.p2align	4, 0x90
# %bb.11:                               # %for.body13.us.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	je	.LBB0_12
.LBB0_13:                               # %for.body13.us.prol.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	negl	%r8d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_14:                               # %for.body13.us.prol
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14), %eax
	addq	$2, %r14
	movzwl	(%rbx), %edx
	addq	$2, %rbx
	subl	%edx, %eax
	movl	%eax, (%r13)
	addq	$4, %r13
	decl	%r10d
	cmpl	%r10d, %r8d
	jne	.LBB0_14
# %bb.15:                               # %for.body13.us.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r11d, %r15d
	subl	%r10d, %r15d
	subl	%r9d, %r11d
	cmpl	$-4, %r11d
	ja	.LBB0_19
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%r11d, %r11d
	movq	%rcx, %rsi
	movq	%r9, %rdi
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movl	%r9d, %r8d
	subl	%r11d, %r8d
	andl	$3, %r8d
	jne	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	%r11d, %r15d
	subl	%r9d, %r11d
	cmpl	$-4, %r11d
	ja	.LBB0_19
.LBB0_17:                               # %for.body13.us.preheader1
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	%r9d, %r8d
	subl	%r15d, %r8d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB0_18:                               # %for.body13.us
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14,%r10,2), %eax
	movzwl	(%rbx,%r10,2), %edx
	subl	%edx, %eax
	movl	%eax, (%r13,%r10,4)
	movzwl	2(%r14,%r10,2), %eax
	movzwl	2(%rbx,%r10,2), %edx
	subl	%edx, %eax
	movl	%eax, 4(%r13,%r10,4)
	movzwl	4(%r14,%r10,2), %eax
	movzwl	4(%rbx,%r10,2), %edx
	subl	%edx, %eax
	movl	%eax, 8(%r13,%r10,4)
	movzwl	6(%r14,%r10,2), %eax
	movzwl	6(%rbx,%r10,2), %edx
	subl	%edx, %eax
	movl	%eax, 12(%r13,%r10,4)
	addq	$4, %r10
	cmpl	%r10d, %r8d
	jne	.LBB0_18
	jmp	.LBB0_19
.LBB0_20:                               # %for.end19
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
	.size	compute_residue, .Lfunc_end0-compute_residue
	.cfi_endproc
                                        # -- End function
	.globl	sample_reconstruct              # -- Begin function sample_reconstruct
	.p2align	4, 0x90
	.type	sample_reconstruct,@function
sample_reconstruct:                     # @sample_reconstruct
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 88
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r9d killed $r9d def $r9
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	88(%rsp), %edi
	testl	%edi, %edi
	jle	.LBB1_22
# %bb.1:                                # %for.body.lr.ph
	movl	%ecx, %r10d
	movl	104(%rsp), %eax
	leal	-1(%rax), %ecx
	movl	$1, %r11d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r11d
	testl	%r9d, %r9d
	jle	.LBB1_22
# %bb.2:                                # %for.body.us.preheader
	movl	96(%rsp), %ebx
	movslq	%r8d, %rcx
	movslq	%r10d, %r8
	movl	%edi, %edi
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	leal	-1(%r9), %edi
	leaq	(%rcx,%rdi), %r10
	addq	%r10, %r10
	movq	%r10, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	addq	%r8, %rdi
	leaq	(,%rdi,4), %r10
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	addq	%rdi, %rdi
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	movl	%r9d, %edi
	movq	%rdi, -48(%rsp)                 # 8-byte Spill
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	andl	$2147483632, %edi               # imm = 0x7FFFFFF0
	leaq	(,%rdi,4), %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	addl	%edi, %edi
	movq	%rdi, -72(%rsp)                 # 8-byte Spill
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movd	%eax, %xmm4
	movd	%ebx, %xmm1
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	leal	(%r9,%r9), %edi
	andl	$-32, %edi
	movq	%rdi, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leaq	24(,%rcx,2), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leaq	24(%r8,%r8), %rcx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	pxor	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	movss	%xmm4, %xmm3                    # xmm3 = xmm4[0],xmm3[1,2,3]
	movq	%r8, (%rsp)                     # 8-byte Spill
	leaq	48(,%r8,4), %rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r10d, %r10d
	movq	%r9, -112(%rsp)                 # 8-byte Spill
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -128(%rsp)                # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_21:                               # %for.cond11.for.inc18_crit_edge.us
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	24(%rsp), %r10                  # 8-byte Reload
	incq	%r10
	cmpq	-8(%rsp), %r10                  # 8-byte Folded Reload
	je	.LBB1_22
.LBB1_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r10,8), %rcx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leaq	(%rcx,%rdi,2), %r15
	movq	(%rsi,%r10,8), %rbp
	movq	(%rsp), %r8                     # 8-byte Reload
	leaq	(%rbp,%r8,2), %r14
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	movq	(%rdx,%r10,8), %rdi
	leaq	(%rdi,%r8,4), %r12
	cmpl	$16, %r9d
	jae	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%r8d, %r8d
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	je	.LBB1_12
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %r10
	addq	$2, %r10
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdi,%rdx), %r8
	addq	$4, %r8
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	addq	%rbp, %rdx
	addq	$2, %rdx
	cmpq	%r8, %r15
	setb	%r9b
	cmpq	%r10, %r12
	setb	%sil
	cmpq	%rdx, %r15
	setb	%r8b
	cmpq	%r10, %r14
	setb	%r10b
	testb	%sil, %r9b
	jne	.LBB1_6
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB1_3 Depth=1
	andb	%r10b, %r8b
	jne	.LBB1_6
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	addq	-64(%rsp), %r12                 # 8-byte Folded Reload
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r14
	addq	%rdx, %r15
	addq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	addq	-96(%rsp), %rbp                 # 8-byte Folded Reload
	addq	-104(%rsp), %rdi                # 8-byte Folded Reload
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	-80(%rsp), %r10                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_9:                                # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rdi,%r8,2), %xmm6
	movdqu	-32(%rdi,%r8,2), %xmm7
	movdqu	-16(%rdi,%r8,2), %xmm5
	movdqu	(%rdi,%r8,2), %xmm4
	paddd	%xmm0, %xmm6
	paddd	%xmm0, %xmm7
	paddd	%xmm0, %xmm5
	paddd	%xmm0, %xmm4
	psrad	%xmm3, %xmm6
	psrad	%xmm3, %xmm7
	psrad	%xmm3, %xmm5
	psrad	%xmm3, %xmm4
	movq	-24(%rbp,%r8), %xmm8            # xmm8 = mem[0],zero
	movq	-16(%rbp,%r8), %xmm9            # xmm9 = mem[0],zero
	movq	-8(%rbp,%r8), %xmm10            # xmm10 = mem[0],zero
	movq	(%rbp,%r8), %xmm11              # xmm11 = mem[0],zero
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	paddd	%xmm6, %xmm8
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	paddd	%xmm7, %xmm9
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	paddd	%xmm5, %xmm10
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	paddd	%xmm4, %xmm11
	movdqa	%xmm8, %xmm5
	pcmpgtd	%xmm2, %xmm5
	pand	%xmm8, %xmm5
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm2, %xmm6
	pand	%xmm9, %xmm6
	movdqa	%xmm10, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm10, %xmm7
	movdqa	%xmm11, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm11, %xmm4
	movdqa	%xmm1, %xmm8
	pcmpgtd	%xmm5, %xmm8
	pand	%xmm8, %xmm5
	pandn	%xmm1, %xmm8
	por	%xmm5, %xmm8
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pand	%xmm5, %xmm6
	pandn	%xmm1, %xmm5
	por	%xmm6, %xmm5
	movdqa	%xmm1, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm1, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm1, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm1, %xmm7
	por	%xmm4, %xmm7
	pshuflw	$232, %xmm8, %xmm4              # xmm4 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpcklqdq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0]
	pshuflw	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm6              # xmm6 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpcklqdq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0]
	movdqu	%xmm4, -24(%rcx,%r8)
	movdqu	%xmm5, -8(%rcx,%r8)
	addq	$32, %r8
	cmpq	%r8, %r10
	jne	.LBB1_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %r8d
	cmpl	-48(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB1_21
	.p2align	4, 0x90
# %bb.11:                               # %for.body13.us.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	jne	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	movl	%r8d, %ecx
	cmpl	-16(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB1_21
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%r8d, %r8d
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movl	%r9d, %ecx
	subl	%r8d, %ecx
	testb	$1, %cl
	je	.LBB1_12
.LBB1_13:                               # %for.body13.us.prol
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	(%r12), %edi
	addl	%r11d, %edi
	movl	%eax, %ecx
	sarl	%cl, %edi
	addq	$4, %r12
	movzwl	(%r14), %ecx
	addq	$2, %r14
	addl	%edi, %ecx
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
	cmpl	%ebx, %ecx
	cmovgel	%ebx, %ecx
	movw	%cx, (%r15)
	addq	$2, %r15
	leal	1(%r8), %ecx
	cmpl	-16(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB1_21
.LBB1_15:                               # %for.body13.us.preheader1
                                        #   in Loop: Header=BB1_3 Depth=1
	movl	%r9d, %r10d
	subl	%ecx, %r10d
	xorl	%edi, %edi
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_20:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	movw	%cx, 2(%r15,%rdi,2)
	addq	$2, %rdi
	cmpl	%edi, %r10d
	je	.LBB1_21
.LBB1_16:                               # %for.body13.us
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r12,%rdi,4), %r8d
	addl	%r11d, %r8d
	movl	%eax, %ecx
	sarl	%cl, %r8d
	movzwl	(%r14,%rdi,2), %ecx
	addl	%r8d, %ecx
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
	cmpl	%ebx, %ecx
	jl	.LBB1_18
# %bb.17:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	%ebx, %ecx
.LBB1_18:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	movw	%cx, (%r15,%rdi,2)
	movl	4(%r12,%rdi,4), %r8d
	addl	%r11d, %r8d
	movl	%eax, %ecx
	sarl	%cl, %r8d
	movzwl	2(%r14,%rdi,2), %ecx
	addl	%r8d, %ecx
	testl	%ecx, %ecx
	cmovlel	%r13d, %ecx
	cmpl	%ebx, %ecx
	jl	.LBB1_20
# %bb.19:                               # %for.body13.us
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	%ebx, %ecx
	jmp	.LBB1_20
.LBB1_22:                               # %for.end20
	addq	$32, %rsp
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
	.size	sample_reconstruct, .Lfunc_end1-sample_reconstruct
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
