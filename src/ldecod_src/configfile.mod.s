	.text
	.file	"configfile.c"
	.globl	JMDecHelpExit                   # -- Begin function JMDecHelpExit
	.p2align	4, 0x90
	.type	JMDecHelpExit,@function
JMDecHelpExit:                          # @JMDecHelpExit
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.15, %edi
	movl	$806, %esi                      # imm = 0x326
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end0:
	.size	JMDecHelpExit, .Lfunc_end0-JMDecHelpExit
	.cfi_endproc
                                        # -- End function
	.globl	ParseCommand                    # -- Begin function ParseCommand
	.p2align	4, 0x90
	.type	ParseCommand,@function
ParseCommand:                           # @ParseCommand
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
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, (%rsp)                    # 8-byte Spill
	cmpl	$2, %esi
	jne	.LBB1_4
# %bb.1:                                # %if.then
	movq	8(%r14), %rax
	cmpb	$45, (%rax)
	jne	.LBB1_4
# %bb.2:                                # %if.then.tail
	cmpb	$118, 1(%rax)
	je	.LBB1_69
# %bb.3:                                # %if.end.tail
	cmpb	$104, 1(%rax)
	je	.LBB1_68
.LBB1_4:                                # %if.end9
	movl	$cfgparams, %edi
	movl	$4016, %edx                     # imm = 0xFB0
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$.Lstr, %edi
	callq	puts@PLT
	movl	$Map, %edi
	callq	InitParams@PLT
	movl	$1, %ebx
	movl	$.L.str.16, %r12d
	cmpl	$3, %ebp
	jl	.LBB1_10
# %bb.5:                                # %if.then13
	movq	8(%r14), %r13
	cmpb	$45, (%r13)
	jne	.LBB1_10
# %bb.6:                                # %if.then13.tail
	cmpb	$100, 1(%r13)
	jne	.LBB1_8
# %bb.7:                                # %if.then17
	movq	16(%r14), %r15
	movl	$.L.str.22, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp@PLT
	xorl	%r12d, %r12d
	testl	%eax, %eax
	cmovneq	%r15, %r12
	movl	$3, %ebx
.LBB1_8:                                # %if.end24.tail
	cmpb	$104, 1(%r13)
	je	.LBB1_68
# %bb.9:                                # %if.end30
	testq	%r12, %r12
	je	.LBB1_12
.LBB1_10:                               # %if.then31
	movl	$.L.str.23, %edi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r12, %rdi
	callq	GetConfigFileContent@PLT
	testq	%rax, %rax
	je	.LBB1_12
# %bb.11:                               # %if.then35
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	strlen@PLT
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r12, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movq	%r12, %rdi
	callq	free@PLT
.LBB1_12:                               # %if.end39
	cmpl	%ebp, %ebx
	jge	.LBB1_66
# %bb.13:                               # %while.body.lr.ph
	movq	(%rsp), %rax                    # 8-byte Reload
	leaq	3976(%rax), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	4008(%rax), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	leaq	255(%rax), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	addq	$510, %rax                      # imm = 0x1FE
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_26:                               # %if.then58
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rdi
	callq	GetConfigFileContent@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB1_27
.LBB1_28:                               # %if.end65
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rsi
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r13, %rdi
	callq	strlen@PLT
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
	movl	$10, %edi
	callq	putchar@PLT
	movq	%r13, %rdi
	callq	free@PLT
.LBB1_14:                               # %conf_read_check.exit390
                                        #   in Loop: Header=BB1_16 Depth=1
	addl	$2, %ebx
.LBB1_15:                               # %if.end261
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpl	%ebp, %ebx
	jge	.LBB1_66
.LBB1_16:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_49 Depth 3
	movslq	%ebx, %r15
	movq	(%r14,%r15,8), %r13
	movzbl	(%r13), %r12d
	addl	$-45, %r12d
	movl	%r12d, %eax
	je	.LBB1_23
# %bb.17:                               # %lor.lhs.false150.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	testl	%eax, %eax
	je	.LBB1_64
.LBB1_18:                               # %if.else162
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$.L.str.39, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB1_29
# %bb.19:                               # %lor.lhs.false168
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$.L.str.40, %esi
	movl	$4, %edx
	movq	%r13, %rdi
	callq	strncmp@PLT
	testl	%eax, %eax
	je	.LBB1_29
