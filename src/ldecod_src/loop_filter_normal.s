	.text
	.file	"loop_filter_normal.c"
	.globl	set_loop_filter_functions_normal # -- Begin function set_loop_filter_functions_normal
	.p2align	4, 0x90
	.type	set_loop_filter_functions_normal,@function
set_loop_filter_functions_normal:       # @set_loop_filter_functions_normal
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$GetStrengthVer, 856760(%rdi)
	movq	$GetStrengthHor, 856768(%rdi)
	movq	$EdgeLoopLumaVer, 856776(%rdi)
	movq	$EdgeLoopLumaHor, 856784(%rdi)
	movq	$EdgeLoopChromaVer, 856792(%rdi)
	movq	$EdgeLoopChromaHor, 856800(%rdi)
	retq
.Lfunc_end0:
	.size	set_loop_filter_functions_normal, .Lfunc_end0-set_loop_filter_functions_normal
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function GetStrengthVer
.LCPI1_0:
	.zero	16,4
	.text
	.p2align	4, 0x90
	.type	GetStrengthVer,@function
GetStrengthVer:                         # @GetStrengthVer
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
                                        # kill: def $edx killed $edx def $rdx
	movq	(%rsi), %rax
	movl	164(%rax), %eax
	addl	$-3, %eax
	cmpl	$1, %eax
	jbe	.LBB1_2
# %bb.1:                                # %if.else
	cmpl	$0, 96(%rsi)
	je	.LBB1_5
.LBB1_2:                                # %if.then
	xorl	%eax, %eax
	cmpl	$1, %edx
	adcb	$3, %al
	movzbl	%al, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
.LBB1_3:                                # %land.rhs163
	movdqu	%xmm0, (%rdi)
.LBB1_4:                                # %land.rhs163
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
.LBB1_5:                                # %if.then10
	.cfi_def_cfa_offset 56
	testl	%edx, %edx
	jle	.LBB1_7
# %bb.6:
	movl	$0, -60(%rsp)                   # 4-byte Folded Spill
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	jmp	.LBB1_9
.LBB1_7:                                # %get_non_aff_neighbor_luma.exit
	movq	144(%rsi), %rax
	je	.LBB1_27
# %bb.8:
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	$0, -60(%rsp)                   # 4-byte Folded Spill
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
.LBB1_9:                                # %if.then17
	leal	15(%rdx), %ebx
	movq	PicPos@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	24(%rsi), %r9
	movzwl	(%rax,%r9,4), %r11d
	movzwl	2(%rax,%r9,4), %r10d
	shll	$2, %r11d
	shll	$2, %r10d
	movl	%edx, %r12d
	sarl	$2, %r12d
	andl	$15, %ebx
	movl	%ebx, -36(%rsp)                 # 4-byte Spill
	movl	%ebx, %eax
	shrl	$2, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movswl	%r11w, %r9d
	movl	%r12d, %eax
	andl	$3, %eax
	orl	%r9d, %eax
	movslq	%r12d, %r14
	movq	288(%rsi), %r9
	cmpl	$63, %r14d
	jle	.LBB1_11
# %bb.10:
	xorl	%r11d, %r11d
	jmp	.LBB1_12
.LBB1_11:                               # %cond.false.i
	movq	po2(,%r14,8), %r11
.LBB1_12:                               # %i64_power2.exit
	movswl	%r10w, %r10d
	movl	%r10d, -40(%rsp)                # 4-byte Spill
	cltq
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	$2, %ebp
	testq	%r9, %r11
	jne	.LBB1_14
# %bb.13:                               # %lor.lhs.false34
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	po2(,%rax,8), %rax
	movq	-24(%rsp), %r9                  # 8-byte Reload
	testq	%rax, 288(%r9)
	je	.LBB1_29
.LBB1_14:                               # %if.end158
	imull	$16843009, %ebp, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movq	288(%rsi), %rax
	cmpl	$59, %r12d
	jle	.LBB1_16
# %bb.15:
	xorl	%edx, %edx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_18
	jmp	.LBB1_17
.LBB1_16:                               # %cond.false.i.1
	movq	po2+32(,%r14,8), %rdx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_18
.LBB1_17:                               # %lor.lhs.false34.1
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	po2+32(,%rax,8), %rax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	testq	%rax, 288(%rdx)
	je	.LBB1_38
.LBB1_18:                               # %if.end158.1
	imull	$16843009, %ebp, %eax           # imm = 0x1010101
	movl	%eax, 4(%rdi)
	movq	288(%rsi), %rax
	cmpl	$55, %r12d
	jle	.LBB1_20
# %bb.19:
	xorl	%edx, %edx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_22
	jmp	.LBB1_21
.LBB1_20:                               # %cond.false.i.2
	movq	po2+64(,%r14,8), %rdx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_22
.LBB1_21:                               # %lor.lhs.false34.2
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	po2+64(,%rax,8), %rax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	testq	%rax, 288(%rdx)
	je	.LBB1_41
.LBB1_22:                               # %if.end158.2
	imull	$16843009, %ebp, %eax           # imm = 0x1010101
	movl	%eax, 8(%rdi)
	movq	288(%rsi), %rax
	cmpl	$51, %r12d
	jle	.LBB1_24
# %bb.23:
	xorl	%edx, %edx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_26
	jmp	.LBB1_25
.LBB1_24:                               # %cond.false.i.3
	movq	po2+96(,%r14,8), %rdx
	movl	$2, %ebp
	testq	%rax, %rdx
	jne	.LBB1_26
.LBB1_25:                               # %lor.lhs.false34.3
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	po2+96(,%rax,8), %rax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	testq	%rax, 288(%rdx)
	je	.LBB1_44
.LBB1_26:                               # %if.end158.3
	imull	$16843009, %ebp, %eax           # imm = 0x1010101
	movl	%eax, 12(%rdi)
	jmp	.LBB1_4
.LBB1_27:                               # %lor.lhs.false13
	cmpl	$0, 96(%rax)
	je	.LBB1_68
# %bb.28:                               # %land.rhs163
	movdqa	.LCPI1_0(%rip), %xmm0           # xmm0 = [4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4]
	jmp	.LBB1_3
.LBB1_29:                               # %if.else42
	cmpb	$0, -60(%rsp)                   # 1-byte Folded Reload
	jne	.LBB1_31
# %bb.30:                               # %land.lhs.true
	movl	152(%rsi), %eax
	decl	%eax
	xorl	%ebp, %ebp
	cmpw	$2, %ax
	jb	.LBB1_14
.LBB1_31:                               # %if.else53
	sarl	$4, %edx
	addl	-40(%rsp), %edx                 # 4-byte Folded Reload
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movswl	48(%r9), %eax
	sarl	$2, %eax
	movl	44(%r9), %r9d
	addl	-36(%rsp), %r9d                 # 4-byte Folded Reload
	movswl	%r9w, %r9d
	sarl	$2, %r9d
	movq	152(%r8), %r15
	movslq	%edx, %rdx
	movq	(%r15,%rdx,8), %r13
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	shlq	$5, %rbx
	movq	(%r13,%rbx), %r11
	movq	8(%r13,%rbx), %r10
	cltq
	movq	(%r15,%rax,8), %rdx
	movslq	%r9d, %r9
	shlq	$5, %r9
	movq	(%rdx,%r9), %rax
	movq	8(%rdx,%r9), %r15
	cmpq	%rax, %r11
	jne	.LBB1_33
# %bb.32:                               # %if.else53
	cmpq	%r15, %r10
	je	.LBB1_35
.LBB1_33:                               # %lor.lhs.false93
	movl	$1, %ebp
	cmpq	%r15, %r11
	jne	.LBB1_14
# %bb.34:                               # %lor.lhs.false93
	cmpq	%rax, %r10
	jne	.LBB1_14
.LBB1_35:                               # %if.then99
	addq	%rbx, %r13
	addq	%r9, %rdx
	cmpq	%r10, %r11
	je	.LBB1_69
# %bb.36:                               # %if.then102
	movswl	22(%r13), %ebp
	cmpq	%rax, %r11
	je	.LBB1_89
# %bb.37:                               # %if.else115
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	20(%rdx), %r10d
	subl	%r10d, %eax
	movswl	22(%rdx), %r10d
	movl	%eax, %r11d
	negl	%r11d
	cmovsl	%eax, %r11d
	cmpw	$4, %r11w
	setae	%al
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%al, %r9b
	movswl	20(%r13), %eax
	movswl	16(%rdx), %r10d
	subl	%r10d, %eax
	movswl	18(%rdx), %edx
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	cmpw	$4, %r10w
	setae	%al
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	movzwl	%dx, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	orb	%r9b, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_14
.LBB1_38:                               # %if.else42.1
	cmpb	$0, -60(%rsp)                   # 1-byte Folded Reload
	jne	.LBB1_47
# %bb.39:                               # %land.lhs.true.1
	movl	152(%rsi), %eax
	decl	%eax
	cmpw	$2, %ax
	jb	.LBB1_40
.LBB1_47:                               # %if.else53.1
	leaq	4(%r14), %rax
	sarl	$2, %eax
	addl	-40(%rsp), %eax                 # 4-byte Folded Reload
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	48(%r9), %edx
	shll	$16, %edx
	addl	$262144, %edx                   # imm = 0x40000
	sarl	$18, %edx
	movl	44(%r9), %r9d
	addl	-36(%rsp), %r9d                 # 4-byte Folded Reload
	movswl	%r9w, %r9d
	sarl	$2, %r9d
	movq	152(%r8), %r10
	cltq
	movq	(%r10,%rax,8), %r13
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	shlq	$5, %rbx
	movq	(%r13,%rbx), %r11
	movq	8(%r13,%rbx), %rax
	movslq	%edx, %rdx
	movq	(%r10,%rdx,8), %rdx
	movslq	%r9d, %r9
	shlq	$5, %r9
	movq	(%rdx,%r9), %r10
	movq	8(%rdx,%r9), %r15
	cmpq	%r10, %r11
	jne	.LBB1_49
# %bb.48:                               # %if.else53.1
	cmpq	%r15, %rax
	je	.LBB1_51
.LBB1_49:                               # %lor.lhs.false93.1
	movl	$1, %ebp
	cmpq	%r15, %r11
	jne	.LBB1_18
# %bb.50:                               # %lor.lhs.false93.1
	cmpq	%r10, %rax
	jne	.LBB1_18
.LBB1_51:                               # %if.then99.1
	addq	%rbx, %r13
	addq	%r9, %rdx
	cmpq	%rax, %r11
	je	.LBB1_74
# %bb.52:                               # %if.then102.1
	movswl	22(%r13), %ebp
	cmpq	%r10, %r11
	je	.LBB1_90
# %bb.53:                               # %if.else115.1
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	20(%rdx), %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	movswl	22(%rdx), %eax
	cmpw	$4, %r10w
	setae	%r10b
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r10b, %al
	movswl	20(%r13), %r9d
	movswl	16(%rdx), %r10d
	subl	%r10d, %r9d
	movswl	18(%rdx), %edx
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$4, %r10w
	setae	%r9b
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%r9b, %dl
	orb	%al, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_18
.LBB1_41:                               # %if.else42.2
	cmpb	$0, -60(%rsp)                   # 1-byte Folded Reload
	jne	.LBB1_54
# %bb.42:                               # %land.lhs.true.2
	movl	152(%rsi), %eax
	decl	%eax
	cmpw	$2, %ax
	jb	.LBB1_43
.LBB1_54:                               # %if.else53.2
	leaq	8(%r14), %rax
	sarl	$2, %eax
	addl	-40(%rsp), %eax                 # 4-byte Folded Reload
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movl	48(%r9), %edx
	shll	$16, %edx
	addl	$524288, %edx                   # imm = 0x80000
	sarl	$18, %edx
	movl	44(%r9), %r9d
	addl	-36(%rsp), %r9d                 # 4-byte Folded Reload
	movswl	%r9w, %r9d
	sarl	$2, %r9d
	movq	152(%r8), %r10
	cltq
	movq	(%r10,%rax,8), %r13
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	shlq	$5, %rbx
	movq	(%r13,%rbx), %r11
	movq	8(%r13,%rbx), %rax
	movslq	%edx, %rdx
	movq	(%r10,%rdx,8), %rdx
	movslq	%r9d, %r9
	shlq	$5, %r9
	movq	(%rdx,%r9), %r10
	movq	8(%rdx,%r9), %r15
	cmpq	%r10, %r11
	jne	.LBB1_56
# %bb.55:                               # %if.else53.2
	cmpq	%r15, %rax
	je	.LBB1_58
.LBB1_56:                               # %lor.lhs.false93.2
	movl	$1, %ebp
	cmpq	%r15, %r11
	jne	.LBB1_22
# %bb.57:                               # %lor.lhs.false93.2
	cmpq	%r10, %rax
	jne	.LBB1_22
.LBB1_58:                               # %if.then99.2
	addq	%rbx, %r13
	addq	%r9, %rdx
	cmpq	%rax, %r11
	je	.LBB1_79
# %bb.59:                               # %if.then102.2
	movswl	22(%r13), %ebp
	cmpq	%r10, %r11
	je	.LBB1_91
# %bb.60:                               # %if.else115.2
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	20(%rdx), %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	movswl	22(%rdx), %eax
	cmpw	$4, %r10w
	setae	%r10b
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r10b, %al
	movswl	20(%r13), %r9d
	movswl	16(%rdx), %r10d
	subl	%r10d, %r9d
	movswl	18(%rdx), %edx
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$4, %r10w
	setae	%r9b
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%r9b, %dl
	orb	%al, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_22
.LBB1_44:                               # %if.else42.3
	cmpb	$0, -60(%rsp)                   # 1-byte Folded Reload
	jne	.LBB1_61
# %bb.45:                               # %land.lhs.true.3
	movl	152(%rsi), %eax
	decl	%eax
	cmpw	$2, %ax
	jb	.LBB1_46
.LBB1_61:                               # %if.else53.3
	addq	$12, %r14
	sarl	$2, %r14d
	addl	-40(%rsp), %r14d                # 4-byte Folded Reload
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movl	48(%rdx), %eax
	shll	$16, %eax
	addl	$786432, %eax                   # imm = 0xC0000
	movl	-36(%rsp), %esi                 # 4-byte Reload
	addl	44(%rdx), %esi
	sarl	$18, %eax
	movswl	%si, %r9d
	sarl	$2, %r9d
	movq	152(%r8), %r10
	movslq	%r14d, %rdx
	movq	(%r10,%rdx,8), %rdx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	shlq	$5, %rsi
	movq	(%rdx,%rsi), %r8
	movq	%rsi, %rbx
	movq	8(%rdx,%rsi), %rsi
	cltq
	movq	(%r10,%rax,8), %rax
	movslq	%r9d, %r10
	shlq	$5, %r10
	movq	(%rax,%r10), %r9
	movq	8(%rax,%r10), %r11
	cmpq	%r9, %r8
	jne	.LBB1_63
# %bb.62:                               # %if.else53.3
	cmpq	%r11, %rsi
	je	.LBB1_65
.LBB1_63:                               # %lor.lhs.false93.3
	movl	$1, %ebp
	cmpq	%r11, %r8
	jne	.LBB1_26
# %bb.64:                               # %lor.lhs.false93.3
	cmpq	%r9, %rsi
	jne	.LBB1_26
.LBB1_65:                               # %if.then99.3
	addq	%rbx, %rdx
	addq	%r10, %rax
	cmpq	%rsi, %r8
	je	.LBB1_84
# %bb.66:                               # %if.then102.3
	movswl	22(%rdx), %esi
	cmpq	%r9, %r8
	je	.LBB1_92
