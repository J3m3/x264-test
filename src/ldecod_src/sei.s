	.text
	.file	"sei.c"
	.globl	InterpretSEIMessage             # -- Begin function InterpretSEIMessage
	.p2align	4, 0x90
	.type	InterpretSEIMessage,@function
InterpretSEIMessage:                    # @InterpretSEIMessage
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r15
	movl	$1, %ebp
	movabsq	$4294967296, %rbx               # imm = 0x100000000
	xorl	%r13d, %r13d
	jmp	.LBB0_1
.LBB0_20:                               # %interpret_scene_information.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rsi
	callq	ue_v@PLT
.LBB0_21:                               # %interpret_scene_information.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rdi
	callq	free@PLT
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_42:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	addl	%r14d, %ebp
	movslq	%ebp, %rax
	cmpb	(%r15,%rax), %r13b
	jo	.LBB0_43
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_25 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	movslq	%ebp, %rsi
	leal	1(%rsi), %r14d
	leaq	(%r15,%rsi), %rdx
	leal	2(%rsi), %r8d
	shlq	$32, %rsi
	movl	$-255, %eax
	.p2align	4, 0x90
.LBB0_2:                                # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %edi
	addq	%rbx, %rsi
	movzbl	(%rdx), %ecx
	incl	%r14d
	incq	%rdx
	addl	$255, %eax
	leal	1(%rdi), %r8d
	cmpl	$255, %ecx
	je	.LBB0_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	sarq	$32, %rsi
	movzbl	(%r15,%rsi), %esi
	xorl	%edx, %edx
	cmpb	$-1, %sil
	jne	.LBB0_6
# %bb.4:                                # %while.body14.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%edi, %r8
	addq	%r15, %r8
	xorl	%edx, %edx
	movl	%edi, %r14d
	.p2align	4, 0x90
.LBB0_5:                                # %while.body14
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$255, %edx
	movzbl	(%r8), %esi
	incq	%r8
	incl	%r14d
	cmpb	$-1, %sil
	je	.LBB0_5
.LBB0_6:                                # %while.end19
                                        #   in Loop: Header=BB0_1 Depth=1
	addl	%eax, %ecx
	movzbl	%sil, %ebp
	addl	%edx, %ebp
	cmpl	$45, %ecx
	ja	.LBB0_42
# %bb.7:                                # %while.end19
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%ecx, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_9:                                # %sw.bb
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	interpret_buffering_period_info
	jmp	.LBB0_42
.LBB0_38:                               # %sw.bb82
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_stereo_video_info_info
	jmp	.LBB0_42
.LBB0_41:                               # %sw.bb91
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_frame_packing_arrangement_info
	jmp	.LBB0_42
.LBB0_32:                               # %sw.bb67
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	xorl	%r13d, %r13d
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.44, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	$.L.str.45, %edi
	jmp	.LBB0_29
.LBB0_26:                               # %sw.bb55
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_subsequence_characteristics_info
	jmp	.LBB0_42
.LBB0_28:                               # %sw.bb64
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	xorl	%r13d, %r13d
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.43, %edi
	jmp	.LBB0_29
.LBB0_40:                               # %sw.bb88
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_post_filter_hints_info
	jmp	.LBB0_42
.LBB0_11:                               # %sw.bb25
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_pan_scan_rect_info
	jmp	.LBB0_42
.LBB0_16:                               # %sw.bb40
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	callq	interpret_dec_ref_pic_marking_repetition_info
	jmp	.LBB0_42
.LBB0_27:                               # %sw.bb58
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	xorl	%r13d, %r13d
	movl	$0, 8(%rax)
	movl	$.L.str.42, %edi
	movq	%rax, %rsi
	jmp	.LBB0_30
.LBB0_10:                               # %sw.bb22
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	interpret_picture_timing_info
	jmp	.LBB0_42
.LBB0_17:                               # %sw.bb43
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	interpret_spare_pic
	jmp	.LBB0_42
.LBB0_18:                               # %sw.bb46
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.24, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	$.L.str.25, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	cmpl	$4, %eax
	jl	.LBB0_21
# %bb.19:                               # %if.then.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.25, %edi
	jmp	.LBB0_20
.LBB0_33:                               # %sw.bb70
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	xorl	%r13d, %r13d
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.44, %edi
.LBB0_29:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rsi
.LBB0_30:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	ue_v@PLT
.LBB0_31:                               # %sw.epilog
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r12, %rdi
	callq	free@PLT
	jmp	.LBB0_42
.LBB0_34:                               # %sw.bb73
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r12
	leaq	(%r15,%r12), %rdi
	movl	%ebp, %esi
	callq	interpret_motion_constrained_slice_group_set_info
	jmp	.LBB0_35
.LBB0_12:                               # %sw.bb28
                                        #   in Loop: Header=BB0_1 Depth=1
	testl	%ebp, %ebp
	je	.LBB0_42
# %bb.13:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rax
	addq	%r15, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_14:                               # %while.body.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ecx, %edx
	xorl	%esi, %esi
	cmpb	$-1, (%rax,%rdx)
	sete	%sil
	addl	%esi, %ecx
	cmpl	%ebp, %ecx
	jb	.LBB0_14
	jmp	.LBB0_42
.LBB0_15:                               # %sw.bb37
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.34, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	movl	%eax, %r13d
	movl	$.L.str.35, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	$.L.str.36, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	$.L.str.37, %esi
	movl	$2, %edi
	movq	%r12, %rdx
	callq	u_v@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	$1, 849260(%rax)
	movl	%r13d, 849268(%rax)
	xorl	%r13d, %r13d
	jmp	.LBB0_31
.LBB0_23:                               # %sw.bb52
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.14, %edi
	movq	%r12, %rsi
	callq	ue_v@PLT
	testl	%eax, %eax
	js	.LBB0_21
# %bb.24:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%eax, %r13d
	incl	%r13d
	.p2align	4, 0x90
.LBB0_25:                               # %for.body.i
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.15, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	$.L.str.16, %esi
	movl	$16, %edi
	movq	%r12, %rdx
	callq	u_v@PLT
	movl	$.L.str.17, %esi
	movl	$16, %edi
	movq	%r12, %rdx
	callq	u_v@PLT
	decl	%r13d
	jne	.LBB0_25
	jmp	.LBB0_21
.LBB0_22:                               # %sw.bb49
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	callq	interpret_subsequence_info
	jmp	.LBB0_42
.LBB0_36:                               # %sw.bb79
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r13
	addq	%r15, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r12
	movl	%ebp, 12(%rax)
	movq	%r13, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.67, %edi
	movq	%rax, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB0_21
# %bb.37:                               # %if.then.i267
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.68, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	$.L.str.69, %edi
	movq	%r12, %rsi
	callq	u_1@PLT
	movl	$.L.str.70, %edi
	jmp	.LBB0_20
.LBB0_8:                                # %while.end19.sw.bb76_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %r12
.LBB0_35:                               # %sw.bb76
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	%r15, %r12
	movq	%r12, %rdi
	movl	%ebp, %esi
	callq	interpret_film_grain_characteristics_info
	jmp	.LBB0_42
.LBB0_39:                               # %sw.bb85
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	%r14d, %rdi
	addq	%r15, %rdi
	movl	%ebp, %esi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	interpret_tone_mapping
	jmp	.LBB0_42
.LBB0_43:                               # %do.end
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
.Lfunc_end0:
	.size	InterpretSEIMessage, .Lfunc_end0-InterpretSEIMessage
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_26
	.quad	.LBB0_27
	.quad	.LBB0_42
	.quad	.LBB0_28
	.quad	.LBB0_32
	.quad	.LBB0_33
	.quad	.LBB0_34
	.quad	.LBB0_8
	.quad	.LBB0_36
	.quad	.LBB0_38
	.quad	.LBB0_40
	.quad	.LBB0_39
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_42
	.quad	.LBB0_41
                                        # -- End function
	.text
	.globl	interpret_buffering_period_info # -- Begin function interpret_buffering_period_info
	.p2align	4, 0x90
	.type	interpret_buffering_period_info,@function
interpret_buffering_period_info:        # @interpret_buffering_period_info
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.77, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	cltq
	imulq	$4128, %rax, %r12               # imm = 0x1020
	leaq	(%r15,%r12), %r14
	addq	$24, %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	activate_sps@PLT
	cmpl	$0, 3192(%r15,%r12)
	je	.LBB1_9
# %bb.1:                                # %if.then
	cmpl	$0, 3248(%r14)
	je	.LBB1_5
# %bb.2:                                # %for.cond.preheader
	cmpl	$-1, 3252(%r14)
	je	.LBB1_5
# %bb.3:                                # %for.body.lr.ph
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	3648(%r14), %edi
	incl	%edi
	movl	$.L.str.78, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	3648(%r14), %edi
	incl	%edi
	movl	$.L.str.79, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	incl	%ebp
	movl	3252(%r14), %eax
	incl	%eax
	cmpl	%eax, %ebp
	jb	.LBB1_4
.LBB1_5:                                # %if.end
	cmpl	$0, 3664(%r14)
	je	.LBB1_9
# %bb.6:                                # %for.cond17.preheader
	cmpl	$-1, 3668(%r14)
	je	.LBB1_9
# %bb.7:                                # %for.body22.lr.ph
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_8:                                # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	movl	4064(%r14), %edi
	incl	%edi
	movl	$.L.str.78, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	4064(%r14), %edi
	incl	%edi
	movl	$.L.str.79, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	incl	%ebp
	movl	3668(%r14), %eax
	incl	%eax
	cmpl	%eax, %ebp
	jb	.LBB1_8
.LBB1_9:                                # %if.end37
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end1:
	.size	interpret_buffering_period_info, .Lfunc_end1-interpret_buffering_period_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_picture_timing_info   # -- Begin function interpret_picture_timing_info
	.p2align	4, 0x90
	.type	interpret_picture_timing_info,@function
interpret_picture_timing_info:          # @interpret_picture_timing_info
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
	movq	16(%rdx), %r15
	testq	%r15, %r15
	je	.LBB2_24
# %bb.1:                                # %if.end
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	cmpl	$0, 3168(%r15)
	je	.LBB2_23
# %bb.2:                                # %land.rhs
	cmpl	$0, 3248(%r15)
	je	.LBB2_3
