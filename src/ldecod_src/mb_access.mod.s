	.text
	.file	"mb_access.c"
	.globl	mb_is_available                 # -- Begin function mb_is_available
	.p2align	4, 0x90
	.type	mb_is_available,@function
mb_is_available:                        # @mb_is_available
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testl	%edi, %edi
	js	.LBB0_5
# %bb.1:                                # %lor.lhs.false
	movq	(%rsi), %rcx
	movq	13520(%rcx), %rdx
	cmpl	%edi, 108(%rdx)
	jle	.LBB0_5
# %bb.2:                                # %if.end
	cmpl	$0, 104(%rsi)
	jne	.LBB0_4
# %bb.3:                                # %if.then2
	movq	13512(%rcx), %rcx
	movl	%edi, %edx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	movzwl	108(%rcx,%rdx), %ecx
	cmpw	108(%rsi), %cx
	jne	.LBB0_5
.LBB0_4:                                # %if.end10
	movl	$1, %eax
.LBB0_5:                                # %return
	retq
.Lfunc_end0:
	.size	mb_is_available, .Lfunc_end0-mb_is_available
	.cfi_endproc
                                        # -- End function
	.globl	CheckAvailabilityOfNeighbors    # -- Begin function CheckAvailabilityOfNeighbors
	.p2align	4, 0x90
	.type	CheckAvailabilityOfNeighbors,@function
CheckAvailabilityOfNeighbors:           # @CheckAvailabilityOfNeighbors
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
	movq	(%rdi), %rax
	movq	13520(%rax), %rsi
	movl	24(%rdi), %r8d
	cmpl	$0, 100(%rsi)
	je	.LBB1_21
# %bb.1:                                # %if.then
	movl	%r8d, %edx
	sarl	%r8d
	andl	$-2, %edx
	leal	-2(%rdx), %ecx
	movl	%ecx, 388(%rdi)
	movl	%r8d, %ecx
	subl	104(%rsi), %ecx
	addl	%ecx, %ecx
	movl	%ecx, 392(%rdi)
	movl	%r8d, %r9d
	subl	104(%rsi), %r9d
	leal	2(,%r9,2), %ebx
	movl	%ebx, 396(%rdi)
	movl	104(%rsi), %r11d
	notl	%r11d
	addl	%r8d, %r11d
	addl	%r11d, %r11d
	xorl	%r9d, %r9d
	addl	$-2, %edx
	movl	%r11d, 400(%rdi)
	movl	$0, %esi
	js	.LBB1_6
# %bb.2:                                # %lor.lhs.false.i
	movq	13520(%rax), %r10
	cmpl	%edx, 108(%r10)
	jle	.LBB1_6
# %bb.3:                                # %if.end.i
	cmpl	$0, 104(%rdi)
	jne	.LBB1_5
# %bb.4:                                # %if.then2.i
	movq	13512(%rax), %rsi
	movl	%edx, %r10d
	imulq	$480, %r10, %r10                # imm = 0x1E0
	movzwl	108(%rsi,%r10), %r10d
	movl	$0, %esi
	cmpw	108(%rdi), %r10w
	jne	.LBB1_6
.LBB1_5:                                # %land.rhs
	movq	PicPos@GOTPCREL(%rip), %rsi
	movq	(%rsi), %r10
	movslq	%r8d, %r14
	xorl	%esi, %esi
	cmpw	$0, (%r10,%r14,4)
	setne	%sil
.LBB1_6:                                # %land.end
	movl	%esi, 404(%rdi)
	testl	%ecx, %ecx
	js	.LBB1_11
# %bb.7:                                # %lor.lhs.false.i172
	movq	13520(%rax), %r10
	cmpl	%ecx, 108(%r10)
	jle	.LBB1_11
# %bb.8:                                # %if.end.i177
	cmpl	$0, 104(%rdi)
	jne	.LBB1_10
# %bb.9:                                # %if.then2.i181
	movq	13512(%rax), %r10
	movl	%ecx, %r14d
	imulq	$480, %r14, %r14                # imm = 0x1E0
	movzwl	108(%r10,%r14), %r10d
	cmpw	108(%rdi), %r10w
	jne	.LBB1_11
