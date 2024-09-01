	.text
	.file	"vlc.c"
	.globl	ue_v                            # -- Begin function ue_v
	.p2align	4, 0x90
	.type	ue_v,@function
ue_v:                                   # @ue_v
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	$0, 8(%rsp)
	movq	$linfo_ue, 40(%rsp)
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_VLC
	movl	20(%rsp), %eax
	movq	p_Dec@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	addl	%eax, 24(%rcx)
	movl	12(%rsp), %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	ue_v, .Lfunc_end0-ue_v
	.cfi_endproc
                                        # -- End function
	.globl	linfo_ue                        # -- Begin function linfo_ue
	.p2align	4, 0x90
	.type	linfo_ue,@function
linfo_ue:                               # @linfo_ue
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
                                        # kill: def $esi killed $esi def $rsi
	addl	%esi, %eax
	decl	%eax
	movl	%eax, (%rdx)
	retq
.Lfunc_end1:
	.size	linfo_ue, .Lfunc_end1-linfo_ue
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_VLC           # -- Begin function readSyntaxElement_VLC
	.p2align	4, 0x90
	.type	readSyntaxElement_VLC,@function
readSyntaxElement_VLC:                  # @readSyntaxElement_VLC
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
	movq	16(%rsi), %r8
	movl	8(%rsi), %eax
	movl	%eax, %edx
	notl	%edx
	movslq	12(%rsi), %rcx
	sarl	$3, %eax
	movslq	%eax, %r10
	andl	$7, %edx
	movzbl	(%r8,%r10), %r9d
	btl	%edx, %r9d
	jae	.LBB2_1
# %bb.6:                                # %while.end.thread.i
	cmpl	%ecx, %eax
	jg	.LBB2_17
# %bb.7:                                # %GetVLCSymbol.exit.thread20
	movq	$1, 12(%rdi)
	movl	$1, %eax
	jmp	.LBB2_8
.LBB2_1:                                # %while.body.i.preheader
	addq	%r10, %r8
	movl	$-1, %r9d
	movl	$1, %eax
	.p2align	4, 0x90
.LBB2_2:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	decl	%edx
	andl	$7, %edx
	xorl	%r11d, %r11d
	cmpl	$7, %edx
	sete	%r11b
	movzbl	(%r8,%r11), %ebx
	addq	%r11, %r8
	addq	%r11, %r10
	incl	%r9d
	addl	$2, %eax
	btl	%edx, %ebx
	jae	.LBB2_2
# %bb.3:                                # %while.end.i
	leal	8(%r9), %r11d
	shrl	$3, %r11d
	addq	%r11, %r10
	cmpq	%rcx, %r10
	jle	.LBB2_4
.LBB2_17:                               # %GetVLCSymbol.exit.thread
	movl	$-1, 12(%rdi)
.LBB2_15:
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_4:                                # %while.body24.i.preheader
	.cfi_def_cfa_offset 32
	testl	%r9d, %r9d
	je	.LBB2_5
# %bb.9:                                # %while.body24.i.preheader.new
	leal	1(%r9), %r11d
	andl	$-2, %r11d
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_10:                               # %while.body24.i
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%rdx), %ecx
	andl	$7, %ecx
	xorl	%ebx, %ebx
	cmpl	$7, %ecx
	sete	%bl
	movzbl	(%r8,%rbx), %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r14d
	leaq	(%r8,%rbx), %rcx
	addl	$6, %edx
	andl	$7, %edx
	xorl	%ebx, %ebx
	cmpl	$7, %edx
	sete	%bl
	leaq	(%rcx,%rbx), %r8
	andl	$1, %r14d
	addl	%r14d, %r14d
	leal	(%r14,%r10,4), %ebp
	movzbl	(%rbx,%rcx), %ecx
	xorl	%r10d, %r10d
	btl	%edx, %ecx
	setb	%r10b
	orl	%ebp, %r10d
	addl	$-2, %r11d
	jne	.LBB2_10
# %bb.11:                               # %GetVLCSymbol.exit.unr-lcssa.loopexit
	leal	(%r10,%r10), %ecx
	testb	$1, %r9b
	jne	.LBB2_14
.LBB2_13:                               # %while.body24.i.epil
	decl	%edx
	andl	$7, %edx
	xorl	%r9d, %r9d
	cmpl	$7, %edx
	sete	%r9b
	movzbl	(%r8,%r9), %r8d
	xorl	%r10d, %r10d
	btl	%edx, %r8d
	setb	%r10b
	orl	%ecx, %r10d
.LBB2_14:                               # %GetVLCSymbol.exit
	movl	%r10d, 16(%rdi)
	movl	%eax, 12(%rdi)
	cmpl	$-1, %eax
	je	.LBB2_15
.LBB2_8:                                # %if.end
	addl	%eax, 8(%rsi)
	movl	12(%rdi), %eax
	movl	16(%rdi), %esi
	leaq	4(%rdi), %rdx
	leaq	8(%rdi), %rcx
	movq	%rdi, %r8
	movl	%eax, %edi
	callq	*32(%r8)
	movl	$1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_5:
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
                                        # implicit-def: $r10d
	testb	$1, %r9b
	je	.LBB2_13
	jmp	.LBB2_14
.Lfunc_end2:
	.size	readSyntaxElement_VLC, .Lfunc_end2-readSyntaxElement_VLC
	.cfi_endproc
                                        # -- End function
	.globl	se_v                            # -- Begin function se_v
	.p2align	4, 0x90
	.type	se_v,@function
se_v:                                   # @se_v
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movl	$0, 8(%rsp)
	movq	$linfo_se, 40(%rsp)
	leaq	8(%rsp), %rdi
	callq	readSyntaxElement_VLC
	movl	20(%rsp), %eax
	movq	p_Dec@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	addl	%eax, 24(%rcx)
	movl	12(%rsp), %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	se_v, .Lfunc_end3-se_v
	.cfi_endproc
                                        # -- End function
	.globl	linfo_se                        # -- Begin function linfo_se
	.p2align	4, 0x90
	.type	linfo_se,@function
linfo_se:                               # @linfo_se
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	%esi, %eax
	movl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, %esi
	negl	%esi
	testb	$1, %al
	cmovel	%ecx, %esi
	movl	%esi, (%rdx)
	retq
.Lfunc_end4:
	.size	linfo_se, .Lfunc_end4-linfo_se
	.cfi_endproc
                                        # -- End function
	.globl	u_v                             # -- Begin function u_v
	.p2align	4, 0x90
	.type	u_v,@function
u_v:                                    # @u_v
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
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rdx), %r8d
	movl	12(%rdx), %eax
	leal	7(,%rax,8), %ecx
	leal	(%r8,%rdi), %esi
	xorl	%eax, %eax
	cmpl	%ecx, %esi
	jg	.LBB5_12
# %bb.1:                                # %if.else.i.i
	testl	%edi, %edi
	je	.LBB5_2
# %bb.3:                                # %while.body.preheader.i.i
	movl	%r8d, %ecx
	notl	%ecx
	sarl	$3, %r8d
	movslq	%r8d, %r8
	addq	16(%rdx), %r8
	andl	$7, %ecx
	cmpl	$1, %edi
	jne	.LBB5_5
# %bb.4:
	xorl	%r9d, %r9d
                                        # implicit-def: $eax
	testb	$1, %dil
	jne	.LBB5_9
	jmp	.LBB5_10
.LBB5_2:
	xorl	%eax, %eax
	jmp	.LBB5_11
.LBB5_5:                                # %while.body.preheader.i.i.new
	movl	%edi, %r9d
	andl	$-2, %r9d
	xorl	%eax, %eax
	movl	$7, %r10d
	.p2align	4, 0x90
.LBB5_6:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %r11
	movzbl	(%r8), %ebx
	shrl	%cl, %ebx
	xorl	%r8d, %r8d
	subl	$1, %ecx
	cmovbl	%r10d, %ecx
	setb	%r8b
	movq	%r11, %r14
	adcq	$0, %r14
	andl	$1, %ebx
	addl	%ebx, %ebx
	leal	(%rbx,%rax,4), %ebx
	movzbl	(%r14), %ebp
	xorl	%eax, %eax
	btl	%ecx, %ebp
	setb	%al
	orl	%ebx, %eax
	subl	$1, %ecx
	cmovbl	%r10d, %ecx
	adcq	%r11, %r8
	addl	$-2, %r9d
	jne	.LBB5_6
# %bb.7:                                # %GetBits.exit.i.unr-lcssa.loopexit
	leal	(%rax,%rax), %r9d
	testb	$1, %dil
	je	.LBB5_10
.LBB5_9:                                # %while.body.i.i.epil
	movzbl	(%r8), %r8d
	xorl	%eax, %eax
	btl	%ecx, %r8d
	setb	%al
	orl	%r9d, %eax
.LBB5_10:                               # %GetBits.exit.i
	testl	%edi, %edi
	js	.LBB5_12
.LBB5_11:                               # %if.end.i
	movl	%esi, 8(%rdx)
.LBB5_12:                               # %readSyntaxElement_FLC.exit
	movq	p_Dec@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	addl	%edi, 24(%rcx)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	u_v, .Lfunc_end5-u_v
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_FLC           # -- Begin function readSyntaxElement_FLC
	.p2align	4, 0x90
	.type	readSyntaxElement_FLC,@function
readSyntaxElement_FLC:                  # @readSyntaxElement_FLC
	.cfi_startproc
# %bb.0:                                # %entry
	movl	8(%rsi), %r8d
	movl	12(%rsi), %eax
	leal	7(,%rax,8), %ecx
	movl	12(%rdi), %edx
	leal	(%rdx,%r8), %r9d
	movl	$-1, %eax
	cmpl	%ecx, %r9d
	jg	.LBB6_12
# %bb.1:                                # %if.else.i
	testl	%edx, %edx
	je	.LBB6_2
# %bb.3:                                # %while.body.preheader.i
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %ecx
	notl	%ecx
	sarl	$3, %r8d
	movslq	%r8d, %r9
	addq	16(%rsi), %r9
	andl	$7, %ecx
	cmpl	$1, %edx
	jne	.LBB6_5
# %bb.4:
	xorl	%r10d, %r10d
                                        # implicit-def: $r8d
	testb	$1, %dl
	jne	.LBB6_9
	jmp	.LBB6_10
.LBB6_2:                                # %GetBits.exit.thread14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	.cfi_restore %r15
	movl	$0, 16(%rdi)
	xorl	%r8d, %r8d
	jmp	.LBB6_11
.LBB6_5:                                # %while.body.preheader.i.new
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r10d
	andl	$-2, %r10d
	xorl	%r8d, %r8d
	movl	$7, %r11d
	.p2align	4, 0x90
.LBB6_6:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, %rbx
	movzbl	(%r9), %r14d
	shrl	%cl, %r14d
	xorl	%r9d, %r9d
	subl	$1, %ecx
	cmovbl	%r11d, %ecx
	setb	%r9b
	movq	%rbx, %r15
	adcq	$0, %r15
	andl	$1, %r14d
	addl	%r14d, %r14d
	leal	(%r14,%r8,4), %ebp
	movzbl	(%r15), %r14d
	xorl	%r8d, %r8d
	btl	%ecx, %r14d
	setb	%r8b
	orl	%ebp, %r8d
	subl	$1, %ecx
	cmovbl	%r11d, %ecx
	adcq	%rbx, %r9
	addl	$-2, %r10d
	jne	.LBB6_6
# %bb.7:                                # %GetBits.exit.unr-lcssa.loopexit
	leal	(%r8,%r8), %r10d
	testb	$1, %dl
	je	.LBB6_10
.LBB6_9:                                # %while.body.i.epil
	movzbl	(%r9), %r9d
	xorl	%r8d, %r8d
	btl	%ecx, %r9d
	setb	%r8b
	orl	%r10d, %r8d
.LBB6_10:                               # %GetBits.exit
	movl	%r8d, 16(%rdi)
	testl	%edx, %edx
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
	js	.LBB6_12
.LBB6_11:                               # %if.end
	movl	%r8d, 4(%rdi)
	addl	%edx, 8(%rsi)
	movl	$1, %eax
.LBB6_12:                               # %cleanup
	retq
.Lfunc_end6:
	.size	readSyntaxElement_FLC, .Lfunc_end6-readSyntaxElement_FLC
	.cfi_endproc
                                        # -- End function
	.globl	i_v                             # -- Begin function i_v
	.p2align	4, 0x90
	.type	i_v,@function