# %bb.20:                               # %sub_0445
                                        #   in Loop: Header=BB1_16 Depth=1
	testl	%r12d, %r12d
	je	.LBB1_35
# %bb.21:                               # %lor.lhs.false186.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	testl	%r12d, %r12d
	je	.LBB1_37
.LBB1_22:                               # %if.else250
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.45, %edx
	movq	errortext@GOTPCREL(%rip), %r15
	movq	%r15, %rdi
	movl	%ebx, %ecx
	movq	%r13, %r8
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r15, %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_23:                               # %while.body.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$104, 1(%r13)
	je	.LBB1_68
# %bb.24:                               # %if.end47.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$102, 1(%r13)
	je	.LBB1_26
# %bb.25:                               # %lor.lhs.false.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$70, 1(%r13)
	je	.LBB1_26
# %bb.31:                               # %if.else74.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$105, 1(%r13)
	je	.LBB1_33
# %bb.32:                               # %lor.lhs.false80.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$73, 1(%r13)
	jne	.LBB1_53
.LBB1_33:                               # %if.then86
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rsi
	movl	$255, %edx
	movq	(%rsp), %rdi                    # 8-byte Reload
.LBB1_34:                               # %if.end261
                                        #   in Loop: Header=BB1_16 Depth=1
	callq	strncpy@PLT
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_29:                               # %if.then174
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rdi
	movl	$.L.str.38, %esi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB1_14
	jmp	.LBB1_30
.LBB1_27:                               # %if.then64
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	errortext@GOTPCREL(%rip), %rdi
	movl	$300, %esi                      # imm = 0x12C
	callq	error@PLT
	jmp	.LBB1_28
.LBB1_35:                               # %if.else180.tail
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$112, 1(%r13)
	je	.LBB1_37
# %bb.36:                               # %sub_1449
                                        #   in Loop: Header=BB1_16 Depth=1
	movzbl	1(%r13), %r12d
	addl	$-80, %r12d
	testl	%r12d, %r12d
	jne	.LBB1_22
.LBB1_37:                               # %if.then192
                                        #   in Loop: Header=BB1_16 Depth=1
	incl	%ebx
	xorl	%r12d, %r12d
	movl	%ebx, %r15d
	cmpl	%ebp, %ebx
	jge	.LBB1_42
# %bb.38:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	movslq	%ebx, %rax
	leaq	(%r14,%rax,8), %r13
	xorl	%r12d, %r12d
	movl	%ebx, %r15d
	.p2align	4, 0x90
.LBB1_39:                               # %land.rhs
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rdi
	cmpb	$45, (%rdi)
	je	.LBB1_42
# %bb.40:                               # %while.body202
                                        #   in Loop: Header=BB1_39 Depth=2
	callq	strlen@PLT
	addl	%eax, %r12d
	incl	%r15d
	addq	$8, %r13
	cmpl	%r15d, %ebp
	jne	.LBB1_39
# %bb.41:                               #   in Loop: Header=BB1_16 Depth=1
	movl	%ebp, %r15d
.LBB1_42:                               # %while.end
                                        #   in Loop: Header=BB1_16 Depth=1
	addl	$1000, %r12d                    # imm = 0x3E8
	movslq	%r12d, %rdi
	callq	malloc@PLT
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB1_44
# %bb.43:                               # %if.end215
                                        #   in Loop: Header=BB1_16 Depth=1
	movb	$0, (%r13)
	cmpl	%r15d, %ebx
	jl	.LBB1_45
	jmp	.LBB1_52
.LBB1_44:                               # %if.then214
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$.L.str.43, %edi
	callq	no_mem_exit@PLT
	movb	$0, (%r13)
	cmpl	%r15d, %ebx
	jge	.LBB1_52
.LBB1_45:                               # %while.body220.preheader
                                        #   in Loop: Header=BB1_16 Depth=1
	movslq	%ebx, %rbx
	.p2align	4, 0x90
.LBB1_47:                               # %while.body220
                                        #   Parent Loop BB1_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_48 Depth 3
                                        #       Child Loop BB1_49 Depth 3
	movq	(%r14,%rbx,8), %r12
	movq	%r13, %rdi
	callq	strlen@PLT
	cltq
	addq	%r13, %rax
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	jne	.LBB1_49
	jmp	.LBB1_48
	.p2align	4, 0x90
