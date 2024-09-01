	.text
	.file	"set.c"
	.globl	x264_cqm_init                   # -- Begin function x264_cqm_init
	.p2align	4, 0x90
	.type	x264_cqm_init,@function
x264_cqm_init:                          # @x264_cqm_init
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
	subq	$8600, %rsp                     # imm = 0x2198
	.cfi_def_cfa_offset 8656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movl	472(%rdi), %ebp
	movl	$32, %r15d
	movl	$32, %eax
	subl	%ebp, %eax
	movl	%eax, 48(%rsp)
	movl	468(%rdi), %r14d
	subl	%r14d, %r15d
	movl	%r15d, 52(%rsp)
	movabsq	$47244640277, %rax              # imm = 0xB00000015
	movq	%rax, 56(%rsp)
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3440(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.1:                                # %do.body50
	movl	$384, %edi                      # imm = 0x180
	callq	x264_malloc@PLT
	movq	%rax, 3344(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.2:                                # %do.body67
	movl	$3328, %edi                     # imm = 0xD00
	callq	x264_malloc@PLT
	movq	%rax, 3392(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.3:                                # %do.body123
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3488(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.4:                                # %for.body10.lr.ph.1
	movq	3328(%rbx), %rcx
	movq	80(%rcx), %rdx
	movl	$418, %eax                      # imm = 0x1A2
	movdqu	(%rdx), %xmm0
	.p2align	4, 0x90
.LBB0_5:                                # %for.body10.1
                                        # =>This Inner Loop Header: Depth=1
	movq	-3272(%rcx,%rax,8), %rdx
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	je	.LBB0_136
# %bb.6:                                # %for.cond8.1
                                        #   in Loop: Header=BB0_5 Depth=1
	incq	%rax
	cmpq	$419, %rax                      # imm = 0x1A3
	jne	.LBB0_5
# %bb.7:                                # %do.body.1
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3448(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.8:                                # %do.body50.1
	movl	$384, %edi                      # imm = 0x180
	callq	x264_malloc@PLT
	movq	%rax, 3352(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.9:                                # %do.body67.1
	movl	$3328, %edi                     # imm = 0xD00
	callq	x264_malloc@PLT
	movq	%rax, 3400(%rbx)
	testq	%rax, %rax
	jne	.LBB0_10
	jmp	.LBB0_45
.LBB0_136:                              # %if.then19.1
	movq	96(%rbx,%rax,8), %rcx
	movq	%rcx, 3448(%rbx)
	movq	(%rbx,%rax,8), %rcx
	movq	%rcx, 3352(%rbx)
	movq	48(%rbx,%rax,8), %rax
	movq	%rax, 3400(%rbx)
.LBB0_10:                               # %for.body88.lr.ph.1
	movl	$436, %eax                      # imm = 0x1B4
	movl	52(%rsp), %ecx
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_13:                               # %for.inc111.1
                                        #   in Loop: Header=BB0_11 Depth=1
	incq	%rax
	cmpq	$437, %rax                      # imm = 0x1B5
	je	.LBB0_14
.LBB0_11:                               # %for.body88.1
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -1696(%rsp,%rax,4)
	jne	.LBB0_13
# %bb.12:                               # %land.lhs.true.1
                                        #   in Loop: Header=BB0_11 Depth=1
	movq	3328(%rbx), %rdx
	movq	80(%rdx), %rsi
	movq	-3416(%rdx,%rax,8), %rdx
	movdqu	(%rsi), %xmm0
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	jne	.LBB0_13
# %bb.137:                              # %if.then116.1
	movq	(%rbx,%rax,8), %rax
	movq	%rax, 3496(%rbx)
	jmp	.LBB0_15
.LBB0_14:                               # %do.body123.1
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3496(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
.LBB0_15:                               # %for.body10.lr.ph.2
	movq	3328(%rbx), %rcx
	movq	88(%rcx), %rdx
	movl	$418, %eax                      # imm = 0x1A2
	movdqu	(%rdx), %xmm0
	.p2align	4, 0x90
.LBB0_16:                               # %for.body10.2
                                        # =>This Inner Loop Header: Depth=1
	movq	-3272(%rcx,%rax,8), %rdx
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	je	.LBB0_138
# %bb.17:                               # %for.cond8.2
                                        #   in Loop: Header=BB0_16 Depth=1
	incq	%rax
	cmpq	$420, %rax                      # imm = 0x1A4
	jne	.LBB0_16
# %bb.18:                               # %do.body.2
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3456(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.19:                               # %do.body50.2
	movl	$384, %edi                      # imm = 0x180
	callq	x264_malloc@PLT
	movq	%rax, 3360(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.20:                               # %do.body67.2
	movl	$3328, %edi                     # imm = 0xD00
	callq	x264_malloc@PLT
	movq	%rax, 3408(%rbx)
	testq	%rax, %rax
	jne	.LBB0_21
	jmp	.LBB0_45
.LBB0_138:                              # %if.then19.2
	movq	96(%rbx,%rax,8), %rcx
	movq	%rcx, 3456(%rbx)
	movq	(%rbx,%rax,8), %rcx
	movq	%rcx, 3360(%rbx)
	movq	48(%rbx,%rax,8), %rax
	movq	%rax, 3408(%rbx)
.LBB0_21:                               # %for.body88.lr.ph.2
	movl	$436, %eax                      # imm = 0x1B4
	movl	56(%rsp), %ecx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_24:                               # %for.inc111.2
                                        #   in Loop: Header=BB0_22 Depth=1
	incq	%rax
	cmpq	$438, %rax                      # imm = 0x1B6
	je	.LBB0_25
.LBB0_22:                               # %for.body88.2
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -1696(%rsp,%rax,4)
	jne	.LBB0_24
# %bb.23:                               # %land.lhs.true.2
                                        #   in Loop: Header=BB0_22 Depth=1
	movq	3328(%rbx), %rdx
	movq	88(%rdx), %rsi
	movq	-3416(%rdx,%rax,8), %rdx
	movdqu	(%rsi), %xmm0
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	jne	.LBB0_24
# %bb.139:                              # %if.then116.2
	movq	(%rbx,%rax,8), %rax
	movq	%rax, 3504(%rbx)
	jmp	.LBB0_26
.LBB0_25:                               # %do.body123.2
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3504(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
.LBB0_26:                               # %for.body10.lr.ph.3
	movq	3328(%rbx), %rcx
	movq	96(%rcx), %rdx
	movl	$418, %eax                      # imm = 0x1A2
	movdqu	(%rdx), %xmm0
	.p2align	4, 0x90
.LBB0_27:                               # %for.body10.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-3272(%rcx,%rax,8), %rdx
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	je	.LBB0_140
# %bb.28:                               # %for.cond8.3
                                        #   in Loop: Header=BB0_27 Depth=1
	incq	%rax
	cmpq	$421, %rax                      # imm = 0x1A5
	jne	.LBB0_27
# %bb.29:                               # %do.body.3
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3464(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.30:                               # %do.body50.3
	movl	$384, %edi                      # imm = 0x180
	callq	x264_malloc@PLT
	movq	%rax, 3368(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.31:                               # %do.body67.3
	movl	$3328, %edi                     # imm = 0xD00
	callq	x264_malloc@PLT
	movq	%rax, 3416(%rbx)
	testq	%rax, %rax
	jne	.LBB0_32
	jmp	.LBB0_45
.LBB0_140:                              # %if.then19.3
	movq	96(%rbx,%rax,8), %rcx
	movq	%rcx, 3464(%rbx)
	movq	(%rbx,%rax,8), %rcx
	movq	%rcx, 3368(%rbx)
	movq	48(%rbx,%rax,8), %rax
	movq	%rax, 3416(%rbx)
.LBB0_32:                               # %for.body88.lr.ph.3
	movl	$436, %eax                      # imm = 0x1B4
	movl	60(%rsp), %ecx
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_35:                               # %for.inc111.3
                                        #   in Loop: Header=BB0_33 Depth=1
	incq	%rax
	cmpq	$439, %rax                      # imm = 0x1B7
	je	.LBB0_36
.LBB0_33:                               # %for.body88.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, -1696(%rsp,%rax,4)
	jne	.LBB0_35
# %bb.34:                               # %land.lhs.true.3
                                        #   in Loop: Header=BB0_33 Depth=1
	movq	3328(%rbx), %rdx
	movq	96(%rdx), %rsi
	movq	-3416(%rdx,%rax,8), %rdx
	movdqu	(%rsi), %xmm0
	movdqu	(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	cmpl	$65535, %edx                    # imm = 0xFFFF
	jne	.LBB0_35
# %bb.141:                              # %if.then116.3
	movq	(%rbx,%rax,8), %rax
	movq	%rax, 3512(%rbx)
	jmp	.LBB0_37
.LBB0_36:                               # %do.body123.3
	movl	$1664, %edi                     # imm = 0x680
	callq	x264_malloc@PLT
	movq	%rax, 3512(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
.LBB0_37:                               # %for.inc143.3
	movl	$6656, %edi                     # imm = 0x1A00
	callq	x264_malloc@PLT
	movq	%rax, 3472(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.38:                               # %do.body217
	movl	$1536, %edi                     # imm = 0x600
	callq	x264_malloc@PLT
	movq	%rax, 3376(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.39:                               # %do.body234
	movl	$13312, %edi                    # imm = 0x3400
	callq	x264_malloc@PLT
	movq	%rax, 3424(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.40:                               # %do.body291
	movl	$6656, %edi                     # imm = 0x1A00
	callq	x264_malloc@PLT
	movq	%rax, 3520(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.41:                               # %for.body160.peel.1
	movq	3328(%rbx), %rax
	movq	104(%rax), %rsi
	movq	112(%rax), %rdi
	movl	$64, %edx
	callq	bcmp@PLT
	testl	%eax, %eax
	je	.LBB0_48
# %bb.42:                               # %do.body200.1
	movl	$6656, %edi                     # imm = 0x1A00
	callq	x264_malloc@PLT
	movq	%rax, 3480(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.43:                               # %do.body217.1
	movl	$1536, %edi                     # imm = 0x600
	callq	x264_malloc@PLT
	movq	%rax, 3384(%rbx)
	testq	%rax, %rax
	je	.LBB0_45
# %bb.44:                               # %do.body234.1
	movl	$13312, %edi                    # imm = 0x3400
	callq	x264_malloc@PLT
	movq	%rax, 3432(%rbx)
	testq	%rax, %rax
	jne	.LBB0_49
	jmp	.LBB0_45
.LBB0_48:                               # %if.then182.1
	movq	3472(%rbx), %rax
	movq	%rax, 3480(%rbx)
	movq	3376(%rbx), %rax
	movq	3424(%rbx), %rcx
	movq	%rax, 3384(%rbx)
	movq	%rcx, 3432(%rbx)
.LBB0_49:                               # %for.body255.lr.ph.1
	cmpl	%ebp, %r14d
	jne	.LBB0_52
# %bb.50:                               # %for.body255.lr.ph.split.us.1
	movq	3328(%rbx), %rax
	movq	104(%rax), %rsi
	movq	112(%rax), %rdi
	movl	$64, %edx
	callq	bcmp@PLT
	testl	%eax, %eax
	je	.LBB0_51
.LBB0_52:                               # %do.body291.1
	movl	$6656, %edi                     # imm = 0x1A00
	callq	x264_malloc@PLT
	movq	%rax, 3528(%rbx)
	testq	%rax, %rax
	jne	.LBB0_53
.LBB0_45:                               # %fail
	movq	%rbx, %rdi
	callq	x264_cqm_delete
.LBB0_46:                               # %cleanup833
	movl	$-1, %eax
.LBB0_47:                               # %cleanup833
	addq	$8600, %rsp                     # imm = 0x2198
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
.LBB0_51:                               # %if.then284.split.us.1
	.cfi_def_cfa_offset 8656
	movq	3520(%rbx), %rax
	movq	%rax, 3528(%rbx)
.LBB0_53:                               # %for.cond325.preheader.preheader
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	leaq	3996(%rsp), %rax
	leaq	2460(%rsp), %rcx
	xorl	%edx, %edx
.LBB0_54:                               # %for.cond325.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_55 Depth 2
	movzbl	dequant4_scale(%rdx,%rdx,2), %edi
	movq	%rdx, %rsi
	shlq	$6, %rsi
	movl	%edi, 144(%rsp,%rsi)
	leaq	(%rdx,%rdx), %r8
	movzwl	quant4_scale(%r8,%r8,2), %r9d
	movl	%r9d, 528(%rsp,%rsi)
	movzbl	dequant4_scale+1(%rdx,%rdx,2), %r10d
	movl	%r10d, 148(%rsp,%rsi)
	movzwl	quant4_scale+2(%r8,%r8,2), %r11d
	movl	%r11d, 532(%rsp,%rsi)
	movl	%edi, 152(%rsp,%rsi)
	movl	%r9d, 536(%rsp,%rsi)
	movl	%r10d, 156(%rsp,%rsi)
	movl	%r11d, 540(%rsp,%rsi)
	movl	%r10d, 160(%rsp,%rsi)
	movl	%r11d, 544(%rsp,%rsi)
	movzbl	dequant4_scale+2(%rdx,%rdx,2), %ebp
	movl	%ebp, 164(%rsp,%rsi)
	movzwl	quant4_scale+4(%r8,%r8,2), %r8d
	movl	%r8d, 548(%rsp,%rsi)
	movl	%r10d, 168(%rsp,%rsi)
	movl	%r11d, 552(%rsp,%rsi)
	movl	%ebp, 172(%rsp,%rsi)
	movl	%r8d, 556(%rsp,%rsi)
	movl	%edi, 176(%rsp,%rsi)
	movl	%r9d, 560(%rsp,%rsi)
	movl	%r10d, 180(%rsp,%rsi)
	movl	%r11d, 564(%rsp,%rsi)
	movl	%edi, 184(%rsp,%rsi)
	movl	%r9d, 568(%rsp,%rsi)
	movl	%r10d, 188(%rsp,%rsi)
	movl	%r11d, 572(%rsp,%rsi)
	movl	%r10d, 192(%rsp,%rsi)
	movl	%r11d, 576(%rsp,%rsi)
	movl	%ebp, 196(%rsp,%rsi)
	movl	%r8d, 580(%rsp,%rsi)
	movl	%r10d, 200(%rsp,%rsi)
	movl	%r11d, 584(%rsp,%rsi)
	movl	%ebp, 204(%rsp,%rsi)
	movl	%r8d, 588(%rsp,%rsi)
	movl	$64, %esi
	leaq	(%rdx,%rdx,2), %rdi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB0_55:                               # %vector.body
                                        #   Parent Loop BB0_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r8d, %r9d
	andl	$12, %r9d
	movzbl	quant8_scan(%r9), %r10d
	movzbl	quant8_scan+1(%r9), %r11d
	movzbl	quant8_scan+2(%r9), %r14d
	movzbl	quant8_scan+3(%r9), %r9d
	movzbl	dequant8_scale(%r10,%rdi,2), %ebp
	movzbl	dequant8_scale(%r11,%rdi,2), %r15d
	movzbl	dequant8_scale(%r14,%rdi,2), %r12d
	movzbl	dequant8_scale(%r9,%rdi,2), %r13d
	movl	%ebp, -12(%rcx,%r8,8)
	movl	%r15d, -8(%rcx,%r8,8)
	movl	%r12d, -4(%rcx,%r8,8)
	movl	%r13d, (%rcx,%r8,8)
	addl	%r10d, %r10d
	addl	%r11d, %r11d
	addl	%r14d, %r14d
	addl	%r9d, %r9d
	movzwl	quant8_scale(%r10,%rdi,4), %r10d
	movzwl	quant8_scale(%r11,%rdi,4), %r11d
	movzwl	quant8_scale(%r14,%rdi,4), %ebp
	movzwl	quant8_scale(%r9,%rdi,4), %r9d
	movl	%r10d, -12(%rax,%r8,8)
	movl	%r11d, -8(%rax,%r8,8)
	movl	%ebp, -4(%rax,%r8,8)
	movl	%r9d, (%rax,%r8,8)
	addq	$2, %r8
	addq	$-4, %rsi
	jne	.LBB0_55
# %bb.56:                               # %for.cond.cleanup359
                                        #   in Loop: Header=BB0_54 Depth=1
	incq	%rdx
	addq	$256, %rax                      # imm = 0x100
	addq	$256, %rcx                      # imm = 0x100
	cmpq	$6, %rdx
	jne	.LBB0_54
# %bb.57:                               # %for.cond395.preheader
	movq	3328(%rbx), %r15
	leaq	1296(%rsp), %rax
	leaq	1680(%rsp), %rcx
	leaq	2064(%rsp), %rdx
	leaq	528(%rsp), %r8
	leaq	144(%rsp), %r9
	leaq	3984(%rsp), %r10
	leaq	2448(%rsp), %r11
	leaq	7056(%rsp), %r14
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	xorl	%ebp, %ebp
.LBB0_58:                               # %for.cond400.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_59 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_69 Depth 2
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	72(%r15), %rsi
	movq	%rbp, %r15
	shlq	$6, %r15
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_59:                               # %for.body410
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rsp,%r15), %rax
	addq	$144, %rax
	movzbl	(%rsi,%rcx), %edx
	imull	(%rax,%rcx,4), %edx
	movq	3344(%rbx), %rax
	addq	%r15, %rax
	movl	%edx, (%rax,%rcx,4)
	leaq	(%rsp,%r15), %rax
	addq	$528, %rax                      # imm = 0x210
	movl	(%rax,%rcx,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %rdi
	movq	72(%rdi), %rsi
	movzbl	(%rsi,%rcx), %r10d
	movl	%r10d, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%r10d
	leaq	(%rsp,%r15), %rdx
	addq	$912, %rdx                      # imm = 0x390
	movl	%eax, (%rdx,%rcx,4)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_59
# %bb.60:                               # %for.cond.cleanup409
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	80(%rdi), %rsi
	xorl	%ecx, %ecx
	movq	24(%rsp), %r10                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_61:                               # %for.body410.1
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx), %eax
	imull	(%r9,%rcx,4), %eax
	movq	3352(%rbx), %rdx
	addq	%r13, %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	(%r8,%rcx,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %rdi
	movq	80(%rdi), %rsi
	movzbl	(%rsi,%rcx), %r15d
	movl	%r15d, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%r15d
	movl	%eax, (%r10,%rcx,4)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_61
# %bb.62:                               # %for.cond.cleanup409.1
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	88(%rdi), %rsi
	xorl	%ecx, %ecx
	movq	16(%rsp), %r10                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_63:                               # %for.body410.2
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx), %eax
	imull	(%r9,%rcx,4), %eax
	movq	3360(%rbx), %rdx
	addq	%r13, %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	(%r8,%rcx,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %rdi
	movq	88(%rdi), %rsi
	movzbl	(%rsi,%rcx), %r15d
	movl	%r15d, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%r15d
	movl	%eax, (%r10,%rcx,4)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_63
# %bb.64:                               # %for.cond.cleanup409.2
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	96(%rdi), %rsi
	xorl	%ecx, %ecx
	movq	40(%rsp), %r10                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_65:                               # %for.body410.3
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx), %eax
	imull	(%r9,%rcx,4), %eax
	movq	3368(%rbx), %rdx
	addq	%r13, %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	(%r8,%rcx,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %rdi
	movq	96(%rdi), %rsi
	movzbl	(%rsi,%rcx), %r15d
	movl	%r15d, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%r15d
	movl	%eax, (%r10,%rcx,4)
	incq	%rcx
	cmpq	$16, %rcx
	jne	.LBB0_65
# %bb.66:                               # %for.cond.cleanup409.3
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	104(%rdi), %rcx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_67:                               # %for.body476
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	shlq	$8, %rdi
	leaq	(%rsp,%rdi), %rax
	addq	$2448, %rax                     # imm = 0x990
	movzbl	(%rcx,%r15), %ecx
	imull	(%rax,%r15,4), %ecx
	movq	3376(%rbx), %rax
	addq	%rdi, %rax
	movl	%ecx, (%rax,%r15,4)
	leaq	(%rsp,%rdi), %rax
	addq	$3984, %rax                     # imm = 0xF90
	movl	(%rax,%r15,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %rsi
	movq	104(%rsi), %rcx
	movzbl	(%rcx,%r15), %r10d
	movl	%r10d, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%r10d
	leaq	(%rsp,%rdi), %rdx
	addq	$5520, %rdx                     # imm = 0x1590
	movl	%eax, (%rdx,%r15,4)
	incq	%r15
	cmpq	$64, %r15
	jne	.LBB0_67
# %bb.68:                               # %for.cond.cleanup475
                                        #   in Loop: Header=BB0_58 Depth=1
	movq	112(%rsi), %rsi
	xorl	%ecx, %ecx
	movq	32(%rsp), %r10                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_69:                               # %for.body476.1
                                        #   Parent Loop BB0_58 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rsi,%rcx), %eax
	imull	(%r11,%rcx,4), %eax
	movq	3384(%rbx), %rdx
	addq	%r12, %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	(%r10,%rcx,4), %edx
	shll	$4, %edx
	movq	3328(%rbx), %r15
	movq	112(%r15), %rsi
	movzbl	(%rsi,%rcx), %edi
	movl	%edi, %eax
	shrl	%eax
	addl	%edx, %eax
	cltd
	idivl	%edi
	movl	%eax, (%r14,%rcx,4)
	incq	%rcx
	cmpq	$64, %rcx
	jne	.LBB0_69
# %bb.70:                               # %for.cond.cleanup475.1
                                        #   in Loop: Header=BB0_58 Depth=1
	incq	%rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	$64, %rax
	addq	$64, %r8
	addq	$64, %r13
	addq	$64, %r9
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	$64, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	$64, %rdx
	addq	$256, %r14                      # imm = 0x100
	addq	$256, %r10                      # imm = 0x100
	addq	$256, %r12                      # imm = 0x100
	addq	$256, %r11                      # imm = 0x100
	cmpq	$6, %rbp
	jne	.LBB0_58
# %bb.71:                               # %for.cond540.preheader
	movl	48(%rsp), %eax
	shll	$10, %eax
	movl	%eax, 40(%rsp)                  # 4-byte Spill
	shll	$10, 12(%rsp)                   # 4-byte Folded Spill
	leaq	1296(%rsp), %r12
	leaq	1680(%rsp), %rdi
	leaq	2064(%rsp), %r11
	movl	$-1, %r8d
	leaq	7056(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	$0, 64(%rsp)                    # 8-byte Folded Spill
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	movq	$0, 80(%rsp)                    # 8-byte Folded Spill
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%esi, %esi
	movl	$-1, %r9d
	jmp	.LBB0_72
.LBB0_90:                               #   in Loop: Header=BB0_72 Depth=1
	movq	64(%rsp), %r12                  # 8-byte Reload
.LBB0_130:                              # %if.end795
                                        #   in Loop: Header=BB0_72 Depth=1
	incq	%rsi
	addq	$32, 16(%rsp)                   # 8-byte Folded Spill
	addq	$64, 80(%rsp)                   # 8-byte Folded Spill
	movq	%r12, %rax
	movq	136(%rsp), %r12                 # 8-byte Reload
	addq	$64, %r12
	movq	128(%rsp), %rdi                 # 8-byte Reload
	addq	$64, %rdi
	movq	120(%rsp), %r11                 # 8-byte Reload
	addq	$64, %r11
	subq	$-128, 32(%rsp)                 # 8-byte Folded Spill
	addq	$256, %rax                      # imm = 0x100
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	addq	$256, 88(%rsp)                  # 8-byte Folded Spill
                                        # imm = 0x100
	cmpq	$52, %rsi
	je	.LBB0_91
.LBB0_72:                               # %for.cond547.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_114 Depth 2
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_79 Depth 3
                                        #     Child Loop BB0_97 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_105 Depth 2
	movq	%rsi, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	mulq	%rcx
	shrq	$2, %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	shlq	$7, %rax
	leaq	(%rax,%rax,2), %rax
	leaq	912(%rsp), %r10
	subq	%rax, %r10
	movl	%esi, %edx
	movl	$2863311531, %ecx               # imm = 0xAAAAAAAB
	imulq	%rcx, %rdx
	shrq	$34, %rdx
	leal	23(%rdx), %ecx
	movl	$1, %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r14
	leal	-1(%rdx), %ecx
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%edx, %ecx
	addb	$-2, %cl
	movl	$1, %ebp
	shll	%cl, %ebp
	cmpq	$11, %rsi
	movq	%r12, 136(%rsp)                 # 8-byte Spill
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	%r11, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	ja	.LBB0_73
# %bb.76:                               # %for.cond553.preheader.us.preheader
                                        #   in Loop: Header=BB0_72 Depth=1
	movl	$1, %ecx
	subl	%edx, %ecx
	xorl	%edi, %edi
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_77 Depth=2
	movl	12(%rsp), %r13d                 # 4-byte Reload
	incq	%rdi
	addq	$384, %r10                      # imm = 0x180
	cmpq	$4, %rdi
	je	.LBB0_89
.LBB0_77:                               # %for.cond553.preheader.us
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_79 Depth 3
	movl	48(%rsp,%rdi,4), %r12d
	shll	$10, %r12d
	movl	$16, %r15d
	cmpq	$2, %rdi
	jae	.LBB0_81
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=2
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB0_79
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_79 Depth=3
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r11
.LBB0_87:                               #   in Loop: Header=BB0_79 Depth=3
	movq	3392(%rbx,%rdi,8), %rdx
	movl	%eax, (%rdx,%r13,2)
	shll	%cl, %r11d
	movq	3440(%rbx,%rdi,8), %rax
	movw	%r11w, (%rax,%r13)
	movl	%r11d, %eax
	sarl	%eax
	addl	%r12d, %eax
	cltd
	idivl	%r11d
	movl	%eax, %ebp
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r11d
	cmpl	%eax, %ebp
	cmovll	%ebp, %eax
	movq	3488(%rbx,%rdi,8), %rdx
	movw	%ax, (%rdx,%r13)
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovgel	%eax, %r8d
	addq	$2, %r13
	decq	%r15
	je	.LBB0_88
.LBB0_79:                               # %for.body557.us.us
                                        #   Parent Loop BB0_72 Depth=1
                                        #     Parent Loop BB0_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%r10,%r13,2), %r11
	movq	%r14, %rax
	orq	%r11, %rax
	shrq	$32, %rax
	jne	.LBB0_86
# %bb.80:                               #   in Loop: Header=BB0_79 Depth=3
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%r11d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_77 Depth=2
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_83:                               #   in Loop: Header=BB0_82 Depth=3
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%r11d
                                        # kill: def $eax killed $eax def $rax
.LBB0_85:                               #   in Loop: Header=BB0_82 Depth=3
	movq	3392(%rbx,%rdi,8), %rdx
	movl	%eax, (%rdx,%r13,2)
	shll	%cl, %r11d
	movq	3440(%rbx,%rdi,8), %rax
	movw	%r11w, (%rax,%r13)
	movl	%r11d, %eax
	sarl	%eax
	addl	%r12d, %eax
	cltd
	idivl	%r11d
	movl	%eax, %ebp
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r11d
	cmpl	%eax, %ebp
	cmovll	%ebp, %eax
	movq	3488(%rbx,%rdi,8), %rdx
	movw	%ax, (%rdx,%r13)
	cmpl	%r9d, %esi
	movl	%r9d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovgel	%eax, %r9d
	addq	$2, %r13
	decq	%r15
	je	.LBB0_88
.LBB0_82:                               # %for.body557.us.us.us
                                        #   Parent Loop BB0_72 Depth=1
                                        #     Parent Loop BB0_77 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%r10,%r13,2), %r11
	movq	%r14, %rax
	orq	%r11, %rax
	shrq	$32, %rax
	je	.LBB0_83
# %bb.84:                               #   in Loop: Header=BB0_82 Depth=3
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r11
	jmp	.LBB0_85
.LBB0_73:                               #   in Loop: Header=BB0_72 Depth=1
	subq	%rax, %r11
	movq	%r11, 96(%rsp)                  # 8-byte Spill
	subq	%rax, %rdi
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	subq	%rax, %r12
	movl	$16, %r15d
	movq	16(%rsp), %r13                  # 8-byte Reload
	movq	80(%rsp), %r11                  # 8-byte Reload
	jmp	.LBB0_74
	.p2align	4, 0x90
.LBB0_123:                              #   in Loop: Header=BB0_74 Depth=2
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%rdi
.LBB0_124:                              #   in Loop: Header=BB0_74 Depth=2
	movq	3392(%rbx), %rcx
	movl	%eax, (%rcx,%r13,2)
	addl	%ebp, %edi
	movl	24(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %edi
	movq	3440(%rbx), %rax
	movw	%di, (%rax,%r13)
	movl	%edi, %eax
	sarl	%eax
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	cltd
	idivl	%edi
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%edi
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3488(%rbx), %rcx
	movw	%ax, (%rcx,%r13)
	movslq	%r8d, %rax
	cmpq	%rax, %rsi
	movl	%eax, %r8d
	cmovgl	%esi, %r8d
	cmpl	$65536, %edi                    # imm = 0x10000
	cmovll	%eax, %r8d
	addq	$2, %r13
	decq	%r15
	je	.LBB0_125
.LBB0_74:                               # %for.body557
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r10,%r13,2), %rdi
	movq	%r14, %rax
	orq	%rdi, %rax
	shrq	$32, %rax
	jne	.LBB0_123
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_124
.LBB0_125:                              #   in Loop: Header=BB0_72 Depth=1
	xorl	%r10d, %r10d
	movl	12(%rsp), %r13d                 # 4-byte Reload
	jmp	.LBB0_109
	.p2align	4, 0x90
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=2
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r15
.LBB0_112:                              #   in Loop: Header=BB0_109 Depth=2
	movq	3400(%rbx), %rdx
	addl	%ebp, %r15d
	movl	24(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r15d
	addq	%r11, %rdx
	movl	%eax, (%rdx,%r10,2)
	movq	3448(%rbx), %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rax
	movw	%r15w, (%r10,%rax)
	movl	%r15d, %eax
	sarl	%eax
	addl	%r13d, %eax
	cltd
	idivl	%r15d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r15d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3496(%rbx), %rcx
	addq	%rdi, %rcx
	movw	%ax, (%r10,%rcx)
	movslq	%r8d, %rax
	cmpq	%rax, %rsi
	movl	%eax, %r8d
	cmovgl	%esi, %r8d
	cmpl	$65536, %r15d                   # imm = 0x10000
	cmovll	%eax, %r8d
	addq	$2, %r10
	cmpq	$32, %r10
	je	.LBB0_113
.LBB0_109:                              # %for.body557.1
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r12,%r10,2), %r15
	movq	%r14, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	jne	.LBB0_111
# %bb.110:                              #   in Loop: Header=BB0_109 Depth=2
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_112
.LBB0_113:                              #   in Loop: Header=BB0_72 Depth=1
	xorl	%r10d, %r10d
	movq	96(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB0_114
	.p2align	4, 0x90
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=2
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r15
.LBB0_117:                              #   in Loop: Header=BB0_114 Depth=2
	movq	3408(%rbx), %rdx
	addl	%ebp, %r15d
	movl	24(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r15d
	addq	%r11, %rdx
	movl	%eax, (%rdx,%r10,2)
	movq	3456(%rbx), %rax
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	%rdi, %rax
	movw	%r15w, (%r10,%rax)
	movl	%r15d, %eax
	sarl	%eax
	addl	$21504, %eax                    # imm = 0x5400
	cltd
	idivl	%r15d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r15d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3504(%rbx), %rcx
	addq	%rdi, %rcx
	movw	%ax, (%r10,%rcx)
	movslq	%r9d, %rax
	cmpq	%rax, %rsi
	movl	%esi, %r9d
	cmovlel	%eax, %r9d
	cmpl	$65536, %r15d                   # imm = 0x10000
	cmovll	%eax, %r9d
	addq	$2, %r10
	cmpq	$32, %r10
	je	.LBB0_118
.LBB0_114:                              # %for.body557.2
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movslq	(%rax,%r10,2), %r15
	movq	%r14, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	jne	.LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_114 Depth=2
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_117
.LBB0_118:                              #   in Loop: Header=BB0_72 Depth=1
	xorl	%edi, %edi
	jmp	.LBB0_119
	.p2align	4, 0x90
.LBB0_121:                              #   in Loop: Header=BB0_119 Depth=2
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r10
.LBB0_122:                              #   in Loop: Header=BB0_119 Depth=2
	movq	3416(%rbx), %rdx
	addl	%ebp, %r10d
	movl	24(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %r10d
	addq	%r11, %rdx
	movl	%eax, (%rdx,%rdi,2)
	movq	3464(%rbx), %rax
	movq	16(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %rax
	movw	%r10w, (%rdi,%rax)
	movl	%r10d, %eax
	sarl	%eax
	addl	$11264, %eax                    # imm = 0x2C00
	cltd
	idivl	%r10d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r10d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3512(%rbx), %rcx
	addq	%r15, %rcx
	movw	%ax, (%rdi,%rcx)
	movslq	%r9d, %rax
	cmpq	%rax, %rsi
	movl	%esi, %r9d
	cmovlel	%eax, %r9d
	cmpl	$65536, %r10d                   # imm = 0x10000
	cmovll	%eax, %r9d
	addq	$2, %rdi
	cmpq	$32, %rdi
	je	.LBB0_89
.LBB0_119:                              # %for.body557.3
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r12,%rdi,2), %r10
	movq	%r14, %rax
	orq	%r10, %rax
	shrq	$32, %rax
	jne	.LBB0_121
# %bb.120:                              #   in Loop: Header=BB0_119 Depth=2
	movl	%r14d, %eax
	xorl	%edx, %edx
	divl	%r10d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_122
.LBB0_89:                               # %for.cond.cleanup550
                                        #   in Loop: Header=BB0_72 Depth=1
	cmpl	$0, 392(%rbx)
	je	.LBB0_90
# %bb.95:                               # %for.cond681.preheader
                                        #   in Loop: Header=BB0_72 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	shlq	$9, %rax
	leaq	(%rax,%rax,2), %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	subq	%rax, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r14                 # 8-byte Reload
	leal	24(%r14), %ecx
	movl	$1, %r10d
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r10
	movl	$1, %edi
	movl	24(%rsp), %ecx                  # 4-byte Reload
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	leaq	5520(%rsp), %r11
	subq	%rax, %r11
	movl	$64, %r12d
	cmpq	$5, %rsi
	ja	.LBB0_96
# %bb.99:                               #   in Loop: Header=BB0_72 Depth=1
	negl	%r14d
	movq	32(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_100
.LBB0_102:                              #   in Loop: Header=BB0_100 Depth=2
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r15
.LBB0_103:                              #   in Loop: Header=BB0_100 Depth=2
	movq	3424(%rbx), %rcx
	movl	%eax, (%rcx,%rdi,2)
	movl	%r14d, %ecx
	shll	%cl, %r15d
	movq	3472(%rbx), %rax
	movw	%r15w, (%rax,%rdi)
	movl	%r15d, %eax
	sarl	%eax
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	cltd
	idivl	%r15d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r15d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3520(%rbx), %rcx
	movw	%ax, (%rcx,%rdi)
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r15d                   # imm = 0x10000
	cmovgel	%eax, %r8d
	addq	$2, %rdi
	decq	%r12
	je	.LBB0_104
.LBB0_100:                              # %for.body691.us.us
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r11,%rdi,2), %r15
	movq	%r10, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	jne	.LBB0_102
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=2
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_103
.LBB0_96:                               #   in Loop: Header=BB0_72 Depth=1
	movq	32(%rsp), %r15                  # 8-byte Reload
	jmp	.LBB0_97
.LBB0_131:                              #   in Loop: Header=BB0_97 Depth=2
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r13
.LBB0_132:                              #   in Loop: Header=BB0_97 Depth=2
	movq	3424(%rbx), %rcx
	movl	%eax, (%rcx,%r15,2)
	addl	%edi, %r13d
	movl	%r14d, %ecx
	sarl	%cl, %r13d
	movq	3472(%rbx), %rax
	movw	%r13w, (%rax,%r15)
	movl	%r13d, %eax
	sarl	%eax
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	cltd
	idivl	%r13d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r13d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3520(%rbx), %rcx
	movw	%ax, (%rcx,%r15)
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r13d                   # imm = 0x10000
	cmovgel	%eax, %r8d
	addq	$2, %r15
	decq	%r12
	je	.LBB0_133
.LBB0_97:                               # %for.body691
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r11,%r15,2), %r13
	movq	%r10, %rax
	orq	%r13, %rax
	shrq	$32, %rax
	jne	.LBB0_131
# %bb.98:                               #   in Loop: Header=BB0_97 Depth=2
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r13d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_132
.LBB0_104:                              #   in Loop: Header=BB0_72 Depth=1
	xorl	%edi, %edi
	movq	64(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB0_105
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=2
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r11
.LBB0_108:                              #   in Loop: Header=BB0_105 Depth=2
	movq	%r14, %rcx
	movq	3432(%rbx), %rdx
	addq	%r12, %rdx
	movl	%eax, (%rdx,%rdi,2)
                                        # kill: def $cl killed $cl killed $rcx
	shll	%cl, %r11d
	movq	3480(%rbx), %rax
	movq	32(%rsp), %r15                  # 8-byte Reload
	addq	%r15, %rax
	movw	%r11w, (%rdi,%rax)
	movl	%r11d, %eax
	sarl	%eax
	addl	%r13d, %eax
	cltd
	idivl	%r11d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r11d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3528(%rbx), %rcx
	addq	%r15, %rcx
	movw	%ax, (%rdi,%rcx)
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r11d                   # imm = 0x10000
	cmovgel	%eax, %r8d
	addq	$2, %rdi
	cmpq	$128, %rdi
	je	.LBB0_130
.LBB0_105:                              # %for.body691.us.us.1
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movslq	(%rax,%rdi,2), %r11
	movq	%r10, %rax
	orq	%r11, %rax
	shrq	$32, %rax
	jne	.LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_105 Depth=2
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r11d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_108
.LBB0_133:                              #   in Loop: Header=BB0_72 Depth=1
	xorl	%r11d, %r11d
	movl	12(%rsp), %ebp                  # 4-byte Reload
	movq	64(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB0_126
.LBB0_128:                              #   in Loop: Header=BB0_126 Depth=2
	movq	%r10, %rax
	xorl	%edx, %edx
	divq	%r15
.LBB0_129:                              #   in Loop: Header=BB0_126 Depth=2
	movq	3432(%rbx), %rcx
	addq	%r12, %rcx
	movl	%eax, (%rcx,%r11,2)
	addl	%edi, %r15d
	movl	%r14d, %ecx
	sarl	%cl, %r15d
	movq	3480(%rbx), %rax
	movq	32(%rsp), %r13                  # 8-byte Reload
	addq	%r13, %rax
	movw	%r15w, (%r11,%rax)
	movl	%r15d, %eax
	sarl	%eax
	addl	%ebp, %eax
	cltd
	idivl	%r15d
	movl	%eax, %ecx
	movl	$32768, %eax                    # imm = 0x8000
	xorl	%edx, %edx
	idivl	%r15d
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	movq	3528(%rbx), %rcx
	addq	%r13, %rcx
	movw	%ax, (%r11,%rcx)
	cmpl	%r8d, %esi
	movl	%r8d, %eax
	cmovgl	%esi, %eax
	cmpl	$65536, %r15d                   # imm = 0x10000
	cmovgel	%eax, %r8d
	addq	$2, %r11
	cmpq	$128, %r11
	je	.LBB0_130
.LBB0_126:                              # %for.body691.1
                                        #   Parent Loop BB0_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movslq	(%rax,%r11,2), %r15
	movq	%r10, %rax
	orq	%r15, %rax
	shrq	$32, %rax
	jne	.LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_126 Depth=2
	movl	%r10d, %eax
	xorl	%edx, %edx
	divl	%r15d
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB0_129
.LBB0_91:                               # %for.cond.cleanup543
	xorl	%eax, %eax
	cmpl	$0, 25812(%rbx)
	jne	.LBB0_47
# %bb.92:                               # %land.lhs.true801
	movslq	496(%rbx), %rcx
	cmpl	%ecx, %r8d
	jge	.LBB0_93
# %bb.134:                              # %land.lhs.true814
	movq	7216(%rbx), %rdx
	movzbl	(%rdx,%rcx), %ecx
	cmpl	%ecx, %r9d
	jl	.LBB0_47
# %bb.135:                              # %if.then823
	incl	%r9d
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%r9d, %ecx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	7216(%rbx), %rax
	movslq	496(%rbx), %rcx
	movzbl	(%rax,%rcx), %ecx
	movl	$.L.str.2, %edx
	jmp	.LBB0_94
.LBB0_93:                               # %if.then805
	incl	%r8d
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%r8d, %ecx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	496(%rbx), %ecx
	movl	$.L.str.1, %edx
.LBB0_94:                               # %cleanup833
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB0_46
.Lfunc_end0:
	.size	x264_cqm_init, .Lfunc_end0-x264_cqm_init
	.cfi_endproc
                                        # -- End function
	.globl	x264_cqm_delete                 # -- Begin function x264_cqm_delete
	.p2align	4, 0x90
	.type	x264_cqm_delete,@function
x264_cqm_delete:                        # @x264_cqm_delete
	.cfi_startproc
# %bb.0:                                # %for.body3.lr.ph.1
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	3440(%rdi), %rdi
	callq	x264_free@PLT
	movq	3344(%rbx), %rdi
	callq	x264_free@PLT
	movq	3392(%rbx), %rdi
	callq	x264_free@PLT
	movq	3488(%rbx), %rdi
	callq	x264_free@PLT
	movq	3448(%rbx), %rax
	cmpq	3440(%rbx), %rax
	je	.LBB1_2
# %bb.1:                                # %if.then9.1
	movq	3448(%rbx), %rdi
	callq	x264_free@PLT
	movq	3352(%rbx), %rdi
	callq	x264_free@PLT
	movq	3400(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_2:                                # %for.body20.lr.ph.1
	movq	3496(%rbx), %rax
	cmpq	3488(%rbx), %rax
	je	.LBB1_4
# %bb.3:                                # %if.then33.1
	movq	3496(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_4:                                # %for.body3.lr.ph.2
	movq	3456(%rbx), %rax
	cmpq	3440(%rbx), %rax
	je	.LBB1_7
# %bb.5:                                # %for.inc.2
	cmpq	3448(%rbx), %rax
	je	.LBB1_7
# %bb.6:                                # %if.then9.2
	movq	3456(%rbx), %rdi
	callq	x264_free@PLT
	movq	3360(%rbx), %rdi
	callq	x264_free@PLT
	movq	3408(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_7:                                # %for.body20.lr.ph.2
	movq	3504(%rbx), %rax
	cmpq	3488(%rbx), %rax
	je	.LBB1_10
# %bb.8:                                # %for.inc29.2
	cmpq	3496(%rbx), %rax
	je	.LBB1_10
# %bb.9:                                # %if.then33.2
	movq	3504(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_10:                               # %for.body3.lr.ph.3
	movq	3464(%rbx), %rax
	cmpq	3440(%rbx), %rax
	je	.LBB1_14
# %bb.11:                               # %for.inc.3
	cmpq	3448(%rbx), %rax
	je	.LBB1_14
# %bb.12:                               # %for.inc.3.1
	cmpq	3456(%rbx), %rax
	je	.LBB1_14
# %bb.13:                               # %if.then9.3
	movq	3464(%rbx), %rdi
	callq	x264_free@PLT
	movq	3368(%rbx), %rdi
	callq	x264_free@PLT
	movq	3416(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_14:                               # %for.body20.lr.ph.3
	movq	3512(%rbx), %rax
	cmpq	3488(%rbx), %rax
	je	.LBB1_18
# %bb.15:                               # %for.inc29.3
	cmpq	3496(%rbx), %rax
	je	.LBB1_18
# %bb.16:                               # %for.inc29.3.1
	cmpq	3504(%rbx), %rax
	je	.LBB1_18
# %bb.17:                               # %if.then33.3
	movq	3512(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_18:                               # %for.body49.peel.1
	movq	3472(%rbx), %rdi
	callq	x264_free@PLT
	movq	3376(%rbx), %rdi
	callq	x264_free@PLT
	movq	3424(%rbx), %rdi
	callq	x264_free@PLT
	movq	3520(%rbx), %rdi
	callq	x264_free@PLT
	movq	3480(%rbx), %rax
	cmpq	3472(%rbx), %rax
	je	.LBB1_20
# %bb.19:                               # %if.then62.1
	movq	3480(%rbx), %rdi
	callq	x264_free@PLT
	movq	3384(%rbx), %rdi
	callq	x264_free@PLT
	movq	3432(%rbx), %rdi
	callq	x264_free@PLT
.LBB1_20:                               # %for.body73.peel.1
	movq	3528(%rbx), %rax
	cmpq	3520(%rbx), %rax
	je	.LBB1_21
# %bb.22:                               # %if.then86.1
	movq	3528(%rbx), %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.LBB1_21:                               # %if.end90.1
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	x264_cqm_delete, .Lfunc_end1-x264_cqm_delete
	.cfi_endproc
                                        # -- End function
	.globl	x264_cqm_parse_file             # -- Begin function x264_cqm_parse_file
	.p2align	4, 0x90
	.type	x264_cqm_parse_file,@function
x264_cqm_parse_file:                    # @x264_cqm_parse_file
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$2, 144(%rdi)
	movq	%rsi, %rdi
	callq	x264_slurp_file@PLT
	testq	%rax, %rax
	je	.LBB2_6
# %bb.1:                                # %while.cond.preheader
	movq	%rax, %r14
	movq	%rax, %rdi
	movl	$35, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB2_4
# %bb.2:
	movq	%rax, %r15
	.p2align	4, 0x90
.LBB2_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.4, %esi
	movq	%r15, %rdi
	callq	strcspn@PLT
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%rax, %rdx
	callq	memset@PLT
	movq	%r14, %rdi
	movl	$35, %esi
	callq	strchr@PLT
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB2_3
.LBB2_4:                                # %while.end
	leaq	160(%rbx), %rcx
	movl	$.L.str.5, %edx
	movl	$x264_cqm_jvt4i, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$16, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %ebp
	leaq	176(%rbx), %rcx
	movl	$.L.str.6, %edx
	movl	$x264_cqm_jvt4i, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$16, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %r15d
	orl	%ebp, %r15d
	leaq	192(%rbx), %rcx
	movl	$.L.str.7, %edx
	movl	$x264_cqm_jvt4p, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$16, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %r12d
	leaq	208(%rbx), %rcx
	movl	$.L.str.8, %edx
	movl	$x264_cqm_jvt4p, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$16, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %ebp
	orl	%r12d, %ebp
	orl	%r15d, %ebp
	leaq	224(%rbx), %rcx
	movl	$.L.str.9, %edx
	movl	$x264_cqm_jvt8i, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$64, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %r15d
	leaq	288(%rbx), %rcx
	movl	$.L.str.10, %edx
	movl	$x264_cqm_jvt8p, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$64, %r9d
	callq	x264_cqm_parse_jmlist
	movl	%eax, %ebx
	orl	%r15d, %ebx
	orl	%ebp, %ebx
	movq	%r14, %rdi
	callq	x264_free@PLT
	jmp	.LBB2_5
.LBB2_6:                                # %if.then
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %ebx
.LBB2_5:                                # %cleanup
	movl	%ebx, %eax
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
.Lfunc_end2:
	.size	x264_cqm_parse_file, .Lfunc_end2-x264_cqm_parse_file
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_cqm_parse_jmlist
	.type	x264_cqm_parse_jmlist,@function
x264_cqm_parse_jmlist:                  # @x264_cqm_parse_jmlist
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebp
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rdi, %r13
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	strstr@PLT
	movl	%ebp, %edx
	testq	%rax, %rax
	je	.LBB3_1
# %bb.2:                                # %if.end
	movq	%rax, %r14
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen@PLT
	movzbl	(%r14,%rax), %ecx
	addb	$-85, %cl
	cmpb	$2, %cl
	adcq	%rax, %r14
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	movq	%rax, %rdx
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB3_3
# %bb.4:                                # %land.lhs.true.preheader
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strpbrk@PLT
	testq	%rax, %rax
	je	.LBB3_5
# %bb.7:                                # %land.rhs.peel
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	strpbrk@PLT
	testq	%rax, %rax
	je	.LBB3_5
# %bb.8:                                # %for.body.peel
	movq	%rax, %r14
	movl	$-1, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	12(%rsp), %eax
	testl	%eax, %eax
	je	.LBB3_24
# %bb.9:                                # %if.end24.peel
	movq	%r13, %r15
	leal	-256(%rax), %ecx
	cmpl	$-255, %ecx
	jae	.LBB3_10
.LBB3_15:                               # %if.then30
	movl	$.L.str.15, %edx
	jmp	.LBB3_22
.LBB3_1:                                # %if.then
	movq	%r12, %rdi
	movl	$16, %esi
	callq	memset@PLT
	xorl	%eax, %eax
	jmp	.LBB3_23
.LBB3_5:
	movq	%r13, %r15
	xorl	%r13d, %r13d
.LBB3_6:                                # %for.end.loopexit.split.loop.exit
	xorl	%r14d, %r14d
.LBB3_18:                               # %for.end
	xorl	%eax, %eax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB3_19
.LBB3_3:
	movq	%r13, %r15
	xorl	%r13d, %r13d
.LBB3_19:                               # %for.end
	testq	%rdx, %rdx
	sete	%cl
	cmpq	%rdx, %r14
	setbe	%dl
	cmpl	%ebp, %r13d
	jne	.LBB3_21
# %bb.20:                               # %for.end
	orb	%dl, %cl
	jne	.LBB3_23
.LBB3_21:                               # %if.then40
	movl	$.L.str.16, %edx
.LBB3_22:                               # %cleanup43
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %eax
.LBB3_23:                               # %cleanup43
	addq	$40, %rsp
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
.LBB3_24:                               # %if.then22
	.cfi_def_cfa_offset 96
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movq	%r15, %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	callq	memcpy@PLT
	xorl	%eax, %eax
	jmp	.LBB3_23
.LBB3_10:                               # %for.inc.peel
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	%al, (%rcx)
	movl	$1, %r13d
	cmpl	$1, %ebp
	je	.LBB3_18
# %bb.11:                               # %land.lhs.true.preheader1
	movl	$1, %r13d
	leaq	12(%rsp), %r12
.LBB3_12:                               # %land.lhs.true
                                        # =>This Inner Loop Header: Depth=1
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	strpbrk@PLT
	testq	%rax, %rax
	je	.LBB3_6
# %bb.13:                               # %land.rhs
                                        #   in Loop: Header=BB3_12 Depth=1
	movl	$.L.str.13, %esi
	movq	%rax, %rdi
	callq	strpbrk@PLT
	testq	%rax, %rax
	je	.LBB3_6
# %bb.14:                               # %if.end24
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	%rax, %r14
	movl	$-1, 12(%rsp)
	movl	$.L.str.14, %esi
	movq	%rax, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	12(%rsp), %eax
	leal	-256(%rax), %ecx
	cmpl	$-256, %ecx
	jbe	.LBB3_15
# %bb.16:                               # %for.inc
                                        #   in Loop: Header=BB3_12 Depth=1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movb	%al, (%rcx,%r13)
	incq	%r13
	cmpq	%r13, 24(%rsp)                  # 8-byte Folded Reload
	jne	.LBB3_12
# %bb.17:                               # %for.end.loopexit
	movq	24(%rsp), %r13                  # 8-byte Reload
                                        # kill: def $r13d killed $r13d killed $r13 def $r13
	jmp	.LBB3_18
.Lfunc_end3:
	.size	x264_cqm_parse_jmlist, .Lfunc_end3-x264_cqm_parse_jmlist
	.cfi_endproc
                                        # -- End function
	.type	dequant4_scale,@object          # @dequant4_scale
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
dequant4_scale:
	.ascii	"\n\r\020"
	.ascii	"\013\016\022"
	.ascii	"\r\020\024"
	.ascii	"\016\022\027"
	.ascii	"\020\024\031"
	.ascii	"\022\027\035"
	.size	dequant4_scale, 18

	.type	quant4_scale,@object            # @quant4_scale
	.p2align	4, 0x0
quant4_scale:
	.short	13107                           # 0x3333
	.short	8066                            # 0x1f82
	.short	5243                            # 0x147b
	.short	11916                           # 0x2e8c
	.short	7490                            # 0x1d42
	.short	4660                            # 0x1234
	.short	10082                           # 0x2762
	.short	6554                            # 0x199a
	.short	4194                            # 0x1062
	.short	9362                            # 0x2492
	.short	5825                            # 0x16c1
	.short	3647                            # 0xe3f
	.short	8192                            # 0x2000
	.short	5243                            # 0x147b
	.short	3355                            # 0xd1b
	.short	7282                            # 0x1c72
	.short	4559                            # 0x11cf
	.short	2893                            # 0xb4d
	.size	quant4_scale, 36

	.type	quant8_scan,@object             # @quant8_scan
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
quant8_scan:
	.ascii	"\000\003\004\003\003\001\005\001\004\005\002\005\003\001\005\001"
	.size	quant8_scan, 16

	.type	dequant8_scale,@object          # @dequant8_scale
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
dequant8_scale:
	.ascii	"\024\022 \023\031\030"
	.ascii	"\026\023#\025\034\032"
	.ascii	"\032\027*\030!\037"
	.ascii	"\034\031-\032#!"
	.ascii	" \0343\036(&"
	.ascii	"$ :\".+"
	.size	dequant8_scale, 36

	.type	quant8_scale,@object            # @quant8_scale
	.p2align	4, 0x0
quant8_scale:
	.short	13107                           # 0x3333
	.short	11428                           # 0x2ca4
	.short	20972                           # 0x51ec
	.short	12222                           # 0x2fbe
	.short	16777                           # 0x4189
	.short	15481                           # 0x3c79
	.short	11916                           # 0x2e8c
	.short	10826                           # 0x2a4a
	.short	19174                           # 0x4ae6
	.short	11058                           # 0x2b32
	.short	14980                           # 0x3a84
	.short	14290                           # 0x37d2
	.short	10082                           # 0x2762
	.short	8943                            # 0x22ef
	.short	15978                           # 0x3e6a
	.short	9675                            # 0x25cb
	.short	12710                           # 0x31a6
	.short	11985                           # 0x2ed1
	.short	9362                            # 0x2492
	.short	8228                            # 0x2024
	.short	14913                           # 0x3a41
	.short	8931                            # 0x22e3
	.short	11984                           # 0x2ed0
	.short	11259                           # 0x2bfb
	.short	8192                            # 0x2000
	.short	7346                            # 0x1cb2
	.short	13159                           # 0x3367
	.short	7740                            # 0x1e3c
	.short	10486                           # 0x28f6
	.short	9777                            # 0x2631
	.short	7282                            # 0x1c72
	.short	6428                            # 0x191c
	.short	11570                           # 0x2d32
	.short	6830                            # 0x1aae
	.short	9118                            # 0x239e
	.short	8640                            # 0x21c0
	.size	quant8_scale, 72

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Quantization overflow.  Your CQM is incompatible with QP < %d,\n"
	.size	.L.str, 64

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"but min QP is set to %d.\n"
	.size	.L.str.1, 26

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"but min chroma QP is implied to be %d.\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"can't open file '%s'\n"
	.size	.L.str.3, 22

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"INTRA4X4_LUMA"
	.size	.L.str.5, 14

	.type	x264_cqm_jvt4i,@object          # @x264_cqm_jvt4i
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_cqm_jvt4i:
	.ascii	"\006\r\024\034\r\024\034 \024\034 %\034 %*"
	.size	x264_cqm_jvt4i, 16

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"INTRA4X4_CHROMA"
	.size	.L.str.6, 16

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"INTER4X4_LUMA"
	.size	.L.str.7, 14

	.type	x264_cqm_jvt4p,@object          # @x264_cqm_jvt4p
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_cqm_jvt4p:
	.ascii	"\n\016\024\030\016\024\030\033\024\030\033\036\030\033\036\""
	.size	x264_cqm_jvt4p, 16

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"INTER4X4_CHROMA"
	.size	.L.str.8, 16

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"INTRA8X8_LUMA"
	.size	.L.str.9, 14

	.type	x264_cqm_jvt8i,@object          # @x264_cqm_jvt8i
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_cqm_jvt8i:
	.ascii	"\006\n\r\020\022\027\031\033\n\013\020\022\027\031\033\035\r\020\022\027\031\033\035\037\020\022\027\031\033\035\037!\022\027\031\033\035\037!$\027\031\033\035\037!$&\031\033\035\037!$&(\033\035\037!$&(*"
	.size	x264_cqm_jvt8i, 64

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"INTER8X8_LUMA"
	.size	.L.str.10, 14

	.type	x264_cqm_jvt8p,@object          # @x264_cqm_jvt8p
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
x264_cqm_jvt8p:
	.ascii	"\t\r\017\021\023\025\026\030\r\r\021\023\025\026\030\031\017\021\023\025\026\030\031\033\021\023\025\026\030\031\033\034\023\025\026\030\031\033\034\036\025\026\030\031\033\034\036 \026\030\031\033\034\036 !\030\031\033\034\036 !#"
	.size	x264_cqm_jvt8p, 64

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"INT"
	.size	.L.str.11, 4

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	" \t\n,"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"0123456789"
	.size	.L.str.13, 11

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"%d"
	.size	.L.str.14, 3

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"bad coefficient in list '%s'\n"
	.size	.L.str.15, 30

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"not enough coefficients in list '%s'\n"
	.size	.L.str.16, 38

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