# %bb.67:                               # %if.else115.3
	movswl	16(%rdx), %r8d
	movswl	18(%rdx), %r9d
	movswl	20(%rax), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movswl	22(%rax), %r8d
	cmpw	$4, %r10w
	setae	%r10b
	subl	%r8d, %r9d
	movl	%r9d, %r8d
	negl	%r8d
	cmovsl	%r9d, %r8d
	movzwl	%r8w, %r8d
	cmpl	%ecx, %r8d
	setge	%r8b
	orb	%r10b, %r8b
	movswl	20(%rdx), %edx
	movswl	16(%rax), %r9d
	subl	%r9d, %edx
	movswl	18(%rax), %eax
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	cmpw	$4, %r9w
	setae	%dl
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%dl, %al
	orb	%r8b, %al
	movzbl	%al, %ebp
	jmp	.LBB1_26
.LBB1_68:
	movb	$1, %r9b
	movl	%r9d, -60(%rsp)                 # 4-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	jmp	.LBB1_9
.LBB1_69:                               # %if.else127
	movswl	16(%r13), %ebp
	movswl	18(%r13), %r10d
	movswl	16(%rdx), %r9d
	movl	%ebp, %eax
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	subl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovsl	%eax, %ebx
	movswl	18(%rdx), %eax
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	movl	%r10d, %r9d
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movswl	20(%r13), %r10d
	movswl	22(%r13), %r13d
	movswl	20(%rdx), %r11d
	movl	%r10d, -56(%rsp)                # 4-byte Spill
	subl	%r11d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movswl	22(%rdx), %edx
	movl	%r13d, %r15d
	subl	%edx, %r15d
	movl	%r15d, %r10d
	negl	%r10d
	cmovsl	%r15d, %r10d
	cmpw	$3, %bx
	ja	.LBB1_93
# %bb.70:                               # %if.else127
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_93
# %bb.71:                               # %if.else127
	movzwl	%r9w, %eax
	cmpl	$3, %eax
	ja	.LBB1_93
# %bb.72:                               # %if.else127
	movzwl	%r10w, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_93
# %bb.73:
	xorl	%eax, %eax
	jmp	.LBB1_94
.LBB1_74:                               # %if.else127.1
	movswl	16(%r13), %ebp
	movswl	18(%r13), %r10d
	movswl	16(%rdx), %r9d
	movl	%ebp, %eax
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	subl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovsl	%eax, %ebx
	movswl	18(%rdx), %eax
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	movl	%r10d, %r9d
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movswl	20(%r13), %r10d
	movswl	22(%r13), %r13d
	movswl	20(%rdx), %r11d
	movl	%r10d, -56(%rsp)                # 4-byte Spill
	subl	%r11d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movswl	22(%rdx), %edx
	movl	%r13d, %r15d
	subl	%edx, %r15d
	movl	%r15d, %r10d
	negl	%r10d
	cmovsl	%r15d, %r10d
	cmpw	$3, %bx
	ja	.LBB1_95
# %bb.75:                               # %if.else127.1
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_95
# %bb.76:                               # %if.else127.1
	movzwl	%r9w, %eax
	cmpl	$3, %eax
	ja	.LBB1_95
# %bb.77:                               # %if.else127.1
	movzwl	%r10w, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_95
.LBB1_40:
	xorl	%ebp, %ebp
	jmp	.LBB1_18
.LBB1_79:                               # %if.else127.2
	movswl	16(%r13), %ebp
	movswl	18(%r13), %r10d
	movswl	16(%rdx), %r9d
	movl	%ebp, %eax
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	subl	%r9d, %eax
	movl	%eax, %ebx
	negl	%ebx
	cmovsl	%eax, %ebx
	movswl	18(%rdx), %eax
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	movl	%r10d, %r9d
	movl	%eax, -48(%rsp)                 # 4-byte Spill
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movswl	20(%r13), %r10d
	movswl	22(%r13), %r13d
	movswl	20(%rdx), %r11d
	movl	%r10d, -56(%rsp)                # 4-byte Spill
	subl	%r11d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movswl	22(%rdx), %edx
	movl	%r13d, %r15d
	subl	%edx, %r15d
	movl	%r15d, %r10d
	negl	%r10d
	cmovsl	%r15d, %r10d
	cmpw	$3, %bx
	ja	.LBB1_96
# %bb.80:                               # %if.else127.2
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_96
# %bb.81:                               # %if.else127.2
	movzwl	%r9w, %eax
	cmpl	$3, %eax
	ja	.LBB1_96
# %bb.82:                               # %if.else127.2
	movzwl	%r10w, %eax
	cmpl	%ecx, %eax
	jge	.LBB1_96
.LBB1_43:
	xorl	%ebp, %ebp
	jmp	.LBB1_22
.LBB1_84:                               # %if.else127.3
	movswl	16(%rdx), %r10d
	movswl	18(%rdx), %r9d
	movswl	16(%rax), %esi
	movl	%r10d, %r8d
	subl	%esi, %r8d
	movl	%r8d, %r12d
	negl	%r12d
	cmovsl	%r8d, %r12d
	movswl	18(%rax), %r8d
	movl	%r9d, %r11d
	subl	%r8d, %r11d
	movl	%r11d, %ebp
	negl	%ebp
	cmovsl	%r11d, %ebp
	movswl	20(%rdx), %r11d
	movswl	22(%rdx), %edx
	movswl	20(%rax), %ebx
	movl	%r11d, %r15d
	subl	%ebx, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	movswl	22(%rax), %eax
	movl	%edx, %r13d
	subl	%eax, %r13d
	movl	%r13d, %r15d
	negl	%r15d
	cmovsl	%r13d, %r15d
	cmpw	$3, %r12w
	ja	.LBB1_97
# %bb.85:                               # %if.else127.3
	movzwl	%bp, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB1_97
# %bb.86:                               # %if.else127.3
	movzwl	%r14w, %ebp
	cmpl	$3, %ebp
	ja	.LBB1_97
# %bb.87:                               # %if.else127.3
	movzwl	%r15w, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB1_97
.LBB1_46:
	xorl	%ebp, %ebp
	jmp	.LBB1_26
.LBB1_89:                               # %if.then105
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	16(%rdx), %r10d
	subl	%r10d, %eax
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	movswl	18(%rdx), %eax
	cmpw	$4, %r10w
	setae	%r10b
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r10b, %al
	movswl	20(%r13), %r9d
	movswl	20(%rdx), %r10d
	subl	%r10d, %r9d
	movswl	22(%rdx), %edx
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	cmpw	$4, %r10w
	setae	%r9b
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%r9b, %dl
	orb	%al, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_14
.LBB1_90:                               # %if.then105.1
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	16(%rdx), %r10d
	subl	%r10d, %eax
	movswl	18(%rdx), %r10d
	movl	%eax, %r11d
	negl	%r11d
	cmovsl	%eax, %r11d
	cmpw	$4, %r11w
	setae	%al
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%al, %r9b
	movswl	20(%r13), %eax
	movswl	20(%rdx), %r10d
	subl	%r10d, %eax
	movswl	22(%rdx), %edx
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	cmpw	$4, %r10w
	setae	%al
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	movzwl	%dx, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	orb	%r9b, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_18
.LBB1_91:                               # %if.then105.2
	movswl	16(%r13), %eax
	movswl	18(%r13), %r9d
	movswl	16(%rdx), %r10d
	subl	%r10d, %eax
	movswl	18(%rdx), %r10d
	movl	%eax, %r11d
	negl	%r11d
	cmovsl	%eax, %r11d
	cmpw	$4, %r11w
	setae	%al
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%al, %r9b
	movswl	20(%r13), %eax
	movswl	20(%rdx), %r10d
	subl	%r10d, %eax
	movswl	22(%rdx), %edx
	movl	%eax, %r10d
	negl	%r10d
	cmovsl	%eax, %r10d
	cmpw	$4, %r10w
	setae	%al
	subl	%edx, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	movzwl	%dx, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	orb	%r9b, %dl
	movzbl	%dl, %ebp
	jmp	.LBB1_22
.LBB1_92:                               # %if.then105.3
	movswl	16(%rdx), %r8d
	movswl	18(%rdx), %r9d
	movswl	16(%rax), %r10d
	subl	%r10d, %r8d
	movswl	18(%rax), %r10d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	cmpw	$4, %r11w
	setae	%r8b
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%r8b, %r9b
	movswl	20(%rdx), %edx
	movswl	20(%rax), %r8d
	subl	%r8d, %edx
	movswl	22(%rax), %eax
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	cmpw	$4, %r8w
	setae	%dl
	subl	%eax, %esi
	movl	%esi, %eax
	negl	%eax
	cmovsl	%esi, %eax
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%dl, %al
	orb	%r9b, %al
	movzbl	%al, %ebp
	jmp	.LBB1_26
