	.text
	.file	"macroblock.c"
	.globl	x264_mb_encode_i4x4             # -- Begin function x264_mb_encode_i4x4
	.p2align	4, 0x90
	.type	x264_mb_encode_i4x4,@function
x264_mb_encode_i4x4:                    # @x264_mb_encode_i4x4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movslq	%esi, %r14
	movzbl	block_idx_xy_fenc(%r14), %esi
	addq	21344(%rdi), %rsi
	movzwl	block_idx_xy_fdec(%r14,%r14), %r15d
	addq	21392(%rdi), %r15
	cmpl	$0, 25812(%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	%r14, %rax
	shlq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movq	%r15, %rdx
	callq	*33056(%rbx)
	movslq	x264_scan8(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	shrl	$2, %r14d
	movl	%r14d, %ecx
	shll	%cl, %eax
	orl	%eax, 17400(%rbx)
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movl	%edx, %ebp
	movq	%rsp, %rdi
	movq	%r15, %rdx
	callq	*32912(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB0_4
# %bb.3:                                # %if.then.i
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movl	%ebp, %ecx
	movl	$2, %r8d
	movl	$1, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB0_7
.LBB0_6:                                # %if.then32
	shrl	$2, %r12d
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	orl	%eax, 17400(%rbx)
	shlq	$5, %r14
	leaq	(%rbx,%r14), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movq	%rsp, %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	3344(%rbx), %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*33120(%rbx)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*32920(%rbx)
.LBB0_7:                                # %cleanup
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.else.i
	.cfi_def_cfa_offset 80
	movslq	%ebp, %rdx
	shlq	$5, %rdx
	movq	3440(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3488(%rbx), %rdx
	movq	%rsp, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB0_6
	jmp	.LBB0_7
.Lfunc_end0:
	.size	x264_mb_encode_i4x4, .Lfunc_end0-x264_mb_encode_i4x4
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_encode_i8x8             # -- Begin function x264_mb_encode_i8x8
	.p2align	4, 0x90
	.type	x264_mb_encode_i8x8,@function
x264_mb_encode_i8x8:                    # @x264_mb_encode_i8x8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$128, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	leal	(,%r14,8), %eax
	andl	$8, %eax
	leal	(,%r14,4), %r12d
	movl	%r12d, %ecx
	andl	$-8, %ecx
	movl	%ecx, %esi
	shll	$4, %esi
	orl	%eax, %esi
	movslq	%esi, %rsi
	addq	21344(%rdi), %rsi
	shll	$5, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %r15
	addq	21392(%rdi), %r15
	cmpl	$0, 25812(%rdi)
	je	.LBB1_2
# %bb.1:                                # %if.then
	movslq	%r14d, %rax
	shlq	$7, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15088, %rdi                    # imm = 0x3AF0
	movq	%r15, %rdx
	callq	*33048(%rbx)
	movl	%eax, %edx
	shll	$8, %edx
	addl	%eax, %edx
	movslq	%r12d, %rcx
	movslq	x264_scan8(,%rcx,4), %rcx
	movw	%dx, 25072(%rbx,%rcx)
	orl	$2, %r12d
	movslq	%r12d, %rcx
	movslq	x264_scan8(,%rcx,4), %rsi
	movl	%r14d, %ecx
	shll	%cl, %eax
	movw	%dx, 25072(%rbx,%rsi)
	orl	%eax, 17400(%rbx)
	jmp	.LBB1_8
.LBB1_2:                                # %if.end
	movl	%edx, %ebp
	movq	%rsp, %rdi
	movq	%r15, %rdx
	callq	*32984(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB1_4
# %bb.3:                                # %if.then.i
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movl	%ebp, %ecx
	movl	$1, %r8d
	movl	%r14d, %r9d
	callq	x264_quant_8x8_trellis@PLT
	testl	%eax, %eax
	je	.LBB1_7
.LBB1_6:                                # %if.then38
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	orl	%eax, 17400(%rbx)
	movslq	%r14d, %rax
	shlq	$7, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15088, %rdi                    # imm = 0x3AF0
	movq	%rsp, %r14
	movq	%r14, %rsi
	callq	*33032(%rbx)
	movq	3376(%rbx), %rsi
	movq	%r14, %rdi
	movl	%ebp, %edx
	callq	*33112(%rbx)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*32992(%rbx)
	movslq	%r12d, %rax
	movslq	x264_scan8(,%rax,4), %rax
	movw	$257, 25072(%rbx,%rax)          # imm = 0x101
	orl	$2, %r12d
	movslq	%r12d, %rax
	movslq	x264_scan8(,%rax,4), %rax
	movw	$257, 25072(%rbx,%rax)          # imm = 0x101
	jmp	.LBB1_8
.LBB1_4:                                # %if.else.i
	movslq	%ebp, %rdx
	shlq	$7, %rdx
	movq	3472(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3520(%rbx), %rdx
	movq	%rsp, %rdi
	callq	*33080(%rbx)
	testl	%eax, %eax
	jne	.LBB1_6
.LBB1_7:                                # %if.else
	movslq	%r12d, %rax
	movslq	x264_scan8(,%rax,4), %rax
	movw	$0, 25072(%rbx,%rax)
	orl	$2, %r12d
	movslq	%r12d, %rax
	movslq	x264_scan8(,%rax,4), %rax
	movw	$0, 25072(%rbx,%rax)
.LBB1_8:                                # %cleanup
	addq	$128, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	x264_mb_encode_i8x8, .Lfunc_end1-x264_mb_encode_i8x8
	.cfi_endproc
                                        # -- End function
	.globl	x264_mb_encode_8x8_chroma       # -- Begin function x264_mb_encode_8x8_chroma
	.p2align	4, 0x90
	.type	x264_mb_encode_8x8_chroma,@function
x264_mb_encode_8x8_chroma:              # @x264_mb_encode_8x8_chroma
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
	subq	$264, %rsp                      # imm = 0x108
	.cfi_def_cfa_offset 320
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	testl	%esi, %esi
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	leaq	17404(%rdi), %rax
	je	.LBB2_9
# %bb.1:                                # %land.end
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	cmpl	$0, 16424(%rbx)
	movl	$0, 17404(%rbx)
	je	.LBB2_10
# %bb.2:                                # %land.lhs.true
	cmpl	$0, 16416(%rbx)
	movl	$18, %eax
	movl	$12, %ecx
	cmovel	%eax, %ecx
	movb	$1, %dl
	cmpl	%r12d, %ecx
	jg	.LBB2_12
# %bb.3:                                # %if.then
	movl	%r12d, %r12d
	movq	x264_lambda2_tab@GOTPCREL(%rip), %rax
	movl	(%rax,%r12,4), %r13d
	addl	$32, %r13d
	sarl	$6, %r13d
	movq	21352(%rbx), %rdi
	movq	21400(%rbx), %rdx
	leaq	128(%rsp), %r8
	movl	$16, %esi
	movl	$32, %ecx
	callq	*32152(%rbx)
	movl	%eax, %r14d
	leal	(,%r13,4), %ebp
	cmpl	%ebp, %eax
	jge	.LBB2_5
# %bb.4:                                # %if.then13
	movq	21360(%rbx), %rdi
	movq	21408(%rbx), %rdx
	leaq	132(%rsp), %r8
	movl	$16, %esi
	movl	$32, %ecx
	callq	*32152(%rbx)
	addl	%eax, %r14d
.LBB2_5:                                # %if.end
	cmpl	%ebp, %r14d
	jge	.LBB2_11
# %bb.6:                                # %if.then29
	movw	$0, 25081(%rbx)
	movw	$0, 25089(%rbx)
	movw	$0, 25105(%rbx)
	movw	$0, 25113(%rbx)
	movw	$0, 25118(%rbx)
	movq	64(%rsp), %rax                  # 8-byte Reload
	leal	2(%rax), %r15d
	movslq	%r15d, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	$2863311531, %r14d              # imm = 0xAAAAAAAB
	imulq	%r12, %r14
	shrq	$34, %r14
	leal	(%r14,%r14), %eax
	leal	(%rax,%rax,2), %eax
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %ebp
	subl	%eax, %ebp
	cmpl	%r13d, 128(%rsp)
	jle	.LBB2_58
# %bb.7:                                # %if.then77
	movq	21352(%rbx), %rsi
	movq	21400(%rbx), %rdx
	leaq	16(%rsp), %rdi
	callq	*32936(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB2_54
# %bb.8:                                # %if.then93
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	$3, %r8d
	xorl	%r9d, %r9d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_dc_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB2_55
.LBB2_9:                                # %land.end.thread
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	$0, 17404(%rbx)
.LBB2_10:
	xorl	%edx, %edx
.LBB2_12:                               # %if.end152
	movl	%edx, 60(%rsp)                  # 4-byte Spill
	xorl	%ecx, %ecx
	movq	64(%rsp), %rax                  # 8-byte Reload
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, 56(%rsp)                  # 4-byte Spill
	leaq	15600(%rbx), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	leaq	15072(%rbx), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	addl	$2, %eax
	movl	%eax, 52(%rsp)                  # 4-byte Spill
	cltq
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movslq	%r12d, %rax
	movl	%edx, %ecx
	xorb	$1, %cl
	movb	%cl, 31(%rsp)                   # 1-byte Spill
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	imulq	$715827883, %rax, %rcx          # imm = 0x2AAAAAAB
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$32, %rcx
	addl	%eax, %ecx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	leal	(%rax,%rax,2), %eax
	movl	%r12d, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movb	$1, %al
	xorl	%ebp, %ebp
	leaq	128(%rsp), %r14
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_13:                               # %for.cond174.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	(,%rbp,4), %r14
	leaq	16(,%rbp,4), %rdi
	shlq	$5, %rdi
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rdi
	movq	%rax, %r13
	movq	120(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rbp,8), %rcx
	movq	%rsi, %r12
	movq	%rdx, %r15
	callq	*33064(%rbx)
	movslq	x264_scan8+64(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	orl	%eax, 17404(%rbx)
	leaq	17(,%rbp,4), %rdi
	shlq	$5, %rdi
	addq	%r13, %rdi
	leaq	4(%r12), %rsi
	leaq	4(%r15), %rdx
	movq	120(%rsp), %r13                 # 8-byte Reload
	leaq	2(,%rbp,8), %rcx
	addq	%r13, %rcx
	callq	*33064(%rbx)
	movslq	x264_scan8+68(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	orl	%eax, 17404(%rbx)
	leaq	18(,%rbp,4), %rdi
	shlq	$5, %rdi
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	leaq	64(%r12), %rsi
	leaq	128(%r15), %rdx
	leaq	4(,%rbp,8), %rcx
	addq	%r13, %rcx
	callq	*33064(%rbx)
	movslq	x264_scan8+72(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	orl	%eax, 17404(%rbx)
	leaq	19(,%rbp,4), %rdi
	shlq	$5, %rdi
	addq	32(%rsp), %rdi                  # 8-byte Folded Reload
	addq	$68, %r12
	addq	$132, %r15
	leaq	6(,%rbp,8), %rcx
	addq	%r13, %rcx
	movq	%r12, %rsi
	movl	12(%rsp), %r12d                 # 4-byte Reload
	movq	%r15, %rdx
	callq	*33064(%rbx)
	movslq	x264_scan8+76(,%r14,4), %rcx
	leaq	128(%rsp), %r14
	movb	%al, 25072(%rbx,%rcx)
	orl	%eax, 17404(%rbx)
	cmpq	$0, 15072(%rbx,%rbp,8)
	setne	25118(%rbx,%rbp)
.LBB2_14:                               # %cleanup466
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	$1, %ebp
	testb	$1, 84(%rsp)                    # 1-byte Folded Reload
	movl	$0, %eax
	je	.LBB2_52
.LBB2_15:                               # %for.body158
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, 84(%rsp)                  # 4-byte Spill
	movq	21352(%rbx,%rbp,8), %rsi
	movq	21400(%rbx,%rbp,8), %rdx
	cmpl	$0, 25812(%rbx)
	jne	.LBB2_13
# %bb.16:                               # %if.end245
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%r14, %rdi
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	callq	*32928(%rbx)
	movzwl	128(%rsp), %eax
	movzwl	160(%rsp), %ecx
	leal	(%rcx,%rax), %edx
	movzwl	192(%rsp), %esi
	movzwl	224(%rsp), %edi
	leal	(%rdi,%rsi), %r8d
	subl	%ecx, %eax
	subl	%edi, %esi
	leal	(%r8,%rdx), %ecx
	movw	%cx, 16(%rsp)
	leal	(%rsi,%rax), %ecx
	movw	%cx, 20(%rsp)
	subl	%r8d, %edx
	movw	%dx, 18(%rsp)
	subl	%esi, %eax
	movw	%ax, 22(%rsp)
	movw	$0, 128(%rsp)
	movw	$0, 160(%rsp)
	movw	$0, 192(%rsp)
	movw	$0, 224(%rsp)
	cmpl	$0, 16416(%rbx)
	je	.LBB2_18
# %bb.17:                               # %if.then259
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	$4, %r8d
	movl	56(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB2_19
.LBB2_18:                               # %if.else268
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	72(%rsp), %rdx                  # 8-byte Reload
	shlq	$5, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3440(%rbx,%rax,8), %rsi
	addq	%rdx, %rsi
	addq	3488(%rbx,%rax,8), %rdx
	movq	%r14, %rdi
	callq	*33088(%rbx)
.LBB2_19:                               # %if.end288
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	(,%rbp,4), %r15
	movslq	x264_scan8+64(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	xorl	%r13d, %r13d
	testl	%eax, %eax
	je	.LBB2_22
# %bb.20:                               # %if.then301
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	%r12d, %r13d
	movq	%r15, %r12
	orq	$16, %r12
	shlq	$5, %r12
	addq	32(%rsp), %r12                  # 8-byte Folded Reload
	movq	%r12, %rdi
	leaq	128(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rsi
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, %r14d
	cmpb	$0, 60(%rsp)                    # 1-byte Folded Reload
	je	.LBB2_24
# %bb.21:                               # %if.then323
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%r12, %rdi
	callq	*33144(%rbx)
	movl	%eax, %r13d
	movl	12(%rsp), %r12d                 # 4-byte Reload
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_23
.LBB2_25:                               # %if.else268.1
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	72(%rsp), %rdx                  # 8-byte Reload
	shlq	$5, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3440(%rbx,%rax,8), %rsi
	addq	%rdx, %rsi
	addq	3488(%rbx,%rax,8), %rdx
	leaq	160(%rsp), %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+68(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB2_26
	.p2align	4, 0x90
.LBB2_28:                               # %for.inc337.1
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpl	$0, 16416(%rbx)
	je	.LBB2_31
.LBB2_29:                               # %if.then259.2
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	leaq	192(%rsp), %rsi
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	$4, %r8d
	movl	56(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+72(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB2_32
.LBB2_34:                               # %for.inc337.2
                                        #   in Loop: Header=BB2_15 Depth=1
	cmpl	$0, 16416(%rbx)
	je	.LBB2_39
.LBB2_35:                               # %if.then259.3
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	leaq	224(%rsp), %rsi
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	$4, %r8d
	movl	56(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+76(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB2_40
.LBB2_36:                               # %if.then301.3
                                        #   in Loop: Header=BB2_15 Depth=1
	orq	$19, %r15
	shlq	$5, %r15
	addq	32(%rsp), %r15                  # 8-byte Folded Reload
	movq	%r15, %rdi
	leaq	224(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rsi
	movq	%r14, %rdi
	movl	%r12d, %edx
	callq	*33120(%rbx)
	cmpb	$0, 60(%rsp)                    # 1-byte Folded Reload
	je	.LBB2_42
# %bb.37:                               # %if.then323.3
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	$1, 24(%rsp)                    # 4-byte Folded Spill
	movq	%r15, %rdi
	callq	*33144(%rbx)
	addl	%eax, %r13d
	cmpl	$0, 16416(%rbx)
	leaq	128(%rsp), %r14
	leaq	16(%rsp), %rsi
	jne	.LBB2_41
.LBB2_43:                               # %if.else351
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	shlq	$5, %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	3440(%rbx,%rdx,8), %rcx
	movq	3488(%rbx,%rdx,8), %rdx
	movq	%rsi, %rdi
	movzwl	(%rcx,%rax), %esi
	shrl	%esi
	movzwl	(%rdx,%rax), %edx
	addl	%edx, %edx
	callq	*33104(%rbx)
	jmp	.LBB2_44
.LBB2_22:                               #   in Loop: Header=BB2_15 Depth=1
	xorl	%r14d, %r14d
	cmpl	$0, 16416(%rbx)
	je	.LBB2_25
.LBB2_23:                               # %if.then259.1
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	leaq	160(%rsp), %rsi
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	$4, %r8d
	movl	56(%rsp), %r9d                  # 4-byte Reload
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+68(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB2_28
.LBB2_26:                               # %if.then301.1
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	%r13d, 24(%rsp)                 # 4-byte Spill
	movl	%r12d, %r13d
	movq	%r15, %r12
	orq	$17, %r12
	shlq	$5, %r12
	addq	32(%rsp), %r12                  # 8-byte Folded Reload
	movq	%r12, %rdi
	leaq	160(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rsi
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, %r14d
	cmpb	$0, 60(%rsp)                    # 1-byte Folded Reload
	je	.LBB2_30
# %bb.27:                               # %if.then323.1
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%r12, %rdi
	callq	*33144(%rbx)
	movl	24(%rsp), %r13d                 # 4-byte Reload
	addl	%eax, %r13d
	movl	12(%rsp), %r12d                 # 4-byte Reload
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_29
	jmp	.LBB2_31
.LBB2_24:                               #   in Loop: Header=BB2_15 Depth=1
	movl	12(%rsp), %r12d                 # 4-byte Reload
	xorl	%r13d, %r13d
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_23
	jmp	.LBB2_25
.LBB2_42:                               #   in Loop: Header=BB2_15 Depth=1
	movl	$1, 24(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 16416(%rbx)
	leaq	128(%rsp), %r14
	leaq	16(%rsp), %rsi
	jne	.LBB2_41
	jmp	.LBB2_43
.LBB2_30:                               #   in Loop: Header=BB2_15 Depth=1
	movl	12(%rsp), %r12d                 # 4-byte Reload
	movl	24(%rsp), %r13d                 # 4-byte Reload
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_29
.LBB2_31:                               # %if.else268.2
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	72(%rsp), %rdx                  # 8-byte Reload
	shlq	$5, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3440(%rbx,%rax,8), %rsi
	addq	%rdx, %rsi
	addq	3488(%rbx,%rax,8), %rdx
	leaq	192(%rsp), %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+72(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_32:                               # %if.then301.2
                                        #   in Loop: Header=BB2_15 Depth=1
	movl	%r13d, 24(%rsp)                 # 4-byte Spill
	movl	%r12d, %r13d
	movq	%r15, %r12
	orq	$18, %r12
	shlq	$5, %r12
	addq	32(%rsp), %r12                  # 8-byte Folded Reload
	movq	%r12, %rdi
	leaq	192(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rsi
	movq	%r14, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, %r14d
	cmpb	$0, 60(%rsp)                    # 1-byte Folded Reload
	je	.LBB2_38
# %bb.33:                               # %if.then323.2
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%r12, %rdi
	callq	*33144(%rbx)
	movl	24(%rsp), %r13d                 # 4-byte Reload
	addl	%eax, %r13d
	movl	12(%rsp), %r12d                 # 4-byte Reload
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_35
	jmp	.LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_15 Depth=1
	movl	12(%rsp), %r12d                 # 4-byte Reload
	movl	24(%rsp), %r13d                 # 4-byte Reload
	cmpl	$0, 16416(%rbx)
	jne	.LBB2_35
.LBB2_39:                               # %if.else268.3
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	72(%rsp), %rdx                  # 8-byte Reload
	shlq	$5, %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3440(%rbx,%rax,8), %rsi
	addq	%rdx, %rsi
	addq	3488(%rbx,%rax,8), %rdx
	leaq	224(%rsp), %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+76(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB2_36
.LBB2_40:                               #   in Loop: Header=BB2_15 Depth=1
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	cmpl	$0, 16416(%rbx)
	leaq	128(%rsp), %r14
	leaq	16(%rsp), %rsi
	je	.LBB2_43
.LBB2_41:                               # %if.then344
                                        #   in Loop: Header=BB2_15 Depth=1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%rbx, %rdi
	movl	60(%rsp), %edx                  # 4-byte Reload
	movl	%r12d, %ecx
	movl	$3, %r8d
	movl	64(%rsp), %r9d                  # 4-byte Reload
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_dc_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB2_44:                               # %if.end374
                                        #   in Loop: Header=BB2_15 Depth=1
	movb	%al, 25118(%rbx,%rbp)
	cmpl	$7, %r13d
	setge	%cl
	orb	31(%rsp), %cl                   # 1-byte Folded Reload
	testb	%cl, 24(%rsp)                   # 1-byte Folded Reload
	je	.LBB2_48
# %bb.45:                               # %if.else445
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movl	$1, (%rcx)
	testl	%eax, %eax
	je	.LBB2_47
# %bb.46:                               # %if.then449
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	16(%rsp), %rcx
	movq	%rcx, %xmm0
	pshuflw	$216, %xmm0, %xmm0              # xmm0 = xmm0[0,2,1,3,4,5,6,7]
	movq	%xmm0, 15072(%rbx,%rbp,8)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rdi
	movswl	%cx, %eax
	movl	%ecx, %r8d
	sarl	$16, %r8d
	leal	(%r8,%rax), %esi
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movswl	%dx, %edx
	shrq	$48, %rcx
	movswl	%cx, %ecx
	leal	(%rcx,%rdx), %r9d
	subl	%r8d, %eax
	subl	%ecx, %edx
	movq	88(%rsp), %rcx                  # 8-byte Reload
	shlq	$6, %rcx
	movl	(%rdi,%rcx), %edi
	movq	96(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %edi
	leal	(%r9,%rsi), %ecx
	imull	%edi, %ecx
	shrl	$5, %ecx
	movw	%cx, 128(%rsp)
	subl	%r9d, %esi
	imull	%edi, %esi
	shrl	$5, %esi
	movw	%si, 160(%rsp)
	leal	(%rdx,%rax), %ecx
	imull	%edi, %ecx
	shrl	$5, %ecx
	movw	%cx, 192(%rsp)
	subl	%edx, %eax
	imull	%edi, %eax
	shrl	$5, %eax
	movw	%ax, 224(%rsp)
.LBB2_47:                               # %if.end462
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	%r14, %rsi
	callq	*32944(%rbx)
	jmp	.LBB2_14
.LBB2_48:                               # %if.then387
                                        #   in Loop: Header=BB2_15 Depth=1
	leaq	(,%rbp,2), %rcx
	addq	%rbp, %rcx
	movw	$0, 25081(%rbx,%rcx,8)
	movw	$0, 25089(%rbx,%rcx,8)
	testl	%eax, %eax
	je	.LBB2_14
# %bb.49:                               # %if.end418
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r12d, %edx
	leaq	16(%rsp), %r15
	movq	%r15, %rcx
	callq	x264_mb_optimize_chroma_dc
	testl	%eax, %eax
	je	.LBB2_51
# %bb.50:                               # %if.end429
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	pshuflw	$216, %xmm0, %xmm1              # xmm1 = xmm0[0,2,1,3,4,5,6,7]
	movq	%xmm1, 15072(%rbx,%rbp,8)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	shlq	$6, %rcx
	movl	(%rax,%rcx), %eax
	movq	96(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$177, %xmm0, %xmm1              # xmm1 = xmm0[1,0,3,2]
	movdqa	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	psubd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	shufps	$114, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[3,1]
	movdqa	%xmm2, %xmm3
	shufps	$216, %xmm1, %xmm3              # xmm3 = xmm3[0,2],xmm1[1,3]
	paddd	%xmm0, %xmm3
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm2, %xmm4
	shufps	$250, %xmm1, %xmm4              # xmm4 = xmm4[2,2],xmm1[3,3]
	shufps	$80, %xmm1, %xmm2               # xmm2 = xmm2[0,0],xmm1[1,1]
	psubd	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	psrld	$5, %xmm0
	pshuflw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 16(%rsp)
	movq	112(%rsp), %rdi                 # 8-byte Reload
	movq	%r15, %rsi
	callq	*32952(%rbx)
	jmp	.LBB2_14
.LBB2_51:                               # %if.then422
                                        #   in Loop: Header=BB2_15 Depth=1
	orq	$46, %rbp
	movb	$0, 25072(%rbx,%rbp)
	jmp	.LBB2_14
.LBB2_52:                               # %for.cond.cleanup157
	xorl	%eax, %eax
	cmpw	$0, 25118(%rbx)
	setne	%al
	movl	17404(%rbx), %ecx
	orl	%ecx, %eax
	addl	%ecx, %eax
	movl	%eax, 17404(%rbx)
.LBB2_53:                               # %cleanup495
	addq	$264, %rsp                      # imm = 0x108
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
.LBB2_11:                               # %if.end152.critedge
	.cfi_def_cfa_offset 320
	movl	12(%rsp), %r12d                 # 4-byte Reload
	movb	$1, %dl
	jmp	.LBB2_12
.LBB2_54:                               # %if.else
	movq	%r12, %rax
	shlq	$5, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	3440(%rbx,%rdx,8), %rcx
	movq	3488(%rbx,%rdx,8), %rdx
	movzwl	(%rcx,%rax), %esi
	shrl	%esi
	movzwl	(%rdx,%rax), %edx
	addl	%edx, %edx
	leaq	16(%rsp), %rdi
	callq	*33104(%rbx)
.LBB2_55:                               # %if.end114
	testl	%eax, %eax
	je	.LBB2_58
# %bb.56:                               # %if.then116
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	x264_mb_optimize_chroma_dc
	testl	%eax, %eax
	je	.LBB2_58
# %bb.57:                               # %if.end121
	movb	$1, 25118(%rbx)
	movq	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	pshuflw	$216, %xmm0, %xmm1              # xmm1 = xmm0[0,2,1,3,4,5,6,7]
	movq	%xmm1, 15072(%rbx)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rax
	movq	%rbp, %rcx
	shlq	$6, %rcx
	movl	(%rax,%rcx), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$177, %xmm0, %xmm1              # xmm1 = xmm0[1,0,3,2]
	movdqa	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	psubd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	shufps	$114, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[3,1]
	movdqa	%xmm2, %xmm3
	shufps	$216, %xmm1, %xmm3              # xmm3 = xmm3[0,2],xmm1[1,3]
	paddd	%xmm0, %xmm3
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm2, %xmm4
	shufps	$250, %xmm1, %xmm4              # xmm4 = xmm4[2,2],xmm1[3,3]
	shufps	$80, %xmm1, %xmm2               # xmm2 = xmm2[0,0],xmm1[1,1]
	psubd	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	psrld	$5, %xmm0
	pshuflw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 16(%rsp)
	movq	21400(%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	*32952(%rbx)
	movl	$1, 17404(%rbx)
.LBB2_58:                               # %for.inc
	cmpl	%r13d, 132(%rsp)
	jle	.LBB2_53
# %bb.59:                               # %if.then77.1
	movq	21360(%rbx), %rsi
	movq	21408(%rbx), %rdx
	leaq	16(%rsp), %rdi
	callq	*32936(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB2_61
# %bb.60:                               # %if.then93.1
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	24(%rsp), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	$3, %r8d
	xorl	%r9d, %r9d
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_dc_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB2_62
.LBB2_61:                               # %if.else.1
	shlq	$5, %r12
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	3440(%rbx,%rcx,8), %rax
	movq	3488(%rbx,%rcx,8), %rcx
	movzwl	(%rax,%r12), %esi
	shrl	%esi
	movzwl	(%rcx,%r12), %edx
	addl	%edx, %edx
	leaq	16(%rsp), %rdi
	callq	*33104(%rbx)
.LBB2_62:                               # %if.end114.1
	testl	%eax, %eax
	je	.LBB2_53
# %bb.63:                               # %if.then116.1
	leaq	16(%rsp), %rcx
	movq	%rbx, %rdi
	movq	64(%rsp), %rsi                  # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movl	12(%rsp), %edx                  # 4-byte Reload
	callq	x264_mb_optimize_chroma_dc
	testl	%eax, %eax
	je	.LBB2_53
# %bb.64:                               # %if.end121.1
	movb	$1, 25119(%rbx)
	movq	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	pshuflw	$216, %xmm0, %xmm1              # xmm1 = xmm0[0,2,1,3,4,5,6,7]
	movq	%xmm1, 15080(%rbx)
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	3344(%rbx,%rax,8), %rax
	shlq	$6, %rbp
	movl	(%rax,%rbp), %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	pshufd	$177, %xmm0, %xmm1              # xmm1 = xmm0[1,0,3,2]
	movdqa	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	psubd	%xmm0, %xmm1
	movdqa	%xmm2, %xmm0
	shufps	$114, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[3,1]
	movdqa	%xmm2, %xmm3
	shufps	$216, %xmm1, %xmm3              # xmm3 = xmm3[0,2],xmm1[1,3]
	paddd	%xmm0, %xmm3
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm2, %xmm4
	shufps	$250, %xmm1, %xmm4              # xmm4 = xmm4[2,2],xmm1[3,3]
	shufps	$80, %xmm1, %xmm2               # xmm2 = xmm2[0,0],xmm1[1,1]
	psubd	%xmm4, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	psrld	$5, %xmm0
	pshuflw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 16(%rsp)
	movq	21408(%rbx), %rdi
	leaq	16(%rsp), %rsi
	callq	*32952(%rbx)
	movl	$1, 17404(%rbx)
	jmp	.LBB2_53
.Lfunc_end2:
	.size	x264_mb_encode_8x8_chroma, .Lfunc_end2-x264_mb_encode_8x8_chroma
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_mb_optimize_chroma_dc
	.type	x264_mb_optimize_chroma_dc,@function
x264_mb_optimize_chroma_dc:             # @x264_mb_optimize_chroma_dc
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movslq	%esi, %rax
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	3360(%rdi,%rax,8), %rax
	movslq	%edx, %rsi
	imulq	$715827883, %rsi, %rcx          # imm = 0x2AAAAAAB
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$32, %rcx
	addl	%edx, %ecx
	leal	(%rcx,%rcx), %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %esi
	movslq	%esi, %rdx
	shlq	$6, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movl	(%rax,%rdx), %eax
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %eax
	movl	$1, 4(%rsp)                     # 4-byte Folded Spill
	cmpl	$2048, %eax                     # imm = 0x800
	jg	.LBB3_9
# %bb.1:                                # %if.end
	movswl	(%rbx), %r12d
	movswl	2(%rbx), %ecx
	leal	(%rcx,%r12), %ebp
	movswl	4(%rbx), %edx
	movswl	6(%rbx), %esi
	leal	(%rsi,%rdx), %edi
	subl	%ecx, %r12d
	subl	%esi, %edx
	leal	(%rdi,%rbp), %r14d
	imull	%eax, %r14d
	shrl	$5, %r14d
	subl	%edi, %ebp
	imull	%eax, %ebp
	shrl	$5, %ebp
	leal	(%rdx,%r12), %r15d
	imull	%eax, %r15d
	shrl	$5, %r15d
	subl	%edx, %r12d
	imull	%eax, %r12d
	shrl	$5, %r12d
	addl	$32, %r14d
	addl	$32, %ebp
	addl	$32, %r15d
	addl	$32, %r12d
	movl	%r14d, %eax
	orl	%ebp, %eax
	movl	%r15d, %ecx
	orl	%r12d, %ecx
	orl	%eax, %ecx
	movl	$0, 4(%rsp)                     # 4-byte Folded Spill
	cmpw	$64, %cx
	jb	.LBB3_9
# %bb.2:                                # %if.end34
	movq	%rbx, %rdi
	movq	24(%rsp), %rax                  # 8-byte Reload
	callq	*33192(%rax)
	movl	$0, 4(%rsp)                     # 4-byte Folded Spill
	testl	%eax, %eax
	js	.LBB3_9
# %bb.3:                                # %for.body.lr.ph
	movl	%eax, %ecx
	addq	$2, 16(%rsp)                    # 8-byte Folded Spill
	movswl	%r14w, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	movswl	%bp, %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movswl	%r15w, %edi
	movswl	%r12w, %r8d
	movl	%ecx, %r9d
	movl	$0, 4(%rsp)                     # 4-byte Folded Spill
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_7:                                # %if.then54
                                        #   in Loop: Header=BB3_4 Depth=1
	addl	32(%rsp), %r10d                 # 4-byte Folded Reload
	subl	%r11d, %r10d
	movw	%r10w, (%rbx,%r9,2)
	movl	$1, 4(%rsp)                     # 4-byte Folded Spill
.LBB3_8:                                # %while.end
                                        #   in Loop: Header=BB3_4 Depth=1
	leaq	-1(%r9), %rax
	testq	%r9, %r9
	movq	%rax, %r9
	jle	.LBB3_9
.LBB3_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movswl	(%rbx,%r9,2), %eax
	movl	%eax, %r10d
	sarl	$31, %r10d
	orl	$1, %r10d
	leal	(%r10,%rax), %ebp
	movq	%rax, 32(%rsp)                  # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	subl	%r10d, %eax
	negl	%ebp
	movswl	%r10w, %r12d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_5:                                # %while.cond
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	%r10d, %r11d
	movl	%ebp, %ecx
	addl	%r11d, %ecx
	je	.LBB3_8
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB3_5 Depth=2
	movw	%ax, (%rbx,%r9,2)
	movswl	(%rbx), %r15d
	movswl	2(%rbx), %ecx
	leal	(%rcx,%r15), %r14d
	movswl	4(%rbx), %r13d
	movswl	6(%rbx), %edx
	subl	%ecx, %r15d
	leal	(%rdx,%r13), %ecx
	subl	%edx, %r13d
	leal	(%rcx,%r14), %esi
	subl	%ecx, %r14d
	leal	(%r15,%r13), %edx
	subl	%r13d, %r15d
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	3344(%rcx,%r13,8), %rcx
	movq	40(%rsp), %r13                  # 8-byte Reload
	movl	(%rcx,%r13), %r13d
	movq	48(%rsp), %rcx                  # 8-byte Reload
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %r13d
	shll	$11, %r13d
	imull	%r13d, %esi
	sarl	$16, %esi
	addl	$32, %esi
	xorl	12(%rsp), %esi                  # 4-byte Folded Reload
	imull	%r13d, %r14d
	sarl	$16, %r14d
	addl	$32, %r14d
	xorl	8(%rsp), %r14d                  # 4-byte Folded Reload
	orl	%esi, %r14d
	imull	%r13d, %edx
	imull	%r15d, %r13d
	sarl	$16, %edx
	addl	$32, %edx
	xorl	%edi, %edx
	sarl	$16, %r13d
	addl	$32, %r13d
	xorl	%r8d, %r13d
	orl	%edx, %r13d
	orl	%r14d, %r13d
	subl	%r12d, %eax
                                        # kill: def $ax killed $ax killed $eax def $eax
	cmpl	$64, %r13d
	jb	.LBB3_5
	jmp	.LBB3_7
.LBB3_9:                                # %cleanup
	movl	4(%rsp), %eax                   # 4-byte Reload
	addq	$56, %rsp
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
.Lfunc_end3:
	.size	x264_mb_optimize_chroma_dc, .Lfunc_end3-x264_mb_optimize_chroma_dc
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_lossless_8x8_chroma # -- Begin function x264_predict_lossless_8x8_chroma
	.p2align	4, 0x90
	.type	x264_predict_lossless_8x8_chroma,@function
x264_predict_lossless_8x8_chroma:       # @x264_predict_lossless_8x8_chroma
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
	movq	14680(%rdi), %rax
	movl	108(%rax), %ebx
	movzbl	16436(%rdi), %ecx
	shll	%cl, %ebx
	cmpl	$1, %esi
	je	.LBB4_3
# %bb.1:                                # %entry
	cmpl	$2, %esi
	jne	.LBB4_5
# %bb.2:                                # %if.then
	movq	21376(%rdi), %rdx
	movq	%rdi, %r15
	movq	21400(%rdi), %rdi
	movslq	%ebx, %r14
	subq	%r14, %rdx
	movl	$32, %esi
	movl	%ebx, %ecx
	movl	$8, %r8d
	callq	*32744(%r15)
	movq	32744(%r15), %rax
	movq	21384(%r15), %rdx
	movq	21408(%r15), %rdi
	subq	%r14, %rdx
	jmp	.LBB4_4
.LBB4_3:                                # %if.then22
	movq	21376(%rdi), %rdx
	movq	%rdi, %r14
	movq	21400(%rdi), %rdi
	decq	%rdx
	movl	$32, %esi
	movl	%ebx, %ecx
	movl	$8, %r8d
	callq	*32744(%r14)
	movq	32744(%r14), %rax
	movq	21384(%r14), %rdx
	movq	21408(%r14), %rdi
	decq	%rdx
.LBB4_4:                                # %if.then22
	movl	$32, %esi
	movl	%ebx, %ecx
	movl	$8, %r8d
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*%rax                           # TAILCALL
.LBB4_5:                                # %if.else47
	.cfi_def_cfa_offset 32
	movslq	%esi, %rbx
	movq	%rdi, %rax
	movq	21400(%rdi), %rdi
	movq	%rax, %r14
	callq	*31304(%rax,%rbx,8)
	movq	%r14, %rcx
	movq	21408(%r14), %rdi
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*31304(%rcx,%rax,8)             # TAILCALL
.Lfunc_end4:
	.size	x264_predict_lossless_8x8_chroma, .Lfunc_end4-x264_predict_lossless_8x8_chroma
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_lossless_4x4       # -- Begin function x264_predict_lossless_4x4
	.p2align	4, 0x90
	.type	x264_predict_lossless_4x4,@function
x264_predict_lossless_4x4:              # @x264_predict_lossless_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r8d
	movq	%rdi, %r9
	movq	14680(%rdi), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rdi), %ecx
	shll	%cl, %eax
	movq	%rsi, %rdi
	movslq	%edx, %rcx
	movzbl	block_idx_x(%rcx), %esi
	shlq	$2, %rsi
	addq	21368(%r9), %rsi
	movzbl	block_idx_y(%rcx), %ecx
	imull	%eax, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	addq	%rsi, %rdx
	cmpl	$1, %r8d
	je	.LBB5_3
# %bb.1:                                # %entry
	testl	%r8d, %r8d
	jne	.LBB5_5
# %bb.2:                                # %if.then
	movq	32768(%r9), %r9
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$4, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB5_3:                                # %if.then17
	movq	32768(%r9), %r9
	decq	%rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$4, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB5_5:                                # %if.else22
	movslq	%r8d, %rax
	jmpq	*31456(%r9,%rax,8)              # TAILCALL
.Lfunc_end5:
	.size	x264_predict_lossless_4x4, .Lfunc_end5-x264_predict_lossless_4x4
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_lossless_8x8       # -- Begin function x264_predict_lossless_8x8
	.p2align	4, 0x90
	.type	x264_predict_lossless_8x8,@function
x264_predict_lossless_8x8:              # @x264_predict_lossless_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%ecx, %r9d
	movq	%rdi, %r10
	movq	14680(%rdi), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rdi), %ecx
	shll	%cl, %eax
	movq	%rsi, %rdi
	movl	%edx, %ecx
	andl	$1, %ecx
	shlq	$3, %rcx
	addq	21368(%r10), %rcx
	shll	$2, %edx
	andl	$-8, %edx
	imull	%eax, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	cmpl	$1, %r9d
	je	.LBB6_3
# %bb.1:                                # %entry
	testl	%r9d, %r9d
	jne	.LBB6_5
# %bb.2:                                # %if.then
	movq	32744(%r10), %r9
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$8, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB6_3:                                # %if.then11
	movq	32744(%r10), %r9
	decq	%rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$8, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB6_5:                                # %if.else16
	movslq	%r9d, %rax
	movq	31360(%r10,%rax,8), %rax
	movq	%r8, %rsi
	jmpq	*%rax                           # TAILCALL
.Lfunc_end6:
	.size	x264_predict_lossless_8x8, .Lfunc_end6-x264_predict_lossless_8x8
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_lossless_16x16     # -- Begin function x264_predict_lossless_16x16
	.p2align	4, 0x90
	.type	x264_predict_lossless_16x16,@function
x264_predict_lossless_16x16:            # @x264_predict_lossless_16x16
	.cfi_startproc
# %bb.0:                                # %entry
	movq	14680(%rdi), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rdi), %ecx
	shll	%cl, %eax
	cmpl	$1, %esi
	je	.LBB7_3
# %bb.1:                                # %entry
	testl	%esi, %esi
	jne	.LBB7_5
# %bb.2:                                # %if.then
	movq	32720(%rdi), %r9
	movq	21368(%rdi), %rdx
	movq	21392(%rdi), %rdi
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$16, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB7_3:                                # %if.then8
	movq	32776(%rdi), %r9
	movq	21368(%rdi), %rdx
	movq	21392(%rdi), %rdi
	decq	%rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$16, %r8d
	jmpq	*%r9                            # TAILCALL
.LBB7_5:                                # %if.else19
	movslq	%esi, %rcx
	movq	21392(%rdi), %rax
	movq	%rdi, %rdx
	movq	%rax, %rdi
	jmpq	*31248(%rdx,%rcx,8)             # TAILCALL
.Lfunc_end7:
	.size	x264_predict_lossless_16x16, .Lfunc_end7-x264_predict_lossless_16x16
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_encode          # -- Begin function x264_macroblock_encode
	.p2align	4, 0x90
	.type	x264_macroblock_encode,@function
x264_macroblock_encode:                 # @x264_macroblock_encode
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
	subq	$648, %rsp                      # imm = 0x288
	.cfi_def_cfa_offset 704
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	25792(%rdi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movl	16424(%rdi), %eax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	$0, 17400(%rdi)
	movb	$0, 25116(%rdi)
	movl	17384(%rdi), %eax
	cmpl	$3, %eax
	jne	.LBB8_1
# %bb.226:                              # %if.then
	movq	21344(%rbx), %rdx
	movq	21392(%rbx), %rdi
	movl	$32, %esi
	movl	$16, %ecx
	movl	$16, %r8d
	callq	*32720(%rbx)
	movq	21352(%rbx), %rdx
	movq	21400(%rbx), %rdi
	movl	$32, %esi
	movl	$16, %ecx
	movl	$8, %r8d
	callq	*32744(%rbx)
	movq	32744(%rbx), %rax
	movq	21360(%rbx), %rdx
	movq	21408(%rbx), %rdi
	movl	$32, %esi
	movl	$16, %ecx
	movl	$8, %r8d
	addq	$648, %rsp                      # imm = 0x288
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
	jmpq	*%rax                           # TAILCALL
.LBB8_1:                                # %if.end
	.cfi_def_cfa_offset 704
	movb	$1, %sil
	cmpl	$0, 7268(%rbx)
	je	.LBB8_9
# %bb.2:                                # %land.lhs.true
	movslq	7252(%rbx), %rcx
	movl	16372(%rbx), %edx
	addl	%ecx, %edx
	cmpl	%edx, 16392(%rbx)
	jne	.LBB8_9
# %bb.3:                                # %land.lhs.true38
	movq	16616(%rbx), %rdx
	movzbl	(%rdx,%rcx), %ecx
	cmpl	$18, %ecx
	je	.LBB8_5
# %bb.4:                                # %land.lhs.true38
	cmpl	$6, %ecx
	jne	.LBB8_9
.LBB8_5:                                # %if.then55
	cmpl	$6, %eax
	je	.LBB8_6
# %bb.7:                                # %if.then55
	cmpl	$18, %eax
	jne	.LBB8_8
# %bb.83:                               # %if.then77
	movl	$7, %eax
	jmp	.LBB8_84
.LBB8_6:
	movl	$4, %eax
.LBB8_84:                               # %if.else356.sink.split
	movl	%eax, 17384(%rbx)
	xorl	%esi, %esi
	jmp	.LBB8_85
.LBB8_8:
	xorl	%esi, %esi
.LBB8_9:                                # %if.end83
	cmpl	$18, %eax
	ja	.LBB8_85
# %bb.10:                               # %if.end83
	movl	%eax, %eax
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_67:                               # %if.then234
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movl	$0, 17396(%rbx)
	cmpl	$0, 17416(%rbx)
	je	.LBB8_71
# %bb.68:                               # %if.then240
	movq	21392(%rbx), %rdi
	leaq	18688(%rbx), %rdx
	movl	$32, %esi
	movl	$16, %ecx
	movl	$16, %r8d
	callq	*32720(%rbx)
	movl	20064(%rbx), %eax
	movl	%eax, 25084(%rbx)
	movl	20068(%rbx), %eax
	movl	%eax, 25092(%rbx)
	movl	20072(%rbx), %eax
	movl	%eax, 25100(%rbx)
	movl	20076(%rbx), %eax
	movl	%eax, 25108(%rbx)
	movl	20096(%rbx), %eax
	movl	%eax, 17400(%rbx)
	movl	17416(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB8_70
# %bb.69:                               # %if.then294
	leaq	15600(%rbx), %rdi
	leaq	19584(%rbx), %rsi
	movl	$480, %edx                      # imm = 0x1E0
	callq	*32816(%rbx)
	movl	17416(%rbx), %eax
.LBB8_70:                               # %if.end304
	movl	$15, %r14d
	testl	%eax, %eax
	jne	.LBB8_72
.LBB8_71:                               # %if.end304.thread
	xorl	%r14d, %r14d
.LBB8_72:
	movl	$16, %r15d
	subq	%r14, %r15
	leaq	(%rbx,%r14,4), %rax
	addq	$16508, %rax                    # imm = 0x407C
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r13d, %r13d
	leal	(%r14,%r14), %ebp
	leal	(,%r14,4), %r12d
	jmp	.LBB8_73
	.p2align	4, 0x90
.LBB8_81:                               # %if.else349
                                        #   in Loop: Header=BB8_73 Depth=1
	callq	*31456(%rbx,%rsi,8)
.LBB8_82:                               # %if.end352
                                        #   in Loop: Header=BB8_73 Depth=1
	leal	(%r14,%r13), %esi
	movq	%rbx, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	x264_mb_encode_i4x4
	incq	%r13
	cmpq	%r13, %r15
	je	.LBB8_204
.LBB8_73:                               # %for.body314
                                        # =>This Inner Loop Header: Depth=1
	movzwl	block_idx_xy_fdec(%rbp,%r13,2), %edi
	addq	21392(%rbx), %rdi
	movslq	x264_scan8(%r12,%r13,4), %rax
	movsbq	25024(%rbx,%rax), %rsi
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	(%rax,%r13,4), %eax
	andl	$6, %eax
	cmpl	$2, %eax
	jne	.LBB8_75
# %bb.74:                               # %if.then339
                                        #   in Loop: Header=BB8_73 Depth=1
	movzbl	-29(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, -28(%rdi)
.LBB8_75:                               # %if.end344
                                        #   in Loop: Header=BB8_73 Depth=1
	cmpl	$0, 25812(%rbx)
	je	.LBB8_81
# %bb.76:                               # %if.then348
                                        #   in Loop: Header=BB8_73 Depth=1
	movq	14680(%rbx), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rbx), %ecx
	shll	%cl, %eax
	movzbl	block_idx_x(%r14,%r13), %ecx
	shlq	$2, %rcx
	addq	21368(%rbx), %rcx
	movzbl	block_idx_y(%r14,%r13), %edx
	imull	%eax, %edx
	shll	$2, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	cmpb	$1, %sil
	je	.LBB8_79
# %bb.77:                               # %if.then348
                                        #   in Loop: Header=BB8_73 Depth=1
	movzbl	%sil, %ecx
	testl	%ecx, %ecx
	jne	.LBB8_81
# %bb.78:                               # %if.then.i1413
                                        #   in Loop: Header=BB8_73 Depth=1
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	jmp	.LBB8_80
	.p2align	4, 0x90
.LBB8_79:                               # %if.then17.i
                                        #   in Loop: Header=BB8_73 Depth=1
	decq	%rdx
.LBB8_80:                               # %if.end352
                                        #   in Loop: Header=BB8_73 Depth=1
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$4, %r8d
	callq	*32768(%rbx)
	jmp	.LBB8_82
.LBB8_85:                               # %if.else356
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	cmpl	$0, 17420(%rbx)
	je	.LBB8_86
# %bb.87:                               # %if.end361
	cmpl	$0, 25812(%rbx)
	movl	17396(%rbx), %eax
	je	.LBB8_93
.LBB8_88:                               # %if.then365
	testl	%eax, %eax
	je	.LBB8_90
# %bb.89:                               # %for.cond370.preheader
	leaq	15088(%rbx), %rdi
	movq	21344(%rbx), %rsi
	movq	21392(%rbx), %rdx
	callq	*33048(%rbx)
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	%eax, %ecx
	movw	%cx, 25084(%rbx)
	movw	%cx, 25092(%rbx)
	orl	%eax, 17400(%rbx)
	leaq	15216(%rbx), %rdi
	movq	21344(%rbx), %rsi
	movq	21392(%rbx), %rdx
	addq	$8, %rsi
	addq	$8, %rdx
	callq	*33048(%rbx)
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	%eax, %ecx
	movw	%cx, 25086(%rbx)
	movw	%cx, 25094(%rbx)
	addl	%eax, %eax
	orl	%eax, 17400(%rbx)
	leaq	15344(%rbx), %rdi
	movq	21344(%rbx), %rsi
	subq	$-128, %rsi
	movl	$256, %edx                      # imm = 0x100
	addq	21392(%rbx), %rdx
	callq	*33048(%rbx)
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	%eax, %ecx
	movw	%cx, 25100(%rbx)
	movw	%cx, 25108(%rbx)
	shll	$2, %eax
	orl	%eax, 17400(%rbx)
	movl	$136, %esi
	addq	21344(%rbx), %rsi
	leaq	15472(%rbx), %rdi
	movl	$264, %edx                      # imm = 0x108
	addq	21392(%rbx), %rdx
	callq	*33048(%rbx)
	movl	%eax, %ecx
	shll	$8, %ecx
	addl	%eax, %ecx
	movw	%cx, 25102(%rbx)
	movw	%cx, 25110(%rbx)
	shll	$3, %eax
	orl	%eax, 17400(%rbx)
	jmp	.LBB8_204
.LBB8_22:                               # %if.then104
	movslq	17408(%rbx), %rdx
	movl	$0, 17396(%rbx)
	cmpl	$0, 25812(%rbx)
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	je	.LBB8_27
# %bb.23:                               # %if.then109
	movq	14680(%rbx), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rbx), %ecx
	shll	%cl, %eax
	cmpl	$1, %edx
	je	.LBB8_26
# %bb.24:                               # %if.then109
	testl	%edx, %edx
	jne	.LBB8_27
# %bb.25:                               # %if.then.i1375
	movq	21368(%rbx), %rdx
	movq	21392(%rbx), %rdi
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$16, %r8d
	callq	*32720(%rbx)
	movq	21344(%rbx), %r12
	movq	21392(%rbx), %r13
	cmpl	$0, 25812(%rbx)
	jne	.LBB8_29
	jmp	.LBB8_32
.LBB8_52:                               # %if.then123
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movl	$1, 17396(%rbx)
	cmpl	$0, 17416(%rbx)
	je	.LBB8_56
# %bb.53:                               # %if.then128
	movq	21392(%rbx), %rdi
	leaq	18944(%rbx), %rdx
	movl	$32, %esi
	movl	$16, %ecx
	movl	$16, %r8d
	callq	*32720(%rbx)
	movl	20080(%rbx), %eax
	movl	%eax, 25084(%rbx)
	movl	20084(%rbx), %eax
	movl	%eax, 25092(%rbx)
	movl	20088(%rbx), %eax
	movl	%eax, 25100(%rbx)
	movl	20092(%rbx), %eax
	movl	%eax, 25108(%rbx)
	movl	20100(%rbx), %eax
	movl	%eax, 17400(%rbx)
	movl	17416(%rbx), %eax
	cmpl	$2, %eax
	jne	.LBB8_55
# %bb.54:                               # %if.then181
	leaq	15088(%rbx), %rdi
	leaq	19200(%rbx), %rsi
	movl	$384, %edx                      # imm = 0x180
	callq	*32816(%rbx)
	movl	17416(%rbx), %eax
.LBB8_55:                               # %if.end188
	movl	$3, %r14d
	testl	%eax, %eax
	jne	.LBB8_57
.LBB8_56:                               # %if.end188.thread
	xorl	%r14d, %r14d
.LBB8_57:
	leal	(,%r14,4), %eax
	leaq	-16(%rax), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	addq	%rbx, %rax
	addq	$16492, %rax                    # imm = 0x406C
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movl	%r14d, %eax
	shll	$4, %eax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movl	%r14d, %ecx
	shll	$7, %ecx
	leal	(,%r14,8), %r15d
	xorl	%r12d, %r12d
	leaq	128(%rsp), %rsi
	jmp	.LBB8_58
	.p2align	4, 0x90
.LBB8_65:                               # %if.else224
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	%r13, %rdi
	leaq	128(%rsp), %rsi
	callq	*31360(%rbx,%r14,8)
.LBB8_66:                               # %if.end228
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	%rbx, %rdi
	movq	8(%rsp), %r14                   # 8-byte Reload
	movl	%r14d, %esi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	x264_mb_encode_i8x8
	addq	$4, %r12
	incl	%r14d
	movl	24(%rsp), %ecx                  # 4-byte Reload
	subl	$-128, %ecx
	addl	$8, %r15d
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	%r12, %rax
	leaq	128(%rsp), %rsi
	je	.LBB8_204
.LBB8_58:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movl	%r15d, %ebp
	andl	$8, %ebp
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%ecx, %r13d
	andl	$256, %r13d                     # imm = 0x100
	orl	%ebp, %r13d
	addq	21392(%rbx), %r13
	movq	48(%rsp), %rax                  # 8-byte Reload
	movslq	x264_scan8(%rax,%r12,4), %rax
	movsbq	25024(%rbx,%rax), %r14
	movq	56(%rsp), %rax                  # 8-byte Reload
	movl	(%rax,%r12), %edx
	movzbl	x264_pred_i4x4_neighbors(%r14), %ecx
	movq	%r13, %rdi
	callq	*31552(%rbx)
	cmpl	$0, 25812(%rbx)
	je	.LBB8_65
# %bb.59:                               # %if.then222
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	14680(%rbx), %rax
	movl	104(%rax), %eax
	movzbl	16436(%rbx), %ecx
	shll	%cl, %eax
	movl	%ebp, %ecx
	movq	%rbx, %r9
	addq	21368(%rbx), %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addl	%r12d, %edx
	andl	$8, %edx
	imull	%eax, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	cmpb	$1, %r14b
	je	.LBB8_62
# %bb.60:                               # %if.then222
                                        #   in Loop: Header=BB8_58 Depth=1
	movzbl	%r14b, %ecx
	testl	%ecx, %ecx
	jne	.LBB8_64
# %bb.61:                               # %if.then.i1399
                                        #   in Loop: Header=BB8_58 Depth=1
	movslq	%eax, %rcx
	subq	%rcx, %rdx
	jmp	.LBB8_63
	.p2align	4, 0x90
.LBB8_62:                               # %if.then11.i
                                        #   in Loop: Header=BB8_58 Depth=1
	decq	%rdx
.LBB8_63:                               # %if.end228
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	%r13, %rdi
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$8, %r8d
	movq	%r9, %rbx
	callq	*32744(%r9)
	jmp	.LBB8_66
	.p2align	4, 0x90
.LBB8_64:                               # %if.else16.i
                                        #   in Loop: Header=BB8_58 Depth=1
	movq	%r13, %rdi
	leaq	128(%rsp), %rsi
	movq	%r9, %rbx
	callq	*31360(%r9,%r14,8)
	jmp	.LBB8_66
.LBB8_11:                               # %if.then88
	cmpl	$0, 17420(%rbx)
	jne	.LBB8_19
# %bb.12:                               # %if.then.i
	movd	25248(%rbx), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	16440(%rbx), %xmm1              # xmm1 = mem[0],zero
	movq	16448(%rbx), %xmm2              # xmm2 = mem[0],zero
	pshuflw	$96, %xmm0, %xmm0               # xmm0 = xmm0[0,0,2,1,4,5,6,7]
	psrad	$16, %xmm0
	movdqa	%xmm1, %xmm3
	pcmpgtd	%xmm0, %xmm3
	movdqa	%xmm2, %xmm4
	pcmpgtd	%xmm0, %xmm4
	pand	%xmm4, %xmm0
	pandn	%xmm2, %xmm4
	por	%xmm0, %xmm4
	pand	%xmm3, %xmm1
	pandn	%xmm4, %xmm3
	por	%xmm1, %xmm3
	movq	%rbx, %r15
	movq	%xmm3, %rbx
	movq	21392(%r15), %rdi
	leaq	21424(%r15), %rdx
	movl	25008(%r15), %ecx
	leaq	7584(%r15), %rax
	movd	%xmm3, %ebp
	pshufd	$85, %xmm3, %xmm0               # xmm0 = xmm3[1,1,1,1]
	movd	%xmm0, %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	*32616(%r15)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movq	21400(%r15), %rdi
	movq	21456(%r15), %rdx
	movl	25012(%r15), %ecx
	movl	$32, %esi
	testq	%rbx, %rbx
	je	.LBB8_14
# %bb.13:                               # %if.then35.i
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	21408(%r15), %rdi
	movq	21464(%r15), %rdx
	movl	25016(%r15), %ecx
	movl	$32, %esi
	movl	%ebp, %r8d
	movl	%r14d, %r9d
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	*32632(%r15)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB8_15
.LBB8_20:                               # %if.then94
	cmpl	$0, 17420(%rbx)
	jne	.LBB8_19
# %bb.21:                               # %if.then97
	movq	%rbx, %rdi
	callq	x264_mb_mc@PLT
	jmp	.LBB8_19
.LBB8_86:                               # %if.then360
	movq	%rbx, %rdi
	callq	x264_mb_mc@PLT
	cmpl	$0, 25812(%rbx)
	movl	17396(%rbx), %eax
	jne	.LBB8_88
.LBB8_93:                               # %if.else476
	testl	%eax, %eax
	je	.LBB8_148
# %bb.94:                               # %if.then480
	xorl	%r14d, %r14d
	cmpl	$0, 16416(%rbx)
	movq	%rbx, %r15
	sete	%bl
	movq	21344(%r15), %rsi
	movq	21392(%r15), %rdx
	leaq	128(%rsp), %rdi
	callq	*33000(%r15)
	movl	16420(%r15), %eax
	leal	(,%rax,4), %ecx
	addl	%ecx, 31172(%r15)
	leaq	30656(%r15), %r12
	leaq	31040(%r15), %r13
	testl	%eax, %eax
	je	.LBB8_96
# %bb.95:                               # %if.then505
	leaq	128(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$64, %ecx
	callq	*33136(%r15)
.LBB8_96:                               # %if.end513
	movb	%bl, %r14b
	cmpl	$0, 16416(%r15)
	movq	%r15, %rbx
	je	.LBB8_101
# %bb.97:                               # %if.then.i1420
	leaq	128(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	x264_quant_8x8_trellis@PLT
	jmp	.LBB8_102
.LBB8_27:                               # %if.else110
	movq	21392(%rbx), %rdi
	callq	*31248(%rbx,%rdx,8)
	movq	21344(%rbx), %r12
	movq	21392(%rbx), %r13
	cmpl	$0, 25812(%rbx)
	je	.LBB8_32
.LBB8_29:                               # %for.cond.preheader.i
	leaq	15600(%rbx), %r14
	movq	%rbx, %r15
	movq	$-16, %rbx
	.p2align	4, 0x90
.LBB8_30:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movzbl	block_idx_xy_fenc+16(%rbx), %esi
	movzwl	block_idx_xy_fdec+32(%rbx,%rbx), %edx
	addq	%r12, %rsi
	addq	%r13, %rdx
	movzbl	block_idx_yx_1d+16(%rbx), %eax
	leaq	(%rsp,%rax,2), %rcx
	addq	$64, %rcx
	movq	%r14, %rdi
	callq	*33064(%r15)
                                        # kill: def $eax killed $eax def $rax
	movslq	x264_scan8+64(,%rbx,4), %rcx
	movb	%al, 25072(%r15,%rcx)
	orl	17400(%r15), %eax
	movl	%eax, 17400(%r15)
	addq	$32, %r14
	incq	%rbx
	jne	.LBB8_30
# %bb.31:                               # %for.cond.cleanup.i
	leal	(%rax,%rax,4), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 17400(%r15)
	movdqa	64(%rsp), %xmm0
	por	80(%rsp), %xmm0
	pxor	%xmm1, %xmm1
	pcmpeqd	%xmm0, %xmm1
	movmskps	%xmm1, %eax
	xorl	$15, %eax
	setne	25116(%r15)
	leaq	15040(%r15), %rdi
	leaq	64(%rsp), %rsi
	callq	*33040(%r15)
	movq	%r15, %rbx
	jmp	.LBB8_204
.LBB8_90:                               # %for.cond429.preheader
	leaq	15600(%rbx), %r14
	movq	%rbx, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB8_91:                               # %for.body433
                                        # =>This Inner Loop Header: Depth=1
	movzbl	block_idx_xy_fenc(%rbx), %esi
	addq	21344(%r15), %rsi
	movzwl	block_idx_xy_fdec(%rbx,%rbx), %edx
	addq	21392(%r15), %rdx
	movq	%r14, %rdi
	callq	*33056(%r15)
	movslq	x264_scan8(,%rbx,4), %rcx
	movb	%al, 25072(%r15,%rcx)
	movl	%ebx, %ecx
	shrl	$2, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	orl	%eax, 17400(%r15)
	incq	%rbx
	addq	$32, %r14
	cmpq	$16, %rbx
	jne	.LBB8_91
# %bb.92:
	movq	%r15, %rbx
	jmp	.LBB8_204
.LBB8_148:                              # %if.else660
	movq	21344(%rbx), %rsi
	movq	21392(%rbx), %rdx
	leaq	128(%rsp), %rdi
	callq	*32960(%rbx)
	movl	16420(%rbx), %eax
	shll	$4, %eax
	addl	%eax, 31168(%rbx)
	leaq	30400(%rbx), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leaq	30912(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	movq	$-16, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	shlq	$5, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	movl	$0, 36(%rsp)                    # 4-byte Folded Spill
	jmp	.LBB8_149
.LBB8_190:                              # %if.else785
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$0, 56(%rsp)                    # 4-byte Folded Reload
	movl	48(%rsp), %ecx                  # 4-byte Reload
	je	.LBB8_193
.LBB8_191:                              # %if.then787
                                        #   in Loop: Header=BB8_149 Depth=1
	movl	%r12d, %eax
	andl	$8, %eax
	movl	%ebp, %edi
	andl	$256, %edi                      # imm = 0x100
	orq	%rax, %rdi
	addq	21392(%rbx), %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	callq	*32944(%rbx)
	movl	48(%rsp), %ecx                  # 4-byte Reload
.LBB8_192:                              # %if.end809
                                        #   in Loop: Header=BB8_149 Depth=1
	movl	$1, %eax
	shll	%cl, %eax
	orl	%eax, 17400(%rbx)
.LBB8_193:                              # %if.end809
                                        #   in Loop: Header=BB8_149 Depth=1
	subq	$-128, %rbp
	incl	%ecx
	addq	$8, %r12
	addq	$4, %r14
	cmpq	$512, %rbp                      # imm = 0x200
	je	.LBB8_194
.LBB8_149:                              # %for.cond685.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	cmpl	$0, 16420(%rbx)
	je	.LBB8_151
# %bb.150:                              # %if.then696
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %rdi
	addq	$128, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	$16, %ecx
	callq	*33136(%rbx)
.LBB8_151:                              # %if.end708
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %rcx
	addq	$128, %rcx
	cmpl	$0, 16416(%rbx)
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	je	.LBB8_153
# %bb.152:                              # %if.then.i1429
                                        #   in Loop: Header=BB8_149 Depth=1
	leal	16(%r14), %eax
	movq	%rbx, %rdi
	movq	%rcx, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB8_154
	.p2align	4, 0x90
.LBB8_153:                              # %if.else.i1432
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	3448(%rbx), %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rsi
	movq	3496(%rbx), %rdx
	addq	%rax, %rdx
	movq	%rcx, %rdi
	callq	*33088(%rbx)
.LBB8_154:                              # %x264_quant_4x4.exit
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	movslq	x264_scan8+64(,%r14,4), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movb	%al, 25072(%rbx,%rcx)
	xorl	%r15d, %r15d
	testl	%eax, %eax
	je	.LBB8_155
# %bb.156:                              # %if.then722
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rbx,%rbp), %r12
	addq	$15600, %r12                    # imm = 0x3CF0
	movq	%r12, %rdi
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r13, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	movl	$1, 56(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB8_158
# %bb.157:                              # %if.then741
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	%r12, %rdi
	callq	*33152(%rbx)
	movl	%eax, %r15d
.LBB8_158:                              # %if.end751
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$0, 16420(%rbx)
	je	.LBB8_160
.LBB8_159:                              # %if.then696.1
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %rdi
	addq	$160, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	$16, %ecx
	callq	*33136(%rbx)
.LBB8_160:                              # %if.end708.1
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %r12
	addq	$160, %r12
	cmpl	$0, 16416(%rbx)
	je	.LBB8_162
# %bb.161:                              # %if.then.i1429.1
                                        #   in Loop: Header=BB8_149 Depth=1
	leal	17(%r14), %eax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+68(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB8_164
	jmp	.LBB8_167
	.p2align	4, 0x90
.LBB8_155:                              #   in Loop: Header=BB8_149 Depth=1
	movl	$0, 56(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 16420(%rbx)
	jne	.LBB8_159
	jmp	.LBB8_160
	.p2align	4, 0x90
.LBB8_162:                              # %if.else.i1432.1
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	3448(%rbx), %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rsi
	movq	3496(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+68(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB8_167
.LBB8_164:                              # %if.then722.1
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rbx,%rbp), %r13
	addq	$15632, %r13                    # imm = 0x3D10
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	movl	$1, 56(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB8_167
# %bb.165:                              # %if.then722.1
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$5, %r15d
	jg	.LBB8_167
# %bb.166:                              # %if.then741.1
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	%r13, %rdi
	callq	*33152(%rbx)
	addl	%eax, %r15d
.LBB8_167:                              # %if.end751.1
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$0, 16420(%rbx)
	je	.LBB8_169
# %bb.168:                              # %if.then696.2
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %rdi
	addq	$192, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	$16, %ecx
	callq	*33136(%rbx)
.LBB8_169:                              # %if.end708.2
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %r12
	addq	$192, %r12
	cmpl	$0, 16416(%rbx)
	je	.LBB8_171
# %bb.170:                              # %if.then.i1429.2
                                        #   in Loop: Header=BB8_149 Depth=1
	leal	18(%r14), %eax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+72(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB8_173
	jmp	.LBB8_176
	.p2align	4, 0x90
.LBB8_171:                              # %if.else.i1432.2
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	3448(%rbx), %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rsi
	movq	3496(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+72(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB8_176
.LBB8_173:                              # %if.then722.2
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rbx,%rbp), %r13
	addq	$15664, %r13                    # imm = 0x3D30
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	movl	$1, 56(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB8_176
# %bb.174:                              # %if.then722.2
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$5, %r15d
	jg	.LBB8_176
# %bb.175:                              # %if.then741.2
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	%r13, %rdi
	callq	*33152(%rbx)
	addl	%eax, %r15d
.LBB8_176:                              # %if.end751.2
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$0, 16420(%rbx)
	je	.LBB8_178
# %bb.177:                              # %if.then696.3
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %rdi
	addq	$224, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movl	$16, %ecx
	callq	*33136(%rbx)
.LBB8_178:                              # %if.end708.3
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rsp,%rbp), %r12
	addq	$224, %r12
	cmpl	$0, 16416(%rbx)
	je	.LBB8_180
# %bb.179:                              # %if.then.i1429.3
                                        #   in Loop: Header=BB8_149 Depth=1
	leal	19(%r14), %eax
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+76(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB8_185
.LBB8_182:                              # %if.then722.3
                                        #   in Loop: Header=BB8_149 Depth=1
	leaq	(%rbx,%rbp), %r13
	addq	$15696, %r13                    # imm = 0x3D50
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB8_187
# %bb.183:                              # %if.then722.3
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$5, %r15d
	jg	.LBB8_187
# %bb.184:                              # %if.end751.3.thread
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	%r13, %rdi
	callq	*33152(%rbx)
	addl	%eax, %r15d
	addl	%r15d, 36(%rsp)                 # 4-byte Folded Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	movl	48(%rsp), %ecx                  # 4-byte Reload
	jmp	.LBB8_188
	.p2align	4, 0x90
.LBB8_180:                              # %if.else.i1432.3
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	3448(%rbx), %rsi
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	%rax, %rsi
	movq	3496(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+76(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB8_182
.LBB8_185:                              # %if.end751.3
                                        #   in Loop: Header=BB8_149 Depth=1
	addl	%r15d, 36(%rsp)                 # 4-byte Folded Spill
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	movq	96(%rsp), %r12                  # 8-byte Reload
	je	.LBB8_190
# %bb.186:                              #   in Loop: Header=BB8_149 Depth=1
	movl	48(%rsp), %ecx                  # 4-byte Reload
	jmp	.LBB8_188
.LBB8_187:                              # %if.end751.3.thread1556
                                        #   in Loop: Header=BB8_149 Depth=1
	addl	%r15d, 36(%rsp)                 # 4-byte Folded Spill
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	movq	96(%rsp), %r12                  # 8-byte Reload
	movl	48(%rsp), %ecx                  # 4-byte Reload
	je	.LBB8_191
.LBB8_188:                              # %if.then757
                                        #   in Loop: Header=BB8_149 Depth=1
	cmpl	$3, %r15d
	jg	.LBB8_192
# %bb.189:                              # %if.then760
                                        #   in Loop: Header=BB8_149 Depth=1
	movq	120(%rsp), %rax                 # 8-byte Reload
	movw	$0, 25072(%rbx,%rax)
	movslq	x264_scan8+72(,%r14,4), %rax
	movw	$0, 25072(%rbx,%rax)
	jmp	.LBB8_193
.LBB8_194:                              # %for.cond.cleanup681
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB8_204
# %bb.195:                              # %if.then814
	cmpl	$6, 36(%rsp)                    # 4-byte Folded Reload
	jl	.LBB8_136
# %bb.196:                              # %for.cond842.preheader
	movl	17400(%rbx), %eax
	testb	$1, %al
	jne	.LBB8_197
# %bb.198:                              # %for.inc871
	testb	$2, %al
	jne	.LBB8_199
.LBB8_200:                              # %for.inc871.1
	testb	$4, %al
	jne	.LBB8_201
.LBB8_202:                              # %for.inc871.2
	testb	$8, %al
	jne	.LBB8_203
	jmp	.LBB8_204
.LBB8_26:                               # %if.then8.i
	movq	21368(%rbx), %rdx
	movq	21392(%rbx), %rdi
	decq	%rdx
	movl	$32, %esi
	movl	%eax, %ecx
	movl	$16, %r8d
	callq	*32776(%rbx)
	movq	21344(%rbx), %r12
	movq	21392(%rbx), %r13
	cmpl	$0, 25812(%rbx)
	jne	.LBB8_29
.LBB8_32:                               # %if.end.i1384
	xorl	%eax, %eax
	cmpl	$0, 16424(%rbx)
	sete	%al
	movq	%r13, %rdx
	leal	(%rax,%rax,8), %ebp
	leaq	128(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	callq	*32960(%rbx)
	leaq	15600(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r14d, %r14d
	movq	(%rsp), %rax                    # 8-byte Reload
	shlq	$5, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB8_33
	.p2align	4, 0x90
.LBB8_39:                               # %if.end95.i
                                        #   in Loop: Header=BB8_33 Depth=1
	movl	$15, 17400(%rbx)
.LBB8_40:                               # %for.inc99.i
                                        #   in Loop: Header=BB8_33 Depth=1
	incq	%r15
	addq	$32, %r14
	cmpq	$512, %r14                      # imm = 0x200
	je	.LBB8_41
.LBB8_33:                               # %for.body46.i
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rsp,%r14), %r12
	addq	$128, %r12
	movzwl	128(%rsp,%r14), %eax
	movzbl	block_idx_xy_1d(%r15), %ecx
	movw	%ax, 64(%rsp,%rcx,2)
	movw	$0, 128(%rsp,%r14)
	cmpl	$0, 16416(%rbx)
	je	.LBB8_35
# %bb.34:                               # %if.then.i.i
                                        #   in Loop: Header=BB8_33 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	$1, %r8d
	movl	$1, %r9d
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB8_37
	jmp	.LBB8_40
	.p2align	4, 0x90
.LBB8_35:                               # %if.else.i.i
                                        #   in Loop: Header=BB8_33 Depth=1
	movq	3440(%rbx), %rsi
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rsi
	movq	3488(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%r15,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB8_40
.LBB8_37:                               # %if.then70.i
                                        #   in Loop: Header=BB8_33 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%rax,%r14), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	3344(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	cmpl	$5, %ebp
	jg	.LBB8_39
# %bb.38:                               # %if.then87.i
                                        #   in Loop: Header=BB8_33 Depth=1
	movq	%r13, %rdi
	callq	*33144(%rbx)
	addl	%eax, %ebp
	jmp	.LBB8_39
.LBB8_41:                               # %for.cond.cleanup45.i
	cmpl	$6, %ebp
	jge	.LBB8_43
# %bb.42:                               # %if.then104.i
	movl	$0, 17400(%rbx)
	movl	$0, 25084(%rbx)
	movl	$0, 25092(%rbx)
	movl	$0, 25100(%rbx)
	movl	$0, 25108(%rbx)
.LBB8_43:                               # %if.end127.i
	leaq	64(%rsp), %rdi
	callq	*33016(%rbx)
	cmpl	$0, 16416(%rbx)
	movq	40(%rsp), %r14                  # 8-byte Reload
	je	.LBB8_45
# %bb.44:                               # %if.then132.i
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	72(%rsp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_dc_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB8_46
.LBB8_101:                              # %if.else.i1422
	movq	(%rsp), %rdx                    # 8-byte Reload
	shlq	$7, %rdx
	movq	3480(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3528(%rbx), %rdx
	leaq	128(%rsp), %rdi
	callq	*33080(%rbx)
.LBB8_102:                              # %x264_quant_8x8.exit
	andl	8(%rsp), %r14d                  # 4-byte Folded Reload
	testl	%eax, %eax
	je	.LBB8_103
# %bb.104:                              # %if.then519
	leaq	15088(%rbx), %r15
	leaq	128(%rsp), %rsi
	movq	%r15, %rdi
	callq	*33032(%rbx)
	testl	%r14d, %r14d
	je	.LBB8_105
# %bb.106:                              # %if.then530
	movq	%r15, %rdi
	callq	*33160(%rbx)
	movl	%eax, %ebp
	cmpl	$4, %eax
	jge	.LBB8_107
	jmp	.LBB8_108
.LBB8_103:
	xorl	%ebp, %ebp
	jmp	.LBB8_108
.LBB8_45:                               # %if.else.i1387
	movq	3440(%rbx), %rax
	movq	3488(%rbx), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movzwl	(%rax,%rdx), %esi
	shrl	%esi
	movzwl	(%rcx,%rdx), %edx
	addl	%edx, %edx
	leaq	64(%rsp), %rdi
	callq	*33096(%rbx)
.LBB8_46:                               # %if.end148.i
	movb	%al, 25116(%rbx)
	testl	%eax, %eax
	je	.LBB8_49
# %bb.47:                               # %if.then156.i
	leaq	15040(%rbx), %rdi
	leaq	64(%rsp), %r12
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	%r12, %rdi
	callq	*33024(%rbx)
	movq	3344(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33128(%rbx)
	cmpl	$0, 17400(%rbx)
	je	.LBB8_51
# %bb.48:                               # %for.body178.preheader.i
	movzwl	64(%rsp), %eax
	movzwl	66(%rsp), %ecx
	movw	%ax, 128(%rsp)
	movw	%cx, 160(%rsp)
	movzwl	72(%rsp), %eax
	movw	%ax, 192(%rsp)
	movzwl	74(%rsp), %eax
	movw	%ax, 224(%rsp)
	movzwl	68(%rsp), %eax
	movw	%ax, 256(%rsp)
	movzwl	70(%rsp), %eax
	movw	%ax, 288(%rsp)
	movzwl	76(%rsp), %eax
	movw	%ax, 320(%rsp)
	movzwl	78(%rsp), %eax
	movw	%ax, 352(%rsp)
	movzwl	80(%rsp), %eax
	movw	%ax, 384(%rsp)
	movzwl	82(%rsp), %eax
	movw	%ax, 416(%rsp)
	movzwl	88(%rsp), %eax
	movw	%ax, 448(%rsp)
	movzwl	90(%rsp), %eax
	movw	%ax, 480(%rsp)
	movzwl	84(%rsp), %eax
	movzwl	86(%rsp), %ecx
	movw	%ax, 512(%rsp)
	movw	%cx, 544(%rsp)
	movzwl	92(%rsp), %eax
	movw	%ax, 576(%rsp)
	movzwl	94(%rsp), %eax
	movw	%ax, 608(%rsp)
	jmp	.LBB8_50
.LBB8_49:                               # %if.end190.thread290.i
	cmpl	$0, 17400(%rbx)
	je	.LBB8_204
.LBB8_50:                               # %if.then194.i
	leaq	128(%rsp), %rsi
	movq	%r14, %rdi
	callq	*32968(%rbx)
	jmp	.LBB8_204
.LBB8_14:                               # %if.else.i
	movl	$8, %r8d
	callq	*32744(%r15)
	movq	21408(%r15), %rdi
	movq	21464(%r15), %rdx
	movl	25016(%r15), %ecx
	movl	$32, %esi
	movl	$8, %r8d
	callq	*32744(%r15)
.LBB8_15:                               # %if.end.i
	movq	%r15, %rbx
	movq	7696(%r15), %rax
	testq	%rax, %rax
	je	.LBB8_17
# %bb.16:                               # %if.then105.i
	leaq	7648(%rbx), %r8
	movq	21400(%rbx), %rdi
	movl	$32, %esi
	movq	%rdi, %rdx
	movl	$32, %ecx
	movl	$8, %r9d
	callq	*16(%rax)
.LBB8_17:                               # %if.end124.i
	movq	7760(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_19
# %bb.18:                               # %if.then131.i
	leaq	7712(%rbx), %r8
	movq	21408(%rbx), %rdi
	movl	$32, %esi
	movq	%rdi, %rdx
	movl	$32, %ecx
	movl	$8, %r9d
	callq	*16(%rax)
.LBB8_19:                               # %x264_macroblock_encode_pskip.exit
	movl	$0, 25084(%rbx)
	movl	$0, 25092(%rbx)
	movl	$0, 25100(%rbx)
	movl	$0, 25108(%rbx)
	movw	$0, 25081(%rbx)
	movw	$0, 25089(%rbx)
	movw	$0, 25105(%rbx)
	movw	$0, 25113(%rbx)
	movq	$0, 17400(%rbx)
	movq	16640(%rbx), %rax
	movslq	16392(%rbx), %rcx
	movw	$0, (%rax,%rcx,2)
	jmp	.LBB8_225
.LBB8_105:
	xorl	%ebp, %ebp
.LBB8_107:                              # %for.inc554.sink.split
	orb	$1, 17400(%rbx)
.LBB8_108:                              # %for.inc554
	cmpl	$0, 16420(%rbx)
	je	.LBB8_110
# %bb.109:                              # %if.then505.1
	leaq	256(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$64, %ecx
	callq	*33136(%rbx)
.LBB8_110:                              # %if.end513.1
	leaq	256(%rsp), %rax
	cmpl	$0, 16416(%rbx)
	je	.LBB8_112
# %bb.111:                              # %if.then.i1420.1
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	x264_quant_8x8_trellis@PLT
	jmp	.LBB8_113
.LBB8_112:                              # %if.else.i1422.1
	movq	(%rsp), %rdx                    # 8-byte Reload
	shlq	$7, %rdx
	movq	3480(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3528(%rbx), %rdx
	movq	%rax, %rdi
	callq	*33080(%rbx)
.LBB8_113:                              # %x264_quant_8x8.exit.1
	testl	%eax, %eax
	je	.LBB8_117
# %bb.114:                              # %if.then519.1
	leaq	15216(%rbx), %r15
	movq	%r15, %rdi
	leaq	256(%rsp), %rsi
	callq	*33032(%rbx)
	testl	%r14d, %r14d
	je	.LBB8_116
# %bb.115:                              # %if.then530.1
	movq	%r15, %rdi
	callq	*33160(%rbx)
	addl	%eax, %ebp
	cmpl	$4, %eax
	jl	.LBB8_117
.LBB8_116:                              # %for.inc554.1.sink.split
	orb	$2, 17400(%rbx)
.LBB8_117:                              # %for.inc554.1
	cmpl	$0, 16420(%rbx)
	je	.LBB8_119
# %bb.118:                              # %if.then505.2
	leaq	384(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$64, %ecx
	callq	*33136(%rbx)
.LBB8_119:                              # %if.end513.2
	leaq	384(%rsp), %rax
	cmpl	$0, 16416(%rbx)
	je	.LBB8_121
# %bb.120:                              # %if.then.i1420.2
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	callq	x264_quant_8x8_trellis@PLT
	jmp	.LBB8_122
.LBB8_121:                              # %if.else.i1422.2
	movq	(%rsp), %rdx                    # 8-byte Reload
	shlq	$7, %rdx
	movq	3480(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3528(%rbx), %rdx
	movq	%rax, %rdi
	callq	*33080(%rbx)
.LBB8_122:                              # %x264_quant_8x8.exit.2
	testl	%eax, %eax
	je	.LBB8_126
# %bb.123:                              # %if.then519.2
	leaq	15344(%rbx), %r15
	movq	%r15, %rdi
	leaq	384(%rsp), %rsi
	callq	*33032(%rbx)
	testl	%r14d, %r14d
	je	.LBB8_125
# %bb.124:                              # %if.then530.2
	movq	%r15, %rdi
	callq	*33160(%rbx)
	addl	%eax, %ebp
	cmpl	$4, %eax
	jl	.LBB8_126
.LBB8_125:                              # %for.inc554.2.sink.split
	orb	$4, 17400(%rbx)
.LBB8_126:                              # %for.inc554.2
	cmpl	$0, 16420(%rbx)
	je	.LBB8_128
# %bb.127:                              # %if.then505.3
	leaq	512(%rsp), %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movl	$64, %ecx
	callq	*33136(%rbx)
.LBB8_128:                              # %if.end513.3
	leaq	512(%rsp), %r12
	cmpl	$0, 16416(%rbx)
	je	.LBB8_130
# %bb.129:                              # %if.then.i1420.3
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	(%rsp), %rcx                    # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	callq	x264_quant_8x8_trellis@PLT
	jmp	.LBB8_131
.LBB8_130:                              # %if.else.i1422.3
	movq	(%rsp), %rdx                    # 8-byte Reload
	shlq	$7, %rdx
	movq	3480(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3528(%rbx), %rdx
	movq	%r12, %rdi
	callq	*33080(%rbx)
.LBB8_131:                              # %x264_quant_8x8.exit.3
	testl	%eax, %eax
	je	.LBB8_135
# %bb.132:                              # %if.then519.3
	leaq	15472(%rbx), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*33032(%rbx)
	testl	%r14d, %r14d
	je	.LBB8_98
# %bb.133:                              # %if.then530.3
	movq	%r13, %rdi
	callq	*33160(%rbx)
	addl	%eax, %ebp
	cmpl	$4, %eax
	jl	.LBB8_135
# %bb.134:                              # %if.then541.3
	orb	$8, 17400(%rbx)
.LBB8_135:                              # %for.inc554.3
	cmpl	$6, %ebp
	setl	%al
	andb	%al, %r14b
	cmpb	$1, %r14b
	jne	.LBB8_99
.LBB8_136:                              # %if.then561
	movl	$0, 17400(%rbx)
	movl	$0, 25084(%rbx)
	movl	$0, 25092(%rbx)
	movl	$0, 25100(%rbx)
	movl	$0, 25108(%rbx)
	jmp	.LBB8_204
.LBB8_98:                               # %for.inc554.3.thread
	orb	$8, 17400(%rbx)
.LBB8_99:                               # %for.cond586.preheader
	movl	17400(%rbx), %eax
	testb	$1, %al
	jne	.LBB8_137
# %bb.100:
	xorl	%ecx, %ecx
	jmp	.LBB8_138
.LBB8_137:                              # %if.then596
	movq	3384(%rbx), %rsi
	leaq	128(%rsp), %r15
	movq	%r15, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33112(%rbx)
	movq	21392(%rbx), %rdi
	movq	%r15, %rsi
	callq	*32992(%rbx)
	movl	17400(%rbx), %eax
	movw	$257, %cx                       # imm = 0x101
.LBB8_138:                              # %for.inc656
	movw	%cx, 25084(%rbx)
	movw	%cx, 25092(%rbx)
	testb	$2, %al
	jne	.LBB8_140
# %bb.139:
	xorl	%ecx, %ecx
	jmp	.LBB8_141
.LBB8_140:                              # %if.then596.1
	movq	3384(%rbx), %rsi
	leaq	256(%rsp), %r14
	movq	%r14, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33112(%rbx)
	movq	21392(%rbx), %rdi
	addq	$8, %rdi
	movq	%r14, %rsi
	callq	*32992(%rbx)
	movl	17400(%rbx), %eax
	movw	$257, %cx                       # imm = 0x101
.LBB8_141:                              # %for.inc656.1
	movw	%cx, 25086(%rbx)
	movw	%cx, 25094(%rbx)
	testb	$4, %al
	jne	.LBB8_143
# %bb.142:
	xorl	%ecx, %ecx
	jmp	.LBB8_144
.LBB8_143:                              # %if.then596.2
	movq	3384(%rbx), %rsi
	leaq	384(%rsp), %r14
	movq	%r14, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33112(%rbx)
	movl	$256, %edi                      # imm = 0x100
	addq	21392(%rbx), %rdi
	movq	%r14, %rsi
	callq	*32992(%rbx)
	movl	17400(%rbx), %eax
	movw	$257, %cx                       # imm = 0x101
.LBB8_144:                              # %for.inc656.2
	movw	%cx, 25100(%rbx)
	movw	%cx, 25108(%rbx)
	testb	$8, %al
	jne	.LBB8_146
# %bb.145:
	xorl	%eax, %eax
	jmp	.LBB8_147
.LBB8_146:                              # %if.then596.3
	movq	3384(%rbx), %rsi
	movq	%r12, %rdi
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33112(%rbx)
	movl	$264, %edi                      # imm = 0x108
	addq	21392(%rbx), %rdi
	movq	%r12, %rsi
	callq	*32992(%rbx)
	movw	$257, %ax                       # imm = 0x101
.LBB8_147:                              # %for.inc656.3
	movw	%ax, 25102(%rbx)
	movw	%ax, 25110(%rbx)
	jmp	.LBB8_204
.LBB8_51:                               # %if.then199.i
	leaq	64(%rsp), %rsi
	movq	%r14, %rdi
	callq	*32976(%rbx)
	jmp	.LBB8_204
.LBB8_197:                              # %if.then852
	movq	21392(%rbx), %rdi
	leaq	128(%rsp), %rsi
	callq	*32944(%rbx)
	movl	17400(%rbx), %eax
	testb	$2, %al
	je	.LBB8_200
.LBB8_199:                              # %if.then852.1
	movq	21392(%rbx), %rdi
	addq	$8, %rdi
	leaq	256(%rsp), %rsi
	callq	*32944(%rbx)
	movl	17400(%rbx), %eax
	testb	$4, %al
	je	.LBB8_202
.LBB8_201:                              # %if.then852.2
	movl	$256, %edi                      # imm = 0x100
	addq	21392(%rbx), %rdi
	leaq	384(%rsp), %rsi
	callq	*32944(%rbx)
	movl	17400(%rbx), %eax
	testb	$8, %al
	je	.LBB8_204
.LBB8_203:                              # %if.then852.3
	movl	$264, %edi                      # imm = 0x108
	addq	21392(%rbx), %rdi
	leaq	512(%rsp), %rsi
	callq	*32944(%rbx)
.LBB8_204:                              # %if.end880
	cmpl	$3, 17384(%rbx)
	ja	.LBB8_213
# %bb.205:                              # %if.then900
	movq	%rbx, %r14
	movslq	17412(%rbx), %rbx
	cmpl	$0, 25812(%r14)
	je	.LBB8_211
# %bb.206:                              # %if.then906
	movq	14680(%r14), %rax
	movl	108(%rax), %ebp
	movq	%r14, %rax
	movzbl	16436(%r14), %ecx
	shll	%cl, %ebp
	cmpl	$1, %ebx
	je	.LBB8_209
# %bb.207:                              # %if.then906
	movq	%rax, %r14
	cmpl	$2, %ebx
	jne	.LBB8_210
# %bb.208:                              # %if.then.i1444
	movq	21376(%rax), %rdx
	movq	21400(%rax), %rdi
	movslq	%ebp, %rbx
	subq	%rbx, %rdx
	movl	$32, %esi
	movl	%ebp, %ecx
	movl	$8, %r8d
	callq	*32744(%rax)
	movq	21384(%r14), %rdx
	movq	21408(%r14), %rdi
	subq	%rbx, %rdx
	movq	%r14, %rbx
	movl	$32, %esi
	movl	%ebp, %ecx
	movl	$8, %r8d
	callq	*32744(%r14)
	jmp	.LBB8_213
.LBB8_211:                              # %if.else907
	movq	21400(%r14), %rdi
	callq	*31304(%r14,%rbx,8)
	jmp	.LBB8_212
.LBB8_209:                              # %if.then22.i
	movq	%rax, %rbx
	movq	21376(%rax), %rdx
	movq	21400(%rax), %rdi
	decq	%rdx
	movl	$32, %esi
	movl	%ebp, %ecx
	movl	$8, %r8d
	callq	*32744(%rax)
	movq	21384(%rbx), %rdx
	movq	21408(%rbx), %rdi
	decq	%rdx
	movl	$32, %esi
	movl	%ebp, %ecx
	movl	$8, %r8d
	callq	*32744(%rbx)
	jmp	.LBB8_213
.LBB8_210:                              # %if.else47.i
	movq	21400(%rax), %rdi
	callq	*31304(%rax,%rbx,8)
.LBB8_212:                              # %if.end922
	movq	21408(%r14), %rdi
	callq	*31304(%r14,%rbx,8)
	movq	%r14, %rbx
.LBB8_213:                              # %if.end922
	xorl	%esi, %esi
	cmpl	$4, 17384(%rbx)
	setae	%sil
	movl	25796(%rbx), %edx
	movq	%rbx, %rdi
	callq	x264_mb_encode_8x8_chroma
	movl	17404(%rbx), %eax
	shll	$4, %eax
	orl	17400(%rbx), %eax
	cmpl	$0, 128(%rbx)
	je	.LBB8_215
# %bb.214:                              # %if.then951
	movzbl	25116(%rbx), %ecx
	shll	$8, %ecx
	movzbl	25118(%rbx), %edx
	shll	$9, %edx
	orl	%ecx, %edx
	movzbl	25119(%rbx), %ecx
	shll	$10, %ecx
	orl	%edx, %ecx
	orl	%ecx, %eax
.LBB8_215:                              # %if.end976
	movl	20(%rsp), %esi                  # 4-byte Reload
	movq	16640(%rbx), %rcx
	movslq	16392(%rbx), %rdx
	movw	%ax, (%rcx,%rdx,2)
	testb	%sil, %sil
	je	.LBB8_225
# %bb.216:                              # %if.then985
	movl	17384(%rbx), %eax
	cmpl	$7, %eax
	je	.LBB8_223
# %bb.217:                              # %if.then985
	cmpl	$4, %eax
	jne	.LBB8_225
# %bb.218:                              # %land.lhs.true990
	cmpl	$16, 17388(%rbx)
	jne	.LBB8_225
# %bb.219:                              # %land.lhs.true994
	movl	17404(%rbx), %eax
	orl	17400(%rbx), %eax
	jne	.LBB8_225
# %bb.220:                              # %land.lhs.true1001
	movl	25248(%rbx), %eax
	cmpl	25764(%rbx), %eax
	jne	.LBB8_225
# %bb.221:                              # %land.lhs.true1013
	cmpb	$0, 25132(%rbx)
	jne	.LBB8_225
# %bb.222:                              # %if.end1025.thread
	movl	$6, 17384(%rbx)
	jmp	.LBB8_225
.LBB8_223:                              # %land.lhs.true1030
	movl	17404(%rbx), %eax
	orl	17400(%rbx), %eax
	jne	.LBB8_225
# %bb.224:                              # %if.then1037
	movl	$18, 17384(%rbx)
.LBB8_225:                              # %cleanup
	addq	$648, %rsp                      # imm = 0x288
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
.Lfunc_end8:
	.size	x264_macroblock_encode, .Lfunc_end8-x264_macroblock_encode
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI8_0:
	.quad	.LBB8_67
	.quad	.LBB8_52
	.quad	.LBB8_22
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_11
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_85
	.quad	.LBB8_20
                                        # -- End function
	.text
	.globl	x264_macroblock_probe_skip      # -- Begin function x264_macroblock_probe_skip
	.p2align	4, 0x90
	.type	x264_macroblock_probe_skip,@function
x264_macroblock_probe_skip:             # @x264_macroblock_probe_skip
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movslq	25792(%rdi), %r15
                                        # implicit-def: $ax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
                                        # implicit-def: $ax
	movl	%eax, 8(%rsp)                   # 4-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	testl	%esi, %esi
	jne	.LBB9_2
# %bb.1:                                # %if.then
	movswl	25764(%rbx), %eax
	movl	16448(%rbx), %esi
	cmpl	%esi, %eax
	cmovll	%eax, %esi
	movl	16440(%rbx), %ecx
	movl	16444(%rbx), %edx
	cmpl	%eax, %ecx
	cmovgl	%ecx, %esi
	movswl	25766(%rbx), %eax
	movl	16452(%rbx), %r9d
	cmpl	%r9d, %eax
	cmovll	%eax, %r9d
	cmpl	%eax, %edx
	cmovgl	%edx, %r9d
	movq	21392(%rbx), %rdi
	leaq	21424(%rbx), %rdx
	movl	25008(%rbx), %ecx
	movl	%esi, 16(%rsp)                  # 4-byte Spill
	movswl	%si, %r8d
	movl	%r9d, 8(%rsp)                   # 4-byte Spill
	movswl	%r9w, %r9d
	leaq	7584(%rbx), %rax
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$32, %esi
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	pushq	$16
	.cfi_adjust_cfa_offset 8
	callq	*32616(%rbx)
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
.LBB9_2:                                # %if.end
	xorl	%r14d, %r14d
	leaq	96(%rsp), %rbp
	shlq	$5, %r15
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movq	%r15, (%rsp)                    # 8-byte Spill
	jmp	.LBB9_5
	.p2align	4, 0x90
.LBB9_3:                                #   in Loop: Header=BB9_5 Depth=1
	leaq	96(%rsp), %rbp
.LBB9_4:                                # %for.inc.3
                                        #   in Loop: Header=BB9_5 Depth=1
	incl	%r13d
	addl	$8, %r14d
	cmpl	$4, %r13d
	je	.LBB9_14
.LBB9_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%r14d, %eax
	andl	$8, %eax
	movl	%r13d, %edx
	shrl	%edx
	movl	%edx, %esi
	shll	$7, %esi
	orl	%eax, %esi
	shll	$8, %edx
	orl	%eax, %edx
	addq	21344(%rbx), %rsi
	addq	21392(%rbx), %rdx
	movq	%rbp, %rdi
	callq	*32928(%rbx)
	movq	3448(%rbx), %rsi
	addq	%r15, %rsi
	movq	3496(%rbx), %rdx
	addq	%r15, %rdx
	movq	%rbp, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_7
# %bb.6:                                # %if.end75
                                        #   in Loop: Header=BB9_5 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	movq	(%rsp), %r15                    # 8-byte Reload
	callq	*33152(%rbx)
	addl	%eax, %r12d
	cmpl	$5, %r12d
	jg	.LBB9_42
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	3448(%rbx), %rsi
	addq	%r15, %rsi
	movq	3496(%rbx), %rdx
	addq	%r15, %rdx
	leaq	128(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_9
# %bb.8:                                # %if.end75.1
                                        #   in Loop: Header=BB9_5 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	movq	(%rsp), %r15                    # 8-byte Reload
	callq	*33152(%rbx)
	addl	%eax, %r12d
	cmpl	$5, %r12d
	jg	.LBB9_42
.LBB9_9:                                # %for.inc.1
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	3448(%rbx), %rsi
	addq	%r15, %rsi
	movq	3496(%rbx), %rdx
	addq	%r15, %rdx
	leaq	160(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_11
# %bb.10:                               # %if.end75.2
                                        #   in Loop: Header=BB9_5 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	movq	(%rsp), %r15                    # 8-byte Reload
	callq	*33152(%rbx)
	addl	%eax, %r12d
	cmpl	$5, %r12d
	jg	.LBB9_42
.LBB9_11:                               # %for.inc.2
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	3448(%rbx), %rsi
	addq	%r15, %rsi
	movq	3496(%rbx), %rdx
	addq	%r15, %rdx
	leaq	192(%rsp), %rbp
	movq	%rbp, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_3
# %bb.12:                               # %if.end75.3
                                        #   in Loop: Header=BB9_5 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	movq	(%rsp), %r15                    # 8-byte Reload
	callq	*33152(%rbx)
	addl	%eax, %r12d
	cmpl	$5, %r12d
	leaq	96(%rsp), %rbp
	jle	.LBB9_4
.LBB9_42:
	xorl	%eax, %eax
.LBB9_43:                               # %cleanup303
	addq	$232, %rsp
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
.LBB9_14:                               # %for.end96
	.cfi_def_cfa_offset 288
	movslq	25796(%rbx), %rsi
	movq	x264_lambda2_tab@GOTPCREL(%rip), %rax
	movl	(%rax,%rsi,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	movl	8(%rsp), %edi                   # 4-byte Reload
	movl	%edi, %edx
	shll	$16, %edx
	movzwl	16(%rsp), %eax                  # 2-byte Folded Reload
	orl	%eax, %edx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	cwtl
	movl	%eax, 32(%rsp)                  # 4-byte Spill
	movswl	%di, %eax
	movl	%eax, 28(%rsp)                  # 4-byte Spill
	leaq	7584(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	leal	(,%rcx,4), %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	movb	$1, %r14b
	xorl	%r12d, %r12d
	shlq	$5, %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	jmp	.LBB9_16
	.p2align	4, 0x90
.LBB9_15:                               # %for.inc297
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	$1, %r12d
	testb	$1, %r14b
	movl	$0, %r14d
	je	.LBB9_38
.LBB9_16:                               # %for.body106
                                        # =>This Inner Loop Header: Depth=1
	movq	21352(%rbx,%r12,8), %rbp
	movq	21400(%rbx,%r12,8), %r13
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB9_22
# %bb.17:                               # %if.then120
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	21456(%rbx,%r12,8), %rdx
	movl	25012(%rbx,%r12,4), %ecx
	cmpl	$0, 36(%rsp)                    # 4-byte Folded Reload
	je	.LBB9_19
# %bb.18:                               # %if.then123
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	%r13, %rdi
	movl	$32, %esi
	movl	32(%rsp), %r8d                  # 4-byte Reload
	movl	28(%rsp), %r9d                  # 4-byte Reload
	pushq	$8
	.cfi_adjust_cfa_offset 8
	pushq	$8
	.cfi_adjust_cfa_offset 8
	callq	*32632(%rbx)
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB9_20
.LBB9_19:                               # %if.else
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	%r13, %rdi
	movl	$32, %esi
	movl	$8, %r8d
	callq	*32744(%rbx)
.LBB9_20:                               # %if.end171
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	1(%r12), %r8
	shlq	$6, %r8
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	48(%rax,%r8), %rax
	testq	%rax, %rax
	je	.LBB9_22
# %bb.21:                               # %if.then179
                                        #   in Loop: Header=BB9_16 Depth=1
	addq	8(%rsp), %r8                    # 8-byte Folded Reload
	movq	21400(%rbx,%r12,8), %rdi
	movl	$32, %esi
	movq	%rdi, %rdx
	movl	$32, %ecx
	movl	$8, %r9d
	callq	*16(%rax)
.LBB9_22:                               # %if.end207
                                        #   in Loop: Header=BB9_16 Depth=1
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%rbp, %rdx
	movl	$16, %ecx
	callq	*31640(%rbx)
	cmpl	16(%rsp), %eax                  # 4-byte Folded Reload
	jl	.LBB9_15
# %bb.23:                               # %if.end214
                                        #   in Loop: Header=BB9_16 Depth=1
	movl	%eax, %r12d
	leaq	80(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	*32936(%rbx)
	movq	3464(%rbx), %rax
	movq	3512(%rbx), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movzwl	(%rax,%rdx), %esi
	shrl	%esi
	movzwl	(%rcx,%rdx), %edx
	addl	%edx, %edx
	movq	%r15, %rdi
	callq	*33104(%rbx)
	testl	%eax, %eax
	jne	.LBB9_42
# %bb.24:                               # %if.end235
                                        #   in Loop: Header=BB9_16 Depth=1
	cmpl	40(%rsp), %r12d                 # 4-byte Folded Reload
	jl	.LBB9_15
# %bb.25:                               # %if.end240
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	96(%rsp), %r15
	movq	%r15, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	*32928(%rbx)
	movw	$0, 96(%rsp)
	movq	3464(%rbx), %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, %rsi
	movq	3512(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r15, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_27
# %bb.26:                               # %if.end272
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	48(%rsp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	*33040(%rbx)
	movq	%r12, %rdi
	callq	*33144(%rbx)
	movl	%eax, %ebp
	cmpl	$6, %eax
	leaq	128(%rsp), %r12
	jle	.LBB9_28
	jmp	.LBB9_42
.LBB9_27:                               #   in Loop: Header=BB9_16 Depth=1
	xorl	%ebp, %ebp
	leaq	128(%rsp), %r12
.LBB9_28:                               # %for.inc287
                                        #   in Loop: Header=BB9_16 Depth=1
	movw	$0, 128(%rsp)
	movq	3464(%rbx), %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, %rsi
	movq	3512(%rbx), %rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_30
# %bb.29:                               # %if.end272.1
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	callq	*33144(%rbx)
	addl	%eax, %ebp
	cmpl	$6, %ebp
	jg	.LBB9_42
.LBB9_30:                               # %for.inc287.1
                                        #   in Loop: Header=BB9_16 Depth=1
	movw	$0, 160(%rsp)
	movq	3464(%rbx), %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, %rsi
	movq	3512(%rbx), %rdx
	addq	%rax, %rdx
	leaq	160(%rsp), %r12
	movq	%r12, %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_32
# %bb.31:                               # %if.end272.2
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	callq	*33144(%rbx)
	addl	%eax, %ebp
	cmpl	$6, %ebp
	jg	.LBB9_42
.LBB9_32:                               # %for.inc287.2
                                        #   in Loop: Header=BB9_16 Depth=1
	movw	$0, 192(%rsp)
	movq	3464(%rbx), %rsi
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	%rax, %rsi
	movq	3512(%rbx), %rdx
	addq	%rax, %rdx
	leaq	192(%rsp), %rdi
	callq	*33088(%rbx)
	testl	%eax, %eax
	je	.LBB9_15
# %bb.33:                               # %if.end272.3
                                        #   in Loop: Header=BB9_16 Depth=1
	leaq	48(%rsp), %r15
	movq	%r15, %rdi
	leaq	192(%rsp), %rsi
	callq	*33040(%rbx)
	movq	%r15, %rdi
	callq	*33144(%rbx)
	addl	%ebp, %eax
	cmpl	$6, %eax
	jle	.LBB9_15
	jmp	.LBB9_42
.LBB9_38:                               # %for.end301
	movl	$1, 17420(%rbx)
	movl	$1, %eax
	jmp	.LBB9_43
.Lfunc_end9:
	.size	x264_macroblock_probe_skip, .Lfunc_end9-x264_macroblock_probe_skip
	.cfi_endproc
                                        # -- End function
	.globl	x264_noise_reduction_update     # -- Begin function x264_noise_reduction_update
	.p2align	4, 0x90
	.type	x264_noise_reduction_update,@function
x264_noise_reduction_update:            # @x264_noise_reduction_update
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movslq	452(%rdi), %rbx
	movl	31168(%rdi), %ecx
	movl	30400(%rdi), %eax
	cmpl	$262144, %ecx                   # imm = 0x40000
	jbe	.LBB10_1
# %bb.2:                                # %for.body9.preheader
	shrl	%eax
	movl	%eax, 30400(%rdi)
	movdqu	30404(%rdi), %xmm0
	movdqu	30420(%rdi), %xmm1
	movdqu	30436(%rdi), %xmm2
	psrld	$1, %xmm0
	movdqu	%xmm0, 30404(%rdi)
	psrld	$1, %xmm1
	movdqu	%xmm1, 30420(%rdi)
	psrld	$1, %xmm2
	movdqu	%xmm2, 30436(%rdi)
	movq	30452(%rdi), %xmm2              # xmm2 = mem[0],zero
	psrld	$1, %xmm2
	movq	%xmm2, 30452(%rdi)
	shrl	30460(%rdi)
	shrl	%ecx
	movl	%ecx, 31168(%rdi)
	movd	%xmm0, %r11d
	pshufd	$85, %xmm0, %xmm2               # xmm2 = xmm0[1,1,1,1]
	movd	%xmm2, %r10d
	pshufd	$238, %xmm0, %xmm2              # xmm2 = xmm0[2,3,2,3]
	movd	%xmm2, %r9d
	pshufd	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	movd	%xmm0, %r8d
	movd	%xmm1, %r12d
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	movd	%xmm0, %esi
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	movd	%xmm0, %r15d
	jmp	.LBB10_3
.LBB10_1:                               # %entry.if.end_crit_edge
	movl	30404(%rdi), %r11d
	movl	30408(%rdi), %r10d
	movl	30412(%rdi), %r9d
	movl	30416(%rdi), %r8d
	movl	30420(%rdi), %r12d
	movl	30424(%rdi), %esi
	movl	30428(%rdi), %r15d
.LBB10_3:                               # %if.end
	leaq	30912(%rdi), %r14
	movl	%ecx, %ecx
	imulq	%rbx, %rcx
	movl	%eax, %edx
	shrl	%eax
	addq	%rcx, %rax
	imulq	$800, %rdx, %r13                # imm = 0x320
	shrq	$8, %r13
	incq	%r13
	movq	%rax, %rdx
	orq	%r13, %rdx
	shrq	$32, %rdx
	je	.LBB10_4
# %bb.5:
	xorl	%edx, %edx
	divq	%r13
	jmp	.LBB10_6
.LBB10_4:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r13d
                                        # kill: def $eax killed $eax def $rax
.LBB10_6:
	movw	%ax, (%r14)
	movl	%r11d, %eax
	shrl	%r11d
	addq	%rcx, %r11
	shlq	$6, %rax
	leaq	(%rax,%rax,4), %r13
	shrq	$8, %r13
	incq	%r13
	movq	%r11, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	je	.LBB10_7
# %bb.8:
	movq	%r11, %rax
	xorl	%edx, %edx
	divq	%r13
	jmp	.LBB10_9
.LBB10_7:
	movl	%r11d, %eax
	xorl	%edx, %edx
	divl	%r13d
                                        # kill: def $eax killed $eax def $rax
.LBB10_9:
	movw	%ax, 30914(%rdi)
	movl	%r10d, %eax
	shrl	%r10d
	addq	%rcx, %r10
	imulq	$800, %rax, %r11                # imm = 0x320
	shrq	$8, %r11
	incq	%r11
	movq	%r10, %rax
	orq	%r11, %rax
	shrq	$32, %rax
	je	.LBB10_10
# %bb.11:
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r11
	jmp	.LBB10_12
.LBB10_10:
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r11d
                                        # kill: def $eax killed $eax def $rax
.LBB10_12:
	movw	%ax, 30916(%rdi)
	movl	%r9d, %eax
	shrl	%r9d
	addq	%rcx, %r9
	shlq	$6, %rax
	leaq	(%rax,%rax,4), %r10
	shrq	$8, %r10
	incq	%r10
	movq	%r9, %rax
	orq	%r10, %rax
	shrq	$32, %rax
	je	.LBB10_13
# %bb.14:
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	jmp	.LBB10_15
.LBB10_13:
	movl	%r9d, %eax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
.LBB10_15:
	movw	%ax, 30918(%rdi)
	movl	%r8d, %eax
	shrl	%r8d
	addq	%rcx, %r8
	shlq	$6, %rax
	leaq	(%rax,%rax,4), %r9
	shrq	$8, %r9
	incq	%r9
	movq	%r8, %rax
	orq	%r9, %rax
	shrq	$32, %rax
	je	.LBB10_16
# %bb.17:
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%r9
	jmp	.LBB10_18
.LBB10_16:
	movl	%r8d, %eax
	xorl	%edx, %edx
	divl	%r9d
                                        # kill: def $eax killed $eax def $rax
.LBB10_18:
	movw	%ax, 30920(%rdi)
	shrl	%r12d
	leaq	(%rcx,%r12), %rax
	incl	%r12d
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB10_19
# %bb.20:
	xorl	%edx, %edx
	divq	%r12
	jmp	.LBB10_21
.LBB10_19:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r12d
                                        # kill: def $eax killed $eax def $rax
.LBB10_21:
	movw	%ax, 30922(%rdi)
	movl	%esi, %eax
	shrl	%esi
	addq	%rcx, %rsi
	shlq	$6, %rax
	leaq	(%rax,%rax,4), %r8
	shrq	$8, %r8
	incq	%r8
	movq	%rsi, %rax
	orq	%r8, %rax
	shrq	$32, %rax
	je	.LBB10_22
# %bb.23:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%r8
	jmp	.LBB10_24
.LBB10_22:
	movl	%esi, %eax
	xorl	%edx, %edx
	divl	%r8d
                                        # kill: def $eax killed $eax def $rax
.LBB10_24:
	movw	%ax, 30924(%rdi)
	shrl	%r15d
	addq	%r15, %rcx
	incl	%r15d
	movq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB10_25
# %bb.26:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%r15
	jmp	.LBB10_27
.LBB10_25:
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
.LBB10_27:
	movw	%ax, 30926(%rdi)
	movl	31168(%rdi), %ecx
	imulq	%rbx, %rcx
	movl	30432(%rdi), %eax
	imulq	$800, %rax, %rsi                # imm = 0x320
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	%eax
	addq	%rcx, %rax
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_28
# %bb.29:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_30
.LBB10_28:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_30:
	movw	%ax, 30928(%rdi)
	movl	30436(%rdi), %edx
	movl	%edx, %eax
	shrl	%eax
	addq	%rcx, %rax
	shlq	$6, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_31
# %bb.32:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_33
.LBB10_31:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_33:
	movw	%ax, 30930(%rdi)
	movl	30440(%rdi), %eax
	imulq	$800, %rax, %rsi                # imm = 0x320
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	%eax
	addq	%rcx, %rax
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_34
# %bb.35:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_36
.LBB10_34:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_36:
	movw	%ax, 30932(%rdi)
	movl	30444(%rdi), %edx
	movl	%edx, %eax
	shrl	%eax
	addq	%rcx, %rax
	shlq	$6, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_37
# %bb.38:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_39
.LBB10_37:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_39:
	movw	%ax, 30934(%rdi)
	movl	30448(%rdi), %edx
	movl	%edx, %eax
	shrl	%eax
	addq	%rcx, %rax
	shlq	$6, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_40
# %bb.41:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_42
.LBB10_40:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_42:
	movw	%ax, 30936(%rdi)
	movl	30452(%rdi), %esi
	shrl	%esi
	leaq	(%rcx,%rsi), %rax
	incq	%rsi
	movq	%rax, %rdx
	shrq	$32, %rdx
	je	.LBB10_43
# %bb.44:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_45
.LBB10_43:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_45:
	movw	%ax, 30938(%rdi)
	movl	30456(%rdi), %edx
	movl	%edx, %eax
	shrl	%eax
	addq	%rcx, %rax
	shlq	$6, %rdx
	leaq	(%rdx,%rdx,4), %rsi
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_46
# %bb.47:
	xorl	%edx, %edx
	divq	%rsi
	jmp	.LBB10_48
.LBB10_46:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
.LBB10_48:
	movw	%ax, 30940(%rdi)
	movl	30460(%rdi), %esi
	shrl	%esi
	addq	%rsi, %rcx
	incq	%rsi
	movq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB10_49
# %bb.50:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, 30942(%rdi)
	leaq	31172(%rdi), %rax
	cmpl	$65537, 31172(%rdi)             # imm = 0x10001
	jb	.LBB10_53
.LBB10_52:                              # %vector.body
	movdqu	30656(%rdi), %xmm0
	movdqu	30672(%rdi), %xmm1
	movdqu	30688(%rdi), %xmm2
	movdqu	30704(%rdi), %xmm3
	psrld	$1, %xmm0
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqu	%xmm0, 30656(%rdi)
	movdqu	%xmm1, 30672(%rdi)
	movdqu	%xmm2, 30688(%rdi)
	movdqu	%xmm3, 30704(%rdi)
	movdqu	30720(%rdi), %xmm0
	movdqu	30736(%rdi), %xmm1
	movdqu	30752(%rdi), %xmm2
	movdqu	30768(%rdi), %xmm3
	psrld	$1, %xmm0
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqu	%xmm0, 30720(%rdi)
	movdqu	%xmm1, 30736(%rdi)
	movdqu	%xmm2, 30752(%rdi)
	movdqu	%xmm3, 30768(%rdi)
	movdqu	30784(%rdi), %xmm0
	movdqu	30800(%rdi), %xmm1
	movdqu	30816(%rdi), %xmm2
	movdqu	30832(%rdi), %xmm3
	psrld	$1, %xmm0
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqu	%xmm0, 30784(%rdi)
	movdqu	%xmm1, 30800(%rdi)
	movdqu	%xmm2, 30816(%rdi)
	movdqu	%xmm3, 30832(%rdi)
	movdqu	30848(%rdi), %xmm0
	movdqu	30864(%rdi), %xmm1
	movdqu	30880(%rdi), %xmm2
	movdqu	30896(%rdi), %xmm3
	psrld	$1, %xmm0
	psrld	$1, %xmm1
	psrld	$1, %xmm2
	psrld	$1, %xmm3
	movdqu	%xmm0, 30848(%rdi)
	movdqu	%xmm1, 30864(%rdi)
	movdqu	%xmm2, 30880(%rdi)
	movdqu	%xmm3, 30896(%rdi)
	shrl	31172(%rdi)
.LBB10_53:                              # %vector.memcheck
	leaq	31040(%rdi), %rcx
	leaq	31168(%rdi), %rdx
	leaq	31176(%rdi), %rsi
	leaq	30656(%rdi), %r8
	cmpq	%rsi, %rcx
	setb	%sil
	cmpq	%rdx, %rax
	setb	%r9b
	cmpq	%r14, %rcx
	setb	%al
	cmpq	%rdx, %r8
	setb	%cl
	testb	%r9b, %sil
	jne	.LBB10_55
# %bb.54:                               # %vector.memcheck
	andb	%cl, %al
	jne	.LBB10_55
# %bb.58:                               # %vector.body146.preheader
	movl	31172(%rdi), %r9d
	imulq	%rbx, %r9
	xorl	%r10d, %r10d
	jmp	.LBB10_59
	.p2align	4, 0x90
.LBB10_70:                              #   in Loop: Header=BB10_59 Depth=1
	xorl	%edx, %edx
	divq	%r11
.LBB10_71:                              #   in Loop: Header=BB10_59 Depth=1
	movw	%cx, 31040(%rdi,%r10)
	movw	%si, 31042(%rdi,%r10)
	movw	%r8w, 31044(%rdi,%r10)
	movw	%ax, 31046(%rdi,%r10)
	addq	$8, %r10
	cmpq	$128, %r10
	je	.LBB10_74
.LBB10_59:                              # %vector.body146
                                        # =>This Inner Loop Header: Depth=1
	movl	30656(%rdi,%r10,2), %eax
	movl	30660(%rdi,%r10,2), %r15d
	movl	30664(%rdi,%r10,2), %r14d
	movl	30668(%rdi,%r10,2), %ebx
	movzwl	x264_dct8_weight2_tab(%r10), %ecx
	imulq	%rax, %rcx
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	%eax
	addq	%r9, %rax
	movzwl	x264_dct8_weight2_tab+2(%r10), %esi
	movzwl	x264_dct8_weight2_tab+4(%r10), %r8d
	movzwl	x264_dct8_weight2_tab+6(%r10), %r11d
	shrq	$8, %rcx
	incq	%rcx
	movq	%rax, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rdx
	je	.LBB10_60
# %bb.61:                               #   in Loop: Header=BB10_59 Depth=1
	xorl	%edx, %edx
	divq	%rcx
	movq	%rax, %rcx
	jmp	.LBB10_62
	.p2align	4, 0x90
.LBB10_60:                              #   in Loop: Header=BB10_59 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %ecx
.LBB10_62:                              #   in Loop: Header=BB10_59 Depth=1
	movl	%r15d, %eax
	shrl	%eax
	addq	%r9, %rax
	imulq	%r15, %rsi
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB10_63
# %bb.64:                               #   in Loop: Header=BB10_59 Depth=1
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rsi
	jmp	.LBB10_65
	.p2align	4, 0x90
.LBB10_63:                              #   in Loop: Header=BB10_59 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
	movl	%eax, %esi
.LBB10_65:                              #   in Loop: Header=BB10_59 Depth=1
	movl	%r14d, %eax
	shrl	%eax
	addq	%r9, %rax
	imulq	%r14, %r8
	shrq	$8, %r8
	incq	%r8
	movq	%rax, %rdx
	orq	%r8, %rdx
	shrq	$32, %rdx
	je	.LBB10_66
# %bb.67:                               #   in Loop: Header=BB10_59 Depth=1
	xorl	%edx, %edx
	divq	%r8
	movq	%rax, %r8
	jmp	.LBB10_68
	.p2align	4, 0x90
.LBB10_66:                              #   in Loop: Header=BB10_59 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r8d
	movl	%eax, %r8d
.LBB10_68:                              #   in Loop: Header=BB10_59 Depth=1
	movl	%ebx, %eax
	shrl	%eax
	addq	%r9, %rax
	imulq	%rbx, %r11
	shrq	$8, %r11
	incq	%r11
	movq	%rax, %rdx
	orq	%r11, %rdx
	shrq	$32, %rdx
	jne	.LBB10_70
# %bb.69:                               #   in Loop: Header=BB10_59 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%r11d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB10_71
.LBB10_55:                              # %for.body22.1.preheader
	movq	$-128, %rcx
	jmp	.LBB10_56
	.p2align	4, 0x90
.LBB10_72:                              #   in Loop: Header=BB10_56 Depth=1
	xorl	%edx, %edx
	divq	%rsi
	movw	%ax, 31168(%rdi,%rcx)
	addq	$2, %rcx
	je	.LBB10_74
.LBB10_56:                              # %for.body22.1
                                        # =>This Inner Loop Header: Depth=1
	movl	31172(%rdi), %edx
	imulq	%rbx, %rdx
	movl	30912(%rdi,%rcx,2), %eax
	movzwl	x264_dct8_weight2_tab+128(%rcx), %esi
	imulq	%rax, %rsi
                                        # kill: def $eax killed $eax killed $rax def $rax
	shrl	%eax
	addq	%rdx, %rax
	shrq	$8, %rsi
	incq	%rsi
	movq	%rax, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	jne	.LBB10_72
# %bb.57:                               #   in Loop: Header=BB10_56 Depth=1
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movw	%ax, 31168(%rdi,%rcx)
	addq	$2, %rcx
	jne	.LBB10_56
.LBB10_74:                              # %for.cond.cleanup21.1
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB10_49:
	.cfi_def_cfa_offset 48
	movl	%ecx, %eax
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $eax killed $eax def $rax
	movw	%ax, 30942(%rdi)
	leaq	31172(%rdi), %rax
	cmpl	$65537, 31172(%rdi)             # imm = 0x10001
	jae	.LBB10_52
	jmp	.LBB10_53
.Lfunc_end10:
	.size	x264_noise_reduction_update, .Lfunc_end10-x264_noise_reduction_update
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_encode_p8x8     # -- Begin function x264_macroblock_encode_p8x8
	.p2align	4, 0x90
	.type	x264_macroblock_encode_p8x8,@function
x264_macroblock_encode_p8x8:            # @x264_macroblock_encode_p8x8
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movslq	25792(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movl	%esi, %eax
	andl	$1, %eax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	leal	(,%rax,8), %r12d
	movq	21344(%rdi), %r13
	addq	%r12, %r13
	movl	%esi, %edx
	sarl	%edx
	movl	%edx, %eax
	shll	$7, %eax
	movslq	%eax, %rcx
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%edx, %eax
	shll	$8, %eax
	movslq	%eax, %r14
	movl	16424(%rdi), %eax
	movl	%eax, 16(%rsp)                  # 4-byte Spill
	addq	21392(%rdi), %r12
	cmpl	$0, 17420(%rdi)
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jne	.LBB11_2
# %bb.1:                                # %if.then
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	x264_mb_mc_8x8@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
.LBB11_2:                               # %if.end
	addq	%rcx, %r13
	addq	%r14, %r12
	cmpl	$0, 25812(%rbx)
	movl	17396(%rbx), %eax
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	je	.LBB11_7
# %bb.3:                                # %if.then25
	movslq	%ebp, %r14
	testl	%eax, %eax
	je	.LBB11_5
# %bb.4:                                # %if.then28
	movq	%r14, %rax
	shlq	$7, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15088, %rdi                    # imm = 0x3AF0
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	*33048(%rbx)
	movq	%rbp, %rdx
	movl	%eax, %ebp
	shll	$8, %eax
	addl	%ebp, %eax
	leal	(,%rdx,4), %ecx
	movslq	%ecx, %rcx
	movslq	x264_scan8(,%rcx,4), %rcx
	movw	%ax, 25072(%rbx,%rcx)
	leal	2(,%rdx,4), %ecx
	movslq	%ecx, %rcx
	movslq	x264_scan8(,%rcx,4), %rcx
	movw	%ax, 25072(%rbx,%rcx)
	jmp	.LBB11_6
.LBB11_7:                               # %if.else144
	leaq	96(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	testl	%eax, %eax
	je	.LBB11_18
# %bb.8:                                # %if.then148
	callq	*32984(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB11_10
# %bb.9:                                # %if.then.i
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	8(%rsp), %rcx                   # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	movl	%ebp, %r9d
	callq	x264_quant_8x8_trellis@PLT
	movl	%eax, %r13d
	testl	%eax, %eax
	je	.LBB11_12
.LBB11_13:                              # %if.then153
	movq	%rbp, %r14
	movslq	%ebp, %rax
	shlq	$7, %rax
	leaq	(%rbx,%rax), %rbp
	addq	$15088, %rbp                    # imm = 0x3AF0
	leaq	96(%rsp), %rsi
	movq	%rbp, %rdi
	callq	*33032(%rbx)
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_16
# %bb.14:                               # %land.lhs.true
	cmpl	$0, 16416(%rbx)
	jne	.LBB11_16
# %bb.15:                               # %if.end173
	movq	%rbp, %rdi
	callq	*33160(%rbx)
	movl	$1, %r13d
	xorl	%ecx, %ecx
	movl	$0, %ebp
	cmpl	$4, %eax
	jl	.LBB11_17
.LBB11_16:                              # %if.then175
	movq	3384(%rbx), %rsi
	leaq	96(%rsp), %rbp
	movq	%rbp, %rdi
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33112(%rbx)
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*32992(%rbx)
	movw	$257, %cx                       # imm = 0x101
	movl	%r13d, %ebp
	jmp	.LBB11_17
.LBB11_5:                               # %if.else
	leal	(,%rbp,4), %eax
	movslq	%eax, %r13
	movq	%r13, %rax
	shlq	$5, %rax
	movzbl	block_idx_xy_fenc(%r13), %esi
	addq	21344(%rbx), %rsi
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movzwl	block_idx_xy_fdec(%r13,%r13), %edx
	addq	21392(%rbx), %rdx
	callq	*33056(%rbx)
	movl	%eax, %ebp
	movslq	x264_scan8(,%r13,4), %rax
	movb	%bpl, 25072(%rbx,%rax)
	leaq	1(%r13), %rax
	shlq	$5, %rax
	movzbl	block_idx_xy_fenc+1(%r13), %esi
	addq	21344(%rbx), %rsi
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movzwl	block_idx_xy_fdec+2(%r13,%r13), %edx
	addq	21392(%rbx), %rdx
	callq	*33056(%rbx)
	movl	%eax, %r12d
	movslq	x264_scan8+4(,%r13,4), %rax
	movb	%r12b, 25072(%rbx,%rax)
	orl	%ebp, %r12d
	leaq	2(%r13), %rax
	shlq	$5, %rax
	movzbl	block_idx_xy_fenc+2(%r13), %esi
	addq	21344(%rbx), %rsi
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movzwl	block_idx_xy_fdec+4(%r13,%r13), %edx
	addq	21392(%rbx), %rdx
	callq	*33056(%rbx)
	movl	%eax, %r15d
	movslq	x264_scan8+8(,%r13,4), %rax
	movb	%r15b, 25072(%rbx,%rax)
	leaq	3(%r13), %rax
	shlq	$5, %rax
	movzbl	block_idx_xy_fenc+3(%r13), %esi
	addq	21344(%rbx), %rsi
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movzwl	block_idx_xy_fdec+6(%r13,%r13), %edx
	addq	21392(%rbx), %rdx
	callq	*33056(%rbx)
	movl	%eax, %ebp
	movslq	x264_scan8+12(,%r13,4), %rax
	movb	%bpl, 25072(%rbx,%rax)
	orl	%r15d, %ebp
	orl	%r12d, %ebp
.LBB11_6:                               # %if.end84
	movq	56(%rsp), %r15                  # 8-byte Reload
	shll	$2, %r15d
	movl	48(%rsp), %eax                  # 4-byte Reload
	shll	$6, %eax
	movslq	%eax, %r13
	leaq	16(%r14), %rax
	movq	21352(%rbx), %rsi
	addq	%r15, %rsi
	addq	%r13, %rsi
	movq	21400(%rbx), %rdx
	addq	%r15, %rdx
	movq	32(%rsp), %r12                  # 8-byte Reload
	addq	%r12, %rdx
	shlq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	leaq	96(%rsp), %rcx
	callq	*33064(%rbx)
	movslq	x264_scan8+64(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	movq	21360(%rbx), %rsi
	addq	%r15, %rsi
	addq	%r13, %rsi
	addq	21408(%rbx), %r15
	addq	%r12, %r15
	leaq	20(%r14), %rax
	shlq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movq	%r15, %rdx
	leaq	96(%rsp), %rcx
	callq	*33064(%rbx)
	movslq	x264_scan8+80(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	jmp	.LBB11_60
.LBB11_18:                              # %if.else239
	callq	*32928(%rbx)
	leal	(,%rbp,4), %r14d
	movslq	%r14d, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cmpl	$0, 16416(%rbx)
	je	.LBB11_20
# %bb.19:                               # %if.then.i597
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movq	8(%rsp), %r13                   # 8-byte Reload
	movl	%r13d, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB11_21
.LBB11_10:                              # %if.else.i
	movq	8(%rsp), %rdx                   # 8-byte Reload
	shlq	$7, %rdx
	movq	3480(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3528(%rbx), %rdx
	leaq	96(%rsp), %rdi
	callq	*33080(%rbx)
	movl	%eax, %r13d
	testl	%eax, %eax
	jne	.LBB11_13
.LBB11_12:
	movq	%rbp, %r14
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
.LBB11_17:                              # %if.end238
	leal	(,%r14,4), %eax
	cltq
	movslq	x264_scan8(,%rax,4), %rax
	movw	%cx, 25072(%rbx,%rax)
	leal	2(,%r14,4), %eax
	cltq
	movslq	x264_scan8(,%rax,4), %rax
	movw	%cx, 25072(%rbx,%rax)
	movq	32(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB11_50
.LBB11_20:                              # %if.else.i600
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	%r13, %rdx
	shlq	$5, %rdx
	movq	3448(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3496(%rbx), %rdx
	leaq	96(%rsp), %rdi
	callq	*33088(%rbx)
.LBB11_21:                              # %x264_quant_4x4.exit
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	leaq	15600(%rbx), %rdx
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movslq	x264_scan8(,%rbp,4), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movb	%al, 25072(%rbx,%rcx)
	xorl	%r14d, %r14d
	testl	%eax, %eax
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	je	.LBB11_22
# %bb.23:                               # %if.then265
	movq	%r13, %r14
	movq	%rbp, %r13
	shlq	$5, %r13
	addq	%rdx, %r13
	leaq	96(%rsp), %rbp
	movq	%r13, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%rbp, %rdi
	movl	%r14d, %edx
	callq	*33120(%rbx)
	movl	$1, 28(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_24
# %bb.25:                               # %if.then283
	movq	%r13, %rdi
	callq	*33152(%rbx)
	movl	%eax, %r14d
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	40(%rsp), %rbp                  # 8-byte Reload
	leaq	128(%rsp), %r15
	orq	$1, %rbp
	cmpl	$0, 16416(%rbx)
	jne	.LBB11_27
	jmp	.LBB11_28
.LBB11_22:
	movl	$0, 28(%rsp)                    # 4-byte Folded Spill
	leaq	128(%rsp), %r15
	orq	$1, %rbp
	cmpl	$0, 16416(%rbx)
	je	.LBB11_28
.LBB11_27:                              # %if.then.i597.1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	movl	%r13d, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%rbp,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB11_30
	jmp	.LBB11_32
.LBB11_24:
	movq	8(%rsp), %r13                   # 8-byte Reload
	movq	40(%rsp), %rbp                  # 8-byte Reload
	xorl	%r14d, %r14d
	leaq	128(%rsp), %r15
	orq	$1, %rbp
	cmpl	$0, 16416(%rbx)
	jne	.LBB11_27
.LBB11_28:                              # %if.else.i600.1
	movq	%r13, %rdx
	shlq	$5, %rdx
	movq	3448(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3496(%rbx), %rdx
	movq	%r15, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%rbp,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB11_32
.LBB11_30:                              # %if.then265.1
	shlq	$5, %rbp
	addq	64(%rsp), %rbp                  # 8-byte Folded Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, 28(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_32
# %bb.31:                               # %if.then283.1
	movq	%rbp, %rdi
	callq	*33152(%rbx)
	addl	%eax, %r14d
.LBB11_32:                              # %for.inc296.1
	leaq	160(%rsp), %r15
	movq	40(%rsp), %rbp                  # 8-byte Reload
	orq	$2, %rbp
	cmpl	$0, 16416(%rbx)
	je	.LBB11_34
# %bb.33:                               # %if.then.i597.2
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	movl	%r13d, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%rbp,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB11_36
	jmp	.LBB11_38
.LBB11_34:                              # %if.else.i600.2
	movq	%r13, %rdx
	shlq	$5, %rdx
	movq	3448(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3496(%rbx), %rdx
	movq	%r15, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%rbp,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB11_38
.LBB11_36:                              # %if.then265.2
	shlq	$5, %rbp
	addq	64(%rsp), %rbp                  # 8-byte Folded Reload
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r15, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, 28(%rsp)                    # 4-byte Folded Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_38
# %bb.37:                               # %if.then283.2
	movq	%rbp, %rdi
	callq	*33152(%rbx)
	addl	%eax, %r14d
.LBB11_38:                              # %for.inc296.2
	movl	%r14d, 8(%rsp)                  # 4-byte Spill
	leaq	192(%rsp), %rbp
	movq	40(%rsp), %r14                  # 8-byte Reload
	orq	$3, %r14
	cmpl	$0, 16416(%rbx)
	je	.LBB11_40
# %bb.39:                               # %if.then.i597.3
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	movl	$1, %edx
	movl	%r13d, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB11_42
.LBB11_43:                              # %if.then265.3
	shlq	$5, %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	%r14, %rax
	movq	%rax, %r14
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%rbp, %rdi
	movl	%r13d, %edx
	callq	*33120(%rbx)
	movl	$1, %r13d
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB11_44
# %bb.45:                               # %if.then283.3
	movq	%r14, %rdi
	callq	*33152(%rbx)
	movl	8(%rsp), %ecx                   # 4-byte Reload
	addl	%eax, %ecx
	jmp	.LBB11_46
.LBB11_40:                              # %if.else.i600.3
	movq	%r13, %rdx
	shlq	$5, %rdx
	movq	3448(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3496(%rbx), %rdx
	movq	%rbp, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%r14,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB11_43
.LBB11_42:
	movl	8(%rsp), %ecx                   # 4-byte Reload
	movl	28(%rsp), %r13d                 # 4-byte Reload
	jmp	.LBB11_46
.LBB11_44:
	movl	8(%rsp), %ecx                   # 4-byte Reload
.LBB11_46:                              # %for.inc296.3
	xorl	%ebp, %ebp
	cmpl	$4, %ecx
	cmovgel	%r13d, %ebp
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	cmovel	%r13d, %ebp
	testl	%ebp, %ebp
	je	.LBB11_48
# %bb.47:                               # %if.then306
	leaq	96(%rsp), %rsi
	movq	%r12, %rdi
	callq	*32944(%rbx)
	jmp	.LBB11_49
.LBB11_48:                              # %if.else309
	movq	80(%rsp), %rax                  # 8-byte Reload
	movw	$0, 25072(%rbx,%rax)
	movq	88(%rsp), %rax                  # 8-byte Reload
	orl	$2, %eax
	cltq
	movslq	x264_scan8(,%rax,4), %rax
	movw	$0, 25072(%rbx,%rax)
.LBB11_49:                              # %if.end328
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	72(%rsp), %r14                  # 8-byte Reload
.LBB11_50:                              # %if.end329
	movslq	25796(%rbx), %r15
	movq	56(%rsp), %rdx                  # 8-byte Reload
	shll	$2, %edx
	movl	48(%rsp), %eax                  # 4-byte Reload
	shll	$6, %eax
	movslq	%eax, %rdi
	leal	16(%r14), %eax
	movslq	%eax, %r13
	movq	21352(%rbx), %rsi
	addq	%rdx, %rsi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	addq	%rdi, %rsi
	movq	21400(%rbx), %r12
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	addq	%rdx, %r12
	addq	%rcx, %r12
	leaq	96(%rsp), %rdi
	movq	%r12, %rdx
	callq	*32912(%rbx)
	movw	$0, 96(%rsp)
	cmpl	$0, 16416(%rbx)
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	je	.LBB11_52
# %bb.51:                               # %if.then374
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$3, %edx
	movl	%r15d, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB11_53
.LBB11_52:                              # %if.else377
	shlq	$5, %r15
	movq	3464(%rbx), %rsi
	addq	%r15, %rsi
	addq	3512(%rbx), %r15
	leaq	96(%rsp), %rdi
	movq	%r15, %rdx
	callq	*33088(%rbx)
.LBB11_53:                              # %if.end389
	leaq	15600(%rbx), %r15
	movslq	x264_scan8(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB11_55
# %bb.54:                               # %if.then402
	movq	%r13, %rdi
	shlq	$5, %rdi
	addq	%r15, %rdi
	leaq	96(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	3368(%rbx), %rsi
	movq	%r14, %rdi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	*33120(%rbx)
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*32920(%rbx)
.LBB11_55:                              # %if.end421
	movq	%r15, %r14
	movq	21360(%rbx), %rsi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rsi
	addq	48(%rsp), %rsi                  # 8-byte Folded Reload
	addq	21408(%rbx), %rdx
	addq	32(%rsp), %rdx                  # 8-byte Folded Reload
	leaq	96(%rsp), %rdi
	movq	%rdx, %r15
	callq	*32912(%rbx)
	movw	$0, 96(%rsp)
	cmpl	$0, 16416(%rbx)
	je	.LBB11_57
# %bb.56:                               # %if.then374.1
	leaq	96(%rsp), %rsi
	movq	%rbx, %rdi
	movl	$3, %edx
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %ecx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8+16(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB11_60
.LBB11_59:                              # %if.then402.1
	addq	$4, %r13
	shlq	$5, %r13
	movq	%r14, %rdi
	addq	%r13, %rdi
	leaq	96(%rsp), %r14
	movq	%r14, %rsi
	callq	*33040(%rbx)
	movq	3368(%rbx), %rsi
	movq	%r14, %rdi
	movl	%r12d, %edx
	callq	*33120(%rbx)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*32920(%rbx)
.LBB11_60:                              # %if.end425
	movl	17400(%rbx), %eax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	shll	%cl, %ebp
	btrl	%ecx, %eax
	orl	%eax, %ebp
	movl	%ebp, 17400(%rbx)
	movl	$2, 17404(%rbx)
	addq	$232, %rsp
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
.LBB11_57:                              # %if.else377.1
	.cfi_def_cfa_offset 288
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdx
	shlq	$5, %rdx
	movq	3464(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3512(%rbx), %rdx
	leaq	96(%rsp), %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8+16(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB11_59
	jmp	.LBB11_60
.Lfunc_end11:
	.size	x264_macroblock_encode_p8x8, .Lfunc_end11-x264_macroblock_encode_p8x8
	.cfi_endproc
                                        # -- End function
	.globl	x264_macroblock_encode_p4x4     # -- Begin function x264_macroblock_encode_p4x4
	.p2align	4, 0x90
	.type	x264_macroblock_encode_p4x4,@function
x264_macroblock_encode_p4x4:            # @x264_macroblock_encode_p4x4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%esi, %r12d
	movq	%rdi, %rbx
	movslq	%esi, %r13
	movzbl	block_idx_xy_fenc(%r13), %esi
	addq	21344(%rdi), %rsi
	movzwl	block_idx_xy_fdec(%r13,%r13), %r14d
	addq	21392(%rdi), %r14
	cmpl	$0, 25812(%rdi)
	je	.LBB12_2
# %bb.1:                                # %if.then
	movq	%r13, %rax
	shlq	$5, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movq	%r14, %rdx
	callq	*33056(%rbx)
	movslq	x264_scan8(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	jmp	.LBB12_7
.LBB12_2:                               # %if.else
	movslq	25792(%rbx), %r15
	movq	%rsp, %rdi
	movq	%r14, %rdx
	callq	*32912(%rbx)
	cmpl	$0, 16416(%rbx)
	je	.LBB12_4
# %bb.3:                                # %if.then.i
	movq	%rsp, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	movl	%r15d, %ecx
	movl	$2, %r8d
	xorl	%r9d, %r9d
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	x264_quant_4x4_trellis@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movslq	x264_scan8(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	je	.LBB12_7
.LBB12_6:                               # %if.then35
	shlq	$5, %r13
	leaq	(%rbx,%r13), %rdi
	addq	$15600, %rdi                    # imm = 0x3CF0
	movq	%rsp, %r12
	movq	%r12, %rsi
	callq	*33040(%rbx)
	movq	3352(%rbx), %rsi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	*33120(%rbx)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	*32920(%rbx)
.LBB12_7:                               # %if.end47
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB12_4:                               # %if.else.i
	.cfi_def_cfa_offset 80
	movq	%r15, %rdx
	shlq	$5, %rdx
	movq	3448(%rbx), %rsi
	addq	%rdx, %rsi
	addq	3496(%rbx), %rdx
	movq	%rsp, %rdi
	callq	*33088(%rbx)
	movslq	x264_scan8(,%r13,4), %rcx
	movb	%al, 25072(%rbx,%rcx)
	testl	%eax, %eax
	jne	.LBB12_6
	jmp	.LBB12_7
.Lfunc_end12:
	.size	x264_macroblock_encode_p4x4, .Lfunc_end12-x264_macroblock_encode_p4x4
	.cfi_endproc
                                        # -- End function
	.type	block_idx_xy_fenc,@object       # @block_idx_xy_fenc
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
block_idx_xy_fenc:
	.ascii	"\000\004@D\b\fHL\200\204\300\304\210\214\310\314"
	.size	block_idx_xy_fenc, 16

	.type	block_idx_xy_fdec,@object       # @block_idx_xy_fdec
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
block_idx_xy_fdec:
	.short	0                               # 0x0
	.short	4                               # 0x4
	.short	128                             # 0x80
	.short	132                             # 0x84
	.short	8                               # 0x8
	.short	12                              # 0xc
	.short	136                             # 0x88
	.short	140                             # 0x8c
	.short	256                             # 0x100
	.short	260                             # 0x104
	.short	384                             # 0x180
	.short	388                             # 0x184
	.short	264                             # 0x108
	.short	268                             # 0x10c
	.short	392                             # 0x188
	.short	396                             # 0x18c
	.size	block_idx_xy_fdec, 32

	.type	x264_scan8,@object              # @x264_scan8
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_scan8:
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	14                              # 0xe
	.long	15                              # 0xf
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	36                              # 0x24
	.long	37                              # 0x25
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	38                              # 0x26
	.long	39                              # 0x27
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	17                              # 0x11
	.long	18                              # 0x12
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	41                              # 0x29
	.long	42                              # 0x2a
	.long	44                              # 0x2c
	.long	46                              # 0x2e
	.long	47                              # 0x2f
	.size	x264_scan8, 108

	.type	block_idx_x,@object             # @block_idx_x
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
block_idx_x:
	.ascii	"\000\001\000\001\002\003\002\003\000\001\000\001\002\003\002\003"
	.size	block_idx_x, 16

	.type	block_idx_y,@object             # @block_idx_y
	.p2align	4, 0x0
block_idx_y:
	.ascii	"\000\000\001\001\000\000\001\001\002\002\003\003\002\002\003\003"
	.size	block_idx_y, 16

	.type	x264_pred_i4x4_neighbors,@object # @x264_pred_i4x4_neighbors
	.section	.rodata.str1.1,"aMS",@progbits,1
x264_pred_i4x4_neighbors:
	.asciz	"\002\001\003\006\013\013\013\006\001\001\002"
	.size	x264_pred_i4x4_neighbors, 12

	.type	x264_dct8_weight2_tab,@object   # @x264_dct8_weight2_tab
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_dct8_weight2_tab:
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	256                             # 0x100
	.short	227                             # 0xe3
	.short	410                             # 0x19a
	.short	227                             # 0xe3
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	410                             # 0x19a
	.short	363                             # 0x16b
	.short	656                             # 0x290
	.short	363                             # 0x16b
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.short	227                             # 0xe3
	.short	201                             # 0xc9
	.short	363                             # 0x16b
	.short	201                             # 0xc9
	.size	x264_dct8_weight2_tab, 128

	.type	block_idx_yx_1d,@object         # @block_idx_yx_1d
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
block_idx_yx_1d:
	.ascii	"\000\004\001\005\b\f\t\r\002\006\003\007\n\016\013\017"
	.size	block_idx_yx_1d, 16

	.type	block_idx_xy_1d,@object         # @block_idx_xy_1d
	.p2align	4, 0x0
block_idx_xy_1d:
	.ascii	"\000\001\004\005\002\003\006\007\b\t\f\r\n\013\016\017"
	.size	block_idx_xy_1d, 16

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
