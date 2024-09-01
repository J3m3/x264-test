	.text
	.file	"timecode.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function open_file
.LCPI0_0:
	.quad	0x3f50624dd2f1a9fc              # double 0.001
.LCPI0_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_2:
	.quad	0x4024000000000000              # double 10
.LCPI0_5:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI0_7:
	.quad	0x3ed4f8b588e368f1              # double 5.0000000000000004E-6
.LCPI0_8:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI0_9:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_14:
	.quad	0x0000000000000000              # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_4:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI0_6:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI0_10:
	.quad	4294967295                      # 0xffffffff
	.quad	4294967295                      # 0xffffffff
.LCPI0_11:
	.quad	4841369599423283200             # 0x4330000000000000
	.quad	4841369599423283200             # 0x4330000000000000
.LCPI0_12:
	.quad	4985484787499139072             # 0x4530000000000000
	.quad	4985484787499139072             # 0x4530000000000000
.LCPI0_13:
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.p2align	4, 0x90
	.type	open_file,@function
open_file:                              # @open_file
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
	subq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 448
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$128, %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_96
# %bb.1:                                # %if.end
	movq	%rax, %rbp
	movq	input@GOTPCREL(%rip), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rbp)
	movupd	(%rax), %xmm0
	movupd	16(%rax), %xmm1
	movupd	32(%rax), %xmm2
	movupd	%xmm2, 32(%rbp)
	movupd	%xmm1, 16(%rbp)
	movupd	%xmm0, (%rbp)
	movq	(%r14), %rdi
	movq	%rdi, 56(%rbp)
	callq	*8(%rax)
	movl	%eax, 64(%rbp)
	movl	24(%r12), %eax
	movl	%eax, 96(%rbp)
	movq	16(%r12), %rdi
	testq	%rdi, %rdi
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	je	.LBB0_4
# %bb.2:                                # %if.then7
	movq	%r15, %rbx
	leaq	80(%rbp), %r15
	leaq	88(%rbp), %r13
	movl	$.L.str.1, %esi
	movq	%r15, %rdx
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	%eax, %ebp
	cmpl	$1, %eax
	jne	.LBB0_5
# %bb.3:                                # %if.then10
	movq	16(%r12), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoul@PLT
	movq	%rax, (%r15)
	shrq	$32, %rax
	je	.LBB0_6
	jmp	.LBB0_95
