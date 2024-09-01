	.text
	.file	"cavlc.c"
	.globl	x264_macroblock_write_cavlc     # -- Begin function x264_macroblock_write_cavlc
	.p2align	4, 0x90
	.type	x264_macroblock_write_cavlc,@function
x264_macroblock_write_cavlc:            # @x264_macroblock_write_cavlc
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
	movq	%rdi, %r11
	movslq	17384(%rdi), %r12
	movslq	7248(%rdi), %rax
	movzbl	x264_macroblock_write_cavlc.i_offsets(%rax), %eax
	movq	1800(%rdi), %rsi
	movl	1792(%rdi), %ecx
	subl	%esi, %ecx
	movl	1824(%rdi), %edx
	movl	%edx, %edi
	cmpl	$0, 7268(%r11)
	je	.LBB0_6
# %bb.1:                                # %land.lhs.true
	testb	$1, 16388(%r11)
	je	.LBB0_4
# %bb.2:                                # %lor.lhs.false
	movq	16616(%r11), %r8
	movslq	16392(%r11), %r9
	movslq	16372(%r11), %r10
	subq	%r10, %r9
	movzbl	(%r8,%r9), %r8d
	cmpl	$18, %r8d
	je	.LBB0_4
# %bb.3:                                # %lor.lhs.false
	cmpl	$6, %r8d
	jne	.LBB0_6
.LBB0_4:                                # %if.then
	movl	16436(%r11), %r9d
	movq	1816(%r11), %r8
	addq	%r8, %r8
	orq	%r9, %r8
	movq	%r8, 1816(%r11)
	decl	%edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jne	.LBB0_6
# %bb.5:                                # %if.then.i
	bswapl	%r8d
	movl	%r8d, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %edx
.LBB0_6:                                # %if.end
	leal	(%rdi,%rcx,8), %r13d
	cmpl	$3, %r12d
	jne	.LBB0_9
# %bb.7:                                # %if.then28
	movq	1792(%r11), %rbx
	movq	1816(%r11), %rdi
	leaq	26(%rax), %r8
	movzbl	x264_ue_size_tab+26(%rax), %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_25
# %bb.8:                                # %if.then.i.i
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %edx
	addl	$32, %edx
	movq	1792(%r11), %rax
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movq	1816(%r11), %rdi
	jmp	.LBB0_26
.LBB0_9:                                # %if.end80
	cmpl	$1, %r12d
	movq	%r11, (%rsp)                    # 8-byte Spill
	ja	.LBB0_29
# %bb.10:                               # %if.then86
	xorl	%edi, %edi
	cmpl	$1, %r12d
	sete	%dil
	movzbl	x264_ue_size_tab+1(%rax), %ecx
	leaq	1(%rax), %r8
	movq	1816(%r11), %rax
	shlq	%cl, %rax
	orq	%r8, %rax
	movq	%rax, 1816(%r11)
	subl	%ecx, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_12
# %bb.11:                               # %if.then.i.i1295
	movl	%edx, %ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%rsi)
	movl	1824(%r11), %edx
	addl	$32, %edx
	movl	%edx, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_12:                               # %bs_write_ue.exit1303
	movq	3328(%r11), %rax
	cmpl	$0, 60(%rax)
	je	.LBB0_15
# %bb.13:                               # %if.then91
	movl	17396(%r11), %ecx
	movq	1816(%r11), %rax
	addq	%rax, %rax
	orq	%rcx, %rax
	movq	%rax, 1816(%r11)
	decl	%edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jne	.LBB0_15
# %bb.14:                               # %if.then.i1311
	bswapl	%eax
	movl	%eax, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %edx
.LBB0_15:                               # %if.end93
	leaq	(%rdi,%rdi,2), %rax
	incq	%rax
	xorl	%edi, %edi
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_16:                               # %if.then.i1361
                                        #   in Loop: Header=BB0_18 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r8
	bswapq	%r8
	movl	%r8d, (%rsi)
	movl	1824(%r11), %edx
	addl	$32, %edx
	movl	%edx, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_17:                               # %if.end117
                                        #   in Loop: Header=BB0_18 Depth=1
	addq	%rax, %rdi
	cmpq	$16, %rdi
	jae	.LBB0_34
.LBB0_18:                               # %for.body99
                                        # =>This Inner Loop Header: Depth=1
	movslq	x264_scan8(,%rdi,4), %rcx
	movsbq	25023(%r11,%rcx), %r8
	movsbq	25016(%r11,%rcx), %r9
	movzbl	x264_mb_pred_mode4x4_fix+1(%r8), %r10d
	movzbl	x264_mb_pred_mode4x4_fix+1(%r9), %r8d
	cmpb	%r8b, %r10b
	cmovll	%r10d, %r8d
	movl	$2, %r9d
	testb	%r8b, %r8b
	js	.LBB0_20
# %bb.19:                               # %for.body99
                                        #   in Loop: Header=BB0_18 Depth=1
	movl	%r8d, %r9d
.LBB0_20:                               # %for.body99
                                        #   in Loop: Header=BB0_18 Depth=1
	movsbq	25024(%r11,%rcx), %rcx
	movsbq	x264_mb_pred_mode4x4_fix+1(%rcx), %r8
	cmpb	%r8b, %r9b
	jne	.LBB0_23
# %bb.21:                               # %if.then113
                                        #   in Loop: Header=BB0_18 Depth=1
	movq	1816(%r11), %rcx
	leaq	1(,%rcx,2), %rcx
	movq	%rcx, 1816(%r11)
	decl	%edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jne	.LBB0_17
# %bb.22:                               # %if.then.i1348
                                        #   in Loop: Header=BB0_18 Depth=1
	bswapl	%ecx
	movl	%ecx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %edx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_23:                               # %if.else
                                        #   in Loop: Header=BB0_18 Depth=1
	xorl	%ecx, %ecx
	cmpb	%r8b, %r9b
	setl	%cl
	subl	%ecx, %r8d
	movq	1816(%r11), %rcx
	shlq	$4, %rcx
	orq	%rcx, %r8
	movq	%r8, 1816(%r11)
	leal	-4(%rdx), %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$36, %edx
	jle	.LBB0_16
# %bb.24:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%ecx, %edx
	jmp	.LBB0_17
.LBB0_25:
	movq	%rbx, %rax
.LBB0_26:                               # %bs_write_ue.exit
	movl	%esi, %ebp
	subl	%eax, %ebp
	shll	$3, %ebp
	subl	%edx, %ebp
	addl	26712(%r11), %r13d
	addl	%ebp, %r13d
	movl	%r13d, 26712(%r11)
	movl	%edx, %ecx
	andb	$7, %cl
	shlq	%cl, %rdi
	movq	%rdi, 1816(%r11)
	andl	$-8, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_28
