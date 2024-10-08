	.text
	.file	"mc_prediction.c"
	.globl	allocate_pred_mem               # -- Begin function allocate_pred_mem
	.p2align	4, 0x90
	.type	allocate_pred_mem,@function
allocate_pred_mem:                      # @allocate_pred_mem
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
	movq	%rdi, %rbx
	addq	$1352, %rdi                     # imm = 0x548
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movl	%eax, %ebp
	leaq	1360(%rbx), %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movl	%eax, %r14d
	addl	%ebp, %r14d
	leaq	1376(%rbx), %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movl	%eax, %ebp
	leaq	1384(%rbx), %rdi
	movl	$16, %esi
	movl	$16, %edx
	callq	get_mem2Dpel@PLT
	movl	%eax, %r15d
	addl	%ebp, %r15d
	addl	%r14d, %r15d
	addq	$1368, %rbx                     # imm = 0x558
	movq	%rbx, %rdi
	movl	$21, %esi
	movl	$21, %edx
	callq	get_mem2Dint@PLT
	addl	%r15d, %eax
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
.Lfunc_end0:
	.size	allocate_pred_mem, .Lfunc_end0-allocate_pred_mem
	.cfi_endproc
                                        # -- End function
	.globl	free_pred_mem                   # -- Begin function free_pred_mem
	.p2align	4, 0x90
	.type	free_pred_mem,@function
free_pred_mem:                          # @free_pred_mem
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	1368(%rdi), %rdi
	callq	free_mem2Dint@PLT
	movq	1352(%rbx), %rdi
	callq	free_mem2Dpel@PLT
	movq	1360(%rbx), %rdi
	callq	free_mem2Dpel@PLT
	movq	1376(%rbx), %rdi
	callq	free_mem2Dpel@PLT
	movq	1384(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	free_mem2Dpel@PLT               # TAILCALL
.Lfunc_end1:
	.size	free_pred_mem, .Lfunc_end1-free_pred_mem
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_block_luma
.LCPI2_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI2_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.globl	get_block_luma
	.p2align	4, 0x90
	.type	get_block_luma,@function
get_block_luma:                         # @get_block_luma
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
	movq	%r9, %r14
	movl	%r8d, %r15d
	movl	%ecx, %ebx
	cmpl	$0, 384(%rdi)
	je	.LBB2_1
# %bb.85:                               # %if.then
	movzwl	296(%rsp), %ebp
	movl	$.Lstr.3, %edi
	callq	puts@PLT
	movq	(%r14), %rdi
	imull	%ebx, %r15d
	movslq	%r15d, %rdx
	addq	%rdx, %rdx
	movl	%ebp, %esi
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
	jmp	memset@PLT                      # TAILCALL
.LBB2_1:                                # %if.else
	.cfi_def_cfa_offset 256
	movq	304(%rsp), %rax
	movl	272(%rsp), %ecx
	movl	264(%rsp), %r8d
	movq	8(%rax), %r9
	cmpl	$0, 849280(%r9)
	je	.LBB2_4
# %bb.2:                                # %land.lhs.true
	movq	(%rax), %rax
	movslq	216(%rax), %rax
	testq	%rax, %rax
	jle	.LBB2_4
# %bb.3:                                # %cond.true
	movq	136(%rdi), %r9
	leaq	(%r9,%rax,8), %r9
	addq	$-8, %r9
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
	leaq	376(%rdi), %r9
.LBB2_5:                                # %cond.end
	movl	%esi, %r10d
	sarl	$2, %r10d
	movl	%edx, %r11d
	sarl	$2, %r11d
	addl	$2, %r8d
	cmpl	$-17, %r10d
	movl	$-18, %eax
	cmovgel	%r10d, %eax
	cmpl	%r8d, %eax
	cmovgel	%r8d, %eax
	addl	$2, %ecx
	cmpl	$-9, %r11d
	movl	$-10, %r10d
	cmovgel	%r11d, %r10d
	cmpl	%ecx, %r10d
	cmovgel	%ecx, %r10d
	movq	(%r9), %r8
	movl	%edx, %ecx
	orl	%esi, %ecx
	testb	$3, %cl
	je	.LBB2_6
# %bb.13:                               # %if.else26
	movl	288(%rsp), %edi
	andl	$3, %esi
	andl	$3, %edx
	je	.LBB2_14
# %bb.61:                               # %if.else45
	movq	280(%rsp), %rcx
	cmpl	$2, %esi
	je	.LBB2_68
# %bb.62:                               # %if.else45
	movl	256(%rsp), %r9d
	testl	%esi, %esi
	jne	.LBB2_73
# %bb.63:                               # %if.then48
	movslq	%r10d, %rcx
	leaq	(%r8,%rcx,8), %rsi
	cmpl	$2, %edx
	je	.LBB2_66
# %bb.64:                               # %if.then48
	cmpl	$1, %edx
	jne	.LBB2_67
# %bb.65:                               # %if.then51
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_01
	jmp	.LBB2_84
.LBB2_6:                                # %if.then19
	testl	%r15d, %r15d
	jle	.LBB2_84
# %bb.7:                                # %for.body.lr.ph.i
	movslq	%r10d, %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rdx
	addq	(%r8,%rcx,8), %rdx
	movslq	356(%rdi), %rcx
	movq	(%r14), %rax
	leal	-1(%r15), %esi
	cmpl	$3, %r15d
	jb	.LBB2_11
# %bb.8:                                # %for.body.lr.ph.i.new
	movl	%esi, %edi
	shrl	%edi
	incl	%edi
	andl	$-2, %edi
	leaq	(,%rcx,8), %r8
	leaq	(%rcx,%rcx), %r9
	leaq	(%r9,%r9), %r10
	.p2align	4, 0x90
.LBB2_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %r11
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	leaq	(%rdx,%r9), %rbx
	movups	(%rdx,%r9), %xmm0
	movups	16(%rdx,%r9), %xmm1
	movups	%xmm1, 48(%rax)
	movups	%xmm0, 32(%rax)
	leaq	(%rbx,%r9), %rdx
	movups	(%r9,%rbx), %xmm0
	movups	16(%r9,%rbx), %xmm1
	movups	%xmm1, 80(%rax)
	movups	%xmm0, 64(%rax)
	movdqu	(%r9,%rdx), %xmm0
	movdqu	16(%r9,%rdx), %xmm1
	movdqu	%xmm0, 96(%rax)
	movdqu	%xmm1, 112(%rax)
	subq	$-128, %rax
	addq	%r10, %rdx
	addl	$-2, %edi
	jne	.LBB2_9
# %bb.10:
	addq	%r8, %r11
	movq	%r11, %rdx
.LBB2_11:                               # %if.end127.loopexit.unr-lcssa
	testb	$2, %sil
	jne	.LBB2_84
# %bb.12:                               # %for.body.i.epil
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movdqu	(%rdx,%rcx,2), %xmm0
	movdqu	16(%rdx,%rcx,2), %xmm1
	movdqu	%xmm0, 32(%rax)
	movdqu	%xmm1, 48(%rax)
	jmp	.LBB2_84
.LBB2_14:                               # %if.then29
	movslq	%r10d, %rcx
	leaq	(%r8,%rcx,8), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	cmpl	$2, %esi
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	%r14, 168(%rsp)                 # 8-byte Spill
	je	.LBB2_31
# %bb.15:                               # %if.then29
	cmpl	$1, %esi
	jne	.LBB2_46
# %bb.16:                               # %if.then32
	testl	%r15d, %r15d
	jle	.LBB2_84
# %bb.17:                               # %for.body.lr.ph.i273
	testl	%ebx, %ebx
	jle	.LBB2_84
# %bb.18:                               # %for.body.us.preheader.i
	cltq
	movl	%r15d, %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leal	-1(%rbx), %ecx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	addq	%rcx, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	addq	%rax, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483616, %eax               # imm = 0x7FFFFFE0
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm10               # xmm10 = xmm0[0,0,0,0]
	leal	(%rbx,%rbx), %r15d
	andl	$-64, %r15d
	xorl	%r12d, %r12d
	pxor	%xmm11, %xmm11
	xorl	%r13d, %r13d
	movdqa	%xmm10, 176(%rsp)               # 16-byte Spill
	jmp	.LBB2_19
	.p2align	4, 0x90
.LBB2_30:                               # %for.cond13.for.inc41_crit_edge.us.i
                                        #   in Loop: Header=BB2_19 Depth=1
	incq	%r13
	cmpq	128(%rsp), %r13                 # 8-byte Folded Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	168(%rsp), %r14                 # 8-byte Reload
	je	.LBB2_84
.LBB2_19:                               # %for.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_24 Depth 2
                                        #     Child Loop BB2_27 Depth 2
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r13,8), %rcx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rcx,%rax,2), %r10
	leaq	(%rcx,%rax,2), %rbp
	addq	$-4, %rbp
	leaq	-2(%rcx,%rax,2), %r9
	leaq	(%rcx,%rax,2), %rsi
	addq	$4, %rsi
	leaq	(%rcx,%rax,2), %r8
	addq	$6, %r8
	movq	(%r14,%r13,8), %rdx
	cmpl	$32, %ebx
	jb	.LBB2_20
# %bb.21:                               # %vector.memcheck399
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rcx
	addq	$8, %rcx
	cmpq	%rcx, %rdx
	jae	.LBB2_23
# %bb.22:                               # %vector.memcheck399
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %rcx
	addq	$2, %rcx
	cmpq	%rcx, %rbp
	jae	.LBB2_23
.LBB2_20:                               #   in Loop: Header=BB2_19 Depth=1
	xorl	%r14d, %r14d
	movq	%r10, %rcx
	movq	%rdx, %r11
.LBB2_26:                               # %for.body15.us.i.preheader
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%r14d, %edx
	xorl	%r10d, %r10d
	jmp	.LBB2_27
	.p2align	4, 0x90
.LBB2_29:                               # %for.body15.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	movw	%r14w, (%r11,%r10,2)
	movzwl	(%rcx,%r10,2), %eax
	movzwl	%r14w, %ebx
	addl	%ebx, %eax
	incl	%eax
	shrl	%eax
	movw	%ax, (%r11,%r10,2)
	incq	%r10
	cmpl	%r10d, %edx
	je	.LBB2_30
.LBB2_27:                               # %for.body15.us.i
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%r10,2), %r14d
	movzwl	(%r8,%r10,2), %ebx
	addl	%r14d, %ebx
	movzwl	(%r9,%r10,2), %r14d
	movzwl	(%rsi,%r10,2), %eax
	addl	%r14d, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %ebx
	movzwl	(%rcx,%r10,2), %eax
	movzwl	2(%rcx,%r10,2), %r14d
	addl	%eax, %r14d
	leal	(%r14,%r14,4), %eax
	leal	(%rbx,%rax,4), %r14d
	addl	$16, %r14d
	sarl	$5, %r14d
	testl	%r14d, %r14d
	cmovlel	%r12d, %r14d
	cmpl	%edi, %r14d
	jl	.LBB2_29
# %bb.28:                               # %for.body15.us.i
                                        #   in Loop: Header=BB2_27 Depth=2
	movl	%edi, %r14d
	jmp	.LBB2_29
.LBB2_23:                               # %vector.ph408
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rbp
	leaq	(%r10,%rax), %rcx
	leaq	(%rdx,%rax), %r11
	addq	%rax, %r8
	addq	%rax, %rsi
	addq	%rax, %r9
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_24:                               # %vector.body425
                                        #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%r10,%r14), %xmm2
	movdqu	28(%r10,%r14), %xmm1
	movdqu	44(%r10,%r14), %xmm0
	movdqu	-4(%r10,%r14), %xmm9
	movdqu	-2(%r10,%r14), %xmm12
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	pxor	%xmm6, %xmm6
	movdqa	%xmm2, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	6(%r10,%r14), %xmm8
	movdqu	22(%r10,%r14), %xmm7
	movdqu	38(%r10,%r14), %xmm5
	movdqu	54(%r10,%r14), %xmm4
	movdqa	%xmm8, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm10, %xmm14
	movdqa	%xmm14, 48(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	paddd	%xmm9, %xmm8
	movdqa	%xmm7, %xmm9
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	paddd	%xmm11, %xmm9
	punpcklwd	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm7, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm10
	punpckhwd	%xmm6, %xmm10           # xmm10 = xmm10[4],xmm6[4],xmm10[5],xmm6[5],xmm10[6],xmm6[6],xmm10[7],xmm6[7]
	paddd	%xmm13, %xmm10
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	paddd	%xmm1, %xmm5
	movdqa	%xmm5, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, 32(%rsp)                 # 16-byte Spill
	movdqu	14(%r10,%r14), %xmm14
	movdqu	30(%r10,%r14), %xmm7
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpckhwd	%xmm6, %xmm12           # xmm12 = xmm12[4],xmm6[4],xmm12[5],xmm6[5],xmm12[6],xmm6[6],xmm12[7],xmm6[7]
	movdqa	%xmm14, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	movdqa	%xmm7, %xmm15
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	movdqu	4(%r10,%r14), %xmm3
	movdqa	%xmm3, %xmm13
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%r10,%r14), %xmm2
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	paddd	%xmm12, %xmm3
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm4, %xmm12
	movdqu	36(%r10,%r14), %xmm5
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm14, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%r10,%r14), %xmm1
	punpckhwd	%xmm6, %xmm7            # xmm7 = xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	paddd	%xmm7, %xmm5
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	52(%r10,%r14), %xmm15
	movdqa	%xmm15, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm1, %xmm15
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	(%r10,%r14), %xmm13
	movdqa	48(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%r10,%r14), %xmm12
	movdqa	64(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	144(%rsp), %xmm7                # 16-byte Reload
	psubd	%xmm0, %xmm7
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%r10,%r14), %xmm14
	movdqu	32(%r10,%r14), %xmm2
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	movdqa	%xmm14, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	movdqa	%xmm12, %xmm15
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm0, %xmm15
	movdqu	18(%r10,%r14), %xmm3
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm13, %xmm12
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm1, %xmm0
	movdqu	34(%r10,%r14), %xmm1
	punpcklwd	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	paddd	%xmm14, %xmm3
	movdqa	%xmm1, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm4, %xmm14
	movdqu	48(%r10,%r14), %xmm4
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	paddd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqu	50(%r10,%r14), %xmm13
	movdqa	%xmm13, %xmm2
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm5, %xmm2
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm4, %xmm13
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	movdqa	.LCPI2_0(%rip), %xmm5           # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm15           # xmm15 = xmm15[0],xmm4[0],xmm15[1],xmm4[1]
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm14           # xmm14 = xmm14[0],xmm4[0],xmm14[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm4              # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	.LCPI2_1(%rip), %xmm4           # xmm4 = [16,16,16,16]
	movdqa	48(%rsp), %xmm5                 # 16-byte Reload
	paddd	%xmm4, %xmm5
	paddd	%xmm15, %xmm5
	paddd	%xmm4, %xmm8
	paddd	%xmm12, %xmm8
	paddd	%xmm4, %xmm9
	paddd	%xmm0, %xmm9
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm4, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm3
	paddd	%xmm4, %xmm10
	paddd	%xmm14, %xmm10
	movdqa	%xmm7, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm11
	paddd	%xmm2, %xmm11
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	paddd	%xmm4, %xmm1
	paddd	%xmm13, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm8
	psrad	$5, %xmm5
	psrad	$5, %xmm3
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm9, %xmm7
	movdqa	%xmm3, %xmm12
	pcmpgtd	%xmm6, %xmm12
	pand	%xmm3, %xmm12
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm10, %xmm3
	movdqa	176(%rsp), %xmm10               # 16-byte Reload
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm11, %xmm8
	pxor	%xmm11, %xmm11
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm11, %xmm0
	pand	%xmm4, %xmm0
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm10, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm10, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm10, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm10, %xmm5
	pcmpgtd	%xmm12, %xmm5
	pand	%xmm5, %xmm12
	pandn	%xmm10, %xmm5
	por	%xmm12, %xmm5
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm1, %xmm7
	pandn	%xmm10, %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm9, %xmm6
	pand	%xmm6, %xmm9
	pandn	%xmm10, %xmm6
	por	%xmm9, %xmm6
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm10, %xmm9
	por	%xmm3, %xmm9
	movdqa	%xmm10, %xmm7
	pcmpgtd	%xmm0, %xmm7
	pand	%xmm7, %xmm0
	pandn	%xmm10, %xmm7
	por	%xmm0, %xmm7
	movdqa	%xmm10, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm10, %xmm0
	por	%xmm8, %xmm0
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm9, %xmm6
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm0, %xmm7
	movdqu	%xmm4, (%rdx,%r14)
	movdqu	%xmm5, 16(%rdx,%r14)
	movdqu	%xmm6, 32(%rdx,%r14)
	movdqu	%xmm7, 48(%rdx,%r14)
	movdqu	(%r10,%r14), %xmm0
	pavgw	%xmm4, %xmm0
	movdqu	16(%r10,%r14), %xmm1
	pavgw	%xmm5, %xmm1
	movdqu	32(%r10,%r14), %xmm2
	pavgw	%xmm6, %xmm2
	movdqu	48(%r10,%r14), %xmm3
	pavgw	%xmm7, %xmm3
	movdqu	%xmm0, (%rdx,%r14)
	movdqu	%xmm1, 16(%rdx,%r14)
	movdqu	%xmm2, 32(%rdx,%r14)
	movdqu	%xmm3, 48(%rdx,%r14)
	addq	$64, %r14
	cmpq	%r14, %r15
	jne	.LBB2_24
# %bb.25:                               # %middle.block405
                                        #   in Loop: Header=BB2_19 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	cmpl	104(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB2_30
	jmp	.LBB2_26
.LBB2_68:                               # %if.then68
	movslq	%r10d, %rsi
	leaq	(%r8,%rsi,8), %rsi
	cmpl	$2, %edx
	je	.LBB2_71
# %bb.69:                               # %if.then68
	cmpl	$1, %edx
	jne	.LBB2_72
# %bb.70:                               # %if.then71
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%eax, %r9d
	callq	get_luma_21
	jmp	.LBB2_84
.LBB2_73:                               # %if.else85
	cmpl	$2, %edx
	jne	.LBB2_77
# %bb.74:                               # %if.then88
	movslq	%r10d, %rdx
	movq	-16(%r8,%rdx,8), %rdx
	cmpl	$1, %esi
	jne	.LBB2_76
# %bb.75:                               # %if.then91
	movl	%edi, 8(%rsp)
	movl	%r9d, (%rsp)
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%eax, %r9d
	callq	get_luma_12
	jmp	.LBB2_84
.LBB2_31:                               # %if.then38
	testl	%r15d, %r15d
	jle	.LBB2_84
# %bb.32:                               # %for.body.lr.ph.i274
	testl	%ebx, %ebx
	jle	.LBB2_84
# %bb.33:                               # %for.body.us.preheader.i275
	cltq
	movl	%r15d, %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leal	-1(%rbx), %ecx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	addq	%rcx, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	addq	%rax, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483616, %eax               # imm = 0x7FFFFFE0
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm10               # xmm10 = xmm0[0,0,0,0]
	leal	(%rbx,%rbx), %r15d
	andl	$-64, %r15d
	xorl	%r12d, %r12d
	pxor	%xmm11, %xmm11
	xorl	%r13d, %r13d
	movdqa	%xmm10, 176(%rsp)               # 16-byte Spill
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_45:                               # %for.cond9.for.inc30_crit_edge.us.i
                                        #   in Loop: Header=BB2_34 Depth=1
	incq	%r13
	cmpq	128(%rsp), %r13                 # 8-byte Folded Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	168(%rsp), %r14                 # 8-byte Reload
	je	.LBB2_84
.LBB2_34:                               # %for.body.us.i277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_42 Depth 2
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r13,8), %rdx
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax,2), %rcx
	leaq	(%rdx,%rax,2), %rbp
	addq	$-4, %rbp
	leaq	-2(%rdx,%rax,2), %r9
	leaq	(%rdx,%rax,2), %rsi
	addq	$4, %rsi
	leaq	(%rdx,%rax,2), %r8
	addq	$6, %r8
	movq	(%r14,%r13,8), %r10
	cmpl	$32, %ebx
	jb	.LBB2_35
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rdx
	addq	$8, %rdx
	cmpq	%rdx, %r10
	jae	.LBB2_38
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r10,%rax), %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rbp
	jae	.LBB2_38
.LBB2_35:                               #   in Loop: Header=BB2_34 Depth=1
	xorl	%r14d, %r14d
	movq	%r10, %r11
	movq	%rcx, %rdx
.LBB2_41:                               # %for.body11.us.i.preheader
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r14d, %ecx
	xorl	%r10d, %r10d
	jmp	.LBB2_42
	.p2align	4, 0x90
.LBB2_44:                               # %for.body11.us.i
                                        #   in Loop: Header=BB2_42 Depth=2
	movw	%r14w, (%r11,%r10,2)
	incq	%r10
	cmpl	%r10d, %ecx
	je	.LBB2_45
.LBB2_42:                               # %for.body11.us.i
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%r10,2), %ebx
	movzwl	(%r8,%r10,2), %r14d
	addl	%ebx, %r14d
	movzwl	(%r9,%r10,2), %ebx
	movzwl	(%rsi,%r10,2), %eax
	addl	%ebx, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %r14d
	movzwl	(%rdx,%r10,2), %eax
	movzwl	2(%rdx,%r10,2), %ebx
	addl	%eax, %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%r14,%rax,4), %r14d
	addl	$16, %r14d
	sarl	$5, %r14d
	testl	%r14d, %r14d
	cmovlel	%r12d, %r14d
	cmpl	%edi, %r14d
	jl	.LBB2_44
# %bb.43:                               # %for.body11.us.i
                                        #   in Loop: Header=BB2_42 Depth=2
	movl	%edi, %r14d
	jmp	.LBB2_44
.LBB2_38:                               # %vector.ph
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rbp
	leaq	(%r10,%rax), %r11
	addq	%rax, %r8
	addq	%rax, %rsi
	leaq	(%rcx,%rax), %rdx
	addq	%rax, %r9
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_39:                               # %vector.body
                                        #   Parent Loop BB2_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rcx,%r14), %xmm2
	movdqu	28(%rcx,%r14), %xmm1
	movdqu	44(%rcx,%r14), %xmm0
	movdqu	-4(%rcx,%r14), %xmm9
	movdqu	-2(%rcx,%r14), %xmm12
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	pxor	%xmm6, %xmm6
	movdqa	%xmm2, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	6(%rcx,%r14), %xmm8
	movdqu	22(%rcx,%r14), %xmm7
	movdqu	38(%rcx,%r14), %xmm5
	movdqu	54(%rcx,%r14), %xmm4
	movdqa	%xmm8, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm10, %xmm14
	movdqa	%xmm14, 144(%rsp)               # 16-byte Spill
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	paddd	%xmm9, %xmm8
	movdqa	%xmm7, %xmm9
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	paddd	%xmm11, %xmm9
	punpcklwd	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm7, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm10
	punpckhwd	%xmm6, %xmm10           # xmm10 = xmm10[4],xmm6[4],xmm10[5],xmm6[5],xmm10[6],xmm6[6],xmm10[7],xmm6[7]
	paddd	%xmm13, %xmm10
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	paddd	%xmm1, %xmm5
	movdqa	%xmm5, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm4, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, 32(%rsp)                 # 16-byte Spill
	movdqu	14(%rcx,%r14), %xmm14
	movdqu	30(%rcx,%r14), %xmm7
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpckhwd	%xmm6, %xmm12           # xmm12 = xmm12[4],xmm6[4],xmm12[5],xmm6[5],xmm12[6],xmm6[6],xmm12[7],xmm6[7]
	movdqa	%xmm14, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	movdqa	%xmm7, %xmm15
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	movdqu	4(%rcx,%r14), %xmm3
	movdqa	%xmm3, %xmm13
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rcx,%r14), %xmm2
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	paddd	%xmm12, %xmm3
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm4, %xmm12
	movdqu	36(%rcx,%r14), %xmm5
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm14, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rcx,%r14), %xmm1
	punpckhwd	%xmm6, %xmm7            # xmm7 = xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	paddd	%xmm7, %xmm5
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	52(%rcx,%r14), %xmm15
	movdqa	%xmm15, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm1, %xmm15
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	(%rcx,%r14), %xmm13
	movdqa	144(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rcx,%r14), %xmm12
	movdqa	48(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	64(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rcx,%r14), %xmm14
	movdqu	32(%rcx,%r14), %xmm2
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	movdqa	%xmm14, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	movdqa	%xmm12, %xmm15
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm0, %xmm15
	movdqu	18(%rcx,%r14), %xmm3
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm13, %xmm12
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm1, %xmm0
	movdqu	34(%rcx,%r14), %xmm1
	punpcklwd	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	paddd	%xmm14, %xmm3
	movdqa	%xmm1, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm4, %xmm14
	movdqu	48(%rcx,%r14), %xmm4
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	paddd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqu	50(%rcx,%r14), %xmm13
	movdqa	%xmm13, %xmm2
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm5, %xmm2
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm4, %xmm13
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	movdqa	.LCPI2_0(%rip), %xmm7           # xmm7 = [20,20,20,20]
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	movdqa	.LCPI2_1(%rip), %xmm5           # xmm5 = [16,16,16,16]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm15           # xmm15 = xmm15[0],xmm4[0],xmm15[1],xmm4[1]
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm7, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm7, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm14           # xmm14 = xmm14[0],xmm4[0],xmm14[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm4              # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm7, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	144(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm5, %xmm4
	paddd	%xmm15, %xmm4
	paddd	%xmm5, %xmm8
	paddd	%xmm12, %xmm8
	paddd	%xmm5, %xmm9
	paddd	%xmm0, %xmm9
	movdqa	48(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm5, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm3
	paddd	%xmm5, %xmm10
	paddd	%xmm14, %xmm10
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm5, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm5, %xmm11
	paddd	%xmm2, %xmm11
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	paddd	%xmm5, %xmm1
	paddd	%xmm13, %xmm1
	movdqa	%xmm1, %xmm5
	psrad	$5, %xmm8
	psrad	$5, %xmm4
	psrad	$5, %xmm3
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm5
	psrad	$5, %xmm11
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm4, %xmm1
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm9, %xmm8
	movdqa	%xmm3, %xmm12
	pcmpgtd	%xmm6, %xmm12
	pand	%xmm3, %xmm12
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm10, %xmm3
	movdqa	176(%rsp), %xmm10               # 16-byte Reload
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	movdqa	%xmm11, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm11, %xmm7
	pxor	%xmm11, %xmm11
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm11, %xmm0
	pand	%xmm5, %xmm0
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm10, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm10, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm10, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm10, %xmm5
	pcmpgtd	%xmm12, %xmm5
	pand	%xmm5, %xmm12
	pandn	%xmm10, %xmm5
	por	%xmm12, %xmm5
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm10, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm9, %xmm6
	pand	%xmm6, %xmm9
	pandn	%xmm10, %xmm6
	por	%xmm9, %xmm6
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm3, %xmm8
	pand	%xmm8, %xmm3
	pandn	%xmm10, %xmm8
	por	%xmm3, %xmm8
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm10, %xmm3
	por	%xmm0, %xmm3
	movdqa	%xmm10, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm10, %xmm0
	por	%xmm7, %xmm0
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm8, %xmm6
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	packssdw	%xmm0, %xmm3
	movdqu	%xmm4, (%r10,%r14)
	movdqu	%xmm5, 16(%r10,%r14)
	movdqu	%xmm6, 32(%r10,%r14)
	movdqu	%xmm3, 48(%r10,%r14)
	addq	$64, %r14
	cmpq	%r14, %r15
	jne	.LBB2_39
# %bb.40:                               # %middle.block
                                        #   in Loop: Header=BB2_34 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	cmpl	104(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB2_45
	jmp	.LBB2_41
.LBB2_46:                               # %if.else41
	testl	%r15d, %r15d
	jle	.LBB2_84
# %bb.47:                               # %for.body.lr.ph.i295
	testl	%ebx, %ebx
	jle	.LBB2_84
# %bb.48:                               # %for.body.us.preheader.i296
	cltq
	movl	%r15d, %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leal	-1(%rbx), %ecx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	addq	%rcx, %rax
	addq	%rcx, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	addq	%rax, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	%ebx, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483616, %eax               # imm = 0x7FFFFFE0
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	addl	%eax, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm10               # xmm10 = xmm0[0,0,0,0]
	leal	(%rbx,%rbx), %r15d
	andl	$-64, %r15d
	xorl	%r12d, %r12d
	pxor	%xmm11, %xmm11
	xorl	%r13d, %r13d
	movdqa	%xmm10, 176(%rsp)               # 16-byte Spill
	jmp	.LBB2_49
	.p2align	4, 0x90
.LBB2_60:                               # %for.cond13.for.inc42_crit_edge.us.i
                                        #   in Loop: Header=BB2_49 Depth=1
	incq	%r13
	cmpq	128(%rsp), %r13                 # 8-byte Folded Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	168(%rsp), %r14                 # 8-byte Reload
	je	.LBB2_84
.LBB2_49:                               # %for.body.us.i298
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_54 Depth 2
                                        #     Child Loop BB2_57 Depth 2
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r13,8), %r10
	movq	136(%rsp), %rax                 # 8-byte Reload
	leaq	(%r10,%rax,2), %rcx
	leaq	(%r10,%rax,2), %rbp
	addq	$-4, %rbp
	leaq	-2(%r10,%rax,2), %r9
	leaq	(%r10,%rax,2), %rsi
	addq	$4, %rsi
	leaq	(%r10,%rax,2), %r8
	addq	$6, %r8
	movq	(%r14,%r13,8), %rdx
	cmpl	$32, %ebx
	jb	.LBB2_50
# %bb.51:                               # %vector.memcheck489
                                        #   in Loop: Header=BB2_49 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %r10
	addq	$8, %r10
	cmpq	%r10, %rdx
	jae	.LBB2_53
# %bb.52:                               # %vector.memcheck489
                                        #   in Loop: Header=BB2_49 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %r10
	addq	$2, %r10
	cmpq	%r10, %rbp
	jae	.LBB2_53
.LBB2_50:                               #   in Loop: Header=BB2_49 Depth=1
	xorl	%r14d, %r14d
	movq	%rcx, %r10
	movq	%rdx, %r11
.LBB2_56:                               # %for.body15.us.i306.preheader
                                        #   in Loop: Header=BB2_49 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%r14d, %ecx
	xorl	%edx, %edx
	jmp	.LBB2_57
	.p2align	4, 0x90
.LBB2_59:                               # %for.body15.us.i306
                                        #   in Loop: Header=BB2_57 Depth=2
	movw	%r14w, (%r11,%rdx,2)
	movzwl	2(%r10,%rdx,2), %eax
	movzwl	%r14w, %ebx
	addl	%ebx, %eax
	incl	%eax
	shrl	%eax
	movw	%ax, (%r11,%rdx,2)
	incq	%rdx
	cmpl	%edx, %ecx
	je	.LBB2_60
.LBB2_57:                               # %for.body15.us.i306
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%rdx,2), %ebx
	movzwl	(%r8,%rdx,2), %r14d
	addl	%ebx, %r14d
	movzwl	(%r9,%rdx,2), %ebx
	movzwl	(%rsi,%rdx,2), %eax
	addl	%ebx, %eax
	leal	(%rax,%rax,4), %eax
	subl	%eax, %r14d
	movzwl	(%r10,%rdx,2), %eax
	movzwl	2(%r10,%rdx,2), %ebx
	addl	%eax, %ebx
	leal	(%rbx,%rbx,4), %eax
	leal	(%r14,%rax,4), %r14d
	addl	$16, %r14d
	sarl	$5, %r14d
	testl	%r14d, %r14d
	cmovlel	%r12d, %r14d
	cmpl	%edi, %r14d
	jl	.LBB2_59
# %bb.58:                               # %for.body15.us.i306
                                        #   in Loop: Header=BB2_57 Depth=2
	movl	%edi, %r14d
	jmp	.LBB2_59
.LBB2_53:                               # %vector.ph498
                                        #   in Loop: Header=BB2_49 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rbp
	leaq	(%rcx,%rax), %r10
	leaq	(%rdx,%rax), %r11
	addq	%rax, %r8
	addq	%rax, %rsi
	addq	%rax, %r9
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_54:                               # %vector.body515
                                        #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rcx,%r14), %xmm2
	movdqu	28(%rcx,%r14), %xmm1
	movdqu	44(%rcx,%r14), %xmm0
	movdqu	-4(%rcx,%r14), %xmm9
	movdqu	-2(%rcx,%r14), %xmm12
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	pxor	%xmm6, %xmm6
	movdqa	%xmm2, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	6(%rcx,%r14), %xmm8
	movdqu	22(%rcx,%r14), %xmm7
	movdqu	38(%rcx,%r14), %xmm5
	movdqu	54(%rcx,%r14), %xmm4
	movdqa	%xmm8, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm10, %xmm14
	movdqa	%xmm14, 48(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	paddd	%xmm9, %xmm8
	movdqa	%xmm7, %xmm9
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	paddd	%xmm11, %xmm9
	punpcklwd	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm7, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm10
	punpckhwd	%xmm6, %xmm10           # xmm10 = xmm10[4],xmm6[4],xmm10[5],xmm6[5],xmm10[6],xmm6[6],xmm10[7],xmm6[7]
	paddd	%xmm13, %xmm10
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	paddd	%xmm1, %xmm5
	movdqa	%xmm5, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, 32(%rsp)                 # 16-byte Spill
	movdqu	14(%rcx,%r14), %xmm14
	movdqu	30(%rcx,%r14), %xmm7
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpckhwd	%xmm6, %xmm12           # xmm12 = xmm12[4],xmm6[4],xmm12[5],xmm6[5],xmm12[6],xmm6[6],xmm12[7],xmm6[7]
	movdqa	%xmm14, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	movdqa	%xmm7, %xmm15
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	movdqu	4(%rcx,%r14), %xmm3
	movdqa	%xmm3, %xmm13
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rcx,%r14), %xmm2
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	paddd	%xmm12, %xmm3
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm4, %xmm12
	movdqu	36(%rcx,%r14), %xmm5
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm14, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rcx,%r14), %xmm1
	punpckhwd	%xmm6, %xmm7            # xmm7 = xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	paddd	%xmm7, %xmm5
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	movdqu	52(%rcx,%r14), %xmm15
	movdqa	%xmm15, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm0, %xmm4
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm1, %xmm15
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqu	(%rcx,%r14), %xmm13
	movdqa	48(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rcx,%r14), %xmm12
	movdqa	64(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	144(%rsp), %xmm7                # 16-byte Reload
	psubd	%xmm0, %xmm7
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rcx,%r14), %xmm14
	movdqu	32(%rcx,%r14), %xmm2
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	movdqa	%xmm14, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	movdqa	%xmm12, %xmm15
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm0, %xmm15
	movdqu	18(%rcx,%r14), %xmm3
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm13, %xmm12
	movdqa	%xmm3, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm1, %xmm0
	movdqu	34(%rcx,%r14), %xmm1
	punpcklwd	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	paddd	%xmm14, %xmm3
	movdqa	%xmm1, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm4, %xmm14
	movdqu	48(%rcx,%r14), %xmm4
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	paddd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqu	50(%rcx,%r14), %xmm13
	movdqa	%xmm13, %xmm2
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm5, %xmm2
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm4, %xmm13
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	movdqa	.LCPI2_0(%rip), %xmm5           # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm15           # xmm15 = xmm15[0],xmm4[0],xmm15[1],xmm4[1]
	pshufd	$245, %xmm12, %xmm4             # xmm4 = xmm12[1,1,3,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm14           # xmm14 = xmm14[0],xmm4[0],xmm14[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm4              # xmm4 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	.LCPI2_1(%rip), %xmm4           # xmm4 = [16,16,16,16]
	movdqa	48(%rsp), %xmm5                 # 16-byte Reload
	paddd	%xmm4, %xmm5
	paddd	%xmm15, %xmm5
	paddd	%xmm4, %xmm8
	paddd	%xmm12, %xmm8
	paddd	%xmm4, %xmm9
	paddd	%xmm0, %xmm9
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm4, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, %xmm3
	paddd	%xmm4, %xmm10
	paddd	%xmm14, %xmm10
	movdqa	%xmm7, %xmm0
	paddd	%xmm4, %xmm0
	paddd	%xmm1, %xmm0
	paddd	%xmm4, %xmm11
	paddd	%xmm2, %xmm11
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	paddd	%xmm4, %xmm1
	paddd	%xmm13, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm8
	psrad	$5, %xmm5
	psrad	$5, %xmm3
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm5, %xmm1
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm8, %xmm2
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm9, %xmm7
	movdqa	%xmm3, %xmm12
	pcmpgtd	%xmm6, %xmm12
	pand	%xmm3, %xmm12
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm10, %xmm3
	movdqa	176(%rsp), %xmm10               # 16-byte Reload
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm6, %xmm9
	pand	%xmm0, %xmm9
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm11, %xmm8
	pxor	%xmm11, %xmm11
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm11, %xmm0
	pand	%xmm4, %xmm0
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm10, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm10, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm10, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm10, %xmm5
	pcmpgtd	%xmm12, %xmm5
	pand	%xmm5, %xmm12
	pandn	%xmm10, %xmm5
	por	%xmm12, %xmm5
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm7, %xmm1
	pand	%xmm1, %xmm7
	pandn	%xmm10, %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm9, %xmm6
	pand	%xmm6, %xmm9
	pandn	%xmm10, %xmm6
	por	%xmm9, %xmm6
	movdqa	%xmm10, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm10, %xmm9
	por	%xmm3, %xmm9
	movdqa	%xmm10, %xmm7
	pcmpgtd	%xmm0, %xmm7
	pand	%xmm7, %xmm0
	pandn	%xmm10, %xmm7
	por	%xmm0, %xmm7
	movdqa	%xmm10, %xmm0
	pcmpgtd	%xmm8, %xmm0
	pand	%xmm0, %xmm8
	pandn	%xmm10, %xmm0
	por	%xmm8, %xmm0
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm9, %xmm6
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm0, %xmm7
	movdqu	%xmm4, (%rdx,%r14)
	movdqu	%xmm5, 16(%rdx,%r14)
	movdqu	%xmm6, 32(%rdx,%r14)
	movdqu	%xmm7, 48(%rdx,%r14)
	movdqu	2(%rcx,%r14), %xmm0
	pavgw	%xmm4, %xmm0
	movdqu	18(%rcx,%r14), %xmm1
	pavgw	%xmm5, %xmm1
	movdqu	34(%rcx,%r14), %xmm2
	pavgw	%xmm6, %xmm2
	movdqu	50(%rcx,%r14), %xmm3
	pavgw	%xmm7, %xmm3
	movdqu	%xmm0, (%rdx,%r14)
	movdqu	%xmm1, 16(%rdx,%r14)
	movdqu	%xmm2, 32(%rdx,%r14)
	movdqu	%xmm3, 48(%rdx,%r14)
	addq	$64, %r14
	cmpq	%r14, %r15
	jne	.LBB2_54
# %bb.55:                               # %middle.block495
                                        #   in Loop: Header=BB2_49 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	cmpl	104(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB2_60
	jmp	.LBB2_56
.LBB2_77:                               # %if.else98
	movslq	%r10d, %rcx
	leaq	(%r8,%rcx,8), %rcx
	cmpl	$1, %esi
	jne	.LBB2_81
# %bb.78:                               # %if.then101
	cmpl	$1, %edx
	jne	.LBB2_80
# %bb.79:                               # %if.then104
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_11
	jmp	.LBB2_84
.LBB2_66:                               # %if.then57
	movq	-16(%rsi), %rsi
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_02
	jmp	.LBB2_84
.LBB2_71:                               # %if.then77
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%eax, %r9d
	callq	get_luma_22
	jmp	.LBB2_84
.LBB2_67:                               # %if.else60
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_03
	jmp	.LBB2_84
.LBB2_72:                               # %if.else80
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%eax, %r9d
	callq	get_luma_23
	jmp	.LBB2_84
.LBB2_76:                               # %if.else94
	movl	%edi, 8(%rsp)
	movl	%r9d, (%rsp)
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movl	%r15d, %ecx
	movl	%ebx, %r8d
	movl	%eax, %r9d
	callq	get_luma_32
	jmp	.LBB2_84
.LBB2_81:                               # %if.else111
	cmpl	$1, %edx
	jne	.LBB2_83
# %bb.82:                               # %if.then114
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_31
	jmp	.LBB2_84
.LBB2_80:                               # %if.else107
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_13
	jmp	.LBB2_84
.LBB2_83:                               # %if.else117
	movl	%edi, (%rsp)
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	movl	%eax, %r8d
	callq	get_luma_33
.LBB2_84:                               # %if.end127
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
.Lfunc_end2:
	.size	get_block_luma, .Lfunc_end2-get_block_luma
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_01
.LCPI3_0:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI3_1:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI3_2:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_01,@function
get_luma_01:                            # @get_luma_01
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
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	movq	%rdi, 120(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB3_21
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	jle	.LBB3_21
# %bb.2:                                # %for.body.us.preheader
	movslq	%r8d, %rdi
	movslq	%r9d, %r8
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movslq	%esi, %rax
	negq	%rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %rax
	movq	-112(%rsp), %rcx                # 8-byte Reload
	addq	-16(%rcx), %rax
	movl	%edx, %ecx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leal	-1(%rsi), %r9d
	leaq	2(,%r9,2), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	leaq	(%r8,%r8), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	2(%rdx,%r9,2), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	leaq	(,%r8,4), %rdx
	leaq	2(%rdx,%r9,2), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	leaq	(,%r8,8), %rdx
	leaq	2(%rdx,%r9,2), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	leaq	(%r8,%r9), %rdx
	leaq	2(%rdx,%rdx), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%r9,2), %rdx
	addq	$2, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	addq	%rdi, %r9
	addq	%r9, %r9
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	movl	%esi, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movl	256(%rsp), %r12d
	movd	%r12d, %xmm0
	pshufd	$0, %xmm0, %xmm13               # xmm13 = xmm0[0,0,0,0]
	leal	(%rsi,%rsi), %ebx
	andl	$-64, %ebx
	leaq	(%rcx,%rcx,2), %r9
	addq	$48, %r9
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	leaq	48(%rcx,%rcx,4), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movdqa	.LCPI3_0(%rip), %xmm7           # xmm7 = [9223372039002259456,9223372039002259456]
	pxor	%xmm12, %xmm12
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	leaq	48(%r8,%r8), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	leaq	48(,%r8,4), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	%r8, 104(%rsp)                  # 8-byte Spill
	leaq	48(,%r8,8), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	leaq	48(,%rdi,2), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movdqa	%xmm13, 144(%rsp)               # 16-byte Spill
	movq	%rbx, 136(%rsp)                 # 8-byte Spill
	pxor	%xmm11, %xmm11
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_19:                               # %for.cond16.for.end_crit_edge.us.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	subq	%rax, %r14
.LBB3_20:                               # %for.cond16.for.end_crit_edge.us
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	128(%rsp), %rdi                 # 8-byte Reload
	incq	%rdi
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax,2), %rax
	cmpq	88(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB3_21
.LBB3_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_13 Depth 2
                                        #     Child Loop BB3_16 Depth 2
	movq	104(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx,2), %r14
	leaq	(%r14,%rdx,2), %r13
	leaq	(,%rdx,2), %r11
	addq	%r13, %r11
	leaq	(%r11,%rdx,2), %rcx
	leaq	(%rcx,%rdx,2), %rsi
	movq	120(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx,%rdi,8), %r15
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	(%rdx,%rdi,8), %r8
	movq	112(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r8,%rdx,2), %rbp
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	movq	%r13, -104(%rsp)                # 8-byte Spill
	jae	.LBB3_5
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	%r15, %r10
	xorl	%r15d, %r15d
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	%r14, %r12
	movq	72(%rsp), %r14                  # 8-byte Reload
	leaq	(%r15,%r14), %r10
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %rdx
	movq	56(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %rdi
	movq	48(%rsp), %r9                   # 8-byte Reload
	leaq	(%rax,%r9), %rbx
	movq	%rdi, %xmm0
	movq	40(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r9
	movq	%rdx, %xmm1
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movq	%r9, %xmm2
	leaq	(%rax,%r14), %r9
	movq	%rbx, %xmm3
	movq	80(%rsp), %rdx                  # 8-byte Reload
	leaq	2(%r8,%rdx), %rdx
	movq	%r15, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm7, %xmm3
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%r13, %xmm1
	movq	%r11, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%r12, -128(%rsp)                # 8-byte Spill
	movq	%r12, %xmm1
	movq	%rcx, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%r10, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm7, %xmm3
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm7, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdi, %r15
	setb	%dil
	cmpq	%r10, %rsi
	setb	%bl
	cmpq	%r9, %r15
	setb	%r9b
	cmpq	%r10, %rax
	setb	%r14b
	cmpq	%rdx, %r15
	setb	%dl
	cmpq	%r10, %rbp
	setb	%r10b
	movmskps	%xmm5, %r12d
	testl	%r12d, %r12d
	jne	.LBB3_6
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	andb	%bl, %dil
	movl	256(%rsp), %r12d
	jne	.LBB3_8
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	andb	%r14b, %r9b
	jne	.LBB3_8
# %bb.11:                               # %vector.memcheck
                                        #   in Loop: Header=BB3_3 Depth=1
	andb	%r10b, %dl
	movq	-128(%rsp), %r14                # 8-byte Reload
	jne	.LBB3_4
# %bb.12:                               # %vector.ph
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %rdx
	addq	%rdi, %rbp
	leaq	(%r15,%rdi), %r10
	addq	%rdi, %rsi
	addq	%rdi, %rcx
	addq	%rdi, %r11
	addq	%rdi, -104(%rsp)                # 8-byte Folded Spill
	addq	%rdi, %r14
	movq	%r14, -128(%rsp)                # 8-byte Spill
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %r14
	movq	-24(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %r13
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leaq	(%rax,%rdi), %r12
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %rbx
	movq	(%rsp), %rdi                    # 8-byte Reload
	leaq	(%rax,%rdi), %r9
	addq	-40(%rsp), %r8                  # 8-byte Folded Reload
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_13:                               # %vector.body
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%rdi), %xmm4
	movdqu	16(%rax,%rdi), %xmm2
	movdqu	32(%rax,%rdi), %xmm1
	movdqu	48(%rax,%rdi), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm12, %xmm5           # xmm5 = xmm5[4],xmm12[4],xmm5[5],xmm12[5],xmm5[6],xmm12[6],xmm5[7],xmm12[7]
	punpcklwd	%xmm12, %xmm4           # xmm4 = xmm4[0],xmm12[0],xmm4[1],xmm12[1],xmm4[2],xmm12[2],xmm4[3],xmm12[3]
	movdqa	%xmm2, %xmm6
	punpckhwd	%xmm12, %xmm6           # xmm6 = xmm6[4],xmm12[4],xmm6[5],xmm12[5],xmm6[6],xmm12[6],xmm6[7],xmm12[7]
	punpcklwd	%xmm12, %xmm2           # xmm2 = xmm2[0],xmm12[0],xmm2[1],xmm12[1],xmm2[2],xmm12[2],xmm2[3],xmm12[3]
	movdqa	%xmm1, %xmm12
	punpckhwd	%xmm11, %xmm12          # xmm12 = xmm12[4],xmm11[4],xmm12[5],xmm11[5],xmm12[6],xmm11[6],xmm12[7],xmm11[7]
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm11, %xmm3           # xmm3 = xmm3[4],xmm11[4],xmm3[5],xmm11[5],xmm3[6],xmm11[6],xmm3[7],xmm11[7]
	punpcklwd	%xmm11, %xmm0           # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3]
	movdqu	-48(%r9,%rdi), %xmm9
	movdqu	-32(%r9,%rdi), %xmm15
	movdqu	-16(%r9,%rdi), %xmm8
	movdqu	(%r9,%rdi), %xmm7
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	paddd	%xmm5, %xmm10
	movdqa	%xmm10, -80(%rsp)               # 16-byte Spill
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm15, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	paddd	%xmm6, %xmm10
	punpcklwd	%xmm11, %xmm15          # xmm15 = xmm15[0],xmm11[0],xmm15[1],xmm11[1],xmm15[2],xmm11[2],xmm15[3],xmm11[3]
	paddd	%xmm2, %xmm15
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	paddd	%xmm12, %xmm2
	movdqa	%xmm2, -96(%rsp)                # 16-byte Spill
	punpcklwd	%xmm11, %xmm8           # xmm8 = xmm8[0],xmm11[0],xmm8[1],xmm11[1],xmm8[2],xmm11[2],xmm8[3],xmm11[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm7, %xmm12
	punpckhwd	%xmm11, %xmm12          # xmm12 = xmm12[4],xmm11[4],xmm12[5],xmm11[5],xmm12[6],xmm11[6],xmm12[7],xmm11[7]
	paddd	%xmm3, %xmm12
	punpcklwd	%xmm11, %xmm7           # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3]
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, -64(%rsp)                # 16-byte Spill
	movdqu	-48(%r14,%rdi), %xmm0
	movdqu	-32(%r14,%rdi), %xmm4
	movdqu	-16(%r14,%rdi), %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	punpckhwd	%xmm11, %xmm0           # xmm0 = xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	movdqa	%xmm4, %xmm6
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	punpckhwd	%xmm11, %xmm4           # xmm4 = xmm4[4],xmm11[4],xmm4[5],xmm11[5],xmm4[6],xmm11[6],xmm4[7],xmm11[7]
	movdqa	%xmm2, %xmm5
	punpcklwd	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1],xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	movdqu	-48(%rbx,%rdi), %xmm3
	movdqa	%xmm3, %xmm14
	punpcklwd	%xmm11, %xmm14          # xmm14 = xmm14[0],xmm11[0],xmm14[1],xmm11[1],xmm14[2],xmm11[2],xmm14[3],xmm11[3]
	paddd	%xmm1, %xmm14
	movdqu	-32(%rbx,%rdi), %xmm1
	punpckhwd	%xmm11, %xmm3           # xmm3 = xmm3[4],xmm11[4],xmm3[5],xmm11[5],xmm3[6],xmm11[6],xmm3[7],xmm11[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	paddd	%xmm6, %xmm13
	movdqu	-16(%rbx,%rdi), %xmm7
	punpckhwd	%xmm11, %xmm1           # xmm1 = xmm1[4],xmm11[4],xmm1[5],xmm11[5],xmm1[6],xmm11[6],xmm1[7],xmm11[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm11, %xmm4           # xmm4 = xmm4[0],xmm11[0],xmm4[1],xmm11[1],xmm4[2],xmm11[2],xmm4[3],xmm11[3]
	paddd	%xmm5, %xmm4
	movdqu	(%r14,%rdi), %xmm0
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	punpckhwd	%xmm11, %xmm7           # xmm7 = xmm7[4],xmm11[4],xmm7[5],xmm11[5],xmm7[6],xmm11[6],xmm7[7],xmm11[7]
	paddd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm6
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	movdqu	(%rbx,%rdi), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1],xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	paddd	%xmm6, %xmm5
	punpckhwd	%xmm11, %xmm0           # xmm0 = xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-80(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm15
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm8, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm7, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-64(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -64(%rsp)                # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm12
	movdqu	-48(%r13,%rdi), %xmm2
	movdqu	-32(%r13,%rdi), %xmm13
	movdqu	-16(%r13,%rdi), %xmm6
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm11, %xmm1           # xmm1 = xmm1[4],xmm11[4],xmm1[5],xmm11[5],xmm1[6],xmm11[6],xmm1[7],xmm11[7]
	punpcklwd	%xmm11, %xmm2           # xmm2 = xmm2[0],xmm11[0],xmm2[1],xmm11[1],xmm2[2],xmm11[2],xmm2[3],xmm11[3]
	movdqa	%xmm13, %xmm7
	punpckhwd	%xmm11, %xmm7           # xmm7 = xmm7[4],xmm11[4],xmm7[5],xmm11[5],xmm7[6],xmm11[6],xmm7[7],xmm11[7]
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	movdqa	%xmm6, %xmm8
	punpckhwd	%xmm11, %xmm8           # xmm8 = xmm8[4],xmm11[4],xmm8[5],xmm11[5],xmm8[6],xmm11[6],xmm8[7],xmm11[7]
	movdqu	-48(%r12,%rdi), %xmm0
	movdqa	%xmm0, %xmm5
	punpckhwd	%xmm11, %xmm5           # xmm5 = xmm5[4],xmm11[4],xmm5[5],xmm11[5],xmm5[6],xmm11[6],xmm5[7],xmm11[7]
	paddd	%xmm1, %xmm5
	movdqu	-32(%r12,%rdi), %xmm1
	punpcklwd	%xmm11, %xmm0           # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm11, %xmm4           # xmm4 = xmm4[4],xmm11[4],xmm4[5],xmm11[5],xmm4[6],xmm11[6],xmm4[7],xmm11[7]
	paddd	%xmm7, %xmm4
	movdqu	-16(%r12,%rdi), %xmm3
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	paddd	%xmm13, %xmm1
	movdqa	%xmm3, %xmm14
	punpckhwd	%xmm11, %xmm14          # xmm14 = xmm14[4],xmm11[4],xmm14[5],xmm11[5],xmm14[6],xmm11[6],xmm14[7],xmm11[7]
	paddd	%xmm8, %xmm14
	movdqu	(%r13,%rdi), %xmm7
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	punpcklwd	%xmm11, %xmm3           # xmm3 = xmm3[0],xmm11[0],xmm3[1],xmm11[1],xmm3[2],xmm11[2],xmm3[3],xmm11[3]
	paddd	%xmm6, %xmm3
	movdqa	%xmm7, %xmm6
	punpckhwd	%xmm11, %xmm6           # xmm6 = xmm6[4],xmm11[4],xmm6[5],xmm11[5],xmm6[6],xmm11[6],xmm6[7],xmm11[7]
	movdqu	(%r12,%rdi), %xmm13
	movdqa	%xmm13, %xmm8
	punpckhwd	%xmm11, %xmm8           # xmm8 = xmm8[4],xmm11[4],xmm8[5],xmm11[5],xmm8[6],xmm11[6],xmm8[7],xmm11[7]
	paddd	%xmm6, %xmm8
	punpcklwd	%xmm11, %xmm7           # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3]
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	paddd	%xmm7, %xmm13
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	movdqa	.LCPI3_1(%rip), %xmm2           # xmm2 = [20,20,20,20]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm7              # xmm7 = xmm5[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	movdqa	%xmm7, 160(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm4              # xmm4 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	pshufd	$245, %xmm14, %xmm6             # xmm6 = xmm14[1,1,3,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm1             # xmm1 = xmm14[0,2,2,3]
	movdqa	.LCPI3_2(%rip), %xmm7           # xmm7 = [16,16,16,16]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm14             # xmm14 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1]
	pshufd	$245, %xmm8, %xmm6              # xmm6 = xmm8[1,1,3,3]
	pmuludq	%xmm2, %xmm8
	pshufd	$232, %xmm8, %xmm3              # xmm3 = xmm8[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1]
	pshufd	$245, %xmm13, %xmm6             # xmm6 = xmm13[1,1,3,3]
	pmuludq	%xmm2, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1]
	movdqa	-80(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm7, %xmm6
	paddd	160(%rsp), %xmm6                # 16-byte Folded Reload
	paddd	%xmm7, %xmm9
	paddd	%xmm5, %xmm9
	paddd	%xmm7, %xmm10
	paddd	%xmm0, %xmm10
	paddd	%xmm7, %xmm15
	paddd	%xmm4, %xmm15
	movdqa	-96(%rsp), %xmm8                # 16-byte Reload
	paddd	%xmm7, %xmm8
	paddd	%xmm1, %xmm8
	movdqa	176(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm7, %xmm0
	paddd	%xmm14, %xmm0
	paddd	%xmm7, %xmm12
	paddd	%xmm3, %xmm12
	movdqa	-64(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm7, %xmm5
	paddd	%xmm13, %xmm5
	psrad	$5, %xmm9
	psrad	$5, %xmm6
	psrad	$5, %xmm15
	psrad	$5, %xmm10
	psrad	$5, %xmm0
	psrad	$5, %xmm8
	psrad	$5, %xmm5
	psrad	$5, %xmm12
	movdqa	%xmm6, %xmm2
	pcmpgtd	%xmm11, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm11, %xmm1
	pand	%xmm9, %xmm1
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm11, %xmm4
	pand	%xmm10, %xmm4
	movdqa	%xmm15, %xmm10
	pcmpgtd	%xmm11, %xmm10
	pand	%xmm15, %xmm10
	movdqa	%xmm8, %xmm3
	pcmpgtd	%xmm11, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm11, %xmm8
	pand	%xmm0, %xmm8
	movdqa	144(%rsp), %xmm13               # 16-byte Reload
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm11, %xmm9
	pand	%xmm12, %xmm9
	pxor	%xmm12, %xmm12
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm12, %xmm0
	pand	%xmm5, %xmm0
	movdqa	%xmm13, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm5, %xmm1
	pandn	%xmm13, %xmm5
	por	%xmm1, %xmm5
	movdqa	%xmm13, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm13, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm13, %xmm6
	pcmpgtd	%xmm10, %xmm6
	pand	%xmm6, %xmm10
	pandn	%xmm13, %xmm6
	por	%xmm10, %xmm6
	movdqa	%xmm13, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm13, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm13, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm7, %xmm8
	pandn	%xmm13, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm13, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pand	%xmm4, %xmm3
	pandn	%xmm13, %xmm4
	por	%xmm3, %xmm4
	movdqa	%xmm13, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm8, %xmm0
	pandn	%xmm13, %xmm8
	por	%xmm0, %xmm8
	movdqa	%xmm13, %xmm0
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm13, %xmm0
	por	%xmm9, %xmm0
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm2, %xmm6
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm4, %xmm7
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm0, %xmm8
	movdqu	%xmm5, (%r15,%rdi)
	movdqu	%xmm6, 16(%r15,%rdi)
	movdqu	%xmm7, 32(%r15,%rdi)
	movdqu	%xmm8, 48(%r15,%rdi)
	movdqu	-48(%r8,%rdi), %xmm0
	pavgw	%xmm5, %xmm0
	movdqu	-32(%r8,%rdi), %xmm1
	pavgw	%xmm6, %xmm1
	movdqu	-16(%r8,%rdi), %xmm2
	pavgw	%xmm7, %xmm2
	movdqu	(%r8,%rdi), %xmm3
	pavgw	%xmm8, %xmm3
	movdqu	%xmm0, (%r15,%rdi)
	movdqu	%xmm1, 16(%r15,%rdi)
	movdqu	%xmm2, 32(%r15,%rdi)
	movdqu	%xmm3, 48(%r15,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, 136(%rsp)                 # 8-byte Folded Reload
	jne	.LBB3_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %eax
	cmpl	24(%rsp), %edi                  # 4-byte Folded Reload
	movl	256(%rsp), %r12d
	movdqa	.LCPI3_0(%rip), %xmm7           # xmm7 = [9223372039002259456,9223372039002259456]
	movl	$0, %r15d
	movq	-128(%rsp), %r14                # 8-byte Reload
	je	.LBB3_20
	jmp	.LBB3_15
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	%r15, %r10
	jmp	.LBB3_9
.LBB3_6:                                #   in Loop: Header=BB3_3 Depth=1
	movq	%rax, %rdx
	xorl	%eax, %eax
	movq	%r15, %r10
	movl	256(%rsp), %r12d
.LBB3_9:                                # %for.body18.us.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%r15d, %r15d
	movq	-128(%rsp), %r14                # 8-byte Reload
.LBB3_15:                               # %for.body18.us.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-120(%rsp), %rdi                # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	subl	%eax, %edi
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	jmp	.LBB3_16
	.p2align	4, 0x90
.LBB3_18:                               # %for.body18.us
                                        #   in Loop: Header=BB3_16 Depth=2
	movw	%r9w, (%r10,%r8,2)
	movzwl	(%rbp,%r8,2), %ebx
	movzwl	%r9w, %r9d
	addl	%ebx, %r9d
	incl	%r9d
	shrl	%r9d
	movw	%r9w, (%r10,%r8,2)
	incq	%r8
	addq	$-2, %rax
	cmpl	%r8d, %edi
	movq	%r13, %r14
	je	.LBB3_19
.LBB3_16:                               # %for.body18.us
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx,%r8,2), %r9d
	movzwl	(%rsi,%r8,2), %ebx
	addl	%r9d, %ebx
	movq	%r14, %r13
	movzwl	(%r14,%r8,2), %r9d
	movzwl	(%rcx,%r8,2), %r14d
	addl	%r9d, %r14d
	leal	(%r14,%r14,4), %r9d
	subl	%r9d, %ebx
	movq	-104(%rsp), %r9                 # 8-byte Reload
	movzwl	(%r9,%r8,2), %r9d
	movzwl	(%r11,%r8,2), %r14d
	addl	%r9d, %r14d
	leal	(%r14,%r14,4), %r9d
	leal	(%rbx,%r9,4), %r9d
	addl	$16, %r9d
	sarl	$5, %r9d
	testl	%r9d, %r9d
	cmovlel	%r15d, %r9d
	cmpl	%r12d, %r9d
	jl	.LBB3_18
# %bb.17:                               # %for.body18.us
                                        #   in Loop: Header=BB3_16 Depth=2
	movl	%r12d, %r9d
	jmp	.LBB3_18
.LBB3_21:                               # %for.end48
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
.Lfunc_end3:
	.size	get_luma_01, .Lfunc_end3-get_luma_01
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_02
.LCPI4_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI4_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_02,@function
get_luma_02:                            # @get_luma_02
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $ecx killed $ecx def $rcx
	testl	%edx, %edx
	jle	.LBB4_21
# %bb.1:                                # %for.body.lr.ph
	testl	%ecx, %ecx
	jle	.LBB4_21
# %bb.2:                                # %for.body.us.preheader
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r10d
	movl	192(%rsp), %r13d
	movslq	%r9d, %r9
	movslq	%ecx, %rax
	negq	%rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movslq	%r8d, %rax
	leaq	(%rsi,%rax,2), %rdx
	movl	%r10d, %eax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	(%r9,%r9), %rax
	leaq	(%rax,%rax,2), %rsi
	negq	%rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,4), %rax
	negq	%rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	leaq	(,%r9,4), %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(,%r9,8), %rsi
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%eax, %esi
	andl	$2147483616, %esi               # imm = 0x7FFFFFE0
	movd	%r13d, %xmm0
	pshufd	$0, %xmm0, %xmm13               # xmm13 = xmm0[0,0,0,0]
	leal	(%rcx,%rcx), %eax
	andl	$-64, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	leaq	(%r9,%r9,2), %rax
	leaq	48(,%rax,2), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	leaq	(%r9,%r9,4), %rax
	leaq	48(%rax,%rax), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	pxor	%xmm10, %xmm10
	movq	%rsi, (%rsp)                    # 8-byte Spill
	leal	(%rsi,%rsi), %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	leaq	48(%r9,%r9), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	leaq	48(,%r9,4), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	leaq	48(,%r9,8), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movdqa	%xmm13, 96(%rsp)                # 16-byte Spill
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_18:                               # %for.cond12.for.end_crit_edge.us.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	subq	%rax, %r14
.LBB4_19:                               # %for.cond12.for.end_crit_edge.us
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax,2), %rdx
	movq	88(%rsp), %rbx                  # 8-byte Reload
	incq	%rbx
	cmpq	64(%rsp), %rbx                  # 8-byte Folded Reload
	je	.LBB4_20
.LBB4_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdx,%rax,2), %r14
	leaq	(%r14,%rax,2), %r11
	leaq	(%r11,%rax,2), %rsi
	leaq	(%rsi,%rax,2), %r8
	leaq	(%r8,%rax,2), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	(%rdi,%rbx,8), %r10
	cmpl	$32, %ecx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	jae	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rdx, %r12
	xorl	%eax, %eax
	movq	%r10, %rbp
.LBB4_14:                               # %for.body14.us.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	%ecx, %r15d
	subl	%eax, %r15d
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.LBB4_15
	.p2align	4, 0x90
.LBB4_17:                               # %for.body14.us
                                        #   in Loop: Header=BB4_15 Depth=2
	movw	%r9w, (%rbp,%rdx,2)
	incq	%rdx
	addq	$-2, %rax
	cmpl	%edx, %r15d
	je	.LBB4_18
.LBB4_15:                               # %for.body14.us
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%rdx,2), %r9d
	movq	-120(%rsp), %r10                # 8-byte Reload
	movzwl	(%r10,%rdx,2), %r10d
	addl	%r9d, %r10d
	movzwl	(%r14,%rdx,2), %r9d
	movzwl	(%r8,%rdx,2), %ebx
	addl	%r9d, %ebx
	leal	(%rbx,%rbx,4), %r9d
	subl	%r9d, %r10d
	movzwl	(%r11,%rdx,2), %r9d
	movzwl	(%rsi,%rdx,2), %ebx
	addl	%r9d, %ebx
	leal	(%rbx,%rbx,4), %r9d
	leal	(%r10,%r9,4), %r9d
	addl	$16, %r9d
	sarl	$5, %r9d
	testl	%r9d, %r9d
	movl	$0, %r10d
	cmovlel	%r10d, %r9d
	cmpl	%r13d, %r9d
	jl	.LBB4_17
# %bb.16:                               # %for.body14.us
                                        #   in Loop: Header=BB4_15 Depth=2
	movl	%r13d, %r9d
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%r10, %rax
	subq	%rdx, %rax
	cmpq	$64, %rax
	jb	.LBB4_4
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%r10, %r9
	subq	%rax, %r9
	cmpq	$64, %r9
	jb	.LBB4_4
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%r10, %r9
	subq	%rax, %r9
	cmpq	$64, %r9
	jb	.LBB4_4
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rdx, %rax
	movq	%r10, %r9
	subq	%rax, %r9
	cmpq	$64, %r9
	jb	.LBB4_4
# %bb.9:                                # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	%r10, %rax
	subq	%rdx, %rax
	cmpq	$64, %rax
	jb	.LBB4_4
# %bb.10:                               # %vector.memcheck
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	%r10, %rax
	subq	%rdx, %rax
	cmpq	$64, %rax
	jb	.LBB4_4
# %bb.11:                               # %vector.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %r12
	leaq	(%r10,%rax), %rbp
	addq	%rax, -120(%rsp)                # 8-byte Folded Spill
	addq	%rax, %r8
	addq	%rax, %rsi
	addq	%rax, %r11
	addq	%rax, %r14
	movq	-48(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %r9
	movq	-56(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %r13
	movq	-64(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %r15
	movq	-32(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %rbx
	xorl	%eax, %eax
	movq	-8(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_12:                               # %vector.body
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rdx,%rax), %xmm4
	movdqu	16(%rdx,%rax), %xmm2
	movdqu	32(%rdx,%rax), %xmm1
	movdqu	48(%rdx,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm10, %xmm5           # xmm5 = xmm5[4],xmm10[4],xmm5[5],xmm10[5],xmm5[6],xmm10[6],xmm5[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	pxor	%xmm10, %xmm10
	movdqa	%xmm2, %xmm11
	punpckhwd	%xmm10, %xmm11          # xmm11 = xmm11[4],xmm10[4],xmm11[5],xmm10[5],xmm11[6],xmm10[6],xmm11[7],xmm10[7]
	punpcklwd	%xmm10, %xmm2           # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1],xmm2[2],xmm10[2],xmm2[3],xmm10[3]
	movdqa	%xmm1, %xmm12
	punpckhwd	%xmm10, %xmm12          # xmm12 = xmm12[4],xmm10[4],xmm12[5],xmm10[5],xmm12[6],xmm10[6],xmm12[7],xmm10[7]
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm10, %xmm3           # xmm3 = xmm3[4],xmm10[4],xmm3[5],xmm10[5],xmm3[6],xmm10[6],xmm3[7],xmm10[7]
	punpcklwd	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0],xmm0[1],xmm10[1],xmm0[2],xmm10[2],xmm0[3],xmm10[3]
	movdqu	-48(%rbx,%rax), %xmm7
	movdqu	-32(%rbx,%rax), %xmm9
	movdqu	-16(%rbx,%rax), %xmm14
	movdqu	(%rbx,%rax), %xmm6
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm10, %xmm8           # xmm8 = xmm8[4],xmm10[4],xmm8[5],xmm10[5],xmm8[6],xmm10[6],xmm8[7],xmm10[7]
	paddd	%xmm5, %xmm8
	punpcklwd	%xmm10, %xmm7           # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	paddd	%xmm4, %xmm7
	movdqa	%xmm9, %xmm4
	punpckhwd	%xmm10, %xmm4           # xmm4 = xmm4[4],xmm10[4],xmm4[5],xmm10[5],xmm4[6],xmm10[6],xmm4[7],xmm10[7]
	paddd	%xmm11, %xmm4
	movdqa	%xmm4, -96(%rsp)                # 16-byte Spill
	punpcklwd	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1],xmm9[2],xmm10[2],xmm9[3],xmm10[3]
	paddd	%xmm2, %xmm9
	movdqa	%xmm14, %xmm2
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	paddd	%xmm12, %xmm2
	movdqa	%xmm2, -112(%rsp)               # 16-byte Spill
	punpcklwd	%xmm10, %xmm14          # xmm14 = xmm14[0],xmm10[0],xmm14[1],xmm10[1],xmm14[2],xmm10[2],xmm14[3],xmm10[3]
	paddd	%xmm1, %xmm14
	movdqa	%xmm6, %xmm11
	punpckhwd	%xmm10, %xmm11          # xmm11 = xmm11[4],xmm10[4],xmm11[5],xmm10[5],xmm11[6],xmm10[6],xmm11[7],xmm10[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm10, %xmm6           # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -80(%rsp)                # 16-byte Spill
	movdqu	-48(%r9,%rax), %xmm0
	movdqu	-32(%r9,%rax), %xmm4
	movdqu	-16(%r9,%rax), %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	punpckhwd	%xmm10, %xmm0           # xmm0 = xmm0[4],xmm10[4],xmm0[5],xmm10[5],xmm0[6],xmm10[6],xmm0[7],xmm10[7]
	movdqa	%xmm4, %xmm5
	punpcklwd	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	punpckhwd	%xmm10, %xmm4           # xmm4 = xmm4[4],xmm10[4],xmm4[5],xmm10[5],xmm4[6],xmm10[6],xmm4[7],xmm10[7]
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm10, %xmm12          # xmm12 = xmm12[0],xmm10[0],xmm12[1],xmm10[1],xmm12[2],xmm10[2],xmm12[3],xmm10[3]
	movdqu	-48(%r15,%rax), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm10, %xmm15          # xmm15 = xmm15[0],xmm10[0],xmm15[1],xmm10[1],xmm15[2],xmm10[2],xmm15[3],xmm10[3]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r15,%rax), %xmm1
	punpckhwd	%xmm10, %xmm3           # xmm3 = xmm3[4],xmm10[4],xmm3[5],xmm10[5],xmm3[6],xmm10[6],xmm3[7],xmm10[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm10, %xmm13          # xmm13 = xmm13[0],xmm10[0],xmm13[1],xmm10[1],xmm13[2],xmm10[2],xmm13[3],xmm10[3]
	paddd	%xmm5, %xmm13
	movdqu	-16(%r15,%rax), %xmm6
	punpckhwd	%xmm10, %xmm1           # xmm1 = xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm4
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	paddd	%xmm12, %xmm4
	movdqu	(%r9,%rax), %xmm0
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	punpckhwd	%xmm10, %xmm6           # xmm6 = xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	paddd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm5
	punpcklwd	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	movdqu	(%r15,%rax), %xmm2
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm10, %xmm12          # xmm12 = xmm12[0],xmm10[0],xmm12[1],xmm10[1],xmm12[2],xmm10[2],xmm12[3],xmm10[3]
	paddd	%xmm5, %xmm12
	punpckhwd	%xmm10, %xmm0           # xmm0 = xmm0[4],xmm10[4],xmm0[5],xmm10[5],xmm0[6],xmm10[6],xmm0[7],xmm10[7]
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm14
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	-48(%rcx,%rax), %xmm2
	movdqu	-32(%rcx,%rax), %xmm12
	movdqu	-16(%rcx,%rax), %xmm5
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm10, %xmm1           # xmm1 = xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	punpcklwd	%xmm10, %xmm2           # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1],xmm2[2],xmm10[2],xmm2[3],xmm10[3]
	movdqa	%xmm12, %xmm6
	punpckhwd	%xmm10, %xmm6           # xmm6 = xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	punpcklwd	%xmm10, %xmm12          # xmm12 = xmm12[0],xmm10[0],xmm12[1],xmm10[1],xmm12[2],xmm10[2],xmm12[3],xmm10[3]
	movdqa	%xmm5, %xmm4
	punpckhwd	%xmm10, %xmm4           # xmm4 = xmm4[4],xmm10[4],xmm4[5],xmm10[5],xmm4[6],xmm10[6],xmm4[7],xmm10[7]
	movdqu	-48(%r13,%rax), %xmm0
	movdqa	%xmm0, %xmm15
	punpckhwd	%xmm10, %xmm15          # xmm15 = xmm15[4],xmm10[4],xmm15[5],xmm10[5],xmm15[6],xmm10[6],xmm15[7],xmm10[7]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r13,%rax), %xmm1
	punpcklwd	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0],xmm0[1],xmm10[1],xmm0[2],xmm10[2],xmm0[3],xmm10[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm10, %xmm3           # xmm3 = xmm3[4],xmm10[4],xmm3[5],xmm10[5],xmm3[6],xmm10[6],xmm3[7],xmm10[7]
	paddd	%xmm6, %xmm3
	movdqu	-16(%r13,%rax), %xmm2
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	paddd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm13
	punpckhwd	%xmm10, %xmm13          # xmm13 = xmm13[4],xmm10[4],xmm13[5],xmm10[5],xmm13[6],xmm10[6],xmm13[7],xmm10[7]
	paddd	%xmm4, %xmm13
	movdqu	(%rcx,%rax), %xmm6
	punpcklwd	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	punpcklwd	%xmm10, %xmm2           # xmm2 = xmm2[0],xmm10[0],xmm2[1],xmm10[1],xmm2[2],xmm10[2],xmm2[3],xmm10[3]
	paddd	%xmm5, %xmm2
	movdqa	%xmm6, %xmm5
	punpckhwd	%xmm10, %xmm5           # xmm5 = xmm5[4],xmm10[4],xmm5[5],xmm10[5],xmm5[6],xmm10[6],xmm5[7],xmm10[7]
	movdqu	(%r13,%rax), %xmm12
	movdqa	%xmm12, %xmm4
	punpckhwd	%xmm10, %xmm4           # xmm4 = xmm4[4],xmm10[4],xmm4[5],xmm10[5],xmm4[6],xmm10[6],xmm4[7],xmm10[7]
	paddd	%xmm5, %xmm4
	punpcklwd	%xmm10, %xmm6           # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1],xmm6[2],xmm10[2],xmm6[3],xmm10[3]
	punpcklwd	%xmm10, %xmm12          # xmm12 = xmm12[0],xmm10[0],xmm12[1],xmm10[1],xmm12[2],xmm10[2],xmm12[3],xmm10[3]
	paddd	%xmm6, %xmm12
	pshufd	$245, %xmm15, %xmm5             # xmm5 = xmm15[1,1,3,3]
	movdqa	.LCPI4_0(%rip), %xmm6           # xmm6 = [20,20,20,20]
	pmuludq	%xmm6, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm15           # xmm15 = xmm15[0],xmm5[0],xmm15[1],xmm5[1]
	movdqa	%xmm15, 112(%rsp)               # 16-byte Spill
	pshufd	$245, %xmm0, %xmm5              # xmm5 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm0
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm0              # xmm0 = xmm5[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	pshufd	$245, %xmm3, %xmm5              # xmm5 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm3              # xmm3 = xmm5[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm1, %xmm5              # xmm5 = xmm1[1,1,3,3]
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm3              # xmm3 = xmm1[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm1              # xmm1 = xmm5[0,2,2,3]
	punpckldq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	pshufd	$245, %xmm13, %xmm5             # xmm5 = xmm13[1,1,3,3]
	pmuludq	%xmm6, %xmm13
	pshufd	$232, %xmm13, %xmm1             # xmm1 = xmm13[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm1            # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	pshufd	$245, %xmm2, %xmm5              # xmm5 = xmm2[1,1,3,3]
	pmuludq	%xmm6, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	pshufd	$245, %xmm12, %xmm5             # xmm5 = xmm12[1,1,3,3]
	pmuludq	%xmm6, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm12           # xmm12 = xmm12[0],xmm5[0],xmm12[1],xmm5[1]
	movdqa	.LCPI4_1(%rip), %xmm5           # xmm5 = [16,16,16,16]
	paddd	%xmm5, %xmm8
	paddd	112(%rsp), %xmm8                # 16-byte Folded Reload
	paddd	%xmm5, %xmm7
	paddd	%xmm15, %xmm7
	movdqa	-96(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm5, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	paddd	%xmm5, %xmm9
	paddd	%xmm3, %xmm9
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm5, %xmm6
	paddd	%xmm1, %xmm6
	paddd	%xmm5, %xmm14
	paddd	%xmm2, %xmm14
	paddd	%xmm5, %xmm11
	paddd	%xmm4, %xmm11
	movdqa	-80(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm5, %xmm4
	paddd	%xmm12, %xmm4
	psrad	$5, %xmm7
	psrad	$5, %xmm8
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm14
	psrad	$5, %xmm6
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm10, %xmm1
	pand	%xmm8, %xmm1
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm10, %xmm2
	pand	%xmm7, %xmm2
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm10, %xmm8
	pand	%xmm0, %xmm8
	movdqa	%xmm9, %xmm12
	pcmpgtd	%xmm10, %xmm12
	pand	%xmm9, %xmm12
	movdqa	%xmm6, %xmm3
	pcmpgtd	%xmm10, %xmm3
	pand	%xmm6, %xmm3
	movdqa	%xmm14, %xmm9
	pcmpgtd	%xmm10, %xmm9
	pand	%xmm14, %xmm9
	movdqa	96(%rsp), %xmm13                # 16-byte Reload
	movdqa	%xmm11, %xmm7
	pcmpgtd	%xmm10, %xmm7
	pand	%xmm11, %xmm7
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pand	%xmm4, %xmm0
	movdqa	%xmm13, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm13, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm13, %xmm2
	pcmpgtd	%xmm1, %xmm2
	pand	%xmm2, %xmm1
	pandn	%xmm13, %xmm2
	por	%xmm1, %xmm2
	movdqa	%xmm13, %xmm5
	pcmpgtd	%xmm12, %xmm5
	pand	%xmm5, %xmm12
	pandn	%xmm13, %xmm5
	por	%xmm12, %xmm5
	movdqa	%xmm13, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm13, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm13, %xmm6
	pcmpgtd	%xmm9, %xmm6
	pand	%xmm6, %xmm9
	pandn	%xmm13, %xmm6
	por	%xmm9, %xmm6
	movdqa	%xmm13, %xmm8
	pcmpgtd	%xmm3, %xmm8
	pand	%xmm8, %xmm3
	pandn	%xmm13, %xmm8
	por	%xmm3, %xmm8
	movdqa	%xmm13, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm13, %xmm3
	por	%xmm0, %xmm3
	movdqa	%xmm13, %xmm0
	pcmpgtd	%xmm7, %xmm0
	pand	%xmm0, %xmm7
	pandn	%xmm13, %xmm0
	por	%xmm7, %xmm0
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm8, %xmm6
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	packssdw	%xmm0, %xmm3
	movdqu	%xmm4, (%r10,%rax)
	movdqu	%xmm5, 16(%r10,%rax)
	movdqu	%xmm6, 32(%r10,%rax)
	movdqu	%xmm3, 48(%r10,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.LBB4_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%ecx, %eax
	cmpl	8(%rsp), %ecx                   # 4-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movl	192(%rsp), %r13d
	je	.LBB4_19
	jmp	.LBB4_14
.LBB4_20:
	addq	$136, %rsp
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
.LBB4_21:                               # %for.end36
	retq
.Lfunc_end4:
	.size	get_luma_02, .Lfunc_end4-get_luma_02
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_03
.LCPI5_0:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI5_1:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI5_2:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_03,@function
get_luma_03:                            # @get_luma_03
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
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	movq	%rsi, -96(%rsp)                 # 8-byte Spill
	movq	%rdi, 136(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB5_21
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -104(%rsp)                  # 4-byte Folded Reload
	jle	.LBB5_21
# %bb.2:                                # %for.body.us.preheader
	movslq	%r8d, %rcx
	movslq	%r9d, %rdi
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movslq	%esi, %rax
	negq	%rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx), %r11
	movq	-96(%rsp), %rax                 # 8-byte Reload
	addq	-16(%rax), %r11
	movl	%edx, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	leal	-1(%rsi), %r8d
	leaq	2(,%r8,2), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi), %rax
	leaq	(%rax,%rax,2), %rdx
	leaq	2(%rdx,%r8,2), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	leaq	(,%rdi,4), %rdx
	leaq	2(%rdx,%r8,2), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	leaq	(,%rdi,8), %rdx
	leaq	2(%rdx,%r8,2), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%r8), %rdx
	leaq	2(%rdx,%rdx), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rdx,%r8,2), %rdx
	addq	$2, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	addq	%rcx, %r8
	addq	%r8, %r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movl	%esi, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movl	272(%rsp), %ebp
	movd	%ebp, %xmm0
	pshufd	$0, %xmm0, %xmm13               # xmm13 = xmm0[0,0,0,0]
	leal	(%rsi,%rsi), %ebx
	andl	$-64, %ebx
	leaq	(%rax,%rax,2), %r8
	addq	$48, %r8
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	leaq	48(%rax,%rax,4), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movdqa	.LCPI5_0(%rip), %xmm7           # xmm7 = [9223372039002259456,9223372039002259456]
	pxor	%xmm12, %xmm12
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leal	(%rdx,%rdx), %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	48(%rdi,%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	48(,%rdi,4), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rdi, 120(%rsp)                 # 8-byte Spill
	leaq	48(,%rdi,8), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leaq	48(,%rcx,2), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movl	$1, %r12d
	xorl	%edx, %edx
	movdqa	%xmm13, 160(%rsp)               # 16-byte Spill
	movq	%rbx, 152(%rsp)                 # 8-byte Spill
	pxor	%xmm11, %xmm11
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_19:                               # %for.cond16.for.end_crit_edge.us.loopexit
                                        #   in Loop: Header=BB5_3 Depth=1
	subq	%rax, %r14
.LBB5_20:                               # %for.cond16.for.end_crit_edge.us
                                        #   in Loop: Header=BB5_3 Depth=1
	incq	%r12
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r14,%rax,2), %r11
	movq	144(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	cmpq	104(%rsp), %rdx                 # 8-byte Folded Reload
	je	.LBB5_21
.LBB5_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_16 Depth 2
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%r11,%rax,2), %r14
	leaq	(%r14,%rax,2), %r13
	leaq	(,%rax,2), %r9
	addq	%r13, %r9
	leaq	(%r9,%rax,2), %rcx
	leaq	(%rcx,%rax,2), %rsi
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	(%rax,%rdx,8), %r8
	movq	%r12, -112(%rsp)                # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r12,8), %r12
	movq	128(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax,2), %r10
	cmpl	$32, -104(%rsp)                 # 4-byte Folded Reload
	movq	%r13, -88(%rsp)                 # 8-byte Spill
	jae	.LBB5_5
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r11, %r15
	xorl	%eax, %eax
	movq	%r8, %rdx
	movq	-112(%rsp), %r12                # 8-byte Reload
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	88(%rsp), %r15                  # 8-byte Reload
	leaq	(%r8,%r15), %rax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	leaq	(%r11,%rdx), %rdi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	addq	%r11, %rdx
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	%r14, %rbp
	leaq	(%r11,%rbx), %r14
	movq	%rdx, %xmm0
	movq	56(%rsp), %rdx                  # 8-byte Reload
	leaq	(%r11,%rdx), %rbx
	movq	%rdi, %xmm1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	leaq	(%r11,%rdx), %rdx
	movq	%rbx, %xmm2
	leaq	(%r11,%r15), %rbx
	movq	%r14, %xmm3
	movq	96(%rsp), %rdi                  # 8-byte Reload
	leaq	2(%r12,%rdi), %rdi
	movq	%r8, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm7, %xmm3
	pxor	%xmm7, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%r13, %xmm1
	movq	%r9, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%rbp, -120(%rsp)                # 8-byte Spill
	movq	%rbp, %xmm1
	movq	%rcx, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm7, %xmm3
	pxor	%xmm7, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm7, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdx, %r8
	setb	%dl
	cmpq	%rax, %rsi
	setb	%bpl
	cmpq	%rbx, %r8
	setb	%bl
	cmpq	%rax, %r11
	setb	%r14b
	cmpq	%rdi, %r8
	setb	%dil
	cmpq	%rax, %r10
	setb	%al
	movmskps	%xmm5, %r15d
	testl	%r15d, %r15d
	jne	.LBB5_6
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_3 Depth=1
	andb	%bpl, %dl
	jne	.LBB5_6
# %bb.8:                                # %vector.memcheck
                                        #   in Loop: Header=BB5_3 Depth=1
	andb	%r14b, %bl
	movl	272(%rsp), %ebp
	jne	.LBB5_9
# %bb.11:                               # %vector.memcheck
                                        #   in Loop: Header=BB5_3 Depth=1
	andb	%al, %dil
	movq	-120(%rsp), %r14                # 8-byte Reload
	jne	.LBB5_4
# %bb.12:                               # %vector.ph
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%r11,%rax), %r15
	addq	%rax, %r10
	leaq	(%r8,%rax), %rdx
	addq	%rax, %rsi
	addq	%rax, %rcx
	addq	%rax, %r9
	addq	%rax, -88(%rsp)                 # 8-byte Folded Spill
	addq	%rax, %r14
	movq	%r14, -120(%rsp)                # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%r11,%rax), %r14
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leaq	(%r11,%rax), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	leaq	(%r11,%rax), %r13
	movq	-16(%rsp), %rax                 # 8-byte Reload
	leaq	(%r11,%rax), %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%r11,%rax), %rdi
	addq	-24(%rsp), %r12                 # 8-byte Folded Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_13:                               # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r11,%rax), %xmm4
	movdqu	16(%r11,%rax), %xmm2
	movdqu	32(%r11,%rax), %xmm1
	movdqu	48(%r11,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm12, %xmm5           # xmm5 = xmm5[4],xmm12[4],xmm5[5],xmm12[5],xmm5[6],xmm12[6],xmm5[7],xmm12[7]
	punpcklwd	%xmm12, %xmm4           # xmm4 = xmm4[0],xmm12[0],xmm4[1],xmm12[1],xmm4[2],xmm12[2],xmm4[3],xmm12[3]
	movdqa	%xmm2, %xmm6
	punpckhwd	%xmm12, %xmm6           # xmm6 = xmm6[4],xmm12[4],xmm6[5],xmm12[5],xmm6[6],xmm12[6],xmm6[7],xmm12[7]
	punpcklwd	%xmm12, %xmm2           # xmm2 = xmm2[0],xmm12[0],xmm2[1],xmm12[1],xmm2[2],xmm12[2],xmm2[3],xmm12[3]
	movdqa	%xmm1, %xmm12
	punpckhwd	%xmm11, %xmm12          # xmm12 = xmm12[4],xmm11[4],xmm12[5],xmm11[5],xmm12[6],xmm11[6],xmm12[7],xmm11[7]
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm11, %xmm3           # xmm3 = xmm3[4],xmm11[4],xmm3[5],xmm11[5],xmm3[6],xmm11[6],xmm3[7],xmm11[7]
	punpcklwd	%xmm11, %xmm0           # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3]
	movdqu	-48(%rdi,%rax), %xmm9
	movdqu	-32(%rdi,%rax), %xmm15
	movdqu	-16(%rdi,%rax), %xmm8
	movdqu	(%rdi,%rax), %xmm7
	movdqa	%xmm9, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	paddd	%xmm5, %xmm10
	movdqa	%xmm10, -64(%rsp)               # 16-byte Spill
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm15, %xmm10
	punpckhwd	%xmm11, %xmm10          # xmm10 = xmm10[4],xmm11[4],xmm10[5],xmm11[5],xmm10[6],xmm11[6],xmm10[7],xmm11[7]
	paddd	%xmm6, %xmm10
	punpcklwd	%xmm11, %xmm15          # xmm15 = xmm15[0],xmm11[0],xmm15[1],xmm11[1],xmm15[2],xmm11[2],xmm15[3],xmm11[3]
	paddd	%xmm2, %xmm15
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	paddd	%xmm12, %xmm2
	movdqa	%xmm2, -80(%rsp)                # 16-byte Spill
	punpcklwd	%xmm11, %xmm8           # xmm8 = xmm8[0],xmm11[0],xmm8[1],xmm11[1],xmm8[2],xmm11[2],xmm8[3],xmm11[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm7, %xmm12
	punpckhwd	%xmm11, %xmm12          # xmm12 = xmm12[4],xmm11[4],xmm12[5],xmm11[5],xmm12[6],xmm11[6],xmm12[7],xmm11[7]
	paddd	%xmm3, %xmm12
	punpcklwd	%xmm11, %xmm7           # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3]
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, -48(%rsp)                # 16-byte Spill
	movdqu	-48(%r14,%rax), %xmm0
	movdqu	-32(%r14,%rax), %xmm4
	movdqu	-16(%r14,%rax), %xmm2
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	punpckhwd	%xmm11, %xmm0           # xmm0 = xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	movdqa	%xmm4, %xmm6
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	punpckhwd	%xmm11, %xmm4           # xmm4 = xmm4[4],xmm11[4],xmm4[5],xmm11[5],xmm4[6],xmm11[6],xmm4[7],xmm11[7]
	movdqa	%xmm2, %xmm5
	punpcklwd	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1],xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	movdqu	-48(%rbx,%rax), %xmm3
	movdqa	%xmm3, %xmm14
	punpcklwd	%xmm11, %xmm14          # xmm14 = xmm14[0],xmm11[0],xmm14[1],xmm11[1],xmm14[2],xmm11[2],xmm14[3],xmm11[3]
	paddd	%xmm1, %xmm14
	movdqu	-32(%rbx,%rax), %xmm1
	punpckhwd	%xmm11, %xmm3           # xmm3 = xmm3[4],xmm11[4],xmm3[5],xmm11[5],xmm3[6],xmm11[6],xmm3[7],xmm11[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	paddd	%xmm6, %xmm13
	movdqu	-16(%rbx,%rax), %xmm7
	punpckhwd	%xmm11, %xmm1           # xmm1 = xmm1[4],xmm11[4],xmm1[5],xmm11[5],xmm1[6],xmm11[6],xmm1[7],xmm11[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm7, %xmm4
	punpcklwd	%xmm11, %xmm4           # xmm4 = xmm4[0],xmm11[0],xmm4[1],xmm11[1],xmm4[2],xmm11[2],xmm4[3],xmm11[3]
	paddd	%xmm5, %xmm4
	movdqu	(%r14,%rax), %xmm0
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	punpckhwd	%xmm11, %xmm7           # xmm7 = xmm7[4],xmm11[4],xmm7[5],xmm11[5],xmm7[6],xmm11[6],xmm7[7],xmm11[7]
	paddd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm6
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	movdqu	(%rbx,%rax), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1],xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	paddd	%xmm6, %xmm5
	punpckhwd	%xmm11, %xmm0           # xmm0 = xmm0[4],xmm11[4],xmm0[5],xmm11[5],xmm0[6],xmm11[6],xmm0[7],xmm11[7]
	punpckhwd	%xmm11, %xmm2           # xmm2 = xmm2[4],xmm11[4],xmm2[5],xmm11[5],xmm2[6],xmm11[6],xmm2[7],xmm11[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-64(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -64(%rsp)                # 16-byte Spill
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm15
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm8, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm7, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-48(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -48(%rsp)                # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm12
	movdqu	-48(%rbp,%rax), %xmm2
	movdqu	-32(%rbp,%rax), %xmm13
	movdqu	-16(%rbp,%rax), %xmm6
	movdqa	%xmm2, %xmm1
	punpckhwd	%xmm11, %xmm1           # xmm1 = xmm1[4],xmm11[4],xmm1[5],xmm11[5],xmm1[6],xmm11[6],xmm1[7],xmm11[7]
	punpcklwd	%xmm11, %xmm2           # xmm2 = xmm2[0],xmm11[0],xmm2[1],xmm11[1],xmm2[2],xmm11[2],xmm2[3],xmm11[3]
	movdqa	%xmm13, %xmm7
	punpckhwd	%xmm11, %xmm7           # xmm7 = xmm7[4],xmm11[4],xmm7[5],xmm11[5],xmm7[6],xmm11[6],xmm7[7],xmm11[7]
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	movdqa	%xmm6, %xmm8
	punpckhwd	%xmm11, %xmm8           # xmm8 = xmm8[4],xmm11[4],xmm8[5],xmm11[5],xmm8[6],xmm11[6],xmm8[7],xmm11[7]
	movdqu	-48(%r13,%rax), %xmm0
	movdqa	%xmm0, %xmm5
	punpckhwd	%xmm11, %xmm5           # xmm5 = xmm5[4],xmm11[4],xmm5[5],xmm11[5],xmm5[6],xmm11[6],xmm5[7],xmm11[7]
	paddd	%xmm1, %xmm5
	movdqu	-32(%r13,%rax), %xmm1
	punpcklwd	%xmm11, %xmm0           # xmm0 = xmm0[0],xmm11[0],xmm0[1],xmm11[1],xmm0[2],xmm11[2],xmm0[3],xmm11[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm4
	punpckhwd	%xmm11, %xmm4           # xmm4 = xmm4[4],xmm11[4],xmm4[5],xmm11[5],xmm4[6],xmm11[6],xmm4[7],xmm11[7]
	paddd	%xmm7, %xmm4
	movdqu	-16(%r13,%rax), %xmm3
	punpcklwd	%xmm11, %xmm1           # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1],xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	paddd	%xmm13, %xmm1
	movdqa	%xmm3, %xmm14
	punpckhwd	%xmm11, %xmm14          # xmm14 = xmm14[4],xmm11[4],xmm14[5],xmm11[5],xmm14[6],xmm11[6],xmm14[7],xmm11[7]
	paddd	%xmm8, %xmm14
	movdqu	(%rbp,%rax), %xmm7
	punpcklwd	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1],xmm6[2],xmm11[2],xmm6[3],xmm11[3]
	punpcklwd	%xmm11, %xmm3           # xmm3 = xmm3[0],xmm11[0],xmm3[1],xmm11[1],xmm3[2],xmm11[2],xmm3[3],xmm11[3]
	paddd	%xmm6, %xmm3
	movdqa	%xmm7, %xmm6
	punpckhwd	%xmm11, %xmm6           # xmm6 = xmm6[4],xmm11[4],xmm6[5],xmm11[5],xmm6[6],xmm11[6],xmm6[7],xmm11[7]
	movdqu	(%r13,%rax), %xmm13
	movdqa	%xmm13, %xmm8
	punpckhwd	%xmm11, %xmm8           # xmm8 = xmm8[4],xmm11[4],xmm8[5],xmm11[5],xmm8[6],xmm11[6],xmm8[7],xmm11[7]
	paddd	%xmm6, %xmm8
	punpcklwd	%xmm11, %xmm7           # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1],xmm7[2],xmm11[2],xmm7[3],xmm11[3]
	punpcklwd	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1],xmm13[2],xmm11[2],xmm13[3],xmm11[3]
	paddd	%xmm7, %xmm13
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	movdqa	.LCPI5_1(%rip), %xmm2           # xmm2 = [20,20,20,20]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm7              # xmm7 = xmm5[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm7            # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	movdqa	%xmm7, 176(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm4              # xmm4 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	pshufd	$245, %xmm14, %xmm6             # xmm6 = xmm14[1,1,3,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm1             # xmm1 = xmm14[0,2,2,3]
	movdqa	.LCPI5_2(%rip), %xmm7           # xmm7 = [16,16,16,16]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm14             # xmm14 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1]
	pshufd	$245, %xmm8, %xmm6              # xmm6 = xmm8[1,1,3,3]
	pmuludq	%xmm2, %xmm8
	pshufd	$232, %xmm8, %xmm3              # xmm3 = xmm8[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1]
	pshufd	$245, %xmm13, %xmm6             # xmm6 = xmm13[1,1,3,3]
	pmuludq	%xmm2, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1]
	movdqa	-64(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm7, %xmm6
	paddd	176(%rsp), %xmm6                # 16-byte Folded Reload
	paddd	%xmm7, %xmm9
	paddd	%xmm5, %xmm9
	paddd	%xmm7, %xmm10
	paddd	%xmm0, %xmm10
	paddd	%xmm7, %xmm15
	paddd	%xmm4, %xmm15
	movdqa	-80(%rsp), %xmm8                # 16-byte Reload
	paddd	%xmm7, %xmm8
	paddd	%xmm1, %xmm8
	movdqa	192(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm7, %xmm0
	paddd	%xmm14, %xmm0
	paddd	%xmm7, %xmm12
	paddd	%xmm3, %xmm12
	movdqa	-48(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm7, %xmm5
	paddd	%xmm13, %xmm5
	psrad	$5, %xmm9
	psrad	$5, %xmm6
	psrad	$5, %xmm15
	psrad	$5, %xmm10
	psrad	$5, %xmm0
	psrad	$5, %xmm8
	psrad	$5, %xmm5
	psrad	$5, %xmm12
	movdqa	%xmm6, %xmm2
	pcmpgtd	%xmm11, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm11, %xmm1
	pand	%xmm9, %xmm1
	movdqa	%xmm10, %xmm4
	pcmpgtd	%xmm11, %xmm4
	pand	%xmm10, %xmm4
	movdqa	%xmm15, %xmm10
	pcmpgtd	%xmm11, %xmm10
	pand	%xmm15, %xmm10
	movdqa	%xmm8, %xmm3
	pcmpgtd	%xmm11, %xmm3
	pand	%xmm8, %xmm3
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm11, %xmm8
	pand	%xmm0, %xmm8
	movdqa	160(%rsp), %xmm13               # 16-byte Reload
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm11, %xmm9
	pand	%xmm12, %xmm9
	pxor	%xmm12, %xmm12
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm12, %xmm0
	pand	%xmm5, %xmm0
	movdqa	%xmm13, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm5, %xmm1
	pandn	%xmm13, %xmm5
	por	%xmm1, %xmm5
	movdqa	%xmm13, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm1, %xmm2
	pandn	%xmm13, %xmm1
	por	%xmm2, %xmm1
	movdqa	%xmm13, %xmm6
	pcmpgtd	%xmm10, %xmm6
	pand	%xmm6, %xmm10
	pandn	%xmm13, %xmm6
	por	%xmm10, %xmm6
	movdqa	%xmm13, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm13, %xmm2
	por	%xmm4, %xmm2
	movdqa	%xmm13, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm7, %xmm8
	pandn	%xmm13, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm13, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pand	%xmm4, %xmm3
	pandn	%xmm13, %xmm4
	por	%xmm3, %xmm4
	movdqa	%xmm13, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm8, %xmm0
	pandn	%xmm13, %xmm8
	por	%xmm0, %xmm8
	movdqa	%xmm13, %xmm0
	pcmpgtd	%xmm9, %xmm0
	pand	%xmm0, %xmm9
	pandn	%xmm13, %xmm0
	por	%xmm9, %xmm0
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm1, %xmm5
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm2, %xmm6
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm4, %xmm7
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm0, %xmm8
	movdqu	%xmm5, (%r8,%rax)
	movdqu	%xmm6, 16(%r8,%rax)
	movdqu	%xmm7, 32(%r8,%rax)
	movdqu	%xmm8, 48(%r8,%rax)
	movdqu	-48(%r12,%rax), %xmm0
	pavgw	%xmm5, %xmm0
	movdqu	-32(%r12,%rax), %xmm1
	pavgw	%xmm6, %xmm1
	movdqu	-16(%r12,%rax), %xmm2
	pavgw	%xmm7, %xmm2
	movdqu	(%r12,%rax), %xmm3
	pavgw	%xmm8, %xmm3
	movdqu	%xmm0, (%r8,%rax)
	movdqu	%xmm1, 16(%r8,%rax)
	movdqu	%xmm2, 32(%r8,%rax)
	movdqu	%xmm3, 48(%r8,%rax)
	addq	$64, %rax
	cmpq	%rax, 152(%rsp)                 # 8-byte Folded Reload
	jne	.LBB5_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %eax
	cmpl	40(%rsp), %edi                  # 4-byte Folded Reload
	movl	272(%rsp), %ebp
	movdqa	.LCPI5_0(%rip), %xmm7           # xmm7 = [9223372039002259456,9223372039002259456]
	movq	-112(%rsp), %r12                # 8-byte Reload
	movq	-120(%rsp), %r14                # 8-byte Reload
	je	.LBB5_20
	jmp	.LBB5_15
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r11, %r15
	xorl	%eax, %eax
	movq	%r8, %rdx
	movl	272(%rsp), %ebp
	jmp	.LBB5_10
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movq	%r11, %r15
	xorl	%eax, %eax
	movq	%r8, %rdx
.LBB5_10:                               # %for.body18.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-112(%rsp), %r12                # 8-byte Reload
	movq	-120(%rsp), %r14                # 8-byte Reload
.LBB5_15:                               # %for.body18.us.preheader
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-104(%rsp), %r8                 # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	subl	%eax, %r8d
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	jmp	.LBB5_16
	.p2align	4, 0x90
.LBB5_18:                               # %for.body18.us
                                        #   in Loop: Header=BB5_16 Depth=2
	movw	%di, (%rdx,%r11,2)
	movzwl	(%r10,%r11,2), %ebx
	movzwl	%di, %edi
	addl	%ebx, %edi
	incl	%edi
	shrl	%edi
	movw	%di, (%rdx,%r11,2)
	incq	%r11
	addq	$-2, %rax
	cmpl	%r11d, %r8d
	movq	%r13, %r14
	je	.LBB5_19
.LBB5_16:                               # %for.body18.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r15,%r11,2), %edi
	movzwl	(%rsi,%r11,2), %ebx
	addl	%edi, %ebx
	movq	%r14, %r13
	movzwl	(%r14,%r11,2), %edi
	movzwl	(%rcx,%r11,2), %r14d
	addl	%edi, %r14d
	leal	(%r14,%r14,4), %edi
	subl	%edi, %ebx
	movq	-88(%rsp), %rdi                 # 8-byte Reload
	movzwl	(%rdi,%r11,2), %edi
	movzwl	(%r9,%r11,2), %r14d
	addl	%edi, %r14d
	leal	(%r14,%r14,4), %edi
	leal	(%rbx,%rdi,4), %edi
	addl	$16, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	movl	$0, %ebx
	cmovlel	%ebx, %edi
	cmpl	%ebp, %edi
	jl	.LBB5_18
# %bb.17:                               # %for.body18.us
                                        #   in Loop: Header=BB5_16 Depth=2
	movl	%ebp, %edi
	jmp	.LBB5_18
.LBB5_21:                               # %for.end48
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
.Lfunc_end5:
	.size	get_luma_03, .Lfunc_end5-get_luma_03
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_21
.LCPI6_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI6_1:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI6_2:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
.LCPI6_3:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI6_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_21,@function
get_luma_21:                            # @get_luma_21
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, -104(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rsi, -128(%rsp)                # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	cmpl	$-4, %ecx
	jl	.LBB6_31
# %bb.1:                                # %for.body.lr.ph
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB6_13
# %bb.2:                                # %for.body.us.preheader
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leal	5(%rax), %ecx
	movslq	%r9d, %rax
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rcx                # 8-byte Reload
	leal	-1(%rcx), %edx
	leaq	(%rax,%rdx), %rsi
	shlq	$2, %rdx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, -56(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483632, %edx               # imm = 0x7FFFFFF0
	leal	(%rdx,%rdx), %esi
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	leaq	(,%rdx,4), %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx), %ebx
	andl	$-32, %ebx
	movq	$-2, %r14
	xorl	%r15d, %r15d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI6_0(%rip), %xmm1           # xmm1 = [20,20,20,20]
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_12:                               # %for.cond9.for.inc30_crit_edge.us
                                        #   in Loop: Header=BB6_3 Depth=1
	incq	%r14
	incq	%r15
	cmpq	-96(%rsp), %r15                 # 8-byte Folded Reload
	je	.LBB6_13
.LBB6_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_11 Depth 2
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	(%rcx,%r14,8), %rdx
	leaq	(%rdx,%rax,2), %rcx
	leaq	(%rdx,%rax,2), %r12
	addq	$-4, %r12
	leaq	-2(%rdx,%rax,2), %r13
	leaq	4(%rdx,%rax,2), %rbp
	leaq	(%rdx,%rax,2), %r11
	addq	$6, %r11
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	(%rsi,%r15,8), %rdi
	cmpl	$16, -104(%rsp)                 # 4-byte Folded Reload
	jb	.LBB6_4
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	addq	%rsi, %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	jae	.LBB6_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-112(%rsp), %rdx                # 8-byte Reload
	addq	%rdi, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %r12
	jae	.LBB6_7
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=1
	xorl	%edx, %edx
	movq	%rcx, %r9
	movq	%rdi, %r8
.LBB6_10:                               # %for.body11.us.preheader
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-104(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_11:                               # %for.body11.us
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%rdx,2), %edi
	movzwl	(%r11,%rdx,2), %esi
	addl	%edi, %esi
	movzwl	(%r13,%rdx,2), %edi
	movzwl	(%rbp,%rdx,2), %r10d
	addl	%edi, %r10d
	leal	(%r10,%r10,4), %edi
	subl	%edi, %esi
	movzwl	(%r9,%rdx,2), %edi
	movzwl	2(%r9,%rdx,2), %r10d
	addl	%edi, %r10d
	leal	(%r10,%r10,4), %edi
	leal	(%rsi,%rdi,4), %esi
	movl	%esi, (%r8,%rdx,4)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB6_11
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_7:                                # %vector.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r11
	addq	%rdx, %rbp
	leaq	(%rcx,%rdx), %r9
	addq	%rdx, %r13
	addq	%rdx, %r12
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdi,%rdx), %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_8:                                # %vector.body
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4(%rcx,%rdx), %xmm3            # xmm3 = mem[0],zero
	movq	4(%rcx,%rdx), %xmm8             # xmm8 = mem[0],zero
	movq	12(%rcx,%rdx), %xmm9            # xmm9 = mem[0],zero
	movq	20(%rcx,%rdx), %xmm10           # xmm10 = mem[0],zero
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	movq	6(%rcx,%rdx), %xmm7             # xmm7 = mem[0],zero
	movq	14(%rcx,%rdx), %xmm6            # xmm6 = mem[0],zero
	movq	22(%rcx,%rdx), %xmm5            # xmm5 = mem[0],zero
	movq	30(%rcx,%rdx), %xmm2            # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	paddd	%xmm7, %xmm3
	movdqa	%xmm6, %xmm4
	paddd	%xmm8, %xmm4
	movq	28(%rcx,%rdx), %xmm11           # xmm11 = mem[0],zero
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	paddd	%xmm5, %xmm11
	paddd	%xmm9, %xmm5
	paddd	%xmm10, %xmm2
	movq	-2(%rcx,%rdx), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	paddd	%xmm8, %xmm12
	paddd	%xmm9, %xmm7
	paddd	%xmm10, %xmm6
	movdqa	%xmm12, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm12, %xmm8
	psubd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm8, %xmm4
	movdqa	%xmm6, %xmm7
	pslld	$2, %xmm7
	paddd	%xmm6, %xmm7
	psubd	%xmm7, %xmm5
	movdqa	%xmm11, %xmm6
	pslld	$2, %xmm6
	paddd	%xmm11, %xmm6
	psubd	%xmm6, %xmm2
	movq	(%rcx,%rdx), %xmm8              # xmm8 = mem[0],zero
	movq	8(%rcx,%rdx), %xmm10            # xmm10 = mem[0],zero
	movq	16(%rcx,%rdx), %xmm11           # xmm11 = mem[0],zero
	movq	24(%rcx,%rdx), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	movq	2(%rcx,%rdx), %xmm13            # xmm13 = mem[0],zero
	movq	10(%rcx,%rdx), %xmm9            # xmm9 = mem[0],zero
	movq	18(%rcx,%rdx), %xmm7            # xmm7 = mem[0],zero
	movq	26(%rcx,%rdx), %xmm6            # xmm6 = mem[0],zero
	punpcklwd	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1],xmm13[2],xmm0[2],xmm13[3],xmm0[3]
	paddd	%xmm8, %xmm13
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	paddd	%xmm11, %xmm7
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm12, %xmm6
	pshufd	$245, %xmm13, %xmm10            # xmm10 = xmm13[1,1,3,3]
	pmuludq	%xmm1, %xmm13
	pshufd	$232, %xmm13, %xmm8             # xmm8 = xmm13[0,2,2,3]
	pmuludq	%xmm1, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	paddd	%xmm3, %xmm8
	pshufd	$245, %xmm9, %xmm3              # xmm3 = xmm9[1,1,3,3]
	pmuludq	%xmm1, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1]
	paddd	%xmm4, %xmm9
	pshufd	$245, %xmm7, %xmm3              # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	paddd	%xmm5, %xmm4
	pshufd	$245, %xmm6, %xmm3              # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	paddd	%xmm2, %xmm5
	movdqu	%xmm8, (%rdi,%rdx,2)
	movdqu	%xmm9, 16(%rdi,%rdx,2)
	movdqu	%xmm4, 32(%rdi,%rdx,2)
	movdqu	%xmm5, 48(%rdi,%rdx,2)
	addq	$32, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB6_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movl	%ecx, %edx
	cmpl	-80(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB6_12
	jmp	.LBB6_10
.LBB6_13:                               # %for.cond33.preheader
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	testl	%edx, %edx
	setle	%al
	cmpl	$0, -104(%rsp)                  # 4-byte Folded Reload
	setle	%cl
	orb	%al, %cl
	jne	.LBB6_31
# %bb.14:                               # %for.body36.us.preheader
	movl	56(%rsp), %esi
	movl	%edx, %eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	4(,%rcx,4), %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	leal	(%rcx,%rcx), %edx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	(%rax,%rax), %ebx
	andl	$-32, %ebx
	movl	$2, %r14d
	xorl	%r12d, %r12d
	movdqa	.LCPI6_1(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	movdqa	.LCPI6_0(%rip), %xmm2           # xmm2 = [20,20,20,20]
	movdqa	.LCPI6_2(%rip), %xmm5           # xmm5 = [512,512,512,512]
	pxor	%xmm4, %xmm4
	movdqa	.LCPI6_3(%rip), %xmm6           # xmm6 = [65535,0,65535,0,65535,0,65535,0]
	movdqa	.LCPI6_4(%rip), %xmm7           # xmm7 = [16,16,16,16]
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	jmp	.LBB6_15
	.p2align	4, 0x90
.LBB6_30:                               # %for.cond59.for.cond33.loopexit_crit_edge.us
                                        #   in Loop: Header=BB6_15 Depth=1
	incq	%r12
	incq	%r14
	cmpq	-64(%rsp), %r12                 # 8-byte Folded Reload
	je	.LBB6_31
.LBB6_15:                               # %for.body36.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_22 Depth 2
                                        #     Child Loop BB6_25 Depth 2
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movq	%r14, -112(%rsp)                # 8-byte Spill
	movq	(%rcx,%r14,8), %rbp
	movq	(%rcx,%r12,8), %rbx
	movq	8(%rcx,%r12,8), %rax
	movq	16(%rcx,%r12,8), %r9
	movq	24(%rcx,%r12,8), %r11
	movq	32(%rcx,%r12,8), %rdi
	movq	40(%rcx,%r12,8), %r14
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%r12, -120(%rsp)                # 8-byte Spill
	movq	(%rcx,%r12,8), %r12
	cmpl	$16, -104(%rsp)                 # 4-byte Folded Reload
	jae	.LBB6_17
.LBB6_16:                               #   in Loop: Header=BB6_15 Depth=1
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%rdi, -128(%rsp)                # 8-byte Spill
	movq	%r11, -96(%rsp)                 # 8-byte Spill
	movq	%r9, %r15
	movq	%rax, %r13
	movq	%rbx, %r10
	movq	%rbp, %r8
	movq	%r14, %rbp
	movq	-112(%rsp), %r14                # 8-byte Reload
	movq	-120(%rsp), %r12                # 8-byte Reload
.LBB6_24:                               # %for.body62.us.preheader
                                        #   in Loop: Header=BB6_15 Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%edx, %eax
	xorl	%edx, %edx
	jmp	.LBB6_25
	.p2align	4, 0x90
.LBB6_29:                               # %for.body62.us
                                        #   in Loop: Header=BB6_25 Depth=2
	movw	%r9w, (%rcx,%rdx,2)
	movzwl	%r9w, %r9d
	movl	(%r8,%rdx,4), %r11d
	addl	$16, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovgl	%r11d, %edi
	cmpl	%esi, %edi
	cmovgel	%esi, %edi
	addl	%r9d, %edi
	incl	%edi
	shrl	%edi
	movw	%di, (%rcx,%rdx,2)
	incq	%rdx
	cmpl	%edx, %eax
	je	.LBB6_30
.LBB6_25:                               # %for.body62.us
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r10,%rdx,4), %edi
	movq	-128(%rsp), %r9                 # 8-byte Reload
	movl	(%r9,%rdx,4), %r9d
	addl	(%r13,%rdx,4), %r9d
	leal	(%r9,%r9,4), %r9d
	movq	-96(%rsp), %r11                 # 8-byte Reload
	movl	(%r11,%rdx,4), %r11d
	addl	(%r15,%rdx,4), %r11d
	leal	(%r11,%r11,4), %r11d
	addl	(%rbp,%rdx,4), %edi
	subl	%r9d, %edi
	leal	(%rdi,%r11,4), %r9d
	addl	$512, %r9d                      # imm = 0x200
	sarl	$10, %r9d
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jg	.LBB6_27
# %bb.26:                               # %for.body62.us
                                        #   in Loop: Header=BB6_25 Depth=2
	xorl	%r9d, %r9d
.LBB6_27:                               # %for.body62.us
                                        #   in Loop: Header=BB6_25 Depth=2
	cmpl	%esi, %r9d
	jl	.LBB6_29
# %bb.28:                               # %for.body62.us
                                        #   in Loop: Header=BB6_25 Depth=2
	movl	%esi, %r9d
	jmp	.LBB6_29
	.p2align	4, 0x90
.LBB6_17:                               # %vector.memcheck238
                                        #   in Loop: Header=BB6_15 Depth=1
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	addq	%r12, %rcx
	addq	$2, %rcx
	movq	-88(%rsp), %r13                 # 8-byte Reload
	leaq	(%rbx,%r13), %rdx
	leaq	(%r14,%r13), %r8
	leaq	(%rax,%r13), %r15
	movq	%r8, %xmm8
	leaq	(%rdi,%r13), %r10
	movq	%rdx, %xmm9
	leaq	(%r9,%r13), %r8
	movq	%r10, %xmm10
	leaq	(%r11,%r13), %r10
	movq	%r15, %xmm11
	leaq	(%rbp,%r13), %rdx
	movq	%r12, %xmm12
	pshufd	$68, %xmm12, %xmm12             # xmm12 = xmm12[0,1,0,1]
	punpcklqdq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0]
	punpcklqdq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0]
	pxor	%xmm1, %xmm11
	pxor	%xmm1, %xmm12
	movdqa	%xmm11, %xmm10
	pcmpgtd	%xmm12, %xmm10
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm12, %xmm8
	movdqa	%xmm8, %xmm13
	shufps	$136, %xmm10, %xmm13            # xmm13 = xmm13[0,2],xmm10[0,2]
	pcmpeqd	%xmm12, %xmm11
	pcmpeqd	%xmm12, %xmm9
	shufps	$221, %xmm11, %xmm9             # xmm9 = xmm9[1,3],xmm11[1,3]
	andps	%xmm13, %xmm9
	shufps	$221, %xmm10, %xmm8             # xmm8 = xmm8[1,3],xmm10[1,3]
	orps	%xmm9, %xmm8
	movq	%r14, %xmm9
	movq	%rbx, %xmm10
	punpcklqdq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0]
	movq	%rdi, %xmm9
	movq	%rax, %xmm11
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	movq	%rcx, %xmm9
	pshufd	$68, %xmm9, %xmm9               # xmm9 = xmm9[0,1,0,1]
	pxor	%xmm1, %xmm11
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm12
	pcmpgtd	%xmm11, %xmm12
	pxor	%xmm1, %xmm10
	movdqa	%xmm9, %xmm13
	pcmpgtd	%xmm10, %xmm13
	movdqa	%xmm13, %xmm14
	shufps	$136, %xmm12, %xmm14            # xmm14 = xmm14[0,2],xmm12[0,2]
	pcmpeqd	%xmm9, %xmm11
	pcmpeqd	%xmm9, %xmm10
	shufps	$221, %xmm11, %xmm10            # xmm10 = xmm10[1,3],xmm11[1,3]
	andps	%xmm14, %xmm10
	shufps	$221, %xmm12, %xmm13            # xmm13 = xmm13[1,3],xmm12[1,3]
	orps	%xmm10, %xmm13
	andps	%xmm8, %xmm13
	cmpq	%r8, %r12
	setb	%r8b
	cmpq	%rcx, %r9
	setb	%r15b
	cmpq	%r10, %r12
	setb	%r10b
	cmpq	%rcx, %r11
	setb	%r13b
	cmpq	%rdx, %r12
	setb	%dl
	cmpq	%rcx, %rbp
	setb	-128(%rsp)                      # 1-byte Folded Spill
	movmskps	%xmm13, %ecx
	testl	%ecx, %ecx
	jne	.LBB6_16
# %bb.18:                               # %vector.memcheck238
                                        #   in Loop: Header=BB6_15 Depth=1
	andb	%r15b, %r8b
	jne	.LBB6_16
# %bb.19:                               # %vector.memcheck238
                                        #   in Loop: Header=BB6_15 Depth=1
	andb	%r13b, %r10b
	jne	.LBB6_16
# %bb.20:                               # %vector.memcheck238
                                        #   in Loop: Header=BB6_15 Depth=1
	andb	-128(%rsp), %dl                 # 1-byte Folded Reload
	jne	.LBB6_16
# %bb.21:                               # %vector.ph276
                                        #   in Loop: Header=BB6_15 Depth=1
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	addq	%r12, %rcx
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r14,%rdx), %r8
	movq	%r8, -16(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdx), %r8
	movq	%r8, -128(%rsp)                 # 8-byte Spill
	leaq	(%r11,%rdx), %r8
	movq	%r8, -96(%rsp)                  # 8-byte Spill
	leaq	(%r9,%rdx), %r15
	leaq	(%rax,%rdx), %r13
	leaq	(%rbx,%rdx), %r10
	leaq	(%rdx,%rbp), %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_22:                               # %vector.body297
                                        #   Parent Loop BB6_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rbx,%rdx,2), %xmm8
	movdqu	16(%rbx,%rdx,2), %xmm9
	movdqu	32(%rbx,%rdx,2), %xmm12
	movdqu	48(%rbx,%rdx,2), %xmm13
	movdqu	(%r14,%rdx,2), %xmm11
	paddd	%xmm8, %xmm11
	movdqu	16(%r14,%rdx,2), %xmm10
	paddd	%xmm9, %xmm10
	movdqu	32(%r14,%rdx,2), %xmm9
	paddd	%xmm12, %xmm9
	movdqu	48(%r14,%rdx,2), %xmm8
	paddd	%xmm13, %xmm8
	movdqu	(%rax,%rdx,2), %xmm12
	movdqu	16(%rax,%rdx,2), %xmm13
	movdqu	32(%rax,%rdx,2), %xmm14
	movdqu	48(%rax,%rdx,2), %xmm15
	movdqu	(%rdi,%rdx,2), %xmm1
	paddd	%xmm12, %xmm1
	movdqu	16(%rdi,%rdx,2), %xmm12
	paddd	%xmm13, %xmm12
	movdqu	32(%rdi,%rdx,2), %xmm13
	paddd	%xmm14, %xmm13
	movdqu	48(%rdi,%rdx,2), %xmm14
	paddd	%xmm15, %xmm14
	movdqa	%xmm1, %xmm15
	pslld	$2, %xmm15
	paddd	%xmm1, %xmm15
	psubd	%xmm15, %xmm11
	movdqa	%xmm12, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm12, %xmm1
	psubd	%xmm1, %xmm10
	movdqa	%xmm13, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm13, %xmm1
	psubd	%xmm1, %xmm9
	movdqa	%xmm14, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm14, %xmm1
	psubd	%xmm1, %xmm8
	movdqu	(%r9,%rdx,2), %xmm1
	movdqu	16(%r9,%rdx,2), %xmm12
	movdqu	32(%r9,%rdx,2), %xmm13
	movdqu	48(%r9,%rdx,2), %xmm14
	movdqu	(%r11,%rdx,2), %xmm15
	paddd	%xmm1, %xmm15
	movdqu	16(%r11,%rdx,2), %xmm1
	paddd	%xmm12, %xmm1
	movdqu	32(%r11,%rdx,2), %xmm3
	paddd	%xmm13, %xmm3
	movdqu	48(%r11,%rdx,2), %xmm13
	paddd	%xmm14, %xmm13
	pshufd	$245, %xmm15, %xmm14            # xmm14 = xmm15[1,1,3,3]
	pmuludq	%xmm2, %xmm15
	pshufd	$232, %xmm15, %xmm12            # xmm12 = xmm15[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm12          # xmm12 = xmm12[0],xmm14[0],xmm12[1],xmm14[1]
	pshufd	$245, %xmm1, %xmm14             # xmm14 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1]
	pshufd	$245, %xmm3, %xmm14             # xmm14 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm3           # xmm3 = xmm3[0],xmm14[0],xmm3[1],xmm14[1]
	pshufd	$245, %xmm13, %xmm14            # xmm14 = xmm13[1,1,3,3]
	pmuludq	%xmm2, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm13          # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1]
	paddd	%xmm5, %xmm11
	paddd	%xmm12, %xmm11
	paddd	%xmm5, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm5, %xmm9
	paddd	%xmm3, %xmm9
	paddd	%xmm5, %xmm8
	paddd	%xmm13, %xmm8
	psrad	$10, %xmm11
	psrad	$10, %xmm10
	psrad	$10, %xmm9
	psrad	$10, %xmm8
	movdqa	%xmm11, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm11, %xmm1
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm10, %xmm3
	movdqa	%xmm9, %xmm13
	pcmpgtd	%xmm4, %xmm13
	pand	%xmm9, %xmm13
	movdqa	%xmm8, %xmm12
	pcmpgtd	%xmm4, %xmm12
	pand	%xmm8, %xmm12
	movdqa	%xmm0, %xmm11
	pcmpgtd	%xmm1, %xmm11
	pand	%xmm11, %xmm1
	pandn	%xmm0, %xmm11
	por	%xmm1, %xmm11
	movdqa	%xmm0, %xmm10
	pcmpgtd	%xmm3, %xmm10
	pand	%xmm10, %xmm3
	pandn	%xmm0, %xmm10
	por	%xmm3, %xmm10
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm13, %xmm9
	pand	%xmm9, %xmm13
	pandn	%xmm0, %xmm9
	por	%xmm13, %xmm9
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm12, %xmm8
	pand	%xmm8, %xmm12
	pandn	%xmm0, %xmm8
	por	%xmm12, %xmm8
	pshuflw	$232, %xmm11, %xmm1             # xmm1 = xmm11[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm10, %xmm3             # xmm3 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0]
	pshuflw	$232, %xmm9, %xmm3              # xmm3 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm8, %xmm12             # xmm12 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	punpcklqdq	%xmm12, %xmm3           # xmm3 = xmm3[0],xmm12[0]
	movdqu	%xmm1, (%r12,%rdx)
	movdqu	%xmm3, 16(%r12,%rdx)
	pand	%xmm6, %xmm11
	pand	%xmm6, %xmm10
	pand	%xmm6, %xmm9
	pand	%xmm6, %xmm8
	movdqu	(%rbp,%rdx,2), %xmm13
	movdqu	16(%rbp,%rdx,2), %xmm14
	movdqu	32(%rbp,%rdx,2), %xmm12
	movdqu	48(%rbp,%rdx,2), %xmm15
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm14
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm15
	psrad	$5, %xmm13
	psrad	$5, %xmm14
	psrad	$5, %xmm12
	psrad	$5, %xmm15
	movdqa	%xmm13, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm13, %xmm1
	movdqa	%xmm14, %xmm3
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm14, %xmm3
	movdqa	%xmm12, %xmm14
	pcmpgtd	%xmm4, %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm15, %xmm13
	pcmpgtd	%xmm4, %xmm13
	pand	%xmm15, %xmm13
	pcmpeqd	%xmm15, %xmm15
	movdqa	%xmm0, %xmm12
	pcmpgtd	%xmm1, %xmm12
	pand	%xmm12, %xmm1
	pandn	%xmm0, %xmm12
	por	%xmm1, %xmm12
	paddd	%xmm11, %xmm12
	movdqa	%xmm0, %xmm11
	pcmpgtd	%xmm3, %xmm11
	pand	%xmm11, %xmm3
	pandn	%xmm0, %xmm11
	por	%xmm3, %xmm11
	paddd	%xmm10, %xmm11
	movdqa	%xmm0, %xmm10
	pcmpgtd	%xmm14, %xmm10
	pand	%xmm10, %xmm14
	pandn	%xmm0, %xmm10
	por	%xmm14, %xmm10
	paddd	%xmm9, %xmm10
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm13, %xmm9
	pand	%xmm9, %xmm13
	pandn	%xmm0, %xmm9
	por	%xmm13, %xmm9
	paddd	%xmm8, %xmm9
	psubd	%xmm15, %xmm12
	psubd	%xmm15, %xmm11
	psubd	%xmm15, %xmm10
	psubd	%xmm15, %xmm9
	psrld	$1, %xmm12
	psrld	$1, %xmm11
	psrld	$1, %xmm10
	psrld	$1, %xmm9
	pshuflw	$232, %xmm12, %xmm1             # xmm1 = xmm12[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm11, %xmm3             # xmm3 = xmm11[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0]
	pshuflw	$232, %xmm10, %xmm3             # xmm3 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpcklqdq	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0]
	movdqu	%xmm1, (%r12,%rdx)
	movdqu	%xmm3, 16(%r12,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, -56(%rsp)                 # 8-byte Folded Reload
	jne	.LBB6_22
# %bb.23:                               # %middle.block273
                                        #   in Loop: Header=BB6_15 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %edx
	cmpl	-80(%rsp), %eax                 # 4-byte Folded Reload
	movq	-112(%rsp), %r14                # 8-byte Reload
	movq	-120(%rsp), %r12                # 8-byte Reload
	movdqa	.LCPI6_1(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	je	.LBB6_30
	jmp	.LBB6_24
.LBB6_31:                               # %for.end93
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
.Lfunc_end6:
	.size	get_luma_21, .Lfunc_end6-get_luma_21
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_22
.LCPI7_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI7_1:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI7_2:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.text
	.p2align	4, 0x90
	.type	get_luma_22,@function
get_luma_22:                            # @get_luma_22
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, -96(%rsp)                  # 8-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	cmpl	$-4, %ecx
	jl	.LBB7_30
# %bb.1:                                # %for.body.lr.ph
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB7_13
# %bb.2:                                # %for.body.us.preheader
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leal	5(%rax), %ecx
	movslq	%r9d, %rax
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	leal	-1(%rcx), %edx
	leaq	(%rax,%rdx), %rsi
	shlq	$2, %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, -40(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483632, %edx               # imm = 0x7FFFFFF0
	leal	(%rdx,%rdx), %esi
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	leaq	(,%rdx,4), %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx), %ebx
	andl	$-32, %ebx
	movq	$-2, %r14
	xorl	%r15d, %r15d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI7_0(%rip), %xmm1           # xmm1 = [20,20,20,20]
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_12:                               # %for.cond9.for.inc30_crit_edge.us
                                        #   in Loop: Header=BB7_3 Depth=1
	incq	%r14
	incq	%r15
	cmpq	-32(%rsp), %r15                 # 8-byte Folded Reload
	je	.LBB7_13
.LBB7_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_11 Depth 2
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r14,8), %rdi
	leaq	(%rdi,%rax,2), %rcx
	leaq	(%rdi,%rax,2), %r12
	addq	$-4, %r12
	leaq	-2(%rdi,%rax,2), %r13
	leaq	4(%rdi,%rax,2), %rbp
	leaq	(%rdi,%rax,2), %r11
	addq	$6, %r11
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx,%r15,8), %r9
	cmpl	$16, -96(%rsp)                  # 4-byte Folded Reload
	jb	.LBB7_4
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %rdi
	addq	$8, %rdi
	cmpq	%rdi, %r9
	jae	.LBB7_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %rdi
	addq	$4, %rdi
	cmpq	%rdi, %r12
	jae	.LBB7_7
.LBB7_4:                                #   in Loop: Header=BB7_3 Depth=1
	xorl	%edi, %edi
	movq	%rcx, %r8
	movq	%r9, %r10
.LBB7_10:                               # %for.body11.us.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-96(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edi, %ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB7_11:                               # %for.body11.us
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%rdi,2), %r9d
	movzwl	(%r11,%rdi,2), %esi
	addl	%r9d, %esi
	movzwl	(%r13,%rdi,2), %r9d
	movzwl	(%rbp,%rdi,2), %edx
	addl	%r9d, %edx
	leal	(%rdx,%rdx,4), %edx
	subl	%edx, %esi
	movzwl	(%r8,%rdi,2), %edx
	movzwl	2(%r8,%rdi,2), %r9d
	addl	%edx, %r9d
	leal	(%r9,%r9,4), %edx
	leal	(%rsi,%rdx,4), %edx
	movl	%edx, (%r10,%rdi,4)
	incq	%rdi
	cmpl	%edi, %ecx
	jne	.LBB7_11
	jmp	.LBB7_12
	.p2align	4, 0x90
.LBB7_7:                                # %vector.ph
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r11
	addq	%rdx, %rbp
	leaq	(%rcx,%rdx), %r8
	addq	%rdx, %r13
	addq	%rdx, %r12
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %r10
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB7_8:                                # %vector.body
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4(%rcx,%rdi), %xmm3            # xmm3 = mem[0],zero
	movq	4(%rcx,%rdi), %xmm8             # xmm8 = mem[0],zero
	movq	12(%rcx,%rdi), %xmm9            # xmm9 = mem[0],zero
	movq	20(%rcx,%rdi), %xmm10           # xmm10 = mem[0],zero
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	movq	6(%rcx,%rdi), %xmm7             # xmm7 = mem[0],zero
	movq	14(%rcx,%rdi), %xmm6            # xmm6 = mem[0],zero
	movq	22(%rcx,%rdi), %xmm5            # xmm5 = mem[0],zero
	movq	30(%rcx,%rdi), %xmm2            # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	paddd	%xmm7, %xmm3
	movdqa	%xmm6, %xmm4
	paddd	%xmm8, %xmm4
	movq	28(%rcx,%rdi), %xmm11           # xmm11 = mem[0],zero
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	paddd	%xmm5, %xmm11
	paddd	%xmm9, %xmm5
	paddd	%xmm10, %xmm2
	movq	-2(%rcx,%rdi), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	paddd	%xmm8, %xmm12
	paddd	%xmm9, %xmm7
	paddd	%xmm10, %xmm6
	movdqa	%xmm12, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm12, %xmm8
	psubd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm8, %xmm4
	movdqa	%xmm6, %xmm7
	pslld	$2, %xmm7
	paddd	%xmm6, %xmm7
	psubd	%xmm7, %xmm5
	movdqa	%xmm11, %xmm6
	pslld	$2, %xmm6
	paddd	%xmm11, %xmm6
	psubd	%xmm6, %xmm2
	movq	(%rcx,%rdi), %xmm8              # xmm8 = mem[0],zero
	movq	8(%rcx,%rdi), %xmm10            # xmm10 = mem[0],zero
	movq	16(%rcx,%rdi), %xmm11           # xmm11 = mem[0],zero
	movq	24(%rcx,%rdi), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	movq	2(%rcx,%rdi), %xmm13            # xmm13 = mem[0],zero
	movq	10(%rcx,%rdi), %xmm9            # xmm9 = mem[0],zero
	movq	18(%rcx,%rdi), %xmm7            # xmm7 = mem[0],zero
	movq	26(%rcx,%rdi), %xmm6            # xmm6 = mem[0],zero
	punpcklwd	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1],xmm13[2],xmm0[2],xmm13[3],xmm0[3]
	paddd	%xmm8, %xmm13
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	paddd	%xmm11, %xmm7
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm12, %xmm6
	pshufd	$245, %xmm13, %xmm10            # xmm10 = xmm13[1,1,3,3]
	pmuludq	%xmm1, %xmm13
	pshufd	$232, %xmm13, %xmm8             # xmm8 = xmm13[0,2,2,3]
	pmuludq	%xmm1, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	paddd	%xmm3, %xmm8
	pshufd	$245, %xmm9, %xmm3              # xmm3 = xmm9[1,1,3,3]
	pmuludq	%xmm1, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1]
	paddd	%xmm4, %xmm9
	pshufd	$245, %xmm7, %xmm3              # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	paddd	%xmm5, %xmm4
	pshufd	$245, %xmm6, %xmm3              # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	paddd	%xmm2, %xmm5
	movdqu	%xmm8, (%r9,%rdi,2)
	movdqu	%xmm9, 16(%r9,%rdi,2)
	movdqu	%xmm4, 32(%r9,%rdi,2)
	movdqu	%xmm5, 48(%r9,%rdi,2)
	addq	$32, %rdi
	cmpq	%rdi, %rbx
	jne	.LBB7_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edi
	cmpl	-80(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB7_12
	jmp	.LBB7_10
.LBB7_13:                               # %for.cond33.preheader
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	testl	%edx, %edx
	setle	%al
	cmpl	$0, -96(%rsp)                   # 4-byte Folded Reload
	setle	%cl
	orb	%al, %cl
	jne	.LBB7_30
# %bb.14:                               # %for.body36.us.preheader
	movl	56(%rsp), %edi
	movl	%edx, %eax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	4(,%rcx,4), %rdx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	leal	(%rcx,%rcx), %edx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	(%rax,%rax), %r12d
	andl	$-32, %r12d
	xorl	%r14d, %r14d
	movdqa	.LCPI7_1(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	movdqa	.LCPI7_0(%rip), %xmm2           # xmm2 = [20,20,20,20]
	movdqa	.LCPI7_2(%rip), %xmm3           # xmm3 = [512,512,512,512]
	pxor	%xmm4, %xmm4
	movq	%r12, -24(%rsp)                 # 8-byte Spill
	jmp	.LBB7_15
	.p2align	4, 0x90
.LBB7_29:                               # %for.cond56.for.cond33.loopexit_crit_edge.us
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-32(%rsp), %r14                 # 8-byte Reload
	incq	%r14
	cmpq	-40(%rsp), %r14                 # 8-byte Folded Reload
	je	.LBB7_30
.LBB7_15:                               # %for.body36.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_21 Depth 2
                                        #     Child Loop BB7_24 Depth 2
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r14,8), %r12
	movq	8(%rcx,%r14,8), %rbp
	movq	16(%rcx,%r14,8), %rbx
	movq	24(%rcx,%r14,8), %rax
	movq	32(%rcx,%r14,8), %r9
	movq	40(%rcx,%r14,8), %r11
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r14,8), %rdi
	cmpl	$16, -96(%rsp)                  # 4-byte Folded Reload
	movq	%r14, -32(%rsp)                 # 8-byte Spill
	jae	.LBB7_17
.LBB7_16:                               #   in Loop: Header=BB7_15 Depth=1
	xorl	%esi, %esi
	movq	%rdi, %rcx
	movq	%r11, %r14
	movq	%r9, %r10
	movq	%rax, %r8
	movq	%rbx, %r15
	movq	%rbp, %rdx
	movq	%r12, %r13
	movl	56(%rsp), %ebx
.LBB7_23:                               # %for.body59.us.preheader
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-96(%rsp), %rax                 # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%esi, %eax
	xorl	%esi, %esi
	jmp	.LBB7_24
	.p2align	4, 0x90
.LBB7_28:                               # %for.body59.us
                                        #   in Loop: Header=BB7_24 Depth=2
	movw	%di, (%rcx,%rsi,2)
	incq	%rsi
	cmpl	%esi, %eax
	je	.LBB7_29
.LBB7_24:                               # %for.body59.us
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r10,%rsi,4), %edi
	addl	(%rdx,%rsi,4), %edi
	movl	(%r13,%rsi,4), %r9d
	movl	(%r8,%rsi,4), %r11d
	addl	(%r15,%rsi,4), %r11d
	leal	(%rdi,%rdi,4), %edi
	leal	(%r11,%r11,4), %r11d
	addl	(%r14,%rsi,4), %r9d
	subl	%edi, %r9d
	leal	(%r9,%r11,4), %edi
	addl	$512, %edi                      # imm = 0x200
	sarl	$10, %edi
	testl	%edi, %edi
	jle	.LBB7_25
# %bb.26:                               # %for.body59.us
                                        #   in Loop: Header=BB7_24 Depth=2
	cmpl	%ebx, %edi
	jl	.LBB7_28
	jmp	.LBB7_27
	.p2align	4, 0x90
.LBB7_25:                               # %for.body59.us
                                        #   in Loop: Header=BB7_24 Depth=2
	xorl	%edi, %edi
	cmpl	%ebx, %edi
	jl	.LBB7_28
.LBB7_27:                               # %for.body59.us
                                        #   in Loop: Header=BB7_24 Depth=2
	movl	%ebx, %edi
	jmp	.LBB7_28
	.p2align	4, 0x90
.LBB7_17:                               # %vector.memcheck211
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	addq	%rdi, %rcx
	addq	$2, %rcx
	movq	-56(%rsp), %r10                 # 8-byte Reload
	leaq	(%r12,%r10), %rdx
	leaq	(%r11,%r10), %rsi
	movq	%rsi, %xmm5
	leaq	(%rbp,%r10), %r8
	movq	%rdx, %xmm6
	leaq	(%r9,%r10), %rdx
	movq	%rdx, %xmm7
	leaq	(%rbx,%r10), %rsi
	movq	%r8, %xmm8
	leaq	(%rax,%r10), %rdx
	movq	%rdi, %xmm9
	pshufd	$68, %xmm9, %xmm9               # xmm9 = xmm9[0,1,0,1]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	punpcklqdq	%xmm7, %xmm8            # xmm8 = xmm8[0],xmm7[0]
	pxor	%xmm1, %xmm8
	pxor	%xmm1, %xmm9
	movdqa	%xmm8, %xmm7
	pcmpgtd	%xmm9, %xmm7
	pxor	%xmm1, %xmm6
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm9, %xmm5
	movdqa	%xmm5, %xmm10
	shufps	$136, %xmm7, %xmm10             # xmm10 = xmm10[0,2],xmm7[0,2]
	pcmpeqd	%xmm9, %xmm8
	pcmpeqd	%xmm9, %xmm6
	shufps	$221, %xmm8, %xmm6              # xmm6 = xmm6[1,3],xmm8[1,3]
	andps	%xmm10, %xmm6
	shufps	$221, %xmm7, %xmm5              # xmm5 = xmm5[1,3],xmm7[1,3]
	orps	%xmm6, %xmm5
	movq	%r11, %xmm6
	movq	%r12, %xmm7
	punpcklqdq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0]
	movq	%r9, %xmm6
	movq	%rbp, %xmm8
	punpcklqdq	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0]
	movq	%rcx, %xmm6
	pshufd	$68, %xmm6, %xmm6               # xmm6 = xmm6[0,1,0,1]
	pxor	%xmm1, %xmm8
	pxor	%xmm1, %xmm6
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pxor	%xmm1, %xmm7
	movdqa	%xmm6, %xmm10
	pcmpgtd	%xmm7, %xmm10
	movdqa	%xmm10, %xmm11
	shufps	$136, %xmm9, %xmm11             # xmm11 = xmm11[0,2],xmm9[0,2]
	pcmpeqd	%xmm6, %xmm8
	pcmpeqd	%xmm6, %xmm7
	shufps	$221, %xmm8, %xmm7              # xmm7 = xmm7[1,3],xmm8[1,3]
	andps	%xmm11, %xmm7
	shufps	$221, %xmm9, %xmm10             # xmm10 = xmm10[1,3],xmm9[1,3]
	orps	%xmm7, %xmm10
	andps	%xmm5, %xmm10
	cmpq	%rsi, %rdi
	setb	%sil
	cmpq	%rcx, %rbx
	setb	%r8b
	cmpq	%rdx, %rdi
	setb	%dl
	cmpq	%rcx, %rax
	setb	%cl
	movmskps	%xmm10, %r10d
	testl	%r10d, %r10d
	jne	.LBB7_16
# %bb.18:                               # %vector.memcheck211
                                        #   in Loop: Header=BB7_15 Depth=1
	andb	%r8b, %sil
	jne	.LBB7_16
# %bb.19:                               # %vector.memcheck211
                                        #   in Loop: Header=BB7_15 Depth=1
	andb	%cl, %dl
	jne	.LBB7_16
# %bb.20:                               # %vector.ph244
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	addq	%rdi, %rcx
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r11,%rsi), %r14
	leaq	(%r9,%rsi), %r10
	leaq	(%rax,%rsi), %r8
	leaq	(%rbx,%rsi), %r15
	leaq	(%rsi,%rbp), %rdx
	leaq	(%r12,%rsi), %r13
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB7_21:                               # %vector.body263
                                        #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r12,%rsi,2), %xmm5
	movdqu	16(%r12,%rsi,2), %xmm6
	movdqu	32(%r12,%rsi,2), %xmm9
	movdqu	48(%r12,%rsi,2), %xmm10
	movdqu	(%r11,%rsi,2), %xmm8
	paddd	%xmm5, %xmm8
	movdqu	16(%r11,%rsi,2), %xmm7
	paddd	%xmm6, %xmm7
	movdqu	32(%r11,%rsi,2), %xmm6
	paddd	%xmm9, %xmm6
	movdqu	48(%r11,%rsi,2), %xmm5
	paddd	%xmm10, %xmm5
	movdqu	(%rbp,%rsi,2), %xmm9
	movdqu	16(%rbp,%rsi,2), %xmm10
	movdqu	32(%rbp,%rsi,2), %xmm11
	movdqu	48(%rbp,%rsi,2), %xmm12
	movdqu	(%r9,%rsi,2), %xmm13
	paddd	%xmm9, %xmm13
	movdqu	16(%r9,%rsi,2), %xmm9
	paddd	%xmm10, %xmm9
	movdqu	32(%r9,%rsi,2), %xmm10
	paddd	%xmm11, %xmm10
	movdqu	48(%r9,%rsi,2), %xmm11
	paddd	%xmm12, %xmm11
	movdqa	%xmm13, %xmm12
	pslld	$2, %xmm12
	paddd	%xmm13, %xmm12
	psubd	%xmm12, %xmm8
	movdqa	%xmm9, %xmm12
	pslld	$2, %xmm12
	paddd	%xmm9, %xmm12
	psubd	%xmm12, %xmm7
	movdqa	%xmm10, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm10, %xmm9
	psubd	%xmm9, %xmm6
	movdqa	%xmm11, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm11, %xmm9
	psubd	%xmm9, %xmm5
	movdqu	(%rbx,%rsi,2), %xmm9
	movdqu	16(%rbx,%rsi,2), %xmm10
	movdqu	32(%rbx,%rsi,2), %xmm11
	movdqu	48(%rbx,%rsi,2), %xmm12
	movdqu	(%rax,%rsi,2), %xmm13
	paddd	%xmm9, %xmm13
	movdqu	16(%rax,%rsi,2), %xmm14
	paddd	%xmm10, %xmm14
	movdqu	32(%rax,%rsi,2), %xmm15
	paddd	%xmm11, %xmm15
	movdqu	48(%rax,%rsi,2), %xmm10
	paddd	%xmm12, %xmm10
	pshufd	$245, %xmm13, %xmm11            # xmm11 = xmm13[1,1,3,3]
	pmuludq	%xmm2, %xmm13
	pshufd	$232, %xmm13, %xmm9             # xmm9 = xmm13[0,2,2,3]
	pmuludq	%xmm2, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1]
	pshufd	$245, %xmm14, %xmm11            # xmm11 = xmm14[1,1,3,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm12            # xmm12 = xmm14[0,2,2,3]
	pmuludq	%xmm2, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm12          # xmm12 = xmm12[0],xmm11[0],xmm12[1],xmm11[1]
	pshufd	$245, %xmm15, %xmm11            # xmm11 = xmm15[1,1,3,3]
	pmuludq	%xmm2, %xmm15
	pshufd	$232, %xmm15, %xmm13            # xmm13 = xmm15[0,2,2,3]
	pmuludq	%xmm2, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm13          # xmm13 = xmm13[0],xmm11[0],xmm13[1],xmm11[1]
	pshufd	$245, %xmm10, %xmm11            # xmm11 = xmm10[1,1,3,3]
	pmuludq	%xmm2, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pmuludq	%xmm2, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	paddd	%xmm3, %xmm8
	paddd	%xmm9, %xmm8
	paddd	%xmm3, %xmm7
	paddd	%xmm12, %xmm7
	paddd	%xmm3, %xmm6
	paddd	%xmm13, %xmm6
	paddd	%xmm3, %xmm5
	paddd	%xmm10, %xmm5
	psrad	$10, %xmm8
	psrad	$10, %xmm7
	psrad	$10, %xmm6
	psrad	$10, %xmm5
	movdqa	%xmm8, %xmm9
	pcmpgtd	%xmm4, %xmm9
	pand	%xmm8, %xmm9
	movdqa	%xmm7, %xmm8
	pcmpgtd	%xmm4, %xmm8
	pand	%xmm7, %xmm8
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm5, %xmm6
	pcmpgtd	%xmm4, %xmm6
	pand	%xmm5, %xmm6
	movdqa	%xmm0, %xmm5
	pcmpgtd	%xmm9, %xmm5
	pand	%xmm5, %xmm9
	pandn	%xmm0, %xmm5
	por	%xmm9, %xmm5
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pand	%xmm9, %xmm8
	pandn	%xmm0, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm7, %xmm8
	pand	%xmm8, %xmm7
	pandn	%xmm0, %xmm8
	por	%xmm7, %xmm8
	movdqa	%xmm0, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pand	%xmm7, %xmm6
	pandn	%xmm0, %xmm7
	por	%xmm6, %xmm7
	pshuflw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshuflw	$232, %xmm9, %xmm6              # xmm6 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpcklqdq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0]
	pshuflw	$232, %xmm8, %xmm6              # xmm6 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpcklqdq	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0]
	movdqu	%xmm5, (%rdi,%rsi)
	movdqu	%xmm6, 16(%rdi,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, -24(%rsp)                 # 8-byte Folded Reload
	jne	.LBB7_21
# %bb.22:                               # %middle.block241
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %esi
	cmpl	-80(%rsp), %eax                 # 4-byte Folded Reload
	movl	56(%rsp), %ebx
	je	.LBB7_29
	jmp	.LBB7_23
.LBB7_30:                               # %for.end81
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
.Lfunc_end7:
	.size	get_luma_22, .Lfunc_end7-get_luma_22
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_23
.LCPI8_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI8_1:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI8_2:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
.LCPI8_3:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI8_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_23,@function
get_luma_23:                            # @get_luma_23
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, -104(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rsi, -128(%rsp)                # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	cmpl	$-4, %ecx
	jl	.LBB8_31
# %bb.1:                                # %for.body.lr.ph
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	movl	%eax, %ecx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	testl	%eax, %eax
	jle	.LBB8_13
# %bb.2:                                # %for.body.us.preheader
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leal	5(%rax), %ecx
	movslq	%r9d, %rax
	cmpl	$2, %ecx
	movl	$1, %edx
	cmovgel	%ecx, %edx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rcx                # 8-byte Reload
	leal	-1(%rcx), %edx
	leaq	(%rax,%rdx), %rsi
	shlq	$2, %rdx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, -56(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483632, %edx               # imm = 0x7FFFFFF0
	leal	(%rdx,%rdx), %esi
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	leaq	(,%rdx,4), %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx), %ebx
	andl	$-32, %ebx
	movq	$-2, %r14
	xorl	%r15d, %r15d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI8_0(%rip), %xmm1           # xmm1 = [20,20,20,20]
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_12:                               # %for.cond9.for.inc30_crit_edge.us
                                        #   in Loop: Header=BB8_3 Depth=1
	incq	%r14
	incq	%r15
	cmpq	-96(%rsp), %r15                 # 8-byte Folded Reload
	je	.LBB8_13
.LBB8_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #     Child Loop BB8_11 Depth 2
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	(%rcx,%r14,8), %rdx
	leaq	(%rdx,%rax,2), %rcx
	leaq	(%rdx,%rax,2), %r12
	addq	$-4, %r12
	leaq	-2(%rdx,%rax,2), %r13
	leaq	4(%rdx,%rax,2), %rbp
	leaq	(%rdx,%rax,2), %r11
	addq	$6, %r11
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	(%rsi,%r15,8), %rdi
	cmpl	$16, -104(%rsp)                 # 4-byte Folded Reload
	jb	.LBB8_4
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	addq	%rsi, %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	jae	.LBB8_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-112(%rsp), %rdx                # 8-byte Reload
	addq	%rdi, %rdx
	addq	$4, %rdx
	cmpq	%rdx, %r12
	jae	.LBB8_7
.LBB8_4:                                #   in Loop: Header=BB8_3 Depth=1
	xorl	%edx, %edx
	movq	%rcx, %r9
	movq	%rdi, %r8
.LBB8_10:                               # %for.body11.us.preheader
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-104(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edx, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_11:                               # %for.body11.us
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%rdx,2), %edi
	movzwl	(%r11,%rdx,2), %esi
	addl	%edi, %esi
	movzwl	(%r13,%rdx,2), %edi
	movzwl	(%rbp,%rdx,2), %r10d
	addl	%edi, %r10d
	leal	(%r10,%r10,4), %edi
	subl	%edi, %esi
	movzwl	(%r9,%rdx,2), %edi
	movzwl	2(%r9,%rdx,2), %r10d
	addl	%edi, %r10d
	leal	(%r10,%r10,4), %edi
	leal	(%rsi,%rdi,4), %esi
	movl	%esi, (%r8,%rdx,4)
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB8_11
	jmp	.LBB8_12
	.p2align	4, 0x90
.LBB8_7:                                # %vector.ph
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, %r11
	addq	%rdx, %rbp
	leaq	(%rcx,%rdx), %r9
	addq	%rdx, %r13
	addq	%rdx, %r12
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdi,%rdx), %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_8:                                # %vector.body
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-4(%rcx,%rdx), %xmm3            # xmm3 = mem[0],zero
	movq	4(%rcx,%rdx), %xmm8             # xmm8 = mem[0],zero
	movq	12(%rcx,%rdx), %xmm9            # xmm9 = mem[0],zero
	movq	20(%rcx,%rdx), %xmm10           # xmm10 = mem[0],zero
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	movq	6(%rcx,%rdx), %xmm7             # xmm7 = mem[0],zero
	movq	14(%rcx,%rdx), %xmm6            # xmm6 = mem[0],zero
	movq	22(%rcx,%rdx), %xmm5            # xmm5 = mem[0],zero
	movq	30(%rcx,%rdx), %xmm2            # xmm2 = mem[0],zero
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	paddd	%xmm7, %xmm3
	movdqa	%xmm6, %xmm4
	paddd	%xmm8, %xmm4
	movq	28(%rcx,%rdx), %xmm11           # xmm11 = mem[0],zero
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	paddd	%xmm5, %xmm11
	paddd	%xmm9, %xmm5
	paddd	%xmm10, %xmm2
	movq	-2(%rcx,%rdx), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	paddd	%xmm8, %xmm12
	paddd	%xmm9, %xmm7
	paddd	%xmm10, %xmm6
	movdqa	%xmm12, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm12, %xmm8
	psubd	%xmm8, %xmm3
	movdqa	%xmm7, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm8, %xmm4
	movdqa	%xmm6, %xmm7
	pslld	$2, %xmm7
	paddd	%xmm6, %xmm7
	psubd	%xmm7, %xmm5
	movdqa	%xmm11, %xmm6
	pslld	$2, %xmm6
	paddd	%xmm11, %xmm6
	psubd	%xmm6, %xmm2
	movq	(%rcx,%rdx), %xmm8              # xmm8 = mem[0],zero
	movq	8(%rcx,%rdx), %xmm10            # xmm10 = mem[0],zero
	movq	16(%rcx,%rdx), %xmm11           # xmm11 = mem[0],zero
	movq	24(%rcx,%rdx), %xmm12           # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	movq	2(%rcx,%rdx), %xmm13            # xmm13 = mem[0],zero
	movq	10(%rcx,%rdx), %xmm9            # xmm9 = mem[0],zero
	movq	18(%rcx,%rdx), %xmm7            # xmm7 = mem[0],zero
	movq	26(%rcx,%rdx), %xmm6            # xmm6 = mem[0],zero
	punpcklwd	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1],xmm13[2],xmm0[2],xmm13[3],xmm0[3]
	paddd	%xmm8, %xmm13
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	paddd	%xmm11, %xmm7
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	paddd	%xmm12, %xmm6
	pshufd	$245, %xmm13, %xmm10            # xmm10 = xmm13[1,1,3,3]
	pmuludq	%xmm1, %xmm13
	pshufd	$232, %xmm13, %xmm8             # xmm8 = xmm13[0,2,2,3]
	pmuludq	%xmm1, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	paddd	%xmm3, %xmm8
	pshufd	$245, %xmm9, %xmm3              # xmm3 = xmm9[1,1,3,3]
	pmuludq	%xmm1, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1]
	paddd	%xmm4, %xmm9
	pshufd	$245, %xmm7, %xmm3              # xmm3 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	paddd	%xmm5, %xmm4
	pshufd	$245, %xmm6, %xmm3              # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	paddd	%xmm2, %xmm5
	movdqu	%xmm8, (%rdi,%rdx,2)
	movdqu	%xmm9, 16(%rdi,%rdx,2)
	movdqu	%xmm4, 32(%rdi,%rdx,2)
	movdqu	%xmm5, 48(%rdi,%rdx,2)
	addq	$32, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB8_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movl	%ecx, %edx
	cmpl	-80(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB8_12
	jmp	.LBB8_10
.LBB8_13:                               # %for.cond33.preheader
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	testl	%edx, %edx
	setle	%al
	cmpl	$0, -104(%rsp)                  # 4-byte Folded Reload
	setle	%cl
	orb	%al, %cl
	jne	.LBB8_31
# %bb.14:                               # %for.body36.us.preheader
	movl	56(%rsp), %esi
	movl	%edx, %eax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	4(,%rcx,4), %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	leal	(%rcx,%rcx), %edx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	leaq	(,%rcx,4), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leal	(%rax,%rax), %ebx
	andl	$-32, %ebx
	movl	$3, %r14d
	xorl	%r12d, %r12d
	movdqa	.LCPI8_1(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	movdqa	.LCPI8_0(%rip), %xmm2           # xmm2 = [20,20,20,20]
	movdqa	.LCPI8_2(%rip), %xmm5           # xmm5 = [512,512,512,512]
	pxor	%xmm4, %xmm4
	movdqa	.LCPI8_3(%rip), %xmm6           # xmm6 = [65535,0,65535,0,65535,0,65535,0]
	movdqa	.LCPI8_4(%rip), %xmm7           # xmm7 = [16,16,16,16]
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	jmp	.LBB8_15
	.p2align	4, 0x90
.LBB8_30:                               # %for.cond59.for.cond33.loopexit_crit_edge.us
                                        #   in Loop: Header=BB8_15 Depth=1
	incq	%r12
	incq	%r14
	cmpq	-64(%rsp), %r12                 # 8-byte Folded Reload
	je	.LBB8_31
.LBB8_15:                               # %for.body36.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_22 Depth 2
                                        #     Child Loop BB8_25 Depth 2
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movq	%r14, -112(%rsp)                # 8-byte Spill
	movq	(%rcx,%r14,8), %rbp
	movq	(%rcx,%r12,8), %rbx
	movq	8(%rcx,%r12,8), %rax
	movq	16(%rcx,%r12,8), %r9
	movq	24(%rcx,%r12,8), %r11
	movq	32(%rcx,%r12,8), %rdi
	movq	40(%rcx,%r12,8), %r14
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%r12, -120(%rsp)                # 8-byte Spill
	movq	(%rcx,%r12,8), %r12
	cmpl	$16, -104(%rsp)                 # 4-byte Folded Reload
	jae	.LBB8_17
.LBB8_16:                               #   in Loop: Header=BB8_15 Depth=1
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%rdi, -128(%rsp)                # 8-byte Spill
	movq	%r11, -96(%rsp)                 # 8-byte Spill
	movq	%r9, %r15
	movq	%rax, %r13
	movq	%rbx, %r10
	movq	%rbp, %r8
	movq	%r14, %rbp
	movq	-112(%rsp), %r14                # 8-byte Reload
	movq	-120(%rsp), %r12                # 8-byte Reload
.LBB8_24:                               # %for.body62.us.preheader
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%edx, %eax
	xorl	%edx, %edx
	jmp	.LBB8_25
	.p2align	4, 0x90
.LBB8_29:                               # %for.body62.us
                                        #   in Loop: Header=BB8_25 Depth=2
	movw	%r9w, (%rcx,%rdx,2)
	movzwl	%r9w, %r9d
	movl	(%r8,%rdx,4), %r11d
	addl	$16, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovgl	%r11d, %edi
	cmpl	%esi, %edi
	cmovgel	%esi, %edi
	addl	%r9d, %edi
	incl	%edi
	shrl	%edi
	movw	%di, (%rcx,%rdx,2)
	incq	%rdx
	cmpl	%edx, %eax
	je	.LBB8_30
.LBB8_25:                               # %for.body62.us
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r10,%rdx,4), %edi
	movq	-128(%rsp), %r9                 # 8-byte Reload
	movl	(%r9,%rdx,4), %r9d
	addl	(%r13,%rdx,4), %r9d
	leal	(%r9,%r9,4), %r9d
	movq	-96(%rsp), %r11                 # 8-byte Reload
	movl	(%r11,%rdx,4), %r11d
	addl	(%r15,%rdx,4), %r11d
	leal	(%r11,%r11,4), %r11d
	addl	(%rbp,%rdx,4), %edi
	subl	%r9d, %edi
	leal	(%rdi,%r11,4), %r9d
	addl	$512, %r9d                      # imm = 0x200
	sarl	$10, %r9d
	xorl	%edi, %edi
	testl	%r9d, %r9d
	jg	.LBB8_27
# %bb.26:                               # %for.body62.us
                                        #   in Loop: Header=BB8_25 Depth=2
	xorl	%r9d, %r9d
.LBB8_27:                               # %for.body62.us
                                        #   in Loop: Header=BB8_25 Depth=2
	cmpl	%esi, %r9d
	jl	.LBB8_29
# %bb.28:                               # %for.body62.us
                                        #   in Loop: Header=BB8_25 Depth=2
	movl	%esi, %r9d
	jmp	.LBB8_29
	.p2align	4, 0x90
.LBB8_17:                               # %vector.memcheck238
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	addq	%r12, %rcx
	addq	$2, %rcx
	movq	-88(%rsp), %r13                 # 8-byte Reload
	leaq	(%rbx,%r13), %rdx
	leaq	(%r14,%r13), %r8
	leaq	(%rax,%r13), %r15
	movq	%r8, %xmm8
	leaq	(%rdi,%r13), %r10
	movq	%rdx, %xmm9
	leaq	(%r9,%r13), %r8
	movq	%r10, %xmm10
	leaq	(%r11,%r13), %r10
	movq	%r15, %xmm11
	leaq	(%rbp,%r13), %rdx
	movq	%r12, %xmm12
	pshufd	$68, %xmm12, %xmm12             # xmm12 = xmm12[0,1,0,1]
	punpcklqdq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0]
	punpcklqdq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0]
	pxor	%xmm1, %xmm11
	pxor	%xmm1, %xmm12
	movdqa	%xmm11, %xmm10
	pcmpgtd	%xmm12, %xmm10
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm12, %xmm8
	movdqa	%xmm8, %xmm13
	shufps	$136, %xmm10, %xmm13            # xmm13 = xmm13[0,2],xmm10[0,2]
	pcmpeqd	%xmm12, %xmm11
	pcmpeqd	%xmm12, %xmm9
	shufps	$221, %xmm11, %xmm9             # xmm9 = xmm9[1,3],xmm11[1,3]
	andps	%xmm13, %xmm9
	shufps	$221, %xmm10, %xmm8             # xmm8 = xmm8[1,3],xmm10[1,3]
	orps	%xmm9, %xmm8
	movq	%r14, %xmm9
	movq	%rbx, %xmm10
	punpcklqdq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0]
	movq	%rdi, %xmm9
	movq	%rax, %xmm11
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	movq	%rcx, %xmm9
	pshufd	$68, %xmm9, %xmm9               # xmm9 = xmm9[0,1,0,1]
	pxor	%xmm1, %xmm11
	pxor	%xmm1, %xmm9
	movdqa	%xmm9, %xmm12
	pcmpgtd	%xmm11, %xmm12
	pxor	%xmm1, %xmm10
	movdqa	%xmm9, %xmm13
	pcmpgtd	%xmm10, %xmm13
	movdqa	%xmm13, %xmm14
	shufps	$136, %xmm12, %xmm14            # xmm14 = xmm14[0,2],xmm12[0,2]
	pcmpeqd	%xmm9, %xmm11
	pcmpeqd	%xmm9, %xmm10
	shufps	$221, %xmm11, %xmm10            # xmm10 = xmm10[1,3],xmm11[1,3]
	andps	%xmm14, %xmm10
	shufps	$221, %xmm12, %xmm13            # xmm13 = xmm13[1,3],xmm12[1,3]
	orps	%xmm10, %xmm13
	andps	%xmm8, %xmm13
	cmpq	%r8, %r12
	setb	%r8b
	cmpq	%rcx, %r9
	setb	%r15b
	cmpq	%r10, %r12
	setb	%r10b
	cmpq	%rcx, %r11
	setb	%r13b
	cmpq	%rdx, %r12
	setb	%dl
	cmpq	%rcx, %rbp
	setb	-128(%rsp)                      # 1-byte Folded Spill
	movmskps	%xmm13, %ecx
	testl	%ecx, %ecx
	jne	.LBB8_16
# %bb.18:                               # %vector.memcheck238
                                        #   in Loop: Header=BB8_15 Depth=1
	andb	%r15b, %r8b
	jne	.LBB8_16
# %bb.19:                               # %vector.memcheck238
                                        #   in Loop: Header=BB8_15 Depth=1
	andb	%r13b, %r10b
	jne	.LBB8_16
# %bb.20:                               # %vector.memcheck238
                                        #   in Loop: Header=BB8_15 Depth=1
	andb	-128(%rsp), %dl                 # 1-byte Folded Reload
	jne	.LBB8_16
# %bb.21:                               # %vector.ph276
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	addq	%r12, %rcx
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r14,%rdx), %r8
	movq	%r8, -16(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdx), %r8
	movq	%r8, -128(%rsp)                 # 8-byte Spill
	leaq	(%r11,%rdx), %r8
	movq	%r8, -96(%rsp)                  # 8-byte Spill
	leaq	(%r9,%rdx), %r15
	leaq	(%rax,%rdx), %r13
	leaq	(%rbx,%rdx), %r10
	leaq	(%rdx,%rbp), %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_22:                               # %vector.body297
                                        #   Parent Loop BB8_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rbx,%rdx,2), %xmm8
	movdqu	16(%rbx,%rdx,2), %xmm9
	movdqu	32(%rbx,%rdx,2), %xmm12
	movdqu	48(%rbx,%rdx,2), %xmm13
	movdqu	(%r14,%rdx,2), %xmm11
	paddd	%xmm8, %xmm11
	movdqu	16(%r14,%rdx,2), %xmm10
	paddd	%xmm9, %xmm10
	movdqu	32(%r14,%rdx,2), %xmm9
	paddd	%xmm12, %xmm9
	movdqu	48(%r14,%rdx,2), %xmm8
	paddd	%xmm13, %xmm8
	movdqu	(%rax,%rdx,2), %xmm12
	movdqu	16(%rax,%rdx,2), %xmm13
	movdqu	32(%rax,%rdx,2), %xmm14
	movdqu	48(%rax,%rdx,2), %xmm15
	movdqu	(%rdi,%rdx,2), %xmm1
	paddd	%xmm12, %xmm1
	movdqu	16(%rdi,%rdx,2), %xmm12
	paddd	%xmm13, %xmm12
	movdqu	32(%rdi,%rdx,2), %xmm13
	paddd	%xmm14, %xmm13
	movdqu	48(%rdi,%rdx,2), %xmm14
	paddd	%xmm15, %xmm14
	movdqa	%xmm1, %xmm15
	pslld	$2, %xmm15
	paddd	%xmm1, %xmm15
	psubd	%xmm15, %xmm11
	movdqa	%xmm12, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm12, %xmm1
	psubd	%xmm1, %xmm10
	movdqa	%xmm13, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm13, %xmm1
	psubd	%xmm1, %xmm9
	movdqa	%xmm14, %xmm1
	pslld	$2, %xmm1
	paddd	%xmm14, %xmm1
	psubd	%xmm1, %xmm8
	movdqu	(%r9,%rdx,2), %xmm1
	movdqu	16(%r9,%rdx,2), %xmm12
	movdqu	32(%r9,%rdx,2), %xmm13
	movdqu	48(%r9,%rdx,2), %xmm14
	movdqu	(%r11,%rdx,2), %xmm15
	paddd	%xmm1, %xmm15
	movdqu	16(%r11,%rdx,2), %xmm1
	paddd	%xmm12, %xmm1
	movdqu	32(%r11,%rdx,2), %xmm3
	paddd	%xmm13, %xmm3
	movdqu	48(%r11,%rdx,2), %xmm13
	paddd	%xmm14, %xmm13
	pshufd	$245, %xmm15, %xmm14            # xmm14 = xmm15[1,1,3,3]
	pmuludq	%xmm2, %xmm15
	pshufd	$232, %xmm15, %xmm12            # xmm12 = xmm15[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm12          # xmm12 = xmm12[0],xmm14[0],xmm12[1],xmm14[1]
	pshufd	$245, %xmm1, %xmm14             # xmm14 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1]
	pshufd	$245, %xmm3, %xmm14             # xmm14 = xmm3[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm3           # xmm3 = xmm3[0],xmm14[0],xmm3[1],xmm14[1]
	pshufd	$245, %xmm13, %xmm14            # xmm14 = xmm13[1,1,3,3]
	pmuludq	%xmm2, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm2, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	punpckldq	%xmm14, %xmm13          # xmm13 = xmm13[0],xmm14[0],xmm13[1],xmm14[1]
	paddd	%xmm5, %xmm11
	paddd	%xmm12, %xmm11
	paddd	%xmm5, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm5, %xmm9
	paddd	%xmm3, %xmm9
	paddd	%xmm5, %xmm8
	paddd	%xmm13, %xmm8
	psrad	$10, %xmm11
	psrad	$10, %xmm10
	psrad	$10, %xmm9
	psrad	$10, %xmm8
	movdqa	%xmm11, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm11, %xmm1
	movdqa	%xmm10, %xmm3
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm10, %xmm3
	movdqa	%xmm9, %xmm13
	pcmpgtd	%xmm4, %xmm13
	pand	%xmm9, %xmm13
	movdqa	%xmm8, %xmm12
	pcmpgtd	%xmm4, %xmm12
	pand	%xmm8, %xmm12
	movdqa	%xmm0, %xmm11
	pcmpgtd	%xmm1, %xmm11
	pand	%xmm11, %xmm1
	pandn	%xmm0, %xmm11
	por	%xmm1, %xmm11
	movdqa	%xmm0, %xmm10
	pcmpgtd	%xmm3, %xmm10
	pand	%xmm10, %xmm3
	pandn	%xmm0, %xmm10
	por	%xmm3, %xmm10
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm13, %xmm9
	pand	%xmm9, %xmm13
	pandn	%xmm0, %xmm9
	por	%xmm13, %xmm9
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm12, %xmm8
	pand	%xmm8, %xmm12
	pandn	%xmm0, %xmm8
	por	%xmm12, %xmm8
	pshuflw	$232, %xmm11, %xmm1             # xmm1 = xmm11[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm10, %xmm3             # xmm3 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0]
	pshuflw	$232, %xmm9, %xmm3              # xmm3 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm8, %xmm12             # xmm12 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	punpcklqdq	%xmm12, %xmm3           # xmm3 = xmm3[0],xmm12[0]
	movdqu	%xmm1, (%r12,%rdx)
	movdqu	%xmm3, 16(%r12,%rdx)
	pand	%xmm6, %xmm11
	pand	%xmm6, %xmm10
	pand	%xmm6, %xmm9
	pand	%xmm6, %xmm8
	movdqu	(%rbp,%rdx,2), %xmm13
	movdqu	16(%rbp,%rdx,2), %xmm14
	movdqu	32(%rbp,%rdx,2), %xmm12
	movdqu	48(%rbp,%rdx,2), %xmm15
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm14
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm15
	psrad	$5, %xmm13
	psrad	$5, %xmm14
	psrad	$5, %xmm12
	psrad	$5, %xmm15
	movdqa	%xmm13, %xmm1
	pcmpgtd	%xmm4, %xmm1
	pand	%xmm13, %xmm1
	movdqa	%xmm14, %xmm3
	pcmpgtd	%xmm4, %xmm3
	pand	%xmm14, %xmm3
	movdqa	%xmm12, %xmm14
	pcmpgtd	%xmm4, %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm15, %xmm13
	pcmpgtd	%xmm4, %xmm13
	pand	%xmm15, %xmm13
	pcmpeqd	%xmm15, %xmm15
	movdqa	%xmm0, %xmm12
	pcmpgtd	%xmm1, %xmm12
	pand	%xmm12, %xmm1
	pandn	%xmm0, %xmm12
	por	%xmm1, %xmm12
	paddd	%xmm11, %xmm12
	movdqa	%xmm0, %xmm11
	pcmpgtd	%xmm3, %xmm11
	pand	%xmm11, %xmm3
	pandn	%xmm0, %xmm11
	por	%xmm3, %xmm11
	paddd	%xmm10, %xmm11
	movdqa	%xmm0, %xmm10
	pcmpgtd	%xmm14, %xmm10
	pand	%xmm10, %xmm14
	pandn	%xmm0, %xmm10
	por	%xmm14, %xmm10
	paddd	%xmm9, %xmm10
	movdqa	%xmm0, %xmm9
	pcmpgtd	%xmm13, %xmm9
	pand	%xmm9, %xmm13
	pandn	%xmm0, %xmm9
	por	%xmm13, %xmm9
	paddd	%xmm8, %xmm9
	psubd	%xmm15, %xmm12
	psubd	%xmm15, %xmm11
	psubd	%xmm15, %xmm10
	psubd	%xmm15, %xmm9
	psrld	$1, %xmm12
	psrld	$1, %xmm11
	psrld	$1, %xmm10
	psrld	$1, %xmm9
	pshuflw	$232, %xmm12, %xmm1             # xmm1 = xmm12[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm11, %xmm3             # xmm3 = xmm11[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0]
	pshuflw	$232, %xmm10, %xmm3             # xmm3 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpcklqdq	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0]
	movdqu	%xmm1, (%r12,%rdx)
	movdqu	%xmm3, 16(%r12,%rdx)
	addq	$32, %rdx
	cmpq	%rdx, -56(%rsp)                 # 8-byte Folded Reload
	jne	.LBB8_22
# %bb.23:                               # %middle.block273
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %edx
	cmpl	-80(%rsp), %eax                 # 4-byte Folded Reload
	movq	-112(%rsp), %r14                # 8-byte Reload
	movq	-120(%rsp), %r12                # 8-byte Reload
	movdqa	.LCPI8_1(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	je	.LBB8_30
	jmp	.LBB8_24
.LBB8_31:                               # %for.end93
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
.Lfunc_end8:
	.size	get_luma_23, .Lfunc_end8-get_luma_23
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_12
.LCPI9_0:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI9_1:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI9_2:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
.LCPI9_3:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI9_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_12,@function
get_luma_12:                            # @get_luma_12
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, -120(%rsp)                 # 8-byte Spill
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB9_30
# %bb.1:                                # %for.body.lr.ph
	cmpl	$-4, -120(%rsp)                 # 4-byte Folded Reload
	jl	.LBB9_30
# %bb.2:                                # %for.body.us.preheader
	movslq	176(%rsp), %r8
	movl	$-5, %eax
	movq	-120(%rsp), %rdi                # 8-byte Reload
	subl	%edi, %eax
	cltq
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movslq	%r9d, %rax
	leaq	(%rsi,%rax,2), %r15
	addq	$-4, %r15
	leal	4(%rdi), %esi
	xorl	%r11d, %r11d
	testl	%esi, %esi
	movl	$0, %eax
	movl	%esi, -96(%rsp)                 # 4-byte Spill
	cmovgl	%esi, %eax
	leaq	(,%rax,4), %rsi
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	leaq	(%r8,%r8), %rdi
	leaq	(%rdi,%rdi,2), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	leaq	(,%r8,4), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	leaq	(,%r8,8), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	leaq	(%r8,%rax), %rsi
	leaq	2(%rsi,%rsi), %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi,4), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	leaq	2(%rax,%rax), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	leaq	1(%rax), %rsi
                                        # kill: def $eax killed $eax killed $rax
	incl	%eax
	movl	%eax, -104(%rsp)                # 4-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$-16, %esi
	leaq	(%rdi,%rdi,2), %rax
	addq	$24, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	24(%rdi,%rdi,4), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movdqa	.LCPI9_0(%rip), %xmm1           # xmm1 = [9223372039002259456,9223372039002259456]
	pxor	%xmm2, %xmm2
	movdqa	.LCPI9_1(%rip), %xmm0           # xmm0 = [20,20,20,20]
	movl	%ecx, -68(%rsp)                 # 4-byte Spill
	movl	%ecx, %r12d
	leaq	(%rsi,%rsi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,4), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	24(%r8,%r8), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	24(,%r8,4), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r8, -80(%rsp)                  # 8-byte Spill
	leaq	24(,%r8,8), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_14:                               # %for.cond12.for.end_crit_edge.us
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,2), %r15
	addq	%r13, %r15
	movq	-32(%rsp), %r11                 # 8-byte Reload
	incq	%r11
	cmpq	%r12, %r11
	movl	184(%rsp), %esi
	je	.LBB9_15
.LBB9_3:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
                                        #     Child Loop BB9_12 Depth 2
	movq	-80(%rsp), %rax                 # 8-byte Reload
	leaq	(%r15,%rax,2), %r13
	leaq	(,%rax,2), %rbp
	addq	%r13, %rbp
	leaq	(%rbp,%rax,2), %r14
	leaq	(%r14,%rax,2), %rcx
	leaq	(%rcx,%rax,2), %r10
	movq	(%rdx,%r11,8), %rdi
	cmpl	$15, -96(%rsp)                  # 4-byte Folded Reload
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	jge	.LBB9_5
.LBB9_4:                                #   in Loop: Header=BB9_3 Depth=1
	xorl	%eax, %eax
	movq	%r15, %r8
	movq	%rdi, %rsi
.LBB9_11:                               # %for.body14.us.preheader
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-104(%rsp), %edi                # 4-byte Reload
	movl	%edi, %ebx
	subl	%eax, %ebx
	xorl	%eax, %eax
	xorl	%edi, %edi
	movq	-48(%rsp), %r15                 # 8-byte Reload
	.p2align	4, 0x90
.LBB9_12:                               # %for.body14.us
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r8,%rdi,2), %r9d
	movzwl	(%r15,%rdi,2), %r10d
	addl	%r9d, %r10d
	movzwl	(%r13,%rdi,2), %r9d
	movzwl	(%rcx,%rdi,2), %r11d
	addl	%r9d, %r11d
	leal	(%r11,%r11,4), %r9d
	subl	%r9d, %r10d
	movzwl	(%rbp,%rdi,2), %r9d
	movzwl	(%r14,%rdi,2), %r11d
	addl	%r9d, %r11d
	leal	(%r11,%r11,4), %r9d
	leal	(%r10,%r9,4), %r9d
	movl	%r9d, (%rsi,%rdi,4)
	incq	%rdi
	addq	$-2, %rax
	cmpl	%edi, %ebx
	jne	.LBB9_12
# %bb.13:                               # %for.cond12.for.end_crit_edge.us.loopexit
                                        #   in Loop: Header=BB9_3 Depth=1
	subq	%rax, %r13
	jmp	.LBB9_14
	.p2align	4, 0x90
.LBB9_5:                                # %vector.memcheck
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%rdi, %rax
	addq	$4, %rax
	movq	104(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	96(%rsp), %r8                   # 8-byte Reload
	leaq	(%r15,%r8), %r8
	movq	%r8, %xmm3
	movq	88(%rsp), %r8                   # 8-byte Reload
	leaq	(%r15,%r8), %r9
	movq	%rsi, %xmm4
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	%rsi, %xmm5
	movq	72(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %r8
	movq	%r9, %xmm6
	movq	64(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	%rdi, %xmm7
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	pxor	%xmm1, %xmm6
	pxor	%xmm1, %xmm7
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pxor	%xmm1, %xmm4
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm8
	shufps	$136, %xmm5, %xmm8              # xmm8 = xmm8[0,2],xmm5[0,2]
	pcmpeqd	%xmm7, %xmm6
	pcmpeqd	%xmm7, %xmm4
	shufps	$221, %xmm6, %xmm4              # xmm4 = xmm4[1,3],xmm6[1,3]
	andps	%xmm8, %xmm4
	shufps	$221, %xmm5, %xmm3              # xmm3 = xmm3[1,3],xmm5[1,3]
	orps	%xmm4, %xmm3
	movq	%rbp, %xmm4
	movq	%r14, %xmm5
	punpcklqdq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0]
	movq	%r13, %xmm4
	movq	%rcx, %xmm6
	punpcklqdq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0]
	movq	%rax, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	pxor	%xmm1, %xmm6
	pxor	%xmm1, %xmm4
	movdqa	%xmm4, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm8
	pcmpgtd	%xmm5, %xmm8
	movdqa	%xmm8, %xmm9
	shufps	$136, %xmm7, %xmm9              # xmm9 = xmm9[0,2],xmm7[0,2]
	pcmpeqd	%xmm4, %xmm6
	pcmpeqd	%xmm4, %xmm5
	shufps	$221, %xmm6, %xmm5              # xmm5 = xmm5[1,3],xmm6[1,3]
	andps	%xmm9, %xmm5
	shufps	$221, %xmm7, %xmm8              # xmm8 = xmm8[1,3],xmm7[1,3]
	orps	%xmm5, %xmm8
	andps	%xmm3, %xmm8
	cmpq	%r8, %rdi
	setb	%r8b
	cmpq	%rax, %r10
	setb	%r9b
	cmpq	%rsi, %rdi
	setb	%sil
	cmpq	%rax, %r15
	setb	%al
	movmskps	%xmm8, %r10d
	testl	%r10d, %r10d
	jne	.LBB9_4
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB9_3 Depth=1
	andb	%r9b, %r8b
	jne	.LBB9_4
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB9_3 Depth=1
	andb	%al, %sil
	jne	.LBB9_4
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, -48(%rsp)                 # 8-byte Folded Spill
	addq	%rdx, %rcx
	addq	%rdx, %r14
	addq	%rdx, %rbp
	addq	%rdx, %r13
	leaq	(%r15,%rdx), %r8
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdi,%rax), %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%r15,%rax), %r11
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%r15,%rax), %r9
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %r10
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %r12
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_9:                                # %vector.body
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rax), %xmm7              # xmm7 = mem[0],zero
	movq	8(%r15,%rax), %xmm8             # xmm8 = mem[0],zero
	movq	16(%r15,%rax), %xmm9            # xmm9 = mem[0],zero
	movq	24(%r15,%rax), %xmm10           # xmm10 = mem[0],zero
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	movq	-24(%r12,%rax), %xmm6           # xmm6 = mem[0],zero
	movq	-16(%r12,%rax), %xmm5           # xmm5 = mem[0],zero
	movq	-8(%r12,%rax), %xmm4            # xmm4 = mem[0],zero
	movq	(%r12,%rax), %xmm3              # xmm3 = mem[0],zero
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	paddd	%xmm7, %xmm6
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	paddd	%xmm8, %xmm5
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm9, %xmm4
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	paddd	%xmm10, %xmm3
	movq	-24(%r11,%rax), %xmm9           # xmm9 = mem[0],zero
	movq	-16(%r11,%rax), %xmm10          # xmm10 = mem[0],zero
	movq	-8(%r11,%rax), %xmm11           # xmm11 = mem[0],zero
	movq	(%r11,%rax), %xmm12             # xmm12 = mem[0],zero
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	punpcklwd	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1],xmm12[2],xmm2[2],xmm12[3],xmm2[3]
	movq	-24(%rbx,%rax), %xmm13          # xmm13 = mem[0],zero
	movq	-16(%rbx,%rax), %xmm14          # xmm14 = mem[0],zero
	movq	-8(%rbx,%rax), %xmm8            # xmm8 = mem[0],zero
	movq	(%rbx,%rax), %xmm7              # xmm7 = mem[0],zero
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	paddd	%xmm9, %xmm13
	punpcklwd	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1],xmm14[2],xmm2[2],xmm14[3],xmm2[3]
	paddd	%xmm10, %xmm14
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	paddd	%xmm11, %xmm8
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	paddd	%xmm12, %xmm7
	movdqa	%xmm13, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm13, %xmm9
	psubd	%xmm9, %xmm6
	movdqa	%xmm14, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm14, %xmm9
	psubd	%xmm9, %xmm5
	movdqa	%xmm8, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm8, %xmm9
	psubd	%xmm9, %xmm4
	movdqa	%xmm7, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm8, %xmm3
	movq	-24(%r9,%rax), %xmm9            # xmm9 = mem[0],zero
	movq	-16(%r9,%rax), %xmm11           # xmm11 = mem[0],zero
	movq	-8(%r9,%rax), %xmm12            # xmm12 = mem[0],zero
	movq	(%r9,%rax), %xmm13              # xmm13 = mem[0],zero
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	punpcklwd	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1],xmm12[2],xmm2[2],xmm12[3],xmm2[3]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	movq	-24(%r10,%rax), %xmm14          # xmm14 = mem[0],zero
	movq	-16(%r10,%rax), %xmm10          # xmm10 = mem[0],zero
	movq	-8(%r10,%rax), %xmm8            # xmm8 = mem[0],zero
	movq	(%r10,%rax), %xmm7              # xmm7 = mem[0],zero
	punpcklwd	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1],xmm14[2],xmm2[2],xmm14[3],xmm2[3]
	paddd	%xmm9, %xmm14
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	paddd	%xmm12, %xmm8
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	paddd	%xmm13, %xmm7
	pshufd	$245, %xmm14, %xmm11            # xmm11 = xmm14[1,1,3,3]
	pmuludq	%xmm0, %xmm14
	pshufd	$232, %xmm14, %xmm9             # xmm9 = xmm14[0,2,2,3]
	pmuludq	%xmm0, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1]
	paddd	%xmm6, %xmm9
	pshufd	$245, %xmm10, %xmm6             # xmm6 = xmm10[1,1,3,3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	paddd	%xmm5, %xmm10
	pshufd	$245, %xmm8, %xmm5              # xmm5 = xmm8[1,1,3,3]
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm6              # xmm6 = xmm8[0,2,2,3]
	pmuludq	%xmm0, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	paddd	%xmm4, %xmm6
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm5              # xmm5 = xmm7[0,2,2,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	paddd	%xmm3, %xmm5
	movdqu	%xmm9, (%rdi,%rax,2)
	movdqu	%xmm10, 16(%rdi,%rax,2)
	movdqu	%xmm6, 32(%rdi,%rax,2)
	movdqu	%xmm5, 48(%rdi,%rax,2)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.LBB9_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %eax
	cmpq	56(%rsp), %rdx                  # 8-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	-64(%rsp), %r12                 # 8-byte Reload
	je	.LBB9_14
	jmp	.LBB9_11
.LBB9_15:                               # %for.cond38.preheader
	cmpl	$0, -68(%rsp)                   # 4-byte Folded Reload
	setle	%al
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	setle	%cl
	orb	%al, %cl
	jne	.LBB9_30
# %bb.16:                               # %for.body41.us.preheader
	movq	-120(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	(%rcx,%rcx), %rdi
	movq	%rdi, -88(%rsp)                 # 8-byte Spill
	shlq	$2, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	leal	(%rcx,%rcx), %edi
	movq	%rdi, -112(%rsp)                # 8-byte Spill
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	leaq	(,%rcx,4), %r14
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm12               # xmm12 = xmm1[0,0,0,0]
	leal	(%rax,%rax), %r15d
	andl	$-32, %r15d
	xorl	%r12d, %r12d
	jmp	.LBB9_17
	.p2align	4, 0x90
.LBB9_29:                               # %for.cond54.for.inc86_crit_edge.us
                                        #   in Loop: Header=BB9_17 Depth=1
	incq	%r12
	cmpq	-64(%rsp), %r12                 # 8-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	je	.LBB9_30
.LBB9_17:                               # %for.body41.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_21 Depth 2
                                        #     Child Loop BB9_24 Depth 2
	movq	(%rdx,%r12,8), %rdi
	leaq	8(%rdi), %r13
	leaq	12(%rdi), %rbp
	leaq	16(%rdi), %rbx
	leaq	20(%rdi), %r10
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r12,8), %r11
	cmpl	$16, -120(%rsp)                 # 4-byte Folded Reload
	jb	.LBB9_18
# %bb.19:                               # %vector.memcheck132
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	addq	%r11, %rax
	addq	$2, %rax
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	addq	%rdi, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %r11
	setb	%cl
	cmpq	%rax, %rdi
	setb	%al
	testb	%al, %cl
	je	.LBB9_20
.LBB9_18:                               #   in Loop: Header=BB9_17 Depth=1
	xorl	%edx, %edx
	movq	%r11, %r9
	movq	%rdi, %rcx
	movl	184(%rsp), %r11d
.LBB9_23:                               # %for.body57.us.preheader
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%edx, %eax
	xorl	%edx, %edx
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_28:                               # %for.body57.us
                                        #   in Loop: Header=BB9_24 Depth=2
	movw	%di, (%r9,%rdx,2)
	movzwl	%di, %edi
	movl	(%r13,%rdx,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	cmovgl	%r8d, %esi
	cmpl	%r11d, %esi
	cmovgel	%r11d, %esi
	addl	%edi, %esi
	incl	%esi
	shrl	%esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpl	%edx, %eax
	je	.LBB9_29
.LBB9_24:                               # %for.body57.us
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %edi
	addl	4(%rcx,%rdx,4), %edi
	leal	(%rdi,%rdi,4), %edi
	movl	(%rbp,%rdx,4), %r8d
	addl	(%r13,%rdx,4), %r8d
	leal	(%r8,%r8,4), %r8d
	addl	(%r10,%rdx,4), %esi
	subl	%edi, %esi
	leal	(%rsi,%r8,4), %edi
	addl	$512, %edi                      # imm = 0x200
	sarl	$10, %edi
	xorl	%esi, %esi
	testl	%edi, %edi
	jg	.LBB9_26
# %bb.25:                               # %for.body57.us
                                        #   in Loop: Header=BB9_24 Depth=2
	xorl	%edi, %edi
.LBB9_26:                               # %for.body57.us
                                        #   in Loop: Header=BB9_24 Depth=2
	cmpl	%r11d, %edi
	jl	.LBB9_28
# %bb.27:                               # %for.body57.us
                                        #   in Loop: Header=BB9_24 Depth=2
	movl	%r11d, %edi
	jmp	.LBB9_28
	.p2align	4, 0x90
.LBB9_20:                               # %vector.ph141
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	leaq	(%r11,%rax), %r9
	addq	%r14, %r10
	addq	%r14, %rbx
	addq	%r14, %rbp
	addq	%r14, %r13
	leaq	(%rdi,%r14), %rcx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB9_21:                               # %vector.body158
                                        #   Parent Loop BB9_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	16(%rdi,%r8,2), %xmm9
	movdqu	32(%rdi,%r8,2), %xmm7
	movdqu	48(%rdi,%r8,2), %xmm15
	movdqu	20(%rdi,%r8,2), %xmm3
	movdqa	%xmm3, -48(%rsp)                # 16-byte Spill
	movdqu	36(%rdi,%r8,2), %xmm11
	movdqu	52(%rdi,%r8,2), %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	movdqu	68(%rdi,%r8,2), %xmm8
	movdqu	64(%rdi,%r8,2), %xmm5
	movdqu	4(%rdi,%r8,2), %xmm2
	movdqu	8(%rdi,%r8,2), %xmm4
	movdqu	12(%rdi,%r8,2), %xmm13
	paddd	%xmm4, %xmm13
	paddd	%xmm9, %xmm2
	movdqa	%xmm7, %xmm4
	paddd	%xmm3, %xmm4
	paddd	%xmm15, %xmm8
	movdqa	%xmm15, %xmm14
	paddd	%xmm11, %xmm14
	paddd	%xmm0, %xmm5
	movdqa	%xmm2, %xmm15
	pslld	$2, %xmm15
	paddd	%xmm2, %xmm15
	movdqa	%xmm4, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm4, %xmm2
	movdqa	%xmm14, %xmm4
	pslld	$2, %xmm4
	paddd	%xmm14, %xmm4
	movdqa	%xmm5, %xmm14
	pslld	$2, %xmm14
	paddd	%xmm5, %xmm14
	movdqu	24(%rdi,%r8,2), %xmm5
	movdqu	40(%rdi,%r8,2), %xmm6
	movdqu	56(%rdi,%r8,2), %xmm3
	movdqu	28(%rdi,%r8,2), %xmm0
	paddd	%xmm5, %xmm0
	movdqu	44(%rdi,%r8,2), %xmm5
	paddd	%xmm6, %xmm5
	movdqu	60(%rdi,%r8,2), %xmm6
	paddd	%xmm3, %xmm6
	pshufd	$245, %xmm13, %xmm3             # xmm3 = xmm13[1,1,3,3]
	movdqa	.LCPI9_1(%rip), %xmm1           # xmm1 = [20,20,20,20]
	movdqa	%xmm12, %xmm10
	movdqa	%xmm1, %xmm12
	pmuludq	%xmm1, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1]
	pshufd	$245, %xmm0, %xmm3              # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm1              # xmm1 = xmm5[0,2,2,3]
	pmuludq	%xmm12, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pshufd	$245, %xmm6, %xmm3              # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm12, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm12, %xmm3
	movdqa	%xmm10, %xmm12
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	movdqu	(%rdi,%r8,2), %xmm5
	paddd	-48(%rsp), %xmm5                # 16-byte Folded Reload
	psubd	%xmm15, %xmm5
	paddd	%xmm11, %xmm9
	psubd	%xmm2, %xmm9
	paddd	-32(%rsp), %xmm7                # 16-byte Folded Reload
	psubd	%xmm4, %xmm7
	psubd	%xmm14, %xmm8
	movdqa	.LCPI9_2(%rip), %xmm2           # xmm2 = [512,512,512,512]
	paddd	%xmm2, %xmm5
	paddd	%xmm13, %xmm5
	movdqa	.LCPI9_4(%rip), %xmm4           # xmm4 = [16,16,16,16]
	paddd	%xmm2, %xmm9
	paddd	%xmm0, %xmm9
	paddd	%xmm2, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm2, %xmm8
	paddd	%xmm6, %xmm8
	pxor	%xmm6, %xmm6
	psrad	$10, %xmm5
	psrad	$10, %xmm9
	psrad	$10, %xmm7
	psrad	$10, %xmm8
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm5, %xmm0
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm9, %xmm1
	movdqa	%xmm7, %xmm3
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm8, %xmm2
	pcmpgtd	%xmm0, %xmm10
	pand	%xmm10, %xmm0
	pandn	%xmm12, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm1, %xmm9
	pand	%xmm9, %xmm1
	pandn	%xmm12, %xmm9
	por	%xmm1, %xmm9
	movdqa	%xmm12, %xmm8
	pcmpgtd	%xmm3, %xmm8
	pand	%xmm8, %xmm3
	pandn	%xmm12, %xmm8
	por	%xmm3, %xmm8
	movdqa	%xmm12, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm7, %xmm2
	pandn	%xmm12, %xmm7
	por	%xmm2, %xmm7
	pshuflw	$232, %xmm10, %xmm0             # xmm0 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm9, %xmm1              # xmm1 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	pshuflw	$232, %xmm8, %xmm1              # xmm1 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm2              # xmm2 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, (%r11,%r8)
	movdqu	%xmm1, 16(%r11,%r8)
	movdqu	8(%rdi,%r8,2), %xmm0
	movdqu	24(%rdi,%r8,2), %xmm1
	movdqu	40(%rdi,%r8,2), %xmm2
	movdqu	56(%rdi,%r8,2), %xmm3
	paddd	%xmm4, %xmm0
	paddd	%xmm4, %xmm1
	paddd	%xmm4, %xmm2
	paddd	%xmm4, %xmm3
	psrad	$5, %xmm0
	psrad	$5, %xmm1
	psrad	$5, %xmm2
	psrad	$5, %xmm3
	movdqa	%xmm0, %xmm4
	pcmpgtd	%xmm6, %xmm4
	pand	%xmm0, %xmm4
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	movdqa	%xmm2, %xmm11
	pcmpgtd	%xmm6, %xmm11
	pand	%xmm2, %xmm11
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pand	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	movdqa	.LCPI9_3(%rip), %xmm1           # xmm1 = [65535,0,65535,0,65535,0,65535,0]
	movdqa	%xmm12, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm12, %xmm2
	por	%xmm4, %xmm2
	pand	%xmm1, %xmm10
	paddd	%xmm10, %xmm2
	movdqa	%xmm12, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm12, %xmm4
	por	%xmm0, %xmm4
	pand	%xmm1, %xmm9
	paddd	%xmm9, %xmm4
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm11, %xmm9
	pand	%xmm9, %xmm11
	pandn	%xmm12, %xmm9
	por	%xmm11, %xmm9
	pand	%xmm1, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	%xmm12, %xmm8
	pcmpgtd	%xmm5, %xmm8
	pand	%xmm8, %xmm5
	pandn	%xmm12, %xmm8
	por	%xmm5, %xmm8
	pand	%xmm1, %xmm7
	paddd	%xmm7, %xmm8
	psubd	%xmm3, %xmm2
	psubd	%xmm3, %xmm4
	psrld	$1, %xmm2
	psrld	$1, %xmm4
	pshuflw	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	psubd	%xmm3, %xmm9
	psubd	%xmm3, %xmm8
	psrld	$1, %xmm9
	psrld	$1, %xmm8
	pshuflw	$232, %xmm9, %xmm1              # xmm1 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm8, %xmm2              # xmm2 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, (%r11,%r8)
	movdqu	%xmm1, 16(%r11,%r8)
	addq	$32, %r8
	cmpq	%r8, %r15
	jne	.LBB9_21
# %bb.22:                               # %middle.block138
                                        #   in Loop: Header=BB9_17 Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
	movl	%eax, %edx
	cmpl	-96(%rsp), %eax                 # 4-byte Folded Reload
	movl	184(%rsp), %r11d
	je	.LBB9_29
	jmp	.LBB9_23
.LBB9_30:                               # %for.end88
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
.Lfunc_end9:
	.size	get_luma_12, .Lfunc_end9-get_luma_12
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_32
.LCPI10_0:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI10_1:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI10_2:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
.LCPI10_3:
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	0                               # 0x0
.LCPI10_4:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.text
	.p2align	4, 0x90
	.type	get_luma_32,@function
get_luma_32:                            # @get_luma_32
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, -120(%rsp)                 # 8-byte Spill
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	testl	%ecx, %ecx
	jle	.LBB10_30
# %bb.1:                                # %for.body.lr.ph
	cmpl	$-4, -120(%rsp)                 # 4-byte Folded Reload
	jl	.LBB10_30
# %bb.2:                                # %for.body.us.preheader
	movslq	176(%rsp), %r8
	movl	$-5, %eax
	movq	-120(%rsp), %rdi                # 8-byte Reload
	subl	%edi, %eax
	cltq
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movslq	%r9d, %rax
	leaq	(%rsi,%rax,2), %r15
	addq	$-4, %r15
	leal	4(%rdi), %esi
	xorl	%r11d, %r11d
	testl	%esi, %esi
	movl	$0, %eax
	movl	%esi, -96(%rsp)                 # 4-byte Spill
	cmovgl	%esi, %eax
	leaq	(,%rax,4), %rsi
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	leaq	(%r8,%r8), %rdi
	leaq	(%rdi,%rdi,2), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	leaq	(,%r8,4), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	leaq	(,%r8,8), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	leaq	(%r8,%rax), %rsi
	leaq	2(%rsi,%rsi), %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	leaq	(%rdi,%rdi,4), %rsi
	leaq	2(%rsi,%rax,2), %rsi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	leaq	2(%rax,%rax), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	leaq	1(%rax), %rsi
                                        # kill: def $eax killed $eax killed $rax
	incl	%eax
	movl	%eax, -104(%rsp)                # 4-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$-16, %esi
	leaq	(%rdi,%rdi,2), %rax
	addq	$24, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	24(%rdi,%rdi,4), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movdqa	.LCPI10_0(%rip), %xmm1          # xmm1 = [9223372039002259456,9223372039002259456]
	pxor	%xmm2, %xmm2
	movdqa	.LCPI10_1(%rip), %xmm0          # xmm0 = [20,20,20,20]
	movl	%ecx, -68(%rsp)                 # 4-byte Spill
	movl	%ecx, %r12d
	leaq	(%rsi,%rsi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(,%rsi,4), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	24(%r8,%r8), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	24(,%r8,4), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r8, -80(%rsp)                  # 8-byte Spill
	leaq	24(,%r8,8), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	jmp	.LBB10_3
	.p2align	4, 0x90
.LBB10_14:                              # %for.cond12.for.end_crit_edge.us
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,2), %r15
	addq	%r13, %r15
	movq	-32(%rsp), %r11                 # 8-byte Reload
	incq	%r11
	cmpq	%r12, %r11
	movl	184(%rsp), %esi
	je	.LBB10_15
.LBB10_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_12 Depth 2
	movq	-80(%rsp), %rax                 # 8-byte Reload
	leaq	(%r15,%rax,2), %r13
	leaq	(,%rax,2), %rbp
	addq	%r13, %rbp
	leaq	(%rbp,%rax,2), %r14
	leaq	(%r14,%rax,2), %rcx
	leaq	(%rcx,%rax,2), %r10
	movq	(%rdx,%r11,8), %rdi
	cmpl	$15, -96(%rsp)                  # 4-byte Folded Reload
	movq	%r11, -32(%rsp)                 # 8-byte Spill
	movq	%r10, -48(%rsp)                 # 8-byte Spill
	jge	.LBB10_5
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=1
	xorl	%eax, %eax
	movq	%r15, %r8
	movq	%rdi, %rsi
.LBB10_11:                              # %for.body14.us.preheader
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-104(%rsp), %edi                # 4-byte Reload
	movl	%edi, %ebx
	subl	%eax, %ebx
	xorl	%eax, %eax
	xorl	%edi, %edi
	movq	-48(%rsp), %r15                 # 8-byte Reload
	.p2align	4, 0x90
.LBB10_12:                              # %for.body14.us
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r8,%rdi,2), %r9d
	movzwl	(%r15,%rdi,2), %r10d
	addl	%r9d, %r10d
	movzwl	(%r13,%rdi,2), %r9d
	movzwl	(%rcx,%rdi,2), %r11d
	addl	%r9d, %r11d
	leal	(%r11,%r11,4), %r9d
	subl	%r9d, %r10d
	movzwl	(%rbp,%rdi,2), %r9d
	movzwl	(%r14,%rdi,2), %r11d
	addl	%r9d, %r11d
	leal	(%r11,%r11,4), %r9d
	leal	(%r10,%r9,4), %r9d
	movl	%r9d, (%rsi,%rdi,4)
	incq	%rdi
	addq	$-2, %rax
	cmpl	%edi, %ebx
	jne	.LBB10_12
# %bb.13:                               # %for.cond12.for.end_crit_edge.us.loopexit
                                        #   in Loop: Header=BB10_3 Depth=1
	subq	%rax, %r13
	jmp	.LBB10_14
	.p2align	4, 0x90
.LBB10_5:                               # %vector.memcheck
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%rdi, %rax
	addq	$4, %rax
	movq	104(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	96(%rsp), %r8                   # 8-byte Reload
	leaq	(%r15,%r8), %r8
	movq	%r8, %xmm3
	movq	88(%rsp), %r8                   # 8-byte Reload
	leaq	(%r15,%r8), %r9
	movq	%rsi, %xmm4
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	%rsi, %xmm5
	movq	72(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %r8
	movq	%r9, %xmm6
	movq	64(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r15,%rsi), %rsi
	movq	%rdi, %xmm7
	pshufd	$68, %xmm7, %xmm7               # xmm7 = xmm7[0,1,0,1]
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	punpcklqdq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0]
	pxor	%xmm1, %xmm6
	pxor	%xmm1, %xmm7
	movdqa	%xmm6, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pxor	%xmm1, %xmm4
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm7, %xmm3
	movdqa	%xmm3, %xmm8
	shufps	$136, %xmm5, %xmm8              # xmm8 = xmm8[0,2],xmm5[0,2]
	pcmpeqd	%xmm7, %xmm6
	pcmpeqd	%xmm7, %xmm4
	shufps	$221, %xmm6, %xmm4              # xmm4 = xmm4[1,3],xmm6[1,3]
	andps	%xmm8, %xmm4
	shufps	$221, %xmm5, %xmm3              # xmm3 = xmm3[1,3],xmm5[1,3]
	orps	%xmm4, %xmm3
	movq	%rbp, %xmm4
	movq	%r14, %xmm5
	punpcklqdq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0]
	movq	%r13, %xmm4
	movq	%rcx, %xmm6
	punpcklqdq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0]
	movq	%rax, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	pxor	%xmm1, %xmm6
	pxor	%xmm1, %xmm4
	movdqa	%xmm4, %xmm7
	pcmpgtd	%xmm6, %xmm7
	pxor	%xmm1, %xmm5
	movdqa	%xmm4, %xmm8
	pcmpgtd	%xmm5, %xmm8
	movdqa	%xmm8, %xmm9
	shufps	$136, %xmm7, %xmm9              # xmm9 = xmm9[0,2],xmm7[0,2]
	pcmpeqd	%xmm4, %xmm6
	pcmpeqd	%xmm4, %xmm5
	shufps	$221, %xmm6, %xmm5              # xmm5 = xmm5[1,3],xmm6[1,3]
	andps	%xmm9, %xmm5
	shufps	$221, %xmm7, %xmm8              # xmm8 = xmm8[1,3],xmm7[1,3]
	orps	%xmm5, %xmm8
	andps	%xmm3, %xmm8
	cmpq	%r8, %rdi
	setb	%r8b
	cmpq	%rax, %r10
	setb	%r9b
	cmpq	%rsi, %rdi
	setb	%sil
	cmpq	%rax, %r15
	setb	%al
	movmskps	%xmm8, %r10d
	testl	%r10d, %r10d
	jne	.LBB10_4
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB10_3 Depth=1
	andb	%r9b, %r8b
	jne	.LBB10_4
# %bb.7:                                # %vector.memcheck
                                        #   in Loop: Header=BB10_3 Depth=1
	andb	%al, %sil
	jne	.LBB10_4
# %bb.8:                                # %vector.ph
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, -48(%rsp)                 # 8-byte Folded Spill
	addq	%rdx, %rcx
	addq	%rdx, %r14
	addq	%rdx, %rbp
	addq	%rdx, %r13
	leaq	(%r15,%rdx), %r8
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rdi,%rax), %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%r15,%rax), %r11
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(%r15,%rax), %r9
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %r10
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax), %r12
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB10_9:                               # %vector.body
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rax), %xmm7              # xmm7 = mem[0],zero
	movq	8(%r15,%rax), %xmm8             # xmm8 = mem[0],zero
	movq	16(%r15,%rax), %xmm9            # xmm9 = mem[0],zero
	movq	24(%r15,%rax), %xmm10           # xmm10 = mem[0],zero
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	movq	-24(%r12,%rax), %xmm6           # xmm6 = mem[0],zero
	movq	-16(%r12,%rax), %xmm5           # xmm5 = mem[0],zero
	movq	-8(%r12,%rax), %xmm4            # xmm4 = mem[0],zero
	movq	(%r12,%rax), %xmm3              # xmm3 = mem[0],zero
	punpcklwd	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1],xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	paddd	%xmm7, %xmm6
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	paddd	%xmm8, %xmm5
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	paddd	%xmm9, %xmm4
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	paddd	%xmm10, %xmm3
	movq	-24(%r11,%rax), %xmm9           # xmm9 = mem[0],zero
	movq	-16(%r11,%rax), %xmm10          # xmm10 = mem[0],zero
	movq	-8(%r11,%rax), %xmm11           # xmm11 = mem[0],zero
	movq	(%r11,%rax), %xmm12             # xmm12 = mem[0],zero
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	punpcklwd	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1],xmm12[2],xmm2[2],xmm12[3],xmm2[3]
	movq	-24(%rbx,%rax), %xmm13          # xmm13 = mem[0],zero
	movq	-16(%rbx,%rax), %xmm14          # xmm14 = mem[0],zero
	movq	-8(%rbx,%rax), %xmm8            # xmm8 = mem[0],zero
	movq	(%rbx,%rax), %xmm7              # xmm7 = mem[0],zero
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	paddd	%xmm9, %xmm13
	punpcklwd	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1],xmm14[2],xmm2[2],xmm14[3],xmm2[3]
	paddd	%xmm10, %xmm14
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	paddd	%xmm11, %xmm8
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	paddd	%xmm12, %xmm7
	movdqa	%xmm13, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm13, %xmm9
	psubd	%xmm9, %xmm6
	movdqa	%xmm14, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm14, %xmm9
	psubd	%xmm9, %xmm5
	movdqa	%xmm8, %xmm9
	pslld	$2, %xmm9
	paddd	%xmm8, %xmm9
	psubd	%xmm9, %xmm4
	movdqa	%xmm7, %xmm8
	pslld	$2, %xmm8
	paddd	%xmm7, %xmm8
	psubd	%xmm8, %xmm3
	movq	-24(%r9,%rax), %xmm9            # xmm9 = mem[0],zero
	movq	-16(%r9,%rax), %xmm11           # xmm11 = mem[0],zero
	movq	-8(%r9,%rax), %xmm12            # xmm12 = mem[0],zero
	movq	(%r9,%rax), %xmm13              # xmm13 = mem[0],zero
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	punpcklwd	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1],xmm12[2],xmm2[2],xmm12[3],xmm2[3]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	movq	-24(%r10,%rax), %xmm14          # xmm14 = mem[0],zero
	movq	-16(%r10,%rax), %xmm10          # xmm10 = mem[0],zero
	movq	-8(%r10,%rax), %xmm8            # xmm8 = mem[0],zero
	movq	(%r10,%rax), %xmm7              # xmm7 = mem[0],zero
	punpcklwd	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1],xmm14[2],xmm2[2],xmm14[3],xmm2[3]
	paddd	%xmm9, %xmm14
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	paddd	%xmm12, %xmm8
	punpcklwd	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1],xmm7[2],xmm2[2],xmm7[3],xmm2[3]
	paddd	%xmm13, %xmm7
	pshufd	$245, %xmm14, %xmm11            # xmm11 = xmm14[1,1,3,3]
	pmuludq	%xmm0, %xmm14
	pshufd	$232, %xmm14, %xmm9             # xmm9 = xmm14[0,2,2,3]
	pmuludq	%xmm0, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1]
	paddd	%xmm6, %xmm9
	pshufd	$245, %xmm10, %xmm6             # xmm6 = xmm10[1,1,3,3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	paddd	%xmm5, %xmm10
	pshufd	$245, %xmm8, %xmm5              # xmm5 = xmm8[1,1,3,3]
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm6              # xmm6 = xmm8[0,2,2,3]
	pmuludq	%xmm0, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	paddd	%xmm4, %xmm6
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm7, %xmm5              # xmm5 = xmm7[0,2,2,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm5            # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	paddd	%xmm3, %xmm5
	movdqu	%xmm9, (%rdi,%rax,2)
	movdqu	%xmm10, 16(%rdi,%rax,2)
	movdqu	%xmm6, 32(%rdi,%rax,2)
	movdqu	%xmm5, 48(%rdi,%rax,2)
	addq	$32, %rax
	cmpq	%rax, %rdx
	jne	.LBB10_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %eax
	cmpq	56(%rsp), %rdx                  # 8-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	-64(%rsp), %r12                 # 8-byte Reload
	je	.LBB10_14
	jmp	.LBB10_11
.LBB10_15:                              # %for.cond38.preheader
	cmpl	$0, -68(%rsp)                   # 4-byte Folded Reload
	setle	%al
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	setle	%cl
	orb	%al, %cl
	jne	.LBB10_30
# %bb.16:                               # %for.body41.us.preheader
	movq	-120(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	(%rcx,%rcx), %rdi
	movq	%rdi, -88(%rsp)                 # 8-byte Spill
	shlq	$2, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483632, %ecx               # imm = 0x7FFFFFF0
	leal	(%rcx,%rcx), %edi
	movq	%rdi, -112(%rsp)                # 8-byte Spill
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	leaq	(,%rcx,4), %r14
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm12               # xmm12 = xmm1[0,0,0,0]
	leal	(%rax,%rax), %r15d
	andl	$-32, %r15d
	xorl	%r12d, %r12d
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_29:                              # %for.cond54.for.inc86_crit_edge.us
                                        #   in Loop: Header=BB10_17 Depth=1
	incq	%r12
	cmpq	-64(%rsp), %r12                 # 8-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	je	.LBB10_30
.LBB10_17:                              # %for.body41.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_24 Depth 2
	movq	(%rdx,%r12,8), %rdi
	leaq	12(%rdi), %r13
	leaq	8(%rdi), %rbp
	leaq	16(%rdi), %rbx
	leaq	20(%rdi), %r10
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r12,8), %r11
	cmpl	$16, -120(%rsp)                 # 4-byte Folded Reload
	jb	.LBB10_18
# %bb.19:                               # %vector.memcheck132
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-88(%rsp), %rax                 # 8-byte Reload
	addq	%r11, %rax
	addq	$2, %rax
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	addq	%rdi, %rcx
	addq	$24, %rcx
	cmpq	%rcx, %r11
	setb	%cl
	cmpq	%rax, %rdi
	setb	%al
	testb	%al, %cl
	je	.LBB10_20
.LBB10_18:                              #   in Loop: Header=BB10_17 Depth=1
	xorl	%edx, %edx
	movq	%r11, %r9
	movq	%rdi, %rcx
	movl	184(%rsp), %r11d
.LBB10_23:                              # %for.body57.us.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%edx, %eax
	xorl	%edx, %edx
	jmp	.LBB10_24
	.p2align	4, 0x90
.LBB10_28:                              # %for.body57.us
                                        #   in Loop: Header=BB10_24 Depth=2
	movw	%di, (%r9,%rdx,2)
	movzwl	%di, %edi
	movl	(%r13,%rdx,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	cmovgl	%r8d, %esi
	cmpl	%r11d, %esi
	cmovgel	%r11d, %esi
	addl	%edi, %esi
	incl	%esi
	shrl	%esi
	movw	%si, (%r9,%rdx,2)
	incq	%rdx
	cmpl	%edx, %eax
	je	.LBB10_29
.LBB10_24:                              # %for.body57.us
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rcx,%rdx,4), %esi
	movl	(%rbx,%rdx,4), %edi
	addl	4(%rcx,%rdx,4), %edi
	leal	(%rdi,%rdi,4), %edi
	movl	(%r13,%rdx,4), %r8d
	addl	(%rbp,%rdx,4), %r8d
	leal	(%r8,%r8,4), %r8d
	addl	(%r10,%rdx,4), %esi
	subl	%edi, %esi
	leal	(%rsi,%r8,4), %edi
	addl	$512, %edi                      # imm = 0x200
	sarl	$10, %edi
	xorl	%esi, %esi
	testl	%edi, %edi
	jg	.LBB10_26
# %bb.25:                               # %for.body57.us
                                        #   in Loop: Header=BB10_24 Depth=2
	xorl	%edi, %edi
.LBB10_26:                              # %for.body57.us
                                        #   in Loop: Header=BB10_24 Depth=2
	cmpl	%r11d, %edi
	jl	.LBB10_28
# %bb.27:                               # %for.body57.us
                                        #   in Loop: Header=BB10_24 Depth=2
	movl	%r11d, %edi
	jmp	.LBB10_28
	.p2align	4, 0x90
.LBB10_20:                              # %vector.ph141
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-112(%rsp), %rax                # 8-byte Reload
	leaq	(%r11,%rax), %r9
	addq	%r14, %r10
	addq	%r14, %rbx
	addq	%r14, %r13
	addq	%r14, %rbp
	leaq	(%rdi,%r14), %rcx
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB10_21:                              # %vector.body158
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	16(%rdi,%r8,2), %xmm9
	movdqu	32(%rdi,%r8,2), %xmm7
	movdqu	48(%rdi,%r8,2), %xmm15
	movdqu	20(%rdi,%r8,2), %xmm3
	movdqa	%xmm3, -48(%rsp)                # 16-byte Spill
	movdqu	36(%rdi,%r8,2), %xmm11
	movdqu	52(%rdi,%r8,2), %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	movdqu	68(%rdi,%r8,2), %xmm8
	movdqu	64(%rdi,%r8,2), %xmm5
	movdqu	4(%rdi,%r8,2), %xmm2
	movdqu	8(%rdi,%r8,2), %xmm4
	movdqu	12(%rdi,%r8,2), %xmm13
	paddd	%xmm4, %xmm13
	paddd	%xmm9, %xmm2
	movdqa	%xmm7, %xmm4
	paddd	%xmm3, %xmm4
	paddd	%xmm15, %xmm8
	movdqa	%xmm15, %xmm14
	paddd	%xmm11, %xmm14
	paddd	%xmm0, %xmm5
	movdqa	%xmm2, %xmm15
	pslld	$2, %xmm15
	paddd	%xmm2, %xmm15
	movdqa	%xmm4, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm4, %xmm2
	movdqa	%xmm14, %xmm4
	pslld	$2, %xmm4
	paddd	%xmm14, %xmm4
	movdqa	%xmm5, %xmm14
	pslld	$2, %xmm14
	paddd	%xmm5, %xmm14
	movdqu	24(%rdi,%r8,2), %xmm5
	movdqu	40(%rdi,%r8,2), %xmm6
	movdqu	56(%rdi,%r8,2), %xmm3
	movdqu	28(%rdi,%r8,2), %xmm0
	paddd	%xmm5, %xmm0
	movdqu	44(%rdi,%r8,2), %xmm5
	paddd	%xmm6, %xmm5
	movdqu	60(%rdi,%r8,2), %xmm6
	paddd	%xmm3, %xmm6
	pshufd	$245, %xmm13, %xmm3             # xmm3 = xmm13[1,1,3,3]
	movdqa	.LCPI10_1(%rip), %xmm1          # xmm1 = [20,20,20,20]
	movdqa	%xmm12, %xmm10
	movdqa	%xmm1, %xmm12
	pmuludq	%xmm1, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0],xmm13[1],xmm3[1]
	pshufd	$245, %xmm0, %xmm3              # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm1              # xmm1 = xmm5[0,2,2,3]
	pmuludq	%xmm12, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	pshufd	$245, %xmm6, %xmm3              # xmm3 = xmm6[1,1,3,3]
	pmuludq	%xmm12, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pmuludq	%xmm12, %xmm3
	movdqa	%xmm10, %xmm12
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	movdqu	(%rdi,%r8,2), %xmm5
	paddd	-48(%rsp), %xmm5                # 16-byte Folded Reload
	psubd	%xmm15, %xmm5
	paddd	%xmm11, %xmm9
	psubd	%xmm2, %xmm9
	paddd	-32(%rsp), %xmm7                # 16-byte Folded Reload
	psubd	%xmm4, %xmm7
	psubd	%xmm14, %xmm8
	movdqa	.LCPI10_2(%rip), %xmm2          # xmm2 = [512,512,512,512]
	paddd	%xmm2, %xmm5
	paddd	%xmm13, %xmm5
	movdqa	.LCPI10_4(%rip), %xmm4          # xmm4 = [16,16,16,16]
	paddd	%xmm2, %xmm9
	paddd	%xmm0, %xmm9
	paddd	%xmm2, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm2, %xmm8
	paddd	%xmm6, %xmm8
	pxor	%xmm6, %xmm6
	psrad	$10, %xmm5
	psrad	$10, %xmm9
	psrad	$10, %xmm7
	psrad	$10, %xmm8
	movdqa	%xmm5, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm5, %xmm0
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm9, %xmm1
	movdqa	%xmm7, %xmm3
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm8, %xmm2
	pcmpgtd	%xmm6, %xmm2
	pand	%xmm8, %xmm2
	pcmpgtd	%xmm0, %xmm10
	pand	%xmm10, %xmm0
	pandn	%xmm12, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm1, %xmm9
	pand	%xmm9, %xmm1
	pandn	%xmm12, %xmm9
	por	%xmm1, %xmm9
	movdqa	%xmm12, %xmm8
	pcmpgtd	%xmm3, %xmm8
	pand	%xmm8, %xmm3
	pandn	%xmm12, %xmm8
	por	%xmm3, %xmm8
	movdqa	%xmm12, %xmm7
	pcmpgtd	%xmm2, %xmm7
	pand	%xmm7, %xmm2
	pandn	%xmm12, %xmm7
	por	%xmm2, %xmm7
	pshuflw	$232, %xmm10, %xmm0             # xmm0 = xmm10[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm9, %xmm1              # xmm1 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	pshuflw	$232, %xmm8, %xmm1              # xmm1 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm2              # xmm2 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, (%r11,%r8)
	movdqu	%xmm1, 16(%r11,%r8)
	movdqu	12(%rdi,%r8,2), %xmm0
	movdqu	28(%rdi,%r8,2), %xmm1
	movdqu	44(%rdi,%r8,2), %xmm2
	movdqu	60(%rdi,%r8,2), %xmm3
	paddd	%xmm4, %xmm0
	paddd	%xmm4, %xmm1
	paddd	%xmm4, %xmm2
	paddd	%xmm4, %xmm3
	psrad	$5, %xmm0
	psrad	$5, %xmm1
	psrad	$5, %xmm2
	psrad	$5, %xmm3
	movdqa	%xmm0, %xmm4
	pcmpgtd	%xmm6, %xmm4
	pand	%xmm0, %xmm4
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	movdqa	%xmm2, %xmm11
	pcmpgtd	%xmm6, %xmm11
	pand	%xmm2, %xmm11
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm6, %xmm5
	pand	%xmm3, %xmm5
	pcmpeqd	%xmm3, %xmm3
	movdqa	.LCPI10_3(%rip), %xmm1          # xmm1 = [65535,0,65535,0,65535,0,65535,0]
	movdqa	%xmm12, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pand	%xmm2, %xmm4
	pandn	%xmm12, %xmm2
	por	%xmm4, %xmm2
	pand	%xmm1, %xmm10
	paddd	%xmm10, %xmm2
	movdqa	%xmm12, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm12, %xmm4
	por	%xmm0, %xmm4
	pand	%xmm1, %xmm9
	paddd	%xmm9, %xmm4
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm11, %xmm9
	pand	%xmm9, %xmm11
	pandn	%xmm12, %xmm9
	por	%xmm11, %xmm9
	pand	%xmm1, %xmm8
	paddd	%xmm8, %xmm9
	movdqa	%xmm12, %xmm8
	pcmpgtd	%xmm5, %xmm8
	pand	%xmm8, %xmm5
	pandn	%xmm12, %xmm8
	por	%xmm5, %xmm8
	pand	%xmm1, %xmm7
	paddd	%xmm7, %xmm8
	psubd	%xmm3, %xmm2
	psubd	%xmm3, %xmm4
	psrld	$1, %xmm2
	psrld	$1, %xmm4
	pshuflw	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	psubd	%xmm3, %xmm9
	psubd	%xmm3, %xmm8
	psrld	$1, %xmm9
	psrld	$1, %xmm8
	pshuflw	$232, %xmm9, %xmm1              # xmm1 = xmm9[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm8, %xmm2              # xmm2 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, (%r11,%r8)
	movdqu	%xmm1, 16(%r11,%r8)
	addq	$32, %r8
	cmpq	%r8, %r15
	jne	.LBB10_21
# %bb.22:                               # %middle.block138
                                        #   in Loop: Header=BB10_17 Depth=1
	movq	-104(%rsp), %rax                # 8-byte Reload
	movl	%eax, %edx
	cmpl	-96(%rsp), %eax                 # 4-byte Folded Reload
	movl	184(%rsp), %r11d
	je	.LBB10_29
	jmp	.LBB10_23
.LBB10_30:                              # %for.end88
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
.Lfunc_end10:
	.size	get_luma_32, .Lfunc_end10-get_luma_32
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_11
.LCPI11_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI11_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI11_2:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI11_3:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	get_luma_11,@function
get_luma_11:                            # @get_luma_11
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB11_32
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	jle	.LBB11_32
# %bb.2:                                # %for.body.us.preheader
	movl	%r9d, -48(%rsp)                 # 4-byte Spill
	movslq	%r8d, %rax
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rcx                # 8-byte Reload
	leal	-1(%rcx), %edx
	leaq	(%rax,%rdx), %rsi
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	addq	%rdx, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movl	%ecx, %edx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx), %esi
	movd	208(%rsp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	leal	(%rcx,%rcx), %r14d
	andl	$-64, %r14d
	xorl	%r12d, %r12d
	pxor	%xmm10, %xmm10
	xorl	%r13d, %r13d
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movdqa	%xmm9, 128(%rsp)                # 16-byte Spill
	jmp	.LBB11_3
	.p2align	4, 0x90
.LBB11_15:                              # %for.cond9.for.inc31_crit_edge.us
                                        #   in Loop: Header=BB11_3 Depth=1
	incq	%r13
	cmpq	24(%rsp), %r13                  # 8-byte Folded Reload
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	-8(%rsp), %rax                  # 8-byte Reload
	je	.LBB11_16
.LBB11_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
                                        #     Child Loop BB11_12 Depth 2
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r13,8), %rdx
	leaq	(%rdx,%rax,2), %rcx
	leaq	(%rdx,%rax,2), %rbp
	addq	$-4, %rbp
	leaq	-2(%rdx,%rax,2), %r8
	leaq	4(%rdx,%rax,2), %r9
	leaq	(%rdx,%rax,2), %rbx
	addq	$6, %rbx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rdi,%r13,8), %rdi
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	jae	.LBB11_5
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	movq	%rdi, %rdx
	movq	%rcx, %r10
	xorl	%edi, %edi
	movl	208(%rsp), %eax
	jmp	.LBB11_11
	.p2align	4, 0x90
.LBB11_5:                               # %vector.memcheck
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	movl	208(%rsp), %eax
	jae	.LBB11_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	addq	%rdi, %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rbp
	jae	.LBB11_8
# %bb.7:                                #   in Loop: Header=BB11_3 Depth=1
	movq	%rdi, %rdx
	movq	%rcx, %r10
	xorl	%edi, %edi
	jmp	.LBB11_11
	.p2align	4, 0x90
.LBB11_8:                               # %vector.ph
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	(%rdi,%rsi), %rdx
	addq	%rsi, %rbx
	addq	%rsi, %r9
	leaq	(%rcx,%rsi), %r10
	addq	%rsi, %r8
	addq	%rsi, %rbp
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB11_9:                               # %vector.body
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rcx,%r11), %xmm2
	movdqu	28(%rcx,%r11), %xmm1
	movdqu	44(%rcx,%r11), %xmm0
	movdqu	-4(%rcx,%r11), %xmm4
	movdqu	-2(%rcx,%r11), %xmm12
	movdqa	%xmm4, %xmm9
	punpckhwd	%xmm10, %xmm9           # xmm9 = xmm9[4],xmm10[4],xmm9[5],xmm10[5],xmm9[6],xmm10[6],xmm9[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	pxor	%xmm8, %xmm8
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movdqu	6(%rcx,%r11), %xmm7
	movdqu	22(%rcx,%r11), %xmm6
	movdqu	38(%rcx,%r11), %xmm13
	movdqu	54(%rcx,%r11), %xmm5
	movdqa	%xmm7, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm9, %xmm14
	movdqa	%xmm14, (%rsp)                  # 16-byte Spill
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	paddd	%xmm4, %xmm7
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm8, %xmm9            # xmm9 = xmm9[4],xmm8[4],xmm9[5],xmm8[5],xmm9[6],xmm8[6],xmm9[7],xmm8[7]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	paddd	%xmm2, %xmm6
	movdqa	%xmm13, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm1, %xmm13
	movdqa	%xmm13, -112(%rsp)              # 16-byte Spill
	movdqa	%xmm5, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	movdqu	14(%rcx,%r11), %xmm4
	movdqu	30(%rcx,%r11), %xmm3
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	movdqa	%xmm4, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	punpckhwd	%xmm8, %xmm4            # xmm4 = xmm4[4],xmm8[4],xmm4[5],xmm8[5],xmm4[6],xmm8[6],xmm4[7],xmm8[7]
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	movdqu	4(%rcx,%r11), %xmm1
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rcx,%r11), %xmm2
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	paddd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm8, %xmm12           # xmm12 = xmm12[0],xmm8[0],xmm12[1],xmm8[1],xmm12[2],xmm8[2],xmm12[3],xmm8[3]
	paddd	%xmm14, %xmm12
	movdqu	36(%rcx,%r11), %xmm5
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm4, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rcx,%r11), %xmm0
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	paddd	%xmm3, %xmm5
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqu	52(%rcx,%r11), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	paddd	%xmm4, %xmm15
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	(%rcx,%r11), %xmm13
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, (%rsp)                   # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rcx,%r11), %xmm4
	psubd	%xmm0, %xmm6
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rcx,%r11), %xmm2
	movdqu	32(%rcx,%r11), %xmm1
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm4, %xmm12
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	paddd	%xmm0, %xmm12
	movdqu	18(%rcx,%r11), %xmm0
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	paddd	%xmm13, %xmm4
	movdqa	%xmm0, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm3, %xmm14
	movdqu	34(%rcx,%r11), %xmm3
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm5, %xmm2
	movdqu	48(%rcx,%r11), %xmm5
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	paddd	%xmm1, %xmm3
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	movdqu	50(%rcx,%r11), %xmm13
	movdqa	%xmm13, %xmm15
	punpckhwd	%xmm8, %xmm15           # xmm15 = xmm15[4],xmm8[4],xmm15[5],xmm8[5],xmm15[6],xmm8[6],xmm15[7],xmm8[7]
	paddd	%xmm1, %xmm15
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm5, %xmm13
	pshufd	$245, %xmm12, %xmm1             # xmm1 = xmm12[1,1,3,3]
	movdqa	.LCPI11_0(%rip), %xmm5          # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm12, 48(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm4, %xmm12             # xmm12 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm12            # xmm12 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm3             # xmm3 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm15            # xmm15 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	movdqa	.LCPI11_1(%rip), %xmm13         # xmm13 = [16,16,16,16]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm5             # xmm5 = xmm15[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	(%rsp), %xmm5                   # 16-byte Reload
	paddd	%xmm13, %xmm5
	paddd	48(%rsp), %xmm5                 # 16-byte Folded Reload
	paddd	%xmm13, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm13, %xmm9
	paddd	%xmm12, %xmm9
	paddd	%xmm13, %xmm6
	paddd	%xmm14, %xmm6
	paddd	%xmm13, %xmm10
	paddd	%xmm0, %xmm10
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	paddd	%xmm13, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm13, %xmm11
	paddd	%xmm3, %xmm11
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm13, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm7
	psrad	$5, %xmm5
	psrad	$5, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm8, %xmm12
	pand	%xmm5, %xmm12
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm7, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm9, %xmm1
	movdqa	128(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm8, %xmm6
	pand	%xmm10, %xmm6
	pxor	%xmm10, %xmm10
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm10, %xmm8
	pand	%xmm0, %xmm8
	movdqa	%xmm11, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm10, %xmm3
	pand	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm9, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm9, %xmm2
	pcmpgtd	%xmm12, %xmm2
	pand	%xmm2, %xmm12
	pandn	%xmm9, %xmm2
	por	%xmm12, %xmm2
	movdqa	%xmm9, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm5, %xmm7
	pandn	%xmm9, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm9, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm8, %xmm6
	pandn	%xmm9, %xmm8
	por	%xmm6, %xmm8
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm3, %xmm6
	pand	%xmm6, %xmm3
	pandn	%xmm9, %xmm6
	por	%xmm3, %xmm6
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm9, %xmm3
	por	%xmm0, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm7, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm8, %xmm1
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm3, %xmm6
	movdqu	%xmm4, (%rdi,%r11)
	movdqu	%xmm5, 16(%rdi,%r11)
	movdqu	%xmm1, 32(%rdi,%r11)
	movdqu	%xmm6, 48(%rdi,%r11)
	addq	$64, %r11
	cmpq	%r11, %r14
	jne	.LBB11_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edi
	cmpl	-24(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB11_15
	.p2align	4, 0x90
.LBB11_11:                              # %for.body11.us.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edi, %ecx
	xorl	%edi, %edi
	jmp	.LBB11_12
	.p2align	4, 0x90
.LBB11_14:                              # %for.body11.us
                                        #   in Loop: Header=BB11_12 Depth=2
	movw	%r11w, (%rdx,%rdi,2)
	incq	%rdi
	cmpl	%edi, %ecx
	je	.LBB11_15
.LBB11_12:                              # %for.body11.us
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%rdi,2), %r11d
	movzwl	(%rbx,%rdi,2), %r14d
	addl	%r11d, %r14d
	movzwl	(%r8,%rdi,2), %r11d
	movzwl	(%r9,%rdi,2), %r15d
	addl	%r11d, %r15d
	leal	(%r15,%r15,4), %r11d
	subl	%r11d, %r14d
	movzwl	(%r10,%rdi,2), %r11d
	movzwl	2(%r10,%rdi,2), %r15d
	addl	%r11d, %r15d
	leal	(%r15,%r15,4), %r11d
	leal	(%r14,%r11,4), %r11d
	addl	$16, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r12d, %r11d
	cmpl	%eax, %r11d
	jl	.LBB11_14
# %bb.13:                               # %for.body11.us
                                        #   in Loop: Header=BB11_12 Depth=2
	movl	%eax, %r11d
	jmp	.LBB11_14
.LBB11_16:                              # %for.end33
	cmpl	$0, -56(%rsp)                   # 4-byte Folded Reload
	movl	-48(%rsp), %ecx                 # 4-byte Reload
	jle	.LBB11_32
# %bb.17:                               # %for.body40.lr.ph
	movslq	%ecx, %r12
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rcx
	negq	%rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	addq	%rax, %rax
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	addq	-16(%rcx), %rax
	movq	-64(%rsp), %rdi                 # 8-byte Reload
	leaq	2(,%rdi,2), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r12), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	leaq	(,%r12,4), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	leaq	(%r12,%rdi), %rdx
	leaq	2(%rdx,%rdx), %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdi,2), %rdx
	addq	$2, %rdx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$2147483616, %esi               # imm = 0x7FFFFFE0
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rsi), %edx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	leaq	48(,%r12,2), %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	leaq	48(,%r12,4), %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	leaq	48(%rcx,%rcx,2), %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	leaq	48(,%r12,8), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	leaq	48(%rcx,%rcx,4), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movdqa	.LCPI11_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	pxor	%xmm14, %xmm14
	xorl	%r14d, %r14d
	movq	%r12, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB11_18
	.p2align	4, 0x90
.LBB11_30:                              # %for.cond52.for.end86_crit_edge.us.loopexit
                                        #   in Loop: Header=BB11_18 Depth=1
	subq	%rdx, %r13
.LBB11_31:                              # %for.cond52.for.end86_crit_edge.us
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,2), %rax
	addq	%r13, %rax
	movq	48(%rsp), %r14                  # 8-byte Reload
	incq	%r14
	cmpq	24(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB11_32
.LBB11_18:                              # %for.body40.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_24 Depth 2
                                        #     Child Loop BB11_27 Depth 2
	leaq	(%rax,%r12,2), %r13
	leaq	(,%r12,2), %rbp
	addq	%r13, %rbp
	leaq	(%rbp,%r12,2), %r10
	leaq	(%r10,%r12,2), %rsi
	leaq	(%rsi,%r12,2), %r9
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r14,8), %r8
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	jae	.LBB11_20
.LBB11_19:                              #   in Loop: Header=BB11_18 Depth=1
	movq	%r8, %r14
	movq	%rax, %rbx
	xorl	%edx, %edx
.LBB11_26:                              # %for.body55.us.preheader
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edx, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	208(%rsp), %eax
	jmp	.LBB11_27
	.p2align	4, 0x90
.LBB11_29:                              # %for.body55.us
                                        #   in Loop: Header=BB11_27 Depth=2
	movzwl	(%r14,%rdi,2), %r11d
	addl	%r11d, %r8d
	incl	%r8d
	shrl	%r8d
	movw	%r8w, (%r14,%rdi,2)
	incq	%rdi
	addq	$-2, %rdx
	cmpl	%edi, %ecx
	je	.LBB11_30
.LBB11_27:                              # %for.body55.us
                                        #   Parent Loop BB11_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rdi,2), %r8d
	movzwl	(%r9,%rdi,2), %r11d
	addl	%r8d, %r11d
	movzwl	(%r13,%rdi,2), %r8d
	movzwl	(%rsi,%rdi,2), %r15d
	addl	%r8d, %r15d
	leal	(%r15,%r15,4), %r8d
	subl	%r8d, %r11d
	movzwl	(%rbp,%rdi,2), %r8d
	movzwl	(%r10,%rdi,2), %r15d
	addl	%r8d, %r15d
	leal	(%r15,%r15,4), %r8d
	leal	(%r11,%r8,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	movl	$0, %r11d
	cmovlel	%r11d, %r8d
	cmpl	%eax, %r8d
	jl	.LBB11_29
# %bb.28:                               # %for.body55.us
                                        #   in Loop: Header=BB11_27 Depth=2
	movl	%eax, %r8d
	jmp	.LBB11_29
	.p2align	4, 0x90
.LBB11_20:                              # %vector.memcheck239
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-88(%rsp), %rbx                 # 8-byte Reload
	leaq	(%r8,%rbx), %rcx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %rdx
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %rdi
	movq	%rdi, %xmm0
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	movq	%rdx, %xmm1
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, %xmm2
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movq	%r11, %xmm3
	leaq	(%rax,%rbx), %rdx
	movq	%r8, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%rbp, %xmm1
	movq	%r10, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%r13, %xmm1
	movq	%rsi, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm8, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdi, %r8
	setb	%dil
	cmpq	%rcx, %r9
	setb	%r11b
	cmpq	%rdx, %r8
	setb	%dl
	cmpq	%rcx, %rax
	setb	%cl
	movmskps	%xmm5, %ebx
	testl	%ebx, %ebx
	jne	.LBB11_19
# %bb.21:                               # %vector.memcheck239
                                        #   in Loop: Header=BB11_18 Depth=1
	andb	%r11b, %dil
	jne	.LBB11_19
# %bb.22:                               # %vector.memcheck239
                                        #   in Loop: Header=BB11_18 Depth=1
	andb	%cl, %dl
	jne	.LBB11_19
# %bb.23:                               # %vector.ph272
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r8,%rcx), %r14
	addq	%rcx, %r9
	addq	%rcx, %rsi
	addq	%rcx, %r10
	addq	%rcx, %rbp
	addq	%rcx, %r13
	leaq	(%rax,%rcx), %rbx
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	movq	88(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r12
	movq	80(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	movq	72(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r15
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB11_24:                              # %vector.body291
                                        #   Parent Loop BB11_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%rdi), %xmm4
	movdqu	16(%rax,%rdi), %xmm2
	movdqu	32(%rax,%rdi), %xmm1
	movdqu	48(%rax,%rdi), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm14, %xmm5           # xmm5 = xmm5[4],xmm14[4],xmm5[5],xmm14[5],xmm5[6],xmm14[6],xmm5[7],xmm14[7]
	punpcklwd	%xmm14, %xmm4           # xmm4 = xmm4[0],xmm14[0],xmm4[1],xmm14[1],xmm4[2],xmm14[2],xmm4[3],xmm14[3]
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm14, %xmm12          # xmm12 = xmm12[4],xmm14[4],xmm12[5],xmm14[5],xmm12[6],xmm14[6],xmm12[7],xmm14[7]
	punpcklwd	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1],xmm2[2],xmm14[2],xmm2[3],xmm14[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm14, %xmm13          # xmm13 = xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklwd	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1],xmm1[2],xmm14[2],xmm1[3],xmm14[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm14, %xmm3           # xmm3 = xmm3[4],xmm14[4],xmm3[5],xmm14[5],xmm3[6],xmm14[6],xmm3[7],xmm14[7]
	punpcklwd	%xmm14, %xmm0           # xmm0 = xmm0[0],xmm14[0],xmm0[1],xmm14[1],xmm0[2],xmm14[2],xmm0[3],xmm14[3]
	movdqu	-48(%r15,%rdi), %xmm9
	movdqu	-32(%r15,%rdi), %xmm8
	movdqu	-16(%r15,%rdi), %xmm10
	movdqu	(%r15,%rdi), %xmm6
	movdqa	%xmm9, %xmm7
	punpckhwd	.LCPI11_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, -80(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI11_3(%rip), %xmm9  # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm11
	punpckhwd	.LCPI11_3(%rip), %xmm11 # xmm11 = xmm11[4],mem[4],xmm11[5],mem[5],xmm11[6],mem[6],xmm11[7],mem[7]
	paddd	%xmm12, %xmm11
	punpcklwd	.LCPI11_3(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3]
	paddd	%xmm2, %xmm8
	movdqa	%xmm10, %xmm12
	punpckhwd	.LCPI11_3(%rip), %xmm12 # xmm12 = xmm12[4],mem[4],xmm12[5],mem[5],xmm12[6],mem[6],xmm12[7],mem[7]
	paddd	%xmm13, %xmm12
	punpcklwd	.LCPI11_3(%rip), %xmm10 # xmm10 = xmm10[0],mem[0],xmm10[1],mem[1],xmm10[2],mem[2],xmm10[3],mem[3]
	paddd	%xmm1, %xmm10
	movdqa	%xmm6, %xmm13
	punpckhwd	.LCPI11_3(%rip), %xmm13 # xmm13 = xmm13[4],mem[4],xmm13[5],mem[5],xmm13[6],mem[6],xmm13[7],mem[7]
	paddd	%xmm3, %xmm13
	punpcklwd	.LCPI11_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	movdqu	-48(%rdx,%rdi), %xmm0
	movdqu	-32(%rdx,%rdi), %xmm4
	movdqu	-16(%rdx,%rdi), %xmm7
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI11_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpckhwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm4, %xmm2
	punpcklwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	punpckhwd	.LCPI11_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm7, %xmm5
	punpcklwd	.LCPI11_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	movdqu	-48(%r11,%rdi), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	.LCPI11_3(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r11,%rdi), %xmm1
	punpckhwd	.LCPI11_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm14
	punpcklwd	.LCPI11_3(%rip), %xmm14 # xmm14 = xmm14[0],mem[0],xmm14[1],mem[1],xmm14[2],mem[2],xmm14[3],mem[3]
	paddd	%xmm2, %xmm14
	movdqu	-16(%r11,%rdi), %xmm6
	punpckhwd	.LCPI11_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm4
	punpcklwd	.LCPI11_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm5, %xmm4
	movdqu	(%rdx,%rdi), %xmm0
	punpckhwd	.LCPI11_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	punpckhwd	.LCPI11_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	paddd	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	punpcklwd	.LCPI11_3(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	movdqu	(%r11,%rdi), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI11_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm7, %xmm5
	punpckhwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpckhwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-80(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm11
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm13
	movdqu	-48(%rcx,%rdi), %xmm2
	movdqu	-32(%rcx,%rdi), %xmm1
	movdqu	-16(%rcx,%rdi), %xmm3
	movdqa	%xmm2, %xmm0
	punpckhwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpcklwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	%xmm1, %xmm6
	punpckhwd	.LCPI11_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	punpcklwd	.LCPI11_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm3, %xmm4
	punpckhwd	.LCPI11_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqu	-48(%r12,%rdi), %xmm5
	movdqa	%xmm5, %xmm15
	punpckhwd	.LCPI11_3(%rip), %xmm15 # xmm15 = xmm15[4],mem[4],xmm15[5],mem[5],xmm15[6],mem[6],xmm15[7],mem[7]
	paddd	%xmm0, %xmm15
	movdqu	-32(%r12,%rdi), %xmm0
	punpcklwd	.LCPI11_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm14
	punpckhwd	.LCPI11_3(%rip), %xmm14 # xmm14 = xmm14[4],mem[4],xmm14[5],mem[5],xmm14[6],mem[6],xmm14[7],mem[7]
	paddd	%xmm6, %xmm14
	movdqu	-16(%r12,%rdi), %xmm2
	punpcklwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhwd	.LCPI11_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqu	(%rcx,%rdi), %xmm6
	punpcklwd	.LCPI11_3(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpcklwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm3, %xmm2
	movdqa	%xmm6, %xmm7
	punpckhwd	.LCPI11_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqu	(%r12,%rdi), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhwd	.LCPI11_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm7, %xmm3
	punpcklwd	.LCPI11_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpcklwd	.LCPI11_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm6, %xmm4
	pshufd	$245, %xmm15, %xmm6             # xmm6 = xmm15[1,1,3,3]
	movdqa	.LCPI11_0(%rip), %xmm7          # xmm7 = [20,20,20,20]
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1]
	movdqa	%xmm15, (%rsp)                  # 16-byte Spill
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm15             # xmm15 = xmm5[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm15           # xmm15 = xmm15[0],xmm5[0],xmm15[1],xmm5[1]
	pshufd	$245, %xmm14, %xmm5             # xmm5 = xmm14[1,1,3,3]
	pmuludq	%xmm7, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm14           # xmm14 = xmm14[0],xmm5[0],xmm14[1],xmm5[1]
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$245, %xmm2, %xmm6              # xmm6 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movdqa	.LCPI11_1(%rip), %xmm4          # xmm4 = [16,16,16,16]
	movdqa	-80(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm4, %xmm7
	paddd	(%rsp), %xmm7                   # 16-byte Folded Reload
	paddd	%xmm4, %xmm9
	paddd	%xmm15, %xmm9
	paddd	%xmm4, %xmm11
	paddd	%xmm14, %xmm11
	paddd	%xmm4, %xmm8
	paddd	%xmm5, %xmm8
	paddd	%xmm4, %xmm12
	paddd	%xmm0, %xmm12
	paddd	%xmm4, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm4, %xmm13
	paddd	%xmm2, %xmm13
	movdqu	(%r8,%rdi), %xmm2
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	%xmm3, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm7
	psrad	$5, %xmm8
	psrad	$5, %xmm11
	psrad	$5, %xmm10
	psrad	$5, %xmm12
	psrad	$5, %xmm6
	psrad	$5, %xmm13
	movdqa	%xmm7, %xmm3
	pcmpgtd	.LCPI11_3(%rip), %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm9, %xmm5
	pcmpgtd	.LCPI11_3(%rip), %xmm5
	pand	%xmm9, %xmm5
	movdqa	%xmm11, %xmm0
	pcmpgtd	.LCPI11_3(%rip), %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm8, %xmm4
	pcmpgtd	.LCPI11_3(%rip), %xmm4
	pand	%xmm8, %xmm4
	movdqa	%xmm12, %xmm14
	pcmpgtd	.LCPI11_3(%rip), %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm10, %xmm1
	pcmpgtd	.LCPI11_3(%rip), %xmm1
	pand	%xmm10, %xmm1
	movdqa	%xmm13, %xmm7
	pcmpgtd	.LCPI11_3(%rip), %xmm7
	pand	%xmm13, %xmm7
	movdqa	%xmm7, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm6, %xmm15
	pcmpgtd	.LCPI11_3(%rip), %xmm15
	pand	%xmm6, %xmm15
	movdqa	128(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm10
	pcmpgtd	%xmm5, %xmm10
	pand	%xmm10, %xmm5
	pandn	%xmm6, %xmm10
	por	%xmm5, %xmm10
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI11_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm5, %xmm10
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm6, %xmm9
	por	%xmm3, %xmm9
	movdqu	16(%r8,%rdi), %xmm3
	punpckhwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm2, %xmm9
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm6, %xmm7
	por	%xmm4, %xmm7
	movdqa	%xmm3, %xmm2
	punpcklwd	.LCPI11_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm11
	pcmpgtd	%xmm0, %xmm11
	pand	%xmm11, %xmm0
	pandn	%xmm6, %xmm11
	por	%xmm0, %xmm11
	movdqu	32(%r8,%rdi), %xmm0
	punpckhwd	.LCPI11_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm3, %xmm11
	movdqa	%xmm6, %xmm8
	pcmpgtd	%xmm1, %xmm8
	pand	%xmm8, %xmm1
	pandn	%xmm6, %xmm8
	por	%xmm1, %xmm8
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI11_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm6, %xmm13
	pcmpgtd	%xmm14, %xmm13
	pand	%xmm13, %xmm14
	pandn	%xmm6, %xmm13
	por	%xmm14, %xmm13
	pcmpeqd	%xmm2, %xmm2
	movdqu	48(%r8,%rdi), %xmm1
	punpckhwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	paddd	%xmm0, %xmm13
	movdqa	%xmm6, %xmm12
	pcmpgtd	%xmm15, %xmm12
	pand	%xmm12, %xmm15
	pandn	%xmm6, %xmm12
	por	%xmm15, %xmm12
	movdqa	%xmm1, %xmm0
	punpcklwd	.LCPI11_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm0, %xmm12
	movdqa	%xmm6, %xmm0
	movdqa	-112(%rsp), %xmm3               # 16-byte Reload
	pcmpgtd	%xmm3, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm6, %xmm0
	por	%xmm3, %xmm0
	pxor	%xmm14, %xmm14
	punpckhwd	%xmm14, %xmm1           # xmm1 = xmm1[4],xmm14[4],xmm1[5],xmm14[5],xmm1[6],xmm14[6],xmm1[7],xmm14[7]
	paddd	%xmm1, %xmm0
	psubd	%xmm2, %xmm10
	psubd	%xmm2, %xmm9
	pslld	$15, %xmm9
	psrad	$16, %xmm9
	pslld	$15, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm9, %xmm10
	psubd	%xmm2, %xmm7
	psubd	%xmm2, %xmm11
	pslld	$15, %xmm11
	psrad	$16, %xmm11
	pslld	$15, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm11, %xmm7
	psubd	%xmm2, %xmm8
	psubd	%xmm2, %xmm13
	pslld	$15, %xmm13
	psrad	$16, %xmm13
	pslld	$15, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm13, %xmm8
	psubd	%xmm2, %xmm12
	psubd	%xmm2, %xmm0
	pslld	$15, %xmm0
	psrad	$16, %xmm0
	pslld	$15, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm0, %xmm12
	movdqu	%xmm10, (%r8,%rdi)
	movdqu	%xmm7, 16(%r8,%rdi)
	movdqu	%xmm8, 32(%r8,%rdi)
	movdqu	%xmm12, 48(%r8,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, 40(%rsp)                  # 8-byte Folded Reload
	jne	.LBB11_24
# %bb.25:                               # %middle.block269
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %edx
	cmpl	-24(%rsp), %eax                 # 4-byte Folded Reload
	movq	120(%rsp), %r12                 # 8-byte Reload
	movdqa	.LCPI11_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	je	.LBB11_31
	jmp	.LBB11_26
.LBB11_32:                              # %for.end91
	addq	$152, %rsp
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
.Lfunc_end11:
	.size	get_luma_11, .Lfunc_end11-get_luma_11
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_13
.LCPI12_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI12_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI12_2:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI12_3:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	get_luma_13,@function
get_luma_13:                            # @get_luma_13
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB12_32
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	jle	.LBB12_32
# %bb.2:                                # %for.body.us.preheader
	movl	%r9d, -40(%rsp)                 # 4-byte Spill
	movslq	%r8d, %rax
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rcx                # 8-byte Reload
	leal	-1(%rcx), %edx
	leaq	(%rax,%rdx), %rsi
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	addq	%rdx, %rdx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	addq	%rsi, %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	movl	%ecx, %edx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	addl	%edx, %edx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movd	208(%rsp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	addl	%ecx, %ecx
	andl	$-64, %ecx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	$1, %r12d
	xorl	%r13d, %r13d
	pxor	%xmm10, %xmm10
	xorl	%ebp, %ebp
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movdqa	%xmm9, 128(%rsp)                # 16-byte Spill
	jmp	.LBB12_3
	.p2align	4, 0x90
.LBB12_15:                              # %for.cond9.for.inc31_crit_edge.us
                                        #   in Loop: Header=BB12_3 Depth=1
	incq	%r12
	incq	%rbp
	cmpq	40(%rsp), %rbp                  # 8-byte Folded Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	je	.LBB12_16
.LBB12_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_9 Depth 2
                                        #     Child Loop BB12_12 Depth 2
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r12,8), %r10
	leaq	(%r10,%rax,2), %rcx
	leaq	(%r10,%rax,2), %r8
	addq	$-4, %r8
	leaq	-2(%r10,%rax,2), %r9
	leaq	4(%r10,%rax,2), %rbx
	leaq	(%r10,%rax,2), %rdx
	addq	$6, %rdx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi,%rbp,8), %rdi
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	jae	.LBB12_5
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	movq	%rdi, %r10
	movq	%rcx, %r14
	xorl	%edi, %edi
	movl	208(%rsp), %eax
	jmp	.LBB12_11
	.p2align	4, 0x90
.LBB12_5:                               # %vector.memcheck
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, %r10
	addq	$8, %r10
	cmpq	%r10, %rdi
	movl	208(%rsp), %eax
	jae	.LBB12_8
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rdi,%rsi), %r10
	addq	$2, %r10
	cmpq	%r10, %r8
	jae	.LBB12_8
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	movq	%rdi, %r10
	movq	%rcx, %r14
	xorl	%edi, %edi
	jmp	.LBB12_11
	.p2align	4, 0x90
.LBB12_8:                               # %vector.ph
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rdi,%rsi), %r10
	addq	%rsi, %rdx
	addq	%rsi, %rbx
	leaq	(%rcx,%rsi), %r14
	addq	%rsi, %r9
	addq	%rsi, %r8
	xorl	%r11d, %r11d
	movq	56(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB12_9:                               # %vector.body
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rcx,%r11), %xmm2
	movdqu	28(%rcx,%r11), %xmm1
	movdqu	44(%rcx,%r11), %xmm0
	movdqu	-4(%rcx,%r11), %xmm4
	movdqu	-2(%rcx,%r11), %xmm12
	movdqa	%xmm4, %xmm9
	punpckhwd	%xmm10, %xmm9           # xmm9 = xmm9[4],xmm10[4],xmm9[5],xmm10[5],xmm9[6],xmm10[6],xmm9[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	pxor	%xmm8, %xmm8
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movdqu	6(%rcx,%r11), %xmm7
	movdqu	22(%rcx,%r11), %xmm6
	movdqu	38(%rcx,%r11), %xmm13
	movdqu	54(%rcx,%r11), %xmm5
	movdqa	%xmm7, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm9, %xmm14
	movdqa	%xmm14, 16(%rsp)                # 16-byte Spill
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	paddd	%xmm4, %xmm7
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm8, %xmm9            # xmm9 = xmm9[4],xmm8[4],xmm9[5],xmm8[5],xmm9[6],xmm8[6],xmm9[7],xmm8[7]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	paddd	%xmm2, %xmm6
	movdqa	%xmm13, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm1, %xmm13
	movdqa	%xmm13, -112(%rsp)              # 16-byte Spill
	movdqa	%xmm5, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	movdqu	14(%rcx,%r11), %xmm4
	movdqu	30(%rcx,%r11), %xmm3
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	movdqa	%xmm4, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	punpckhwd	%xmm8, %xmm4            # xmm4 = xmm4[4],xmm8[4],xmm4[5],xmm8[5],xmm4[6],xmm8[6],xmm4[7],xmm8[7]
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	movdqu	4(%rcx,%r11), %xmm1
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rcx,%r11), %xmm2
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	paddd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm8, %xmm12           # xmm12 = xmm12[0],xmm8[0],xmm12[1],xmm8[1],xmm12[2],xmm8[2],xmm12[3],xmm8[3]
	paddd	%xmm14, %xmm12
	movdqu	36(%rcx,%r11), %xmm5
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm4, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rcx,%r11), %xmm0
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	paddd	%xmm3, %xmm5
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqu	52(%rcx,%r11), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	paddd	%xmm4, %xmm15
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	(%rcx,%r11), %xmm13
	movdqa	16(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 16(%rsp)                 # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rcx,%r11), %xmm4
	psubd	%xmm0, %xmm6
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rcx,%r11), %xmm2
	movdqu	32(%rcx,%r11), %xmm1
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm4, %xmm12
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	paddd	%xmm0, %xmm12
	movdqu	18(%rcx,%r11), %xmm0
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	paddd	%xmm13, %xmm4
	movdqa	%xmm0, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm3, %xmm14
	movdqu	34(%rcx,%r11), %xmm3
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm5, %xmm2
	movdqu	48(%rcx,%r11), %xmm5
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	paddd	%xmm1, %xmm3
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	movdqu	50(%rcx,%r11), %xmm13
	movdqa	%xmm13, %xmm15
	punpckhwd	%xmm8, %xmm15           # xmm15 = xmm15[4],xmm8[4],xmm15[5],xmm8[5],xmm15[6],xmm8[6],xmm15[7],xmm8[7]
	paddd	%xmm1, %xmm15
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm5, %xmm13
	pshufd	$245, %xmm12, %xmm1             # xmm1 = xmm12[1,1,3,3]
	movdqa	.LCPI12_0(%rip), %xmm5          # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm12, 64(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm4, %xmm12             # xmm12 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm12            # xmm12 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm3             # xmm3 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm15            # xmm15 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	movdqa	.LCPI12_1(%rip), %xmm13         # xmm13 = [16,16,16,16]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm5             # xmm5 = xmm15[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	16(%rsp), %xmm5                 # 16-byte Reload
	paddd	%xmm13, %xmm5
	paddd	64(%rsp), %xmm5                 # 16-byte Folded Reload
	paddd	%xmm13, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm13, %xmm9
	paddd	%xmm12, %xmm9
	paddd	%xmm13, %xmm6
	paddd	%xmm14, %xmm6
	paddd	%xmm13, %xmm10
	paddd	%xmm0, %xmm10
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	paddd	%xmm13, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm13, %xmm11
	paddd	%xmm3, %xmm11
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm13, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm7
	psrad	$5, %xmm5
	psrad	$5, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm8, %xmm12
	pand	%xmm5, %xmm12
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm7, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm9, %xmm1
	movdqa	128(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm8, %xmm6
	pand	%xmm10, %xmm6
	pxor	%xmm10, %xmm10
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm10, %xmm8
	pand	%xmm0, %xmm8
	movdqa	%xmm11, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm10, %xmm3
	pand	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm9, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm9, %xmm2
	pcmpgtd	%xmm12, %xmm2
	pand	%xmm2, %xmm12
	pandn	%xmm9, %xmm2
	por	%xmm12, %xmm2
	movdqa	%xmm9, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm5, %xmm7
	pandn	%xmm9, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm9, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm8, %xmm6
	pandn	%xmm9, %xmm8
	por	%xmm6, %xmm8
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm3, %xmm6
	pand	%xmm6, %xmm3
	pandn	%xmm9, %xmm6
	por	%xmm3, %xmm6
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm9, %xmm3
	por	%xmm0, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm7, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm8, %xmm1
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm3, %xmm6
	movdqu	%xmm4, (%rdi,%r11)
	movdqu	%xmm5, 16(%rdi,%r11)
	movdqu	%xmm1, 32(%rdi,%r11)
	movdqu	%xmm6, 48(%rdi,%r11)
	addq	$64, %r11
	cmpq	%r11, %rsi
	jne	.LBB12_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edi
	cmpl	-8(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB12_15
	.p2align	4, 0x90
.LBB12_11:                              # %for.body11.us.preheader
                                        #   in Loop: Header=BB12_3 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edi, %ecx
	xorl	%edi, %edi
	jmp	.LBB12_12
	.p2align	4, 0x90
.LBB12_14:                              # %for.body11.us
                                        #   in Loop: Header=BB12_12 Depth=2
	movw	%r11w, (%r10,%rdi,2)
	incq	%rdi
	cmpl	%edi, %ecx
	je	.LBB12_15
.LBB12_12:                              # %for.body11.us
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r8,%rdi,2), %r11d
	movzwl	(%rdx,%rdi,2), %r15d
	addl	%r11d, %r15d
	movzwl	(%r9,%rdi,2), %r11d
	movzwl	(%rbx,%rdi,2), %esi
	addl	%r11d, %esi
	leal	(%rsi,%rsi,4), %esi
	subl	%esi, %r15d
	movzwl	(%r14,%rdi,2), %esi
	movzwl	2(%r14,%rdi,2), %r11d
	addl	%esi, %r11d
	leal	(%r11,%r11,4), %esi
	leal	(%r15,%rsi,4), %r11d
	addl	$16, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r13d, %r11d
	cmpl	%eax, %r11d
	jl	.LBB12_14
# %bb.13:                               # %for.body11.us
                                        #   in Loop: Header=BB12_12 Depth=2
	movl	%eax, %r11d
	jmp	.LBB12_14
.LBB12_16:                              # %for.end33
	cmpl	$0, -48(%rsp)                   # 4-byte Folded Reload
	movl	-40(%rsp), %ecx                 # 4-byte Reload
	jle	.LBB12_32
# %bb.17:                               # %for.body40.lr.ph
	movslq	%ecx, %r12
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rcx
	negq	%rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	addq	%rax, %rax
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	addq	-16(%rcx), %rax
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	leaq	2(,%rdi,2), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	leaq	(%r12,%r12), %rcx
	leaq	(%rcx,%rcx,2), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	leaq	(,%r12,4), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rdx
	leaq	2(%rdx,%rdi,2), %rdx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	leaq	(%r12,%rdi), %rdx
	leaq	2(%rdx,%rdx), %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rdx
	leaq	(%rdx,%rdi,2), %rdx
	addq	$2, %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$2147483616, %esi               # imm = 0x7FFFFFE0
	movq	%rsi, -56(%rsp)                 # 8-byte Spill
	leal	(%rsi,%rsi), %edx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	leaq	48(,%r12,2), %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	leaq	48(,%r12,4), %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	leaq	48(%rcx,%rcx,2), %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	leaq	48(,%r12,8), %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	leaq	48(%rcx,%rcx,4), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movdqa	.LCPI12_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	pxor	%xmm14, %xmm14
	xorl	%r14d, %r14d
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	jmp	.LBB12_18
	.p2align	4, 0x90
.LBB12_30:                              # %for.cond52.for.end86_crit_edge.us.loopexit
                                        #   in Loop: Header=BB12_18 Depth=1
	subq	%rdx, %r13
.LBB12_31:                              # %for.cond52.for.end86_crit_edge.us
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	(,%rax,2), %rax
	addq	%r13, %rax
	movq	64(%rsp), %r14                  # 8-byte Reload
	incq	%r14
	cmpq	40(%rsp), %r14                  # 8-byte Folded Reload
	je	.LBB12_32
.LBB12_18:                              # %for.body40.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_24 Depth 2
                                        #     Child Loop BB12_27 Depth 2
	leaq	(%rax,%r12,2), %r13
	leaq	(,%r12,2), %rbp
	addq	%r13, %rbp
	leaq	(%rbp,%r12,2), %r10
	leaq	(%r10,%r12,2), %rsi
	leaq	(%rsi,%r12,2), %r9
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r14,8), %r8
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	jae	.LBB12_20
.LBB12_19:                              #   in Loop: Header=BB12_18 Depth=1
	movq	%r8, %r14
	movq	%rax, %rbx
	xorl	%edx, %edx
.LBB12_26:                              # %for.body55.us.preheader
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-120(%rsp), %rcx                # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	subl	%edx, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
	movl	208(%rsp), %eax
	jmp	.LBB12_27
	.p2align	4, 0x90
.LBB12_29:                              # %for.body55.us
                                        #   in Loop: Header=BB12_27 Depth=2
	movzwl	(%r14,%rdi,2), %r11d
	addl	%r11d, %r8d
	incl	%r8d
	shrl	%r8d
	movw	%r8w, (%r14,%rdi,2)
	incq	%rdi
	addq	$-2, %rdx
	cmpl	%edi, %ecx
	je	.LBB12_30
.LBB12_27:                              # %for.body55.us
                                        #   Parent Loop BB12_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbx,%rdi,2), %r8d
	movzwl	(%r9,%rdi,2), %r11d
	addl	%r8d, %r11d
	movzwl	(%r13,%rdi,2), %r8d
	movzwl	(%rsi,%rdi,2), %r15d
	addl	%r8d, %r15d
	leal	(%r15,%r15,4), %r8d
	subl	%r8d, %r11d
	movzwl	(%rbp,%rdi,2), %r8d
	movzwl	(%r10,%rdi,2), %r15d
	addl	%r8d, %r15d
	leal	(%r15,%r15,4), %r8d
	leal	(%r11,%r8,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	movl	$0, %r11d
	cmovlel	%r11d, %r8d
	cmpl	%eax, %r8d
	jl	.LBB12_29
# %bb.28:                               # %for.body55.us
                                        #   in Loop: Header=BB12_27 Depth=2
	movl	%eax, %r8d
	jmp	.LBB12_29
	.p2align	4, 0x90
.LBB12_20:                              # %vector.memcheck241
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-88(%rsp), %rbx                 # 8-byte Reload
	leaq	(%r8,%rbx), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	%rax, %rdx
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %rdi
	movq	%rdi, %xmm0
	movq	-24(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	movq	%rdx, %xmm1
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, %xmm2
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rdi
	movq	%r11, %xmm3
	leaq	(%rax,%rbx), %rdx
	movq	%r8, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%rbp, %xmm1
	movq	%r10, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%r13, %xmm1
	movq	%rsi, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm8, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdi, %r8
	setb	%dil
	cmpq	%rcx, %r9
	setb	%r11b
	cmpq	%rdx, %r8
	setb	%dl
	cmpq	%rcx, %rax
	setb	%cl
	movmskps	%xmm5, %ebx
	testl	%ebx, %ebx
	jne	.LBB12_19
# %bb.21:                               # %vector.memcheck241
                                        #   in Loop: Header=BB12_18 Depth=1
	andb	%r11b, %dil
	jne	.LBB12_19
# %bb.22:                               # %vector.memcheck241
                                        #   in Loop: Header=BB12_18 Depth=1
	andb	%cl, %dl
	jne	.LBB12_19
# %bb.23:                               # %vector.ph274
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r8,%rcx), %r14
	addq	%rcx, %r9
	addq	%rcx, %rsi
	addq	%rcx, %r10
	addq	%rcx, %rbp
	addq	%rcx, %r13
	leaq	(%rax,%rcx), %rbx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	96(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r12
	movq	88(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r11
	movq	80(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi), %r15
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB12_24:                              # %vector.body293
                                        #   Parent Loop BB12_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%rdi), %xmm4
	movdqu	16(%rax,%rdi), %xmm2
	movdqu	32(%rax,%rdi), %xmm1
	movdqu	48(%rax,%rdi), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm14, %xmm5           # xmm5 = xmm5[4],xmm14[4],xmm5[5],xmm14[5],xmm5[6],xmm14[6],xmm5[7],xmm14[7]
	punpcklwd	%xmm14, %xmm4           # xmm4 = xmm4[0],xmm14[0],xmm4[1],xmm14[1],xmm4[2],xmm14[2],xmm4[3],xmm14[3]
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm14, %xmm12          # xmm12 = xmm12[4],xmm14[4],xmm12[5],xmm14[5],xmm12[6],xmm14[6],xmm12[7],xmm14[7]
	punpcklwd	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1],xmm2[2],xmm14[2],xmm2[3],xmm14[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm14, %xmm13          # xmm13 = xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklwd	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1],xmm1[2],xmm14[2],xmm1[3],xmm14[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm14, %xmm3           # xmm3 = xmm3[4],xmm14[4],xmm3[5],xmm14[5],xmm3[6],xmm14[6],xmm3[7],xmm14[7]
	punpcklwd	%xmm14, %xmm0           # xmm0 = xmm0[0],xmm14[0],xmm0[1],xmm14[1],xmm0[2],xmm14[2],xmm0[3],xmm14[3]
	movdqu	-48(%r15,%rdi), %xmm9
	movdqu	-32(%r15,%rdi), %xmm8
	movdqu	-16(%r15,%rdi), %xmm10
	movdqu	(%r15,%rdi), %xmm6
	movdqa	%xmm9, %xmm7
	punpckhwd	.LCPI12_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, -80(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI12_3(%rip), %xmm9  # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm11
	punpckhwd	.LCPI12_3(%rip), %xmm11 # xmm11 = xmm11[4],mem[4],xmm11[5],mem[5],xmm11[6],mem[6],xmm11[7],mem[7]
	paddd	%xmm12, %xmm11
	punpcklwd	.LCPI12_3(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3]
	paddd	%xmm2, %xmm8
	movdqa	%xmm10, %xmm12
	punpckhwd	.LCPI12_3(%rip), %xmm12 # xmm12 = xmm12[4],mem[4],xmm12[5],mem[5],xmm12[6],mem[6],xmm12[7],mem[7]
	paddd	%xmm13, %xmm12
	punpcklwd	.LCPI12_3(%rip), %xmm10 # xmm10 = xmm10[0],mem[0],xmm10[1],mem[1],xmm10[2],mem[2],xmm10[3],mem[3]
	paddd	%xmm1, %xmm10
	movdqa	%xmm6, %xmm13
	punpckhwd	.LCPI12_3(%rip), %xmm13 # xmm13 = xmm13[4],mem[4],xmm13[5],mem[5],xmm13[6],mem[6],xmm13[7],mem[7]
	paddd	%xmm3, %xmm13
	punpcklwd	.LCPI12_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	movdqu	-48(%rdx,%rdi), %xmm0
	movdqu	-32(%rdx,%rdi), %xmm4
	movdqu	-16(%rdx,%rdi), %xmm7
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI12_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpckhwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm4, %xmm2
	punpcklwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	punpckhwd	.LCPI12_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm7, %xmm5
	punpcklwd	.LCPI12_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	movdqu	-48(%r11,%rdi), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	.LCPI12_3(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r11,%rdi), %xmm1
	punpckhwd	.LCPI12_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm14
	punpcklwd	.LCPI12_3(%rip), %xmm14 # xmm14 = xmm14[0],mem[0],xmm14[1],mem[1],xmm14[2],mem[2],xmm14[3],mem[3]
	paddd	%xmm2, %xmm14
	movdqu	-16(%r11,%rdi), %xmm6
	punpckhwd	.LCPI12_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm4
	punpcklwd	.LCPI12_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm5, %xmm4
	movdqu	(%rdx,%rdi), %xmm0
	punpckhwd	.LCPI12_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	punpckhwd	.LCPI12_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	paddd	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	punpcklwd	.LCPI12_3(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	movdqu	(%r11,%rdi), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI12_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm7, %xmm5
	punpckhwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpckhwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-80(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm11
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm13
	movdqu	-48(%rcx,%rdi), %xmm2
	movdqu	-32(%rcx,%rdi), %xmm1
	movdqu	-16(%rcx,%rdi), %xmm3
	movdqa	%xmm2, %xmm0
	punpckhwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpcklwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	%xmm1, %xmm6
	punpckhwd	.LCPI12_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	punpcklwd	.LCPI12_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm3, %xmm4
	punpckhwd	.LCPI12_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqu	-48(%r12,%rdi), %xmm5
	movdqa	%xmm5, %xmm15
	punpckhwd	.LCPI12_3(%rip), %xmm15 # xmm15 = xmm15[4],mem[4],xmm15[5],mem[5],xmm15[6],mem[6],xmm15[7],mem[7]
	paddd	%xmm0, %xmm15
	movdqu	-32(%r12,%rdi), %xmm0
	punpcklwd	.LCPI12_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm14
	punpckhwd	.LCPI12_3(%rip), %xmm14 # xmm14 = xmm14[4],mem[4],xmm14[5],mem[5],xmm14[6],mem[6],xmm14[7],mem[7]
	paddd	%xmm6, %xmm14
	movdqu	-16(%r12,%rdi), %xmm2
	punpcklwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhwd	.LCPI12_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqu	(%rcx,%rdi), %xmm6
	punpcklwd	.LCPI12_3(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpcklwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm3, %xmm2
	movdqa	%xmm6, %xmm7
	punpckhwd	.LCPI12_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqu	(%r12,%rdi), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhwd	.LCPI12_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm7, %xmm3
	punpcklwd	.LCPI12_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpcklwd	.LCPI12_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm6, %xmm4
	pshufd	$245, %xmm15, %xmm6             # xmm6 = xmm15[1,1,3,3]
	movdqa	.LCPI12_0(%rip), %xmm7          # xmm7 = [20,20,20,20]
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1]
	movdqa	%xmm15, 16(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm15             # xmm15 = xmm5[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm15           # xmm15 = xmm15[0],xmm5[0],xmm15[1],xmm5[1]
	pshufd	$245, %xmm14, %xmm5             # xmm5 = xmm14[1,1,3,3]
	pmuludq	%xmm7, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm14           # xmm14 = xmm14[0],xmm5[0],xmm14[1],xmm5[1]
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$245, %xmm2, %xmm6              # xmm6 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movdqa	.LCPI12_1(%rip), %xmm4          # xmm4 = [16,16,16,16]
	movdqa	-80(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm4, %xmm7
	paddd	16(%rsp), %xmm7                 # 16-byte Folded Reload
	paddd	%xmm4, %xmm9
	paddd	%xmm15, %xmm9
	paddd	%xmm4, %xmm11
	paddd	%xmm14, %xmm11
	paddd	%xmm4, %xmm8
	paddd	%xmm5, %xmm8
	paddd	%xmm4, %xmm12
	paddd	%xmm0, %xmm12
	paddd	%xmm4, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm4, %xmm13
	paddd	%xmm2, %xmm13
	movdqu	(%r8,%rdi), %xmm2
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	%xmm3, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm7
	psrad	$5, %xmm8
	psrad	$5, %xmm11
	psrad	$5, %xmm10
	psrad	$5, %xmm12
	psrad	$5, %xmm6
	psrad	$5, %xmm13
	movdqa	%xmm7, %xmm3
	pcmpgtd	.LCPI12_3(%rip), %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm9, %xmm5
	pcmpgtd	.LCPI12_3(%rip), %xmm5
	pand	%xmm9, %xmm5
	movdqa	%xmm11, %xmm0
	pcmpgtd	.LCPI12_3(%rip), %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm8, %xmm4
	pcmpgtd	.LCPI12_3(%rip), %xmm4
	pand	%xmm8, %xmm4
	movdqa	%xmm12, %xmm14
	pcmpgtd	.LCPI12_3(%rip), %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm10, %xmm1
	pcmpgtd	.LCPI12_3(%rip), %xmm1
	pand	%xmm10, %xmm1
	movdqa	%xmm13, %xmm7
	pcmpgtd	.LCPI12_3(%rip), %xmm7
	pand	%xmm13, %xmm7
	movdqa	%xmm7, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm6, %xmm15
	pcmpgtd	.LCPI12_3(%rip), %xmm15
	pand	%xmm6, %xmm15
	movdqa	128(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm10
	pcmpgtd	%xmm5, %xmm10
	pand	%xmm10, %xmm5
	pandn	%xmm6, %xmm10
	por	%xmm5, %xmm10
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI12_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm5, %xmm10
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm6, %xmm9
	por	%xmm3, %xmm9
	movdqu	16(%r8,%rdi), %xmm3
	punpckhwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm2, %xmm9
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm6, %xmm7
	por	%xmm4, %xmm7
	movdqa	%xmm3, %xmm2
	punpcklwd	.LCPI12_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm11
	pcmpgtd	%xmm0, %xmm11
	pand	%xmm11, %xmm0
	pandn	%xmm6, %xmm11
	por	%xmm0, %xmm11
	movdqu	32(%r8,%rdi), %xmm0
	punpckhwd	.LCPI12_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm3, %xmm11
	movdqa	%xmm6, %xmm8
	pcmpgtd	%xmm1, %xmm8
	pand	%xmm8, %xmm1
	pandn	%xmm6, %xmm8
	por	%xmm1, %xmm8
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI12_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm6, %xmm13
	pcmpgtd	%xmm14, %xmm13
	pand	%xmm13, %xmm14
	pandn	%xmm6, %xmm13
	por	%xmm14, %xmm13
	pcmpeqd	%xmm2, %xmm2
	movdqu	48(%r8,%rdi), %xmm1
	punpckhwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	paddd	%xmm0, %xmm13
	movdqa	%xmm6, %xmm12
	pcmpgtd	%xmm15, %xmm12
	pand	%xmm12, %xmm15
	pandn	%xmm6, %xmm12
	por	%xmm15, %xmm12
	movdqa	%xmm1, %xmm0
	punpcklwd	.LCPI12_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm0, %xmm12
	movdqa	%xmm6, %xmm0
	movdqa	-112(%rsp), %xmm3               # 16-byte Reload
	pcmpgtd	%xmm3, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm6, %xmm0
	por	%xmm3, %xmm0
	pxor	%xmm14, %xmm14
	punpckhwd	%xmm14, %xmm1           # xmm1 = xmm1[4],xmm14[4],xmm1[5],xmm14[5],xmm1[6],xmm14[6],xmm1[7],xmm14[7]
	paddd	%xmm1, %xmm0
	psubd	%xmm2, %xmm10
	psubd	%xmm2, %xmm9
	pslld	$15, %xmm9
	psrad	$16, %xmm9
	pslld	$15, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm9, %xmm10
	psubd	%xmm2, %xmm7
	psubd	%xmm2, %xmm11
	pslld	$15, %xmm11
	psrad	$16, %xmm11
	pslld	$15, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm11, %xmm7
	psubd	%xmm2, %xmm8
	psubd	%xmm2, %xmm13
	pslld	$15, %xmm13
	psrad	$16, %xmm13
	pslld	$15, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm13, %xmm8
	psubd	%xmm2, %xmm12
	psubd	%xmm2, %xmm0
	pslld	$15, %xmm0
	psrad	$16, %xmm0
	pslld	$15, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm0, %xmm12
	movdqu	%xmm10, (%r8,%rdi)
	movdqu	%xmm7, 16(%r8,%rdi)
	movdqu	%xmm8, 32(%r8,%rdi)
	movdqu	%xmm12, 48(%r8,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, 56(%rsp)                  # 8-byte Folded Reload
	jne	.LBB12_24
# %bb.25:                               # %middle.block271
                                        #   in Loop: Header=BB12_18 Depth=1
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %edx
	cmpl	-8(%rsp), %eax                  # 4-byte Folded Reload
	movq	-48(%rsp), %r12                 # 8-byte Reload
	movdqa	.LCPI12_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	je	.LBB12_31
	jmp	.LBB12_26
.LBB12_32:                              # %for.end91
	addq	$152, %rsp
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
.Lfunc_end12:
	.size	get_luma_13, .Lfunc_end12-get_luma_13
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_31
.LCPI13_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI13_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI13_2:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI13_3:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	get_luma_31,@function
get_luma_31:                            # @get_luma_31
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB13_31
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	jle	.LBB13_31
# %bb.2:                                # %for.body.us.preheader
	movl	%r9d, -40(%rsp)                 # 4-byte Spill
	movl	208(%rsp), %r14d
	movslq	%r8d, %r8
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	(%r8,%rcx), %rdx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	addq	%rdx, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rcx), %esi
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	addl	%eax, %eax
	andl	$-64, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	pxor	%xmm10, %xmm10
	xorl	%r13d, %r13d
	movdqa	%xmm9, 128(%rsp)                # 16-byte Spill
	jmp	.LBB13_3
	.p2align	4, 0x90
.LBB13_14:                              # %for.cond9.for.inc31_crit_edge.us
                                        #   in Loop: Header=BB13_3 Depth=1
	incq	%r13
	cmpq	24(%rsp), %r13                  # 8-byte Folded Reload
	je	.LBB13_15
.LBB13_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_8 Depth 2
                                        #     Child Loop BB13_11 Depth 2
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r13,8), %rdx
	leaq	(%rdx,%r8,2), %rax
	leaq	(%rdx,%r8,2), %rbp
	addq	$-4, %rbp
	leaq	-2(%rdx,%r8,2), %rdi
	leaq	4(%rdx,%r8,2), %rbx
	leaq	(%rdx,%r8,2), %r9
	addq	$6, %r9
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r13,8), %rcx
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	jb	.LBB13_4
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-8(%rsp), %r10                  # 8-byte Reload
	addq	%r10, %rdx
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB13_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	addq	$2, %rdx
	cmpq	%rdx, %rbp
	jae	.LBB13_7
.LBB13_4:                               #   in Loop: Header=BB13_3 Depth=1
	movq	%rcx, %rdx
	movq	%rax, %r10
	xorl	%ecx, %ecx
.LBB13_10:                              # %for.body11.us.preheader
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	jmp	.LBB13_11
	.p2align	4, 0x90
.LBB13_13:                              # %for.body11.us
                                        #   in Loop: Header=BB13_11 Depth=2
	movw	%r11w, (%rdx,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %eax
	je	.LBB13_14
.LBB13_11:                              # %for.body11.us
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rbp,%rcx,2), %r11d
	movzwl	(%r9,%rcx,2), %r14d
	addl	%r11d, %r14d
	movzwl	(%rdi,%rcx,2), %r11d
	movzwl	(%rbx,%rcx,2), %r15d
	addl	%r11d, %r15d
	leal	(%r15,%r15,4), %r11d
	subl	%r11d, %r14d
	movzwl	(%r10,%rcx,2), %r11d
	movzwl	2(%r10,%rcx,2), %r15d
	addl	%r11d, %r15d
	leal	(%r15,%r15,4), %r11d
	leal	(%r14,%r11,4), %r11d
	addl	$16, %r11d
	movl	208(%rsp), %r14d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r12d, %r11d
	cmpl	%r14d, %r11d
	jl	.LBB13_13
# %bb.12:                               # %for.body11.us
                                        #   in Loop: Header=BB13_11 Depth=2
	movl	%r14d, %r11d
	jmp	.LBB13_13
	.p2align	4, 0x90
.LBB13_7:                               # %vector.ph
                                        #   in Loop: Header=BB13_3 Depth=1
	leaq	(%rcx,%rsi), %rdx
	addq	%rsi, %r9
	addq	%rsi, %rbx
	leaq	(%rax,%rsi), %r10
	addq	%rsi, %rdi
	addq	%rsi, %rbp
	xorl	%r11d, %r11d
	movq	40(%rsp), %r15                  # 8-byte Reload
	.p2align	4, 0x90
.LBB13_8:                               # %vector.body
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rax,%r11), %xmm2
	movdqu	28(%rax,%r11), %xmm1
	movdqu	44(%rax,%r11), %xmm0
	movdqu	-4(%rax,%r11), %xmm4
	movdqu	-2(%rax,%r11), %xmm12
	movdqa	%xmm4, %xmm9
	punpckhwd	%xmm10, %xmm9           # xmm9 = xmm9[4],xmm10[4],xmm9[5],xmm10[5],xmm9[6],xmm10[6],xmm9[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	pxor	%xmm8, %xmm8
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movdqu	6(%rax,%r11), %xmm7
	movdqu	22(%rax,%r11), %xmm6
	movdqu	38(%rax,%r11), %xmm13
	movdqu	54(%rax,%r11), %xmm5
	movdqa	%xmm7, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm9, %xmm14
	movdqa	%xmm14, (%rsp)                  # 16-byte Spill
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	paddd	%xmm4, %xmm7
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm8, %xmm9            # xmm9 = xmm9[4],xmm8[4],xmm9[5],xmm8[5],xmm9[6],xmm8[6],xmm9[7],xmm8[7]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	paddd	%xmm2, %xmm6
	movdqa	%xmm13, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm1, %xmm13
	movdqa	%xmm13, -112(%rsp)              # 16-byte Spill
	movdqa	%xmm5, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	movdqu	14(%rax,%r11), %xmm4
	movdqu	30(%rax,%r11), %xmm3
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	movdqa	%xmm4, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	punpckhwd	%xmm8, %xmm4            # xmm4 = xmm4[4],xmm8[4],xmm4[5],xmm8[5],xmm4[6],xmm8[6],xmm4[7],xmm8[7]
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	movdqu	4(%rax,%r11), %xmm1
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rax,%r11), %xmm2
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	paddd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm8, %xmm12           # xmm12 = xmm12[0],xmm8[0],xmm12[1],xmm8[1],xmm12[2],xmm8[2],xmm12[3],xmm8[3]
	paddd	%xmm14, %xmm12
	movdqu	36(%rax,%r11), %xmm5
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm4, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rax,%r11), %xmm0
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	paddd	%xmm3, %xmm5
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqu	52(%rax,%r11), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	paddd	%xmm4, %xmm15
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	(%rax,%r11), %xmm13
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, (%rsp)                   # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rax,%r11), %xmm4
	psubd	%xmm0, %xmm6
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rax,%r11), %xmm2
	movdqu	32(%rax,%r11), %xmm1
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm4, %xmm12
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	paddd	%xmm0, %xmm12
	movdqu	18(%rax,%r11), %xmm0
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	paddd	%xmm13, %xmm4
	movdqa	%xmm0, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm3, %xmm14
	movdqu	34(%rax,%r11), %xmm3
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm5, %xmm2
	movdqu	48(%rax,%r11), %xmm5
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	paddd	%xmm1, %xmm3
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	movdqu	50(%rax,%r11), %xmm13
	movdqa	%xmm13, %xmm15
	punpckhwd	%xmm8, %xmm15           # xmm15 = xmm15[4],xmm8[4],xmm15[5],xmm8[5],xmm15[6],xmm8[6],xmm15[7],xmm8[7]
	paddd	%xmm1, %xmm15
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm5, %xmm13
	pshufd	$245, %xmm12, %xmm1             # xmm1 = xmm12[1,1,3,3]
	movdqa	.LCPI13_0(%rip), %xmm5          # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm12, 48(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm4, %xmm12             # xmm12 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm12            # xmm12 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm3             # xmm3 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm15            # xmm15 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	movdqa	.LCPI13_1(%rip), %xmm13         # xmm13 = [16,16,16,16]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm5             # xmm5 = xmm15[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	(%rsp), %xmm5                   # 16-byte Reload
	paddd	%xmm13, %xmm5
	paddd	48(%rsp), %xmm5                 # 16-byte Folded Reload
	paddd	%xmm13, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm13, %xmm9
	paddd	%xmm12, %xmm9
	paddd	%xmm13, %xmm6
	paddd	%xmm14, %xmm6
	paddd	%xmm13, %xmm10
	paddd	%xmm0, %xmm10
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	paddd	%xmm13, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm13, %xmm11
	paddd	%xmm3, %xmm11
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm13, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm7
	psrad	$5, %xmm5
	psrad	$5, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm8, %xmm12
	pand	%xmm5, %xmm12
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm7, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm9, %xmm1
	movdqa	128(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm8, %xmm6
	pand	%xmm10, %xmm6
	pxor	%xmm10, %xmm10
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm10, %xmm8
	pand	%xmm0, %xmm8
	movdqa	%xmm11, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm10, %xmm3
	pand	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm9, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm9, %xmm2
	pcmpgtd	%xmm12, %xmm2
	pand	%xmm2, %xmm12
	pandn	%xmm9, %xmm2
	por	%xmm12, %xmm2
	movdqa	%xmm9, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm5, %xmm7
	pandn	%xmm9, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm9, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm8, %xmm6
	pandn	%xmm9, %xmm8
	por	%xmm6, %xmm8
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm3, %xmm6
	pand	%xmm6, %xmm3
	pandn	%xmm9, %xmm6
	por	%xmm3, %xmm6
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm9, %xmm3
	por	%xmm0, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm7, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm8, %xmm1
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm3, %xmm6
	movdqu	%xmm4, (%rcx,%r11)
	movdqu	%xmm5, 16(%rcx,%r11)
	movdqu	%xmm1, 32(%rcx,%r11)
	movdqu	%xmm6, 48(%rcx,%r11)
	addq	$64, %r11
	cmpq	%r11, %r15
	jne	.LBB13_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	cmpl	-16(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB13_14
	jmp	.LBB13_10
.LBB13_15:                              # %for.end33
	cmpl	$0, -48(%rsp)                   # 4-byte Folded Reload
	movl	-40(%rsp), %eax                 # 4-byte Reload
	jle	.LBB13_31
# %bb.16:                               # %for.body41.lr.ph
	movslq	%eax, %rbx
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rax
	negq	%rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rax), %rax
	leaq	(%rax,%r8,2), %r9
	addq	$2, %r9
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	leaq	2(%rsi,%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx), %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	leaq	(,%rbx,4), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	leaq	(,%rbx,8), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rsi), %rcx
	leaq	2(%rcx,%rcx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	addq	$2, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	leaq	48(,%rbx,2), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	48(,%rbx,4), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	48(%rax,%rax,2), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	48(%rax,%rax,4), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movdqa	.LCPI13_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	pxor	%xmm14, %xmm14
	leaq	48(,%rbx,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	xorl	%r11d, %r11d
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB13_17
	.p2align	4, 0x90
.LBB13_29:                              # %for.cond53.for.end87_crit_edge.us.loopexit
                                        #   in Loop: Header=BB13_17 Depth=1
	subq	%rcx, %r15
.LBB13_30:                              # %for.cond53.for.end87_crit_edge.us
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leaq	(%r15,%rax,2), %r9
	movq	48(%rsp), %r11                  # 8-byte Reload
	incq	%r11
	cmpq	24(%rsp), %r11                  # 8-byte Folded Reload
	je	.LBB13_31
.LBB13_17:                              # %for.body41.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_23 Depth 2
                                        #     Child Loop BB13_26 Depth 2
	leaq	(%r9,%rbx,2), %r15
	leaq	(%r15,%rbx,2), %r12
	leaq	(%r12,%rbx,2), %r13
	leaq	(,%rbx,2), %rbp
	addq	%r13, %rbp
	leaq	(,%rbx,2), %rsi
	addq	%rbp, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r11,8), %r8
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	jae	.LBB13_19
.LBB13_18:                              #   in Loop: Header=BB13_17 Depth=1
	movq	%r8, %r10
	movq	%r9, %rdi
	xorl	%ecx, %ecx
.LBB13_25:                              # %for.body56.us.preheader
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB13_26
	.p2align	4, 0x90
.LBB13_28:                              # %for.body56.us
                                        #   in Loop: Header=BB13_26 Depth=2
	movzwl	(%r10,%rdx,2), %r9d
	addl	%r9d, %r8d
	incl	%r8d
	shrl	%r8d
	movw	%r8w, (%r10,%rdx,2)
	incq	%rdx
	addq	$-2, %rcx
	cmpl	%edx, %eax
	je	.LBB13_29
.LBB13_26:                              # %for.body56.us
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi,%rdx,2), %r8d
	movzwl	(%rsi,%rdx,2), %r9d
	addl	%r8d, %r9d
	movzwl	(%r15,%rdx,2), %r8d
	movzwl	(%rbp,%rdx,2), %r11d
	addl	%r8d, %r11d
	leal	(%r11,%r11,4), %r8d
	subl	%r8d, %r9d
	movzwl	(%r12,%rdx,2), %r8d
	movzwl	(%r13,%rdx,2), %r11d
	addl	%r8d, %r11d
	leal	(%r11,%r11,4), %r8d
	leal	(%r9,%r8,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	movl	$0, %r9d
	cmovlel	%r9d, %r8d
	cmpl	%r14d, %r8d
	jl	.LBB13_28
# %bb.27:                               # %for.body56.us
                                        #   in Loop: Header=BB13_26 Depth=2
	movl	%r14d, %r8d
	jmp	.LBB13_28
	.p2align	4, 0x90
.LBB13_19:                              # %vector.memcheck240
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	-88(%rsp), %r10                 # 8-byte Reload
	leaq	(%r8,%r10), %rax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	addq	%r9, %rcx
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %rdx
	movq	%rdx, %xmm0
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %rdi
	movq	%rcx, %xmm1
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r9,%rcx), %rcx
	movq	%rcx, %xmm2
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r9,%rcx), %rdx
	movq	%rdi, %xmm3
	leaq	(%r9,%r10), %rcx
	movq	%r8, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%r12, %xmm1
	movq	%r13, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%r15, %xmm1
	movq	%rbp, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm8, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdx, %r8
	setb	%dl
	cmpq	%rax, %rsi
	setb	%dil
	cmpq	%rcx, %r8
	setb	%cl
	cmpq	%rax, %r9
	setb	%al
	movmskps	%xmm5, %r10d
	testl	%r10d, %r10d
	jne	.LBB13_18
# %bb.20:                               # %vector.memcheck240
                                        #   in Loop: Header=BB13_17 Depth=1
	andb	%dil, %dl
	jne	.LBB13_18
# %bb.21:                               # %vector.memcheck240
                                        #   in Loop: Header=BB13_17 Depth=1
	andb	%al, %cl
	jne	.LBB13_18
# %bb.22:                               # %vector.ph273
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r8,%rax), %r10
	addq	%rax, %rsi
	addq	%rax, %rbp
	addq	%rax, %r13
	addq	%rax, %r12
	addq	%rax, %r15
	leaq	(%r9,%rax), %rdi
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %rdx
	movq	88(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %r11
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB13_23:                              # %vector.body292
                                        #   Parent Loop BB13_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r9,%rax), %xmm4
	movdqu	16(%r9,%rax), %xmm2
	movdqu	32(%r9,%rax), %xmm1
	movdqu	48(%r9,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm14, %xmm5           # xmm5 = xmm5[4],xmm14[4],xmm5[5],xmm14[5],xmm5[6],xmm14[6],xmm5[7],xmm14[7]
	punpcklwd	%xmm14, %xmm4           # xmm4 = xmm4[0],xmm14[0],xmm4[1],xmm14[1],xmm4[2],xmm14[2],xmm4[3],xmm14[3]
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm14, %xmm12          # xmm12 = xmm12[4],xmm14[4],xmm12[5],xmm14[5],xmm12[6],xmm14[6],xmm12[7],xmm14[7]
	punpcklwd	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1],xmm2[2],xmm14[2],xmm2[3],xmm14[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm14, %xmm13          # xmm13 = xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklwd	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1],xmm1[2],xmm14[2],xmm1[3],xmm14[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm14, %xmm3           # xmm3 = xmm3[4],xmm14[4],xmm3[5],xmm14[5],xmm3[6],xmm14[6],xmm3[7],xmm14[7]
	punpcklwd	%xmm14, %xmm0           # xmm0 = xmm0[0],xmm14[0],xmm0[1],xmm14[1],xmm0[2],xmm14[2],xmm0[3],xmm14[3]
	movdqu	-48(%rbx,%rax), %xmm9
	movdqu	-32(%rbx,%rax), %xmm8
	movdqu	-16(%rbx,%rax), %xmm10
	movdqu	(%rbx,%rax), %xmm6
	movdqa	%xmm9, %xmm7
	punpckhwd	.LCPI13_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, -80(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI13_3(%rip), %xmm9  # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm11
	punpckhwd	.LCPI13_3(%rip), %xmm11 # xmm11 = xmm11[4],mem[4],xmm11[5],mem[5],xmm11[6],mem[6],xmm11[7],mem[7]
	paddd	%xmm12, %xmm11
	punpcklwd	.LCPI13_3(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3]
	paddd	%xmm2, %xmm8
	movdqa	%xmm10, %xmm12
	punpckhwd	.LCPI13_3(%rip), %xmm12 # xmm12 = xmm12[4],mem[4],xmm12[5],mem[5],xmm12[6],mem[6],xmm12[7],mem[7]
	paddd	%xmm13, %xmm12
	punpcklwd	.LCPI13_3(%rip), %xmm10 # xmm10 = xmm10[0],mem[0],xmm10[1],mem[1],xmm10[2],mem[2],xmm10[3],mem[3]
	paddd	%xmm1, %xmm10
	movdqa	%xmm6, %xmm13
	punpckhwd	.LCPI13_3(%rip), %xmm13 # xmm13 = xmm13[4],mem[4],xmm13[5],mem[5],xmm13[6],mem[6],xmm13[7],mem[7]
	paddd	%xmm3, %xmm13
	punpcklwd	.LCPI13_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	movdqu	-48(%rdx,%rax), %xmm0
	movdqu	-32(%rdx,%rax), %xmm4
	movdqu	-16(%rdx,%rax), %xmm7
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI13_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpckhwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm4, %xmm2
	punpcklwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	punpckhwd	.LCPI13_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm7, %xmm5
	punpcklwd	.LCPI13_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	movdqu	-48(%r11,%rax), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	.LCPI13_3(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r11,%rax), %xmm1
	punpckhwd	.LCPI13_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm14
	punpcklwd	.LCPI13_3(%rip), %xmm14 # xmm14 = xmm14[0],mem[0],xmm14[1],mem[1],xmm14[2],mem[2],xmm14[3],mem[3]
	paddd	%xmm2, %xmm14
	movdqu	-16(%r11,%rax), %xmm6
	punpckhwd	.LCPI13_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm4
	punpcklwd	.LCPI13_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm5, %xmm4
	movdqu	(%rdx,%rax), %xmm0
	punpckhwd	.LCPI13_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	punpckhwd	.LCPI13_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	paddd	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	punpcklwd	.LCPI13_3(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	movdqu	(%r11,%rax), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI13_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm7, %xmm5
	punpckhwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpckhwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-80(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm11
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm13
	movdqu	-48(%rcx,%rax), %xmm2
	movdqu	-32(%rcx,%rax), %xmm1
	movdqu	-16(%rcx,%rax), %xmm3
	movdqa	%xmm2, %xmm0
	punpckhwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpcklwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	%xmm1, %xmm6
	punpckhwd	.LCPI13_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	punpcklwd	.LCPI13_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm3, %xmm4
	punpckhwd	.LCPI13_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqu	-48(%r14,%rax), %xmm5
	movdqa	%xmm5, %xmm15
	punpckhwd	.LCPI13_3(%rip), %xmm15 # xmm15 = xmm15[4],mem[4],xmm15[5],mem[5],xmm15[6],mem[6],xmm15[7],mem[7]
	paddd	%xmm0, %xmm15
	movdqu	-32(%r14,%rax), %xmm0
	punpcklwd	.LCPI13_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm14
	punpckhwd	.LCPI13_3(%rip), %xmm14 # xmm14 = xmm14[4],mem[4],xmm14[5],mem[5],xmm14[6],mem[6],xmm14[7],mem[7]
	paddd	%xmm6, %xmm14
	movdqu	-16(%r14,%rax), %xmm2
	punpcklwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhwd	.LCPI13_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqu	(%rcx,%rax), %xmm6
	punpcklwd	.LCPI13_3(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpcklwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm3, %xmm2
	movdqa	%xmm6, %xmm7
	punpckhwd	.LCPI13_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqu	(%r14,%rax), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhwd	.LCPI13_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm7, %xmm3
	punpcklwd	.LCPI13_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpcklwd	.LCPI13_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm6, %xmm4
	pshufd	$245, %xmm15, %xmm6             # xmm6 = xmm15[1,1,3,3]
	movdqa	.LCPI13_0(%rip), %xmm7          # xmm7 = [20,20,20,20]
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1]
	movdqa	%xmm15, (%rsp)                  # 16-byte Spill
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm15             # xmm15 = xmm5[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm15           # xmm15 = xmm15[0],xmm5[0],xmm15[1],xmm5[1]
	pshufd	$245, %xmm14, %xmm5             # xmm5 = xmm14[1,1,3,3]
	pmuludq	%xmm7, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm14           # xmm14 = xmm14[0],xmm5[0],xmm14[1],xmm5[1]
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$245, %xmm2, %xmm6              # xmm6 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movdqa	.LCPI13_1(%rip), %xmm4          # xmm4 = [16,16,16,16]
	movdqa	-80(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm4, %xmm7
	paddd	(%rsp), %xmm7                   # 16-byte Folded Reload
	paddd	%xmm4, %xmm9
	paddd	%xmm15, %xmm9
	paddd	%xmm4, %xmm11
	paddd	%xmm14, %xmm11
	paddd	%xmm4, %xmm8
	paddd	%xmm5, %xmm8
	paddd	%xmm4, %xmm12
	paddd	%xmm0, %xmm12
	paddd	%xmm4, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm4, %xmm13
	paddd	%xmm2, %xmm13
	movdqu	(%r8,%rax), %xmm2
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	%xmm3, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm7
	psrad	$5, %xmm8
	psrad	$5, %xmm11
	psrad	$5, %xmm10
	psrad	$5, %xmm12
	psrad	$5, %xmm6
	psrad	$5, %xmm13
	movdqa	%xmm7, %xmm3
	pcmpgtd	.LCPI13_3(%rip), %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm9, %xmm5
	pcmpgtd	.LCPI13_3(%rip), %xmm5
	pand	%xmm9, %xmm5
	movdqa	%xmm11, %xmm0
	pcmpgtd	.LCPI13_3(%rip), %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm8, %xmm4
	pcmpgtd	.LCPI13_3(%rip), %xmm4
	pand	%xmm8, %xmm4
	movdqa	%xmm12, %xmm14
	pcmpgtd	.LCPI13_3(%rip), %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm10, %xmm1
	pcmpgtd	.LCPI13_3(%rip), %xmm1
	pand	%xmm10, %xmm1
	movdqa	%xmm13, %xmm7
	pcmpgtd	.LCPI13_3(%rip), %xmm7
	pand	%xmm13, %xmm7
	movdqa	%xmm7, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm6, %xmm15
	pcmpgtd	.LCPI13_3(%rip), %xmm15
	pand	%xmm6, %xmm15
	movdqa	128(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm10
	pcmpgtd	%xmm5, %xmm10
	pand	%xmm10, %xmm5
	pandn	%xmm6, %xmm10
	por	%xmm5, %xmm10
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI13_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm5, %xmm10
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm6, %xmm9
	por	%xmm3, %xmm9
	movdqu	16(%r8,%rax), %xmm3
	punpckhwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm2, %xmm9
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm6, %xmm7
	por	%xmm4, %xmm7
	movdqa	%xmm3, %xmm2
	punpcklwd	.LCPI13_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm11
	pcmpgtd	%xmm0, %xmm11
	pand	%xmm11, %xmm0
	pandn	%xmm6, %xmm11
	por	%xmm0, %xmm11
	movdqu	32(%r8,%rax), %xmm0
	punpckhwd	.LCPI13_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm3, %xmm11
	movdqa	%xmm6, %xmm8
	pcmpgtd	%xmm1, %xmm8
	pand	%xmm8, %xmm1
	pandn	%xmm6, %xmm8
	por	%xmm1, %xmm8
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI13_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm6, %xmm13
	pcmpgtd	%xmm14, %xmm13
	pand	%xmm13, %xmm14
	pandn	%xmm6, %xmm13
	por	%xmm14, %xmm13
	pcmpeqd	%xmm2, %xmm2
	movdqu	48(%r8,%rax), %xmm1
	punpckhwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	paddd	%xmm0, %xmm13
	movdqa	%xmm6, %xmm12
	pcmpgtd	%xmm15, %xmm12
	pand	%xmm12, %xmm15
	pandn	%xmm6, %xmm12
	por	%xmm15, %xmm12
	movdqa	%xmm1, %xmm0
	punpcklwd	.LCPI13_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm0, %xmm12
	movdqa	%xmm6, %xmm0
	movdqa	-112(%rsp), %xmm3               # 16-byte Reload
	pcmpgtd	%xmm3, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm6, %xmm0
	por	%xmm3, %xmm0
	pxor	%xmm14, %xmm14
	punpckhwd	%xmm14, %xmm1           # xmm1 = xmm1[4],xmm14[4],xmm1[5],xmm14[5],xmm1[6],xmm14[6],xmm1[7],xmm14[7]
	paddd	%xmm1, %xmm0
	psubd	%xmm2, %xmm10
	psubd	%xmm2, %xmm9
	pslld	$15, %xmm9
	psrad	$16, %xmm9
	pslld	$15, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm9, %xmm10
	psubd	%xmm2, %xmm7
	psubd	%xmm2, %xmm11
	pslld	$15, %xmm11
	psrad	$16, %xmm11
	pslld	$15, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm11, %xmm7
	psubd	%xmm2, %xmm8
	psubd	%xmm2, %xmm13
	pslld	$15, %xmm13
	psrad	$16, %xmm13
	pslld	$15, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm13, %xmm8
	psubd	%xmm2, %xmm12
	psubd	%xmm2, %xmm0
	pslld	$15, %xmm0
	psrad	$16, %xmm0
	pslld	$15, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm0, %xmm12
	movdqu	%xmm10, (%r8,%rax)
	movdqu	%xmm7, 16(%r8,%rax)
	movdqu	%xmm8, 32(%r8,%rax)
	movdqu	%xmm12, 48(%r8,%rax)
	addq	$64, %rax
	cmpq	%rax, 40(%rsp)                  # 8-byte Folded Reload
	jne	.LBB13_23
# %bb.24:                               # %middle.block270
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	cmpl	-16(%rsp), %eax                 # 4-byte Folded Reload
	movl	208(%rsp), %r14d
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movdqa	.LCPI13_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	je	.LBB13_30
	jmp	.LBB13_25
.LBB13_31:                              # %for.end92
	addq	$152, %rsp
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
.Lfunc_end13:
	.size	get_luma_31, .Lfunc_end13-get_luma_31
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_luma_33
.LCPI14_0:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
.LCPI14_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI14_2:
	.quad	-9223372034707292160            # 0x8000000080000000
	.quad	-9223372034707292160            # 0x8000000080000000
.LCPI14_3:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	get_luma_33,@function
get_luma_33:                            # @get_luma_33
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	jle	.LBB14_31
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, -120(%rsp)                  # 4-byte Folded Reload
	jle	.LBB14_31
# %bb.2:                                # %for.body.us.preheader
	movl	%r9d, -48(%rsp)                 # 4-byte Spill
	movslq	%r8d, %r8
	movl	%edx, -56(%rsp)                 # 4-byte Spill
	movl	%edx, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rax                # 8-byte Reload
	leal	-1(%rax), %ecx
	leaq	(%r8,%rcx), %rdx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	addq	%rcx, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	addq	%rdx, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	%eax, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	addl	%ecx, %ecx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movd	208(%rsp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	addl	%eax, %eax
	andl	$-64, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$1, %r12d
	xorl	%r13d, %r13d
	pxor	%xmm10, %xmm10
	xorl	%ebp, %ebp
	movdqa	%xmm9, 128(%rsp)                # 16-byte Spill
	jmp	.LBB14_3
	.p2align	4, 0x90
.LBB14_14:                              # %for.cond9.for.inc31_crit_edge.us
                                        #   in Loop: Header=BB14_3 Depth=1
	incq	%r12
	incq	%rbp
	cmpq	24(%rsp), %rbp                  # 8-byte Folded Reload
	je	.LBB14_15
.LBB14_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_8 Depth 2
                                        #     Child Loop BB14_11 Depth 2
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r12,8), %r10
	leaq	(%r10,%r8,2), %rax
	leaq	(%r10,%r8,2), %rdi
	addq	$-4, %rdi
	leaq	-2(%r10,%r8,2), %rbx
	leaq	4(%r10,%r8,2), %r9
	leaq	(%r10,%r8,2), %rdx
	addq	$6, %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rbp,8), %rcx
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	jb	.LBB14_4
# %bb.5:                                # %vector.memcheck
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	addq	%rsi, %r10
	addq	$8, %r10
	cmpq	%r10, %rcx
	jae	.LBB14_7
# %bb.6:                                # %vector.memcheck
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rcx,%rsi), %r10
	addq	$2, %r10
	cmpq	%r10, %rdi
	jae	.LBB14_7
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	movq	%rcx, %r10
	movq	%rax, %r14
	xorl	%ecx, %ecx
.LBB14_10:                              # %for.body11.us.preheader
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_13:                              # %for.body11.us
                                        #   in Loop: Header=BB14_11 Depth=2
	movw	%r11w, (%r10,%rcx,2)
	incq	%rcx
	cmpl	%ecx, %eax
	je	.LBB14_14
.LBB14_11:                              # %for.body11.us
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi,%rcx,2), %r11d
	movzwl	(%rdx,%rcx,2), %r15d
	addl	%r11d, %r15d
	movzwl	(%rbx,%rcx,2), %r11d
	movzwl	(%r9,%rcx,2), %esi
	addl	%r11d, %esi
	leal	(%rsi,%rsi,4), %esi
	subl	%esi, %r15d
	movzwl	(%r14,%rcx,2), %esi
	movzwl	2(%r14,%rcx,2), %r11d
	addl	%esi, %r11d
	leal	(%r11,%r11,4), %esi
	leal	(%r15,%rsi,4), %r11d
	addl	$16, %r11d
	sarl	$5, %r11d
	testl	%r11d, %r11d
	cmovlel	%r13d, %r11d
	cmpl	208(%rsp), %r11d
	jl	.LBB14_13
# %bb.12:                               # %for.body11.us
                                        #   in Loop: Header=BB14_11 Depth=2
	movl	208(%rsp), %r11d
	jmp	.LBB14_13
	.p2align	4, 0x90
.LBB14_7:                               # %vector.ph
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rcx,%rsi), %r10
	addq	%rsi, %rdx
	addq	%rsi, %r9
	leaq	(%rax,%rsi), %r14
	addq	%rsi, %rbx
	addq	%rsi, %rdi
	xorl	%r11d, %r11d
	movq	40(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB14_8:                               # %vector.body
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	12(%rax,%r11), %xmm2
	movdqu	28(%rax,%r11), %xmm1
	movdqu	44(%rax,%r11), %xmm0
	movdqu	-4(%rax,%r11), %xmm4
	movdqu	-2(%rax,%r11), %xmm12
	movdqa	%xmm4, %xmm9
	punpckhwd	%xmm10, %xmm9           # xmm9 = xmm9[4],xmm10[4],xmm9[5],xmm10[5],xmm9[6],xmm10[6],xmm9[7],xmm10[7]
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	pxor	%xmm8, %xmm8
	movdqa	%xmm2, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movdqu	6(%rax,%r11), %xmm7
	movdqu	22(%rax,%r11), %xmm6
	movdqu	38(%rax,%r11), %xmm13
	movdqu	54(%rax,%r11), %xmm5
	movdqa	%xmm7, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm9, %xmm14
	movdqa	%xmm14, (%rsp)                  # 16-byte Spill
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	paddd	%xmm4, %xmm7
	movdqa	%xmm6, %xmm9
	punpckhwd	%xmm8, %xmm9            # xmm9 = xmm9[4],xmm8[4],xmm9[5],xmm8[5],xmm9[6],xmm8[6],xmm9[7],xmm8[7]
	paddd	%xmm10, %xmm9
	punpcklwd	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1],xmm6[2],xmm8[2],xmm6[3],xmm8[3]
	paddd	%xmm2, %xmm6
	movdqa	%xmm13, %xmm10
	punpckhwd	%xmm8, %xmm10           # xmm10 = xmm10[4],xmm8[4],xmm10[5],xmm8[5],xmm10[6],xmm8[6],xmm10[7],xmm8[7]
	paddd	%xmm11, %xmm10
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm1, %xmm13
	movdqa	%xmm13, -112(%rsp)              # 16-byte Spill
	movdqa	%xmm5, %xmm11
	punpckhwd	%xmm8, %xmm11           # xmm11 = xmm11[4],xmm8[4],xmm11[5],xmm8[5],xmm11[6],xmm8[6],xmm11[7],xmm8[7]
	paddd	%xmm3, %xmm11
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	movdqu	14(%rax,%r11), %xmm4
	movdqu	30(%rax,%r11), %xmm3
	movdqa	%xmm12, %xmm0
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	movdqa	%xmm4, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	punpckhwd	%xmm8, %xmm4            # xmm4 = xmm4[4],xmm8[4],xmm4[5],xmm8[5],xmm4[6],xmm8[6],xmm4[7],xmm8[7]
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	movdqu	4(%rax,%r11), %xmm1
	movdqa	%xmm1, %xmm13
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm0, %xmm13
	movdqu	20(%rax,%r11), %xmm2
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	paddd	%xmm12, %xmm1
	movdqa	%xmm2, %xmm12
	punpcklwd	%xmm8, %xmm12           # xmm12 = xmm12[0],xmm8[0],xmm12[1],xmm8[1],xmm12[2],xmm8[2],xmm12[3],xmm8[3]
	paddd	%xmm14, %xmm12
	movdqu	36(%rax,%r11), %xmm5
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm4, %xmm2
	movdqa	%xmm5, %xmm14
	punpcklwd	%xmm8, %xmm14           # xmm14 = xmm14[0],xmm8[0],xmm14[1],xmm8[1],xmm14[2],xmm8[2],xmm14[3],xmm8[3]
	paddd	%xmm15, %xmm14
	movdqu	46(%rax,%r11), %xmm0
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	paddd	%xmm3, %xmm5
	movdqa	%xmm0, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	movdqu	52(%rax,%r11), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	%xmm8, %xmm15           # xmm15 = xmm15[0],xmm8[0],xmm15[1],xmm8[1],xmm15[2],xmm8[2],xmm15[3],xmm8[3]
	paddd	%xmm4, %xmm15
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	(%rax,%r11), %xmm13
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, (%rsp)                   # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	2(%rax,%r11), %xmm4
	psubd	%xmm0, %xmm6
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	psubd	%xmm0, %xmm11
	movdqu	16(%rax,%r11), %xmm2
	movdqu	32(%rax,%r11), %xmm1
	movdqa	%xmm13, %xmm0
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm8, %xmm3            # xmm3 = xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	punpcklwd	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm4, %xmm12
	punpckhwd	%xmm8, %xmm12           # xmm12 = xmm12[4],xmm8[4],xmm12[5],xmm8[5],xmm12[6],xmm8[6],xmm12[7],xmm8[7]
	paddd	%xmm0, %xmm12
	movdqu	18(%rax,%r11), %xmm0
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	paddd	%xmm13, %xmm4
	movdqa	%xmm0, %xmm14
	punpckhwd	%xmm8, %xmm14           # xmm14 = xmm14[4],xmm8[4],xmm14[5],xmm8[5],xmm14[6],xmm8[6],xmm14[7],xmm8[7]
	paddd	%xmm3, %xmm14
	movdqu	34(%rax,%r11), %xmm3
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	paddd	%xmm2, %xmm0
	movdqa	%xmm3, %xmm2
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	paddd	%xmm5, %xmm2
	movdqu	48(%rax,%r11), %xmm5
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	paddd	%xmm1, %xmm3
	movdqa	%xmm5, %xmm1
	punpckhwd	%xmm8, %xmm1            # xmm1 = xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	movdqu	50(%rax,%r11), %xmm13
	movdqa	%xmm13, %xmm15
	punpckhwd	%xmm8, %xmm15           # xmm15 = xmm15[4],xmm8[4],xmm15[5],xmm8[5],xmm15[6],xmm8[6],xmm15[7],xmm8[7]
	paddd	%xmm1, %xmm15
	punpcklwd	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1],xmm5[2],xmm8[2],xmm5[3],xmm8[3]
	punpcklwd	%xmm8, %xmm13           # xmm13 = xmm13[0],xmm8[0],xmm13[1],xmm8[1],xmm13[2],xmm8[2],xmm13[3],xmm8[3]
	paddd	%xmm5, %xmm13
	pshufd	$245, %xmm12, %xmm1             # xmm1 = xmm12[1,1,3,3]
	movdqa	.LCPI14_0(%rip), %xmm5          # xmm5 = [20,20,20,20]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm12, 48(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm4, %xmm12             # xmm12 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3]
	pmuludq	%xmm5, %xmm12
	pshufd	$232, %xmm12, %xmm4             # xmm4 = xmm12[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	pshufd	$245, %xmm14, %xmm4             # xmm4 = xmm14[1,1,3,3]
	pmuludq	%xmm5, %xmm14
	pshufd	$232, %xmm14, %xmm12            # xmm12 = xmm14[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	pshufd	$245, %xmm2, %xmm4              # xmm4 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm4              # xmm4 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm15, %xmm4             # xmm4 = xmm15[1,1,3,3]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm3             # xmm3 = xmm15[0,2,2,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	pshufd	$245, %xmm13, %xmm15            # xmm15 = xmm13[1,1,3,3]
	pmuludq	%xmm5, %xmm13
	pshufd	$232, %xmm13, %xmm4             # xmm4 = xmm13[0,2,2,3]
	movdqa	.LCPI14_1(%rip), %xmm13         # xmm13 = [16,16,16,16]
	pmuludq	%xmm5, %xmm15
	pshufd	$232, %xmm15, %xmm5             # xmm5 = xmm15[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqa	(%rsp), %xmm5                   # 16-byte Reload
	paddd	%xmm13, %xmm5
	paddd	48(%rsp), %xmm5                 # 16-byte Folded Reload
	paddd	%xmm13, %xmm7
	paddd	%xmm1, %xmm7
	paddd	%xmm13, %xmm9
	paddd	%xmm12, %xmm9
	paddd	%xmm13, %xmm6
	paddd	%xmm14, %xmm6
	paddd	%xmm13, %xmm10
	paddd	%xmm0, %xmm10
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	paddd	%xmm13, %xmm0
	paddd	%xmm2, %xmm0
	paddd	%xmm13, %xmm11
	paddd	%xmm3, %xmm11
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm13, %xmm1
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm4
	psrad	$5, %xmm7
	psrad	$5, %xmm5
	psrad	$5, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm0
	psrad	$5, %xmm10
	psrad	$5, %xmm4
	psrad	$5, %xmm11
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm8, %xmm12
	pand	%xmm5, %xmm12
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm8, %xmm2
	pand	%xmm7, %xmm2
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm9, %xmm1
	movdqa	128(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm8, %xmm7
	pand	%xmm6, %xmm7
	movdqa	%xmm10, %xmm6
	pcmpgtd	%xmm8, %xmm6
	pand	%xmm10, %xmm6
	pxor	%xmm10, %xmm10
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm10, %xmm8
	pand	%xmm0, %xmm8
	movdqa	%xmm11, %xmm0
	pcmpgtd	%xmm10, %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm4, %xmm3
	pcmpgtd	%xmm10, %xmm3
	pand	%xmm4, %xmm3
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm2, %xmm4
	pand	%xmm4, %xmm2
	pandn	%xmm9, %xmm4
	por	%xmm2, %xmm4
	movdqa	%xmm9, %xmm2
	pcmpgtd	%xmm12, %xmm2
	pand	%xmm2, %xmm12
	pandn	%xmm9, %xmm2
	por	%xmm12, %xmm2
	movdqa	%xmm9, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm5, %xmm7
	pandn	%xmm9, %xmm5
	por	%xmm7, %xmm5
	movdqa	%xmm9, %xmm7
	pcmpgtd	%xmm1, %xmm7
	pand	%xmm7, %xmm1
	pandn	%xmm9, %xmm7
	por	%xmm1, %xmm7
	movdqa	%xmm9, %xmm1
	pcmpgtd	%xmm8, %xmm1
	pand	%xmm1, %xmm8
	pandn	%xmm9, %xmm1
	por	%xmm8, %xmm1
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm6, %xmm8
	pand	%xmm8, %xmm6
	pandn	%xmm9, %xmm8
	por	%xmm6, %xmm8
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm3, %xmm6
	pand	%xmm6, %xmm3
	pandn	%xmm9, %xmm6
	por	%xmm3, %xmm6
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm0, %xmm3
	pand	%xmm3, %xmm0
	pandn	%xmm9, %xmm3
	por	%xmm0, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	packssdw	%xmm2, %xmm4
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	packssdw	%xmm7, %xmm5
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm8, %xmm1
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm3, %xmm6
	movdqu	%xmm4, (%rcx,%r11)
	movdqu	%xmm5, 16(%rcx,%r11)
	movdqu	%xmm1, 32(%rcx,%r11)
	movdqu	%xmm6, 48(%rcx,%r11)
	addq	$64, %r11
	cmpq	%r11, %rsi
	jne	.LBB14_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB14_3 Depth=1
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	cmpl	-16(%rsp), %eax                 # 4-byte Folded Reload
	je	.LBB14_14
	jmp	.LBB14_10
.LBB14_15:                              # %for.end33
	cmpl	$0, -56(%rsp)                   # 4-byte Folded Reload
	movl	-48(%rsp), %eax                 # 4-byte Reload
	jle	.LBB14_31
# %bb.16:                               # %for.body41.lr.ph
	movslq	%eax, %rbx
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %r14
	negq	%r14
	movq	-88(%rsp), %rax                 # 8-byte Reload
	movq	-16(%rax), %rax
	leaq	(%rax,%r8,2), %r9
	addq	$2, %r9
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	leaq	2(%rsi,%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbx), %rax
	leaq	(%rax,%rax,2), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	leaq	(,%rbx,4), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	leaq	(,%rbx,8), %rcx
	leaq	2(%rcx,%rsi,2), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rsi), %rcx
	leaq	2(%rcx,%rcx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rax,4), %rcx
	leaq	(%rcx,%rsi,2), %rcx
	addq	$2, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2147483616, %edx               # imm = 0x7FFFFFE0
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	leal	(%rdx,%rdx), %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	leaq	48(,%rbx,2), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	leaq	48(,%rbx,4), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	48(%rax,%rax,2), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	48(%rax,%rax,4), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movdqa	.LCPI14_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	pxor	%xmm14, %xmm14
	leaq	48(,%rbx,8), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	xorl	%r11d, %r11d
	movq	%rbx, -56(%rsp)                 # 8-byte Spill
	movq	%r14, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB14_17
	.p2align	4, 0x90
.LBB14_29:                              # %for.cond53.for.end87_crit_edge.us.loopexit
                                        #   in Loop: Header=BB14_17 Depth=1
	subq	%rcx, %r15
.LBB14_30:                              # %for.cond53.for.end87_crit_edge.us
                                        #   in Loop: Header=BB14_17 Depth=1
	leaq	(%r15,%r14,2), %r9
	movq	48(%rsp), %r11                  # 8-byte Reload
	incq	%r11
	cmpq	24(%rsp), %r11                  # 8-byte Folded Reload
	je	.LBB14_31
.LBB14_17:                              # %for.body41.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_23 Depth 2
                                        #     Child Loop BB14_26 Depth 2
	leaq	(%r9,%rbx,2), %r15
	leaq	(%r15,%rbx,2), %r12
	leaq	(%r12,%rbx,2), %r13
	leaq	(,%rbx,2), %rbp
	addq	%r13, %rbp
	leaq	(,%rbx,2), %rsi
	addq	%rbp, %rsi
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%r11,8), %r8
	cmpl	$32, -120(%rsp)                 # 4-byte Folded Reload
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	jae	.LBB14_19
.LBB14_18:                              #   in Loop: Header=BB14_17 Depth=1
	movq	%r8, %r10
	movq	%r9, %rdi
	xorl	%ecx, %ecx
.LBB14_25:                              # %for.body56.us.preheader
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	-120(%rsp), %rax                # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB14_26
	.p2align	4, 0x90
.LBB14_28:                              # %for.body56.us
                                        #   in Loop: Header=BB14_26 Depth=2
	movzwl	(%r10,%rdx,2), %r9d
	addl	%r9d, %r8d
	incl	%r8d
	shrl	%r8d
	movw	%r8w, (%r10,%rdx,2)
	incq	%rdx
	addq	$-2, %rcx
	cmpl	%edx, %eax
	je	.LBB14_29
.LBB14_26:                              # %for.body56.us
                                        #   Parent Loop BB14_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdi,%rdx,2), %r8d
	movzwl	(%rsi,%rdx,2), %r9d
	addl	%r8d, %r9d
	movzwl	(%r15,%rdx,2), %r8d
	movzwl	(%rbp,%rdx,2), %r11d
	addl	%r8d, %r11d
	leal	(%r11,%r11,4), %r8d
	subl	%r8d, %r9d
	movzwl	(%r12,%rdx,2), %r8d
	movzwl	(%r13,%rdx,2), %r11d
	addl	%r8d, %r11d
	leal	(%r11,%r11,4), %r8d
	leal	(%r9,%r8,4), %r8d
	addl	$16, %r8d
	sarl	$5, %r8d
	testl	%r8d, %r8d
	movl	$0, %r9d
	cmovlel	%r9d, %r8d
	cmpl	208(%rsp), %r8d
	jl	.LBB14_28
# %bb.27:                               # %for.body56.us
                                        #   in Loop: Header=BB14_26 Depth=2
	movl	208(%rsp), %r8d
                                        # kill: def $r8d killed $r8d def $r8
	jmp	.LBB14_28
	.p2align	4, 0x90
.LBB14_19:                              # %vector.memcheck242
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	-88(%rsp), %r10                 # 8-byte Reload
	leaq	(%r8,%r10), %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	addq	%r9, %rcx
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %rdx
	movq	%rdx, %xmm0
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r9,%rdx), %rdi
	movq	%rcx, %xmm1
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r9,%rcx), %rcx
	movq	%rcx, %xmm2
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r9,%rcx), %rdx
	movq	%rdi, %xmm3
	leaq	(%r9,%r10), %rcx
	movq	%r8, %xmm4
	pshufd	$68, %xmm4, %xmm4               # xmm4 = xmm4[0,1,0,1]
	punpcklqdq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0]
	punpcklqdq	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm4
	movdqa	%xmm3, %xmm2
	pcmpgtd	%xmm4, %xmm2
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm4, %xmm0
	movdqa	%xmm0, %xmm5
	shufps	$136, %xmm2, %xmm5              # xmm5 = xmm5[0,2],xmm2[0,2]
	pcmpeqd	%xmm4, %xmm3
	pcmpeqd	%xmm4, %xmm1
	shufps	$221, %xmm3, %xmm1              # xmm1 = xmm1[1,3],xmm3[1,3]
	andps	%xmm5, %xmm1
	shufps	$221, %xmm2, %xmm0              # xmm0 = xmm0[1,3],xmm2[1,3]
	orps	%xmm1, %xmm0
	movq	%r12, %xmm1
	movq	%r13, %xmm2
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	movq	%r15, %xmm1
	movq	%rbp, %xmm3
	punpcklqdq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0]
	movq	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1               # xmm1 = xmm1[0,1,0,1]
	pxor	%xmm8, %xmm3
	pxor	%xmm8, %xmm1
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm3, %xmm4
	pxor	%xmm8, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm2, %xmm5
	movdqa	%xmm5, %xmm6
	shufps	$136, %xmm4, %xmm6              # xmm6 = xmm6[0,2],xmm4[0,2]
	pcmpeqd	%xmm1, %xmm3
	pcmpeqd	%xmm1, %xmm2
	shufps	$221, %xmm3, %xmm2              # xmm2 = xmm2[1,3],xmm3[1,3]
	andps	%xmm6, %xmm2
	shufps	$221, %xmm4, %xmm5              # xmm5 = xmm5[1,3],xmm4[1,3]
	orps	%xmm2, %xmm5
	andps	%xmm0, %xmm5
	cmpq	%rdx, %r8
	setb	%dl
	cmpq	%rax, %rsi
	setb	%dil
	cmpq	%rcx, %r8
	setb	%cl
	cmpq	%rax, %r9
	setb	%al
	movmskps	%xmm5, %r10d
	testl	%r10d, %r10d
	jne	.LBB14_18
# %bb.20:                               # %vector.memcheck242
                                        #   in Loop: Header=BB14_17 Depth=1
	andb	%dil, %dl
	jne	.LBB14_18
# %bb.21:                               # %vector.memcheck242
                                        #   in Loop: Header=BB14_17 Depth=1
	andb	%al, %cl
	jne	.LBB14_18
# %bb.22:                               # %vector.ph275
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%r8,%rax), %r10
	addq	%rax, %rsi
	addq	%rax, %rbp
	addq	%rax, %r13
	addq	%rax, %r12
	addq	%rax, %r15
	leaq	(%r9,%rax), %rdi
	movq	104(%rsp), %rax                 # 8-byte Reload
	leaq	(%r9,%rax), %rdx
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %r14
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %r11
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	(%r9,%rax), %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB14_23:                              # %vector.body294
                                        #   Parent Loop BB14_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r9,%rax), %xmm4
	movdqu	16(%r9,%rax), %xmm2
	movdqu	32(%r9,%rax), %xmm1
	movdqu	48(%r9,%rax), %xmm0
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm14, %xmm5           # xmm5 = xmm5[4],xmm14[4],xmm5[5],xmm14[5],xmm5[6],xmm14[6],xmm5[7],xmm14[7]
	punpcklwd	%xmm14, %xmm4           # xmm4 = xmm4[0],xmm14[0],xmm4[1],xmm14[1],xmm4[2],xmm14[2],xmm4[3],xmm14[3]
	movdqa	%xmm2, %xmm12
	punpckhwd	%xmm14, %xmm12          # xmm12 = xmm12[4],xmm14[4],xmm12[5],xmm14[5],xmm12[6],xmm14[6],xmm12[7],xmm14[7]
	punpcklwd	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1],xmm2[2],xmm14[2],xmm2[3],xmm14[3]
	movdqa	%xmm1, %xmm13
	punpckhwd	%xmm14, %xmm13          # xmm13 = xmm13[4],xmm14[4],xmm13[5],xmm14[5],xmm13[6],xmm14[6],xmm13[7],xmm14[7]
	punpcklwd	%xmm14, %xmm1           # xmm1 = xmm1[0],xmm14[0],xmm1[1],xmm14[1],xmm1[2],xmm14[2],xmm1[3],xmm14[3]
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm14, %xmm3           # xmm3 = xmm3[4],xmm14[4],xmm3[5],xmm14[5],xmm3[6],xmm14[6],xmm3[7],xmm14[7]
	punpcklwd	%xmm14, %xmm0           # xmm0 = xmm0[0],xmm14[0],xmm0[1],xmm14[1],xmm0[2],xmm14[2],xmm0[3],xmm14[3]
	movdqu	-48(%rbx,%rax), %xmm9
	movdqu	-32(%rbx,%rax), %xmm8
	movdqu	-16(%rbx,%rax), %xmm10
	movdqu	(%rbx,%rax), %xmm6
	movdqa	%xmm9, %xmm7
	punpckhwd	.LCPI14_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, -80(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI14_3(%rip), %xmm9  # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	paddd	%xmm4, %xmm9
	movdqa	%xmm8, %xmm11
	punpckhwd	.LCPI14_3(%rip), %xmm11 # xmm11 = xmm11[4],mem[4],xmm11[5],mem[5],xmm11[6],mem[6],xmm11[7],mem[7]
	paddd	%xmm12, %xmm11
	punpcklwd	.LCPI14_3(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3]
	paddd	%xmm2, %xmm8
	movdqa	%xmm10, %xmm12
	punpckhwd	.LCPI14_3(%rip), %xmm12 # xmm12 = xmm12[4],mem[4],xmm12[5],mem[5],xmm12[6],mem[6],xmm12[7],mem[7]
	paddd	%xmm13, %xmm12
	punpcklwd	.LCPI14_3(%rip), %xmm10 # xmm10 = xmm10[0],mem[0],xmm10[1],mem[1],xmm10[2],mem[2],xmm10[3],mem[3]
	paddd	%xmm1, %xmm10
	movdqa	%xmm6, %xmm13
	punpckhwd	.LCPI14_3(%rip), %xmm13 # xmm13 = xmm13[4],mem[4],xmm13[5],mem[5],xmm13[6],mem[6],xmm13[7],mem[7]
	paddd	%xmm3, %xmm13
	punpcklwd	.LCPI14_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	movdqu	-48(%rdx,%rax), %xmm0
	movdqu	-32(%rdx,%rax), %xmm4
	movdqu	-16(%rdx,%rax), %xmm7
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI14_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpckhwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm4, %xmm2
	punpcklwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	punpckhwd	.LCPI14_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm7, %xmm5
	punpcklwd	.LCPI14_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	movdqu	-48(%r11,%rax), %xmm3
	movdqa	%xmm3, %xmm15
	punpcklwd	.LCPI14_3(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	paddd	%xmm1, %xmm15
	movdqu	-32(%r11,%rax), %xmm1
	punpckhwd	.LCPI14_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm0, %xmm3
	movdqa	%xmm1, %xmm14
	punpcklwd	.LCPI14_3(%rip), %xmm14 # xmm14 = xmm14[0],mem[0],xmm14[1],mem[1],xmm14[2],mem[2],xmm14[3],mem[3]
	paddd	%xmm2, %xmm14
	movdqu	-16(%r11,%rax), %xmm6
	punpckhwd	.LCPI14_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqa	%xmm6, %xmm4
	punpcklwd	.LCPI14_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm5, %xmm4
	movdqu	(%rdx,%rax), %xmm0
	punpckhwd	.LCPI14_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	punpckhwd	.LCPI14_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	paddd	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	punpcklwd	.LCPI14_3(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	movdqu	(%r11,%rax), %xmm2
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI14_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm7, %xmm5
	punpckhwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpckhwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm0, %xmm2
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-80(%rsp), %xmm3                # 16-byte Reload
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm11
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	psubd	%xmm0, %xmm13
	movdqu	-48(%rcx,%rax), %xmm2
	movdqu	-32(%rcx,%rax), %xmm1
	movdqu	-16(%rcx,%rax), %xmm3
	movdqa	%xmm2, %xmm0
	punpckhwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpcklwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	%xmm1, %xmm6
	punpckhwd	.LCPI14_3(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	punpcklwd	.LCPI14_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm3, %xmm4
	punpckhwd	.LCPI14_3(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqu	-48(%r14,%rax), %xmm5
	movdqa	%xmm5, %xmm15
	punpckhwd	.LCPI14_3(%rip), %xmm15 # xmm15 = xmm15[4],mem[4],xmm15[5],mem[5],xmm15[6],mem[6],xmm15[7],mem[7]
	paddd	%xmm0, %xmm15
	movdqu	-32(%r14,%rax), %xmm0
	punpcklwd	.LCPI14_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm14
	punpckhwd	.LCPI14_3(%rip), %xmm14 # xmm14 = xmm14[4],mem[4],xmm14[5],mem[5],xmm14[6],mem[6],xmm14[7],mem[7]
	paddd	%xmm6, %xmm14
	movdqu	-16(%r14,%rax), %xmm2
	punpcklwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm1, %xmm0
	movdqa	%xmm2, %xmm1
	punpckhwd	.LCPI14_3(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm4, %xmm1
	movdqu	(%rcx,%rax), %xmm6
	punpcklwd	.LCPI14_3(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpcklwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm3, %xmm2
	movdqa	%xmm6, %xmm7
	punpckhwd	.LCPI14_3(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqu	(%r14,%rax), %xmm4
	movdqa	%xmm4, %xmm3
	punpckhwd	.LCPI14_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm7, %xmm3
	punpcklwd	.LCPI14_3(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpcklwd	.LCPI14_3(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	paddd	%xmm6, %xmm4
	pshufd	$245, %xmm15, %xmm6             # xmm6 = xmm15[1,1,3,3]
	movdqa	.LCPI14_0(%rip), %xmm7          # xmm7 = [20,20,20,20]
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1]
	movdqa	%xmm15, (%rsp)                  # 16-byte Spill
	pshufd	$245, %xmm5, %xmm6              # xmm6 = xmm5[1,1,3,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm15             # xmm15 = xmm5[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	punpckldq	%xmm5, %xmm15           # xmm15 = xmm15[0],xmm5[0],xmm15[1],xmm5[1]
	pshufd	$245, %xmm14, %xmm5             # xmm5 = xmm14[1,1,3,3]
	pmuludq	%xmm7, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm14           # xmm14 = xmm14[0],xmm5[0],xmm14[1],xmm5[1]
	pshufd	$245, %xmm0, %xmm6              # xmm6 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm5              # xmm5 = xmm0[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm6              # xmm6 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pshufd	$245, %xmm2, %xmm6              # xmm6 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$245, %xmm3, %xmm6              # xmm6 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm3              # xmm3 = xmm4[0,2,2,3]
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm4              # xmm4 = xmm6[0,2,2,3]
	punpckldq	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	movdqa	.LCPI14_1(%rip), %xmm4          # xmm4 = [16,16,16,16]
	movdqa	-80(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm4, %xmm7
	paddd	(%rsp), %xmm7                   # 16-byte Folded Reload
	paddd	%xmm4, %xmm9
	paddd	%xmm15, %xmm9
	paddd	%xmm4, %xmm11
	paddd	%xmm14, %xmm11
	paddd	%xmm4, %xmm8
	paddd	%xmm5, %xmm8
	paddd	%xmm4, %xmm12
	paddd	%xmm0, %xmm12
	paddd	%xmm4, %xmm10
	paddd	%xmm1, %xmm10
	paddd	%xmm4, %xmm13
	paddd	%xmm2, %xmm13
	movdqu	(%r8,%rax), %xmm2
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	%xmm3, %xmm6
	psrad	$5, %xmm9
	psrad	$5, %xmm7
	psrad	$5, %xmm8
	psrad	$5, %xmm11
	psrad	$5, %xmm10
	psrad	$5, %xmm12
	psrad	$5, %xmm6
	psrad	$5, %xmm13
	movdqa	%xmm7, %xmm3
	pcmpgtd	.LCPI14_3(%rip), %xmm3
	pand	%xmm7, %xmm3
	movdqa	%xmm9, %xmm5
	pcmpgtd	.LCPI14_3(%rip), %xmm5
	pand	%xmm9, %xmm5
	movdqa	%xmm11, %xmm0
	pcmpgtd	.LCPI14_3(%rip), %xmm0
	pand	%xmm11, %xmm0
	movdqa	%xmm8, %xmm4
	pcmpgtd	.LCPI14_3(%rip), %xmm4
	pand	%xmm8, %xmm4
	movdqa	%xmm12, %xmm14
	pcmpgtd	.LCPI14_3(%rip), %xmm14
	pand	%xmm12, %xmm14
	movdqa	%xmm10, %xmm1
	pcmpgtd	.LCPI14_3(%rip), %xmm1
	pand	%xmm10, %xmm1
	movdqa	%xmm13, %xmm7
	pcmpgtd	.LCPI14_3(%rip), %xmm7
	pand	%xmm13, %xmm7
	movdqa	%xmm7, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm6, %xmm15
	pcmpgtd	.LCPI14_3(%rip), %xmm15
	pand	%xmm6, %xmm15
	movdqa	128(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm10
	pcmpgtd	%xmm5, %xmm10
	pand	%xmm10, %xmm5
	pandn	%xmm6, %xmm10
	por	%xmm5, %xmm10
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI14_3(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	paddd	%xmm5, %xmm10
	movdqa	%xmm6, %xmm9
	pcmpgtd	%xmm3, %xmm9
	pand	%xmm9, %xmm3
	pandn	%xmm6, %xmm9
	por	%xmm3, %xmm9
	movdqu	16(%r8,%rax), %xmm3
	punpckhwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	paddd	%xmm2, %xmm9
	movdqa	%xmm6, %xmm7
	pcmpgtd	%xmm4, %xmm7
	pand	%xmm7, %xmm4
	pandn	%xmm6, %xmm7
	por	%xmm4, %xmm7
	movdqa	%xmm3, %xmm2
	punpcklwd	.LCPI14_3(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	paddd	%xmm2, %xmm7
	movdqa	%xmm6, %xmm11
	pcmpgtd	%xmm0, %xmm11
	pand	%xmm11, %xmm0
	pandn	%xmm6, %xmm11
	por	%xmm0, %xmm11
	movdqu	32(%r8,%rax), %xmm0
	punpckhwd	.LCPI14_3(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm3, %xmm11
	movdqa	%xmm6, %xmm8
	pcmpgtd	%xmm1, %xmm8
	pand	%xmm8, %xmm1
	pandn	%xmm6, %xmm8
	por	%xmm1, %xmm8
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI14_3(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	paddd	%xmm1, %xmm8
	movdqa	%xmm6, %xmm13
	pcmpgtd	%xmm14, %xmm13
	pand	%xmm13, %xmm14
	pandn	%xmm6, %xmm13
	por	%xmm14, %xmm13
	pcmpeqd	%xmm2, %xmm2
	movdqu	48(%r8,%rax), %xmm1
	punpckhwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	paddd	%xmm0, %xmm13
	movdqa	%xmm6, %xmm12
	pcmpgtd	%xmm15, %xmm12
	pand	%xmm12, %xmm15
	pandn	%xmm6, %xmm12
	por	%xmm15, %xmm12
	movdqa	%xmm1, %xmm0
	punpcklwd	.LCPI14_3(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	paddd	%xmm0, %xmm12
	movdqa	%xmm6, %xmm0
	movdqa	-112(%rsp), %xmm3               # 16-byte Reload
	pcmpgtd	%xmm3, %xmm0
	pand	%xmm0, %xmm3
	pandn	%xmm6, %xmm0
	por	%xmm3, %xmm0
	pxor	%xmm14, %xmm14
	punpckhwd	%xmm14, %xmm1           # xmm1 = xmm1[4],xmm14[4],xmm1[5],xmm14[5],xmm1[6],xmm14[6],xmm1[7],xmm14[7]
	paddd	%xmm1, %xmm0
	psubd	%xmm2, %xmm10
	psubd	%xmm2, %xmm9
	pslld	$15, %xmm9
	psrad	$16, %xmm9
	pslld	$15, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm9, %xmm10
	psubd	%xmm2, %xmm7
	psubd	%xmm2, %xmm11
	pslld	$15, %xmm11
	psrad	$16, %xmm11
	pslld	$15, %xmm7
	psrad	$16, %xmm7
	packssdw	%xmm11, %xmm7
	psubd	%xmm2, %xmm8
	psubd	%xmm2, %xmm13
	pslld	$15, %xmm13
	psrad	$16, %xmm13
	pslld	$15, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm13, %xmm8
	psubd	%xmm2, %xmm12
	psubd	%xmm2, %xmm0
	pslld	$15, %xmm0
	psrad	$16, %xmm0
	pslld	$15, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm0, %xmm12
	movdqu	%xmm10, (%r8,%rax)
	movdqu	%xmm7, 16(%r8,%rax)
	movdqu	%xmm8, 32(%r8,%rax)
	movdqu	%xmm12, 48(%r8,%rax)
	addq	$64, %rax
	cmpq	%rax, 40(%rsp)                  # 8-byte Folded Reload
	jne	.LBB14_23
# %bb.24:                               # %middle.block272
                                        #   in Loop: Header=BB14_17 Depth=1
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	cmpl	-16(%rsp), %eax                 # 4-byte Folded Reload
	movq	-56(%rsp), %rbx                 # 8-byte Reload
	movq	120(%rsp), %r14                 # 8-byte Reload
	movdqa	.LCPI14_2(%rip), %xmm8          # xmm8 = [9223372039002259456,9223372039002259456]
	je	.LBB14_30
	jmp	.LBB14_25
.LBB14_31:                              # %for.end92
	addq	$152, %rsp
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
.Lfunc_end14:
	.size	get_luma_33, .Lfunc_end14-get_luma_33
	.cfi_endproc
                                        # -- End function
	.globl	intra_cr_decoding               # -- Begin function intra_cr_decoding
	.p2align	4, 0x90
	.type	intra_cr_decoding,@function
intra_cr_decoding:                      # @intra_cr_decoding
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
	movl	%esi, %r14d
	movq	%rdi, %r13
	movq	(%rdi), %rbx
	movq	8(%rdi), %r12
	movq	13520(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	callq	*13472(%rbx)
	movslq	%r14d, %rbp
	shlq	$5, %rbp
	movb	$1, %al
	xorl	%r14d, %r14d
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB15_1
	.p2align	4, 0x90
.LBB15_24:                              # %if.then86
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	itrans_sp_cr@PLT
	movq	%r15, %rbp
	leaq	1(%r14), %r15
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	leaq	(,%rax,8), %rdi
	addq	%rbp, %rdi
	movq	1256(%rbx), %rax
	movq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_4x4@PLT
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	$4, %edx
	xorl	%ecx, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	leaq	(,%rax,8), %rdi
	addq	%rbp, %rdi
	movq	1256(%rbx), %rax
	movq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	$4, %edx
	movl	$4, %ecx
	callq	copy_image_data_4x4@PLT
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	leaq	32(,%rax,8), %rdi
	addq	%rbp, %rdi
	movq	1256(%rbx), %rax
	movq	8(%rax,%r14,8), %rsi
	addq	$32, %rsi
	movl	52(%r13), %edx
	xorl	%ecx, %ecx
	callq	copy_image_data_4x4@PLT
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	$4, %edx
	movl	$4, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	leaq	32(,%rax,8), %rdi
	addq	%rbp, %rdi
	movq	1256(%rbx), %rax
	movq	8(%rax,%r14,8), %rsi
	addq	$32, %rsi
	movl	52(%r13), %edx
	addl	$4, %edx
	movl	$4, %ecx
	callq	copy_image_data_4x4@PLT
	movq	24(%rsp), %rdx                  # 8-byte Reload
.LBB15_21:                              # %for.inc158
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$1, %r14d
	testb	$1, 36(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	movq	%rdx, %rbp
	je	.LBB15_22
.LBB15_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_8 Depth 2
                                        #       Child Loop BB15_10 Depth 3
                                        #     Child Loop BB15_17 Depth 2
                                        #     Child Loop BB15_20 Depth 2
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	cmpl	$0, 92(%r13)
	movq	itrans4x4_ls@GOTPCREL(%rip), %rax
	jne	.LBB15_3
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	itrans4x4@GOTPCREL(%rip), %rax
.LBB15_3:                               # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	%rax, 432(%r13)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	136(%rax), %rax
	movq	(%rax,%r14,8), %r15
	je	.LBB15_13
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	movzbl	373(%r13), %eax
	decb	%al
	cmpb	$2, %al
	jae	.LBB15_5
# %bb.23:                               # %if.then11
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	Inv_Residual_trans_Chroma@PLT
	jmp	.LBB15_13
	.p2align	4, 0x90
.LBB15_5:                               # %for.cond12.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	849112(%r12), %edx
	testl	%edx, %edx
	jle	.LBB15_13
# %bb.6:                                # %for.cond16.preheader.lr.ph
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	849108(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB15_13
# %bb.7:                                # %for.cond16.preheader.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB15_8
	.p2align	4, 0x90
.LBB15_12:                              # %for.inc33
                                        #   in Loop: Header=BB15_8 Depth=2
	incq	%rax
	movslq	%edx, %rsi
	cmpq	%rsi, %rax
	jge	.LBB15_13
.LBB15_8:                               # %for.cond16.preheader
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_10 Depth 3
	testl	%ecx, %ecx
	jle	.LBB15_12
# %bb.9:                                # %for.body19.preheader
                                        #   in Loop: Header=BB15_8 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB15_10:                              # %for.body19
                                        #   Parent Loop BB15_1 Depth=1
                                        #     Parent Loop BB15_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	1264(%rbx), %rcx
	movq	1272(%rbx), %rsi
	movq	8(%rsi,%r14,8), %rsi
	movq	(%rsi,%rax,8), %rsi
	movl	(%rsi,%rdx,4), %esi
	movq	8(%rcx,%r14,8), %rcx
	movq	(%rcx,%rax,8), %rcx
	movl	%esi, (%rcx,%rdx,4)
	incq	%rdx
	movslq	849108(%r12), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB15_10
# %bb.11:                               # %for.inc33.loopexit
                                        #   in Loop: Header=BB15_8 Depth=2
	movl	849112(%r12), %edx
	jmp	.LBB15_12
	.p2align	4, 0x90
.LBB15_13:                              # %if.end36
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpw	$12, 152(%r13)
	je	.LBB15_24
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	%r13, %rcx
	cmpl	$16, 284(%r13)
	movl	849100(%r12), %eax
	jae	.LBB15_15
# %bb.18:                               # %for.cond116.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	testl	%eax, %eax
	movq	%rbp, %rdx
	movq	%rcx, %r13
	jle	.LBB15_21
# %bb.19:                               # %for.cond121.preheader.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	%r15, %rcx
	xorl	%r15d, %r15d
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	.p2align	4, 0x90
.LBB15_20:                              # %for.cond121.preheader
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	subblk_offset_y(%rdx,%r15,4), %esi
	movzbl	subblk_offset_x(%rdx,%r15,4), %ecx
	movslq	56(%r13), %rax
	addq	%rsi, %rax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	leaq	(%rdi,%rax,8), %rdi
	movq	1248(%rbx), %rax
	shll	$3, %esi
	addq	8(%rax,%r14,8), %rsi
	movq	%rdx, %rbp
	movl	52(%r13), %edx
	addl	%ecx, %edx
	callq	copy_image_data_4x4@PLT
	movzbl	subblk_offset_y+1(%rbp,%r15,4), %esi
	movzbl	subblk_offset_x+1(%rbp,%r15,4), %ecx
	movslq	56(%r13), %rax
	addq	%rsi, %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leaq	(%rdx,%rax,8), %rdi
	movq	1248(%rbx), %rax
	shll	$3, %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%ecx, %edx
	callq	copy_image_data_4x4@PLT
	movzbl	subblk_offset_y+2(%rbp,%r15,4), %esi
	movzbl	subblk_offset_x+2(%rbp,%r15,4), %ecx
	movslq	56(%r13), %rax
	addq	%rsi, %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leaq	(%rdx,%rax,8), %rdi
	movq	1248(%rbx), %rax
	shll	$3, %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%ecx, %edx
	callq	copy_image_data_4x4@PLT
	movzbl	subblk_offset_y+3(%rbp,%r15,4), %esi
	movzbl	subblk_offset_x+3(%rbp,%r15,4), %ecx
	movslq	56(%r13), %rax
	addq	%rsi, %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leaq	(%rdx,%rax,8), %rdi
	movq	1248(%rbx), %rax
	shll	$3, %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%ecx, %edx
	callq	copy_image_data_4x4@PLT
	movq	%rbp, %rdx
	incq	%r15
	movslq	849100(%r12), %rax
	cmpq	%rax, %r15
	jl	.LBB15_20
	jmp	.LBB15_21
	.p2align	4, 0x90
.LBB15_15:                              # %for.cond42.preheader
                                        #   in Loop: Header=BB15_1 Depth=1
	testl	%eax, %eax
	movq	%rbp, %rdx
	movq	%rcx, %r13
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	jle	.LBB15_21
# %bb.16:                               # %for.cond46.preheader.lr.ph
                                        #   in Loop: Header=BB15_1 Depth=1
	leal	1(%r14), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB15_17:                              # %for.cond46.preheader
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	subblk_offset_y(%rdx,%rbp,4), %r15d
	movzbl	subblk_offset_x(%rdx,%rbp,4), %r12d
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	addq	%r15, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1256(%rbx), %rax
	leal	(,%r15,8), %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%r12d, %edx
	movl	%r12d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_y+1(%rax,%rbp,4), %r15d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_x+1(%rax,%rbp,4), %r12d
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	addq	%r15, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1256(%rbx), %rax
	leal	(,%r15,8), %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%r12d, %edx
	movl	%r12d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_y+2(%rax,%rbp,4), %r15d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_x+2(%rax,%rbp,4), %r12d
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	addq	%r15, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1256(%rbx), %rax
	leal	(,%r15,8), %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%r12d, %edx
	movl	%r12d, %ecx
	callq	copy_image_data_4x4@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_y+3(%rax,%rbp,4), %r15d
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	subblk_offset_x+3(%rax,%rbp,4), %r12d
	movq	%r13, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movl	%r15d, %ecx
	callq	*432(%r13)
	movslq	56(%r13), %rax
	addq	%r15, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%rax,8), %rdi
	movq	1256(%rbx), %rax
	leal	(,%r15,8), %esi
	addq	8(%rax,%r14,8), %rsi
	movl	52(%r13), %edx
	addl	%r12d, %edx
	movl	%r12d, %ecx
	movq	48(%rsp), %r12                  # 8-byte Reload
	callq	copy_image_data_4x4@PLT
	movq	24(%rsp), %rdx                  # 8-byte Reload
	incq	%rbp
	movslq	849100(%r12), %rax
	cmpq	%rax, %rbp
	jl	.LBB15_17
	jmp	.LBB15_21
.LBB15_22:                              # %for.end160
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
.Lfunc_end15:
	.size	intra_cr_decoding, .Lfunc_end15-intra_cr_decoding
	.cfi_endproc
                                        # -- End function
	.globl	prepare_direct_params           # -- Begin function prepare_direct_params
	.p2align	4, 0x90
	.type	prepare_direct_params,@function
prepare_direct_params:                  # @prepare_direct_params
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %rbp
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	152(%rsi), %r15
	movq	%rsp, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$16, %r8d
	callq	get_neighbors@PLT
	cmpl	$0, 128(%r14)
	je	.LBB16_1
# %bb.8:                                # %if.else
	movq	8(%rbx), %rax
	cmpl	$0, 384(%rbx)
	movq	848888(%rax), %r8
	movl	(%rsp), %ecx
	movb	$-1, %al
	movb	$-1, %dl
	movb	$-1, %sil
	je	.LBB16_21
# %bb.9:                                # %if.then6
	testl	%ecx, %ecx
	je	.LBB16_13
# %bb.10:                               # %if.then.i95
	movswq	14(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	12(%rsp), %rdx
	shlq	$5, %rdx
	leaq	(%rcx,%rdx), %rsi
	addq	$24, %rsi
	movslq	4(%rsp), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%r8,%rdi)
	movzbl	24(%rcx,%rdx), %edx
	je	.LBB16_12
# %bb.11:                               # %if.then7.i
	movzbl	1(%rsi), %esi
.LBB16_13:                              # %set_direct_references_mb_field.exit
	cmpl	$0, 16(%rsp)
	movb	$-1, %dil
	je	.LBB16_17
.LBB16_14:                              # %if.then.i104
	movswq	30(%rsp), %rax
	movq	(%r15,%rax,8), %rax
	movswq	28(%rsp), %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$24, %rdi
	movslq	20(%rsp), %r9
	imulq	$480, %r9, %r9                  # imm = 0x1E0
	cmpl	$0, 384(%r8,%r9)
	movzbl	24(%rax,%rcx), %eax
	je	.LBB16_16
# %bb.15:                               # %if.then7.i115
	movzbl	1(%rdi), %edi
	jmp	.LBB16_17
.LBB16_1:                               # %if.then
	movb	$-1, %al
	cmpl	$0, (%rsp)
	movb	$-1, %dl
	movb	$-1, %sil
	je	.LBB16_3
# %bb.2:                                # %if.then.i
	movswq	14(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	12(%rsp), %rsi
	shlq	$5, %rsi
	movzbl	24(%rcx,%rsi), %edx
	movzbl	25(%rcx,%rsi), %esi
.LBB16_3:                               # %set_direct_references.exit
	cmpl	$0, 16(%rsp)
	movb	$-1, %dil
	je	.LBB16_5
# %bb.4:                                # %if.then.i71
	movswq	30(%rsp), %rax
	movq	(%r15,%rax,8), %rcx
	movswq	28(%rsp), %rdi
	shlq	$5, %rdi
	movzbl	24(%rcx,%rdi), %eax
	movzbl	25(%rcx,%rdi), %edi
.LBB16_5:                               # %set_direct_references.exit81
	cmpl	$0, 32(%rsp)
	je	.LBB16_6
# %bb.7:                                # %if.then.i83
	movswq	46(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	44(%rsp), %r9
	shlq	$5, %r9
	movzbl	24(%rcx,%r9), %r8d
	movzbl	25(%rcx,%r9), %r9d
	jmp	.LBB16_33
.LBB16_21:                              # %if.else12
	testl	%ecx, %ecx
	je	.LBB16_25
# %bb.22:                               # %if.then.i154
	movswq	14(%rsp), %rcx
	movq	(%r15,%rcx,8), %rdx
	movswq	12(%rsp), %rsi
	shlq	$5, %rsi
	leaq	(%rdx,%rsi), %rcx
	addq	$24, %rcx
	movslq	4(%rsp), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%r8,%rdi)
	movzbl	24(%rdx,%rsi), %edx
	je	.LBB16_24
# %bb.23:                               # %if.then7.i165
	sarb	%dl
	movzbl	1(%rcx), %esi
	sarb	%sil
.LBB16_25:                              # %set_direct_references_mb_frame.exit
	cmpl	$0, 16(%rsp)
	movb	$-1, %dil
	je	.LBB16_29
.LBB16_26:                              # %if.then.i168
	movswq	30(%rsp), %rax
	movq	(%r15,%rax,8), %rax
	movswq	28(%rsp), %rdi
	shlq	$5, %rdi
	leaq	(%rax,%rdi), %rcx
	addq	$24, %rcx
	movslq	20(%rsp), %r9
	imulq	$480, %r9, %r9                  # imm = 0x1E0
	cmpl	$0, 384(%r8,%r9)
	movzbl	24(%rax,%rdi), %eax
	je	.LBB16_28
# %bb.27:                               # %if.then7.i179
	sarb	%al
	movzbl	1(%rcx), %edi
	sarb	%dil
	jmp	.LBB16_29
.LBB16_12:                              # %if.else.i102
	movl	%edx, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %dl
	movzbl	1(%rsi), %esi
	movl	%esi, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %sil
	cmpl	$0, 16(%rsp)
	movb	$-1, %dil
	jne	.LBB16_14
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.i118
	movl	%eax, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %al
	movzbl	1(%rdi), %edi
	movl	%edi, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %dil
.LBB16_17:                              # %set_direct_references_mb_field.exit127
	cmpl	$0, 32(%rsp)
	je	.LBB16_6
# %bb.18:                               # %if.then.i129
	movswq	46(%rsp), %rcx
	movq	(%r15,%rcx,8), %rcx
	movswq	44(%rsp), %r10
	shlq	$5, %r10
	leaq	(%rcx,%r10), %r9
	addq	$24, %r9
	movslq	36(%rsp), %r11
	imulq	$480, %r11, %r11                # imm = 0x1E0
	cmpl	$0, 384(%r8,%r11)
	movzbl	24(%rcx,%r10), %r8d
	je	.LBB16_20
# %bb.19:                               # %if.then7.i140
	movzbl	1(%r9), %r9d
	jmp	.LBB16_33
.LBB16_20:                              # %if.else.i143
	movl	%r8d, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %r8b
	movzbl	1(%r9), %r9d
	movl	%r9d, %ecx
	notb	%cl
	shrb	$7, %cl
	shlb	%cl, %r9b
	jmp	.LBB16_33
.LBB16_24:                              # %if.else.i166
	movzbl	1(%rcx), %esi
	cmpl	$0, 16(%rsp)
	movb	$-1, %dil
	jne	.LBB16_26
	jmp	.LBB16_29
.LBB16_28:                              # %if.else.i182
	movzbl	1(%rcx), %edi
.LBB16_29:                              # %set_direct_references_mb_frame.exit185
	cmpl	$0, 32(%rsp)
	je	.LBB16_6
# %bb.30:                               # %if.then.i187
	movswq	46(%rsp), %rcx
	movq	(%r15,%rcx,8), %r9
	movswq	44(%rsp), %r10
	shlq	$5, %r10
	leaq	(%r9,%r10), %rcx
	addq	$24, %rcx
	movslq	36(%rsp), %r11
	imulq	$480, %r11, %r11                # imm = 0x1E0
	cmpl	$0, 384(%r8,%r11)
	movzbl	24(%r9,%r10), %r8d
	je	.LBB16_32
# %bb.31:                               # %if.then7.i198
	sarb	%r8b
	movzbl	1(%rcx), %r9d
	sarb	%r9b
	jmp	.LBB16_33
.LBB16_6:
	movb	$-1, %r8b
	movb	$-1, %r9b
.LBB16_33:                              # %if.end19
	movzbl	%dl, %ecx
	movzbl	%al, %edx
	cmpb	%dl, %cl
	cmovbl	%ecx, %edx
	movzbl	%r8b, %eax
	cmpb	%al, %dl
	cmovael	%eax, %edx
	movzbl	%sil, %ecx
	movzbl	%dil, %eax
	cmpb	%al, %cl
	cmovbl	%ecx, %eax
	movzbl	%r9b, %ecx
	cmpb	%cl, %al
	cmovael	%ecx, %eax
	movb	%dl, (%rbp)
	movb	%al, (%r12)
	movsbl	(%rbp), %ecx
	testw	%cx, %cx
	js	.LBB16_35
# %bb.34:                               # %if.then32
	movswl	%cx, %ecx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r13, %rdx
	movq	%r15, %r8
	xorl	%r9d, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	*448(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movzbl	(%r12), %eax
.LBB16_35:                              # %if.end35
	testb	%al, %al
	js	.LBB16_37
# %bb.36:                               # %if.then39
	movzbl	%al, %ecx
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	movq	%r15, %r8
	movl	$1, %r9d
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	*448(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.LBB16_37:                              # %if.end43
	addq	$72, %rsp
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
.LBB16_32:                              # %if.else.i201
	.cfi_def_cfa_offset 128
	movzbl	1(%rcx), %r9d
	jmp	.LBB16_33
.Lfunc_end16:
	.size	prepare_direct_params, .Lfunc_end16-prepare_direct_params
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function perform_mc
.LCPI17_0:
	.zero	16
	.text
	.globl	perform_mc
	.p2align	4, 0x90
	.type	perform_mc,@function
perform_mc:                             # @perform_mc
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
	subq	$456, %rsp                      # imm = 0x1C8
	.cfi_def_cfa_offset 512
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r11
	movl	520(%rsp), %r13d
	movl	512(%rsp), %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	(%rdi), %r10
	movq	8(%rdi), %rbx
	cmpl	$2, %ecx
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movl	%r8d, 72(%rsp)                  # 4-byte Spill
	jne	.LBB17_1
# %bb.146:                              # %if.else2
	cmpw	$0, 13274(%r10)
	je	.LBB17_234
# %bb.147:                              # %if.then4
	movq	8(%rbx), %rax
	movl	2180(%rax), %ebp
	movslq	32(%rdi), %rax
	movslq	%r8d, %r14
	addq	%rax, %r14
	movslq	36(%rdi), %rax
	movslq	%r9d, %rcx
	addq	%rax, %rcx
	movswl	114(%rdi), %eax
	movq	152(%r11), %rdx
	movq	(%rdx,%rcx,8), %r9
	movq	%r10, %rbx
	movq	%r14, 112(%rsp)                 # 8-byte Spill
	movq	%r14, %r10
	shlq	$5, %r10
	movsbl	24(%r9,%r10), %r15d
	movl	384(%rdi), %edx
	testl	%edx, %edx
	movq	%r11, %r14
	setne	%r11b
	cmpl	$1, %ebp
	sete	%cl
	andb	%r11b, %cl
	movslq	%r15d, %rdi
	movq	%rdi, 368(%rsp)                 # 8-byte Spill
	sarl	%cl, %r15d
	leaq	(%r9,%r10), %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movsbl	25(%r9,%r10), %r10d
	movslq	%r10d, %rdi
	movq	%rdi, 360(%rsp)                 # 8-byte Spill
	sarl	%cl, %r10d
	xorl	%ecx, %ecx
	cmpl	$2, %ebp
	cmovel	%eax, %ecx
	movq	13288(%rbx), %r13
	movq	13296(%rbx), %r9
	movslq	%ecx, %r11
	movq	(%r9,%r11,8), %rbx
	movq	8(%r9,%r11,8), %r12
	movq	(%r13,%r11,8), %rcx
	movq	8(%r13,%r11,8), %r11
	movslq	%eax, %r13
	movslq	%r15d, %rax
	movq	(%rbx,%rax,8), %r9
	movslq	%r10d, %rdi
	movq	(%r12,%rax,8), %r10
	testl	%edx, %edx
	je	.LBB17_149
# %bb.148:                              # %cond.true68.i
	movl	68(%r14), %edx
	sarl	%edx
	decl	%edx
	jmp	.LBB17_150
.LBB17_1:                               # %if.then
	movslq	32(%rdi), %rax
	movslq	%r8d, %r14
	addq	%rax, %r14
	movslq	36(%rdi), %rdx
	movslq	%r9d, %rax
	addq	%rdx, %rax
	cmpw	$0, 13272(%r10)
	movq	24(%r10), %r8
	movq	1352(%r10), %rbp
	movq	1360(%r10), %rdx
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	movq	%r8, 304(%rsp)                  # 8-byte Spill
	je	.LBB17_107
# %bb.2:                                # %if.then1
	movq	152(%r11), %rdx
	movq	%r14, %r12
	shlq	$5, %r12
	addq	(%rdx,%rax,8), %r12
	movslq	%ecx, %rcx
	movsbq	24(%rcx,%r12), %rdx
	movswq	114(%rdi), %rax
	addq	%rcx, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	264(%r10,%rax,8), %rax
	cmpl	$0, 384(%rdi)
	je	.LBB17_4
# %bb.3:                                # %cond.true.i
	movl	68(%r11), %edi
	sarl	%edi
	decl	%edi
	jmp	.LBB17_5
.LBB17_234:                             # %if.else5
	movslq	32(%rdi), %rax
	movslq	%r8d, %r14
	addq	%rax, %r14
	movslq	36(%rdi), %rax
	movslq	%r9d, %rcx
	addq	%rax, %rcx
	movq	152(%r11), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%r14, %rcx
	shlq	$5, %rcx
	leaq	(%rax,%rcx), %rbp
	movsbq	24(%rax,%rcx), %r8
	movsbq	25(%rax,%rcx), %rdx
	movswq	114(%rdi), %rcx
	cmpl	$0, 384(%rdi)
	je	.LBB17_236
# %bb.235:                              # %cond.true.i218
	movl	68(%r11), %eax
	sarl	%eax
	decl	%eax
	jmp	.LBB17_237
.LBB17_107:                             # %if.else
	movq	152(%r11), %rdx
	cltq
	movslq	%r14d, %r15
	shlq	$5, %r15
	addq	(%rdx,%rax,8), %r15
	movslq	%ecx, %r12
	movsbq	24(%r12,%r15), %rcx
	movswq	114(%rdi), %rax
	addq	%r12, %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	264(%r10,%rax,8), %rax
	cmpl	$0, 384(%rdi)
	je	.LBB17_109
# %bb.108:                              # %cond.true.i62
	movl	68(%r11), %edx
	sarl	%edx
	decl	%edx
	jmp	.LBB17_110
.LBB17_149:                             # %cond.false70.i
	movl	84(%r14), %edx
.LBB17_150:                             # %cond.end71.i
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movl	40(%rdx), %r15d
	movl	268(%r14), %edx
	movl	%edx, 416(%rsp)                 # 4-byte Spill
	movq	(%r9,%rdi,8), %rdx
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	movq	(%r10,%rdi,8), %rdx
	movq	%rdx, 392(%rsp)                 # 8-byte Spill
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	movq	(%r11,%rdi,8), %rax
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	856844(%rcx), %r12d
	movq	8(%rsp), %r10                   # 8-byte Reload
	movq	264(%r10,%r13,8), %rax
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax,%rdx,8), %rdi
	movq	%r13, 432(%rsp)                 # 8-byte Spill
	movq	272(%r10,%r13,8), %rax
	movq	360(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	1352(%r10), %r9
	movq	1376(%r10), %rax
	movq	(%rax), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movq	1384(%r10), %rax
	movq	(%rax), %rax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	movl	%esi, %r8d
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movswl	16(%rbx), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	movq	1360(%r10), %r11
	movq	(%r9), %rsi
	movq	%rsi, 376(%rsp)                 # 8-byte Spill
	movq	%r11, 208(%rsp)                 # 8-byte Spill
	movq	(%r11), %rsi
	movq	%rsi, 408(%rsp)                 # 8-byte Spill
	movl	80(%r14), %r11d
	movl	356(%r14), %esi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	1368(%r10), %r14
	movl	849072(%rcx,%r8,4), %ebp
	movq	%r8, 192(%rsp)                  # 8-byte Spill
	movzwl	849060(%rcx,%r8,4), %ecx
	movw	%cx, 128(%rsp)                  # 2-byte Spill
	cmpl	$49151, %eax                    # imm = 0xBFFF
	movq	%rdi, 336(%rsp)                 # 8-byte Spill
	jbe	.LBB17_151
.LBB17_152:                             # %if.end.i.i162
	movswl	18(%rbx), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	jle	.LBB17_154
# %bb.153:                              # %if.end.i.i162
	cmpl	%ecx, %edx
	jl	.LBB17_154
.LBB17_155:                             # %check_motion_vector_range.exit.i170
	movswl	20(%rbx), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	cmpl	$49151, %eax                    # imm = 0xBFFF
	jbe	.LBB17_156
.LBB17_157:                             # %if.end.i462.i
	leal	-4(%r12), %r13d
	movswl	22(%rbx), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	jle	.LBB17_159
# %bb.158:                              # %if.end.i462.i
	cmpl	%ecx, %edx
	jl	.LBB17_159
.LBB17_160:                             # %check_motion_vector_range.exit480.i
	movq	112(%rsp), %rcx                 # 8-byte Reload
	shll	$4, %ecx
	movswl	16(%rbx), %esi
	addl	%ecx, %esi
	movswl	20(%rbx), %eax
	addl	%ecx, %eax
	movl	%eax, 188(%rsp)                 # 4-byte Spill
	addl	16(%rsp), %r15d                 # 4-byte Folded Reload
	shll	$4, %r15d
	movswl	18(%rbx), %r8d
	addl	%r15d, %r8d
	addl	%edx, %r15d
	movq	%r15, 264(%rsp)                 # 8-byte Spill
	movzwl	128(%rsp), %r10d                # 2-byte Folded Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, %r13d
	movq	%rax, %r13
	movl	%esi, 356(%rsp)                 # 4-byte Spill
	movq	%r8, 440(%rsp)                  # 8-byte Spill
	movq	%r10, 48(%rsp)                  # 8-byte Spill
	jge	.LBB17_168
# %bb.161:                              # %land.lhs.true126.i
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%r13d, %eax
	movl	$2, %r13d
	leal	(%rax,%r12), %ecx
	addl	$-2, %ecx
	subl	%r12d, %r13d
	movl	%r8d, %eax
	sarl	$2, %eax
	cmpl	%r13d, %eax
	movl	%ecx, 112(%rsp)                 # 4-byte Spill
	jl	.LBB17_167
# %bb.162:                              # %land.lhs.true126.i
	cmpl	%ecx, %eax
	jg	.LBB17_167
# %bb.163:                              # %if.end.thread565.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	%r8d, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	32(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	104(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rbx
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r11, %r14
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %r15                 # 8-byte Reload
	jmp	.LBB17_164
.LBB17_168:                             # %if.end.i172
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	%r8d, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r13d, %r8d
	movq	104(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rbx
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%r11, %r14
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	movq	328(%rsp), %rdx                 # 8-byte Reload
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	jmp	.LBB17_169
.LBB17_4:                               # %cond.false.i
	movl	84(%r11), %edi
.LBB17_5:                               # %cond.end.i
	movq	%rdi, 80(%rsp)                  # 8-byte Spill
	movl	164(%r10), %edi
	movl	%edi, 176(%rsp)                 # 4-byte Spill
	movl	268(%r11), %edi
	movl	%edi, 288(%rsp)                 # 4-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	(%rax,%rdx,8), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	80(%r11), %eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	356(%r11), %r11d
	movq	1368(%r10), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	%esi, %eax
	movl	849072(%rbx,%rax,4), %r15d
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movzwl	849060(%rbx,%rax,4), %esi
	movswl	16(%r12,%rcx,4), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	cmpl	$49151, %eax                    # imm = 0xBFFF
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jbe	.LBB17_6
.LBB17_7:                               # %if.end.i.i
	movswl	18(%r12,%rcx,4), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	jle	.LBB17_10
# %bb.8:                                # %if.end.i.i
	cmpl	%ecx, %edx
	jl	.LBB17_10
# %bb.9:
	movq	32(%rsp), %rax                  # 8-byte Reload
.LBB17_11:                              # %check_motion_vector_range.exit.i
	shll	$4, %r14d
	movswl	16(%r12,%rax,4), %eax
	addl	%r14d, %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	movl	40(%r12), %ecx
	addl	%r9d, %ecx
	shll	$4, %ecx
	addl	%edx, %ecx
	movl	856844(%rbx), %eax
	addl	$-4, %eax
	movzwl	%si, %r14d
	cmpl	%r13d, %eax
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	jge	.LBB17_14
# %bb.12:                               # %land.lhs.true.i
	movq	%r12, %rdi
	movl	%ecx, %esi
	movl	%r13d, %edx
	movq	%r11, %rbx
	callq	CheckVertMV@PLT
	movq	%rbx, %r11
	movq	240(%rsp), %rcx                 # 8-byte Reload
	testl	%eax, %eax
	je	.LBB17_14
# %bb.13:                               # %if.then.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	movl	56(%rsp), %esi                  # 4-byte Reload
	movl	%ecx, %edx
	movq	8(%rsp), %r13                   # 8-byte Reload
	movl	%r13d, %ecx
	movl	$8, %r8d
	movq	%rbp, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	224(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	120(%rsp), %rax                 # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	176(%rsp), %rax                 # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	%r11, 288(%rsp)                 # 8-byte Spill
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	240(%rsp), %rax                 # 8-byte Reload
	leal	32(%rax), %edx
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	-8(%rax), %r8d
	leaq	64(%rbp), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movl	56(%rsp), %esi                  # 4-byte Reload
	movl	%r13d, %ecx
	movq	32(%rsp), %r13                  # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	224(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	120(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	280(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	jmp	.LBB17_15
.LBB17_14:                              # %if.else.i
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	120(%rsp), %rdi                 # 8-byte Reload
	movl	56(%rsp), %esi                  # 4-byte Reload
	movl	%ecx, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r13d, %r8d
	movq	%rbp, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	224(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	120(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	176(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
.LBB17_15:                              # %if.end.i
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	cmpl	$0, 384(%r12)
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %r12
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	176(%rsp), %esi                 # 4-byte Reload
	je	.LBB17_21
# %bb.16:                               # %land.lhs.true42.i
	movq	8(%rax), %rax
	cmpl	$0, 2176(%rax)
	je	.LBB17_19
# %bb.17:                               # %land.lhs.true44.i
	testl	%esi, %esi
	je	.LBB17_20
# %bb.18:                               # %land.lhs.true44.i
	cmpl	$3, %esi
	je	.LBB17_20
.LBB17_19:                              # %lor.lhs.false49.i
	movl	2180(%rax), %eax
	xorl	$1, %eax
	xorl	$1, %esi
	orl	%eax, %esi
	movq	%rdx, %r12
	jne	.LBB17_21
.LBB17_20:                              # %if.then56.i
	movl	%edx, %eax
	sarb	%al
	movsbq	%al, %r12
.LBB17_21:                              # %if.end60.i
	shll	$2, %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	shll	$2, 72(%rsp)                    # 4-byte Folded Spill
	testl	%r13d, %r13d
	jle	.LBB17_48
# %bb.22:                               # %for.cond1.preheader.lr.ph.i.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzwl	13276(%rax), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_48
# %bb.23:                               # %for.cond1.preheader.lr.ph.split.us.i.i
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	13280(%rsi), %rcx
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	(%rcx,%rdi,8), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	(%rcx), %edx
	movq	13288(%rsi), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	(%rcx), %edi
	movq	1248(%rsi), %rcx
	movslq	16(%rsp), %r8                   # 4-byte Folded Reload
	shlq	$3, %r8
	movq	168(%rsp), %rsi                 # 8-byte Reload
	addq	(%rcx,%rsi,8), %r8
	movslq	72(%rsp), %r9                   # 4-byte Folded Reload
	movl	24(%rsp), %r10d                 # 4-byte Reload
	movl	(%rsp), %r11d                   # 4-byte Reload
	testl	%eax, %eax
	je	.LBB17_32
# %bb.24:                               # %for.cond1.preheader.us.us.i.i.preheader
	addq	%r9, %r9
	xorl	%r14d, %r14d
	jmp	.LBB17_25
	.p2align	4, 0x90
.LBB17_31:                              # %for.cond1.for.inc13_crit_edge.split.us.us.us.i.i
                                        #   in Loop: Header=BB17_25 Depth=1
	incq	%r14
	cmpq	%r10, %r14
	je	.LBB17_48
.LBB17_25:                              # %for.cond1.preheader.us.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_26 Depth 2
	xorl	%esi, %esi
	jmp	.LBB17_26
	.p2align	4, 0x90
.LBB17_30:                              # %for.body3.us.us.us.i.i
                                        #   in Loop: Header=BB17_26 Depth=2
	movq	(%r8,%r14,8), %rcx
	addq	%r9, %rcx
	movw	%r13w, (%rcx,%rsi,2)
	incq	%rsi
	cmpq	%rsi, %r11
	je	.LBB17_31
.LBB17_26:                              # %for.body3.us.us.us.i.i
                                        #   Parent Loop BB17_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%r14,8), %rcx
	movzwl	(%rcx,%rsi,2), %r13d
	imull	%edx, %r13d
	addl	%ebx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	addl	%edi, %r13d
	testl	%r13d, %r13d
	jg	.LBB17_28
# %bb.27:                               # %for.body3.us.us.us.i.i
                                        #   in Loop: Header=BB17_26 Depth=2
	xorl	%r13d, %r13d
.LBB17_28:                              # %for.body3.us.us.us.i.i
                                        #   in Loop: Header=BB17_26 Depth=2
	cmpl	%r15d, %r13d
	jl	.LBB17_30
# %bb.29:                               # %for.body3.us.us.us.i.i
                                        #   in Loop: Header=BB17_26 Depth=2
	movl	%r15d, %r13d
	jmp	.LBB17_30
.LBB17_167:                             # %if.end.thread.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rax
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	movq	%rdi, %r14
	movl	%r8d, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r8, %r12
	movl	$8, %r8d
	movq	%r9, %rbx
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	136(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	%r11, 192(%rsp)                 # 8-byte Spill
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	leal	32(%r12), %edx
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	-8(%rax), %r8d
	addq	$64, %rbx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rdi
	movl	364(%rsp), %esi                 # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	104(%rsp), %r12                 # 8-byte Reload
	movq	%rbx, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rbx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	176(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %r14
	pushq	%rax
	.cfi_adjust_cfa_offset 8
.LBB17_164:                             # %land.lhs.true131.i
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	264(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %eax
	sarl	$2, %eax
	cmpl	%r13d, %eax
	movq	24(%rsp), %r13                  # 8-byte Reload
	jl	.LBB17_166
# %bb.165:                              # %land.lhs.true131.i
	cmpl	112(%rsp), %eax                 # 4-byte Folded Reload
	jg	.LBB17_166
.LBB17_169:                             # %if.else138.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movl	196(%rsp), %esi                 # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r13d, %r8d
	movq	216(%rsp), %r9                  # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	jmp	.LBB17_170
.LBB17_166:                             # %if.then134.i
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movl	196(%rsp), %esi                 # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	%r15, %r10
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$8, %r8d
	movq	216(%rsp), %r15                 # 8-byte Reload
	movq	%r15, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	movq	72(%rsp), %rax                  # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	264(%rsp), %rax                 # 8-byte Reload
	leal	32(%rax), %edx
	leal	-8(%r13), %r8d
	addq	$64, %r15
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	288(%rsp), %rdi                 # 8-byte Reload
	movl	196(%rsp), %esi                 # 4-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movq	%r15, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	136(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
.LBB17_170:                             # %if.end139.i
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	shll	$2, 72(%rsp)                    # 4-byte Folded Spill
	shll	$2, 16(%rsp)                    # 4-byte Folded Spill
	testl	%r13d, %r13d
	movq	376(%rsp), %rbx                 # 8-byte Reload
	jle	.LBB17_188
# %bb.171:                              # %for.cond1.preheader.lr.ph.i.i186
	movq	8(%rsp), %rax                   # 8-byte Reload
	movzwl	13276(%rax), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_188
# %bb.172:                              # %for.cond1.preheader.us.i.preheader.i
	movq	328(%rsp), %rdx                 # 8-byte Reload
	movl	(%rdx), %edx
	movq	344(%rsp), %rsi                 # 8-byte Reload
	movl	(%rsi), %esi
	addl	%esi, %edx
	incl	%edx
	sarl	%edx
	movq	400(%rsp), %rsi                 # 8-byte Reload
	movl	(%rsi), %esi
	movq	392(%rsp), %rdi                 # 8-byte Reload
	movl	(%rdi), %edi
	incl	%ecx
	movl	$16, %r8d
	movq	(%rsp), %r11                    # 8-byte Reload
	subl	%r11d, %r8d
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	1248(%r9), %r9
	movq	192(%rsp), %r10                 # 8-byte Reload
	movq	(%r9,%r10,8), %r9
	movslq	16(%rsp), %r10                  # 4-byte Folded Reload
	movslq	72(%rsp), %r13                  # 4-byte Folded Reload
	addq	%r13, %r13
	addq	(%r9,%r10,8), %r13
	movslq	%r8d, %r8
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movl	%r11d, %r8d
	movq	%r8, 232(%rsp)                  # 8-byte Spill
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	andl	$2147483616, %r8d               # imm = 0x7FFFFFE0
	movq	%r8, 224(%rsp)                  # 8-byte Spill
	addl	%r8d, %r8d
	movq	%r8, 424(%rsp)                  # 8-byte Spill
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm2                # xmm2 = xmm0[0,0,0,0]
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	%ecx, %xmm0
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm4                # xmm4 = xmm1[0,0,0,0]
	movd	%ebp, %xmm1
	pshufd	$0, %xmm1, %xmm12               # xmm12 = xmm1[0,0,0,0]
	xorl	%r11d, %r11d
	pxor	%xmm13, %xmm13
	pshufd	$245, %xmm9, %xmm1              # xmm1 = xmm9[1,1,3,3]
	pshufd	$245, %xmm2, %xmm5              # xmm5 = xmm2[1,1,3,3]
	xorps	%xmm6, %xmm6
	movss	%xmm0, %xmm6                    # xmm6 = xmm0[0],xmm6[1,2,3]
	movq	%rbx, %r8
	movq	408(%rsp), %r14                 # 8-byte Reload
	movdqa	%xmm9, 208(%rsp)                # 16-byte Spill
	movdqa	%xmm12, 112(%rsp)               # 16-byte Spill
	movdqa	%xmm1, 128(%rsp)                # 16-byte Spill
	movaps	%xmm6, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm5, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm2, 240(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 304(%rsp)                # 16-byte Spill
	movdqa	%xmm4, 288(%rsp)                # 16-byte Spill
	jmp	.LBB17_173
	.p2align	4, 0x90
.LBB17_186:                             # %for.cond1.for.end_crit_edge.us.i.i.loopexit
                                        #   in Loop: Header=BB17_173 Depth=1
	subq	%r8, %r10
	subq	%r8, %r12
	subq	%r8, %rbx
.LBB17_187:                             # %for.cond1.for.end_crit_edge.us.i.i
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	176(%rsp), %r9                  # 8-byte Reload
	leaq	(%r10,%r9,2), %r13
	leaq	(%r12,%r9,2), %r8
	leaq	(%rbx,%r9,2), %r14
	incl	%r11d
	cmpl	24(%rsp), %r11d                 # 4-byte Folded Reload
	je	.LBB17_188
.LBB17_173:                             # %for.cond1.preheader.us.i.i189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_178 Depth 2
                                        #     Child Loop BB17_181 Depth 2
	cmpl	$32, (%rsp)                     # 4-byte Folded Reload
	jae	.LBB17_175
.LBB17_174:                             #   in Loop: Header=BB17_173 Depth=1
	movq	%r13, %r10
	movq	%r8, %r12
	xorl	%r8d, %r8d
	movq	%r14, %rbx
.LBB17_180:                             # %for.body3.us.i.i.preheader
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	(%rsp), %r14                    # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	%r8d, %r14d
	xorl	%r8d, %r8d
	xorl	%r15d, %r15d
	jmp	.LBB17_181
	.p2align	4, 0x90
.LBB17_185:                             # %for.body3.us.i.i
                                        #   in Loop: Header=BB17_181 Depth=2
	movw	%r13w, (%r10,%r15,2)
	incq	%r15
	addq	$-2, %r8
	cmpl	%r15d, %r14d
	je	.LBB17_186
.LBB17_181:                             # %for.body3.us.i.i
                                        #   Parent Loop BB17_173 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%r15,2), %r13d
	imull	%esi, %r13d
	movzwl	(%rbx,%r15,2), %r9d
	imull	%edi, %r9d
	addl	%eax, %r13d
	addl	%r9d, %r13d
	sarl	%cl, %r13d
	addl	%edx, %r13d
	testl	%r13d, %r13d
	jg	.LBB17_183
# %bb.182:                              # %for.body3.us.i.i
                                        #   in Loop: Header=BB17_181 Depth=2
	xorl	%r13d, %r13d
.LBB17_183:                             # %for.body3.us.i.i
                                        #   in Loop: Header=BB17_181 Depth=2
	cmpl	%ebp, %r13d
	jl	.LBB17_185
# %bb.184:                              # %for.body3.us.i.i
                                        #   in Loop: Header=BB17_181 Depth=2
	movl	%ebp, %r13d
	jmp	.LBB17_185
	.p2align	4, 0x90
.LBB17_175:                             # %vector.memcheck
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	%r13, %r10
	subq	%r8, %r10
	cmpq	$64, %r10
	jb	.LBB17_174
# %bb.176:                              # %vector.memcheck
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	%r13, %r10
	subq	%r14, %r10
	cmpq	$64, %r10
	jb	.LBB17_174
# %bb.177:                              # %vector.ph
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	%r11, 168(%rsp)                 # 8-byte Spill
	movq	424(%rsp), %r9                  # 8-byte Reload
	leaq	(%r9,%r13), %r10
	leaq	(%r8,%r9), %r12
	leaq	(%r14,%r9), %rbx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB17_178:                             # %vector.body
                                        #   Parent Loop BB17_173 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r8,%r15), %xmm6
	movdqu	16(%r8,%r15), %xmm5
	movdqu	32(%r8,%r15), %xmm2
	movdqu	48(%r8,%r15), %xmm0
	movdqa	%xmm6, %xmm7
	punpckhwd	%xmm13, %xmm7           # xmm7 = xmm7[4],xmm13[4],xmm7[5],xmm13[5],xmm7[6],xmm13[6],xmm7[7],xmm13[7]
	punpcklwd	%xmm13, %xmm6           # xmm6 = xmm6[0],xmm13[0],xmm6[1],xmm13[1],xmm6[2],xmm13[2],xmm6[3],xmm13[3]
	movdqa	%xmm5, %xmm4
	punpckhwd	%xmm13, %xmm4           # xmm4 = xmm4[4],xmm13[4],xmm4[5],xmm13[5],xmm4[6],xmm13[6],xmm4[7],xmm13[7]
	punpcklwd	%xmm13, %xmm5           # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm13, %xmm3           # xmm3 = xmm3[4],xmm13[4],xmm3[5],xmm13[5],xmm3[6],xmm13[6],xmm3[7],xmm13[7]
	punpcklwd	%xmm13, %xmm2           # xmm2 = xmm2[0],xmm13[0],xmm2[1],xmm13[1],xmm2[2],xmm13[2],xmm2[3],xmm13[3]
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm13, %xmm1           # xmm1 = xmm1[4],xmm13[4],xmm1[5],xmm13[5],xmm1[6],xmm13[6],xmm1[7],xmm13[7]
	punpcklwd	%xmm13, %xmm0           # xmm0 = xmm0[0],xmm13[0],xmm0[1],xmm13[1],xmm0[2],xmm13[2],xmm0[3],xmm13[3]
	movdqa	%xmm9, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm10             # xmm10 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	128(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movdqa	%xmm10, 32(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm12             # xmm12 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm13             # xmm13 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm15             # xmm15 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm15           # xmm15 = xmm15[0],xmm2[0],xmm15[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm14             # xmm14 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm11             # xmm11 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movdqu	(%r14,%r15), %xmm1
	movdqu	16(%r14,%r15), %xmm7
	movdqu	32(%r14,%r15), %xmm8
	movdqu	48(%r14,%r15), %xmm9
	movdqa	%xmm1, %xmm6
	punpcklwd	.LCPI17_0(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm7, %xmm4
	punpcklwd	.LCPI17_0(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqa	%xmm8, %xmm5
	punpcklwd	.LCPI17_0(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm8  # xmm8 = xmm8[4],mem[4],xmm8[5],mem[5],xmm8[6],mem[6],xmm8[7],mem[7]
	movdqa	240(%rsp), %xmm10               # 16-byte Reload
	movdqa	%xmm10, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	movdqa	144(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movdqa	%xmm10, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	movdqa	%xmm10, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm2, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	movdqa	%xmm10, %xmm7
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	movdqa	%xmm10, %xmm4
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm2, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	movdqa	%xmm10, %xmm8
	pmuludq	%xmm5, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm8            # xmm8 = xmm8[0],xmm5[0],xmm8[1],xmm5[1]
	movdqa	%xmm9, %xmm0
	punpckhwd	.LCPI17_0(%rip), %xmm9  # xmm9 = xmm9[4],mem[4],xmm9[5],mem[5],xmm9[6],mem[6],xmm9[7],mem[7]
	movdqa	%xmm10, %xmm5
	pmuludq	%xmm9, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm2, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm5            # xmm5 = xmm5[0],xmm9[0],xmm5[1],xmm9[1]
	punpcklwd	.LCPI17_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm9             # xmm9 = xmm10[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1]
	movdqa	304(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm12
	paddd	%xmm3, %xmm12
	movdqa	%xmm12, %xmm3
	movdqa	32(%rsp), %xmm12                # 16-byte Reload
	paddd	%xmm0, %xmm12
	paddd	%xmm1, %xmm12
	movdqa	%xmm12, %xmm1
	paddd	%xmm0, %xmm13
	paddd	%xmm6, %xmm13
	movdqa	48(%rsp), %xmm2                 # 16-byte Reload
	paddd	%xmm0, %xmm2
	paddd	%xmm7, %xmm2
	paddd	%xmm0, %xmm15
	paddd	%xmm4, %xmm15
	movdqa	80(%rsp), %xmm7                 # 16-byte Reload
	paddd	%xmm0, %xmm7
	paddd	%xmm8, %xmm7
	paddd	%xmm0, %xmm11
	paddd	%xmm5, %xmm11
	paddd	%xmm0, %xmm14
	paddd	%xmm9, %xmm14
	movdqa	192(%rsp), %xmm0                # 16-byte Reload
	psrad	%xmm0, %xmm3
	psrad	%xmm0, %xmm1
	psrad	%xmm0, %xmm13
	psrad	%xmm0, %xmm2
	psrad	%xmm0, %xmm15
	psrad	%xmm0, %xmm7
	psrad	%xmm0, %xmm11
	psrad	%xmm0, %xmm14
	movdqa	288(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm13
	paddd	%xmm0, %xmm7
	paddd	%xmm0, %xmm15
	paddd	%xmm0, %xmm14
	paddd	%xmm0, %xmm11
	movdqa	%xmm3, %xmm5
	pcmpgtd	.LCPI17_0(%rip), %xmm5
	pand	%xmm3, %xmm5
	movdqa	112(%rsp), %xmm12               # 16-byte Reload
	movdqa	%xmm1, %xmm3
	pcmpgtd	.LCPI17_0(%rip), %xmm3
	pand	%xmm1, %xmm3
	movdqa	%xmm13, %xmm0
	pcmpgtd	.LCPI17_0(%rip), %xmm0
	pand	%xmm13, %xmm0
	movdqa	%xmm2, %xmm8
	pcmpgtd	.LCPI17_0(%rip), %xmm8
	pand	%xmm2, %xmm8
	movdqa	%xmm15, %xmm6
	pcmpgtd	.LCPI17_0(%rip), %xmm6
	pand	%xmm15, %xmm6
	movdqa	%xmm7, %xmm4
	pcmpgtd	.LCPI17_0(%rip), %xmm4
	pand	%xmm7, %xmm4
	pxor	%xmm13, %xmm13
	movdqa	%xmm11, %xmm1
	pcmpgtd	%xmm13, %xmm1
	pand	%xmm11, %xmm1
	movdqa	%xmm14, %xmm7
	pcmpgtd	%xmm13, %xmm7
	pand	%xmm14, %xmm7
	movdqa	%xmm12, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm12, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm12, %xmm3
	pcmpgtd	%xmm5, %xmm3
	pand	%xmm3, %xmm5
	pandn	%xmm12, %xmm3
	por	%xmm5, %xmm3
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pand	%xmm9, %xmm8
	pandn	%xmm12, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm12, %xmm10
	pcmpgtd	%xmm0, %xmm10
	pand	%xmm10, %xmm0
	pandn	%xmm12, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm12, %xmm0
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm0, %xmm4
	pandn	%xmm12, %xmm0
	por	%xmm4, %xmm0
	movdqa	%xmm12, %xmm4
	pcmpgtd	%xmm6, %xmm4
	pand	%xmm4, %xmm6
	pandn	%xmm12, %xmm4
	por	%xmm6, %xmm4
	movdqa	%xmm12, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm12, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm12, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm5, %xmm1
	pandn	%xmm12, %xmm5
	por	%xmm1, %xmm5
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	packssdw	%xmm3, %xmm2
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm10, %xmm9
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	packssdw	%xmm4, %xmm0
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm5, %xmm6
	movdqu	%xmm2, (%r13,%r15)
	movdqu	%xmm9, 16(%r13,%r15)
	movdqa	208(%rsp), %xmm9                # 16-byte Reload
	movdqu	%xmm0, 32(%r13,%r15)
	movdqu	%xmm6, 48(%r13,%r15)
	addq	$64, %r15
	cmpq	%r15, %r9
	jne	.LBB17_178
# %bb.179:                              # %middle.block
                                        #   in Loop: Header=BB17_173 Depth=1
	movq	224(%rsp), %r9                  # 8-byte Reload
	movl	%r9d, %r8d
	cmpl	232(%rsp), %r9d                 # 4-byte Folded Reload
	movq	168(%rsp), %r11                 # 8-byte Reload
	je	.LBB17_187
	jmp	.LBB17_180
.LBB17_188:                             # %weighted_bi_prediction.exit.i
	movl	416(%rsp), %ebx                 # 4-byte Reload
	testl	%ebx, %ebx
	movq	384(%rsp), %r10                 # 8-byte Reload
	je	.LBB17_301
# %bb.189:                              # %weighted_bi_prediction.exit.i
	cmpl	$3, %ebx
	je	.LBB17_301
# %bb.190:                              # %if.then160.i
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 384(%rax)
	movl	16(%rsp), %r9d                  # 4-byte Reload
	je	.LBB17_192
# %bb.191:                              # %cond.true165.i
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	76(%rcx), %eax
	sarl	%eax
	decl	%eax
	jmp	.LBB17_193
.LBB17_236:                             # %cond.false.i288
	movl	84(%r11), %eax
.LBB17_237:                             # %cond.end.i222
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	40(%rdi), %r12d
	movl	268(%r11), %eax
	movl	%eax, 240(%rsp)                 # 4-byte Spill
	movl	856844(%rbx), %r15d
	movq	264(%r10,%rcx,8), %rax
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movq	272(%r10,%rcx,8), %rcx
	movq	%r8, 376(%rsp)                  # 8-byte Spill
	movq	(%rax,%r8,8), %rdi
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	movq	(%rcx,%rdx,8), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	1352(%r10), %rax
	movq	1360(%r10), %rcx
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	(%rcx), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movq	1376(%r10), %rax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movq	(%rax), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	1384(%r10), %rcx
	movl	%esi, %esi
	movswl	16(%rbp), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	movq	(%rcx), %rcx
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	movl	80(%r11), %ecx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movl	356(%r11), %ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	1368(%r10), %r11
	movl	849072(%rbx,%rsi,4), %r13d
	movq	%rsi, 232(%rsp)                 # 8-byte Spill
	movzwl	849060(%rbx,%rsi,4), %ecx
	movw	%cx, 144(%rsp)                  # 2-byte Spill
	cmpl	$49151, %eax                    # imm = 0xBFFF
	movq	%rdi, 168(%rsp)                 # 8-byte Spill
	jbe	.LBB17_238
.LBB17_239:                             # %if.end.i.i234
	movswl	18(%rbp), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	jle	.LBB17_241
# %bb.240:                              # %if.end.i.i234
	cmpl	%ecx, %edx
	jl	.LBB17_241
.LBB17_242:                             # %check_motion_vector_range.exit.i242
	movswl	20(%rbp), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	cmpl	$49151, %eax                    # imm = 0xBFFF
	movq	%r12, %rbx
	jbe	.LBB17_243
.LBB17_244:                             # %if.end.i337.i
	leal	-4(%r15), %r12d
	movswl	22(%rbp), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	jle	.LBB17_246
# %bb.245:                              # %if.end.i337.i
	cmpl	%ecx, %edx
	jl	.LBB17_246
.LBB17_247:                             # %check_motion_vector_range.exit355.i
	shll	$4, %r14d
	movswl	16(%rbp), %esi
	addl	%r14d, %esi
	movswl	20(%rbp), %eax
	addl	%r14d, %eax
	movl	%eax, 112(%rsp)                 # 4-byte Spill
	addl	%r9d, %ebx
	shll	$4, %ebx
	movswl	18(%rbp), %r14d
	addl	%ebx, %r14d
	addl	%edx, %ebx
	movzwl	144(%rsp), %r10d                # 2-byte Folded Reload
	movq	24(%rsp), %r8                   # 8-byte Reload
	cmpl	%r8d, %r12d
	movq	%rbx, 288(%rsp)                 # 8-byte Spill
	movl	%esi, 188(%rsp)                 # 4-byte Spill
	movq	%r14, 176(%rsp)                 # 8-byte Spill
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	jge	.LBB17_255
# %bb.248:                              # %land.lhs.true.i271
	movq	32(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%r8d, %eax
	movl	$2, %r12d
	leal	(%rax,%r15), %ecx
	addl	$-2, %ecx
	subl	%r15d, %r12d
	movl	%r14d, %eax
	sarl	$2, %eax
	cmpl	%r12d, %eax
	movq	(%rsp), %rbp                    # 8-byte Reload
	movl	%ecx, 344(%rsp)                 # 4-byte Spill
	movq	%r11, 328(%rsp)                 # 8-byte Spill
	jl	.LBB17_254
# %bb.249:                              # %land.lhs.true.i271
	cmpl	%ecx, %eax
	jg	.LBB17_254
# %bb.250:                              # %if.end.thread452.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	%r14d, %edx
	movl	%ebp, %ecx
	movq	32(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movq	88(%rsp), %r9                   # 8-byte Reload
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	movq	%r11, %r13
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	352(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB17_251
.LBB17_255:                             # %if.end.i244
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	%r14d, %edx
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movl	%ebp, %ecx
                                        # kill: def $r8d killed $r8d killed $r8
	movq	88(%rsp), %r9                   # 8-byte Reload
	movq	104(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	movq	%r11, %r13
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	352(%rsp), %r14                 # 8-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	jmp	.LBB17_256
.LBB17_109:                             # %cond.false.i132
	movl	84(%r11), %edx
.LBB17_110:                             # %cond.end.i66
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	268(%r11), %edx
	movl	%edx, 240(%rsp)                 # 4-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	80(%r11), %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	356(%r11), %r11d
	movq	1368(%r10), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	%esi, %eax
	movl	849072(%rbx,%rax,4), %ecx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movzwl	849060(%rbx,%rax,4), %esi
	movswl	16(%r15,%r12,4), %edx
	leal	-8192(%rdx), %eax
	movzwl	%ax, %eax
	cmpl	$49151, %eax                    # imm = 0xBFFF
	jbe	.LBB17_111
.LBB17_112:                             # %if.end.i.i77
	movswl	18(%r15,%r12,4), %edx
	movl	13336(%r10), %r8d
	movl	%r8d, %ecx
	negl	%ecx
	cmpl	%edx, %r8d
	jle	.LBB17_114
# %bb.113:                              # %if.end.i.i77
	cmpl	%ecx, %edx
	jl	.LBB17_114
.LBB17_115:                             # %check_motion_vector_range.exit.i85
	shll	$4, %r14d
	movswl	16(%r15,%r12,4), %eax
	addl	%r14d, %eax
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	movl	40(%r12), %r15d
	addl	%r9d, %r15d
	shll	$4, %r15d
	addl	%edx, %r15d
	movl	856844(%rbx), %eax
	addl	$-4, %eax
	cmpl	%r13d, %eax
	movq	%r15, 144(%rsp)                 # 8-byte Spill
	jge	.LBB17_118
# %bb.116:                              # %land.lhs.true.i114
	movq	%r12, %rdi
	movl	%esi, %r14d
	movl	%r15d, %esi
	movl	%r13d, %edx
	movq	%r11, %rbx
	callq	CheckVertMV@PLT
	movl	%r14d, %esi
	movq	%rbx, %r11
	testl	%eax, %eax
	je	.LBB17_118
# %bb.117:                              # %if.then.i117
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movzwl	%si, %eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	movl	88(%rsp), %r14d                 # 4-byte Reload
	movl	%r14d, %esi
	movl	%r15d, %edx
	movq	8(%rsp), %r15                   # 8-byte Reload
	movl	%r15d, %ecx
	movl	$8, %r8d
	movq	%rbp, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	216(%rsp), %rax                 # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	72(%rsp), %rax                  # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	160(%rsp), %rax                 # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	%r11, 288(%rsp)                 # 8-byte Spill
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	144(%rsp), %rax                 # 8-byte Reload
	leal	32(%rax), %edx
	leal	-8(%r13), %r8d
	leaq	64(%rbp), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	%r15d, %ecx
	movq	152(%rsp), %r15                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	248(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	280(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	jmp	.LBB17_119
.LBB17_118:                             # %if.else.i97
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movzwl	%si, %eax
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	88(%rsp), %esi                  # 4-byte Reload
	movl	%r15d, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r13d, %r8d
	movq	%rbp, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	216(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
.LBB17_119:                             # %if.end.i98
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movl	16(%rsp), %ecx                  # 4-byte Reload
	shll	$2, %ecx
	shll	$2, 72(%rsp)                    # 4-byte Folded Spill
	testl	%r13d, %r13d
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	jle	.LBB17_126
# %bb.120:                              # %for.body.lr.ph.i.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movq	288(%rsp), %rdx                 # 8-byte Reload
	movq	(%rax,%rdx,8), %rdx
	movslq	%ecx, %rsi
	movslq	72(%rsp), %rcx                  # 4-byte Folded Reload
	movslq	(%rsp), %r12                    # 4-byte Folded Reload
	addq	%r12, %r12
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %r14d
	cmpl	$1, %eax
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	jne	.LBB17_122
# %bb.121:
	xorl	%ebx, %ebx
	jmp	.LBB17_124
.LBB17_122:                             # %for.body.lr.ph.i.i.new
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	andl	$2147483646, %r14d              # imm = 0x7FFFFFFE
	leaq	(%rdx,%rsi,8), %r15
	addq	$8, %r15
	xorl	%ebx, %ebx
	leaq	(%rcx,%rcx), %r13
	.p2align	4, 0x90
.LBB17_123:                             # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%rbx,8), %rdi
	addq	%r13, %rdi
	movq	(%rbp,%rbx,8), %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	(%r15,%rbx,8), %rdi
	addq	%r13, %rdi
	movq	8(%rbp,%rbx,8), %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	addq	$2, %rbx
	cmpq	%rbx, %r14
	jne	.LBB17_123
.LBB17_124:                             # %mc_prediction.exit.i.loopexit.unr-lcssa
	testb	$1, 32(%rsp)                    # 1-byte Folded Reload
	movq	144(%rsp), %r15                 # 8-byte Reload
	je	.LBB17_126
# %bb.125:                              # %for.body.i.i.epil
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	192(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	112(%rsp), %rdi                 # 8-byte Reload
	addq	%rdi, %rdi
	addq	(%rax,%rbx,8), %rdi
	movq	(%rbp,%rbx,8), %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
.LBB17_126:                             # %mc_prediction.exit.i
	movl	240(%rsp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	je	.LBB17_301
# %bb.127:                              # %mc_prediction.exit.i
	cmpl	$3, %eax
	je	.LBB17_301
# %bb.128:                              # %if.then49.i
	xorl	%edx, %edx
	movq	304(%rsp), %rax                 # 8-byte Reload
	cmpl	$1, 36(%rax)
	jne	.LBB17_130
# %bb.129:                              # %cond.true53.i
	movq	168(%rsp), %rcx                 # 8-byte Reload
	shlq	$4, %rcx
	addq	8(%rsp), %rcx                   # 8-byte Folded Reload
	movq	176(%rsp), %rax                 # 8-byte Reload
	movsbl	13552(%rax,%rcx), %edx
.LBB17_130:                             # %cond.end61.i
	addl	%r15d, %edx
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movl	849212(%rsi), %ebx
	movl	849196(%rsi), %eax
	movl	849200(%rsi), %r8d
	movl	849204(%rsi), %r11d
	movl	849208(%rsi), %r10d
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	88(%rcx), %r9d
	movq	96(%rsp), %rdi                  # 8-byte Reload
	cmpl	$0, 384(%rdi)
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	je	.LBB17_132
# %bb.131:                              # %cond.true73.i
	movl	76(%rcx), %r10d
	sarl	%r10d
	decl	%r10d
	jmp	.LBB17_133
.LBB17_254:                             # %if.end.thread.i275
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rdi, %rbx
	movl	%esi, %r15d
	movl	%r14d, %edx
	movl	%ebp, %ecx
	movl	$8, %r8d
	movq	88(%rsp), %r9                   # 8-byte Reload
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	movq	72(%rsp), %rax                  # 8-byte Reload
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	352(%rsp), %r14                 # 8-byte Reload
	movq	%r10, %r13
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movq	176(%rsp), %rax                 # 8-byte Reload
	leal	32(%rax), %edx
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	-8(%rax), %r8d
	movq	80(%rsp), %rax                  # 8-byte Reload
	leaq	64(%rax), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movl	%r15d, %esi
	movl	%ebp, %ecx
	pushq	104(%rsp)                       # 8-byte Folded Reload
	movq	304(%rsp), %rbx                 # 8-byte Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	152(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	360(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %r13
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
.LBB17_251:                             # %land.lhs.true73.i
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movl	%ebx, %eax
	sarl	$2, %eax
	cmpl	%r12d, %eax
	movq	96(%rsp), %r15                  # 8-byte Reload
	jl	.LBB17_253
# %bb.252:                              # %land.lhs.true73.i
	cmpl	344(%rsp), %eax                 # 4-byte Folded Reload
	jg	.LBB17_253
.LBB17_256:                             # %if.else80.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	120(%rsp), %esi                 # 4-byte Reload
	movl	%ebx, %edx
	movl	%ebp, %ecx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %r8d
	movq	200(%rsp), %r9                  # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	152(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	jmp	.LBB17_257
.LBB17_253:                             # %if.then76.i
	.cfi_def_cfa_offset 512
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	120(%rsp), %esi                 # 4-byte Reload
	movl	%ebx, %edx
	movl	%ebp, %ecx
	movl	$8, %r8d
	movq	200(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %r9
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	152(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	72(%rsp), %r13                  # 8-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	leal	32(%rbx), %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	leal	-8(%rbx), %r8d
	leaq	64(%r12), %r9
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movl	120(%rsp), %esi                 # 4-byte Reload
	movl	%ebp, %ecx
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	152(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	360(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
.LBB17_257:                             # %if.end81.i
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	get_block_luma
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	shll	$2, 16(%rsp)                    # 4-byte Folded Spill
	shll	$2, 72(%rsp)                    # 4-byte Folded Spill
	testl	%ebx, %ebx
	jle	.LBB17_270
# %bb.258:                              # %for.cond4.preheader.lr.ph.i.i
	testl	%ebp, %ebp
	jle	.LBB17_270
# %bb.259:                              # %for.cond4.preheader.us.preheader.i.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movslq	16(%rsp), %rcx                  # 4-byte Folded Reload
	movq	(%rax,%rcx,8), %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rbx
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %r12
	movl	$16, %eax
	subl	%ebp, %eax
	cltq
	movslq	72(%rsp), %rdx                  # 4-byte Folded Reload
	leaq	(%rcx,%rdx,2), %r13
	leal	-1(%rbp), %ecx
	shrl	%ecx
	leaq	4(,%rcx,4), %rdx
	incl	%ecx
	movl	%ecx, %esi
	andl	$-16, %esi
	leaq	(,%rsi,4), %rdi
	leal	(%rsi,%rsi), %r8d
	xorl	%r9d, %r9d
	jmp	.LBB17_260
	.p2align	4, 0x90
.LBB17_269:                             # %for.cond4.for.end_crit_edge.us.i.i
                                        #   in Loop: Header=BB17_260 Depth=1
	leaq	(%r10,%rax,2), %r13
	leaq	(%r14,%rax,2), %rbx
	leaq	(%r11,%rax,2), %r12
	incl	%r9d
	cmpl	24(%rsp), %r9d                  # 4-byte Folded Reload
	je	.LBB17_270
.LBB17_260:                             # %for.cond4.preheader.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_266 Depth 2
                                        #     Child Loop BB17_268 Depth 2
	cmpl	$31, %ebp
	jae	.LBB17_262
# %bb.261:                              #   in Loop: Header=BB17_260 Depth=1
	movq	%r13, %r10
	xorl	%r13d, %r13d
	movq	%r12, %r11
	movq	%rbx, %r14
	jmp	.LBB17_268
	.p2align	4, 0x90
.LBB17_262:                             # %vector.memcheck475
                                        #   in Loop: Header=BB17_260 Depth=1
	leaq	(%rdx,%r13), %r11
	leaq	(%rbx,%rdx), %r10
	leaq	(%r12,%rdx), %r14
	cmpq	%r10, %r13
	setb	%bpl
	cmpq	%r11, %rbx
	setb	%r15b
	cmpq	%r14, %r13
	setb	%r10b
	cmpq	%r11, %r12
	setb	%r11b
	testb	%r15b, %bpl
	jne	.LBB17_263
# %bb.264:                              # %vector.memcheck475
                                        #   in Loop: Header=BB17_260 Depth=1
	andb	%r11b, %r10b
	jne	.LBB17_263
# %bb.265:                              # %vector.ph485
                                        #   in Loop: Header=BB17_260 Depth=1
	leaq	(%rdi,%r13), %r10
	leaq	(%r12,%rdi), %r11
	leaq	(%rbx,%rdi), %r14
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB17_266:                             # %vector.body496
                                        #   Parent Loop BB17_260 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rbx,%rbp), %xmm0
	movdqu	16(%rbx,%rbp), %xmm1
	movdqu	32(%rbx,%rbp), %xmm2
	movdqu	48(%rbx,%rbp), %xmm3
	movdqu	(%r12,%rbp), %xmm4
	pavgw	%xmm0, %xmm4
	movdqu	16(%r12,%rbp), %xmm0
	pavgw	%xmm1, %xmm0
	movdqu	32(%r12,%rbp), %xmm1
	pavgw	%xmm2, %xmm1
	movdqu	48(%r12,%rbp), %xmm2
	pavgw	%xmm3, %xmm2
	movdqu	%xmm4, (%r13,%rbp)
	movdqu	%xmm0, 16(%r13,%rbp)
	movdqu	%xmm1, 32(%r13,%rbp)
	movdqu	%xmm2, 48(%r13,%rbp)
	addq	$64, %rbp
	cmpq	%rbp, %rdi
	jne	.LBB17_266
# %bb.267:                              # %middle.block482
                                        #   in Loop: Header=BB17_260 Depth=1
	movl	%r8d, %r13d
	cmpl	%ecx, %esi
	movq	(%rsp), %rbp                    # 8-byte Reload
	jne	.LBB17_268
	jmp	.LBB17_269
	.p2align	4, 0x90
.LBB17_263:                             #   in Loop: Header=BB17_260 Depth=1
	movq	%r13, %r10
	xorl	%r13d, %r13d
	movq	%r12, %r11
	movq	%rbx, %r14
	movq	(%rsp), %rbp                    # 8-byte Reload
	.p2align	4, 0x90
.LBB17_268:                             # %for.body6.us.i.i
                                        #   Parent Loop BB17_260 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14), %ebx
	movzwl	(%r11), %r15d
	addl	%r15d, %ebx
	incl	%ebx
	shrl	%ebx
	movw	%bx, (%r10)
	movzwl	2(%r14), %ebx
	addq	$4, %r14
	movzwl	2(%r11), %r15d
	addq	$4, %r11
	addl	%r15d, %ebx
	incl	%ebx
	shrl	%ebx
	movw	%bx, 2(%r10)
	addq	$4, %r10
	addl	$2, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB17_268
	jmp	.LBB17_269
.LBB17_270:                             # %bi_prediction.exit.i
	movl	240(%rsp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	je	.LBB17_301
# %bb.271:                              # %bi_prediction.exit.i
	cmpl	$3, %eax
	je	.LBB17_301
# %bb.272:                              # %if.then91.i
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movq	16(%rdi), %rax
	movl	36(%rax), %eax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, 384(%rcx)
	movl	16(%rsp), %r14d                 # 4-byte Reload
	je	.LBB17_274
# %bb.273:                              # %cond.true98.i
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	76(%rcx), %edx
	sarl	%edx
	decl	%edx
	jmp	.LBB17_275
.LBB17_32:                              # %for.cond1.preheader.us.i.i.preheader
	movl	%r11d, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	leaq	(%r9,%r9), %rcx
	xorl	%r14d, %r14d
	jmp	.LBB17_33
	.p2align	4, 0x90
.LBB17_47:                              # %for.cond1.for.inc13_crit_edge.split.us41.i.i
                                        #   in Loop: Header=BB17_33 Depth=1
	incq	%r14
	cmpq	%r10, %r14
	je	.LBB17_48
.LBB17_33:                              # %for.cond1.preheader.us.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_36 Depth 2
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB17_35
# %bb.34:                               #   in Loop: Header=BB17_33 Depth=1
	xorl	%ebx, %ebx
.LBB17_45:                              # %for.cond1.for.inc13_crit_edge.split.us41.i.i.unr-lcssa
                                        #   in Loop: Header=BB17_33 Depth=1
	testb	$1, %r11b
	je	.LBB17_47
# %bb.46:                               # %for.body3.us26.i.i.epil
                                        #   in Loop: Header=BB17_33 Depth=1
	movq	(%rbp,%r14,8), %rsi
	movzwl	(%rsi,%rbx,2), %esi
	addq	%rbx, %rbx
	imull	%edx, %esi
	addl	%edi, %esi
	testl	%esi, %esi
	movl	$0, %r13d
	cmovlel	%r13d, %esi
	cmpl	%r15d, %esi
	cmovgel	%r15d, %esi
	addq	(%r8,%r14,8), %rbx
	movw	%si, (%rbx,%r9,2)
	jmp	.LBB17_47
	.p2align	4, 0x90
.LBB17_35:                              # %for.body3.us26.i.i.preheader
                                        #   in Loop: Header=BB17_33 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB17_36
	.p2align	4, 0x90
.LBB17_44:                              # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	movq	(%r8,%r14,8), %r13
	addq	%rcx, %r13
	movw	%si, 2(%r13,%rbx,2)
	addq	$2, %rbx
	cmpq	%rbx, %rax
	je	.LBB17_45
.LBB17_36:                              # %for.body3.us26.i.i
                                        #   Parent Loop BB17_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%r14,8), %rsi
	movzwl	(%rsi,%rbx,2), %esi
	imull	%edx, %esi
	addl	%edi, %esi
	testl	%esi, %esi
	jg	.LBB17_38
# %bb.37:                               # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	xorl	%esi, %esi
.LBB17_38:                              # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	cmpl	%r15d, %esi
	jl	.LBB17_40
# %bb.39:                               # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	movl	%r15d, %esi
.LBB17_40:                              # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	movq	(%r8,%r14,8), %r13
	addq	%rcx, %r13
	movw	%si, (%r13,%rbx,2)
	movq	(%rbp,%r14,8), %rsi
	movzwl	2(%rsi,%rbx,2), %esi
	imull	%edx, %esi
	addl	%edi, %esi
	testl	%esi, %esi
	jg	.LBB17_42
# %bb.41:                               # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	xorl	%esi, %esi
.LBB17_42:                              # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	cmpl	%r15d, %esi
	jl	.LBB17_44
# %bb.43:                               # %for.body3.us26.i.i
                                        #   in Loop: Header=BB17_36 Depth=2
	movl	%r15d, %esi
	jmp	.LBB17_44
.LBB17_48:                              # %weighted_mc_prediction.exit.i
	movl	288(%rsp), %eax                 # 4-byte Reload
	testl	%eax, %eax
	je	.LBB17_301
# %bb.49:                               # %weighted_mc_prediction.exit.i
	cmpl	$3, %eax
	je	.LBB17_301
# %bb.50:                               # %if.then82.i
	xorl	%edx, %edx
	movq	304(%rsp), %rax                 # 8-byte Reload
	cmpl	$1, 36(%rax)
	movl	16(%rsp), %esi                  # 4-byte Reload
	jne	.LBB17_52
# %bb.51:                               # %cond.true86.i
	movq	232(%rsp), %rcx                 # 8-byte Reload
	shlq	$4, %rcx
	addq	8(%rsp), %rcx                   # 8-byte Folded Reload
	movq	144(%rsp), %rax                 # 8-byte Reload
	movsbl	13552(%rax,%rcx), %edx
.LBB17_52:                              # %cond.end94.i
	addl	240(%rsp), %edx                 # 4-byte Folded Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	849212(%rdi), %eax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	849196(%rdi), %eax
	movl	849200(%rdi), %r8d
	movl	849204(%rdi), %ecx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	849208(%rdi), %ecx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	88(%rcx), %r9d
	movq	96(%rsp), %r10                  # 8-byte Reload
	cmpl	$0, 384(%r10)
	je	.LBB17_54
# %bb.53:                               # %cond.true106.i
	movq	%r12, %r14
	movl	76(%rcx), %r10d
	sarl	%r10d
	decl	%r10d
	jmp	.LBB17_55
.LBB17_192:                             # %cond.false168.i
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	92(%rcx), %eax
.LBB17_193:                             # %cond.end169.i
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	movl	72(%rsp), %r8d                  # 4-byte Reload
	movq	432(%rsp), %r11                 # 8-byte Reload
	movl	88(%rcx), %ecx
	movl	%ecx, 208(%rsp)                 # 4-byte Spill
	movl	849204(%rdi), %r15d
	movl	849208(%rdi), %r13d
	movl	849196(%rdi), %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movl	849200(%rdi), %ecx
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	movl	849212(%rdi), %r12d
	movzwl	13278(%rsi), %r14d
	cmpl	$16, 849108(%rdi)
	setne	%cl
	sarl	%cl, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	sarl	%cl, %r8d
	cmpl	$16, 849112(%rdi)
	setne	%cl
	sarl	%cl, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	sarl	%cl, %r9d
	cmpl	$1, %ebx
	movl	%r8d, 72(%rsp)                  # 4-byte Spill
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	jne	.LBB17_194
# %bb.195:                              # %if.then194.i
	leaq	1(%r11), %rax
	shlq	$4, %r11
	leaq	(%rsi,%r11), %rcx
	addq	$13552, %rcx                    # imm = 0x34F0
	movq	368(%rsp), %rdx                 # 8-byte Reload
	movsbl	(%rdx,%rcx), %ecx
	movq	440(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %edx
	shlq	$4, %rax
	addq	%rsi, %rax
	addq	$13552, %rax                    # imm = 0x34F0
	movq	360(%rsp), %rcx                 # 8-byte Reload
	movsbl	(%rcx,%rax), %eax
	movq	264(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	jmp	.LBB17_196
.LBB17_194:
	movq	440(%rsp), %rdx                 # 8-byte Reload
.LBB17_196:                             # %if.end211.i
	movq	%r14, 232(%rsp)                 # 8-byte Spill
	leal	1(%r14), %ebp
	movzwl	849064(%rdi), %r11d
	movq	%r11, 112(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %eax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movq	344(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %eax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movq	%rdi, %rax
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movl	356(%rsp), %esi                 # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	48(%rsp), %r8d                  # 4-byte Reload
	movl	208(%rsp), %ebx                 # 4-byte Reload
	movl	%ebx, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r12, 160(%rsp)                 # 8-byte Spill
	movq	408(%rsp), %r12                 # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%r13, 248(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	movq	64(%rsp), %r14                  # 8-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	movq	%r15, 216(%rsp)                 # 8-byte Spill
	movq	152(%rsp), %r15                 # 8-byte Reload
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movq	280(%rsp), %rdi                 # 8-byte Reload
	movl	188(%rsp), %esi                 # 4-byte Reload
	movq	264(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movl	48(%rsp), %r8d                  # 4-byte Reload
	movl	%ebx, %r9d
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	120(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	144(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	472(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	440(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	232(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	192(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movslq	16(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movslq	72(%rsp), %rdx                  # 4-byte Folded Reload
	testl	%r13d, %r13d
	jle	.LBB17_216
# %bb.197:                              # %for.cond1.preheader.lr.ph.i488.i
	movl	$1, %esi
	movq	232(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %esi
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_216
# %bb.198:                              # %for.cond1.preheader.us.i493.preheader.i
	movq	240(%rsp), %rax                 # 8-byte Reload
	movq	304(%rsp), %rcx                 # 8-byte Reload
	leal	(%rax,%rcx), %edi
	incl	%edi
	sarl	%edi
	movq	400(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %r8d
	movq	392(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %r9d
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	849076(%rax), %eax
	movl	$16, %ecx
	movq	(%rsp), %r11                    # 8-byte Reload
	subl	%r11d, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	1248(%rcx), %rcx
	movq	8(%rcx), %r10
	leaq	(%rdx,%rdx), %rcx
	movq	224(%rsp), %rbx                 # 8-byte Reload
	addq	(%r10,%rbx,8), %rcx
	movq	408(%rsp), %r10                 # 8-byte Reload
	movl	%r11d, %r11d
	movq	%r11, 96(%rsp)                  # 8-byte Spill
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	andl	$2147483616, %r11d              # imm = 0x7FFFFFE0
	movq	%r11, 168(%rsp)                 # 8-byte Spill
	addl	%r11d, %r11d
	movq	%r11, 272(%rsp)                 # 8-byte Spill
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm2                # xmm2 = xmm0[0,0,0,0]
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	%ebp, %xmm0
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm4                # xmm4 = xmm1[0,0,0,0]
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm12               # xmm12 = xmm1[0,0,0,0]
	xorl	%ebx, %ebx
	pxor	%xmm13, %xmm13
	pshufd	$245, %xmm9, %xmm1              # xmm1 = xmm9[1,1,3,3]
	pshufd	$245, %xmm2, %xmm5              # xmm5 = xmm2[1,1,3,3]
	xorps	%xmm6, %xmm6
	movss	%xmm0, %xmm6                    # xmm6 = xmm0[0],xmm6[1,2,3]
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movdqa	%xmm9, 208(%rsp)                # 16-byte Spill
	movdqa	%xmm12, 112(%rsp)               # 16-byte Spill
	movdqa	%xmm1, 128(%rsp)                # 16-byte Spill
	movdqa	%xmm5, 192(%rsp)                # 16-byte Spill
	movaps	%xmm6, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 240(%rsp)                # 16-byte Spill
	movdqa	%xmm2, 304(%rsp)                # 16-byte Spill
	movdqa	%xmm4, 288(%rsp)                # 16-byte Spill
	jmp	.LBB17_199
	.p2align	4, 0x90
.LBB17_214:                             # %for.cond1.for.end_crit_edge.us.i519.i.loopexit
                                        #   in Loop: Header=BB17_199 Depth=1
	subq	%rbx, %r11
	subq	%rbx, %r14
	subq	%rbx, %r13
	movq	16(%rsp), %rbx                  # 8-byte Reload
.LBB17_215:                             # %for.cond1.for.end_crit_edge.us.i519.i
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	176(%rsp), %r10                 # 8-byte Reload
	leaq	(%r11,%r10,2), %rcx
	leaq	(%r14,%r10,2), %r12
	leaq	(,%r10,2), %r10
	addq	%r13, %r10
	incl	%ebx
	movq	24(%rsp), %r13                  # 8-byte Reload
	cmpl	%r13d, %ebx
	je	.LBB17_216
.LBB17_199:                             # %for.cond1.preheader.us.i493.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_206 Depth 2
                                        #     Child Loop BB17_209 Depth 2
	cmpl	$32, (%rsp)                     # 4-byte Folded Reload
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	jae	.LBB17_201
# %bb.200:                              #   in Loop: Header=BB17_199 Depth=1
	movq	%rcx, %r11
	movq	%r12, %r14
	xorl	%ecx, %ecx
	movq	%r10, %r13
.LBB17_208:                             # %for.body3.us.i498.i.preheader
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	(%rsp), %r15                    # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	%ecx, %r15d
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	jmp	.LBB17_209
	.p2align	4, 0x90
.LBB17_213:                             # %for.body3.us.i498.i
                                        #   in Loop: Header=BB17_209 Depth=2
	movw	%r10w, (%r11,%r12,2)
	incq	%r12
	addq	$-2, %rbx
	cmpl	%r12d, %r15d
	je	.LBB17_214
.LBB17_209:                             # %for.body3.us.i498.i
                                        #   Parent Loop BB17_199 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14,%r12,2), %r10d
	imull	%r8d, %r10d
	movzwl	(%r13,%r12,2), %ecx
	imull	%r9d, %ecx
	addl	%esi, %r10d
	addl	%ecx, %r10d
	movl	%ebp, %ecx
	sarl	%cl, %r10d
	addl	%edi, %r10d
	testl	%r10d, %r10d
	jg	.LBB17_211
# %bb.210:                              # %for.body3.us.i498.i
                                        #   in Loop: Header=BB17_209 Depth=2
	xorl	%r10d, %r10d
.LBB17_211:                             # %for.body3.us.i498.i
                                        #   in Loop: Header=BB17_209 Depth=2
	cmpl	%eax, %r10d
	jl	.LBB17_213
# %bb.212:                              # %for.body3.us.i498.i
                                        #   in Loop: Header=BB17_209 Depth=2
	movl	%eax, %r10d
	jmp	.LBB17_213
	.p2align	4, 0x90
.LBB17_201:                             # %vector.memcheck355
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	%r10, %r13
	movq	%rcx, %r10
	subq	%r12, %r10
	cmpq	$64, %r10
	jb	.LBB17_202
# %bb.203:                              # %vector.memcheck355
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	%rcx, %r10
	movq	%r13, %rdx
	subq	%r13, %r10
	cmpq	$64, %r10
	jb	.LBB17_204
# %bb.205:                              # %vector.ph365
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	272(%rsp), %r15                 # 8-byte Reload
	leaq	(%rcx,%r15), %r11
	leaq	(%r12,%r15), %r14
	leaq	(%rdx,%r15), %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB17_206:                             # %vector.body376
                                        #   Parent Loop BB17_199 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r12,%rbx), %xmm6
	movdqu	16(%r12,%rbx), %xmm5
	movdqu	32(%r12,%rbx), %xmm2
	movdqu	48(%r12,%rbx), %xmm0
	movdqa	%xmm6, %xmm7
	punpckhwd	%xmm13, %xmm7           # xmm7 = xmm7[4],xmm13[4],xmm7[5],xmm13[5],xmm7[6],xmm13[6],xmm7[7],xmm13[7]
	punpcklwd	%xmm13, %xmm6           # xmm6 = xmm6[0],xmm13[0],xmm6[1],xmm13[1],xmm6[2],xmm13[2],xmm6[3],xmm13[3]
	movdqa	%xmm5, %xmm4
	punpckhwd	%xmm13, %xmm4           # xmm4 = xmm4[4],xmm13[4],xmm4[5],xmm13[5],xmm4[6],xmm13[6],xmm4[7],xmm13[7]
	punpcklwd	%xmm13, %xmm5           # xmm5 = xmm5[0],xmm13[0],xmm5[1],xmm13[1],xmm5[2],xmm13[2],xmm5[3],xmm13[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm13, %xmm3           # xmm3 = xmm3[4],xmm13[4],xmm3[5],xmm13[5],xmm3[6],xmm13[6],xmm3[7],xmm13[7]
	punpcklwd	%xmm13, %xmm2           # xmm2 = xmm2[0],xmm13[0],xmm2[1],xmm13[1],xmm2[2],xmm13[2],xmm2[3],xmm13[3]
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm13, %xmm1           # xmm1 = xmm1[4],xmm13[4],xmm1[5],xmm13[5],xmm1[6],xmm13[6],xmm1[7],xmm13[7]
	punpcklwd	%xmm13, %xmm0           # xmm0 = xmm0[0],xmm13[0],xmm0[1],xmm13[1],xmm0[2],xmm13[2],xmm0[3],xmm13[3]
	movdqa	%xmm9, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm10             # xmm10 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	128(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movdqa	%xmm10, 32(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm12             # xmm12 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm13             # xmm13 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm15             # xmm15 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm15           # xmm15 = xmm15[0],xmm2[0],xmm15[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm14             # xmm14 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm11             # xmm11 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movdqu	(%rdx,%rbx), %xmm1
	movdqu	16(%rdx,%rbx), %xmm7
	movdqu	32(%rdx,%rbx), %xmm8
	movdqu	48(%rdx,%rbx), %xmm9
	movdqa	%xmm1, %xmm6
	punpcklwd	.LCPI17_0(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm7, %xmm4
	punpcklwd	.LCPI17_0(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqa	%xmm8, %xmm5
	punpcklwd	.LCPI17_0(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm8  # xmm8 = xmm8[4],mem[4],xmm8[5],mem[5],xmm8[6],mem[6],xmm8[7],mem[7]
	movdqa	304(%rsp), %xmm10               # 16-byte Reload
	movdqa	%xmm10, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	movdqa	192(%rsp), %xmm2                # 16-byte Reload
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movdqa	%xmm10, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	movdqa	%xmm10, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm2, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	movdqa	%xmm10, %xmm7
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	movdqa	%xmm10, %xmm4
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm2, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	movdqa	%xmm10, %xmm8
	pmuludq	%xmm5, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm2, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm8            # xmm8 = xmm8[0],xmm5[0],xmm8[1],xmm5[1]
	movdqa	%xmm9, %xmm0
	punpckhwd	.LCPI17_0(%rip), %xmm9  # xmm9 = xmm9[4],mem[4],xmm9[5],mem[5],xmm9[6],mem[6],xmm9[7],mem[7]
	movdqa	%xmm10, %xmm5
	pmuludq	%xmm9, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm2, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm5            # xmm5 = xmm5[0],xmm9[0],xmm5[1],xmm9[1]
	punpcklwd	.LCPI17_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm9             # xmm9 = xmm10[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1]
	movdqa	240(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm12
	paddd	%xmm3, %xmm12
	movdqa	%xmm12, %xmm3
	movdqa	32(%rsp), %xmm12                # 16-byte Reload
	paddd	%xmm0, %xmm12
	paddd	%xmm1, %xmm12
	movdqa	%xmm12, %xmm1
	paddd	%xmm0, %xmm13
	paddd	%xmm6, %xmm13
	movdqa	48(%rsp), %xmm2                 # 16-byte Reload
	paddd	%xmm0, %xmm2
	paddd	%xmm7, %xmm2
	paddd	%xmm0, %xmm15
	paddd	%xmm4, %xmm15
	movdqa	80(%rsp), %xmm7                 # 16-byte Reload
	paddd	%xmm0, %xmm7
	paddd	%xmm8, %xmm7
	paddd	%xmm0, %xmm11
	paddd	%xmm5, %xmm11
	paddd	%xmm0, %xmm14
	paddd	%xmm9, %xmm14
	movdqa	144(%rsp), %xmm0                # 16-byte Reload
	psrad	%xmm0, %xmm3
	psrad	%xmm0, %xmm1
	psrad	%xmm0, %xmm13
	psrad	%xmm0, %xmm2
	psrad	%xmm0, %xmm15
	psrad	%xmm0, %xmm7
	psrad	%xmm0, %xmm11
	psrad	%xmm0, %xmm14
	movdqa	288(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm13
	paddd	%xmm0, %xmm7
	paddd	%xmm0, %xmm15
	paddd	%xmm0, %xmm14
	paddd	%xmm0, %xmm11
	movdqa	%xmm3, %xmm5
	pcmpgtd	.LCPI17_0(%rip), %xmm5
	pand	%xmm3, %xmm5
	movdqa	112(%rsp), %xmm12               # 16-byte Reload
	movdqa	%xmm1, %xmm3
	pcmpgtd	.LCPI17_0(%rip), %xmm3
	pand	%xmm1, %xmm3
	movdqa	%xmm13, %xmm0
	pcmpgtd	.LCPI17_0(%rip), %xmm0
	pand	%xmm13, %xmm0
	movdqa	%xmm2, %xmm8
	pcmpgtd	.LCPI17_0(%rip), %xmm8
	pand	%xmm2, %xmm8
	movdqa	%xmm15, %xmm6
	pcmpgtd	.LCPI17_0(%rip), %xmm6
	pand	%xmm15, %xmm6
	movdqa	%xmm7, %xmm4
	pcmpgtd	.LCPI17_0(%rip), %xmm4
	pand	%xmm7, %xmm4
	pxor	%xmm13, %xmm13
	movdqa	%xmm11, %xmm1
	pcmpgtd	%xmm13, %xmm1
	pand	%xmm11, %xmm1
	movdqa	%xmm14, %xmm7
	pcmpgtd	%xmm13, %xmm7
	pand	%xmm14, %xmm7
	movdqa	%xmm12, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm12, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm12, %xmm3
	pcmpgtd	%xmm5, %xmm3
	pand	%xmm3, %xmm5
	pandn	%xmm12, %xmm3
	por	%xmm5, %xmm3
	movdqa	%xmm12, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pand	%xmm9, %xmm8
	pandn	%xmm12, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm12, %xmm10
	pcmpgtd	%xmm0, %xmm10
	pand	%xmm10, %xmm0
	pandn	%xmm12, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm12, %xmm0
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm0, %xmm4
	pandn	%xmm12, %xmm0
	por	%xmm4, %xmm0
	movdqa	%xmm12, %xmm4
	pcmpgtd	%xmm6, %xmm4
	pand	%xmm4, %xmm6
	pandn	%xmm12, %xmm4
	por	%xmm6, %xmm4
	movdqa	%xmm12, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm12, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm12, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm5, %xmm1
	pandn	%xmm12, %xmm5
	por	%xmm1, %xmm5
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	packssdw	%xmm3, %xmm2
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm10, %xmm9
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	packssdw	%xmm4, %xmm0
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm5, %xmm6
	movdqu	%xmm2, (%rcx,%rbx)
	movdqu	%xmm9, 16(%rcx,%rbx)
	movdqa	208(%rsp), %xmm9                # 16-byte Reload
	movdqu	%xmm0, 32(%rcx,%rbx)
	movdqu	%xmm6, 48(%rcx,%rbx)
	addq	$64, %rbx
	cmpq	%rbx, %r15
	jne	.LBB17_206
# %bb.207:                              # %middle.block362
                                        #   in Loop: Header=BB17_199 Depth=1
	movq	168(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, %ecx
	cmpl	96(%rsp), %r10d                 # 4-byte Folded Reload
	movq	72(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB17_215
	jmp	.LBB17_208
.LBB17_204:                             #   in Loop: Header=BB17_199 Depth=1
	movq	%rcx, %r11
	movq	%r12, %r14
	xorl	%ecx, %ecx
	movq	%rdx, %r13
	movq	72(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB17_208
.LBB17_202:                             #   in Loop: Header=BB17_199 Depth=1
	movq	%rcx, %r11
	movq	%r12, %r14
	xorl	%ecx, %ecx
	jmp	.LBB17_208
.LBB17_216:                             # %weighted_bi_prediction.exit525.i
	testl	%r13d, %r13d
	movq	448(%rsp), %r10                 # 8-byte Reload
	movq	384(%rsp), %r11                 # 8-byte Reload
	jle	.LBB17_301
# %bb.217:                              # %for.cond1.preheader.lr.ph.i527.i
	movl	$1, %esi
	movq	232(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %esi
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_301
# %bb.218:                              # %for.cond1.preheader.us.i532.preheader.i
	movq	328(%rsp), %rax                 # 8-byte Reload
	movl	8(%rax), %eax
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movl	8(%rcx), %ecx
	leal	(%rax,%rcx), %edi
	incl	%edi
	sarl	%edi
	movq	400(%rsp), %rax                 # 8-byte Reload
	movl	8(%rax), %r8d
	movq	392(%rsp), %rax                 # 8-byte Reload
	movl	8(%rax), %r9d
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	849080(%rax), %r14d
	movl	$16, %eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	subl	%ecx, %eax
	cltq
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movq	16(%rax), %rax
	addq	%rdx, %rdx
	movq	224(%rsp), %rbx                 # 8-byte Reload
	addq	(%rax,%rbx,8), %rdx
	movl	%ecx, %eax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$2147483616, %eax               # imm = 0x7FFFFFE0
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leal	(%rax,%rax), %r13d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm9                # xmm9 = xmm0[0,0,0,0]
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm2                # xmm2 = xmm0[0,0,0,0]
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	%ebp, %xmm0
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm4                # xmm4 = xmm1[0,0,0,0]
	movd	%r14d, %xmm1
	pshufd	$0, %xmm1, %xmm11               # xmm11 = xmm1[0,0,0,0]
	xorl	%ebx, %ebx
	pxor	%xmm12, %xmm12
	pshufd	$245, %xmm9, %xmm1              # xmm1 = xmm9[1,1,3,3]
	pshufd	$245, %xmm2, %xmm5              # xmm5 = xmm2[1,1,3,3]
	xorps	%xmm6, %xmm6
	movss	%xmm0, %xmm6                    # xmm6 = xmm0[0],xmm6[1,2,3]
	movdqa	%xmm9, 208(%rsp)                # 16-byte Spill
	movdqa	%xmm11, 112(%rsp)               # 16-byte Spill
	movq	%r13, 176(%rsp)                 # 8-byte Spill
	movdqa	%xmm2, 128(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm4, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm1, 240(%rsp)                # 16-byte Spill
	movdqa	%xmm5, 304(%rsp)                # 16-byte Spill
	movaps	%xmm6, 288(%rsp)                # 16-byte Spill
	jmp	.LBB17_219
	.p2align	4, 0x90
.LBB17_232:                             # %for.cond1.for.end_crit_edge.us.i558.i.loopexit
                                        #   in Loop: Header=BB17_219 Depth=1
	subq	%rdx, %rax
	subq	%rdx, %r15
	subq	%rdx, %r12
	movq	%r13, %rbx
	movq	176(%rsp), %r13                 # 8-byte Reload
.LBB17_233:                             # %for.cond1.for.end_crit_edge.us.i558.i
                                        #   in Loop: Header=BB17_219 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,2), %rdx
	leaq	(%r15,%rcx,2), %r11
	leaq	(%r12,%rcx,2), %r10
	incl	%ebx
	cmpl	24(%rsp), %ebx                  # 4-byte Folded Reload
	je	.LBB17_301
.LBB17_219:                             # %for.cond1.preheader.us.i532.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_224 Depth 2
                                        #     Child Loop BB17_227 Depth 2
	cmpl	$32, (%rsp)                     # 4-byte Folded Reload
	jae	.LBB17_221
.LBB17_220:                             #   in Loop: Header=BB17_219 Depth=1
	movq	%rdx, %rax
	movq	%r11, %r15
	xorl	%ecx, %ecx
	movq	%r10, %r12
.LBB17_226:                             # %for.body3.us.i537.i.preheader
                                        #   in Loop: Header=BB17_219 Depth=1
	movq	%rbx, %r13
	movq	(%rsp), %rbx                    # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	%ecx, %ebx
	xorl	%edx, %edx
	xorl	%r11d, %r11d
	jmp	.LBB17_227
	.p2align	4, 0x90
.LBB17_231:                             # %for.body3.us.i537.i
                                        #   in Loop: Header=BB17_227 Depth=2
	movw	%r10w, (%rax,%r11,2)
	incq	%r11
	addq	$-2, %rdx
	cmpl	%r11d, %ebx
	je	.LBB17_232
.LBB17_227:                             # %for.body3.us.i537.i
                                        #   Parent Loop BB17_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r15,%r11,2), %r10d
	imull	%r8d, %r10d
	movzwl	(%r12,%r11,2), %ecx
	imull	%r9d, %ecx
	addl	%esi, %r10d
	addl	%ecx, %r10d
	movl	%ebp, %ecx
	sarl	%cl, %r10d
	addl	%edi, %r10d
	testl	%r10d, %r10d
	jg	.LBB17_229
# %bb.228:                              # %for.body3.us.i537.i
                                        #   in Loop: Header=BB17_227 Depth=2
	xorl	%r10d, %r10d
.LBB17_229:                             # %for.body3.us.i537.i
                                        #   in Loop: Header=BB17_227 Depth=2
	cmpl	%r14d, %r10d
	jl	.LBB17_231
# %bb.230:                              # %for.body3.us.i537.i
                                        #   in Loop: Header=BB17_227 Depth=2
	movl	%r14d, %r10d
	jmp	.LBB17_231
	.p2align	4, 0x90
.LBB17_221:                             # %vector.memcheck415
                                        #   in Loop: Header=BB17_219 Depth=1
	movq	%rdx, %rax
	subq	%r11, %rax
	cmpq	$64, %rax
	jb	.LBB17_220
# %bb.222:                              # %vector.memcheck415
                                        #   in Loop: Header=BB17_219 Depth=1
	movq	%rdx, %rax
	subq	%r10, %rax
	cmpq	$64, %rax
	jb	.LBB17_220
# %bb.223:                              # %vector.ph425
                                        #   in Loop: Header=BB17_219 Depth=1
	leaq	(%rdx,%r13), %rax
	leaq	(%r11,%r13), %r15
	leaq	(%r10,%r13), %r12
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB17_224:                             # %vector.body436
                                        #   Parent Loop BB17_219 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r11,%rcx), %xmm6
	movdqu	16(%r11,%rcx), %xmm5
	movdqu	32(%r11,%rcx), %xmm2
	movdqu	48(%r11,%rcx), %xmm0
	movdqa	%xmm6, %xmm7
	punpckhwd	%xmm12, %xmm7           # xmm7 = xmm7[4],xmm12[4],xmm7[5],xmm12[5],xmm7[6],xmm12[6],xmm7[7],xmm12[7]
	punpcklwd	%xmm12, %xmm6           # xmm6 = xmm6[0],xmm12[0],xmm6[1],xmm12[1],xmm6[2],xmm12[2],xmm6[3],xmm12[3]
	movdqa	%xmm5, %xmm4
	punpckhwd	%xmm12, %xmm4           # xmm4 = xmm4[4],xmm12[4],xmm4[5],xmm12[5],xmm4[6],xmm12[6],xmm4[7],xmm12[7]
	punpcklwd	%xmm12, %xmm5           # xmm5 = xmm5[0],xmm12[0],xmm5[1],xmm12[1],xmm5[2],xmm12[2],xmm5[3],xmm12[3]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm12, %xmm3           # xmm3 = xmm3[4],xmm12[4],xmm3[5],xmm12[5],xmm3[6],xmm12[6],xmm3[7],xmm12[7]
	punpcklwd	%xmm12, %xmm2           # xmm2 = xmm2[0],xmm12[0],xmm2[1],xmm12[1],xmm2[2],xmm12[2],xmm2[3],xmm12[3]
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm12, %xmm1           # xmm1 = xmm1[4],xmm12[4],xmm1[5],xmm12[5],xmm1[6],xmm12[6],xmm1[7],xmm12[7]
	punpcklwd	%xmm12, %xmm0           # xmm0 = xmm0[0],xmm12[0],xmm0[1],xmm12[1],xmm0[2],xmm12[2],xmm0[3],xmm12[3]
	movdqa	%xmm9, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm10             # xmm10 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	240(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movdqa	%xmm10, 32(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm11             # xmm11 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm13             # xmm13 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm13           # xmm13 = xmm13[0],xmm4[0],xmm13[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm15             # xmm15 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm15           # xmm15 = xmm15[0],xmm2[0],xmm15[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm14             # xmm14 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqa	%xmm9, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm10             # xmm10 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1]
	movdqu	(%r10,%rcx), %xmm1
	movdqu	16(%r10,%rcx), %xmm7
	movdqu	32(%r10,%rcx), %xmm8
	movdqu	48(%r10,%rcx), %xmm9
	movdqa	%xmm1, %xmm6
	punpcklwd	.LCPI17_0(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm7, %xmm4
	punpcklwd	.LCPI17_0(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqa	%xmm8, %xmm5
	punpcklwd	.LCPI17_0(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	punpckhwd	.LCPI17_0(%rip), %xmm8  # xmm8 = xmm8[4],mem[4],xmm8[5],mem[5],xmm8[6],mem[6],xmm8[7],mem[7]
	movdqa	128(%rsp), %xmm2                # 16-byte Reload
	movdqa	%xmm2, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	movdqa	304(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1]
	movdqa	%xmm2, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	movdqa	%xmm2, %xmm7
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	movdqa	%xmm2, %xmm4
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	movdqa	%xmm2, %xmm8
	pmuludq	%xmm5, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm8            # xmm8 = xmm8[0],xmm5[0],xmm8[1],xmm5[1]
	movdqa	%xmm9, %xmm0
	punpckhwd	.LCPI17_0(%rip), %xmm9  # xmm9 = xmm9[4],mem[4],xmm9[5],mem[5],xmm9[6],mem[6],xmm9[7],mem[7]
	movdqa	%xmm2, %xmm5
	pmuludq	%xmm9, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm3, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm5            # xmm5 = xmm5[0],xmm9[0],xmm5[1],xmm9[1]
	punpcklwd	.LCPI17_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm9              # xmm9 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1]
	movdqa	192(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm11
	paddd	80(%rsp), %xmm11                # 16-byte Folded Reload
	movdqa	32(%rsp), %xmm2                 # 16-byte Reload
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm2
	movdqa	%xmm2, %xmm1
	paddd	%xmm0, %xmm13
	paddd	%xmm6, %xmm13
	movdqa	48(%rsp), %xmm2                 # 16-byte Reload
	paddd	%xmm0, %xmm2
	paddd	%xmm7, %xmm2
	paddd	%xmm0, %xmm15
	paddd	%xmm4, %xmm15
	paddd	%xmm0, %xmm12
	paddd	%xmm8, %xmm12
	paddd	%xmm0, %xmm10
	paddd	%xmm5, %xmm10
	paddd	%xmm0, %xmm14
	paddd	%xmm9, %xmm14
	movdqa	288(%rsp), %xmm0                # 16-byte Reload
	psrad	%xmm0, %xmm11
	psrad	%xmm0, %xmm1
	psrad	%xmm0, %xmm13
	psrad	%xmm0, %xmm2
	psrad	%xmm0, %xmm15
	psrad	%xmm0, %xmm12
	psrad	%xmm0, %xmm10
	psrad	%xmm0, %xmm14
	movdqa	144(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm0, %xmm1
	paddd	%xmm0, %xmm11
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm13
	paddd	%xmm0, %xmm12
	paddd	%xmm0, %xmm15
	paddd	%xmm0, %xmm14
	paddd	%xmm0, %xmm10
	movdqa	%xmm11, %xmm5
	pcmpgtd	.LCPI17_0(%rip), %xmm5
	pand	%xmm11, %xmm5
	movdqa	112(%rsp), %xmm11               # 16-byte Reload
	movdqa	%xmm1, %xmm3
	pcmpgtd	.LCPI17_0(%rip), %xmm3
	pand	%xmm1, %xmm3
	movdqa	%xmm13, %xmm0
	pcmpgtd	.LCPI17_0(%rip), %xmm0
	pand	%xmm13, %xmm0
	movdqa	%xmm2, %xmm8
	pcmpgtd	.LCPI17_0(%rip), %xmm8
	pand	%xmm2, %xmm8
	movdqa	%xmm15, %xmm6
	pcmpgtd	.LCPI17_0(%rip), %xmm6
	pand	%xmm15, %xmm6
	movdqa	%xmm12, %xmm4
	pcmpgtd	.LCPI17_0(%rip), %xmm4
	pand	%xmm12, %xmm4
	pxor	%xmm12, %xmm12
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm12, %xmm1
	pand	%xmm10, %xmm1
	movdqa	%xmm14, %xmm7
	pcmpgtd	%xmm12, %xmm7
	pand	%xmm14, %xmm7
	movdqa	%xmm11, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pand	%xmm2, %xmm3
	pandn	%xmm11, %xmm2
	por	%xmm3, %xmm2
	movdqa	%xmm11, %xmm3
	pcmpgtd	%xmm5, %xmm3
	pand	%xmm3, %xmm5
	pandn	%xmm11, %xmm3
	por	%xmm5, %xmm3
	movdqa	%xmm11, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pand	%xmm9, %xmm8
	pandn	%xmm11, %xmm9
	por	%xmm8, %xmm9
	movdqa	%xmm11, %xmm10
	pcmpgtd	%xmm0, %xmm10
	pand	%xmm10, %xmm0
	pandn	%xmm11, %xmm10
	por	%xmm0, %xmm10
	movdqa	%xmm11, %xmm0
	pcmpgtd	%xmm4, %xmm0
	pand	%xmm0, %xmm4
	pandn	%xmm11, %xmm0
	por	%xmm4, %xmm0
	movdqa	%xmm11, %xmm4
	pcmpgtd	%xmm6, %xmm4
	pand	%xmm4, %xmm6
	pandn	%xmm11, %xmm4
	por	%xmm6, %xmm4
	movdqa	%xmm11, %xmm6
	pcmpgtd	%xmm7, %xmm6
	pand	%xmm6, %xmm7
	pandn	%xmm11, %xmm6
	por	%xmm7, %xmm6
	movdqa	%xmm11, %xmm5
	pcmpgtd	%xmm1, %xmm5
	pand	%xmm5, %xmm1
	pandn	%xmm11, %xmm5
	por	%xmm1, %xmm5
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	packssdw	%xmm3, %xmm2
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm10, %xmm9
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	packssdw	%xmm4, %xmm0
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm6
	psrad	$16, %xmm6
	packssdw	%xmm5, %xmm6
	movdqu	%xmm2, (%rdx,%rcx)
	movdqu	%xmm9, 16(%rdx,%rcx)
	movdqa	208(%rsp), %xmm9                # 16-byte Reload
	movdqu	%xmm0, 32(%rdx,%rcx)
	movdqu	%xmm6, 48(%rdx,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %r13
	jne	.LBB17_224
# %bb.225:                              # %middle.block422
                                        #   in Loop: Header=BB17_219 Depth=1
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%edx, %ecx
	cmpl	72(%rsp), %edx                  # 4-byte Folded Reload
	je	.LBB17_233
	jmp	.LBB17_226
.LBB17_54:                              # %cond.false109.i
	movq	%r12, %r14
	movl	92(%rcx), %r10d
.LBB17_55:                              # %cond.end110.i
	cmpl	$16, 849108(%rdi)
	setne	%cl
	movq	(%rsp), %r13                    # 8-byte Reload
	sarl	%cl, %r13d
	sarl	%cl, 72(%rsp)                   # 4-byte Folded Spill
	cmpl	$16, 849112(%rdi)
	setne	%cl
	movq	24(%rsp), %rbx                  # 8-byte Reload
	sarl	%cl, %ebx
	sarl	%cl, %esi
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movzwl	13278(%rsi), %r12d
	movzwl	849064(%rdi), %r15d
	movq	13280(%rsi), %rcx
	movq	13288(%rsi), %rsi
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	movq	(%rcx,%r14,8), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	(%rsi,%r11,8), %rcx
	movq	(%rcx,%r14,8), %r14
	movq	%rdi, %r11
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movl	48(%rsp), %esi                  # 4-byte Reload
	movl	%eax, %ecx
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	208(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	232(%rsp), %rax                 # 8-byte Reload
	pushq	(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	(%rbp)
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	testl	%ebx, %ebx
	jle	.LBB17_301
# %bb.56:                               # %for.cond1.preheader.lr.ph.i295.i
	leal	-1(%r12), %ecx
	movl	$1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_301
# %bb.57:                               # %for.cond1.preheader.lr.ph.split.us.i299.i
	movq	%rbx, %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rcx
	movslq	16(%rsp), %rax                  # 4-byte Folded Reload
	shlq	$3, %rax
	movq	8(%rcx), %r9
	addq	%rax, %r9
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movl	4(%rcx), %r10d
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movl	4(%r14), %r11d
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	849076(%rcx), %r15d
	movslq	72(%rsp), %rdx                  # 4-byte Folded Reload
	movl	%esi, %ecx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	(%rsp), %edi                    # 4-byte Reload
	testl	%r12d, %r12d
	je	.LBB17_66
# %bb.58:                               # %for.cond1.preheader.us.us.i322.i.preheader
	leaq	(%rdx,%rdx), %rsi
	xorl	%ebx, %ebx
	jmp	.LBB17_59
	.p2align	4, 0x90
.LBB17_65:                              # %for.cond1.for.inc13_crit_edge.split.us.us.us.i340.i
                                        #   in Loop: Header=BB17_59 Depth=1
	incq	%rbx
	movq	48(%rsp), %r13                  # 8-byte Reload
	cmpq	%r13, %rbx
	je	.LBB17_82
.LBB17_59:                              # %for.cond1.preheader.us.us.i322.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_60 Depth 2
	xorl	%r14d, %r14d
	jmp	.LBB17_60
	.p2align	4, 0x90
.LBB17_64:                              # %for.body3.us.us.us.i326.i
                                        #   in Loop: Header=BB17_60 Depth=2
	movq	(%r9,%rbx,8), %rcx
	addq	%rsi, %rcx
	movw	%r13w, (%rcx,%r14,2)
	incq	%r14
	cmpq	%r14, %rdi
	je	.LBB17_65
.LBB17_60:                              # %for.body3.us.us.us.i326.i
                                        #   Parent Loop BB17_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%rbx,8), %rcx
	movzwl	(%rcx,%r14,2), %r13d
	imull	%r10d, %r13d
	addl	%r8d, %r13d
	movl	%r12d, %ecx
	sarl	%cl, %r13d
	addl	%r11d, %r13d
	testl	%r13d, %r13d
	jg	.LBB17_62
# %bb.61:                               # %for.body3.us.us.us.i326.i
                                        #   in Loop: Header=BB17_60 Depth=2
	xorl	%r13d, %r13d
.LBB17_62:                              # %for.body3.us.us.us.i326.i
                                        #   in Loop: Header=BB17_60 Depth=2
	cmpl	%r15d, %r13d
	jl	.LBB17_64
# %bb.63:                               # %for.body3.us.us.us.i326.i
                                        #   in Loop: Header=BB17_60 Depth=2
	movl	%r15d, %r13d
	jmp	.LBB17_64
.LBB17_132:                             # %cond.false76.i
	movl	92(%rcx), %r10d
.LBB17_133:                             # %cond.end77.i
	cmpl	$16, 849108(%rsi)
	setne	%r14b
	movl	%r14d, %ecx
	movq	(%rsp), %r13                    # 8-byte Reload
	sarl	%cl, %r13d
	cmpl	$16, 849112(%rsi)
	setne	%cl
	movq	24(%rsp), %r15                  # 8-byte Reload
	sarl	%cl, %r15d
	sarl	%cl, 16(%rsp)                   # 4-byte Folded Spill
	movzwl	849064(%rsi), %r12d
	movq	%rsi, %rbx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movl	80(%rsp), %esi                  # 4-byte Reload
	movl	%eax, %ecx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	128(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	232(%rsp), %rax                 # 8-byte Reload
	pushq	(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	(%rbp)
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	%r13, %rbx
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	testl	%r15d, %r15d
	jle	.LBB17_301
# %bb.134:                              # %for.body.lr.ph.i214.i
	movq	%r15, %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movl	%r14d, %ecx
	movl	72(%rsp), %esi                  # 4-byte Reload
	sarl	%cl, %esi
	movq	8(%rax), %rdi
	movslq	16(%rsp), %rcx                  # 4-byte Folded Reload
	movslq	%esi, %rax
	movslq	%ebx, %rbx
	addq	%rbx, %rbx
	movl	%edx, %r14d
	movq	%r14, %rdx
	decq	%rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	je	.LBB17_135
# %bb.136:                              # %for.body.lr.ph.i214.i.new
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	andl	$2147483646, %r14d              # imm = 0x7FFFFFFE
	leaq	(%rdi,%rcx,8), %r12
	addq	$8, %r12
	xorl	%r15d, %r15d
	leaq	(%rax,%rax), %r13
	.p2align	4, 0x90
.LBB17_137:                             # %for.body.i219.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r12,%r15,8), %rdi
	addq	%r13, %rdi
	movq	(%rbp,%r15,8), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r12,%r15,8), %rdi
	addq	%r13, %rdi
	movq	8(%rbp,%r15,8), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	cmpq	%r15, %r14
	jne	.LBB17_137
	jmp	.LBB17_138
.LBB17_274:                             # %cond.false101.i
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movl	92(%rcx), %edx
.LBB17_275:                             # %cond.end102.i
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	(%rsp), %r15                    # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	72(%rsp), %r12d                 # 4-byte Reload
	movq	280(%rsp), %r11                 # 8-byte Reload
	movl	88(%rcx), %r9d
	movl	849204(%rdi), %ebp
	movl	849208(%rdi), %r10d
	movl	849196(%rdi), %r13d
	movl	849200(%rdi), %r8d
	movl	849212(%rdi), %ebx
	cmpl	$16, 849108(%rdi)
	setne	%cl
	sarl	%cl, %r15d
	sarl	%cl, %r12d
	cmpl	$16, 849112(%rdi)
	setne	%cl
	movq	24(%rsp), %rdx                  # 8-byte Reload
	sarl	%cl, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	sarl	%cl, %r14d
	cmpl	$1, %eax
	movl	%r12d, 72(%rsp)                 # 4-byte Spill
	movl	%r14d, 16(%rsp)                 # 4-byte Spill
	jne	.LBB17_276
# %bb.277:                              # %if.then125.i
	movq	368(%rsp), %rcx                 # 8-byte Reload
	leaq	1(%rcx), %rax
	shlq	$4, %rcx
	addq	%rsi, %rcx
	addq	$13552, %rcx                    # imm = 0x34F0
	movq	376(%rsp), %rdx                 # 8-byte Reload
	movsbl	(%rdx,%rcx), %ecx
	movq	176(%rsp), %rdx                 # 8-byte Reload
	addl	%ecx, %edx
	shlq	$4, %rax
	addq	%rsi, %rax
	addq	$13552, %rax                    # imm = 0x34F0
	movq	384(%rsp), %rcx                 # 8-byte Reload
	movsbl	(%rcx,%rax), %eax
	movq	288(%rsp), %rcx                 # 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	jmp	.LBB17_278
.LBB17_276:
	movq	176(%rsp), %rdx                 # 8-byte Reload
.LBB17_278:                             # %if.end142.i
	movzwl	849064(%rdi), %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, %r14
	movq	168(%rsp), %rdi                 # 8-byte Reload
	movl	188(%rsp), %esi                 # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r13d, %ecx
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	296(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	movq	%rbx, 184(%rsp)                 # 8-byte Spill
	movq	%r10, 168(%rsp)                 # 8-byte Spill
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rbp                  # 8-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movl	%r8d, %ebx
	movq	%r15, %r12
	movl	%r9d, %r15d
	movq	104(%rsp), %r14                 # 8-byte Reload
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	movq	208(%rsp), %rdi                 # 8-byte Reload
	movl	112(%rsp), %esi                 # 4-byte Reload
	movq	288(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r13d, %ecx
	movl	%ebx, %r8d
	movl	%r15d, %r9d
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	56(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	160(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	448(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	256(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	168(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	48(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	get_block_chroma
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
	testl	%ebp, %ebp
	jle	.LBB17_301
# %bb.279:                              # %for.cond4.preheader.lr.ph.i363.i
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	jle	.LBB17_301
# %bb.280:                              # %for.cond4.preheader.us.preheader.i367.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movq	8(%rax), %rax
	movslq	16(%rsp), %rcx                  # 4-byte Folded Reload
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rax,%rcx,8), %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %r12
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rbp
	movl	$16, %eax
	movq	(%rsp), %rdi                    # 8-byte Reload
	subl	%edi, %eax
	cltq
	movslq	72(%rsp), %rdx                  # 4-byte Folded Reload
	leaq	(%rcx,%rdx,2), %rsi
	leal	-1(%rdi), %ecx
	shrl	%ecx
	leaq	4(,%rcx,4), %r8
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	incl	%ecx
	movl	%ecx, %r9d
	andl	$-16, %r9d
	leaq	(,%r9,4), %r10
	leal	(%r9,%r9), %edi
	movl	%edi, 32(%rsp)                  # 4-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB17_281
	.p2align	4, 0x90
.LBB17_290:                             # %for.cond4.for.end_crit_edge.us.i400.i
                                        #   in Loop: Header=BB17_281 Depth=1
	leaq	(%r14,%rax,2), %rsi
	leaq	(,%rax,2), %r12
	addq	%r13, %r12
	leaq	(%r15,%rax,2), %rbp
	incl	%ebx
	cmpl	24(%rsp), %ebx                  # 4-byte Folded Reload
	je	.LBB17_291
.LBB17_281:                             # %for.cond4.preheader.us.i370.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_286 Depth 2
                                        #     Child Loop BB17_289 Depth 2
	cmpl	$31, (%rsp)                     # 4-byte Folded Reload
	jae	.LBB17_283
.LBB17_282:                             #   in Loop: Header=BB17_281 Depth=1
	movq	%rsi, %r14
	xorl	%esi, %esi
	movq	%rbp, %r15
	movq	%r12, %r13
.LBB17_288:                             # %for.body6.us.i375.i.preheader
                                        #   in Loop: Header=BB17_281 Depth=1
	movq	(%rsp), %r12                    # 8-byte Reload
	.p2align	4, 0x90
.LBB17_289:                             # %for.body6.us.i375.i
                                        #   Parent Loop BB17_281 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r13), %edi
	movzwl	(%r15), %r11d
	addl	%r11d, %edi
	incl	%edi
	shrl	%edi
	movw	%di, (%r14)
	movzwl	2(%r13), %edi
	addq	$4, %r13
	movzwl	2(%r15), %r11d
	addq	$4, %r15
	addl	%r11d, %edi
	incl	%edi
	shrl	%edi
	movw	%di, 2(%r14)
	addq	$4, %r14
	addl	$2, %esi
	cmpl	%r12d, %esi
	jl	.LBB17_289
	jmp	.LBB17_290
	.p2align	4, 0x90
.LBB17_283:                             # %vector.memcheck540
                                        #   in Loop: Header=BB17_281 Depth=1
	leaq	(%rsi,%r8), %r14
	leaq	(%r12,%r8), %rdi
	leaq	(%r8,%rbp), %r15
	cmpq	%rdi, %rsi
	setb	%r13b
	cmpq	%r14, %r12
	setb	%r11b
	cmpq	%r15, %rsi
	setb	%dil
	cmpq	%r14, %rbp
	setb	%r14b
	testb	%r11b, %r13b
	jne	.LBB17_282
# %bb.284:                              # %vector.memcheck540
                                        #   in Loop: Header=BB17_281 Depth=1
	andb	%r14b, %dil
	jne	.LBB17_282
# %bb.285:                              # %vector.ph554
                                        #   in Loop: Header=BB17_281 Depth=1
	leaq	(%rsi,%r10), %r14
	leaq	(%r10,%rbp), %r15
	leaq	(%r12,%r10), %r13
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB17_286:                             # %vector.body566
                                        #   Parent Loop BB17_281 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r12,%rdi), %xmm0
	movdqu	16(%r12,%rdi), %xmm1
	movdqu	32(%r12,%rdi), %xmm2
	movdqu	48(%r12,%rdi), %xmm3
	movdqu	(%rbp,%rdi), %xmm4
	pavgw	%xmm0, %xmm4
	movdqu	16(%rbp,%rdi), %xmm0
	pavgw	%xmm1, %xmm0
	movdqu	32(%rbp,%rdi), %xmm1
	pavgw	%xmm2, %xmm1
	movdqu	48(%rbp,%rdi), %xmm2
	pavgw	%xmm3, %xmm2
	movdqu	%xmm4, (%rsi,%rdi)
	movdqu	%xmm0, 16(%rsi,%rdi)
	movdqu	%xmm1, 32(%rsi,%rdi)
	movdqu	%xmm2, 48(%rsi,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, %r10
	jne	.LBB17_286
# %bb.287:                              # %middle.block551
                                        #   in Loop: Header=BB17_281 Depth=1
	movl	32(%rsp), %esi                  # 4-byte Reload
	cmpl	%ecx, %r9d
	je	.LBB17_290
	jmp	.LBB17_288
.LBB17_291:                             # %bi_prediction.exit406.i
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	1248(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	360(%rsp), %rdi                 # 8-byte Reload
	movq	(%rdi), %r15
	movq	416(%rsp), %rdi                 # 8-byte Reload
	movq	(%rdi), %r12
	addq	%rdx, %rdx
	movq	48(%rsp), %rdi                  # 8-byte Reload
	addq	(%rsi,%rdi,8), %rdx
	movq	80(%rsp), %rsi                  # 8-byte Reload
	leaq	4(,%rsi,4), %rsi
	movl	%ecx, %edi
	andl	$-16, %edi
	leaq	(,%rdi,4), %r8
	leal	(%rdi,%rdi), %r9d
	xorl	%r10d, %r10d
	jmp	.LBB17_292
	.p2align	4, 0x90
.LBB17_300:                             # %for.cond4.for.end_crit_edge.us.i445.i
                                        #   in Loop: Header=BB17_292 Depth=1
	leaq	(%r11,%rax,2), %rdx
	leaq	(%r14,%rax,2), %r15
	leaq	(%rbx,%rax,2), %r12
	incl	%r10d
	cmpl	%r13d, %r10d
	je	.LBB17_301
.LBB17_292:                             # %for.cond4.preheader.us.i415.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_297 Depth 2
                                        #     Child Loop BB17_299 Depth 2
	cmpl	$31, (%rsp)                     # 4-byte Folded Reload
	jae	.LBB17_294
.LBB17_293:                             #   in Loop: Header=BB17_292 Depth=1
	movq	%rdx, %r11
	xorl	%edx, %edx
	movq	%r12, %rbx
	movq	%r15, %r14
	movq	24(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB17_299:                             # %for.body6.us.i420.i
                                        #   Parent Loop BB17_292 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14), %r15d
	movzwl	(%rbx), %r12d
	leal	(%r15,%r12), %ebp
	incl	%ebp
	shrl	%ebp
	movw	%bp, (%r11)
	movzwl	2(%r14), %r15d
	addq	$4, %r14
	movzwl	2(%rbx), %r12d
	addq	$4, %rbx
	leal	(%r15,%r12), %ebp
	incl	%ebp
	shrl	%ebp
	movw	%bp, 2(%r11)
	addq	$4, %r11
	addl	$2, %edx
	cmpl	(%rsp), %edx                    # 4-byte Folded Reload
	jl	.LBB17_299
	jmp	.LBB17_300
	.p2align	4, 0x90
.LBB17_294:                             # %vector.memcheck613
                                        #   in Loop: Header=BB17_292 Depth=1
	leaq	(%rdx,%rsi), %rbx
	leaq	(%r15,%rsi), %r11
	leaq	(%r12,%rsi), %r14
	cmpq	%r11, %rdx
	setb	%bpl
	cmpq	%rbx, %r15
	setb	%r13b
	cmpq	%r14, %rdx
	setb	%r11b
	cmpq	%rbx, %r12
	setb	%bl
	testb	%r13b, %bpl
	jne	.LBB17_293
# %bb.295:                              # %vector.memcheck613
                                        #   in Loop: Header=BB17_292 Depth=1
	andb	%bl, %r11b
	jne	.LBB17_293
# %bb.296:                              # %vector.ph627
                                        #   in Loop: Header=BB17_292 Depth=1
	leaq	(%rdx,%r8), %r11
	leaq	(%r12,%r8), %rbx
	leaq	(%r15,%r8), %r14
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB17_297:                             # %vector.body639
                                        #   Parent Loop BB17_292 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r15,%r13), %xmm0
	movdqu	16(%r15,%r13), %xmm1
	movdqu	32(%r15,%r13), %xmm2
	movdqu	48(%r15,%r13), %xmm3
	movdqu	(%r12,%r13), %xmm4
	pavgw	%xmm0, %xmm4
	movdqu	16(%r12,%r13), %xmm0
	pavgw	%xmm1, %xmm0
	movdqu	32(%r12,%r13), %xmm1
	pavgw	%xmm2, %xmm1
	movdqu	48(%r12,%r13), %xmm2
	pavgw	%xmm3, %xmm2
	movdqu	%xmm4, (%rdx,%r13)
	movdqu	%xmm0, 16(%rdx,%r13)
	movdqu	%xmm1, 32(%rdx,%r13)
	movdqu	%xmm2, 48(%rdx,%r13)
	addq	$64, %r13
	cmpq	%r13, %r8
	jne	.LBB17_297
# %bb.298:                              # %middle.block624
                                        #   in Loop: Header=BB17_292 Depth=1
	movl	%r9d, %edx
	cmpl	%ecx, %edi
	movq	24(%rsp), %r13                  # 8-byte Reload
	jne	.LBB17_299
	jmp	.LBB17_300
.LBB17_151:                             # %if.then.i.i198
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r9, %r13
	movq	%r14, %rbx
	movq	%r11, %r14
	callq	fprintf@PLT
	movq	%r14, %r11
	movq	%rbx, %r14
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	movq	%r13, %r9
	jmp	.LBB17_152
.LBB17_156:                             # %if.then.i475.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r9, %r13
	movq	%r14, %rbx
	movq	%r11, %r14
	callq	fprintf@PLT
	movq	%r14, %r11
	movq	%rbx, %r14
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	336(%rsp), %rdi                 # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	movq	%r13, %r9
	jmp	.LBB17_157
.LBB17_6:                               # %if.then.i.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movw	%si, 48(%rsp)                   # 2-byte Spill
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r11, %rbx
	callq	fprintf@PLT
	movzwl	48(%rsp), %esi                  # 2-byte Folded Reload
	movq	%rbx, %r11
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	16(%rsp), %r9d                  # 4-byte Reload
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	jmp	.LBB17_7
.LBB17_154:                             # %if.then18.i.i193
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %eax
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	108(%rsi), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2, %esi
	movq	%r9, %r13
	movl	%eax, %r9d
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rbx
	movq	%r11, %r14
	callq	fprintf@PLT
	movq	%r14, %r11
	movq	%rbx, %r14
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	%r13, %r9
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB17_155
.LBB17_159:                             # %if.then18.i470.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %eax
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	108(%rsi), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2, %esi
	movq	%r9, 248(%rsp)                  # 8-byte Spill
	movl	%eax, %r9d
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rbx
	movq	%r11, %r14
	callq	fprintf@PLT
	movq	%r14, %r11
	movq	%rbx, %r14
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	352(%rsp), %rdi                 # 8-byte Reload
	movq	256(%rsp), %r9                  # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movswl	22(%rbx), %edx
	jmp	.LBB17_160
.LBB17_10:                              # %if.then18.i.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %r9d
	movl	108(%r10), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movw	%si, 56(%rsp)                   # 2-byte Spill
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r11, %rbx
	callq	fprintf@PLT
	movzwl	64(%rsp), %esi                  # 2-byte Folded Reload
	movq	%rbx, %r11
	movl	32(%rsp), %r9d                  # 4-byte Reload
	movq	120(%rsp), %rbx                 # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	32(%rsp), %rax                  # 8-byte Reload
	movswl	18(%r12,%rax,4), %edx
	jmp	.LBB17_11
.LBB17_66:                              # %for.cond1.preheader.us.i303.i.preheader
	movl	%edi, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	(%rdx,%rdx), %rbx
	xorl	%r14d, %r14d
	jmp	.LBB17_67
	.p2align	4, 0x90
.LBB17_81:                              # %for.cond1.for.inc13_crit_edge.split.us41.i319.i
                                        #   in Loop: Header=BB17_67 Depth=1
	incq	%r14
	movq	48(%rsp), %r13                  # 8-byte Reload
	cmpq	%r13, %r14
	je	.LBB17_82
.LBB17_67:                              # %for.cond1.preheader.us.i303.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_70 Depth 2
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB17_69
# %bb.68:                               #   in Loop: Header=BB17_67 Depth=1
	xorl	%esi, %esi
.LBB17_79:                              # %for.cond1.for.inc13_crit_edge.split.us41.i319.i.unr-lcssa
                                        #   in Loop: Header=BB17_67 Depth=1
	testb	$1, %dil
	je	.LBB17_81
# %bb.80:                               # %for.body3.us26.i307.i.epil
                                        #   in Loop: Header=BB17_67 Depth=1
	movq	(%rbp,%r14,8), %rcx
	movzwl	(%rcx,%rsi,2), %ecx
	addq	%rsi, %rsi
	imull	%r10d, %ecx
	addl	%r11d, %ecx
	testl	%ecx, %ecx
	movl	$0, %r13d
	cmovlel	%r13d, %ecx
	cmpl	%r15d, %ecx
	cmovgel	%r15d, %ecx
	addq	(%r9,%r14,8), %rsi
	movw	%cx, (%rsi,%rdx,2)
	jmp	.LBB17_81
	.p2align	4, 0x90
.LBB17_69:                              # %for.body3.us26.i307.i.preheader
                                        #   in Loop: Header=BB17_67 Depth=1
	xorl	%esi, %esi
	jmp	.LBB17_70
	.p2align	4, 0x90
.LBB17_78:                              # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	movq	(%r9,%r14,8), %rcx
	addq	%rbx, %rcx
	movw	%r13w, 2(%rcx,%rsi,2)
	addq	$2, %rsi
	cmpq	%rsi, 32(%rsp)                  # 8-byte Folded Reload
	je	.LBB17_79
.LBB17_70:                              # %for.body3.us26.i307.i
                                        #   Parent Loop BB17_67 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%r14,8), %r13
	movzwl	(%r13,%rsi,2), %r13d
	imull	%r10d, %r13d
	addl	%r11d, %r13d
	testl	%r13d, %r13d
	jg	.LBB17_72
# %bb.71:                               # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	xorl	%r13d, %r13d
.LBB17_72:                              # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	cmpl	%r15d, %r13d
	jl	.LBB17_74
# %bb.73:                               # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	movl	%r15d, %r13d
.LBB17_74:                              # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	movq	(%r9,%r14,8), %rcx
	addq	%rbx, %rcx
	movw	%r13w, (%rcx,%rsi,2)
	movq	(%rbp,%r14,8), %rcx
	movzwl	2(%rcx,%rsi,2), %r13d
	imull	%r10d, %r13d
	addl	%r11d, %r13d
	testl	%r13d, %r13d
	jg	.LBB17_76
# %bb.75:                               # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	xorl	%r13d, %r13d
.LBB17_76:                              # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	cmpl	%r15d, %r13d
	jl	.LBB17_78
# %bb.77:                               # %for.body3.us26.i307.i
                                        #   in Loop: Header=BB17_70 Depth=2
	movl	%r15d, %r13d
	jmp	.LBB17_78
.LBB17_82:                              # %weighted_mc_prediction.exit343.i
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	1248(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movl	8(%rcx), %r9d
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	8(%rcx), %r10d
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	849080(%rcx), %r11d
	testw	%r12w, %r12w
	je	.LBB17_91
# %bb.83:                               # %for.cond1.preheader.us.us.i372.i.preheader
	addq	%rdx, %rdx
	xorl	%esi, %esi
	movq	208(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB17_84
	.p2align	4, 0x90
.LBB17_90:                              # %for.cond1.for.inc13_crit_edge.split.us.us.us.i390.i
                                        #   in Loop: Header=BB17_84 Depth=1
	incq	%rsi
	cmpq	%r13, %rsi
	je	.LBB17_301
.LBB17_84:                              # %for.cond1.preheader.us.us.i372.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_85 Depth 2
	xorl	%ebx, %ebx
	jmp	.LBB17_85
	.p2align	4, 0x90
.LBB17_89:                              # %for.body3.us.us.us.i376.i
                                        #   in Loop: Header=BB17_85 Depth=2
	movq	(%rax,%rsi,8), %rcx
	addq	%rdx, %rcx
	movw	%bp, (%rcx,%rbx,2)
	incq	%rbx
	cmpq	%rbx, %rdi
	je	.LBB17_90
.LBB17_85:                              # %for.body3.us.us.us.i376.i
                                        #   Parent Loop BB17_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14,%rsi,8), %rcx
	movzwl	(%rcx,%rbx,2), %ebp
	imull	%r9d, %ebp
	addl	%r8d, %ebp
	movl	%r12d, %ecx
	sarl	%cl, %ebp
	addl	%r10d, %ebp
	testl	%ebp, %ebp
	jg	.LBB17_87
# %bb.86:                               # %for.body3.us.us.us.i376.i
                                        #   in Loop: Header=BB17_85 Depth=2
	xorl	%ebp, %ebp
.LBB17_87:                              # %for.body3.us.us.us.i376.i
                                        #   in Loop: Header=BB17_85 Depth=2
	cmpl	%r11d, %ebp
	jl	.LBB17_89
# %bb.88:                               # %for.body3.us.us.us.i376.i
                                        #   in Loop: Header=BB17_85 Depth=2
	movl	%r11d, %ebp
	jmp	.LBB17_89
.LBB17_91:                              # %for.cond1.preheader.us.i353.i.preheader
	movl	%edi, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	leaq	(%rdx,%rdx), %r8
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movq	208(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB17_92
	.p2align	4, 0x90
.LBB17_106:                             # %for.cond1.for.inc13_crit_edge.split.us41.i369.i
                                        #   in Loop: Header=BB17_92 Depth=1
	incq	%r14
	cmpq	%r13, %r14
	je	.LBB17_301
.LBB17_92:                              # %for.cond1.preheader.us.i353.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_95 Depth 2
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB17_94
# %bb.93:                               #   in Loop: Header=BB17_92 Depth=1
	xorl	%esi, %esi
.LBB17_104:                             # %for.cond1.for.inc13_crit_edge.split.us41.i369.i.unr-lcssa
                                        #   in Loop: Header=BB17_92 Depth=1
	testb	$1, %dil
	je	.LBB17_106
# %bb.105:                              # %for.body3.us26.i357.i.epil
                                        #   in Loop: Header=BB17_92 Depth=1
	movq	(%r12,%r14,8), %r15
	movzwl	(%r15,%rsi,2), %ebp
	addq	%rsi, %rsi
	imull	%r9d, %ebp
	addl	%r10d, %ebp
	testl	%ebp, %ebp
	cmovlel	%ebx, %ebp
	cmpl	%r11d, %ebp
	cmovgel	%r11d, %ebp
	addq	(%rax,%r14,8), %rsi
	movw	%bp, (%rsi,%rdx,2)
	jmp	.LBB17_106
	.p2align	4, 0x90
.LBB17_94:                              # %for.body3.us26.i357.i.preheader
                                        #   in Loop: Header=BB17_92 Depth=1
	xorl	%esi, %esi
	jmp	.LBB17_95
	.p2align	4, 0x90
.LBB17_103:                             # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	movq	(%rax,%r14,8), %r15
	addq	%r8, %r15
	movw	%bp, 2(%r15,%rsi,2)
	addq	$2, %rsi
	cmpq	%rsi, %rcx
	je	.LBB17_104
.LBB17_95:                              # %for.body3.us26.i357.i
                                        #   Parent Loop BB17_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r12,%r14,8), %r15
	movzwl	(%r15,%rsi,2), %ebp
	imull	%r9d, %ebp
	addl	%r10d, %ebp
	testl	%ebp, %ebp
	jg	.LBB17_97
# %bb.96:                               # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	xorl	%ebp, %ebp
.LBB17_97:                              # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	cmpl	%r11d, %ebp
	jl	.LBB17_99
# %bb.98:                               # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	movl	%r11d, %ebp
.LBB17_99:                              # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	movq	(%rax,%r14,8), %r15
	addq	%r8, %r15
	movw	%bp, (%r15,%rsi,2)
	movq	(%r12,%r14,8), %r15
	movzwl	2(%r15,%rsi,2), %ebp
	imull	%r9d, %ebp
	addl	%r10d, %ebp
	testl	%ebp, %ebp
	jg	.LBB17_101
# %bb.100:                              # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	xorl	%ebp, %ebp
.LBB17_101:                             # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	cmpl	%r11d, %ebp
	jl	.LBB17_103
# %bb.102:                              # %for.body3.us26.i357.i
                                        #   in Loop: Header=BB17_95 Depth=2
	movl	%r11d, %ebp
	jmp	.LBB17_103
.LBB17_135:
	xorl	%r15d, %r15d
.LBB17_138:                             # %mc_prediction.exit226.i.unr-lcssa
	movq	32(%rsp), %r14                  # 8-byte Reload
	testb	$1, %r14b
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %r12                  # 8-byte Reload
	je	.LBB17_140
# %bb.139:                              # %for.body.i219.i.epil
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r12,8), %rax
	leaq	(,%r13,2), %rdi
	addq	(%rax,%r15,8), %rdi
	movq	(%rbp,%r15,8), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB17_140:                             # %mc_prediction.exit226.i
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	1248(%rax), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rsp)                      # 8-byte Folded Reload
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	je	.LBB17_141
# %bb.142:                              # %mc_prediction.exit226.i.new
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	andl	$2147483646, %r14d              # imm = 0x7FFFFFFE
	leaq	(%rax,%r12,8), %r15
	addq	$8, %r15
	xorl	%r12d, %r12d
	addq	%r13, %r13
	movq	208(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB17_143:                             # %for.body.i233.i
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r15,%r12,8), %rdi
	addq	%r13, %rdi
	movq	(%rbp,%r12,8), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movq	(%r15,%r12,8), %rdi
	addq	%r13, %rdi
	movq	8(%rbp,%r12,8), %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$2, %r12
	cmpq	%r12, %r14
	jne	.LBB17_143
# %bb.144:                              # %if.end7.loopexit707.unr-lcssa
	testb	$1, 32(%rsp)                    # 1-byte Folded Reload
	jne	.LBB17_145
.LBB17_301:                             # %if.end7
	addq	$456, %rsp                      # imm = 0x1C8
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
.LBB17_141:
	.cfi_def_cfa_offset 512
	xorl	%r12d, %r12d
	movq	208(%rsp), %rbp                 # 8-byte Reload
	testb	$1, 32(%rsp)                    # 1-byte Folded Reload
	je	.LBB17_301
.LBB17_145:                             # %for.body.i233.i.epil
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rax,8), %rax
	movq	48(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rdi
	addq	(%rax,%r12,8), %rdi
	movq	(%rbp,%r12,8), %rsi
	movq	%rbx, %rdx
	addq	$456, %rsp                      # imm = 0x1C8
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
	jmp	memcpy@PLT                      # TAILCALL
.LBB17_238:                             # %if.then.i.i283
	.cfi_def_cfa_offset 512
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r13, %rbx
	movq	%r11, %r13
	callq	fprintf@PLT
	movq	%r13, %r11
	movq	%rbx, %r13
	movq	168(%rsp), %rdi                 # 8-byte Reload
	movl	16(%rsp), %r9d                  # 4-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	jmp	.LBB17_239
.LBB17_243:                             # %if.then.i350.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r13, %r12
	movq	%r11, %r13
	callq	fprintf@PLT
	movq	%r13, %r11
	movq	%r12, %r13
	movq	168(%rsp), %rdi                 # 8-byte Reload
	movl	16(%rsp), %r9d                  # 4-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	jmp	.LBB17_244
.LBB17_111:                             # %if.then.i.i127
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	(%r10), %rax
	movl	848712(%rax), %ecx
	movl	108(%r10), %r8d
	movw	%si, 80(%rsp)                   # 2-byte Spill
	movl	$.L.str.1, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	movq	%r11, %rbx
	callq	fprintf@PLT
	movzwl	80(%rsp), %esi                  # 2-byte Folded Reload
	movq	%rbx, %r11
	movl	16(%rsp), %r9d                  # 4-byte Reload
	movq	104(%rsp), %rbx                 # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	jmp	.LBB17_112
.LBB17_241:                             # %if.then18.i.i278
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %r9d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	108(%rax), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r13, %rbx
	movq	%r11, %r13
	callq	fprintf@PLT
	movq	%r13, %r11
	movq	%rbx, %r13
	movq	184(%rsp), %rdi                 # 8-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	movq	24(%rsp), %r10                  # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB17_242
.LBB17_246:                             # %if.then18.i345.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %r9d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	108(%rax), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r11, %r13
	callq	fprintf@PLT
	movq	%r13, %r11
	movq	144(%rsp), %r13                 # 8-byte Reload
	movq	184(%rsp), %rdi                 # 8-byte Reload
	movl	32(%rsp), %r9d                  # 4-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movswl	22(%rbp), %edx
	jmp	.LBB17_247
.LBB17_114:                             # %if.then18.i.i121
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	decl	%r8d
	movq	(%r10), %rax
	movl	848712(%rax), %r9d
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	108(%rax), %r10d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movw	%si, 88(%rsp)                   # 2-byte Spill
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	movq	%r11, %rbx
	callq	fprintf@PLT
	movzwl	96(%rsp), %esi                  # 2-byte Folded Reload
	movq	%rbx, %r11
	movl	32(%rsp), %r9d                  # 4-byte Reload
	movq	120(%rsp), %rbx                 # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movswl	18(%r15,%r12,4), %edx
	jmp	.LBB17_115
.Lfunc_end17:
	.size	perform_mc, .Lfunc_end17-perform_mc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_block_chroma
.LCPI18_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	get_block_chroma,@function
get_block_chroma:                       # @get_block_chroma
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
	subq	$552, %rsp                      # imm = 0x228
	.cfi_def_cfa_offset 608
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	656(%rsp), %r12
	movq	648(%rsp), %r14
	movl	624(%rsp), %r13d
	movl	616(%rsp), %ebx
	cmpl	$0, 384(%rdi)
	je	.LBB18_1
# %bb.94:                               # %if.then
	movzwl	672(%rsp), %ebp
	movl	$.Lstr.3, %edi
	callq	puts@PLT
	imull	%ebx, %r13d
	movslq	%r13d, %r15
	addq	%r15, %r15
	movq	%r14, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	callq	memset@PLT
	movq	%r12, %rdi
	movl	%ebp, %esi
	movq	%r15, %rdx
	addq	$552, %rsp                      # imm = 0x228
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
	jmp	memset@PLT                      # TAILCALL
.LBB18_1:                               # %if.else
	.cfi_def_cfa_offset 608
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	680(%rsp), %r11
	movl	640(%rsp), %eax
	movl	632(%rsp), %r10d
	movl	%ecx, %r14d
	movl	%ecx, %r15d
	andl	%esi, %r15d
	movl	%r8d, %ebx
	andl	%edx, %ebx
	movl	%r10d, %ecx
	sarl	%cl, %esi
	movl	%eax, %ecx
	sarl	%cl, %edx
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	subl	856848(%r11), %ecx
	cmpl	%ecx, %esi
	cmovgl	%esi, %ecx
	cmpl	%r9d, %ecx
	cmovgel	%r9d, %ecx
	subl	856852(%r11), %eax
	cmpl	%eax, %edx
	cmovgl	%edx, %eax
	movl	608(%rsp), %edx
	cmpl	%edx, %eax
	cmovgel	%edx, %eax
	movslq	360(%rdi), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	136(%rdi), %rdx
	cltq
	movq	(%rdx), %rsi
	movq	8(%rdx), %rdi
	movq	(%rsi,%rax,8), %rdx
	movslq	%ecx, %rsi
	leaq	(%rdx,%rsi,2), %r11
	movq	(%rdi,%rax,8), %rcx
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%rsi,2), %rsi
	movl	%r15d, %edi
	shll	$16, %edi
	movl	%ebx, %ebp
	shll	$16, %ebp
	movl	%ebp, %eax
	orl	%edi, %eax
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	je	.LBB18_2
# %bb.12:                               # %if.else29
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movl	664(%rsp), %eax
	incl	%r14d
	movl	%r14d, %r10d
	subl	%r15d, %r10d
	incl	%r8d
	movl	%r8d, %r9d
	subl	%ebx, %r9d
	movl	%r9d, %ecx
	imull	%r10d, %ecx
	movswl	%cx, %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	testl	%edi, %edi
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	je	.LBB18_13
# %bb.43:                               # %if.else53
	testl	%ebp, %ebp
	je	.LBB18_44
# %bb.70:                               # %if.else66
	testl	%r13d, %r13d
	movq	32(%rsp), %r8                   # 8-byte Reload
	jle	.LBB18_93
# %bb.71:                               # %for.body.lr.ph.i282
	leal	-1(%rax), %ecx
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	movl	%ebp, %eax
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	movl	%ebp, 272(%rsp)                 # 4-byte Spill
	movl	%eax, %ebp
	movq	448(%rsp), %rax                 # 8-byte Reload
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB18_93
# %bb.72:                               # %for.body.us.i285.preheader
	imull	%r10d, %ebp
	sarl	$16, %ebp
	movd	%edi, %xmm0
	movd	%ebx, %xmm1
	movd	%r9d, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	psrad	$16, %xmm2
	leal	-1(%r13), %r10d
	movq	%r10, %rcx
	shlq	$5, %rcx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	leal	-1(%rbx), %r15d
	movq	24(%rsp), %r14                  # 8-byte Reload
	addq	%r14, %rcx
	leaq	(%rcx,%r15,2), %rcx
	addq	$2, %rcx
	leaq	(%r8,%r8), %r13
	leaq	(%r11,%r8,2), %rdi
	leaq	2(,%r10,2), %r9
	imulq	%r8, %r9
	addq	%r11, %r9
	leaq	(%r9,%r15,2), %r9
	addq	$4, %r9
	movq	%r10, 488(%rsp)                 # 8-byte Spill
	imulq	%r8, %r10
	movq	%r15, 480(%rsp)                 # 8-byte Spill
	addq	%r15, %r10
	movq	72(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %r10
	leaq	(%rdx,%r10,2), %r10
	addq	$4, %r10
	movl	%ebx, %ebx
	cmpq	%r14, %r9
	seta	%r9b
	cmpq	%rcx, %rdi
	setb	%dil
	andb	%r9b, %dil
	cmpq	%r14, %r10
	seta	%r9b
	cmpq	%rcx, %r11
	setb	%cl
	andb	%r9b, %cl
	testl	%r8d, %r8d
	sets	%r8b
	orb	%cl, %r8b
	orb	%dil, %r8b
	movb	%r8b, 464(%rsp)                 # 1-byte Spill
	movq	%rbx, 392(%rsp)                 # 8-byte Spill
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	andl	$2147483616, %ebx               # imm = 0x7FFFFFE0
	movq	%rbx, 456(%rsp)                 # 8-byte Spill
	leal	(%rbx,%rbx), %ecx
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	movd	12(%rsp), %xmm0                 # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm7                # xmm7 = xmm0[0,0,0,0]
	movd	%ebp, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 352(%rsp)                # 16-byte Spill
	pshufd	$0, %xmm2, %xmm3                # xmm3 = xmm2[0,0,0,0]
	pshufd	$85, %xmm2, %xmm4               # xmm4 = xmm2[1,1,1,1]
	movd	272(%rsp), %xmm0                # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm5                # xmm5 = xmm0[0,0,0,0]
	movd	%eax, %xmm0
	movd	%xmm2, %r10d
	movd	%xmm4, %edi
	leaq	(%rdx,%r15,2), %r9
	addq	$50, %r9
	leaq	48(%r14), %r8
	xorl	%ecx, %ecx
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pxor	%xmm1, %xmm1
	movdqa	%xmm0, 528(%rsp)                # 16-byte Spill
	movss	%xmm0, %xmm1                    # xmm1 = xmm0[0],xmm1[1,2,3]
	movdqa	%xmm2, 512(%rsp)                # 16-byte Spill
	movdqa	%xmm7, 368(%rsp)                # 16-byte Spill
	movq	%rsi, 504(%rsp)                 # 8-byte Spill
	movl	%edi, 428(%rsp)                 # 4-byte Spill
	movaps	%xmm1, 432(%rsp)                # 16-byte Spill
	movdqa	%xmm4, 336(%rsp)                # 16-byte Spill
	movdqa	%xmm6, 320(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 304(%rsp)                # 16-byte Spill
	movdqa	%xmm5, 224(%rsp)                # 16-byte Spill
	pxor	%xmm10, %xmm10
	jmp	.LBB18_73
	.p2align	4, 0x90
.LBB18_81:                              # %for.cond4.for.inc18_crit_edge.us.i
                                        #   in Loop: Header=BB18_73 Depth=1
	addq	$32, 24(%rsp)                   # 8-byte Folded Spill
	movq	264(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	movq	416(%rsp), %r9                  # 8-byte Reload
	addq	%r13, %r9
	movq	408(%rsp), %r8                  # 8-byte Reload
	addq	$32, %r8
	movq	400(%rsp), %r11                 # 8-byte Reload
	cmpl	64(%rsp), %ecx                  # 4-byte Folded Reload
	movq	40(%rsp), %r15                  # 8-byte Reload
	movl	%eax, %ebp
	movq	%rdi, %rax
	movl	%r14d, %edi
	movq	504(%rsp), %rsi                 # 8-byte Reload
	je	.LBB18_82
.LBB18_73:                              # %for.body.us.i285
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_77 Depth 2
                                        #     Child Loop BB18_80 Depth 2
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	(%r11,%rcx,2), %r15
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	movq	%r9, 416(%rsp)                  # 8-byte Spill
	movq	%r8, 408(%rsp)                  # 8-byte Spill
	movq	%r15, 400(%rsp)                 # 8-byte Spill
	jb	.LBB18_74
# %bb.75:                               # %vector.memcheck
                                        #   in Loop: Header=BB18_73 Depth=1
	cmpb	$0, 464(%rsp)                   # 1-byte Folded Reload
	je	.LBB18_76
.LBB18_74:                              #   in Loop: Header=BB18_73 Depth=1
	xorl	%ecx, %ecx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	%edi, %r14d
	movq	%rax, %rdi
	movl	%ebp, %eax
	movl	272(%rsp), %ebp                 # 4-byte Reload
.LBB18_79:                              # %for.body6.us.i286.preheader
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%ecx, %edx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB18_80:                              # %for.body6.us.i286
                                        #   Parent Loop BB18_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r11,%r9,2), %ebx
	imull	%r8d, %ebx
	movzwl	(%r15,%r9,2), %ecx
	imull	%eax, %ecx
	movzwl	2(%r11,%r9,2), %r12d
	imull	%r10d, %r12d
	addl	%ecx, %r12d
	movzwl	2(%r15,%r9,2), %ecx
	imull	%r14d, %ecx
	addl	%ebp, %ebx
	addl	%r12d, %ebx
	addl	%ecx, %ebx
	movl	%edi, %ecx
	sarl	%cl, %ebx
	movw	%bx, (%rsi,%r9,2)
	incq	%r9
	cmpl	%r9d, %edx
	jne	.LBB18_80
	jmp	.LBB18_81
	.p2align	4, 0x90
.LBB18_76:                              # %vector.ph
                                        #   in Loop: Header=BB18_73 Depth=1
	movl	%ebp, %edx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	496(%rsp), %rax                 # 8-byte Reload
	leaq	(%rcx,%rax), %rsi
	addq	%rax, %r15
	addq	%rax, %r11
	movq	%r8, %rcx
	movq	456(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB18_77:                              # %vector.body
                                        #   Parent Loop BB18_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-18(%r9), %xmm2
	movdqu	-2(%r9), %xmm0
	movdqu	-50(%r9), %xmm6
	movdqu	-34(%r9), %xmm5
	movdqa	%xmm6, %xmm7
	punpcklwd	%xmm10, %xmm7           # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	punpckhwd	%xmm10, %xmm6           # xmm6 = xmm6[4],xmm10[4],xmm6[5],xmm10[5],xmm6[6],xmm10[6],xmm6[7],xmm10[7]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	punpckhwd	%xmm10, %xmm5           # xmm5 = xmm5[4],xmm10[4],xmm5[5],xmm10[5],xmm5[6],xmm10[6],xmm5[7],xmm10[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm10, %xmm3           # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1],xmm3[2],xmm10[2],xmm3[3],xmm10[3]
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	punpckhwd	%xmm10, %xmm0           # xmm0 = xmm0[4],xmm10[4],xmm0[5],xmm10[5],xmm0[6],xmm10[6],xmm0[7],xmm10[7]
	movdqa	368(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm11             # xmm11 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	320(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1]
	movdqa	%xmm11, 192(%rsp)               # 16-byte Spill
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm15             # xmm15 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm12             # xmm12 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm14             # xmm14 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm11             # xmm11 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movdqu	-18(%r9,%r13), %xmm1
	movdqu	-50(%r9,%r13), %xmm0
	movdqu	-34(%r9,%r13), %xmm5
	movdqa	%xmm0, %xmm3
	punpckhwd	%xmm10, %xmm3           # xmm3 = xmm3[4],xmm10[4],xmm3[5],xmm10[5],xmm3[6],xmm10[6],xmm3[7],xmm10[7]
	punpcklwd	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0],xmm0[1],xmm10[1],xmm0[2],xmm10[2],xmm0[3],xmm10[3]
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm10, %xmm8           # xmm8 = xmm8[4],xmm10[4],xmm8[5],xmm10[5],xmm8[6],xmm10[6],xmm8[7],xmm10[7]
	punpcklwd	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm10, %xmm7           # xmm7 = xmm7[4],xmm10[4],xmm7[5],xmm10[5],xmm7[6],xmm10[6],xmm7[7],xmm10[7]
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	movdqa	352(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pshufd	$245, %xmm6, %xmm0              # xmm0 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movdqa	%xmm6, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm0, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm6, %xmm5
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0],xmm5[1],xmm8[1]
	movdqa	%xmm6, %xmm8
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0],xmm8[1],xmm1[1]
	movdqa	%xmm8, 96(%rsp)                 # 16-byte Spill
	movdqa	%xmm6, %xmm1
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm8              # xmm8 = xmm1[0,2,2,3]
	pshufd	$245, %xmm7, %xmm1              # xmm1 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0],xmm8[1],xmm1[1]
	movdqu	-2(%r9,%r13), %xmm1
	movdqa	%xmm1, %xmm7
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	movdqa	%xmm6, %xmm9
	pmuludq	%xmm1, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm9            # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	movdqa	%xmm9, 240(%rsp)                # 16-byte Spill
	punpckhwd	%xmm10, %xmm7           # xmm7 = xmm7[4],xmm10[4],xmm7[5],xmm10[5],xmm7[6],xmm10[6],xmm7[7],xmm10[7]
	movdqa	%xmm6, %xmm1
	pmuludq	%xmm7, %xmm1
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm7, %xmm0              # xmm0 = xmm7[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqu	-48(%r9), %xmm0
	movdqa	%xmm0, %xmm7
	punpckhwd	%xmm10, %xmm0           # xmm0 = xmm0[4],xmm10[4],xmm0[5],xmm10[5],xmm0[6],xmm10[6],xmm0[7],xmm10[7]
	movdqa	304(%rsp), %xmm6                # 16-byte Reload
	movdqa	%xmm6, %xmm9
	pmuludq	%xmm0, %xmm9
	pshufd	$232, %xmm9, %xmm13             # xmm13 = xmm9[0,2,2,3]
	pshufd	$245, %xmm0, %xmm9              # xmm9 = xmm0[1,1,3,3]
	pshufd	$245, %xmm6, %xmm0              # xmm0 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm13           # xmm13 = xmm13[0],xmm9[0],xmm13[1],xmm9[1]
	paddd	%xmm4, %xmm13
	movdqa	%xmm13, 208(%rsp)               # 16-byte Spill
	punpcklwd	%xmm10, %xmm7           # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm9              # xmm9 = xmm4[0,2,2,3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm9            # xmm9 = xmm9[0],xmm4[0],xmm9[1],xmm4[1]
	paddd	%xmm2, %xmm9
	movdqa	%xmm9, 80(%rsp)                 # 16-byte Spill
	movdqu	-32(%r9), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	movdqa	%xmm6, %xmm7
	pmuludq	%xmm2, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm7            # xmm7 = xmm7[0],xmm2[0],xmm7[1],xmm2[1]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, 144(%rsp)                # 16-byte Spill
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	movdqa	%xmm6, %xmm2
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm5              # xmm5 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm2              # xmm2 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
	paddd	%xmm3, %xmm5
	movdqa	%xmm5, 112(%rsp)                # 16-byte Spill
	movdqu	-16(%r9), %xmm2
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	paddd	%xmm8, %xmm4
	movdqa	%xmm4, 128(%rsp)                # 16-byte Spill
	punpcklwd	%xmm10, %xmm3           # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1],xmm3[2],xmm10[2],xmm3[3],xmm10[3]
	movdqa	%xmm6, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm4              # xmm4 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	paddd	96(%rsp), %xmm4                 # 16-byte Folded Reload
	movdqa	%xmm4, 288(%rsp)                # 16-byte Spill
	movdqu	(%r9), %xmm2
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	movdqa	%xmm6, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	paddd	%xmm1, %xmm4
	movdqa	%xmm4, 96(%rsp)                 # 16-byte Spill
	punpcklwd	%xmm10, %xmm3           # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1],xmm3[2],xmm10[2],xmm3[3],xmm10[3]
	movdqa	%xmm6, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	paddd	240(%rsp), %xmm1                # 16-byte Folded Reload
	movdqa	%xmm1, 240(%rsp)                # 16-byte Spill
	movdqu	-48(%r9,%r13), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0],xmm0[1],xmm10[1],xmm0[2],xmm10[2],xmm0[3],xmm10[3]
	movdqa	336(%rsp), %xmm4                # 16-byte Reload
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm13             # xmm13 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	punpckhwd	%xmm10, %xmm1           # xmm1 = xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm9              # xmm9 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm9            # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	movdqu	-32(%r9,%r13), %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm8              # xmm8 = xmm3[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0],xmm8[1],xmm1[1]
	punpckhwd	%xmm10, %xmm2           # xmm2 = xmm2[4],xmm10[4],xmm2[5],xmm10[5],xmm2[6],xmm10[6],xmm2[7],xmm10[7]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm7              # xmm7 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm1              # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	movdqu	-16(%r9,%r13), %xmm1
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm10, %xmm1           # xmm1 = xmm1[0],xmm10[0],xmm1[1],xmm10[1],xmm1[2],xmm10[2],xmm1[3],xmm10[3]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm6              # xmm6 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	punpckhwd	%xmm10, %xmm0           # xmm0 = xmm0[4],xmm10[4],xmm0[5],xmm10[5],xmm0[6],xmm10[6],xmm0[7],xmm10[7]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm3              # xmm3 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqu	(%r9,%r13), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm10, %xmm0           # xmm0 = xmm0[0],xmm10[0],xmm0[1],xmm10[1],xmm0[2],xmm10[2],xmm0[3],xmm10[3]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckhwd	%xmm10, %xmm1           # xmm1 = xmm1[4],xmm10[4],xmm1[5],xmm10[5],xmm1[6],xmm10[6],xmm1[7],xmm10[7]
	pmuludq	%xmm1, %xmm4
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	432(%rsp), %xmm1                # 16-byte Reload
	movdqa	224(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm4, %xmm15
	paddd	80(%rsp), %xmm15                # 16-byte Folded Reload
	paddd	%xmm13, %xmm15
	movdqa	192(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm4, %xmm5
	paddd	208(%rsp), %xmm5                # 16-byte Folded Reload
	paddd	%xmm9, %xmm5
	paddd	%xmm4, %xmm12
	paddd	112(%rsp), %xmm12               # 16-byte Folded Reload
	paddd	%xmm8, %xmm12
	movdqa	48(%rsp), %xmm8                 # 16-byte Reload
	paddd	%xmm4, %xmm8
	paddd	144(%rsp), %xmm8                # 16-byte Folded Reload
	paddd	%xmm7, %xmm8
	movdqa	%xmm8, %xmm7
	paddd	%xmm4, %xmm14
	paddd	288(%rsp), %xmm14               # 16-byte Folded Reload
	paddd	%xmm6, %xmm14
	movdqa	176(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	128(%rsp), %xmm6                # 16-byte Folded Reload
	paddd	%xmm3, %xmm6
	movdqa	%xmm6, %xmm3
	paddd	%xmm4, %xmm11
	paddd	240(%rsp), %xmm11               # 16-byte Folded Reload
	paddd	%xmm2, %xmm11
	movdqa	160(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm4, %xmm2
	paddd	96(%rsp), %xmm2                 # 16-byte Folded Reload
	psrad	%xmm1, %xmm15
	psrad	%xmm1, %xmm5
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm15
	psrad	$16, %xmm15
	packssdw	%xmm5, %xmm15
	psrad	%xmm1, %xmm12
	psrad	%xmm1, %xmm7
	psrad	%xmm1, %xmm14
	pslld	$16, %xmm7
	psrad	$16, %xmm7
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm7, %xmm12
	psrad	%xmm1, %xmm3
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	packssdw	%xmm3, %xmm14
	psrad	%xmm1, %xmm11
	psrad	%xmm1, %xmm0
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm0, %xmm11
	movdqu	%xmm15, -48(%rcx)
	movdqu	%xmm12, -32(%rcx)
	movdqu	%xmm14, -16(%rcx)
	movdqu	%xmm11, (%rcx)
	addq	$64, %r9
	addq	$64, %rcx
	addq	$-32, %rbx
	jne	.LBB18_77
# %bb.78:                               # %middle.block
                                        #   in Loop: Header=BB18_73 Depth=1
	movq	456(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ecx
	cmpl	392(%rsp), %eax                 # 4-byte Folded Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	272(%rsp), %ebp                 # 4-byte Reload
	movl	%edx, %eax
	movq	448(%rsp), %rdi                 # 8-byte Reload
	movdqa	512(%rsp), %xmm2                # 16-byte Reload
	movl	428(%rsp), %r14d                # 4-byte Reload
	je	.LBB18_81
	jmp	.LBB18_79
.LBB18_2:                               # %if.then28
	testl	%r13d, %r13d
	jle	.LBB18_93
# %bb.3:                                # %for.body.lr.ph.i
	leal	-1(%r13), %eax
	cmpl	$3, %r13d
	jae	.LBB18_5
# %bb.4:
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	testb	$2, %al
	je	.LBB18_9
	jmp	.LBB18_10
.LBB18_13:                              # %if.then44
	testl	%r13d, %r13d
	movq	32(%rsp), %r15                  # 8-byte Reload
	jle	.LBB18_93
# %bb.14:                               # %for.body.lr.ph.i201
	leal	-1(%rax), %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB18_93
# %bb.15:                               # %for.body.us.i.preheader
	movl	%r14d, %ecx
	imull	%ebx, %ecx
	movswl	%cx, %r8d
	leal	-1(%r13), %ebx
	movq	%rbx, %rcx
	shlq	$5, %rcx
	movq	16(%rsp), %r14                  # 8-byte Reload
	leal	-1(%r14), %r12d
	movq	24(%rsp), %r13                  # 8-byte Reload
	addq	%r13, %rcx
	leaq	(%rcx,%r12,2), %rcx
	addq	$2, %rcx
	leaq	(%r15,%r15), %rbp
	leaq	(%r11,%r15,2), %r9
	leaq	2(,%rbx,2), %r10
	imulq	%r15, %r10
	addq	%r11, %r10
	leaq	(%r10,%r12,2), %r10
	addq	$2, %r10
	movq	%rbx, 432(%rsp)                 # 8-byte Spill
	imulq	%r15, %rbx
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	addq	%r12, %rbx
	movq	72(%rsp), %r12                  # 8-byte Reload
	addq	%r12, %rbx
	leaq	(%rdx,%rbx,2), %rbx
	addq	$2, %rbx
	cmpq	%r13, %r10
	seta	%r10b
	movl	%r14d, %r14d
	cmpq	%rcx, %r9
	setb	%r9b
	andb	%r10b, %r9b
	cmpq	%r13, %rbx
	seta	%r10b
	cmpq	%rcx, %r11
	setb	%cl
	andb	%r10b, %cl
	testl	%r15d, %r15d
	sets	%r10b
	orb	%cl, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 96(%rsp)                 # 1-byte Spill
	movq	%r14, 112(%rsp)                 # 8-byte Spill
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	andl	$2147483616, %r14d              # imm = 0x7FFFFFE0
	movq	%r14, 288(%rsp)                 # 8-byte Spill
	leal	(%r14,%r14), %ecx
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movd	12(%rsp), %xmm0                 # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm5                # xmm5 = xmm0[0,0,0,0]
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm2                # xmm2 = xmm0[0,0,0,0]
	movd	%eax, %xmm4
	leaq	(%rdx,%r12,2), %rdx
	addq	$48, %rdx
	leaq	48(%r13), %r9
	xorl	%r10d, %r10d
	pshufd	$245, %xmm5, %xmm0              # xmm0 = xmm5[1,1,3,3]
	pshufd	$245, %xmm1, %xmm3              # xmm3 = xmm1[1,1,3,3]
	xorps	%xmm6, %xmm6
	movdqa	%xmm4, 272(%rsp)                # 16-byte Spill
	movss	%xmm4, %xmm6                    # xmm6 = xmm4[0],xmm6[1,2,3]
	movq	%r15, %r12
	movdqa	%xmm5, 368(%rsp)                # 16-byte Spill
	movdqa	%xmm2, 352(%rsp)                # 16-byte Spill
	movaps	%xmm6, 208(%rsp)                # 16-byte Spill
	movdqa	%xmm0, 336(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 320(%rsp)                # 16-byte Spill
	movdqa	%xmm1, 304(%rsp)                # 16-byte Spill
	jmp	.LBB18_16
	.p2align	4, 0x90
.LBB18_28:                              # %for.cond4.for.inc12_crit_edge.us.i
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	24(%rsp), %r13                  # 8-byte Reload
	addq	$32, %r13
	incl	%r10d
	movq	144(%rsp), %rdx                 # 8-byte Reload
	addq	%rbp, %rdx
	movq	80(%rsp), %r9                   # 8-byte Reload
	addq	$32, %r9
	cmpl	64(%rsp), %r10d                 # 4-byte Folded Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %r12                  # 8-byte Reload
	je	.LBB18_29
.LBB18_16:                              # %for.body.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_20 Depth 2
                                        #     Child Loop BB18_27 Depth 2
	movq	%r11, %r14
	leaq	(%r11,%r12,2), %r11
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	jb	.LBB18_17
# %bb.18:                               # %vector.memcheck589
                                        #   in Loop: Header=BB18_16 Depth=1
	cmpb	$0, 96(%rsp)                    # 1-byte Folded Reload
	je	.LBB18_19
.LBB18_17:                              #   in Loop: Header=BB18_16 Depth=1
	xorl	%edx, %edx
	movq	%r13, %r12
	movq	%r11, %rbx
.LBB18_22:                              # %for.body6.us.i.preheader
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%edx, %ecx
	testb	$1, %cl
	jne	.LBB18_24
# %bb.23:                               #   in Loop: Header=BB18_16 Depth=1
	movl	%edx, %ecx
	cmpl	128(%rsp), %edx                 # 4-byte Folded Reload
	movl	12(%rsp), %r9d                  # 4-byte Reload
	je	.LBB18_28
	jmp	.LBB18_26
	.p2align	4, 0x90
.LBB18_24:                              # %for.body6.us.i.prol
                                        #   in Loop: Header=BB18_16 Depth=1
	movzwl	(%r14), %r13d
	addq	$2, %r14
	imull	12(%rsp), %r13d                 # 4-byte Folded Reload
	movzwl	(%rbx), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	addq	$2, %rbx
	movw	%r13w, (%r12)
	addq	$2, %r12
	leal	1(%rdx), %ecx
	cmpl	128(%rsp), %edx                 # 4-byte Folded Reload
	movl	12(%rsp), %r9d                  # 4-byte Reload
	je	.LBB18_28
.LBB18_26:                              # %for.body6.us.i.preheader3
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%ecx, %edx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB18_27:                              # %for.body6.us.i
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r14,%r13,2), %r15d
	imull	%r9d, %r15d
	movzwl	(%rbx,%r13,2), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r15d
	addl	%ecx, %r15d
	movl	%eax, %ecx
	sarl	%cl, %r15d
	movw	%r15w, (%r12,%r13,2)
	movzwl	2(%r14,%r13,2), %r15d
	imull	%r9d, %r15d
	movzwl	2(%rbx,%r13,2), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r15d
	addl	%ecx, %r15d
	movl	%eax, %ecx
	sarl	%cl, %r15d
	movw	%r15w, 2(%r12,%r13,2)
	addq	$2, %r13
	cmpl	%r13d, %edx
	jne	.LBB18_27
	jmp	.LBB18_28
	.p2align	4, 0x90
.LBB18_19:                              # %vector.ph606
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	240(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%r13), %r12
	leaq	(%r11,%rcx), %rbx
	addq	%rcx, %r14
	movq	%r9, %rcx
	movq	288(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB18_20:                              # %vector.body617
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rdx), %xmm6
	movdqu	-32(%rdx), %xmm5
	movdqu	-16(%rdx), %xmm0
	movdqu	(%rdx), %xmm2
	movdqa	%xmm6, %xmm7
	pxor	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	punpckhwd	%xmm1, %xmm6            # xmm6 = xmm6[4],xmm1[4],xmm6[5],xmm1[5],xmm6[6],xmm1[6],xmm6[7],xmm1[7]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	punpckhwd	%xmm1, %xmm5            # xmm5 = xmm5[4],xmm1[4],xmm5[5],xmm1[5],xmm5[6],xmm1[6],xmm5[7],xmm1[7]
	movdqa	%xmm0, %xmm14
	punpcklwd	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1],xmm14[2],xmm1[2],xmm14[3],xmm1[3]
	punpckhwd	%xmm1, %xmm0            # xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	punpckhwd	%xmm1, %xmm2            # xmm2 = xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movdqa	368(%rsp), %xmm15               # 16-byte Reload
	movdqa	%xmm15, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	336(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1]
	movdqa	%xmm8, 224(%rsp)                # 16-byte Spill
	movdqa	%xmm15, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm11             # xmm11 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1]
	movdqa	%xmm15, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm15, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm9              # xmm9 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm9            # xmm9 = xmm9[0],xmm4[0],xmm9[1],xmm4[1]
	movdqa	%xmm15, %xmm4
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1]
	movdqa	%xmm15, %xmm0
	pmuludq	%xmm14, %xmm0
	pshufd	$232, %xmm0, %xmm12             # xmm12 = xmm0[0,2,2,3]
	pshufd	$245, %xmm14, %xmm0             # xmm0 = xmm14[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	movdqa	%xmm15, %xmm0
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm0              # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqa	%xmm15, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm0              # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movdqu	-48(%rdx,%rbp), %xmm0
	movdqu	-32(%rdx,%rbp), %xmm7
	movdqu	-16(%rdx,%rbp), %xmm6
	movdqu	(%rdx,%rbp), %xmm10
	movdqa	%xmm0, %xmm2
	pxor	%xmm3, %xmm3
	punpckhwd	%xmm3, %xmm2            # xmm2 = xmm2[4],xmm3[4],xmm2[5],xmm3[5],xmm2[6],xmm3[6],xmm2[7],xmm3[7]
	punpcklwd	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	movdqa	%xmm7, %xmm5
	punpckhwd	%xmm3, %xmm5            # xmm5 = xmm5[4],xmm3[4],xmm5[5],xmm3[5],xmm5[6],xmm3[6],xmm5[7],xmm3[7]
	punpcklwd	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	movdqa	%xmm6, %xmm8
	punpckhwd	%xmm3, %xmm8            # xmm8 = xmm8[4],xmm3[4],xmm8[5],xmm3[5],xmm8[6],xmm3[6],xmm8[7],xmm3[7]
	punpcklwd	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1],xmm6[2],xmm3[2],xmm6[3],xmm3[3]
	movdqa	304(%rsp), %xmm4                # 16-byte Reload
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm1              # xmm1 = xmm3[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	movdqa	320(%rsp), %xmm3                # 16-byte Reload
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm0              # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movdqa	%xmm1, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm7, %xmm1              # xmm1 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm0, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm5, %xmm1              # xmm1 = xmm5[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm7              # xmm7 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm1              # xmm1 = xmm6[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm8, %xmm2              # xmm2 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	%xmm10, %xmm2
	pxor	%xmm8, %xmm8
	punpcklwd	%xmm8, %xmm10           # xmm10 = xmm10[0],xmm8[0],xmm10[1],xmm8[1],xmm10[2],xmm8[2],xmm10[3],xmm8[3]
	movdqa	%xmm4, %xmm6
	pmuludq	%xmm10, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm10, %xmm5             # xmm5 = xmm10[1,1,3,3]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm5              # xmm5 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1]
	movdqa	352(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm2, %xmm11
	paddd	48(%rsp), %xmm11                # 16-byte Folded Reload
	movdqa	224(%rsp), %xmm3                # 16-byte Reload
	paddd	%xmm2, %xmm3
	paddd	176(%rsp), %xmm3                # 16-byte Folded Reload
	paddd	%xmm2, %xmm9
	paddd	160(%rsp), %xmm9                # 16-byte Folded Reload
	movdqa	192(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm2, %xmm4
	paddd	%xmm0, %xmm4
	movdqa	%xmm4, %xmm0
	paddd	%xmm2, %xmm12
	paddd	%xmm7, %xmm12
	paddd	%xmm2, %xmm13
	paddd	%xmm1, %xmm13
	paddd	%xmm2, %xmm15
	paddd	%xmm6, %xmm15
	movdqa	208(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm2, %xmm14
	psrad	%xmm6, %xmm11
	psrad	%xmm6, %xmm3
	paddd	%xmm5, %xmm14
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm3, %xmm11
	psrad	%xmm6, %xmm9
	psrad	%xmm6, %xmm0
	psrad	%xmm6, %xmm12
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm0, %xmm9
	psrad	%xmm6, %xmm13
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm13, %xmm12
	psrad	%xmm6, %xmm15
	psrad	%xmm6, %xmm14
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	pslld	$16, %xmm15
	psrad	$16, %xmm15
	packssdw	%xmm14, %xmm15
	movdqu	%xmm11, -48(%rcx)
	movdqu	%xmm9, -32(%rcx)
	movdqu	%xmm12, -16(%rcx)
	movdqu	%xmm15, (%rcx)
	addq	$64, %rdx
	addq	$64, %rcx
	addq	$-32, %r13
	jne	.LBB18_20
# %bb.21:                               # %middle.block603
                                        #   in Loop: Header=BB18_16 Depth=1
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %edx
	cmpl	112(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB18_28
	jmp	.LBB18_22
.LBB18_44:                              # %if.then57
	testl	%r13d, %r13d
	movq	32(%rsp), %rbx                  # 8-byte Reload
	jle	.LBB18_93
# %bb.45:                               # %for.body.lr.ph.i236
	leal	-1(%rax), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB18_93
# %bb.46:                               # %for.body.us.i240.preheader
	imull	%r8d, %edi
	sarl	$16, %edi
	leal	-1(%r13), %r8d
	movq	%rbx, %rcx
	imulq	%r8, %rcx
	movq	%r8, 288(%rsp)                  # 8-byte Spill
	shlq	$5, %r8
	movq	16(%rsp), %r9                   # 8-byte Reload
	leal	-1(%r9), %r10d
	movq	24(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %r8
	leaq	(%r8,%r10,2), %r8
	addq	$2, %r8
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	addq	%r10, %rcx
	addq	72(%rsp), %rcx                  # 8-byte Folded Reload
	leaq	(%rdx,%rcx,2), %rcx
	addq	$4, %rcx
	movl	%r9d, %r10d
	cmpq	%r15, %rcx
	seta	%cl
	cmpq	%r8, %r11
	setb	%dl
	andb	%cl, %dl
	testl	%ebx, %ebx
	sets	%cl
	orb	%dl, %cl
	movb	%cl, 128(%rsp)                  # 1-byte Spill
	movq	%r10, 80(%rsp)                  # 8-byte Spill
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	andl	$2147483616, %r10d              # imm = 0x7FFFFFE0
	movq	%r10, 112(%rsp)                 # 8-byte Spill
	leal	(%r10,%r10), %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movd	12(%rsp), %xmm0                 # 4-byte Folded Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm2                # xmm2 = xmm0[0,0,0,0]
	movd	%ebp, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 368(%rsp)                # 16-byte Spill
	movd	%eax, %xmm4
	leal	(%r9,%r9), %r10d
	andl	$-64, %r10d
	leaq	(%rbx,%rbx), %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	xorl	%r9d, %r9d
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pshufd	$245, %xmm2, %xmm3              # xmm3 = xmm2[1,1,3,3]
	xorps	%xmm5, %xmm5
	movdqa	%xmm4, 240(%rsp)                # 16-byte Spill
	movss	%xmm4, %xmm5                    # xmm5 = xmm4[0],xmm5[1,2,3]
	movaps	%xmm5, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm2, 352(%rsp)                # 16-byte Spill
	movdqa	%xmm3, 336(%rsp)                # 16-byte Spill
	movdqa	%xmm1, 320(%rsp)                # 16-byte Spill
	movdqa	%xmm0, 304(%rsp)                # 16-byte Spill
	jmp	.LBB18_47
	.p2align	4, 0x90
.LBB18_57:                              # %for.cond3.for.inc11_crit_edge.us.i
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	%r8, %r15
	addq	$32, %r15
	addq	208(%rsp), %r11                 # 8-byte Folded Reload
	incl	%r9d
	cmpl	64(%rsp), %r9d                  # 4-byte Folded Reload
	je	.LBB18_58
.LBB18_47:                              # %for.body.us.i240
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_49 Depth 2
                                        #     Child Loop BB18_56 Depth 2
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	setb	%cl
	orb	128(%rsp), %cl                  # 1-byte Folded Reload
	movl	$0, %r14d
	movq	%r15, %r8
	movq	%r15, %rdx
	movq	%r11, %r12
	jne	.LBB18_51
# %bb.48:                               # %vector.ph501
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	%r8, %rbx
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	(%r8,%rcx), %rdx
	leaq	(%r11,%rcx), %r12
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB18_49:                              # %vector.body510
                                        #   Parent Loop BB18_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	32(%r11,%rcx), %xmm1
	movdqu	48(%r11,%rcx), %xmm15
	movdqu	(%r11,%rcx), %xmm7
	movdqu	2(%r11,%rcx), %xmm5
	movdqu	16(%r11,%rcx), %xmm6
	movdqu	18(%r11,%rcx), %xmm0
	movdqa	%xmm0, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm7, %xmm9
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpckhwd	%xmm0, %xmm7            # xmm7 = xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	movdqa	%xmm6, %xmm4
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckhwd	%xmm0, %xmm1            # xmm1 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movdqa	%xmm15, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckhwd	%xmm0, %xmm15           # xmm15 = xmm15[4],xmm0[4],xmm15[5],xmm0[5],xmm15[6],xmm0[6],xmm15[7],xmm0[7]
	movdqa	320(%rsp), %xmm0                # 16-byte Reload
	movdqa	%xmm0, %xmm8
	pmuludq	%xmm7, %xmm8
	pshufd	$232, %xmm8, %xmm10             # xmm10 = xmm8[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	movdqa	304(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm10           # xmm10 = xmm10[0],xmm7[0],xmm10[1],xmm7[1]
	movdqa	%xmm10, 224(%rsp)               # 16-byte Spill
	movdqa	%xmm0, %xmm7
	pmuludq	%xmm9, %xmm7
	pshufd	$232, %xmm7, %xmm10             # xmm10 = xmm7[0,2,2,3]
	pshufd	$245, %xmm9, %xmm7              # xmm7 = xmm9[1,1,3,3]
	pmuludq	%xmm8, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm10           # xmm10 = xmm10[0],xmm7[0],xmm10[1],xmm7[1]
	movdqa	%xmm10, 192(%rsp)               # 16-byte Spill
	movdqa	%xmm0, %xmm7
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm11             # xmm11 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1]
	movdqa	%xmm0, %xmm6
	pmuludq	%xmm4, %xmm6
	pshufd	$232, %xmm6, %xmm10             # xmm10 = xmm6[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm10           # xmm10 = xmm10[0],xmm4[0],xmm10[1],xmm4[1]
	movdqa	%xmm0, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm12             # xmm12 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm15, %xmm1
	pshufd	$232, %xmm1, %xmm14             # xmm14 = xmm1[0,2,2,3]
	pshufd	$245, %xmm15, %xmm1             # xmm1 = xmm15[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm0              # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movdqu	34(%r11,%rcx), %xmm4
	movdqu	50(%r11,%rcx), %xmm8
	movdqa	%xmm5, %xmm1
	movdqa	%xmm5, %xmm3
	pxor	%xmm0, %xmm0
	punpckhwd	%xmm0, %xmm3            # xmm3 = xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movdqa	%xmm1, %xmm2
	movdqa	48(%rsp), %xmm5                 # 16-byte Reload
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm0, %xmm7            # xmm7 = xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	movdqa	352(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	movdqa	336(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm0, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	movdqa	%xmm0, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm5            # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
	movdqa	%xmm9, %xmm7
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	movdqa	%xmm8, %xmm0
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm1, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm6            # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	punpckhwd	%xmm2, %xmm0            # xmm0 = xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pmuludq	%xmm0, %xmm9
	pshufd	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1]
	movdqa	368(%rsp), %xmm0                # 16-byte Reload
	movdqa	192(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm0, %xmm1
	paddd	48(%rsp), %xmm1                 # 16-byte Folded Reload
	movdqa	224(%rsp), %xmm9                # 16-byte Reload
	paddd	%xmm0, %xmm9
	paddd	176(%rsp), %xmm9                # 16-byte Folded Reload
	movdqa	%xmm9, %xmm2
	paddd	%xmm0, %xmm10
	paddd	%xmm3, %xmm10
	paddd	%xmm0, %xmm11
	paddd	%xmm5, %xmm11
	movdqa	160(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm0, %xmm12
	paddd	%xmm7, %xmm12
	paddd	%xmm0, %xmm13
	paddd	%xmm4, %xmm13
	paddd	%xmm0, %xmm15
	paddd	%xmm6, %xmm15
	paddd	%xmm0, %xmm14
	paddd	%xmm8, %xmm14
	psrad	%xmm5, %xmm1
	psrad	%xmm5, %xmm2
	psrad	%xmm5, %xmm10
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm2, %xmm1
	psrad	%xmm5, %xmm11
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm11, %xmm10
	psrad	%xmm5, %xmm12
	psrad	%xmm5, %xmm13
	psrad	%xmm5, %xmm15
	psrad	%xmm5, %xmm14
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm13, %xmm12
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	pslld	$16, %xmm15
	psrad	$16, %xmm15
	packssdw	%xmm14, %xmm15
	movdqu	%xmm1, (%rbx,%rcx)
	movdqu	%xmm10, 16(%rbx,%rcx)
	movdqu	%xmm12, 32(%rbx,%rcx)
	movdqu	%xmm15, 48(%rbx,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %r10
	jne	.LBB18_49
# %bb.50:                               # %middle.block498
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, %r14d
	cmpl	80(%rsp), %ecx                  # 4-byte Folded Reload
	je	.LBB18_57
.LBB18_51:                              # %for.body5.us.i.preheader
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%r14d, %ecx
	testb	$1, %cl
	jne	.LBB18_53
# %bb.52:                               #   in Loop: Header=BB18_47 Depth=1
	movl	%r14d, %ecx
	cmpl	144(%rsp), %r14d                # 4-byte Folded Reload
	movl	12(%rsp), %ebx                  # 4-byte Reload
	je	.LBB18_57
	jmp	.LBB18_55
	.p2align	4, 0x90
.LBB18_53:                              # %for.body5.us.i.prol
                                        #   in Loop: Header=BB18_47 Depth=1
	movzwl	(%r12), %r15d
	movzwl	2(%r12), %ecx
	addq	$2, %r12
	imull	12(%rsp), %r15d                 # 4-byte Folded Reload
	imull	%edi, %ecx
	addl	%ebp, %r15d
	addl	%ecx, %r15d
	movl	%eax, %ecx
	sarl	%cl, %r15d
	movw	%r15w, (%rdx)
	addq	$2, %rdx
	leal	1(%r14), %ecx
	cmpl	144(%rsp), %r14d                # 4-byte Folded Reload
	movl	12(%rsp), %ebx                  # 4-byte Reload
	je	.LBB18_57
.LBB18_55:                              # %for.body5.us.i.preheader6
                                        #   in Loop: Header=BB18_47 Depth=1
	movq	16(%rsp), %r14                  # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	%ecx, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB18_56:                              # %for.body5.us.i
                                        #   Parent Loop BB18_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%r15,2), %r13d
	imull	%ebx, %r13d
	movzwl	2(%r12,%r15,2), %ecx
	imull	%edi, %ecx
	addl	%ebp, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	movw	%r13w, (%rdx,%r15,2)
	movzwl	2(%r12,%r15,2), %r13d
	imull	%ebx, %r13d
	movzwl	4(%r12,%r15,2), %ecx
	imull	%edi, %ecx
	addl	%ebp, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	movw	%r13w, 2(%rdx,%r15,2)
	addq	$2, %r15
	cmpl	%r15d, %r14d
	jne	.LBB18_56
	jmp	.LBB18_57
.LBB18_5:                               # %for.body.lr.ph.i.new
	movl	%eax, %ecx
	shrl	%ecx
	incl	%ecx
	andl	$-2, %ecx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	leaq	(,%rbx,8), %rdx
	leaq	(%rbx,%rbx), %rdi
	leaq	(%rdi,%rdi), %r8
	movq	24(%rsp), %r14                  # 8-byte Reload
	.p2align	4, 0x90
.LBB18_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %r9
	movups	(%r11), %xmm0
	movups	16(%r11), %xmm1
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	leaq	(%r11,%rdi), %r10
	movups	(%r11,%rdi), %xmm0
	movups	16(%r11,%rdi), %xmm1
	movups	%xmm1, 48(%r14)
	movups	%xmm0, 32(%r14)
	leaq	(%r10,%rdi), %r11
	movups	(%rdi,%r10), %xmm0
	movups	16(%rdi,%r10), %xmm1
	movups	%xmm1, 80(%r14)
	movups	%xmm0, 64(%r14)
	movups	(%rdi,%r11), %xmm0
	movups	16(%rdi,%r11), %xmm1
	movups	%xmm0, 96(%r14)
	movups	%xmm1, 112(%r14)
	subq	$-128, %r14
	addq	%r8, %r11
	addl	$-2, %ecx
	jne	.LBB18_6
# %bb.7:
	addq	%rdx, %r9
	movq	%r9, %r11
	testb	$2, %al
	jne	.LBB18_10
.LBB18_9:                               # %for.body.i.epil
	movups	(%r11), %xmm0
	movups	16(%r11), %xmm1
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movups	(%r11,%rbx,2), %xmm0
	movups	16(%r11,%rbx,2), %xmm1
	movups	%xmm0, 32(%r14)
	movups	%xmm1, 48(%r14)
.LBB18_10:                              # %for.body.i189.preheader
	leaq	(%rbx,%rbx), %rax
	shlq	$2, %rbx
	xorl	%ecx, %ecx
	movq	64(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB18_11:                              # %for.body.i189
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	%xmm1, 16(%r12)
	movups	%xmm0, (%r12)
	movups	(%rsi,%rax), %xmm0
	movups	16(%rsi,%rax), %xmm1
	movups	%xmm0, 32(%r12)
	movups	%xmm1, 48(%r12)
	addq	$64, %r12
	addl	$2, %ecx
	addq	%rbx, %rsi
	cmpl	%edx, %ecx
	jl	.LBB18_11
.LBB18_93:                              # %if.end91
	addq	$552, %rsp                      # imm = 0x228
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
.LBB18_82:                              # %for.body.us.i306.preheader
	.cfi_def_cfa_offset 608
	movq	488(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %rcx
	shlq	$5, %rcx
	addq	%r15, %rcx
	movq	480(%rsp), %r10                 # 8-byte Reload
	leaq	(%rcx,%r10,2), %rcx
	addq	$2, %rcx
	movq	32(%rsp), %r8                   # 8-byte Reload
	leaq	(%rsi,%r8,2), %rdx
	leaq	2(,%r9,2), %rdi
	imulq	%r8, %rdi
	addq	%rsi, %rdi
	leaq	(%rdi,%r10,2), %rdi
	addq	$4, %rdi
	imulq	%r8, %r9
	movq	72(%rsp), %r11                  # 8-byte Reload
	addq	%r11, %r9
	addq	%r10, %r9
	cmpq	%r15, %rdi
	seta	%dil
	movq	384(%rsp), %r10                 # 8-byte Reload
	leaq	(%r10,%r9,2), %r9
	addq	$4, %r9
	cmpq	%rcx, %rdx
	setb	%dl
	andb	%dil, %dl
	cmpq	%r15, %r9
	seta	%dil
	cmpq	%rcx, %rsi
	setb	%cl
	andb	%dil, %cl
	testl	%r8d, %r8d
	sets	%dil
	orb	%cl, %dil
	orb	%dl, %dil
	movb	%dil, 408(%rsp)                 # 1-byte Spill
	movq	392(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	addl	%ecx, %ecx
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	leaq	(%r10,%r11,2), %r14
	addq	$50, %r14
	leaq	48(%r15), %rdi
	xorl	%r11d, %r11d
	pshufd	$245, %xmm2, %xmm7              # xmm7 = xmm2[1,1,3,3]
	pxor	%xmm8, %xmm8
	pxor	%xmm10, %xmm10
	movaps	528(%rsp), %xmm0                # 16-byte Reload
	movss	%xmm0, %xmm10                   # xmm10 = xmm0[0],xmm10[1,2,3]
	movdqa	%xmm7, 464(%rsp)                # 16-byte Spill
	movaps	%xmm10, 432(%rsp)               # 16-byte Spill
	jmp	.LBB18_83
	.p2align	4, 0x90
.LBB18_92:                              # %for.cond4.for.inc18_crit_edge.us.i335
                                        #   in Loop: Header=BB18_83 Depth=1
	movq	40(%rsp), %r15                  # 8-byte Reload
	addq	$32, %r15
	incl	%r11d
	movq	24(%rsp), %r14                  # 8-byte Reload
	addq	%r13, %r14
	addq	$32, %rdi
	movq	416(%rsp), %rsi                 # 8-byte Reload
	cmpl	64(%rsp), %r11d                 # 4-byte Folded Reload
	movq	32(%rsp), %r8                   # 8-byte Reload
	je	.LBB18_93
.LBB18_83:                              # %for.body.us.i306
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_88 Depth 2
                                        #     Child Loop BB18_91 Depth 2
	leaq	(%rsi,%r8,2), %r12
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	%r12, 416(%rsp)                 # 8-byte Spill
	jae	.LBB18_85
# %bb.84:                               #   in Loop: Header=BB18_83 Depth=1
	xorl	%ecx, %ecx
	movl	12(%rsp), %r10d                 # 4-byte Reload
	movl	272(%rsp), %r8d                 # 4-byte Reload
	jmp	.LBB18_90
	.p2align	4, 0x90
.LBB18_85:                              # %vector.memcheck416
                                        #   in Loop: Header=BB18_83 Depth=1
	cmpb	$0, 408(%rsp)                   # 1-byte Folded Reload
	movl	272(%rsp), %r8d                 # 4-byte Reload
	je	.LBB18_87
# %bb.86:                               #   in Loop: Header=BB18_83 Depth=1
	xorl	%ecx, %ecx
	movl	12(%rsp), %r10d                 # 4-byte Reload
	jmp	.LBB18_90
	.p2align	4, 0x90
.LBB18_87:                              # %vector.ph433
                                        #   in Loop: Header=BB18_83 Depth=1
	movq	400(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %r15
	addq	%rcx, %r12
	addq	%rcx, %rsi
	movq	%rdi, %rcx
	movq	264(%rsp), %rbx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB18_88:                              # %vector.body444
                                        #   Parent Loop BB18_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-18(%r14), %xmm2
	movdqu	-2(%r14), %xmm0
	movdqu	-50(%r14), %xmm6
	movdqu	-34(%r14), %xmm5
	movdqa	%xmm6, %xmm7
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	punpckhwd	%xmm8, %xmm6            # xmm6 = xmm6[4],xmm8[4],xmm6[5],xmm8[5],xmm6[6],xmm8[6],xmm6[7],xmm8[7]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	movdqa	368(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm8
	pmuludq	%xmm6, %xmm8
	pshufd	$232, %xmm8, %xmm10             # xmm10 = xmm8[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	movdqa	320(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movdqa	%xmm10, 192(%rsp)               # 16-byte Spill
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm7, %xmm6
	pshufd	$232, %xmm6, %xmm13             # xmm13 = xmm6[0,2,2,3]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqa	%xmm6, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm4, %xmm5
	pshufd	$232, %xmm5, %xmm12             # xmm12 = xmm5[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm2, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	movdqa	%xmm4, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm14             # xmm14 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm14           # xmm14 = xmm14[0],xmm2[0],xmm14[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm11             # xmm11 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movdqu	-18(%r14,%r13), %xmm2
	movdqu	-50(%r14,%r13), %xmm0
	movdqu	-34(%r14,%r13), %xmm5
	movdqa	%xmm0, %xmm3
	punpckhwd	.LCPI18_0(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	punpcklwd	.LCPI18_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	movdqa	%xmm5, %xmm6
	punpckhwd	.LCPI18_0(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	punpcklwd	.LCPI18_0(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	movdqa	%xmm2, %xmm7
	punpckhwd	.LCPI18_0(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	punpcklwd	.LCPI18_0(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	352(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm4              # xmm4 = xmm0[1,1,3,3]
	pshufd	$245, %xmm9, %xmm0              # xmm0 = xmm9[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm3, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0],xmm4[1],xmm3[1]
	movdqa	%xmm9, %xmm3
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm0, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm3            # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	movdqa	%xmm9, %xmm5
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm0, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movdqa	%xmm9, %xmm6
	pmuludq	%xmm2, %xmm6
	pshufd	$232, %xmm6, %xmm15             # xmm15 = xmm6[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm15           # xmm15 = xmm15[0],xmm2[0],xmm15[1],xmm2[1]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm6              # xmm6 = xmm2[0,2,2,3]
	pshufd	$245, %xmm7, %xmm2              # xmm2 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	movdqu	-2(%r14,%r13), %xmm2
	movdqa	%xmm2, %xmm7
	punpcklwd	.LCPI18_0(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3]
	movdqa	%xmm9, %xmm10
	pmuludq	%xmm2, %xmm10
	pshufd	$232, %xmm10, %xmm8             # xmm8 = xmm10[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1]
	movdqa	%xmm8, 240(%rsp)                # 16-byte Spill
	punpckhwd	.LCPI18_0(%rip), %xmm7  # xmm7 = xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqa	%xmm9, %xmm2
	pmuludq	%xmm7, %xmm2
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm7
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$232, %xmm7, %xmm0              # xmm0 = xmm7[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqu	-48(%r14), %xmm0
	movdqa	%xmm0, %xmm7
	punpckhwd	.LCPI18_0(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	304(%rsp), %xmm9                # 16-byte Reload
	movdqa	%xmm9, %xmm10
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm8             # xmm8 = xmm10[0,2,2,3]
	pshufd	$245, %xmm0, %xmm10             # xmm10 = xmm0[1,1,3,3]
	pshufd	$245, %xmm9, %xmm0              # xmm0 = xmm9[1,1,3,3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	paddd	%xmm4, %xmm8
	movdqa	%xmm8, 208(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI18_0(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm7, %xmm4
	pshufd	$232, %xmm4, %xmm8              # xmm8 = xmm4[0,2,2,3]
	pshufd	$245, %xmm7, %xmm4              # xmm4 = xmm7[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm8            # xmm8 = xmm8[0],xmm4[0],xmm8[1],xmm4[1]
	paddd	%xmm1, %xmm8
	movdqa	%xmm8, 80(%rsp)                 # 16-byte Spill
	movdqu	-32(%r14), %xmm1
	movdqa	%xmm1, %xmm4
	punpckhwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm9, %xmm7
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	paddd	%xmm5, %xmm7
	movdqa	%xmm7, 144(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI18_0(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	movdqa	%xmm9, %xmm1
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm5              # xmm5 = xmm1[0,2,2,3]
	pshufd	$245, %xmm4, %xmm1              # xmm1 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	paddd	%xmm3, %xmm5
	movdqa	%xmm5, 112(%rsp)                # 16-byte Spill
	movdqu	-16(%r14), %xmm1
	movdqa	%xmm1, %xmm3
	punpckhwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm6, %xmm4
	movdqa	%xmm4, 128(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI18_0(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	movdqa	%xmm9, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm4              # xmm4 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm15, %xmm4
	movdqa	%xmm4, 288(%rsp)                # 16-byte Spill
	movdqu	(%r14), %xmm1
	movdqa	%xmm1, %xmm3
	punpckhwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm9, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	paddd	%xmm2, %xmm4
	movdqa	%xmm4, 96(%rsp)                 # 16-byte Spill
	punpcklwd	.LCPI18_0(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	movdqa	%xmm9, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$245, %xmm3, %xmm2              # xmm2 = xmm3[1,1,3,3]
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm1, %xmm15             # xmm15 = xmm1[0,2,2,3]
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	paddd	240(%rsp), %xmm15               # 16-byte Folded Reload
	movdqu	-48(%r14,%r13), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI18_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	movdqa	336(%rsp), %xmm4                # 16-byte Reload
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm10             # xmm10 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pshufd	$245, %xmm4, %xmm5              # xmm5 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1]
	punpckhwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm9              # xmm9 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm9            # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	movdqu	-32(%r14,%r13), %xmm1
	movdqa	%xmm1, %xmm2
	punpcklwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm4, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm8              # xmm8 = xmm3[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0],xmm8[1],xmm1[1]
	punpckhwd	.LCPI18_0(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm7              # xmm7 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm1              # xmm1 = xmm2[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	movdqu	-16(%r14,%r13), %xmm1
	movdqa	%xmm1, %xmm0
	punpcklwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm6              # xmm6 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	punpckhwd	.LCPI18_0(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm4, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm3              # xmm3 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movdqu	(%r14,%r13), %xmm0
	movdqa	%xmm0, %xmm1
	punpcklwd	.LCPI18_0(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	movdqa	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm5, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	punpckhwd	.LCPI18_0(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	pmuludq	%xmm1, %xmm4
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm4, %xmm0              # xmm0 = xmm4[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	224(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm1, %xmm13
	paddd	80(%rsp), %xmm13                # 16-byte Folded Reload
	paddd	%xmm10, %xmm13
	movdqa	432(%rsp), %xmm10               # 16-byte Reload
	movdqa	192(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm1, %xmm4
	paddd	208(%rsp), %xmm4                # 16-byte Folded Reload
	paddd	%xmm9, %xmm4
	paddd	%xmm1, %xmm12
	paddd	112(%rsp), %xmm12               # 16-byte Folded Reload
	paddd	%xmm8, %xmm12
	movdqa	48(%rsp), %xmm5                 # 16-byte Reload
	paddd	%xmm1, %xmm5
	paddd	144(%rsp), %xmm5                # 16-byte Folded Reload
	paddd	%xmm7, %xmm5
	paddd	%xmm1, %xmm14
	paddd	288(%rsp), %xmm14               # 16-byte Folded Reload
	paddd	%xmm6, %xmm14
	movdqa	176(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm1, %xmm6
	paddd	128(%rsp), %xmm6                # 16-byte Folded Reload
	paddd	%xmm3, %xmm6
	movdqa	%xmm6, %xmm3
	paddd	%xmm1, %xmm11
	paddd	%xmm15, %xmm11
	paddd	%xmm2, %xmm11
	movdqa	160(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm1, %xmm2
	paddd	96(%rsp), %xmm2                 # 16-byte Folded Reload
	psrad	%xmm10, %xmm13
	psrad	%xmm10, %xmm4
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	packssdw	%xmm4, %xmm13
	psrad	%xmm10, %xmm12
	psrad	%xmm10, %xmm5
	psrad	%xmm10, %xmm14
	pslld	$16, %xmm5
	psrad	$16, %xmm5
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	packssdw	%xmm5, %xmm12
	psrad	%xmm10, %xmm3
	pslld	$16, %xmm3
	psrad	$16, %xmm3
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	packssdw	%xmm3, %xmm14
	psrad	%xmm10, %xmm11
	psrad	%xmm10, %xmm0
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm0, %xmm11
	movdqu	%xmm13, -48(%rcx)
	movdqu	%xmm12, -32(%rcx)
	movdqu	%xmm14, -16(%rcx)
	movdqu	%xmm11, (%rcx)
	pxor	%xmm8, %xmm8
	addq	$64, %r14
	addq	$64, %rcx
	addq	$-32, %rbx
	jne	.LBB18_88
# %bb.89:                               # %middle.block430
                                        #   in Loop: Header=BB18_83 Depth=1
	movq	264(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %ecx
	cmpl	392(%rsp), %edx                 # 4-byte Folded Reload
	movl	12(%rsp), %r10d                 # 4-byte Reload
	movdqa	512(%rsp), %xmm2                # 16-byte Reload
	movdqa	464(%rsp), %xmm7                # 16-byte Reload
	je	.LBB18_92
	.p2align	4, 0x90
.LBB18_90:                              # %for.body6.us.i311.preheader
                                        #   in Loop: Header=BB18_83 Depth=1
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	subl	%ecx, %edx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB18_91:                              # %for.body6.us.i311
                                        #   Parent Loop BB18_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi,%rbx,2), %ecx
	imull	%r10d, %ecx
	movzwl	(%r12,%rbx,2), %r14d
	imull	%ebp, %r14d
	movzwl	2(%rsi,%rbx,2), %r9d
	movd	%r9d, %xmm0
	movdqa	%xmm2, %xmm1
	pmuludq	%xmm0, %xmm1
	pinsrw	$2, 2(%r12,%rbx,2), %xmm0
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	addl	%r8d, %ecx
	addl	%r14d, %ecx
	movd	%xmm1, %r9d
	addl	%ecx, %r9d
	movd	%xmm0, %r14d
	addl	%r9d, %r14d
	movl	%eax, %ecx
	sarl	%cl, %r14d
	movw	%r14w, (%r15,%rbx,2)
	incq	%rbx
	cmpl	%ebx, %edx
	jne	.LBB18_91
	jmp	.LBB18_92
.LBB18_29:                              # %for.body.us.i208.preheader
	movq	432(%rsp), %r15                 # 8-byte Reload
	movq	%r15, %rcx
	shlq	$5, %rcx
	addq	%rbx, %rcx
	movq	128(%rsp), %r10                 # 8-byte Reload
	leaq	(%rcx,%r10,2), %rcx
	addq	$2, %rcx
	leaq	(%rsi,%r12,2), %rdx
	leaq	2(,%r15,2), %r9
	imulq	%r12, %r9
	addq	%rsi, %r9
	leaq	(%r9,%r10,2), %r9
	addq	$2, %r9
	imulq	%r12, %r15
	movq	72(%rsp), %r14                  # 8-byte Reload
	addq	%r14, %r15
	addq	%r10, %r15
	movq	384(%rsp), %r11                 # 8-byte Reload
	leaq	(%r11,%r15,2), %r10
	addq	$2, %r10
	cmpq	%rbx, %r9
	seta	%r9b
	cmpq	%rcx, %rdx
	setb	%dl
	andb	%r9b, %dl
	cmpq	%rbx, %r10
	seta	%r9b
	cmpq	%rcx, %rsi
	setb	%cl
	andb	%r9b, %cl
	testl	%r12d, %r12d
	sets	%r9b
	orb	%cl, %r9b
	orb	%dl, %r9b
	movb	%r9b, 144(%rsp)                 # 1-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	addl	%ecx, %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	(%r11,%r14,2), %r11
	addq	$48, %r11
	leaq	48(%rbx), %r14
	xorl	%r15d, %r15d
	pxor	%xmm9, %xmm9
	movaps	272(%rsp), %xmm4                # 16-byte Reload
	movss	%xmm4, %xmm9                    # xmm9 = xmm4[0],xmm9[1,2,3]
	movq	%r12, %rcx
	movaps	%xmm9, 160(%rsp)                # 16-byte Spill
	jmp	.LBB18_30
	.p2align	4, 0x90
.LBB18_42:                              # %for.cond4.for.inc12_crit_edge.us.i231
                                        #   in Loop: Header=BB18_30 Depth=1
	movq	40(%rsp), %rbx                  # 8-byte Reload
	addq	$32, %rbx
	incl	%r15d
	movq	208(%rsp), %r11                 # 8-byte Reload
	addq	%rbp, %r11
	addq	$32, %r14
	cmpl	64(%rsp), %r15d                 # 4-byte Folded Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	je	.LBB18_93
.LBB18_30:                              # %for.body.us.i208
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_34 Depth 2
                                        #     Child Loop BB18_41 Depth 2
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, %r12
	leaq	(%rsi,%rcx,2), %rsi
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	movq	%r11, 208(%rsp)                 # 8-byte Spill
	jb	.LBB18_31
# %bb.32:                               # %vector.memcheck652
                                        #   in Loop: Header=BB18_30 Depth=1
	cmpb	$0, 144(%rsp)                   # 1-byte Folded Reload
	je	.LBB18_33
.LBB18_31:                              #   in Loop: Header=BB18_30 Depth=1
	xorl	%ebx, %ebx
	movq	40(%rsp), %r9                   # 8-byte Reload
	movq	%rsi, %rdx
.LBB18_36:                              # %for.body6.us.i213.preheader
                                        #   in Loop: Header=BB18_30 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%ebx, %ecx
	testb	$1, %cl
	jne	.LBB18_38
# %bb.37:                               #   in Loop: Header=BB18_30 Depth=1
	movl	%ebx, %ecx
	cmpl	128(%rsp), %ebx                 # 4-byte Folded Reload
	movl	12(%rsp), %r11d                 # 4-byte Reload
	je	.LBB18_42
	jmp	.LBB18_40
	.p2align	4, 0x90
.LBB18_38:                              # %for.body6.us.i213.prol
                                        #   in Loop: Header=BB18_30 Depth=1
	movzwl	(%r12), %r13d
	addq	$2, %r12
	imull	12(%rsp), %r13d                 # 4-byte Folded Reload
	movzwl	(%rdx), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	addq	$2, %rdx
	movw	%r13w, (%r9)
	addq	$2, %r9
	leal	1(%rbx), %ecx
	cmpl	128(%rsp), %ebx                 # 4-byte Folded Reload
	movl	12(%rsp), %r11d                 # 4-byte Reload
	je	.LBB18_42
.LBB18_40:                              # %for.body6.us.i213.preheader1
                                        #   in Loop: Header=BB18_30 Depth=1
	movq	16(%rsp), %rbx                  # 8-byte Reload
                                        # kill: def $ebx killed $ebx killed $rbx def $rbx
	subl	%ecx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB18_41:                              # %for.body6.us.i213
                                        #   Parent Loop BB18_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%r13,2), %r10d
	imull	%r11d, %r10d
	movzwl	(%rdx,%r13,2), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r10d
	addl	%ecx, %r10d
	movl	%eax, %ecx
	sarl	%cl, %r10d
	movw	%r10w, (%r9,%r13,2)
	movzwl	2(%r12,%r13,2), %r10d
	imull	%r11d, %r10d
	movzwl	2(%rdx,%r13,2), %ecx
	imull	%r8d, %ecx
	addl	%edi, %r10d
	addl	%ecx, %r10d
	movl	%eax, %ecx
	sarl	%cl, %r10d
	movw	%r10w, 2(%r9,%r13,2)
	addq	$2, %r13
	cmpl	%r13d, %ebx
	jne	.LBB18_41
	jmp	.LBB18_42
	.p2align	4, 0x90
.LBB18_33:                              # %vector.ph669
                                        #   in Loop: Header=BB18_30 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	96(%rsp), %r10                  # 8-byte Reload
	leaq	(%rcx,%r10), %r9
	leaq	(%rsi,%r10), %rdx
	addq	%r10, %r12
	movq	%r14, %rcx
	movq	%r11, %rbx
	movq	80(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB18_34:                              # %vector.body680
                                        #   Parent Loop BB18_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%rbx), %xmm5
	movdqu	-32(%rbx), %xmm6
	movdqu	-16(%rbx), %xmm0
	movdqu	(%rbx), %xmm2
	movdqa	%xmm5, %xmm7
	pxor	%xmm8, %xmm8
	punpcklwd	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3]
	punpckhwd	%xmm8, %xmm5            # xmm5 = xmm5[4],xmm8[4],xmm5[5],xmm8[5],xmm5[6],xmm8[6],xmm5[7],xmm8[7]
	movdqa	%xmm6, %xmm4
	punpcklwd	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1],xmm4[2],xmm8[2],xmm4[3],xmm8[3]
	punpckhwd	%xmm8, %xmm6            # xmm6 = xmm6[4],xmm8[4],xmm6[5],xmm8[5],xmm6[6],xmm8[6],xmm6[7],xmm8[7]
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3]
	punpckhwd	%xmm8, %xmm0            # xmm0 = xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	punpckhwd	%xmm8, %xmm2            # xmm2 = xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	movdqa	368(%rsp), %xmm14               # 16-byte Reload
	movdqa	%xmm14, %xmm8
	pmuludq	%xmm5, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	movdqa	336(%rsp), %xmm9                # 16-byte Reload
	pmuludq	%xmm9, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm8            # xmm8 = xmm8[0],xmm5[0],xmm8[1],xmm5[1]
	movdqa	%xmm8, 224(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm5
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm10             # xmm10 = xmm5[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm9, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm10           # xmm10 = xmm10[0],xmm7[0],xmm10[1],xmm7[1]
	movdqa	%xmm14, %xmm7
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm5              # xmm5 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	movdqa	%xmm5, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm6
	pmuludq	%xmm4, %xmm6
	pshufd	$232, %xmm6, %xmm8              # xmm8 = xmm6[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm8            # xmm8 = xmm8[0],xmm4[0],xmm8[1],xmm4[1]
	movdqa	%xmm14, %xmm4
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	movdqa	%xmm14, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm11             # xmm11 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movdqa	%xmm14, %xmm0
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm13             # xmm13 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm0              # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1]
	movdqa	%xmm14, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm0              # xmm0 = xmm3[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqu	-48(%rbx,%rbp), %xmm0
	movdqu	-32(%rbx,%rbp), %xmm3
	movdqu	-16(%rbx,%rbp), %xmm6
	movdqu	(%rbx,%rbp), %xmm9
	movdqa	%xmm0, %xmm1
	pxor	%xmm4, %xmm4
	punpckhwd	%xmm4, %xmm1            # xmm1 = xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	punpcklwd	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3]
	movdqa	%xmm3, %xmm7
	punpckhwd	%xmm4, %xmm7            # xmm7 = xmm7[4],xmm4[4],xmm7[5],xmm4[5],xmm7[6],xmm4[6],xmm7[7],xmm4[7]
	punpcklwd	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	movdqa	%xmm6, %xmm2
	punpckhwd	%xmm4, %xmm2            # xmm2 = xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	punpcklwd	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	movdqa	304(%rsp), %xmm5                # 16-byte Reload
	movdqa	%xmm5, %xmm15
	pmuludq	%xmm0, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	movdqa	320(%rsp), %xmm4                # 16-byte Reload
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movdqa	%xmm15, 48(%rsp)                # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm4, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movdqa	%xmm15, 176(%rsp)               # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm15             # xmm15 = xmm0[0,2,2,3]
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm15           # xmm15 = xmm15[0],xmm1[0],xmm15[1],xmm1[1]
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm7, %xmm1              # xmm1 = xmm7[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm6, %xmm1
	pshufd	$232, %xmm1, %xmm7              # xmm7 = xmm1[0,2,2,3]
	pshufd	$245, %xmm6, %xmm1              # xmm1 = xmm6[1,1,3,3]
	pmuludq	%xmm4, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1]
	movdqa	%xmm5, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movdqa	%xmm9, %xmm3
	punpcklwd	.LCPI18_0(%rip), %xmm9  # xmm9 = xmm9[0],mem[0],xmm9[1],mem[1],xmm9[2],mem[2],xmm9[3],mem[3]
	movdqa	%xmm5, %xmm2
	pmuludq	%xmm9, %xmm2
	pshufd	$232, %xmm2, %xmm6              # xmm6 = xmm2[0,2,2,3]
	pshufd	$245, %xmm9, %xmm2              # xmm2 = xmm9[1,1,3,3]
	movdqa	160(%rsp), %xmm9                # 16-byte Reload
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm6            # xmm6 = xmm6[0],xmm2[0],xmm6[1],xmm2[1]
	punpckhwd	.LCPI18_0(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	pmuludq	%xmm3, %xmm5
	pshufd	$232, %xmm5, %xmm2              # xmm2 = xmm5[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm4, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	movdqa	352(%rsp), %xmm3                # 16-byte Reload
	paddd	%xmm3, %xmm10
	paddd	48(%rsp), %xmm10                # 16-byte Folded Reload
	movdqa	224(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm3, %xmm4
	paddd	176(%rsp), %xmm4                # 16-byte Folded Reload
	paddd	%xmm3, %xmm8
	paddd	%xmm15, %xmm8
	movdqa	192(%rsp), %xmm5                # 16-byte Reload
	paddd	%xmm3, %xmm5
	paddd	%xmm0, %xmm5
	movdqa	%xmm5, %xmm0
	paddd	%xmm3, %xmm11
	paddd	%xmm7, %xmm11
	paddd	%xmm3, %xmm12
	paddd	%xmm1, %xmm12
	paddd	%xmm3, %xmm14
	paddd	%xmm6, %xmm14
	paddd	%xmm3, %xmm13
	psrad	%xmm9, %xmm10
	psrad	%xmm9, %xmm4
	paddd	%xmm2, %xmm13
	pslld	$16, %xmm4
	psrad	$16, %xmm4
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	packssdw	%xmm4, %xmm10
	psrad	%xmm9, %xmm8
	psrad	%xmm9, %xmm0
	psrad	%xmm9, %xmm11
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	pslld	$16, %xmm8
	psrad	$16, %xmm8
	packssdw	%xmm0, %xmm8
	psrad	%xmm9, %xmm12
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm12, %xmm11
	psrad	%xmm9, %xmm14
	psrad	%xmm9, %xmm13
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	packssdw	%xmm13, %xmm14
	movdqu	%xmm10, -48(%rcx)
	movdqu	%xmm8, -32(%rcx)
	movdqu	%xmm11, -16(%rcx)
	movdqu	%xmm14, (%rcx)
	addq	$64, %rbx
	addq	$64, %rcx
	addq	$-32, %r13
	jne	.LBB18_34
# %bb.35:                               # %middle.block666
                                        #   in Loop: Header=BB18_30 Depth=1
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %ebx
	cmpl	112(%rsp), %ecx                 # 4-byte Folded Reload
	je	.LBB18_42
	jmp	.LBB18_36
.LBB18_58:                              # %for.body.us.i255.preheader
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rcx
	movq	288(%rsp), %rdx                 # 8-byte Reload
	imulq	%rdx, %rcx
	shlq	$5, %rdx
	movq	40(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %rdx
	movq	144(%rsp), %r9                  # 8-byte Reload
	leaq	(%rdx,%r9,2), %rdx
	addq	$2, %rdx
	addq	72(%rsp), %rcx                  # 8-byte Folded Reload
	addq	%r9, %rcx
	movq	384(%rsp), %r9                  # 8-byte Reload
	leaq	(%r9,%rcx,2), %rcx
	addq	$4, %rcx
	cmpq	%r15, %rcx
	seta	%cl
	cmpq	%rdx, %rsi
	setb	%dl
	andb	%cl, %dl
	testl	%r8d, %r8d
	sets	%cl
	orb	%dl, %cl
	movb	%cl, 128(%rsp)                  # 1-byte Spill
	movq	80(%rsp), %r11                  # 8-byte Reload
                                        # kill: def $r11d killed $r11d killed $r11 def $r11
	andl	$2147483616, %r11d              # imm = 0x7FFFFFE0
	leal	(%r11,%r11), %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	xorl	%r14d, %r14d
	xorps	%xmm5, %xmm5
	movaps	240(%rsp), %xmm4                # 16-byte Reload
	movss	%xmm4, %xmm5                    # xmm5 = xmm4[0],xmm5[1,2,3]
	movaps	%xmm5, 160(%rsp)                # 16-byte Spill
	movl	12(%rsp), %r9d                  # 4-byte Reload
	jmp	.LBB18_59
	.p2align	4, 0x90
.LBB18_69:                              # %for.cond3.for.inc11_crit_edge.us.i276
                                        #   in Loop: Header=BB18_59 Depth=1
	movq	%rbx, %r15
	addq	$32, %r15
	addq	208(%rsp), %rsi                 # 8-byte Folded Reload
	incl	%r14d
	cmpl	64(%rsp), %r14d                 # 4-byte Folded Reload
	je	.LBB18_93
.LBB18_59:                              # %for.body.us.i255
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_61 Depth 2
                                        #     Child Loop BB18_68 Depth 2
	cmpl	$32, 16(%rsp)                   # 4-byte Folded Reload
	setb	%cl
	orb	128(%rsp), %cl                  # 1-byte Folded Reload
	movl	$0, %r8d
	movq	%r15, %rbx
	movq	%r15, %rdx
	movq	%rsi, %r15
	jne	.LBB18_63
# %bb.60:                               # %vector.ph550
                                        #   in Loop: Header=BB18_59 Depth=1
	movq	%rbx, %r8
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rbx,%rcx), %rdx
	leaq	(%rsi,%rcx), %r15
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB18_61:                              # %vector.body559
                                        #   Parent Loop BB18_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	32(%rsi,%rcx), %xmm1
	movdqu	48(%rsi,%rcx), %xmm14
	movdqu	(%rsi,%rcx), %xmm5
	movdqu	2(%rsi,%rcx), %xmm15
	movdqu	16(%rsi,%rcx), %xmm6
	movdqu	18(%rsi,%rcx), %xmm0
	movdqa	%xmm0, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm7
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	punpckhwd	%xmm0, %xmm5            # xmm5 = xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	movdqa	%xmm6, %xmm4
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3]
	punpckhwd	%xmm0, %xmm1            # xmm1 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	movdqa	%xmm14, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckhwd	%xmm0, %xmm14           # xmm14 = xmm14[4],xmm0[4],xmm14[5],xmm0[5],xmm14[6],xmm0[6],xmm14[7],xmm0[7]
	movdqa	320(%rsp), %xmm0                # 16-byte Reload
	movdqa	%xmm0, %xmm8
	pmuludq	%xmm5, %xmm8
	pshufd	$232, %xmm8, %xmm9              # xmm9 = xmm8[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	movdqa	304(%rsp), %xmm8                # 16-byte Reload
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm9            # xmm9 = xmm9[0],xmm5[0],xmm9[1],xmm5[1]
	movdqa	%xmm9, 224(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm5
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm8, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm5            # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1]
	movdqa	%xmm5, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm7
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm10             # xmm10 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	movdqa	%xmm0, %xmm6
	pmuludq	%xmm4, %xmm6
	pshufd	$232, %xmm6, %xmm9              # xmm9 = xmm6[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm9            # xmm9 = xmm9[0],xmm4[0],xmm9[1],xmm4[1]
	movdqa	%xmm0, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm11             # xmm11 = xmm1[0,2,2,3]
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm11           # xmm11 = xmm11[0],xmm1[0],xmm11[1],xmm1[1]
	movdqa	%xmm0, %xmm1
	pmuludq	%xmm14, %xmm1
	pshufd	$232, %xmm1, %xmm13             # xmm13 = xmm1[0,2,2,3]
	pshufd	$245, %xmm14, %xmm1             # xmm1 = xmm14[1,1,3,3]
	pmuludq	%xmm8, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pshufd	$245, %xmm2, %xmm0              # xmm0 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	movdqu	34(%rsi,%rcx), %xmm4
	movdqu	50(%rsi,%rcx), %xmm5
	movdqa	%xmm15, %xmm1
	movdqa	%xmm15, %xmm3
	pxor	%xmm0, %xmm0
	punpckhwd	%xmm0, %xmm3            # xmm3 = xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movdqa	%xmm1, %xmm2
	movdqa	48(%rsp), %xmm15                # 16-byte Reload
	movdqa	%xmm15, %xmm7
	punpckhwd	%xmm0, %xmm7            # xmm7 = xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1],xmm15[2],xmm0[2],xmm15[3],xmm0[3]
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm0, %xmm6            # xmm6 = xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1],xmm4[2],xmm0[2],xmm4[3],xmm0[3]
	movdqa	352(%rsp), %xmm8                # 16-byte Reload
	movdqa	%xmm8, %xmm1
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm0              # xmm0 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	movdqa	336(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movdqa	%xmm0, 48(%rsp)                 # 16-byte Spill
	movdqa	%xmm8, %xmm2
	pmuludq	%xmm3, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	movdqa	%xmm0, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm3
	pmuludq	%xmm15, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm15, %xmm15            # xmm15 = xmm15[1,1,3,3]
	pmuludq	%xmm1, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	punpckldq	%xmm15, %xmm3           # xmm3 = xmm3[0],xmm15[0],xmm3[1],xmm15[1]
	movdqa	%xmm8, %xmm15
	pmuludq	%xmm7, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm1, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm15           # xmm15 = xmm15[0],xmm7[0],xmm15[1],xmm7[1]
	movdqa	%xmm8, %xmm7
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	movdqa	%xmm8, %xmm4
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	movdqa	%xmm5, %xmm0
	pxor	%xmm2, %xmm2
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	movdqa	%xmm8, %xmm6
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckhwd	%xmm2, %xmm0            # xmm0 = xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	pmuludq	%xmm0, %xmm8
	pshufd	$232, %xmm8, %xmm5              # xmm5 = xmm8[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	movdqa	368(%rsp), %xmm0                # 16-byte Reload
	movdqa	192(%rsp), %xmm1                # 16-byte Reload
	paddd	%xmm0, %xmm1
	paddd	48(%rsp), %xmm1                 # 16-byte Folded Reload
	movdqa	224(%rsp), %xmm8                # 16-byte Reload
	paddd	%xmm0, %xmm8
	paddd	176(%rsp), %xmm8                # 16-byte Folded Reload
	movdqa	%xmm8, %xmm2
	paddd	%xmm0, %xmm9
	paddd	%xmm3, %xmm9
	paddd	%xmm0, %xmm10
	paddd	%xmm15, %xmm10
	paddd	%xmm0, %xmm11
	paddd	%xmm7, %xmm11
	paddd	%xmm0, %xmm12
	paddd	%xmm4, %xmm12
	paddd	%xmm0, %xmm14
	paddd	%xmm6, %xmm14
	paddd	%xmm0, %xmm13
	paddd	%xmm5, %xmm13
	movdqa	160(%rsp), %xmm5                # 16-byte Reload
	psrad	%xmm5, %xmm1
	psrad	%xmm5, %xmm2
	psrad	%xmm5, %xmm9
	pslld	$16, %xmm2
	psrad	$16, %xmm2
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	packssdw	%xmm2, %xmm1
	psrad	%xmm5, %xmm10
	pslld	$16, %xmm10
	psrad	$16, %xmm10
	pslld	$16, %xmm9
	psrad	$16, %xmm9
	packssdw	%xmm10, %xmm9
	psrad	%xmm5, %xmm11
	psrad	%xmm5, %xmm12
	psrad	%xmm5, %xmm14
	psrad	%xmm5, %xmm13
	pslld	$16, %xmm12
	psrad	$16, %xmm12
	pslld	$16, %xmm11
	psrad	$16, %xmm11
	packssdw	%xmm12, %xmm11
	pslld	$16, %xmm13
	psrad	$16, %xmm13
	pslld	$16, %xmm14
	psrad	$16, %xmm14
	packssdw	%xmm13, %xmm14
	movdqu	%xmm1, (%r8,%rcx)
	movdqu	%xmm9, 16(%r8,%rcx)
	movdqu	%xmm11, 32(%r8,%rcx)
	movdqu	%xmm14, 48(%r8,%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %r10
	jne	.LBB18_61
# %bb.62:                               # %middle.block547
                                        #   in Loop: Header=BB18_59 Depth=1
	movl	%r11d, %r8d
	cmpl	80(%rsp), %r11d                 # 4-byte Folded Reload
	je	.LBB18_69
.LBB18_63:                              # %for.body5.us.i260.preheader
                                        #   in Loop: Header=BB18_59 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	subl	%r8d, %ecx
	testb	$1, %cl
	jne	.LBB18_65
# %bb.64:                               #   in Loop: Header=BB18_59 Depth=1
	movl	%r8d, %ecx
	cmpl	144(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB18_69
	jmp	.LBB18_67
	.p2align	4, 0x90
.LBB18_65:                              # %for.body5.us.i260.prol
                                        #   in Loop: Header=BB18_59 Depth=1
	movzwl	(%r15), %r12d
	movzwl	2(%r15), %ecx
	addq	$2, %r15
	imull	12(%rsp), %r12d                 # 4-byte Folded Reload
	imull	%edi, %ecx
	addl	%ebp, %r12d
	addl	%ecx, %r12d
	movl	%eax, %ecx
	sarl	%cl, %r12d
	movw	%r12w, (%rdx)
	addq	$2, %rdx
	leal	1(%r8), %ecx
	cmpl	144(%rsp), %r8d                 # 4-byte Folded Reload
	je	.LBB18_69
.LBB18_67:                              # %for.body5.us.i260.preheader4
                                        #   in Loop: Header=BB18_59 Depth=1
	movq	16(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8 def $r8
	subl	%ecx, %r8d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB18_68:                              # %for.body5.us.i260
                                        #   Parent Loop BB18_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r15,%r12,2), %r13d
	imull	%r9d, %r13d
	movzwl	2(%r15,%r12,2), %ecx
	imull	%edi, %ecx
	addl	%ebp, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	movw	%r13w, (%rdx,%r12,2)
	movzwl	2(%r15,%r12,2), %r13d
	imull	%r9d, %r13d
	movzwl	4(%r15,%r12,2), %ecx
	imull	%edi, %ecx
	addl	%ebp, %r13d
	addl	%ecx, %r13d
	movl	%eax, %ecx
	sarl	%cl, %r13d
	movw	%r13w, 2(%rdx,%r12,2)
	addq	$2, %r12
	cmpl	%r12d, %r8d
	jne	.LBB18_68
	jmp	.LBB18_69
.Lfunc_end18:
	.size	get_block_chroma, .Lfunc_end18-get_block_chroma
	.cfi_endproc
                                        # -- End function
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

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"WARNING! Horizontal motion vector %d is out of allowed range {-8192, 8191} in picture %d, macroblock %d\n"
	.size	.L.str.1, 105

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"WARNING! Vertical motion vector %d is out of allowed range {%d, %d} in picture %d, macroblock %d\n"
	.size	.L.str.2, 98

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"list[ref_frame] is equal to 'no reference picture' before RAP"
	.size	.Lstr.3, 62

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
