	.text
	.file	"y4m.c"
	.p2align	4, 0x90                         # -- Begin function open_file
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$32, %edi
	callq	malloc@PLT
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB0_49
# %bb.1:                                # %if.end
	movq	%rax, %r15
	movl	$0, 16(%rax)
	movl	$0, 40(%r12)
	cmpb	$45, (%r13)
	jne	.LBB0_3
# %bb.2:                                # %sub_1
	cmpb	$0, 1(%r13)
	je	.LBB0_10
.LBB0_3:                                # %if.else
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	callq	fopen64@PLT
	movq	%rax, %r13
	movq	%r13, (%r15)
	testq	%r13, %r13
	je	.LBB0_49
.LBB0_4:                                # %if.end9
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movl	$6, 24(%r15)
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	fgetc@PLT
	movb	%al, 32(%rsp,%r14)
	cmpb	$10, %al
	je	.LBB0_7
# %bb.6:                                # %for.inc
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%r14
	cmpq	$80, %r14
	jne	.LBB0_5
	jmp	.LBB0_49
.LBB0_7:                                # %lor.lhs.false
	movw	$32, 33(%rsp,%r14)
	movabsq	$5135599242606695769, %rax      # imm = 0x4745504D34565559
	xorq	32(%rsp), %rax
	movzbl	40(%rsp), %ecx
	xorq	$50, %rcx
	orq	%rax, %rcx
	jne	.LBB0_49
# %bb.8:                                # %if.end30
	leal	1(%r14), %eax
	movl	%eax, 20(%r15)
	cmpq	$10, %r14
	jb	.LBB0_48
# %bb.9:                                # %for.body39.lr.ph
	addq	%rsp, %r14
	addq	$33, %r14
	leaq	42(%rsp), %r13
	movl	$0, 8(%rsp)                     # 4-byte Folded Spill
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB0_15
.LBB0_10:                               # %if.then3
	movq	stdin@GOTPCREL(%rip), %rax
	movq	(%rax), %r13
	movq	%r13, (%r15)
	testq	%r13, %r13
	jne	.LBB0_4
	jmp	.LBB0_49
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=1
	negl	%eax
.LBB0_12:                               # %sw.bb53.tail
                                        #   in Loop: Header=BB0_15 Depth=1
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	1(,%rcx,8), %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
.LBB0_13:                               # %if.end99
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rbp, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	movq	%rax, %r13
.LBB0_14:                               # %for.inc102
                                        #   in Loop: Header=BB0_15 Depth=1
	incq	%r13
	cmpq	%r14, %r13
	jae	.LBB0_47
.LBB0_15:                               # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%r13), %eax
	cmpl	$32, %eax
	je	.LBB0_14
# %bb.16:                               # %if.end44
                                        #   in Loop: Header=BB0_15 Depth=1
	leaq	1(%r13), %rbp
	addl	$-65, %eax
	cmpl	$23, %eax
	ja	.LBB0_40
# %bb.17:                               # %if.end44
                                        #   in Loop: Header=BB0_15 Depth=1
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_18:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB0_13
# %bb.19:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, 4(%rsp)
	je	.LBB0_13
# %bb.20:                               # %sw.bb79
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, (%rsp)
	je	.LBB0_13
# %bb.21:                               # %if.then87
                                        #   in Loop: Header=BB0_15 Depth=1
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
	movl	4(%rsp), %eax
	movl	%eax, 20(%r12)
	movl	(%rsp), %eax
	movl	%eax, 24(%r12)
	jmp	.LBB0_13
.LBB0_40:                               #   in Loop: Header=BB0_15 Depth=1
	movq	%rbp, %r13
	jmp	.LBB0_14
.LBB0_22:                               # %sw.bb
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, 44(%r12)
	movl	%eax, 8(%r15)
	movq	16(%rsp), %r13
	jmp	.LBB0_14
.LBB0_23:                               # %sub_0179
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	(%rbp), %eax
	subl	$52, %eax
	jne	.LBB0_11
# %bb.24:                               # %sub_1180
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	2(%r13), %eax
	subl	$50, %eax
	jne	.LBB0_11
# %bb.25:                               # %sub_2
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	3(%r13), %ecx
	movl	$48, %eax
	subl	%ecx, %eax
	jmp	.LBB0_12
