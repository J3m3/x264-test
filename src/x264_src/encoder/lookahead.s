	.text
	.file	"lookahead.c"
	.globl	x264_lookahead_init             # -- Begin function x264_lookahead_init
	.p2align	4, 0x90
	.type	x264_lookahead_init,@function
x264_lookahead_init:                    # @x264_lookahead_init
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
	movl	$120, %edi
	callq	x264_malloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_9
# %bb.1:                                # %do.end
	xorps	%xmm0, %xmm0
	movups	%xmm0, 96(%rbx)
	movups	%xmm0, 80(%rbx)
	movups	%xmm0, 64(%rbx)
	movups	%xmm0, 48(%rbx)
	movups	%xmm0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	$0, 112(%rbx)
	cmpl	$0, 4(%r14)
	jle	.LBB0_4
# %bb.2:                                # %for.body.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%r14,%rax,8), %rcx
	movq	%rbx, 33328(%rcx)
	incq	%rax
	movslq	4(%r14), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_3
.LBB0_4:                                # %for.cond.cleanup
	xorl	%eax, %eax
	subl	84(%r14), %eax
	movl	%eax, 4(%rbx)
	cmpl	$0, 552(%r14)
	je	.LBB0_11
.LBB0_5:                                # %land.rhs
	cmpl	$0, 576(%r14)
	sete	%al
	jmp	.LBB0_6
.LBB0_11:                               # %lor.lhs.false
	cmpl	$0, 528(%r14)
	je	.LBB0_14
# %bb.12:                               # %land.lhs.true
	cmpl	$0, 556(%r14)
	jne	.LBB0_5
.LBB0_14:
	xorl	%eax, %eax
.LBB0_6:                                # %land.end
	movb	%al, 2(%rbx)
	movl	%ebp, 8(%rbx)
	leaq	24(%rbx), %rdi
	movl	16(%r14), %esi
	addl	$3, %esi
	callq	x264_synch_frame_list_init@PLT
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.7:                                # %lor.lhs.false20
	leaq	56(%rbx), %rdi
	movl	14612(%r14), %esi
	addl	$3, %esi
	callq	x264_synch_frame_list_init@PLT
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.8:                                # %lor.lhs.false24
	movq	%rbx, %rdi
	addq	$88, %rdi
	movl	14612(%r14), %esi
	addl	$3, %esi
	callq	x264_synch_frame_list_init@PLT
	testl	%eax, %eax
	je	.LBB0_15
.LBB0_9:                                # %fail
	movq	%rbx, %rdi
	callq	x264_free@PLT
	movl	$-1, %eax
.LBB0_10:                               # %cleanup
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
.LBB0_15:                               # %if.end31
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	cmpl	$0, 16(%r14)
	je	.LBB0_10
# %bb.16:                               # %if.end36
	movslq	4(%r14), %rax
	movq	704(%r14,%rax,8), %r15
	movl	$33344, %edx                    # imm = 0x8240
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	%r15, %rdi
	callq	x264_macroblock_cache_allocate@PLT
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.17:                               # %if.end45
	movq	%r15, %rdi
	movl	$1, %esi
	callq	x264_macroblock_thread_allocate@PLT
	testl	%eax, %eax
	js	.LBB0_9
