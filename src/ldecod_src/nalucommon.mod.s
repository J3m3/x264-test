	.text
	.file	"nalucommon.c"
	.globl	AllocNALU                       # -- Begin function AllocNALU
	.p2align	4, 0x90
	.type	AllocNALU,@function
AllocNALU:                              # @AllocNALU
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$1, %edi
	movl	$72, %esi
	callq	calloc@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	$.L.str, %edi
	callq	no_mem_exit@PLT
.LBB0_2:                                # %if.end
	movl	%ebp, 8(%rbx)
	movslq	%ebp, %rdi
	movl	$1, %esi
	callq	calloc@PLT
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	jne	.LBB0_4
# %bb.3:                                # %if.then4
	movq	%rbx, %rdi
	callq	free@PLT
	movl	$.L.str.1, %edi
	callq	no_mem_exit@PLT
.LBB0_4:                                # %if.end5
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	AllocNALU, .Lfunc_end0-AllocNALU
	.cfi_endproc
                                        # -- End function
	.globl	FreeNALU                        # -- Begin function FreeNALU
	.p2align	4, 0x90
	.type	FreeNALU,@function
FreeNALU:                               # @FreeNALU
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:                                # %if.then
	movq	24(%rdi), %rax
	testq	%rax, %rax
	je	free@PLT                        # TAILCALL
# %bb.2:                                # %if.then2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rax, %rdi
	callq	free@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	jmp	free@PLT                        # TAILCALL
.LBB1_3:                                # %if.end5
	retq
.Lfunc_end1:
	.size	FreeNALU, .Lfunc_end1-FreeNALU
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"AllocNALU: n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"AllocNALU: n->buf"
	.size	.L.str.1, 18

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