.LBB0_26:                               # %sw.bb90
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$.L.str.5, %edi
	movl	$6, %edx
	movq	%rbp, %rsi
	callq	strncmp@PLT
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.27:                               # %if.then93
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	7(%r13), %eax
	subl	$52, %eax
	jne	.LBB0_45
# %bb.28:                               # %sub_1183
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	8(%r13), %eax
	subl	$50, %eax
	jne	.LBB0_45
# %bb.29:                               # %sub_2184
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	9(%r13), %ecx
	movl	$48, %eax
	subl	%ecx, %eax
	jmp	.LBB0_46
.LBB0_30:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$.L.str.4, %esi
	movq	%rbp, %rdi
	leaq	4(%rsp), %rdx
	movq	%rsp, %rcx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB0_13
# %bb.31:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, 4(%rsp)
	je	.LBB0_13
# %bb.32:                               # %sw.bb69
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$0, (%rsp)
	je	.LBB0_13
# %bb.33:                               # %if.then76
                                        #   in Loop: Header=BB0_15 Depth=1
	leaq	4(%rsp), %rdi
	movq	%rsp, %rsi
	callq	x264_reduce_fraction@PLT
	movl	4(%rsp), %eax
	movl	%eax, 4(%r12)
	movl	(%rsp), %eax
	movl	%eax, 8(%r12)
	jmp	.LBB0_13
.LBB0_34:                               # %sw.bb49
                                        #   in Loop: Header=BB0_15 Depth=1
	movq	%rbp, %rdi
	leaq	16(%rsp), %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, 12(%r12)
	movl	%eax, 12(%r15)
	movq	16(%rsp), %r13
	jmp	.LBB0_14
.LBB0_35:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	movzbl	1(%r13), %eax
	addq	$2, %r13
	cmpl	$98, %eax
	je	.LBB0_43
# %bb.36:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$109, %eax
	je	.LBB0_42
# %bb.37:                               # %sw.bb60
                                        #   in Loop: Header=BB0_15 Depth=1
	cmpl	$116, %eax
	jne	.LBB0_14
# %bb.38:                               # %sw.bb63
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, 16(%r12)
	movl	$1, 28(%r12)
	jmp	.LBB0_14
.LBB0_45:                               #   in Loop: Header=BB0_15 Depth=1
	negl	%eax
.LBB0_46:                               # %if.then93.tail
                                        #   in Loop: Header=BB0_15 Depth=1
	addq	$7, %r13
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	leal	1(,%rcx,8), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movq	%r13, %rbp
	jmp	.LBB0_13
.LBB0_42:                               # %sw.bb67
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, 16(%r12)
	jmp	.LBB0_14
.LBB0_43:                               # %sw.bb64
                                        #   in Loop: Header=BB0_15 Depth=1
	movl	$1, 16(%r12)
	movl	$0, 28(%r12)
	jmp	.LBB0_14
.LBB0_47:                               # %for.cond.cleanup
	movl	12(%rsp), %eax                  # 4-byte Reload
	testl	%eax, %eax
	movl	8(%rsp), %ecx                   # 4-byte Reload
	cmovnel	%eax, %ecx
	cmpl	$2, %ecx
	jae	.LBB0_50
.LBB0_48:                               # %if.end117
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%r15, (%rax)
	xorl	%ebx, %ebx
.LBB0_49:                               # %cleanup
	movl	%ebx, %eax
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
.LBB0_50:                               # %if.then115
	.cfi_def_cfa_offset 192
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.6, %edi
	movl	$34, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB0_49
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_40
	.quad	.LBB0_23
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_30
	.quad	.LBB0_40
	.quad	.LBB0_34
	.quad	.LBB0_35
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_40
	.quad	.LBB0_22
	.quad	.LBB0_26
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function get_frame_total
	.type	get_frame_total,@function
get_frame_total:                        # @get_frame_total
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
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	ftell@PLT
	movq	%rax, %r14
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
	movq	(%rbx), %rdi
	callq	ftell@PLT
	movq	%rax, %r15
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
	movslq	20(%rbx), %rcx
	movl	8(%rbx), %edx
	imull	12(%rbx), %edx
	subq	%rcx, %r15
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	movslq	24(%rbx), %rsi
	movslq	%edx, %rcx
	addq	%rsi, %rcx
	movq	%r15, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB1_1
