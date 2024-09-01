	.text
	.file	"intra4x4_pred.c"
	.globl	intrapred                       # -- Begin function intrapred
	.p2align	4, 0x90
	.type	intrapred,@function
intrapred:                              # @intrapred
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	cmpl	$0, 128(%rax)
	je	intra4x4_pred_normal@PLT        # TAILCALL
# %bb.1:                                # %if.then
	jmp	intra4x4_pred_mbaff@PLT         # TAILCALL
.Lfunc_end0:
	.size	intrapred, .Lfunc_end0-intrapred
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
