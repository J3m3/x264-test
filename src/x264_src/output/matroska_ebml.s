	.text
	.file	"matroska_ebml.c"
	.globl	mk_create_writer                # -- Begin function mk_create_writer
	.p2align	4, 0x90
	.type	mk_create_writer,@function
mk_create_writer:                       # @mk_create_writer
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
	movq	%rdi, %r14
	movl	$1, %edi
	movl	$104, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB0_13
# %bb.1:                                # %if.else.i
	movq	%rax, %rbx
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB0_12
# %bb.2:                                # %if.end5
	movq	%rbx, 24(%rax)
	movq	%rbx, %r15
	addq	$48, %r15
	movq	%r15, 8(%rax)
	movq	%rax, 48(%rbx)
	movq	%rax, 16(%rbx)
	cmpb	$45, (%r14)
	jne	.LBB0_4
# %bb.3:                                # %if.end5.tail
	cmpb	$0, 1(%r14)
	je	.LBB0_7
.LBB0_4:                                # %if.else
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	callq	fopen64@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_8
.LBB0_5:                                # %if.end15
	movq	$1000000, 64(%rbx)              # imm = 0xF4240
	jmp	.LBB0_14
.LBB0_7:                                # %if.then8
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB0_5
.LBB0_8:                                # %if.then14
	movq	40(%rbx), %r14
	testq	%r14, %r14
	je	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r12
	movq	40(%r14), %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r12, %r14
	testq	%r12, %r12
	jne	.LBB0_9
.LBB0_10:                               # %for.cond.cleanup.i
	movq	(%r15), %r14
	testq	%r14, %r14
	je	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # %for.body6.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r15
	movq	40(%r14), %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %r14
	testq	%r15, %r15
	jne	.LBB0_11
.LBB0_12:                               # %if.then4
	movq	%rbx, %rdi
	callq	free@PLT
.LBB0_13:                               # %cleanup
	xorl	%ebx, %ebx
.LBB0_14:                               # %cleanup
	movq	%rbx, %rax
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
.Lfunc_end0:
	.size	mk_create_writer, .Lfunc_end0-mk_create_writer
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_create_context
	.type	mk_create_context,@function
mk_create_context:                      # @mk_create_context
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
	movq	40(%rdi), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.1:                                # %if.then
	movq	(%rax), %rcx
	movq	%rcx, 40(%rbx)
	jmp	.LBB1_2
