	.text
	.file	"decoder_test.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$4024, %rsp                     # imm = 0xFB8
	.cfi_def_cfa_offset 4064
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	leaq	17(%rsp), %rdi
	movl	$4007, %edx                     # imm = 0xFA7
	xorl	%esi, %esi
	callq	memset@PLT
	movabsq	$3762249713818232180, %rax      # imm = 0x3436322E74736574
	movq	%rax, 8(%rsp)
	movb	$0, 16(%rsp)
	movabsq	$7162241143541032308, %rax      # imm = 0x6365645F74736574
	movq	%rax, 263(%rsp)
	movabsq	$33343210581615972, %rax        # imm = 0x7675792E636564
	movq	%rax, 268(%rsp)
	movabsq	$7162256536703821172, %rax      # imm = 0x6365725F74736574
	movq	%rax, 518(%rsp)
	movabsq	$33343210581615986, %rax        # imm = 0x7675792E636572
	movq	%rax, 523(%rsp)
	movabsq	$4294967298, %rax               # imm = 0x100000002
	movq	%rax, 784(%rsp)
	movabsq	$8589934594, %rax               # imm = 0x200000002
	movq	%rax, 3992(%rsp)
	leaq	8(%rsp), %rdi
	movl	%ebp, %esi
	movq	%rbx, %rdx
	callq	ParseCommand@PLT
	movq	stdout@GOTPCREL(%rip), %r15
	movq	(%r15), %rdi
	movl	$.L.str.5, %esi
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
	xorl	%eax, %eax
	callq	fprintf@PLT
	cmpl	$0, 4020(%rsp)
	je	.LBB0_1
# %bb.2:                                # %if.end.i
	cmpl	$0, 792(%rsp)
	je	.LBB0_3
.LBB0_4:                                # %Configure.exit
	leaq	8(%rsp), %rdi
	callq	OpenDecoder@PLT
	testl	%eax, %eax
	jne	.LBB0_22
.LBB0_5:                                # %do.body.preheader
	movl	$1, %ebp
	movq	%rsp, %rbx
	movq	p_Dec@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
.LBB0_6:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	DecodeOneFrame@PLT
	cmpl	$1, %eax
	ja	.LBB0_23
# %bb.7:                                # %if.then5
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%rsp), %rcx
	testq	%rcx, %rcx
	je	.LBB0_12
# %bb.8:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	(%rcx), %edx
	cmpl	$2, 16(%rcx)
	jne	.LBB0_10
# %bb.9:                                # %land.lhs.true1.i
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$3, %edx
	je	.LBB0_11
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_10:                               # %land.lhs.true5.i
                                        #   in Loop: Header=BB0_6 Depth=1
	cmpl	$1, %edx
	jne	.LBB0_12
.LBB0_11:                               # %if.then.i47
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$0, (%rcx)
.LBB0_12:                               # %do.cond
                                        #   in Loop: Header=BB0_6 Depth=1
	testl	%eax, %eax
	jne	.LBB0_14
# %bb.13:                               # %land.rhs
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	(%r14), %rax
	movq	(%rax), %rax
	movl	4008(%rax), %eax
	testl	%eax, %eax
	sete	%cl
	cmpl	%eax, %ebp
	setl	%al
	orb	%cl, %al
	incl	%ebp
	testb	%al, %al
	jne	.LBB0_6
.LBB0_14:                               # %do.end
	movq	%rsp, %rdi
	callq	FinitDecoder@PLT
	movq	(%rsp), %rax
	testq	%rax, %rax
	je	.LBB0_20
# %bb.15:                               # %land.lhs.true.i49
	movl	(%rax), %ecx
	cmpl	$2, 16(%rax)
	jne	.LBB0_17
# %bb.16:                               # %land.lhs.true1.i55
	cmpl	$3, %ecx
	je	.LBB0_18
	jmp	.LBB0_20
.LBB0_1:                                # %if.then.i
	leaq	263(%rsp), %r14
	leaq	518(%rsp), %rbx
	movq	(%r15), %rcx
	movl	$.L.str.8, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rdi
	leaq	8(%rsp), %rdx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r15), %rdi
	movl	$.L.str.10, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r15), %rdi
	movl	$.L.str.11, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movq	(%r15), %rcx
	movl	$.L.str.8, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	cmpl	$0, 792(%rsp)
	jne	.LBB0_4
.LBB0_3:                                # %if.then19.i
	movq	(%r15), %rcx
	movl	$.L.str.12, %edi
	movl	$51, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rcx
	movl	$.L.str.8, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rcx
	movl	$.L.str.13, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	(%r15), %rcx
	movl	$.L.str.8, %edi
	movl	$75, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	leaq	8(%rsp), %rdi
	callq	OpenDecoder@PLT
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_22:                               # %if.then
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str, %esi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	$-1, %ebx
	jmp	.LBB0_21
.LBB0_17:                               # %land.lhs.true5.i52
	cmpl	$1, %ecx
	jne	.LBB0_20
	.p2align	4, 0x90
.LBB0_18:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax)
	movq	72(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_20
# %bb.19:                               # %land.lhs.true141.i
                                        #   in Loop: Header=BB0_18 Depth=1
	cmpl	$0, (%rax)
	jne	.LBB0_18
.LBB0_20:                               # %WriteOneFrame.exit57
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	CloseDecoder@PLT
.LBB0_21:                               # %cleanup
	movl	%ebx, %eax
	addq	$4024, %rsp                     # imm = 0xFB8
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_23:                               # %do.cond.thread
	.cfi_def_cfa_offset 4064
	movq	stderr@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	movl	$.L.str.1, %esi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fprintf@PLT
	jmp	.LBB0_14
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Open encoder failed: 0x%x!\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error in decoding process: 0x%x\n"
	.size	.L.str.1, 33

	.type	cfgparams,@object               # @cfgparams
	.bss
	.globl	cfgparams
	.p2align	3, 0x0
cfgparams:
	.zero	4016
	.size	cfgparams, 4016

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"test.264"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"test_dec.yuv"
	.size	.L.str.3, 13

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"test_rec.yuv"
	.size	.L.str.4, 13

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"----------------------------- JM %s %s -----------------------------\n"
	.size	.L.str.5, 70

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"17.1"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"(FRExt)"
	.size	.L.str.7, 8

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"--------------------------------------------------------------------------\n"
	.size	.L.str.8, 76

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	" Input H.264 bitstream                  : %s \n"
	.size	.L.str.9, 47

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" Output decoded YUV                     : %s \n"
	.size	.L.str.10, 47

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	" Input reference file                   : %s \n"
	.size	.L.str.11, 47

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"POC must = frame# or field# for SNRs to be correct\n"
	.size	.L.str.12, 52

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"  Frame          POC  Pic#   QP    SnrY     SnrU     SnrV   Y:U:V Time(ms)\n"
	.size	.L.str.13, 76

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
