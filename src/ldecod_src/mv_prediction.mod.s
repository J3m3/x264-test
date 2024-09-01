	.text
	.file	"mv_prediction.c"
	.globl	init_motion_vector_prediction   # -- Begin function init_motion_vector_prediction
	.p2align	4, 0x90
	.type	init_motion_vector_prediction,@function
init_motion_vector_prediction:          # @init_motion_vector_prediction
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	movl	$GetMotionVectorPredictorNormal, %eax
	movl	$GetMotionVectorPredictorMBAFF, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, 448(%rdi)
	retq
.Lfunc_end0:
	.size	init_motion_vector_prediction, .Lfunc_end0-init_motion_vector_prediction
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function GetMotionVectorPredictorMBAFF
	.type	GetMotionVectorPredictorMBAFF,@function
GetMotionVectorPredictorMBAFF:          # @GetMotionVectorPredictorMBAFF
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
	movl	%ecx, %eax
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	8(%rdi), %r11
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	cmpl	$0, 384(%rdi)
	movl	(%rsi), %edi
	movslq	%r9d, %r9
	movl	%edi, -12(%rsp)                 # 4-byte Spill
	movl	$-1, %r14d
	movl	$-1, %ebp
	je	.LBB1_7
# %bb.1:                                # %if.then
	testl	%edi, %edi
	je	.LBB1_3
