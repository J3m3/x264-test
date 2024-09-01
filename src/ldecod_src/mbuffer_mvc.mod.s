	.text
	.file	"mbuffer_mvc.c"
	.globl	reorder_short_term              # -- Begin function reorder_short_term
	.p2align	4, 0x90
	.type	reorder_short_term,@function
reorder_short_term:                     # @reorder_short_term
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
	movl	%r9d, %ebp
	movq	%r8, %r15
	movl	%ecx, %ebx
	movl	%edx, %r14d
	movslq	%esi, %rax
	movq	264(%rdi,%rax,8), %r12
	movq	40(%rdi), %rdi
	movl	%ecx, %esi
	callq	get_short_term_pic@PLT
	leal	1(%r14), %ecx
	movl	(%r15), %edx
	cmpl	%r14d, %edx
	jle	.LBB0_2
# %bb.1:
	movslq	%edx, %rsi
	jmp	.LBB0_4
.LBB0_2:                                # %for.body.preheader
	movslq	%ecx, %rdi
	.p2align	4, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r12,%rdi,8), %rdx
	movq	%rdx, (%r12,%rdi,8)
	decq	%rdi
	movl	(%r15), %edx
	movslq	%edx, %rsi
	cmpq	%rsi, %rdi
	jg	.LBB0_3
.LBB0_4:                                # %for.end
	incl	%edx
	movl	%edx, (%r15)
	movq	%rax, (%r12,%rsi,8)
	movl	(%r15), %eax
	cmpl	%ecx, %eax
	jle	.LBB0_5
.LBB0_17:                               # %for.end36
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
	retq
.LBB0_5:                                # %for.body10.lr.ph
	.cfi_def_cfa_offset 48
	movslq	%eax, %rcx
	movslq	%r14d, %rdx
	decq	%rcx
	cmpl	$-1, %ebp
	jne	.LBB0_6
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               # %if.then27
                                        #   in Loop: Header=BB0_6 Depth=1
	movslq	%eax, %rdi
	incl	%eax
	movq	%rsi, (%r12,%rdi,8)
.LBB0_11:                               # %for.inc34
                                        #   in Loop: Header=BB0_6 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jg	.LBB0_17
.LBB0_6:                                # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_11
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpb	$0, 40(%rsi)
	jne	.LBB0_10
# %bb.8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	%ebx, 28(%rsi)
	jne	.LBB0_10
# %bb.9:                                # %lor.lhs.false20
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	%ebp, 344(%rsi)
	jne	.LBB0_10
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_15:                               # %if.then27.us
                                        #   in Loop: Header=BB0_12 Depth=1
	movslq	%eax, %rdi
	incl	%eax
	movq	%rsi, (%r12,%rdi,8)
.LBB0_16:                               # %for.inc34.us
                                        #   in Loop: Header=BB0_12 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jg	.LBB0_17
.LBB0_12:                               # %for.body10.us
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r12,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB0_16
# %bb.13:                               # %if.then.us
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpb	$0, 40(%rsi)
	jne	.LBB0_15
# %bb.14:                               # %lor.lhs.false.us
                                        #   in Loop: Header=BB0_12 Depth=1
	cmpl	%ebx, 28(%rsi)
	jne	.LBB0_15
	jmp	.LBB0_16
.Lfunc_end0:
	.size	reorder_short_term, .Lfunc_end0-reorder_short_term
	.cfi_endproc
                                        # -- End function
	.globl	reorder_long_term               # -- Begin function reorder_long_term
	.p2align	4, 0x90
	.type	reorder_long_term,@function
reorder_long_term:                      # @reorder_long_term
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
	movl	%r9d, %ebp
	movq	%r8, %r12
	movl	%ecx, %ebx
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	40(%rdi), %rdi
	movl	%ecx, %esi
	callq	get_long_term_pic@PLT
	leal	1(%r15), %ecx
	movl	(%r12), %edx
	cmpl	%r15d, %edx
	jle	.LBB1_2
# %bb.1:
	movslq	%edx, %rsi
	jmp	.LBB1_4
.LBB1_2:                                # %for.body.preheader
	movslq	%ecx, %rdi
	.p2align	4, 0x90
.LBB1_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%r14,%rdi,8), %rdx
	movq	%rdx, (%r14,%rdi,8)
	decq	%rdi
	movl	(%r12), %edx
	movslq	%edx, %rsi
	cmpq	%rsi, %rdi
	jg	.LBB1_3
.LBB1_4:                                # %for.end
	incl	%edx
	movl	%edx, (%r12)
	movq	%rax, (%r14,%rsi,8)
	movl	(%r12), %eax
	cmpl	%ecx, %eax
	jle	.LBB1_5
.LBB1_17:                               # %for.end31
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
	retq
.LBB1_5:                                # %for.body8.lr.ph
	.cfi_def_cfa_offset 48
	movslq	%eax, %rcx
	movslq	%r15d, %rdx
	decq	%rcx
	cmpl	$-1, %ebp
	jne	.LBB1_6
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_10:                               # %if.then22
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	%eax, %rdi
	incl	%eax
	movq	%rsi, (%r14,%rdi,8)
.LBB1_11:                               # %for.inc29
                                        #   in Loop: Header=BB1_6 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jg	.LBB1_17
.LBB1_6:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB1_11
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpb	$0, 40(%rsi)
	je	.LBB1_10
# %bb.8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	%ebx, 32(%rsi)
	jne	.LBB1_10
# %bb.9:                                # %lor.lhs.false17
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	%ebp, 344(%rsi)
	jne	.LBB1_10
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_15:                               # %if.then22.us
                                        #   in Loop: Header=BB1_12 Depth=1
	movslq	%eax, %rdi
	incl	%eax
	movq	%rsi, (%r14,%rdi,8)
.LBB1_16:                               # %for.inc29.us
                                        #   in Loop: Header=BB1_12 Depth=1
	incq	%rcx
	cmpq	%rdx, %rcx
	jg	.LBB1_17
