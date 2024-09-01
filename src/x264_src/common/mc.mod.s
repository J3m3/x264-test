	.text
	.file	"mc.c"
	.globl	x264_plane_copy_c               # -- Begin function x264_plane_copy_c
	.p2align	4, 0x90
	.type	x264_plane_copy_c,@function
x264_plane_copy_c:                      # @x264_plane_copy_c
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r9d, %r9d
	je	.LBB0_9
# %bb.1:                                # %while.body.lr.ph
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
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movslq	%r8d, %r15
	movslq	%esi, %r12
	movslq	%ecx, %r13
	movl	%r9d, %ebp
	andl	$3, %ebp
	je	.LBB0_2
# %bb.3:                                # %while.body.prol.preheader
	movl	%r9d, 12(%rsp)                  # 4-byte Spill
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_4:                                # %while.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	16(%rsp), %r14                  # 8-byte Folded Reload
	addq	%r13, %rbx
	incl	%r12d
	cmpl	%r12d, %ebp
	jne	.LBB0_4
# %bb.5:                                # %while.body.prol.loopexit.loopexit
	movl	12(%rsp), %r9d                  # 4-byte Reload
	movl	%r9d, %ebp
	subl	%r12d, %ebp
	movq	16(%rsp), %r12                  # 8-byte Reload
	cmpl	$4, %r9d
	jb	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r12, %r14
	addq	%r13, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r12, %r14
	addq	%r13, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r12, %r14
	addq	%r13, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r12, %r14
	addq	%r13, %rbx
	addl	$-4, %ebp
	jne	.LBB0_7
.LBB0_8:
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
.LBB0_9:                                # %while.end
	retq
.LBB0_2:
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %rbp, -16
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %ebp
	cmpl	$4, %r9d
	jae	.LBB0_7
	jmp	.LBB0_8
.Lfunc_end0:
	.size	x264_plane_copy_c, .Lfunc_end0-x264_plane_copy_c
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_init_lowres          # -- Begin function x264_frame_init_lowres
	.p2align	4, 0x90
	.type	x264_frame_init_lowres,@function
x264_frame_init_lowres:                 # @x264_frame_init_lowres
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	152(%rsi), %r12
	movslq	104(%rsi), %r15
	movslq	128(%rsi), %rcx
	movslq	116(%rsi), %rax
	testq	%rcx, %rcx
	jle	.LBB1_14
# %bb.1:                                # %for.body.lver.check
	leaq	(%r12,%rax), %rdi
	decq	%rdi
	cmpl	$1, %r15d
	jne	.LBB1_2
# %bb.9:                                # %for.body.ph
	movzbl	(%rdi), %edx
	movl	%ecx, %esi
	andl	$3, %esi
	cmpl	$4, %ecx
	jae	.LBB1_19
# %bb.10:
	xorl	%edi, %edi
	jmp	.LBB1_11
.LBB1_2:                                # %for.body.lver.orig.preheader
	movl	%ecx, %edx
	andl	$3, %edx
	cmpl	$4, %ecx
	jae	.LBB1_4
# %bb.3:
	xorl	%esi, %esi
	jmp	.LBB1_6
.LBB1_19:                               # %for.body.ph.new
	leaq	(%r12,%rax), %r8
	movl	%ecx, %r9d
	andl	$2147483644, %r9d               # imm = 0x7FFFFFFC
	leaq	(%r15,%r15,2), %r10
	leaq	(,%r15,4), %r11
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, (%r8)
	movb	%dl, (%r8,%r15)
	movb	%dl, (%r8,%r15,2)
	movb	%dl, (%r8,%r10)
	addq	$4, %rdi
	addq	%r11, %r8
	cmpq	%rdi, %r9
	jne	.LBB1_20
.LBB1_11:                               # %for.cond.cleanup.loopexit.unr-lcssa
	testq	%rsi, %rsi
	je	.LBB1_14
# %bb.12:                               # %for.body.epil.preheader
	imulq	%r15, %rdi
	addq	%rax, %rdi
	addq	%r12, %rdi
	.p2align	4, 0x90
.LBB1_13:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movb	%dl, (%rdi)
	addq	%r15, %rdi
	decq	%rsi
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_4:                                # %for.body.lver.orig.preheader.new
	movl	%ecx, %r8d
	andl	$2147483644, %r8d               # imm = 0x7FFFFFFC
	leaq	(,%r15,4), %r9
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_5:                                # %for.body.lver.orig
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi), %r10d
	movb	%r10b, 1(%rdi)
	leaq	(%rdi,%r15), %r10
	movzbl	(%rdi,%r15), %r11d
	movb	%r11b, 1(%rdi,%r15)
	leaq	(%r10,%r15), %r11
	movzbl	(%r15,%r10), %ebp
	movb	%bpl, 1(%r15,%r10)
	movzbl	(%r15,%r11), %r10d
	movb	%r10b, 1(%r15,%r11)
	addq	$4, %rsi
	addq	%r9, %rdi
	cmpq	%rsi, %r8
	jne	.LBB1_5
.LBB1_6:                                # %for.cond.cleanup.loopexit165.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB1_14
# %bb.7:                                # %for.body.lver.orig.epil.preheader
	imulq	%r15, %rsi
	addq	%rax, %rsi
	addq	%r12, %rsi
	.p2align	4, 0x90
.LBB1_8:                                # %for.body.lver.orig.epil
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rsi), %edi
	movb	%dil, (%rsi)
	addq	%r15, %rsi
	decq	%rdx
	jne	.LBB1_8
.LBB1_14:                               # %for.cond.cleanup
	movl	%ecx, %edx
	imull	%r15d, %edx
	movslq	%edx, %rdi
	addq	%r12, %rdi
	decl	%ecx
	imull	%r15d, %ecx
	movslq	%ecx, %rsi
	addq	%r12, %rsi
	incl	%eax
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movq	208(%rbx), %rsi
	movq	216(%rbx), %rdx
	movq	224(%rbx), %rcx
	movq	232(%rbx), %r8
	movl	140(%rbx), %eax
	movl	144(%rbx), %r10d
	movl	148(%rbx), %r11d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r12, %rdi
	movl	%r15d, %r9d
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	*32864(%r14)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	%rbx, %rdi
	callq	x264_frame_expand_border_lowres@PLT
	leaq	6868(%rbx), %rdi
	movl	$1296, %edx                     # imm = 0x510
	movl	$255, %esi
	callq	memset@PLT
	movl	100(%r14), %ecx
	cmpl	$-1, %ecx
	jl	.LBB1_27
# %bb.15:                               # %for.cond31.preheader.preheader
	leaq	9536(%rbx), %rax
	xorl	%edx, %edx
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_28:                               # %for.cond31.preheader.for.cond.cleanup37_crit_edge
                                        #   in Loop: Header=BB1_16 Depth=1
	movslq	%ecx, %rsi
.LBB1_29:                               # %for.cond.cleanup37
                                        #   in Loop: Header=BB1_16 Depth=1
	leaq	1(%rdx), %rdi
	addq	$144, %rax
	cmpq	%rsi, %rdx
	movq	%rdi, %rdx
	jg	.LBB1_21
.LBB1_16:                               # %for.cond31.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
	cmpl	$-1, %ecx
	jl	.LBB1_28
# %bb.17:                               # %for.body38.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	$-1, %rdi
	.p2align	4, 0x90
.LBB1_18:                               # %for.body38
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rax,%rdi,8), %rcx
	movl	$-1, (%rcx)
	movl	100(%r14), %ecx
	movslq	%ecx, %rsi
	incq	%rdi
	cmpq	%rsi, %rdi
	jle	.LBB1_18
	jmp	.LBB1_29
.LBB1_21:                               # %for.cond51.preheader
	testl	%ecx, %ecx
	js	.LBB1_27
# %bb.22:                               # %for.body66.preheader
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB1_23:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	movq	3584(%rbx,%rax,8), %rcx
	movw	$32767, (%rcx)                  # imm = 0x7FFF
	movslq	100(%r14), %rcx
	incq	%rax
	cmpq	%rcx, %rax
	jl	.LBB1_23
# %bb.24:                               # %for.cond.cleanup65
	testl	%ecx, %ecx
	jle	.LBB1_27
# %bb.25:                               # %for.body66.1.preheader
	movq	$-1, %rax
	.p2align	4, 0x90
.LBB1_26:                               # %for.body66.1
                                        # =>This Inner Loop Header: Depth=1
	movq	3720(%rbx,%rax,8), %rcx
	movw	$32767, (%rcx)                  # imm = 0x7FFF
	movslq	100(%r14), %rcx
	incq	%rax
	cmpq	%rcx, %rax
	jl	.LBB1_26
.LBB1_27:                               # %for.cond.cleanup57
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
.Lfunc_end1:
	.size	x264_frame_init_lowres, .Lfunc_end1-x264_frame_init_lowres
	.cfi_endproc
                                        # -- End function
	.globl	x264_mc_init                    # -- Begin function x264_mc_init
	.p2align	4, 0x90
	.type	x264_mc_init,@function
x264_mc_init:                           # @x264_mc_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$mc_luma, (%rsi)
	movq	$get_ref, 8(%rsi)
	movq	$mc_chroma, 16(%rsi)
	movq	$pixel_avg_16x16, 24(%rsi)
	movq	$pixel_avg_16x8, 32(%rsi)
	movq	$pixel_avg_8x16, 40(%rsi)
	movq	$pixel_avg_8x8, 48(%rsi)
	movq	$pixel_avg_8x4, 56(%rsi)
	movq	$pixel_avg_4x8, 64(%rsi)
	movq	$pixel_avg_4x4, 72(%rsi)
	movq	$pixel_avg_4x2, 80(%rsi)
	movq	$pixel_avg_2x4, 88(%rsi)
	movq	$pixel_avg_2x2, 96(%rsi)
	movq	$x264_mc_weight_wtab, 256(%rsi)
	movq	$x264_mc_weight_wtab, 264(%rsi)
	movq	$x264_mc_weight_wtab, 272(%rsi)
	movq	$x264_weight_cache, 280(%rsi)
	movq	$mc_copy_w16, 160(%rsi)
	movq	$mc_copy_w16, 104(%rsi)
	movq	$mc_copy_w8, 128(%rsi)
	movq	$mc_copy_w4, 152(%rsi)
	movq	$x264_plane_copy_c, 168(%rsi)
	movq	$hpel_filter, 176(%rsi)
	movq	$prefetch_fenc_null, 184(%rsi)
	movq	$prefetch_ref_null, 192(%rsi)
	movq	memcpy@GOTPCREL(%rip), %rax
	movq	%rax, 200(%rsi)
	movq	$memzero_aligned, 208(%rsi)
	movq	$frame_init_lowres_core, 248(%rsi)
	movq	$integral_init4h, 216(%rsi)
	movq	$integral_init8h, 224(%rsi)
	movq	$integral_init4v, 232(%rsi)
	movq	$integral_init8v, 240(%rsi)
	movq	$mbtree_propagate_cost, 288(%rsi)
	retq
.Lfunc_end2:
	.size	x264_mc_init, .Lfunc_end2-x264_mc_init
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mc_luma
.LCPI3_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI3_1:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI3_2:
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
.LCPI3_3:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI3_4:
	.zero	16,255
	.text
	.p2align	4, 0x90
	.type	mc_luma,@function
mc_luma:                                # @mc_luma
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
	movl	%esi, 8(%rsp)                   # 4-byte Spill
	movq	%rdi, %r12
	movq	128(%rsp), %r10
	movl	120(%rsp), %r13d
	movl	%r9d, %edi
	andl	$3, %edi
	movl	%r8d, %esi
	andl	$3, %esi
	leal	(%rsi,%rdi,4), %eax
	sarl	$2, %r9d
	imull	%ecx, %r9d
	sarl	$2, %r8d
	addl	%r9d, %r8d
	movzbl	hpel_ref0(%rax), %r9d
	movq	(%rdx,%r9,8), %rbp
	movslq	%r8d, %rbx
	xorl	%r8d, %r8d
	cmpl	$3, %edi
	cmovel	%ecx, %r8d
	movslq	%r8d, %r15
	leaq	(%rbx,%r15), %r14
	addq	%rbp, %r14
	testb	$5, %al
	je	.LBB3_42
# %bb.1:                                # %if.then
	movq	%r13, %rdi
	xorl	%r13d, %r13d
	cmpl	$3, %esi
	sete	%r9b
	testl	%edi, %edi
	movl	112(%rsp), %edi
	jle	.LBB3_17
# %bb.2:                                # %for.cond1.preheader.lr.ph.i
	testl	%edi, %edi
	jle	.LBB3_17
# %bb.3:                                # %for.cond1.preheader.us.preheader.i
	movzbl	hpel_ref1(%rax), %eax
	movq	(%rdx,%rax,8), %rsi
	movslq	8(%rsp), %rax                   # 4-byte Folded Reload
	movl	%edi, %edx
	movl	120(%rsp), %edi
	leal	-1(%rdi), %r11d
	movq	%rax, %rdi
	imulq	%r11, %rdi
	addq	%r12, %rdi
	addq	%rdx, %rdi
	movslq	%ecx, %r8
	imulq	%r8, %r11
	addq	%r11, %r15
	addq	%rbx, %r15
	addq	%rdx, %r15
	addq	%r15, %rbp
	movb	%r9b, %r13b
	addq	%rbx, %r11
	leaq	(%rbx,%r13), %r9
	addq	%r13, %r11
	addq	%rsi, %r9
	addq	%rdx, %r11
	addq	%rsi, %r11
	cmpq	%r12, %rbp
	seta	%sil
	cmpq	%rdi, %r14
	setb	%bl
	andb	%sil, %bl
	orl	8(%rsp), %ecx                   # 4-byte Folded Reload
	sets	%sil
	orb	%sil, %bl
	cmpq	%r12, %r11
	seta	%r11b
	cmpq	%rdi, %r9
	movl	112(%rsp), %edi
	setb	%cl
	andb	%r11b, %cl
	orb	%sil, %cl
	orb	%bl, %cl
	movl	%edx, %r11d
	andl	$2147483584, %r11d              # imm = 0x7FFFFFC0
	movl	%edx, %r15d
	andl	$2147483640, %r15d              # imm = 0x7FFFFFF8
	leaq	-1(%rdx), %rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	movq	%r12, %rbx
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_16:                               # %for.cond1.for.cond.cleanup3_crit_edge.us.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addq	%rax, %rbx
	addq	%r8, %r14
	addq	%r8, %r9
	incl	%ebp
	movl	120(%rsp), %esi
	cmpl	%esi, %ebp
	movl	112(%rsp), %edi
	je	.LBB3_17
.LBB3_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_15 Depth 2
	cmpl	$8, %edi
	setb	%sil
	orb	%cl, %sil
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	xorl	%edi, %edi
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	xorl	%esi, %esi
	cmpl	$64, %edi
	jb	.LBB3_10
	.p2align	4, 0x90
.LBB3_7:                                # %vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%r14,%rsi), %xmm0
	movdqu	16(%r14,%rsi), %xmm1
	movdqu	32(%r14,%rsi), %xmm2
	movdqu	48(%r14,%rsi), %xmm3
	movdqu	(%r9,%rsi), %xmm4
	pavgb	%xmm0, %xmm4
	movdqu	16(%r9,%rsi), %xmm0
	pavgb	%xmm1, %xmm0
	movdqu	32(%r9,%rsi), %xmm1
	pavgb	%xmm2, %xmm1
	movdqu	48(%r9,%rsi), %xmm2
	pavgb	%xmm3, %xmm2
	movdqu	%xmm4, (%rbx,%rsi)
	movdqu	%xmm0, 16(%rbx,%rsi)
	movdqu	%xmm1, 32(%rbx,%rsi)
	movdqu	%xmm2, 48(%rbx,%rsi)
	addq	$64, %rsi
	cmpq	%rsi, %r11
	jne	.LBB3_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpl	%edx, %r11d
	je	.LBB3_16
# %bb.9:                                # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%r11, %rsi
	movq	%r11, %rdi
	testb	$56, %dl
	je	.LBB3_12
	.p2align	4, 0x90
.LBB3_10:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14,%rsi), %xmm0              # xmm0 = mem[0],zero
	movq	(%r9,%rsi), %xmm1               # xmm1 = mem[0],zero
	pavgb	%xmm0, %xmm1
	movq	%xmm1, (%rbx,%rsi)
	addq	$8, %rsi
	cmpq	%rsi, %r15
	jne	.LBB3_10
# %bb.11:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%r15, %rdi
	cmpl	%edx, %r15d
	je	.LBB3_16
.LBB3_12:                               # %for.body4.us.i.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	%rdi, %rsi
	testb	$1, %dl
	je	.LBB3_14
# %bb.13:                               # %for.body4.us.i.prol
                                        #   in Loop: Header=BB3_4 Depth=1
	movzbl	(%r14,%rdi), %esi
	movzbl	(%r9,%rdi), %r13d
	addl	%r13d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rbx,%rdi)
	movq	%rdi, %rsi
	orq	$1, %rsi
.LBB3_14:                               # %for.body4.us.i.prol.loopexit
                                        #   in Loop: Header=BB3_4 Depth=1
	cmpq	16(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB3_16
	.p2align	4, 0x90
.LBB3_15:                               # %for.body4.us.i
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rsi), %edi
	movzbl	(%r9,%rsi), %r13d
	addl	%r13d, %edi
	incl	%edi
	shrl	%edi
	movb	%dil, (%rbx,%rsi)
	movzbl	1(%r14,%rsi), %edi
	movzbl	1(%r9,%rsi), %r13d
	addl	%r13d, %edi
	incl	%edi
	shrl	%edi
	movb	%dil, 1(%rbx,%rsi)
	addq	$2, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB3_15
	jmp	.LBB3_16
.LBB3_17:                               # %pixel_avg.exit
	cmpq	$0, 48(%r10)
	movl	120(%rsp), %r14d
	je	.LBB3_73
# %bb.18:                               # %if.then23
	cmpl	$0, 32(%r10)
	jle	.LBB3_19
# %bb.32:                               # %for.cond.preheader.i
	testl	%r14d, %r14d
	jle	.LBB3_73
# %bb.33:                               # %for.cond2.preheader.lr.ph.i
	testl	%edi, %edi
	jle	.LBB3_73
# %bb.34:                               # %for.cond2.preheader.us.preheader.i
	movl	8(%rsp), %r9d                   # 4-byte Reload
	movslq	%r9d, %rdx
	movl	%edi, %r8d
	leal	-1(%r14), %eax
	imulq	%rdx, %rax
	addq	%r12, %rax
	addq	%r8, %rax
	leaq	44(%r10), %rcx
	cmpq	%r12, %rcx
	seta	%cl
	leaq	32(%r10), %rsi
	cmpq	%rax, %rsi
	setb	%al
	andb	%cl, %al
	testl	%r9d, %r9d
	sets	%sil
	orb	%al, %sil
	movl	%r8d, %r9d
	andl	$2147483632, %r9d               # imm = 0x7FFFFFF0
	xorl	%r11d, %r11d
	pxor	%xmm2, %xmm2
	jmp	.LBB3_35
	.p2align	4, 0x90
.LBB3_41:                               # %for.cond2.for.cond.cleanup4_crit_edge.us.i
                                        #   in Loop: Header=BB3_35 Depth=1
	incl	%r11d
	addq	%rdx, %r12
	cmpl	%r14d, %r11d
	movl	112(%rsp), %edi
	je	.LBB3_73
.LBB3_35:                               # %for.cond2.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_38 Depth 2
                                        #     Child Loop BB3_40 Depth 2
	cmpl	$16, %edi
	setb	%al
	orb	%sil, %al
	je	.LBB3_37
# %bb.36:                               #   in Loop: Header=BB3_35 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB3_40
	.p2align	4, 0x90
.LBB3_37:                               # %vector.ph229
                                        #   in Loop: Header=BB3_35 Depth=1
	movd	36(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	32(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	paddd	.LCPI3_4(%rip), %xmm1
	psrldq	$12, %xmm1                      # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
	movdqa	.LCPI3_3(%rip), %xmm7           # xmm7 = [1,1,1,1]
	pslld	%xmm1, %xmm7
	movd	40(%r10), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm8                # xmm8 = xmm1[0,0,0,0]
	movdqa	%xmm3, 16(%rsp)                 # 16-byte Spill
	pshufd	$245, %xmm3, %xmm9              # xmm9 = xmm3[1,1,3,3]
	xorps	%xmm10, %xmm10
	movss	%xmm0, %xmm10                   # xmm10 = xmm0[0],xmm10[1,2,3]
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_38:                               # %vector.body233
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r12,%rax), %xmm4              # xmm4 = mem[0],zero,zero,zero
	movd	4(%r12,%rax), %xmm13            # xmm13 = mem[0],zero,zero,zero
	movd	8(%r12,%rax), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movd	12(%r12,%rax), %xmm0            # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	punpcklbw	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3],xmm13[4],xmm2[4],xmm13[5],xmm2[5],xmm13[6],xmm2[6],xmm13[7],xmm2[7]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movdqa	16(%rsp), %xmm3                 # 16-byte Reload
	movdqa	%xmm3, %xmm11
	pmuludq	%xmm4, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm11           # xmm11 = xmm11[0],xmm4[0],xmm11[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm13, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm5              # xmm5 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	paddd	%xmm7, %xmm11
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm5
	psrad	%xmm10, %xmm11
	psrad	%xmm10, %xmm12
	psrad	%xmm10, %xmm13
	psrad	%xmm10, %xmm5
	paddd	%xmm8, %xmm11
	paddd	%xmm8, %xmm12
	paddd	%xmm8, %xmm13
	paddd	%xmm8, %xmm5
	movdqa	%xmm11, %xmm0
	movdqa	.LCPI3_0(%rip), %xmm3           # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm3, %xmm0
	movdqa	.LCPI3_1(%rip), %xmm6           # xmm6 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm6, %xmm15
	pcmpgtd	%xmm0, %xmm15
	movdqa	%xmm12, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm13, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm5, %xmm14
	pxor	%xmm3, %xmm14
	pcmpgtd	%xmm14, %xmm6
	movdqa	%xmm11, %xmm14
	pcmpgtd	%xmm2, %xmm14
	pand	%xmm15, %xmm11
	pandn	%xmm14, %xmm15
	por	%xmm11, %xmm15
	movdqa	%xmm12, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm1, %xmm12
	pandn	%xmm11, %xmm1
	por	%xmm12, %xmm1
	movdqa	%xmm13, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm4, %xmm13
	pandn	%xmm11, %xmm4
	por	%xmm13, %xmm4
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm6, %xmm5
	pandn	%xmm11, %xmm6
	por	%xmm5, %xmm6
	movdqa	.LCPI3_2(%rip), %xmm5           # xmm5 = [255,0,255,0,255,0,255,0]
	pand	%xmm5, %xmm15
	packuswb	%xmm15, %xmm15
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm15
	pand	%xmm5, %xmm4
	packuswb	%xmm4, %xmm4
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm4
	shufps	$136, %xmm4, %xmm15             # xmm15 = xmm15[0,2],xmm4[0,2]
	movups	%xmm15, (%r12,%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.LBB3_38
# %bb.39:                               # %middle.block226
                                        #   in Loop: Header=BB3_35 Depth=1
	movq	%r9, %rbx
	cmpl	%r8d, %r9d
	je	.LBB3_41
	.p2align	4, 0x90
.LBB3_40:                               # %for.body5.us.i
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%rbx), %edi
	imull	36(%r10), %edi
	movzbl	32(%r10), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	addl	%edi, %ebp
	movl	%eax, %ecx
	sarl	%cl, %ebp
	addl	40(%r10), %ebp
	testl	%ebp, %ebp
	setg	%al
	negb	%al
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebp, %eax
	movb	%al, (%r12,%rbx)
	incq	%rbx
	cmpq	%rbx, %r8
	jne	.LBB3_40
	jmp	.LBB3_41
.LBB3_42:                               # %if.else
	cmpq	$0, 48(%r10)
	je	.LBB3_67
# %bb.43:                               # %if.then26
	cmpl	$0, 32(%r10)
	movl	112(%rsp), %esi
	jle	.LBB3_44
# %bb.57:                               # %for.cond.preheader.i107
	testl	%r13d, %r13d
	jle	.LBB3_73
# %bb.58:                               # %for.cond2.preheader.lr.ph.i108
	testl	%esi, %esi
	jle	.LBB3_73
# %bb.59:                               # %for.cond2.preheader.us.preheader.i114
	movl	8(%rsp), %eax                   # 4-byte Reload
	movslq	%eax, %rdx
	movl	%eax, %r11d
	movl	%esi, %r8d
	leal	-1(%r13), %eax
	movq	%rdx, %rsi
	imulq	%rax, %rsi
	addq	%r12, %rsi
	addq	%r8, %rsi
	movslq	%ecx, %r9
	imulq	%r9, %rax
	addq	%r15, %rax
	addq	%rbx, %rax
	addq	%r8, %rax
	addq	%rax, %rbp
	cmpq	%r12, %rbp
	seta	%al
	cmpq	%rsi, %r14
	setb	%dil
	andb	%al, %dil
	leaq	44(%r10), %rax
	movl	%r11d, %ebx
	orl	%r11d, %ecx
	sets	%cl
	cmpq	%r12, %rax
	leaq	32(%r10), %rax
	seta	%r11b
	cmpq	%rsi, %rax
	setb	%al
	andb	%r11b, %al
	testl	%ebx, %ebx
	sets	%sil
	orb	%al, %sil
	orb	%cl, %sil
	orb	%dil, %sil
	movl	112(%rsp), %eax
	movl	%r8d, %r11d
	andl	$2147483632, %r11d              # imm = 0x7FFFFFF0
	xorl	%r15d, %r15d
	pxor	%xmm2, %xmm2
	jmp	.LBB3_60
	.p2align	4, 0x90
.LBB3_66:                               # %for.cond2.for.cond.cleanup4_crit_edge.us.i137
                                        #   in Loop: Header=BB3_60 Depth=1
	incl	%r15d
	addq	%rdx, %r12
	addq	%r9, %r14
	cmpl	%r13d, %r15d
	movl	112(%rsp), %eax
	je	.LBB3_73
.LBB3_60:                               # %for.cond2.preheader.us.i116
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_63 Depth 2
                                        #     Child Loop BB3_65 Depth 2
	cmpl	$16, %eax
	setb	%al
	orb	%sil, %al
	je	.LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_60 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB3_65
	.p2align	4, 0x90
.LBB3_62:                               # %vector.ph323
                                        #   in Loop: Header=BB3_60 Depth=1
	movd	36(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	32(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	paddd	.LCPI3_4(%rip), %xmm1
	psrldq	$12, %xmm1                      # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
	movdqa	.LCPI3_3(%rip), %xmm7           # xmm7 = [1,1,1,1]
	pslld	%xmm1, %xmm7
	movd	40(%r10), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm8                # xmm8 = xmm1[0,0,0,0]
	movdqa	%xmm3, 16(%rsp)                 # 16-byte Spill
	pshufd	$245, %xmm3, %xmm9              # xmm9 = xmm3[1,1,3,3]
	xorps	%xmm10, %xmm10
	movss	%xmm0, %xmm10                   # xmm10 = xmm0[0],xmm10[1,2,3]
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_63:                               # %vector.body327
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r14,%rax), %xmm4              # xmm4 = mem[0],zero,zero,zero
	movd	4(%r14,%rax), %xmm13            # xmm13 = mem[0],zero,zero,zero
	movd	8(%r14,%rax), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movd	12(%r14,%rax), %xmm0            # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	punpcklbw	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3],xmm13[4],xmm2[4],xmm13[5],xmm2[5],xmm13[6],xmm2[6],xmm13[7],xmm2[7]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movdqa	16(%rsp), %xmm3                 # 16-byte Reload
	movdqa	%xmm3, %xmm11
	pmuludq	%xmm4, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm11           # xmm11 = xmm11[0],xmm4[0],xmm11[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm13, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm5              # xmm5 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	paddd	%xmm7, %xmm11
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm5
	psrad	%xmm10, %xmm11
	psrad	%xmm10, %xmm12
	psrad	%xmm10, %xmm13
	psrad	%xmm10, %xmm5
	paddd	%xmm8, %xmm11
	paddd	%xmm8, %xmm12
	paddd	%xmm8, %xmm13
	paddd	%xmm8, %xmm5
	movdqa	%xmm11, %xmm0
	movdqa	.LCPI3_0(%rip), %xmm3           # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm3, %xmm0
	movdqa	.LCPI3_1(%rip), %xmm6           # xmm6 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm6, %xmm15
	pcmpgtd	%xmm0, %xmm15
	movdqa	%xmm12, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm13, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm5, %xmm14
	pxor	%xmm3, %xmm14
	pcmpgtd	%xmm14, %xmm6
	movdqa	%xmm11, %xmm14
	pcmpgtd	%xmm2, %xmm14
	pand	%xmm15, %xmm11
	pandn	%xmm14, %xmm15
	por	%xmm11, %xmm15
	movdqa	%xmm12, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm1, %xmm12
	pandn	%xmm11, %xmm1
	por	%xmm12, %xmm1
	movdqa	%xmm13, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm4, %xmm13
	pandn	%xmm11, %xmm4
	por	%xmm13, %xmm4
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm6, %xmm5
	pandn	%xmm11, %xmm6
	por	%xmm5, %xmm6
	movdqa	.LCPI3_2(%rip), %xmm5           # xmm5 = [255,0,255,0,255,0,255,0]
	pand	%xmm5, %xmm15
	packuswb	%xmm15, %xmm15
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm15
	pand	%xmm5, %xmm4
	packuswb	%xmm4, %xmm4
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm4
	shufps	$136, %xmm4, %xmm15             # xmm15 = xmm15[0,2],xmm4[0,2]
	movups	%xmm15, (%r12,%rax)
	addq	$16, %rax
	cmpq	%rax, %r11
	jne	.LBB3_63
# %bb.64:                               # %middle.block320
                                        #   in Loop: Header=BB3_60 Depth=1
	movq	%r11, %rbx
	cmpl	%r8d, %r11d
	je	.LBB3_66
	.p2align	4, 0x90
.LBB3_65:                               # %for.body5.us.i120
                                        #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %edi
	imull	36(%r10), %edi
	movzbl	32(%r10), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	addl	%edi, %ebp
	movl	%eax, %ecx
	sarl	%cl, %ebp
	addl	40(%r10), %ebp
	testl	%ebp, %ebp
	setg	%al
	negb	%al
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebp, %eax
	movb	%al, (%r12,%rbx)
	incq	%rbx
	cmpq	%rbx, %r8
	jne	.LBB3_65
	jmp	.LBB3_66
.LBB3_19:                               # %for.cond17.preheader.i
	testl	%r14d, %r14d
	jle	.LBB3_73
# %bb.20:                               # %for.cond23.preheader.lr.ph.i
	testl	%edi, %edi
	jle	.LBB3_73
# %bb.21:                               # %for.cond23.preheader.us.preheader.i
	leaq	36(%r10), %rdx
	movl	8(%rsp), %r8d                   # 4-byte Reload
	movslq	%r8d, %rax
	movl	%edi, %ecx
	leal	-1(%r14), %esi
	imulq	%rax, %rsi
	addq	%r12, %rsi
	addq	%rcx, %rsi
	leaq	44(%r10), %rdi
	cmpq	%r12, %rdi
	seta	%dil
	cmpq	%rsi, %rdx
	setb	%sil
	andb	%dil, %sil
	movl	112(%rsp), %edi
	testl	%r8d, %r8d
	sets	%dl
	orb	%sil, %dl
	movl	%ecx, %esi
	andl	$2147483632, %esi               # imm = 0x7FFFFFF0
	leaq	-1(%rcx), %r8
	xorl	%r9d, %r9d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI3_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI3_1(%rip), %xmm2           # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI3_2(%rip), %xmm3           # xmm3 = [255,0,255,0,255,0,255,0]
	jmp	.LBB3_22
	.p2align	4, 0x90
.LBB3_31:                               # %for.cond23.for.cond.cleanup26_crit_edge.us.i
                                        #   in Loop: Header=BB3_22 Depth=1
	incl	%r9d
	addq	%rax, %r12
	cmpl	%r14d, %r9d
	movl	112(%rsp), %edi
	je	.LBB3_73
.LBB3_22:                               # %for.cond23.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
                                        #     Child Loop BB3_30 Depth 2
	cmpl	$16, %edi
	setb	%dil
	orb	%dl, %dil
	je	.LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_22 Depth=1
	xorl	%edi, %edi
	jmp	.LBB3_27
	.p2align	4, 0x90
.LBB3_24:                               # %vector.ph193
                                        #   in Loop: Header=BB3_22 Depth=1
	movd	36(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	movd	40(%r10), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	pshufd	$0, %xmm5, %xmm5                # xmm5 = xmm5[0,0,0,0]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_25:                               # %vector.body197
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r12,%r11), %xmm9              # xmm9 = mem[0],zero,zero,zero
	movd	4(%r12,%r11), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movd	8(%r12,%r11), %xmm11            # xmm11 = mem[0],zero,zero,zero
	movd	12(%r12,%r11), %xmm7            # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklbw	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3],xmm10[4],xmm0[4],xmm10[5],xmm0[5],xmm10[6],xmm0[6],xmm10[7],xmm0[7]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movdqa	%xmm4, %xmm8
	pmuludq	%xmm9, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm6, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	movdqa	%xmm4, %xmm9
	pmuludq	%xmm10, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshufd	$245, %xmm10, %xmm10            # xmm10 = xmm10[1,1,3,3]
	pmuludq	%xmm6, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1]
	movdqa	%xmm4, %xmm10
	pmuludq	%xmm11, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshufd	$245, %xmm11, %xmm11            # xmm11 = xmm11[1,1,3,3]
	pmuludq	%xmm6, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	movdqa	%xmm4, %xmm11
	pmuludq	%xmm7, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	paddd	%xmm5, %xmm8
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm11
	movdqa	%xmm8, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm12, %xmm7
	movdqa	%xmm9, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm12, %xmm14
	movdqa	%xmm10, %xmm13
	pxor	%xmm1, %xmm13
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm13, %xmm12
	movdqa	%xmm11, %xmm15
	pxor	%xmm1, %xmm15
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm15, %xmm13
	movdqa	%xmm8, %xmm15
	pcmpgtd	%xmm0, %xmm15
	pand	%xmm7, %xmm8
	pandn	%xmm15, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm14, %xmm9
	pandn	%xmm8, %xmm14
	por	%xmm9, %xmm14
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm12, %xmm10
	pandn	%xmm8, %xmm12
	por	%xmm10, %xmm12
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm13, %xmm11
	pandn	%xmm8, %xmm13
	por	%xmm11, %xmm13
	pand	%xmm3, %xmm7
	packuswb	%xmm7, %xmm7
	pand	%xmm3, %xmm14
	packuswb	%xmm14, %xmm14
	packuswb	%xmm14, %xmm7
	pand	%xmm3, %xmm12
	packuswb	%xmm12, %xmm12
	pand	%xmm3, %xmm13
	packuswb	%xmm13, %xmm13
	packuswb	%xmm13, %xmm12
	shufps	$136, %xmm12, %xmm7             # xmm7 = xmm7[0,2],xmm12[0,2]
	movups	%xmm7, (%r12,%r11)
	addq	$16, %r11
	cmpq	%r11, %rsi
	jne	.LBB3_25
# %bb.26:                               # %middle.block191
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	%rsi, %rdi
	cmpl	%ecx, %esi
	je	.LBB3_31
.LBB3_27:                               # %for.body27.us.i.preheader
                                        #   in Loop: Header=BB3_22 Depth=1
	movq	%rdi, %r11
	testb	$1, %cl
	je	.LBB3_29
# %bb.28:                               # %for.body27.us.i.prol
                                        #   in Loop: Header=BB3_22 Depth=1
	movzbl	(%r12,%rdi), %r11d
	imull	36(%r10), %r11d
	addl	40(%r10), %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%r12,%rdi)
	movq	%rdi, %r11
	orq	$1, %r11
.LBB3_29:                               # %for.body27.us.i.prol.loopexit
                                        #   in Loop: Header=BB3_22 Depth=1
	cmpq	%r8, %rdi
	je	.LBB3_31
	.p2align	4, 0x90
.LBB3_30:                               # %for.body27.us.i
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r12,%r11), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bl
	negb	%bl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%edi, %ebx
	movb	%bl, (%r12,%r11)
	movzbl	1(%r12,%r11), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bl
	negb	%bl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%edi, %ebx
	movb	%bl, 1(%r12,%r11)
	addq	$2, %r11
	cmpq	%r11, %rcx
	jne	.LBB3_30
	jmp	.LBB3_31
.LBB3_67:                               # %if.else27
	testl	%r13d, %r13d
	movl	112(%rsp), %eax
	jle	.LBB3_73
# %bb.68:                               # %for.body.lr.ph.i
	movslq	%eax, %rbx
	movslq	%ecx, %r15
	movslq	8(%rsp), %rax                   # 4-byte Folded Reload
	movl	%r13d, %ecx
	andl	$3, %ecx
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	cmpl	$4, %r13d
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jb	.LBB3_71
# %bb.69:                               # %for.body.lr.ph.i.new
	andl	$2147483644, %r13d              # imm = 0x7FFFFFFC
	movq	48(%rsp), %rbx                  # 8-byte Reload
	movq	16(%rsp), %r15                  # 8-byte Reload
	movq	8(%rsp), %rbp                   # 8-byte Reload
	.p2align	4, 0x90
.LBB3_70:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%r15, %r14
	addq	%rbp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%r15, %r14
	addq	%rbp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%r15, %r14
	addq	%rbp, %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	addq	%r15, %r14
	addq	%rbp, %r12
	addl	$-4, %r13d
	jne	.LBB3_70
.LBB3_71:                               # %if.end29.loopexit.unr-lcssa
	movl	44(%rsp), %ebp                  # 4-byte Reload
	testl	%ebp, %ebp
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	8(%rsp), %rbx                   # 8-byte Reload
	je	.LBB3_73
	.p2align	4, 0x90
.LBB3_72:                               # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	addq	%r13, %r14
	addq	%rbx, %r12
	decl	%ebp
	jne	.LBB3_72
	jmp	.LBB3_73
.LBB3_44:                               # %for.cond17.preheader.i76
	testl	%r13d, %r13d
	jle	.LBB3_73
# %bb.45:                               # %for.cond23.preheader.lr.ph.i77
	testl	%esi, %esi
	jle	.LBB3_73
# %bb.46:                               # %for.cond23.preheader.us.preheader.i83
	movl	8(%rsp), %r11d                  # 4-byte Reload
	movslq	%r11d, %rax
	movl	%esi, %edx
	leal	-1(%r13), %esi
	movq	%rax, %rdi
	imulq	%rsi, %rdi
	addq	%r12, %rdi
	addq	%rdx, %rdi
	movslq	%ecx, %r8
	imulq	%r8, %rsi
	addq	%r15, %rsi
	addq	%rbx, %rsi
	addq	%rdx, %rsi
	addq	%rsi, %rbp
	cmpq	%r12, %rbp
	seta	%sil
	cmpq	%rdi, %r14
	setb	%r9b
	andb	%sil, %r9b
	leaq	44(%r10), %rsi
	orl	%r11d, %ecx
	sets	%bl
	cmpq	%r12, %rsi
	leaq	36(%r10), %rcx
	seta	%sil
	cmpq	%rdi, %rcx
	setb	%dil
	andb	%sil, %dil
	testl	%r11d, %r11d
	sets	%cl
	orb	%dil, %cl
	movl	112(%rsp), %edi
	orb	%bl, %cl
	orb	%r9b, %cl
	movl	%edx, %esi
	andl	$2147483632, %esi               # imm = 0x7FFFFFF0
	leaq	-1(%rdx), %r9
	xorl	%r11d, %r11d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI3_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI3_1(%rip), %xmm2           # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI3_2(%rip), %xmm3           # xmm3 = [255,0,255,0,255,0,255,0]
	jmp	.LBB3_47
	.p2align	4, 0x90
.LBB3_56:                               # %for.cond23.for.cond.cleanup26_crit_edge.us.i102
                                        #   in Loop: Header=BB3_47 Depth=1
	incl	%r11d
	addq	%rax, %r12
	addq	%r8, %r14
	cmpl	%r13d, %r11d
	movl	112(%rsp), %edi
	je	.LBB3_73
.LBB3_47:                               # %for.cond23.preheader.us.i85
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_50 Depth 2
                                        #     Child Loop BB3_55 Depth 2
	cmpl	$16, %edi
	setb	%dil
	orb	%cl, %dil
	je	.LBB3_49
# %bb.48:                               #   in Loop: Header=BB3_47 Depth=1
	xorl	%edi, %edi
	jmp	.LBB3_52
	.p2align	4, 0x90
.LBB3_49:                               # %vector.ph280
                                        #   in Loop: Header=BB3_47 Depth=1
	movd	36(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	movd	40(%r10), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	pshufd	$0, %xmm5, %xmm5                # xmm5 = xmm5[0,0,0,0]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_50:                               # %vector.body284
                                        #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r14,%rbx), %xmm9              # xmm9 = mem[0],zero,zero,zero
	movd	4(%r14,%rbx), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movd	8(%r14,%rbx), %xmm11            # xmm11 = mem[0],zero,zero,zero
	movd	12(%r14,%rbx), %xmm7            # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklbw	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3],xmm10[4],xmm0[4],xmm10[5],xmm0[5],xmm10[6],xmm0[6],xmm10[7],xmm0[7]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movdqa	%xmm4, %xmm8
	pmuludq	%xmm9, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm6, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	movdqa	%xmm4, %xmm9
	pmuludq	%xmm10, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshufd	$245, %xmm10, %xmm10            # xmm10 = xmm10[1,1,3,3]
	pmuludq	%xmm6, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1]
	movdqa	%xmm4, %xmm10
	pmuludq	%xmm11, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshufd	$245, %xmm11, %xmm11            # xmm11 = xmm11[1,1,3,3]
	pmuludq	%xmm6, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	movdqa	%xmm4, %xmm11
	pmuludq	%xmm7, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	paddd	%xmm5, %xmm8
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm11
	movdqa	%xmm8, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm12, %xmm7
	movdqa	%xmm9, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm12, %xmm14
	movdqa	%xmm10, %xmm13
	pxor	%xmm1, %xmm13
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm13, %xmm12
	movdqa	%xmm11, %xmm15
	pxor	%xmm1, %xmm15
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm15, %xmm13
	movdqa	%xmm8, %xmm15
	pcmpgtd	%xmm0, %xmm15
	pand	%xmm7, %xmm8
	pandn	%xmm15, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm14, %xmm9
	pandn	%xmm8, %xmm14
	por	%xmm9, %xmm14
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm12, %xmm10
	pandn	%xmm8, %xmm12
	por	%xmm10, %xmm12
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm13, %xmm11
	pandn	%xmm8, %xmm13
	por	%xmm11, %xmm13
	pand	%xmm3, %xmm7
	packuswb	%xmm7, %xmm7
	pand	%xmm3, %xmm14
	packuswb	%xmm14, %xmm14
	packuswb	%xmm14, %xmm7
	pand	%xmm3, %xmm12
	packuswb	%xmm12, %xmm12
	pand	%xmm3, %xmm13
	packuswb	%xmm13, %xmm13
	packuswb	%xmm13, %xmm12
	shufps	$136, %xmm12, %xmm7             # xmm7 = xmm7[0,2],xmm12[0,2]
	movups	%xmm7, (%r12,%rbx)
	addq	$16, %rbx
	cmpq	%rbx, %rsi
	jne	.LBB3_50
# %bb.51:                               # %middle.block277
                                        #   in Loop: Header=BB3_47 Depth=1
	movq	%rsi, %rdi
	cmpl	%edx, %esi
	je	.LBB3_56
.LBB3_52:                               # %for.body27.us.i89.preheader
                                        #   in Loop: Header=BB3_47 Depth=1
	movq	%rdi, %rbx
	testb	$1, %dl
	je	.LBB3_54
# %bb.53:                               # %for.body27.us.i89.prol
                                        #   in Loop: Header=BB3_47 Depth=1
	movzbl	(%r14,%rdi), %ebx
	imull	36(%r10), %ebx
	addl	40(%r10), %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, (%r12,%rdi)
	movq	%rdi, %rbx
	orq	$1, %rbx
.LBB3_54:                               # %for.body27.us.i89.prol.loopexit
                                        #   in Loop: Header=BB3_47 Depth=1
	cmpq	%r9, %rdi
	je	.LBB3_56
	.p2align	4, 0x90
.LBB3_55:                               # %for.body27.us.i89
                                        #   Parent Loop BB3_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rbx), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bpl
	negb	%bpl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%edi, %ebp
	movb	%bpl, (%r12,%rbx)
	movzbl	1(%r14,%rbx), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bpl
	negb	%bpl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%edi, %ebp
	movb	%bpl, 1(%r12,%rbx)
	addq	$2, %rbx
	cmpq	%rbx, %rdx
	jne	.LBB3_55
	jmp	.LBB3_56
.LBB3_73:                               # %if.end29
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
	.size	mc_luma, .Lfunc_end3-mc_luma
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function get_ref
.LCPI4_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI4_1:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI4_2:
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
.LCPI4_3:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI4_4:
	.zero	16,255
	.text
	.p2align	4, 0x90
	.type	get_ref,@function
get_ref:                                # @get_ref
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
	movq	72(%rsp), %r10
	movl	64(%rsp), %r12d
	movl	56(%rsp), %r13d
	movl	%r9d, %eax
	andl	$3, %eax
	movl	%r8d, %ebx
	andl	$3, %ebx
	leal	(%rbx,%rax,4), %r11d
	sarl	$2, %r9d
	imull	%ecx, %r9d
	sarl	$2, %r8d
	addl	%r9d, %r8d
	movzbl	hpel_ref0(%r11), %r9d
	movq	(%rdx,%r9,8), %rbp
	movslq	%r8d, %r14
	xorl	%r8d, %r8d
	cmpl	$3, %eax
	cmovel	%ecx, %r8d
	movslq	%r8d, %r15
	leaq	(%r14,%r15), %rax
	addq	%rbp, %rax
	testb	$5, %r11b
	je	.LBB4_29
# %bb.1:                                # %if.then
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movq	%rdi, -32(%rsp)                 # 8-byte Spill
	movq	%r12, %rdi
	xorl	%r12d, %r12d
	cmpl	$3, %ebx
	sete	%sil
	testl	%edi, %edi
	jle	.LBB4_17
# %bb.2:                                # %for.cond1.preheader.lr.ph.i
	testl	%r13d, %r13d
	jle	.LBB4_17
# %bb.3:                                # %for.cond1.preheader.us.preheader.i
	movzbl	hpel_ref1(%r11), %r8d
	movq	(%rdx,%r8,8), %rdi
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movslq	(%rdx), %rdx
	movl	%r13d, %r8d
	movl	64(%rsp), %r9d
	leal	-1(%r9), %ebx
	movq	%rdx, %r11
	imulq	%rbx, %r11
	movq	-32(%rsp), %r13                 # 8-byte Reload
	addq	%r13, %r11
	addq	%r8, %r11
	movslq	%ecx, %r9
	imulq	%r9, %rbx
	addq	%rbx, %r15
	addq	%r14, %r15
	addq	%r8, %r15
	addq	%r15, %rbp
	movb	%sil, %r12b
	addq	%r14, %rbx
	addq	%r12, %r14
	addq	%r12, %rbx
	addq	%rdi, %r14
	addq	%r8, %rbx
	addq	%rdi, %rbx
	cmpq	%r13, %rbp
	seta	%dil
	cmpq	%r11, %rax
	setb	%bpl
	andb	%dil, %bpl
	orl	%edx, %ecx
	sets	%dil
	orb	%dil, %bpl
	cmpq	%r13, %rbx
	seta	%bl
	cmpq	%r11, %r14
	setb	%cl
	andb	%bl, %cl
	orb	%dil, %cl
	orb	%bpl, %cl
	movl	%r8d, %r15d
	andl	$2147483584, %r15d              # imm = 0x7FFFFFC0
	movl	%r8d, %r12d
	andl	$2147483640, %r12d              # imm = 0x7FFFFFF8
	leaq	-1(%r8), %rsi
	xorl	%ebp, %ebp
	movq	%r13, %rdi
	movl	56(%rsp), %r13d
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                # %for.cond1.for.cond.cleanup3_crit_edge.us.i
                                        #   in Loop: Header=BB4_5 Depth=1
	addq	%rdx, %rdi
	addq	%r9, %rax
	addq	%r9, %r14
	incl	%ebp
	movl	64(%rsp), %r11d
	cmpl	%r11d, %ebp
	movl	56(%rsp), %r13d
	je	.LBB4_17
.LBB4_5:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_16 Depth 2
	cmpl	$8, %r13d
	setb	%r11b
	orb	%cl, %r11b
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB4_13
	.p2align	4, 0x90
.LBB4_7:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%r11d, %r11d
	cmpl	$64, %r13d
	jb	.LBB4_11
	.p2align	4, 0x90
.LBB4_8:                                # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	(%rax,%r11), %xmm0
	movdqu	16(%rax,%r11), %xmm1
	movdqu	32(%rax,%r11), %xmm2
	movdqu	48(%rax,%r11), %xmm3
	movdqu	(%r14,%r11), %xmm4
	pavgb	%xmm0, %xmm4
	movdqu	16(%r14,%r11), %xmm0
	pavgb	%xmm1, %xmm0
	movdqu	32(%r14,%r11), %xmm1
	pavgb	%xmm2, %xmm1
	movdqu	48(%r14,%r11), %xmm2
	pavgb	%xmm3, %xmm2
	movdqu	%xmm4, (%rdi,%r11)
	movdqu	%xmm0, 16(%rdi,%r11)
	movdqu	%xmm1, 32(%rdi,%r11)
	movdqu	%xmm2, 48(%rdi,%r11)
	addq	$64, %r11
	cmpq	%r11, %r15
	jne	.LBB4_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpl	%r8d, %r15d
	je	.LBB4_4
# %bb.10:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r15, %r11
	movq	%r15, %rbx
	testb	$56, %r8b
	je	.LBB4_13
	.p2align	4, 0x90
.LBB4_11:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%r11), %xmm0              # xmm0 = mem[0],zero
	movq	(%r14,%r11), %xmm1              # xmm1 = mem[0],zero
	pavgb	%xmm0, %xmm1
	movq	%xmm1, (%rdi,%r11)
	addq	$8, %r11
	cmpq	%r11, %r12
	jne	.LBB4_11
# %bb.12:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%r12, %rbx
	cmpl	%r8d, %r12d
	je	.LBB4_4
.LBB4_13:                               # %for.body4.us.i.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	%rbx, %r11
	testb	$1, %r8b
	je	.LBB4_15
# %bb.14:                               # %for.body4.us.i.prol
                                        #   in Loop: Header=BB4_5 Depth=1
	movzbl	(%rax,%rbx), %r11d
	movzbl	(%r14,%rbx), %r13d
	addl	%r13d, %r11d
	incl	%r11d
	shrl	%r11d
	movb	%r11b, (%rdi,%rbx)
	movq	%rbx, %r11
	orq	$1, %r11
.LBB4_15:                               # %for.body4.us.i.prol.loopexit
                                        #   in Loop: Header=BB4_5 Depth=1
	cmpq	%rsi, %rbx
	je	.LBB4_4
	.p2align	4, 0x90
.LBB4_16:                               # %for.body4.us.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%r11), %ebx
	movzbl	(%r14,%r11), %r13d
	addl	%r13d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rdi,%r11)
	movzbl	1(%rax,%r11), %ebx
	movzbl	1(%r14,%r11), %r13d
	addl	%r13d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rdi,%r11)
	addq	$2, %r11
	cmpq	%r11, %r8
	jne	.LBB4_16
	jmp	.LBB4_4
.LBB4_17:                               # %pixel_avg.exit
	cmpq	$0, 48(%r10)
	je	.LBB4_41
# %bb.18:                               # %if.then23
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movslq	(%rax), %rdx
	cmpl	$0, 32(%r10)
	movq	-32(%rsp), %r12                 # 8-byte Reload
	jle	.LBB4_42
# %bb.19:                               # %for.cond.preheader.i
	movl	64(%rsp), %r13d
	testl	%r13d, %r13d
	jle	.LBB4_75
# %bb.20:                               # %for.cond2.preheader.lr.ph.i
	movl	56(%rsp), %ecx
	testl	%ecx, %ecx
	jle	.LBB4_75
# %bb.21:                               # %for.cond2.preheader.us.preheader.i
	leaq	32(%r10), %rax
	movl	%ecx, %esi
	leal	-1(%r13), %ecx
	imulq	%rdx, %rcx
	addq	%r12, %rcx
	addq	%rsi, %rcx
	leaq	44(%r10), %rdi
	cmpq	%r12, %rdi
	seta	%dil
	cmpq	%rcx, %rax
	setb	%al
	andb	%dil, %al
	testl	%edx, %edx
	sets	%r8b
	orb	%al, %r8b
	movl	%esi, %r9d
	andl	$2147483632, %r9d               # imm = 0x7FFFFFF0
	xorl	%r14d, %r14d
	pxor	%xmm2, %xmm2
	movq	%r12, %r15
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_22:                               # %for.cond2.for.cond.cleanup4_crit_edge.us.i
                                        #   in Loop: Header=BB4_23 Depth=1
	incl	%r14d
	addq	%rdx, %r15
	cmpl	%r13d, %r14d
	je	.LBB4_75
.LBB4_23:                               # %for.cond2.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_28 Depth 2
	cmpl	$16, 56(%rsp)
	setb	%al
	orb	%r8b, %al
	je	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_23 Depth=1
	xorl	%edi, %edi
	jmp	.LBB4_28
	.p2align	4, 0x90
.LBB4_25:                               # %vector.ph222
                                        #   in Loop: Header=BB4_23 Depth=1
	movd	36(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	32(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	paddd	.LCPI4_4(%rip), %xmm1
	psrldq	$12, %xmm1                      # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
	movdqa	.LCPI4_3(%rip), %xmm7           # xmm7 = [1,1,1,1]
	pslld	%xmm1, %xmm7
	movd	40(%r10), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm8                # xmm8 = xmm1[0,0,0,0]
	movdqa	%xmm3, -24(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm3, %xmm9              # xmm9 = xmm3[1,1,3,3]
	xorps	%xmm10, %xmm10
	movss	%xmm0, %xmm10                   # xmm10 = xmm0[0],xmm10[1,2,3]
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB4_26:                               # %vector.body226
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r15,%rax), %xmm4              # xmm4 = mem[0],zero,zero,zero
	movd	4(%r15,%rax), %xmm13            # xmm13 = mem[0],zero,zero,zero
	movd	8(%r15,%rax), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movd	12(%r15,%rax), %xmm0            # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	punpcklbw	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3],xmm13[4],xmm2[4],xmm13[5],xmm2[5],xmm13[6],xmm2[6],xmm13[7],xmm2[7]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movdqa	-24(%rsp), %xmm3                # 16-byte Reload
	movdqa	%xmm3, %xmm11
	pmuludq	%xmm4, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm11           # xmm11 = xmm11[0],xmm4[0],xmm11[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm13, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm5              # xmm5 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	paddd	%xmm7, %xmm11
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm5
	psrad	%xmm10, %xmm11
	psrad	%xmm10, %xmm12
	psrad	%xmm10, %xmm13
	psrad	%xmm10, %xmm5
	paddd	%xmm8, %xmm11
	paddd	%xmm8, %xmm12
	paddd	%xmm8, %xmm13
	paddd	%xmm8, %xmm5
	movdqa	%xmm11, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm3           # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm3, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm6           # xmm6 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm6, %xmm15
	pcmpgtd	%xmm0, %xmm15
	movdqa	%xmm12, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm13, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm5, %xmm14
	pxor	%xmm3, %xmm14
	pcmpgtd	%xmm14, %xmm6
	movdqa	%xmm11, %xmm14
	pcmpgtd	%xmm2, %xmm14
	pand	%xmm15, %xmm11
	pandn	%xmm14, %xmm15
	por	%xmm11, %xmm15
	movdqa	%xmm12, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm1, %xmm12
	pandn	%xmm11, %xmm1
	por	%xmm12, %xmm1
	movdqa	%xmm13, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm4, %xmm13
	pandn	%xmm11, %xmm4
	por	%xmm13, %xmm4
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm6, %xmm5
	pandn	%xmm11, %xmm6
	por	%xmm5, %xmm6
	movdqa	.LCPI4_2(%rip), %xmm5           # xmm5 = [255,0,255,0,255,0,255,0]
	pand	%xmm5, %xmm15
	packuswb	%xmm15, %xmm15
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm15
	pand	%xmm5, %xmm4
	packuswb	%xmm4, %xmm4
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm4
	shufps	$136, %xmm4, %xmm15             # xmm15 = xmm15[0,2],xmm4[0,2]
	movups	%xmm15, (%r15,%rax)
	addq	$16, %rax
	cmpq	%rax, %r9
	jne	.LBB4_26
# %bb.27:                               # %middle.block219
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	%r9, %rdi
	cmpl	%esi, %r9d
	je	.LBB4_22
	.p2align	4, 0x90
.LBB4_28:                               # %for.body5.us.i
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rdi), %r11d
	imull	36(%r10), %r11d
	movzbl	32(%r10), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r10), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%r15,%rdi)
	incq	%rdi
	cmpq	%rdi, %rsi
	jne	.LBB4_28
	jmp	.LBB4_22
.LBB4_29:                               # %if.else
	cmpq	$0, 48(%r10)
	je	.LBB4_55
# %bb.30:                               # %if.then26
	movslq	(%rsi), %r13
	cmpl	$0, 32(%r10)
	jle	.LBB4_58
# %bb.31:                               # %for.cond.preheader.i106
	testl	%r12d, %r12d
	jle	.LBB4_80
# %bb.32:                               # %for.cond2.preheader.lr.ph.i107
	movl	56(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB4_80
# %bb.33:                               # %for.cond2.preheader.us.preheader.i113
	movl	%edx, %r8d
	leal	-1(%r12), %edx
	movq	%r13, %r11
	imulq	%rdx, %r11
	addq	%rdi, %r11
	addq	%r8, %r11
	movslq	%ecx, %r9
	imulq	%r9, %rdx
	addq	%r15, %rdx
	addq	%r14, %rdx
	addq	%r8, %rdx
	addq	%rdx, %rbp
	cmpq	%rdi, %rbp
	seta	%dl
	cmpq	%r11, %rax
	setb	%sil
	andb	%dl, %sil
	leaq	44(%r10), %rdx
	orl	%r13d, %ecx
	sets	%cl
	cmpq	%rdi, %rdx
	leaq	32(%r10), %rdx
	seta	%bl
	cmpq	%r11, %rdx
	setb	%dl
	andb	%bl, %dl
	testl	%r13d, %r13d
	sets	%bpl
	orb	%dl, %bpl
	orb	%cl, %bpl
	orb	%sil, %bpl
	movl	%r8d, %r14d
	andl	$2147483632, %r14d              # imm = 0x7FFFFFF0
	xorl	%r15d, %r15d
	pxor	%xmm2, %xmm2
	movq	%rdi, %rsi
	movq	%rdi, %r12
	jmp	.LBB4_35
	.p2align	4, 0x90
.LBB4_34:                               # %for.cond2.for.cond.cleanup4_crit_edge.us.i136
                                        #   in Loop: Header=BB4_35 Depth=1
	incl	%r15d
	addq	%r13, %r12
	addq	%r9, %rax
	movl	64(%rsp), %ecx
	cmpl	%ecx, %r15d
	je	.LBB4_78
.LBB4_35:                               # %for.cond2.preheader.us.i115
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
                                        #     Child Loop BB4_40 Depth 2
	cmpl	$16, 56(%rsp)
	setb	%cl
	orb	%bpl, %cl
	je	.LBB4_37
# %bb.36:                               #   in Loop: Header=BB4_35 Depth=1
	xorl	%edi, %edi
	jmp	.LBB4_40
	.p2align	4, 0x90
.LBB4_37:                               # %vector.ph316
                                        #   in Loop: Header=BB4_35 Depth=1
	movd	36(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm3                # xmm3 = xmm0[0,0,0,0]
	movd	32(%r10), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pshufd	$0, %xmm0, %xmm1                # xmm1 = xmm0[0,0,0,0]
	paddd	.LCPI4_4(%rip), %xmm1
	psrldq	$12, %xmm1                      # xmm1 = xmm1[12,13,14,15],zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero,zero
	movdqa	.LCPI4_3(%rip), %xmm7           # xmm7 = [1,1,1,1]
	pslld	%xmm1, %xmm7
	movd	40(%r10), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pshufd	$0, %xmm1, %xmm8                # xmm8 = xmm1[0,0,0,0]
	movdqa	%xmm3, -24(%rsp)                # 16-byte Spill
	pshufd	$245, %xmm3, %xmm9              # xmm9 = xmm3[1,1,3,3]
	xorps	%xmm10, %xmm10
	movss	%xmm0, %xmm10                   # xmm10 = xmm0[0],xmm10[1,2,3]
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_38:                               # %vector.body320
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%rax,%rcx), %xmm4              # xmm4 = mem[0],zero,zero,zero
	movd	4(%rax,%rcx), %xmm13            # xmm13 = mem[0],zero,zero,zero
	movd	8(%rax,%rcx), %xmm1             # xmm1 = mem[0],zero,zero,zero
	movd	12(%rax,%rcx), %xmm0            # xmm0 = mem[0],zero,zero,zero
	punpcklbw	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3],xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	punpcklbw	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3],xmm13[4],xmm2[4],xmm13[5],xmm2[5],xmm13[6],xmm2[6],xmm13[7],xmm2[7]
	punpcklwd	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1],xmm13[2],xmm2[2],xmm13[3],xmm2[3]
	punpcklbw	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3],xmm1[4],xmm2[4],xmm1[5],xmm2[5],xmm1[6],xmm2[6],xmm1[7],xmm2[7]
	punpcklwd	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1],xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	punpcklbw	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3],xmm0[4],xmm2[4],xmm0[5],xmm2[5],xmm0[6],xmm2[6],xmm0[7],xmm2[7]
	punpcklwd	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1],xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movdqa	-24(%rsp), %xmm3                # 16-byte Reload
	movdqa	%xmm3, %xmm11
	pmuludq	%xmm4, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm11           # xmm11 = xmm11[0],xmm4[0],xmm11[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm13, %xmm4
	pshufd	$232, %xmm4, %xmm12             # xmm12 = xmm4[0,2,2,3]
	pshufd	$245, %xmm13, %xmm4             # xmm4 = xmm13[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm12           # xmm12 = xmm12[0],xmm4[0],xmm12[1],xmm4[1]
	movdqa	%xmm3, %xmm4
	pmuludq	%xmm1, %xmm4
	pshufd	$232, %xmm4, %xmm13             # xmm13 = xmm4[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm9, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	movdqa	%xmm3, %xmm1
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm5              # xmm5 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	paddd	%xmm7, %xmm11
	paddd	%xmm7, %xmm12
	paddd	%xmm7, %xmm13
	paddd	%xmm7, %xmm5
	psrad	%xmm10, %xmm11
	psrad	%xmm10, %xmm12
	psrad	%xmm10, %xmm13
	psrad	%xmm10, %xmm5
	paddd	%xmm8, %xmm11
	paddd	%xmm8, %xmm12
	paddd	%xmm8, %xmm13
	paddd	%xmm8, %xmm5
	movdqa	%xmm11, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm3           # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm3, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm6           # xmm6 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm6, %xmm15
	pcmpgtd	%xmm0, %xmm15
	movdqa	%xmm12, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm1
	pcmpgtd	%xmm0, %xmm1
	movdqa	%xmm13, %xmm0
	pxor	%xmm3, %xmm0
	movdqa	%xmm6, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	%xmm5, %xmm14
	pxor	%xmm3, %xmm14
	pcmpgtd	%xmm14, %xmm6
	movdqa	%xmm11, %xmm14
	pcmpgtd	%xmm2, %xmm14
	pand	%xmm15, %xmm11
	pandn	%xmm14, %xmm15
	por	%xmm11, %xmm15
	movdqa	%xmm12, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm1, %xmm12
	pandn	%xmm11, %xmm1
	por	%xmm12, %xmm1
	movdqa	%xmm13, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm4, %xmm13
	pandn	%xmm11, %xmm4
	por	%xmm13, %xmm4
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm2, %xmm11
	pand	%xmm6, %xmm5
	pandn	%xmm11, %xmm6
	por	%xmm5, %xmm6
	movdqa	.LCPI4_2(%rip), %xmm5           # xmm5 = [255,0,255,0,255,0,255,0]
	pand	%xmm5, %xmm15
	packuswb	%xmm15, %xmm15
	pand	%xmm5, %xmm1
	packuswb	%xmm1, %xmm1
	packuswb	%xmm1, %xmm15
	pand	%xmm5, %xmm4
	packuswb	%xmm4, %xmm4
	pand	%xmm5, %xmm6
	packuswb	%xmm6, %xmm6
	packuswb	%xmm6, %xmm4
	shufps	$136, %xmm4, %xmm15             # xmm15 = xmm15[0,2],xmm4[0,2]
	movups	%xmm15, (%r12,%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %r14
	jne	.LBB4_38
# %bb.39:                               # %middle.block313
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	%r14, %rdi
	cmpl	%r8d, %r14d
	je	.LBB4_34
	.p2align	4, 0x90
.LBB4_40:                               # %for.body5.us.i119
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdi), %r11d
	imull	36(%r10), %r11d
	movzbl	32(%r10), %edx
	leal	-1(%rdx), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%edx, %ecx
	sarl	%cl, %ebx
	addl	40(%r10), %ebx
	testl	%ebx, %ebx
	setg	%cl
	negb	%cl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%cl, %ecx
	cmovbl	%ebx, %ecx
	movb	%cl, (%r12,%rdi)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB4_40
	jmp	.LBB4_34
.LBB4_41:
	movq	-32(%rsp), %rax                 # 8-byte Reload
	jmp	.LBB4_81
.LBB4_42:                               # %for.cond17.preheader.i
	movl	64(%rsp), %r15d
	testl	%r15d, %r15d
	jle	.LBB4_75
# %bb.43:                               # %for.cond23.preheader.lr.ph.i
	testl	%r13d, %r13d
	jle	.LBB4_75
# %bb.44:                               # %for.cond23.preheader.us.preheader.i
	movl	%r13d, %eax
	leal	-1(%r15), %ecx
	imulq	%rdx, %rcx
	addq	%r12, %rcx
	addq	%rax, %rcx
	leaq	44(%r10), %rsi
	cmpq	%r12, %rsi
	seta	%sil
	leaq	36(%r10), %rdi
	cmpq	%rcx, %rdi
	setb	%dil
	andb	%sil, %dil
	testl	%edx, %edx
	sets	%cl
	orb	%dil, %cl
	movl	%eax, %esi
	andl	$2147483632, %esi               # imm = 0x7FFFFFF0
	leaq	-1(%rax), %r8
	xorl	%r9d, %r9d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI4_1(%rip), %xmm2           # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI4_2(%rip), %xmm3           # xmm3 = [255,0,255,0,255,0,255,0]
	movq	%r12, %r14
	jmp	.LBB4_46
	.p2align	4, 0x90
.LBB4_45:                               # %for.cond23.for.cond.cleanup26_crit_edge.us.i
                                        #   in Loop: Header=BB4_46 Depth=1
	incl	%r9d
	addq	%rdx, %r14
	cmpl	%r15d, %r9d
	je	.LBB4_75
.LBB4_46:                               # %for.cond23.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_49 Depth 2
                                        #     Child Loop BB4_54 Depth 2
	cmpl	$16, %r13d
	setb	%dil
	orb	%cl, %dil
	je	.LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_46 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB4_51
	.p2align	4, 0x90
.LBB4_48:                               # %vector.ph186
                                        #   in Loop: Header=BB4_46 Depth=1
	movd	36(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	movd	40(%r10), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	pshufd	$0, %xmm5, %xmm5                # xmm5 = xmm5[0,0,0,0]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_49:                               # %vector.body190
                                        #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%r14,%rdi), %xmm9              # xmm9 = mem[0],zero,zero,zero
	movd	4(%r14,%rdi), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movd	8(%r14,%rdi), %xmm11            # xmm11 = mem[0],zero,zero,zero
	movd	12(%r14,%rdi), %xmm7            # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklbw	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3],xmm10[4],xmm0[4],xmm10[5],xmm0[5],xmm10[6],xmm0[6],xmm10[7],xmm0[7]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movdqa	%xmm4, %xmm8
	pmuludq	%xmm9, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm6, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	movdqa	%xmm4, %xmm9
	pmuludq	%xmm10, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshufd	$245, %xmm10, %xmm10            # xmm10 = xmm10[1,1,3,3]
	pmuludq	%xmm6, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1]
	movdqa	%xmm4, %xmm10
	pmuludq	%xmm11, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshufd	$245, %xmm11, %xmm11            # xmm11 = xmm11[1,1,3,3]
	pmuludq	%xmm6, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	movdqa	%xmm4, %xmm11
	pmuludq	%xmm7, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	paddd	%xmm5, %xmm8
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm11
	movdqa	%xmm8, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm12, %xmm7
	movdqa	%xmm9, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm12, %xmm14
	movdqa	%xmm10, %xmm13
	pxor	%xmm1, %xmm13
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm13, %xmm12
	movdqa	%xmm11, %xmm15
	pxor	%xmm1, %xmm15
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm15, %xmm13
	movdqa	%xmm8, %xmm15
	pcmpgtd	%xmm0, %xmm15
	pand	%xmm7, %xmm8
	pandn	%xmm15, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm14, %xmm9
	pandn	%xmm8, %xmm14
	por	%xmm9, %xmm14
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm12, %xmm10
	pandn	%xmm8, %xmm12
	por	%xmm10, %xmm12
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm13, %xmm11
	pandn	%xmm8, %xmm13
	por	%xmm11, %xmm13
	pand	%xmm3, %xmm7
	packuswb	%xmm7, %xmm7
	pand	%xmm3, %xmm14
	packuswb	%xmm14, %xmm14
	packuswb	%xmm14, %xmm7
	pand	%xmm3, %xmm12
	packuswb	%xmm12, %xmm12
	pand	%xmm3, %xmm13
	packuswb	%xmm13, %xmm13
	packuswb	%xmm13, %xmm12
	shufps	$136, %xmm12, %xmm7             # xmm7 = xmm7[0,2],xmm12[0,2]
	movups	%xmm7, (%r14,%rdi)
	addq	$16, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB4_49
# %bb.50:                               # %middle.block184
                                        #   in Loop: Header=BB4_46 Depth=1
	movq	%rsi, %r11
	cmpl	%eax, %esi
	je	.LBB4_45
.LBB4_51:                               # %for.body27.us.i.preheader
                                        #   in Loop: Header=BB4_46 Depth=1
	movq	%r11, %rdi
	testb	$1, %al
	je	.LBB4_53
# %bb.52:                               # %for.body27.us.i.prol
                                        #   in Loop: Header=BB4_46 Depth=1
	movzbl	(%r14,%r11), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bl
	negb	%bl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%edi, %ebx
	movb	%bl, (%r14,%r11)
	movq	%r11, %rdi
	orq	$1, %rdi
.LBB4_53:                               # %for.body27.us.i.prol.loopexit
                                        #   in Loop: Header=BB4_46 Depth=1
	cmpq	%r8, %r11
	je	.LBB4_45
	.p2align	4, 0x90
.LBB4_54:                               # %for.body27.us.i
                                        #   Parent Loop BB4_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r14,%rdi), %r11d
	imull	36(%r10), %r11d
	addl	40(%r10), %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%r14,%rdi)
	movzbl	1(%r14,%rdi), %r11d
	imull	36(%r10), %r11d
	addl	40(%r10), %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 1(%r14,%rdi)
	addq	$2, %rdi
	cmpq	%rdi, %rax
	jne	.LBB4_54
	jmp	.LBB4_45
.LBB4_75:
	movq	%r12, %rax
	jmp	.LBB4_81
.LBB4_55:                               # %if.else27
	movl	%ecx, (%rsi)
	jmp	.LBB4_81
.LBB4_58:                               # %for.cond17.preheader.i75
	testl	%r12d, %r12d
	jle	.LBB4_80
# %bb.59:                               # %for.cond23.preheader.lr.ph.i76
	movl	56(%rsp), %edx
	testl	%edx, %edx
	jle	.LBB4_80
# %bb.60:                               # %for.cond23.preheader.us.preheader.i82
	movl	%edx, %edx
	leal	-1(%r12), %r9d
	movq	%r13, %r11
	imulq	%r9, %r11
	addq	%rdi, %r11
	addq	%rdx, %r11
	movslq	%ecx, %r8
	imulq	%r8, %r9
	addq	%r15, %r9
	addq	%r14, %r9
	addq	%rdx, %r9
	addq	%r9, %rbp
	leaq	36(%r10), %r9
	cmpq	%rdi, %rbp
	seta	%sil
	cmpq	%r11, %rax
	setb	%bl
	andb	%sil, %bl
	leaq	44(%r10), %rsi
	orl	%r13d, %ecx
	sets	%bpl
	cmpq	%rdi, %rsi
	seta	%cl
	cmpq	%r11, %r9
	setb	%sil
	andb	%cl, %sil
	testl	%r13d, %r13d
	sets	%cl
	orb	%sil, %cl
	orb	%bpl, %cl
	movq	%r12, %rbp
	orb	%bl, %cl
	movl	%edx, %r9d
	andl	$2147483632, %r9d               # imm = 0x7FFFFFF0
	leaq	-1(%rdx), %r14
	xorl	%r15d, %r15d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI4_1(%rip), %xmm2           # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI4_2(%rip), %xmm3           # xmm3 = [255,0,255,0,255,0,255,0]
	movq	%rdi, %rsi
	movq	%rdi, %r12
	jmp	.LBB4_62
	.p2align	4, 0x90
.LBB4_61:                               # %for.cond23.for.cond.cleanup26_crit_edge.us.i101
                                        #   in Loop: Header=BB4_62 Depth=1
	incl	%r15d
	addq	%r13, %r12
	addq	%r8, %rax
	cmpl	%ebp, %r15d
	je	.LBB4_78
.LBB4_62:                               # %for.cond23.preheader.us.i84
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_65 Depth 2
                                        #     Child Loop BB4_70 Depth 2
	cmpl	$16, 56(%rsp)
	setb	%dil
	orb	%cl, %dil
	je	.LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_62 Depth=1
	xorl	%r11d, %r11d
	jmp	.LBB4_67
	.p2align	4, 0x90
.LBB4_64:                               # %vector.ph273
                                        #   in Loop: Header=BB4_62 Depth=1
	movd	36(%r10), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	pshufd	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	movd	40(%r10), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	pshufd	$0, %xmm5, %xmm5                # xmm5 = xmm5[0,0,0,0]
	pshufd	$245, %xmm4, %xmm6              # xmm6 = xmm4[1,1,3,3]
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_65:                               # %vector.body277
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movd	(%rax,%rdi), %xmm9              # xmm9 = mem[0],zero,zero,zero
	movd	4(%rax,%rdi), %xmm10            # xmm10 = mem[0],zero,zero,zero
	movd	8(%rax,%rdi), %xmm11            # xmm11 = mem[0],zero,zero,zero
	movd	12(%rax,%rdi), %xmm7            # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklbw	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3],xmm10[4],xmm0[4],xmm10[5],xmm0[5],xmm10[6],xmm0[6],xmm10[7],xmm0[7]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movdqa	%xmm4, %xmm8
	pmuludq	%xmm9, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm6, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	movdqa	%xmm4, %xmm9
	pmuludq	%xmm10, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pshufd	$245, %xmm10, %xmm10            # xmm10 = xmm10[1,1,3,3]
	pmuludq	%xmm6, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	punpckldq	%xmm10, %xmm9           # xmm9 = xmm9[0],xmm10[0],xmm9[1],xmm10[1]
	movdqa	%xmm4, %xmm10
	pmuludq	%xmm11, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pshufd	$245, %xmm11, %xmm11            # xmm11 = xmm11[1,1,3,3]
	pmuludq	%xmm6, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0],xmm10[1],xmm11[1]
	movdqa	%xmm4, %xmm11
	pmuludq	%xmm7, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	paddd	%xmm5, %xmm8
	paddd	%xmm5, %xmm9
	paddd	%xmm5, %xmm10
	paddd	%xmm5, %xmm11
	movdqa	%xmm8, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm7
	pcmpgtd	%xmm12, %xmm7
	movdqa	%xmm9, %xmm12
	pxor	%xmm1, %xmm12
	movdqa	%xmm2, %xmm14
	pcmpgtd	%xmm12, %xmm14
	movdqa	%xmm10, %xmm13
	pxor	%xmm1, %xmm13
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm13, %xmm12
	movdqa	%xmm11, %xmm15
	pxor	%xmm1, %xmm15
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm15, %xmm13
	movdqa	%xmm8, %xmm15
	pcmpgtd	%xmm0, %xmm15
	pand	%xmm7, %xmm8
	pandn	%xmm15, %xmm7
	por	%xmm8, %xmm7
	movdqa	%xmm9, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm14, %xmm9
	pandn	%xmm8, %xmm14
	por	%xmm9, %xmm14
	movdqa	%xmm10, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm12, %xmm10
	pandn	%xmm8, %xmm12
	por	%xmm10, %xmm12
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
	pand	%xmm13, %xmm11
	pandn	%xmm8, %xmm13
	por	%xmm11, %xmm13
	pand	%xmm3, %xmm7
	packuswb	%xmm7, %xmm7
	pand	%xmm3, %xmm14
	packuswb	%xmm14, %xmm14
	packuswb	%xmm14, %xmm7
	pand	%xmm3, %xmm12
	packuswb	%xmm12, %xmm12
	pand	%xmm3, %xmm13
	packuswb	%xmm13, %xmm13
	packuswb	%xmm13, %xmm12
	shufps	$136, %xmm12, %xmm7             # xmm7 = xmm7[0,2],xmm12[0,2]
	movups	%xmm7, (%r12,%rdi)
	addq	$16, %rdi
	cmpq	%rdi, %r9
	jne	.LBB4_65
# %bb.66:                               # %middle.block270
                                        #   in Loop: Header=BB4_62 Depth=1
	movq	%r9, %r11
	cmpl	%edx, %r9d
	je	.LBB4_61
.LBB4_67:                               # %for.body27.us.i88.preheader
                                        #   in Loop: Header=BB4_62 Depth=1
	movq	%r11, %rdi
	testb	$1, %dl
	je	.LBB4_69
# %bb.68:                               # %for.body27.us.i88.prol
                                        #   in Loop: Header=BB4_62 Depth=1
	movzbl	(%rax,%r11), %edi
	imull	36(%r10), %edi
	addl	40(%r10), %edi
	testl	%edi, %edi
	setg	%bl
	negb	%bl
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%edi, %ebx
	movb	%bl, (%r12,%r11)
	movq	%r11, %rdi
	orq	$1, %rdi
.LBB4_69:                               # %for.body27.us.i88.prol.loopexit
                                        #   in Loop: Header=BB4_62 Depth=1
	cmpq	%r14, %r11
	je	.LBB4_61
	.p2align	4, 0x90
.LBB4_70:                               # %for.body27.us.i88
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdi), %r11d
	imull	36(%r10), %r11d
	addl	40(%r10), %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%r12,%rdi)
	movzbl	1(%rax,%rdi), %r11d
	imull	36(%r10), %r11d
	addl	40(%r10), %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 1(%r12,%rdi)
	addq	$2, %rdi
	cmpq	%rdi, %rdx
	jne	.LBB4_70
	jmp	.LBB4_61
.LBB4_80:
	movq	%rdi, %rax
	jmp	.LBB4_81
.LBB4_78:
	movq	%rsi, %rax
.LBB4_81:                               # %cleanup
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
	.size	get_ref, .Lfunc_end4-get_ref
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mc_chroma
.LCPI5_0:
	.long	32                              # 0x20
	.long	32                              # 0x20
	.long	32                              # 0x20
	.long	32                              # 0x20
.LCPI5_1:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI5_2:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	mc_chroma,@function
mc_chroma:                              # @mc_chroma
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
	movl	328(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB5_13
# %bb.1:                                # %for.cond10.preheader.lr.ph
	movl	320(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.LBB5_13
# %bb.2:                                # %for.cond10.preheader.us.preheader
	movslq	%ecx, %rcx
	movl	%r9d, %eax
	andl	$7, %eax
	movl	$8, %r11d
	movl	$8, %ebx
	subl	%eax, %ebx
	movl	%r8d, %ebp
	andl	$7, %ebp
	subl	%ebp, %r11d
	movd	%r11d, %xmm0
	movd	%ebp, %xmm1
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pshufd	$80, %xmm1, %xmm0               # xmm0 = xmm1[0,0,1,1]
	movd	%ebx, %xmm1
	movd	%eax, %xmm2
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$68, %xmm1, %xmm5               # xmm5 = xmm1[0,1,0,1]
	pmaddwd	%xmm0, %xmm5
	movslq	%esi, %rsi
	sarl	$3, %r9d
	imull	%ecx, %r9d
	sarl	$3, %r8d
	addl	%r9d, %r8d
	movslq	%r8d, %r8
	leaq	(%rdx,%r8), %r9
	movl	%r10d, %r11d
	movl	328(%rsp), %eax
	movq	%rax, %r15
	leal	-1(%rax), %ebx
	movq	%rsi, %rax
	imulq	%rbx, %rax
	addq	%rdi, %rax
	addq	%r11, %rax
	leaq	(%r9,%rcx), %r14
	movl	%r15d, %r15d
	imulq	%rcx, %r15
	addq	%r9, %r15
	addq	%r11, %r15
	incq	%r15
	imulq	%rcx, %rbx
	addq	%r9, %rbx
	cmpq	%rdi, %r15
	seta	%bpl
	addq	%r11, %rbx
	incq	%rbx
	cmpq	%rax, %r14
	setb	%r14b
	andb	%bpl, %r14b
	movl	%esi, %ebp
	orl	%ecx, %ebp
	sets	%bpl
	orb	%bpl, %r14b
	cmpq	%rdi, %rbx
	seta	%r15b
	cmpq	%rax, %r9
	setb	%bl
	andb	%r15b, %bl
	orb	%bpl, %bl
	orb	%r14b, %bl
	movl	%r11d, %r14d
	andl	$2147483584, %r14d              # imm = 0x7FFFFFC0
	pshufd	$170, %xmm5, %xmm0              # xmm0 = xmm5[2,2,2,2]
	pshufd	$0, %xmm5, %xmm6                # xmm6 = xmm5[0,0,0,0]
	pshufd	$255, %xmm5, %xmm1              # xmm1 = xmm5[3,3,3,3]
	pshufd	$85, %xmm5, %xmm3               # xmm3 = xmm5[1,1,1,1]
	movl	%r11d, %eax
	andl	$2147483640, %eax               # imm = 0x7FFFFFF8
	addq	%rcx, %r8
	leaq	(%rdx,%r8), %r12
	addq	$49, %r12
	leaq	(%rdx,%r8), %r13
	incq	%r13
	addq	%rdx, %r8
	xorl	%edx, %edx
	pxor	%xmm8, %xmm8
	movdqa	%xmm1, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm3, %xmm9
	packssdw	%xmm9, %xmm9
	punpcklwd	%xmm2, %xmm9            # xmm9 = xmm9[0],xmm2[0],xmm9[1],xmm2[1],xmm9[2],xmm2[2],xmm9[3],xmm2[3]
	movdqa	%xmm1, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm3, %xmm10
	packssdw	%xmm10, %xmm10
	punpcklwd	%xmm2, %xmm10           # xmm10 = xmm10[0],xmm2[0],xmm10[1],xmm2[1],xmm10[2],xmm2[2],xmm10[3],xmm2[3]
	movdqa	%xmm0, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm6, %xmm11
	packssdw	%xmm11, %xmm11
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	movdqa	%xmm0, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm6, %xmm12
	packssdw	%xmm12, %xmm12
	punpcklwd	%xmm2, %xmm12           # xmm12 = xmm12[0],xmm2[0],xmm12[1],xmm2[1],xmm12[2],xmm2[2],xmm12[3],xmm2[3]
	movdqa	%xmm1, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm3, %xmm4
	packssdw	%xmm4, %xmm4
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movdqa	%xmm4, -48(%rsp)                # 16-byte Spill
	movdqa	%xmm1, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm3, %xmm4
	packssdw	%xmm4, %xmm4
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movdqa	%xmm4, 16(%rsp)                 # 16-byte Spill
	movdqa	%xmm1, %xmm2
	packssdw	%xmm2, %xmm2
	movdqa	%xmm3, %xmm4
	packssdw	%xmm4, %xmm4
	punpcklwd	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1],xmm4[2],xmm2[2],xmm4[3],xmm2[3]
	movdqa	%xmm4, -64(%rsp)                # 16-byte Spill
	packssdw	%xmm1, %xmm1
	packssdw	%xmm3, %xmm3
	punpcklwd	%xmm1, %xmm3            # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1],xmm3[2],xmm1[2],xmm3[3],xmm1[3]
	movdqa	%xmm3, -16(%rsp)                # 16-byte Spill
	movdqa	%xmm0, %xmm1
	packssdw	%xmm1, %xmm1
	movdqa	%xmm6, %xmm7
	packssdw	%xmm7, %xmm7
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movdqa	%xmm0, %xmm1
	packssdw	%xmm1, %xmm1
	movdqa	%xmm6, %xmm14
	packssdw	%xmm14, %xmm14
	punpcklwd	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1],xmm14[2],xmm1[2],xmm14[3],xmm1[3]
	movdqa	%xmm0, %xmm1
	packssdw	%xmm1, %xmm1
	movdqa	%xmm6, %xmm15
	packssdw	%xmm15, %xmm15
	punpcklwd	%xmm1, %xmm15           # xmm15 = xmm15[0],xmm1[0],xmm15[1],xmm1[1],xmm15[2],xmm1[2],xmm15[3],xmm1[3]
	movdqa	.LCPI5_0(%rip), %xmm13          # xmm13 = [32,32,32,32]
	packssdw	%xmm0, %xmm0
	packssdw	%xmm6, %xmm6
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	movdqa	%xmm6, -32(%rsp)                # 16-byte Spill
	movdqa	.LCPI5_1(%rip), %xmm6           # xmm6 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	movdqa	%xmm5, 96(%rsp)                 # 16-byte Spill
	movdqa	%xmm9, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm10, 64(%rsp)                # 16-byte Spill
	movdqa	%xmm11, 48(%rsp)                # 16-byte Spill
	movdqa	%xmm12, 32(%rsp)                # 16-byte Spill
	movdqa	%xmm14, -80(%rsp)               # 16-byte Spill
	movdqa	%xmm7, -128(%rsp)               # 16-byte Spill
	movdqa	%xmm15, -96(%rsp)               # 16-byte Spill
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_12:                               # %for.cond10.for.cond.cleanup12_crit_edge.us
                                        #   in Loop: Header=BB5_3 Depth=1
	addq	%rcx, %r9
	addq	%rsi, %rdi
	incl	%edx
	addq	%rcx, %r12
	addq	%rcx, %r13
	addq	%rcx, %r8
	movl	328(%rsp), %r15d
	cmpl	%r15d, %edx
	je	.LBB5_13
.LBB5_3:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	cmpl	$8, %r10d
	setb	%bpl
	orb	%bl, %bpl
	je	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB5_11
	.p2align	4, 0x90
.LBB5_5:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB5_3 Depth=1
	xorl	%ebp, %ebp
	cmpl	$64, %r10d
	jb	.LBB5_9
	.p2align	4, 0x90
.LBB5_6:                                # %vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-17(%r12,%rbp), %xmm8
	movdqu	-1(%r12,%rbp), %xmm3
	movdqu	-49(%r12,%rbp), %xmm9
	movdqu	-48(%r12,%rbp), %xmm2
	movdqu	-33(%r12,%rbp), %xmm7
	movdqu	-32(%r12,%rbp), %xmm1
	movdqa	%xmm9, %xmm13
	pxor	%xmm4, %xmm4
	punpckhbw	%xmm4, %xmm13           # xmm13 = xmm13[8],xmm4[8],xmm13[9],xmm4[9],xmm13[10],xmm4[10],xmm13[11],xmm4[11],xmm13[12],xmm4[12],xmm13[13],xmm4[13],xmm13[14],xmm4[14],xmm13[15],xmm4[15]
	punpcklbw	%xmm4, %xmm9            # xmm9 = xmm9[0],xmm4[0],xmm9[1],xmm4[1],xmm9[2],xmm4[2],xmm9[3],xmm4[3],xmm9[4],xmm4[4],xmm9[5],xmm4[5],xmm9[6],xmm4[6],xmm9[7],xmm4[7]
	movdqa	%xmm7, %xmm10
	punpckhbw	%xmm4, %xmm10           # xmm10 = xmm10[8],xmm4[8],xmm10[9],xmm4[9],xmm10[10],xmm4[10],xmm10[11],xmm4[11],xmm10[12],xmm4[12],xmm10[13],xmm4[13],xmm10[14],xmm4[14],xmm10[15],xmm4[15]
	punpcklbw	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1],xmm7[2],xmm4[2],xmm7[3],xmm4[3],xmm7[4],xmm4[4],xmm7[5],xmm4[5],xmm7[6],xmm4[6],xmm7[7],xmm4[7]
	movdqa	%xmm8, %xmm11
	punpckhbw	%xmm4, %xmm11           # xmm11 = xmm11[8],xmm4[8],xmm11[9],xmm4[9],xmm11[10],xmm4[10],xmm11[11],xmm4[11],xmm11[12],xmm4[12],xmm11[13],xmm4[13],xmm11[14],xmm4[14],xmm11[15],xmm4[15]
	punpcklbw	%xmm4, %xmm8            # xmm8 = xmm8[0],xmm4[0],xmm8[1],xmm4[1],xmm8[2],xmm4[2],xmm8[3],xmm4[3],xmm8[4],xmm4[4],xmm8[5],xmm4[5],xmm8[6],xmm4[6],xmm8[7],xmm4[7]
	movdqa	%xmm3, %xmm15
	punpcklbw	%xmm4, %xmm3            # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1],xmm3[2],xmm4[2],xmm3[3],xmm4[3],xmm3[4],xmm4[4],xmm3[5],xmm4[5],xmm3[6],xmm4[6],xmm3[7],xmm4[7]
	movdqu	-16(%r12,%rbp), %xmm0
	movups	(%r12,%rbp), %xmm5
	movaps	%xmm5, (%rsp)                   # 16-byte Spill
	movdqa	%xmm2, %xmm5
	punpckhbw	%xmm4, %xmm5            # xmm5 = xmm5[8],xmm4[8],xmm5[9],xmm4[9],xmm5[10],xmm4[10],xmm5[11],xmm4[11],xmm5[12],xmm4[12],xmm5[13],xmm4[13],xmm5[14],xmm4[14],xmm5[15],xmm4[15]
	punpcklbw	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1],xmm2[2],xmm4[2],xmm2[3],xmm4[3],xmm2[4],xmm4[4],xmm2[5],xmm4[5],xmm2[6],xmm4[6],xmm2[7],xmm4[7]
	movdqa	%xmm1, %xmm14
	punpckhbw	%xmm4, %xmm14           # xmm14 = xmm14[8],xmm4[8],xmm14[9],xmm4[9],xmm14[10],xmm4[10],xmm14[11],xmm4[11],xmm14[12],xmm4[12],xmm14[13],xmm4[13],xmm14[14],xmm4[14],xmm14[15],xmm4[15]
	punpcklbw	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3],xmm1[4],xmm4[4],xmm1[5],xmm4[5],xmm1[6],xmm4[6],xmm1[7],xmm4[7]
	movdqa	%xmm0, %xmm12
	punpckhbw	%xmm4, %xmm12           # xmm12 = xmm12[8],xmm4[8],xmm12[9],xmm4[9],xmm12[10],xmm4[10],xmm12[11],xmm4[11],xmm12[12],xmm4[12],xmm12[13],xmm4[13],xmm12[14],xmm4[14],xmm12[15],xmm4[15]
	punpcklbw	%xmm4, %xmm0            # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1],xmm0[2],xmm4[2],xmm0[3],xmm4[3],xmm0[4],xmm4[4],xmm0[5],xmm4[5],xmm0[6],xmm4[6],xmm0[7],xmm4[7]
	movdqa	%xmm2, %xmm6
	punpckhwd	%xmm9, %xmm6            # xmm6 = xmm6[4],xmm9[4],xmm6[5],xmm9[5],xmm6[6],xmm9[6],xmm6[7],xmm9[7]
	punpcklwd	%xmm9, %xmm2            # xmm2 = xmm2[0],xmm9[0],xmm2[1],xmm9[1],xmm2[2],xmm9[2],xmm2[3],xmm9[3]
	movdqa	%xmm5, %xmm4
	punpcklwd	%xmm13, %xmm4           # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1],xmm4[2],xmm13[2],xmm4[3],xmm13[3]
	punpckhwd	%xmm13, %xmm5           # xmm5 = xmm5[4],xmm13[4],xmm5[5],xmm13[5],xmm5[6],xmm13[6],xmm5[7],xmm13[7]
	movdqa	%xmm1, %xmm9
	punpckhwd	%xmm7, %xmm9            # xmm9 = xmm9[4],xmm7[4],xmm9[5],xmm7[5],xmm9[6],xmm7[6],xmm9[7],xmm7[7]
	movdqa	%xmm9, -112(%rsp)               # 16-byte Spill
	punpcklwd	%xmm7, %xmm1            # xmm1 = xmm1[0],xmm7[0],xmm1[1],xmm7[1],xmm1[2],xmm7[2],xmm1[3],xmm7[3]
	movdqa	%xmm14, %xmm7
	punpcklwd	%xmm10, %xmm7           # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1],xmm7[2],xmm10[2],xmm7[3],xmm10[3]
	punpckhwd	%xmm10, %xmm14          # xmm14 = xmm14[4],xmm10[4],xmm14[5],xmm10[5],xmm14[6],xmm10[6],xmm14[7],xmm10[7]
	movdqa	%xmm0, %xmm9
	punpckhwd	%xmm8, %xmm9            # xmm9 = xmm9[4],xmm8[4],xmm9[5],xmm8[5],xmm9[6],xmm8[6],xmm9[7],xmm8[7]
	movdqa	%xmm9, 112(%rsp)                # 16-byte Spill
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	movdqa	%xmm0, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm12, %xmm8
	punpcklwd	%xmm11, %xmm8           # xmm8 = xmm8[0],xmm11[0],xmm8[1],xmm11[1],xmm8[2],xmm11[2],xmm8[3],xmm11[3]
	movdqa	%xmm8, 160(%rsp)                # 16-byte Spill
	punpckhwd	%xmm11, %xmm12          # xmm12 = xmm12[4],xmm11[4],xmm12[5],xmm11[5],xmm12[6],xmm11[6],xmm12[7],xmm11[7]
	movdqa	%xmm12, 128(%rsp)               # 16-byte Spill
	movdqa	(%rsp), %xmm8                   # 16-byte Reload
	movdqa	%xmm8, %xmm9
	punpcklbw	.LCPI5_2(%rip), %xmm8   # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3],xmm8[4],mem[4],xmm8[5],mem[5],xmm8[6],mem[6],xmm8[7],mem[7]
	movdqa	%xmm8, %xmm11
	punpckhwd	%xmm3, %xmm11           # xmm11 = xmm11[4],xmm3[4],xmm11[5],xmm3[5],xmm11[6],xmm3[6],xmm11[7],xmm3[7]
	movdqa	%xmm11, 176(%rsp)               # 16-byte Spill
	punpcklwd	%xmm3, %xmm8            # xmm8 = xmm8[0],xmm3[0],xmm8[1],xmm3[1],xmm8[2],xmm3[2],xmm8[3],xmm3[3]
	movdqa	%xmm8, (%rsp)                   # 16-byte Spill
	pxor	%xmm0, %xmm0
	punpckhbw	%xmm0, %xmm15           # xmm15 = xmm15[8],xmm0[8],xmm15[9],xmm0[9],xmm15[10],xmm0[10],xmm15[11],xmm0[11],xmm15[12],xmm0[12],xmm15[13],xmm0[13],xmm15[14],xmm0[14],xmm15[15],xmm0[15]
	punpckhbw	%xmm0, %xmm9            # xmm9 = xmm9[8],xmm0[8],xmm9[9],xmm0[9],xmm9[10],xmm0[10],xmm9[11],xmm0[11],xmm9[12],xmm0[12],xmm9[13],xmm0[13],xmm9[14],xmm0[14],xmm9[15],xmm0[15]
	movdqa	%xmm9, %xmm3
	punpcklwd	%xmm15, %xmm3           # xmm3 = xmm3[0],xmm15[0],xmm3[1],xmm15[1],xmm3[2],xmm15[2],xmm3[3],xmm15[3]
	movdqa	%xmm3, 208(%rsp)                # 16-byte Spill
	punpckhwd	%xmm15, %xmm9           # xmm9 = xmm9[4],xmm15[4],xmm9[5],xmm15[5],xmm9[6],xmm15[6],xmm9[7],xmm15[7]
	movdqa	%xmm9, 224(%rsp)                # 16-byte Spill
	movdqu	(%r9,%rbp), %xmm11
	movdqa	%xmm11, %xmm15
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	movdqu	1(%r9,%rbp), %xmm9
	movdqa	%xmm9, %xmm13
	punpcklbw	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3],xmm9[4],xmm0[4],xmm9[5],xmm0[5],xmm9[6],xmm0[6],xmm9[7],xmm0[7]
	movdqa	-48(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm0, %xmm6
	movdqa	%xmm0, %xmm10
	movdqa	%xmm9, %xmm8
	punpckhwd	%xmm11, %xmm8           # xmm8 = xmm8[4],xmm11[4],xmm8[5],xmm11[5],xmm8[6],xmm11[6],xmm8[7],xmm11[7]
	pmaddwd	-128(%rsp), %xmm8               # 16-byte Folded Reload
	paddd	%xmm6, %xmm8
	movdqa	%xmm8, 192(%rsp)                # 16-byte Spill
	punpcklwd	%xmm11, %xmm9           # xmm9 = xmm9[0],xmm11[0],xmm9[1],xmm11[1],xmm9[2],xmm11[2],xmm9[3],xmm11[3]
	movdqa	16(%rsp), %xmm12                # 16-byte Reload
	pmaddwd	%xmm12, %xmm2
	movdqa	-80(%rsp), %xmm11               # 16-byte Reload
	pmaddwd	%xmm11, %xmm9
	paddd	%xmm2, %xmm9
	pxor	%xmm2, %xmm2
	punpckhbw	%xmm2, %xmm15           # xmm15 = xmm15[8],xmm2[8],xmm15[9],xmm2[9],xmm15[10],xmm2[10],xmm15[11],xmm2[11],xmm15[12],xmm2[12],xmm15[13],xmm2[13],xmm15[14],xmm2[14],xmm15[15],xmm2[15]
	movdqa	%xmm13, %xmm6
	punpckhbw	%xmm2, %xmm6            # xmm6 = xmm6[8],xmm2[8],xmm6[9],xmm2[9],xmm6[10],xmm2[10],xmm6[11],xmm2[11],xmm6[12],xmm2[12],xmm6[13],xmm2[13],xmm6[14],xmm2[14],xmm6[15],xmm2[15]
	pmaddwd	-64(%rsp), %xmm4                # 16-byte Folded Reload
	movdqa	%xmm6, %xmm13
	punpcklwd	%xmm15, %xmm13          # xmm13 = xmm13[0],xmm15[0],xmm13[1],xmm15[1],xmm13[2],xmm15[2],xmm13[3],xmm15[3]
	movdqa	-96(%rsp), %xmm3                # 16-byte Reload
	pmaddwd	%xmm3, %xmm13
	paddd	%xmm4, %xmm13
	punpckhwd	%xmm15, %xmm6           # xmm6 = xmm6[4],xmm15[4],xmm6[5],xmm15[5],xmm6[6],xmm15[6],xmm6[7],xmm15[7]
	pmaddwd	-16(%rsp), %xmm5                # 16-byte Folded Reload
	movdqa	-32(%rsp), %xmm8                # 16-byte Reload
	pmaddwd	%xmm8, %xmm6
	paddd	%xmm5, %xmm6
	movdqa	%xmm6, 240(%rsp)                # 16-byte Spill
	movdqu	16(%r9,%rbp), %xmm2
	movdqa	%xmm2, %xmm15
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqu	17(%r9,%rbp), %xmm5
	movdqa	%xmm5, %xmm4
	punpcklbw	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3],xmm5[4],xmm0[4],xmm5[5],xmm0[5],xmm5[6],xmm0[6],xmm5[7],xmm0[7]
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	pmaddwd	%xmm10, %xmm0
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm2, %xmm6            # xmm6 = xmm6[4],xmm2[4],xmm6[5],xmm2[5],xmm6[6],xmm2[6],xmm6[7],xmm2[7]
	movdqa	-128(%rsp), %xmm10              # 16-byte Reload
	pmaddwd	%xmm10, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	punpcklwd	%xmm2, %xmm5            # xmm5 = xmm5[0],xmm2[0],xmm5[1],xmm2[1],xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	pmaddwd	%xmm12, %xmm1
	movdqa	%xmm11, %xmm6
	pmaddwd	%xmm11, %xmm5
	paddd	%xmm1, %xmm5
	pxor	%xmm0, %xmm0
	punpckhbw	%xmm0, %xmm15           # xmm15 = xmm15[8],xmm0[8],xmm15[9],xmm0[9],xmm15[10],xmm0[10],xmm15[11],xmm0[11],xmm15[12],xmm0[12],xmm15[13],xmm0[13],xmm15[14],xmm0[14],xmm15[15],xmm0[15]
	punpckhbw	%xmm0, %xmm4            # xmm4 = xmm4[8],xmm0[8],xmm4[9],xmm0[9],xmm4[10],xmm0[10],xmm4[11],xmm0[11],xmm4[12],xmm0[12],xmm4[13],xmm0[13],xmm4[14],xmm0[14],xmm4[15],xmm0[15]
	movdqa	-64(%rsp), %xmm2                # 16-byte Reload
	pmaddwd	%xmm2, %xmm7
	movdqa	%xmm4, %xmm11
	punpcklwd	%xmm15, %xmm11          # xmm11 = xmm11[0],xmm15[0],xmm11[1],xmm15[1],xmm11[2],xmm15[2],xmm11[3],xmm15[3]
	pmaddwd	%xmm3, %xmm11
	paddd	%xmm7, %xmm11
	punpckhwd	%xmm15, %xmm4           # xmm4 = xmm4[4],xmm15[4],xmm4[5],xmm15[5],xmm4[6],xmm15[6],xmm4[7],xmm15[7]
	movdqa	-16(%rsp), %xmm3                # 16-byte Reload
	pmaddwd	%xmm3, %xmm14
	pmaddwd	%xmm8, %xmm4
	paddd	%xmm14, %xmm4
	movdqu	32(%r9,%rbp), %xmm0
	movdqa	%xmm0, %xmm1
	pxor	%xmm8, %xmm8
	punpcklbw	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3],xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	movdqu	33(%r9,%rbp), %xmm7
	movdqa	%xmm7, %xmm15
	punpcklbw	%xmm8, %xmm7            # xmm7 = xmm7[0],xmm8[0],xmm7[1],xmm8[1],xmm7[2],xmm8[2],xmm7[3],xmm8[3],xmm7[4],xmm8[4],xmm7[5],xmm8[5],xmm7[6],xmm8[6],xmm7[7],xmm8[7]
	movdqa	112(%rsp), %xmm14               # 16-byte Reload
	pmaddwd	-48(%rsp), %xmm14               # 16-byte Folded Reload
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm0, %xmm8            # xmm8 = xmm8[4],xmm0[4],xmm8[5],xmm0[5],xmm8[6],xmm0[6],xmm8[7],xmm0[7]
	pmaddwd	%xmm10, %xmm8
	paddd	%xmm14, %xmm8
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movdqa	144(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm12, %xmm0
	pmaddwd	%xmm6, %xmm7
	paddd	%xmm0, %xmm7
	pxor	%xmm0, %xmm0
	punpckhbw	%xmm0, %xmm1            # xmm1 = xmm1[8],xmm0[8],xmm1[9],xmm0[9],xmm1[10],xmm0[10],xmm1[11],xmm0[11],xmm1[12],xmm0[12],xmm1[13],xmm0[13],xmm1[14],xmm0[14],xmm1[15],xmm0[15]
	punpckhbw	%xmm0, %xmm15           # xmm15 = xmm15[8],xmm0[8],xmm15[9],xmm0[9],xmm15[10],xmm0[10],xmm15[11],xmm0[11],xmm15[12],xmm0[12],xmm15[13],xmm0[13],xmm15[14],xmm0[14],xmm15[15],xmm0[15]
	movdqa	160(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm2, %xmm0
	movdqa	%xmm15, %xmm10
	punpcklwd	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0],xmm10[1],xmm1[1],xmm10[2],xmm1[2],xmm10[3],xmm1[3]
	movdqa	-96(%rsp), %xmm6                # 16-byte Reload
	pmaddwd	%xmm6, %xmm10
	paddd	%xmm0, %xmm10
	punpckhwd	%xmm1, %xmm15           # xmm15 = xmm15[4],xmm1[4],xmm15[5],xmm1[5],xmm15[6],xmm1[6],xmm15[7],xmm1[7]
	movdqa	128(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm3, %xmm0
	pmaddwd	-32(%rsp), %xmm15               # 16-byte Folded Reload
	paddd	%xmm0, %xmm15
	movdqu	48(%r9,%rbp), %xmm14
	movdqa	%xmm14, %xmm0
	pxor	%xmm1, %xmm1
	punpcklbw	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1],xmm14[2],xmm1[2],xmm14[3],xmm1[3],xmm14[4],xmm1[4],xmm14[5],xmm1[5],xmm14[6],xmm1[6],xmm14[7],xmm1[7]
	movdqu	49(%r9,%rbp), %xmm12
	movdqa	%xmm12, %xmm2
	punpcklbw	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1],xmm12[2],xmm1[2],xmm12[3],xmm1[3],xmm12[4],xmm1[4],xmm12[5],xmm1[5],xmm12[6],xmm1[6],xmm12[7],xmm1[7]
	movdqa	176(%rsp), %xmm1                # 16-byte Reload
	pmaddwd	-48(%rsp), %xmm1                # 16-byte Folded Reload
	movdqa	%xmm12, %xmm3
	punpckhwd	%xmm14, %xmm3           # xmm3 = xmm3[4],xmm14[4],xmm3[5],xmm14[5],xmm3[6],xmm14[6],xmm3[7],xmm14[7]
	pmaddwd	-128(%rsp), %xmm3               # 16-byte Folded Reload
	paddd	%xmm1, %xmm3
	punpcklwd	%xmm14, %xmm12          # xmm12 = xmm12[0],xmm14[0],xmm12[1],xmm14[1],xmm12[2],xmm14[2],xmm12[3],xmm14[3]
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	pmaddwd	16(%rsp), %xmm1                 # 16-byte Folded Reload
	pmaddwd	-80(%rsp), %xmm12               # 16-byte Folded Reload
	paddd	%xmm1, %xmm12
	pxor	%xmm1, %xmm1
	punpckhbw	%xmm1, %xmm0            # xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	punpckhbw	%xmm1, %xmm2            # xmm2 = xmm2[8],xmm1[8],xmm2[9],xmm1[9],xmm2[10],xmm1[10],xmm2[11],xmm1[11],xmm2[12],xmm1[12],xmm2[13],xmm1[13],xmm2[14],xmm1[14],xmm2[15],xmm1[15]
	movdqa	208(%rsp), %xmm1                # 16-byte Reload
	pmaddwd	-64(%rsp), %xmm1                # 16-byte Folded Reload
	movdqa	%xmm2, %xmm14
	punpcklwd	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1],xmm14[2],xmm0[2],xmm14[3],xmm0[3]
	pmaddwd	%xmm6, %xmm14
	paddd	%xmm1, %xmm14
	punpckhwd	%xmm0, %xmm2            # xmm2 = xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	movdqa	224(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	-16(%rsp), %xmm0                # 16-byte Folded Reload
	pmaddwd	-32(%rsp), %xmm2                # 16-byte Folded Reload
	paddd	%xmm0, %xmm2
	movdqa	.LCPI5_0(%rip), %xmm1           # xmm1 = [32,32,32,32]
	movdqa	192(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm1, %xmm6
	paddd	%xmm1, %xmm9
	psrld	$6, %xmm9
	psrld	$6, %xmm6
	movdqa	.LCPI5_1(%rip), %xmm0           # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm6
	pand	%xmm0, %xmm9
	packuswb	%xmm6, %xmm9
	paddd	%xmm1, %xmm13
	movdqa	240(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm1, %xmm6
	psrld	$6, %xmm6
	psrld	$6, %xmm13
	pand	%xmm0, %xmm13
	pand	%xmm0, %xmm6
	packuswb	%xmm6, %xmm13
	packuswb	%xmm13, %xmm9
	movdqa	-112(%rsp), %xmm6               # 16-byte Reload
	paddd	%xmm1, %xmm6
	paddd	%xmm1, %xmm5
	psrld	$6, %xmm5
	psrld	$6, %xmm6
	pand	%xmm0, %xmm6
	pand	%xmm0, %xmm5
	packuswb	%xmm6, %xmm5
	paddd	%xmm1, %xmm11
	paddd	%xmm1, %xmm4
	psrld	$6, %xmm4
	psrld	$6, %xmm11
	pand	%xmm0, %xmm11
	pand	%xmm0, %xmm4
	packuswb	%xmm4, %xmm11
	packuswb	%xmm11, %xmm5
	paddd	%xmm1, %xmm8
	paddd	%xmm1, %xmm7
	psrld	$6, %xmm7
	psrld	$6, %xmm8
	pand	%xmm0, %xmm8
	pand	%xmm0, %xmm7
	packuswb	%xmm8, %xmm7
	paddd	%xmm1, %xmm10
	paddd	%xmm1, %xmm15
	psrld	$6, %xmm15
	psrld	$6, %xmm10
	pand	%xmm0, %xmm10
	pand	%xmm0, %xmm15
	packuswb	%xmm15, %xmm10
	packuswb	%xmm10, %xmm7
	paddd	%xmm1, %xmm3
	paddd	%xmm1, %xmm12
	psrld	$6, %xmm12
	psrld	$6, %xmm3
	pand	%xmm0, %xmm3
	pand	%xmm0, %xmm12
	packuswb	%xmm3, %xmm12
	paddd	%xmm1, %xmm14
	paddd	%xmm1, %xmm2
	psrld	$6, %xmm2
	psrld	$6, %xmm14
	pand	%xmm0, %xmm14
	pand	%xmm0, %xmm2
	packuswb	%xmm2, %xmm14
	packuswb	%xmm14, %xmm12
	movdqu	%xmm9, (%rdi,%rbp)
	movdqu	%xmm5, 16(%rdi,%rbp)
	movdqu	%xmm7, 32(%rdi,%rbp)
	movdqu	%xmm12, 48(%rdi,%rbp)
	addq	$64, %rbp
	cmpq	%rbp, %r14
	jne	.LBB5_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	cmpl	%r11d, %r14d
	movdqa	96(%rsp), %xmm5                 # 16-byte Reload
	pxor	%xmm8, %xmm8
	movdqa	80(%rsp), %xmm9                 # 16-byte Reload
	movdqa	64(%rsp), %xmm10                # 16-byte Reload
	movdqa	48(%rsp), %xmm11                # 16-byte Reload
	movdqa	32(%rsp), %xmm12                # 16-byte Reload
	movdqa	-128(%rsp), %xmm7               # 16-byte Reload
	movdqa	-80(%rsp), %xmm14               # 16-byte Reload
	movdqa	-96(%rsp), %xmm15               # 16-byte Reload
	movdqa	.LCPI5_0(%rip), %xmm13          # xmm13 = [32,32,32,32]
	movdqa	.LCPI5_1(%rip), %xmm6           # xmm6 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	je	.LBB5_12
# %bb.8:                                # %vec.epilog.iter.check
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%r14, %rbp
	movq	%r14, %r15
	testb	$56, %r11b
	je	.LBB5_11
	.p2align	4, 0x90
.LBB5_9:                                # %vec.epilog.vector.body
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r9,%rbp), %xmm1               # xmm1 = mem[0],zero
	punpcklbw	%xmm8, %xmm1            # xmm1 = xmm1[0],xmm8[0],xmm1[1],xmm8[1],xmm1[2],xmm8[2],xmm1[3],xmm8[3],xmm1[4],xmm8[4],xmm1[5],xmm8[5],xmm1[6],xmm8[6],xmm1[7],xmm8[7]
	movq	1(%r9,%rbp), %xmm0              # xmm0 = mem[0],zero
	punpcklbw	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3],xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	movq	-1(%r13,%rbp), %xmm2            # xmm2 = mem[0],zero
	punpcklbw	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1],xmm2[2],xmm8[2],xmm2[3],xmm8[3],xmm2[4],xmm8[4],xmm2[5],xmm8[5],xmm2[6],xmm8[6],xmm2[7],xmm8[7]
	movq	(%r13,%rbp), %xmm3              # xmm3 = mem[0],zero
	punpcklbw	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3],xmm3[4],xmm8[4],xmm3[5],xmm8[5],xmm3[6],xmm8[6],xmm3[7],xmm8[7]
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm4            # xmm4 = xmm4[4],xmm2[4],xmm4[5],xmm2[5],xmm4[6],xmm2[6],xmm4[7],xmm2[7]
	pmaddwd	%xmm9, %xmm4
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	pmaddwd	%xmm10, %xmm3
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm1, %xmm2            # xmm2 = xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	pmaddwd	%xmm11, %xmm2
	paddd	%xmm4, %xmm2
	punpcklwd	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	pmaddwd	%xmm12, %xmm0
	paddd	%xmm3, %xmm0
	paddd	%xmm13, %xmm2
	paddd	%xmm13, %xmm0
	psrld	$6, %xmm0
	psrld	$6, %xmm2
	pand	%xmm6, %xmm2
	pand	%xmm6, %xmm0
	packuswb	%xmm2, %xmm0
	packuswb	%xmm0, %xmm0
	movq	%xmm0, (%rdi,%rbp)
	addq	$8, %rbp
	cmpq	%rbp, %rax
	jne	.LBB5_9
# %bb.10:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	%rax, %r15
	cmpl	%r11d, %eax
	je	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               # %for.body13.us
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r9,%r15), %ebp
	movd	%ebp, %xmm0
	pinsrw	$1, (%r8,%r15), %xmm0
	punpcklbw	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3],xmm0[4],xmm8[4],xmm0[5],xmm8[5],xmm0[6],xmm8[6],xmm0[7],xmm8[7]
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	pshufd	$141, %xmm0, %xmm0              # xmm0 = xmm0[1,3,0,2]
	pmaddwd	%xmm5, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %ebp
	addl	$32, %ebp
	shrl	$6, %ebp
	movb	%bpl, (%rdi,%r15)
	leaq	1(%r15), %rbp
	movq	%rbp, %r15
	cmpq	%rbp, %r11
	jne	.LBB5_11
	jmp	.LBB5_12
.LBB5_13:                               # %for.cond.cleanup
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
.Lfunc_end5:
	.size	mc_chroma, .Lfunc_end5-mc_chroma
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_16x16
	.type	pixel_avg_16x16,@function
pixel_avg_16x16:                        # @pixel_avg_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	16(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB6_3
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	addq	$15, %rdi
	addq	$15, %rdx
	addq	$15, %r8
	movl	$16, %r9d
	.p2align	4, 0x90
.LBB6_2:                                # %for.cond1.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdx), %r10d
	movzbl	-15(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -15(%rdi)
	movzbl	-14(%rdx), %r10d
	movzbl	-14(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -14(%rdi)
	movzbl	-13(%rdx), %r10d
	movzbl	-13(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -13(%rdi)
	movzbl	-12(%rdx), %r10d
	movzbl	-12(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -12(%rdi)
	movzbl	-11(%rdx), %r10d
	movzbl	-11(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -11(%rdi)
	movzbl	-10(%rdx), %r10d
	movzbl	-10(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -10(%rdi)
	movzbl	-9(%rdx), %r10d
	movzbl	-9(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -9(%rdi)
	movzbl	-8(%rdx), %r10d
	movzbl	-8(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -8(%rdi)
	movzbl	-7(%rdx), %r10d
	movzbl	-7(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %r10d
	movzbl	-6(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %r10d
	movzbl	-5(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %r10d
	movzbl	-4(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %r10d
	movzbl	-3(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %r10d
	movzbl	-2(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %r10d
	movzbl	-1(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %r10d
	movzbl	(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, (%rdi)
	addq	%rsi, %rdi
	addq	%rax, %rdx
	addq	%rcx, %r8
	decl	%r9d
	jne	.LBB6_2
# %bb.4:                                # %if.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB6_3:                                # %if.else
	.cfi_def_cfa_offset 16
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	pixel_avg_weight_wxh
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	pixel_avg_16x16, .Lfunc_end6-pixel_avg_16x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_16x8
	.type	pixel_avg_16x8,@function
pixel_avg_16x8:                         # @pixel_avg_16x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	16(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB7_3
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	addq	$15, %rdi
	addq	$15, %rdx
	addq	$15, %r8
	movl	$8, %r9d
	.p2align	4, 0x90
.LBB7_2:                                # %for.cond1.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdx), %r10d
	movzbl	-15(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -15(%rdi)
	movzbl	-14(%rdx), %r10d
	movzbl	-14(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -14(%rdi)
	movzbl	-13(%rdx), %r10d
	movzbl	-13(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -13(%rdi)
	movzbl	-12(%rdx), %r10d
	movzbl	-12(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -12(%rdi)
	movzbl	-11(%rdx), %r10d
	movzbl	-11(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -11(%rdi)
	movzbl	-10(%rdx), %r10d
	movzbl	-10(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -10(%rdi)
	movzbl	-9(%rdx), %r10d
	movzbl	-9(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -9(%rdi)
	movzbl	-8(%rdx), %r10d
	movzbl	-8(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -8(%rdi)
	movzbl	-7(%rdx), %r10d
	movzbl	-7(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %r10d
	movzbl	-6(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %r10d
	movzbl	-5(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %r10d
	movzbl	-4(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %r10d
	movzbl	-3(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %r10d
	movzbl	-2(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %r10d
	movzbl	-1(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %r10d
	movzbl	(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, (%rdi)
	addq	%rsi, %rdi
	addq	%rax, %rdx
	addq	%rcx, %r8
	decl	%r9d
	jne	.LBB7_2
# %bb.4:                                # %if.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB7_3:                                # %if.else
	.cfi_def_cfa_offset 16
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	pixel_avg_weight_wxh
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	pixel_avg_16x8, .Lfunc_end7-pixel_avg_16x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_8x16
	.type	pixel_avg_8x16,@function
pixel_avg_8x16:                         # @pixel_avg_8x16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	16(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB8_3
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	addq	$7, %rdi
	addq	$7, %rdx
	addq	$7, %r8
	movl	$16, %r9d
	.p2align	4, 0x90
.LBB8_2:                                # %for.cond1.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdx), %r10d
	movzbl	-7(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %r10d
	movzbl	-6(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %r10d
	movzbl	-5(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %r10d
	movzbl	-4(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %r10d
	movzbl	-3(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %r10d
	movzbl	-2(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %r10d
	movzbl	-1(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %r10d
	movzbl	(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, (%rdi)
	addq	%rsi, %rdi
	addq	%rax, %rdx
	addq	%rcx, %r8
	decl	%r9d
	jne	.LBB8_2
# %bb.4:                                # %if.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB8_3:                                # %if.else
	.cfi_def_cfa_offset 16
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	pixel_avg_weight_wxh
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	pixel_avg_8x16, .Lfunc_end8-pixel_avg_8x16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_8x8
	.type	pixel_avg_8x8,@function
pixel_avg_8x8:                          # @pixel_avg_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	16(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB9_3
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	addq	$7, %rdi
	addq	$7, %rdx
	addq	$7, %r8
	movl	$8, %r9d
	.p2align	4, 0x90
.LBB9_2:                                # %for.cond1.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdx), %r10d
	movzbl	-7(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %r10d
	movzbl	-6(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %r10d
	movzbl	-5(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %r10d
	movzbl	-4(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %r10d
	movzbl	-3(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %r10d
	movzbl	-2(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %r10d
	movzbl	-1(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %r10d
	movzbl	(%r8), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, (%rdi)
	addq	%rsi, %rdi
	addq	%rax, %rdx
	addq	%rcx, %r8
	decl	%r9d
	jne	.LBB9_2
# %bb.4:                                # %if.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB9_3:                                # %if.else
	.cfi_def_cfa_offset 16
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	pixel_avg_weight_wxh
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	pixel_avg_8x8, .Lfunc_end9-pixel_avg_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_8x4
	.type	pixel_avg_8x4,@function
pixel_avg_8x4:                          # @pixel_avg_8x4
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
	movl	32(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB10_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	movslq	%esi, %rax
	movzbl	(%rdx), %esi
	movzbl	(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi)
	movzbl	1(%rdx), %esi
	movzbl	1(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi)
	movzbl	2(%rdx), %esi
	movzbl	2(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rdi)
	movzbl	3(%rdx), %esi
	movzbl	3(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 3(%rdi)
	movzbl	4(%rdx), %esi
	movzbl	4(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 4(%rdi)
	movzbl	5(%rdx), %esi
	movzbl	5(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 5(%rdi)
	movzbl	6(%rdx), %esi
	movzbl	6(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 6(%rdi)
	movzbl	7(%rdx), %esi
	movzbl	7(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 7(%rdi)
	leaq	(%rdx,%rcx), %r10
	leaq	(%r8,%r9), %r11
	leaq	(%rdi,%rax), %rsi
	movzbl	(%rdx,%rcx), %ebx
	movzbl	(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rdi,%rax)
	movzbl	1(%rdx,%rcx), %ebx
	movzbl	1(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rdi,%rax)
	movzbl	2(%rdx,%rcx), %ebx
	movzbl	2(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rdi,%rax)
	movzbl	3(%rdx,%rcx), %ebx
	movzbl	3(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 3(%rdi,%rax)
	movzbl	4(%rdx,%rcx), %ebx
	movzbl	4(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 4(%rdi,%rax)
	movzbl	5(%rdx,%rcx), %ebx
	movzbl	5(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 5(%rdi,%rax)
	movzbl	6(%rdx,%rcx), %ebx
	movzbl	6(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 6(%rdi,%rax)
	movzbl	7(%rdx,%rcx), %edx
	movzbl	7(%r8,%r9), %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 7(%rdi,%rax)
	leaq	(%r10,%rcx), %rdi
	leaq	(%r11,%r9), %r8
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx,%r10), %ebx
	movzbl	(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rsi)
	movzbl	1(%rcx,%r10), %ebx
	movzbl	1(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rsi)
	movzbl	2(%rcx,%r10), %ebx
	movzbl	2(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rsi)
	movzbl	3(%rcx,%r10), %ebx
	movzbl	3(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 3(%rax,%rsi)
	movzbl	4(%rcx,%r10), %ebx
	movzbl	4(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 4(%rax,%rsi)
	movzbl	5(%rcx,%r10), %ebx
	movzbl	5(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 5(%rax,%rsi)
	movzbl	6(%rcx,%r10), %ebx
	movzbl	6(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 6(%rax,%rsi)
	movzbl	7(%rcx,%r10), %r10d
	movzbl	7(%r9,%r11), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, 7(%rax,%rsi)
	movzbl	(%rcx,%rdi), %esi
	movzbl	(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rax,%rdx)
	movzbl	1(%rcx,%rdi), %esi
	movzbl	1(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rax,%rdx)
	movzbl	2(%rcx,%rdi), %esi
	movzbl	2(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rax,%rdx)
	movzbl	3(%rcx,%rdi), %esi
	movzbl	3(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 3(%rax,%rdx)
	movzbl	4(%rcx,%rdi), %esi
	movzbl	4(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 4(%rax,%rdx)
	movzbl	5(%rcx,%rdi), %esi
	movzbl	5(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 5(%rax,%rdx)
	movzbl	6(%rcx,%rdi), %esi
	movzbl	6(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 6(%rax,%rdx)
	movzbl	7(%rcx,%rdi), %ecx
	movzbl	7(%r9,%r8), %esi
	addl	%esi, %ecx
	incl	%ecx
	shrl	%ecx
	movb	%cl, 7(%rax,%rdx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %if.else
	.cfi_def_cfa_offset 32
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$4
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	pixel_avg_weight_wxh
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	pixel_avg_8x4, .Lfunc_end10-pixel_avg_8x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_4x8
	.type	pixel_avg_4x8,@function
pixel_avg_4x8:                          # @pixel_avg_4x8
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
	movl	32(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB11_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	movslq	%esi, %rax
	movzbl	(%rdx), %esi
	movzbl	(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi)
	movzbl	1(%rdx), %esi
	movzbl	1(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi)
	movzbl	2(%rdx), %esi
	movzbl	2(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rdi)
	movzbl	3(%rdx), %esi
	movzbl	3(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 3(%rdi)
	leaq	(%rdx,%rcx), %r10
	leaq	(%r8,%r9), %r11
	leaq	(%rdi,%rax), %rsi
	movzbl	(%rdx,%rcx), %ebx
	movzbl	(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rdi,%rax)
	movzbl	1(%rdx,%rcx), %ebx
	movzbl	1(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rdi,%rax)
	movzbl	2(%rdx,%rcx), %ebx
	movzbl	2(%r8,%r9), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rdi,%rax)
	movzbl	3(%rdx,%rcx), %edx
	movzbl	3(%r8,%r9), %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 3(%rdi,%rax)
	leaq	(%r10,%rcx), %rdi
	leaq	(%r11,%r9), %r8
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx,%r10), %ebx
	movzbl	(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rsi)
	movzbl	1(%rcx,%r10), %ebx
	movzbl	1(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rsi)
	movzbl	2(%rcx,%r10), %ebx
	movzbl	2(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rsi)
	movzbl	3(%rcx,%r10), %r10d
	movzbl	3(%r9,%r11), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, 3(%rax,%rsi)
	leaq	(%rdi,%rcx), %r10
	leaq	(%r8,%r9), %r11
	leaq	(%rdx,%rax), %rsi
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rdx)
	movzbl	1(%rcx,%rdi), %ebx
	movzbl	1(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rdx)
	movzbl	2(%rcx,%rdi), %ebx
	movzbl	2(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rdx)
	movzbl	3(%rcx,%rdi), %edi
	movzbl	3(%r9,%r8), %r8d
	addl	%r8d, %edi
	incl	%edi
	shrl	%edi
	movb	%dil, 3(%rax,%rdx)
	leaq	(%r10,%rcx), %rdi
	leaq	(%r11,%r9), %r8
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx,%r10), %ebx
	movzbl	(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rsi)
	movzbl	1(%rcx,%r10), %ebx
	movzbl	1(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rsi)
	movzbl	2(%rcx,%r10), %ebx
	movzbl	2(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rsi)
	movzbl	3(%rcx,%r10), %r10d
	movzbl	3(%r9,%r11), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, 3(%rax,%rsi)
	leaq	(%rdi,%rcx), %r10
	leaq	(%r8,%r9), %r11
	leaq	(%rdx,%rax), %rsi
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rdx)
	movzbl	1(%rcx,%rdi), %ebx
	movzbl	1(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rdx)
	movzbl	2(%rcx,%rdi), %ebx
	movzbl	2(%r9,%r8), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rdx)
	movzbl	3(%rcx,%rdi), %edi
	movzbl	3(%r9,%r8), %r8d
	addl	%r8d, %edi
	incl	%edi
	shrl	%edi
	movb	%dil, 3(%rax,%rdx)
	leaq	(%r10,%rcx), %rdi
	leaq	(%r11,%r9), %r8
	leaq	(%rsi,%rax), %rdx
	movzbl	(%rcx,%r10), %ebx
	movzbl	(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rax,%rsi)
	movzbl	1(%rcx,%r10), %ebx
	movzbl	1(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rax,%rsi)
	movzbl	2(%rcx,%r10), %ebx
	movzbl	2(%r9,%r11), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rax,%rsi)
	movzbl	3(%rcx,%r10), %r10d
	movzbl	3(%r9,%r11), %r11d
	addl	%r11d, %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, 3(%rax,%rsi)
	movzbl	(%rcx,%rdi), %esi
	movzbl	(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rax,%rdx)
	movzbl	1(%rcx,%rdi), %esi
	movzbl	1(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rax,%rdx)
	movzbl	2(%rcx,%rdi), %esi
	movzbl	2(%r9,%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rax,%rdx)
	movzbl	3(%rcx,%rdi), %ecx
	movzbl	3(%r9,%r8), %esi
	addl	%esi, %ecx
	incl	%ecx
	shrl	%ecx
	movb	%cl, 3(%rax,%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %if.else
	.cfi_def_cfa_offset 32
	movl	$64, %r10d
	subl	%eax, %r10d
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	addq	$3, %rdi
	addq	$3, %rdx
	addq	$3, %r8
	movl	$8, %r11d
	.p2align	4, 0x90
.LBB11_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdx), %ebx
	imull	%eax, %ebx
	movzbl	-3(%r8), %r14d
	imull	%r10d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, -3(%rdi)
	movzbl	-2(%rdx), %ebx
	imull	%eax, %ebx
	movzbl	-2(%r8), %r14d
	imull	%r10d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, -2(%rdi)
	movzbl	-1(%rdx), %ebx
	imull	%eax, %ebx
	movzbl	-1(%r8), %r14d
	imull	%r10d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, -1(%rdi)
	movzbl	(%rdx), %ebx
	imull	%eax, %ebx
	movzbl	(%r8), %r14d
	imull	%r10d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, (%rdi)
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	addq	%r9, %r8
	decl	%r11d
	jne	.LBB11_3
# %bb.4:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	pixel_avg_4x8, .Lfunc_end11-pixel_avg_4x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_4x4
	.type	pixel_avg_4x4,@function
pixel_avg_4x4:                          # @pixel_avg_4x4
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
	movl	48(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB12_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	movzbl	(%rdx), %r9d
	movzbl	(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, (%rdi)
	movzbl	1(%rdx), %r9d
	movzbl	1(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 1(%rdi)
	movzbl	2(%rdx), %r9d
	movzbl	2(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 2(%rdi)
	movzbl	3(%rdx), %r9d
	movzbl	3(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 3(%rdi)
	leaq	(%rdx,%rax), %r10
	leaq	(%r8,%rcx), %r11
	leaq	(%rdi,%rsi), %r9
	movzbl	(%rdx,%rax), %ebx
	movzbl	(%r8,%rcx), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rdi,%rsi)
	movzbl	1(%rdx,%rax), %ebx
	movzbl	1(%r8,%rcx), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 1(%rdi,%rsi)
	movzbl	2(%rdx,%rax), %ebx
	movzbl	2(%r8,%rcx), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 2(%rdi,%rsi)
	movzbl	3(%rdx,%rax), %edx
	movzbl	3(%r8,%rcx), %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 3(%rdi,%rsi)
	leaq	(%r10,%rax), %rdx
	leaq	(%r11,%rcx), %rdi
	leaq	(%r9,%rsi), %rbx
	movzbl	(%rax,%r10), %r8d
	movzbl	(%rcx,%r11), %r14d
	addl	%r14d, %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, (%rsi,%r9)
	movzbl	1(%rax,%r10), %r8d
	movzbl	1(%rcx,%r11), %r14d
	addl	%r14d, %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, 1(%rsi,%r9)
	movzbl	2(%rax,%r10), %r8d
	movzbl	2(%rcx,%r11), %r14d
	addl	%r14d, %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, 2(%rsi,%r9)
	movzbl	3(%rax,%r10), %r8d
	movzbl	3(%rcx,%r11), %r10d
	addl	%r10d, %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, 3(%rsi,%r9)
	leaq	(%rbx,%rsi), %r8
	movzbl	(%rax,%rdx), %r9d
	movzbl	(%rcx,%rdi), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, (%rsi,%rbx)
	movzbl	1(%rax,%rdx), %r9d
	movzbl	1(%rcx,%rdi), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 1(%rsi,%rbx)
	movzbl	2(%rax,%rdx), %r9d
	movzbl	2(%rcx,%rdi), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 2(%rsi,%rbx)
	movzbl	3(%rax,%rdx), %eax
	movzbl	3(%rcx,%rdi), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	jmp	.LBB12_3
.LBB12_2:                               # %if.else
	movl	$64, %r10d
	subl	%eax, %r10d
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	movzbl	(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%rdi)
	movzbl	1(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	1(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 1(%rdi)
	movzbl	2(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	2(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 2(%rdi)
	movzbl	3(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	3(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movslq	%r9d, %r9
	movb	%bl, 3(%rdi)
	leaq	(%rdi,%rsi), %r11
	leaq	(%rdx,%rcx), %r14
	leaq	(%r8,%r9), %rbx
	movzbl	(%rdx,%rcx), %r15d
	imull	%eax, %r15d
	movzbl	(%r8,%r9), %r12d
	imull	%r10d, %r12d
	leal	(%r15,%r12), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r15b
	negb	%r15b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r15b, %r15d
	cmovbl	%ebp, %r15d
	movb	%r15b, (%rdi,%rsi)
	movzbl	1(%rdx,%rcx), %r15d
	imull	%eax, %r15d
	movzbl	1(%r8,%r9), %r12d
	imull	%r10d, %r12d
	leal	(%r15,%r12), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r15b
	negb	%r15b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r15b, %r15d
	cmovbl	%ebp, %r15d
	movb	%r15b, 1(%rdi,%rsi)
	movzbl	2(%rdx,%rcx), %r15d
	imull	%eax, %r15d
	movzbl	2(%r8,%r9), %r12d
	imull	%r10d, %r12d
	leal	(%r15,%r12), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r15b
	negb	%r15b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r15b, %r15d
	cmovbl	%ebp, %r15d
	movb	%r15b, 2(%rdi,%rsi)
	movzbl	3(%rdx,%rcx), %edx
	imull	%eax, %edx
	movzbl	3(%r8,%r9), %r8d
	imull	%r10d, %r8d
	addl	%r8d, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%r8b
	negb	%r8b
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%r8b, %r8d
	cmovbl	%edx, %r8d
	movb	%r8b, 3(%rdi,%rsi)
	leaq	(%r11,%rsi), %rdx
	leaq	(%r14,%rcx), %rdi
	movzbl	(%rcx,%r14), %r8d
	imull	%eax, %r8d
	movzbl	(%r9,%rbx), %r15d
	imull	%r10d, %r15d
	addl	%r15d, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	testl	%r8d, %r8d
	setg	%bpl
	negb	%bpl
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%r8d, %ebp
	movb	%bpl, (%rsi,%r11)
	movzbl	1(%rcx,%r14), %r8d
	imull	%eax, %r8d
	movzbl	1(%r9,%rbx), %r15d
	imull	%r10d, %r15d
	addl	%r15d, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	testl	%r8d, %r8d
	setg	%bpl
	negb	%bpl
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%r8d, %ebp
	movb	%bpl, 1(%rsi,%r11)
	movzbl	2(%rcx,%r14), %r8d
	imull	%eax, %r8d
	movzbl	2(%r9,%rbx), %r15d
	imull	%r10d, %r15d
	addl	%r15d, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	testl	%r8d, %r8d
	setg	%bpl
	negb	%bpl
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%r8d, %ebp
	leaq	(%rbx,%r9), %r15
	movb	%bpl, 2(%rsi,%r11)
	movzbl	3(%rcx,%r14), %r8d
	imull	%eax, %r8d
	movzbl	3(%r9,%rbx), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r8d
	addl	$32, %r8d
	sarl	$6, %r8d
	testl	%r8d, %r8d
	setg	%bl
	negb	%bl
	cmpl	$256, %r8d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r8d, %ebx
	movb	%bl, 3(%rsi,%r11)
	leaq	(%rdx,%rsi), %r8
	movzbl	(%rcx,%rdi), %r11d
	imull	%eax, %r11d
	movzbl	(%r9,%r15), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%rsi,%rdx)
	movzbl	1(%rcx,%rdi), %r11d
	imull	%eax, %r11d
	movzbl	1(%r9,%r15), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 1(%rsi,%rdx)
	movzbl	2(%rcx,%rdi), %r11d
	imull	%eax, %r11d
	movzbl	2(%r9,%r15), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, 2(%rsi,%rdx)
	movzbl	3(%rcx,%rdi), %ecx
	imull	%eax, %ecx
	movzbl	3(%r9,%r15), %eax
	imull	%r10d, %eax
	addl	%eax, %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	setg	%al
	negb	%al
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
.LBB12_3:                               # %if.end
	movb	%al, 3(%r8)
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
.Lfunc_end12:
	.size	pixel_avg_4x4, .Lfunc_end12-pixel_avg_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_4x2
	.type	pixel_avg_4x2,@function
pixel_avg_4x2:                          # @pixel_avg_4x2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	16(%rsp), %r10d
	cmpl	$32, %r10d
	jne	.LBB13_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	movslq	%esi, %rax
	movzbl	(%rdx), %esi
	movzbl	(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi)
	movzbl	1(%rdx), %esi
	movzbl	1(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi)
	movzbl	2(%rdx), %esi
	movzbl	2(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rdi)
	movzbl	3(%rdx), %esi
	movzbl	3(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 3(%rdi)
	movzbl	(%rdx,%rcx), %esi
	movzbl	(%r8,%r9), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi,%rax)
	movzbl	1(%rdx,%rcx), %esi
	movzbl	1(%r8,%r9), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi,%rax)
	movzbl	2(%rdx,%rcx), %esi
	movzbl	2(%r8,%r9), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rdi,%rax)
	movzbl	3(%rdx,%rcx), %ecx
	movzbl	3(%r8,%r9), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movb	%cl, 3(%rdi,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB13_2:                               # %if.else
	.cfi_def_cfa_offset 16
	movl	$64, %r11d
	subl	%r10d, %r11d
	movslq	%esi, %rax
	movslq	%ecx, %rsi
	movslq	%r9d, %rcx
	movzbl	(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, (%rdi)
	movzbl	1(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	1(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 1(%rdi)
	movzbl	2(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	2(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 2(%rdi)
	movzbl	3(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	3(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 3(%rdi)
	movzbl	(%rdx,%rsi), %r9d
	imull	%r10d, %r9d
	movzbl	(%r8,%rcx), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, (%rdi,%rax)
	movzbl	1(%rdx,%rsi), %r9d
	imull	%r10d, %r9d
	movzbl	1(%r8,%rcx), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 1(%rdi,%rax)
	movzbl	2(%rdx,%rsi), %r9d
	imull	%r10d, %r9d
	movzbl	2(%r8,%rcx), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 2(%rdi,%rax)
	movzbl	3(%rdx,%rsi), %edx
	imull	%r10d, %edx
	movzbl	3(%r8,%rcx), %ecx
	imull	%r11d, %ecx
	addl	%ecx, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%cl
	negb	%cl
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%cl, %ecx
	cmovbl	%edx, %ecx
	movb	%cl, 3(%rdi,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	pixel_avg_4x2, .Lfunc_end13-pixel_avg_4x2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_2x4
	.type	pixel_avg_2x4,@function
pixel_avg_2x4:                          # @pixel_avg_2x4
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
	movl	48(%rsp), %eax
	cmpl	$32, %eax
	jne	.LBB14_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	movslq	%r9d, %rcx
	movslq	%esi, %rsi
	movzbl	(%rdx), %r9d
	movzbl	(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, (%rdi)
	movzbl	1(%rdx), %r9d
	movzbl	1(%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 1(%rdi)
	leaq	(%rdx,%rax), %r10
	leaq	(%r8,%rcx), %r11
	leaq	(%rdi,%rsi), %r9
	movzbl	(%rdx,%rax), %ebx
	movzbl	(%r8,%rcx), %r14d
	addl	%r14d, %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, (%rdi,%rsi)
	movzbl	1(%rdx,%rax), %edx
	movzbl	1(%r8,%rcx), %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 1(%rdi,%rsi)
	leaq	(%r10,%rax), %rdi
	leaq	(%r11,%rcx), %r8
	leaq	(%r9,%rsi), %rbx
	movzbl	(%rax,%r10), %edx
	movzbl	(%rcx,%r11), %r14d
	addl	%r14d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, (%rsi,%r9)
	movzbl	1(%rax,%r10), %edx
	movzbl	1(%rcx,%r11), %r10d
	addl	%r10d, %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 1(%rsi,%r9)
	leaq	(%rbx,%rsi), %rdx
	movzbl	(%rax,%rdi), %r9d
	movzbl	(%rcx,%r8), %r10d
	addl	%r10d, %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, (%rsi,%rbx)
	movzbl	1(%rax,%rdi), %eax
	movzbl	1(%rcx,%r8), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movl	$64, %r10d
	subl	%eax, %r10d
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	movzbl	(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%rdi)
	movzbl	1(%rdx), %r11d
	imull	%eax, %r11d
	movzbl	1(%r8), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movslq	%r9d, %r9
	movb	%bl, 1(%rdi)
	leaq	(%rdi,%rsi), %r11
	leaq	(%rdx,%rcx), %r14
	leaq	(%r8,%r9), %rbx
	movzbl	(%rdx,%rcx), %r15d
	imull	%eax, %r15d
	movzbl	(%r8,%r9), %r12d
	imull	%r10d, %r12d
	leal	(%r15,%r12), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r15b
	negb	%r15b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r15b, %r15d
	cmovbl	%ebp, %r15d
	movb	%r15b, (%rdi,%rsi)
	movzbl	1(%rdx,%rcx), %edx
	imull	%eax, %edx
	movzbl	1(%r8,%r9), %r8d
	imull	%r10d, %r8d
	addl	%r8d, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%r8b
	negb	%r8b
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%r8b, %r8d
	cmovbl	%edx, %r8d
	movb	%r8b, 1(%rdi,%rsi)
	leaq	(%r11,%rsi), %rdi
	leaq	(%r14,%rcx), %r8
	movzbl	(%rcx,%r14), %edx
	imull	%eax, %edx
	movzbl	(%r9,%rbx), %r15d
	imull	%r10d, %r15d
	addl	%r15d, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%edx, %ebp
	leaq	(%rbx,%r9), %r15
	movb	%bpl, (%rsi,%r11)
	movzbl	1(%rcx,%r14), %edx
	imull	%eax, %edx
	movzbl	1(%r9,%rbx), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%bl
	negb	%bl
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%edx, %ebx
	movb	%bl, 1(%rsi,%r11)
	leaq	(%rdi,%rsi), %rdx
	movzbl	(%rcx,%r8), %r11d
	imull	%eax, %r11d
	movzbl	(%r9,%r15), %ebx
	imull	%r10d, %ebx
	addl	%ebx, %r11d
	addl	$32, %r11d
	sarl	$6, %r11d
	testl	%r11d, %r11d
	setg	%bl
	negb	%bl
	cmpl	$256, %r11d                     # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r11d, %ebx
	movb	%bl, (%rsi,%rdi)
	movzbl	1(%rcx,%r8), %ecx
	imull	%eax, %ecx
	movzbl	1(%r9,%r15), %eax
	imull	%r10d, %eax
	addl	%eax, %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	testl	%ecx, %ecx
	setg	%al
	negb	%al
	cmpl	$256, %ecx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ecx, %eax
.LBB14_3:                               # %if.end
	movb	%al, 1(%rdx)
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
.Lfunc_end14:
	.size	pixel_avg_2x4, .Lfunc_end14-pixel_avg_2x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_2x2
	.type	pixel_avg_2x2,@function
pixel_avg_2x2:                          # @pixel_avg_2x2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	16(%rsp), %r10d
	cmpl	$32, %r10d
	jne	.LBB15_2
# %bb.1:                                # %if.then
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	movslq	%esi, %rax
	movzbl	(%rdx), %esi
	movzbl	(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi)
	movzbl	1(%rdx), %esi
	movzbl	1(%r8), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi)
	movzbl	(%rdx,%rcx), %esi
	movzbl	(%r8,%r9), %r10d
	addl	%r10d, %esi
	incl	%esi
	shrl	%esi
	movb	%sil, (%rdi,%rax)
	movzbl	1(%rdx,%rcx), %ecx
	movzbl	1(%r8,%r9), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movb	%cl, 1(%rdi,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB15_2:                               # %if.else
	.cfi_def_cfa_offset 16
	movl	$64, %r11d
	subl	%r10d, %r11d
	movslq	%esi, %rax
	movslq	%ecx, %rsi
	movslq	%r9d, %rcx
	movzbl	(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, (%rdi)
	movzbl	1(%rdx), %r9d
	imull	%r10d, %r9d
	movzbl	1(%r8), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, 1(%rdi)
	movzbl	(%rdx,%rsi), %r9d
	imull	%r10d, %r9d
	movzbl	(%r8,%rcx), %ebx
	imull	%r11d, %ebx
	addl	%ebx, %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	testl	%r9d, %r9d
	setg	%bl
	negb	%bl
	cmpl	$256, %r9d                      # imm = 0x100
	movzbl	%bl, %ebx
	cmovbl	%r9d, %ebx
	movb	%bl, (%rdi,%rax)
	movzbl	1(%rdx,%rsi), %edx
	imull	%r10d, %edx
	movzbl	1(%r8,%rcx), %ecx
	imull	%r11d, %ecx
	addl	%ecx, %edx
	addl	$32, %edx
	sarl	$6, %edx
	testl	%edx, %edx
	setg	%cl
	negb	%cl
	cmpl	$256, %edx                      # imm = 0x100
	movzbl	%cl, %ecx
	cmovbl	%edx, %ecx
	movb	%cl, 1(%rdi,%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	pixel_avg_2x2, .Lfunc_end15-pixel_avg_2x2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_weight_cache
	.type	x264_weight_cache,@function
x264_weight_cache:                      # @x264_weight_cache
	.cfi_startproc
# %bb.0:                                # %entry
	movq	32872(%rdi), %rax
	movq	%rax, 48(%rsi)
	retq
.Lfunc_end16:
	.size	x264_weight_cache, .Lfunc_end16-x264_weight_cache
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_copy_w16
	.type	mc_copy_w16,@function
mc_copy_w16:                            # @mc_copy_w16
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	jle	.LBB17_6
# %bb.1:                                # %for.body.lr.ph.i
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movl	%r8d, %esi
	andl	$3, %esi
	cmpl	$4, %r8d
	jb	.LBB17_4
# %bb.2:                                # %for.body.lr.ph.i.new
	andl	$2147483644, %r8d               # imm = 0x7FFFFFFC
	leaq	(%rax,%rax), %r9
	leaq	(%rcx,%rcx), %r10
	.p2align	4, 0x90
.LBB17_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rdi)
	movups	(%rdx,%rax), %xmm0
	addq	%rax, %rdx
	movups	%xmm0, (%rdi,%rcx)
	addq	%rcx, %rdi
	movups	(%rax,%rdx), %xmm0
	addq	%rax, %rdx
	movups	%xmm0, (%rcx,%rdi)
	addq	%rcx, %rdi
	movups	(%rax,%rdx), %xmm0
	movups	%xmm0, (%rcx,%rdi)
	addq	%r9, %rdx
	addq	%r10, %rdi
	addl	$-4, %r8d
	jne	.LBB17_3
.LBB17_4:                               # %mc_copy.exit.loopexit.unr-lcssa
	testl	%esi, %esi
	je	.LBB17_6
	.p2align	4, 0x90
.LBB17_5:                               # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movups	(%rdx), %xmm0
	movups	%xmm0, (%rdi)
	addq	%rax, %rdx
	addq	%rcx, %rdi
	decl	%esi
	jne	.LBB17_5
.LBB17_6:                               # %mc_copy.exit
	retq
.Lfunc_end17:
	.size	mc_copy_w16, .Lfunc_end17-mc_copy_w16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_copy_w8
	.type	mc_copy_w8,@function
mc_copy_w8:                             # @mc_copy_w8
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	jle	.LBB18_6
# %bb.1:                                # %for.body.lr.ph.i
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movl	%r8d, %esi
	andl	$7, %esi
	cmpl	$8, %r8d
	jb	.LBB18_4
# %bb.2:                                # %for.body.lr.ph.i.new
	andl	$2147483640, %r8d               # imm = 0x7FFFFFF8
	leaq	(%rax,%rax), %r9
	leaq	(%rcx,%rcx), %r10
	.p2align	4, 0x90
.LBB18_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %r11
	movq	%r11, (%rdi)
	movq	(%rdx,%rax), %r11
	addq	%rax, %rdx
	movq	%r11, (%rdi,%rcx)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	addq	%rax, %rdx
	movq	%r11, (%rcx,%rdi)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	addq	%rax, %rdx
	movq	%r11, (%rcx,%rdi)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	addq	%rax, %rdx
	movq	%r11, (%rcx,%rdi)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	addq	%rax, %rdx
	movq	%r11, (%rcx,%rdi)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	addq	%rax, %rdx
	movq	%r11, (%rcx,%rdi)
	addq	%rcx, %rdi
	movq	(%rax,%rdx), %r11
	movq	%r11, (%rcx,%rdi)
	addq	%r9, %rdx
	addq	%r10, %rdi
	addl	$-8, %r8d
	jne	.LBB18_3
.LBB18_4:                               # %mc_copy.exit.loopexit.unr-lcssa
	testl	%esi, %esi
	je	.LBB18_6
	.p2align	4, 0x90
.LBB18_5:                               # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %r8
	movq	%r8, (%rdi)
	addq	%rax, %rdx
	addq	%rcx, %rdi
	decl	%esi
	jne	.LBB18_5
.LBB18_6:                               # %mc_copy.exit
	retq
.Lfunc_end18:
	.size	mc_copy_w8, .Lfunc_end18-mc_copy_w8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_copy_w4
	.type	mc_copy_w4,@function
mc_copy_w4:                             # @mc_copy_w4
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	jle	.LBB19_6
# %bb.1:                                # %for.body.lr.ph.i
	movslq	%ecx, %rax
	movslq	%esi, %rcx
	movl	%r8d, %esi
	andl	$7, %esi
	cmpl	$8, %r8d
	jb	.LBB19_4
# %bb.2:                                # %for.body.lr.ph.i.new
	andl	$2147483640, %r8d               # imm = 0x7FFFFFF8
	leaq	(%rax,%rax), %r9
	leaq	(%rcx,%rcx), %r10
	.p2align	4, 0x90
.LBB19_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %r11d
	movl	%r11d, (%rdi)
	movl	(%rdx,%rax), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rdi,%rcx)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rcx,%rdi)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rcx,%rdi)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rcx,%rdi)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rcx,%rdi)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	addq	%rax, %rdx
	movl	%r11d, (%rcx,%rdi)
	addq	%rcx, %rdi
	movl	(%rax,%rdx), %r11d
	movl	%r11d, (%rcx,%rdi)
	addq	%r9, %rdx
	addq	%r10, %rdi
	addl	$-8, %r8d
	jne	.LBB19_3
.LBB19_4:                               # %mc_copy.exit.loopexit.unr-lcssa
	testl	%esi, %esi
	je	.LBB19_6
	.p2align	4, 0x90
.LBB19_5:                               # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %r8d
	movl	%r8d, (%rdi)
	addq	%rax, %rdx
	addq	%rcx, %rdi
	decl	%esi
	jne	.LBB19_5
.LBB19_6:                               # %mc_copy.exit
	retq
.Lfunc_end19:
	.size	mc_copy_w4, .Lfunc_end19-mc_copy_w4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function hpel_filter
.LCPI20_0:
	.short	20                              # 0x14
	.short	0                               # 0x0
	.short	20                              # 0x14
	.short	0                               # 0x0
	.short	20                              # 0x14
	.short	0                               # 0x0
	.short	20                              # 0x14
	.short	0                               # 0x0
.LCPI20_1:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI20_2:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI20_3:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI20_4:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI20_5:
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
	.long	512                             # 0x200
.LCPI20_6:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	hpel_filter,@function
hpel_filter:                            # @hpel_filter
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
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 464
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r9d killed $r9d def $r9
                                        # kill: def $r8d killed $r8d def $r8
	movq	%rsi, 224(%rsp)                 # 8-byte Spill
	movl	464(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB20_28
# %bb.1:                                # %for.cond1.preheader.lr.ph
	leal	(%r8,%r8), %eax
	movq	%r8, -48(%rsp)                  # 8-byte Spill
	movslq	%r8d, %r8
	movslq	%eax, %r10
	leal	2(%r9), %eax
	cmpl	$-1, %eax
	movl	$-2, %r12d
	cmovgel	%eax, %r12d
	movl	%r9d, %esi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	464(%rsp), %eax
	leal	-1(%rax), %ebx
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r8, %r15
	imulq	%rbx, %r15
	leaq	(%r15,%rsi), %r9
	leaq	(%rdi,%r9), %rsi
	movq	%rsi, -80(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%r9), %rsi
	addq	$3, %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	addq	%rdx, %r9
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	leal	2(%r12), %r11d
	addq	%r11, %r15
	movq	224(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%r15), %r14
	decq	%r14
	movl	%eax, %eax
	imulq	%r8, %rax
	addq	%rcx, %rax
	leaq	(%r11,%rax), %r9
	decq	%r9
	movq	%r9, 96(%rsp)                   # 8-byte Spill
	leaq	(%rcx,%r15), %rax
	decq	%rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	addq	%rcx, %r15
	movq	%rcx, %rax
	subq	%r8, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	decq	%rbx
	imulq	%r8, %rbx
	addq	%rcx, %rbx
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	movq	%rcx, %rdi
	movq	%r10, -112(%rsp)                # 8-byte Spill
	subq	%r10, %rdi
	movq	%r10, %rax
	notq	%rax
	addq	%r15, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leal	1(%r12), %eax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	addl	$3, %r12d
	movq	%r12, 208(%rsp)                 # 8-byte Spill
	movq	472(%rsp), %r13
	leaq	-2(%rsi), %r10
	leaq	2(,%r11,2), %r12
	addq	%r13, %r12
	cmpq	%r12, %r10
	setb	%al
	cmpq	%r13, %r14
	seta	%bpl
	leaq	(%r11,%rbx), %rdx
	decq	%rdx
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	andb	%al, %bpl
	cmpq	%r9, %r10
	setb	%al
	movq	%r8, 312(%rsp)                  # 8-byte Spill
	leaq	(%rcx,%r8), %rsi
	addq	$-2, %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	cmpq	%r14, %rsi
	setb	%r11b
	andb	%al, %r11b
	testl	%r8d, %r8d
	sets	%al
	movb	%al, -32(%rsp)                  # 1-byte Spill
	orb	%al, %r11b
	orb	%bpl, %r11b
	cmpq	-96(%rsp), %r10                 # 8-byte Folded Reload
	setb	%al
	leaq	-2(%rcx), %rsi
	cmpq	%r14, %rsi
	movq	%rsi, %rbx
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	setb	%bpl
	andb	%al, %bpl
	movq	-112(%rsp), %r8                 # 8-byte Reload
	leaq	(%r8,%r15), %rax
	decq	%rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	cmpq	%rax, %r10
	setb	%r9b
	leaq	(%rcx,%r8), %rax
	addq	$-2, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	cmpq	%r14, %rax
	setb	%r8b
	andb	%r9b, %r8b
	orb	%bpl, %r8b
	orb	%r11b, %r8b
	cmpq	%rdx, %r10
	setb	%r11b
	movq	56(%rsp), %rax                  # 8-byte Reload
	leaq	-2(%rax), %rbp
	cmpq	%r14, %rbp
	setb	%r9b
	andb	%r11b, %r9b
	movq	-48(%rsp), %rax                 # 8-byte Reload
	leal	(%rax,%rax,2), %r11d
	movslq	%r11d, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	leaq	(%rax,%r15), %rsi
	decq	%rsi
	cmpq	%rsi, %r10
	setb	%r11b
	leaq	(%rcx,%rax), %r15
	addq	$-2, %r15
	cmpq	%r14, %r15
	setb	%al
	andb	%r11b, %al
	orb	%r9b, %al
	movq	32(%rsp), %rdx                  # 8-byte Reload
	cmpq	%rdx, %r10
	setb	%r11b
	leaq	-2(%rdi), %r10
	cmpq	%r14, %r10
	movq	%rdi, %r14
	setb	%r9b
	andb	%r11b, %r9b
	orb	%al, %r9b
	orb	%r8b, %r9b
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	seta	%al
	cmpq	%r12, 64(%rsp)                  # 8-byte Folded Reload
	setb	%r8b
	andb	%al, %r8b
	cmpq	%r13, -96(%rsp)                 # 8-byte Folded Reload
	seta	%al
	cmpq	%r12, %rbx
	setb	%r11b
	andb	%al, %r11b
	orb	%r8b, %r11b
	cmpq	%r13, 176(%rsp)                 # 8-byte Folded Reload
	seta	%r8b
	cmpq	%r12, 160(%rsp)                 # 8-byte Folded Reload
	setb	%al
	andb	%r8b, %al
	movzbl	-32(%rsp), %ebx                 # 1-byte Folded Reload
	orb	%bl, %al
	orb	%r11b, %al
	orb	%r9b, %al
	cmpq	%r13, 192(%rsp)                 # 8-byte Folded Reload
	seta	%r8b
	cmpq	%r12, %rbp
	setb	%r9b
	andb	%r8b, %r9b
	cmpq	%r13, %rsi
	seta	%r8b
	cmpq	%r12, %r15
	movq	24(%rsp), %rdi                  # 8-byte Reload
	setb	%r11b
	andb	%r8b, %r11b
	orb	%r9b, %r11b
	cmpq	%r13, %rdx
	seta	%r8b
	cmpq	%r12, %r10
	setb	%r9b
	andb	%r8b, %r9b
	movq	-56(%rsp), %r8                  # 8-byte Reload
	orb	%r11b, %r9b
	movq	216(%rsp), %r11                 # 8-byte Reload
	orb	%al, %r9b
	movb	%r9b, -113(%rsp)                # 1-byte Spill
	movq	208(%rsp), %r10                 # 8-byte Reload
                                        # kill: def $r10d killed $r10d killed $r10 def $r10
	andl	$-32, %r10d
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	10(,%rsi,2), %rax
	addq	%r13, %rax
	cmpq	%r11, %rax
	seta	%al
	cmpq	%r13, -16(%rsp)                 # 8-byte Folded Reload
	seta	%dl
	andb	%al, %dl
	orb	%bl, %dl
	movb	%dl, -114(%rsp)                 # 1-byte Spill
	movl	%esi, %eax
	movq	%rsi, %r9
	andl	$2147483616, %eax               # imm = 0x7FFFFFE0
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	cmpq	%r8, (%rsp)                     # 8-byte Folded Reload
	seta	%al
	movq	80(%rsp), %rdx                  # 8-byte Reload
	cmpq	-80(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-112(%rsp), %rsi                # 8-byte Reload
	leaq	(%rcx,%rsi), %rdx
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	leaq	22(%rcx,%rsi), %rbp
	setb	%sil
	andb	%al, %sil
	movq	56(%rsp), %rax                  # 8-byte Reload
	orb	%bl, %sil
	movb	%sil, -115(%rsp)                # 1-byte Spill
	movq	%r9, %rdx
	movl	%edx, %esi
	andl	$2147483584, %esi               # imm = 0x7FFFFFC0
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movl	%edx, %esi
	andl	$2147483640, %esi               # imm = 0x7FFFFFF8
	movq	%rsi, 376(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rsi
	leaq	(%rcx,%rdx), %r9
	addq	$22, %r9
	pxor	%xmm15, %xmm15
	movdqa	.LCPI20_0(%rip), %xmm6          # xmm6 = [20,0,20,0,20,0,20,0]
	movdqa	.LCPI20_1(%rip), %xmm7          # xmm7 = [16,16,16,16]
	movdqa	.LCPI20_2(%rip), %xmm8          # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI20_3(%rip), %xmm9          # xmm9 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI20_4(%rip), %xmm14         # xmm14 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	movq	312(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %r15
	movq	%r10, 400(%rsp)                 # 8-byte Spill
	addq	$-2, %r10
	movq	%r10, 392(%rsp)                 # 8-byte Spill
	leaq	22(%rcx,%rdx), %r12
	leaq	22(%rax), %rbx
	leaq	22(%r14), %r10
	movq	$0, 344(%rsp)                   # 8-byte Folded Spill
	jmp	.LBB20_2
	.p2align	4, 0x90
.LBB20_27:                              # %for.cond.cleanup93
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	312(%rsp), %rdi                 # 8-byte Reload
	addq	%rdi, %r8
	addq	%rdi, 224(%rsp)                 # 8-byte Folded Spill
	addq	%rdi, %r11
	addq	%rdi, %rcx
	movq	344(%rsp), %rdx                 # 8-byte Reload
	incl	%edx
	addq	%rdi, %r12
	addq	%rdi, %rbp
	addq	%rdi, %rbx
	addq	%rdi, %r9
	addq	%rdi, %r10
	movq	240(%rsp), %r15                 # 8-byte Reload
	addq	%rdi, %r15
	addq	%rdi, 232(%rsp)                 # 8-byte Folded Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rdi, %rax
	addq	%rdi, %rsi
	movq	248(%rsp), %r14                 # 8-byte Reload
	addq	%rdi, %r14
	movl	464(%rsp), %edi
	movq	%rdx, 344(%rsp)                 # 8-byte Spill
	cmpl	%edi, %edx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	je	.LBB20_28
.LBB20_2:                               # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #     Child Loop BB20_29 Depth 2
                                        #     Child Loop BB20_12 Depth 2
                                        #     Child Loop BB20_10 Depth 2
                                        #     Child Loop BB20_21 Depth 2
                                        #     Child Loop BB20_25 Depth 2
                                        #     Child Loop BB20_17 Depth 2
	movq	%r15, 240(%rsp)                 # 8-byte Spill
	movq	%r14, 248(%rsp)                 # 8-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	cmpl	$-4, %edi
	jl	.LBB20_27
# %bb.3:                                # %for.body4.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%r12, 320(%rsp)                 # 8-byte Spill
	movq	%r9, 328(%rsp)                  # 8-byte Spill
	movq	%rbp, 336(%rsp)                 # 8-byte Spill
	movq	%r11, 216(%rsp)                 # 8-byte Spill
	movq	%r8, -56(%rsp)                  # 8-byte Spill
	cmpl	$32, 208(%rsp)                  # 4-byte Folded Reload
	setb	%r15b
	orb	-113(%rsp), %r15b               # 1-byte Folded Reload
	movq	$-2, %r14
	testb	$1, %r15b
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	232(%rsp), %rbp                 # 8-byte Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	304(%rsp), %r11                 # 8-byte Reload
	movq	224(%rsp), %r9                  # 8-byte Reload
	movq	240(%rsp), %r12                 # 8-byte Reload
	jne	.LBB20_29
# %bb.4:                                # %vector.body412.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rsi, %r15
	xorl	%r14d, %r14d
	movq	400(%rsp), %rdi                 # 8-byte Reload
	movq	%r9, %r11
	movq	336(%rsp), %rdx                 # 8-byte Reload
	movq	328(%rsp), %rsi                 # 8-byte Reload
	movq	320(%rsp), %r9                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_5:                               # %vector.body412
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%r10,%r14), %xmm5           # xmm5 = mem[0],zero
	movq	-16(%r10,%r14), %xmm3           # xmm3 = mem[0],zero
	movq	-8(%r10,%r14), %xmm1            # xmm1 = mem[0],zero
	movq	(%r10,%r14), %xmm0              # xmm0 = mem[0],zero
	punpcklbw	%xmm15, %xmm5           # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3],xmm5[4],xmm15[4],xmm5[5],xmm15[5],xmm5[6],xmm15[6],xmm5[7],xmm15[7]
	movdqa	%xmm5, %xmm9
	punpckhwd	.LCPI20_6(%rip), %xmm9  # xmm9 = xmm9[4],mem[4],xmm9[5],mem[5],xmm9[6],mem[6],xmm9[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3],xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	movdqa	%xmm3, %xmm2
	punpckhwd	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm11
	punpckhwd	.LCPI20_6(%rip), %xmm11 # xmm11 = xmm11[4],mem[4],xmm11[5],mem[5],xmm11[6],mem[6],xmm11[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3],xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm0, %xmm4
	punpckhwd	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	movq	-24(%rsi,%r14), %xmm8           # xmm8 = mem[0],zero
	movq	-16(%rsi,%r14), %xmm7           # xmm7 = mem[0],zero
	movq	-8(%rsi,%r14), %xmm12           # xmm12 = mem[0],zero
	movq	(%rsi,%r14), %xmm13             # xmm13 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3],xmm8[4],mem[4],xmm8[5],mem[5],xmm8[6],mem[6],xmm8[7],mem[7]
	movdqa	%xmm8, %xmm6
	punpckhwd	.LCPI20_6(%rip), %xmm6  # xmm6 = xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	paddd	%xmm9, %xmm6
	movdqa	%xmm6, -112(%rsp)               # 16-byte Spill
	punpcklwd	.LCPI20_6(%rip), %xmm8  # xmm8 = xmm8[0],mem[0],xmm8[1],mem[1],xmm8[2],mem[2],xmm8[3],mem[3]
	paddd	%xmm5, %xmm8
	punpcklbw	.LCPI20_6(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3],xmm7[4],mem[4],xmm7[5],mem[5],xmm7[6],mem[6],xmm7[7],mem[7]
	movdqa	%xmm7, %xmm5
	punpckhwd	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[4],mem[4],xmm5[5],mem[5],xmm5[6],mem[6],xmm5[7],mem[7]
	paddd	%xmm2, %xmm5
	movdqa	%xmm5, -96(%rsp)                # 16-byte Spill
	punpcklwd	.LCPI20_6(%rip), %xmm7  # xmm7 = xmm7[0],mem[0],xmm7[1],mem[1],xmm7[2],mem[2],xmm7[3],mem[3]
	paddd	%xmm3, %xmm7
	punpcklbw	.LCPI20_6(%rip), %xmm12 # xmm12 = xmm12[0],mem[0],xmm12[1],mem[1],xmm12[2],mem[2],xmm12[3],mem[3],xmm12[4],mem[4],xmm12[5],mem[5],xmm12[6],mem[6],xmm12[7],mem[7]
	movdqa	%xmm12, %xmm10
	punpckhwd	.LCPI20_6(%rip), %xmm10 # xmm10 = xmm10[4],mem[4],xmm10[5],mem[5],xmm10[6],mem[6],xmm10[7],mem[7]
	paddd	%xmm11, %xmm10
	punpcklwd	.LCPI20_6(%rip), %xmm12 # xmm12 = xmm12[0],mem[0],xmm12[1],mem[1],xmm12[2],mem[2],xmm12[3],mem[3]
	paddd	%xmm1, %xmm12
	punpcklbw	.LCPI20_6(%rip), %xmm13 # xmm13 = xmm13[0],mem[0],xmm13[1],mem[1],xmm13[2],mem[2],xmm13[3],mem[3],xmm13[4],mem[4],xmm13[5],mem[5],xmm13[6],mem[6],xmm13[7],mem[7]
	movdqa	%xmm13, %xmm9
	punpckhwd	.LCPI20_6(%rip), %xmm9  # xmm9 = xmm9[4],mem[4],xmm9[5],mem[5],xmm9[6],mem[6],xmm9[7],mem[7]
	paddd	%xmm4, %xmm9
	punpcklwd	.LCPI20_6(%rip), %xmm13 # xmm13 = xmm13[0],mem[0],xmm13[1],mem[1],xmm13[2],mem[2],xmm13[3],mem[3]
	paddd	%xmm0, %xmm13
	movq	-24(%rbx,%r14), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbx,%r14), %xmm2           # xmm2 = mem[0],zero
	movq	-8(%rbx,%r14), %xmm1            # xmm1 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3],xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm0, %xmm3
	punpcklwd	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	punpckhwd	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	punpcklbw	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3],xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	movdqa	%xmm2, %xmm5
	punpcklwd	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3]
	punpckhwd	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm15
	punpcklwd	.LCPI20_6(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	movq	-24(%rdx,%r14), %xmm4           # xmm4 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3],xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm4, %xmm14
	punpcklwd	.LCPI20_6(%rip), %xmm14 # xmm14 = xmm14[0],mem[0],xmm14[1],mem[1],xmm14[2],mem[2],xmm14[3],mem[3]
	paddd	%xmm3, %xmm14
	movq	-16(%rdx,%r14), %xmm3           # xmm3 = mem[0],zero
	punpckhwd	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	paddd	%xmm0, %xmm4
	punpcklbw	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3],xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	movdqa	%xmm3, %xmm11
	punpcklwd	.LCPI20_6(%rip), %xmm11 # xmm11 = xmm11[0],mem[0],xmm11[1],mem[1],xmm11[2],mem[2],xmm11[3],mem[3]
	paddd	%xmm5, %xmm11
	movq	-8(%rdx,%r14), %xmm5            # xmm5 = mem[0],zero
	punpckhwd	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	paddd	%xmm2, %xmm3
	punpcklbw	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[0],mem[0],xmm5[1],mem[1],xmm5[2],mem[2],xmm5[3],mem[3],xmm5[4],mem[4],xmm5[5],mem[5],xmm5[6],mem[6],xmm5[7],mem[7]
	movdqa	%xmm5, %xmm6
	punpcklwd	.LCPI20_6(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm15, %xmm6
	movq	(%rbx,%r14), %xmm2              # xmm2 = mem[0],zero
	punpckhwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	punpcklbw	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[0],mem[0],xmm2[1],mem[1],xmm2[2],mem[2],xmm2[3],mem[3],xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	punpckhwd	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[4],mem[4],xmm5[5],mem[5],xmm5[6],mem[6],xmm5[7],mem[7]
	paddd	%xmm1, %xmm5
	movdqa	%xmm2, %xmm0
	punpcklwd	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	movq	(%rdx,%r14), %xmm1              # xmm1 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm15
	punpcklwd	.LCPI20_6(%rip), %xmm15 # xmm15 = xmm15[0],mem[0],xmm15[1],mem[1],xmm15[2],mem[2],xmm15[3],mem[3]
	paddd	%xmm0, %xmm15
	punpckhwd	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	punpckhwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	paddd	%xmm2, %xmm1
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	-112(%rsp), %xmm2               # 16-byte Reload
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm11, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm11, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	-96(%rsp), %xmm2                # 16-byte Reload
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm6, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm6, %xmm0
	psubd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	psubd	%xmm0, %xmm10
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm13
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	psubd	%xmm0, %xmm9
	movq	-2(%rcx,%r14), %xmm1            # xmm1 = mem[0],zero
	movq	6(%rcx,%r14), %xmm0             # xmm0 = mem[0],zero
	movq	14(%rcx,%r14), %xmm4            # xmm4 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm5
	punpckhwd	.LCPI20_6(%rip), %xmm5  # xmm5 = xmm5[4],mem[4],xmm5[5],mem[5],xmm5[6],mem[6],xmm5[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3],xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	movdqa	%xmm0, %xmm2
	punpckhwd	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1],xmm0[2],mem[2],xmm0[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3],xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	movdqa	%xmm4, %xmm3
	punpckhwd	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	movq	-24(%r9,%r14), %xmm6            # xmm6 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3],xmm6[4],mem[4],xmm6[5],mem[5],xmm6[6],mem[6],xmm6[7],mem[7]
	movdqa	%xmm6, %xmm14
	punpckhwd	.LCPI20_6(%rip), %xmm14 # xmm14 = xmm14[4],mem[4],xmm14[5],mem[5],xmm14[6],mem[6],xmm14[7],mem[7]
	paddd	%xmm5, %xmm14
	movq	-16(%r9,%r14), %xmm5            # xmm5 = mem[0],zero
	punpcklwd	.LCPI20_6(%rip), %xmm6  # xmm6 = xmm6[0],mem[0],xmm6[1],mem[1],xmm6[2],mem[2],xmm6[3],mem[3]
	paddd	%xmm1, %xmm6
	movdqa	%xmm5, %xmm1
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm15
	punpckhwd	.LCPI20_6(%rip), %xmm15 # xmm15 = xmm15[4],mem[4],xmm15[5],mem[5],xmm15[6],mem[6],xmm15[7],mem[7]
	paddd	%xmm2, %xmm15
	movq	-8(%r9,%r14), %xmm2             # xmm2 = mem[0],zero
	punpcklwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, %xmm5
	movdqa	%xmm2, %xmm1
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	movdqa	%xmm1, %xmm0
	movdqa	%xmm1, %xmm11
	punpckhwd	.LCPI20_6(%rip), %xmm0  # xmm0 = xmm0[4],mem[4],xmm0[5],mem[5],xmm0[6],mem[6],xmm0[7],mem[7]
	paddd	%xmm3, %xmm0
	movq	22(%rcx,%r14), %xmm1            # xmm1 = mem[0],zero
	punpcklwd	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[0],mem[0],xmm4[1],mem[1],xmm4[2],mem[2],xmm4[3],mem[3]
	punpcklbw	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3],xmm1[4],mem[4],xmm1[5],mem[5],xmm1[6],mem[6],xmm1[7],mem[7]
	punpcklwd	.LCPI20_6(%rip), %xmm11 # xmm11 = xmm11[0],mem[0],xmm11[1],mem[1],xmm11[2],mem[2],xmm11[3],mem[3]
	paddd	%xmm4, %xmm11
	movdqa	%xmm1, %xmm2
	punpckhwd	.LCPI20_6(%rip), %xmm2  # xmm2 = xmm2[4],mem[4],xmm2[5],mem[5],xmm2[6],mem[6],xmm2[7],mem[7]
	movq	(%r9,%r14), %xmm3               # xmm3 = mem[0],zero
	punpcklbw	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3],xmm3[4],mem[4],xmm3[5],mem[5],xmm3[6],mem[6],xmm3[7],mem[7]
	movdqa	%xmm3, %xmm4
	punpckhwd	.LCPI20_6(%rip), %xmm4  # xmm4 = xmm4[4],mem[4],xmm4[5],mem[5],xmm4[6],mem[6],xmm4[7],mem[7]
	paddd	%xmm2, %xmm4
	punpcklwd	.LCPI20_6(%rip), %xmm1  # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1],xmm1[2],mem[2],xmm1[3],mem[3]
	punpcklwd	.LCPI20_6(%rip), %xmm3  # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1],xmm3[2],mem[2],xmm3[3],mem[3]
	paddd	%xmm1, %xmm3
	movdqa	.LCPI20_0(%rip), %xmm1          # xmm1 = [20,0,20,0,20,0,20,0]
	pmaddwd	%xmm1, %xmm14
	paddd	-112(%rsp), %xmm14              # 16-byte Folded Reload
	pmaddwd	%xmm1, %xmm6
	paddd	%xmm8, %xmm6
	pmaddwd	%xmm1, %xmm15
	paddd	-96(%rsp), %xmm15               # 16-byte Folded Reload
	pmaddwd	%xmm1, %xmm5
	paddd	%xmm7, %xmm5
	pmaddwd	%xmm1, %xmm0
	paddd	%xmm10, %xmm0
	pmaddwd	%xmm1, %xmm11
	paddd	%xmm12, %xmm11
	pmaddwd	%xmm1, %xmm4
	paddd	%xmm9, %xmm4
	movdqa	%xmm4, -96(%rsp)                # 16-byte Spill
	pmaddwd	%xmm1, %xmm3
	paddd	%xmm13, %xmm3
	movdqa	%xmm3, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm6, %xmm1
	packssdw	%xmm14, %xmm6
	movdqa	%xmm6, -80(%rsp)                # 16-byte Spill
	movdqa	.LCPI20_1(%rip), %xmm4          # xmm4 = [16,16,16,16]
	paddd	%xmm4, %xmm14
	paddd	%xmm4, %xmm1
	movdqa	%xmm5, %xmm7
	packssdw	%xmm15, %xmm5
	movdqa	%xmm5, (%rsp)                   # 16-byte Spill
	paddd	%xmm4, %xmm15
	paddd	%xmm4, %xmm7
	movdqa	%xmm11, %xmm5
	packssdw	%xmm0, %xmm11
	movdqa	%xmm11, -16(%rsp)               # 16-byte Spill
	paddd	%xmm4, %xmm0
	movdqa	%xmm1, %xmm3
	psrad	$5, %xmm3
	movdqa	%xmm3, 32(%rsp)                 # 16-byte Spill
	psrad	$5, %xmm14
	psrad	$5, %xmm7
	psrad	$5, %xmm15
	psrad	$5, %xmm0
	movdqa	%xmm0, %xmm6
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	movdqa	.LCPI20_2(%rip), %xmm1          # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
	movdqa	.LCPI20_3(%rip), %xmm2          # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movdqa	%xmm3, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm3
	pcmpgtd	%xmm0, %xmm3
	movdqa	%xmm15, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movdqa	%xmm7, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm13
	pcmpgtd	%xmm0, %xmm13
	movdqa	%xmm5, %xmm0
	paddd	%xmm4, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm12
	pcmpgtd	%xmm0, %xmm12
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	movdqa	%xmm0, %xmm11
	movdqa	-96(%rsp), %xmm5                # 16-byte Reload
	packssdw	%xmm5, %xmm0
	movdqa	%xmm0, -112(%rsp)               # 16-byte Spill
	paddd	%xmm4, %xmm5
	psrad	$5, %xmm5
	movdqa	%xmm5, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm2, %xmm6
	pcmpgtd	%xmm0, %xmm6
	paddd	%xmm4, %xmm11
	psrad	$5, %xmm11
	movdqa	%xmm11, %xmm4
	pxor	%xmm1, %xmm4
	pcmpgtd	%xmm4, %xmm2
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	movdqa	%xmm1, %xmm4
	pcmpgtd	.LCPI20_6(%rip), %xmm4
	pand	%xmm3, %xmm1
	pandn	%xmm4, %xmm3
	por	%xmm1, %xmm3
	movdqa	%xmm14, %xmm4
	pcmpgtd	.LCPI20_6(%rip), %xmm4
	pand	%xmm9, %xmm14
	pandn	%xmm4, %xmm9
	por	%xmm14, %xmm9
	movdqa	.LCPI20_4(%rip), %xmm14         # xmm14 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	movdqa	%xmm7, %xmm4
	pcmpgtd	.LCPI20_6(%rip), %xmm4
	pand	%xmm10, %xmm7
	pandn	%xmm4, %xmm10
	por	%xmm7, %xmm10
	movdqa	%xmm15, %xmm4
	pcmpgtd	.LCPI20_6(%rip), %xmm4
	pand	%xmm8, %xmm15
	pandn	%xmm4, %xmm8
	por	%xmm15, %xmm8
	movdqa	-32(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm4
	pcmpgtd	.LCPI20_6(%rip), %xmm4
	pand	%xmm12, %xmm1
	pandn	%xmm4, %xmm12
	por	%xmm1, %xmm12
	pxor	%xmm15, %xmm15
	movdqa	-48(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm4
	pcmpgtd	%xmm15, %xmm4
	pand	%xmm13, %xmm1
	pandn	%xmm4, %xmm13
	por	%xmm1, %xmm13
	movdqa	%xmm11, %xmm4
	pcmpgtd	%xmm15, %xmm4
	pand	%xmm2, %xmm11
	pandn	%xmm4, %xmm2
	por	%xmm11, %xmm2
	movdqa	%xmm5, %xmm4
	pcmpgtd	%xmm15, %xmm4
	pand	%xmm6, %xmm5
	pandn	%xmm4, %xmm6
	por	%xmm5, %xmm6
	pand	%xmm14, %xmm9
	pand	%xmm14, %xmm3
	packuswb	%xmm9, %xmm3
	pand	%xmm14, %xmm8
	pand	%xmm14, %xmm10
	packuswb	%xmm8, %xmm10
	packuswb	%xmm10, %xmm3
	pand	%xmm14, %xmm13
	pand	%xmm14, %xmm12
	packuswb	%xmm13, %xmm12
	pand	%xmm14, %xmm6
	pand	%xmm14, %xmm2
	packuswb	%xmm6, %xmm2
	packuswb	%xmm2, %xmm12
	movdqu	%xmm3, -2(%r11,%r14)
	movdqu	%xmm12, 14(%r11,%r14)
	movaps	-80(%rsp), %xmm0                # 16-byte Reload
	movups	%xmm0, (%r13,%r14,2)
	movaps	(%rsp), %xmm0                   # 16-byte Reload
	movups	%xmm0, 16(%r13,%r14,2)
	movaps	-16(%rsp), %xmm0                # 16-byte Reload
	movups	%xmm0, 32(%r13,%r14,2)
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	movdqu	%xmm0, 48(%r13,%r14,2)
	addq	$32, %r14
	cmpq	%r14, %rdi
	jne	.LBB20_5
# %bb.6:                                # %middle.block405
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	392(%rsp), %r14                 # 8-byte Reload
	cmpl	208(%rsp), %edi                 # 4-byte Folded Reload
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	%r11, %r9
	movq	304(%rsp), %r11                 # 8-byte Reload
	movq	%r15, %rsi
	movdqa	.LCPI20_0(%rip), %xmm6          # xmm6 = [20,0,20,0,20,0,20,0]
	movdqa	.LCPI20_1(%rip), %xmm7          # xmm7 = [16,16,16,16]
	movdqa	.LCPI20_2(%rip), %xmm8          # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI20_3(%rip), %xmm9          # xmm9 = [2147483904,2147483904,2147483904,2147483904]
	movq	240(%rsp), %r12                 # 8-byte Reload
	je	.LBB20_7
	.p2align	4, 0x90
.LBB20_29:                              # %for.body4
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%r14), %r15d
	movzbl	(%rsi,%r14), %r8d
	addl	%r15d, %r8d
	movzbl	(%rax,%r14), %r15d
	movzbl	(%rbp,%r14), %edi
	addl	%r15d, %edi
	leal	(%rdi,%rdi,4), %edi
	subl	%edi, %r8d
	movzbl	(%rcx,%r14), %edi
	movzbl	(%r12,%r14), %r15d
	addl	%edi, %r15d
	leal	(%r15,%r15,4), %edi
	leal	(%r8,%rdi,4), %r15d
	leal	(%r8,%rdi,4), %edi
	addl	$16, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	setg	%r8b
	negb	%r8b
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%r8b, %r8d
	cmovbl	%edi, %r8d
	movb	%r8b, (%r9,%r14)
	movw	%r15w, 4(%r13,%r14,2)
	incq	%r14
	cmpl	%r14d, %r11d
	jne	.LBB20_29
.LBB20_7:                               # %for.cond41.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rbp, 232(%rsp)                 # 8-byte Spill
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	movq	-56(%rsp), %r8                  # 8-byte Reload
	movq	216(%rsp), %r11                 # 8-byte Reload
	movq	336(%rsp), %rbp                 # 8-byte Reload
	movq	328(%rsp), %r9                  # 8-byte Reload
	movq	320(%rsp), %r12                 # 8-byte Reload
	jle	.LBB20_27
# %bb.8:                                # %for.body45.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpl	$32, 24(%rsp)                   # 4-byte Folded Reload
	setb	%r14b
	orb	-114(%rsp), %r14b               # 1-byte Folded Reload
	je	.LBB20_11
# %bb.9:                                #   in Loop: Header=BB20_2 Depth=1
	xorl	%r14d, %r14d
	movq	16(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB20_10
.LBB20_11:                              # %vector.body292.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	xorl	%r14d, %r14d
	movq	384(%rsp), %rdi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_12:                              # %vector.body292
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	16(%r13,%r14,2), %xmm1
	movdqu	32(%r13,%r14,2), %xmm4
	movdqu	48(%r13,%r14,2), %xmm5
	movdqu	(%r13,%r14,2), %xmm2
	movdqu	2(%r13,%r14,2), %xmm0
	punpckhwd	%xmm2, %xmm8            # xmm8 = xmm8[4],xmm2[4],xmm8[5],xmm2[5],xmm8[6],xmm2[6],xmm8[7],xmm2[7]
	psrad	$16, %xmm8
	punpcklwd	%xmm2, %xmm3            # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1],xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	psrad	$16, %xmm3
	punpckhwd	%xmm1, %xmm7            # xmm7 = xmm7[4],xmm1[4],xmm7[5],xmm1[5],xmm7[6],xmm1[6],xmm7[7],xmm1[7]
	psrad	$16, %xmm7
	punpcklwd	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	psrad	$16, %xmm2
	punpckhwd	%xmm4, %xmm6            # xmm6 = xmm6[4],xmm4[4],xmm6[5],xmm4[5],xmm6[6],xmm4[6],xmm6[7],xmm4[7]
	psrad	$16, %xmm6
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	psrad	$16, %xmm1
	punpckhwd	%xmm5, %xmm4            # xmm4 = xmm4[4],xmm5[4],xmm4[5],xmm5[5],xmm4[6],xmm5[6],xmm4[7],xmm5[7]
	psrad	$16, %xmm4
	punpcklwd	%xmm5, %xmm9            # xmm9 = xmm9[0],xmm5[0],xmm9[1],xmm5[1],xmm9[2],xmm5[2],xmm9[3],xmm5[3]
	psrad	$16, %xmm9
	movdqu	10(%r13,%r14,2), %xmm11
	movdqu	26(%r13,%r14,2), %xmm12
	movdqu	42(%r13,%r14,2), %xmm13
	movdqu	58(%r13,%r14,2), %xmm10
	punpckhwd	%xmm11, %xmm5           # xmm5 = xmm5[4],xmm11[4],xmm5[5],xmm11[5],xmm5[6],xmm11[6],xmm5[7],xmm11[7]
	psrad	$16, %xmm5
	paddd	%xmm8, %xmm5
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	punpcklwd	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1],xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	psrad	$16, %xmm5
	paddd	%xmm3, %xmm5
	movdqa	%xmm5, -96(%rsp)                # 16-byte Spill
	punpckhwd	%xmm12, %xmm3           # xmm3 = xmm3[4],xmm12[4],xmm3[5],xmm12[5],xmm3[6],xmm12[6],xmm3[7],xmm12[7]
	psrad	$16, %xmm3
	paddd	%xmm7, %xmm3
	movdqa	%xmm3, -112(%rsp)               # 16-byte Spill
	punpcklwd	%xmm12, %xmm3           # xmm3 = xmm3[0],xmm12[0],xmm3[1],xmm12[1],xmm3[2],xmm12[2],xmm3[3],xmm12[3]
	psrad	$16, %xmm3
	paddd	%xmm2, %xmm3
	punpckhwd	%xmm13, %xmm2           # xmm2 = xmm2[4],xmm13[4],xmm2[5],xmm13[5],xmm2[6],xmm13[6],xmm2[7],xmm13[7]
	psrad	$16, %xmm2
	paddd	%xmm6, %xmm2
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm13, %xmm8           # xmm8 = xmm8[0],xmm13[0],xmm8[1],xmm13[1],xmm8[2],xmm13[2],xmm8[3],xmm13[3]
	psrad	$16, %xmm8
	paddd	%xmm1, %xmm8
	punpckhwd	%xmm10, %xmm5           # xmm5 = xmm5[4],xmm10[4],xmm5[5],xmm10[5],xmm5[6],xmm10[6],xmm5[7],xmm10[7]
	psrad	$16, %xmm5
	paddd	%xmm4, %xmm5
	punpcklwd	%xmm10, %xmm4           # xmm4 = xmm4[0],xmm10[0],xmm4[1],xmm10[1],xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	psrad	$16, %xmm4
	paddd	%xmm9, %xmm4
	movdqu	18(%r13,%r14,2), %xmm10
	movdqu	34(%r13,%r14,2), %xmm9
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	psrad	$16, %xmm12
	punpckhwd	%xmm0, %xmm1            # xmm1 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psrad	$16, %xmm1
	punpcklwd	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1],xmm11[2],xmm10[2],xmm11[3],xmm10[3]
	psrad	$16, %xmm11
	punpckhwd	%xmm10, %xmm10          # xmm10 = xmm10[4,4,5,5,6,6,7,7]
	psrad	$16, %xmm10
	punpcklwd	%xmm9, %xmm14           # xmm14 = xmm14[0],xmm9[0],xmm14[1],xmm9[1],xmm14[2],xmm9[2],xmm14[3],xmm9[3]
	psrad	$16, %xmm14
	movdqu	8(%r13,%r14,2), %xmm15
	punpcklwd	%xmm15, %xmm13          # xmm13 = xmm13[0],xmm15[0],xmm13[1],xmm15[1],xmm13[2],xmm15[2],xmm13[3],xmm15[3]
	psrad	$16, %xmm13
	paddd	%xmm12, %xmm13
	movdqu	24(%r13,%r14,2), %xmm0
	punpckhwd	%xmm15, %xmm12          # xmm12 = xmm12[4],xmm15[4],xmm12[5],xmm15[5],xmm12[6],xmm15[6],xmm12[7],xmm15[7]
	psrad	$16, %xmm12
	paddd	%xmm1, %xmm12
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	psrad	$16, %xmm1
	paddd	%xmm11, %xmm1
	movdqu	40(%r13,%r14,2), %xmm15
	punpckhwd	%xmm0, %xmm11           # xmm11 = xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	psrad	$16, %xmm11
	paddd	%xmm10, %xmm11
	punpcklwd	%xmm15, %xmm10          # xmm10 = xmm10[0],xmm15[0],xmm10[1],xmm15[1],xmm10[2],xmm15[2],xmm10[3],xmm15[3]
	psrad	$16, %xmm10
	paddd	%xmm14, %xmm10
	movdqu	50(%r13,%r14,2), %xmm2
	punpckhwd	%xmm9, %xmm14           # xmm14 = xmm14[4],xmm9[4],xmm14[5],xmm9[5],xmm14[6],xmm9[6],xmm14[7],xmm9[7]
	psrad	$16, %xmm14
	punpckhwd	%xmm15, %xmm9           # xmm9 = xmm9[4],xmm15[4],xmm9[5],xmm15[5],xmm9[6],xmm15[6],xmm9[7],xmm15[7]
	psrad	$16, %xmm9
	paddd	%xmm14, %xmm9
	punpcklwd	%xmm2, %xmm15           # xmm15 = xmm15[0],xmm2[0],xmm15[1],xmm2[1],xmm15[2],xmm2[2],xmm15[3],xmm2[3]
	psrad	$16, %xmm15
	movdqu	56(%r13,%r14,2), %xmm0
	punpcklwd	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1],xmm14[2],xmm0[2],xmm14[3],xmm0[3]
	psrad	$16, %xmm14
	paddd	%xmm15, %xmm14
	punpckhwd	%xmm2, %xmm2            # xmm2 = xmm2[4,4,5,5,6,6,7,7]
	psrad	$16, %xmm2
	punpckhwd	%xmm0, %xmm15           # xmm15 = xmm15[4],xmm0[4],xmm15[5],xmm0[5],xmm15[6],xmm0[6],xmm15[7],xmm0[7]
	psrad	$16, %xmm15
	paddd	%xmm2, %xmm15
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	movdqa	-96(%rsp), %xmm2                # 16-byte Reload
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqu	4(%r13,%r14,2), %xmm13
	movdqa	-80(%rsp), %xmm6                # 16-byte Reload
	psubd	%xmm0, %xmm6
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqu	6(%r13,%r14,2), %xmm12
	psubd	%xmm0, %xmm3
	movdqa	%xmm3, (%rsp)                   # 16-byte Spill
	movdqa	%xmm11, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm11, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	%xmm10, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm10, %xmm0
	psubd	%xmm0, %xmm8
	movdqa	%xmm9, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm9, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	psubd	%xmm0, %xmm4
	movdqa	%xmm4, -16(%rsp)                # 16-byte Spill
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	psubd	%xmm0, %xmm5
	movdqa	%xmm5, -48(%rsp)                # 16-byte Spill
	movdqu	20(%r13,%r14,2), %xmm0
	movdqu	36(%r13,%r14,2), %xmm9
	punpckhwd	%xmm13, %xmm1           # xmm1 = xmm1[4],xmm13[4],xmm1[5],xmm13[5],xmm1[6],xmm13[6],xmm1[7],xmm13[7]
	psrad	$16, %xmm1
	punpcklwd	%xmm13, %xmm15          # xmm15 = xmm15[0],xmm13[0],xmm15[1],xmm13[1],xmm15[2],xmm13[2],xmm15[3],xmm13[3]
	psrad	$16, %xmm15
	punpckhwd	%xmm0, %xmm14           # xmm14 = xmm14[4],xmm0[4],xmm14[5],xmm0[5],xmm14[6],xmm0[6],xmm14[7],xmm0[7]
	psrad	$16, %xmm14
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	psrad	$16, %xmm11
	punpckhwd	%xmm9, %xmm10           # xmm10 = xmm10[4],xmm9[4],xmm10[5],xmm9[5],xmm10[6],xmm9[6],xmm10[7],xmm9[7]
	psrad	$16, %xmm10
	punpckhwd	%xmm12, %xmm3           # xmm3 = xmm3[4],xmm12[4],xmm3[5],xmm12[5],xmm3[6],xmm12[6],xmm3[7],xmm12[7]
	psrad	$16, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	22(%r13,%r14,2), %xmm1
	punpcklwd	%xmm12, %xmm13          # xmm13 = xmm13[0],xmm12[0],xmm13[1],xmm12[1],xmm13[2],xmm12[2],xmm13[3],xmm12[3]
	psrad	$16, %xmm13
	paddd	%xmm15, %xmm13
	punpckhwd	%xmm1, %xmm15           # xmm15 = xmm15[4],xmm1[4],xmm15[5],xmm1[5],xmm15[6],xmm1[6],xmm15[7],xmm1[7]
	psrad	$16, %xmm15
	paddd	%xmm14, %xmm15
	movdqu	38(%r13,%r14,2), %xmm2
	punpcklwd	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1],xmm14[2],xmm1[2],xmm14[3],xmm1[3]
	psrad	$16, %xmm14
	paddd	%xmm11, %xmm14
	punpckhwd	%xmm2, %xmm12           # xmm12 = xmm12[4],xmm2[4],xmm12[5],xmm2[5],xmm12[6],xmm2[6],xmm12[7],xmm2[7]
	psrad	$16, %xmm12
	paddd	%xmm10, %xmm12
	movdqu	52(%r13,%r14,2), %xmm1
	punpcklwd	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm9
	punpcklwd	%xmm2, %xmm11           # xmm11 = xmm11[0],xmm2[0],xmm11[1],xmm2[1],xmm11[2],xmm2[2],xmm11[3],xmm2[3]
	psrad	$16, %xmm11
	paddd	%xmm9, %xmm11
	punpckhwd	%xmm1, %xmm2            # xmm2 = xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	psrad	$16, %xmm2
	movdqu	54(%r13,%r14,2), %xmm9
	punpckhwd	%xmm9, %xmm10           # xmm10 = xmm10[4],xmm9[4],xmm10[5],xmm9[5],xmm10[6],xmm9[6],xmm10[7],xmm9[7]
	psrad	$16, %xmm10
	paddd	%xmm2, %xmm10
	movdqa	.LCPI20_5(%rip), %xmm4          # xmm4 = [512,512,512,512]
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	punpcklwd	%xmm9, %xmm9            # xmm9 = xmm9[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm9
	paddd	%xmm1, %xmm9
	pshufd	$245, %xmm3, %xmm1              # xmm1 = xmm3[1,1,3,3]
	movdqa	.LCPI20_0(%rip), %xmm0          # xmm0 = [20,0,20,0,20,0,20,0]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm2              # xmm2 = xmm3[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	pshufd	$245, %xmm13, %xmm1             # xmm1 = xmm13[1,1,3,3]
	pmuludq	%xmm0, %xmm13
	pshufd	$232, %xmm13, %xmm13            # xmm13 = xmm13[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm13           # xmm13 = xmm13[0],xmm1[0],xmm13[1],xmm1[1]
	pshufd	$245, %xmm15, %xmm1             # xmm1 = xmm15[1,1,3,3]
	pmuludq	%xmm0, %xmm15
	pshufd	$232, %xmm15, %xmm15            # xmm15 = xmm15[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm15           # xmm15 = xmm15[0],xmm1[0],xmm15[1],xmm1[1]
	pshufd	$245, %xmm14, %xmm1             # xmm1 = xmm14[1,1,3,3]
	pmuludq	%xmm0, %xmm14
	pshufd	$232, %xmm14, %xmm14            # xmm14 = xmm14[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm14           # xmm14 = xmm14[0],xmm1[0],xmm14[1],xmm1[1]
	pshufd	$245, %xmm12, %xmm1             # xmm1 = xmm12[1,1,3,3]
	pmuludq	%xmm0, %xmm12
	pshufd	$232, %xmm12, %xmm12            # xmm12 = xmm12[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm12           # xmm12 = xmm12[0],xmm1[0],xmm12[1],xmm1[1]
	pshufd	$245, %xmm11, %xmm1             # xmm1 = xmm11[1,1,3,3]
	pmuludq	%xmm0, %xmm11
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm11           # xmm11 = xmm11[0],xmm1[0],xmm11[1],xmm1[1]
	pshufd	$245, %xmm10, %xmm1             # xmm1 = xmm10[1,1,3,3]
	pmuludq	%xmm0, %xmm10
	pshufd	$232, %xmm10, %xmm10            # xmm10 = xmm10[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0],xmm10[1],xmm1[1]
	pshufd	$245, %xmm9, %xmm1              # xmm1 = xmm9[1,1,3,3]
	pmuludq	%xmm0, %xmm9
	pshufd	$232, %xmm9, %xmm9              # xmm9 = xmm9[0,2,2,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm9            # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	movdqa	%xmm6, %xmm7
	movdqa	%xmm4, %xmm1
	paddd	%xmm4, %xmm7
	paddd	%xmm2, %xmm7
	movdqa	-96(%rsp), %xmm6                # 16-byte Reload
	paddd	%xmm4, %xmm6
	paddd	%xmm13, %xmm6
	movdqa	-112(%rsp), %xmm5               # 16-byte Reload
	paddd	%xmm4, %xmm5
	paddd	%xmm15, %xmm5
	movdqa	%xmm5, %xmm2
	movdqa	(%rsp), %xmm5                   # 16-byte Reload
	paddd	%xmm4, %xmm5
	paddd	%xmm14, %xmm5
	movdqa	-80(%rsp), %xmm4                # 16-byte Reload
	paddd	%xmm1, %xmm4
	paddd	%xmm12, %xmm4
	movdqa	%xmm4, %xmm0
	movdqa	%xmm8, %xmm4
	paddd	%xmm1, %xmm4
	paddd	%xmm11, %xmm4
	movdqa	-48(%rsp), %xmm8                # 16-byte Reload
	paddd	%xmm1, %xmm8
	paddd	%xmm10, %xmm8
	movdqa	-16(%rsp), %xmm3                # 16-byte Reload
	paddd	%xmm1, %xmm3
	paddd	%xmm9, %xmm3
	psrad	$10, %xmm6
	psrad	$10, %xmm7
	psrad	$10, %xmm5
	movdqa	%xmm2, %xmm11
	psrad	$10, %xmm11
	movdqa	%xmm11, -112(%rsp)              # 16-byte Spill
	psrad	$10, %xmm4
	movdqa	%xmm0, %xmm9
	psrad	$10, %xmm9
	movdqa	%xmm9, -80(%rsp)                # 16-byte Spill
	psrad	$10, %xmm3
	psrad	$10, %xmm8
	movdqa	%xmm7, %xmm0
	movdqa	.LCPI20_2(%rip), %xmm2          # xmm2 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm2, %xmm0
	movdqa	.LCPI20_3(%rip), %xmm15         # xmm15 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm15, %xmm10
	pcmpgtd	%xmm0, %xmm10
	movdqa	%xmm6, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm0
	pcmpgtd	%xmm1, %xmm0
	movdqa	%xmm11, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm11
	pcmpgtd	%xmm1, %xmm11
	movdqa	%xmm5, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm13
	pcmpgtd	%xmm1, %xmm13
	movdqa	%xmm9, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm12
	pcmpgtd	%xmm1, %xmm12
	movdqa	%xmm4, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm9
	pcmpgtd	%xmm1, %xmm9
	movdqa	%xmm8, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm15, %xmm14
	pcmpgtd	%xmm1, %xmm14
	movdqa	%xmm3, %xmm1
	pxor	%xmm2, %xmm1
	pcmpgtd	%xmm1, %xmm15
	movdqa	%xmm6, %xmm1
	pxor	%xmm2, %xmm2
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm0, %xmm6
	pandn	%xmm1, %xmm0
	por	%xmm6, %xmm0
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm10, %xmm7
	pandn	%xmm1, %xmm10
	por	%xmm7, %xmm10
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm13, %xmm5
	pandn	%xmm1, %xmm13
	por	%xmm5, %xmm13
	movdqa	-112(%rsp), %xmm5               # 16-byte Reload
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm11, %xmm5
	pandn	%xmm1, %xmm11
	por	%xmm5, %xmm11
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm9, %xmm4
	pandn	%xmm1, %xmm9
	por	%xmm4, %xmm9
	movdqa	-80(%rsp), %xmm4                # 16-byte Reload
	movdqa	%xmm4, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm12, %xmm4
	pandn	%xmm1, %xmm12
	por	%xmm4, %xmm12
	movdqa	%xmm3, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm15, %xmm3
	pandn	%xmm1, %xmm15
	por	%xmm3, %xmm15
	movdqa	%xmm8, %xmm1
	pcmpgtd	%xmm2, %xmm1
	pand	%xmm14, %xmm8
	pandn	%xmm1, %xmm14
	por	%xmm8, %xmm14
	movdqa	.LCPI20_4(%rip), %xmm1          # xmm1 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm1, %xmm10
	pand	%xmm1, %xmm0
	packuswb	%xmm10, %xmm0
	pand	%xmm1, %xmm11
	pand	%xmm1, %xmm13
	packuswb	%xmm11, %xmm13
	packuswb	%xmm13, %xmm0
	pand	%xmm1, %xmm12
	pand	%xmm1, %xmm9
	packuswb	%xmm12, %xmm9
	pand	%xmm1, %xmm14
	pand	%xmm1, %xmm15
	packuswb	%xmm14, %xmm15
	packuswb	%xmm15, %xmm9
	movdqu	%xmm0, (%r11,%r14)
	movdqu	%xmm9, 16(%r11,%r14)
	addq	$32, %r14
	cmpq	%r14, %rdi
	jne	.LBB20_12
# %bb.13:                               # %middle.block286
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rdi, %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, %edi
	pxor	%xmm15, %xmm15
	movdqa	.LCPI20_0(%rip), %xmm6          # xmm6 = [20,0,20,0,20,0,20,0]
	movdqa	.LCPI20_1(%rip), %xmm7          # xmm7 = [16,16,16,16]
	movdqa	.LCPI20_2(%rip), %xmm8          # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI20_3(%rip), %xmm9          # xmm9 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI20_4(%rip), %xmm14         # xmm14 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	je	.LBB20_14
	.p2align	4, 0x90
.LBB20_10:                              # %for.body45
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movswl	(%r13,%r14,2), %edi
	movswl	10(%r13,%r14,2), %r8d
	addl	%edi, %r8d
	movswl	2(%r13,%r14,2), %edi
	movswl	8(%r13,%r14,2), %r15d
	addl	%edi, %r15d
	leal	(%r15,%r15,4), %edi
	subl	%edi, %r8d
	movswl	4(%r13,%r14,2), %edi
	movswl	6(%r13,%r14,2), %r15d
	addl	%edi, %r15d
	leal	(%r15,%r15,4), %edi
	leal	(%r8,%rdi,4), %edi
	addl	$512, %edi                      # imm = 0x200
	sarl	$10, %edi
	testl	%edi, %edi
	setg	%r8b
	negb	%r8b
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%r8b, %r8d
	cmovbl	%edi, %r8d
	movb	%r8b, (%r11,%r14)
	leaq	1(%r14), %rdi
	movq	%rdi, %r14
	cmpq	%rdi, %rax
	jne	.LBB20_10
.LBB20_14:                              # %for.cond90.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	movq	-56(%rsp), %r8                  # 8-byte Reload
	jle	.LBB20_27
# %bb.15:                               # %iter.check
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	24(%rsp), %r8                   # 8-byte Reload
	cmpl	$8, %r8d
	setb	%dil
	orb	-115(%rsp), %dil                # 1-byte Folded Reload
	je	.LBB20_18
# %bb.16:                               #   in Loop: Header=BB20_2 Depth=1
	xorl	%r15d, %r15d
	movq	16(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB20_17
.LBB20_18:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB20_2 Depth=1
	xorl	%r14d, %r14d
	cmpl	$64, %r8d
	jae	.LBB20_20
# %bb.19:                               #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB20_24
.LBB20_20:                              # %vector.body.preheader
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	-56(%rsp), %r8                  # 8-byte Reload
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movq	296(%rsp), %rax                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_21:                              # %vector.body
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	14(%rcx,%r14), %xmm2
	movdqu	30(%rcx,%r14), %xmm1
	movdqu	46(%rcx,%r14), %xmm8
	movdqu	-2(%rcx,%r14), %xmm5
	movdqa	%xmm5, %xmm10
	punpckhbw	%xmm15, %xmm10          # xmm10 = xmm10[8],xmm15[8],xmm10[9],xmm15[9],xmm10[10],xmm15[10],xmm10[11],xmm15[11],xmm10[12],xmm15[12],xmm10[13],xmm15[13],xmm10[14],xmm15[14],xmm10[15],xmm15[15]
	movdqa	%xmm10, %xmm12
	punpckhwd	%xmm15, %xmm12          # xmm12 = xmm12[4],xmm15[4],xmm12[5],xmm15[5],xmm12[6],xmm15[6],xmm12[7],xmm15[7]
	punpcklwd	%xmm15, %xmm10          # xmm10 = xmm10[0],xmm15[0],xmm10[1],xmm15[1],xmm10[2],xmm15[2],xmm10[3],xmm15[3]
	punpcklbw	%xmm15, %xmm5           # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3],xmm5[4],xmm15[4],xmm5[5],xmm15[5],xmm5[6],xmm15[6],xmm5[7],xmm15[7]
	movdqa	%xmm5, %xmm11
	punpckhwd	%xmm15, %xmm11          # xmm11 = xmm11[4],xmm15[4],xmm11[5],xmm15[5],xmm11[6],xmm15[6],xmm11[7],xmm15[7]
	punpcklwd	%xmm15, %xmm5           # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3]
	movdqa	%xmm2, %xmm7
	punpckhbw	%xmm15, %xmm7           # xmm7 = xmm7[8],xmm15[8],xmm7[9],xmm15[9],xmm7[10],xmm15[10],xmm7[11],xmm15[11],xmm7[12],xmm15[12],xmm7[13],xmm15[13],xmm7[14],xmm15[14],xmm7[15],xmm15[15]
	pxor	%xmm6, %xmm6
	movdqa	%xmm7, %xmm9
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	punpcklwd	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3]
	punpcklbw	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	movdqa	%xmm1, %xmm3
	punpckhbw	%xmm6, %xmm3            # xmm3 = xmm3[8],xmm6[8],xmm3[9],xmm6[9],xmm3[10],xmm6[10],xmm3[11],xmm6[11],xmm3[12],xmm6[12],xmm3[13],xmm6[13],xmm3[14],xmm6[14],xmm3[15],xmm6[15]
	movdqa	%xmm3, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	punpcklwd	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	punpcklbw	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3],xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movdqu	3(%rcx,%r14), %xmm0
	movdqa	%xmm0, %xmm15
	punpckhbw	%xmm6, %xmm15           # xmm15 = xmm15[8],xmm6[8],xmm15[9],xmm6[9],xmm15[10],xmm6[10],xmm15[11],xmm6[11],xmm15[12],xmm6[12],xmm15[13],xmm6[13],xmm15[14],xmm6[14],xmm15[15],xmm6[15]
	movdqa	%xmm15, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm12, %xmm14
	movdqa	%xmm14, -112(%rsp)              # 16-byte Spill
	movdqu	19(%rcx,%r14), %xmm12
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	paddd	%xmm10, %xmm15
	movdqa	%xmm15, -96(%rsp)               # 16-byte Spill
	punpcklbw	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	movdqa	%xmm0, %xmm10
	punpckhwd	%xmm6, %xmm10           # xmm10 = xmm10[4],xmm6[4],xmm10[5],xmm6[5],xmm10[6],xmm6[6],xmm10[7],xmm6[7]
	paddd	%xmm11, %xmm10
	movdqa	%xmm10, -16(%rsp)               # 16-byte Spill
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	paddd	%xmm5, %xmm0
	movdqa	%xmm0, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm12, %xmm5
	punpckhbw	%xmm6, %xmm5            # xmm5 = xmm5[8],xmm6[8],xmm5[9],xmm6[9],xmm5[10],xmm6[10],xmm5[11],xmm6[11],xmm5[12],xmm6[12],xmm5[13],xmm6[13],xmm5[14],xmm6[14],xmm5[15],xmm6[15]
	movdqa	%xmm5, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm9, %xmm0
	movdqa	%xmm0, (%rsp)                   # 16-byte Spill
	movdqu	35(%rcx,%r14), %xmm9
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	paddd	%xmm7, %xmm5
	movdqa	%xmm5, 176(%rsp)                # 16-byte Spill
	punpcklbw	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3],xmm12[4],xmm6[4],xmm12[5],xmm6[5],xmm12[6],xmm6[6],xmm12[7],xmm6[7]
	movdqa	%xmm12, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm4, %xmm0
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm2, %xmm12
	movdqa	%xmm12, -80(%rsp)               # 16-byte Spill
	movdqa	%xmm9, %xmm4
	punpckhbw	%xmm6, %xmm4            # xmm4 = xmm4[8],xmm6[8],xmm4[9],xmm6[9],xmm4[10],xmm6[10],xmm4[11],xmm6[11],xmm4[12],xmm6[12],xmm4[13],xmm6[13],xmm4[14],xmm6[14],xmm4[15],xmm6[15]
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm13, %xmm0
	movdqa	%xmm0, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm2
	punpckhbw	%xmm6, %xmm2            # xmm2 = xmm2[8],xmm6[8],xmm2[9],xmm6[9],xmm2[10],xmm6[10],xmm2[11],xmm6[11],xmm2[12],xmm6[12],xmm2[13],xmm6[13],xmm2[14],xmm6[14],xmm2[15],xmm6[15]
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm3, %xmm4
	movdqa	%xmm4, 272(%rsp)                # 16-byte Spill
	punpcklbw	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3],xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	movdqa	%xmm9, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	-32(%rsp), %xmm0                # 16-byte Folded Reload
	movdqa	%xmm0, 256(%rsp)                # 16-byte Spill
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpcklwd	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3]
	paddd	%xmm1, %xmm9
	movdqa	%xmm9, -32(%rsp)                # 16-byte Spill
	movdqu	51(%rcx,%r14), %xmm4
	movdqa	%xmm4, %xmm1
	punpckhbw	%xmm6, %xmm1            # xmm1 = xmm1[8],xmm6[8],xmm1[9],xmm6[9],xmm1[10],xmm6[10],xmm1[11],xmm6[11],xmm1[12],xmm6[12],xmm1[13],xmm6[13],xmm1[14],xmm6[14],xmm1[15],xmm6[15]
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	punpcklbw	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3],xmm8[4],xmm6[4],xmm8[5],xmm6[5],xmm8[6],xmm6[6],xmm8[7],xmm6[7]
	movdqa	%xmm8, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklbw	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3],xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm8, %xmm4
	movdqa	%xmm4, 64(%rsp)                 # 16-byte Spill
	movdqu	-1(%rcx,%r14), %xmm1
	movdqa	%xmm1, %xmm3
	punpcklbw	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3],xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	movdqu	2(%rcx,%r14), %xmm7
	movdqa	%xmm7, %xmm2
	punpcklbw	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	movdqa	%xmm2, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	paddd	%xmm4, %xmm0
	movdqa	%xmm0, 144(%rsp)                # 16-byte Spill
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpckhwd	%xmm6, %xmm2            # xmm2 = xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	paddd	%xmm3, %xmm2
	punpckhbw	%xmm6, %xmm1            # xmm1 = xmm1[8],xmm6[8],xmm1[9],xmm6[9],xmm1[10],xmm6[10],xmm1[11],xmm6[11],xmm1[12],xmm6[12],xmm1[13],xmm6[13],xmm1[14],xmm6[14],xmm1[15],xmm6[15]
	movdqa	%xmm1, %xmm3
	punpcklwd	%xmm6, %xmm3            # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1],xmm3[2],xmm6[2],xmm3[3],xmm6[3]
	punpckhbw	%xmm6, %xmm7            # xmm7 = xmm7[8],xmm6[8],xmm7[9],xmm6[9],xmm7[10],xmm6[10],xmm7[11],xmm6[11],xmm7[12],xmm6[12],xmm7[13],xmm6[13],xmm7[14],xmm6[14],xmm7[15],xmm6[15]
	movdqa	%xmm7, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	paddd	%xmm3, %xmm0
	movdqa	%xmm0, 128(%rsp)                # 16-byte Spill
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpckhwd	%xmm6, %xmm7            # xmm7 = xmm7[4],xmm6[4],xmm7[5],xmm6[5],xmm7[6],xmm6[6],xmm7[7],xmm6[7]
	paddd	%xmm1, %xmm7
	movdqu	15(%rcx,%r14), %xmm3
	movdqa	%xmm3, %xmm5
	punpcklbw	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3],xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqa	%xmm5, %xmm8
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	movdqu	18(%rcx,%r14), %xmm4
	movdqa	%xmm4, %xmm9
	punpcklbw	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3],xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	movdqa	%xmm9, %xmm0
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, 112(%rsp)                # 16-byte Spill
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	paddd	%xmm5, %xmm9
	punpckhbw	%xmm6, %xmm3            # xmm3 = xmm3[8],xmm6[8],xmm3[9],xmm6[9],xmm3[10],xmm6[10],xmm3[11],xmm6[11],xmm3[12],xmm6[12],xmm3[13],xmm6[13],xmm3[14],xmm6[14],xmm3[15],xmm6[15]
	movdqa	%xmm3, %xmm5
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	punpckhbw	%xmm6, %xmm4            # xmm4 = xmm4[8],xmm6[8],xmm4[9],xmm6[9],xmm4[10],xmm6[10],xmm4[11],xmm6[11],xmm4[12],xmm6[12],xmm4[13],xmm6[13],xmm4[14],xmm6[14],xmm4[15],xmm6[15]
	movdqa	%xmm4, %xmm10
	punpcklwd	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1],xmm10[2],xmm6[2],xmm10[3],xmm6[3]
	paddd	%xmm5, %xmm10
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	paddd	%xmm3, %xmm4
	movdqu	31(%rcx,%r14), %xmm5
	movdqa	%xmm5, %xmm11
	punpcklbw	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1],xmm11[2],xmm6[2],xmm11[3],xmm6[3],xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	movdqa	%xmm11, %xmm13
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	movdqu	34(%rcx,%r14), %xmm3
	movdqa	%xmm3, %xmm8
	punpcklbw	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3],xmm8[4],xmm6[4],xmm8[5],xmm6[5],xmm8[6],xmm6[6],xmm8[7],xmm6[7]
	movdqa	%xmm8, %xmm12
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm13, %xmm12
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	punpckhwd	%xmm6, %xmm8            # xmm8 = xmm8[4],xmm6[4],xmm8[5],xmm6[5],xmm8[6],xmm6[6],xmm8[7],xmm6[7]
	paddd	%xmm11, %xmm8
	punpckhbw	%xmm6, %xmm5            # xmm5 = xmm5[8],xmm6[8],xmm5[9],xmm6[9],xmm5[10],xmm6[10],xmm5[11],xmm6[11],xmm5[12],xmm6[12],xmm5[13],xmm6[13],xmm5[14],xmm6[14],xmm5[15],xmm6[15]
	movdqa	%xmm5, %xmm11
	punpcklwd	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1],xmm11[2],xmm6[2],xmm11[3],xmm6[3]
	punpckhbw	%xmm6, %xmm3            # xmm3 = xmm3[8],xmm6[8],xmm3[9],xmm6[9],xmm3[10],xmm6[10],xmm3[11],xmm6[11],xmm3[12],xmm6[12],xmm3[13],xmm6[13],xmm3[14],xmm6[14],xmm3[15],xmm6[15]
	movdqa	%xmm3, %xmm13
	punpcklwd	%xmm6, %xmm13           # xmm13 = xmm13[0],xmm6[0],xmm13[1],xmm6[1],xmm13[2],xmm6[2],xmm13[3],xmm6[3]
	paddd	%xmm11, %xmm13
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	punpckhwd	%xmm6, %xmm3            # xmm3 = xmm3[4],xmm6[4],xmm3[5],xmm6[5],xmm3[6],xmm6[6],xmm3[7],xmm6[7]
	paddd	%xmm5, %xmm3
	movdqu	47(%rcx,%r14), %xmm0
	movdqa	%xmm0, %xmm15
	punpcklbw	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3],xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	movdqa	%xmm15, %xmm1
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	movdqu	50(%rcx,%r14), %xmm5
	movdqa	%xmm5, %xmm11
	punpcklbw	%xmm6, %xmm11           # xmm11 = xmm11[0],xmm6[0],xmm11[1],xmm6[1],xmm11[2],xmm6[2],xmm11[3],xmm6[3],xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	movdqa	%xmm11, %xmm14
	punpcklwd	%xmm6, %xmm14           # xmm14 = xmm14[0],xmm6[0],xmm14[1],xmm6[1],xmm14[2],xmm6[2],xmm14[3],xmm6[3]
	paddd	%xmm1, %xmm14
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	paddd	%xmm15, %xmm11
	punpckhbw	%xmm6, %xmm0            # xmm0 = xmm0[8],xmm6[8],xmm0[9],xmm6[9],xmm0[10],xmm6[10],xmm0[11],xmm6[11],xmm0[12],xmm6[12],xmm0[13],xmm6[13],xmm0[14],xmm6[14],xmm0[15],xmm6[15]
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	punpckhbw	%xmm6, %xmm5            # xmm5 = xmm5[8],xmm6[8],xmm5[9],xmm6[9],xmm5[10],xmm6[10],xmm5[11],xmm6[11],xmm5[12],xmm6[12],xmm5[13],xmm6[13],xmm5[14],xmm6[14],xmm5[15],xmm6[15]
	movdqa	%xmm5, %xmm15
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	paddd	%xmm1, %xmm15
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	paddd	%xmm0, %xmm5
	movdqa	144(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	192(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 192(%rsp)                # 16-byte Spill
	movdqa	%xmm2, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	-16(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -16(%rsp)                # 16-byte Spill
	movdqa	128(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -96(%rsp)                # 16-byte Spill
	movdqa	%xmm7, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	-112(%rsp), %xmm1               # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -112(%rsp)               # 16-byte Spill
	movdqa	112(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	movdqa	%xmm9, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm9, %xmm0
	movdqa	-48(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -48(%rsp)                # 16-byte Spill
	movdqa	%xmm10, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm10, %xmm0
	movdqa	176(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 176(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm4, %xmm0
	movdqa	(%rsp), %xmm1                   # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, (%rsp)                   # 16-byte Spill
	movdqa	%xmm12, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm12, %xmm0
	movdqa	-32(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, -32(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm8, %xmm0
	movdqa	256(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 256(%rsp)                # 16-byte Spill
	movdqa	%xmm13, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm13, %xmm0
	movdqa	272(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 272(%rsp)                # 16-byte Spill
	movdqa	%xmm3, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm3, %xmm0
	movdqa	160(%rsp), %xmm1                # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 160(%rsp)                # 16-byte Spill
	movdqa	%xmm14, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	64(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm11, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm11, %xmm0
	movdqa	80(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm15, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movdqa	%xmm5, %xmm0
	pslld	$2, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	96(%rsp), %xmm1                 # 16-byte Reload
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 96(%rsp)                 # 16-byte Spill
	movdqu	(%rcx,%r14), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm6, %xmm4            # xmm4 = xmm4[8],xmm6[8],xmm4[9],xmm6[9],xmm4[10],xmm6[10],xmm4[11],xmm6[11],xmm4[12],xmm6[12],xmm4[13],xmm6[13],xmm4[14],xmm6[14],xmm4[15],xmm6[15]
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm6, %xmm5            # xmm5 = xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqu	1(%rcx,%r14), %xmm1
	movdqa	%xmm1, %xmm7
	punpckhbw	%xmm6, %xmm7            # xmm7 = xmm7[8],xmm6[8],xmm7[9],xmm6[9],xmm7[10],xmm6[10],xmm7[11],xmm6[11],xmm7[12],xmm6[12],xmm7[13],xmm6[13],xmm7[14],xmm6[14],xmm7[15],xmm6[15]
	movdqa	%xmm7, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm5, %xmm0
	movdqa	%xmm0, %xmm10
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	punpcklwd	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1],xmm7[2],xmm6[2],xmm7[3],xmm6[3]
	paddd	%xmm4, %xmm7
	punpcklbw	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	movdqa	%xmm2, %xmm4
	punpckhwd	%xmm6, %xmm4            # xmm4 = xmm4[4],xmm6[4],xmm4[5],xmm6[5],xmm4[6],xmm6[6],xmm4[7],xmm6[7]
	punpcklbw	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3],xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm4, %xmm0
	movdqa	%xmm0, 144(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	punpcklwd	%xmm6, %xmm1            # xmm1 = xmm1[0],xmm6[0],xmm1[1],xmm6[1],xmm1[2],xmm6[2],xmm1[3],xmm6[3]
	paddd	%xmm2, %xmm1
	movdqa	%xmm1, 128(%rsp)                # 16-byte Spill
	movdqu	16(%rcx,%r14), %xmm5
	movdqa	%xmm5, %xmm8
	punpckhbw	%xmm6, %xmm8            # xmm8 = xmm8[8],xmm6[8],xmm8[9],xmm6[9],xmm8[10],xmm6[10],xmm8[11],xmm6[11],xmm8[12],xmm6[12],xmm8[13],xmm6[13],xmm8[14],xmm6[14],xmm8[15],xmm6[15]
	movdqa	%xmm8, %xmm9
	punpckhwd	%xmm6, %xmm9            # xmm9 = xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	movdqu	17(%rcx,%r14), %xmm2
	movdqa	%xmm2, %xmm4
	punpckhbw	%xmm6, %xmm4            # xmm4 = xmm4[8],xmm6[8],xmm4[9],xmm6[9],xmm4[10],xmm6[10],xmm4[11],xmm6[11],xmm4[12],xmm6[12],xmm4[13],xmm6[13],xmm4[14],xmm6[14],xmm4[15],xmm6[15]
	movdqa	%xmm4, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm9, %xmm0
	movdqa	%xmm0, 112(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	punpcklwd	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1],xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	paddd	%xmm8, %xmm4
	punpcklbw	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3],xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqa	%xmm5, %xmm8
	punpckhwd	%xmm6, %xmm8            # xmm8 = xmm8[4],xmm6[4],xmm8[5],xmm6[5],xmm8[6],xmm6[6],xmm8[7],xmm6[7]
	punpcklbw	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3],xmm2[4],xmm6[4],xmm2[5],xmm6[5],xmm2[6],xmm6[6],xmm2[7],xmm6[7]
	movdqa	%xmm2, %xmm0
	punpckhwd	%xmm6, %xmm0            # xmm0 = xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	paddd	%xmm8, %xmm0
	movdqa	%xmm0, 352(%rsp)                # 16-byte Spill
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	punpcklwd	%xmm6, %xmm2            # xmm2 = xmm2[0],xmm6[0],xmm2[1],xmm6[1],xmm2[2],xmm6[2],xmm2[3],xmm6[3]
	paddd	%xmm5, %xmm2
	movdqu	32(%rcx,%r14), %xmm9
	movdqa	%xmm9, %xmm12
	punpckhbw	%xmm6, %xmm12           # xmm12 = xmm12[8],xmm6[8],xmm12[9],xmm6[9],xmm12[10],xmm6[10],xmm12[11],xmm6[11],xmm12[12],xmm6[12],xmm12[13],xmm6[13],xmm12[14],xmm6[14],xmm12[15],xmm6[15]
	movdqa	%xmm12, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	movdqu	33(%rcx,%r14), %xmm5
	movdqa	%xmm5, %xmm8
	punpckhbw	%xmm6, %xmm8            # xmm8 = xmm8[8],xmm6[8],xmm8[9],xmm6[9],xmm8[10],xmm6[10],xmm8[11],xmm6[11],xmm8[12],xmm6[12],xmm8[13],xmm6[13],xmm8[14],xmm6[14],xmm8[15],xmm6[15]
	movdqa	%xmm8, %xmm11
	punpckhwd	%xmm6, %xmm11           # xmm11 = xmm11[4],xmm6[4],xmm11[5],xmm6[5],xmm11[6],xmm6[6],xmm11[7],xmm6[7]
	paddd	%xmm13, %xmm11
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	punpcklwd	%xmm6, %xmm8            # xmm8 = xmm8[0],xmm6[0],xmm8[1],xmm6[1],xmm8[2],xmm6[2],xmm8[3],xmm6[3]
	paddd	%xmm12, %xmm8
	punpcklbw	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3],xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	movdqa	%xmm9, %xmm12
	punpckhwd	%xmm6, %xmm12           # xmm12 = xmm12[4],xmm6[4],xmm12[5],xmm6[5],xmm12[6],xmm6[6],xmm12[7],xmm6[7]
	punpcklbw	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3],xmm5[4],xmm6[4],xmm5[5],xmm6[5],xmm5[6],xmm6[6],xmm5[7],xmm6[7]
	movdqa	%xmm5, %xmm13
	punpckhwd	%xmm6, %xmm13           # xmm13 = xmm13[4],xmm6[4],xmm13[5],xmm6[5],xmm13[6],xmm6[6],xmm13[7],xmm6[7]
	paddd	%xmm12, %xmm13
	punpcklwd	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3]
	punpcklwd	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1],xmm5[2],xmm6[2],xmm5[3],xmm6[3]
	paddd	%xmm9, %xmm5
	movdqu	48(%rcx,%r14), %xmm0
	movdqa	%xmm0, %xmm15
	punpckhbw	%xmm6, %xmm15           # xmm15 = xmm15[8],xmm6[8],xmm15[9],xmm6[9],xmm15[10],xmm6[10],xmm15[11],xmm6[11],xmm15[12],xmm6[12],xmm15[13],xmm6[13],xmm15[14],xmm6[14],xmm15[15],xmm6[15]
	movdqa	%xmm15, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	movdqu	49(%rcx,%r14), %xmm9
	movdqa	%xmm9, %xmm12
	punpckhbw	%xmm6, %xmm12           # xmm12 = xmm12[8],xmm6[8],xmm12[9],xmm6[9],xmm12[10],xmm6[10],xmm12[11],xmm6[11],xmm12[12],xmm6[12],xmm12[13],xmm6[13],xmm12[14],xmm6[14],xmm12[15],xmm6[15]
	movdqa	%xmm12, %xmm14
	punpckhwd	%xmm6, %xmm14           # xmm14 = xmm14[4],xmm6[4],xmm14[5],xmm6[5],xmm14[6],xmm6[6],xmm14[7],xmm6[7]
	paddd	%xmm1, %xmm14
	punpcklwd	%xmm6, %xmm15           # xmm15 = xmm15[0],xmm6[0],xmm15[1],xmm6[1],xmm15[2],xmm6[2],xmm15[3],xmm6[3]
	punpcklwd	%xmm6, %xmm12           # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1],xmm12[2],xmm6[2],xmm12[3],xmm6[3]
	paddd	%xmm15, %xmm12
	punpcklbw	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3],xmm0[4],xmm6[4],xmm0[5],xmm6[5],xmm0[6],xmm6[6],xmm0[7],xmm6[7]
	movdqa	%xmm0, %xmm1
	punpckhwd	%xmm6, %xmm1            # xmm1 = xmm1[4],xmm6[4],xmm1[5],xmm6[5],xmm1[6],xmm6[6],xmm1[7],xmm6[7]
	punpcklbw	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3],xmm9[4],xmm6[4],xmm9[5],xmm6[5],xmm9[6],xmm6[6],xmm9[7],xmm6[7]
	movdqa	%xmm9, %xmm15
	punpckhwd	%xmm6, %xmm15           # xmm15 = xmm15[4],xmm6[4],xmm15[5],xmm6[5],xmm15[6],xmm6[6],xmm15[7],xmm6[7]
	paddd	%xmm1, %xmm15
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	punpcklwd	%xmm6, %xmm9            # xmm9 = xmm9[0],xmm6[0],xmm9[1],xmm6[1],xmm9[2],xmm6[2],xmm9[3],xmm6[3]
	paddd	%xmm0, %xmm9
	movdqa	.LCPI20_0(%rip), %xmm3          # xmm3 = [20,0,20,0,20,0,20,0]
	pmaddwd	%xmm3, %xmm10
	movdqa	.LCPI20_1(%rip), %xmm1          # xmm1 = [16,16,16,16]
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm10, %xmm0
	movdqa	%xmm0, -112(%rsp)               # 16-byte Spill
	pmaddwd	%xmm3, %xmm7
	movdqa	-96(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm0, -96(%rsp)                # 16-byte Spill
	movdqa	144(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm3, %xmm0
	movdqa	-16(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, -16(%rsp)                # 16-byte Spill
	movdqa	128(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm3, %xmm0
	movdqa	192(%rsp), %xmm10               # 16-byte Reload
	paddd	%xmm1, %xmm10
	paddd	%xmm0, %xmm10
	movdqa	112(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm3, %xmm0
	movdqa	(%rsp), %xmm7                   # 16-byte Reload
	paddd	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, (%rsp)                   # 16-byte Spill
	pmaddwd	%xmm3, %xmm4
	movdqa	176(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm1, %xmm7
	paddd	%xmm4, %xmm7
	movdqa	%xmm7, %xmm4
	movdqa	352(%rsp), %xmm0                # 16-byte Reload
	pmaddwd	%xmm3, %xmm0
	movdqa	-48(%rsp), %xmm7                # 16-byte Reload
	paddd	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, -48(%rsp)                # 16-byte Spill
	pmaddwd	%xmm3, %xmm2
	movdqa	-80(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm2, %xmm0
	movdqa	%xmm0, -80(%rsp)                # 16-byte Spill
	pmaddwd	%xmm3, %xmm11
	movdqa	160(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm1, %xmm2
	paddd	%xmm11, %xmm2
	movdqa	%xmm2, %xmm11
	pmaddwd	%xmm3, %xmm8
	movdqa	272(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm1, %xmm2
	paddd	%xmm8, %xmm2
	movdqa	%xmm2, %xmm8
	pmaddwd	%xmm3, %xmm13
	movdqa	256(%rsp), %xmm2                # 16-byte Reload
	paddd	%xmm1, %xmm2
	paddd	%xmm13, %xmm2
	movdqa	%xmm2, %xmm13
	pmaddwd	%xmm3, %xmm5
	movdqa	-32(%rsp), %xmm0                # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm5, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	pmaddwd	%xmm3, %xmm14
	movdqa	96(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm14, %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	pmaddwd	%xmm3, %xmm12
	movdqa	32(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm12, %xmm0
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	pmaddwd	%xmm3, %xmm15
	movdqa	80(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm15, %xmm0
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	pmaddwd	%xmm3, %xmm9
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	paddd	%xmm1, %xmm0
	paddd	%xmm9, %xmm0
	movdqa	%xmm0, 64(%rsp)                 # 16-byte Spill
	movdqa	-112(%rsp), %xmm0               # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -112(%rsp)               # 16-byte Spill
	movdqa	.LCPI20_2(%rip), %xmm1          # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
	movdqa	.LCPI20_3(%rip), %xmm7          # xmm7 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm2, 128(%rsp)                # 16-byte Spill
	movdqa	-96(%rsp), %xmm0                # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -96(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm12
	pcmpgtd	%xmm0, %xmm12
	movdqa	-16(%rsp), %xmm0                # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm2, 112(%rsp)                # 16-byte Spill
	movdqa	%xmm10, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, 192(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movdqa	(%rsp), %xmm0                   # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, (%rsp)                   # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm2, 144(%rsp)                # 16-byte Spill
	movdqa	%xmm4, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, 176(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm10
	pcmpgtd	%xmm0, %xmm10
	movdqa	-48(%rsp), %xmm0                # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm14
	pcmpgtd	%xmm0, %xmm14
	movdqa	-80(%rsp), %xmm0                # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -80(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm11, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, 160(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	%xmm2, 352(%rsp)                # 16-byte Spill
	movdqa	%xmm8, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, 272(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movdqa	%xmm13, %xmm0
	psrad	$5, %xmm0
	movdqa	%xmm0, 256(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm15
	pcmpgtd	%xmm0, %xmm15
	movdqa	-32(%rsp), %xmm0                # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm3
	pcmpgtd	%xmm0, %xmm3
	movdqa	96(%rsp), %xmm0                 # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, 96(%rsp)                 # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm13
	pcmpgtd	%xmm0, %xmm13
	movdqa	32(%rsp), %xmm0                 # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm4
	pcmpgtd	%xmm0, %xmm4
	movdqa	80(%rsp), %xmm0                 # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, 80(%rsp)                 # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm11
	pcmpgtd	%xmm0, %xmm11
	movdqa	64(%rsp), %xmm0                 # 16-byte Reload
	psrad	$5, %xmm0
	movdqa	%xmm0, 64(%rsp)                 # 16-byte Spill
	pxor	%xmm1, %xmm0
	movdqa	%xmm7, %xmm2
	pcmpgtd	%xmm0, %xmm2
	movdqa	192(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm9, %xmm1
	pandn	%xmm0, %xmm9
	por	%xmm1, %xmm9
	movdqa	-16(%rsp), %xmm7                # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	112(%rsp), %xmm1                # 16-byte Reload
	pand	%xmm1, %xmm7
	pandn	%xmm0, %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm1, 112(%rsp)                # 16-byte Spill
	movdqa	-96(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm12, %xmm1
	pandn	%xmm0, %xmm12
	por	%xmm1, %xmm12
	movdqa	-112(%rsp), %xmm7               # 16-byte Reload
	movdqa	%xmm7, %xmm1
	pcmpgtd	%xmm6, %xmm1
	movdqa	128(%rsp), %xmm0                # 16-byte Reload
	pand	%xmm0, %xmm7
	pandn	%xmm1, %xmm0
	por	%xmm7, %xmm0
	movdqa	%xmm0, 128(%rsp)                # 16-byte Spill
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm5, %xmm1
	pandn	%xmm0, %xmm5
	por	%xmm1, %xmm5
	movdqa	-48(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm14, %xmm1
	pandn	%xmm0, %xmm14
	por	%xmm1, %xmm14
	movdqa	176(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm10, %xmm1
	pandn	%xmm0, %xmm10
	por	%xmm1, %xmm10
	movdqa	(%rsp), %xmm7                   # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	144(%rsp), %xmm1                # 16-byte Reload
	pand	%xmm1, %xmm7
	pandn	%xmm0, %xmm1
	por	%xmm7, %xmm1
	movdqa	%xmm1, 144(%rsp)                # 16-byte Spill
	movdqa	-32(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm3, %xmm1
	pandn	%xmm0, %xmm3
	por	%xmm1, %xmm3
	movdqa	256(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm15, %xmm1
	pandn	%xmm0, %xmm15
	por	%xmm1, %xmm15
	movdqa	272(%rsp), %xmm1                # 16-byte Reload
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm8, %xmm1
	pandn	%xmm0, %xmm8
	por	%xmm1, %xmm8
	movdqa	160(%rsp), %xmm7                # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	352(%rsp), %xmm1                # 16-byte Reload
	pand	%xmm1, %xmm7
	pandn	%xmm0, %xmm1
	por	%xmm7, %xmm1
	movdqa	64(%rsp), %xmm7                 # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm2, %xmm7
	pandn	%xmm0, %xmm2
	por	%xmm7, %xmm2
	movdqa	80(%rsp), %xmm7                 # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm11, %xmm7
	pandn	%xmm0, %xmm11
	por	%xmm7, %xmm11
	movdqa	32(%rsp), %xmm7                 # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm4, %xmm7
	pandn	%xmm0, %xmm4
	por	%xmm7, %xmm4
	movdqa	96(%rsp), %xmm7                 # 16-byte Reload
	movdqa	%xmm7, %xmm0
	pcmpgtd	%xmm6, %xmm0
	pand	%xmm13, %xmm7
	pandn	%xmm0, %xmm13
	por	%xmm7, %xmm13
	movdqa	128(%rsp), %xmm0                # 16-byte Reload
	pand	.LCPI20_4(%rip), %xmm0
	pand	.LCPI20_4(%rip), %xmm12
	packuswb	%xmm0, %xmm12
	movdqa	112(%rsp), %xmm0                # 16-byte Reload
	pand	.LCPI20_4(%rip), %xmm0
	pand	.LCPI20_4(%rip), %xmm9
	packuswb	%xmm0, %xmm9
	packuswb	%xmm12, %xmm9
	movdqa	144(%rsp), %xmm0                # 16-byte Reload
	pand	.LCPI20_4(%rip), %xmm0
	pand	.LCPI20_4(%rip), %xmm10
	packuswb	%xmm0, %xmm10
	pand	.LCPI20_4(%rip), %xmm14
	pand	.LCPI20_4(%rip), %xmm5
	packuswb	%xmm14, %xmm5
	movdqa	.LCPI20_4(%rip), %xmm14         # xmm14 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	packuswb	%xmm10, %xmm5
	pand	%xmm14, %xmm1
	pand	%xmm14, %xmm8
	packuswb	%xmm1, %xmm8
	pand	%xmm14, %xmm15
	pand	%xmm14, %xmm3
	packuswb	%xmm15, %xmm3
	packuswb	%xmm8, %xmm3
	pand	%xmm14, %xmm13
	pand	%xmm14, %xmm4
	packuswb	%xmm13, %xmm4
	pand	%xmm14, %xmm11
	pand	%xmm14, %xmm2
	packuswb	%xmm11, %xmm2
	pxor	%xmm15, %xmm15
	packuswb	%xmm4, %xmm2
	movdqu	%xmm9, (%r8,%r14)
	movdqu	%xmm5, 16(%r8,%r14)
	movdqu	%xmm3, 32(%r8,%r14)
	movdqu	%xmm2, 48(%r8,%r14)
	addq	$64, %r14
	cmpq	%r14, %rax
	jne	.LBB20_21
# %bb.22:                               # %middle.block
                                        #   in Loop: Header=BB20_2 Depth=1
	cmpl	%edi, %eax
	movdqa	.LCPI20_0(%rip), %xmm6          # xmm6 = [20,0,20,0,20,0,20,0]
	movdqa	.LCPI20_1(%rip), %xmm7          # xmm7 = [16,16,16,16]
	movdqa	.LCPI20_2(%rip), %xmm8          # xmm8 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI20_3(%rip), %xmm9          # xmm9 = [2147483904,2147483904,2147483904,2147483904]
	je	.LBB20_27
# %bb.23:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rdi, %rax
	movq	296(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %r15
	testb	$56, %al
	je	.LBB20_17
.LBB20_24:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rsi, %rdi
	movq	376(%rsp), %rsi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB20_25:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-2(%rcx,%r14), %xmm2            # xmm2 = mem[0],zero
	punpcklbw	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3],xmm2[4],xmm15[4],xmm2[5],xmm15[5],xmm2[6],xmm15[6],xmm2[7],xmm15[7]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm15, %xmm3           # xmm3 = xmm3[4],xmm15[4],xmm3[5],xmm15[5],xmm3[6],xmm15[6],xmm3[7],xmm15[7]
	punpcklwd	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3]
	movq	3(%rcx,%r14), %xmm1             # xmm1 = mem[0],zero
	punpcklbw	%xmm15, %xmm1           # xmm1 = xmm1[0],xmm15[0],xmm1[1],xmm15[1],xmm1[2],xmm15[2],xmm1[3],xmm15[3],xmm1[4],xmm15[4],xmm1[5],xmm15[5],xmm1[6],xmm15[6],xmm1[7],xmm15[7]
	movdqa	%xmm1, %xmm0
	punpckhwd	%xmm15, %xmm0           # xmm0 = xmm0[4],xmm15[4],xmm0[5],xmm15[5],xmm0[6],xmm15[6],xmm0[7],xmm15[7]
	paddd	%xmm3, %xmm0
	punpcklwd	%xmm15, %xmm1           # xmm1 = xmm1[0],xmm15[0],xmm1[1],xmm15[1],xmm1[2],xmm15[2],xmm1[3],xmm15[3]
	paddd	%xmm2, %xmm1
	movq	-1(%rcx,%r14), %xmm2            # xmm2 = mem[0],zero
	punpcklbw	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3],xmm2[4],xmm15[4],xmm2[5],xmm15[5],xmm2[6],xmm15[6],xmm2[7],xmm15[7]
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm15, %xmm3           # xmm3 = xmm3[0],xmm15[0],xmm3[1],xmm15[1],xmm3[2],xmm15[2],xmm3[3],xmm15[3]
	punpckhwd	%xmm15, %xmm2           # xmm2 = xmm2[4],xmm15[4],xmm2[5],xmm15[5],xmm2[6],xmm15[6],xmm2[7],xmm15[7]
	movq	2(%rcx,%r14), %xmm4             # xmm4 = mem[0],zero
	punpcklbw	%xmm15, %xmm4           # xmm4 = xmm4[0],xmm15[0],xmm4[1],xmm15[1],xmm4[2],xmm15[2],xmm4[3],xmm15[3],xmm4[4],xmm15[4],xmm4[5],xmm15[5],xmm4[6],xmm15[6],xmm4[7],xmm15[7]
	movdqa	%xmm4, %xmm5
	punpcklwd	%xmm15, %xmm5           # xmm5 = xmm5[0],xmm15[0],xmm5[1],xmm15[1],xmm5[2],xmm15[2],xmm5[3],xmm15[3]
	paddd	%xmm3, %xmm5
	punpckhwd	%xmm15, %xmm4           # xmm4 = xmm4[4],xmm15[4],xmm4[5],xmm15[5],xmm4[6],xmm15[6],xmm4[7],xmm15[7]
	paddd	%xmm2, %xmm4
	movdqa	%xmm5, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm5, %xmm2
	psubd	%xmm2, %xmm1
	movdqa	%xmm4, %xmm2
	pslld	$2, %xmm2
	paddd	%xmm4, %xmm2
	psubd	%xmm2, %xmm0
	movq	(%rcx,%r14), %xmm2              # xmm2 = mem[0],zero
	punpcklbw	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3],xmm2[4],xmm15[4],xmm2[5],xmm15[5],xmm2[6],xmm15[6],xmm2[7],xmm15[7]
	movdqa	%xmm2, %xmm3
	punpckhwd	%xmm15, %xmm3           # xmm3 = xmm3[4],xmm15[4],xmm3[5],xmm15[5],xmm3[6],xmm15[6],xmm3[7],xmm15[7]
	punpcklwd	%xmm15, %xmm2           # xmm2 = xmm2[0],xmm15[0],xmm2[1],xmm15[1],xmm2[2],xmm15[2],xmm2[3],xmm15[3]
	movq	1(%rcx,%r14), %xmm4             # xmm4 = mem[0],zero
	punpcklbw	%xmm15, %xmm4           # xmm4 = xmm4[0],xmm15[0],xmm4[1],xmm15[1],xmm4[2],xmm15[2],xmm4[3],xmm15[3],xmm4[4],xmm15[4],xmm4[5],xmm15[5],xmm4[6],xmm15[6],xmm4[7],xmm15[7]
	movdqa	%xmm4, %xmm5
	punpckhwd	%xmm15, %xmm5           # xmm5 = xmm5[4],xmm15[4],xmm5[5],xmm15[5],xmm5[6],xmm15[6],xmm5[7],xmm15[7]
	paddd	%xmm3, %xmm5
	punpcklwd	%xmm15, %xmm4           # xmm4 = xmm4[0],xmm15[0],xmm4[1],xmm15[1],xmm4[2],xmm15[2],xmm4[3],xmm15[3]
	paddd	%xmm2, %xmm4
	pmaddwd	%xmm6, %xmm5
	pmaddwd	%xmm6, %xmm4
	paddd	%xmm7, %xmm0
	paddd	%xmm5, %xmm0
	paddd	%xmm7, %xmm1
	paddd	%xmm4, %xmm1
	psrad	$5, %xmm1
	psrad	$5, %xmm0
	movdqa	%xmm0, %xmm2
	pxor	%xmm8, %xmm2
	movdqa	%xmm9, %xmm3
	pcmpgtd	%xmm2, %xmm3
	movdqa	%xmm1, %xmm2
	pxor	%xmm8, %xmm2
	movdqa	%xmm9, %xmm4
	pcmpgtd	%xmm2, %xmm4
	movdqa	%xmm0, %xmm2
	pcmpgtd	%xmm15, %xmm2
	movdqa	%xmm1, %xmm5
	pcmpgtd	%xmm15, %xmm5
	pand	%xmm4, %xmm1
	pandn	%xmm5, %xmm4
	por	%xmm1, %xmm4
	pand	%xmm3, %xmm0
	pandn	%xmm2, %xmm3
	por	%xmm0, %xmm3
	pand	%xmm14, %xmm3
	pand	%xmm14, %xmm4
	packuswb	%xmm3, %xmm4
	packuswb	%xmm4, %xmm4
	movq	%xmm4, (%r8,%r14)
	addq	$8, %r14
	cmpq	%r14, %rsi
	jne	.LBB20_25
# %bb.26:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB20_2 Depth=1
	movq	%rsi, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	%eax, %esi
	movq	%rdi, %rsi
	je	.LBB20_27
	.p2align	4, 0x90
.LBB20_17:                              # %for.body94
                                        #   Parent Loop BB20_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-2(%rcx,%r15), %edi
	movzbl	3(%rcx,%r15), %r8d
	addl	%edi, %r8d
	movzbl	-1(%rcx,%r15), %edi
	movzbl	2(%rcx,%r15), %r14d
	addl	%edi, %r14d
	leal	(%r14,%r14,4), %edi
	subl	%edi, %r8d
	movzbl	(%rcx,%r15), %edi
	movzbl	1(%rcx,%r15), %r14d
	addl	%edi, %r14d
	leal	(%r14,%r14,4), %edi
	leal	(%r8,%rdi,4), %edi
	addl	$16, %edi
	sarl	$5, %edi
	testl	%edi, %edi
	setg	%r8b
	negb	%r8b
	cmpl	$256, %edi                      # imm = 0x100
	movzbl	%r8b, %r8d
	cmovbl	%edi, %r8d
	movq	-56(%rsp), %rdi                 # 8-byte Reload
	movb	%r8b, (%rdi,%r15)
	movq	-56(%rsp), %r8                  # 8-byte Reload
	leaq	1(%r15), %rdi
	movq	%rdi, %r15
	cmpq	%rdi, %rax
	jne	.LBB20_17
	jmp	.LBB20_27
.LBB20_28:                              # %for.cond.cleanup
	addq	$408, %rsp                      # imm = 0x198
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
.Lfunc_end20:
	.size	hpel_filter, .Lfunc_end20-hpel_filter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function prefetch_fenc_null
	.type	prefetch_fenc_null,@function
prefetch_fenc_null:                     # @prefetch_fenc_null
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end21:
	.size	prefetch_fenc_null, .Lfunc_end21-prefetch_fenc_null
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function prefetch_ref_null
	.type	prefetch_ref_null,@function
prefetch_ref_null:                      # @prefetch_ref_null
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end22:
	.size	prefetch_ref_null, .Lfunc_end22-prefetch_ref_null
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function memzero_aligned
	.type	memzero_aligned,@function
memzero_aligned:                        # @memzero_aligned
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rdx
	xorl	%esi, %esi
	jmp	memset@PLT                      # TAILCALL
.Lfunc_end23:
	.size	memzero_aligned, .Lfunc_end23-memzero_aligned
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function frame_init_lowres_core
	.type	frame_init_lowres_core,@function
frame_init_lowres_core:                 # @frame_init_lowres_core
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
	movl	72(%rsp), %r10d
	testl	%r10d, %r10d
	jle	.LBB24_9
# %bb.1:                                # %for.body.lr.ph
	cmpl	$0, 64(%rsp)
	jle	.LBB24_9
# %bb.2:                                # %for.body.us.preheader
	movl	56(%rsp), %eax
	movslq	%r9d, %r9
	leal	(%r9,%r9), %ebx
	movq	%r9, %r11
	movslq	%ebx, %r12
	movq	%r12, -40(%rsp)                 # 8-byte Spill
	movslq	%eax, %r14
	movq	%r14, -64(%rsp)                 # 8-byte Spill
	movl	64(%rsp), %r9d
	leal	-1(%r10), %r15d
	imulq	%r15, %r14
	addq	%r9, %r14
	leaq	(%rsi,%r14), %rax
	leaq	(%rdx,%r14), %r10
	movq	%rdx, %rbp
	movq	%rsi, %r13
	leaq	(%rcx,%r14), %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rdx
	addq	%r8, %r14
	leaq	(%rdi,%r11,2), %rsi
	movq	%rsi, -96(%rsp)                 # 8-byte Spill
	imulq	%r12, %r15
	leaq	(%r15,%r9,2), %r9
	leaq	(%r9,%r11,2), %rsi
	movq	%r11, %r12
	cmpq	%r13, %r10
	seta	%r11b
	leaq	(%rdi,%rsi), %r15
	incq	%r15
	movq	%r15, -88(%rsp)                 # 8-byte Spill
	cmpq	%rbp, %rax
	movq	%rbp, %rcx
	seta	%sil
	andb	%r11b, %sil
	movb	%sil, -105(%rsp)                # 1-byte Spill
	cmpq	%r13, %rbx
	seta	%sil
	leaq	(%rdi,%r9), %r11
	cmpq	%rdx, %rax
	seta	%bpl
	leaq	1(%r12,%r11), %rbx
	movq	%rbx, -16(%rsp)                 # 8-byte Spill
	movq	%r12, %r11
	movq	%r12, -56(%rsp)                 # 8-byte Spill
	andb	%sil, %bpl
	movb	%bpl, -97(%rsp)                 # 1-byte Spill
	cmpl	$0, -64(%rsp)                   # 4-byte Folded Reload
	sets	-48(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %r14
	seta	%sil
	cmpq	%r8, %rax
	seta	%r12b
	andb	%sil, %r12b
	cmpq	%r13, %r15
	movq	%r13, -80(%rsp)                 # 8-byte Spill
	seta	%sil
	cmpq	%rax, -96(%rsp)                 # 8-byte Folded Reload
	setb	%bpl
	andb	%sil, %bpl
	movb	%bpl, -98(%rsp)                 # 1-byte Spill
	cmpq	%r13, %rbx
	seta	%bpl
	addq	%rdi, %r11
	cmpq	%rax, %r11
	movq	%r8, %rsi
	movq	%r11, %r15
	movq	%r11, -24(%rsp)                 # 8-byte Spill
	setb	%r11b
	andb	%bpl, %r11b
	movb	%r11b, -99(%rsp)                # 1-byte Spill
	leaq	(%rdi,%r9), %r8
	incq	%r8
	cmpq	%r13, %r8
	movq	%r8, %r13
	seta	%r8b
	cmpq	%rdi, %rax
	seta	%al
	andb	%r8b, %al
	movb	%al, -100(%rsp)                 # 1-byte Spill
	movq	-8(%rsp), %rbx                  # 8-byte Reload
	cmpq	%rcx, %rbx
	seta	%al
	cmpq	%rdx, %r10
	seta	%r9b
	andb	%al, %r9b
	cmpq	%rcx, %r14
	seta	%al
	cmpq	%rsi, %r10
	seta	%r8b
	andb	%al, %r8b
	movb	%r8b, -101(%rsp)                # 1-byte Spill
	movq	-88(%rsp), %r11                 # 8-byte Reload
	cmpq	%rcx, %r11
	seta	%al
	movq	-96(%rsp), %r8                  # 8-byte Reload
	cmpq	%r10, %r8
	setb	%bpl
	andb	%al, %bpl
	movb	%bpl, -104(%rsp)                # 1-byte Spill
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	cmpq	%rcx, %rbp
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	seta	%al
	cmpq	%r10, %r15
	setb	%r15b
	andb	%al, %r15b
	movb	%r15b, -102(%rsp)               # 1-byte Spill
	movq	%r13, -32(%rsp)                 # 8-byte Spill
	cmpq	%rcx, %r13
	seta	%al
	cmpq	%rdi, %r10
	seta	%r10b
	andb	%al, %r10b
	cmpq	%rdx, %r14
	seta	%al
	movq	%rbx, %r15
	cmpq	%rsi, %rbx
	seta	%bl
	andb	%al, %bl
	movb	%bl, -103(%rsp)                 # 1-byte Spill
	cmpq	%rdx, %r11
	seta	%al
	cmpq	%r15, %r8
	setb	%r11b
	andb	%al, %r11b
	movq	%rbp, %rbx
	cmpq	%rdx, %rbp
	seta	%cl
	movq	-24(%rsp), %rax                 # 8-byte Reload
	cmpq	%r15, %rax
	setb	%bpl
	andb	%cl, %bpl
	cmpq	%rdx, %r13
	seta	%cl
	cmpq	%rdi, %r15
	seta	%r15b
	andb	%cl, %r15b
	cmpq	%rsi, -88(%rsp)                 # 8-byte Folded Reload
	seta	%cl
	cmpq	%r14, %r8
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	setb	%r13b
	andb	%cl, %r13b
	cmpq	%rsi, %rbx
	seta	%r8b
	cmpq	%r14, %rax
	setb	%cl
	andb	%r8b, %cl
	cmpq	%rsi, -32(%rsp)                 # 8-byte Folded Reload
	seta	%r8b
	cmpq	%rdi, %r14
	seta	%al
	andb	%r8b, %al
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, %r8d
	orl	-64(%rsp), %r8d                 # 4-byte Folded Reload
	movq	%rsi, %rdx
	sets	%bl
	orb	-105(%rsp), %r12b               # 1-byte Folded Reload
	movzbl	-97(%rsp), %r8d                 # 1-byte Folded Reload
	orb	%bl, %r8b
	orb	%r8b, %r12b
	movzbl	-99(%rsp), %r8d                 # 1-byte Folded Reload
	orb	-98(%rsp), %r8b                 # 1-byte Folded Reload
	orb	-100(%rsp), %r9b                # 1-byte Folded Reload
	orb	%r8b, %r9b
	orb	%r12b, %r9b
	movzbl	-104(%rsp), %esi                # 1-byte Folded Reload
	orb	-101(%rsp), %sil                # 1-byte Folded Reload
	orb	-102(%rsp), %r10b               # 1-byte Folded Reload
	orb	%sil, %r10b
	orb	-103(%rsp), %r11b               # 1-byte Folded Reload
	orb	%bpl, %r15b
	orb	%r11b, %r15b
	orb	%r10b, %r15b
	orb	%r9b, %r15b
	orb	%r13b, %cl
	movl	72(%rsp), %r13d
	movq	-80(%rsp), %r14                 # 8-byte Reload
	movq	-72(%rsp), %r11                 # 8-byte Reload
	movq	-96(%rsp), %r8                  # 8-byte Reload
	orb	-48(%rsp), %al                  # 1-byte Folded Reload
	orb	%bl, %al
	movl	64(%rsp), %ebx
	movq	%rdx, %r9
	orb	%cl, %al
	orb	%r15b, %al
	movb	%al, -105(%rsp)                 # 1-byte Spill
	movl	%ebx, %eax
	andl	$2147483644, %eax               # imm = 0x7FFFFFFC
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	-56(%rsp), %rax                 # 8-byte Reload
	leaq	(%rdi,%rax,2), %r15
	addq	$8, %r15
	leaq	(%rdi,%rax), %r12
	addq	$8, %r12
	leaq	(%rdi,%rax,2), %rsi
	addq	$2, %rsi
	leaq	(%rdi,%rax), %r10
	addq	$2, %r10
	xorl	%ecx, %ecx
	jmp	.LBB24_3
	.p2align	4, 0x90
.LBB24_8:                               # %for.cond3.for.cond.cleanup5_crit_edge.us
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	-40(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rdi
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %r14
	addq	%rcx, %r11
	addq	%rcx, %r8
	addq	%rcx, %r9
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	incl	%ecx
	addq	%rax, %r15
	addq	%rax, %r12
	addq	%rax, %rsi
	addq	%rax, %r10
	cmpl	%r13d, %ecx
	je	.LBB24_9
.LBB24_3:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_5 Depth 2
                                        #     Child Loop BB24_7 Depth 2
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	cmpl	$4, 64(%rsp)
	setb	%al
	orb	-105(%rsp), %al                 # 1-byte Folded Reload
	xorl	%ebp, %ebp
	testb	$1, %al
	jne	.LBB24_7
# %bb.4:                                # %vector.body.preheader
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	%r8, -96(%rsp)                  # 8-byte Spill
	movq	%r11, -72(%rsp)                 # 8-byte Spill
	movq	%r14, -80(%rsp)                 # 8-byte Spill
	movq	%r9, -88(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB24_5:                               # %vector.body
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rbp,2), %eax
	movzbl	2(%rdi,%rbp,2), %r9d
	movzbl	4(%rdi,%rbp,2), %r11d
	movzbl	6(%rdi,%rbp,2), %ebx
	movzbl	-8(%r12,%rbp,2), %r14d
	movzbl	-6(%r12,%rbp,2), %r13d
	movzbl	-4(%r12,%rbp,2), %r8d
	movzbl	-2(%r12,%rbp,2), %ecx
	addl	%eax, %r14d
	incl	%r14d
	shrl	%r14d
	leal	(%r9,%r13), %eax
	incl	%eax
	shrl	%eax
	leal	(%r11,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%rbx,%rcx), %r11d
	incl	%r11d
	shrl	%r11d
	movzbl	1(%rdi,%rbp,2), %ecx
	movzbl	3(%rdi,%rbp,2), %r8d
	movzbl	5(%rdi,%rbp,2), %ebx
	movzbl	7(%rdi,%rbp,2), %edx
	movzbl	-7(%r12,%rbp,2), %r13d
	leal	1(%rcx,%r13), %ecx
	movzbl	-5(%r12,%rbp,2), %r13d
	leal	1(%r8,%r13), %r8d
	movzbl	-3(%r12,%rbp,2), %r13d
	addl	%ebx, %r13d
	incl	%r13d
	movzbl	-1(%r12,%rbp,2), %ebx
	shrl	%ecx
	shrl	%r8d
	shrl	%r13d
	addl	%edx, %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%cl, %ecx
	movzbl	%r14b, %edx
	leal	(%rdx,%rcx), %r14d
	incl	%r14d
	shrl	%r14d
	movzbl	%r8b, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	%r13b, %ecx
	movzbl	%r9b, %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%bl, %edx
	movzbl	%r11b, %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movq	-80(%rsp), %r8                  # 8-byte Reload
	movb	%r14b, (%r8,%rbp)
	movb	%al, 1(%r8,%rbp)
	movb	%cl, 2(%r8,%rbp)
	movb	%dl, 3(%r8,%rbp)
	movzbl	1(%rdi,%rbp,2), %eax
	movzbl	3(%rdi,%rbp,2), %ecx
	movzbl	5(%rdi,%rbp,2), %edx
	movzbl	7(%rdi,%rbp,2), %r8d
	movzbl	-7(%r12,%rbp,2), %r9d
	movzbl	-5(%r12,%rbp,2), %r11d
	movzbl	-3(%r12,%rbp,2), %ebx
	movzbl	-1(%r12,%rbp,2), %r13d
	leal	(%rax,%r9), %r14d
	incl	%r14d
	shrl	%r14d
	leal	(%rcx,%r11), %eax
	incl	%eax
	shrl	%eax
	leal	(%rdx,%rbx), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%r8,%r13), %r11d
	incl	%r11d
	shrl	%r11d
	movzbl	2(%rdi,%rbp,2), %ecx
	movzbl	4(%rdi,%rbp,2), %edx
	movzbl	6(%rdi,%rbp,2), %r8d
	movzbl	8(%rdi,%rbp,2), %ebx
	movzbl	-6(%r12,%rbp,2), %r13d
	leal	1(%rcx,%r13), %ecx
	movzbl	-4(%r12,%rbp,2), %r13d
	leal	1(%rdx,%r13), %edx
	movzbl	-2(%r12,%rbp,2), %r13d
	addl	%r8d, %r13d
	incl	%r13d
	movzbl	(%r12,%rbp,2), %r8d
	shrl	%ecx
	shrl	%edx
	shrl	%r13d
	addl	%r8d, %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%cl, %ecx
	movzbl	%r14b, %r8d
	leal	(%r8,%rcx), %r14d
	incl	%r14d
	shrl	%r14d
	movzbl	%dl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	%r13b, %ecx
	movzbl	%r9b, %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%bl, %edx
	movzbl	%r11b, %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movq	-72(%rsp), %r8                  # 8-byte Reload
	movb	%r14b, (%r8,%rbp)
	movb	%al, 1(%r8,%rbp)
	movb	%cl, 2(%r8,%rbp)
	movb	%dl, 3(%r8,%rbp)
	movzbl	-8(%r12,%rbp,2), %eax
	movzbl	-6(%r12,%rbp,2), %ecx
	movzbl	-4(%r12,%rbp,2), %edx
	movzbl	-2(%r12,%rbp,2), %r8d
	movzbl	-8(%r15,%rbp,2), %r9d
	movzbl	-6(%r15,%rbp,2), %r11d
	movzbl	-4(%r15,%rbp,2), %ebx
	movzbl	-2(%r15,%rbp,2), %r13d
	leal	(%rax,%r9), %r14d
	incl	%r14d
	shrl	%r14d
	leal	(%rcx,%r11), %eax
	incl	%eax
	shrl	%eax
	leal	(%rdx,%rbx), %r9d
	incl	%r9d
	shrl	%r9d
	leal	(%r8,%r13), %r11d
	incl	%r11d
	shrl	%r11d
	movzbl	-7(%r12,%rbp,2), %ecx
	movzbl	-5(%r12,%rbp,2), %edx
	movzbl	-3(%r12,%rbp,2), %r8d
	movzbl	-1(%r12,%rbp,2), %ebx
	movzbl	-7(%r15,%rbp,2), %r13d
	leal	1(%rcx,%r13), %ecx
	movzbl	-5(%r15,%rbp,2), %r13d
	leal	1(%rdx,%r13), %edx
	movzbl	-3(%r15,%rbp,2), %r13d
	addl	%r8d, %r13d
	incl	%r13d
	movzbl	-1(%r15,%rbp,2), %r8d
	shrl	%ecx
	shrl	%edx
	shrl	%r13d
	addl	%r8d, %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%cl, %ecx
	movzbl	%r14b, %r8d
	leal	(%r8,%rcx), %r14d
	incl	%r14d
	shrl	%r14d
	movzbl	%dl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	%r13b, %ecx
	movzbl	%r9b, %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%bl, %edx
	movzbl	%r11b, %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%edx
	movq	-96(%rsp), %r8                  # 8-byte Reload
	movb	%r14b, (%r8,%rbp)
	movb	%al, 1(%r8,%rbp)
	movb	%cl, 2(%r8,%rbp)
	movb	%dl, 3(%r8,%rbp)
	movzbl	-7(%r12,%rbp,2), %eax
	movzbl	-5(%r12,%rbp,2), %ecx
	movzbl	-3(%r12,%rbp,2), %edx
	movzbl	-1(%r12,%rbp,2), %r8d
	movzbl	-7(%r15,%rbp,2), %r9d
	movzbl	-5(%r15,%rbp,2), %r11d
	movzbl	-3(%r15,%rbp,2), %ebx
	movzbl	-1(%r15,%rbp,2), %r13d
	leal	1(%rax,%r9), %r14d
	leal	1(%rcx,%r11), %eax
	leal	1(%rdx,%rbx), %r9d
	leal	1(%r8,%r13), %r11d
	movzbl	-6(%r12,%rbp,2), %ecx
	movzbl	-4(%r12,%rbp,2), %edx
	movzbl	-2(%r12,%rbp,2), %r8d
	movzbl	(%r12,%rbp,2), %ebx
	movzbl	-6(%r15,%rbp,2), %r13d
	leal	1(%rcx,%r13), %ecx
	movzbl	-4(%r15,%rbp,2), %r13d
	leal	1(%rdx,%r13), %edx
	movzbl	-2(%r15,%rbp,2), %r13d
	addl	%r8d, %r13d
	incl	%r13d
	movzbl	(%r15,%rbp,2), %r8d
	addl	%r8d, %ebx
	incl	%ebx
	shrl	%r14d
	shrl	%ecx
	movzbl	%cl, %ecx
	movzbl	%r14b, %r8d
	leal	(%r8,%rcx), %r14d
	incl	%r14d
	shrl	%eax
	shrl	%edx
	movzbl	%dl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%r9d
	shrl	%r13d
	movzbl	%r13b, %ecx
	movzbl	%r9b, %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%r11d
	shrl	%ebx
	movzbl	%bl, %edx
	movq	-88(%rsp), %r9                  # 8-byte Reload
	movzbl	%r11b, %r8d
	addl	%r8d, %edx
	incl	%edx
	shrl	%r14d
	movb	%r14b, (%r9,%rbp)
	shrl	%eax
	movb	%al, 1(%r9,%rbp)
	shrl	%ecx
	movb	%cl, 2(%r9,%rbp)
	movq	-48(%rsp), %rax                 # 8-byte Reload
	shrl	%edx
	movb	%dl, 3(%r9,%rbp)
	addq	$4, %rbp
	cmpq	%rbp, %rax
	jne	.LBB24_5
# %bb.6:                                # %middle.block
                                        #   in Loop: Header=BB24_3 Depth=1
	movq	%rax, %rbp
	movl	64(%rsp), %ebx
	cmpl	%ebx, %eax
	movq	-96(%rsp), %r8                  # 8-byte Reload
	movq	-72(%rsp), %r11                 # 8-byte Reload
	movq	-80(%rsp), %r14                 # 8-byte Reload
	movl	72(%rsp), %r13d
	je	.LBB24_8
	.p2align	4, 0x90
.LBB24_7:                               # %for.body6.us
                                        #   Parent Loop BB24_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rbp,2), %eax
	movzbl	-2(%r10,%rbp,2), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	1(%rdi,%rbp,2), %ecx
	movzbl	-1(%r10,%rbp,2), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movb	%al, (%r14,%rbp)
	movzbl	1(%rdi,%rbp,2), %eax
	movzbl	-1(%r10,%rbp,2), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	2(%rdi,%rbp,2), %ecx
	movzbl	(%r10,%rbp,2), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movb	%al, (%r11,%rbp)
	movzbl	-2(%r10,%rbp,2), %eax
	movzbl	-2(%rsi,%rbp,2), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	-1(%r10,%rbp,2), %ecx
	movzbl	-1(%rsi,%rbp,2), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movb	%al, (%r8,%rbp)
	movzbl	-1(%r10,%rbp,2), %eax
	movzbl	-1(%rsi,%rbp,2), %ecx
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movzbl	(%r10,%rbp,2), %ecx
	movzbl	(%rsi,%rbp,2), %edx
	addl	%edx, %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ecx
	movzbl	%al, %eax
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movb	%al, (%r9,%rbp)
	incq	%rbp
	cmpq	%rbp, %rbx
	jne	.LBB24_7
	jmp	.LBB24_8
.LBB24_9:                               # %for.cond.cleanup
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
	.size	frame_init_lowres_core, .Lfunc_end24-frame_init_lowres_core
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function integral_init4h
	.type	integral_init4h,@function
integral_init4h:                        # @integral_init4h
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$5, %edx
	jl	.LBB25_5
# %bb.1:                                # %for.body.preheader
	movd	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm1, %xmm1
	punpcklbw	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	paddw	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$16, %xmm0
	paddw	%xmm1, %xmm0
	movd	%xmm0, %ecx
	movl	%edx, %eax
	addl	$-4, %edx
	cmpl	$1, %edx
	jne	.LBB25_6
# %bb.2:
	xorl	%r8d, %r8d
	testb	$1, %dl
	jne	.LBB25_4
	jmp	.LBB25_5
.LBB25_6:                               # %for.body.preheader.new
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	leaq	2(%rdi), %r10
	movq	%r10, %r11
	subq	%rax, %r11
	subq	%rax, %r11
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB25_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	addw	-2(%r11,%r8,2), %bx
	movw	%bx, -2(%r10,%r8,2)
	movzbl	4(%rsi,%r8), %ebx
	addl	%ecx, %ebx
	movzbl	(%rsi,%r8), %ecx
	subl	%ecx, %ebx
	movzwl	(%r11,%r8,2), %ecx
	addw	%bx, %cx
	movw	%cx, (%r10,%r8,2)
	movzbl	5(%rsi,%r8), %ecx
	movzbl	1(%rsi,%r8), %ebp
	addl	%ebx, %ecx
	subl	%ebp, %ecx
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB25_7
# %bb.8:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	testb	$1, %dl
	je	.LBB25_5
.LBB25_4:                               # %for.body.epil
	movq	%r8, %rdx
	subq	%rax, %rdx
	addw	(%rdi,%rdx,2), %cx
	movw	%cx, (%rdi,%r8,2)
.LBB25_5:                               # %for.cond.cleanup
	retq
.Lfunc_end25:
	.size	integral_init4h, .Lfunc_end25-integral_init4h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function integral_init8h
	.type	integral_init8h,@function
integral_init8h:                        # @integral_init8h
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$9, %edx
	jl	.LBB26_5
# %bb.1:                                # %for.body.preheader
	movq	(%rsi), %xmm0                   # xmm0 = mem[0],zero
	pxor	%xmm1, %xmm1
	psadbw	%xmm0, %xmm1
	movd	%xmm1, %ecx
	movl	%edx, %eax
	addl	$-8, %edx
	cmpl	$1, %edx
	jne	.LBB26_6
# %bb.2:
	xorl	%r8d, %r8d
	testb	$1, %dl
	jne	.LBB26_4
	jmp	.LBB26_5
.LBB26_6:                               # %for.body.preheader.new
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r9d
	andl	$2147483646, %r9d               # imm = 0x7FFFFFFE
	leaq	2(%rdi), %r10
	movq	%r10, %r11
	subq	%rax, %r11
	subq	%rax, %r11
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB26_7:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %ebx
	addw	-2(%r11,%r8,2), %bx
	movw	%bx, -2(%r10,%r8,2)
	movzbl	8(%rsi,%r8), %ebx
	addl	%ecx, %ebx
	movzbl	(%rsi,%r8), %ecx
	subl	%ecx, %ebx
	movzwl	(%r11,%r8,2), %ecx
	addw	%bx, %cx
	movw	%cx, (%r10,%r8,2)
	movzbl	9(%rsi,%r8), %ecx
	movzbl	1(%rsi,%r8), %ebp
	addl	%ebx, %ecx
	subl	%ebp, %ecx
	addq	$2, %r8
	cmpq	%r8, %r9
	jne	.LBB26_7
# %bb.8:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	testb	$1, %dl
	je	.LBB26_5
.LBB26_4:                               # %for.body.epil
	movq	%r8, %rdx
	subq	%rax, %rdx
	addw	(%rdi,%rdx,2), %cx
	movw	%cx, (%rdi,%r8,2)
.LBB26_5:                               # %for.cond.cleanup
	retq
.Lfunc_end26:
	.size	integral_init8h, .Lfunc_end26-integral_init8h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function integral_init4v
	.type	integral_init4v,@function
integral_init4v:                        # @integral_init4v
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$9, %edx
	jl	.LBB27_22
# %bb.1:                                # %for.body.lr.ph
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	leal	-8(%rdx), %ecx
	leal	(,%rdx,4), %r8d
	movl	%ecx, %eax
	cmpl	$31, %ecx
	jbe	.LBB27_2
# %bb.9:                                # %vector.memcheck
	movq	%rsi, %r9
	subq	%rdi, %r9
	cmpq	$64, %r9
	setb	%r10b
	leaq	(%r8,%r8), %r11
	subq	%r11, %r9
	cmpq	$64, %r9
	setb	%r9b
	orb	%r10b, %r9b
	je	.LBB27_10
.LBB27_2:
	xorl	%r9d, %r9d
.LBB27_3:                               # %for.body.preheader
	movq	%rax, %r11
	movq	%r9, %r10
	andq	$3, %r11
	je	.LBB27_6
# %bb.4:                                # %for.body.prol.preheader
	leaq	(%rdi,%r8,2), %rbx
	movq	%r9, %r10
	.p2align	4, 0x90
.LBB27_5:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%r10,2), %ebp
	subw	(%rdi,%r10,2), %bp
	movw	%bp, (%rsi,%r10,2)
	incq	%r10
	decq	%r11
	jne	.LBB27_5
.LBB27_6:                               # %for.body.prol.loopexit
	subq	%rax, %r9
	cmpq	$-4, %r9
	ja	.LBB27_13
# %bb.7:                                # %for.body.preheader1
	movq	%rax, %r9
	subq	%r10, %r9
	leaq	(%rsi,%r10,2), %rsi
	addq	$6, %rsi
	leaq	(%rdi,%r10,2), %r10
	addq	$6, %r10
	.p2align	4, 0x90
.LBB27_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	-6(%r10,%r8,2), %r11d
	subw	-6(%r10), %r11w
	movw	%r11w, -6(%rsi)
	movzwl	-4(%r10,%r8,2), %r11d
	subw	-4(%r10), %r11w
	movw	%r11w, -4(%rsi)
	movzwl	-2(%r10,%r8,2), %r11d
	subw	-2(%r10), %r11w
	movw	%r11w, -2(%rsi)
	movzwl	(%r10,%r8,2), %r11d
	subw	(%r10), %r11w
	movw	%r11w, (%rsi)
	addq	$8, %rsi
	addq	$8, %r10
	addq	$-4, %r9
	jne	.LBB27_8
	jmp	.LBB27_13
.LBB27_10:                              # %vector.ph
	movl	%eax, %r9d
	andl	$2147483616, %r9d               # imm = 0x7FFFFFE0
	leaq	48(%rdi), %r10
	addq	%rdi, %r11
	addq	$48, %r11
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB27_11:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%r11,%rbx,2), %xmm0
	movdqu	-32(%r11,%rbx,2), %xmm1
	movdqu	-16(%r11,%rbx,2), %xmm2
	movdqu	(%r11,%rbx,2), %xmm3
	movdqu	-48(%r10,%rbx,2), %xmm4
	psubw	%xmm4, %xmm0
	movdqu	-32(%r10,%rbx,2), %xmm4
	psubw	%xmm4, %xmm1
	movdqu	-16(%r10,%rbx,2), %xmm4
	psubw	%xmm4, %xmm2
	movdqu	(%r10,%rbx,2), %xmm4
	psubw	%xmm4, %xmm3
	movdqu	%xmm0, (%rsi,%rbx,2)
	movdqu	%xmm1, 16(%rsi,%rbx,2)
	movdqu	%xmm2, 32(%rsi,%rbx,2)
	movdqu	%xmm3, 48(%rsi,%rbx,2)
	addq	$32, %rbx
	cmpq	%rbx, %r9
	jne	.LBB27_11
# %bb.12:                               # %middle.block
	cmpl	%eax, %r9d
	jne	.LBB27_3
.LBB27_13:                              # %for.cond9.preheader
	cmpl	$9, %edx
	jl	.LBB27_21
# %bb.14:                               # %for.body14.lr.ph
	shll	$3, %edx
	cmpl	$31, %ecx
	ja	.LBB27_18
# %bb.15:
	xorl	%ecx, %ecx
	jmp	.LBB27_16
.LBB27_18:                              # %vector.ph91
	movl	%eax, %ecx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	movq	%rdi, %rsi
	movq	%rcx, %r8
	.p2align	4, 0x90
.LBB27_19:                              # %vector.body95
                                        # =>This Inner Loop Header: Depth=1
	movdqu	32(%rsi,%rdx,2), %xmm2
	movdqu	48(%rsi,%rdx,2), %xmm3
	movdqu	(%rsi,%rdx,2), %xmm1
	movdqu	8(%rsi,%rdx,2), %xmm0
	paddw	%xmm1, %xmm0
	movdqu	16(%rsi,%rdx,2), %xmm4
	movdqu	24(%rsi,%rdx,2), %xmm1
	paddw	%xmm4, %xmm1
	movdqu	40(%rsi,%rdx,2), %xmm4
	paddw	%xmm2, %xmm4
	movdqu	56(%rsi,%rdx,2), %xmm2
	paddw	%xmm3, %xmm2
	movdqu	32(%rsi), %xmm3
	movdqu	48(%rsi), %xmm5
	movdqu	(%rsi), %xmm6
	movdqu	8(%rsi), %xmm7
	paddw	%xmm6, %xmm7
	psubw	%xmm7, %xmm0
	movdqu	16(%rsi), %xmm6
	movdqu	24(%rsi), %xmm7
	paddw	%xmm6, %xmm7
	psubw	%xmm7, %xmm1
	movdqu	40(%rsi), %xmm6
	paddw	%xmm3, %xmm6
	psubw	%xmm6, %xmm4
	movdqu	56(%rsi), %xmm3
	paddw	%xmm5, %xmm3
	psubw	%xmm3, %xmm2
	movdqu	%xmm0, (%rsi)
	movdqu	%xmm1, 16(%rsi)
	movdqu	%xmm4, 32(%rsi)
	movdqu	%xmm2, 48(%rsi)
	addq	$64, %rsi
	addq	$-32, %r8
	jne	.LBB27_19
# %bb.20:                               # %middle.block88
	cmpl	%eax, %ecx
	je	.LBB27_21
.LBB27_16:                              # %for.body14.preheader
	subq	%rcx, %rax
	leaq	(%rdi,%rcx,2), %rcx
	.p2align	4, 0x90
.LBB27_17:                              # %for.body14
                                        # =>This Inner Loop Header: Depth=1
	movzwl	8(%rcx,%rdx,2), %esi
	movzwl	(%rcx), %edi
	addw	(%rcx,%rdx,2), %si
	addw	8(%rcx), %di
	subl	%edi, %esi
	movw	%si, (%rcx)
	addq	$2, %rcx
	decq	%rax
	jne	.LBB27_17
.LBB27_21:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
.LBB27_22:                              # %for.cond.cleanup13
	retq
.Lfunc_end27:
	.size	integral_init4v, .Lfunc_end27-integral_init4v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function integral_init8v
	.type	integral_init8v,@function
integral_init8v:                        # @integral_init8v
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	cmpl	$9, %esi
	jl	.LBB28_8
# %bb.1:                                # %for.body.lr.ph
	leal	-8(%rsi), %eax
	shll	$3, %esi
	cmpl	$31, %eax
	ja	.LBB28_5
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB28_3
.LBB28_5:                               # %vector.ph
	movl	%eax, %ecx
	andl	$2147483616, %ecx               # imm = 0x7FFFFFE0
	leaq	48(%rdi), %rdx
	movq	%rcx, %r8
	.p2align	4, 0x90
.LBB28_6:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	-48(%rdx,%rsi,2), %xmm0
	movdqu	-32(%rdx,%rsi,2), %xmm1
	movdqu	-16(%rdx,%rsi,2), %xmm2
	movdqu	(%rdx,%rsi,2), %xmm3
	movdqu	-48(%rdx), %xmm4
	psubw	%xmm4, %xmm0
	movdqu	-32(%rdx), %xmm4
	psubw	%xmm4, %xmm1
	movdqu	-16(%rdx), %xmm4
	psubw	%xmm4, %xmm2
	movdqu	(%rdx), %xmm4
	psubw	%xmm4, %xmm3
	movdqu	%xmm0, -48(%rdx)
	movdqu	%xmm1, -32(%rdx)
	movdqu	%xmm2, -16(%rdx)
	movdqu	%xmm3, (%rdx)
	addq	$64, %rdx
	addq	$-32, %r8
	jne	.LBB28_6
# %bb.7:                                # %middle.block
	cmpl	%eax, %ecx
	je	.LBB28_8
.LBB28_3:                               # %for.body.preheader
	subq	%rcx, %rax
	leaq	(%rdi,%rcx,2), %rcx
	.p2align	4, 0x90
.LBB28_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx,%rsi,2), %edx
	subw	(%rcx), %dx
	movw	%dx, (%rcx)
	addq	$2, %rcx
	decq	%rax
	jne	.LBB28_4
.LBB28_8:                               # %for.cond.cleanup
	retq
.Lfunc_end28:
	.size	integral_init8v, .Lfunc_end28-integral_init8v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mbtree_propagate_cost
	.type	mbtree_propagate_cost,@function
mbtree_propagate_cost:                  # @mbtree_propagate_cost
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%r9d, %r9d
	jle	.LBB29_27
# %bb.1:                                # %for.body.preheader
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
	movq	%rdx, %r15
	movl	%r9d, %r13d
	cmpl	$4, %r9d
	jae	.LBB29_3
# %bb.2:
	xorl	%r9d, %r9d
	jmp	.LBB29_22
.LBB29_3:                               # %vector.memcheck
	leaq	(%rsi,%r13,2), %rax
	cmpq	%rdi, %rax
	seta	%r11b
	leaq	(%rdi,%r13,4), %r9
	cmpq	%rsi, %r9
	seta	%bl
	leaq	(%r15,%r13,2), %rax
	cmpq	%rdi, %rax
	seta	%al
	cmpq	%r15, %r9
	seta	%r12b
	leaq	(%r8,%r13,2), %rdx
	cmpq	%rdi, %rdx
	seta	%r14b
	leaq	(%rcx,%r13,2), %rdx
	cmpq	%r8, %r9
	seta	%bpl
	cmpq	%rdi, %rdx
	seta	%dl
	cmpq	%rcx, %r9
	seta	%r10b
	xorl	%r9d, %r9d
	testb	%bl, %r11b
	jne	.LBB29_22
# %bb.4:                                # %vector.memcheck
	andb	%r12b, %al
	jne	.LBB29_22
# %bb.5:                                # %vector.memcheck
	andb	%bpl, %r14b
	jne	.LBB29_22
# %bb.6:                                # %vector.memcheck
	andb	%r10b, %dl
	jne	.LBB29_22
# %bb.7:                                # %vector.ph
	movl	%r13d, %r9d
	andl	$2147483644, %r9d               # imm = 0x7FFFFFFC
	movq	%r13, -24(%rsp)                 # 8-byte Spill
	leal	(,%r13,2), %eax
	andl	$-8, %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	%r15, -56(%rsp)                 # 8-byte Spill
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	jmp	.LBB29_8
	.p2align	4, 0x90
.LBB29_19:                              #   in Loop: Header=BB29_8 Depth=1
	cqto
	idivq	%rsi
.LBB29_20:                              #   in Loop: Header=BB29_8 Depth=1
	movq	-40(%rsp), %r8                  # 8-byte Reload
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movq	-56(%rsp), %r15                 # 8-byte Reload
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movl	%edx, (%rdi,%r13,2)
	movl	%r14d, 4(%rdi,%r13,2)
	movl	%ebx, 8(%rdi,%r13,2)
	movl	%eax, 12(%rdi,%r13,2)
	addq	$8, %r13
	cmpq	%r13, -16(%rsp)                 # 8-byte Folded Reload
	je	.LBB29_21
.LBB29_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r13), %eax
	movzwl	2(%rsi,%r13), %edx
	movl	%edx, -76(%rsp)                 # 4-byte Spill
	movzwl	4(%rsi,%r13), %edx
	movl	%edx, -72(%rsp)                 # 4-byte Spill
	movzwl	6(%rsi,%r13), %edx
	movl	%edx, -68(%rsp)                 # 4-byte Spill
	movzwl	(%r15,%r13), %esi
	movzwl	2(%r15,%r13), %ebp
	movzwl	4(%r15,%r13), %ebx
	movzwl	6(%r15,%r13), %edx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movzwl	(%r8,%r13), %edx
	movzwl	2(%r8,%r13), %r14d
	movzwl	4(%r8,%r13), %r10d
	movzwl	6(%r8,%r13), %r12d
	imull	%esi, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	addl	%eax, %edx
	movzwl	(%rcx,%r13), %r11d
	andl	$16383, %r11d                   # imm = 0x3FFF
	movzwl	2(%rcx,%r13), %r8d
	movq	%rsi, %rax
	subq	%r11, %rax
	movzwl	4(%rcx,%r13), %r11d
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	movzwl	6(%rcx,%r13), %r15d
	je	.LBB29_9
# %bb.10:                               #   in Loop: Header=BB29_8 Depth=1
	cqto
	idivq	%rsi
	jmp	.LBB29_11
	.p2align	4, 0x90
.LBB29_9:                               #   in Loop: Header=BB29_8 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB29_11:                              #   in Loop: Header=BB29_8 Depth=1
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	imull	%ebp, %r14d
	subl	$-128, %r14d
	shrl	$8, %r14d
	addl	-76(%rsp), %r14d                # 4-byte Folded Reload
	andl	$16383, %r8d                    # imm = 0x3FFF
	movq	%rbp, %rax
	subq	%r8, %rax
	imulq	%r14, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	je	.LBB29_12
# %bb.13:                               #   in Loop: Header=BB29_8 Depth=1
	cqto
	idivq	%rbp
	movq	%rax, %r14
	jmp	.LBB29_14
	.p2align	4, 0x90
.LBB29_12:                              #   in Loop: Header=BB29_8 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ebp
	movl	%eax, %r14d
.LBB29_14:                              #   in Loop: Header=BB29_8 Depth=1
	imull	%ebx, %r10d
	subl	$-128, %r10d
	shrl	$8, %r10d
	addl	-72(%rsp), %r10d                # 4-byte Folded Reload
	andl	$16383, %r11d                   # imm = 0x3FFF
	movq	%rbx, %rax
	subq	%r11, %rax
	imulq	%r10, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	je	.LBB29_15
# %bb.16:                               #   in Loop: Header=BB29_8 Depth=1
	cqto
	idivq	%rbx
	movq	%rax, %rbx
	jmp	.LBB29_17
	.p2align	4, 0x90
.LBB29_15:                              #   in Loop: Header=BB29_8 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ebx
	movl	%eax, %ebx
.LBB29_17:                              #   in Loop: Header=BB29_8 Depth=1
	imull	%esi, %r12d
	subl	$-128, %r12d
	shrl	$8, %r12d
	addl	-68(%rsp), %r12d                # 4-byte Folded Reload
	andl	$16383, %r15d                   # imm = 0x3FFF
	movq	%rsi, %rax
	subq	%r15, %rax
	imulq	%r12, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	jne	.LBB29_19
# %bb.18:                               #   in Loop: Header=BB29_8 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB29_20
.LBB29_21:                              # %middle.block
	movq	-24(%rsp), %r13                 # 8-byte Reload
	cmpl	%r13d, %r9d
	jne	.LBB29_22
	jmp	.LBB29_26
	.p2align	4, 0x90
.LBB29_23:                              #   in Loop: Header=BB29_22 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, (%rdi,%r9,4)
	incq	%r9
	cmpq	%r9, %r13
	je	.LBB29_26
.LBB29_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi,%r9,2), %eax
	movzwl	(%r15,%r9,2), %r10d
	movzwl	(%r8,%r9,2), %edx
	imull	%r10d, %edx
	subl	$-128, %edx
	shrl	$8, %edx
	addl	%eax, %edx
	movzwl	(%rcx,%r9,2), %r11d
	andl	$16383, %r11d                   # imm = 0x3FFF
	movq	%r10, %rax
	subq	%r11, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB29_23
# %bb.24:                               #   in Loop: Header=BB29_22 Depth=1
	cqto
	idivq	%r10
	movl	%eax, (%rdi,%r9,4)
	incq	%r9
	cmpq	%r9, %r13
	jne	.LBB29_22
.LBB29_26:
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
.LBB29_27:                              # %for.cond.cleanup
	retq
.Lfunc_end29:
	.size	mbtree_propagate_cost, .Lfunc_end29-mbtree_propagate_cost
	.cfi_endproc
                                        # -- End function
	.globl	x264_frame_filter               # -- Begin function x264_frame_filter
	.p2align	4, 0x90
	.type	x264_frame_filter,@function
x264_frame_filter:                      # @x264_frame_filter
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
	movl	%ecx, %eax
	movq	%rsi, %rbx
	movq	%rdi, %r10
	movl	7268(%rdi), %r12d
	movl	104(%rsi), %r8d
	movl	%r12d, %ecx
	shll	%cl, %r8d
	movl	%edx, %esi
	shll	$4, %esi
	sarl	%cl, %esi
	movl	%esi, %ebp
	testl	%eax, %eax
	je	.LBB30_2
# %bb.1:                                # %cond.true
	movl	128(%rbx), %ebp
	movl	%r12d, %ecx
	sarl	%cl, %ebp
.LBB30_2:                               # %cond.end
	testl	%edx, %r12d
	je	.LBB30_3
.LBB30_17:                              # %cleanup
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
.LBB30_3:                               # %if.end
	.cfi_def_cfa_offset 112
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leal	-8(%rsi), %eax
	movl	%eax, (%rsp)                    # 4-byte Spill
	leal	8(%rbp), %eax
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	testl	%r12d, %r12d
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	js	.LBB30_6
# %bb.4:                                # %for.body.lr.ph
	movl	116(%rbx), %r13d
	movl	(%rsp), %ecx                    # 4-byte Reload
	movl	%ecx, %r14d
	imull	%r8d, %r14d
	addl	$-8, %r14d
	addl	$16, %r13d
	movl	24(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r15d
	subl	%ecx, %r15d
	incl	%r12d
	.p2align	4, 0x90
.LBB30_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %r14
	movq	184(%rbx), %rdi
	addq	%r14, %rdi
	movq	192(%rbx), %rsi
	addq	%r14, %rsi
	movq	200(%rbx), %rdx
	addq	%r14, %rdx
	movq	152(%rbx), %rcx
	addq	%r14, %rcx
	movq	8(%rsp), %r8                    # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	movl	%r13d, %r9d
	pushq	31176(%r10)
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	movq	32(%rsp), %rax                  # 8-byte Reload
	callq	*32792(%rax)
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	32(%rsp), %r10                  # 8-byte Reload
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	addl	104(%rbx), %r14d
	decl	%r12d
	jne	.LBB30_5
.LBB30_6:                               # %for.cond.cleanup
	movq	240(%rbx), %rdi
	testq	%rdi, %rdi
	movl	44(%rsp), %r14d                 # 4-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	je	.LBB30_17
# %bb.7:                                # %if.then26
	movslq	%r8d, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	cmpl	$7, %ecx
	jg	.LBB30_9
# %bb.8:                                # %if.then28
	movl	%r8d, %eax
	shll	$5, %eax
	cltq
	addq	%rax, %rax
	subq	%rax, %rdi
	addq	$-64, %rdi
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rax), %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	16(%rsp), %r10                  # 8-byte Reload
	movl	$-32, (%rsp)                    # 4-byte Folded Spill
.LBB30_9:                               # %if.end35
	addl	$31, %ebp
	testl	%r14d, %r14d
	cmovel	24(%rsp), %ebp                  # 4-byte Folded Reload
	subl	(%rsp), %ebp                    # 4-byte Folded Reload
	jle	.LBB30_17
# %bb.10:                               # %for.body45.lr.ph
	leal	(,%r8,8), %eax
	cltq
	movslq	(%rsp), %r14                    # 4-byte Folded Reload
	addq	%rax, %rax
	negq	%rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	1(%r14), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	imulq	%rcx, %rax
	leaq	-64(,%rax,2), %r15
	leaq	(%rcx,%rcx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r14, %r13
	imulq	%rcx, %r13
	addq	$-32, %r13
	jmp	.LBB30_11
	.p2align	4, 0x90
.LBB30_16:                              # %if.end86
                                        #   in Loop: Header=BB30_11 Depth=1
	addq	(%rsp), %r15                    # 8-byte Folded Reload
	addq	32(%rsp), %r13                  # 8-byte Folded Reload
	incq	%r14
	decl	%ebp
	movq	16(%rsp), %r10                  # 8-byte Reload
	movq	8(%rsp), %r8                    # 8-byte Reload
	je	.LBB30_17
.LBB30_11:                              # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	movq	152(%rbx), %rsi
	addq	%r13, %rsi
	movq	240(%rbx), %r12
	leaq	(%r12,%r15), %rdi
	cmpl	$0, 14676(%r10)
	je	.LBB30_14
# %bb.12:                               # %if.then59
                                        #   in Loop: Header=BB30_11 Depth=1
	movl	%r8d, %edx
	callq	*32832(%r10)
	cmpq	$-24, %r14
	jl	.LBB30_16
# %bb.13:                               # %if.then73
                                        #   in Loop: Header=BB30_11 Depth=1
	addq	24(%rsp), %r12                  # 8-byte Folded Reload
	leaq	(%r12,%r15), %rdi
	movslq	128(%rbx), %rax
	addq	$64, %rax
	imulq	32(%rsp), %rax                  # 8-byte Folded Reload
	leaq	(%r15,%rax,2), %rsi
	addq	%r12, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movq	16(%rsp), %rax                  # 8-byte Reload
	callq	*32848(%rax)
	jmp	.LBB30_16
	.p2align	4, 0x90
.LBB30_14:                              # %if.else
                                        #   in Loop: Header=BB30_11 Depth=1
	movl	%r8d, %edx
	callq	*32840(%r10)
	cmpq	$-24, %r14
	jl	.LBB30_16
# %bb.15:                               # %if.then79
                                        #   in Loop: Header=BB30_11 Depth=1
	addq	24(%rsp), %r12                  # 8-byte Folded Reload
	addq	%r15, %r12
	movq	%r12, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	16(%rsp), %rax                  # 8-byte Reload
	callq	*32856(%rax)
	jmp	.LBB30_16
.Lfunc_end30:
	.size	x264_frame_filter, .Lfunc_end30-x264_frame_filter
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function pixel_avg_weight_wxh
	.type	pixel_avg_weight_wxh,@function
pixel_avg_weight_wxh:                   # @pixel_avg_weight_wxh
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	48(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB31_9
# %bb.1:                                # %for.body.lr.ph
	movl	56(%rsp), %r10d
	movl	40(%rsp), %ebx
	movl	$64, %r11d
	subl	%r10d, %r11d
	movslq	%esi, %rsi
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	cmpl	$2, %ebx
	jne	.LBB31_2
# %bb.7:                                # %for.body.us.preheader
	incq	%rdi
	incq	%rdx
	incq	%r8
	.p2align	4, 0x90
.LBB31_8:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx), %ebx
	imull	%r10d, %ebx
	movzbl	-1(%r8), %r14d
	imull	%r11d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, -1(%rdi)
	movzbl	(%rdx), %ebx
	imull	%r10d, %ebx
	movzbl	(%r8), %r14d
	imull	%r11d, %r14d
	addl	%r14d, %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	testl	%ebx, %ebx
	setg	%bpl
	negb	%bpl
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%bpl, %ebp
	cmovbl	%ebx, %ebp
	movb	%bpl, (%rdi)
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	addq	%r9, %r8
	decl	%eax
	jne	.LBB31_8
.LBB31_9:                               # %for.cond.cleanup
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB31_2:                               # %for.body.preheader
	.cfi_def_cfa_offset 40
	addq	$15, %rdi
	addq	$15, %rdx
	addq	$15, %r8
	jmp	.LBB31_3
	.p2align	4, 0x90
.LBB31_6:                               # %for.inc
                                        #   in Loop: Header=BB31_3 Depth=1
	addq	%rsi, %rdi
	addq	%rcx, %rdx
	addq	%r9, %r8
	decl	%eax
	je	.LBB31_9
.LBB31_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-15(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -15(%rdi)
	movzbl	-14(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-14(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -14(%rdi)
	movzbl	-13(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-13(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -13(%rdi)
	movzbl	-12(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-12(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -12(%rdi)
	cmpl	$4, %ebx
	je	.LBB31_6
# %bb.4:                                # %if.end44
                                        #   in Loop: Header=BB31_3 Depth=1
	movzbl	-11(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-11(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -11(%rdi)
	movzbl	-10(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-10(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -10(%rdi)
	movzbl	-9(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-9(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -9(%rdi)
	movzbl	-8(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-8(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -8(%rdi)
	cmpl	$8, %ebx
	je	.LBB31_6
# %bb.5:                                # %if.end92
                                        #   in Loop: Header=BB31_3 Depth=1
	movzbl	-7(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-7(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -7(%rdi)
	movzbl	-6(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-6(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -6(%rdi)
	movzbl	-5(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-5(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -5(%rdi)
	movzbl	-4(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-4(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -4(%rdi)
	movzbl	-3(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-3(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -3(%rdi)
	movzbl	-2(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-2(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -2(%rdi)
	movzbl	-1(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	-1(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, -1(%rdi)
	movzbl	(%rdx), %r14d
	imull	%r10d, %r14d
	movzbl	(%r8), %r15d
	imull	%r11d, %r15d
	leal	(%r14,%r15), %ebp
	addl	$32, %ebp
	sarl	$6, %ebp
	testl	%ebp, %ebp
	setg	%r14b
	negb	%r14b
	cmpl	$256, %ebp                      # imm = 0x100
	movzbl	%r14b, %r14d
	cmovbl	%ebp, %r14d
	movb	%r14b, (%rdi)
	jmp	.LBB31_6
.Lfunc_end31:
	.size	pixel_avg_weight_wxh, .Lfunc_end31-pixel_avg_weight_wxh
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_weight_w2
	.type	mc_weight_w2,@function
mc_weight_w2:                           # @mc_weight_w2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$0, 32(%r8)
	jle	.LBB32_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB32_7
# %bb.5:                                # %for.cond2.preheader.lr.ph
	movslq	%esi, %rsi
	movslq	%ecx, %r10
	incq	%rdi
	incq	%rdx
	.p2align	4, 0x90
.LBB32_6:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -1(%rdi)
	movzbl	(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%rdi)
	addq	%rsi, %rdi
	addq	%r10, %rdx
	decl	%r9d
	jne	.LBB32_6
	jmp	.LBB32_7
.LBB32_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB32_7
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	incq	%rdi
	incq	%rdx
	.p2align	4, 0x90
.LBB32_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB32_3
.LBB32_7:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	mc_weight_w2, .Lfunc_end32-mc_weight_w2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_weight_w4
	.type	mc_weight_w4,@function
mc_weight_w4:                           # @mc_weight_w4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$0, 32(%r8)
	jle	.LBB33_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB33_7
# %bb.5:                                # %for.cond2.preheader.lr.ph
	movslq	%esi, %rsi
	movslq	%ecx, %r10
	addq	$3, %rdi
	addq	$3, %rdx
	.p2align	4, 0x90
.LBB33_6:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -3(%rdi)
	movzbl	-2(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -2(%rdi)
	movzbl	-1(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -1(%rdi)
	movzbl	(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%rdi)
	addq	%rsi, %rdi
	addq	%r10, %rdx
	decl	%r9d
	jne	.LBB33_6
	jmp	.LBB33_7
.LBB33_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB33_7
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$3, %rdi
	addq	$3, %rdx
	.p2align	4, 0x90
.LBB33_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-3(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB33_3
.LBB33_7:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end33:
	.size	mc_weight_w4, .Lfunc_end33-mc_weight_w4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_weight_w8
	.type	mc_weight_w8,@function
mc_weight_w8:                           # @mc_weight_w8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$0, 32(%r8)
	jle	.LBB34_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB34_7
# %bb.5:                                # %for.cond2.preheader.lr.ph
	movslq	%esi, %rsi
	movslq	%ecx, %r10
	addq	$7, %rdi
	addq	$7, %rdx
	.p2align	4, 0x90
.LBB34_6:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -7(%rdi)
	movzbl	-6(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -6(%rdi)
	movzbl	-5(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -5(%rdi)
	movzbl	-4(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -4(%rdi)
	movzbl	-3(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -3(%rdi)
	movzbl	-2(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -2(%rdi)
	movzbl	-1(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -1(%rdi)
	movzbl	(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%rdi)
	addq	%rsi, %rdi
	addq	%r10, %rdx
	decl	%r9d
	jne	.LBB34_6
	jmp	.LBB34_7
.LBB34_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB34_7
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$7, %rdi
	addq	$7, %rdx
	.p2align	4, 0x90
.LBB34_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-7(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB34_3
.LBB34_7:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	mc_weight_w8, .Lfunc_end34-mc_weight_w8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_weight_w12
	.type	mc_weight_w12,@function
mc_weight_w12:                          # @mc_weight_w12
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$0, 32(%r8)
	jle	.LBB35_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB35_7
# %bb.5:                                # %for.cond2.preheader.lr.ph
	movslq	%esi, %rsi
	movslq	%ecx, %r10
	addq	$11, %rdi
	addq	$11, %rdx
	.p2align	4, 0x90
.LBB35_6:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-11(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -11(%rdi)
	movzbl	-10(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -10(%rdi)
	movzbl	-9(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -9(%rdi)
	movzbl	-8(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -8(%rdi)
	movzbl	-7(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -7(%rdi)
	movzbl	-6(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -6(%rdi)
	movzbl	-5(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -5(%rdi)
	movzbl	-4(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -4(%rdi)
	movzbl	-3(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -3(%rdi)
	movzbl	-2(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -2(%rdi)
	movzbl	-1(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -1(%rdi)
	movzbl	(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%rdi)
	addq	%rsi, %rdi
	addq	%r10, %rdx
	decl	%r9d
	jne	.LBB35_6
	jmp	.LBB35_7
.LBB35_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB35_7
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$11, %rdi
	addq	$11, %rdx
	.p2align	4, 0x90
.LBB35_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-11(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -11(%rdi)
	movzbl	-10(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -10(%rdi)
	movzbl	-9(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -9(%rdi)
	movzbl	-8(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -8(%rdi)
	movzbl	-7(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB35_3
.LBB35_7:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	mc_weight_w12, .Lfunc_end35-mc_weight_w12
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mc_weight_w16
	.type	mc_weight_w16,@function
mc_weight_w16:                          # @mc_weight_w16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpl	$0, 32(%r8)
	jle	.LBB36_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB36_7
# %bb.5:                                # %for.cond2.preheader.lr.ph
	movslq	%esi, %rsi
	movslq	%ecx, %r10
	addq	$15, %rdi
	addq	$15, %rdx
	.p2align	4, 0x90
.LBB36_6:                               # %for.cond2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -15(%rdi)
	movzbl	-14(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -14(%rdi)
	movzbl	-13(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -13(%rdi)
	movzbl	-12(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -12(%rdi)
	movzbl	-11(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -11(%rdi)
	movzbl	-10(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -10(%rdi)
	movzbl	-9(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -9(%rdi)
	movzbl	-8(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -8(%rdi)
	movzbl	-7(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -7(%rdi)
	movzbl	-6(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -6(%rdi)
	movzbl	-5(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -5(%rdi)
	movzbl	-4(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -4(%rdi)
	movzbl	-3(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -3(%rdi)
	movzbl	-2(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -2(%rdi)
	movzbl	-1(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, -1(%rdi)
	movzbl	(%rdx), %r11d
	imull	36(%r8), %r11d
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebx
	addl	%r11d, %ebx
	movl	%eax, %ecx
	sarl	%cl, %ebx
	addl	40(%r8), %ebx
	testl	%ebx, %ebx
	setg	%al
	negb	%al
	cmpl	$256, %ebx                      # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%ebx, %eax
	movb	%al, (%rdi)
	addq	%rsi, %rdi
	addq	%r10, %rdx
	decl	%r9d
	jne	.LBB36_6
	jmp	.LBB36_7
.LBB36_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB36_7
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$15, %rdi
	addq	$15, %rdx
	.p2align	4, 0x90
.LBB36_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-15(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -15(%rdi)
	movzbl	-14(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -14(%rdi)
	movzbl	-13(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -13(%rdi)
	movzbl	-12(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -12(%rdi)
	movzbl	-11(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -11(%rdi)
	movzbl	-10(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -10(%rdi)
	movzbl	-9(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -9(%rdi)
	movzbl	-8(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -8(%rdi)
	movzbl	-7(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB36_3
.LBB36_7:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end36:
	.size	mc_weight_w16, .Lfunc_end36-mc_weight_w16
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mc_weight_w20
.LCPI37_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI37_1:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI37_2:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI37_3:
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.short	255                             # 0xff
	.short	0                               # 0x0
	.text
	.p2align	4, 0x90
	.type	mc_weight_w20,@function
mc_weight_w20:                          # @mc_weight_w20
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
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r9d killed $r9d def $r9
	cmpl	$0, 32(%r8)
	jle	.LBB37_1
# %bb.4:                                # %for.cond.preheader
	testl	%r9d, %r9d
	jle	.LBB37_11
# %bb.5:                                # %for.cond2.preheader.lr.ph
	leaq	32(%r8), %rax
	movslq	%esi, %r10
	movslq	%ecx, %r11
	leal	-1(%r9), %ebx
	movq	%r10, %r14
	imulq	%rbx, %r14
	addq	%rdi, %r14
	addq	$20, %r14
	imulq	%r11, %rbx
	addq	%rdx, %rbx
	addq	$20, %rbx
	leaq	44(%r8), %r15
	cmpq	%rdi, %rbx
	seta	%bl
	cmpq	%rdx, %r14
	seta	%bpl
	andb	%bl, %bpl
	orl	%esi, %ecx
	sets	%cl
	orb	%bpl, %cl
	cmpq	%rdi, %r15
	seta	%bl
	cmpq	%r14, %rax
	setb	%al
	andb	%bl, %al
	testl	%esi, %esi
	sets	%sil
	orb	%al, %sil
	orb	%cl, %sil
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	pcmpeqd	%xmm1, %xmm1
	movdqa	.LCPI37_0(%rip), %xmm2          # xmm2 = [1,1,1,1]
	movdqa	.LCPI37_1(%rip), %xmm3          # xmm3 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI37_2(%rip), %xmm4          # xmm4 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI37_3(%rip), %xmm5          # xmm5 = [255,0,255,0,255,0,255,0]
	.p2align	4, 0x90
.LBB37_6:                               # %vector.memcheck
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB37_9 Depth 2
	testb	%sil, %sil
	je	.LBB37_8
# %bb.7:                                #   in Loop: Header=BB37_6 Depth=1
	xorl	%r14d, %r14d
	jmp	.LBB37_9
	.p2align	4, 0x90
.LBB37_8:                               # %vector.body
                                        #   in Loop: Header=BB37_6 Depth=1
	movd	(%rdx), %xmm6                   # xmm6 = mem[0],zero,zero,zero
	movd	4(%rdx), %xmm8                  # xmm8 = mem[0],zero,zero,zero
	movd	8(%rdx), %xmm7                  # xmm7 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3],xmm6[4],xmm0[4],xmm6[5],xmm0[5],xmm6[6],xmm0[6],xmm6[7],xmm0[7]
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	punpcklbw	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3],xmm8[4],xmm0[4],xmm8[5],xmm0[5],xmm8[6],xmm0[6],xmm8[7],xmm0[7]
	punpcklwd	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1],xmm8[2],xmm0[2],xmm8[3],xmm0[3]
	punpcklbw	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3],xmm7[4],xmm0[4],xmm7[5],xmm0[5],xmm7[6],xmm0[6],xmm7[7],xmm0[7]
	punpcklwd	%xmm0, %xmm7            # xmm7 = xmm7[0],xmm0[0],xmm7[1],xmm0[1],xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	movd	36(%r8), %xmm9                  # xmm9 = mem[0],zero,zero,zero
	pshufd	$0, %xmm9, %xmm9                # xmm9 = xmm9[0,0,0,0]
	pshufd	$245, %xmm6, %xmm11             # xmm11 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm11
	movdqa	%xmm9, %xmm10
	pshufd	$245, %xmm8, %xmm12             # xmm12 = xmm8[1,1,3,3]
	pmuludq	%xmm9, %xmm12
	movdqa	%xmm9, %xmm13
	movdqa	%xmm9, %xmm14
	pmuludq	%xmm6, %xmm14
	pshufd	$245, %xmm7, %xmm15             # xmm15 = xmm7[1,1,3,3]
	pmuludq	%xmm9, %xmm15
	pshufd	$232, %xmm14, %xmm6             # xmm6 = xmm14[0,2,2,3]
	pshufd	$232, %xmm11, %xmm11            # xmm11 = xmm11[0,2,2,3]
	punpckldq	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movd	12(%rdx), %xmm11                # xmm11 = mem[0],zero,zero,zero
	punpcklbw	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3],xmm11[4],xmm0[4],xmm11[5],xmm0[5],xmm11[6],xmm0[6],xmm11[7],xmm0[7]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	pmuludq	%xmm8, %xmm10
	pshufd	$245, %xmm11, %xmm14            # xmm14 = xmm11[1,1,3,3]
	pmuludq	%xmm9, %xmm14
	pshufd	$232, %xmm10, %xmm8             # xmm8 = xmm10[0,2,2,3]
	pshufd	$232, %xmm12, %xmm10            # xmm10 = xmm12[0,2,2,3]
	punpckldq	%xmm10, %xmm8           # xmm8 = xmm8[0],xmm10[0],xmm8[1],xmm10[1]
	pmuludq	%xmm7, %xmm13
	pshufd	$232, %xmm13, %xmm7             # xmm7 = xmm13[0,2,2,3]
	pshufd	$232, %xmm15, %xmm10            # xmm10 = xmm15[0,2,2,3]
	punpckldq	%xmm10, %xmm7           # xmm7 = xmm7[0],xmm10[0],xmm7[1],xmm10[1]
	pmuludq	%xmm11, %xmm9
	pshufd	$232, %xmm9, %xmm10             # xmm10 = xmm9[0,2,2,3]
	pshufd	$232, %xmm14, %xmm9             # xmm9 = xmm14[0,2,2,3]
	punpckldq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0],xmm10[1],xmm9[1]
	movd	32(%r8), %xmm11                 # xmm11 = mem[0],zero,zero,zero
	movdqa	%xmm11, %xmm9
	paddd	%xmm1, %xmm9
	pxor	%xmm12, %xmm12
	movss	%xmm9, %xmm12                   # xmm12 = xmm9[0],xmm12[1,2,3]
	movdqa	%xmm2, %xmm9
	pslld	%xmm12, %xmm9
	paddd	%xmm9, %xmm6
	paddd	%xmm9, %xmm8
	paddd	%xmm9, %xmm7
	paddd	%xmm10, %xmm9
	psrad	%xmm11, %xmm6
	psrad	%xmm11, %xmm8
	psrad	%xmm11, %xmm7
	psrad	%xmm11, %xmm9
	movd	40(%r8), %xmm10                 # xmm10 = mem[0],zero,zero,zero
	pshufd	$0, %xmm10, %xmm10              # xmm10 = xmm10[0,0,0,0]
	paddd	%xmm10, %xmm6
	paddd	%xmm10, %xmm8
	paddd	%xmm10, %xmm7
	paddd	%xmm10, %xmm9
	movdqa	%xmm6, %xmm11
	pxor	%xmm3, %xmm11
	movdqa	%xmm4, %xmm10
	pcmpgtd	%xmm11, %xmm10
	movdqa	%xmm8, %xmm11
	pxor	%xmm3, %xmm11
	movdqa	%xmm4, %xmm13
	pcmpgtd	%xmm11, %xmm13
	movdqa	%xmm7, %xmm12
	pxor	%xmm3, %xmm12
	movdqa	%xmm4, %xmm11
	pcmpgtd	%xmm12, %xmm11
	movdqa	%xmm9, %xmm14
	pxor	%xmm3, %xmm14
	movdqa	%xmm4, %xmm12
	pcmpgtd	%xmm14, %xmm12
	movdqa	%xmm6, %xmm14
	pcmpgtd	%xmm0, %xmm14
	pand	%xmm10, %xmm6
	pandn	%xmm14, %xmm10
	por	%xmm6, %xmm10
	movdqa	%xmm8, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm13, %xmm8
	pandn	%xmm6, %xmm13
	por	%xmm8, %xmm13
	movdqa	%xmm7, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm11, %xmm7
	pandn	%xmm6, %xmm11
	por	%xmm7, %xmm11
	movdqa	%xmm9, %xmm6
	pcmpgtd	%xmm0, %xmm6
	pand	%xmm12, %xmm9
	pandn	%xmm6, %xmm12
	por	%xmm9, %xmm12
	pand	%xmm5, %xmm10
	packuswb	%xmm10, %xmm10
	pand	%xmm5, %xmm13
	packuswb	%xmm13, %xmm13
	packuswb	%xmm13, %xmm10
	pand	%xmm5, %xmm11
	packuswb	%xmm11, %xmm11
	pand	%xmm5, %xmm12
	packuswb	%xmm12, %xmm12
	packuswb	%xmm12, %xmm11
	shufps	$136, %xmm11, %xmm10            # xmm10 = xmm10[0,2],xmm11[0,2]
	movups	%xmm10, (%rdi)
	movl	$16, %r14d
	.p2align	4, 0x90
.LBB37_9:                               # %for.body5
                                        #   Parent Loop BB37_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%r14), %ebp
	imull	36(%r8), %ebp
	movzbl	32(%r8), %eax
	leal	-1(%rax), %ecx
	movl	$1, %r15d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r15d
	addl	%ebp, %r15d
	movl	%eax, %ecx
	sarl	%cl, %r15d
	addl	40(%r8), %r15d
	testl	%r15d, %r15d
	setg	%al
	negb	%al
	cmpl	$256, %r15d                     # imm = 0x100
	movzbl	%al, %eax
	cmovbl	%r15d, %eax
	movb	%al, (%rdi,%r14)
	incq	%r14
	cmpq	$20, %r14
	jne	.LBB37_9
# %bb.10:                               # %for.cond.cleanup4
                                        #   in Loop: Header=BB37_6 Depth=1
	incl	%ebx
	addq	%r10, %rdi
	addq	%r11, %rdx
	cmpl	%r9d, %ebx
	jne	.LBB37_6
	jmp	.LBB37_11
.LBB37_1:                               # %for.cond17.preheader
	testl	%r9d, %r9d
	jle	.LBB37_11
# %bb.2:                                # %for.cond23.preheader.lr.ph
	movslq	%esi, %rax
	movslq	%ecx, %rcx
	addq	$19, %rdi
	addq	$19, %rdx
	.p2align	4, 0x90
.LBB37_3:                               # %for.cond23.preheader
                                        # =>This Inner Loop Header: Depth=1
	movzbl	-19(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -19(%rdi)
	movzbl	-18(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -18(%rdi)
	movzbl	-17(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -17(%rdi)
	movzbl	-16(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -16(%rdi)
	movzbl	-15(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -15(%rdi)
	movzbl	-14(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -14(%rdi)
	movzbl	-13(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -13(%rdi)
	movzbl	-12(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -12(%rdi)
	movzbl	-11(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -11(%rdi)
	movzbl	-10(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -10(%rdi)
	movzbl	-9(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -9(%rdi)
	movzbl	-8(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -8(%rdi)
	movzbl	-7(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -7(%rdi)
	movzbl	-6(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -6(%rdi)
	movzbl	-5(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -5(%rdi)
	movzbl	-4(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -4(%rdi)
	movzbl	-3(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -3(%rdi)
	movzbl	-2(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -2(%rdi)
	movzbl	-1(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, -1(%rdi)
	movzbl	(%rdx), %esi
	imull	36(%r8), %esi
	addl	40(%r8), %esi
	testl	%esi, %esi
	setg	%r10b
	negb	%r10b
	cmpl	$256, %esi                      # imm = 0x100
	movzbl	%r10b, %r10d
	cmovbl	%esi, %r10d
	movb	%r10b, (%rdi)
	addq	%rax, %rdi
	addq	%rcx, %rdx
	decl	%r9d
	jne	.LBB37_3
.LBB37_11:                              # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	mc_weight_w20, .Lfunc_end37-mc_weight_w20
	.cfi_endproc
                                        # -- End function
	.type	weight_none,@object             # @weight_none
	.section	.rodata,"a",@progbits
	.globl	weight_none
	.p2align	4, 0x0
weight_none:
	.zero	16
	.zero	16
	.long	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.zero	8
	.zero	64
	.zero	64
	.size	weight_none, 192

	.type	x264_mc_weight_wtab,@object     # @x264_mc_weight_wtab
	.data
	.p2align	4, 0x0
x264_mc_weight_wtab:
	.quad	mc_weight_w2
	.quad	mc_weight_w4
	.quad	mc_weight_w8
	.quad	mc_weight_w12
	.quad	mc_weight_w16
	.quad	mc_weight_w20
	.size	x264_mc_weight_wtab, 48

	.type	hpel_ref0,@object               # @hpel_ref0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
hpel_ref0:
	.ascii	"\000\001\001\001\000\001\001\001\002\003\003\003\000\001\001\001"
	.size	hpel_ref0, 16

	.type	hpel_ref1,@object               # @hpel_ref1
	.p2align	4, 0x0
hpel_ref1:
	.ascii	"\000\000\000\000\002\002\003\002\002\002\003\002\002\002\003\002"
	.size	hpel_ref1, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
