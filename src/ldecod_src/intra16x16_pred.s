	.text
	.file	"intra16x16_pred.c"
	.globl	intrapred16x16                  # -- Begin function intrapred16x16
	.p2align	4, 0x90
	.type	intrapred16x16,@function
intrapred16x16:                         # @intrapred16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	cmpl	$0, 128(%rax)
	je	intrapred_16x16_normal@PLT      # TAILCALL
# %bb.1:                                # %if.then
	jmp	intrapred_16x16_mbaff@PLT       # TAILCALL
.Lfunc_end0:
	.size	intrapred16x16, .Lfunc_end0-intrapred16x16
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
