	.text
	.file	"config_common.c"
	.globl	GetConfigFileContent            # -- Begin function GetConfigFileContent
	.p2align	4, 0x90
	.type	GetConfigFileContent,@function
GetConfigFileContent:                   # @GetConfigFileContent
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	fopen@PLT
	testq	%rax, %rax
	je	.LBB0_1
# %bb.3:                                # %if.end
	movq	%rax, %r15
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek@PLT
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_4:                                # %if.then4
	movq	errortext@GOTPCREL(%rip), %rdi
	xorl	%r14d, %r14d
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.2, %edx
	jmp	.LBB0_2
.LBB0_1:                                # %if.then
	movq	errortext@GOTPCREL(%rip), %rdi
	xorl	%r14d, %r14d
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.1, %edx
.LBB0_2:                                # %cleanup
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
.LBB0_11:                               # %cleanup
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %if.end6
	.cfi_def_cfa_offset 48
	movq	%r15, %rdi
	callq	ftell@PLT
	movq	%rax, %r12
	cmpq	$100001, %rax                   # imm = 0x186A1
	jb	.LBB0_7
# %bb.6:                                # %if.then10
	movq	errortext@GOTPCREL(%rip), %rdi
	xorl	%r14d, %r14d
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.3, %edx
	movq	%r12, %rcx
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
	jmp	.LBB0_11
.LBB0_7:                                # %if.end12
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	fseek@PLT
	testl	%eax, %eax
	jne	.LBB0_4
# %bb.8:                                # %if.end17
	movq	%r12, %rdi
	incq	%rdi
	callq	malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LBB0_10
# %bb.9:                                # %if.then20
	movl	$.L.str.4, %edi
	callq	no_mem_exit@PLT
.LBB0_10:                               # %if.end21
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	movq	%r15, %rcx
	callq	fread@PLT
	movb	$0, (%r14,%rax)
	movq	%r15, %rdi
	callq	fclose@PLT
	jmp	.LBB0_11
.Lfunc_end0:
	.size	GetConfigFileContent, .Lfunc_end0-GetConfigFileContent
	.cfi_endproc
                                        # -- End function
	.globl	ParseContent                    # -- Begin function ParseContent
	.p2align	4, 0x90
	.type	ParseContent,@function
ParseContent:                           # @ParseContent
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
	subq	$80056, %rsp                    # imm = 0x138B8
	.cfi_def_cfa_offset 80112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebp
	movq	%rdx, %r15
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	leaq	48(%rsp), %rdi
	xorl	%r13d, %r13d
	movl	$80000, %edx                    # imm = 0x13880
	xorl	%esi, %esi
	callq	memset@PLT
	testl	%ebp, %ebp
	jle	.LBB1_48
# %bb.1:                                # %while.body.preheader
	movslq	%ebp, %rax
	addq	%r15, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB1_2
.LBB1_8:                                # %sw.epilog.loopexit
                                        #   in Loop: Header=BB1_2 Depth=1
	decq	%rsi
.LBB1_9:                                # %sw.epilog
                                        #   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
.LBB1_10:                               # %sw.epilog
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	%rsi, %r15
.LBB1_21:                               # %sw.epilog
                                        #   in Loop: Header=BB1_2 Depth=1
	cmpq	%rax, %r15
	jae	.LBB1_22
.LBB1_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movzbl	(%r15), %esi
	addl	$-9, %esi
	cmpl	$26, %esi
	ja	.LBB1_18
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB1_2 Depth=1
	jmpq	*.LJTI1_0(,%rsi,8)
.LBB1_12:                               # %sw.bb12
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	1(%r15), %rsi
	testl	%ecx, %ecx
	movl	$-1, %ecx
	jne	.LBB1_10
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$0, (%r15)
	jmp	.LBB1_9
.LBB1_11:                               # %sw.bb10
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$0, (%r15)
	incq	%r15
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB1_21
.LBB1_5:                                # %sw.bb1
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$0, (%r15)
	.p2align	4, 0x90
