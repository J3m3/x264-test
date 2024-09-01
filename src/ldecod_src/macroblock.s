	.text
	.file	"macroblock.c"
	.globl	set_chroma_qp                   # -- Begin function set_chroma_qp
	.p2align	4, 0x90
	.type	set_chroma_qp,@function
set_chroma_qp:                          # @set_chroma_qp
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	13520(%rcx), %rsi
	movl	68(%rdi), %edx
	xorl	%ecx, %ecx
	subl	849056(%rax), %ecx
	xorl	%r8d, %r8d
	movl	300(%rsi), %r10d
	addl	%edx, %r10d
	cmpl	%ecx, %r10d
	cmovlel	%ecx, %r10d
	cmpl	$51, %r10d
	movl	$51, %ecx
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB0_2
# %bb.1:                                # %cond.false
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB0_2:                                # %cond.end
	movl	%r9d, 72(%rdi)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rdi)
	subl	849056(%rax), %r8d
	addl	304(%rsi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %ecx
	testl	%edx, %edx
	js	.LBB0_4
# %bb.3:                                # %cond.false.1
	movl	%ecx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %ecx
.LBB0_4:                                # %cond.end.1
	movl	%ecx, 76(%rdi)
	addl	849056(%rax), %ecx
	movl	%ecx, 88(%rdi)
	retq
.Lfunc_end0:
	.size	set_chroma_qp, .Lfunc_end0-set_chroma_qp
	.cfi_endproc
                                        # -- End function
	.globl	update_qp                       # -- Begin function update_qp
	.p2align	4, 0x90
	.type	update_qp,@function
update_qp:                              # @update_qp
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rdx
	movq	8(%rdi), %rax
	movl	%esi, 68(%rdi)
	movl	849052(%rax), %ecx
	addl	%esi, %ecx
	movl	%ecx, 80(%rdi)
	movq	13520(%rdx), %r8
	xorl	%edx, %edx
	subl	849056(%rax), %edx
	xorl	%r9d, %r9d
	movl	300(%r8), %r11d
	addl	%esi, %r11d
	cmpl	%edx, %r11d
	cmovlel	%edx, %r11d
	cmpl	$51, %r11d
	movl	$51, %edx
	movl	$51, %r10d
	cmovll	%r11d, %r10d
	testl	%r11d, %r11d
	js	.LBB1_2
# %bb.1:                                # %cond.false.i
	movl	%r10d, %r10d
	movzbl	QP_SCALE_CR(%r10), %r10d
.LBB1_2:                                # %cond.end.i
	movl	%r10d, 72(%rdi)
	addl	849056(%rax), %r10d
	movl	%r10d, 84(%rdi)
	subl	849056(%rax), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edx
	testl	%esi, %esi
	js	.LBB1_4
# %bb.3:                                # %cond.false.1.i
	movl	%edx, %edx
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB1_4:                                # %set_chroma_qp.exit
	movl	%edx, 76(%rdi)
	addl	849056(%rax), %edx
	movl	%edx, 88(%rdi)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	je	.LBB1_5
# %bb.6:                                # %land.end
	movl	%edx, 92(%rdi)
	retq
.LBB1_5:                                # %land.rhs
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
	movl	%edx, 92(%rdi)
	retq
.Lfunc_end1:
	.size	update_qp, .Lfunc_end1-update_qp
	.cfi_endproc
                                        # -- End function
	.globl	invScaleCoeff                   # -- Begin function invScaleCoeff
	.p2align	4, 0x90
	.type	invScaleCoeff,@function
invScaleCoeff:                          # @invScaleCoeff
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $edx killed $edx def $rdx
	testl	%esi, %esi
	je	.LBB2_5
# %bb.1:                                # %if.then
	movq	40(%rsp), %r10
	movq	32(%rsp), %r11
	movl	24(%rsp), %eax
	addl	%edx, %eax
	incl	%eax
	movslq	%eax, %rdx
	movzbl	(%r11,%rdx,2), %eax
	movzbl	1(%r11,%rdx,2), %edx
	movl	%r9d, %r11d
	shll	$2, %r9d
	leal	(%r8,%r11,4), %r11d
	cmpl	$63, %r11d
	jle	.LBB2_3
# %bb.2:
	xorl	%r11d, %r11d
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false.i
	movslq	%r11d, %r11
	movq	po2(,%r11,8), %r11
.LBB2_4:                                # %i64_power2.exit
	orq	%r11, 288(%rdi)
	movl	%edx, %r11d
	shll	$4, %r11d
	addq	%r11, %r10
	movl	%eax, %r11d
	imull	(%r10,%r11,4), %esi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movq	(%rdi), %rcx
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	movslq	%r9d, %rdi
	addq	%rdx, %rdi
	movq	(%rcx,%rdi,8), %rcx
	shll	$2, %r8d
	movslq	%r8d, %rdx
	addq	%rax, %rdx
	movl	%esi, (%rcx,%rdx,4)
.LBB2_5:                                # %if.end
	retq
.Lfunc_end2:
	.size	invScaleCoeff, .Lfunc_end2-invScaleCoeff
	.cfi_endproc
                                        # -- End function
	.globl	start_macroblock                # -- Begin function start_macroblock
	.p2align	4, 0x90
	.type	start_macroblock,@function
start_macroblock:                       # @start_macroblock
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %r15
	movq	13520(%rdi), %rsi
	movslq	108(%rdi), %rcx
	movq	13512(%rdi), %rax
	imulq	$480, %rcx, %rdx                # imm = 0x1E0
	leaq	(%rax,%rdx), %rdi
	movq	%rdi, (%rbx)
	movq	%r14, (%rax,%rdx)
	movq	(%rbx), %rax
	movq	%r15, 8(%rax)
	movq	(%rbx), %rax
	movl	%ecx, 24(%rax)
	cmpl	$0, 128(%r14)
	je	.LBB3_2
# %bb.1:                                # %if.then
	movl	848780(%r15), %eax
	leal	7(%rax), %edi
	testl	%eax, %eax
	cmovnsl	%eax, %edi
	sarl	$3, %edi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movq	(%rbx), %rax
	movw	%dx, 28(%rax)
	movl	848780(%r15), %eax
	leal	7(%rax), %edi
	testl	%eax, %eax
	cmovnsl	%eax, %edi
	sarl	$3, %edi
	movl	%ecx, %eax
	cltd
	idivl	%edi
	addl	%eax, %eax
	movq	(%rbx), %rcx
	movw	%ax, 30(%rcx)
	movq	(%rbx), %rax
	movzwl	28(%rax), %ecx
	andl	$1, %ecx
	addw	%cx, 30(%rax)
	movq	(%rbx), %rax
	sarw	28(%rax)
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movq	(%rbx), %rax
	movq	PicPos@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rcx,4), %ecx
	movl	%ecx, 28(%rax)
.LBB3_3:                                # %if.end
	movq	(%rbx), %rax
	movswl	28(%rax), %ecx
	shll	$2, %ecx
	movl	%ecx, 32(%rax)
	movq	(%rbx), %rax
	movswl	30(%rax), %ecx
	shll	$2, %ecx
	movl	%ecx, 36(%rax)
	movq	(%rbx), %rax
	movl	36(%rax), %ecx
	movl	%ecx, 40(%rax)
	movq	(%rbx), %rax
	movswl	28(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, 44(%rax)
	movq	(%rbx), %rax
	movswl	30(%rax), %ecx
	shll	$4, %ecx
	movl	%ecx, 48(%rax)
	movq	(%rbx), %rax
	movswl	28(%rax), %ecx
	imull	849108(%r15), %ecx
	movl	%ecx, 52(%rax)
	movq	(%rbx), %rax
	movswl	30(%rax), %ecx
	imull	849112(%r15), %ecx
	movl	%ecx, 56(%rax)
	movq	(%rbx), %rax
	movl	$0, 96(%rax)
	movzwl	116(%r14), %eax
	movq	(%rbx), %rcx
	movw	%ax, 108(%rcx)
	movq	216(%rsi), %rcx
	movq	(%rbx), %rdx
	movswq	30(%rdx), %rsi
	movq	(%rcx,%rsi,8), %rcx
	movswq	28(%rdx), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	(%rbx), %rdi
	callq	CheckAvailabilityOfNeighbors@PLT
	movq	(%rbx), %rdi
	movl	128(%r14), %esi
	callq	init_motion_vector_prediction@PLT
	movq	24(%r14), %rax
	movl	36(%rax), %esi
	movq	%rbx, %rdi
	callq	set_read_and_store_CBP@PLT
	movq	(%rbx), %rax
	movw	$0, 152(%rax)
	movq	(%rbx), %rax
	movw	$0, 112(%rax)
	movq	(%rbx), %rax
	movl	$0, 284(%rax)
	movq	(%rbx), %rax
	movb	$0, 373(%rax)
	movl	164(%r14), %eax
	cmpl	$1, %eax
	je	.LBB3_6
# %bb.4:                                # %if.end
	cmpl	$2, %eax
	je	.LBB3_8
# %bb.5:                                # %if.then65
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	jmp	.LBB3_7
.LBB3_6:                                # %if.else69
	movq	(%rbx), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 266(%rax)
	movups	%xmm0, 250(%rax)
	movups	%xmm0, 234(%rax)
	movups	%xmm0, 218(%rax)
.LBB3_7:                                # %if.end76
	movups	%xmm0, 202(%rax)
	movups	%xmm0, 186(%rax)
	movups	%xmm0, 170(%rax)
	movups	%xmm0, 154(%rax)
.LBB3_8:                                # %if.end76
	movq	(%rbx), %rax
	movq	$0, 288(%rax)
	movq	(%rbx), %rax
	movq	$0, 312(%rax)
	movq	(%rbx), %rax
	movq	$0, 336(%rax)
	movq	(%rbx), %rax
	movq	$0, 296(%rax)
	movq	(%rbx), %rax
	movq	$0, 320(%rax)
	movq	(%rbx), %rax
	movq	$0, 344(%rax)
	movq	(%rbx), %rax
	movq	$0, 304(%rax)
	movq	(%rbx), %rax
	movq	$0, 328(%rax)
	movq	(%rbx), %rax
	movq	$0, 352(%rax)
	cmpl	$0, 1240(%r14)
	jne	.LBB3_10
# %bb.9:                                # %if.then87
	movq	1264(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1264(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movl	849108(%r15), %eax
	imull	849112(%r15), %eax
	shll	$2, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1264(%r14), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movl	849108(%r15), %eax
	imull	849112(%r15), %eax
	shll	$2, %eax
	movslq	%eax, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1272(%r14), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1272(%r14), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
	movq	1272(%r14), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rdi
	movl	$1024, %edx                     # imm = 0x400
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$1, 1240(%r14)
.LBB3_10:                               # %if.end117
	movzwl	1220(%r14), %eax
	movq	(%rbx), %rcx
	movw	%ax, 376(%rcx)
	movzwl	1222(%r14), %eax
	movq	(%rbx), %rcx
	movw	%ax, 378(%rcx)
	movzwl	1224(%r14), %eax
	movq	(%rbx), %rcx
	movw	%ax, 380(%rcx)
	movq	(%rbx), %rax
	movw	$0, 114(%rax)
	movq	(%rbx), %rax
	movb	$0, 472(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	start_macroblock, .Lfunc_end3-start_macroblock
	.cfi_endproc
                                        # -- End function
	.globl	exit_macroblock                 # -- Begin function exit_macroblock
	.p2align	4, 0x90
	.type	exit_macroblock,@function
exit_macroblock:                        # @exit_macroblock
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
	movq	(%rdi), %r15
	incl	112(%rdi)
	movl	108(%rdi), %eax
	movl	849012(%r15), %ecx
	decl	%ecx
	movl	$1, %ebx
	cmpl	%ecx, %eax
	je	.LBB4_8
# %bb.1:                                # %if.else
	movq	%rdi, %r14
	movl	%esi, %ebp
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	FmoGetNextMBNr@PLT
	movl	%eax, 108(%r14)
	cmpl	$-1, %eax
	je	.LBB4_8
# %bb.2:                                # %if.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	*13432(%r14)
	testl	%eax, %eax
	je	.LBB4_3
# %bb.4:                                # %if.end10
	movl	164(%r14), %eax
	cmpl	$2, %eax
	je	.LBB4_8
# %bb.5:                                # %if.end10
	cmpl	$4, %eax
	je	.LBB4_8
# %bb.6:                                # %lor.lhs.false14
	movq	8(%r15), %rax
	cmpl	$1, 12(%rax)
	je	.LBB4_8
# %bb.7:                                # %if.end17
	xorl	%ebx, %ebx
	cmpl	$0, 120(%r14)
	setle	%bl
	jmp	.LBB4_8
.LBB4_3:
	xorl	%ebx, %ebx
.LBB4_8:                                # %cleanup
	movl	%ebx, %eax
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
.Lfunc_end4:
	.size	exit_macroblock, .Lfunc_end4-exit_macroblock
	.cfi_endproc
                                        # -- End function
	.globl	setup_slice_methods             # -- Begin function setup_slice_methods
	.p2align	4, 0x90
	.type	setup_slice_methods,@function
setup_slice_methods:                    # @setup_slice_methods
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	164(%rdi), %eax
	cmpq	$4, %rax
	ja	.LBB5_13
# %bb.1:                                # %entry
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_2:                                # %sw.bb
	movq	$interpret_mb_mode_P, 13456(%rdi)
	movq	$read_motion_info_from_NAL_p_slice, 13440(%rdi)
	movq	$read_one_macroblock_p_slice, 13448(%rdi)
	movq	$decode_one_component_p_slice, 13416(%rdi)
	movq	$0, 13496(%rdi)
	cmpl	$0, 1176(%rdi)
	je	.LBB5_3
.LBB5_10:
	movq	init_lists_p_slice_mvc@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB5_14
	jmp	.LBB5_16
.LBB5_4:                                # %sw.bb30
	movq	$interpret_mb_mode_SI, 13456(%rdi)
	jmp	.LBB5_5
.LBB5_7:                                # %sw.bb20
	movq	$interpret_mb_mode_I, 13456(%rdi)
.LBB5_5:                                # %sw.bb30
	movq	$0, 13440(%rdi)
	movq	$read_one_macroblock_i_slice, 13448(%rdi)
	movq	$decode_one_component_i_slice, 13416(%rdi)
	movq	$0, 13496(%rdi)
	cmpl	$0, 1176(%rdi)
	jne	.LBB5_6
# %bb.8:                                # %sw.bb20
	movq	init_lists_i_slice@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	je	.LBB5_16
.LBB5_14:
	movq	intrapred_chroma_mbaff@GOTPCREL(%rip), %rax
	jmp	.LBB5_17
.LBB5_6:
	movq	init_lists_i_slice_mvc@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB5_14
.LBB5_16:                               # %sw.epilog
	movq	intrapred_chroma@GOTPCREL(%rip), %rax
.LBB5_17:                               # %sw.epilog
	movq	%rax, 13472(%rdi)
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	movl	12(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB5_24
# %bb.18:                               # %sw.epilog
	cmpl	$1, %ecx
	jne	.LBB5_29
# %bb.19:                               # %sw.bb42
	movq	16(%rax), %rcx
	movl	36(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB5_32
# %bb.20:                               # %sw.bb42
	cmpl	$2, %ecx
	je	.LBB5_30
# %bb.21:                               # %sw.bb42
	cmpl	$3, %ecx
	jne	.LBB5_23
# %bb.22:                               # %land.lhs.true
	cmpl	$0, 849280(%rax)
	je	.LBB5_34
.LBB5_23:                               # %if.else61
	movq	$read_CBP_and_coeffs_from_NAL_CABAC_420, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_24:                               # %sw.bb66
	.cfi_def_cfa_offset 16
	movq	16(%rax), %rcx
	movl	36(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB5_33
# %bb.25:                               # %sw.bb66
	cmpl	$2, %ecx
	je	.LBB5_31
# %bb.26:                               # %sw.bb66
	cmpl	$3, %ecx
	jne	.LBB5_28
# %bb.27:                               # %land.lhs.true71
	cmpl	$0, 849280(%rax)
	je	.LBB5_35
.LBB5_28:                               # %if.else91
	movq	$read_CBP_and_coeffs_from_NAL_CAVLC_420, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_29:                               # %sw.default96
	.cfi_def_cfa_offset 16
	movl	$.Lstr.7, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	puts@PLT                        # TAILCALL
.LBB5_9:                                # %sw.bb1
	.cfi_def_cfa_offset 16
	movq	$interpret_mb_mode_P, 13456(%rdi)
	movq	$read_motion_info_from_NAL_p_slice, 13440(%rdi)
	movq	$read_one_macroblock_p_slice, 13448(%rdi)
	movq	$decode_one_component_sp_slice, 13416(%rdi)
	movq	$0, 13496(%rdi)
	cmpl	$0, 1176(%rdi)
	jne	.LBB5_10
.LBB5_3:                                # %sw.bb
	movq	init_lists_p_slice@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB5_14
	jmp	.LBB5_16
.LBB5_11:                               # %sw.bb11
	movq	$interpret_mb_mode_B, 13456(%rdi)
	movq	$read_motion_info_from_NAL_b_slice, 13440(%rdi)
	movq	$read_one_macroblock_b_slice, 13448(%rdi)
	movq	$decode_one_component_b_slice, 13416(%rdi)
	movq	%rdi, %rbx
	callq	update_direct_types@PLT
	movq	%rbx, %rdi
	cmpl	$0, 1176(%rbx)
	jne	.LBB5_15
# %bb.12:                               # %sw.bb11
	movq	init_lists_b_slice@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB5_14
	jmp	.LBB5_16
.LBB5_13:                               # %sw.default
	movq	%rdi, %rbx
	movl	$.Lstr, %edi
	callq	puts@PLT
	movq	%rbx, %rdi
	cmpl	$0, 128(%rdi)
	je	.LBB5_16
	jmp	.LBB5_14
.LBB5_30:                               # %if.then52
	movq	$read_CBP_and_coeffs_from_NAL_CABAC_422, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_31:                               # %if.then82
	.cfi_def_cfa_offset 16
	movq	$read_CBP_and_coeffs_from_NAL_CAVLC_422, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_32:                               # %if.then59
	.cfi_def_cfa_offset 16
	movq	$read_CBP_and_coeffs_from_NAL_CABAC_400, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_33:                               # %if.then89
	.cfi_def_cfa_offset 16
	movq	$read_CBP_and_coeffs_from_NAL_CAVLC_400, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_15:
	.cfi_def_cfa_offset 16
	movq	init_lists_b_slice_mvc@GOTPCREL(%rip), %rax
	movq	%rax, 13464(%rdi)
	cmpl	$0, 128(%rdi)
	jne	.LBB5_14
	jmp	.LBB5_16
.LBB5_34:                               # %if.then46
	movq	$read_CBP_and_coeffs_from_NAL_CABAC_444, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_35:                               # %if.then75
	.cfi_def_cfa_offset 16
	movq	$read_CBP_and_coeffs_from_NAL_CAVLC_444, 13408(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	setup_slice_methods, .Lfunc_end5-setup_slice_methods
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI5_0:
	.quad	.LBB5_2
	.quad	.LBB5_11
	.quad	.LBB5_7
	.quad	.LBB5_9
	.quad	.LBB5_4
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function interpret_mb_mode_P
	.type	interpret_mb_mode_P,@function
interpret_mb_mode_P:                    # @interpret_mb_mode_P
	.cfi_startproc
# %bb.0:                                # %entry
	movswl	152(%rdi), %eax
	cmpl	$3, %eax
	jg	.LBB6_2
# %bb.1:                                # %if.then
	movzbl	%al, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 364(%rdi)
	movl	$0, 368(%rdi)
	retq
.LBB6_2:                                # %if.else
	movl	%eax, %ecx
	andl	$32766, %ecx                    # imm = 0x7FFE
	cmpw	$4, %cx
	jne	.LBB6_4
# %bb.3:                                # %if.then11
	xorl	%ecx, %ecx
	cmpw	$5, %ax
	sete	%cl
	movw	$8, 152(%rdi)
	movq	(%rdi), %rax
	movl	%ecx, 124(%rax)
	retq
.LBB6_4:                                # %if.else16
	movl	$1, 96(%rdi)
	cmpw	$31, %ax
	je	.LBB6_7
# %bb.5:                                # %if.else16
	movzwl	%ax, %ecx
	cmpl	$6, %ecx
	jne	.LBB6_8
# %bb.6:                                # %if.then20
	movw	$9, 152(%rdi)
	movabsq	$-4109694197, %rax              # imm = 0xFFFFFFFF0B0B0B0B
	movq	%rax, 364(%rdi)
	retq
.LBB6_7:                                # %if.then30
	movw	$14, 152(%rdi)
	movl	$-1, 284(%rdi)
	movq	$0, 360(%rdi)
	movl	$-1, 368(%rdi)
	retq
.LBB6_8:                                # %if.else37
	movw	$10, 152(%rdi)
	addl	$-7, %eax
	movl	%eax, %ecx
	shrl	$2, %ecx
	movswl	interpret_mb_mode_I.ICBPTAB(%rcx,%rcx), %ecx
	movl	%ecx, 284(%rdi)
	andl	$3, %eax
	movl	%eax, 360(%rdi)
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rax, 364(%rdi)
	retq
.Lfunc_end6:
	.size	interpret_mb_mode_P, .Lfunc_end6-interpret_mb_mode_P
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_motion_info_from_NAL_p_slice
	.type	read_motion_info_from_NAL_p_slice,@function
read_motion_info_from_NAL_p_slice:      # @read_motion_info_from_NAL_p_slice
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
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movq	8(%rdi), %r14
	movl	152(%rdi), %ecx
	movl	$4, %edx
	movq	13520(%r13), %r15
	movswq	114(%rdi), %rax
	movq	264(%r13,%rax,8), %r12
	movl	$3, 24(%rsp)
	movl	136(%r13), %eax
	cmpw	$8, %cx
	cmovnel	%ecx, %edx
	movswq	%dx, %rcx
	movl	BLOCK_STEP(,%rcx,8), %r8d
	movl	BLOCK_STEP+4(,%rcx,8), %r9d
	jne	.LBB7_1
# %bb.2:                                # %lor.rhs
	cmpl	$0, 124(%r13)
	setne	%cl
	movq	312(%r13), %rsi
	movq	$readRefPictureIdx_Null, 464(%rbx)
	cmpl	$2, %eax
	jge	.LBB7_4
	jmp	.LBB7_10
.LBB7_1:
	xorl	%ecx, %ecx
	movq	312(%r13), %rsi
	movq	$readRefPictureIdx_Null, 464(%rbx)
	cmpl	$2, %eax
	jl	.LBB7_10
.LBB7_4:                                # %if.then.i
	movq	8(%r14), %rdx
	cmpl	$0, 12(%rdx)
	je	.LBB7_6
# %bb.5:                                # %lor.lhs.false.i
	movq	(%rsi), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB7_8
.LBB7_6:                                # %if.then2.i
	movq	linfo_ue@GOTPCREL(%rip), %rdx
	movq	%rdx, 56(%rsp)
	testb	%cl, %cl
	jne	.LBB7_10
# %bb.7:                                # %if.then4.i
	cmpl	$2, %eax
	movl	$readRefPictureIdx_FLC, %ecx
	movl	$readRefPictureIdx_VLC, %eax
	cmoveq	%rcx, %rax
	jmp	.LBB7_9
.LBB7_8:                                # %if.else10.i
	movq	readRefFrame_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movl	$readRefPictureIdx_VLC, %eax
	testb	%cl, %cl
	jne	.LBB7_10
.LBB7_9:                                # %if.end16.sink.split.i
	movq	%rax, 464(%rbx)
.LBB7_10:                               # %prepareListforRefIdx.exit
	movslq	36(%rbx), %rcx
	shlq	$3, %rcx
	addq	152(%r15), %rcx
	movl	%r8d, 20(%rsp)                  # 4-byte Spill
	movl	%r8d, (%rsp)
	leaq	24(%rsp), %rdi
	movq	%rbx, %rdx
	xorl	%r8d, %r8d
	movl	%r9d, %ebp
	callq	readMBRefPictureIdx
	movl	$5, 24(%rsp)
	movq	312(%r13), %rsi
	movq	8(%r14), %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_11
# %bb.12:                               # %lor.lhs.false
	movq	(%rsi), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB7_13
# %bb.14:                               # %lor.lhs.false
	movq	read_MVD_CABAC@GOTPCREL(%rip), %rax
	jmp	.LBB7_15
.LBB7_11:
	movq	linfo_se@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	movl	20(%rsp), %r8d                  # 4-byte Reload
	jmp	.LBB7_16
.LBB7_13:
	movq	linfo_se@GOTPCREL(%rip), %rax
.LBB7_15:                               # %lor.lhs.false
	movl	20(%rsp), %r8d                  # 4-byte Reload
	leaq	32(,%rcx,8), %rcx
.LBB7_16:                               # %for.body.lr.ph
	movq	%rax, 24(%rsp,%rcx)
	leaq	24(%rsp), %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movl	%ebp, %r9d
	callq	readMBMotionVectors
	movslq	36(%rbx), %rax
	decq	%rax
	.p2align	4, 0x90
.LBB7_17:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r15), %rcx
	movq	8(%rcx,%rax,8), %rcx
	movslq	32(%rbx), %rdx
	shlq	$5, %rdx
	movsbq	24(%rcx,%rdx), %rsi
	movq	(%r12,%rsi,8), %rsi
	movq	%rsi, (%rcx,%rdx)
	movsbq	56(%rcx,%rdx), %rsi
	movq	(%r12,%rsi,8), %rsi
	movq	%rsi, 32(%rcx,%rdx)
	movsbq	88(%rcx,%rdx), %rsi
	movq	(%r12,%rsi,8), %rsi
	movq	%rsi, 64(%rcx,%rdx)
	movsbq	120(%rcx,%rdx), %rsi
	movq	(%r12,%rsi,8), %rsi
	movq	%rsi, 96(%rcx,%rdx)
	movslq	36(%rbx), %rcx
	addq	$3, %rcx
	incq	%rax
	cmpq	%rcx, %rax
	jl	.LBB7_17
# %bb.18:                               # %for.end
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
.Lfunc_end7:
	.size	read_motion_info_from_NAL_p_slice, .Lfunc_end7-read_motion_info_from_NAL_p_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_one_macroblock_p_slice
	.type	read_one_macroblock_p_slice,@function
read_one_macroblock_p_slice:            # @read_one_macroblock_p_slice
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	8(%rdi), %r13
	movslq	24(%rdi), %r10
	cmpl	$0, 128(%rbx)
	sete	%al
	movl	%r10d, %r15d
	andl	$1, %r15d
	sete	%cl
	orb	%al, %cl
	je	.LBB8_1
# %bb.2:                                # %if.end9
	testl	%r15d, %r15d
	jne	.LBB8_4
# %bb.3:
	xorl	%ebp, %ebp
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.LBB8_6
.LBB8_1:                                # %if.end9.thread
	movq	848888(%r13), %rax
	imulq	$480, %r10, %rcx                # imm = 0x1E0
	leaq	(%rax,%rcx), %r11
	addq	$-480, %r11                     # imm = 0xFE20
	xorl	%ebp, %ebp
	cmpw	$0, -328(%rax,%rcx)
	sete	%bpl
	jmp	.LBB8_5
.LBB8_4:                                # %if.end9.cond.false_crit_edge
	movq	848888(%r13), %rax
	xorl	%ebp, %ebp
	xorl	%r11d, %r11d
.LBB8_5:                                # %cond.false
	imulq	$480, %r10, %rcx                # imm = 0x1E0
	movl	-96(%rax,%rcx), %eax
.LBB8_6:                                # %cond.end
	movslq	200(%rbx), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	13520(%rbx), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%eax, 384(%r14)
	movl	148(%rbx), %ecx
	movl	%ecx, 68(%r14)
	movl	849052(%r13), %eax
	addl	%ecx, %eax
	movl	%eax, 80(%r14)
	movq	13520(%rbx), %rsi
	xorl	%edx, %edx
	subl	849056(%r13), %edx
	xorl	%edi, %edi
	movl	300(%rsi), %r9d
	addl	%ecx, %r9d
	cmpl	%edx, %r9d
	cmovlel	%edx, %r9d
	cmpl	$51, %r9d
	movl	$51, %edx
	movl	$51, %r8d
	cmovll	%r9d, %r8d
	testl	%r9d, %r9d
	js	.LBB8_8
# %bb.7:                                # %cond.false.i.i
	movl	%r8d, %r8d
	movzbl	QP_SCALE_CR(%r8), %r8d
.LBB8_8:                                # %cond.end.i.i
	movl	%r8d, 72(%r14)
	addl	849056(%r13), %r8d
	movl	%r8d, 84(%r14)
	subl	849056(%r13), %edi
	addl	304(%rsi), %ecx
	cmpl	%edi, %ecx
	cmovlel	%edi, %ecx
	cmpl	$51, %ecx
	cmovll	%ecx, %edx
	testl	%ecx, %ecx
	js	.LBB8_10
# %bb.9:                                # %cond.false.1.i.i
	movl	%edx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %edx
.LBB8_10:                               # %set_chroma_qp.exit.i
	movq	%r10, 56(%rsp)                  # 8-byte Spill
	movl	%edx, 76(%r14)
	addl	849056(%r13), %edx
	movl	%edx, 88(%r14)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB8_12
# %bb.11:                               # %land.rhs.i
	xorl	%ecx, %ecx
	cmpl	$1, 849092(%r13)
	sete	%cl
.LBB8_12:                               # %update_qp.exit
	movl	%ecx, 92(%r14)
	movl	$2, 8(%rsp)
	movq	312(%rbx), %r12
	movq	8(%r13), %rcx
	movl	12(%rcx), %eax
	testl	%eax, %eax
	je	.LBB8_14
# %bb.13:                               # %lor.lhs.false
	movq	(%r12), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB8_15
.LBB8_14:                               # %if.then24
	movq	linfo_ue@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movl	12(%rcx), %eax
.LBB8_15:                               # %if.end25
	cmpl	$1, %eax
	jne	.LBB8_35
# %bb.16:                               # %if.then30
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	testl	%r15d, %r15d
	sete	%al
	cmpl	$0, 128(%rbx)
	je	.LBB8_23
# %bb.17:                               # %if.then30
	orb	%bpl, %al
	je	.LBB8_23
# %bb.18:                               # %if.then38
	movl	$388, %eax                      # imm = 0x184
	cmpl	$0, 404(%r14)
	jne	.LBB8_21
# %bb.19:                               # %if.else.i
	movl	$392, %eax                      # imm = 0x188
	cmpl	$0, 408(%r14)
	je	.LBB8_20
.LBB8_21:                               # %if.end.sink.split.i
	movq	848888(%r13), %rcx
	movslq	(%r14,%rax), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	movl	384(%rcx,%rax), %eax
.LBB8_22:                               # %field_flag_inference.exit
	movl	%eax, 384(%r14)
.LBB8_23:                               # %if.end39
	movq	%r14, %rdi
	callq	CheckAvailabilityOfNeighborsCABAC@PLT
	movq	read_skip_flag_CABAC_p_slice@GOTPCREL(%rip), %rax
	movq	%rax, 48(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	12(%rsp), %eax
	movw	%ax, 152(%r14)
	testl	%eax, %eax
	sete	374(%r14)
	movq	(%r12), %rcx
	cmpl	$0, 24(%rcx)
	jne	.LBB8_25
# %bb.24:                               # %if.then48
	movb	$0, 110(%r14)
.LBB8_25:                               # %if.end50
	cmpl	$0, 128(%rbx)
	movq	64(%rsp), %rcx                  # 8-byte Reload
	je	.LBB8_32
# %bb.26:                               # %if.then53
	testl	%r15d, %r15d
	jne	.LBB8_29
# %bb.27:                               # %if.then57
	testl	%eax, %eax
	jne	.LBB8_30
# %bb.28:                               # %if.then83
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	check_next_mb_and_get_field_mode_CABAC_p_slice@PLT
	jmp	.LBB8_31
.LBB8_35:                               # %if.else115
	movl	120(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB8_36
# %bb.37:                               # %if.end123
	testl	%eax, %eax
	je	.LBB8_38
.LBB8_48:                               # %if.else167
	decl	%eax
	movl	%eax, 120(%rbx)
	movw	$0, 152(%r14)
	movb	$0, 110(%r14)
	movb	$1, 374(%r14)
	cmpl	$0, 128(%rbx)
	je	.LBB8_59
# %bb.49:                               # %if.then175
	movl	120(%rbx), %eax
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB8_50
# %bb.51:                               # %if.else191
	testl	%eax, %eax
	setle	%al
	orb	%r15b, %al
	jne	.LBB8_59
# %bb.52:                               # %if.then199
	movq	56(%rsp), %rbp                  # 8-byte Reload
	leaq	-2(%rbp), %r12
	movl	%r12d, %edi
	movq	%r14, %rsi
	callq	mb_is_available@PLT
	movl	848996(%r13), %ecx
	addl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB8_56
# %bb.53:                               # %land.lhs.true203
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	je	.LBB8_56
# %bb.54:                               # %if.then206
	movq	848888(%r13), %rax
	imulq	$480, %r12, %rcx                # imm = 0x1E0
	jmp	.LBB8_55
.LBB8_36:                               # %if.then118
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	12(%rsp), %eax
	movl	%eax, 120(%rbx)
	testl	%eax, %eax
	jne	.LBB8_48
.LBB8_38:                               # %if.then127
	testl	%r15d, %r15d
	sete	%al
	cmpl	$0, 128(%rbx)
	je	.LBB8_41
# %bb.39:                               # %if.then127
	orb	%bpl, %al
	je	.LBB8_41
# %bb.40:                               # %if.then139
	movl	$1, 20(%rsp)
	movq	(%r12), %rsi
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movl	%eax, 384(%r14)
.LBB8_41:                               # %if.end144
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	164(%rbx), %eax
	testl	%eax, %eax
	je	.LBB8_44
# %bb.42:                               # %if.end144
	cmpl	$3, %eax
	jne	.LBB8_43
.LBB8_44:                               # %if.then153
	movl	12(%rsp), %eax
	incl	%eax
	movl	%eax, 12(%rsp)
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB8_47
.LBB8_46:                               # %if.then162
	movb	$0, 110(%r14)
.LBB8_47:                               # %if.end164
	decl	120(%rbx)
	movb	$0, 374(%r14)
	jmp	.LBB8_59
.LBB8_29:                               # %if.else63
	testl	%eax, %eax
	sete	%al
	cmpb	$0, 374(%rcx)
	sete	%cl
	orb	%al, %cl
	jne	.LBB8_31
.LBB8_30:                               # %if.then75
	movq	readFieldModeInfo_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 48(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	12(%rsp), %eax
	movl	%eax, 384(%r14)
.LBB8_31:                               # %if.end85
	movl	384(%r14), %eax
	testl	%eax, %eax
	leal	2(%r15,%r15), %ecx
	cmovel	%eax, %ecx
	movw	%cx, 114(%r14)
	movq	%r14, %rdi
	callq	CheckAvailabilityOfNeighborsCABAC@PLT
	movzwl	152(%r14), %eax
.LBB8_32:                               # %if.end96
	testw	%ax, %ax
	je	.LBB8_60
# %bb.33:                               # %if.then101
	movq	readMB_typeInfo_CABAC_p_slice@GOTPCREL(%rip), %rax
	movq	%rax, 48(%rsp)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movzwl	12(%rsp), %eax
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB8_60
# %bb.34:                               # %if.then111
	movb	$0, 110(%r14)
	jmp	.LBB8_60
.LBB8_50:                               # %if.then183
	movl	$1, 20(%rsp)
	movq	(%r12), %rsi
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movq	(%r12), %rax
	decl	8(%rax)
	movl	12(%rsp), %eax
	movl	%eax, 384(%r14)
	jmp	.LBB8_59
.LBB8_43:                               # %if.end144.if.end155_crit_edge
	movl	12(%rsp), %eax
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB8_47
	jmp	.LBB8_46
.LBB8_56:                               # %if.else213
	movl	%ebp, %edi
	subl	%ecx, %edi
	movq	%r14, %rsi
	callq	mb_is_available@PLT
	testl	%eax, %eax
	je	.LBB8_58
# %bb.57:                               # %if.then219
	movq	848888(%r13), %rax
	movl	848996(%r13), %ecx
	addl	%ecx, %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	imulq	$480, %rdx, %rcx                # imm = 0x1E0
.LBB8_55:                               # %if.end235
	movl	384(%rax,%rcx), %eax
	movl	%eax, 384(%r14)
	jmp	.LBB8_59
.LBB8_20:
	xorl	%eax, %eax
	jmp	.LBB8_22
.LBB8_58:                               # %if.else228
	movl	$0, 384(%r14)
.LBB8_59:                               # %if.end235
	movl	384(%r14), %eax
	testl	%eax, %eax
	leal	2(%r15,%r15), %ecx
	cmovel	%eax, %ecx
	movw	%cx, 114(%r14)
.LBB8_60:                               # %if.end247
	movzbl	384(%r14), %eax
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	184(%rcx), %rcx
	movq	56(%rsp), %r12                  # 8-byte Reload
	movb	%al, (%rcx,%r12)
	cmpl	$0, 384(%r14)
	movl	36(%r14), %eax
	je	.LBB8_64
# %bb.61:                               # %cond.true255
	testl	%r15d, %r15d
	je	.LBB8_63
# %bb.62:                               # %cond.true258
	addl	$-4, %eax
.LBB8_63:                               # %cond.false260
	sarl	%eax
.LBB8_64:                               # %cond.end267
	movl	%eax, 40(%r14)
	movq	13528(%rbx), %rax
	movswq	30(%r14), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	28(%r14), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	%r14, %rdi
	callq	*13456(%rbx)
	cmpl	$0, 128(%rbx)
	je	.LBB8_67
# %bb.65:                               # %if.then276
	cmpl	$0, 384(%r14)
	je	.LBB8_67
# %bb.66:                               # %if.then279
	movq	136(%rbx), %xmm0                # xmm0 = mem[0],zero
	paddd	%xmm0, %xmm0
	movq	%xmm0, 136(%rbx)
.LBB8_67:                               # %if.end285
	movl	$1, 424(%r14)
	movzwl	152(%r14), %eax
	cmpw	$8, %ax
	jne	.LBB8_95
# %bb.68:                               # %if.then290
	movl	$2, 8(%rsp)
	movq	312(%rbx), %r12
	movq	8(%r13), %rax
	cmpl	$0, 12(%rax)
	je	.LBB8_69
# %bb.70:                               # %lor.lhs.false300
	movq	(%r12), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB8_71
# %bb.72:                               # %lor.lhs.false300
	movq	readB8_typeInfo_CABAC_p_slice@GOTPCREL(%rip), %rax
	jmp	.LBB8_73
.LBB8_69:
	movq	linfo_ue@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	jmp	.LBB8_74
.LBB8_71:
	movq	linfo_ue@GOTPCREL(%rip), %rax
.LBB8_73:                               # %lor.lhs.false300
	leaq	32(,%rcx,8), %rcx
.LBB8_74:                               # %if.end308
	movq	%rax, 8(%rsp,%rcx)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	12(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 364(%r14)
	movzbl	(%rax), %eax
	movb	%al, 368(%r14)
	testb	%cl, %cl
	je	.LBB8_75
# %bb.78:                               # %lor.end
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB8_79
.LBB8_75:                               # %land.lhs.true319
	movq	16(%r13), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB8_76
# %bb.77:                               # %lor.end.thread
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB8_79
.LBB8_76:
	xorl	%eax, %eax
.LBB8_79:                               # %lor.end.thread638
	movl	%eax, 424(%r14)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	12(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 365(%r14)
	movzbl	(%rax), %eax
	movb	%al, 369(%r14)
	testb	%cl, %cl
	je	.LBB8_81
# %bb.80:                               # %lor.end.1
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB8_84
.LBB8_81:                               # %land.lhs.true319.1
	movq	16(%r13), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB8_82
# %bb.83:                               # %lor.end.thread.1
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB8_84
.LBB8_82:
	xorl	%eax, %eax
.LBB8_84:                               # %lor.end.thread638.1
	movl	%eax, 424(%r14)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	12(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 366(%r14)
	movzbl	(%rax), %eax
	movb	%al, 370(%r14)
	testb	%cl, %cl
	je	.LBB8_86
# %bb.85:                               # %lor.end.2
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB8_89
.LBB8_86:                               # %land.lhs.true319.2
	movq	16(%r13), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB8_87
# %bb.88:                               # %lor.end.thread.2
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB8_89
.LBB8_87:
	xorl	%eax, %eax
.LBB8_89:                               # %lor.end.thread638.2
	movl	%eax, 424(%r14)
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	12(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 367(%r14)
	movzbl	(%rax), %eax
	movb	%al, 371(%r14)
	testb	%cl, %cl
	je	.LBB8_91
# %bb.90:                               # %lor.end.3
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	movq	56(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB8_94
.LBB8_91:                               # %land.lhs.true319.3
	movq	16(%r13), %rax
	cmpl	$0, 3144(%rax)
	movq	56(%rsp), %r12                  # 8-byte Reload
	je	.LBB8_92
# %bb.93:                               # %lor.end.thread.3
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB8_94
.LBB8_92:
	xorl	%eax, %eax
.LBB8_94:                               # %lor.end.thread638.3
	movl	%eax, 424(%r14)
	movq	%r14, %rdi
	callq	init_macroblock
	movq	%r14, %rdi
	callq	*13440(%rbx)
	movzwl	152(%r14), %eax
.LBB8_95:                               # %if.end330
	cmpw	$9, %ax
	jne	.LBB8_103
# %bb.96:                               # %land.lhs.true335
	cmpl	$0, 60(%rbx)
	je	.LBB8_103
# %bb.97:                               # %if.then337
	movl	$0, 8(%rsp)
	movq	312(%rbx), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	8(%r13), %rax
	cmpl	$0, 12(%rax)
	je	.LBB8_99
# %bb.98:                               # %lor.lhs.false348
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB8_100
.LBB8_99:                               # %if.then352
	movl	$1, 20(%rsp)
	movq	(%rdx), %rsi
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	jne	.LBB8_102
	jmp	.LBB8_104
.LBB8_103:                              # %if.else367
	movl	$0, 420(%r14)
	jmp	.LBB8_104
.LBB8_100:                              # %if.else356
	leaq	8(%rsp), %rsi
	movq	%r14, %rdi
	callq	*40(%rdx)
	movl	12(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	je	.LBB8_104
.LBB8_102:                              # %if.then363
	movw	$13, 152(%r14)
	movabsq	$-4076008179, %rax              # imm = 0xFFFFFFFF0D0D0D0D
	movq	%rax, 364(%r14)
.LBB8_104:                              # %if.end369
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB8_107
# %bb.105:                              # %if.then372
	cmpl	$0, 96(%r14)
	je	.LBB8_106
.LBB8_107:                              # %if.end379
	cmpw	$8, 152(%r14)
	je	.LBB8_111
.LBB8_108:                              # %if.end385
	movq	%r14, %rdi
	callq	init_macroblock
	movzwl	152(%r14), %eax
	cmpl	$14, %eax
	je	.LBB8_117
# %bb.109:                              # %if.end385
	testl	%eax, %eax
	jne	.LBB8_111
# %bb.110:                              # %if.then390
	movq	%r14, %rdi
	callq	skip_macroblock
	jmp	.LBB8_121
.LBB8_106:                              # %if.then375
	movq	13544(%rbx), %rax
	movb	$0, (%rax,%r12)
	cmpw	$8, 152(%r14)
	jne	.LBB8_108
.LBB8_111:                              # %if.then396
	movl	96(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB8_113
# %bb.112:                              # %if.then400
	movq	%r14, %rdi
	callq	read_ipred_modes
	movl	96(%r14), %eax
.LBB8_113:                              # %if.end401
	testl	%eax, %eax
	jne	.LBB8_116
# %bb.114:                              # %land.lhs.true405
	movzwl	152(%r14), %eax
	testl	$65527, %eax                    # imm = 0xFFF7
	je	.LBB8_116
# %bb.115:                              # %if.then415
	movq	%r14, %rdi
	callq	*13440(%rbx)
.LBB8_116:                              # %if.end417
	movq	%r14, %rdi
	callq	*13408(%rbx)
.LBB8_121:                              # %if.end431
	addq	$88, %rsp
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
.LBB8_117:                              # %if.else418
	.cfi_def_cfa_offset 144
	cmpl	$0, 200(%rbx)
	je	.LBB8_120
# %bb.118:                              # %land.lhs.true421
	cmpl	$0, 1232(%rbx)
	je	.LBB8_120
# %bb.119:                              # %if.then423
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	callq	concealIPCMcoeffs
	jmp	.LBB8_121
.LBB8_120:                              # %if.else424
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	movzbl	assignSE2partition+7(,%rax,4), %eax
	leaq	(%rax,%rax,2), %rsi
	shll	$4, %esi
	addq	312(%rbx), %rsi
	movq	%rbx, %rdi
	callq	read_IPCM_coeffs_from_NAL
	jmp	.LBB8_121
.Lfunc_end8:
	.size	read_one_macroblock_p_slice, .Lfunc_end8-read_one_macroblock_p_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function decode_one_component_p_slice
	.type	decode_one_component_p_slice,@function
decode_one_component_p_slice:           # @decode_one_component_p_slice
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$9, 372(%rdi)
	movzwl	152(%rdi), %eax
	cmpq	$14, %rax
	ja	.LBB9_10
# %bb.1:                                # %entry
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_6:                                # %if.then27
	callq	mb_pred_skip@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_10:                               # %if.else50
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_3:                                # %if.then6
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_intra16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_7:                                # %if.then34
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_5:                                # %if.then20
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %if.then
	.cfi_def_cfa_offset 16
	callq	mb_pred_ipcm@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_8:                                # %if.then41
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_9:                                # %if.then48
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter8x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_4:                                # %if.then13
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra4x4@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	decode_one_component_p_slice, .Lfunc_end9-decode_one_component_p_slice
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI9_0:
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_10
	.quad	.LBB9_10
	.quad	.LBB9_10
	.quad	.LBB9_10
	.quad	.LBB9_4
	.quad	.LBB9_3
	.quad	.LBB9_10
	.quad	.LBB9_10
	.quad	.LBB9_5
	.quad	.LBB9_2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function decode_one_component_sp_slice
	.type	decode_one_component_sp_slice,@function
decode_one_component_sp_slice:          # @decode_one_component_sp_slice
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$9, 372(%rdi)
	movzwl	152(%rdi), %eax
	cmpq	$14, %rax
	ja	.LBB10_10
# %bb.1:                                # %entry
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_6:                               # %if.then27
	movq	%rcx, %rdx
	callq	mb_pred_sp_skip@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_10:                              # %if.else50
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_3:                               # %if.then6
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_intra16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_7:                               # %if.then34
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_5:                               # %if.then20
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %if.then
	.cfi_def_cfa_offset 16
	callq	mb_pred_ipcm@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_8:                               # %if.then41
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_9:                               # %if.then48
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter8x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_4:                               # %if.then13
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra4x4@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	decode_one_component_sp_slice, .Lfunc_end10-decode_one_component_sp_slice
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI10_0:
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_4
	.quad	.LBB10_3
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_5
	.quad	.LBB10_2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function interpret_mb_mode_B
	.type	interpret_mb_mode_B,@function
interpret_mb_mode_B:                    # @interpret_mb_mode_B
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	152(%rdi), %ecx
	cmpl	$23, %ecx
	je	.LBB11_3
# %bb.1:                                # %entry
	testl	%ecx, %ecx
	jne	.LBB11_4
# %bb.2:                                # %if.then
	movabsq	$144680345642467328, %rax       # imm = 0x202020200000000
	movq	%rax, 364(%rdi)
	xorl	%edx, %edx
	movw	%dx, 152(%rdi)
	retq
.LBB11_3:                               # %if.then6
	movl	$1, 96(%rdi)
	movabsq	$-4109694197, %rax              # imm = 0xFFFFFFFF0B0B0B0B
	movq	%rax, 364(%rdi)
	movw	$9, %dx
	movw	%dx, 152(%rdi)
	retq
.LBB11_4:                               # %if.else11
	movswq	%cx, %rsi
	movswl	%cx, %eax
	leal	-24(%rsi), %edx
	cmpw	$23, %dx
	ja	.LBB11_6
# %bb.5:                                # %if.then18
	movl	$1, 96(%rdi)
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	%rcx, 364(%rdi)
	leal	-24(%rax), %ecx
	shrl	$2, %ecx
	movswl	interpret_mb_mode_I.ICBPTAB(%rcx,%rcx), %ecx
	movl	%ecx, 284(%rdi)
	andl	$3, %eax
	movl	%eax, 360(%rdi)
	movw	$10, %dx
	movw	%dx, 152(%rdi)
	retq
.LBB11_6:                               # %if.else28
	movw	$8, %dx
	cmpw	$22, %cx
	jne	.LBB11_7
# %bb.14:                               # %if.end104
	movw	%dx, 152(%rdi)
	retq
.LBB11_7:                               # %if.else33
	cmpw	$3, %cx
	jg	.LBB11_9
# %bb.8:                                # %if.then37
	leaq	368(%rdi), %rax
	movl	$16843009, 364(%rdi)            # imm = 0x1010101
	movzbl	interpret_mb_mode_B.offset2pdir16x16(%rsi,%rsi), %ecx
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
	movl	%ecx, (%rax)
	movw	$1, %dx
	movw	%dx, 152(%rdi)
	retq
.LBB11_9:                               # %if.else45
	cmpw	$48, %cx
	jne	.LBB11_11
# %bb.10:                               # %if.then49
	movl	$1, 96(%rdi)
	movl	$-1, 368(%rdi)
	movl	$-1, 284(%rdi)
	movq	$0, 360(%rdi)
	movw	$14, %dx
	movw	%dx, 152(%rdi)
	retq
.LBB11_11:                              # %if.else57
	movslq	%eax, %rcx
	testb	$1, %al
	jne	.LBB11_13
# %bb.12:                               # %if.then62
	movl	$33686018, 364(%rdi)            # imm = 0x2020202
	movzbl	interpret_mb_mode_B.offset2pdir16x8(,%rcx,4), %eax
	movb	%al, 368(%rdi)
	movb	%al, 369(%rdi)
	movzbl	interpret_mb_mode_B.offset2pdir16x8+2(,%rcx,4), %eax
	movb	%al, 370(%rdi)
	movb	%al, 371(%rdi)
	movw	$2, %dx
	movw	%dx, 152(%rdi)
	retq
.LBB11_13:                              # %if.else78
	movl	$50529027, 364(%rdi)            # imm = 0x3030303
	movzbl	interpret_mb_mode_B.offset2pdir8x16(,%rcx,4), %eax
	movb	%al, 368(%rdi)
	movzbl	interpret_mb_mode_B.offset2pdir8x16+2(,%rcx,4), %ecx
	movb	%cl, 369(%rdi)
	movb	%al, 370(%rdi)
	movb	%cl, 371(%rdi)
	movw	$3, %dx
	movw	%dx, 152(%rdi)
	retq
.Lfunc_end11:
	.size	interpret_mb_mode_B, .Lfunc_end11-interpret_mb_mode_B
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_motion_info_from_NAL_b_slice
	.type	read_motion_info_from_NAL_b_slice,@function
read_motion_info_from_NAL_b_slice:      # @read_motion_info_from_NAL_b_slice
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	8(%rdi), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	13520(%r12), %r13
	movl	152(%rdi), %eax
	movl	$4, %ecx
	movswq	114(%rdi), %rdx
	movq	264(%r12,%rdx,8), %r14
	movq	272(%r12,%rdx,8), %rbp
	cmpw	$8, %ax
	cmovnel	%eax, %ecx
	movswq	%cx, %rax
	movl	BLOCK_STEP(,%rax,8), %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	movl	BLOCK_STEP+4(,%rax,8), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	jne	.LBB12_2
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	callq	*13496(%r12)
.LBB12_2:                               # %if.end
	movl	$3, 40(%rsp)
	movq	312(%r12), %r15
	movl	136(%r12), %eax
	movq	$readRefPictureIdx_Null, 464(%rbx)
	cmpl	$2, %eax
	jl	.LBB12_8
# %bb.3:                                # %if.then.i
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB12_5
# %bb.4:                                # %lor.lhs.false.i
	movq	(%r15), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB12_6
.LBB12_5:                               # %if.then2.i
	movq	linfo_ue@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	cmpl	$2, %eax
	movl	$readRefPictureIdx_FLC, %ecx
	movl	$readRefPictureIdx_VLC, %eax
	cmoveq	%rcx, %rax
	jmp	.LBB12_7
.LBB12_6:                               # %if.else10.i
	movq	readRefFrame_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 80(%rsp)
	movl	$readRefPictureIdx_VLC, %eax
.LBB12_7:                               # %if.end16.sink.split.i
	movq	%rax, 464(%rbx)
.LBB12_8:                               # %prepareListforRefIdx.exit
	movslq	36(%rbx), %rcx
	shlq	$3, %rcx
	addq	152(%r13), %rcx
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	40(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	xorl	%r8d, %r8d
	movl	16(%rsp), %r9d                  # 4-byte Reload
	callq	readMBRefPictureIdx
	movl	140(%r12), %eax
	movq	$readRefPictureIdx_Null, 464(%rbx)
	cmpl	$2, %eax
	jl	.LBB12_14
# %bb.9:                                # %if.then.i147
	movq	8(%rbx), %rcx
	movq	8(%rcx), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB12_11
# %bb.10:                               # %lor.lhs.false.i152
	movq	(%r15), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB12_12
.LBB12_11:                              # %if.then2.i155
	movq	linfo_ue@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	cmpl	$2, %eax
	movl	$readRefPictureIdx_FLC, %ecx
	movl	$readRefPictureIdx_VLC, %eax
	cmoveq	%rcx, %rax
	jmp	.LBB12_13
.LBB12_12:                              # %if.else10.i161
	movq	readRefFrame_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 80(%rsp)
	movl	$readRefPictureIdx_VLC, %eax
.LBB12_13:                              # %if.end16.sink.split.i159
	movq	%rax, 464(%rbx)
.LBB12_14:                              # %prepareListforRefIdx.exit163
	movslq	36(%rbx), %rcx
	shlq	$3, %rcx
	addq	152(%r13), %rcx
	movl	20(%rsp), %eax                  # 4-byte Reload
	movl	%eax, (%rsp)
	leaq	40(%rsp), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	$1, %r8d
	movl	16(%rsp), %r9d                  # 4-byte Reload
	callq	readMBRefPictureIdx
	movl	$5, 40(%rsp)
	movq	312(%r12), %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rax
	cmpl	$0, 12(%rax)
	je	.LBB12_15
# %bb.16:                               # %lor.lhs.false
	movq	(%rdx), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB12_17
# %bb.18:                               # %lor.lhs.false
	movq	read_MVD_CABAC@GOTPCREL(%rip), %rax
	jmp	.LBB12_19
.LBB12_15:
	movq	linfo_se@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	jmp	.LBB12_20
.LBB12_17:
	movq	linfo_se@GOTPCREL(%rip), %rax
.LBB12_19:                              # %lor.lhs.false
	leaq	32(,%rcx,8), %rcx
.LBB12_20:                              # %for.body.lr.ph
	movq	%rax, 40(%rsp,%rcx)
	leaq	40(%rsp), %rdi
	movq	%rdx, %rsi
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movl	20(%rsp), %r12d                 # 4-byte Reload
	movl	%r12d, %r8d
	movl	16(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %r9d
	callq	readMBMotionVectors
	leaq	40(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rbx, %rdx
	movl	$1, %ecx
	movl	%r12d, %r8d
	movl	%r15d, %r9d
	callq	readMBMotionVectors
	movslq	36(%rbx), %rax
	jmp	.LBB12_21
	.p2align	4, 0x90
.LBB12_29:                              # %for.inc89
                                        #   in Loop: Header=BB12_21 Depth=1
	movslq	36(%rbx), %rcx
	leaq	1(%rax), %rdx
	addq	$3, %rcx
	cmpq	%rcx, %rax
	movq	%rdx, %rax
	jge	.LBB12_30
.LBB12_21:                              # %for.body55.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_22 Depth 2
	movslq	32(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	shlq	$5, %rcx
	orq	$25, %rcx
	jmp	.LBB12_22
	.p2align	4, 0x90
.LBB12_27:                              # %cond.true81
                                        #   in Loop: Header=BB12_22 Depth=2
	movq	(%rbp,%rdi,8), %rdi
.LBB12_28:                              # %cond.end85
                                        #   in Loop: Header=BB12_22 Depth=2
	movq	%rdi, -17(%rsi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$3, %rsi
	incq	%rdx
	addq	$32, %rcx
	cmpq	%rsi, %rdx
	jge	.LBB12_29
.LBB12_22:                              # %for.body55
                                        #   Parent Loop BB12_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%r13), %rsi
	movq	(%rsi,%rax,8), %rsi
	movsbq	-1(%rsi,%rcx), %rdi
	testq	%rdi, %rdi
	js	.LBB12_23
# %bb.24:                               # %cond.true68
                                        #   in Loop: Header=BB12_22 Depth=2
	movq	(%r14,%rdi,8), %rdi
	movq	%rdi, -25(%rsi,%rcx)
	movsbq	(%rsi,%rcx), %rdi
	testq	%rdi, %rdi
	jns	.LBB12_27
	jmp	.LBB12_26
	.p2align	4, 0x90
.LBB12_23:                              #   in Loop: Header=BB12_22 Depth=2
	xorl	%edi, %edi
	movq	%rdi, -25(%rsi,%rcx)
	movsbq	(%rsi,%rcx), %rdi
	testq	%rdi, %rdi
	jns	.LBB12_27
.LBB12_26:                              #   in Loop: Header=BB12_22 Depth=2
	xorl	%edi, %edi
	jmp	.LBB12_28
.LBB12_30:                              # %for.end91
	addq	$88, %rsp
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
	.size	read_motion_info_from_NAL_b_slice, .Lfunc_end12-read_motion_info_from_NAL_b_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_one_macroblock_b_slice
	.type	read_one_macroblock_b_slice,@function
read_one_macroblock_b_slice:            # @read_one_macroblock_b_slice
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
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	8(%rdi), %r13
	movslq	24(%rdi), %r10
	cmpl	$0, 128(%rbx)
	sete	%al
	movl	%r10d, %r15d
	andl	$1, %r15d
	sete	%cl
	orb	%al, %cl
	je	.LBB13_1
# %bb.2:                                # %if.end8
	testl	%r15d, %r15d
	jne	.LBB13_4
# %bb.3:
	xorl	%ebp, %ebp
	xorl	%r11d, %r11d
	xorl	%eax, %eax
	jmp	.LBB13_6
.LBB13_1:                               # %if.end8.thread
	movq	848888(%r13), %rax
	imulq	$480, %r10, %rcx                # imm = 0x1E0
	leaq	(%rax,%rcx), %r11
	addq	$-480, %r11                     # imm = 0xFE20
	movsbl	-106(%rax,%rcx), %ebp
	jmp	.LBB13_5
.LBB13_4:                               # %if.end8.cond.false_crit_edge
	movq	848888(%r13), %rax
	xorl	%ebp, %ebp
	xorl	%r11d, %r11d
.LBB13_5:                               # %cond.false
	imulq	$480, %r10, %rcx                # imm = 0x1E0
	movl	-96(%rax,%rcx), %eax
.LBB13_6:                               # %cond.end
	movslq	200(%rbx), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	13520(%rbx), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 384(%r14)
	movl	148(%rbx), %ecx
	movl	%ecx, 68(%r14)
	movl	849052(%r13), %eax
	addl	%ecx, %eax
	movl	%eax, 80(%r14)
	movq	13520(%rbx), %rsi
	xorl	%edx, %edx
	subl	849056(%r13), %edx
	xorl	%edi, %edi
	movl	300(%rsi), %r9d
	addl	%ecx, %r9d
	cmpl	%edx, %r9d
	cmovlel	%edx, %r9d
	cmpl	$51, %r9d
	movl	$51, %edx
	movl	$51, %r8d
	cmovll	%r9d, %r8d
	testl	%r9d, %r9d
	js	.LBB13_8
# %bb.7:                                # %cond.false.i.i
	movl	%r8d, %r8d
	movzbl	QP_SCALE_CR(%r8), %r8d
.LBB13_8:                               # %cond.end.i.i
	movl	%r8d, 72(%r14)
	addl	849056(%r13), %r8d
	movl	%r8d, 84(%r14)
	subl	849056(%r13), %edi
	addl	304(%rsi), %ecx
	cmpl	%edi, %ecx
	cmovlel	%edi, %ecx
	cmpl	$51, %ecx
	cmovll	%ecx, %edx
	testl	%ecx, %ecx
	js	.LBB13_10
# %bb.9:                                # %cond.false.1.i.i
	movl	%edx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %edx
.LBB13_10:                              # %set_chroma_qp.exit.i
	movq	%r10, 48(%rsp)                  # 8-byte Spill
	movl	%edx, 76(%r14)
	addl	849056(%r13), %edx
	movl	%edx, 88(%r14)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	jne	.LBB13_12
# %bb.11:                               # %land.rhs.i
	xorl	%ecx, %ecx
	cmpl	$1, 849092(%r13)
	sete	%cl
.LBB13_12:                              # %update_qp.exit
	movl	%ecx, 92(%r14)
	movl	$2, (%rsp)
	movq	312(%rbx), %r12
	movq	8(%r13), %rcx
	movl	12(%rcx), %eax
	testl	%eax, %eax
	je	.LBB13_14
# %bb.13:                               # %lor.lhs.false
	movq	(%r12), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB13_15
.LBB13_14:                              # %if.then22
	movq	linfo_ue@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rsp)
	movl	12(%rcx), %eax
.LBB13_15:                              # %if.end23
	cmpl	$1, %eax
	jne	.LBB13_38
# %bb.16:                               # %if.then28
	movq	%rbp, %rcx
	movq	%r11, %rbp
	testl	%r15d, %r15d
	sete	%al
	testl	%ecx, %ecx
	setne	%cl
	cmpl	$0, 128(%rbx)
	je	.LBB13_23
# %bb.17:                               # %if.then28
	orb	%cl, %al
	je	.LBB13_23
# %bb.18:                               # %if.then36
	movl	$388, %eax                      # imm = 0x184
	cmpl	$0, 404(%r14)
	jne	.LBB13_21
# %bb.19:                               # %if.else.i
	movl	$392, %eax                      # imm = 0x188
	cmpl	$0, 408(%r14)
	je	.LBB13_20
.LBB13_21:                              # %if.end.sink.split.i
	movq	848888(%r13), %rcx
	movslq	(%r14,%rax), %rax
	imulq	$480, %rax, %rax                # imm = 0x1E0
	movl	384(%rcx,%rax), %eax
.LBB13_22:                              # %field_flag_inference.exit
	movl	%eax, 384(%r14)
.LBB13_23:                              # %if.end37
	movq	%r14, %rdi
	callq	CheckAvailabilityOfNeighborsCABAC@PLT
	movq	read_skip_flag_CABAC_b_slice@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	4(%rsp), %eax
	movw	%ax, 152(%r14)
	testl	%eax, %eax
	sete	374(%r14)
	movl	8(%rsp), %ecx
	movl	%ecx, 284(%r14)
	movq	(%r12), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB13_24
# %bb.25:                               # %if.end48
	orl	%ecx, %eax
	je	.LBB13_26
.LBB13_27:                              # %if.end57
	cmpl	$0, 128(%rbx)
	jne	.LBB13_28
.LBB13_35:                              # %if.end103
	cmpw	$0, 152(%r14)
	jne	.LBB13_36
	jmp	.LBB13_63
.LBB13_38:                              # %if.else122
	movl	120(%rbx), %eax
	cmpl	$-1, %eax
	je	.LBB13_39
# %bb.40:                               # %if.end131
	testl	%eax, %eax
	je	.LBB13_41
.LBB13_51:                              # %if.else175
	decl	%eax
	movl	%eax, 120(%rbx)
	movw	$0, 152(%r14)
	movb	$0, 110(%r14)
	movb	$1, 374(%r14)
	cmpl	$0, 128(%rbx)
	je	.LBB13_62
# %bb.52:                               # %if.then183
	movl	120(%rbx), %eax
	movl	%eax, %ecx
	orl	%r15d, %ecx
	je	.LBB13_53
# %bb.54:                               # %if.else199
	testl	%eax, %eax
	setle	%al
	orb	%r15b, %al
	jne	.LBB13_62
# %bb.55:                               # %if.then207
	movq	48(%rsp), %rbp                  # 8-byte Reload
	leaq	-2(%rbp), %r12
	movl	%r12d, %edi
	movq	%r14, %rsi
	callq	mb_is_available@PLT
	movl	848996(%r13), %ecx
	addl	%ecx, %ecx
	testl	%eax, %eax
	je	.LBB13_59
# %bb.56:                               # %land.lhs.true211
	movl	%ebp, %eax
	xorl	%edx, %edx
	divl	%ecx
	testl	%edx, %edx
	je	.LBB13_59
# %bb.57:                               # %if.then214
	movq	848888(%r13), %rax
	imulq	$480, %r12, %rcx                # imm = 0x1E0
	jmp	.LBB13_58
.LBB13_24:                              # %if.then46
	movb	$0, 110(%r14)
	orl	%ecx, %eax
	jne	.LBB13_27
.LBB13_26:                              # %if.then56
	movl	$0, 120(%rbx)
	cmpl	$0, 128(%rbx)
	je	.LBB13_35
.LBB13_28:                              # %if.then60
	testl	%r15d, %r15d
	jne	.LBB13_31
# %bb.29:                               # %if.then64
	cmpb	$0, 374(%r14)
	je	.LBB13_33
# %bb.30:                               # %if.then90
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	check_next_mb_and_get_field_mode_CABAC_b_slice@PLT
	jmp	.LBB13_34
.LBB13_39:                              # %if.then126
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	4(%rsp), %eax
	movl	%eax, 120(%rbx)
	testl	%eax, %eax
	jne	.LBB13_51
.LBB13_41:                              # %if.then135
	testl	%r15d, %r15d
	sete	%al
	testl	%ebp, %ebp
	setne	%cl
	cmpl	$0, 128(%rbx)
	je	.LBB13_44
# %bb.42:                               # %if.then135
	orb	%cl, %al
	je	.LBB13_44
# %bb.43:                               # %if.then147
	movl	$1, 12(%rsp)
	movq	(%r12), %rsi
	movq	%rsp, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	4(%rsp), %eax
	movl	%eax, 384(%r14)
.LBB13_44:                              # %if.end152
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	164(%rbx), %eax
	testl	%eax, %eax
	je	.LBB13_47
# %bb.45:                               # %if.end152
	cmpl	$3, %eax
	jne	.LBB13_46
.LBB13_47:                              # %if.then161
	movl	4(%rsp), %eax
	incl	%eax
	movl	%eax, 4(%rsp)
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB13_50
.LBB13_49:                              # %if.then170
	movb	$0, 110(%r14)
.LBB13_50:                              # %if.end172
	decl	120(%rbx)
	movb	$0, 374(%r14)
	jmp	.LBB13_62
.LBB13_31:                              # %if.else70
	cmpb	$0, 374(%rbp)
	je	.LBB13_34
# %bb.32:                               # %if.end78
	cmpb	$0, 374(%r14)
	jne	.LBB13_34
.LBB13_33:                              # %if.then82
	movq	readFieldModeInfo_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	4(%rsp), %eax
	movl	%eax, 384(%r14)
.LBB13_34:                              # %if.end92
	movl	384(%r14), %eax
	testl	%eax, %eax
	leal	2(%r15,%r15), %ecx
	cmovel	%eax, %ecx
	movw	%cx, 114(%r14)
	movq	%r14, %rdi
	callq	CheckAvailabilityOfNeighborsCABAC@PLT
	cmpw	$0, 152(%r14)
	je	.LBB13_63
.LBB13_36:                              # %if.then108
	movq	readMB_typeInfo_CABAC_b_slice@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movzwl	4(%rsp), %eax
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB13_63
# %bb.37:                               # %if.then118
	movb	$0, 110(%r14)
	jmp	.LBB13_63
.LBB13_53:                              # %if.then191
	movl	$1, 12(%rsp)
	movq	(%r12), %rsi
	movq	%rsp, %rdi
	callq	readSyntaxElement_FLC@PLT
	movq	(%r12), %rax
	decl	8(%rax)
	movl	4(%rsp), %eax
	movl	%eax, 384(%r14)
	jmp	.LBB13_62
.LBB13_46:                              # %if.end152.if.end163_crit_edge
	movl	4(%rsp), %eax
	movw	%ax, 152(%r14)
	movq	(%r12), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB13_50
	jmp	.LBB13_49
.LBB13_59:                              # %if.else221
	movl	%ebp, %edi
	subl	%ecx, %edi
	movq	%r14, %rsi
	callq	mb_is_available@PLT
	testl	%eax, %eax
	je	.LBB13_61
# %bb.60:                               # %if.then227
	movq	848888(%r13), %rax
	movl	848996(%r13), %ecx
	addl	%ecx, %ecx
	movl	%ebp, %edx
	subl	%ecx, %edx
	imulq	$480, %rdx, %rcx                # imm = 0x1E0
.LBB13_58:                              # %if.end243
	movl	384(%rax,%rcx), %eax
	movl	%eax, 384(%r14)
	jmp	.LBB13_62
.LBB13_20:
	xorl	%eax, %eax
	jmp	.LBB13_22
.LBB13_61:                              # %if.else236
	movl	$0, 384(%r14)
.LBB13_62:                              # %if.end243
	movl	384(%r14), %eax
	testl	%eax, %eax
	leal	2(%r15,%r15), %ecx
	cmovel	%eax, %ecx
	movw	%cx, 114(%r14)
.LBB13_63:                              # %if.end255
	movzbl	384(%r14), %eax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	184(%rcx), %rcx
	movq	48(%rsp), %r12                  # 8-byte Reload
	movb	%al, (%rcx,%r12)
	cmpl	$0, 384(%r14)
	movl	36(%r14), %eax
	je	.LBB13_67
# %bb.64:                               # %cond.true263
	testl	%r15d, %r15d
	je	.LBB13_66
# %bb.65:                               # %cond.true266
	addl	$-4, %eax
.LBB13_66:                              # %cond.false268
	sarl	%eax
.LBB13_67:                              # %cond.end275
	movl	%eax, 40(%r14)
	movq	13528(%rbx), %rax
	movswq	30(%r14), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	28(%r14), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	%r14, %rdi
	callq	*13456(%rbx)
	cmpl	$0, 128(%rbx)
	je	.LBB13_70
# %bb.68:                               # %if.then284
	cmpl	$0, 384(%r14)
	je	.LBB13_70
# %bb.69:                               # %if.then287
	movq	136(%rbx), %xmm0                # xmm0 = mem[0],zero
	paddd	%xmm0, %xmm0
	movq	%xmm0, 136(%rbx)
.LBB13_70:                              # %if.end293
	movzwl	152(%r14), %eax
	testl	%eax, %eax
	je	.LBB13_99
# %bb.71:                               # %if.end293
	movl	$1, %ecx
	cmpl	$8, %eax
	jne	.LBB13_100
# %bb.72:                               # %if.then298
	movl	$1, 424(%r14)
	movl	$2, (%rsp)
	movq	16(%rbx), %rax
	movq	312(%rbx), %r12
	cmpl	$0, 12(%rax)
	je	.LBB13_73
# %bb.74:                               # %lor.lhs.false308
	movq	(%r12), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB13_75
# %bb.76:                               # %lor.lhs.false308
	movq	readB8_typeInfo_CABAC_b_slice@GOTPCREL(%rip), %rax
	jmp	.LBB13_77
.LBB13_99:                              # %land.rhs343
	movq	24(%rbx), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 3144(%rdx)
	setne	%cl
.LBB13_100:                             # %land.end349
	movl	%ecx, 424(%r14)
	cmpw	$9, %ax
	je	.LBB13_102
	jmp	.LBB13_109
.LBB13_73:
	movq	linfo_ue@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	jmp	.LBB13_78
.LBB13_75:
	movq	linfo_ue@GOTPCREL(%rip), %rax
.LBB13_77:                              # %lor.lhs.false308
	leaq	32(,%rcx,8), %rcx
.LBB13_78:                              # %if.end316
	movq	%rax, (%rsp,%rcx)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	4(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 364(%r14)
	movzbl	(%rax), %eax
	movb	%al, 368(%r14)
	testb	%cl, %cl
	je	.LBB13_79
# %bb.82:                               # %lor.end
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB13_83
.LBB13_79:                              # %land.lhs.true327
	movq	24(%rbx), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB13_80
# %bb.81:                               # %lor.end.thread
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB13_83
.LBB13_80:
	xorl	%eax, %eax
.LBB13_83:                              # %lor.end.thread686
	movl	%eax, 424(%r14)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	4(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 365(%r14)
	movzbl	(%rax), %eax
	movb	%al, 369(%r14)
	testb	%cl, %cl
	je	.LBB13_85
# %bb.84:                               # %lor.end.1
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB13_88
.LBB13_85:                              # %land.lhs.true327.1
	movq	24(%rbx), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB13_86
# %bb.87:                               # %lor.end.thread.1
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB13_88
.LBB13_86:
	xorl	%eax, %eax
.LBB13_88:                              # %lor.end.thread686.1
	movl	%eax, 424(%r14)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	4(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 366(%r14)
	movzbl	(%rax), %eax
	movb	%al, 370(%r14)
	testb	%cl, %cl
	je	.LBB13_90
# %bb.89:                               # %lor.end.2
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	jmp	.LBB13_93
.LBB13_90:                              # %land.lhs.true327.2
	movq	24(%rbx), %rax
	cmpl	$0, 3144(%rax)
	je	.LBB13_91
# %bb.92:                               # %lor.end.thread.2
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB13_93
.LBB13_91:
	xorl	%eax, %eax
.LBB13_93:                              # %lor.end.thread686.2
	movl	%eax, 424(%r14)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	*40(%r12)
	movslq	4(%rsp), %rax
	movq	(%r14), %rcx
	cmpl	$1, 164(%rcx)
	leaq	SetB8Mode.b_v2b8(%rax), %rcx
	leaq	SetB8Mode.b_v2pd(%rax), %rdx
	leaq	SetB8Mode.p_v2b8(%rax), %rsi
	cmoveq	%rcx, %rsi
	leaq	SetB8Mode.p_v2pd(%rax), %rax
	cmoveq	%rdx, %rax
	movzbl	(%rsi), %ecx
	movb	%cl, 367(%r14)
	movzbl	(%rax), %eax
	movb	%al, 371(%r14)
	testb	%cl, %cl
	je	.LBB13_95
# %bb.94:                               # %lor.end.3
	xorl	%eax, %eax
	cmpb	$4, %cl
	sete	%al
	andl	424(%r14), %eax
	movq	48(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB13_98
.LBB13_95:                              # %land.lhs.true327.3
	movq	24(%rbx), %rax
	cmpl	$0, 3144(%rax)
	movq	48(%rsp), %r12                  # 8-byte Reload
	je	.LBB13_96
# %bb.97:                               # %lor.end.thread.3
	movl	424(%r14), %eax
	andl	$1, %eax
	jmp	.LBB13_98
.LBB13_96:
	xorl	%eax, %eax
.LBB13_98:                              # %lor.end.thread686.3
	movl	%eax, 424(%r14)
	movq	%r14, %rdi
	callq	init_macroblock
	movq	%r14, %rdi
	callq	*13440(%rbx)
	movzwl	152(%r14), %eax
	cmpw	$9, %ax
	jne	.LBB13_109
.LBB13_102:                             # %land.lhs.true358
	cmpl	$0, 60(%rbx)
	je	.LBB13_109
# %bb.103:                              # %if.then360
	movl	$0, (%rsp)
	movq	312(%rbx), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	8(%r13), %rax
	cmpl	$0, 12(%rax)
	je	.LBB13_105
# %bb.104:                              # %lor.lhs.false371
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB13_106
.LBB13_105:                             # %if.then375
	movl	$1, 12(%rsp)
	movq	(%rdx), %rsi
	movq	%rsp, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	4(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	jne	.LBB13_108
	jmp	.LBB13_110
.LBB13_109:                             # %if.else390
	movl	$0, 420(%r14)
	jmp	.LBB13_110
.LBB13_106:                             # %if.else379
	movq	%rsp, %rsi
	movq	%r14, %rdi
	callq	*40(%rdx)
	movl	4(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	je	.LBB13_110
.LBB13_108:                             # %if.then386
	movw	$13, 152(%r14)
	movabsq	$-4076008179, %rax              # imm = 0xFFFFFFFF0D0D0D0D
	movq	%rax, 364(%r14)
.LBB13_110:                             # %if.end392
	movq	8(%r13), %rax
	cmpl	$0, 2204(%rax)
	je	.LBB13_113
# %bb.111:                              # %land.lhs.true395
	cmpl	$0, 96(%r14)
	je	.LBB13_112
.LBB13_113:                             # %if.end401
	cmpw	$8, 152(%r14)
	je	.LBB13_121
.LBB13_114:                             # %if.end407
	movq	%r14, %rdi
	callq	init_macroblock
	movzwl	152(%r14), %eax
	cmpl	$14, %eax
	je	.LBB13_127
# %bb.115:                              # %if.end407
	testl	%eax, %eax
	jne	.LBB13_121
# %bb.116:                              # %land.lhs.true412
	cmpl	$0, 120(%rbx)
	js	.LBB13_121
# %bb.117:                              # %if.then416
	movl	$0, 284(%r14)
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
	cmpl	$0, 12(%rcx)
	jne	.LBB13_119
# %bb.118:                              # %if.then.i670
	movq	848832(%rax), %rax
	movl	108(%rbx), %ecx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 32(%rax)
	movdqu	%xmm0, 16(%rax)
	movdqu	%xmm0, (%rax)
.LBB13_119:                             # %reset_coeffs.exit
	movq	8(%r13), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB13_131
# %bb.120:                              # %if.then422
	movl	$-1, 120(%rbx)
	jmp	.LBB13_131
.LBB13_112:                             # %if.then398
	movq	13544(%rbx), %rax
	movb	$0, (%rax,%r12)
	cmpw	$8, 152(%r14)
	jne	.LBB13_114
.LBB13_121:                             # %if.then430
	movl	96(%r14), %eax
	cmpl	$1, %eax
	jne	.LBB13_123
# %bb.122:                              # %if.then434
	movq	%r14, %rdi
	callq	read_ipred_modes
	movl	96(%r14), %eax
.LBB13_123:                             # %if.end435
	testl	%eax, %eax
	jne	.LBB13_126
# %bb.124:                              # %land.lhs.true439
	movzwl	152(%r14), %eax
	testl	$65527, %eax                    # imm = 0xFFF7
	je	.LBB13_126
# %bb.125:                              # %if.then449
	movq	%r14, %rdi
	callq	*13440(%rbx)
.LBB13_126:                             # %if.end451
	movq	%r14, %rdi
	callq	*13408(%rbx)
.LBB13_131:                             # %if.end465
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
.LBB13_127:                             # %if.else452
	.cfi_def_cfa_offset 128
	cmpl	$0, 200(%rbx)
	je	.LBB13_130
# %bb.128:                              # %land.lhs.true455
	cmpl	$0, 1232(%rbx)
	je	.LBB13_130
# %bb.129:                              # %if.then457
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	callq	concealIPCMcoeffs
	jmp	.LBB13_131
.LBB13_130:                             # %if.else458
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	movzbl	assignSE2partition+7(,%rax,4), %eax
	leaq	(%rax,%rax,2), %rsi
	shll	$4, %esi
	addq	312(%rbx), %rsi
	movq	%rbx, %rdi
	callq	read_IPCM_coeffs_from_NAL
	jmp	.LBB13_131
.Lfunc_end13:
	.size	read_one_macroblock_b_slice, .Lfunc_end13-read_one_macroblock_b_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function decode_one_component_b_slice
	.type	decode_one_component_b_slice,@function
decode_one_component_b_slice:           # @decode_one_component_b_slice
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$9, 372(%rdi)
	movzwl	152(%rdi), %eax
	cmpq	$14, %rax
	ja	.LBB14_16
# %bb.1:                                # %entry
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_9:                               # %if.then48
	movq	(%rdi), %rax
	cmpl	$0, 132(%rax)
	movq	24(%rax), %rax
	movl	3144(%rax), %eax
	je	.LBB14_10
# %bb.13:                               # %if.else56
	testl	%eax, %eax
	je	.LBB14_15
# %bb.14:                               # %if.then60
	callq	mb_pred_b_d8x8spatial@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_16:                              # %if.else66
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_b_inter8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_3:                               # %if.then6
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_intra16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_6:                               # %if.then27
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_5:                               # %if.then20
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_2:                               # %if.then
	.cfi_def_cfa_offset 16
	callq	mb_pred_ipcm@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_7:                               # %if.then34
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter16x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_8:                               # %if.then41
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_p_inter8x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_4:                               # %if.then13
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra4x4@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_10:                              # %if.then51
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	je	.LBB14_12
# %bb.11:                               # %if.then52
	callq	mb_pred_b_d8x8temporal@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_15:                              # %if.else62
	.cfi_def_cfa_offset 16
	callq	mb_pred_b_d4x4spatial@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB14_12:                              # %if.else54
	.cfi_def_cfa_offset 16
	callq	mb_pred_b_d4x4temporal@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	decode_one_component_b_slice, .Lfunc_end14-decode_one_component_b_slice
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI14_0:
	.quad	.LBB14_9
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_8
	.quad	.LBB14_16
	.quad	.LBB14_16
	.quad	.LBB14_16
	.quad	.LBB14_16
	.quad	.LBB14_16
	.quad	.LBB14_4
	.quad	.LBB14_3
	.quad	.LBB14_16
	.quad	.LBB14_16
	.quad	.LBB14_5
	.quad	.LBB14_2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function interpret_mb_mode_I
	.type	interpret_mb_mode_I,@function
interpret_mb_mode_I:                    # @interpret_mb_mode_I
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	152(%rdi), %eax
	cmpl	$25, %eax
	je	.LBB15_3
# %bb.1:                                # %entry
	testl	%eax, %eax
	jne	.LBB15_4
# %bb.2:                                # %if.then
	movl	$1, 96(%rdi)
	movw	$9, 152(%rdi)
	movl	$185273099, %eax                # imm = 0xB0B0B0B
	movl	%eax, 364(%rdi)
	movl	$-1, 368(%rdi)
	retq
.LBB15_3:                               # %if.then7
	movl	$1, 96(%rdi)
	movw	$14, 152(%rdi)
	movl	$-1, 284(%rdi)
	movl	$0, 360(%rdi)
	xorl	%eax, %eax
	movl	%eax, 364(%rdi)
	movl	$-1, 368(%rdi)
	retq
.LBB15_4:                               # %if.else14
	cwtl
	movl	$1, 96(%rdi)
	movw	$10, 152(%rdi)
	decl	%eax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movswl	interpret_mb_mode_I.ICBPTAB(%rcx,%rcx), %ecx
	movl	%ecx, 284(%rdi)
	andl	$3, %eax
	movl	%eax, 360(%rdi)
	xorl	%eax, %eax
	movl	%eax, 364(%rdi)
	movl	$-1, 368(%rdi)
	retq
.Lfunc_end15:
	.size	interpret_mb_mode_I, .Lfunc_end15-interpret_mb_mode_I
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_one_macroblock_i_slice
	.type	read_one_macroblock_i_slice,@function
read_one_macroblock_i_slice:            # @read_one_macroblock_i_slice
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
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	8(%rdi), %r13
	movslq	24(%rdi), %rbp
	xorl	%edx, %edx
	movl	$0, %eax
	testb	$1, %bpl
	je	.LBB16_2
# %bb.1:                                # %cond.false
	movq	13512(%rbx), %rax
	imulq	$480, %rbp, %rcx                # imm = 0x1E0
	movl	-96(%rax,%rcx), %eax
.LBB16_2:                               # %cond.end
	movslq	200(%rbx), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	13520(%rbx), %r12
	movl	%eax, 384(%r14)
	movl	148(%rbx), %ecx
	movl	%ecx, 68(%r14)
	movl	849052(%r13), %eax
	addl	%ecx, %eax
	movl	%eax, 80(%r14)
	subl	849056(%r13), %edx
	movq	13520(%rbx), %rsi
	movl	300(%rsi), %r8d
	addl	%ecx, %r8d
	cmpl	%edx, %r8d
	cmovlel	%edx, %r8d
	cmpl	$51, %r8d
	movl	$51, %edx
	movl	$51, %edi
	cmovll	%r8d, %edi
	testl	%r8d, %r8d
	js	.LBB16_4
# %bb.3:                                # %cond.false.i.i
	movl	%edi, %edi
	movzbl	QP_SCALE_CR(%rdi), %edi
.LBB16_4:                               # %cond.end.i.i
	movl	%edi, 72(%r14)
	addl	849056(%r13), %edi
	movl	%edi, 84(%r14)
	xorl	%edi, %edi
	subl	849056(%r13), %edi
	addl	304(%rsi), %ecx
	xorl	%esi, %esi
	cmpl	%edi, %ecx
	cmovlel	%edi, %ecx
	cmpl	$51, %ecx
	cmovll	%ecx, %edx
	testl	%ecx, %ecx
	js	.LBB16_6
# %bb.5:                                # %cond.false.1.i.i
	movl	%edx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %edx
.LBB16_6:                               # %set_chroma_qp.exit.i
	movl	%edx, 76(%r14)
	addl	849056(%r13), %edx
	movl	%edx, 88(%r14)
	testl	%eax, %eax
	jne	.LBB16_8
# %bb.7:                                # %land.rhs.i
	xorl	%esi, %esi
	cmpl	$1, 849092(%r13)
	sete	%sil
.LBB16_8:                               # %update_qp.exit
	movl	%esi, 92(%r14)
	movl	$2, (%rsp)
	movq	312(%rbx), %r15
	movq	8(%r13), %rax
	cmpl	$0, 12(%rax)
	je	.LBB16_10
# %bb.9:                                # %lor.lhs.false
	movq	(%r15), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB16_11
.LBB16_10:                              # %if.then
	movq	linfo_ue@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(%rsp)
.LBB16_11:                              # %if.end
	testb	$1, %bpl
	jne	.LBB16_18
# %bb.12:                               # %if.end
	cmpl	$0, 128(%rbx)
	je	.LBB16_18
# %bb.13:                               # %if.then14
	cmpl	$0, 12(%rax)
	je	.LBB16_15
# %bb.14:                               # %lor.lhs.false18
	movq	(%r15), %rax
	cmpl	$0, 24(%rax)
	je	.LBB16_16
.LBB16_15:                              # %if.then22
	movl	$1, 12(%rsp)
	movq	(%r15), %rsi
	movq	%rsp, %rdi
	callq	readSyntaxElement_FLC@PLT
	jmp	.LBB16_17
.LBB16_16:                              # %if.else
	movq	readFieldModeInfo_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*40(%r15)
.LBB16_17:                              # %if.end25
	movl	4(%rsp), %eax
	movl	%eax, 384(%r14)
	movq	8(%r13), %rax
.LBB16_18:                              # %if.end27
	cmpl	$1, 12(%rax)
	jne	.LBB16_20
# %bb.19:                               # %if.then31
	movq	%r14, %rdi
	callq	CheckAvailabilityOfNeighborsCABAC@PLT
.LBB16_20:                              # %if.end32
	movq	readMB_typeInfo_CABAC_i_slice@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	%rsp, %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	*40(%r15)
	movzwl	4(%rsp), %eax
	movw	%ax, 152(%r14)
	movq	(%r15), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB16_22
# %bb.21:                               # %if.then40
	movb	$0, 110(%r14)
.LBB16_22:                              # %if.end42
	movzbl	384(%r14), %eax
	movq	184(%r12), %rcx
	movb	%al, (%rcx,%rbp)
	cmpl	$0, 128(%rbx)
	je	.LBB16_27
# %bb.23:                               # %land.lhs.true50
	cmpl	$0, 384(%r14)
	je	.LBB16_27
# %bb.24:                               # %cond.true53
	movl	36(%r14), %eax
	testb	$1, %bpl
	je	.LBB16_26
# %bb.25:                               # %cond.true56
	addl	$-4, %eax
.LBB16_26:                              # %cond.false58
	sarl	%eax
	jmp	.LBB16_28
.LBB16_27:                              # %cond.false63
	movl	36(%r14), %eax
.LBB16_28:                              # %cond.end65
	movl	%eax, 40(%r14)
	movq	13528(%rbx), %rax
	movswq	30(%r14), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	28(%r14), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	%r14, %rdi
	callq	*13456(%rbx)
	movl	$1, 424(%r14)
	cmpw	$9, 152(%r14)
	jne	.LBB16_36
# %bb.29:                               # %land.lhs.true76
	cmpl	$0, 60(%rbx)
	je	.LBB16_36
# %bb.30:                               # %if.then78
	movl	$0, (%rsp)
	movq	312(%rbx), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rsp)
	movq	8(%r13), %rax
	cmpl	$0, 12(%rax)
	je	.LBB16_32
# %bb.31:                               # %lor.lhs.false89
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB16_33
.LBB16_32:                              # %if.then93
	movl	$1, 12(%rsp)
	movq	(%rdx), %rsi
	movq	%rsp, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	4(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	jne	.LBB16_35
	jmp	.LBB16_37
.LBB16_36:                              # %if.else107
	movl	$0, 420(%r14)
	jmp	.LBB16_37
.LBB16_33:                              # %if.else97
	movq	%rsp, %rsi
	movq	%r14, %rdi
	callq	*40(%rdx)
	movl	4(%rsp), %eax
	movl	%eax, 420(%r14)
	testl	%eax, %eax
	je	.LBB16_37
.LBB16_35:                              # %if.then104
	movw	$13, 152(%r14)
	movabsq	$-4076008179, %rax              # imm = 0xFFFFFFFF0D0D0D0D
	movq	%rax, 364(%r14)
.LBB16_37:                              # %if.end109
	movq	%r14, %rdi
	callq	init_macroblock
	cmpw	$14, 152(%r14)
	jne	.LBB16_38
# %bb.39:                               # %if.else115
	cmpl	$0, 200(%rbx)
	je	.LBB16_42
# %bb.40:                               # %land.lhs.true118
	cmpl	$0, 1232(%rbx)
	je	.LBB16_42
# %bb.41:                               # %if.then120
	movq	(%r14), %rdi
	movq	8(%r14), %rsi
	callq	concealIPCMcoeffs
	jmp	.LBB16_43
.LBB16_38:                              # %if.then114
	movq	%r14, %rdi
	callq	read_ipred_modes
	movq	%r14, %rdi
	callq	*13408(%rbx)
	jmp	.LBB16_43
.LBB16_42:                              # %if.else121
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax,4), %rax
	movzbl	assignSE2partition+7(,%rax,4), %eax
	leaq	(%rax,%rax,2), %rsi
	shll	$4, %esi
	addq	312(%rbx), %rsi
	movq	%rbx, %rdi
	callq	read_IPCM_coeffs_from_NAL
.LBB16_43:                              # %if.end127
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
.Lfunc_end16:
	.size	read_one_macroblock_i_slice, .Lfunc_end16-read_one_macroblock_i_slice
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function decode_one_component_i_slice
	.type	decode_one_component_i_slice,@function
decode_one_component_i_slice:           # @decode_one_component_i_slice
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movb	$9, 372(%rdi)
	movzwl	152(%rdi), %eax
	addl	$-9, %eax
	cmpl	$5, %eax
	ja	.LBB17_6
# %bb.1:                                # %entry
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_4:                               # %if.then13
	callq	mb_pred_intra4x4@PLT
.LBB17_6:                               # %if.end24
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB17_5:                               # %if.then20
	.cfi_def_cfa_offset 16
	callq	mb_pred_intra8x8@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB17_3:                               # %if.then6
	.cfi_def_cfa_offset 16
	movq	%rcx, %rdx
	callq	mb_pred_intra16x16@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB17_2:                               # %if.then
	.cfi_def_cfa_offset 16
	callq	mb_pred_ipcm@PLT
	movl	$1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	decode_one_component_i_slice, .Lfunc_end17-decode_one_component_i_slice
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI17_0:
	.quad	.LBB17_4
	.quad	.LBB17_3
	.quad	.LBB17_6
	.quad	.LBB17_6
	.quad	.LBB17_5
	.quad	.LBB17_2
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function interpret_mb_mode_SI
	.type	interpret_mb_mode_SI,@function
interpret_mb_mode_SI:                   # @interpret_mb_mode_SI
	.cfi_startproc
# %bb.0:                                # %entry
	movzwl	152(%rdi), %eax
	cmpl	$26, %eax
	je	.LBB18_5
# %bb.1:                                # %entry
	cmpl	$1, %eax
	je	.LBB18_4
# %bb.2:                                # %entry
	testl	%eax, %eax
	jne	.LBB18_6
# %bb.3:                                # %if.then
	movl	$1, 96(%rdi)
	movw	$12, 152(%rdi)
	movabsq	$-4109694197, %rax              # imm = 0xFFFFFFFF0B0B0B0B
	movq	%rax, 364(%rdi)
	movq	(%rdi), %rax
	movq	13528(%rax), %rax
	movswq	30(%rdi), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	28(%rdi), %rcx
	movl	$1, (%rax,%rcx,4)
	retq
.LBB18_4:                               # %if.then10
	movl	$1, 96(%rdi)
	movw	$9, 152(%rdi)
	movabsq	$-4109694197, %rax              # imm = 0xFFFFFFFF0B0B0B0B
	movq	%rax, 364(%rdi)
	retq
.LBB18_5:                               # %if.then21
	movl	$1, 96(%rdi)
	movw	$14, 152(%rdi)
	movl	$-1, 284(%rdi)
	movq	$0, 360(%rdi)
	movl	$-1, 368(%rdi)
	retq
.LBB18_6:                               # %if.else28
	cwtl
	movl	$1, 96(%rdi)
	movw	$10, 152(%rdi)
	addl	$-2, %eax
	movl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	movl	.L__const.interpret_mb_mode_SI.ICBPTAB(,%rcx,4), %ecx
	movl	%ecx, 284(%rdi)
	andl	$3, %eax
	movl	%eax, 360(%rdi)
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rax, 364(%rdi)
	retq
.Lfunc_end18:
	.size	interpret_mb_mode_SI, .Lfunc_end18-interpret_mb_mode_SI
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CABAC_444
	.type	read_CBP_and_coeffs_from_NAL_CABAC_444,@function
read_CBP_and_coeffs_from_NAL_CABAC_444: # @read_CBP_and_coeffs_from_NAL_CABAC_444
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r15
	movq	8(%rdi), %r14
	movslq	200(%r15), %rax
	leaq	(%rax,%rax,4), %rax
	cmpl	$0, 848876(%r14)
	movl	$FIELD_SCAN, %ebp
	jne	.LBB19_2
# %bb.1:                                # %land.end
	cmpl	$0, 384(%rbx)
	movl	$SNGL_SCAN, %ecx
	cmoveq	%rcx, %rbp
.LBB19_2:                               # %land.end.thread
	leaq	assignSE2partition(,%rax,4), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	96(%rbx), %r13d
	movzwl	152(%rbx), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movl	%r13d, 20(%rsp)                 # 4-byte Spill
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	ja	.LBB19_16
# %bb.3:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB19_4
# %bb.15:
	movl	$6, %ecx
.LBB19_16:                              # %lor.end
	movl	%ecx, 32(%rsp)
	movq	312(%r15), %rsi
	movl	%ecx, %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rsi,%rcx), %rdx
	movq	(%rsi,%rcx), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB19_17
# %bb.18:                               # %if.then49
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB19_20
# %bb.19:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB19_20:                              # %cond.end
	leaq	64(%rsp), %rax
	movq	(%r15,%rcx), %rcx
	jmp	.LBB19_21
.LBB19_4:                               # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB19_16
# %bb.5:                                # %if.else153
	movl	284(%rbx), %r12d
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	$17, %ecx
	callq	read_delta_quant
	cmpl	$0, 200(%r15)
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	je	.LBB19_50
# %bb.6:                                # %if.then157
	cmpl	$0, 1232(%r15)
	je	.LBB19_8
# %bb.7:                                # %if.then160
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB19_8:                               # %if.end163
	movq	8(%rbx), %r12
	leaq	849132(%r12), %r15
	leaq	104(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	leaq	120(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	cmpl	$0, 96(%rbx)
	je	.LBB19_10
# %bb.9:                                # %lor.lhs.false.i630
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB19_14
.LBB19_10:                              # %if.then.i634
	cmpl	$0, 104(%rsp)
	je	.LBB19_12
# %bb.11:                               # %if.then7.i636
	movq	848888(%r12), %rax
	movslq	108(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB19_12:                              # %if.end.i643
	cmpl	$0, 120(%rsp)
	je	.LBB19_14
# %bb.13:                               # %if.then14.i645
	movq	848888(%r12), %rax
	movslq	124(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB19_14:                              # %check_dp_neighbors.exit652
	cmpb	$0, 111(%rbx)
	movq	8(%rsp), %r15                   # 8-byte Reload
	jne	.LBB19_47
	jmp	.LBB19_51
.LBB19_17:
	leaq	72(%rsp), %rax
	movq	read_CBP_CABAC@GOTPCREL(%rip), %rcx
.LBB19_21:                              # %if.end
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
	movl	36(%rsp), %r12d
	movl	%r12d, 284(%rbx)
	movzwl	152(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB19_26
# %bb.22:                               # %lor.lhs.false74
	testl	%eax, %eax
	jne	.LBB19_25
# %bb.23:                               # %land.lhs.true79
	cmpl	$1, 164(%r15)
	jne	.LBB19_25
# %bb.24:                               # %land.lhs.true82
	movq	16(%r14), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB19_27
.LBB19_25:                              # %lor.lhs.false84
	cmpl	$0, 424(%rbx)
	je	.LBB19_48
.LBB19_26:                              # %land.lhs.true86
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB19_27
.LBB19_48:                              # %if.end121
	testl	%r12d, %r12d
	je	.LBB19_49
.LBB19_33:                              # %if.then124
	cmpl	$1, 96(%rbx)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	read_delta_quant
	cmpl	$0, 200(%r15)
	je	.LBB19_60
# %bb.34:                               # %if.then131
	cmpl	$0, 96(%rbx)
	jne	.LBB19_37
# %bb.35:                               # %land.lhs.true135
	cmpl	$0, 1236(%r15)
	je	.LBB19_37
# %bb.36:                               # %if.then137
	movb	$1, 111(%rbx)
.LBB19_37:                              # %if.end138
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	cmpl	$1, %r13d
	jne	.LBB19_40
# %bb.38:                               # %land.lhs.true140
	cmpl	$0, 1232(%r15)
	je	.LBB19_40
# %bb.39:                               # %if.then142
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB19_40:                              # %if.end145
	movq	8(%rbx), %r12
	leaq	849132(%r12), %r15
	leaq	104(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	leaq	120(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	cmpl	$0, 96(%rbx)
	je	.LBB19_42
# %bb.41:                               # %lor.lhs.false.i
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB19_46
.LBB19_42:                              # %if.then.i
	cmpl	$0, 104(%rsp)
	je	.LBB19_44
# %bb.43:                               # %if.then7.i
	movq	848888(%r12), %rax
	movslq	108(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB19_44:                              # %if.end.i
	cmpl	$0, 120(%rsp)
	je	.LBB19_46
# %bb.45:                               # %if.then14.i
	movq	848888(%r12), %rax
	movslq	124(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB19_46:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%rbx)
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB19_60
.LBB19_47:                              # %if.then148
	movl	$0, 284(%rbx)
	xorl	%r12d, %r12d
	jmp	.LBB19_60
.LBB19_27:                              # %land.lhs.true96
	testb	$15, %r12b
	je	.LBB19_48
# %bb.28:                               # %land.rhs99
	cmpl	$0, 60(%r15)
	je	.LBB19_33
# %bb.29:                               # %if.then103
	movl	$0, 32(%rsp)
	movq	312(%r15), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 72(%rsp)
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB19_31
# %bb.30:                               # %if.then113
	movl	$1, 44(%rsp)
	movq	(%rdx), %rsi
	leaq	32(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	jmp	.LBB19_32
.LBB19_49:
	xorl	%r12d, %r12d
	jmp	.LBB19_60
.LBB19_50:                              # %if.end169
	cmpb	$0, 111(%rbx)
	jne	.LBB19_60
.LBB19_51:                              # %if.then172
	movq	312(%r15), %r15
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	7(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movl	$0, 56(%rsp)
	movl	$7, 32(%rsp)
	movq	(%r15,%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rdx)
	sete	%dl
	jne	.LBB19_52
# %bb.53:                               # %if.then172
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	jmp	.LBB19_54
.LBB19_52:
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rsi
.LBB19_54:                              # %if.then172
	addq	%rax, %r15
	movb	%dl, %cl
	movq	%rsi, 64(%rsp,%rcx,8)
	movl	$-1, %r14d
	leaq	32(%rsp), %r12
	movq	%rbp, %r13
	.p2align	4, 0x90
.LBB19_55:                              # %for.body199
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.LBB19_57
# %bb.56:                               # %for.inc216
                                        #   in Loop: Header=BB19_55 Depth=1
	movslq	40(%rsp), %rcx
	movzbl	(%r13,%rcx,2), %edx
	movzbl	1(%r13,%rcx,2), %esi
	leaq	2(%r13,%rcx,2), %r13
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	shll	$5, %esi
	movq	(%rcx,%rsi), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%r14d
	cmpl	$16, %r14d
	jb	.LBB19_55
.LBB19_57:                              # %for.end218
	cmpl	$0, 92(%rbx)
	je	.LBB19_59
# %bb.58:
	movq	80(%rsp), %r14                  # 8-byte Reload
	movl	20(%rsp), %r13d                 # 4-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	jmp	.LBB19_60
.LBB19_59:                              # %if.then221
	movq	8(%rsp), %r15                   # 8-byte Reload
	movl	216(%r15), %esi
	movq	%rbx, %rdi
	callq	itrans_2@PLT
	movq	80(%rsp), %r14                  # 8-byte Reload
	movl	20(%rsp), %r13d                 # 4-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
.LBB19_60:                              # %if.end224
	movl	148(%r15), %edx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movl	%edx, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB19_62
# %bb.61:                               # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB19_62:                              # %cond.end.i.i
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB19_64
# %bb.63:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB19_64:                              # %set_chroma_qp.exit.i
	movl	%esi, 76(%rbx)
	addl	849056(%rax), %esi
	movl	%esi, 88(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB19_66
# %bb.65:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB19_66:                              # %update_qp.exit
	movl	%edx, 92(%rbx)
	leaq	1392(%r15), %rax
	leaq	2544(%r15), %rcx
	cmpl	$1, %r13d
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	cmoveq	%rax, %rcx
	testl	%r12d, %r12d
	je	.LBB19_70
# %bb.67:                               # %if.then282
	cmpl	$0, 420(%rbx)
	je	.LBB19_69
# %bb.68:                               # %if.then285
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	readCompCoeff8x8MB_CABAC
	jmp	.LBB19_70
.LBB19_69:                              # %if.else286
	movslq	216(%r15), %rax
	movslq	80(%rbx,%rax,4), %rdx
	movq	856032(%r14), %rsi
	movq	856040(%r14), %rdi
	movslq	(%rdi,%rdx,4), %rdi
	shlq	$6, %rdi
	leaq	(%rax,%rax,2), %rax
	shlq	$7, %rax
	addq	%rax, %rcx
	addq	%rdi, %rcx
	movl	(%rsi,%rdx,4), %r8d
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movl	%r12d, %r9d
	callq	readCompCoeff4x4MB_CABAC
.LBB19_70:                              # %if.end288
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	movl	%r12d, 4(%rsp)                  # 4-byte Spill
	jne	.LBB19_79
# %bb.71:                               # %if.then302
	movl	$7, 32(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	7(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 849280(%r14)
	movq	312(%r15), %r15
	movl	$10, %edx
	cmovnel	%ecx, %edx
	movl	%edx, 56(%rsp)
	movq	(%r15,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB19_73
# %bb.72:                               # %if.then323
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 64(%rsp)
	jmp	.LBB19_74
.LBB19_73:                              # %if.else325
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
.LBB19_74:                              # %if.end327
	addq	%rax, %r15
	movl	$-1, %r14d
	leaq	32(%rsp), %r12
	movl	$-1, %r13d
	.p2align	4, 0x90
.LBB19_75:                              # %for.body336
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.LBB19_77
# %bb.76:                               # %for.inc365
                                        #   in Loop: Header=BB19_75 Depth=1
	movl	40(%rsp), %ecx
	addl	%ecx, %r13d
	incl	%r13d
	movslq	%r13d, %rcx
	movzbl	(%rbp,%rcx,2), %edx
	movzbl	1(%rbp,%rcx,2), %ecx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	1272(%rsi), %rsi
	movq	8(%rsi), %rsi
	shll	$5, %ecx
	movq	(%rsi,%rcx), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%r14d
	cmpl	$16, %r14d
	jb	.LBB19_75
.LBB19_77:                              # %for.end367
	cmpl	$0, 92(%rbx)
	movq	80(%rsp), %r14                  # 8-byte Reload
	movl	20(%rsp), %r13d                 # 4-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	jne	.LBB19_79
# %bb.78:                               # %if.then371
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	itrans_2@PLT
.LBB19_79:                              # %if.end374
	movl	148(%r15), %esi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	movl	%esi, 68(%rbx)
	movl	849052(%rax), %edx
	addl	%esi, %edx
	movl	%edx, 80(%rbx)
	movq	13520(%rcx), %r8
	xorl	%ecx, %ecx
	subl	849056(%rax), %ecx
	xorl	%r9d, %r9d
	movl	300(%r8), %r10d
	addl	%esi, %r10d
	cmpl	%ecx, %r10d
	cmovlel	%ecx, %r10d
	cmpl	$51, %r10d
	movl	$51, %edi
	movl	$51, %ecx
	cmovll	%r10d, %ecx
	testl	%r10d, %r10d
	js	.LBB19_81
# %bb.80:                               # %cond.false.i.i669
	movl	%ecx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %ecx
.LBB19_81:                              # %cond.end.i.i673
	movl	%ecx, 72(%rbx)
	movl	849056(%rax), %r10d
	addl	%ecx, %r10d
	movl	%r10d, 84(%rbx)
	subl	849056(%rax), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edi
	testl	%esi, %esi
	js	.LBB19_83
# %bb.82:                               # %cond.false.1.i.i683
	movl	%edi, %esi
	movzbl	QP_SCALE_CR(%rsi), %edi
.LBB19_83:                              # %set_chroma_qp.exit.i687
	movl	%edi, 76(%rbx)
	addl	849056(%rax), %edi
	movl	%edi, 88(%rbx)
	xorl	%esi, %esi
	testl	%edx, %edx
	jne	.LBB19_85
# %bb.84:                               # %land.rhs.i695
	xorl	%esi, %esi
	cmpl	$1, 849092(%rax)
	sete	%sil
.LBB19_85:                              # %update_qp.exit698
	movl	%esi, 92(%rbx)
	cmpl	$1, %r13d
	movq	96(%rsp), %rax                  # 8-byte Reload
	cmoveq	88(%rsp), %rax                  # 8-byte Folded Reload
	testl	%r12d, %r12d
	je	.LBB19_89
# %bb.86:                               # %if.then429
	cmpl	$0, 420(%rbx)
	je	.LBB19_88
# %bb.87:                               # %if.then432
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	readCompCoeff8x8MB_CABAC
.LBB19_89:                              # %for.inc440
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	jne	.LBB19_98
.LBB19_90:                              # %if.then302.1
	movl	$7, 32(%rsp)
	movq	312(%r15), %r15
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	7(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	xorl	%ecx, %ecx
	cmpl	$0, 849280(%r14)
	sete	%cl
	shll	$4, %ecx
	movl	%ecx, 56(%rsp)
	movq	(%r15,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB19_92
# %bb.91:                               # %if.then323.1
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 64(%rsp)
	jmp	.LBB19_93
.LBB19_92:                              # %if.else325.1
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
.LBB19_93:                              # %if.end327.1
	addq	%rax, %r15
	movl	$-1, %r12d
	leaq	32(%rsp), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
.LBB19_94:                              # %for.body336.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movl	36(%rsp), %eax
	testl	%eax, %eax
	je	.LBB19_96
# %bb.95:                               # %for.inc365.1
                                        #   in Loop: Header=BB19_94 Depth=1
	movl	40(%rsp), %ecx
	addl	%ecx, %r13d
	incl	%r13d
	movslq	%r13d, %rcx
	movzbl	(%rbp,%rcx,2), %edx
	movzbl	1(%rbp,%rcx,2), %ecx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	1272(%rsi), %rsi
	movq	16(%rsi), %rsi
	shll	$5, %ecx
	movq	(%rsi,%rcx), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%r12d
	cmpl	$16, %r12d
	jb	.LBB19_94
.LBB19_96:                              # %for.end367.1
	cmpl	$0, 92(%rbx)
	movq	80(%rsp), %r14                  # 8-byte Reload
	movl	20(%rsp), %r13d                 # 4-byte Reload
	movl	4(%rsp), %r12d                  # 4-byte Reload
	movq	8(%rsp), %r15                   # 8-byte Reload
	jne	.LBB19_98
# %bb.97:                               # %if.then371.1
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	itrans_2@PLT
	jmp	.LBB19_98
.LBB19_88:                              # %if.else434
	movslq	849056(%r14), %rdx
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	856032(%r14), %rdx
	movq	856040(%r14), %rsi
	movslq	(%rsi,%rcx,4), %rsi
	shlq	$6, %rsi
	movl	(%rdx,%rcx,4), %r8d
	leaq	(%rax,%rsi), %rcx
	addq	$384, %rcx                      # imm = 0x180
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movl	%r12d, %r9d
	callq	readCompCoeff4x4MB_CABAC
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	je	.LBB19_90
.LBB19_98:                              # %if.end374.1
	movl	148(%r15), %esi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	movl	%esi, 68(%rbx)
	movl	849052(%rax), %edx
	addl	%esi, %edx
	movl	%edx, 80(%rbx)
	movq	13520(%rcx), %rdi
	xorl	%ecx, %ecx
	subl	849056(%rax), %ecx
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%esi, %r10d
	cmpl	%ecx, %r10d
	cmovlel	%ecx, %r10d
	cmpl	$51, %r10d
	movl	$51, %ecx
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB19_100
# %bb.99:                               # %cond.false.i.i669.1
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB19_100:                             # %cond.end.i.i673.1
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %esi
	cmpl	%r8d, %esi
	cmovlel	%r8d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %ecx
	testl	%esi, %esi
	js	.LBB19_102
# %bb.101:                              # %cond.false.1.i.i683.1
	movl	%ecx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %ecx
.LBB19_102:                             # %set_chroma_qp.exit.i687.1
	movl	%ecx, 76(%rbx)
	movl	849056(%rax), %esi
	addl	%ecx, %esi
	movl	%esi, 88(%rbx)
	xorl	%esi, %esi
	testl	%edx, %edx
	jne	.LBB19_104
# %bb.103:                              # %land.rhs.i695.1
	xorl	%esi, %esi
	cmpl	$1, 849092(%rax)
	sete	%sil
.LBB19_104:                             # %update_qp.exit698.1
	movl	%esi, 92(%rbx)
	cmpl	$1, %r13d
	movq	96(%rsp), %rsi                  # 8-byte Reload
	cmoveq	88(%rsp), %rsi                  # 8-byte Folded Reload
	testl	%r12d, %r12d
	je	.LBB19_108
# %bb.105:                              # %if.then429.1
	cmpl	$0, 420(%rbx)
	je	.LBB19_107
# %bb.106:                              # %if.then432.1
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$2, %edx
	callq	readCompCoeff8x8MB_CABAC
	jmp	.LBB19_108
.LBB19_107:                             # %if.else434.1
	movslq	849056(%r14), %rax
	movslq	%ecx, %rcx
	addq	%rax, %rcx
	movq	856032(%r14), %rax
	movq	856040(%r14), %rdx
	movslq	(%rdx,%rcx,4), %rdx
	shlq	$6, %rdx
	movl	(%rax,%rcx,4), %r8d
	leaq	(%rsi,%rdx), %rcx
	addq	$768, %rcx                      # imm = 0x300
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$2, %edx
	movl	%r12d, %r9d
	callq	readCompCoeff4x4MB_CABAC
.LBB19_108:                             # %for.inc440.1
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
	retq
.LBB19_31:                              # %if.else116
	.cfi_def_cfa_offset 192
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
.LBB19_32:                              # %if.end119
	movl	36(%rsp), %eax
	movl	%eax, 420(%rbx)
	jmp	.LBB19_33
.Lfunc_end19:
	.size	read_CBP_and_coeffs_from_NAL_CABAC_444, .Lfunc_end19-read_CBP_and_coeffs_from_NAL_CABAC_444
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CABAC_422
	.type	read_CBP_and_coeffs_from_NAL_CABAC_422,@function
read_CBP_and_coeffs_from_NAL_CABAC_422: # @read_CBP_and_coeffs_from_NAL_CABAC_422
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %r8
	movq	8(%rdi), %r13
	movslq	200(%r8), %rax
	leaq	(%rax,%rax,4), %rax
	movq	13520(%r8), %rcx
	cmpl	$0, 848876(%r13)
	je	.LBB20_2
# %bb.1:
	xorl	%ebp, %ebp
	movl	$FIELD_SCAN, %r14d
	jmp	.LBB20_3
.LBB20_2:                               # %land.end
	cmpl	$0, 384(%rdi)
	sete	%bpl
	movl	$SNGL_SCAN, %edx
	movl	$FIELD_SCAN, %r14d
	cmoveq	%rdx, %r14
.LBB20_3:                               # %land.end.thread
	movslq	268(%rcx), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	assignSE2partition(,%rax,4), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	96(%rdi), %eax
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	856032(%r13), %rax
	movq	856040(%r13), %rcx
	movslq	84(%rdi), %rdx
	movl	(%rax,%rdx,4), %esi
	movl	%esi, 104(%rsp)
	movl	(%rcx,%rdx,4), %edx
	movl	%edx, 188(%rsp)
	movslq	88(%rdi), %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, 108(%rsp)
	movl	(%rcx,%rdx,4), %eax
	movl	%eax, 192(%rsp)
	movzwl	152(%rdi), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%r8, (%rsp)                     # 8-byte Spill
	ja	.LBB20_17
# %bb.4:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB20_5
# %bb.16:
	movl	$6, %ecx
.LBB20_17:                              # %lor.end
	movl	%ecx, 48(%rsp)
	movq	312(%r8), %rsi
	movl	%ecx, %ecx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rsi,%rcx), %rdx
	movq	(%rsi,%rcx), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB20_18
# %bb.19:                               # %if.then50
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB20_21
# %bb.20:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB20_21:                              # %cond.end
	leaq	80(%rsp), %rax
	movq	(%r8,%rcx), %rcx
	jmp	.LBB20_22
.LBB20_5:                               # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB20_17
# %bb.6:                                # %if.else154
	movl	284(%rdi), %r12d
	movq	%rdi, %rsi
	leaq	48(%rsp), %rdi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	$17, %ecx
	movq	%rsi, %rbx
	callq	read_delta_quant
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB20_52
# %bb.7:                                # %if.then158
	cmpl	$0, 1232(%rax)
	movq	%rbx, %rdi
	je	.LBB20_9
# %bb.8:                                # %if.then161
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB20_9:                               # %if.end164
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r15
	leaq	208(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leaq	128(%rsp), %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rsp), %r11                   # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB20_11
# %bb.10:                               # %lor.lhs.false.i1152
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB20_15
.LBB20_11:                              # %if.then.i1156
	cmpl	$0, 208(%rsp)
	je	.LBB20_13
# %bb.12:                               # %if.then7.i1158
	movq	848888(%rbx), %rax
	movslq	212(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB20_13:                              # %if.end.i1165
	cmpl	$0, 128(%rsp)
	je	.LBB20_15
# %bb.14:                               # %if.then14.i1167
	movq	848888(%rbx), %rax
	movslq	132(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB20_15:                              # %check_dp_neighbors.exit1174
	cmpb	$0, 111(%r11)
	jne	.LBB20_51
	jmp	.LBB20_53
.LBB20_18:
	leaq	88(%rsp), %rax
	movq	read_CBP_CABAC@GOTPCREL(%rip), %rcx
.LBB20_22:                              # %if.end
	movq	%rcx, (%rax)
	leaq	48(%rsp), %rsi
	callq	*40(%rdx)
	movq	8(%rsp), %r11                   # 8-byte Reload
	movl	52(%rsp), %r12d
	movl	%r12d, 284(%r11)
	movzwl	152(%r11), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB20_27
# %bb.23:                               # %lor.lhs.false75
	testl	%eax, %eax
	jne	.LBB20_26
# %bb.24:                               # %land.lhs.true80
	movq	(%rsp), %rcx                    # 8-byte Reload
	cmpl	$1, 164(%rcx)
	jne	.LBB20_26
# %bb.25:                               # %land.lhs.true83
	movq	16(%r13), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB20_28
.LBB20_26:                              # %lor.lhs.false85
	cmpl	$0, 424(%r11)
	je	.LBB20_36
.LBB20_27:                              # %land.lhs.true87
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB20_28
.LBB20_36:                              # %if.end122
	testl	%r12d, %r12d
	je	.LBB20_37
.LBB20_34:                              # %if.then125
	cmpl	$1, 96(%r11)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	48(%rsp), %rdi
	movq	%r11, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%r11, %rbx
	callq	read_delta_quant
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB20_35
# %bb.38:                               # %if.then132
	cmpl	$0, 96(%rbx)
	movq	%rbx, %rdi
	jne	.LBB20_41
# %bb.39:                               # %land.lhs.true136
	cmpl	$0, 1236(%rax)
	je	.LBB20_41
# %bb.40:                               # %if.then138
	movb	$1, 111(%rdi)
.LBB20_41:                              # %if.end139
	cmpl	$1, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB20_44
# %bb.42:                               # %land.lhs.true141
	cmpl	$0, 1232(%rax)
	je	.LBB20_44
# %bb.43:                               # %if.then143
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB20_44:                              # %if.end146
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r15
	leaq	208(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	leaq	128(%rsp), %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%rbx)
	movq	8(%rsp), %r11                   # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB20_46
# %bb.45:                               # %lor.lhs.false.i
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB20_50
.LBB20_46:                              # %if.then.i
	cmpl	$0, 208(%rsp)
	je	.LBB20_48
# %bb.47:                               # %if.then7.i
	movq	848888(%rbx), %rax
	movslq	212(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB20_48:                              # %if.end.i
	cmpl	$0, 128(%rsp)
	je	.LBB20_50
# %bb.49:                               # %if.then14.i
	movq	848888(%rbx), %rax
	movslq	132(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB20_50:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%r11)
	je	.LBB20_62
.LBB20_51:                              # %if.then149
	movl	$0, 284(%r11)
	xorl	%r12d, %r12d
	jmp	.LBB20_62
.LBB20_28:                              # %land.lhs.true97
	testb	$15, %r12b
	je	.LBB20_36
# %bb.29:                               # %land.rhs100
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 60(%rax)
	je	.LBB20_34
# %bb.30:                               # %if.then104
	movl	$0, 48(%rsp)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	312(%rax), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 88(%rsp)
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB20_32
# %bb.31:                               # %if.then114
	movl	$1, 60(%rsp)
	movq	(%rdx), %rsi
	leaq	48(%rsp), %rdi
	movq	%r11, %rbx
	callq	readSyntaxElement_FLC@PLT
	jmp	.LBB20_33
.LBB20_37:
	xorl	%r12d, %r12d
	jmp	.LBB20_62
.LBB20_35:
	movq	%rbx, %r11
	jmp	.LBB20_62
.LBB20_52:                              # %if.end170
	cmpb	$0, 111(%rbx)
	movq	%rbx, %r11
	jne	.LBB20_62
.LBB20_53:                              # %if.then173
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	312(%rax), %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzbl	7(%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movl	$0, 72(%rsp)
	movl	$7, 48(%rsp)
	movq	(%r15,%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rdx)
	sete	%dl
	movl	%r12d, %ebp
	jne	.LBB20_54
# %bb.55:                               # %if.then173
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	jmp	.LBB20_56
.LBB20_54:
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rsi
.LBB20_56:                              # %if.then173
	addq	%rax, %r15
	movb	%dl, %cl
	movq	%rsi, 80(%rsp,%rcx,8)
	movl	$-1, %ebx
	leaq	48(%rsp), %r12
	.p2align	4, 0x90
.LBB20_57:                              # %for.body200
                                        # =>This Inner Loop Header: Depth=1
	movq	%r11, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %r11                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_59
# %bb.58:                               # %for.inc217
                                        #   in Loop: Header=BB20_57 Depth=1
	movslq	56(%rsp), %rcx
	movzbl	(%r14,%rcx,2), %edx
	movzbl	1(%r14,%rcx,2), %esi
	leaq	(%r14,%rcx,2), %r14
	addq	$2, %r14
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	shll	$5, %esi
	movq	(%rcx,%rsi), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%ebx
	cmpl	$16, %ebx
	jb	.LBB20_57
.LBB20_59:                              # %for.end219
	cmpl	$0, 92(%r11)
	jne	.LBB20_61
# %bb.60:                               # %if.then222
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	216(%rax), %esi
	movq	%r11, %rdi
	callq	itrans_2@PLT
	movq	8(%rsp), %r11                   # 8-byte Reload
.LBB20_61:                              # %if.end225
	movl	%ebp, %r12d
	movl	40(%rsp), %ebp                  # 4-byte Reload
.LBB20_62:                              # %if.end225
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	148(%rax), %esi
	movq	(%r11), %rdx
	movq	8(%r11), %rax
	movl	%esi, 68(%r11)
	movl	849052(%rax), %ecx
	addl	%esi, %ecx
	movl	%ecx, 80(%r11)
	movq	13520(%rdx), %r8
	xorl	%edx, %edx
	subl	849056(%rax), %edx
	xorl	%r9d, %r9d
	movl	300(%r8), %r10d
	addl	%esi, %r10d
	cmpl	%edx, %r10d
	cmovlel	%edx, %r10d
	cmpl	$51, %r10d
	movl	$51, %edi
	movl	$51, %edx
	cmovll	%r10d, %edx
	testl	%r10d, %r10d
	js	.LBB20_64
# %bb.63:                               # %cond.false.i.i
	movl	%edx, %edx
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB20_64:                              # %cond.end.i.i
	movl	%edx, 72(%r11)
	movslq	849056(%rax), %r10
	movslq	%edx, %rdx
	addq	%r10, %rdx
	movl	%edx, 84(%r11)
	subl	849056(%rax), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edi
	testl	%esi, %esi
	js	.LBB20_66
# %bb.65:                               # %cond.false.1.i.i
	movl	%edi, %esi
	movzbl	QP_SCALE_CR(%rsi), %edi
.LBB20_66:                              # %set_chroma_qp.exit.i
	movl	%edi, 76(%r11)
	movslq	849056(%rax), %r8
	movslq	%edi, %rsi
	addq	%r8, %rsi
	movl	%esi, 88(%r11)
	xorl	%edi, %edi
	testl	%ecx, %ecx
	jne	.LBB20_68
# %bb.67:                               # %land.rhs.i
	xorl	%edi, %edi
	cmpl	$1, 849092(%rax)
	sete	%dil
.LBB20_68:                              # %update_qp.exit
	movl	%edi, 92(%r11)
	movq	(%rsp), %r8                     # 8-byte Reload
	movslq	216(%r8), %rdi
	movslq	80(%r11,%rdi,4), %rcx
	movq	856032(%r13), %r9
	movq	856040(%r13), %r10
	movslq	(%r10,%rcx,4), %rax
	leaq	1392(%r8), %r14
	leaq	2544(%r8), %rbx
	cmpl	$1, 44(%rsp)                    # 4-byte Folded Reload
	movl	(%r9,%rcx,4), %r8d
	movl	(%r9,%rdx,4), %ecx
	movl	%ecx, 104(%rsp)
	movl	(%r10,%rdx,4), %ecx
	movl	%ecx, 188(%rsp)
	movl	(%r9,%rsi,4), %ecx
	movl	%ecx, 108(%rsp)
	movl	(%r10,%rsi,4), %ecx
	movl	%ecx, 192(%rsp)
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	movq	%rbx, %rcx
	movq	%r14, 200(%rsp)                 # 8-byte Spill
	cmoveq	%r14, %rcx
	testl	%r12d, %r12d
	je	.LBB20_126
# %bb.69:                               # %if.then283
	cmpl	$0, 420(%r11)
	je	.LBB20_71
# %bb.70:                               # %if.then286
	leaq	48(%rsp), %rsi
	movq	%r11, %rdi
	xorl	%edx, %edx
	callq	readCompCoeff8x8MB_CABAC
	cmpl	$16, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jge	.LBB20_73
	jmp	.LBB20_126
.LBB20_71:                              # %if.else287
	shlq	$6, %rax
	leaq	(%rdi,%rdi,2), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	addq	%rax, %rcx
	leaq	48(%rsp), %rsi
	movq	%r11, %rdi
	xorl	%edx, %edx
	movl	%r12d, %r9d
	callq	readCompCoeff4x4MB_CABAC
	cmpl	$16, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jl	.LBB20_126
.LBB20_73:                              # %for.cond293.preheader
	movl	%r12d, 196(%rsp)                # 4-byte Spill
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	decq	96(%rsp)                        # 8-byte Folded Spill
	movb	$1, %al
	xorl	%r8d, %r8d
	movq	(%rsp), %r9                     # 8-byte Reload
	movq	%r13, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB20_74
	.p2align	4, 0x90
.LBB20_81:                              # %for.cond552.preheader.preheader
                                        #   in Loop: Header=BB20_74 Depth=1
	movq	1272(%r9), %rcx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	8(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	144(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	132(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	148(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	136(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	152(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	140(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	96(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	156(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rdx,8), %rcx
	movq	96(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movq	176(%rsp), %r13                 # 8-byte Reload
	movl	32(%rsp), %r10d                 # 4-byte Reload
.LBB20_90:                              # %if.end576
                                        #   in Loop: Header=BB20_74 Depth=1
	movl	$2, %r8d
	testb	$1, %r10b
	movl	$0, %eax
	je	.LBB20_91
.LBB20_74:                              # %for.body296
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_75 Depth 2
                                        #     Child Loop BB20_85 Depth 2
                                        #       Child Loop BB20_87 Depth 3
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movq	%r8, %rdx
	shrq	%rdx
	movq	1272(%r9), %rax
	leaq	1(%rdx), %rcx
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	movq	8(%rax,%rdx,8), %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movslq	72(%rdi,%r8,2), %rax
	movslq	849056(%r13), %rdx
	addq	%rax, %rdx
	movq	856032(%r13), %rax
	movq	856040(%r13), %rsi
	movl	12(%rax,%rdx,4), %r12d
	movslq	12(%rsi,%rdx,4), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$7, %rcx
	movq	168(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rcx), %r15
	leal	(,%r8,4), %ecx
	movl	$16711680, %eax                 # imm = 0xFF0000
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shlq	$6, %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	addq	%rdx, %r15
	movl	$-1, %ebp
	movl	$-1, %r13d
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB20_75:                              # %for.body344
                                        #   Parent Loop BB20_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, 72(%rsp)
	xorl	%eax, %eax
	cmpl	$1, 96(%rdi)
	setne	%al
	leal	8(%rax,%rax,4), %eax
	movl	%eax, 48(%rsp)
	movl	%r8d, 100(%rdi)
	movq	312(%r9), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rdx,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB20_77
# %bb.76:                               # %if.then360
                                        #   in Loop: Header=BB20_75 Depth=2
	movq	linfo_levrun_c2x2@GOTPCREL(%rip), %rcx
	movq	%rcx, 80(%rsp)
	jmp	.LBB20_78
	.p2align	4, 0x90
.LBB20_77:                              # %if.else362
                                        #   in Loop: Header=BB20_75 Depth=2
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 88(%rsp)
.LBB20_78:                              # %if.end364
                                        #   in Loop: Header=BB20_75 Depth=2
	addq	%rax, %rdx
	leaq	48(%rsp), %rsi
	callq	*40(%rdx)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	movq	(%rsp), %r9                     # 8-byte Reload
	je	.LBB20_80
# %bb.79:                               # %for.inc390
                                        #   in Loop: Header=BB20_75 Depth=2
	movq	%rbx, %r8
	movq	24(%rsp), %rcx                  # 8-byte Reload
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %r13d
	incl	%r13d
	movslq	%r13d, %rcx
	movzbl	SCAN_YUV422(%rcx,%rcx), %edx
	movzbl	SCAN_YUV422+1(%rcx,%rcx), %ecx
	shll	$4, %edx
	addq	%rsp, %rdx
	addq	$128, %rdx
	movl	%eax, (%rdx,%rcx,4)
	incl	%ebp
	cmpl	$8, %ebp
	jb	.LBB20_75
.LBB20_80:                              # %for.end392
                                        #   in Loop: Header=BB20_74 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	addq	200(%rsp), %rax                 # 8-byte Folded Reload
	addq	112(%rsp), %rax                 # 8-byte Folded Reload
	cmpl	$1, 44(%rsp)                    # 4-byte Folded Reload
	cmoveq	%rax, %r15
	cmpl	$0, 92(%rdi)
	movl	128(%rsp), %eax
	jne	.LBB20_81
# %bb.82:                               # %if.then396
                                        #   in Loop: Header=BB20_74 Depth=1
	movl	144(%rsp), %r9d
	leal	(%r9,%rax), %edi
	movl	148(%rsp), %r10d
	movl	132(%rsp), %edx
	movl	136(%rsp), %esi
	leal	(%r10,%rdx), %r11d
	movl	152(%rsp), %ebx
	leal	(%rbx,%rsi), %r13d
	movl	140(%rsp), %ecx
	movl	156(%rsp), %ebp
	leal	(%rcx,%rbp), %r8d
	subl	%r9d, %eax
	subl	%r10d, %edx
	subl	%ebx, %esi
	subl	%ebp, %ecx
	leal	(%rdi,%r13), %r9d
	subl	%r13d, %edi
	movl	%r11d, %r10d
	subl	%r8d, %r10d
	addl	%r11d, %r8d
	leal	(%r8,%r9), %r11d
	movq	(%r14), %rbx
	movl	%r11d, (%rbx)
	leal	(%r10,%rdi), %r11d
	movq	32(%r14), %rbx
	movl	%r11d, (%rbx)
	movq	8(%rsp), %r11                   # 8-byte Reload
	subl	%r10d, %edi
	movq	64(%r14), %r10
	movl	%edi, (%r10)
	subl	%r8d, %r9d
	movq	96(%r14), %rdi
	movl	%r9d, (%rdi)
	leal	(%rsi,%rax), %edi
	subl	%esi, %eax
	movl	%edx, %esi
	subl	%ecx, %esi
	addl	%edx, %ecx
	leal	(%rcx,%rdi), %edx
	movq	(%r14), %r8
	movl	%edx, 16(%r8)
	leal	(%rsi,%rax), %edx
	movq	32(%r14), %r8
	movl	%edx, 16(%r8)
	subl	%esi, %eax
	movq	64(%r14), %rdx
	movl	%eax, 16(%rdx)
	subl	%ecx, %edi
	movq	96(%r14), %rax
	movl	%edi, 16(%rax)
	movq	%r11, %rdi
	movq	(%rsp), %r9                     # 8-byte Reload
	movq	176(%rsp), %r13                 # 8-byte Reload
	movl	849112(%r13), %edx
	testl	%edx, %edx
	movl	32(%rsp), %r10d                 # 4-byte Reload
	jle	.LBB20_90
# %bb.83:                               # %for.cond524.preheader.lr.ph
                                        #   in Loop: Header=BB20_74 Depth=1
	movl	849108(%r13), %ecx
	testl	%ecx, %ecx
	jle	.LBB20_90
# %bb.84:                               # %for.cond524.preheader.preheader
                                        #   in Loop: Header=BB20_74 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_85
	.p2align	4, 0x90
.LBB20_89:                              # %for.inc544
                                        #   in Loop: Header=BB20_85 Depth=2
	addq	$4, %rax
	movslq	%edx, %rsi
	cmpq	%rsi, %rax
	jge	.LBB20_90
.LBB20_85:                              # %for.cond524.preheader
                                        #   Parent Loop BB20_74 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_87 Depth 3
	testl	%ecx, %ecx
	jle	.LBB20_89
# %bb.86:                               # %for.body527.lr.ph
                                        #   in Loop: Header=BB20_85 Depth=2
	movq	%rdi, %r8
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_87:                              # %for.body527
                                        #   Parent Loop BB20_74 Depth=1
                                        #     Parent Loop BB20_85 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rax,8), %rsi
	movl	(%r15), %edi
	imull	(%rsi,%rdx,4), %edi
	movl	%r12d, %ecx
	shll	%cl, %edi
	addl	$32, %edi
	sarl	$6, %edi
	movl	%edi, (%rsi,%rdx,4)
	addq	$4, %rdx
	movslq	849108(%r13), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB20_87
# %bb.88:                               # %for.inc544.loopexit
                                        #   in Loop: Header=BB20_85 Depth=2
	movl	849112(%r13), %edx
	movq	%r8, %rdi
	jmp	.LBB20_89
.LBB20_91:                              # %if.end580
	cmpl	$32, 196(%rsp)                  # 4-byte Folded Reload
	movl	40(%rsp), %edx                  # 4-byte Reload
	jge	.LBB20_92
.LBB20_126:                             # %if.end838
	addq	$232, %rsp
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
.LBB20_92:                              # %if.else584
	.cfi_def_cfa_offset 288
	movl	$7, 72(%rsp)
	xorl	%eax, %eax
	cmpl	$0, 96(%rdi)
	sete	%al
	leal	(%rax,%rax,4), %ecx
	leal	10(%rax,%rax,4), %eax
	movl	%eax, 48(%rsp)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	312(%rax), %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzbl	10(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%r15,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB20_94
# %bb.93:                               # %if.then599
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 80(%rsp)
	addq	%rax, %r15
	cmpl	$0, 92(%rdi)
	movl	849096(%r13), %eax
	je	.LBB20_111
.LBB20_96:                              # %for.cond737.preheader
	testl	%eax, %eax
	jle	.LBB20_126
# %bb.97:                               # %for.body741.lr.ph
	testb	%dl, %dl
	movl	$SNGL_SCAN+2, %eax
	movl	$FIELD_SCAN+2, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	shlq	$5, 96(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB20_98
	.p2align	4, 0x90
.LBB20_110:                             # %for.inc831.3
                                        #   in Loop: Header=BB20_98 Depth=1
	incq	%r12
	movq	176(%rsp), %r13                 # 8-byte Reload
	movslq	849096(%r13), %rax
	cmpq	%rax, %r12
	jge	.LBB20_126
.LBB20_98:                              # %for.body741
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_99 Depth 2
                                        #     Child Loop BB20_102 Depth 2
                                        #     Child Loop BB20_105 Depth 2
                                        #     Child Loop BB20_108 Depth 2
	movslq	849100(%r13), %rax
	xorl	%r14d, %r14d
	cmpq	%rax, %r12
	setge	%r14b
	movl	%r14d, 100(%rdi)
	incq	%r14
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rcx,%r12,4), %r13d
	movzbl	cofuv_blk_y(%rcx,%r12,4), %edx
	movzbl	subblk_offset_y(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	shll	$4, %r13d
	movl	$-1, %ebp
	movq	16(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_99:                              # %for.body791
                                        #   Parent Loop BB20_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_101
# %bb.100:                              # %for.inc828
                                        #   in Loop: Header=BB20_99 Depth=2
	movzbl	cbp_blk_chroma(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %edx
	movzbl	1(%rbx,%rcx), %esi
	addq	%rcx, %rbx
	addq	$2, %rbx
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%r14,8), %rcx
	addq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r13, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebp
	cmpl	$15, %ebp
	jb	.LBB20_99
.LBB20_101:                             # %for.inc831
                                        #   in Loop: Header=BB20_98 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rcx,%r12,4), %r13d
	movzbl	cofuv_blk_y+1(%rcx,%r12,4), %edx
	movzbl	subblk_offset_y+1(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+1(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	shll	$4, %r13d
	movl	$-1, %ebp
	movq	16(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_102:                             # %for.body791.1
                                        #   Parent Loop BB20_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_104
# %bb.103:                              # %for.inc828.1
                                        #   in Loop: Header=BB20_102 Depth=2
	movzbl	cbp_blk_chroma+1(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %edx
	movzbl	1(%rbx,%rcx), %esi
	addq	%rcx, %rbx
	addq	$2, %rbx
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%r14,8), %rcx
	addq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r13, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebp
	cmpl	$15, %ebp
	jb	.LBB20_102
.LBB20_104:                             # %for.inc831.1
                                        #   in Loop: Header=BB20_98 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rcx,%r12,4), %r13d
	movzbl	cofuv_blk_y+2(%rcx,%r12,4), %edx
	movzbl	subblk_offset_y+2(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+2(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	shll	$4, %r13d
	movl	$-1, %ebp
	movq	16(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_105:                             # %for.body791.2
                                        #   Parent Loop BB20_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_107
# %bb.106:                              # %for.inc828.2
                                        #   in Loop: Header=BB20_105 Depth=2
	movzbl	cbp_blk_chroma+2(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %edx
	movzbl	1(%rbx,%rcx), %esi
	addq	%rcx, %rbx
	addq	$2, %rbx
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%r14,8), %rcx
	addq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r13, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebp
	cmpl	$15, %ebp
	jb	.LBB20_105
.LBB20_107:                             # %for.inc831.2
                                        #   in Loop: Header=BB20_98 Depth=1
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rcx,%r12,4), %r13d
	movzbl	cofuv_blk_y+3(%rcx,%r12,4), %edx
	movzbl	subblk_offset_y+3(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+3(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	shll	$4, %r13d
	movl	$-1, %ebp
	movq	16(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_108:                             # %for.body791.3
                                        #   Parent Loop BB20_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_110
# %bb.109:                              # %for.inc828.3
                                        #   in Loop: Header=BB20_108 Depth=2
	movzbl	cbp_blk_chroma+3(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rbx,%rcx), %edx
	movzbl	1(%rbx,%rcx), %esi
	addq	%rcx, %rbx
	addq	$2, %rbx
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%r14,8), %rcx
	addq	24(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r13, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebp
	cmpl	$15, %ebp
	jb	.LBB20_108
	jmp	.LBB20_110
.LBB20_94:                              # %if.else601
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 88(%rsp)
	addq	%rax, %r15
	cmpl	$0, 92(%rdi)
	movl	849096(%r13), %eax
	jne	.LBB20_96
.LBB20_111:                             # %for.cond608.preheader
	testl	%eax, %eax
	jle	.LBB20_126
# %bb.112:                              # %for.body611.lr.ph
	testb	%dl, %dl
	movl	$SNGL_SCAN+2, %eax
	movl	$FIELD_SCAN+2, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	cmpl	$1, 44(%rsp)                    # 4-byte Folded Reload
	movq	168(%rsp), %rax                 # 8-byte Reload
	cmoveq	200(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movslq	96(%rsp), %rax                  # 4-byte Folded Reload
	xorl	%r12d, %r12d
	shlq	$5, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	jmp	.LBB20_113
	.p2align	4, 0x90
.LBB20_125:                             # %for.inc730.3
                                        #   in Loop: Header=BB20_113 Depth=1
	incq	%r12
	movq	176(%rsp), %r13                 # 8-byte Reload
	movslq	849096(%r13), %rax
	cmpq	%rax, %r12
	jge	.LBB20_126
.LBB20_113:                             # %for.body611
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_114 Depth 2
                                        #     Child Loop BB20_117 Depth 2
                                        #     Child Loop BB20_120 Depth 2
                                        #     Child Loop BB20_123 Depth 2
	movslq	849100(%r13), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %r12
	setge	%cl
	movl	%ecx, 100(%rdi)
	leaq	1(%rcx), %rax
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movslq	188(%rsp,%rcx,4), %r14
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	shll	$7, %eax
	addq	168(%rsp), %rax                 # 8-byte Folded Reload
	shlq	$6, %r14
	addq	%rax, %r14
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzbl	cofuv_blk_x(%rcx,%r12,4), %edx
	movzbl	cofuv_blk_y(%rcx,%r12,4), %ebp
	movzbl	subblk_offset_y(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %ebp
	shll	$4, %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	$-1, %ebx
	movq	120(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_114:                             # %for.body681
                                        #   Parent Loop BB20_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_116
# %bb.115:                              # %for.inc727
                                        #   in Loop: Header=BB20_114 Depth=2
	movzbl	cbp_blk_chroma(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%r13,%rsi), %edx
	movzbl	1(%r13,%rsi), %ecx
	movq	%rdi, %r8
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	1272(%rdi), %rdi
	movq	16(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	%rbp, %rdi
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r14, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzbl	104(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %r13
	addq	$2, %r13
	addl	$8, %eax
	sarl	$4, %eax
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB20_114
.LBB20_116:                             # %for.inc730
                                        #   in Loop: Header=BB20_113 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rcx,%r12,4), %edx
	movzbl	cofuv_blk_y+1(%rcx,%r12,4), %ebp
	movzbl	subblk_offset_y+1(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+1(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %ebp
	shll	$4, %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	$-1, %ebx
	movq	120(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_117:                             # %for.body681.1
                                        #   Parent Loop BB20_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_119
# %bb.118:                              # %for.inc727.1
                                        #   in Loop: Header=BB20_117 Depth=2
	movzbl	cbp_blk_chroma+1(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%r13,%rsi), %edx
	movzbl	1(%r13,%rsi), %ecx
	movq	%rdi, %r8
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	1272(%rdi), %rdi
	movq	16(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	%rbp, %rdi
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r14, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzbl	104(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %r13
	addq	$2, %r13
	addl	$8, %eax
	sarl	$4, %eax
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB20_117
.LBB20_119:                             # %for.inc730.1
                                        #   in Loop: Header=BB20_113 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rcx,%r12,4), %edx
	movzbl	cofuv_blk_y+2(%rcx,%r12,4), %ebp
	movzbl	subblk_offset_y+2(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+2(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %ebp
	shll	$4, %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	$-1, %ebx
	movq	120(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_120:                             # %for.body681.2
                                        #   Parent Loop BB20_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_122
# %bb.121:                              # %for.inc727.2
                                        #   in Loop: Header=BB20_120 Depth=2
	movzbl	cbp_blk_chroma+2(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%r13,%rsi), %edx
	movzbl	1(%r13,%rsi), %ecx
	movq	%rdi, %r8
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	1272(%rdi), %rdi
	movq	16(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	%rbp, %rdi
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r14, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzbl	104(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %r13
	addq	$2, %r13
	addl	$8, %eax
	sarl	$4, %eax
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB20_120
.LBB20_122:                             # %for.inc730.2
                                        #   in Loop: Header=BB20_113 Depth=1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rcx,%r12,4), %edx
	movzbl	cofuv_blk_y+3(%rcx,%r12,4), %ebp
	movzbl	subblk_offset_y+3(%rcx,%r12,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+3(%rcx,%r12,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %ebp
	shll	$4, %edx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movl	$-1, %ebx
	movq	120(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_123:                             # %for.body681.3
                                        #   Parent Loop BB20_113 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	48(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	52(%rsp), %eax
	testl	%eax, %eax
	je	.LBB20_125
# %bb.124:                              # %for.inc727.3
                                        #   in Loop: Header=BB20_123 Depth=2
	movzbl	cbp_blk_chroma+3(,%r12,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	56(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%r13,%rsi), %edx
	movzbl	1(%r13,%rsi), %ecx
	movq	%rdi, %r8
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	1272(%rdi), %rdi
	movq	16(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	%rbp, %rdi
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r14, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzbl	104(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %r13
	addq	$2, %r13
	addl	$8, %eax
	sarl	$4, %eax
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB20_123
	jmp	.LBB20_125
.LBB20_32:                              # %if.else117
	leaq	48(%rsp), %rsi
	movq	%r11, %rdi
	movq	%r11, %rbx
	callq	*40(%rdx)
.LBB20_33:                              # %if.end120
	movl	52(%rsp), %eax
	movl	%eax, 420(%rbx)
	movq	%rbx, %r11
	jmp	.LBB20_34
.Lfunc_end20:
	.size	read_CBP_and_coeffs_from_NAL_CABAC_422, .Lfunc_end20-read_CBP_and_coeffs_from_NAL_CABAC_422
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CABAC_400
	.type	read_CBP_and_coeffs_from_NAL_CABAC_400,@function
read_CBP_and_coeffs_from_NAL_CABAC_400: # @read_CBP_and_coeffs_from_NAL_CABAC_400
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %rbp
	movslq	200(%r14), %rax
	leaq	(%rax,%rax,4), %rax
	cmpl	$0, 848876(%rbp)
	movl	$FIELD_SCAN, %r13d
	jne	.LBB21_2
# %bb.1:                                # %land.end
	cmpl	$0, 384(%rbx)
	movl	$SNGL_SCAN, %ecx
	cmoveq	%rcx, %r13
.LBB21_2:                               # %land.end.thread
	leaq	assignSE2partition(,%rax,4), %r15
	movl	96(%rbx), %r12d
	movzwl	152(%rbx), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	ja	.LBB21_16
# %bb.3:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB21_4
# %bb.15:
	movl	$6, %ecx
.LBB21_16:                              # %lor.end
	movl	%ecx, 24(%rsp)
	movq	312(%r14), %rsi
	movl	%ecx, %ecx
	movzbl	(%r15,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rsi,%rcx), %rdx
	movq	(%rsi,%rcx), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB21_17
# %bb.18:                               # %if.then33
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB21_20
# %bb.19:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB21_20:                              # %cond.end
	leaq	56(%rsp), %rax
	movq	(%r14,%rcx), %rcx
	jmp	.LBB21_21
.LBB21_4:                               # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB21_16
# %bb.5:                                # %if.else137
	movl	284(%rbx), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	leaq	24(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	$17, %ecx
	callq	read_delta_quant
	cmpl	$0, 200(%r14)
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 12(%rsp)                 # 4-byte Spill
	je	.LBB21_50
# %bb.6:                                # %if.then141
	cmpl	$0, 1232(%r14)
	je	.LBB21_8
# %bb.7:                                # %if.then144
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB21_8:                               # %if.end147
	movq	8(%rbx), %rbp
	leaq	849132(%rbp), %r12
	leaq	72(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*856744(%rbp)
	leaq	88(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r12, %rcx
	callq	*856744(%rbp)
	cmpl	$0, 96(%rbx)
	je	.LBB21_10
# %bb.9:                                # %lor.lhs.false.i346
	movq	8(%rbp), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB21_14
.LBB21_10:                              # %if.then.i350
	cmpl	$0, 72(%rsp)
	je	.LBB21_12
# %bb.11:                               # %if.then7.i352
	movq	848888(%rbp), %rax
	movslq	76(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB21_12:                              # %if.end.i359
	cmpl	$0, 88(%rsp)
	je	.LBB21_14
# %bb.13:                               # %if.then14.i361
	movq	848888(%rbp), %rax
	movslq	92(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB21_14:                              # %check_dp_neighbors.exit368
	cmpb	$0, 111(%rbx)
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movl	12(%rsp), %r12d                 # 4-byte Reload
	jne	.LBB21_47
	jmp	.LBB21_51
.LBB21_17:
	leaq	64(%rsp), %rax
	movq	read_CBP_CABAC@GOTPCREL(%rip), %rcx
.LBB21_21:                              # %if.end
	movq	%rcx, (%rax)
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
	movl	28(%rsp), %r13d
	movl	%r13d, 284(%rbx)
	movzwl	152(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB21_26
# %bb.22:                               # %lor.lhs.false58
	testl	%eax, %eax
	jne	.LBB21_25
# %bb.23:                               # %land.lhs.true63
	cmpl	$1, 164(%r14)
	jne	.LBB21_25
# %bb.24:                               # %land.lhs.true66
	movq	16(%rbp), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB21_27
.LBB21_25:                              # %lor.lhs.false68
	cmpl	$0, 424(%rbx)
	je	.LBB21_48
.LBB21_26:                              # %land.lhs.true70
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB21_27
.LBB21_48:                              # %if.end105
	testl	%r13d, %r13d
	je	.LBB21_49
.LBB21_33:                              # %if.then108
	cmpl	$1, 96(%rbx)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	24(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	read_delta_quant
	cmpl	$0, 200(%r14)
	je	.LBB21_61
# %bb.34:                               # %if.then115
	movl	%r13d, 8(%rsp)                  # 4-byte Spill
	cmpl	$0, 96(%rbx)
	jne	.LBB21_37
# %bb.35:                               # %land.lhs.true119
	cmpl	$0, 1236(%r14)
	je	.LBB21_37
# %bb.36:                               # %if.then121
	movb	$1, 111(%rbx)
.LBB21_37:                              # %if.end122
	movl	%r12d, %r13d
	cmpl	$1, %r12d
	jne	.LBB21_40
# %bb.38:                               # %land.lhs.true124
	cmpl	$0, 1232(%r14)
	je	.LBB21_40
# %bb.39:                               # %if.then126
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB21_40:                              # %if.end129
	movq	8(%rbx), %r12
	leaq	849132(%r12), %r15
	leaq	72(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	leaq	88(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r15, %rcx
	callq	*856744(%r12)
	cmpl	$0, 96(%rbx)
	je	.LBB21_42
# %bb.41:                               # %lor.lhs.false.i
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB21_46
.LBB21_42:                              # %if.then.i
	cmpl	$0, 72(%rsp)
	je	.LBB21_44
# %bb.43:                               # %if.then7.i
	movq	848888(%r12), %rax
	movslq	76(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB21_44:                              # %if.end.i
	cmpl	$0, 88(%rsp)
	je	.LBB21_46
# %bb.45:                               # %if.then14.i
	movq	848888(%r12), %rax
	movslq	92(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB21_46:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%rbx)
	movl	%r13d, %r12d
	movl	8(%rsp), %r13d                  # 4-byte Reload
	je	.LBB21_61
.LBB21_47:                              # %if.then132
	movl	$0, 284(%rbx)
	xorl	%r13d, %r13d
	jmp	.LBB21_61
.LBB21_27:                              # %land.lhs.true80
	testb	$15, %r13b
	je	.LBB21_48
# %bb.28:                               # %land.rhs83
	cmpl	$0, 60(%r14)
	je	.LBB21_33
# %bb.29:                               # %if.then87
	movl	$0, 24(%rsp)
	movq	312(%r14), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB21_31
# %bb.30:                               # %if.then97
	movl	$1, 36(%rsp)
	movq	(%rdx), %rsi
	leaq	24(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	jmp	.LBB21_32
.LBB21_49:
	xorl	%r13d, %r13d
	jmp	.LBB21_61
.LBB21_50:                              # %if.end153
	cmpb	$0, 111(%rbx)
	jne	.LBB21_60
.LBB21_51:                              # %if.then156
	movq	312(%r14), %r12
	movzbl	7(%r15), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movl	$0, 48(%rsp)
	movl	$7, 24(%rsp)
	movq	(%r12,%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rdx)
	sete	%dl
	jne	.LBB21_52
# %bb.53:                               # %if.then156
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	jmp	.LBB21_54
.LBB21_52:
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rsi
.LBB21_54:                              # %if.then156
	addq	%rax, %r12
	movb	%dl, %cl
	movq	%rsi, 56(%rsp,%rcx,8)
	movl	$-1, %ebp
	leaq	24(%rsp), %r15
	.p2align	4, 0x90
.LBB21_55:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	*40(%r12)
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	.LBB21_57
# %bb.56:                               # %for.inc
                                        #   in Loop: Header=BB21_55 Depth=1
	movslq	32(%rsp), %rcx
	movzbl	(%r13,%rcx,2), %edx
	movzbl	1(%r13,%rcx,2), %esi
	leaq	2(%r13,%rcx,2), %r13
	movq	1272(%r14), %rcx
	movq	(%rcx), %rcx
	shll	$5, %esi
	movq	(%rcx,%rsi), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%ebp
	cmpl	$16, %ebp
	jb	.LBB21_55
.LBB21_57:                              # %for.end
	cmpl	$0, 92(%rbx)
	jne	.LBB21_59
# %bb.58:                               # %if.then200
	movl	216(%r14), %esi
	movq	%rbx, %rdi
	callq	itrans_2@PLT
.LBB21_59:                              # %if.end203
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movl	12(%rsp), %r12d                 # 4-byte Reload
.LBB21_60:                              # %if.end203
	movl	8(%rsp), %r13d                  # 4-byte Reload
.LBB21_61:                              # %if.end203
	movl	148(%r14), %edx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movl	%edx, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB21_63
# %bb.62:                               # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB21_63:                              # %cond.end.i.i
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB21_65
# %bb.64:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB21_65:                              # %set_chroma_qp.exit.i
	movl	%esi, 76(%rbx)
	addl	849056(%rax), %esi
	movl	%esi, 88(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB21_67
# %bb.66:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB21_67:                              # %update_qp.exit
	movl	%edx, 92(%rbx)
	testl	%r13d, %r13d
	je	.LBB21_71
# %bb.68:                               # %if.then216
	cmpl	$0, 420(%rbx)
	je	.LBB21_70
# %bb.69:                               # %if.then219
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	readCompCoeff8x8MB_CABAC
	jmp	.LBB21_71
.LBB21_70:                              # %if.else220
	movslq	216(%r14), %rax
	movslq	80(%rbx,%rax,4), %rcx
	movq	856032(%rbp), %rdx
	movq	856040(%rbp), %rsi
	movl	(%rdx,%rcx,4), %r8d
	movslq	(%rsi,%rcx,4), %rcx
	shlq	$6, %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$7, %rax
	leaq	2544(%r14), %rdx
	addq	$1392, %r14                     # imm = 0x570
	cmpl	$1, %r12d
	cmovneq	%rdx, %r14
	addq	%rax, %r14
	addq	%rcx, %r14
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movq	%r14, %rcx
	movl	%r13d, %r9d
	callq	readCompCoeff4x4MB_CABAC
.LBB21_71:                              # %if.end239
	addq	$104, %rsp
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
.LBB21_31:                              # %if.else100
	.cfi_def_cfa_offset 160
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
.LBB21_32:                              # %if.end103
	movl	28(%rsp), %eax
	movl	%eax, 420(%rbx)
	jmp	.LBB21_33
.Lfunc_end21:
	.size	read_CBP_and_coeffs_from_NAL_CABAC_400, .Lfunc_end21-read_CBP_and_coeffs_from_NAL_CABAC_400
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CABAC_420
	.type	read_CBP_and_coeffs_from_NAL_CABAC_420,@function
read_CBP_and_coeffs_from_NAL_CABAC_420: # @read_CBP_and_coeffs_from_NAL_CABAC_420
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
	movq	(%rdi), %rbx
	movq	8(%rdi), %r13
	movslq	200(%rbx), %rax
	movl	848776(%r13), %ecx
	cmpl	$4, %ecx
	je	.LBB22_4
# %bb.1:                                # %entry
	cmpl	$3, %ecx
	jne	.LBB22_2
# %bb.3:                                # %land.lhs.true
	cmpl	$0, 96(%rdi)
	jmp	.LBB22_5
.LBB22_4:                               # %land.rhs
	cmpw	$12, 152(%rdi)
.LBB22_5:                               # %lor.end
	sete	%cl
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	leaq	(%rax,%rax,4), %rax
	movq	13520(%rbx), %rcx
	cmpl	$0, 848876(%r13)
	je	.LBB22_8
.LBB22_7:
	movl	$FIELD_SCAN, %r12d
	xorl	%r8d, %r8d
	jmp	.LBB22_9
.LBB22_2:
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	leaq	(%rax,%rax,4), %rax
	movq	13520(%rbx), %rcx
	cmpl	$0, 848876(%r13)
	jne	.LBB22_7
.LBB22_8:                               # %land.end14
	cmpl	$0, 384(%rdi)
	sete	%r8b
	movl	$SNGL_SCAN, %edx
	movl	$FIELD_SCAN, %r12d
	cmoveq	%rdx, %r12
.LBB22_9:                               # %land.end14.thread
	movslq	268(%rcx), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	assignSE2partition(,%rax,4), %r15
	movl	96(%rdi), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movzwl	152(%rdi), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movl	%r8d, 96(%rsp)                  # 4-byte Spill
	ja	.LBB22_24
# %bb.10:                               # %land.end14.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB22_11
# %bb.23:
	movl	$6, %ecx
.LBB22_24:                              # %lor.end39
	movl	%ecx, 40(%rsp)
	movq	312(%rbx), %rsi
	movl	%ecx, %ecx
	movzbl	(%r15,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rsi,%rcx), %rdx
	movq	(%rsi,%rcx), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB22_25
# %bb.26:                               # %if.then49
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB22_28
# %bb.27:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB22_28:                              # %cond.end
	leaq	72(%rsp), %rax
	movq	(%rbx,%rcx), %rcx
	jmp	.LBB22_29
.LBB22_11:                              # %land.end14.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB22_24
# %bb.12:                               # %if.else154
	movl	284(%rdi), %ebp
	movq	%rdi, %rsi
	leaq	40(%rsp), %rdi
	movq	%r15, %rdx
	movl	$17, %ecx
	movq	%rbx, %r14
	movq	%rsi, %rbx
	callq	read_delta_quant
	cmpl	$0, 200(%r14)
	je	.LBB22_59
# %bb.13:                               # %if.then158
	cmpl	$0, 1232(%r14)
	movq	%rbx, %rdi
	je	.LBB22_15
# %bb.14:                               # %if.then161
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB22_15:                              # %if.end164
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r14
	leaq	136(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leaq	112(%rsp), %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpl	$0, 96(%rdi)
	je	.LBB22_17
# %bb.16:                               # %lor.lhs.false.i998
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB22_21
.LBB22_17:                              # %if.then.i1002
	cmpl	$0, 136(%rsp)
	je	.LBB22_19
# %bb.18:                               # %if.then7.i1004
	movq	848888(%rbx), %rax
	movslq	140(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rdi)
.LBB22_19:                              # %if.end.i1011
	cmpl	$0, 112(%rsp)
	je	.LBB22_21
# %bb.20:                               # %if.then14.i1013
	movq	848888(%rbx), %rax
	movslq	116(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rdi)
.LBB22_21:                              # %check_dp_neighbors.exit1020
	cmpb	$0, 111(%rdi)
	je	.LBB22_61
# %bb.22:                               # %if.end170.thread1076
	movl	$0, 284(%rdi)
	xorl	%ebp, %ebp
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_71
.LBB22_25:
	leaq	80(%rsp), %rax
	movq	read_CBP_CABAC@GOTPCREL(%rip), %rcx
.LBB22_29:                              # %if.end
	movq	%rcx, (%rax)
	leaq	40(%rsp), %rsi
	callq	*40(%rdx)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %ebp
	movl	%ebp, 284(%rdi)
	movzwl	152(%rdi), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB22_34
# %bb.30:                               # %lor.lhs.false75
	testl	%eax, %eax
	jne	.LBB22_33
# %bb.31:                               # %land.lhs.true80
	cmpl	$1, 164(%rbx)
	jne	.LBB22_33
# %bb.32:                               # %land.lhs.true83
	movq	16(%r13), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB22_35
.LBB22_33:                              # %lor.lhs.false85
	cmpl	$0, 424(%rdi)
	je	.LBB22_43
.LBB22_34:                              # %land.lhs.true87
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB22_35
.LBB22_43:                              # %if.end122
	testl	%ebp, %ebp
	je	.LBB22_44
.LBB22_41:                              # %if.then125
	cmpl	$1, 96(%rdi)
	movl	$17, %ecx
	sbbl	$0, %ecx
	movq	%rdi, %rsi
	leaq	40(%rsp), %rdi
	movq	%r15, %rdx
	movq	%rbx, %r14
	movq	%rsi, %rbx
	callq	read_delta_quant
	cmpl	$0, 200(%r14)
	je	.LBB22_42
# %bb.45:                               # %if.then132
	cmpl	$0, 96(%rbx)
	movq	%rbx, %rdi
	movq	(%rsp), %rax                    # 8-byte Reload
	jne	.LBB22_48
# %bb.46:                               # %land.lhs.true136
	cmpl	$0, 1236(%rax)
	je	.LBB22_48
# %bb.47:                               # %if.then138
	movb	$1, 111(%rdi)
.LBB22_48:                              # %if.end139
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	jne	.LBB22_51
# %bb.49:                               # %land.lhs.true141
	cmpl	$0, 1232(%rax)
	je	.LBB22_51
# %bb.50:                               # %if.then143
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB22_51:                              # %if.end146
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r14
	leaq	136(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leaq	112(%rsp), %r8
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpl	$0, 96(%rdi)
	je	.LBB22_53
# %bb.52:                               # %lor.lhs.false.i
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB22_57
.LBB22_53:                              # %if.then.i
	cmpl	$0, 136(%rsp)
	je	.LBB22_55
# %bb.54:                               # %if.then7.i
	movq	848888(%rbx), %rax
	movslq	140(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rdi)
.LBB22_55:                              # %if.end.i
	cmpl	$0, 112(%rsp)
	je	.LBB22_57
# %bb.56:                               # %if.then14.i
	movq	848888(%rbx), %rax
	movslq	116(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rdi)
.LBB22_57:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%rdi)
	movq	(%rsp), %rbx                    # 8-byte Reload
	je	.LBB22_71
# %bb.58:                               # %if.then149
	movl	$0, 284(%rdi)
	xorl	%ebp, %ebp
	jmp	.LBB22_71
.LBB22_35:                              # %land.lhs.true97
	testb	$15, %bpl
	je	.LBB22_43
# %bb.36:                               # %land.rhs100
	cmpl	$0, 60(%rbx)
	je	.LBB22_41
# %bb.37:                               # %if.then104
	movl	$0, 40(%rsp)
	movq	312(%rbx), %rdx
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 80(%rsp)
	movq	(%rdx), %rax
	cmpl	$0, 24(%rax)
	je	.LBB22_39
# %bb.38:                               # %if.then114
	movl	$1, 52(%rsp)
	movq	(%rdx), %rsi
	movq	%rdi, %rbx
	leaq	40(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	jmp	.LBB22_40
.LBB22_44:
	xorl	%ebp, %ebp
	jmp	.LBB22_71
.LBB22_42:
	movq	%rbx, %rdi
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_71
.LBB22_59:                              # %if.end170
	cmpb	$0, 111(%rbx)
	movq	%rbx, %rdi
	je	.LBB22_61
# %bb.60:
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_71
.LBB22_61:                              # %if.then173
	movl	%ebp, 88(%rsp)                  # 4-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%r15, %rcx
	movq	312(%rax), %r15
	movq	%rcx, %rbp
	movzbl	7(%rcx), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movl	$0, 64(%rsp)
	movl	$7, 40(%rsp)
	movq	(%r15,%rax), %rdx
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rdx)
	sete	%dl
	jne	.LBB22_62
# %bb.63:                               # %if.then173
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	jmp	.LBB22_64
.LBB22_62:
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rsi
.LBB22_64:                              # %if.then173
	addq	%rax, %r15
	movb	%dl, %cl
	movq	%rsi, 72(%rsp,%rcx,8)
	movl	$-1, %ebx
	leaq	40(%rsp), %r14
	.p2align	4, 0x90
.LBB22_65:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_67
# %bb.66:                               # %for.inc
                                        #   in Loop: Header=BB22_65 Depth=1
	movslq	48(%rsp), %rcx
	movzbl	(%r12,%rcx,2), %edx
	movzbl	1(%r12,%rcx,2), %esi
	leaq	(%r12,%rcx,2), %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx), %rcx
	shll	$5, %esi
	movq	(%rcx,%rsi), %rcx
	shll	$4, %edx
	movl	%eax, (%rcx,%rdx)
	incl	%ebx
	cmpl	$16, %ebx
	jb	.LBB22_65
.LBB22_67:                              # %for.end
	cmpl	$0, 92(%rdi)
	je	.LBB22_69
# %bb.68:
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_70
.LBB22_69:                              # %if.then217
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	216(%rbx), %esi
	callq	itrans_2@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
.LBB22_70:                              # %if.end220
	movq	%rbp, %r15
	movl	88(%rsp), %ebp                  # 4-byte Reload
.LBB22_71:                              # %if.end220
	movl	148(%rbx), %edx
	movq	(%rdi), %rsi
	movq	8(%rdi), %rax
	movl	%edx, 68(%rdi)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movq	%rdi, %r11
	movl	%ecx, 80(%rdi)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB22_73
# %bb.72:                               # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB22_73:                              # %cond.end.i.i
	movl	%r9d, 72(%r11)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%r11)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB22_75
# %bb.74:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB22_75:                              # %set_chroma_qp.exit.i
	movq	%r11, %rdi
	movl	%esi, 76(%r11)
	addl	849056(%rax), %esi
	movl	%esi, 88(%r11)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB22_77
# %bb.76:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB22_77:                              # %update_qp.exit
	movl	%edx, 92(%rdi)
	testl	%ebp, %ebp
	je	.LBB22_82
# %bb.78:                               # %if.then233
	cmpl	$0, 420(%rdi)
	je	.LBB22_80
# %bb.79:                               # %if.then236
	leaq	40(%rsp), %rsi
	xorl	%edx, %edx
	callq	readCompCoeff8x8MB_CABAC
	jmp	.LBB22_81
.LBB22_80:                              # %if.else237
	movslq	216(%rbx), %rax
	movslq	80(%rdi,%rax,4), %rcx
	movq	856032(%r13), %rdx
	movq	856040(%r13), %rsi
	movl	(%rdx,%rcx,4), %r8d
	movslq	(%rsi,%rcx,4), %rdx
	shlq	$6, %rdx
	leaq	(%rax,%rax,2), %rax
	shlq	$7, %rax
	leaq	2544(%rbx), %rcx
	leaq	1392(%rbx), %rsi
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	cmoveq	%rsi, %rcx
	addq	%rax, %rcx
	addq	%rdx, %rcx
	leaq	40(%rsp), %rsi
	xorl	%edx, %edx
	movl	%ebp, %r9d
	callq	readCompCoeff4x4MB_CABAC
.LBB22_81:                              # %if.end256
	movq	8(%rsp), %rdi                   # 8-byte Reload
.LBB22_82:                              # %if.end256
	movq	856032(%r13), %rax
	movq	856040(%r13), %rcx
	movslq	84(%rdi), %rdx
	movl	(%rax,%rdx,4), %r10d
	movl	%r10d, 136(%rsp)
	movslq	(%rcx,%rdx,4), %r12
	movl	%r12d, 176(%rsp)
	movslq	88(%rdi), %rdx
	movl	(%rax,%rdx,4), %r8d
	movl	%r8d, 140(%rsp)
	movslq	(%rcx,%rdx,4), %r9
	movl	%r9d, 180(%rsp)
	cmpl	$16, %ebp
	jl	.LBB22_140
# %bb.83:                               # %for.cond285.preheader
	movq	(%rsp), %rdx                    # 8-byte Reload
	leaq	2544(%rdx), %rcx
	leaq	1392(%rdx), %rsi
	xorl	%eax, %eax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	setne	%al
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, %r11
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	cmoveq	%rsi, %r11
	leal	8(%rax,%rax,4), %eax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1288(%rdx)
	movl	$0, 100(%rdi)
	movl	$6, 64(%rsp)
	movl	%eax, 40(%rsp)
	movq	312(%rdx), %r14
	movzbl	(%r15,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%r14,%rax), %rcx
	cmpl	$0, 24(%rcx)
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movl	%ebp, 88(%rsp)                  # 4-byte Spill
	movl	%r8d, 164(%rsp)                 # 4-byte Spill
	movq	%r9, 192(%rsp)                  # 8-byte Spill
	movl	%r10d, 160(%rsp)                # 4-byte Spill
	movq	%r11, 184(%rsp)                 # 8-byte Spill
	je	.LBB22_85
# %bb.84:                               # %if.then326
	movq	linfo_levrun_c2x2@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	leaq	1288(%rdx), %r15
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	cmpl	$0, 849104(%r13)
	jns	.LBB22_87
	jmp	.LBB22_90
.LBB22_85:                              # %if.else328
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 80(%rsp)
	leaq	1288(%rdx), %r15
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	cmpl	$0, 849104(%r13)
	js	.LBB22_90
.LBB22_87:                              # %for.body340.lr.ph
	addq	%rax, %r14
	movl	$-1, %ebx
	leaq	40(%rsp), %rbp
	movl	$-1, %r13d
	.p2align	4, 0x90
.LBB22_88:                              # %for.body340
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	*40(%r14)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_90
# %bb.89:                               # %for.inc358
                                        #   in Loop: Header=BB22_88 Depth=1
	orb	$15, 290(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %r13d
	incl	%r13d
	movslq	%r13d, %rcx
	movl	%eax, (%r15,%rcx,4)
	incl	%ebx
	movq	128(%rsp), %rax                 # 8-byte Reload
	cmpl	849104(%rax), %ebx
	jl	.LBB22_88
.LBB22_90:                              # %for.end360
	cmpb	$0, 24(%rsp)                    # 1-byte Folded Reload
	jne	.LBB22_92
# %bb.91:                               # %lor.lhs.false362
	cmpl	$1, 92(%rdi)
	jne	.LBB22_93
.LBB22_92:                              # %if.then366
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	1288(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1292(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	1296(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1300(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	jmp	.LBB22_94
.LBB22_93:                              # %if.else399
	shlq	$6, %r12
	movq	184(%rsp), %rax                 # 8-byte Reload
	addq	%r12, %rax
	addq	$384, %rax                      # imm = 0x180
	movl	(%rax), %ebp
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	ihadamard2x2@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	112(%rsp), %eax
	imull	%ebp, %eax
	movl	160(%rsp), %ecx                 # 4-byte Reload
	shll	%cl, %eax
	sarl	$5, %eax
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	1272(%rdx), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, (%rsi)
	movl	116(%rsp), %eax
	imull	%ebp, %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	8(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, 16(%rsi)
	movl	120(%rsp), %eax
	imull	%ebp, %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	8(%rsi), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, (%rsi)
	imull	124(%rsp), %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	sarl	$5, %ebp
	movq	1272(%rdx), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movl	%ebp, 16(%rax)
.LBB22_94:                              # %for.inc454
	xorl	%eax, %eax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	setne	%al
	movq	152(%rsp), %r12                 # 8-byte Reload
	cmoveq	168(%rsp), %r12                 # 8-byte Folded Reload
	leal	8(%rax,%rax,4), %eax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	movl	$2, 100(%rdi)
	movl	$6, 64(%rsp)
	movl	%eax, 40(%rsp)
	movq	312(%rdx), %r14
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%r14,%rax), %rcx
	cmpl	$0, 24(%rcx)
	movq	128(%rsp), %rdx                 # 8-byte Reload
	je	.LBB22_96
# %bb.95:                               # %if.then326.1
	movq	linfo_levrun_c2x2@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	cmpl	$0, 849104(%rdx)
	jns	.LBB22_98
	jmp	.LBB22_101
.LBB22_96:                              # %if.else328.1
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 80(%rsp)
	cmpl	$0, 849104(%rdx)
	js	.LBB22_101
.LBB22_98:                              # %for.body340.lr.ph.1
	addq	%rax, %r14
	movl	$-1, %ebx
	leaq	40(%rsp), %r13
	movl	$-1, %ebp
	.p2align	4, 0x90
.LBB22_99:                              # %for.body340.1
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	*40(%r14)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_101
# %bb.100:                              # %for.inc358.1
                                        #   in Loop: Header=BB22_99 Depth=1
	orb	$-16, 290(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ebp
	incl	%ebp
	movslq	%ebp, %rcx
	movl	%eax, (%r15,%rcx,4)
	incl	%ebx
	movq	128(%rsp), %rax                 # 8-byte Reload
	cmpl	849104(%rax), %ebx
	jl	.LBB22_99
.LBB22_101:                             # %for.end360.1
	cmpb	$0, 24(%rsp)                    # 1-byte Folded Reload
	jne	.LBB22_104
# %bb.102:                              # %lor.lhs.false362.1
	cmpl	$1, 92(%rdi)
	jne	.LBB22_103
.LBB22_104:                             # %if.then366.1
	movq	(%rsp), %rdx                    # 8-byte Reload
	movl	1288(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1292(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	1296(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1300(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	jmp	.LBB22_105
.LBB22_103:                             # %if.else399.1
	movq	192(%rsp), %rax                 # 8-byte Reload
	shlq	$6, %rax
	addq	%r12, %rax
	addq	$768, %rax                      # imm = 0x300
	movl	(%rax), %ebp
	leaq	112(%rsp), %rsi
	movq	%r15, %rdi
	callq	ihadamard2x2@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	112(%rsp), %eax
	imull	%ebp, %eax
	movl	164(%rsp), %ecx                 # 4-byte Reload
	shll	%cl, %eax
	sarl	$5, %eax
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, (%rsi)
	movl	116(%rsp), %eax
	imull	%ebp, %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, 16(%rsi)
	movl	120(%rsp), %eax
	imull	%ebp, %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, (%rsi)
	imull	124(%rsp), %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	sarl	$5, %ebp
	movq	1272(%rdx), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movl	%ebp, 16(%rax)
.LBB22_105:                             # %for.inc454.1
	movq	104(%rsp), %r8                  # 8-byte Reload
	cmpl	$32, 88(%rsp)                   # 4-byte Folded Reload
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movl	96(%rsp), %esi                  # 4-byte Reload
	jl	.LBB22_140
# %bb.106:                              # %if.then460
	movl	$7, 64(%rsp)
	xorl	%eax, %eax
	cmpl	$0, 96(%rdi)
	sete	%al
	leal	(%rax,%rax,4), %ecx
	leal	10(%rax,%rax,4), %eax
	movl	%eax, 40(%rsp)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	312(%rax), %r15
	movzbl	10(%rcx,%r8), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%r15,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB22_108
# %bb.107:                              # %if.then475
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB22_109
.LBB22_108:                             # %if.else477
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 80(%rsp)
.LBB22_109:                             # %if.end479
	decq	32(%rsp)                        # 8-byte Folded Spill
	addq	%rax, %r15
	cmpl	$0, 92(%rdi)
	movl	849096(%rdx), %eax
	je	.LBB22_125
# %bb.110:                              # %for.cond619.preheader
	testl	%eax, %eax
	jle	.LBB22_140
# %bb.111:                              # %for.body623.lr.ph
	testb	%sil, %sil
	movl	$SNGL_SCAN+2, %eax
	movl	$FIELD_SCAN+2, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	shlq	$5, 32(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB22_112
	.p2align	4, 0x90
.LBB22_124:                             # %for.inc713.3
                                        #   in Loop: Header=BB22_112 Depth=1
	incq	%r13
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movslq	849096(%rdx), %rax
	cmpq	%rax, %r13
	jge	.LBB22_140
.LBB22_112:                             # %for.body623
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_113 Depth 2
                                        #     Child Loop BB22_116 Depth 2
                                        #     Child Loop BB22_119 Depth 2
                                        #     Child Loop BB22_122 Depth 2
	movslq	849100(%rdx), %rax
	xorl	%ebp, %ebp
	cmpq	%rax, %r13
	setge	%bpl
	movl	%ebp, 100(%rdi)
	incq	%rbp
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rcx,%r13,4), %r14d
	movzbl	cofuv_blk_y(%rcx,%r13,4), %edx
	movzbl	subblk_offset_y(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shll	$4, %r14d
	movl	$-1, %ebx
	movq	24(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_113:                             # %for.body673
                                        #   Parent Loop BB22_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_115
# %bb.114:                              # %for.inc710
                                        #   in Loop: Header=BB22_113 Depth=2
	movzbl	cbp_blk_chroma(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r12,%rcx), %edx
	movzbl	1(%r12,%rcx), %esi
	addq	%rcx, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%rbp,8), %rcx
	addq	16(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r14, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB22_113
.LBB22_115:                             # %for.inc713
                                        #   in Loop: Header=BB22_112 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rcx,%r13,4), %r14d
	movzbl	cofuv_blk_y+1(%rcx,%r13,4), %edx
	movzbl	subblk_offset_y+1(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+1(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shll	$4, %r14d
	movl	$-1, %ebx
	movq	24(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_116:                             # %for.body673.1
                                        #   Parent Loop BB22_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_118
# %bb.117:                              # %for.inc710.1
                                        #   in Loop: Header=BB22_116 Depth=2
	movzbl	cbp_blk_chroma+1(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r12,%rcx), %edx
	movzbl	1(%r12,%rcx), %esi
	addq	%rcx, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%rbp,8), %rcx
	addq	16(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r14, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB22_116
.LBB22_118:                             # %for.inc713.1
                                        #   in Loop: Header=BB22_112 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rcx,%r13,4), %r14d
	movzbl	cofuv_blk_y+2(%rcx,%r13,4), %edx
	movzbl	subblk_offset_y+2(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+2(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shll	$4, %r14d
	movl	$-1, %ebx
	movq	24(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_119:                             # %for.body673.2
                                        #   Parent Loop BB22_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_121
# %bb.120:                              # %for.inc710.2
                                        #   in Loop: Header=BB22_119 Depth=2
	movzbl	cbp_blk_chroma+2(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r12,%rcx), %edx
	movzbl	1(%r12,%rcx), %esi
	addq	%rcx, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%rbp,8), %rcx
	addq	16(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r14, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB22_119
.LBB22_121:                             # %for.inc713.2
                                        #   in Loop: Header=BB22_112 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rcx,%r13,4), %r14d
	movzbl	cofuv_blk_y+3(%rcx,%r13,4), %edx
	movzbl	subblk_offset_y+3(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+3(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %edx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shll	$4, %r14d
	movl	$-1, %ebx
	movq	24(%rsp), %r12                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_122:                             # %for.body673.3
                                        #   Parent Loop BB22_112 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_124
# %bb.123:                              # %for.inc710.3
                                        #   in Loop: Header=BB22_122 Depth=2
	movzbl	cbp_blk_chroma+3(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r12,%rcx), %edx
	movzbl	1(%r12,%rcx), %esi
	addq	%rcx, %r12
	addq	$2, %r12
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	1272(%rcx), %rcx
	movq	(%rcx,%rbp,8), %rcx
	addq	16(%rsp), %rcx                  # 8-byte Folded Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r14, %rcx
	movl	%eax, (%rcx,%rdx,4)
	incl	%ebx
	cmpl	$15, %ebx
	jb	.LBB22_122
	jmp	.LBB22_124
.LBB22_125:                             # %for.cond486.preheader
	testl	%eax, %eax
	jle	.LBB22_140
# %bb.126:                              # %for.body489.lr.ph
	testb	%sil, %sil
	movl	$SNGL_SCAN+2, %eax
	movl	$FIELD_SCAN+2, %ecx
	cmovneq	%rax, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	movq	152(%rsp), %rax                 # 8-byte Reload
	cmoveq	168(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movslq	32(%rsp), %rax                  # 4-byte Folded Reload
	xorl	%r13d, %r13d
	shlq	$5, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_127
	.p2align	4, 0x90
.LBB22_139:                             # %for.inc608.3
                                        #   in Loop: Header=BB22_127 Depth=1
	incq	%r13
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movslq	849096(%rdx), %rax
	cmpq	%rax, %r13
	jge	.LBB22_140
.LBB22_127:                             # %for.body489
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_128 Depth 2
                                        #     Child Loop BB22_131 Depth 2
                                        #     Child Loop BB22_134 Depth 2
                                        #     Child Loop BB22_137 Depth 2
	movslq	849100(%rdx), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %r13
	setge	%cl
	movl	%ecx, 100(%rdi)
	leaq	1(%rcx), %rax
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movslq	176(%rsp,%rcx,4), %r12
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	shll	$7, %eax
	addq	152(%rsp), %rax                 # 8-byte Folded Reload
	shlq	$6, %r12
	addq	%rax, %r12
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rcx,%r13,4), %edx
	movzbl	cofuv_blk_y(%rcx,%r13,4), %esi
	movzbl	subblk_offset_y(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %esi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	shll	$4, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	$-1, %r14d
	movq	104(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB22_128:                             # %for.body559
                                        #   Parent Loop BB22_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_130
# %bb.129:                              # %for.inc605
                                        #   in Loop: Header=BB22_128 Depth=2
	movzbl	cbp_blk_chroma(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rbp,%rsi), %edx
	movzbl	1(%rbp,%rsi), %ecx
	movq	%rdi, %r8
	movq	1272(%rbx), %rdi
	movq	32(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	96(%rsp), %rdi                  # 8-byte Folded Reload
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r12, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	136(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %rbp
	addq	$2, %rbp
	addl	$8, %eax
	sarl	$4, %eax
	addq	24(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%r14d
	cmpl	$15, %r14d
	jb	.LBB22_128
.LBB22_130:                             # %for.inc608
                                        #   in Loop: Header=BB22_127 Depth=1
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rcx,%r13,4), %edx
	movzbl	cofuv_blk_y+1(%rcx,%r13,4), %esi
	movzbl	subblk_offset_y+1(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+1(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %esi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	shll	$4, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	$-1, %r14d
	movq	104(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB22_131:                             # %for.body559.1
                                        #   Parent Loop BB22_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_133
# %bb.132:                              # %for.inc605.1
                                        #   in Loop: Header=BB22_131 Depth=2
	movzbl	cbp_blk_chroma+1(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rbp,%rsi), %edx
	movzbl	1(%rbp,%rsi), %ecx
	movq	%rdi, %r8
	movq	1272(%rbx), %rdi
	movq	32(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	96(%rsp), %rdi                  # 8-byte Folded Reload
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r12, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	136(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %rbp
	addq	$2, %rbp
	addl	$8, %eax
	sarl	$4, %eax
	addq	24(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%r14d
	cmpl	$15, %r14d
	jb	.LBB22_131
.LBB22_133:                             # %for.inc608.1
                                        #   in Loop: Header=BB22_127 Depth=1
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rcx,%r13,4), %edx
	movzbl	cofuv_blk_y+2(%rcx,%r13,4), %esi
	movzbl	subblk_offset_y+2(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+2(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %esi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	shll	$4, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	$-1, %r14d
	movq	104(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB22_134:                             # %for.body559.2
                                        #   Parent Loop BB22_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_136
# %bb.135:                              # %for.inc605.2
                                        #   in Loop: Header=BB22_134 Depth=2
	movzbl	cbp_blk_chroma+2(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rbp,%rsi), %edx
	movzbl	1(%rbp,%rsi), %ecx
	movq	%rdi, %r8
	movq	1272(%rbx), %rdi
	movq	32(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	96(%rsp), %rdi                  # 8-byte Folded Reload
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r12, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	136(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %rbp
	addq	$2, %rbp
	addl	$8, %eax
	sarl	$4, %eax
	addq	24(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%r14d
	cmpl	$15, %r14d
	jb	.LBB22_134
.LBB22_136:                             # %for.inc608.2
                                        #   in Loop: Header=BB22_127 Depth=1
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rcx,%r13,4), %edx
	movzbl	cofuv_blk_y+3(%rcx,%r13,4), %esi
	movzbl	subblk_offset_y+3(%rcx,%r13,4), %eax
	movl	%eax, 64(%rdi)
	movzbl	subblk_offset_x+3(%rcx,%r13,4), %eax
	movl	%eax, 60(%rdi)
	shll	$5, %esi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	shll	$4, %edx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movl	$-1, %r14d
	movq	104(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB22_137:                             # %for.body559.3
                                        #   Parent Loop BB22_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	40(%rsp), %rsi
	movq	%r15, %rdx
	callq	*40(%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	.LBB22_139
# %bb.138:                              # %for.inc605.3
                                        #   in Loop: Header=BB22_137 Depth=2
	movzbl	cbp_blk_chroma+3(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	48(%rsp), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rbp,%rsi), %edx
	movzbl	1(%rbp,%rsi), %ecx
	movq	%rdi, %r8
	movq	1272(%rbx), %rdi
	movq	32(%rsp), %r9                   # 8-byte Reload
	movq	(%rdi,%r9,8), %rdi
	addq	96(%rsp), %rdi                  # 8-byte Folded Reload
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	addq	%r12, %rcx
	shll	$2, %edx
	imull	(%rdx,%rcx), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movzbl	136(%rsp,%rcx,4), %ecx
	shll	%cl, %eax
	addq	%rsi, %rbp
	addq	$2, %rbp
	addl	$8, %eax
	sarl	$4, %eax
	addq	24(%rsp), %rdi                  # 8-byte Folded Reload
	movl	%eax, (%rdx,%rdi)
	movq	%r8, %rdi
	incl	%r14d
	cmpl	$15, %r14d
	jb	.LBB22_137
	jmp	.LBB22_139
.LBB22_140:                             # %if.end720
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
.LBB22_39:                              # %if.else117
	.cfi_def_cfa_offset 256
	leaq	40(%rsp), %rsi
	movq	%rdi, %rbx
	callq	*40(%rdx)
.LBB22_40:                              # %if.end120
	movl	44(%rsp), %eax
	movl	%eax, 420(%rbx)
	movq	%rbx, %rdi
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB22_41
.Lfunc_end22:
	.size	read_CBP_and_coeffs_from_NAL_CABAC_420, .Lfunc_end22-read_CBP_and_coeffs_from_NAL_CABAC_420
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CAVLC_444
	.type	read_CBP_and_coeffs_from_NAL_CAVLC_444,@function
read_CBP_and_coeffs_from_NAL_CAVLC_444: # @read_CBP_and_coeffs_from_NAL_CAVLC_444
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movslq	200(%r13), %rax
	leaq	(%rax,%rax,4), %rax
	movq	8(%rdi), %r15
	movl	$FIELD_SCAN, %r12d
	cmpl	$0, 848876(%r15)
	jne	.LBB23_2
# %bb.1:                                # %land.end
	cmpl	$0, 384(%rbx)
	movl	$SNGL_SCAN, %ecx
	cmoveq	%rcx, %r12
.LBB23_2:                               # %land.end.thread
	movslq	24(%rbx), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	leaq	assignSE2partition(,%rax,4), %r14
	movl	96(%rbx), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movzwl	152(%rbx), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	ja	.LBB23_16
# %bb.3:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB23_4
# %bb.15:
	movl	$6, %ecx
.LBB23_16:                              # %lor.end
	movl	%ecx, 48(%rsp)
	movl	%ecx, %ecx
	movzbl	(%r14,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shll	$4, %edx
	addq	312(%r13), %rdx
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB23_18
# %bb.17:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB23_18:                              # %cond.end
	movq	(%r13,%rcx), %rax
	movq	%rax, 80(%rsp)
	leaq	48(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
	movl	52(%rsp), %ebp
	movl	%ebp, 284(%rbx)
	movzwl	152(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB23_23
# %bb.19:                               # %lor.lhs.false56
	testl	%eax, %eax
	jne	.LBB23_22
# %bb.20:                               # %land.lhs.true61
	cmpl	$1, 164(%r13)
	jne	.LBB23_22
# %bb.21:                               # %land.lhs.true64
	movq	16(%r15), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB23_24
.LBB23_22:                              # %lor.lhs.false66
	cmpl	$0, 424(%rbx)
	je	.LBB23_42
.LBB23_23:                              # %land.lhs.true68
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB23_24
.LBB23_42:                              # %if.end
	testl	%ebp, %ebp
	je	.LBB23_43
.LBB23_27:                              # %if.then95
	cmpl	$1, 96(%rbx)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	48(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	read_delta_quant
	cmpl	$0, 200(%r13)
	je	.LBB23_52
# %bb.28:                               # %if.then102
	cmpl	$0, 96(%rbx)
	jne	.LBB23_31
# %bb.29:                               # %land.lhs.true106
	cmpl	$0, 1236(%r13)
	je	.LBB23_31
# %bb.30:                               # %if.then108
	movb	$1, 111(%rbx)
.LBB23_31:                              # %if.end109
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	jne	.LBB23_34
# %bb.32:                               # %land.lhs.true111
	cmpl	$0, 1232(%r13)
	je	.LBB23_34
# %bb.33:                               # %if.then113
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB23_34:                              # %if.end115
	movq	8(%rbx), %rbp
	leaq	849132(%rbp), %r14
	leaq	96(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbp)
	leaq	160(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbp)
	cmpl	$0, 96(%rbx)
	je	.LBB23_36
# %bb.35:                               # %lor.lhs.false.i
	movq	8(%rbp), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB23_40
.LBB23_36:                              # %if.then.i
	cmpl	$0, 96(%rsp)
	je	.LBB23_38
# %bb.37:                               # %if.then7.i
	movq	848888(%rbp), %rax
	movslq	100(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB23_38:                              # %if.end.i
	cmpl	$0, 160(%rsp)
	je	.LBB23_40
# %bb.39:                               # %if.then14.i
	movq	848888(%rbp), %rax
	movslq	164(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB23_40:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%rbx)
	movl	12(%rsp), %ebp                  # 4-byte Reload
	jne	.LBB23_41
	jmp	.LBB23_52
.LBB23_4:                               # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB23_16
# %bb.5:                                # %if.else
	movl	284(%rbx), %ebp
	leaq	48(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$17, %ecx
	callq	read_delta_quant
	cmpl	$0, 200(%r13)
	je	.LBB23_44
# %bb.6:                                # %if.then126
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	cmpl	$0, 1232(%r13)
	je	.LBB23_8
# %bb.7:                                # %if.then129
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB23_8:                               # %if.end132
	movq	8(%rbx), %rbp
	leaq	849132(%rbp), %r14
	leaq	96(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbp)
	leaq	160(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbp)
	cmpl	$0, 96(%rbx)
	je	.LBB23_10
# %bb.9:                                # %lor.lhs.false.i625
	movq	8(%rbp), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB23_14
.LBB23_10:                              # %if.then.i629
	cmpl	$0, 96(%rsp)
	je	.LBB23_12
# %bb.11:                               # %if.then7.i631
	movq	848888(%rbp), %rax
	movslq	100(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB23_12:                              # %if.end.i638
	cmpl	$0, 160(%rsp)
	je	.LBB23_14
# %bb.13:                               # %if.then14.i640
	movq	848888(%rbp), %rax
	movslq	164(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB23_14:                              # %check_dp_neighbors.exit647
	cmpb	$0, 111(%rbx)
	movl	12(%rsp), %ebp                  # 4-byte Reload
	je	.LBB23_45
.LBB23_41:                              # %if.then118
	movl	$0, 284(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB23_52
.LBB23_24:                              # %land.lhs.true78
	testb	$15, %bpl
	je	.LBB23_42
# %bb.25:                               # %land.rhs81
	cmpl	$0, 60(%r13)
	je	.LBB23_27
# %bb.26:                               # %if.then85
	movl	$0, 48(%rsp)
	movq	312(%r13), %rax
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 88(%rsp)
	movl	$1, 60(%rsp)
	movq	(%rax), %rsi
	leaq	48(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	52(%rsp), %eax
	movl	%eax, 420(%rbx)
	jmp	.LBB23_27
.LBB23_43:
	xorl	%ebp, %ebp
	jmp	.LBB23_52
.LBB23_44:                              # %if.end138
	cmpb	$0, 111(%rbx)
	jne	.LBB23_52
.LBB23_45:                              # %if.then141
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	160(%rsp), %r8
	leaq	96(%rsp), %r9
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB23_50
# %bb.46:                               # %for.body.lr.ph
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	jmp	.LBB23_47
	.p2align	4, 0x90
.LBB23_49:                              # %for.inc
                                        #   in Loop: Header=BB23_47 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB23_50
.LBB23_47:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	160(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB23_49
# %bb.48:                               # %if.then152
                                        #   in Loop: Header=BB23_47 Depth=1
	movslq	96(%rsp,%rcx,4), %rdi
	movzbl	(%rdx,%rdi,2), %r8d
	movzbl	1(%rdx,%rdi,2), %r9d
	leaq	(%rdx,%rdi,2), %rdx
	addq	$2, %rdx
	movq	1272(%r13), %rdi
	movq	(%rdi), %rdi
	shll	$5, %r9d
	movq	(%rdi,%r9), %rdi
	shll	$4, %r8d
	movl	%esi, (%rdi,%r8)
	jmp	.LBB23_49
.LBB23_50:                              # %for.end
	cmpl	$0, 92(%rbx)
	jne	.LBB23_52
# %bb.51:                               # %if.then169
	movl	216(%r13), %esi
	movq	%rbx, %rdi
	callq	itrans_2@PLT
.LBB23_52:                              # %if.end172
	movl	148(%r13), %edx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movl	%edx, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB23_54
# %bb.53:                               # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB23_54:                              # %cond.end.i.i
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB23_56
# %bb.55:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB23_56:                              # %set_chroma_qp.exit.i
	movl	%esi, 76(%rbx)
	addl	849056(%rax), %esi
	movl	%esi, 88(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB23_58
# %bb.57:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB23_58:                              # %update_qp.exit
	movl	%edx, 92(%rbx)
	movslq	216(%r13), %rax
	movslq	80(%rbx,%rax,4), %rcx
	movq	856040(%r15), %rdx
	movslq	(%rdx,%rcx,4), %rsi
	movq	%rax, %rdx
	shlq	$7, %rdx
	leaq	(%rdx,%rdx,2), %rdx
	leaq	(%rdx,%r13), %rdi
	addq	$1392, %rdi                     # imm = 0x570
	movq	%rsi, %r8
	shlq	$6, %r8
	addq	%r8, %rdi
	shlq	$9, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rax,%r13), %r9
	addq	$3696, %r9                      # imm = 0xE70
	shlq	$8, %rsi
	addq	%rsi, %r9
	addq	%r13, %rdx
	addq	$2544, %rdx                     # imm = 0x9F0
	addq	%r8, %rdx
	addq	%r13, %rax
	addq	$8304, %rax                     # imm = 0x2070
	addq	%rsi, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	cmoveq	%rdi, %rdx
	cmoveq	%r9, %rax
	testl	%ebp, %ebp
	je	.LBB23_62
# %bb.59:                               # %if.then243
	movq	856032(%r15), %rsi
	cmpl	$0, 420(%rbx)
	movl	(%rsi,%rcx,4), %ecx
	movq	848832(%r15), %rsi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsi,%rdi,8), %rsi
	movq	(%rsi), %r9
	movq	%rbx, %rdi
	je	.LBB23_60
# %bb.61:                               # %if.else250
	xorl	%esi, %esi
	movq	%rax, %rdx
	movl	%ebp, %r8d
	callq	readCompCoeff8x8MB_CAVLC
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	je	.LBB23_64
	jmp	.LBB23_71
.LBB23_62:                              # %if.else256
	movq	848832(%r15), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	je	.LBB23_64
	jmp	.LBB23_71
.LBB23_60:                              # %if.then246
	xorl	%esi, %esi
	movl	%ebp, %r8d
	callq	readCompCoeff4x4MB_CAVLC
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	jne	.LBB23_71
.LBB23_64:                              # %if.end285
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	160(%rsp), %r8
	leaq	96(%rsp), %r9
	movq	%rbx, %rdi
	movl	$4, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB23_69
# %bb.65:                               # %for.body289.lr.ph
	movl	$-1, %ecx
	xorl	%edx, %edx
	jmp	.LBB23_66
	.p2align	4, 0x90
.LBB23_68:                              # %for.inc320
                                        #   in Loop: Header=BB23_66 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB23_69
.LBB23_66:                              # %for.body289
                                        # =>This Inner Loop Header: Depth=1
	movl	160(%rsp,%rdx,4), %esi
	testl	%esi, %esi
	je	.LBB23_68
# %bb.67:                               # %if.then294
                                        #   in Loop: Header=BB23_66 Depth=1
	movl	96(%rsp,%rdx,4), %edi
	addl	%edi, %ecx
	incl	%ecx
	movslq	%ecx, %rdi
	movzbl	(%r12,%rdi,2), %r8d
	movzbl	1(%r12,%rdi,2), %edi
	movq	1272(%r13), %r9
	movq	8(%r9), %r9
	shll	$5, %edi
	movq	(%r9,%rdi), %rdi
	shll	$4, %r8d
	movl	%esi, (%rdi,%r8)
	jmp	.LBB23_68
.LBB23_69:                              # %for.end322
	cmpl	$0, 92(%rbx)
	jne	.LBB23_71
# %bb.70:                               # %if.then326
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	itrans_2@PLT
.LBB23_71:                              # %if.end329
	movl	148(%r13), %esi
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	movl	%esi, 68(%rbx)
	movl	849052(%rax), %edx
	addl	%esi, %edx
	movl	%edx, 80(%rbx)
	movq	13520(%rcx), %r8
	xorl	%ecx, %ecx
	subl	849056(%rax), %ecx
	xorl	%r9d, %r9d
	movl	300(%r8), %r10d
	addl	%esi, %r10d
	cmpl	%ecx, %r10d
	cmovlel	%ecx, %r10d
	cmpl	$51, %r10d
	movl	$51, %edi
	movl	$51, %ecx
	cmovll	%r10d, %ecx
	testl	%r10d, %r10d
	js	.LBB23_73
# %bb.72:                               # %cond.false.i.i664
	movl	%ecx, %ecx
	movzbl	QP_SCALE_CR(%rcx), %ecx
.LBB23_73:                              # %cond.end.i.i668
	movl	%ecx, 72(%rbx)
	movl	849056(%rax), %r10d
	addl	%ecx, %r10d
	movl	%r10d, 84(%rbx)
	subl	849056(%rax), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edi
	testl	%esi, %esi
	js	.LBB23_75
# %bb.74:                               # %cond.false.1.i.i678
	movl	%edi, %esi
	movzbl	QP_SCALE_CR(%rsi), %edi
.LBB23_75:                              # %set_chroma_qp.exit.i682
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	movl	%edi, 76(%rbx)
	addl	849056(%rax), %edi
	movl	%edi, 88(%rbx)
	xorl	%esi, %esi
	testl	%edx, %edx
	jne	.LBB23_77
# %bb.76:                               # %land.rhs.i690
	xorl	%esi, %esi
	cmpl	$1, 849092(%rax)
	sete	%sil
.LBB23_77:                              # %update_qp.exit693
	leaq	1392(%r13), %rdi
	leaq	3696(%r13), %r8
	leaq	2544(%r13), %r10
	leaq	8304(%r13), %r14
	movl	%esi, 92(%rbx)
	movq	856032(%r15), %rax
	movslq	849056(%r15), %rdx
	movslq	%ecx, %rsi
	addq	%rdx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movq	856040(%r15), %rax
	cmpl	$0, 420(%rbx)
	movslq	(%rax,%rsi,4), %rax
	movq	848832(%r15), %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movq	8(%rdx), %r9
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	je	.LBB23_78
# %bb.79:                               # %if.else418
	movq	%rdi, %rbp
	shlq	$8, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	movq	%r14, %rdx
	cmoveq	%r8, %rdx
	leaq	1536(%rdx,%rax), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	callq	readCompCoeff8x8MB_CAVLC
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	je	.LBB23_81
	jmp	.LBB23_88
.LBB23_78:                              # %if.then408
	shlq	$6, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	movq	%r10, %rdx
	movq	%rdi, %rbp
	cmoveq	%rdi, %rdx
	leaq	384(%rdx,%rax), %rdx
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	callq	readCompCoeff4x4MB_CAVLC
	movzwl	152(%rbx), %eax
	orl	$4, %eax
	cmpl	$14, %eax
	jne	.LBB23_88
.LBB23_81:                              # %if.end285.1
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	160(%rsp), %r8
	leaq	96(%rsp), %r9
	movq	%rbx, %rdi
	movl	$9, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB23_86
# %bb.82:                               # %for.body289.lr.ph.1
	movl	$-1, %ecx
	xorl	%edx, %edx
	jmp	.LBB23_83
	.p2align	4, 0x90
.LBB23_85:                              # %for.inc320.1
                                        #   in Loop: Header=BB23_83 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB23_86
.LBB23_83:                              # %for.body289.1
                                        # =>This Inner Loop Header: Depth=1
	movl	160(%rsp,%rdx,4), %esi
	testl	%esi, %esi
	je	.LBB23_85
# %bb.84:                               # %if.then294.1
                                        #   in Loop: Header=BB23_83 Depth=1
	movl	96(%rsp,%rdx,4), %edi
	addl	%edi, %ecx
	incl	%ecx
	movslq	%ecx, %rdi
	movzbl	(%r12,%rdi,2), %r8d
	movzbl	1(%r12,%rdi,2), %edi
	movq	1272(%r13), %r9
	movq	16(%r9), %r9
	shll	$5, %edi
	movq	(%r9,%rdi), %rdi
	shll	$4, %r8d
	movl	%esi, (%rdi,%r8)
	jmp	.LBB23_85
.LBB23_86:                              # %for.end322.1
	cmpl	$0, 92(%rbx)
	jne	.LBB23_88
# %bb.87:                               # %if.then326.1
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	itrans_2@PLT
.LBB23_88:                              # %if.end329.1
	movl	148(%r13), %esi
	movq	(%rbx), %rdx
	movq	8(%rbx), %rax
	movl	%esi, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%esi, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rdx), %rdi
	xorl	%edx, %edx
	subl	849056(%rax), %edx
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%esi, %r10d
	cmpl	%edx, %r10d
	cmovlel	%edx, %r10d
	cmpl	$51, %r10d
	movl	$51, %edx
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB23_90
# %bb.89:                               # %cond.false.i.i664.1
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB23_90:                              # %cond.end.i.i668.1
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %esi
	cmpl	%r8d, %esi
	cmovlel	%r8d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edx
	testl	%esi, %esi
	js	.LBB23_92
# %bb.91:                               # %cond.false.1.i.i678.1
	movl	%edx, %edx
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB23_92:                              # %set_chroma_qp.exit.i682.1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	%edx, 76(%rbx)
	movl	849056(%rax), %esi
	addl	%edx, %esi
	movl	%esi, 88(%rbx)
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jne	.LBB23_94
# %bb.93:                               # %land.rhs.i690.1
	xorl	%esi, %esi
	cmpl	$1, 849092(%rax)
	sete	%sil
.LBB23_94:                              # %update_qp.exit693.1
	movl	%esi, 92(%rbx)
	movq	856032(%r15), %rax
	movslq	849056(%r15), %rcx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movq	856040(%r15), %rax
	cmpl	$0, 420(%rbx)
	movslq	(%rax,%rdx,4), %rax
	movq	848832(%r15), %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movq	16(%rdx), %r9
	je	.LBB23_96
# %bb.95:                               # %if.else418.1
	shlq	$8, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	cmoveq	%rdi, %r14
	leaq	3072(%r14,%rax), %rdx
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	callq	readCompCoeff8x8MB_CAVLC
	jmp	.LBB23_97
.LBB23_96:                              # %if.then408.1
	shlq	$6, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	cmoveq	%rbp, %rdx
	leaq	768(%rdx,%rax), %rdx
	movq	%rbx, %rdi
	movl	$2, %esi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	callq	readCompCoeff4x4MB_CAVLC
.LBB23_97:                              # %for.inc429.1
	addq	$232, %rsp
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
.Lfunc_end23:
	.size	read_CBP_and_coeffs_from_NAL_CAVLC_444, .Lfunc_end23-read_CBP_and_coeffs_from_NAL_CAVLC_444
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CAVLC_422
	.type	read_CBP_and_coeffs_from_NAL_CAVLC_422,@function
read_CBP_and_coeffs_from_NAL_CAVLC_422: # @read_CBP_and_coeffs_from_NAL_CAVLC_422
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
	subq	$360, %rsp                      # imm = 0x168
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rsi
	movslq	200(%rsi), %rax
	leaq	(%rax,%rax,4), %rax
	movq	8(%rdi), %rbp
	movq	13520(%rsi), %rcx
	movl	$FIELD_SCAN, %edx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	cmpl	$0, 848876(%rbp)
	jne	.LBB24_2
# %bb.1:                                # %land.end
	cmpl	$0, 384(%rdi)
	movl	$SNGL_SCAN, %edx
	movl	$FIELD_SCAN, %r8d
	cmoveq	%rdx, %r8
	movq	%r8, 48(%rsp)                   # 8-byte Spill
.LBB24_2:                               # %land.end.thread
	movslq	268(%rcx), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movslq	24(%rdi), %r13
	leaq	assignSE2partition(,%rax,4), %r12
	movl	96(%rdi), %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movzwl	152(%rdi), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	ja	.LBB24_16
# %bb.3:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB24_4
# %bb.15:
	movl	$6, %ecx
.LBB24_16:                              # %lor.end
	movl	%ecx, 312(%rsp)
	movl	%ecx, %ecx
	movzbl	(%r12,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shll	$4, %edx
	addq	312(%rsi), %rdx
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB24_18
# %bb.17:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB24_18:                              # %cond.end
	movq	(%rsi,%rcx), %rax
	movq	%rax, 344(%rsp)
	leaq	312(%rsp), %rsi
	callq	*40(%rdx)
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	316(%rsp), %r14d
	movl	%r14d, 284(%r11)
	movzwl	152(%r11), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB24_23
# %bb.19:                               # %lor.lhs.false57
	testl	%eax, %eax
	jne	.LBB24_22
# %bb.20:                               # %land.lhs.true62
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 164(%rcx)
	jne	.LBB24_22
# %bb.21:                               # %land.lhs.true65
	movq	16(%rbp), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB24_24
.LBB24_22:                              # %lor.lhs.false67
	cmpl	$0, 424(%r11)
	je	.LBB24_29
.LBB24_23:                              # %land.lhs.true69
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB24_24
.LBB24_29:                              # %if.end
	testl	%r14d, %r14d
	je	.LBB24_30
.LBB24_27:                              # %if.then96
	cmpl	$1, 96(%r11)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	312(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r12, %rdx
	movq	%r11, %rbx
	callq	read_delta_quant
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB24_28
# %bb.31:                               # %if.then103
	cmpl	$0, 96(%rbx)
	movq	%rbx, %rdi
	jne	.LBB24_34
# %bb.32:                               # %land.lhs.true107
	cmpl	$0, 1236(%rax)
	je	.LBB24_34
# %bb.33:                               # %if.then109
	movb	$1, 111(%rdi)
.LBB24_34:                              # %if.end110
	cmpl	$1, 40(%rsp)                    # 4-byte Folded Reload
	jne	.LBB24_37
# %bb.35:                               # %land.lhs.true112
	cmpl	$0, 1232(%rax)
	je	.LBB24_37
# %bb.36:                               # %if.then114
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB24_37:                              # %if.end116
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r12
	leaq	160(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	leaq	224(%rsp), %r8
	movq	24(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	movq	24(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB24_39
# %bb.38:                               # %lor.lhs.false.i
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB24_43
.LBB24_39:                              # %if.then.i
	cmpl	$0, 160(%rsp)
	je	.LBB24_41
# %bb.40:                               # %if.then7.i
	movq	848888(%rbx), %rax
	movslq	164(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB24_41:                              # %if.end.i
	cmpl	$0, 224(%rsp)
	je	.LBB24_43
# %bb.42:                               # %if.then14.i
	movq	848888(%rbx), %rax
	movslq	228(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB24_43:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%r11)
	jne	.LBB24_44
	jmp	.LBB24_53
.LBB24_4:                               # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB24_16
# %bb.5:                                # %if.else
	movl	284(%rdi), %r14d
	movq	%rdi, %rsi
	leaq	312(%rsp), %rdi
	movq	%r12, %rdx
	movl	$17, %ecx
	movq	%rsi, %rbx
	callq	read_delta_quant
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB24_45
# %bb.6:                                # %if.then127
	cmpl	$0, 1232(%rax)
	movq	%rbx, %rdi
	je	.LBB24_8
# %bb.7:                                # %if.then130
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB24_8:                               # %if.end133
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r12
	leaq	160(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	leaq	224(%rsp), %r8
	movq	24(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r12, %rcx
	callq	*856744(%rbx)
	movq	24(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB24_10
# %bb.9:                                # %lor.lhs.false.i1035
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB24_14
.LBB24_10:                              # %if.then.i1039
	cmpl	$0, 160(%rsp)
	je	.LBB24_12
# %bb.11:                               # %if.then7.i1041
	movq	848888(%rbx), %rax
	movslq	164(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB24_12:                              # %if.end.i1048
	cmpl	$0, 224(%rsp)
	je	.LBB24_14
# %bb.13:                               # %if.then14.i1050
	movq	848888(%rbx), %rax
	movslq	228(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB24_14:                              # %check_dp_neighbors.exit1057
	cmpb	$0, 111(%r11)
	je	.LBB24_46
.LBB24_44:                              # %if.then119
	movl	$0, 284(%r11)
	xorl	%r14d, %r14d
	jmp	.LBB24_53
.LBB24_24:                              # %land.lhs.true79
	testb	$15, %r14b
	je	.LBB24_29
# %bb.25:                               # %land.rhs82
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 60(%rax)
	je	.LBB24_27
# %bb.26:                               # %if.then86
	movl	$0, 312(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	312(%rax), %rax
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 352(%rsp)
	movl	$1, 324(%rsp)
	movq	(%rax), %rsi
	leaq	312(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	316(%rsp), %eax
	movl	%eax, 420(%r11)
	jmp	.LBB24_27
.LBB24_30:
	xorl	%r14d, %r14d
	jmp	.LBB24_53
.LBB24_28:
	movq	%rbx, %r11
	jmp	.LBB24_53
.LBB24_45:                              # %if.end139
	cmpb	$0, 111(%rbx)
	movq	%rbx, %r11
	jne	.LBB24_53
.LBB24_46:                              # %if.then142
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	movq	%r11, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	movq	32(%rsp), %r10                  # 8-byte Reload
	jle	.LBB24_51
# %bb.47:                               # %for.body.lr.ph
	xorl	%ecx, %ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB24_48
	.p2align	4, 0x90
.LBB24_50:                              # %for.inc
                                        #   in Loop: Header=BB24_48 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB24_51
.LBB24_48:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	224(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB24_50
# %bb.49:                               # %if.then153
                                        #   in Loop: Header=BB24_48 Depth=1
	movslq	160(%rsp,%rcx,4), %rdi
	movzbl	(%rdx,%rdi,2), %r8d
	movzbl	1(%rdx,%rdi,2), %r9d
	leaq	(%rdx,%rdi,2), %rdx
	addq	$2, %rdx
	movq	1272(%r10), %rdi
	movq	(%rdi), %rdi
	shll	$5, %r9d
	movq	(%rdi,%r9), %rdi
	shll	$4, %r8d
	movl	%esi, (%rdi,%r8)
	jmp	.LBB24_50
.LBB24_51:                              # %for.end
	movq	24(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 92(%r11)
	jne	.LBB24_53
# %bb.52:                               # %if.then170
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	216(%rax), %esi
	movq	%r11, %rdi
	callq	itrans_2@PLT
	movq	24(%rsp), %r11                  # 8-byte Reload
.LBB24_53:                              # %if.end173
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	148(%rax), %esi
	movq	(%r11), %rax
	movq	8(%r11), %rcx
	movl	%esi, 68(%r11)
	movl	849052(%rcx), %edx
	addl	%esi, %edx
	movl	%edx, 80(%r11)
	movq	13520(%rax), %r8
	xorl	%eax, %eax
	subl	849056(%rcx), %eax
	xorl	%r9d, %r9d
	movl	300(%r8), %r10d
	addl	%esi, %r10d
	cmpl	%eax, %r10d
	cmovlel	%eax, %r10d
	cmpl	$51, %r10d
	movl	$51, %edi
	movl	$51, %eax
	cmovll	%r10d, %eax
	testl	%r10d, %r10d
	js	.LBB24_55
# %bb.54:                               # %cond.false.i.i
	movl	%eax, %eax
	movzbl	QP_SCALE_CR(%rax), %eax
.LBB24_55:                              # %cond.end.i.i
	movl	%eax, 72(%r11)
	movslq	849056(%rcx), %r10
	cltq
	addq	%r10, %rax
	movl	%eax, 84(%r11)
	subl	849056(%rcx), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edi
	testl	%esi, %esi
	js	.LBB24_57
# %bb.56:                               # %cond.false.1.i.i
	movl	%edi, %esi
	movzbl	QP_SCALE_CR(%rsi), %edi
.LBB24_57:                              # %set_chroma_qp.exit.i
	movl	%r14d, 92(%rsp)                 # 4-byte Spill
	movl	%edi, 76(%r11)
	movslq	849056(%rcx), %r8
	movslq	%edi, %rsi
	addq	%r8, %rsi
	movl	%esi, 88(%r11)
	xorl	%edi, %edi
	testl	%edx, %edx
	jne	.LBB24_59
# %bb.58:                               # %land.rhs.i
	xorl	%edi, %edi
	cmpl	$1, 849092(%rcx)
	sete	%dil
.LBB24_59:                              # %update_qp.exit
	movl	%edi, 92(%r11)
	movq	32(%rsp), %r12                  # 8-byte Reload
	movslq	216(%r12), %rcx
	movslq	80(%r11,%rcx,4), %r9
	movq	856032(%rbp), %r10
	movq	%r11, %r15
	movq	856040(%rbp), %r11
	movslq	(%r11,%r9,4), %rdi
	leaq	(%rcx,%rcx,2), %r8
	shlq	$7, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%r12,%rcx), %rbx
	addq	$1392, %rbx                     # imm = 0x570
	movq	%rdi, %r14
	shlq	$6, %r14
	addq	%r14, %rbx
	shlq	$8, %rdi
	shlq	$9, %r8
	leaq	(%r12,%rcx), %rdx
	addq	$2544, %rdx                     # imm = 0x9F0
	addq	%r14, %rdx
	addq	%r12, %r8
	cmpl	$1, 40(%rsp)                    # 4-byte Folded Reload
	movl	(%r10,%r9,4), %ecx
	movl	(%r10,%rax,4), %r9d
	movl	%r9d, 96(%rsp)
	movl	(%r11,%rax,4), %eax
	movl	%eax, 288(%rsp)
	movl	(%r10,%rsi,4), %eax
	movl	%eax, 100(%rsp)
	movl	(%r11,%rsi,4), %eax
	movl	%eax, 292(%rsp)
	leaq	3696(%rdi,%r8), %rsi
	cmoveq	%rbx, %rdx
	leaq	8304(%rdi,%r8), %rax
	cmoveq	%rsi, %rax
	movl	92(%rsp), %ebx                  # 4-byte Reload
	testl	%ebx, %ebx
	je	.LBB24_62
# %bb.60:                               # %if.then244
	cmpl	$0, 420(%r15)
	movq	848832(%rbp), %rsi
	movq	(%rsi,%r13,8), %rsi
	movq	(%rsi), %r9
	movq	%r15, %rdi
	je	.LBB24_61
# %bb.63:                               # %if.else251
	xorl	%esi, %esi
	movq	%rax, %rdx
	movl	%ebx, %r8d
	callq	readCompCoeff8x8MB_CAVLC
	cmpl	$16, %ebx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %r9                   # 8-byte Reload
	jge	.LBB24_65
	jmp	.LBB24_83
.LBB24_62:                              # %if.end263.thread
	movq	848832(%rbp), %rax
	movq	(%rax,%r13,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB24_83
.LBB24_61:                              # %if.then247
	xorl	%esi, %esi
	movl	%ebx, %r8d
	callq	readCompCoeff4x4MB_CAVLC
	cmpl	$16, %ebx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %r9                   # 8-byte Reload
	jl	.LBB24_83
.LBB24_65:                              # %for.cond267.preheader
	movq	%r13, 296(%rsp)                 # 8-byte Spill
	decq	56(%rsp)                        # 8-byte Folded Spill
	leaq	1392(%r9), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	2544(%r9), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movb	$1, %al
	xorl	%r13d, %r13d
	jmp	.LBB24_66
	.p2align	4, 0x90
.LBB24_71:                              # %for.end345
                                        #   in Loop: Header=BB24_66 Depth=1
	cmpl	$0, 92(%rdi)
	movl	112(%rsp), %eax
	je	.LBB24_73
# %bb.72:                               # %for.body504.preheader
                                        #   in Loop: Header=BB24_66 Depth=1
	movq	32(%rsp), %r9                   # 8-byte Reload
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	128(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	116(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	132(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	120(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	136(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	64(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	124(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	96(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	140(%rsp), %eax
	movq	1272(%r9), %rcx
	movq	8(%rcx,%rbx,8), %rcx
	movq	96(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	64(%rsp), %r10d                 # 4-byte Reload
.LBB24_81:                              # %if.end530
                                        #   in Loop: Header=BB24_66 Depth=1
	movl	$2, %r13d
	testb	$1, %r10b
	movl	$0, %eax
	je	.LBB24_82
.LBB24_66:                              # %for.body270
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_68 Depth 2
                                        #     Child Loop BB24_76 Depth 2
                                        #       Child Loop BB24_78 Depth 3
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movq	%r13, %rbx
	shrq	%rbx
	movq	1272(%r9), %rax
	movq	8(%rax,%rbx,8), %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movslq	72(%rdi,%r13,2), %rax
	movslq	849056(%rbp), %rcx
	addq	%rax, %rcx
	movq	856032(%rbp), %rax
	movq	856040(%rbp), %rdx
	movslq	12(%rdx,%rcx,4), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	cmpl	$1, 40(%rsp)                    # 4-byte Folded Reload
	movl	12(%rax,%rcx,4), %r12d
	movq	104(%rsp), %r14                 # 8-byte Reload
	cmoveq	80(%rsp), %r14                  # 8-byte Folded Reload
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$6, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_71
# %bb.67:                               # %for.body315.lr.ph
                                        #   in Loop: Header=BB24_66 Depth=1
	shll	$2, %r13d
	movl	$16711680, %edx                 # imm = 0xFF0000
	movl	%r13d, %ecx
	shlq	%cl, %rdx
	movl	$-1, %ecx
	xorl	%esi, %esi
	jmp	.LBB24_68
	.p2align	4, 0x90
.LBB24_70:                              # %for.inc343
                                        #   in Loop: Header=BB24_68 Depth=2
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB24_71
.LBB24_68:                              # %for.body315
                                        #   Parent Loop BB24_66 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rsi,4), %r10d
	testl	%r10d, %r10d
	je	.LBB24_70
# %bb.69:                               # %if.then320
                                        #   in Loop: Header=BB24_68 Depth=2
	orq	%rdx, 288(%rdi)
	movl	160(%rsp,%rsi,4), %r8d
	addl	%r8d, %ecx
	incl	%ecx
	movslq	%ecx, %r8
	movzbl	SCAN_YUV422(%r8,%r8), %r9d
	movzbl	SCAN_YUV422+1(%r8,%r8), %r8d
	shll	$4, %r9d
	addq	%rsp, %r9
	addq	$112, %r9
	movl	%r10d, (%r9,%r8,4)
	jmp	.LBB24_70
	.p2align	4, 0x90
.LBB24_73:                              # %if.then349
                                        #   in Loop: Header=BB24_66 Depth=1
	movl	128(%rsp), %ecx
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	leal	(%rcx,%rax), %r11d
	movl	132(%rsp), %r10d
	movl	116(%rsp), %r9d
	movl	120(%rsp), %esi
	leal	(%r10,%r9), %ecx
	movl	%ecx, 156(%rsp)                 # 4-byte Spill
	movl	136(%rsp), %r13d
	leal	(%r13,%rsi), %edi
	movl	124(%rsp), %ecx
	movl	140(%rsp), %edx
	leal	(%rdx,%rcx), %r8d
	subl	304(%rsp), %eax                 # 4-byte Folded Reload
	subl	%r10d, %r9d
	subl	%r13d, %esi
	subl	%edx, %ecx
	leal	(%rdi,%r11), %edx
	subl	%edi, %r11d
	movl	156(%rsp), %edi                 # 4-byte Reload
	movl	%edi, %r10d
	subl	%r8d, %r10d
	addl	%edi, %r8d
	leal	(%r8,%rdx), %edi
	movq	(%r15), %r13
	movl	%edi, (%r13)
	leal	(%r10,%r11), %edi
	movq	32(%r15), %r13
	movl	%edi, (%r13)
	movq	24(%rsp), %rdi                  # 8-byte Reload
	subl	%r10d, %r11d
	movq	64(%r15), %r10
	movl	%r11d, (%r10)
	subl	%r8d, %edx
	movq	96(%r15), %r8
	movl	%edx, (%r8)
	leal	(%rsi,%rax), %edx
	subl	%esi, %eax
	movl	%r9d, %esi
	subl	%ecx, %esi
	addl	%r9d, %ecx
	leal	(%rcx,%rdx), %r9d
	movq	(%r15), %r8
	movl	%r9d, 16(%r8)
	leal	(%rsi,%rax), %r9d
	movq	32(%r15), %r8
	movl	%r9d, 16(%r8)
	subl	%esi, %eax
	movq	64(%r15), %rsi
	movl	%eax, 16(%rsi)
	subl	%ecx, %edx
	movq	96(%r15), %rax
	movl	%edx, 16(%rax)
	movl	849112(%rbp), %edx
	testl	%edx, %edx
	movq	32(%rsp), %r9                   # 8-byte Reload
	movl	64(%rsp), %r10d                 # 4-byte Reload
	jle	.LBB24_81
# %bb.74:                               # %for.cond477.preheader.lr.ph
                                        #   in Loop: Header=BB24_66 Depth=1
	movl	849108(%rbp), %ecx
	testl	%ecx, %ecx
	jle	.LBB24_81
# %bb.75:                               # %for.cond477.preheader.preheader
                                        #   in Loop: Header=BB24_66 Depth=1
	movq	72(%rsp), %rsi                  # 8-byte Reload
	shlq	$6, %rsi
	leaq	(%rbx,%rbx,2), %rax
	addq	$3, %rax
	shlq	$7, %rax
	addq	%rax, %r14
	addq	%rsi, %r14
	xorl	%eax, %eax
	jmp	.LBB24_76
	.p2align	4, 0x90
.LBB24_80:                              # %for.inc497
                                        #   in Loop: Header=BB24_76 Depth=2
	addq	$4, %rax
	movslq	%edx, %rsi
	cmpq	%rsi, %rax
	jge	.LBB24_81
.LBB24_76:                              # %for.cond477.preheader
                                        #   Parent Loop BB24_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB24_78 Depth 3
	testl	%ecx, %ecx
	jle	.LBB24_80
# %bb.77:                               # %for.body480.lr.ph
                                        #   in Loop: Header=BB24_76 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB24_78:                              # %for.body480
                                        #   Parent Loop BB24_66 Depth=1
                                        #     Parent Loop BB24_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r15,%rax,8), %rsi
	movl	(%r14), %r8d
	imull	(%rsi,%rdx,4), %r8d
	movl	%r12d, %ecx
	shll	%cl, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	movl	%r8d, (%rsi,%rdx,4)
	addq	$4, %rdx
	movslq	849108(%rbp), %rcx
	cmpq	%rcx, %rdx
	jl	.LBB24_78
# %bb.79:                               # %for.inc497.loopexit
                                        #   in Loop: Header=BB24_76 Depth=2
	movl	849112(%rbp), %edx
	jmp	.LBB24_80
.LBB24_82:                              # %if.end534
	cmpl	$31, 92(%rsp)                   # 4-byte Folded Reload
	movq	296(%rsp), %r13                 # 8-byte Reload
	jg	.LBB24_84
.LBB24_83:                              # %if.then537
	movq	848832(%rbp), %rax
	movq	(%rax,%r13,8), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
.LBB24_131:                             # %if.end753
	addq	$360, %rsp                      # imm = 0x168
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
.LBB24_84:                              # %if.else543
	.cfi_def_cfa_offset 416
	cmpl	$0, 92(%rdi)
	movl	849096(%rbp), %eax
	je	.LBB24_108
# %bb.85:                               # %for.cond665.preheader
	testl	%eax, %eax
	jle	.LBB24_131
# %bb.86:                               # %for.body669.lr.ph
	xorl	%r15d, %r15d
	shlq	$5, 56(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB24_87
	.p2align	4, 0x90
.LBB24_107:                             # %for.inc746.3
                                        #   in Loop: Header=BB24_87 Depth=1
	incq	%r15
	movslq	849096(%rbp), %rax
	cmpq	%rax, %r15
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jge	.LBB24_131
.LBB24_87:                              # %for.body669
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_89 Depth 2
                                        #     Child Loop BB24_94 Depth 2
                                        #     Child Loop BB24_99 Depth 2
                                        #     Child Loop BB24_104 Depth 2
	movslq	849100(%rbp), %rax
	xorl	%r12d, %r12d
	cmpq	%rax, %r15
	setge	%r12b
	movl	%r12d, 100(%rdi)
	leaq	1(%r12), %r13
	movq	56(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rax,%r15,4), %ebx
	movzbl	cofuv_blk_y(%rax,%r15,4), %r14d
	leal	(%rbx,%r12,2), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_92
# %bb.88:                               # %for.body701.lr.ph
                                        #   in Loop: Header=BB24_87 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_89
	.p2align	4, 0x90
.LBB24_91:                              # %for.inc743
                                        #   in Loop: Header=BB24_89 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB24_92
.LBB24_89:                              # %for.body701
                                        #   Parent Loop BB24_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB24_91
# %bb.90:                               # %i64_power2.exit1071
                                        #   in Loop: Header=BB24_89 Depth=2
	movzbl	cbp_blk_chroma(,%r15,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	160(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movq	48(%rsp), %r10                  # 8-byte Reload
	movzbl	(%r10,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%r10,%r9,2), %r10d
	addl	%r14d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r13,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB24_91
	.p2align	4, 0x90
.LBB24_92:                              # %for.inc746
                                        #   in Loop: Header=BB24_87 Depth=1
	addl	%r12d, %r12d
	movq	56(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rax,%r15,4), %ebx
	movzbl	cofuv_blk_y+1(%rax,%r15,4), %r14d
	leal	(%r12,%rbx), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_97
# %bb.93:                               # %for.body701.lr.ph.1
                                        #   in Loop: Header=BB24_87 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_94
	.p2align	4, 0x90
.LBB24_96:                              # %for.inc743.1
                                        #   in Loop: Header=BB24_94 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB24_97
.LBB24_94:                              # %for.body701.1
                                        #   Parent Loop BB24_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB24_96
# %bb.95:                               # %i64_power2.exit1071.1
                                        #   in Loop: Header=BB24_94 Depth=2
	movzbl	cbp_blk_chroma+1(,%r15,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	160(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movq	48(%rsp), %r10                  # 8-byte Reload
	movzbl	(%r10,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%r10,%r9,2), %r10d
	addl	%r14d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r13,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB24_96
	.p2align	4, 0x90
.LBB24_97:                              # %for.inc746.1
                                        #   in Loop: Header=BB24_87 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rax,%r15,4), %ebx
	movzbl	cofuv_blk_y+2(%rax,%r15,4), %r14d
	leal	(%r12,%rbx), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_102
# %bb.98:                               # %for.body701.lr.ph.2
                                        #   in Loop: Header=BB24_87 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_99
	.p2align	4, 0x90
.LBB24_101:                             # %for.inc743.2
                                        #   in Loop: Header=BB24_99 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB24_102
.LBB24_99:                              # %for.body701.2
                                        #   Parent Loop BB24_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB24_101
# %bb.100:                              # %i64_power2.exit1071.2
                                        #   in Loop: Header=BB24_99 Depth=2
	movzbl	cbp_blk_chroma+2(,%r15,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	160(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movq	48(%rsp), %r10                  # 8-byte Reload
	movzbl	(%r10,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%r10,%r9,2), %r10d
	addl	%r14d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r13,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB24_101
	.p2align	4, 0x90
.LBB24_102:                             # %for.inc746.2
                                        #   in Loop: Header=BB24_87 Depth=1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rax,%r15,4), %ebx
	movzbl	cofuv_blk_y+3(%rax,%r15,4), %r14d
	addl	%ebx, %r12d
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	movl	%r12d, %edx
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_107
# %bb.103:                              # %for.body701.lr.ph.3
                                        #   in Loop: Header=BB24_87 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB24_104
	.p2align	4, 0x90
.LBB24_106:                             # %for.inc743.3
                                        #   in Loop: Header=BB24_104 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB24_107
.LBB24_104:                             # %for.body701.3
                                        #   Parent Loop BB24_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB24_106
# %bb.105:                              # %i64_power2.exit1071.3
                                        #   in Loop: Header=BB24_104 Depth=2
	movzbl	cbp_blk_chroma+3(,%r15,4), %edi
	movq	po2(,%rdi,8), %rdi
	movq	24(%rsp), %r8                   # 8-byte Reload
	orq	%rdi, 288(%r8)
	movl	160(%rsp,%rcx,4), %edi
	addl	%edi, %edx
	incl	%edx
	movslq	%edx, %rdi
	movq	48(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rdi,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%r9,%rdi,2), %edi
	addl	%r14d, %edi
	movq	1272(%r10), %r9
	movq	(%r9,%r13,8), %r9
	movq	(%r9,%rdi,8), %rdi
	movl	%esi, (%rdi,%r8,4)
	jmp	.LBB24_106
.LBB24_108:                             # %for.cond548.preheader
	testl	%eax, %eax
	jle	.LBB24_131
# %bb.109:                              # %for.body551.lr.ph
	cmpl	$1, 40(%rsp)                    # 4-byte Folded Reload
	movslq	56(%rsp), %rcx                  # 4-byte Folded Reload
	movq	104(%rsp), %rax                 # 8-byte Reload
	cmoveq	80(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	shlq	$5, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB24_110
	.p2align	4, 0x90
.LBB24_130:                             # %for.inc658.3
                                        #   in Loop: Header=BB24_110 Depth=1
	incq	%r13
	movslq	849096(%rbp), %rax
	cmpq	%rax, %r13
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jge	.LBB24_131
.LBB24_110:                             # %for.body551
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_112 Depth 2
                                        #     Child Loop BB24_117 Depth 2
                                        #     Child Loop BB24_122 Depth 2
                                        #     Child Loop BB24_127 Depth 2
	movslq	849100(%rbp), %rax
	xorl	%r12d, %r12d
	cmpq	%rax, %r13
	setge	%r12b
	movl	%r12d, 100(%rdi)
	leaq	1(%r12), %rax
	movslq	288(%rsp,%r12,4), %r15
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	shll	$7, %eax
	addq	104(%rsp), %rax                 # 8-byte Folded Reload
	shlq	$6, %r15
	addq	%rax, %r15
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rax,%r13,4), %ecx
	movzbl	cofuv_blk_y(%rax,%r13,4), %r14d
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leal	(%rcx,%r12,2), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_115
# %bb.111:                              # %for.body604.lr.ph
                                        #   in Loop: Header=BB24_110 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_112
	.p2align	4, 0x90
.LBB24_114:                             # %for.inc655
                                        #   in Loop: Header=BB24_112 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB24_115
.LBB24_112:                             # %for.body604
                                        #   Parent Loop BB24_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB24_114
# %bb.113:                              # %i64_power2.exit
                                        #   in Loop: Header=BB24_112 Depth=2
	movzbl	cbp_blk_chroma(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	160(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movq	48(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rcx,2), %r8d
	movzbl	1(%r9,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r15, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	96(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB24_114
	.p2align	4, 0x90
.LBB24_115:                             # %for.inc658
                                        #   in Loop: Header=BB24_110 Depth=1
	movl	%r12d, %ecx
	addl	%ecx, %ecx
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rax,%r13,4), %edx
	movzbl	cofuv_blk_y+1(%rax,%r13,4), %r14d
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	addl	%ecx, %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_120
# %bb.116:                              # %for.body604.lr.ph.1
                                        #   in Loop: Header=BB24_110 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_117
	.p2align	4, 0x90
.LBB24_119:                             # %for.inc655.1
                                        #   in Loop: Header=BB24_117 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB24_120
.LBB24_117:                             # %for.body604.1
                                        #   Parent Loop BB24_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB24_119
# %bb.118:                              # %i64_power2.exit.1
                                        #   in Loop: Header=BB24_117 Depth=2
	movzbl	cbp_blk_chroma+1(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	160(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movq	48(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rcx,2), %r8d
	movzbl	1(%r9,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r15, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	96(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB24_119
	.p2align	4, 0x90
.LBB24_120:                             # %for.inc658.1
                                        #   in Loop: Header=BB24_110 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rax,%r13,4), %ecx
	movzbl	cofuv_blk_y+2(%rax,%r13,4), %r14d
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leal	(%rax,%rcx), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_125
# %bb.121:                              # %for.body604.lr.ph.2
                                        #   in Loop: Header=BB24_110 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_122
	.p2align	4, 0x90
.LBB24_124:                             # %for.inc655.2
                                        #   in Loop: Header=BB24_122 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB24_125
.LBB24_122:                             # %for.body604.2
                                        #   Parent Loop BB24_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB24_124
# %bb.123:                              # %i64_power2.exit.2
                                        #   in Loop: Header=BB24_122 Depth=2
	movzbl	cbp_blk_chroma+2(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	160(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movq	48(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rcx,2), %r8d
	movzbl	1(%r9,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r15, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	96(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB24_124
	.p2align	4, 0x90
.LBB24_125:                             # %for.inc658.2
                                        #   in Loop: Header=BB24_110 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rax,%r13,4), %ebx
	movzbl	cofuv_blk_y+3(%rax,%r13,4), %r14d
	movq	80(%rsp), %rdx                  # 8-byte Reload
	addl	%ebx, %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
                                        # kill: def $edx killed $edx killed $rdx
	leaq	224(%rsp), %r8
	leaq	160(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB24_130
# %bb.126:                              # %for.body604.lr.ph.3
                                        #   in Loop: Header=BB24_110 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB24_127
	.p2align	4, 0x90
.LBB24_129:                             # %for.inc655.3
                                        #   in Loop: Header=BB24_127 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB24_130
.LBB24_127:                             # %for.body604.3
                                        #   Parent Loop BB24_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	224(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB24_129
# %bb.128:                              # %i64_power2.exit.3
                                        #   in Loop: Header=BB24_127 Depth=2
	movzbl	cbp_blk_chroma+3(,%r13,4), %ecx
	movq	po2(,%rcx,8), %rcx
	movq	24(%rsp), %r8                   # 8-byte Reload
	orq	%rcx, 288(%r8)
	movl	160(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movq	48(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rcx,2), %r8d
	movzbl	1(%r9,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r15, %rcx
	imull	(%rcx,%r8,4), %edi
	movzbl	96(%rsp,%r12,4), %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movq	1272(%r10), %rcx
	movq	64(%rsp), %r11                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	%ebx, %r8d
	movl	%edi, (%rcx,%r8,4)
	jmp	.LBB24_129
.Lfunc_end24:
	.size	read_CBP_and_coeffs_from_NAL_CAVLC_422, .Lfunc_end24-read_CBP_and_coeffs_from_NAL_CAVLC_422
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CAVLC_400
	.type	read_CBP_and_coeffs_from_NAL_CAVLC_400,@function
read_CBP_and_coeffs_from_NAL_CAVLC_400: # @read_CBP_and_coeffs_from_NAL_CAVLC_400
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
	movq	%rdi, %rbx
	movq	(%rdi), %r13
	movslq	200(%r13), %rax
	leaq	(%rax,%rax,4), %rax
	movq	8(%rdi), %r15
	movl	$FIELD_SCAN, %r12d
	cmpl	$0, 848876(%r15)
	jne	.LBB25_2
# %bb.1:                                # %land.end
	cmpl	$0, 384(%rbx)
	movl	$SNGL_SCAN, %ecx
	cmoveq	%rcx, %r12
.LBB25_2:                               # %land.end.thread
	movslq	24(%rbx), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leaq	assignSE2partition(,%rax,4), %r14
	movl	96(%rbx), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	movzwl	152(%rbx), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	ja	.LBB25_5
# %bb.3:                                # %land.end.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB25_28
# %bb.4:
	movl	$6, %ecx
.LBB25_5:                               # %lor.end
	movl	%ecx, 32(%rsp)
	movl	%ecx, %ecx
	movzbl	(%r14,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shll	$4, %edx
	addq	312(%r13), %rdx
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB25_7
# %bb.6:                                # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB25_7:                               # %cond.end
	movq	(%r13,%rcx), %rax
	movq	%rax, 64(%rsp)
	leaq	32(%rsp), %rsi
	movq	%rbx, %rdi
	callq	*40(%rdx)
	movl	36(%rsp), %ebp
	movl	%ebp, 284(%rbx)
	movzwl	152(%rbx), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB25_12
# %bb.8:                                # %lor.lhs.false56
	testl	%eax, %eax
	jne	.LBB25_11
# %bb.9:                                # %land.lhs.true61
	cmpl	$1, 164(%r13)
	jne	.LBB25_11
# %bb.10:                               # %land.lhs.true64
	movq	16(%r15), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB25_40
.LBB25_11:                              # %lor.lhs.false66
	cmpl	$0, 424(%rbx)
	je	.LBB25_13
.LBB25_12:                              # %land.lhs.true68
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB25_40
.LBB25_13:                              # %if.end
	testl	%ebp, %ebp
	je	.LBB25_43
.LBB25_14:                              # %if.then95
	cmpl	$1, 96(%rbx)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	read_delta_quant
	cmpl	$0, 200(%r13)
	je	.LBB25_44
# %bb.15:                               # %if.then102
	cmpl	$0, 96(%rbx)
	jne	.LBB25_18
# %bb.16:                               # %land.lhs.true106
	cmpl	$0, 1236(%r13)
	je	.LBB25_18
# %bb.17:                               # %if.then108
	movb	$1, 111(%rbx)
.LBB25_18:                              # %if.end109
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	jne	.LBB25_21
# %bb.19:                               # %land.lhs.true111
	cmpl	$0, 1232(%r13)
	je	.LBB25_21
# %bb.20:                               # %if.then113
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB25_21:                              # %if.end115
	movq	8(%rbx), %r12
	leaq	849132(%r12), %r14
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%r12)
	leaq	144(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%r12)
	cmpl	$0, 96(%rbx)
	movq	8(%rsp), %r14                   # 8-byte Reload
	je	.LBB25_23
# %bb.22:                               # %lor.lhs.false.i
	movq	8(%r12), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB25_27
.LBB25_23:                              # %if.then.i
	cmpl	$0, 80(%rsp)
	je	.LBB25_25
# %bb.24:                               # %if.then7.i
	movq	848888(%r12), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB25_25:                              # %if.end.i
	cmpl	$0, 144(%rsp)
	je	.LBB25_27
# %bb.26:                               # %if.then14.i
	movq	848888(%r12), %rax
	movslq	148(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB25_27:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%rbx)
	jne	.LBB25_39
	jmp	.LBB25_53
.LBB25_28:                              # %land.end.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB25_5
# %bb.29:                               # %if.else
	movl	284(%rbx), %ebp
	leaq	32(%rsp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$17, %ecx
	callq	read_delta_quant
	cmpl	$0, 200(%r13)
	je	.LBB25_45
# %bb.30:                               # %if.then126
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	cmpl	$0, 1232(%r13)
	je	.LBB25_32
# %bb.31:                               # %if.then129
	movw	$257, 110(%rbx)                 # imm = 0x101
.LBB25_32:                              # %if.end132
	movq	8(%rbx), %r15
	leaq	849132(%r15), %r14
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%r15)
	leaq	144(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%r15)
	cmpl	$0, 96(%rbx)
	movq	8(%rsp), %r14                   # 8-byte Reload
	je	.LBB25_34
# %bb.33:                               # %lor.lhs.false.i351
	movq	8(%r15), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB25_38
.LBB25_34:                              # %if.then.i355
	cmpl	$0, 80(%rsp)
	je	.LBB25_36
# %bb.35:                               # %if.then7.i357
	movq	848888(%r15), %rax
	movslq	84(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB25_36:                              # %if.end.i364
	cmpl	$0, 144(%rsp)
	je	.LBB25_38
# %bb.37:                               # %if.then14.i366
	movq	848888(%r15), %rax
	movslq	148(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%rbx)
.LBB25_38:                              # %check_dp_neighbors.exit373
	cmpb	$0, 111(%rbx)
	movq	24(%rsp), %r15                  # 8-byte Reload
	je	.LBB25_46
.LBB25_39:                              # %if.then118
	movl	$0, 284(%rbx)
	xorl	%ebp, %ebp
	jmp	.LBB25_53
.LBB25_40:                              # %land.lhs.true78
	testb	$15, %bpl
	je	.LBB25_13
# %bb.41:                               # %land.rhs81
	cmpl	$0, 60(%r13)
	je	.LBB25_14
# %bb.42:                               # %if.then85
	movl	$0, 32(%rsp)
	movq	312(%r13), %rax
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 72(%rsp)
	movl	$1, 44(%rsp)
	movq	(%rax), %rsi
	leaq	32(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	36(%rsp), %eax
	movl	%eax, 420(%rbx)
	jmp	.LBB25_14
.LBB25_43:
	xorl	%ebp, %ebp
.LBB25_44:
	movq	8(%rsp), %r14                   # 8-byte Reload
.LBB25_53:                              # %if.end172
	movl	148(%r13), %edx
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movl	%edx, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB25_55
# %bb.54:                               # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB25_55:                              # %cond.end.i.i
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB25_57
# %bb.56:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB25_57:                              # %set_chroma_qp.exit.i
	movl	%esi, 76(%rbx)
	addl	849056(%rax), %esi
	movl	%esi, 88(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB25_59
# %bb.58:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB25_59:                              # %update_qp.exit
	movl	%edx, 92(%rbx)
	movslq	216(%r13), %rax
	movslq	80(%rbx,%rax,4), %rcx
	movq	856040(%r15), %rdx
	movslq	(%rdx,%rcx,4), %rsi
	movq	%rsi, %rdx
	shlq	$6, %rdx
	leaq	(%rax,%rax,2), %rax
	movq	%rax, %rdi
	shlq	$7, %rdi
	addq	%r13, %rdi
	shlq	$8, %rsi
	shlq	$9, %rax
	addq	%r13, %rax
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	leaq	1392(%rdx,%rdi), %r8
	leaq	2544(%rdx,%rdi), %rdx
	cmoveq	%r8, %rdx
	leaq	3696(%rsi,%rax), %rdi
	leaq	8304(%rsi,%rax), %rax
	cmoveq	%rdi, %rax
	testl	%ebp, %ebp
	je	.LBB25_62
# %bb.60:                               # %if.then219
	movq	856032(%r15), %rsi
	cmpl	$0, 420(%rbx)
	movl	(%rsi,%rcx,4), %ecx
	movq	848832(%r15), %rsi
	movq	(%rsi,%r14,8), %rsi
	movq	(%rsi), %r9
	movq	%rbx, %rdi
	je	.LBB25_63
# %bb.61:                               # %if.else226
	xorl	%esi, %esi
	movq	%rax, %rdx
	movl	%ebp, %r8d
	callq	readCompCoeff8x8MB_CAVLC
	jmp	.LBB25_64
.LBB25_62:                              # %if.else232
	movq	848832(%r15), %rax
	movq	(%rax,%r14,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	jmp	.LBB25_64
.LBB25_63:                              # %if.then222
	xorl	%esi, %esi
	movl	%ebp, %r8d
	callq	readCompCoeff4x4MB_CAVLC
.LBB25_64:                              # %if.end238
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
.LBB25_45:                              # %if.end138
	.cfi_def_cfa_offset 272
	cmpb	$0, 111(%rbx)
	movq	8(%rsp), %r14                   # 8-byte Reload
	jne	.LBB25_53
.LBB25_46:                              # %if.then141
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	144(%rsp), %r8
	leaq	80(%rsp), %r9
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB25_51
# %bb.47:                               # %for.body.lr.ph
	xorl	%ecx, %ecx
	jmp	.LBB25_49
	.p2align	4, 0x90
.LBB25_48:                              # %for.inc
                                        #   in Loop: Header=BB25_49 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB25_51
.LBB25_49:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	144(%rsp,%rcx,4), %edx
	testl	%edx, %edx
	je	.LBB25_48
# %bb.50:                               # %if.then152
                                        #   in Loop: Header=BB25_49 Depth=1
	movslq	80(%rsp,%rcx,4), %rsi
	movzbl	(%r12,%rsi,2), %edi
	movzbl	1(%r12,%rsi,2), %r8d
	leaq	(%r12,%rsi,2), %r12
	addq	$2, %r12
	movq	1272(%r13), %rsi
	movq	(%rsi), %rsi
	shll	$5, %r8d
	movq	(%rsi,%r8), %rsi
	shll	$4, %edi
	movl	%edx, (%rsi,%rdi)
	jmp	.LBB25_48
.LBB25_51:                              # %for.end
	cmpl	$0, 92(%rbx)
	jne	.LBB25_53
# %bb.52:                               # %if.then169
	movl	216(%r13), %esi
	movq	%rbx, %rdi
	callq	itrans_2@PLT
	jmp	.LBB25_53
.Lfunc_end25:
	.size	read_CBP_and_coeffs_from_NAL_CAVLC_400, .Lfunc_end25-read_CBP_and_coeffs_from_NAL_CAVLC_400
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_CBP_and_coeffs_from_NAL_CAVLC_420
	.type	read_CBP_and_coeffs_from_NAL_CAVLC_420,@function
read_CBP_and_coeffs_from_NAL_CAVLC_420: # @read_CBP_and_coeffs_from_NAL_CAVLC_420
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
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 384
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rsi
	movslq	200(%rsi), %rax
	movq	8(%rdi), %rbx
	movl	848776(%rbx), %ecx
	cmpl	$4, %ecx
	je	.LBB26_4
# %bb.1:                                # %entry
	cmpl	$3, %ecx
	jne	.LBB26_2
# %bb.3:                                # %land.lhs.true
	cmpl	$0, 96(%rdi)
	jmp	.LBB26_5
.LBB26_4:                               # %land.rhs
	cmpw	$12, 152(%rdi)
.LBB26_5:                               # %lor.end
	sete	%cl
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	jmp	.LBB26_6
.LBB26_2:
	movl	$0, 72(%rsp)                    # 4-byte Folded Spill
.LBB26_6:                               # %lor.end
	leaq	(%rax,%rax,4), %rax
	movq	13520(%rsi), %r12
	movl	$FIELD_SCAN, %ebp
	cmpl	$0, 848876(%rbx)
	jne	.LBB26_8
# %bb.7:                                # %land.end14
	cmpl	$0, 384(%rdi)
	movl	$SNGL_SCAN, %ecx
	cmoveq	%rcx, %rbp
.LBB26_8:                               # %land.end14.thread
	movslq	268(%r12), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movslq	24(%rdi), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	leaq	assignSE2partition(,%rax,4), %r14
	movl	96(%rdi), %eax
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movzwl	152(%rdi), %eax
	movl	$11, %ecx
	cmpl	$14, %eax
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	ja	.LBB26_23
# %bb.9:                                # %land.end14.thread
	movl	$12800, %edx                    # imm = 0x3200
	btl	%eax, %edx
	jae	.LBB26_10
# %bb.22:
	movl	$6, %ecx
.LBB26_23:                              # %lor.end39
	movl	%ecx, 280(%rsp)
	movl	%ecx, %ecx
	movzbl	(%r14,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shll	$4, %edx
	addq	312(%rsi), %rdx
	addl	$-9, %eax
	movl	$13488, %ecx                    # imm = 0x34B0
	cmpw	$4, %ax
	ja	.LBB26_25
# %bb.24:                               # %switch.lookup
	movzwl	%ax, %eax
	movq	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420(,%rax,8), %rcx
.LBB26_25:                              # %cond.end
	movq	(%rsi,%rcx), %rax
	movq	%rax, 312(%rsp)
	leaq	280(%rsp), %rsi
	callq	*40(%rdx)
	movq	32(%rsp), %r11                  # 8-byte Reload
	movl	284(%rsp), %r15d
	movl	%r15d, 284(%r11)
	movzwl	152(%r11), %eax
	leal	-1(%rax), %ecx
	cmpw	$3, %cx
	jb	.LBB26_30
# %bb.26:                               # %lor.lhs.false73
	testl	%eax, %eax
	jne	.LBB26_29
# %bb.27:                               # %land.lhs.true78
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 164(%rcx)
	jne	.LBB26_29
# %bb.28:                               # %land.lhs.true81
	movq	16(%rbx), %rcx
	cmpl	$0, 3144(%rcx)
	jne	.LBB26_31
.LBB26_29:                              # %lor.lhs.false83
	cmpl	$0, 424(%r11)
	je	.LBB26_36
.LBB26_30:                              # %land.lhs.true85
	orl	$4, %eax
	cmpl	$13, %eax
	jne	.LBB26_31
.LBB26_36:                              # %if.end
	testl	%r15d, %r15d
	je	.LBB26_37
.LBB26_34:                              # %if.then112
	cmpl	$1, 96(%r11)
	movl	$17, %ecx
	sbbl	$0, %ecx
	leaq	280(%rsp), %rdi
	movq	%r11, %rsi
	movq	%r14, %rdx
	movq	%r11, %rbx
	callq	read_delta_quant
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB26_35
# %bb.38:                               # %if.then119
	cmpl	$0, 96(%rbx)
	movq	%rbx, %rdi
	jne	.LBB26_41
# %bb.39:                               # %land.lhs.true123
	cmpl	$0, 1236(%rax)
	je	.LBB26_41
# %bb.40:                               # %if.then125
	movb	$1, 111(%rdi)
.LBB26_41:                              # %if.end126
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	jne	.LBB26_44
# %bb.42:                               # %land.lhs.true128
	cmpl	$0, 1232(%rax)
	je	.LBB26_44
# %bb.43:                               # %if.then130
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB26_44:                              # %if.end132
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r14
	leaq	128(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leaq	192(%rsp), %r8
	movq	32(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	movq	32(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB26_46
# %bb.45:                               # %lor.lhs.false.i
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB26_50
.LBB26_46:                              # %if.then.i
	cmpl	$0, 128(%rsp)
	je	.LBB26_48
# %bb.47:                               # %if.then7.i
	movq	848888(%rbx), %rax
	movslq	132(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB26_48:                              # %if.end.i
	cmpl	$0, 192(%rsp)
	je	.LBB26_50
# %bb.49:                               # %if.then14.i
	movq	848888(%rbx), %rax
	movslq	196(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB26_50:                              # %check_dp_neighbors.exit
	cmpb	$0, 111(%r11)
	movq	56(%rsp), %rbx                  # 8-byte Reload
	je	.LBB26_61
# %bb.51:                               # %if.then135
	movl	$0, 284(%r11)
	xorl	%r15d, %r15d
	jmp	.LBB26_61
.LBB26_10:                              # %land.end14.thread
	movl	$17408, %edx                    # imm = 0x4400
	btl	%eax, %edx
	jae	.LBB26_23
# %bb.11:                               # %if.else
	movl	284(%rdi), %r15d
	movq	%rdi, %rsi
	leaq	280(%rsp), %rdi
	movq	%r14, %rdx
	movl	$17, %ecx
	movq	%rsi, %rbx
	callq	read_delta_quant
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 200(%rax)
	je	.LBB26_52
# %bb.12:                               # %if.then143
	cmpl	$0, 1232(%rax)
	movq	%rbx, %rdi
	je	.LBB26_14
# %bb.13:                               # %if.then146
	movw	$257, 110(%rdi)                 # imm = 0x101
.LBB26_14:                              # %if.end149
	movq	8(%rdi), %rbx
	leaq	849132(%rbx), %r14
	leaq	128(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	leaq	192(%rsp), %r8
	movq	32(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	*856744(%rbx)
	movq	32(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 96(%r11)
	je	.LBB26_16
# %bb.15:                               # %lor.lhs.false.i942
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	jne	.LBB26_20
.LBB26_16:                              # %if.then.i946
	cmpl	$0, 128(%rsp)
	je	.LBB26_18
# %bb.17:                               # %if.then7.i948
	movq	848888(%rbx), %rax
	movslq	132(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB26_18:                              # %if.end.i955
	cmpl	$0, 192(%rsp)
	je	.LBB26_20
# %bb.19:                               # %if.then14.i957
	movq	848888(%rbx), %rax
	movslq	196(%rsp), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movzbl	111(%rax,%rcx), %eax
	orb	%al, 111(%r11)
.LBB26_20:                              # %check_dp_neighbors.exit964
	cmpb	$0, 111(%r11)
	je	.LBB26_54
# %bb.21:                               # %if.end155.thread1051
	movl	$0, 284(%r11)
	xorl	%r15d, %r15d
	movq	56(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB26_61
.LBB26_31:                              # %land.lhs.true95
	testb	$15, %r15b
	je	.LBB26_36
# %bb.32:                               # %land.rhs98
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 60(%rax)
	je	.LBB26_34
# %bb.33:                               # %if.then102
	movl	$0, 280(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	312(%rax), %rax
	movq	readMB_transform_size_flag_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 320(%rsp)
	movl	$1, 292(%rsp)
	movq	(%rax), %rsi
	leaq	280(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
	movq	32(%rsp), %r11                  # 8-byte Reload
	movl	284(%rsp), %eax
	movl	%eax, 420(%r11)
	jmp	.LBB26_34
.LBB26_37:
	xorl	%r15d, %r15d
	jmp	.LBB26_61
.LBB26_35:
	movq	%rbx, %r11
	movq	56(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB26_61
.LBB26_52:                              # %if.end155
	cmpb	$0, 111(%rbx)
	movq	%rbx, %r11
	je	.LBB26_54
# %bb.53:
	movq	56(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB26_61
.LBB26_54:                              # %if.then158
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	movq	%r11, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	movq	24(%rsp), %r10                  # 8-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	jle	.LBB26_59
# %bb.55:                               # %for.body.lr.ph
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	jmp	.LBB26_56
	.p2align	4, 0x90
.LBB26_58:                              # %for.inc
                                        #   in Loop: Header=BB26_56 Depth=1
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB26_59
.LBB26_56:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB26_58
# %bb.57:                               # %if.then169
                                        #   in Loop: Header=BB26_56 Depth=1
	movslq	128(%rsp,%rcx,4), %rdi
	movzbl	(%rdx,%rdi,2), %r8d
	movzbl	1(%rdx,%rdi,2), %r9d
	leaq	(%rdx,%rdi,2), %rdx
	addq	$2, %rdx
	movq	1272(%r10), %rdi
	movq	(%rdi), %rdi
	shll	$5, %r9d
	movq	(%rdi,%r9), %rdi
	shll	$4, %r8d
	movl	%esi, (%rdi,%r8)
	jmp	.LBB26_58
.LBB26_59:                              # %for.end
	movq	32(%rsp), %r11                  # 8-byte Reload
	cmpl	$0, 92(%r11)
	jne	.LBB26_61
# %bb.60:                               # %if.then186
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	216(%rax), %esi
	movq	%r11, %rdi
	callq	itrans_2@PLT
	movq	32(%rsp), %r11                  # 8-byte Reload
.LBB26_61:                              # %if.end189
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	148(%rax), %esi
	movq	(%r11), %rdx
	movq	8(%r11), %rax
	movl	%esi, 68(%r11)
	movl	849052(%rax), %ecx
	addl	%esi, %ecx
	movl	%ecx, 80(%r11)
	movq	13520(%rdx), %r8
	xorl	%edx, %edx
	subl	849056(%rax), %edx
	xorl	%r9d, %r9d
	movl	300(%r8), %r10d
	addl	%esi, %r10d
	cmpl	%edx, %r10d
	cmovlel	%edx, %r10d
	cmpl	$51, %r10d
	movl	$51, %edi
	movl	$51, %edx
	cmovll	%r10d, %edx
	testl	%r10d, %r10d
	js	.LBB26_63
# %bb.62:                               # %cond.false.i.i
	movl	%edx, %edx
	movzbl	QP_SCALE_CR(%rdx), %edx
.LBB26_63:                              # %cond.end.i.i
	movl	%edx, 72(%r11)
	movslq	849056(%rax), %r10
	movslq	%edx, %rdx
	addq	%r10, %rdx
	movl	%edx, 84(%r11)
	subl	849056(%rax), %r9d
	addl	304(%r8), %esi
	cmpl	%r9d, %esi
	cmovlel	%r9d, %esi
	cmpl	$51, %esi
	cmovll	%esi, %edi
	testl	%esi, %esi
	js	.LBB26_65
# %bb.64:                               # %cond.false.1.i.i
	movl	%edi, %esi
	movzbl	QP_SCALE_CR(%rsi), %edi
.LBB26_65:                              # %set_chroma_qp.exit.i
	movl	%edi, 76(%r11)
	movslq	849056(%rax), %rsi
	movslq	%edi, %rdi
	addq	%rsi, %rdi
	movl	%edi, 88(%r11)
	xorl	%esi, %esi
	testl	%ecx, %ecx
	jne	.LBB26_67
# %bb.66:                               # %land.rhs.i
	xorl	%esi, %esi
	cmpl	$1, 849092(%rax)
	sete	%sil
.LBB26_67:                              # %update_qp.exit
	movl	%esi, 92(%r11)
	movq	856032(%rbx), %rcx
	movq	856040(%rbx), %r9
	movq	24(%rsp), %rax                  # 8-byte Reload
	movslq	216(%rax), %r8
	movslq	80(%r11,%r8,4), %rsi
	movslq	(%r9,%rsi,4), %rax
	cmpl	$0, 268(%r12)
	je	.LBB26_68
# %bb.69:                               # %for.body208.preheader
	movl	(%rcx,%rdx,4), %r14d
	movl	%r14d, 88(%rsp)
	movl	(%r9,%rdx,4), %r13d
	movl	%r13d, 272(%rsp)
	movl	(%rcx,%rdi,4), %edx
	movl	%edx, 120(%rsp)                 # 4-byte Spill
	movl	%edx, 92(%rsp)
	movl	(%r9,%rdi,4), %edx
	movl	%edx, 124(%rsp)                 # 4-byte Spill
	movl	%edx, 276(%rsp)
	jmp	.LBB26_70
.LBB26_68:
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $edx
                                        # kill: killed $edx
                                        # implicit-def: $r14d
                                        # implicit-def: $r13d
.LBB26_70:                              # %if.end229
	leaq	(%r8,%r8,2), %rdi
	shlq	$7, %r8
	leaq	(%r8,%r8,2), %rdx
	movq	24(%rsp), %r10                  # 8-byte Reload
	leaq	(%r10,%rdx), %r8
	addq	$1392, %r8                      # imm = 0x570
	movq	%rax, %r9
	shlq	$6, %r9
	addq	%r9, %r8
	shlq	$8, %rax
	shlq	$9, %rdi
	addq	%r10, %rdx
	addq	$2544, %rdx                     # imm = 0x9F0
	addq	%r9, %rdx
	addq	%r10, %rdi
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	leaq	3696(%rax,%rdi), %r9
	cmoveq	%r8, %rdx
	leaq	8304(%rax,%rdi), %rax
	cmoveq	%r9, %rax
	testl	%r15d, %r15d
	je	.LBB26_74
# %bb.71:                               # %if.then265
	movl	%r15d, %r8d
	cmpl	$0, 420(%r11)
	movl	(%rcx,%rsi,4), %ecx
	movq	848832(%rbx), %rsi
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movq	(%rsi,%rdi,8), %rsi
	movq	(%rsi), %r9
	movq	%r11, %rdi
	je	.LBB26_72
# %bb.73:                               # %if.else272
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	readCompCoeff8x8MB_CAVLC
	movl	268(%r12), %eax
	cmpl	$3, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB26_76
	jmp	.LBB26_146
.LBB26_74:                              # %if.else278
	movq	848832(%rbx), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	268(%r12), %eax
	cmpl	$3, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB26_76
	jmp	.LBB26_146
.LBB26_72:                              # %if.then268
	xorl	%esi, %esi
	callq	readCompCoeff4x4MB_CAVLC
	movl	268(%r12), %eax
	cmpl	$3, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	je	.LBB26_146
.LBB26_76:                              # %if.then288
	leaq	1392(%rcx), %rsi
	leaq	2544(%rcx), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movl	%r15d, %r8d
	cmpl	$16, %r15d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jl	.LBB26_97
# %bb.77:                               # %if.then288
	cmpl	$1, %eax
	jne	.LBB26_97
# %bb.78:                               # %for.cond296.preheader
	leaq	1288(%rcx), %r12
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	cmoveq	%rsi, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 1288(%rcx)
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	movl	$6, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_83
# %bb.79:                               # %for.body329.lr.ph
	movl	$-1, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_80
	.p2align	4, 0x90
.LBB26_82:                              # %for.inc349
                                        #   in Loop: Header=BB26_80 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_83
.LBB26_80:                              # %for.body329
                                        # =>This Inner Loop Header: Depth=1
	movl	192(%rsp,%rdx,4), %esi
	testl	%esi, %esi
	je	.LBB26_82
# %bb.81:                               # %if.then334
                                        #   in Loop: Header=BB26_80 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	orb	$15, 290(%rdi)
	movl	128(%rsp,%rdx,4), %edi
	addl	%edi, %ecx
	incl	%ecx
	movslq	%ecx, %rdi
	movl	%esi, (%r12,%rdi,4)
	jmp	.LBB26_82
.LBB26_83:                              # %for.end351
	cmpb	$0, 72(%rsp)                    # 1-byte Folded Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB26_85
# %bb.84:                               # %lor.lhs.false353
	cmpl	$1, 92(%rdi)
	jne	.LBB26_86
.LBB26_85:                              # %if.then357
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	1288(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1292(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	1296(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1300(%rdx), %eax
	jmp	.LBB26_87
.LBB26_86:                              # %if.else390
	movslq	%r13d, %rax
	shlq	$6, %rax
	addq	%rax, %rbx
	addq	$384, %rbx                      # imm = 0x180
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	ihadamard2x2@PLT
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	(%rbx), %eax
	imull	96(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	sarl	$5, %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	(%rbx), %eax
	imull	100(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	(%rbx), %eax
	imull	104(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	(%rbx), %eax
	imull	108(%rsp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	sarl	$5, %eax
.LBB26_87:                              # %for.inc451
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	movq	1272(%rdx), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movq	80(%rsp), %rbx                  # 8-byte Reload
	cmoveq	264(%rsp), %rbx                 # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	movl	$6, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	readCoeff4x4_CAVLC
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	movl	%r15d, %r8d
	movl	124(%rsp), %r9d                 # 4-byte Reload
	jle	.LBB26_92
# %bb.88:                               # %for.body329.lr.ph.1
	movl	$-1, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_89
	.p2align	4, 0x90
.LBB26_91:                              # %for.inc349.1
                                        #   in Loop: Header=BB26_89 Depth=1
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_92
.LBB26_89:                              # %for.body329.1
                                        # =>This Inner Loop Header: Depth=1
	movl	192(%rsp,%rdx,4), %esi
	testl	%esi, %esi
	je	.LBB26_91
# %bb.90:                               # %if.then334.1
                                        #   in Loop: Header=BB26_89 Depth=1
	movq	32(%rsp), %rdi                  # 8-byte Reload
	orb	$-16, 290(%rdi)
	movl	128(%rsp,%rdx,4), %edi
	addl	%edi, %ecx
	incl	%ecx
	movslq	%ecx, %rdi
	movl	%esi, (%r12,%rdi,4)
	jmp	.LBB26_91
.LBB26_92:                              # %for.end351.1
	cmpb	$0, 72(%rsp)                    # 1-byte Folded Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB26_95
# %bb.93:                               # %lor.lhs.false353.1
	cmpl	$1, 92(%rdi)
	jne	.LBB26_94
.LBB26_95:                              # %if.then357.1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	1288(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1292(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movl	1296(%rdx), %eax
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movl	1300(%rdx), %eax
	jmp	.LBB26_96
.LBB26_94:                              # %if.else390.1
	movslq	%r9d, %rax
	shlq	$6, %rax
	addq	%rax, %rbx
	addq	$768, %rbx                      # imm = 0x300
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	ihadamard2x2@PLT
	movl	%r15d, %r8d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	(%rbx), %eax
	imull	96(%rsp), %eax
	movl	120(%rsp), %ecx                 # 4-byte Reload
	shll	%cl, %eax
	sarl	$5, %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, (%rsi)
	movl	(%rbx), %eax
	imull	100(%rsp), %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	%eax, 16(%rsi)
	movl	(%rbx), %eax
	imull	104(%rsp), %eax
	shll	%cl, %eax
	sarl	$5, %eax
	movq	1272(%rdx), %rsi
	movq	16(%rsi), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, (%rsi)
	movl	(%rbx), %eax
	imull	108(%rsp), %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	sarl	$5, %eax
.LBB26_96:                              # %if.end455.sink.split
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	1272(%rdx), %rcx
	movq	16(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, 16(%rcx)
	movq	264(%rsp), %rsi                 # 8-byte Reload
.LBB26_97:                              # %if.end455
	cmpl	$31, %r8d
	jg	.LBB26_99
# %bb.98:                               # %if.then458
	movq	848832(%rbx), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
.LBB26_146:                             # %if.end675
	addq	$328, %rsp                      # imm = 0x148
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
.LBB26_99:                              # %if.else464
	.cfi_def_cfa_offset 384
	decq	40(%rsp)                        # 8-byte Folded Spill
	cmpl	$0, 92(%rdi)
	movl	849096(%rbx), %eax
	je	.LBB26_123
# %bb.100:                              # %for.cond586.preheader
	testl	%eax, %eax
	jle	.LBB26_146
# %bb.101:                              # %for.body590.lr.ph
	xorl	%r13d, %r13d
	shlq	$5, 40(%rsp)                    # 8-byte Folded Spill
	leaq	20(%rsp), %r12
	jmp	.LBB26_102
	.p2align	4, 0x90
.LBB26_122:                             # %for.inc667.3
                                        #   in Loop: Header=BB26_102 Depth=1
	incq	%r13
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movslq	849096(%rbx), %rax
	cmpq	%rax, %r13
	jge	.LBB26_146
.LBB26_102:                             # %for.body590
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_104 Depth 2
                                        #     Child Loop BB26_109 Depth 2
                                        #     Child Loop BB26_114 Depth 2
                                        #     Child Loop BB26_119 Depth 2
	movslq	849100(%rbx), %rax
	xorl	%ecx, %ecx
	cmpq	%rax, %r13
	setge	%cl
	movq	%r12, %rsi
	movq	32(%rsp), %r12                  # 8-byte Reload
	movl	%ecx, 100(%r12)
	leaq	1(%rcx), %r14
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rax,%r13,4), %ebx
	movzbl	cofuv_blk_y(%rax,%r13,4), %r15d
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leal	(%rbx,%rcx,2), %edx
	leal	4(%r15), %ecx
	movq	%rsi, (%rsp)
	movq	%r12, %rdi
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	%r12, %rdi
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_107
# %bb.103:                              # %for.body622.lr.ph
                                        #   in Loop: Header=BB26_102 Depth=1
	shll	$2, %r15d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_104
	.p2align	4, 0x90
.LBB26_106:                             # %for.inc664
                                        #   in Loop: Header=BB26_104 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB26_107
.LBB26_104:                             # %for.body622
                                        #   Parent Loop BB26_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB26_106
# %bb.105:                              # %i64_power2.exit976
                                        #   in Loop: Header=BB26_104 Depth=2
	movzbl	cbp_blk_chroma(,%r13,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	128(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movzbl	(%rbp,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%rbp,%r9,2), %r10d
	addl	%r15d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r14,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB26_106
	.p2align	4, 0x90
.LBB26_107:                             # %for.inc667
                                        #   in Loop: Header=BB26_102 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addl	%ecx, %ecx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rax,%r13,4), %ebx
	movzbl	cofuv_blk_y+1(%rax,%r13,4), %r15d
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rbx), %edx
	leal	4(%r15), %ecx
	leaq	20(%rsp), %r12
	movq	%r12, (%rsp)
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_112
# %bb.108:                              # %for.body622.lr.ph.1
                                        #   in Loop: Header=BB26_102 Depth=1
	shll	$2, %r15d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_109
	.p2align	4, 0x90
.LBB26_111:                             # %for.inc664.1
                                        #   in Loop: Header=BB26_109 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB26_112
.LBB26_109:                             # %for.body622.1
                                        #   Parent Loop BB26_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB26_111
# %bb.110:                              # %i64_power2.exit976.1
                                        #   in Loop: Header=BB26_109 Depth=2
	movzbl	cbp_blk_chroma+1(,%r13,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	128(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movzbl	(%rbp,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%rbp,%r9,2), %r10d
	addl	%r15d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r14,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB26_111
	.p2align	4, 0x90
.LBB26_112:                             # %for.inc667.1
                                        #   in Loop: Header=BB26_102 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rax,%r13,4), %ebx
	movzbl	cofuv_blk_y+2(%rax,%r13,4), %r15d
	movq	48(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%rbx), %edx
	leal	4(%r15), %ecx
	movq	%r12, (%rsp)
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_117
# %bb.113:                              # %for.body622.lr.ph.2
                                        #   in Loop: Header=BB26_102 Depth=1
	shll	$2, %r15d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_114
	.p2align	4, 0x90
.LBB26_116:                             # %for.inc664.2
                                        #   in Loop: Header=BB26_114 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB26_117
.LBB26_114:                             # %for.body622.2
                                        #   Parent Loop BB26_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB26_116
# %bb.115:                              # %i64_power2.exit976.2
                                        #   in Loop: Header=BB26_114 Depth=2
	movzbl	cbp_blk_chroma+2(,%r13,4), %r8d
	movq	po2(,%r8,8), %r8
	orq	%r8, 288(%rdi)
	movl	128(%rsp,%rcx,4), %r8d
	addl	%r8d, %edx
	incl	%edx
	movslq	%edx, %r9
	movzbl	(%rbp,%r9,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%rbp,%r9,2), %r10d
	addl	%r15d, %r10d
	movq	1272(%r11), %r9
	movq	(%r9,%r14,8), %r9
	movq	(%r9,%r10,8), %r9
	movl	%esi, (%r9,%r8,4)
	jmp	.LBB26_116
	.p2align	4, 0x90
.LBB26_117:                             # %for.inc667.2
                                        #   in Loop: Header=BB26_102 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rax,%r13,4), %ebx
	movzbl	cofuv_blk_y+3(%rax,%r13,4), %r15d
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addl	%ebx, %edx
	leal	4(%r15), %ecx
	movq	%r12, (%rsp)
	movl	$7, %esi
                                        # kill: def $edx killed $edx killed $rdx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_122
# %bb.118:                              # %for.body622.lr.ph.3
                                        #   in Loop: Header=BB26_102 Depth=1
	shll	$2, %r15d
	shll	$2, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB26_119
	.p2align	4, 0x90
.LBB26_121:                             # %for.inc664.3
                                        #   in Loop: Header=BB26_119 Depth=2
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB26_122
.LBB26_119:                             # %for.body622.3
                                        #   Parent Loop BB26_102 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB26_121
# %bb.120:                              # %i64_power2.exit976.3
                                        #   in Loop: Header=BB26_119 Depth=2
	movzbl	cbp_blk_chroma+3(,%r13,4), %edi
	movq	po2(,%rdi,8), %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	orq	%rdi, 288(%r8)
	movl	128(%rsp,%rcx,4), %edi
	addl	%edi, %edx
	incl	%edx
	movslq	%edx, %rdi
	movzbl	(%rbp,%rdi,2), %r8d
	addl	%ebx, %r8d
	movzbl	1(%rbp,%rdi,2), %edi
	addl	%r15d, %edi
	movq	1272(%r10), %r9
	movq	(%r9,%r14,8), %r9
	movq	(%r9,%rdi,8), %rdi
	movl	%esi, (%rdi,%r8,4)
	jmp	.LBB26_121
.LBB26_123:                             # %for.cond469.preheader
	testl	%eax, %eax
	jle	.LBB26_146
# %bb.124:                              # %for.body472.lr.ph
	cmpl	$1, 48(%rsp)                    # 4-byte Folded Reload
	movslq	40(%rsp), %rcx                  # 4-byte Folded Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	cmoveq	%rsi, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	shlq	$5, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	jmp	.LBB26_125
	.p2align	4, 0x90
.LBB26_145:                             # %for.inc579.3
                                        #   in Loop: Header=BB26_125 Depth=1
	incq	%r15
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movslq	849096(%rbx), %rax
	cmpq	%rax, %r15
	jge	.LBB26_146
.LBB26_125:                             # %for.body472
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_127 Depth 2
                                        #     Child Loop BB26_132 Depth 2
                                        #     Child Loop BB26_137 Depth 2
                                        #     Child Loop BB26_142 Depth 2
	movslq	849100(%rbx), %rax
	xorl	%r12d, %r12d
	cmpq	%rax, %r15
	setge	%r12b
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movl	%r12d, 100(%rbx)
	leaq	1(%r12), %rax
	movslq	272(%rsp,%r12,4), %r13
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rax,2), %rax
	shll	$7, %eax
	addq	80(%rsp), %rax                  # 8-byte Folded Reload
	shlq	$6, %r13
	addq	%rax, %r13
	movq	64(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x(%rax,%r15,4), %ecx
	movzbl	cofuv_blk_y(%rax,%r15,4), %r14d
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leal	(%rcx,%r12,2), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	%rbx, %rdi
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_130
# %bb.126:                              # %for.body525.lr.ph
                                        #   in Loop: Header=BB26_125 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB26_127
	.p2align	4, 0x90
.LBB26_129:                             # %for.inc576
                                        #   in Loop: Header=BB26_127 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_130
.LBB26_127:                             # %for.body525
                                        #   Parent Loop BB26_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB26_129
# %bb.128:                              # %i64_power2.exit
                                        #   in Loop: Header=BB26_127 Depth=2
	movzbl	cbp_blk_chroma(,%r15,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	128(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movzbl	(%rbp,%rcx,2), %r8d
	movzbl	1(%rbp,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	88(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB26_129
	.p2align	4, 0x90
.LBB26_130:                             # %for.inc579
                                        #   in Loop: Header=BB26_125 Depth=1
	movl	%r12d, %ecx
	addl	%ecx, %ecx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+1(%rax,%r15,4), %edx
	movzbl	cofuv_blk_y+1(%rax,%r15,4), %r14d
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	addl	%ecx, %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_135
# %bb.131:                              # %for.body525.lr.ph.1
                                        #   in Loop: Header=BB26_125 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB26_132
	.p2align	4, 0x90
.LBB26_134:                             # %for.inc576.1
                                        #   in Loop: Header=BB26_132 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_135
.LBB26_132:                             # %for.body525.1
                                        #   Parent Loop BB26_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB26_134
# %bb.133:                              # %i64_power2.exit.1
                                        #   in Loop: Header=BB26_132 Depth=2
	movzbl	cbp_blk_chroma+1(,%r15,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	128(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movzbl	(%rbp,%rcx,2), %r8d
	movzbl	1(%rbp,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	88(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB26_134
	.p2align	4, 0x90
.LBB26_135:                             # %for.inc579.1
                                        #   in Loop: Header=BB26_125 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+2(%rax,%r15,4), %ecx
	movzbl	cofuv_blk_y+2(%rax,%r15,4), %r14d
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leal	(%rax,%rcx), %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r11                  # 8-byte Reload
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_140
# %bb.136:                              # %for.body525.lr.ph.2
                                        #   in Loop: Header=BB26_125 Depth=1
	shll	$2, %r14d
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shll	$2, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB26_137
	.p2align	4, 0x90
.LBB26_139:                             # %for.inc576.2
                                        #   in Loop: Header=BB26_137 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_140
.LBB26_137:                             # %for.body525.2
                                        #   Parent Loop BB26_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rdx,4), %r10d
	testl	%r10d, %r10d
	je	.LBB26_139
# %bb.138:                              # %i64_power2.exit.2
                                        #   in Loop: Header=BB26_137 Depth=2
	movzbl	cbp_blk_chroma+2(,%r15,4), %ecx
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%rdi)
	movl	128(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movzbl	(%rbp,%rcx,2), %r8d
	movzbl	1(%rbp,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	imull	(%rcx,%r8,4), %r10d
	movzbl	88(%rsp,%r12,4), %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movq	1272(%r11), %rcx
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	(%rcx,%rbx,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	40(%rsp), %r8d                  # 4-byte Folded Reload
	movl	%r10d, (%rcx,%r8,4)
	jmp	.LBB26_139
	.p2align	4, 0x90
.LBB26_140:                             # %for.inc579.2
                                        #   in Loop: Header=BB26_125 Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movzbl	cofuv_blk_x+3(%rax,%r15,4), %ebx
	movzbl	cofuv_blk_y+3(%rax,%r15,4), %r14d
	movq	72(%rsp), %rdx                  # 8-byte Reload
	addl	%ebx, %edx
	leal	4(%r14), %ecx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$7, %esi
                                        # kill: def $edx killed $edx killed $rdx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	24(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB26_145
# %bb.141:                              # %for.body525.lr.ph.3
                                        #   in Loop: Header=BB26_125 Depth=1
	shll	$2, %r14d
	shll	$2, %ebx
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB26_142
	.p2align	4, 0x90
.LBB26_144:                             # %for.inc576.3
                                        #   in Loop: Header=BB26_142 Depth=2
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB26_145
.LBB26_142:                             # %for.body525.3
                                        #   Parent Loop BB26_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	192(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB26_144
# %bb.143:                              # %i64_power2.exit.3
                                        #   in Loop: Header=BB26_142 Depth=2
	movzbl	cbp_blk_chroma+3(,%r15,4), %ecx
	movq	po2(,%rcx,8), %rcx
	movq	32(%rsp), %r8                   # 8-byte Reload
	orq	%rcx, 288(%r8)
	movl	128(%rsp,%rdx,4), %ecx
	addl	%ecx, %esi
	incl	%esi
	movslq	%esi, %rcx
	movzbl	(%rbp,%rcx,2), %r8d
	movzbl	1(%rbp,%rcx,2), %r9d
	movl	%r9d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	imull	(%rcx,%r8,4), %edi
	movzbl	88(%rsp,%r12,4), %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movq	1272(%r10), %rcx
	movq	48(%rsp), %r11                  # 8-byte Reload
	movq	(%rcx,%r11,8), %rcx
	addl	%r14d, %r9d
	movq	(%rcx,%r9,8), %rcx
	addl	%ebx, %r8d
	movl	%edi, (%rcx,%r8,4)
	jmp	.LBB26_144
.Lfunc_end26:
	.size	read_CBP_and_coeffs_from_NAL_CAVLC_420, .Lfunc_end26-read_CBP_and_coeffs_from_NAL_CAVLC_420
	.cfi_endproc
                                        # -- End function
	.globl	SetB8Mode                       # -- Begin function SetB8Mode
	.p2align	4, 0x90
	.type	SetB8Mode,@function
SetB8Mode:                              # @SetB8Mode
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	cmpl	$1, 164(%rax)
	movslq	%esi, %rcx
	movslq	%edx, %rax
	jne	.LBB27_2
# %bb.1:                                # %if.then
	movzbl	SetB8Mode.b_v2b8(%rcx), %edx
	movb	%dl, 364(%rdi,%rax)
	leaq	SetB8Mode.b_v2pd(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 368(%rdi,%rax)
	retq
.LBB27_2:                               # %if.else
	movzbl	SetB8Mode.p_v2b8(%rcx), %edx
	movb	%dl, 364(%rdi,%rax)
	leaq	SetB8Mode.p_v2pd(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 368(%rdi,%rax)
	retq
.Lfunc_end27:
	.size	SetB8Mode, .Lfunc_end27-SetB8Mode
	.cfi_endproc
                                        # -- End function
	.globl	reset_coeffs                    # -- Begin function reset_coeffs
	.p2align	4, 0x90
	.type	reset_coeffs,@function
reset_coeffs:                           # @reset_coeffs
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	8(%rax), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB28_1
# %bb.2:                                # %if.end
	retq
.LBB28_1:                               # %if.then
	movq	848832(%rax), %rax
	movl	108(%rdi), %ecx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	retq
.Lfunc_end28:
	.size	reset_coeffs, .Lfunc_end28-reset_coeffs
	.cfi_endproc
                                        # -- End function
	.globl	field_flag_inference            # -- Begin function field_flag_inference
	.p2align	4, 0x90
	.type	field_flag_inference,@function
field_flag_inference:                   # @field_flag_inference
	.cfi_startproc
# %bb.0:                                # %entry
	movq	8(%rdi), %rax
	movl	$388, %ecx                      # imm = 0x184
	cmpl	$0, 404(%rdi)
	jne	.LBB29_4
# %bb.1:                                # %if.else
	movl	$392, %ecx                      # imm = 0x188
	cmpl	$0, 408(%rdi)
	je	.LBB29_2
.LBB29_4:                               # %if.end.sink.split
	movq	848888(%rax), %rax
	movslq	(%rdi,%rcx), %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	movl	384(%rax,%rcx), %eax
	movl	%eax, 384(%rdi)
	retq
.LBB29_2:
	xorl	%eax, %eax
	movl	%eax, 384(%rdi)
	retq
.Lfunc_end29:
	.size	field_flag_inference, .Lfunc_end29-field_flag_inference
	.cfi_endproc
                                        # -- End function
	.globl	skip_macroblock                 # -- Begin function skip_macroblock
	.p2align	4, 0x90
	.type	skip_macroblock,@function
skip_macroblock:                        # @skip_macroblock
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	36(%rdi), %r12
	movq	(%rdi), %rax
	movq	8(%rdi), %rbp
	movswq	114(%rdi), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	13520(%rax), %r13
	leaq	849124(%rbp), %r14
	leaq	32(%rsp), %r8
	movl	$-1, %esi
	xorl	%edx, %edx
	movq	%r14, %rcx
	callq	get4x4Neighbour@PLT
	leaq	48(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	get4x4Neighbour@PLT
	leaq	64(%rsp), %r15
	movq	%rbx, %rdi
	movl	$16, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	movq	%r15, %r8
	callq	get4x4Neighbour@PLT
	cmpl	$0, 64(%rsp)
	je	.LBB30_1
# %bb.2:                                # %get_neighbors.exit
	movl	32(%rsp), %eax
	testl	%eax, %eax
	je	.LBB30_3
.LBB30_4:                               # %if.then
	movq	152(%r13), %rcx
	movswq	46(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rsi
	movswq	44(%rsp), %rdi
	shlq	$5, %rdi
	leaq	(%rsi,%rdi), %rdx
	addq	$16, %rdx
	movswl	18(%rsi,%rdi), %ecx
	movsbl	24(%rsi,%rdi), %r14d
	movslq	36(%rsp), %rsi
	imulq	$480, %rsi, %rsi                # imm = 0x1E0
	cmpl	$0, 384(%rbx)
	movq	848888(%rbp), %rdi
	movl	384(%rdi,%rsi), %esi
	je	.LBB30_7
# %bb.5:                                # %land.lhs.true
	testl	%esi, %esi
	jne	.LBB30_9
# %bb.6:                                # %if.then28
	movzwl	%cx, %esi
	shrl	$15, %esi
	addl	%ecx, %esi
	movswl	%si, %ecx
	sarl	%ecx
	addl	%r14d, %r14d
	jmp	.LBB30_9
.LBB30_1:                               # %if.then31.i
	leaq	80(%rsp), %r8
	movq	%rbx, %rdi
	movl	$-1, %esi
	movl	$-1, %edx
	movq	%r14, %rcx
	callq	get4x4Neighbour@PLT
	movaps	80(%rsp), %xmm0
	movaps	%xmm0, (%r15)
	movl	32(%rsp), %eax
	testl	%eax, %eax
	jne	.LBB30_4
.LBB30_3:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	jmp	.LBB30_9
.LBB30_7:                               # %land.lhs.true31
	testl	%esi, %esi
	je	.LBB30_9
# %bb.8:                                # %if.then39
	addl	%ecx, %ecx
	sarl	%r14d
.LBB30_9:                               # %if.end42
	movl	48(%rsp), %esi
	testl	%esi, %esi
	je	.LBB30_10
# %bb.11:                               # %if.then46
	movq	152(%r13), %rdi
	movswq	62(%rsp), %r8
	movq	(%rdi,%r8,8), %r9
	movswq	60(%rsp), %r10
	shlq	$5, %r10
	leaq	(%r9,%r10), %r8
	addq	$16, %r8
	movswl	18(%r9,%r10), %edi
	movsbl	24(%r9,%r10), %r9d
	movslq	52(%rsp), %r10
	imulq	$480, %r10, %r10                # imm = 0x1E0
	cmpl	$0, 384(%rbx)
	movq	848888(%rbp), %r11
	movl	384(%r11,%r10), %r10d
	je	.LBB30_14
# %bb.12:                               # %land.lhs.true74
	testl	%r10d, %r10d
	jne	.LBB30_16
# %bb.13:                               # %if.then82
	movzwl	%di, %r10d
	shrl	$15, %r10d
	addl	%edi, %r10d
	movswl	%r10w, %edi
	sarl	%edi
	addl	%r9d, %r9d
	jmp	.LBB30_16
.LBB30_10:
	xorl	%r9d, %r9d
	xorl	%edi, %edi
	xorl	%r8d, %r8d
	jmp	.LBB30_16
.LBB30_14:                              # %land.lhs.true88
	testl	%r10d, %r10d
	je	.LBB30_16
# %bb.15:                               # %if.then96
	addl	%edi, %edi
	sarl	%r9d
.LBB30_16:                              # %if.end100
	testl	%eax, %eax
	je	.LBB30_17
# %bb.18:                               # %cond.false
	testl	%r14d, %r14d
	je	.LBB30_20
# %bb.19:
	xorl	%eax, %eax
	testl	%esi, %esi
	jne	.LBB30_22
	jmp	.LBB30_36
.LBB30_17:
	movb	$1, %al
	testl	%esi, %esi
	je	.LBB30_36
.LBB30_22:                              # %cond.false116
	testl	%r9d, %r9d
	jne	.LBB30_25
# %bb.23:                               # %land.lhs.true119
	cmpw	$0, (%r8)
	jne	.LBB30_25
# %bb.24:                               # %land.rhs124
	testl	%edi, %edi
	sete	%cl
	orb	%al, %cl
	movl	%ecx, %eax
.LBB30_25:                              # %cond.end129
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	$0, 284(%rbx)
	movq	(%rsi), %rcx
	movq	8(%rcx), %rdx
	cmpl	$0, 12(%rdx)
	je	.LBB30_26
# %bb.27:                               # %reset_coeffs.exit
	testb	%al, %al
	jne	.LBB30_38
	jmp	.LBB30_28
.LBB30_20:                              # %land.lhs.true105
	cmpw	$0, (%rdx)
	sete	%dl
	testl	%ecx, %ecx
	sete	%al
	andb	%dl, %al
	testl	%esi, %esi
	jne	.LBB30_22
.LBB30_36:                              # %if.then133.critedge
	movl	$0, 284(%rbx)
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	(%rsi), %rax
	movq	8(%rax), %rcx
	cmpl	$0, 12(%rcx)
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jne	.LBB30_38
# %bb.37:                               # %if.then.i257
	movq	848832(%rax), %rax
	movl	108(%rsi), %ecx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, (%rax)
	jmp	.LBB30_38
.LBB30_26:                              # %if.then.i
	movq	848832(%rcx), %rcx
	movl	108(%rsi), %edx
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rcx)
	movups	%xmm0, 16(%rcx)
	movups	%xmm0, (%rcx)
	testb	%al, %al
	je	.LBB30_28
.LBB30_38:                              # %for.body146.lr.ph
	movq	264(%rsi,%rdi,8), %rax
	movq	(%rax), %rax
	movslq	32(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	shlq	$5, %rcx
	orq	$24, %rcx
	.p2align	4, 0x90
.LBB30_39:                              # %for.body146
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rsi
	movq	(%rsi,%r12,8), %rsi
	movq	%rax, -24(%rsi,%rcx)
	movl	$0, -8(%rsi,%rcx)
	movb	$0, (%rsi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$3, %rsi
	incq	%rdx
	addq	$32, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB30_39
# %bb.40:                               # %for.body146.lr.ph.1
	movslq	32(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	shlq	$5, %rcx
	orq	$24, %rcx
	.p2align	4, 0x90
.LBB30_41:                              # %for.body146.1
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rsi
	movq	8(%rsi,%r12,8), %rsi
	movq	%rax, -24(%rsi,%rcx)
	movl	$0, -8(%rsi,%rcx)
	movb	$0, (%rsi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$3, %rsi
	incq	%rdx
	addq	$32, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB30_41
# %bb.42:                               # %for.body146.lr.ph.2
	movslq	32(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	shlq	$5, %rcx
	orq	$24, %rcx
	.p2align	4, 0x90
.LBB30_43:                              # %for.body146.2
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rsi
	movq	16(%rsi,%r12,8), %rsi
	movq	%rax, -24(%rsi,%rcx)
	movl	$0, -8(%rsi,%rcx)
	movb	$0, (%rsi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$3, %rsi
	incq	%rdx
	addq	$32, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB30_43
# %bb.44:                               # %for.body146.lr.ph.3
	movslq	32(%rbx), %rcx
	leaq	-1(%rcx), %rdx
	shlq	$5, %rcx
	orq	$24, %rcx
	.p2align	4, 0x90
.LBB30_45:                              # %for.body146.3
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rsi
	movq	24(%rsi,%r12,8), %rsi
	movq	%rax, -24(%rsi,%rcx)
	movl	$0, -8(%rsi,%rcx)
	movb	$0, (%rsi,%rcx)
	movslq	32(%rbx), %rsi
	addq	$3, %rsi
	incq	%rdx
	addq	$32, %rcx
	cmpq	%rsi, %rdx
	jl	.LBB30_45
	jmp	.LBB30_46
.LBB30_28:                              # %for.body180.lr.ph
	movq	264(%rsi,%rdi,8), %rax
	movq	(%rax), %r14
	movq	152(%r13), %r8
	leaq	32(%rsp), %rsi
	leaq	12(%rsp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
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
	movslq	32(%rbx), %rax
	leaq	-1(%rax), %rcx
	shlq	$5, %rax
	orq	$24, %rax
	.p2align	4, 0x90
.LBB30_29:                              # %for.body180
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rdx
	movq	(%rdx,%r12,8), %rdx
	movq	%r14, -24(%rdx,%rax)
	movl	12(%rsp), %esi
	movl	%esi, -8(%rdx,%rax)
	movb	$0, (%rdx,%rax)
	movslq	32(%rbx), %rdx
	addq	$3, %rdx
	incq	%rcx
	addq	$32, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_29
# %bb.30:                               # %for.body180.lr.ph.1
	movslq	32(%rbx), %rax
	leaq	-1(%rax), %rcx
	shlq	$5, %rax
	orq	$24, %rax
	.p2align	4, 0x90
.LBB30_31:                              # %for.body180.1
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rdx
	movq	8(%rdx,%r12,8), %rdx
	movq	%r14, -24(%rdx,%rax)
	movl	12(%rsp), %esi
	movl	%esi, -8(%rdx,%rax)
	movb	$0, (%rdx,%rax)
	movslq	32(%rbx), %rdx
	addq	$3, %rdx
	incq	%rcx
	addq	$32, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_31
# %bb.32:                               # %for.body180.lr.ph.2
	movslq	32(%rbx), %rax
	leaq	-1(%rax), %rcx
	shlq	$5, %rax
	orq	$24, %rax
	.p2align	4, 0x90
.LBB30_33:                              # %for.body180.2
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rdx
	movq	16(%rdx,%r12,8), %rdx
	movq	%r14, -24(%rdx,%rax)
	movl	12(%rsp), %esi
	movl	%esi, -8(%rdx,%rax)
	movb	$0, (%rdx,%rax)
	movslq	32(%rbx), %rdx
	addq	$3, %rdx
	incq	%rcx
	addq	$32, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_33
# %bb.34:                               # %for.body180.lr.ph.3
	movslq	32(%rbx), %rax
	leaq	-1(%rax), %rcx
	shlq	$5, %rax
	orq	$24, %rax
	.p2align	4, 0x90
.LBB30_35:                              # %for.body180.3
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%r13), %rdx
	movq	24(%rdx,%r12,8), %rdx
	movq	%r14, -24(%rdx,%rax)
	movl	12(%rsp), %esi
	movl	%esi, -8(%rdx,%rax)
	movb	$0, (%rdx,%rax)
	movslq	32(%rbx), %rdx
	addq	$3, %rdx
	incq	%rcx
	addq	$32, %rax
	cmpq	%rdx, %rcx
	jl	.LBB30_35
.LBB30_46:                              # %if.end198
	addq	$104, %rsp
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
.Lfunc_end30:
	.size	skip_macroblock, .Lfunc_end30-skip_macroblock
	.cfi_endproc
                                        # -- End function
	.globl	get_neighbors                   # -- Begin function get_neighbors
	.p2align	4, 0x90
	.type	get_neighbors,@function
get_neighbors:                          # @get_neighbors
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
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movl	%ecx, %ebp
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$849124, %r14d                  # imm = 0xCF4E4
	addq	8(%rdi), %r14
	leal	-1(%r12), %esi
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movl	%ecx, %edx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	get4x4Neighbour@PLT
	leal	-1(%rbp), %ebx
	leaq	16(%r13), %r8
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	movq	%r14, %rcx
	callq	get4x4Neighbour@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	leal	(%rax,%r12), %esi
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	addq	$32, %r13
	movq	%r15, %rdi
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%ebx, 16(%rsp)                  # 4-byte Spill
	movl	%ebx, %edx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	get4x4Neighbour@PLT
	testl	%ebp, %ebp
	jle	.LBB31_5
# %bb.1:                                # %if.then
	cmpl	$7, %r12d
	jg	.LBB31_4
# %bb.2:                                # %if.then7
	cmpl	$8, %ebp
	jne	.LBB31_6
# %bb.3:                                # %if.then9
	cmpl	$16, 24(%rsp)                   # 4-byte Folded Reload
	je	.LBB31_7
	jmp	.LBB31_5
.LBB31_4:                               # %if.else20
	cmpl	$16, 12(%rsp)                   # 4-byte Folded Reload
	jne	.LBB31_5
.LBB31_7:                               # %if.then31.sink.split
	movl	$0, (%r13)
	jmp	.LBB31_8
.LBB31_6:                               # %if.else
	cmpl	$8, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB31_7
.LBB31_5:                               # %if.end28
	cmpl	$0, (%r13)
	jne	.LBB31_9
.LBB31_8:                               # %if.then31
	movq	32(%rsp), %rbx                  # 8-byte Reload
	leaq	48(%rbx), %r8
	movq	%r15, %rdi
	movl	20(%rsp), %esi                  # 4-byte Reload
	movl	16(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	callq	get4x4Neighbour@PLT
	movups	48(%rbx), %xmm0
	movups	%xmm0, (%r13)
.LBB31_9:                               # %if.end37
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
.Lfunc_end31:
	.size	get_neighbors, .Lfunc_end31-get_neighbors
	.cfi_endproc
                                        # -- End function
	.globl	predict_nnz                     # -- Begin function predict_nnz
	.p2align	4, 0x90
	.type	predict_nnz,@function
predict_nnz:                            # @predict_nnz
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
	movl	%ecx, %ebp
                                        # kill: def $edx killed $edx def $rdx
	movl	%esi, %ebx
	movq	%rdi, %r14
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	8(%rdi), %r15
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	leal	-1(%rdx), %esi
	leaq	849124(%r15), %r12
	movq	%rsp, %r8
	movl	%ecx, %edx
	movq	%r12, %rcx
	callq	get4x4Neighbour@PLT
	cmpl	$1, 96(%r14)
	sete	%cl
	movl	(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	andb	%cl, %dl
	xorl	%r13d, %r13d
	cmpb	$1, %dl
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	jne	.LBB32_4
# %bb.1:                                # %land.lhs.true2
	movq	8(%r15), %rcx
	xorl	%r13d, %r13d
	cmpl	$0, 2204(%rcx)
	je	.LBB32_5
# %bb.2:                                # %land.lhs.true4
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 200(%rcx)
	jne	.LBB32_5
# %bb.3:                                # %if.then
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	4(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	xorl	%r13d, %r13d
	andl	%ecx, %eax
	movl	%eax, (%rsp)
	sete	%r13b
.LBB32_4:                               # %if.end11
	testl	%eax, %eax
	je	.LBB32_13
.LBB32_5:                               # %if.then14
	cmpl	$8, %ebx
	je	.LBB32_11
# %bb.6:                                # %if.then14
	cmpl	$3, %ebx
	je	.LBB32_10
# %bb.7:                                # %if.then14
	testl	%ebx, %ebx
	jne	.LBB32_12
# %bb.8:                                # %sw.bb
	movq	848832(%r15), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	jmp	.LBB32_9
.LBB32_10:                              # %sw.bb25
	movq	848832(%r15), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB32_9
.LBB32_11:                              # %sw.bb39
	movq	848832(%r15), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	16(%rax), %rax
.LBB32_9:                               # %if.end53
	movswq	10(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	8(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
	incl	%r13d
	jmp	.LBB32_14
.LBB32_12:                              # %sw.default
	movl	$.L.str.2, %edi
	movl	$600, %esi                      # imm = 0x258
	callq	error@PLT
.LBB32_13:                              # %if.end53
	xorl	%eax, %eax
.LBB32_14:                              # %if.end53
	movzbl	%al, %r15d
	decl	%ebp
	movq	%rsp, %r8
	movq	%r14, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%ebp, %edx
	movq	%r12, %rcx
	callq	get4x4Neighbour@PLT
	cmpl	$1, 96(%r14)
	sete	%cl
	movl	(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB32_18
# %bb.15:                               # %land.lhs.true64
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rcx), %rcx
	cmpl	$0, 2204(%rcx)
	je	.LBB32_19
# %bb.16:                               # %land.lhs.true68
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 200(%rcx)
	jne	.LBB32_19
# %bb.17:                               # %if.then72
	movq	13544(%rcx), %rcx
	movslq	4(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	xorl	%edx, %edx
	andl	%ecx, %eax
	movl	%eax, (%rsp)
	sete	%dl
	addl	%edx, %r13d
.LBB32_18:                              # %if.end85
	testl	%eax, %eax
	je	.LBB32_27
.LBB32_19:                              # %if.then88
	cmpl	$8, %ebx
	je	.LBB32_25
# %bb.20:                               # %if.then88
	cmpl	$3, %ebx
	je	.LBB32_24
# %bb.21:                               # %if.then88
	testl	%ebx, %ebx
	jne	.LBB32_26
# %bb.22:                               # %sw.bb89
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	848832(%rax), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	jmp	.LBB32_23
.LBB32_24:                              # %sw.bb103
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	848832(%rax), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB32_23
.LBB32_25:                              # %sw.bb118
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	848832(%rax), %rax
	movslq	4(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	16(%rax), %rax
.LBB32_23:                              # %if.end135
	movswq	10(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	8(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
	addl	%r15d, %eax
	incl	%r13d
	movl	%eax, %r15d
	jmp	.LBB32_27
.LBB32_26:                              # %sw.default133
	movl	$.L.str.2, %edi
	movl	$600, %esi                      # imm = 0x258
	callq	error@PLT
.LBB32_27:                              # %if.end135
	leal	1(%r15), %eax
	shrl	%eax
	cmpl	$2, %r13d
	cmovnel	%r15d, %eax
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
.Lfunc_end32:
	.size	predict_nnz, .Lfunc_end32-predict_nnz
	.cfi_endproc
                                        # -- End function
	.globl	predict_nnz_chroma              # -- Begin function predict_nnz_chroma
	.p2align	4, 0x90
	.type	predict_nnz_chroma,@function
predict_nnz_chroma:                     # @predict_nnz_chroma
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
	movq	(%rdi), %rcx
	movq	13520(%rcx), %rax
	xorl	%ebx, %ebx
	cmpl	$3, 268(%rax)
	je	.LBB33_18
# %bb.1:                                # %if.then
	movl	%esi, %r13d
	movq	%rdi, %r14
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	8(%rdi), %r12
	leal	(,%r13,4), %r15d
	andl	$4, %r15d
	leal	-1(%r15), %esi
	leaq	849132(%r12), %rcx
	leaq	8(%rsp), %r8
	movl	%edx, %ebp
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	get4x4Neighbour@PLT
	cmpl	$1, 96(%r14)
	sete	%cl
	movl	8(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	andb	%cl, %dl
	xorl	%ebx, %ebx
	movslq	%r13d, %rdi
	cmpb	$1, %dl
	jne	.LBB33_2
# %bb.3:                                # %land.lhs.true5
	movq	%r12, %rsi
	movq	8(%r12), %rcx
	xorl	%r13d, %r13d
	cmpl	$0, 2204(%rcx)
	je	.LBB33_4
# %bb.5:                                # %land.lhs.true7
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 200(%rcx)
	movl	%ebp, %edx
	movq	%rsi, %r12
	jne	.LBB33_8
# %bb.6:                                # %if.then9
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	13544(%rcx), %rcx
	movslq	12(%rsp), %rsi
	movsbl	(%rcx,%rsi), %ecx
	xorl	%r13d, %r13d
	andl	%ecx, %eax
	movl	%eax, 8(%rsp)
	sete	%r13b
	testl	%eax, %eax
	jne	.LBB33_8
	jmp	.LBB33_9
.LBB33_2:
	xorl	%r13d, %r13d
	movl	%ebp, %edx
	testl	%eax, %eax
	jne	.LBB33_8
	jmp	.LBB33_9
.LBB33_4:
	movl	%ebp, %edx
	movq	%rsi, %r12
.LBB33_8:                               # %if.then19
	movq	848832(%r12), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	movswq	18(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rdi, %rcx
	andq	$-2, %rcx
	movswq	16(%rsp), %rsi
	addq	%rcx, %rsi
	movzbl	(%rax,%rsi), %ebx
	incl	%r13d
.LBB33_9:                               # %if.end31
	movq	%rdi, %rbp
	decl	%edx
	leaq	8(%rsp), %r8
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	32(%rsp), %rcx                  # 8-byte Reload
	callq	get4x4Neighbour@PLT
	cmpl	$1, 96(%r14)
	sete	%cl
	movl	8(%rsp), %eax
	testl	%eax, %eax
	setne	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB33_10
# %bb.11:                               # %land.lhs.true44
	movq	8(%r12), %rcx
	cmpl	$0, 2204(%rcx)
	movq	%rbp, %rsi
	je	.LBB33_15
# %bb.12:                               # %land.lhs.true48
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpl	$1, 200(%rcx)
	jne	.LBB33_15
# %bb.13:                               # %if.then52
	movq	13544(%rcx), %rcx
	movslq	12(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	xorl	%edx, %edx
	andl	%ecx, %eax
	movl	%eax, 8(%rsp)
	sete	%dl
	addl	%edx, %r13d
	testl	%eax, %eax
	jne	.LBB33_15
	jmp	.LBB33_16
.LBB33_10:
	movq	%rbp, %rsi
	testl	%eax, %eax
	je	.LBB33_16
.LBB33_15:                              # %if.then68
	movq	848832(%r12), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rax), %rax
	movswq	18(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	andq	$-2, %rsi
	movswq	16(%rsp), %rcx
	addq	%rsi, %rcx
	movzbl	(%rax,%rcx), %eax
	addl	%eax, %ebx
	incl	%r13d
.LBB33_16:                              # %if.end87
	cmpl	$2, %r13d
	jne	.LBB33_18
# %bb.17:                               # %if.then90
	incl	%ebx
	shrl	%ebx
.LBB33_18:                              # %if.end94
	movl	%ebx, %eax
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
.Lfunc_end33:
	.size	predict_nnz_chroma, .Lfunc_end33-predict_nnz_chroma
	.cfi_endproc
                                        # -- End function
	.globl	decode_one_macroblock           # -- Begin function decode_one_macroblock
	.p2align	4, 0x90
	.type	decode_one_macroblock,@function
decode_one_macroblock:                  # @decode_one_macroblock
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rbx
	cmpl	$0, 64(%rbx)
	je	.LBB34_5
# %bb.1:                                # %if.then
	cmpl	$0, 96(%r15)
	je	.LBB34_2
# %bb.3:                                # %if.else
	movq	128(%r14), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	movq	136(%r14), %rax
	movq	(%rax), %rdx
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	jmp	.LBB34_4
.LBB34_5:                               # %if.else21
	movq	128(%r14), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	jmp	.LBB34_6
.LBB34_2:                               # %if.then3
	movq	8(%r15), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	init_cur_imgy
	movq	128(%r14), %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	$1, %edx
	callq	init_cur_imgy
	movq	136(%r14), %rax
	movq	(%rax), %rdx
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	callq	init_cur_imgy
.LBB34_4:                               # %if.end
	movq	136(%r14), %rax
	movq	8(%rax), %rdx
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r14, %rcx
	callq	*13416(%rbx)
	movl	$0, 1240(%rbx)
.LBB34_6:                               # %if.end25
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	decode_one_macroblock, .Lfunc_end34-decode_one_macroblock
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_cur_imgy
	.type	init_cur_imgy,@function
init_cur_imgy:                          # @init_cur_imgy
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 849280(%rdi)
	je	.LBB35_1
.LBB35_62:                              # %if.end61
	retq
.LBB35_1:                               # %if.then
	movq	856488(%rdi), %rax
	movl	76(%rsi), %ecx
	movl	849276(%rdi), %edi
	testl	%edx, %edx
	je	.LBB35_32
# %bb.2:                                # %for.cond23.preheader
	movslq	%edx, %rdx
	movzbl	256(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_7
# %bb.3:                                # %for.body34.preheader
	xorl	%r8d, %r8d
	jmp	.LBB35_4
	.p2align	4, 0x90
.LBB35_6:                               # %if.end53
                                        #   in Loop: Header=BB35_4 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_7
.LBB35_4:                               # %for.body34
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_6
# %bb.5:                                # %if.then42
                                        #   in Loop: Header=BB35_4 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	256(%rsi), %r9d
	jmp	.LBB35_6
.LBB35_7:                               # %for.inc57
	movzbl	257(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_12
# %bb.8:                                # %for.body34.lr.ph.1
	xorl	%r8d, %r8d
	jmp	.LBB35_9
	.p2align	4, 0x90
.LBB35_11:                              # %if.end53.1
                                        #   in Loop: Header=BB35_9 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_12
.LBB35_9:                               # %for.body34.1
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_11
# %bb.10:                               # %if.then42.1
                                        #   in Loop: Header=BB35_9 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	257(%rsi), %r9d
	jmp	.LBB35_11
.LBB35_12:                              # %for.inc57.1
	movzbl	258(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_17
# %bb.13:                               # %for.body34.lr.ph.2
	xorl	%r8d, %r8d
	jmp	.LBB35_14
	.p2align	4, 0x90
.LBB35_16:                              # %if.end53.2
                                        #   in Loop: Header=BB35_14 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_17
.LBB35_14:                              # %for.body34.2
                                        # =>This Inner Loop Header: Depth=1
	movq	280(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_16
# %bb.15:                               # %if.then42.2
                                        #   in Loop: Header=BB35_14 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	258(%rsi), %r9d
	jmp	.LBB35_16
.LBB35_17:                              # %for.inc57.2
	movzbl	259(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_22
# %bb.18:                               # %for.body34.lr.ph.3
	xorl	%r8d, %r8d
	jmp	.LBB35_19
	.p2align	4, 0x90
.LBB35_21:                              # %if.end53.3
                                        #   in Loop: Header=BB35_19 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_22
.LBB35_19:                              # %for.body34.3
                                        # =>This Inner Loop Header: Depth=1
	movq	288(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_21
# %bb.20:                               # %if.then42.3
                                        #   in Loop: Header=BB35_19 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	259(%rsi), %r9d
	jmp	.LBB35_21
.LBB35_22:                              # %for.inc57.3
	movzbl	260(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_27
# %bb.23:                               # %for.body34.lr.ph.4
	xorl	%r8d, %r8d
	jmp	.LBB35_24
	.p2align	4, 0x90
.LBB35_26:                              # %if.end53.4
                                        #   in Loop: Header=BB35_24 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_27
.LBB35_24:                              # %for.body34.4
                                        # =>This Inner Loop Header: Depth=1
	movq	296(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_26
# %bb.25:                               # %if.then42.4
                                        #   in Loop: Header=BB35_24 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	260(%rsi), %r9d
	jmp	.LBB35_26
.LBB35_27:                              # %for.inc57.4
	movzbl	261(%rsi), %r9d
	testb	%r9b, %r9b
	jle	.LBB35_62
# %bb.28:                               # %for.body34.lr.ph.5
	xorl	%r8d, %r8d
	jmp	.LBB35_29
	.p2align	4, 0x90
.LBB35_31:                              # %if.end53.5
                                        #   in Loop: Header=BB35_29 Depth=1
	incq	%r8
	movsbq	%r9b, %r10
	cmpq	%r10, %r8
	jge	.LBB35_62
.LBB35_29:                              # %for.body34.5
                                        # =>This Inner Loop Header: Depth=1
	movq	304(%rsi), %r10
	movq	(%r10,%r8,8), %r10
	testq	%r10, %r10
	je	.LBB35_31
# %bb.30:                               # %if.then42.5
                                        #   in Loop: Header=BB35_29 Depth=1
	cmpl	%edi, %ecx
	setl	%r9b
	cmpq	%rax, %r10
	sete	%r11b
	andb	%r9b, %r11b
	movzbl	%r11b, %r9d
	movl	%r9d, 384(%r10)
	movq	136(%r10), %r9
	movq	-8(%r9,%rdx,8), %r9
	movq	%r9, 376(%r10)
	movzbl	261(%rsi), %r9d
	jmp	.LBB35_31
.LBB35_32:                              # %for.cond.preheader
	movzbl	256(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_37
# %bb.33:                               # %for.body11.preheader
	xorl	%edx, %edx
	jmp	.LBB35_34
	.p2align	4, 0x90
.LBB35_36:                              # %if.end
                                        #   in Loop: Header=BB35_34 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_37
.LBB35_34:                              # %for.body11
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_36
# %bb.35:                               # %if.then16
                                        #   in Loop: Header=BB35_34 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	256(%rsi), %r8d
	jmp	.LBB35_36
.LBB35_37:                              # %for.inc20
	movzbl	257(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_42
# %bb.38:                               # %for.body11.lr.ph.1
	xorl	%edx, %edx
	jmp	.LBB35_39
	.p2align	4, 0x90
.LBB35_41:                              # %if.end.1
                                        #   in Loop: Header=BB35_39 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_42
.LBB35_39:                              # %for.body11.1
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_41
# %bb.40:                               # %if.then16.1
                                        #   in Loop: Header=BB35_39 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	257(%rsi), %r8d
	jmp	.LBB35_41
.LBB35_42:                              # %for.inc20.1
	movzbl	258(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_47
# %bb.43:                               # %for.body11.lr.ph.2
	xorl	%edx, %edx
	jmp	.LBB35_44
	.p2align	4, 0x90
.LBB35_46:                              # %if.end.2
                                        #   in Loop: Header=BB35_44 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_47
.LBB35_44:                              # %for.body11.2
                                        # =>This Inner Loop Header: Depth=1
	movq	280(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_46
# %bb.45:                               # %if.then16.2
                                        #   in Loop: Header=BB35_44 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	258(%rsi), %r8d
	jmp	.LBB35_46
.LBB35_47:                              # %for.inc20.2
	movzbl	259(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_52
# %bb.48:                               # %for.body11.lr.ph.3
	xorl	%edx, %edx
	jmp	.LBB35_49
	.p2align	4, 0x90
.LBB35_51:                              # %if.end.3
                                        #   in Loop: Header=BB35_49 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_52
.LBB35_49:                              # %for.body11.3
                                        # =>This Inner Loop Header: Depth=1
	movq	288(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_51
# %bb.50:                               # %if.then16.3
                                        #   in Loop: Header=BB35_49 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	259(%rsi), %r8d
	jmp	.LBB35_51
.LBB35_52:                              # %for.inc20.3
	movzbl	260(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_57
# %bb.53:                               # %for.body11.lr.ph.4
	xorl	%edx, %edx
	jmp	.LBB35_54
	.p2align	4, 0x90
.LBB35_56:                              # %if.end.4
                                        #   in Loop: Header=BB35_54 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_57
.LBB35_54:                              # %for.body11.4
                                        # =>This Inner Loop Header: Depth=1
	movq	296(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_56
# %bb.55:                               # %if.then16.4
                                        #   in Loop: Header=BB35_54 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	260(%rsi), %r8d
	jmp	.LBB35_56
.LBB35_57:                              # %for.inc20.4
	movzbl	261(%rsi), %r8d
	testb	%r8b, %r8b
	jle	.LBB35_62
# %bb.58:                               # %for.body11.lr.ph.5
	xorl	%edx, %edx
	jmp	.LBB35_59
	.p2align	4, 0x90
.LBB35_61:                              # %if.end.5
                                        #   in Loop: Header=BB35_59 Depth=1
	incq	%rdx
	movsbq	%r8b, %r9
	cmpq	%r9, %rdx
	jge	.LBB35_62
.LBB35_59:                              # %for.body11.5
                                        # =>This Inner Loop Header: Depth=1
	movq	304(%rsi), %r9
	movq	(%r9,%rdx,8), %r9
	testq	%r9, %r9
	je	.LBB35_61
# %bb.60:                               # %if.then16.5
                                        #   in Loop: Header=BB35_59 Depth=1
	cmpl	%edi, %ecx
	setl	%r8b
	cmpq	%rax, %r9
	sete	%r10b
	andb	%r8b, %r10b
	movzbl	%r10b, %r8d
	movl	%r8d, 384(%r9)
	movq	128(%r9), %r8
	movq	%r8, 376(%r9)
	movzbl	261(%rsi), %r8d
	jmp	.LBB35_61
.Lfunc_end35:
	.size	init_cur_imgy, .Lfunc_end35-init_cur_imgy
	.cfi_endproc
                                        # -- End function
	.globl	change_plane_JV                 # -- Begin function change_plane_JV
	.p2align	4, 0x90
	.type	change_plane_JV,@function
change_plane_JV:                        # @change_plane_JV
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rax
	movq	848896(%rdi,%rax,8), %rcx
	movq	%rcx, 848888(%rdi)
	movq	856464(%rdi,%rax,8), %rcx
	movq	%rcx, 856456(%rdi)
	movq	848848(%rdi,%rax,8), %rcx
	movq	%rcx, 848840(%rdi)
	movq	848808(%rdi,%rax,8), %rcx
	movq	%rcx, 848800(%rdi)
	movq	848752(%rdi,%rax,8), %rcx
	movq	%rcx, 848744(%rdi)
	testq	%rdx, %rdx
	je	.LBB36_2
# %bb.1:                                # %if.then
	movq	848896(%rdi,%rax,8), %rcx
	movq	%rcx, 13512(%rdx)
	movq	856464(%rdi,%rax,8), %rcx
	movq	%rcx, 13520(%rdx)
	movq	848848(%rdi,%rax,8), %rcx
	movq	%rcx, 13528(%rdx)
	movq	848808(%rdi,%rax,8), %rcx
	movq	%rcx, 13536(%rdx)
	movq	848752(%rdi,%rax,8), %rax
	movq	%rax, 13544(%rdx)
.LBB36_2:                               # %if.end
	retq
.Lfunc_end36:
	.size	change_plane_JV, .Lfunc_end36-change_plane_JV
	.cfi_endproc
                                        # -- End function
	.globl	make_frame_picture_JV           # -- Begin function make_frame_picture_JV
	.p2align	4, 0x90
	.type	make_frame_picture_JV,@function
make_frame_picture_JV:                  # @make_frame_picture_JV
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
	movq	856464(%rdi), %rax
	movq	%rax, 856456(%rdi)
	cmpl	$0, 44(%rax)
	je	.LBB37_4
# %bb.1:                                # %land.lhs.true
	movl	248(%rax), %ecx
	cmpl	$2, %ecx
	je	.LBB37_4
# %bb.2:                                # %land.lhs.true
	cmpl	$4, %ecx
	je	.LBB37_4
# %bb.3:                                # %if.then
	movq	64(%rax), %xmm0                 # xmm0 = mem[0],zero
	movdqa	%xmm0, %xmm1
	psrad	$31, %xmm1
	psrld	$30, %xmm1
	paddd	%xmm0, %xmm1
	psrad	$2, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movd	%xmm0, %ecx
	movd	%xmm1, %edx
	imull	%ecx, %edx
	shll	$5, %edx
	movq	152(%rax), %rcx
	movq	160(%rax), %rax
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	%edx, %r14
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	856456(%rbx), %rax
	movq	856472(%rbx), %rcx
	movq	168(%rax), %rax
	movq	(%rax), %rdi
	movq	152(%rcx), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movq	856456(%rbx), %rax
	movq	856480(%rbx), %rcx
	movq	176(%rax), %rax
	movq	(%rax), %rdi
	movq	152(%rcx), %rax
	movq	(%rax), %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB37_4:                               # %if.end
	cmpl	$0, 848784(%rbx)
	jle	.LBB37_7
# %bb.5:                                # %for.body48.lr.ph
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB37_6:                               # %for.body48
                                        # =>This Inner Loop Header: Depth=1
	movl	848780(%rbx), %eax
	addl	%eax, %eax
	movq	856456(%rbx), %rcx
	movq	136(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r14,8), %rdi
	movq	856472(%rbx), %rcx
	movq	128(%rcx), %rcx
	movq	(%rcx,%r14,8), %rsi
	movslq	%eax, %rdx
	callq	memcpy@PLT
	incq	%r14
	movslq	848784(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB37_6
.LBB37_7:                               # %for.end
	movq	856472(%rbx), %rdi
	callq	free_storable_picture@PLT
	cmpl	$0, 848784(%rbx)
	jle	.LBB37_10
# %bb.8:                                # %for.body48.lr.ph.1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB37_9:                               # %for.body48.1
                                        # =>This Inner Loop Header: Depth=1
	movl	848780(%rbx), %eax
	addl	%eax, %eax
	movq	856456(%rbx), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r14,8), %rdi
	movq	856480(%rbx), %rcx
	movq	128(%rcx), %rcx
	movq	(%rcx,%r14,8), %rsi
	movslq	%eax, %rdx
	callq	memcpy@PLT
	incq	%r14
	movslq	848784(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB37_9
.LBB37_10:                              # %for.end.1
	movq	856480(%rbx), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	free_storable_picture@PLT       # TAILCALL
.Lfunc_end37:
	.size	make_frame_picture_JV, .Lfunc_end37-make_frame_picture_JV
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function init_macroblock
	.type	init_macroblock,@function
init_macroblock:                        # @init_macroblock
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movq	13520(%rax), %rax
	movq	152(%rax), %rax
	movslq	36(%rdi), %rcx
	movslq	32(%rdi), %rdx
	movq	(%rax,%rcx,8), %rsi
	shlq	$5, %rdx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi,%rdx)
	movq	$0, 16(%rsi,%rdx)
	movw	$-1, 24(%rsi,%rdx)
	movq	(%rax,%rcx,8), %rsi
	movups	%xmm0, 32(%rsi,%rdx)
	movq	$0, 48(%rsi,%rdx)
	movw	$-1, 56(%rsi,%rdx)
	movq	(%rax,%rcx,8), %rsi
	movups	%xmm0, 64(%rsi,%rdx)
	movq	$0, 80(%rsi,%rdx)
	movw	$-1, 88(%rsi,%rdx)
	movq	(%rax,%rcx,8), %rsi
	movups	%xmm0, 96(%rsi,%rdx)
	movq	$0, 112(%rsi,%rdx)
	movw	$-1, 120(%rsi,%rdx)
	movslq	32(%rdi), %rdx
	movq	8(%rax,%rcx,8), %rsi
	shlq	$5, %rdx
	movups	%xmm0, (%rsi,%rdx)
	movq	$0, 16(%rsi,%rdx)
	movw	$-1, 24(%rsi,%rdx)
	movq	8(%rax,%rcx,8), %rsi
	movups	%xmm0, 32(%rsi,%rdx)
	movq	$0, 48(%rsi,%rdx)
	movw	$-1, 56(%rsi,%rdx)
	movq	8(%rax,%rcx,8), %rsi
	movups	%xmm0, 64(%rsi,%rdx)
	movq	$0, 80(%rsi,%rdx)
	movw	$-1, 88(%rsi,%rdx)
	movq	8(%rax,%rcx,8), %rsi
	movups	%xmm0, 96(%rsi,%rdx)
	movq	$0, 112(%rsi,%rdx)
	movw	$-1, 120(%rsi,%rdx)
	movslq	32(%rdi), %rdx
	movq	16(%rax,%rcx,8), %rsi
	shlq	$5, %rdx
	movups	%xmm0, (%rsi,%rdx)
	movq	$0, 16(%rsi,%rdx)
	movw	$-1, 24(%rsi,%rdx)
	movq	16(%rax,%rcx,8), %rsi
	movups	%xmm0, 32(%rsi,%rdx)
	movq	$0, 48(%rsi,%rdx)
	movw	$-1, 56(%rsi,%rdx)
	movq	16(%rax,%rcx,8), %rsi
	movups	%xmm0, 64(%rsi,%rdx)
	movq	$0, 80(%rsi,%rdx)
	movw	$-1, 88(%rsi,%rdx)
	movq	16(%rax,%rcx,8), %rsi
	movups	%xmm0, 96(%rsi,%rdx)
	movq	$0, 112(%rsi,%rdx)
	movw	$-1, 120(%rsi,%rdx)
	movslq	32(%rdi), %rdx
	movq	24(%rax,%rcx,8), %rsi
	shlq	$5, %rdx
	movups	%xmm0, (%rsi,%rdx)
	movq	$0, 16(%rsi,%rdx)
	movw	$-1, 24(%rsi,%rdx)
	movq	24(%rax,%rcx,8), %rsi
	movups	%xmm0, 32(%rsi,%rdx)
	movq	$0, 48(%rsi,%rdx)
	movw	$-1, 56(%rsi,%rdx)
	movq	24(%rax,%rcx,8), %rsi
	movups	%xmm0, 64(%rsi,%rdx)
	movq	$0, 80(%rsi,%rdx)
	movw	$-1, 88(%rsi,%rdx)
	movq	24(%rax,%rcx,8), %rax
	movups	%xmm0, 96(%rax,%rdx)
	movq	$0, 112(%rax,%rdx)
	movw	$-1, 120(%rax,%rdx)
	retq
.Lfunc_end38:
	.size	init_macroblock, .Lfunc_end38-init_macroblock
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_ipred_modes
	.type	read_ipred_modes,@function
read_ipred_modes:                       # @read_ipred_modes
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
	movq	(%rdi), %r15
	movq	8(%rdi), %r8
	movq	13520(%r15), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rdi, (%rsp)                    # 8-byte Spill
	cmpl	$1, 96(%rdi)
	setne	%al
	movl	$4, 152(%rsp)
	movq	312(%r15), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	8(%r8), %rcx
	cmpl	$0, 12(%rcx)
	je	.LBB39_3
# %bb.1:                                # %lor.lhs.false
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	cmpl	$0, 24(%rcx)
	jne	.LBB39_3
# %bb.2:                                # %if.then
	movq	readIntraPredMode_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 192(%rsp)
.LBB39_3:                               # %if.end
	leaq	849124(%r8), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	xorl	%edx, %edx
	movq	(%rsp), %r13                    # 8-byte Reload
	movq	136(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB39_4
	.p2align	4, 0x90
.LBB39_37:                              # %for.inc239.thread
                                        #   in Loop: Header=BB39_4 Depth=1
	movq	112(%rsp), %rdx                 # 8-byte Reload
	incq	%rdx
	xorl	%eax, %eax
	cmpq	$4, %rdx
	je	.LBB39_40
.LBB39_4:                               # %for.body.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_5 Depth 2
                                        #     Child Loop BB39_8 Depth 2
                                        #       Child Loop BB39_9 Depth 3
	leal	(,%rdx,4), %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	leal	(%rdx,%rdx), %esi
	.p2align	4, 0x90
.LBB39_5:                               # %for.body
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsp), %rcx                    # 8-byte Reload
	movzbl	364(%rcx,%rdx), %r10d
	cmpl	$13, %r10d
	je	.LBB39_7
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB39_5 Depth=2
	cmpl	$11, %r10d
	je	.LBB39_7
# %bb.38:                               # %for.inc239
                                        #   in Loop: Header=BB39_5 Depth=2
	incq	%rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addl	$4, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	addl	$2, %esi
	cmpq	$4, %rdx
	jne	.LBB39_5
	jmp	.LBB39_39
	.p2align	4, 0x90
.LBB39_7:                               # %if.then23
                                        #   in Loop: Header=BB39_4 Depth=1
	xorl	%eax, %eax
	cmpb	$13, %r10b
	sete	%al
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$2, %edx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	leal	2(,%rax,2), %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	leal	4(,%rax,4), %ecx
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	incl	%eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	shrl	%esi
	andl	$1, %esi
	leal	(,%rsi,8), %eax
	movl	%eax, 68(%rsp)                  # 4-byte Spill
	addl	%esi, %esi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movl	%r10d, 80(%rsp)                 # 4-byte Spill
	jmp	.LBB39_8
	.p2align	4, 0x90
.LBB39_36:                              # %for.inc235
                                        #   in Loop: Header=BB39_8 Depth=2
	movq	128(%rsp), %rcx                 # 8-byte Reload
	addl	20(%rsp), %ecx                  # 4-byte Folded Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	addl	72(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	cmpl	$2, %ecx
	jae	.LBB39_37
.LBB39_8:                               # %for.body34
                                        #   Parent Loop BB39_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_9 Depth 3
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	addl	%ecx, %eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	movslq	36(%rcx), %rcx
	cltq
	addq	%rax, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leal	-1(,%rax,4), %ecx
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	shll	$2, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movl	68(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %ebp
	xorl	%r12d, %r12d
	jmp	.LBB39_9
	.p2align	4, 0x90
.LBB39_33:                              # %for.body199
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13536(%r15), %rdx
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movb	%al, (%rdx,%rcx)
	movq	13536(%r15), %rdx
	movq	(%rdx,%rsi,8), %rdx
	movb	%al, 1(%rdx,%rcx)
	movq	13536(%r15), %rdx
	movq	8(%rdx,%rsi,8), %rdx
	movb	%al, (%rdx,%rcx)
	movq	13536(%r15), %rdx
	movq	8(%rdx,%rsi,8), %rdx
	movb	%al, 1(%rdx,%rcx)
	addl	20(%rsp), %r12d                 # 4-byte Folded Reload
	addl	76(%rsp), %ebp                  # 4-byte Folded Reload
	cmpl	$2, %r12d
	jae	.LBB39_36
.LBB39_9:                               # %for.body39
                                        #   Parent Loop BB39_4 Depth=1
                                        #     Parent Loop BB39_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	144(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%r12), %edx
	movq	%r8, %rbx
	movq	8(%r8), %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rsi
	movq	(%rsp), %rcx                    # 8-byte Reload
	addl	32(%rcx), %edx
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	cmpl	$0, 12(%rax)
	je	.LBB39_11
# %bb.10:                               # %lor.lhs.false47
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	$0, 24(%rsi)
	je	.LBB39_12
.LBB39_11:                              # %if.then51
                                        #   in Loop: Header=BB39_9 Depth=3
	leaq	152(%rsp), %rdi
	callq	readSyntaxElement_Intra4x4PredictionMode@PLT
	jmp	.LBB39_13
	.p2align	4, 0x90
.LBB39_12:                              # %if.else
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	8(%rsp), %rax                   # 8-byte Reload
	addl	%r12d, %eax
	movl	%eax, 176(%rsp)
	movq	(%rsp), %rdi                    # 8-byte Reload
	leaq	152(%rsp), %rsi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	callq	*40(%rdx)
.LBB39_13:                              # %if.end58
                                        #   in Loop: Header=BB39_9 Depth=3
	leal	-1(%rbp), %esi
	movq	%r13, %rdi
	movl	84(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	leaq	40(%rsp), %r8
	callq	get4x4Neighbour@PLT
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	88(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	leaq	24(%rsp), %r8
	callq	get4x4Neighbour@PLT
	movq	%rbx, %r8
	movq	8(%rbx), %rax
	cmpl	$0, 2204(%rax)
	movl	80(%rsp), %r10d                 # 4-byte Reload
	je	.LBB39_19
# %bb.14:                               # %if.then71
                                        #   in Loop: Header=BB39_9 Depth=3
	xorl	%eax, %eax
	cmpl	$0, 40(%rsp)
	movl	$0, %ecx
	je	.LBB39_16
# %bb.15:                               # %cond.true
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13544(%r15), %rcx
	movslq	44(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
.LBB39_16:                              # %cond.end
                                        #   in Loop: Header=BB39_9 Depth=3
	movl	%ecx, 40(%rsp)
	cmpl	$0, 24(%rsp)
	je	.LBB39_18
# %bb.17:                               # %cond.true80
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13544(%r15), %rax
	movslq	28(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
.LBB39_18:                              # %cond.end87
                                        #   in Loop: Header=BB39_9 Depth=3
	movl	%eax, 24(%rsp)
.LBB39_19:                              # %if.end90
                                        #   in Loop: Header=BB39_9 Depth=3
	movb	$1, %cl
	xorl	%eax, %eax
	movq	(%rsp), %rdx                    # 8-byte Reload
	cmpw	$9, 152(%rdx)
	jne	.LBB39_26
# %bb.20:                               # %land.lhs.true
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	$4, 164(%r15)
	jne	.LBB39_26
# %bb.21:                               # %if.then96
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	$0, 40(%rsp)
	je	.LBB39_22
# %bb.23:                               # %if.then99
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13528(%r15), %rax
	movq	PicPos@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movslq	44(%rsp), %rsi
	movswq	2(%rdx,%rsi,4), %rdi
	movq	(%rax,%rdi,8), %rdi
	movswq	(%rdx,%rsi,4), %rdx
	xorl	%eax, %eax
	cmpl	$0, (%rdi,%rdx,4)
	setne	%al
	cmpl	$0, 24(%rsp)
	je	.LBB39_26
.LBB39_25:                              # %if.then116
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13528(%r15), %rcx
	movq	PicPos@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdx
	movslq	28(%rsp), %rsi
	movswq	2(%rdx,%rsi,4), %rdi
	movq	(%rcx,%rdi,8), %rcx
	movswq	(%rdx,%rsi,4), %rdx
	cmpl	$0, (%rcx,%rdx,4)
	sete	%cl
	.p2align	4, 0x90
.LBB39_26:                              # %if.end134
                                        #   in Loop: Header=BB39_9 Depth=3
	movl	$-1, %edx
	movl	$-1, %esi
	testb	%cl, %cl
	je	.LBB39_29
# %bb.27:                               # %if.end134
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	$0, 24(%rsp)
	je	.LBB39_29
# %bb.28:                               # %cond.true140
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13536(%r15), %rcx
	movswq	38(%rsp), %rsi
	movq	(%rcx,%rsi,8), %rcx
	movswq	36(%rsp), %rsi
	movzbl	(%rcx,%rsi), %esi
.LBB39_29:                              # %cond.end147
                                        #   in Loop: Header=BB39_9 Depth=3
	testl	%eax, %eax
	jne	.LBB39_32
# %bb.30:                               # %cond.end147
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	$0, 40(%rsp)
	je	.LBB39_32
# %bb.31:                               # %cond.true154
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13536(%r15), %rax
	movswq	54(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movswq	52(%rsp), %rcx
	movzbl	(%rax,%rcx), %edx
.LBB39_32:                              # %cond.end164
                                        #   in Loop: Header=BB39_9 Depth=3
	cmpl	%edx, %esi
	movl	%edx, %ecx
	cmovll	%esi, %ecx
	orl	%edx, %esi
	movl	$2, %eax
	cmovsl	%eax, %ecx
	movl	156(%rsp), %edx
	xorl	%eax, %eax
	cmpl	%ecx, %edx
	setge	%al
	addl	%edx, %eax
	cmpl	$-1, %edx
	cmovel	%ecx, %eax
	movslq	92(%rsp), %rcx                  # 4-byte Folded Reload
	cmpb	$13, %r10b
	je	.LBB39_33
# %bb.34:                               # %for.body220
                                        #   in Loop: Header=BB39_9 Depth=3
	movq	13536(%r15), %rdx
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	(%rdx,%rsi,8), %rdx
	movb	%al, (%rdx,%rcx)
	addl	20(%rsp), %r12d                 # 4-byte Folded Reload
	addl	76(%rsp), %ebp                  # 4-byte Folded Reload
	cmpl	$2, %r12d
	jb	.LBB39_9
	jmp	.LBB39_36
.LBB39_22:                              #   in Loop: Header=BB39_9 Depth=3
	xorl	%eax, %eax
	cmpl	$0, 24(%rsp)
	jne	.LBB39_25
	jmp	.LBB39_26
.LBB39_39:                              # %for.end241
	testb	$1, %al
	jne	.LBB39_50
.LBB39_40:                              # %land.lhs.true244
	movq	104(%rsp), %rax                 # 8-byte Reload
	movl	268(%rax), %eax
	testl	%eax, %eax
	je	.LBB39_50
# %bb.41:                               # %land.lhs.true244
	cmpl	$3, %eax
	je	.LBB39_50
# %bb.42:                               # %if.then251
	movl	$4, 152(%rsp)
	movq	312(%r15), %rdx
	movq	8(%r8), %rax
	cmpl	$0, 12(%rax)
	je	.LBB39_43
# %bb.44:                               # %lor.lhs.false261
	movq	(%rdx), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB39_45
# %bb.46:                               # %lor.lhs.false261
	movq	readCIPredMode_CABAC@GOTPCREL(%rip), %rax
	jmp	.LBB39_47
.LBB39_43:
	movq	linfo_ue@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	jmp	.LBB39_48
.LBB39_45:
	movq	linfo_ue@GOTPCREL(%rip), %rax
.LBB39_47:                              # %lor.lhs.false261
	leaq	32(,%rcx,8), %rcx
.LBB39_48:                              # %if.end268
	movq	%rax, 152(%rsp,%rcx)
	leaq	152(%rsp), %rsi
	movq	(%rsp), %rbx                    # 8-byte Reload
	movq	%rbx, %rdi
	callq	*40(%rdx)
	movl	156(%rsp), %eax
	movb	%al, 373(%rbx)
	testb	$-4, %al
	je	.LBB39_50
# %bb.49:                               # %if.then282
	movl	$.L.str.3, %edi
	movl	$600, %esi                      # imm = 0x258
	callq	error@PLT
.LBB39_50:                              # %if.end284
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
.Lfunc_end39:
	.size	read_ipred_modes, .Lfunc_end39-read_ipred_modes
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function concealIPCMcoeffs
	.type	concealIPCMcoeffs,@function
concealIPCMcoeffs:                      # @concealIPCMcoeffs
	.cfi_startproc
# %bb.0:                                # %entry
	movq	13520(%rdi), %rax
	movl	849060(%rsi), %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB40_1:                               # %for.cond3.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, (%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 4(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 8(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 12(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 16(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 20(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 24(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 28(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 32(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 36(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 40(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 44(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 48(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 52(%r8)
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 56(%r8)
	movl	849060(%rsi), %ecx
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx), %r8
	movl	%ecx, 60(%r8)
	addq	$8, %rdx
	cmpq	$128, %rdx
	jne	.LBB40_1
# %bb.2:                                # %for.end12
	cmpl	$0, 268(%rax)
	je	.LBB40_20
# %bb.3:                                # %land.lhs.true
	cmpl	$0, 849280(%rsi)
	je	.LBB40_4
.LBB40_20:                              # %if.end
	retq
.LBB40_4:                               # %for.cond15.preheader
	movl	849112(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB40_20
# %bb.5:                                # %for.cond21.preheader.lr.ph
	movl	849108(%rsi), %r8d
	testl	%r8d, %r8d
	jle	.LBB40_20
# %bb.6:                                # %for.cond21.preheader.preheader
	xorl	%edx, %edx
	jmp	.LBB40_7
	.p2align	4, 0x90
.LBB40_11:                              # %for.inc37
                                        #   in Loop: Header=BB40_7 Depth=1
	incq	%rdx
	movslq	%eax, %r9
	cmpq	%r9, %rdx
	jge	.LBB40_12
.LBB40_7:                               # %for.cond21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_9 Depth 2
	testl	%r8d, %r8d
	jle	.LBB40_11
# %bb.8:                                # %for.body23.preheader
                                        #   in Loop: Header=BB40_7 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB40_9:                               # %for.body23
                                        #   Parent Loop BB40_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1272(%rdi), %r8
	movq	(%r8), %r8
	movq	(%r8,%rdx,8), %r8
	movl	%ecx, (%r8,%rax,4)
	incq	%rax
	movslq	849108(%rsi), %r8
	cmpq	%r8, %rax
	jl	.LBB40_9
# %bb.10:                               # %for.inc37.loopexit
                                        #   in Loop: Header=BB40_7 Depth=1
	movl	849112(%rsi), %eax
	jmp	.LBB40_11
.LBB40_12:                              # %for.inc40
	testl	%eax, %eax
	jle	.LBB40_20
# %bb.13:                               # %for.cond21.preheader.lr.ph.1
	movl	849108(%rsi), %edx
	testl	%edx, %edx
	jle	.LBB40_20
# %bb.14:                               # %for.cond21.preheader.1.preheader
	xorl	%ecx, %ecx
	jmp	.LBB40_15
	.p2align	4, 0x90
.LBB40_18:                              # %for.inc37.loopexit.1
                                        #   in Loop: Header=BB40_15 Depth=1
	movl	849112(%rsi), %eax
.LBB40_19:                              # %for.inc37.1
                                        #   in Loop: Header=BB40_15 Depth=1
	incq	%rcx
	movslq	%eax, %r8
	cmpq	%r8, %rcx
	jge	.LBB40_20
.LBB40_15:                              # %for.cond21.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_17 Depth 2
	testl	%edx, %edx
	jle	.LBB40_19
# %bb.16:                               # %for.body23.lr.ph.1
                                        #   in Loop: Header=BB40_15 Depth=1
	movl	849064(%rsi), %eax
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB40_17:                              # %for.body23.1
                                        #   Parent Loop BB40_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	1272(%rdi), %rdx
	movq	8(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movl	%eax, (%rdx,%r8,4)
	incq	%r8
	movslq	849108(%rsi), %rdx
	cmpq	%rdx, %r8
	jl	.LBB40_17
	jmp	.LBB40_18
.Lfunc_end40:
	.size	concealIPCMcoeffs, .Lfunc_end40-concealIPCMcoeffs
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_IPCM_coeffs_from_NAL
	.type	read_IPCM_coeffs_from_NAL,@function
read_IPCM_coeffs_from_NAL:              # @read_IPCM_coeffs_from_NAL
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
	movq	(%rdi), %r12
	movq	8(%r12), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB41_6
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	readIPCM_CABAC@PLT
	movl	200(%rbx), %ecx
	movl	$1, %eax
	testl	%ecx, %ecx
	je	.LBB41_4
# %bb.2:                                # %if.then
	cmpl	$1, %ecx
	jne	.LBB41_29
# %bb.3:                                # %if.then3.i
	movl	$3, %eax
.LBB41_4:                               # %if.end5.i
	shll	$4, %eax
	leaq	(%rax,%rax,2), %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB41_5:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	312(%rbx), %rax
	movq	(%rax,%r15), %rcx
	movl	(%rcx), %edx
	leaq	(%rax,%r15), %rdi
	addq	$8, %rdi
	movq	16(%rcx), %rsi
	callq	arideco_start_decoding@PLT
	addq	$48, %r15
	cmpq	%r15, %r14
	jne	.LBB41_5
	jmp	.LBB41_28
.LBB41_6:                               # %if.else
	movq	13520(%rbx), %r13
	movq	(%r14), %rsi
	movl	8(%rsi), %eax
	andl	$7, %eax
	je	.LBB41_8
# %bb.7:                                # %if.then4
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%ecx, 20(%rsp)
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_FLC@PLT
.LBB41_8:                               # %if.end
	movswl	849040(%r12), %eax
	movl	%eax, 20(%rsp)
	xorl	%ebp, %ebp
	leaq	8(%rsp), %r15
	.p2align	4, 0x90
.LBB41_9:                               # %for.cond12.preheader
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, (%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 20(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 40(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rbp), %rcx
	movl	%eax, 60(%rcx)
	addq	$8, %rbp
	cmpq	$128, %rbp
	jne	.LBB41_9
# %bb.10:                               # %for.end23
	movswl	849042(%r12), %eax
	movl	%eax, 20(%rsp)
	cmpl	$0, 268(%r13)
	je	.LBB41_28
# %bb.11:                               # %land.lhs.true
	cmpl	$0, 849280(%r12)
	je	.LBB41_12
.LBB41_28:                              # %if.end80
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
.LBB41_12:                              # %for.cond31.preheader
	.cfi_def_cfa_offset 112
	movl	849112(%r12), %eax
	testl	%eax, %eax
	jle	.LBB41_28
# %bb.13:                               # %for.cond35.preheader.lr.ph
	movl	849108(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB41_21
# %bb.14:                               # %for.cond35.preheader.preheader
	xorl	%r13d, %r13d
	leaq	8(%rsp), %r15
	jmp	.LBB41_15
	.p2align	4, 0x90
.LBB41_19:                              # %for.inc51
                                        #   in Loop: Header=BB41_15 Depth=1
	incq	%r13
	movslq	%eax, %rdx
	cmpq	%rdx, %r13
	jge	.LBB41_20
.LBB41_15:                              # %for.cond35.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_17 Depth 2
	testl	%ecx, %ecx
	jle	.LBB41_19
# %bb.16:                               # %for.body38.preheader
                                        #   in Loop: Header=BB41_15 Depth=1
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB41_17:                              # %for.body38
                                        #   Parent Loop BB41_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	incq	%rbp
	movslq	849108(%r12), %rcx
	cmpq	%rcx, %rbp
	jl	.LBB41_17
# %bb.18:                               # %for.inc51.loopexit
                                        #   in Loop: Header=BB41_15 Depth=1
	movl	849112(%r12), %eax
	jmp	.LBB41_19
.LBB41_20:                              # %for.cond54.preheader
	testl	%eax, %eax
	jle	.LBB41_28
.LBB41_21:                              # %for.cond59.preheader.lr.ph
	movl	849108(%r12), %ecx
	testl	%ecx, %ecx
	jle	.LBB41_28
# %bb.22:                               # %for.cond59.preheader.preheader
	xorl	%r13d, %r13d
	leaq	8(%rsp), %r15
	jmp	.LBB41_23
	.p2align	4, 0x90
.LBB41_26:                              # %for.inc76.loopexit
                                        #   in Loop: Header=BB41_23 Depth=1
	movl	849112(%r12), %eax
.LBB41_27:                              # %for.inc76
                                        #   in Loop: Header=BB41_23 Depth=1
	incq	%r13
	movslq	%eax, %rdx
	cmpq	%rdx, %r13
	jge	.LBB41_28
.LBB41_23:                              # %for.cond59.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_25 Depth 2
	testl	%ecx, %ecx
	jle	.LBB41_27
# %bb.24:                               # %for.body63.preheader
                                        #   in Loop: Header=BB41_23 Depth=1
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB41_25:                              # %for.body63
                                        #   Parent Loop BB41_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rsi
	movq	%r15, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	12(%rsp), %eax
	movq	1272(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%r13,8), %rcx
	movl	%eax, (%rcx,%rbp,4)
	incq	%rbp
	movslq	849108(%r12), %rcx
	cmpq	%rcx, %rbp
	jl	.LBB41_25
	jmp	.LBB41_26
.LBB41_29:                              # %if.else4.i
	movl	$.Lstr.8, %edi
	callq	puts@PLT
	movl	$1, %edi
	callq	exit@PLT
.Lfunc_end41:
	.size	read_IPCM_coeffs_from_NAL, .Lfunc_end41-read_IPCM_coeffs_from_NAL
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readMBRefPictureIdx
	.type	readMBRefPictureIdx,@function
readMBRefPictureIdx:                    # @readMBRefPictureIdx
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
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movl	112(%rsp), %eax
	movl	%r8d, %ebp
	movslq	%eax, %r11
	movslq	%r9d, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leal	(,%r11,4), %eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	addq	$24, %rbp
	xorl	%ebx, %ebx
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB42_1
	.p2align	4, 0x90
.LBB42_7:                               # %for.inc47
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	%r13, %rbx
	cmpq	$4, %r13
	jge	.LBB42_8
.LBB42_1:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_3 Depth 2
                                        #     Child Loop BB42_10 Depth 2
                                        #       Child Loop BB42_13 Depth 3
                                        #         Child Loop BB42_17 Depth 4
	leal	(,%rbx,4), %eax
	movl	%ebx, %ecx
	andl	$-2, %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rbx,%rcx), %r13
	movl	%eax, 64(%r15)
	testl	%ecx, %ecx
	jle	.LBB42_2
# %bb.9:                                # %for.body3.us.preheader
                                        #   in Loop: Header=BB42_1 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB42_10
	.p2align	4, 0x90
.LBB42_15:                              # %for.inc44.us
                                        #   in Loop: Header=BB42_10 Depth=2
	addq	%r11, %r12
	cmpl	$4, %r12d
	jge	.LBB42_7
.LBB42_10:                              # %for.body3.us
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB42_13 Depth 3
                                        #         Child Loop BB42_17 Depth 4
	movl	%r12d, %eax
	sarl	%eax
	addl	16(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	movsbl	368(%r15,%rax), %ecx
	cmpl	$2, %ecx
	setne	%dl
	cmpl	%r8d, %ecx
	setne	%cl
	testb	%cl, %dl
	jne	.LBB42_15
# %bb.11:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB42_10 Depth=2
	cmpb	$0, 364(%r15,%rax)
	je	.LBB42_15
# %bb.12:                               # %if.then.us
                                        #   in Loop: Header=BB42_10 Depth=2
	leal	(,%r12,4), %ecx
	movl	%ecx, 60(%r15)
	movsbl	364(%r15,%rax), %ecx
	movq	%r15, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	callq	*464(%r15)
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	112(%rsp), %ecx
	addl	%r12d, %ecx
	movl	32(%r15), %esi
	movq	%rbx, %rdx
	jmp	.LBB42_13
	.p2align	4, 0x90
.LBB42_14:                              # %for.inc41.us
                                        #   in Loop: Header=BB42_13 Depth=3
	incq	%rdx
	cmpq	%r13, %rdx
	jge	.LBB42_15
.LBB42_13:                              # %for.body26.us
                                        #   Parent Loop BB42_1 Depth=1
                                        #     Parent Loop BB42_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB42_17 Depth 4
	leal	(%rsi,%r12), %edi
	leal	(%rcx,%rsi), %r9d
	cmpl	%r9d, %edi
	jge	.LBB42_14
# %bb.16:                               # %for.body34.lr.ph.us
                                        #   in Loop: Header=BB42_13 Depth=3
	movslq	%esi, %rdi
	addq	%r12, %rdi
	movq	%rdi, %r10
	shlq	$5, %r10
	addq	%rbp, %r10
	.p2align	4, 0x90
.LBB42_17:                              # %for.body34.us
                                        #   Parent Loop BB42_1 Depth=1
                                        #     Parent Loop BB42_10 Depth=2
                                        #       Parent Loop BB42_13 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%r14,%rdx,8), %rsi
	movb	%al, (%rsi,%r10)
	incq	%rdi
	movl	32(%r15), %esi
	leal	(%rcx,%rsi), %r9d
	movslq	%r9d, %r9
	addq	$32, %r10
	cmpq	%r9, %rdi
	jl	.LBB42_17
	jmp	.LBB42_14
	.p2align	4, 0x90
.LBB42_2:                               # %for.body3.preheader
                                        #   in Loop: Header=BB42_1 Depth=1
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB42_3
	.p2align	4, 0x90
.LBB42_6:                               # %for.inc44
                                        #   in Loop: Header=BB42_3 Depth=2
	movl	112(%rsp), %eax
	addl	%eax, %ebx
	addl	20(%rsp), %r12d                 # 4-byte Folded Reload
	cmpl	$4, %ebx
	jge	.LBB42_7
.LBB42_3:                               # %for.body3
                                        #   Parent Loop BB42_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	sarl	%eax
	addl	16(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	movsbl	368(%r15,%rax), %ecx
	cmpl	$2, %ecx
	setne	%dl
	cmpl	%r8d, %ecx
	setne	%cl
	testb	%cl, %dl
	jne	.LBB42_6
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB42_3 Depth=2
	cmpb	$0, 364(%r15,%rax)
	je	.LBB42_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB42_3 Depth=2
	movl	%r12d, 60(%r15)
	movsbl	364(%r15,%rax), %ecx
	movq	%r15, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	callq	*464(%r15)
	movq	24(%rsp), %r11                  # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	jmp	.LBB42_6
.LBB42_8:                               # %for.end49
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
.Lfunc_end42:
	.size	readMBRefPictureIdx, .Lfunc_end42-readMBRefPictureIdx
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readMBMotionVectors
	.type	readMBMotionVectors,@function
readMBMotionVectors:                    # @readMBMotionVectors
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
	subq	$520, %rsp                      # imm = 0x208
	.cfi_def_cfa_offset 576
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rdx, %r12
	movq	%rsi, 392(%rsp)                 # 8-byte Spill
	movq	%rdi, 384(%rsp)                 # 8-byte Spill
	movq	(%rdx), %rax
	movq	13520(%rax), %rax
	movq	152(%rax), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movl	%ecx, %eax
	addq	$154, %rdx
	movq	%rdx, 344(%rsp)                 # 8-byte Spill
	movl	%r8d, 16(%rsp)                  # 4-byte Spill
	movslq	%r8d, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movslq	%r9d, %rdx
	movq	%rax, %rsi
	shlq	$6, %rsi
	movq	%rdx, %rdi
	shlq	$4, %rdi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	addl	$2, %ecx
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	leaq	(%r12,%rsi), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	leaq	154(%r12,%rsi), %rcx
	leaq	156(%r12,%rsi), %rdi
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	leal	(,%rdx,4), %edx
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	leaq	114(,%rax,4), %rdx
	movq	%rdx, 424(%rsp)                 # 8-byte Spill
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	leaq	18(,%rax,4), %rax
	movq	%rax, 432(%rsp)                 # 8-byte Spill
	leaq	202(%r12,%rsi), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rsi, 336(%rsp)                 # 8-byte Spill
	leaq	170(%r12,%rsi), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	$0, 40(%rsp)                    # 8-byte Folded Spill
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB43_1
	.p2align	4, 0x90
.LBB43_4:                               # %for.inc152
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	240(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	addl	80(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	%rax, 120(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 128(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 112(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 104(%rsp)                 # 8-byte Folded Spill
	movq	%rsi, %rdx
	cmpq	$4, %rsi
	jge	.LBB43_5
.LBB43_1:                               # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB43_3 Depth 2
                                        #     Child Loop BB43_7 Depth 2
                                        #       Child Loop BB43_11 Depth 3
                                        #       Child Loop BB43_15 Depth 3
                                        #         Child Loop BB43_16 Depth 4
                                        #           Child Loop BB43_41 Depth 5
                                        #             Child Loop BB43_44 Depth 6
                                        #             Child Loop BB43_47 Depth 6
                                        #           Child Loop BB43_37 Depth 5
                                        #           Child Loop BB43_29 Depth 5
                                        #           Child Loop BB43_51 Depth 5
                                        #           Child Loop BB43_54 Depth 5
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdx,%rax), %rsi
	testl	%eax, %eax
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	jle	.LBB43_2
# %bb.6:                                # %for.body4.us.preheader
                                        #   in Loop: Header=BB43_1 Depth=1
	movq	96(%rsp), %rdi                  # 8-byte Reload
	imulq	%rcx, %rdi
	movl	%edx, %eax
	andl	$-2, %eax
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rdx,8), %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movq	224(%rsp), %rax                 # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	addq	216(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rdi, 272(%rsp)                 # 8-byte Spill
	xorl	%r15d, %r15d
	movq	%rsi, 280(%rsp)                 # 8-byte Spill
	jmp	.LBB43_7
	.p2align	4, 0x90
.LBB43_13:                              # %for.inc149.us
                                        #   in Loop: Header=BB43_7 Depth=2
	addq	144(%rsp), %r15                 # 8-byte Folded Reload
	cmpq	$4, %r15
	jge	.LBB43_4
.LBB43_7:                               # %for.body4.us
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB43_11 Depth 3
                                        #       Child Loop BB43_15 Depth 3
                                        #         Child Loop BB43_16 Depth 4
                                        #           Child Loop BB43_41 Depth 5
                                        #             Child Loop BB43_44 Depth 6
                                        #             Child Loop BB43_47 Depth 6
                                        #           Child Loop BB43_37 Depth 5
                                        #           Child Loop BB43_29 Depth 5
                                        #           Child Loop BB43_51 Depth 5
                                        #           Child Loop BB43_54 Depth 5
	movl	%r15d, %eax
	sarl	%eax
	addl	84(%rsp), %eax                  # 4-byte Folded Reload
	cltq
	movsbl	368(%r12,%rax), %ecx
	cmpl	$2, %ecx
	setne	%dl
	cmpl	192(%rsp), %ecx                 # 4-byte Folded Reload
	setne	%cl
	testb	%cl, %dl
	jne	.LBB43_13
# %bb.8:                                # %land.lhs.true.us
                                        #   in Loop: Header=BB43_7 Depth=2
	movsbq	364(%r12,%rax), %rax
	testq	%rax, %rax
	je	.LBB43_13
# %bb.9:                                # %if.then.us
                                        #   in Loop: Header=BB43_7 Depth=2
	movslq	BLOCK_STEP+4(,%rax,8), %r8
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	jle	.LBB43_10
# %bb.14:                               # %for.body42.us.us.preheader
                                        #   in Loop: Header=BB43_7 Depth=2
	movslq	36(%r12), %rcx
	movslq	32(%r12), %rdx
	addq	%r15, %rdx
	shlq	$5, %rdx
	movq	256(%rsp), %rdi                 # 8-byte Reload
	addq	(%rdi,%rcx,8), %rdx
	movslq	BLOCK_STEP(,%rax,8), %rcx
	leal	(,%rcx,4), %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	leaq	(,%rcx,4), %rbx
	movq	248(%rsp), %rax                 # 8-byte Reload
	movsbl	24(%rax,%rdx), %eax
	movl	%r8d, %ecx
	leal	(,%r8,4), %edx
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	movq	%r8, %rdx
	shlq	$4, %rdx
	leaq	-1(%rcx), %rdi
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	addq	$-2, %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	movl	%edi, %ecx
	andl	$3, %ecx
	andq	$-4, %rdi
	negq	%rdi
	movq	%rdi, 376(%rsp)                 # 8-byte Spill
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$4, %ecx
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	cwtl
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	movq	136(%rsp), %rdi                 # 8-byte Reload
	movq	%r15, 296(%rsp)                 # 8-byte Spill
	movq	%r8, (%rsp)                     # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	jmp	.LBB43_15
	.p2align	4, 0x90
.LBB43_32:                              # %for.cond51.for.inc146_crit_edge.us.us
                                        #   in Loop: Header=BB43_15 Depth=3
	movq	(%rsp), %r8                     # 8-byte Reload
	movq	184(%rsp), %rdi                 # 8-byte Reload
	addq	%r8, %rdi
	movq	304(%rsp), %rcx                 # 8-byte Reload
	incq	%rcx
	movq	288(%rsp), %rdx                 # 8-byte Reload
	addq	%rdx, 152(%rsp)                 # 8-byte Folded Spill
	movq	176(%rsp), %rax                 # 8-byte Reload
	addq	%rdx, %rax
	addq	%rdx, 160(%rsp)                 # 8-byte Folded Spill
	addq	%rdx, 168(%rsp)                 # 8-byte Folded Spill
	movq	280(%rsp), %rsi                 # 8-byte Reload
	cmpq	%rsi, %rdi
	movq	296(%rsp), %r15                 # 8-byte Reload
	jge	.LBB43_13
.LBB43_15:                              # %for.body42.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB43_16 Depth 4
                                        #           Child Loop BB43_41 Depth 5
                                        #             Child Loop BB43_44 Depth 6
                                        #             Child Loop BB43_47 Depth 6
                                        #           Child Loop BB43_37 Depth 5
                                        #           Child Loop BB43_29 Depth 5
                                        #           Child Loop BB43_51 Depth 5
                                        #           Child Loop BB43_54 Depth 5
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rdx
	movq	264(%rsp), %rax                 # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	addq	272(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	leal	(,%rdi,4), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	%eax, 64(%r12)
	movl	36(%r12), %eax
	addl	%edi, %eax
	movq	%rdi, 184(%rsp)                 # 8-byte Spill
	leal	-1(,%rdi,4), %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	movslq	%eax, %rcx
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	addl	200(%rsp), %eax                 # 4-byte Folded Reload
	cltq
	movq	%rax, 440(%rsp)                 # 8-byte Spill
	jmp	.LBB43_16
	.p2align	4, 0x90
.LBB43_31:                              # %for.cond51.loopexit.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpq	408(%rsp), %r15                 # 8-byte Folded Reload
	movq	48(%rsp), %r12                  # 8-byte Reload
	jge	.LBB43_32
.LBB43_16:                              # %for.body55.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB43_41 Depth 5
                                        #             Child Loop BB43_44 Depth 6
                                        #             Child Loop BB43_47 Depth 6
                                        #           Child Loop BB43_37 Depth 5
                                        #           Child Loop BB43_29 Depth 5
                                        #           Child Loop BB43_51 Depth 5
                                        #           Child Loop BB43_54 Depth 5
	leal	(,%r15,4), %r13d
	movl	%r13d, 60(%r12)
	movl	32(%r12), %eax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	movq	8(%r12), %r14
	movl	$849124, %eax                   # imm = 0xCF4E4
	addq	%rax, %r14
	leal	-1(,%r15,4), %esi
	movq	%r12, %rdi
	movl	%esi, 64(%rsp)                  # 4-byte Spill
	movq	32(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	%r14, %rcx
	leaq	448(%rsp), %r8
	callq	get4x4Neighbour@PLT
	movq	%r12, %rdi
	movl	%r13d, %esi
	movl	20(%rsp), %ebp                  # 4-byte Reload
	movl	%ebp, %edx
	movq	%r14, %rcx
	leaq	464(%rsp), %r8
	callq	get4x4Neighbour@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	leal	(%rax,%r15,4), %r15d
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebp, %edx
	movq	%r14, %rcx
	leaq	480(%rsp), %r8
	callq	get4x4Neighbour@PLT
	cmpl	$0, 32(%rsp)                    # 4-byte Folded Reload
	jle	.LBB43_23
# %bb.17:                               # %if.then.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$8, %r13d
	jge	.LBB43_18
# %bb.20:                               # %if.then7.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$8, 32(%rsp)                    # 4-byte Folded Reload
	jne	.LBB43_21
# %bb.22:                               # %if.then9.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$16, 56(%rsp)                   # 4-byte Folded Reload
	je	.LBB43_19
	jmp	.LBB43_23
	.p2align	4, 0x90
.LBB43_18:                              # %if.else20.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$16, %r15d
	jne	.LBB43_23
.LBB43_19:                              # %if.then31.sink.split.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movl	$0, 480(%rsp)
	movq	48(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB43_24
.LBB43_21:                              # %if.else.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$8, %r15d
	je	.LBB43_19
	.p2align	4, 0x90
.LBB43_23:                              # %if.end28.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpl	$0, 480(%rsp)
	movq	48(%rsp), %r12                  # 8-byte Reload
	jne	.LBB43_25
.LBB43_24:                              # %if.then31.i.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	%r12, %rdi
	movl	64(%rsp), %esi                  # 4-byte Reload
	movl	20(%rsp), %edx                  # 4-byte Reload
	movq	%r14, %rcx
	leaq	496(%rsp), %r14
	movq	%r14, %r8
	callq	get4x4Neighbour@PLT
	movdqa	(%r14), %xmm0
	leaq	480(%rsp), %rax
	movdqa	%xmm0, (%rax)
.LBB43_25:                              # %get_neighbors.exit.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	%r12, %rdi
	leaq	448(%rsp), %rsi
	leaq	28(%rsp), %rdx
	movl	92(%rsp), %ecx                  # 4-byte Reload
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	192(%rsp), %r14                 # 8-byte Reload
	movl	%r14d, %r9d
	pushq	400(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	64(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	48(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	*448(%r12)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	384(%rsp), %r15                 # 8-byte Reload
	movl	%r14d, 8(%r15)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	392(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	*40(%r14)
	movzwl	4(%r15), %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	movl	88(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 8(%r15)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*40(%r14)
	movzwl	4(%r15), %eax
	cmpl	$0, 200(%rsp)                   # 4-byte Folded Reload
	movq	416(%rsp), %r13                 # 8-byte Reload
	jle	.LBB43_26
# %bb.39:                               # %for.body90.lr.ph.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	208(%rsp), %rcx                 # 8-byte Reload
	testl	%ecx, %ecx
	jle	.LBB43_55
# %bb.40:                               # %for.body90.us.us.us.preheader
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	8(%rsp), %r9                    # 8-byte Reload
	leal	(%r9,%r13), %r8d
	movzwl	28(%rsp), %edx
	addw	24(%rsp), %dx                   # 2-byte Folded Reload
	movzwl	30(%rsp), %esi
	addw	%ax, %si
	leal	(%rcx,%r8), %edi
	leal	(%r9,%r13), %ecx
	incl	%ecx
	cmpl	%ecx, %edi
	cmovgl	%edi, %ecx
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movslq	%r8d, %r8
	notl	%r13d
	addl	%ecx, %r13d
	subl	%r9d, %r13d
	leaq	1(%r13), %r14
	movq	%r14, %r9
	andq	$-4, %r9
	movq	%r9, %r11
	shlq	$5, %r11
	leal	(%r8,%r9), %r15d
	shlq	$5, %r8
	movq	328(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB43_41
	.p2align	4, 0x90
.LBB43_48:                              # %for.cond93.for.end102_crit_edge.us.us.us
                                        #   in Loop: Header=BB43_41 Depth=5
	incq	%r12
	cmpq	440(%rsp), %r12                 # 8-byte Folded Reload
	jge	.LBB43_26
.LBB43_41:                              # %for.body90.us.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB43_44 Depth 6
                                        #             Child Loop BB43_47 Depth 6
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r12,8), %rcx
	leaq	(%rcx,%r8), %rbp
	cmpl	$3, %r13d
	jae	.LBB43_43
# %bb.42:                               #   in Loop: Header=BB43_41 Depth=5
	movq	64(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB43_46
	.p2align	4, 0x90
.LBB43_43:                              # %vector.ph319
                                        #   in Loop: Header=BB43_41 Depth=5
	addq	%r11, %rbp
	addq	424(%rsp), %rcx                 # 8-byte Folded Reload
	addq	%r8, %rcx
	movq	%r9, %r10
	.p2align	4, 0x90
.LBB43_44:                              # %vector.body326
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        #           Parent Loop BB43_41 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movw	%dx, -98(%rcx)
	movw	%dx, -66(%rcx)
	movw	%dx, -34(%rcx)
	movw	%dx, -2(%rcx)
	movw	%si, -96(%rcx)
	movw	%si, -64(%rcx)
	movw	%si, -32(%rcx)
	movw	%si, (%rcx)
	subq	$-128, %rcx
	addq	$-4, %r10
	jne	.LBB43_44
# %bb.45:                               # %middle.block316
                                        #   in Loop: Header=BB43_41 Depth=5
	movl	%r15d, %ecx
	cmpq	%r9, %r14
	je	.LBB43_48
.LBB43_46:                              # %for.body97.us.us.us.preheader
                                        #   in Loop: Header=BB43_41 Depth=5
	addq	432(%rsp), %rbp                 # 8-byte Folded Reload
	.p2align	4, 0x90
.LBB43_47:                              # %for.body97.us.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        #           Parent Loop BB43_41 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movw	%dx, -2(%rbp)
	movw	%si, (%rbp)
	incl	%ecx
	addq	$32, %rbp
	cmpl	%edi, %ecx
	jl	.LBB43_47
	jmp	.LBB43_48
	.p2align	4, 0x90
.LBB43_26:                              # %for.cond106.preheader.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	8(%rsp), %r9                    # 8-byte Reload
	leaq	(%r9,%rcx), %r15
	testl	%ecx, %ecx
	jle	.LBB43_30
# %bb.27:                               # %for.body110.us.us.preheader
                                        #   in Loop: Header=BB43_16 Depth=4
	leaq	1(%r9), %rdi
	cmpq	%rdi, %r15
	movq	%rdi, %rcx
	cmovgq	%r15, %rcx
	subq	%r9, %rcx
	movq	%r9, %rdx
	cmpq	$39, %rcx
	movl	24(%rsp), %r10d                 # 4-byte Reload
	ja	.LBB43_33
.LBB43_28:                              # %for.body110.us.us.preheader334
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	176(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB43_29:                              # %for.body110.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movw	%r10w, 154(%rcx,%rdx,4)
	movw	%ax, 156(%rcx,%rdx,4)
	incq	%rdx
	cmpq	%r15, %rdx
	jl	.LBB43_29
	jmp	.LBB43_30
	.p2align	4, 0x90
.LBB43_33:                              # %vector.scevcheck
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpq	%rdi, %r15
	cmovgq	%r15, %rdi
	movq	%r9, %rsi
	notq	%rsi
	addq	%rdi, %rsi
	movq	320(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%r9,4), %rdi
	leaq	(%rdi,%rsi,4), %r8
	movq	%r9, %rdx
	cmpq	%rdi, %r8
	jb	.LBB43_28
# %bb.34:                               # %vector.scevcheck
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	312(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%r9,4), %rdi
	leaq	(%rdi,%rsi,4), %r8
	movq	%r9, %rdx
	cmpq	%rdi, %r8
	jb	.LBB43_28
# %bb.35:                               # %vector.scevcheck
                                        #   in Loop: Header=BB43_16 Depth=4
	shrq	$62, %rsi
	movq	%r9, %rdx
	jne	.LBB43_28
# %bb.36:                               # %vector.ph
                                        #   in Loop: Header=BB43_16 Depth=4
	leaq	(,%r9,4), %rdi
	movq	%rcx, %rsi
	andq	$-16, %rsi
	leaq	(%r9,%rsi), %rdx
	movd	%eax, %xmm0
	movd	%r10d, %xmm1
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	pshufd	$0, %xmm1, %xmm0                # xmm0 = xmm1[0,0,0,0]
	addq	152(%rsp), %rdi                 # 8-byte Folded Reload
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB43_37:                              # %vector.body
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movdqu	%xmm0, -48(%rdi,%r8,4)
	movdqu	%xmm0, -32(%rdi,%r8,4)
	movdqu	%xmm0, -16(%rdi,%r8,4)
	movdqu	%xmm0, (%rdi,%r8,4)
	addq	$16, %r8
	cmpq	%r8, %rsi
	jne	.LBB43_37
# %bb.38:                               # %middle.block
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpq	%rsi, %rcx
	jne	.LBB43_28
	jmp	.LBB43_30
	.p2align	4, 0x90
.LBB43_55:                              # %for.cond106.preheader.us.us.thread
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	8(%rsp), %r9                    # 8-byte Reload
	leaq	(%r9,%rcx), %r15
.LBB43_30:                              #   in Loop: Header=BB43_16 Depth=4
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$1, %eax
	jle	.LBB43_31
# %bb.49:                               # %for.body127.lr.ph.us.us
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	344(%rsp), %rax                 # 8-byte Reload
	movq	336(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rax
	movq	184(%rsp), %rcx                 # 8-byte Reload
	shlq	$4, %rcx
	addq	%rax, %rcx
	leaq	(%rcx,%r9,4), %r12
	movl	$1, %r13d
	cmpq	$3, 368(%rsp)                   # 8-byte Folded Reload
	movq	376(%rsp), %rbp                 # 8-byte Reload
	jb	.LBB43_52
# %bb.50:                               # %for.body127.us.us.preheader
                                        #   in Loop: Header=BB43_16 Depth=4
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rax,%rcx,4), %r14
	.p2align	4, 0x90
.LBB43_51:                              # %for.body127.us.us
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	16(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	32(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	48(%r14), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	leaq	4(,%r13), %rax
	addq	%rbp, %rax
	addq	$4, %r13
	addq	$64, %r14
	cmpq	$1, %rax
	jne	.LBB43_51
.LBB43_52:                              # %for.cond51.loopexit.us.us.loopexit.unr-lcssa
                                        #   in Loop: Header=BB43_16 Depth=4
	cmpq	$0, 360(%rsp)                   # 8-byte Folded Reload
	movq	352(%rsp), %rbp                 # 8-byte Reload
	movq	8(%rsp), %rax                   # 8-byte Reload
	je	.LBB43_31
# %bb.53:                               # %for.body127.us.us.epil.preheader
                                        #   in Loop: Header=BB43_16 Depth=4
	shlq	$4, %r13
	leaq	(,%rax,4), %r14
	addq	%r13, %r14
	addq	168(%rsp), %r14                 # 8-byte Folded Reload
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB43_54:                              # %for.body127.us.us.epil
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        #       Parent Loop BB43_15 Depth=3
                                        #         Parent Loop BB43_16 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leaq	(%r14,%r13), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	$16, %r13
	cmpq	%r13, %rbp
	jne	.LBB43_54
	jmp	.LBB43_31
.LBB43_10:                              # %for.body42.us261.preheader
                                        #   in Loop: Header=BB43_7 Depth=2
	leal	(,%r8,4), %ecx
	movq	40(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	subl	%ecx, %eax
	movq	136(%rsp), %rdx                 # 8-byte Reload
	addl	%r8d, %edx
	movslq	%edx, %rdx
	subq	%r8, %rdx
	.p2align	4, 0x90
.LBB43_11:                              # %for.body42.us261
                                        #   Parent Loop BB43_1 Depth=1
                                        #     Parent Loop BB43_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addl	%ecx, %eax
	addq	%r8, %rdx
	cmpq	%rdx, %rsi
	jg	.LBB43_11
# %bb.12:                               # %for.cond38.for.inc149.loopexit_crit_edge.split.us265
                                        #   in Loop: Header=BB43_7 Depth=2
	movl	%eax, 64(%r12)
	jmp	.LBB43_13
	.p2align	4, 0x90
.LBB43_2:                               # %for.body4.preheader
                                        #   in Loop: Header=BB43_1 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB43_3:                               # %for.body4
                                        #   Parent Loop BB43_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	16(%rsp), %eax                  # 4-byte Folded Reload
	cmpl	$4, %eax
	jl	.LBB43_3
	jmp	.LBB43_4
.LBB43_5:                               # %for.end154
	addq	$520, %rsp                      # imm = 0x208
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
.Lfunc_end43:
	.size	readMBMotionVectors, .Lfunc_end43-readMBMotionVectors
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readRefPictureIdx_Null
	.type	readRefPictureIdx_Null,@function
readRefPictureIdx_Null:                 # @readRefPictureIdx_Null
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end44:
	.size	readRefPictureIdx_Null, .Lfunc_end44-readRefPictureIdx_Null
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readRefPictureIdx_FLC
	.type	readRefPictureIdx_FLC,@function
readRefPictureIdx_FLC:                  # @readRefPictureIdx_FLC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorl	%eax, %eax
	cmpb	$4, %cl
	setge	%al
	movl	%eax, 24(%rsi)
	movl	$1, 12(%rsi)
	movq	(%rdx), %rsi
	movq	%rbx, %rdi
	callq	readSyntaxElement_FLC@PLT
	movl	$1, %eax
	subl	4(%rbx), %eax
	movl	%eax, 4(%rbx)
                                        # kill: def $al killed $al killed $eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	readRefPictureIdx_FLC, .Lfunc_end45-readRefPictureIdx_FLC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readRefPictureIdx_VLC
	.type	readRefPictureIdx_VLC,@function
readRefPictureIdx_VLC:                  # @readRefPictureIdx_VLC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	xorl	%eax, %eax
	cmpb	$4, %cl
	setge	%al
	movl	%eax, 24(%rsi)
	movl	%r8d, 8(%rsi)
	callq	*40(%rdx)
	movzbl	4(%rbx), %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end46:
	.size	readRefPictureIdx_VLC, .Lfunc_end46-readRefPictureIdx_VLC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_delta_quant
	.type	read_delta_quant,@function
read_delta_quant:                       # @read_delta_quant
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %r15
	movq	8(%rsi), %r12
	movl	%ecx, (%rdi)
	movl	%ecx, %eax
	movzbl	(%rdx,%rax), %eax
	leaq	(%rax,%rax,2), %rdx
	shll	$4, %edx
	movq	8(%r12), %rax
	addq	312(%r15), %rdx
	cmpl	$0, 12(%rax)
	je	.LBB47_1
# %bb.2:                                # %lor.lhs.false
	movq	(%rdx), %rax
	xorl	%ecx, %ecx
	cmpl	$0, 24(%rax)
	sete	%cl
	jne	.LBB47_3
# %bb.4:                                # %lor.lhs.false
	movq	read_dQuant_CABAC@GOTPCREL(%rip), %rax
	jmp	.LBB47_5
.LBB47_1:
	movq	linfo_se@GOTPCREL(%rip), %rax
	movl	$32, %ecx
	jmp	.LBB47_6
.LBB47_3:
	movq	linfo_se@GOTPCREL(%rip), %rax
.LBB47_5:                               # %lor.lhs.false
	leaq	32(,%rcx,8), %rcx
.LBB47_6:                               # %if.end
	movq	%rax, (%r14,%rcx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*40(%rdx)
	movl	4(%r14), %eax
	movw	%ax, 112(%rbx)
	movswl	%ax, %edx
	movl	849052(%r12), %ecx
	movl	%ecx, %esi
	shrl	$31, %esi
	addl	%ecx, %esi
	sarl	%esi
	movl	$-26, %edi
	subl	%esi, %edi
	cmpl	%edi, %edx
	setl	%dil
	addl	$25, %esi
	cmpl	%esi, %edx
	setg	%dl
	orb	%dil, %dl
	cmpb	$1, %dl
	jne	.LBB47_8
# %bb.7:                                # %if.then18
	movl	$.L.str.5, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movzwl	112(%rbx), %eax
	movl	849052(%r12), %ecx
.LBB47_8:                               # %if.end19
	cwtl
	addl	148(%r15), %eax
	leal	(%rax,%rcx,2), %eax
	addl	$52, %eax
	leal	52(%rcx), %esi
	cltd
	idivl	%esi
	subl	%ecx, %edx
	movl	%edx, 148(%r15)
	movq	(%rbx), %rsi
	movq	8(%rbx), %rax
	movl	%edx, 68(%rbx)
	movl	849052(%rax), %ecx
	addl	%edx, %ecx
	movl	%ecx, 80(%rbx)
	movq	13520(%rsi), %rdi
	xorl	%esi, %esi
	subl	849056(%rax), %esi
	xorl	%r8d, %r8d
	movl	300(%rdi), %r10d
	addl	%edx, %r10d
	cmpl	%esi, %r10d
	cmovlel	%esi, %r10d
	cmpl	$51, %r10d
	movl	$51, %esi
	movl	$51, %r9d
	cmovll	%r10d, %r9d
	testl	%r10d, %r10d
	js	.LBB47_10
# %bb.9:                                # %cond.false.i.i
	movl	%r9d, %r9d
	movzbl	QP_SCALE_CR(%r9), %r9d
.LBB47_10:                              # %cond.end.i.i
	movl	%r9d, 72(%rbx)
	addl	849056(%rax), %r9d
	movl	%r9d, 84(%rbx)
	subl	849056(%rax), %r8d
	addl	304(%rdi), %edx
	cmpl	%r8d, %edx
	cmovlel	%r8d, %edx
	cmpl	$51, %edx
	cmovll	%edx, %esi
	testl	%edx, %edx
	js	.LBB47_12
# %bb.11:                               # %cond.false.1.i.i
	movl	%esi, %edx
	movzbl	QP_SCALE_CR(%rdx), %esi
.LBB47_12:                              # %set_chroma_qp.exit.i
	movl	%esi, 76(%rbx)
	addl	849056(%rax), %esi
	movl	%esi, 88(%rbx)
	xorl	%edx, %edx
	testl	%ecx, %ecx
	jne	.LBB47_14
# %bb.13:                               # %land.rhs.i
	xorl	%edx, %edx
	cmpl	$1, 849092(%rax)
	sete	%dl
.LBB47_14:                              # %update_qp.exit
	movl	%edx, 92(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end47:
	.size	read_delta_quant, .Lfunc_end47-read_delta_quant
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff8x8MB_CABAC
	.type	readCompCoeff8x8MB_CABAC,@function
readCompCoeff8x8MB_CABAC:               # @readCompCoeff8x8MB_CABAC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, 92(%rdi)
	je	.LBB48_1
# %bb.2:                                # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	xorl	%ecx, %ecx
	callq	readCompCoeff8x8_CABAC_lossless
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$1, %ecx
	callq	readCompCoeff8x8_CABAC_lossless
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$2, %ecx
	callq	readCompCoeff8x8_CABAC_lossless
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$3, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	readCompCoeff8x8_CABAC_lossless # TAILCALL
.LBB48_1:                               # %if.then
	.cfi_def_cfa_offset 32
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	xorl	%ecx, %ecx
	callq	readCompCoeff8x8_CABAC
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$1, %ecx
	callq	readCompCoeff8x8_CABAC
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$2, %ecx
	callq	readCompCoeff8x8_CABAC
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movl	$3, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	readCompCoeff8x8_CABAC          # TAILCALL
.Lfunc_end48:
	.size	readCompCoeff8x8MB_CABAC, .Lfunc_end48-readCompCoeff8x8MB_CABAC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff4x4MB_CABAC
	.type	readCompCoeff4x4MB_CABAC,@function
readCompCoeff4x4MB_CABAC:               # @readCompCoeff4x4MB_CABAC
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%r8d, %r13d
	movq	%rcx, %r14
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movzwl	152(%rdi), %eax
	movl	%eax, %edi
	andl	$65531, %edi                    # imm = 0xFFFB
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	cmpw	$10, %di
	sete	%cl
	movl	%edx, %r12d
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	testl	%edx, %edx
	je	.LBB49_2
# %bb.1:                                # %lor.lhs.false
	movq	8(%rbx), %rsi
	cmpl	$0, 849280(%rsi)
	je	.LBB49_3
.LBB49_2:                               # %if.then
	xorl	%esi, %esi
	cmpw	$10, %di
	setne	%sil
	leal	1(,%rsi,4), %edx
.LBB49_6:                               # %if.end51
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	%edx, 24(%rsi)
	movl	20(%rsp), %edx                  # 4-byte Reload
	movb	%cl, %dl
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	leaq	(%rbx,%r12,8), %rcx
	addq	$288, %rcx                      # imm = 0x120
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	cmpl	$0, 92(%rbx)
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	je	.LBB49_15
# %bb.7:                                # %for.cond201.preheader.preheader
	testb	$1, 28(%rsp)                    # 1-byte Folded Reload
	jne	.LBB49_8
# %bb.9:                                # %for.inc213
	testb	$2, 28(%rsp)                    # 1-byte Folded Reload
	jne	.LBB49_10
.LBB49_11:                              # %for.inc213.1
	testb	$4, 28(%rsp)                    # 1-byte Folded Reload
	jne	.LBB49_12
.LBB49_13:                              # %for.inc213.1397
	testb	$8, 28(%rsp)                    # 1-byte Folded Reload
	jne	.LBB49_14
	jmp	.LBB49_80
.LBB49_15:                              # %for.cond.preheader
	movzwl	%ax, %eax
	orl	$4, %eax
	cmpl	$14, %eax
	jne	.LBB49_16
# %bb.56:                               # %for.body.us.preheader
	movb	$1, %al
	xorl	%ebx, %ebx
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB49_57
	.p2align	4, 0x90
.LBB49_79:                              # %for.end192.split.us.us
                                        #   in Loop: Header=BB49_57 Depth=1
	movl	$8, %ebx
	testb	$1, 48(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	movq	80(%rsp), %r12                  # 8-byte Reload
	je	.LBB49_80
.LBB49_57:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_58 Depth 2
                                        #       Child Loop BB49_60 Depth 3
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	1272(%rax), %rax
	leaq	(,%rbx,8), %r15
	addq	(%rax,%r12,8), %r15
	movq	%rbx, %rax
	shrq	$2, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movb	$1, %r12b
	xorl	%ebp, %ebp
	jmp	.LBB49_58
	.p2align	4, 0x90
.LBB49_78:                              # %for.inc190.us.us
                                        #   in Loop: Header=BB49_58 Depth=2
	movl	$8, %ebp
	testb	$1, %r12b
	movl	$0, %r12d
	je	.LBB49_79
.LBB49_58:                              # %for.body65.us.us
                                        #   Parent Loop BB49_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB49_60 Depth 3
	movl	%ebp, %eax
	shrl	$3, %eax
	orl	64(%rsp), %eax                  # 4-byte Folded Reload
	movl	28(%rsp), %ecx                  # 4-byte Reload
	btl	%eax, %ecx
	jae	.LBB49_78
# %bb.59:                               # %if.then67.us.us
                                        #   in Loop: Header=BB49_58 Depth=2
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%ebx, %ecx
	movl	%ebp, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
	shlq	$2, %rbp
	xorl	%eax, %eax
	jmp	.LBB49_60
	.p2align	4, 0x90
.LBB49_77:                              # %for.end184.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	incq	%rax
	cmpq	$8, %rax
	je	.LBB49_78
.LBB49_60:                              # %for.body128.us.us
                                        #   Parent Loop BB49_57 Depth=1
                                        #     Parent Loop BB49_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r15,%rax,8), %rdx
	addq	%rbp, %rdx
	movl	%eax, %ecx
	andl	$3, %ecx
	movl	%ecx, %edi
	shll	$4, %edi
	leaq	(%r14,%rdi), %rsi
	addq	$4, %rsi
	testq	%rcx, %rcx
	je	.LBB49_81
# %bb.61:                               # %for.body139.us358.us.preheader
                                        #   in Loop: Header=BB49_60 Depth=3
	addq	%r14, %rdi
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_63
# %bb.62:                               # %if.then143.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	(%rdi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, (%rdx)
.LBB49_63:                              # %if.end150.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	4(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_65
# %bb.64:                               # %if.then153.us363.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	(%rsi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 4(%rdx)
.LBB49_65:                              # %if.end160.us368.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	8(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_67
# %bb.66:                               # %if.then163.us371.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	4(%rsi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 8(%rdx)
.LBB49_67:                              # %if.end170.us376.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	12(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_69
# %bb.68:                               # %if.then173.us379.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	8(%rsi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 12(%rdx)
.LBB49_69:                              # %if.end180.us384.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	16(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_71
# %bb.70:                               # %if.then143.us.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	(%rdi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 16(%rdx)
	jmp	.LBB49_71
	.p2align	4, 0x90
.LBB49_81:                              # %for.body139.us.us.us.preheader
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	4(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_83
# %bb.82:                               # %if.then153.us.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 4(%rdx)
.LBB49_83:                              # %if.end160.us.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	8(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_85
# %bb.84:                               # %if.then163.us.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	4(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 8(%rdx)
.LBB49_85:                              # %if.end170.us.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	12(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_71
# %bb.86:                               # %if.then173.us.us.us
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	8(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 12(%rdx)
.LBB49_71:                              # %if.end150.us.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	20(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_73
# %bb.72:                               # %if.then153.us363.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 20(%rdx)
.LBB49_73:                              # %if.end160.us368.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	24(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_75
# %bb.74:                               # %if.then163.us371.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	imull	4(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 24(%rdx)
.LBB49_75:                              # %if.end170.us376.us.1
                                        #   in Loop: Header=BB49_60 Depth=3
	movl	28(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_77
# %bb.76:                               #   in Loop: Header=BB49_60 Depth=3
	addq	$28, %rdx
	imull	8(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, (%rdx)
	jmp	.LBB49_77
.LBB49_8:                               # %if.then211
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
	testb	$2, 28(%rsp)                    # 1-byte Folded Reload
	je	.LBB49_11
.LBB49_10:                              # %if.then211.1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	xorl	%ecx, %ecx
	movl	$8, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
	testb	$4, 28(%rsp)                    # 1-byte Folded Reload
	je	.LBB49_13
.LBB49_12:                              # %if.then211.1396
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%rbx, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	$8, %ecx
	xorl	%r8d, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
	testb	$8, 28(%rsp)                    # 1-byte Folded Reload
	je	.LBB49_80
.LBB49_14:                              # %if.then211.1.1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	$8, %ecx
	movl	$8, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
.LBB49_80:                              # %if.end219
	addq	$88, %rsp
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
.LBB49_3:                               # %if.else
	.cfi_def_cfa_offset 144
	cmpl	$1, 24(%rsp)                    # 4-byte Folded Reload
	jne	.LBB49_5
# %bb.4:                                # %if.then25
	xorl	%esi, %esi
	cmpw	$10, %di
	setne	%sil
	leal	11(,%rsi,4), %edx
	jmp	.LBB49_6
.LBB49_16:                              # %for.body.preheader
	movb	$1, %al
	xorl	%ebx, %ebx
	jmp	.LBB49_17
	.p2align	4, 0x90
.LBB49_55:                              # %for.inc190.1
                                        #   in Loop: Header=BB49_17 Depth=1
	movl	$8, %ebx
	testb	$1, 64(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB49_80
.LBB49_17:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB49_19 Depth 2
                                        #     Child Loop BB49_38 Depth 2
	movl	%eax, 64(%rsp)                  # 4-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	1272(%rax), %rax
	leaq	(,%rbx,8), %rbp
	movq	%rbx, %r11
	shrq	$2, %r11
	addq	(%rax,%r12,8), %rbp
	movl	28(%rsp), %eax                  # 4-byte Reload
	btl	%r11d, %eax
	movq	56(%rsp), %rdi                  # 8-byte Reload
	jae	.LBB49_36
# %bb.18:                               # %if.then67
                                        #   in Loop: Header=BB49_17 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%ebx, %ecx
	xorl	%r8d, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movq	%r12, %rbx
	movq	%rdi, %r12
	movq	%r11, %r15
	callq	readCompCoeff4x4SMB_CABAC
	movq	%r15, %r11
	movq	%r12, %rdi
	movq	%rbx, %r12
	movq	48(%rsp), %rbx                  # 8-byte Reload
	xorl	%eax, %eax
	jmp	.LBB49_19
	.p2align	4, 0x90
.LBB49_35:                              # %if.end119.1
                                        #   in Loop: Header=BB49_19 Depth=2
	incq	%rax
	cmpq	$8, %rax
	je	.LBB49_36
.LBB49_19:                              # %for.body74
                                        #   Parent Loop BB49_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%rax,8), %rdx
	movl	%eax, %r9d
	andl	$3, %r9d
	shll	$4, %r9d
	leaq	(%r14,%r9), %rsi
	movl	(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_21
# %bb.20:                               # %if.then85
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%rsi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, (%rdx)
.LBB49_21:                              # %if.end90
                                        #   in Loop: Header=BB49_19 Depth=2
	leaq	(%r14,%r9), %r15
	addq	$4, %r15
	movl	4(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_23
# %bb.22:                               # %if.then92
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r15), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 4(%rdx)
.LBB49_23:                              # %if.end99
                                        #   in Loop: Header=BB49_19 Depth=2
	leaq	(%r14,%r9), %r8
	addq	$8, %r8
	movl	8(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_25
# %bb.24:                               # %if.then102
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r8), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 8(%rdx)
.LBB49_25:                              # %if.end109
                                        #   in Loop: Header=BB49_19 Depth=2
	addq	%r14, %r9
	addq	$12, %r9
	movl	12(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_27
# %bb.26:                               # %if.then112
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r9), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 12(%rdx)
.LBB49_27:                              # %if.end119
                                        #   in Loop: Header=BB49_19 Depth=2
	movl	16(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_29
# %bb.28:                               # %if.then85.1
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%rsi), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 16(%rdx)
.LBB49_29:                              # %if.end90.1
                                        #   in Loop: Header=BB49_19 Depth=2
	movl	20(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_31
# %bb.30:                               # %if.then92.1
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r15), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 20(%rdx)
.LBB49_31:                              # %if.end99.1
                                        #   in Loop: Header=BB49_19 Depth=2
	movl	24(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_33
# %bb.32:                               # %if.then102.1
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r8), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 24(%rdx)
.LBB49_33:                              # %if.end109.1
                                        #   in Loop: Header=BB49_19 Depth=2
	movl	28(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_35
# %bb.34:                               # %if.then112.1
                                        #   in Loop: Header=BB49_19 Depth=2
	imull	(%r9), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 28(%rdx)
	jmp	.LBB49_35
	.p2align	4, 0x90
.LBB49_36:                              # %for.inc190
                                        #   in Loop: Header=BB49_17 Depth=1
	movl	28(%rsp), %eax                  # 4-byte Reload
	movl	%r11d, %ecx
	shrl	%cl, %eax
	testb	$2, %al
	je	.LBB49_55
# %bb.37:                               # %if.then67.1
                                        #   in Loop: Header=BB49_17 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rsp)
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsp), %edx                  # 4-byte Reload
	movl	%ebx, %ecx
	movl	$8, %r8d
	movl	20(%rsp), %r9d                  # 4-byte Reload
	callq	readCompCoeff4x4SMB_CABAC
	xorl	%eax, %eax
	jmp	.LBB49_38
	.p2align	4, 0x90
.LBB49_54:                              # %if.end119.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	incq	%rax
	cmpq	$8, %rax
	je	.LBB49_55
.LBB49_38:                              # %for.body74.1
                                        #   Parent Loop BB49_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbp,%rax,8), %rdx
	movl	%eax, %r9d
	andl	$3, %r9d
	shll	$4, %r9d
	leaq	(%r14,%r9), %rsi
	movl	32(%rdx), %edi
	testl	%edi, %edi
	je	.LBB49_40
# %bb.39:                               # %if.then85.1422
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%rsi), %edi
	movl	%r13d, %ecx
	shll	%cl, %edi
	addl	$8, %edi
	sarl	$4, %edi
	movl	%edi, 32(%rdx)
.LBB49_40:                              # %if.end90.1425
                                        #   in Loop: Header=BB49_38 Depth=2
	leaq	(%r14,%r9), %rdi
	addq	$4, %rdi
	movl	36(%rdx), %r8d
	testl	%r8d, %r8d
	je	.LBB49_42
# %bb.41:                               # %if.then92.1430
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%rdi), %r8d
	movl	%r13d, %ecx
	shll	%cl, %r8d
	addl	$8, %r8d
	sarl	$4, %r8d
	movl	%r8d, 36(%rdx)
.LBB49_42:                              # %if.end99.1433
                                        #   in Loop: Header=BB49_38 Depth=2
	leaq	(%r14,%r9), %r8
	addq	$8, %r8
	movl	40(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_44
# %bb.43:                               # %if.then102.1438
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%r8), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 40(%rdx)
.LBB49_44:                              # %if.end109.1441
                                        #   in Loop: Header=BB49_38 Depth=2
	addq	%r14, %r9
	addq	$12, %r9
	movl	44(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_46
# %bb.45:                               # %if.then112.1446
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%r9), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 44(%rdx)
.LBB49_46:                              # %if.end119.1447
                                        #   in Loop: Header=BB49_38 Depth=2
	movl	48(%rdx), %r10d
	testl	%r10d, %r10d
	je	.LBB49_48
# %bb.47:                               # %if.then85.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%rsi), %r10d
	movl	%r13d, %ecx
	shll	%cl, %r10d
	addl	$8, %r10d
	sarl	$4, %r10d
	movl	%r10d, 48(%rdx)
.LBB49_48:                              # %if.end90.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	movl	52(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_50
# %bb.49:                               # %if.then92.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%rdi), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 52(%rdx)
.LBB49_50:                              # %if.end99.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	movl	56(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_52
# %bb.51:                               # %if.then102.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%r8), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 56(%rdx)
.LBB49_52:                              # %if.end109.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	movl	60(%rdx), %esi
	testl	%esi, %esi
	je	.LBB49_54
# %bb.53:                               # %if.then112.1.1
                                        #   in Loop: Header=BB49_38 Depth=2
	imull	(%r9), %esi
	movl	%r13d, %ecx
	shll	%cl, %esi
	addl	$8, %esi
	sarl	$4, %esi
	movl	%esi, 60(%rdx)
	jmp	.LBB49_54
.LBB49_5:                               # %if.else38
	xorl	%esi, %esi
	cmpw	$10, %di
	setne	%sil
	leal	17(,%rsi,4), %edx
	jmp	.LBB49_6
.Lfunc_end49:
	.size	readCompCoeff4x4MB_CABAC, .Lfunc_end49-readCompCoeff4x4MB_CABAC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff8x8_CABAC
	.type	readCompCoeff8x8_CABAC,@function
readCompCoeff8x8_CABAC:                 # @readCompCoeff8x8_CABAC
	.cfi_startproc
# %bb.0:                                # %entry
	movl	284(%rdi), %eax
	btl	%ecx, %eax
	jae	.LBB50_16
# %bb.1:                                # %if.then
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
	movl	%ecx, %r10d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rbp
	movq	8(%rdi), %rax
	cmpl	$0, 849280(%rax)
	movl	%edx, %edi
	je	.LBB50_3
# %bb.2:                                # %cond.true
	movl	216(%rbp), %edi
.LBB50_3:                               # %cond.end
	movslq	200(%rbp), %rcx
	leaq	(%rcx,%rcx,4), %r8
	leal	(,%r10,4), %esi
	andl	$1, %r10d
	movl	%esi, %ecx
	subl	%r10d, %ecx
	subl	%r10d, %ecx
	movl	$51, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r9
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movl	%edx, %ebx
	movl	$FIELD_SCAN8x8, %r12d
	cmpl	$0, 848876(%rax)
	jne	.LBB50_5
# %bb.4:                                # %land.rhs
	cmpl	$0, 384(%r15)
	movl	$SNGL_SCAN8x8, %ecx
	cmoveq	%rcx, %r12
.LBB50_5:                               # %land.end
	leaq	assignSE2partition(,%r8,4), %r9
	movslq	%edi, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movslq	80(%r15,%rcx,4), %rcx
	movq	856032(%rax), %rdi
	movq	856040(%rax), %r8
	movl	(%rdi,%rcx,4), %edi
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	movslq	(%r8,%rcx,4), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	leaq	8304(%rbp), %r13
	cmpl	$1, 96(%r15)
	leaq	3696(%rbp), %rcx
	cmoveq	%rcx, %r13
	andl	$-8, %esi
	movq	1264(%rbp), %rcx
	leaq	(,%rsi,8), %rdi
	addq	(%rcx,%rbx,8), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	shll	$3, %r10d
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movl	%r10d, 60(%r15)
	movl	%esi, 64(%r15)
	testl	%edx, %edx
	je	.LBB50_7
# %bb.6:                                # %lor.lhs.false
	cmpl	$0, 849280(%rax)
	je	.LBB50_8
.LBB50_7:                               # %if.then45
	movl	$2, 24(%r14)
.LBB50_11:                              # %if.end51
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rax
	movq	%rax, 40(%r14)
	xorl	%eax, %eax
	cmpl	$1, 96(%r15)
	setne	%al
	leal	(%rax,%rax,4), %ecx
	leal	7(%rax,%rax,4), %eax
	movl	%eax, (%r14)
	movq	312(%rbp), %rax
	movzbl	7(%rcx,%r9), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rax,%rcx), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	callq	*40(%rax,%rcx)
	movl	4(%r14), %eax
	testl	%eax, %eax
	movq	16(%rsp), %r8                   # 8-byte Reload
	je	.LBB50_15
# %bb.12:                               # %if.then61
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$9, %rcx
	addq	%rcx, %r13
	movq	40(%rsp), %rdi                  # 8-byte Reload
	shlq	$8, %rdi
	movq	48(%rsp), %rcx                  # 8-byte Reload
	orq	%rcx, 288(%r15,%rbx,8)
	addq	%r13, %rdi
	movslq	8(%r14), %rcx
	leaq	(%r12,%rcx,2), %r13
	movzbl	(%r12,%rcx,2), %edx
	movzbl	1(%r12,%rcx,2), %ecx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsi,%rcx,8), %rsi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$5, %ecx
	movq	%rdi, %rbx
	addq	%rdi, %rcx
	imull	(%rcx,%rdx,4), %eax
	movl	4(%rsp), %ecx                   # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	$32, %eax
	sarl	$6, %eax
	addl	%r8d, %edx
	movl	%eax, (%rsi,%rdx,4)
	xorl	%eax, %eax
	cmpl	$1, 96(%r15)
	setne	%al
	leal	(%rax,%rax,4), %ecx
	leal	9(%rax,%rax,4), %eax
	movl	%eax, (%r14)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	9(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %r12
	shll	$4, %r12d
	addq	312(%rbp), %r12
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB50_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*40(%r12)
	movq	16(%rsp), %r8                   # 8-byte Reload
	movl	4(%r14), %eax
	testl	%eax, %eax
	je	.LBB50_15
# %bb.14:                               # %for.inc
                                        #   in Loop: Header=BB50_13 Depth=1
	movslq	8(%r14), %rsi
	movzbl	2(%r13,%rsi,2), %edx
	movzbl	3(%r13,%rsi,2), %ecx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	(%rdi,%rcx,8), %rdi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$5, %ecx
	addq	%rbx, %rcx
	imull	(%rcx,%rdx,4), %eax
	movl	4(%rsp), %ecx                   # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	leaq	2(%r13,%rsi,2), %r13
	addl	$32, %eax
	sarl	$6, %eax
	addl	%r8d, %edx
	movl	%eax, (%rdi,%rdx,4)
	incl	%ebp
	cmpl	$64, %ebp
	jb	.LBB50_13
.LBB50_15:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB50_16:                              # %if.end121
	retq
.LBB50_8:                               # %if.else
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpl	$1, %edx
	jne	.LBB50_10
# %bb.9:                                # %if.then47
	movl	$12, 24(%r14)
	jmp	.LBB50_11
.LBB50_10:                              # %if.else49
	movl	$18, 24(%r14)
	jmp	.LBB50_11
.Lfunc_end50:
	.size	readCompCoeff8x8_CABAC, .Lfunc_end50-readCompCoeff8x8_CABAC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff8x8_CABAC_lossless
	.type	readCompCoeff8x8_CABAC_lossless,@function
readCompCoeff8x8_CABAC_lossless:        # @readCompCoeff8x8_CABAC_lossless
	.cfi_startproc
# %bb.0:                                # %entry
	movl	284(%rdi), %eax
	btl	%ecx, %eax
	jae	.LBB51_14
# %bb.1:                                # %if.then
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
	movl	%ecx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %r9
	movq	8(%rdi), %rax
	movslq	200(%r9), %rcx
	leaq	(%rcx,%rcx,4), %rdi
	leal	(,%rbx,4), %esi
	andl	$1, %ebx
	movl	%esi, %ecx
	subl	%ebx, %ecx
	subl	%ebx, %ecx
	movl	$51, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r8
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movl	%edx, %r8d
	movl	$FIELD_SCAN8x8, %r13d
	cmpl	$0, 848876(%rax)
	jne	.LBB51_3
# %bb.2:                                # %land.rhs
	cmpl	$0, 384(%r15)
	movl	$SNGL_SCAN8x8, %ecx
	cmoveq	%rcx, %r13
.LBB51_3:                               # %land.end
	leaq	assignSE2partition(,%rdi,4), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	andl	$-8, %esi
	movq	1264(%r9), %rcx
	leaq	(,%rsi,8), %rdi
	addq	(%rcx,%r8,8), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	shll	$3, %ebx
	movl	%ebx, 60(%r15)
	movl	%esi, 64(%r15)
	testl	%edx, %edx
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	je	.LBB51_5
# %bb.4:                                # %lor.lhs.false
	cmpl	$0, 849280(%rax)
	je	.LBB51_6
.LBB51_5:                               # %if.then17
	movl	$2, 24(%r14)
.LBB51_9:                               # %if.end23
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	movq	%rsi, 40(%r14)
	xorl	%eax, %eax
	cmpl	$1, 96(%r15)
	setne	%al
	leal	(%rax,%rax,4), %ecx
	leal	7(%rax,%rax,4), %eax
	movl	%eax, (%r14)
	movq	%r9, %r12
	movq	312(%r9), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movzbl	7(%rcx,%rdx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rax,%rcx), %rdx
	movq	%rsi, 40(%r14)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*40(%rax,%rcx)
	movl	4(%r14), %eax
	testl	%eax, %eax
	je	.LBB51_13
# %bb.10:                               # %for.body.peel.next
	movslq	8(%r14), %rcx
	leaq	(,%rcx,2), %rbp
	addq	%r13, %rbp
	movzbl	(%r13,%rcx,2), %edx
	movzbl	1(%r13,%rcx,2), %ecx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	orq	%rsi, 288(%r15,%rdi,8)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	(%rsi,%rcx,8), %rcx
	addl	%ebx, %edx
	movl	%eax, (%rcx,%rdx,4)
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB51_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$1, 96(%r15)
	setne	%al
	leal	(%rax,%rax,4), %ecx
	leal	9(%rax,%rax,4), %eax
	movl	%eax, (%r14)
	movq	312(%r12), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movzbl	9(%rcx,%rdx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	leaq	(%rax,%rcx), %rdx
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rsi
	movq	%rsi, 40(%r14)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*40(%rax,%rcx)
	movl	4(%r14), %eax
	testl	%eax, %eax
	je	.LBB51_13
# %bb.12:                               # %for.inc
                                        #   in Loop: Header=BB51_11 Depth=1
	movslq	8(%r14), %rcx
	movzbl	2(%rbp,%rcx,2), %edx
	movzbl	3(%rbp,%rcx,2), %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	16(%rsp), %r8                   # 8-byte Reload
	orq	%rdi, 288(%r15,%r8,8)
	leaq	2(%rbp,%rcx,2), %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	addl	%ebx, %edx
	movl	%eax, (%rcx,%rdx,4)
	incl	%r13d
	cmpl	$64, %r13d
	jb	.LBB51_11
.LBB51_13:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB51_14:                              # %if.end50
	retq
.LBB51_6:                               # %if.else
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpl	$1, %edx
	jne	.LBB51_8
# %bb.7:                                # %if.then19
	movl	$12, 24(%r14)
	jmp	.LBB51_9
.LBB51_8:                               # %if.else21
	movl	$18, 24(%r14)
	jmp	.LBB51_9
.Lfunc_end51:
	.size	readCompCoeff8x8_CABAC_lossless, .Lfunc_end51-readCompCoeff8x8_CABAC_lossless
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff4x4SMB_CABAC
	.type	readCompCoeff4x4SMB_CABAC,@function
readCompCoeff4x4SMB_CABAC:              # @readCompCoeff4x4SMB_CABAC
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
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rsi, %r15
	movq	(%rdi), %r10
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movq	8(%rdi), %rsi
	movslq	200(%r10), %rax
	leaq	(%rax,%rax,4), %rdi
	movl	$FIELD_SCAN, %eax
	cmpl	$0, 848876(%rsi)
	jne	.LBB52_2
# %bb.1:                                # %land.rhs
	movq	(%rsp), %rax                    # 8-byte Reload
	cmpl	$0, 384(%rax)
	movl	$SNGL_SCAN, %esi
	movl	$FIELD_SCAN, %eax
	cmoveq	%rsi, %rax
.LBB52_2:                               # %land.end
	leaq	assignSE2partition(,%rdi,4), %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	1272(%r10), %rsi
	movl	%edx, %edx
	movq	(%rsi,%rdx,8), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	leal	8(%rcx), %edx
	movl	%edx, 16(%rsp)                  # 4-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	leal	8(%r8), %edx
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	movl	%r9d, %edx
	leaq	(%rax,%rdx,2), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testl	%r9d, %r9d
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	jne	.LBB52_19
	jmp	.LBB52_3
	.p2align	4, 0x90
.LBB52_27:                              # %for.inc93.split
                                        #   in Loop: Header=BB52_19 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addl	$4, %ecx
	cmpl	16(%rsp), %ecx                  # 4-byte Folded Reload
	jge	.LBB52_28
.LBB52_19:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_20 Depth 2
                                        #       Child Loop BB52_24 Depth 3
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ecx, 64(%rax)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movslq	%ecx, %rbx
	movq	64(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	jmp	.LBB52_20
	.p2align	4, 0x90
.LBB52_26:                              # %for.inc90.loopexit
                                        #   in Loop: Header=BB52_20 Depth=2
	movl	12(%rsp), %edx                  # 4-byte Reload
	addl	$4, %edx
	cmpl	20(%rsp), %edx                  # 4-byte Folded Reload
	movq	32(%rsp), %r10                  # 8-byte Reload
	jge	.LBB52_27
.LBB52_20:                              # %for.body11
                                        #   Parent Loop BB52_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB52_24 Depth 3
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%edx, 60(%rcx)
	xorl	%eax, %eax
	cmpl	$0, 96(%rcx)
	sete	%al
	leal	(%rax,%rax,4), %ecx
	leal	9(%rax,%rax,4), %eax
	movl	%eax, (%r15)
	movq	312(%r10), %r13
	movq	48(%rsp), %rax                  # 8-byte Reload
	movzbl	9(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%r13,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB52_22
# %bb.21:                               # %if.then55
                                        #   in Loop: Header=BB52_20 Depth=2
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(%r15)
	jmp	.LBB52_23
	.p2align	4, 0x90
.LBB52_22:                              # %if.else57
                                        #   in Loop: Header=BB52_20 Depth=2
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 40(%r15)
.LBB52_23:                              # %if.end59
                                        #   in Loop: Header=BB52_20 Depth=2
	addq	%rax, %r13
	xorl	%r14d, %r14d
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movslq	%edx, %r12
	movq	40(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB52_24:                              # %for.body67
                                        #   Parent Loop BB52_19 Depth=1
                                        #     Parent Loop BB52_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*40(%r13)
	movl	4(%r15), %eax
	testl	%eax, %eax
	je	.LBB52_26
# %bb.25:                               # %for.inc
                                        #   in Loop: Header=BB52_24 Depth=3
	movslq	8(%r15), %rcx
	movzbl	(%rbp,%rcx,2), %edx
	movzbl	1(%rbp,%rcx,2), %esi
	leaq	2(%rbp,%rcx,2), %rbp
	addq	%rbx, %rsi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%r12, %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	%r14d
	cmpl	$16, %r14d
	jb	.LBB52_24
	jmp	.LBB52_26
	.p2align	4, 0x90
.LBB52_18:                              # %for.inc93.split.us.us
                                        #   in Loop: Header=BB52_3 Depth=1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addl	$4, %ecx
	cmpl	16(%rsp), %ecx                  # 4-byte Folded Reload
	jge	.LBB52_28
.LBB52_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_4 Depth 2
                                        #       Child Loop BB52_15 Depth 3
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ecx, 64(%rax)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movslq	%ecx, %rbx
	movq	64(%rsp), %rax                  # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	jmp	.LBB52_4
	.p2align	4, 0x90
.LBB52_17:                              # %for.inc90.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movl	12(%rsp), %eax                  # 4-byte Reload
	addl	$4, %eax
	cmpl	20(%rsp), %eax                  # 4-byte Folded Reload
	movq	32(%rsp), %r10                  # 8-byte Reload
	jge	.LBB52_18
.LBB52_4:                               # %for.body11.us.us
                                        #   Parent Loop BB52_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB52_15 Depth 3
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movq	(%rsp), %rcx                    # 8-byte Reload
	movl	%eax, 60(%rcx)
	xorl	%eax, %eax
	cmpl	$0, 96(%rcx)
	sete	%al
	leal	(%rax,%rax,4), %ecx
	leal	7(%rax,%rax,4), %eax
	movl	%eax, (%r15)
	movq	312(%r10), %rdx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movzbl	7(%rcx,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rdx,%rax), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB52_6
# %bb.5:                                # %if.then24.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rcx
	movq	%rcx, 32(%r15)
	jmp	.LBB52_7
	.p2align	4, 0x90
.LBB52_6:                               # %if.else.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rcx
	movq	%rcx, 40(%r15)
.LBB52_7:                               # %if.end.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	addq	%rax, %rdx
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	callq	*40(%rdx)
	movl	4(%r15), %ecx
	testl	%ecx, %ecx
	je	.LBB52_17
# %bb.8:                                # %if.then26.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movl	12(%rsp), %r10d                 # 4-byte Reload
	movl	%r10d, %eax
	sarl	$2, %eax
	addl	24(%rsp), %eax                  # 4-byte Folded Reload
	cmpl	$63, %eax
	jle	.LBB52_10
# %bb.9:                                #   in Loop: Header=BB52_4 Depth=2
	xorl	%edx, %edx
	jmp	.LBB52_11
	.p2align	4, 0x90
.LBB52_10:                              # %cond.false.i.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	cltq
	movq	po2(,%rax,8), %rdx
.LBB52_11:                              # %i64_power2.exit.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	32(%rsp), %r8                   # 8-byte Reload
	movslq	8(%r15), %rax
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movzbl	(%rdi,%rax,2), %esi
	movzbl	1(%rdi,%rax,2), %edi
	movq	128(%rsp), %r9
	orq	%rdx, (%r9)
	addq	%rbx, %rdi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%rdi,8), %rdx
	movslq	%r10d, %rbp
	addq	%rbp, %rsi
	movl	%ecx, (%rdx,%rsi,4)
	xorl	%ecx, %ecx
	movq	(%rsp), %rdx                    # 8-byte Reload
	cmpl	$0, 96(%rdx)
	sete	%cl
	leal	(%rcx,%rcx,4), %edx
	leal	9(%rcx,%rcx,4), %ecx
	movl	%ecx, (%r15)
	movq	312(%r8), %r13
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movzbl	9(%rdx,%rcx), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shll	$4, %ecx
	movq	(%r13,%rcx), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB52_13
# %bb.12:                               # %if.then55.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	linfo_levrun_inter@GOTPCREL(%rip), %rdx
	movq	%rdx, 32(%r15)
	jmp	.LBB52_14
	.p2align	4, 0x90
.LBB52_13:                              # %if.else57.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	readRunLevel_CABAC@GOTPCREL(%rip), %rdx
	movq	%rdx, 40(%r15)
.LBB52_14:                              # %if.end59.us.us
                                        #   in Loop: Header=BB52_4 Depth=2
	movq	40(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rax,2), %r12
	addq	%rcx, %r13
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB52_15:                              # %for.body67.us.us
                                        #   Parent Loop BB52_3 Depth=1
                                        #     Parent Loop BB52_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	*40(%r13)
	movl	4(%r15), %eax
	testl	%eax, %eax
	je	.LBB52_17
# %bb.16:                               # %for.inc.us.us
                                        #   in Loop: Header=BB52_15 Depth=3
	movslq	8(%r15), %rcx
	movzbl	2(%r12,%rcx,2), %edx
	movzbl	3(%r12,%rcx,2), %esi
	leaq	(%r12,%rcx,2), %r12
	addq	$2, %r12
	addq	%rbx, %rsi
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	addq	%rbp, %rdx
	movl	%eax, (%rcx,%rdx,4)
	incl	%r14d
	cmpl	$16, %r14d
	jb	.LBB52_15
	jmp	.LBB52_17
.LBB52_28:                              # %for.end95
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
.Lfunc_end52:
	.size	readCompCoeff4x4SMB_CABAC, .Lfunc_end52-readCompCoeff4x4SMB_CABAC
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function readCoeff4x4_CAVLC
.LCPI53_0:
	.long	0                               # 0x0
	.long	4294967295                      # 0xffffffff
	.long	4294967294                      # 0xfffffffe
	.long	4294967293                      # 0xfffffffd
.LCPI53_1:
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
	.long	4294967291                      # 0xfffffffb
.LCPI53_2:
	.long	4294967287                      # 0xfffffff7
	.long	4294967287                      # 0xfffffff7
	.long	4294967287                      # 0xfffffff7
	.long	4294967287                      # 0xfffffff7
.LCPI53_3:
	.long	4294967283                      # 0xfffffff3
	.long	4294967283                      # 0xfffffff3
	.long	4294967283                      # 0xfffffff3
	.long	4294967283                      # 0xfffffff3
.LCPI53_4:
	.long	1065353216                      # 0x3f800000
	.long	1065353216                      # 0x3f800000
	.long	1065353216                      # 0x3f800000
	.long	1065353216                      # 0x3f800000
.LCPI53_5:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI53_6:
	.long	4294967280                      # 0xfffffff0
	.long	4294967280                      # 0xfffffff0
	.long	4294967280                      # 0xfffffff0
	.long	4294967280                      # 0xfffffff0
	.text
	.p2align	4, 0x90
	.type	readCoeff4x4_CAVLC,@function
readCoeff4x4_CAVLC:                     # @readCoeff4x4_CAVLC
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	movq	%r8, %r15
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movl	%esi, %r14d
	movq	(%rdi), %rcx
	movq	8(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movslq	24(%rdi), %rbx
	movslq	200(%rcx), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	assignSE2partition(,%rax,4), %rax
	movl	$8, %esi
	movl	$16, 4(%rsp)                    # 4-byte Folded Spill
	movl	$7, %edx
	movl	%r14d, %r8d
	jmpq	*.LJTI53_0(,%r8,8)
.LBB53_1:                               # %sw.bb
	xorl	%edx, %edx
	cmpl	$1, 96(%rdi)
	setne	%dl
	leal	(%rdx,%rdx,4), %edx
	addl	$9, %edx
	jmp	.LBB53_6
.LBB53_2:                               # %sw.bb27
	xorl	%edx, %edx
	cmpl	$1, 96(%rdi)
	setne	%dl
	leal	(%rdx,%rdx,4), %edx
	addl	$9, %edx
	jmp	.LBB53_12
.LBB53_3:                               # %sw.bb57
	xorl	%edx, %edx
	cmpl	$1, 96(%rdi)
	setne	%dl
	leal	(%rdx,%rdx,4), %edx
	addl	$9, %edx
	jmp	.LBB53_11
.LBB53_5:                               # %sw.bb18
	movl	$15, 4(%rsp)                    # 4-byte Folded Spill
	movl	$9, %edx
.LBB53_6:                               # %cond.true
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	848832(%rsi), %rsi
	movq	(%rsi,%rbx,8), %rsi
	movq	(%rsi), %rsi
	movslq	%ebp, %r8
	movq	(%rsi,%r8,8), %rsi
	movslq	%r13d, %r8
	movb	$0, (%rsi,%r8)
	movl	%edx, 24(%rsp)
	movq	312(%rcx), %rcx
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rcx,%rax), %r12
	leal	(,%r13,4), %edx
	leal	(,%rbp,4), %ecx
	xorl	%esi, %esi
	callq	predict_nnz
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	jb	.LBB53_18
	jmp	.LBB53_16
.LBB53_7:                               # %cond.false
	xorl	%edx, %edx
	cmpl	$1, 96(%rdi)
	setne	%dl
	leal	(%rdx,%rdx,4), %r8d
	leal	10(%rdx,%rdx,4), %edx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	848832(%rsi), %rsi
	movq	(%rsi,%rbx,8), %rsi
	movq	(%rsi), %rsi
	movslq	%ebp, %r9
	movq	(%rsi,%r9,8), %r10
	movslq	%r13d, %rsi
	movb	$0, (%r10,%rsi)
	movl	%edx, 24(%rsp)
	movq	312(%rcx), %rcx
	movzbl	10(%r8,%rax), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rcx,%rax), %r12
	leal	-16(,%r9,4), %edx
                                        # kill: def $esi killed $esi killed $rsi
	callq	predict_nnz_chroma
	movl	$15, 4(%rsp)                    # 4-byte Folded Spill
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	jae	.LBB53_16
	jmp	.LBB53_18
.LBB53_8:                               # %sw.bb48
	movl	$15, 4(%rsp)                    # 4-byte Folded Spill
	movl	$9, %edx
	jmp	.LBB53_12
.LBB53_9:                               # %if.else212
	xorl	%edx, %edx
	cmpl	$1, 96(%rdi)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	849104(%rdi), %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	setne	%dl
	leal	8(%rdx,%rdx,4), %edx
	movq	848832(%rdi), %rsi
	movq	(%rsi,%rbx,8), %rsi
	movq	(%rsi), %rsi
	movslq	%ebp, %r8
	movq	(%rsi,%r8,8), %rsi
	movslq	%r13d, %r8
	movb	$0, (%rsi,%r8)
	movl	%edx, 24(%rsp)
	movq	312(%rcx), %rcx
	movzbl	(%rax,%rdx), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rcx,%rax), %r12
	leaq	24(%rsp), %rsi
	movq	%r12, %rdx
	callq	readSyntaxElement_NumCoeffTrailingOnesChromaDC@PLT
	xorl	%ebp, %ebp
	movq	28(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	jmp	.LBB53_22
.LBB53_10:                              # %sw.bb78
	movl	$15, 4(%rsp)                    # 4-byte Folded Spill
	movl	$9, %edx
.LBB53_11:                              # %if.else
	movl	$16, %esi
.LBB53_12:                              # %if.else
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	848832(%r8), %r8
	movq	(%r8,%rbx,8), %r8
	movq	(%r8,%rsi), %rsi
	movslq	%ebp, %r8
	movq	(%rsi,%r8,8), %rsi
	movslq	%r13d, %r8
	movb	$0, (%rsi,%r8)
	movl	%edx, 24(%rsp)
	movq	312(%rcx), %rcx
	movl	%edx, %edx
	movzbl	(%rax,%rdx), %eax
	leaq	(%rax,%rax,2), %rax
	shll	$4, %eax
	movq	(%rcx,%rax), %r12
	leal	-3(%r14), %eax
	leal	(,%r13,4), %edx
	leal	(,%rbp,4), %ecx
	cmpl	$2, %eax
	ja	.LBB53_14
# %bb.13:                               # %if.then141
	movl	$3, %esi
	callq	predict_nnz
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	jb	.LBB53_18
	jmp	.LBB53_16
.LBB53_14:                              # %if.else145
	movl	$8, %esi
	callq	predict_nnz
	xorl	%ecx, %ecx
	cmpl	$2, %eax
	jb	.LBB53_18
.LBB53_16:                              # %if.else152
	movl	$1, %ecx
	cmpl	$4, %eax
	jb	.LBB53_18
# %bb.17:                               # %if.else155
	cmpl	$8, %eax
	movl	$3, %ecx
	sbbl	$0, %ecx
.LBB53_18:                              # %if.end161
	movl	%ecx, 28(%rsp)
	leaq	24(%rsp), %rdi
	leaq	121(%rsp), %rdx
	movq	%r12, %rsi
	callq	readSyntaxElement_NumCoeffTrailingOnes@PLT
	movq	28(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movd	%xmm0, %eax
	cmpl	$7, %r14d
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	ja	.LBB53_28
# %bb.19:                               # %if.end161
	movl	$135, %ecx
	btl	%r14d, %ecx
	jae	.LBB53_28
# %bb.20:                               # %if.then172
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	848832(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rcx
	movq	(%rcx), %rcx
	movslq	%ebp, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	%r13d, %rdx
	movb	%al, (%rcx,%rdx)
.LBB53_21:                              # %if.end216
	movb	$1, %bpl
.LBB53_22:                              # %if.end216
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movslq	4(%rsp), %r14                   # 4-byte Folded Reload
	shlq	$2, %r14
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	memset@PLT
	movdqa	80(%rsp), %xmm0                 # 16-byte Reload
	movd	%xmm0, %ebx
	movq	192(%rsp), %rax
	movd	%xmm0, (%rax)
	testl	%ebx, %ebx
	je	.LBB53_56
# %bb.23:                               # %if.then221
	movl	%ebp, 76(%rsp)                  # 4-byte Spill
	pshufd	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	movd	%xmm0, %ebp
	testl	%ebp, %ebp
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	je	.LBB53_27
# %bb.24:                               # %if.then223
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	movl	%ebp, 36(%rsp)
	leaq	24(%rsp), %rdi
	movq	%r12, %rsi
	callq	readSyntaxElement_FLC@PLT
	decl	%ebx
	movl	%ebx, %r13d
	subl	%ebp, %r13d
	testl	%ebp, %ebp
	jle	.LBB53_35
# %bb.25:                               # %for.body.preheader
	movslq	%ebx, %rax
	movslq	%r13d, %rcx
	leaq	-1(%rax), %rsi
	cmpq	%rsi, %rcx
	cmovlq	%rcx, %rsi
	movl	40(%rsp), %edx
	movq	%rax, %rdi
	subq	%rsi, %rdi
	cmpq	$16, %rdi
	jae	.LBB53_30
# %bb.26:
	movl	%ebp, %esi
	jmp	.LBB53_33
.LBB53_27:                              # %if.then221.if.end235_crit_edge
	decl	%ebx
	movl	%ebx, %r13d
	subl	%ebp, %r13d
	jmp	.LBB53_35
.LBB53_28:                              # %if.else181
	addl	$-3, %r14d
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	848832(%rcx), %rcx
	movq	(%rcx,%rbx,8), %rsi
	movslq	%ebp, %rdx
	movslq	%r13d, %rcx
	cmpl	$2, %r14d
	ja	.LBB53_57
# %bb.29:                               # %if.then190
	movq	8(%rsi), %rsi
	jmp	.LBB53_58
.LBB53_30:                              # %vector.ph
	movq	%rdi, %r8
	andq	$-16, %r8
	movl	%ebp, %esi
	movdqa	96(%rsp), %xmm14                # 16-byte Reload
	paddd	.LCPI53_0(%rip), %xmm14
	subl	%r8d, %esi
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movq	%r8, %r9
	negq	%r9
	leaq	(%r15,%rax,4), %r10
	addq	$-12, %r10
	subq	%r8, %rax
	xorl	%r11d, %r11d
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI53_1(%rip), %xmm2          # xmm2 = [4294967291,4294967291,4294967291,4294967291]
	movdqa	.LCPI53_2(%rip), %xmm3          # xmm3 = [4294967287,4294967287,4294967287,4294967287]
	movdqa	.LCPI53_3(%rip), %xmm4          # xmm4 = [4294967283,4294967283,4294967283,4294967283]
	movdqa	.LCPI53_4(%rip), %xmm5          # xmm5 = [1065353216,1065353216,1065353216,1065353216]
	movdqa	.LCPI53_5(%rip), %xmm6          # xmm6 = [1,1,1,1]
	pxor	%xmm7, %xmm7
	movdqa	.LCPI53_6(%rip), %xmm8          # xmm8 = [4294967280,4294967280,4294967280,4294967280]
	.p2align	4, 0x90
.LBB53_31:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm14, %xmm9
	paddd	%xmm1, %xmm9
	movdqa	%xmm14, %xmm10
	paddd	%xmm2, %xmm10
	movdqa	%xmm14, %xmm11
	paddd	%xmm3, %xmm11
	movdqa	%xmm14, %xmm12
	paddd	%xmm4, %xmm12
	pslld	$23, %xmm9
	paddd	%xmm5, %xmm9
	cvttps2dq	%xmm9, %xmm13
	pslld	$23, %xmm10
	paddd	%xmm5, %xmm10
	cvttps2dq	%xmm10, %xmm10
	pslld	$23, %xmm11
	paddd	%xmm5, %xmm11
	cvttps2dq	%xmm11, %xmm11
	pslld	$23, %xmm12
	paddd	%xmm5, %xmm12
	cvttps2dq	%xmm12, %xmm9
	pand	%xmm0, %xmm13
	pand	%xmm0, %xmm10
	pand	%xmm0, %xmm11
	pand	%xmm0, %xmm9
	pshufd	$27, %xmm13, %xmm12             # xmm12 = xmm13[3,2,1,0]
	pcmpeqd	%xmm7, %xmm12
	pxor	%xmm1, %xmm12
	por	%xmm6, %xmm12
	movdqu	%xmm12, (%r10,%r11,4)
	pshufd	$27, %xmm10, %xmm10             # xmm10 = xmm10[3,2,1,0]
	pcmpeqd	%xmm7, %xmm10
	pxor	%xmm1, %xmm10
	por	%xmm6, %xmm10
	movdqu	%xmm10, -16(%r10,%r11,4)
	pshufd	$27, %xmm11, %xmm10             # xmm10 = xmm11[3,2,1,0]
	pcmpeqd	%xmm7, %xmm10
	pxor	%xmm1, %xmm10
	por	%xmm6, %xmm10
	movdqu	%xmm10, -32(%r10,%r11,4)
	pshufd	$27, %xmm9, %xmm9               # xmm9 = xmm9[3,2,1,0]
	pcmpeqd	%xmm7, %xmm9
	pxor	%xmm1, %xmm9
	por	%xmm6, %xmm9
	movdqu	%xmm9, -48(%r10,%r11,4)
	paddd	%xmm8, %xmm14
	addq	$-16, %r11
	cmpq	%r11, %r9
	jne	.LBB53_31
# %bb.32:                               # %middle.block
	cmpq	%r8, %rdi
	je	.LBB53_35
.LBB53_33:                              # %for.body.preheader575
	decl	%esi
	.p2align	4, 0x90
.LBB53_34:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	btl	%esi, %edx
	movl	$0, %edi
	sbbl	%edi, %edi
	orl	$1, %edi
	movl	%edi, (%r15,%rax,4)
	decq	%rax
	decl	%esi
	cmpq	%rcx, %rax
	jg	.LBB53_34
.LBB53_35:                              # %if.end235
	testl	%r13d, %r13d
	js	.LBB53_46
# %bb.36:                               # %for.body253.lr.ph
	movq	80(%rsp), %rsi                  # 8-byte Reload
	cmpl	$11, %esi
	setge	%al
	cmpl	$3, %ebp
	setl	%cl
	sete	%dl
	andb	%al, %cl
	movzbl	%cl, %ebp
	cmpl	$4, %esi
	setge	%r14b
	andb	%dl, %r14b
	movl	%r13d, %eax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	24(%rsp), %rdi
	cmpb	$1, %bpl
	jne	.LBB53_38
# %bb.37:                               # %if.else258.peel
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	readSyntaxElement_Level_VLCN@PLT
	movl	40(%rsp), %eax
	testb	%r14b, %r14b
	je	.LBB53_39
	jmp	.LBB53_40
.LBB53_38:                              # %if.then256.peel
	movq	%r12, %rsi
	callq	readSyntaxElement_Level_VLC0@PLT
	movl	40(%rsp), %eax
	testb	%r14b, %r14b
	jne	.LBB53_40
.LBB53_39:                              # %if.then262.peel
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	leal	(%rax,%rcx,2), %eax
	decl	%eax
	movl	%eax, 40(%rsp)
.LBB53_40:                              # %if.end268.peel
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, (%r15,%rsi,4)
	testl	%r13d, %r13d
	je	.LBB53_46
# %bb.41:                               # %for.body253.peel.next
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movl	%ebp, %eax
	xorl	%edx, %edx
	cmpl	readCoeff4x4_CAVLC.incVlc(,%rax,4), %ecx
	setg	%dl
	addl	%ebp, %edx
	cmpl	$4, %ecx
	movl	$2, %ebp
	cmovbl	%edx, %ebp
	leaq	(%r15,%rsi,4), %r15
	addq	$-4, %r15
	leaq	24(%rsp), %r14
	jmp	.LBB53_44
	.p2align	4, 0x90
.LBB53_42:                              # %if.else258
                                        #   in Loop: Header=BB53_44 Depth=1
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	readSyntaxElement_Level_VLCN@PLT
.LBB53_43:                              # %if.end268
                                        #   in Loop: Header=BB53_44 Depth=1
	movl	40(%rsp), %eax
	movl	%eax, (%r15)
	movl	%eax, %ecx
	negl	%ecx
	cmovsl	%eax, %ecx
	movl	%ebp, %eax
	xorl	%edx, %edx
	cmpl	readCoeff4x4_CAVLC.incVlc(,%rax,4), %ecx
	setg	%dl
	addl	%edx, %ebp
	decl	%r13d
	addq	$-4, %r15
	testl	%r13d, %r13d
	jle	.LBB53_46
.LBB53_44:                              # %for.body253
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	testl	%ebp, %ebp
	jne	.LBB53_42
# %bb.45:                               # %if.then256
                                        #   in Loop: Header=BB53_44 Depth=1
	movq	%r12, %rsi
	callq	readSyntaxElement_Level_VLC0@PLT
	jmp	.LBB53_43
.LBB53_46:                              # %for.end296
	xorl	%ebp, %ebp
	movq	80(%rsp), %r14                  # 8-byte Reload
	cmpl	4(%rsp), %r14d                  # 4-byte Folded Reload
	jge	.LBB53_49
# %bb.47:                               # %if.then299
	movl	%ebx, 28(%rsp)
	cmpb	$0, 76(%rsp)                    # 1-byte Folded Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	je	.LBB53_50
# %bb.48:                               # %if.else305
	leaq	24(%rsp), %rdi
	movq	%r12, %rsi
	callq	readSyntaxElement_TotalZeros@PLT
	jmp	.LBB53_51
.LBB53_49:
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB53_55
.LBB53_50:                              # %if.then303
	leaq	24(%rsp), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r12, %rdx
	callq	readSyntaxElement_TotalZerosChromaDC@PLT
.LBB53_51:                              # %if.end310
	movl	28(%rsp), %ebp
	testl	%ebp, %ebp
	setle	%al
	cmpl	$2, %r14d
	setl	%cl
	orb	%al, %cl
	jne	.LBB53_55
# %bb.52:                               # %do.body.preheader
	movl	%r14d, %r15d
	decl	%r14d
	movq	%r14, %rax
	leaq	24(%rsp), %r14
	movl	%eax, %ebx
	.p2align	4, 0x90
.LBB53_53:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %ebp
	movl	$7, %eax
	cmovll	%ebp, %eax
	decl	%eax
	movl	%eax, 28(%rsp)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	readSyntaxElement_Run@PLT
	movl	28(%rsp), %eax
	movl	%eax, -4(%r13,%r15,4)
	decl	%ebx
	subl	%eax, %ebp
	je	.LBB53_55
# %bb.54:                               # %do.body
                                        #   in Loop: Header=BB53_53 Depth=1
	leaq	-1(%r15), %rax
	cmpq	$2, %r15
	movq	%rax, %r15
	jne	.LBB53_53
.LBB53_55:                              # %if.end335
	movslq	%ebx, %rax
	movl	%ebp, (%r13,%rax,4)
.LBB53_56:                              # %if.end338
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
	retq
.LBB53_57:                              # %if.else200
	.cfi_def_cfa_offset 192
	movq	16(%rsi), %rsi
.LBB53_58:                              # %if.end216
	movq	(%rsi,%rdx,8), %rdx
	movb	%al, (%rdx,%rcx)
	jmp	.LBB53_21
.Lfunc_end53:
	.size	readCoeff4x4_CAVLC, .Lfunc_end53-readCoeff4x4_CAVLC
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI53_0:
	.quad	.LBB53_1
	.quad	.LBB53_6
	.quad	.LBB53_5
	.quad	.LBB53_2
	.quad	.LBB53_12
	.quad	.LBB53_8
	.quad	.LBB53_9
	.quad	.LBB53_7
	.quad	.LBB53_3
	.quad	.LBB53_11
	.quad	.LBB53_10
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function readCompCoeff4x4MB_CAVLC
	.type	readCompCoeff4x4MB_CAVLC,@function
readCompCoeff4x4MB_CAVLC:               # @readCompCoeff4x4MB_CAVLC
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
	movq	%r9, 96(%rsp)                   # 8-byte Spill
	movl	%r8d, 76(%rsp)                  # 4-byte Spill
	movl	%ecx, %r12d
	movq	%rdx, %r13
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movq	8(%rdi), %rax
	movl	$FIELD_SCAN, %ebp
	cmpl	$0, 848876(%rax)
	jne	.LBB54_2
# %bb.1:                                # %land.rhs
	cmpl	$0, 384(%r14)
	movl	$SNGL_SCAN, %eax
	cmoveq	%rax, %rbp
.LBB54_2:                               # %land.end
	movzwl	152(%r14), %ecx
	movl	%ecx, %eax
	andl	$-5, %eax
	movl	%esi, %r15d
	orl	$4, %ecx
	cmpl	$14, %ecx
	jne	.LBB54_4
# %bb.3:                                # %if.then
	xorl	%ecx, %ecx
	cmpl	$1, %esi
	setne	%cl
	leal	(%rcx,%rcx,4), %ecx
	addl	$5, %ecx
	testl	%esi, %esi
	movl	$2, %edx
	cmovnel	%ecx, %edx
	movl	%edx, 16(%rsp)                  # 4-byte Spill
	movq	(%r14), %rbx
	cmpl	$0, 92(%r14)
	je	.LBB54_29
.LBB54_6:                               # %for.cond126.preheader
	xorl	%ecx, %ecx
	cmpw	$10, %ax
	setne	%cl
	negl	%ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	movb	$1, %al
	xorl	%r8d, %r8d
	jmp	.LBB54_7
	.p2align	4, 0x90
.LBB54_57:                              # %for.inc216
                                        #   in Loop: Header=BB54_7 Depth=1
	movl	$2, %r8d
	testb	$1, 80(%rsp)                    # 1-byte Folded Reload
	je	.LBB54_58
.LBB54_7:                               # %for.cond130.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_8 Depth 2
                                        #       Child Loop BB54_11 Depth 3
                                        #       Child Loop BB54_16 Depth 3
                                        #       Child Loop BB54_21 Depth 3
                                        #       Child Loop BB54_26 Depth 3
	movl	%eax, 80(%rsp)                  # 4-byte Spill
	movq	%r8, %rax
	orq	$1, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	(,%r8,4), %rax
	leaq	4(,%r8,4), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	leaq	(,%rax,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movb	$1, %al
	xorl	%r12d, %r12d
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	jmp	.LBB54_8
	.p2align	4, 0x90
.LBB54_55:                              # %if.else202
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r8,8), %rax
	movw	$0, (%rax,%r12)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movw	$0, (%rax,%r12)
.LBB54_56:                              # %for.inc213
                                        #   in Loop: Header=BB54_8 Depth=2
	movl	$2, %r12d
	testb	$1, 56(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	movq	32(%rsp), %r8                   # 8-byte Reload
	je	.LBB54_57
.LBB54_8:                               # %for.body133
                                        #   Parent Loop BB54_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_11 Depth 3
                                        #       Child Loop BB54_16 Depth 3
                                        #       Child Loop BB54_21 Depth 3
                                        #       Child Loop BB54_26 Depth 3
	movl	%eax, 56(%rsp)                  # 4-byte Spill
	movl	%r12d, %eax
	shrl	%eax
	orl	%r8d, %eax
	movl	76(%rsp), %ecx                  # 4-byte Reload
	btl	%eax, %ecx
	jae	.LBB54_55
# %bb.9:                                # %for.cond142.preheader
                                        #   in Loop: Header=BB54_8 Depth=2
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movl	%r8d, %ecx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_14
# %bb.10:                               # %for.body157.preheader
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	%r12, %rcx
	orq	40(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%r12, %rdx
	shlq	$4, %rdx
	xorl	%esi, %esi
	movl	20(%rsp), %edi                  # 4-byte Reload
                                        # kill: def $edi killed $edi def $rdi
	jmp	.LBB54_11
	.p2align	4, 0x90
.LBB54_13:                              # %for.inc193
                                        #   in Loop: Header=BB54_11 Depth=3
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB54_14
.LBB54_11:                              # %for.body157
                                        #   Parent Loop BB54_7 Depth=1
                                        #     Parent Loop BB54_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rsi,4), %r8d
	testl	%r8d, %r8d
	je	.LBB54_13
# %bb.12:                               # %if.then162
                                        #   in Loop: Header=BB54_11 Depth=3
	movl	112(%rsp,%rsi,4), %r9d
	addl	%r9d, %edi
	incl	%edi
	movslq	%edi, %r9
	movzbl	(%rbp,%r9,2), %r10d
	movzbl	1(%rbp,%r9,2), %r9d
	movq	po2(,%rcx,8), %r11
	orq	%r11, 288(%r14,%r15,8)
	movq	1272(%rbx), %r11
	movq	(%r11,%r15,8), %r11
	addq	64(%rsp), %r11                  # 8-byte Folded Reload
	movq	(%r11,%r9,8), %r9
	addq	%rdx, %r9
	movl	%r8d, (%r9,%r10,4)
	jmp	.LBB54_13
	.p2align	4, 0x90
.LBB54_14:                              # %for.inc196
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	%r12, %r13
	orq	$1, %r13
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	%r13d, %edx
	movq	32(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_19
# %bb.15:                               # %for.body157.preheader.1
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	%r13, %rcx
	orq	40(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%r13, %rdx
	shlq	$4, %rdx
	xorl	%esi, %esi
	movl	20(%rsp), %edi                  # 4-byte Reload
                                        # kill: def $edi killed $edi def $rdi
	jmp	.LBB54_16
	.p2align	4, 0x90
.LBB54_18:                              # %for.inc193.1
                                        #   in Loop: Header=BB54_16 Depth=3
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB54_19
.LBB54_16:                              # %for.body157.1
                                        #   Parent Loop BB54_7 Depth=1
                                        #     Parent Loop BB54_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rsi,4), %r8d
	testl	%r8d, %r8d
	je	.LBB54_18
# %bb.17:                               # %if.then162.1
                                        #   in Loop: Header=BB54_16 Depth=3
	movl	112(%rsp,%rsi,4), %r9d
	addl	%r9d, %edi
	incl	%edi
	movslq	%edi, %r9
	movzbl	(%rbp,%r9,2), %r10d
	movzbl	1(%rbp,%r9,2), %r9d
	movq	po2(,%rcx,8), %r11
	orq	%r11, 288(%r14,%r15,8)
	movq	1272(%rbx), %r11
	movq	(%r11,%r15,8), %r11
	addq	64(%rsp), %r11                  # 8-byte Folded Reload
	movq	(%r11,%r9,8), %r9
	addq	%rdx, %r9
	movl	%r8d, (%r9,%r10,4)
	jmp	.LBB54_18
	.p2align	4, 0x90
.LBB54_19:                              # %for.inc196.1
                                        #   in Loop: Header=BB54_8 Depth=2
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	%r12d, %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_24
# %bb.20:                               # %for.body157.preheader.1375
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	%r12, %rcx
	orq	24(%rsp), %rcx                  # 8-byte Folded Reload
	shlq	$4, %r12
	xorl	%edx, %edx
	movl	20(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $esi killed $esi def $rsi
	jmp	.LBB54_21
	.p2align	4, 0x90
.LBB54_23:                              # %for.inc193.1397
                                        #   in Loop: Header=BB54_21 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB54_24
.LBB54_21:                              # %for.body157.1380
                                        #   Parent Loop BB54_7 Depth=1
                                        #     Parent Loop BB54_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB54_23
# %bb.22:                               # %if.then162.1393
                                        #   in Loop: Header=BB54_21 Depth=3
	movl	112(%rsp,%rdx,4), %r8d
	addl	%r8d, %esi
	incl	%esi
	movslq	%esi, %r8
	movzbl	(%rbp,%r8,2), %r9d
	movzbl	1(%rbp,%r8,2), %r8d
	movq	po2(,%rcx,8), %r10
	orq	%r10, 288(%r14,%r15,8)
	movq	1272(%rbx), %r10
	movq	24(%rsp), %r11                  # 8-byte Reload
	leaq	(,%r11,8), %r11
	addq	(%r10,%r15,8), %r11
	movq	(%r11,%r8,8), %r8
	addq	%r12, %r8
	movl	%edi, (%r8,%r9,4)
	jmp	.LBB54_23
	.p2align	4, 0x90
.LBB54_24:                              # %for.inc196.1401
                                        #   in Loop: Header=BB54_8 Depth=2
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movl	%r13d, %edx
	movq	48(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_56
# %bb.25:                               # %for.body157.preheader.1.1
                                        #   in Loop: Header=BB54_8 Depth=2
	movq	%r13, %rcx
	orq	24(%rsp), %rcx                  # 8-byte Folded Reload
	shlq	$4, %r13
	xorl	%edx, %edx
	movl	20(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $esi killed $esi def $rsi
	jmp	.LBB54_26
	.p2align	4, 0x90
.LBB54_28:                              # %for.inc193.1.1
                                        #   in Loop: Header=BB54_26 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB54_56
.LBB54_26:                              # %for.body157.1.1
                                        #   Parent Loop BB54_7 Depth=1
                                        #     Parent Loop BB54_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB54_28
# %bb.27:                               # %if.then162.1.1
                                        #   in Loop: Header=BB54_26 Depth=3
	movl	112(%rsp,%rdx,4), %r8d
	addl	%r8d, %esi
	incl	%esi
	movslq	%esi, %r8
	movzbl	(%rbp,%r8,2), %r9d
	movzbl	1(%rbp,%r8,2), %r8d
	movq	po2(,%rcx,8), %r10
	orq	%r10, 288(%r14,%r15,8)
	movq	1272(%rbx), %r10
	movq	24(%rsp), %r11                  # 8-byte Reload
	leaq	(,%r11,8), %r11
	addq	(%r10,%r15,8), %r11
	movq	(%r11,%r8,8), %r8
	addq	%r13, %r8
	movl	%edi, (%r8,%r9,4)
	jmp	.LBB54_28
.LBB54_4:                               # %if.else26
	xorl	%ecx, %ecx
	cmpl	$1, %esi
	setne	%cl
	leal	(%rcx,%rcx,4), %ecx
	addl	$3, %ecx
	testl	%esi, %esi
	cmovel	%esi, %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	(%r14), %rbx
	cmpl	$0, 92(%r14)
	jne	.LBB54_6
.LBB54_29:                              # %for.cond.preheader
	xorl	%ecx, %ecx
	cmpw	$10, %ax
	sete	%cl
	leaq	(,%rcx,2), %rax
	addq	%rbp, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movb	$1, %al
	xorl	%r11d, %r11d
	xorl	%ebp, %ebp
	jmp	.LBB54_30
	.p2align	4, 0x90
.LBB54_54:                              # %for.inc122
                                        #   in Loop: Header=BB54_30 Depth=1
	addq	$8, %rbp
	movl	$2, %r11d
	testb	$1, 92(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB54_58
.LBB54_30:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_31 Depth 2
                                        #       Child Loop BB54_34 Depth 3
                                        #       Child Loop BB54_39 Depth 3
                                        #       Child Loop BB54_44 Depth 3
                                        #       Child Loop BB54_49 Depth 3
	movl	%eax, 92(%rsp)                  # 4-byte Spill
	movq	%r11, %rax
	orq	$1, %rax
	movq	%rax, 248(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	shrq	$2, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, %rcx
	orq	$4, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	shrq	$2, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movb	$1, %cl
	xorl	%eax, %eax
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	%r11, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB54_31
	.p2align	4, 0x90
.LBB54_52:                              # %if.else108
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx,%r11,8), %rcx
	movw	$0, (%rcx,%rax)
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	(%rdx,%rcx,8), %rcx
	movw	$0, (%rcx,%rax)
.LBB54_53:                              # %for.inc119
                                        #   in Loop: Header=BB54_31 Depth=2
	addq	$8, 24(%rsp)                    # 8-byte Folded Spill
	movl	$2, %eax
	testb	$1, 20(%rsp)                    # 1-byte Folded Reload
	movl	$0, %ecx
	movq	48(%rsp), %rbp                  # 8-byte Reload
	je	.LBB54_54
.LBB54_31:                              # %for.body46
                                        #   Parent Loop BB54_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB54_34 Depth 3
                                        #       Child Loop BB54_39 Depth 3
                                        #       Child Loop BB54_44 Depth 3
                                        #       Child Loop BB54_49 Depth 3
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	movl	%eax, %ecx
	shrl	%ecx
	orl	%r11d, %ecx
	movl	76(%rsp), %edx                  # 4-byte Reload
	btl	%ecx, %edx
	jae	.LBB54_52
# %bb.32:                               # %for.cond51.preheader
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	24(%rsp), %rdx                  # 8-byte Reload
	shrq	$2, %rdx
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movq	80(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_37
# %bb.33:                               # %for.body71.preheader
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rbp), %rdx
	xorl	%esi, %esi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB54_34
	.p2align	4, 0x90
.LBB54_36:                              # %for.inc
                                        #   in Loop: Header=BB54_34 Depth=3
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB54_37
.LBB54_34:                              # %for.body71
                                        #   Parent Loop BB54_30 Depth=1
                                        #     Parent Loop BB54_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rsi,4), %r8d
	testl	%r8d, %r8d
	je	.LBB54_36
# %bb.35:                               # %if.then76
                                        #   in Loop: Header=BB54_34 Depth=3
	movl	112(%rsp,%rsi,4), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %r10
	movzbl	(%rdi,%r10), %r9d
	movzbl	1(%rdi,%r10), %r11d
	movq	po2(,%rdx,8), %rcx
	orq	%rcx, 288(%r14,%r15,8)
	movl	%r11d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	shll	$2, %r9d
	imull	(%r9,%rcx), %r8d
	movl	%r12d, %ecx
	shll	%cl, %r8d
	addq	%r10, %rdi
	addq	$2, %rdi
	addl	$8, %r8d
	sarl	$4, %r8d
	movq	1272(%rbx), %rcx
	movq	(%rcx,%r15,8), %rcx
	addl	%ebp, %r11d
	movq	24(%rsp), %r10                  # 8-byte Reload
	leaq	(,%r10,4), %r10
	addq	(%rcx,%r11,8), %r10
	movl	%r8d, (%r9,%r10)
	jmp	.LBB54_36
	.p2align	4, 0x90
.LBB54_37:                              # %for.inc102
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	24(%rsp), %rbp                  # 8-byte Reload
	orq	$4, %rbp
	movq	%rbp, %rdx
	shrq	$2, %rdx
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movq	80(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_42
# %bb.38:                               # %for.body71.preheader.1
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%rcx, %rdx
	xorl	%esi, %esi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB54_39
	.p2align	4, 0x90
.LBB54_41:                              # %for.inc.1
                                        #   in Loop: Header=BB54_39 Depth=3
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB54_42
.LBB54_39:                              # %for.body71.1
                                        #   Parent Loop BB54_30 Depth=1
                                        #     Parent Loop BB54_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rsi,4), %r8d
	testl	%r8d, %r8d
	je	.LBB54_41
# %bb.40:                               # %if.then76.1
                                        #   in Loop: Header=BB54_39 Depth=3
	movl	112(%rsp,%rsi,4), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %r10
	movzbl	(%rdi,%r10), %r9d
	movzbl	1(%rdi,%r10), %r11d
	movq	po2(,%rdx,8), %rcx
	orq	%rcx, 288(%r14,%r15,8)
	movl	%r11d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	shll	$2, %r9d
	imull	(%r9,%rcx), %r8d
	movl	%r12d, %ecx
	shll	%cl, %r8d
	addq	%r10, %rdi
	addq	$2, %rdi
	addl	$8, %r8d
	sarl	$4, %r8d
	movq	1272(%rbx), %rcx
	movq	(%rcx,%r15,8), %rcx
	addl	48(%rsp), %r11d                 # 4-byte Folded Reload
	leaq	(,%rbp,4), %r10
	addq	(%rcx,%r11,8), %r10
	movl	%r8d, (%r9,%r10)
	jmp	.LBB54_41
	.p2align	4, 0x90
.LBB54_42:                              # %for.inc102.1
                                        #   in Loop: Header=BB54_31 Depth=2
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	104(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB54_47
# %bb.43:                               # %for.body71.preheader.1436
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	64(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB54_44
	.p2align	4, 0x90
.LBB54_46:                              # %for.inc.1467
                                        #   in Loop: Header=BB54_44 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB54_47
.LBB54_44:                              # %for.body71.1441
                                        #   Parent Loop BB54_30 Depth=1
                                        #     Parent Loop BB54_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB54_46
# %bb.45:                               # %if.then76.1463
                                        #   in Loop: Header=BB54_44 Depth=3
	movl	112(%rsp,%rdx,4), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %r9
	movzbl	(%rsi,%r9), %r8d
	movzbl	1(%rsi,%r9), %r10d
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%r14,%r15,8)
	movl	%r10d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	shll	$2, %r8d
	imull	(%r8,%rcx), %edi
	movl	%r12d, %ecx
	shll	%cl, %edi
	addq	%r9, %rsi
	addq	$2, %rsi
	addl	$8, %edi
	sarl	$4, %edi
	movq	1272(%rbx), %rcx
	movq	(%rcx,%r15,8), %rcx
	addl	64(%rsp), %r10d                 # 4-byte Folded Reload
	movq	24(%rsp), %r9                   # 8-byte Reload
	leaq	(,%r9,4), %r9
	addq	(%rcx,%r10,8), %r9
	movl	%edi, (%r8,%r9)
	jmp	.LBB54_46
	.p2align	4, 0x90
.LBB54_47:                              # %for.inc102.1471
                                        #   in Loop: Header=BB54_31 Depth=2
	leaq	12(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	16(%rsp), %esi                  # 4-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	104(%rsp), %rcx                 # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	176(%rsp), %r8
	leaq	112(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movslq	12(%rsp), %rax
	testq	%rax, %rax
	movq	256(%rsp), %r11                 # 8-byte Reload
	jle	.LBB54_53
# %bb.48:                               # %for.body71.preheader.1.1
                                        #   in Loop: Header=BB54_31 Depth=2
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	64(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB54_49
	.p2align	4, 0x90
.LBB54_51:                              # %for.inc.1.1
                                        #   in Loop: Header=BB54_49 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB54_53
.LBB54_49:                              # %for.body71.1.1
                                        #   Parent Loop BB54_30 Depth=1
                                        #     Parent Loop BB54_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	176(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB54_51
# %bb.50:                               # %if.then76.1.1
                                        #   in Loop: Header=BB54_49 Depth=3
	movl	112(%rsp,%rdx,4), %ecx
	addl	%ecx, %ecx
	movslq	%ecx, %r9
	movzbl	(%rsi,%r9), %r8d
	movzbl	1(%rsi,%r9), %r10d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	po2(,%rcx,8), %rcx
	orq	%rcx, 288(%r14,%r15,8)
	movl	%r10d, %ecx
	shll	$4, %ecx
	addq	%r13, %rcx
	shll	$2, %r8d
	imull	(%r8,%rcx), %edi
	movl	%r12d, %ecx
	shll	%cl, %edi
	addq	%r9, %rsi
	addq	$2, %rsi
	addl	$8, %edi
	sarl	$4, %edi
	movq	1272(%rbx), %rcx
	movq	(%rcx,%r15,8), %rcx
	addl	64(%rsp), %r10d                 # 4-byte Folded Reload
	leaq	(,%rbp,4), %r9
	addq	(%rcx,%r10,8), %r9
	movl	%edi, (%r8,%r9)
	jmp	.LBB54_51
.LBB54_58:                              # %if.end219
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
.Lfunc_end54:
	.size	readCompCoeff4x4MB_CAVLC, .Lfunc_end54-readCompCoeff4x4MB_CAVLC
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function readCompCoeff8x8MB_CAVLC
	.type	readCompCoeff8x8MB_CAVLC,@function
readCompCoeff8x8MB_CAVLC:               # @readCompCoeff8x8MB_CAVLC
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
	movq	%r9, 120(%rsp)                  # 8-byte Spill
	movl	%r8d, 68(%rsp)                  # 4-byte Spill
	movl	%ecx, %ebp
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	8(%rdi), %rax
	movl	$FIELD_SCAN8x8, %r15d
	cmpl	$0, 848876(%rax)
	jne	.LBB55_2
# %bb.1:                                # %land.rhs
	cmpl	$0, 384(%r14)
	movl	$SNGL_SCAN8x8, %eax
	cmoveq	%rax, %r15
.LBB55_2:                               # %land.end
	movzwl	152(%r14), %eax
	movl	%eax, %ecx
	andl	$-5, %ecx
	xorl	%edx, %edx
	cmpw	$10, %cx
	setne	%dl
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movl	%esi, %ebx
	orl	$4, %eax
	cmpl	$14, %eax
	jne	.LBB55_4
# %bb.3:                                # %if.then
	xorl	%eax, %eax
	cmpl	$1, %esi
	setne	%al
	leal	(%rax,%rax,4), %eax
	addl	$5, %eax
	testl	%esi, %esi
	movl	$2, %ecx
	cmovnel	%eax, %ecx
	movl	%ecx, 28(%rsp)                  # 4-byte Spill
	jmp	.LBB55_5
.LBB55_4:                               # %if.else25
	xorl	%eax, %eax
	cmpl	$1, %esi
	setne	%al
	leal	(%rax,%rax,4), %eax
	addl	$3, %eax
	testl	%esi, %esi
	cmovel	%esi, %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
.LBB55_5:                               # %if.end36
	movq	(%r14), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	negl	24(%rsp)                        # 4-byte Folded Spill
	cmpl	$0, 92(%r14)
	je	.LBB55_29
# %bb.6:                                # %for.cond135.preheader.preheader
	movb	$1, %al
	xorl	%r8d, %r8d
	jmp	.LBB55_7
	.p2align	4, 0x90
.LBB55_57:                              # %for.inc231
                                        #   in Loop: Header=BB55_7 Depth=1
	movl	$2, %r8d
	testb	$1, 96(%rsp)                    # 1-byte Folded Reload
	je	.LBB55_58
.LBB55_7:                               # %for.cond135.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_8 Depth 2
                                        #       Child Loop BB55_11 Depth 3
                                        #       Child Loop BB55_16 Depth 3
                                        #       Child Loop BB55_21 Depth 3
                                        #       Child Loop BB55_26 Depth 3
	movl	%eax, 96(%rsp)                  # 4-byte Spill
	leaq	(,%r8,4), %rax
	movq	%r8, %rcx
	orq	$1, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movl	%r8d, %ecx
	orl	$1, %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	(,%rax,8), %r13
	movb	$1, %al
	xorl	%edx, %edx
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	jmp	.LBB55_8
	.p2align	4, 0x90
.LBB55_55:                              # %if.else217
                                        #   in Loop: Header=BB55_8 Depth=2
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r8,8), %rax
	movw	$0, (%rax,%rdx)
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movw	$0, (%rax,%rdx)
.LBB55_56:                              # %for.inc228
                                        #   in Loop: Header=BB55_8 Depth=2
	movl	$2, %edx
	testb	$1, 48(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	movq	88(%rsp), %r8                   # 8-byte Reload
	je	.LBB55_57
.LBB55_8:                               # %for.body138
                                        #   Parent Loop BB55_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_11 Depth 3
                                        #       Child Loop BB55_16 Depth 3
                                        #       Child Loop BB55_21 Depth 3
                                        #       Child Loop BB55_26 Depth 3
	movl	%eax, 48(%rsp)                  # 4-byte Spill
	movl	%edx, %eax
	shrl	%eax
	orl	%r8d, %eax
	movl	68(%rsp), %ecx                  # 4-byte Reload
	btl	%eax, %ecx
	jae	.LBB55_55
# %bb.9:                                # %for.cond147.preheader
                                        #   in Loop: Header=BB55_8 Depth=2
	movl	%edx, %ecx
	orl	72(%rsp), %ecx                  # 4-byte Folded Reload
	movl	$51, %r12d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r12d
	leaq	(,%rdx,4), %rbp
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r8d, %ecx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_14
# %bb.10:                               # %for.body163.lr.ph
                                        #   in Loop: Header=BB55_8 Depth=2
	leaq	(,%rbp,4), %rcx
	xorl	%edx, %edx
	movl	24(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $esi killed $esi def $rsi
	jmp	.LBB55_11
	.p2align	4, 0x90
.LBB55_13:                              # %for.inc208
                                        #   in Loop: Header=BB55_11 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB55_14
.LBB55_11:                              # %for.body163
                                        #   Parent Loop BB55_7 Depth=1
                                        #     Parent Loop BB55_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB55_13
# %bb.12:                               # %if.then168
                                        #   in Loop: Header=BB55_11 Depth=3
	movl	128(%rsp,%rdx,4), %r8d
	movl	%esi, %r9d
	orq	%r12, 288(%r14,%rbx,8)
	addl	%r8d, %r9d
	addl	%r8d, %esi
	incl	%esi
	leal	4(,%r9,4), %r8d
	movslq	%r8d, %r8
	movzbl	(%r15,%r8,2), %r9d
	movzbl	1(%r15,%r8,2), %r8d
	movq	1264(%r11), %r10
	movq	(%r10,%rbx,8), %r10
	addq	%r13, %r10
	movq	(%r10,%r8,8), %r8
	addq	%rcx, %r8
	movl	%edi, (%r8,%r9,4)
	jmp	.LBB55_13
	.p2align	4, 0x90
.LBB55_14:                              # %for.inc211
                                        #   in Loop: Header=BB55_8 Depth=2
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	orl	$1, %edx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_19
# %bb.15:                               # %for.body163.lr.ph.1
                                        #   in Loop: Header=BB55_8 Depth=2
	xorl	%ecx, %ecx
	movl	24(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB55_16
	.p2align	4, 0x90
.LBB55_18:                              # %for.inc208.1
                                        #   in Loop: Header=BB55_16 Depth=3
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB55_19
.LBB55_16:                              # %for.body163.1
                                        #   Parent Loop BB55_7 Depth=1
                                        #     Parent Loop BB55_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB55_18
# %bb.17:                               # %if.then168.1
                                        #   in Loop: Header=BB55_16 Depth=3
	movl	128(%rsp,%rcx,4), %edi
	movl	%edx, %r8d
	addl	%edi, %r8d
	orq	%r12, 288(%r14,%rbx,8)
	addl	%edi, %edx
	incl	%edx
	leal	5(,%r8,4), %edi
	movslq	%edi, %rdi
	movzbl	(%r15,%rdi,2), %r8d
	movzbl	1(%r15,%rdi,2), %edi
	movq	1264(%r11), %r9
	movq	(%r9,%rbx,8), %r9
	addq	%r13, %r9
	leaq	(,%rbp,4), %r10
	addq	(%r9,%rdi,8), %r10
	movl	%esi, (%r10,%r8,4)
	jmp	.LBB55_18
	.p2align	4, 0x90
.LBB55_19:                              # %for.inc211.1
                                        #   in Loop: Header=BB55_8 Depth=2
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	56(%rsp), %ecx                  # 4-byte Reload
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_24
# %bb.20:                               # %for.body163.lr.ph.1364
                                        #   in Loop: Header=BB55_8 Depth=2
	xorl	%ecx, %ecx
	movl	24(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB55_21
	.p2align	4, 0x90
.LBB55_23:                              # %for.inc208.1392
                                        #   in Loop: Header=BB55_21 Depth=3
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB55_24
.LBB55_21:                              # %for.body163.1369
                                        #   Parent Loop BB55_7 Depth=1
                                        #     Parent Loop BB55_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB55_23
# %bb.22:                               # %if.then168.1388
                                        #   in Loop: Header=BB55_21 Depth=3
	movl	128(%rsp,%rcx,4), %edi
	movl	%edx, %r8d
	addl	%edi, %r8d
	orq	%r12, 288(%r14,%rbx,8)
	addl	%edi, %edx
	incl	%edx
	leal	6(,%r8,4), %edi
	movslq	%edi, %rdi
	movzbl	(%r15,%rdi,2), %r8d
	movzbl	1(%r15,%rdi,2), %edi
	movq	1264(%r11), %r9
	movq	(%r9,%rbx,8), %r9
	addq	%r13, %r9
	leaq	(,%rbp,4), %r10
	addq	(%r9,%rdi,8), %r10
	movl	%esi, (%r10,%r8,4)
	jmp	.LBB55_23
	.p2align	4, 0x90
.LBB55_24:                              # %for.inc211.1394
                                        #   in Loop: Header=BB55_8 Depth=2
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movl	80(%rsp), %edx                  # 4-byte Reload
	movl	56(%rsp), %ecx                  # 4-byte Reload
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_56
# %bb.25:                               # %for.body163.lr.ph.1.1
                                        #   in Loop: Header=BB55_8 Depth=2
	xorl	%ecx, %ecx
	movl	24(%rsp), %edx                  # 4-byte Reload
                                        # kill: def $edx killed $edx def $rdx
	jmp	.LBB55_26
	.p2align	4, 0x90
.LBB55_28:                              # %for.inc208.1.1
                                        #   in Loop: Header=BB55_26 Depth=3
	incq	%rcx
	cmpq	%rcx, %rax
	je	.LBB55_56
.LBB55_26:                              # %for.body163.1.1
                                        #   Parent Loop BB55_7 Depth=1
                                        #     Parent Loop BB55_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rcx,4), %esi
	testl	%esi, %esi
	je	.LBB55_28
# %bb.27:                               # %if.then168.1.1
                                        #   in Loop: Header=BB55_26 Depth=3
	movl	128(%rsp,%rcx,4), %edi
	movl	%edx, %r8d
	addl	%edi, %r8d
	orq	%r12, 288(%r14,%rbx,8)
	addl	%edi, %edx
	incl	%edx
	leal	7(,%r8,4), %edi
	movslq	%edi, %rdi
	movzbl	(%r15,%rdi,2), %r8d
	movzbl	1(%r15,%rdi,2), %edi
	movq	1264(%r11), %r9
	movq	(%r9,%rbx,8), %r9
	addq	%r13, %r9
	leaq	(,%rbp,4), %r10
	addq	(%r9,%rdi,8), %r10
	movl	%esi, (%r10,%r8,4)
	jmp	.LBB55_28
.LBB55_29:                              # %for.body.preheader
	movb	$1, %al
	xorl	%r8d, %r8d
	jmp	.LBB55_30
	.p2align	4, 0x90
.LBB55_54:                              # %for.inc127
                                        #   in Loop: Header=BB55_30 Depth=1
	movl	$2, %r8d
	testb	$1, 116(%rsp)                   # 1-byte Folded Reload
	je	.LBB55_58
.LBB55_30:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB55_31 Depth 2
                                        #       Child Loop BB55_34 Depth 3
                                        #       Child Loop BB55_39 Depth 3
                                        #       Child Loop BB55_44 Depth 3
                                        #       Child Loop BB55_49 Depth 3
	movl	%eax, 116(%rsp)                 # 4-byte Spill
	leaq	(,%r8,4), %rax
	movq	%r8, %rcx
	orq	$1, %rcx
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	movl	%r8d, %ecx
	orl	$1, %ecx
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leaq	(,%rax,8), %r12
	movb	$1, %al
	xorl	%edx, %edx
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	jmp	.LBB55_31
	.p2align	4, 0x90
.LBB55_52:                              # %if.else113
                                        #   in Loop: Header=BB55_31 Depth=2
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx,%r8,8), %rax
	movw	$0, (%rax,%rdx)
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movw	$0, (%rax,%rdx)
.LBB55_53:                              # %for.inc124
                                        #   in Loop: Header=BB55_31 Depth=2
	movl	$2, %edx
	testb	$1, 88(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	movq	80(%rsp), %r8                   # 8-byte Reload
	je	.LBB55_54
.LBB55_31:                              # %for.body45
                                        #   Parent Loop BB55_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB55_34 Depth 3
                                        #       Child Loop BB55_39 Depth 3
                                        #       Child Loop BB55_44 Depth 3
                                        #       Child Loop BB55_49 Depth 3
	movl	%eax, 88(%rsp)                  # 4-byte Spill
	movl	%edx, %eax
	shrl	%eax
	orl	%r8d, %eax
	movl	68(%rsp), %ecx                  # 4-byte Reload
	btl	%eax, %ecx
	jae	.LBB55_52
# %bb.32:                               # %for.cond50.preheader
                                        #   in Loop: Header=BB55_31 Depth=2
	leaq	(,%rdx,4), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	%edx, %ecx
	orl	96(%rsp), %ecx                  # 4-byte Folded Reload
	movl	$51, %r13d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r13d
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	movl	%r8d, %ecx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r11                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_37
# %bb.33:                               # %for.body64.lr.ph
                                        #   in Loop: Header=BB55_31 Depth=2
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(,%rcx,4), %rdx
	xorl	%esi, %esi
	movl	24(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %edi
	jmp	.LBB55_34
	.p2align	4, 0x90
.LBB55_36:                              # %for.inc
                                        #   in Loop: Header=BB55_34 Depth=3
	incq	%rsi
	cmpq	%rsi, %rax
	je	.LBB55_37
.LBB55_34:                              # %for.body64
                                        #   Parent Loop BB55_30 Depth=1
                                        #     Parent Loop BB55_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rsi,4), %r8d
	testl	%r8d, %r8d
	je	.LBB55_36
# %bb.35:                               # %if.then69
                                        #   in Loop: Header=BB55_34 Depth=3
	movl	128(%rsp,%rsi,4), %ecx
	movl	%edi, %r9d
	orq	%r13, 288(%r14,%rbx,8)
	addl	%ecx, %r9d
	addl	%ecx, %edi
	incl	%edi
	leal	4(,%r9,4), %ecx
	movslq	%ecx, %rcx
	movzbl	(%r15,%rcx,2), %r9d
	movzbl	1(%r15,%rcx,2), %ecx
	movq	1264(%r11), %r10
	movq	(%r10,%rbx,8), %r10
	addq	%r12, %r10
	movq	(%r10,%rcx,8), %r10
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	shll	$5, %ecx
	addq	48(%rsp), %rcx                  # 8-byte Folded Reload
	shll	$2, %r9d
	imull	(%r9,%rcx), %r8d
	movl	%ebp, %ecx
	shll	%cl, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	addq	%rdx, %r10
	movl	%r8d, (%r9,%r10)
	jmp	.LBB55_36
	.p2align	4, 0x90
.LBB55_37:                              # %for.inc107
                                        #   in Loop: Header=BB55_31 Depth=2
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	%eax, %edx
	orl	$1, %edx
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movl	%edx, 104(%rsp)                 # 4-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_42
# %bb.38:                               # %for.body64.lr.ph.1
                                        #   in Loop: Header=BB55_31 Depth=2
	xorl	%edx, %edx
	movl	24(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	jmp	.LBB55_39
	.p2align	4, 0x90
.LBB55_41:                              # %for.inc.1
                                        #   in Loop: Header=BB55_39 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB55_42
.LBB55_39:                              # %for.body64.1
                                        #   Parent Loop BB55_30 Depth=1
                                        #     Parent Loop BB55_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB55_41
# %bb.40:                               # %if.then69.1
                                        #   in Loop: Header=BB55_39 Depth=3
	movl	128(%rsp,%rdx,4), %r8d
	movl	%esi, %ecx
	addl	%r8d, %ecx
	orq	%r13, 288(%r14,%rbx,8)
	leal	5(,%rcx,4), %ecx
	movslq	%ecx, %rcx
	movzbl	1(%r15,%rcx,2), %r9d
	movq	1264(%r10), %r10
	movq	(%r10,%rbx,8), %r10
	addq	%r12, %r10
	movq	40(%rsp), %r11                  # 8-byte Reload
	leaq	(,%r11,4), %r11
	addq	(%r10,%r9,8), %r11
	movzbl	(%r15,%rcx,2), %r10d
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shll	$5, %r9d
	addq	48(%rsp), %r9                   # 8-byte Folded Reload
	shll	$2, %r10d
	imull	(%r10,%r9), %edi
	movl	%ebp, %ecx
	shll	%cl, %edi
	addl	$32, %edi
	sarl	$6, %edi
	movl	%edi, (%r10,%r11)
	movq	32(%rsp), %r10                  # 8-byte Reload
	addl	%r8d, %esi
	incl	%esi
	jmp	.LBB55_41
	.p2align	4, 0x90
.LBB55_42:                              # %for.inc107.1
                                        #   in Loop: Header=BB55_31 Depth=2
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	72(%rsp), %ecx                  # 4-byte Reload
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_47
# %bb.43:                               # %for.body64.lr.ph.1427
                                        #   in Loop: Header=BB55_31 Depth=2
	xorl	%edx, %edx
	movl	24(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	jmp	.LBB55_44
	.p2align	4, 0x90
.LBB55_46:                              # %for.inc.1462
                                        #   in Loop: Header=BB55_44 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB55_47
.LBB55_44:                              # %for.body64.1432
                                        #   Parent Loop BB55_30 Depth=1
                                        #     Parent Loop BB55_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB55_46
# %bb.45:                               # %if.then69.1458
                                        #   in Loop: Header=BB55_44 Depth=3
	movl	128(%rsp,%rdx,4), %r8d
	movl	%esi, %ecx
	addl	%r8d, %ecx
	orq	%r13, 288(%r14,%rbx,8)
	leal	6(,%rcx,4), %ecx
	movslq	%ecx, %rcx
	movzbl	1(%r15,%rcx,2), %r9d
	movq	1264(%r10), %r10
	movq	(%r10,%rbx,8), %r10
	addq	%r12, %r10
	movq	40(%rsp), %r11                  # 8-byte Reload
	leaq	(,%r11,4), %r11
	addq	(%r10,%r9,8), %r11
	movzbl	(%r15,%rcx,2), %r10d
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shll	$5, %r9d
	addq	48(%rsp), %r9                   # 8-byte Folded Reload
	shll	$2, %r10d
	imull	(%r10,%r9), %edi
	movl	%ebp, %ecx
	shll	%cl, %edi
	addl	$32, %edi
	sarl	$6, %edi
	movl	%edi, (%r10,%r11)
	movq	32(%rsp), %r10                  # 8-byte Reload
	addl	%r8d, %esi
	incl	%esi
	jmp	.LBB55_46
	.p2align	4, 0x90
.LBB55_47:                              # %for.inc107.1464
                                        #   in Loop: Header=BB55_31 Depth=2
	leaq	20(%rsp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
	movl	104(%rsp), %edx                 # 4-byte Reload
	movl	72(%rsp), %ecx                  # 4-byte Reload
	leaq	192(%rsp), %r8
	leaq	128(%rsp), %r9
	callq	readCoeff4x4_CAVLC
	movq	32(%rsp), %r10                  # 8-byte Reload
	movslq	20(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB55_53
# %bb.48:                               # %for.body64.lr.ph.1.1
                                        #   in Loop: Header=BB55_31 Depth=2
	xorl	%edx, %edx
	movl	24(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	jmp	.LBB55_49
	.p2align	4, 0x90
.LBB55_51:                              # %for.inc.1.1
                                        #   in Loop: Header=BB55_49 Depth=3
	incq	%rdx
	cmpq	%rdx, %rax
	je	.LBB55_53
.LBB55_49:                              # %for.body64.1.1
                                        #   Parent Loop BB55_30 Depth=1
                                        #     Parent Loop BB55_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	192(%rsp,%rdx,4), %edi
	testl	%edi, %edi
	je	.LBB55_51
# %bb.50:                               # %if.then69.1.1
                                        #   in Loop: Header=BB55_49 Depth=3
	movl	128(%rsp,%rdx,4), %r8d
	movl	%esi, %ecx
	addl	%r8d, %ecx
	orq	%r13, 288(%r14,%rbx,8)
	leal	7(,%rcx,4), %ecx
	movslq	%ecx, %rcx
	movzbl	1(%r15,%rcx,2), %r9d
	movq	1264(%r10), %r10
	movq	(%r10,%rbx,8), %r10
	addq	%r12, %r10
	movq	40(%rsp), %r11                  # 8-byte Reload
	leaq	(,%r11,4), %r11
	addq	(%r10,%r9,8), %r11
	movzbl	(%r15,%rcx,2), %r10d
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	shll	$5, %r9d
	addq	48(%rsp), %r9                   # 8-byte Folded Reload
	shll	$2, %r10d
	imull	(%r10,%r9), %edi
	movl	%ebp, %ecx
	shll	%cl, %edi
	addl	$32, %edi
	sarl	$6, %edi
	movl	%edi, (%r10,%r11)
	movq	32(%rsp), %r10                  # 8-byte Reload
	addl	%r8d, %esi
	incl	%esi
	jmp	.LBB55_51
.LBB55_58:                              # %if.end234
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
.Lfunc_end55:
	.size	readCompCoeff8x8MB_CAVLC, .Lfunc_end55-readCompCoeff8x8MB_CAVLC
	.cfi_endproc
                                        # -- End function
	.type	QP_SCALE_CR,@object             # @QP_SCALE_CR
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
QP_SCALE_CR:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\035\036\037  !\"\"##$$%%%&&&''''"
	.size	QP_SCALE_CR, 52

	.type	SetB8Mode.p_v2b8,@object        # @SetB8Mode.p_v2b8
SetB8Mode.p_v2b8:
	.ascii	"\004\005\006\007\013"
	.size	SetB8Mode.p_v2b8, 5

	.type	SetB8Mode.p_v2pd,@object        # @SetB8Mode.p_v2pd
SetB8Mode.p_v2pd:
	.ascii	"\000\000\000\000\377"
	.size	SetB8Mode.p_v2pd, 5

	.type	SetB8Mode.b_v2b8,@object        # @SetB8Mode.b_v2b8
SetB8Mode.b_v2b8:
	.ascii	"\000\004\004\004\005\006\005\006\005\006\007\007\007\013"
	.size	SetB8Mode.b_v2b8, 14

	.type	SetB8Mode.b_v2pd,@object        # @SetB8Mode.b_v2pd
SetB8Mode.b_v2pd:
	.ascii	"\002\000\001\002\000\000\001\001\002\002\000\001\002\377"
	.size	SetB8Mode.b_v2pd, 14

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"writeCoeff4x4_CAVLC: Invalid block type"
	.size	.L.str.2, 40

	.type	po2,@object                     # @po2
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
po2:
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	64                              # 0x40
	.quad	128                             # 0x80
	.quad	256                             # 0x100
	.quad	512                             # 0x200
	.quad	1024                            # 0x400
	.quad	2048                            # 0x800
	.quad	4096                            # 0x1000
	.quad	8192                            # 0x2000
	.quad	16384                           # 0x4000
	.quad	32768                           # 0x8000
	.quad	65536                           # 0x10000
	.quad	131072                          # 0x20000
	.quad	262144                          # 0x40000
	.quad	524288                          # 0x80000
	.quad	1048576                         # 0x100000
	.quad	2097152                         # 0x200000
	.quad	4194304                         # 0x400000
	.quad	8388608                         # 0x800000
	.quad	16777216                        # 0x1000000
	.quad	33554432                        # 0x2000000
	.quad	67108864                        # 0x4000000
	.quad	134217728                       # 0x8000000
	.quad	268435456                       # 0x10000000
	.quad	536870912                       # 0x20000000
	.quad	1073741824                      # 0x40000000
	.quad	2147483648                      # 0x80000000
	.quad	4294967296                      # 0x100000000
	.quad	8589934592                      # 0x200000000
	.quad	17179869184                     # 0x400000000
	.quad	34359738368                     # 0x800000000
	.quad	68719476736                     # 0x1000000000
	.quad	137438953472                    # 0x2000000000
	.quad	274877906944                    # 0x4000000000
	.quad	549755813888                    # 0x8000000000
	.quad	1099511627776                   # 0x10000000000
	.quad	2199023255552                   # 0x20000000000
	.quad	4398046511104                   # 0x40000000000
	.quad	8796093022208                   # 0x80000000000
	.quad	17592186044416                  # 0x100000000000
	.quad	35184372088832                  # 0x200000000000
	.quad	70368744177664                  # 0x400000000000
	.quad	140737488355328                 # 0x800000000000
	.quad	281474976710656                 # 0x1000000000000
	.quad	562949953421312                 # 0x2000000000000
	.quad	1125899906842624                # 0x4000000000000
	.quad	2251799813685248                # 0x8000000000000
	.quad	4503599627370496                # 0x10000000000000
	.quad	9007199254740992                # 0x20000000000000
	.quad	18014398509481984               # 0x40000000000000
	.quad	36028797018963968               # 0x80000000000000
	.quad	72057594037927936               # 0x100000000000000
	.quad	144115188075855872              # 0x200000000000000
	.quad	288230376151711744              # 0x400000000000000
	.quad	576460752303423488              # 0x800000000000000
	.quad	1152921504606846976             # 0x1000000000000000
	.quad	2305843009213693952             # 0x2000000000000000
	.quad	4611686018427387904             # 0x4000000000000000
	.quad	-9223372036854775808            # 0x8000000000000000
	.size	po2, 512

	.type	interpret_mb_mode_B.offset2pdir16x16,@object # @interpret_mb_mode_B.offset2pdir16x16
	.p2align	4, 0x0
interpret_mb_mode_B.offset2pdir16x16:
	.short	0                               # 0x0
	.short	0                               # 0x0
	.short	1                               # 0x1
	.short	2                               # 0x2
	.zero	16
	.size	interpret_mb_mode_B.offset2pdir16x16, 24

	.type	interpret_mb_mode_B.offset2pdir16x8,@object # @interpret_mb_mode_B.offset2pdir16x8
	.p2align	4, 0x0
interpret_mb_mode_B.offset2pdir16x8:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.short	1                               # 0x1
	.short	1                               # 0x1
	.zero	4
	.short	0                               # 0x0
	.short	1                               # 0x1
	.zero	4
	.short	1                               # 0x1
	.short	0                               # 0x0
	.zero	4
	.short	0                               # 0x0
	.short	2                               # 0x2
	.zero	4
	.short	1                               # 0x1
	.short	2                               # 0x2
	.zero	4
	.short	2                               # 0x2
	.short	0                               # 0x0
	.zero	4
	.short	2                               # 0x2
	.short	1                               # 0x1
	.zero	4
	.short	2                               # 0x2
	.short	2                               # 0x2
	.zero	4
	.size	interpret_mb_mode_B.offset2pdir16x8, 88

	.type	interpret_mb_mode_B.offset2pdir8x16,@object # @interpret_mb_mode_B.offset2pdir8x16
	.p2align	4, 0x0
interpret_mb_mode_B.offset2pdir8x16:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.short	1                               # 0x1
	.short	1                               # 0x1
	.zero	4
	.short	0                               # 0x0
	.short	1                               # 0x1
	.zero	4
	.short	1                               # 0x1
	.short	0                               # 0x0
	.zero	4
	.short	0                               # 0x0
	.short	2                               # 0x2
	.zero	4
	.short	1                               # 0x1
	.short	2                               # 0x2
	.zero	4
	.short	2                               # 0x2
	.short	0                               # 0x0
	.zero	4
	.short	2                               # 0x2
	.short	1                               # 0x1
	.zero	4
	.short	2                               # 0x2
	.short	2                               # 0x2
	.size	interpret_mb_mode_B.offset2pdir8x16, 88

	.type	interpret_mb_mode_I.ICBPTAB,@object # @interpret_mb_mode_I.ICBPTAB
	.p2align	1, 0x0
interpret_mb_mode_I.ICBPTAB:
	.short	0                               # 0x0
	.short	16                              # 0x10
	.short	32                              # 0x20
	.short	15                              # 0xf
	.short	31                              # 0x1f
	.short	47                              # 0x2f
	.size	interpret_mb_mode_I.ICBPTAB, 12

	.type	.L__const.interpret_mb_mode_SI.ICBPTAB,@object # @__const.interpret_mb_mode_SI.ICBPTAB
	.p2align	4, 0x0
.L__const.interpret_mb_mode_SI.ICBPTAB:
	.long	0                               # 0x0
	.long	16                              # 0x10
	.long	32                              # 0x20
	.long	15                              # 0xf
	.long	31                              # 0x1f
	.long	47                              # 0x2f
	.size	.L__const.interpret_mb_mode_SI.ICBPTAB, 24

	.type	assignSE2partition,@object      # @assignSE2partition
	.p2align	4, 0x0
assignSE2partition:
	.zero	20
	.asciz	"\000\000\000\000\000\000\000\001\001\001\001\000\002\002\002\002\000\000\000"
	.size	assignSE2partition, 40

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"illegal chroma intra pred mode!\n"
	.size	.L.str.3, 33

	.type	BLOCK_STEP,@object              # @BLOCK_STEP
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
BLOCK_STEP:
	.zero	8
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	1                               # 0x1
	.size	BLOCK_STEP, 64

	.type	SNGL_SCAN,@object               # @SNGL_SCAN
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
SNGL_SCAN:
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.zero	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\001\003"
	.zero	2,2
	.ascii	"\003\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.zero	2,3
	.size	SNGL_SCAN, 32

	.type	FIELD_SCAN,@object              # @FIELD_SCAN
	.p2align	4, 0x0
FIELD_SCAN:
	.zero	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.zero	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.asciz	"\002"
	.ascii	"\002\001"
	.zero	2,2
	.ascii	"\002\003"
	.asciz	"\003"
	.ascii	"\003\001"
	.ascii	"\003\002"
	.zero	2,3
	.size	FIELD_SCAN, 32

	.type	cofuv_blk_x,@object             # @cofuv_blk_x
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
cofuv_blk_x:
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.ascii	"\000\001\000\001"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.ascii	"\000\001\000\001"
	.ascii	"\002\003\002\003"
	.size	cofuv_blk_x, 96

	.type	cofuv_blk_y,@object             # @cofuv_blk_y
	.p2align	4, 0x0
cofuv_blk_y:
	.ascii	"\000\000\001\001"
	.ascii	"\000\000\001\001"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\001\001"
	.ascii	"\002\002\003\003"
	.ascii	"\000\000\001\001"
	.ascii	"\002\002\003\003"
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.ascii	"\000\000\001\001"
	.ascii	"\000\000\001\001"
	.ascii	"\002\002\003\003"
	.ascii	"\002\002\003\003"
	.ascii	"\000\000\001\001"
	.ascii	"\000\000\001\001"
	.ascii	"\002\002\003\003"
	.ascii	"\002\002\003\003"
	.size	cofuv_blk_y, 96

	.type	subblk_offset_y,@object         # @subblk_offset_y
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

	.type	cbp_blk_chroma,@object          # @cbp_blk_chroma
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
cbp_blk_chroma:
	.ascii	"\020\021\022\023"
	.ascii	"\024\025\026\027"
	.ascii	"\030\031\032\033"
	.ascii	"\034\035\036\037"
	.ascii	" !\"#"
	.ascii	"$%&'"
	.ascii	"()*+"
	.ascii	",-./"
	.size	cbp_blk_chroma, 32

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"mb_qp_delta is out of range"
	.size	.L.str.5, 28

	.type	SNGL_SCAN8x8,@object            # @SNGL_SCAN8x8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
SNGL_SCAN8x8:
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.zero	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.zero	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.zero	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.zero	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.zero	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.zero	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.zero	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object           # @FIELD_SCAN8x8
	.p2align	4, 0x0
FIELD_SCAN8x8:
	.zero	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.zero	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.zero	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.zero	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.zero	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.zero	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.zero	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.zero	2,7
	.size	FIELD_SCAN8x8, 128

	.type	SCAN_YUV422,@object             # @SCAN_YUV422
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
SCAN_YUV422:
	.zero	2
	.ascii	"\000\001"
	.asciz	"\001"
	.ascii	"\000\002"
	.ascii	"\000\003"
	.zero	2,1
	.ascii	"\001\002"
	.ascii	"\001\003"
	.size	SCAN_YUV422, 16

	.type	readCoeff4x4_CAVLC.incVlc,@object # @readCoeff4x4_CAVLC.incVlc
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
readCoeff4x4_CAVLC.incVlc:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	6                               # 0x6
	.long	12                              # 0xc
	.long	24                              # 0x18
	.long	48                              # 0x30
	.long	32768                           # 0x8000
	.size	readCoeff4x4_CAVLC.incVlc, 28

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Unsupported slice type"
	.size	.Lstr, 23

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Unsupported entropy coding mode"
	.size	.Lstr.7, 32

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"Partition Mode is not supported"
	.size	.Lstr.8, 32

	.type	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420,@object # @switch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420:
	.quad	13480                           # 0x34a8
	.quad	13488                           # 0x34b0
	.quad	13488                           # 0x34b0
	.quad	13480                           # 0x34a8
	.quad	13480                           # 0x34a8
	.size	.Lswitch.table.read_CBP_and_coeffs_from_NAL_CAVLC_420, 40

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
