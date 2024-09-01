	.text
	.file	"flv_bytestream.c"
	.globl	dbl2int                         # -- Begin function dbl2int
	.p2align	4, 0x90
	.type	dbl2int,@function
dbl2int:                                # @dbl2int
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%xmm0, %rax
	retq
.Lfunc_end0:
	.size	dbl2int, .Lfunc_end0-dbl2int
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_byte                   # -- Begin function x264_put_byte
	.p2align	4, 0x90
	.type	x264_put_byte,@function
x264_put_byte:                          # @x264_put_byte
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	1(%rcx), %r14d
	cmpl	12(%rdi), %r14d
	jbe	.LBB1_7
# %bb.1:                                # %while.cond.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB1_2:                                # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB1_2
# %bb.3:                                # %while.end.i
	movq	(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB1_6
# %bb.4:                                # %if.end.i
	movq	%rax, (%rbx)
	movl	%r15d, 12(%rbx)
	movl	8(%rbx), %ecx
	jmp	.LBB1_5
.LBB1_7:                                # %entry.if.end7_crit_edge.i
	movq	(%rbx), %rax
.LBB1_5:                                # %if.end7.i
	movl	%ecx, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r14d, 8(%rbx)
.LBB1_6:                                # %flv_append_data.exit
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
.Lfunc_end1:
	.size	x264_put_byte, .Lfunc_end1-x264_put_byte
	.cfi_endproc
                                        # -- End function
	.globl	flv_append_data                 # -- Begin function flv_append_data
	.p2align	4, 0x90
	.type	flv_append_data,@function
flv_append_data:                        # @flv_append_data
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
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	(%rcx,%r14), %ebp
	cmpl	12(%rdi), %ebp
	jbe	.LBB2_8
# %bb.1:                                # %while.cond.preheader
	movq	%rsi, %r15
	movl	$16, %eax
	.p2align	4, 0x90
.LBB2_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %ebp
	ja	.LBB2_2
# %bb.3:                                # %while.end
	movq	(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB2_4
# %bb.5:                                # %if.end
	movq	%rax, (%rbx)
	movl	%r12d, 12(%rbx)
	movl	8(%rbx), %ecx
	movq	%r15, %rsi
	jmp	.LBB2_6
.LBB2_8:                                # %entry.if.end7_crit_edge
	movq	(%rbx), %rax
.LBB2_6:                                # %if.end7
	movl	%ecx, %edi
	addq	%rax, %rdi
	movl	%r14d, %edx
	callq	memcpy@PLT
	movl	%ebp, 8(%rbx)
	xorl	%eax, %eax
.LBB2_7:                                # %cleanup12
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
.LBB2_4:
	.cfi_def_cfa_offset 48
	movl	$-1, %eax
	jmp	.LBB2_7
.Lfunc_end2:
	.size	flv_append_data, .Lfunc_end2-flv_append_data
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be32                   # -- Begin function x264_put_be32
	.p2align	4, 0x90
	.type	x264_put_be32,@function
x264_put_be32:                          # @x264_put_be32
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	1(%rcx), %r14d
	cmpl	12(%rdi), %r14d
	jbe	.LBB3_28
# %bb.1:                                # %while.cond.i.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB3_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB3_2
# %bb.3:                                # %while.end.i.i
	movq	(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %ecx
	testq	%rax, %rax
	je	.LBB3_4
# %bb.5:                                # %if.end.i.i
	movq	%rax, (%rbx)
	movl	%r15d, 12(%rbx)
	jmp	.LBB3_6
.LBB3_28:                               # %entry.if.end7_crit_edge.i.i
	movq	(%rbx), %rax
.LBB3_6:                                # %if.end7.i.i
	movl	%ebp, %edx
	shrl	$24, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movl	%r14d, 8(%rbx)
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	jbe	.LBB3_29
.LBB3_8:                                # %while.cond.i.i21.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB3_9:                                # %while.cond.i.i21
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB3_9
# %bb.10:                               # %while.end.i.i25
	movq	(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %r14d
	testq	%rax, %rax
	je	.LBB3_11
# %bb.12:                               # %if.end.i.i29
	movq	%rax, (%rbx)
	movl	%r12d, 12(%rbx)
	jmp	.LBB3_13
.LBB3_4:
	movl	%ecx, %r14d
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	ja	.LBB3_8
.LBB3_29:                               # %entry.if.end7_crit_edge.i.i16
	movq	(%rbx), %rax
.LBB3_13:                               # %if.end7.i.i18
	movl	%ebp, %ecx
	shrl	$16, %ecx
	movl	%r14d, %edx
	movb	%cl, (%rax,%rdx)
	movl	%r15d, 8(%rbx)
	leal	1(%r15), %r14d
	cmpl	12(%rbx), %r14d
	jbe	.LBB3_30
.LBB3_15:                               # %while.cond.i.i41.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB3_16:                               # %while.cond.i.i41
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r14d
	ja	.LBB3_16
# %bb.17:                               # %while.end.i.i45
	movq	(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %r15d
	testq	%rax, %rax
	je	.LBB3_18
# %bb.19:                               # %if.end.i.i49
	movq	%rax, (%rbx)
	movl	%r12d, 12(%rbx)
	jmp	.LBB3_20
.LBB3_11:
	movl	%r14d, %r15d
	leal	1(%r15), %r14d
	cmpl	12(%rbx), %r14d
	ja	.LBB3_15
.LBB3_30:                               # %entry.if.end7_crit_edge.i.i36
	movq	(%rbx), %rax
.LBB3_20:                               # %if.end7.i.i38
	movl	%ebp, %ecx
	shrl	$8, %ecx
	movl	%r15d, %edx
	movb	%cl, (%rax,%rdx)
	movl	%r14d, 8(%rbx)
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	jbe	.LBB3_31
.LBB3_22:                               # %while.cond.i.i61.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB3_23:                               # %while.cond.i.i61
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r14d
	leal	(%r14,%r14), %eax
	cmpl	%r14d, %r15d
	ja	.LBB3_23
# %bb.24:                               # %while.end.i.i65
	movq	(%rbx), %rdi
	movl	%r14d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB3_27
# %bb.25:                               # %if.end.i.i69
	movq	%rax, (%rbx)
	movl	%r14d, 12(%rbx)
	movl	8(%rbx), %r14d
	jmp	.LBB3_26
.LBB3_18:
	movl	%r15d, %r14d
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	ja	.LBB3_22
.LBB3_31:                               # %entry.if.end7_crit_edge.i.i56
	movq	(%rbx), %rax
.LBB3_26:                               # %if.end7.i.i58
	movl	%r14d, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r15d, 8(%rbx)
.LBB3_27:                               # %x264_put_byte.exit71
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
.Lfunc_end3:
	.size	x264_put_be32, .Lfunc_end3-x264_put_be32
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be64                   # -- Begin function x264_put_be64
	.p2align	4, 0x90
	.type	x264_put_be64,@function
x264_put_be64:                          # @x264_put_be64
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	shrq	$32, %rsi
                                        # kill: def $esi killed $esi killed $rsi
	callq	x264_put_be32
	movq	%r14, %rdi
	movl	%ebx, %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	x264_put_be32                   # TAILCALL
.Lfunc_end4:
	.size	x264_put_be64, .Lfunc_end4-x264_put_be64
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be16                   # -- Begin function x264_put_be16
	.p2align	4, 0x90
	.type	x264_put_be16,@function
x264_put_be16:                          # @x264_put_be16
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	1(%rcx), %r14d
	cmpl	12(%rdi), %r14d
	jbe	.LBB5_14
# %bb.1:                                # %while.cond.i.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB5_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB5_2
# %bb.3:                                # %while.end.i.i
	movq	(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %ecx
	testq	%rax, %rax
	je	.LBB5_4
# %bb.5:                                # %if.end.i.i
	movq	%rax, (%rbx)
	movl	%r15d, 12(%rbx)
	jmp	.LBB5_6
.LBB5_14:                               # %entry.if.end7_crit_edge.i.i
	movq	(%rbx), %rax
.LBB5_6:                                # %if.end7.i.i
	movl	%ebp, %edx
	shrl	$8, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movl	%r14d, 8(%rbx)
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	jbe	.LBB5_15
.LBB5_8:                                # %while.cond.i.i14.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB5_9:                                # %while.cond.i.i14
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r14d
	leal	(%r14,%r14), %eax
	cmpl	%r14d, %r15d
	ja	.LBB5_9
# %bb.10:                               # %while.end.i.i18
	movq	(%rbx), %rdi
	movl	%r14d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB5_13
# %bb.11:                               # %if.end.i.i22
	movq	%rax, (%rbx)
	movl	%r14d, 12(%rbx)
	movl	8(%rbx), %r14d
	jmp	.LBB5_12
.LBB5_4:
	movl	%ecx, %r14d
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	ja	.LBB5_8
.LBB5_15:                               # %entry.if.end7_crit_edge.i.i9
	movq	(%rbx), %rax
.LBB5_12:                               # %if.end7.i.i11
	movl	%r14d, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r15d, 8(%rbx)
.LBB5_13:                               # %x264_put_byte.exit24
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
.Lfunc_end5:
	.size	x264_put_be16, .Lfunc_end5-x264_put_be16
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_be24                   # -- Begin function x264_put_be24
	.p2align	4, 0x90
	.type	x264_put_be24,@function
x264_put_be24:                          # @x264_put_be24
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
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	1(%rcx), %r14d
	cmpl	12(%rdi), %r14d
	jbe	.LBB6_21
# %bb.1:                                # %while.cond.i.i.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB6_2:                                # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB6_2
# %bb.3:                                # %while.end.i.i.i
	movq	(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %ecx
	testq	%rax, %rax
	je	.LBB6_4
# %bb.5:                                # %if.end.i.i.i
	movq	%rax, (%rbx)
	movl	%r15d, 12(%rbx)
	jmp	.LBB6_6
.LBB6_21:                               # %entry.if.end7_crit_edge.i.i.i
	movq	(%rbx), %rax
.LBB6_6:                                # %if.end7.i.i.i
	movl	%ebp, %edx
	shrl	$16, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movl	%r14d, 8(%rbx)
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	jbe	.LBB6_22
.LBB6_8:                                # %while.cond.i.i14.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB6_9:                                # %while.cond.i.i14.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB6_9
# %bb.10:                               # %while.end.i.i18.i
	movq	(%rbx), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %r14d
	testq	%rax, %rax
	je	.LBB6_11
# %bb.12:                               # %if.end.i.i22.i
	movq	%rax, (%rbx)
	movl	%r12d, 12(%rbx)
	jmp	.LBB6_13
.LBB6_4:
	movl	%ecx, %r14d
	leal	1(%r14), %r15d
	cmpl	12(%rbx), %r15d
	ja	.LBB6_8
.LBB6_22:                               # %entry.if.end7_crit_edge.i.i9.i
	movq	(%rbx), %rax
.LBB6_13:                               # %if.end7.i.i11.i
	movl	%ebp, %ecx
	shrl	$8, %ecx
	movl	%r14d, %edx
	movb	%cl, (%rax,%rdx)
	movl	%r15d, 8(%rbx)
	leal	1(%r15), %r14d
	cmpl	12(%rbx), %r14d
	jbe	.LBB6_23
.LBB6_15:                               # %while.cond.i.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB6_16:                               # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r15d
	leal	(%r15,%r15), %eax
	cmpl	%r15d, %r14d
	ja	.LBB6_16
# %bb.17:                               # %while.end.i.i
	movq	(%rbx), %rdi
	movl	%r15d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB6_20
# %bb.18:                               # %if.end.i.i
	movq	%rax, (%rbx)
	movl	%r15d, 12(%rbx)
	movl	8(%rbx), %r15d
	jmp	.LBB6_19
.LBB6_11:
	movl	%r14d, %r15d
	leal	1(%r15), %r14d
	cmpl	12(%rbx), %r14d
	ja	.LBB6_15
.LBB6_23:                               # %entry.if.end7_crit_edge.i.i
	movq	(%rbx), %rax
.LBB6_19:                               # %if.end7.i.i
	movl	%r15d, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r14d, 8(%rbx)
.LBB6_20:                               # %x264_put_byte.exit
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
.Lfunc_end6:
	.size	x264_put_be24, .Lfunc_end6-x264_put_be24
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_tag                    # -- Begin function x264_put_tag
	.p2align	4, 0x90
	.type	x264_put_tag,@function
x264_put_tag:                           # @x264_put_tag
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
	movzbl	(%rsi), %ebp
	testb	%bpl, %bpl
	je	.LBB7_9
# %bb.1:                                # %while.body.lr.ph
	movq	%rsi, %rbx
	movq	%rdi, %r14
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_10:                               # %entry.if.end7_crit_edge.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%r14), %rax
.LBB7_7:                                # %if.end7.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	%ecx, %ecx
	movb	%bpl, (%rax,%rcx)
	movl	%r15d, 8(%r14)
.LBB7_8:                                # %x264_put_byte.exit
                                        #   in Loop: Header=BB7_2 Depth=1
	incq	%rbx
	movzbl	(%rbx), %ebp
	testb	%bpl, %bpl
	je	.LBB7_9
.LBB7_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movl	8(%r14), %ecx
	leal	1(%rcx), %r15d
	cmpl	12(%r14), %r15d
	jbe	.LBB7_10
# %bb.3:                                # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB7_2 Depth=1
	movl	$16, %eax
	.p2align	4, 0x90
.LBB7_4:                                # %while.cond.i.i
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %r12d
	leal	(%r12,%r12), %eax
	cmpl	%r12d, %r15d
	ja	.LBB7_4
# %bb.5:                                # %while.end.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	(%r14), %rdi
	movl	%r12d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB7_8
# %bb.6:                                # %if.end.i.i
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	%rax, (%r14)
	movl	%r12d, 12(%r14)
	movl	8(%r14), %ecx
	jmp	.LBB7_7
.LBB7_9:                                # %while.end
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
	.size	x264_put_tag, .Lfunc_end7-x264_put_tag
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_amf_string             # -- Begin function x264_put_amf_string
	.p2align	4, 0x90
	.type	x264_put_amf_string,@function
x264_put_amf_string:                    # @x264_put_amf_string
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen@PLT
	movq	%rax, %r15
	movl	8(%rbx), %ecx
	leal	1(%rcx), %r12d
	cmpl	12(%rbx), %r12d
	jbe	.LBB8_21
# %bb.1:                                # %while.cond.i.i.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB8_2:                                # %while.cond.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB8_2
# %bb.3:                                # %while.end.i.i.i
	movq	(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %ecx
	testq	%rax, %rax
	je	.LBB8_4
# %bb.5:                                # %if.end.i.i.i
	movq	%rax, (%rbx)
	movl	%r13d, 12(%rbx)
	jmp	.LBB8_6
.LBB8_21:                               # %entry.if.end7_crit_edge.i.i.i
	movq	(%rbx), %rax
.LBB8_6:                                # %if.end7.i.i.i
	movl	%r15d, %edx
	shrl	$8, %edx
	movl	%ecx, %ecx
	movb	%dl, (%rax,%rcx)
	movl	%r12d, 8(%rbx)
	leal	1(%r12), %ebp
	cmpl	12(%rbx), %ebp
	jbe	.LBB8_22
.LBB8_8:                                # %while.cond.i.i14.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB8_9:                                # %while.cond.i.i14.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %ebp
	ja	.LBB8_9
# %bb.10:                               # %while.end.i.i18.i
	movq	(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	movl	8(%rbx), %r12d
	testq	%rax, %rax
	je	.LBB8_11
# %bb.12:                               # %if.end.i.i22.i
	movq	%rax, (%rbx)
	movl	%r13d, 12(%rbx)
	jmp	.LBB8_13
.LBB8_4:
	movl	%ecx, %r12d
	leal	1(%r12), %ebp
	cmpl	12(%rbx), %ebp
	ja	.LBB8_8
.LBB8_22:                               # %entry.if.end7_crit_edge.i.i9.i
	movq	(%rbx), %rax
.LBB8_13:                               # %if.end7.i.i11.i
	movl	%r12d, %ecx
	movb	%r15b, (%rax,%rcx)
	movl	%ebp, 8(%rbx)
	movzwl	%r15w, %r12d
	addl	%ebp, %r12d
	cmpl	12(%rbx), %r12d
	jbe	.LBB8_23
.LBB8_15:                               # %while.cond.i.preheader
	movl	$16, %eax
	.p2align	4, 0x90
.LBB8_16:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r13d
	leal	(,%r13,2), %eax
	cmpl	%r13d, %r12d
	ja	.LBB8_16
# %bb.17:                               # %while.end.i
	movq	(%rbx), %rdi
	movl	%r13d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	je	.LBB8_20
# %bb.18:                               # %if.end.i
	movq	%rax, (%rbx)
	movl	%r13d, 12(%rbx)
	movl	8(%rbx), %ebp
	jmp	.LBB8_19
.LBB8_11:
	movl	%r12d, %ebp
	movzwl	%r15w, %r12d
	addl	%ebp, %r12d
	cmpl	12(%rbx), %r12d
	ja	.LBB8_15
.LBB8_23:                               # %entry.if.end7_crit_edge.i
	movq	(%rbx), %rax
.LBB8_19:                               # %if.end7.i
	movl	%ebp, %edi
	addq	%rax, %rdi
	movzwl	%r15w, %edx
	movq	%r14, %rsi
	callq	memcpy@PLT
	movl	%r12d, 8(%rbx)
.LBB8_20:                               # %flv_append_data.exit
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
.Lfunc_end8:
	.size	x264_put_amf_string, .Lfunc_end8-x264_put_amf_string
	.cfi_endproc
                                        # -- End function
	.globl	x264_put_amf_double             # -- Begin function x264_put_amf_double
	.p2align	4, 0x90
	.type	x264_put_amf_double,@function
x264_put_amf_double:                    # @x264_put_amf_double
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
	movq	%rdi, %rbx
	movl	8(%rdi), %ecx
	leal	1(%rcx), %ebp
	cmpl	12(%rdi), %ebp
	jbe	.LBB9_7
# %bb.1:                                # %while.cond.i.i.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movl	$16, %eax
	.p2align	4, 0x90
.LBB9_2:                                # %while.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r14d
	leal	(%r14,%r14), %eax
	cmpl	%r14d, %ebp
	ja	.LBB9_2
# %bb.3:                                # %while.end.i.i
	movq	(%rbx), %rdi
	movl	%r14d, %esi
	callq	realloc@PLT
	testq	%rax, %rax
	movq	8(%rsp), %xmm0                  # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	je	.LBB9_6
# %bb.4:                                # %if.end.i.i
	movq	%rax, (%rbx)
	movl	%r14d, 12(%rbx)
	movl	8(%rbx), %ecx
	jmp	.LBB9_5
.LBB9_7:                                # %entry.if.end7_crit_edge.i.i
	movq	(%rbx), %rax
.LBB9_5:                                # %if.end7.i.i
	movl	%ecx, %ecx
	movb	$0, (%rax,%rcx)
	movl	%ebp, 8(%rbx)
.LBB9_6:                                # %x264_put_byte.exit
	movq	%xmm0, %r14
	movq	%r14, %rsi
	shrq	$32, %rsi
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	x264_put_be32
	movq	%rbx, %rdi
	movl	%r14d, %esi
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_put_be32                   # TAILCALL
.Lfunc_end9:
	.size	x264_put_amf_double, .Lfunc_end9-x264_put_amf_double
	.cfi_endproc
                                        # -- End function
	.globl	flv_create_writer               # -- Begin function flv_create_writer
	.p2align	4, 0x90
	.type	flv_create_writer,@function
flv_create_writer:                      # @flv_create_writer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc@PLT
	testq	%rax, %rax
	je	.LBB10_7
# %bb.1:                                # %if.end
	cmpb	$45, (%rbx)
	jne	.LBB10_4
# %bb.2:                                # %if.end.tail
	cmpb	$0, 1(%rbx)
	je	.LBB10_3
.LBB10_4:                               # %if.else
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%rax, %rbx
	callq	fopen64@PLT
	movq	%rax, %rcx
	movq	%rbx, %rax
	movq	%rcx, 16(%rax)
	testq	%rcx, %rcx
	je	.LBB10_6
.LBB10_8:                               # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_3:                               # %if.then3
	.cfi_def_cfa_offset 16
	movq	stdout@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 16(%rax)
	testq	%rcx, %rcx
	jne	.LBB10_8
.LBB10_6:                               # %if.then9
	movq	%rax, %rdi
	callq	free@PLT
.LBB10_7:                               # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	flv_create_writer, .Lfunc_end10-flv_create_writer
	.cfi_endproc
                                        # -- End function
	.globl	rewrite_amf_be24                # -- Begin function rewrite_amf_be24
	.p2align	4, 0x90
	.type	rewrite_amf_be24,@function
rewrite_amf_be24:                       # @rewrite_amf_be24
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movl	%esi, %ecx
	shrl	$16, %ecx
	movq	(%rdi), %rsi
	movl	%edx, %edx
	movb	%cl, (%rsi,%rdx)
	movq	(%rdi), %rcx
	movb	%ah, 1(%rcx,%rdx)
	movq	(%rdi), %rcx
	movb	%al, 2(%rcx,%rdx)
	retq
.Lfunc_end11:
	.size	rewrite_amf_be24, .Lfunc_end11-rewrite_amf_be24
	.cfi_endproc
                                        # -- End function
	.globl	flv_flush_data                  # -- Begin function flv_flush_data
	.p2align	4, 0x90
	.type	flv_flush_data,@function
flv_flush_data:                         # @flv_flush_data
	.cfi_startproc
# %bb.0:                                # %entry
	movl	8(%rdi), %esi
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB12_4
# %bb.1:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	16(%rbx), %rcx
	movl	$1, %edx
	callq	fwrite@PLT
	movq	%rax, %rcx
	movl	$-1, %eax
	cmpq	$1, %rcx
	jne	.LBB12_3
# %bb.2:                                # %if.end4
	movl	8(%rbx), %eax
	addq	%rax, 24(%rbx)
	movl	$0, 8(%rbx)
	xorl	%eax, %eax
.LBB12_3:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB12_4:                               # %return
	retq
.Lfunc_end12:
	.size	flv_flush_data, .Lfunc_end12-flv_flush_data
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"wb"
	.size	.L.str.1, 3

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