# %bb.25:                               # %if.end32
	leaq	3652(%r15), %rcx
	leaq	3656(%r15), %rax
	jmp	.LBB2_5
.LBB2_3:                                # %lor.rhs
	cmpl	$0, 3664(%r15)
	je	.LBB2_6
# %bb.4:                                # %lor.lhs.false
	leaq	4072(%r15), %rax
	leaq	4068(%r15), %rcx
.LBB2_5:                                # %if.end43
	movl	(%rcx), %edi
	incl	%edi
	movl	(%rax), %ebp
	incl	%ebp
	movl	$.L.str.81, %esi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.82, %esi
	movl	%ebp, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	cmpl	$0, 3168(%r15)
	je	.LBB2_23
.LBB2_6:                                # %if.else47
	cmpl	$0, 4084(%r15)
	je	.LBB2_23
# %bb.7:                                # %if.then51
	movl	$.L.str.83, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	cmpl	$9, %eax
	jae	.LBB2_8
# %bb.9:                                # %switch.lookup
	movl	%eax, %eax
	movl	.Lswitch.table.interpret_picture_timing_info(,%rax,4), %r14d
	leaq	4076(%r15), %r12
	leaq	3660(%r15), %r13
	jmp	.LBB2_10
.LBB2_19:                               #   in Loop: Header=BB2_10 Depth=1
	movl	$24, %edi
.LBB2_21:                               # %if.then107
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.99, %esi
	movq	%rbx, %rdx
	callq	i_v@PLT
.LBB2_22:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	decl	%r14d
	je	.LBB2_23
.LBB2_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.85, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB2_22
# %bb.11:                               # %if.then58
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.86, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.87, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.88, %esi
	movl	$5, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.89, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, %ebp
	movl	$.L.str.90, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.91, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.92, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	testl	%ebp, %ebp
	je	.LBB2_13
# %bb.12:                               # %if.then67
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.93, %esi
	movl	$6, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.94, %esi
	movl	$6, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB2_16:                               # %if.end87.sink.split
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.95, %esi
	movl	$5, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB2_17:                               # %if.end87
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpl	$0, 3664(%r15)
	movq	%r12, %rax
	jne	.LBB2_20
# %bb.18:                               # %if.else95
                                        #   in Loop: Header=BB2_10 Depth=1
	cmpl	$0, 3248(%r15)
	movq	%r13, %rax
	je	.LBB2_19
.LBB2_20:                               # %if.end105
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	(%rax), %edi
	testl	%edi, %edi
	jne	.LBB2_21
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_13:                               # %if.else71
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.96, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB2_17
# %bb.14:                               # %if.then74
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.93, %esi
	movl	$6, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.97, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB2_17
# %bb.15:                               # %if.then78
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	$.L.str.94, %esi
	movl	$6, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.98, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB2_16
	jmp	.LBB2_17
.LBB2_8:                                # %sw.epilog
	movl	$.L.str.84, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB2_23:                               # %if.end112
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.LBB2_24:                               # %if.then
	.cfi_def_cfa_offset 64
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.80, %edi
	movl	$52, %esi
	movl	$1, %edx
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
	jmp	fwrite@PLT                      # TAILCALL
.Lfunc_end2:
	.size	interpret_picture_timing_info, .Lfunc_end2-interpret_picture_timing_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_pan_scan_rect_info    # -- Begin function interpret_pan_scan_rect_info
	.p2align	4, 0x90
	.type	interpret_pan_scan_rect_info,@function
interpret_pan_scan_rect_info:           # @interpret_pan_scan_rect_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.26, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.27, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB3_5
# %bb.1:                                # %if.then
	movl	$.L.str.28, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	testl	%eax, %eax
	js	.LBB3_4
# %bb.2:                                # %for.body.preheader
	movl	%eax, %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.29, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movl	$.L.str.30, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movl	$.L.str.31, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movl	$.L.str.32, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	decl	%ebp
	jne	.LBB3_3
.LBB3_4:                                # %for.end
	movl	$.L.str.33, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB3_5:                                # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end3:
	.size	interpret_pan_scan_rect_info, .Lfunc_end3-interpret_pan_scan_rect_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_filler_payload_info   # -- Begin function interpret_filler_payload_info
	.p2align	4, 0x90
	.type	interpret_filler_payload_info,@function
interpret_filler_payload_info:          # @interpret_filler_payload_info
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB4_3
# %bb.1:                                # %while.body.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	xorl	%edx, %edx
	cmpb	$-1, (%rdi,%rcx)
	sete	%dl
	addl	%edx, %eax
	cmpl	%esi, %eax
	jl	.LBB4_2
.LBB4_3:                                # %while.end
	retq
.Lfunc_end4:
	.size	interpret_filler_payload_info, .Lfunc_end4-interpret_filler_payload_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_user_data_registered_itu_t_t35_info # -- Begin function interpret_user_data_registered_itu_t_t35_info
	.p2align	4, 0x90
	.type	interpret_user_data_registered_itu_t_t35_info,@function
interpret_user_data_registered_itu_t_t35_info: # @interpret_user_data_registered_itu_t_t35_info
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end5:
	.size	interpret_user_data_registered_itu_t_t35_info, .Lfunc_end5-interpret_user_data_registered_itu_t_t35_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_user_data_unregistered_info # -- Begin function interpret_user_data_unregistered_info
	.p2align	4, 0x90
	.type	interpret_user_data_unregistered_info,@function
interpret_user_data_unregistered_info:  # @interpret_user_data_unregistered_info
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end6:
	.size	interpret_user_data_unregistered_info, .Lfunc_end6-interpret_user_data_unregistered_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_recovery_point_info   # -- Begin function interpret_recovery_point_info
	.p2align	4, 0x90
	.type	interpret_recovery_point_info,@function
interpret_recovery_point_info:          # @interpret_recovery_point_info
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
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r15
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	movl	%ebp, 12(%rax)
	movq	%r15, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.34, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movl	$.L.str.35, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	$.L.str.36, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movl	$.L.str.37, %esi
	movl	$2, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	$1, 849260(%rbx)
	movl	%ebp, 849268(%rbx)
	movq	%r14, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end7:
	.size	interpret_recovery_point_info, .Lfunc_end7-interpret_recovery_point_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_dec_ref_pic_marking_repetition_info # -- Begin function interpret_dec_ref_pic_marking_repetition_info
	.p2align	4, 0x90
	.type	interpret_dec_ref_pic_marking_repetition_info,@function
interpret_dec_ref_pic_marking_repetition_info: # @interpret_dec_ref_pic_marking_repetition_info
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
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %r12
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%ebp, 12(%rax)
	movq	%r12, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.38, %edi
	movq	%r15, %rsi
	callq	u_1@PLT
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	$.L.str.39, %edi
	movq	%r15, %rsi
	callq	ue_v@PLT
	movq	16(%r14), %rax
	cmpl	$0, 3136(%rax)
	jne	.LBB8_3
# %bb.1:                                # %if.then
	movl	$.L.str.40, %edi
	movq	%r15, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB8_3
# %bb.2:                                # %if.then5
	movl	$.L.str.41, %edi
	movq	%r15, %rsi
	callq	u_1@PLT
