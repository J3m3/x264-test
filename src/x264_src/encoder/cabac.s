	.text
	.file	"cabac.c"
	.globl	x264_cabac_mb_skip              # -- Begin function x264_cabac_mb_skip
	.p2align	4, 0x90
	.type	x264_cabac_mb_skip,@function
x264_cabac_mb_skip:                     # @x264_cabac_mb_skip
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %edx
	movl	16488(%rdi), %esi
	xorl	%eax, %eax
	movl	$0, %ecx
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %land.rhs
	movl	16584(%rdi), %ecx
	cmpl	$6, %ecx
	setne	%r8b
	cmpl	$18, %ecx
	setne	%cl
	andb	%r8b, %cl
	movzbl	%cl, %ecx
.LBB0_2:                                # %land.end
	testb	$2, %sil
	je	.LBB0_4
# %bb.3:                                # %land.rhs9
	movl	16580(%rdi), %eax
	cmpl	$6, %eax
	setne	%sil
	cmpl	$18, %eax
	setne	%al
	andb	%sil, %al
	movzbl	%al, %eax
.LBB0_4:                                # %land.end18
	cmpl	$0, 7248(%rdi)
	leal	11(%rax,%rcx), %r8d
	leal	24(%rax,%rcx), %esi
	cmovel	%r8d, %esi
	addq	$13904, %rdi                    # imm = 0x3650
	jmp	x264_cabac_encode_decision_c@PLT # TAILCALL
.Lfunc_end0:
	.size	x264_cabac_mb_skip, .Lfunc_end0-x264_cabac_mb_skip
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_write_cabac     # -- Begin function x264_macroblock_write_cabac
	.p2align	4, 0x90
	.type	x264_macroblock_write_cabac,@function
x264_macroblock_write_cabac:            # @x264_macroblock_write_cabac
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
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	16(%rsi), %r14d
	subl	24(%rsi), %r14d
	movslq	17384(%rdi), %r15
	subl	12(%rsi), %r14d
	shll	$3, %r14d
	subl	8(%rsi), %r14d
	cmpl	$0, 7268(%rdi)
	je	.LBB1_5
# %bb.1:                                # %land.lhs.true.i
	testb	$1, 16388(%rbx)
	je	.LBB1_4
# %bb.2:                                # %lor.lhs.false.i
	movq	16616(%rbx), %rax
	movslq	16392(%rbx), %rcx
	movslq	16372(%rbx), %rdx
	subq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$18, %eax
	je	.LBB1_4
# %bb.3:                                # %lor.lhs.false.i
	cmpl	$6, %eax
	jne	.LBB1_5
.LBB1_4:                                # %if.then.i
	movl	25772(%rbx), %esi
	addl	$70, %esi
	movl	16436(%rbx), %edx
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_5:                                # %if.end.i
	movl	7248(%rbx), %eax
	testl	%eax, %eax
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	je	.LBB1_12
# %bb.6:                                # %if.end.i
	cmpl	$2, %eax
	jne	.LBB1_15
# %bb.7:                                # %if.then26.i
	movl	16488(%rbx), %eax
	xorl	%ecx, %ecx
	testb	$1, %al
	je	.LBB1_9
# %bb.8:                                # %land.lhs.true30.i
	xorl	%ecx, %ecx
	cmpl	$0, 16584(%rbx)
	setne	%cl
.LBB1_9:                                # %if.end35.i
	testb	$2, %al
	je	.LBB1_11
# %bb.10:                               # %land.lhs.true40.i
	cmpl	$1, 16580(%rbx)
	sbbl	$-1, %ecx
.LBB1_11:                               # %if.end46.i
	addl	$3, %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	$6, %r8d
	movl	$7, %r9d
	pushq	$10
	.cfi_adjust_cfa_offset 8
	pushq	$9
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	x264_cabac_mb_type_intra
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$3, %r15d
	jne	.LBB1_30
