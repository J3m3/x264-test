	.text
	.file	"rectangle.c"
	.globl	x264_macroblock_cache_mv_4_4    # -- Begin function x264_macroblock_cache_mv_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_4_4,@function
x264_macroblock_cache_mv_4_4:           # @x264_macroblock_cache_mv_4_4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rcx, 72(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rcx, 104(%rdi)
	retq
.Lfunc_end0:
	.size	x264_macroblock_cache_mv_4_4, .Lfunc_end0-x264_macroblock_cache_mv_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_4    # -- Begin function x264_macroblock_cache_mv_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_4,@function
x264_macroblock_cache_mv_2_4:           # @x264_macroblock_cache_mv_2_4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rcx, 96(%rdi)
	retq
.Lfunc_end1:
	.size	x264_macroblock_cache_mv_2_4, .Lfunc_end1-x264_macroblock_cache_mv_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_4_2    # -- Begin function x264_macroblock_cache_mv_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_4_2,@function
x264_macroblock_cache_mv_4_2:           # @x264_macroblock_cache_mv_4_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rcx, 40(%rdi)
	retq
.Lfunc_end2:
	.size	x264_macroblock_cache_mv_4_2, .Lfunc_end2-x264_macroblock_cache_mv_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_2    # -- Begin function x264_macroblock_cache_mv_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_2,@function
x264_macroblock_cache_mv_2_2:           # @x264_macroblock_cache_mv_2_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 32(%rdi)
	retq
.Lfunc_end3:
	.size	x264_macroblock_cache_mv_2_2, .Lfunc_end3-x264_macroblock_cache_mv_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_2_1    # -- Begin function x264_macroblock_cache_mv_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_2_1,@function
x264_macroblock_cache_mv_2_1:           # @x264_macroblock_cache_mv_2_1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	retq
.Lfunc_end4:
	.size	x264_macroblock_cache_mv_2_1, .Lfunc_end4-x264_macroblock_cache_mv_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_1_2    # -- Begin function x264_macroblock_cache_mv_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_1_2,@function
x264_macroblock_cache_mv_1_2:           # @x264_macroblock_cache_mv_1_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	movl	%esi, 32(%rdi)
	retq
.Lfunc_end5:
	.size	x264_macroblock_cache_mv_1_2, .Lfunc_end5-x264_macroblock_cache_mv_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mv_1_1    # -- Begin function x264_macroblock_cache_mv_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mv_1_1,@function
x264_macroblock_cache_mv_1_1:           # @x264_macroblock_cache_mv_1_1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, (%rdi)
	retq
.Lfunc_end6:
	.size	x264_macroblock_cache_mv_1_1, .Lfunc_end6-x264_macroblock_cache_mv_1_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_4_4   # -- Begin function x264_macroblock_cache_mvd_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_4_4,@function
x264_macroblock_cache_mvd_4_4:          # @x264_macroblock_cache_mvd_4_4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rcx, 48(%rdi)
	retq
.Lfunc_end7:
	.size	x264_macroblock_cache_mvd_4_4, .Lfunc_end7-x264_macroblock_cache_mvd_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_4   # -- Begin function x264_macroblock_cache_mvd_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_4,@function
