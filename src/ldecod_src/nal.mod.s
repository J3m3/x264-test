	.text
	.file	"nal.c"
	.globl	RBSPtoSODB                      # -- Begin function RBSPtoSODB
	.p2align	4, 0x90
	.type	RBSPtoSODB,@function
RBSPtoSODB:                             # @RBSPtoSODB
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
	movl	%esi, %ebx
	movslq	%esi, %rax
	testb	$1, -1(%rdi,%rax)
	jne	.LBB0_7
# %bb.1:                                # %while.body.preheader
	movq	%rdi, %r14
	xorl	%eax, %eax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_2 Depth=1
	decl	%ebx
	xorl	%eax, %eax
.LBB0_6:                                # %if.end7
                                        #   in Loop: Header=BB0_2 Depth=1
	movslq	%ebx, %rcx
	movzbl	-1(%r14,%rcx), %ecx
	btl	%eax, %ecx
	jb	.LBB0_7
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	incl	%eax
	cmpl	$8, %eax
	jne	.LBB0_6
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	testl	%ebx, %ebx
	jne	.LBB0_5
# %bb.4:                                # %if.then6
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$.Lstr, %edi
	callq	puts@PLT
	jmp	.LBB0_5
.LBB0_7:                                # %while.end
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	RBSPtoSODB, .Lfunc_end0-RBSPtoSODB
	.cfi_endproc
                                        # -- End function
	.globl	EBSPtoRBSP                      # -- Begin function EBSPtoRBSP
	.p2align	4, 0x90
	.type	EBSPtoRBSP,@function
EBSPtoRBSP:                             # @EBSPtoRBSP
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $esi killed $esi def $rsi
	cmpl	%edx, %esi
	jge	.LBB1_3
# %bb.1:
	movl	%esi, %eax
	retq
.LBB1_3:                                # %for.cond.preheader
	jle	.LBB1_4
# %bb.5:                                # %for.body.lr.ph
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leal	-1(%rsi), %ecx
	movslq	%edx, %r8
	addq	%rdi, %r8
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	movl	%edx, %r10d
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_14:                               # %if.end31
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	%r10d, %r10
	movzbl	(%rdi,%r10), %eax
	movb	%al, (%r8)
	incl	%r11d
	testb	%al, %al
	cmovnel	%r9d, %r11d
	incl	%r10d
	incl	%edx
	incq	%r8
	movl	%edx, %eax
	cmpl	%esi, %r10d
	jge	.LBB1_15
.LBB1_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, %r11d
	jne	.LBB1_14
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_6 Depth=1
	movslq	%r10d, %rbx
	movl	$-1, %eax
	cmpb	$3, (%rdi,%rbx)
	jb	.LBB1_15
# %bb.8:                                # %land.lhs.true9
                                        #   in Loop: Header=BB1_6 Depth=1
	movl	$2, %r11d
	jne	.LBB1_14
# %bb.9:                                # %if.then15
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	%ecx, %r10d
	jge	.LBB1_11
# %bb.10:                               # %land.lhs.true18
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpb	$3, 1(%rdi,%rbx)
	ja	.LBB1_15
.LBB1_11:                               # %if.end25
                                        #   in Loop: Header=BB1_6 Depth=1
	cmpl	%ecx, %r10d
	je	.LBB1_12
# %bb.13:                               # %if.end30
                                        #   in Loop: Header=BB1_6 Depth=1
	incl	%r10d
	xorl	%r11d, %r11d
	jmp	.LBB1_14
.LBB1_4:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	movl	%edx, %eax
	retq
.LBB1_15:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.LBB1_12:
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	retq
.Lfunc_end1:
	.size	EBSPtoRBSP, .Lfunc_end1-EBSPtoRBSP
	.cfi_endproc
                                        # -- End function
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	" Panic: All zero data sequence in RBSP "
	.size	.Lstr, 40

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
