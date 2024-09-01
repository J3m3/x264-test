	.text
	.file	"annexb.c"
	.globl	malloc_annex_b                  # -- Begin function malloc_annex_b
	.p2align	4, 0x90
	.type	malloc_annex_b,@function
malloc_annex_b:                         # @malloc_annex_b
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
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$56, %esi
	callq	calloc@PLT
	movq	%rax, %r14
	movq	%rax, 856608(%rbx)
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movups	.L.str+26(%rip), %xmm0
	movq	errortext@GOTPCREL(%rip), %rdi
	movups	%xmm0, 26(%rdi)
	movups	.L.str+16(%rip), %xmm0
	movaps	%xmm0, 16(%rdi)
	movups	.L.str(%rip), %xmm0
	movaps	%xmm0, (%rdi)
	movl	$100, %esi
	callq	error@PLT
	movq	856608(%rbx), %r14
.LBB0_2:                                # %if.end
	movq	856832(%rbx), %rax
	movl	8(%rax), %edi
	callq	malloc@PLT
	movq	%rax, 48(%r14)
	testq	%rax, %rax
	je	.LBB0_4
# %bb.3:                                # %if.end7
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then6
	.cfi_def_cfa_offset 32
	movl	$.L.str.1, %edi
	movl	$101, %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	error@PLT                       # TAILCALL
.Lfunc_end0:
	.size	malloc_annex_b, .Lfunc_end0-malloc_annex_b
	.cfi_endproc
                                        # -- End function
	.globl	init_annex_b                    # -- Begin function init_annex_b
	.p2align	4, 0x90
	.type	init_annex_b,@function
init_annex_b:                           # @init_annex_b
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$-1, (%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rdi)
	movq	$0, 24(%rdi)
	movq	$1, 36(%rdi)
	retq
.Lfunc_end1:
	.size	init_annex_b, .Lfunc_end1-init_annex_b
	.cfi_endproc
                                        # -- End function
	.globl	free_annex_b                    # -- Begin function free_annex_b
	.p2align	4, 0x90
	.type	free_annex_b,@function