.LBB1_10:                               # %if.end10.i180
	movl	$1, %r9d
.LBB1_11:                               # %mb_is_available.exit187
	movl	%r9d, 408(%rdi)
	xorl	%r10d, %r10d
	movl	$0, %ebp
	testl	%ebx, %ebx
	js	.LBB1_16
# %bb.12:                               # %lor.lhs.false.i189
	movq	13520(%rax), %r14
	cmpl	%ebx, 108(%r14)
	jle	.LBB1_16
# %bb.13:                               # %if.end.i194
	cmpl	$0, 104(%rdi)
	jne	.LBB1_15
# %bb.14:                               # %if.then2.i198
	movq	13512(%rax), %r14
	movl	%ebx, %ebx
	imulq	$480, %rbx, %rbx                # imm = 0x1E0
	movzwl	108(%r14,%rbx), %ebx
	cmpw	108(%rdi), %bx
	jne	.LBB1_16
.LBB1_15:                               # %land.rhs19
	movq	PicPos@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movslq	%r8d, %r14
	xorl	%ebp, %ebp
	cmpw	$0, 4(%rbx,%r14,4)
	setne	%bpl
.LBB1_16:                               # %land.end27
	movl	%ebp, 412(%rdi)
	movl	$416, %ebx                      # imm = 0x1A0
	testl	%r11d, %r11d
	js	.LBB1_45
# %bb.17:                               # %lor.lhs.false.i206
	movq	13520(%rax), %r14
	cmpl	%r11d, 108(%r14)
	jle	.LBB1_45
# %bb.18:                               # %if.end.i211
	cmpl	$0, 104(%rdi)
	jne	.LBB1_20
# %bb.19:                               # %if.then2.i215
	movq	13512(%rax), %r14
	movl	%r11d, %r11d
	imulq	$480, %r11, %r11                # imm = 0x1E0
	movzwl	108(%r14,%r11), %r11d
	cmpw	108(%rdi), %r11w
	jne	.LBB1_45
.LBB1_20:                               # %land.rhs32
	movq	PicPos@GOTPCREL(%rip), %r10
	movq	(%r10), %r11
	movslq	%r8d, %r8
	xorl	%r10d, %r10d
	cmpw	$0, (%r11,%r8,4)
	setne	%r10b
	movl	%r10d, (%rdi,%rbx)
	testl	%esi, %esi
	jne	.LBB1_46
.LBB1_49:
	xorl	%edx, %edx
	movq	%rdx, 128(%rdi)
	testl	%r9d, %r9d
	jne	.LBB1_47
.LBB1_50:
	xorl	%ecx, %ecx
	jmp	.LBB1_51
.LBB1_21:                               # %if.else
	leal	-1(%r8), %edx
	movl	%edx, 388(%rdi)
	movl	104(%rsi), %esi
	movl	%r8d, %ecx
	subl	%esi, %ecx
	leal	-1(%rcx), %r10d
	movl	%r10d, 400(%rdi)
	movl	%ecx, 392(%rdi)
	leal	1(%rcx), %r9d
	movl	%r9d, 396(%rdi)
	xorl	%esi, %esi
	testl	%r8d, %r8d
	jle	.LBB1_26
# %bb.22:                               # %lor.lhs.false.i223
	movq	13520(%rax), %r11
	cmpl	%r8d, 108(%r11)
	jl	.LBB1_26
# %bb.23:                               # %if.end.i228
	cmpl	$0, 104(%rdi)
	jne	.LBB1_25
# %bb.24:                               # %if.then2.i232
	movq	13512(%rax), %r11
	movl	%edx, %ebx
	imulq	$480, %rbx, %rbx                # imm = 0x1E0
	movzwl	108(%r11,%rbx), %r11d
	cmpw	108(%rdi), %r11w
	jne	.LBB1_26