# %bb.2:                                # %cond.true
	movq	848888(%r11), %rcx
	movslq	4(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	sete	%cl
	movswq	14(%rsi), %rdx
	movswq	12(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdx,8), %r10
	movsbl	24(%r9,%r10), %ebp
	shll	%cl, %ebp
.LBB1_3:                                # %cond.end29
	movl	16(%rsi), %edi
	testl	%edi, %edi
	je	.LBB1_5
# %bb.4:                                # %cond.true34
	movq	848888(%r11), %rcx
	movslq	20(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	sete	%cl
	movswq	30(%rsi), %rdx
	movswq	28(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdx,8), %r10
	movsbl	24(%r9,%r10), %r14d
	shll	%cl, %r14d
.LBB1_5:                                # %cond.end72
	cmpl	$0, 32(%rsi)
	je	.LBB1_17
# %bb.6:                                # %cond.true77
	movq	%r11, %rbx
	movq	848888(%r11), %rcx
	movslq	36(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	sete	%cl
	movswq	46(%rsi), %rdx
	movswq	44(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdx,8), %r10
	movsbl	24(%r9,%r10), %r15d
	shll	%cl, %r15d
	jmp	.LBB1_16
.LBB1_7:                                # %if.else
	testl	%edi, %edi
	je	.LBB1_10
# %bb.8:                                # %cond.true120
	movq	848888(%r11), %rcx
	movslq	4(%rsi), %rdx
	movswq	14(%rsi), %r10
	movswq	12(%rsi), %rbx
	shlq	$5, %rbx
	addq	(%r8,%r10,8), %rbx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movsbl	24(%r9,%rbx), %ebp
	je	.LBB1_10
# %bb.9:                                # %cond.true128
	sarb	%bpl
	movsbl	%bpl, %ebp
.LBB1_10:                               # %cond.end157
	movl	16(%rsi), %edi
	testl	%edi, %edi
	je	.LBB1_13
# %bb.11:                               # %cond.true162
	movq	848888(%r11), %rcx
	movslq	20(%rsi), %rdx
	movswq	30(%rsi), %r10
	movswq	28(%rsi), %r14
	shlq	$5, %r14
	addq	(%r8,%r10,8), %r14
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movsbl	24(%r9,%r14), %r14d
	je	.LBB1_13
# %bb.12:                               # %cond.true170
	sarb	%r14b
	movsbl	%r14b, %r14d
.LBB1_13:                               # %cond.end200
	cmpl	$0, 32(%rsi)
	je	.LBB1_17
# %bb.14:                               # %cond.true205
	movq	%r11, %rbx
	movq	848888(%r11), %rcx
	movslq	36(%rsi), %rdx
	movswq	46(%rsi), %r10
	movswq	44(%rsi), %r15
	shlq	$5, %r15
	addq	(%r8,%r10,8), %r15
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movsbl	24(%r9,%r15), %r15d
	je	.LBB1_16
# %bb.15:                               # %cond.true213
	sarb	%r15b
	movsbl	%r15b, %r15d
.LBB1_16:                               # %cond.false227
	xorl	%ecx, %ecx
	jmp	.LBB1_18
.LBB1_17:
	movq	%r11, %rbx
	movl	$-1, %r15d
	movb	$1, %cl
.LBB1_18:                               # %if.end
	movl	80(%rsp), %r13d
	movl	72(%rsp), %r10d
	movswl	%ax, %r12d
	cmpl	%r12d, %ebp
	jne	.LBB1_21
# %bb.19:                               # %if.end
	cmpl	%r12d, %r14d
	je	.LBB1_21
# %bb.20:                               # %if.end
	movl	$1, %eax
	cmpl	%r12d, %r15d
	jne	.LBB1_24
.LBB1_21:                               # %if.else255
	cmpl	%r12d, %r15d
	sete	%al
	cmpl	%r12d, %r14d
	setne	%r11b
	cmpl	%r12d, %ebp
	sete	%dl
	orb	%al, %dl
	orb	%r11b, %dl
	movl	%edx, %eax
	xorb	$1, %al
	movzbl	%al, %eax
	addl	%eax, %eax
	cmpl	%r12d, %ebp
	je	.LBB1_24
# %bb.22:                               # %if.else255
	testb	%dl, %dl
	je	.LBB1_24
# %bb.23:                               # %land.lhs.true272
	cmpl	%r12d, %r15d
	sete	%al
	cmpl	%r12d, %r14d
	setne	%dl
	andb	%al, %dl
	movzbl	%dl, %eax
	leal	(%rax,%rax,2), %eax
.LBB1_24:                               # %if.end283
	movl	%r10d, %edx
	xorl	$8, %edx
	movl	%r13d, %r11d
	xorl	$16, %r11d
	orl	%edx, %r11d
	jne	.LBB1_27
# %bb.25:                               # %if.then289
	cmpl	$0, 56(%rsp)
	movq	-24(%rsp), %r14                 # 8-byte Reload
	je	.LBB1_31
# %bb.26:                               # %if.else298
	cmpl	%r12d, %r15d
	movl	$3, %edx
	jmp	.LBB1_32
.LBB1_27:                               # %if.else305
	xorl	$16, %r10d
	xorl	$8, %r13d
	orl	%r10d, %r13d
	jne	.LBB1_30
# %bb.28:                               # %if.then311
	cmpl	$0, 64(%rsp)
	movq	%rbx, %r15
	je	.LBB1_47
# %bb.29:                               # %if.else320
	cmpl	%r12d, %ebp
	movl	$1, %edx
	jmp	.LBB1_48
.LBB1_30:
	movq	-24(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB1_33
.LBB1_31:                               # %if.then292
	cmpl	%r12d, %ebp
	movl	$1, %edx
.LBB1_32:                               # %if.then333
	cmovel	%edx, %eax
.LBB1_33:                               # %if.then333
	movq	%rbx, %r15
	xorl	%r10d, %r10d
	movl	$0, %ebp
	cmpl	$0, -12(%rsp)                   # 4-byte Folded Reload
	je	.LBB1_35
.LBB1_34:                               # %cond.true337
	movswq	14(%rsi), %rdx
	movswq	12(%rsi), %r11
	shlq	$5, %r11
	addq	(%r8,%rdx,8), %r11
	movswl	16(%r11,%r9,4), %ebp
.LBB1_35:                               # %cond.end350
	testl	%edi, %edi
	je	.LBB1_37
# %bb.36:                               # %cond.true355
	movswq	30(%rsi), %rdx
	movswq	28(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdx,8), %r10
	movswl	16(%r10,%r9,4), %r10d
.LBB1_37:                               # %cond.end370
	xorl	%r11d, %r11d
	testb	%cl, %cl
	je	.LBB1_39
# %bb.38:                               # %if.end666
	movl	%eax, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_39:                               # %cond.true375
	movswq	46(%rsi), %rdx
	movswq	44(%rsi), %r11
	shlq	$5, %r11
	addq	(%r8,%rdx,8), %r11
	movswl	16(%r11,%r9,4), %r11d
	movl	%eax, %eax
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_40:                               # %sw.bb
	testl	%edi, %edi
	sete	%dl
	testb	%cl, %dl
	je	.LBB1_44
.LBB1_42:
	movl	%ebp, %ecx
	jmp	.LBB1_52
.LBB1_43:                               # %sw.bb677
	movl	%r10d, %ecx
	jmp	.LBB1_52
.LBB1_44:                               # %if.else674
	cmpl	%r10d, %ebp
	jle	.LBB1_49
# %bb.45:                               # %if.then.i
	movl	%r10d, %ecx
	cmpl	%r11d, %r10d
	jg	.LBB1_52
# %bb.46:                               # %if.else.i
	cmpl	%r11d, %ebp
	cmovll	%ebp, %r11d
	jmp	.LBB1_51
.LBB1_47:                               # %if.then314
	cmpl	%r12d, %r14d
	movl	$2, %edx
.LBB1_48:                               # %if.then333
	cmovel	%edx, %eax
	movq	-24(%rsp), %r14                 # 8-byte Reload
	xorl	%r10d, %r10d
	movl	$0, %ebp
	cmpl	$0, -12(%rsp)                   # 4-byte Folded Reload
	jne	.LBB1_34
	jmp	.LBB1_35
.LBB1_49:                               # %if.else6.i
	movl	%ebp, %ecx
	cmpl	%r11d, %ebp
	jg	.LBB1_52
# %bb.50:                               # %if.else9.i
	cmpl	%r11d, %r10d
	cmovll	%r10d, %r11d
.LBB1_51:                               # %sw.bb678
	movl	%r11d, %ecx
.LBB1_52:                               # %if.else392.1
	movw	%cx, (%r14)
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, 384(%rcx)
	movl	(%rsi), %ecx
	je	.LBB1_61
# %bb.53:                               # %if.then395.1
	xorl	%edi, %edi
	movl	$0, %r11d
	testl	%ecx, %ecx
	je	.LBB1_56
# %bb.54:                               # %cond.true399.1
	movq	848888(%r15), %rcx
	movslq	4(%rsi), %rdx
	movswq	14(%rsi), %r10
	movswq	12(%rsi), %r11
	shlq	$5, %r11
	addq	(%r8,%r10,8), %r11
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movswl	18(%r11,%r9,4), %r11d
	je	.LBB1_55
.LBB1_56:                               # %cond.end437.1
	movl	16(%rsi), %ebx
	testl	%ebx, %ebx
	je	.LBB1_58
.LBB1_57:                               # %cond.true442.1
	movq	848888(%r15), %rcx
	movslq	20(%rsi), %rdx
	movswq	30(%rsi), %rdi
	movswq	28(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdi,8), %r10
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movswl	18(%r10,%r9,4), %edi
	je	.LBB1_67
.LBB1_58:                               # %cond.end482.1
	cmpl	$0, 32(%rsi)
	je	.LBB1_68
.LBB1_59:                               # %cond.true487.1
	movq	848888(%r15), %rcx
	movslq	36(%rsi), %rdx
	movswq	46(%rsi), %r10
	movswq	44(%rsi), %rsi
	shlq	$5, %rsi
	addq	(%r8,%r10,8), %rsi
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	movswl	18(%rsi,%r9,4), %esi
	je	.LBB1_69
# %bb.60:                               # %cond.true495.1
	movb	$1, %cl
	movl	%r11d, %edx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_61:                               # %if.else529.1
	xorl	%edi, %edi
	movl	$0, %r11d
	testl	%ecx, %ecx
	je	.LBB1_63
# %bb.62:                               # %cond.true533.1
	movq	848888(%r15), %rcx
	movslq	4(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	setne	%cl
	movswq	14(%rsi), %rdx
	movswq	12(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%rdx,8), %r10
	movswl	18(%r10,%r9,4), %r11d
	shll	%cl, %r11d
.LBB1_63:                               # %cond.end573.1
	movl	16(%rsi), %ebx
	testl	%ebx, %ebx
	je	.LBB1_65
# %bb.64:                               # %cond.true578.1
	movq	848888(%r15), %rcx
	movslq	20(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	setne	%cl
	movswq	30(%rsi), %rdx
	movswq	28(%rsi), %rdi
	shlq	$5, %rdi
	addq	(%r8,%rdx,8), %rdi
	movswl	18(%rdi,%r9,4), %edi
	shll	%cl, %edi
.LBB1_65:                               # %cond.end618.1
	cmpl	$0, 32(%rsi)
	je	.LBB1_68
# %bb.66:                               # %cond.true623.1
	movq	848888(%r15), %rcx
	movslq	36(%rsi), %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	cmpl	$0, 384(%rcx,%rdx)
	setne	%cl
	movswq	46(%rsi), %rdx
	movswq	44(%rsi), %rsi
	shlq	$5, %rsi
	addq	(%r8,%rdx,8), %rsi
	movswl	18(%rsi,%r9,4), %esi
	shll	%cl, %esi
	movb	$1, %cl
	movl	%r11d, %edx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_55:                               # %cond.false420.1
	movzwl	%r11w, %ecx
	shrl	$15, %ecx
	addl	%r11d, %ecx
	movswl	%cx, %r11d
	sarl	%r11d
	movl	16(%rsi), %ebx
	testl	%ebx, %ebx
	jne	.LBB1_57
	jmp	.LBB1_58
.LBB1_67:                               # %cond.false464.1
	movzwl	%di, %ecx
	shrl	$15, %ecx
	addl	%edi, %ecx
	movswl	%cx, %edi
	sarl	%edi
	cmpl	$0, 32(%rsi)
	jne	.LBB1_59
.LBB1_68:
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	movl	%r11d, %edx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_69:                               # %cond.false509.1
	movzwl	%si, %ecx
	shrl	$15, %ecx
	addl	%esi, %ecx
	movswl	%cx, %esi
	sarl	%esi
	movb	$1, %cl
	movl	%r11d, %edx
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_70:                               # %sw.bb.1
	testl	%ebx, %ebx
	sete	%al
	xorb	$1, %cl
	testb	%cl, %al
	jne	.LBB1_75
# %bb.71:                               # %if.else674.1
	cmpl	%edi, %r11d
	jle	.LBB1_76
# %bb.72:                               # %if.then.i.1
	movl	%edi, %edx
	cmpl	%esi, %edi
	jg	.LBB1_79
# %bb.73:                               # %if.else.i.1
	cmpl	%esi, %r11d
	cmovll	%r11d, %esi
	jmp	.LBB1_78
.LBB1_74:                               # %sw.bb677.1
	movl	%edi, %edx
	jmp	.LBB1_79
.LBB1_75:
	movl	%r11d, %edx
	jmp	.LBB1_79
.LBB1_76:                               # %if.else6.i.1
	movl	%r11d, %edx
	cmpl	%esi, %r11d
	jg	.LBB1_79
# %bb.77:                               # %if.else9.i.1
	cmpl	%esi, %edi
	cmovll	%edi, %esi
.LBB1_78:                               # %for.inc.1
	movl	%esi, %edx
.LBB1_79:                               # %for.inc.1
	movw	%dx, 2(%r14)
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
	.size	GetMotionVectorPredictorMBAFF, .Lfunc_end1-GetMotionVectorPredictorMBAFF
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_40
	.quad	.LBB1_42
	.quad	.LBB1_43
	.quad	.LBB1_51
.LJTI1_1:
	.quad	.LBB1_70
	.quad	.LBB1_79
	.quad	.LBB1_74
	.quad	.LBB1_78
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function GetMotionVectorPredictorNormal
	.type	GetMotionVectorPredictorNormal,@function
GetMotionVectorPredictorNormal:         # @GetMotionVectorPredictorNormal
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
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edx
	movl	$-1, %ebx
	movslq	%r9d, %rax
	movl	$-1, %r11d
	testl	%edx, %edx
	je	.LBB2_2
# %bb.1:                                # %cond.true
	movswq	14(%rsi), %r9
	movswq	12(%rsi), %r10
	shlq	$5, %r10
	addq	(%r8,%r9,8), %r10
	movsbl	24(%rax,%r10), %r11d
.LBB2_2:                                # %cond.end
	movl	16(%rsi), %r9d
	testl	%r9d, %r9d
	je	.LBB2_4
# %bb.3:                                # %cond.true11
	movswq	30(%rsi), %r10
	movswq	28(%rsi), %rbx
	shlq	$5, %rbx
	addq	(%r8,%r10,8), %rbx
	movsbl	24(%rax,%rbx), %ebx
.LBB2_4:                                # %cond.end25
	movl	32(%rsi), %r10d
	testl	%r10d, %r10d
	je	.LBB2_5
# %bb.6:                                # %cond.true30
	movswq	46(%rsi), %r14
	movswq	44(%rsi), %r15
	shlq	$5, %r15
	addq	(%r8,%r14,8), %r15
	movsbl	24(%rax,%r15), %ebp
	jmp	.LBB2_7
.LBB2_5:
	movl	$-1, %ebp
.LBB2_7:                                # %cond.end44
	movl	80(%rsp), %r14d
	movl	72(%rsp), %r15d
	movswl	%cx, %ecx
	cmpl	%ecx, %r11d
	jne	.LBB2_10
# %bb.8:                                # %cond.end44
	cmpl	%ecx, %ebx
	je	.LBB2_10
# %bb.9:                                # %cond.end44
	movl	$1, %r12d
	cmpl	%ecx, %ebp
	jne	.LBB2_13
.LBB2_10:                               # %if.else
	cmpl	%ecx, %ebp
	sete	%r12b
	cmpl	%ecx, %ebx
	setne	%dil
	cmpl	%ecx, %r11d
	sete	%r13b
	orb	%r12b, %r13b
	orb	%dil, %r13b
	movl	%r13d, %edi
	xorb	$1, %dil
	movzbl	%dil, %r12d
	addl	%r12d, %r12d
	cmpl	%ecx, %r11d
	je	.LBB2_13
# %bb.11:                               # %if.else
	testb	%r13b, %r13b
	je	.LBB2_13
# %bb.12:                               # %land.lhs.true71
	cmpl	%ecx, %ebp
	sete	%dil
	cmpl	%ecx, %ebx
	setne	%r12b
	andb	%dil, %r12b
	movzbl	%r12b, %edi
	leal	(%rdi,%rdi,2), %r12d
.LBB2_13:                               # %if.end81
	movl	%r15d, %edi
	xorl	$8, %edi
	movl	%r14d, %r13d
	xorl	$16, %r13d
	orl	%edi, %r13d
	jne	.LBB2_18
# %bb.14:                               # %if.then87
	cmpl	$0, 56(%rsp)
	je	.LBB2_23
# %bb.15:                               # %if.else96
	cmpl	%ecx, %ebp
	jne	.LBB2_24
	jmp	.LBB2_16
.LBB2_18:                               # %if.else103
	xorl	$16, %r15d
	xorl	$8, %r14d
	orl	%r15d, %r14d
	jne	.LBB2_24
# %bb.19:                               # %if.then109
	cmpl	$0, 64(%rsp)
	je	.LBB2_20
.LBB2_23:                               # %if.else118
	cmpl	%ecx, %r11d
	jne	.LBB2_24
	jmp	.LBB2_26
.LBB2_20:                               # %if.then112
	cmpl	%ecx, %ebx
	je	.LBB2_21
.LBB2_24:                               # %if.end126
	movl	%r12d, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_25:                               # %sw.bb
	movl	%r10d, %ecx
	orl	%r9d, %ecx
	je	.LBB2_26
# %bb.29:                               # %if.else150
	movl	$zero_mv, %ecx
	movl	$zero_mv, %r11d
	testl	%edx, %edx
	je	.LBB2_31
# %bb.30:                               # %cond.true154
	movswq	14(%rsi), %rdx
	movswq	12(%rsi), %rdi
	shlq	$5, %rdi
	addq	(%r8,%rdx,8), %rdi
	leaq	(%rdi,%rax,4), %r11
	addq	$16, %r11
.LBB2_31:                               # %cond.end167
	testl	%r9d, %r9d
	je	.LBB2_33
# %bb.32:                               # %cond.true172
	movswq	30(%rsi), %rcx
	movswq	28(%rsi), %rdx
	shlq	$5, %rdx
	addq	(%r8,%rcx,8), %rdx
	leaq	(%rdx,%rax,4), %rcx
	addq	$16, %rcx
.LBB2_33:                               # %cond.end185
	testl	%r10d, %r10d
	je	.LBB2_34
# %bb.35:                               # %cond.true190
	movswq	46(%rsi), %rdx
	movswq	44(%rsi), %rsi
	shlq	$5, %rsi
	addq	(%r8,%rdx,8), %rsi
	leaq	(%rsi,%rax,4), %rax
	addq	$16, %rax
	jmp	.LBB2_36
.LBB2_26:                               # %if.then133
	testl	%edx, %edx
	je	.LBB2_49
# %bb.27:                               # %if.then137
	movswq	14(%rsi), %rcx
	movswq	12(%rsi), %rdx
	jmp	.LBB2_28
.LBB2_16:                               # %sw.bb257
	testl	%r10d, %r10d
	je	.LBB2_49
# %bb.17:                               # %if.then261
	movswq	46(%rsi), %rcx
	movswq	44(%rsi), %rdx
	jmp	.LBB2_28
.LBB2_21:                               # %sw.bb239
	testl	%r9d, %r9d
	je	.LBB2_49
# %bb.22:                               # %if.then243
	movswq	30(%rsi), %rcx
	movswq	28(%rsi), %rdx
.LBB2_28:                               # %sw.epilog
	shlq	$5, %rdx
	addq	(%r8,%rcx,8), %rdx
	movl	16(%rdx,%rax,4), %eax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, (%rcx)
	jmp	.LBB2_50
.LBB2_49:                               # %if.else273
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB2_50
.LBB2_34:
	movl	$zero_mv, %eax
.LBB2_36:                               # %cond.end203
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movswl	(%r11), %edi
	movswl	(%rcx), %r8d
	movswl	(%rax), %esi
	cmpw	%r8w, %di
	jle	.LBB2_39
# %bb.37:                               # %if.then.i
	movl	%r8d, %r9d
	cmpw	%si, %r8w
	jg	.LBB2_42
# %bb.38:                               # %if.else.i
	cmpl	%esi, %edi
	cmovll	%edi, %esi
	jmp	.LBB2_41
.LBB2_39:                               # %if.else6.i
	movl	%edi, %r9d
	cmpw	%si, %di
	jg	.LBB2_42
# %bb.40:                               # %if.else9.i
	cmpl	%esi, %r8d
	cmovll	%r8d, %esi
.LBB2_41:                               # %imedian.exit
	movl	%esi, %r9d
.LBB2_42:                               # %imedian.exit
	movw	%r9w, (%rdx)
	movswl	2(%r11), %esi
	movswl	2(%rcx), %ecx
	movswl	2(%rax), %eax
	cmpw	%cx, %si
	jle	.LBB2_45
# %bb.43:                               # %if.then.i376
	movl	%ecx, %edi
	cmpw	%ax, %cx
	jg	.LBB2_48
# %bb.44:                               # %if.else.i378
	cmpl	%eax, %esi
	cmovll	%esi, %eax
	jmp	.LBB2_47
.LBB2_45:                               # %if.else6.i371
	movl	%esi, %edi
	cmpw	%ax, %si
	jg	.LBB2_48
# %bb.46:                               # %if.else9.i373
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
.LBB2_47:                               # %imedian.exit380
	movl	%eax, %edi
.LBB2_48:                               # %imedian.exit380
	movw	%di, 2(%rdx)
.LBB2_50:                               # %sw.epilog
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
	.size	GetMotionVectorPredictorNormal, .Lfunc_end2-GetMotionVectorPredictorNormal
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI2_0:
	.quad	.LBB2_25
	.quad	.LBB2_26
	.quad	.LBB2_21
	.quad	.LBB2_16
                                        # -- End function
	.type	zero_mv,@object                 # @zero_mv
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	1, 0x0
zero_mv:
	.zero	4
	.size	zero_mv, 4

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