.LBB1_6:                                # %while.cond2
                                        #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	1(%r15), %rsi
	cmpq	%rax, %r15
	jae	.LBB1_8
# %bb.7:                                # %while.cond2
                                        #   in Loop: Header=BB1_6 Depth=2
	cmpb	$10, (%r15)
	movq	%rsi, %r15
	jne	.LBB1_6
	jmp	.LBB1_8
.LBB1_18:                               # %sw.default
                                        #   in Loop: Header=BB1_2 Depth=1
	testl	%edx, %edx
	jne	.LBB1_20
# %bb.19:                               # %if.then25
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%r13d, %rdx
	incl	%r13d
	movq	%r15, 48(%rsp,%rdx,8)
.LBB1_20:                               # %if.end30
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r15
	movl	$-1, %edx
	jmp	.LBB1_21
.LBB1_4:                                # %sw.bb
                                        #   in Loop: Header=BB1_2 Depth=1
	incq	%r15
	jmp	.LBB1_21
.LBB1_14:                               # %sw.bb15
                                        #   in Loop: Header=BB1_2 Depth=1
	movb	$0, (%r15)
	incq	%r15
	xorl	%esi, %esi
	testl	%ecx, %ecx
	je	.LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%esi, %edx
	notl	%ecx
	jmp	.LBB1_21
.LBB1_16:                               # %if.then18
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	%r13d, %rsi
	incl	%r13d
	movq	%r15, 48(%rsp,%rsi,8)
	notl	%edx
	notl	%ecx
	jmp	.LBB1_21
.LBB1_22:                               # %while.end32
	cmpl	$2, %r13d
	jl	.LBB1_48
# %bb.23:                               # %for.body.preheader
	decl	%r13d
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	$64, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_28:                               # %if.then39
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$.L.str.5, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	addl	$-2, %ebx
.LBB1_47:                               # %for.inc
                                        #   in Loop: Header=BB1_24 Depth=1
	addl	$3, %ebx
	cmpl	%r13d, %ebx
	jge	.LBB1_48
.LBB1_24:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_26 Depth 2
	movslq	%ebx, %r15
	movq	48(%rsp,%r15,8), %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB1_28
# %bb.25:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	32(%rsp), %r14                  # 8-byte Reload
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB1_26:                               # %while.body.i
                                        #   Parent Loop BB1_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_29
# %bb.27:                               # %if.else.i
                                        #   in Loop: Header=BB1_26 Depth=2
	incq	%r12
	movq	(%r14), %rdi
	addq	$64, %r14
	testq	%rdi, %rdi
	jne	.LBB1_26
	jmp	.LBB1_28
	.p2align	4, 0x90
.LBB1_29:                               # %if.end43
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	56(%rsp,%r15,8), %rcx
	movzbl	(%rcx), %eax
	subl	$61, %eax
	jne	.LBB1_31
# %bb.30:                               # %sub_1
                                        #   in Loop: Header=BB1_24 Depth=1
	movzbl	1(%rcx), %eax
.LBB1_31:                               # %if.end43.tail
                                        #   in Loop: Header=BB1_24 Depth=1
	negl	%eax
	testl	%eax, %eax
	je	.LBB1_33