i_v:                                    # @i_v
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
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rdx), %r8d
	movl	12(%rdx), %eax
	leal	7(,%rax,8), %ecx
	leal	(%r8,%rdi), %eax
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	jg	.LBB7_12
# %bb.1:                                # %if.else.i.i
	testl	%edi, %edi
	je	.LBB7_2
# %bb.3:                                # %while.body.preheader.i.i
	movl	%r8d, %ecx
	notl	%ecx
	sarl	$3, %r8d
	movslq	%r8d, %r8
	addq	16(%rdx), %r8
	andl	$7, %ecx
	cmpl	$1, %edi
	jne	.LBB7_5
# %bb.4:
	xorl	%r9d, %r9d
                                        # implicit-def: $esi
	testb	$1, %dil
	jne	.LBB7_9
	jmp	.LBB7_10
.LBB7_2:
	xorl	%esi, %esi
	jmp	.LBB7_11
.LBB7_5:                                # %while.body.preheader.i.i.new
	movl	%edi, %r9d
	andl	$-2, %r9d
	xorl	%esi, %esi
	movl	$7, %r10d
	.p2align	4, 0x90
.LBB7_6:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	movq	%r8, %r11
	movzbl	(%r8), %ebx
	shrl	%cl, %ebx
	xorl	%r8d, %r8d
	subl	$1, %ecx
	cmovbl	%r10d, %ecx
	setb	%r8b
	movq	%r11, %r14
	adcq	$0, %r14
	andl	$1, %ebx
	addl	%ebx, %ebx
	leal	(%rbx,%rsi,4), %ebx
	movzbl	(%r14), %ebp
	xorl	%esi, %esi
	btl	%ecx, %ebp
	setb	%sil
	orl	%ebx, %esi
	subl	$1, %ecx
	cmovbl	%r10d, %ecx
	adcq	%r11, %r8
	addl	$-2, %r9d
	jne	.LBB7_6
# %bb.7:                                # %GetBits.exit.i.unr-lcssa.loopexit
	leal	(%rsi,%rsi), %r9d
	testb	$1, %dil
	je	.LBB7_10
.LBB7_9:                                # %while.body.i.i.epil
	movzbl	(%r8), %r8d
	xorl	%esi, %esi
	btl	%ecx, %r8d
	setb	%sil
	orl	%r9d, %esi
.LBB7_10:                               # %GetBits.exit.i
	testl	%edi, %edi
	js	.LBB7_12
.LBB7_11:                               # %if.end.i
	movl	%eax, 8(%rdx)
.LBB7_12:                               # %readSyntaxElement_FLC.exit
	movq	p_Dec@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	addl	%edi, 24(%rax)
	decb	%dil
	movl	$1, %eax
	movl	%edi, %ecx
	shll	%cl, %eax
	andl	%esi, %eax
	negl	%eax
	orl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	i_v, .Lfunc_end7-i_v
	.cfi_endproc
                                        # -- End function
	.globl	u_1                             # -- Begin function u_1
	.p2align	4, 0x90
	.type	u_1,@function
u_1:                                    # @u_1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	8(%rsi), %ecx
	movl	12(%rsi), %eax
	leal	7(,%rax,8), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB8_2
# %bb.1:                                # %if.else.i.i.i
	leal	1(%rcx), %edx
	movq	16(%rsi), %rax
	movl	%ecx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %edi
	notb	%cl
	movzbl	%cl, %ecx
	andl	$7, %ecx
	xorl	%eax, %eax
	btl	%ecx, %edi
	setb	%al
	movl	%edx, 8(%rsi)
.LBB8_2:                                # %u_v.exit
	movq	p_Dec@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	incl	24(%rcx)
	retq
.Lfunc_end8:
	.size	u_1, .Lfunc_end8-u_1
	.cfi_endproc
                                        # -- End function
	.globl	linfo_cbp_intra_normal          # -- Begin function linfo_cbp_intra_normal
	.p2align	4, 0x90
	.type	linfo_cbp_intra_normal,@function
linfo_cbp_intra_normal:                 # @linfo_cbp_intra_normal
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	%esi, %eax
	decl	%eax
	cltq
	movzbl	NCBP+96(%rax,%rax), %eax
	movl	%eax, (%rdx)
	retq
.Lfunc_end9:
	.size	linfo_cbp_intra_normal, .Lfunc_end9-linfo_cbp_intra_normal
	.cfi_endproc
                                        # -- End function
	.globl	linfo_cbp_intra_other           # -- Begin function linfo_cbp_intra_other
	.p2align	4, 0x90
	.type	linfo_cbp_intra_other,@function
linfo_cbp_intra_other:                  # @linfo_cbp_intra_other
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	%esi, %eax
	decl	%eax
	cltq
	movzbl	NCBP(%rax,%rax), %eax
	movl	%eax, (%rdx)
	retq
.Lfunc_end10:
	.size	linfo_cbp_intra_other, .Lfunc_end10-linfo_cbp_intra_other
	.cfi_endproc
                                        # -- End function
	.globl	linfo_cbp_inter_normal          # -- Begin function linfo_cbp_inter_normal
	.p2align	4, 0x90
	.type	linfo_cbp_inter_normal,@function
linfo_cbp_inter_normal:                 # @linfo_cbp_inter_normal
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	%esi, %eax
	decl	%eax
	cltq
	movzbl	NCBP+97(%rax,%rax), %eax
	movl	%eax, (%rdx)
	retq
.Lfunc_end11:
	.size	linfo_cbp_inter_normal, .Lfunc_end11-linfo_cbp_inter_normal
	.cfi_endproc
                                        # -- End function
	.globl	linfo_cbp_inter_other           # -- Begin function linfo_cbp_inter_other
	.p2align	4, 0x90
	.type	linfo_cbp_inter_other,@function
linfo_cbp_inter_other:                  # @linfo_cbp_inter_other
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	movl	%edi, %ecx
	shrl	%ecx
	movl	$1, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	addl	%esi, %eax
	decl	%eax
	cltq
	movzbl	NCBP+1(%rax,%rax), %eax
	movl	%eax, (%rdx)
	retq
.Lfunc_end12:
	.size	linfo_cbp_inter_other, .Lfunc_end12-linfo_cbp_inter_other
	.cfi_endproc
                                        # -- End function
	.globl	linfo_levrun_inter              # -- Begin function linfo_levrun_inter
	.p2align	4, 0x90
	.type	linfo_levrun_inter,@function
linfo_levrun_inter:                     # @linfo_levrun_inter
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rcx, %rax
	cmpl	$9, %edi
	jg	.LBB13_4
# %bb.1:                                # %if.then
	movl	%edi, %ecx
	sarl	%ecx
	cmpl	$2, %ecx
	movl	$1, %r8d
	cmovgel	%ecx, %r8d
	decl	%r8d
	movl	%esi, %ecx
	sarl	%ecx
	shlq	$4, %r8
	movslq	%ecx, %rcx
	movzbl	NTAB1(%r8,%rcx,2), %r9d
	movl	%r9d, (%rdx)
	movzbl	NTAB1+1(%r8,%rcx,2), %ecx
	movl	%ecx, (%rax)
	testb	$1, %sil
	je	.LBB13_3
# %bb.2:                                # %if.then13
	negl	(%rdx)
.LBB13_3:                               # %if.end30
	xorl	%r8d, %r8d
	cmpl	$1, %edi
	je	.LBB13_6
.LBB13_7:                               # %if.end34
	retq
.LBB13_4:                               # %if.else
	movl	%esi, %r9d
	shrl	%r9d
	andl	$15, %r9d
	movzbl	LEVRUN1(%r9), %r10d
	movl	%esi, %r11d
	sarl	$5, %r11d
	shrl	%edi
	addb	$-5, %dil
	movl	$1, %r8d
	movl	%edi, %ecx
	shll	%cl, %r8d
	addl	%r11d, %r8d
	addl	%r10d, %r8d
	movl	%r9d, (%rax)
	movl	%r8d, (%rdx)
	testb	$1, %sil
	je	.LBB13_7
# %bb.5:                                # %if.then27
	negl	%r8d
.LBB13_6:                               # %if.end34.sink.split
	movl	%r8d, (%rdx)
	retq
.Lfunc_end13:
	.size	linfo_levrun_inter, .Lfunc_end13-linfo_levrun_inter
	.cfi_endproc
                                        # -- End function
	.globl	linfo_levrun_c2x2               # -- Begin function linfo_levrun_c2x2
	.p2align	4, 0x90
	.type	linfo_levrun_c2x2,@function
linfo_levrun_c2x2:                      # @linfo_levrun_c2x2
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rcx, %rax
	cmpl	$5, %edi
	jg	.LBB14_4
# %bb.1:                                # %if.then
	movl	%edi, %ecx
	sarl	%ecx
	cmpl	$2, %ecx
	movl	$1, %r8d
	cmovgel	%ecx, %r8d
	decl	%r8d
	movl	%esi, %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	movzbl	NTAB3(%rcx,%r8,4), %r9d
	movl	%r9d, (%rdx)
	movzbl	NTAB3+1(%rcx,%r8,4), %ecx
	movl	%ecx, (%rax)
	testb	$1, %sil
	je	.LBB14_3
# %bb.2:                                # %if.then13
	negl	(%rdx)
.LBB14_3:                               # %if.end30
	xorl	%r8d, %r8d
	cmpl	$1, %edi
	je	.LBB14_6
.LBB14_7:                               # %if.end34
	retq
.LBB14_4:                               # %if.else
	movl	%esi, %r9d
	shrl	%r9d
	andl	$3, %r9d
	movzbl	LEVRUN3(%r9), %r10d
	movl	%esi, %r11d
	sarl	$3, %r11d
	shrl	%edi
	addb	$-3, %dil
	movl	$1, %r8d
	movl	%edi, %ecx
	shll	%cl, %r8d
	addl	%r11d, %r8d
	addl	%r10d, %r8d
	movl	%r9d, (%rax)
	movl	%r8d, (%rdx)
	testb	$1, %sil
	je	.LBB14_7
# %bb.5:                                # %if.then27
	negl	%r8d
.LBB14_6:                               # %if.end34.sink.split
	movl	%r8d, (%rdx)
	retq
.Lfunc_end14:
	.size	linfo_levrun_c2x2, .Lfunc_end14-linfo_levrun_c2x2
	.cfi_endproc
                                        # -- End function
	.globl	GetVLCSymbol                    # -- Begin function GetVLCSymbol
	.p2align	4, 0x90
	.type	GetVLCSymbol,@function
GetVLCSymbol:                           # @GetVLCSymbol
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %r8d
	notl	%r8d
	sarl	$3, %esi
	movslq	%esi, %r10
	andl	$7, %r8d
	movzbl	(%rdi,%r10), %eax
	btl	%r8d, %eax
	jae	.LBB15_1
# %bb.6:                                # %while.end.thread
	movl	$-1, %eax
	cmpl	%ecx, %esi
	jg	.LBB15_14
# %bb.7:
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	.LBB15_13
.LBB15_1:                               # %while.body.preheader
	addq	%r10, %rdi
	xorl	%r9d, %r9d
	movl	$1, %esi
	.p2align	4, 0x90
.LBB15_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	decl	%r8d
	andl	$7, %r8d
	xorl	%eax, %eax
	cmpl	$7, %r8d
	sete	%al
	movzbl	(%rdi,%rax), %r11d
	addq	%rax, %rdi
	addq	%rax, %r10
	decl	%r9d
	addl	$2, %esi
	btl	%r8d, %r11d
	jae	.LBB15_2
# %bb.3:                                # %while.end
	movl	$7, %eax
	subl	%r9d, %eax
	shrl	$3, %eax
	addq	%rax, %r10
	movslq	%ecx, %rcx
	movl	$-1, %eax
	cmpq	%rcx, %r10
	jg	.LBB15_14
# %bb.4:                                # %while.body24.preheader
	movl	%r9d, %r10d
	notl	%r10d
	cmpl	$-1, %r9d
	je	.LBB15_5
# %bb.8:                                # %while.body24.preheader.new
	negl	%r9d
	andl	$-2, %r9d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB15_9:                               # %while.body24
                                        # =>This Inner Loop Header: Depth=1
	leal	-1(%r8), %ecx
	andl	$7, %ecx
	xorl	%r11d, %r11d
	cmpl	$7, %ecx
	sete	%r11b
	movzbl	(%rdi,%r11), %ebx
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %ebx
	leaq	(%rdi,%r11), %rcx
	addl	$6, %r8d
	andl	$7, %r8d
	xorl	%r11d, %r11d
	cmpl	$7, %r8d
	sete	%r11b
	leaq	(%rcx,%r11), %rdi
	andl	$1, %ebx
	addl	%ebx, %ebx
	leal	(%rbx,%rax,4), %ebx
	movzbl	(%r11,%rcx), %ecx
	xorl	%eax, %eax
	btl	%r8d, %ecx
	setb	%al
	orl	%ebx, %eax
	addl	$-2, %r9d
	jne	.LBB15_9