.LBB1_50:                               # %if.else239
                                        #   in Loop: Header=BB1_49 Depth=3
	movb	%cl, (%rax)
	incq	%rax
	incq	%r12
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	jne	.LBB1_49
.LBB1_48:                               # %if.then236
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movw	$15648, (%rax)                  # imm = 0x3D20
	movb	$32, 2(%rax)
	addq	$3, %rax
	incq	%r12
	movzbl	(%r12), %ecx
	cmpl	$61, %ecx
	je	.LBB1_48
.LBB1_49:                               # %while.cond228
                                        #   Parent Loop BB1_16 Depth=1
                                        #     Parent Loop BB1_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%ecx, %ecx
	jne	.LBB1_50
# %bb.46:                               # %while.end243
                                        #   in Loop: Header=BB1_47 Depth=2
	movb	$0, (%rax)
	incq	%rbx
	cmpl	%ebx, %r15d
	jne	.LBB1_47
# %bb.51:                               #   in Loop: Header=BB1_16 Depth=1
	movl	%r15d, %ebx
.LBB1_52:                               # %while.end245
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$.L.str.44, %edi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	printf@PLT
	movq	%r13, %rdi
	callq	strlen@PLT
	movl	$Map, %esi
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%r13, %rdx
	movl	%eax, %ecx
	callq	ParseContent@PLT
	movq	%r13, %rdi
	callq	free@PLT
	movl	$10, %edi
	callq	putchar@PLT
	jmp	.LBB1_15
.LBB1_53:                               # %if.else92.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$114, 1(%r13)
	je	.LBB1_55
# %bb.54:                               # %lor.lhs.false98.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$82, 1(%r13)
	jne	.LBB1_56
.LBB1_55:                               # %if.then104
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rsi
	movl	$255, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB1_34
.LBB1_56:                               # %if.else111.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$111, 1(%r13)
	je	.LBB1_58
# %bb.57:                               # %lor.lhs.false117.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$79, 1(%r13)
	jne	.LBB1_59
.LBB1_58:                               # %if.then123
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rsi
	movl	$255, %edx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB1_34
.LBB1_59:                               # %if.else130.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$115, 1(%r13)
	je	.LBB1_61
# %bb.60:                               # %lor.lhs.false136.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$83, 1(%r13)
	jne	.LBB1_62
.LBB1_61:                               # %if.then142
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	$1, 784(%rax)
	incl	%ebx
	jmp	.LBB1_15
.LBB1_62:                               # %if.else144.tail.thread
                                        #   in Loop: Header=BB1_16 Depth=1
	cmpb	$110, 1(%r13)
	je	.LBB1_64
# %bb.63:                               # %sub_1443
                                        #   in Loop: Header=BB1_16 Depth=1
	movzbl	1(%r13), %eax
	addl	$-78, %eax
	testl	%eax, %eax
	jne	.LBB1_18
	.p2align	4, 0x90
.LBB1_64:                               # %if.then156
                                        #   in Loop: Header=BB1_16 Depth=1
	movq	8(%r14,%r15,8), %rdi
	movl	$.L.str.38, %esi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB1_14
.LBB1_30:                               # %if.then.i389
                                        #   in Loop: Header=BB1_16 Depth=1
	movl	$.L.str.47, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	jmp	.LBB1_14
.LBB1_66:                               # %while.end262
	movl	$10, %edi
	callq	putchar@PLT
	movl	$Map, %edi
	xorl	%esi, %esi
	callq	TestParams@PLT
	movl	$cfgparams, %edi
	movl	$4016, %edx                     # imm = 0xFB0
	movq	(%rsp), %rbx                    # 8-byte Reload
	movq	%rbx, %rsi
	callq	memcpy@PLT
	movl	$0, 1068(%rbx)
	cmpl	$0, 4012(%rbx)
	je	.LBB1_67
# %bb.70:                               # %if.then265
	movl	$Map, %edi
	movl	$.L.str.46, %esi
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
	jmp	DisplayParams@PLT               # TAILCALL
.LBB1_67:                               # %if.end267
	.cfi_def_cfa_offset 96
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
.LBB1_68:                               # %if.then7
	.cfi_def_cfa_offset 96
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	$.L.str.15, %edi
	movl	$806, %esi                      # imm = 0x326
	movl	$1, %edx
	callq	fwrite@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB1_69:                               # %if.then2
	movl	$.Lstr.48, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end1:
	.size	ParseCommand, .Lfunc_end1-ParseCommand
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"InputFile"
	.size	.L.str, 10

	.type	cfgparams,@object               # @cfgparams
	.bss
	.globl	cfgparams
	.p2align	3, 0x0