.LBB1_25:                               # %land.rhs56
	movq	PicPos@GOTPCREL(%rip), %rsi
	movq	(%rsi), %r11
	xorl	%esi, %esi
	cmpw	$0, (%r11,%r8,4)
	setne	%sil
.LBB1_26:                               # %land.end63
	movl	%esi, 404(%rdi)
	testl	%r10d, %r10d
	js	.LBB1_32
# %bb.27:                               # %lor.lhs.false.i240
	movq	13520(%rax), %r11
	cmpl	%r10d, 108(%r11)
	jle	.LBB1_32
# %bb.28:                               # %if.end.i245
	cmpl	$0, 104(%rdi)
	jne	.LBB1_30
# %bb.29:                               # %if.then2.i249
	movq	13512(%rax), %r11
	movl	%r10d, %r10d
	imulq	$480, %r10, %r10                # imm = 0x1E0
	movzwl	108(%r11,%r10), %r11d
	xorl	%r10d, %r10d
	cmpw	108(%rdi), %r11w
	jne	.LBB1_31
.LBB1_30:                               # %land.rhs69
	movslq	%r8d, %r11
	movq	PicPos@GOTPCREL(%rip), %r10
	movq	(%r10), %rbx
	xorl	%r10d, %r10d
	cmpw	$0, (%rbx,%r11,4)
	setne	%r10b
.LBB1_31:                               # %land.end76.thread
	movl	%r10d, 416(%rdi)
	jmp	.LBB1_34
.LBB1_32:                               # %land.end76
	movl	$0, 416(%rdi)
	cmpl	$-2, %ecx
	jg	.LBB1_34
# %bb.33:                               # %land.end90.thread
	movl	$0, 412(%rdi)
	xorl	%r10d, %r10d
	movl	$408, %ebx                      # imm = 0x198
	xorl	%r9d, %r9d
	movl	%r10d, (%rdi,%rbx)
	testl	%esi, %esi
	jne	.LBB1_46
	jmp	.LBB1_49
.LBB1_34:                               # %lor.lhs.false.i257
	movq	13520(%rax), %rbx
	xorl	%r10d, %r10d
	movl	$0, %r11d
	cmpl	%r9d, 108(%rbx)
	jle	.LBB1_38
# %bb.35:                               # %if.end.i262
	cmpl	$0, 104(%rdi)
	jne	.LBB1_37
# %bb.36:                               # %if.then2.i266
	movq	13512(%rax), %r11
	movl	%r9d, %r9d
	imulq	$480, %r9, %r9                  # imm = 0x1E0
	movzwl	108(%r11,%r9), %r9d
	movl	$0, %r11d
	cmpw	108(%rdi), %r9w
	jne	.LBB1_38
.LBB1_37:                               # %land.rhs82
	movq	PicPos@GOTPCREL(%rip), %r9
	movq	(%r9), %r9
	movslq	%r8d, %r8
	xorl	%r11d, %r11d
	cmpw	$0, 4(%r9,%r8,4)
	setne	%r11b
.LBB1_38:                               # %land.end90
	movl	%r11d, 412(%rdi)
	movl	$408, %ebx                      # imm = 0x198
	testl	%ecx, %ecx
	js	.LBB1_43
# %bb.39:                               # %lor.lhs.false.i274
	movq	13520(%rax), %r8
	cmpl	%ecx, 108(%r8)
	jle	.LBB1_44
# %bb.40:                               # %if.end.i279
	cmpl	$0, 104(%rdi)
	jne	.LBB1_42
# %bb.41:                               # %if.then2.i283
	movq	13512(%rax), %r8
	movl	%ecx, %r9d
	imulq	$480, %r9, %r9                  # imm = 0x1E0
	movzwl	108(%r8,%r9), %r8d
	cmpw	108(%rdi), %r8w
	jne	.LBB1_43
.LBB1_42:                               # %if.end10.i282
	movl	$1, %r10d
	movl	$1, %r9d
	movl	%r10d, (%rdi,%rbx)
	testl	%esi, %esi
	jne	.LBB1_46
	jmp	.LBB1_49