# %bb.18:                               # %if.end50
	movb	$1, 1(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_10
.Lfunc_end0:
	.size	x264_lookahead_init, .Lfunc_end0-x264_lookahead_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_lookahead_delete           # -- Begin function x264_lookahead_delete
	.p2align	4, 0x90
	.type	x264_lookahead_delete,@function
x264_lookahead_delete:                  # @x264_lookahead_delete
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpl	$0, 16(%rdi)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movq	33328(%rbx), %rax
	movb	$1, (%rax)
	movslq	4(%rbx), %rax
	movq	704(%rbx,%rax,8), %rdi
	callq	x264_macroblock_cache_free@PLT
	movslq	4(%rbx), %rax
	movq	704(%rbx,%rax,8), %rdi
	movl	$1, %esi
	callq	x264_macroblock_thread_free@PLT
	movslq	4(%rbx), %rax
	movq	704(%rbx,%rax,8), %rdi
	callq	x264_free@PLT
.LBB1_2:                                # %if.end
	movq	33328(%rbx), %rdi
	addq	$24, %rdi
	callq	x264_synch_frame_list_delete@PLT
	movq	33328(%rbx), %rdi
	addq	$56, %rdi
	callq	x264_synch_frame_list_delete@PLT
	movq	33328(%rbx), %rdi
	movq	16(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
# %bb.3:                                # %if.then16
	movq	%rbx, %rdi
	callq	x264_frame_push_unused@PLT
	movq	33328(%rbx), %rdi
.LBB1_4:                                # %if.end19
	addq	$88, %rdi
	callq	x264_synch_frame_list_delete@PLT
	movq	33328(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.Lfunc_end1:
	.size	x264_lookahead_delete, .Lfunc_end1-x264_lookahead_delete
	.cfi_endproc
                                        # -- End function
	.globl	x264_lookahead_put_frame        # -- Begin function x264_lookahead_put_frame
	.p2align	4, 0x90
	.type	x264_lookahead_put_frame,@function
x264_lookahead_put_frame:               # @x264_lookahead_put_frame
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	cmpl	$0, 16(%rdi)
	sete	%al
	movq	33328(%rdi), %rcx
	shll	$5, %eax
	leaq	(%rcx,%rax), %rdi
	addq	$24, %rdi
	jmp	x264_synch_frame_list_push@PLT  # TAILCALL
.Lfunc_end2:
	.size	x264_lookahead_put_frame, .Lfunc_end2-x264_lookahead_put_frame
	.cfi_endproc
                                        # -- End function
	.globl	x264_lookahead_is_empty         # -- Begin function x264_lookahead_is_empty
	.p2align	4, 0x90
	.type	x264_lookahead_is_empty,@function
x264_lookahead_is_empty:                # @x264_lookahead_is_empty
	.cfi_startproc
# %bb.0:                                # %entry
	movq	33328(%rdi), %rcx
	xorl	%eax, %eax
	cmpl	$0, 68(%rcx)
	je	.LBB3_1
# %bb.2:                                # %land.end
	retq
.LBB3_1:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$0, 100(%rcx)
	sete	%al
	retq
.Lfunc_end3:
	.size	x264_lookahead_is_empty, .Lfunc_end3-x264_lookahead_is_empty
	.cfi_endproc
                                        # -- End function
	.globl	x264_lookahead_get_frames       # -- Begin function x264_lookahead_get_frames
	.p2align	4, 0x90
	.type	x264_lookahead_get_frames,@function
x264_lookahead_get_frames:              # @x264_lookahead_get_frames
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
	movq	%rdi, %rbx
	cmpl	$0, 16(%rdi)
	je	.LBB4_6
# %bb.1:                                # %while.cond.preheader
	movq	33328(%rbx), %rax
	cmpl	$0, 100(%rax)
	je	.LBB4_2
# %bb.4:                                # %if.end.i
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movzbl	86(%rax), %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB4_5:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	14416(%rbx), %r14
	movq	33328(%rbx), %rax
	movq	88(%rax), %rdi
	callq	x264_frame_shift@PLT
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push@PLT
	movq	33328(%rbx), %rax
	decl	100(%rax)
	decl	%ebp
	jne	.LBB4_5
	jmp	.LBB4_18
.LBB4_6:                                # %if.else
	movq	14416(%rbx), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_18
# %bb.7:                                # %lor.lhs.false
	movq	33328(%rbx), %rax
	cmpl	$0, 68(%rax)
	je	.LBB4_18
# %bb.8:                                # %if.end
	movq	%rbx, %rdi
	callq	x264_slicetype_decide@PLT
	movq	33328(%rbx), %rax
	movq	16(%rax), %rsi
	movq	56(%rax), %rcx
	movq	(%rcx), %r14
	testq	%rsi, %rsi
	je	.LBB4_10
# %bb.9:                                # %if.then.i
	movq	%rbx, %rdi
	callq	x264_frame_push_unused@PLT
	movq	33328(%rbx), %rax
.LBB4_10:                               # %x264_lookahead_update_last_nonb.exit
	movq	%r14, 16(%rax)
	incl	15600(%r14)
	movq	33328(%rbx), %r14
	movq	56(%r14), %rax
	movq	(%rax), %rax
	movzbl	86(%rax), %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB4_11:                               # %while.body.i55
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%r14), %rdi
	callq	x264_frame_shift@PLT
	movq	88(%r14), %rcx
	movslq	100(%r14), %rdx
	leal	1(%rdx), %esi
	movl	%esi, 100(%r14)
	movq	%rax, (%rcx,%rdx,8)
	decl	68(%r14)
	decl	%ebp
	jne	.LBB4_11
# %bb.12:                               # %x264_lookahead_shift.exit
	movq	33328(%rbx), %rax
	cmpb	$0, 2(%rax)
	je	.LBB4_15
# %bb.13:                               # %land.lhs.true
	movq	16(%rax), %rcx
	movl	4(%rcx), %ecx
	decl	%ecx
	cmpl	$1, %ecx
	ja	.LBB4_15
# %bb.14:                               # %if.then32
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	x264_slicetype_analyse@PLT
	movq	33328(%rbx), %rax
.LBB4_15:                               # %if.end33
	cmpl	$0, 100(%rax)
	je	.LBB4_18
# %bb.16:                               # %if.end.i63
	movq	88(%rax), %rax
	movq	(%rax), %rax
	movzbl	86(%rax), %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB4_17:                               # %while.body.i69
                                        # =>This Inner Loop Header: Depth=1
	movq	14416(%rbx), %r14
	movq	33328(%rbx), %rax
	movq	88(%rax), %rdi
	callq	x264_frame_shift@PLT
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	x264_frame_push@PLT
	movq	33328(%rbx), %rax
	decl	100(%rax)
	decl	%ebp
	jne	.LBB4_17
	jmp	.LBB4_18
.LBB4_2:                                # %while.cond.preheader.split
	cmpb	$0, 1(%rax)
	je	.LBB4_18
	.p2align	4, 0x90
.LBB4_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB4_3
.LBB4_18:                               # %if.end34
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	x264_lookahead_get_frames, .Lfunc_end4-x264_lookahead_get_frames
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
