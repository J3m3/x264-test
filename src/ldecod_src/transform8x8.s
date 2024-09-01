	.text
	.file	"transform8x8.c"
	.globl	itrans8x8                       # -- Begin function itrans8x8
	.p2align	4, 0x90
	.type	itrans8x8,@function
itrans8x8:                              # @itrans8x8
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
	movl	%edx, %ebx
	movq	%rdi, %r14
	movq	(%rdi), %r13
	movq	1264(%r13), %rax
	movl	%esi, %r12d
	movq	(%rax,%r12,8), %r15
	cmpl	$1, 92(%rdi)
	jne	.LBB0_35
# %bb.1:                                # %if.then
	movslq	%ecx, %rax
	leaq	(%r15,%rax,8), %rcx
	shlq	$3, %rax
	movq	1248(%r13), %rsi
	movq	1256(%r13), %rdx
	movq	(%rdx,%r12,8), %rdx
	addq	%rax, %rdx
	addq	(%rsi,%r12,8), %rax
	movq	8(%r14), %rsi
	movl	849072(%rsi,%r12,4), %esi
	movslq	%ebx, %rdi
	xorl	%r8d, %r8d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_34:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 14(%r10,%rdi,2)
	incq	%r8
	cmpl	$8, %r8d
	je	.LBB0_69
.LBB0_2:                                # %for.end.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	(%r9,%rdi,2), %r9d
	addl	(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_4
# %bb.3:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_4:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_6
# %bb.5:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_6:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, (%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	2(%r9,%rdi,2), %r9d
	addl	4(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_8
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_8:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_10
# %bb.9:                                # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_10:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 2(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	4(%r9,%rdi,2), %r9d
	addl	8(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_12
# %bb.11:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_12:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_14
# %bb.13:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_14:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 4(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	6(%r9,%rdi,2), %r9d
	addl	12(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_16
# %bb.15:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_16:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_18
# %bb.17:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_18:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 6(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	8(%r9,%rdi,2), %r9d
	addl	16(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_20
# %bb.19:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_20:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_22
# %bb.21:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_22:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 8(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	10(%r9,%rdi,2), %r9d
	addl	20(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_24
# %bb.23:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_24:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_26
# %bb.25:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_26:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 10(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	12(%r9,%rdi,2), %r9d
	addl	24(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_28
# %bb.27:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_28:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_30
# %bb.29:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
.LBB0_30:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%r9w, 12(%r10,%rdi,2)
	movq	(%rcx,%r8,8), %r10
	movq	(%rax,%r8,8), %r9
	movzwl	14(%r9,%rdi,2), %r9d
	addl	28(%r10,%rdi,4), %r9d
	testl	%r9d, %r9d
	jg	.LBB0_32
# %bb.31:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	xorl	%r9d, %r9d
.LBB0_32:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_34
# %bb.33:                               # %for.end.i
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	%esi, %r9d
	jmp	.LBB0_34
.LBB0_35:                               # %if.else
	movq	%r15, %rdi
	movq	%r15, %rsi
	movl	%ecx, %edx
	movl	%ecx, %ebp
	movl	%ebx, %ecx
	callq	inverse8x8@PLT
	movslq	%ebp, %rax
	leaq	(%r15,%rax,8), %rcx
	shlq	$3, %rax
	movq	1248(%r13), %rsi
	movq	1256(%r13), %rdx
	movq	(%rdx,%r12,8), %rdx
	addq	%rax, %rdx
	addq	(%rsi,%r12,8), %rax
	movq	8(%r14), %rsi
	movl	849072(%rsi,%r12,4), %esi
	movslq	%ebx, %rdi
	xorl	%r8d, %r8d
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_68:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%r9w, 14(%r10,%rdi,2)
	incq	%r8
	cmpl	$8, %r8d
	je	.LBB0_69
.LBB0_36:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%r8,8), %r9
	movq	(%rax,%r8,8), %r11
	movzwl	(%r11,%rdi,2), %r10d
	movl	(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%r10d, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_38
# %bb.37:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_38:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_40
# %bb.39:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_40:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movq	(%rdx,%r8,8), %r10
	movw	%bx, (%r10,%rdi,2)
	movzwl	2(%r11,%rdi,2), %ebp
	movl	4(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_42
# %bb.41:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_42:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_44
# %bb.43:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_44:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 2(%r10,%rdi,2)
	movzwl	4(%r11,%rdi,2), %ebp
	movl	8(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_46
# %bb.45:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_46:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_48
# %bb.47:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_48:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 4(%r10,%rdi,2)
	movzwl	6(%r11,%rdi,2), %ebp
	movl	12(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_50
# %bb.49:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_50:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_52
# %bb.51:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_52:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 6(%r10,%rdi,2)
	movzwl	8(%r11,%rdi,2), %ebp
	movl	16(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_54
# %bb.53:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_54:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_56
# %bb.55:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_56:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 8(%r10,%rdi,2)
	movzwl	10(%r11,%rdi,2), %ebp
	movl	20(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_58
# %bb.57:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_58:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_60
# %bb.59:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_60:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 10(%r10,%rdi,2)
	movzwl	12(%r11,%rdi,2), %ebp
	movl	24(%r9,%rdi,4), %ebx
	addl	$32, %ebx
	sarl	$6, %ebx
	addl	%ebp, %ebx
	testl	%ebx, %ebx
	jg	.LBB0_62
# %bb.61:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%ebx, %ebx
.LBB0_62:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %ebx
	jl	.LBB0_64
# %bb.63:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %ebx
.LBB0_64:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movw	%bx, 12(%r10,%rdi,2)
	movzwl	14(%r11,%rdi,2), %r11d
	movl	28(%r9,%rdi,4), %r9d
	addl	$32, %r9d
	sarl	$6, %r9d
	addl	%r11d, %r9d
	testl	%r9d, %r9d
	jle	.LBB0_65
# %bb.66:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	cmpl	%esi, %r9d
	jl	.LBB0_68
	jmp	.LBB0_67
	.p2align	4, 0x90
.LBB0_65:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	xorl	%r9d, %r9d
	cmpl	%esi, %r9d
	jl	.LBB0_68
.LBB0_67:                               # %for.body.i
                                        #   in Loop: Header=BB0_36 Depth=1
	movl	%esi, %r9d
	jmp	.LBB0_68
.LBB0_69:                               # %if.end
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
.Lfunc_end0:
	.size	itrans8x8, .Lfunc_end0-itrans8x8
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