# %bb.10:                               # %while.end35.loopexit.unr-lcssa.loopexit
	leal	(%rax,%rax), %ecx
	testb	$1, %r10b
	jne	.LBB15_13
.LBB15_12:                              # %while.body24.epil
	decl	%r8d
	andl	$7, %r8d
	xorl	%eax, %eax
	cmpl	$7, %r8d
	sete	%al
	movzbl	(%rdi,%rax), %edi
	xorl	%eax, %eax
	btl	%r8d, %edi
	setb	%al
	orl	%ecx, %eax
.LBB15_13:                              # %while.end35
	movl	%eax, (%rdx)
	movl	%esi, %eax
.LBB15_14:                              # %cleanup
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB15_5:
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
                                        # implicit-def: $eax
	testb	$1, %r10b
	je	.LBB15_12
	jmp	.LBB15_13
.Lfunc_end15:
	.size	GetVLCSymbol, .Lfunc_end15-GetVLCSymbol
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_UVLC          # -- Begin function readSyntaxElement_UVLC
	.p2align	4, 0x90
	.type	readSyntaxElement_UVLC,@function
readSyntaxElement_UVLC:                 # @readSyntaxElement_UVLC
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, %rdi
	movq	(%rdx), %rsi
	jmp	readSyntaxElement_VLC           # TAILCALL
.Lfunc_end16:
	.size	readSyntaxElement_UVLC, .Lfunc_end16-readSyntaxElement_UVLC
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_Intra4x4PredictionMode # -- Begin function readSyntaxElement_Intra4x4PredictionMode
	.p2align	4, 0x90
	.type	readSyntaxElement_Intra4x4PredictionMode,@function
readSyntaxElement_Intra4x4PredictionMode: # @readSyntaxElement_Intra4x4PredictionMode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	16(%rsi), %rcx
	movl	8(%rsi), %r9d
	movl	%r9d, %edx
	notl	%edx
	sarl	$3, %r9d
	andl	$7, %edx
	movslq	%r9d, %r11
	movzbl	(%rcx,%r11), %r10d
	movl	$1, %eax
	xorl	%r8d, %r8d
	btl	%edx, %r10d
	movl	$1, %ebx
	jb	.LBB17_4
# %bb.1:                                # %if.end.i
	cmpl	12(%rsi), %r9d
	jge	.LBB17_2
# %bb.3:                                # %if.else.i
	shll	$8, %r10d
	movzbl	1(%rcx,%r11), %r8d
	orl	%r10d, %r8d
	movb	$8, %cl
	subb	%dl, %cl
	shll	%cl, %r8d
	shrl	$13, %r8d
	andl	$7, %r8d
	movl	$4, %ebx
.LBB17_4:                               # %if.end
	movl	%r8d, 16(%rdi)
	movl	%ebx, 12(%rdi)
	addl	%ebx, 8(%rsi)
	movl	$-1, %ecx
	movl	$4, %edx
	cmpl	$1, 12(%rdi)
	je	.LBB17_6
# %bb.5:                                # %cond.false
	movl	16(%rdi), %ecx