# %bb.27:                               # %if.then.i.i1261
	bswapq	%rdi
	movl	%edx, %ecx
	shrq	%cl, %rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %edx
	addl	$32, %edx
	movl	%edx, 1824(%r11)
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rdi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_28:                               # %bs_align_0.exit
	movl	%edx, %ecx
	shll	%cl, %edi
	bswapl	%edi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	negl	%ecx
	movq	1800(%r11), %rax
	movslq	%ecx, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$8, %rdi
	movq	%rdi, 1800(%r11)
	movl	$64, 1824(%r11)
	movq	21344(%r11), %rsi
	movl	$256, %edx                      # imm = 0x100
	movq	%r11, %r14
	callq	memcpy@PLT
	movq	1800(%r14), %rax
	leaq	256(%rax), %rcx
	movq	%rcx, 1800(%r14)
	movq	21352(%r14), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 256(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 40(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	1800(%r14), %rax
	movq	21352(%r14), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	1800(%r14), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 1800(%r14)
	movq	21360(%r14), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 64(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 40(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	1800(%r14), %rax
	movq	21360(%r14), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	1800(%r14), %rsi
	leaq	64(%rsi), %rdx
	movl	1808(%r14), %edi
	subl	%edx, %edi
	movq	%rdx, %rax
	leal	(,%rdx,8), %ecx
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$3, %edx
	andq	$-4, %rax
	movq	%rax, 1792(%r14)
	movq	%rax, 1800(%r14)
	movslq	%edi, %rdi
	addq	%rdi, %rsi
	addq	$64, %rsi
	movq	%rsi, 1808(%r14)
	shll	$3, %edx
	movl	$64, %esi
	subl	%edx, %esi
	movl	%esi, 1824(%r14)
	movl	(%rax), %esi
	bswapl	%esi
	andb	$24, %cl
	addb	$32, %cl
	negb	%cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rsi
	movq	%rsi, 1816(%r14)
	movq	%rbx, 1792(%r14)
	subl	%ebx, %eax
	movl	26716(%r14), %ecx
	subl	%ebp, %edx
	leal	(%rdx,%rax,8), %eax
	addl	%ecx, %eax
	addl	$-64, %eax
	movl	%eax, 26716(%r14)
	jmp	.LBB0_272
.LBB0_29:                               # %if.else125
	leaq	1792(%r11), %r14
	leal	-2(%r12), %ecx
	cmpl	$15, %ecx
	ja	.LBB0_37
# %bb.30:                               # %if.else125
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_31:                               # %if.then128
	movslq	17408(%r11), %rcx
	movzbl	x264_mb_pred_mode16x16_fix(%rcx), %ecx
	movl	17400(%r11), %edi
	testl	%edi, %edi
	movl	$12, %r8d
	cmovel	%edi, %r8d
	movl	17404(%r11), %edi
	addl	%ecx, %eax
	leal	(%rax,%rdi,4), %eax
	addl	%r8d, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rax
	movq	%rax, 1816(%r11)
	subl	%ecx, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_33
# %bb.32:                               # %if.then.i.i1377
	movl	%edx, %ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%rsi)
	movl	1824(%r11), %edx
	addl	$32, %edx
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rax
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_33:                               # %bs_write_ue.exit1385
	movslq	17412(%r11), %rcx
	movzbl	x264_mb_pred_mode8x8c_fix(%rcx), %edi
	movzbl	x264_ue_size_tab+1(%rdi), %ecx
	incq	%rdi
	jmp	.LBB0_35
.LBB0_34:                               # %for.cond.cleanup98
	movslq	17412(%r11), %rax
	movzbl	x264_mb_pred_mode8x8c_fix(%rax), %edi
	movzbl	x264_ue_size_tab+1(%rdi), %ecx
	incq	%rdi
	movq	1816(%r11), %rax
.LBB0_35:                               # %for.cond.cleanup98
	shlq	%cl, %rax
	orq	%rdi, %rax
	movq	%rax, 1816(%r11)
	subl	%ecx, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_200
# %bb.36:                               # %if.then.i.i1329
	movl	%edx, %ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	jmp	.LBB0_200
.LBB0_37:                               # %if.then515
	movl	21416(%r11), %r15d
	movl	21420(%r11), %ebp
	movslq	17388(%r11), %rax
	leaq	(%rax,%rax,8), %rcx
	movzbl	mb_type_b_to_golomb-134(%r12,%rcx), %r8d
	movzbl	x264_ue_size_tab+1(%r8), %ecx
	incq	%r8
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jg	.LBB0_39
# %bb.38:                               # %if.then.i.i1720
	movl	%edx, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	movl	17388(%r11), %eax
.LBB0_39:                               # %bs_write_ue.exit1728
	decl	%r15d
	decl	%ebp
	cmpl	$16, %eax
	jne	.LBB0_91
# %bb.40:                               # %if.then541
	testl	%r15d, %r15d
	je	.LBB0_43
# %bb.41:                               # %land.lhs.true543
	cmpb	$0, x264_mb_type_list_table(,%r12,4)
	je	.LBB0_43
# %bb.42:                               # %if.then548
	movsbl	25132(%r11), %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_43:                               # %if.end556
	testl	%ebp, %ebp
	je	.LBB0_46
# %bb.44:                               # %land.lhs.true558
	cmpb	$0, x264_mb_type_list_table+2(,%r12,4)
	je	.LBB0_46
# %bb.45:                               # %if.then563
	movsbl	25172(%r11), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_46:                               # %if.end571
	cmpb	$0, x264_mb_type_list_table(,%r12,4)
	je	.LBB0_48
# %bb.47:                               # %if.then575
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_48:                               # %if.end576
	cmpb	$0, x264_mb_type_list_table+2(,%r12,4)
	je	.LBB0_200
# %bb.49:                               # %if.then580
	movq	%r11, %rdi
	movl	$1, %esi
	jmp	.LBB0_61
.LBB0_50:                               # %if.then256
	movzbl	25134(%r11), %ebx
	orb	25132(%r11), %bl
	orb	25148(%r11), %bl
	orb	25150(%r11), %bl
	je	.LBB0_115
# %bb.51:                               # %if.else290
	movq	1816(%r11), %rax
	shlq	$5, %rax
	orq	$4, %rax
	movq	%rax, 1816(%r11)
	leal	-5(%rdx), %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$37, %edx
	jg	.LBB0_116
# %bb.52:                               # %if.then.i.i1425
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rax
	bswapq	%rax
	movl	%eax, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	jmp	.LBB0_116
.LBB0_53:                               # %if.then151
	movl	17388(%r11), %eax
	cmpl	$14, %eax
	je	.LBB0_165
# %bb.54:                               # %if.then151
	cmpl	$15, %eax
	je	.LBB0_161
# %bb.55:                               # %if.then151
	cmpl	$16, %eax
	jne	.LBB0_200
# %bb.56:                               # %if.then155
	movq	1816(%r11), %rax
	leaq	1(,%rax,2), %rax
	movq	%rax, 1816(%r11)
	decl	%edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jne	.LBB0_58
# %bb.57:                               # %if.then.i1413
	bswapl	%eax
	movl	%eax, (%rsi)
	addq	$4, 1800(%r11)
	movl	$64, 1824(%r11)
.LBB0_58:                               # %bs_write1.exit1418
	movl	21416(%r11), %esi
	cmpl	$2, %esi
	jl	.LBB0_60
# %bb.59:                               # %if.then161
	decl	%esi
	movsbl	25132(%r11), %edx
	movq	%r14, %rdi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_60:                               # %if.end173
	movq	%r11, %rdi
	xorl	%esi, %esi
.LBB0_61:                               # %if.end697
	xorl	%edx, %edx
	jmp	.LBB0_169
.LBB0_62:                               # %if.else691
	movq	1816(%r11), %rax
	leaq	1(,%rax,2), %rax
	movq	%rax, 1816(%r11)
	decl	%edx
	movl	%edx, 1824(%r11)
	cmpl	$32, %edx
	jne	.LBB0_200
# %bb.63:                               # %if.then.i1735
	bswapl	%eax
	movl	%eax, (%rsi)
	addq	$4, 1800(%r11)
	movl	$64, 1824(%r11)
	jmp	.LBB0_200
.LBB0_64:                               # %if.then375
	movq	1816(%r11), %rdi
	shlq	$9, %rdi
	orq	$23, %rdi
	movq	%rdi, 1816(%r11)
	leal	-9(%rdx), %eax
	movl	%eax, 1824(%r11)
	cmpl	$41, %edx
	jg	.LBB0_66
# %bb.65:                               # %if.then.i.i1604
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rdi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_66:                               # %bs_write_ue.exit1612
	movzbl	17392(%r11), %ecx
	movzbl	sub_mb_type_b_to_golomb(%rcx), %edx
	movzbl	x264_ue_size_tab+1(%rdx), %ecx
	incq	%rdx
	shlq	%cl, %rdi
	orq	%rdx, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$33, %eax
	jge	.LBB0_68
# %bb.67:                               # %if.then.i.i1625
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rdi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_68:                               # %bs_write_ue.exit1633
	movzbl	17393(%r11), %ecx
	movzbl	sub_mb_type_b_to_golomb(%rcx), %edx
	movzbl	x264_ue_size_tab+1(%rdx), %ecx
	incq	%rdx
	shlq	%cl, %rdi
	orq	%rdx, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_70
# %bb.69:                               # %if.then.i.i1625.1
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rdi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_70:                               # %bs_write_ue.exit1633.1
	movzbl	17394(%r11), %ecx
	movzbl	sub_mb_type_b_to_golomb(%rcx), %edx
	movzbl	x264_ue_size_tab+1(%rdx), %ecx
	incq	%rdx
	shlq	%cl, %rdi
	orq	%rdx, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_72
# %bb.71:                               # %if.then.i.i1625.2
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movq	1800(%r11), %rsi
	movq	1816(%r11), %rdi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_72:                               # %bs_write_ue.exit1633.2
	movzbl	17395(%r11), %ecx
	movzbl	sub_mb_type_b_to_golomb(%rcx), %edx
	movzbl	x264_ue_size_tab+1(%rdx), %ecx
	incq	%rdx
	shlq	%cl, %rdi
	orq	%rdx, %rdi
	movq	%rdi, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_73
# %bb.110:                              # %if.then.i.i1625.3
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	21416(%r11), %edi
	movzbl	17392(%r11), %ecx
	cmpl	$1, %edi
	jg	.LBB0_111
.LBB0_74:                               # %if.end432
	movl	21420(%r11), %edi
	cmpl	$2, %edi
	jl	.LBB0_75
.LBB0_305:                              # %for.cond441.preheader
	movzbl	%cl, %ecx
	cmpb	$0, x264_mb_partition_listX_table+17(%rcx)
	je	.LBB0_311
# %bb.306:                              # %if.then453
	movsbl	25172(%r11), %edx
	cmpl	$2, %edi
	jne	.LBB0_309
# %bb.307:                              # %if.then.i1693
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_311
# %bb.308:                              # %if.then.i.i1702
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_311
.LBB0_73:                               # %bs_write_ue.exit1633.3
	movl	21416(%r11), %edi
	movzbl	17392(%r11), %ecx
	cmpl	$1, %edi
	jle	.LBB0_74
.LBB0_111:                              # %for.cond400.preheader
	movzbl	%cl, %ecx
	cmpb	$0, x264_mb_partition_listX_table(%rcx)
	je	.LBB0_286
# %bb.112:                              # %if.then412
	movsbl	25132(%r11), %edx
	cmpl	$2, %edi
	jne	.LBB0_284
# %bb.113:                              # %if.then.i1656
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_286
# %bb.114:                              # %if.then.i.i1665
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_286
.LBB0_91:                               # %if.else582
	testl	%r15d, %r15d
	je	.LBB0_96
# %bb.92:                               # %land.lhs.true584
	cmpb	$0, x264_mb_type_list_table(,%r12,4)
	je	.LBB0_94
# %bb.93:                               # %if.then589
	movsbl	25132(%r11), %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_94:                               # %land.lhs.true599
	cmpb	$0, x264_mb_type_list_table+1(,%r12,4)
	je	.LBB0_96
# %bb.95:                               # %if.then604
	movsbl	25150(%r11), %edx
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_96:                               # %if.end612
	testl	%ebp, %ebp
	je	.LBB0_101
# %bb.97:                               # %land.lhs.true614
	cmpb	$0, x264_mb_type_list_table+2(,%r12,4)
	je	.LBB0_99
# %bb.98:                               # %if.then619
	movsbl	25172(%r11), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_99:                               # %land.lhs.true629
	cmpb	$0, x264_mb_type_list_table+3(,%r12,4)
	je	.LBB0_101
# %bb.100:                              # %if.then634
	movsbl	25190(%r11), %edx
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	bs_write_te
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_101:                              # %if.end642
	cmpl	$14, 17388(%r11)
	movzbl	x264_mb_type_list_table(,%r12,4), %eax
	jne	.LBB0_153
# %bb.102:                              # %if.then647
	testb	%al, %al
	je	.LBB0_104
# %bb.103:                              # %if.then651
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_104:                              # %if.end652
	cmpb	$0, x264_mb_type_list_table+1(,%r12,4)
	je	.LBB0_106
# %bb.105:                              # %if.then656
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$4, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_106:                              # %if.end657
	cmpb	$0, x264_mb_type_list_table+2(,%r12,4)
	je	.LBB0_108
# %bb.107:                              # %if.then661
	movq	%r11, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_108:                              # %if.end662
	cmpb	$0, x264_mb_type_list_table+3(,%r12,4)
	je	.LBB0_200
# %bb.109:                              # %if.then666
	movq	%r11, %rdi
	movl	$1, %esi
	jmp	.LBB0_168
.LBB0_115:                              # %if.then289
	movq	%r14, %rdi
	movl	$4, %esi
	callq	bs_write_ue
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_116:                              # %if.end291
	testb	$32, 388(%r11)
	jne	.LBB0_118
# %bb.117:                              # %if.else310
	movq	1816(%r11), %rdx
	shlq	$4, %rdx
	orq	$15, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	leal	-4(%rcx), %eax
	movl	%eax, 1824(%r11)
	cmpl	$36, %ecx
	jle	.LBB0_125
	jmp	.LBB0_126
.LBB0_118:                              # %for.cond296.preheader
	movzbl	17392(%r11), %eax
	movzbl	sub_mb_type_p_to_golomb(%rax), %eax
	movzbl	x264_ue_size_tab+1(%rax), %ecx
	movq	1816(%r11), %rdx
	shlq	%cl, %rdx
	incq	%rax
	orq	%rax, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %eax
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_120
# %bb.119:                              # %if.then.i.i1446
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
	addq	$4, 1800(%r11)
	movq	1816(%r11), %rdx
.LBB0_120:                              # %bs_write_ue.exit1454
	movzbl	17393(%r11), %ecx
	movzbl	sub_mb_type_p_to_golomb(%rcx), %esi
	movzbl	x264_ue_size_tab+1(%rsi), %ecx
	incq	%rsi
	shlq	%cl, %rdx
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_122
# %bb.121:                              # %if.then.i.i1446.1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
	addq	$4, 1800(%r11)
	movq	1816(%r11), %rdx
.LBB0_122:                              # %bs_write_ue.exit1454.1
	movzbl	17394(%r11), %ecx
	movzbl	sub_mb_type_p_to_golomb(%rcx), %esi
	movzbl	x264_ue_size_tab+1(%rsi), %ecx
	incq	%rsi
	shlq	%cl, %rdx
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_124
# %bb.123:                              # %if.then.i.i1446.2
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
	addq	$4, 1800(%r11)
	movq	1816(%r11), %rdx
.LBB0_124:                              # %bs_write_ue.exit1454.2
	movzbl	17395(%r11), %ecx
	movzbl	sub_mb_type_p_to_golomb(%rcx), %esi
	movzbl	x264_ue_size_tab+1(%rsi), %ecx
	incq	%rsi
	shlq	%cl, %rdx
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$33, %eax
	jge	.LBB0_126
.LBB0_125:                              # %if.end311.sink.split
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_126:                              # %if.end311
	testb	%bl, %bl
	je	.LBB0_150
# %bb.127:                              # %if.then313
	movsbl	25132(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_130
# %bb.128:                              # %if.then.i1473
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB0_133
# %bb.129:                              # %if.then.i.i1480
	bswapl	%edx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	$64, %eax
	jmp	.LBB0_132
.LBB0_130:                              # %if.else.i
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_133
# %bb.131:                              # %if.then.i.i.i
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
.LBB0_132:                              # %bs_write_te.exit.sink.split
	addq	$4, 1800(%r11)
.LBB0_133:                              # %bs_write_te.exit
	movsbl	25134(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_136
# %bb.134:                              # %if.then.i1506
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB0_139
# %bb.135:                              # %if.then.i.i1515
	bswapl	%edx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	$64, %eax
	jmp	.LBB0_138
.LBB0_136:                              # %if.else.i1485
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_139
# %bb.137:                              # %if.then.i.i.i1498
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
.LBB0_138:                              # %bs_write_te.exit1520.sink.split
	addq	$4, 1800(%r11)
.LBB0_139:                              # %bs_write_te.exit1520
	movsbl	25148(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_142
# %bb.140:                              # %if.then.i1543
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	cmpl	$32, %eax
	jne	.LBB0_145
# %bb.141:                              # %if.then.i.i1552
	bswapl	%edx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	$64, %eax
	jmp	.LBB0_144
.LBB0_142:                              # %if.else.i1522
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_145
# %bb.143:                              # %if.then.i.i.i1535
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	movl	1824(%r11), %eax
	addl	$32, %eax
.LBB0_144:                              # %bs_write_te.exit1557.sink.split
	addq	$4, 1800(%r11)
.LBB0_145:                              # %bs_write_te.exit1557
	movsbl	25150(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_148
# %bb.146:                              # %if.then.i1580
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_150
# %bb.147:                              # %if.then.i.i1589
	bswapl	%edx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addq	$4, 1800(%r11)
	movl	$64, 1824(%r11)
	jmp	.LBB0_150
.LBB0_148:                              # %if.else.i1559
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rsi
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_150
# %bb.149:                              # %if.then.i.i.i1572
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_150:                              # %if.end362
	movzbl	17392(%r11), %eax
	cmpq	$3, %rax
	ja	.LBB0_176
# %bb.151:                              # %if.end362
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_152:                              # %sw.bb10.i
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$3, %edx
	jmp	.LBB0_171
.LBB0_153:                              # %if.else668
	testb	%al, %al
	je	.LBB0_155
# %bb.154:                              # %if.then672
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_155:                              # %if.end673
	cmpb	$0, x264_mb_type_list_table+1(,%r12,4)
	je	.LBB0_157
# %bb.156:                              # %if.then677
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_157:                              # %if.end678
	cmpb	$0, x264_mb_type_list_table+2(,%r12,4)
	je	.LBB0_159
# %bb.158:                              # %if.then682
	movq	%r11, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_159:                              # %if.end683
	cmpb	$0, x264_mb_type_list_table+3(,%r12,4)
	je	.LBB0_200
# %bb.160:                              # %if.then687
	movq	%r11, %rdi
	movl	$1, %esi
	jmp	.LBB0_164
.LBB0_161:                              # %if.then217
	movq	%r14, %rdi
	movl	$2, %esi
	callq	bs_write_ue
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	21416(%rdi), %esi
	cmpl	$2, %esi
	jl	.LBB0_163
# %bb.162:                              # %if.then224
	decl	%esi
	movsbl	25132(%rdi), %edx
	movq	%r14, %rdi
	callq	bs_write_te
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	21416(%rax), %esi
	decl	%esi
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	25134(%rax), %edx
	movq	%r14, %rdi
	callq	bs_write_te
	movq	(%rsp), %rdi                    # 8-byte Reload
.LBB0_163:                              # %if.end249
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
.LBB0_164:                              # %if.end697
	movl	$4, %edx
	jmp	.LBB0_198
.LBB0_165:                              # %if.then179
	movq	%r14, %rdi
	movl	$1, %esi
	callq	bs_write_ue
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	21416(%rdi), %esi
	cmpl	$2, %esi
	jl	.LBB0_167
# %bb.166:                              # %if.then186
	decl	%esi
	movsbl	25132(%rdi), %edx
	movq	%r14, %rdi
	callq	bs_write_te
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	21416(%rax), %esi
	decl	%esi
	movq	(%rsp), %rax                    # 8-byte Reload
	movsbl	25148(%rax), %edx
	movq	%r14, %rdi
	callq	bs_write_te
	movq	(%rsp), %rdi                    # 8-byte Reload
.LBB0_167:                              # %if.end211
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
.LBB0_168:                              # %if.end697
	movl	$8, %edx
.LBB0_169:                              # %if.end697
	movl	$4, %ecx
	jmp	.LBB0_199
.LBB0_170:                              # %sw.bb5.i
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$1, %edx
.LBB0_171:                              # %cavlc_mb8x8_mvd.exit
	movl	$1, %ecx
	jmp	.LBB0_175
.LBB0_172:                              # %sw.bb.i
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	.LBB0_174
.LBB0_173:                              # %sw.bb1.i
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$2, %edx
.LBB0_174:                              # %cavlc_mb8x8_mvd.exit
	movl	$2, %ecx
.LBB0_175:                              # %cavlc_mb8x8_mvd.exit
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_176:                              # %cavlc_mb8x8_mvd.exit
	movzbl	17393(%r11), %eax
	cmpq	$3, %rax
	ja	.LBB0_184
# %bb.177:                              # %cavlc_mb8x8_mvd.exit
	jmpq	*.LJTI0_2(,%rax,8)
.LBB0_178:                              # %sw.bb10.i.1
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$6, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$7, %edx
	movl	$1, %ecx
	jmp	.LBB0_183
.LBB0_179:                              # %sw.bb5.i.1
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$5, %edx
	movl	$1, %ecx
	jmp	.LBB0_183
.LBB0_180:                              # %sw.bb.i.1
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	jmp	.LBB0_182
.LBB0_181:                              # %sw.bb1.i.1
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$6, %edx
.LBB0_182:                              # %cavlc_mb8x8_mvd.exit.1
	movl	$2, %ecx
.LBB0_183:                              # %cavlc_mb8x8_mvd.exit.1
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_184:                              # %cavlc_mb8x8_mvd.exit.1
	movzbl	17394(%r11), %eax
	cmpq	$3, %rax
	ja	.LBB0_192
# %bb.185:                              # %cavlc_mb8x8_mvd.exit.1
	jmpq	*.LJTI0_3(,%rax,8)
.LBB0_186:                              # %sw.bb10.i.2
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$9, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$10, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$11, %edx
	movl	$1, %ecx
	jmp	.LBB0_191
.LBB0_187:                              # %sw.bb5.i.2
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$9, %edx
	movl	$1, %ecx
	jmp	.LBB0_191
.LBB0_188:                              # %sw.bb.i.2
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	jmp	.LBB0_190
.LBB0_189:                              # %sw.bb1.i.2
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$10, %edx
.LBB0_190:                              # %cavlc_mb8x8_mvd.exit.2
	movl	$2, %ecx
.LBB0_191:                              # %cavlc_mb8x8_mvd.exit.2
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_192:                              # %cavlc_mb8x8_mvd.exit.2
	movzbl	17395(%r11), %eax
	cmpq	$3, %rax
	ja	.LBB0_200
# %bb.193:                              # %cavlc_mb8x8_mvd.exit.2
	jmpq	*.LJTI0_4(,%rax,8)
.LBB0_194:                              # %sw.bb10.i.3
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$13, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$14, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$15, %edx
	movl	$1, %ecx
	jmp	.LBB0_199
.LBB0_195:                              # %sw.bb5.i.3
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	movl	$1, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$13, %edx
	movl	$1, %ecx
	jmp	.LBB0_199
.LBB0_196:                              # %sw.bb.i.3
	movq	%r11, %rdi
	xorl	%esi, %esi
	jmp	.LBB0_197
.LBB0_283:                              # %sw.bb1.i.3
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	movl	$14, %edx
	jmp	.LBB0_198
.LBB0_309:                              # %if.else.i1672
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_311
# %bb.310:                              # %if.then.i.i.i1685
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_311:                              # %for.inc470
	movzbl	17393(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table+17(%rcx)
	je	.LBB0_317
# %bb.312:                              # %if.then453.1
	movsbl	25174(%r11), %edx
	cmpl	$2, 21420(%r11)
	jne	.LBB0_315
# %bb.313:                              # %if.then.i1693.1
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_317
# %bb.314:                              # %if.then.i.i1702.1
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_317
.LBB0_284:                              # %if.else.i1635
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_286
# %bb.285:                              # %if.then.i.i.i1648
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_286:                              # %for.inc429
	movzbl	17393(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table(%rcx)
	je	.LBB0_292
# %bb.287:                              # %if.then412.1
	movsbl	25134(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_290
# %bb.288:                              # %if.then.i1656.1
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_292
# %bb.289:                              # %if.then.i.i1665.1
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_292
.LBB0_315:                              # %if.else.i1672.1
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_317
# %bb.316:                              # %if.then.i.i.i1685.1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_317:                              # %for.inc470.1
	movzbl	17394(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table+17(%rcx)
	je	.LBB0_323
# %bb.318:                              # %if.then453.2
	movsbl	25188(%r11), %edx
	cmpl	$2, 21420(%r11)
	jne	.LBB0_321
# %bb.319:                              # %if.then.i1693.2
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_323
# %bb.320:                              # %if.then.i.i1702.2
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_323
.LBB0_290:                              # %if.else.i1635.1
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_292
# %bb.291:                              # %if.then.i.i.i1648.1
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_292:                              # %for.inc429.1
	movzbl	17394(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table(%rcx)
	je	.LBB0_298
# %bb.293:                              # %if.then412.2
	movsbl	25148(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_296
# %bb.294:                              # %if.then.i1656.2
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_298
# %bb.295:                              # %if.then.i.i1665.2
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_298
.LBB0_321:                              # %if.else.i1672.2
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_323
# %bb.322:                              # %if.then.i.i.i1685.2
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_323:                              # %for.inc470.2
	movzbl	17395(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table+17(%rcx)
	je	.LBB0_329
# %bb.324:                              # %if.then453.3
	movsbl	25190(%r11), %edx
	cmpl	$2, 21420(%r11)
	jne	.LBB0_327
# %bb.325:                              # %if.then.i1693.3
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_329
# %bb.326:                              # %if.then.i.i1702.3
	bswapl	%edx
	movl	%edx, (%rsi)
	addq	$4, 1800(%r11)
	movl	$64, 1824(%r11)
	jmp	.LBB0_329
.LBB0_296:                              # %if.else.i1635.2
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_298
# %bb.297:                              # %if.then.i.i.i1648.2
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_298:                              # %for.inc429.2
	movzbl	17395(%r11), %ecx
	cmpb	$0, x264_mb_partition_listX_table(%rcx)
	je	.LBB0_304
# %bb.299:                              # %if.then412.3
	movsbl	25150(%r11), %edx
	cmpl	$2, 21416(%r11)
	jne	.LBB0_302
# %bb.300:                              # %if.then.i1656.3
	xorl	$1, %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_304
# %bb.301:                              # %if.then.i.i1665.3
	bswapl	%edx
	movl	%edx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
	jmp	.LBB0_304
.LBB0_327:                              # %if.else.i1672.3
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_329
# %bb.328:                              # %if.then.i.i.i1685.3
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_329:                              # %for.inc470.3
	movzbl	17392(%r11), %ecx
	movzbl	%cl, %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	jne	.LBB0_76
	jmp	.LBB0_77
.LBB0_302:                              # %if.else.i1635.3
	movslq	%edx, %rcx
	incl	%edx
	movzbl	x264_ue_size_tab+1(%rcx), %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_304
# %bb.303:                              # %if.then.i.i.i1648.3
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_304:                              # %for.inc429.3
	movzbl	17392(%r11), %ecx
	movl	21420(%r11), %edi
	cmpl	$2, %edi
	jge	.LBB0_305
.LBB0_75:                               # %if.end473
	movzbl	%cl, %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB0_77
.LBB0_76:                               # %if.then487
	movq	%r11, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_77:                               # %for.inc490
	movzbl	17393(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB0_79
# %bb.78:                               # %if.then487.1
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_79:                               # %for.inc490.1
	movzbl	17394(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB0_81
# %bb.80:                               # %if.then487.2
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_81:                               # %for.inc490.2
	movzbl	17395(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB0_83
# %bb.82:                               # %if.then487.3
	movq	%r11, %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_83:                               # %for.inc490.3
	movzbl	17392(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB0_85
# %bb.84:                               # %if.then506
	movq	%r11, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_85:                               # %for.inc509
	movzbl	17393(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB0_87
# %bb.86:                               # %if.then506.1
	movq	%r11, %rdi
	movl	$1, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_87:                               # %for.inc509.1
	movzbl	17394(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB0_89
# %bb.88:                               # %if.then506.2
	movq	%r11, %rdi
	movl	$1, %esi
	movl	$8, %edx
	movl	$2, %ecx
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_89:                               # %for.inc509.2
	movzbl	17395(%r11), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB0_200
# %bb.90:                               # %if.then506.3
	movq	%r11, %rdi
	movl	$1, %esi
.LBB0_197:                              # %if.end697
	movl	$12, %edx
.LBB0_198:                              # %if.end697
	movl	$2, %ecx
.LBB0_199:                              # %if.end697
	callq	cavlc_mb_mvd
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_200:                              # %if.end697
	movq	1800(%r11), %rsi
	movl	1792(%r11), %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	1824(%r11), %eax
	shll	$3, %ecx
	addl	26712(%r11), %r13d
	subl	%eax, %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	addl	%ecx, %r13d
	movl	%r13d, 26712(%r11)
	cmpl	$1, %r12d
	ja	.LBB0_202
# %bb.201:                              # %if.then709
	movl	17404(%r11), %ecx
	shll	$4, %ecx
	orl	17400(%r11), %ecx
	movslq	%ecx, %rcx
	movzbl	intra4x4_cbp_to_golomb(%rcx), %edi
	movzbl	x264_ue_size_tab+1(%rdi), %ecx
	incq	%rdi
	movq	1816(%r11), %rdx
	shlq	%cl, %rdx
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$33, %eax
	jl	.LBB0_204
	jmp	.LBB0_205
.LBB0_202:                              # %if.else718
	cmpl	$2, %r12d
	je	.LBB0_205
# %bb.203:                              # %if.then721
	movl	17404(%r11), %ecx
	shll	$4, %ecx
	orl	17400(%r11), %ecx
	movslq	%ecx, %rcx
	movzbl	inter_cbp_to_golomb(%rcx), %edi
	movzbl	x264_ue_size_tab+1(%rdi), %ecx
	incq	%rdi
	movq	1816(%r11), %rdx
	shlq	%cl, %rdx
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_205
.LBB0_204:                              # %if.end732.sink.split
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_205:                              # %if.end732
	movq	3328(%r11), %rcx
	cmpl	$0, 60(%rcx)
	je	.LBB0_212
# %bb.206:                              # %if.end.i
	movslq	17384(%r11), %rcx
	cmpq	$5, %rcx
	jne	.LBB0_208
# %bb.207:                              # %if.end4.i
	xorl	%ecx, %ecx
	cmpl	$50529027, 17392(%r11)          # imm = 0x3030303
	sete	%cl
	testl	%ecx, %ecx
	jne	.LBB0_209
	jmp	.LBB0_212
.LBB0_208:                              # %if.then1.i
	movzbl	x264_mb_transform_8x8_allowed.partition_tab(%rcx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_212
.LBB0_209:                              # %land.lhs.true735
	cmpl	$0, 17400(%r11)
	je	.LBB0_212
# %bb.210:                              # %if.then739
	movl	17396(%r11), %edx
	movq	1816(%r11), %rcx
	addq	%rcx, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 1816(%r11)
	decl	%eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jne	.LBB0_212
# %bb.211:                              # %if.then.i1804
	bswapl	%ecx
	movl	%ecx, (%rsi)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
	movl	$64, 1824(%r11)
	movl	$64, %eax
.LBB0_212:                              # %if.end742
	cmpl	$2, %r12d
	jne	.LBB0_222
# %bb.213:                              # %if.then745
	movl	25792(%r11), %ecx
	movl	25800(%r11), %edi
	cmpl	$2, 17384(%r11)
	jne	.LBB0_216
# %bb.214:                              # %land.lhs.true.i
	movl	17404(%r11), %edx
	orl	17400(%r11), %edx
	jne	.LBB0_216
# %bb.215:                              # %land.lhs.true5.i
	cmpb	$0, 25116(%r11)
	je	.LBB0_282
.LBB0_216:                              # %if.end.i1813
	movl	$1, %edx
	cmpl	%edi, %ecx
	je	.LBB0_218
# %bb.217:                              # %if.then13.i
	subl	%edi, %ecx
	leal	52(%rcx), %edx
	leal	-52(%rcx), %edi
	cmpl	$26, %ecx
	cmovll	%ecx, %edi
	cmpl	$-26, %ecx
	cmovll	%edx, %edi
	leal	(%rdi,%rdi), %ecx
	movl	$1, %edx
	subl	%ecx, %edx
	testl	%edi, %edi
	cmovgl	%ecx, %edx
.LBB0_218:                              # %if.end21.thread.i
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	movl	%edx, %edx
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_220
# %bb.219:                              # %if.then.i.i.i1829
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	movl	1824(%r11), %eax
	addl	$32, %eax
	movl	%eax, 1824(%r11)
	movq	1800(%r11), %rsi
	addq	$4, %rsi
	movq	%rsi, 1800(%r11)
.LBB0_220:                              # %cavlc_qp_delta.exit
	movzbl	25083(%r11), %ecx
	movzbl	25076(%r11), %edx
	leal	(%rdx,%rcx), %edi
	addl	%edx, %ecx
	incl	%ecx
	shrb	%cl
	cmpl	$128, %edi
	movzbl	%cl, %ecx
	cmovael	%edi, %ecx
	andl	$127, %ecx
	movzbl	ct_index(%rcx), %ecx
	cmpb	$0, 25116(%r11)
	je	.LBB0_252
# %bb.221:                              # %if.else764
	leaq	15040(%r11), %rdx
	movq	%r11, %rdi
	xorl	%esi, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25116(%r11)
	jmp	.LBB0_254
.LBB0_222:                              # %if.else817
	movl	17404(%r11), %ecx
	orl	17400(%r11), %ecx
	je	.LBB0_261
# %bb.223:                              # %if.then824
	movl	25792(%r11), %ecx
	movl	$1, %edx
	subl	25800(%r11), %ecx
	je	.LBB0_225
# %bb.224:                              # %if.then13.i1903
	leal	52(%rcx), %edx
	leal	-52(%rcx), %edi
	cmpl	$26, %ecx
	cmovll	%ecx, %edi
	cmpl	$-26, %ecx
	cmovll	%edx, %edi
	leal	(%rdi,%rdi), %ecx
	movl	$1, %edx
	subl	%ecx, %edx
	testl	%edi, %edi
	cmovgl	%ecx, %edx
.LBB0_225:                              # %if.end21.thread.i1915
	movl	%edx, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%dil
	cmovll	%edx, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	movq	1816(%r11), %rdi
	shlq	%cl, %rdi
	movl	%edx, %edx
	orq	%rdi, %rdx
	movq	%rdx, 1816(%r11)
	subl	%ecx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_227
# %bb.226:                              # %if.then.i.i.i1932
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movl	%edx, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_227:                              # %cavlc_qp_delta.exit1949
	cmpl	$0, 17396(%r11)
	je	.LBB0_233
# %bb.228:                              # %for.cond.preheader.i
	movl	17400(%r11), %eax
	testb	$1, %al
	jne	.LBB0_279
# %bb.229:                              # %for.inc.i
	testb	$2, %al
	jne	.LBB0_280
.LBB0_230:                              # %for.inc.1.i
	testb	$4, %al
	jne	.LBB0_281
.LBB0_231:                              # %for.inc.2.i
	testb	$8, %al
	je	.LBB0_233
.LBB0_232:                              # %if.then3.3.i
	leaq	15984(%r11), %rdi
	leaq	15472(%r11), %rsi
	leaq	25102(%r11), %rdx
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*33072(%rax)
	movq	(%rsp), %r11                    # 8-byte Reload
.LBB0_233:                              # %if.end14.i
	movl	$15600, %r14d                   # imm = 0x3CF0
	movl	$15696, %edi                    # imm = 0x3D50
	movl	$x264_scan8+12, %r12d
	movl	$15664, %r13d                   # imm = 0x3D30
	movl	$15632, %ebp                    # imm = 0x3D10
	xorl	%ebx, %ebx
	jmp	.LBB0_236
	.p2align	4, 0x90
.LBB0_234:                              # %if.else.3.i
                                        #   in Loop: Header=BB0_236 Depth=1
	leaq	(%r11,%rdi), %rdx
	movq	%r11, %rdi
	movl	$2, %esi
	callq	block_residual_write_cavlc
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r15)
.LBB0_235:                              # %for.inc64.i
                                        #   in Loop: Header=BB0_236 Depth=1
	subq	$-128, %r14
	subq	$-128, %rdi
	addq	$16, %r12
	subq	$-128, %r13
	subq	$-128, %rbp
	incl	%ebx
	cmpq	$16112, %r14                    # imm = 0x3EF0
	je	.LBB0_261
.LBB0_236:                              # %for.body19.i
                                        # =>This Inner Loop Header: Depth=1
	movl	17400(%r11), %eax
	btl	%ebx, %eax
	jae	.LBB0_235
# %bb.237:                              # %for.cond26.preheader.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movslq	-12(%r12), %r15
	movzbl	25071(%r11,%r15), %eax
	movzbl	25064(%r11,%r15), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %eax
	cmpb	$0, 25072(%r11,%r15)
	je	.LBB0_239
# %bb.238:                              # %if.else.i1964
                                        #   in Loop: Header=BB0_236 Depth=1
	leaq	(%r11,%r14), %rdx
	movq	%r11, %rdi
	movl	$2, %esi
	movl	%eax, %ecx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r15)
	jmp	.LBB0_241
	.p2align	4, 0x90
.LBB0_239:                              # %if.then43.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movq	x264_coeff0_token@GOTPCREL(%rip), %rdi
	movzbl	1(%rdi,%rax,2), %edx
	movq	1816(%r11), %rsi
	movl	%edx, %ecx
	shlq	%cl, %rsi
	movzbl	(%rdi,%rax,2), %eax
	orq	%rax, %rsi
	movq	%rsi, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%edx, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_241
# %bb.240:                              # %if.then.i.i1969
                                        #   in Loop: Header=BB0_236 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%r11), %rax
	movl	%esi, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	.p2align	4, 0x90
.LBB0_241:                              # %if.end59.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	-8(%r12), %r15
	movzbl	25071(%r11,%r15), %eax
	movzbl	25064(%r11,%r15), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %ecx
	cmpb	$0, 25072(%r11,%r15)
	je	.LBB0_243
# %bb.242:                              # %if.else.1.i
                                        #   in Loop: Header=BB0_236 Depth=1
	leaq	(%r11,%rbp), %rdx
	movq	%r11, %rdi
	movl	$2, %esi
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r15)
	jmp	.LBB0_245
	.p2align	4, 0x90
.LBB0_243:                              # %if.then43.1.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movl	%ecx, %esi
	movq	x264_coeff0_token@GOTPCREL(%rip), %rdi
	movzbl	1(%rdi,%rsi,2), %eax
	movq	1816(%r11), %rdx
	movl	%eax, %ecx
	shlq	%cl, %rdx
	movzbl	(%rdi,%rsi,2), %ecx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_245
# %bb.244:                              # %if.then.i.1.i
                                        #   in Loop: Header=BB0_236 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	.p2align	4, 0x90
.LBB0_245:                              # %if.end59.1.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	-4(%r12), %r15
	movzbl	25071(%r11,%r15), %eax
	movzbl	25064(%r11,%r15), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %ecx
	cmpb	$0, 25072(%r11,%r15)
	je	.LBB0_247
# %bb.246:                              # %if.else.2.i
                                        #   in Loop: Header=BB0_236 Depth=1
	leaq	(%r11,%r13), %rdx
	movq	%r11, %rdi
	movl	$2, %esi
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r15)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB0_249
	.p2align	4, 0x90
.LBB0_247:                              # %if.then43.2.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movl	%ecx, %esi
	movq	x264_coeff0_token@GOTPCREL(%rip), %rdi
	movzbl	1(%rdi,%rsi,2), %eax
	movq	1816(%r11), %rdx
	movl	%eax, %ecx
	shlq	%cl, %rdx
	movzbl	(%rdi,%rsi,2), %ecx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jg	.LBB0_249
# %bb.248:                              # %if.then.i.2.i
                                        #   in Loop: Header=BB0_236 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	.p2align	4, 0x90
.LBB0_249:                              # %if.end59.2.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movslq	(%r12), %r15
	movzbl	25071(%r11,%r15), %eax
	movzbl	25064(%r11,%r15), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %ecx
	cmpb	$0, 25072(%r11,%r15)
	jne	.LBB0_234
# %bb.250:                              # %if.then43.3.i
                                        #   in Loop: Header=BB0_236 Depth=1
	movl	%ecx, %esi
	movq	x264_coeff0_token@GOTPCREL(%rip), %r8
	movzbl	1(%r8,%rsi,2), %eax
	movq	1816(%r11), %rdx
	movl	%eax, %ecx
	shlq	%cl, %rdx
	movzbl	(%r8,%rsi,2), %ecx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_235
# %bb.251:                              # %if.then.i.3.i
                                        #   in Loop: Header=BB0_236 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	jmp	.LBB0_235
.LBB0_252:                              # %if.then755
	movq	x264_coeff0_token@GOTPCREL(%rip), %rdi
	movzbl	1(%rdi,%rcx,2), %edx
	movzbl	(%rdi,%rcx,2), %r8d
	movq	1816(%r11), %rdi
	movl	%edx, %ecx
	shlq	%cl, %rdi
	orq	%r8, %rdi
	movq	%rdi, 1816(%r11)
	subl	%edx, %eax
	movl	%eax, 1824(%r11)
	cmpl	$32, %eax
	jg	.LBB0_254
# %bb.253:                              # %if.then.i1854
	movl	%eax, %ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movl	%edi, (%rsi)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_254:                              # %if.end768
	cmpl	$0, 17400(%r11)
	je	.LBB0_261
# %bb.255:                              # %for.cond774.preheader
	leaq	15602(%r11), %r14
	movq	$-64, %rbx
	movq	x264_coeff0_token@GOTPCREL(%rip), %r15
	jmp	.LBB0_258
	.p2align	4, 0x90
.LBB0_256:                              # %if.else804
                                        #   in Loop: Header=BB0_258 Depth=1
	movq	%r11, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r12)
.LBB0_257:                              # %if.end812
                                        #   in Loop: Header=BB0_258 Depth=1
	addq	$32, %r14
	addq	$4, %rbx
	je	.LBB0_261
.LBB0_258:                              # %for.body778
                                        # =>This Inner Loop Header: Depth=1
	movslq	x264_scan8+64(%rbx), %r12
	movzbl	25071(%r11,%r12), %eax
	movzbl	25064(%r11,%r12), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %eax
	cmpb	$0, 25072(%r11,%r12)
	jne	.LBB0_256
# %bb.259:                              # %if.then793
                                        #   in Loop: Header=BB0_258 Depth=1
	movzbl	1(%r15,%rax,2), %edx
	movq	1816(%r11), %rsi
	movl	%edx, %ecx
	shlq	%cl, %rsi
	movzbl	(%r15,%rax,2), %eax
	orq	%rax, %rsi
	movq	%rsi, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%edx, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_257
# %bb.260:                              # %if.then.i1887
                                        #   in Loop: Header=BB0_258 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%r11), %rax
	movl	%esi, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	jmp	.LBB0_257
.LBB0_261:                              # %if.end826
	cmpl	$0, 17404(%r11)
	je	.LBB0_271
# %bb.262:                              # %if.then830
	cmpb	$0, 25118(%r11)
	je	.LBB0_264
# %bb.263:                              # %if.else850
	leaq	15072(%r11), %rdx
	movq	%r11, %rdi
	movl	$3, %esi
	movl	$4, %ecx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25118(%r11)
	jmp	.LBB0_266
.LBB0_264:                              # %if.then839
	movq	x264_coeff0_token@GOTPCREL(%rip), %rsi
	movzbl	9(%rsi), %eax
	movq	1816(%r11), %rdx
	movl	%eax, %ecx
	shlq	%cl, %rdx
	movzbl	8(%rsi), %ecx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_266
# %bb.265:                              # %if.then.i1984
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_266:                              # %if.end856
	cmpb	$0, 25119(%r11)
	je	.LBB0_268
# %bb.267:                              # %if.else876
	leaq	15080(%r11), %rdx
	movq	%r11, %rdi
	movl	$3, %esi
	movl	$4, %ecx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25119(%r11)
	jmp	.LBB0_270
.LBB0_268:                              # %if.then865
	movq	x264_coeff0_token@GOTPCREL(%rip), %rsi
	movzbl	9(%rsi), %eax
	movq	1816(%r11), %rdx
	movl	%eax, %ecx
	shlq	%cl, %rdx
	movzbl	8(%rsi), %ecx
	orq	%rcx, %rdx
	movq	%rdx, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_270
# %bb.269:                              # %if.then.i2002
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%r11), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
.LBB0_270:                              # %if.end883
	testb	$2, 17404(%r11)
	jne	.LBB0_273
.LBB0_271:                              # %if.end934
	movl	1800(%r11), %eax
	subl	1792(%r11), %eax
	movl	20(%rsp), %edx                  # 4-byte Reload
	addl	1824(%r11), %edx
	movl	26716(%r11), %ecx
	subl	%edx, %ecx
	leal	(%rcx,%rax,8), %eax
	movl	%eax, 26716(%r11)
.LBB0_272:                              # %cleanup
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
.LBB0_273:                              # %for.cond890.preheader
	.cfi_def_cfa_offset 80
	leaq	16114(%r11), %r14
	movq	$-32, %rbx
	movq	x264_coeff0_token@GOTPCREL(%rip), %r15
	jmp	.LBB0_276
	.p2align	4, 0x90
.LBB0_274:                              # %if.else920
                                        #   in Loop: Header=BB0_276 Depth=1
	movq	%r11, %rdi
	movl	$4, %esi
	movq	%r14, %rdx
	movl	%eax, %ecx
	callq	block_residual_write_cavlc
	movq	(%rsp), %r11                    # 8-byte Reload
	movb	%al, 25072(%r11,%r12)
.LBB0_275:                              # %if.end929
                                        #   in Loop: Header=BB0_276 Depth=1
	addq	$32, %r14
	addq	$4, %rbx
	je	.LBB0_271
.LBB0_276:                              # %for.body894
                                        # =>This Inner Loop Header: Depth=1
	movslq	x264_scan8+96(%rbx), %r12
	movzbl	25071(%r11,%r12), %eax
	movzbl	25064(%r11,%r12), %ecx
	leal	(%rcx,%rax), %edx
	addl	%ecx, %eax
	incl	%eax
	shrb	%al
	cmpl	$128, %edx
	movzbl	%al, %eax
	cmovael	%edx, %eax
	andl	$127, %eax
	movzbl	ct_index(%rax), %eax
	cmpb	$0, 25072(%r11,%r12)
	jne	.LBB0_274
# %bb.277:                              # %if.then909
                                        #   in Loop: Header=BB0_276 Depth=1
	movzbl	1(%r15,%rax,2), %edx
	movq	1816(%r11), %rsi
	movl	%edx, %ecx
	shlq	%cl, %rsi
	movzbl	(%r15,%rax,2), %eax
	orq	%rax, %rsi
	movq	%rsi, 1816(%r11)
	movl	1824(%r11), %ecx
	subl	%edx, %ecx
	movl	%ecx, 1824(%r11)
	cmpl	$32, %ecx
	jg	.LBB0_275
# %bb.278:                              # %if.then.i2037
                                        #   in Loop: Header=BB0_276 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%r11), %rax
	movl	%esi, (%rax)
	addl	$32, 1824(%r11)
	addq	$4, 1800(%r11)
	jmp	.LBB0_275
.LBB0_279:                              # %if.then3.i
	leaq	15088(%r11), %rsi
	leaq	15600(%r11), %rdi
	leaq	25084(%r11), %rdx
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*33072(%rax)
	movq	(%rsp), %r11                    # 8-byte Reload
	movl	17400(%r11), %eax
	testb	$2, %al
	je	.LBB0_230
.LBB0_280:                              # %if.then3.1.i
	leaq	15728(%r11), %rdi
	leaq	15216(%r11), %rsi
	leaq	25086(%r11), %rdx
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*33072(%rax)
	movq	(%rsp), %r11                    # 8-byte Reload
	movl	17400(%r11), %eax
	testb	$4, %al
	je	.LBB0_231
.LBB0_281:                              # %if.then3.2.i
	leaq	15856(%r11), %rdi
	leaq	15344(%r11), %rsi
	leaq	25100(%r11), %rdx
	movq	(%rsp), %rax                    # 8-byte Reload
	callq	*33072(%rax)
	movq	(%rsp), %r11                    # 8-byte Reload
	movl	17400(%r11), %eax
	testb	$8, %al
	jne	.LBB0_232
	jmp	.LBB0_233
.LBB0_282:                              # %if.end.thread.i
	movl	%edi, 25792(%r11)
	movl	$1, %edx
	jmp	.LBB0_218
.Lfunc_end0:
	.size	x264_macroblock_write_cavlc, .Lfunc_end0-x264_macroblock_write_cavlc
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_31
	.quad	.LBB0_37
	.quad	.LBB0_53
	.quad	.LBB0_50
	.quad	.LBB0_37
	.quad	.LBB0_62
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_64
.LJTI0_1:
	.quad	.LBB0_152
	.quad	.LBB0_173
	.quad	.LBB0_170
	.quad	.LBB0_172
.LJTI0_2:
	.quad	.LBB0_178
	.quad	.LBB0_181
	.quad	.LBB0_179
	.quad	.LBB0_180
.LJTI0_3:
	.quad	.LBB0_186
	.quad	.LBB0_189
	.quad	.LBB0_187
	.quad	.LBB0_188
.LJTI0_4:
	.quad	.LBB0_194
	.quad	.LBB0_283
	.quad	.LBB0_195
	.quad	.LBB0_196
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function bs_write_ue
	.type	bs_write_ue,@function
bs_write_ue:                            # @bs_write_ue
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%esi, %rdx
	movzbl	x264_ue_size_tab+1(%rdx), %eax
	movq	24(%rdi), %rsi
	movl	%eax, %ecx
	shlq	%cl, %rsi
	incl	%edx
	orq	%rsi, %rdx
	movq	%rdx, 24(%rdi)
	movl	32(%rdi), %ecx
	subl	%eax, %ecx
	movl	%ecx, 32(%rdi)
	cmpl	$32, %ecx
	jg	.LBB1_2
# %bb.1:                                # %if.then.i
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	8(%rdi), %rax
	movl	%edx, (%rax)
	addl	$32, 32(%rdi)
	addq	$4, 8(%rdi)
.LBB1_2:                                # %bs_write.exit
	retq
.Lfunc_end1:
	.size	bs_write_ue, .Lfunc_end1-bs_write_ue
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function bs_write_te
	.type	bs_write_te,@function
bs_write_te:                            # @bs_write_te
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	cmpl	$1, %esi
	jne	.LBB2_3
# %bb.1:                                # %if.then
	xorl	$1, %edx
	movq	24(%rdi), %rax
	addq	%rax, %rax
	orq	%rax, %rdx
	movq	%rdx, 24(%rdi)
	movl	32(%rdi), %eax
	decl	%eax
	movl	%eax, 32(%rdi)
	cmpl	$32, %eax
	jne	.LBB2_5
# %bb.2:                                # %if.then.i
	bswapl	%edx
	movq	8(%rdi), %rax
	movl	%edx, (%rax)
	addq	$4, 8(%rdi)
	movl	$64, 32(%rdi)
	retq
.LBB2_3:                                # %if.else
	movslq	%edx, %rdx
	movzbl	x264_ue_size_tab+1(%rdx), %eax
	movq	24(%rdi), %rsi
	movl	%eax, %ecx
	shlq	%cl, %rsi
	incl	%edx
	orq	%rsi, %rdx
	movq	%rdx, 24(%rdi)
	movl	32(%rdi), %ecx
	subl	%eax, %ecx
	movl	%ecx, 32(%rdi)
	cmpl	$32, %ecx
	jg	.LBB2_5
# %bb.4:                                # %if.then.i.i
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	8(%rdi), %rax
	movl	%edx, (%rax)
	addl	$32, 32(%rdi)
	addq	$4, 8(%rdi)
.LBB2_5:                                # %if.end
	retq
.Lfunc_end2:
	.size	bs_write_te, .Lfunc_end2-bs_write_te
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function cavlc_mb_mvd
	.type	cavlc_mb_mvd,@function
cavlc_mb_mvd:                           # @cavlc_mb_mvd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leaq	12(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movl	%r14d, %eax
	movslq	%ebp, %rcx
	movslq	x264_scan8(,%rcx,4), %rdi
	leaq	(%rax,%rax,4), %r8
	shlq	$5, %r8
	leaq	(%rbx,%r8), %rax
	addq	$25200, %rax                    # imm = 0x6270
	movswl	(%rax,%rdi,4), %eax
	movswl	12(%rsp), %ecx
	subl	%ecx, %eax
	leal	(%rax,%rax), %ecx
	movl	$1, %edx
	subl	%ecx, %edx
	testl	%eax, %eax
	cmovgl	%ecx, %edx
	movl	%edx, %eax
	shrl	$8, %eax
	xorl	%esi, %esi
	cmpl	$256, %edx                      # imm = 0x100
	setge	%sil
	cmovll	%edx, %eax
	shll	$4, %esi
	cltq
	movzbl	x264_ue_size_tab(%rax), %ecx
	addl	%esi, %ecx
	movq	1816(%rbx), %rax
	shlq	%cl, %rax
	leaq	25200(%rbx), %r9
	movl	$1, %esi
	orq	%rax, %rdx
	movq	%rdx, 1816(%rbx)
	movl	1824(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_2
# %bb.1:                                # %if.then.i.i
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%rbx), %rax
	movl	%edx, (%rax)
	movl	1824(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 1824(%rbx)
	addq	$4, 1800(%rbx)
	movq	1816(%rbx), %rdx
.LBB3_2:                                # %bs_write_se.exit
	addq	%r8, %r9
	movswl	2(%r9,%rdi,4), %ecx
	movswl	14(%rsp), %edi
	subl	%edi, %ecx
	leal	(%rcx,%rcx), %edi
	subl	%edi, %esi
	testl	%ecx, %ecx
	cmovgl	%edi, %esi
	movl	%esi, %ecx
	shrl	$8, %ecx
	xorl	%edi, %edi
	cmpl	$256, %esi                      # imm = 0x100
	setge	%dil
	cmovll	%esi, %ecx
	shll	$4, %edi
	movslq	%ecx, %rcx
	movzbl	x264_ue_size_tab(%rcx), %ecx
	addl	%edi, %ecx
	shlq	%cl, %rdx
	orq	%rdx, %rsi
	movq	%rsi, 1816(%rbx)
	subl	%ecx, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB3_4
# %bb.3:                                # %if.then.i.i50
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%rbx), %rax
	movl	%esi, (%rax)
	addl	$32, 1824(%rbx)
	addq	$4, 1800(%rbx)
.LBB3_4:                                # %bs_write_se.exit58
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	cavlc_mb_mvd, .Lfunc_end3-cavlc_mb_mvd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_residual_write_cavlc
	.type	block_residual_write_cavlc,@function
block_residual_write_cavlc:             # @block_residual_write_cavlc
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
	movl	%ecx, %r12d
	movq	%rdi, %rbx
	movl	$131074, 42(%rsp)               # imm = 0x20002
	movl	%esi, 12(%rsp)                  # 4-byte Spill
	movl	%esi, %eax
	leaq	36(%rsp), %rsi
	movq	%rdx, %rdi
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	callq	*33216(%rbx,%rax,8)
	movl	%eax, %ebp
	movswl	40(%rsp), %edx
	leal	1(%rdx), %eax
	movl	$1, %ecx
	movl	$1, %esi
	subl	%edx, %esi
	orl	%eax, %esi
	shrl	$31, %esi
	movswl	42(%rsp), %eax
	leal	1(%rax), %edi
	movl	$1, %r8d
	subl	%eax, %r8d
	orl	%edi, %r8d
	shrl	$31, %r8d
	leal	(%rsi,%r8,2), %esi
	movswl	44(%rsp), %r8d
	leal	1(%r8), %edi
	subl	%r8d, %ecx
	orl	%edi, %ecx
	shrl	$31, %ecx
	leal	(%rsi,%rcx,4), %edi
	movzbl	block_residual_write_cavlc.ctz_index(%rdi), %r15d
	shrl	$31, %r8d
	shrl	$14, %eax
	andl	$2, %eax
	shrl	$13, %edx
	andl	$4, %edx
	orl	%eax, %edx
	orl	%r8d, %edx
	movb	$3, %cl
	subb	%r15b, %cl
	shrl	%cl, %edx
	movl	%r12d, %eax
	shlq	$7, %rax
	addq	x264_coeff_token@GOTPCREL(%rip), %rax
	movslq	%ebp, %r12
	leaq	(%rax,%r12,8), %rax
	addq	$-8, %rax
	movzbl	1(%rax,%r15,2), %ecx
	movq	1816(%rbx), %r8
	shlq	%cl, %r8
	movl	36(%rsp), %r10d
	movzbl	(%rax,%r15,2), %eax
	orq	%rax, %r8
	movq	%r8, 1816(%rbx)
	movl	1824(%rbx), %eax
	subl	%ecx, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB4_2
# %bb.1:                                # %if.then.i
	movl	%eax, %ecx
	shlq	%cl, %r8
	bswapq	%r8
	movq	1800(%rbx), %rax
	movl	%r8d, (%rax)
	movl	1824(%rbx), %eax
	addl	$32, %eax
	addq	$4, 1800(%rbx)
	movq	1816(%rbx), %r8
.LBB4_2:                                # %bs_write.exit
	cmpl	$11, %ebp
	setge	%sil
	testl	%edi, %edi
	setne	%r9b
	movl	%r15d, %ecx
	shlq	%cl, %r8
	movl	%edx, %edx
	orq	%r8, %rdx
	movq	%rdx, 1816(%rbx)
	subl	%r15d, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB4_4
# %bb.3:                                # %if.then.i311
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%rbx), %rax
	movl	%edx, (%rax)
	movl	1824(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 1824(%rbx)
	addq	$4, 1800(%rbx)
.LBB4_4:                                # %bs_write.exit319
	subl	%ebp, %r10d
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	cmpl	%r15d, %ebp
	jle	.LBB4_18
# %bb.5:                                # %if.then
	andb	%r9b, %sil
	movzbl	%sil, %esi
	movswl	40(%rsp,%r15,2), %edx
	leal	64(%rdx), %r8d
	movl	%edx, %ecx
	sarl	$31, %ecx
	orl	$1, %ecx
	testl	%edi, %edi
	cmovel	%edi, %ecx
	subl	%ecx, %edx
	cmpl	$127, %r8d
	ja	.LBB4_9
# %bb.6:                                # %if.then97
	movl	%esi, %edi
	movslq	%edx, %rdx
	shll	$9, %esi
	addq	x264_level_token@GOTPCREL(%rip), %rsi
	movzbl	258(%rsi,%rdx,4), %ecx
	movzwl	256(%rsi,%rdx,4), %esi
	movq	1816(%rbx), %rdx
	shlq	%cl, %rdx
	orq	%rsi, %rdx
	movq	%rdx, 1816(%rbx)
	subl	%ecx, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB4_8
# %bb.7:                                # %if.then.i328
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%rbx), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%rbx)
	addq	$4, 1800(%rbx)
.LBB4_8:                                # %bs_write.exit336
	movl	%r8d, %eax
	shll	$9, %edi
	addq	x264_level_token@GOTPCREL(%rip), %rdi
	movzbl	3(%rdi,%rax,4), %eax
	leal	1(%r15), %ecx
	cmpl	%ebp, %ecx
	jb	.LBB4_11
	jmp	.LBB4_18
.LBB4_9:                                # %if.else
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	block_residual_write_cavlc_escape
	leal	1(%r15), %ecx
	cmpl	%ebp, %ecx
	jae	.LBB4_18
.LBB4_11:                               # %for.body.lr.ph
	movl	%ebp, %r13d
	decq	%r13
	movq	x264_level_token@GOTPCREL(%rip), %r14
	jmp	.LBB4_12
	.p2align	4, 0x90
.LBB4_16:                               # %if.else146
                                        #   in Loop: Header=BB4_12 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	block_residual_write_cavlc_escape
	incq	%r15
	cmpq	%r15, %r13
	je	.LBB4_18
.LBB4_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	42(%rsp,%r15,2), %edx
	leal	64(%rdx), %ecx
	cmpl	$127, %ecx
	ja	.LBB4_16
# %bb.13:                               # %if.then127
                                        #   in Loop: Header=BB4_12 Depth=1
	movslq	%eax, %rdx
	movl	%ecx, %esi
	shlq	$9, %rdx
	addq	%r14, %rdx
	movzbl	2(%rdx,%rsi,4), %eax
	movq	1816(%rbx), %rdi
	movl	%eax, %ecx
	shlq	%cl, %rdi
	movzwl	(%rdx,%rsi,4), %ecx
	orq	%rcx, %rdi
	movq	%rdi, 1816(%rbx)
	movl	1824(%rbx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%rbx)
	cmpl	$32, %ecx
	jg	.LBB4_15
# %bb.14:                               # %if.then.i345
                                        #   in Loop: Header=BB4_12 Depth=1
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdi
	bswapq	%rdi
	movq	1800(%rbx), %rax
	movl	%edi, (%rax)
	addl	$32, 1824(%rbx)
	addq	$4, 1800(%rbx)
.LBB4_15:                               # %bs_write.exit353
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	(%rdx,%rsi,4), %rax
	movzbl	3(%rax), %eax
	incq	%r15
	cmpq	%r15, %r13
	jne	.LBB4_12
.LBB4_18:                               # %if.end150
	movq	16(%rsp), %r9                   # 8-byte Reload
	leal	1(%r9), %edx
	decq	%r12
	movzbl	%bpl, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movzbl	block_residual_write_cavlc.count_cat(%rcx), %ecx
	cmpl	%ecx, %eax
	jae	.LBB4_23
# %bb.19:                               # %if.then158
	movslq	%edx, %rdi
	movq	1816(%rbx), %rsi
	cmpl	$3, 12(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_21
# %bb.20:                               # %if.then161
	leaq	(,%r12,8), %r8
	addq	x264_total_zeros_dc@GOTPCREL(%rip), %r8
	movzbl	1(%r8,%rdi,2), %eax
	movl	%eax, %ecx
	shlq	%cl, %rsi
	movzbl	(%r8,%rdi,2), %ecx
	orq	%rcx, %rsi
	movq	%rsi, 1816(%rbx)
	movl	1824(%rbx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%rbx)
	cmpl	$33, %ecx
	jl	.LBB4_22
	jmp	.LBB4_23
.LBB4_21:                               # %if.else176
	movq	%r12, %r8
	shlq	$5, %r8
	addq	x264_total_zeros@GOTPCREL(%rip), %r8
	movzbl	1(%r8,%rdi,2), %eax
	movl	%eax, %ecx
	shlq	%cl, %rsi
	movzbl	(%r8,%rdi,2), %ecx
	orq	%rcx, %rsi
	movq	%rsi, 1816(%rbx)
	movl	1824(%rbx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 1824(%rbx)
	cmpl	$32, %ecx
	jg	.LBB4_23
.LBB4_22:                               # %if.end192.sink.split
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%rbx), %rax
	movl	%esi, (%rax)
	addl	$32, 1824(%rbx)
	addq	$4, 1800(%rbx)
.LBB4_23:                               # %if.end192
	cmpl	$2, %ebp
	setge	%al
	cmpl	$2147483647, %r9d               # imm = 0x7FFFFFFF
	setb	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB4_29
# %bb.24:                               # %for.body204.lr.ph
	movl	1824(%rbx), %eax
	movl	$36, %esi
	movq	x264_run_before@GOTPCREL(%rip), %rdi
	.p2align	4, 0x90
.LBB4_25:                               # %for.body204
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$7, %edx
	movl	$7, %r9d
	cmovbl	%edx, %r9d
	decl	%r9d
	movzbl	36(%rsp,%rsi), %r8d
	shlq	$5, %r9
	addq	%rdi, %r9
	movzbl	1(%r9,%r8,2), %ecx
	movzbl	(%r9,%r8,2), %r10d
	movq	1816(%rbx), %r9
	shlq	%cl, %r9
	orq	%r10, %r9
	movq	%r9, 1816(%rbx)
	subl	%ecx, %eax
	movl	%eax, 1824(%rbx)
	cmpl	$32, %eax
	jg	.LBB4_27
# %bb.26:                               # %if.then.i396
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	%eax, %ecx
	shlq	%cl, %r9
	bswapq	%r9
	movq	1800(%rbx), %rax
	movl	%r9d, (%rax)
	movl	1824(%rbx), %eax
	addl	$32, %eax
	movl	%eax, 1824(%rbx)
	addq	$4, 1800(%rbx)
	movzbl	36(%rsp,%rsi), %r8d
.LBB4_27:                               # %bs_write.exit404
                                        #   in Loop: Header=BB4_25 Depth=1
	leaq	-35(%rsi), %rcx
	cmpq	%r12, %rcx
	jge	.LBB4_29
# %bb.28:                               # %bs_write.exit404
                                        #   in Loop: Header=BB4_25 Depth=1
	movzbl	%r8b, %ecx
	subl	%ecx, %edx
	incq	%rsi
	testl	%edx, %edx
	jg	.LBB4_25
.LBB4_29:                               # %for.cond.cleanup203
	movl	%ebp, %eax
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
.Lfunc_end4:
	.size	block_residual_write_cavlc, .Lfunc_end4-block_residual_write_cavlc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_residual_write_cavlc_escape
	.type	block_residual_write_cavlc_escape,@function
block_residual_write_cavlc_escape:      # @block_residual_write_cavlc_escape
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
	movl	%edx, %ebx
	movl	%esi, %r14d
	movl	%edx, %eax
	sarl	$15, %eax
	xorl	%eax, %ebx
	subl	%eax, %ebx
	leal	(%rbx,%rbx), %edx
	subl	%eax, %edx
	addl	$-2, %edx
	movl	%edx, %eax
	movl	%r14d, %ecx
	sarl	%cl, %eax
	cmpl	$14, %eax
	jg	.LBB5_2
# %bb.1:                                # %if.then
	movl	$1, %esi
	movl	%r14d, %ecx
	shll	%cl, %esi
	leal	(%r14,%rax), %ecx
	incl	%ecx
	leal	-1(%rsi), %eax
	movq	1816(%rdi), %r8
	shlq	%cl, %r8
	andl	%eax, %edx
	addl	%esi, %edx
	orq	%r8, %rdx
	movq	%rdx, 1816(%rdi)
	movl	1824(%rdi), %eax
	subl	%ecx, %eax
	movl	%eax, 1824(%rdi)
	cmpl	$33, %eax
	jl	.LBB5_12
	jmp	.LBB5_13
.LBB5_2:                                # %if.else
	movl	$-15, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	leal	(%rdx,%rax), %ecx
	testl	%r14d, %r14d
	leal	-15(%rdx,%rax), %ebp
	cmovnel	%ecx, %ebp
	movl	$15, %r15d
	cmpl	$4096, %ebp                     # imm = 0x1000
	jl	.LBB5_8
# %bb.3:                                # %if.then15
	movq	3200(%rdi), %rax
	cmpl	$100, 4(%rax)
	jl	.LBB5_14
# %bb.4:                                # %while.cond.preheader
	movl	$4096, %edx                     # imm = 0x1000
	cmpl	$4096, %ebp                     # imm = 0x1000
	je	.LBB5_9
# %bb.5:                                # %while.body.preheader
	movl	$4096, %eax                     # imm = 0x1000
	movl	$13, %r15d
	.p2align	4, 0x90
.LBB5_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	subl	%eax, %ebp
	movl	$1, %eax
	movl	%r15d, %ecx
	shll	%cl, %eax
	incl	%r15d
	cmpl	%eax, %ebp
	jg	.LBB5_6
# %bb.7:                                # %if.end28.loopexit
	addl	$2, %r15d
	jmp	.LBB5_8
.LBB5_14:                               # %if.else24
	movl	$.L.str, %edx
	movq	%rdi, %r12
	movl	$1, %esi
	movl	%ebp, %ecx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	%r12, %rdi
	orl	$4094, %ebp                     # imm = 0xFFE
	andl	$4095, %ebp                     # imm = 0xFFF
.LBB5_8:                                # %if.end28
	movl	%ebp, %edx
.LBB5_9:                                # %if.end28
	leal	1(%r15), %ecx
	movq	1816(%rdi), %rsi
	shlq	%cl, %rsi
	orq	$1, %rsi
	movq	%rsi, 1816(%rdi)
	movl	1824(%rdi), %eax
	subl	%ecx, %eax
	movl	%eax, 1824(%rdi)
	cmpl	$32, %eax
	jg	.LBB5_11
# %bb.10:                               # %if.then.i87
	movl	%eax, %ecx
	shlq	%cl, %rsi
	bswapq	%rsi
	movq	1800(%rdi), %rax
	movl	%esi, (%rax)
	movl	1824(%rdi), %eax
	addl	$32, %eax
	addq	$4, 1800(%rdi)
	movq	1816(%rdi), %rsi
.LBB5_11:                               # %bs_write.exit95
	addl	$-3, %r15d
	movl	$-1, %r8d
	movl	%r15d, %ecx
	shll	%cl, %r8d
	notl	%r8d
	andl	%r8d, %edx
	shlq	%cl, %rsi
	orq	%rsi, %rdx
	movq	%rdx, 1816(%rdi)
	subl	%r15d, %eax
	movl	%eax, 1824(%rdi)
	cmpl	$32, %eax
	jg	.LBB5_13
.LBB5_12:                               # %if.end35.sink.split
	movl	%eax, %ecx
	shlq	%cl, %rdx
	bswapq	%rdx
	movq	1800(%rdi), %rax
	movl	%edx, (%rax)
	addl	$32, 1824(%rdi)
	addq	$4, 1800(%rdi)
.LBB5_13:                               # %if.end35
	cmpl	$1, %r14d
	adcl	$0, %r14d
	movslq	%r14d, %rax
	movzwl	block_residual_write_cavlc_escape.next_suffix(%rax,%rax), %ecx
	xorl	%edx, %edx
	cmpl	%ecx, %ebx
	setg	%dl
	addl	%edx, %eax
                                        # kill: def $eax killed $eax killed $rax
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
.Lfunc_end5:
	.size	block_residual_write_cavlc_escape, .Lfunc_end5-block_residual_write_cavlc_escape
	.cfi_endproc
                                        # -- End function
	.type	x264_macroblock_write_cavlc.i_offsets,@object # @x264_macroblock_write_cavlc.i_offsets
	.section	.rodata.str1.1,"aMS",@progbits,1
x264_macroblock_write_cavlc.i_offsets:
	.asciz	"\005\027"
	.size	x264_macroblock_write_cavlc.i_offsets, 3

	.type	x264_mb_pred_mode4x4_fix,@object # @x264_mb_pred_mode4x4_fix
	.section	.rodata,"a",@progbits
x264_mb_pred_mode4x4_fix:
	.ascii	"\377\000\001\002\003\004\005\006\007\b\002\002\002"
	.size	x264_mb_pred_mode4x4_fix, 13

	.type	x264_scan8,@object              # @x264_scan8
	.p2align	4, 0x0
x264_scan8:
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	44                              # 0x2c
	.long	46                              # 0x2e
	.long	47                              # 0x2f
	.size	x264_scan8, 108

	.type	x264_mb_pred_mode8x8c_fix,@object # @x264_mb_pred_mode8x8c_fix
x264_mb_pred_mode8x8c_fix:
	.asciz	"\000\001\002\003\000\000"
	.size	x264_mb_pred_mode8x8c_fix, 7

	.type	x264_mb_pred_mode16x16_fix,@object # @x264_mb_pred_mode16x16_fix
x264_mb_pred_mode16x16_fix:
	.ascii	"\000\001\002\003\002\002\002"
	.size	x264_mb_pred_mode16x16_fix, 7

	.type	sub_mb_type_p_to_golomb,@object # @sub_mb_type_p_to_golomb
	.section	.rodata.str1.1,"aMS",@progbits,1
sub_mb_type_p_to_golomb:
	.asciz	"\003\001\002"
	.size	sub_mb_type_p_to_golomb, 4

	.type	sub_mb_type_b_to_golomb,@object # @sub_mb_type_b_to_golomb
sub_mb_type_b_to_golomb:
	.asciz	"\n\004\005\001\013\006\007\002\f\b\t\003"
	.size	sub_mb_type_b_to_golomb, 13

	.type	x264_mb_partition_listX_table,@object # @x264_mb_partition_listX_table
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_mb_partition_listX_table:
	.asciz	"\001\001\001\001\000\000\000\000\001\001\001\001\000\000\000\000"
	.asciz	"\000\000\000\000\001\001\001\001\001\001\001\001\000\000\000\000"
	.size	x264_mb_partition_listX_table, 34

	.type	x264_mb_type_list_table,@object # @x264_mb_type_list_table
	.p2align	4, 0x0
x264_mb_type_list_table:
	.zero	4
	.zero	4
	.zero	4
	.zero	4
	.zero	2,1
	.zero	2
	.zero	4
	.zero	2,1
	.zero	2
	.zero	4
	.zero	2,1
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.zero	2,1
	.ascii	"\000\001"
	.ascii	"\000\001"
	.asciz	"\001"
	.zero	2
	.zero	2,1
	.ascii	"\000\001"
	.zero	2,1
	.zero	2,1
	.asciz	"\001"
	.asciz	"\001"
	.zero	2,1
	.zero	4,1
	.zero	4
	.zero	4
	.size	x264_mb_type_list_table, 76

	.type	mb_type_b_to_golomb,@object     # @mb_type_b_to_golomb
	.p2align	4, 0x0
mb_type_b_to_golomb:
	.ascii	"\004\b\f\n\006\016\020\022\024"
	.ascii	"\005\t\r\013\007\017\021\023\025"
	.ascii	"\001\377\377\377\002\377\377\377\003"
	.size	mb_type_b_to_golomb, 27

	.type	intra4x4_cbp_to_golomb,@object  # @intra4x4_cbp_to_golomb
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
intra4x4_cbp_to_golomb:
	.asciz	"\003\035\036\021\037\022%\b &\023\t\024\n\013\002\020!\"\025#\026'\004$(\027\005\030\006\007\001)*+\031,\032.\f-/\033\r\034\016\017"
	.size	intra4x4_cbp_to_golomb, 48

	.type	inter_cbp_to_golomb,@object     # @inter_cbp_to_golomb
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
inter_cbp_to_golomb:
	.ascii	"\000\002\003\007\004\b\021\r\005\022\t\016\n\017\020\013\001 !$\"%,(#-&)'*+\023\006\030\031\024\032\025.\034\033/\026\035\027\036\037\f"
	.size	inter_cbp_to_golomb, 48

	.type	ct_index,@object                # @ct_index
	.p2align	4, 0x0
ct_index:
	.ascii	"\000\000\001\001\002\002\002\002\003\003\003\003\003\003\003\003\003"
	.size	ct_index, 17

	.type	x264_ue_size_tab,@object        # @x264_ue_size_tab
	.p2align	4, 0x0
x264_ue_size_tab:
	.ascii	"\001\001\003\003\005\005\005\005\007\007\007\007\007\007\007\007\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\013\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\r\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017\017"
	.size	x264_ue_size_tab, 256

	.type	x264_mb_transform_8x8_allowed.partition_tab,@object # @x264_mb_transform_8x8_allowed.partition_tab
	.p2align	4, 0x0
x264_mb_transform_8x8_allowed.partition_tab:
	.asciz	"\000\000\000\000\001\002\000\001\001\001\001\001\001\001\001\001\001\001"
	.size	x264_mb_transform_8x8_allowed.partition_tab, 19

	.type	block_residual_write_cavlc.ctz_index,@object # @block_residual_write_cavlc.ctz_index
	.section	.rodata.cst8,"aM",@progbits,8
block_residual_write_cavlc.ctz_index:
	.asciz	"\003\000\001\000\002\000\001"
	.size	block_residual_write_cavlc.ctz_index, 8

	.type	block_residual_write_cavlc.count_cat,@object # @block_residual_write_cavlc.count_cat
	.section	.rodata,"a",@progbits
block_residual_write_cavlc.count_cat:
	.ascii	"\020\017\020\004\017"
	.size	block_residual_write_cavlc.count_cat, 5

	.type	block_residual_write_cavlc_escape.next_suffix,@object # @block_residual_write_cavlc_escape.next_suffix
	.p2align	1, 0x0
block_residual_write_cavlc_escape.next_suffix:
	.short	0                               # 0x0
	.short	3                               # 0x3
	.short	6                               # 0x6
	.short	12                              # 0xc
	.short	24                              # 0x18
	.short	48                              # 0x30
	.short	65535                           # 0xffff
	.size	block_residual_write_cavlc_escape.next_suffix, 14

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OVERFLOW levelcode=%d is only allowed in High Profile\n"
	.size	.L.str, 55

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