# %bb.32:                               # %if.then48
                                        #   in Loop: Header=BB1_24 Depth=1
	movups	.L.str.7+62(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movups	%xmm0, 62(%rdi)
	movups	.L.str.7+48(%rip), %xmm0
	movaps	%xmm0, 48(%rdi)
	movups	.L.str.7+32(%rip), %xmm0
	movaps	%xmm0, 32(%rdi)
	movups	.L.str.7+16(%rip), %xmm0
	movaps	%xmm0, 16(%rdi)
	movups	.L.str.7(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
.LBB1_33:                               # %if.end50
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	%r12d, %eax
	shlq	$6, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leaq	(%rcx,%rax), %r12
	movl	16(%rcx,%rax), %eax
	cmpl	$2, %eax
	je	.LBB1_43
# %bb.34:                               # %if.end50
                                        #   in Loop: Header=BB1_24 Depth=1
	cmpl	$1, %eax
	je	.LBB1_39
# %bb.35:                               # %if.end50
                                        #   in Loop: Header=BB1_24 Depth=1
	testl	%eax, %eax
	jne	.LBB1_46
# %bb.36:                               # %sw.bb53
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	64(%rsp,%r15,8), %r15
	movl	$.L.str.8, %esi
	movq	%r15, %rdi
	leaq	20(%rsp), %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB1_38
# %bb.37:                               # %if.then60
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.9, %edx
	movq	errortext@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
.LBB1_38:                               # %if.end67
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	20(%rsp), %eax
	movq	8(%r12), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB1_42
.LBB1_39:                               # %sw.bb71
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	64(%rsp,%r15,8), %rsi
	movq	8(%r12), %rdi
	movslq	56(%r12), %rdx
	testq	%rsi, %rsi
	je	.LBB1_40
# %bb.41:                               # %if.else84
                                        #   in Loop: Header=BB1_24 Depth=1
	callq	strncpy@PLT
	jmp	.LBB1_42
.LBB1_43:                               # %sw.bb98
                                        #   in Loop: Header=BB1_24 Depth=1
	movq	64(%rsp,%r15,8), %r15
	movl	$.L.str.11, %esi
	movq	%r15, %rdi
	leaq	40(%rsp), %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB1_45
# %bb.44:                               # %if.then105
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.9, %edx
	movq	errortext@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
.LBB1_45:                               # %if.end112
                                        #   in Loop: Header=BB1_24 Depth=1
	movsd	40(%rsp), %xmm0                 # xmm0 = mem[0],zero
	movq	8(%r12), %rax
	movsd	%xmm0, (%rax)
	jmp	.LBB1_42
.LBB1_46:                               # %sw.default117
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$.L.str.12, %edi
	movl	$-1, %esi
	callq	error@PLT
	jmp	.LBB1_47
.LBB1_40:                               # %if.then77
                                        #   in Loop: Header=BB1_24 Depth=1
	xorl	%esi, %esi
	callq	memset@PLT
	.p2align	4, 0x90
.LBB1_42:                               # %if.end96
                                        #   in Loop: Header=BB1_24 Depth=1
	movl	$46, %edi
	callq	putchar@PLT
	jmp	.LBB1_47
.LBB1_48:                               # %for.end
	movl	$cfgparams, %esi
	movl	$4016, %edx                     # imm = 0xFB0
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	memcpy@PLT
	addq	$80056, %rsp                    # imm = 0x138B8
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
	.size	ParseContent, .Lfunc_end1-ParseContent
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI1_0:
	.quad	.LBB1_12
	.quad	.LBB1_11
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_4
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_18
	.quad	.LBB1_12
	.quad	.LBB1_18
	.quad	.LBB1_14
	.quad	.LBB1_5
                                        # -- End function
	.text
	.globl	InitParams                      # -- Begin function InitParams
	.p2align	4, 0x90
	.type	InitParams,@function
InitParams:                             # @InitParams
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$0, (%rdi)
	je	.LBB2_7
# %bb.1:                                # %while.body.preheader
	addq	$8, %rdi
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_5:                                # %if.then13
                                        #   in Loop: Header=BB2_2 Depth=1
	movsd	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movq	(%rdi), %rax
	movsd	%xmm0, (%rax)
.LBB2_6:                                # %if.end20
                                        #   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, 56(%rdi)
	leaq	64(%rdi), %rdi
	je	.LBB2_7
.LBB2_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rdi), %eax
	cmpl	$2, %eax
	je	.LBB2_5
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB2_2 Depth=1
	testl	%eax, %eax
	jne	.LBB2_6
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB2_2 Depth=1
	cvttsd2si	16(%rdi), %eax
	movq	(%rdi), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB2_6
.LBB2_7:                                # %while.end
	movl	$-1, %eax
	retq
.Lfunc_end2:
	.size	InitParams, .Lfunc_end2-InitParams
	.cfi_endproc
                                        # -- End function
	.globl	TestParams                      # -- Begin function TestParams
	.p2align	4, 0x90
	.type	TestParams,@function
TestParams:                             # @TestParams
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB3_26
# %bb.1:                                # %while.body.lr.ph
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	addq	$8, %r14
	movq	errortext@GOTPCREL(%rip), %r15
	jmp	.LBB3_2
.LBB3_22:                               # %if.then160
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.13, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
.LBB3_23:                               # %if.end169.sink.split
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	%r15, %rdi
	movl	$400, %esi                      # imm = 0x190
	callq	error@PLT
.LBB3_24:                               # %if.end169
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	56(%r14), %rcx
	addq	$64, %r14
	testq	%rcx, %rcx
	je	.LBB3_25
.LBB3_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	24(%r14), %eax
	cmpl	$3, %eax
	je	.LBB3_17
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$2, %eax
	je	.LBB3_11
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$1, %eax
	jne	.LBB3_24
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	8(%r14), %eax
	cmpl	$2, %eax
	je	.LBB3_8
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	testl	%eax, %eax
	jne	.LBB3_24
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r14), %rax
	movl	(%rax), %eax
	cvttsd2si	32(%r14), %r8d
	cmpl	%r8d, %eax
	setl	%dl
	cvttsd2si	40(%r14), %r9d
	cmpl	%r9d, %eax
	setg	%al
	orb	%dl, %al
	cmpb	$1, %al
	je	.LBB3_22
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_11:                               # %if.then77
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	8(%r14), %eax
	cmpl	$2, %eax
	je	.LBB3_15
