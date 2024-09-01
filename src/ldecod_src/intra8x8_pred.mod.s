	.text
	.file	"intra8x8_pred.c"
	.globl	intrapred8x8                    # -- Begin function intrapred8x8
	.p2align	4, 0x90
	.type	intrapred8x8,@function
intrapred8x8:                           # @intrapred8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	32(%rdi), %rax
	movl	%edx, %r8d
	sarl	$2, %r8d
	movslq	%r8d, %r8
	addq	%rax, %r8
	movslq	36(%rdi), %rax
	movl	%ecx, %r9d
	sarl	$2, %r9d
	movslq	%r9d, %r9
	addq	%rax, %r9
	movq	(%rdi), %rax
	movq	13536(%rax), %r10
	movq	(%r10,%r9,8), %r9
	movzbl	(%r9,%r8), %r8d
	movb	%r8b, 372(%rdi)
	cmpl	$0, 128(%rax)
	je	intrapred8x8_normal@PLT         # TAILCALL
# %bb.1:                                # %if.then
	jmp	intrapred8x8_mbaff@PLT          # TAILCALL
.Lfunc_end0:
	.size	intrapred8x8, .Lfunc_end0-intrapred8x8
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
