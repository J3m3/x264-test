	.text
	.file	"img_io.c"
	.globl	ParseSizeFromString             # -- Begin function ParseSizeFromString
	.p2align	4, 0x90
	.type	ParseSizeFromString,@function
ParseSizeFromString:                    # @ParseSizeFromString
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$-1, (%rdx)
	movl	$-1, (%rsi)
	testq	%rdi, %rdi
	je	.LBB0_20
# %bb.1:                                # %while.body.preheader
	movq	%rcx, %r13
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	movq	%r15, %rdi
	movl	$95, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	sete	%r15b
	je	.LBB0_8
# %bb.2:                                # %if.end.preheader
	movq	%rax, %r12
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	leaq	8(%rsp), %r13
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                # %if.then15
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$120, (%rbp)
.LBB0_7:                                # %while.cond.backedge
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	$95, %esi
	callq	strchr@PLT
	movq	%rax, %r12
	testq	%rax, %rax
	sete	%r15b
	je	.LBB0_8
.LBB0_3:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movl	$120, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB0_8
# %bb.4:                                # %if.end6
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rbp
	movb	$0, (%rax)
	incq	%r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, (%r14)
	movq	8(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB0_6
# %bb.5:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, (%r12)
	je	.LBB0_6
# %bb.9:                                # %if.end16
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	$120, (%rbp)
	incq	%rbp
	movl	$.L.str.2, %esi
	movq	%rbp, %rdi
	callq	strpbrk@PLT
	testq	%rax, %rax
	je	.LBB0_10
# %bb.11:                               # %if.end23
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %r12
	movzbl	(%rax), %ebx
	movb	$0, (%rax)
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, (%rcx)
	movq	8(%rsp), %rdi
	cmpb	$0, (%rdi)
	je	.LBB0_12
.LBB0_13:                               # %if.then35
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	%bl, (%r12)
	jmp	.LBB0_7
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rbp, %rdi
	jmp	.LBB0_7
.LBB0_12:                               # %lor.lhs.false30
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, (%rbp)
	je	.LBB0_13
# %bb.14:                               # %if.end36
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	%bl, (%r12)
	incq	%r12
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB0_8
# %bb.15:                               # %if.end42
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rbp
	movzbl	(%rax), %ebx
	movb	$0, (%rax)
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	strtod@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	8(%rsp), %rdi
	cmpb	$0, (%rdi)
	jne	.LBB0_17
# %bb.16:                               # %lor.lhs.false48
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, (%r12)
	jne	.LBB0_18
.LBB0_17:                               # %if.then53
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	%bl, (%rbp)
	jmp	.LBB0_7
.LBB0_8:                                # %while.end.loopexit
	movl	%r15d, %eax
	xorb	$1, %al
.LBB0_19:                               # %while.end
	orb	%al, %r15b
	testb	$1, %r15b
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	je	.LBB0_32
.LBB0_20:                               # %for.body.preheader
	movl	$.L.str.15, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.21:                               # %for.cond
	movl	$.L.str.16, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+16, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.22:                               # %for.cond.1
	movl	$.L.str.17, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+32, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.23:                               # %for.cond.2
	movl	$.L.str.18, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+48, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.24:                               # %for.cond.3
	movl	$.L.str.19, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+64, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.25:                               # %for.cond.4
	movl	$.L.str.20, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+80, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.26:                               # %for.cond.5
	movl	$.L.str.21, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+96, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.27:                               # %for.cond.6
	movl	$.L.str.22, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+112, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.28:                               # %for.cond.7
	movl	$.L.str.23, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+128, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.29:                               # %for.cond.8
	movl	$.L.str.24, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+144, %ecx
	testl	%eax, %eax
	jne	.LBB0_31
# %bb.30:                               # %for.cond.9
	movl	$.L.str.25, %esi
	movq	%r15, %rdi
	callq	strcmp@PLT
	movl	$VideoRes+160, %ecx
	testl	%eax, %eax
	je	.LBB0_32
.LBB0_31:                               # %if.then67
	movl	8(%rcx), %eax
	movl	%eax, (%r14)
	movl	12(%rcx), %eax
	movl	%eax, (%rbx)
.LBB0_32:                               # %if.end75
	cmpl	$-1, (%r14)
	je	.LBB0_33
# %bb.34:                               # %lor.rhs
	xorl	%eax, %eax
	cmpl	$-1, (%rbx)
	setne	%al
	jmp	.LBB0_35
.LBB0_33:
	xorl	%eax, %eax
.LBB0_35:                               # %lor.end
	addq	$40, %rsp
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
.LBB0_18:                               # %if.end54
	.cfi_def_cfa_offset 96
	movb	%bl, (%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_19
.Lfunc_end0:
	.size	ParseSizeFromString, .Lfunc_end0-ParseSizeFromString
	.cfi_endproc
                                        # -- End function
	.globl	ParseFrameNoFormatFromString    # -- Begin function ParseFrameNoFormatFromString
	.p2align	4, 0x90
	.type	ParseFrameNoFormatFromString,@function
ParseFrameNoFormatFromString:           # @ParseFrameNoFormatFromString
	.cfi_startproc
# %bb.0:                                # %while.body.lr.ph
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
	movq	%rdi, %rbx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rax, 920(%rdi)
	movl	$37, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB1_9
# %bb.1:                                # %if.end.preheader
	movq	%rax, %r13
	leaq	255(%rbx), %r15
	leaq	510(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	16(%rsp), %r12
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_5:                                # %if.end17
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	$10, %edx
	callq	strtol@PLT
	movl	%eax, 924(%rbx)
	movq	16(%rsp), %r14
	cmpb	$0, (%r14)
	je	.LBB1_6
.LBB1_7:                                # %if.then28
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$100, (%rbp)
	movq	%r14, %rdi
	movl	$37, %esi
	callq	strchr@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB1_9
.LBB1_2:                                # %if.end
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	strncpy@PLT
	movq	%r13, %rdi
	movl	$100, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB1_9
# %bb.3:                                # %if.end13
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rax, %rbp
	movb	$0, (%rax)
	cmpb	$48, 1(%r13)
	jne	.LBB1_5
# %bb.4:                                # %if.then16
                                        #   in Loop: Header=BB1_2 Depth=1
	movl	$1, 920(%rbx)
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpb	$0, (%r13)
	je	.LBB1_7
# %bb.8:                                # %if.end29
	movb	$100, (%rbp)
	incq	%r14
	movq	%r14, %rdi
	callq	strlen@PLT
	movslq	%eax, %rdx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movq	%r14, %rsi
	callq	strncpy@PLT
.LBB1_9:                                # %while.end
	xorl	%eax, %eax
	cmpl	$3, 772(%rbx)
	je	.LBB1_11
# %bb.10:                               # %if.else
	xorl	%eax, %eax
	cmpl	$-1, 924(%rbx)
	sete	%al
.LBB1_11:                               # %if.end40
	movl	%eax, 912(%rbx)
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
.Lfunc_end1:
	.size	ParseFrameNoFormatFromString, .Lfunc_end1-ParseFrameNoFormatFromString
	.cfi_endproc
                                        # -- End function
	.globl	OpenFrameFile                   # -- Begin function OpenFrameFile
	.p2align	4, 0x90
	.type	OpenFrameFile,@function
OpenFrameFile:                          # @OpenFrameFile
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
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 336
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movb	$0, (%rsp)
	leaq	255(%rdi), %r12
	movq	%r12, %rdi
	callq	strlen@PLT
	movslq	%eax, %r15
	leaq	16(%rsp), %r14
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	strncpy@PLT
	movb	$0, 16(%rsp,%r15)
	cmpl	$0, 920(%rbx)
	movl	924(%rbx), %ecx
	movl	$.L.str.7, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movq	%rsp, %r12
	movl	$16, %esi
	movq	%r12, %rdi
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	snprintf@PLT
	movl	$16, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strncat@PLT
	leal	16(%r15), %eax
	cltq
	movb	$0, 16(%rsp,%rax)
	leaq	510(%rbx), %r12
	movq	%r12, %rdi
	callq	strlen@PLT
	movq	%rax, %r13
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	strncat@PLT
	leal	(%r15,%r13), %eax
	addl	$16, %eax
	cltq
	movb	$0, 16(%rsp,%rax)
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, 768(%rbx)
	cmpl	$-1, %eax
	jne	.LBB2_2
# %bb.1:                                # %if.then36
	leaq	16(%rsp), %rsi
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	callq	report_stats_on_error@PLT
.LBB2_2:                                # %if.end39
	addq	$280, %rsp                      # imm = 0x118
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
.Lfunc_end2:
	.size	OpenFrameFile, .Lfunc_end2-OpenFrameFile
	.cfi_endproc
                                        # -- End function
	.globl	OpenFiles                       # -- Begin function OpenFiles
	.p2align	4, 0x90
	.type	OpenFiles,@function
OpenFiles:                              # @OpenFiles
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
	cmpl	$1, 912(%rdi)
	jne	.LBB3_4
# %bb.1:                                # %if.then
	movq	%rdi, %rbx
	callq	strlen@PLT
	testl	%eax, %eax
	jne	.LBB3_3
# %bb.2:                                # %if.then3
	movups	.L.str.9+44(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movups	%xmm0, 44(%rdi)
	movups	.L.str.9+32(%rip), %xmm0
	movaps	%xmm0, 32(%rdi)
	movups	.L.str.9+16(%rip), %xmm0
	movaps	%xmm0, 16(%rdi)
	movups	.L.str.9(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB3_3:                                # %if.end
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, 768(%rbx)
	cmpl	$-1, %eax
	je	.LBB3_5
.LBB3_4:                                # %if.end15
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:                                # %if.then10
	.cfi_def_cfa_offset 32
	movq	errortext@GOTPCREL(%rip), %r14
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.10, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end3:
	.size	OpenFiles, .Lfunc_end3-OpenFiles
	.cfi_endproc
                                        # -- End function
	.globl	CloseFiles                      # -- Begin function CloseFiles
	.p2align	4, 0x90
	.type	CloseFiles,@function
CloseFiles:                             # @CloseFiles
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	768(%rdi), %edi
	cmpl	$-1, %edi
	je	.LBB4_2
# %bb.1:                                # %if.then
	callq	close@PLT
.LBB4_2:                                # %if.end
	movl	$-1, 768(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	CloseFiles, .Lfunc_end4-CloseFiles
	.cfi_endproc
                                        # -- End function
	.globl	ParseVideoType                  # -- Begin function ParseVideoType
	.p2align	4, 0x90
	.type	ParseVideoType,@function
ParseVideoType:                         # @ParseVideoType
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
	movq	%rdi, %rbx
	callq	strlen@PLT
	cltq
	leaq	(%rbx,%rax), %r14
	addq	$-3, %r14
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_7
# %bb.1:                                # %if.else
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_2
# %bb.3:                                # %if.else15
	movl	$.L.str.13, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_4
# %bb.5:                                # %if.else22
	movl	$.L.str.14, %esi
	movq	%r14, %rdi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB5_6
.LBB5_7:                                # %if.else28
	movabsq	$4294967296, %rax               # imm = 0x100000000
	movq	%rax, 772(%rbx)
	movq	$0, 960(%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %if.then10
	.cfi_def_cfa_offset 32
	movabsq	$12884901889, %rax              # imm = 0x300000001
	movq	%rax, 772(%rbx)
	movq	$0, 960(%rbx)
	movl	$1, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_4:                                # %if.then19
	.cfi_def_cfa_offset 32
	movl	$3, 772(%rbx)
	movq	$0, 960(%rbx)
	movl	$3, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB5_6:                                # %if.then26
	.cfi_def_cfa_offset 32
	movl	$4, 772(%rbx)
	movl	$4, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	ParseVideoType, .Lfunc_end5-ParseVideoType
	.cfi_endproc
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"_."
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"ip"
	.size	.L.str.3, 3

	.type	VideoRes,@object                # @VideoRes
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
VideoRes:
	.quad	.L.str.15
	.long	176                             # 0xb0
	.long	144                             # 0x90
	.quad	.L.str.16
	.long	160                             # 0xa0
	.long	128                             # 0x80
	.quad	.L.str.17
	.long	320                             # 0x140
	.long	240                             # 0xf0
	.quad	.L.str.18
	.long	352                             # 0x160
	.long	240                             # 0xf0
	.quad	.L.str.19
	.long	352                             # 0x160
	.long	288                             # 0x120
	.quad	.L.str.20
	.long	640                             # 0x280
	.long	480                             # 0x1e0
	.quad	.L.str.21
	.long	720                             # 0x2d0
	.long	480                             # 0x1e0
	.quad	.L.str.22
	.long	704                             # 0x2c0
	.long	576                             # 0x240
	.quad	.L.str.23
	.long	720                             # 0x2d0
	.long	576                             # 0x240
	.quad	.L.str.24
	.long	1280                            # 0x500
	.long	720                             # 0x2d0
	.quad	.L.str.25
	.long	1920                            # 0x780
	.long	1080                            # 0x438
	.zero	16
	.size	VideoRes, 192

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%0*d"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%*d"
	.size	.L.str.7, 4

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"OpenFrameFile: cannot open file %s\n"
	.size	.L.str.8, 36

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"No input sequence name was provided. Please check settings."
	.size	.L.str.9, 60

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Input file %s does not exist"
	.size	.L.str.10, 29

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"yuv"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"rgb"
	.size	.L.str.12, 4

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"tif"
	.size	.L.str.13, 4

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"avi"
	.size	.L.str.14, 4

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"qcif"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"qqvga"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"qvga"
	.size	.L.str.17, 5

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"sif"
	.size	.L.str.18, 4

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"cif"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"vga"
	.size	.L.str.20, 4

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"sd1"
	.size	.L.str.21, 4

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"sd2"
	.size	.L.str.22, 4

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"sd3"
	.size	.L.str.23, 4

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"720p"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"1080p"
	.size	.L.str.25, 6

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
