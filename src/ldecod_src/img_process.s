	.text
	.file	"img_process.c"
	.globl	init_process_image              # -- Begin function init_process_image
	.p2align	4, 0x90
	.type	init_process_image,@function
init_process_image:                     # @init_process_image
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	init_process_image, .Lfunc_end0-init_process_image
	.cfi_endproc
                                        # -- End function
	.globl	clear_process_image             # -- Begin function clear_process_image
	.p2align	4, 0x90
	.type	clear_process_image,@function
clear_process_image:                    # @clear_process_image
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end1:
	.size	clear_process_image, .Lfunc_end1-clear_process_image
	.cfi_endproc
                                        # -- End function
	.globl	process_image                   # -- Begin function process_image
	.p2align	4, 0x90
	.type	process_image,@function
process_image:                          # @process_image
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	1064(%rsi), %eax
	decl	%eax
	cmpl	$3, %eax
	ja	.LBB2_2
# %bb.1:                                # %entry
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_15:                               # %sw.bb2
	movq	849440(%rbx), %rax
	movq	849760(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849652(%rbx), %rax
	movslq	849640(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	cmpl	$0, 849624(%rbx)
	je	.LBB2_17
# %bb.16:                               # %if.then.i98
	movq	849448(%rbx), %rax
	movq	849768(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	849456(%rbx), %rax
	movq	849776(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
.LBB2_17:                               # %FilterImage.exit
	cmpl	$0, 1068(%r14)
	je	.LBB2_67
# %bb.18:                               # %if.then7
	movq	850720(%rbx), %rax
	movq	851040(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850932(%rbx), %rax
	movslq	850920(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	cmpl	$0, 850904(%rbx)
	je	.LBB2_20
# %bb.19:                               # %if.then.i119
	movq	850728(%rbx), %rax
	movq	851048(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850936(%rbx), %rax
	movslq	850924(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	850736(%rbx), %rax
	movq	851056(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850936(%rbx), %rax
	movslq	850924(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
.LBB2_20:                               # %FilterImage.exit132
	cmpl	$2, 850612(%rbx)
	jl	.LBB2_23
# %bb.21:                               # %for.body.lr.ph.i167
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_22:                               # %for.body.i171
                                        # =>This Inner Loop Header: Depth=1
	movq	849440(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850720(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850600(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850612(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_22
.LBB2_23:                               # %for.end.i135
	cmpl	$0, 850584(%rbx)
	je	.LBB2_67
# %bb.24:                               # %for.cond12.preheader.i137
	cmpl	$2, 850616(%rbx)
	jl	.LBB2_27
# %bb.25:                               # %for.body18.lr.ph.i155
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_26:                               # %for.body18.i159
                                        # =>This Inner Loop Header: Depth=1
	movq	849448(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850728(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850604(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850616(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_26
.LBB2_27:                               # %for.cond35.preheader.i140
	cmpl	$2, 850620(%rbx)
	jl	.LBB2_67
# %bb.28:                               # %for.body41.lr.ph.i143
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_29:                               # %for.body41.i147
                                        # =>This Inner Loop Header: Depth=1
	movq	849456(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850736(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850608(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850620(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_29
	jmp	.LBB2_67
.LBB2_45:                               # %sw.bb23
	leaq	849304(%rbx), %rdi
	leaq	849624(%rbx), %rsi
	leaq	849944(%rbx), %rdx
	leaq	850264(%rbx), %rcx
	callq	MuxImages
	cmpl	$0, 1068(%r14)
	je	.LBB2_67
# %bb.46:                               # %if.then29
	leaq	850584(%rbx), %r14
	leaq	850904(%rbx), %rsi
	leaq	851224(%rbx), %rdx
	leaq	851544(%rbx), %rcx
	movq	%r14, %rdi
	callq	MuxImages
	cmpl	$2, 850612(%rbx)
	jl	.LBB2_49
# %bb.47:                               # %for.body.lr.ph.i304
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB2_48:                               # %for.body.i308
                                        # =>This Inner Loop Header: Depth=1
	movq	849440(%rbx), %rax
	movq	(%rax,%r15,8), %rdi
	movq	850720(%rbx), %rax
	movq	(%rax,%r15,8), %rsi
	movslq	850600(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r15
	movslq	850612(%rbx), %rax
	cmpq	%rax, %r15
	jl	.LBB2_48
.LBB2_49:                               # %for.end.i272
	cmpl	$0, (%r14)
	je	.LBB2_67
# %bb.50:                               # %for.cond12.preheader.i274
	cmpl	$2, 850616(%rbx)
	jl	.LBB2_53
# %bb.51:                               # %for.body18.lr.ph.i292
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_52:                               # %for.body18.i296
                                        # =>This Inner Loop Header: Depth=1
	movq	849448(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850728(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850604(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850616(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_52
.LBB2_53:                               # %for.cond35.preheader.i277
	cmpl	$2, 850620(%rbx)
	jl	.LBB2_67
# %bb.54:                               # %for.body41.lr.ph.i280
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_55:                               # %for.body41.i284
                                        # =>This Inner Loop Header: Depth=1
	movq	849456(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850736(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850608(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850620(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_55
	jmp	.LBB2_67
.LBB2_56:                               # %sw.bb36
	leaq	849304(%rbx), %r15
	leaq	849624(%rbx), %rsi
	movq	%r15, %rdi
	callq	FilterImageSep
	cmpl	$0, 1068(%r14)
	je	.LBB2_67
# %bb.57:                               # %if.then41
	leaq	850904(%rbx), %rsi
	movq	%r15, %rdi
	callq	FilterImageSep
	cmpl	$2, 850612(%rbx)
	jl	.LBB2_60
# %bb.58:                               # %for.body.lr.ph.i351
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_59:                               # %for.body.i355
                                        # =>This Inner Loop Header: Depth=1
	movq	849440(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850720(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850600(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850612(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_59
.LBB2_60:                               # %for.end.i319
	cmpl	$0, 850584(%rbx)
	je	.LBB2_67
# %bb.61:                               # %for.cond12.preheader.i321
	cmpl	$2, 850616(%rbx)
	jl	.LBB2_64
# %bb.62:                               # %for.body18.lr.ph.i339
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_63:                               # %for.body18.i343
                                        # =>This Inner Loop Header: Depth=1
	movq	849448(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850728(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850604(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850616(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_63
.LBB2_64:                               # %for.cond35.preheader.i324
	cmpl	$2, 850620(%rbx)
	jl	.LBB2_67
# %bb.65:                               # %for.body41.lr.ph.i327
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_66:                               # %for.body41.i331
                                        # =>This Inner Loop Header: Depth=1
	movq	849456(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850736(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850608(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850620(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_66
	jmp	.LBB2_67
.LBB2_30:                               # %sw.bb12
	movq	849440(%rbx), %rax
	movq	849760(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849652(%rbx), %rax
	movslq	849640(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	cmpl	$0, 849624(%rbx)
	je	.LBB2_32
# %bb.31:                               # %if.then.i188
	movq	849448(%rbx), %rax
	movq	849776(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	849456(%rbx), %rax
	movq	849768(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
.LBB2_32:                               # %YV12toYUV.exit
	cmpl	$0, 1068(%r14)
	je	.LBB2_67
# %bb.33:                               # %if.then17
	movq	850720(%rbx), %rax
	movq	851040(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850932(%rbx), %rax
	movslq	850920(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	cmpl	$0, 850904(%rbx)
	je	.LBB2_35
# %bb.34:                               # %if.then.i209
	movq	850728(%rbx), %rax
	movq	851056(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850936(%rbx), %rax
	movslq	850924(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	850736(%rbx), %rax
	movq	851048(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	850936(%rbx), %rax
	movslq	850924(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
.LBB2_35:                               # %YV12toYUV.exit222
	cmpl	$2, 850612(%rbx)
	jl	.LBB2_38
# %bb.36:                               # %for.body.lr.ph.i257
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_37:                               # %for.body.i261
                                        # =>This Inner Loop Header: Depth=1
	movq	849440(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850720(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850600(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850612(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_37
.LBB2_38:                               # %for.end.i225
	cmpl	$0, 850584(%rbx)
	je	.LBB2_67
# %bb.39:                               # %for.cond12.preheader.i227
	cmpl	$2, 850616(%rbx)
	jl	.LBB2_42
# %bb.40:                               # %for.body18.lr.ph.i245
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_41:                               # %for.body18.i249
                                        # =>This Inner Loop Header: Depth=1
	movq	849448(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850728(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850604(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850616(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_41
.LBB2_42:                               # %for.cond35.preheader.i230
	cmpl	$2, 850620(%rbx)
	jl	.LBB2_67
# %bb.43:                               # %for.body41.lr.ph.i233
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_44:                               # %for.body41.i237
                                        # =>This Inner Loop Header: Depth=1
	movq	849456(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	850736(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850608(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850620(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_44
	jmp	.LBB2_67
.LBB2_2:                                # %sw.bb
	movq	849440(%rbx), %rax
	movq	849760(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849652(%rbx), %rax
	movslq	849640(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	cmpl	$0, 849624(%rbx)
	je	.LBB2_4
# %bb.3:                                # %if.then.i
	movq	849448(%rbx), %rax
	movq	849768(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	movq	849456(%rbx), %rax
	movq	849776(%rbx), %rcx
	movq	(%rax), %rdi
	movq	(%rcx), %rsi
	movslq	849656(%rbx), %rax
	movslq	849644(%rbx), %rdx
	imulq	%rax, %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
.LBB2_4:                                # %CPImage.exit
	cmpl	$0, 1068(%r14)
	je	.LBB2_67
# %bb.5:                                # %if.then
	cmpl	$2, 850932(%rbx)
	jl	.LBB2_8
# %bb.6:                                # %for.body.lr.ph.i
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_7:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	849440(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	851040(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850920(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850932(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_7
.LBB2_8:                                # %for.end.i
	cmpl	$0, 850904(%rbx)
	je	.LBB2_67
# %bb.9:                                # %for.cond12.preheader.i
	cmpl	$2, 850936(%rbx)
	jl	.LBB2_12
# %bb.10:                               # %for.body18.lr.ph.i
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_11:                               # %for.body18.i
                                        # =>This Inner Loop Header: Depth=1
	movq	849448(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	851048(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850924(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850936(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_11
.LBB2_12:                               # %for.cond35.preheader.i
	cmpl	$2, 850940(%rbx)
	jl	.LBB2_67
# %bb.13:                               # %for.body41.lr.ph.i
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB2_14:                               # %for.body41.i
                                        # =>This Inner Loop Header: Depth=1
	movq	849456(%rbx), %rax
	movq	(%rax,%r14,8), %rdi
	movq	851056(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movslq	850928(%rbx), %rdx
	addq	%rdx, %rdx
	callq	memcpy@PLT
	addq	$2, %r14
	movslq	850940(%rbx), %rax
	cmpq	%rax, %r14
	jl	.LBB2_14
.LBB2_67:                               # %sw.epilog
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	process_image, .Lfunc_end2-process_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_15
	.quad	.LBB2_30
	.quad	.LBB2_45
	.quad	.LBB2_56
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function MuxImages
	.type	MuxImages,@function
MuxImages:                              # @MuxImages
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
	movq	%rcx, %rax
	movl	28(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_8
# %bb.1:                                # %for.cond1.preheader.lr.ph
	movl	16(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_8
# %bb.2:                                # %for.cond1.preheader.preheader
	xorl	%r9d, %r9d
	jmp	.LBB3_3
	.p2align	4, 0x90
.LBB3_7:                                # %for.inc43
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%r9
	movslq	%r8d, %r10
	cmpq	%r10, %r9
	jge	.LBB3_8
.LBB3_3:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	testl	%ecx, %ecx
	jle	.LBB3_7
# %bb.4:                                # %for.body5.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_5:                                # %for.body5
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	136(%rsi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movzwl	(%rcx,%r10,2), %ecx
	movl	100(%rax), %r11d
	movq	136(%rax), %r8
	movq	(%r8,%r9,8), %r8
	movzwl	(%r8,%r10,2), %ebx
	subl	%ebx, %r11d
	imull	%ecx, %r11d
	movq	136(%rdx), %rcx
	movq	(%rcx,%r9,8), %r14
	movzbl	88(%rax), %r8d
	leal	-1(%r8), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	movzwl	(%r14,%r10,2), %ecx
	imull	%ebx, %ecx
	addl	%ecx, %ebp
	addl	%r11d, %ebp
	movl	%r8d, %ecx
	sarl	%cl, %ebp
	movq	136(%rdi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movw	%bp, (%rcx,%r10,2)
	incq	%r10
	movslq	16(%rdi), %rcx
	cmpq	%rcx, %r10
	jl	.LBB3_5
# %bb.6:                                # %for.inc43.loopexit
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	28(%rdi), %r8d
	jmp	.LBB3_7
.LBB3_8:                                # %for.end45
	cmpl	$0, (%rdi)
	je	.LBB3_25
# %bb.9:                                # %for.cond49.preheader
	movl	32(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_25
# %bb.10:                               # %for.cond60.preheader.lr.ph
	movl	20(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_18
# %bb.11:                               # %for.cond60.preheader.preheader
	xorl	%r9d, %r9d
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_16:                               # %for.inc123
                                        #   in Loop: Header=BB3_12 Depth=1
	incq	%r9
	movslq	%ecx, %r10
	cmpq	%r10, %r9
	jge	.LBB3_17
.LBB3_12:                               # %for.cond60.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	testl	%r8d, %r8d
	jle	.LBB3_16
# %bb.13:                               # %for.body66.preheader
                                        #   in Loop: Header=BB3_12 Depth=1
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_14:                               # %for.body66
                                        #   Parent Loop BB3_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%rsi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movzwl	(%rcx,%r10,2), %ecx
	movl	104(%rax), %r11d
	movq	144(%rax), %r8
	movq	(%r8,%r9,8), %r8
	movzwl	(%r8,%r10,2), %ebx
	subl	%ebx, %r11d
	imull	%ecx, %r11d
	movq	144(%rdx), %rcx
	movq	(%rcx,%r9,8), %r14
	movzbl	92(%rax), %r8d
	leal	-1(%r8), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	movzwl	(%r14,%r10,2), %ecx
	imull	%ebx, %ecx
	addl	%ecx, %ebp
	addl	%r11d, %ebp
	movl	%r8d, %ecx
	sarl	%cl, %ebp
	movq	144(%rdi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movw	%bp, (%rcx,%r10,2)
	incq	%r10
	movslq	20(%rdi), %r8
	cmpq	%r8, %r10
	jl	.LBB3_14
# %bb.15:                               # %for.inc123.loopexit
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	32(%rdi), %ecx
	jmp	.LBB3_16
.LBB3_17:                               # %for.inc126
	testl	%ecx, %ecx
	jle	.LBB3_25
.LBB3_18:                               # %for.cond60.preheader.lr.ph.1
	movl	20(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_25
# %bb.19:                               # %for.cond60.preheader.1.preheader
	xorl	%r9d, %r9d
	jmp	.LBB3_20
	.p2align	4, 0x90
.LBB3_24:                               # %for.inc123.1
                                        #   in Loop: Header=BB3_20 Depth=1
	incq	%r9
	movslq	%ecx, %r10
	cmpq	%r10, %r9
	jge	.LBB3_25
.LBB3_20:                               # %for.cond60.preheader.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_22 Depth 2
	testl	%r8d, %r8d
	jle	.LBB3_24
# %bb.21:                               # %for.body66.1.preheader
                                        #   in Loop: Header=BB3_20 Depth=1
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB3_22:                               # %for.body66.1
                                        #   Parent Loop BB3_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	152(%rsi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movzwl	(%rcx,%r10,2), %ecx
	movl	108(%rax), %r11d
	movq	152(%rax), %r8
	movq	(%r8,%r9,8), %r8
	movzwl	(%r8,%r10,2), %ebx
	subl	%ebx, %r11d
	imull	%ecx, %r11d
	movq	152(%rdx), %rcx
	movq	(%rcx,%r9,8), %r14
	movzbl	96(%rax), %r8d
	leal	-1(%r8), %ecx
	movl	$1, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %ebp
	movzwl	(%r14,%r10,2), %ecx
	imull	%ebx, %ecx
	addl	%ecx, %ebp
	addl	%r11d, %ebp
	movl	%r8d, %ecx
	sarl	%cl, %ebp
	movq	152(%rdi), %rcx
	movq	(%rcx,%r9,8), %rcx
	movw	%bp, (%rcx,%r10,2)
	incq	%r10
	movslq	20(%rdi), %r8
	cmpq	%r8, %r10
	jl	.LBB3_22
# %bb.23:                               # %for.inc123.loopexit.1
                                        #   in Loop: Header=BB3_20 Depth=1
	movl	32(%rdi), %ecx
	jmp	.LBB3_24
.LBB3_25:                               # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	MuxImages, .Lfunc_end3-MuxImages
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function FilterImageSep
	.type	FilterImageSep,@function
FilterImageSep:                         # @FilterImageSep
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
	movq	%rsi, %rax
	movq	%rdi, %r14
	movl	16(%rdi), %ebp
	movl	28(%rdi), %ecx
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	16(%rsi), %esi
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movl	28(%rax), %edi
	callq	new_mem2Dint@PLT
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movl	28(%r14), %r10d
	testl	%r10d, %r10d
	jle	.LBB4_27
# %bb.1:                                # %for.cond13.preheader.lr.ph
	movl	16(%r14), %r11d
	testl	%r11d, %r11d
	jle	.LBB4_27
# %bb.2:                                # %for.cond13.preheader.preheader
	decl	%ebp
	decl	24(%rsp)                        # 4-byte Folded Spill
	movl	%ebp, %ecx
	sarl	$31, %ecx
	andl	%ebp, %ecx
	testl	%ebp, %ebp
	movslq	%ecx, %r15
	movl	$1, %edx
	cmovlel	%ebp, %edx
	cmpl	$2, %ebp
	movl	$2, %esi
	cmovll	%ebp, %esi
	movslq	%edx, %rdx
	movl	$3, %edi
	cmovlel	%ebp, %edi
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	cmpl	$4, %ebp
	movl	$4, %r8d
	cmovll	%ebp, %r8d
	movslq	%r8d, %r8
	xorl	%r9d, %r9d
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_9:                                # %for.inc82.loopexit
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	28(%r14), %r10d
.LBB4_10:                               # %for.inc82
                                        #   in Loop: Header=BB4_3 Depth=1
	incq	%r9
	movslq	%r10d, %rcx
	cmpq	%rcx, %r9
	jge	.LBB4_11
.LBB4_3:                                # %for.cond13.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
	testl	%r11d, %r11d
	jle	.LBB4_10
# %bb.4:                                # %for.body18.lr.ph
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	136(%rax), %r10
	movq	(%r10,%r9,8), %r10
	movzwl	(%r10,%r15,2), %r11d
	movzwl	(%r10,%rdx,2), %ebx
	movzwl	(%r10,%rsi,2), %r12d
	movzwl	(%r10,%rdi,2), %r10d
	addl	%r11d, %ebx
	leal	(%rbx,%rbx,4), %ebx
	addl	%r11d, %r12d
	leal	(%r12,%r12,4), %r12d
	addl	%r11d, %r10d
	leal	(%r10,%rbx,4), %r10d
	subl	%r12d, %r10d
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r9,8), %r11
	movl	%r10d, (%r11)
	movl	16(%r14), %r11d
	cmpl	$2, %r11d
	jl	.LBB4_9
# %bb.5:                                # %for.body18.peel.next
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	136(%rax), %r10
	movq	(%r10,%r9,8), %r10
	movzwl	(%r10,%r15,2), %r11d
	movzwl	(%r10,%rdx,2), %ebx
	movzwl	(%r10,%rsi,2), %r12d
	addl	%ebx, %r12d
	movzwl	(%r10,%rdi,2), %ebx
	movzwl	(%r10,%r8,2), %r10d
	leal	(%r12,%r12,4), %r12d
	addl	%r11d, %ebx
	leal	(%rbx,%rbx,4), %ebx
	addl	%r11d, %r10d
	leal	(%r10,%r12,4), %r10d
	subl	%ebx, %r10d
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx,%r9,8), %r11
	movl	%r10d, 4(%r11)
	movl	16(%r14), %r11d
	cmpl	$3, %r11d
	jl	.LBB4_9
# %bb.6:                                # %for.body18.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	movl	$2, %ebx
	movl	$5, %r10d
	movq	16(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_7:                                # %for.body18
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	136(%rax), %r11
	movq	(%r11,%r9,8), %r11
	leal	-5(%r10), %r12d
	cmpl	%ebp, %r12d
	cmovgel	%ebp, %r12d
	movslq	%r12d, %r12
	movzwl	(%r11,%r12,2), %r12d
	leal	-4(%r10), %r13d
	cmpl	%ebp, %r13d
	cmovgel	%ebp, %r13d
	movslq	%r13d, %r13
	movzwl	(%r11,%r13,2), %r13d
	cmpl	%ebp, %ebx
	movl	%ebp, %r15d
	cmovll	%ebx, %r15d
	movslq	%r15d, %r15
	movzwl	(%r11,%r15,2), %r15d
	leal	-2(%r10), %r8d
	cmpl	%ebp, %r8d
	cmovgel	%ebp, %r8d
	movslq	%r8d, %r8
	movzwl	(%r11,%r8,2), %r8d
	leal	-1(%r10), %ecx
	cmpl	%ebp, %ecx
	cmovgel	%ebp, %ecx
	movslq	%ecx, %rcx
	movzwl	(%r11,%rcx,2), %ecx
	cmpl	%ebp, %r10d
	movl	%ebp, %esi
	cmovll	%r10d, %ebp
	movslq	%ebp, %rbp
	movzwl	(%r11,%rbp,2), %r11d
	movl	%esi, %ebp
	addl	%r12d, %r11d
	addl	%r15d, %r8d
	leal	(%r8,%r8,4), %r8d
	addl	%r13d, %ecx
	leal	(%rcx,%rcx,4), %ecx
	leal	(%r11,%r8,4), %r8d
	subl	%ecx, %r8d
	movq	(%rdx,%r9,8), %rcx
	movl	%r8d, (%rcx,%rbx,4)
	leaq	1(%rbx), %rcx
	movslq	16(%r14), %r11
	incl	%r10d
	movq	%rcx, %rbx
	cmpq	%r11, %rcx
	jl	.LBB4_7
# %bb.8:                                #   in Loop: Header=BB4_3 Depth=1
	movq	8(%rsp), %r15                   # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %r8                   # 8-byte Reload
	jmp	.LBB4_9
.LBB4_11:                               # %for.cond85.preheader
	testl	%r10d, %r10d
	jle	.LBB4_27
# %bb.12:                               # %for.cond92.preheader.lr.ph
	movl	16(%r14), %ebx
	testl	%ebx, %ebx
	jle	.LBB4_27
# %bb.13:                               # %for.cond92.preheader.preheader
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	jmp	.LBB4_14
	.p2align	4, 0x90
.LBB4_25:                               # %for.inc159.loopexit
                                        #   in Loop: Header=BB4_14 Depth=1
	movl	28(%r14), %r10d
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movslq	%r10d, %rcx
	cmpq	%rcx, %rdx
	jge	.LBB4_27
.LBB4_14:                               # %for.cond92.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	testl	%ebx, %ebx
	jle	.LBB4_15
# %bb.16:                               # %for.body98.lr.ph
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	$3, %ecx
	movl	$2, %edx
	cmovgel	%ecx, %edx
	addl	$-2, %edx
	movl	24(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %edx
	cmovgel	%eax, %edx
	cmpl	$2, %ecx
	movl	$1, %edi
	cmovgel	%ecx, %edi
	decl	%edi
	cmpl	%eax, %edi
	cmovgel	%eax, %edi
	movslq	%edx, %rsi
	movslq	%edi, %rdi
	cmpl	%eax, %ecx
	movl	%eax, %edx
	cmovll	%ecx, %edx
	movslq	%edx, %r8
	leaq	1(%rcx), %rdx
	cmpl	%eax, %edx
	movl	%eax, %r9d
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	cmovll	%edx, %r9d
	leal	2(%rcx), %r10d
	cmpl	%eax, %r10d
	cmovgel	%eax, %r10d
	movslq	%r9d, %r9
	movslq	%r10d, %r10
	leal	3(%rcx), %r11d
	cmpl	%eax, %r11d
	cmovgel	%eax, %r11d
	movslq	%r11d, %r11
	xorl	%r15d, %r15d
	jmp	.LBB4_17
	.p2align	4, 0x90
.LBB4_24:                               # %rshift_rnd_sign.exit
                                        #   in Loop: Header=BB4_17 Depth=2
	movq	136(%r14), %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movw	%bx, (%rcx,%r15,2)
	incq	%r15
	movslq	16(%r14), %rbx
	cmpq	%rbx, %r15
	jge	.LBB4_25
.LBB4_17:                               # %for.body98
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax,%rsi,8), %r12
	movq	(%rax,%rdi,8), %r13
	movq	(%rax,%r8,8), %rbx
	movq	(%rax,%r9,8), %rbp
	movl	(%rbp,%r15,4), %ebp
	movq	(%rax,%r10,8), %rdx
	movl	(%rdx,%r15,4), %edx
	addl	(%rbx,%r15,4), %ebp
	movq	(%rax,%r11,8), %rcx
	leal	(%rbp,%rbp,4), %ebx
	addl	(%r13,%r15,4), %edx
	shll	$2, %ebx
	leal	(%rdx,%rdx,4), %edx
	addl	(%r12,%r15,4), %ebx
	addl	(%rcx,%r15,4), %ebx
	subl	%edx, %ebx
	testl	%ebx, %ebx
	jle	.LBB4_19
# %bb.18:                               # %cond.true.i
                                        #   in Loop: Header=BB4_17 Depth=2
	addl	$512, %ebx                      # imm = 0x200
	shrl	$10, %ebx
	testl	%ebx, %ebx
	jg	.LBB4_22
.LBB4_21:                               # %rshift_rnd_sign.exit
                                        #   in Loop: Header=BB4_17 Depth=2
	xorl	%ebx, %ebx
.LBB4_22:                               # %rshift_rnd_sign.exit
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	100(%r14), %r12d
	cmpl	%r12d, %ebx
	jl	.LBB4_24
# %bb.23:                               # %rshift_rnd_sign.exit
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	%r12d, %ebx
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_19:                               # %cond.false.i
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	$512, %ecx                      # imm = 0x200
	subl	%ebx, %ecx
	shrl	$10, %ecx
	negl	%ecx
	movl	%ecx, %ebx
	testl	%ebx, %ebx
	jle	.LBB4_21
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_15:                               # %for.cond92.preheader.for.inc159_crit_edge
                                        #   in Loop: Header=BB4_14 Depth=1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	incq	%rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, %rdx
	movslq	%r10d, %rcx
	cmpq	%rcx, %rdx
	jl	.LBB4_14
.LBB4_27:                               # %for.end161
	cmpl	$0, (%r14)
	movq	16(%rsp), %r9                   # 8-byte Reload
	je	.LBB4_56
# %bb.28:                               # %if.then
	movl	20(%r14), %r15d
	movl	32(%r14), %r12d
	leal	-1(%r15), %ecx
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	leal	-1(%r12), %eax
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movl	%ecx, %edx
	sarl	$31, %edx
	andl	%ecx, %edx
	testl	%ecx, %ecx
	movslq	%edx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	$1, %edx
	cmovlel	%ecx, %edx
	cmpl	$2, %ecx
	movl	$2, %esi
	cmovll	%ecx, %esi
	movslq	%edx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	$3, %edx
	cmovlel	%ecx, %edx
	movslq	%esi, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	cmpl	$4, %ecx
	movl	$4, %edx
	cmovll	%ecx, %edx
	movslq	%edx, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movl	$1, %r11d
	jmp	.LBB4_29
	.p2align	4, 0x90
.LBB4_55:                               # %for.inc351
                                        #   in Loop: Header=BB4_29 Depth=1
	incq	%r11
	cmpq	$3, %r11
	je	.LBB4_56
.LBB4_29:                               # %for.cond177.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_32 Depth 2
                                        #       Child Loop BB4_36 Depth 3
                                        #     Child Loop BB4_42 Depth 2
                                        #       Child Loop BB4_45 Depth 3
	testl	%r12d, %r12d
	jle	.LBB4_55
# %bb.30:                               # %for.cond184.preheader.lr.ph
                                        #   in Loop: Header=BB4_29 Depth=1
	testl	%r15d, %r15d
	jle	.LBB4_40
# %bb.31:                               # %for.cond184.preheader.preheader
                                        #   in Loop: Header=BB4_29 Depth=1
	xorl	%r13d, %r13d
	movq	64(%rsp), %rax                  # 8-byte Reload
	jmp	.LBB4_32
	.p2align	4, 0x90
.LBB4_37:                               # %for.inc268.loopexit
                                        #   in Loop: Header=BB4_32 Depth=2
	movl	32(%r14), %r12d
.LBB4_38:                               # %for.inc268
                                        #   in Loop: Header=BB4_32 Depth=2
	incq	%r13
	movslq	%r12d, %rdx
	cmpq	%rdx, %r13
	jge	.LBB4_39
.LBB4_32:                               # %for.cond184.preheader
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_36 Depth 3
	testl	%r15d, %r15d
	jle	.LBB4_38
# %bb.33:                               # %for.body190.lr.ph
                                        #   in Loop: Header=BB4_32 Depth=2
	movq	136(%rax,%r11,8), %rdx
	movq	(%rdx,%r13,8), %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rdx,%rsi,2), %esi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdx,%rdi,2), %edi
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%rdx,%r8,2), %r8d
	movq	72(%rsp), %r10                  # 8-byte Reload
	movzwl	(%rdx,%r10,2), %edx
	addl	%esi, %edi
	leal	(%rdi,%rdi,4), %edi
	addl	%esi, %r8d
	leal	(%r8,%r8,4), %r8d
	addl	%esi, %edx
	leal	(%rdx,%rdi,4), %edx
	subl	%r8d, %edx
	movq	(%r9,%r13,8), %rsi
	movl	%edx, (%rsi)
	movl	20(%r14), %r15d
	cmpl	$2, %r15d
	jl	.LBB4_37
# %bb.34:                               # %for.body190.peel.next
                                        #   in Loop: Header=BB4_32 Depth=2
	movq	136(%rax,%r11,8), %rdx
	movq	(%rdx,%r13,8), %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movzwl	(%rdx,%rsi,2), %esi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdx,%rdi,2), %edi
	movq	40(%rsp), %r8                   # 8-byte Reload
	movzwl	(%rdx,%r8,2), %r8d
	addl	%edi, %r8d
	movq	72(%rsp), %rdi                  # 8-byte Reload
	movzwl	(%rdx,%rdi,2), %edi
	movq	80(%rsp), %r10                  # 8-byte Reload
	movzwl	(%rdx,%r10,2), %edx
	leal	(%r8,%r8,4), %r8d
	addl	%esi, %edi
	leal	(%rdi,%rdi,4), %edi
	addl	%esi, %edx
	leal	(%rdx,%r8,4), %edx
	subl	%edi, %edx
	movq	(%r9,%r13,8), %rsi
	movl	%edx, 4(%rsi)
	movl	20(%r14), %r15d
	cmpl	$3, %r15d
	jl	.LBB4_37
# %bb.35:                               # %for.body190.preheader
                                        #   in Loop: Header=BB4_32 Depth=2
	movl	$2, %edi
	movl	$5, %esi
	movl	56(%rsp), %ecx                  # 4-byte Reload
	.p2align	4, 0x90
.LBB4_36:                               # %for.body190
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	136(%rax,%r11,8), %rdx
	movq	(%rdx,%r13,8), %r8
	leal	-5(%rsi), %edx
	cmpl	%ecx, %edx
	cmovgel	%ecx, %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %r9d
	leal	-4(%rsi), %edx
	cmpl	%ecx, %edx
	cmovgel	%ecx, %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %r10d
	cmpl	%ecx, %edi
	movl	%ecx, %edx
	cmovll	%edi, %edx
	movslq	%edx, %rdx
	movzwl	(%r8,%rdx,2), %edx
	leal	-2(%rsi), %ebx
	cmpl	%ecx, %ebx
	cmovgel	%ecx, %ebx
	movslq	%ebx, %rbx
	movzwl	(%r8,%rbx,2), %ebx
	leal	-1(%rsi), %ebp
	cmpl	%ecx, %ebp
	cmovgel	%ecx, %ebp
	movslq	%ebp, %r15
	movzwl	(%r8,%r15,2), %r15d
	cmpl	%ecx, %esi
	movl	%ecx, %ebp
	cmovll	%esi, %ebp
	movslq	%ebp, %r12
	movzwl	(%r8,%r12,2), %r8d
	addl	%r9d, %r8d
	addl	%edx, %ebx
	addl	%r10d, %r15d
	movq	16(%rsp), %r9                   # 8-byte Reload
	leal	(%rbx,%rbx,4), %edx
	leal	(%r8,%rdx,4), %edx
	leal	(%r15,%r15,4), %r8d
	subl	%r8d, %edx
	movq	(%r9,%r13,8), %r8
	movl	%edx, (%r8,%rdi,4)
	incq	%rdi
	movslq	20(%r14), %r15
	incl	%esi
	cmpq	%r15, %rdi
	jl	.LBB4_36
	jmp	.LBB4_37
	.p2align	4, 0x90
.LBB4_39:                               # %for.cond271.preheader
                                        #   in Loop: Header=BB4_29 Depth=1
	testl	%r12d, %r12d
	jle	.LBB4_55
.LBB4_40:                               # %for.cond278.preheader.lr.ph
                                        #   in Loop: Header=BB4_29 Depth=1
	testl	%r15d, %r15d
	jle	.LBB4_55
# %bb.41:                               # %for.cond278.preheader.preheader
                                        #   in Loop: Header=BB4_29 Depth=1
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	jmp	.LBB4_42
	.p2align	4, 0x90
.LBB4_53:                               # %for.inc348.loopexit
                                        #   in Loop: Header=BB4_42 Depth=2
	movl	32(%r14), %r12d
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %r9                   # 8-byte Reload
	movslq	%r12d, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB4_55
.LBB4_42:                               # %for.cond278.preheader
                                        #   Parent Loop BB4_29 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_45 Depth 3
	testl	%r15d, %r15d
	jle	.LBB4_43
# %bb.44:                               # %for.body284.lr.ph
                                        #   in Loop: Header=BB4_42 Depth=2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	cmpl	$3, %ecx
	movl	$2, %edx
	cmovgel	%ecx, %edx
	addl	$-2, %edx
	movl	60(%rsp), %eax                  # 4-byte Reload
	cmpl	%eax, %edx
	cmovgel	%eax, %edx
	cmpl	$2, %ecx
	movl	$1, %esi
	cmovgel	%ecx, %esi
	decl	%esi
	cmpl	%eax, %esi
	cmovgel	%eax, %esi
	movslq	%edx, %r12
	movslq	%esi, %r10
	cmpl	%eax, %ecx
	movl	%eax, %edx
	cmovll	%ecx, %edx
	movslq	%edx, %rsi
	leaq	1(%rcx), %rdi
	cmpl	%eax, %edi
	movl	%eax, %edx
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	cmovll	%edi, %edx
	leal	2(%rcx), %r8d
	cmpl	%eax, %r8d
	cmovgel	%eax, %r8d
	movslq	%edx, %rdi
	movslq	%r8d, %r8
	leal	3(%rcx), %edx
	cmpl	%eax, %edx
	cmovgel	%eax, %edx
	movslq	%edx, %r9
	xorl	%ebx, %ebx
	jmp	.LBB4_45
	.p2align	4, 0x90
.LBB4_52:                               # %rshift_rnd_sign.exit555
                                        #   in Loop: Header=BB4_45 Depth=3
	movq	136(%r14,%r11,8), %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rdx,%rax,8), %rdx
	movw	%r15w, (%rdx,%rbx,2)
	incq	%rbx
	movslq	20(%r14), %r15
	cmpq	%r15, %rbx
	jge	.LBB4_53
.LBB4_45:                               # %for.body284
                                        #   Parent Loop BB4_29 Depth=1
                                        #     Parent Loop BB4_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r11, %rcx
	movq	%r14, %rax
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	(%r13,%r12,8), %rdx
	movq	(%r13,%r10,8), %rbp
	movq	(%r13,%rsi,8), %r15
	movq	(%r13,%rdi,8), %r14
	movl	(%r14,%rbx,4), %r14d
	movq	(%r13,%r8,8), %r11
	movl	(%r11,%rbx,4), %r11d
	addl	(%r15,%rbx,4), %r14d
	movq	(%r13,%r9,8), %r13
	leal	(%r14,%r14,4), %r15d
	addl	(%rbp,%rbx,4), %r11d
	shll	$2, %r15d
	leal	(%r11,%r11,4), %r11d
	addl	(%rdx,%rbx,4), %r15d
	addl	(%r13,%rbx,4), %r15d
	subl	%r11d, %r15d
	testl	%r15d, %r15d
	jle	.LBB4_47
# %bb.46:                               # %cond.true.i552
                                        #   in Loop: Header=BB4_45 Depth=3
	addl	$512, %r15d                     # imm = 0x200
	shrl	$10, %r15d
	testl	%r15d, %r15d
	movq	%rax, %r14
	movq	%rcx, %r11
	jg	.LBB4_50
.LBB4_49:                               # %rshift_rnd_sign.exit555
                                        #   in Loop: Header=BB4_45 Depth=3
	xorl	%r15d, %r15d
.LBB4_50:                               # %rshift_rnd_sign.exit555
                                        #   in Loop: Header=BB4_45 Depth=3
	movl	100(%r14,%r11,4), %edx
	cmpl	%edx, %r15d
	jl	.LBB4_52
# %bb.51:                               # %rshift_rnd_sign.exit555
                                        #   in Loop: Header=BB4_45 Depth=3
	movl	%edx, %r15d
	jmp	.LBB4_52
	.p2align	4, 0x90
.LBB4_47:                               # %cond.false.i547
                                        #   in Loop: Header=BB4_45 Depth=3
	movl	$512, %edx                      # imm = 0x200
	subl	%r15d, %edx
	shrl	$10, %edx
	negl	%edx
	movl	%edx, %r15d
	testl	%r15d, %r15d
	movq	%rax, %r14
	movq	%rcx, %r11
	jle	.LBB4_49
	jmp	.LBB4_50
	.p2align	4, 0x90
.LBB4_43:                               # %for.cond278.preheader.for.inc348_crit_edge
                                        #   in Loop: Header=BB4_42 Depth=2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	incq	%rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movslq	%r12d, %rdx
	cmpq	%rdx, %rcx
	jl	.LBB4_42
	jmp	.LBB4_55
.LBB4_56:                               # %if.end
	movq	%r9, %rdi
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
	jmp	free_mem2Dint@PLT               # TAILCALL
.Lfunc_end4:
	.size	FilterImageSep, .Lfunc_end4-FilterImageSep
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