.LBB8_3:                                # %if.end7
	movq	248(%rbx), %r13
	movl	48(%rbx), %ebp
	movl	236(%rbx), %r12d
	movsd	240(%rbx), %xmm0                # xmm0 = mem[0],zero
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movl	12(%rsp), %eax                  # 4-byte Reload
	movl	%eax, 48(%rbx)
	movq	$0, 248(%rbx)
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	dec_ref_pic_marking@PLT
	movq	248(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_6
	.p2align	4, 0x90
.LBB8_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rdi), %rax
	movq	%rax, 248(%rbx)
	callq	free@PLT
	movq	248(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_4
.LBB8_6:                                # %while.end
	movq	%r13, 248(%rbx)
	movl	%ebp, 48(%rbx)
	movl	%r12d, 236(%rbx)
	movl	%r12d, 849024(%r14)
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	movlps	%xmm0, 240(%rbx)
	movq	%r15, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end8:
	.size	interpret_dec_ref_pic_marking_repetition_info, .Lfunc_end8-interpret_dec_ref_pic_marking_repetition_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_spare_pic             # -- Begin function interpret_spare_pic
	.p2align	4, 0x90
	.type	interpret_spare_pic,@function
interpret_spare_pic:                    # @interpret_spare_pic
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
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r15
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	movl	%ebp, 12(%rax)
	movq	%r15, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str, %edi
	movq	%rax, %rsi
	callq	ue_v@PLT
	movl	$.L.str.1, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, %r15d
	leal	1(%r15), %ebp
	movl	848780(%rbx), %ecx
	movl	848784(%rbx), %edx
	sarl	$4, %edx
	sarl	$4, %ecx
	leaq	16(%rsp), %rdi
	movl	%ebp, %esi
	callq	get_mem3D@PLT
	testl	%r15d, %r15d
	js	.LBB9_61
# %bb.1:                                # %for.body.lr.ph
	movl	%ebp, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_60:                               # %for.inc220
                                        #   in Loop: Header=BB9_2 Depth=1
	incq	%r12
	cmpq	48(%rsp), %r12                  # 8-byte Folded Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	je	.LBB9_61
.LBB9_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #       Child Loop BB9_9 Depth 3
                                        #     Child Loop BB9_21 Depth 2
                                        #       Child Loop BB9_23 Depth 3
                                        #     Child Loop BB9_14 Depth 2
                                        #       Child Loop BB9_16 Depth 3
	movl	$.L.str.2, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	$.L.str.3, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	testl	%eax, %eax
	je	.LBB9_12
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	cmpl	$2, %eax
	je	.LBB9_19
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB9_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB9_62
# %bb.5:                                # %for.cond34.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	848784(%rbx), %ecx
	cmpl	$16, %ecx
	jl	.LBB9_60
# %bb.6:                                # %for.cond39.preheader.lr.ph
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	848780(%rbx), %eax
	xorl	%r14d, %r14d
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_11:                               # %for.inc54
                                        #   in Loop: Header=BB9_7 Depth=2
	incq	%r14
	movl	%ecx, %edx
	sarl	$4, %edx
	movslq	%edx, %rdx
	cmpq	%rdx, %r14
	jge	.LBB9_60
.LBB9_7:                                # %for.cond39.preheader
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_9 Depth 3
	cmpl	$16, %eax
	jl	.LBB9_11
# %bb.8:                                # %for.body43.preheader
                                        #   in Loop: Header=BB9_7 Depth=2
	xorl	%r15d, %r15d
	movq	24(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB9_9:                                # %for.body43
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$.L.str.4, %edi
	movq	%r13, %rsi
	callq	u_1@PLT
	movq	16(%rsp), %rcx
	movq	(%rcx,%r12,8), %rcx
	movq	(%rcx,%r14,8), %rcx
	movb	%al, (%rcx,%r15)
	incq	%r15
	movl	848780(%rbx), %eax
	movl	%eax, %ecx
	sarl	$4, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %r15
	jl	.LBB9_9
# %bb.10:                               # %for.inc54.loopexit
                                        #   in Loop: Header=BB9_7 Depth=2
	movl	848784(%rbx), %ecx
	jmp	.LBB9_11
	.p2align	4, 0x90
.LBB9_19:                               # %sw.bb57
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	848784(%rbx), %edx
	cmpl	$16, %edx
	jl	.LBB9_60
# %bb.20:                               # %for.cond71.preheader.lr.ph
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	%edx, %edi
	shrl	$4, %edi
	decl	%edi
	shrl	%edi
	movl	848780(%rbx), %ecx
	movl	%ecx, %eax
	sarl	$4, %eax
	movl	%eax, %esi
	decl	%esi
	shrl	$31, %esi
	leal	(%rax,%rsi), %r13d
	decl	%r13d
	sarl	%r13d
	movl	$-1, %eax
	xorl	%ebp, %ebp
	movl	$1, %r14d
	movl	%edi, 8(%rsp)                   # 4-byte Spill
	movl	%r13d, %r8d
	xorl	%r9d, %r9d
	movl	%r13d, 12(%rsp)                 # 4-byte Spill
	movl	%r13d, %r10d
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	jmp	.LBB9_21
	.p2align	4, 0x90
.LBB9_58:                               # %for.inc216.loopexit
                                        #   in Loop: Header=BB9_21 Depth=2
	movl	848784(%rbx), %edx
	movl	36(%rsp), %r9d                  # 4-byte Reload
.LBB9_59:                               # %for.inc216
                                        #   in Loop: Header=BB9_21 Depth=2
	incl	%r9d
	movl	%edx, %esi
	sarl	$4, %esi
	cmpl	%esi, %r9d
	jge	.LBB9_60
.LBB9_21:                               # %for.cond71.preheader
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_23 Depth 3
	cmpl	$16, %ecx
	jl	.LBB9_59
# %bb.22:                               # %for.body76.preheader
                                        #   in Loop: Header=BB9_21 Depth=2
	movl	%r9d, 36(%rsp)                  # 4-byte Spill
	xorl	%esi, %esi
	jmp	.LBB9_23
.LBB9_29:                               # %if.then113
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	4(%rsp), %ecx                   # 4-byte Reload
	incl	%ecx
	movl	$1, %ebp
	xorl	%r10d, %r10d
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movl	%ecx, %edi
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB9_57:                               # %for.inc213
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%eax
	incl	%esi
	movl	848780(%rbx), %ecx
	movl	%ecx, %edx
	sarl	$4, %edx
	cmpl	%edx, %esi
	jge	.LBB9_58
.LBB9_23:                               # %for.body76
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%eax, %eax
	jns	.LBB9_25
# %bb.24:                               # %if.then79
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	%edi, 44(%rsp)                  # 4-byte Spill
	movl	$.L.str.5, %edi
	movl	%esi, %r13d
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r12, %r15
	movq	%rbx, %r12
	movl	%r8d, %ebx
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	movl	%r10d, %ebp
	callq	ue_v@PLT
	movl	%r13d, %esi
	movl	%ebp, %r10d
	movl	40(%rsp), %ebp                  # 4-byte Reload
	movl	44(%rsp), %edi                  # 4-byte Reload
	movl	%ebx, %r8d
	movq	%r12, %rbx
	movq	%r15, %r12
.LBB9_25:                               # %if.end81
                                        #   in Loop: Header=BB9_23 Depth=3
	testl	%eax, %eax
	movq	16(%rsp), %rcx
	movq	(%rcx,%r12,8), %rcx
	movslq	%edi, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	%r10d, %rdx
	setle	(%rcx,%rdx)
	movl	%ebp, %ecx
	notl	%ecx
	orl	%r14d, %ecx
	jne	.LBB9_33
# %bb.26:                               # %if.then105
                                        #   in Loop: Header=BB9_23 Depth=3
	cmpl	%r8d, %r10d
	jle	.LBB9_28
# %bb.27:                               # %if.then108
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%r10d
	jmp	.LBB9_31
	.p2align	4, 0x90
.LBB9_33:                               # %if.else125
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	%ebp, %ecx
	xorl	$1, %ecx
	orl	%r14d, %ecx
	jne	.LBB9_42
# %bb.34:                               # %if.then131
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	12(%rsp), %edx                  # 4-byte Reload
	cmpl	%edx, %r10d
	jge	.LBB9_36
# %bb.35:                               # %if.then134
                                        #   in Loop: Header=BB9_23 Depth=3
	incl	%r10d
.LBB9_40:                               #   in Loop: Header=BB9_23 Depth=3
	xorl	%r14d, %r14d
	movl	$1, %ebp
	jmp	.LBB9_57
	.p2align	4, 0x90
.LBB9_28:                               # %if.else110
                                        #   in Loop: Header=BB9_23 Depth=3
	testl	%r10d, %r10d
	je	.LBB9_29
# %bb.30:                               # %if.else116
                                        #   in Loop: Header=BB9_23 Depth=3
	cmpl	%r8d, %r10d
	jne	.LBB9_31
# %bb.32:                               # %if.then119
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%r8d
	movl	$1, %r14d
	xorl	%ebp, %ebp
	movl	%r8d, %r10d
	jmp	.LBB9_57
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_23 Depth=3
	xorl	%r14d, %r14d
	movl	$-1, %ebp
	jmp	.LBB9_57
	.p2align	4, 0x90
.LBB9_42:                               # %if.else154
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	%r14d, %ecx
	notl	%ecx
	orl	%ebp, %ecx
	jne	.LBB9_49
# %bb.43:                               # %if.then160
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	8(%rsp), %ecx                   # 4-byte Reload
	cmpl	%ecx, %edi
	jle	.LBB9_45
# %bb.44:                               # %if.then163
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%edi
	jmp	.LBB9_48
.LBB9_36:                               # %if.else136
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	848780(%rbx), %ecx
	sarl	$4, %ecx
	decl	%ecx
	cmpl	%ecx, %r10d
	jne	.LBB9_39
# %bb.37:                               # %if.then142
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	8(%rsp), %ecx                   # 4-byte Reload
	jmp	.LBB9_38
.LBB9_49:                               # %if.else180
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	%r14d, %ecx
	xorl	$1, %ecx
	orl	%ebp, %ecx
	jne	.LBB9_57
# %bb.50:                               # %if.then186
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	4(%rsp), %edx                   # 4-byte Reload
	cmpl	%edx, %edi
	jge	.LBB9_52
# %bb.51:                               # %if.then189
                                        #   in Loop: Header=BB9_23 Depth=3
	incl	%edi
.LBB9_55:                               #   in Loop: Header=BB9_23 Depth=3
	movl	$1, %r14d
	xorl	%ebp, %ebp
	jmp	.LBB9_57
.LBB9_45:                               # %if.else165
                                        #   in Loop: Header=BB9_23 Depth=3
	testl	%edi, %edi
	je	.LBB9_46
# %bb.47:                               # %if.else171
                                        #   in Loop: Header=BB9_23 Depth=3
	cmpl	%ecx, %edi
	jne	.LBB9_48
.LBB9_38:                               # %if.then174
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%ecx
	xorl	%r14d, %r14d
	movl	$-1, %ebp
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movl	%ecx, %edi
	jmp	.LBB9_57
.LBB9_48:                               #   in Loop: Header=BB9_23 Depth=3
	movl	$-1, %r14d
	xorl	%ebp, %ebp
	jmp	.LBB9_57
.LBB9_39:                               # %if.else145
                                        #   in Loop: Header=BB9_23 Depth=3
	cmpl	%edx, %r10d
	jne	.LBB9_40
# %bb.41:                               # %if.then148
                                        #   in Loop: Header=BB9_23 Depth=3
	incl	%edx
	movl	$-1, %r14d
	xorl	%ebp, %ebp
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movl	%edx, %r10d
	jmp	.LBB9_57
.LBB9_52:                               # %if.else191
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	848784(%rbx), %ecx
	sarl	$4, %ecx
	decl	%ecx
	cmpl	%ecx, %edi
	jne	.LBB9_54
# %bb.53:                               # %if.then197
                                        #   in Loop: Header=BB9_23 Depth=3
	movl	12(%rsp), %r13d                 # 4-byte Reload
	incl	%r13d
	movl	$-1, %r14d
	xorl	%ebp, %ebp
	movl	%r13d, 12(%rsp)                 # 4-byte Spill
	movl	%r13d, %r10d
	jmp	.LBB9_57
.LBB9_46:                               # %if.then168
                                        #   in Loop: Header=BB9_23 Depth=3
	decl	%r8d
	movl	$1, %r14d
	xorl	%edi, %edi
	movl	%r8d, %r10d
	xorl	%ebp, %ebp
	jmp	.LBB9_57
.LBB9_54:                               # %if.else200
                                        #   in Loop: Header=BB9_23 Depth=3
	cmpl	%edx, %edi
	jne	.LBB9_55
# %bb.56:                               # %if.then203
                                        #   in Loop: Header=BB9_23 Depth=3
	incl	%edx
	xorl	%r14d, %r14d
	movl	$1, %ebp
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movl	%edx, %edi
	jmp	.LBB9_57
	.p2align	4, 0x90
.LBB9_12:                               # %for.cond16.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	848784(%rbx), %edx
	cmpl	$16, %edx
	jl	.LBB9_60
# %bb.13:                               # %for.cond21.preheader.lr.ph
                                        #   in Loop: Header=BB9_2 Depth=1
	movl	848780(%rbx), %ecx
	xorl	%eax, %eax
	jmp	.LBB9_14
	.p2align	4, 0x90
.LBB9_18:                               # %for.inc30
                                        #   in Loop: Header=BB9_14 Depth=2
	incq	%rax
	movl	%edx, %esi
	sarl	$4, %esi
	movslq	%esi, %rsi
	cmpq	%rsi, %rax
	jge	.LBB9_60
.LBB9_14:                               # %for.cond21.preheader
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_16 Depth 3
	cmpl	$16, %ecx
	jl	.LBB9_18
# %bb.15:                               # %for.body25.preheader
                                        #   in Loop: Header=BB9_14 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_16:                               # %for.body25
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rsp), %rcx
	movq	(%rcx,%r12,8), %rcx
	movq	(%rcx,%rax,8), %rcx
	movb	$0, (%rcx,%rdx)
	incq	%rdx
	movl	848780(%rbx), %ecx
	movl	%ecx, %esi
	sarl	$4, %esi
	movslq	%esi, %rsi
	cmpq	%rsi, %rdx
	jl	.LBB9_16
# %bb.17:                               # %for.inc30.loopexit
                                        #   in Loop: Header=BB9_14 Depth=2
	movl	848784(%rbx), %edx
	jmp	.LBB9_18
.LBB9_61:                               # %for.end222
	movq	16(%rsp), %rdi
	callq	free_mem3D@PLT
	movq	%r14, %rdi
	callq	free@PLT
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
.LBB9_62:                               # %sw.default
	.cfi_def_cfa_offset 112
	movl	$.L.str.6, %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end9:
	.size	interpret_spare_pic, .Lfunc_end9-interpret_spare_pic
	.cfi_endproc
                                        # -- End function
	.globl	interpret_scene_information     # -- Begin function interpret_scene_information
	.p2align	4, 0x90
	.type	interpret_scene_information,@function
interpret_scene_information:            # @interpret_scene_information
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.24, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.25, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	cmpl	$4, %eax
	jl	.LBB10_2
# %bb.1:                                # %if.then
	movl	$.L.str.25, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB10_2:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end10:
	.size	interpret_scene_information, .Lfunc_end10-interpret_scene_information
	.cfi_endproc
                                        # -- End function
	.globl	interpret_subsequence_info      # -- Begin function interpret_subsequence_info
	.p2align	4, 0x90
	.type	interpret_subsequence_info,@function
interpret_subsequence_info:             # @interpret_subsequence_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.9, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.10, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.11, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.12, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB11_2
# %bb.1:                                # %if.then
	movl	$.L.str.13, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB11_2:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end11:
	.size	interpret_subsequence_info, .Lfunc_end11-interpret_subsequence_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_subsequence_layer_characteristics_info # -- Begin function interpret_subsequence_layer_characteristics_info
	.p2align	4, 0x90
	.type	interpret_subsequence_layer_characteristics_info,@function
interpret_subsequence_layer_characteristics_info: # @interpret_subsequence_layer_characteristics_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.14, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	testl	%eax, %eax
	js	.LBB12_3
# %bb.1:                                # %for.body.preheader
	movl	%eax, %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB12_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.15, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.16, %esi
	movl	$16, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.17, %esi
	movl	$16, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	decl	%ebp
	jne	.LBB12_2
.LBB12_3:                               # %for.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end12:
	.size	interpret_subsequence_layer_characteristics_info, .Lfunc_end12-interpret_subsequence_layer_characteristics_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_subsequence_characteristics_info # -- Begin function interpret_subsequence_characteristics_info
	.p2align	4, 0x90
	.type	interpret_subsequence_characteristics_info,@function
interpret_subsequence_characteristics_info: # @interpret_subsequence_characteristics_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.18, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB13_2
# %bb.1:                                # %if.then
	movl	$.L.str.18, %esi
	movl	$32, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB13_2:                               # %if.end
	movl	$.L.str.19, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB13_4
# %bb.3:                                # %if.then7
	movl	$.L.str.15, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.16, %esi
	movl	$16, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.17, %esi
	movl	$16, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB13_4:                               # %if.end13
	movl	$.L.str.20, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	testl	%eax, %eax
	jle	.LBB13_7
# %bb.5:                                # %for.body.preheader
	movl	%eax, %ebp
	.p2align	4, 0x90
.LBB13_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.21, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.22, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.23, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	decl	%ebp
	jne	.LBB13_6
.LBB13_7:                               # %for.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end13:
	.size	interpret_subsequence_characteristics_info, .Lfunc_end13-interpret_subsequence_characteristics_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_full_frame_freeze_info # -- Begin function interpret_full_frame_freeze_info
	.p2align	4, 0x90
	.type	interpret_full_frame_freeze_info,@function
interpret_full_frame_freeze_info:       # @interpret_full_frame_freeze_info
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%ebx, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.42, %edi
	movq	%rax, %rsi
	callq	ue_v@PLT
	movq	%r15, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end14:
	.size	interpret_full_frame_freeze_info, .Lfunc_end14-interpret_full_frame_freeze_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_full_frame_freeze_release_info # -- Begin function interpret_full_frame_freeze_release_info
	.p2align	4, 0x90
	.type	interpret_full_frame_freeze_release_info,@function
interpret_full_frame_freeze_release_info: # @interpret_full_frame_freeze_release_info
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end15:
	.size	interpret_full_frame_freeze_release_info, .Lfunc_end15-interpret_full_frame_freeze_release_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_full_frame_snapshot_info # -- Begin function interpret_full_frame_snapshot_info
	.p2align	4, 0x90
	.type	interpret_full_frame_snapshot_info,@function
interpret_full_frame_snapshot_info:     # @interpret_full_frame_snapshot_info
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%ebx, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.43, %edi
	movq	%r15, %rsi
	callq	ue_v@PLT
	movq	%r15, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end16:
	.size	interpret_full_frame_snapshot_info, .Lfunc_end16-interpret_full_frame_snapshot_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_progressive_refinement_start_info # -- Begin function interpret_progressive_refinement_start_info
	.p2align	4, 0x90
	.type	interpret_progressive_refinement_start_info,@function
interpret_progressive_refinement_start_info: # @interpret_progressive_refinement_start_info
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%ebx, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.44, %edi
	movq	%r15, %rsi
	callq	ue_v@PLT
	movl	$.L.str.45, %edi
	movq	%r15, %rsi
	callq	ue_v@PLT
	movq	%r15, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end17:
	.size	interpret_progressive_refinement_start_info, .Lfunc_end17-interpret_progressive_refinement_start_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_progressive_refinement_end_info # -- Begin function interpret_progressive_refinement_end_info
	.p2align	4, 0x90
	.type	interpret_progressive_refinement_end_info,@function
interpret_progressive_refinement_end_info: # @interpret_progressive_refinement_end_info
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r15
	movl	%ebx, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.44, %edi
	movq	%r15, %rsi
	callq	ue_v@PLT
	movq	%r15, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end18:
	.size	interpret_progressive_refinement_end_info, .Lfunc_end18-interpret_progressive_refinement_end_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_motion_constrained_slice_group_set_info # -- Begin function interpret_motion_constrained_slice_group_set_info
	.p2align	4, 0x90
	.type	interpret_motion_constrained_slice_group_set_info,@function
interpret_motion_constrained_slice_group_set_info: # @interpret_motion_constrained_slice_group_set_info
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
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.46, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, %r15d
	leal	1(%r15), %ebp
	movl	%ebp, %edi
	callq	CeilLog2@PLT
	testl	%r15d, %r15d
	js	.LBB19_3
# %bb.1:                                # %for.body.preheader
	movl	%eax, %r14d
	.p2align	4, 0x90
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.47, %esi
	movl	%r14d, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	decl	%ebp
	jne	.LBB19_2
.LBB19_3:                               # %for.end
	movl	$.L.str.35, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.48, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB19_5
# %bb.4:                                # %if.then
	movl	$.L.str.26, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB19_5:                               # %if.end
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end19:
	.size	interpret_motion_constrained_slice_group_set_info, .Lfunc_end19-interpret_motion_constrained_slice_group_set_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_film_grain_characteristics_info # -- Begin function interpret_film_grain_characteristics_info
	.p2align	4, 0x90
	.type	interpret_film_grain_characteristics_info,@function
interpret_film_grain_characteristics_info: # @interpret_film_grain_characteristics_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.49, %edi
	movq	%rax, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB20_31
# %bb.1:                                # %if.then
	movl	$.L.str.50, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.51, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	je	.LBB20_3
# %bb.2:                                # %if.then5
	movl	$.L.str.52, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.53, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.54, %esi
	movl	$1, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.55, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.56, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.57, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB20_3:                               # %if.end
	movl	$.L.str.58, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.59, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.60, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, %r15d
	movl	$.L.str.60, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, %r14d
	movl	$.L.str.60, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	testl	%r15d, %r15d
	je	.LBB20_12
# %bb.4:                                # %if.then21
	movl	$.L.str.61, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, %r15d
	movl	$.L.str.62, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	testl	%r15d, %r15d
	js	.LBB20_12
# %bb.5:                                # %for.body26.lr.ph
	movl	%eax, %ebp
	testl	%eax, %eax
	js	.LBB20_10
# %bb.6:                                # %for.body26.preheader
	incl	%ebp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB20_7:                               # %for.body26
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_8 Depth 2
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%ebp, %r12d
	.p2align	4, 0x90
.LBB20_8:                               # %for.body31
                                        #   Parent Loop BB20_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.65, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	decl	%r12d
	jne	.LBB20_8
# %bb.9:                                # %for.cond29.for.inc36_crit_edge
                                        #   in Loop: Header=BB20_7 Depth=1
	leal	1(%r13), %eax
	cmpl	%r15d, %r13d
	movl	%eax, %r13d
	jne	.LBB20_7
	jmp	.LBB20_12
.LBB20_10:                              # %for.body26.us.preheader
	incl	%r15d
	.p2align	4, 0x90
.LBB20_11:                              # %for.body26.us
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	decl	%r15d
	jne	.LBB20_11
.LBB20_12:                              # %for.inc40
	testl	%r14d, %r14d
	je	.LBB20_21
# %bb.13:                               # %if.then21.1
	movl	$.L.str.61, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, %r14d
	movl	$.L.str.62, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	testl	%r14d, %r14d
	js	.LBB20_21
# %bb.14:                               # %for.body26.lr.ph.1
	movl	%eax, %r15d
	testl	%eax, %eax
	js	.LBB20_19
# %bb.15:                               # %for.body26.1.preheader
	incl	%r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB20_16:                              # %for.body26.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_17 Depth 2
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%r15d, %ebp
	.p2align	4, 0x90
.LBB20_17:                              # %for.body31.1
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.65, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	decl	%ebp
	jne	.LBB20_17
# %bb.18:                               # %for.cond29.for.inc36_crit_edge.1
                                        #   in Loop: Header=BB20_16 Depth=1
	leal	1(%r12), %eax
	cmpl	%r14d, %r12d
	movl	%eax, %r12d
	jne	.LBB20_16
	jmp	.LBB20_21
.LBB20_19:                              # %for.body26.us.1.preheader
	incl	%r14d
	.p2align	4, 0x90
.LBB20_20:                              # %for.body26.us.1
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	decl	%r14d
	jne	.LBB20_20
.LBB20_21:                              # %for.inc40.1
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB20_30
# %bb.22:                               # %if.then21.2
	movl	$.L.str.61, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, %ebp
	movl	$.L.str.62, %esi
	movl	$3, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	testl	%ebp, %ebp
	js	.LBB20_30
# %bb.23:                               # %for.body26.lr.ph.2
	movl	%eax, %r14d
	testl	%eax, %eax
	js	.LBB20_28
# %bb.24:                               # %for.body26.2.preheader
	incl	%r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB20_25:                              # %for.body26.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_26 Depth 2
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%r14d, %r12d
	.p2align	4, 0x90
.LBB20_26:                              # %for.body31.2
                                        #   Parent Loop BB20_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.65, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	decl	%r12d
	jne	.LBB20_26
# %bb.27:                               # %for.cond29.for.inc36_crit_edge.2
                                        #   in Loop: Header=BB20_25 Depth=1
	leal	1(%r15), %eax
	cmpl	%ebp, %r15d
	movl	%eax, %r15d
	jne	.LBB20_25
	jmp	.LBB20_30
.LBB20_28:                              # %for.body26.us.2.preheader
	incl	%ebp
	.p2align	4, 0x90
.LBB20_29:                              # %for.body26.us.2
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.63, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.64, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	decl	%ebp
	jne	.LBB20_29
.LBB20_30:                              # %for.inc40.2
	movl	$.L.str.66, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB20_31:                              # %if.end44
	movq	%rbx, %rdi
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
	jmp	free@PLT                        # TAILCALL
.Lfunc_end20:
	.size	interpret_film_grain_characteristics_info, .Lfunc_end20-interpret_film_grain_characteristics_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_deblocking_filter_display_preference_info # -- Begin function interpret_deblocking_filter_display_preference_info
	.p2align	4, 0x90
	.type	interpret_deblocking_filter_display_preference_info,@function
interpret_deblocking_filter_display_preference_info: # @interpret_deblocking_filter_display_preference_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.67, %edi
	movq	%rax, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB21_2
# %bb.1:                                # %if.then
	movl	$.L.str.68, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.69, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.70, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB21_2:                               # %if.end
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end21:
	.size	interpret_deblocking_filter_display_preference_info, .Lfunc_end21-interpret_deblocking_filter_display_preference_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_stereo_video_info_info # -- Begin function interpret_stereo_video_info_info
	.p2align	4, 0x90
	.type	interpret_stereo_video_info_info,@function
interpret_stereo_video_info_info:       # @interpret_stereo_video_info_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.71, %edi
	movq	%rax, %rsi
	callq	u_1@PLT
	movl	$.L.str.72, %edi
	testl	%eax, %eax
	jne	.LBB22_2
# %bb.1:                                # %if.else
	movl	$.L.str.73, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.74, %edi
.LBB22_2:                               # %if.end
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.75, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.76, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end22:
	.size	interpret_stereo_video_info_info, .Lfunc_end22-interpret_stereo_video_info_info
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function interpret_tone_mapping
.LCPI23_0:
	.quad	0xc018000000000000              # double -6
.LCPI23_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI23_2:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	interpret_tone_mapping
	.p2align	4, 0x90
	.type	interpret_tone_mapping,@function
interpret_tone_mapping:                 # @interpret_tone_mapping
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
	subq	$49224, %rsp                    # imm = 0xC048
	.cfi_def_cfa_offset 49280
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %ebp
	movq	%rdi, %r15
	leaq	36(%rsp), %rdi
	movl	$49188, %edx                    # imm = 0xC024
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %r14
	movl	%ebp, 12(%rax)
	movq	%r15, 16(%rax)
	movl	$0, 8(%rax)
	movl	$.L.str.118, %edi
	movq	%rax, %rsi
	callq	ue_v@PLT
	movl	%eax, 32(%rsp)
	movl	$.L.str.119, %edi
	movq	%r14, %rsi
	callq	u_1@PLT
	movb	%al, 36(%rsp)
	testb	%al, %al
	jne	.LBB23_57
# %bb.1:                                # %if.then
	movl	$.L.str.120, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 40(%rsp)
	movl	$.L.str.121, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, %r15d
	movb	%r15b, 44(%rsp)
	movl	$.L.str.122, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, %ebp
	movb	%bpl, 45(%rsp)
	movl	$.L.str.50, %edi
	movq	%r14, %rsi
	callq	ue_v@PLT
	movl	%eax, 48(%rsp)
	movzbl	%r15b, %ecx
	movl	$1, %edx
	movl	$1, %esi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movl	%ebp, %ecx
	shll	%cl, %edx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	cmpl	$3, %eax
	ja	.LBB23_11
# %bb.2:                                # %if.then
	movl	%eax, %eax
	jmpq	*.LJTI23_0(,%rax,8)
.LBB23_9:
	leaq	52(%rsp), %r15
	leaq	56(%rsp), %r13
	movl	$.L.str.123, %esi
	movl	$.L.str.123, %r12d
	jmp	.LBB23_10
.LBB23_3:                               # %for.cond.preheader
	movzbl	%bpl, %eax
	cmpl	$31, %eax
	je	.LBB23_11
# %bb.4:                                # %for.body.lr.ph
	movq	16(%rsp), %rax                  # 8-byte Reload
	leal	7(%rax), %ebp
	andl	$-8, %ebp
	movq	8(%rsp), %rax                   # 8-byte Reload
	cmpl	$2, %eax
	movl	$1, %r15d
	cmovgel	%eax, %r15d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB23_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.126, %esi
	movl	%ebp, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 68(%rsp,%r12,4)
	incq	%r12
	cmpq	%r12, %r15
	jne	.LBB23_5
	jmp	.LBB23_11
.LBB23_6:                               # %if.then41
	movl	$.L.str.127, %esi
	movl	$16, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 16452(%rsp)
	movl	$0, 16456(%rsp)
	movl	$0, 32840(%rsp)
	movq	24(%rsp), %rcx                  # 8-byte Reload
	decl	%ecx
	cltq
	movl	%ecx, 16460(%rsp,%rax,4)
	movq	8(%rsp), %rax                   # 8-byte Reload
	decl	%eax
	movslq	16452(%rsp), %rcx
	movl	%eax, 32844(%rsp,%rcx,4)
	movl	16452(%rsp), %r13d
	testl	%r13d, %r13d
	jle	.LBB23_11
# %bb.7:                                # %for.body61.lr.ph
	movzbl	44(%rsp), %ebp
	addl	$7, %ebp
	andl	$-8, %ebp
	movzbl	45(%rsp), %r12d
	addl	$7, %r12d
	andl	$-8, %r12d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB23_8:                               # %for.body61
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.128, %esi
	movl	%ebp, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 16460(%rsp,%r15,4)
	movl	$.L.str.129, %esi
	movl	%r12d, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, 32844(%rsp,%r15,4)
	incq	%r15
	cmpq	%r15, %r13
	jne	.LBB23_8
	jmp	.LBB23_11
.LBB23_58:                              # %if.then23
	leaq	64(%rsp), %r13
	leaq	60(%rsp), %r15
	movl	$.L.str.125, %r12d
	movl	$.L.str.124, %esi
.LBB23_10:                              # %if.end85.sink.split
	movl	$32, %edi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, (%r15)
	movl	$32, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	u_v@PLT
	movl	%eax, (%r13)
.LBB23_11:                              # %if.end85
	cmpl	$0, 32(%rsp)
	movq	8(%rsp), %r15                   # 8-byte Reload
	je	.LBB23_12
.LBB23_57:                              # %if.end275
	movq	%r14, %rdi
	addq	$49224, %rsp                    # imm = 0xC048
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
	jmp	free@PLT                        # TAILCALL
.LBB23_12:                              # %if.then89
	.cfi_def_cfa_offset 49280
	movq	856728(%rbx), %rax
	movl	$1, (%rax)
	movl	40(%rsp), %eax
	movq	856728(%rbx), %rcx
	movl	%eax, 4(%rcx)
	movzbl	44(%rsp), %eax
	movq	856728(%rbx), %rcx
	movb	%al, 8(%rcx)
	movzbl	45(%rsp), %eax
	movq	856728(%rbx), %rcx
	movb	%al, 9(%rcx)
	movl	48(%rsp), %eax
	movq	856728(%rbx), %rcx
	movl	%eax, 12(%rcx)
	movq	856728(%rbx), %rcx
	movl	$0, 16(%rcx)
	cmpq	$3, %rax
	ja	.LBB23_57
# %bb.13:                               # %if.then89
	jmpq	*.LJTI23_1(,%rax,8)
.LBB23_19:                              # %for.cond104.preheader
	movl	52(%rsp), %esi
	leal	1(%rsi), %eax
	testl	%esi, %esi
	js	.LBB23_25
# %bb.20:                               # %for.body108.preheader
	movl	%eax, %edi
	movl	%edi, %ecx
	andl	$3, %ecx
	cmpl	$4, %eax
	jae	.LBB23_37
# %bb.21:
	xorl	%edx, %edx
	jmp	.LBB23_22
.LBB23_39:                              # %sw.bb176
	cmpl	$2, %r15d
	jl	.LBB23_57
# %bb.40:                               # %for.body185.lr.ph
	decl	%r15d
	movl	%r15d, %eax
	movl	68(%rsp), %ecx
	xorl	%edx, %edx
	jmp	.LBB23_42
	.p2align	4, 0x90
.LBB23_41:                              # %for.cond181.loopexit
                                        #   in Loop: Header=BB23_42 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	je	.LBB23_56
.LBB23_42:                              # %for.body185
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_45 Depth 2
                                        #     Child Loop BB23_47 Depth 2
	movl	%ecx, %r8d
	movl	72(%rsp,%rdx,4), %ecx
	cmpl	%ecx, %r8d
	jge	.LBB23_41
# %bb.43:                               # %for.body196.lr.ph
                                        #   in Loop: Header=BB23_42 Depth=1
	movslq	%r8d, %rdi
	movl	%ecx, %r9d
	subl	%r8d, %r9d
	movq	%rdi, %rsi
	andl	$3, %r9d
	je	.LBB23_46
# %bb.44:                               # %for.body196.prol.preheader
                                        #   in Loop: Header=BB23_42 Depth=1
	movq	%rdi, %rsi
	.p2align	4, 0x90
.LBB23_45:                              # %for.body196.prol
                                        #   Parent Loop BB23_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	856728(%rbx), %r8
	movw	%dx, 20(%r8,%rsi,2)
	incq	%rsi
	decq	%r9
	jne	.LBB23_45
.LBB23_46:                              # %for.body196.prol.loopexit
                                        #   in Loop: Header=BB23_42 Depth=1
	movslq	%ecx, %r9
	subq	%r9, %rdi
	movl	%ecx, %r8d
	cmpq	$-4, %rdi
	ja	.LBB23_41
	.p2align	4, 0x90
.LBB23_47:                              # %for.body196
                                        #   Parent Loop BB23_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	856728(%rbx), %rdi
	movw	%dx, 20(%rdi,%rsi,2)
	movq	856728(%rbx), %rdi
	movw	%dx, 22(%rdi,%rsi,2)
	movq	856728(%rbx), %rdi
	movw	%dx, 24(%rdi,%rsi,2)
	movq	856728(%rbx), %rdi
	movw	%dx, 26(%rdi,%rsi,2)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB23_47
# %bb.48:                               #   in Loop: Header=BB23_42 Depth=1
	movl	%ecx, %r8d
	jmp	.LBB23_41
.LBB23_14:                              # %for.cond216.preheader
	movl	16452(%rsp), %eax
	testl	%eax, %eax
	js	.LBB23_57
# %bb.15:                               # %for.body221.lr.ph
	incq	%rax
	movl	32840(%rsp), %ecx
	movl	16456(%rsp), %esi
	xorl	%edx, %edx
	xorpd	%xmm0, %xmm0
	jmp	.LBB23_50
	.p2align	4, 0x90
.LBB23_49:                              # %for.cond216.loopexit
                                        #   in Loop: Header=BB23_50 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	je	.LBB23_57
.LBB23_50:                              # %for.body221
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_55 Depth 2
	movl	%ecx, %edi
	movl	%esi, %r11d
	movl	32844(%rsp,%rdx,4), %ecx
	movl	16460(%rsp,%rdx,4), %esi
	movl	%esi, %r9d
	subl	%r11d, %r9d
	jl	.LBB23_49
# %bb.51:                               # %for.body251.preheader
                                        #   in Loop: Header=BB23_50 Depth=1
	movl	%ecx, %r8d
	subl	%edi, %r8d
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r8d, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r9d, %xmm2
	divsd	%xmm2, %xmm1
	movslq	%r11d, %r8
	incl	%r9d
	testb	$1, %r9b
	je	.LBB23_53
# %bb.52:                               # %for.body251.prol
                                        #   in Loop: Header=BB23_50 Depth=1
	movapd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %r9d
	addl	%edi, %r9d
	movq	856728(%rbx), %r10
	movw	%r9w, 20(%r10,%r8,2)
	incq	%r8
.LBB23_53:                              # %for.body251.prol.loopexit
                                        #   in Loop: Header=BB23_50 Depth=1
	cmpl	%r11d, %esi
	je	.LBB23_49
# %bb.54:                               # %for.body251.preheader2
                                        #   in Loop: Header=BB23_50 Depth=1
	movl	%r8d, %r9d
	movl	%esi, %r10d
	subl	%r8d, %r10d
	incl	%r10d
	addq	%r8, %r8
	subl	%r11d, %r9d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB23_55:                              # %for.body251
                                        #   Parent Loop BB23_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r9,%r11), %ebp
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ebp, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ebp
	addl	%edi, %ebp
	movq	856728(%rbx), %r15
	addq	%r8, %r15
	movw	%bp, 20(%r15,%r11,2)
	leal	(%r9,%r11), %ebp
	incl	%ebp
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ebp, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ebp
	addl	%edi, %ebp
	movq	856728(%rbx), %r15
	addq	%r8, %r15
	movw	%bp, 22(%r15,%r11,2)
	addq	$2, %r11
	cmpl	%r11d, %r10d
	jne	.LBB23_55
	jmp	.LBB23_49
.LBB23_16:                              # %for.cond151.preheader
	cmpl	$31, 16(%rsp)                   # 4-byte Folded Reload
	je	.LBB23_57
# %bb.17:                               # %for.body154.lr.ph
	cvtsi2sdl	64(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	decl	%r15d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpl	$2, %eax
	movl	$1, %r12d
	cmovgel	%eax, %r12d
	xorl	%r15d, %r15d
	subl	60(%rsp), %r15d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB23_18:                              # %for.body154
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r13), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LCPI23_0(%rip), %xmm0
	divsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	callq	exp@PLT
	addsd	.LCPI23_1(%rip), %xmm0
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	.LCPI23_2(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movq	856728(%rbx), %rcx
	movw	%ax, 20(%rcx,%r13,2)
	incq	%r13
	cmpq	%r13, %r12
	jne	.LBB23_18
	jmp	.LBB23_57
.LBB23_56:                              # %for.end207
	movq	856728(%rbx), %rax
	movslq	%r8d, %rcx
	movw	%r15w, 20(%rax,%rcx,2)
	jmp	.LBB23_57
.LBB23_37:                              # %for.body108.preheader.new
	andl	$-4, %edi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB23_38:                              # %for.body108
                                        # =>This Inner Loop Header: Depth=1
	movq	856728(%rbx), %r8
	movw	$0, 20(%r8,%rdx,2)
	movq	856728(%rbx), %r8
	movw	$0, 22(%r8,%rdx,2)
	movq	856728(%rbx), %r8
	movw	$0, 24(%r8,%rdx,2)
	movq	856728(%rbx), %r8
	movw	$0, 26(%r8,%rdx,2)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB23_38
.LBB23_22:                              # %for.cond117.preheader.loopexit.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB23_25
# %bb.23:                               # %for.body108.epil.preheader
	addq	$10, %rdx
	.p2align	4, 0x90
.LBB23_24:                              # %for.body108.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	856728(%rbx), %rdi
	movw	$0, (%rdi,%rdx,2)
	incq	%rdx
	decq	%rcx
	jne	.LBB23_24
.LBB23_25:                              # %for.cond117.preheader
	movslq	56(%rsp), %r8
	cmpl	%r8d, %eax
	jge	.LBB23_31
# %bb.26:                               # %for.body121.lr.ph
	leal	-1(%r15), %edi
	movl	%r8d, %r9d
	subl	%esi, %r9d
	movslq	%eax, %r10
	movl	%esi, %eax
	subl	%r8d, %eax
	leal	-2(%r8), %ecx
	testb	$1, %al
	jne	.LBB23_28
# %bb.27:                               # %for.body121.prol
	movl	%edi, %eax
	cltd
	idivl	%r9d
	movq	856728(%rbx), %rdx
	movw	%ax, 20(%rdx,%r10,2)
	incq	%r10
.LBB23_28:                              # %for.body121.prol.loopexit
	cmpl	%esi, %ecx
	je	.LBB23_31
# %bb.29:                               # %for.body121.preheader
	movl	%r8d, %r11d
	subl	%r10d, %r11d
	movl	%r10d, %ecx
	subl	%esi, %ecx
	leal	1(%rcx), %esi
	imull	%edi, %esi
	leal	-2(,%r15,2), %ebp
	imull	%edi, %ecx
	.p2align	4, 0x90
.LBB23_30:                              # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movq	856728(%rbx), %rdx
	movw	%ax, 20(%rdx,%r10,2)
	movl	%esi, %eax
	cltd
	idivl	%r9d
	movq	856728(%rbx), %rdx
	movw	%ax, 22(%rdx,%r10,2)
	addq	$2, %r10
	addl	%ebp, %esi
	addl	%ebp, %ecx
	addl	$-2, %r11d
	jne	.LBB23_30
.LBB23_31:                              # %for.cond137.preheader
	cmpl	24(%rsp), %r8d                  # 4-byte Folded Reload
	jge	.LBB23_57
# %bb.32:                               # %for.body140.lr.ph
	decl	%r15d
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movslq	%esi, %rax
	subl	%r8d, %esi
	movq	%r8, %rcx
	andl	$3, %esi
	je	.LBB23_35
# %bb.33:                               # %for.body140.prol.preheader
	movq	%r8, %rcx
	.p2align	4, 0x90
.LBB23_34:                              # %for.body140.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	856728(%rbx), %rdx
	movw	%r15w, 20(%rdx,%rcx,2)
	incq	%rcx
	decq	%rsi
	jne	.LBB23_34
.LBB23_35:                              # %for.body140.prol.loopexit
	subq	%rax, %r8
	cmpq	$-4, %r8
	ja	.LBB23_57
	.p2align	4, 0x90
.LBB23_36:                              # %for.body140
                                        # =>This Inner Loop Header: Depth=1
	movq	856728(%rbx), %rdx
	movw	%r15w, 20(%rdx,%rcx,2)
	movq	856728(%rbx), %rdx
	movw	%r15w, 22(%rdx,%rcx,2)
	movq	856728(%rbx), %rdx
	movw	%r15w, 24(%rdx,%rcx,2)
	movq	856728(%rbx), %rdx
	movw	%r15w, 26(%rdx,%rcx,2)
	addq	$4, %rcx
	cmpq	%rcx, %rax
	jne	.LBB23_36
	jmp	.LBB23_57
.Lfunc_end23:
	.size	interpret_tone_mapping, .Lfunc_end23-interpret_tone_mapping
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI23_0:
	.quad	.LBB23_9
	.quad	.LBB23_58
	.quad	.LBB23_3
	.quad	.LBB23_6
.LJTI23_1:
	.quad	.LBB23_19
	.quad	.LBB23_16
	.quad	.LBB23_39
	.quad	.LBB23_14
                                        # -- End function
	.text
	.globl	interpret_post_filter_hints_info # -- Begin function interpret_post_filter_hints_info
	.p2align	4, 0x90
	.type	interpret_post_filter_hints_info,@function
interpret_post_filter_hints_info:       # @interpret_post_filter_hints_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.130, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, %ebp
	movl	$.L.str.131, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	%eax, %r14d
	movl	$.L.str.132, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movq	%rsp, %rdi
	movl	$3, %esi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	get_mem3Dint@PLT
	testl	%ebp, %ebp
	sete	%al
	testl	%r14d, %r14d
	sete	%cl
	orb	%al, %cl
	jne	.LBB24_13
# %bb.1:                                # %for.cond5.preheader.us.us.preheader
	movl	%ebp, %r15d
	movl	%r14d, %r14d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB24_2:                               # %for.cond8.preheader.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB24_3:                               # %for.body10.us.us.us
                                        #   Parent Loop BB24_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movq	(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	cmpq	%r13, %r14
	jne	.LBB24_3
# %bb.4:                                # %for.cond8.for.inc16_crit_edge.us.us.us
                                        #   in Loop: Header=BB24_2 Depth=1
	incq	%r12
	cmpq	%r15, %r12
	jne	.LBB24_2
# %bb.5:                                # %for.cond8.preheader.us.us.us.1.preheader
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB24_6:                               # %for.cond8.preheader.us.us.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_7 Depth 2
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB24_7:                               # %for.body10.us.us.us.1
                                        #   Parent Loop BB24_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movq	(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	cmpq	%r13, %r14
	jne	.LBB24_7
# %bb.8:                                # %for.cond8.for.inc16_crit_edge.us.us.us.1
                                        #   in Loop: Header=BB24_6 Depth=1
	incq	%r12
	cmpq	%r15, %r12
	jne	.LBB24_6
# %bb.9:                                # %for.cond8.preheader.us.us.us.2.preheader
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB24_10:                              # %for.cond8.preheader.us.us.us.2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_11 Depth 2
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB24_11:                              # %for.body10.us.us.us.2
                                        #   Parent Loop BB24_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.133, %edi
	movq	%rbx, %rsi
	callq	se_v@PLT
	movq	(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%r12,8), %rcx
	movl	%eax, (%rcx,%r13,4)
	incq	%r13
	cmpq	%r13, %r14
	jne	.LBB24_11
# %bb.12:                               # %for.cond8.for.inc16_crit_edge.us.us.us.2
                                        #   in Loop: Header=BB24_10 Depth=1
	incq	%r12
	cmpq	%r15, %r12
	jne	.LBB24_10
.LBB24_13:                              # %for.end21
	movl	$.L.str.134, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	(%rsp), %rdi
	callq	free_mem3Dint@PLT
	movq	%rbx, %rdi
	callq	free@PLT
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
	retq
.Lfunc_end24:
	.size	interpret_post_filter_hints_info, .Lfunc_end24-interpret_post_filter_hints_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_frame_packing_arrangement_info # -- Begin function interpret_frame_packing_arrangement_info
	.p2align	4, 0x90
	.type	interpret_frame_packing_arrangement_info,@function
interpret_frame_packing_arrangement_info: # @interpret_frame_packing_arrangement_info
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
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$32, %edi
	callq	malloc@PLT
	movq	%rax, %rbx
	movl	%ebp, 12(%rax)
	movq	%r14, 16(%rax)
	movl	$0, 8(%rax)
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	$0, 24(%rax)
	movl	$.L.str.100, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
	movl	$.L.str.101, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%eax, %eax
	jne	.LBB25_5
# %bb.1:                                # %if.then
	movl	$.L.str.102, %esi
	movl	$7, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	%eax, %ebp
	movl	$.L.str.103, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	%eax, %r14d
	movl	$.L.str.104, %esi
	movl	$6, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.105, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.106, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.107, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.108, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.109, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movl	$.L.str.110, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	testl	%r14d, %r14d
	jne	.LBB25_4
# %bb.2:                                # %if.then
	movzbl	%bpl, %eax
	cmpl	$5, %eax
	je	.LBB25_4
# %bb.3:                                # %if.then21
	movl	$.L.str.111, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.112, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.113, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.114, %esi
	movl	$4, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
.LBB25_4:                               # %if.end
	movl	$.L.str.115, %esi
	movl	$8, %edi
	movq	%rbx, %rdx
	callq	u_v@PLT
	movl	$.L.str.116, %edi
	movq	%rbx, %rsi
	callq	ue_v@PLT
.LBB25_5:                               # %if.end33
	movl	$.L.str.117, %edi
	movq	%rbx, %rsi
	callq	u_1@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	free@PLT                        # TAILCALL
.Lfunc_end25:
	.size	interpret_frame_packing_arrangement_info, .Lfunc_end25-interpret_frame_packing_arrangement_info
	.cfi_endproc
                                        # -- End function
	.globl	interpret_reserved_info         # -- Begin function interpret_reserved_info
	.p2align	4, 0x90
	.type	interpret_reserved_info,@function
interpret_reserved_info:                # @interpret_reserved_info
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end26:
	.size	interpret_reserved_info, .Lfunc_end26-interpret_reserved_info
	.cfi_endproc
                                        # -- End function
	.globl	tone_map                        # -- Begin function tone_map
	.p2align	4, 0x90
	.type	tone_map,@function
tone_map:                               # @tone_map
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%ecx, %ecx
	setle	%al
	testl	%edx, %edx
	setle	%r8b
	orb	%al, %r8b
	jne	.LBB27_9
# %bb.1:                                # %for.cond1.preheader.us.preheader
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %eax
	movl	%edx, %ecx
	movl	%ecx, %r8d
	andl	$3, %r8d
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	xorl	%r9d, %r9d
	jmp	.LBB27_2
	.p2align	4, 0x90
.LBB27_7:                               # %for.cond1.for.inc12_crit_edge.us
                                        #   in Loop: Header=BB27_2 Depth=1
	incq	%r9
	cmpq	%rax, %r9
	je	.LBB27_8
.LBB27_2:                               # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_3 Depth 2
                                        #     Child Loop BB27_6 Depth 2
	xorl	%r10d, %r10d
	cmpl	$4, %edx
	jb	.LBB27_4
	.p2align	4, 0x90
.LBB27_3:                               # %for.body3.us
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %r11
	movzwl	(%r11,%r10,2), %ebx
	movzwl	(%rsi,%rbx,2), %ebx
	movw	%bx, (%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movzwl	2(%r11,%r10,2), %ebx
	movzwl	(%rsi,%rbx,2), %ebx
	movw	%bx, 2(%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movzwl	4(%r11,%r10,2), %ebx
	movzwl	(%rsi,%rbx,2), %ebx
	movw	%bx, 4(%r11,%r10,2)
	movq	(%rdi,%r9,8), %r11
	movzwl	6(%r11,%r10,2), %ebx
	movzwl	(%rsi,%rbx,2), %ebx
	movw	%bx, 6(%r11,%r10,2)
	addq	$4, %r10
	cmpq	%r10, %rcx
	jne	.LBB27_3
.LBB27_4:                               # %for.cond1.for.inc12_crit_edge.us.unr-lcssa
                                        #   in Loop: Header=BB27_2 Depth=1
	testq	%r8, %r8
	je	.LBB27_7
# %bb.5:                                # %for.body3.us.epil.preheader
                                        #   in Loop: Header=BB27_2 Depth=1
	movq	%r8, %r11
	.p2align	4, 0x90
.LBB27_6:                               # %for.body3.us.epil
                                        #   Parent Loop BB27_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r9,8), %rbx
	movzwl	(%rbx,%r10,2), %r14d
	movzwl	(%rsi,%r14,2), %ebp
	movw	%bp, (%rbx,%r10,2)
	incq	%r10
	decq	%r11
	jne	.LBB27_6
	jmp	.LBB27_7
.LBB27_8:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %rbp
.LBB27_9:                               # %for.end14
	retq
.Lfunc_end27:
	.size	tone_map, .Lfunc_end27-tone_map
	.cfi_endproc
                                        # -- End function
	.globl	init_tone_mapping_sei           # -- Begin function init_tone_mapping_sei
	.p2align	4, 0x90
	.type	init_tone_mapping_sei,@function
init_tone_mapping_sei:                  # @init_tone_mapping_sei
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$0, (%rdi)
	movl	$0, 16(%rdi)
	retq
.Lfunc_end28:
	.size	init_tone_mapping_sei, .Lfunc_end28-init_tone_mapping_sei
	.cfi_endproc
                                        # -- End function
	.globl	update_tone_mapping_sei         # -- Begin function update_tone_mapping_sei
	.p2align	4, 0x90
	.type	update_tone_mapping_sei,@function
update_tone_mapping_sei:                # @update_tone_mapping_sei
	.cfi_startproc
# %bb.0:                                # %entry
	movl	4(%rdi), %eax
	cmpl	$1, %eax
	je	.LBB29_4
# %bb.1:                                # %entry
	testl	%eax, %eax
	je	.LBB29_3
# %bb.2:                                # %if.then3
	movl	16(%rdi), %ecx
	incl	%ecx
	movl	%ecx, 16(%rdi)
	cmpl	%eax, %ecx
	jb	.LBB29_4
.LBB29_3:                               # %if.then8
	movl	$0, (%rdi)
	addq	$16, %rdi
	movl	$0, (%rdi)
.LBB29_4:                               # %if.end12
	retq
.Lfunc_end29:
	.size	update_tone_mapping_sei, .Lfunc_end29-update_tone_mapping_sei
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SEI: target_frame_num"
	.size	.L.str, 22

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"SEI: num_spare_pics_minus1"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SEI: delta_spare_frame_num"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"SEI: ref_area_indicator"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"SEI: ref_mb_indicator"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"SEI: zero_run_length"
	.size	.L.str.5, 21

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Wrong ref_area_indicator %d!\n"
	.size	.L.str.6, 30

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"SEI: sub_seq_layer_num"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"SEI: sub_seq_id"
	.size	.L.str.8, 16

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"SEI: first_ref_pic_flag"
	.size	.L.str.9, 24

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"SEI: leading_non_ref_pic_flag"
	.size	.L.str.10, 30

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SEI: last_pic_flag"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SEI: sub_seq_frame_num_flag"
	.size	.L.str.12, 28

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SEI: sub_seq_frame_num"
	.size	.L.str.13, 23

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SEI: num_sub_layers_minus1"
	.size	.L.str.14, 27

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SEI: accurate_statistics_flag"
	.size	.L.str.15, 30

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SEI: average_bit_rate"
	.size	.L.str.16, 22

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SEI: average_frame_rate"
	.size	.L.str.17, 24

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"SEI: duration_flag"
	.size	.L.str.18, 19

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SEI: average_rate_flag"
	.size	.L.str.19, 23

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SEI: num_referenced_subseqs"
	.size	.L.str.20, 28

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SEI: ref_sub_seq_layer_num"
	.size	.L.str.21, 27

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"SEI: ref_sub_seq_id"
	.size	.L.str.22, 20

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"SEI: ref_sub_seq_direction"
	.size	.L.str.23, 27

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"SEI: scene_id"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"SEI: scene_transition_type"
	.size	.L.str.25, 27

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SEI: pan_scan_rect_id"
	.size	.L.str.26, 22

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"SEI: pan_scan_rect_cancel_flag"
	.size	.L.str.27, 31

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"SEI: pan_scan_cnt_minus1"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"SEI: pan_scan_rect_left_offset"
	.size	.L.str.29, 31

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"SEI: pan_scan_rect_right_offset"
	.size	.L.str.30, 32

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SEI: pan_scan_rect_top_offset"
	.size	.L.str.31, 30

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"SEI: pan_scan_rect_bottom_offset"
	.size	.L.str.32, 33

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SEI: pan_scan_rect_repetition_period"
	.size	.L.str.33, 37

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"SEI: recovery_frame_cnt"
	.size	.L.str.34, 24

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"SEI: exact_match_flag"
	.size	.L.str.35, 22

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"SEI: broken_link_flag"
	.size	.L.str.36, 22

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"SEI: changing_slice_group_idc"
	.size	.L.str.37, 30

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"SEI: original_idr_flag"
	.size	.L.str.38, 23

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"SEI: original_frame_num"
	.size	.L.str.39, 24

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"SEI: original_field_pic_flag"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"SEI: original_bottom_field_flag"
	.size	.L.str.41, 32

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"SEI: full_frame_freeze_repetition_period"
	.size	.L.str.42, 41

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"SEI: snapshot_id"
	.size	.L.str.43, 17

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"SEI: progressive_refinement_id"
	.size	.L.str.44, 31

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"SEI: num_refinement_steps_minus1"
	.size	.L.str.45, 33

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"SEI: num_slice_groups_minus1"
	.size	.L.str.46, 29

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"SEI: slice_group_id"
	.size	.L.str.47, 20

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"SEI: pan_scan_rect_flag"
	.size	.L.str.48, 24

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"SEI: film_grain_characteristics_cancel_flag"
	.size	.L.str.49, 44

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"SEI: model_id"
	.size	.L.str.50, 14

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"SEI: separate_colour_description_present_flag"
	.size	.L.str.51, 46

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"SEI: film_grain_bit_depth_luma_minus8"
	.size	.L.str.52, 38

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"SEI: film_grain_bit_depth_chroma_minus8"
	.size	.L.str.53, 40

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"SEI: film_grain_full_range_flag"
	.size	.L.str.54, 32

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"SEI: film_grain_colour_primaries"
	.size	.L.str.55, 33

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"SEI: film_grain_transfer_characteristics"
	.size	.L.str.56, 41

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"SEI: film_grain_matrix_coefficients"
	.size	.L.str.57, 36

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"SEI: blending_mode_id"
	.size	.L.str.58, 22

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"SEI: log2_scale_factor"
	.size	.L.str.59, 23

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"SEI: comp_model_present_flag"
	.size	.L.str.60, 29

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"SEI: num_intensity_intervals_minus1"
	.size	.L.str.61, 36

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"SEI: num_model_values_minus1"
	.size	.L.str.62, 29

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"SEI: intensity_interval_lower_bound"
	.size	.L.str.63, 36

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"SEI: intensity_interval_upper_bound"
	.size	.L.str.64, 36

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"SEI: comp_model_value"
	.size	.L.str.65, 22

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"SEI: film_grain_characteristics_repetition_period"
	.size	.L.str.66, 50

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"SEI: deblocking_display_preference_cancel_flag"
	.size	.L.str.67, 47

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"SEI: display_prior_to_deblocking_preferred_flag"
	.size	.L.str.68, 48

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"SEI: dec_frame_buffering_constraint_flag"
	.size	.L.str.69, 41

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"SEI: deblocking_display_preference_repetition_period"
	.size	.L.str.70, 53

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"SEI: field_views_flags"
	.size	.L.str.71, 23

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"SEI: top_field_is_left_view_flag"
	.size	.L.str.72, 33

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"SEI: current_frame_is_left_view_flag"
	.size	.L.str.73, 37

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"SEI: next_frame_is_second_view_flag"
	.size	.L.str.74, 36

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"SEI: left_view_self_contained_flag"
	.size	.L.str.75, 35

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"SEI: right_view_self_contained_flag"
	.size	.L.str.76, 36

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"SEI: seq_parameter_set_id"
	.size	.L.str.77, 26

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"SEI: initial_cpb_removal_delay"
	.size	.L.str.78, 31

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"SEI: initial_cpb_removal_delay_offset"
	.size	.L.str.79, 38

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Warning: no active SPS, timing SEI cannot be parsed\n"
	.size	.L.str.80, 53

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"SEI: cpb_removal_delay"
	.size	.L.str.81, 23

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"SEI: dpb_output_delay"
	.size	.L.str.82, 22

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"SEI: pic_struct"
	.size	.L.str.83, 16

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"reserved picture_structure used (can't determine NumClockTs)"
	.size	.L.str.84, 61

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"SEI: clock_time_stamp_flag"
	.size	.L.str.85, 27

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"SEI: ct_type"
	.size	.L.str.86, 13

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"SEI: nuit_field_based_flag"
	.size	.L.str.87, 27

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"SEI: counting_type"
	.size	.L.str.88, 19

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"SEI: full_timestamp_flag"
	.size	.L.str.89, 25

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"SEI: discontinuity_flag"
	.size	.L.str.90, 24

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"SEI: cnt_dropped_flag"
	.size	.L.str.91, 22

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"SEI: nframes"
	.size	.L.str.92, 13

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"SEI: seconds_value"
	.size	.L.str.93, 19

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"SEI: minutes_value"
	.size	.L.str.94, 19

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"SEI: hours_value"
	.size	.L.str.95, 17

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"SEI: seconds_flag"
	.size	.L.str.96, 18

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"SEI: minutes_flag"
	.size	.L.str.97, 18

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"SEI: hours_flag"
	.size	.L.str.98, 16

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"SEI: time_offset"
	.size	.L.str.99, 17

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"SEI: frame_packing_arrangement_id"
	.size	.L.str.100, 34

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"SEI: frame_packing_arrangement_cancel_flag"
	.size	.L.str.101, 43

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"SEI: frame_packing_arrangement_type"
	.size	.L.str.102, 36

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"SEI: quincunx_sampling_flag"
	.size	.L.str.103, 28

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"SEI: content_interpretation_type"
	.size	.L.str.104, 33

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"SEI: spatial_flipping_flag"
	.size	.L.str.105, 27

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"SEI: frame0_flipped_flag"
	.size	.L.str.106, 25

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"SEI: field_views_flag"
	.size	.L.str.107, 22

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"SEI: current_frame_is_frame0_flag"
	.size	.L.str.108, 34

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"SEI: frame0_self_contained_flag"
	.size	.L.str.109, 32

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"SEI: frame1_self_contained_flag"
	.size	.L.str.110, 32

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"SEI: frame0_grid_position_x"
	.size	.L.str.111, 28

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"SEI: frame0_grid_position_y"
	.size	.L.str.112, 28

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"SEI: frame1_grid_position_x"
	.size	.L.str.113, 28

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"SEI: frame1_grid_position_y"
	.size	.L.str.114, 28

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"SEI: frame_packing_arrangement_reserved_byte"
	.size	.L.str.115, 45

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"SEI: frame_packing_arrangement_repetition_period"
	.size	.L.str.116, 49

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"SEI: frame_packing_arrangement_extension_flag"
	.size	.L.str.117, 46

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"SEI: tone_map_id"
	.size	.L.str.118, 17

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"SEI: tone_map_cancel_flag"
	.size	.L.str.119, 26

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"SEI: tone_map_repetition_period"
	.size	.L.str.120, 32

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"SEI: coded_data_bit_depth"
	.size	.L.str.121, 26

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"SEI: sei_bit_depth"
	.size	.L.str.122, 19

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"SEI: min_value"
	.size	.L.str.123, 15

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"SEI: sigmoid_midpoint"
	.size	.L.str.124, 22

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"SEI: sigmoid_width"
	.size	.L.str.125, 19

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"SEI: start_of_coded_interval"
	.size	.L.str.126, 29

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"SEI: num_pivots"
	.size	.L.str.127, 16

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"SEI: coded_pivot_value"
	.size	.L.str.128, 23

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"SEI: sei_pivot_value"
	.size	.L.str.129, 21

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"SEI: filter_hint_size_y"
	.size	.L.str.130, 24

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"SEI: filter_hint_size_x"
	.size	.L.str.131, 24

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"SEI: filter_hint_type"
	.size	.L.str.132, 22

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"SEI: filter_hint"
	.size	.L.str.133, 17

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"SEI: additional_extension_flag"
	.size	.L.str.134, 31

	.type	.Lswitch.table.interpret_picture_timing_info,@object # @switch.table.interpret_picture_timing_info
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.interpret_picture_timing_info:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	3                               # 0x3
	.long	2                               # 0x2
	.long	3                               # 0x3
	.size	.Lswitch.table.interpret_picture_timing_info, 36

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