cfgparams:
	.zero	4016
	.size	cfgparams, 4016

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"OutputFile"
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"RefFile"
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"WriteUV"
	.size	.L.str.3, 8

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"FileFormat"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"RefOffset"
	.size	.L.str.5, 10

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"POCScale"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"DisplayDecParams"
	.size	.L.str.7, 17

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"ConcealMode"
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RefPOCGap"
	.size	.L.str.9, 10

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"POCGap"
	.size	.L.str.10, 7

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Silent"
	.size	.L.str.11, 7

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"IntraProfileDeblocking"
	.size	.L.str.12, 23

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"DecFrmNum"
	.size	.L.str.13, 10

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"DecodeAllLayers"
	.size	.L.str.14, 16

	.type	Map,@object                     # @Map
	.data
	.globl	Map
	.p2align	4, 0x0
Map:
	.quad	.L.str
	.quad	cfgparams
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.1
	.quad	cfgparams+255
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.2
	.quad	cfgparams+510
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	255                             # 0xff
	.zero	4
	.quad	.L.str.3
	.quad	cfgparams+780
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	cfgparams+768
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.5
	.quad	cfgparams+772
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4070000000000000              # double 256
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	cfgparams+776
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4024000000000000              # double 10
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	cfgparams+4012
	.long	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	cfgparams+3980
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4000000000000000              # double 2
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.9
	.quad	cfgparams+3984
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4010000000000000              # double 4
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	cfgparams+3988
	.long	0                               # 0x0
	.zero	4
	.quad	0x4000000000000000              # double 2
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x4010000000000000              # double 4
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	cfgparams+784
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	cfgparams+788
	.long	0                               # 0x0
	.zero	4
	.quad	0x3ff0000000000000              # double 1
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.13
	.quad	cfgparams+4008
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	2                               # 0x2
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	cfgparams+3976
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	1                               # 0x1
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x3ff0000000000000              # double 1
	.long	0                               # 0x0
	.zero	4
	.quad	0
	.quad	0
	.long	4294967295                      # 0xffffffff
	.zero	4
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.quad	0x0000000000000000              # double 0
	.quad	0x0000000000000000              # double 0
	.long	0                               # 0x0
	.zero	4
	.size	Map, 1024

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"\n   ldecod [-h] [-d defdec.cfg] {[-f curenc1.cfg]...[-f curencN.cfg]} {[-p EncParam1=EncValue1]..[-p EncParamM=EncValueM]}\n\n## Parameters\n\n## Options\n   -h :  prints function usage\n   -d :  use <defdec.cfg> as default file for parameter initializations.\n         If not used then file defaults to encoder.cfg in local directory.\n   -f :  read <curencM.cfg> for reseting selected encoder parameters.\n         Multiple files could be used that set different parameters\n   -p :  Set parameter <DecParamM> to <DecValueM>.\n         See default decoder.cfg file for description of all parameters.\n\n## Examples of usage:\n   ldecod\n   ldecod  -h\n   ldecod  -d default.cfg\n   ldecod  -f curenc1.cfg\n   ldecod  -f curenc1.cfg -p InputFile=\"e:\\data\\container_qcif_30.264\" -p OutputFile=\"dec.yuv\" -p RefFile=\"Rec.yuv\"\n"
	.size	.L.str.15, 807

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"decoder.cfg"
	.size	.L.str.16, 12

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"null"
	.size	.L.str.22, 5

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Parsing Configfile %s\n"
	.size	.L.str.23, 23

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Parsing Configfile %s"
	.size	.L.str.27, 22

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%d"
	.size	.L.str.38, 3

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"-mpr"
	.size	.L.str.39, 5

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"-MPR"
	.size	.L.str.40, 5

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Configure: content"
	.size	.L.str.43, 19

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Parsing command line string '%s'"
	.size	.L.str.44, 33

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Error in command line, ac %d, around string '%s', missing -f or -p parameters?"
	.size	.L.str.45, 79

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Decoder Parameters"
	.size	.L.str.46, 19

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"init_conf: error reading from config file"
	.size	.L.str.47, 42

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Setting Default Parameters..."
	.size	.Lstr, 30

	.type	.Lstr.48,@object                # @str.48
.Lstr.48:
	.asciz	"JM 17 (FRExt)"
	.size	.Lstr.48, 14

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