.LBB1_4:                                # %if.else
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB1_5
.LBB1_2:                                # %if.end6
	movq	%r14, 16(%rax)
	movq	%rbx, 24(%rax)
	movl	%ebp, 32(%rax)
	movq	48(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB1_3
# %bb.6:                                # %if.then11
	movq	%rax, 8(%rcx)
	movq	24(%rax), %rbx
	movq	48(%rbx), %rcx
	jmp	.LBB1_7
.LBB1_3:
	xorl	%ecx, %ecx
.LBB1_7:                                # %if.end15
	leaq	48(%rbx), %rdx
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rax, 48(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	mk_create_context, .Lfunc_end1-mk_create_context
	.cfi_endproc
                                        # -- End function
	.globl	mk_writeHeader                  # -- Begin function mk_writeHeader
	.p2align	4, 0x90
	.type	mk_writeHeader,@function
mk_writeHeader:                         # @mk_writeHeader
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$-1, %eax
	cmpb	$0, 96(%rdi)
	je	.LBB2_1
# %bb.139:                              # %cleanup
	retq
.LBB2_1:                                # %if.end
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
	movq	%rdi, %r14
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax
	movq	%rax, 64(%rdi)
	movq	%r9, 56(%rdi)
	movq	16(%rdi), %rbx
	movq	40(%rdi), %r12
	testq	%r12, %r12
	je	.LBB2_3
# %bb.2:                                # %if.then.i
	movq	(%r12), %rax
	movq	%rax, 40(%r14)
	jmp	.LBB2_4
.LBB2_3:                                # %if.else.i
	movl	$1, %edi
	movl	$56, %esi
	movq	%r9, %r15
	movl	%r8d, %ebp
	movq	%rcx, %r12
	movq	%rdx, %r13
	callq	calloc@PLT
	movq	%r13, %rdx
	movq	%r12, %rcx
	movl	%ebp, %r8d
	movq	%r15, %r9
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB2_137
.LBB2_4:                                # %if.end6.i
	movq	%rbx, 16(%r12)
	movq	%r14, 24(%r12)
	movl	$440786851, 32(%r12)            # imm = 0x1A45DFA3
	movq	48(%r14), %rax
	testq	%rax, %rax
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	je	.LBB2_6
# %bb.5:                                # %if.then11.i
	movq	%r12, 8(%rax)
	movq	24(%r12), %rcx
	movq	48(%rcx), %rax
	jmp	.LBB2_7
.LBB2_6:
	xorl	%eax, %eax
	movq	%r14, %rcx
.LBB2_7:                                # %do.body
	movl	%r8d, 4(%rsp)                   # 4-byte Spill
	leaq	48(%rcx), %rdx
	movq	%rax, (%r12)
	movq	%rdx, 8(%r12)
	movq	%r12, 48(%rcx)
	movl	48(%r12), %r13d
	movl	52(%r12), %eax
	leal	2(%r13), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB2_12
# %bb.8:                                # %if.then.i68.i
	movq	%r9, %rbp
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_9:                                # %while.cond.i72.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r15d
	ja	.LBB2_9
# %bb.10:                               # %while.end.i76.i
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.11:                               # %if.end.i81.i
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB2_13
.LBB2_12:                               # %entry.if.end11_crit_edge.i61.i
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	movq	40(%r12), %rax
	movl	%r13d, %ecx
.LBB2_13:                               # %land.rhs.preheader.i
	movl	%ecx, %ecx
	movw	$-31166, (%rax,%rcx)            # imm = 0x8642
	movl	%r15d, 48(%r12)
	leal	3(%r13), %ebp
	movl	52(%r12), %eax
	cmpl	%eax, %ebp
	jbe	.LBB2_18
# %bb.14:                               # %if.then.i.i515
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_15:                               # %while.cond.i.i519
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %ebp
	ja	.LBB2_15
# %bb.16:                               # %while.end.i.i523
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.17:                               # %if.end.i.i528
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %r15d
	jmp	.LBB2_19
.LBB2_18:                               # %entry.if.end11_crit_edge.i.i509
	movq	40(%r12), %rax
.LBB2_19:                               # %do.body31.i
	movl	%r15d, %ecx
	movb	$-127, (%rax,%rcx)
	movl	%ebp, 48(%r12)
	leal	4(%r13), %r15d
	movl	52(%r12), %eax
	cmpl	%eax, %r15d
	jbe	.LBB2_24
# %bb.20:                               # %if.then.i.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_21:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r15d
	ja	.LBB2_21
# %bb.22:                               # %while.end.i.i
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.23:                               # %if.end.i.i
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebp
	jmp	.LBB2_25
.LBB2_24:                               # %entry.if.end11_crit_edge.i.i
	movq	40(%r12), %rax
.LBB2_25:                               # %do.body8
	movl	%ebp, %ecx
	movb	$1, (%rax,%rcx)
	movl	%r15d, 48(%r12)
	movl	52(%r12), %eax
	leal	6(%r13), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB2_30
# %bb.26:                               # %if.then.i68.i571
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_27:                               # %while.cond.i72.i575
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebx
	ja	.LBB2_27
# %bb.28:                               # %while.end.i76.i579
	movq	40(%r12), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.29:                               # %if.end.i81.i584
	movq	%rax, 40(%r12)
	movl	%r15d, 52(%r12)
	movl	48(%r12), %r15d
	jmp	.LBB2_31
.LBB2_30:                               # %entry.if.end11_crit_edge.i61.i563
	movq	40(%r12), %rax
.LBB2_31:                               # %land.rhs.preheader.i317
	movl	%r15d, %ecx
	movw	$-2238, (%rax,%rcx)             # imm = 0xF742
	movl	%ebx, 48(%r12)
	leal	7(%r13), %ebp
	movl	52(%r12), %eax
	cmpl	%eax, %ebp
	jbe	.LBB2_36
# %bb.32:                               # %if.then.i.i543
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_33:                               # %while.cond.i.i547
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %ebp
	ja	.LBB2_33
# %bb.34:                               # %while.end.i.i551
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.35:                               # %if.end.i.i556
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebx
	jmp	.LBB2_37
.LBB2_36:                               # %entry.if.end11_crit_edge.i.i536
	movq	40(%r12), %rax
.LBB2_37:                               # %do.body31.i320
	movl	%ebx, %ecx
	movb	$-127, (%rax,%rcx)
	movl	%ebp, 48(%r12)
	leal	8(%r13), %r15d
	movl	52(%r12), %eax
	cmpl	%eax, %r15d
	jbe	.LBB2_42
# %bb.38:                               # %if.then.i.i333
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_39:                               # %while.cond.i.i337
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r15d
	ja	.LBB2_39
# %bb.40:                               # %while.end.i.i341
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.41:                               # %if.end.i.i346
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebp
	jmp	.LBB2_43
.LBB2_42:                               # %entry.if.end11_crit_edge.i.i326
	movq	40(%r12), %rax
.LBB2_43:                               # %do.body15
	movl	%ebp, %ecx
	movb	$1, (%rax,%rcx)
	movl	%r15d, 48(%r12)
	movl	52(%r12), %eax
	leal	10(%r13), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB2_48
# %bb.44:                               # %if.then.i68.i627
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_45:                               # %while.cond.i72.i631
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebx
	ja	.LBB2_45
# %bb.46:                               # %while.end.i76.i635
	movq	40(%r12), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.47:                               # %if.end.i81.i640
	movq	%rax, 40(%r12)
	movl	%r15d, 52(%r12)
	movl	48(%r12), %r15d
	jmp	.LBB2_49
.LBB2_48:                               # %entry.if.end11_crit_edge.i61.i619
	movq	40(%r12), %rax
.LBB2_49:                               # %land.rhs.preheader.i359
	movl	%r15d, %ecx
	movw	$-3518, (%rax,%rcx)             # imm = 0xF242
	movl	%ebx, 48(%r12)
	leal	11(%r13), %ebp
	movl	52(%r12), %eax
	cmpl	%eax, %ebp
	jbe	.LBB2_54
# %bb.50:                               # %if.then.i.i599
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_51:                               # %while.cond.i.i603
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %ebp
	ja	.LBB2_51
# %bb.52:                               # %while.end.i.i607
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.53:                               # %if.end.i.i612
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebx
	jmp	.LBB2_55
.LBB2_54:                               # %entry.if.end11_crit_edge.i.i592
	movq	40(%r12), %rax
.LBB2_55:                               # %do.body31.i362
	movl	%ebx, %ecx
	movb	$-127, (%rax,%rcx)
	movl	%ebp, 48(%r12)
	leal	12(%r13), %r15d
	movl	52(%r12), %eax
	cmpl	%eax, %r15d
	jbe	.LBB2_60
# %bb.56:                               # %if.then.i.i375
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_57:                               # %while.cond.i.i379
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r15d
	ja	.LBB2_57
# %bb.58:                               # %while.end.i.i383
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.59:                               # %if.end.i.i388
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebp
	jmp	.LBB2_61
.LBB2_60:                               # %entry.if.end11_crit_edge.i.i368
	movq	40(%r12), %rax
.LBB2_61:                               # %do.body22
	movl	%ebp, %ecx
	movb	$4, (%rax,%rcx)
	movl	%r15d, 48(%r12)
	movl	52(%r12), %eax
	leal	14(%r13), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB2_66
# %bb.62:                               # %if.then.i68.i683
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_63:                               # %while.cond.i72.i687
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebx
	ja	.LBB2_63
# %bb.64:                               # %while.end.i76.i691
	movq	40(%r12), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.65:                               # %if.end.i81.i696
	movq	%rax, 40(%r12)
	movl	%r15d, 52(%r12)
	movl	48(%r12), %r15d
	jmp	.LBB2_67
.LBB2_66:                               # %entry.if.end11_crit_edge.i61.i675
	movq	40(%r12), %rax
.LBB2_67:                               # %land.rhs.preheader.i401
	movl	%r15d, %ecx
	movw	$-3262, (%rax,%rcx)             # imm = 0xF342
	movl	%ebx, 48(%r12)
	leal	15(%r13), %ebp
	movl	52(%r12), %eax
	cmpl	%eax, %ebp
	jbe	.LBB2_72
# %bb.68:                               # %if.then.i.i655
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_69:                               # %while.cond.i.i659
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %ebp
	ja	.LBB2_69
# %bb.70:                               # %while.end.i.i663
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.71:                               # %if.end.i.i668
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebx
	jmp	.LBB2_73
.LBB2_72:                               # %entry.if.end11_crit_edge.i.i648
	movq	40(%r12), %rax
.LBB2_73:                               # %do.body31.i404
	movl	%ebx, %ecx
	movb	$-127, (%rax,%rcx)
	movl	%ebp, 48(%r12)
	leal	16(%r13), %r15d
	movl	52(%r12), %eax
	cmpl	%eax, %r15d
	jbe	.LBB2_78
# %bb.74:                               # %if.then.i.i417
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_75:                               # %while.cond.i.i421
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r15d
	ja	.LBB2_75
# %bb.76:                               # %while.end.i.i425
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.77:                               # %if.end.i.i430
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebp
	jmp	.LBB2_79
.LBB2_78:                               # %entry.if.end11_crit_edge.i.i410
	movq	40(%r12), %rax
.LBB2_79:                               # %do.body29
	movl	%ebp, %ecx
	movb	$8, (%rax,%rcx)
	movl	%r15d, 48(%r12)
	movl	52(%r12), %eax
	addl	$18, %r13d
	cmpl	%eax, %r13d
	jbe	.LBB2_84
# %bb.80:                               # %if.then.i68.i711
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_81:                               # %while.cond.i72.i715
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r13d
	ja	.LBB2_81
# %bb.82:                               # %while.end.i76.i719
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.83:                               # %if.end.i81.i724
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %r15d
	jmp	.LBB2_85
.LBB2_84:                               # %entry.if.end11_crit_edge.i61.i703
	movq	40(%r12), %rax
.LBB2_85:                               # %do.body2.i
	movl	%r15d, %ecx
	movw	$-32190, (%rax,%rcx)            # imm = 0x8242
	movl	%r13d, 48(%r12)
	movq	%r12, %rdi
	movl	$8, %esi
	callq	mk_write_size
	testl	%eax, %eax
	js	.LBB2_137
# %bb.86:                               # %do.body10.i
	movl	48(%r12), %r13d
	movl	52(%r12), %eax
	leal	8(%r13), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB2_91
# %bb.87:                               # %if.then.i.i446
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB2_88:                               # %while.cond.i.i450
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %ebp
	ja	.LBB2_88
# %bb.89:                               # %while.end.i.i454
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.90:                               # %if.end.i.i459
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB2_92
.LBB2_91:                               # %entry.if.end11_crit_edge.i.i439
	movq	40(%r12), %rax
	movl	%r13d, %ecx
.LBB2_92:                               # %do.body36
	movl	%ecx, %ecx
	movabsq	$7019831366685843821, %rdx      # imm = 0x616B736F7274616D
	movq	%rdx, (%rax,%rcx)
	movl	%ebp, 48(%r12)
	movl	52(%r12), %eax
	addl	$10, %r13d
	cmpl	%eax, %r13d
	jbe	.LBB2_97
# %bb.93:                               # %if.then.i68.i739
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
.LBB2_94:                               # %while.cond.i72.i743
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %eax
	cmpl	%ebx, %r13d
	ja	.LBB2_94
# %bb.95:                               # %while.end.i76.i747
	movq	40(%r12), %rdi
	movl	%ebx, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.96:                               # %if.end.i81.i752
	movq	%rax, 40(%r12)
	movl	%ebx, 52(%r12)
	movl	48(%r12), %ebp
	jmp	.LBB2_98
.LBB2_97:                               # %entry.if.end11_crit_edge.i61.i731
	movq	40(%r12), %rax
.LBB2_98:                               # %land.rhs.preheader.i471
	movl	%ebp, %ecx
	movw	$-30910, (%rax,%rcx)            # imm = 0x8742
	movl	%r13d, 48(%r12)
	movq	%r12, %rdi
	movl	$1, %esi
	callq	mk_write_size
	testl	%eax, %eax
	js	.LBB2_137
# %bb.99:                               # %do.body31.i474
	movl	48(%r12), %ecx
	movl	52(%r12), %eax
	leal	1(%rcx), %ebx
	cmpl	%eax, %ebx
	jbe	.LBB2_104
# %bb.100:                              # %if.then.i.i488
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
.LBB2_101:                              # %while.cond.i.i492
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebx
	ja	.LBB2_101
# %bb.102:                              # %while.end.i.i496
	movq	40(%r12), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_137
# %bb.103:                              # %if.end.i.i501
	movq	%rax, 40(%r12)
	movl	%r15d, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB2_105
.LBB2_104:                              # %entry.if.end11_crit_edge.i.i480
	movq	40(%r12), %rax
.LBB2_105:                              # %do.body43
	movl	%ecx, %ecx
	movb	$2, (%rax,%rcx)
	movl	%ebx, 48(%r12)
	movl	$2, %edx
	movq	%r12, %rdi
	movl	$17029, %esi                    # imm = 0x4285
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.106:                              # %do.body50
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.107:                              # %do.end56
	movq	16(%r14), %rsi
	movq	%r14, %rdi
	movl	$408125543, %edx                # imm = 0x18538067
	callq	mk_create_context
	testq	%rax, %rax
	je	.LBB2_137
# %bb.108:                              # %do.body62
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	mk_flush_context_id
	testl	%eax, %eax
	js	.LBB2_137
# %bb.109:                              # %do.body69
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.110:                              # %do.end75
	movq	16(%r14), %rsi
	movq	%r14, %rdi
	movl	$357149030, %edx                # imm = 0x1549A966
	callq	mk_create_context
	testq	%rax, %rax
	je	.LBB2_137
# %bb.111:                              # %do.body81
	movq	%rax, %r12
	movl	$.L.str.3, %edx
	movq	%rax, %rdi
	movl	$19840, %esi                    # imm = 0x4D80
	callq	mk_write_string
	testl	%eax, %eax
	js	.LBB2_137
# %bb.112:                              # %do.body88
	movq	%r12, %rdi
	movl	$22337, %esi                    # imm = 0x5741
	movq	32(%rsp), %rdx                  # 8-byte Reload
	callq	mk_write_string
	testl	%eax, %eax
	js	.LBB2_137
# %bb.113:                              # %do.body95
	movq	64(%r14), %rdx
	movq	%r12, %rdi
	movl	$2807729, %esi                  # imm = 0x2AD7B1
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.114:                              # %do.body103
	movq	%r12, %rdi
	callq	mk_write_float
	testl	%eax, %eax
	js	.LBB2_137
# %bb.115:                              # %do.end109
	movl	48(%r12), %eax
	addl	$-4, %eax
	leaq	8(%r14), %rsi
	movl	%eax, 8(%r14)
	movq	%r12, %rdi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.116:                              # %do.end117
	movq	16(%r14), %rsi
	movq	%r14, %rdi
	movl	$374648427, %edx                # imm = 0x1654AE6B
	callq	mk_create_context
	testq	%rax, %rax
	je	.LBB2_137
# %bb.117:                              # %if.end122
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$174, %edx
	callq	mk_create_context
	testq	%rax, %rax
	je	.LBB2_137
# %bb.118:                              # %do.body127
	movq	%rax, %rbp
	movl	$1, %edx
	movq	%rax, %rdi
	movl	$215, %esi
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.119:                              # %do.body134
	movl	$1, %edx
	movq	%rbp, %rdi
	movl	$29637, %esi                    # imm = 0x73C5
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.120:                              # %do.body141
	movl	$1, %edx
	movq	%rbp, %rdi
	movl	$131, %esi
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.121:                              # %do.body148
	movq	%rbp, %rdi
	movl	$156, %esi
	xorl	%edx, %edx
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.122:                              # %do.body155
	movq	%rbp, %rdi
	movl	$134, %esi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	mk_write_string
	testl	%eax, %eax
	js	.LBB2_137
# %bb.123:                              # %do.end161
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB2_125
# %bb.124:                              # %do.body164
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	4(%rsp), %edx                   # 4-byte Reload
	callq	mk_write_bin
	testl	%eax, %eax
	js	.LBB2_137
.LBB2_125:                              # %if.end171
	cmpq	$0, 8(%rsp)                     # 8-byte Folded Reload
	je	.LBB2_127
# %bb.126:                              # %do.body174
	movq	%rbp, %rdi
	movl	$2352003, %esi                  # imm = 0x23E383
	movq	8(%rsp), %rdx                   # 8-byte Reload
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
.LBB2_127:                              # %if.end181
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movl	$224, %edx
	callq	mk_create_context
	testq	%rax, %rax
	je	.LBB2_137
# %bb.128:                              # %do.body186
	movq	%rax, %r15
	movl	104(%rsp), %edx
	movq	%rax, %rdi
	movl	$176, %esi
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.129:                              # %do.body194
	movl	112(%rsp), %edx
	movq	%r15, %rdi
	movl	$186, %esi
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.130:                              # %do.body203
	movl	120(%rsp), %edx
	movq	%r15, %rdi
	movl	$21680, %esi                    # imm = 0x54B0
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.131:                              # %do.body212
	movl	128(%rsp), %edx
	movq	%r15, %rdi
	movl	$21690, %esi                    # imm = 0x54BA
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB2_137
# %bb.132:                              # %do.body221
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.133:                              # %do.body229
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.134:                              # %do.body237
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mk_close_context
	testl	%eax, %eax
	js	.LBB2_137
# %bb.135:                              # %do.body245
	movq	16(%r14), %rdi
	callq	mk_flush_context_data
	testl	%eax, %eax
	movl	$-1, %eax
	js	.LBB2_138
# %bb.136:                              # %do.end253
	movb	$1, 96(%r14)
	xorl	%eax, %eax
	jmp	.LBB2_138
.LBB2_137:
	movl	$-1, %eax
.LBB2_138:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end2:
	.size	mk_writeHeader, .Lfunc_end2-mk_writeHeader
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_uint
	.type	mk_write_uint,@function
mk_write_uint:                          # @mk_write_uint
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
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rax
	bswapq	%rax
	movq	%rax, (%rsp)
	callq	mk_write_id
	movl	$-1, %ebp
	testl	%eax, %eax
	js	.LBB3_16
# %bb.1:                                # %land.rhs.preheader
	xorl	%r15d, %r15d
	movq	%r14, %rax
	shrq	$56, %rax
	jne	.LBB3_8
# %bb.2:                                # %while.body
	movq	%r14, %rax
	shrq	$48, %rax
	movl	$1, %r15d
	testb	%al, %al
	jne	.LBB3_8
# %bb.3:                                # %while.body.1
	movq	%r14, %rax
	shrq	$40, %rax
	movl	$2, %r15d
	testb	%al, %al
	jne	.LBB3_8
# %bb.4:                                # %while.body.2
	movq	%r14, %rax
	shrq	$32, %rax
	movl	$3, %r15d
	testb	%al, %al
	jne	.LBB3_8
# %bb.5:                                # %while.body.3
	movl	%r14d, %eax
	shrl	$24, %eax
	movl	$4, %r15d
	testb	%al, %al
	jne	.LBB3_8
# %bb.6:                                # %while.body.4
	movl	%r14d, %eax
	shrl	$16, %eax
	movl	$5, %r15d
	testb	%al, %al
	jne	.LBB3_8
# %bb.7:                                # %while.body.5
	shrl	$8, %r14d
	xorl	%r15d, %r15d
	cmpb	$1, %r14b
	adcl	$6, %r15d
.LBB3_8:                                # %do.body23
	movl	$8, %r14d
	subl	%r15d, %r14d
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	mk_write_size
	testl	%eax, %eax
	js	.LBB3_16
# %bb.9:                                # %do.body31
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	(%rcx,%r14), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB3_10
# %bb.11:                               # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB3_12:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB3_12
# %bb.13:                               # %while.end.i
	movq	40(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB3_16
# %bb.14:                               # %if.end.i
	movq	%rax, 40(%rbx)
	movl	%r13d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB3_15
.LBB3_10:                               # %entry.if.end11_crit_edge.i
	movq	40(%rbx), %rax
.LBB3_15:                               # %mk_append_context_data.exit
	movl	%r15d, %edx
	leaq	(%rsp,%rdx), %rsi
	movl	%ecx, %edi
	addq	%rax, %rdi
	movl	%r14d, %edx
	callq	memcpy@PLT
	movl	%r12d, 48(%rbx)
	xorl	%ebp, %ebp
.LBB3_16:                               # %cleanup
	movl	%ebp, %eax
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
.Lfunc_end3:
	.size	mk_write_uint, .Lfunc_end3-mk_write_uint
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_string
	.type	mk_write_string,@function
mk_write_string:                        # @mk_write_string
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
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	callq	strlen@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	mk_write_id
	movl	$-1, %ebp
	testl	%eax, %eax
	js	.LBB4_9
# %bb.1:                                # %do.body2
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	mk_write_size
	testl	%eax, %eax
	js	.LBB4_9
# %bb.2:                                # %do.body10
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	(%rcx,%r15), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB4_3
# %bb.4:                                # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB4_5:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB4_5
# %bb.6:                                # %while.end.i
	movq	40(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB4_9
# %bb.7:                                # %if.end.i
	movq	%rax, 40(%rbx)
	movl	%r13d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB4_8
.LBB4_3:                                # %entry.if.end11_crit_edge.i
	movq	40(%rbx), %rax
.LBB4_8:                                # %mk_append_context_data.exit
	movl	%ecx, %edi
	addq	%rax, %rdi
	movl	%r15d, %edx
	movq	%r14, %rsi
	callq	memcpy@PLT
	movl	%r12d, 48(%rbx)
	xorl	%ebp, %ebp
.LBB4_9:                                # %cleanup
	movl	%ebp, %eax
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
.Lfunc_end4:
	.size	mk_write_string, .Lfunc_end4-mk_write_string
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_close_context
	.type	mk_close_context,@function
mk_close_context:                       # @mk_close_context
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
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	32(%rdi), %esi
	testl	%esi, %esi
	je	.LBB5_3
# %bb.1:                                # %do.body
	movq	16(%rbx), %rdi
	callq	mk_write_id
	movl	$-1, %r14d
	testl	%eax, %eax
	js	.LBB5_21
# %bb.2:                                # %do.body3
	movq	16(%rbx), %rdi
	movl	48(%rbx), %esi
	callq	mk_write_size
	testl	%eax, %eax
	js	.LBB5_21
.LBB5_3:                                # %if.end10
	movq	16(%rbx), %rax
	testq	%rax, %rax
	sete	%cl
	testq	%r15, %r15
	sete	%dl
	orb	%cl, %dl
	jne	.LBB5_5
# %bb.4:                                # %if.then14
	movl	48(%rax), %eax
	addl	%eax, (%r15)
.LBB5_5:                                # %do.body18
	movl	48(%rbx), %r14d
	testq	%r14, %r14
	je	.LBB5_17
# %bb.6:                                # %if.end.i
	movq	16(%rbx), %r12
	movq	40(%rbx), %r15
	testq	%r12, %r12
	je	.LBB5_15
# %bb.7:                                # %do.body.i
	movl	48(%r12), %ecx
	movl	52(%r12), %eax
	leal	(%rcx,%r14), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB5_8
# %bb.9:                                # %if.then.i.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB5_10:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB5_10
# %bb.11:                               # %while.end.i.i
	movq	40(%r12), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB5_12
# %bb.13:                               # %if.end.i.i
	movq	%rax, 40(%r12)
	movl	%r13d, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB5_14
.LBB5_15:                               # %if.else.i
	movq	24(%rbx), %rax
	movq	(%rax), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fwrite@PLT
	movl	$-1, %r14d
	cmpq	$1, %rax
	je	.LBB5_16
	jmp	.LBB5_21
.LBB5_8:                                # %entry.if.end11_crit_edge.i.i
	movq	40(%r12), %rax
.LBB5_14:                               # %mk_append_context_data.exit.i
	movl	%ecx, %edi
	addq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movl	%ebp, 48(%r12)
.LBB5_16:                               # %if.end14.i
	movl	$0, 48(%rbx)
.LBB5_17:                               # %do.end23
	movq	(%rbx), %rcx
	movq	8(%rbx), %rax
	xorl	%r14d, %r14d
	testq	%rcx, %rcx
	je	.LBB5_18
# %bb.19:                               # %if.then25
	movq	%rax, 8(%rcx)
	movq	(%rbx), %rcx
	jmp	.LBB5_20
.LBB5_18:
	xorl	%ecx, %ecx
.LBB5_20:                               # %if.end28
	movq	%rcx, (%rax)
	movq	24(%rbx), %rax
	movq	40(%rax), %rcx
	movq	%rcx, (%rbx)
	movq	%rbx, 40(%rax)
.LBB5_21:                               # %return
	movl	%r14d, %eax
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
.LBB5_12:
	.cfi_def_cfa_offset 64
	movl	$-1, %r14d
	jmp	.LBB5_21
.Lfunc_end5:
	.size	mk_close_context, .Lfunc_end5-mk_close_context
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_flush_context_id
	.type	mk_flush_context_id,@function
mk_flush_context_id:                    # @mk_flush_context_id
	.cfi_startproc
# %bb.0:                                # %entry
	movl	32(%rdi), %esi
	xorl	%ecx, %ecx
	testl	%esi, %esi
	je	.LBB6_10
# %bb.1:                                # %do.body
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
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	callq	mk_write_id
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB6_9
# %bb.2:                                # %do.body4
	movq	16(%rbx), %r14
	movl	48(%r14), %ecx
	movl	52(%r14), %eax
	leal	1(%rcx), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB6_3
# %bb.4:                                # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB6_5:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebp
	ja	.LBB6_5
# %bb.6:                                # %while.end.i
	movq	40(%r14), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	movl	$-1, %ecx
	je	.LBB6_9
# %bb.7:                                # %if.end.i
	movq	%rax, 40(%r14)
	movl	%r15d, 52(%r14)
	movl	48(%r14), %ecx
	jmp	.LBB6_8
.LBB6_3:                                # %entry.if.end11_crit_edge.i
	movq	40(%r14), %rax
.LBB6_8:                                # %do.end11
	movl	%ecx, %ecx
	movb	$-1, (%rax,%rcx)
	movl	%ebp, 48(%r14)
	movl	$0, 32(%rbx)
	xorl	%ecx, %ecx
.LBB6_9:
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
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB6_10:                               # %cleanup
	movl	%ecx, %eax
	retq
.Lfunc_end6:
	.size	mk_flush_context_id, .Lfunc_end6-mk_flush_context_id
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_float
	.type	mk_write_float,@function
mk_write_float:                         # @mk_write_float
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
	movq	%rdi, %rbx
	movl	48(%rdi), %r14d
	movl	52(%rdi), %eax
	leal	2(%r14), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB7_5
# %bb.1:                                # %if.then.i68.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB7_2:                                # %while.cond.i72.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB7_2
# %bb.3:                                # %while.end.i76.i
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB7_21
# %bb.4:                                # %if.end.i81.i
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB7_6
.LBB7_5:                                # %entry.if.end11_crit_edge.i61.i
	movq	40(%rbx), %rax
	movl	%r14d, %ecx
.LBB7_6:                                # %do.body1
	movl	%ecx, %ecx
	movw	$-30396, (%rax,%rcx)            # imm = 0x8944
	movl	%r15d, 48(%rbx)
	leal	3(%r14), %ebp
	movl	52(%rbx), %eax
	cmpl	%eax, %ebp
	jbe	.LBB7_11
# %bb.7:                                # %if.then.i.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB7_8:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %ebp
	ja	.LBB7_8
# %bb.9:                                # %while.end.i.i
	movq	40(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB7_21
# %bb.10:                               # %if.end.i.i
	movq	%rax, 40(%rbx)
	movl	%r15d, 52(%rbx)
	movl	48(%rbx), %r15d
	jmp	.LBB7_12
.LBB7_11:                               # %entry.if.end11_crit_edge.i.i
	movq	40(%rbx), %rax
.LBB7_12:                               # %do.body7
	movl	%r15d, %ecx
	movb	$-124, (%rax,%rcx)
	movl	%ebp, 48(%rbx)
	addl	$7, %r14d
	movl	52(%rbx), %eax
	cmpl	%eax, %r14d
	jbe	.LBB7_17
# %bb.13:                               # %if.then.i.i26
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB7_14:                               # %while.cond.i.i30
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB7_14
# %bb.15:                               # %while.end.i.i34
	movq	40(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB7_21
# %bb.16:                               # %if.end.i.i39
	movq	%rax, 40(%rbx)
	movl	%r15d, 52(%rbx)
	movl	48(%rbx), %ebp
	jmp	.LBB7_18
.LBB7_21:
	movl	$-1, %eax
	jmp	.LBB7_22
.LBB7_17:                               # %entry.if.end11_crit_edge.i.i20
	movq	40(%rbx), %rax
.LBB7_18:                               # %mk_write_float_raw.exit
	movl	%ebp, %ecx
	movl	$0, (%rax,%rcx)
	movl	%r14d, 48(%rbx)
	xorl	%eax, %eax
.LBB7_22:                               # %return
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
.Lfunc_end7:
	.size	mk_write_float, .Lfunc_end7-mk_write_float
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_bin
	.type	mk_write_bin,@function
mk_write_bin:                           # @mk_write_bin
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
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	48(%rdi), %ecx
	movl	52(%rdi), %eax
	leal	2(%rcx), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB8_1
# %bb.2:                                # %if.then.i68.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB8_3:                                # %while.cond.i72.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %ebp
	ja	.LBB8_3
# %bb.4:                                # %while.end.i76.i
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB8_5
# %bb.6:                                # %if.end.i81.i
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB8_7
.LBB8_1:                                # %entry.if.end11_crit_edge.i61.i
	movq	40(%rbx), %rax
.LBB8_7:                                # %do.body1
	movl	%ecx, %ecx
	movw	$-23965, (%rax,%rcx)            # imm = 0xA263
	movl	%ebp, 48(%rbx)
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	mk_write_size
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB8_15
# %bb.8:                                # %do.body7
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	(%rcx,%r15), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB8_9
# %bb.10:                               # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB8_11:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %ebp
	ja	.LBB8_11
# %bb.12:                               # %while.end.i
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	movl	$-1, %ecx
	je	.LBB8_15
# %bb.13:                               # %if.end.i
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB8_14
.LBB8_9:                                # %entry.if.end11_crit_edge.i
	movq	40(%rbx), %rax
.LBB8_14:                               # %mk_append_context_data.exit
	movl	%ecx, %edi
	addq	%rax, %rdi
	movl	%r15d, %edx
	movq	%r14, %rsi
	callq	memcpy@PLT
	movl	%ebp, 48(%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB8_15
.LBB8_5:
	movl	$-1, %ecx
.LBB8_15:                               # %return
	movl	%ecx, %eax
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
.Lfunc_end8:
	.size	mk_write_bin, .Lfunc_end8-mk_write_bin
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_flush_context_data
	.type	mk_flush_context_data,@function
mk_flush_context_data:                  # @mk_flush_context_data
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
	movl	48(%rdi), %r14d
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB9_12
# %bb.1:                                # %if.end
	movq	%rdi, %rbx
	movq	16(%rdi), %r12
	movq	40(%rdi), %r15
	testq	%r12, %r12
	je	.LBB9_10
# %bb.2:                                # %do.body
	movl	48(%r12), %ecx
	movl	52(%r12), %eax
	leal	(%rcx,%r14), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB9_3
# %bb.4:                                # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB9_5:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB9_5
# %bb.6:                                # %while.end.i
	movq	40(%r12), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB9_7
# %bb.8:                                # %if.end.i
	movq	%rax, 40(%r12)
	movl	%r13d, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB9_9
.LBB9_10:                               # %if.else
	movq	24(%rbx), %rax
	movq	(%rax), %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fwrite@PLT
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	$1, %rcx
	je	.LBB9_11
	jmp	.LBB9_12
.LBB9_3:                                # %entry.if.end11_crit_edge.i
	movq	40(%r12), %rax
.LBB9_9:                                # %mk_append_context_data.exit
	movl	%ecx, %edi
	addq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movl	%ebp, 48(%r12)
.LBB9_11:                               # %if.end14
	movl	$0, 48(%rbx)
	xorl	%eax, %eax
.LBB9_12:                               # %return
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
.LBB9_7:
	.cfi_def_cfa_offset 64
	movl	$-1, %eax
	jmp	.LBB9_12
.Lfunc_end9:
	.size	mk_flush_context_data, .Lfunc_end9-mk_flush_context_data
	.cfi_endproc
                                        # -- End function
	.globl	mk_start_frame                  # -- Begin function mk_start_frame
	.p2align	4, 0x90
	.type	mk_start_frame,@function
mk_start_frame:                         # @mk_start_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	mk_flush_frame
	testl	%eax, %eax
	js	.LBB10_1
# %bb.2:                                # %if.end
	movw	$1, 97(%rbx)
	movb	$0, 99(%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_1:
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	mk_start_frame, .Lfunc_end10-mk_start_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_flush_frame
	.type	mk_flush_frame,@function
mk_flush_frame:                         # @mk_flush_frame
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	cmpb	$0, 97(%rdi)
	je	.LBB11_58
# %bb.1:                                # %if.end
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
	movq	%rdi, %rbx
	movq	64(%rdi), %rcx
	movq	80(%rdi), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB11_3
# %bb.2:
	cqto
	idivq	%rcx
	movq	%rax, %r14
	subq	72(%rbx), %r14
	movswq	%r14w, %rax
	cmpq	%r14, %rax
	jne	.LBB11_4
	jmp	.LBB11_5
.LBB11_3:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %r14d
	subq	72(%rbx), %r14
	movswq	%r14w, %rax
	cmpq	%r14, %rax
	je	.LBB11_5
.LBB11_4:                               # %do.body
	movq	%rbx, %rdi
	callq	mk_close_cluster
	testl	%eax, %eax
	js	.LBB11_56
.LBB11_5:                               # %if.end6
	cmpq	$0, 24(%rbx)
	je	.LBB11_8
# %bb.6:                                # %if.end28
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_20
.LBB11_7:                               # %cond.true
	movl	48(%rax), %ebp
	addl	$4, %ebp
	jmp	.LBB11_21
.LBB11_8:                               # %if.then8
	movq	64(%rbx), %rcx
	movq	80(%rbx), %rax
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB11_11
# %bb.9:
	cqto
	idivq	%rcx
	jmp	.LBB11_12
.LBB11_11:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB11_12:
	movq	%rax, 72(%rbx)
	movq	16(%rbx), %r14
	movq	40(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB11_14
# %bb.13:                               # %if.then.i
	movq	(%rdi), %rax
	movq	%rax, 40(%rbx)
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.i
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc@PLT
	movq	%rax, %rdi
	testq	%rax, %rax
	je	.LBB11_55
.LBB11_15:                              # %if.end6.i
	movq	%r14, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movl	$524531317, 32(%rdi)            # imm = 0x1F43B675
	movq	48(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_17
# %bb.16:                               # %if.then11.i
	movq	%rdi, 8(%rax)
	movq	24(%rdi), %rcx
	movq	48(%rcx), %rax
	jmp	.LBB11_18
.LBB11_17:
	xorl	%eax, %eax
	movq	%rbx, %rcx
.LBB11_18:                              # %do.body19
	leaq	48(%rcx), %rdx
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rdi, 48(%rcx)
	movq	%rdi, 24(%rbx)
	movq	72(%rbx), %rdx
	movl	$231, %esi
	callq	mk_write_uint
	testl	%eax, %eax
	js	.LBB11_56
# %bb.19:
	xorl	%r14d, %r14d
	movq	32(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB11_7
.LBB11_20:
	movl	$4, %ebp
.LBB11_21:                              # %cond.end
	movq	24(%rbx), %r15
	movl	48(%r15), %ecx
	movl	52(%r15), %eax
	leal	1(%rcx), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB11_26
# %bb.22:                               # %if.then.i95.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB11_23:                              # %while.cond.i99.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB11_23
# %bb.24:                               # %while.end.i103.i
	movq	40(%r15), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB11_56
# %bb.25:                               # %if.end.i108.i
	movq	%rax, 40(%r15)
	movl	%r13d, 52(%r15)
	movl	48(%r15), %ecx
	jmp	.LBB11_27
.LBB11_26:                              # %entry.if.end11_crit_edge.i88.i
	movq	40(%r15), %rax
.LBB11_27:                              # %do.body39
	movl	%ecx, %ecx
	movb	$-93, (%rax,%rcx)
	movl	%r12d, 48(%r15)
	movq	24(%rbx), %rdi
	movl	%ebp, %esi
	callq	mk_write_size
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB11_57
# %bb.28:                               # %do.body47
	movq	24(%rbx), %r15
	movl	48(%r15), %ecx
	movl	52(%r15), %eax
	leal	1(%rcx), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB11_33
# %bb.29:                               # %if.then.i.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB11_30:                              # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %ebp
	ja	.LBB11_30
# %bb.31:                               # %while.end.i.i
	movq	40(%r15), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB11_56
# %bb.32:                               # %if.end.i.i
	movq	%rax, 40(%r15)
	movl	%r12d, 52(%r15)
	movl	48(%r15), %ecx
	jmp	.LBB11_34
.LBB11_33:                              # %entry.if.end11_crit_edge.i.i
	movq	40(%r15), %rax
.LBB11_34:                              # %do.end54
	movl	%ecx, %ecx
	movb	$-127, (%rax,%rcx)
	movl	%ebp, 48(%r15)
	movzbl	98(%rbx), %ebp
	shlb	$7, %bpl
	orb	99(%rbx), %bpl
	movq	24(%rbx), %r15
	movl	48(%r15), %ecx
	movl	52(%r15), %eax
	leal	3(%rcx), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB11_39
# %bb.35:                               # %if.then.i143
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB11_36:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB11_36
# %bb.37:                               # %while.end.i
	movq	40(%r15), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB11_56
# %bb.38:                               # %if.end.i
	movq	%rax, 40(%r15)
	movl	%r13d, 52(%r15)
	movl	48(%r15), %ecx
	jmp	.LBB11_40
.LBB11_39:                              # %entry.if.end11_crit_edge.i
	movq	40(%r15), %rax
.LBB11_40:                              # %do.end69
	movl	%r14d, %edx
	shrl	$8, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movb	%r14b, 1(%rax,%rcx)
	movb	%bpl, 2(%rax,%rcx)
	movl	%r12d, 48(%r15)
	movq	32(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_50
# %bb.41:                               # %do.body73
	movq	24(%rbx), %r12
	movq	40(%rax), %r14
	movl	48(%rax), %r15d
	movl	48(%r12), %ecx
	movl	52(%r12), %eax
	leal	(%rcx,%r15), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB11_48
# %bb.42:                               # %if.then.i156
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB11_43:                              # %while.cond.i160
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB11_43
# %bb.44:                               # %while.end.i164
	movq	40(%r12), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB11_56
# %bb.45:                               # %if.end.i169
	movq	%rax, 40(%r12)
	movl	%r13d, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB11_49
.LBB11_48:                              # %entry.if.end11_crit_edge.i149
	movq	40(%r12), %rax
.LBB11_49:                              # %do.end84
	movl	%ecx, %edi
	addq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
	movl	%ebp, 48(%r12)
	movq	32(%rbx), %rax
	movl	$0, 48(%rax)
.LBB11_50:                              # %if.end87
	movb	$0, 97(%rbx)
	movq	24(%rbx), %rax
	cmpl	$1048577, 48(%rax)              # imm = 0x100001
	jb	.LBB11_52
# %bb.51:                               # %do.body94
	movq	%rbx, %rdi
	callq	mk_close_cluster
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	js	.LBB11_57
.LBB11_52:                              # %if.end102
	xorl	%eax, %eax
	jmp	.LBB11_57
.LBB11_55:                              # %mk_create_context.exit.thread
	movq	$0, 24(%rbx)
.LBB11_56:
	movl	$-1, %eax
.LBB11_57:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB11_58:                              # %cleanup
	retq
.Lfunc_end11:
	.size	mk_flush_frame, .Lfunc_end11-mk_flush_frame
	.cfi_endproc
                                        # -- End function
	.globl	mk_set_frame_flags              # -- Begin function mk_set_frame_flags
	.p2align	4, 0x90
	.type	mk_set_frame_flags,@function
mk_set_frame_flags:                     # @mk_set_frame_flags
	.cfi_startproc
# %bb.0:                                # %entry
	cmpb	$0, 97(%rdi)
	je	.LBB12_1
# %bb.2:                                # %if.end
	movq	%rsi, 80(%rdi)
	testl	%edx, %edx
	setne	98(%rdi)
	testl	%ecx, %ecx
	setne	99(%rdi)
	xorl	%eax, %eax
	cmpq	%rsi, 88(%rdi)
	jge	.LBB12_4
# %bb.3:                                # %if.then9
	movq	%rsi, 88(%rdi)
.LBB12_4:                               # %return
	retq
.LBB12_1:
	movl	$-1, %eax
	retq
.Lfunc_end12:
	.size	mk_set_frame_flags, .Lfunc_end12-mk_set_frame_flags
	.cfi_endproc
                                        # -- End function
	.globl	mk_add_frame_data               # -- Begin function mk_add_frame_data
	.p2align	4, 0x90
	.type	mk_add_frame_data,@function
mk_add_frame_data:                      # @mk_add_frame_data
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
	movl	$-1, %ebp
	cmpb	$0, 97(%rdi)
	je	.LBB13_17
# %bb.1:                                # %if.end
	movl	%edx, %ebx
	movq	32(%rdi), %r14
	testq	%r14, %r14
	jne	.LBB13_10
# %bb.2:                                # %if.then2
	movq	40(%rdi), %r14
	testq	%r14, %r14
	je	.LBB13_6
# %bb.3:                                # %if.then.i
	movq	(%r14), %rax
	movq	%rax, 40(%rdi)
	jmp	.LBB13_4
.LBB13_6:                               # %if.else.i
	movq	%rdi, %r14
	movl	$1, %edi
	movq	%rsi, %r15
	movl	$56, %esi
	callq	calloc@PLT
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB13_7
.LBB13_4:                               # %if.end6.i
	movq	$0, 16(%r14)
	movq	%rdi, 24(%r14)
	movl	$0, 32(%r14)
	movq	48(%rdi), %rax
	testq	%rax, %rax
	je	.LBB13_5
# %bb.8:                                # %if.then11.i
	movq	%r14, 8(%rax)
	movq	24(%r14), %rcx
	movq	48(%rcx), %rax
	jmp	.LBB13_9
.LBB13_5:
	xorl	%eax, %eax
	movq	%rdi, %rcx
.LBB13_9:                               # %mk_create_context.exit
	leaq	48(%rcx), %rdx
	movq	%rax, (%r14)
	movq	%rdx, 8(%r14)
	movq	%r14, 48(%rcx)
	movq	%r14, 32(%rdi)
.LBB13_10:                              # %if.end7
	movl	48(%r14), %ecx
	movl	52(%r14), %eax
	leal	(%rcx,%rbx), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB13_11
# %bb.12:                               # %if.then.i15
	movq	%rsi, %r12
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB13_13:                              # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r15d
	ja	.LBB13_13
# %bb.14:                               # %while.end.i
	movq	40(%r14), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB13_17
# %bb.15:                               # %if.end.i
	movq	%rax, 40(%r14)
	movl	%r13d, 52(%r14)
	movl	48(%r14), %ecx
	movq	%r12, %rsi
	jmp	.LBB13_16
.LBB13_11:                              # %entry.if.end11_crit_edge.i
	movq	40(%r14), %rax
.LBB13_16:                              # %if.end11.i
	movl	%ecx, %edi
	addq	%rax, %rdi
	movl	%ebx, %edx
	callq	memcpy@PLT
	movl	%r15d, 48(%r14)
	xorl	%ebp, %ebp
.LBB13_17:                              # %return
	movl	%ebp, %eax
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
.LBB13_7:                               # %mk_create_context.exit.thread
	.cfi_def_cfa_offset 64
	movq	$0, 32(%rdi)
	jmp	.LBB13_17
.Lfunc_end13:
	.size	mk_add_frame_data, .Lfunc_end13-mk_add_frame_data
	.cfi_endproc
                                        # -- End function
	.globl	mk_close                        # -- Begin function mk_close
	.p2align	4, 0x90
	.type	mk_close,@function
mk_close:                               # @mk_close
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	mk_flush_frame
	testl	%eax, %eax
	js	.LBB14_3
# %bb.1:                                # %lor.lhs.false
	movq	%rbx, %rdi
	callq	mk_close_cluster
	xorl	%r12d, %r12d
	testl	%eax, %eax
	js	.LBB14_3
# %bb.2:                                # %if.end
	cmpb	$0, 96(%rbx)
	jne	.LBB14_4
	jmp	.LBB14_22
.LBB14_3:                               # %if.then
	movl	$-1, %r12d
	cmpb	$0, 96(%rbx)
	je	.LBB14_22
.LBB14_4:                               # %land.lhs.true
	movq	(%rbx), %rdi
	movl	8(%rbx), %esi
	xorl	%edx, %edx
	callq	fseek@PLT
	movq	16(%rbx), %r15
	movq	56(%rbx), %rax
	testq	%rax, %rax
	cmovneq	%rax, %r14
	addq	88(%rbx), %r14
	cvtsi2sdq	64(%rbx), %xmm1
	movl	48(%r15), %ecx
	movl	52(%r15), %eax
	leal	4(%rcx), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB14_9
# %bb.5:                                # %if.then.i.i
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB14_6:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB14_6
# %bb.7:                                # %while.end.i.i
	movq	40(%r15), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB14_18
# %bb.8:                                # %if.end.i.i
	movq	%rax, 40(%r15)
	movl	%r13d, 52(%r15)
	movl	48(%r15), %ecx
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	jmp	.LBB14_10
.LBB14_9:                               # %entry.if.end11_crit_edge.i.i
	movq	40(%r15), %rax
.LBB14_10:                              # %lor.lhs.false18
	cvtsi2sd	%r14, %xmm0
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movd	%xmm0, %edx
	movl	%edx, %esi
	shrl	$24, %esi
	movl	%edx, %edi
	shrl	$16, %edi
	movl	%edx, %r8d
	shrl	$8, %r8d
	movl	%ecx, %ecx
	movb	%sil, (%rax,%rcx)
	movb	%dil, 1(%rax,%rcx)
	movb	%r8b, 2(%rax,%rcx)
	movb	%dl, 3(%rax,%rcx)
	movl	%ebp, 48(%r15)
	movq	16(%rbx), %r13
	movl	48(%r13), %r14d
	testq	%r14, %r14
	je	.LBB14_22
# %bb.11:                               # %if.end.i
	movq	16(%r13), %rbp
	movq	40(%r13), %rsi
	testq	%rbp, %rbp
	je	.LBB14_17
# %bb.12:                               # %do.body.i
	movl	48(%rbp), %ecx
	movl	52(%rbp), %eax
	leal	(%rcx,%r14), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB14_19
# %bb.13:                               # %if.then.i.i51
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movl	%r12d, 8(%rsp)                  # 4-byte Spill
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB14_14:                              # %while.cond.i.i55
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB14_14
# %bb.15:                               # %while.end.i.i59
	movq	40(%rbp), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB14_18
# %bb.16:                               # %if.end.i.i64
	movq	%rax, 40(%rbp)
	movl	%r12d, 52(%rbp)
	movl	48(%rbp), %ecx
	movl	8(%rsp), %r12d                  # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jmp	.LBB14_20
.LBB14_18:
	movl	$-1, %ebp
	movq	40(%rbx), %r14
	testq	%r14, %r14
	jne	.LBB14_24
	jmp	.LBB14_25
.LBB14_17:                              # %if.else.i
	movq	24(%r13), %rax
	movq	(%rax), %rcx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	fwrite@PLT
	movl	$-1, %ebp
	cmpq	$1, %rax
	je	.LBB14_21
	jmp	.LBB14_23
.LBB14_19:                              # %entry.if.end11_crit_edge.i.i46
	movq	40(%rbp), %rax
.LBB14_20:                              # %mk_append_context_data.exit.i
	movl	%ecx, %edi
	addq	%rax, %rdi
	movq	%r14, %rdx
	callq	memcpy@PLT
	movl	%r15d, 48(%rbp)
.LBB14_21:                              # %if.end14.i
	movl	$0, 48(%r13)
.LBB14_22:                              # %if.end25
	movl	%r12d, %ebp
.LBB14_23:                              # %if.end25
	movq	40(%rbx), %r14
	testq	%r14, %r14
	je	.LBB14_25
	.p2align	4, 0x90
.LBB14_24:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r15
	movq	40(%r14), %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r15, %r14
	testq	%r15, %r15
	jne	.LBB14_24
.LBB14_25:                              # %for.cond.cleanup.i
	leaq	40(%rbx), %r15
	movq	48(%rbx), %r14
	testq	%r14, %r14
	je	.LBB14_27
	.p2align	4, 0x90
.LBB14_26:                              # %for.body6.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %r12
	movq	40(%r14), %rdi
	callq	free@PLT
	movq	%r14, %rdi
	callq	free@PLT
	movq	%r12, %r14
	testq	%r12, %r12
	jne	.LBB14_26
.LBB14_27:                              # %mk_destroy_contexts.exit
	movq	$0, 16(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
	movq	(%rbx), %rdi
	callq	fclose@PLT
	movq	%rbx, %rdi
	callq	free@PLT
	movl	%ebp, %eax
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
.Lfunc_end14:
	.size	mk_close, .Lfunc_end14-mk_close
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_close_cluster
	.type	mk_close_cluster,@function
mk_close_cluster:                       # @mk_close_cluster
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
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB15_13
# %bb.1:                                # %do.body
	xorl	%esi, %esi
	callq	mk_close_context
	movl	$-1, %ecx
	testl	%eax, %eax
	js	.LBB15_14
# %bb.2:                                # %do.end
	movq	$0, 24(%rbx)
	movq	16(%rbx), %r15
	movl	48(%r15), %ebx
	testq	%rbx, %rbx
	je	.LBB15_13
# %bb.3:                                # %if.end.i
	movq	16(%r15), %r12
	movq	40(%r15), %r14
	testq	%r12, %r12
	je	.LBB15_11
# %bb.4:                                # %do.body.i
	movl	48(%r12), %ecx
	movl	52(%r12), %eax
	leal	(%rcx,%rbx), %ebp
	cmpl	%eax, %ebp
	jbe	.LBB15_5
# %bb.6:                                # %if.then.i.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB15_7:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB15_7
# %bb.8:                                # %while.end.i.i
	movq	40(%r12), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	movl	$-1, %ecx
	je	.LBB15_14
# %bb.9:                                # %if.end.i.i
	movq	%rax, 40(%r12)
	movl	%r13d, 52(%r12)
	movl	48(%r12), %ecx
	jmp	.LBB15_10
.LBB15_11:                              # %if.else.i
	movq	24(%r15), %rax
	movq	(%rax), %rcx
	movl	$1, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	fwrite@PLT
	movl	$-1, %ecx
	cmpq	$1, %rax
	je	.LBB15_12
	jmp	.LBB15_14
.LBB15_5:                               # %entry.if.end11_crit_edge.i.i
	movq	40(%r12), %rax
.LBB15_10:                              # %mk_append_context_data.exit.i
	movl	%ecx, %edi
	addq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
	movl	%ebp, 48(%r12)
.LBB15_12:                              # %if.end14.i
	movl	$0, 48(%r15)
.LBB15_13:                              # %return
	xorl	%ecx, %ecx
.LBB15_14:                              # %return
	movl	%ecx, %eax
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
.Lfunc_end15:
	.size	mk_close_cluster, .Lfunc_end15-mk_close_cluster
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_id
	.type	mk_write_id,@function
mk_write_id:                            # @mk_write_id
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%esi, %r15d
	shrl	$16, %r15d
	movl	%esi, %r14d
	shrl	$8, %r14d
	cmpl	$16777216, %esi                 # imm = 0x1000000
	jae	.LBB16_7
# %bb.1:                                # %if.end
	movl	52(%rbx), %eax
	testb	%r15b, %r15b
	je	.LBB16_14
# %bb.2:                                # %if.then10
	movl	48(%rbx), %ecx
	leal	3(%rcx), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB16_20
# %bb.3:                                # %if.then.i41
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB16_4:                               # %while.cond.i45
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB16_4
# %bb.5:                                # %while.end.i49
	movq	40(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB16_22
# %bb.6:                                # %if.end.i54
	movq	%rax, 40(%rbx)
	movl	%r13d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB16_21
.LBB16_7:                               # %if.then
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	4(%rcx), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB16_12
# %bb.8:                                # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB16_9:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB16_9
# %bb.10:                               # %while.end.i
	movq	40(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB16_22
# %bb.11:                               # %if.end.i
	movq	%rax, 40(%rbx)
	movl	%r13d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB16_13
.LBB16_12:                              # %entry.if.end11_crit_edge.i
	movq	40(%rbx), %rax
.LBB16_13:                              # %if.end11.i
	movl	%ebp, %edx
	shrl	$24, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movb	%r15b, 1(%rax,%rcx)
	movb	%r14b, 2(%rax,%rcx)
	movb	%bpl, 3(%rax,%rcx)
	movl	%r12d, 48(%rbx)
	jmp	.LBB16_33
.LBB16_14:                              # %if.end13
	movl	48(%rbx), %ecx
	testb	%r14b, %r14b
	je	.LBB16_23
# %bb.15:                               # %if.then16
	leal	2(%rcx), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB16_29
# %bb.16:                               # %if.then.i68
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB16_17:                              # %while.cond.i72
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB16_17
# %bb.18:                               # %while.end.i76
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB16_22
# %bb.19:                               # %if.end.i81
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB16_30
.LBB16_20:                              # %entry.if.end11_crit_edge.i34
	movq	40(%rbx), %rax
.LBB16_21:                              # %if.end11.i37
	movl	%ecx, %ecx
	movb	%r15b, (%rax,%rcx)
	movb	%r14b, 1(%rax,%rcx)
	movb	%bpl, 2(%rax,%rcx)
	movl	%r12d, 48(%rbx)
	jmp	.LBB16_33
.LBB16_23:                              # %if.end20
	leal	1(%rcx), %r14d
	cmpl	%eax, %r14d
	jbe	.LBB16_31
# %bb.24:                               # %if.then.i95
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB16_25:                              # %while.cond.i99
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB16_25
# %bb.26:                               # %while.end.i103
	movq	40(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB16_22
# %bb.27:                               # %if.end.i108
	movq	%rax, 40(%rbx)
	movl	%r15d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB16_32
.LBB16_22:
	movl	$-1, %eax
	jmp	.LBB16_34
.LBB16_29:                              # %entry.if.end11_crit_edge.i61
	movq	40(%rbx), %rax
.LBB16_30:                              # %if.end11.i64
	movl	%ecx, %ecx
	movb	%r14b, (%rax,%rcx)
	movb	%bpl, 1(%rax,%rcx)
	movl	%r15d, 48(%rbx)
	jmp	.LBB16_33
.LBB16_31:                              # %entry.if.end11_crit_edge.i88
	movq	40(%rbx), %rax
.LBB16_32:                              # %if.end11.i91
	movl	%ecx, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r14d, 48(%rbx)
.LBB16_33:                              # %cleanup
	xorl	%eax, %eax
.LBB16_34:                              # %cleanup
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
.Lfunc_end16:
	.size	mk_write_id, .Lfunc_end16-mk_write_id
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function mk_write_size
	.type	mk_write_size,@function
mk_write_size:                          # @mk_write_size
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	cmpl	$126, %esi
	ja	.LBB17_6
# %bb.1:                                # %if.then
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	1(%rcx), %r14d
	cmpl	%eax, %r14d
	jbe	.LBB17_12
# %bb.2:                                # %if.then.i
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB17_3:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB17_3
# %bb.4:                                # %while.end.i
	movq	40(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB17_28
# %bb.5:                                # %if.end.i
	movq	%rax, 40(%rbx)
	movl	%r15d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB17_13
.LBB17_6:                               # %if.end
	movl	%ebp, %r14d
	shrl	$8, %r14d
	cmpl	$16382, %ebp                    # imm = 0x3FFE
	ja	.LBB17_14
# %bb.7:                                # %if.then14
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	2(%rcx), %r15d
	cmpl	%eax, %r15d
	jbe	.LBB17_20
# %bb.8:                                # %if.then.i69
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB17_9:                               # %while.cond.i73
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB17_9
# %bb.10:                               # %while.end.i77
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB17_28
# %bb.11:                               # %if.end.i82
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB17_21
.LBB17_12:                              # %entry.if.end11_crit_edge.i
	movq	40(%rbx), %rax
.LBB17_13:                              # %if.end11.i
	orb	$-128, %bpl
	movl	%ecx, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r14d, 48(%rbx)
	jmp	.LBB17_42
.LBB17_14:                              # %if.end22
	movl	%ebp, %r15d
	shrl	$16, %r15d
	cmpl	$2097150, %ebp                  # imm = 0x1FFFFE
	ja	.LBB17_22
# %bb.15:                               # %if.then25
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	3(%rcx), %r12d
	cmpl	%eax, %r12d
	jbe	.LBB17_29
# %bb.16:                               # %if.then.i96
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB17_17:                              # %while.cond.i100
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB17_17
# %bb.18:                               # %while.end.i104
	movq	40(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB17_28
# %bb.19:                               # %if.end.i109
	movq	%rax, 40(%rbx)
	movl	%r13d, 52(%rbx)
	movl	48(%rbx), %ecx
	jmp	.LBB17_30
.LBB17_20:                              # %entry.if.end11_crit_edge.i62
	movq	40(%rbx), %rax
.LBB17_21:                              # %if.end11.i65
	orb	$64, %r14b
	movl	%ecx, %ecx
	movb	%r14b, (%rax,%rcx)
	movb	%bpl, 1(%rax,%rcx)
	movl	%r15d, 48(%rbx)
	jmp	.LBB17_42
.LBB17_22:                              # %if.end33
	movl	%ebp, %edx
	shrl	$24, %edx
	cmpl	$268435454, %ebp                # imm = 0xFFFFFFE
	ja	.LBB17_31
# %bb.23:                               # %if.then36
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	4(%rcx), %r13d
	cmpl	%eax, %r13d
	jbe	.LBB17_37
# %bb.24:                               # %if.then.i123
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB17_25:                              # %while.cond.i127
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r13d
	ja	.LBB17_25
# %bb.26:                               # %while.end.i131
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB17_28
# %bb.27:                               # %if.end.i136
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	movl	4(%rsp), %edx                   # 4-byte Reload
	jmp	.LBB17_38
.LBB17_29:                              # %entry.if.end11_crit_edge.i89
	movq	40(%rbx), %rax
.LBB17_30:                              # %if.end11.i92
	orb	$32, %r15b
	movl	%ecx, %ecx
	movb	%r15b, (%rax,%rcx)
	movb	%r14b, 1(%rax,%rcx)
	movb	%bpl, 2(%rax,%rcx)
	movl	%r12d, 48(%rbx)
	jmp	.LBB17_42
.LBB17_31:                              # %if.end44
	movl	48(%rbx), %ecx
	movl	52(%rbx), %eax
	leal	5(%rcx), %r13d
	cmpl	%eax, %r13d
	jbe	.LBB17_39
# %bb.32:                               # %if.then.i150
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	leal	(%rax,%rax), %ecx
	testl	%eax, %eax
	movl	$16, %eax
	cmovnel	%ecx, %eax
	.p2align	4, 0x90
.LBB17_33:                              # %while.cond.i154
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r13d
	ja	.LBB17_33
# %bb.34:                               # %while.end.i158
	movq	40(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB17_28
# %bb.35:                               # %if.end.i163
	movq	%rax, 40(%rbx)
	movl	%r12d, 52(%rbx)
	movl	48(%rbx), %ecx
	movl	4(%rsp), %edx                   # 4-byte Reload
	jmp	.LBB17_40
.LBB17_28:
	movl	$-1, %eax
	jmp	.LBB17_43
.LBB17_37:                              # %entry.if.end11_crit_edge.i116
	movq	40(%rbx), %rax
.LBB17_38:                              # %if.end11.i119
	orb	$16, %dl
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movb	%r15b, 1(%rax,%rcx)
	movb	%r14b, 2(%rax,%rcx)
	movb	%bpl, 3(%rax,%rcx)
	jmp	.LBB17_41
.LBB17_39:                              # %entry.if.end11_crit_edge.i143
	movq	40(%rbx), %rax
.LBB17_40:                              # %if.end11.i146
	movl	%ecx, %ecx
	movb	$8, (%rax,%rcx)
	movb	%dl, 1(%rax,%rcx)
	movb	%r15b, 2(%rax,%rcx)
	movb	%r14b, 3(%rax,%rcx)
	movb	%bpl, 4(%rax,%rcx)
.LBB17_41:                              # %cleanup
	movl	%r13d, 48(%rbx)
.LBB17_42:                              # %cleanup
	xorl	%eax, %eax
.LBB17_43:                              # %cleanup
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
.Lfunc_end17:
	.size	mk_write_size, .Lfunc_end17-mk_write_size
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Haali Matroska Writer b0"
	.size	.L.str.3, 25

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