free_annex_b:                           # @free_annex_b
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	856608(%rdi), %rax
	movq	48(%rax), %rdi
	callq	free@PLT
	movq	856608(%rbx), %rax
	movq	$0, 48(%rax)
	movq	856608(%rbx), %rdi
	callq	free@PLT
	movq	$0, 856608(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	free_annex_b, .Lfunc_end2-free_annex_b
	.cfi_endproc
                                        # -- End function
	.globl	GetAnnexbNALU                   # -- Begin function GetAnnexbNALU
	.p2align	4, 0x90
	.type	GetAnnexbNALU,@function
GetAnnexbNALU:                          # @GetAnnexbNALU
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
	movq	%rsi, %rbp
	movq	856608(%rdi), %r15
	movq	48(%r15), %r13
	movl	40(%r15), %eax
	testl	%eax, %eax
	je	.LBB3_8
# %bb.1:                                # %for.cond.preheader
	movl	$1, %r12d
	cmpl	$2, %eax
	jl	.LBB3_5
# %bb.2:                                # %for.body.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	$0, (%r13,%rax)
	movl	40(%r15), %ecx
	decl	%ecx
	incq	%rax
	cmpl	%ecx, %eax
	jl	.LBB3_3
# %bb.4:                                # %for.end.loopexit
	leal	1(%rax), %r12d
	addq	%rax, %r13
.LBB3_5:                                # %for.end
	movb	$1, (%r13)
	incq	%r13
	cmpl	$1, 28(%r15)
	jne	.LBB3_15
.LBB3_6:                                # %if.then16
	testl	%r12d, %r12d
	je	.LBB3_22
# %bb.7:                                # %if.else20
	movl	$.Lstr.11, %edi
	jmp	.LBB3_21
.LBB3_8:                                # %while.cond.preheader
	leaq	16(%r15), %rbx
	leaq	8(%r15), %r14
	xorl	%r12d, %r12d
	jmp	.LBB3_10
	.p2align	4, 0x90
.LBB3_9:                                # %if.end3.i
                                        #   in Loop: Header=BB3_10 Depth=1
	movq	(%rcx), %rcx
	decl	%eax
	movl	%eax, 24(%r15)
	leaq	1(%rcx), %rax
	movq	%rax, 16(%r15)
	movzbl	(%rcx), %eax
	movb	%al, (%r13,%r12)
	incq	%r12
	testb	%al, %al
	jne	.LBB3_14
.LBB3_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 28(%r15)
	jne	.LBB3_14
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	24(%r15), %eax
	movq	%rbx, %rcx
	testl	%eax, %eax
	jne	.LBB3_9
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	(%r15), %edi
	movq	8(%r15), %rsi
	movslq	32(%r15), %rdx
	callq	read@PLT
	movq	%r14, %rcx
	testl	%eax, %eax
	jne	.LBB3_9
# %bb.13:                               # %getChunk.exit.thread.i
                                        #   in Loop: Header=BB3_10 Depth=1
	movl	$1, 28(%r15)
	xorl	%eax, %eax
	movb	%al, (%r13,%r12)
	incq	%r12
	testb	%al, %al
	je	.LBB3_10
.LBB3_14:                               # %while.cond.if.end12.loopexit_crit_edge
	addq	%r12, %r13
	cmpl	$1, 28(%r15)
	je	.LBB3_6
.LBB3_15:                               # %if.end22
	cmpb	$1, -1(%r13)
	jne	.LBB3_20
# %bb.16:                               # %if.end22
	cmpl	$2, %r12d
	jle	.LBB3_20
# %bb.17:                               # %if.end30
	xorl	%eax, %eax
	cmpl	$3, %r12d
	setne	%al
	addl	$3, %eax
	movl	%eax, (%rbp)
	cmpl	$0, 36(%r15)
	jne	.LBB3_23
# %bb.18:                               # %if.end30
	cmpl	$5, %r12d
	jb	.LBB3_23
# %bb.19:                               # %if.then41
	movl	$.Lstr.9, %edi
	jmp	.LBB3_21
.LBB3_20:                               # %if.then28
	movl	$.Lstr.10, %edi
.LBB3_21:                               # %cleanup
	callq	puts@PLT
	movl	$-1, %r14d
	jmp	.LBB3_47
.LBB3_22:
	xorl	%r14d, %r14d
	jmp	.LBB3_47
.LBB3_23:                               # %if.end43
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movl	$0, 36(%r15)
	leaq	16(%r15), %rbp
	leaq	8(%r15), %rbx
	addq	$-5, %r13
	movl	%r12d, %eax
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_32:                               # %for.inc.i
                                        #   in Loop: Header=BB3_26 Depth=1
	testb	%cl, %cl
	je	.LBB3_34
.LBB3_24:                               #   in Loop: Header=BB3_26 Depth=1
	xorl	%ecx, %ecx
	incq	%r13
	leal	1(%r14), %eax
	testl	%ecx, %ecx
	jne	.LBB3_41
.LBB3_26:                               # %while.body48
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %r14d
	cmpl	$1, 28(%r15)
	je	.LBB3_39
# %bb.27:                               # %if.end78
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	24(%r15), %eax
	movq	%rbp, %rcx
	testl	%eax, %eax
	jne	.LBB3_29
# %bb.28:                               # %if.then.i228
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	(%r15), %edi
	movq	8(%r15), %rsi
	movslq	32(%r15), %rdx
	callq	read@PLT
	movq	%rbx, %rcx
	testl	%eax, %eax
	je	.LBB3_31
.LBB3_29:                               # %if.end3.i221
                                        #   in Loop: Header=BB3_26 Depth=1
	movq	(%rcx), %rcx
	decl	%eax
	movl	%eax, 24(%r15)
	leaq	1(%rcx), %rax
	movq	%rax, 16(%r15)
	movzbl	(%rcx), %eax
	movb	%al, 5(%r13)
	cmpb	$0, 2(%r13)
	movzbl	3(%r13), %ecx
	je	.LBB3_32
.LBB3_30:                               # %if.then86
                                        #   in Loop: Header=BB3_26 Depth=1
	testb	%cl, %cl
	jne	.LBB3_24
	jmp	.LBB3_36
.LBB3_34:                               # %for.inc.i.1
                                        #   in Loop: Header=BB3_26 Depth=1
	cmpb	$0, 4(%r13)
	jne	.LBB3_36
# %bb.35:                               # %for.inc.i.1
                                        #   in Loop: Header=BB3_26 Depth=1
	cmpb	$1, %al
	je	.LBB3_48
	.p2align	4, 0x90
.LBB3_36:                               # %for.inc.i246
                                        #   in Loop: Header=BB3_26 Depth=1
	cmpb	$0, 4(%r13)
	jne	.LBB3_24
# %bb.38:                               # %for.inc.i246.1
                                        #   in Loop: Header=BB3_26 Depth=1
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sete	%cl
	incq	%r13
	leal	1(%r14), %eax
	testl	%ecx, %ecx
	je	.LBB3_26
	jmp	.LBB3_41
.LBB3_31:                               # %getChunk.exit.thread.i235
                                        #   in Loop: Header=BB3_26 Depth=1
	movl	$1, 28(%r15)
	xorl	%eax, %eax
	movb	%al, 5(%r13)
	cmpb	$0, 2(%r13)
	movzbl	3(%r13), %ecx
	jne	.LBB3_30
	jmp	.LBB3_32
.LBB3_39:                               # %if.then52
	cmpb	$0, 3(%r13)
	je	.LBB3_44
# %bb.40:
	movq	(%rsp), %rbx                    # 8-byte Reload
	jmp	.LBB3_46
.LBB3_41:                               # %if.end114.loopexit1
	incl	%r14d
	movl	$3, %eax
.LBB3_42:                               # %if.end114
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB3_43:                               # %if.end114
	movl	%eax, 40(%r15)
	subl	%eax, %r14d
	movl	%r14d, %eax
	subl	%r12d, %eax
	movl	%eax, 4(%rbx)
	movq	24(%rbx), %rdi
	movl	%r12d, %esi
	addq	48(%r15), %rsi
	movslq	%eax, %rdx
	callq	memcpy@PLT
	movq	24(%rbx), %rax
	movzbl	(%rax), %ecx
	shrl	$7, %ecx
	movl	%ecx, 12(%rbx)
	movzbl	(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movl	%ecx, 20(%rbx)
	movzbl	(%rax), %eax
	andl	$31, %eax
	movl	%eax, 16(%rbx)
	movw	$0, 32(%rbx)
	jmp	.LBB3_47
.LBB3_44:                               # %while.body59.preheader
	addq	$2, %r13
	movq	(%rsp), %rbx                    # 8-byte Reload
	.p2align	4, 0x90
.LBB3_45:                               # %while.body59
                                        # =>This Inner Loop Header: Depth=1
	decl	%r14d
	cmpb	$0, (%r13)
	leaq	-1(%r13), %r13
	je	.LBB3_45
.LBB3_46:                               # %while.end60
	decl	%r14d
	movl	%r14d, %edx
	subl	%r12d, %edx
	movl	%edx, 4(%rbx)
	movq	24(%rbx), %rdi
	movl	%r12d, %esi
	addq	48(%r15), %rsi
	callq	memcpy@PLT
	movq	24(%rbx), %rax
	movzbl	(%rax), %ecx
	shrl	$7, %ecx
	movl	%ecx, 12(%rbx)
	movzbl	(%rax), %ecx
	shrl	$5, %ecx
	andl	$3, %ecx
	movl	%ecx, 20(%rbx)
	movzbl	(%rax), %eax
	andl	$31, %eax
	movl	%eax, 16(%rbx)
	movl	$0, 40(%r15)
.LBB3_47:                               # %cleanup
	movl	%r14d, %eax
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
.LBB3_48:                               # %if.then95
	.cfi_def_cfa_offset 64
	incl	%r14d
	cmpb	$0, 1(%r13)
	movl	$4, %eax
	jne	.LBB3_42
# %bb.49:                               # %while.body102.preheader
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB3_50:                               # %while.body102
                                        # =>This Inner Loop Header: Depth=1
	decl	%r14d
	cmpb	$0, (%r13)
	leaq	-1(%r13), %r13
	je	.LBB3_50
	jmp	.LBB3_43
.Lfunc_end3:
	.size	GetAnnexbNALU, .Lfunc_end3-GetAnnexbNALU
	.cfi_endproc
                                        # -- End function
	.globl	OpenAnnexBFile                  # -- Begin function OpenAnnexBFile
	.p2align	4, 0x90
	.type	OpenAnnexBFile,@function
OpenAnnexBFile:                         # @OpenAnnexBFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	856608(%rdi), %r15
	cmpq	$0, 8(%r15)
	je	.LBB4_2
# %bb.1:                                # %if.then
	movl	$.L.str.6, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB4_2:                                # %if.end
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open@PLT
	movl	%eax, (%r15)
	cmpl	$-1, %eax
	jne	.LBB4_4
# %bb.3:                                # %if.then3
	movq	errortext@GOTPCREL(%rip), %r14
	movl	$300, %esi                      # imm = 0x12C
	movl	$.L.str.7, %edx
	movq	%r14, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	snprintf@PLT
	movq	%r14, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
.LBB4_4:                                # %if.end5
	movl	$524288, 32(%r15)               # imm = 0x80000
	movl	$524288, %ebx                   # imm = 0x80000
	movl	$524288, %edi                   # imm = 0x80000
	callq	malloc@PLT
	movq	%rax, 8(%r15)
	testq	%rax, %rax
	jne	.LBB4_6
# %bb.5:                                # %if.then12
	movl	$.L.str.8, %edi
	movl	$500, %esi                      # imm = 0x1F4
	callq	error@PLT
	movq	8(%r15), %rax
	movslq	32(%r15), %rbx
.LBB4_6:                                # %if.end13
	movl	$0, 28(%r15)
	movl	(%r15), %edi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	read@PLT
	testl	%eax, %eax
	je	.LBB4_7
# %bb.8:                                # %if.end.i
	movl	%eax, 24(%r15)
	movq	8(%r15), %rax
	movq	%rax, 16(%r15)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB4_7:                                # %if.then.i
	.cfi_def_cfa_offset 32
	movl	$1, 28(%r15)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	OpenAnnexBFile, .Lfunc_end4-OpenAnnexBFile
	.cfi_endproc
                                        # -- End function
	.globl	CloseAnnexBFile                 # -- Begin function CloseAnnexBFile
	.p2align	4, 0x90
	.type	CloseAnnexBFile,@function
CloseAnnexBFile:                        # @CloseAnnexBFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	856608(%rdi), %rbx
	movl	(%rbx), %edi
	cmpl	$-1, %edi
	je	.LBB5_2
# %bb.1:                                # %if.then
	callq	close@PLT
	movl	$-1, (%rbx)
.LBB5_2:                                # %if.end
	movq	8(%rbx), %rdi
	callq	free@PLT
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	CloseAnnexBFile, .Lfunc_end5-CloseAnnexBFile
	.cfi_endproc
                                        # -- End function
	.globl	ResetAnnexB                     # -- Begin function ResetAnnexB
	.p2align	4, 0x90
	.type	ResetAnnexB,@function
ResetAnnexB:                            # @ResetAnnexB
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$0, 24(%rdi)
	movq	8(%rdi), %rax
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end6:
	.size	ResetAnnexB, .Lfunc_end6-ResetAnnexB
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Memory allocation for Annex_B file failed"
	.size	.L.str, 42

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"GetAnnexbNALU: Buf"
	.size	.L.str.1, 19

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"OpenAnnexBFile: tried to open Annex B file twice"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Cannot open Annex B ByteStream file '%s'"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"OpenAnnexBFile: cannot allocate IO buffer"
	.size	.L.str.8, 42

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"GetAnnexbNALU: The leading_zero_8bits syntax can only be present in the first byte stream NAL unit, return -1"
	.size	.Lstr.9, 110

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"GetAnnexbNALU: no Start Code at the beginning of the NALU, return -1"
	.size	.Lstr.10, 69

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"GetAnnexbNALU can't read start code"
	.size	.Lstr.11, 36

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