.LBB1_43:
	xorl	%r9d, %r9d
	movl	%r10d, (%rdi,%rbx)
	testl	%esi, %esi
	jne	.LBB1_46
	jmp	.LBB1_49
.LBB1_44:
	xorl	%r9d, %r9d
.LBB1_45:                               # %if.end
	movl	%r10d, (%rdi,%rbx)
	testl	%esi, %esi
	je	.LBB1_49
.LBB1_46:                               # %cond.true
	movslq	%edx, %rdx
	imulq	$480, %rdx, %rdx                # imm = 0x1E0
	addq	13512(%rax), %rdx
	movq	%rdx, 128(%rdi)
	testl	%r9d, %r9d
	je	.LBB1_50
.LBB1_47:                               # %cond.true104
	movslq	%ecx, %rcx
	imulq	$480, %rcx, %rcx                # imm = 0x1E0
	addq	13512(%rax), %rcx
.LBB1_51:                               # %cond.end111
	movq	%rcx, 120(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	CheckAvailabilityOfNeighbors, .Lfunc_end1-CheckAvailabilityOfNeighbors
	.cfi_endproc
                                        # -- End function
	.globl	get_mb_block_pos_normal         # -- Begin function get_mb_block_pos_normal
	.p2align	4, 0x90
	.type	get_mb_block_pos_normal,@function
get_mb_block_pos_normal:                # @get_mb_block_pos_normal
	.cfi_startproc
# %bb.0:                                # %entry
	movq	PicPos@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movslq	%edi, %rcx
	movzwl	(%rax,%rcx,4), %edi
	movw	%di, (%rsi)
	movzwl	2(%rax,%rcx,4), %eax
	movw	%ax, (%rdx)
	retq
.Lfunc_end2:
	.size	get_mb_block_pos_normal, .Lfunc_end2-get_mb_block_pos_normal
	.cfi_endproc
                                        # -- End function
	.globl	get_mb_block_pos_mbaff          # -- Begin function get_mb_block_pos_mbaff
	.p2align	4, 0x90
	.type	get_mb_block_pos_mbaff,@function
get_mb_block_pos_mbaff:                 # @get_mb_block_pos_mbaff
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	movq	PicPos@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%edi, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,4), %r8d
	movw	%r8w, (%rsi)
	movzwl	2(%rax,%rcx,4), %eax
	andl	$1, %edi
	leal	(%rdi,%rax,2), %eax
	movw	%ax, (%rdx)
	retq
.Lfunc_end3:
	.size	get_mb_block_pos_mbaff, .Lfunc_end3-get_mb_block_pos_mbaff
	.cfi_endproc
                                        # -- End function
	.globl	get_mb_pos                      # -- Begin function get_mb_pos
	.p2align	4, 0x90
	.type	get_mb_pos,@function
get_mb_pos:                             # @get_mb_pos
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
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rax
	movl	%esi, %edi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	*856752(%rax)
	movzwl	(%r14), %eax
	imulw	(%r15), %ax
	movw	%ax, (%r14)
	movzwl	(%rbx), %eax
	imulw	4(%r15), %ax
	movw	%ax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	get_mb_pos, .Lfunc_end4-get_mb_pos
	.cfi_endproc
                                        # -- End function
	.globl	getNonAffNeighbour              # -- Begin function getNonAffNeighbour
	.p2align	4, 0x90
	.type	getNonAffNeighbour,@function
getNonAffNeighbour:                     # @getNonAffNeighbour
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rcx), %r9d
	movl	4(%rcx), %eax
	testl	%esi, %esi
	js	.LBB5_1
# %bb.5:                                # %if.else11
	cmpl	%esi, %r9d
	jle	.LBB5_10
# %bb.6:                                # %if.then13
	testl	%edx, %edx
	js	.LBB5_7
# %bb.8:                                # %if.else18
	cmpl	%edx, %eax
	jle	.LBB5_13
# %bb.9:                                # %if.end37.thread105
	movl	24(%rdi), %ecx
	movl	%ecx, 4(%r8)
	movl	$1, (%r8)
	jmp	.LBB5_16
