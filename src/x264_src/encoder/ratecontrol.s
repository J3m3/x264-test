	.text
	.file	"ratecontrol.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function x264_adaptive_quant_frame
.LCPI0_0:
	.long	0x3f8514e4                      # float 1.03970003
.LCPI0_1:
	.long	0x3e000000                      # float 0.125
.LCPI0_2:
	.long	0xc1600000                      # float -14
.LCPI0_3:
	.long	0xbf000000                      # float -0.5
.LCPI0_4:
	.long	0xc166d4fe                      # float -14.427
.LCPI0_5:
	.long	0xc12aaaab                      # float -10.666667
.LCPI0_6:
	.long	0x44002000                      # float 512.5
	.text
	.globl	x264_adaptive_quant_frame
	.p2align	4, 0x90
	.type	x264_adaptive_quant_frame,@function
x264_adaptive_quant_frame:              # @x264_adaptive_quant_frame
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %r14
	movss	548(%rdi), %xmm2                # xmm2 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	ucomiss	%xmm0, %xmm2
	jne	.LBB0_5
	jp	.LBB0_5
# %bb.1:                                # %if.then
	movq	12152(%r12), %rdi
	movslq	16368(%r14), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movq	12160(%r12), %rdi
	movslq	16368(%r14), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	cmpl	$0, 14672(%r14)
	je	.LBB0_51
# %bb.2:                                # %for.cond.preheader
	cmpl	$0, 16368(%r14)
	jle	.LBB0_51
# %bb.3:                                # %for.body.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	12192(%r12), %rcx
	movw	$256, (%rcx,%rax,2)             # imm = 0x100
	incq	%rax
	movslq	16368(%r14), %rcx
	cmpq	%rcx, %rax
	jl	.LBB0_4
	jmp	.LBB0_51
.LBB0_5:                                # %if.end10
	cmpl	$2, 544(%r14)
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	jne	.LBB0_22
# %bb.6:                                # %for.cond16.preheader
	movq	3200(%r14), %rax
	movss	%xmm0, 8(%rsp)                  # 4-byte Spill
	cmpl	$0, 1088(%rax)
	jle	.LBB0_25
# %bb.7:                                # %for.cond21.preheader.lr.ph
	cmpl	$0, 1084(%rax)
	jle	.LBB0_25
# %bb.8:                                # %for.cond21.preheader.preheader
	xorl	%r13d, %r13d
	xorps	%xmm3, %xmm3
	movss	%xmm0, 8(%rsp)                  # 4-byte Spill
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                # %for.cond.cleanup25
                                        #   in Loop: Header=BB0_10 Depth=1
	incl	%r13d
	cmpl	1088(%rax), %r13d
	jge	.LBB0_23
.LBB0_10:                               # %for.cond21.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	cmpl	$0, 1084(%rax)
	jle	.LBB0_9
# %bb.11:                               # %for.body26.lr.ph
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	%r13d, %eax
	shrl	%eax
	movl	%eax, %ecx
	andl	$268435455, %ecx                # imm = 0xFFFFFFF
	andl	$134217727, %eax                # imm = 0x7FFFFFF
	shll	$4, %ecx
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	shll	$5, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	xorl	%edi, %edi
	movslq	%r13d, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	movl	%r13d, 16(%rsp)                 # 4-byte Spill
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_12:                               # %cond.false.i68.i
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	%r13d, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$3, %eax
.LBB0_13:                               # %ac_energy_mb.exit
                                        #   in Loop: Header=BB0_14 Depth=2
	movq	%r15, %r13
	shrq	$32, %r13
	imull	%r15d, %r15d
	shrl	$8, %r15d
	movq	%rbp, %r12
	shrq	$32, %r12
	imull	%ebp, %ebp
	shrl	$6, %ebp
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	addl	%r15d, %ebp
	movslq	%eax, %rdi
	movq	64(%rsp), %r15                  # 8-byte Reload
	addq	168(%r15), %rdi
	movq	56(%rsp), %r14                  # 8-byte Reload
	callq	*32184(%r14)
	movq	%rax, %rcx
	shrq	$32, %rcx
	imull	%eax, %eax
	shrl	$6, %eax
	addl	%ebp, %eax
	addl	%r13d, %r12d
	addl	%ecx, %r12d
	subl	%eax, %r12d
	incl	%r12d
	cvtsi2ss	%r12, %xmm0
	movq	%r15, %r12
	movss	.LCPI0_1(%rip), %xmm1           # xmm1 = [1.25E-1,0.0E+0,0.0E+0,0.0E+0]
	callq	powf@PLT
	movq	12152(%r15), %rax
	movslq	16372(%r14), %rcx
	imulq	48(%rsp), %rcx                  # 8-byte Folded Reload
	addq	%rbx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	20(%rsp), %xmm3                 # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm3
	mulss	%xmm0, %xmm0
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, 8(%rsp)                  # 4-byte Spill
	movq	3200(%r14), %rax
	incq	%rbx
	movl	40(%rsp), %ebp                  # 4-byte Reload
	addl	$8, %ebp
	movq	32(%rsp), %rdi                  # 8-byte Reload
	addl	$16, %edi
	cmpl	1084(%rax), %ebx
	movl	16(%rsp), %r13d                 # 4-byte Reload
	jge	.LBB0_9
.LBB0_14:                               # %for.body26
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	104(%r12), %esi
	movl	16436(%r14), %ecx
	testl	%ecx, %ecx
	movss	%xmm3, 20(%rsp)                 # 4-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	je	.LBB0_16
# %bb.15:                               # %cond.true.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	testb	$1, %r13b
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	%edi, %eax
	addl	%edx, %eax
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # %cond.false.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	%r13d, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$4, %eax
.LBB0_17:                               # %ac_energy_plane.exit.i
                                        #   in Loop: Header=BB0_14 Depth=2
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%eax, %rdi
	addq	152(%r12), %rdi
	callq	*32160(%r14)
	movq	%rax, %r15
	movl	108(%r12), %esi
	movl	16436(%r14), %ecx
	testl	%ecx, %ecx
	movl	%ebp, 40(%rsp)                  # 4-byte Spill
	je	.LBB0_19
# %bb.18:                               # %cond.true.i17.i
                                        #   in Loop: Header=BB0_14 Depth=2
	testb	$1, %r13b
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	24(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	%ebp, %eax
	addl	%edx, %eax
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               # %cond.false.i37.i
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	%r13d, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$3, %eax
.LBB0_20:                               # %ac_energy_plane.exit41.i
                                        #   in Loop: Header=BB0_14 Depth=2
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%eax, %rdi
	addq	160(%r12), %rdi
	callq	*32184(%r14)
	movq	%rax, %rbp
	movl	112(%r12), %esi
	movl	16436(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB0_12
# %bb.21:                               # %cond.true.i46.i
                                        #   in Loop: Header=BB0_14 Depth=2
	testb	$1, %r13b
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	24(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	40(%rsp), %eax                  # 4-byte Folded Reload
	addl	%edx, %eax
	jmp	.LBB0_13
.LBB0_22:                               # %if.else
	mulss	.LCPI0_0(%rip), %xmm2
	movq	3200(%r14), %rax
	movss	%xmm0, 8(%rsp)                  # 4-byte Spill
	cmpl	$0, 1088(%rax)
	jg	.LBB0_27
	jmp	.LBB0_51
.LBB0_25:
	xorps	%xmm3, %xmm3
	jmp	.LBB0_26
.LBB0_23:                               # %for.cond.cleanup19.loopexit
	movss	548(%r14), %xmm2                # xmm2 = mem[0],zero,zero,zero
.LBB0_26:                               # %for.cond.cleanup19
	xorps	%xmm0, %xmm0
	cvtsi2ssl	16368(%r14), %xmm0
	divss	%xmm0, %xmm3
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	mulss	%xmm3, %xmm2
	addss	.LCPI0_2(%rip), %xmm1
	mulss	.LCPI0_3(%rip), %xmm1
	divss	%xmm3, %xmm1
	addss	%xmm3, %xmm1
	movss	%xmm1, 8(%rsp)                  # 4-byte Spill
	cmpl	$0, 1088(%rax)
	jle	.LBB0_51
.LBB0_27:                               # %for.cond71.preheader.lr.ph
	movq	3200(%r14), %rax
	cmpl	$0, 1084(%rax)
	jle	.LBB0_51
# %bb.28:                               # %for.cond71.preheader.preheader
	xorl	%ebp, %ebp
	movss	%xmm2, 48(%rsp)                 # 4-byte Spill
	jmp	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # %for.cond.cleanup76
                                        #   in Loop: Header=BB0_30 Depth=1
	incl	%ebp
	cmpl	1088(%rax), %ebp
	jge	.LBB0_51
.LBB0_30:                               # %for.cond71.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
	cmpl	$0, 1084(%rax)
	jle	.LBB0_29
# %bb.31:                               # %for.body77.lr.ph
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	%ebp, %eax
	shrl	%eax
	movl	%eax, %ecx
	andl	$268435455, %ecx                # imm = 0xFFFFFFF
	andl	$134217727, %eax                # imm = 0x7FFFFFF
	shll	$4, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	shll	$5, %eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	xorl	%edi, %edi
	movslq	%ebp, %rsi
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movl	%ebp, 16(%rsp)                  # 4-byte Spill
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_35 Depth=2
	xorl	%eax, %eax
.LBB0_33:                               # %x264_exp2fix8.exit
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	12192(%r12), %rcx
	movslq	16372(%r14), %rdx
	imulq	%rsi, %rdx
	addq	%rbx, %rdx
	movw	%ax, (%rcx,%rdx,2)
.LBB0_34:                               # %if.end130
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	3200(%r14), %rax
	incq	%rbx
	addl	$8, %r13d
	addl	$16, %edi
	cmpl	1084(%rax), %ebx
	jge	.LBB0_29
.LBB0_35:                               # %for.body77
                                        #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, 544(%r14)
	jne	.LBB0_37
# %bb.36:                               # %if.then84
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	12152(%r12), %rcx
	movslq	16372(%r14), %rax
	imulq	%rsi, %rax
	addq	%rbx, %rax
	movss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	8(%rsp), %xmm0                  # 4-byte Folded Reload
	jmp	.LBB0_47
	.p2align	4, 0x90
.LBB0_37:                               # %if.else94
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	104(%r12), %esi
	movl	16436(%r14), %ecx
	testl	%ecx, %ecx
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	je	.LBB0_39
# %bb.38:                               # %cond.true.i.i206
                                        #   in Loop: Header=BB0_35 Depth=2
	testb	$1, %bpl
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	12(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	%edi, %eax
	addl	%edx, %eax
	jmp	.LBB0_40
.LBB0_39:                               # %cond.false.i.i277
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%ebp, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$4, %eax
.LBB0_40:                               # %ac_energy_plane.exit.i213
                                        #   in Loop: Header=BB0_35 Depth=2
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%eax, %rdi
	addq	152(%r12), %rdi
	callq	*32160(%r14)
	movq	%rax, %r15
	movl	108(%r12), %esi
	movl	16436(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB0_42
# %bb.41:                               # %cond.true.i17.i223
                                        #   in Loop: Header=BB0_35 Depth=2
	testb	$1, %bpl
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	32(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	%r13d, %eax
	addl	%edx, %eax
	jmp	.LBB0_43
.LBB0_42:                               # %cond.false.i37.i273
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%ebp, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$3, %eax
.LBB0_43:                               # %ac_energy_plane.exit41.i230
                                        #   in Loop: Header=BB0_35 Depth=2
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	movslq	%eax, %rdi
	addq	160(%r12), %rdi
	callq	*32184(%r14)
	movq	%r14, %rcx
	movq	%rax, %r14
	movl	112(%r12), %esi
	movl	16436(%rcx), %ecx
	testl	%ecx, %ecx
	movl	%r13d, 20(%rsp)                 # 4-byte Spill
	je	.LBB0_45
# %bb.44:                               # %cond.true.i46.i240
                                        #   in Loop: Header=BB0_35 Depth=2
	testb	$1, %bpl
	movl	$0, %eax
	cmovnel	%esi, %eax
	movl	32(%rsp), %edx                  # 4-byte Reload
	imull	%esi, %edx
	addl	%r13d, %eax
	addl	%edx, %eax
	jmp	.LBB0_46
.LBB0_45:                               # %cond.false.i68.i269
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%ebp, %eax
	imull	%esi, %eax
	addl	%ebx, %eax
	shll	$3, %eax
.LBB0_46:                               # %ac_energy_mb.exit281
                                        #   in Loop: Header=BB0_35 Depth=2
	movq	%r15, %r13
	shrq	$32, %r13
	imull	%r15d, %r15d
	shrl	$8, %r15d
	movq	%r14, %r12
	shrq	$32, %r12
	imull	%r14d, %r14d
	shrl	$6, %r14d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	addl	%r15d, %r14d
	movslq	%eax, %rdi
	movq	64(%rsp), %r15                  # 8-byte Reload
	addq	168(%r15), %rdi
	movq	56(%rsp), %rbp                  # 8-byte Reload
	callq	*32184(%rbp)
	movq	%rax, %rcx
	shrq	$32, %rcx
	imull	%eax, %eax
	shrl	$6, %eax
	addl	%r14d, %eax
	movq	%rbp, %r14
	addl	%r13d, %r12d
	addl	%ecx, %r12d
	subl	%eax, %r12d
	cmpl	$1, %r12d
	adcl	$0, %r12d
	bsrl	%r12d, %ecx
	xorl	$31, %ecx
	shll	%cl, %r12d
	shrl	$22, %r12d
	andl	$508, %r12d                     # imm = 0x1FC
	movq	x264_log2_lut@GOTPCREL(%rip), %rax
	movss	(%rax,%r12), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movq	%r15, %r12
	movq	x264_log2_lz_lut@GOTPCREL(%rip), %rax
	addss	(%rax,%rcx,4), %xmm0
	addss	.LCPI0_4(%rip), %xmm0
	movl	16372(%rbp), %eax
	movl	16(%rsp), %ebp                  # 4-byte Reload
	imull	%ebp, %eax
	addl	%ebx, %eax
	cltq
	movss	48(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	20(%rsp), %r13d                 # 4-byte Reload
.LBB0_47:                               # %if.end102
                                        #   in Loop: Header=BB0_35 Depth=2
	mulss	%xmm2, %xmm0
	movq	12160(%r12), %rcx
	movss	%xmm0, (%rcx,%rax,4)
	movq	12152(%r12), %rax
	movslq	16372(%r14), %rcx
	imulq	%rsi, %rcx
	addq	%rbx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cmpl	$0, 14672(%r14)
	je	.LBB0_34
# %bb.48:                               # %if.then120
                                        #   in Loop: Header=BB0_35 Depth=2
	mulss	.LCPI0_5(%rip), %xmm0
	addss	.LCPI0_6(%rip), %xmm0
	cvttss2si	%xmm0, %ecx
	testl	%ecx, %ecx
	js	.LBB0_32
# %bb.49:                               # %if.end.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	$65535, %eax                    # imm = 0xFFFF
	cmpl	$1023, %ecx                     # imm = 0x3FF
	ja	.LBB0_33
# %bb.50:                               # %if.end5.i
                                        #   in Loop: Header=BB0_35 Depth=2
	movl	%ecx, %eax
	andl	$63, %eax
	movq	x264_exp2_lut@GOTPCREL(%rip), %rdx
	movzbl	(%rdx,%rax), %eax
	orl	$256, %eax                      # imm = 0x100
	shrl	$6, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	shrl	$8, %eax
	jmp	.LBB0_33
.LBB0_51:                               # %cleanup
	addq	$72, %rsp
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
.Lfunc_end0:
	.size	x264_adaptive_quant_frame, .Lfunc_end0-x264_adaptive_quant_frame
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_macroblock_tree_read
.LCPI1_0:
	.quad	0x3f70000000000000              # double 0.00390625
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI1_1:
	.long	0xc12aaaab                      # float -10.666667
.LCPI1_2:
	.long	0x44002000                      # float 512.5
	.text
	.globl	x264_macroblock_tree_read
	.p2align	4, 0x90
	.type	x264_macroblock_tree_read,@function
x264_macroblock_tree_read:              # @x264_macroblock_tree_read
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	26704(%rdi), %r12
	movq	312(%r12), %rax
	movslq	56(%rsi), %rcx
	imulq	$168, %rcx, %rcx
	cmpl	$0, 8(%rax,%rcx)
	je	.LBB1_20
# %bb.1:                                # %if.then
	cmpl	$0, 504(%r12)
	js	.LBB1_3
# %bb.2:                                # %if.then.if.end40_crit_edge
	movl	16368(%rbx), %eax
.LBB1_10:                               # %if.end40
	testl	%eax, %eax
	jle	.LBB1_19
# %bb.11:                               # %for.body.lr.ph
	xorl	%eax, %eax
	movsd	.LCPI1_0(%rip), %xmm0           # xmm0 = [3.90625E-3,0.0E+0]
	movss	.LCPI1_1(%rip), %xmm1           # xmm1 = [-1.0666667E+1,0.0E+0,0.0E+0,0.0E+0]
	movss	.LCPI1_2(%rip), %xmm2           # xmm2 = [5.125E+2,0.0E+0,0.0E+0,0.0E+0]
	movq	x264_exp2_lut@GOTPCREL(%rip), %rdx
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_12 Depth=1
	xorl	%esi, %esi
.LBB1_17:                               # %x264_exp2fix8.exit
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	12192(%r14), %rcx
	movw	%si, (%rcx,%rax,2)
.LBB1_18:                               # %for.inc
                                        #   in Loop: Header=BB1_12 Depth=1
	incq	%rax
	movslq	16368(%rbx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB1_19
.LBB1_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	504(%r12), %rcx
	movq	488(%r12,%rcx,8), %rcx
	movzwl	(%rcx,%rax,2), %ecx
	rolw	$8, %cx
	movswl	%cx, %ecx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm0, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movq	12152(%r14), %rcx
	movss	%xmm3, (%rcx,%rax,4)
	cmpl	$0, 14672(%rbx)
	je	.LBB1_18
# %bb.13:                               # %if.then58
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	12152(%r14), %rcx
	movss	(%rcx,%rax,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm3
	addss	%xmm2, %xmm3
	cvttss2si	%xmm3, %ecx
	testl	%ecx, %ecx
	js	.LBB1_14
# %bb.15:                               # %if.end.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	$65535, %esi                    # imm = 0xFFFF
	cmpl	$1023, %ecx                     # imm = 0x3FF
	ja	.LBB1_17
# %bb.16:                               # %if.end5.i
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	%ecx, %esi
	andl	$63, %esi
	movzbl	(%rdx,%rsi), %esi
	orl	$256, %esi                      # imm = 0x100
	shrl	$6, %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %esi
	shrl	$8, %esi
	jmp	.LBB1_17
.LBB1_19:                               # %cleanup
	decl	504(%r12)
	xorl	%eax, %eax
	jmp	.LBB1_23
.LBB1_20:                               # %if.else
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	x264_adaptive_quant_frame
	xorl	%eax, %eax
	jmp	.LBB1_23
.LBB1_3:                                # %do.body.preheader
	movzbl	(%rax,%rcx), %ebp
	leaq	15(%rsp), %r15
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_9:                                # %do.cond
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpb	%bpl, %cl
	je	.LBB1_10
.LBB1_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	incl	504(%r12)
	movq	296(%r12), %rcx
	movl	$1, %esi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	fread@PLT
	testq	%rax, %rax
	je	.LBB1_21
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	movslq	504(%r12), %rax
	movq	488(%r12,%rax,8), %rdi
	movslq	16368(%rbx), %rdx
	movq	296(%r12), %rcx
	movl	$2, %esi
	callq	fread@PLT
	cmpl	%eax, 16368(%rbx)
	jne	.LBB1_21
# %bb.6:                                # %if.end24
                                        #   in Loop: Header=BB1_4 Depth=1
	movzbl	15(%rsp), %ecx
	cmpl	%ecx, %ebp
	je	.LBB1_9
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_4 Depth=1
	cmpl	$1, 504(%r12)
	jne	.LBB1_9
# %bb.8:                                # %cleanup.thread103
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	%ebp, %r8d
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB1_22
.LBB1_21:                               # %fail
	movl	$.L.str.1, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB1_22:                               # %cleanup70
	movl	$-1, %eax
.LBB1_23:                               # %cleanup70
	addq	$16, %rsp
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
	.size	x264_macroblock_tree_read, .Lfunc_end1-x264_macroblock_tree_read
	.cfi_endproc
                                        # -- End function
	.globl	x264_reference_build_list_optimal # -- Begin function x264_reference_build_list_optimal
	.p2align	4, 0x90
	.type	x264_reference_build_list_optimal,@function
x264_reference_build_list_optimal:      # @x264_reference_build_list_optimal
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$3264, %rsp                     # imm = 0xCC0
	.cfi_def_cfa_offset 3296
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	26704(%rdi), %rax
	movq	72(%rax), %rax
	movl	156(%rax), %ecx
	movl	$-1, %ebp
	cmpl	14696(%rdi), %ecx
	jne	.LBB2_10
# %bb.1:                                # %if.end
	movq	%rdi, %rbx
	movaps	14816(%rdi), %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	14800(%rdi), %xmm0
	movaps	%xmm0, 160(%rsp)
	movaps	14784(%rdi), %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	14768(%rdi), %xmm0
	movaps	%xmm0, 128(%rsp)
	movaps	14704(%rdi), %xmm0
	movaps	14720(%rdi), %xmm1
	movaps	14736(%rdi), %xmm2
	movaps	14752(%rdi), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movups	92(%rax), %xmm0
	movups	108(%rax), %xmm1
	movups	124(%rax), %xmm2
	movups	140(%rax), %xmm3
	movaps	%xmm0, (%rsp)
	movaps	%xmm1, 16(%rsp)
	movaps	%xmm2, 32(%rsp)
	movaps	%xmm3, 48(%rsp)
	movq	14680(%rdi), %r14
	leaq	320(%r14), %rsi
	leaq	192(%rsp), %rdi
	movl	$3072, %edx                     # imm = 0xC00
	callq	memcpy@PLT
	addq	$512, %r14                      # imm = 0x200
	xorl	%ebp, %ebp
	movl	$2880, %edx                     # imm = 0xB40
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	14696(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB2_10
# %bb.2:                                # %for.cond13.preheader.preheader
	movl	$1, %r14d
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_8:                                # %for.cond.cleanup16
                                        #   in Loop: Header=BB2_3 Depth=1
	movslq	%ecx, %rax
	movl	$-1, (%rsp,%rax,4)
	movq	64(%rsp,%rax,8), %rcx
	movq	%rcx, 14704(%rbx,%r14,8)
	movq	14680(%rbx), %rcx
	leaq	(%r14,%r14,2), %rdx
	shlq	$6, %rdx
	leaq	(%rcx,%rdx), %rdi
	addq	$320, %rdi                      # imm = 0x140
	leaq	(%rax,%rax,2), %rax
	shlq	$6, %rax
	leaq	(%rsp,%rax), %rsi
	addq	$192, %rsi
	movl	$192, %edx
	callq	memcpy@PLT
	incq	%r14
	movslq	14696(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB2_9
.LBB2_3:                                # %for.cond13.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_12 Depth 2
                                        #     Child Loop BB2_7 Depth 2
	movl	$1, %ecx
	cmpl	$2, %eax
	jl	.LBB2_8
# %bb.4:                                # %for.body17.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	%eax, %ecx
	leaq	-1(%rcx), %rax
	addq	$-2, %rcx
	cmpq	$3, %rcx
	jae	.LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$-1, %esi
	movl	$1, %ecx
	movl	$1, %edx
.LBB2_6:                                # %for.cond.cleanup16.loopexit.unr-lcssa
                                        #   in Loop: Header=BB2_3 Depth=1
	andl	$3, %eax
	je	.LBB2_8
	.p2align	4, 0x90
.LBB2_7:                                # %for.body17.epil
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdx,4), %edi
	cmpl	%esi, %edi
	cmovgl	%edi, %esi
	cmovgl	%edx, %ecx
	incq	%rdx
	decq	%rax
	jne	.LBB2_7
	jmp	.LBB2_8
	.p2align	4, 0x90
.LBB2_11:                               # %for.body17.preheader.new
                                        #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, %rdi
	andq	$-4, %rdi
	movl	$-1, %esi
	movl	$1, %ecx
	movl	$1, %edx
	xorl	%r8d, %r8d
	jmp	.LBB2_12
	.p2align	4, 0x90
.LBB2_20:                               # %for.body17
                                        #   in Loop: Header=BB2_12 Depth=2
	movl	%r10d, %esi
.LBB2_21:                               # %for.body17
                                        #   in Loop: Header=BB2_12 Depth=2
	addq	$4, %rdx
	addq	$4, %r8
	cmpq	%rdi, %r8
	je	.LBB2_6
.LBB2_12:                               # %for.body17
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rsp,%rdx,4), %r9d
	cmpl	%esi, %r9d
	cmovgl	%r9d, %esi
	movl	4(%rsp,%rdx,4), %r9d
	cmovgl	%edx, %ecx
	cmpl	%esi, %r9d
	jg	.LBB2_13
# %bb.14:                               # %for.body17
                                        #   in Loop: Header=BB2_12 Depth=2
	movl	%esi, %r9d
	movl	8(%rsp,%rdx,4), %r10d
	cmpl	%r9d, %r10d
	jle	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_12 Depth=2
	leal	2(%rdx), %ecx
	movl	12(%rsp,%rdx,4), %esi
	cmpl	%r10d, %esi
	jle	.LBB2_20
	jmp	.LBB2_19
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_12 Depth=2
	leal	1(%rdx), %ecx
	movl	8(%rsp,%rdx,4), %r10d
	cmpl	%r9d, %r10d
	jg	.LBB2_16
.LBB2_17:                               # %for.body17
                                        #   in Loop: Header=BB2_12 Depth=2
	movl	%r9d, %r10d
	movl	12(%rsp,%rdx,4), %esi
	cmpl	%r10d, %esi
	jle	.LBB2_20
.LBB2_19:                               #   in Loop: Header=BB2_12 Depth=2
	leal	3(%rdx), %ecx
	jmp	.LBB2_21
.LBB2_9:
	xorl	%ebp, %ebp
.LBB2_10:                               # %cleanup
	movl	%ebp, %eax
	addq	$3264, %rsp                     # imm = 0xCC0
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	x264_reference_build_list_optimal, .Lfunc_end2-x264_reference_build_list_optimal
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_init_reconfigurable
.LCPI3_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI3_1:
	.quad	0x402b000000000000              # double 13.5
.LCPI3_2:
	.quad	0xc028000000000000              # double -12
.LCPI3_3:
	.quad	0x4018000000000000              # double 6
.LCPI3_4:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI3_5:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI3_6:
	.quad	0x40f5f90000000000              # double 9.0E+4
.LCPI3_7:
	.quad	0x3ff199999999999a              # double 1.1000000000000001
.LCPI3_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI3_9:
	.quad	0xbfe0000000000000              # double -0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI3_10:
	.long	0x3f800000                      # float 1
	.text
	.globl	x264_ratecontrol_init_reconfigurable
	.p2align	4, 0x90
	.type	x264_ratecontrol_init_reconfigurable,@function
x264_ratecontrol_init_reconfigurable:   # @x264_ratecontrol_init_reconfigurable
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	26704(%rdi), %r14
	testl	%esi, %esi
	je	.LBB3_1
.LBB3_2:                                # %if.end
	cmpl	$1, 488(%rbx)
	jne	.LBB3_7
# %bb.3:                                # %if.then4
	cmpl	$0, 100(%rbx)
	movl	$80, %eax
	movl	$120, %ecx
	cmovel	%eax, %ecx
	imull	16368(%rbx), %ecx
	cvtsi2sd	%ecx, %xmm0
	cmpl	$0, 552(%rbx)
	je	.LBB3_4
# %bb.5:                                # %cond.true
	movss	592(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI3_0(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm2
	mulsd	.LCPI3_1(%rip), %xmm2
	movsd	%xmm2, (%rsp)                   # 8-byte Spill
	jmp	.LBB3_6
.LBB3_1:                                # %land.lhs.true
	cmpl	$0, 4(%r14)
	jne	.LBB3_28
	jmp	.LBB3_2
.LBB3_4:
	xorps	%xmm1, %xmm1
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
.LBB3_6:                                # %cond.end
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	40(%r14), %xmm1
	callq	pow@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movss	512(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	addsd	.LCPI3_2(%rip), %xmm0
	divsd	.LCPI3_3(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI3_4(%rip), %xmm0
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 232(%r14)
.LBB3_7:                                # %if.end20
	movl	524(%rbx), %eax
	testl	%eax, %eax
	jle	.LBB3_28
# %bb.8:                                # %land.lhs.true25
	movl	528(%rbx), %edx
	testl	%edx, %edx
	jle	.LBB3_28
# %bb.9:                                # %if.then30
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	16(%r14), %xmm0
	cvttsd2si	%xmm0, %ecx
	cmpl	%ecx, %edx
	jge	.LBB3_11
# %bb.10:                               # %if.then42
	movl	%ecx, 528(%rbx)
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB3_11:                               # %if.end56
	cmpl	$0, 12(%r14)
	je	.LBB3_12
# %bb.13:                               # %if.then58
	movl	508(%rbx), %ecx
	movl	%ecx, 524(%rbx)
	jmp	.LBB3_14
.LBB3_12:                               # %if.end56.if.end64_crit_edge
	movl	524(%rbx), %ecx
.LBB3_14:                               # %if.end64
	testl	%ebp, %ebp
	sete	%sil
	imull	$1000, 528(%rbx), %eax          # imm = 0x3E8
	imull	$1000, %ecx, %edx               # imm = 0x3E8
	movl	40(%rbx), %ecx
	testl	%ecx, %ecx
	sete	%dil
	orb	%sil, %dil
	jne	.LBB3_16
# %bb.15:                               # %if.then77
	movq	3200(%rbx), %rcx
	movl	$1, 1212(%rcx)
	xorl	%ecx, %ecx
	cmpl	$2, 40(%rbx)
	sete	%cl
	movq	3200(%rbx), %rsi
	movl	%ecx, 1240(%rsi)
	movq	3200(%rbx), %rcx
	movl	$0, 1256(%rcx)
	imull	$1000, 524(%rbx), %esi          # imm = 0x3E8
	imull	$1000, 528(%rbx), %edi          # imm = 0x3E8
	movl	%esi, %ecx
	orl	$2097152, %ecx                  # imm = 0x200000
	rep		bsfl	%ecx, %ecx
	cmpl	$7, %ecx
	movl	$6, %r8d
	cmovael	%ecx, %r8d
	addl	$-6, %r8d
	movq	3200(%rbx), %rcx
	movl	%r8d, 1216(%rcx)
	movq	3200(%rbx), %r8
	movzbl	1216(%r8), %ecx
	addb	$6, %cl
	sarl	%cl, %esi
	movl	%esi, 1224(%r8)
	movq	3200(%rbx), %r8
	movl	1224(%r8), %r9d
	movzbl	1216(%r8), %ecx
	addb	$6, %cl
	shll	%cl, %r9d
	movl	%edi, %ecx
	orl	$524288, %ecx                   # imm = 0x80000
	rep		bsfl	%ecx, %ecx
	cmpl	$5, %ecx
	movl	$4, %esi
	cmovbl	%esi, %ecx
	movl	%r9d, 1232(%r8)
	addl	$-4, %ecx
	movq	3200(%rbx), %r8
	movl	%ecx, 1220(%r8)
	movq	3200(%rbx), %r8
	movzbl	1220(%r8), %ecx
	addb	$4, %cl
	sarl	%cl, %edi
	movl	%edi, 1228(%r8)
	movq	3200(%rbx), %rdi
	movl	1228(%rdi), %r8d
	movzbl	1220(%rdi), %ecx
	addb	$4, %cl
	shll	%cl, %r8d
	movl	%r8d, 1236(%rdi)
	cvtsi2sdl	84(%rbx), %xmm0
	movsd	.LCPI3_5(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	mulsd	%xmm1, %xmm0
	movq	3200(%rbx), %rcx
	movl	1192(%rcx), %edi
	movl	1196(%rcx), %r8d
	cvtsi2sd	%r8, %xmm2
	mulsd	%xmm2, %xmm0
	cvtsi2sd	%rdi, %xmm3
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %r8d
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1292(%rcx), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %edi
	xorps	%xmm0, %xmm0
	cvtsi2sdl	1236(%rcx), %xmm0
	mulsd	.LCPI3_6(%rip), %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	1232(%rcx), %xmm2
	divsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %r9d
	bsrl	%r9d, %r9d
	xorl	$-32, %r9d
	addl	$33, %r9d
	cmpl	$22, %r9d
	movl	$22, %r10d
	cmovbl	%r9d, %r10d
	cmpl	$5, %r10d
	cmovbl	%esi, %r10d
	addl	$2, %r10d
	bsrl	%r8d, %r8d
	xorl	$-32, %r8d
	addl	$33, %r8d
	cmpl	$5, %r8d
	cmovbl	%esi, %r8d
	movl	%r10d, 1244(%rcx)
	movq	3200(%rbx), %rcx
	bsrl	%edi, %edi
	xorl	$-32, %edi
	addl	$33, %edi
	cmpl	$5, %edi
	cmovbl	%esi, %edi
	movl	%r8d, 1248(%rcx)
	movq	3200(%rbx), %rcx
	movl	%edi, 1252(%rcx)
	movq	3200(%rbx), %rcx
	movl	1236(%rcx), %esi
	cmpl	%esi, %eax
	cmovgel	%esi, %eax
	movl	1232(%rcx), %ecx
	cmpl	%ecx, %edx
	cmovgel	%ecx, %edx
	jmp	.LBB3_17
.LBB3_16:                               # %if.else
	testl	%ebp, %ebp
	setne	%sil
	testl	%ecx, %ecx
	sete	%cl
	orb	%sil, %cl
	je	.LBB3_29
.LBB3_17:                               # %if.end240
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	movsd	16(%r14), %xmm2                 # xmm2 = mem[0],zero
	movapd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm0, 128(%r14)
	movsd	%xmm1, 136(%r14)
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	%xmm1, 104(%r14)
	movsd	.LCPI3_7(%rip), %xmm3           # xmm3 = [1.1000000000000001E+0,0.0E+0]
	mulsd	%xmm0, %xmm3
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm3
	seta	%al
	movl	%eax, 152(%r14)
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm0
	divsd	24(%r14), %xmm2
	movsd	.LCPI3_8(%rip), %xmm1           # xmm1 = [1.5E+0,0.0E+0]
	subsd	%xmm2, %xmm1
	xorpd	%xmm2, %xmm2
	mulsd	.LCPI3_9(%rip), %xmm0
	maxsd	%xmm1, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	.LCPI3_0(%rip), %xmm0
	movsd	%xmm0, 208(%r14)
	cmpl	$1, 488(%rbx)
	jne	.LBB3_21
# %bb.18:                               # %land.lhs.true279
	movss	516(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	xorpd	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB3_19
	jnp	.LBB3_21
.LBB3_19:                               # %if.then283
	subss	512(%rbx), %xmm0
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, 160(%r14)
	ucomiss	%xmm0, %xmm1
	jb	.LBB3_21
# %bb.20:                               # %if.then295
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movq	$0, 160(%r14)
.LBB3_21:                               # %if.end298
	testl	%ebp, %ebp
	je	.LBB3_28
# %bb.22:                               # %if.then300
	movss	532(%rbx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI3_10(%rip), %xmm0
	jbe	.LBB3_24
# %bb.23:                               # %if.then306
	xorps	%xmm1, %xmm1
	cvtsi2ssl	528(%rbx), %xmm1
	divss	%xmm1, %xmm0
	movss	.LCPI3_10(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	minss	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm0
	andnps	%xmm1, %xmm0
	movss	%xmm0, 532(%rbx)
.LBB3_24:                               # %if.end321
	cvtss2sd	%xmm0, %xmm0
	movsd	128(%r14), %xmm1                # xmm1 = mem[0],zero
	divsd	104(%r14), %xmm1
	maxsd	%xmm1, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	minsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	cmpltsd	%xmm2, %xmm0
	andnpd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 532(%rbx)
	cvtss2sd	%xmm0, %xmm0
	mulsd	104(%r14), %xmm0
	movsd	%xmm0, 112(%r14)
	movl	$1, 8(%r14)
	xorl	%eax, %eax
	cmpl	$0, 4(%r14)
	jne	.LBB3_27
# %bb.25:                               # %land.lhs.true355
	cmpl	$2, 488(%rbx)
	jne	.LBB3_27
# %bb.26:                               # %land.rhs
	movl	524(%rbx), %ecx
	xorl	%eax, %eax
	cmpl	508(%rbx), %ecx
	setle	%al
.LBB3_27:                               # %land.end
	movl	%eax, 12(%r14)
.LBB3_28:                               # %cleanup373
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_29:                               # %if.then238
	.cfi_def_cfa_offset 48
	movl	$.L.str.3, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	x264_log@PLT                    # TAILCALL
.Lfunc_end3:
	.size	x264_ratecontrol_init_reconfigurable, .Lfunc_end3-x264_ratecontrol_init_reconfigurable
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_new
.LCPI4_0:
	.quad	0x4039000000000000              # double 25
.LCPI4_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI4_2:
	.quad	0x408f400000000000              # double 1000
.LCPI4_3:
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI4_5:
	.quad	0x41255cc000000000              # double 7.0E+5
.LCPI4_7:
	.quad	0x4018000000000000              # double 6
.LCPI4_8:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI4_9:
	.quad	0xc028000000000000              # double -12
.LCPI4_10:
	.quad	0x3feb333333333333              # double 0.84999999999999998
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_4:
	.long	0x41c00000                      # float 24
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI4_6:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI4_11:
	.quad	0x3fd0000000000000              # double 0.25
	.quad	0x3ff0000000000000              # double 1
.LCPI4_12:
	.long	1                               # 0x1
	.long	5                               # 0x5
	.zero	4
	.zero	4
.LCPI4_13:
	.long	2                               # 0x2
	.long	1                               # 0x1
	.zero	4
	.zero	4
.LCPI4_14:
	.long	1                               # 0x1
	.long	4                               # 0x4
	.zero	4
	.zero	4
.LCPI4_15:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.zero	4
	.zero	4
.LCPI4_16:
	.long	2                               # 0x2
	.long	2                               # 0x2
	.zero	4
	.zero	4
.LCPI4_17:
	.long	1                               # 0x1
	.long	5                               # 0x5
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI4_18:
	.long	2                               # 0x2
	.long	1                               # 0x1
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI4_19:
	.long	1                               # 0x1
	.long	4                               # 0x4
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI4_20:
	.long	0                               # 0x0
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	0                               # 0x0
	.text
	.globl	x264_ratecontrol_new
	.p2align	4, 0x90
	.type	x264_ratecontrol_new,@function
x264_ratecontrol_new:                   # @x264_ratecontrol_new
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	imull	$936, 4(%rdi), %edi             # imm = 0x3A8
	callq	x264_malloc@PLT
	movq	%rax, 26704(%r14)
	movl	$-1, %ebp
	testq	%rax, %rax
	je	.LBB4_245
# %bb.1:                                # %do.end
	movslq	4(%r14), %rcx
	imulq	$936, %rcx, %rdx                # imm = 0x3A8
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movq	26704(%r14), %r15
	cmpl	$0, 488(%r14)
	je	.LBB4_3
# %bb.2:                                # %land.rhs
	cmpl	$0, 576(%r14)
	sete	%bl
.LBB4_3:                                # %land.end
	movzbl	%bl, %eax
	movl	%eax, (%r15)
	cmpl	$2, 488(%r14)
	jne	.LBB4_4
# %bb.5:                                # %land.rhs24
	cmpl	$0, 576(%r14)
	setne	%al
	jmp	.LBB4_6
.LBB4_4:
	xorl	%eax, %eax
.LBB4_6:                                # %land.end29
	movzbl	%al, %eax
	movl	%eax, 4(%r15)
	movl	652(%r14), %eax
	movsd	.LCPI4_0(%rip), %xmm0           # xmm0 = [2.5E+1,0.0E+0]
	testl	%eax, %eax
	je	.LBB4_9
# %bb.7:                                # %land.lhs.true
	movl	656(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB4_9
# %bb.8:                                # %if.then37
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	movl	%ecx, %eax
	cvtsi2ss	%rax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
.LBB4_9:                                # %if.end46
	movsd	%xmm0, 16(%r15)
	cmpl	$0, 552(%r14)
	je	.LBB4_11
# %bb.10:                               # %if.then50
	movl	$1065353216, 540(%r14)          # imm = 0x3F800000
	movsd	.LCPI4_1(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	jmp	.LBB4_12
.LBB4_11:                               # %if.else53
	movss	592(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB4_12:                               # %if.end58
	movsd	%xmm0, 40(%r15)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	508(%r14), %xmm0
	mulsd	.LCPI4_2(%rip), %xmm0
	movsd	%xmm0, 24(%r15)
	movss	520(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%r15)
	movl	16368(%r14), %eax
	movl	%eax, 48(%r15)
	movl	$-1, 368(%r15)
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, 208(%r15)
	cmpl	$1, 488(%r14)
	jne	.LBB4_15
# %bb.13:                               # %land.lhs.true71
	cmpl	$0, 576(%r14)
	je	.LBB4_15
# %bb.14:                               # %if.then76
	movl	$.L.str.5, %edx
	movq	%r14, %rdi
	jmp	.LBB4_63
.LBB4_15:                               # %if.end77
	movq	%r14, %rdi
	movl	$1, %esi
	callq	x264_ratecontrol_init_reconfigurable
	movsd	.LCPI4_3(%rip), %xmm1           # xmm1 = [1.0E-2,0.0E+0]
	ucomisd	32(%r15), %xmm1
	movabsq	$4576918229304087675, %rbx      # imm = 0x3F847AE147AE147B
	ja	.LBB4_16
# %bb.17:                               # %if.end83
	movb	$1, %al
	cmpl	$0, 8(%r15)
	je	.LBB4_18
.LBB4_19:                               # %lor.end
	movzbl	%al, %eax
	movl	%eax, 25808(%r14)
	cmpl	$0, (%r15)
	jne	.LBB4_20
	jmp	.LBB4_27
.LBB4_16:                               # %if.then81
	movl	$.L.str.6, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movsd	.LCPI4_3(%rip), %xmm1           # xmm1 = [1.0E-2,0.0E+0]
	movq	%rbx, 32(%r15)
	movb	$1, %al
	cmpl	$0, 8(%r15)
	jne	.LBB4_19
.LBB4_18:                               # %lor.rhs
	cmpl	$0, 544(%r14)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 25808(%r14)
	cmpl	$0, (%r15)
	je	.LBB4_27
.LBB4_20:                               # %if.then91
	movq	%rbx, 384(%r15)
	cmpl	$1, 488(%r14)
	jne	.LBB4_21
# %bb.22:                               # %cond.true
	movss	512(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB4_23
.LBB4_21:
	movss	.LCPI4_4(%rip), %xmm0           # xmm0 = [2.4E+1,0.0E+0,0.0E+0,0.0E+0]
.LBB4_23:                               # %cond.end
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 376(%r15)
	movsd	40(%r15), %xmm1                 # xmm1 = mem[0],zero
	movsd	.LCPI4_5(%rip), %xmm0           # xmm0 = [7.0E+5,0.0E+0]
	callq	pow@PLT
	movapd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16368(%r14), %xmm0
	mulsd	.LCPI4_3(%rip), %xmm2
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB4_25
# %bb.24:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB4_26
.LBB4_25:                               # %call.sqrt
	movsd	%xmm2, 24(%rsp)                 # 8-byte Spill
	callq	sqrt@PLT
	movsd	24(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB4_26:                               # %cond.end.split
	andpd	.LCPI4_6(%rip), %xmm0
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 184(%r15)
	movsd	24(%r15), %xmm0                 # xmm0 = mem[0],zero
	divsd	16(%r15), %xmm0
	movsd	%xmm0, 200(%r15)
	movl	$2, 368(%r15)
.LBB4_27:                               # %if.end115
	movss	536(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	log2f@PLT
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI4_7(%rip), %xmm0
	movsd	%xmm0, 240(%r15)
	movss	540(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	log2f@PLT
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_7(%rip), %xmm4           # xmm4 = [6.0E+0,0.0E+0]
	mulsd	%xmm4, %xmm0
	movsd	%xmm0, 248(%r15)
	movl	492(%r14), %eax
	movl	%eax, 52(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	240(%r15), %xmm2                # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	movsd	.LCPI4_8(%rip), %xmm3           # xmm3 = [5.0E-1,0.0E+0]
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	cmpl	$51, %eax
	movl	$51, %ecx
	cmovgel	%ecx, %eax
	xorl	%edx, %edx
	testl	%eax, %eax
	cmovlel	%edx, %eax
	movl	%eax, 60(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	492(%r14), %xmm1
	addsd	%xmm0, %xmm1
	addsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %eax
	cmpl	$51, %eax
	cmovll	%eax, %ecx
	testl	%ecx, %ecx
	cmovlel	%edx, %ecx
	movl	%ecx, 56(%r15)
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, 17428(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	504(%r14), %xmm0
	divsd	%xmm4, %xmm0
	callq	exp2@PLT
	movsd	%xmm0, 480(%r15)
	movabsq	$4616509071402587280, %rax      # imm = 0x4011228A8751D490
	movq	%rax, 320(%r15)
	movl	4(%r14), %eax
	imull	8(%r14), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	leal	(%rax,%rax,4), %edi
	shll	$5, %edi
	addl	$160, %edi
	callq	x264_malloc@PLT
	movq	%rax, 144(%r15)
	testq	%rax, %rax
	je	.LBB4_245
# %bb.28:                               # %do.body176
	movl	$32, %edi
	callq	x264_malloc@PLT
	movq	%rax, 872(%r15)
	testq	%rax, %rax
	je	.LBB4_245
# %bb.29:                               # %for.cond.preheader
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	leaq	552(%r15), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	incl	%eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	xorl	%r14d, %r14d
	movabsq	$4611686018427387904, %rbp      # imm = 0x4000000000000000
	movabsq	$4602678819172646912, %r12      # imm = 0x3FE0000000000000
	xorl	%ebx, %ebx
	movq	16(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB4_30
	.p2align	4, 0x90
.LBB4_33:                               # %for.cond239.preheader
                                        #   in Loop: Header=BB4_30 Depth=1
	movq	%rbx, %rax
	shlq	$6, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movapd	.LCPI4_11(%rip), %xmm0          # xmm0 = [2.5E-1,1.0E+0]
	movupd	%xmm0, (%rcx,%rax)
	movsd	.LCPI4_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	movupd	%xmm1, 16(%rcx,%rax)
	movupd	%xmm0, 32(%rcx,%rax)
	movupd	%xmm1, 48(%rcx,%rax)
	incq	%rbx
	addq	$32, %r14
	cmpq	$5, %rbx
	je	.LBB4_34
.LBB4_30:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_85 Depth 2
	cmpl	$1, 488(%r13)
	movss	.LCPI4_4(%rip), %xmm0           # xmm0 = [2.4E+1,0.0E+0,0.0E+0,0.0E+0]
	jne	.LBB4_32
# %bb.31:                               # %cond.true191
                                        #   in Loop: Header=BB4_30 Depth=1
	movss	512(%r13), %xmm0                # xmm0 = mem[0],zero,zero,zero
.LBB4_32:                               # %cond.end196
                                        #   in Loop: Header=BB4_30 Depth=1
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_9(%rip), %xmm1           # xmm1 = [-1.2E+1,0.0E+0]
	addsd	%xmm1, %xmm0
	movsd	.LCPI4_7(%rip), %xmm1           # xmm1 = [6.0E+0,0.0E+0]
	divsd	%xmm1, %xmm0
	callq	exp2@PLT
	movsd	.LCPI4_10(%rip), %xmm1          # xmm1 = [8.4999999999999998E-1,0.0E+0]
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 328(%r15,%rbx,8)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	496(%r13), %xmm0
	addsd	.LCPI4_9(%rip), %xmm0
	divsd	.LCPI4_7(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI4_10(%rip), %xmm0
	movsd	%xmm0, 400(%r15,%rbx,8)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	500(%r13), %xmm0
	addsd	.LCPI4_9(%rip), %xmm0
	divsd	.LCPI4_7(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI4_10(%rip), %xmm0
	movsd	%xmm0, 440(%r15,%rbx,8)
	movq	%r14, %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	movabsq	$4607182418800017408, %rsi      # imm = 0x3FF0000000000000
	js	.LBB4_33
	.p2align	4, 0x90
.LBB4_85:                               # %for.body217
                                        #   Parent Loop BB4_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	144(%r15), %rdx
	movq	%rbp, (%rdx,%rax)
	movq	144(%r15), %rdx
	movq	%rsi, 8(%rdx,%rax)
	movq	144(%r15), %rdx
	movq	%r12, 16(%rdx,%rax)
	movq	144(%r15), %rdx
	movq	$0, 24(%rdx,%rax)
	addq	$160, %rax
	decq	%rcx
	jne	.LBB4_85
	jmp	.LBB4_33
.LBB4_34:                               # %for.cond.cleanup
	movq	872(%r15), %rax
	movq	144(%r15), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	%xmm1, 16(%rax)
	movups	%xmm0, (%rax)
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	26704(%r12), %rbx
	movq	624(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_66
# %bb.35:                               # %land.lhs.true.i
	cmpl	$0, 616(%r12)
	je	.LBB4_36
.LBB4_66:                               # %if.end71.i
	movslq	616(%r12), %rdi
	testq	%rdi, %rdi
	movl	$-1, %ebp
	jle	.LBB4_82
.LBB4_67:                               # %for.cond79.preheader.i
	movq	608(%r12), %rax
	movq	%rdi, %rdx
	shlq	$5, %rdx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	jmp	.LBB4_69
	.p2align	4, 0x90
.LBB4_68:                               # %for.cond79.i
                                        #   in Loop: Header=BB4_69 Depth=1
	addq	$32, %rsi
	cmpq	%rsi, %rdx
	je	.LBB4_75
.LBB4_69:                               # %for.body86.i
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rax,%rsi), %ecx
	movl	4(%rax,%rsi), %r8d
	testl	%ecx, %ecx
	js	.LBB4_71
# %bb.70:                               # %for.body86.i
                                        #   in Loop: Header=BB4_69 Depth=1
	cmpl	%r8d, %ecx
	jg	.LBB4_71
# %bb.72:                               # %if.else.i
                                        #   in Loop: Header=BB4_69 Depth=1
	cmpl	$0, 8(%rax,%rsi)
	jne	.LBB4_68
# %bb.73:                               # %if.else.i
                                        #   in Loop: Header=BB4_69 Depth=1
	movss	16(%rax,%rsi), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	.LBB4_68
# %bb.74:                               # %if.then104.i
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movl	$.L.str.76, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movb	$1, %al
	callq	x264_log@PLT
	jmp	.LBB4_61
.LBB4_36:                               # %if.then.i
	callq	strlen@PLT
	leal	1(%rax), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	movl	$-1, %ebp
	je	.LBB4_61
# %bb.37:                               # %do.end.i
	movq	%rax, %r14
	movq	624(%r12), %rsi
	movq	%rax, %rdi
	callq	strcpy@PLT
	movl	$1, 616(%r12)
	movzbl	(%r14), %ecx
	testb	%cl, %cl
	je	.LBB4_38
# %bb.39:                               # %for.body.i.preheader
	movq	%r14, %rax
	incq	%rax
	movl	$1, %edi
	.p2align	4, 0x90
.LBB4_40:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edx, %edx
	cmpb	$47, %cl
	sete	%dl
	addl	%edx, %edi
	movl	%edi, 616(%r12)
	movzbl	(%rax), %ecx
	incq	%rax
	testb	%cl, %cl
	jne	.LBB4_40
# %bb.41:                               # %do.body27.loopexit.i
	shll	$5, %edi
	jmp	.LBB4_42
.LBB4_71:                               # %if.then97.i
	movl	$.L.str.75, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB4_61
.LBB4_75:                               # %for.end116.i
	incl	%edi
	movl	%edi, 888(%rbx)
	shll	$5, %edi
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, 896(%rbx)
	testq	%rax, %rax
	je	.LBB4_61
# %bb.76:                               # %do.end134.i
	addq	$32, %rax
	movq	608(%r12), %rsi
	movslq	888(%rbx), %rdx
	shlq	$5, %rdx
	addq	$-32, %rdx
	movq	%rax, %rdi
	callq	memcpy@PLT
	movq	896(%rbx), %rax
	movl	$0, (%rax)
	movq	896(%rbx), %rax
	movl	$2147483647, 4(%rax)            # imm = 0x7FFFFFFF
	movq	896(%rbx), %rax
	movl	$0, 8(%rax)
	movq	896(%rbx), %rax
	movl	$1065353216, 16(%rax)           # imm = 0x3F800000
	movl	$704, %edi                      # imm = 0x2C0
	callq	x264_malloc@PLT
	movq	896(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	896(%rbx), %rax
	movq	24(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB4_61
# %bb.77:                               # %do.end167.i
	movl	$704, %edx                      # imm = 0x2C0
	movq	%r12, %rsi
	callq	memcpy@PLT
	movl	888(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB4_82
# %bb.78:                               # %for.body178.i.preheader
	movl	$1, %ecx
	movl	$56, %edx
	jmp	.LBB4_79
.LBB4_81:                               # %for.inc193.i
                                        #   in Loop: Header=BB4_79 Depth=1
	incq	%rcx
	movslq	%eax, %rsi
	addq	$32, %rdx
	cmpq	%rsi, %rcx
	jge	.LBB4_82
.LBB4_79:                               # %for.body178.i
                                        # =>This Inner Loop Header: Depth=1
	movq	896(%rbx), %rsi
	cmpq	$0, (%rsi,%rdx)
	jne	.LBB4_81
# %bb.80:                               # %if.then184.i
                                        #   in Loop: Header=BB4_79 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi,%rdx)
	movl	888(%rbx), %eax
	jmp	.LBB4_81
.LBB4_38:
	movl	$32, %edi
.LBB4_42:                               # %do.body27.i
	callq	x264_malloc@PLT
	movq	%rax, 608(%r12)
	testq	%rax, %rax
	je	.LBB4_61
# %bb.43:                               # %for.cond44.preheader.i
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	cmpl	$0, 616(%r12)
	jle	.LBB4_65
# %bb.44:                               # %for.body50.i.preheader
	leaq	12(%rsp), %rbp
	xorl	%ebx, %ebx
	movq	72(%rsp), %r13                  # 8-byte Reload
	jmp	.LBB4_45
.LBB4_64:                               # %for.inc63.i
                                        #   in Loop: Header=BB4_45 Depth=1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	shlq	$32, %rcx
	movabsq	$4294967296, %rax               # imm = 0x100000000
	addq	%rax, %rcx
	sarq	$32, %rcx
	addq	%rcx, %r13
	movq	24(%rsp), %rbx                  # 8-byte Reload
	incq	%rbx
	movq	16(%rsp), %r12                  # 8-byte Reload
	movslq	616(%r12), %rax
	cmpq	%rax, %rbx
	movq	%r14, %rbp
	jge	.LBB4_65
.LBB4_45:                               # %for.body50.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_56 Depth 2
	movl	$.L.str.74, %esi
	movq	%r13, %rdi
	callq	strcspn@PLT
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	cltq
	movb	$0, (%r13,%rax)
	movq	608(%r12), %r14
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	shlq	$5, %rbx
	leaq	(%r14,%rbx), %r12
	movl	$0, 12(%rsp)
	movq	$0, 24(%r14,%rbx)
	movl	$1065353216, 16(%r14,%rbx)      # imm = 0x3F800000
	leaq	4(%r14,%rbx), %rcx
	leaq	12(%r14,%rbx), %r8
	movl	$.L.str.77, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %r9
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movq	%rbp, %r9
	movl	$1, %ebp
	cmpl	$2, %eax
	jg	.LBB4_50
# %bb.46:                               # %if.else.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	leaq	(%r14,%rbx), %r8
	addq	$16, %r8
	xorl	%ebp, %ebp
	movl	$.L.str.78, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%r9, %rbx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movq	%rbx, %r9
	cmpl	$2, %eax
	jg	.LBB4_50
# %bb.47:                               # %if.else8.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	xorl	%ebp, %ebp
	movl	$.L.str.79, %esi
	movq	%r13, %rdi
	movq	%r12, %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%r9, %r8
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movq	%rbx, %r9
	cmpl	$1, %eax
	jle	.LBB4_48
.LBB4_50:                               # %if.end17.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	movq	%r9, %r14
	movl	%ebp, 8(%r12)
	movslq	12(%rsp), %rbx
	cmpb	$0, (%r13,%rbx)
	je	.LBB4_64
# %bb.51:                               # %do.body.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	movl	$704, %edi                      # imm = 0x2C0
	callq	x264_malloc@PLT
	movq	%rax, 24(%r12)
	testq	%rax, %rax
	je	.LBB4_49
# %bb.52:                               # %do.end.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	addq	%r13, %rbx
	movl	$704, %edx                      # imm = 0x2C0
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	memcpy@PLT
	movq	24(%r12), %rax
	movq	x264_free@GOTPCREL(%rip), %rcx
	movq	%rcx, 696(%rax)
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strtok@PLT
	testq	%rax, %rax
	je	.LBB4_64
# %bb.53:                               # %while.body.peel.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$61, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_54
.LBB4_55:                               # %if.then33.peel.i.i
                                        #   in Loop: Header=BB4_45 Depth=1
	movq	%rax, %rbp
	movb	$0, (%rax)
	incq	%rbp
.LBB4_56:                               # %if.end34.peel.i.i
                                        #   Parent Loop BB4_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%r12), %rdi
	movq	%rbx, %rsi
	movq	%rbp, %rdx
	callq	x264_param_parse@PLT
	testl	%eax, %eax
	jne	.LBB4_60
# %bb.57:                               # %while.cond.i.i
                                        #   in Loop: Header=BB4_56 Depth=2
	movl	$.L.str.81, %esi
	xorl	%edi, %edi
	callq	strtok@PLT
	testq	%rax, %rax
	je	.LBB4_64
# %bb.58:                               # %while.body.i.i
                                        #   in Loop: Header=BB4_56 Depth=2
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$61, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	jne	.LBB4_55
# %bb.59:                               #   in Loop: Header=BB4_56 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB4_56
.LBB4_54:                               #   in Loop: Header=BB4_45 Depth=1
	xorl	%ebp, %ebp
	jmp	.LBB4_56
.LBB4_60:                               # %cleanup64.i
	movl	$.L.str.82, %edx
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rcx
	movq	%rbp, %r8
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %ebp
.LBB4_61:                               # %if.then279
	movl	$.L.str.7, %edx
.LBB4_62:                               # %cleanup873
	movq	%r12, %rdi
.LBB4_63:                               # %cleanup873
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB4_245:                              # %cleanup873
	movl	%ebp, %eax
	addq	$104, %rsp
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
.LBB4_65:                               # %cleanup67.i
	.cfi_def_cfa_offset 160
	movq	72(%rsp), %rdi                  # 8-byte Reload
	callq	x264_free@PLT
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movslq	616(%r12), %rdi
	testq	%rdi, %rdi
	movl	$-1, %ebp
	jg	.LBB4_67
.LBB4_82:                               # %if.end280
	cmpl	$0, 576(%r12)
	je	.LBB4_222
# %bb.83:                               # %if.then285
	movq	584(%r12), %rdi
	testq	%rdi, %rdi
	je	.LBB4_84
# %bb.86:                               # %cond.end291
	callq	x264_slurp_file@PLT
	testq	%rax, %rax
	je	.LBB4_87
# %bb.88:                               # %if.end298
	movq	%rax, %r14
	cmpl	$0, 552(%r12)
	je	.LBB4_92
# %bb.89:                               # %if.then303
	movq	584(%r12), %r12
	movq	%r12, %rdi
	callq	strlen@PLT
	leal	8(%rax), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB4_245
# %bb.90:                               # %if.end310
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	strcpy@PLT
	movq	%rbx, %rdi
	callq	strlen@PLT
	movabsq	$28540514901060910, %rcx        # imm = 0x65657274626D2E
	movq	%rcx, (%rbx,%rax)
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	fopen@PLT
	movq	%rax, 296(%r15)
	movq	%rbx, %rdi
	callq	x264_free@PLT
	cmpq	$0, 296(%r15)
	movq	16(%rsp), %r12                  # 8-byte Reload
	je	.LBB4_91
.LBB4_92:                               # %if.end316
	movl	$.L.str.14, %esi
	movl	$9, %edx
	movq	%r14, %rdi
	callq	strncmp@PLT
	movq	%r14, %r13
	testl	%eax, %eax
	je	.LBB4_93
.LBB4_147:                              # %if.end519
	xorl	%ebx, %ebx
	movq	%r13, %rax
	.p2align	4, 0x90
.LBB4_148:                              # %for.body522
                                        # =>This Inner Loop Header: Depth=1
	incq	%rax
	movq	%rax, %rdi
	movl	$59, %esi
	callq	strchr@PLT
	decl	%ebx
	testq	%rax, %rax
	jne	.LBB4_148
# %bb.149:                              # %for.end526
	cmpl	$-1, %ebx
	je	.LBB4_150
# %bb.153:                              # %if.end529
	movl	$-2, %eax
	subl	%ebx, %eax
	notl	%ebx
	movl	%ebx, 304(%r15)
	movl	36(%r12), %ecx
	cmpl	%eax, %ecx
	setg	%al
	testl	%ecx, %ecx
	setle	%dl
	orb	%al, %dl
	jne	.LBB4_155
# %bb.154:                              # %if.then540
	movl	$.L.str.47, %edx
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	36(%r12), %ecx
	movl	304(%r15), %ebx
.LBB4_155:                              # %if.end544
	cmpl	%ebx, %ecx
	jle	.LBB4_157
# %bb.156:                              # %if.then550
	movl	$.L.str.48, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	%ebx, %r8d
.LBB4_118:                              # %cleanup512.thread
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB4_245
.LBB4_87:                               # %if.then297
	movl	$.L.str.10, %edx
	jmp	.LBB4_62
.LBB4_93:                               # %if.then319
	movq	%r14, %rdi
	movl	$10, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_245
# %bb.94:                               # %if.end325
	movq	%rax, %r13
	movb	$0, (%rax)
	leaq	12(%rsp), %rdx
	leaq	60(%rsp), %rcx
	movl	$.L.str.15, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB4_95
# %bb.96:                               # %if.else330
	cmpl	$0, 552(%r12)
	je	.LBB4_102
# %bb.97:                               # %land.lhs.true335
	movl	12(%rsp), %r9d
	movl	20(%r12), %ecx
	cmpl	%ecx, %r9d
	jne	.LBB4_98
# %bb.99:                               # %lor.lhs.false
	movl	60(%rsp), %r10d
	movl	24(%r12), %r8d
	cmpl	%r8d, %r10d
	jne	.LBB4_100
.LBB4_102:                              # %if.end348
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_105
# %bb.103:                              # %land.lhs.true351
	leaq	64(%rsp), %rdx
	leaq	68(%rsp), %rcx
	movl	$.L.str.19, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$2, %eax
	jne	.LBB4_104
.LBB4_105:                              # %if.end356
	movl	64(%rsp), %r9d
	movl	660(%r12), %ecx
	cmpl	%ecx, %r9d
	jne	.LBB4_106
# %bb.107:                              # %lor.lhs.false360
	movl	68(%rsp), %r10d
	movl	664(%r12), %r8d
	cmpl	%r8d, %r10d
	jne	.LBB4_108
# %bb.109:                              # %if.end369
	movl	$.L.str.22, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_113
# %bb.110:                              # %land.lhs.true372
	xorl	%ebx, %ebx
	leaq	12(%rsp), %rdx
	movl	$.L.str.23, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_113
# %bb.111:                              # %land.lhs.true375
	movl	396(%r12), %eax
	testl	%eax, %eax
	cmovgl	%eax, %ebx
	movl	12(%rsp), %r8d
	cmpl	%r8d, %ebx
	jne	.LBB4_112
.LBB4_113:                              # %if.end401
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_119
# %bb.114:                              # %land.lhs.true404
	leaq	12(%rsp), %rdx
	movl	$.L.str.26, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_119
# %bb.115:                              # %land.lhs.true407
	movl	100(%r12), %ecx
	movl	12(%rsp), %r8d
	cmpl	%r8d, %ecx
	jne	.LBB4_116
.LBB4_119:                              # %if.end414
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movl	$.L.str.28, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_123
# %bb.120:                              # %land.lhs.true417
	leaq	12(%rsp), %rdx
	movl	$.L.str.29, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_123
# %bb.121:                              # %land.lhs.true420
	movl	112(%r12), %ecx
	movl	12(%rsp), %r8d
	cmpl	%r8d, %ecx
	jne	.LBB4_122
.LBB4_123:                              # %if.end427
	movl	$.L.str.31, %esi
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_128
# %bb.124:                              # %land.lhs.true430
	leaq	12(%rsp), %rdx
	movl	$.L.str.32, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_128
# %bb.125:                              # %land.lhs.true433
	movl	96(%r12), %ecx
	movl	12(%rsp), %r8d
	cmpl	%r8d, %ecx
	jne	.LBB4_126
.LBB4_128:                              # %if.end440
	movl	$.L.str.34, %esi
	movq	%r14, %r13
	movq	%r14, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_132
# %bb.129:                              # %land.lhs.true443
	leaq	12(%rsp), %rdx
	movl	$.L.str.35, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_132
# %bb.130:                              # %land.lhs.true446
	movl	84(%r12), %ecx
	movl	12(%rsp), %r8d
	cmpl	%r8d, %ecx
	jne	.LBB4_131
.LBB4_132:                              # %if.end453
	movl	$.L.str.37, %esi
	movq	%r13, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_135
# %bb.133:                              # %land.lhs.true456
	cmpl	$2, 488(%r12)
	jne	.LBB4_135
# %bb.134:                              # %if.then462
	movl	$.L.str.38, %edx
	movq	%r12, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB4_135:                              # %if.end463
	movl	$.L.str.39, %esi
	movq	%r13, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	jne	.LBB4_138
# %bb.136:                              # %land.lhs.true466
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$3, 404(%rax)
	jne	.LBB4_138
# %bb.137:                              # %if.then471
	movl	$.L.str.40, %edx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$1, 25820(%rbx)
.LBB4_138:                              # %if.end473
	movl	$.L.str.41, %esi
	movq	%r13, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_151
# %bb.139:                              # %land.lhs.true476
	leaq	12(%rsp), %rdx
	movl	$.L.str.42, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	setne	%cl
	movl	12(%rsp), %eax
	cmpl	$3, %eax
	setb	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB4_151
# %bb.140:                              # %if.then485
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, 104(%rcx)
	jmp	.LBB4_141
.LBB4_150:                              # %if.then528
	movl	$.L.str.46, %edx
	jmp	.LBB4_62
.LBB4_157:                              # %do.body556
	imull	$168, %ebx, %edi
	callq	x264_malloc@PLT
	movq	%rax, 312(%r15)
	testq	%rax, %rax
	je	.LBB4_245
# %bb.158:                              # %do.end568
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movslq	304(%r15), %rcx
	imulq	$168, %rcx, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	cmpl	$0, 304(%r15)
	jle	.LBB4_220
# %bb.159:                              # %for.body581.preheader
	movl	$64, %eax
	xorl	%ecx, %ecx
	movabsq	$4612005471775216784, %rdx      # imm = 0x4001228A8751D490
.LBB4_160:                              # %for.body581
                                        # =>This Inner Loop Header: Depth=1
	movq	312(%r15), %rsi
	movl	$0, -64(%rsi,%rax)
	movq	%rdx, -8(%rsi,%rax)
	movq	%rdx, -48(%rsi,%rax)
	movl	48(%r15), %edi
	addl	$10, %edi
	movl	%edi, -32(%rsi,%rax)
	movl	$0, (%rsi,%rax)
	incq	%rcx
	movslq	304(%r15), %rsi
	addq	$168, %rax
	cmpq	%rsi, %rcx
	jl	.LBB4_160
# %bb.161:                              # %for.cond593.preheader
	testl	%esi, %esi
	jle	.LBB4_220
# %bb.162:                              # %for.body598.preheader
	xorl	%r13d, %r13d
	movq	%r14, 48(%rsp)                  # 8-byte Spill
.LBB4_163:                              # %for.body598
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movl	$59, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_164
# %bb.165:                              # %if.then603
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %rbp
	incq	%rbp
	movb	$0, (%rax)
	jmp	.LBB4_166
.LBB4_164:                              #   in Loop: Header=BB4_163 Depth=1
	xorl	%ebp, %ebp
.LBB4_166:                              # %if.end605
                                        #   in Loop: Header=BB4_163 Depth=1
	movl	$.L.str.49, %esi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	leaq	12(%rsp), %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movslq	12(%rsp), %rcx
	testq	%rcx, %rcx
	js	.LBB4_168
# %bb.167:                              # %lor.lhs.false609
                                        #   in Loop: Header=BB4_163 Depth=1
	cmpl	304(%r15), %ecx
	jge	.LBB4_168
# %bb.170:                              # %if.end614
                                        #   in Loop: Header=BB4_163 Depth=1
	movl	%eax, %ebx
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movl	%r13d, 40(%rsp)                 # 4-byte Spill
	movq	312(%r15), %r13
	imulq	$168, %rcx, %r14
	leaq	(%r14,%r13), %rax
	addq	$84, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movb	$0, 84(%r13,%r14)
	leaq	160(%r13,%r14), %rcx
	leaq	164(%r13,%r14), %r8
	leaq	28(%r13,%r14), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	leaq	24(%r13,%r14), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	32(%r13,%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	leaq	(%r14,%r13), %rbp
	addq	$68, %rbp
	leaq	(%r14,%r13), %r11
	addq	$72, %r11
	leaq	(%r14,%r13), %r10
	addq	$76, %r10
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.51, %esi
	movq	32(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdi
	leaq	72(%rsp), %rdx
	leaq	68(%rsp), %r9
	xorl	%eax, %eax
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	120(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	120(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	__isoc99_sscanf@PLT
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	movl	%eax, %ebp
	addl	%ebx, %ebp
	movl	$.L.str.52, %esi
	movq	%r12, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_171
# %bb.172:                              # %if.end625
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %rbx
	movl	%ebp, 32(%rsp)                  # 4-byte Spill
	addq	%r14, %r13
	leaq	4(%rax), %r12
	leaq	92(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	jne	.LBB4_209
# %bb.173:                              # %if.end637
                                        #   in Loop: Header=BB4_163 Depth=1
	addq	$5, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_174
# %bb.177:                              # %for.inc643
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	96(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$1, %ecx
	cmpl	$1, %eax
	jne	.LBB4_209
# %bb.178:                              # %if.end637.1
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_174
# %bb.179:                              # %for.inc643.1
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	100(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$2, %ecx
	cmpl	$1, %eax
	jne	.LBB4_209
# %bb.180:                              # %if.end637.2
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_174
# %bb.181:                              # %for.inc643.2
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	104(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$3, %ecx
	cmpl	$1, %eax
	jne	.LBB4_209
# %bb.182:                              # %if.end637.3
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_174
# %bb.183:                              # %for.inc643.3
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	108(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$4, %ecx
	cmpl	$1, %eax
	jne	.LBB4_209
# %bb.184:                              # %if.end637.4
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_174
# %bb.185:                              # %for.inc643.4
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	112(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$5, %ecx
	cmpl	$1, %eax
	jne	.LBB4_209
# %bb.186:                              # %if.end637.5
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.188:                              # %for.inc643.5
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	116(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$6, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.189:                              # %if.end637.6
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.190:                              # %for.inc643.6
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	120(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$7, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.191:                              # %if.end637.7
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.192:                              # %for.inc643.7
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	124(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$8, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.193:                              # %if.end637.8
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.194:                              # %for.inc643.8
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	128(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$9, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.195:                              # %if.end637.9
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.196:                              # %for.inc643.9
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	132(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$10, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.197:                              # %if.end637.10
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.198:                              # %for.inc643.10
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	136(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$11, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.199:                              # %if.end637.11
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.200:                              # %for.inc643.11
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	140(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$12, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.201:                              # %if.end637.12
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.202:                              # %for.inc643.12
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	144(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$13, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.203:                              # %if.end637.13
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.204:                              # %for.inc643.13
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	148(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$14, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.205:                              # %if.end637.14
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.206:                              # %for.inc643.14
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	leaq	152(%r13), %rdx
	movl	$.L.str.53, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	movl	$15, %ecx
	cmpl	$1, %eax
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	jne	.LBB4_209
# %bb.207:                              # %if.end637.15
                                        #   in Loop: Header=BB4_163 Depth=1
	incq	%r12
	movq	%r12, %rdi
	movl	$32, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_187
# %bb.208:                              #   in Loop: Header=BB4_163 Depth=1
	movq	%rax, %r12
	movl	$16, %ecx
	movl	$-1, %ebp
	movq	48(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r13                  # 8-byte Reload
.LBB4_209:                              # %for.end645
                                        #   in Loop: Header=BB4_163 Depth=1
	movl	%ecx, 156(%r13)
	movw	$-1, 90(%r13)
	movq	%r12, %rdi
	movl	$119, %esi
	callq	strchr@PLT
	testq	%rax, %rax
	je	.LBB4_212
# %bb.210:                              # %if.then648
                                        #   in Loop: Header=BB4_163 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	leaq	90(%rdx), %rbx
	leaq	86(%rdx), %rcx
	leaq	88(%rdx), %r8
	movl	$.L.str.54, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	cmpl	$3, %eax
	je	.LBB4_212
# %bb.211:                              # %if.then656
                                        #   in Loop: Header=BB4_163 Depth=1
	movw	$-1, (%rbx)
.LBB4_212:                              # %if.end659
                                        #   in Loop: Header=BB4_163 Depth=1
	movzbl	64(%rsp), %eax
	movsd	.LCPI4_17(%rip), %xmm0          # xmm0 = [1,5,0,0]
	cmpl	$98, %eax
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	40(%rsp), %r13d                 # 4-byte Reload
	jne	.LBB4_213
.LBB4_218:                              # %sw.epilog
                                        #   in Loop: Header=BB4_163 Depth=1
	movlps	%xmm0, (%rbx)
	movl	32(%rsp), %eax                  # 4-byte Reload
	movl	%eax, %r8d
	cmpl	$12, %eax
	jl	.LBB4_176
# %bb.219:                              # %for.inc695
                                        #   in Loop: Header=BB4_163 Depth=1
	movss	60(%rsp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI4_9(%rip), %xmm0
	divsd	.LCPI4_7(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI4_10(%rip), %xmm0
	movsd	%xmm0, 16(%rbx)
	incl	%r13d
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpl	304(%r15), %r13d
	jl	.LBB4_163
	jmp	.LBB4_220
.LBB4_213:                              # %if.end664
                                        #   in Loop: Header=BB4_163 Depth=1
	movl	$1, 8(%rbx)
	movl	$-1, %r8d
	addl	$-66, %eax
	cmpl	$39, %eax
	ja	.LBB4_176
# %bb.214:                              # %if.end664
                                        #   in Loop: Header=BB4_163 Depth=1
	movsd	.LCPI4_18(%rip), %xmm0          # xmm0 = [2,1,0,0]
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_217:                              # %sw.bb673
                                        #   in Loop: Header=BB4_163 Depth=1
	movsd	.LCPI4_19(%rip), %xmm0          # xmm0 = [1,4,0,0]
	jmp	.LBB4_218
.LBB4_215:                              # %sw.bb667
                                        #   in Loop: Header=BB4_163 Depth=1
	movaps	.LCPI4_16(%rip), %xmm0          # xmm0 = [2,2,u,u]
	jmp	.LBB4_218
.LBB4_216:                              # %sw.bb670
                                        #   in Loop: Header=BB4_163 Depth=1
	movsd	.LCPI4_20(%rip), %xmm0          # xmm0 = [0,3,0,0]
	jmp	.LBB4_218
.LBB4_95:                               # %if.then329
	movl	$.L.str.16, %edx
	jmp	.LBB4_62
.LBB4_220:                              # %for.end699
	movq	%r14, %rdi
	callq	x264_free@PLT
	cmpl	$2, 488(%r12)
	jne	.LBB4_222
# %bb.221:                              # %if.then705
	movq	%r12, %rdi
	callq	init_pass2
	testl	%eax, %eax
	js	.LBB4_245
.LBB4_222:                              # %if.end718
	cmpl	$0, 560(%r12)
	je	.LBB4_233
# %bb.223:                              # %if.then722
	movq	568(%r12), %r12
	movq	%r12, %rdi
	callq	strlen@PLT
	leal	6(%rax), %edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB4_224
# %bb.225:                              # %if.end730
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	strcpy@PLT
	movq	%rbx, %rdi
	callq	strlen@PLT
	movl	$1835365422, (%rbx,%rax)        # imm = 0x6D65742E
	movw	$112, 4(%rbx,%rax)
	movq	%rbx, 264(%r15)
	movl	$.L.str.57, %esi
	movq	%rbx, %rdi
	callq	fopen@PLT
	movq	%rax, 256(%r15)
	testq	%rax, %rax
	je	.LBB4_226
# %bb.227:                              # %if.end737
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rdi
	movl	$1, %esi
	callq	x264_param2string@PLT
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB4_229
# %bb.228:                              # %if.then741
	movq	256(%r15), %rdi
	movl	$.L.str.58, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB4_229:                              # %if.end744
	movq	%rbx, %rdi
	callq	x264_free@PLT
	cmpl	$0, 552(%r12)
	je	.LBB4_241
# %bb.230:                              # %land.lhs.true749
	cmpl	$0, 576(%r12)
	jne	.LBB4_236
# %bb.231:                              # %if.then754
	movq	568(%r12), %rdi
	movl	$.L.str.59, %esi
	callq	x264_strcat_filename
	movq	%rax, 280(%r15)
	movq	568(%r12), %rdi
	movl	$.L.str.11, %esi
	callq	x264_strcat_filename
	movq	%rax, 288(%r15)
	movq	280(%r15), %rdi
	testq	%rdi, %rdi
	sete	%cl
	testq	%rax, %rax
	sete	%al
	orb	%cl, %al
	jne	.LBB4_245
# %bb.232:                              # %if.end769
	movl	$.L.str.57, %esi
	callq	fopen@PLT
	movq	%rax, 272(%r15)
	testq	%rax, %rax
	je	.LBB4_91
.LBB4_233:                              # %if.end781
	cmpl	$0, 552(%r12)
	je	.LBB4_241
# %bb.234:                              # %land.lhs.true786
	cmpl	$0, 576(%r12)
	jne	.LBB4_236
# %bb.235:                              # %lor.lhs.false791
	cmpl	$0, 560(%r12)
	je	.LBB4_241
.LBB4_236:                              # %do.body797
	movl	16368(%r12), %edi
	addl	%edi, %edi
	callq	x264_malloc@PLT
	movq	%rax, 488(%r15)
	testq	%rax, %rax
	je	.LBB4_245
# %bb.237:                              # %do.end811
	cmpl	$0, 112(%r12)
	je	.LBB4_240
# %bb.238:                              # %land.lhs.true815
	cmpl	$0, 576(%r12)
	je	.LBB4_240
# %bb.239:                              # %do.body821
	movl	16368(%r12), %edi
	addl	%edi, %edi
	callq	x264_malloc@PLT
	movq	%rax, 496(%r15)
	testq	%rax, %rax
	je	.LBB4_245
.LBB4_240:                              # %if.end837
	movl	$-1, 504(%r15)
.LBB4_241:                              # %if.end838
	xorl	%ebp, %ebp
	cmpl	$0, 4(%r12)
	jle	.LBB4_245
# %bb.242:                              # %for.inc869.peel
	movq	704(%r12), %rax
	movq	%r15, 26704(%rax)
	cmpl	$2, 4(%r12)
	jl	.LBB4_245
# %bb.243:                              # %for.inc869.preheader
	leaq	936(%r15), %rbx
	movl	$89, %r14d
.LBB4_244:                              # %for.inc869
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r12,%r14,8), %rax
	movq	%rbx, 26704(%rax)
	movl	$936, %edx                      # imm = 0x3A8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	memcpy@PLT
	movq	(%r12,%r14,8), %rdi
	movl	$704, %edx                      # imm = 0x2C0
	movq	%r12, %rsi
	callq	memcpy@PLT
	movl	25808(%r12), %eax
	movq	(%r12,%r14,8), %rcx
	movl	%eax, 25808(%rcx)
	movslq	4(%r12), %rax
	leaq	1(%r14), %rcx
	addq	$-87, %r14
	addq	$936, %rbx                      # imm = 0x3A8
	cmpq	%rax, %r14
	movq	%rcx, %r14
	jl	.LBB4_244
	jmp	.LBB4_245
.LBB4_224:                              # %x264_strcat_filename.exit1274.thread
	movq	$0, 264(%r15)
	jmp	.LBB4_245
.LBB4_91:                               # %if.then314
	movl	$.L.str.13, %edx
	jmp	.LBB4_62
.LBB4_226:                              # %if.then736
	movl	$.L.str.10, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB4_63
.LBB4_98:                               # %land.lhs.true335.if.then342_crit_edge
	movl	24(%r12), %r8d
	movl	60(%rsp), %r10d
.LBB4_100:                              # %if.then342
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.17, %edx
	jmp	.LBB4_101
.LBB4_106:                              # %if.end356.if.then364_crit_edge
	.cfi_def_cfa_offset 160
	movl	664(%r12), %r8d
	movl	68(%rsp), %r10d
.LBB4_108:                              # %if.then364
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movl	$.L.str.21, %edx
.LBB4_101:                              # %cleanup512.thread
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	callq	x264_log@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB4_245
.LBB4_48:                               # %if.else15.i.i
	movl	$.L.str.80, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movq	%r13, %rcx
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB4_49:                               # %cleanup64.thread277.i
	movl	$-1, %ebp
	movq	16(%rsp), %r12                  # 8-byte Reload
	jmp	.LBB4_61
.LBB4_104:                              # %if.then355
	movl	$.L.str.20, %edx
	jmp	.LBB4_62
.LBB4_168:                              # %cleanup697.thread1284
	movl	$.L.str.50, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	movl	%r13d, %r8d
	jmp	.LBB4_169
.LBB4_171:                              # %cleanup697.thread1285
	movl	$.L.str.55, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	%ebp, %r8d
.LBB4_169:                              # %cleanup873
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %ebp
	jmp	.LBB4_245
.LBB4_174:
	movl	32(%rsp), %r8d                  # 4-byte Reload
.LBB4_175:                              # %cleanup697
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	40(%rsp), %r13d                 # 4-byte Reload
.LBB4_176:                              # %cleanup697
	movl	$.L.str.55, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	%r13d, %ecx
	jmp	.LBB4_118
.LBB4_151:                              # %if.else487
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 100(%rax)
	je	.LBB4_141
# %bb.152:                              # %if.then491
	movl	$.L.str.43, %edx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %ebp
	jmp	.LBB4_245
.LBB4_112:                              # %if.then388
	movl	$.L.str.24, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	%ebx, %ecx
	jmp	.LBB4_118
.LBB4_141:                              # %if.end493
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 552(%rax)
	jne	.LBB4_143
# %bb.142:                              # %lor.lhs.false498
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 528(%rax)
	je	.LBB4_146
.LBB4_143:                              # %land.lhs.true502
	movl	$.L.str.44, %esi
	movq	%r13, %rdi
	callq	strstr@PLT
	testq	%rax, %rax
	je	.LBB4_146
# %bb.144:                              # %land.lhs.true505
	leaq	12(%rsp), %rdx
	movl	$.L.str.45, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	__isoc99_sscanf@PLT
	testl	%eax, %eax
	je	.LBB4_146
# %bb.145:                              # %if.then508
	movl	12(%rsp), %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%eax, 556(%rcx)
.LBB4_146:                              # %cleanup512
	movq	24(%rsp), %rax                  # 8-byte Reload
	incq	%rax
	movl	$-1, %ebp
	movq	16(%rsp), %r12                  # 8-byte Reload
	movq	%r13, %r14
	movq	%rax, %r13
	jmp	.LBB4_147
.LBB4_116:                              # %if.then411
	movl	$.L.str.27, %edx
	jmp	.LBB4_117
.LBB4_122:                              # %if.then424
	movl	$.L.str.30, %edx
.LBB4_117:                              # %cleanup512.thread
	movq	%r12, %rdi
	xorl	%esi, %esi
	jmp	.LBB4_118
.LBB4_126:                              # %if.then437
	movl	$.L.str.33, %edx
	jmp	.LBB4_127
.LBB4_131:                              # %if.then450
	movl	$.L.str.36, %edx
.LBB4_127:                              # %cleanup512.thread
	movq	%r12, %rdi
	xorl	%esi, %esi
	jmp	.LBB4_169
.LBB4_187:
	movl	32(%rsp), %r8d                  # 4-byte Reload
	movl	$-1, %ebp
	jmp	.LBB4_175
.LBB4_84:                               # %cond.false290
	movl	$.L.str.8, %edi
	movl	$.L.str.9, %esi
	movl	$.L__PRETTY_FUNCTION__.x264_ratecontrol_new, %ecx
	movl	$598, %edx                      # imm = 0x256
	callq	__assert_fail@PLT
.Lfunc_end4:
	.size	x264_ratecontrol_new, .Lfunc_end4-x264_ratecontrol_new
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.LJTI4_0:
	.quad	.LBB4_217
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_218
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_216
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_176
	.quad	.LBB4_215
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function x264_strcat_filename
	.type	x264_strcat_filename,@function
x264_strcat_filename:                   # @x264_strcat_filename
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
	movq	%rdi, %r14
	callq	strlen@PLT
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	strlen@PLT
	leal	(%rax,%r15), %edi
	incl	%edi
	callq	x264_malloc@PLT
	testq	%rax, %rax
	je	.LBB5_1
# %bb.2:                                # %if.end
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rax, %r14
	callq	strcpy@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	strcat@PLT                      # TAILCALL
.LBB5_1:                                # %cleanup
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	x264_strcat_filename, .Lfunc_end5-x264_strcat_filename
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function init_pass2
.LCPI6_0:
	.quad	0x408f400000000000              # double 1000
.LCPI6_1:
	.quad	0x43e0000000000000              # double 9.2233720368547758E+18
.LCPI6_2:
	.quad	0x4010000000000000              # double 4
.LCPI6_3:
	.quad	0x3ff0000000000000              # double 1
.LCPI6_4:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI6_5:
	.quad	0x4069000000000000              # double 200
.LCPI6_6:
	.quad	0x3ff199999999999a              # double 1.1000000000000001
.LCPI6_7:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
.LCPI6_8:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI6_9:
	.quad	0xc028000000000000              # double -12
.LCPI6_10:
	.quad	0x4018000000000000              # double 6
.LCPI6_11:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI6_14:
	.quad	0x40c3880000000000              # double 1.0E+4
.LCPI6_15:
	.quad	0x3e7ad7f29abcaf48              # double 9.9999999999999995E-8
.LCPI6_17:
	.quad	0x3fefd70a3d70a3d7              # double 0.99499999999999999
.LCPI6_18:
	.quad	0x3feff7ced916872b              # double 0.99899999999999999
.LCPI6_19:
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI6_20:
	.quad	0x3ff004189374bc6a              # double 1.0009999999999999
.LCPI6_21:
	.quad	0xbff0000000000000              # double -1
.LCPI6_23:
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI6_24:
	.quad	0x4028000000000000              # double 12
.LCPI6_27:
	.quad	0x0000000000000000              # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI6_12:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI6_13:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
.LCPI6_16:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
.LCPI6_22:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI6_25:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
.LCPI6_26:
	.zero	8
	.quad	0x3ff0000000000000              # double 1
.LCPI6_28:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI6_29:
	.long	0x00000000                      # float 0
	.text
	.p2align	4, 0x90
	.type	init_pass2,@function
init_pass2:                             # @init_pass2
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	26704(%rdi), %rsi
	movslq	304(%rsi), %rdi
	testq	%rdi, %rdi
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	jle	.LBB6_3
# %bb.1:                                # %for.body.lr.ph
	movq	312(%rsi), %rax
	movl	%edi, %ecx
	andl	$3, %ecx
	cmpl	$4, %edi
	jae	.LBB6_4
# %bb.2:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB6_6
.LBB6_3:
	xorpd	%xmm0, %xmm0
	jmp	.LBB6_9
.LBB6_4:                                # %for.body.lr.ph.new
	movl	%edi, %esi
	andl	$2147483644, %esi               # imm = 0x7FFFFFFC
	leaq	160(%rax), %r8
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%r8), %xmm1
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	168(%r8), %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	336(%r8), %xmm2
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	504(%r8), %xmm0
	addsd	%xmm2, %xmm0
	addq	$4, %rdx
	addq	$672, %r8                       # imm = 0x2A0
	cmpq	%rdx, %rsi
	jne	.LBB6_5
.LBB6_6:                                # %for.cond.cleanup.loopexit.unr-lcssa
	testq	%rcx, %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	je	.LBB6_9
# %bb.7:                                # %for.body.epil.preheader
	imulq	$168, %rdx, %rdx
	addq	%rdx, %rax
	addq	$160, %rax
	imulq	$168, %rcx, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_8:                                # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax,%rdx), %xmm1
	addsd	%xmm1, %xmm0
	addq	$168, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB6_8
.LBB6_9:                                # %for.cond.cleanup
	movq	3200(%r13), %rax
	movl	1192(%rax), %ecx
	movl	1196(%rax), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rcx, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rax, %xmm2
	divsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	508(%r13), %xmm2
	mulsd	%xmm0, %xmm1
	mulsd	.LCPI6_0(%rip), %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	subsd	.LCPI6_1(%rip), %xmm2
	cvttsd2si	%xmm2, %r15
	andq	%rcx, %r15
	orq	%rax, %r15
	movss	596(%r13), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 192(%rsp)                # 4-byte Spill
	testl	%edi, %edi
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	jle	.LBB6_38
# %bb.10:                               # %for.body25.lr.ph
	movss	600(%r13), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	312(%rsi), %rcx
	cmpl	$3, %edi
	ja	.LBB6_12
# %bb.11:
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB6_15
.LBB6_12:                               # %vector.ph
	movl	%edi, %edx
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	movl	%edi, %eax
	shrl	$2, %eax
	andl	$536870911, %eax                # imm = 0x1FFFFFFF
	imulq	$672, %rax, %r8                 # imm = 0x2A0
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB6_13:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	32(%rcx,%r10), %rbx
	addq	%rbx, %r11
	movslq	200(%rcx,%r10), %rbx
	addq	%rbx, %r9
	movslq	368(%rcx,%r10), %rbx
	addq	%rbx, %rsi
	movslq	536(%rcx,%r10), %rbx
	addq	%rbx, %rax
	addq	$672, %r10                      # imm = 0x2A0
	cmpq	%r10, %r8
	jne	.LBB6_13
# %bb.14:                               # %middle.block
	addq	%r11, %r9
	addq	%r9, %rsi
	addq	%rsi, %rax
	cmpq	%rdi, %rdx
	je	.LBB6_22
.LBB6_15:                               # %for.body25.preheader
	movq	%rdi, %rsi
	andq	$3, %rsi
	je	.LBB6_19
# %bb.16:                               # %for.body25.prol.preheader
	imulq	$168, %rdx, %r8
	addq	%rcx, %r8
	addq	$32, %r8
	negq	%rsi
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB6_17:                               # %for.body25.prol
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%r8), %r10
	addq	%r10, %rax
	decq	%r9
	addq	$168, %r8
	cmpq	%r9, %rsi
	jne	.LBB6_17
# %bb.18:                               # %for.body25.prol.loopexit.loopexit
	movq	%rdx, %rsi
	subq	%r9, %rsi
	subq	%rdi, %rdx
	cmpq	$-4, %rdx
	jbe	.LBB6_20
	jmp	.LBB6_22
.LBB6_19:
	movq	%rdx, %rsi
	subq	%rdi, %rdx
	cmpq	$-4, %rdx
	ja	.LBB6_22
.LBB6_20:                               # %for.body25.preheader3
	movq	%rdi, %rdx
	subq	%rsi, %rdx
	imulq	$168, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$536, %rcx                      # imm = 0x218
	.p2align	4, 0x90
.LBB6_21:                               # %for.body25
                                        # =>This Inner Loop Header: Depth=1
	movslq	-504(%rcx), %rsi
	addq	%rax, %rsi
	movslq	-336(%rcx), %rax
	movslq	-168(%rcx), %r8
	addq	%rax, %r8
	addq	%rsi, %r8
	movslq	(%rcx), %rax
	addq	%r8, %rax
	addq	$672, %rcx                      # imm = 0x2A0
	addq	$-4, %rdx
	jne	.LBB6_21
.LBB6_22:                               # %for.cond.cleanup24
	cmpq	%r15, %rax
	jbe	.LBB6_24
# %bb.23:                               # %if.then
	movq	%rax, %xmm0
	punpckldq	.LCPI6_12(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI6_13(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movq	16(%rsp), %rax                  # 8-byte Reload
	mulsd	16(%rax), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edi, %xmm0
	mulsd	.LCPI6_0(%rip), %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	$.L.str.85, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %eax
	jmp	.LBB6_222
.LBB6_24:                               # %for.cond44.preheader
	testl	%edi, %edi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	jle	.LBB6_38
# %bb.25:                               # %for.body49.lr.ph
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	movl	$184, %eax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movl	$16, %r15d
	xorl	%r13d, %r13d
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jmp	.LBB6_27
	.p2align	4, 0x90
.LBB6_26:                               # %cleanup141
                                        #   in Loop: Header=BB6_27 Depth=1
	divsd	32(%rsp), %xmm3                 # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm3, %xmm0
	imulq	$168, %r13, %rax
	movq	160(%rsp), %rdx                 # 8-byte Reload
	movss	%xmm0, 80(%rdx,%rax)
	incq	%r13
	movslq	304(%rcx), %rdi
	addq	$168, 128(%rsp)                 # 8-byte Folded Spill
	addq	$168, %r15
	cmpq	%rdi, %r13
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jge	.LBB6_37
.LBB6_27:                               # %for.body49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_34 Depth 2
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movq	312(%rcx), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorpd	%xmm3, %xmm3
	jbe	.LBB6_32
# %bb.28:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	movl	$1, %ebx
	movl	$2, %r12d
	movq	128(%rsp), %r14                 # 8-byte Reload
	movsd	.LCPI6_3(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB6_29:                               # %land.rhs
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	304(%rcx), %rax
	subq	%r13, %rax
	cmpq	%rax, %rbx
	jge	.LBB6_32
# %bb.30:                               # %for.body63
                                        #   in Loop: Header=BB6_29 Depth=2
	movq	312(%rcx), %rbp
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%rbp,%r14), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	48(%rcx), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm0
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	%xmm0, %xmm1
	movsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LCPI6_4(%rip), %xmm0           # xmm0 = [1.0E-4,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB6_32
# %bb.31:                               # %for.inc90
                                        #   in Loop: Header=BB6_29 Depth=2
	leal	-1(%r12), %eax
	imull	%eax, %eax
	negl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	.LCPI6_5(%rip), %xmm0
	movsd	%xmm3, 8(%rsp)                  # 8-byte Spill
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	callq	exp@PLT
	movapd	%xmm0, %xmm1
	mulsd	24(%rsp), %xmm1                 # 8-byte Folded Reload
	movsd	%xmm1, 96(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movsd	(%rbp,%r14), %xmm0              # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%rbp,%r14), %xmm1
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 104(%rsp)                # 8-byte Spill
	movsd	(%rbp,%r14), %xmm0              # xmm0 = mem[0],zero
	maxsd	.LCPI6_3(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%rbp,%r14), %xmm1
	movsd	%xmm1, 88(%rsp)                 # 8-byte Spill
	movsd	64(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm1
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	16(%rsp), %rcx                  # 8-byte Reload
	mulsd	88(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	64(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	104(%rsp), %xmm2                # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sdl	16(%rbp,%r14), %xmm1
	addsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	96(%rsp), %xmm2                 # 8-byte Folded Reload
	addsd	%xmm2, %xmm3
	incq	%rbx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	incl	%r12d
	addq	$168, %r14
	movsd	56(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB6_29
	.p2align	4, 0x90
.LBB6_32:                               # %cleanup92
                                        #   in Loop: Header=BB6_27 Depth=1
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI6_27(%rip), %xmm0
	jb	.LBB6_26
# %bb.33:                               # %for.body105.preheader
                                        #   in Loop: Header=BB6_27 Depth=1
	movq	%r15, %rbx
	xorl	%r14d, %r14d
	movsd	.LCPI6_3(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	.p2align	4, 0x90
.LBB6_34:                               # %for.body105
                                        #   Parent Loop BB6_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm3, 24(%rsp)                 # 8-byte Spill
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	movq	312(%rcx), %r12
	movl	%r14d, %eax
	imull	%r14d, %eax
	negl	%eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	.LCPI6_5(%rip), %xmm0
	callq	exp@PLT
	movapd	%xmm0, %xmm1
	mulsd	64(%rsp), %xmm1                 # 8-byte Folded Reload
	movsd	%xmm1, 96(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movsd	(%r12,%rbx), %xmm0              # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%r12,%rbx), %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 104(%rsp)                # 8-byte Spill
	movsd	(%r12,%rbx), %xmm0              # xmm0 = mem[0],zero
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%r12,%rbx), %xmm1
	movsd	%xmm1, 88(%rsp)                 # 8-byte Spill
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movq	16(%rsp), %rcx                  # 8-byte Reload
	mulsd	88(%rsp), %xmm0                 # 8-byte Folded Reload
	mulsd	104(%rsp), %xmm3                # 8-byte Folded Reload
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%r12,%rbx), %xmm0
	addsd	%xmm0, %xmm3
	subsd	%xmm0, %xmm3
	mulsd	96(%rsp), %xmm3                 # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%r12,%rbx), %xmm0
	addsd	24(%rsp), %xmm3                 # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2ssl	48(%rcx), %xmm1
	divss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm1
	movsd	.LCPI6_3(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm0
	mulsd	64(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	.LCPI6_4(%rip), %xmm1           # xmm1 = [1.0E-4,0.0E+0]
	ucomisd	%xmm0, %xmm1
	ja	.LBB6_26
# %bb.35:                               # %for.cond95
                                        #   in Loop: Header=BB6_34 Depth=2
	cmpq	%r13, %r14
	jae	.LBB6_26
# %bb.36:                               # %for.cond95
                                        #   in Loop: Header=BB6_34 Depth=2
	incq	%r14
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	addq	$-168, %rbx
	movsd	56(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	jae	.LBB6_34
	jmp	.LBB6_26
.LBB6_37:
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	136(%rsp), %r15                 # 8-byte Reload
.LBB6_38:                               # %for.cond.cleanup48
	shll	$3, %edi
                                        # kill: def $edi killed $edi killed $rdi
	callq	x264_malloc@PLT
	movq	%rax, %r14
	movl	$-1, %eax
	testq	%r14, %r14
	je	.LBB6_222
# %bb.39:                               # %do.end
	movss	192(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movsd	.LCPI6_2(%rip), %xmm0           # xmm0 = [4.0E+0,0.0E+0]
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 156(%rsp)                 # 4-byte Spill
	orl	$1, %eax
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	movl	%eax, 144(%rsp)                 # 4-byte Spill
	cmpl	$2, %eax
	jl	.LBB6_41
# %bb.40:                               # %do.body159
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	304(%rax), %edi
	shll	$3, %edi
	callq	x264_malloc@PLT
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	testq	%rax, %rax
	je	.LBB6_196
.LBB6_41:                               # %if.end170
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	304(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB6_58
# %bb.42:                               # %for.body177.lr.ph
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	xorl	%r15d, %r15d
	jmp	.LBB6_45
	.p2align	4, 0x90
.LBB6_43:                               # %if.else8.i
                                        #   in Loop: Header=BB6_45 Depth=1
	movss	16(%r12), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
.LBB6_44:                               # %get_qscale.exit
                                        #   in Loop: Header=BB6_45 Depth=1
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	movq	312(%rax), %r12
	movsd	.LCPI6_7(%rip), %xmm2           # xmm2 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm1, %xmm2
	movsd	%xmm2, 88(%rsp)                 # 8-byte Spill
	movsd	16(%r12,%rbx), %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	28(%r12,%rbx), %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 96(%rsp)                 # 8-byte Spill
	movsd	16(%r12,%rbx), %xmm0            # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	24(%r12,%rbx), %xmm1
	movsd	%xmm1, 104(%rsp)                # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movsd	88(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movq	16(%rsp), %rsi                  # 8-byte Reload
	mulsd	104(%rsp), %xmm0                # 8-byte Folded Reload
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	96(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%r12,%rbx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movq	312(%rsi), %rax
	movslq	(%rax,%rbx), %rax
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 328(%rsi,%rax,8)
	incq	%r15
	movslq	304(%rsi), %rax
	cmpq	%rax, %r15
	jge	.LBB6_57
.LBB6_45:                               # %for.body177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_48 Depth 2
	movq	26704(%r13), %r13
	movslq	888(%r13), %rcx
	testq	%rcx, %rcx
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	jle	.LBB6_50
# %bb.46:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB6_45 Depth=1
	movq	896(%r13), %rdx
	leaq	1(%rcx), %rax
	shlq	$5, %rcx
	leaq	(%rdx,%rcx), %r12
	addq	$-32, %r12
	jmp	.LBB6_48
	.p2align	4, 0x90
.LBB6_47:                               # %cleanup.i.i
                                        #   in Loop: Header=BB6_48 Depth=2
	decq	%rax
	addq	$-32, %r12
	cmpq	$1, %rax
	jbe	.LBB6_50
.LBB6_48:                               # %for.body.i.i
                                        #   Parent Loop BB6_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%r12), %rcx
	cmpq	%rcx, %r15
	jl	.LBB6_47
# %bb.49:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB6_48 Depth=2
	movslq	4(%r12), %rcx
	cmpq	%rcx, %r15
	jg	.LBB6_47
	jmp	.LBB6_51
	.p2align	4, 0x90
.LBB6_50:                               #   in Loop: Header=BB6_45 Depth=1
	xorl	%r12d, %r12d
.LBB6_51:                               # %get_zone.exit.i
                                        #   in Loop: Header=BB6_45 Depth=1
	imulq	$168, %r15, %rbx
	movq	312(%rsi), %rbp
	addq	%rbx, %rbp
	movss	80(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	40(%r13), %xmm1
	callq	pow@PLT
	movq	%xmm0, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rcx, %rax
	movabsq	$9218868437227405311, %rcx      # imm = 0x7FEFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jg	.LBB6_53
# %bb.52:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB6_45 Depth=1
	movl	28(%rbp), %eax
	addl	24(%rbp), %eax
	jne	.LBB6_54
.LBB6_53:                               # %if.then.i
                                        #   in Loop: Header=BB6_45 Depth=1
	movslq	(%rbp), %rax
	movsd	328(%r13,%rax,8), %xmm1         # xmm1 = mem[0],zero
	testq	%r12, %r12
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	jne	.LBB6_55
	jmp	.LBB6_44
	.p2align	4, 0x90
.LBB6_54:                               # %if.else.i
                                        #   in Loop: Header=BB6_45 Depth=1
	movaps	%xmm0, %xmm1
	movsd	%xmm0, 176(%r13)
	movsd	%xmm0, 320(%r13)
	testq	%r12, %r12
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	16(%rsp), %rax                  # 8-byte Reload
	je	.LBB6_44
.LBB6_55:                               # %if.then3.i
                                        #   in Loop: Header=BB6_45 Depth=1
	cmpl	$0, 8(%r12)
	je	.LBB6_43
# %bb.56:                               # %if.then5.i
                                        #   in Loop: Header=BB6_45 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%r12), %xmm0
	addsd	.LCPI6_9(%rip), %xmm0
	divsd	.LCPI6_10(%rip), %xmm0
	callq	exp2@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	movapd	%xmm0, %xmm1
	mulsd	.LCPI6_11(%rip), %xmm1
	jmp	.LBB6_44
.LBB6_57:
	movq	136(%rsp), %r15                 # 8-byte Reload
	jmp	.LBB6_59
.LBB6_58:
	movsd	.LCPI6_3(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
.LBB6_59:                               # %for.cond.cleanup176
	movq	%r15, %xmm0
	punpckldq	.LCPI6_12(%rip), %xmm0  # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI6_13(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movapd	%xmm1, 176(%rsp)                # 16-byte Spill
	divsd	%xmm2, %xmm1
	movsd	.LCPI6_14(%rip), %xmm2          # xmm2 = [1.0E+4,0.0E+0]
	mulsd	%xmm1, %xmm2
	mulsd	.LCPI6_15(%rip), %xmm1
	movapd	%xmm1, 208(%rsp)                # 16-byte Spill
	ucomisd	%xmm1, %xmm2
	jbe	.LBB6_141
# %bb.60:                               # %for.body204.lr.ph
	movl	156(%rsp), %ecx                 # 4-byte Reload
	shrl	%ecx
	movsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movl	144(%rsp), %edx                 # 4-byte Reload
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	negl	%ecx
	movl	%ecx, 136(%rsp)                 # 4-byte Spill
	xorpd	%xmm0, %xmm0
	movhpd	.LCPI6_3(%rip), %xmm0           # xmm0 = xmm0[0],mem[0]
	movapd	%xmm0, 224(%rsp)                # 16-byte Spill
	xorpd	%xmm0, %xmm0
	jmp	.LBB6_63
	.p2align	4, 0x90
.LBB6_61:                               #   in Loop: Header=BB6_63 Depth=1
	movq	112(%rsp), %r13                 # 8-byte Reload
.LBB6_62:                               # %for.cond.cleanup337
                                        #   in Loop: Header=BB6_63 Depth=1
	movapd	160(%rsp), %xmm3                # 16-byte Reload
	movapd	%xmm3, %xmm1
	subsd	%xmm2, %xmm1
	movapd	176(%rsp), %xmm0                # 16-byte Reload
	cmpltsd	%xmm4, %xmm0
	andpd	%xmm0, %xmm1
	andnpd	%xmm3, %xmm0
	orpd	%xmm1, %xmm0
	mulsd	.LCPI6_8(%rip), %xmm2
	ucomisd	208(%rsp), %xmm2                # 16-byte Folded Reload
	jbe	.LBB6_141
.LBB6_63:                               # %for.body204
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_67 Depth 2
                                        #       Child Loop BB6_70 Depth 3
                                        #     Child Loop BB6_84 Depth 2
                                        #     Child Loop BB6_135 Depth 2
                                        #     Child Loop BB6_118 Depth 2
                                        #       Child Loop BB6_128 Depth 3
                                        #       Child Loop BB6_121 Depth 3
                                        #     Child Loop BB6_138 Depth 2
	addsd	%xmm2, %xmm0
	movapd	%xmm0, 160(%rsp)                # 16-byte Spill
	movl	$-1, 368(%rsi)
	movapd	224(%rsp), %xmm0                # 16-byte Reload
	movupd	%xmm0, 384(%rsi)
	testl	%eax, %eax
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	jle	.LBB6_80
# %bb.64:                               # %for.body212.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	xorl	%ebx, %ebx
	jmp	.LBB6_67
	.p2align	4, 0x90
.LBB6_65:                               # %if.else8.i776
                                        #   in Loop: Header=BB6_67 Depth=2
	movss	16(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
.LBB6_66:                               # %get_qscale.exit786
                                        #   in Loop: Header=BB6_67 Depth=2
	movsd	%xmm0, (%r14,%rbx,8)
	movq	312(%rsi), %rax
	movslq	(%rax,%r13), %rax
	movsd	%xmm0, 328(%rsi,%rax,8)
	incq	%rbx
	movslq	304(%rsi), %rax
	cmpq	%rax, %rbx
	movq	112(%rsp), %r13                 # 8-byte Reload
	jge	.LBB6_80
.LBB6_67:                               # %for.body212
                                        #   Parent Loop BB6_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_70 Depth 3
	movq	26704(%r13), %r12
	movslq	888(%r12), %rcx
	testq	%rcx, %rcx
	jle	.LBB6_73
# %bb.68:                               # %for.body.lr.ph.i.i736
                                        #   in Loop: Header=BB6_67 Depth=2
	movq	896(%r12), %rdx
	leaq	1(%rcx), %rax
	shlq	$5, %rcx
	leaq	(%rdx,%rcx), %r15
	addq	$-32, %r15
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	jmp	.LBB6_70
	.p2align	4, 0x90
.LBB6_69:                               # %cleanup.i.i784
                                        #   in Loop: Header=BB6_70 Depth=3
	decq	%rax
	addq	$-32, %r15
	cmpq	$1, %rax
	jbe	.LBB6_72
.LBB6_70:                               # %for.body.i.i738
                                        #   Parent Loop BB6_63 Depth=1
                                        #     Parent Loop BB6_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	(%r15), %rcx
	cmpq	%rcx, %rbx
	jl	.LBB6_69
# %bb.71:                               # %land.lhs.true.i.i743
                                        #   in Loop: Header=BB6_70 Depth=3
	movslq	4(%r15), %rcx
	cmpq	%rcx, %rbx
	jg	.LBB6_69
	jmp	.LBB6_74
	.p2align	4, 0x90
.LBB6_72:                               #   in Loop: Header=BB6_67 Depth=2
	xorl	%r15d, %r15d
	jmp	.LBB6_74
	.p2align	4, 0x90
.LBB6_73:                               #   in Loop: Header=BB6_67 Depth=2
	xorl	%r15d, %r15d
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
.LBB6_74:                               # %get_zone.exit.i746
                                        #   in Loop: Header=BB6_67 Depth=2
	imulq	$168, %rbx, %r13
	movq	312(%rsi), %rbp
	addq	%r13, %rbp
	movss	80(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	40(%r12), %xmm1
	callq	pow@PLT
	movq	%xmm0, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rcx, %rax
	movabsq	$9218868437227405311, %rcx      # imm = 0x7FEFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	jg	.LBB6_76
# %bb.75:                               # %lor.lhs.false.i753
                                        #   in Loop: Header=BB6_67 Depth=2
	movl	28(%rbp), %eax
	addl	24(%rbp), %eax
	jne	.LBB6_77
.LBB6_76:                               # %if.then.i780
                                        #   in Loop: Header=BB6_67 Depth=2
	movslq	(%rbp), %rax
	movsd	328(%r12,%rax,8), %xmm0         # xmm0 = mem[0],zero
	testq	%r15, %r15
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB6_78
	jmp	.LBB6_66
	.p2align	4, 0x90
.LBB6_77:                               # %if.else.i758
                                        #   in Loop: Header=BB6_67 Depth=2
	movsd	%xmm0, 176(%r12)
	divsd	160(%rsp), %xmm0                # 16-byte Folded Reload
	movsd	%xmm0, 320(%r12)
	testq	%r15, %r15
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB6_66
.LBB6_78:                               # %if.then3.i765
                                        #   in Loop: Header=BB6_67 Depth=2
	cmpl	$0, 8(%r15)
	je	.LBB6_65
# %bb.79:                               # %if.then5.i768
                                        #   in Loop: Header=BB6_67 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%r15), %xmm0
	addsd	.LCPI6_9(%rip), %xmm0
	divsd	.LCPI6_10(%rip), %xmm0
	callq	exp2@PLT
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	16(%rsp), %rsi                  # 8-byte Reload
	mulsd	.LCPI6_11(%rip), %xmm0
	jmp	.LBB6_66
	.p2align	4, 0x90
.LBB6_80:                               # %for.cond235.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	movl	%eax, %ebp
	leaq	(,%rbp,4), %rax
	addq	%rbp, %rax
	leaq	-21(,%rax,4), %r13
	addq	%rbp, %r13
	jmp	.LBB6_84
.LBB6_81:                               # %if.end91.thread188.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	%xmm3, 344(%r15)
	movl	$2, 368(%r15)
	movapd	%xmm3, %xmm4
.LBB6_82:                               # %if.then94.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	384(%r15), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 392(%r15)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 376(%r15)
.LBB6_83:                               # %get_diff_limited_q.exit
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	%xmm4, -8(%r14,%rbp,8)
	addq	$-21, %r13
	decq	%rbp
	ucomisd	.LCPI6_27(%rip), %xmm4
	jb	.LBB6_223
.LBB6_84:                               # %for.cond235
                                        #   Parent Loop BB6_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%ebp, %ebp
	jle	.LBB6_113
# %bb.85:                               # %for.body239
                                        #   in Loop: Header=BB6_84 Depth=2
	movq	312(%rsi), %rbx
	movsd	-8(%r14,%rbp,8), %xmm3          # xmm3 = mem[0],zero
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	26704(%rax), %r15
	movslq	(%rbx,%r13,8), %r12
	cmpq	$2, %r12
	jne	.LBB6_89
# %bb.86:                               # %if.then.i794
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	%xmm3, 32(%rsp)                 # 8-byte Spill
	movsd	376(%r15), %xmm0                # xmm0 = mem[0],zero
	divsd	384(%r15), %xmm0
	addsd	.LCPI6_9(%rip), %xmm0
	divsd	.LCPI6_10(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI6_11(%rip), %xmm0
	movsd	384(%r15), %xmm1                # xmm1 = mem[0],zero
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm1, %xmm2
	jae	.LBB6_95
# %bb.87:                               # %if.else.i800
                                        #   in Loop: Header=BB6_84 Depth=2
	movq	112(%rsp), %rax                 # 8-byte Reload
	movss	536(%rax), %xmm2                # xmm2 = mem[0],zero,zero,zero
	xorpd	%xmm3, %xmm3
	ucomiss	%xmm2, %xmm3
	andps	.LCPI6_25(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movq	16(%rsp), %rsi                  # 8-byte Reload
	jbe	.LBB6_99
# %bb.88:                               # %if.then14.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	32(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cmpl	%r12d, 368(%r15)
	je	.LBB6_102
	jmp	.LBB6_108
	.p2align	4, 0x90
.LBB6_89:                               # %if.else29.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movslq	368(%r15), %rax
	testl	%r12d, %r12d
	je	.LBB6_96
# %bb.90:                               # %if.else29.i
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	$1, %r12d
	jne	.LBB6_101
# %bb.91:                               # %if.then32.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movss	540(%rcx), %xmm0                # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_29(%rip), %xmm0
	jbe	.LBB6_93
# %bb.92:                               #   in Loop: Header=BB6_84 Depth=2
	movsd	328(%r15,%rax,8), %xmm3         # xmm3 = mem[0],zero
.LBB6_93:                               # %if.then32.i
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	$0, 8(%rbx,%r13,8)
	jne	.LBB6_101
# %bb.94:                               # %if.then39.i
                                        #   in Loop: Header=BB6_84 Depth=2
	andps	.LCPI6_25(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm3
	cmpl	%r12d, 368(%r15)
	je	.LBB6_102
	jmp	.LBB6_108
	.p2align	4, 0x90
.LBB6_95:                               #   in Loop: Header=BB6_84 Depth=2
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	32(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	cmpl	%r12d, 368(%r15)
	je	.LBB6_102
.LBB6_108:                              #   in Loop: Header=BB6_84 Depth=2
	movapd	%xmm3, %xmm4
	jmp	.LBB6_109
.LBB6_96:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB6_84 Depth=2
	testl	%eax, %eax
	jne	.LBB6_101
# %bb.97:                               # %land.lhs.true52.i
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	$0, 28(%rbx,%r13,8)
	jne	.LBB6_101
# %bb.98:                               # %if.then55.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	328(%r15), %xmm3                # xmm3 = mem[0],zero
	cmpl	%r12d, 368(%r15)
	je	.LBB6_102
	jmp	.LBB6_108
.LBB6_99:                               # %if.else16.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	.LCPI6_3(%rip), %xmm3           # xmm3 = [1.0E+0,0.0E+0]
	ucomisd	%xmm3, %xmm1
	jae	.LBB6_107
# %bb.100:                              # %if.else22.i
                                        #   in Loop: Header=BB6_84 Depth=2
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	movapd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	32(%rsp), %xmm2                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm3
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	.p2align	4, 0x90
.LBB6_101:                              # %if.end58.i
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	%r12d, 368(%r15)
	jne	.LBB6_108
.LBB6_102:                              # %land.lhs.true62.i
                                        #   in Loop: Header=BB6_84 Depth=2
	cmpl	$2, %r12d
	jne	.LBB6_104
# %bb.103:                              # %lor.lhs.false.i791
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	.LCPI6_3(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	ucomisd	392(%r15), %xmm0
	jbe	.LBB6_81
.LBB6_104:                              # %if.then67.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	328(%r15,%r12,8), %xmm0         # xmm0 = mem[0],zero
	movsd	480(%r15), %xmm1                # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm4
	mulsd	%xmm1, %xmm4
	ucomisd	%xmm4, %xmm3
	ja	.LBB6_109
# %bb.105:                              # %if.else77.i
                                        #   in Loop: Header=BB6_84 Depth=2
	divsd	%xmm1, %xmm0
	ucomisd	%xmm3, %xmm0
	movapd	%xmm3, %xmm4
	jbe	.LBB6_109
# %bb.106:                              # %if.then80.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movapd	%xmm0, %xmm4
	.p2align	4, 0x90
.LBB6_109:                              # %if.end83.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movsd	%xmm4, 328(%r15,%r12,8)
	cmpl	$1, %r12d
	je	.LBB6_83
# %bb.110:                              # %if.end91.i
                                        #   in Loop: Header=BB6_84 Depth=2
	movl	%r12d, 368(%r15)
	cmpl	$2, %r12d
	je	.LBB6_82
# %bb.111:                              # %if.end99.i
                                        #   in Loop: Header=BB6_84 Depth=2
	testl	%r12d, %r12d
	jne	.LBB6_83
# %bb.112:                              # %if.then102.i
                                        #   in Loop: Header=BB6_84 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	68(%rbx,%r13,8), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	48(%r15), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm0, %xmm0
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	movapd	%xmm4, %xmm0
	divsd	.LCPI6_11(%rip), %xmm0
	movsd	%xmm4, 32(%rsp)                 # 8-byte Spill
	callq	log2@PLT
	movsd	32(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	16(%rsp), %rsi                  # 8-byte Reload
	mulsd	.LCPI6_10(%rip), %xmm0
	addsd	.LCPI6_24(%rip), %xmm0
	shufpd	$2, .LCPI6_26(%rip), %xmm0      # xmm0 = xmm0[0],mem[1]
	movupd	376(%r15), %xmm1
	addpd	%xmm0, %xmm1
	movapd	64(%rsp), %xmm0                 # 16-byte Reload
	unpcklpd	%xmm0, %xmm0                    # xmm0 = xmm0[0,0]
	mulpd	%xmm1, %xmm0
	movupd	%xmm0, 376(%r15)
	jmp	.LBB6_83
.LBB6_107:                              # %if.then20.i
                                        #   in Loop: Header=BB6_84 Depth=2
	divsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm3
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cmpl	%r12d, 368(%r15)
	je	.LBB6_102
	jmp	.LBB6_108
	.p2align	4, 0x90
.LBB6_113:                              # %for.cond.cleanup238
                                        #   in Loop: Header=BB6_63 Depth=1
	movl	304(%rsi), %eax
	cmpl	$2, 144(%rsp)                   # 4-byte Folded Reload
	jl	.LBB6_136
# %bb.114:                              # %for.cond264.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	testl	%eax, %eax
	movq	112(%rsp), %r13                 # 8-byte Reload
	jle	.LBB6_133
# %bb.115:                              # %for.body269.lr.ph
                                        #   in Loop: Header=BB6_63 Depth=1
	cmpl	$0, 156(%rsp)                   # 4-byte Folded Reload
	movq	56(%rsp), %rdx                  # 8-byte Reload
	js	.LBB6_134
# %bb.116:                              # %for.body269.us.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	movl	136(%rsp), %ebp                 # 4-byte Reload
	xorl	%r15d, %r15d
	jmp	.LBB6_118
	.p2align	4, 0x90
.LBB6_117:                              # %for.cond276.for.cond.cleanup279_crit_edge.us
                                        #   in Loop: Header=BB6_118 Depth=2
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	32(%rsp), %xmm0                 # 8-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	movsd	%xmm0, (%rax,%r15,8)
	incq	%r15
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movslq	304(%rsi), %rax
	incl	%ebp
	cmpq	%rax, %r15
	jge	.LBB6_136
.LBB6_118:                              # %for.body269.us
                                        #   Parent Loop BB6_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_128 Depth 3
                                        #       Child Loop BB6_121 Depth 3
	movq	312(%rsi), %rcx
	imulq	$168, %r15, %rbx
	addq	%rcx, %rbx
	movss	192(%rsp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI6_29(%rip), %xmm0
	jne	.LBB6_125
	jp	.LBB6_125
# %bb.119:                              # %for.body280.us.us.preheader
                                        #   in Loop: Header=BB6_118 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	%ebp, %edx
	movq	128(%rsp), %rsi                 # 8-byte Reload
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	jmp	.LBB6_121
	.p2align	4, 0x90
.LBB6_120:                              # %cleanup315.us.us
                                        #   in Loop: Header=BB6_121 Depth=3
	incl	%edx
	decq	%rsi
	je	.LBB6_117
.LBB6_121:                              # %for.body280.us.us
                                        #   Parent Loop BB6_63 Depth=1
                                        #     Parent Loop BB6_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testl	%edx, %edx
	js	.LBB6_120
# %bb.122:                              # %for.body280.us.us
                                        #   in Loop: Header=BB6_121 Depth=3
	cmpl	%eax, %edx
	jge	.LBB6_120
# %bb.123:                              # %if.end301.us.us
                                        #   in Loop: Header=BB6_121 Depth=3
	movl	(%rbx), %r8d
	movl	%edx, %edi
	imulq	$168, %rdi, %r9
	cmpl	(%rcx,%r9), %r8d
	jne	.LBB6_120
# %bb.124:                              # %if.end310.us.us
                                        #   in Loop: Header=BB6_121 Depth=3
	movsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	(%r14,%rdi,8), %xmm0
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI6_3(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	jmp	.LBB6_120
	.p2align	4, 0x90
.LBB6_125:                              # %for.body280.us924.preheader
                                        #   in Loop: Header=BB6_118 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	136(%rsp), %r12d                # 4-byte Reload
	movq	128(%rsp), %r13                 # 8-byte Reload
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	jmp	.LBB6_128
	.p2align	4, 0x90
.LBB6_126:                              #   in Loop: Header=BB6_128 Depth=3
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB6_127:                              # %cleanup315.us939
                                        #   in Loop: Header=BB6_128 Depth=3
	incl	%r12d
	decq	%r13
	je	.LBB6_117
.LBB6_128:                              # %for.body280.us924
                                        #   Parent Loop BB6_63 Depth=1
                                        #     Parent Loop BB6_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12d, %xmm1
	movapd	%xmm1, %xmm0
	xorpd	.LCPI6_16(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	divsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	callq	exp@PLT
	movl	%r15d, %eax
	addl	%r12d, %eax
	js	.LBB6_126
# %bb.129:                              # %lor.lhs.false.us930
                                        #   in Loop: Header=BB6_128 Depth=3
	movq	16(%rsp), %rdx                  # 8-byte Reload
	cmpl	304(%rdx), %eax
	jge	.LBB6_126
# %bb.130:                              # %if.end301.us932
                                        #   in Loop: Header=BB6_128 Depth=3
	movl	(%rbx), %ecx
	movq	312(%rdx), %rdx
	movl	%eax, %eax
	imulq	$168, %rax, %rsi
	cmpl	(%rdx,%rsi), %ecx
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jne	.LBB6_127
# %bb.131:                              # %if.end310.us936
                                        #   in Loop: Header=BB6_128 Depth=3
	movsd	(%r14,%rax,8), %xmm1            # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	64(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 64(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	jmp	.LBB6_127
.LBB6_133:                              #   in Loop: Header=BB6_63 Depth=1
	xorpd	%xmm4, %xmm4
	jmp	.LBB6_62
.LBB6_134:                              # %for.body269.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	xorl	%ecx, %ecx
	movabsq	$9221120237041090560, %rdi      # imm = 0x7FF8000000000000
	.p2align	4, 0x90
.LBB6_135:                              # %for.body269
                                        #   Parent Loop BB6_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, (%rdx,%rcx,8)
	incq	%rcx
	movslq	304(%rsi), %rax
	cmpq	%rax, %rcx
	jl	.LBB6_135
	.p2align	4, 0x90
.LBB6_136:                              # %if.end331
                                        #   in Loop: Header=BB6_63 Depth=1
	xorpd	%xmm4, %xmm4
	testl	%eax, %eax
	jle	.LBB6_61
# %bb.137:                              # %for.body338.preheader
                                        #   in Loop: Header=BB6_63 Depth=1
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	movq	112(%rsp), %r13                 # 8-byte Reload
	.p2align	4, 0x90
.LBB6_138:                              # %for.body338
                                        #   Parent Loop BB6_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	%xmm4, 64(%rsp)                 # 8-byte Spill
	movq	312(%rsi), %r12
	movq	%rsi, %rbp
	movl	(%r12,%rbx), %esi
	movq	56(%rsp), %rax                  # 8-byte Reload
	movsd	(%rax,%r15,8), %xmm0            # xmm0 = mem[0],zero
	movq	%r13, %rdi
	callq	clip_qscale
	movsd	%xmm0, 56(%r12,%rbx)
	ucomisd	.LCPI6_27(%rip), %xmm0
	jb	.LBB6_224
# %bb.139:                              # %cond.end352
                                        #   in Loop: Header=BB6_138 Depth=2
	movsd	.LCPI6_7(%rip), %xmm1           # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 88(%rsp)                 # 8-byte Spill
	movsd	16(%r12,%rbx), %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	28(%r12,%rbx), %xmm1
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 96(%rsp)                 # 8-byte Spill
	movsd	16(%r12,%rbx), %xmm0            # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	24(%r12,%rbx), %xmm1
	movsd	%xmm1, 104(%rsp)                # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movsd	88(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	mulsd	104(%rsp), %xmm0                # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	96(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%r12,%rbx), %xmm0
	addsd	%xmm1, %xmm0
	movsd	64(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	addsd	%xmm0, %xmm4
	incq	%r15
	movslq	304(%rbp), %rax
	addq	$168, %rbx
	cmpq	%rax, %r15
	movq	%rbp, %rsi
	jl	.LBB6_138
# %bb.140:                              #   in Loop: Header=BB6_63 Depth=1
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB6_62
.LBB6_141:                              # %for.cond.cleanup203
	movq	%r14, %rdi
	callq	x264_free@PLT
	cmpl	$1, 144(%rsp)                   # 4-byte Folded Reload
	jle	.LBB6_143
# %bb.142:                              # %if.then372
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	x264_free@PLT
.LBB6_143:                              # %if.end373
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 8(%rax)
	je	.LBB6_188
# %bb.144:                              # %if.then375
	movq	26704(%r13), %rbx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	496(%r13), %xmm0
	addsd	.LCPI6_9(%rip), %xmm0
	divsd	.LCPI6_10(%rip), %xmm0
	callq	exp2@PLT
	movapd	%xmm0, 192(%rsp)                # 16-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	500(%r13), %xmm0
	addsd	.LCPI6_9(%rip), %xmm0
	divsd	.LCPI6_10(%rip), %xmm0
	callq	exp2@PLT
	movsd	%xmm0, 128(%rsp)                # 8-byte Spill
	movl	304(%rbx), %eax
	leal	8(,%rax,8), %edi
	callq	x264_malloc@PLT
	movq	%rax, %r14
	testq	%rax, %rax
	movl	$-1, %eax
	je	.LBB6_222
# %bb.145:                              # %do.end.i
	movq	%rbx, 208(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_11(%rip), %xmm0          # xmm0 = [8.4999999999999998E-1,0.0E+0]
	movapd	192(%rsp), %xmm1                # 16-byte Reload
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, 192(%rsp)                # 16-byte Spill
	movsd	128(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%rsp)                # 8-byte Spill
	movsd	.LCPI6_17(%rip), %xmm0          # xmm0 = [9.9499999999999999E-1,0.0E+0]
	mulsd	176(%rsp), %xmm0                # 16-byte Folded Reload
	movsd	%xmm0, 224(%rsp)                # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	movsd	.LCPI6_3(%rip), %xmm7           # xmm7 = [1.0E+0,0.0E+0]
	xorpd	%xmm0, %xmm0
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB6_146:                              # %do.body9.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_148 Depth 2
                                        #       Child Loop BB6_152 Depth 3
                                        #       Child Loop BB6_159 Depth 3
                                        #     Child Loop BB6_162 Depth 2
                                        #       Child Loop BB6_166 Depth 3
                                        #       Child Loop BB6_173 Depth 3
                                        #     Child Loop BB6_177 Depth 2
	movsd	%xmm0, 144(%rsp)                # 8-byte Spill
	ucomisd	.LCPI6_27(%rip), %xmm0
	jne	.LBB6_147
	jnp	.LBB6_161
.LBB6_147:                              # %if.then11.i
                                        #   in Loop: Header=BB6_146 Depth=1
	movsd	144(%rsp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	divsd	176(%rsp), %xmm8                # 16-byte Folded Reload
	minsd	.LCPI6_18(%rip), %xmm8
	maxsd	.LCPI6_19(%rip), %xmm8
	movss	532(%r13), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	208(%rsp), %rax                 # 8-byte Reload
	mulsd	104(%rax), %xmm0
	movsd	%xmm0, (%r14)
	xorl	%ebp, %ebp
	movsd	%xmm8, 136(%rsp)                # 8-byte Spill
	.p2align	4, 0x90
.LBB6_148:                              # %land.rhs.i
                                        #   Parent Loop BB6_146 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_152 Depth 3
                                        #       Child Loop BB6_159 Depth 3
	movq	26704(%r13), %rbx
	movsd	104(%rbx), %xmm0                # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm2
	mulsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 56(%rsp)                 # 8-byte Spill
	mulsd	.LCPI6_19(%rip), %xmm0
	movsd	%xmm0, 160(%rsp)                # 8-byte Spill
	cmpl	304(%rbx), %ebp
	jge	.LBB6_161
# %bb.149:                              # %for.body.lr.ph.i.i835
                                        #   in Loop: Header=BB6_148 Depth=2
	movslq	%ebp, %r12
	movsd	(%r14,%r12,8), %xmm2            # xmm2 = mem[0],zero
	leaq	(%r12,%r12,4), %rax
	leaq	(%r12,%rax,4), %r13
	addq	$2, %r13
	movl	$-1, %ebp
	movl	$-1, %r15d
	jmp	.LBB6_152
	.p2align	4, 0x90
.LBB6_150:                              # %if.then.i.i
                                        #   in Loop: Header=BB6_152 Depth=3
	movl	%r12d, %eax
	testl	%ebp, %ebp
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	jns	.LBB6_155
.LBB6_151:                              # %for.inc.i.i
                                        #   in Loop: Header=BB6_152 Depth=3
	incq	%r12
	movslq	304(%rbx), %rcx
	addq	$21, %r13
	movl	%eax, %r15d
	cmpq	%rcx, %r12
	jge	.LBB6_155
.LBB6_152:                              # %for.body.i.i836
                                        #   Parent Loop BB6_146 Depth=1
                                        #     Parent Loop BB6_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movq	312(%rbx), %r14
	xorps	%xmm0, %xmm0
	cvtsi2sdl	148(%r14,%r13,8), %xmm0
	mulsd	136(%rbx), %xmm0
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	3200(%rax), %rax
	movl	1192(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	movl	1196(%rax), %eax
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, 64(%rsp)                 # 16-byte Spill
	movsd	.LCPI6_7(%rip), %xmm2           # xmm2 = [1.0000000000000001E-1,0.0E+0]
	maxsd	40(%r14,%r13,8), %xmm2
	movsd	%xmm2, 104(%rsp)                # 8-byte Spill
	movsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	12(%r14,%r13,8), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	callq	pow@PLT
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%r14,%r13,8), %xmm1
	movsd	%xmm1, 96(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movsd	104(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movapd	64(%rsp), %xmm2                 # 16-byte Reload
	mulsd	96(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%r14,%r13,8), %xmm0
	addsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm2
	addsd	32(%rsp), %xmm2                 # 8-byte Folded Reload
	movsd	104(%rbx), %xmm0                # xmm0 = mem[0],zero
	minsd	%xmm2, %xmm0
	cmpltsd	.LCPI6_27(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	movq	88(%rsp), %rax                  # 8-byte Reload
	movlpd	%xmm2, 8(%rax,%r12,8)
	testq	%r12, %r12
	je	.LBB6_150
# %bb.153:                              # %for.body.i.i836
                                        #   in Loop: Header=BB6_152 Depth=3
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jae	.LBB6_150
# %bb.154:                              # %if.else.i.i
                                        #   in Loop: Header=BB6_152 Depth=3
	testl	%r15d, %r15d
	movl	%ebp, %eax
	cmovnsl	%r12d, %eax
	ucomisd	160(%rsp), %xmm2                # 8-byte Folded Reload
	cmovael	%eax, %ebp
	movl	%r15d, %eax
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	jmp	.LBB6_151
	.p2align	4, 0x90
.LBB6_155:                              # %find_underflow.exit.i
                                        #   in Loop: Header=BB6_148 Depth=2
	testl	%r15d, %r15d
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	88(%rsp), %r14                  # 8-byte Reload
	movapd	192(%rsp), %xmm4                # 16-byte Reload
	movsd	128(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	.LCPI6_3(%rip), %xmm7           # xmm7 = [1.0E+0,0.0E+0]
	movsd	136(%rsp), %xmm8                # 8-byte Reload
                                        # xmm8 = mem[0],zero
	js	.LBB6_161
# %bb.156:                              # %find_underflow.exit.i
                                        #   in Loop: Header=BB6_148 Depth=2
	testl	%ebp, %ebp
	js	.LBB6_161
# %bb.157:                              # %while.body.i
                                        #   in Loop: Header=BB6_148 Depth=2
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	setne	%cl
	leal	(%r15,%rcx), %eax
	cmpl	%ebp, %eax
	ja	.LBB6_161
# %bb.158:                              # %for.body.lr.ph.i140.i
                                        #   in Loop: Header=BB6_148 Depth=2
	movq	26704(%r13), %rax
	movl	%r15d, %edx
	addl	$-1, %r15d
	adcq	$0, %rdx
	addl	%r15d, %ecx
	imulq	$168, %rdx, %rdx
	addq	$56, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_159:                              # %for.body.i141.i
                                        #   Parent Loop BB6_146 Depth=1
                                        #     Parent Loop BB6_148 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	312(%rax), %rdi
	movsd	(%rdi,%rdx), %xmm0              # xmm0 = mem[0],zero
	movapd	%xmm5, %xmm3
	minsd	%xmm0, %xmm3
	cmpltsd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm4, %xmm0
	orpd	%xmm2, %xmm0
	movapd	%xmm8, %xmm6
	mulsd	%xmm0, %xmm6
	movapd	%xmm5, %xmm2
	minsd	%xmm6, %xmm2
	cmpltsd	%xmm4, %xmm6
	movapd	%xmm6, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm4, %xmm6
	orpd	%xmm3, %xmm6
	ucomisd	%xmm0, %xmm6
	movlpd	%xmm6, (%rdi,%rdx)
	setp	%dil
	setne	%r8b
	orb	%dil, %r8b
	orb	%r8b, %sil
	incl	%ecx
	addq	$168, %rdx
	cmpl	%ecx, %ebp
	jne	.LBB6_159
# %bb.160:                              # %fix_underflow.exit.i
                                        #   in Loop: Header=BB6_148 Depth=2
	testb	$1, %sil
	jne	.LBB6_148
	.p2align	4, 0x90
.LBB6_161:                              # %if.end36.i
                                        #   in Loop: Header=BB6_146 Depth=1
	movss	532(%r13), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm7, %xmm2
	subsd	%xmm0, %xmm2
	movq	208(%rsp), %rax                 # 8-byte Reload
	mulsd	104(%rax), %xmm2
	movsd	%xmm2, (%r14)
	xorl	%r13d, %r13d
	movsd	.LCPI6_7(%rip), %xmm0           # xmm0 = [1.0000000000000001E-1,0.0E+0]
	.p2align	4, 0x90
.LBB6_162:                              # %land.rhs46.i
                                        #   Parent Loop BB6_146 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_166 Depth 3
                                        #       Child Loop BB6_173 Depth 3
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	26704(%rax), %rbx
	movsd	104(%rbx), %xmm2                # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, 56(%rsp)                 # 8-byte Spill
	mulsd	.LCPI6_19(%rip), %xmm2
	movsd	%xmm2, 160(%rsp)                # 8-byte Spill
	cmpl	304(%rbx), %r13d
	jge	.LBB6_178
# %bb.163:                              # %for.body.lr.ph.i161.i
                                        #   in Loop: Header=BB6_162 Depth=2
	movslq	%r13d, %r15
	movsd	(%r14,%r15,8), %xmm2            # xmm2 = mem[0],zero
	leaq	(%r15,%r15,4), %rax
	leaq	(%r15,%rax,4), %r12
	addq	$2, %r12
	movl	$-1, %ebp
	movl	$-1, %r13d
	jmp	.LBB6_166
	.p2align	4, 0x90
.LBB6_164:                              # %if.then.i220.i
                                        #   in Loop: Header=BB6_166 Depth=3
	movl	%r15d, %eax
	testl	%ebp, %ebp
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	jns	.LBB6_169
.LBB6_165:                              # %for.inc.i215.i
                                        #   in Loop: Header=BB6_166 Depth=3
	incq	%r15
	movslq	304(%rbx), %rcx
	addq	$21, %r12
	movl	%eax, %r13d
	cmpq	%rcx, %r15
	jge	.LBB6_169
.LBB6_166:                              # %for.body.i166.i
                                        #   Parent Loop BB6_146 Depth=1
                                        #     Parent Loop BB6_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movq	312(%rbx), %r14
	xorps	%xmm0, %xmm0
	cvtsi2sdl	148(%r14,%r12,8), %xmm0
	mulsd	136(%rbx), %xmm0
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	3200(%rax), %rax
	movl	1192(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	movl	1196(%rax), %eax
	mulsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 64(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_7(%rip), %xmm2           # xmm2 = [1.0000000000000001E-1,0.0E+0]
	maxsd	40(%r14,%r12,8), %xmm2
	movsd	%xmm2, 104(%rsp)                # 8-byte Spill
	movsd	(%r14,%r12,8), %xmm0            # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	12(%r14,%r12,8), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	callq	pow@PLT
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	(%r14,%r12,8), %xmm0            # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%r14,%r12,8), %xmm1
	movsd	%xmm1, 96(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movsd	104(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movapd	32(%rsp), %xmm2                 # 16-byte Reload
	mulsd	96(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	24(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%r14,%r12,8), %xmm0
	addsd	%xmm1, %xmm0
	movsd	64(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	movsd	104(%rbx), %xmm0                # xmm0 = mem[0],zero
	minsd	%xmm2, %xmm0
	cmpltsd	.LCPI6_27(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	movq	88(%rsp), %rax                  # 8-byte Reload
	movlpd	%xmm2, 8(%rax,%r15,8)
	testq	%r15, %r15
	je	.LBB6_164
# %bb.167:                              # %for.body.i166.i
                                        #   in Loop: Header=BB6_166 Depth=3
	movsd	56(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jae	.LBB6_164
# %bb.168:                              # %if.else.i210.i
                                        #   in Loop: Header=BB6_166 Depth=3
	testl	%r13d, %r13d
	movl	%ebp, %eax
	cmovnsl	%r15d, %eax
	ucomisd	160(%rsp), %xmm2                # 8-byte Folded Reload
	cmovael	%eax, %ebp
	movl	%r13d, %eax
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	jmp	.LBB6_165
	.p2align	4, 0x90
.LBB6_169:                              # %find_underflow.exit222.i
                                        #   in Loop: Header=BB6_162 Depth=2
	xorl	%r15d, %r15d
	testl	%r13d, %r13d
	js	.LBB6_175
# %bb.170:                              # %find_underflow.exit222.i
                                        #   in Loop: Header=BB6_162 Depth=2
	testl	%ebp, %ebp
	movq	88(%rsp), %r14                  # 8-byte Reload
	movapd	192(%rsp), %xmm4                # 16-byte Reload
	movsd	128(%rsp), %xmm5                # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	.LCPI6_20(%rip), %xmm7          # xmm7 = [1.0009999999999999E+0,0.0E+0]
	js	.LBB6_175
# %bb.171:                              # %while.body50.i
                                        #   in Loop: Header=BB6_162 Depth=2
	cmpl	$1, %r13d
	movl	%r13d, %ecx
	sbbl	$-1, %ecx
	movb	$1, %r15b
	cmpl	%ebp, %ecx
	ja	.LBB6_175
# %bb.172:                              # %for.body.lr.ph.i227.i
                                        #   in Loop: Header=BB6_162 Depth=2
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	26704(%rax), %rax
	movl	%r13d, %edx
	cmpl	$1, %r13d
	sbbq	$-1, %rdx
	subl	%ecx, %ebp
	incl	%ebp
	imulq	$168, %rdx, %rcx
	addq	$56, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_173:                              # %for.body.i229.i
                                        #   Parent Loop BB6_146 Depth=1
                                        #     Parent Loop BB6_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	312(%rax), %rsi
	movsd	(%rsi,%rcx), %xmm0              # xmm0 = mem[0],zero
	movapd	%xmm5, %xmm3
	minsd	%xmm0, %xmm3
	cmpltsd	%xmm4, %xmm0
	movapd	%xmm0, %xmm2
	andnpd	%xmm3, %xmm2
	andpd	%xmm4, %xmm0
	orpd	%xmm2, %xmm0
	movapd	%xmm0, %xmm6
	mulsd	%xmm7, %xmm6
	movapd	%xmm5, %xmm2
	minsd	%xmm6, %xmm2
	cmpltsd	%xmm4, %xmm6
	movapd	%xmm6, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm4, %xmm6
	orpd	%xmm3, %xmm6
	movlpd	%xmm6, (%rsi,%rcx)
	ucomisd	%xmm0, %xmm6
	setp	%sil
	setne	%dil
	orb	%sil, %dil
	orb	%dil, %dl
	addq	$168, %rcx
	decl	%ebp
	jne	.LBB6_173
# %bb.174:                              # %fix_underflow.exit249.i
                                        #   in Loop: Header=BB6_162 Depth=2
	testb	$1, %dl
	movsd	.LCPI6_7(%rip), %xmm0           # xmm0 = [1.0000000000000001E-1,0.0E+0]
	jne	.LBB6_162
.LBB6_175:                              # %while.end52.i
                                        #   in Loop: Header=BB6_146 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	26704(%rax), %rbx
	cmpl	$0, 304(%rbx)
	jle	.LBB6_179
.LBB6_176:                              # %for.body.lr.ph.i251.i
                                        #   in Loop: Header=BB6_146 Depth=1
	xorpd	%xmm4, %xmm4
	movl	$16, %r12d
	xorl	%r13d, %r13d
	movsd	.LCPI6_1(%rip), %xmm2           # xmm2 = [9.2233720368547758E+18,0.0E+0]
	.p2align	4, 0x90
.LBB6_177:                              # %for.body.i252.i
                                        #   Parent Loop BB6_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm4, 32(%rsp)                 # 16-byte Spill
	movq	312(%rbx), %r14
	cvttsd2si	%xmm4, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	movapd	%xmm4, %xmm0
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rdx, 24(%r14,%r12)
	movsd	.LCPI6_7(%rip), %xmm2           # xmm2 = [1.0000000000000001E-1,0.0E+0]
	maxsd	40(%r14,%r12), %xmm2
	movsd	%xmm2, 96(%rsp)                 # 8-byte Spill
	movsd	(%r14,%r12), %xmm0              # xmm0 = mem[0],zero
	divsd	%xmm2, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	12(%r14,%r12), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	callq	pow@PLT
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	movsd	(%r14,%r12), %xmm0              # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%r14,%r12), %xmm1
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movsd	96(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movapd	32(%rsp), %xmm4                 # 16-byte Reload
	movsd	.LCPI6_1(%rip), %xmm2           # xmm2 = [9.2233720368547758E+18,0.0E+0]
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	mulsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	64(%rsp), %xmm3                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%r14,%r12), %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm4
	incq	%r13
	movslq	304(%rbx), %rax
	addq	$168, %r12
	cmpq	%rax, %r13
	jl	.LBB6_177
	jmp	.LBB6_180
	.p2align	4, 0x90
.LBB6_178:                              #   in Loop: Header=BB6_146 Depth=1
	xorl	%r15d, %r15d
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	26704(%rax), %rbx
	cmpl	$0, 304(%rbx)
	jg	.LBB6_176
.LBB6_179:                              #   in Loop: Header=BB6_146 Depth=1
	xorpd	%xmm4, %xmm4
.LBB6_180:                              # %count_expected_bits.exit.i
                                        #   in Loop: Header=BB6_146 Depth=1
	movsd	224(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm4, %xmm0
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	88(%rsp), %r14                  # 8-byte Reload
	movsd	.LCPI6_3(%rip), %xmm7           # xmm7 = [1.0E+0,0.0E+0]
	movsd	.LCPI6_8(%rip), %xmm2           # xmm2 = [5.0E-1,0.0E+0]
	movsd	144(%rsp), %xmm3                # 8-byte Reload
                                        # xmm3 = mem[0],zero
	jbe	.LBB6_182
# %bb.181:                              # %land.rhs58.i
                                        #   in Loop: Header=BB6_146 Depth=1
	movapd	%xmm4, %xmm0
	addsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %rax
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %rcx
	movapd	%xmm4, %xmm0
	cmpq	%rcx, %rax
	jg	.LBB6_146
.LBB6_182:                              # %do.end66.i
	testb	%r15b, %r15b
	je	.LBB6_184
# %bb.183:                              # %if.then68.i
	movl	$.L.str.96, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB6_184:                              # %if.end69.i
	movq	208(%rsp), %rsi                 # 8-byte Reload
	cmpl	$0, 304(%rsi)
	jle	.LBB6_187
# %bb.185:                              # %for.body.lr.ph.i
	movl	$6, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB6_186:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movsd	104(%rsi), %xmm0                # xmm0 = mem[0],zero
	subsd	8(%r14,%rcx,8), %xmm0
	movq	312(%rsi), %rdx
	movsd	%xmm0, (%rdx,%rax,8)
	incq	%rcx
	movslq	304(%rsi), %rdx
	addq	$21, %rax
	cmpq	%rdx, %rcx
	jl	.LBB6_186
.LBB6_187:                              # %vbv_pass2.exit.thread
	movq	%r14, %rdi
	callq	x264_free@PLT
.LBB6_188:                              # %if.end381
	movq	26704(%r13), %rbx
	cmpl	$0, 304(%rbx)
	jle	.LBB6_191
# %bb.189:                              # %for.body.lr.ph.i843
	xorpd	%xmm1, %xmm1
	movl	$16, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB6_190:                              # %for.body.i844
                                        # =>This Inner Loop Header: Depth=1
	movapd	%xmm1, 112(%rsp)                # 16-byte Spill
	movq	312(%rbx), %r12
	cvttsd2si	%xmm1, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	movapd	%xmm1, %xmm0
	subsd	.LCPI6_1(%rip), %xmm0
	cvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rdx, 24(%r12,%r14)
	movsd	.LCPI6_7(%rip), %xmm1           # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	40(%r12,%r14), %xmm1
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	movsd	(%r12,%r14), %xmm0              # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	12(%r12,%r14), %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	movsd	.LCPI6_6(%rip), %xmm1           # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movsd	(%r12,%r14), %xmm0              # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	8(%r12,%r14), %xmm1
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	movsd	.LCPI6_3(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	maxsd	%xmm1, %xmm0
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI6_7(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)                  # 8-byte Spill
	movsd	24(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI6_8(%rip), %xmm1           # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movapd	112(%rsp), %xmm1                # 16-byte Reload
	mulsd	64(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	32(%rsp), %xmm2                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%r12,%r14), %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	incq	%r15
	movslq	304(%rbx), %rax
	addq	$168, %r14
	cmpq	%rax, %r15
	jl	.LBB6_190
	jmp	.LBB6_192
.LBB6_191:
	xorpd	%xmm1, %xmm1
.LBB6_192:                              # %count_expected_bits.exit
	movapd	%xmm1, %xmm0
	divsd	176(%rsp), %xmm0                # 16-byte Folded Reload
	addsd	.LCPI6_21(%rip), %xmm0
	andpd	.LCPI6_22(%rip), %xmm0
	xorl	%eax, %eax
	ucomisd	.LCPI6_23(%rip), %xmm0
	jbe	.LBB6_222
# %bb.193:                              # %for.cond390.preheader
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movslq	304(%rcx), %rax
	testq	%rax, %rax
	movapd	%xmm1, 112(%rsp)                # 16-byte Spill
	jle	.LBB6_197
# %bb.194:                              # %for.body395.lr.ph
	movq	312(%rcx), %rcx
	movl	%eax, %edx
	andl	$3, %edx
	cmpl	$4, %eax
	jae	.LBB6_198
# %bb.195:
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	jmp	.LBB6_200
.LBB6_196:
	movl	$-1, %eax
	jmp	.LBB6_222
.LBB6_197:
	xorpd	%xmm0, %xmm0
	jmp	.LBB6_203
.LBB6_198:                              # %for.body395.lr.ph.new
	movl	%eax, %edi
	andl	$2147483644, %edi               # imm = 0x7FFFFFFC
	leaq	56(%rcx), %r8
	xorpd	%xmm0, %xmm0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_199:                              # %for.body395
                                        # =>This Inner Loop Header: Depth=1
	addsd	(%r8), %xmm0
	addsd	168(%r8), %xmm0
	addsd	336(%r8), %xmm0
	addsd	504(%r8), %xmm0
	addq	$4, %rsi
	addq	$672, %r8                       # imm = 0x2A0
	cmpq	%rsi, %rdi
	jne	.LBB6_199
.LBB6_200:                              # %for.cond.cleanup394.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB6_203
# %bb.201:                              # %for.body395.epil.preheader
	imulq	$168, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$56, %rcx
	imulq	$168, %rdx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_202:                              # %for.body395.epil
                                        # =>This Inner Loop Header: Depth=1
	addsd	(%rcx,%rsi), %xmm0
	addq	$168, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_202
.LBB6_203:                              # %for.cond.cleanup394
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	divsd	.LCPI6_11(%rip), %xmm0
	callq	log2@PLT
	movapd	%xmm0, %xmm3
	mulsd	.LCPI6_10(%rip), %xmm3
	addsd	.LCPI6_24(%rip), %xmm3
	movapd	112(%rsp), %xmm0                # 16-byte Reload
	ucomisd	176(%rsp), %xmm0                # 16-byte Folded Reload
	movsd	%xmm3, 8(%rsp)                  # 8-byte Spill
	ja	.LBB6_205
# %bb.204:                              # %lor.lhs.false412
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 8(%rax)
	jne	.LBB6_206
.LBB6_205:                              # %if.then415
	movl	$.L.str.89, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movsd	8(%rsp), %xmm3                  # 8-byte Reload
                                        # xmm3 = mem[0],zero
.LBB6_206:                              # %if.end416
	xorps	%xmm0, %xmm0
	cvtsi2ssl	508(%r13), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	16(%rsp), %rax                  # 8-byte Reload
	movsd	16(%rax), %xmm1                 # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	cvtsi2sdl	304(%rax), %xmm2
	mulsd	112(%rsp), %xmm1                # 16-byte Folded Reload
	mulsd	.LCPI6_0(%rip), %xmm2
	divsd	%xmm2, %xmm1
	movl	$.L.str.90, %edx
	movq	%r13, %rdi
	movl	$1, %esi
	movapd	%xmm3, %xmm2
	movb	$3, %al
	callq	x264_log@PLT
	movsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movapd	112(%rsp), %xmm1                # 16-byte Reload
	movapd	176(%rsp), %xmm0                # 16-byte Reload
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_210
# %bb.207:                              # %land.lhs.true
	movl	496(%r13), %ecx
	leal	2(%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.LBB6_210
# %bb.208:                              # %if.then437
	testl	%ecx, %ecx
	jle	.LBB6_218
# %bb.209:                              # %if.then443
	movl	$.L.str.91, %edx
	jmp	.LBB6_214
.LBB6_210:                              # %if.else449
	ucomisd	176(%rsp), %xmm1                # 16-byte Folded Reload
	jbe	.LBB6_215
# %bb.211:                              # %land.lhs.true453
	movl	500(%r13), %ecx
	leal	-2(%rcx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB6_215
# %bb.212:                              # %if.then460
	cmpl	$50, %ecx
	jg	.LBB6_219
# %bb.213:                              # %if.then466
	movl	$.L.str.93, %edx
.LBB6_214:                              # %cleanup482
	movq	%r13, %rdi
	movl	$1, %esi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	x264_log@PLT
	jmp	.LBB6_221
.LBB6_215:                              # %if.else472
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 4(%rax)
	je	.LBB6_217
# %bb.216:                              # %land.lhs.true474
	movq	16(%rsp), %rax                  # 8-byte Reload
	cmpl	$0, 8(%rax)
	movl	$0, %eax
	jne	.LBB6_222
.LBB6_217:                              # %if.then477
	movl	$.L.str.95, %edx
	jmp	.LBB6_220
.LBB6_218:                              # %if.else447
	movl	$.L.str.92, %edx
	jmp	.LBB6_220
.LBB6_219:                              # %if.else470
	movl	$.L.str.94, %edx
.LBB6_220:                              # %cleanup482
	movq	%r13, %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB6_221:                              # %cleanup482
	xorl	%eax, %eax
.LBB6_222:                              # %cleanup482
	addq	$248, %rsp
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
.LBB6_223:                              # %cond.false
	.cfi_def_cfa_offset 304
	movl	$.L.str.86, %edi
	movl	$.L.str.9, %esi
	movl	$.L__PRETTY_FUNCTION__.init_pass2, %ecx
	movl	$2511, %edx                     # imm = 0x9CF
	callq	__assert_fail@PLT
.LBB6_224:                              # %cond.false351
	movl	$.L.str.88, %edi
	movl	$.L.str.9, %esi
	movl	$.L__PRETTY_FUNCTION__.init_pass2, %ecx
	movl	$2544, %edx                     # imm = 0x9F0
	callq	__assert_fail@PLT
.Lfunc_end6:
	.size	init_pass2, .Lfunc_end6-init_pass2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_summary
.LCPI7_0:
	.quad	0x3fefff2e48e8a71e              # double 0.99990000000000001
.LCPI7_1:
	.quad	0x3ff0000000000000              # double 1
.LCPI7_2:
	.quad	0x402b000000000000              # double 13.5
.LCPI7_3:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI7_4:
	.quad	0x4018000000000000              # double 6
.LCPI7_5:
	.quad	0x4028000000000000              # double 12
	.text
	.globl	x264_ratecontrol_summary
	.p2align	4, 0x90
	.type	x264_ratecontrol_summary,@function
x264_ratecontrol_summary:               # @x264_ratecontrol_summary
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
	movq	26704(%rdi), %r14
	cmpl	$0, (%r14)
	je	.LBB7_7
# %bb.1:                                # %land.lhs.true
	cmpl	$2, 488(%rdi)
	jne	.LBB7_7
# %bb.2:                                # %land.lhs.true3
	movsd	208(%r14), %xmm0                # xmm0 = mem[0],zero
	ucomisd	.LCPI7_0(%rip), %xmm0
	jbe	.LBB7_7
# %bb.3:                                # %if.then
	cmpl	$0, 100(%rdi)
	movl	$80, %eax
	movl	$120, %ecx
	cmovel	%eax, %ecx
	imull	16368(%rdi), %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	cmpl	$0, 552(%rdi)
	je	.LBB7_4
# %bb.5:                                # %cond.true
	movq	%rdi, %rbx
	movss	592(%rdi), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	.LCPI7_1(%rip), %xmm2           # xmm2 = [1.0E+0,0.0E+0]
	subsd	%xmm1, %xmm2
	mulsd	.LCPI7_2(%rip), %xmm2
	movsd	%xmm2, (%rsp)                   # 8-byte Spill
	jmp	.LBB7_6
.LBB7_7:                                # %if.end
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB7_4:
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	xorps	%xmm1, %xmm1
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
.LBB7_6:                                # %cond.end
	movsd	.LCPI7_1(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	subsd	40(%r14), %xmm1
	callq	pow@PLT
	mulsd	184(%r14), %xmm0
	divsd	200(%r14), %xmm0
	divsd	.LCPI7_3(%rip), %xmm0
	callq	log2@PLT
	mulsd	.LCPI7_4(%rip), %xmm0
	addsd	.LCPI7_5(%rip), %xmm0
	subsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	movl	$.L.str.60, %edx
	movq	%rbx, %rdi
	movl	$2, %esi
	movb	$1, %al
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	x264_log@PLT                    # TAILCALL
.Lfunc_end7:
	.size	x264_ratecontrol_summary, .Lfunc_end7-x264_ratecontrol_summary
	.cfi_endproc
                                        # -- End function
	.globl	x264_ratecontrol_delete         # -- Begin function x264_ratecontrol_delete
	.p2align	4, 0x90
	.type	x264_ratecontrol_delete,@function
x264_ratecontrol_delete:                # @x264_ratecontrol_delete
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
	movq	%rdi, %r14
	movq	26704(%rdi), %rbx
	movq	256(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:                                # %if.then
	callq	fclose@PLT
	movl	1844(%r14), %eax
	cmpl	304(%rbx), %eax
	jl	.LBB8_4
# %bb.2:                                # %if.then7
	movq	264(%rbx), %rdi
	movq	568(%r14), %rsi
	callq	rename@PLT
	testl	%eax, %eax
	je	.LBB8_4
# %bb.3:                                # %if.then12
	movq	264(%rbx), %rcx
	movq	568(%r14), %r8
	movl	$.L.str.61, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB8_4:                                # %if.end17
	movq	264(%rbx), %rdi
	callq	x264_free@PLT
.LBB8_5:                                # %if.end19
	movq	272(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_10
# %bb.6:                                # %if.then21
	callq	fclose@PLT
	movl	1844(%r14), %eax
	cmpl	304(%rbx), %eax
	jl	.LBB8_9
# %bb.7:                                # %if.then33
	movq	280(%rbx), %rdi
	movq	288(%rbx), %rsi
	callq	rename@PLT
	testl	%eax, %eax
	je	.LBB8_9
# %bb.8:                                # %if.then37
	movq	280(%rbx), %rcx
	movq	288(%rbx), %r8
	movl	$.L.str.61, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB8_9:                                # %if.end41
	movq	280(%rbx), %rdi
	callq	x264_free@PLT
	movq	288(%rbx), %rdi
	callq	x264_free@PLT
.LBB8_10:                               # %if.end44
	movq	296(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB8_12
# %bb.11:                               # %if.then46
	callq	fclose@PLT
.LBB8_12:                               # %if.end49
	movq	144(%rbx), %rdi
	callq	x264_free@PLT
	movq	872(%rbx), %rdi
	callq	x264_free@PLT
	movq	312(%rbx), %rdi
	callq	x264_free@PLT
	movq	488(%rbx), %rdi
	callq	x264_free@PLT
	movq	496(%rbx), %rdi
	callq	x264_free@PLT
	movq	896(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_20
# %bb.13:                               # %if.then54
	movq	24(%rax), %rdi
	callq	x264_free@PLT
	movl	888(%rbx), %eax
	cmpl	$2, %eax
	jl	.LBB8_19
# %bb.14:                               # %for.body.preheader
	movl	$1, %r14d
	movl	$56, %r15d
	jmp	.LBB8_15
	.p2align	4, 0x90
.LBB8_18:                               # %for.inc
                                        #   in Loop: Header=BB8_15 Depth=1
	incq	%r14
	movslq	%eax, %rcx
	addq	$32, %r15
	cmpq	%rcx, %r14
	jge	.LBB8_19
.LBB8_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	896(%rbx), %rcx
	movq	(%rcx,%r15), %rdi
	cmpq	24(%rcx), %rdi
	je	.LBB8_18
# %bb.16:                               # %land.lhs.true68
                                        #   in Loop: Header=BB8_15 Depth=1
	movq	696(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB8_18
# %bb.17:                               # %if.then74
                                        #   in Loop: Header=BB8_15 Depth=1
	callq	*%rcx
	movl	888(%rbx), %eax
	jmp	.LBB8_18
.LBB8_19:                               # %for.cond.cleanup
	movq	896(%rbx), %rdi
	callq	x264_free@PLT
.LBB8_20:                               # %if.end86
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	x264_free@PLT                   # TAILCALL
.Lfunc_end8:
	.size	x264_ratecontrol_delete, .Lfunc_end8-x264_ratecontrol_delete
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_start
.LCPI9_0:
	.quad	0x40a8000000000000              # double 3072
.LCPI9_1:
	.quad	0x3f77d05f417d05f4              # double 0.0058139534883720929
.LCPI9_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI9_3:
	.quad	0x4018000000000000              # double 6
.LCPI9_4:
	.quad	0x4028000000000000              # double 12
.LCPI9_6:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI9_7:
	.quad	0x3fee666666666666              # double 0.94999999999999996
.LCPI9_8:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI9_5:
	.long	0xc0c00000                      # float -6
	.text
	.globl	x264_ratecontrol_start
	.p2align	4, 0x90
	.type	x264_ratecontrol_start,@function
x264_ratecontrol_start:                 # @x264_ratecontrol_start
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
	movl	%edx, %r14d
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	26704(%rdi), %r15
	movslq	888(%r15), %rdx
	movb	$1, %dil
	testq	%rdx, %rdx
	jle	.LBB9_10
# %bb.1:                                # %for.body.lr.ph.i
	movq	14680(%rbx), %rax
	movl	56(%rax), %eax
	movq	896(%r15), %rsi
	leaq	1(%rdx), %rcx
	shlq	$5, %rdx
	leaq	(%rdx,%rsi), %r13
	addq	$-32, %r13
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_2:                                # %cleanup.i
                                        #   in Loop: Header=BB9_3 Depth=1
	decq	%rcx
	addq	$-32, %r13
	cmpq	$2, %rcx
	jb	.LBB9_10
.LBB9_3:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, (%r13)
	jg	.LBB9_2
# %bb.4:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	%eax, 4(%r13)
	jl	.LBB9_2
# %bb.5:                                # %land.lhs.true
	movq	904(%r15), %rax
	movq	24(%r13), %rsi
	testq	%rax, %rax
	je	.LBB9_7
# %bb.6:                                # %lor.lhs.false
	cmpq	24(%rax), %rsi
	je	.LBB9_8
.LBB9_7:                                # %if.then
	movq	%rbx, %rdi
	callq	x264_encoder_reconfig@PLT
.LBB9_8:                                # %if.end
	xorl	%edi, %edi
	jmp	.LBB9_11
.LBB9_10:
	xorl	%r13d, %r13d
.LBB9_11:                               # %if.end
	movq	%r13, 904(%r15)
	movl	%ebp, 100(%r15)
	cmpl	$0, 576(%rbx)
	movl	%edi, 4(%rsp)                   # 4-byte Spill
	je	.LBB9_17
# %bb.12:                               # %if.then11
	movq	14680(%rbx), %rax
	movslq	56(%rax), %rax
	testq	%rax, %rax
	js	.LBB9_60
# %bb.13:                               # %land.lhs.true15
	cmpl	304(%r15), %eax
	jge	.LBB9_60
# %bb.14:                               # %cond.end
	movq	26704(%rbx), %rcx
	imulq	$168, %rax, %r12
	addq	312(%rcx), %r12
	movq	%r12, 72(%rcx)
	cmpl	$1, 7248(%rbx)
	jne	.LBB9_18
# %bb.15:                               # %land.lhs.true22
	cmpl	$3, 404(%rbx)
	jne	.LBB9_18
# %bb.16:                               # %if.then25
	xorl	%eax, %eax
	cmpb	$115, 84(%r12)
	sete	%al
	movl	%eax, 7304(%rbx)
	movzbl	84(%r12), %eax
	addb	$-115, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	setb	%cl
	movl	%ecx, 25816(%rbx)
	jmp	.LBB9_18
.LBB9_17:
	xorl	%r12d, %r12d
.LBB9_18:                               # %if.end38
	cmpl	$0, 8(%r15)
	je	.LBB9_33
# %bb.19:                               # %if.then40
	movq	14688(%rbx), %rax
	movq	12136(%rax), %rdi
	movq	3200(%rbx), %rax
	movslq	1088(%rax), %rdx
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset@PLT
	movslq	7248(%rbx), %rax
	shlq	$6, %rax
	addq	%r15, %rax
	addq	$552, %rax                      # imm = 0x228
	movq	%rax, 544(%r15)
	movq	14680(%rbx), %rax
	cvtsi2sdl	36(%rax), %xmm0
	mulsd	136(%r15), %xmm0
	movq	3200(%rbx), %rax
	movl	1192(%rax), %ecx
	movl	1196(%rax), %eax
	cvtsi2sd	%rcx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 128(%r15)
	movq	26704(%rbx), %rcx
	movq	704(%rbx), %rax
	movq	26704(%rax), %rax
	movsd	112(%rax), %xmm0                # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rcx)
	movl	1852(%rbx), %r8d
	cmpl	$2, %r8d
	jl	.LBB9_24
# %bb.20:                               # %for.body.lr.ph.i309
	movq	26704(%rbx), %rax
	movq	704(%rbx), %rdx
	subq	26704(%rdx), %rax
	shrq	$3, %rax
	imull	$-587345955, %eax, %esi         # imm = 0xDCFDCFDD
	movl	$1, %edi
	xorpd	%xmm1, %xmm1
	jmp	.LBB9_22
	.p2align	4, 0x90
.LBB9_21:                               # %cleanup.i311
                                        #   in Loop: Header=BB9_22 Depth=1
	incl	%edi
	cmpl	%r8d, %edi
	jge	.LBB9_24
.LBB9_22:                               # %for.body.i310
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rsi,%rdi), %eax
	cltd
	idivl	%r8d
	movslq	%edx, %rax
	movq	704(%rbx,%rax,8), %rax
	cmpl	$0, 1740(%rax)
	je	.LBB9_21
# %bb.23:                               # %if.end.i
                                        #   in Loop: Header=BB9_22 Depth=1
	movq	26704(%rax), %rdx
	movsd	520(%rdx), %xmm2                # xmm2 = mem[0],zero
	movss	508(%rdx), %xmm3                # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	maxsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm0
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 120(%rcx)
	movq	26704(%rax), %rax
	addsd	128(%rax), %xmm0
	minsd	104(%rcx), %xmm0
	movsd	%xmm0, 120(%rcx)
	movl	1852(%rbx), %r8d
	jmp	.LBB9_21
.LBB9_24:                               # %update_vbv_plan.exit
	minsd	104(%rcx), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r14d, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 120(%rcx)
	movq	x264_levels@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB9_28
# %bb.25:                               # %land.rhs.lr.ph
	movl	32(%rbx), %edx
	movq	x264_levels@GOTPCREL(%rip), %rax
	.p2align	4, 0x90
.LBB9_26:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%edx, %ecx
	je	.LBB9_39
# %bb.27:                               # %while.body
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	52(%rax), %ecx
	addq	$52, %rax
	testl	%ecx, %ecx
	jne	.LBB9_26
.LBB9_28:                               # %while.end.thread
	movl	36(%rax), %ecx
.LBB9_29:                               # %if.end69
	cmpl	$0, 1844(%rbx)
	je	.LBB9_31
# %bb.30:                               # %if.else
	movq	14680(%rbx), %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	36(%rdx), %xmm0
	movq	3200(%rbx), %rdx
	movl	1192(%rdx), %esi
	movl	1196(%rdx), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rsi, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rdx, %xmm2
	mulsd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	mulsd	.LCPI9_0(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	%xmm1, %xmm0
	jmp	.LBB9_32
.LBB9_31:                               # %if.then73
	movq	3200(%rbx), %rdx
	movl	1088(%rdx), %esi
	imull	1084(%rdx), %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%rax), %xmm1
	mulsd	.LCPI9_1(%rip), %xmm1
	maxsd	%xmm1, %xmm0
	mulsd	.LCPI9_0(%rip), %xmm0
.LBB9_32:                               # %if.end114.sink.split
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 512(%r15)
.LBB9_33:                               # %if.end114
	cmpl	$1, 7248(%rbx)
	je	.LBB9_35
# %bb.34:                               # %if.then119
	movq	14680(%rbx), %rax
	movzbl	86(%rax), %eax
	movl	%eax, 880(%r15)
.LBB9_35:                               # %if.end122
	testl	%ebp, %ebp
	je	.LBB9_37
# %bb.36:                               # %if.then124
	decl	%ebp
	xorps	%xmm1, %xmm1
	cvtsi2ss	%ebp, %xmm1
	jmp	.LBB9_44
.LBB9_37:                               # %if.else126
	cmpl	$0, (%r15)
	je	.LBB9_41
# %bb.38:                               # %if.then128
	movq	%rbx, %rdi
	callq	rate_estimate_qscale
	cvtss2sd	%xmm0, %xmm0
	jmp	.LBB9_43
.LBB9_39:                               # %while.end
	movl	36(%rax), %ecx
	cmpl	$41, %edx
	jne	.LBB9_29
# %bb.40:                               # %land.lhs.true65
	cmpl	$0, 40(%rbx)
	movl	$4, %edx
	cmovnel	%edx, %ecx
	jmp	.LBB9_29
.LBB9_41:                               # %if.else133
	cmpl	$0, 4(%r15)
	je	.LBB9_51
# %bb.42:                               # %if.then135
	movq	%rbx, %rdi
	callq	rate_estimate_qscale
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 56(%r12)
.LBB9_43:                               # %if.end179
	divsd	.LCPI9_2(%rip), %xmm0
	callq	log2@PLT
	mulsd	.LCPI9_3(%rip), %xmm0
	addsd	.LCPI9_4(%rip), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
.LBB9_44:                               # %if.end179
	xorps	%xmm0, %xmm0
	cvtsi2sdl	496(%rbx), %xmm0
	cvtss2sd	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	500(%rbx), %xmm2
	minsd	%xmm1, %xmm2
	cmpltsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm0, %xmm1
	orpd	%xmm3, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	addsd	.LCPI9_6(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	cmpl	$51, %eax
	movl	$51, %ecx
	cmovll	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovgl	%ecx, %eax
	movq	$0, 88(%r15)
	movl	%eax, 80(%r15)
	movss	%xmm0, 84(%r15)
	movq	14688(%rbx), %rax
	movss	%xmm0, 92(%rax)
	movq	14688(%rbx), %rax
	movss	%xmm0, 88(%rax)
	testq	%r12, %r12
	je	.LBB9_46
# %bb.45:                               # %if.then196
	movl	80(%r15), %eax
	movl	%eax, 64(%r12)
.LBB9_46:                               # %if.end198
	movss	84(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movq	26704(%rbx), %rax
	movsd	.LCPI9_7(%rip), %xmm2           # xmm2 = [9.4999999999999996E-1,0.0E+0]
	movsd	376(%rax), %xmm0                # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, 376(%rax)
	mulsd	384(%rax), %xmm2
	addsd	.LCPI9_8(%rip), %xmm2
	movsd	%xmm2, 384(%rax)
	cmpl	$2, 7248(%rbx)
	cvtss2sd	%xmm1, %xmm1
	jne	.LBB9_48
# %bb.47:                               # %if.then.i
	addsd	240(%rax), %xmm1
.LBB9_48:                               # %accum_p_qp_update.exit
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 376(%rax)
	movl	7248(%rbx), %eax
	cmpl	$1, %eax
	je	.LBB9_50
# %bb.49:                               # %if.then204
	movl	%eax, 368(%r15)
.LBB9_50:                               # %if.end207
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
.LBB9_51:                               # %if.else141
	.cfi_def_cfa_offset 64
	movslq	7248(%rbx), %rax
	cmpq	$1, %rax
	jne	.LBB9_54
# %bb.52:                               # %land.lhs.true146
	movq	14688(%rbx), %rcx
	cmpl	$0, 72(%rcx)
	je	.LBB9_54
# %bb.53:                               # %if.then149
	movl	52(%r15), %ecx
	addl	56(%r15), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	jmp	.LBB9_55
.LBB9_54:                               # %if.else155
	movl	52(%r15,%rax,4), %eax
.LBB9_55:                               # %if.end162
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	cmpb	$0, 4(%rsp)                     # 1-byte Folded Reload
	jne	.LBB9_44
# %bb.56:                               # %if.then164
	cmpl	$0, 8(%r13)
	je	.LBB9_58
# %bb.57:                               # %if.then166
	movl	12(%r13), %eax
	subl	52(%r15), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	jmp	.LBB9_59
.LBB9_58:                               # %if.else172
	movss	16(%r13), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm1, 4(%rsp)                  # 4-byte Spill
	callq	log2f@PLT
	movss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI9_5(%rip), %xmm0
.LBB9_59:                               # %if.end179
	addss	%xmm0, %xmm1
	jmp	.LBB9_44
.LBB9_60:                               # %cond.false
	movl	$.L.str.62, %edi
	movl	$.L.str.9, %esi
	movl	$.L__PRETTY_FUNCTION__.x264_ratecontrol_start, %ecx
	movl	$1090, %edx                     # imm = 0x442
	callq	__assert_fail@PLT
.Lfunc_end9:
	.size	x264_ratecontrol_start, .Lfunc_end9-x264_ratecontrol_start
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rate_estimate_qscale
.LCPI10_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI10_1:
	.quad	0x4000000000000000              # double 2
.LCPI10_2:
	.quad	0x4059000000000000              # double 100
.LCPI10_3:
	.quad	0x3ff0000000000000              # double 1
.LCPI10_4:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
.LCPI10_5:
	.quad	0x3ff199999999999a              # double 1.1000000000000001
.LCPI10_6:
	.quad	0x3fa999999999999a              # double 0.050000000000000003
.LCPI10_7:
	.quad	0x3ff0cccccccccccd              # double 1.05
.LCPI10_10:
	.quad	0xc028000000000000              # double -12
.LCPI10_11:
	.quad	0x4018000000000000              # double 6
.LCPI10_12:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI10_14:
	.quad	0x3feccccccccccccd              # double 0.90000000000000002
.LCPI10_15:
	.quad	0x4028000000000000              # double 12
.LCPI10_16:
	.quad	0xbfe0000000000000              # double -0.5
.LCPI10_18:
	.quad	0x0000000000000000              # double 0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_8:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fe0000000000000              # double 0.5
.LCPI10_9:
	.zero	8
	.quad	0x3ff0000000000000              # double 1
.LCPI10_13:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI10_17:
	.long	0x3f000000                      # float 0.5
	.text
	.p2align	4, 0x90
	.type	rate_estimate_qscale,@function
rate_estimate_qscale:                   # @rate_estimate_qscale
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	26704(%rdi), %r15
	movslq	7248(%rdi), %r12
	movq	27440(%rdi), %r13
	addq	27456(%rdi), %r13
	addq	27448(%rdi), %r13
	cmpl	$0, 4(%r15)
	je	.LBB10_10
# %bb.1:                                # %if.then
	movq	72(%r15), %rcx
	movslq	(%rcx), %rax
	movsd	16(%rcx), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	24(%rcx), %edx
	movl	28(%rcx), %ebx
	movl	32(%rcx), %ebp
	movq	40(%rcx), %rsi
	movsd	48(%rcx), %xmm0                 # xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)                 # 8-byte Spill
	movsd	56(%rcx), %xmm0                 # xmm0 = mem[0],zero
	cmpl	%eax, %r12d
	movl	%edx, 24(%rsp)                  # 4-byte Spill
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	je	.LBB10_3
# %bb.2:                                # %if.then10
	movsbl	slice_type_to_char(%r12), %ecx
	movsbl	slice_type_to_char(%rax), %r8d
	movl	$.L.str.84, %edx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB10_3:                               # %if.end16
	cmpl	$1, %r12d
	jne	.LBB10_11
.LBB10_4:                               # %if.then19
	movq	14680(%r14), %rax
	movq	14704(%r14), %r9
	movl	4(%r9), %esi
	movq	14864(%r14), %rdi
	movl	4(%rdi), %r8d
	movl	(%rax), %r10d
	movl	%r10d, %edx
	subl	(%r9), %edx
	movl	%edx, %ecx
	negl	%ecx
	cmovsl	%edx, %ecx
	subl	(%rdi), %r10d
	movl	%r10d, %edx
	negl	%edx
	cmovsl	%r10d, %edx
	movss	88(%r9), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	cmpl	$4, %esi
	jne	.LBB10_6
# %bb.5:                                # %if.then60
	movsd	248(%r15), %xmm1                # xmm1 = mem[0],zero
	mulsd	.LCPI10_16(%rip), %xmm1
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
.LBB10_6:                               # %if.end64
	decl	%esi
	leal	-1(%r8), %r9d
	movss	88(%rdi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cmpl	$4, %r8d
	jne	.LBB10_8
# %bb.7:                                # %if.then70
	movsd	248(%r15), %xmm2                # xmm2 = mem[0],zero
	mulsd	.LCPI10_16(%rip), %xmm2
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	cvtsd2ss	%xmm1, %xmm1
.LBB10_8:                               # %if.end76
	movl	%r9d, %edi
	orl	%esi, %edi
	cmpl	$1, %edi
	ja	.LBB10_15
# %bb.9:                                # %if.then79
	addss	%xmm1, %xmm0
	mulss	.LCPI10_17(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	240(%r15), %xmm0
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	jmp	.LBB10_19
.LBB10_10:
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
                                        # implicit-def: $rax
                                        # kill: killed $rax
                                        # implicit-def: $ebp
                                        # implicit-def: $ebx
                                        # implicit-def: $eax
                                        # kill: killed $eax
                                        # implicit-def: $xmm0
                                        # kill: killed $xmm0
	cmpl	$1, %r12d
	je	.LBB10_4
.LBB10_11:                              # %if.else142
	shlq	$3, %r13
	movsd	32(%r15), %xmm8                 # xmm8 = mem[0],zero
	addsd	%xmm8, %xmm8
	mulsd	24(%r15), %xmm8
	cmpl	$0, 4(%r15)
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	je	.LBB10_28
# %bb.12:                               # %if.then147
	movsd	400(%r15,%r12,8), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, 160(%rsp)                # 16-byte Spill
	movsd	440(%r15,%r12,8), %xmm0         # xmm0 = mem[0],zero
	movapd	%xmm0, 128(%rsp)                # 16-byte Spill
	movl	304(%r15), %eax
	subl	1844(%r14), %eax
	jle	.LBB10_41
# %bb.13:                               # %if.then156
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB10_39
# %bb.14:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB10_40
.LBB10_15:                              # %if.else
	cmpl	$2, %esi
	jb	.LBB10_19
# %bb.16:                               # %if.else87
	cmpl	$2, %r9d
	jb	.LBB10_18
# %bb.17:                               # %if.else90
	xorps	%xmm2, %xmm2
	cvtsi2ss	%edx, %xmm2
	cvtsi2ss	%ecx, %xmm3
	mulss	%xmm3, %xmm1
	addl	%ecx, %edx
	xorps	%xmm3, %xmm3
	cvtsi2ss	%edx, %xmm3
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	divss	%xmm3, %xmm0
.LBB10_18:                              # %if.end100
	movaps	%xmm0, %xmm1
.LBB10_19:                              # %if.end100
	cmpl	$0, 72(%rax)
	movsd	248(%r15), %xmm0                # xmm0 = mem[0],zero
	je	.LBB10_21
# %bb.20:                               # %if.end100
	mulsd	.LCPI10_0(%rip), %xmm0
.LBB10_21:                              # %if.end100
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cmpl	$0, 4(%r15)
	movss	%xmm1, 8(%rsp)                  # 4-byte Spill
	je	.LBB10_24
# %bb.22:                               # %land.lhs.true117
	cmpl	$0, 8(%r15)
	je	.LBB10_24
# %bb.23:                               # %if.then119
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	movsd	.LCPI10_4(%rip), %xmm1          # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 80(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI10_5(%rip), %xmm1          # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movsd	.LCPI10_3(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	xorps	%xmm1, %xmm1
	cvtsi2sdl	24(%rsp), %xmm1         # 4-byte Folded Reload
	movsd	%xmm1, 24(%rsp)                 # 8-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ebx, %xmm2
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	addsd	.LCPI10_4(%rip), %xmm2
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movsd	80(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	mulsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	48(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebp, %xmm0
	addsd	%xmm1, %xmm0
	jmp	.LBB10_25
.LBB10_24:                              # %if.else121
	movq	872(%r15), %rax
	movslq	14856(%r14), %rcx
	movq	14856(%r14,%rcx,8), %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	9460(%rcx), %xmm0
	mulsd	(%rax), %xmm0
	addsd	24(%rax), %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	8(%rax), %xmm1
	divsd	%xmm1, %xmm0
.LBB10_25:                              # %if.end130
	movsd	%xmm0, 520(%r15)
	cvtsd2ss	%xmm0, %xmm0
	movq	26704(%r14), %rax
	movss	%xmm0, 508(%rax)
	cmpl	$0, 8(%r15)
	je	.LBB10_27
# %bb.26:                               # %if.then136
	movq	%r14, %rdi
	callq	x264_rc_analyse_slice@PLT
	movl	%eax, 168(%r15)
.LBB10_27:                              # %if.end138
	movss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 96(%r15)
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI10_10(%rip), %xmm0
	divsd	.LCPI10_11(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI10_12(%rip), %xmm0
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm0, %xmm2
	jmp	.LBB10_130
.LBB10_28:                              # %if.else328
	movsd	%xmm8, 40(%rsp)                 # 8-byte Spill
	movq	%r14, %rdi
	callq	x264_rc_analyse_slice@PLT
	movl	%eax, %r13d
	movl	%eax, 168(%r15)
	movupd	216(%r15), %xmm0
	mulpd	.LCPI10_8(%rip), %xmm0
	movapd	.LCPI10_9(%rip), %xmm1          # xmm1 = [u,1.0E+0]
	cvtsi2sd	%eax, %xmm1
	addpd	%xmm0, %xmm1
	movupd	%xmm1, 216(%r15)
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	cmpl	$1, 488(%r14)
	movl	%ebp, 20(%rsp)                  # 4-byte Spill
	jne	.LBB10_34
# %bb.29:                               # %if.then348
	movq	%r12, %rbp
	movq	%r14, %rax
	movq	26704(%r14), %r14
	movslq	888(%r14), %rdx
	testq	%rdx, %rdx
	jle	.LBB10_75
# %bb.30:                               # %for.body.lr.ph.i.i
	movq	%rax, %r12
	movq	14680(%rax), %rax
	movl	56(%rax), %eax
	movq	896(%r14), %rsi
	leaq	1(%rdx), %rcx
	shlq	$5, %rdx
	leaq	(%rdx,%rsi), %rbx
	addq	$-32, %rbx
	jmp	.LBB10_32
	.p2align	4, 0x90
.LBB10_31:                              # %cleanup.i.i
                                        #   in Loop: Header=BB10_32 Depth=1
	decq	%rcx
	addq	$-32, %rbx
	cmpq	$1, %rcx
	jbe	.LBB10_76
.LBB10_32:                              # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, (%rbx)
	jg	.LBB10_31
# %bb.33:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB10_32 Depth=1
	cmpl	%eax, 4(%rbx)
	jl	.LBB10_31
	jmp	.LBB10_77
.LBB10_34:                              # %if.else353
	movsd	200(%r15), %xmm1                # xmm1 = mem[0],zero
	movq	%r14, %rax
	movq	26704(%r14), %r14
	movslq	888(%r14), %rdx
	testq	%rdx, %rdx
	jle	.LBB10_83
# %bb.35:                               # %for.body.lr.ph.i.i868
	movq	%rax, %rbp
	movq	14680(%rax), %rax
	movl	56(%rax), %eax
	movq	896(%r14), %rsi
	leaq	1(%rdx), %rcx
	shlq	$5, %rdx
	leaq	(%rdx,%rsi), %rbx
	addq	$-32, %rbx
	jmp	.LBB10_37
	.p2align	4, 0x90
.LBB10_36:                              # %cleanup.i.i916
                                        #   in Loop: Header=BB10_37 Depth=1
	decq	%rcx
	addq	$-32, %rbx
	cmpq	$1, %rcx
	jbe	.LBB10_84
.LBB10_37:                              # %for.body.i.i870
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%eax, (%rbx)
	jg	.LBB10_36
# %bb.38:                               # %land.lhs.true.i.i875
                                        #   in Loop: Header=BB10_37 Depth=1
	cmpl	%eax, 4(%rbx)
	jl	.LBB10_36
	jmp	.LBB10_85
.LBB10_39:                              # %call.sqrt
	movsd	%xmm8, 40(%rsp)                 # 8-byte Spill
	callq	sqrt@PLT
	movsd	40(%rsp), %xmm8                 # 8-byte Reload
                                        # xmm8 = mem[0],zero
.LBB10_40:                              # %if.then156.split
	mulsd	.LCPI10_0(%rip), %xmm0
	mulsd	%xmm0, %xmm8
.LBB10_41:                              # %if.end164
	movl	8(%r15), %esi
	testl	%esi, %esi
	movl	%ebx, 92(%rsp)                  # 4-byte Spill
	je	.LBB10_54
# %bb.42:                               # %if.then167
	movl	1852(%r14), %r10d
	cmpl	$2, %r10d
	jl	.LBB10_61
# %bb.43:                               # %if.then170
	movl	%ebp, 20(%rsp)                  # 4-byte Spill
	movq	26704(%r14), %rax
	movq	704(%r14), %rcx
	subq	26704(%rcx), %rax
	shrq	$3, %rax
	imull	$-587345955, %eax, %ecx         # imm = 0xDCFDCFDD
	movl	$1, %ebp
	cmpl	$5, %r10d
	jb	.LBB10_58
# %bb.44:                               # %vector.ph
	movl	%esi, 64(%rsp)                  # 4-byte Spill
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	leal	-1(%r10), %eax
	movl	%eax, 124(%rsp)                 # 4-byte Spill
                                        # kill: def $eax killed $eax def $rax
	andl	$-4, %eax
	leal	1(%rax), %ebp
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	addl	$4, %ecx
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movl	%eax, %ebx
	movq	56(%rsp), %r11                  # 8-byte Reload
	xorl	%r12d, %r12d
	xorl	%r9d, %r9d
	xorl	%r13d, %r13d
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB10_46
	.p2align	4, 0x90
.LBB10_45:                              # %pred.load.continue1010
                                        #   in Loop: Header=BB10_46 Depth=1
	testl	%r8d, %r8d
	cvtss2sd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rdi
	movl	$0, %r8d
	cmoveq	%r8, %rdi
	addq	%rdi, %r11
	testl	%esi, %esi
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm3, %xmm0
	maxsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %rsi
	cmoveq	%r8, %rsi
	addq	%rsi, %r12
	testl	%edx, %edx
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	maxsd	%xmm0, %xmm4
	cvttsd2si	%xmm4, %rdx
	cmoveq	%r8, %rdx
	addq	%rdx, %r9
	testl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm7, %xmm0
	maxsd	%xmm0, %xmm6
	cvttsd2si	%xmm6, %rax
	cmoveq	%r8, %rax
	addq	%rax, %r13
	addl	$4, %ecx
	addl	$-4, %ebx
	movq	152(%rsp), %r14                 # 8-byte Reload
	je	.LBB10_55
.LBB10_46:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leal	-3(%rcx), %eax
	leal	-2(%rcx), %esi
	leal	-1(%rcx), %edi
	cltd
	idivl	%r10d
	movl	%edx, %r8d
	movl	%esi, %eax
	cltd
	idivl	%r10d
	movl	%edx, %esi
	movl	%edi, %eax
	cltd
	idivl	%r10d
	movl	%edx, %edi
	movl	%ecx, %eax
	cltd
	idivl	%r10d
	movslq	%r8d, %rax
	movq	704(%r14,%rax,8), %rax
	movl	1740(%rax), %r8d
                                        # implicit-def: $xmm0
                                        # implicit-def: $xmm1
	testl	%r8d, %r8d
	je	.LBB10_48
# %bb.47:                               # %pred.load.if
                                        #   in Loop: Header=BB10_46 Depth=1
	movq	26704(%rax), %rax
	movsd	520(%rax), %xmm0                # xmm0 = mem[0],zero
	movss	508(%rax), %xmm1                # xmm1 = mem[0],zero,zero,zero
.LBB10_48:                              # %pred.load.continue
                                        #   in Loop: Header=BB10_46 Depth=1
	movslq	%esi, %rax
	movslq	%edi, %rsi
	movslq	%edx, %rdx
	movq	704(%r14,%rax,8), %r15
	movq	%r14, %rax
	movq	704(%r14,%rsi,8), %r14
	movq	704(%rax,%rdx,8), %rdi
	movl	1740(%r15), %esi
	movl	1740(%r14), %edx
	movl	1740(%rdi), %eax
                                        # implicit-def: $xmm2
                                        # implicit-def: $xmm3
	testl	%esi, %esi
	je	.LBB10_50
# %bb.49:                               # %pred.load.if1005
                                        #   in Loop: Header=BB10_46 Depth=1
	movq	26704(%r15), %r15
	movsd	520(%r15), %xmm2                # xmm2 = mem[0],zero
	movss	508(%r15), %xmm3                # xmm3 = mem[0],zero,zero,zero
.LBB10_50:                              # %pred.load.continue1006
                                        #   in Loop: Header=BB10_46 Depth=1
                                        # implicit-def: $xmm4
                                        # implicit-def: $xmm5
	testl	%edx, %edx
	je	.LBB10_52
# %bb.51:                               # %pred.load.if1007
                                        #   in Loop: Header=BB10_46 Depth=1
	movq	26704(%r14), %r14
	movsd	520(%r14), %xmm4                # xmm4 = mem[0],zero
	movss	508(%r14), %xmm5                # xmm5 = mem[0],zero,zero,zero
.LBB10_52:                              # %pred.load.continue1008
                                        #   in Loop: Header=BB10_46 Depth=1
                                        # implicit-def: $xmm6
                                        # implicit-def: $xmm7
	testl	%eax, %eax
	je	.LBB10_45
# %bb.53:                               # %pred.load.if1009
                                        #   in Loop: Header=BB10_46 Depth=1
	movq	26704(%rdi), %rdi
	movsd	520(%rdi), %xmm6                # xmm6 = mem[0],zero
	movss	508(%rdi), %xmm7                # xmm7 = mem[0],zero,zero,zero
	jmp	.LBB10_45
.LBB10_54:                              # %if.else201
	movl	1844(%r14), %eax
	movl	1852(%r14), %r10d
	leal	-1(%r10), %ecx
	cmpl	%r10d, %eax
	cmovll	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	mulsd	24(%r15), %xmm0
	divsd	16(%r15), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r13, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %r13
	jmp	.LBB10_61
.LBB10_55:                              # %middle.block
	addq	%r11, %r12
	addq	%r12, %r9
	addq	%r9, %r13
	movq	144(%rsp), %rax                 # 8-byte Reload
	cmpl	%eax, 124(%rsp)                 # 4-byte Folded Reload
	movq	40(%rsp), %r15                  # 8-byte Reload
	movq	72(%rsp), %r12                  # 8-byte Reload
	movl	64(%rsp), %esi                  # 4-byte Reload
	movq	96(%rsp), %rcx                  # 8-byte Reload
	jne	.LBB10_58
.LBB10_60:
	movl	20(%rsp), %ebp                  # 4-byte Reload
.LBB10_61:                              # %if.end229
	subq	8(%rsp), %r13                   # 8-byte Folded Reload
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r13, %xmm1
	movapd	%xmm8, %xmm2
	subsd	%xmm1, %xmm2
	divsd	%xmm8, %xmm2
	movsd	.LCPI10_1(%rip), %xmm1          # xmm1 = [2.0E+0,0.0E+0]
	minsd	%xmm2, %xmm1
	movsd	.LCPI10_0(%rip), %xmm3          # xmm3 = [5.0E-1,0.0E+0]
	cmpltsd	%xmm3, %xmm2
	movapd	%xmm2, %xmm4
	andnpd	%xmm1, %xmm4
	andpd	%xmm3, %xmm2
	orpd	%xmm4, %xmm2
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm0, %xmm3
	movl	1844(%r14), %eax
	movl	%eax, %ecx
	subl	%r10d, %ecx
	incl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	ucomisd	16(%r15), %xmm0
	jae	.LBB10_63
# %bb.62:
	movl	92(%rsp), %r13d                 # 4-byte Reload
	jmp	.LBB10_65
	.p2align	4, 0x90
.LBB10_57:                              # %cleanup
                                        #   in Loop: Header=BB10_58 Depth=1
	incl	%ebp
	cmpl	%ebp, %r10d
	je	.LBB10_60
.LBB10_58:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%rbp), %eax
	cltd
	idivl	%r10d
	movslq	%edx, %rax
	movq	704(%r14,%rax,8), %rax
	cmpl	$0, 1740(%rax)
	je	.LBB10_57
# %bb.59:                               # %if.end187
                                        #   in Loop: Header=BB10_58 Depth=1
	movq	26704(%rax), %rax
	movsd	520(%rax), %xmm0                # xmm0 = mem[0],zero
	movss	508(%rax), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	maxsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	addq	%rax, %r13
	jmp	.LBB10_57
.LBB10_63:                              # %land.lhs.true247
	movsd	192(%r15), %xmm2                # xmm2 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	movl	92(%rsp), %r13d                 # 4-byte Reload
	jbe	.LBB10_65
# %bb.64:                               # %if.then250
	movss	%xmm3, 8(%rsp)                  # 4-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	xorps	%xmm3, %xmm3
	cvtsi2sdl	304(%r15), %xmm3
	divsd	%xmm3, %xmm1
	mulsd	.LCPI10_2(%rip), %xmm1
	movsd	.LCPI10_3(%rip), %xmm3          # xmm3 = [1.0E+0,0.0E+0]
	minsd	%xmm1, %xmm3
	cmpltsd	%xmm0, %xmm1
	andnpd	%xmm3, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdq	56(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	%xmm2, %xmm0
	callq	pow@PLT
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm1, %xmm3
	movl	8(%r15), %esi
.LBB10_65:                              # %if.end265
	xorps	%xmm4, %xmm4
	cvtss2sd	%xmm3, %xmm4
	testl	%esi, %esi
	je	.LBB10_73
# %bb.66:                               # %if.then268
	movsd	.LCPI10_4(%rip), %xmm1          # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm4, %xmm1
	movsd	%xmm1, 72(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI10_5(%rip), %xmm1          # xmm1 = [1.1000000000000001E+0,0.0E+0]
	movss	%xmm3, 8(%rsp)                  # 4-byte Spill
	movaps	%xmm4, 96(%rsp)                 # 16-byte Spill
	callq	pow@PLT
	movsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	movsd	.LCPI10_3(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	maxsd	%xmm1, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sdl	24(%rsp), %xmm2         # 4-byte Folded Reload
	movsd	%xmm2, 56(%rsp)                 # 8-byte Spill
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r13d, %xmm2
	addsd	.LCPI10_4(%rip), %xmm2
	movsd	%xmm2, 40(%rsp)                 # 8-byte Spill
	movsd	72(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	movsd	%xmm0, 72(%rsp)                 # 8-byte Spill
	divsd	%xmm2, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	mulsd	56(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	64(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	40(%rsp), %xmm2                 # 8-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	addsd	%xmm0, %xmm2
	movsd	120(%r15), %xmm0                # xmm0 = mem[0],zero
	addsd	128(%r15), %xmm0
	movsd	%xmm1, 64(%rsp)                 # 8-byte Spill
	addsd	%xmm1, %xmm2
	movsd	80(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movapd	%xmm3, %xmm5
	divsd	104(%r15), %xmm5
	subsd	%xmm2, %xmm0
	movsd	.LCPI10_1(%rip), %xmm4          # xmm4 = [2.0E+0,0.0E+0]
	subsd	%xmm5, %xmm4
	mulsd	96(%rsp), %xmm4                 # 16-byte Folded Reload
	movapd	%xmm5, %xmm1
	addsd	.LCPI10_3(%rip), %xmm1
	maxsd	48(%rsp), %xmm4                 # 8-byte Folded Reload
	cmpltsd	.LCPI10_6(%rip), %xmm5
	movapd	%xmm5, %xmm2
	andnpd	%xmm4, %xmm2
	movapd	128(%rsp), %xmm4                # 16-byte Reload
	andpd	%xmm4, %xmm5
	orpd	%xmm2, %xmm5
	minsd	%xmm4, %xmm5
	movapd	%xmm5, 96(%rsp)                 # 16-byte Spill
	divsd	%xmm1, %xmm3
	movsd	%xmm3, 80(%rsp)                 # 8-byte Spill
	jmp	.LBB10_68
	.p2align	4, 0x90
.LBB10_67:                              # %while.body
                                        #   in Loop: Header=BB10_68 Depth=1
	mulsd	.LCPI10_7(%rip), %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 8(%rsp)                  # 4-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI10_4(%rip), %xmm1          # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI10_5(%rip), %xmm1          # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	.LCPI10_3(%rip), %xmm1
	movsd	72(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	mulsd	56(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	addsd	64(%rsp), %xmm1                 # 8-byte Folded Reload
	movsd	120(%r15), %xmm0                # xmm0 = mem[0],zero
	addsd	128(%r15), %xmm0
	subsd	%xmm1, %xmm0
.LBB10_68:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	80(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	jbe	.LBB10_70
# %bb.69:                               # %while.cond
                                        #   in Loop: Header=BB10_68 Depth=1
	movapd	96(%rsp), %xmm2                 # 16-byte Reload
	ucomisd	%xmm1, %xmm2
	ja	.LBB10_67
.LBB10_70:                              # %lor.rhs305
                                        #   in Loop: Header=BB10_68 Depth=1
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB10_72
# %bb.71:                               # %lor.rhs305
                                        #   in Loop: Header=BB10_68 Depth=1
	movapd	128(%rsp), %xmm0                # 16-byte Reload
	ucomisd	%xmm1, %xmm0
	ja	.LBB10_67
.LBB10_72:                              # %while.end
	movq	%r14, %rdi
	movaps	%xmm1, 96(%rsp)                 # 16-byte Spill
	callq	x264_rc_analyse_slice@PLT
	movaps	96(%rsp), %xmm4                 # 16-byte Reload
	movl	%eax, 168(%r15)
	jmp	.LBB10_74
.LBB10_73:                              # %if.end265.if.end324_crit_edge
	xorps	%xmm0, %xmm0
	cvtsi2sdl	24(%rsp), %xmm0         # 4-byte Folded Reload
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.LBB10_74:                              # %if.end324
	movapd	128(%rsp), %xmm2                # 16-byte Reload
	minsd	%xmm4, %xmm2
	movapd	160(%rsp), %xmm1                # 16-byte Reload
	cmpltsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm0
	andnpd	%xmm2, %xmm0
	andpd	%xmm1, %xmm4
	orpd	%xmm0, %xmm4
	jmp	.LBB10_120
.LBB10_75:
	movq	%rax, %r12
.LBB10_76:
	xorl	%ebx, %ebx
.LBB10_77:                              # %get_zone.exit.i
	movsd	232(%r15), %xmm1                # xmm1 = mem[0],zero
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI10_3(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	subsd	40(%r14), %xmm1
	callq	pow@PLT
	movq	%xmm0, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rcx
	movabsq	$9218868437227405311, %rax      # imm = 0x7FEFFFFFFFFFFFFF
	cmpq	%rax, %rcx
	setg	%al
	testl	%r13d, %r13d
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB10_81
# %bb.78:                               # %if.then.i
	movsd	328(%r14,%rbp,8), %xmm0         # xmm0 = mem[0],zero
	testq	%rbx, %rbx
	movq	%r12, %r14
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	je	.LBB10_82
.LBB10_79:                              # %if.then3.i
	cmpl	$0, 8(%rbx)
	movq	%rbp, %r12
	je	.LBB10_91
# %bb.80:                               # %if.then5.i
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rbx), %xmm0
	addsd	.LCPI10_10(%rip), %xmm0
	divsd	.LCPI10_11(%rip), %xmm0
	callq	exp2@PLT
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	mulsd	.LCPI10_12(%rip), %xmm0
	movl	20(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB10_106
.LBB10_81:                              # %if.else.i
	movsd	%xmm0, 176(%r14)
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movsd	%xmm0, 320(%r14)
	testq	%rbx, %rbx
	movq	%r12, %r14
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	jne	.LBB10_79
.LBB10_82:
	movq	%rbp, %r12
	movl	20(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB10_106
.LBB10_83:
	movq	%rax, %rbp
.LBB10_84:
	xorl	%ebx, %ebx
.LBB10_85:                              # %get_zone.exit.i878
	divsd	184(%r15), %xmm1
	movsd	%xmm1, 8(%rsp)                  # 8-byte Spill
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI10_3(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	subsd	40(%r14), %xmm1
	callq	pow@PLT
	movq	%xmm0, %rax
	movabsq	$9223372036854775807, %rcx      # imm = 0x7FFFFFFFFFFFFFFF
	andq	%rax, %rcx
	movabsq	$9218868437227405311, %rax      # imm = 0x7FEFFFFFFFFFFFFF
	cmpq	%rax, %rcx
	setg	%al
	testl	%r13d, %r13d
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB10_89
# %bb.86:                               # %if.then.i912
	movsd	328(%r14,%r12,8), %xmm0         # xmm0 = mem[0],zero
	testq	%rbx, %rbx
	movq	%rbp, %r14
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	je	.LBB10_90
.LBB10_87:                              # %if.then3.i897
	cmpl	$0, 8(%rbx)
	movl	20(%rsp), %ebp                  # 4-byte Reload
	je	.LBB10_92
# %bb.88:                               # %if.then5.i900
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rbx), %xmm0
	addsd	.LCPI10_10(%rip), %xmm0
	divsd	.LCPI10_11(%rip), %xmm0
	callq	exp2@PLT
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	mulsd	.LCPI10_12(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm5
	cmpl	$0, 12(%r15)
	jne	.LBB10_107
	jmp	.LBB10_93
.LBB10_89:                              # %if.else.i890
	movsd	%xmm0, 176(%r14)
	divsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	movsd	%xmm0, 320(%r14)
	testq	%rbx, %rbx
	movq	%rbp, %r14
	movsd	.LCPI10_3(%rip), %xmm4          # xmm4 = [1.0E+0,0.0E+0]
	jne	.LBB10_87
.LBB10_90:
	movl	20(%rsp), %ebp                  # 4-byte Reload
	cvtsd2ss	%xmm0, %xmm5
	cmpl	$0, 12(%r15)
	jne	.LBB10_107
	jmp	.LBB10_93
.LBB10_91:                              # %if.else8.i
	movss	16(%rbx), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movl	20(%rsp), %ebp                  # 4-byte Reload
	jmp	.LBB10_106
.LBB10_92:                              # %if.else8.i908
	movss	16(%rbx), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	cmpl	$0, 12(%r15)
	jne	.LBB10_107
.LBB10_93:                              # %land.lhs.true360
	cmpl	$0, 168(%r15)
	je	.LBB10_107
# %bb.94:                               # %if.then363
	movl	1844(%r14), %eax
	subl	1852(%r14), %eax
	incl	%eax
	cmpl	$0, 648(%r14)
	setne	%cl
	testl	%eax, %eax
	setg	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB10_96
# %bb.95:                               # %if.then376
	movq	14680(%r14), %rax
	movq	24(%rax), %rax
	subq	15032(%r14), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	660(%r14), %eax
	movl	664(%r14), %ecx
	cvtsi2sd	%rax, %xmm3
	mulsd	%xmm0, %xmm3
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	divsd	%xmm0, %xmm3
	jmp	.LBB10_97
.LBB10_96:
	cvtsi2sd	%eax, %xmm3
	divsd	16(%r15), %xmm3
.LBB10_97:                              # %if.end386
	movsd	24(%r15), %xmm6                 # xmm6 = mem[0],zero
	mulsd	%xmm3, %xmm6
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm6
	jbe	.LBB10_107
# %bb.98:                               # %if.then391
	ucomisd	%xmm0, %xmm3
	jb	.LBB10_100
# %bb.99:
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm3, %xmm1
	jmp	.LBB10_101
.LBB10_100:                             # %call.sqrt16
	movapd	%xmm3, %xmm0
	movss	%xmm5, 8(%rsp)                  # 4-byte Spill
	movsd	%xmm3, 48(%rsp)                 # 8-byte Spill
	movsd	%xmm6, 24(%rsp)                 # 8-byte Spill
	callq	sqrt@PLT
	movsd	24(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	48(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movss	8(%rsp), %xmm5                  # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movapd	%xmm0, %xmm1
.LBB10_101:                             # %if.then391.split
	movsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	.LCPI10_3(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	ucomisd	%xmm1, %xmm0
	ja	.LBB10_105
# %bb.102:                              # %cond.false396
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm3
	jb	.LBB10_104
# %bb.103:
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm3, %xmm0
	jmp	.LBB10_105
.LBB10_104:                             # %call.sqrt17
	movapd	%xmm3, %xmm0
	movss	%xmm5, 8(%rsp)                  # 4-byte Spill
	movsd	%xmm6, 24(%rsp)                 # 8-byte Spill
	callq	sqrt@PLT
	movsd	24(%rsp), %xmm6                 # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movss	8(%rsp), %xmm5                  # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	movsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB10_105:                             # %cond.end398
	mulsd	%xmm0, %xmm2
	xorps	%xmm4, %xmm4
	cvtsi2sdq	56(%rsp), %xmm4         # 8-byte Folded Reload
	subsd	%xmm6, %xmm4
	divsd	%xmm2, %xmm4
	addsd	.LCPI10_3(%rip), %xmm4
	movsd	.LCPI10_1(%rip), %xmm0          # xmm0 = [2.0E+0,0.0E+0]
	minsd	%xmm4, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	cmpltsd	%xmm1, %xmm4
	movapd	%xmm4, %xmm2
	andnpd	%xmm0, %xmm2
	andpd	%xmm1, %xmm4
	orpd	%xmm2, %xmm4
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	mulsd	%xmm4, %xmm0
.LBB10_106:                             # %if.end411
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
.LBB10_107:                             # %if.end411
	cmpl	$2, %r12d
	jne	.LBB10_110
# %bb.108:                              # %land.lhs.true414
	cmpl	$2, 84(%r14)
	jl	.LBB10_110
# %bb.109:                              # %land.lhs.true418
	cmpl	$2, 368(%r15)
	jne	.LBB10_131
.LBB10_110:                             # %if.else431
	movl	1844(%r14), %eax
	testl	%eax, %eax
	jle	.LBB10_113
# %bb.111:                              # %if.then435
	movsd	328(%r15,%r12,8), %xmm0         # xmm0 = mem[0],zero
	movsd	480(%r15), %xmm2                # xmm2 = mem[0],zero
	ucomisd	.LCPI10_5(%rip), %xmm4
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	setbe	%cl
	mulsd	%xmm2, %xmm0
	cmpl	$4, %eax
	setb	%al
	orb	%cl, %al
	jne	.LBB10_116
# %bb.112:                              # %if.then452
	mulsd	%xmm2, %xmm0
	jmp	.LBB10_118
.LBB10_113:                             # %if.else466
	cmpl	$1, 488(%r14)
	jne	.LBB10_119
# %bb.114:                              # %land.lhs.true472
	movsd	40(%r15), %xmm0                 # xmm0 = mem[0],zero
	ucomisd	.LCPI10_3(%rip), %xmm0
	jne	.LBB10_115
	jnp	.LBB10_119
.LBB10_115:                             # %cond.end485
	movss	512(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI10_10(%rip), %xmm0
	divsd	.LCPI10_11(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI10_12(%rip), %xmm0
	movss	536(%r14), %xmm1                # xmm1 = mem[0],zero,zero,zero
	andps	.LCPI10_13(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	jmp	.LBB10_119
.LBB10_116:                             # %if.else455
	movsd	.LCPI10_14(%rip), %xmm3         # xmm3 = [9.0000000000000002E-1,0.0E+0]
	ucomisd	%xmm4, %xmm3
	jbe	.LBB10_118
# %bb.117:                              # %if.then458
	divsd	%xmm2, %xmm1
.LBB10_118:                             # %if.end462
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm5, %xmm2
	minsd	%xmm2, %xmm0
	cmpltsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	andnpd	%xmm0, %xmm3
	andpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm2, %xmm5
.LBB10_119:                             # %if.end497
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm5, %xmm0
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	divsd	.LCPI10_12(%rip), %xmm0
	callq	log2@PLT
	mulsd	.LCPI10_11(%rip), %xmm0
	addsd	.LCPI10_15(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 96(%r15)
	movq	%r14, %rdi
	movl	%r12d, %esi
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	clip_qscale
	movapd	%xmm0, %xmm4
	movsd	.LCPI10_3(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
.LBB10_120:                             # %if.end505
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movsd	%xmm0, 320(%r15)
	movsd	%xmm0, 328(%r15,%r12,8)
	movl	4(%r15), %eax
	testl	%eax, %eax
	je	.LBB10_122
# %bb.121:                              # %land.lhs.true512
	cmpl	$0, 8(%r15)
	je	.LBB10_127
.LBB10_122:                             # %land.lhs.true515
	movq	14680(%r14), %rcx
	cmpl	$0, 56(%rcx)
	je	.LBB10_124
# %bb.123:                              # %if.end529
	testl	%eax, %eax
	jne	.LBB10_125
	jmp	.LBB10_127
.LBB10_124:                             # %if.then520
	movss	536(%r14), %xmm1                # xmm1 = mem[0],zero,zero,zero
	andps	.LCPI10_13(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 328(%r15)
	testl	%eax, %eax
	je	.LBB10_127
.LBB10_125:                             # %land.lhs.true532
	cmpl	$0, 8(%r15)
	je	.LBB10_127
# %bb.126:                              # %if.then535
	movsd	.LCPI10_4(%rip), %xmm1          # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	.LCPI10_5(%rip), %xmm1          # xmm1 = [1.1000000000000001E+0,0.0E+0]
	movss	%xmm2, 8(%rsp)                  # 4-byte Spill
	callq	pow@PLT
	movsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	movsd	.LCPI10_3(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	xorps	%xmm2, %xmm2
	cvtsi2sd	%r13d, %xmm2
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	addsd	.LCPI10_4(%rip), %xmm2
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm0, %xmm2
	divsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
	movsd	.LCPI10_0(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	movss	8(%rsp), %xmm2                  # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movsd	56(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebp, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 520(%r15)
	cmpl	$0, 152(%r15)
	jne	.LBB10_128
	jmp	.LBB10_129
.LBB10_127:                             # %if.else539
	movq	144(%r15), %rax
	movslq	7248(%r14), %rcx
	shlq	$5, %rcx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	168(%r15), %xmm1
	mulsd	(%rax,%rcx), %xmm1
	addsd	24(%rax,%rcx), %xmm1
	mulsd	8(%rax,%rcx), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 520(%r15)
	cmpl	$0, 152(%r15)
	je	.LBB10_129
.LBB10_128:                             # %if.then551
	movsd	128(%r15), %xmm1                # xmm1 = mem[0],zero
	movsd	%xmm1, 520(%r15)
.LBB10_129:                             # %if.end554
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movq	26704(%r14), %rax
	movss	%xmm0, 508(%rax)
.LBB10_130:                             # %cleanup560
	movaps	%xmm2, %xmm0
	addq	$184, %rsp
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
.LBB10_131:                             # %if.then421
	.cfi_def_cfa_offset 240
	movsd	376(%r15), %xmm0                # xmm0 = mem[0],zero
	divsd	384(%r15), %xmm0
	addsd	.LCPI10_10(%rip), %xmm0
	divsd	.LCPI10_11(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI10_12(%rip), %xmm0
	xorps	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	movss	536(%r14), %xmm0                # xmm0 = mem[0],zero,zero,zero
	andps	.LCPI10_13(%rip), %xmm0
	divss	%xmm0, %xmm5
	jmp	.LBB10_119
.Lfunc_end10:
	.size	rate_estimate_qscale, .Lfunc_end10-rate_estimate_qscale
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_mb
.LCPI11_0:
	.quad	0xc028000000000000              # double -12
.LCPI11_1:
	.quad	0x4018000000000000              # double 6
.LCPI11_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI11_3:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI11_5:
	.quad	0x3ff0000000000000              # double 1
.LCPI11_6:
	.quad	0x3fa999999999999a              # double 0.050000000000000003
.LCPI11_8:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI11_9:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI11_10:
	.quad	0x3ff199999999999a              # double 1.1000000000000001
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI11_4:
	.zero	8
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI11_7:
	.long	0x3f000000                      # float 0.5
.LCPI11_11:
	.long	0xbf000000                      # float -0.5
	.text
	.globl	x264_ratecontrol_mb
	.p2align	4, 0x90
	.type	x264_ratecontrol_mb,@function
x264_ratecontrol_mb:                    # @x264_ratecontrol_mb
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	26704(%rdi), %r15
	movslq	16388(%rdi), %r14
	movq	14688(%rdi), %rax
	movq	12136(%rax), %rax
	addl	%esi, (%rax,%r14,4)
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	88(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	%xmm1, 88(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2ssl	25792(%rdi), %xmm1
	addss	92(%r15), %xmm1
	movss	%xmm1, 92(%r15)
	movq	3200(%rdi), %rax
	movl	1084(%rax), %eax
	decl	%eax
	cmpl	%eax, 16384(%rdi)
	jne	.LBB11_67
# %bb.1:                                # %lor.lhs.false
	cmpl	$0, 8(%r15)
	je	.LBB11_67
# %bb.2:                                # %if.end
	movq	%rdi, %rbx
	movq	14688(%rdi), %rax
	movq	12144(%rax), %rax
	movss	%xmm0, (%rax,%r14,4)
	movq	544(%r15), %r12
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI11_0(%rip), %xmm0
	divsd	.LCPI11_1(%rip), %xmm0
	callq	exp2@PLT
	movq	14688(%rbx), %rax
	movq	12128(%rax), %rcx
	movl	(%rcx,%r14,4), %ecx
	cmpl	$10, %ecx
	jl	.LBB11_6
# %bb.3:                                # %if.end.i
	cvtsi2sd	%ecx, %xmm5
	movq	12136(%rax), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax,%r14,4), %xmm1
	mulsd	.LCPI11_2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm5, %xmm4
	movsd	16(%r12), %xmm2                 # xmm2 = mem[0],zero
	movsd	24(%r12), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movupd	(%r12), %xmm3
	movapd	%xmm3, %xmm6
	unpckhpd	%xmm3, %xmm6                    # xmm6 = xmm6[1],xmm3[1]
	movapd	%xmm3, %xmm7
	divsd	%xmm6, %xmm7
	movsd	.LCPI11_3(%rip), %xmm6          # xmm6 = [1.5E+0,0.0E+0]
	movapd	%xmm7, %xmm8
	divsd	%xmm6, %xmm8
	mulsd	%xmm6, %xmm7
	minsd	%xmm4, %xmm7
	movapd	%xmm4, %xmm9
	cmpltsd	%xmm8, %xmm9
	movapd	%xmm9, %xmm6
	andnpd	%xmm7, %xmm6
	andpd	%xmm8, %xmm9
	orpd	%xmm6, %xmm9
	movapd	%xmm9, %xmm6
	mulsd	%xmm5, %xmm6
	subsd	%xmm6, %xmm0
	xorpd	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm0
	xorpd	%xmm5, %xmm5
	cmpnlesd	%xmm0, %xmm5
	movapd	%xmm5, %xmm7
	andnpd	%xmm9, %xmm7
	andpd	%xmm4, %xmm5
	orpd	%xmm7, %xmm5
	jb	.LBB11_5
# %bb.4:                                # %if.end.i
	movapd	%xmm0, %xmm6
.LBB11_5:                               # %if.end.i
	addsd	%xmm6, %xmm1
	unpcklpd	%xmm2, %xmm2                    # xmm2 = xmm2[0,0]
	shufpd	$2, .LCPI11_4(%rip), %xmm5      # xmm5 = xmm5[0],mem[1]
	mulpd	%xmm2, %xmm3
	addpd	%xmm3, %xmm5
	movupd	%xmm5, (%r12)
	movsd	%xmm1, 24(%r12)
.LBB11_6:                               # %update_predictor.exit
	cmpl	$0, 7248(%rbx)
	jne	.LBB11_12
# %bb.7:                                # %land.lhs.true
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movq	14704(%rbx), %rax
	movq	12144(%rax), %rax
	movss	(%rax,%r14,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_12
# %bb.8:                                # %if.then32
	movq	544(%r15), %r12
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI11_0(%rip), %xmm0
	divsd	.LCPI11_1(%rip), %xmm0
	callq	exp2@PLT
	movq	14688(%rbx), %rax
	movq	9536(%rax), %rcx
	movl	(%rcx,%r14,4), %ecx
	cmpl	$10, %ecx
	jl	.LBB11_12
# %bb.9:                                # %if.end.i581
	xorps	%xmm5, %xmm5
	cvtsi2sd	%ecx, %xmm5
	movq	12136(%rax), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax,%r14,4), %xmm1
	mulsd	.LCPI11_2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm4
	divsd	%xmm5, %xmm4
	movsd	80(%r12), %xmm2                 # xmm2 = mem[0],zero
	movsd	88(%r12), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movupd	64(%r12), %xmm3
	movapd	%xmm3, %xmm6
	unpckhpd	%xmm3, %xmm6                    # xmm6 = xmm6[1],xmm3[1]
	movapd	%xmm3, %xmm7
	divsd	%xmm6, %xmm7
	movsd	.LCPI11_3(%rip), %xmm6          # xmm6 = [1.5E+0,0.0E+0]
	movapd	%xmm7, %xmm8
	divsd	%xmm6, %xmm8
	mulsd	%xmm6, %xmm7
	minsd	%xmm4, %xmm7
	movapd	%xmm4, %xmm9
	cmpltsd	%xmm8, %xmm9
	movapd	%xmm9, %xmm6
	andnpd	%xmm7, %xmm6
	andpd	%xmm8, %xmm9
	orpd	%xmm6, %xmm9
	movapd	%xmm9, %xmm6
	mulsd	%xmm5, %xmm6
	subsd	%xmm6, %xmm0
	xorpd	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm0
	xorpd	%xmm5, %xmm5
	cmpnlesd	%xmm0, %xmm5
	movapd	%xmm5, %xmm7
	andnpd	%xmm9, %xmm7
	andpd	%xmm4, %xmm5
	orpd	%xmm7, %xmm5
	jb	.LBB11_11
# %bb.10:                               # %if.end.i581
	movapd	%xmm0, %xmm6
.LBB11_11:                              # %if.end.i581
	addsd	%xmm6, %xmm1
	unpcklpd	%xmm2, %xmm2                    # xmm2 = xmm2[0,0]
	shufpd	$2, .LCPI11_4(%rip), %xmm5      # xmm5 = xmm5[0],mem[1]
	mulpd	%xmm2, %xmm3
	addpd	%xmm3, %xmm5
	movupd	%xmm5, 64(%r12)
	movsd	%xmm1, 88(%r12)
.LBB11_12:                              # %if.end50
	movl	1752(%rbx), %eax
	decl	%eax
	cmpl	%eax, %r14d
	jge	.LBB11_67
# %bb.13:                               # %if.then54
	movq	14688(%rbx), %rax
	movq	12144(%rax), %rax
	movss	(%rax,%r14,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	cvtsi2ssl	504(%rbx), %xmm2
	movss	%xmm0, 28(%rsp)                 # 4-byte Spill
	movaps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	496(%rbx), %xmm0
	movss	%xmm2, 4(%rsp)                  # 4-byte Spill
	subss	%xmm2, %xmm1
	movaps	%xmm1, %xmm5
	xorps	%xmm3, %xmm3
	cvtsi2ssl	500(%rbx), %xmm3
	movsd	160(%r15), %xmm1                # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB11_14
	jnp	.LBB11_16
.LBB11_14:                              # %if.then80
	xorps	%xmm2, %xmm2
	cvtss2sd	%xmm3, %xmm2
	movaps	%xmm3, %xmm4
	movss	96(%r15), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	addsd	%xmm3, %xmm1
	movaps	%xmm4, %xmm3
	ucomisd	%xmm2, %xmm1
	ja	.LBB11_16
# %bb.15:                               # %if.then80
	xorps	%xmm3, %xmm3
	cvtsd2ss	%xmm1, %xmm3
.LBB11_16:                              # %if.end97
	maxss	%xmm0, %xmm5
	cmpl	$1, 7248(%rbx)
	jne	.LBB11_17
# %bb.18:                               # %if.then118
	movq	14704(%rbx), %rax
	movq	14864(%rbx), %rcx
	movq	12144(%rax), %rax
	movss	4(%rax,%r14,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	12144(%rcx), %rax
	maxss	4(%rax,%r14,4), %xmm0
	maxss	%xmm0, %xmm5
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm5, 12(%rsp)                 # 4-byte Spill
	maxss	%xmm5, %xmm0
	movss	%xmm0, 84(%r15)
	jmp	.LBB11_19
.LBB11_17:
	movss	%xmm5, 12(%rsp)                 # 4-byte Spill
.LBB11_19:                              # %if.end193
	movsd	120(%r15), %xmm1                # xmm1 = mem[0],zero
	movsd	520(%r15), %xmm0                # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	xorps	%xmm4, %xmm4
	cvtsd2ss	%xmm1, %xmm4
	cmpl	$0, 8(%rbx)
	movss	%xmm3, 8(%rsp)                  # 4-byte Spill
	je	.LBB11_33
# %bb.20:                               # %cond.end202
	movsd	528(%r15), %xmm0                # xmm0 = mem[0],zero
	movslq	4(%rbx), %rax
	testq	%rax, %rax
	jle	.LBB11_34
# %bb.21:                               # %for.body.lr.ph
	cmpl	$1, %eax
	jne	.LBB11_27
# %bb.22:
	xorps	%xmm1, %xmm1
	xorl	%ecx, %ecx
.LBB11_23:                              # %for.cond.cleanup.loopexit.unr-lcssa
	testb	$1, %al
	je	.LBB11_26
# %bb.24:                               # %for.body.epil
	movq	704(%rbx,%rcx,8), %rcx
	cmpq	%rbx, %rcx
	je	.LBB11_26
# %bb.25:                               # %if.then216.epil
	movq	26704(%rcx), %rcx
	addss	508(%rcx), %xmm1
.LBB11_26:                              # %for.cond.cleanup.loopexit
	cvtss2sd	%xmm1, %xmm1
	jmp	.LBB11_35
.LBB11_33:                              # %if.else
	movq	3200(%rbx), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	1084(%rax), %xmm1
	movsd	.LCPI11_5(%rip), %xmm2          # xmm2 = [1.0E+0,0.0E+0]
	divsd	%xmm1, %xmm2
	movsd	.LCPI11_6(%rip), %xmm1          # xmm1 = [5.0000000000000003E-2,0.0E+0]
	maxsd	%xmm2, %xmm1
	movsd	%xmm1, 536(%r15)
	movl	4(%rbx), %eax
.LBB11_34:                              # %if.end236
	xorpd	%xmm1, %xmm1
.LBB11_35:                              # %if.end236
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 40(%rsp)                 # 4-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	%xmm4, 32(%rsp)                 # 4-byte Spill
	movaps	%xmm4, %xmm1
	divss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	32(%r15), %xmm0
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	predict_row_size_sum
	movslq	1748(%rbx), %rax
	xorps	%xmm1, %xmm1
	cmpl	%eax, %r14d
	jl	.LBB11_41
# %bb.36:                               # %for.body.lr.ph.i
	movq	14688(%rbx), %rcx
	movq	12136(%rcx), %rcx
	movl	%r14d, %esi
	subl	%eax, %esi
	incl	%esi
	movl	%r14d, %edx
	subl	%eax, %edx
	andl	$3, %esi
	je	.LBB11_38
	.p2align	4, 0x90
.LBB11_37:                              # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	(%rcx,%rax,4), %xmm2
	addsd	%xmm2, %xmm1
	incq	%rax
	decl	%esi
	jne	.LBB11_37
.LBB11_38:                              # %for.body.i.prol.loopexit
	cmpl	$3, %edx
	jb	.LBB11_41
# %bb.39:                               # %for.body.lr.ph.i.new
	movl	%r14d, %edx
	subl	%eax, %edx
	incl	%edx
	leaq	(%rcx,%rax,4), %rax
	addq	$12, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB11_40:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-12(%rax,%rcx,4), %xmm2
	addsd	%xmm1, %xmm2
	xorps	%xmm3, %xmm3
	cvtsi2sdl	-8(%rax,%rcx,4), %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-4(%rax,%rcx,4), %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax,%rcx,4), %xmm1
	addsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	addq	$4, %rcx
	cmpl	%ecx, %edx
	jne	.LBB11_40
.LBB11_41:                              # %row_bits_so_far.exit
	movss	40(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	.LCPI11_6(%rip), %xmm2
	ucomisd	%xmm1, %xmm2
	ja	.LBB11_67
# %bb.42:                               # %if.end255
	movss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	addss	28(%rsp), %xmm1                 # 4-byte Folded Reload
	movss	%xmm1, 4(%rsp)                  # 4-byte Spill
	movsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvtsd2ss	%xmm1, %xmm1
	cmpl	$2, 7248(%rbx)
	je	.LBB11_44
# %bb.43:                               # %if.end255
	mulss	.LCPI11_7(%rip), %xmm1
.LBB11_44:                              # %if.end255
	movss	8(%rsp), %xmm2                  # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	32(%rsp), %xmm4                 # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	movss	4(%rsp), %xmm3                  # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	minss	%xmm2, %xmm3
	movss	%xmm3, 4(%rsp)                  # 4-byte Spill
	cmpl	$0, 12(%r15)
	jne	.LBB11_46
# %bb.45:                               # %if.then264
	movss	12(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	maxss	96(%r15), %xmm2
	movss	%xmm2, 12(%rsp)                 # 4-byte Spill
.LBB11_46:                              # %if.end273
	addsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	4(%rsp), %xmm2                  # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB11_53
# %bb.47:                               # %land.rhs.lr.ph
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 40(%rsp)                 # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm4, %xmm1
	mulsd	.LCPI11_8(%rip), %xmm1
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	jmp	.LBB11_48
	.p2align	4, 0x90
.LBB11_52:                              # %while.body
                                        #   in Loop: Header=BB11_48 Depth=1
	addss	.LCPI11_7(%rip), %xmm0
	movss	%xmm0, 84(%r15)
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	predict_row_size_sum
	addsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_53
.LBB11_48:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	520(%r15), %xmm2                # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm3
	addsd	40(%rsp), %xmm3                 # 8-byte Folded Reload
	ucomisd	%xmm3, %xmm1
	ja	.LBB11_52
# %bb.49:                               # %lor.lhs.false283
                                        #   in Loop: Header=BB11_48 Depth=1
	movsd	120(%r15), %xmm3                # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	movsd	32(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	ucomisd	%xmm3, %xmm4
	ja	.LBB11_52
# %bb.50:                               # %lor.rhs
                                        #   in Loop: Header=BB11_48 Depth=1
	ucomisd	%xmm2, %xmm1
	jbe	.LBB11_53
# %bb.51:                               # %land.rhs295
                                        #   in Loop: Header=BB11_48 Depth=1
	movss	96(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	ja	.LBB11_52
.LBB11_53:                              # %while.end
	ucomiss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	jbe	.LBB11_54
# %bb.55:                               # %land.lhs.true313.lr.ph
	movss	8(%rsp), %xmm3                  # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	jmp	.LBB11_56
	.p2align	4, 0x90
.LBB11_60:                              # %lor.rhs332
                                        #   in Loop: Header=BB11_56 Depth=1
	movsd	120(%r15), %xmm2                # xmm2 = mem[0],zero
	subsd	104(%r15), %xmm2
	addsd	128(%r15), %xmm2
	mulsd	.LCPI11_10(%rip), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB11_62
.LBB11_61:                              # %while.body342
                                        #   in Loop: Header=BB11_56 Depth=1
	addss	.LCPI11_11(%rip), %xmm0
	movss	%xmm0, 84(%r15)
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	predict_row_size_sum
	movss	8(%rsp), %xmm3                  # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	addsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	ucomiss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	jbe	.LBB11_62
.LBB11_56:                              # %land.lhs.true313
                                        # =>This Inner Loop Header: Depth=1
	movq	14688(%rbx), %rcx
	movq	12144(%rcx), %rcx
	ucomiss	(%rcx), %xmm0
	ja	.LBB11_58
# %bb.57:                               # %lor.lhs.false320
                                        #   in Loop: Header=BB11_56 Depth=1
	cmpl	$0, 152(%r15)
	je	.LBB11_62
.LBB11_58:                              # %land.rhs322
                                        #   in Loop: Header=BB11_56 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	520(%r15), %xmm2                # xmm2 = mem[0],zero
	mulsd	.LCPI11_9(%rip), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB11_60
# %bb.59:                               # %land.rhs322
                                        #   in Loop: Header=BB11_56 Depth=1
	movss	28(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jae	.LBB11_61
	jmp	.LBB11_60
.LBB11_54:
	movss	8(%rsp), %xmm3                  # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
.LBB11_62:                              # %while.end351
	ucomiss	%xmm0, %xmm3
	ja	.LBB11_63
	jmp	.LBB11_66
	.p2align	4, 0x90
.LBB11_65:                              # %while.body375
                                        #   in Loop: Header=BB11_63 Depth=1
	addss	.LCPI11_7(%rip), %xmm0
	movss	%xmm0, 84(%r15)
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	predict_row_size_sum
	addsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	cvttsd2si	%xmm0, %eax
	movss	84(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	8(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB11_66
.LBB11_63:                              # %land.rhs356
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	120(%r15), %xmm3                # xmm3 = mem[0],zero
	movsd	536(%r15), %xmm2                # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm3
	movsd	128(%r15), %xmm4                # xmm4 = mem[0],zero
	mulsd	%xmm2, %xmm4
	ucomisd	%xmm3, %xmm4
	ja	.LBB11_65
# %bb.64:                               # %lor.rhs365
                                        #   in Loop: Header=BB11_63 Depth=1
	movsd	512(%r15), %xmm3                # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm3
	ucomisd	%xmm3, %xmm2
	ja	.LBB11_65
.LBB11_66:                              # %while.end384
	cvtss2sd	%xmm0, %xmm0
	movq	%rbx, %rdi
	movl	%r14d, %esi
	callq	predict_row_size_sum
	cvtsd2ss	%xmm0, %xmm0
	movq	26704(%rbx), %rax
	movss	%xmm0, 508(%rax)
.LBB11_67:                              # %cleanup401
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB11_27:                              # %for.body.lr.ph.new
	.cfi_def_cfa_offset 96
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	xorps	%xmm1, %xmm1
	xorl	%ecx, %ecx
	jmp	.LBB11_28
	.p2align	4, 0x90
.LBB11_32:                              # %for.inc.1
                                        #   in Loop: Header=BB11_28 Depth=1
	addq	$2, %rcx
	cmpq	%rcx, %rdx
	je	.LBB11_23
.LBB11_28:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rcx,8), %rsi
	cmpq	%rbx, %rsi
	je	.LBB11_30
# %bb.29:                               # %if.then216
                                        #   in Loop: Header=BB11_28 Depth=1
	movq	26704(%rsi), %rsi
	addss	508(%rsi), %xmm1
.LBB11_30:                              # %for.inc
                                        #   in Loop: Header=BB11_28 Depth=1
	movq	712(%rbx,%rcx,8), %rsi
	cmpq	%rbx, %rsi
	je	.LBB11_32
# %bb.31:                               # %if.then216.1
                                        #   in Loop: Header=BB11_28 Depth=1
	movq	26704(%rsi), %rsi
	addss	508(%rsi), %xmm1
	jmp	.LBB11_32
.Lfunc_end11:
	.size	x264_ratecontrol_mb, .Lfunc_end11-x264_ratecontrol_mb
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function predict_row_size_sum
.LCPI12_0:
	.quad	0xc028000000000000              # double -12
.LCPI12_1:
	.quad	0x4018000000000000              # double 6
.LCPI12_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI12_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI12_4:
	.quad	0x0000000000000000              # double 0
	.text
	.p2align	4, 0x90
	.type	predict_row_size_sum,@function
predict_row_size_sum:                   # @predict_row_size_sum
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	movslq	1748(%rdi), %rcx
	cmpl	%ecx, %esi
	jge	.LBB12_2
# %bb.1:                                # %entry.row_bits_so_far.exit_crit_edge
	incl	%esi
	xorpd	%xmm0, %xmm0
	movl	%esi, %eax
	jmp	.LBB12_7
.LBB12_2:                               # %for.body.lr.ph.i
	movq	14688(%rbx), %rax
	movq	12136(%rax), %rdx
	leal	1(%rsi), %eax
	movl	%eax, %r8d
	subl	%ecx, %r8d
	movl	%esi, %edi
	subl	%ecx, %edi
	xorpd	%xmm0, %xmm0
	andl	$3, %r8d
	je	.LBB12_4
	.p2align	4, 0x90
.LBB12_3:                               # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rdx,%rcx,4), %xmm1
	addsd	%xmm1, %xmm0
	incq	%rcx
	decl	%r8d
	jne	.LBB12_3
.LBB12_4:                               # %for.body.i.prol.loopexit
	cmpl	$3, %edi
	jb	.LBB12_7
# %bb.5:                                # %for.body.lr.ph.i.new
	subl	%ecx, %esi
	incl	%esi
	leaq	(%rdx,%rcx,4), %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB12_6:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-12(%rcx,%rdx,4), %xmm2
	addsd	%xmm0, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-8(%rcx,%rdx,4), %xmm1
	addsd	%xmm2, %xmm1
	xorps	%xmm2, %xmm2
	cvtsi2sdl	-4(%rcx,%rdx,4), %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rcx,%rdx,4), %xmm0
	addsd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	addq	$4, %rdx
	cmpl	%edx, %esi
	jne	.LBB12_6
.LBB12_7:                               # %row_bits_so_far.exit
	cmpl	1752(%rbx), %eax
	jge	.LBB12_19
# %bb.8:                                # %for.body.lr.ph
	movsd	.LCPI12_0(%rip), %xmm1          # xmm1 = [-1.2E+1,0.0E+0]
	addsd	8(%rsp), %xmm1                  # 8-byte Folded Reload
	divsd	.LCPI12_1(%rip), %xmm1
	movsd	%xmm1, (%rsp)                   # 8-byte Spill
	movslq	%eax, %r14
	jmp	.LBB12_9
	.p2align	4, 0x90
.LBB12_11:                              # %if.then.i
                                        #   in Loop: Header=BB12_9 Depth=1
	testl	%esi, %esi
	je	.LBB12_12
.LBB12_16:                              # %if.end.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movapd	%xmm4, %xmm2
	cmpeqsd	.LCPI12_4(%rip), %xmm2
	movapd	%xmm2, %xmm1
	andpd	%xmm3, %xmm1
	andnpd	%xmm4, %xmm2
	orpd	%xmm1, %xmm2
	addsd	%xmm3, %xmm2
	mulsd	.LCPI12_3(%rip), %xmm2
.LBB12_18:                              # %predict_row_size.exit
                                        #   in Loop: Header=BB12_9 Depth=1
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	incq	%r14
	movslq	1752(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB12_19
.LBB12_9:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movq	26704(%rbx), %r15
	movq	544(%r15), %r12
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	exp2@PLT
	mulsd	.LCPI12_2(%rip), %xmm0
	movq	14688(%rbx), %rdx
	movq	12128(%rdx), %rax
	movl	(%rax,%r14,4), %eax
	xorps	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	mulsd	(%r12), %xmm3
	addsd	24(%r12), %xmm3
	mulsd	8(%r12), %xmm0
	divsd	%xmm0, %xmm3
	movl	7248(%rbx), %esi
	xorpd	%xmm4, %xmm4
	cmpl	$2, %esi
	je	.LBB12_16
# %bb.10:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	14704(%rbx), %rcx
	movq	12144(%rcx), %rdi
	movss	(%rdi,%r14,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB12_11
# %bb.17:                               # %if.else.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	544(%r15), %r15
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movapd	%xmm3, 32(%rsp)                 # 16-byte Spill
	callq	exp2@PLT
	mulsd	.LCPI12_2(%rip), %xmm0
	movq	14688(%rbx), %rax
	movq	9536(%rax), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax,%r14,4), %xmm1
	mulsd	64(%r15), %xmm1
	addsd	88(%r15), %xmm1
	mulsd	72(%r15), %xmm0
	divsd	%xmm0, %xmm1
	movapd	32(%rsp), %xmm2                 # 16-byte Reload
	addsd	%xmm1, %xmm2
	jmp	.LBB12_18
.LBB12_12:                              # %land.lhs.true.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	4(%rcx), %esi
	cmpl	4(%rdx), %esi
	jne	.LBB12_16
# %bb.13:                               # %land.lhs.true22.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	12128(%rcx), %rdx
	movl	(%rdx,%r14,4), %esi
	testl	%esi, %esi
	jle	.LBB12_16
# %bb.14:                               # %land.lhs.true30.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movl	%esi, %edx
	subl	%eax, %edx
	movl	%edx, %edi
	negl	%edi
	cmovsl	%edx, %edi
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	cmpl	%edx, %edi
	jge	.LBB12_16
# %bb.15:                               # %if.then46.i
                                        #   in Loop: Header=BB12_9 Depth=1
	movq	12136(%rcx), %rcx
	imull	(%rcx,%r14,4), %eax
	cltd
	idivl	%esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	addsd	.LCPI12_0(%rip), %xmm0
	divsd	.LCPI12_1(%rip), %xmm0
	movapd	%xmm3, 32(%rsp)                 # 16-byte Spill
	callq	exp2@PLT
	movapd	%xmm0, %xmm1
	movsd	.LCPI12_2(%rip), %xmm0          # xmm0 = [8.4999999999999998E-1,0.0E+0]
	mulsd	%xmm0, %xmm1
	mulsd	16(%rsp), %xmm1                 # 8-byte Folded Reload
	movapd	%xmm1, 16(%rsp)                 # 16-byte Spill
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	exp2@PLT
	movapd	16(%rsp), %xmm4                 # 16-byte Reload
	movapd	32(%rsp), %xmm3                 # 16-byte Reload
	mulsd	.LCPI12_2(%rip), %xmm0
	divsd	%xmm0, %xmm4
	jmp	.LBB12_16
.LBB12_19:                              # %for.cond.cleanup
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	predict_row_size_sum, .Lfunc_end12-predict_row_size_sum
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_qp
.LCPI13_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	x264_ratecontrol_qp
	.p2align	4, 0x90
	.type	x264_ratecontrol_qp,@function
x264_ratecontrol_qp:                    # @x264_ratecontrol_qp
	.cfi_startproc
# %bb.0:                                # %entry
	movq	26704(%rdi), %rax
	movss	84(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI13_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	496(%rdi), %edx
	movl	500(%rdi), %eax
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	cmpl	%ecx, %edx
	cmovgl	%edx, %eax
	retq
.Lfunc_end13:
	.size	x264_ratecontrol_qp, .Lfunc_end13-x264_ratecontrol_qp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_mb_qp
.LCPI14_0:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	x264_ratecontrol_mb_qp
	.p2align	4, 0x90
	.type	x264_ratecontrol_mb_qp,@function
x264_ratecontrol_mb_qp:                 # @x264_ratecontrol_mb_qp
	.cfi_startproc
# %bb.0:                                # %entry
	movq	26704(%rdi), %rax
	movss	84(%rax), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cmpl	$0, 544(%rdi)
	je	.LBB14_2
# %bb.1:                                # %if.then
	movq	14680(%rdi), %rax
	movq	14688(%rdi), %rcx
	xorl	%edx, %edx
	cmpl	$0, 72(%rcx)
	sete	%dl
	movslq	16392(%rdi), %rcx
	movq	12152(%rax,%rdx,8), %rax
	addss	(%rax,%rcx,4), %xmm0
.LBB14_2:                               # %if.end
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI14_0(%rip), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	496(%rdi), %edx
	movl	500(%rdi), %eax
	cmpl	%eax, %ecx
	cmovll	%ecx, %eax
	cmpl	%ecx, %edx
	cmovgl	%edx, %eax
	retq
.Lfunc_end14:
	.size	x264_ratecontrol_mb_qp, .Lfunc_end14-x264_ratecontrol_mb_qp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_slice_type
.LCPI15_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI15_1:
	.quad	0xc028000000000000              # double -12
.LCPI15_2:
	.quad	0x4018000000000000              # double 6
.LCPI15_3:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI15_5:
	.quad	0x4028000000000000              # double 12
.LCPI15_6:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI15_4:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.text
	.globl	x264_ratecontrol_slice_type
	.p2align	4, 0x90
	.type	x264_ratecontrol_slice_type,@function
x264_ratecontrol_slice_type:            # @x264_ratecontrol_slice_type
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 576(%rdi)
	je	.LBB15_1
# %bb.3:                                # %if.then
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	26704(%rdi), %r14
	cmpl	%esi, 304(%r14)
	jle	.LBB15_4
# %bb.15:                               # %if.end100
	movq	312(%r14), %rax
	movslq	%esi, %rcx
	imulq	$168, %rcx, %rcx
	movl	4(%rax,%rcx), %eax
	jmp	.LBB15_16
.LBB15_1:
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %rbp
	.cfi_restore %r14
	.cfi_restore %r15
	xorl	%eax, %eax
	retq
.LBB15_4:                               # %if.then3
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %rbp, -16
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	27416(%rbx), %eax
	testl	%eax, %eax
	je	.LBB15_5
# %bb.6:                                # %cond.end
	cvtsi2sd	%eax, %xmm0
	movsd	27480(%rbx), %xmm1              # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	addsd	.LCPI15_0(%rip), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 492(%rbx)
	cmpl	$51, %eax
	movl	$51, %ecx
	cmovll	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	cmovgl	%ecx, %eax
	jmp	.LBB15_7
.LBB15_5:                               # %cond.end.thread
	movl	$24, 492(%rbx)
	movl	$24, %eax
.LBB15_7:
	movl	%eax, 52(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	492(%rbx), %xmm0
	addsd	.LCPI15_1(%rip), %xmm0
	divsd	.LCPI15_2(%rip), %xmm0
	callq	exp2@PLT
	movsd	.LCPI15_3(%rip), %xmm2          # xmm2 = [8.4999999999999998E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movss	536(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	andps	.LCPI15_4(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	callq	log2@PLT
	movsd	.LCPI15_2(%rip), %xmm1          # xmm1 = [6.0E+0,0.0E+0]
	mulsd	%xmm1, %xmm0
	addsd	.LCPI15_5(%rip), %xmm0
	addsd	.LCPI15_6(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$51, %eax
	movl	$51, %ebp
	cmovgel	%ebp, %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	cmovlel	%r15d, %eax
	movl	%eax, 60(%r14)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	492(%rbx), %xmm0
	addsd	.LCPI15_1(%rip), %xmm0
	divsd	%xmm1, %xmm0
	callq	exp2@PLT
	movsd	.LCPI15_3(%rip), %xmm2          # xmm2 = [8.4999999999999998E-1,0.0E+0]
	mulsd	%xmm2, %xmm0
	movss	540(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	andps	.LCPI15_4(%rip), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm0
	callq	log2@PLT
	mulsd	.LCPI15_2(%rip), %xmm0
	addsd	.LCPI15_5(%rip), %xmm0
	addsd	.LCPI15_6(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	cmpl	$51, %eax
	cmovll	%eax, %ebp
	testl	%ebp, %ebp
	cmovlel	%r15d, %ebp
	movl	%ebp, 56(%r14)
	movl	304(%r14), %ecx
	movl	$.L.str.63, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	492(%rbx), %ecx
	movl	$.L.str.64, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	cmpl	$0, 104(%rbx)
	je	.LBB15_9
# %bb.8:                                # %if.then52
	movl	$.L.str.65, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
.LBB15_9:                               # %if.end
	cmpl	$0, 4(%rbx)
	movl	$0, %eax
	jle	.LBB15_16
# %bb.10:                               # %for.body.lr.ph
	xorl	%eax, %eax
	jmp	.LBB15_11
	.p2align	4, 0x90
.LBB15_13:                              # %for.inc
                                        #   in Loop: Header=BB15_11 Depth=1
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jge	.LBB15_14
.LBB15_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movl	$0, (%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movl	$0, 4(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 488(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 576(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 104(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 92(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	movl	$0, 552(%rcx)
	movq	704(%rbx,%rax,8), %rcx
	cmpl	$2, 100(%rcx)
	jl	.LBB15_13
# %bb.12:                               # %if.then93
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, 100(%rcx)
	jmp	.LBB15_13
.LBB15_14:
	xorl	%eax, %eax
.LBB15_16:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	retq
.Lfunc_end15:
	.size	x264_ratecontrol_slice_type, .Lfunc_end15-x264_ratecontrol_slice_type
	.cfi_endproc
                                        # -- End function
	.globl	x264_ratecontrol_set_weights    # -- Begin function x264_ratecontrol_set_weights
	.p2align	4, 0x90
	.type	x264_ratecontrol_set_weights,@function
x264_ratecontrol_set_weights:           # @x264_ratecontrol_set_weights
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 396(%rdi)
	jle	.LBB16_2
# %bb.1:                                # %if.end
	movq	26704(%rdi), %rax
	movslq	56(%rsi), %rcx
	imulq	$168, %rcx, %rcx
	addq	312(%rax), %rcx
	cmpw	$0, 90(%rcx)
	js	.LBB16_2
# %bb.3:                                # %if.then4
	movswl	86(%rcx), %edx
	leaq	320(%rsi), %rax
	movl	%edx, 356(%rsi)
	movswl	90(%rcx), %edx
	movl	%edx, 352(%rsi)
	movswl	88(%rcx), %ecx
	movl	%ecx, 360(%rsi)
	movq	32896(%rdi), %rcx
	movq	%rax, %rsi
	jmpq	*%rcx                           # TAILCALL
.LBB16_2:                               # %cleanup
	retq
.Lfunc_end16:
	.size	x264_ratecontrol_set_weights, .Lfunc_end16-x264_ratecontrol_set_weights
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_ratecontrol_end
.LCPI17_0:
	.quad	0xc028000000000000              # double -12
.LCPI17_1:
	.quad	0x4018000000000000              # double 6
.LCPI17_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI17_4:
	.quad	0x3fb999999999999a              # double 0.10000000000000001
.LCPI17_5:
	.quad	0x3ff199999999999a              # double 1.1000000000000001
.LCPI17_6:
	.quad	0x3ff0000000000000              # double 1
.LCPI17_7:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI17_8:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI17_10:
	.quad	0x3fc0000000000000              # double 0.125
.LCPI17_11:
	.quad	0xc0f5f90000000000              # double -9.0E+4
.LCPI17_12:
	.quad	0x40f5f90000000000              # double 9.0E+4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI17_3:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
.LCPI17_9:
	.zero	8
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	x264_ratecontrol_end
	.p2align	4, 0x90
	.type	x264_ratecontrol_end,@function
x264_ratecontrol_end:                   # @x264_ratecontrol_end
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbx
	movq	26704(%rdi), %r15
	movl	26796(%rdi), %eax
	addl	26748(%rdi), %eax
	movl	%eax, 26808(%rdi)
	movl	26728(%rdi), %eax
	addl	26732(%rdi), %eax
	addl	26724(%rdi), %eax
	movl	%eax, 26800(%rdi)
	movl	26744(%rdi), %eax
	addl	26740(%rdi), %eax
	addl	26752(%rdi), %eax
	addl	26756(%rdi), %eax
	addl	26760(%rdi), %eax
	addl	26764(%rdi), %eax
	addl	26768(%rdi), %eax
	addl	26772(%rdi), %eax
	addl	26776(%rdi), %eax
	addl	26780(%rdi), %eax
	addl	26784(%rdi), %eax
	addl	26788(%rdi), %eax
	movl	%eax, 26804(%rdi)
	cvtsi2ssl	16368(%rdi), %xmm0
	movss	88(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 88(%r15)
	movq	14688(%rdi), %rax
	movss	%xmm1, 88(%rax)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	16368(%rdi), %xmm0
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movss	92(%r15), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 92(%r15)
	movq	14688(%rdi), %rax
	movss	%xmm1, 92(%rax)
	cmpl	$0, 560(%rdi)
	je	.LBB17_37
# %bb.1:                                # %if.then
	movl	7248(%rbx), %eax
	testl	%eax, %eax
	je	.LBB17_2
# %bb.3:                                # %if.then
	cmpl	$2, %eax
	jne	.LBB17_5
# %bb.4:                                # %cond.true
	movq	14680(%rbx), %rax
	xorl	%r8d, %r8d
	cmpl	$0, (%rax)
	setne	%r8b
	shll	$5, %r8d
	orl	$73, %r8d
	cmpl	$0, 25820(%rbx)
	jne	.LBB17_8
	jmp	.LBB17_7
.LBB17_2:
	movl	$80, %r8d
	cmpl	$0, 25820(%rbx)
	je	.LBB17_7
.LBB17_8:                               # %cond.true62
	movl	27380(%rbx), %eax
	subl	27376(%rbx), %eax
	movl	$115, %r14d
	testl	%eax, %eax
	jg	.LBB17_13
# %bb.9:                                # %cond.false66
	js	.LBB17_10
# %bb.11:                               # %cond.false70
	movl	30368(%rbx), %eax
	cmpl	%eax, 30372(%rbx)
	jg	.LBB17_13
# %bb.12:                               # %cond.false74
	movl	$45, %eax
	movl	$116, %r14d
	cmovel	%eax, %r14d
	jmp	.LBB17_13
.LBB17_5:                               # %cond.false38
	movq	14680(%rbx), %rax
	xorl	%r8d, %r8d
	cmpl	$0, 72(%rax)
	sete	%r8b
	shll	$5, %r8d
	orl	$66, %r8d
	cmpl	$0, 25820(%rbx)
	jne	.LBB17_8
.LBB17_7:
	movl	$45, %r14d
.LBB17_13:                              # %cond.end85
	movq	256(%r15), %rdi
	movq	14680(%rbx), %rax
	movl	56(%rax), %edx
	movl	1844(%rbx), %ecx
	movl	32(%rax), %r9d
	movl	36(%rax), %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movss	88(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	26716(%rbx), %eax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movl	26712(%rbx), %r12d
	movl	26720(%rbx), %r13d
	movl	26800(%rbx), %ebp
	movl	26804(%rbx), %r11d
	movl	26808(%rbx), %r10d
	movl	$.L.str.66, %esi
	movb	$1, %al
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	80(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	fprintf@PLT
	addq	$64, %rsp
	.cfi_adjust_cfa_offset -64
	testl	%eax, %eax
	js	.LBB17_19
# %bb.14:                               # %if.end
	cmpl	$0, 576(%rbx)
	je	.LBB17_20
# %bb.15:                               # %land.end
	movq	72(%r15), %rax
	cmpl	$2, 156(%rax)
	jl	.LBB17_20
# %bb.16:                               # %for.cond120.us.preheader
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB17_17:                              # %for.cond120.us
                                        # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movslq	156(%rax), %rcx
	cmpq	%rcx, %r14
	jge	.LBB17_26
# %bb.18:                               # %cond.true133.us
                                        #   in Loop: Header=BB17_17 Depth=1
	movl	92(%rax,%r14,4), %edx
	movq	256(%r15), %rdi
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	incq	%r14
	testl	%eax, %eax
	jns	.LBB17_17
	jmp	.LBB17_19
.LBB17_20:                              # %for.cond120.preheader
	xorl	%r14d, %r14d
	jmp	.LBB17_21
	.p2align	4, 0x90
.LBB17_24:                              # %cond.false156
                                        #   in Loop: Header=BB17_21 Depth=1
	movl	26820(%rbx,%r14,4), %edx
.LBB17_25:                              # %cond.end165
                                        #   in Loop: Header=BB17_21 Depth=1
	movq	256(%r15), %rdi
	movl	$.L.str.67, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	incq	%r14
	testl	%eax, %eax
	js	.LBB17_19
.LBB17_21:                              # %for.cond120
                                        # =>This Inner Loop Header: Depth=1
	movslq	14696(%rbx), %rax
	cmpq	%rax, %r14
	jge	.LBB17_26
# %bb.22:                               # %cond.false138
                                        #   in Loop: Header=BB17_21 Depth=1
	cmpl	$0, 136(%rbx)
	je	.LBB17_24
# %bb.23:                               # %cond.true141
                                        #   in Loop: Header=BB17_21 Depth=1
	movl	26824(%rbx,%r14,8), %edx
	addl	26820(%rbx,%r14,8), %edx
	jmp	.LBB17_25
.LBB17_26:                              # %for.end177
	cmpq	$0, 7632(%rbx)
	je	.LBB17_28
# %bb.27:                               # %if.then182
	movq	256(%r15), %rdi
	movl	7616(%rbx), %edx
	movl	7620(%rbx), %ecx
	movl	7624(%rbx), %r8d
	movl	$.L.str.68, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	testl	%eax, %eax
	js	.LBB17_19
.LBB17_28:                              # %if.end201
	movq	256(%r15), %rdi
	movl	$.L.str.69, %esi
	xorl	%eax, %eax
	callq	fprintf@PLT
	testl	%eax, %eax
	js	.LBB17_19
# %bb.29:                               # %if.end207
	cmpl	$0, 552(%rbx)
	je	.LBB17_37
# %bb.30:                               # %land.lhs.true
	movq	14680(%rbx), %rax
	cmpl	$0, 72(%rax)
	je	.LBB17_37
# %bb.31:                               # %land.lhs.true214
	cmpl	$0, 576(%rbx)
	je	.LBB17_32
.LBB17_37:                              # %if.end278
	cmpl	$0, (%r15)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	28(%rsp), %xmm0         # 4-byte Folded Reload
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	je	.LBB17_41
# %bb.38:                               # %if.then280
	movl	7248(%rbx), %ebp
	movss	88(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI17_0(%rip), %xmm0
	divsd	.LCPI17_1(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI17_2(%rip), %xmm0
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	176(%r15), %xmm1                # xmm1 = mem[0],zero
	cmpl	$1, %ebp
	jne	.LBB17_40
# %bb.39:                               # %if.else
	movss	540(%rbx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	andps	.LCPI17_3(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm2, %xmm1
.LBB17_40:                              # %if.end306
	divsd	%xmm1, %xmm0
	addsd	184(%r15), %xmm0
	movsd	208(%r15), %xmm1                # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 184(%r15)
	movq	14680(%rbx), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%rax), %xmm0
	movq	3200(%rbx), %rax
	movl	1192(%rax), %ecx
	movl	1196(%rax), %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%rcx, %xmm2
	cvtsi2sd	%rax, %xmm3
	mulsd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	mulsd	24(%r15), %xmm2
	addsd	200(%r15), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 200(%r15)
.LBB17_41:                              # %if.end322
	cmpl	$0, 4(%r15)
	je	.LBB17_43
# %bb.42:                               # %if.then324
	movq	72(%r15), %r14
	xorps	%xmm0, %xmm0
	cvtsi2sdl	64(%r14), %xmm0
	addsd	.LCPI17_0(%rip), %xmm0
	divsd	.LCPI17_1(%rip), %xmm0
	callq	exp2@PLT
	mulsd	.LCPI17_2(%rip), %xmm0
	movsd	.LCPI17_4(%rip), %xmm1          # xmm1 = [1.0000000000000001E-1,0.0E+0]
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)                 # 8-byte Spill
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	28(%r14), %xmm1
	movsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	movsd	.LCPI17_5(%rip), %xmm1          # xmm1 = [1.1000000000000001E+0,0.0E+0]
	callq	pow@PLT
	movsd	%xmm0, 56(%rsp)                 # 8-byte Spill
	movsd	16(%r14), %xmm0                 # xmm0 = mem[0],zero
	movsd	.LCPI17_6(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	xorps	%xmm2, %xmm2
	cvtsi2sdl	24(%r14), %xmm2
	movsd	%xmm2, 40(%rsp)                 # 8-byte Spill
	maxsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	.LCPI17_4(%rip), %xmm2
	movsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	movsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	maxsd	%xmm1, %xmm2
	divsd	%xmm2, %xmm0
	movsd	.LCPI17_7(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	callq	pow@PLT
	mulsd	40(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	56(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	32(%r14), %xmm0
	addsd	%xmm1, %xmm0
	addsd	192(%r15), %xmm0
	movsd	%xmm0, 192(%r15)
.LBB17_43:                              # %if.end331
	cmpl	$0, 25808(%rbx)
	je	.LBB17_51
# %bb.44:                               # %if.then334
	cmpl	$1, 7248(%rbx)
	jne	.LBB17_51
# %bb.45:                               # %if.then339
	movl	28(%rsp), %eax                  # 4-byte Reload
	addl	%eax, 884(%r15)
	movq	14680(%rbx), %rax
	cmpb	$0, 85(%rax)
	je	.LBB17_51
# %bb.46:                               # %if.then343
	movq	872(%r15), %r12
	movss	88(%r15), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI17_0(%rip), %xmm0
	divsd	.LCPI17_1(%rip), %xmm0
	callq	exp2@PLT
	movslq	14856(%rbx), %rax
	movq	14856(%rbx,%rax,8), %rax
	movl	9460(%rax), %eax
	cmpl	$10, %eax
	jl	.LBB17_50
# %bb.47:                               # %if.end.i
	cvtsi2sd	%eax, %xmm4
	movl	884(%r15), %eax
	cltd
	idivl	880(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	.LCPI17_2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm5
	divsd	%xmm4, %xmm5
	movsd	16(%r12), %xmm2                 # xmm2 = mem[0],zero
	movsd	24(%r12), %xmm1                 # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movupd	(%r12), %xmm3
	movapd	%xmm3, %xmm6
	unpckhpd	%xmm3, %xmm6                    # xmm6 = xmm6[1],xmm3[1]
	movapd	%xmm3, %xmm7
	divsd	%xmm6, %xmm7
	movsd	.LCPI17_8(%rip), %xmm6          # xmm6 = [1.5E+0,0.0E+0]
	movapd	%xmm7, %xmm8
	divsd	%xmm6, %xmm8
	mulsd	%xmm6, %xmm7
	minsd	%xmm5, %xmm7
	movapd	%xmm5, %xmm9
	cmpltsd	%xmm8, %xmm9
	movapd	%xmm9, %xmm6
	andnpd	%xmm7, %xmm6
	andpd	%xmm8, %xmm9
	orpd	%xmm6, %xmm9
	movapd	%xmm9, %xmm6
	mulsd	%xmm4, %xmm6
	subsd	%xmm6, %xmm0
	xorpd	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm0
	xorpd	%xmm4, %xmm4
	cmpnlesd	%xmm0, %xmm4
	movapd	%xmm4, %xmm7
	andnpd	%xmm9, %xmm7
	andpd	%xmm5, %xmm4
	orpd	%xmm7, %xmm4
	jb	.LBB17_49
# %bb.48:                               # %if.end.i
	movapd	%xmm0, %xmm6
.LBB17_49:                              # %if.end.i
	addsd	%xmm6, %xmm1
	unpcklpd	%xmm2, %xmm2                    # xmm2 = xmm2[0,0]
	shufpd	$2, .LCPI17_9(%rip), %xmm4      # xmm4 = xmm4[0],mem[1]
	mulpd	%xmm2, %xmm3
	addpd	%xmm3, %xmm4
	movupd	%xmm4, (%r12)
	movsd	%xmm1, 24(%r12)
.LBB17_50:                              # %update_predictor.exit
	movl	$0, 884(%r15)
.LBB17_51:                              # %if.end357
	movq	26704(%rbx), %r13
	movq	704(%rbx), %rax
	movq	26704(%rax), %r12
	movl	168(%r13), %eax
	cmpl	16368(%rbx), %eax
	jl	.LBB17_56
# %bb.52:                               # %if.then.i
	movq	144(%r12), %r14
	movslq	7248(%rbx), %rbp
	movss	88(%r13), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI17_0(%rip), %xmm0
	divsd	.LCPI17_1(%rip), %xmm0
	callq	exp2@PLT
	movl	168(%r13), %eax
	cmpl	$10, %eax
	jl	.LBB17_56
# %bb.53:                               # %if.end.i.i
	xorps	%xmm5, %xmm5
	cvtsi2sd	%eax, %xmm5
	mulsd	.LCPI17_2(%rip), %xmm0
	shlq	$5, %rbp
	mulsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movapd	%xmm0, %xmm4
	divsd	%xmm5, %xmm4
	movsd	16(%r14,%rbp), %xmm2            # xmm2 = mem[0],zero
	movsd	24(%r14,%rbp), %xmm1            # xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movupd	(%r14,%rbp), %xmm3
	movapd	%xmm3, %xmm6
	unpckhpd	%xmm3, %xmm6                    # xmm6 = xmm6[1],xmm3[1]
	movapd	%xmm3, %xmm7
	divsd	%xmm6, %xmm7
	movsd	.LCPI17_8(%rip), %xmm6          # xmm6 = [1.5E+0,0.0E+0]
	movapd	%xmm7, %xmm8
	divsd	%xmm6, %xmm8
	mulsd	%xmm6, %xmm7
	minsd	%xmm4, %xmm7
	movapd	%xmm4, %xmm9
	cmpltsd	%xmm8, %xmm9
	andpd	%xmm9, %xmm8
	andnpd	%xmm7, %xmm9
	orpd	%xmm8, %xmm9
	movapd	%xmm9, %xmm6
	mulsd	%xmm5, %xmm6
	subsd	%xmm6, %xmm0
	xorpd	%xmm6, %xmm6
	ucomisd	%xmm6, %xmm0
	xorpd	%xmm5, %xmm5
	cmpnlesd	%xmm0, %xmm5
	movapd	%xmm5, %xmm7
	andnpd	%xmm9, %xmm7
	andpd	%xmm4, %xmm5
	orpd	%xmm7, %xmm5
	jb	.LBB17_55
# %bb.54:                               # %if.end.i.i
	movapd	%xmm0, %xmm6
.LBB17_55:                              # %if.end.i.i
	addsd	%xmm6, %xmm1
	unpcklpd	%xmm2, %xmm2                    # xmm2 = xmm2[0,0]
	shufpd	$2, .LCPI17_9(%rip), %xmm5      # xmm5 = xmm5[0],mem[1]
	mulpd	%xmm2, %xmm3
	addpd	%xmm3, %xmm5
	movupd	%xmm5, (%r14,%rbp)
	movsd	%xmm1, 24(%r14,%rbp)
.LBB17_56:                              # %if.end.i687
	xorl	%eax, %eax
	cmpl	$0, 8(%r13)
	movl	$0, %ecx
	movq	64(%rsp), %r14                  # 8-byte Reload
	je	.LBB17_64
# %bb.57:                               # %if.end7.i
	movsd	112(%r12), %xmm0                # xmm0 = mem[0],zero
	subsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 112(%r12)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_59
# %bb.58:                               # %if.then12.i
	movl	1844(%rbx), %ecx
	movl	$.L.str.83, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movb	$1, %al
	callq	x264_log@PLT
	xorps	%xmm1, %xmm1
	movsd	112(%r12), %xmm0                # xmm0 = mem[0],zero
.LBB17_59:                              # %if.end14.i
	maxsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%r12)
	addsd	128(%r13), %xmm0
	movsd	%xmm0, 112(%r12)
	movq	3200(%rbx), %rax
	cmpl	$0, 1240(%rax)
	movsd	104(%r13), %xmm1                # xmm1 = mem[0],zero
	je	.LBB17_62
# %bb.60:                               # %if.end14.i
	ucomisd	%xmm1, %xmm0
	jbe	.LBB17_62
# %bb.61:                               # %if.then25.i
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	.LCPI17_10(%rip), %xmm0
	callq	ceil@PLT
	cvttsd2si	%xmm0, %ecx
	movl	$6, %eax
	subl	640(%rbx), %eax
	cmpl	%ecx, %eax
	cmovlel	%ecx, %eax
	shll	$3, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)                 # 8-byte Spill
	movsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB17_63
.LBB17_62:                              # %if.else.i
	minsd	%xmm1, %xmm0
	xorl	%ecx, %ecx
.LBB17_63:                              # %if.end54.i
	xorl	%eax, %eax
	movsd	%xmm0, 112(%r12)
.LBB17_64:                              # %update_vbv.exit
	movl	%ecx, (%r14)
	movq	3200(%rbx), %rcx
	cmpl	$0, 1204(%rcx)
	je	.LBB17_75
# %bb.65:                               # %if.then362
	movq	14680(%rbx), %rax
	cmpl	$0, 56(%rax)
	je	.LBB17_66
# %bb.67:                               # %if.else376
	xorps	%xmm0, %xmm0
	cvtsi2sdl	40(%rax), %xmm0
	movl	1192(%rcx), %edx
	movl	1196(%rcx), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rdx, %xmm1
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rcx, %xmm0
	divsd	%xmm0, %xmm1
	addsd	920(%r15), %xmm1
	movsd	%xmm1, 12304(%rax)
	movq	14680(%rbx), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	912(%r15), %xmm0
	divsd	.LCPI17_11(%rip), %xmm0
	movsd	12304(%rax), %xmm1              # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cmpl	$0, 80(%rax)
	je	.LBB17_69
# %bb.68:                               # %if.then403
	movsd	%xmm1, 920(%r15)
	movl	15024(%rbx), %eax
	movl	%eax, 912(%r15)
	movl	15028(%rbx), %eax
	movl	%eax, 916(%r15)
	jmp	.LBB17_70
.LBB17_66:                              # %if.then367
	movq	$0, 12288(%rax)
	movl	15024(%rbx), %eax
	movl	%eax, 912(%r15)
	movl	15028(%rbx), %ecx
	movl	%ecx, 916(%r15)
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	.LCPI17_12(%rip), %xmm1
	movsd	%xmm1, 920(%r15)
	movl	$12304, %eax                    # imm = 0x3010
	jmp	.LBB17_72
.LBB17_69:                              # %if.else412
	xorps	%xmm1, %xmm1
	cvtsi2sdl	916(%r15), %xmm1
	divsd	.LCPI17_11(%rip), %xmm1
	addsd	%xmm1, %xmm0
.LBB17_70:                              # %if.end417
	movq	3200(%rbx), %rax
	cmpl	$0, 1240(%rax)
	movsd	928(%r15), %xmm1                # xmm1 = mem[0],zero
	movl	$12288, %eax                    # imm = 0x3000
	jne	.LBB17_72
# %bb.71:                               # %if.else425
	maxsd	%xmm0, %xmm1
.LBB17_72:                              # %if.end438
	movq	14680(%rbx), %rcx
	movsd	%xmm1, (%rcx,%rax)
	movl	(%r14), %edx
	xorl	%eax, %eax
	movl	$0, %ecx
	testl	%edx, %edx
	je	.LBB17_74
# %bb.73:                               # %cond.true440
	movl	$6, %ecx
	subl	640(%rbx), %ecx
	cmpl	%edx, %ecx
	cmovlel	%edx, %ecx
	shll	$3, %ecx
.LBB17_74:                              # %cond.end454
	movq	14680(%rbx), %rdx
	addl	28(%rsp), %ecx                  # 4-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ecx, %xmm0
	movq	3200(%rbx), %rcx
	xorps	%xmm1, %xmm1
	cvtsi2sdl	1232(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	addsd	12288(%rdx), %xmm0
	movsd	%xmm0, 928(%r15)
	movq	14680(%rbx), %rcx
	movsd	%xmm0, 12296(%rcx)
	movq	14680(%rbx), %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	44(%rcx), %xmm0
	movq	3200(%rbx), %rdx
	movl	1192(%rdx), %esi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rsi, %xmm1
	movl	1196(%rdx), %edx
	mulsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rdx, %xmm0
	divsd	%xmm0, %xmm1
	addsd	12304(%rcx), %xmm1
	movsd	%xmm1, 12312(%rcx)
	jmp	.LBB17_75
.LBB17_10:
	movl	$116, %r14d
	jmp	.LBB17_13
.LBB17_32:                              # %if.then219
	movzbl	7248(%rbx), %eax
	movb	%al, 15(%rsp)
	cmpl	$0, 16368(%rbx)
	jle	.LBB17_35
# %bb.33:                               # %for.body231.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB17_34:                              # %for.body231
                                        # =>This Inner Loop Header: Depth=1
	movq	14680(%rbx), %rcx
	movq	12152(%rcx), %rcx
	cvttss2si	(%rcx,%rax,4), %ecx
	movzbl	%cl, %ecx
	movq	488(%r15), %rdx
	movw	%cx, (%rdx,%rax,2)
	incq	%rax
	movslq	16368(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB17_34
.LBB17_35:                              # %for.cond.cleanup230
	movq	272(%r15), %rcx
	leaq	15(%rsp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	testq	%rax, %rax
	je	.LBB17_19
# %bb.36:                               # %cleanup267
	movq	272(%r15), %rcx
	movq	488(%r15), %rdi
	movslq	16368(%rbx), %rdx
	movl	$2, %esi
	callq	fwrite@PLT
	cmpl	%eax, 16368(%rbx)
	jle	.LBB17_37
.LBB17_19:                              # %fail
	movl	$.L.str.70, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	x264_log@PLT
	movl	$-1, %eax
.LBB17_75:                              # %cleanup489
	addq	$72, %rsp
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
.Lfunc_end17:
	.size	x264_ratecontrol_end, .Lfunc_end17-x264_ratecontrol_end
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_hrd_fullness
.LCPI18_0:
	.quad	0x40f5f90000000000              # double 9.0E+4
.LCPI18_1:
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	x264_hrd_fullness
	.p2align	4, 0x90
	.type	x264_hrd_fullness,@function
x264_hrd_fullness:                      # @x264_hrd_fullness
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	704(%rdi), %rax
	movq	26704(%rax), %rax
	movsd	112(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	3200(%rdi), %rax
	movl	1232(%rax), %ebp
	cvtsi2sdl	1236(%rax), %xmm1
	movl	$.L.str.72, %ecx
	xorpd	%xmm2, %xmm2
	ucomisd	%xmm0, %xmm2
	ja	.LBB18_2
# %bb.1:                                # %lor.lhs.false
	movl	$.L.str.73, %ecx
	ucomisd	%xmm1, %xmm0
	jbe	.LBB18_3
.LBB18_2:                               # %if.then
	movl	$.L.str.71, %edx
	movq	%rbx, %rdi
	movl	$1, %esi
	movb	$2, %al
	movapd	%xmm0, 16(%rsp)                 # 16-byte Spill
	movapd	%xmm1, (%rsp)                   # 16-byte Spill
	callq	x264_log@PLT
	movapd	(%rsp), %xmm1                   # 16-byte Reload
	movapd	16(%rsp), %xmm0                 # 16-byte Reload
.LBB18_3:                               # %if.end
	movsd	.LCPI18_0(%rip), %xmm3          # xmm3 = [9.0E+4,0.0E+0]
	movapd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm0
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ebp, %xmm2
	divsd	%xmm2, %xmm0
	mulsd	%xmm3, %xmm4
	divsd	%xmm2, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, 15028(%rbx)
	addsd	.LCPI18_1(%rip), %xmm0
	mulsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm1
	minsd	%xmm0, %xmm1
	xorpd	%xmm2, %xmm2
	cmpltsd	%xmm2, %xmm0
	andnpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	x264_hrd_fullness, .Lfunc_end18-x264_hrd_fullness
	.cfi_endproc
                                        # -- End function
	.globl	x264_threads_normalize_predictors # -- Begin function x264_threads_normalize_predictors
	.p2align	4, 0x90
	.type	x264_threads_normalize_predictors,@function
x264_threads_normalize_predictors:      # @x264_threads_normalize_predictors
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	4(%rdi), %rax
	testq	%rax, %rax
	jle	.LBB19_9
# %bb.1:                                # %for.body.lr.ph
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$4, %eax
	jae	.LBB19_10
# %bb.2:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB19_3
.LBB19_10:                              # %for.body.lr.ph.new
	movl	%eax, %esi
	andl	$2147483644, %esi               # imm = 0x7FFFFFFC
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB19_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rdi,%rdx,8), %r8
	movq	712(%rdi,%rdx,8), %r9
	movq	26704(%r8), %r8
	addsd	528(%r8), %xmm0
	movq	26704(%r9), %r8
	addsd	528(%r8), %xmm0
	movq	720(%rdi,%rdx,8), %r8
	movq	26704(%r8), %r8
	addsd	528(%r8), %xmm0
	movq	728(%rdi,%rdx,8), %r8
	movq	26704(%r8), %r8
	addsd	528(%r8), %xmm0
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB19_11
.LBB19_3:                               # %for.cond.cleanup.unr-lcssa
	testq	%rcx, %rcx
	je	.LBB19_6
# %bb.4:                                # %for.body.epil.preheader
	leaq	(%rdi,%rdx,8), %rdx
	addq	$704, %rdx                      # imm = 0x2C0
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB19_5:                               # %for.body.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rdx,%rsi,8), %r8
	movq	26704(%r8), %r8
	addsd	528(%r8), %xmm0
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB19_5
.LBB19_6:                               # %for.cond.cleanup
	testl	%eax, %eax
	jle	.LBB19_9
# %bb.7:                                # %for.body8.lr.ph
	movq	26704(%rdi), %rax
	movsd	520(%rax), %xmm1                # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_8:                               # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rdi,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movsd	528(%rcx), %xmm0                # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 528(%rcx)
	incq	%rax
	movslq	4(%rdi), %rcx
	cmpq	%rcx, %rax
	jl	.LBB19_8
.LBB19_9:                               # %for.cond.cleanup7
	retq
.Lfunc_end19:
	.size	x264_threads_normalize_predictors, .Lfunc_end19-x264_threads_normalize_predictors
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_threads_distribute_ratecontrol
.LCPI20_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI20_1:
	.quad	0x3fa999999999999a              # double 0.050000000000000003
	.text
	.globl	x264_threads_distribute_ratecontrol
	.p2align	4, 0x90
	.type	x264_threads_distribute_ratecontrol,@function
x264_threads_distribute_ratecontrol:    # @x264_threads_distribute_ratecontrol
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
	movq	%rdi, %rbx
	movq	26704(%rdi), %r14
	cmpl	$0, 1844(%rdi)
	movl	4(%rdi), %ecx
	jne	.LBB20_4
# %bb.1:                                # %for.cond.preheader
	testl	%ecx, %ecx
	jle	.LBB20_18
# %bb.2:                                # %for.body.lr.ph
	leaq	552(%r14), %r15
	xorl	%r12d, %r12d
	movl	$552, %r13d                     # imm = 0x228
	.p2align	4, 0x90
.LBB20_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%r12,8), %rax
	movq	26704(%rax), %rdi
	addq	%r13, %rdi
	movl	$320, %edx                      # imm = 0x140
	movq	%r15, %rsi
	callq	memcpy@PLT
	incq	%r12
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %r12
	jl	.LBB20_3
.LBB20_4:                               # %if.end
	testl	%ecx, %ecx
	jle	.LBB20_18
# %bb.5:                                # %for.body12.lr.ph
	xorl	%r15d, %r15d
	jmp	.LBB20_6
	.p2align	4, 0x90
.LBB20_16:                              # %for.end32
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	144(%r14), %rax
	movslq	7248(%rbx), %rcx
	leal	(%r15,%r15,4), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	addq	%rcx, %rdx
	shlq	$5, %rdx
	movss	84(%r14), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r8d, %xmm0
	mulsd	(%rax,%rdx), %xmm0
	addsd	24(%rax,%rdx), %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	8(%rax,%rdx), %xmm1
	divsd	%xmm1, %xmm0
.LBB20_17:                              # %if.end43
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	26704(%r12), %rax
	movsd	%xmm0, 528(%rax)
	incq	%r15
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %r15
	jge	.LBB20_18
.LBB20_6:                               # %for.body12
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_13 Depth 2
                                        #     Child Loop BB20_15 Depth 2
	movq	704(%rbx,%r15,8), %r12
	movq	26704(%r12), %rdi
	movl	$544, %edx                      # imm = 0x220
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	26704(%r12), %rax
	movslq	7248(%rbx), %rcx
	shlq	$6, %rcx
	addq	%rax, %rcx
	addq	$552, %rcx                      # imm = 0x228
	movq	%rcx, 544(%rax)
	cmpl	$0, 8(%r14)
	je	.LBB20_7
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_6 Depth=1
	movsd	520(%r14), %xmm1                # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jne	.LBB20_9
	jnp	.LBB20_17
.LBB20_9:                               # %if.then24
                                        #   in Loop: Header=BB20_6 Depth=1
	movslq	1748(%r12), %r9
	movslq	1752(%r12), %rax
	xorl	%r8d, %r8d
	cmpl	%eax, %r9d
	jge	.LBB20_16
# %bb.10:                               # %for.body27.lr.ph
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	14688(%rbx), %rcx
	movq	12128(%rcx), %rcx
	movq	%rax, %rsi
	subq	%r9, %rsi
	xorl	%r8d, %r8d
	cmpq	$16, %rsi
	jae	.LBB20_12
# %bb.11:                               #   in Loop: Header=BB20_6 Depth=1
	movq	%r9, %rdx
	jmp	.LBB20_15
	.p2align	4, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_6 Depth=1
	xorpd	%xmm0, %xmm0
	jmp	.LBB20_17
.LBB20_12:                              # %vector.ph
                                        #   in Loop: Header=BB20_6 Depth=1
	movq	%rsi, %rdi
	andq	$-16, %rdi
	leaq	(%rdi,%r9), %rdx
	leaq	(%rcx,%r9,4), %r8
	addq	$48, %r8
	xorpd	%xmm1, %xmm1
	xorl	%r9d, %r9d
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	xorpd	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB20_13:                              # %vector.body
                                        #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%r8,%r9,4), %xmm4
	paddd	%xmm4, %xmm1
	movdqu	-32(%r8,%r9,4), %xmm4
	paddd	%xmm4, %xmm3
	movdqu	-16(%r8,%r9,4), %xmm4
	paddd	%xmm4, %xmm2
	movdqu	(%r8,%r9,4), %xmm4
	paddd	%xmm4, %xmm0
	addq	$16, %r9
	cmpq	%r9, %rdi
	jne	.LBB20_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB20_6 Depth=1
	paddd	%xmm1, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r8d
	cmpq	%rdi, %rsi
	je	.LBB20_16
	.p2align	4, 0x90
.LBB20_15:                              # %for.body27
                                        #   Parent Loop BB20_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	(%rcx,%rdx,4), %r8d
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB20_15
	jmp	.LBB20_16
.LBB20_18:                              # %for.cond.cleanup11
	cmpl	$0, 8(%r14)
	je	.LBB20_43
# %bb.19:                               # %land.lhs.true49
	movsd	520(%r14), %xmm0                # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB20_20
	jnp	.LBB20_43
.LBB20_20:                              # %if.then52
	testl	%ecx, %ecx
	jle	.LBB20_28
# %bb.21:                               # %for.body.lr.ph.i
	movl	%ecx, %edx
	movl	%edx, %eax
	andl	$3, %eax
	cmpl	$4, %ecx
	jae	.LBB20_44
# %bb.22:
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	jmp	.LBB20_23
.LBB20_44:                              # %for.body.lr.ph.i.new
	andl	$2147483644, %edx               # imm = 0x7FFFFFFC
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB20_45:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rcx,8), %rsi
	movq	712(%rbx,%rcx,8), %rdi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	movq	26704(%rdi), %rsi
	addsd	528(%rsi), %xmm0
	movq	720(%rbx,%rcx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	movq	728(%rbx,%rcx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	addq	$4, %rcx
	cmpq	%rcx, %rdx
	jne	.LBB20_45
.LBB20_23:                              # %for.body8.lr.ph.i.unr-lcssa
	testq	%rax, %rax
	je	.LBB20_26
# %bb.24:                               # %for.body.i.epil.preheader
	leaq	(%rbx,%rcx,8), %rcx
	addq	$704, %rcx                      # imm = 0x2C0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_25:                              # %for.body.i.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB20_25
.LBB20_26:                              # %for.body8.lr.ph.i
	movq	26704(%rbx), %rax
	movsd	520(%rax), %xmm1                # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_27:                              # %for.body8.i
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movsd	528(%rcx), %xmm0                # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 528(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB20_27
.LBB20_28:                              # %x264_threads_normalize_predictors.exit
	cmpl	$0, 152(%r14)
	je	.LBB20_40
# %bb.29:                               # %for.cond56.preheader
	testl	%ecx, %ecx
	jle	.LBB20_43
# %bb.30:                               # %for.body62.lr.ph
	xorl	%eax, %eax
	movsd	.LCPI20_0(%rip), %xmm0          # xmm0 = [1.0E+0,0.0E+0]
	movsd	.LCPI20_1(%rip), %xmm1          # xmm1 = [5.0000000000000003E-2,0.0E+0]
	.p2align	4, 0x90
.LBB20_31:                              # %for.body62
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movl	1752(%rcx), %edx
	subl	1748(%rcx), %edx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edx, %xmm2
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	movq	26704(%rcx), %rdx
	maxsd	%xmm3, %xmm2
	movsd	%xmm2, 536(%rdx)
	movq	26704(%rcx), %rcx
	movsd	536(%rcx), %xmm2                # xmm2 = mem[0],zero
	addsd	%xmm2, %xmm2
	mulsd	520(%r14), %xmm2
	addsd	528(%rcx), %xmm2
	movsd	%xmm2, 528(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB20_31
# %bb.32:                               # %for.cond.cleanup61
	testl	%ecx, %ecx
	jle	.LBB20_43
# %bb.33:                               # %for.body.lr.ph.i164
	movl	%ecx, %eax
	andl	$3, %eax
	cmpl	$4, %ecx
	jae	.LBB20_46
# %bb.34:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB20_35
.LBB20_46:                              # %for.body.lr.ph.i164.new
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_47:                              # %for.body.i167
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rdx,8), %rsi
	movq	712(%rbx,%rdx,8), %rdi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	movq	26704(%rdi), %rsi
	addsd	528(%rsi), %xmm0
	movq	720(%rbx,%rdx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	movq	728(%rbx,%rdx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB20_47
.LBB20_35:                              # %for.body8.lr.ph.i180.unr-lcssa
	testq	%rax, %rax
	je	.LBB20_38
# %bb.36:                               # %for.body.i167.epil.preheader
	leaq	(%rbx,%rdx,8), %rcx
	addq	$704, %rcx                      # imm = 0x2C0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB20_37:                              # %for.body.i167.epil
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rcx,%rdx,8), %rsi
	movq	26704(%rsi), %rsi
	addsd	528(%rsi), %xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	.LBB20_37
.LBB20_38:                              # %for.body8.lr.ph.i180
	movq	26704(%rbx), %rax
	movsd	520(%rax), %xmm1                # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_39:                              # %for.body8.i182
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movsd	528(%rcx), %xmm0                # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 528(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB20_39
.LBB20_40:                              # %if.end88
	testl	%ecx, %ecx
	jle	.LBB20_43
# %bb.41:                               # %for.body96.lr.ph
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB20_42:                              # %for.body96
                                        # =>This Inner Loop Header: Depth=1
	movq	704(%rbx,%rax,8), %rcx
	movq	26704(%rcx), %rcx
	movsd	528(%rcx), %xmm0                # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 508(%rcx)
	incq	%rax
	movslq	4(%rbx), %rcx
	cmpq	%rcx, %rax
	jl	.LBB20_42
.LBB20_43:                              # %if.end110
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
.Lfunc_end20:
	.size	x264_threads_distribute_ratecontrol, .Lfunc_end20-x264_threads_distribute_ratecontrol
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function x264_threads_merge_ratecontrol
.LCPI21_0:
	.quad	0xc028000000000000              # double -12
.LCPI21_1:
	.quad	0x4018000000000000              # double 6
.LCPI21_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI21_3:
	.quad	0x3ff8000000000000              # double 1.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI21_4:
	.zero	8
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	x264_threads_merge_ratecontrol
	.p2align	4, 0x90
	.type	x264_threads_merge_ratecontrol,@function
x264_threads_merge_ratecontrol:         # @x264_threads_merge_ratecontrol
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$0, 4(%rdi)
	jle	.LBB21_16
# %bb.1:                                # %for.body.lr.ph
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	26704(%rdi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB21_2
	.p2align	4, 0x90
.LBB21_14:                              # %cleanup
                                        #   in Loop: Header=BB21_2 Depth=1
	incq	%r15
	movslq	4(%r13), %rax
	cmpq	%rax, %r15
	jge	.LBB21_15
.LBB21_2:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #     Child Loop BB21_17 Depth 2
	movq	704(%r13,%r15,8), %rcx
	movq	26704(%rcx), %r9
	cmpl	$0, 528(%r13)
	je	.LBB21_12
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB21_2 Depth=1
	movslq	1748(%rcx), %rdx
	movslq	1752(%rcx), %rax
	xorl	%r14d, %r14d
	cmpl	%edx, %eax
	jle	.LBB21_8
# %bb.4:                                # %for.body11.lr.ph
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	14688(%r13), %rsi
	movq	12128(%rsi), %rsi
	movq	%rax, %r8
	subq	%rdx, %r8
	xorl	%r14d, %r14d
	movq	%rdx, %rbx
	cmpq	$15, %r8
	jbe	.LBB21_17
# %bb.5:                                # %vector.ph
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%r9, %r12
	movq	%r8, %r9
	andq	$-16, %r9
	leaq	(%r9,%rdx), %rbx
	leaq	(%rsi,%rdx,4), %r10
	addq	$48, %r10
	pxor	%xmm1, %xmm1
	xorl	%r11d, %r11d
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB21_6:                               # %vector.body
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-48(%r10,%r11,4), %xmm4
	paddd	%xmm4, %xmm1
	movdqu	-32(%r10,%r11,4), %xmm4
	paddd	%xmm4, %xmm3
	movdqu	-16(%r10,%r11,4), %xmm4
	paddd	%xmm4, %xmm2
	movdqu	(%r10,%r11,4), %xmm4
	paddd	%xmm4, %xmm0
	addq	$16, %r11
	cmpq	%r11, %r9
	jne	.LBB21_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB21_2 Depth=1
	paddd	%xmm1, %xmm3
	paddd	%xmm3, %xmm2
	paddd	%xmm2, %xmm0
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %r14d
	cmpq	%r9, %r8
	movq	%r12, %r9
	je	.LBB21_8
	.p2align	4, 0x90
.LBB21_17:                              # %for.body11
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	(%rsi,%rbx,4), %r14d
	incq	%rbx
	cmpq	%rbx, %rax
	jne	.LBB21_17
.LBB21_8:                               # %for.cond.cleanup10
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	26712(%rcx), %esi
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movl	26716(%rcx), %r12d
	movl	26720(%rcx), %ecx
	movl	%ecx, (%rsp)                    # 4-byte Spill
	subl	%edx, %eax
	movq	3200(%r13), %rcx
	imull	1084(%rcx), %eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	144(%rcx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movslq	7248(%r13), %rbp
	movss	88(%r9), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI21_0(%rip), %xmm0
	divsd	.LCPI21_1(%rip), %xmm0
	movq	%r9, %rbx
	callq	exp2@PLT
	movq	%rbx, %r9
	cmpl	$10, %r14d
	jl	.LBB21_12
# %bb.9:                                # %if.end.i
                                        #   in Loop: Header=BB21_2 Depth=1
	xorps	%xmm3, %xmm3
	cvtsi2sd	%r14d, %xmm3
	addl	4(%rsp), %r12d                  # 4-byte Folded Reload
	addl	(%rsp), %r12d                   # 4-byte Folded Reload
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r12d, %xmm1
	mulsd	.LCPI21_2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	leal	(%r15,%r15,4), %eax
	cltq
	addq	%rax, %rbp
	shlq	$5, %rbp
	movapd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movupd	(%rax,%rbp), %xmm1
	movapd	%xmm1, %xmm4
	unpckhpd	%xmm1, %xmm4                    # xmm4 = xmm4[1],xmm1[1]
	movapd	%xmm1, %xmm5
	divsd	%xmm4, %xmm5
	movapd	%xmm5, %xmm6
	movsd	.LCPI21_3(%rip), %xmm4          # xmm4 = [1.5E+0,0.0E+0]
	divsd	%xmm4, %xmm6
	mulsd	%xmm4, %xmm5
	minsd	%xmm2, %xmm5
	movapd	%xmm2, %xmm4
	cmpltsd	%xmm6, %xmm4
	andpd	%xmm4, %xmm6
	andnpd	%xmm5, %xmm4
	orpd	%xmm6, %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm0
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	xorpd	%xmm5, %xmm5
	jb	.LBB21_11
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB21_2 Depth=1
	movapd	%xmm0, %xmm5
.LBB21_11:                              # %if.end.i
                                        #   in Loop: Header=BB21_2 Depth=1
	movsd	16(%rax,%rbp), %xmm6            # xmm6 = mem[0],zero
	movsd	24(%rax,%rbp), %xmm7            # xmm7 = mem[0],zero
	mulsd	%xmm6, %xmm7
	addsd	%xmm5, %xmm7
	cmpnlesd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	andnpd	%xmm4, %xmm0
	andpd	%xmm2, %xmm3
	orpd	%xmm0, %xmm3
	shufpd	$2, .LCPI21_4(%rip), %xmm3      # xmm3 = xmm3[0],mem[1]
	unpcklpd	%xmm6, %xmm6                    # xmm6 = xmm6[0,0]
	mulpd	%xmm6, %xmm1
	addpd	%xmm3, %xmm1
	movupd	%xmm1, (%rax,%rbp)
	movsd	%xmm7, 24(%rax,%rbp)
.LBB21_12:                              # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	testq	%r15, %r15
	je	.LBB21_14
# %bb.13:                               # %if.end31
                                        #   in Loop: Header=BB21_2 Depth=1
	movss	88(%r9), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movq	8(%rsp), %rax                   # 8-byte Reload
	addss	88(%rax), %xmm0
	movss	%xmm0, 88(%rax)
	movss	92(%r9), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	addss	92(%rax), %xmm0
	movss	%xmm0, 92(%rax)
	jmp	.LBB21_14
.LBB21_15:
	addq	$24, %rsp
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB21_16:                              # %for.cond.cleanup
	retq
.Lfunc_end21:
	.size	x264_threads_merge_ratecontrol, .Lfunc_end21-x264_threads_merge_ratecontrol
	.cfi_endproc
                                        # -- End function
	.globl	x264_thread_sync_ratecontrol    # -- Begin function x264_thread_sync_ratecontrol
	.p2align	4, 0x90
	.type	x264_thread_sync_ratecontrol,@function
x264_thread_sync_ratecontrol:           # @x264_thread_sync_ratecontrol
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	%rsi, %rdi
	je	.LBB22_2
# %bb.1:                                # %if.then
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	376(%rcx), %rcx
	movq	%rcx, 376(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	384(%rcx), %rcx
	movq	%rcx, 384(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	168(%rcx), %ecx
	movl	%ecx, 168(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, 176(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	360(%rcx), %r8
	movq	%r8, 360(%rax)
	movups	328(%rcx), %xmm0
	movups	344(%rcx), %xmm1
	movups	%xmm1, 344(%rax)
	movups	%xmm0, 328(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	368(%rcx), %ecx
	movl	%ecx, 368(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	216(%rcx), %rcx
	movq	%rcx, 216(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, 224(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	880(%rcx), %ecx
	movl	%ecx, 880(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	904(%rcx), %rcx
	movq	%rcx, 904(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	504(%rcx), %ecx
	movl	%ecx, 504(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, 128(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, 104(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	152(%rcx), %ecx
	movl	%ecx, 152(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, 208(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movl	12(%rcx), %ecx
	movl	%ecx, 12(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	232(%rcx), %rcx
	movq	%rcx, 232(%rax)
	movq	26704(%rdi), %rax
	movq	26704(%rsi), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB22_2:                               # %if.end
	cmpq	%rdx, %rdi
	je	.LBB22_4
# %bb.3:                                # %if.then55
	movq	26704(%rdi), %rax
	movsd	184(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	26704(%rdx), %rax
	movsd	%xmm0, 184(%rax)
	movq	26704(%rdi), %rax
	movsd	192(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	26704(%rdx), %rax
	movsd	%xmm0, 192(%rax)
	movq	26704(%rdi), %rax
	movsd	200(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	26704(%rdx), %rax
	movsd	%xmm0, 200(%rax)
	movq	26704(%rdi), %rax
	movl	884(%rax), %eax
	movq	26704(%rdx), %rcx
	movl	%eax, 884(%rcx)
	movq	26704(%rdi), %rax
	movl	912(%rax), %eax
	movq	26704(%rdx), %rcx
	movl	%eax, 912(%rcx)
	movq	26704(%rdi), %rax
	movl	916(%rax), %eax
	movq	26704(%rdx), %rcx
	movl	%eax, 916(%rcx)
	movq	26704(%rdi), %rax
	movsd	920(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	26704(%rdx), %rax
	movsd	%xmm0, 920(%rax)
	movq	26704(%rdi), %rax
	movsd	928(%rax), %xmm0                # xmm0 = mem[0],zero
	movq	26704(%rdx), %rax
	movsd	%xmm0, 928(%rax)
.LBB22_4:                               # %if.end80
	retq
.Lfunc_end22:
	.size	x264_thread_sync_ratecontrol, .Lfunc_end22-x264_thread_sync_ratecontrol
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function clip_qscale
.LCPI23_0:
	.quad	0xc028000000000000              # double -12
.LCPI23_1:
	.quad	0x4018000000000000              # double 6
.LCPI23_2:
	.quad	0x3feb333333333333              # double 0.84999999999999998
.LCPI23_3:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI23_4:
	.quad	0x3fe999999999999a              # double 0.80000000000000004
.LCPI23_5:
	.quad	0xbfe0000000000000              # double -0.5
.LCPI23_6:
	.quad	0x3ff028f5c28f5c29              # double 1.01
.LCPI23_7:
	.quad	0x3ff0000000000000              # double 1
.LCPI23_9:
	.quad	0x3fc999999999999a              # double 0.20000000000000001
.LCPI23_10:
	.quad	0xc014000000000000              # double -5
.LCPI23_11:
	.quad	0xc010000000000000              # double -4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.LCPI23_8:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x4000000000000000              # double 2
	.text
	.p2align	4, 0x90
	.type	clip_qscale,@function
clip_qscale:                            # @clip_qscale
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movaps	%xmm0, (%rsp)                   # 16-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	26704(%rdi), %r14
	movslq	%esi, %rax
	movsd	400(%r14,%rax,8), %xmm9         # xmm9 = mem[0],zero
	movsd	440(%r14,%rax,8), %xmm10        # xmm10 = mem[0],zero
	movsd	160(%r14), %xmm0                # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB23_1
	jnp	.LBB23_3
.LBB23_1:                               # %if.then
	movss	96(%r14), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	divsd	.LCPI23_1(%rip), %xmm0
	movapd	%xmm9, 32(%rsp)                 # 16-byte Spill
	movapd	%xmm10, 16(%rsp)                # 16-byte Spill
	callq	exp2@PLT
	movapd	16(%rsp), %xmm10                # 16-byte Reload
	movapd	32(%rsp), %xmm9                 # 16-byte Reload
	mulsd	.LCPI23_2(%rip), %xmm0
	ucomisd	%xmm10, %xmm0
	ja	.LBB23_3
# %bb.2:                                # %cond.false
	movss	96(%r14), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	160(%r14), %xmm0
	addsd	.LCPI23_0(%rip), %xmm0
	divsd	.LCPI23_1(%rip), %xmm0
	callq	exp2@PLT
	movapd	32(%rsp), %xmm9                 # 16-byte Reload
	movapd	%xmm0, %xmm10
	mulsd	.LCPI23_2(%rip), %xmm10
.LBB23_3:                               # %if.end
	cmpl	$0, 8(%r14)
	je	.LBB23_36
# %bb.4:                                # %land.lhs.true
	movl	168(%r14), %edx
	testl	%edx, %edx
	jle	.LBB23_36
# %bb.5:                                # %if.then15
	cmpl	$0, 556(%rbx)
	je	.LBB23_23
# %bb.6:                                # %for.cond.preheader
	movapd	%xmm10, 16(%rsp)                # 16-byte Spill
	movapd	%xmm9, 32(%rsp)                 # 16-byte Spill
	movq	144(%r14), %rcx
	movslq	7248(%rbx), %rax
	movq	%rax, %rsi
	shlq	$5, %rsi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	movsd	(%rcx,%rsi), %xmm0              # xmm0 = mem[0],zero
	movsd	%xmm1, 56(%rsp)                 # 8-byte Spill
	mulsd	%xmm1, %xmm0
	addsd	24(%rcx,%rsi), %xmm0
	movsd	8(%rcx,%rsi), %xmm3             # xmm3 = mem[0],zero
	movsd	104(%r14), %xmm5                # xmm5 = mem[0],zero
	movsd	120(%r14), %xmm13               # xmm13 = mem[0],zero
	movss	536(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	540(%rbx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm6
	cvtss2sd	%xmm1, %xmm7
	movsd	136(%r14), %xmm8                # xmm8 = mem[0],zero
	movsd	.LCPI23_3(%rip), %xmm9          # xmm9 = [5.0E-1,0.0E+0]
	mulsd	%xmm5, %xmm9
	movsd	.LCPI23_4(%rip), %xmm10         # xmm10 = [8.0000000000000004E-1,0.0E+0]
	mulsd	%xmm5, %xmm10
	xorl	%edx, %edx
	movsd	.LCPI23_3(%rip), %xmm11         # xmm11 = [5.0E-1,0.0E+0]
	movl	$2, %esi
	xorpd	%xmm14, %xmm14
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	xorl	%edi, %edi
	jmp	.LBB23_7
	.p2align	4, 0x90
.LBB23_17:                              # %if.then124
                                        #   in Loop: Header=BB23_7 Depth=1
	mulsd	.LCPI23_6(%rip), %xmm4
	movl	$1, %r8d
	cmpl	$998, %edi                      # imm = 0x3E6
	ja	.LBB23_22
.LBB23_21:                              # %for.inc149
                                        #   in Loop: Header=BB23_7 Depth=1
	orl	%r8d, %edx
	incl	%edi
	cmpl	$3, %edx
	je	.LBB23_22
.LBB23_7:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_12 Depth 2
	movapd	%xmm4, %xmm1
	cmpl	$2, %eax
	jne	.LBB23_9
# %bb.8:                                #   in Loop: Header=BB23_7 Depth=1
	mulsd	%xmm7, %xmm1
.LBB23_9:                               # %for.body
                                        #   in Loop: Header=BB23_7 Depth=1
	movapd	%xmm4, %xmm2
	mulsd	%xmm3, %xmm2
	movapd	%xmm0, %xmm15
	divsd	%xmm2, %xmm15
	movapd	%xmm13, %xmm2
	subsd	%xmm15, %xmm2
	movsd	%xmm1, 64(%rsp)
	movapd	%xmm1, %xmm15
	mulsd	%xmm6, %xmm15
	movsd	%xmm15, 72(%rsp)
	divsd	%xmm7, %xmm1
	movsd	%xmm1, 80(%rsp)
	xorpd	%xmm15, %xmm15
	ucomisd	%xmm15, %xmm2
	jae	.LBB23_11
.LBB23_15:                              #   in Loop: Header=BB23_7 Depth=1
	movapd	%xmm2, %xmm1
.LBB23_16:                              # %cleanup103
                                        #   in Loop: Header=BB23_7 Depth=1
	mulsd	%xmm8, %xmm15
	movapd	%xmm15, %xmm2
	mulsd	%xmm11, %xmm2
	addsd	%xmm13, %xmm2
	minsd	%xmm9, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	.LBB23_17
# %bb.18:                               # %if.end126
                                        #   in Loop: Header=BB23_7 Depth=1
	mulsd	.LCPI23_5(%rip), %xmm15
	cmpl	$0, 12(%r14)
	je	.LBB23_22
# %bb.19:                               # %if.end126
                                        #   in Loop: Header=BB23_7 Depth=1
	addsd	%xmm13, %xmm15
	movapd	%xmm5, %xmm2
	minsd	%xmm15, %xmm2
	cmpltsd	%xmm10, %xmm15
	movapd	%xmm15, %xmm12
	andnpd	%xmm2, %xmm12
	andpd	%xmm10, %xmm15
	orpd	%xmm12, %xmm15
	ucomisd	%xmm15, %xmm1
	jbe	.LBB23_22
# %bb.20:                               # %if.then139
                                        #   in Loop: Header=BB23_7 Depth=1
	divsd	.LCPI23_6(%rip), %xmm4
	movl	$2, %r8d
	cmpl	$998, %edi                      # imm = 0x3E6
	jbe	.LBB23_21
	jmp	.LBB23_22
	.p2align	4, 0x90
.LBB23_11:                              # %land.rhs55.preheader
                                        #   in Loop: Header=BB23_7 Depth=1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB23_12:                              # %land.rhs55
                                        #   Parent Loop BB23_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ucomisd	%xmm2, %xmm5
	jb	.LBB23_15
# %bb.13:                               # %for.body60
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	14680(%rbx), %r9
	movsd	13576(%r9,%r8,8), %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm15
	mulsd	%xmm8, %xmm1
	addsd	%xmm2, %xmm1
	movzbl	12320(%r9,%r8), %r10d
	testb	%r10b, %r10b
	je	.LBB23_16
# %bb.14:                               # %for.inc
                                        #   in Loop: Header=BB23_12 Depth=2
	movl	%r10d, %r11d
	andb	$-2, %r11b
	xorl	%r15d, %r15d
	cmpb	$4, %r11b
	sete	%r15b
	cmpb	$3, %r10b
	cmovbl	%esi, %r15d
	movsd	64(%rsp,%r15,8), %xmm2          # xmm2 = mem[0],zero
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$5, %r15d
	xorps	%xmm12, %xmm12
	cvtsi2sdl	12572(%r9,%r8,4), %xmm12
	mulsd	(%rcx,%r15), %xmm12
	addsd	24(%rcx,%r15), %xmm12
	mulsd	8(%rcx,%r15), %xmm2
	divsd	%xmm2, %xmm12
	subsd	%xmm12, %xmm1
	incq	%r8
	ucomisd	%xmm14, %xmm1
	movapd	%xmm1, %xmm2
	jae	.LBB23_12
	jmp	.LBB23_16
.LBB23_22:                              # %cleanup143
	movapd	32(%rsp), %xmm9                 # 16-byte Reload
	movapd	16(%rsp), %xmm10                # 16-byte Reload
	movsd	56(%rsp), %xmm11                # 8-byte Reload
                                        # xmm11 = mem[0],zero
	jmp	.LBB23_32
.LBB23_23:                              # %if.else
	testl	%ebp, %ebp
	je	.LBB23_26
# %bb.24:                               # %if.else
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	cmpl	$2, %ebp
	jne	.LBB23_28
# %bb.25:                               # %land.lhs.true158
	cmpl	$2, 368(%r14)
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	jne	.LBB23_28
.LBB23_26:                              # %land.lhs.true161
	movsd	104(%r14), %xmm2                # xmm2 = mem[0],zero
	movsd	120(%r14), %xmm0                # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	divsd	%xmm2, %xmm3
	movsd	.LCPI23_3(%rip), %xmm1          # xmm1 = [5.0E-1,0.0E+0]
	ucomisd	%xmm3, %xmm1
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	jbe	.LBB23_28
# %bb.27:                               # %if.then167
	addsd	%xmm0, %xmm0
	divsd	%xmm2, %xmm0
	movsd	.LCPI23_7(%rip), %xmm2          # xmm2 = [1.0E+0,0.0E+0]
	minsd	%xmm0, %xmm2
	cmpltsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm3
	andnpd	%xmm2, %xmm3
	andpd	%xmm1, %xmm0
	orpd	%xmm3, %xmm0
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	divsd	%xmm0, %xmm4
.LBB23_28:                              # %if.end174
	movq	144(%r14), %rcx
	movslq	7248(%rbx), %rax
	movq	%rax, %rsi
	shlq	$5, %rsi
	cvtsi2sd	%edx, %xmm11
	movsd	(%rcx,%rsi), %xmm0              # xmm0 = mem[0],zero
	mulsd	%xmm11, %xmm0
	addsd	24(%rcx,%rsi), %xmm0
	movsd	8(%rcx,%rsi), %xmm3             # xmm3 = mem[0],zero
	movapd	%xmm4, %xmm2
	xorps	%xmm1, %xmm1
	cvtsi2sdl	528(%rbx), %xmm1
	movl	524(%rbx), %ecx
	leal	(%rcx,%rcx,4), %ecx
	cvtsi2sd	%ecx, %xmm5
	mulsd	%xmm3, %xmm2
	divsd	16(%r14), %xmm5
	xorl	%ecx, %ecx
	ucomisd	%xmm5, %xmm1
	setae	%cl
	xorl	%edx, %edx
	cmpl	$1, 152(%r14)
	adcl	$1, %edx
	movsd	.LCPI23_8(,%rcx,8), %xmm6       # xmm6 = mem[0],zero
	xorps	%xmm5, %xmm5
	cvtsi2sd	%edx, %xmm5
	movsd	120(%r14), %xmm13               # xmm13 = mem[0],zero
	movapd	%xmm0, %xmm1
	unpcklpd	%xmm13, %xmm1                   # xmm1 = xmm1[0],xmm13[0]
	unpcklpd	%xmm6, %xmm2                    # xmm2 = xmm2[0],xmm6[0]
	divpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm2                    # xmm2 = xmm2[1],xmm1[1]
	ucomisd	%xmm2, %xmm1
	jbe	.LBB23_30
# %bb.29:                               # %if.then202
	mulsd	%xmm1, %xmm6
	movapd	%xmm13, %xmm2
	divsd	%xmm6, %xmm2
	movsd	.LCPI23_7(%rip), %xmm6          # xmm6 = [1.0E+0,0.0E+0]
	minsd	%xmm2, %xmm6
	movsd	.LCPI23_9(%rip), %xmm7          # xmm7 = [2.0000000000000001E-1,0.0E+0]
	cmpltsd	%xmm7, %xmm2
	movapd	%xmm2, %xmm8
	andnpd	%xmm6, %xmm8
	andpd	%xmm7, %xmm2
	orpd	%xmm8, %xmm2
	jmp	.LBB23_31
.LBB23_30:
	movsd	.LCPI23_7(%rip), %xmm2          # xmm2 = [1.0E+0,0.0E+0]
.LBB23_31:                              # %if.end207
	mulsd	%xmm2, %xmm1
	movsd	128(%r14), %xmm6                # xmm6 = mem[0],zero
	unpcklpd	%xmm6, %xmm2                    # xmm2 = xmm2[0],xmm6[0]
	divsd	%xmm5, %xmm6
	mulsd	%xmm1, %xmm5
	unpcklpd	%xmm5, %xmm4                    # xmm4 = xmm4[0],xmm5[0]
	divpd	%xmm2, %xmm4
	movapd	%xmm4, %xmm2
	unpckhpd	%xmm4, %xmm2                    # xmm2 = xmm2[1],xmm4[1]
	mulsd	%xmm4, %xmm2
	cmpltsd	%xmm6, %xmm1
	movapd	%xmm1, %xmm5
	andnpd	%xmm4, %xmm5
	andpd	%xmm2, %xmm1
	orpd	%xmm5, %xmm1
	movapd	(%rsp), %xmm4                   # 16-byte Reload
	maxsd	%xmm1, %xmm4
.LBB23_32:                              # %if.end225
	movapd	%xmm4, %xmm1
	mulsd	%xmm3, %xmm1
	movapd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	movsd	512(%r14), %xmm5                # xmm5 = mem[0],zero
	movapd	%xmm2, %xmm1
	divsd	%xmm5, %xmm1
	mulsd	%xmm4, %xmm1
	cmpltsd	%xmm2, %xmm5
	andpd	%xmm5, %xmm1
	andnpd	%xmm4, %xmm5
	orpd	%xmm1, %xmm5
	testl	%eax, %eax
	jne	.LBB23_34
# %bb.33:                               # %land.lhs.true254
	cmpl	$0, 152(%r14)
	je	.LBB23_38
.LBB23_34:                              # %if.end327
	cmpl	$0, 12(%r14)
	je	.LBB23_50
.LBB23_35:                              # %if.end327
	movapd	%xmm5, (%rsp)                   # 16-byte Spill
.LBB23_36:                              # %if.end338
	ucomisd	%xmm10, %xmm9
	jne	.LBB23_51
	jp	.LBB23_51
.LBB23_37:                              # %cleanup363
	movapd	%xmm9, %xmm0
	addq	$88, %rsp
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
.LBB23_38:                              # %if.then257
	.cfi_def_cfa_offset 128
	mulsd	%xmm5, %xmm3
	divsd	%xmm3, %xmm0
	movq	872(%r14), %rax
	movss	540(%rbx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm5, %xmm1
	mulsd	(%rax), %xmm11
	addsd	24(%rax), %xmm11
	mulsd	8(%rax), %xmm1
	movslq	880(%r14), %rcx
	divsd	%xmm1, %xmm11
	movq	14680(%rbx), %rax
	testq	%rcx, %rcx
	jle	.LBB23_41
# %bb.39:                               # %for.body270.lr.ph
	movl	%ecx, %edx
	andl	$7, %edx
	cmpl	$8, %ecx
	jae	.LBB23_42
# %bb.40:
	xorpd	%xmm3, %xmm3
	xorl	%esi, %esi
	jmp	.LBB23_44
.LBB23_41:
	xorpd	%xmm3, %xmm3
	jmp	.LBB23_47
.LBB23_42:                              # %for.body270.lr.ph.new
	movl	%ecx, %edi
	andl	$2147483640, %edi               # imm = 0x7FFFFFF8
	xorpd	%xmm3, %xmm3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB23_43:                              # %for.body270
                                        # =>This Inner Loop Header: Depth=1
	addsd	13584(%rax,%rsi,8), %xmm3
	addsd	13592(%rax,%rsi,8), %xmm3
	addsd	13600(%rax,%rsi,8), %xmm3
	addsd	13608(%rax,%rsi,8), %xmm3
	addsd	13616(%rax,%rsi,8), %xmm3
	addsd	13624(%rax,%rsi,8), %xmm3
	addsd	13632(%rax,%rsi,8), %xmm3
	addsd	13640(%rax,%rsi,8), %xmm3
	addq	$8, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB23_43
.LBB23_44:                              # %for.cond.cleanup269.loopexit.unr-lcssa
	testq	%rdx, %rdx
	je	.LBB23_47
# %bb.45:                               # %for.body270.epil.preheader
	leaq	(%rax,%rsi,8), %rsi
	addq	$13584, %rsi                    # imm = 0x3510
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB23_46:                              # %for.body270.epil
                                        # =>This Inner Loop Header: Depth=1
	addsd	(%rsi,%rdi,8), %xmm3
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB23_46
.LBB23_47:                              # %for.cond.cleanup269
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	movapd	%xmm11, %xmm6
	mulsd	%xmm4, %xmm6
	movsd	104(%r14), %xmm2                # xmm2 = mem[0],zero
	movsd	136(%r14), %xmm7                # xmm7 = mem[0],zero
	movapd	%xmm3, %xmm1
	mulsd	%xmm7, %xmm1
	cmpltsd	%xmm6, %xmm1
	andnpd	%xmm4, %xmm1
	mulsd	%xmm11, %xmm1
	addsd	%xmm0, %xmm1
	addsd	13576(%rax), %xmm3
	mulsd	%xmm7, %xmm3
	addsd	%xmm13, %xmm3
	subsd	%xmm2, %xmm3
	ucomisd	%xmm1, %xmm3
	jbe	.LBB23_49
# %bb.48:                               # %if.then302
	mulsd	.LCPI23_3(%rip), %xmm2
	unpcklpd	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	unpcklpd	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0]
	divpd	%xmm3, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	maxsd	%xmm0, %xmm1
	mulsd	%xmm1, %xmm5
.LBB23_49:                              # %if.end318
	movsd	.LCPI23_10(%rip), %xmm0         # xmm0 = [-5.0E+0,0.0E+0]
	addsd	(%rsp), %xmm0                   # 16-byte Folded Reload
	maxsd	%xmm5, %xmm0
	movapd	%xmm0, %xmm5
	cmpl	$0, 12(%r14)
	jne	.LBB23_35
.LBB23_50:
	movapd	(%rsp), %xmm0                   # 16-byte Reload
	maxsd	%xmm5, %xmm0
	movapd	%xmm0, (%rsp)                   # 16-byte Spill
	ucomisd	%xmm10, %xmm9
	jne	.LBB23_51
	jnp	.LBB23_37
.LBB23_51:                              # %if.else342
	cmpl	$0, 4(%r14)
	je	.LBB23_53
# %bb.52:                               # %if.then344
	movapd	%xmm9, %xmm0
	movapd	%xmm10, 16(%rsp)                # 16-byte Spill
	callq	log@PLT
	movsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	callq	log@PLT
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movapd	(%rsp), %xmm0                   # 16-byte Reload
	callq	log@PLT
	movsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	16(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 16(%rsp)                 # 8-byte Spill
	divsd	%xmm2, %xmm0
	addsd	.LCPI23_5(%rip), %xmm0
	mulsd	.LCPI23_11(%rip), %xmm0
	callq	exp@PLT
	movsd	.LCPI23_7(%rip), %xmm1          # xmm1 = [1.0E+0,0.0E+0]
	addsd	%xmm1, %xmm0
	divsd	%xmm0, %xmm1
	mulsd	16(%rsp), %xmm1                 # 8-byte Folded Reload
	addsd	32(%rsp), %xmm1                 # 8-byte Folded Reload
	movapd	%xmm1, %xmm0
	addq	$88, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	exp@PLT                         # TAILCALL
.LBB23_53:                              # %if.else361
	.cfi_def_cfa_offset 128
	movapd	(%rsp), %xmm1                   # 16-byte Reload
	minsd	%xmm1, %xmm10
	cmpltsd	%xmm9, %xmm1
	movapd	%xmm1, %xmm0
	andnpd	%xmm10, %xmm0
	andpd	%xmm9, %xmm1
	orpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm9
	jmp	.LBB23_37
.Lfunc_end23:
	.size	clip_qscale, .Lfunc_end23-clip_qscale
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MB-tree frametype %d doesn't match actual frametype %d.\n"
	.size	.L.str, 57

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Incomplete MB-tree stats file.\n"
	.size	.L.str.1, 32

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"VBV buffer size cannot be smaller than one frame, using %d kbit\n"
	.size	.L.str.2, 65

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"VBV parameters cannot be changed when NAL HRD is in use\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"CRF max must be greater than CRF\n"
	.size	.L.str.4, 34

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"constant rate-factor is incompatible with 2pass.\n"
	.size	.L.str.5, 50

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"bitrate tolerance too small, using .01\n"
	.size	.L.str.6, 40

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"failed to parse zones\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"h->param.rc.psz_stat_in"
	.size	.L.str.8, 24

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"x264_src/encoder/ratecontrol.c"
	.size	.L.str.9, 31

	.type	.L__PRETTY_FUNCTION__.x264_ratecontrol_new,@object # @__PRETTY_FUNCTION__.x264_ratecontrol_new
.L__PRETTY_FUNCTION__.x264_ratecontrol_new:
	.asciz	"int x264_ratecontrol_new(x264_t *)"
	.size	.L__PRETTY_FUNCTION__.x264_ratecontrol_new, 35

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"ratecontrol_init: can't open stats file\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	".mbtree"
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"rb"
	.size	.L.str.12, 3

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"ratecontrol_init: can't open mbtree stats file\n"
	.size	.L.str.13, 48

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"#options:"
	.size	.L.str.14, 10

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"#options: %dx%d"
	.size	.L.str.15, 16

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"resolution specified in stats file not valid\n"
	.size	.L.str.16, 46

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"MB-tree doesn't support different resolution than 1st pass (%dx%d vs %dx%d)\n"
	.size	.L.str.17, 77

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"timebase="
	.size	.L.str.18, 10

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"timebase=%u/%u"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"timebase specified in stats file not valid\n"
	.size	.L.str.20, 44

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"timebase mismatch with 1st pass (%u/%u vs %u/%u)\n"
	.size	.L.str.21, 50

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"weightp="
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"weightp=%d"
	.size	.L.str.23, 11

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"different weightp setting than first pass (%d vs %d)\n"
	.size	.L.str.24, 54

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"bframes="
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"bframes=%d"
	.size	.L.str.26, 11

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"different bframes setting than first pass (%d vs %d)\n"
	.size	.L.str.27, 54

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"b_pyramid="
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"b_pyramid=%d"
	.size	.L.str.29, 13

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"different b_pyramid setting than first pass (%d vs %d)\n"
	.size	.L.str.30, 56

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"intra_refresh="
	.size	.L.str.31, 15

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"intra_refresh=%d"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"different intra_refresh setting than first pass (%d vs %d)\n"
	.size	.L.str.33, 60

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"keyint="
	.size	.L.str.34, 8

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"keyint=%d"
	.size	.L.str.35, 10

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"different keyint setting than first pass (%d vs %d)\n"
	.size	.L.str.36, 53

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"qp=0"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"1st pass was lossless, bitrate prediction will be inaccurate\n"
	.size	.L.str.38, 62

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"direct=3"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"direct=auto not used on the first pass\n"
	.size	.L.str.40, 40

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"b_adapt="
	.size	.L.str.41, 9

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"b_adapt=%d"
	.size	.L.str.42, 11

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"b_adapt method specified in stats file not valid\n"
	.size	.L.str.43, 50

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"rc_lookahead="
	.size	.L.str.44, 14

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"rc_lookahead=%d"
	.size	.L.str.45, 16

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"empty stats file\n"
	.size	.L.str.46, 18

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"2nd pass has fewer frames than 1st pass (%d vs %d)\n"
	.size	.L.str.47, 52

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"2nd pass has more frames than 1st pass (%d vs %d)\n"
	.size	.L.str.48, 51

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	" in:%d "
	.size	.L.str.49, 8

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"bad frame number (%d) at stats line %d\n"
	.size	.L.str.50, 40

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	" in:%*d out:%*d type:%c dur:%d cpbdur:%d q:%f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c"
	.size	.L.str.51, 93

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"ref:"
	.size	.L.str.52, 5

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	" %d"
	.size	.L.str.53, 4

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"w:%hd,%hd,%hd"
	.size	.L.str.54, 14

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"statistics are damaged at line %d, parser out=%d\n"
	.size	.L.str.55, 50

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	".temp"
	.size	.L.str.56, 6

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"wb"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"#options: %s\n"
	.size	.L.str.58, 14

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	".mbtree.temp"
	.size	.L.str.59, 13

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"final ratefactor: %.2f\n"
	.size	.L.str.60, 24

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"failed to rename \"%s\" to \"%s\"\n"
	.size	.L.str.61, 31

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"frame >= 0 && frame < rc->num_entries"
	.size	.L.str.62, 38

	.type	.L__PRETTY_FUNCTION__.x264_ratecontrol_start,@object # @__PRETTY_FUNCTION__.x264_ratecontrol_start
.L__PRETTY_FUNCTION__.x264_ratecontrol_start:
	.asciz	"void x264_ratecontrol_start(x264_t *, int, int)"
	.size	.L__PRETTY_FUNCTION__.x264_ratecontrol_start, 48

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"2nd pass has more frames than 1st pass (%d)\n"
	.size	.L.str.63, 45

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"continuing anyway, at constant QP=%d\n"
	.size	.L.str.64, 38

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"disabling adaptive B-frames\n"
	.size	.L.str.65, 29

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"in:%d out:%d type:%c dur:%d cpbdur:%d q:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c ref:"
	.size	.L.str.66, 97

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"%d "
	.size	.L.str.67, 4

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"w:%d,%d,%d"
	.size	.L.str.68, 11

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	";\n"
	.size	.L.str.69, 3

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"ratecontrol_end: stats file could not be written to\n"
	.size	.L.str.70, 53

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"CPB %s: %.0lf bits in a %.0lf-bit buffer\n"
	.size	.L.str.71, 42

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"underflow"
	.size	.L.str.72, 10

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"overflow"
	.size	.L.str.73, 9

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"/"
	.size	.L.str.74, 2

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"invalid zone: start=%d end=%d\n"
	.size	.L.str.75, 31

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"invalid zone: bitrate_factor=%f\n"
	.size	.L.str.76, 33

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"%d,%d,q=%d%n"
	.size	.L.str.77, 13

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"%d,%d,b=%f%n"
	.size	.L.str.78, 13

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"%d,%d%n"
	.size	.L.str.79, 8

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"invalid zone: \"%s\"\n"
	.size	.L.str.80, 20

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	","
	.size	.L.str.81, 2

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"invalid zone param: %s = %s\n"
	.size	.L.str.82, 29

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"VBV underflow (frame %d, %.0f bits)\n"
	.size	.L.str.83, 37

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"slice=%c but 2pass stats say %c\n"
	.size	.L.str.84, 33

	.type	slice_type_to_char,@object      # @slice_type_to_char
	.section	.rodata,"a",@progbits
slice_type_to_char:
	.ascii	"PBISS"
	.size	slice_type_to_char, 5

	.type	.L.str.85,@object               # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"requested bitrate is too low. estimated minimum is %d kbps\n"
	.size	.L.str.85, 60

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"qscale[i] >= 0"
	.size	.L.str.86, 15

	.type	.L__PRETTY_FUNCTION__.init_pass2,@object # @__PRETTY_FUNCTION__.init_pass2
.L__PRETTY_FUNCTION__.init_pass2:
	.asciz	"int init_pass2(x264_t *)"
	.size	.L__PRETTY_FUNCTION__.init_pass2, 25

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"rce->new_qscale >= 0"
	.size	.L.str.88, 21

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"Error: 2pass curve failed to converge\n"
	.size	.L.str.89, 39

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\n"
	.size	.L.str.90, 58

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"try reducing target bitrate or reducing qp_min (currently %d)\n"
	.size	.L.str.91, 63

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"try reducing target bitrate\n"
	.size	.L.str.92, 29

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"try increasing target bitrate or increasing qp_max (currently %d)\n"
	.size	.L.str.93, 67

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"try increasing target bitrate\n"
	.size	.L.str.94, 31

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"internal error\n"
	.size	.L.str.95, 16

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"vbv-maxrate issue, qpmax or vbv-maxrate too low\n"
	.size	.L.str.96, 49

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
