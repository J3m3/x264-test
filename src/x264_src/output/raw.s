	.text
	.file	"raw.c"
	.p2align	4, 0x90                         # -- Begin function open_file
	.type	open_file,@function
open_file:                              # @open_file
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	cmpb	$45, (%rdi)
	jne	.LBB0_4
# %bb.1:                                # %entry.tail
	cmpb	$0, 1(%rdi)
	je	.LBB0_2
.LBB0_4:                                # %if.else
	movl	$.L.str.1, %esi
	callq	fopen64@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.3:                                # %if.end4
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:
	.cfi_def_cfa_offset 16
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %if.then
	.cfi_def_cfa_offset 16
	movq	stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	open_file, .Lfunc_end0-open_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function set_param
	.type	set_param,@function
set_param:                              # @set_param
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	set_param, .Lfunc_end1-set_param
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function write_headers
	.type	write_headers,@function
write_headers:                          # @write_headers
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movslq	8(%rsi), %rax
	movslq	32(%rsi), %rdx
	addq	%rax, %rdx
	movslq	56(%rsi), %rbx
	addq	%rdx, %rbx
	movq	16(%rsi), %rdi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	fwrite@PLT
	xorl	%ecx, %ecx
	cmpq	$1, %rax
	sbbl	%ecx, %ecx
	orl	%ebx, %ecx
	movl	%ecx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	write_headers, .Lfunc_end2-write_headers
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function write_frame
	.type	write_frame,@function
write_frame:                            # @write_frame
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movslq	%edx, %rbx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	fwrite@PLT
	xorl	%ecx, %ecx
	cmpq	$1, %rax
	sbbl	%ecx, %ecx
	orl	%ecx, %ebx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	write_frame, .Lfunc_end3-write_frame
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function close_file
	.type	close_file,@function
close_file:                             # @close_file
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB4_2
# %bb.1:                                # %entry
	movq	stdout@GOTPCREL(%rip), %rax
	cmpq	%rdi, (%rax)
	jne	fclose@PLT                      # TAILCALL
.LBB4_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	close_file, .Lfunc_end4-close_file
	.cfi_endproc
                                        # -- End function
	.type	raw_output,@object              # @raw_output
	.section	.rodata,"a",@progbits
	.globl	raw_output
	.p2align	3, 0x0
raw_output:
	.quad	open_file
	.quad	set_param
	.quad	write_headers
	.quad	write_frame
	.quad	close_file
	.size	raw_output, 40

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"w+b"
	.size	.L.str.1, 4

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