# %bb.12:                               # %if.then77
                                        #   in Loop: Header=BB3_2 Depth=1
	testl	%eax, %eax
	jne	.LBB3_24
# %bb.13:                               # %if.then83
                                        #   in Loop: Header=BB3_2 Depth=1
	cvttsd2si	32(%r14), %r8d
	movq	(%r14), %rax
	cmpl	%r8d, (%rax)
	jge	.LBB3_24
# %bb.14:                               # %if.then93
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.15, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf@PLT
	jmp	.LBB3_23
	.p2align	4, 0x90
.LBB3_17:                               # %if.then135
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$0, 8(%r14)
	jne	.LBB3_24
# %bb.18:                               # %if.then141
                                        #   in Loop: Header=BB3_2 Depth=1
	testq	%rbx, %rbx
	je	.LBB3_19
# %bb.20:                               # %cond.true
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	(%rbx), %eax
	jmp	.LBB3_21
.LBB3_15:                               # %if.then109
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r14), %rax
	movsd	32(%r14), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	.LBB3_24
# %bb.16:                               # %if.then118
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.16, %edx
	movq	%r15, %rdi
	movb	$1, %al
	callq	snprintf@PLT
	jmp	.LBB3_23
.LBB3_8:                                # %if.then39
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r14), %rax
	movsd	(%rax), %xmm2                   # xmm2 = mem[0],zero
	movsd	32(%r14), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	movsd	40(%r14), %xmm1                 # xmm1 = mem[0],zero
	ja	.LBB3_10
# %bb.9:                                # %if.then39
                                        #   in Loop: Header=BB3_2 Depth=1
	ucomisd	%xmm1, %xmm2
	jbe	.LBB3_24
.LBB3_10:                               # %if.then57
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.14, %edx
	movq	%r15, %rdi
	movb	$2, %al
	callq	snprintf@PLT
	jmp	.LBB3_23
.LBB3_19:                               #   in Loop: Header=BB3_2 Depth=1
	xorl	%eax, %eax