.LBB5_1:                                # %if.then
	testl	%edx, %edx
	js	.LBB5_2
# %bb.3:                                # %if.else
	cmpl	%edx, %eax
	jle	.LBB5_13
# %bb.4:                                # %if.then5
	leaq	388(%rdi), %rcx
	movl	$404, %r10d                     # imm = 0x194
	jmp	.LBB5_12
.LBB5_10:                               # %if.else27
	testl	%edx, %edx
	js	.LBB5_11
.LBB5_13:                               # %lor.lhs.false.sink.split
	movl	$0, (%r8)
	jmp	.LBB5_14
.LBB5_2:                                # %if.then3
	leaq	400(%rdi), %rcx
	movl	$416, %r10d                     # imm = 0x1A0
	jmp	.LBB5_12
.LBB5_7:                                # %if.then15
	leaq	392(%rdi), %rcx
	movl	$408, %r10d                     # imm = 0x198
	jmp	.LBB5_12
.LBB5_11:                               # %if.then30
	leaq	396(%rdi), %rcx
	movl	$412, %r10d                     # imm = 0x19C
.LBB5_12:                               # %if.end37
	movl	(%rcx), %ecx
	movl	%ecx, 4(%r8)
	movl	(%rdi,%r10), %r10d
	movl	%r10d, (%r8)
	testl	%r10d, %r10d
	jne	.LBB5_16
.LBB5_14:                               # %lor.lhs.false
	cmpl	$0, 104(%rdi)
	je	.LBB5_17
# %bb.15:                               # %lor.lhs.false.if.then40_crit_edge
	movl	4(%r8), %ecx
.LBB5_16:                               # %if.then40
	movq	PicPos@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movslq	%ecx, %rcx
	leal	65535(%r9), %r10d
	andl	%esi, %r10d
	movw	%r10w, 8(%r8)
	leal	-1(%rax), %esi
	andl	%edx, %esi
	movw	%si, 10(%r8)
	movzwl	(%rdi,%rcx,4), %edx
	imull	%r9d, %edx
	addl	%r10d, %edx
	movw	%dx, 12(%r8)
	imulw	2(%rdi,%rcx,4), %ax
	addl	%esi, %eax
	movw	%ax, 14(%r8)
.LBB5_17:                               # %if.end58
	retq
.Lfunc_end5:
	.size	getNonAffNeighbour, .Lfunc_end5-getNonAffNeighbour
	.cfi_endproc
                                        # -- End function
	.globl	getAffNeighbour                 # -- Begin function getAffNeighbour
	.p2align	4, 0x90
	.type	getAffNeighbour,@function
getAffNeighbour:                        # @getAffNeighbour
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	movq	8(%rdi), %rax
	movl	(%rcx), %r10d
	movl	4(%rcx), %r9d
	movl	$0, (%r8)
	cmpl	%edx, %r9d
	jle	.LBB6_75
# %bb.1:                                # %if.end
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
	cmpl	%esi, %r10d
	setle	%r11b
	testl	%edx, %edx
	setns	%bl
	testb	%r11b, %bl
	jne	.LBB6_74
# %bb.2:                                # %if.end9
	testl	%esi, %esi
	js	.LBB6_8
# %bb.3:                                # %land.lhs.true201
	cmpl	%esi, %r10d
	jle	.LBB6_15
# %bb.4:                                # %if.then204
	testl	%edx, %edx
	js	.LBB6_26
# %bb.5:                                # %if.else275
	jne	.LBB6_21
# %bb.6:                                # %land.lhs.true278
	cmpl	$2, 104(%rdi)
	jne	.LBB6_21
# %bb.7:                                # %if.then282
	movl	392(%rdi), %edx
	incl	%edx
	movl	%edx, 4(%r8)
	movl	$1, (%r8)
	movl	$-1, %edx
	jmp	.LBB6_73
.LBB6_8:                                # %if.then11
	movl	24(%rdi), %ebx
	movl	384(%rdi), %r14d
	testl	%edx, %edx
	js	.LBB6_22