.LBB1_27:                               # %if.then
	movl	24(%r13), %r12d
	subl	16(%r13), %r12d
	addl	12(%r13), %r12d
	shll	$3, %r12d
	addl	8(%r13), %r12d
	addl	26712(%rbx), %r14d
	addl	%r12d, %r14d
	movl	%r14d, 26712(%rbx)
	movq	24(%r13), %rdi
	movq	21344(%rbx), %rsi
	movl	$256, %edx                      # imm = 0x100
	callq	memcpy@PLT
	movq	24(%r13), %rax
	leaq	256(%rax), %rcx
	movq	%rcx, 24(%r13)
	movq	21352(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 256(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 40(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	24(%r13), %rax
	movq	21352(%rbx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, 56(%rax)
	movq	24(%r13), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, 24(%r13)
	movq	21360(%rbx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 64(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 32(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 40(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, 48(%rax)
	movq	24(%r13), %rax
	movq	21360(%rbx), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, 56(%rax)
	addq	$64, 24(%r13)
	movq	%r13, %rdi
	callq	x264_cabac_encode_init_core@PLT
	jmp	.LBB1_231
.LBB1_12:                               # %if.then52.i
	cmpl	$5, %r15d
	je	.LBB1_25
# %bb.13:                               # %if.then52.i
	cmpl	$4, %r15d
	jne	.LBB1_26
# %bb.14:                               # %if.else.thread
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	movq	%r13, %rdi
	movl	$14, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpl	$16, 17388(%rbx)
	setne	%dl
	movq	%r13, %rdi
	movl	$15, %esi
	callq	x264_cabac_encode_decision_c@PLT
	movl	17388(%rbx), %eax
	xorl	%esi, %esi
	cmpl	$16, %eax
	sete	%sil
	xorl	$17, %esi
	xorl	%edx, %edx
	cmpl	$14, %eax
	sete	%dl
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB1_53
.LBB1_15:                               # %if.else75.i
	movl	16488(%rbx), %eax
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB1_17
# %bb.16:                               # %land.lhs.true81.i
	movl	16584(%rbx), %ecx
	cmpl	$18, %ecx
	setne	%dl
	cmpl	$7, %ecx
	setne	%cl
	andb	%dl, %cl
	movzbl	%cl, %esi
.LBB1_17:                               # %if.end93.i
	testb	$2, %al
	je	.LBB1_21
# %bb.18:                               # %land.lhs.true98.i
	movl	16580(%rbx), %eax
	cmpl	$7, %eax
	je	.LBB1_21
# %bb.19:                               # %land.lhs.true98.i
	cmpl	$18, %eax
	je	.LBB1_21
# %bb.20:                               # %if.then108.i
	incl	%esi
.LBB1_21:                               # %if.end110.i
	addl	$27, %esi
	cmpl	$7, %r15d
	jne	.LBB1_23
# %bb.22:                               # %if.else.thread1855
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB1_155
.LBB1_23:                               # %if.end115.i
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$17, %r15d
	jne	.LBB1_28
# %bb.24:                               # %if.else.thread1852
	movq	%r13, %rdi
	movl	$30, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$31, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB1_60
.LBB1_25:                               # %if.else.thread1849
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	movq	%r13, %rdi
	movl	$14, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$15, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$16, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB1_58
.LBB1_26:                               # %if.else72.i
	movq	%r13, %rdi
	movl	$14, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	$17, %ecx
	movl	$18, %r8d
	movl	$19, %r9d
	pushq	$20
	.cfi_adjust_cfa_offset 8
	pushq	$20
	.cfi_adjust_cfa_offset 8
	pushq	$19
	.cfi_adjust_cfa_offset 8
	callq	x264_cabac_mb_type_intra
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$3, %r15d
	je	.LBB1_27
.LBB1_30:                               # %if.end
	cmpl	$2, %r15d
	sete	%al
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	ja	.LBB1_51
# %bb.31:                               # %if.then48
	movl	%r14d, 36(%rsp)                 # 4-byte Spill
	movq	3328(%rbx), %rax
	cmpl	$0, 60(%rax)
	setne	%al
	cmpl	$2, %r15d
	setne	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB1_33
# %bb.32:                               # %if.end51.thread
	movl	17396(%rbx), %edx
	movl	$399, %esi                      # imm = 0x18F
	addl	25768(%rbx), %esi
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB1_34
.LBB1_28:                               # %if.else120.i
	cmpl	$3, %r15d
	ja	.LBB1_47
# %bb.29:                               # %if.then132.i
	movq	%r13, %rdi
	movl	$30, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$31, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	%r15d, %edx
	movl	$32, %ecx
	movl	$33, %r8d
	movl	$34, %r9d
	pushq	$35
	.cfi_adjust_cfa_offset 8
	pushq	$35
	.cfi_adjust_cfa_offset 8
	pushq	$34
	.cfi_adjust_cfa_offset 8
	callq	x264_cabac_mb_type_intra
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	cmpl	$3, %r15d
	je	.LBB1_27
	jmp	.LBB1_30
.LBB1_33:                               # %if.end51
	cmpl	$2, %r15d
	je	.LBB1_40
.LBB1_34:                               # %if.then53
	xorl	%eax, %eax
	cmpl	$0, 17396(%rbx)
	setne	%al
	leaq	(%rax,%rax,2), %r14
	incq	%r14
	xorl	%r15d, %r15d
	jmp	.LBB1_36
	.p2align	4, 0x90
.LBB1_35:                               # %if.else.i
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	%r13, %rdi
	movl	$68, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%r13d, %r13d
	cmpb	%bpl, %r12b
	setg	%r13b
	movl	%r12d, %ebp
	subl	%r13d, %ebp
	movl	%ebp, %edx
	andl	$1, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$69, %esi
	callq	x264_cabac_encode_decision_c@PLT
	negb	%r13b
	movzbl	%r13b, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	addl	%r12d, %eax
	shrb	%al
	movzbl	%al, %edx
	andl	$1, %edx
	movq	%r13, %rdi
	movl	$69, %esi
	callq	x264_cabac_encode_decision_c@PLT
	sarl	$2, %ebp
	movq	%r13, %rdi
	movl	$69, %esi
	movl	%ebp, %edx
	callq	x264_cabac_encode_decision_c@PLT
	addq	%r14, %r15
	cmpq	$16, %r15
	jae	.LBB1_40
.LBB1_36:                               # %for.body60
                                        # =>This Inner Loop Header: Depth=1
	movslq	x264_scan8(,%r15,4), %rax
	movsbq	25023(%rbx,%rax), %rcx
	movsbq	25016(%rbx,%rax), %rdx
	movzbl	x264_mb_pred_mode4x4_fix+1(%rcx), %esi
	movzbl	x264_mb_pred_mode4x4_fix+1(%rdx), %ecx
	cmpb	%cl, %sil
	cmovll	%esi, %ecx
	movl	$2, %ebp
	testb	%cl, %cl
	js	.LBB1_38
# %bb.37:                               # %for.body60
                                        #   in Loop: Header=BB1_36 Depth=1
	movl	%ecx, %ebp
.LBB1_38:                               # %for.body60
                                        #   in Loop: Header=BB1_36 Depth=1
	movsbq	25024(%rbx,%rax), %rax
	movsbl	x264_mb_pred_mode4x4_fix+1(%rax), %r12d
	cmpb	%r12b, %bpl
	jne	.LBB1_35
# %bb.39:                               # %if.then.i1016
                                        #   in Loop: Header=BB1_36 Depth=1
	movq	%r13, %rdi
	movl	$68, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	addq	%r14, %r15
	cmpq	$16, %r15
	jb	.LBB1_36
.LBB1_40:                               # %if.end73
	movl	16488(%rbx), %eax
	xorl	%esi, %esi
	testb	$1, %al
	je	.LBB1_42
# %bb.41:                               # %land.lhs.true.i1021
	movq	16664(%rbx), %rcx
	movslq	16600(%rbx), %rdx
	xorl	%esi, %esi
	cmpb	$0, (%rcx,%rdx)
	setne	%sil
.LBB1_42:                               # %if.end.i1023
	movslq	17412(%rbx), %r14
	testb	$2, %al
	je	.LBB1_44
# %bb.43:                               # %land.lhs.true12.i
	movq	16664(%rbx), %rax
	movslq	16604(%rbx), %rcx
	cmpb	$1, (%rax,%rcx)
	sbbl	$-1, %esi
.LBB1_44:                               # %if.end23.i
	addl	$64, %esi
	leaq	-1(%r14), %r15
	xorl	%edx, %edx
	cmpq	$3, %r15
	setb	%dl
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
	movb	$1, %al
	movl	%eax, 24(%rsp)                  # 4-byte Spill
	cmpq	$2, %r15
	ja	.LBB1_154
# %bb.45:                               # %if.then28.i
	movl	%r14d, %ebp
	andl	$-2, %ebp
	xorl	%edx, %edx
	cmpl	$2, %ebp
	sete	%dl
	movq	%r13, %rdi
	movl	$67, %esi
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$2, %ebp
	jne	.LBB1_154
# %bb.46:                               # %if.then33.i
	xorl	%edx, %edx
	cmpl	$3, %r14d
	sete	%dl
	movq	%r13, %rdi
	movl	$67, %esi
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB1_154
.LBB1_47:                               # %if.else133.i
	leal	(%r15,%r15,2), %eax
	movl	17388(%rbx), %ecx
	addl	%ecx, %eax
	addl	$-38, %eax
	cltq
	movzbl	x264_cabac_mb_type.i_mb_bits(%rax), %ebp
	movl	%ebp, %r12d
	andl	$1, %r12d
	movq	%r13, %rdi
	movl	$30, %esi
	movl	%r12d, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	$32, %esi
	subl	%r12d, %esi
	movl	%ebp, %edx
	shrl	%edx
	andl	$1, %edx
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
	movl	%ebp, %edx
	shrl	$2, %edx
	cmpl	$1, %edx
	je	.LBB1_50
# %bb.48:                               # %if.then149.i
	andl	$1, %edx
	movq	%r13, %rdi
	movl	$32, %esi
	callq	x264_cabac_encode_decision_c@PLT
	movl	%ebp, %edx
	shrl	$3, %edx
	andl	$1, %edx
	movq	%r13, %rdi
	movl	$32, %esi
	callq	x264_cabac_encode_decision_c@PLT
	movl	%ebp, %edx
	shrl	$4, %edx
	andl	$1, %edx
	movq	%r13, %rdi
	movl	$32, %esi
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$5, %ebp
	cmpl	$1, %ebp
	je	.LBB1_50
# %bb.49:                               # %if.then158.i
	andl	$1, %ebp
	movq	%r13, %rdi
	movl	$32, %esi
	movl	%ebp, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_50:                               # %if.else
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
.LBB1_51:                               # %if.else
	leal	-4(%r15), %eax
	cmpl	$13, %eax
	ja	.LBB1_126
# %bb.52:                               # %if.else
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_53:                               # %if.then76
	movl	17388(%rbx), %ecx
	movl	21416(%rbx), %eax
	cmpl	$14, %ecx
	je	.LBB1_66
# %bb.54:                               # %if.then76
	cmpl	$16, %ecx
	jne	.LBB1_69
# %bb.55:                               # %if.then80
	cmpl	$2, %eax
	jl	.LBB1_57
# %bb.56:                               # %if.then86
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	x264_cabac_mb_ref
.LBB1_57:                               # %do.body
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$4, %r8d
	callq	x264_cabac_mb_mvd
	movzwl	%ax, %eax
	movabsq	$281479271743489, %rcx          # imm = 0x1000100010001
	imulq	%rax, %rcx
	movq	%rcx, 25544(%rbx)
	movq	%rcx, 25560(%rbx)
	movq	%rcx, 25576(%rbx)
	movq	%rcx, 25592(%rbx)
	jmp	.LBB1_155
.LBB1_58:                               # %for.cond149.preheader
	movzbl	17392(%rbx), %ebp
	movq	%r13, %rdi
	movl	$21, %esi
	cmpb	$3, %bpl
	jne	.LBB1_62
# %bb.59:                               # %if.then.i1063
	movl	$1, %edx
	jmp	.LBB1_73
.LBB1_60:                               # %for.cond183.preheader
	movzbl	17392(%rbx), %ebp
	movq	%r13, %rdi
	movl	$36, %esi
	cmpb	$12, %bpl
	jne	.LBB1_64
# %bb.61:                               # %x264_cabac_mb_sub_b_partition.exit
	xorl	%edx, %edx
	jmp	.LBB1_233
.LBB1_62:                               # %if.end.i1059
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$22, %esi
	cmpb	$1, %bpl
	jne	.LBB1_72
# %bb.63:                               # %if.then2.i
	xorl	%edx, %edx
	jmp	.LBB1_73
.LBB1_64:                               # %if.end.i1189
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$37, %esi
	cmpb	$11, %bpl
	jne	.LBB1_232
# %bb.65:                               # %if.then2.i1192
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
	xorl	%edx, %edx
	jmp	.LBB1_233
.LBB1_66:                               # %if.then96
	movl	%r14d, %ebp
	cmpl	$2, %eax
	jl	.LBB1_68
# %bb.67:                               # %if.then103
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	x264_cabac_mb_ref
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	movl	$8, %ecx
	callq	x264_cabac_mb_ref
.LBB1_68:                               # %do.body105
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$4, %r8d
	callq	x264_cabac_mb_mvd
	movzwl	%ax, %eax
	movabsq	$281479271743489, %r14          # imm = 0x1000100010001
	imulq	%r14, %rax
	movq	%rax, 25544(%rbx)
	movq	%rax, 25560(%rbx)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	movl	$8, %ecx
	movl	$4, %r8d
	callq	x264_cabac_mb_mvd
	movzwl	%ax, %eax
	imulq	%r14, %rax
	movq	%rax, 25576(%rbx)
	movq	%rax, 25592(%rbx)
	movl	%ebp, %r14d
	jmp	.LBB1_155
.LBB1_69:                               # %if.else119
	cmpl	$2, %eax
	jl	.LBB1_71
# %bb.70:                               # %if.then126
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	x264_cabac_mb_ref
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	movl	$4, %ecx
	callq	x264_cabac_mb_ref
.LBB1_71:                               # %do.body128
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	x264_cabac_mb_mvd
	movzwl	%ax, %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movl	%ecx, 25544(%rbx)
	movl	%ecx, 25560(%rbx)
	movl	%ecx, 25576(%rbx)
	movl	%ecx, 25592(%rbx)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	movl	$4, %ecx
	movl	$2, %r8d
	callq	x264_cabac_mb_mvd
	movzwl	%ax, %eax
	movl	%eax, %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movl	%ecx, 25548(%rbx)
	movl	%ecx, 25564(%rbx)
	movl	%ecx, 25580(%rbx)
	movl	%ecx, 25596(%rbx)
	jmp	.LBB1_155
.LBB1_72:                               # %if.else.i1061
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$2, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$23, %esi
.LBB1_73:                               # %x264_cabac_mb_sub_p_partition.exit
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17393(%rbx), %ebp
	movq	%r13, %rdi
	movl	$21, %esi
	cmpb	$3, %bpl
	jne	.LBB1_75
# %bb.74:                               # %if.then.i1063.1
	movl	$1, %edx
	jmp	.LBB1_78
.LBB1_75:                               # %if.end.i1059.1
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$22, %esi
	cmpb	$1, %bpl
	jne	.LBB1_77
# %bb.76:                               # %if.then2.i.1
	xorl	%edx, %edx
	jmp	.LBB1_78
.LBB1_77:                               # %if.else.i1061.1
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$2, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$23, %esi
.LBB1_78:                               # %x264_cabac_mb_sub_p_partition.exit.1
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17394(%rbx), %ebp
	movq	%r13, %rdi
	movl	$21, %esi
	cmpb	$3, %bpl
	jne	.LBB1_80
# %bb.79:                               # %if.then.i1063.2
	movl	$1, %edx
	jmp	.LBB1_83
.LBB1_80:                               # %if.end.i1059.2
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$22, %esi
	cmpb	$1, %bpl
	jne	.LBB1_82
# %bb.81:                               # %if.then2.i.2
	xorl	%edx, %edx
	jmp	.LBB1_83
.LBB1_82:                               # %if.else.i1061.2
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$2, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$23, %esi
.LBB1_83:                               # %x264_cabac_mb_sub_p_partition.exit.2
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17395(%rbx), %ebp
	movq	%r13, %rdi
	movl	$21, %esi
	cmpb	$3, %bpl
	jne	.LBB1_85
# %bb.84:                               # %if.then.i1063.3
	movl	$1, %edx
	jmp	.LBB1_88
.LBB1_85:                               # %if.end.i1059.3
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$22, %esi
	cmpb	$1, %bpl
	jne	.LBB1_87
# %bb.86:                               # %if.then2.i.3
	xorl	%edx, %edx
	jmp	.LBB1_88
.LBB1_87:                               # %if.else.i1061.3
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$2, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$23, %esi
.LBB1_88:                               # %x264_cabac_mb_sub_p_partition.exit.3
	callq	x264_cabac_encode_decision_c@PLT
	movl	%r14d, 36(%rsp)                 # 4-byte Spill
	cmpl	$2, 21416(%rbx)
	jl	.LBB1_117
# %bb.89:                               # %if.then167
	movzbl	25124(%rbx), %eax
	cmpb	$0, 25131(%rbx)
	jle	.LBB1_251
# %bb.90:                               # %land.lhs.true.i1073
	xorl	%r12d, %r12d
	cmpb	$0, 25691(%rbx)
	sete	%r12b
	testb	%al, %al
	jle	.LBB1_92
.LBB1_91:                               # %land.lhs.true22.i
	cmpb	$0, 25684(%rbx)
	leal	2(%r12), %eax
	cmovnel	%r12d, %eax
	movl	%eax, %r12d
.LBB1_92:                               # %if.end31.i
	movsbl	25132(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_95
# %bb.93:                               # %for.body.preheader.i
	incl	%ebp
	.p2align	4, 0x90
.LBB1_94:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r12), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r12d
	addl	$4, %r12d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_94
.LBB1_95:                               # %x264_cabac_mb_ref.exit
	addl	$54, %r12d
	xorl	%r15d, %r15d
	movq	%r13, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	25126(%rbx), %eax
	cmpb	$0, 25133(%rbx)
	jle	.LBB1_97
# %bb.96:                               # %land.lhs.true.i1105
	xorl	%r15d, %r15d
	cmpb	$0, 25693(%rbx)
	sete	%r15b
.LBB1_97:                               # %if.end.i1080
	testb	%al, %al
	jle	.LBB1_99
# %bb.98:                               # %land.lhs.true22.i1099
	cmpb	$0, 25686(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_99:                               # %if.end31.i1083
	movsbl	25134(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_102
# %bb.100:                              # %for.body.preheader.i1089
	incl	%ebp
	.p2align	4, 0x90
.LBB1_101:                              # %for.body.i1091
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_101
.LBB1_102:                              # %x264_cabac_mb_ref.exit1110
	addl	$54, %r15d
	xorl	%r12d, %r12d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	25140(%rbx), %eax
	cmpb	$0, 25147(%rbx)
	jle	.LBB1_104
# %bb.103:                              # %land.lhs.true.i1140
	xorl	%r12d, %r12d
	cmpb	$0, 25707(%rbx)
	sete	%r12b
.LBB1_104:                              # %if.end.i1115
	testb	%al, %al
	jle	.LBB1_106
# %bb.105:                              # %land.lhs.true22.i1134
	cmpb	$0, 25700(%rbx)
	leal	2(%r12), %eax
	cmovnel	%r12d, %eax
	movl	%eax, %r12d
.LBB1_106:                              # %if.end31.i1118
	movsbl	25148(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_109
# %bb.107:                              # %for.body.preheader.i1124
	incl	%ebp
	.p2align	4, 0x90
.LBB1_108:                              # %for.body.i1126
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r12), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r12d
	addl	$4, %r12d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_108
.LBB1_109:                              # %x264_cabac_mb_ref.exit1145
	addl	$54, %r12d
	xorl	%r15d, %r15d
	movq	%r13, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	25142(%rbx), %eax
	cmpb	$0, 25149(%rbx)
	jle	.LBB1_111
# %bb.110:                              # %land.lhs.true.i1175
	xorl	%r15d, %r15d
	cmpb	$0, 25709(%rbx)
	sete	%r15b
.LBB1_111:                              # %if.end.i1150
	testb	%al, %al
	jle	.LBB1_113
# %bb.112:                              # %land.lhs.true22.i1169
	cmpb	$0, 25702(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_113:                              # %if.end31.i1153
	movsbl	25150(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_116
# %bb.114:                              # %for.body.preheader.i1159
	incl	%ebp
	.p2align	4, 0x90
.LBB1_115:                              # %for.body.i1161
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_115
.LBB1_116:                              # %x264_cabac_mb_ref.exit1180
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_117:                              # %if.end168
	leaq	17392(%rbx), %r15
	movq	$-16, %r14
	jmp	.LBB1_120
	.p2align	4, 0x90
.LBB1_118:                              # %do.body42.i
                                        #   in Loop: Header=BB1_120 Depth=1
	leal	16(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+64(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movzbl	block_idx_x+16(%r14), %ecx
	movzbl	block_idx_y+16(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	movw	%ax, 25560(%rbx,%rcx,2)
	leal	17(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+68(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzbl	block_idx_x+17(%r14), %ecx
	movzbl	block_idx_y+17(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	movw	%ax, 25560(%rbx,%rcx,2)
.LBB1_119:                              # %x264_cabac_mb8x8_mvd.exit
                                        #   in Loop: Header=BB1_120 Depth=1
	incq	%r15
	addq	$4, %r14
	je	.LBB1_153
.LBB1_120:                              # %for.body174
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r15), %eax
	cmpq	$3, %rax
	ja	.LBB1_119
# %bb.121:                              # %for.body174
                                        #   in Loop: Header=BB1_120 Depth=1
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_122:                              # %do.body75.i
                                        #   in Loop: Header=BB1_120 Depth=1
	leal	16(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+64(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movzbl	block_idx_x+16(%r14), %ecx
	movzbl	block_idx_y+16(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	leal	17(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+68(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movzbl	block_idx_x+17(%r14), %ecx
	movzbl	block_idx_y+17(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	leal	18(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+72(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movzbl	block_idx_x+18(%r14), %ecx
	movzbl	block_idx_y+18(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	leal	19(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+76(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzbl	block_idx_x+19(%r14), %ecx
	movzbl	block_idx_y+19(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movw	%ax, 25544(%rbx,%rcx,2)
	jmp	.LBB1_119
	.p2align	4, 0x90
.LBB1_123:                              # %do.body.i
                                        #   in Loop: Header=BB1_120 Depth=1
	leal	16(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+64(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzbl	block_idx_x+16(%r14), %ecx
	movzbl	block_idx_y+16(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	%ax, %edx
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, 25544(%rbx,%rcx,2)
	movl	%eax, 25560(%rbx,%rcx,2)
	jmp	.LBB1_119
.LBB1_124:                              # %do.body10.i
                                        #   in Loop: Header=BB1_120 Depth=1
	leal	16(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+64(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movzbl	block_idx_x+16(%r14), %ecx
	movzbl	block_idx_y+16(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	%ax, %edx
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, 25544(%rbx,%rcx,2)
	leal	18(%r14), %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$2, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	movslq	x264_scan8+72(,%r14,4), %rax
	movswl	25200(%rbx,%rax,4), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	25202(%rbx,%rax,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	movzbl	25518(%rbx,%rax,2), %ecx
	movzbl	25519(%rbx,%rax,2), %esi
	movzbl	25504(%rbx,%rax,2), %edi
	addl	%ecx, %edi
	movzbl	25505(%rbx,%rax,2), %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %edi
	setae	%cl
	cmpl	$33, %edi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzbl	block_idx_x+18(%r14), %ecx
	movzbl	block_idx_y+18(%r14), %edx
	leal	(%rcx,%rdx,8), %ecx
	movzwl	%ax, %edx
	shll	$16, %eax
	orl	%edx, %eax
	movl	%eax, 25544(%rbx,%rcx,2)
	jmp	.LBB1_119
.LBB1_126:                              # %if.then317
	leaq	x264_mb_type_list_table(,%r15,4), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpl	$2, 21416(%rbx)
	jl	.LBB1_132
# %bb.127:                              # %if.then326
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, (%rax)
	je	.LBB1_129
# %bb.128:                              # %if.then330
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	x264_cabac_mb_ref
.LBB1_129:                              # %if.end331
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 1(%rax)
	je	.LBB1_132
# %bb.130:                              # %land.lhs.true336
	movl	17388(%rbx), %eax
	cmpl	$16, %eax
	je	.LBB1_132
# %bb.131:                              # %if.then341
	cmpl	$15, %eax
	sete	%cl
	movl	$8, %eax
	shrl	%cl, %eax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	movl	%eax, %ecx
	callq	x264_cabac_mb_ref
.LBB1_132:                              # %if.end347
	movl	%r14d, 36(%rsp)                 # 4-byte Spill
	cmpl	$2, 21420(%rbx)
	jl	.LBB1_138
# %bb.133:                              # %if.then354
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 2(%rax)
	je	.LBB1_135
# %bb.134:                              # %if.then358
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	x264_cabac_mb_ref
.LBB1_135:                              # %if.end359
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 3(%rax)
	je	.LBB1_138
# %bb.136:                              # %land.lhs.true364
	movl	17388(%rbx), %eax
	cmpl	$16, %eax
	je	.LBB1_138
# %bb.137:                              # %if.then369
	cmpl	$15, %eax
	sete	%cl
	movl	$8, %eax
	shrl	%cl, %eax
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	movl	%eax, %ecx
	callq	x264_cabac_mb_ref
.LBB1_138:                              # %if.end376
	leaq	25200(%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	25520(%rbx), %r14
	movb	$1, %al
	xorl	%r12d, %r12d
	jmp	.LBB1_141
	.p2align	4, 0x90
.LBB1_139:                              # %for.inc460
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	8(%rsp), %r13                   # 8-byte Reload
.LBB1_140:                              # %for.inc460
                                        #   in Loop: Header=BB1_141 Depth=1
	movl	$1, %r12d
	xorl	%eax, %eax
	testb	$1, 40(%rsp)                    # 1-byte Folded Reload
	je	.LBB1_153
.LBB1_141:                              # %for.body380
                                        # =>This Inner Loop Header: Depth=1
                                        # kill: def $al killed $al killed $eax
	movb	%al, 40(%rsp)                   # 1-byte Spill
	movl	17388(%rbx), %ecx
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	(%rax,%r12,2), %eax
	cmpl	$14, %ecx
	je	.LBB1_145
# %bb.142:                              # %for.body380
                                        #   in Loop: Header=BB1_141 Depth=1
	cmpl	$16, %ecx
	jne	.LBB1_149
# %bb.143:                              # %if.then385
                                        #   in Loop: Header=BB1_141 Depth=1
	testb	%al, %al
	je	.LBB1_140
# %bb.144:                              # %do.body391
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	leaq	(%r12,%r12,4), %r15
	movq	%r15, %rax
	shlq	$5, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	48(%rsi,%rax), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	50(%rsi,%rax), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	shlq	$4, %r15
	movzbl	22(%r14,%r15), %eax
	movzbl	23(%r14,%r15), %ecx
	movzbl	8(%r14,%r15), %esi
	addl	%eax, %esi
	movzbl	9(%r14,%r15), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r12d, %r12d
	cmpl	$3, %eax
	setae	%r12b
	cmpl	$33, %eax
	sbbl	$-1, %r12d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	callq	x264_cabac_mb_mvd_cpn
                                        # kill: def $eax killed $eax def $rax
	shll	$8, %eax
	addl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movabsq	$4294967297, %rcx               # imm = 0x100000001
	imulq	%rcx, %rax
	movq	%rax, 24(%r14,%r15)
	movq	%rax, 40(%r14,%r15)
	movq	%rax, 56(%r14,%r15)
	movq	%rax, 72(%r14,%r15)
	jmp	.LBB1_140
	.p2align	4, 0x90
.LBB1_145:                              # %if.then404
                                        #   in Loop: Header=BB1_141 Depth=1
	testb	%al, %al
	je	.LBB1_147
# %bb.146:                              # %do.body410
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$4, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	leaq	(%r12,%r12,4), %r15
	movq	%r15, %rax
	shlq	$5, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	48(%rsi,%rax), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	50(%rsi,%rax), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	shlq	$4, %r15
	movzbl	22(%r14,%r15), %eax
	movzbl	23(%r14,%r15), %ecx
	movzbl	8(%r14,%r15), %esi
	addl	%eax, %esi
	movzbl	9(%r14,%r15), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r13d, %r13d
	cmpl	$3, %eax
	setae	%r13b
	cmpl	$33, %eax
	sbbl	$-1, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r13d, %ecx
	movq	8(%rsp), %r13                   # 8-byte Reload
	callq	x264_cabac_mb_mvd_cpn
                                        # kill: def $eax killed $eax def $rax
	shll	$8, %eax
	addl	44(%rsp), %eax                  # 4-byte Folded Reload
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movabsq	$4294967297, %rcx               # imm = 0x100000001
	imulq	%rcx, %rax
	movq	%rax, 24(%r14,%r15)
	movq	%rax, 40(%r14,%r15)
.LBB1_147:                              # %if.end417
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 1(%rax,%r12,2)
	je	.LBB1_140
# %bb.148:                              # %do.body423
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$8, %edx
	movl	$4, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	leaq	(%r12,%r12,4), %r13
	movq	%r13, %rax
	shlq	$5, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	112(%rsi,%rax), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	114(%rsi,%rax), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	shlq	$4, %r13
	movzbl	54(%r14,%r13), %eax
	movzbl	55(%r14,%r13), %ecx
	movzbl	40(%r14,%r13), %esi
	addl	%eax, %esi
	movzbl	41(%r14,%r13), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
                                        # kill: def $eax killed $eax def $rax
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movabsq	$4294967297, %rcx               # imm = 0x100000001
	imulq	%rcx, %rax
	movq	%rax, 56(%r14,%r13)
	movq	%rax, 72(%r14,%r13)
	jmp	.LBB1_139
	.p2align	4, 0x90
.LBB1_149:                              # %if.else431
                                        #   in Loop: Header=BB1_141 Depth=1
	testb	%al, %al
	je	.LBB1_151
# %bb.150:                              # %do.body437
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	leaq	(%r12,%r12,4), %r13
	movq	%r13, %rax
	shlq	$5, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	48(%rsi,%rax), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	50(%rsi,%rax), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	shlq	$4, %r13
	movzbl	22(%r14,%r13), %eax
	movzbl	23(%r14,%r13), %ecx
	movzbl	8(%r14,%r13), %esi
	addl	%eax, %esi
	movzbl	9(%r14,%r13), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, 44(%rsp)                  # 4-byte Spill
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	44(%rsp), %eax                  # 4-byte Folded Reload
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 24(%r14,%r13)
	movl	%eax, 40(%r14,%r13)
	movl	%eax, 56(%r14,%r13)
	movl	%eax, 72(%r14,%r13)
	movq	8(%rsp), %r13                   # 8-byte Reload
.LBB1_151:                              # %if.end444
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	24(%rsp), %rax                  # 8-byte Reload
	cmpb	$0, 1(%rax,%r12,2)
	je	.LBB1_140
# %bb.152:                              # %do.body450
                                        #   in Loop: Header=BB1_141 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	$4, %edx
	movl	$2, %ecx
	leaq	4(%rsp), %r8
	callq	x264_mb_predict_mv@PLT
	leaq	(%r12,%r12,4), %r13
	movq	%r13, %rax
	shlq	$5, %rax
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movswl	56(%rsi,%rax), %edx
	movswl	4(%rsp), %ecx
	subl	%ecx, %edx
	movswl	58(%rsi,%rax), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	shlq	$4, %r13
	movzbl	26(%r14,%r13), %eax
	movzbl	27(%r14,%r13), %ecx
	movzbl	12(%r14,%r13), %esi
	addl	%eax, %esi
	movzbl	13(%r14,%r13), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 28(%r14,%r13)
	movl	%eax, 44(%r14,%r13)
	movl	%eax, 60(%r14,%r13)
	movl	%eax, 76(%r14,%r13)
	jmp	.LBB1_139
.LBB1_153:
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
.LBB1_154:                              # %if.end467
	movl	36(%rsp), %r14d                 # 4-byte Reload
	jmp	.LBB1_155
.LBB1_232:                              # %if.end3.i
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$7, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_233:                              # %x264_cabac_mb_sub_b_partition.exit
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17393(%rbx), %ebp
	movq	%r13, %rdi
	movl	$36, %esi
	cmpb	$12, %bpl
	je	.LBB1_236
# %bb.234:                              # %if.end.i1189.1
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$37, %esi
	cmpb	$11, %bpl
	jne	.LBB1_237
# %bb.235:                              # %if.then2.i1192.1
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_236:                              # %x264_cabac_mb_sub_b_partition.exit.1
	xorl	%edx, %edx
	jmp	.LBB1_238
.LBB1_237:                              # %if.end3.i.1
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$7, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_238:                              # %x264_cabac_mb_sub_b_partition.exit.1
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17394(%rbx), %ebp
	movq	%r13, %rdi
	movl	$36, %esi
	cmpb	$12, %bpl
	je	.LBB1_241
# %bb.239:                              # %if.end.i1189.2
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$37, %esi
	cmpb	$11, %bpl
	jne	.LBB1_242
# %bb.240:                              # %if.then2.i1192.2
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_241:                              # %x264_cabac_mb_sub_b_partition.exit.2
	xorl	%edx, %edx
	jmp	.LBB1_243
.LBB1_242:                              # %if.end3.i.2
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$7, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_243:                              # %x264_cabac_mb_sub_b_partition.exit.2
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	17395(%rbx), %ebp
	movq	%r13, %rdi
	movl	$36, %esi
	cmpb	$12, %bpl
	je	.LBB1_246
# %bb.244:                              # %if.end.i1189.3
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$37, %esi
	cmpb	$11, %bpl
	jne	.LBB1_247
# %bb.245:                              # %if.then2.i1192.3
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$38, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r13, %rdi
	movl	$39, %esi
.LBB1_246:                              # %x264_cabac_mb_sub_b_partition.exit.3
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$1, 21416(%rbx)
	movzbl	17392(%rbx), %eax
	jg	.LBB1_248
.LBB1_290:                              # %if.end222
	cmpl	$2, 21420(%rbx)
	jl	.LBB1_291
.LBB1_307:                              # %for.cond231.preheader
	movzbl	%al, %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_318
# %bb.308:                              # %if.then243
	movzbl	25164(%rbx), %eax
	cmpb	$0, 25171(%rbx)
	jle	.LBB1_311
# %bb.309:                              # %land.lhs.true.i1268
	xorl	%r15d, %r15d
	cmpb	$0, 25691(%rbx)
	sete	%r15b
	jmp	.LBB1_312
.LBB1_247:                              # %if.end3.i.3
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%edx, %edx
	cmpb	$7, %bpl
	sete	%dl
	movq	%r13, %rdi
	movl	$39, %esi
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$1, 21416(%rbx)
	movzbl	17392(%rbx), %eax
	jle	.LBB1_290
.LBB1_248:                              # %for.cond204.preheader
	movzbl	%al, %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_259
# %bb.249:                              # %if.then216
	movzbl	25124(%rbx), %eax
	cmpb	$0, 25131(%rbx)
	jle	.LBB1_252
# %bb.250:                              # %land.lhs.true.i1226
	xorl	%r15d, %r15d
	cmpb	$0, 25691(%rbx)
	sete	%r15b
	jmp	.LBB1_253
.LBB1_251:
	xorl	%r12d, %r12d
	testb	%al, %al
	jg	.LBB1_91
	jmp	.LBB1_92
.LBB1_311:
	xorl	%r15d, %r15d
.LBB1_312:                              # %if.end.i1242
	testb	%al, %al
	jle	.LBB1_314
# %bb.313:                              # %land.lhs.true22.i1262
	cmpb	$0, 25684(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_314:                              # %if.end31.i1245
	movsbl	25172(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_317
# %bb.315:                              # %for.body.preheader.i1252
	incl	%ebp
	.p2align	4, 0x90
.LBB1_316:                              # %for.body.i1254
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_316
.LBB1_317:                              # %x264_cabac_mb_ref.exit1273
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_318:                              # %for.inc246
	movzbl	17393(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_328
# %bb.319:                              # %if.then243.1
	movzbl	25166(%rbx), %eax
	cmpb	$0, 25173(%rbx)
	jle	.LBB1_321
# %bb.320:                              # %land.lhs.true.i1268.1
	xorl	%r15d, %r15d
	cmpb	$0, 25693(%rbx)
	sete	%r15b
	jmp	.LBB1_322
.LBB1_252:
	xorl	%r15d, %r15d
.LBB1_253:                              # %if.end.i1201
	testb	%al, %al
	jle	.LBB1_255
# %bb.254:                              # %land.lhs.true22.i1220
	cmpb	$0, 25684(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_255:                              # %if.end31.i1204
	movsbl	25132(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_258
# %bb.256:                              # %for.body.preheader.i1210
	incl	%ebp
	.p2align	4, 0x90
.LBB1_257:                              # %for.body.i1212
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_257
.LBB1_258:                              # %x264_cabac_mb_ref.exit1231
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_259:                              # %for.inc219
	movzbl	17393(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_269
# %bb.260:                              # %if.then216.1
	movzbl	25126(%rbx), %eax
	cmpb	$0, 25133(%rbx)
	jle	.LBB1_262
# %bb.261:                              # %land.lhs.true.i1226.1
	xorl	%r15d, %r15d
	cmpb	$0, 25693(%rbx)
	sete	%r15b
	jmp	.LBB1_263
.LBB1_321:
	xorl	%r15d, %r15d
.LBB1_322:                              # %if.end.i1242.1
	testb	%al, %al
	jle	.LBB1_324
# %bb.323:                              # %land.lhs.true22.i1262.1
	cmpb	$0, 25686(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_324:                              # %if.end31.i1245.1
	movsbl	25174(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_327
# %bb.325:                              # %for.body.preheader.i1252.1
	incl	%ebp
	.p2align	4, 0x90
.LBB1_326:                              # %for.body.i1254.1
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_326
.LBB1_327:                              # %x264_cabac_mb_ref.exit1273.1
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_328:                              # %for.inc246.1
	movzbl	17394(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_338
# %bb.329:                              # %if.then243.2
	movzbl	25180(%rbx), %eax
	cmpb	$0, 25187(%rbx)
	jle	.LBB1_331
# %bb.330:                              # %land.lhs.true.i1268.2
	xorl	%r15d, %r15d
	cmpb	$0, 25707(%rbx)
	sete	%r15b
	jmp	.LBB1_332
.LBB1_262:
	xorl	%r15d, %r15d
.LBB1_263:                              # %if.end.i1201.1
	testb	%al, %al
	jle	.LBB1_265
# %bb.264:                              # %land.lhs.true22.i1220.1
	cmpb	$0, 25686(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_265:                              # %if.end31.i1204.1
	movsbl	25134(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_268
# %bb.266:                              # %for.body.preheader.i1210.1
	incl	%ebp
	.p2align	4, 0x90
.LBB1_267:                              # %for.body.i1212.1
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_267
.LBB1_268:                              # %x264_cabac_mb_ref.exit1231.1
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_269:                              # %for.inc219.1
	movzbl	17394(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_279
# %bb.270:                              # %if.then216.2
	movzbl	25140(%rbx), %eax
	cmpb	$0, 25147(%rbx)
	jle	.LBB1_272
# %bb.271:                              # %land.lhs.true.i1226.2
	xorl	%r15d, %r15d
	cmpb	$0, 25707(%rbx)
	sete	%r15b
	jmp	.LBB1_273
.LBB1_331:
	xorl	%r15d, %r15d
.LBB1_332:                              # %if.end.i1242.2
	testb	%al, %al
	jle	.LBB1_334
# %bb.333:                              # %land.lhs.true22.i1262.2
	cmpb	$0, 25700(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_334:                              # %if.end31.i1245.2
	movsbl	25188(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_337
# %bb.335:                              # %for.body.preheader.i1252.2
	incl	%ebp
	.p2align	4, 0x90
.LBB1_336:                              # %for.body.i1254.2
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_336
.LBB1_337:                              # %x264_cabac_mb_ref.exit1273.2
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_338:                              # %for.inc246.2
	movzbl	17395(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_348
# %bb.339:                              # %if.then243.3
	movzbl	25182(%rbx), %eax
	cmpb	$0, 25189(%rbx)
	jle	.LBB1_341
# %bb.340:                              # %land.lhs.true.i1268.3
	xorl	%r15d, %r15d
	cmpb	$0, 25709(%rbx)
	sete	%r15b
	jmp	.LBB1_342
.LBB1_272:
	xorl	%r15d, %r15d
.LBB1_273:                              # %if.end.i1201.2
	testb	%al, %al
	jle	.LBB1_275
# %bb.274:                              # %land.lhs.true22.i1220.2
	cmpb	$0, 25700(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_275:                              # %if.end31.i1204.2
	movsbl	25148(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_278
# %bb.276:                              # %for.body.preheader.i1210.2
	incl	%ebp
	.p2align	4, 0x90
.LBB1_277:                              # %for.body.i1212.2
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_277
.LBB1_278:                              # %x264_cabac_mb_ref.exit1231.2
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_279:                              # %for.inc219.2
	movzbl	17395(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_289
# %bb.280:                              # %if.then216.3
	movzbl	25142(%rbx), %eax
	cmpb	$0, 25149(%rbx)
	jle	.LBB1_282
# %bb.281:                              # %land.lhs.true.i1226.3
	xorl	%r15d, %r15d
	cmpb	$0, 25709(%rbx)
	sete	%r15b
	jmp	.LBB1_283
.LBB1_341:
	xorl	%r15d, %r15d
.LBB1_342:                              # %if.end.i1242.3
	testb	%al, %al
	jle	.LBB1_344
# %bb.343:                              # %land.lhs.true22.i1262.3
	cmpb	$0, 25702(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_344:                              # %if.end31.i1245.3
	movsbl	25190(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_347
# %bb.345:                              # %for.body.preheader.i1252.3
	incl	%ebp
	.p2align	4, 0x90
.LBB1_346:                              # %for.body.i1254.3
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_346
.LBB1_347:                              # %x264_cabac_mb_ref.exit1273.3
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_348:                              # %for.inc246.3
	movzbl	17392(%rbx), %eax
	movzbl	%al, %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	jne	.LBB1_292
	jmp	.LBB1_293
.LBB1_282:
	xorl	%r15d, %r15d
.LBB1_283:                              # %if.end.i1201.3
	testb	%al, %al
	jle	.LBB1_285
# %bb.284:                              # %land.lhs.true22.i1220.3
	cmpb	$0, 25702(%rbx)
	leal	2(%r15), %eax
	cmovnel	%r15d, %eax
	movl	%eax, %r15d
.LBB1_285:                              # %if.end31.i1204.3
	movsbl	25150(%rbx), %ebp
	testl	%ebp, %ebp
	jle	.LBB1_288
# %bb.286:                              # %for.body.preheader.i1210.3
	incl	%ebp
	.p2align	4, 0x90
.LBB1_287:                              # %for.body.i1212.3
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r15d
	addl	$4, %r15d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB1_287
.LBB1_288:                              # %x264_cabac_mb_ref.exit1231.3
	addl	$54, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_289:                              # %for.inc219.3
	movzbl	17392(%rbx), %eax
	cmpl	$2, 21420(%rbx)
	jge	.LBB1_307
.LBB1_291:                              # %if.end249
	movzbl	%al, %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_293
.LBB1_292:                              # %do.body264
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25248(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25250(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25542(%rbx), %eax
	movzbl	25543(%rbx), %ecx
	movzbl	25528(%rbx), %esi
	addl	%eax, %esi
	movzbl	25529(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25544(%rbx)
	movl	%eax, 25560(%rbx)
.LBB1_293:                              # %for.inc279
	movzbl	17393(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_295
# %bb.294:                              # %do.body264.1
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25256(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25258(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25546(%rbx), %eax
	movzbl	25547(%rbx), %ecx
	movzbl	25532(%rbx), %esi
	addl	%eax, %esi
	movzbl	25533(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25548(%rbx)
	movl	%eax, 25564(%rbx)
.LBB1_295:                              # %for.inc279.1
	movzbl	17394(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_297
# %bb.296:                              # %do.body264.2
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$8, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25312(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25314(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25574(%rbx), %eax
	movzbl	25575(%rbx), %ecx
	movzbl	25560(%rbx), %esi
	addl	%eax, %esi
	movzbl	25561(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25576(%rbx)
	movl	%eax, 25592(%rbx)
.LBB1_297:                              # %for.inc279.2
	movzbl	17395(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table(%rax)
	je	.LBB1_299
# %bb.298:                              # %do.body264.3
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$12, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25320(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25322(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25578(%rbx), %eax
	movzbl	25579(%rbx), %ecx
	movzbl	25564(%rbx), %esi
	addl	%eax, %esi
	movzbl	25565(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25580(%rbx)
	movl	%eax, 25596(%rbx)
.LBB1_299:                              # %for.inc279.3
	movzbl	17392(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_301
# %bb.300:                              # %do.body296
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25408(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25410(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25622(%rbx), %eax
	movzbl	25623(%rbx), %ecx
	movzbl	25608(%rbx), %esi
	addl	%eax, %esi
	movzbl	25609(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25624(%rbx)
	movl	%eax, 25640(%rbx)
.LBB1_301:                              # %for.inc311
	movzbl	17393(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_303
# %bb.302:                              # %do.body296.1
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$4, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25416(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25418(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25626(%rbx), %eax
	movzbl	25627(%rbx), %ecx
	movzbl	25612(%rbx), %esi
	addl	%eax, %esi
	movzbl	25613(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25628(%rbx)
	movl	%eax, 25644(%rbx)
.LBB1_303:                              # %for.inc311.1
	movzbl	17394(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_305
# %bb.304:                              # %do.body296.2
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$8, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25472(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25474(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25654(%rbx), %eax
	movzbl	25655(%rbx), %ecx
	movzbl	25640(%rbx), %esi
	addl	%eax, %esi
	movzbl	25641(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25656(%rbx)
	movl	%eax, 25672(%rbx)
.LBB1_305:                              # %for.inc311.2
	movzbl	17395(%rbx), %eax
	cmpb	$0, x264_mb_partition_listX_table+17(%rax)
	je	.LBB1_125
# %bb.306:                              # %do.body296.3
	leaq	4(%rsp), %r8
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	$12, %edx
	movl	$2, %ecx
	callq	x264_mb_predict_mv@PLT
	movswl	25480(%rbx), %edx
	movswl	4(%rsp), %eax
	subl	%eax, %edx
	movswl	25482(%rbx), %ebp
	movswl	6(%rsp), %eax
	subl	%eax, %ebp
	movzbl	25658(%rbx), %eax
	movzbl	25659(%rbx), %ecx
	movzbl	25644(%rbx), %esi
	addl	%eax, %esi
	movzbl	25645(%rbx), %eax
	addl	%ecx, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %esi
	setae	%cl
	cmpl	$33, %esi
	sbbl	$-1, %ecx
	xorl	%r15d, %r15d
	cmpl	$3, %eax
	setae	%r15b
	cmpl	$33, %eax
	sbbl	$-1, %r15d
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r12d
	movq	%r13, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r15d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r12d, %eax
	movzwl	%ax, %ecx
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, 25660(%rbx)
	movl	%eax, 25676(%rbx)
	jmp	.LBB1_155
.LBB1_125:
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
.LBB1_155:                              # %if.end467
	movl	24(%r13), %r12d
	subl	16(%r13), %r12d
	addl	12(%r13), %r12d
	shll	$3, %r12d
	addl	8(%r13), %r12d
	addl	26712(%rbx), %r14d
	addl	%r12d, %r14d
	movl	%r14d, 26712(%rbx)
	movl	20(%rsp), %r14d                 # 4-byte Reload
	testb	%r14b, %r14b
	movl	%r12d, 40(%rsp)                 # 4-byte Spill
	jne	.LBB1_160
# %bb.156:                              # %if.then476
	movl	17400(%rbx), %r15d
	movl	25780(%rbx), %ebp
	movl	25776(%rbx), %r14d
	movl	%ebp, %esi
	shll	$30, %esi
	sarl	$31, %esi
	movl	%r14d, %eax
	shrl	%eax
	andl	$2, %eax
	subl	%eax, %esi
	addl	$76, %esi
	movl	%r15d, %r12d
	andl	$1, %r12d
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r14d
	andl	$2, %r14d
	orl	%r12d, %r14d
	movl	$76, %r12d
	movl	$76, %esi
	subl	%r14d, %esi
	movl	%r15d, %edx
	shrl	%edx
	andl	$1, %edx
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
	shll	$28, %ebp
	sarl	$31, %ebp
	leal	(%r15,%r15), %eax
	andl	$2, %eax
	subl	%eax, %ebp
	addl	$76, %ebp
	movl	%r15d, %r13d
	shrl	$2, %r13d
	andl	$1, %r13d
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	%ebp, %esi
	movl	%r13d, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	%r15d, %eax
	andl	$2, %eax
	orl	%r13d, %eax
	movq	8(%rsp), %r13                   # 8-byte Reload
	subl	%eax, %r12d
	shrl	$3, %r15d
	andl	$1, %r15d
	movq	%r13, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	25776(%rbx), %eax
	movl	25780(%rbx), %ecx
	movl	%ecx, %ebp
	andl	$48, %ebp
	setne	%dl
	cmpl	$-1, %ecx
	setne	%cl
	andb	%dl, %cl
	movzbl	%cl, %ecx
	leal	2(%rcx), %esi
	movl	%eax, %r14d
	andl	$48, %r14d
	cmovel	%ecx, %esi
	cmpl	$-1, %eax
	cmovel	%ecx, %esi
	addl	$77, %esi
	cmpl	$0, 17404(%rbx)
	je	.LBB1_158
# %bb.157:                              # %if.else.i1621
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	xorl	%eax, %eax
	cmpl	$32, %ebp
	sete	%al
	xorl	%ecx, %ecx
	cmpl	$32, %r14d
	sete	%cl
	leal	(%rax,%rcx,2), %esi
	addl	$81, %esi
	movl	17404(%rbx), %edx
	sarl	%edx
	movq	%r13, %rdi
	jmp	.LBB1_159
.LBB1_158:                              # %if.then17.i
	movq	%r13, %rdi
	xorl	%edx, %edx
.LBB1_159:                              # %if.end477
	callq	x264_cabac_encode_decision_c@PLT
	movl	20(%rsp), %r14d                 # 4-byte Reload
	movl	40(%rsp), %r12d                 # 4-byte Reload
.LBB1_160:                              # %if.end477
	movq	3328(%rbx), %rax
	cmpl	$0, 60(%rax)
	je	.LBB1_166
# %bb.161:                              # %if.end.i1628
	movslq	17384(%rbx), %rax
	cmpq	$5, %rax
	jne	.LBB1_163
# %bb.162:                              # %if.end4.i
	xorl	%eax, %eax
	cmpl	$50529027, 17392(%rbx)          # imm = 0x3030303
	sete	%al
	testl	%eax, %eax
	jne	.LBB1_164
	jmp	.LBB1_166
.LBB1_163:                              # %if.then1.i
	movzbl	x264_mb_transform_8x8_allowed.partition_tab(%rax), %eax
	testl	%eax, %eax
	je	.LBB1_166
.LBB1_164:                              # %land.lhs.true480
	cmpl	$0, 17400(%rbx)
	je	.LBB1_166
# %bb.165:                              # %if.then483
	movl	17396(%rbx), %edx
	movl	$399, %esi                      # imm = 0x18F
	addl	25768(%rbx), %esi
	movq	%r13, %rdi
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_166:                              # %if.end484
	cmpl	$0, 17400(%rbx)
	jg	.LBB1_168
# %bb.167:                              # %lor.lhs.false489
	cmpl	$0, 17404(%rbx)
	setle	%al
	movl	%r14d, %ecx
	notb	%cl
	testb	%al, %cl
	jne	.LBB1_231
.LBB1_168:                              # %if.then496
	movl	25792(%rbx), %eax
	movl	25800(%rbx), %ecx
	subl	%ecx, %eax
	cmpl	$2, 17384(%rbx)
	jne	.LBB1_170
# %bb.169:                              # %land.lhs.true.i1651
	movq	16640(%rbx), %rdx
	movslq	16392(%rbx), %rsi
	cmpw	$0, (%rdx,%rsi,2)
	je	.LBB1_172
.LBB1_170:                              # %if.end.i1641
	cmpl	$0, 25804(%rbx)
	je	.LBB1_173
.LBB1_171:                              # %land.rhs.i
	movq	16640(%rbx), %rcx
	movslq	16596(%rbx), %rdx
	xorl	%r15d, %r15d
	cmpw	$0, (%rcx,%rdx,2)
	setne	%r15b
	testl	%eax, %eax
	jne	.LBB1_174
	jmp	.LBB1_176
.LBB1_172:                              # %if.then.i1656
	movl	%ecx, 25792(%rbx)
	xorl	%eax, %eax
	cmpl	$0, 25804(%rbx)
	jne	.LBB1_171
.LBB1_173:
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB1_176
.LBB1_174:                              # %if.then19.i
	leal	(%rax,%rax), %ecx
	negl	%ecx
	testl	%eax, %eax
	leal	-1(%rax,%rax), %eax
	cmovlel	%ecx, %eax
	movl	$103, %ebp
	subl	%eax, %ebp
	cmpl	$52, %eax
	cmovel	%eax, %ebp
	cmpl	$51, %eax
	cmovll	%eax, %ebp
	.p2align	4, 0x90
.LBB1_175:                              # %do.body.i1645
                                        # =>This Inner Loop Header: Depth=1
	leal	60(%r15), %esi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	%r15d
	addl	$2, %r15d
	decl	%ebp
	jne	.LBB1_175
.LBB1_176:                              # %x264_cabac_mb_qp_delta.exit
	movzbl	24(%rsp), %ebp                  # 1-byte Folded Reload
	addl	$60, %r15d
	movq	%r13, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	testb	%r14b, %r14b
	je	.LBB1_179
# %bb.177:                              # %if.then509
	movl	25776(%rbx), %eax
	movl	25780(%rbx), %ecx
	shrl	$8, %ecx
	andl	$1, %ecx
	shrl	$7, %eax
	andl	$2, %eax
	leal	(%rcx,%rax), %esi
	addl	$85, %esi
	cmpb	$0, 25116(%rbx)
	je	.LBB1_184
# %bb.178:                              # %if.then516
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	15040(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	block_residual_write_cabac
	cmpl	$0, 17400(%rbx)
	jne	.LBB1_185
	jmp	.LBB1_199
.LBB1_179:                              # %if.else553
	cmpl	$0, 17396(%rbx)
	je	.LBB1_189
# %bb.180:                              # %for.cond559.preheader
	movl	17400(%rbx), %eax
	testb	$1, %al
	jne	.LBB1_195
# %bb.181:                              # %for.inc573
	testb	$2, %al
	jne	.LBB1_196
.LBB1_182:                              # %for.inc573.1
	testb	$4, %al
	jne	.LBB1_197
.LBB1_183:                              # %for.inc573.2
	testb	$8, %al
	jne	.LBB1_198
	jmp	.LBB1_199
.LBB1_184:                              # %if.else518
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$0, 17400(%rbx)
	je	.LBB1_199
.LBB1_185:                              # %for.cond526.preheader
	leaq	15602(%rbx), %r15
	movq	$-64, %r14
	jmp	.LBB1_187
	.p2align	4, 0x90
.LBB1_186:                              # %if.else547
                                        #   in Loop: Header=BB1_187 Depth=1
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	addq	$32, %r15
	addq	$4, %r14
	je	.LBB1_199
.LBB1_187:                              # %for.body530
                                        # =>This Inner Loop Header: Depth=1
	movslq	x264_scan8+64(%r14), %rax
	xorl	%esi, %esi
	cmpb	$0, 25064(%rbx,%rax)
	setne	%sil
	addl	%esi, %esi
	cmpb	$1, 25071(%rbx,%rax)
	sbbl	$0, %esi
	addl	$90, %esi
	cmpb	$0, 25072(%rbx,%rax)
	je	.LBB1_186
# %bb.188:                              # %if.then541
                                        #   in Loop: Header=BB1_187 Depth=1
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	block_residual_write_cabac
	addq	$32, %r15
	addq	$4, %r14
	jne	.LBB1_187
	jmp	.LBB1_199
.LBB1_189:                              # %for.cond578.preheader
	movl	%ebp, %r14d
	shll	$7, %r14d
	orl	$127, %r14d
	leaq	15600(%rbx), %r15
	xorl	%r12d, %r12d
	jmp	.LBB1_192
	.p2align	4, 0x90
.LBB1_190:                              # %if.else605
                                        #   in Loop: Header=BB1_192 Depth=1
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_191:                              # %for.inc608
                                        #   in Loop: Header=BB1_192 Depth=1
	incq	%r12
	addq	$32, %r15
	cmpq	$16, %r12
	je	.LBB1_199
.LBB1_192:                              # %for.body582
                                        # =>This Inner Loop Header: Depth=1
	movl	17400(%rbx), %eax
	movl	%r12d, %ecx
	shrl	$2, %ecx
	btl	%ecx, %eax
	jae	.LBB1_191
# %bb.193:                              # %if.then588
                                        #   in Loop: Header=BB1_192 Depth=1
	movslq	x264_scan8(,%r12,4), %rax
	movzbl	25071(%rbx,%rax), %ecx
	movzbl	25064(%rbx,%rax), %edx
	andl	%r14d, %ecx
	xorl	%esi, %esi
	testl	%edx, %r14d
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %ecx
	sbbl	$0, %esi
	addl	$94, %esi
	cmpb	$0, 25072(%rbx,%rax)
	je	.LBB1_190
# %bb.194:                              # %if.then599
                                        #   in Loop: Header=BB1_192 Depth=1
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$2, %edx
	movq	%r15, %rcx
	callq	block_residual_write_cabac
	jmp	.LBB1_191
.LBB1_195:                              # %if.then567
	leaq	15088(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$5, %edx
	callq	block_residual_write_cabac
	movl	17400(%rbx), %eax
	testb	$2, %al
	je	.LBB1_182
.LBB1_196:                              # %if.then567.1
	leaq	15216(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$5, %edx
	callq	block_residual_write_cabac
	movl	17400(%rbx), %eax
	testb	$4, %al
	je	.LBB1_183
.LBB1_197:                              # %if.then567.2
	leaq	15344(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$5, %edx
	callq	block_residual_write_cabac
	movl	17400(%rbx), %eax
	testb	$8, %al
	je	.LBB1_199
.LBB1_198:                              # %if.then567.3
	leaq	15472(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$5, %edx
	callq	block_residual_write_cabac
.LBB1_199:                              # %if.end612
	cmpl	$0, 17404(%rbx)
	je	.LBB1_202
# %bb.200:                              # %if.then616
	movl	25776(%rbx), %eax
	movl	25780(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$9, %edx
	andl	$1, %edx
	cmpl	$-1, %ecx
	cmovel	%ebp, %edx
	movl	%eax, %ecx
	shrl	$9, %ecx
	andl	$1, %ecx
	cmpl	$-1, %eax
	cmovel	%ebp, %ecx
	leal	(%rdx,%rcx,2), %esi
	addl	$97, %esi
	cmpb	$0, 25118(%rbx)
	movl	40(%rsp), %r12d                 # 4-byte Reload
	movq	%r13, %rdi
	je	.LBB1_203
# %bb.201:                              # %if.then625
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	15072(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$3, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_204
.LBB1_202:
	movl	40(%rsp), %r12d                 # 4-byte Reload
	jmp	.LBB1_231
.LBB1_203:                              # %if.else629
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_204:                              # %if.end630
	movl	25776(%rbx), %eax
	movl	25780(%rbx), %ecx
	movl	%ecx, %edx
	shrl	$10, %edx
	andl	$1, %edx
	cmpl	$-1, %ecx
	cmovel	%ebp, %edx
	movl	%eax, %ecx
	shrl	$10, %ecx
	andl	$1, %ecx
	cmpl	$-1, %eax
	cmovel	%ebp, %ecx
	leal	(%rdx,%rcx,2), %esi
	addl	$97, %esi
	cmpb	$0, 25119(%rbx)
	je	.LBB1_206
# %bb.205:                              # %if.then639
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	15080(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$3, %edx
	callq	block_residual_write_cabac
	testb	$2, 17404(%rbx)
	jne	.LBB1_207
	jmp	.LBB1_231
.LBB1_206:                              # %if.else644
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	testb	$2, 17404(%rbx)
	je	.LBB1_231
.LBB1_207:                              # %for.cond652.preheader
	shll	$7, %ebp
	orl	$127, %ebp
	movzbl	25080(%rbx), %eax
	movzbl	25073(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25081(%rbx)
	je	.LBB1_209
# %bb.208:                              # %if.then667
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16114(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_210
.LBB1_209:                              # %if.else674
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_210:                              # %if.end675
	movzbl	25081(%rbx), %eax
	movzbl	25074(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25082(%rbx)
	je	.LBB1_212
# %bb.211:                              # %if.then667.1
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16146(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_213
.LBB1_212:                              # %if.else674.1
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_213:                              # %if.end675.1
	movzbl	25088(%rbx), %eax
	movzbl	25081(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25089(%rbx)
	je	.LBB1_215
# %bb.214:                              # %if.then667.2
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16178(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_216
.LBB1_215:                              # %if.else674.2
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_216:                              # %if.end675.2
	movzbl	25089(%rbx), %eax
	movzbl	25082(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25090(%rbx)
	je	.LBB1_218
# %bb.217:                              # %if.then667.3
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16210(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_219
.LBB1_218:                              # %if.else674.3
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_219:                              # %if.end675.3
	movzbl	25104(%rbx), %eax
	movzbl	25097(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25105(%rbx)
	je	.LBB1_221
# %bb.220:                              # %if.then667.4
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16242(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_222
.LBB1_221:                              # %if.else674.4
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_222:                              # %if.end675.4
	movzbl	25105(%rbx), %eax
	movzbl	25098(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25106(%rbx)
	je	.LBB1_224
# %bb.223:                              # %if.then667.5
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16274(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_225
.LBB1_224:                              # %if.else674.5
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_225:                              # %if.end675.5
	movzbl	25112(%rbx), %eax
	movzbl	25105(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25113(%rbx)
	je	.LBB1_227
# %bb.226:                              # %if.then667.6
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16306(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_228
.LBB1_227:                              # %if.else674.6
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_228:                              # %if.end675.6
	movzbl	25113(%rbx), %eax
	movzbl	25106(%rbx), %ecx
	andl	%ebp, %eax
	xorl	%esi, %esi
	testl	%ecx, %ebp
	setne	%sil
	addl	%esi, %esi
	cmpl	$1, %eax
	sbbl	$0, %esi
	addl	$102, %esi
	cmpb	$0, 25114(%rbx)
	je	.LBB1_230
# %bb.229:                              # %if.then667.7
	movq	%r13, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leaq	16338(%rbx), %rcx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movl	$4, %edx
	callq	block_residual_write_cabac
	jmp	.LBB1_231
.LBB1_230:                              # %if.else674.7
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB1_231:                              # %cleanup
	movl	8(%r13), %eax
	subl	%r12d, %eax
	movl	24(%r13), %ecx
	subl	16(%r13), %ecx
	addl	12(%r13), %ecx
	addl	26716(%rbx), %eax
	leal	(%rax,%rcx,8), %eax
	movl	%eax, 26716(%rbx)
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
.Lfunc_end1:
	.size	x264_macroblock_write_cabac, .Lfunc_end1-x264_macroblock_write_cabac
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_53
	.quad	.LBB1_58
	.quad	.LBB1_126
	.quad	.LBB1_125
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_126
	.quad	.LBB1_60
.LJTI1_1:
	.quad	.LBB1_122
	.quad	.LBB1_124
	.quad	.LBB1_118
	.quad	.LBB1_123
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function x264_cabac_mb_ref
	.type	x264_cabac_mb_ref,@function
x264_cabac_mb_ref:                      # @x264_cabac_mb_ref
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
	movq	%rsi, %rbx
	movslq	%ecx, %rax
	movslq	x264_scan8(,%rax,4), %rax
	movl	%edx, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rdi,%rcx,8), %rsi
	addq	$25120, %rsi                    # imm = 0x6220
	movzbl	-8(%rax,%rsi), %edx
	cmpb	$0, -1(%rax,%rsi)
	jle	.LBB2_1
# %bb.2:                                # %land.lhs.true
	leaq	-1(%rax), %rsi
	xorl	%r14d, %r14d
	cmpb	$0, 25680(%rdi,%rsi)
	sete	%r14b
	leaq	25120(%rdi), %rsi
	testb	%dl, %dl
	jle	.LBB2_5
.LBB2_4:                                # %land.lhs.true22
	leaq	-8(%rax), %rdx
	cmpb	$0, 25680(%rdi,%rdx)
	leal	2(%r14), %edx
	cmovnel	%r14d, %edx
	movl	%edx, %r14d
.LBB2_5:                                # %if.end31
	leaq	(%rsi,%rcx,8), %rcx
	movsbl	(%rax,%rcx), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_8
# %bb.6:                                # %for.body.preheader
	incl	%ebp
	.p2align	4, 0x90
.LBB2_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	54(%r14), %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	shrl	$2, %r14d
	addl	$4, %r14d
	decl	%ebp
	cmpl	$1, %ebp
	ja	.LBB2_7
.LBB2_8:                                # %for.cond.cleanup
	addl	$54, %r14d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_cabac_encode_decision_c@PLT # TAILCALL
.LBB2_1:
	.cfi_def_cfa_offset 32
	xorl	%r14d, %r14d
	leaq	25120(%rdi), %rsi
	testb	%dl, %dl
	jg	.LBB2_4
	jmp	.LBB2_5
.Lfunc_end2:
	.size	x264_cabac_mb_ref, .Lfunc_end2-x264_cabac_mb_ref
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_cabac_mb_mvd
	.type	x264_cabac_mb_mvd,@function
x264_cabac_mb_mvd:                      # @x264_cabac_mb_mvd
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
	movl	%r8d, %eax
	movl	%ecx, %ebp
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	4(%rsp), %r8
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	x264_mb_predict_mv@PLT
	movl	%r14d, %eax
	leaq	(%rax,%rax,4), %rax
	movq	%rax, %rcx
	shlq	$5, %rcx
	addq	%r15, %rcx
	movslq	%ebp, %rdx
	movslq	x264_scan8(,%rdx,4), %rsi
	movswl	25200(%rcx,%rsi,4), %edx
	movswl	4(%rsp), %edi
	subl	%edi, %edx
	movswl	25202(%rcx,%rsi,4), %ebp
	movswl	6(%rsp), %ecx
	subl	%ecx, %ebp
	shlq	$4, %rax
	addq	%r15, %rax
	movzbl	25518(%rax,%rsi,2), %ecx
	movzbl	25519(%rax,%rsi,2), %edi
	movzbl	25504(%rax,%rsi,2), %r8d
	addl	%ecx, %r8d
	movzbl	25505(%rax,%rsi,2), %eax
	addl	%edi, %eax
	xorl	%ecx, %ecx
	cmpl	$3, %r8d
	setae	%cl
	cmpl	$33, %r8d
	sbbl	$-1, %ecx
	xorl	%r14d, %r14d
	cmpl	$3, %eax
	setae	%r14b
	cmpl	$33, %eax
	sbbl	$-1, %r14d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	x264_cabac_mb_mvd_cpn
	movl	%eax, %r15d
	movq	%rbx, %rdi
	movl	$1, %esi
	movl	%ebp, %edx
	movl	%r14d, %ecx
	callq	x264_cabac_mb_mvd_cpn
	shll	$8, %eax
	addl	%r15d, %eax
                                        # kill: def $ax killed $ax killed $eax
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
.Lfunc_end3:
	.size	x264_cabac_mb_mvd, .Lfunc_end3-x264_cabac_mb_mvd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function block_residual_write_cabac
	.type	block_residual_write_cabac,@function
block_residual_write_cabac:             # @block_residual_write_cabac
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
	subq	$568, %rsp                      # imm = 0x238
	.cfi_def_cfa_offset 624
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %rax
	movslq	16436(%rdi), %r12
	movl	%edx, %r15d
	leaq	(%r12,%r12,2), %rcx
	leaq	(%r15,%r15), %rdx
	movzwl	significant_coeff_flag_offset(%rdx,%rcx,4), %r13d
	movzwl	last_coeff_flag_offset(%rdx,%rcx,4), %ecx
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	movzwl	coeff_abs_level_m1_offset(%r15,%r15), %ecx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%r14, %rdi
	callq	*33168(%rax,%r15,8)
	cmpl	$5, %ebp
	jne	.LBB4_7
# %bb.1:                                # %while.cond.preheader
	movl	%r13d, 16(%rsp)                 # 4-byte Spill
	movq	%r12, %rcx
	shlq	$6, %rcx
	subq	%r12, %rcx
	leaq	significant_coeff_flag_offset_8x8(%rcx), %rbp
	movl	%eax, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movl	12(%rsp), %r15d                 # 4-byte Reload
	jmp	.LBB4_4
	.p2align	4, 0x90
.LBB4_2:                                # %if.else49
                                        #   in Loop: Header=BB4_4 Depth=1
	movq	%rbp, %rax
	addq	%r13, %rax
	movl	16(%rsp), %ecx                  # 4-byte Reload
.LBB4_3:                                # %if.end54
                                        #   in Loop: Header=BB4_4 Depth=1
	movzbl	(%rax), %esi
	addl	%ecx, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	incq	%r13
	cmpq	$63, %r13
	je	.LBB4_13
.LBB4_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%r13,2), %eax
	testl	%eax, %eax
	je	.LBB4_2
# %bb.5:                                # %if.then22
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	movzwl	%cx, %ecx
	decl	%ecx
	movslq	%r12d, %r12
	movl	%ecx, 304(%rsp,%r12,4)
	shrl	$15, %eax
	movl	%eax, 48(%rsp,%r12,4)
	incl	%r12d
	movzbl	(%rbp,%r13), %esi
	addl	16(%rsp), %esi                  # 4-byte Folded Reload
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpq	%r13, 24(%rsp)                  # 8-byte Folded Reload
	je	.LBB4_16
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	leaq	last_coeff_flag_offset_8x8(%r13), %rax
	movl	8(%rsp), %ecx                   # 4-byte Reload
	jmp	.LBB4_3
.LBB4_7:                                # %if.else74
	movzbl	count_cat_m1(%r15), %ecx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%r13d, %r13d
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	movl	%eax, %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movl	8(%rsp), %eax                   # 4-byte Reload
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	movl	12(%rsp), %r15d                 # 4-byte Reload
	jmp	.LBB4_10
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_10 Depth=1
	movq	%r13, %rsi
.LBB4_9:                                # %if.end109
                                        #   in Loop: Header=BB4_10 Depth=1
	addl	%ebp, %esi
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	incq	%rbp
	cmpq	%rbp, 16(%rsp)                  # 8-byte Folded Reload
	je	.LBB4_14
.LBB4_10:                               # %while.cond79
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r14,%rbp,2), %eax
	testl	%eax, %eax
	je	.LBB4_8
# %bb.11:                               # %if.then84
                                        #   in Loop: Header=BB4_10 Depth=1
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	movzwl	%cx, %ecx
	decl	%ecx
	movslq	%r12d, %r12
	movl	%ecx, 304(%rsp,%r12,4)
	shrl	$15, %eax
	movl	%eax, 48(%rsp,%r12,4)
	incl	%r12d
	leal	(%r13,%rbp), %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpq	%rbp, 24(%rsp)                  # 8-byte Folded Reload
	je	.LBB4_17
# %bb.12:                               #   in Loop: Header=BB4_10 Depth=1
	movq	40(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB4_9
.LBB4_13:                               # %if.then58
	movzwl	126(%r14), %eax
	jmp	.LBB4_15
.LBB4_14:                               # %if.then113
	movq	16(%rsp), %rax                  # 8-byte Reload
	movzwl	(%r14,%rax,2), %eax
.LBB4_15:                               # %if.end130
	movl	%eax, %ecx
	negw	%cx
	cmovsw	%ax, %cx
	movzwl	%cx, %ecx
	decl	%ecx
	movslq	%r12d, %r12
	movl	%ecx, 304(%rsp,%r12,4)
	shrl	$15, %eax
	movl	%eax, 48(%rsp,%r12,4)
	incl	%r12d
	jmp	.LBB4_19
.LBB4_16:                               # %if.then40
	movq	24(%rsp), %rax                  # 8-byte Reload
	movzbl	last_coeff_flag_offset_8x8(%rax), %esi
	jmp	.LBB4_18
.LBB4_17:                               # %if.then102
	movl	36(%rsp), %esi                  # 4-byte Reload
.LBB4_18:                               # %if.end130
	addl	8(%rsp), %esi                   # 4-byte Folded Reload
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
.LBB4_19:                               # %if.end130
	movslq	%r12d, %r12
	xorl	%r13d, %r13d
	jmp	.LBB4_23
	.p2align	4, 0x90
.LBB4_29:                               # %if.else162
                                        #   in Loop: Header=BB4_23 Depth=1
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	$coeff_abs_level_transition, %eax
.LBB4_22:                               # %if.end166
                                        #   in Loop: Header=BB4_23 Depth=1
	leaq	-1(%r12), %r14
	movzbl	(%rax,%r13), %r13d
	movl	48(%rsp,%r14,4), %esi
	movq	%rbx, %rdi
	callq	x264_cabac_encode_bypass_c@PLT
	cmpq	$1, %r12
	movq	%r14, %r12
	jle	.LBB4_30
.LBB4_23:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
	movl	300(%rsp,%r12,4), %ebp
	movzbl	coeff_abs_level1_ctx(%r13), %esi
	addl	%r15d, %esi
	movq	%rbx, %rdi
	testl	%ebp, %ebp
	je	.LBB4_29
# %bb.24:                               # %if.then142
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movzbl	coeff_abs_levelgt1_ctx(%r13), %r14d
	addl	%r15d, %r14d
	cmpl	$2, %ebp
	jl	.LBB4_20
# %bb.25:                               # %for.body.preheader
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$14, %ebp
	movl	$14, %r15d
	cmovll	%ebp, %r15d
	decl	%r15d
	.p2align	4, 0x90
.LBB4_26:                               # %for.body
                                        #   Parent Loop BB4_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	decl	%r15d
	jne	.LBB4_26
# %bb.27:                               # %for.end
                                        #   in Loop: Header=BB4_23 Depth=1
	cmpl	$13, %ebp
	movl	12(%rsp), %r15d                 # 4-byte Reload
	jg	.LBB4_28
.LBB4_20:                               # %if.then153
                                        #   in Loop: Header=BB4_23 Depth=1
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB4_21
.LBB4_28:                               # %if.else154
                                        #   in Loop: Header=BB4_23 Depth=1
	addl	$-14, %ebp
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%ebp, %edx
	callq	x264_cabac_encode_ue_bypass@PLT
.LBB4_21:                               # %if.end166
                                        #   in Loop: Header=BB4_23 Depth=1
	movl	$coeff_abs_level_transition+8, %eax
	jmp	.LBB4_22
.LBB4_30:                               # %do.end
	addq	$568, %rsp                      # imm = 0x238
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
	.size	block_residual_write_cabac, .Lfunc_end4-block_residual_write_cabac
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_cabac_mb_type_intra
	.type	x264_cabac_mb_type_intra,@function
x264_cabac_mb_type_intra:               # @x264_cabac_mb_type_intra
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
	movq	%rsi, %rbx
	cmpl	$1, %edx
	ja	.LBB5_3
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	movl	%ecx, %esi
	xorl	%edx, %edx
	jmp	.LBB5_2
.LBB5_3:                                # %if.else
	movq	%rdi, %r12
	cmpl	$3, %edx
	jne	.LBB5_4
# %bb.8:                                # %if.then3
	movq	%rbx, %rdi
	movl	%ecx, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r12, %rdi
	movq	%rbx, %rsi
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
	jmp	x264_cabac_encode_flush@PLT     # TAILCALL
.LBB5_4:                                # %if.else4
	.cfi_def_cfa_offset 64
	movl	%r8d, %r15d
	movl	%r9d, %ebp
	movl	80(%rsp), %eax
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	movl	72(%rsp), %eax
	movl	%eax, (%rsp)                    # 4-byte Spill
	movl	64(%rsp), %r13d
	movslq	17408(%r12), %rax
	movzbl	x264_mb_pred_mode16x16_fix(%rax), %r14d
	movq	%rbx, %rdi
	movl	%ecx, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%rbx, %rdi
	callq	x264_cabac_encode_terminal_c@PLT
	xorl	%edx, %edx
	cmpl	$0, 17400(%r12)
	setne	%dl
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$0, 17404(%r12)
	je	.LBB5_5
# %bb.6:                                # %if.else11
	movq	%rbx, %rdi
	movl	%ebp, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movl	17404(%r12), %edx
	sarl	%edx
	movq	%rbx, %rdi
	movl	%r13d, %esi
	jmp	.LBB5_7
.LBB5_5:                                # %if.then10
	movq	%rbx, %rdi
	movl	%ebp, %esi
	xorl	%edx, %edx
.LBB5_7:                                # %if.end
	callq	x264_cabac_encode_decision_c@PLT
	movl	%r14d, %edx
	shrl	%edx
	movq	%rbx, %rdi
	movl	(%rsp), %esi                    # 4-byte Reload
	callq	x264_cabac_encode_decision_c@PLT
	andl	$1, %r14d
	movq	%rbx, %rdi
	movl	4(%rsp), %esi                   # 4-byte Reload
	movl	%r14d, %edx
.LBB5_2:                                # %if.then
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
	jmp	x264_cabac_encode_decision_c@PLT # TAILCALL
.Lfunc_end5:
	.size	x264_cabac_mb_type_intra, .Lfunc_end5-x264_cabac_mb_type_intra
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_cabac_mb_mvd_cpn
	.type	x264_cabac_mb_mvd_cpn,@function
x264_cabac_mb_mvd_cpn:                  # @x264_cabac_mb_mvd_cpn
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
	movl	%edx, %r12d
	negl	%r12d
	cmovsl	%edx, %r12d
	movq	%rdi, %r14
	testl	%esi, %esi
	movl	$40, %eax
	movl	$47, %r15d
	cmovel	%eax, %r15d
	addl	%r15d, %ecx
	testl	%edx, %edx
	je	.LBB6_1
# %bb.2:                                # %if.else
	movl	%edx, %ebx
	movq	%r14, %rdi
	movl	%ecx, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	cmpl	$9, %r12d
	jae	.LBB6_3
# %bb.4:                                # %for.cond.preheader
	cmpl	$2, %r12d
	jb	.LBB6_7
# %bb.5:                                # %for.body.preheader
	movl	%ebx, %r13d
	negl	%r13d
	cmovsl	%ebx, %r13d
	movl	$1, %ebp
	.p2align	4, 0x90
.LBB6_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	x264_cabac_mb_mvd_cpn.ctxes-1(%rbp), %esi
	addl	%r15d, %esi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	incq	%rbp
	cmpq	%rbp, %r13
	jne	.LBB6_6
.LBB6_7:                                # %for.cond.cleanup
	leal	-1(%r12), %eax
	movzbl	x264_cabac_mb_mvd_cpn.ctxes(%rax), %eax
	addl	%eax, %r15d
	movq	%r14, %rdi
	movl	%r15d, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB6_8
.LBB6_1:                                # %if.then
	movq	%r14, %rdi
	movl	%ecx, %esi
	xorl	%edx, %edx
	callq	x264_cabac_encode_decision_c@PLT
	jmp	.LBB6_9
.LBB6_3:                                # %for.body17.preheader
	leal	3(%r15), %esi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leal	4(%r15), %esi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leal	5(%r15), %esi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	addl	$6, %r15d
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	x264_cabac_encode_decision_c@PLT
	leal	-9(%r12), %edx
	movq	%r14, %rdi
	movl	$3, %esi
	callq	x264_cabac_encode_ue_bypass@PLT
.LBB6_8:                                # %if.end
	shrl	$31, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	x264_cabac_encode_bypass_c@PLT
.LBB6_9:                                # %if.end29
	cmpl	$33, %r12d
	movl	$33, %eax
	cmovbl	%r12d, %eax
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
.Lfunc_end6:
	.size	x264_cabac_mb_mvd_cpn, .Lfunc_end6-x264_cabac_mb_mvd_cpn
	.cfi_endproc
                                        # -- End function
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

	.type	block_idx_x,@object             # @block_idx_x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
block_idx_x:
	.ascii	"\000\001\000\001\002\003\002\003\000\001\000\001\002\003\002\003"
	.size	block_idx_x, 16

	.type	block_idx_y,@object             # @block_idx_y
	.p2align	4, 0x0
block_idx_y:
	.ascii	"\000\000\001\001\000\000\001\001\002\002\003\003\002\002\003\003"
	.size	block_idx_y, 16

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

	.type	x264_cabac_mb_type.i_mb_bits,@object # @x264_cabac_mb_type.i_mb_bits
	.p2align	4, 0x0
x264_cabac_mb_type.i_mb_bits:
	.ascii	"1)\0045-\000Cc\000=/\0009%\006Ss\000Kk\000[{\000Gg!"
	.size	x264_cabac_mb_type.i_mb_bits, 27

	.type	x264_mb_pred_mode16x16_fix,@object # @x264_mb_pred_mode16x16_fix
x264_mb_pred_mode16x16_fix:
	.ascii	"\000\001\002\003\002\002\002"
	.size	x264_mb_pred_mode16x16_fix, 7

	.type	x264_cabac_mb_mvd_cpn.ctxes,@object # @x264_cabac_mb_mvd_cpn.ctxes
	.section	.rodata.cst8,"aM",@progbits,8
x264_cabac_mb_mvd_cpn.ctxes:
	.ascii	"\003\004\005\006\006\006\006\006"
	.size	x264_cabac_mb_mvd_cpn.ctxes, 8

	.type	x264_mb_transform_8x8_allowed.partition_tab,@object # @x264_mb_transform_8x8_allowed.partition_tab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_mb_transform_8x8_allowed.partition_tab:
	.asciz	"\000\000\000\000\001\002\000\001\001\001\001\001\001\001\001\001\001\001"
	.size	x264_mb_transform_8x8_allowed.partition_tab, 19

	.type	significant_coeff_flag_offset,@object # @significant_coeff_flag_offset
	.p2align	4, 0x0
significant_coeff_flag_offset:
	.short	105                             # 0x69
	.short	120                             # 0x78
	.short	134                             # 0x86
	.short	149                             # 0x95
	.short	152                             # 0x98
	.short	402                             # 0x192
	.short	277                             # 0x115
	.short	292                             # 0x124
	.short	306                             # 0x132
	.short	321                             # 0x141
	.short	324                             # 0x144
	.short	436                             # 0x1b4
	.size	significant_coeff_flag_offset, 24

	.type	last_coeff_flag_offset,@object  # @last_coeff_flag_offset
	.p2align	4, 0x0
last_coeff_flag_offset:
	.short	166                             # 0xa6
	.short	181                             # 0xb5
	.short	195                             # 0xc3
	.short	210                             # 0xd2
	.short	213                             # 0xd5
	.short	417                             # 0x1a1
	.short	338                             # 0x152
	.short	353                             # 0x161
	.short	367                             # 0x16f
	.short	382                             # 0x17e
	.short	385                             # 0x181
	.short	451                             # 0x1c3
	.size	last_coeff_flag_offset, 24

	.type	coeff_abs_level_m1_offset,@object # @coeff_abs_level_m1_offset
	.p2align	1, 0x0
coeff_abs_level_m1_offset:
	.short	227                             # 0xe3
	.short	237                             # 0xed
	.short	247                             # 0xf7
	.short	257                             # 0x101
	.short	266                             # 0x10a
	.short	426                             # 0x1aa
	.size	coeff_abs_level_m1_offset, 12

	.type	significant_coeff_flag_offset_8x8,@object # @significant_coeff_flag_offset_8x8
	.p2align	4, 0x0
significant_coeff_flag_offset_8x8:
	.ascii	"\000\001\002\003\004\005\005\004\004\003\003\004\004\004\005\005\004\004\004\004\003\003\006\007\007\007\b\t\n\t\b\007\007\006\013\f\r\013\006\007\b\t\016\n\t\b\006\013\f\r\013\006\t\016\n\t\013\f\r\013\016\n\f"
	.ascii	"\000\001\001\002\002\003\003\004\005\006\007\007\007\b\004\005\006\t\n\n\b\013\f\013\t\t\n\n\b\013\f\013\t\t\n\n\b\013\f\013\t\t\n\n\b\r\r\t\t\n\n\b\r\r\t\t\n\n\016\016\016\016\016"
	.size	significant_coeff_flag_offset_8x8, 126

	.type	last_coeff_flag_offset_8x8,@object # @last_coeff_flag_offset_8x8
	.p2align	4, 0x0
last_coeff_flag_offset_8x8:
	.ascii	"\000\001\001\001\001\001\001\001\001\001\001\001\001\001\001\001\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\002\003\003\003\003\003\003\003\003\004\004\004\004\004\004\004\004\005\005\005\005\006\006\006\006\007\007\007\007\b\b\b"
	.size	last_coeff_flag_offset_8x8, 63

	.type	count_cat_m1,@object            # @count_cat_m1
count_cat_m1:
	.ascii	"\017\016\017\003\016"
	.size	count_cat_m1, 5

	.type	coeff_abs_level1_ctx,@object    # @coeff_abs_level1_ctx
	.section	.rodata.cst8,"aM",@progbits,8
coeff_abs_level1_ctx:
	.asciz	"\001\002\003\004\000\000\000"
	.size	coeff_abs_level1_ctx, 8

	.type	coeff_abs_levelgt1_ctx,@object  # @coeff_abs_levelgt1_ctx
coeff_abs_levelgt1_ctx:
	.ascii	"\005\005\005\005\006\007\b\t"
	.size	coeff_abs_levelgt1_ctx, 8

	.type	coeff_abs_level_transition,@object # @coeff_abs_level_transition
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
coeff_abs_level_transition:
	.ascii	"\001\002\003\003\004\005\006\007"
	.ascii	"\004\004\004\004\005\006\007\007"
	.size	coeff_abs_level_transition, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