# %bb.2:
	movq	%r15, %rax
	xorl	%edx, %edx
	divq	%rcx
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_1:
	.cfi_def_cfa_offset 32
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	get_frame_total, .Lfunc_end1-get_frame_total
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function read_frame
	.type	read_frame,@function
read_frame:                             # @read_frame
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	%edx, 16(%rsi)
	jge	.LBB2_2
# %bb.1:                                # %if.then
	movq	(%r14), %rdi
	movl	8(%r14), %eax
	imull	12(%r14), %eax
	movslq	%ebx, %rcx
	leal	(%rax,%rax,2), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movslq	24(%r14), %rax
	movslq	%edx, %rdx
	addq	%rax, %rdx
	imulq	%rcx, %rdx
	movslq	20(%r14), %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	callq	fseek@PLT
.LBB2_2:                                # %if.end17
	movq	(%r14), %rcx
	movq	%rsp, %rdi
	movl	$1, %esi
	movl	$5, %edx
	callq	fread@PLT
	cmpl	$5, %eax
	jne	.LBB2_12
# %bb.3:                                # %if.end.i
	movb	$0, 5(%rsp)
	movl	$1296126534, %eax               # imm = 0x4D415246
	xorl	(%rsp), %eax
	movzbl	4(%rsp), %ecx
	xorl	$69, %ecx
	orl	%eax, %ecx
	jne	.LBB2_15
# %bb.4:                                # %land.rhs.i.preheader
	movl	$6, %ebp
	.p2align	4, 0x90
.LBB2_5:                                # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	fgetc@PLT
	cmpl	$10, %eax
	je	.LBB2_8
# %bb.6:                                # %while.body.i
                                        #   in Loop: Header=BB2_5 Depth=1
	incl	%ebp
	cmpl	$86, %ebp
	jne	.LBB2_5
# %bb.7:                                # %if.then19.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.9, %edi
	movl	$31, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	jmp	.LBB2_12
.LBB2_8:                                # %if.end21.i
	movl	%ebp, 24(%r14)
	movq	64(%r15), %rdi
	movslq	8(%r14), %rax
	movslq	12(%r14), %rsi
	imulq	%rax, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB2_12
# %bb.9:                                # %lor.lhs.false.i
	movl	12(%r14), %eax
	imull	8(%r14), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movq	72(%r15), %rdi
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB2_12
# %bb.10:                               # %read_frame_internal.exit
	movl	12(%r14), %eax
	imull	8(%r14), %eax
	leal	3(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	movq	80(%r15), %rdi
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	(%r14), %rcx
	movl	$1, %edx
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB2_12
# %bb.11:                               # %if.end21
	incl	%ebx
	movl	%ebx, 16(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_13
.LBB2_15:                               # %if.then6.i
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movl	(%rsp), %edx
	movq	%rsp, %rcx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB2_12:                               # %read_frame_internal.exit.thread
	movl	$-1, %eax
.LBB2_13:                               # %cleanup
	addq	$24, %rsp
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
.Lfunc_end2:
	.size	read_frame, .Lfunc_end2-read_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:                                # %lor.lhs.false
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB3_3
# %bb.2:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	fclose@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB3_3:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	close_file, .Lfunc_end3-close_file
	.cfi_endproc
                                        # -- End function
	.type	y4m_input,@object               # @y4m_input
	.section	.rodata,"a",@progbits
	.globl	y4m_input
	.p2align	3, 0x0
y4m_input:
	.quad	open_file
	.quad	get_frame_total
	.quad	x264_picture_alloc
	.quad	read_frame
	.quad	0
	.quad	x264_picture_clean
	.quad	close_file
	.size	y4m_input, 56

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"YUV4MPEG2"
	.size	.L.str.2, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u:%u"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"YSCSS="
	.size	.L.str.5, 7

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"y4m [error]: colorspace unhandled\n"
	.size	.L.str.6, 35

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"FRAME"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"y4m [error]: bad header magic (%x <=> %s)\n"
	.size	.L.str.8, 43

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"y4m [error]: bad frame header!\n"
	.size	.L.str.9, 32

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