.LBB1_93:                               # %land.rhs140
	subl	%r11d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovsl	%ebp, %eax
	cmpl	$4, %eax
	setae	%al
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	subl	-44(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	cmpl	$4, %eax
	setae	%r9b
	subl	-48(%rsp), %r13d                # 4-byte Folded Reload
	movl	%r13d, %eax
	negl	%eax
	cmovsl	%r13d, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r9b, %al
	orb	%dl, %al
.LBB1_94:                               # %land.end153
	movzbl	%al, %ebp
	jmp	.LBB1_14
.LBB1_95:                               # %land.rhs140.1
	subl	%r11d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovsl	%ebp, %eax
	cmpl	$4, %eax
	setae	%al
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	subl	-44(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	cmpl	$4, %eax
	setae	%al
	subl	-48(%rsp), %r13d                # 4-byte Folded Reload
	movl	%r13d, %r9d
	negl	%r9d
	cmovsl	%r13d, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%al, %r9b
	orb	%dl, %r9b
	movzbl	%r9b, %ebp
	jmp	.LBB1_18
.LBB1_96:                               # %land.rhs140.2
	subl	%r11d, %ebp
	movl	%ebp, %eax
	negl	%eax
	cmovsl	%ebp, %eax
	cmpl	$4, %eax
	setae	%al
	movl	-52(%rsp), %r9d                 # 4-byte Reload
	subl	%edx, %r9d
	movl	%r9d, %edx
	negl	%edx
	cmovsl	%r9d, %edx
	cmpl	%ecx, %edx
	setge	%dl
	orb	%al, %dl
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	subl	-44(%rsp), %r9d                 # 4-byte Folded Reload
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	cmpl	$4, %eax
	setae	%al
	subl	-48(%rsp), %r13d                # 4-byte Folded Reload
	movl	%r13d, %r9d
	negl	%r9d
	cmovsl	%r13d, %r9d
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%al, %r9b
	orb	%dl, %r9b
	movzbl	%r9b, %ebp
	jmp	.LBB1_22
.LBB1_97:                               # %land.rhs140.3
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	cmpl	$4, %ebx
	setae	%r10b
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r10b, %al
	subl	%esi, %r11d
	movl	%r11d, %esi
	negl	%esi
	cmovsl	%r11d, %esi
	cmpl	$4, %esi
	setae	%sil
	subl	%r8d, %edx
	movl	%edx, %r8d
	negl	%r8d
	cmovsl	%edx, %r8d
	cmpl	%ecx, %r8d
	setge	%cl
	orb	%sil, %cl
	orb	%al, %cl
	movzbl	%cl, %ebp
	jmp	.LBB1_26
.Lfunc_end1:
	.size	GetStrengthVer, .Lfunc_end1-GetStrengthVer
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function GetStrengthHor
	.type	GetStrengthHor,@function
GetStrengthHor:                         # @GetStrengthHor
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	movq	(%rsi), %rax
	movl	164(%rax), %eax
	addl	$-3, %eax
	cmpl	$1, %eax
	jbe	.LBB2_2
# %bb.1:                                # %if.else
	cmpl	$0, 96(%rsi)
	je	.LBB2_5
.LBB2_2:                                # %if.then
	movb	$3, %al
	testl	%edx, %edx
	jne	.LBB2_4
.LBB2_3:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$1, (%r8)
	adcb	$3, %al
.LBB2_4:                                # %land.end
	movzbl	%al, %eax
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	retq
.LBB2_5:                                # %if.then8
	leal	-1(%rdx), %r9d
	xorl	%eax, %eax
	cmpl	$16, %edx
	cmovll	%r9d, %eax
	movq	%rsi, %r9
	testl	%eax, %eax
	js	.LBB2_7
# %bb.6:                                # %get_non_aff_neighbor_luma.exit
	movq	%rsi, %r11
	testl	%edx, %edx
	cmoveq	%r9, %r11
	jne	.LBB2_9
	jmp	.LBB2_8
.LBB2_7:                                # %return.sink.split.i
	movq	136(%rsi), %r9
	movq	%rsi, %r11
	testl	%edx, %edx
	cmoveq	%r9, %r11
	jne	.LBB2_9
.LBB2_8:                                # %lor.lhs.false17
	cmpl	$0, 96(%r9)
	jne	.LBB2_3
.LBB2_9:                                # %if.then21
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
	movl	%ecx, -76(%rsp)                 # 4-byte Spill
	movq	%r9, -8(%rsp)                   # 8-byte Spill
	movq	PicPos@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movslq	24(%rsi), %rbx
	movzwl	(%r9,%rbx,4), %r10d
	movzwl	2(%r9,%rbx,4), %r9d
	shll	$2, %r10d
	shll	$2, %r9d
	leal	1(%rax), %r15d
	andl	$65532, %r15d                   # imm = 0xFFFC
	movl	%eax, %ecx
	andl	$12, %ecx
	movswl	%r9w, %ebx
	movl	%r15d, %r9d
	shrl	$2, %r9d
	addl	%ebx, %r9d
	movq	288(%rsi), %rbx
	cmpl	$63, %r15d
	jbe	.LBB2_11
# %bb.10:
	xorl	%r12d, %r12d
	jmp	.LBB2_12
.LBB2_11:                               # %cond.false.i
	movq	po2(,%r15,8), %r12
.LBB2_12:                               # %i64_power2.exit
	andl	$15, %eax
	movslq	%r9d, %r9
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	movswq	%r10w, %r9
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	movl	$2, %ebp
	testq	%rbx, %r12
	jne	.LBB2_14
# %bb.13:                               # %lor.lhs.false39
	movq	po2(,%rcx,8), %r9
	testq	%r9, 288(%r11)
	je	.LBB2_28
.LBB2_14:                               # %if.end161
	imull	$16843009, %ebp, %r9d           # imm = 0x1010101
	movl	%r9d, (%rdi)
	movq	288(%rsi), %r9
	cmpl	$63, %r15d
	jbe	.LBB2_17
# %bb.15:
	xorl	%r10d, %r10d
	movl	$2, %ebp
	testq	%r9, %r10
	je	.LBB2_18
.LBB2_16:
	movq	%r11, %r14
	jmp	.LBB2_19
.LBB2_17:                               # %cond.false.i.1
	leal	(,%r15,8), %r10d
	orl	$8, %r10d
	movq	po2(%r10), %r10
	movl	$2, %ebp
	testq	%r9, %r10
	jne	.LBB2_16
.LBB2_18:                               # %lor.lhs.false39.1
	leal	(,%rcx,8), %r9d
	orl	$8, %r9d
	movq	po2(%r9), %r9
	movq	%r11, %r14
	testq	%r9, 288(%r11)
	jne	.LBB2_19
# %bb.37:                               # %if.else47.1
	testl	%edx, %edx
	je	.LBB2_46
# %bb.38:                               # %land.lhs.true.1
	movzwl	152(%rsi), %r9d
	orl	$2, %r9d
	cmpl	$3, %r9d
	jne	.LBB2_46
.LBB2_39:
	xorl	%ebp, %ebp
	jmp	.LBB2_19
.LBB2_28:                               # %if.else47
	testl	%edx, %edx
	je	.LBB2_30
# %bb.29:                               # %land.lhs.true
	movzwl	152(%rsi), %r9d
	xorl	%ebp, %ebp
	orl	$2, %r9d
	cmpl	$3, %r9d
	je	.LBB2_14
.LBB2_30:                               # %if.else58
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	48(%r9), %r10d
	addl	%eax, %r10d
	sarl	$2, %r10d
	movswl	44(%r9), %ebx
	sarl	$2, %ebx
	movq	152(%r8), %r12
	movq	-24(%rsp), %r9                  # 8-byte Reload
	movq	(%r12,%r9,8), %rbp
	movq	-16(%rsp), %r9                  # 8-byte Reload
	shlq	$5, %r9
	movslq	%r10d, %r10
	movq	(%r12,%r10,8), %r13
	movslq	%ebx, %r12
	shlq	$5, %r12
	movq	(%rbp,%r9), %rbx
	movq	%rbp, -40(%rsp)                 # 8-byte Spill
	movq	8(%rbp,%r9), %r10
	movq	(%r13,%r12), %rbp
	movq	%r13, -64(%rsp)                 # 8-byte Spill
	movq	8(%r13,%r12), %r13
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	cmpq	%rbp, %rbx
	jne	.LBB2_32
# %bb.31:                               # %if.else58
	cmpq	%r13, %r10
	je	.LBB2_34
.LBB2_32:                               # %lor.lhs.false96
	movl	$1, %ebp
	cmpq	%r13, %rbx
	jne	.LBB2_14
# %bb.33:                               # %lor.lhs.false96
	cmpq	-72(%rsp), %r10                 # 8-byte Folded Reload
	jne	.LBB2_14
.LBB2_34:                               # %if.then102
	movq	-40(%rsp), %r13                 # 8-byte Reload
	addq	%r9, %r13
	movq	%r13, %r9
	movq	-64(%rsp), %r13                 # 8-byte Reload
	addq	%r12, %r13
	cmpq	%r10, %rbx
	je	.LBB2_67
# %bb.35:                               # %if.then105
	movswl	22(%r9), %ebp
	cmpq	-72(%rsp), %rbx                 # 8-byte Folded Reload
	je	.LBB2_87
# %bb.36:                               # %if.else118
	movl	%ebp, -72(%rsp)                 # 4-byte Spill
	movq	%r9, %rbp
	movswl	16(%r9), %r9d
	movswl	18(%rbp), %r10d
	movswl	20(%r13), %ebx
	subl	%ebx, %r9d
	movswl	22(%r13), %ebx
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzwl	%bx, %r10d
	movl	-76(%rsp), %r14d                # 4-byte Reload
	cmpl	%r14d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movswl	20(%rbp), %r9d
	movswl	16(%r13), %ebx
	subl	%ebx, %r9d
	movswl	18(%r13), %ebx
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	movl	-72(%rsp), %ebp                 # 4-byte Reload
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	movzwl	%bx, %ebx
	cmpl	%r14d, %ebx
	setge	%bl
	orb	%r9b, %bl
	orb	%r10b, %bl
	movzbl	%bl, %ebp
	jmp	.LBB2_14
.LBB2_46:                               # %if.else58.1
	movq	-16(%rsp), %r13                 # 8-byte Reload
	shlq	$5, %r13
	movq	-8(%rsp), %r10                  # 8-byte Reload
	movl	48(%r10), %r9d
	addl	%eax, %r9d
	sarl	$2, %r9d
	movl	44(%r10), %ebx
	shll	$16, %ebx
	addl	$262144, %ebx                   # imm = 0x40000
	sarl	$18, %ebx
	movq	152(%r8), %r12
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movq	(%r12,%r10,8), %r10
	movslq	%r9d, %r9
	movq	(%r12,%r9,8), %r9
	movslq	%ebx, %r12
	shlq	$5, %r12
	movq	32(%r10,%r13), %rbx
	movq	40(%r10,%r13), %r11
	movq	(%r9,%r12), %rbp
	movq	%r9, -72(%rsp)                  # 8-byte Spill
	movq	8(%r9,%r12), %r9
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	cmpq	%rbp, %rbx
	jne	.LBB2_48
# %bb.47:                               # %if.else58.1
	cmpq	%r9, %r11
	je	.LBB2_50
.LBB2_48:                               # %lor.lhs.false96.1
	movl	$1, %ebp
	cmpq	%r9, %rbx
	jne	.LBB2_19
# %bb.49:                               # %lor.lhs.false96.1
	cmpq	-64(%rsp), %r11                 # 8-byte Folded Reload
	jne	.LBB2_19
.LBB2_50:                               # %if.then102.1
	addq	%r10, %r13
	addq	$32, %r13
	movq	-72(%rsp), %r9                  # 8-byte Reload
	addq	%r12, %r9
	movq	%r9, %r12
	cmpq	%r11, %rbx
	je	.LBB2_72
# %bb.51:                               # %if.then105.1
	movswl	22(%r13), %ebp
	cmpq	-64(%rsp), %rbx                 # 8-byte Folded Reload
	je	.LBB2_88
# %bb.52:                               # %if.else118.1
	movswl	16(%r13), %r9d
	movswl	18(%r13), %r10d
	movswl	20(%r12), %ebx
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	movswl	22(%r12), %r9d
	cmpw	$4, %bx
	setae	%bl
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movzwl	%r9w, %r9d
	movl	-76(%rsp), %r11d                # 4-byte Reload
	cmpl	%r11d, %r9d
	setge	%r9b
	orb	%bl, %r9b
	movswl	20(%r13), %r10d
	movswl	16(%r12), %ebx
	subl	%ebx, %r10d
	movswl	18(%r12), %ebx
	movl	%r10d, %r12d
	negl	%r12d
	cmovsl	%r10d, %r12d
	cmpw	$4, %r12w
	setae	%r10b
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	cmpl	%r11d, %ebx
	setge	%bl
	orb	%r10b, %bl
	orb	%r9b, %bl
	jmp	.LBB2_95
.LBB2_67:                               # %if.else130
	movswl	16(%r9), %r12d
	movswl	18(%r9), %ebp
	movswl	16(%r13), %r10d
	movq	%r9, %rbx
	movl	%r12d, -44(%rsp)                # 4-byte Spill
	movl	%r12d, %r9d
	movl	%r10d, -72(%rsp)                # 4-byte Spill
	subl	%r10d, %r9d
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	movswl	18(%r13), %r9d
	movl	%ebp, -40(%rsp)                 # 4-byte Spill
	movl	%r9d, -64(%rsp)                 # 4-byte Spill
	subl	%r9d, %ebp
	movl	%ebp, %r9d
	negl	%r9d
	cmovsl	%ebp, %r9d
	movswl	20(%rbx), %r10d
	movswl	22(%rbx), %r14d
	movswl	20(%r13), %ebp
	movl	%r10d, -48(%rsp)                # 4-byte Spill
	movl	%r10d, %ebx
	movl	%ebp, -52(%rsp)                 # 4-byte Spill
	subl	%ebp, %ebx
	movl	%r14d, %ebp
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	movswl	22(%r13), %r13d
	movl	%r14d, %ebx
	movl	%r13d, -56(%rsp)                # 4-byte Spill
	subl	%r13d, %ebx
	movl	%ebx, %r13d
	negl	%r13d
	cmovsl	%ebx, %r13d
	cmpw	$3, %r12w
	movl	-76(%rsp), %r14d                # 4-byte Reload
	ja	.LBB2_91
# %bb.68:                               # %if.else130
	movzwl	%r9w, %r9d
	cmpl	%r14d, %r9d
	jge	.LBB2_91
# %bb.69:                               # %if.else130
	movzwl	%r10w, %r9d
	cmpl	$3, %r9d
	ja	.LBB2_91
# %bb.70:                               # %if.else130
	movzwl	%r13w, %r9d
	cmpl	%r14d, %r9d
	jge	.LBB2_91
# %bb.71:
	xorl	%r9d, %r9d
	jmp	.LBB2_92
.LBB2_72:                               # %if.else130.1
	movswl	16(%r13), %r9d
	movswl	18(%r13), %ebx
	movswl	16(%r12), %r10d
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	movl	%r10d, -72(%rsp)                # 4-byte Spill
	subl	%r10d, %r9d
	movq	%r12, %rbp
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	movswl	18(%rbp), %r9d
	movl	%ebx, -40(%rsp)                 # 4-byte Spill
	movl	%ebx, %r10d
	movl	%r9d, -64(%rsp)                 # 4-byte Spill
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movswl	20(%r13), %ebx
	movswl	22(%r13), %r13d
	movswl	20(%rbp), %r10d
	movl	%ebx, -48(%rsp)                 # 4-byte Spill
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	subl	%r10d, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	movswl	22(%rbp), %ebp
	movl	%r13d, %ebx
	movl	%r13d, -28(%rsp)                # 4-byte Spill
	movl	%ebp, -56(%rsp)                 # 4-byte Spill
	subl	%ebp, %ebx
	movl	%ebx, %r13d
	negl	%r13d
	cmovsl	%ebx, %r13d
	cmpw	$3, %r12w
	movl	-76(%rsp), %r11d                # 4-byte Reload
	ja	.LBB2_93
# %bb.73:                               # %if.else130.1
	movzwl	%r9w, %r9d
	cmpl	%r11d, %r9d
	jge	.LBB2_93
# %bb.74:                               # %if.else130.1
	movzwl	%r10w, %r9d
	cmpl	$3, %r9d
	ja	.LBB2_93
# %bb.75:                               # %if.else130.1
	movzwl	%r13w, %r9d
	cmpl	%r11d, %r9d
	jl	.LBB2_39
.LBB2_93:                               # %land.rhs143.1
	movl	-44(%rsp), %r10d                # 4-byte Reload
	subl	-52(%rsp), %r10d                # 4-byte Folded Reload
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	cmpl	$4, %r9d
	setae	%r9b
	movl	-40(%rsp), %ebx                 # 4-byte Reload
	subl	-56(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	cmpl	%r11d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movl	-48(%rsp), %ebx                 # 4-byte Reload
	subl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r9d
	negl	%r9d
	cmovsl	%ebx, %r9d
	cmpl	$4, %r9d
	setae	%r9b
	movl	-28(%rsp), %ebp                 # 4-byte Reload
	subl	-64(%rsp), %ebp                 # 4-byte Folded Reload
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	jmp	.LBB2_94
.LBB2_87:                               # %if.then108
	movq	%r9, %r12
	movswl	16(%r9), %r9d
	movswl	18(%r12), %r10d
	movswl	16(%r13), %ebx
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	movswl	18(%r13), %r9d
	cmpw	$4, %bx
	setae	%bl
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movzwl	%r9w, %r9d
	movl	-76(%rsp), %r14d                # 4-byte Reload
	cmpl	%r14d, %r9d
	setge	%r9b
	orb	%bl, %r9b
	movswl	20(%r12), %r10d
	movswl	20(%r13), %ebx
	subl	%ebx, %r10d
	movswl	22(%r13), %ebx
	movl	%r10d, %r12d
	negl	%r12d
	cmovsl	%r10d, %r12d
	cmpw	$4, %r12w
	setae	%r10b
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	cmpl	%r14d, %ebx
	setge	%bl
	orb	%r10b, %bl
	orb	%r9b, %bl
	movzbl	%bl, %ebp
	jmp	.LBB2_14
.LBB2_88:                               # %if.then108.1
	movswl	16(%r13), %r9d
	movswl	18(%r13), %r10d
	movswl	16(%r12), %ebx
	subl	%ebx, %r9d
	movswl	18(%r12), %ebx
	movq	%r12, -72(%rsp)                 # 8-byte Spill
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzwl	%bx, %r10d
	movl	-76(%rsp), %r11d                # 4-byte Reload
	cmpl	%r11d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movswl	20(%r13), %r9d
	movq	-72(%rsp), %r12                 # 8-byte Reload
	movswl	20(%r12), %ebx
	subl	%ebx, %r9d
	movswl	22(%r12), %ebx
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	movzwl	%bx, %ebx
.LBB2_94:                               # %if.end161.1
	cmpl	%r11d, %ebx
	setge	%bl
	orb	%r9b, %bl
	orb	%r10b, %bl
.LBB2_95:                               # %if.end161.1
	movzbl	%bl, %ebp
.LBB2_19:                               # %if.end161.1
	imull	$16843009, %ebp, %r9d           # imm = 0x1010101
	movl	%r9d, 4(%rdi)
	movq	288(%rsi), %r9
	cmpl	$63, %r15d
	jbe	.LBB2_21
# %bb.20:
	xorl	%r10d, %r10d
	movl	$2, %ebp
	testq	%r9, %r10
	movq	%r14, %r11
	jne	.LBB2_23
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.i.2
	leal	(,%r15,8), %r10d
	orl	$16, %r10d
	movq	po2(%r10), %r10
	movl	$2, %ebp
	testq	%r9, %r10
	movq	%r14, %r11
	jne	.LBB2_23
.LBB2_22:                               # %lor.lhs.false39.2
	leal	(,%rcx,8), %r9d
	orl	$16, %r9d
	movq	po2(%r9), %r9
	testq	%r9, 288(%r11)
	jne	.LBB2_23
# %bb.40:                               # %if.else47.2
	testl	%edx, %edx
	je	.LBB2_53
# %bb.41:                               # %land.lhs.true.2
	movzwl	152(%rsi), %r9d
	orl	$2, %r9d
	cmpl	$3, %r9d
	jne	.LBB2_53
.LBB2_42:
	xorl	%ebp, %ebp
	jmp	.LBB2_23
.LBB2_53:                               # %if.else58.2
	movq	-16(%rsp), %r13                 # 8-byte Reload
	shlq	$5, %r13
	movq	-8(%rsp), %r10                  # 8-byte Reload
	movl	48(%r10), %r9d
	addl	%eax, %r9d
	sarl	$2, %r9d
	movl	44(%r10), %ebx
	shll	$16, %ebx
	addl	$524288, %ebx                   # imm = 0x80000
	sarl	$18, %ebx
	movq	152(%r8), %r12
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movq	(%r12,%r10,8), %r10
	movslq	%r9d, %r9
	movq	(%r12,%r9,8), %r9
	movslq	%ebx, %r12
	shlq	$5, %r12
	movq	64(%r10,%r13), %rbx
	movq	72(%r10,%r13), %r14
	movq	(%r9,%r12), %rbp
	movq	%r9, -72(%rsp)                  # 8-byte Spill
	movq	8(%r9,%r12), %r9
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	cmpq	%rbp, %rbx
	jne	.LBB2_55
# %bb.54:                               # %if.else58.2
	cmpq	%r9, %r14
	je	.LBB2_57
.LBB2_55:                               # %lor.lhs.false96.2
	movl	$1, %ebp
	cmpq	%r9, %rbx
	jne	.LBB2_23
# %bb.56:                               # %lor.lhs.false96.2
	cmpq	-64(%rsp), %r14                 # 8-byte Folded Reload
	jne	.LBB2_23
.LBB2_57:                               # %if.then102.2
	addq	%r10, %r13
	addq	$64, %r13
	movq	-72(%rsp), %r9                  # 8-byte Reload
	addq	%r12, %r9
	movq	%r9, %r12
	cmpq	%r14, %rbx
	je	.LBB2_77
# %bb.58:                               # %if.then105.2
	movswl	22(%r13), %ebp
	cmpq	-64(%rsp), %rbx                 # 8-byte Folded Reload
	je	.LBB2_89
# %bb.59:                               # %if.else118.2
	movswl	16(%r13), %r9d
	movswl	18(%r13), %r10d
	movswl	20(%r12), %ebx
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	movswl	22(%r12), %r9d
	cmpw	$4, %bx
	setae	%bl
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movzwl	%r9w, %r9d
	movl	-76(%rsp), %r14d                # 4-byte Reload
	cmpl	%r14d, %r9d
	setge	%r9b
	orb	%bl, %r9b
	movswl	20(%r13), %r10d
	movswl	16(%r12), %ebx
	subl	%ebx, %r10d
	movswl	18(%r12), %ebx
	movl	%r10d, %r12d
	negl	%r12d
	cmovsl	%r10d, %r12d
	cmpw	$4, %r12w
	setae	%r10b
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	cmpl	%r14d, %ebx
	setge	%bl
	orb	%r10b, %bl
	orb	%r9b, %bl
	jmp	.LBB2_98
.LBB2_77:                               # %if.else130.2
	movswl	16(%r13), %r9d
	movswl	18(%r13), %ebx
	movswl	16(%r12), %r10d
	movl	%r9d, -44(%rsp)                 # 4-byte Spill
	movl	%r10d, -72(%rsp)                # 4-byte Spill
	subl	%r10d, %r9d
	movq	%r12, %rbp
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	movswl	18(%rbp), %r9d
	movl	%ebx, -40(%rsp)                 # 4-byte Spill
	movl	%ebx, %r10d
	movl	%r9d, -64(%rsp)                 # 4-byte Spill
	subl	%r9d, %r10d
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	movswl	20(%r13), %ebx
	movswl	22(%r13), %r13d
	movswl	20(%rbp), %r10d
	movl	%ebx, -48(%rsp)                 # 4-byte Spill
	movl	%r10d, -52(%rsp)                # 4-byte Spill
	subl	%r10d, %ebx
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	movswl	22(%rbp), %ebp
	movl	%r13d, %ebx
	movl	%r13d, -28(%rsp)                # 4-byte Spill
	movl	%ebp, -56(%rsp)                 # 4-byte Spill
	subl	%ebp, %ebx
	movl	%ebx, %r13d
	negl	%r13d
	cmovsl	%ebx, %r13d
	cmpw	$3, %r12w
	movl	-76(%rsp), %r14d                # 4-byte Reload
	ja	.LBB2_96
# %bb.78:                               # %if.else130.2
	movzwl	%r9w, %r9d
	cmpl	%r14d, %r9d
	jge	.LBB2_96
# %bb.79:                               # %if.else130.2
	movzwl	%r10w, %r9d
	cmpl	$3, %r9d
	ja	.LBB2_96
# %bb.80:                               # %if.else130.2
	movzwl	%r13w, %r9d
	cmpl	%r14d, %r9d
	jl	.LBB2_42
.LBB2_96:                               # %land.rhs143.2
	movl	-44(%rsp), %r10d                # 4-byte Reload
	subl	-52(%rsp), %r10d                # 4-byte Folded Reload
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	cmpl	$4, %r9d
	setae	%r9b
	movl	-40(%rsp), %ebx                 # 4-byte Reload
	subl	-56(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	cmpl	%r14d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movl	-48(%rsp), %ebx                 # 4-byte Reload
	subl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r9d
	negl	%r9d
	cmovsl	%ebx, %r9d
	cmpl	$4, %r9d
	setae	%r9b
	movl	-28(%rsp), %ebp                 # 4-byte Reload
	subl	-64(%rsp), %ebp                 # 4-byte Folded Reload
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	jmp	.LBB2_97
.LBB2_89:                               # %if.then108.2
	movswl	16(%r13), %r9d
	movswl	18(%r13), %r10d
	movswl	16(%r12), %ebx
	subl	%ebx, %r9d
	movswl	18(%r12), %ebx
	movq	%r12, -72(%rsp)                 # 8-byte Spill
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	movzwl	%bx, %r10d
	movl	-76(%rsp), %r14d                # 4-byte Reload
	cmpl	%r14d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movswl	20(%r13), %r9d
	movq	-72(%rsp), %r12                 # 8-byte Reload
	movswl	20(%r12), %ebx
	subl	%ebx, %r9d
	movswl	22(%r12), %ebx
	movl	%r9d, %r12d
	negl	%r12d
	cmovsl	%r9d, %r12d
	cmpw	$4, %r12w
	setae	%r9b
	subl	%ebx, %ebp
	movl	%ebp, %ebx
	negl	%ebx
	cmovsl	%ebp, %ebx
	movzwl	%bx, %ebx
.LBB2_97:                               # %if.end161.2
	cmpl	%r14d, %ebx
	setge	%bl
	orb	%r9b, %bl
	orb	%r10b, %bl
.LBB2_98:                               # %if.end161.2
	movzbl	%bl, %ebp
.LBB2_23:                               # %if.end161.2
	imull	$16843009, %ebp, %r9d           # imm = 0x1010101
	movl	%r9d, 8(%rdi)
	movq	288(%rsi), %r9
	cmpl	$63, %r15d
	jbe	.LBB2_25
# %bb.24:
	xorl	%r10d, %r10d
	movl	$2, %ebp
	testq	%r9, %r10
	jne	.LBB2_27
	jmp	.LBB2_26
.LBB2_25:                               # %cond.false.i.3
	leal	(,%r15,8), %r10d
	orl	$24, %r10d
	movq	po2(%r10), %r10
	movl	$2, %ebp
	testq	%r9, %r10
	jne	.LBB2_27
.LBB2_26:                               # %lor.lhs.false39.3
	shll	$3, %ecx
	orl	$24, %ecx
	movq	po2(%rcx), %r9
	testq	%r9, 288(%r11)
	jne	.LBB2_27
# %bb.43:                               # %if.else47.3
	testl	%edx, %edx
	je	.LBB2_60
# %bb.44:                               # %land.lhs.true.3
	movzwl	152(%rsi), %edx
	orl	$2, %edx
	cmpl	$3, %edx
	jne	.LBB2_60
.LBB2_45:
	xorl	%ebp, %ebp
	jmp	.LBB2_27
.LBB2_60:                               # %if.else58.3
	movq	-16(%rsp), %r9                  # 8-byte Reload
	shlq	$5, %r9
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addl	48(%rdx), %eax
	sarl	$2, %eax
	movl	44(%rdx), %esi
	shll	$16, %esi
	addl	$786432, %esi                   # imm = 0xC0000
	sarl	$18, %esi
	movq	152(%r8), %r8
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	(%r8,%rdx,8), %rdx
	cltq
	movq	(%r8,%rax,8), %rax
	movslq	%esi, %r10
	shlq	$5, %r10
	movq	96(%rdx,%r9), %r8
	movq	%r9, %rbx
	movq	104(%rdx,%r9), %r11
	movq	(%rax,%r10), %r9
	movq	8(%rax,%r10), %rsi
	cmpq	%r9, %r8
	jne	.LBB2_62
# %bb.61:                               # %if.else58.3
	cmpq	%rsi, %r11
	je	.LBB2_64
.LBB2_62:                               # %lor.lhs.false96.3
	movl	$1, %ebp
	cmpq	%rsi, %r8
	jne	.LBB2_27
# %bb.63:                               # %lor.lhs.false96.3
	cmpq	%r9, %r11
	jne	.LBB2_27
.LBB2_64:                               # %if.then102.3
	leaq	(%rdx,%rbx), %rsi
	addq	$96, %rsi
	addq	%r10, %rax
	cmpq	%r11, %r8
	je	.LBB2_82
# %bb.65:                               # %if.then105.3
	movswl	22(%rsi), %edx
	cmpq	%r9, %r8
	je	.LBB2_90
# %bb.66:                               # %if.else118.3
	movswl	16(%rsi), %r8d
	movswl	18(%rsi), %r9d
	movswl	20(%rax), %r10d
	subl	%r10d, %r8d
	movl	%r8d, %r10d
	negl	%r10d
	cmovsl	%r8d, %r10d
	movswl	22(%rax), %r8d
	cmpw	$4, %r10w
	setae	%r10b
	subl	%r8d, %r9d
	movl	%r9d, %r8d
	negl	%r8d
	cmovsl	%r9d, %r8d
	movzwl	%r8w, %r8d
	movl	-76(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %r8d
	setge	%r8b
	orb	%r10b, %r8b
	movswl	20(%rsi), %esi
	movswl	16(%rax), %r9d
	subl	%r9d, %esi
	movswl	18(%rax), %eax
	movl	%esi, %r9d
	negl	%r9d
	cmovsl	%esi, %r9d
	cmpw	$4, %r9w
	setae	%sil
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%sil, %al
	orb	%r8b, %al
	movzbl	%al, %ebp
	jmp	.LBB2_27
.LBB2_82:                               # %if.else130.3
	movswl	16(%rsi), %r10d
	movswl	18(%rsi), %r9d
	movswl	16(%rax), %edx
	movl	%r10d, %r8d
	subl	%edx, %r8d
	movl	%r8d, %r12d
	negl	%r12d
	cmovsl	%r8d, %r12d
	movswl	18(%rax), %r8d
	movl	%r9d, %r11d
	subl	%r8d, %r11d
	movl	%r11d, %ebp
	negl	%ebp
	cmovsl	%r11d, %ebp
	movswl	20(%rsi), %r11d
	movswl	22(%rsi), %esi
	movswl	20(%rax), %ebx
	movl	%r11d, %r15d
	subl	%ebx, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	movswl	22(%rax), %eax
	movl	%esi, %r13d
	subl	%eax, %r13d
	movl	%r13d, %r15d
	negl	%r15d
	cmovsl	%r13d, %r15d
	cmpw	$3, %r12w
	movl	-76(%rsp), %ecx                 # 4-byte Reload
	ja	.LBB2_99
# %bb.83:                               # %if.else130.3
	movzwl	%bp, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB2_99
# %bb.84:                               # %if.else130.3
	movzwl	%r14w, %ebp
	cmpl	$3, %ebp
	ja	.LBB2_99
# %bb.85:                               # %if.else130.3
	movzwl	%r15w, %ebp
	cmpl	%ecx, %ebp
	jl	.LBB2_45
.LBB2_99:                               # %land.rhs143.3
	subl	%ebx, %r10d
	movl	%r10d, %ebx
	negl	%ebx
	cmovsl	%r10d, %ebx
	cmpl	$4, %ebx
	setae	%r10b
	subl	%eax, %r9d
	movl	%r9d, %eax
	negl	%eax
	cmovsl	%r9d, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%r10b, %al
	subl	%edx, %r11d
	movl	%r11d, %edx
	negl	%edx
	cmovsl	%r11d, %edx
	cmpl	$4, %edx
	setae	%dl
	subl	%r8d, %esi
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	cmpl	%ecx, %r8d
	setge	%cl
	orb	%dl, %cl
	orb	%al, %cl
	movzbl	%cl, %ebp
	jmp	.LBB2_27
.LBB2_90:                               # %if.then108.3
	movswl	16(%rsi), %r8d
	movswl	18(%rsi), %r9d
	movswl	16(%rax), %r10d
	subl	%r10d, %r8d
	movswl	18(%rax), %r10d
	movl	%r8d, %r11d
	negl	%r11d
	cmovsl	%r8d, %r11d
	cmpw	$4, %r11w
	setae	%r8b
	subl	%r10d, %r9d
	movl	%r9d, %r10d
	negl	%r10d
	cmovsl	%r9d, %r10d
	movzwl	%r10w, %r9d
	movl	-76(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %r9d
	setge	%r9b
	orb	%r8b, %r9b
	movswl	20(%rsi), %esi
	movswl	20(%rax), %r8d
	subl	%r8d, %esi
	movswl	22(%rax), %eax
	movl	%esi, %r8d
	negl	%r8d
	cmovsl	%esi, %r8d
	cmpw	$4, %r8w
	setae	%sil
	subl	%eax, %edx
	movl	%edx, %eax
	negl	%eax
	cmovsl	%edx, %eax
	movzwl	%ax, %eax
	cmpl	%ecx, %eax
	setge	%al
	orb	%sil, %al
	orb	%r9b, %al
	movzbl	%al, %ebp
.LBB2_27:                               # %if.end161.3
	imull	$16843009, %ebp, %eax           # imm = 0x1010101
	movl	%eax, 12(%rdi)
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
.LBB2_91:                               # %land.rhs143
	.cfi_def_cfa_offset 56
	movl	-44(%rsp), %r10d                # 4-byte Reload
	subl	-52(%rsp), %r10d                # 4-byte Folded Reload
	movl	%r10d, %r9d
	negl	%r9d
	cmovsl	%r10d, %r9d
	cmpl	$4, %r9d
	setae	%r9b
	movl	-40(%rsp), %ebx                 # 4-byte Reload
	subl	-56(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r10d
	negl	%r10d
	cmovsl	%ebx, %r10d
	cmpl	%r14d, %r10d
	setge	%r10b
	orb	%r9b, %r10b
	movl	-48(%rsp), %ebx                 # 4-byte Reload
	subl	-72(%rsp), %ebx                 # 4-byte Folded Reload
	movl	%ebx, %r9d
	negl	%r9d
	cmovsl	%ebx, %r9d
	cmpl	$4, %r9d
	setae	%bl
	subl	-64(%rsp), %ebp                 # 4-byte Folded Reload
	movl	%ebp, %r9d
	negl	%r9d
	cmovsl	%ebp, %r9d
	cmpl	%r14d, %r9d
	setge	%r9b
	orb	%bl, %r9b
	orb	%r10b, %r9b
.LBB2_92:                               # %land.end156
	movzbl	%r9b, %ebp
	jmp	.LBB2_14
.Lfunc_end2:
	.size	GetStrengthHor, .Lfunc_end2-GetStrengthHor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopLumaVer
	.type	EdgeLoopLumaVer,@function
EdgeLoopLumaVer:                        # @EdgeLoopLumaVer
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
	movq	8(%rcx), %rax
	movq	%rcx, %r14
	testl	%r8d, %r8d
	jg	.LBB3_4
# %bb.1:                                # %get_non_aff_neighbor_luma.exit
	movq	144(%rcx), %r14
	testq	%r14, %r14
	je	.LBB3_2
.LBB3_4:                                # %if.then
	leaq	68(%r14), %r9
	leaq	68(%rcx), %r10
	xorl	%r11d, %r11d
	movl	%edi, %ebx
	subl	$1, %ebx
	setae	%r11b
	movl	849044(%rax,%r11,4), %ebp
	leaq	72(%r14,%rbx,4), %r11
	leaq	72(%rcx,%rbx,4), %rbx
	cmovbq	%r10, %rbx
	cmovbq	%r9, %r11
	movl	(%r11), %r9d
	movl	(%rbx), %r10d
	addl	%r9d, %r10d
	incl	%r10d
	sarl	%r10d
	movswl	378(%rcx), %r9d
	addl	%r10d, %r9d
	xorl	%r15d, %r15d
	testl	%r9d, %r9d
	cmovlel	%r15d, %r9d
	cmpl	$51, %r9d
	movl	$51, %r11d
	cmovgel	%r11d, %r9d
	movswl	380(%rcx), %ebx
	addl	%r10d, %ebx
	testl	%ebx, %ebx
	cmovlel	%r15d, %ebx
	cmpl	$51, %ebx
	cmovgel	%r11d, %ebx
	movzbl	ALPHA_TABLE(%r9), %r10d
	imull	%ebp, %r10d
	movzbl	BETA_TABLE(%rbx), %r11d
	movl	%ebp, -32(%rsp)                 # 4-byte Spill
	imull	%ebp, %r11d
	movl	%r11d, -36(%rsp)                # 4-byte Spill
	orl	%r10d, %r11d
	je	.LBB3_74
# %bb.5:                                # %if.then38
	movq	%rdx, %rcx
	addl	$15, %r8d
	leaq	(%r9,%r9,4), %rdx
	addq	$CLIP_TAB, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	%edi, %edi
	movl	849072(%rax,%rdi,4), %eax
	movl	%eax, -68(%rsp)                 # 4-byte Spill
	movslq	44(%r14), %rax
	andl	$15, %r8d
	addq	%rax, %r8
	movslq	48(%r14), %rax
	leaq	(%rsi,%rax,8), %r13
	movl	%r10d, %eax
	shrl	$2, %eax
	addl	$2, %eax
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	xorl	%edx, %edx
	movl	%r10d, -28(%rsp)                # 4-byte Spill
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_75:                               # %if.else423
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	$32, %r13
.LBB3_73:                               # %if.end426
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	$4, %rcx
	leal	4(%rdx), %eax
	cmpl	$12, %edx
	movl	%eax, %edx
	jae	.LBB3_74
.LBB3_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
                                        #     Child Loop BB3_9 Depth 2
	movzbl	(%rcx), %eax
	testl	%eax, %eax
	je	.LBB3_75
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	cmpl	$4, %eax
	movl	-36(%rsp), %esi                 # 4-byte Reload
	movq	%r13, -16(%rsp)                 # 8-byte Spill
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	jne	.LBB3_23
# %bb.8:                                # %for.body57.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB3_9
.LBB3_18:                               # %if.else195
                                        #   in Loop: Header=BB3_9 Depth=2
	addl	%ebx, %edx
	leal	(%rdx,%rdi,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%rax)
.LBB3_19:                               # %if.end216.sink.split
                                        #   in Loop: Header=BB3_9 Depth=2
	leal	(%r11,%rbx,2), %eax
	addl	%edi, %eax
	addl	$2, %eax
	shrl	$2, %eax
.LBB3_20:                               # %if.end216.sink.split
                                        #   in Loop: Header=BB3_9 Depth=2
	movw	%ax, (%rcx)
	.p2align	4, 0x90
.LBB3_21:                               # %if.end216
                                        #   in Loop: Header=BB3_9 Depth=2
	addq	$8, %r15
	cmpl	$32, %r15d
	je	.LBB3_22
.LBB3_9:                                # %for.body57
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%r15), %r9
	movzwl	(%r9,%r8,2), %edx
	movzwl	2(%r9,%r8,2), %r11d
	movl	%r11d, %eax
	subl	%edx, %eax
	movl	%eax, %edi
	negl	%edi
	cmovsl	%eax, %edi
	movzwl	%di, %ebp
	cmpl	%r10d, %ebp
	jge	.LBB3_21
# %bb.10:                               # %if.then65
                                        #   in Loop: Header=BB3_9 Depth=2
	leaq	(%r9,%r8,2), %rax
	movzwl	4(%rax), %ebx
	movl	%r11d, %edi
	subl	%ebx, %edi
	movl	%edi, %r14d
	negl	%r14d
	cmovsl	%edi, %r14d
	cmpl	%esi, %r14d
	jge	.LBB3_21
# %bb.11:                               # %land.lhs.true
                                        #   in Loop: Header=BB3_9 Depth=2
	movzwl	-2(%rax), %edi
	movl	%edx, %r14d
	subl	%edi, %r14d
	movl	%r14d, %r12d
	negl	%r12d
	cmovsl	%r14d, %r12d
	cmpl	%esi, %r12d
	jae	.LBB3_21
# %bb.12:                               # %if.then80
                                        #   in Loop: Header=BB3_9 Depth=2
	leaq	(%r9,%r8,2), %rcx
	addq	$2, %rcx
	cmpl	-20(%rsp), %ebp                 # 4-byte Folded Reload
	jae	.LBB3_18
# %bb.13:                               # %if.then89
                                        #   in Loop: Header=BB3_9 Depth=2
	movzwl	-4(%rax), %r12d
	leal	(%r11,%rdx), %r14d
	movl	%edx, %ebp
	subl	%r12d, %ebp
	movl	%ebp, %r13d
	negl	%r13d
	cmovsl	%ebp, %r13d
	cmpl	%esi, %r13d
	jae	.LBB3_15
# %bb.14:                               # %if.then101
                                        #   in Loop: Header=BB3_9 Depth=2
	movzwl	-6(%rax), %edx
	leal	(%r14,%rdi), %r13d
	leal	(%rbx,%r13,2), %ebp
	addl	%r12d, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	leal	(%r12,%r13), %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	movw	%r9w, -2(%rax)
	addl	%r12d, %edx
	addl	%r12d, %r13d
	leal	4(%r13,%rdx,2), %edx
	shrl	$3, %edx
	movw	%dx, -4(%rax)
	jmp	.LBB3_16
.LBB3_15:                               # %if.else
                                        #   in Loop: Header=BB3_9 Depth=2
	addl	%ebx, %edx
	leal	(%rdx,%rdi,2), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
.LBB3_16:                               # %if.end
                                        #   in Loop: Header=BB3_9 Depth=2
	movzwl	6(%rax), %edx
	movw	%bp, (%rax)
	movl	%r11d, %r9d
	subl	%edx, %r9d
	movl	%r9d, %ebp
	negl	%ebp
	cmovsl	%r9d, %ebp
	cmpl	%esi, %ebp
	movq	-16(%rsp), %r13                 # 8-byte Reload
	jae	.LBB3_19
# %bb.17:                               # %if.then148
                                        #   in Loop: Header=BB3_9 Depth=2
	leaq	6(%rax), %rcx
	movzwl	8(%rax), %r9d
	addl	%ebx, %r14d
	leal	(%rdi,%r14,2), %edi
	addl	%edx, %edi
	addl	$4, %edi
	shrl	$3, %edi
	movw	%di, 2(%rax)
	leal	(%rdx,%r14), %edi
	addl	$2, %edi
	shrl	$2, %edi
	movw	%di, 4(%rax)
	addl	%edx, %r9d
	addl	%edx, %r14d
	leal	(%r14,%r9,2), %eax
	addl	$4, %eax
	shrl	$3, %eax
	jmp	.LBB3_20
	.p2align	4, 0x90
.LBB3_22:                               # %if.end426.loopexit1
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	%r15, %r13
	jmp	.LBB3_72
	.p2align	4, 0x90
.LBB3_23:                               # %if.then221
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	imull	-32(%rsp), %eax                 # 4-byte Folded Reload
	testl	%eax, %eax
	je	.LBB3_24
# %bb.44:                               # %for.cond307.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	%eax, -60(%rsp)                 # 4-byte Spill
	negl	%eax
	movl	%eax, -64(%rsp)                 # 4-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB3_45
.LBB3_69:                               # %if.then404
                                        #   in Loop: Header=BB3_45 Depth=2
	addl	%ebp, %r9d
	movw	%r9w, 4(%r13,%r8,2)
	.p2align	4, 0x90
.LBB3_70:                               # %for.inc419
                                        #   in Loop: Header=BB3_45 Depth=2
	addq	$8, %r12
	cmpl	$32, %r12d
	movq	-16(%rsp), %r13                 # 8-byte Reload
	je	.LBB3_71
.LBB3_45:                               # %for.body310
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13,%r12), %r13
	movzwl	2(%r13,%r8,2), %r11d
	movzwl	(%r13,%r8,2), %eax
	movl	%r11d, %ebp
	subl	%eax, %ebp
	movl	%ebp, %edx
	negl	%edx
	cmovsl	%ebp, %edx
	movzwl	%dx, %edx
	cmpl	%r10d, %edx
	jge	.LBB3_70
# %bb.46:                               # %if.then321
                                        #   in Loop: Header=BB3_45 Depth=2
	movzwl	4(%r13,%r8,2), %r9d
	movl	%r11d, %edx
	subl	%r9d, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	cmpl	%esi, %edi
	jge	.LBB3_70
# %bb.47:                               # %land.lhs.true332
                                        #   in Loop: Header=BB3_45 Depth=2
	movzwl	-2(%r13,%r8,2), %r14d
	movl	%eax, %edx
	subl	%r14d, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	cmpl	%esi, %edi
	jae	.LBB3_70
# %bb.48:                               # %if.then339
                                        #   in Loop: Header=BB3_45 Depth=2
	leal	(%r11,%rax), %r15d
	incl	%r15d
	shrl	%r15d
	movzwl	6(%r13,%r8,2), %ecx
	movzwl	-4(%r13,%r8,2), %ebx
	movl	%r11d, %edx
	movl	%ecx, -24(%rsp)                 # 4-byte Spill
	subl	%ecx, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	xorl	%ecx, %ecx
	cmpl	%esi, %edi
	setb	%cl
	movl	%eax, %edx
	subl	%ebx, %edx
	movl	%edx, %r10d
	negl	%r10d
	cmovsl	%edx, %r10d
	cmpl	%esi, %r10d
	adcl	-60(%rsp), %ecx                 # 4-byte Folded Reload
	movl	%ecx, %esi
	negl	%esi
	shll	$2, %ebp
	subl	%r9d, %ebp
	leal	(%r14,%rbp), %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%esi, %edx
	cmovlel	%esi, %edx
	movl	-36(%rsp), %esi                 # 4-byte Reload
	cmpl	%ecx, %edx
	cmovgel	%ecx, %edx
	movzwl	%r15w, %ebp
	cmpl	%esi, %r10d
	jae	.LBB3_54
# %bb.49:                               # %if.then378
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	%ebp, %r15d
	subl	%r14d, %r15d
	subl	%r14d, %r15d
	addl	%ebx, %r15d
	sarl	%r15d
	cmpl	-64(%rsp), %r15d                # 4-byte Folded Reload
	jg	.LBB3_51
# %bb.50:                               # %if.then378
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-64(%rsp), %r15d                # 4-byte Reload
.LBB3_51:                               # %if.then378
                                        #   in Loop: Header=BB3_45 Depth=2
	cmpl	-60(%rsp), %r15d                # 4-byte Folded Reload
	jl	.LBB3_53
# %bb.52:                               # %if.then378
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-60(%rsp), %r15d                # 4-byte Reload
.LBB3_53:                               # %if.then378
                                        #   in Loop: Header=BB3_45 Depth=2
	addl	%r15d, %r14d
	movw	%r14w, -2(%r13,%r8,2)
.LBB3_54:                               # %if.end390
                                        #   in Loop: Header=BB3_45 Depth=2
	testl	%edx, %edx
	movl	-28(%rsp), %r10d                # 4-byte Reload
	je	.LBB3_64
# %bb.55:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	addl	%edx, %eax
	testl	%eax, %eax
	jle	.LBB3_56
# %bb.57:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-68(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB3_58
.LBB3_59:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	movw	%ax, (%r13,%r8,2)
	subl	%edx, %r11d
	testl	%r11d, %r11d
	jle	.LBB3_60
.LBB3_61:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	cmpl	%ecx, %r11d
	jl	.LBB3_63
.LBB3_62:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	%ecx, %r11d
.LBB3_63:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	movw	%r11w, 2(%r13,%r8,2)
.LBB3_64:                               # %if.end402
                                        #   in Loop: Header=BB3_45 Depth=2
	cmpl	%esi, %edi
	jae	.LBB3_70
# %bb.65:                               # %if.then404
                                        #   in Loop: Header=BB3_45 Depth=2
	addl	-24(%rsp), %ebp                 # 4-byte Folded Reload
	subl	%r9d, %ebp
	subl	%r9d, %ebp
	sarl	%ebp
	cmpl	-64(%rsp), %ebp                 # 4-byte Folded Reload
	jg	.LBB3_67
# %bb.66:                               # %if.then404
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-64(%rsp), %ebp                 # 4-byte Reload
.LBB3_67:                               # %if.then404
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	-60(%rsp), %eax                 # 4-byte Reload
	cmpl	%eax, %ebp
	jl	.LBB3_69
# %bb.68:                               # %if.then404
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	%eax, %ebp
	jmp	.LBB3_69
.LBB3_56:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	xorl	%eax, %eax
	movl	-68(%rsp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB3_59
.LBB3_58:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	movl	%ecx, %eax
	movw	%ax, (%r13,%r8,2)
	subl	%edx, %r11d
	testl	%r11d, %r11d
	jg	.LBB3_61
.LBB3_60:                               # %if.then393
                                        #   in Loop: Header=BB3_45 Depth=2
	xorl	%r11d, %r11d
	cmpl	%ecx, %r11d
	jge	.LBB3_62
	jmp	.LBB3_63
	.p2align	4, 0x90
.LBB3_71:                               # %if.end426.loopexit
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	%r12, %r13
	jmp	.LBB3_72
.LBB3_24:                               # %for.body235.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	(%r13), %rax
	movzwl	2(%rax,%r8,2), %edi
	movzwl	(%rax,%r8,2), %r9d
	movl	%edi, %edx
	subl	%r9d, %edx
	movl	%edx, %r11d
	negl	%r11d
	cmovsl	%edx, %r11d
	movzwl	%r11w, %r11d
	cmpl	%r10d, %r11d
	jge	.LBB3_29
# %bb.25:                               # %if.then246
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	4(%rax,%r8,2), %r11d
	movl	%edi, %ebx
	subl	%r11d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%esi, %ebp
	jge	.LBB3_29
# %bb.26:                               # %land.lhs.true255
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	-2(%rax,%r8,2), %ebx
	movl	%r9d, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%esi, %r14d
	jae	.LBB3_29
# %bb.27:                               # %if.then262
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	6(%rax,%r8,2), %ebp
	movzwl	-4(%rax,%r8,2), %r14d
	movl	%edi, %r15d
	subl	%ebp, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	cmovsl	%r15d, %ebp
	movl	%r9d, %r15d
	subl	%r14d, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	xorl	%r15d, %r15d
	cmpl	%esi, %r14d
	setb	%r15b
	cmpl	%esi, %ebp
	adcl	$0, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	shll	$2, %edx
	subl	%r11d, %edx
	addl	%ebx, %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%ebp, %edx
	cmovlel	%ebp, %edx
	cmpl	%r15d, %edx
	cmovgel	%r15d, %edx
	testl	%edx, %edx
	je	.LBB3_29
# %bb.28:                               # %if.then291
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%edx, %r9d
	testl	%r9d, %r9d
	movl	$0, %ecx
	cmovlel	%ecx, %r9d
	movl	-68(%rsp), %r11d                # 4-byte Reload
	cmpl	%r11d, %r9d
	cmovgel	%r11d, %r9d
	movw	%r9w, (%rax,%r8,2)
	subl	%edx, %edi
	testl	%edi, %edi
	cmovlel	%ecx, %edi
	cmpl	%r11d, %edi
	cmovgel	%r11d, %edi
	movw	%di, 2(%rax,%r8,2)
.LBB3_29:                               # %for.inc303
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	8(%r13), %rax
	movzwl	2(%rax,%r8,2), %edi
	movzwl	(%rax,%r8,2), %r9d
	movl	%edi, %edx
	subl	%r9d, %edx
	movl	%edx, %r11d
	negl	%r11d
	cmovsl	%edx, %r11d
	movzwl	%r11w, %r11d
	cmpl	%r10d, %r11d
	jge	.LBB3_34
# %bb.30:                               # %if.then246.1
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	4(%rax,%r8,2), %r11d
	movl	%edi, %ebx
	subl	%r11d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%esi, %ebp
	jge	.LBB3_34
# %bb.31:                               # %land.lhs.true255.1
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	-2(%rax,%r8,2), %ebx
	movl	%r9d, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%esi, %r14d
	jae	.LBB3_34
# %bb.32:                               # %if.then262.1
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	6(%rax,%r8,2), %ebp
	movzwl	-4(%rax,%r8,2), %r14d
	movl	%edi, %r15d
	subl	%ebp, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	cmovsl	%r15d, %ebp
	movl	%r9d, %r15d
	subl	%r14d, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	xorl	%r15d, %r15d
	cmpl	%esi, %r14d
	setb	%r15b
	cmpl	%esi, %ebp
	adcl	$0, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	shll	$2, %edx
	subl	%r11d, %edx
	addl	%ebx, %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%ebp, %edx
	cmovlel	%ebp, %edx
	cmpl	%r15d, %edx
	cmovgel	%r15d, %edx
	testl	%edx, %edx
	je	.LBB3_34
# %bb.33:                               # %if.then291.1
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%edx, %r9d
	testl	%r9d, %r9d
	movl	$0, %ecx
	cmovlel	%ecx, %r9d
	movl	-68(%rsp), %r11d                # 4-byte Reload
	cmpl	%r11d, %r9d
	cmovgel	%r11d, %r9d
	movw	%r9w, (%rax,%r8,2)
	subl	%edx, %edi
	testl	%edi, %edi
	cmovlel	%ecx, %edi
	cmpl	%r11d, %edi
	cmovgel	%r11d, %edi
	movw	%di, 2(%rax,%r8,2)
.LBB3_34:                               # %for.inc303.1
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	16(%r13), %rax
	movzwl	2(%rax,%r8,2), %edi
	movzwl	(%rax,%r8,2), %r9d
	movl	%edi, %edx
	subl	%r9d, %edx
	movl	%edx, %r11d
	negl	%r11d
	cmovsl	%edx, %r11d
	movzwl	%r11w, %r11d
	cmpl	%r10d, %r11d
	jge	.LBB3_39
# %bb.35:                               # %if.then246.2
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	4(%rax,%r8,2), %r11d
	movl	%edi, %ebx
	subl	%r11d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%esi, %ebp
	jge	.LBB3_39
# %bb.36:                               # %land.lhs.true255.2
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	-2(%rax,%r8,2), %ebx
	movl	%r9d, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%esi, %r14d
	jae	.LBB3_39
# %bb.37:                               # %if.then262.2
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	6(%rax,%r8,2), %ebp
	movzwl	-4(%rax,%r8,2), %r14d
	movl	%edi, %r15d
	subl	%ebp, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	cmovsl	%r15d, %ebp
	movl	%r9d, %r15d
	subl	%r14d, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	xorl	%r15d, %r15d
	cmpl	%esi, %r14d
	setb	%r15b
	cmpl	%esi, %ebp
	adcl	$0, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	shll	$2, %edx
	subl	%r11d, %edx
	addl	%ebx, %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%ebp, %edx
	cmovlel	%ebp, %edx
	cmpl	%r15d, %edx
	cmovgel	%r15d, %edx
	testl	%edx, %edx
	je	.LBB3_39
# %bb.38:                               # %if.then291.2
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%edx, %r9d
	testl	%r9d, %r9d
	movl	$0, %ecx
	cmovlel	%ecx, %r9d
	movl	-68(%rsp), %r11d                # 4-byte Reload
	cmpl	%r11d, %r9d
	cmovgel	%r11d, %r9d
	movw	%r9w, (%rax,%r8,2)
	subl	%edx, %edi
	testl	%edi, %edi
	cmovlel	%ecx, %edi
	cmpl	%r11d, %edi
	cmovgel	%r11d, %edi
	movw	%di, 2(%rax,%r8,2)
.LBB3_39:                               # %for.inc303.2
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r13), %rax
	addq	$32, %r13
	movzwl	2(%rax,%r8,2), %edi
	movzwl	(%rax,%r8,2), %edx
	movl	%edi, %r9d
	subl	%edx, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movzwl	%r11w, %r11d
	cmpl	%r10d, %r11d
	jge	.LBB3_72
# %bb.40:                               # %if.then246.3
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	4(%rax,%r8,2), %r11d
	movl	%edi, %ebx
	subl	%r11d, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%esi, %ebp
	jge	.LBB3_72
# %bb.41:                               # %land.lhs.true255.3
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	-2(%rax,%r8,2), %ebx
	movl	%edx, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%esi, %r14d
	jae	.LBB3_72
# %bb.42:                               # %if.then262.3
                                        #   in Loop: Header=BB3_6 Depth=1
	movzwl	6(%rax,%r8,2), %ebp
	movzwl	-4(%rax,%r8,2), %r14d
	movl	%edi, %r15d
	subl	%ebp, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	cmovsl	%r15d, %ebp
	movl	%edx, %r15d
	subl	%r14d, %r15d
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	xorl	%r15d, %r15d
	cmpl	%esi, %r14d
	setb	%r15b
	cmpl	%esi, %ebp
	adcl	$0, %r15d
	movl	%r15d, %ebp
	negl	%ebp
	shll	$2, %r9d
	subl	%r11d, %r9d
	addl	%ebx, %r9d
	addl	$4, %r9d
	sarl	$3, %r9d
	cmpl	%ebp, %r9d
	cmovlel	%ebp, %r9d
	cmpl	%r15d, %r9d
	cmovgel	%r15d, %r9d
	testl	%r9d, %r9d
	je	.LBB3_72
# %bb.43:                               # %if.then291.3
                                        #   in Loop: Header=BB3_6 Depth=1
	addl	%r9d, %edx
	testl	%edx, %edx
	movl	$0, %ecx
	cmovlel	%ecx, %edx
	movl	-68(%rsp), %esi                 # 4-byte Reload
	cmpl	%esi, %edx
	cmovgel	%esi, %edx
	movw	%dx, (%rax,%r8,2)
	subl	%r9d, %edi
	testl	%edi, %edi
	cmovlel	%ecx, %edi
	cmpl	%esi, %edi
	cmovgel	%esi, %edi
	movw	%di, 2(%rax,%r8,2)
	.p2align	4, 0x90
.LBB3_72:                               # %if.end426
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB3_73
.LBB3_2:                                # %lor.lhs.false
	cmpw	$0, 376(%rcx)
	je	.LBB3_3
.LBB3_74:                               # %if.end432
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
.LBB3_3:
	.cfi_def_cfa_offset 56
	xorl	%r14d, %r14d
	jmp	.LBB3_4
.Lfunc_end3:
	.size	EdgeLoopLumaVer, .Lfunc_end3-EdgeLoopLumaVer
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopLumaHor
	.type	EdgeLoopLumaHor,@function
EdgeLoopLumaHor:                        # @EdgeLoopLumaHor
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 104
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movq	%rdx, %r13
	movq	%rsi, -120(%rsp)                # 8-byte Spill
	movq	8(%rcx), %rax
	leal	-1(%r8), %r10d
	xorl	%esi, %esi
	cmpl	$16, %r8d
	cmovgel	%esi, %r10d
	movq	%rcx, %r11
	testl	%r10d, %r10d
	jns	.LBB4_2
# %bb.1:                                # %get_non_aff_neighbor_luma.exit
	movq	136(%rcx), %r11
	testq	%r11, %r11
	je	.LBB4_74
.LBB4_2:                                # %if.then
	leaq	68(%r11), %rdx
	leaq	68(%rcx), %r8
	xorl	%r14d, %r14d
	movl	%edi, %r15d
	subl	$1, %r15d
	setae	%r14b
	leaq	72(%r11,%r15,4), %r12
	leaq	72(%rcx,%r15,4), %r15
	cmovbq	%r8, %r15
	cmovbq	%rdx, %r12
	movl	849044(%rax,%r14,4), %ebx
	movl	(%r12), %edx
	movl	(%r15), %r8d
	addl	%edx, %r8d
	incl	%r8d
	sarl	%r8d
	movswl	378(%rcx), %edx
	addl	%r8d, %edx
	testl	%edx, %edx
	cmovlel	%esi, %edx
	cmpl	$51, %edx
	movl	$51, %ebp
	cmovgel	%ebp, %edx
	movswl	380(%rcx), %r14d
	addl	%r8d, %r14d
	testl	%r14d, %r14d
	cmovlel	%esi, %r14d
	cmpl	$51, %r14d
	cmovgel	%ebp, %r14d
	movzbl	ALPHA_TABLE(%rdx), %ebp
	imull	%ebx, %ebp
	movzbl	BETA_TABLE(%r14), %r8d
	movl	%ebx, -40(%rsp)                 # 4-byte Spill
	imull	%ebx, %r8d
	movl	%r8d, %ebx
	orl	%ebp, %ebx
	je	.LBB4_75
# %bb.3:                                # %if.then43
	leaq	(%rdx,%rdx,4), %rcx
	addq	$CLIP_TAB, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movl	%edi, %edx
	movl	849072(%rax,%rdx,4), %eax
	movl	%eax, -124(%rsp)                # 4-byte Spill
	movslq	356(%r9), %rcx
	movslq	48(%r11), %rax
	andl	$15, %r10d
	addq	%rax, %r10
	movslq	44(%r11), %rax
	addq	%rax, %rax
	movq	-120(%rsp), %rdx                # 8-byte Reload
	addq	(%rdx,%r10,8), %rax
	leaq	(%rax,%rcx,2), %r12
	leal	(%rcx,%rcx), %edx
	leal	(%rcx,%rcx,2), %esi
	movq	%rcx, %r15
	negq	%r15
	movl	%ebp, %edi
	shrl	$2, %edi
	addl	$2, %edi
	movl	%edi, -36(%rsp)                 # 4-byte Spill
	movslq	%edx, %rdi
	movslq	%esi, %rsi
	addq	%rsi, %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	negq	%rsi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	addq	%rdi, %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	negq	%rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	leaq	(,%rcx,4), %rsi
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	negq	%rsi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	leaq	(%rcx,%rcx), %rdx
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	negq	%rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	xorl	%r9d, %r9d
	movl	%ebp, -120(%rsp)                # 4-byte Spill
	movq	%r15, (%rsp)                    # 8-byte Spill
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_4:                                # %if.else452
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	$8, %rax
	addq	$8, %r12
	movq	%r12, %rsi
	movq	%rax, %rdi
.LBB4_5:                                # %if.end456
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	$4, %r13
	leal	4(%r9), %ecx
	movq	%rdi, %rax
	movq	%rsi, %r12
	cmpl	$12, %r9d
	movl	%ecx, %r9d
	jae	.LBB4_75
.LBB4_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	movzbl	(%r13), %edx
	testl	%edx, %edx
	je	.LBB4_4
# %bb.7:                                # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r9, -104(%rsp)                 # 8-byte Spill
	cmpl	$4, %edx
	jne	.LBB4_22
# %bb.8:                                # %for.body65.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r13, -64(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rdx                  # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	leaq	(%r12,%rdx), %rdx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	%r12, %rdx
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addq	%r12, %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r12,%rdx), %rdi
	xorl	%r13d, %r13d
	jmp	.LBB4_12
.LBB4_9:                                # %if.else217
                                        #   in Loop: Header=BB4_12 Depth=2
	addl	%r10d, %r15d
	leal	(%r15,%r14,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%rax,%r13)
.LBB4_10:                               # %if.end238
                                        #   in Loop: Header=BB4_12 Depth=2
	leal	(%rsi,%r10,2), %edx
	addl	%r14d, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%r12,%r13)
	.p2align	4, 0x90
.LBB4_11:                               # %if.end238
                                        #   in Loop: Header=BB4_12 Depth=2
	addq	$2, %r13
	cmpl	$8, %r13d
	je	.LBB4_21
.LBB4_12:                               # %for.body65
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rax,%r13), %r15d
	movzwl	(%r12,%r13), %esi
	movl	%esi, %edx
	subl	%r15d, %edx
	movl	%edx, %r9d
	negl	%r9d
	cmovsl	%edx, %r9d
	movzwl	%r9w, %edx
	cmpl	%ebp, %edx
	jge	.LBB4_11
# %bb.13:                               # %if.then73
                                        #   in Loop: Header=BB4_12 Depth=2
	movzwl	(%rdi,%r13), %r10d
	movl	%esi, %r9d
	subl	%r10d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	cmpl	%r8d, %r11d
	jge	.LBB4_11
# %bb.14:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_12 Depth=2
	movzwl	(%rcx,%r13), %r14d
	movl	%r15d, %r9d
	subl	%r14d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	cmpl	%r8d, %r11d
	jae	.LBB4_11
# %bb.15:                               # %if.then90
                                        #   in Loop: Header=BB4_12 Depth=2
	cmpl	-36(%rsp), %edx                 # 4-byte Folded Reload
	jae	.LBB4_9
# %bb.16:                               # %if.then99
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%r13), %edx
	movq	-48(%rsp), %r9                  # 8-byte Reload
	movzwl	(%r9,%r13), %r11d
	leal	(%rsi,%r15), %r9d
	movl	%r15d, %ebx
	subl	%edx, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%r8d, %ebp
	jae	.LBB4_18
# %bb.17:                               # %if.then114
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-56(%rsp), %rbx                 # 8-byte Reload
	movzwl	(%rbx,%r13), %ebx
	leal	(%r9,%r14), %r15d
	leal	(%r10,%r15,2), %ebp
	addl	%edx, %ebp
	addl	$4, %ebp
	shrl	$3, %ebp
	movw	%bp, (%rax,%r13)
	leal	(%rdx,%r15), %ebp
	addl	$2, %ebp
	shrl	$2, %ebp
	movw	%bp, (%rcx,%r13)
	addl	%edx, %ebx
	addl	%edx, %r15d
	leal	(%r15,%rbx,2), %edx
	addl	$4, %edx
	shrl	$3, %edx
	movq	-72(%rsp), %rbx                 # 8-byte Reload
	movw	%dx, (%rbx,%r13)
	jmp	.LBB4_19
.LBB4_18:                               # %if.else
                                        #   in Loop: Header=BB4_12 Depth=2
	addl	%r10d, %r15d
	leal	(%r15,%r14,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movw	%dx, (%rax,%r13)
.LBB4_19:                               # %if.end
                                        #   in Loop: Header=BB4_12 Depth=2
	movl	%esi, %edx
	subl	%r11d, %edx
	movl	%edx, %ebx
	negl	%ebx
	cmovsl	%edx, %ebx
	cmpl	%r8d, %ebx
	movl	-120(%rsp), %ebp                # 4-byte Reload
	jae	.LBB4_10
# %bb.20:                               # %if.then167
                                        #   in Loop: Header=BB4_12 Depth=2
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movzwl	(%rdx,%r13), %edx
	addl	%r10d, %r9d
	leal	(%r14,%r9,2), %esi
	addl	%r11d, %esi
	addl	$4, %esi
	shrl	$3, %esi
	movw	%si, (%r12,%r13)
	leal	(%r11,%r9), %esi
	addl	$2, %esi
	shrl	$2, %esi
	movw	%si, (%rdi,%r13)
	addl	%r11d, %edx
	addl	%r11d, %r9d
	leal	(%r9,%rdx,2), %edx
	addl	$4, %edx
	shrl	$3, %edx
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movw	%dx, (%rsi,%r13)
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_21:                               # %if.end456.loopexit1
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	%r13, %rax
	addq	%r13, %r12
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	-64(%rsp), %r13                 # 8-byte Reload
	jmp	.LBB4_51
	.p2align	4, 0x90
.LBB4_22:                               # %if.then243
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movzbl	(%rcx,%rdx), %r14d
	imull	-40(%rsp), %r14d                # 4-byte Folded Reload
	testl	%r14d, %r14d
	je	.LBB4_53
# %bb.23:                               # %for.cond332.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	%r13, -64(%rsp)                 # 8-byte Spill
	movl	%r14d, %ecx
	negl	%ecx
	movl	%ecx, -96(%rsp)                 # 4-byte Spill
	movq	-32(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	leaq	(%r12,%rcx), %r11
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	addq	%r12, %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%r11, -80(%rsp)                 # 8-byte Spill
	jmp	.LBB4_26
.LBB4_24:                               # %if.then433
                                        #   in Loop: Header=BB4_26 Depth=2
	addl	%ebx, %edx
	movw	%dx, (%r11,%r13)
	.p2align	4, 0x90
.LBB4_25:                               # %for.inc448
                                        #   in Loop: Header=BB4_26 Depth=2
	addq	$2, %r13
	cmpl	$8, %r13d
	je	.LBB4_50
.LBB4_26:                               # %for.body335
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%r12,%r13), %r9d
	movzwl	(%rax,%r13), %r15d
	movl	%r9d, %ebx
	subl	%r15d, %ebx
	movl	%ebx, %edx
	negl	%edx
	cmovsl	%ebx, %edx
	movzwl	%dx, %edx
	cmpl	-120(%rsp), %edx                # 4-byte Folded Reload
	jge	.LBB4_25
# %bb.27:                               # %if.then344
                                        #   in Loop: Header=BB4_26 Depth=2
	movzwl	(%r11,%r13), %r10d
	movl	%r9d, %edx
	subl	%r10d, %edx
	movl	%edx, %esi
	negl	%esi
	cmovsl	%edx, %esi
	cmpl	%r8d, %esi
	jge	.LBB4_25
# %bb.28:                               # %land.lhs.true358
                                        #   in Loop: Header=BB4_26 Depth=2
	movzwl	(%rbp,%r13), %esi
	movl	%r15d, %edx
	subl	%esi, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	cmpl	%r8d, %edi
	jae	.LBB4_25
# %bb.29:                               # %if.then365
                                        #   in Loop: Header=BB4_26 Depth=2
	leal	(%r9,%r15), %edi
	incl	%edi
	shrl	%edi
	movq	-88(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%r13), %edx
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movzwl	(%rcx,%r13), %ecx
	movl	%edx, -48(%rsp)                 # 4-byte Spill
	subl	%edx, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	xorl	%r9d, %r9d
	cmpl	%r8d, %r11d
	setb	%r9b
	movl	%ecx, -56(%rsp)                 # 4-byte Spill
	subl	%ecx, %r15d
	movq	%rbp, %rdx
	movl	%r14d, %ebp
	movl	%r15d, %r14d
	negl	%r14d
	cmovsl	%r15d, %r14d
	cmpl	%r8d, %r14d
	adcl	%ebp, %r9d
	movl	%r9d, %ecx
	negl	%ecx
	shll	$2, %ebx
	subl	%r10d, %ebx
	leal	(%rbx,%rsi), %r15d
	addl	$4, %r15d
	sarl	$3, %r15d
	cmpl	%ecx, %r15d
	cmovlel	%ecx, %r15d
	cmpl	%r9d, %r15d
	cmovgel	%r9d, %r15d
	movzwl	%di, %ebx
	movl	%r8d, %r9d
	cmpl	%r8d, %r14d
	movl	%ebp, %r14d
	movq	%rdx, %rbp
	jae	.LBB4_35
# %bb.30:                               # %if.then407
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ebx, %edi
	subl	%esi, %edi
	subl	%esi, %edi
	addl	-56(%rsp), %edi                 # 4-byte Folded Reload
	sarl	%edi
	cmpl	-96(%rsp), %edi                 # 4-byte Folded Reload
	jg	.LBB4_32
# %bb.31:                               # %if.then407
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-96(%rsp), %edi                 # 4-byte Reload
.LBB4_32:                               # %if.then407
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	%r14d, %edi
	jl	.LBB4_34
# %bb.33:                               # %if.then407
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%r14d, %edi
.LBB4_34:                               # %if.then407
                                        #   in Loop: Header=BB4_26 Depth=2
	addl	%edi, %esi
	movw	%si, (%rbp,%r13)
.LBB4_35:                               # %if.end419
                                        #   in Loop: Header=BB4_26 Depth=2
	testl	%r15d, %r15d
	movl	%r9d, %r8d
	je	.LBB4_45
# %bb.36:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movzwl	(%rax,%r13), %edx
	addl	%r15d, %edx
	testl	%edx, %edx
	jg	.LBB4_38
# %bb.37:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	xorl	%edx, %edx
.LBB4_38:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	%ecx, %edx
	jl	.LBB4_40
# %bb.39:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ecx, %edx
.LBB4_40:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movw	%dx, (%rax,%r13)
	movzwl	(%r12,%r13), %edx
	subl	%r15d, %edx
	testl	%edx, %edx
	jg	.LBB4_42
# %bb.41:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	xorl	%edx, %edx
.LBB4_42:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	%ecx, %edx
	jl	.LBB4_44
# %bb.43:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%ecx, %edx
.LBB4_44:                               # %if.then422
                                        #   in Loop: Header=BB4_26 Depth=2
	movw	%dx, (%r12,%r13)
.LBB4_45:                               # %if.end431
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	%r8d, %r11d
	movq	-80(%rsp), %r11                 # 8-byte Reload
	jae	.LBB4_25
# %bb.46:                               # %if.then433
                                        #   in Loop: Header=BB4_26 Depth=2
	addl	-48(%rsp), %ebx                 # 4-byte Folded Reload
	movzwl	(%r11,%r13), %edx
	subl	%edx, %ebx
	subl	%edx, %ebx
	sarl	%ebx
	cmpl	-96(%rsp), %ebx                 # 4-byte Folded Reload
	jg	.LBB4_48
# %bb.47:                               # %if.then433
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	-96(%rsp), %ebx                 # 4-byte Reload
.LBB4_48:                               # %if.then433
                                        #   in Loop: Header=BB4_26 Depth=2
	cmpl	%r14d, %ebx
	jl	.LBB4_24
# %bb.49:                               # %if.then433
                                        #   in Loop: Header=BB4_26 Depth=2
	movl	%r14d, %ebx
	jmp	.LBB4_24
	.p2align	4, 0x90
.LBB4_50:                               # %if.end456.loopexit
                                        #   in Loop: Header=BB4_6 Depth=1
	addq	%r13, %rax
	addq	%r13, %r12
	movq	%r12, %rsi
	movq	%rax, %rdi
	movq	-64(%rsp), %r13                 # 8-byte Reload
	movl	-120(%rsp), %ebp                # 4-byte Reload
.LBB4_51:                               # %if.end456
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	(%rsp), %r15                    # 8-byte Reload
.LBB4_52:                               # %if.end456
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-104(%rsp), %r9                 # 8-byte Reload
	jmp	.LBB4_5
.LBB4_53:                               # %for.body256.preheader
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	(%r12), %r9d
	movzwl	(%rax), %esi
	movl	%r9d, %edi
	subl	%esi, %edi
	movl	%edi, %edx
	negl	%edx
	cmovsl	%edi, %edx
	movzwl	%dx, %edx
	cmpl	%ebp, %edx
	jge	.LBB4_58
# %bb.54:                               # %if.then265
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	(%r12,%rcx,2), %edx
	movl	%r9d, %r10d
	subl	%edx, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpl	%r8d, %r11d
	jge	.LBB4_58
# %bb.55:                               # %land.lhs.true277
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	(%rax,%r15,2), %r10d
	movl	%esi, %r11d
	subl	%r10d, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	cmpl	%r8d, %ebx
	jae	.LBB4_58
# %bb.56:                               # %if.then284
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	(%r12,%rcx,4), %r11d
	movzwl	(%rax,%r15,4), %ebx
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movl	%esi, %r9d
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	xorl	%r9d, %r9d
	cmpl	%r8d, %ebx
	setb	%r9b
	cmpl	%r8d, %r11d
	adcl	$0, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	shll	$2, %edi
	subl	%edx, %edi
	leal	(%rdi,%r10), %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%r11d, %edx
	cmovlel	%r11d, %edx
	cmpl	%r9d, %edx
	cmovgel	%r9d, %edx
	testl	%edx, %edx
	je	.LBB4_58
# %bb.57:                               # %if.then316
                                        #   in Loop: Header=BB4_6 Depth=1
	addl	%edx, %esi
	testl	%esi, %esi
	movl	$0, %edi
	cmovlel	%edi, %esi
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, (%rax)
	movzwl	(%r12), %esi
	subl	%edx, %esi
	testl	%esi, %esi
	cmovlel	%edi, %esi
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, (%r12)
.LBB4_58:                               # %for.inc328
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	2(%r12), %r9d
	movzwl	2(%rax), %esi
	movl	%r9d, %edi
	subl	%esi, %edi
	movl	%edi, %edx
	negl	%edx
	cmovsl	%edi, %edx
	movzwl	%dx, %edx
	cmpl	%ebp, %edx
	jge	.LBB4_63
# %bb.59:                               # %if.then265.1
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	2(%r12,%rcx,2), %edx
	movl	%r9d, %r10d
	subl	%edx, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpl	%r8d, %r11d
	jge	.LBB4_63
# %bb.60:                               # %land.lhs.true277.1
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	2(%rax,%r15,2), %r10d
	movl	%esi, %r11d
	subl	%r10d, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	cmpl	%r8d, %ebx
	jae	.LBB4_63
# %bb.61:                               # %if.then284.1
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	2(%r12,%rcx,4), %r11d
	movzwl	2(%rax,%r15,4), %ebx
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movl	%esi, %r9d
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	xorl	%r9d, %r9d
	cmpl	%r8d, %ebx
	setb	%r9b
	cmpl	%r8d, %r11d
	adcl	$0, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	shll	$2, %edi
	subl	%edx, %edi
	leal	(%rdi,%r10), %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%r11d, %edx
	cmovlel	%r11d, %edx
	cmpl	%r9d, %edx
	cmovgel	%r9d, %edx
	testl	%edx, %edx
	je	.LBB4_63
# %bb.62:                               # %if.then316.1
                                        #   in Loop: Header=BB4_6 Depth=1
	addl	%edx, %esi
	testl	%esi, %esi
	movl	$0, %edi
	cmovlel	%edi, %esi
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, 2(%rax)
	movzwl	2(%r12), %esi
	subl	%edx, %esi
	testl	%esi, %esi
	cmovlel	%edi, %esi
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, 2(%r12)
.LBB4_63:                               # %for.inc328.1
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	4(%r12), %r9d
	movzwl	4(%rax), %esi
	movl	%r9d, %edi
	subl	%esi, %edi
	movl	%edi, %edx
	negl	%edx
	cmovsl	%edi, %edx
	movzwl	%dx, %edx
	cmpl	%ebp, %edx
	jge	.LBB4_68
# %bb.64:                               # %if.then265.2
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	4(%r12,%rcx,2), %edx
	movl	%r9d, %r10d
	subl	%edx, %r10d
	movl	%r10d, %r11d
	negl	%r11d
	cmovsl	%r10d, %r11d
	cmpl	%r8d, %r11d
	jge	.LBB4_68
# %bb.65:                               # %land.lhs.true277.2
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	4(%rax,%r15,2), %r10d
	movl	%esi, %r11d
	subl	%r10d, %r11d
	movl	%r11d, %ebx
	negl	%ebx
	cmovsl	%r11d, %ebx
	cmpl	%r8d, %ebx
	jae	.LBB4_68
# %bb.66:                               # %if.then284.2
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	4(%r12,%rcx,4), %r11d
	movzwl	4(%rax,%r15,4), %ebx
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	cmovsl	%r9d, %r11d
	movl	%esi, %r9d
	subl	%ebx, %r9d
	movl	%r9d, %ebx
	negl	%ebx
	cmovsl	%r9d, %ebx
	xorl	%r9d, %r9d
	cmpl	%r8d, %ebx
	setb	%r9b
	cmpl	%r8d, %r11d
	adcl	$0, %r9d
	movl	%r9d, %r11d
	negl	%r11d
	shll	$2, %edi
	subl	%edx, %edi
	leal	(%rdi,%r10), %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%r11d, %edx
	cmovlel	%r11d, %edx
	cmpl	%r9d, %edx
	cmovgel	%r9d, %edx
	testl	%edx, %edx
	je	.LBB4_68
# %bb.67:                               # %if.then316.2
                                        #   in Loop: Header=BB4_6 Depth=1
	addl	%edx, %esi
	testl	%esi, %esi
	movl	$0, %edi
	cmovlel	%edi, %esi
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, 4(%rax)
	movzwl	4(%r12), %esi
	subl	%edx, %esi
	testl	%esi, %esi
	cmovlel	%edi, %esi
	cmpl	%ecx, %esi
	cmovgel	%ecx, %esi
	movw	%si, 4(%r12)
.LBB4_68:                               # %for.inc328.2
                                        #   in Loop: Header=BB4_6 Depth=1
	leaq	8(%rax), %rdi
	leaq	8(%r12), %rsi
	movzwl	6(%r12), %r11d
	movzwl	6(%rax), %r9d
	movl	%r11d, %r10d
	subl	%r9d, %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movzwl	%dx, %edx
	cmpl	%ebp, %edx
	jge	.LBB4_52
# %bb.69:                               # %if.then265.3
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	6(%r12,%rcx,2), %edx
	movl	%r11d, %ebx
	subl	%edx, %ebx
	movl	%ebx, %ebp
	negl	%ebp
	cmovsl	%ebx, %ebp
	cmpl	%r8d, %ebp
	jge	.LBB4_73
# %bb.70:                               # %land.lhs.true277.3
                                        #   in Loop: Header=BB4_6 Depth=1
	movzwl	6(%rax,%r15,2), %ebx
	movl	%r9d, %ebp
	subl	%ebx, %ebp
	movl	%ebp, %r14d
	negl	%r14d
	cmovsl	%ebp, %r14d
	cmpl	%r8d, %r14d
	jae	.LBB4_73
# %bb.71:                               # %if.then284.3
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movzwl	6(%r12,%rcx,4), %ebp
	movzwl	6(%rax,%r15,4), %r14d
	subl	%ebp, %r11d
	movl	%r11d, %ebp
	negl	%ebp
	cmovsl	%r11d, %ebp
	movl	%r9d, %r11d
	subl	%r14d, %r11d
	movl	%r11d, %r14d
	negl	%r14d
	cmovsl	%r11d, %r14d
	xorl	%r11d, %r11d
	cmpl	%r8d, %r14d
	setb	%r11b
	cmpl	%r8d, %ebp
	adcl	$0, %r11d
	movl	%r11d, %ebp
	negl	%ebp
	shll	$2, %r10d
	subl	%edx, %r10d
	leal	(%r10,%rbx), %edx
	addl	$4, %edx
	sarl	$3, %edx
	cmpl	%ebp, %edx
	cmovlel	%ebp, %edx
	cmpl	%r11d, %edx
	cmovgel	%r11d, %edx
	testl	%edx, %edx
	je	.LBB4_73
# %bb.72:                               # %if.then316.3
                                        #   in Loop: Header=BB4_6 Depth=1
	addl	%edx, %r9d
	testl	%r9d, %r9d
	movl	$0, %r10d
	cmovlel	%r10d, %r9d
	movl	-124(%rsp), %ecx                # 4-byte Reload
	cmpl	%ecx, %r9d
	cmovgel	%ecx, %r9d
	movw	%r9w, 6(%rax)
	movzwl	6(%r12), %eax
	subl	%edx, %eax
	testl	%eax, %eax
	cmovlel	%r10d, %eax
	cmpl	%ecx, %eax
	cmovgel	%ecx, %eax
	movw	%ax, 6(%r12)
.LBB4_73:                               #   in Loop: Header=BB4_6 Depth=1
	movl	-120(%rsp), %ebp                # 4-byte Reload
	jmp	.LBB4_52
.LBB4_74:                               # %lor.lhs.false
	cmpw	$0, 376(%rcx)
	je	.LBB4_76
.LBB4_75:                               # %if.end462
	addq	$48, %rsp
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
.LBB4_76:
	.cfi_def_cfa_offset 104
	xorl	%r11d, %r11d
	jmp	.LBB4_2
.Lfunc_end4:
	.size	EdgeLoopLumaHor, .Lfunc_end4-EdgeLoopLumaHor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopChromaVer
	.type	EdgeLoopChromaVer,@function
EdgeLoopChromaVer:                      # @EdgeLoopChromaVer
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
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r10
	movl	849108(%r10), %ebx
	movl	849112(%r10), %eax
	testl	%ecx, %ecx
	jle	.LBB5_1
# %bb.24:                               # %if.else3.i
	cmpl	%ecx, %ebx
	setge	%r11b
	testl	%eax, %eax
	setg	%al
	movq	%rdx, %r14
	testb	%al, %r11b
	jne	.LBB5_3
	jmp	.LBB5_23
.LBB5_1:                                # %if.then.i
	testl	%eax, %eax
	jle	.LBB5_23
# %bb.2:                                # %get_non_aff_neighbor_chroma.exit
	movq	144(%rdx), %r14
	testq	%r14, %r14
	je	.LBB5_23
.LBB5_3:                                # %if.then
	movl	849048(%r10), %r12d
	movslq	%r8d, %r15
	movswl	378(%rdx), %r11d
	movswl	380(%rdx), %eax
	movl	72(%r14,%r15,4), %r8d
	movl	72(%rdx,%r15,4), %edx
	addl	%edx, %r8d
	incl	%r8d
	sarl	%r8d
	addl	%r8d, %r11d
	xorl	%edx, %edx
	testl	%r11d, %r11d
	cmovlel	%edx, %r11d
	cmpl	$51, %r11d
	movl	$51, %ebp
	cmovgel	%ebp, %r11d
	addl	%eax, %r8d
	testl	%r8d, %r8d
	cmovlel	%edx, %r8d
	cmpl	$51, %r8d
	cmovgel	%ebp, %r8d
	movzbl	ALPHA_TABLE(%r11), %esi
	imull	%r12d, %esi
	movzbl	BETA_TABLE(%r8), %r8d
	movl	%r12d, -28(%rsp)                # 4-byte Spill
	imull	%r12d, %r8d
	movl	%r8d, %eax
	orl	%esi, %eax
	je	.LBB5_23
# %bb.4:                                # %if.then27
	movslq	268(%r9), %rax
	movl	pelnum_cr(,%rax,4), %r9d
	testl	%r9d, %r9d
	jle	.LBB5_23
# %bb.5:                                # %for.body.lr.ph
	decl	%ecx
	movl	849076(%r10,%r15,4), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	leaq	(%r11,%r11,4), %rax
	addq	$CLIP_TAB, %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movslq	56(%r14), %rax
	leaq	(%rdi,%rax,8), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movslq	52(%r14), %rax
	decl	%ebx
	andl	%ecx, %ebx
	movslq	%ebx, %rcx
	addq	%rax, %rcx
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB5_6
.LBB5_11:                               # %if.then78
                                        #   in Loop: Header=BB5_6 Depth=1
	addl	%ebp, %r13d
	leal	2(%r13,%rax,2), %edi
	shrl	$2, %edi
	movw	%di, (%r15,%rcx,2)
	leal	(%r10,%rbp,2), %edi
	leal	(%rax,%rdi), %r10d
	addl	$2, %r10d
	shrl	$2, %r10d
.LBB5_21:                               # %if.end126.sink.split
                                        #   in Loop: Header=BB5_6 Depth=1
	movw	%r10w, 2(%r15,%rcx,2)
	.p2align	4, 0x90
.LBB5_22:                               # %if.end126
                                        #   in Loop: Header=BB5_6 Depth=1
	incq	%r14
	addl	$2, %ebx
	cmpl	%r14d, %r9d
	je	.LBB5_23
.LBB5_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	andl	$-4, %eax
	movl	%r14d, %r10d
	andl	$1, %r10d
	orl	%eax, %r10d
	cmpl	$8, %r9d
	cmovnel	%r14d, %r10d
	movslq	%r10d, %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movzbl	(%rdx,%rax), %r11d
	testq	%r11, %r11
	je	.LBB5_22
# %bb.7:                                # %if.then51
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	(%rax,%r14,8), %r15
	movzwl	2(%r15,%rcx,2), %r10d
	movzwl	(%r15,%rcx,2), %r13d
	movl	%r10d, %r12d
	subl	%r13d, %r12d
	movl	%r12d, %eax
	negl	%eax
	cmovsl	%r12d, %eax
	movzwl	%ax, %eax
	cmpl	%esi, %eax
	jge	.LBB5_22
# %bb.8:                                # %if.then59
                                        #   in Loop: Header=BB5_6 Depth=1
	movzwl	4(%r15,%rcx,2), %ebp
	movl	%r10d, %edi
	subl	%ebp, %edi
	movl	%edi, %eax
	negl	%eax
	cmovsl	%edi, %eax
	cmpl	%r8d, %eax
	jge	.LBB5_22
# %bb.9:                                # %if.then67
                                        #   in Loop: Header=BB5_6 Depth=1
	movzwl	-2(%r15,%rcx,2), %eax
	movl	%r8d, %edx
	movl	%r13d, %r8d
	subl	%eax, %r8d
	movl	%r8d, %edi
	negl	%edi
	cmovsl	%r8d, %edi
	movl	%edx, %r8d
	cmpl	%edx, %edi
	jae	.LBB5_22
# %bb.10:                               # %if.then75
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	$4, %r11d
	je	.LBB5_11
# %bb.12:                               # %if.else
                                        #   in Loop: Header=BB5_6 Depth=1
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movzbl	(%rdx,%r11), %edi
	imull	-28(%rsp), %edi                 # 4-byte Folded Reload
	leal	(%rax,%r12,4), %eax
	subl	%eax, %ebp
	addl	$-5, %ebp
	sarl	$3, %ebp
	cmpl	%ebp, %edi
	cmovll	%edi, %ebp
	movl	$-2, %eax
	subl	%edi, %eax
	cmpl	%eax, %ebp
	cmovgl	%ebp, %eax
	cmpl	$-1, %eax
	je	.LBB5_22
# %bb.13:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	notl	%eax
	addl	%eax, %r13d
	testl	%r13d, %r13d
	jle	.LBB5_14
# %bb.15:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-32(%rsp), %edx                 # 4-byte Reload
	cmpl	%edx, %r13d
	jge	.LBB5_16
.LBB5_17:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	movw	%r13w, (%r15,%rcx,2)
	subl	%eax, %r10d
	testl	%r10d, %r10d
	jle	.LBB5_18
.LBB5_19:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	cmpl	%edx, %r10d
	jl	.LBB5_21
	jmp	.LBB5_20
.LBB5_14:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	xorl	%r13d, %r13d
	movl	-32(%rsp), %edx                 # 4-byte Reload
	cmpl	%edx, %r13d
	jl	.LBB5_17
.LBB5_16:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%edx, %r13d
	movw	%r13w, (%r15,%rcx,2)
	subl	%eax, %r10d
	testl	%r10d, %r10d
	jg	.LBB5_19
.LBB5_18:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	xorl	%r10d, %r10d
	cmpl	%edx, %r10d
	jl	.LBB5_21
.LBB5_20:                               # %if.then113
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	%edx, %r10d
	jmp	.LBB5_21
.LBB5_23:                               # %if.end128
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
	.size	EdgeLoopChromaVer, .Lfunc_end5-EdgeLoopChromaVer
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function EdgeLoopChromaHor
	.type	EdgeLoopChromaHor,@function
EdgeLoopChromaHor:                      # @EdgeLoopChromaHor
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
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r10
	leal	-1(%rcx), %eax
	xorl	%r11d, %r11d
	cmpl	$16, %ecx
	cmovll	%eax, %r11d
	cmpl	$0, 849108(%r10)
	jle	.LBB6_24
# %bb.1:                                # %if.then5.i
	movl	849112(%r10), %ebx
	testl	%r11d, %r11d
	js	.LBB6_3
# %bb.2:                                # %if.else8.i
	movq	%rdx, %r14
	cmpl	%ebx, %r11d
	jl	.LBB6_4
	jmp	.LBB6_24
.LBB6_3:                                # %get_non_aff_neighbor_chroma.exit
	movq	136(%rdx), %r14
	testq	%r14, %r14
	je	.LBB6_24
.LBB6_4:                                # %if.then
	movl	849048(%r10), %ebp
	movslq	%r8d, %r12
	movswl	378(%rdx), %r15d
	movswl	380(%rdx), %eax
	movl	72(%r14,%r12,4), %ecx
	movl	72(%rdx,%r12,4), %edx
	addl	%ecx, %edx
	incl	%edx
	sarl	%edx
	addl	%edx, %r15d
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	cmovlel	%ecx, %r15d
	cmpl	$51, %r15d
	movl	$51, %r8d
	cmovgel	%r8d, %r15d
	addl	%eax, %edx
	testl	%edx, %edx
	cmovlel	%ecx, %edx
	cmpl	$51, %edx
	cmovgel	%r8d, %edx
	movzbl	ALPHA_TABLE(%r15), %ecx
	imull	%ebp, %ecx
	movzbl	BETA_TABLE(%rdx), %edx
	movl	%ebp, -28(%rsp)                 # 4-byte Spill
	imull	%ebp, %edx
	movl	%edx, %eax
	orl	%ecx, %eax
	je	.LBB6_24
# %bb.5:                                # %if.then28
	movslq	268(%r9), %rax
	movl	pelnum_cr+16(,%rax,4), %r8d
	testl	%r8d, %r8d
	jle	.LBB6_24
# %bb.6:                                # %for.body.lr.ph
	movl	849076(%r10,%r12,4), %eax
	movl	%eax, -32(%rsp)                 # 4-byte Spill
	movslq	360(%r9), %rax
	leaq	(%r15,%r15,4), %r9
	addq	$CLIP_TAB, %r9
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	movslq	56(%r14), %r9
	decl	%ebx
	andl	%r11d, %ebx
	movslq	%ebx, %r10
	addq	%r9, %r10
	movq	(%rdi,%r10,8), %r9
	movslq	52(%r14), %r10
	leaq	(%r9,%r10,2), %rdi
	leaq	(%r10,%r10), %r11
	leaq	(%rax,%rax), %r14
	leaq	(%r11,%rax,4), %rbx
	subq	%r14, %r11
	addq	%r9, %r11
	movq	%r11, -16(%rsp)                 # 8-byte Spill
	leaq	(%r14,%r10,2), %rsi
	addq	%r9, %rsi
	addq	%r9, %rbx
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	jmp	.LBB6_7
.LBB6_12:                               # %if.then86
                                        #   in Loop: Header=BB6_7 Depth=1
	addl	%ebp, %r13d
	leal	2(%r13,%rax,2), %r9d
	shrl	$2, %r9d
	movw	%r9w, (%rdi,%r12,2)
	movzwl	(%rsi,%r12,2), %r9d
	leal	(%rax,%rbp,2), %eax
	addl	%eax, %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
.LBB6_22:                               # %if.end134.sink.split
                                        #   in Loop: Header=BB6_7 Depth=1
	movw	%r9w, (%rsi,%r12,2)
	.p2align	4, 0x90
.LBB6_23:                               # %if.end134
                                        #   in Loop: Header=BB6_7 Depth=1
	incq	%r12
	addl	$2, %r15d
	cmpl	%r12d, %r8d
	je	.LBB6_24
.LBB6_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r15d, %eax
	andl	$-4, %eax
	movl	%r12d, %r9d
	andl	$1, %r9d
	orl	%eax, %r9d
	cmpl	$8, %r8d
	cmovnel	%r12d, %r9d
	movslq	%r9d, %rax
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movzbl	(%r9,%rax), %r9d
	testq	%r9, %r9
	je	.LBB6_23
# %bb.8:                                # %if.then58
                                        #   in Loop: Header=BB6_7 Depth=1
	movzwl	(%rsi,%r12,2), %r11d
	movzwl	(%rdi,%r12,2), %r13d
	movl	%r11d, %r10d
	subl	%r13d, %r10d
	movl	%r10d, %ebp
	negl	%ebp
	cmovsl	%r10d, %ebp
	movzwl	%bp, %ebp
	cmpl	%ecx, %ebp
	jge	.LBB6_23
# %bb.9:                                # %if.then65
                                        #   in Loop: Header=BB6_7 Depth=1
	movzwl	(%rbx,%r12,2), %ebp
	subl	%ebp, %r11d
	movl	%r11d, %eax
	negl	%eax
	cmovsl	%r11d, %eax
	cmpl	%edx, %eax
	jge	.LBB6_23
# %bb.10:                               # %if.then74
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movzwl	(%rax,%r12,2), %eax
	movl	%ecx, %r14d
	movq	%rdi, %rcx
	movl	%edx, %edi
	movq	%rbx, %rdx
	movl	%r13d, %ebx
	subl	%eax, %ebx
	movl	%ebx, %r11d
	negl	%r11d
	cmovsl	%ebx, %r11d
	movq	%rdx, %rbx
	movl	%edi, %edx
	movq	%rcx, %rdi
	movl	%r14d, %ecx
	cmpl	%edx, %r11d
	jae	.LBB6_23
# %bb.11:                               # %if.then83
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$4, %r9d
	je	.LBB6_12
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-24(%rsp), %r11                 # 8-byte Reload
	movzbl	(%r11,%r9), %r9d
	imull	-28(%rsp), %r9d                 # 4-byte Folded Reload
	leal	(%rax,%r10,4), %eax
	subl	%eax, %ebp
	addl	$-5, %ebp
	sarl	$3, %ebp
	cmpl	%ebp, %r9d
	cmovll	%r9d, %ebp
	movl	$-2, %eax
	subl	%r9d, %eax
	cmpl	%eax, %ebp
	cmovgl	%ebp, %eax
	cmpl	$-1, %eax
	je	.LBB6_23
# %bb.14:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	notl	%eax
	addl	%eax, %r13d
	testl	%r13d, %r13d
	jg	.LBB6_16
# %bb.15:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%r13d, %r13d
.LBB6_16:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-32(%rsp), %r10d                # 4-byte Reload
	cmpl	%r10d, %r13d
	jl	.LBB6_18
# %bb.17:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	%r10d, %r13d
.LBB6_18:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	movw	%r13w, (%rdi,%r12,2)
	movzwl	(%rsi,%r12,2), %r9d
	subl	%eax, %r9d
	testl	%r9d, %r9d
	jg	.LBB6_20
# %bb.19:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%r9d, %r9d
.LBB6_20:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	%r10d, %r9d
	jl	.LBB6_22
# %bb.21:                               # %if.then121
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	%r10d, %r9d
	jmp	.LBB6_22
.LBB6_24:                               # %if.end137
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
	.size	EdgeLoopChromaHor, .Lfunc_end6-EdgeLoopChromaHor
	.cfi_endproc
                                        # -- End function
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

	.type	ALPHA_TABLE,@object             # @ALPHA_TABLE
	.p2align	4, 0x0
ALPHA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\004\005\006\007\b\t\n\f\r\017\021\024\026\031\034 $(-28?GPZeq\177\220\242\266\313\342\377\377"
	.size	ALPHA_TABLE, 52

	.type	BETA_TABLE,@object              # @BETA_TABLE
	.p2align	4, 0x0
BETA_TABLE:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002\002\002\003\003\003\003\004\004\004\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r\016\016\017\017\020\020\021\021\022\022"
	.size	BETA_TABLE, 52

	.type	CLIP_TAB,@object                # @CLIP_TAB
	.p2align	4, 0x0
CLIP_TAB:
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.zero	5
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\000\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\000\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\001\001"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\001\002\002"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\001\002\003\003"
	.ascii	"\000\002\002\003\003"
	.ascii	"\000\002\002\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\002\003\004\004"
	.ascii	"\000\003\003\005\005"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\003\004\006\006"
	.ascii	"\000\004\005\007\007"
	.ascii	"\000\004\005\b\b"
	.ascii	"\000\004\006\t\t"
	.ascii	"\000\005\007\n\n"
	.ascii	"\000\006\b\013\013"
	.ascii	"\000\006\b\r\r"
	.ascii	"\000\007\n\016\016"
	.ascii	"\000\b\013\020\020"
	.ascii	"\000\t\f\022\022"
	.ascii	"\000\n\r\024\024"
	.ascii	"\000\013\017\027\027"
	.ascii	"\000\r\021\031\031"
	.size	CLIP_TAB, 260

	.type	pelnum_cr,@object               # @pelnum_cr
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
pelnum_cr:
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	0                               # 0x0
	.long	8                               # 0x8
	.long	8                               # 0x8
	.long	16                              # 0x10
	.size	pelnum_cr, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
