	.text
	.file	"mdate.c"
	.globl	x264_mdate                      # -- Begin function x264_mdate
	.p2align	4, 0x90
	.type	x264_mdate,@function
x264_mdate:                             # @x264_mdate
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	x264_mdate, .Lfunc_end0-x264_mdate
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