.LBB17_6:                               # %return
	movl	%ecx, (%rdi,%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB17_2:
	.cfi_def_cfa_offset 16
	movl	$-1, %ecx
	movl	$12, %edx
	movl	$-1, %eax
	movl	%ecx, (%rdi,%rdx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	readSyntaxElement_Intra4x4PredictionMode, .Lfunc_end17-readSyntaxElement_Intra4x4PredictionMode
	.cfi_endproc
                                        # -- End function
	.globl	GetVLCSymbol_IntraMode          # -- Begin function GetVLCSymbol_IntraMode
	.p2align	4, 0x90
	.type	GetVLCSymbol_IntraMode,@function
GetVLCSymbol_IntraMode:                 # @GetVLCSymbol_IntraMode
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %r8d
	notl	%r8d
	sarl	$3, %esi
	andl	$7, %r8d
	movslq	%esi, %r10
	movzbl	(%rdi,%r10), %r9d
	btl	%r8d, %r9d
	jae	.LBB18_2
# %bb.1:
	movl	$1, %eax
	xorl	%esi, %esi
	jmp	.LBB18_4
.LBB18_2:                               # %if.end
	movl	$-1, %eax
	cmpl	%ecx, %esi
	jge	.LBB18_5
# %bb.3:                                # %if.else
	shll	$8, %r9d
	movzbl	1(%rdi,%r10), %esi
	orl	%r9d, %esi
	movb	$8, %cl
	subb	%r8b, %cl
	shll	%cl, %esi
	shrl	$13, %esi
	andl	$7, %esi
	movl	$4, %eax
.LBB18_4:                               # %cleanup.sink.split
	movl	%esi, (%rdx)
.LBB18_5:                               # %cleanup
	retq
.Lfunc_end18:
	.size	GetVLCSymbol_IntraMode, .Lfunc_end18-GetVLCSymbol_IntraMode
	.cfi_endproc
                                        # -- End function
	.globl	more_rbsp_data                  # -- Begin function more_rbsp_data
	.p2align	4, 0x90
	.type	more_rbsp_data,@function
more_rbsp_data:                         # @more_rbsp_data
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %ecx
	sarl	$3, %ecx
	decl	%edx
	movl	$1, %eax
	cmpl	%edx, %ecx
	jl	.LBB19_16
# %bb.1:                                # %if.else
	movslq	%ecx, %rcx
	andl	$7, %esi
	movzbl	(%rdi,%rcx), %ecx
	movl	%esi, %edx
	xorb	$7, %dl
	movzbl	%dl, %edx
	btl	%edx, %ecx
	jae	.LBB19_16
# %bb.2:                                # %if.else10
	xorl	%eax, %eax
	cmpl	$7, %esi
	jne	.LBB19_3
.LBB19_16:                              # %cleanup19
	retq
.LBB19_3:                               # %while.body
	movb	$6, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$6, %esi
	je	.LBB19_16
# %bb.4:                                # %while.body
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.5:                                # %while.body.1
	movb	$5, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$5, %esi
	je	.LBB19_16
# %bb.6:                                # %while.body.1
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.7:                                # %while.body.2
	movb	$4, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$4, %esi
	je	.LBB19_16
# %bb.8:                                # %while.body.2
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.9:                                # %while.body.3
	movb	$3, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$3, %esi
	je	.LBB19_16
# %bb.10:                               # %while.body.3
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.11:                               # %while.body.4
	movb	$2, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$2, %esi
	je	.LBB19_16
# %bb.12:                               # %while.body.4
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.13:                               # %while.body.5
	movb	$1, %al
	subb	%sil, %al
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	cmpl	$1, %esi
	je	.LBB19_16
# %bb.14:                               # %while.body.5
	testl	%eax, %eax
	jne	.LBB19_16
# %bb.15:                               # %while.body.6
	negb	%sil
	movzbl	%sil, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	retq
.Lfunc_end19:
	.size	more_rbsp_data, .Lfunc_end19-more_rbsp_data
	.cfi_endproc
                                        # -- End function
	.globl	uvlc_startcode_follows          # -- Begin function uvlc_startcode_follows
	.p2align	4, 0x90
	.type	uvlc_startcode_follows,@function
uvlc_startcode_follows:                 # @uvlc_startcode_follows
	.cfi_startproc
# %bb.0:                                # %entry
	movq	312(%rdi), %rax
	movq	(%rax), %rdx
	movl	8(%rdx), %ecx
	movl	12(%rdx), %edi
	movl	%ecx, %esi
	sarl	$3, %esi
	decl	%edi
	xorl	%eax, %eax
	cmpl	%edi, %esi
	jl	.LBB20_17
# %bb.1:                                # %if.else.i
	movq	16(%rdx), %rdx
	movslq	%esi, %rsi
	andl	$7, %ecx
	movzbl	(%rdx,%rsi), %edx
	movl	%ecx, %esi
	xorb	$7, %sil
	movzbl	%sil, %esi
	btl	%esi, %edx
	jae	.LBB20_17
# %bb.2:                                # %if.else10.i
	movl	$1, %eax
	cmpl	$7, %ecx
	je	.LBB20_17
# %bb.3:                                # %while.body.i
	movb	$6, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$6, %ecx
	je	.LBB20_16
# %bb.4:                                # %while.body.i
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.5:                                # %while.body.i.1
	movb	$5, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$5, %ecx
	je	.LBB20_16
# %bb.6:                                # %while.body.i.1
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.7:                                # %while.body.i.2
	movb	$4, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$4, %ecx
	je	.LBB20_16
# %bb.8:                                # %while.body.i.2
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.9:                                # %while.body.i.3
	movb	$3, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$3, %ecx
	je	.LBB20_16
# %bb.10:                               # %while.body.i.3
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.11:                               # %while.body.i.4
	movb	$2, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$2, %ecx
	je	.LBB20_16
# %bb.12:                               # %while.body.i.4
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.13:                               # %while.body.i.5
	movb	$1, %al
	subb	%cl, %al
	movzbl	%al, %esi
	xorl	%eax, %eax
	btl	%esi, %edx
	setb	%al
	cmpl	$1, %ecx
	je	.LBB20_16
# %bb.14:                               # %while.body.i.5
	testl	%eax, %eax
	jne	.LBB20_16
# %bb.15:                               # %while.body.i.6
	negb	%cl
	movzbl	%cl, %ecx
	xorl	%eax, %eax
	btl	%ecx, %edx
	setb	%al
.LBB20_16:                              # %more_rbsp_data.exit.loopexit
	xorl	$1, %eax
.LBB20_17:                              # %more_rbsp_data.exit
	retq
.Lfunc_end20:
	.size	uvlc_startcode_follows, .Lfunc_end20-uvlc_startcode_follows
	.cfi_endproc
                                        # -- End function
	.globl	GetBits                         # -- Begin function GetBits
	.p2align	4, 0x90
	.type	GetBits,@function
GetBits:                                # @GetBits
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $r8d killed $r8d def $r8
                                        # kill: def $esi killed $esi def $rsi
	leal	(%r8,%rsi), %r9d
	movl	$-1, %eax
	cmpl	%ecx, %r9d
	jg	.LBB21_4
# %bb.1:                                # %if.else
	testl	%r8d, %r8d
	je	.LBB21_2
# %bb.5:                                # %while.body.preheader
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %ecx
	notl	%ecx
	sarl	$3, %esi
	movslq	%esi, %rax
	addq	%rax, %rdi
	andl	$7, %ecx
	cmpl	$1, %r8d
	jne	.LBB21_7
# %bb.6:
	xorl	%esi, %esi
                                        # implicit-def: $eax
	testb	$1, %r8b
	jne	.LBB21_11
	jmp	.LBB21_12
.LBB21_2:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	xorl	%eax, %eax
	jmp	.LBB21_3
.LBB21_7:                               # %while.body.preheader.new
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%r8d, %esi
	andl	$-2, %esi
	xorl	%eax, %eax
	movl	$7, %r9d
	.p2align	4, 0x90
.LBB21_8:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %r10
	movzbl	(%rdi), %r11d
	shrl	%cl, %r11d
	xorl	%edi, %edi
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	setb	%dil
	movq	%r10, %rbx
	adcq	$0, %rbx
	andl	$1, %r11d
	addl	%r11d, %r11d
	leal	(%r11,%rax,4), %r11d
	movzbl	(%rbx), %ebx
	xorl	%eax, %eax
	btl	%ecx, %ebx
	setb	%al
	orl	%r11d, %eax
	subl	$1, %ecx
	cmovbl	%r9d, %ecx
	adcq	%r10, %rdi
	addl	$-2, %esi
	jne	.LBB21_8
# %bb.9:                                # %while.end.loopexit.unr-lcssa.loopexit
	leal	(%rax,%rax), %esi
	testb	$1, %r8b
	je	.LBB21_12
.LBB21_11:                              # %while.body.epil
	movzbl	(%rdi), %edi
	xorl	%eax, %eax
	btl	%ecx, %edi
	setb	%al
	orl	%esi, %eax
.LBB21_12:
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB21_3:                               # %while.end
	movl	%eax, (%rdx)
	movl	%r8d, %eax
.LBB21_4:                               # %return
	retq
.Lfunc_end21:
	.size	GetBits, .Lfunc_end21-GetBits
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_NumCoeffTrailingOnes # -- Begin function readSyntaxElement_NumCoeffTrailingOnes
	.p2align	4, 0x90
	.type	readSyntaxElement_NumCoeffTrailingOnes,@function
readSyntaxElement_NumCoeffTrailingOnes: # @readSyntaxElement_NumCoeffTrailingOnes
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
	movq	%rsi, %r11
	movl	8(%rsi), %ecx
	movq	16(%rsi), %r9
	movslq	4(%rdi), %rax
	cmpq	$3, %rax
	jne	.LBB22_7
# %bb.1:                                # %if.then
	movl	12(%r11), %eax
	leal	6(%rcx), %edx
	leal	1(,%rax,8), %eax
	cmpl	%eax, %ecx
	jle	.LBB22_4
# %bb.2:                                # %ShowBits.exit.thread
	movl	%edx, 8(%r11)
	movl	$3, 8(%rdi)
	movl	$-1, %eax
.LBB22_3:                               # %if.else
	incl	%eax
	movl	%eax, 4(%rdi)
	movl	$6, 12(%rdi)
	jmp	.LBB22_60
.LBB22_7:                               # %if.else12
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%r9,%rdx), %esi
	shll	$16, %esi
	movzbl	1(%r9,%rdx), %r10d
	shll	$8, %r10d
	orl	%esi, %r10d
	movzbl	2(%r9,%rdx), %r8d
	orl	%r10d, %r8d
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %r8d
	andl	$16777215, %r8d                 # imm = 0xFFFFFF
	movq	%rax, %rcx
	shlq	$6, %rcx
	leaq	(%rcx,%rax,4), %r9
	xorl	%eax, %eax
.LBB22_8:                               # %for.cond12.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_11
# %bb.9:                                # %lor.lhs.false.us.i
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_10
.LBB22_11:                              # %if.then.us.i
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+1(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_14
# %bb.12:                               # %lor.lhs.false.us.i.1
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+1(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_13
.LBB22_14:                              # %if.then.us.i.1
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+2(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_17
# %bb.15:                               # %lor.lhs.false.us.i.2
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+2(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_16
.LBB22_17:                              # %if.then.us.i.2
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+3(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_20
# %bb.18:                               # %lor.lhs.false.us.i.3
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+3(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_19
.LBB22_20:                              # %if.then.us.i.3
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+4(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_23
# %bb.21:                               # %lor.lhs.false.us.i.4
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+4(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_22
.LBB22_23:                              # %if.then.us.i.4
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+5(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_26
# %bb.24:                               # %lor.lhs.false.us.i.5
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+5(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_25
.LBB22_26:                              # %if.then.us.i.5
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+6(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_29
# %bb.27:                               # %lor.lhs.false.us.i.6
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+6(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_28
.LBB22_29:                              # %if.then.us.i.6
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+7(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_32
# %bb.30:                               # %lor.lhs.false.us.i.7
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+7(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_31
.LBB22_32:                              # %if.then.us.i.7
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+8(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_35
# %bb.33:                               # %lor.lhs.false.us.i.8
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+8(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_34
.LBB22_35:                              # %if.then.us.i.8
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+9(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_38
# %bb.36:                               # %lor.lhs.false.us.i.9
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+9(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_37
.LBB22_38:                              # %if.then.us.i.9
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+10(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_41
# %bb.39:                               # %lor.lhs.false.us.i.10
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+10(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_40
.LBB22_41:                              # %if.then.us.i.10
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+11(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_44
# %bb.42:                               # %lor.lhs.false.us.i.11
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+11(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_43
.LBB22_44:                              # %if.then.us.i.11
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+12(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_47
# %bb.45:                               # %lor.lhs.false.us.i.12
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+12(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_46
.LBB22_47:                              # %if.then.us.i.12
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+13(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_50
# %bb.48:                               # %lor.lhs.false.us.i.13
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+13(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_49
.LBB22_50:                              # %if.then.us.i.13
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+14(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_53
# %bb.51:                               # %lor.lhs.false.us.i.14
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+14(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_52
.LBB22_53:                              # %if.then.us.i.14
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+15(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_56
# %bb.54:                               # %lor.lhs.false.us.i.15
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+15(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_55
.LBB22_56:                              # %if.then.us.i.15
                                        #   in Loop: Header=BB22_8 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.lentab+16(%r9), %edx
	testl	%edx, %edx
	je	.LBB22_61
# %bb.57:                               # %lor.lhs.false.us.i.16
                                        #   in Loop: Header=BB22_8 Depth=1
	movb	$24, %cl
	subb	%dl, %cl
	movl	%r8d, %esi
	shrl	%cl, %esi
	movzbl	readSyntaxElement_NumCoeffTrailingOnes.codtab+16(%r9), %ecx
	cmpl	%ecx, %esi
	je	.LBB22_58
.LBB22_61:                              # %if.then.us.i.16
                                        #   in Loop: Header=BB22_8 Depth=1
	incl	%eax
	addq	$17, %r9
	cmpl	$4, %eax
	jne	.LBB22_8
# %bb.62:                               # %if.then20
	movl	$.Lstr, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB22_4:                               # %if.else.i
	movl	%ecx, %eax
	sarl	$3, %eax
	movslq	%eax, %r15
	leaq	(%r9,%r15), %r8
	andl	$7, %ecx
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movl	$6, %r11d
	subl	%ecx, %r11d
	xorl	%r13d, %r13d
	cmpl	$7, %ecx
	cmovel	%ecx, %r11d
	sete	%r13b
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	leaq	(%r8,%r13), %rdx
	xorl	%r10d, %r10d
	movl	%r11d, %eax
	subl	$1, %eax
	movl	$7, %esi
	cmovbl	%esi, %eax
	setb	%r10b
	movq	%r8, %r12
	adcq	%r13, %r12
	xorl	%ebx, %ebx
	movl	%eax, %ebp
	subl	$1, %ebp
	setb	%bl
	cmovbl	%esi, %ebp
	adcq	%rdx, %r10
	xorl	%r14d, %r14d
	movl	%ebp, %edx
	subl	$1, %edx
	setb	%r14b
	cmovbl	%esi, %edx
	adcq	%r12, %rbx
	cmpl	$1, %edx
	adcq	%r10, %r14
	movzbl	(%r13,%r8), %r13d
	movzbl	(%r9,%r15), %r9d
	movl	%edx, %r8d
	subl	$1, %r8d
	cmovbl	%esi, %r8d
	xorb	$7, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shrl	%cl, %r9d
	andl	$1, %r9d
	xorl	%r15d, %r15d
	btl	%r11d, %r13d
	setb	%r15b
	movzbl	(%r12), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	addl	%esi, %esi
	andl	$2, %esi
	movzbl	(%r10), %ecx
	xorl	%eax, %eax
	btl	%ebp, %ecx
	setb	%al
	movzbl	(%rbx), %r10d
	movl	%edx, %ecx
	shrl	%cl, %r10d
	movzbl	(%r14), %ecx
	andl	$1, %r10d
	xorl	%edx, %edx
	btl	%r8d, %ecx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, 8(%rcx)
	leal	(%r15,%r9,2), %ecx
	leal	(%rsi,%rcx,4), %ecx
	setb	%dl
	orl	%ecx, %eax
	leal	(%rdx,%r10,2), %ecx
	movl	%ecx, 8(%rdi)
	movl	%eax, 4(%rdi)
	jne	.LBB22_3
# %bb.5:                                # %if.else.i
	cmpl	$3, %ecx
	jne	.LBB22_3
# %bb.6:                                # %if.then9
	movl	$0, 8(%rdi)
	movl	$6, 12(%rdi)
	jmp	.LBB22_60
.LBB22_10:
	xorl	%ecx, %ecx
	jmp	.LBB22_59
.LBB22_13:
	movl	$1, %ecx
	jmp	.LBB22_59
.LBB22_16:
	movl	$2, %ecx
	jmp	.LBB22_59
.LBB22_19:
	movl	$3, %ecx
	jmp	.LBB22_59
.LBB22_22:
	movl	$4, %ecx
	jmp	.LBB22_59
.LBB22_25:
	movl	$5, %ecx
	jmp	.LBB22_59
.LBB22_28:
	movl	$6, %ecx
	jmp	.LBB22_59
.LBB22_31:
	movl	$7, %ecx
	jmp	.LBB22_59
.LBB22_34:
	movl	$8, %ecx
	jmp	.LBB22_59
.LBB22_37:
	movl	$9, %ecx
	jmp	.LBB22_59
.LBB22_40:
	movl	$10, %ecx
	jmp	.LBB22_59
.LBB22_43:
	movl	$11, %ecx
	jmp	.LBB22_59
.LBB22_46:
	movl	$12, %ecx
	jmp	.LBB22_59
.LBB22_49:
	movl	$13, %ecx
	jmp	.LBB22_59
.LBB22_52:
	movl	$14, %ecx
	jmp	.LBB22_59
.LBB22_55:
	movl	$15, %ecx
	jmp	.LBB22_59
.LBB22_58:
	movl	$16, %ecx
.LBB22_59:                              # %code_from_bitstream_2d.exit.thread
	movl	%edx, 12(%rdi)
	addl	%edx, 8(%r11)
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
.LBB22_60:                              # %if.end23
	xorl	%eax, %eax
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
.Lfunc_end22:
	.size	readSyntaxElement_NumCoeffTrailingOnes, .Lfunc_end22-readSyntaxElement_NumCoeffTrailingOnes
	.cfi_endproc
                                        # -- End function
	.globl	ShowBits                        # -- Begin function ShowBits
	.p2align	4, 0x90
	.type	ShowBits,@function
ShowBits:                               # @ShowBits
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
                                        # kill: def $esi killed $esi def $rsi
	leal	(%r8,%rsi), %ecx
	movl	$-1, %eax
	cmpl	%edx, %ecx
	jg	.LBB23_3
# %bb.1:                                # %if.else
	testl	%r8d, %r8d
	je	.LBB23_2
# %bb.4:                                # %while.body.preheader
	movl	%esi, %ecx
	notl	%ecx
	sarl	$3, %esi
	movslq	%esi, %rax
	addq	%rax, %rdi
	andl	$7, %ecx
	cmpl	$1, %r8d
	jne	.LBB23_6
# %bb.5:
	xorl	%edx, %edx
                                        # implicit-def: $eax
	testb	$1, %r8b
	jne	.LBB23_10
.LBB23_3:                               # %return
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB23_2:
	xorl	%eax, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB23_6:                               # %while.body.preheader.new
	movl	%r8d, %edx
	andl	$-2, %edx
	xorl	%eax, %eax
	movl	$7, %esi
	.p2align	4, 0x90
.LBB23_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %r9
	movzbl	(%rdi), %r10d
	shrl	%cl, %r10d
	xorl	%edi, %edi
	subl	$1, %ecx
	cmovbl	%esi, %ecx
	setb	%dil
	movq	%r9, %r11
	adcq	$0, %r11
	andl	$1, %r10d
	addl	%r10d, %r10d
	leal	(%r10,%rax,4), %r10d
	movzbl	(%r11), %r11d
	xorl	%eax, %eax
	btl	%ecx, %r11d
	setb	%al
	orl	%r10d, %eax
	subl	$1, %ecx
	cmovbl	%esi, %ecx
	adcq	%r9, %rdi
	addl	$-2, %edx
	jne	.LBB23_7
# %bb.8:                                # %return.loopexit.unr-lcssa.loopexit
	leal	(%rax,%rax), %edx
	testb	$1, %r8b
	je	.LBB23_3
.LBB23_10:                              # %while.body.epil
	movzbl	(%rdi), %esi
	xorl	%eax, %eax
	btl	%ecx, %esi
	setb	%al
	orl	%edx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end23:
	.size	ShowBits, .Lfunc_end23-ShowBits
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_NumCoeffTrailingOnesChromaDC # -- Begin function readSyntaxElement_NumCoeffTrailingOnesChromaDC
	.p2align	4, 0x90
	.type	readSyntaxElement_NumCoeffTrailingOnesChromaDC,@function
readSyntaxElement_NumCoeffTrailingOnesChromaDC: # @readSyntaxElement_NumCoeffTrailingOnesChromaDC
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rdi), %rax
	movl	36(%rax), %eax
	decl	%eax
	cltq
	movq	16(%rdx), %rdi
	movl	8(%rdx), %ecx
	movl	%ecx, %r8d
	sarl	$3, %r8d
	movslq	%r8d, %r8
	movzbl	(%rdi,%r8), %r9d
	shll	$16, %r9d
	movzbl	1(%rdi,%r8), %r10d
	shll	$8, %r10d
	orl	%r9d, %r10d
	movzbl	2(%rdi,%r8), %r8d
	orl	%r10d, %r8d
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	andl	$16777215, %r8d                 # imm = 0xFFFFFF
	movq	%rax, %rcx
	shlq	$6, %rcx
	leaq	(%rcx,%rax,4), %r9
	xorl	%eax, %eax
.LBB24_1:                               # %for.cond12.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_5
# %bb.2:                                # %lor.lhs.false.us.i
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_3
.LBB24_5:                               # %if.then.us.i
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+1(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_8
# %bb.6:                                # %lor.lhs.false.us.i.1
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+1(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_7
.LBB24_8:                               # %if.then.us.i.1
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+2(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_11
# %bb.9:                                # %lor.lhs.false.us.i.2
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+2(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_10
.LBB24_11:                              # %if.then.us.i.2
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+3(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_14
# %bb.12:                               # %lor.lhs.false.us.i.3
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+3(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_13
.LBB24_14:                              # %if.then.us.i.3
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+4(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_17
# %bb.15:                               # %lor.lhs.false.us.i.4
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+4(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_16
.LBB24_17:                              # %if.then.us.i.4
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+5(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_20
# %bb.18:                               # %lor.lhs.false.us.i.5
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+5(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_19
.LBB24_20:                              # %if.then.us.i.5
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+6(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_23
# %bb.21:                               # %lor.lhs.false.us.i.6
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+6(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_22
.LBB24_23:                              # %if.then.us.i.6
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+7(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_26
# %bb.24:                               # %lor.lhs.false.us.i.7
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+7(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_25
.LBB24_26:                              # %if.then.us.i.7
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+8(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_29
# %bb.27:                               # %lor.lhs.false.us.i.8
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+8(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_28
.LBB24_29:                              # %if.then.us.i.8
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+9(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_32
# %bb.30:                               # %lor.lhs.false.us.i.9
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+9(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_31
.LBB24_32:                              # %if.then.us.i.9
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+10(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_35
# %bb.33:                               # %lor.lhs.false.us.i.10
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+10(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_34
.LBB24_35:                              # %if.then.us.i.10
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+11(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_38
# %bb.36:                               # %lor.lhs.false.us.i.11
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+11(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_37
.LBB24_38:                              # %if.then.us.i.11
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+12(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_41
# %bb.39:                               # %lor.lhs.false.us.i.12
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+12(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_40
.LBB24_41:                              # %if.then.us.i.12
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+13(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_44
# %bb.42:                               # %lor.lhs.false.us.i.13
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+13(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_43
.LBB24_44:                              # %if.then.us.i.13
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+14(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_47
# %bb.45:                               # %lor.lhs.false.us.i.14
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+14(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_46
.LBB24_47:                              # %if.then.us.i.14
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+15(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_50
# %bb.48:                               # %lor.lhs.false.us.i.15
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+15(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_49
.LBB24_50:                              # %if.then.us.i.15
                                        #   in Loop: Header=BB24_1 Depth=1
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab+16(%r9), %edi
	testl	%edi, %edi
	je	.LBB24_53
# %bb.51:                               # %lor.lhs.false.us.i.16
                                        #   in Loop: Header=BB24_1 Depth=1
	movb	$24, %cl
	subb	%dil, %cl
	movl	%r8d, %r10d
	shrl	%cl, %r10d
	movzbl	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab+16(%r9), %ecx
	cmpl	%ecx, %r10d
	je	.LBB24_52
.LBB24_53:                              # %if.then.us.i.16
                                        #   in Loop: Header=BB24_1 Depth=1
	incl	%eax
	addq	$17, %r9
	cmpl	$4, %eax
	jne	.LBB24_1
# %bb.54:                               # %if.then
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.Lstr.6, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.LBB24_3:
	.cfi_def_cfa_offset 8
	xorl	%ecx, %ecx
	jmp	.LBB24_4
.LBB24_7:
	movl	$1, %ecx
	jmp	.LBB24_4
.LBB24_10:
	movl	$2, %ecx
	jmp	.LBB24_4
.LBB24_13:
	movl	$3, %ecx
	jmp	.LBB24_4
.LBB24_16:
	movl	$4, %ecx
	jmp	.LBB24_4
.LBB24_19:
	movl	$5, %ecx
	jmp	.LBB24_4
.LBB24_22:
	movl	$6, %ecx
	jmp	.LBB24_4
.LBB24_25:
	movl	$7, %ecx
	jmp	.LBB24_4
.LBB24_28:
	movl	$8, %ecx
	jmp	.LBB24_4
.LBB24_31:
	movl	$9, %ecx
	jmp	.LBB24_4
.LBB24_34:
	movl	$10, %ecx
	jmp	.LBB24_4
.LBB24_37:
	movl	$11, %ecx
	jmp	.LBB24_4
.LBB24_40:
	movl	$12, %ecx
	jmp	.LBB24_4
.LBB24_43:
	movl	$13, %ecx
	jmp	.LBB24_4
.LBB24_46:
	movl	$14, %ecx
	jmp	.LBB24_4
.LBB24_49:
	movl	$15, %ecx
	jmp	.LBB24_4
.LBB24_52:
	movl	$16, %ecx
.LBB24_4:                               # %if.end
	movl	%edi, 12(%rsi)
	addl	%edi, 8(%rdx)
	movl	%ecx, 4(%rsi)
	movl	%eax, 8(%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	readSyntaxElement_NumCoeffTrailingOnesChromaDC, .Lfunc_end24-readSyntaxElement_NumCoeffTrailingOnesChromaDC
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_Level_VLC0    # -- Begin function readSyntaxElement_Level_VLC0
	.p2align	4, 0x90
	.type	readSyntaxElement_Level_VLC0,@function
readSyntaxElement_Level_VLC0:           # @readSyntaxElement_Level_VLC0
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
	movl	8(%rsi), %r8d
	movl	12(%rsi), %ecx
	leal	7(,%rcx,8), %ebp
	cmpl	%ebp, %r8d
	jge	.LBB25_1
# %bb.2:                                # %if.else.i.preheader
	shll	$3, %ecx
	movq	16(%rsi), %r9
	leal	8(%rcx), %eax
	movl	%eax, %r10d
	subl	%r8d, %r10d
	movl	$1, %edx
	.p2align	4, 0x90
.LBB25_3:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %r11d
	sarl	$3, %r11d
	movslq	%r11d, %r11
	movzbl	(%r9,%r11), %r11d
	movl	%r8d, %ebx
	notb	%bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	btl	%ebx, %r11d
	jb	.LBB25_6
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB25_3 Depth=1
	incl	%edx
	incl	%r8d
	cmpl	%r8d, %ebp
	jne	.LBB25_3
# %bb.5:
	movl	%r10d, %edx
	movl	%ebp, %r8d
	cmpl	$14, %edx
	jbe	.LBB25_8
	jmp	.LBB25_9
.LBB25_1:
	incl	%r8d
	movl	$1, %edx
	movl	%r8d, %eax
	jmp	.LBB25_8
.LBB25_6:                               # %if.else.i.while.end_crit_edge
	leal	1(%r8), %eax
	cmpl	$14, %edx
	ja	.LBB25_9
.LBB25_8:                               # %if.then
	leal	-1(%rdx), %r11d
	movl	%r11d, %r10d
	sarl	%r10d
	incl	%r10d
	movl	%edx, %ebx
	movl	%eax, %r8d
.LBB25_19:                              # %if.end32
	movl	%r10d, %eax
	negl	%eax
	testb	$1, %r11b
	cmovel	%r10d, %eax
	movl	%eax, 16(%rdi)
	movl	%ebx, 12(%rdi)
	movl	%r8d, 8(%rsi)
	xorl	%eax, %eax
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
.LBB25_9:                               # %if.else
	.cfi_def_cfa_offset 56
	cmpl	$15, %edx
	jne	.LBB25_13
# %bb.10:                               # %if.then6
	orl	$2, %ecx
	movl	$-1, %r11d
	cmpl	%ecx, %r8d
	jg	.LBB25_12
# %bb.11:                               # %if.else.i73
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	leaq	(%r9,%rcx), %rbx
	andl	$7, %eax
	movl	$6, %r11d
	subl	%eax, %r11d
	xorl	%r14d, %r14d
	cmpl	$7, %eax
	sete	%r14b
	cmovel	%eax, %r11d
	leaq	(%rbx,%r14), %r15
	xorl	%r10d, %r10d
	movl	%r11d, %edx
	subl	$1, %edx
	setb	%r10b
	movl	$7, %r12d
	cmovbl	%r12d, %edx
	movq	%rbx, %r13
	adcq	%r14, %r13
	cmpl	$1, %edx
	adcq	%r15, %r10
	movl	%edx, %ebp
	subl	$1, %ebp
	movzbl	(%r9,%rcx), %r9d
	cmovbl	%r12d, %ebp
	xorb	$7, %al
	movl	%eax, %ecx
	shrl	%cl, %r9d
	movzbl	(%r14,%rbx), %eax
	andl	$1, %r9d
	xorl	%ecx, %ecx
	btl	%r11d, %eax
	setb	%cl
	leal	(%rcx,%r9,2), %eax
	movzbl	(%r13), %r9d
	movl	%edx, %ecx
	shrl	%cl, %r9d
	andl	$1, %r9d
	addl	%r9d, %r9d
	leal	(%r9,%rax,4), %eax
	movzbl	(%r10), %ecx
	xorl	%r11d, %r11d
	btl	%ebp, %ecx
	setb	%r11b
	orl	%eax, %r11d
.LBB25_12:                              # %ShowBits.exit97
	addl	$5, %r8d
	movl	%r11d, %r10d
	shrl	%r10d
	andl	$7, %r10d
	orl	$8, %r10d
	movl	$19, %ebx
	jmp	.LBB25_19
.LBB25_13:                              # %if.then17
	leal	-16(%rdx), %ecx
	movl	$2048, %r10d                    # imm = 0x800
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r10d
	addl	$-2032, %r10d                   # imm = 0xF810
	leal	-4(%rdx), %ebx
	leal	(%rax,%rdx), %r8d
	addl	$-4, %r8d
	movl	$-1, %r11d
	cmpl	%ebp, %r8d
	jg	.LBB25_18
# %bb.14:                               # %while.body.preheader.i
	movl	%eax, %ecx
	notl	%ecx
	andl	$7, %ecx
	sarl	$3, %eax
	cltq
	addq	%rax, %r9
	movl	%ebx, %eax
	andl	$-2, %eax
	xorl	%r11d, %r11d
	movl	$7, %ebp
	.p2align	4, 0x90
.LBB25_15:                              # %while.body.i106
                                        # =>This Inner Loop Header: Depth=1
	movq	%r9, %r14
	movzbl	(%r9), %r15d
	shrl	%cl, %r15d
	xorl	%r9d, %r9d
	subl	$1, %ecx
	cmovbl	%ebp, %ecx
	setb	%r9b
	movq	%r14, %r12
	adcq	$0, %r12
	andl	$1, %r15d
	addl	%r15d, %r15d
	leal	(%r15,%r11,4), %r15d
	movzbl	(%r12), %r12d
	xorl	%r11d, %r11d
	btl	%ecx, %r12d
	setb	%r11b
	orl	%r15d, %r11d
	subl	$1, %ecx
	cmovbl	%ebp, %ecx
	adcq	%r14, %r9
	addl	$-2, %eax
	jne	.LBB25_15
# %bb.16:                               # %ShowBits.exit124.loopexit.unr-lcssa
	testb	$1, %dl
	je	.LBB25_18
# %bb.17:                               # %while.body.i106.epil
	movzbl	(%r9), %eax
	xorl	%r9d, %r9d
	btl	%ecx, %eax
	setb	%r9b
	leal	(%r9,%r11,2), %r11d
.LBB25_18:                              # %ShowBits.exit124
	movl	%r11d, %eax
	sarl	%eax
	addl	%eax, %r10d
	addl	%edx, %ebx
	jmp	.LBB25_19
.Lfunc_end25:
	.size	readSyntaxElement_Level_VLC0, .Lfunc_end25-readSyntaxElement_Level_VLC0
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_Level_VLCN    # -- Begin function readSyntaxElement_Level_VLCN
	.p2align	4, 0x90
	.type	readSyntaxElement_Level_VLCN,@function
readSyntaxElement_Level_VLCN:           # @readSyntaxElement_Level_VLCN
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
                                        # kill: def $esi killed $esi def $rsi
	movl	8(%rdx), %r8d
	movl	12(%rdx), %r14d
	leal	7(,%r14,8), %r10d
	movq	16(%rdx), %r9
	leal	-1(%rsi), %eax
	cmpl	%r10d, %r8d
	jge	.LBB26_1
# %bb.2:                                # %if.else.i.preheader
	shll	$3, %r14d
	addl	$8, %r14d
	movl	%r14d, %ecx
	subl	%r8d, %ecx
	movl	$1, %r11d
	.p2align	4, 0x90
.LBB26_3:                               # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r8d, %ebx
	sarl	$3, %ebx
	movslq	%ebx, %rbx
	movzbl	(%r9,%rbx), %ebp
	movl	%r8d, %ebx
	notb	%bl
	movzbl	%bl, %ebx
	andl	$7, %ebx
	btl	%ebx, %ebp
	jb	.LBB26_6
# %bb.4:                                # %while.body
                                        #   in Loop: Header=BB26_3 Depth=1
	incl	%r11d
	incl	%r8d
	cmpl	%r8d, %r10d
	jne	.LBB26_3
# %bb.5:
	movl	%ecx, %r11d
	movl	%r10d, %ebp
	movl	%r14d, %r8d
	subl	%r11d, %r8d
	cmpl	$15, %r11d
	jbe	.LBB26_8
	jmp	.LBB26_19
.LBB26_1:
	leal	1(%r8), %r14d
	movl	$1, %r11d
	movl	%r8d, %ebp
	jmp	.LBB26_8
.LBB26_6:                               # %if.else.i.while.end_crit_edge
	leal	1(%r8), %r14d
	movl	%r8d, %ebp
	movl	%r14d, %r8d
	subl	%r11d, %r8d
	cmpl	$15, %r11d
	ja	.LBB26_19
.LBB26_8:                               # %if.then
	leal	-1(%r11), %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	incl	%ebx
	testl	%eax, %eax
	je	.LBB26_18
# %bb.9:                                # %if.then8
	addl	%esi, %ebp
	movl	$-1, %r15d
	cmpl	%r10d, %ebp
	jg	.LBB26_17
# %bb.10:                               # %while.body.preheader.i
	movl	%r14d, %ecx
	notl	%ecx
	sarl	$3, %r14d
	movslq	%r14d, %r14
	addq	%r9, %r14
	andl	$7, %ecx
	cmpl	$2, %esi
	jne	.LBB26_12
# %bb.11:
	xorl	%esi, %esi
                                        # implicit-def: $r15d
	testb	$1, %al
	je	.LBB26_17
.LBB26_16:                              # %while.body.i99.epil
	movzbl	(%r14), %ebp
	xorl	%r15d, %r15d
	btl	%ecx, %ebp
	setb	%r15b
	orl	%esi, %r15d
.LBB26_17:                              # %ShowBits.exit117
	addl	%ebx, %r15d
	addl	%eax, %r11d
	movl	%r15d, %ebx
.LBB26_18:                              # %if.end
	leal	(%r11,%r8), %eax
	movl	%r11d, %esi
	cmpl	%r10d, %eax
	jge	.LBB26_27
.LBB26_28:                              # %if.end35
	movl	%eax, %ecx
	sarl	$3, %ecx
	movslq	%ecx, %rcx
	movzbl	(%r9,%rcx), %r9d
	notb	%al
	andb	$7, %al
	movl	%eax, %ecx
	shrl	%cl, %r9d
	movl	%ebx, %eax
	negl	%eax
	testb	$1, %r9b
	cmovnel	%eax, %ebx
	jmp	.LBB26_29
.LBB26_19:                              # %if.else
	leal	-5(%r11), %esi
	movl	$1, %ebx
	movl	%esi, %ecx
	shll	%cl, %ebx
	movl	$15, %r15d
	movl	%eax, %ecx
	shll	%cl, %r15d
	leal	(%r14,%r11), %eax
	addl	$-5, %eax
	movl	$-1, %r12d
	cmpl	%r10d, %eax
	jg	.LBB26_25
# %bb.20:                               # %while.body.preheader.i150
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	movl	%ebx, -20(%rsp)                 # 4-byte Spill
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movl	%r14d, %ecx
	notl	%ecx
	andl	$7, %ecx
	sarl	$3, %r14d
	movslq	%r14d, %r14
	addq	%r9, %r14
	movl	%esi, %ebp
	andl	$-2, %ebp
	xorl	%r12d, %r12d
	movl	$7, %r13d
	.p2align	4, 0x90
.LBB26_21:                              # %while.body.i156
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %r15
	movzbl	(%r14), %edi
	shrl	%cl, %edi
	xorl	%r14d, %r14d
	subl	$1, %ecx
	cmovbl	%r13d, %ecx
	setb	%r14b
	movq	%r15, %rbx
	adcq	$0, %rbx
	andl	$1, %edi
	addl	%edi, %edi
	leal	(%rdi,%r12,4), %edi
	movzbl	(%rbx), %ebx
	xorl	%r12d, %r12d
	btl	%ecx, %ebx
	setb	%r12b
	orl	%edi, %r12d
	subl	$1, %ecx
	cmovbl	%r13d, %ecx
	adcq	%r15, %r14
	addl	$-2, %ebp
	jne	.LBB26_21
# %bb.22:                               # %ShowBits.exit174.loopexit.unr-lcssa
	testb	$1, %sil
	je	.LBB26_24
# %bb.23:                               # %while.body.i156.epil
	movzbl	(%r14), %edi
	xorl	%ebx, %ebx
	btl	%ecx, %edi
	setb	%bl
	leal	(%rbx,%r12,2), %r12d
.LBB26_24:                              # %ShowBits.exit174
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	movl	-20(%rsp), %ebx                 # 4-byte Reload
	movq	-8(%rsp), %r15                  # 8-byte Reload
.LBB26_25:                              # %ShowBits.exit174
	addl	%r11d, %esi
	addl	%ebx, %r15d
	leal	(%r12,%r15), %ebx
	addl	$-2047, %ebx                    # imm = 0xF801
	cmpl	%r10d, %eax
	jl	.LBB26_28
.LBB26_27:                              # %if.end35.thread
	negl	%ebx
.LBB26_29:
	leal	1(%rsi), %eax
	movl	%ebx, 16(%rdi)
	movl	%eax, 12(%rdi)
	leal	(%rsi,%r8), %eax
	incl	%eax
	movl	%eax, 8(%rdx)
	xorl	%eax, %eax
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
.LBB26_12:                              # %while.body.preheader.i.new
	.cfi_def_cfa_offset 56
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	andl	$-2, %esi
	xorl	%r15d, %r15d
	movl	$7, %ebp
	.p2align	4, 0x90
.LBB26_13:                              # %while.body.i99
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %r12
	movzbl	(%r14), %edi
	shrl	%cl, %edi
	xorl	%r14d, %r14d
	subl	$1, %ecx
	cmovbl	%ebp, %ecx
	setb	%r14b
	movq	%r12, %r13
	adcq	$0, %r13
	andl	$1, %edi
	addl	%edi, %edi
	leal	(%rdi,%r15,4), %edi
	movzbl	(%r13), %r13d
	xorl	%r15d, %r15d
	btl	%ecx, %r13d
	setb	%r15b
	orl	%edi, %r15d
	subl	$1, %ecx
	cmovbl	%ebp, %ecx
	adcq	%r12, %r14
	addl	$-2, %esi
	jne	.LBB26_13
# %bb.14:                               # %ShowBits.exit117.loopexit.unr-lcssa.loopexit
	leal	(%r15,%r15), %esi
	movq	-16(%rsp), %rdi                 # 8-byte Reload
	testb	$1, %al
	jne	.LBB26_16
	jmp	.LBB26_17
.Lfunc_end26:
	.size	readSyntaxElement_Level_VLCN, .Lfunc_end26-readSyntaxElement_Level_VLCN
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_TotalZeros    # -- Begin function readSyntaxElement_TotalZeros
	.p2align	4, 0x90
	.type	readSyntaxElement_TotalZeros,@function
readSyntaxElement_TotalZeros:           # @readSyntaxElement_TotalZeros
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	4(%rdi), %r9
	shlq	$4, %r9
	movq	16(%rsi), %rax
	movl	8(%rsi), %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %r8d
	shll	$16, %r8d
	movzbl	1(%rax,%rdx), %r10d
	shll	$8, %r10d
	orl	%r8d, %r10d
	movzbl	2(%rax,%rdx), %eax
	orl	%r10d, %eax
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	leaq	readSyntaxElement_TotalZeros.codtab(%r9), %rdx
	andl	$16777215, %eax                 # imm = 0xFFFFFF
	movzbl	readSyntaxElement_TotalZeros.lentab(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_2
# %bb.1:                                # %lor.lhs.false.us.i
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	(%rdx), %r11d
	xorl	%ecx, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_2:                               # %if.then.us.i
	leaq	readSyntaxElement_TotalZeros.lentab(%r9), %r9
	movzbl	1(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_4
# %bb.3:                                # %lor.lhs.false.us.i.1
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	1(%rdx), %r11d
	movl	$1, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_4:                               # %if.then.us.i.1
	movzbl	2(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_6
# %bb.5:                                # %lor.lhs.false.us.i.2
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	2(%rdx), %r11d
	movl	$2, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_6:                               # %if.then.us.i.2
	movzbl	3(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_8
# %bb.7:                                # %lor.lhs.false.us.i.3
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	3(%rdx), %r11d
	movl	$3, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_8:                               # %if.then.us.i.3
	movzbl	4(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_10
# %bb.9:                                # %lor.lhs.false.us.i.4
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	4(%rdx), %r11d
	movl	$4, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_10:                              # %if.then.us.i.4
	movzbl	5(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_12
# %bb.11:                               # %lor.lhs.false.us.i.5
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	5(%rdx), %r11d
	movl	$5, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_12:                              # %if.then.us.i.5
	movzbl	6(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_14
# %bb.13:                               # %lor.lhs.false.us.i.6
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	6(%rdx), %r11d
	movl	$6, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_14:                              # %if.then.us.i.6
	movzbl	7(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_16
# %bb.15:                               # %lor.lhs.false.us.i.7
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	7(%rdx), %r11d
	movl	$7, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_16:                              # %if.then.us.i.7
	movzbl	8(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_18
# %bb.17:                               # %lor.lhs.false.us.i.8
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	8(%rdx), %r11d
	movl	$8, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_18:                              # %if.then.us.i.8
	movzbl	9(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_20
# %bb.19:                               # %lor.lhs.false.us.i.9
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	9(%rdx), %r11d
	movl	$9, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_20:                              # %if.then.us.i.9
	movzbl	10(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_22
# %bb.21:                               # %lor.lhs.false.us.i.10
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	10(%rdx), %r11d
	movl	$10, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_22:                              # %if.then.us.i.10
	movzbl	11(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_24
# %bb.23:                               # %lor.lhs.false.us.i.11
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	11(%rdx), %r11d
	movl	$11, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_24:                              # %if.then.us.i.11
	movzbl	12(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_26
# %bb.25:                               # %lor.lhs.false.us.i.12
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	12(%rdx), %r11d
	movl	$12, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_26:                              # %if.then.us.i.12
	movzbl	13(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_28
# %bb.27:                               # %lor.lhs.false.us.i.13
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	13(%rdx), %r11d
	movl	$13, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_28:                              # %if.then.us.i.13
	movzbl	14(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_30
# %bb.29:                               # %lor.lhs.false.us.i.14
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	14(%rdx), %r11d
	movl	$14, %ecx
	cmpl	%r11d, %r10d
	je	.LBB27_32
.LBB27_30:                              # %if.then.us.i.14
	movzbl	15(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB27_33
# %bb.31:                               # %lor.lhs.false.us.i.15
	movb	$24, %cl
	subb	%r8b, %cl
	shrl	%cl, %eax
	movzbl	15(%rdx), %edx
	movl	$15, %ecx
	cmpl	%edx, %eax
	jne	.LBB27_33
.LBB27_32:                              # %if.end
	movl	%r8d, 12(%rdi)
	addl	%r8d, 8(%rsi)
	movl	%ecx, 4(%rdi)
	movl	$0, 8(%rdi)
	xorl	%eax, %eax
	retq
.LBB27_33:                              # %if.then.us.i.15
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.Lstr.7, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end27:
	.size	readSyntaxElement_TotalZeros, .Lfunc_end27-readSyntaxElement_TotalZeros
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_TotalZerosChromaDC # -- Begin function readSyntaxElement_TotalZerosChromaDC
	.p2align	4, 0x90
	.type	readSyntaxElement_TotalZerosChromaDC,@function
readSyntaxElement_TotalZerosChromaDC:   # @readSyntaxElement_TotalZerosChromaDC
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	16(%rdi), %rax
	movl	36(%rax), %eax
	decl	%eax
	movslq	4(%rsi), %r9
	cltq
	shlq	$4, %r9
	imulq	$240, %rax, %r10
	movq	16(%rdx), %rax
	movl	8(%rdx), %ecx
	movl	%ecx, %edi
	sarl	$3, %edi
	movslq	%edi, %rdi
	movzbl	(%rax,%rdi), %r8d
	shll	$16, %r8d
	movzbl	1(%rax,%rdi), %r11d
	shll	$8, %r11d
	orl	%r8d, %r11d
	movzbl	2(%rax,%rdi), %eax
	orl	%r11d, %eax
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	leaq	(%r10,%r9), %rdi
	addq	$readSyntaxElement_TotalZerosChromaDC.codtab, %rdi
	andl	$16777215, %eax                 # imm = 0xFFFFFF
	movzbl	readSyntaxElement_TotalZerosChromaDC.lentab(%r10,%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_2
# %bb.1:                                # %lor.lhs.false.us.i
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r11d
	shrl	%cl, %r11d
	movzbl	(%rdi), %ebx
	xorl	%ecx, %ecx
	cmpl	%ebx, %r11d
	je	.LBB28_32
.LBB28_2:                               # %if.then.us.i
	addq	%r10, %r9
	addq	$readSyntaxElement_TotalZerosChromaDC.lentab, %r9
	movzbl	1(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_4
# %bb.3:                                # %lor.lhs.false.us.i.1
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	1(%rdi), %r11d
	movl	$1, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_4:                               # %if.then.us.i.1
	movzbl	2(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_6
# %bb.5:                                # %lor.lhs.false.us.i.2
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	2(%rdi), %r11d
	movl	$2, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_6:                               # %if.then.us.i.2
	movzbl	3(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_8
# %bb.7:                                # %lor.lhs.false.us.i.3
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	3(%rdi), %r11d
	movl	$3, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_8:                               # %if.then.us.i.3
	movzbl	4(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_10
# %bb.9:                                # %lor.lhs.false.us.i.4
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	4(%rdi), %r11d
	movl	$4, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_10:                              # %if.then.us.i.4
	movzbl	5(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_12
# %bb.11:                               # %lor.lhs.false.us.i.5
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	5(%rdi), %r11d
	movl	$5, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_12:                              # %if.then.us.i.5
	movzbl	6(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_14
# %bb.13:                               # %lor.lhs.false.us.i.6
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	6(%rdi), %r11d
	movl	$6, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_14:                              # %if.then.us.i.6
	movzbl	7(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_16
# %bb.15:                               # %lor.lhs.false.us.i.7
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	7(%rdi), %r11d
	movl	$7, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_16:                              # %if.then.us.i.7
	movzbl	8(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_18
# %bb.17:                               # %lor.lhs.false.us.i.8
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	8(%rdi), %r11d
	movl	$8, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_18:                              # %if.then.us.i.8
	movzbl	9(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_20
# %bb.19:                               # %lor.lhs.false.us.i.9
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	9(%rdi), %r11d
	movl	$9, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_20:                              # %if.then.us.i.9
	movzbl	10(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_22
# %bb.21:                               # %lor.lhs.false.us.i.10
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	10(%rdi), %r11d
	movl	$10, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_22:                              # %if.then.us.i.10
	movzbl	11(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_24
# %bb.23:                               # %lor.lhs.false.us.i.11
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	11(%rdi), %r11d
	movl	$11, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_24:                              # %if.then.us.i.11
	movzbl	12(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_26
# %bb.25:                               # %lor.lhs.false.us.i.12
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	12(%rdi), %r11d
	movl	$12, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_26:                              # %if.then.us.i.12
	movzbl	13(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_28
# %bb.27:                               # %lor.lhs.false.us.i.13
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	13(%rdi), %r11d
	movl	$13, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_28:                              # %if.then.us.i.13
	movzbl	14(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_30
# %bb.29:                               # %lor.lhs.false.us.i.14
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	14(%rdi), %r11d
	movl	$14, %ecx
	cmpl	%r11d, %r10d
	je	.LBB28_32
.LBB28_30:                              # %if.then.us.i.14
	movzbl	15(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB28_33
# %bb.31:                               # %lor.lhs.false.us.i.15
	movb	$24, %cl
	subb	%r8b, %cl
	shrl	%cl, %eax
	movzbl	15(%rdi), %edi
	movl	$15, %ecx
	cmpl	%edi, %eax
	jne	.LBB28_33
.LBB28_32:                              # %if.end
	movl	%r8d, 12(%rsi)
	addl	%r8d, 8(%rdx)
	movl	%ecx, 4(%rsi)
	movl	$0, 8(%rsi)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB28_33:                              # %if.then.us.i.15
	.cfi_def_cfa_offset 16
	movl	$.Lstr.8, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end28:
	.size	readSyntaxElement_TotalZerosChromaDC, .Lfunc_end28-readSyntaxElement_TotalZerosChromaDC
	.cfi_endproc
                                        # -- End function
	.globl	readSyntaxElement_Run           # -- Begin function readSyntaxElement_Run
	.p2align	4, 0x90
	.type	readSyntaxElement_Run,@function
readSyntaxElement_Run:                  # @readSyntaxElement_Run
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	4(%rdi), %r9
	shlq	$4, %r9
	movq	16(%rsi), %rax
	movl	8(%rsi), %ecx
	movl	%ecx, %edx
	sarl	$3, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %r8d
	shll	$16, %r8d
	movzbl	1(%rax,%rdx), %r10d
	shll	$8, %r10d
	orl	%r8d, %r10d
	movzbl	2(%rax,%rdx), %eax
	orl	%r10d, %eax
	andb	$7, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	leaq	readSyntaxElement_Run.codtab(%r9), %rdx
	andl	$16777215, %eax                 # imm = 0xFFFFFF
	movzbl	readSyntaxElement_Run.lentab(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_2
# %bb.1:                                # %lor.lhs.false.us.i
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	(%rdx), %r11d
	xorl	%ecx, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_2:                               # %if.then.us.i
	leaq	readSyntaxElement_Run.lentab(%r9), %r9
	movzbl	1(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_4
# %bb.3:                                # %lor.lhs.false.us.i.1
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	1(%rdx), %r11d
	movl	$1, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_4:                               # %if.then.us.i.1
	movzbl	2(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_6
# %bb.5:                                # %lor.lhs.false.us.i.2
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	2(%rdx), %r11d
	movl	$2, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_6:                               # %if.then.us.i.2
	movzbl	3(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_8
# %bb.7:                                # %lor.lhs.false.us.i.3
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	3(%rdx), %r11d
	movl	$3, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_8:                               # %if.then.us.i.3
	movzbl	4(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_10
# %bb.9:                                # %lor.lhs.false.us.i.4
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	4(%rdx), %r11d
	movl	$4, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_10:                              # %if.then.us.i.4
	movzbl	5(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_12
# %bb.11:                               # %lor.lhs.false.us.i.5
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	5(%rdx), %r11d
	movl	$5, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_12:                              # %if.then.us.i.5
	movzbl	6(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_14
# %bb.13:                               # %lor.lhs.false.us.i.6
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	6(%rdx), %r11d
	movl	$6, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_14:                              # %if.then.us.i.6
	movzbl	7(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_16
# %bb.15:                               # %lor.lhs.false.us.i.7
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	7(%rdx), %r11d
	movl	$7, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_16:                              # %if.then.us.i.7
	movzbl	8(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_18
# %bb.17:                               # %lor.lhs.false.us.i.8
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	8(%rdx), %r11d
	movl	$8, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_18:                              # %if.then.us.i.8
	movzbl	9(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_20
# %bb.19:                               # %lor.lhs.false.us.i.9
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	9(%rdx), %r11d
	movl	$9, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_20:                              # %if.then.us.i.9
	movzbl	10(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_22
# %bb.21:                               # %lor.lhs.false.us.i.10
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	10(%rdx), %r11d
	movl	$10, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_22:                              # %if.then.us.i.10
	movzbl	11(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_24
# %bb.23:                               # %lor.lhs.false.us.i.11
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	11(%rdx), %r11d
	movl	$11, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_24:                              # %if.then.us.i.11
	movzbl	12(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_26
# %bb.25:                               # %lor.lhs.false.us.i.12
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	12(%rdx), %r11d
	movl	$12, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_26:                              # %if.then.us.i.12
	movzbl	13(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_28
# %bb.27:                               # %lor.lhs.false.us.i.13
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	13(%rdx), %r11d
	movl	$13, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_28:                              # %if.then.us.i.13
	movzbl	14(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_30
# %bb.29:                               # %lor.lhs.false.us.i.14
	movb	$24, %cl
	subb	%r8b, %cl
	movl	%eax, %r10d
	shrl	%cl, %r10d
	movzbl	14(%rdx), %r11d
	movl	$14, %ecx
	cmpl	%r11d, %r10d
	je	.LBB29_32
.LBB29_30:                              # %if.then.us.i.14
	movzbl	15(%r9), %r8d
	testl	%r8d, %r8d
	je	.LBB29_33
# %bb.31:                               # %lor.lhs.false.us.i.15
	movb	$24, %cl
	subb	%r8b, %cl
	shrl	%cl, %eax
	movzbl	15(%rdx), %edx
	movl	$15, %ecx
	cmpl	%edx, %eax
	jne	.LBB29_33
.LBB29_32:                              # %if.end
	movl	%r8d, 12(%rdi)
	addl	%r8d, 8(%rsi)
	movl	%ecx, 4(%rdi)
	movl	$0, 8(%rdi)
	xorl	%eax, %eax
	retq
.LBB29_33:                              # %if.then.us.i.15
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.Lstr.9, %edi
	callq	puts@PLT
	movl	$-1, %edi
	callq	exit@PLT
.Lfunc_end29:
	.size	readSyntaxElement_Run, .Lfunc_end29-readSyntaxElement_Run
	.cfi_endproc
                                        # -- End function
	.type	NTAB1,@object                   # @NTAB1
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
NTAB1:
	.asciz	"\001"
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2,1
	.ascii	"\001\002"
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\001\004"
	.ascii	"\001\005"
	.zero	2
	.zero	2
	.zero	2
	.zero	2
	.asciz	"\003"
	.ascii	"\002\001"
	.zero	2,2
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\001\b"
	.ascii	"\001\t"
	.asciz	"\004"
	.size	NTAB1, 64

	.type	LEVRUN1,@object                 # @LEVRUN1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
LEVRUN1:
	.asciz	"\004\002\002\001\001\001\001\001\001\001\000\000\000\000\000"
	.size	LEVRUN1, 16

	.type	NTAB3,@object                   # @NTAB3
	.section	.rodata.cst8,"aM",@progbits,8
NTAB3:
	.asciz	"\001"
	.zero	2
	.asciz	"\002"
	.zero	2,1
	.size	NTAB3, 8

	.type	LEVRUN3,@object                 # @LEVRUN3
	.section	.rodata.cst4,"aM",@progbits,4
LEVRUN3:
	.asciz	"\002\001\000"
	.size	LEVRUN3, 4

	.type	readSyntaxElement_NumCoeffTrailingOnes.lentab,@object # @readSyntaxElement_NumCoeffTrailingOnes.lentab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
readSyntaxElement_NumCoeffTrailingOnes.lentab:
	.ascii	"\001\006\b\t\n\013\r\r\r\016\016\017\017\020\020\020\020"
	.ascii	"\000\002\006\b\t\n\013\r\r\016\016\017\017\017\020\020\020"
	.ascii	"\000\000\003\007\b\t\n\013\r\r\016\016\017\017\020\020\020"
	.ascii	"\000\000\000\005\006\007\b\t\n\013\r\016\016\017\017\020\020"
	.ascii	"\002\006\006\007\b\b\t\013\013\f\f\f\r\r\r\016\016"
	.ascii	"\000\002\005\006\006\007\b\t\013\013\f\f\r\r\016\016\016"
	.ascii	"\000\000\003\006\006\007\b\t\013\013\f\f\r\r\r\016\016"
	.ascii	"\000\000\000\004\004\005\006\006\007\t\013\013\f\r\r\r\016"
	.ascii	"\004\006\006\006\007\007\007\007\b\b\t\t\t\n\n\n\n"
	.ascii	"\000\004\005\005\005\005\006\006\007\b\b\t\t\t\n\n\n"
	.ascii	"\000\000\004\005\005\005\006\006\007\007\b\b\t\t\n\n\n"
	.ascii	"\000\000\000\004\004\004\004\004\005\006\007\b\b\t\n\n\n"
	.size	readSyntaxElement_NumCoeffTrailingOnes.lentab, 204

	.type	readSyntaxElement_NumCoeffTrailingOnes.codtab,@object # @readSyntaxElement_NumCoeffTrailingOnes.codtab
	.p2align	4, 0x0
readSyntaxElement_NumCoeffTrailingOnes.codtab:
	.ascii	"\001\005\007\007\007\007\017\013\b\017\013\017\013\017\013\007\004"
	.ascii	"\000\001\004\006\006\006\006\016\n\016\n\016\n\001\016\n\006"
	.ascii	"\000\000\001\005\005\005\005\005\r\t\r\t\r\t\r\t\005"
	.ascii	"\000\000\000\003\003\004\004\004\004\004\f\f\b\f\b\f\b"
	.ascii	"\003\013\007\007\007\004\007\017\013\017\013\b\017\013\007\t\007"
	.ascii	"\000\002\007\n\006\006\006\006\016\n\016\n\016\n\013\b\006"
	.ascii	"\000\000\003\t\005\005\005\005\r\t\r\t\r\t\006\n\005"
	.ascii	"\000\000\000\005\004\006\b\004\004\004\f\b\f\f\b\001\004"
	.ascii	"\017\017\013\b\017\013\t\b\017\013\017\013\b\r\t\005\001"
	.ascii	"\000\016\017\f\n\b\016\n\016\016\n\016\n\007\f\b\004"
	.ascii	"\000\000\r\016\013\t\r\t\r\n\r\t\r\t\013\007\003"
	.ascii	"\000\000\000\f\013\n\t\b\r\f\f\f\b\f\n\006\002"
	.size	readSyntaxElement_NumCoeffTrailingOnes.codtab, 204

	.type	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab,@object # @readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab
	.p2align	4, 0x0
readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab:
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.byte	6                               # 0x6
	.zero	12
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.zero	12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	3                               # 0x3
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.zero	12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.zero	12
	.ascii	"\001\007\007\t\t\n\013\f\r"
	.zero	8
	.ascii	"\000\002\007\007\t\n\013\f\f"
	.zero	8
	.ascii	"\000\000\003\007\007\t\n\013\f"
	.zero	8
	.ascii	"\000\000\000\005\006\007\007\n\013"
	.zero	8
	.ascii	"\001\006\b\t\n\013\r\r\r\016\016\017\017\020\020\020\020"
	.ascii	"\000\002\006\b\t\n\013\r\r\016\016\017\017\017\020\020\020"
	.ascii	"\000\000\003\007\b\t\n\013\r\r\016\016\017\017\020\020\020"
	.ascii	"\000\000\000\005\006\007\b\t\n\013\r\016\016\017\017\020\020"
	.size	readSyntaxElement_NumCoeffTrailingOnesChromaDC.lentab, 204

	.type	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab,@object # @readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab
	.p2align	4, 0x0
readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab:
	.byte	1                               # 0x1
	.byte	7                               # 0x7
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.zero	12
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	6                               # 0x6
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	12
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	5                               # 0x5
	.zero	13
	.ascii	"\001\017\016\007\006\007\007\007\007"
	.zero	8
	.ascii	"\000\001\r\f\005\006\006\006\005"
	.zero	8
	.ascii	"\000\000\001\013\n\004\005\005\004"
	.zero	8
	.ascii	"\000\000\000\001\001\t\b\004\004"
	.zero	8
	.ascii	"\001\005\007\007\007\007\017\013\b\017\013\017\013\017\013\007\004"
	.ascii	"\000\001\004\006\006\006\006\016\n\016\n\016\n\001\016\n\006"
	.ascii	"\000\000\001\005\005\005\005\005\r\t\r\t\r\t\r\t\005"
	.ascii	"\000\000\000\003\003\004\004\004\004\004\f\f\b\f\b\f\b"
	.size	readSyntaxElement_NumCoeffTrailingOnesChromaDC.codtab, 204

	.type	readSyntaxElement_TotalZeros.lentab,@object # @readSyntaxElement_TotalZeros.lentab
	.p2align	4, 0x0
readSyntaxElement_TotalZeros.lentab:
	.ascii	"\001\003\003\004\004\005\005\006\006\007\007\b\b\t\t\t"
	.asciz	"\003\003\003\003\003\004\004\004\004\005\005\006\006\006\006"
	.asciz	"\004\003\003\003\004\004\003\003\004\005\005\006\005\006\000"
	.asciz	"\005\003\004\004\003\003\003\004\003\004\005\005\005\000\000"
	.asciz	"\004\004\004\003\003\003\003\003\004\005\004\005\000\000\000"
	.asciz	"\006\005\003\003\003\003\003\003\004\003\006\000\000\000\000"
	.asciz	"\006\005\003\003\003\002\003\004\003\006\000\000\000\000\000"
	.asciz	"\006\004\005\003\002\002\003\003\006\000\000\000\000\000\000"
	.ascii	"\006\006\004\002\002\003\002\005"
	.zero	8
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.zero	9
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	10
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	11
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	12
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.zero	13
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.size	readSyntaxElement_TotalZeros.lentab, 240

	.type	readSyntaxElement_TotalZeros.codtab,@object # @readSyntaxElement_TotalZeros.codtab
	.p2align	4, 0x0
readSyntaxElement_TotalZeros.codtab:
	.ascii	"\001\003\002\003\002\003\002\003\002\003\002\003\002\003\002\001"
	.asciz	"\007\006\005\004\003\005\004\003\002\003\002\003\002\001\000"
	.asciz	"\005\007\006\005\004\003\004\003\002\003\002\001\001\000\000"
	.asciz	"\003\007\005\004\006\005\004\003\003\002\002\001\000\000\000"
	.asciz	"\005\004\003\007\006\005\004\003\002\001\001\000\000\000\000"
	.asciz	"\001\001\007\006\005\004\003\002\001\001\000\000\000\000\000"
	.asciz	"\001\001\005\004\003\003\002\001\001\000\000\000\000\000\000"
	.ascii	"\001\001\001\003\003\002\002\001"
	.zero	8
	.ascii	"\001\000\001\003\002\001\001\001"
	.zero	8
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	9
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	10
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	11
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	12
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	13
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	14
	.size	readSyntaxElement_TotalZeros.codtab, 240

	.type	readSyntaxElement_TotalZerosChromaDC.lentab,@object # @readSyntaxElement_TotalZerosChromaDC.lentab
	.p2align	4, 0x0
readSyntaxElement_TotalZerosChromaDC.lentab:
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	12
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	13
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.zero	192
	.ascii	"\001\003\003\004\004\004\005\005"
	.zero	8
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	9
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	10
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.zero	11
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	12
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.zero	13
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.zero	128
	.ascii	"\001\003\003\004\004\005\005\006\006\007\007\b\b\t\t\t"
	.asciz	"\003\003\003\003\003\004\004\004\004\005\005\006\006\006\006"
	.asciz	"\004\003\003\003\004\004\003\003\004\005\005\006\005\006\000"
	.asciz	"\005\003\004\004\003\003\003\004\003\004\005\005\005\000\000"
	.asciz	"\004\004\004\003\003\003\003\003\004\005\004\005\000\000\000"
	.asciz	"\006\005\003\003\003\003\003\003\004\003\006\000\000\000\000"
	.asciz	"\006\005\003\003\003\002\003\004\003\006\000\000\000\000\000"
	.asciz	"\006\004\005\003\002\002\003\003\006\000\000\000\000\000\000"
	.ascii	"\006\006\004\002\002\003\002\005"
	.zero	8
	.byte	5                               # 0x5
	.byte	5                               # 0x5
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.zero	9
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	10
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	11
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.zero	12
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.zero	13
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.size	readSyntaxElement_TotalZerosChromaDC.lentab, 720

	.type	readSyntaxElement_TotalZerosChromaDC.codtab,@object # @readSyntaxElement_TotalZerosChromaDC.codtab
	.p2align	4, 0x0
readSyntaxElement_TotalZerosChromaDC.codtab:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	13
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.byte	1                               # 0x1
	.zero	15
	.zero	192
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	9
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.zero	9
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.zero	10
	.byte	6                               # 0x6
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	7                               # 0x7
	.zero	11
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.zero	12
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	13
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	14
	.zero	128
	.ascii	"\001\003\002\003\002\003\002\003\002\003\002\003\002\003\002\001"
	.asciz	"\007\006\005\004\003\005\004\003\002\003\002\003\002\001\000"
	.asciz	"\005\007\006\005\004\003\004\003\002\003\002\001\001\000\000"
	.asciz	"\003\007\005\004\006\005\004\003\003\002\002\001\000\000\000"
	.asciz	"\005\004\003\007\006\005\004\003\002\001\001\000\000\000\000"
	.asciz	"\001\001\007\006\005\004\003\002\001\001\000\000\000\000\000"
	.asciz	"\001\001\005\004\003\003\002\001\001\000\000\000\000\000\000"
	.ascii	"\001\001\001\003\003\002\002\001"
	.zero	8
	.ascii	"\001\000\001\003\002\001\001\001"
	.zero	8
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	9
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.zero	10
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	11
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	12
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	13
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.zero	14
	.size	readSyntaxElement_TotalZerosChromaDC.codtab, 720

	.type	readSyntaxElement_Run.lentab,@object # @readSyntaxElement_Run.lentab
	.p2align	4, 0x0
readSyntaxElement_Run.lentab:
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	13
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.zero	12
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	11
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	10
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.zero	9
	.asciz	"\003\003\003\003\003\003\003\004\005\006\007\b\t\n\013"
	.zero	128
	.size	readSyntaxElement_Run.lentab, 240

	.type	readSyntaxElement_Run.codtab,@object # @readSyntaxElement_Run.codtab
	.p2align	4, 0x0
readSyntaxElement_Run.codtab:
	.byte	1                               # 0x1
	.zero	15
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	14
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.zero	13
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	12
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.zero	11
	.byte	3                               # 0x3
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	5                               # 0x5
	.byte	4                               # 0x4
	.zero	9
	.asciz	"\007\006\005\004\003\002\001\001\001\001\001\001\001\001\001"
	.zero	128
	.size	readSyntaxElement_Run.codtab, 240

	.type	NCBP,@object                    # @NCBP
	.p2align	4, 0x0
NCBP:
	.asciz	"\017"
	.ascii	"\000\001"
	.ascii	"\007\002"
	.ascii	"\013\004"
	.ascii	"\r\b"
	.ascii	"\016\003"
	.ascii	"\003\005"
	.ascii	"\005\n"
	.ascii	"\n\f"
	.ascii	"\f\017"
	.ascii	"\001\007"
	.ascii	"\002\013"
	.ascii	"\004\r"
	.ascii	"\b\016"
	.zero	2,6
	.zero	2,9
	.zero	64
	.asciz	"/"
	.ascii	"\037\020"
	.ascii	"\017\001"
	.ascii	"\000\002"
	.ascii	"\027\004"
	.ascii	"\033\b"
	.ascii	"\035 "
	.ascii	"\036\003"
	.ascii	"\007\005"
	.ascii	"\013\n"
	.ascii	"\r\f"
	.ascii	"\016\017"
	.ascii	"'/"
	.ascii	"+\007"
	.ascii	"-\013"
	.ascii	".\r"
	.ascii	"\020\016"
	.ascii	"\003\006"
	.ascii	"\005\t"
	.ascii	"\n\037"
	.ascii	"\f#"
	.ascii	"\023%"
	.ascii	"\025*"
	.ascii	"\032,"
	.ascii	"\034!"
	.ascii	"#\""
	.ascii	"%$"
	.ascii	"*("
	.ascii	",'"
	.ascii	"\001+"
	.ascii	"\002-"
	.ascii	"\004."
	.ascii	"\b\021"
	.ascii	"\021\022"
	.ascii	"\022\024"
	.ascii	"\024\030"
	.ascii	"\030\023"
	.ascii	"\006\025"
	.ascii	"\t\032"
	.ascii	"\026\034"
	.ascii	"\031\027"
	.ascii	" \033"
	.ascii	"!\035"
	.ascii	"\"\036"
	.ascii	"$\026"
	.ascii	"(\031"
	.zero	2,38
	.zero	2,41
	.size	NCBP, 192

	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"ERROR: failed to find NumCoeff/TrailingOnes"
	.size	.Lstr, 44

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"ERROR: failed to find NumCoeff/TrailingOnes ChromaDC"
	.size	.Lstr.6, 53

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"ERROR: failed to find Total Zeros !cdc"
	.size	.Lstr.7, 39

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"ERROR: failed to find Total Zeros"
	.size	.Lstr.8, 34

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"ERROR: failed to find Run"
	.size	.Lstr.9, 26

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