x264_macroblock_cache_mvd_2_4:          # @x264_macroblock_cache_mvd_2_4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movl	%eax, (%rdi)
	movl	%eax, 16(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, 48(%rdi)
	retq
.Lfunc_end8:
	.size	x264_macroblock_cache_mvd_2_4, .Lfunc_end8-x264_macroblock_cache_mvd_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_4_2   # -- Begin function x264_macroblock_cache_mvd_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_4_2,@function
x264_macroblock_cache_mvd_4_2:          # @x264_macroblock_cache_mvd_4_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movq	%rax, %rcx
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, 16(%rdi)
	retq
.Lfunc_end9:
	.size	x264_macroblock_cache_mvd_4_2, .Lfunc_end9-x264_macroblock_cache_mvd_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_2   # -- Begin function x264_macroblock_cache_mvd_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_2,@function
x264_macroblock_cache_mvd_2_2:          # @x264_macroblock_cache_mvd_2_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movl	%eax, (%rdi)
	movl	%eax, 16(%rdi)
	retq
.Lfunc_end10:
	.size	x264_macroblock_cache_mvd_2_2, .Lfunc_end10-x264_macroblock_cache_mvd_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_2_1   # -- Begin function x264_macroblock_cache_mvd_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_2_1,@function
x264_macroblock_cache_mvd_2_1:          # @x264_macroblock_cache_mvd_2_1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$16, %eax
	addl	%esi, %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end11:
	.size	x264_macroblock_cache_mvd_2_1, .Lfunc_end11-x264_macroblock_cache_mvd_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_1_2   # -- Begin function x264_macroblock_cache_mvd_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_1_2,@function
x264_macroblock_cache_mvd_1_2:          # @x264_macroblock_cache_mvd_1_2
	.cfi_startproc
# %bb.0:                                # %entry
	movw	%si, (%rdi)
	movw	%si, 16(%rdi)
	retq
.Lfunc_end12:
	.size	x264_macroblock_cache_mvd_1_2, .Lfunc_end12-x264_macroblock_cache_mvd_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_mvd_1_1   # -- Begin function x264_macroblock_cache_mvd_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_mvd_1_1,@function
x264_macroblock_cache_mvd_1_1:          # @x264_macroblock_cache_mvd_1_1
	.cfi_startproc
# %bb.0:                                # %entry
	movw	%si, (%rdi)
	retq
.Lfunc_end13:
	.size	x264_macroblock_cache_mvd_1_1, .Lfunc_end13-x264_macroblock_cache_mvd_1_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_4_4   # -- Begin function x264_macroblock_cache_ref_4_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_4_4,@function
x264_macroblock_cache_ref_4_4:          # @x264_macroblock_cache_ref_4_4
	.cfi_startproc
# %bb.0:                                # %entry
	imull	$16843009, %esi, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 8(%rdi)
	movl	%eax, 16(%rdi)
	movl	%eax, 24(%rdi)
	retq
.Lfunc_end14:
	.size	x264_macroblock_cache_ref_4_4, .Lfunc_end14-x264_macroblock_cache_ref_4_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_4   # -- Begin function x264_macroblock_cache_ref_2_4
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_4,@function
x264_macroblock_cache_ref_2_4:          # @x264_macroblock_cache_ref_2_4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
	movw	%ax, (%rdi)
	movw	%ax, 8(%rdi)
	movw	%ax, 16(%rdi)
	movw	%ax, 24(%rdi)
	retq
.Lfunc_end15:
	.size	x264_macroblock_cache_ref_2_4, .Lfunc_end15-x264_macroblock_cache_ref_2_4
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_4_2   # -- Begin function x264_macroblock_cache_ref_4_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_4_2,@function
x264_macroblock_cache_ref_4_2:          # @x264_macroblock_cache_ref_4_2
	.cfi_startproc
# %bb.0:                                # %entry
	imull	$16843009, %esi, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 8(%rdi)
	retq
.Lfunc_end16:
	.size	x264_macroblock_cache_ref_4_2, .Lfunc_end16-x264_macroblock_cache_ref_4_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_2   # -- Begin function x264_macroblock_cache_ref_2_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_2,@function
x264_macroblock_cache_ref_2_2:          # @x264_macroblock_cache_ref_2_2
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
	movw	%ax, (%rdi)
	movw	%ax, 8(%rdi)
	retq
.Lfunc_end17:
	.size	x264_macroblock_cache_ref_2_2, .Lfunc_end17-x264_macroblock_cache_ref_2_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_2_1   # -- Begin function x264_macroblock_cache_ref_2_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_2_1,@function
x264_macroblock_cache_ref_2_1:          # @x264_macroblock_cache_ref_2_1
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %eax
	shll	$8, %eax
	addl	%esi, %eax
	movw	%ax, (%rdi)
	retq
.Lfunc_end18:
	.size	x264_macroblock_cache_ref_2_1, .Lfunc_end18-x264_macroblock_cache_ref_2_1
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_1_2   # -- Begin function x264_macroblock_cache_ref_1_2
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_1_2,@function
x264_macroblock_cache_ref_1_2:          # @x264_macroblock_cache_ref_1_2
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end19:
	.size	x264_macroblock_cache_ref_1_2, .Lfunc_end19-x264_macroblock_cache_ref_1_2
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_cache_ref_1_1   # -- Begin function x264_macroblock_cache_ref_1_1
	.p2align	4, 0x90
	.type	x264_macroblock_cache_ref_1_1,@function
x264_macroblock_cache_ref_1_1:          # @x264_macroblock_cache_ref_1_1
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end20:
	.size	x264_macroblock_cache_ref_1_1, .Lfunc_end20-x264_macroblock_cache_ref_1_1
	.cfi_endproc
                                        # -- End function
	.type	x264_cache_mv_func_table,@object # @x264_cache_mv_func_table
	.data
	.globl	x264_cache_mv_func_table
	.p2align	4, 0x0
x264_cache_mv_func_table:
	.quad	x264_macroblock_cache_mv_1_1
	.quad	x264_macroblock_cache_mv_2_1
	.quad	x264_macroblock_cache_mv_1_2
	.quad	x264_macroblock_cache_mv_2_2
	.quad	0
	.quad	x264_macroblock_cache_mv_4_2
	.quad	0
	.quad	x264_macroblock_cache_mv_2_4
	.quad	0
	.quad	x264_macroblock_cache_mv_4_4
	.size	x264_cache_mv_func_table, 80

	.type	x264_cache_mvd_func_table,@object # @x264_cache_mvd_func_table
	.globl	x264_cache_mvd_func_table
	.p2align	4, 0x0
x264_cache_mvd_func_table:
	.quad	x264_macroblock_cache_mvd_1_1
	.quad	x264_macroblock_cache_mvd_2_1
	.quad	x264_macroblock_cache_mvd_1_2
	.quad	x264_macroblock_cache_mvd_2_2
	.quad	0
	.quad	x264_macroblock_cache_mvd_4_2
	.quad	0
	.quad	x264_macroblock_cache_mvd_2_4
	.quad	0
	.quad	x264_macroblock_cache_mvd_4_4
	.size	x264_cache_mvd_func_table, 80

	.type	x264_cache_ref_func_table,@object # @x264_cache_ref_func_table
	.globl	x264_cache_ref_func_table
	.p2align	4, 0x0
x264_cache_ref_func_table:
	.quad	x264_macroblock_cache_ref_1_1
	.quad	x264_macroblock_cache_ref_2_1
	.quad	x264_macroblock_cache_ref_1_2
	.quad	x264_macroblock_cache_ref_2_2
	.quad	0
	.quad	x264_macroblock_cache_ref_4_2
	.quad	0
	.quad	x264_macroblock_cache_ref_2_4
	.quad	0
	.quad	x264_macroblock_cache_ref_4_4
	.size	x264_cache_ref_func_table, 80

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