.LBB0_4:                                # %if.end22.thread
	leaq	68(%rbp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movabsq	$4294967297, %rax               # imm = 0x100000001
	movq	%rax, 68(%rbp)
	leaq	72(%rbp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movl	$1, %eax
	jmp	.LBB0_8
.LBB0_5:                                # %if.end14thread-pre-split
	movq	(%r15), %rax
	shrq	$32, %rax
	jne	.LBB0_95
.LBB0_6:                                # %lor.lhs.false
	cmpl	$0, 4(%r13)
	jne	.LBB0_95
# %bb.7:                                # %if.end22
	movq	16(%rsp), %rdx                  # 8-byte Reload
	leaq	68(%rdx), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$2, %ebp
	setl	%al
	leaq	72(%rdx), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	xorl	%ecx, %ecx
	testl	%ebp, %ebp
	movq	%rdx, %rbp
	sete	%cl
	movl	%ecx, 68(%rdx)
	movl	%eax, 72(%rdx)
	movq	%rbx, %r15
	movq	96(%rsp), %rbx                  # 8-byte Reload
	jne	.LBB0_9
.LBB0_8:                                # %if.then27
	movl	8(%rbx), %ecx
	movq	%rcx, 80(%rbp)
.LBB0_9:                                # %if.end30
	testl	%eax, %eax
	je	.LBB0_11
# %bb.10:                               # %if.then33
	movq	$0, 88(%rbp)
.LBB0_11:                               # %if.end35
	movq	16(%rbp), %rax
	movq	%rax, timecode_input+16(%rip)
	movq	40(%rbp), %rax
	movq	%rax, timecode_input+40(%rip)
	movq	%rbp, (%r14)
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	callq	fopen64@PLT
	testq	%rax, %rax
	je	.LBB0_101
# %bb.12:                               # %if.else
	movq	%rax, %r14
	leaq	108(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_fscanf@PLT
	cmpl	$1, %eax
	jne	.LBB0_93
# %bb.13:                               # %lor.lhs.false.i
	movl	108(%rsp), %eax
	leal	-3(%rax), %ecx
	cmpl	$-3, %ecx
	jbe	.LBB0_93
# %bb.14:                               # %if.end.i
	cmpl	$1, %eax
	jne	.LBB0_38
# %bb.15:                               # %if.then5.i
	movl	96(%rbp), %eax
	movl	%eax, (%rsp)
	movq	%rbp, %rax
	addq	$112, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	$0, 112(%rbp)
	leaq	128(%rsp), %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movl	$2, %r12d
	testq	%rax, %rax
	je	.LBB0_20
# %bb.16:                               # %for.body.i.preheader
	movabsq	$34359747584, %rbx              # imm = 0x800002400
	leaq	128(%rsp), %r15
	.p2align	4, 0x90
.LBB0_17:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_98
# %bb.18:                               # %for.body.i
                                        #   in Loop: Header=BB0_17 Depth=1
	btq	%rax, %rbx
	jae	.LBB0_98
# %bb.19:                               # %for.inc.i
                                        #   in Loop: Header=BB0_17 Depth=1
	incl	%r12d
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	testq	%rax, %rax
	jne	.LBB0_17
.LBB0_20:                               # %for.end.i
	movq	24(%rsp), %rax                  # 8-byte Reload
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_175
# %bb.21:                               # %if.end43.i
	movq	%r14, %rdi
	callq	ftell@PLT
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	$0, 100(%rbp)
	leaq	128(%rsp), %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	testq	%rax, %rax
	je	.LBB0_63
# %bb.22:                               # %for.body50.i.preheader
	movl	$-1, %r15d
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
	movl	$-1, %ebx
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_25 Depth=1
	movl	%ebx, %ebp
	movl	%r15d, %r13d
.LBB0_24:                               # %for.inc105.i
                                        #   in Loop: Header=BB0_25 Depth=1
	incl	%r12d
	leaq	128(%rsp), %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movl	%r13d, %r15d
	movl	%ebp, %ebx
	testq	%rax, %rax
	movq	16(%rsp), %rbp                  # 8-byte Reload
	je	.LBB0_64
.LBB0_25:                               # %for.body50.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_29
# %bb.26:                               # %for.body50.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movabsq	$34359747584, %rcx              # imm = 0x800002400
	btq	%rax, %rcx
	jae	.LBB0_29
# %bb.27:                               # %if.then65.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$.L.str.12, %esi
	leaq	128(%rsp), %rdi
	movq	%rsp, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB0_23
# %bb.28:                               # %if.then70.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	(%rsp), %eax
	subl	96(%rbp), %eax
	incl	%eax
	movl	%eax, 100(%rbp)
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_29:                               # %if.end74.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	$.L.str.13, %esi
	leaq	128(%rsp), %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$-1, %eax
	je	.LBB0_31
# %bb.30:                               # %if.end74.i
                                        #   in Loop: Header=BB0_25 Depth=1
	cmpl	$3, %eax
	jne	.LBB0_198
.LBB0_31:                               # %if.end84.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movl	4(%rsp), %ebp
	movl	(%rsp), %r13d
	cmpl	%r13d, %ebp
	jg	.LBB0_184
# %bb.32:                               # %if.end84.i
                                        #   in Loop: Header=BB0_25 Depth=1
	cmpl	%ebx, %ebp
	jle	.LBB0_184
# %bb.33:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_25 Depth=1
	cmpl	%r15d, %r13d
	jle	.LBB0_184
# %bb.34:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_25 Depth=1
	xorpd	%xmm0, %xmm0
	ucomisd	80(%rsp), %xmm0
	jae	.LBB0_184
# %bb.35:                               # %if.end99.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_37
# %bb.36:                               # %lor.lhs.false100.i
                                        #   in Loop: Header=BB0_25 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_24
.LBB0_37:                               # %if.then102.i
                                        #   in Loop: Header=BB0_25 Depth=1
	incl	48(%rsp)                        # 4-byte Folded Spill
	jmp	.LBB0_24
.LBB0_38:                               # %if.else.i
	movq	%r14, %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	movl	$0, 100(%rbp)
	leaq	128(%rsp), %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	testq	%rax, %rax
	je	.LBB0_48
# %bb.39:                               # %while.body.lr.ph.i.preheader
	xorl	%ebx, %ebx
	leaq	128(%rsp), %r12
	movabsq	$34359747584, %r13              # imm = 0x800002400
	.p2align	4, 0x90
.LBB0_40:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_42
# %bb.41:                               # %while.body.i
                                        #   in Loop: Header=BB0_40 Depth=1
	btq	%rax, %r13
	jb	.LBB0_46
.LBB0_42:                               # %if.end377.i
                                        #   in Loop: Header=BB0_40 Depth=1
	cmpl	96(%rbp), %ebx
	jl	.LBB0_44
# %bb.43:                               # %if.then381.i
                                        #   in Loop: Header=BB0_40 Depth=1
	incl	100(%rbp)
.LBB0_44:                               # %if.end384.i
                                        #   in Loop: Header=BB0_40 Depth=1
	incl	%ebx
.LBB0_45:                               # %if.end376.i
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	%r12, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	testq	%rax, %rax
	jne	.LBB0_40
	jmp	.LBB0_48
.LBB0_46:                               # %if.then372.i
                                        #   in Loop: Header=BB0_40 Depth=1
	testl	%ebx, %ebx
	jne	.LBB0_45
# %bb.47:                               # %if.then374.i
                                        #   in Loop: Header=BB0_40 Depth=1
	movq	%r14, %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	jmp	.LBB0_45
.LBB0_48:                               # %while.end.i
	movslq	100(%rbp), %rax
	movslq	96(%rbp), %rbx
	addq	%rax, %rbx
	testl	%ebx, %ebx
	je	.LBB0_174
# %bb.49:                               # %if.end392.i
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	leaq	(,%rbx,8), %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_193
# %bb.50:                               # %if.end399.i
	movq	%rax, %r12
	leaq	128(%rsp), %r15
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB0_181
# %bb.51:                               # %for.cond410.preheader.i
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	cmpl	$2, %ebx
	jl	.LBB0_61
# %bb.52:                               # %for.body413.lr.ph.preheader.i
	movl	24(%rsp), %eax                  # 4-byte Reload
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movb	$1, %al
	movl	$1, %r15d
	leaq	128(%rsp), %r13
	movabsq	$34359747584, %rbx              # imm = 0x800002400
	.p2align	4, 0x90
.LBB0_53:                               # %for.body413.lr.ph.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_54 Depth 2
	testb	$1, %al
	je	.LBB0_56
	.p2align	4, 0x90
.LBB0_54:                               # %for.body413.us.i
                                        #   Parent Loop BB0_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_58
# %bb.55:                               # %for.body413.us.i
                                        #   in Loop: Header=BB0_54 Depth=2
	btq	%rax, %rbx
	jb	.LBB0_54
	jmp	.LBB0_58
	.p2align	4, 0x90
.LBB0_56:                               # %for.body413.lr.ph.split.i
                                        #   in Loop: Header=BB0_53 Depth=1
	movq	%r13, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_58
# %bb.57:                               # %for.body413.lr.ph.split.i
                                        #   in Loop: Header=BB0_53 Depth=1
	btq	%rax, %rbx
	jb	.LBB0_61
.LBB0_58:                               # %if.end431.i
                                        #   in Loop: Header=BB0_53 Depth=1
	leaq	(%r12,%r15,8), %rbp
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movsd	(%r12,%r15,8), %xmm0            # xmm0 = mem[0],zero
	mulsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, (%r12,%r15,8)
	cmpl	$1, %eax
	jne	.LBB0_185
# %bb.59:                               # %lor.lhs.false441.i
                                        #   in Loop: Header=BB0_53 Depth=1
	movsd	-8(%rbp), %xmm1                 # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_185
# %bb.60:                               # %if.end451.i
                                        #   in Loop: Header=BB0_53 Depth=1
	incq	%r15
	cmpq	24(%rsp), %r15                  # 8-byte Folded Reload
	setl	%al
	cmpq	48(%rsp), %r15                  # 8-byte Folded Reload
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jne	.LBB0_53
.LBB0_61:                               # %for.end453.i
	movq	24(%rsp), %r13                  # 8-byte Reload
	cmpl	$1, %r13d
	jne	.LBB0_71
# %bb.62:                               # %if.end555.thread.i
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movl	4(%rbx), %eax
	movq	%rax, 88(%rbp)
	xorl	%r15d, %r15d
	jmp	.LBB0_107
.LBB0_63:
	movl	$0, 48(%rsp)                    # 4-byte Folded Spill
.LBB0_64:                               # %for.end107.i
	movl	96(%rbp), %eax
	movl	100(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.LBB0_66
# %bb.65:                               # %if.then110.i
	movl	(%rsp), %ebx
	subl	%eax, %ebx
	incl	%ebx
	movl	%ebx, 100(%rbp)
.LBB0_66:                               # %if.end115.i
	addl	%eax, %ebx
	movq	%r14, %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	xorl	%edx, %edx
	callq	fseek@PLT
	movslq	%ebx, %rdi
	shlq	$3, %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_193
# %bb.67:                               # %if.end124.i
	movq	%rax, %r12
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_69
# %bb.68:                               # %lor.lhs.false127.i
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_110
.LBB0_69:                               # %if.then130.i
	movslq	48(%rsp), %rax                  # 4-byte Folded Reload
	leaq	8(,%rax,8), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB0_111
# %bb.70:
	xorl	%r15d, %r15d
	jmp	.LBB0_190
.LBB0_71:                               # %if.else458.i
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	movq	96(%rsp), %rbx                  # 8-byte Reload
	je	.LBB0_108
# %bb.72:                               # %if.then461.i
	movslq	%r13d, %rax
	leaq	-8(,%rax,8), %rdi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB0_186
# %bb.73:                               # %for.cond469.preheader.i
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leal	-1(%r13), %eax
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	cmpl	$2, %r13d
	jl	.LBB0_102
# %bb.74:                               # %for.body473.lr.ph.i
	movl	32(%rsp), %r15d                 # 4-byte Reload
	movq	88(%rbp), %rax
	xorl	%r13d, %r13d
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jmp	.LBB0_76
.LBB0_92:                               # %if.then527.i
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$0, (%rcx)
.LBB0_75:                               # %for.inc538.i
                                        #   in Loop: Header=BB0_76 Depth=1
	incq	%r13
	cmpq	%r15, %r13
	je	.LBB0_102
.LBB0_76:                               # %for.body473.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_79 Depth 2
                                        #     Child Loop BB0_84 Depth 2
	movsd	8(%r12,%r13,8), %xmm2           # xmm2 = mem[0],zero
	subsd	(%r12,%r13,8), %xmm2
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movsd	%xmm0, (%rcx,%r13,8)
	testl	%eax, %eax
	js	.LBB0_75
# %bb.77:                               # %if.then487.i
                                        #   in Loop: Header=BB0_76 Depth=1
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	callq	log10@PLT
	callq	floor@PLT
	movapd	%xmm0, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movq	80(%rbp), %rbx
	movq	%rbx, %xmm0
	punpckldq	.LCPI0_3(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI0_4(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movapd	%xmm1, 48(%rsp)                 # 16-byte Spill
	mulsd	%xmm1, %xmm0
	callq	round@PLT
	movsd	72(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI0_5(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	jne	.LBB0_82
# %bb.78:                               # %lor.lhs.false503.i.preheader
                                        #   in Loop: Header=BB0_76 Depth=1
	leaq	(%rbx,%rbx), %rbp
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	48(%rsp), %xmm1                 # 16-byte Reload
	.p2align	4, 0x90
.LBB0_79:                               # %lor.lhs.false503.i
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rsi, %xmm0
	divsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	subsd	%xmm3, %xmm0
	andpd	.LCPI0_6(%rip), %xmm0
	movsd	.LCPI0_7(%rip), %xmm1           # xmm1 = [5.0000000000000004E-6,0.0E+0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_81
# %bb.80:                               # %while.cond493.i
                                        #   in Loop: Header=BB0_79 Depth=2
	movapd	%xmm3, %xmm1
	movq	%rbp, %xmm0
	punpckldq	.LCPI0_3(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI0_4(%rip), %xmm0
	movapd	%xmm0, %xmm3
	unpckhpd	%xmm0, %xmm3                    # xmm3 = xmm3[1],xmm0[1]
	addsd	%xmm0, %xmm3
	movapd	%xmm3, 48(%rsp)                 # 16-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	%xmm3, %xmm0
	callq	round@PLT
	movapd	48(%rsp), %xmm1                 # 16-byte Reload
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	72(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI0_5(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	addq	%rbx, %rbp
	testq	%rax, %rax
	je	.LBB0_79
	jmp	.LBB0_82
.LBB0_81:                               # %while.end514.i
                                        #   in Loop: Header=BB0_76 Depth=1
	testq	%rsi, %rsi
	je	.LBB0_90
	.p2align	4, 0x90
.LBB0_82:                               # %land.lhs.true516.i
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	88(%rbp), %rcx
	movq	%rcx, %rax
	movq	%rsi, %rdx
	testq	%rcx, %rcx
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jne	.LBB0_84
	jmp	.LBB0_91
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_84 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_86
.LBB0_84:                               # %while.body.i.i.i
                                        #   Parent Loop BB0_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rdi
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB0_85
# %bb.83:                               #   in Loop: Header=BB0_84 Depth=2
	cqto
	idivq	%rdi
	movq	%rdi, %rax
	testq	%rdx, %rdx
	jne	.LBB0_84
.LBB0_86:                               # %lcm.exit.i
                                        #   in Loop: Header=BB0_76 Depth=1
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB0_88
# %bb.87:                               #   in Loop: Header=BB0_76 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%rdi
	jmp	.LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_76 Depth=1
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
.LBB0_89:                               # %cond.end.i
                                        #   in Loop: Header=BB0_76 Depth=1
	imulq	%rsi, %rax
	movq	%rax, 88(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	je	.LBB0_75
	jmp	.LBB0_92
.LBB0_90:                               #   in Loop: Header=BB0_76 Depth=1
	xorl	%esi, %esi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
.LBB0_91:                               # %cond.false.i
                                        #   in Loop: Header=BB0_76 Depth=1
	movslq	%esi, %rax
	movq	%rax, 88(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	je	.LBB0_75
	jmp	.LBB0_92
.LBB0_93:                               # %if.then.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.7, %edi
	movl	$46, %esi
.LBB0_94:                               # %if.then52
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_193
.LBB0_95:                               # %if.then19
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.2, %edi
	movl	$63, %esi
	jmp	.LBB0_97
.LBB0_96:                               # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str, %edi
	movl	$32, %esi
.LBB0_97:                               # %cleanup
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_196
.LBB0_98:                               # %if.end22.i
	leaq	128(%rsp), %rdi
	movl	$.L.str.8, %esi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB0_20
# %bb.99:                               # %land.lhs.true28.i
	leaq	128(%rsp), %rdi
	movl	$.L.str.9, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB0_20
# %bb.100:                              # %if.then34.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.10, %edi
	movl	$62, %esi
	jmp	.LBB0_94
.LBB0_101:                              # %if.then40
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.4, %esi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_196
.LBB0_102:                              # %for.end540.i
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	movq	64(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_105
# %bb.103:                              # %land.lhs.true543.i
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_105
# %bb.104:                              # %if.then546.i
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movl	32(%rsp), %edx                  # 4-byte Reload
	callq	try_mkv_timebase_den
	testl	%eax, %eax
	js	.LBB0_190
.LBB0_105:                              # %if.end553.i
	movq	%r15, %rdi
	callq	free@PLT
	movq	24(%rsp), %r13                  # 8-byte Reload
	cmpl	$1, %r13d
	jg	.LBB0_109
.LBB0_106:                              # %if.end555.i.if.else568.i_crit_edge
	movl	4(%rbx), %eax
.LBB0_107:                              # %if.else568.i
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	8(%rbx), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rbp)
	movsd	-8(%r12,%r13,8), %xmm0          # xmm0 = mem[0],zero
	jmp	.LBB0_139
.LBB0_108:
	xorl	%r15d, %r15d
	cmpl	$1, %r13d
	jle	.LBB0_106
.LBB0_109:                              # %if.then558.i
	movl	%r13d, %eax
	movsd	-8(%r12,%rax,8), %xmm0          # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm1
	subsd	-16(%r12,%rax,8), %xmm1
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	divsd	%xmm1, %xmm2
	movsd	%xmm2, 112(%rbp)
	jmp	.LBB0_139
.LBB0_110:
	xorl	%r15d, %r15d
.LBB0_111:                              # %if.end138.i
	movsd	112(%rbp), %xmm0                # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	callq	correct_fps
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_190
# %bb.112:                              # %if.end144.i
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movq	$0, (%r12)
	leal	-1(%rbx), %r8d
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
	cmpl	$2, %ebx
	movl	%r8d, 48(%rsp)                  # 4-byte Spill
	jl	.LBB0_135
# %bb.113:                              # %for.body150.lr.ph.lr.ph.i
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	divsd	%xmm0, %xmm1
	movl	%r8d, %ebp
	leaq	128(%rsp), %r15
	movabsq	$34359747584, %r13              # imm = 0x800002400
	xorl	%ebx, %ebx
	movl	$0, 32(%rsp)                    # 4-byte Folded Spill
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 72(%rsp)                 # 8-byte Spill
	jmp	.LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_115 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	%r8d, %ebx
	jge	.LBB0_135
	.p2align	4, 0x90
.LBB0_115:                              # %for.body150.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_132 Depth 2
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_117
# %bb.116:                              # %for.body150.us.i
                                        #   in Loop: Header=BB0_115 Depth=1
	btq	%rax, %r13
	jb	.LBB0_115
.LBB0_117:                              # %if.end168.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	jne	.LBB0_119
# %bb.118:                              # %if.end168.if.end175_crit_edge.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movl	4(%rsp), %eax
	movl	48(%rsp), %r8d                  # 4-byte Reload
	cmpl	%r8d, %ebx
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jl	.LBB0_120
	jmp	.LBB0_125
.LBB0_119:                              # %if.then173.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movl	48(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, (%rsp)
	movl	%r8d, 4(%rsp)
	movl	%r8d, %eax
	cmpl	%r8d, %ebx
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jge	.LBB0_125
.LBB0_120:                              # %if.end175.i
                                        #   in Loop: Header=BB0_115 Depth=1
	cmpl	%eax, %ebx
	jge	.LBB0_125
# %bb.121:                              # %for.body182.preheader.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movslq	%ebx, %rdx
	cltq
	movsd	(%r12,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	incq	%rdx
	.p2align	4, 0x90
.LBB0_122:                              # %for.body182.i
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%r12,%rdx,8)
	incl	%ebx
	cmpq	%rbp, %rdx
	jge	.LBB0_124
# %bb.123:                              # %for.body182.i
                                        #   in Loop: Header=BB0_122 Depth=2
	leaq	1(%rcx), %rdx
	cmpq	%rax, %rcx
	jl	.LBB0_122
.LBB0_124:                              # %for.end190.loopexit.i
                                        #   in Loop: Header=BB0_115 Depth=1
	cmpq	%rbp, %rcx
	jge	.LBB0_114
	jmp	.LBB0_126
.LBB0_125:                              # %for.end190.i
                                        #   in Loop: Header=BB0_115 Depth=1
	cmpl	%r8d, %ebx
	jge	.LBB0_114
.LBB0_126:                              # %if.then194.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_128
# %bb.127:                              # %lor.lhs.false197.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_134
.LBB0_128:                              # %if.then200.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movl	32(%rsp), %ecx                  # 4-byte Reload
	movslq	%ecx, %rax
	incl	%ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movsd	%xmm0, (%rcx,%rax,8)
.LBB0_129:                              # %if.end204.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	correct_fps
	movsd	%xmm0, 80(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_182
# %bb.130:                              # %if.end209.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movl	4(%rsp), %ebx
	movslq	(%rsp), %rax
	cmpl	%eax, %ebx
	setg	%cl
	movl	48(%rsp), %r8d                  # 4-byte Reload
	cmpl	%r8d, %ebx
	setge	%dl
	orb	%cl, %dl
	jne	.LBB0_114
# %bb.131:                              # %for.body218.lr.ph.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movslq	%ebx, %rcx
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	divsd	%xmm0, %xmm1
	movsd	(%r12,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB0_132:                              # %for.body218.i
                                        #   Parent Loop BB0_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm1, %xmm0
	leaq	1(%rcx), %rbx
	movsd	%xmm0, 8(%r12,%rcx,8)
	cmpq	%rax, %rcx
	jge	.LBB0_114
# %bb.133:                              # %for.body218.i
                                        #   in Loop: Header=BB0_132 Depth=2
	movq	%rbx, %rcx
	cmpq	%rbp, %rbx
	jl	.LBB0_132
	jmp	.LBB0_114
.LBB0_134:                              # %lor.lhs.false197.if.end204_crit_edge.i
                                        #   in Loop: Header=BB0_115 Depth=1
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	jmp	.LBB0_129
.LBB0_135:                              # %for.end230.i
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	je	.LBB0_154
# %bb.136:
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
.LBB0_137:                              # %if.then336.i
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r15, %rdi
	callq	free@PLT
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	48(%rsp), %r8d                  # 4-byte Reload
.LBB0_138:                              # %if.end337.i
	movsd	%xmm0, 112(%rbp)
	movslq	%r8d, %rax
	movsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
.LBB0_139:                              # %cleanup580.i
	movsd	%xmm0, 120(%rbp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_148
# %bb.140:                              # %lor.lhs.false586.i
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	jne	.LBB0_148
# %bb.141:                              # %if.else601.i
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	88(%rbp), %rcx
	addq	%rax, %rcx
	incq	%rax
	cmpq	%rax, %rcx
	jb	.LBB0_183
.LBB0_142:                              # %if.end611.i
	movslq	100(%rbp), %rbx
	leaq	(,%rbx,8), %rdi
	callq	malloc@PLT
	movq	%rax, 104(%rbp)
	testq	%rax, %rax
	je	.LBB0_190
# %bb.143:                              # %if.end619.i
	movslq	96(%rbp), %rcx
	movsd	88(%rbp), %xmm1                 # xmm1 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI0_4(%rip), %xmm3           # xmm3 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	80(%rbp), %xmm1                 # xmm1 = mem[0],zero
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	subpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	addsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	(%r12,%rcx,8), %xmm0
	movq	$0, (%rax)
	cmpl	$2, %ebx
	movq	96(%rsp), %rbx                  # 8-byte Reload
	jl	.LBB0_147
# %bb.144:                              # %for.body636.i.preheader
	addsd	.LCPI0_9(%rip), %xmm0
	cvttsd2si	%xmm0, %rcx
	movl	$1, %edx
	movdqa	.LCPI0_10(%rip), %xmm0          # xmm0 = [4294967295,4294967295]
	movdqa	.LCPI0_11(%rip), %xmm1          # xmm1 = [4841369599423283200,4841369599423283200]
	movdqa	.LCPI0_12(%rip), %xmm2          # xmm2 = [4985484787499139072,4985484787499139072]
	movapd	.LCPI0_13(%rip), %xmm3          # xmm3 = [1.9342813118337666E+25,1.9342813118337666E+25]
	movsd	.LCPI0_9(%rip), %xmm4           # xmm4 = [5.0E-1,0.0E+0]
	.p2align	4, 0x90
.LBB0_145:                              # %for.body636.i
                                        # =>This Inner Loop Header: Depth=1
	movslq	96(%rbp), %rsi
	addq	%rdx, %rsi
	movdqu	80(%rbp), %xmm5
	movdqa	%xmm5, %xmm6
	pand	%xmm0, %xmm6
	por	%xmm1, %xmm6
	psrlq	$32, %xmm5
	por	%xmm2, %xmm5
	subpd	%xmm3, %xmm5
	addpd	%xmm6, %xmm5
	movapd	%xmm5, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	divsd	%xmm5, %xmm6
	mulsd	(%r12,%rsi,8), %xmm6
	addsd	%xmm4, %xmm6
	cvttsd2si	%xmm6, %rsi
	movq	%rsi, (%rax,%rdx,8)
	movq	104(%rbp), %rax
	subq	%rcx, (%rax,%rdx,8)
	movq	104(%rbp), %rax
	movq	(%rax,%rdx,8), %rsi
	cmpq	-8(%rax,%rdx,8), %rsi
	jle	.LBB0_189
# %bb.146:                              # %for.inc667.i
                                        #   in Loop: Header=BB0_145 Depth=1
	incq	%rdx
	movslq	100(%rbp), %rsi
	cmpq	%rsi, %rdx
	jl	.LBB0_145
.LBB0_147:                              # %if.end58
	movq	%r12, %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	fclose@PLT
	movdqu	80(%rbp), %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 32(%rbx)
	movl	$1, 40(%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_197
.LBB0_148:                              # %if.then589.i
	movq	80(%rbp), %rsi
	movq	88(%rbp), %rcx
	movq	%rsi, %rax
	movq	%rcx, %rdx
	jmp	.LBB0_150
	.p2align	4, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_150 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB0_152
.LBB0_150:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rdi
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	je	.LBB0_151
# %bb.149:                              #   in Loop: Header=BB0_150 Depth=1
	cqto
	idivq	%rdi
	movq	%rdi, %rax
	testq	%rdx, %rdx
	jne	.LBB0_150
.LBB0_152:                              # %gcd.exit.i
	movq	%rsi, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB0_176
# %bb.153:
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%edi
	movl	%eax, %r8d
	jmp	.LBB0_177
.LBB0_154:                              # %lor.lhs.false233.i
	movq	88(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, (%rax)
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_188
# %bb.155:                              # %if.then246.i
	movq	112(%rbp), %xmm0                # xmm0 = mem[0],zero
	movslq	32(%rsp), %rdx                  # 4-byte Folded Reload
	movq	%xmm0, (%r15,%rdx,8)
	incl	%edx
	movq	%r15, %rdi
	movq	%rbp, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	try_mkv_timebase_den
	testl	%eax, %eax
	js	.LBB0_190
# %bb.156:                              # %if.end252.i
	movq	%r14, %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	xorl	%edx, %edx
	callq	fseek@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	callq	log10@PLT
	callq	floor@PLT
	movaps	%xmm0, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	callq	round@PLT
	divsd	72(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	.LCPI0_8(%rip), %xmm1           # xmm1 = [1.0E+9,0.0E+0]
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cmpl	$2, 120(%rsp)                   # 4-byte Folded Reload
	jl	.LBB0_137
# %bb.157:                              # %for.body263.lr.ph.lr.ph.i
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	divsd	%xmm0, %xmm2
	movl	48(%rsp), %r13d                 # 4-byte Reload
	leaq	128(%rsp), %r15
	movabsq	$34359747584, %rbp              # imm = 0x800002400
	xorl	%ebx, %ebx
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	jmp	.LBB0_159
.LBB0_158:                              # %for.cond259.loopexit.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movl	%eax, %ebx
	cmpl	%r8d, %eax
	jge	.LBB0_187
	.p2align	4, 0x90
.LBB0_159:                              # %for.body263.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_166 Depth 2
                                        #     Child Loop BB0_168 Depth 2
                                        #     Child Loop BB0_171 Depth 2
	movq	%r15, %rdi
	movl	$256, %esi                      # imm = 0x100
	movq	%r14, %rdx
	callq	fgets@PLT
	movzbl	128(%rsp), %eax
	cmpq	$35, %rax
	ja	.LBB0_161
# %bb.160:                              # %for.body263.us.i
                                        #   in Loop: Header=BB0_159 Depth=1
	btq	%rax, %rbp
	jb	.LBB0_159
.LBB0_161:                              # %if.end281.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movl	$.L.str.13, %esi
	movq	%r15, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	leaq	80(%rsp), %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	je	.LBB0_163
# %bb.162:                              # %if.then286.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movl	48(%rsp), %eax                  # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%eax, 4(%rsp)
.LBB0_163:                              # %if.end288.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	callq	floor@PLT
	movaps	%xmm0, %xmm1
	movsd	.LCPI0_2(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	72(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI0_8(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	callq	round@PLT
	divsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	.LCPI0_8(%rip), %xmm1           # xmm1 = [1.0E+9,0.0E+0]
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)
	movl	4(%rsp), %eax
	movl	48(%rsp), %r8d                  # 4-byte Reload
	cmpl	%eax, %r8d
	movl	%eax, %edx
	cmovll	%r8d, %edx
	cmpl	%edx, %ebx
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jge	.LBB0_169
# %bb.164:                              # %for.body301.preheader.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movslq	%ebx, %rsi
	movsd	(%r12,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	movl	%edx, %edi
	subl	%ebx, %edi
	andl	$3, %edi
	je	.LBB0_173
# %bb.165:                              # %for.body301.i.prol.preheader
                                        #   in Loop: Header=BB0_159 Depth=1
	shll	$3, %edi
	movq	%rsi, %rcx
	.p2align	4, 0x90
.LBB0_166:                              # %for.body301.i.prol
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%r12,%rcx,8)
	incq	%rcx
	addq	$-8, %rdi
	jne	.LBB0_166
# %bb.167:                              # %for.body301.i.prol.loopexit
                                        #   in Loop: Header=BB0_159 Depth=1
	movslq	%edx, %rdx
	subq	%rdx, %rsi
	cmpq	$-4, %rsi
	ja	.LBB0_169
	.p2align	4, 0x90
.LBB0_168:                              # %for.body301.i
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%r12,%rcx,8)
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 16(%r12,%rcx,8)
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%r12,%rcx,8)
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 32(%r12,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB0_168
.LBB0_169:                              # %for.cond312.preheader.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movslq	(%rsp), %rcx
	cmpl	%ecx, %eax
	setg	%dl
	cmpl	%r8d, %eax
	setge	%sil
	orb	%dl, %sil
	jne	.LBB0_158
# %bb.170:                              # %for.body320.lr.ph.i
                                        #   in Loop: Header=BB0_159 Depth=1
	movslq	%eax, %rdx
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	divsd	%xmm1, %xmm0
	movsd	(%r12,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB0_171:                              # %for.body320.i
                                        #   Parent Loop BB0_159 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addsd	%xmm0, %xmm1
	leaq	1(%rdx), %rax
	movsd	%xmm1, 8(%r12,%rdx,8)
	cmpq	%rcx, %rdx
	jge	.LBB0_158
# %bb.172:                              # %for.body320.i
                                        #   in Loop: Header=BB0_171 Depth=2
	movq	%rax, %rdx
	cmpq	%r13, %rax
	jl	.LBB0_171
	jmp	.LBB0_158
.LBB0_173:                              #   in Loop: Header=BB0_159 Depth=1
	movq	%rsi, %rcx
	movslq	%edx, %rdx
	subq	%rdx, %rsi
	cmpq	$-4, %rsi
	jbe	.LBB0_168
	jmp	.LBB0_169
.LBB0_174:                              # %if.then390.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.16, %edi
	movl	$59, %esi
	jmp	.LBB0_94
.LBB0_175:                              # %if.then40.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.11, %esi
	movb	$1, %al
	callq	fprintf@PLT
	jmp	.LBB0_193
.LBB0_176:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	movq	%rax, %r8
.LBB0_177:
	movq	%r8, 80(%rbp)
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB0_179
# %bb.178:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_180
.LBB0_179:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rdi
.LBB0_180:
	movq	%rax, 88(%rbp)
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.20, %esi
	movq	%r8, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_142
.LBB0_181:                              # %if.then407.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.18, %edi
	movl	$51, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_186
.LBB0_182:
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB0_190
.LBB0_183:                              # %if.then608.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.21, %edi
	movl	$116, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_190
.LBB0_184:                              # %if.then96.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	128(%rsp), %rcx
	movl	$.L.str.15, %esi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	16(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB0_193
.LBB0_185:                              # %if.then449.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.19, %esi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	16(%rsp), %rbp                  # 8-byte Reload
.LBB0_186:                              # %if.then671.thread.i
	movq	%r12, %rdi
	jmp	.LBB0_192
.LBB0_187:
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	64(%rsp), %r15                  # 8-byte Reload
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_188:                              # %if.end334.i
	testq	%r15, %r15
	jne	.LBB0_137
	jmp	.LBB0_138
.LBB0_189:                              # %fail.thread.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	$.L.str.22, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_190:                              # %if.then671.i
	movq	%r12, %rdi
	callq	free@PLT
	testq	%r15, %r15
	je	.LBB0_193
# %bb.191:                              # %if.then674.i
	movq	%r15, %rdi
.LBB0_192:                              # %if.then52
	callq	free@PLT
.LBB0_193:                              # %if.then52
	movq	104(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_195
# %bb.194:                              # %if.then54
	callq	free@PLT
.LBB0_195:                              # %if.end56
	movq	%r14, %rdi
	callq	fclose@PLT
.LBB0_196:                              # %cleanup
	movl	$-1, %eax
.LBB0_197:                              # %cleanup
	addq	$392, %rsp                      # imm = 0x188
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
.LBB0_198:                              # %if.then82.i
	.cfi_def_cfa_offset 448
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.14, %edi
	movl	$39, %esi
	jmp	.LBB0_94
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
	.cfi_startproc
# %bb.0:                                # %entry
	movl	64(%rdi), %eax
	retq
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function read_frame
.LCPI2_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI2_5:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.quad	4294967295                      # 0xffffffff
	.quad	4294967295                      # 0xffffffff
.LCPI2_2:
	.quad	4841369599423283200             # 0x4330000000000000
	.quad	4841369599423283200             # 0x4330000000000000
.LCPI2_3:
	.quad	4985484787499139072             # 0x4530000000000000
	.quad	4985484787499139072             # 0x4530000000000000
.LCPI2_4:
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.quad	0x4530000000100000              # double 1.9342813118337666E+25
	.text
	.p2align	4, 0x90
	.type	read_frame,@function
read_frame:                             # @read_frame
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
	movq	56(%rsi), %rsi
	callq	*24(%r14)
	movslq	96(%r14), %rdx
	movslq	%ebp, %rcx
	subq	%rdx, %rcx
	movq	104(%r14), %rdx
	cmpl	100(%r14), %ecx
	jge	.LBB2_2
# %bb.1:                                # %if.then
	movq	(%rdx,%rcx,8), %rcx
	jmp	.LBB2_5
.LBB2_2:                                # %if.else
	testq	%rdx, %rdx
	jne	.LBB2_3
.LBB2_4:                                # %if.end
	movsd	.LCPI2_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	divsd	112(%r14), %xmm0
	addsd	120(%r14), %xmm0
	movsd	%xmm0, 120(%r14)
	movdqu	80(%r14), %xmm1
	movdqa	.LCPI2_1(%rip), %xmm2           # xmm2 = [4294967295,4294967295]
	pand	%xmm1, %xmm2
	por	.LCPI2_2(%rip), %xmm2
	psrlq	$32, %xmm1
	por	.LCPI2_3(%rip), %xmm1
	subpd	.LCPI2_4(%rip), %xmm1
	addpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	divsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	.LCPI2_5(%rip), %xmm2
	cvttsd2si	%xmm2, %rcx
.LBB2_5:                                # %if.end14
	movq	%rcx, 16(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:                                # %if.then4
	.cfi_def_cfa_offset 32
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movsd	112(%r14), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.25, %esi
	movl	%ebp, %edx
	movl	%eax, %ebp
	movb	$1, %al
	callq	fprintf@PLT
	movq	104(%r14), %rdi
	callq	free@PLT
	movl	%ebp, %eax
	movq	$0, 104(%r14)
	jmp	.LBB2_4
.Lfunc_end2:
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function release_frame
	.type	release_frame,@function
release_frame:                          # @release_frame
	.cfi_startproc
# %bb.0:                                # %entry
	movq	32(%rsi), %rax
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:                                # %if.then
	movq	56(%rsi), %rsi
	jmpq	*%rax                           # TAILCALL
.LBB3_1:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	release_frame, .Lfunc_end3-release_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	104(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_2
# %bb.1:                                # %if.then
	callq	free@PLT
.LBB4_2:                                # %if.end
	movq	56(%rbx), %rdi
	callq	*48(%rbx)
	movq	%rbx, %rdi
	callq	free@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function correct_fps
.LCPI5_0:
	.quad	0x4024000000000000              # double 10
.LCPI5_3:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI5_5:
	.quad	0x3ed4f8b588e368f1              # double 5.0000000000000004E-6
.LCPI5_6:
	.quad	0xbff0000000000000              # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI5_2:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI5_4:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.text
	.p2align	4, 0x90
	.type	correct_fps,@function
correct_fps:                            # @correct_fps
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	callq	log10@PLT
	callq	floor@PLT
	movaps	%xmm0, %xmm1
	movsd	.LCPI5_0(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	80(%rbx), %r14
	movq	%r14, %xmm3
	punpckldq	.LCPI5_1(%rip), %xmm3   # xmm3 = xmm3[0],mem[0],xmm3[1],mem[1]
	movsd	(%rsp), %xmm2                   # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	subpd	.LCPI5_2(%rip), %xmm3
	movapd	%xmm3, %xmm1
	unpckhpd	%xmm3, %xmm1                    # xmm1 = xmm1[1],xmm3[1]
	addsd	%xmm3, %xmm1
	movsd	%xmm2, (%rsp)                   # 8-byte Spill
	movapd	%xmm2, %xmm0
	movapd	%xmm1, 16(%rsp)                 # 16-byte Spill
	mulsd	%xmm1, %xmm0
	callq	round@PLT
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI5_3(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	jne	.LBB5_4
# %bb.1:                                # %if.end.preheader
	leaq	(%r14,%r14), %r15
	.p2align	4, 0x90
.LBB5_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rsi, %xmm0
	divsd	16(%rsp), %xmm0                 # 16-byte Folded Reload
	movapd	%xmm0, %xmm1
	divsd	%xmm3, %xmm1
	movsd	(%rsp), %xmm2                   # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	andpd	.LCPI5_4(%rip), %xmm1
	movsd	.LCPI5_5(%rip), %xmm4           # xmm4 = [5.0000000000000004E-6,0.0E+0]
	ucomisd	%xmm1, %xmm4
	ja	.LBB5_5
# %bb.3:                                # %while.cond
                                        #   in Loop: Header=BB5_2 Depth=1
	movapd	%xmm2, %xmm1
	movq	%r15, %xmm0
	punpckldq	.LCPI5_1(%rip), %xmm0   # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI5_2(%rip), %xmm0
	movapd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2                    # xmm2 = xmm2[1],xmm0[1]
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	movapd	%xmm2, 16(%rsp)                 # 16-byte Spill
	mulsd	%xmm2, %xmm0
	callq	round@PLT
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI5_3(%rip), %xmm0
	cvttsd2si	%xmm0, %rsi
	andq	%rcx, %rsi
	orq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	addq	%r14, %r15
	testq	%rax, %rax
	je	.LBB5_2
.LBB5_4:                                # %if.then
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.23, %edi
	movl	$125, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movsd	.LCPI5_6(%rip), %xmm0           # xmm0 = [-1.0E+0,0.0E+0]
	jmp	.LBB5_18
.LBB5_5:                                # %while.end
	cmpl	$0, 72(%rbx)
	je	.LBB5_18
# %bb.6:                                # %if.then14
	movq	88(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_15
# %bb.7:
	movq	%rcx, %rax
	movq	%rsi, %rdx
	jmp	.LBB5_8
	.p2align	4, 0x90
.LBB5_10:                               #   in Loop: Header=BB5_8 Depth=1
	cqto
	idivq	%rdi
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB5_12
.LBB5_8:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rdi
	movq	%rax, %rdx
	orq	%rdi, %rdx
	shrq	$32, %rdx
	jne	.LBB5_10
# %bb.9:                                #   in Loop: Header=BB5_8 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %rax
	testq	%rdx, %rdx
	jne	.LBB5_8
.LBB5_12:                               # %lcm.exit
	movq	%rcx, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	je	.LBB5_13
# %bb.14:
	movq	%rcx, %rax
	cqto
	idivq	%rdi
	imulq	%rsi, %rax
	movq	%rax, 88(%rbx)
	shrq	$32, %rax
	jne	.LBB5_17
	jmp	.LBB5_18
.LBB5_15:                               # %cond.false
	movslq	%esi, %rax
	movq	%rax, 88(%rbx)
	shrq	$32, %rax
	je	.LBB5_18
.LBB5_17:                               # %if.then24
	movl	$0, 72(%rbx)
.LBB5_18:                               # %cleanup
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_13:
	.cfi_def_cfa_offset 64
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	imulq	%rsi, %rax
	movq	%rax, 88(%rbx)
	shrq	$32, %rax
	jne	.LBB5_17
	jmp	.LBB5_18
.Lfunc_end5:
	.size	correct_fps, .Lfunc_end5-correct_fps
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function try_mkv_timebase_den
.LCPI6_0:
	.quad	0x4024000000000000              # double 10
.LCPI6_1:
	.quad	0x41cdcd6500000000              # double 1.0E+9
.LCPI6_2:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
	.text
	.p2align	4, 0x90
	.type	try_mkv_timebase_den,@function
try_mkv_timebase_den:                   # @try_mkv_timebase_den
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
	movq	$0, 80(%rsi)
	movq	$1000000000, 88(%rsi)           # imm = 0x3B9ACA00
	testl	%edx, %edx
	jle	.LBB6_1
# %bb.2:                                # %for.body.preheader
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movl	%edx, %r12d
	movb	$1, %bpl
	xorl	%r13d, %r13d
	leaq	1(%rax), %r15
	.p2align	4, 0x90
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_6 Depth 2
	movsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	callq	log10@PLT
	callq	floor@PLT
	movaps	%xmm0, %xmm1
	movsd	.LCPI6_0(%rip), %xmm0           # xmm0 = [1.0E+1,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	.LCPI6_1(%rip), %xmm0           # xmm0 = [1.0E+9,0.0E+0]
	divsd	%xmm1, %xmm0
	callq	round@PLT
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	cvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI6_2(%rip), %xmm0
	cvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	je	.LBB6_10
# %bb.5:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	80(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB6_6
.LBB6_10:                               # %cond.false
                                        #   in Loop: Header=BB6_4 Depth=1
	movslq	%edx, %rcx
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	%rcx, 80(%rbx)
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	addq	%rax, %rcx
	cmpq	%r15, %rcx
	jb	.LBB6_12
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB6_4 Depth=1
	incq	%r13
	cmpq	%r12, %r13
	setb	%bpl
	jne	.LBB6_4
	jmp	.LBB6_13
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_6 Depth=2
	cqto
	idivq	%rcx
	movq	%rcx, %rax
	testq	%rdx, %rdx
	je	.LBB6_11
.LBB6_6:                                # %while.body.i
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	jne	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=2
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $edx killed $edx def $rdx
	movq	%rcx, %rax
	testq	%rdx, %rdx
	jne	.LBB6_6
	jmp	.LBB6_11
.LBB6_1:
	xorl	%ebp, %ebp
.LBB6_13:                               # %cleanup17
	movzbl	%bpl, %eax
	andl	$1, %eax
	negl	%eax
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
.LBB6_12:                               # %if.then
	.cfi_def_cfa_offset 80
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.24, %edi
	movl	$101, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB6_13
.Lfunc_end6:
	.size	try_mkv_timebase_den, .Lfunc_end6-try_mkv_timebase_den
	.cfi_endproc
                                        # -- End function
	.type	timecode_input,@object          # @timecode_input
	.data
	.globl	timecode_input
	.p2align	3, 0x0
timecode_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	0
	.quad	read_frame
	.quad	release_frame
	.quad	0
	.quad	close_file
	.size	timecode_input, 56

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timecode [error]: malloc failed\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%lu/%lu"
	.size	.L.str.1, 8

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"timecode [error]: timebase you specified exceeds H.264 maximum\n"
	.size	.L.str.2, 64

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"timecode [error]: can't open `%s'\n"
	.size	.L.str.4, 35

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"# timecode format v%d"
	.size	.L.str.6, 22

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"timecode [error]: unsupported timecode format\n"
	.size	.L.str.7, 47

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"assume %lf"
	.size	.L.str.8, 11

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Assume %lf"
	.size	.L.str.9, 11

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"timecode [error]: tcfile parsing error: assumed fps not found\n"
	.size	.L.str.10, 63

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"timecode [error]: invalid assumed fps %.6f\n"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"# TDecimate Mode 3:  Last Frame = %d"
	.size	.L.str.12, 37

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%d,%d,%lf"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"timecode [error]: invalid input tcfile\n"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"timecode [error]: invalid input tcfile at line %d: %s\n"
	.size	.L.str.15, 55

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"timecode [error]: input tcfile doesn't have any timecodes!\n"
	.size	.L.str.16, 60

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%lf"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"timecode [error]: invalid input tcfile for frame 0\n"
	.size	.L.str.18, 52

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"timecode [error]: invalid input tcfile for frame %d\n"
	.size	.L.str.19, 53

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"timecode [info]: automatic timebase generation %lu/%lu\n"
	.size	.L.str.20, 56

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"timecode [error]: automatic timebase generation failed.\n                  Specify an appropriate timebase manually.\n"
	.size	.L.str.21, 117

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"timecode [error]: invalid timebase or timecode for frame %d\n"
	.size	.L.str.22, 61

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"timecode [error]: tcfile fps correction failed.\n                  Specify an appropriate timebase manually or remake tcfile.\n"
	.size	.L.str.23, 126

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"timecode [error]: automatic timebase generation failed.\n                  Specify timebase manually.\n"
	.size	.L.str.24, 102

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"timecode [info]: input timecode file missing data for frame %d and later\n                 assuming constant fps %.6f\n"
	.size	.L.str.25, 118

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