.LBB1_12:                               # %for.body8.us
                                        # =>This Inner Loop Header: Depth=1
	movq	8(%r14,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB1_16
# %bb.13:                               # %if.then.us
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpb	$0, 40(%rsi)
	je	.LBB1_15
# %bb.14:                               # %lor.lhs.false.us
                                        #   in Loop: Header=BB1_12 Depth=1
	cmpl	%ebx, 32(%rsi)
	jne	.LBB1_15
	jmp	.LBB1_16
.Lfunc_end1:
	.size	reorder_long_term, .Lfunc_end1-reorder_long_term
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_i_slice_mvc          # -- Begin function init_lists_i_slice_mvc
	.p2align	4, 0x90
	.type	init_lists_i_slice_mvc,@function
init_lists_i_slice_mvc:                 # @init_lists_i_slice_mvc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, 13308(%rdi)
	movw	$0, 256(%rdi)
	retq
.Lfunc_end2:
	.size	init_lists_i_slice_mvc, .Lfunc_end2-init_lists_i_slice_mvc
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_p_slice_mvc          # -- Begin function init_lists_p_slice_mvc
	.p2align	4, 0x90
	.type	init_lists_p_slice_mvc,@function
init_lists_p_slice_mvc:                 # @init_lists_p_slice_mvc
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
	movq	%rdi, %rbx
	movq	(%rdi), %r12
	movq	40(%rdi), %r14
	movl	104(%rdi), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movl	1176(%rdi), %r13d
	movl	1184(%rdi), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	$0, 13308(%rdi)
	cmpl	$0, 184(%rdi)
	je	.LBB3_1
# %bb.20:                               # %if.else
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB3_22
# %bb.21:                               # %if.then93
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB3_22:                               # %if.end94
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB3_24
# %bb.23:                               # %if.then100
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB3_24:                               # %if.end101
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movl	48(%r14), %ecx
	xorl	%r15d, %r15d
	movl	$0, %eax
	testq	%rcx, %rcx
	movq	24(%rsp), %r12                  # 8-byte Reload
	je	.LBB3_39
# %bb.25:                               # %for.body106.lr.ph
	movq	24(%r14), %rdx
	cmpl	$1, %ecx
	jne	.LBB3_27
# %bb.26:
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB3_35:                               # %for.end128.loopexit.unr-lcssa
	testb	$1, %cl
	je	.LBB3_39
# %bb.36:                               # %for.body106.epil
	movq	(%rdx,%rsi,8), %rcx
	cmpl	$0, 4(%rcx)
	je	.LBB3_39
# %bb.37:                               # %land.lhs.true111.epil
	cmpl	%r13d, 72(%rcx)
	jne	.LBB3_39
# %bb.38:                               # %if.then118.epil
	movslq	%eax, %rdx
	incl	%eax
	movq	%rcx, (%r12,%rdx,8)
.LBB3_39:                               # %for.end128
	movslq	%eax, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_frame_num_desc, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	leaq	256(%rbx), %r8
	movb	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r12, %rsi
	movl	%ebp, %edx
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	52(%r14), %eax
	testq	%rax, %rax
	movq	40(%rsp), %r12                  # 8-byte Reload
	je	.LBB3_51
# %bb.40:                               # %for.body141.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB3_42
# %bb.41:
	xorl	%edx, %edx
	xorl	%r15d, %r15d
.LBB3_48:                               # %for.end158.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB3_51
# %bb.49:                               # %for.body141.epil
	movq	(%rcx,%rdx,8), %rax
	cmpl	%r13d, 72(%rax)
	jne	.LBB3_51
# %bb.50:                               # %if.then148.epil
	movslq	%r15d, %rcx
	incl	%r15d
	movq	%rax, (%r12,%rcx,8)
.LBB3_51:                               # %for.end158
	movslq	%r15d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r12, %rsi
	movl	%ebp, %edx
	movq	32(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	48(%rsp), %r12                  # 8-byte Reload
	movb	$0, 257(%rbx)
	cmpl	$0, 32(%rbx)
	jne	.LBB3_78
	jmp	.LBB3_53
.LBB3_1:                                # %for.cond.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB3_2
# %bb.3:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_9:                                # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB3_10
.LBB3_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB3_9
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB3_9
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB3_9
# %bb.7:                                # %land.lhs.true15
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	%r13d, 344(%rdx)
	jne	.LBB3_9
# %bb.8:                                # %if.then22
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB3_9
.LBB3_27:                               # %for.body106.lr.ph.new
	movl	%ecx, %r10d
	andl	$-2, %r10d
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.LBB3_28
	.p2align	4, 0x90
.LBB3_34:                               # %for.inc126.1
                                        #   in Loop: Header=BB3_28 Depth=1
	addq	$2, %rsi
	cmpq	%rsi, %r10
	je	.LBB3_35
.LBB3_28:                               # %for.body106
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %r8
	cmpl	$0, 4(%r8)
	je	.LBB3_31
# %bb.29:                               # %land.lhs.true111
                                        #   in Loop: Header=BB3_28 Depth=1
	cmpl	%r13d, 72(%r8)
	jne	.LBB3_31
# %bb.30:                               # %if.then118
                                        #   in Loop: Header=BB3_28 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movq	%r8, (%r12,%r9,8)
.LBB3_31:                               # %for.inc126
                                        #   in Loop: Header=BB3_28 Depth=1
	movq	8(%rdx,%rsi,8), %r8
	cmpl	$0, 4(%r8)
	je	.LBB3_34
# %bb.32:                               # %land.lhs.true111.1
                                        #   in Loop: Header=BB3_28 Depth=1
	cmpl	%r13d, 72(%r8)
	jne	.LBB3_34
# %bb.33:                               # %if.then118.1
                                        #   in Loop: Header=BB3_28 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movq	%r8, (%r12,%r9,8)
	jmp	.LBB3_34
.LBB3_42:                               # %for.body141.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	jmp	.LBB3_43
	.p2align	4, 0x90
.LBB3_47:                               # %for.inc156.1
                                        #   in Loop: Header=BB3_43 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB3_48
.LBB3_43:                               # %for.body141
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r13d, 72(%rdi)
	je	.LBB3_44
# %bb.45:                               # %for.inc156
                                        #   in Loop: Header=BB3_43 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r13d, 72(%rdi)
	jne	.LBB3_47
	jmp	.LBB3_46
	.p2align	4, 0x90
.LBB3_44:                               # %if.then148
                                        #   in Loop: Header=BB3_43 Depth=1
	movslq	%r15d, %r8
	incl	%r15d
	movq	%rdi, (%r12,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r13d, 72(%rdi)
	jne	.LBB3_47
.LBB3_46:                               # %if.then148.1
                                        #   in Loop: Header=BB3_43 Depth=1
	movslq	%r15d, %r8
	incl	%r15d
	movq	%rdi, (%r12,%r8,8)
	jmp	.LBB3_47
.LBB3_2:
	xorl	%ebp, %ebp
.LBB3_10:                               # %for.end
	movq	264(%rbx), %rdi
	movslq	%ebp, %r15
	movl	$8, %edx
	movl	$compare_pic_by_pic_num_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB3_11
# %bb.12:                               # %for.body39.lr.ph
	xorl	%eax, %eax
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_17:                               # %for.inc73
                                        #   in Loop: Header=BB3_13 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB3_18
.LBB3_13:                               # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB3_17
# %bb.14:                               # %if.then45
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB3_17
# %bb.15:                               # %land.lhs.true53
                                        #   in Loop: Header=BB3_13 Depth=1
	cmpl	%r13d, 344(%rdx)
	jne	.LBB3_17
# %bb.16:                               # %if.then61
                                        #   in Loop: Header=BB3_13 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB3_17
.LBB3_18:                               # %for.end75.loopexit
	movzbl	256(%rbx), %eax
	movl	%ebp, %r15d
	jmp	.LBB3_19
.LBB3_11:
	movl	%r15d, %eax
.LBB3_19:                               # %for.end75
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	subl	%eax, %ebp
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movb	$0, 257(%rbx)
	cmpl	$0, 32(%rbx)
	jne	.LBB3_78
.LBB3_53:                               # %if.then170
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	je	.LBB3_54
# %bb.55:                               # %if.end178
	leaq	13308(%rbx), %r8
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB3_56
.LBB3_61:                               # %if.else208
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	12(%rsp), %r9d                  # 4-byte Reload
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB3_70
# %bb.62:                               # %if.else208
	cmpl	$1, %esi
	jne	.LBB3_78
# %bb.63:                               # %for.cond.preheader.i
	testl	%edx, %edx
	jle	.LBB3_78
# %bb.64:                               # %for.body.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB3_66
# %bb.65:
	xorl	%edi, %edi
	jmp	.LBB3_68
.LBB3_54:                               # %if.then177
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
	leaq	13308(%rbx), %r8
	movl	184(%rbx), %esi
	testl	%esi, %esi
	jne	.LBB3_61
.LBB3_56:                               # %if.then185
	movzbl	256(%rbx), %r15d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	12(%rsp), %r9d                  # 4-byte Reload
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB3_60
# %bb.57:                               # %for.body192.lr.ph
	movzbl	%r15b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_58:                               # %for.body192
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r15,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r15,8)
	incq	%r15
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r15
	jb	.LBB3_58
# %bb.59:                               # %for.end204.loopexit
	addl	%eax, %r15d
.LBB3_60:                               # %for.end204
	movb	%r15b, 256(%rbx)
	jmp	.LBB3_78
.LBB3_70:                               # %if.then7.i
	testl	%edx, %edx
	jle	.LBB3_78
# %bb.71:                               # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB3_73
# %bb.72:
	xorl	%edi, %edi
	jmp	.LBB3_75
.LBB3_66:                               # %for.body.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_67:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB3_67
.LBB3_68:                               # %if.end220.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB3_78
# %bb.69:                               # %for.body.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB3_77
.LBB3_73:                               # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_74:                               # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB3_74
.LBB3_75:                               # %if.end220.loopexit463.unr-lcssa
	testb	$1, %dl
	je	.LBB3_78
# %bb.76:                               # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB3_77:                               # %if.end220
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB3_78:                               # %if.end220
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB3_82
# %bb.79:                               # %for.body244.lr.ph
	movl	%ecx, %eax
	movq	856488(%r12), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB3_80:                               # %for.body244
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB3_80
# %bb.81:                               # %for.end251.loopexit
	movzbl	257(%rbx), %eax
.LBB3_82:                               # %for.end251
	cmpb	$32, %al
	ja	.LBB3_85
# %bb.83:                               # %for.body258.lr.ph
	movzbl	%al, %eax
	movq	856488(%r12), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB3_84:                               # %for.body258
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB3_84
.LBB3_85:                               # %for.end266
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
.Lfunc_end3:
	.size	init_lists_p_slice_mvc, .Lfunc_end3-init_lists_p_slice_mvc
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
.Lfunc_end4:
	.size	compare_pic_by_pic_num_desc, .Lfunc_end4-compare_pic_by_pic_num_desc
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
.Lfunc_end5:
	.size	compare_pic_by_lt_pic_num_asc, .Lfunc_end5-compare_pic_by_lt_pic_num_asc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc,@function
compare_fs_by_frame_num_desc:           # @compare_fs_by_frame_num_desc
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
	.size	compare_fs_by_frame_num_desc, .Lfunc_end6-compare_fs_by_frame_num_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc,@function
compare_fs_by_lt_pic_idx_asc:           # @compare_fs_by_lt_pic_idx_asc
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
.Lfunc_end7:
	.size	compare_fs_by_lt_pic_idx_asc, .Lfunc_end7-compare_fs_by_lt_pic_idx_asc
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_b_slice_mvc          # -- Begin function init_lists_b_slice_mvc
	.p2align	4, 0x90
	.type	init_lists_b_slice_mvc,@function
init_lists_b_slice_mvc:                 # @init_lists_b_slice_mvc
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
	movq	(%rdi), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	40(%rdi), %r14
	movl	104(%rdi), %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movl	1176(%rdi), %edi
	movl	1184(%rbx), %ebp
	movq	$0, 13308(%rbx)
	cmpl	$0, 184(%rbx)
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	je	.LBB8_1
# %bb.44:                               # %if.else
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB8_46
# %bb.45:                               # %if.then220
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB8_46:                               # %if.end221
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB8_48
# %bb.47:                               # %if.then227
	movl	$.L.str.3, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB8_48:                               # %if.end228
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB8_49
# %bb.50:                               # %if.end235
	movw	$256, 256(%rbx)                 # imm = 0x100
	movl	48(%r14), %eax
	testq	%rax, %rax
	je	.LBB8_51
.LBB8_52:                               # %for.body244.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r8                    # 8-byte Reload
	jmp	.LBB8_53
	.p2align	4, 0x90
.LBB8_57:                               # %for.inc274
                                        #   in Loop: Header=BB8_53 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB8_58
.LBB8_53:                               # %for.body244
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB8_57
# %bb.54:                               # %if.then250
                                        #   in Loop: Header=BB8_53 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jl	.LBB8_57
# %bb.55:                               # %land.lhs.true258
                                        #   in Loop: Header=BB8_53 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB8_57
# %bb.56:                               # %if.then265
                                        #   in Loop: Header=BB8_53 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB8_57
.LBB8_1:                                # %for.cond.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB8_2
# %bb.3:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_10:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB8_11
.LBB8_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB8_10
# %bb.5:                                # %if.then6
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB8_10
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB8_10
# %bb.7:                                # %land.lhs.true15
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB8_10
# %bb.8:                                # %if.then22
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jl	.LBB8_10
# %bb.9:                                # %if.then28
                                        #   in Loop: Header=BB8_4 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r12d, %rsi
	incl	%r12d
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB8_10
.LBB8_49:                               # %if.then234
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
	movw	$256, 256(%rbx)                 # imm = 0x100
	movl	48(%r14), %eax
	testq	%rax, %rax
	jne	.LBB8_52
.LBB8_51:
	xorl	%r13d, %r13d
.LBB8_58:                               # %for.end276
	movslq	%r13d, %r12
	movl	$8, %edx
	movl	$compare_fs_by_poc_desc, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r13d, %ebp
	testq	%rax, %rax
	je	.LBB8_65
# %bb.59:                               # %for.body282.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	movl	%r13d, %ebp
	jmp	.LBB8_60
	.p2align	4, 0x90
.LBB8_64:                               # %for.inc312
                                        #   in Loop: Header=BB8_60 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB8_65
.LBB8_60:                               # %for.body282
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB8_64
# %bb.61:                               # %if.then288
                                        #   in Loop: Header=BB8_60 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jge	.LBB8_64
# %bb.62:                               # %land.lhs.true296
                                        #   in Loop: Header=BB8_60 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB8_64
# %bb.63:                               # %if.then303
                                        #   in Loop: Header=BB8_60 Depth=1
	movslq	%ebp, %rdi
	incl	%ebp
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB8_64
.LBB8_65:                               # %for.end314
	leaq	(%r15,%r12,8), %rdi
	movl	%ebp, %eax
	subl	%r12d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_poc_asc, %ecx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	callq	qsort@PLT
	testl	%r12d, %r12d
	jle	.LBB8_73
# %bb.66:                               # %for.body322.preheader
	movl	%r13d, %eax
	cmpl	$7, %r13d
	ja	.LBB8_70
# %bb.67:
	xorl	%ecx, %ecx
	jmp	.LBB8_68
.LBB8_70:                               # %vector.ph
	movl	%eax, %ecx
	andl	$2147483640, %ecx               # imm = 0x7FFFFFF8
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$268435455, %edx                # imm = 0xFFFFFFF
	shlq	$6, %rdx
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	shlq	$3, %r12
	subq	%r12, %rsi
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_71:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	32(%r15,%rdi), %xmm2
	movups	48(%r15,%rdi), %xmm3
	movups	%xmm0, -48(%rsi,%rdi)
	movups	%xmm1, -32(%rsi,%rdi)
	movups	%xmm2, -16(%rsi,%rdi)
	movups	%xmm3, (%rsi,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB8_71
# %bb.72:                               # %middle.block
	cmpl	%eax, %ecx
	je	.LBB8_73
.LBB8_68:                               # %for.body322.preheader1043
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rdx,%rsi,8), %rdx
	.p2align	4, 0x90
.LBB8_69:                               # %for.body322
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB8_69
.LBB8_73:                               # %for.cond332.preheader
	leaq	256(%rbx), %r12
	leaq	257(%rbx), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	%r13d, %ebp
	jle	.LBB8_75
# %bb.74:                               # %for.body335.preheader
	notl	%r13d
	addl	%ebp, %r13d
	leaq	8(,%r13,8), %rdx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB8_75:                               # %for.end343
	movw	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	xorl	%r13d, %r13d
	movq	%r15, %rsi
	movl	%ebp, %edx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	184(%rbx), %edi
	movq	272(%rbx), %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%ebp, %edx
	movq	32(%rsp), %r8                   # 8-byte Reload
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	52(%r14), %eax
	testq	%rax, %rax
	je	.LBB8_87
# %bb.76:                               # %for.body362.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB8_78
# %bb.77:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
.LBB8_84:                               # %for.end379.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB8_87
# %bb.85:                               # %for.body362.epil
	movq	(%rcx,%rdx,8), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	%ecx, 72(%rax)
	jne	.LBB8_87
# %bb.86:                               # %if.then369.epil
	movslq	%r13d, %rcx
	incl	%r13d
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
.LBB8_87:                               # %for.end379
	movslq	%r13d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	40(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	%r12, %r8
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	184(%rbx), %edi
	movq	272(%rbx), %rcx
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	32(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movzbl	256(%rbx), %eax
	movzbl	257(%rbx), %ebp
	jmp	.LBB8_88
.LBB8_78:                               # %for.body362.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	40(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB8_79
	.p2align	4, 0x90
.LBB8_83:                               # %for.inc377.1
                                        #   in Loop: Header=BB8_79 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB8_84
.LBB8_79:                               # %for.body362
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	je	.LBB8_80
# %bb.81:                               # %for.inc377
                                        #   in Loop: Header=BB8_79 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB8_83
	jmp	.LBB8_82
	.p2align	4, 0x90
.LBB8_80:                               # %if.then369
                                        #   in Loop: Header=BB8_79 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r10,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB8_83
.LBB8_82:                               # %if.then369.1
                                        #   in Loop: Header=BB8_79 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r10,%r8,8)
	jmp	.LBB8_83
.LBB8_2:
	xorl	%r12d, %r12d
.LBB8_11:                               # %for.end
	movq	264(%rbx), %rdi
	movslq	%r12d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_poc_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r12d, %ebp
	testl	%eax, %eax
	je	.LBB8_20
# %bb.12:                               # %for.body45.lr.ph
	xorl	%ecx, %ecx
	movl	%r12d, %ebp
	jmp	.LBB8_13
	.p2align	4, 0x90
.LBB8_19:                               # %for.inc96
                                        #   in Loop: Header=BB8_13 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB8_20
.LBB8_13:                               # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB8_19
# %bb.14:                               # %if.then52
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB8_19
# %bb.15:                               # %land.lhs.true59
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB8_19
# %bb.16:                               # %land.lhs.true66
                                        #   in Loop: Header=BB8_13 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB8_19
# %bb.17:                               # %if.then74
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jge	.LBB8_19
# %bb.18:                               # %if.then83
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	264(%rbx), %rax
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rax,%rsi,8)
	movl	48(%r14), %eax
	jmp	.LBB8_19
.LBB8_20:                               # %for.end98
	leaq	(,%r15,8), %r13
	movq	264(%rbx), %rdi
	addq	%r13, %rdi
	movl	%ebp, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_poc_asc, %ecx
	callq	qsort@PLT
	testl	%r15d, %r15d
	jle	.LBB8_26
# %bb.21:                               # %for.body107.lr.ph
	movl	%r12d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r12d
	jae	.LBB8_34
# %bb.22:
	xorl	%ecx, %ecx
	jmp	.LBB8_23
.LBB8_34:                               # %for.body107.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	subq	%r13, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_35:                               # %for.body107
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	8(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 8(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	16(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 16(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	24(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 24(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB8_35
.LBB8_23:                               # %for.cond120.preheader.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB8_26
# %bb.24:                               # %for.body107.epil.preheader
	movslq	%ebp, %rdx
	shlq	$3, %rdx
	subq	%r13, %rdx
	.p2align	4, 0x90
.LBB8_25:                               # %for.body107.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB8_25
.LBB8_26:                               # %for.cond120.preheader
	movl	%ebp, %edx
	subl	%r12d, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB8_32
# %bb.27:                               # %for.body123.lr.ph
	movslq	%ebp, %rax
	movq	%r15, %rcx
	testb	$1, %dl
	je	.LBB8_29
# %bb.28:                               # %for.body123.prol
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rdx
	movq	(%rcx,%r15,8), %rcx
	movq	%rcx, (%rdx)
	leaq	1(%r15), %rcx
.LBB8_29:                               # %for.body123.prol.loopexit
	leaq	-1(%rax), %rdx
	cmpq	%r15, %rdx
	je	.LBB8_32
# %bb.30:                               # %for.body123.preheader
	negq	%r13
	.p2align	4, 0x90
.LBB8_31:                               # %for.body123
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	264(%rbx), %rdx
	movq	8(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, 8(%rsi,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB8_31
.LBB8_32:                               # %for.end135
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB8_33
# %bb.36:                               # %for.body143.lr.ph
	xorl	%eax, %eax
	jmp	.LBB8_37
	.p2align	4, 0x90
.LBB8_41:                               # %for.inc185
                                        #   in Loop: Header=BB8_37 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB8_42
.LBB8_37:                               # %for.body143
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB8_41
# %bb.38:                               # %if.then149
                                        #   in Loop: Header=BB8_37 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB8_41
# %bb.39:                               # %land.lhs.true157
                                        #   in Loop: Header=BB8_37 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB8_41
# %bb.40:                               # %if.then165
                                        #   in Loop: Header=BB8_37 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movq	32(%r14), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movq	272(%rbx), %rdx
	leal	1(%rsi), %ebp
	movq	%rcx, (%rdx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB8_41
.LBB8_42:                               # %for.end187.loopexit
	movzbl	256(%rbx), %eax
	jmp	.LBB8_43
.LBB8_33:
	movl	%ebp, %eax
.LBB8_43:                               # %for.end187
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movsbq	256(%rbx), %rax
	leaq	(,%rax,8), %rdi
	addq	272(%rbx), %rdi
	movslq	%ebp, %rsi
	subq	%rax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movl	%ebp, %eax
.LBB8_88:                               # %if.end391
	cmpb	%bpl, %al
	setne	%cl
	cmpb	$2, %al
	setl	%al
	orb	%cl, %al
	jne	.LBB8_93
# %bb.89:                               # %for.cond407.preheader
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rax
	movzbl	%bpl, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_91:                               # %for.body413
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %rdi
	cmpq	(%rax,%rsi,8), %rdi
	jne	.LBB8_93
# %bb.90:                               # %for.cond407
                                        #   in Loop: Header=BB8_91 Depth=1
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB8_91
# %bb.92:                               # %if.then430
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, (%rax)
	movq	272(%rbx), %rax
	movq	%rcx, 8(%rax)
.LBB8_93:                               # %if.end444
	cmpl	$0, 32(%rbx)
	je	.LBB8_94
.LBB8_142:                              # %if.end540
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB8_146
# %bb.143:                              # %for.body564.lr.ph
	movl	%ecx, %eax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	856488(%rcx), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB8_144:                              # %for.body564
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB8_144
# %bb.145:                              # %for.end571.loopexit
	movzbl	257(%rbx), %eax
.LBB8_146:                              # %for.end571
	cmpb	$32, %al
	ja	.LBB8_149
# %bb.147:                              # %for.body578.lr.ph
	movzbl	%al, %eax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	856488(%rcx), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB8_148:                              # %for.body578
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB8_148
.LBB8_149:                              # %for.end586
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
.LBB8_94:                               # %if.then447
	.cfi_def_cfa_offset 128
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	jne	.LBB8_96
# %bb.95:                               # %if.then454
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
.LBB8_96:                               # %if.end455
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13328(%rbx)
	testq	%rax, %rax
	movq	64(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB8_98
# %bb.97:                               # %if.then462
	movl	$.L.str.4, %edi
	callq	no_mem_exit@PLT
.LBB8_98:                               # %if.end463
	leaq	13308(%rbx), %r8
	leaq	13312(%rbx), %r15
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB8_99
# %bb.108:                              # %if.else518
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movl	28(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB8_117
# %bb.109:                              # %if.else518
	cmpl	$1, %esi
	jne	.LBB8_125
# %bb.110:                              # %for.cond.preheader.i
	testl	%edx, %edx
	jle	.LBB8_125
# %bb.111:                              # %for.body.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB8_113
# %bb.112:
	xorl	%edi, %edi
	jmp	.LBB8_115
.LBB8_99:                               # %if.then470
	movzbl	256(%rbx), %r12d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movl	28(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	16(%rsp), %r13                  # 8-byte Reload
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB8_103
# %bb.100:                              # %for.body479.lr.ph
	movzbl	%r12b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_101:                              # %for.body479
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r12,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r12,8)
	incq	%r12
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r12
	jb	.LBB8_101
# %bb.102:                              # %for.end491.loopexit
	addl	%eax, %r12d
.LBB8_103:                              # %for.end491
	movb	%r12b, 256(%rbx)
	movzbl	257(%rbx), %eax
	cmpl	$0, 13312(%rbx)
	je	.LBB8_107
# %bb.104:                              # %for.body502.lr.ph
	movzbl	%al, %ecx
	movsbq	%cl, %rdx
	shlq	$3, %rdx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_105:                              # %for.body502
                                        # =>This Inner Loop Header: Depth=1
	movq	13328(%rbx), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	48(%rsi), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rax,8)
	incq	%rax
	movl	13312(%rbx), %esi
	cmpq	%rsi, %rax
	jb	.LBB8_105
# %bb.106:                              # %for.end514.loopexit
	addl	%ecx, %eax
.LBB8_107:                              # %for.end514
	movb	%al, 257(%rbx)
	jmp	.LBB8_142
.LBB8_117:                              # %if.then7.i
	testl	%edx, %edx
	jle	.LBB8_125
# %bb.118:                              # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB8_120
# %bb.119:
	xorl	%edi, %edi
	jmp	.LBB8_122
.LBB8_113:                              # %for.body.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_114:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB8_114
.LBB8_115:                              # %gen_pic_list_from_frame_interview_list.exit.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB8_125
# %bb.116:                              # %for.body.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB8_124
.LBB8_120:                              # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_121:                              # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB8_121
.LBB8_122:                              # %gen_pic_list_from_frame_interview_list.exit.loopexit1042.unr-lcssa
	testb	$1, %dl
	je	.LBB8_125
# %bb.123:                              # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB8_124:                              # %gen_pic_list_from_frame_interview_list.exit
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB8_125:                              # %gen_pic_list_from_frame_interview_list.exit
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	movl	$1, %edx
	movq	%r15, %r8
	movl	28(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movl	13312(%rbx), %edx
	movq	272(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB8_134
# %bb.126:                              # %gen_pic_list_from_frame_interview_list.exit
	cmpl	$1, %esi
	jne	.LBB8_142
# %bb.127:                              # %for.cond.preheader.i886
	testl	%edx, %edx
	jle	.LBB8_142
# %bb.128:                              # %for.body.preheader.i888
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB8_130
# %bb.129:
	xorl	%edi, %edi
	jmp	.LBB8_132
.LBB8_134:                              # %if.then7.i872
	testl	%edx, %edx
	jle	.LBB8_142
# %bb.135:                              # %for.body11.preheader.i874
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB8_137
# %bb.136:
	xorl	%edi, %edi
	jmp	.LBB8_139
.LBB8_130:                              # %for.body.preheader.i888.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_131:                              # %for.body.i891
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB8_131
.LBB8_132:                              # %if.end540.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB8_142
# %bb.133:                              # %for.body.i891.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB8_141
.LBB8_137:                              # %for.body11.preheader.i874.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_138:                              # %for.body11.i877
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB8_138
.LBB8_139:                              # %if.end540.loopexit1041.unr-lcssa
	testb	$1, %dl
	je	.LBB8_142
# %bb.140:                              # %for.body11.i877.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB8_141:                              # %if.end540
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	257(%rbx)
	jmp	.LBB8_142
.Lfunc_end8:
	.size	init_lists_b_slice_mvc, .Lfunc_end8-init_lists_b_slice_mvc
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
.Lfunc_end9:
	.size	compare_pic_by_poc_desc, .Lfunc_end9-compare_pic_by_poc_desc
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
.Lfunc_end10:
	.size	compare_pic_by_poc_asc, .Lfunc_end10-compare_pic_by_poc_asc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc,@function
compare_fs_by_poc_desc:                 # @compare_fs_by_poc_desc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	40(%rax), %eax
	movq	(%rsi), %rcx
	movl	40(%rcx), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setg	%dl
	negl	%edx
	cmpl	%ecx, %eax
	movl	$1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end11:
	.size	compare_fs_by_poc_desc, .Lfunc_end11-compare_fs_by_poc_desc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc,@function
compare_fs_by_poc_asc:                  # @compare_fs_by_poc_asc
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	movl	40(%rax), %eax
	movq	(%rsi), %rcx
	xorl	%edx, %edx
	cmpl	40(%rcx), %eax
	setg	%dl
	movl	$-1, %eax
	cmovgel	%edx, %eax
	retq
.Lfunc_end12:
	.size	compare_fs_by_poc_asc, .Lfunc_end12-compare_fs_by_poc_asc
	.cfi_endproc
                                        # -- End function
	.globl	init_lists_mvc                  # -- Begin function init_lists_mvc
	.p2align	4, 0x90
	.type	init_lists_mvc,@function
init_lists_mvc:                         # @init_lists_mvc
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
	movq	40(%rdi), %r14
	movl	104(%rdi), %ecx
	movl	1176(%rdi), %edi
	movl	1184(%rbx), %ebp
	movq	$0, 13308(%rbx)
	movl	164(%rbx), %eax
	cmpq	$4, %rax
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	ja	.LBB13_57
# %bb.1:                                # %entry
	jmpq	*.LJTI13_0(,%rax,8)
.LBB13_4:                               # %if.then13
	cmpl	$0, 184(%rbx)
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	je	.LBB13_5
# %bb.24:                               # %if.else
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB13_26
# %bb.25:                               # %if.then108
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB13_26:                              # %if.end109
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB13_28
# %bb.27:                               # %if.then115
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB13_28:                              # %if.end116
	movl	48(%r14), %ecx
	xorl	%r13d, %r13d
	movl	$0, %eax
	testq	%rcx, %rcx
	je	.LBB13_43
# %bb.29:                               # %for.body121.lr.ph
	movq	24(%r14), %rdx
	cmpl	$1, %ecx
	jne	.LBB13_31
# %bb.30:
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB13_39:                              # %for.end143.loopexit.unr-lcssa
	testb	$1, %cl
	je	.LBB13_43
# %bb.40:                               # %for.body121.epil
	movq	(%rdx,%rsi,8), %rcx
	cmpl	$0, 4(%rcx)
	je	.LBB13_43
# %bb.41:                               # %land.lhs.true126.epil
	movq	8(%rsp), %rdx                   # 8-byte Reload
	cmpl	%edx, 72(%rcx)
	jne	.LBB13_43
# %bb.42:                               # %if.then133.epil
	movslq	%eax, %rdx
	incl	%eax
	movq	%rcx, (%r15,%rdx,8)
.LBB13_43:                              # %for.end143
	movslq	%eax, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_frame_num_desc, %ecx
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	leaq	256(%rbx), %r8
	movb	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r15, %rsi
	movl	%ebp, %edx
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	52(%r14), %eax
	testq	%rax, %rax
	je	.LBB13_55
# %bb.44:                               # %for.body156.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB13_46
# %bb.45:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
.LBB13_52:                              # %for.end173.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB13_55
# %bb.53:                               # %for.body156.epil
	movq	(%rcx,%rdx,8), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	%ecx, 72(%rax)
	jne	.LBB13_55
# %bb.54:                               # %if.then163.epil
	movslq	%r13d, %rcx
	incl	%r13d
	movq	%rax, (%r12,%rcx,8)
.LBB13_55:                              # %for.end173
	movslq	%r13d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r12, %rsi
	movl	%ebp, %edx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	%r12, %rdi
	callq	free@PLT
	movq	32(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB13_56
.LBB13_2:                               # %if.then
	movw	$0, 256(%rbx)
	jmp	.LBB13_3
.LBB13_57:                              # %if.else183
	cmpl	$0, 184(%rbx)
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	je	.LBB13_58
# %bb.101:                              # %if.else427
	movl	40(%r14), %r12d
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB13_103
# %bb.102:                              # %if.then433
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB13_103:                             # %if.end434
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB13_105
# %bb.104:                              # %if.then440
	movl	$.L.str.3, %edi
	callq	no_mem_exit@PLT
	movl	40(%r14), %r12d
.LBB13_105:                             # %if.end441
	movl	$8, %esi
	movq	%r12, %rdi
	callq	calloc@PLT
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	jne	.LBB13_107
# %bb.106:                              # %if.then447
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB13_107:                             # %if.end448
	movw	$256, 256(%rbx)                 # imm = 0x100
	movl	48(%r14), %eax
	testq	%rax, %rax
	je	.LBB13_108
# %bb.109:                              # %for.body457.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r8                    # 8-byte Reload
	jmp	.LBB13_110
	.p2align	4, 0x90
.LBB13_114:                             # %for.inc487
                                        #   in Loop: Header=BB13_110 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB13_115
.LBB13_110:                             # %for.body457
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB13_114
# %bb.111:                              # %if.then463
                                        #   in Loop: Header=BB13_110 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jl	.LBB13_114
# %bb.112:                              # %land.lhs.true471
                                        #   in Loop: Header=BB13_110 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB13_114
# %bb.113:                              # %if.then478
                                        #   in Loop: Header=BB13_110 Depth=1
	movslq	%r13d, %rdi
	incl	%r13d
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB13_114
.LBB13_5:                               # %for.cond.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB13_6
# %bb.7:                                # %for.body.lr.ph
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	jmp	.LBB13_8
	.p2align	4, 0x90
.LBB13_13:                              # %for.inc
                                        #   in Loop: Header=BB13_8 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB13_14
.LBB13_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB13_13
# %bb.9:                                # %if.then19
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB13_13
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB13_13
# %bb.11:                               # %land.lhs.true28
                                        #   in Loop: Header=BB13_8 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB13_13
# %bb.12:                               # %if.then35
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB13_13
.LBB13_31:                              # %for.body121.lr.ph.new
	movl	%ecx, %edi
	andl	$-2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	8(%rsp), %r10                   # 8-byte Reload
	jmp	.LBB13_32
	.p2align	4, 0x90
.LBB13_38:                              # %for.inc141.1
                                        #   in Loop: Header=BB13_32 Depth=1
	addq	$2, %rsi
	cmpq	%rsi, %rdi
	je	.LBB13_39
.LBB13_32:                              # %for.body121
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %r8
	cmpl	$0, 4(%r8)
	je	.LBB13_35
# %bb.33:                               # %land.lhs.true126
                                        #   in Loop: Header=BB13_32 Depth=1
	cmpl	%r10d, 72(%r8)
	jne	.LBB13_35
# %bb.34:                               # %if.then133
                                        #   in Loop: Header=BB13_32 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movq	%r8, (%r15,%r9,8)
.LBB13_35:                              # %for.inc141
                                        #   in Loop: Header=BB13_32 Depth=1
	movq	8(%rdx,%rsi,8), %r8
	cmpl	$0, 4(%r8)
	je	.LBB13_38
# %bb.36:                               # %land.lhs.true126.1
                                        #   in Loop: Header=BB13_32 Depth=1
	cmpl	%r10d, 72(%r8)
	jne	.LBB13_38
# %bb.37:                               # %if.then133.1
                                        #   in Loop: Header=BB13_32 Depth=1
	movslq	%eax, %r9
	incl	%eax
	movq	%r8, (%r15,%r9,8)
	jmp	.LBB13_38
.LBB13_46:                              # %for.body156.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r9                    # 8-byte Reload
	jmp	.LBB13_47
	.p2align	4, 0x90
.LBB13_51:                              # %for.inc171.1
                                        #   in Loop: Header=BB13_47 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB13_52
.LBB13_47:                              # %for.body156
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	je	.LBB13_48
# %bb.49:                               # %for.inc171
                                        #   in Loop: Header=BB13_47 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB13_51
	jmp	.LBB13_50
	.p2align	4, 0x90
.LBB13_48:                              # %if.then163
                                        #   in Loop: Header=BB13_47 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r12,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB13_51
.LBB13_50:                              # %if.then163.1
                                        #   in Loop: Header=BB13_47 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r12,%r8,8)
	jmp	.LBB13_51
.LBB13_58:                              # %for.cond188.preheader
	movl	48(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB13_59
# %bb.60:                               # %for.body192.lr.ph
	xorl	%eax, %eax
	xorl	%r12d, %r12d
	jmp	.LBB13_61
	.p2align	4, 0x90
.LBB13_67:                              # %for.inc241
                                        #   in Loop: Header=BB13_61 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB13_68
.LBB13_61:                              # %for.body192
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB13_67
# %bb.62:                               # %if.then199
                                        #   in Loop: Header=BB13_61 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB13_67
# %bb.63:                               # %land.lhs.true206
                                        #   in Loop: Header=BB13_61 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB13_67
# %bb.64:                               # %land.lhs.true213
                                        #   in Loop: Header=BB13_61 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB13_67
# %bb.65:                               # %if.then221
                                        #   in Loop: Header=BB13_61 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jl	.LBB13_67
# %bb.66:                               # %if.then228
                                        #   in Loop: Header=BB13_61 Depth=1
	movq	264(%rbx), %rcx
	movslq	%r12d, %rsi
	incl	%r12d
	movq	%rdx, (%rcx,%rsi,8)
	movl	48(%r14), %ecx
	jmp	.LBB13_67
.LBB13_6:
	xorl	%ebp, %ebp
.LBB13_14:                              # %for.end
	movq	264(%rbx), %rdi
	movslq	%ebp, %r15
	movl	$8, %edx
	movl	$compare_pic_by_pic_num_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB13_15
# %bb.16:                               # %for.body54.lr.ph
	xorl	%eax, %eax
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB13_17
	.p2align	4, 0x90
.LBB13_21:                              # %for.inc88
                                        #   in Loop: Header=BB13_17 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB13_22
.LBB13_17:                              # %for.body54
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB13_21
# %bb.18:                               # %if.then60
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB13_21
# %bb.19:                               # %land.lhs.true68
                                        #   in Loop: Header=BB13_17 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB13_21
# %bb.20:                               # %if.then76
                                        #   in Loop: Header=BB13_17 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rcx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB13_21
.LBB13_22:                              # %for.end90.loopexit
	movzbl	256(%rbx), %eax
	movl	%ebp, %r15d
	jmp	.LBB13_23
.LBB13_15:
	movl	%r15d, %eax
.LBB13_23:                              # %for.end90
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	subl	%eax, %ebp
	movslq	%ebp, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%r15b, 256(%rbx)
.LBB13_56:                              # %if.end180
	movb	$0, 257(%rbx)
	xorl	%ebp, %ebp
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jge	.LBB13_146
	jmp	.LBB13_156
.LBB13_108:
	xorl	%r13d, %r13d
.LBB13_115:                             # %for.end489
	movslq	%r13d, %r12
	movl	$8, %edx
	movl	$compare_fs_by_poc_desc, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r13d, %ebp
	testq	%rax, %rax
	je	.LBB13_122
# %bb.116:                              # %for.body495.lr.ph
	movq	24(%r14), %rcx
	xorl	%edx, %edx
	movl	%r13d, %ebp
	jmp	.LBB13_117
	.p2align	4, 0x90
.LBB13_121:                             # %for.inc525
                                        #   in Loop: Header=BB13_117 Depth=1
	incq	%rdx
	cmpq	%rax, %rdx
	jae	.LBB13_122
.LBB13_117:                             # %for.body495
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	cmpl	$0, (%rsi)
	je	.LBB13_121
# %bb.118:                              # %if.then501
                                        #   in Loop: Header=BB13_117 Depth=1
	movl	104(%rbx), %edi
	cmpl	40(%rsi), %edi
	jge	.LBB13_121
# %bb.119:                              # %land.lhs.true509
                                        #   in Loop: Header=BB13_117 Depth=1
	cmpl	%r8d, 72(%rsi)
	jne	.LBB13_121
# %bb.120:                              # %if.then516
                                        #   in Loop: Header=BB13_117 Depth=1
	movslq	%ebp, %rdi
	incl	%ebp
	movq	%rsi, (%r15,%rdi,8)
	jmp	.LBB13_121
.LBB13_122:                             # %for.end527
	leaq	(%r15,%r12,8), %rdi
	movl	%ebp, %eax
	subl	%r12d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_fs_by_poc_asc, %ecx
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	callq	qsort@PLT
	testl	%r12d, %r12d
	jle	.LBB13_130
# %bb.123:                              # %for.body535.preheader
	movl	%r13d, %eax
	cmpl	$7, %r13d
	ja	.LBB13_127
# %bb.124:
	xorl	%ecx, %ecx
	jmp	.LBB13_125
.LBB13_127:                             # %vector.ph
	movl	%eax, %ecx
	andl	$2147483640, %ecx               # imm = 0x7FFFFFF8
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$268435455, %edx                # imm = 0xFFFFFFF
	shlq	$6, %rdx
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	shlq	$3, %r12
	subq	%r12, %rsi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_128:                             # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%r15,%rdi), %xmm0
	movdqu	16(%r15,%rdi), %xmm1
	movdqu	32(%r15,%rdi), %xmm2
	movdqu	48(%r15,%rdi), %xmm3
	movdqu	%xmm0, -48(%rsi,%rdi)
	movdqu	%xmm1, -32(%rsi,%rdi)
	movdqu	%xmm2, -16(%rsi,%rdi)
	movdqu	%xmm3, (%rsi,%rdi)
	addq	$64, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB13_128
# %bb.129:                              # %middle.block
	cmpl	%eax, %ecx
	je	.LBB13_130
.LBB13_125:                             # %for.body535.preheader1572
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	40(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rdx,%rsi,8), %rdx
	.p2align	4, 0x90
.LBB13_126:                             # %for.body535
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15,%rcx,8), %rsi
	movq	%rsi, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB13_126
.LBB13_130:                             # %for.cond545.preheader
	leaq	256(%rbx), %r12
	leaq	257(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpl	%r13d, %ebp
	jle	.LBB13_132
# %bb.131:                              # %for.body548.preheader
	notl	%r13d
	addl	%ebp, %r13d
	leaq	8(,%r13,8), %rdx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	64(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
.LBB13_132:                             # %for.end556
	movw	$0, 256(%rbx)
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	xorl	%r13d, %r13d
	movq	%r15, %rsi
	movl	%ebp, %edx
	movq	%r12, %r8
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	184(%rbx), %edi
	movq	272(%rbx), %rcx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%ebp, %edx
	movq	40(%rsp), %r8                   # 8-byte Reload
	xorl	%r9d, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	52(%r14), %eax
	testq	%rax, %rax
	je	.LBB13_144
# %bb.133:                              # %for.body575.lr.ph
	movq	32(%r14), %rcx
	cmpl	$1, %eax
	jne	.LBB13_135
# %bb.134:
	xorl	%edx, %edx
	xorl	%r13d, %r13d
.LBB13_141:                             # %for.end592.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB13_144
# %bb.142:                              # %for.body575.epil
	movq	(%rcx,%rdx,8), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	%ecx, 72(%rax)
	jne	.LBB13_144
# %bb.143:                              # %if.then582.epil
	movslq	%r13d, %rcx
	incl	%r13d
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rax, (%rdx,%rcx,8)
.LBB13_144:                             # %for.end592
	movslq	%r13d, %rbp
	movl	$8, %edx
	movl	$compare_fs_by_lt_pic_idx_asc, %ecx
	movq	48(%rsp), %r13                  # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	qsort@PLT
	movl	184(%rbx), %edi
	movq	264(%rbx), %rcx
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	%r12, %r8
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movl	184(%rbx), %edi
	movq	272(%rbx), %rcx
	movq	%r13, %rsi
	movl	%ebp, %edx
	movq	40(%rsp), %r8                   # 8-byte Reload
	movl	$1, %r9d
	callq	gen_pic_list_from_frame_list@PLT
	movq	%r15, %rdi
	callq	free@PLT
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	free@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movzbl	257(%rbx), %ebp
	movq	32(%rsp), %r13                  # 8-byte Reload
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jge	.LBB13_146
	jmp	.LBB13_156
.LBB13_135:                             # %for.body575.lr.ph.new
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%edx, %edx
	xorl	%r13d, %r13d
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	48(%rsp), %r10                  # 8-byte Reload
	jmp	.LBB13_136
	.p2align	4, 0x90
.LBB13_140:                             # %for.inc590.1
                                        #   in Loop: Header=BB13_136 Depth=1
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	je	.LBB13_141
.LBB13_136:                             # %for.body575
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	je	.LBB13_137
# %bb.138:                              # %for.inc590
                                        #   in Loop: Header=BB13_136 Depth=1
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB13_140
	jmp	.LBB13_139
	.p2align	4, 0x90
.LBB13_137:                             # %if.then582
                                        #   in Loop: Header=BB13_136 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r10,%r8,8)
	movq	8(%rcx,%rdx,8), %rdi
	cmpl	%r9d, 72(%rdi)
	jne	.LBB13_140
.LBB13_139:                             # %if.then582.1
                                        #   in Loop: Header=BB13_136 Depth=1
	movslq	%r13d, %r8
	incl	%r13d
	movq	%rdi, (%r10,%r8,8)
	jmp	.LBB13_140
.LBB13_59:
	xorl	%r12d, %r12d
.LBB13_68:                              # %for.end243
	movq	264(%rbx), %rdi
	movslq	%r12d, %r15
	movl	$8, %edx
	movl	$compare_pic_by_poc_desc, %ecx
	movq	%r15, %rsi
	callq	qsort@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	48(%r14), %eax
	movl	%r12d, %ebp
	testl	%eax, %eax
	je	.LBB13_77
# %bb.69:                               # %for.body251.lr.ph
	xorl	%ecx, %ecx
	movl	%r12d, %ebp
	jmp	.LBB13_70
	.p2align	4, 0x90
.LBB13_76:                              # %for.inc302
                                        #   in Loop: Header=BB13_70 Depth=1
	incq	%rcx
	movl	%eax, %edx
	cmpq	%rdx, %rcx
	jae	.LBB13_77
.LBB13_70:                              # %for.body251
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%r14), %rdx
	movq	(%rdx,%rcx,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB13_76
# %bb.71:                               # %if.then258
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	48(%rdx), %rdx
	cmpl	$0, 44(%rdx)
	je	.LBB13_76
# %bb.72:                               # %land.lhs.true265
                                        #   in Loop: Header=BB13_70 Depth=1
	cmpb	$0, 40(%rdx)
	jne	.LBB13_76
# %bb.73:                               # %land.lhs.true272
                                        #   in Loop: Header=BB13_70 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB13_76
# %bb.74:                               # %if.then280
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	76(%rbx), %esi
	cmpl	4(%rdx), %esi
	jge	.LBB13_76
# %bb.75:                               # %if.then289
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	264(%rbx), %rax
	movslq	%ebp, %rsi
	incl	%ebp
	movq	%rdx, (%rax,%rsi,8)
	movl	48(%r14), %eax
	jmp	.LBB13_76
.LBB13_77:                              # %for.end304
	leaq	(,%r15,8), %r13
	movq	264(%rbx), %rdi
	addq	%r13, %rdi
	movl	%ebp, %eax
	subl	%r15d, %eax
	movslq	%eax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_poc_asc, %ecx
	callq	qsort@PLT
	testl	%r15d, %r15d
	jle	.LBB13_83
# %bb.78:                               # %for.body314.lr.ph
	movl	%r12d, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %r12d
	jae	.LBB13_91
# %bb.79:
	xorl	%ecx, %ecx
	jmp	.LBB13_80
.LBB13_91:                              # %for.body314.lr.ph.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movslq	%ebp, %rsi
	shlq	$3, %rsi
	subq	%r13, %rsi
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB13_92:                              # %for.body314
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdi
	movq	(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, (%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	8(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 8(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	16(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 16(%r8,%rcx,8)
	movq	264(%rbx), %rdi
	movq	24(%rdi,%rcx,8), %rdi
	movq	272(%rbx), %r8
	addq	%rsi, %r8
	movq	%rdi, 24(%r8,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB13_92
.LBB13_80:                              # %for.cond327.preheader.loopexit.unr-lcssa
	testq	%rax, %rax
	je	.LBB13_83
# %bb.81:                               # %for.body314.epil.preheader
	movslq	%ebp, %rdx
	shlq	$3, %rdx
	subq	%r13, %rdx
	.p2align	4, 0x90
.LBB13_82:                              # %for.body314.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	(%rsi,%rcx,8), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rcx,8)
	incq	%rcx
	decq	%rax
	jne	.LBB13_82
.LBB13_83:                              # %for.cond327.preheader
	movl	%ebp, %edx
	subl	%r12d, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jle	.LBB13_89
# %bb.84:                               # %for.body330.lr.ph
	movslq	%ebp, %rax
	movq	%r15, %rcx
	testb	$1, %dl
	je	.LBB13_86
# %bb.85:                               # %for.body330.prol
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rdx
	movq	(%rcx,%r15,8), %rcx
	movq	%rcx, (%rdx)
	leaq	1(%r15), %rcx
.LBB13_86:                              # %for.body330.prol.loopexit
	leaq	-1(%rax), %rdx
	cmpq	%r15, %rdx
	je	.LBB13_89
# %bb.87:                               # %for.body330.preheader
	negq	%r13
	.p2align	4, 0x90
.LBB13_88:                              # %for.body330
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, (%rsi,%rcx,8)
	movq	264(%rbx), %rdx
	movq	8(%rdx,%rcx,8), %rdx
	movq	272(%rbx), %rsi
	addq	%r13, %rsi
	movq	%rdx, 8(%rsi,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	.LBB13_88
.LBB13_89:                              # %for.end342
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movl	52(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB13_90
# %bb.93:                               # %for.body352.lr.ph
	xorl	%eax, %eax
	movq	32(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB13_94
	.p2align	4, 0x90
.LBB13_98:                              # %for.inc395
                                        #   in Loop: Header=BB13_94 Depth=1
	incq	%rax
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jae	.LBB13_99
.LBB13_94:                              # %for.body352
                                        # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rdx
	movq	(%rdx,%rax,8), %rdx
	cmpl	$3, (%rdx)
	jne	.LBB13_98
# %bb.95:                               # %if.then359
                                        #   in Loop: Header=BB13_94 Depth=1
	movq	48(%rdx), %rdx
	cmpb	$0, 40(%rdx)
	je	.LBB13_98
# %bb.96:                               # %land.lhs.true367
                                        #   in Loop: Header=BB13_94 Depth=1
	cmpl	%edi, 344(%rdx)
	jne	.LBB13_98
# %bb.97:                               # %if.then375
                                        #   in Loop: Header=BB13_94 Depth=1
	movq	264(%rbx), %rcx
	movslq	%ebp, %rsi
	movq	%rdx, (%rcx,%rsi,8)
	movq	32(%r14), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	48(%rcx), %rcx
	movq	272(%rbx), %rdx
	leal	1(%rsi), %ebp
	movq	%rcx, (%rdx,%rsi,8)
	movl	52(%r14), %ecx
	jmp	.LBB13_98
.LBB13_99:                              # %for.end397.loopexit
	movzbl	256(%rbx), %eax
	jmp	.LBB13_100
.LBB13_90:
	movl	%ebp, %eax
	movq	32(%rsp), %r13                  # 8-byte Reload
.LBB13_100:                             # %for.end397
	movsbq	%al, %rax
	leaq	(,%rax,8), %rdi
	addq	264(%rbx), %rdi
	movsbl	%al, %eax
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movsbq	256(%rbx), %rax
	leaq	(,%rax,8), %rdi
	addq	272(%rbx), %rdi
	movslq	%ebp, %rsi
	subq	%rax, %rsi
	movl	$8, %edx
	movl	$compare_pic_by_lt_pic_num_asc, %ecx
	callq	qsort@PLT
	movb	%bpl, 257(%rbx)
	movb	%bpl, 256(%rbx)
	movzbl	256(%rbx), %eax
	cmpb	$2, %al
	jl	.LBB13_156
.LBB13_146:                             # %if.end605
	cmpb	%bpl, %al
	jne	.LBB13_156
# %bb.147:                              # %for.cond621.preheader
	movq	264(%rbx), %rcx
	movq	272(%rbx), %rax
	movzbl	%bpl, %edx
	cmpb	$8, %bpl
	jae	.LBB13_149
# %bb.148:
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.LBB13_152
.LBB13_149:                             # %vector.ph1543
	movl	%edx, %esi
	andl	$-8, %esi
	leal	(,%rdx,8), %edi
	andl	$-64, %edi
	pxor	%xmm0, %xmm0
	xorl	%r8d, %r8d
	pcmpeqd	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB13_150:                             # %vector.body1547
                                        # =>This Inner Loop Header: Depth=1
	movdqu	(%rcx,%r8), %xmm5
	movdqu	16(%rcx,%r8), %xmm6
	movdqu	32(%rcx,%r8), %xmm7
	movdqu	48(%rcx,%r8), %xmm8
	movdqu	(%rax,%r8), %xmm9
	pcmpeqd	%xmm5, %xmm9
	movdqu	16(%rax,%r8), %xmm5
	pcmpeqd	%xmm6, %xmm5
	movdqu	32(%rax,%r8), %xmm6
	pcmpeqd	%xmm7, %xmm6
	movdqu	48(%rax,%r8), %xmm7
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
	addq	$64, %r8
	cmpq	%r8, %rdi
	jne	.LBB13_150
# %bb.151:                              # %middle.block1540
	por	%xmm0, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	psllq	$63, %xmm1
	movmskpd	%xmm1, %r8d
	xorl	%edi, %edi
	testl	%r8d, %r8d
	setne	%dil
	cmpl	%edx, %esi
	je	.LBB13_154
.LBB13_152:                             # %for.body627.preheader
	movl	$1, %r8d
	.p2align	4, 0x90
.LBB13_153:                             # %for.body627
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rsi,8), %r9
	cmpq	(%rax,%rsi,8), %r9
	cmovnel	%r8d, %edi
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB13_153
.LBB13_154:                             # %for.end642
	testl	%edi, %edi
	je	.LBB13_155
.LBB13_156:                             # %if.end658
	cmpl	$0, 32(%rbx)
	je	.LBB13_157
.LBB13_167:                             # %if.end814
	movsbl	256(%rbx), %ecx
	movl	136(%rbx), %edx
	movl	140(%rbx), %eax
	cmpl	%edx, %ecx
	cmovll	%ecx, %edx
	movb	%dl, 256(%rbx)
	movsbl	257(%rbx), %ecx
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movb	%al, 257(%rbx)
	movsbl	%dl, %ecx
	cmpl	$32, %ecx
	ja	.LBB13_171
# %bb.168:                              # %for.body838.lr.ph
	movl	%ecx, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB13_169:                             # %for.body838
                                        # =>This Inner Loop Header: Depth=1
	movq	264(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB13_169
# %bb.170:                              # %for.end845.loopexit
	movzbl	257(%rbx), %eax
.LBB13_171:                             # %for.end845
	cmpb	$32, %al
	ja	.LBB13_3
# %bb.172:                              # %for.body852.lr.ph
	movzbl	%al, %eax
	movq	856488(%r13), %rcx
	incq	%rax
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB13_173:                             # %for.body852
                                        # =>This Inner Loop Header: Depth=1
	movq	272(%rbx), %rsi
	movq	%rcx, -8(%rsi,%rax,8)
	incq	%rdx
	cmpl	$33, %eax
	movq	%rdx, %rax
	jne	.LBB13_173
.LBB13_3:                               # %cleanup
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
.LBB13_155:                             # %if.then644
	.cfi_def_cfa_offset 128
	movq	(%rax), %rcx
	movq	8(%rax), %rdx
	movq	%rdx, (%rax)
	movq	272(%rbx), %rax
	movq	%rcx, 8(%rax)
	cmpl	$0, 32(%rbx)
	jne	.LBB13_167
.LBB13_157:                             # %if.then661
	leaq	13308(%rbx), %r12
	movl	164(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB13_159
# %bb.158:                              # %if.then661
	testl	%eax, %eax
	jne	.LBB13_191
.LBB13_159:                             # %if.then669
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	movq	56(%rsp), %rbp                  # 8-byte Reload
	je	.LBB13_160
# %bb.161:                              # %if.end677
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB13_162
.LBB13_174:                             # %if.else707
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB13_183
# %bb.175:                              # %if.else707
	cmpl	$1, %esi
	jne	.LBB13_167
# %bb.176:                              # %for.cond.preheader.i
	testl	%edx, %edx
	jle	.LBB13_167
# %bb.177:                              # %for.body.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_179
# %bb.178:
	xorl	%edi, %edi
	jmp	.LBB13_181
.LBB13_191:                             # %if.else719
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13320(%rbx)
	testq	%rax, %rax
	movq	56(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB13_193
# %bb.192:                              # %if.then727
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
.LBB13_193:                             # %if.end728
	movl	40(%r14), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, 13328(%rbx)
	testq	%rax, %rax
	jne	.LBB13_195
# %bb.194:                              # %if.then735
	movl	$.L.str.4, %edi
	callq	no_mem_exit@PLT
.LBB13_195:                             # %if.end736
	leaq	13312(%rbx), %r15
	movl	184(%rbx), %esi
	testl	%esi, %esi
	je	.LBB13_196
# %bb.206:                              # %if.else791
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13320(%rbx), %rcx
	movl	13308(%rbx), %edx
	movq	264(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB13_215
# %bb.207:                              # %if.else791
	cmpl	$1, %esi
	movq	8(%rsp), %r10                   # 8-byte Reload
	jne	.LBB13_223
# %bb.208:                              # %for.cond.preheader.i1300
	testl	%edx, %edx
	jle	.LBB13_223
# %bb.209:                              # %for.body.preheader.i1302
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_211
# %bb.210:
	xorl	%edi, %edi
	jmp	.LBB13_213
.LBB13_160:                             # %if.then676
	movl	$.L.str.2, %edi
	callq	no_mem_exit@PLT
	movl	184(%rbx), %esi
	testl	%esi, %esi
	jne	.LBB13_174
.LBB13_162:                             # %if.then684
	movzbl	256(%rbx), %r15d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	16(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB13_166
# %bb.163:                              # %for.body691.lr.ph
	movzbl	%r15b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB13_164:                             # %for.body691
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r15,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r15,8)
	incq	%r15
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r15
	jb	.LBB13_164
# %bb.165:                              # %for.end703.loopexit
	addl	%eax, %r15d
.LBB13_166:                             # %for.end703
	movb	%r15b, 256(%rbx)
	jmp	.LBB13_167
.LBB13_183:                             # %if.then7.i
	testl	%edx, %edx
	jle	.LBB13_167
# %bb.184:                              # %for.body11.preheader.i
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_186
# %bb.185:
	xorl	%edi, %edi
	jmp	.LBB13_188
.LBB13_196:                             # %if.then743
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movzbl	256(%rbx), %r13d
	movq	13320(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %r8
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movl	20(%rsp), %r15d                 # 4-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	movq	16(%rsp), %r12                  # 8-byte Reload
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$1, %edx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movl	%r15d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$0, 13308(%rbx)
	je	.LBB13_200
# %bb.197:                              # %for.body752.lr.ph
	movzbl	%r13b, %eax
	movsbq	%al, %rcx
	shlq	$3, %rcx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB13_198:                             # %for.body752
                                        # =>This Inner Loop Header: Depth=1
	movq	13320(%rbx), %rdx
	movq	(%rdx,%r13,8), %rdx
	movq	48(%rdx), %rdx
	movq	264(%rbx), %rsi
	addq	%rcx, %rsi
	movq	%rdx, (%rsi,%r13,8)
	incq	%r13
	movl	13308(%rbx), %edx
	cmpq	%rdx, %r13
	jb	.LBB13_198
# %bb.199:                              # %for.end764.loopexit
	addl	%eax, %r13d
.LBB13_200:                             # %for.end764
	movb	%r13b, 256(%rbx)
	movzbl	257(%rbx), %eax
	cmpl	$0, 13312(%rbx)
	je	.LBB13_201
# %bb.202:                              # %for.body775.lr.ph
	movzbl	%al, %ecx
	movsbq	%cl, %rdx
	shlq	$3, %rdx
	xorl	%eax, %eax
	movq	32(%rsp), %r13                  # 8-byte Reload
	.p2align	4, 0x90
.LBB13_203:                             # %for.body775
                                        # =>This Inner Loop Header: Depth=1
	movq	13328(%rbx), %rsi
	movq	(%rsi,%rax,8), %rsi
	movq	48(%rsi), %rsi
	movq	272(%rbx), %rdi
	addq	%rdx, %rdi
	movq	%rsi, (%rdi,%rax,8)
	incq	%rax
	movl	13312(%rbx), %esi
	cmpq	%rsi, %rax
	jb	.LBB13_203
# %bb.204:                              # %for.end787.loopexit
	addl	%ecx, %eax
	movb	%al, 257(%rbx)
	jmp	.LBB13_167
.LBB13_215:                             # %if.then7.i1286
	testl	%edx, %edx
	movq	8(%rsp), %r10                   # 8-byte Reload
	jle	.LBB13_223
# %bb.216:                              # %for.body11.preheader.i1288
	movzbl	256(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_218
# %bb.217:
	xorl	%edi, %edi
	jmp	.LBB13_220
.LBB13_201:
	movq	32(%rsp), %r13                  # 8-byte Reload
	movb	%al, 257(%rbx)
	jmp	.LBB13_167
.LBB13_179:                             # %for.body.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_180:                             # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_180
.LBB13_181:                             # %if.end814.loopexit1566.unr-lcssa
	testb	$1, %dl
	je	.LBB13_167
# %bb.182:                              # %for.body.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB13_190
.LBB13_186:                             # %for.body11.preheader.i.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB13_187:                             # %for.body11.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_187
.LBB13_188:                             # %if.end814.loopexit1567.unr-lcssa
	testb	$1, %dl
	je	.LBB13_167
# %bb.189:                              # %for.body11.i.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB13_190:                             # %if.end814
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
	jmp	.LBB13_167
.LBB13_211:                             # %for.body.preheader.i1302.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB13_212:                             # %for.body.i1305
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_212
.LBB13_213:                             # %gen_pic_list_from_frame_interview_list.exit1314.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB13_223
# %bb.214:                              # %for.body.i1305.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB13_222
.LBB13_218:                             # %for.body11.preheader.i1288.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB13_219:                             # %for.body11.i1291
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	256(%rbx), %esi
	incb	%sil
	movb	%sil, 256(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_219
.LBB13_220:                             # %gen_pic_list_from_frame_interview_list.exit1314.loopexit1565.unr-lcssa
	testb	$1, %dl
	je	.LBB13_223
# %bb.221:                              # %for.body11.i1291.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB13_222:                             # %gen_pic_list_from_frame_interview_list.exit1314
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	256(%rbx)
.LBB13_223:                             # %gen_pic_list_from_frame_interview_list.exit1314
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movq	%r14, %rdi
	movl	$1, %edx
	movq	%r15, %r8
	movl	20(%rsp), %r9d                  # 4-byte Reload
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	append_interview_list@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movl	184(%rbx), %esi
	movq	13328(%rbx), %rcx
	movl	13312(%rbx), %edx
	movq	272(%rbx), %rax
	cmpl	$2, %esi
	je	.LBB13_233
# %bb.224:                              # %gen_pic_list_from_frame_interview_list.exit1314
	cmpl	$1, %esi
	jne	.LBB13_167
# %bb.225:                              # %for.cond.preheader.i1329
	testl	%edx, %edx
	jle	.LBB13_167
# %bb.226:                              # %for.body.preheader.i1331
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_228
# %bb.227:
	xorl	%edi, %edi
	jmp	.LBB13_230
.LBB13_233:                             # %if.then7.i1315
	testl	%edx, %edx
	jle	.LBB13_167
# %bb.234:                              # %for.body11.preheader.i1317
	movzbl	257(%rbx), %esi
	cmpl	$1, %edx
	jne	.LBB13_236
# %bb.235:
	xorl	%edi, %edi
	jmp	.LBB13_238
.LBB13_228:                             # %for.body.preheader.i1331.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB13_229:                             # %for.body.i1334
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	56(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_229
.LBB13_230:                             # %if.end814.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB13_167
# %bb.231:                              # %for.body.i1334.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	56(%rcx), %rcx
	jmp	.LBB13_232
.LBB13_236:                             # %for.body11.preheader.i1317.new
	movl	%edx, %r8d
	andl	$2147483646, %r8d               # imm = 0x7FFFFFFE
	xorl	%edi, %edi
.LBB13_237:                             # %for.body11.i1320
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	movq	8(%rcx,%rdi,8), %r9
	movq	64(%r9), %r9
	movsbq	%sil, %rsi
	movq	%r9, (%rax,%rsi,8)
	movzbl	257(%rbx), %esi
	incb	%sil
	movb	%sil, 257(%rbx)
	addq	$2, %rdi
	cmpq	%rdi, %r8
	jne	.LBB13_237
.LBB13_238:                             # %if.end814.loopexit1564.unr-lcssa
	testb	$1, %dl
	je	.LBB13_167
# %bb.239:                              # %for.body11.i1320.epil
	movq	(%rcx,%rdi,8), %rcx
	movq	64(%rcx), %rcx
.LBB13_232:                             # %if.end814
	movsbq	%sil, %rdx
	movq	%rcx, (%rax,%rdx,8)
	incb	257(%rbx)
	jmp	.LBB13_167
.Lfunc_end13:
	.size	init_lists_mvc, .Lfunc_end13-init_lists_mvc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI13_0:
	.quad	.LBB13_4
	.quad	.LBB13_57
	.quad	.LBB13_2
	.quad	.LBB13_4
	.quad	.LBB13_2
                                        # -- End function
	.text
	.globl	reorder_ref_pic_list_mvc        # -- Begin function reorder_ref_pic_list_mvc
	.p2align	4, 0x90
	.type	reorder_ref_pic_list_mvc,@function
reorder_ref_pic_list_mvc:               # @reorder_ref_pic_list_mvc
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
	movl	%r9d, %ebp
	movl	%r8d, 4(%rsp)                   # 4-byte Spill
	movq	%rcx, %r12
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rdi, %r14
	movq	(%rdi), %r13
	movslq	%esi, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	cmpl	$0, 848876(%r13)
	movl	848992(%r13), %eax
	je	.LBB14_1
# %bb.2:                                # %if.else
	addl	%eax, %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	172(%r14), %eax
	leal	1(,%rax,2), %eax
	jmp	.LBB14_3
.LBB14_1:                               # %if.then
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movl	172(%r14), %eax
.LBB14_3:                               # %if.end
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movslq	136(%r14,%rax,4), %r11
	movq	1112(%r14,%rax,8), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	1128(%r14,%rax,8), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	1144(%r14,%rax,8), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	1160(%r14,%rax,8), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	cmpl	$0, 32(%r14)
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	je	.LBB14_5
# %bb.4:
	movq	$-1, 88(%rsp)                   # 8-byte Folded Spill
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.LBB14_87
	jmp	.LBB14_7
.LBB14_5:                               # %if.then18
	movq	%r13, %rdi
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movl	%ebx, %esi
	callq	GetVOIdx@PLT
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	%ebx, %esi
	movl	%ebp, %edx
	xorl	%ecx, %ecx
	callq	get_maxViewIdx@PLT
	movq	56(%rsp), %r11                  # 8-byte Reload
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	movslq	%r13d, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB14_7
.LBB14_87:                              # %for.end
	movq	48(%rsp), %rax                  # 8-byte Reload
	movb	%r11b, 256(%r14,%rax)
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
.LBB14_7:                               # %for.body.lr.ph
	.cfi_def_cfa_offset 192
	leaq	-1(%r11), %r15
	xorl	%ecx, %ecx
	cmpl	$0, 200(%rsp)
	setne	%cl
	testl	%ebp, %ebp
	leaq	13308(,%rcx,4), %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	leaq	13320(,%rcx,8), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	cmoveq	%r12, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	leaq	-8(,%r11,8), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	$-1, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %ebp
	xorl	%r12d, %r12d
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB14_8
	.p2align	4, 0x90
.LBB14_21:                              #   in Loop: Header=BB14_8 Depth=1
	movl	%ecx, %r12d
.LBB14_45:                              #   in Loop: Header=BB14_8 Depth=1
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	8(%rsp), %r13                   # 8-byte Reload
.LBB14_86:                              # %for.inc
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax,%rbx,4), %eax
	incq	%rbx
	cmpl	$3, %eax
	je	.LBB14_87
.LBB14_8:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_41 Depth 2
                                        #     Child Loop BB14_43 Depth 2
                                        #     Child Loop BB14_48 Depth 2
                                        #     Child Loop BB14_55 Depth 2
                                        #     Child Loop BB14_64 Depth 2
                                        #     Child Loop BB14_76 Depth 2
                                        #     Child Loop BB14_78 Depth 2
                                        #     Child Loop BB14_81 Depth 2
                                        #     Child Loop BB14_17 Depth 2
                                        #     Child Loop BB14_19 Depth 2
                                        #     Child Loop BB14_24 Depth 2
                                        #     Child Loop BB14_31 Depth 2
	cmpl	$6, %eax
	jl	.LBB14_10
# %bb.9:                                # %if.then27
                                        #   in Loop: Header=BB14_8 Depth=1
	movl	$.L.str.5, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movq	56(%rsp), %r11                  # 8-byte Reload
	movq	80(%rsp), %rax                  # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
.LBB14_10:                              # %if.end28
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$1, %eax
	jg	.LBB14_36
# %bb.11:                               # %if.then32
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx,%rbx,4), %ecx
	testl	%eax, %eax
	je	.LBB14_12
# %bb.13:                               # %if.else54
                                        #   in Loop: Header=BB14_8 Depth=1
	addl	%ecx, %ebp
	incl	%ebp
	movl	32(%rsp), %ecx                  # 4-byte Reload
	cmpl	%ecx, %ebp
	movl	%ecx, %eax
	movl	$0, %edx
	cmovll	%edx, %eax
	subl	%eax, %ebp
	jmp	.LBB14_14
	.p2align	4, 0x90
.LBB14_36:                              # %if.else78
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$4, %eax
	je	.LBB14_60
# %bb.37:                               # %if.else78
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	$2, %eax
	jne	.LBB14_61
# %bb.38:                               # %if.then82
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r14, %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	264(%r14,%rcx,8), %r14
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	(%rcx,%rbx,4), %r13d
	movq	40(%rax), %rdi
	movl	%r13d, %esi
	callq	get_long_term_pic@PLT
	movq	56(%rsp), %r11                  # 8-byte Reload
	movslq	%r12d, %rcx
	cmpl	%r11d, %r12d
	jge	.LBB14_89
# %bb.39:                               # %for.body.i218.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r11, %rsi
	subq	%rcx, %rsi
	movq	%r11, %rdx
	cmpq	$7, %rsi
	jbe	.LBB14_43
# %bb.40:                               # %vector.ph351
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%rsi, %rdi
	andq	$-8, %rdi
	movq	%r11, %rdx
	subq	%rdi, %rdx
	movq	%rdi, %r8
	negq	%r8
	movq	64(%rsp), %r9                   # 8-byte Reload
	addq	%r14, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB14_41:                              # %vector.body356
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-56(%r9,%r10,8), %xmm0
	movups	-40(%r9,%r10,8), %xmm1
	movups	-24(%r9,%r10,8), %xmm2
	movups	-8(%r9,%r10,8), %xmm3
	movups	%xmm3, (%r9,%r10,8)
	movups	%xmm2, -16(%r9,%r10,8)
	movups	%xmm1, -32(%r9,%r10,8)
	movups	%xmm0, -48(%r9,%r10,8)
	addq	$-8, %r10
	cmpq	%r10, %r8
	jne	.LBB14_41
# %bb.42:                               # %middle.block348
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB14_44
	.p2align	4, 0x90
.LBB14_43:                              # %for.body.i218
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%r14,%rdx,8), %rsi
	movq	%rsi, (%r14,%rdx,8)
	decq	%rdx
	cmpq	%rcx, %rdx
	jg	.LBB14_43
.LBB14_44:                              # %for.end.i223
                                        #   in Loop: Header=BB14_8 Depth=1
	leal	1(%rcx), %r12d
	movq	%rax, (%r14,%rcx,8)
	cmpl	%r11d, %ecx
	jge	.LBB14_45
# %bb.46:                               # %for.body8.lr.ph.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movslq	%r12d, %rax
	cmpl	$-1, 4(%rsp)                    # 4-byte Folded Reload
	je	.LBB14_54
# %bb.47:                               # %for.body8.i.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	decq	%rax
	movl	%r12d, %ecx
	jmp	.LBB14_48
	.p2align	4, 0x90
.LBB14_52:                              # %if.then22.i
                                        #   in Loop: Header=BB14_48 Depth=2
	movslq	%ecx, %rsi
	incl	%ecx
	movq	%rdx, (%r14,%rsi,8)
.LBB14_53:                              # %for.inc29.i
                                        #   in Loop: Header=BB14_48 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	jg	.LBB14_45
.LBB14_48:                              # %for.body8.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB14_53
# %bb.49:                               # %if.then.i228
                                        #   in Loop: Header=BB14_48 Depth=2
	cmpb	$0, 40(%rdx)
	je	.LBB14_52
# %bb.50:                               # %lor.lhs.false.i230
                                        #   in Loop: Header=BB14_48 Depth=2
	cmpl	%r13d, 32(%rdx)
	jne	.LBB14_52
# %bb.51:                               # %lor.lhs.false17.i
                                        #   in Loop: Header=BB14_48 Depth=2
	movl	4(%rsp), %esi                   # 4-byte Reload
	cmpl	%esi, 344(%rdx)
	jne	.LBB14_52
	jmp	.LBB14_53
.LBB14_12:                              # %if.then36
                                        #   in Loop: Header=BB14_8 Depth=1
	notl	%ecx
	addl	%ecx, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	movl	32(%rsp), %ecx                  # 4-byte Reload
	andl	%ecx, %eax
	addl	%eax, %ebp
.LBB14_14:                              # %if.end72
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpl	36(%rsp), %ebp                  # 4-byte Folded Reload
	movl	$0, %eax
	cmovgl	%ecx, %eax
	movl	%ebp, %r13d
	subl	%eax, %r13d
	movq	%r14, %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	264(%r14,%rcx,8), %r14
	movq	40(%rax), %rdi
	movl	%r13d, %esi
	callq	get_short_term_pic@PLT
	movslq	%r12d, %rdx
	movq	56(%rsp), %r11                  # 8-byte Reload
	cmpl	%r11d, %r12d
	jge	.LBB14_88
# %bb.15:                               # %for.body.i.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r11, %rsi
	subq	%rdx, %rsi
	movq	%r11, %rcx
	cmpq	$7, %rsi
	jbe	.LBB14_19
# %bb.16:                               # %vector.ph
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%rsi, %rdi
	andq	$-8, %rdi
	movq	%r11, %rcx
	subq	%rdi, %rcx
	movq	%rdi, %r8
	negq	%r8
	movq	64(%rsp), %r9                   # 8-byte Reload
	addq	%r14, %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB14_17:                              # %vector.body
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-56(%r9,%r10,8), %xmm0
	movups	-40(%r9,%r10,8), %xmm1
	movups	-24(%r9,%r10,8), %xmm2
	movups	-8(%r9,%r10,8), %xmm3
	movups	%xmm3, (%r9,%r10,8)
	movups	%xmm2, -16(%r9,%r10,8)
	movups	%xmm1, -32(%r9,%r10,8)
	movups	%xmm0, -48(%r9,%r10,8)
	addq	$-8, %r10
	cmpq	%r10, %r8
	jne	.LBB14_17
# %bb.18:                               # %middle.block
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	%rdi, %rsi
	je	.LBB14_20
	.p2align	4, 0x90
.LBB14_19:                              # %for.body.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%r14,%rcx,8), %rsi
	movq	%rsi, (%r14,%rcx,8)
	decq	%rcx
	cmpq	%rdx, %rcx
	jg	.LBB14_19
.LBB14_20:                              # %for.end.i
                                        #   in Loop: Header=BB14_8 Depth=1
	leal	1(%r12), %ecx
	movq	%rax, (%r14,%rdx,8)
	cmpl	%r11d, %r12d
	jge	.LBB14_21
# %bb.22:                               # %for.body10.lr.ph.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movslq	%ecx, %rax
	cmpl	$-1, 4(%rsp)                    # 4-byte Folded Reload
	je	.LBB14_30
# %bb.23:                               # %for.body10.i.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	decq	%rax
	movl	%ecx, %edx
	jmp	.LBB14_24
	.p2align	4, 0x90
.LBB14_28:                              # %if.then27.i
                                        #   in Loop: Header=BB14_24 Depth=2
	movslq	%edx, %rdi
	incl	%edx
	movq	%rsi, (%r14,%rdi,8)
.LBB14_29:                              # %for.inc34.i
                                        #   in Loop: Header=BB14_24 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	jg	.LBB14_21
.LBB14_24:                              # %for.body10.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.LBB14_29
# %bb.25:                               # %if.then.i
                                        #   in Loop: Header=BB14_24 Depth=2
	cmpb	$0, 40(%rsi)
	jne	.LBB14_28
# %bb.26:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB14_24 Depth=2
	cmpl	%r13d, 28(%rsi)
	jne	.LBB14_28
# %bb.27:                               # %lor.lhs.false20.i
                                        #   in Loop: Header=BB14_24 Depth=2
	movl	4(%rsp), %edi                   # 4-byte Reload
	cmpl	%edi, 344(%rsi)
	jne	.LBB14_28
	jmp	.LBB14_29
	.p2align	4, 0x90
.LBB14_88:                              # %for.end.i.thread
                                        #   in Loop: Header=BB14_8 Depth=1
	incl	%r12d
	movq	%rax, (%r14,%rdx,8)
	jmp	.LBB14_45
.LBB14_60:                              # %if.then91
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
	notl	%eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addl	%eax, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	andl	28(%rsp), %eax                  # 4-byte Folded Reload
	addl	%eax, %ecx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	(%r14,%rax), %esi
	testq	%rsi, %rsi
	jne	.LBB14_63
	jmp	.LBB14_86
.LBB14_61:                              # %if.else100
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	movl	(%rax,%rbx,4), %eax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addl	%eax, %edx
	incl	%edx
	movl	28(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %edx
	movl	$0, %ecx
	cmovll	%ecx, %eax
	subl	%eax, %edx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	movl	(%r14,%rax), %esi
	testq	%rsi, %rsi
	je	.LBB14_86
.LBB14_63:                              # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movslq	40(%rsp), %rax                  # 4-byte Folded Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	88(%rsp), %rdx                  # 8-byte Reload
	movq	(%rcx,%rdx,8), %rcx
	movl	(%rcx,%rax,4), %ecx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	264(%r14,%rax,8), %rax
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	(%r14,%rdx), %rdi
	xorl	%r8d, %r8d
	jmp	.LBB14_64
.LBB14_69:                              # %land.lhs.true15.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	movq	56(%rdx), %rdx
.LBB14_71:                              # %land.lhs.true27.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	movl	192(%rsp), %r9d
	cmpl	%r9d, 4(%rdx)
	je	.LBB14_73
.LBB14_72:                              # %for.inc.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	incq	%r8
	cmpq	%r8, %rsi
	je	.LBB14_86
.LBB14_64:                              # %for.body.i.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%r8,8), %rdx
	cmpl	%ecx, 72(%rdx)
	jne	.LBB14_72
# %bb.65:                               # %if.then3.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	movl	848876(%r13), %r9d
	cmpl	$2, %r9d
	je	.LBB14_70
# %bb.66:                               # %if.then3.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	cmpl	$1, %r9d
	je	.LBB14_69
# %bb.67:                               # %if.then3.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	testl	%r9d, %r9d
	jne	.LBB14_72
# %bb.68:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	movq	48(%rdx), %rdx
	jmp	.LBB14_71
.LBB14_70:                              # %land.lhs.true27.i.i
                                        #   in Loop: Header=BB14_64 Depth=2
	movq	64(%rdx), %rdx
	jmp	.LBB14_71
.LBB14_89:                              # %for.end.i223.thread
                                        #   in Loop: Header=BB14_8 Depth=1
	leal	1(%rcx), %r12d
	movq	%rax, (%r14,%rcx,8)
	jmp	.LBB14_45
.LBB14_73:                              # %if.then.i241
                                        #   in Loop: Header=BB14_8 Depth=1
	movslq	%r12d, %rsi
	cmpl	%r11d, %r12d
	jge	.LBB14_90
# %bb.74:                               # %for.body.i243.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r11, %r8
	subq	%rsi, %r8
	movq	%r11, %rdi
	cmpq	$7, %r8
	jbe	.LBB14_78
# %bb.75:                               # %vector.ph326
                                        #   in Loop: Header=BB14_8 Depth=1
	movq	%r8, %r9
	andq	$-8, %r9
	movq	%r11, %rdi
	subq	%r9, %rdi
	movq	%r9, %r10
	negq	%r10
	movq	64(%rsp), %r11                  # 8-byte Reload
	addq	%rax, %r11
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB14_76:                              # %vector.body331
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	-56(%r11,%r14,8), %xmm0
	movups	-40(%r11,%r14,8), %xmm1
	movups	-24(%r11,%r14,8), %xmm2
	movups	-8(%r11,%r14,8), %xmm3
	movups	%xmm3, (%r11,%r14,8)
	movups	%xmm2, -16(%r11,%r14,8)
	movups	%xmm1, -32(%r11,%r14,8)
	movups	%xmm0, -48(%r11,%r14,8)
	addq	$-8, %r14
	cmpq	%r14, %r10
	jne	.LBB14_76
# %bb.77:                               # %middle.block323
                                        #   in Loop: Header=BB14_8 Depth=1
	cmpq	%r9, %r8
	movq	16(%rsp), %r14                  # 8-byte Reload
	movq	56(%rsp), %r11                  # 8-byte Reload
	je	.LBB14_79
	.p2align	4, 0x90
.LBB14_78:                              # %for.body.i243
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rax,%rdi,8), %r8
	movq	%r8, (%rax,%rdi,8)
	decq	%rdi
	cmpq	%rsi, %rdi
	jg	.LBB14_78
.LBB14_79:                              # %for.end.i248
                                        #   in Loop: Header=BB14_8 Depth=1
	leal	1(%r12), %edi
	movq	%rdx, (%rax,%rsi,8)
	cmpl	%r11d, %r12d
	jge	.LBB14_85
# %bb.80:                               # %for.body8.preheader.i
                                        #   in Loop: Header=BB14_8 Depth=1
	movslq	%edi, %rdx
	decq	%rdx
	movl	%edi, %esi
	jmp	.LBB14_81
	.p2align	4, 0x90
.LBB14_83:                              # %if.then15.i
                                        #   in Loop: Header=BB14_81 Depth=2
	movslq	%esi, %r9
	incl	%esi
	movq	%r8, (%rax,%r9,8)
.LBB14_84:                              # %for.inc21.i
                                        #   in Loop: Header=BB14_81 Depth=2
	incq	%rdx
	cmpq	%r15, %rdx
	jg	.LBB14_85
.LBB14_81:                              # %for.body8.i253
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax,%rdx,8), %r8
	cmpl	%ecx, 344(%r8)
	jne	.LBB14_83
# %bb.82:                               # %lor.lhs.false.i258
                                        #   in Loop: Header=BB14_81 Depth=2
	movl	192(%rsp), %r9d
	cmpl	%r9d, 4(%r8)
	jne	.LBB14_83
	jmp	.LBB14_84
.LBB14_30:                              # %for.body10.us.i.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	decq	%rax
	movl	%ecx, %edx
	jmp	.LBB14_31
	.p2align	4, 0x90
.LBB14_34:                              # %if.then27.us.i
                                        #   in Loop: Header=BB14_31 Depth=2
	movslq	%edx, %rdi
	incl	%edx
	movq	%rsi, (%r14,%rdi,8)
.LBB14_35:                              # %for.inc34.us.i
                                        #   in Loop: Header=BB14_31 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	jg	.LBB14_21
.LBB14_31:                              # %for.body10.us.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rax,8), %rsi
	testq	%rsi, %rsi
	je	.LBB14_35
# %bb.32:                               # %if.then.us.i
                                        #   in Loop: Header=BB14_31 Depth=2
	cmpb	$0, 40(%rsi)
	jne	.LBB14_34
# %bb.33:                               # %lor.lhs.false.us.i
                                        #   in Loop: Header=BB14_31 Depth=2
	cmpl	%r13d, 28(%rsi)
	jne	.LBB14_34
	jmp	.LBB14_35
.LBB14_90:                              # %for.end.i248.thread
                                        #   in Loop: Header=BB14_8 Depth=1
	incl	%r12d
	movq	%rdx, (%rax,%rsi,8)
	jmp	.LBB14_86
.LBB14_85:                              #   in Loop: Header=BB14_8 Depth=1
	movl	%edi, %r12d
	jmp	.LBB14_86
.LBB14_54:                              # %for.body8.us.i.preheader
                                        #   in Loop: Header=BB14_8 Depth=1
	decq	%rax
	movl	%r12d, %ecx
	jmp	.LBB14_55
	.p2align	4, 0x90
.LBB14_58:                              # %if.then22.us.i
                                        #   in Loop: Header=BB14_55 Depth=2
	movslq	%ecx, %rsi
	incl	%ecx
	movq	%rdx, (%r14,%rsi,8)
.LBB14_59:                              # %for.inc29.us.i
                                        #   in Loop: Header=BB14_55 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	jg	.LBB14_45
.LBB14_55:                              # %for.body8.us.i
                                        #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB14_59
# %bb.56:                               # %if.then.us.i235
                                        #   in Loop: Header=BB14_55 Depth=2
	cmpb	$0, 40(%rdx)
	je	.LBB14_58
# %bb.57:                               # %lor.lhs.false.us.i237
                                        #   in Loop: Header=BB14_55 Depth=2
	cmpl	%r13d, 32(%rdx)
	jne	.LBB14_58
	jmp	.LBB14_59
.Lfunc_end14:
	.size	reorder_ref_pic_list_mvc, .Lfunc_end14-reorder_ref_pic_list_mvc
	.cfi_endproc
                                        # -- End function
	.globl	reorder_lists_mvc               # -- Begin function reorder_lists_mvc
	.p2align	4, 0x90
	.type	reorder_lists_mvc,@function
reorder_lists_mvc:                      # @reorder_lists_mvc
	.cfi_startproc
# %bb.0:                                # %entry
	movl	164(%rdi), %eax
	cmpl	$2, %eax
	je	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
# %bb.1:                                # %entry
	cmpl	$4, %eax
	je	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
# %bb.2:                                # %if.then
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
	movq	(%rdi), %r15
	cmpl	$0, 1104(%rdi)
	je	.LBB15_4
# %bb.3:                                # %if.then4
	movq	699416(%r15), %rax
	movq	4152(%rax), %rdx
	movq	4184(%rax), %rcx
	movl	1176(%rdi), %r8d
	movl	1184(%rdi), %r9d
	movq	%rdi, %r14
	xorl	%esi, %esi
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	reorder_ref_pic_list_mvc
	movq	%r14, %rdi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB15_4:                               # %if.end
	movq	856488(%r15), %rax
	movq	264(%rdi), %rcx
	movslq	136(%rdi), %rdx
	cmpq	-8(%rcx,%rdx,8), %rax
	je	.LBB15_5
# %bb.9:                                # %if.end18
	movzbl	136(%rdi), %eax
	movb	%al, 256(%rdi)
	cmpl	$1, 164(%rdi)
	je	.LBB15_10
.LBB15_18:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	jmp	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
.LBB15_5:                               # %if.then10
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	cmpl	$0, 848948(%r15)
	je	.LBB15_7
# %bb.6:                                # %if.then12
	movl	$.Lstr, %edi
	callq	puts@PLT
	jmp	.LBB15_8
.LBB15_7:                               # %if.else
	movl	$.L.str.7, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB15_8:                               # %if.end18
	movq	%r14, %rdi
	movzbl	136(%rdi), %eax
	movb	%al, 256(%rdi)
	cmpl	$1, 164(%rdi)
	jne	.LBB15_18
.LBB15_10:                              # %if.then22
	cmpl	$0, 1108(%rdi)
	je	.LBB15_12
# %bb.11:                               # %if.then26
	movq	699416(%r15), %rax
	movq	4168(%rax), %rdx
	movq	4200(%rax), %rcx
	movl	1176(%rdi), %r8d
	movl	1184(%rdi), %r9d
	movq	%rdi, %r14
	movl	$1, %esi
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	reorder_ref_pic_list_mvc
	movq	%r14, %rdi
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB15_12:                              # %if.end31
	movq	856488(%r15), %rax
	movq	272(%rdi), %rcx
	movslq	140(%rdi), %rdx
	cmpq	-8(%rcx,%rdx,8), %rax
	jne	.LBB15_17
# %bb.13:                               # %if.then42
	movq	%rdi, %rbx
	cmpl	$0, 848948(%r15)
	je	.LBB15_15
# %bb.14:                               # %if.then45
	movl	$.Lstr.10, %edi
	callq	puts@PLT
	jmp	.LBB15_16
.LBB15_15:                              # %if.else47
	movl	$.L.str.9, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB15_16:                              # %if.end49
	movq	%rbx, %rdi
.LBB15_17:                              # %if.end49
	movzbl	140(%rdi), %eax
	movb	%al, 257(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	jmp	free_ref_pic_list_reordering_buffer@PLT # TAILCALL
.Lfunc_end15:
	.size	reorder_lists_mvc, .Lfunc_end15-reorder_lists_mvc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"init_lists: fs_list0"
	.size	.L.str, 21

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"init_lists: fs_listlt"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"init_lists: fs_listinterview0"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"init_lists: fs_list1"
	.size	.L.str.3, 21

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"init_lists: fs_listinterview1"
	.size	.L.str.4, 30

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Invalid remapping_of_pic_nums_idc command"
	.size	.L.str.5, 42

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.7, 98

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream"
	.size	.L.str.9, 98

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr, 79

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'"
	.size	.Lstr.10, 79

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
