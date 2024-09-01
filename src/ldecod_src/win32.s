	.text
	.file	"win32.c"
	.globl	gettime                         # -- Begin function gettime
	.p2align	4, 0x90
	.type	gettime,@function
gettime:                                # @gettime
	.cfi_startproc
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	gettime, .Lfunc_end0-gettime
	.cfi_endproc
                                        # -- End function
	.globl	timediff                        # -- Begin function timediff
	.p2align	4, 0x90
	.type	timediff,@function
timediff:                               # @timediff
	.cfi_startproc
# %bb.0:                                # %entry
	movl	(%rsi), %eax
	subl	(%rdi), %eax
	movl	8(%rsi), %ecx
	subl	8(%rdi), %ecx
	movslq	%ecx, %rcx
	cltq
	imulq	$1000000, %rax, %rax            # imm = 0xF4240
	addq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	timediff, .Lfunc_end1-timediff
	.cfi_endproc
                                        # -- End function
	.globl	timenorm                        # -- Begin function timenorm
	.p2align	4, 0x90
	.type	timenorm,@function
timenorm:                               # @timenorm
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	movabsq	$2361183241434822607, %rcx      # imm = 0x20C49BA5E353F7CF
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rdx, %rax
	retq
.Lfunc_end2:
	.size	timenorm, .Lfunc_end2-timenorm
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