.LBB3_21:                               # %cond.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	(%r14), %rdx
	movl	(%rdx), %edx
	movsd	32(%r14), %xmm0                 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	40(%r14), %r9d
	cvttsd2si	%xmm0, %r8d
	cmpl	%r8d, %edx
	setl	%al
	cmpl	%r9d, %edx
	setg	%dl
	orb	%al, %dl
	cmpb	$1, %dl
	je	.LBB3_22
	jmp	.LBB3_24
.LBB3_25:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB3_26:                               # %while.end
	movl	$-1, %eax
	retq
.Lfunc_end3:
	.size	TestParams, .Lfunc_end3-TestParams
	.cfi_endproc
                                        # -- End function
	.globl	DisplayParams                   # -- Begin function DisplayParams
	.p2align	4, 0x90
	.type	DisplayParams,@function
DisplayParams:                          # @DisplayParams
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$.Lstr.23, %edi
	callq	puts@PLT
	xorl	%ebp, %ebp
	movl	$.L.str.18, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movl	$.Lstr.23, %edi
	callq	puts@PLT
	movq	(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB4_9
# %bb.1:                                # %while.body.preheader
	addq	$8, %rbx
	xorl	%ebp, %ebp
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_6:                                # %if.then16
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rdx
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf@PLT
.LBB4_8:                                # %if.end38
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	56(%rbx), %rsi
	incl	%ebp
	addq	$64, %rbx
	testq	%rsi, %rsi
	je	.LBB4_9
.LBB4_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	8(%rbx), %eax
	cmpl	$2, %eax
	je	.LBB4_7
# %bb.3:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	cmpl	$1, %eax
	je	.LBB4_6
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB4_2 Depth=1
	testl	%eax, %eax
	jne	.LBB4_8
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movl	(%rax), %edx
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	jmp	.LBB4_8
	.p2align	4, 0x90
.LBB4_7:                                # %if.then29
                                        #   in Loop: Header=BB4_2 Depth=1
	movq	(%rbx), %rax
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movl	$.L.str.21, %edi
	movb	$1, %al
	callq	printf@PLT
	jmp	.LBB4_8
.LBB4_9:                                # %while.end
	movl	$.Lstr.23, %edi
	callq	puts@PLT
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	DisplayParams, .Lfunc_end4-DisplayParams
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Cannot open configuration file %s."
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Cannot fseek in configuration file %s."
	.size	.L.str.2, 39

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Unreasonable Filesize %ld reported by ftell for configuration file %s."
	.size	.L.str.3, 71

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"GetConfigFileContent: buf"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n\tParsing error in config file: Parameter Name '%s' not recognized."
	.size	.L.str.5, 68

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" Parsing error in config file: '=' expected as the second token in each line."
	.size	.L.str.7, 78

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%d"
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" Parsing error: Expected numerical value for Parameter of %s, found '%s'."
	.size	.L.str.9, 74

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%lf"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Unknown value type in the map definition of configfile.h"
	.size	.L.str.12, 57

	.type	cfgparams,@object               # @cfgparams
	.bss
	.globl	cfgparams
	.p2align	3, 0x0
cfgparams:
	.zero	4016
	.size	cfgparams, 4016

	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"Error in input parameter %s. Check configuration file. Value should be in [%d, %d] range."
	.size	.L.str.13, 90

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Error in input parameter %s. Check configuration file. Value should be in [%.2f, %.2f] range."
	.size	.L.str.14, 94

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Error in input parameter %s. Check configuration file. Value should not be smaller than %d."
	.size	.L.str.15, 92

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Error in input parameter %s. Check configuration file. Value should not be smaller than %2.f."
	.size	.L.str.16, 94

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"*               %s                   *\n"
	.size	.L.str.18, 40

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Parameter %s = %d\n"
	.size	.L.str.19, 19

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Parameter %s = %s\n"
	.size	.L.str.20, 19

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Parameter %s = %.2f\n"
	.size	.L.str.21, 21

	.type	.Lstr.23,@object                # @str.23
.Lstr.23:
	.asciz	"******************************************************"
	.size	.Lstr.23, 55

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