# %bb.9:                                # %if.then70
	movl	388(%rdi), %r11d
	movl	%r11d, 4(%r8)
	movl	404(%rdi), %ebp
	movl	%ebp, (%r8)
	testl	%r14d, %r14d
	je	.LBB6_32
# %bb.10:                               # %if.else128
	testb	$1, %bl
	jne	.LBB6_36
# %bb.11:                               # %if.then133
	testl	%ebp, %ebp
	je	.LBB6_68
# %bb.12:                               # %if.then140
	movq	848888(%rax), %rbx
	movslq	388(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	jne	.LBB6_73
# %bb.13:                               # %if.then147
	movl	%r9d, %edi
	shrl	%edi
	cmpl	%edx, %edi
	jbe	.LBB6_69
# %bb.14:                               # %if.then151
	addl	%edx, %edx
	jmp	.LBB6_73
.LBB6_15:                               # %if.else301
	movl	$-1, %r11d
	testl	%edx, %edx
	jns	.LBB6_72
# %bb.16:                               # %if.then304
	cmpl	$0, 384(%rdi)
	movl	24(%rdi), %ebp
	je	.LBB6_43
# %bb.17:                               # %if.else319
	movl	396(%rdi), %ebx
	testb	$1, %bpl
	jne	.LBB6_54
# %bb.18:                               # %if.then324
	movl	%ebx, 4(%r8)
	movl	412(%rdi), %ebp
	movl	%ebp, (%r8)
	testl	%ebp, %ebp
	je	.LBB6_72
# %bb.19:                               # %if.then331
	movq	848888(%rax), %r11
	movslq	396(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%r11,%rdi)
	jne	.LBB6_73
# %bb.20:                               # %if.then338
	incl	%ebx
	movl	%ebx, 4(%r8)
	addl	%edx, %edx
	jmp	.LBB6_73
.LBB6_21:                               # %if.then294
	movl	24(%rdi), %edi
	movl	%edi, 4(%r8)
	movl	$1, (%r8)
	jmp	.LBB6_73
.LBB6_22:                               # %if.then13
	testl	%r14d, %r14d
	je	.LBB6_40
# %bb.23:                               # %if.else34
	movl	400(%rdi), %r11d
	testb	$1, %bl
	jne	.LBB6_42
# %bb.24:                               # %if.then38
	movl	%r11d, 4(%r8)
	movl	416(%rdi), %ebx
	movl	%ebx, (%r8)
	testl	%ebx, %ebx
	je	.LBB6_68
# %bb.25:                               # %if.then45
	movq	848888(%rax), %rbx
	movslq	400(%rdi), %rdi
	jmp	.LBB6_30
.LBB6_26:                               # %if.then207
	cmpl	$0, 384(%rdi)
	movl	24(%rdi), %ebx
	je	.LBB6_45
# %bb.27:                               # %if.else241
	movl	392(%rdi), %r11d
	testb	$1, %bl
	jne	.LBB6_56
# %bb.28:                               # %if.then246
	movl	%r11d, 4(%r8)
	movl	408(%rdi), %ebx
	movl	%ebx, (%r8)
	testl	%ebx, %ebx
	je	.LBB6_68
# %bb.29:                               # %if.then253
	movq	848888(%rax), %rbx
	movslq	392(%rdi), %rdi
.LBB6_30:                               # %if.then45
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	jne	.LBB6_73
# %bb.31:                               # %if.then52
	incl	%r11d
	movl	%r11d, 4(%r8)
	addl	%edx, %edx
	jmp	.LBB6_73
.LBB6_32:                               # %if.then73
	testb	$1, %bl
	jne	.LBB6_50
# %bb.33:                               # %if.then77
	testl	%ebp, %ebp
	je	.LBB6_68
# %bb.34:                               # %if.then84
	movq	848888(%rax), %rbx
	movslq	388(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	je	.LBB6_73
# %bb.35:                               # %if.else92
	movl	%edx, %edi
	andl	$1, %edi
	addl	%edi, %r11d
	movl	%r11d, 4(%r8)
	shrl	%edx
	jmp	.LBB6_73
.LBB6_36:                               # %if.else161
	testl	%ebp, %ebp
	je	.LBB6_68
# %bb.37:                               # %if.then168
	movq	848888(%rax), %rbx
	movslq	388(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	jne	.LBB6_53
# %bb.38:                               # %if.then175
	movl	%r9d, %edi
	shrl	%edi
	cmpl	%edx, %edi
	jbe	.LBB6_70
# %bb.39:                               # %if.then179
	leal	1(,%rdx,2), %edx
	jmp	.LBB6_73
.LBB6_40:                               # %if.then14
	testb	$1, %bl
	jne	.LBB6_60
# %bb.41:                               # %if.then16
	movl	400(%rdi), %r11d
.LBB6_42:                               # %if.else58
	incl	%r11d
	movl	%r11d, 4(%r8)
	movl	416(%rdi), %ebx
	movl	%ebx, (%r8)
	movl	%edx, %r11d
	testl	%ebx, %ebx
	jne	.LBB6_73
	jmp	.LBB6_72
.LBB6_43:                               # %if.then307
	testb	$1, %bpl
	jne	.LBB6_72
# %bb.44:                               # %if.then312
	movl	396(%rdi), %r11d
	incl	%r11d
	movl	%r11d, 4(%r8)
	jmp	.LBB6_55
.LBB6_45:                               # %if.then210
	testb	$1, %bl
	jne	.LBB6_63
# %bb.46:                               # %if.then215
	movslq	392(%rdi), %r11
	movl	%r11d, 4(%r8)
	movl	408(%rdi), %ebx
	testl	%ebx, %ebx
	je	.LBB6_71
# %bb.47:                               # %if.then218
	cmpl	$1, 104(%rdi)
	jne	.LBB6_49
# %bb.48:                               # %land.lhs.true221
	movq	848888(%rax), %r14
	imulq	$480, %r11, %r15                # imm = 0x1E0
	cmpl	$0, 384(%r14,%r15)
	jne	.LBB6_57
.LBB6_49:                               # %if.then228
	incl	%r11d
	movl	%r11d, 4(%r8)
	movl	408(%rdi), %ebx
	movl	%ebx, (%r8)
	movl	%edx, %r11d
	testl	%ebx, %ebx
	jne	.LBB6_73
	jmp	.LBB6_72
.LBB6_50:                               # %if.else100
	testl	%ebp, %ebp
	je	.LBB6_68
# %bb.51:                               # %if.then107
	movq	848888(%rax), %rbx
	movslq	388(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	je	.LBB6_53
# %bb.52:                               # %if.else117
	leal	(%r9,%rdx), %edi
	andl	$1, %edx
	addl	%edx, %r11d
	movl	%r11d, 4(%r8)
	shrl	%edi
	movl	%edi, %edx
	jmp	.LBB6_73
.LBB6_53:                               # %if.then114
	incl	%r11d
	movl	%r11d, 4(%r8)
	jmp	.LBB6_73
.LBB6_54:                               # %if.else345
	incl	%ebx
	movl	%ebx, 4(%r8)
.LBB6_55:                               # %if.end355
	movl	412(%rdi), %ebx
	movl	%ebx, (%r8)
	movl	%edx, %r11d
	testl	%ebx, %ebx
	jne	.LBB6_73
	jmp	.LBB6_72
.LBB6_56:                               # %if.else267
	incl	%r11d
	movl	%r11d, 4(%r8)
	movl	408(%rdi), %ebx
.LBB6_57:                               # %if.end355
	movl	%ebx, (%r8)
	movl	%edx, %r11d
	testl	%ebx, %ebx
	jne	.LBB6_73
	jmp	.LBB6_72
.LBB6_60:                               # %if.else
	movl	388(%rdi), %r11d
	movl	%r11d, 4(%r8)
	movl	404(%rdi), %ebx
	movl	%ebx, (%r8)
	testl	%ebx, %ebx
	je	.LBB6_68
# %bb.61:                               # %if.then22
	movq	848888(%rax), %rbx
	movslq	388(%rdi), %rdi
	imulq	$480, %rdi, %rdi                # imm = 0x1E0
	cmpl	$0, 384(%rbx,%rdi)
	je	.LBB6_73
# %bb.62:                               # %if.else28
	incl	%r11d
	movl	%r11d, 4(%r8)
	addl	%r9d, %edx
	sarl	%edx
	jmp	.LBB6_73
.LBB6_68:
	movl	$-1, %r11d
.LBB6_72:                               # %lor.lhs.false
	cmpl	$0, 104(%rdi)
	movl	%r11d, %edx
	je	.LBB6_74
.LBB6_73:                               # %if.then360
	addl	$65535, %r9d                    # imm = 0xFFFF
	andl	%edx, %r9d
	addl	$65535, %r10d                   # imm = 0xFFFF
	andl	%esi, %r10d
	movw	%r10w, 8(%r8)
	movw	%r9w, 10(%r8)
	movl	4(%r8), %edi
	leaq	12(%r8), %rsi
	leaq	14(%r8), %rdx
	movq	%r8, %rbx
	movq	%rcx, %r14
	callq	*856752(%rax)
	movzwl	12(%rbx), %eax
	movzwl	14(%rbx), %ecx
	imulw	(%r14), %ax
	movw	%ax, 12(%rbx)
	imulw	4(%r14), %cx
	movd	8(%rbx), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movd	%eax, %xmm1
	pinsrw	$1, %ecx, %xmm1
	paddw	%xmm0, %xmm1
	movd	%xmm1, 12(%rbx)
.LBB6_74:
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
.LBB6_75:                               # %cleanup
	retq
.LBB6_63:                               # %if.else235
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	decl	%ebx
	movl	%ebx, 4(%r8)
	movl	$1, (%r8)
	jmp	.LBB6_73
.LBB6_69:                               # %if.else152
	incl	%r11d
	movl	%r11d, 4(%r8)
	addl	%edx, %edx
	subl	%r9d, %edx
	jmp	.LBB6_73
.LBB6_70:                               # %if.else182
	incl	%r11d
	movl	%r11d, 4(%r8)
	leal	1(,%rdx,2), %edx
	subl	%r9d, %edx
	jmp	.LBB6_73
.LBB6_71:
	xorl	%ebx, %ebx
	movl	%ebx, (%r8)
	movl	%edx, %r11d
	testl	%ebx, %ebx
	jne	.LBB6_73
	jmp	.LBB6_72
.Lfunc_end6:
	.size	getAffNeighbour, .Lfunc_end6-getAffNeighbour
	.cfi_endproc
                                        # -- End function
	.globl	get4x4Neighbour                 # -- Begin function get4x4Neighbour
	.p2align	4, 0x90
	.type	get4x4Neighbour,@function
get4x4Neighbour:                        # @get4x4Neighbour
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movq	8(%rdi), %rax
	callq	*856744(%rax)
	cmpl	$0, (%rbx)
	je	.LBB7_2
# %bb.1:                                # %if.then
	movq	8(%rbx), %xmm0                  # xmm0 = mem[0],zero
	psraw	$2, %xmm0
	movq	%xmm0, 8(%rbx)
.LBB7_2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	get4x4Neighbour, .Lfunc_end7-get4x4Neighbour
	.cfi_endproc
                                        # -- End function
	.globl	get4x4NeighbourBase             # -- Begin function get4x4NeighbourBase
	.p2align	4, 0x90
	.type	get4x4NeighbourBase,@function
get4x4NeighbourBase:                    # @get4x4NeighbourBase
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%r8, %rbx
	movq	8(%rdi), %rax
	callq	*856744(%rax)
	cmpl	$0, (%rbx)
	je	.LBB8_2
# %bb.1:                                # %if.then
	movd	8(%rbx), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	psraw	$2, %xmm0
	movd	%xmm0, 8(%rbx)
.LBB8_2:                                # %if.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	get4x4NeighbourBase, .Lfunc_end8-get4x4NeighbourBase
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
