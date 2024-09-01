	.text
	.file	"quant.c"
	.globl	x264_quant_init                 # -- Begin function x264_quant_init
	.p2align	4, 0x90
	.type	x264_quant_init,@function
x264_quant_init:                        # @x264_quant_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$quant_8x8, (%rdx)
	movq	$quant_4x4, 8(%rdx)
	movq	$quant_4x4_dc, 16(%rdx)
	movq	$quant_2x2_dc, 24(%rdx)
	movq	$dequant_4x4, 40(%rdx)
	movq	$dequant_4x4_dc, 48(%rdx)
	movq	$dequant_8x8, 32(%rdx)
	movq	$x264_denoise_dct, 56(%rdx)
	movq	$x264_decimate_score15, 64(%rdx)
	movq	$x264_decimate_score16, 72(%rdx)
	movq	$x264_decimate_score64, 80(%rdx)
	movq	$x264_coeff_last4, 112(%rdx)
	movq	$x264_coeff_last15, 96(%rdx)
	movq	$x264_coeff_last16, 104(%rdx)
	movq	$x264_coeff_last64, 128(%rdx)
	movq	$x264_coeff_level_run4, 160(%rdx)
	movq	$x264_coeff_level_run15, 144(%rdx)
	movq	$x264_coeff_level_run16, 152(%rdx)
	movq	$x264_coeff_last16, 88(%rdx)
	movq	$x264_coeff_last15, 120(%rdx)
	movq	$x264_coeff_level_run16, 136(%rdx)
	movq	$x264_coeff_level_run15, 168(%rdx)
	retq
.Lfunc_end0:
	.size	x264_quant_init, .Lfunc_end0-x264_quant_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function quant_8x8
	.type	quant_8x8,@function
quant_8x8:                              # @quant_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	128(%rdx), %rax
	cmpq	%rdi, %rax
	seta	%r8b
	leaq	128(%rdi), %rcx
	cmpq	%rdx, %rcx
	seta	%r9b
	leaq	128(%rsi), %rax
	cmpq	%rdi, %rax
	seta	%al
	cmpq	%rsi, %rcx
	seta	%cl
	testb	%r9b, %r8b
	jne	.LBB1_6
# %bb.1:                                # %entry
	andb	%cl, %al
	jne	.LBB1_6
# %bb.2:                                # %vector.body.preheader
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	xorl	%eax, %eax
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB1_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm4, 64(%rsp)                 # 16-byte Spill
	movdqa	%xmm3, 80(%rsp)                 # 16-byte Spill
	movdqa	%xmm2, 96(%rsp)                 # 16-byte Spill
	movdqa	%xmm1, 112(%rsp)                # 16-byte Spill
	movq	(%rdi,%rax,2), %xmm2            # xmm2 = mem[0],zero
	movdqa	%xmm2, -96(%rsp)                # 16-byte Spill
	movq	8(%rdi,%rax,2), %xmm1           # xmm1 = mem[0],zero
	movdqa	%xmm1, 32(%rsp)                 # 16-byte Spill
	movq	16(%rdi,%rax,2), %xmm0          # xmm0 = mem[0],zero
	movdqa	%xmm0, 48(%rsp)                 # 16-byte Spill
	punpcklwd	%xmm2, %xmm2            # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm2
	movdqa	%xmm2, (%rsp)                   # 16-byte Spill
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm1
	movdqa	%xmm1, %xmm5
	movdqa	%xmm1, -16(%rsp)                # 16-byte Spill
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, -128(%rsp)               # 16-byte Spill
	movq	(%rdx,%rax,2), %xmm14           # xmm14 = mem[0],zero
	movq	8(%rdx,%rax,2), %xmm12          # xmm12 = mem[0],zero
	movq	16(%rdx,%rax,2), %xmm13         # xmm13 = mem[0],zero
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1],xmm14[2],xmm0[2],xmm14[3],xmm0[3]
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	punpcklwd	%xmm0, %xmm13           # xmm13 = xmm13[0],xmm0[0],xmm13[1],xmm0[1],xmm13[2],xmm0[2],xmm13[3],xmm0[3]
	movq	(%rsi,%rax,2), %xmm9            # xmm9 = mem[0],zero
	movq	8(%rsi,%rax,2), %xmm15          # xmm15 = mem[0],zero
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklwd	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1],xmm15[2],xmm0[2],xmm15[3],xmm0[3]
	pxor	%xmm3, %xmm3
	movdqa	%xmm14, %xmm0
	psubd	%xmm2, %xmm0
	movdqa	%xmm12, %xmm1
	psubd	%xmm5, %xmm1
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm9, %xmm0
	pshufd	$232, %xmm0, %xmm10             # xmm10 = xmm0[0,2,2,3]
	pshufd	$245, %xmm9, %xmm0              # xmm0 = xmm9[1,1,3,3]
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	pmuludq	%xmm15, %xmm1
	pshufd	$232, %xmm1, %xmm11             # xmm11 = xmm1[0,2,2,3]
	pshufd	$245, %xmm15, %xmm1             # xmm1 = xmm15[1,1,3,3]
	movdqa	%xmm1, -48(%rsp)                # 16-byte Spill
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1]
	movq	16(%rsi,%rax,2), %xmm7          # xmm7 = mem[0],zero
	punpcklwd	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1],xmm7[2],xmm3[2],xmm7[3],xmm3[3]
	movdqa	%xmm13, %xmm0
	psubd	%xmm4, %xmm0
	pshufd	$245, %xmm0, %xmm3              # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm7, %xmm0
	pshufd	$232, %xmm0, %xmm4              # xmm4 = xmm0[0,2,2,3]
	pshufd	$245, %xmm7, %xmm0              # xmm0 = xmm7[1,1,3,3]
	movdqa	%xmm0, -64(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm3
	pshufd	$232, %xmm3, %xmm0              # xmm0 = xmm3[0,2,2,3]
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	movq	24(%rdi,%rax,2), %xmm8          # xmm8 = mem[0],zero
	punpcklwd	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1],xmm3[2],xmm8[2],xmm3[3],xmm8[3]
	psrad	$16, %xmm3
	movq	24(%rdx,%rax,2), %xmm5          # xmm5 = mem[0],zero
	pxor	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1],xmm5[2],xmm0[2],xmm5[3],xmm0[3]
	movq	24(%rsi,%rax,2), %xmm6          # xmm6 = mem[0],zero
	punpcklwd	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1],xmm6[2],xmm0[2],xmm6[3],xmm0[3]
	movdqa	%xmm5, %xmm0
	psubd	%xmm3, %xmm0
	pshufd	$245, %xmm0, %xmm1              # xmm1 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm6, %xmm2              # xmm2 = xmm6[1,1,3,3]
	movdqa	%xmm2, -112(%rsp)               # 16-byte Spill
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	psrad	$16, %xmm10
	packssdw	%xmm10, %xmm10
	pxor	%xmm1, %xmm1
	psubw	%xmm10, %xmm1
	movdqa	%xmm1, -80(%rsp)                # 16-byte Spill
	psrad	$16, %xmm11
	packssdw	%xmm11, %xmm11
	pxor	%xmm10, %xmm10
	psubw	%xmm11, %xmm10
	psrad	$16, %xmm4
	packssdw	%xmm4, %xmm4
	pxor	%xmm11, %xmm11
	psubw	%xmm4, %xmm11
	psrad	$16, %xmm0
	packssdw	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	psubw	%xmm0, %xmm1
	movdqa	%xmm1, 16(%rsp)                 # 16-byte Spill
	paddd	(%rsp), %xmm14                  # 16-byte Folded Reload
	paddd	-16(%rsp), %xmm12               # 16-byte Folded Reload
	paddd	-128(%rsp), %xmm13              # 16-byte Folded Reload
	paddd	%xmm3, %xmm5
	pmuludq	%xmm14, %xmm9
	pshufd	$245, %xmm14, %xmm0             # xmm0 = xmm14[1,1,3,3]
	pmuludq	-32(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm9, %xmm3              # xmm3 = xmm9[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	pmuludq	%xmm12, %xmm15
	pshufd	$245, %xmm12, %xmm0             # xmm0 = xmm12[1,1,3,3]
	pmuludq	-48(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm15, %xmm4             # xmm4 = xmm15[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	pmuludq	%xmm13, %xmm7
	pshufd	$245, %xmm13, %xmm0             # xmm0 = xmm13[1,1,3,3]
	pmuludq	-64(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm7, %xmm2              # xmm2 = xmm7[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	pmuludq	%xmm5, %xmm6
	pshufd	$245, %xmm5, %xmm1              # xmm1 = xmm5[1,1,3,3]
	pmuludq	-112(%rsp), %xmm1               # 16-byte Folded Reload
	pshufd	$232, %xmm6, %xmm0              # xmm0 = xmm6[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movdqa	112(%rsp), %xmm1                # 16-byte Reload
	pxor	%xmm7, %xmm7
	movdqa	-96(%rsp), %xmm5                # 16-byte Reload
	pcmpgtw	%xmm7, %xmm5
	psrad	$16, %xmm3
	packssdw	%xmm3, %xmm3
	pand	%xmm5, %xmm3
	pandn	-80(%rsp), %xmm5                # 16-byte Folded Reload
	por	%xmm3, %xmm5
	movdqa	%xmm5, %xmm9
	movdqa	80(%rsp), %xmm3                 # 16-byte Reload
	movdqa	32(%rsp), %xmm5                 # 16-byte Reload
	pcmpgtw	%xmm7, %xmm5
	psrad	$16, %xmm4
	packssdw	%xmm4, %xmm4
	pand	%xmm5, %xmm4
	pandn	%xmm10, %xmm5
	por	%xmm4, %xmm5
	movdqa	%xmm5, %xmm6
	movdqa	64(%rsp), %xmm4                 # 16-byte Reload
	movdqa	48(%rsp), %xmm5                 # 16-byte Reload
	pcmpgtw	%xmm7, %xmm5
	psrad	$16, %xmm2
	packssdw	%xmm2, %xmm2
	pand	%xmm5, %xmm2
	pandn	%xmm11, %xmm5
	por	%xmm2, %xmm5
	movdqa	96(%rsp), %xmm2                 # 16-byte Reload
	pcmpgtw	%xmm7, %xmm8
	psrad	$16, %xmm0
	packssdw	%xmm0, %xmm0
	pand	%xmm8, %xmm0
	pandn	16(%rsp), %xmm8                 # 16-byte Folded Reload
	por	%xmm0, %xmm8
	movq	%xmm9, (%rdi,%rax,2)
	punpcklwd	%xmm9, %xmm0            # xmm0 = xmm0[0],xmm9[0],xmm0[1],xmm9[1],xmm0[2],xmm9[2],xmm0[3],xmm9[3]
	psrad	$16, %xmm0
	por	%xmm0, %xmm4
	movq	%xmm6, 8(%rdi,%rax,2)
	punpcklwd	%xmm6, %xmm0            # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1],xmm0[2],xmm6[2],xmm0[3],xmm6[3]
	psrad	$16, %xmm0
	por	%xmm0, %xmm3
	movq	%xmm5, 16(%rdi,%rax,2)
	punpcklwd	%xmm5, %xmm0            # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1],xmm0[2],xmm5[2],xmm0[3],xmm5[3]
	psrad	$16, %xmm0
	por	%xmm0, %xmm2
	movq	%xmm8, 24(%rdi,%rax,2)
	punpcklwd	%xmm8, %xmm0            # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1],xmm0[2],xmm8[2],xmm0[3],xmm8[3]
	psrad	$16, %xmm0
	por	%xmm0, %xmm1
	addq	$16, %rax
	cmpq	$64, %rax
	jne	.LBB1_3
# %bb.4:                                # %middle.block
	por	%xmm4, %xmm3
	por	%xmm3, %xmm2
	por	%xmm2, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	por	%xmm1, %xmm0
	pshufd	$85, %xmm0, %xmm1               # xmm1 = xmm0[1,1,1,1]
	por	%xmm0, %xmm1
	movd	%xmm1, %ecx
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
.LBB1_5:                                # %for.cond.cleanup
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	retq
.LBB1_6:                                # %for.body.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_9:                                # %if.else
                                        #   in Loop: Header=BB1_7 Depth=1
	subl	%r10d, %r8d
	imull	%r9d, %r8d
	shrl	$16, %r8d
	negl	%r8d
.LBB1_10:                               # %if.end
                                        #   in Loop: Header=BB1_7 Depth=1
	movw	%r8w, (%rdi,%rax,2)
	movswl	%r8w, %r8d
	orl	%r8d, %ecx
	incq	%rax
	cmpq	$64, %rax
	je	.LBB1_5
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%rax,2), %r10d
	movzwl	(%rdx,%rax,2), %r8d
	movzwl	(%rsi,%rax,2), %r9d
	testl	%r10d, %r10d
	jle	.LBB1_9
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB1_7 Depth=1
	addl	%r10d, %r8d
	imull	%r9d, %r8d
	shrl	$16, %r8d
	jmp	.LBB1_10
.Lfunc_end1:
	.size	quant_8x8, .Lfunc_end1-quant_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function quant_4x4
	.type	quant_4x4,@function
quant_4x4:                              # @quant_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	leaq	32(%rdx), %rax
	cmpq	%rdi, %rax
	seta	%r8b
	leaq	32(%rdi), %rcx
	cmpq	%rdx, %rcx
	seta	%r9b
	leaq	32(%rsi), %rax
	cmpq	%rdi, %rax
	seta	%al
	cmpq	%rsi, %rcx
	seta	%cl
	testb	%r9b, %r8b
	jne	.LBB2_2
# %bb.1:                                # %entry
	andb	%cl, %al
	jne	.LBB2_2
# %bb.5:                                # %vector.body
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movdqa	%xmm1, 48(%rsp)                 # 16-byte Spill
	movq	8(%rdi), %xmm9                  # xmm9 = mem[0],zero
	movq	16(%rdi), %xmm0                 # xmm0 = mem[0],zero
	movdqa	%xmm0, -128(%rsp)               # 16-byte Spill
	punpcklwd	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	psrad	$16, %xmm2
	movdqa	%xmm2, 16(%rsp)                 # 16-byte Spill
	punpcklwd	%xmm9, %xmm1            # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1],xmm1[2],xmm9[2],xmm1[3],xmm9[3]
	psrad	$16, %xmm1
	movdqa	%xmm1, %xmm3
	movdqa	%xmm1, (%rsp)                   # 16-byte Spill
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movdqa	%xmm0, %xmm4
	movdqa	%xmm0, -112(%rsp)               # 16-byte Spill
	pxor	%xmm7, %xmm7
	movq	(%rdx), %xmm8                   # xmm8 = mem[0],zero
	movq	8(%rdx), %xmm0                  # xmm0 = mem[0],zero
	punpcklwd	%xmm7, %xmm8            # xmm8 = xmm8[0],xmm7[0],xmm8[1],xmm7[1],xmm8[2],xmm7[2],xmm8[3],xmm7[3]
	punpcklwd	%xmm7, %xmm0            # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1],xmm0[2],xmm7[2],xmm0[3],xmm7[3]
	movdqa	%xmm0, %xmm1
	movdqa	%xmm0, 32(%rsp)                 # 16-byte Spill
	movq	(%rsi), %xmm11                  # xmm11 = mem[0],zero
	movq	8(%rsi), %xmm5                  # xmm5 = mem[0],zero
	punpcklwd	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1],xmm11[2],xmm7[2],xmm11[3],xmm7[3]
	punpcklwd	%xmm7, %xmm5            # xmm5 = xmm5[0],xmm7[0],xmm5[1],xmm7[1],xmm5[2],xmm7[2],xmm5[3],xmm7[3]
	movdqa	%xmm8, %xmm0
	psubd	%xmm2, %xmm0
	psubd	%xmm3, %xmm1
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm11, %xmm0
	pshufd	$232, %xmm0, %xmm14             # xmm14 = xmm0[0,2,2,3]
	pshufd	$245, %xmm11, %xmm0             # xmm0 = xmm11[1,1,3,3]
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm14           # xmm14 = xmm14[0],xmm0[0],xmm14[1],xmm0[1]
	pshufd	$245, %xmm1, %xmm0              # xmm0 = xmm1[1,1,3,3]
	movdqa	%xmm5, -80(%rsp)                # 16-byte Spill
	pmuludq	%xmm5, %xmm1
	pshufd	$232, %xmm1, %xmm15             # xmm15 = xmm1[0,2,2,3]
	pshufd	$245, %xmm5, %xmm1              # xmm1 = xmm5[1,1,3,3]
	movdqa	%xmm1, -32(%rsp)                # 16-byte Spill
	pmuludq	%xmm1, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm15           # xmm15 = xmm15[0],xmm0[0],xmm15[1],xmm0[1]
	movq	16(%rdx), %xmm13                # xmm13 = mem[0],zero
	punpcklwd	%xmm7, %xmm13           # xmm13 = xmm13[0],xmm7[0],xmm13[1],xmm7[1],xmm13[2],xmm7[2],xmm13[3],xmm7[3]
	movq	16(%rsi), %xmm12                # xmm12 = mem[0],zero
	punpcklwd	%xmm7, %xmm12           # xmm12 = xmm12[0],xmm7[0],xmm12[1],xmm7[1],xmm12[2],xmm7[2],xmm12[3],xmm7[3]
	movdqa	%xmm13, %xmm0
	psubd	%xmm4, %xmm0
	pshufd	$245, %xmm0, %xmm2              # xmm2 = xmm0[1,1,3,3]
	pmuludq	%xmm12, %xmm0
	pshufd	$232, %xmm0, %xmm3              # xmm3 = xmm0[0,2,2,3]
	pshufd	$245, %xmm12, %xmm0             # xmm0 = xmm12[1,1,3,3]
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3]
	punpckldq	%xmm0, %xmm3            # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	movq	24(%rdi), %xmm10                # xmm10 = mem[0],zero
	punpcklwd	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0],xmm5[1],xmm10[1],xmm5[2],xmm10[2],xmm5[3],xmm10[3]
	psrad	$16, %xmm5
	movq	24(%rdx), %xmm4                 # xmm4 = mem[0],zero
	punpcklwd	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1],xmm4[2],xmm7[2],xmm4[3],xmm7[3]
	movq	24(%rsi), %xmm6                 # xmm6 = mem[0],zero
	punpcklwd	%xmm7, %xmm6            # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1],xmm6[2],xmm7[2],xmm6[3],xmm7[3]
	movdqa	%xmm4, %xmm0
	psubd	%xmm5, %xmm0
	pshufd	$245, %xmm0, %xmm1              # xmm1 = xmm0[1,1,3,3]
	pmuludq	%xmm6, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshufd	$245, %xmm6, %xmm2              # xmm2 = xmm6[1,1,3,3]
	movdqa	%xmm2, -96(%rsp)                # 16-byte Spill
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	psrad	$16, %xmm14
	packssdw	%xmm14, %xmm14
	pxor	%xmm1, %xmm1
	psubw	%xmm14, %xmm1
	movdqa	%xmm1, -64(%rsp)                # 16-byte Spill
	psrad	$16, %xmm15
	packssdw	%xmm15, %xmm15
	pxor	%xmm14, %xmm14
	psubw	%xmm15, %xmm14
	psrad	$16, %xmm3
	packssdw	%xmm3, %xmm3
	pxor	%xmm15, %xmm15
	psubw	%xmm3, %xmm15
	movdqa	48(%rsp), %xmm3                 # 16-byte Reload
	pcmpgtw	%xmm7, %xmm3
	pcmpgtw	%xmm7, %xmm9
	movdqa	-128(%rsp), %xmm1               # 16-byte Reload
	pcmpgtw	%xmm7, %xmm1
	movdqa	%xmm1, -128(%rsp)               # 16-byte Spill
	pcmpgtw	%xmm7, %xmm10
	psrad	$16, %xmm0
	packssdw	%xmm0, %xmm0
	psubw	%xmm0, %xmm7
	paddd	16(%rsp), %xmm8                 # 16-byte Folded Reload
	movdqa	32(%rsp), %xmm1                 # 16-byte Reload
	paddd	(%rsp), %xmm1                   # 16-byte Folded Reload
	paddd	-112(%rsp), %xmm13              # 16-byte Folded Reload
	paddd	%xmm5, %xmm4
	pmuludq	%xmm8, %xmm11
	pshufd	$245, %xmm8, %xmm0              # xmm0 = xmm8[1,1,3,3]
	pmuludq	-16(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm11, %xmm5             # xmm5 = xmm11[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm5            # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	movdqa	%xmm1, %xmm0
	movdqa	-80(%rsp), %xmm1                # 16-byte Reload
	pmuludq	%xmm0, %xmm1
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	-32(%rsp), %xmm0                # 16-byte Folded Reload
	pshufd	$232, %xmm1, %xmm8              # xmm8 = xmm1[0,2,2,3]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1]
	pmuludq	%xmm13, %xmm12
	pshufd	$245, %xmm13, %xmm1             # xmm1 = xmm13[1,1,3,3]
	pmuludq	-48(%rsp), %xmm1                # 16-byte Folded Reload
	pshufd	$232, %xmm12, %xmm0             # xmm0 = xmm12[0,2,2,3]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	pmuludq	%xmm4, %xmm6
	pshufd	$245, %xmm4, %xmm2              # xmm2 = xmm4[1,1,3,3]
	pmuludq	-96(%rsp), %xmm2                # 16-byte Folded Reload
	pshufd	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	psrad	$16, %xmm5
	packssdw	%xmm5, %xmm5
	movdqa	%xmm3, %xmm2
	pand	%xmm3, %xmm5
	pandn	-64(%rsp), %xmm2                # 16-byte Folded Reload
	por	%xmm5, %xmm2
	movdqa	%xmm2, %xmm3
	psrad	$16, %xmm8
	packssdw	%xmm8, %xmm8
	pand	%xmm9, %xmm8
	pandn	%xmm14, %xmm9
	por	%xmm8, %xmm9
	psrad	$16, %xmm0
	packssdw	%xmm0, %xmm0
	movdqa	-128(%rsp), %xmm2               # 16-byte Reload
	pand	%xmm2, %xmm0
	pandn	%xmm15, %xmm2
	por	%xmm0, %xmm2
	psrad	$16, %xmm1
	packssdw	%xmm1, %xmm1
	pand	%xmm10, %xmm1
	pandn	%xmm7, %xmm10
	por	%xmm1, %xmm10
	movq	%xmm3, (%rdi)
	movq	%xmm9, 8(%rdi)
	por	%xmm3, %xmm9
	movq	%xmm2, 16(%rdi)
	por	%xmm2, %xmm9
	movq	%xmm10, 24(%rdi)
	por	%xmm10, %xmm9
	pshufd	$85, %xmm9, %xmm0               # xmm0 = xmm9[1,1,1,1]
	por	%xmm9, %xmm0
	movdqa	%xmm0, %xmm1
	psrld	$16, %xmm1
	por	%xmm0, %xmm1
	movd	%xmm1, %eax
	movswl	%ax, %ecx
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
.LBB2_6:                                # %for.cond.cleanup
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	retq
.LBB2_2:                                # %for.body.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_7:                                # %if.else
                                        #   in Loop: Header=BB2_3 Depth=1
	subl	%r10d, %r8d
	imull	%r9d, %r8d
	shrl	$16, %r8d
	negl	%r8d
.LBB2_8:                                # %if.end
                                        #   in Loop: Header=BB2_3 Depth=1
	movw	%r8w, (%rdi,%rax,2)
	movswl	%r8w, %r8d
	orl	%r8d, %ecx
	incq	%rax
	cmpq	$16, %rax
	je	.LBB2_6
.LBB2_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%rax,2), %r10d
	movzwl	(%rdx,%rax,2), %r8d
	movzwl	(%rsi,%rax,2), %r9d
	testl	%r10d, %r10d
	jle	.LBB2_7
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB2_3 Depth=1
	addl	%r10d, %r8d
	imull	%r9d, %r8d
	shrl	$16, %r8d
	jmp	.LBB2_8
.Lfunc_end2:
	.size	quant_4x4, .Lfunc_end2-quant_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function quant_4x4_dc
	.type	quant_4x4_dc,@function
quant_4x4_dc:                           # @quant_4x4_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%edx, %r10d
	movswl	(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB3_2
# %bb.1:                                # %if.then
	addl	%r10d, %eax
	imull	%esi, %eax
	shrl	$16, %eax
	movw	%ax, (%rdi)
	movswl	2(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_4
.LBB3_5:                                # %if.then.1
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %edx
	movw	%dx, 2(%rdi)
	movswl	4(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_7
.LBB3_8:                                # %if.then.2
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r8d
	jmp	.LBB3_9
.LBB3_2:                                # %if.else
	movl	%r10d, %ecx
	subl	%eax, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	negl	%ecx
	movl	%ecx, %eax
	movw	%ax, (%rdi)
	movswl	2(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_5
.LBB3_4:                                # %if.else.1
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%esi, %edx
	shrl	$16, %edx
	negl	%edx
	movw	%dx, 2(%rdi)
	movswl	4(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_8
.LBB3_7:                                # %if.else.2
	movl	%r10d, %r8d
	subl	%ecx, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	negl	%r8d
.LBB3_9:                                # %if.end.2
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movw	%r8w, 4(%rdi)
	movswl	6(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_10
# %bb.11:                               # %if.then.3
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %ebp
	movw	%bp, 6(%rdi)
	movswl	8(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_13
.LBB3_14:                               # %if.then.4
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r9d
	movw	%r9w, 8(%rdi)
	movswl	10(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_16
.LBB3_17:                               # %if.then.5
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r11d
	movw	%r11w, 10(%rdi)
	movswl	12(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_19
.LBB3_20:                               # %if.then.6
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %ebx
	movw	%bx, 12(%rdi)
	movswl	14(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_22
.LBB3_23:                               # %if.then.7
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r14d
	jmp	.LBB3_24
.LBB3_10:                               # %if.else.3
	movl	%r10d, %ebp
	subl	%ecx, %ebp
	imull	%esi, %ebp
	shrl	$16, %ebp
	negl	%ebp
	movw	%bp, 6(%rdi)
	movswl	8(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_14
.LBB3_13:                               # %if.else.4
	movl	%r10d, %r9d
	subl	%ecx, %r9d
	imull	%esi, %r9d
	shrl	$16, %r9d
	negl	%r9d
	movw	%r9w, 8(%rdi)
	movswl	10(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_17
.LBB3_16:                               # %if.else.5
	movl	%r10d, %r11d
	subl	%ecx, %r11d
	imull	%esi, %r11d
	shrl	$16, %r11d
	negl	%r11d
	movw	%r11w, 10(%rdi)
	movswl	12(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_20
.LBB3_19:                               # %if.else.6
	movl	%r10d, %ebx
	subl	%ecx, %ebx
	imull	%esi, %ebx
	shrl	$16, %ebx
	negl	%ebx
	movw	%bx, 12(%rdi)
	movswl	14(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_23
.LBB3_22:                               # %if.else.7
	movl	%r10d, %r14d
	subl	%ecx, %r14d
	imull	%esi, %r14d
	shrl	$16, %r14d
	negl	%r14d
.LBB3_24:                               # %if.end.7
	movl	%r14d, -16(%rsp)                # 4-byte Spill
	movw	%r14w, 14(%rdi)
	movswl	16(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_25
# %bb.26:                               # %if.then.8
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r14d
	movw	%r14w, 16(%rdi)
	movswl	18(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_28
.LBB3_29:                               # %if.then.9
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r15d
	movw	%r15w, 18(%rdi)
	movswl	20(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_31
.LBB3_32:                               # %if.then.10
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r12d
	movw	%r12w, 20(%rdi)
	movswl	22(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB3_34
.LBB3_35:                               # %if.then.11
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %r13d
	jmp	.LBB3_36
.LBB3_25:                               # %if.else.8
	movl	%r10d, %r14d
	subl	%ecx, %r14d
	imull	%esi, %r14d
	shrl	$16, %r14d
	negl	%r14d
	movw	%r14w, 16(%rdi)
	movswl	18(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_29
.LBB3_28:                               # %if.else.9
	movl	%r10d, %r15d
	subl	%ecx, %r15d
	imull	%esi, %r15d
	shrl	$16, %r15d
	negl	%r15d
	movw	%r15w, 18(%rdi)
	movswl	20(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_32
.LBB3_31:                               # %if.else.10
	movl	%r10d, %r12d
	subl	%ecx, %r12d
	imull	%esi, %r12d
	shrl	$16, %r12d
	negl	%r12d
	movw	%r12w, 20(%rdi)
	movswl	22(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB3_35
.LBB3_34:                               # %if.else.11
	movl	%r10d, %r13d
	subl	%ecx, %r13d
	imull	%esi, %r13d
	shrl	$16, %r13d
	negl	%r13d
.LBB3_36:                               # %if.end.11
	movl	%edx, -4(%rsp)                  # 4-byte Spill
	movw	%r13w, 22(%rdi)
	movswl	24(%rdi), %ecx
	testl	%ecx, %ecx
	movl	%r8d, -8(%rsp)                  # 4-byte Spill
	jle	.LBB3_37
# %bb.38:                               # %if.then.12
	addl	%r10d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movl	%ecx, %edx
	movw	%dx, 24(%rdi)
	movswl	26(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_40
.LBB3_41:                               # %if.then.13
	addl	%r10d, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	movl	%r8d, %ecx
	jmp	.LBB3_42
.LBB3_37:                               # %if.else.12
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%esi, %edx
	shrl	$16, %edx
	negl	%edx
	movw	%dx, 24(%rdi)
	movswl	26(%rdi), %r8d
	testl	%r8d, %r8d
	jg	.LBB3_41
.LBB3_40:                               # %if.else.13
	movl	%r10d, %ecx
	subl	%r8d, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	negl	%ecx
.LBB3_42:                               # %if.end.13
	movl	%r9d, -12(%rsp)                 # 4-byte Spill
	movw	%cx, 26(%rdi)
	movswl	28(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_43
# %bb.44:                               # %if.then.14
	addl	%r10d, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	movl	%r8d, %r9d
	movw	%r9w, 28(%rdi)
	movswl	30(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB3_46
.LBB3_47:                               # %if.then.15
	addl	%r10d, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	movl	%r8d, %r10d
	jmp	.LBB3_48
.LBB3_43:                               # %if.else.14
	movl	%r10d, %r9d
	subl	%r8d, %r9d
	imull	%esi, %r9d
	shrl	$16, %r9d
	negl	%r9d
	movw	%r9w, 28(%rdi)
	movswl	30(%rdi), %r8d
	testl	%r8d, %r8d
	jg	.LBB3_47
.LBB3_46:                               # %if.else.15
	subl	%r8d, %r10d
	imull	%esi, %r10d
	shrl	$16, %r10d
	negl	%r10d
.LBB3_48:                               # %if.end.15
	orl	-4(%rsp), %eax                  # 4-byte Folded Reload
	orl	-8(%rsp), %ebp                  # 4-byte Folded Reload
	orl	%eax, %ebp
	orl	-12(%rsp), %r11d                # 4-byte Folded Reload
	orl	%r11d, %ebx
	orl	%ebp, %ebx
	orl	-16(%rsp), %r14d                # 4-byte Folded Reload
	orl	%r14d, %r15d
	orl	%r15d, %r12d
	orl	%ebx, %r12d
	orl	%r13d, %edx
	orl	%edx, %ecx
	orl	%ecx, %r9d
	orl	%r12d, %r9d
	movw	%r10w, 30(%rdi)
	xorl	%eax, %eax
	orw	%r10w, %r9w
	setne	%al
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
	.size	quant_4x4_dc, .Lfunc_end3-quant_4x4_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function quant_2x2_dc
	.type	quant_2x2_dc,@function
quant_2x2_dc:                           # @quant_2x2_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movswl	(%rdi), %eax
	testl	%eax, %eax
	jle	.LBB4_2
# %bb.1:                                # %if.then
	addl	%edx, %eax
	imull	%esi, %eax
	shrl	$16, %eax
	movw	%ax, (%rdi)
	movswl	2(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.LBB4_5
.LBB4_4:                                # %if.then19
	addl	%edx, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	movw	%cx, 2(%rdi)
	movswl	4(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.LBB4_8
.LBB4_7:                                # %if.then44
	addl	%edx, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	movw	%r8w, 4(%rdi)
	movswl	6(%rdi), %r9d
	testl	%r9d, %r9d
	jle	.LBB4_11
.LBB4_10:                               # %if.then69
	addl	%edx, %r9d
	imull	%esi, %r9d
	shrl	$16, %r9d
	jmp	.LBB4_12
.LBB4_2:                                # %if.else
	movl	%edx, %ecx
	subl	%eax, %ecx
	imull	%esi, %ecx
	shrl	$16, %ecx
	negl	%ecx
	movl	%ecx, %eax
	movw	%ax, (%rdi)
	movswl	2(%rdi), %ecx
	testl	%ecx, %ecx
	jg	.LBB4_4
.LBB4_5:                                # %if.else27
	movl	%edx, %r8d
	subl	%ecx, %r8d
	imull	%esi, %r8d
	shrl	$16, %r8d
	negl	%r8d
	movl	%r8d, %ecx
	movw	%cx, 2(%rdi)
	movswl	4(%rdi), %r8d
	testl	%r8d, %r8d
	jg	.LBB4_7
.LBB4_8:                                # %if.else52
	movl	%edx, %r9d
	subl	%r8d, %r9d
	imull	%esi, %r9d
	shrl	$16, %r9d
	negl	%r9d
	movl	%r9d, %r8d
	movw	%r8w, 4(%rdi)
	movswl	6(%rdi), %r9d
	testl	%r9d, %r9d
	jg	.LBB4_10
.LBB4_11:                               # %if.else77
	subl	%r9d, %edx
	imull	%esi, %edx
	shrl	$16, %edx
	negl	%edx
	movl	%edx, %r9d
.LBB4_12:                               # %if.end86
	movw	%r9w, 6(%rdi)
	orl	%eax, %ecx
	orl	%ecx, %r8d
	xorl	%eax, %eax
	orw	%r9w, %r8w
	setne	%al
	retq
.Lfunc_end4:
	.size	quant_2x2_dc, .Lfunc_end4-quant_2x2_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function dequant_4x4
	.type	dequant_4x4,@function
dequant_4x4:                            # @dequant_4x4
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%edx, %rcx
	imulq	$715827883, %rcx, %rax          # imm = 0x2AAAAAAB
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	leal	(%rax,%rax), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%ecx, %r8d
	subl	%edx, %r8d
	cmpl	$24, %ecx
	jl	.LBB5_2
# %bb.1:                                # %for.cond.preheader
	movl	%r8d, %edx
	movzwl	(%rdi), %r8d
	shlq	$6, %rdx
	imull	(%rsi,%rdx), %r8d
	addb	$-4, %al
	movl	%eax, %ecx
	shll	%cl, %r8d
	movw	%r8w, (%rdi)
	movzwl	2(%rdi), %r8d
	imull	4(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 2(%rdi)
	movzwl	4(%rdi), %r8d
	imull	8(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 4(%rdi)
	movzwl	6(%rdi), %r8d
	imull	12(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 6(%rdi)
	movzwl	8(%rdi), %r8d
	imull	16(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 8(%rdi)
	movzwl	10(%rdi), %r8d
	imull	20(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 10(%rdi)
	movzwl	12(%rdi), %r8d
	imull	24(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 12(%rdi)
	movzwl	14(%rdi), %r8d
	imull	28(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 14(%rdi)
	movzwl	16(%rdi), %r8d
	imull	32(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 16(%rdi)
	movzwl	18(%rdi), %r8d
	imull	36(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 18(%rdi)
	movzwl	20(%rdi), %r8d
	imull	40(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 20(%rdi)
	movzwl	22(%rdi), %r8d
	imull	44(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 22(%rdi)
	movzwl	24(%rdi), %r8d
	imull	48(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 24(%rdi)
	movzwl	26(%rdi), %r8d
	imull	52(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 26(%rdi)
	movzwl	28(%rdi), %r8d
	imull	56(%rsi,%rdx), %r8d
	shll	%cl, %r8d
	movw	%r8w, 28(%rdi)
	movzwl	30(%rdi), %r9d
	addq	$30, %rdi
	imull	60(%rsi,%rdx), %r9d
	shll	%cl, %r9d
	movw	%r9w, (%rdi)
	retq
.LBB5_2:                                # %if.else
	movb	$3, %cl
	subb	%al, %cl
	movl	$1, %edx
	shll	%cl, %edx
	movslq	%r8d, %r8
	movswl	(%rdi), %r9d
	shlq	$6, %r8
	imull	(%rsi,%r8), %r9d
	addl	%edx, %r9d
	movb	$4, %cl
	subb	%al, %cl
	sarl	%cl, %r9d
	movw	%r9w, (%rdi)
	movswl	2(%rdi), %eax
	imull	4(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 2(%rdi)
	movswl	4(%rdi), %eax
	imull	8(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 4(%rdi)
	movswl	6(%rdi), %eax
	imull	12(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 6(%rdi)
	movswl	8(%rdi), %eax
	imull	16(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 8(%rdi)
	movswl	10(%rdi), %eax
	imull	20(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 10(%rdi)
	movswl	12(%rdi), %eax
	imull	24(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 12(%rdi)
	movswl	14(%rdi), %eax
	imull	28(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 14(%rdi)
	movswl	16(%rdi), %eax
	imull	32(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 16(%rdi)
	movswl	18(%rdi), %eax
	imull	36(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 18(%rdi)
	movswl	20(%rdi), %eax
	imull	40(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 20(%rdi)
	movswl	22(%rdi), %eax
	imull	44(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 22(%rdi)
	movswl	24(%rdi), %eax
	imull	48(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 24(%rdi)
	movswl	26(%rdi), %eax
	imull	52(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 26(%rdi)
	movswl	28(%rdi), %eax
	imull	56(%rsi,%r8), %eax
	addl	%edx, %eax
	sarl	%cl, %eax
	movw	%ax, 28(%rdi)
	movswl	30(%rdi), %r9d
	addq	$30, %rdi
	imull	60(%rsi,%r8), %r9d
	addl	%edx, %r9d
	sarl	%cl, %r9d
	movw	%r9w, (%rdi)
	retq
.Lfunc_end5:
	.size	dequant_4x4, .Lfunc_end5-dequant_4x4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function dequant_4x4_dc
	.type	dequant_4x4_dc,@function
dequant_4x4_dc:                         # @dequant_4x4_dc
	.cfi_startproc
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	movslq	%edx, %rax
	imulq	$715827883, %rax, %rax          # imm = 0x2AAAAAAB
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	addl	%ecx, %eax
	movswl	(%rdi), %r8d
	cmpl	$36, %edx
	jl	.LBB6_2
# %bb.1:                                # %if.then
	movl	%edx, %ecx
	movl	$2863311531, %r9d               # imm = 0xAAAAAAAB
	imulq	%rcx, %r9
	shrq	$34, %r9
	addl	%r9d, %r9d
	leal	(%r9,%r9,2), %ecx
	subl	%ecx, %edx
	shll	$6, %edx
	movl	(%rsi,%rdx), %edx
	addb	$-6, %al
	movl	%eax, %ecx
	shll	%cl, %edx
	movzwl	14(%rdi), %eax
	movd	%eax, %xmm0
	movzwl	12(%rdi), %eax
	movd	%eax, %xmm1
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movzwl	10(%rdi), %eax
	movd	%eax, %xmm0
	movzwl	8(%rdi), %eax
	movd	%eax, %xmm2
	punpcklwd	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movzwl	6(%rdi), %eax
	movd	%eax, %xmm0
	movzwl	4(%rdi), %eax
	movd	%eax, %xmm1
	punpcklwd	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3]
	movd	%r8d, %xmm0
	movzwl	2(%rdi), %eax
	movd	%eax, %xmm3
	punpcklwd	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1],xmm0[2],xmm3[2],xmm0[3],xmm3[3]
	punpckldq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	punpcklqdq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0]
	movd	%edx, %xmm1
	pshuflw	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	pmullw	%xmm1, %xmm0
	movdqu	%xmm0, (%rdi)
	movdqu	16(%rdi), %xmm0
	pmullw	%xmm1, %xmm0
	movdqu	%xmm0, 16(%rdi)
	retq
.LBB6_2:                                # %if.else
	leal	(%rax,%rax), %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %edx
	movslq	%edx, %rcx
	shlq	$6, %rcx
	movl	(%rsi,%rcx), %edx
	movb	$5, %cl
	subb	%al, %cl
	movl	$1, %esi
	shll	%cl, %esi
	movl	$6, %ecx
	subl	%eax, %ecx
	imull	%edx, %r8d
	addl	%esi, %r8d
	sarl	%cl, %r8d
	movw	%r8w, (%rdi)
	movdqu	2(%rdi), %xmm0
	punpckhwd	%xmm0, %xmm1            # xmm1 = xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	psrad	$16, %xmm1
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	psrad	$16, %xmm0
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	pshufd	$245, %xmm0, %xmm3              # xmm3 = xmm0[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm3, %xmm0            # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	pshufd	$245, %xmm1, %xmm3              # xmm3 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm3, %xmm1            # xmm1 = xmm1[0],xmm3[0],xmm1[1],xmm3[1]
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	paddd	%xmm2, %xmm1
	paddd	%xmm2, %xmm0
	movd	%ecx, %xmm2
	psrad	%xmm2, %xmm0
	psrad	%xmm2, %xmm1
	pslld	$16, %xmm1
	psrad	$16, %xmm1
	pslld	$16, %xmm0
	psrad	$16, %xmm0
	packssdw	%xmm1, %xmm0
	movdqu	%xmm0, 2(%rdi)
	movswl	18(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 18(%rdi)
	movswl	20(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 20(%rdi)
	movswl	22(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 22(%rdi)
	movswl	24(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 24(%rdi)
	movswl	26(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 26(%rdi)
	movswl	28(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
	sarl	%cl, %eax
	movw	%ax, 28(%rdi)
	movswl	30(%rdi), %eax
	imull	%edx, %eax
	addl	%esi, %eax
                                        # kill: def $cl killed $cl killed $ecx
	sarl	%cl, %eax
	movw	%ax, 30(%rdi)
	retq
.Lfunc_end6:
	.size	dequant_4x4_dc, .Lfunc_end6-dequant_4x4_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function dequant_8x8
	.type	dequant_8x8,@function
dequant_8x8:                            # @dequant_8x8
	.cfi_startproc
# %bb.0:                                # %entry
	movslq	%edx, %rdx
	imulq	$715827883, %rdx, %rax          # imm = 0x2AAAAAAB
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	leal	(%rax,%rcx), %r8d
	leal	(%r8,%r8), %r9d
	leal	(%r9,%r9,2), %r10d
	movl	%edx, %r9d
	subl	%r10d, %r9d
	cmpl	$36, %edx
	jl	.LBB7_6
# %bb.1:                                # %for.cond.preheader
	addl	%eax, %ecx
	addl	$-6, %ecx
	movl	%r9d, %eax
	leaq	128(%rdi), %rdx
	shlq	$8, %rax
	leaq	(%rsi,%rax), %r8
	addq	$256, %r8                       # imm = 0x100
	cmpq	%rdi, %r8
	setbe	%r8b
	leaq	(%rsi,%rax), %r9
	cmpq	%rdx, %r9
	setae	%dl
	orb	%r8b, %dl
	jne	.LBB7_4
# %bb.2:                                # %for.body.preheader
	addq	%rsi, %rax
	addq	$4, %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi,%rdx,2), %esi
	imull	-4(%rax,%rdx,4), %esi
	shll	%cl, %esi
	movw	%si, (%rdi,%rdx,2)
	movzwl	2(%rdi,%rdx,2), %esi
	imull	(%rax,%rdx,4), %esi
	shll	%cl, %esi
	movw	%si, 2(%rdi,%rdx,2)
	addq	$2, %rdx
	cmpq	$64, %rdx
	jne	.LBB7_3
	jmp	.LBB7_9
.LBB7_6:                                # %if.else
	movl	$6, %eax
	movb	$5, %cl
	subb	%r8b, %cl
	movl	$1, %edx
	shll	%cl, %edx
	subl	%r8d, %eax
	movslq	%r9d, %rcx
	leaq	128(%rdi), %r8
	shlq	$8, %rcx
	leaq	(%rsi,%rcx), %r9
	addq	$256, %r9                       # imm = 0x100
	cmpq	%rdi, %r9
	setbe	%r9b
	leaq	(%rsi,%rcx), %r10
	cmpq	%r8, %r10
	setae	%r8b
	orb	%r9b, %r8b
	jne	.LBB7_10
# %bb.7:                                # %for.body17.preheader
	addq	%rcx, %rsi
	addq	$4, %rsi
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB7_8:                                # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%r8,2), %r9d
	imull	-4(%rsi,%r8,4), %r9d
	addl	%edx, %r9d
	movl	%eax, %ecx
	sarl	%cl, %r9d
	movw	%r9w, (%rdi,%r8,2)
	movswl	2(%rdi,%r8,2), %r9d
	imull	(%rsi,%r8,4), %r9d
	addl	%edx, %r9d
	sarl	%cl, %r9d
	movw	%r9w, 2(%rdi,%r8,2)
	addq	$2, %r8
	cmpq	$64, %r8
	jne	.LBB7_8
.LBB7_9:                                # %if.end
	retq
.LBB7_4:                                # %vector.body83
	movq	(%rdi), %xmm2                   # xmm2 = mem[0],zero
	movq	8(%rdi), %xmm5                  # xmm5 = mem[0],zero
	movq	16(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	24(%rdi), %xmm0                 # xmm0 = mem[0],zero
	punpcklwd	%xmm2, %xmm2            # xmm2 = xmm2[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm5, %xmm5            # xmm5 = xmm5[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3]
	movdqu	(%rsi,%rax), %xmm1
	movdqu	16(%rsi,%rax), %xmm6
	movdqu	32(%rsi,%rax), %xmm7
	movdqu	48(%rsi,%rax), %xmm4
	pshufd	$245, %xmm1, %xmm8              # xmm8 = xmm1[1,1,3,3]
	pmuludq	%xmm2, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2              # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pshufd	$245, %xmm6, %xmm8              # xmm8 = xmm6[1,1,3,3]
	pmuludq	%xmm5, %xmm6
	pshufd	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm8, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm2            # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	pshufd	$245, %xmm7, %xmm5              # xmm5 = xmm7[1,1,3,3]
	pmuludq	%xmm3, %xmm7
	pshufd	$232, %xmm7, %xmm6              # xmm6 = xmm7[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm5, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm4, %xmm3              # xmm3 = xmm4[1,1,3,3]
	pmuludq	%xmm0, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0              # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm3, %xmm0
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	movd	%ecx, %xmm0
	pslld	%xmm0, %xmm1
	pslld	%xmm0, %xmm2
	pslld	%xmm0, %xmm6
	pslld	%xmm0, %xmm4
	pshuflw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm6, %xmm3              # xmm3 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	movq	%xmm1, (%rdi)
	movq	%xmm2, 8(%rdi)
	movq	%xmm3, 16(%rdi)
	movq	%xmm4, 24(%rdi)
	movq	32(%rdi), %xmm4                 # xmm4 = mem[0],zero
	movq	40(%rdi), %xmm6                 # xmm6 = mem[0],zero
	movq	48(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	56(%rdi), %xmm1                 # xmm1 = mem[0],zero
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	movdqu	64(%rsi,%rax), %xmm2
	movdqu	80(%rsi,%rax), %xmm7
	movdqu	96(%rsi,%rax), %xmm8
	movdqu	112(%rsi,%rax), %xmm5
	pshufd	$245, %xmm2, %xmm9              # xmm9 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm7, %xmm9              # xmm9 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm8, %xmm6              # xmm6 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm8
	pshufd	$232, %xmm8, %xmm7              # xmm7 = xmm8[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	pslld	%xmm0, %xmm2
	pslld	%xmm0, %xmm4
	pslld	%xmm0, %xmm7
	pslld	%xmm0, %xmm5
	pshuflw	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm3              # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm4              # xmm4 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	movq	%xmm1, 32(%rdi)
	movq	%xmm2, 40(%rdi)
	movq	%xmm3, 48(%rdi)
	movq	%xmm4, 56(%rdi)
	movq	64(%rdi), %xmm4                 # xmm4 = mem[0],zero
	movq	72(%rdi), %xmm6                 # xmm6 = mem[0],zero
	movq	80(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	88(%rdi), %xmm1                 # xmm1 = mem[0],zero
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	movdqu	128(%rsi,%rax), %xmm2
	movdqu	144(%rsi,%rax), %xmm7
	movdqu	160(%rsi,%rax), %xmm8
	movdqu	176(%rsi,%rax), %xmm5
	pshufd	$245, %xmm2, %xmm9              # xmm9 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm7, %xmm9              # xmm9 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm8, %xmm6              # xmm6 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm8
	pshufd	$232, %xmm8, %xmm7              # xmm7 = xmm8[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm6, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm7            # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	pslld	%xmm0, %xmm2
	pslld	%xmm0, %xmm4
	pslld	%xmm0, %xmm7
	pslld	%xmm0, %xmm5
	pshuflw	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm2              # xmm2 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm3              # xmm3 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm4              # xmm4 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	movq	%xmm1, 64(%rdi)
	movq	%xmm2, 72(%rdi)
	movq	%xmm3, 80(%rdi)
	movq	%xmm4, 88(%rdi)
	movq	96(%rdi), %xmm4                 # xmm4 = mem[0],zero
	movq	104(%rdi), %xmm6                # xmm6 = mem[0],zero
	movq	112(%rdi), %xmm3                # xmm3 = mem[0],zero
	movq	120(%rdi), %xmm1                # xmm1 = mem[0],zero
	punpcklwd	%xmm4, %xmm4            # xmm4 = xmm4[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm6, %xmm6            # xmm6 = xmm6[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm3, %xmm3            # xmm3 = xmm3[0,0,1,1,2,2,3,3]
	punpcklwd	%xmm1, %xmm1            # xmm1 = xmm1[0,0,1,1,2,2,3,3]
	movdqu	192(%rsi,%rax), %xmm2
	movdqu	208(%rsi,%rax), %xmm7
	movdqu	224(%rsi,%rax), %xmm8
	movdqu	240(%rsi,%rax), %xmm5
	pshufd	$245, %xmm2, %xmm9              # xmm9 = xmm2[1,1,3,3]
	pmuludq	%xmm4, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm9, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm2            # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	pshufd	$245, %xmm7, %xmm9              # xmm9 = xmm7[1,1,3,3]
	pmuludq	%xmm6, %xmm7
	pshufd	$232, %xmm7, %xmm4              # xmm4 = xmm7[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm9, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0],xmm4[1],xmm6[1]
	pshufd	$245, %xmm8, %xmm7              # xmm7 = xmm8[1,1,3,3]
	pmuludq	%xmm3, %xmm8
	pshufd	$232, %xmm8, %xmm6              # xmm6 = xmm8[0,2,2,3]
	pshufd	$245, %xmm3, %xmm3              # xmm3 = xmm3[1,1,3,3]
	pmuludq	%xmm7, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpckldq	%xmm3, %xmm6            # xmm6 = xmm6[0],xmm3[0],xmm6[1],xmm3[1]
	pshufd	$245, %xmm5, %xmm3              # xmm3 = xmm5[1,1,3,3]
	pmuludq	%xmm1, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm3, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	pslld	%xmm0, %xmm2
	pslld	%xmm0, %xmm4
	pslld	%xmm0, %xmm6
	pslld	%xmm0, %xmm5
	pshuflw	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm1              # xmm1 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	pshuflw	$232, %xmm6, %xmm1              # xmm1 = xmm6[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm2              # xmm2 = xmm5[0,2,2,3,4,5,6,7]
	jmp	.LBB7_5
.LBB7_10:                               # %vector.body
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movq	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movq	8(%rdi), %xmm2                  # xmm2 = mem[0],zero
	movq	16(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	24(%rdi), %xmm4                 # xmm4 = mem[0],zero
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	psrad	$16, %xmm7
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psrad	$16, %xmm8
	punpcklwd	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1],xmm5[2],xmm3[2],xmm5[3],xmm3[3]
	psrad	$16, %xmm5
	punpcklwd	%xmm4, %xmm1            # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1],xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	psrad	$16, %xmm1
	movdqu	(%rsi,%rcx), %xmm2
	movdqu	16(%rsi,%rcx), %xmm3
	movdqu	32(%rsi,%rcx), %xmm4
	movdqu	48(%rsi,%rcx), %xmm6
	pshufd	$245, %xmm2, %xmm9              # xmm9 = xmm2[1,1,3,3]
	pmuludq	%xmm7, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm7, %xmm7              # xmm7 = xmm7[1,1,3,3]
	pmuludq	%xmm9, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	punpckldq	%xmm7, %xmm2            # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	pshufd	$245, %xmm3, %xmm7              # xmm7 = xmm3[1,1,3,3]
	pmuludq	%xmm8, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm7, %xmm8
	pshufd	$232, %xmm8, %xmm7              # xmm7 = xmm8[0,2,2,3]
	punpckldq	%xmm7, %xmm3            # xmm3 = xmm3[0],xmm7[0],xmm3[1],xmm7[1]
	pshufd	$245, %xmm4, %xmm7              # xmm7 = xmm4[1,1,3,3]
	pmuludq	%xmm5, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshufd	$245, %xmm5, %xmm5              # xmm5 = xmm5[1,1,3,3]
	pmuludq	%xmm7, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	punpckldq	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	pshufd	$245, %xmm6, %xmm7              # xmm7 = xmm6[1,1,3,3]
	pmuludq	%xmm1, %xmm6
	pshufd	$232, %xmm6, %xmm5              # xmm5 = xmm6[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1              # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm7, %xmm1
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpckldq	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm4
	paddd	%xmm0, %xmm5
	movd	%eax, %xmm1
	psrad	%xmm1, %xmm2
	psrad	%xmm1, %xmm3
	psrad	%xmm1, %xmm4
	psrad	%xmm1, %xmm5
	pshuflw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	movq	%xmm2, (%rdi)
	movq	%xmm3, 8(%rdi)
	movq	%xmm4, 16(%rdi)
	movq	%xmm5, 24(%rdi)
	movq	32(%rdi), %xmm2                 # xmm2 = mem[0],zero
	movq	40(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	48(%rdi), %xmm4                 # xmm4 = mem[0],zero
	movq	56(%rdi), %xmm5                 # xmm5 = mem[0],zero
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psrad	$16, %xmm8
	punpcklwd	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1],xmm9[2],xmm3[2],xmm9[3],xmm3[3]
	psrad	$16, %xmm9
	punpcklwd	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	psrad	$16, %xmm6
	punpcklwd	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3]
	psrad	$16, %xmm4
	movdqu	64(%rsi,%rcx), %xmm2
	movdqu	80(%rsi,%rcx), %xmm3
	movdqu	96(%rsi,%rcx), %xmm5
	movdqu	112(%rsi,%rcx), %xmm7
	pshufd	$245, %xmm2, %xmm10             # xmm10 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm10, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1]
	pshufd	$245, %xmm3, %xmm8              # xmm8 = xmm3[1,1,3,3]
	pmuludq	%xmm9, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm8, %xmm9
	pshufd	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3]
	punpckldq	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1]
	pshufd	$245, %xmm5, %xmm8              # xmm8 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm5
	paddd	%xmm0, %xmm7
	psrad	%xmm1, %xmm2
	psrad	%xmm1, %xmm3
	psrad	%xmm1, %xmm5
	psrad	%xmm1, %xmm7
	pshuflw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm4              # xmm4 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm5              # xmm5 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	movq	%xmm2, 32(%rdi)
	movq	%xmm3, 40(%rdi)
	movq	%xmm4, 48(%rdi)
	movq	%xmm5, 56(%rdi)
	movq	64(%rdi), %xmm2                 # xmm2 = mem[0],zero
	movq	72(%rdi), %xmm3                 # xmm3 = mem[0],zero
	movq	80(%rdi), %xmm4                 # xmm4 = mem[0],zero
	movq	88(%rdi), %xmm5                 # xmm5 = mem[0],zero
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psrad	$16, %xmm8
	punpcklwd	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1],xmm9[2],xmm3[2],xmm9[3],xmm3[3]
	psrad	$16, %xmm9
	punpcklwd	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	psrad	$16, %xmm6
	punpcklwd	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3]
	psrad	$16, %xmm4
	movdqu	128(%rsi,%rcx), %xmm2
	movdqu	144(%rsi,%rcx), %xmm3
	movdqu	160(%rsi,%rcx), %xmm5
	movdqu	176(%rsi,%rcx), %xmm7
	pshufd	$245, %xmm2, %xmm10             # xmm10 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm10, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1]
	pshufd	$245, %xmm3, %xmm8              # xmm8 = xmm3[1,1,3,3]
	pmuludq	%xmm9, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm8, %xmm9
	pshufd	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3]
	punpckldq	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1]
	pshufd	$245, %xmm5, %xmm8              # xmm8 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pshufd	$245, %xmm7, %xmm6              # xmm6 = xmm7[1,1,3,3]
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm7              # xmm7 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm6, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm7            # xmm7 = xmm7[0],xmm4[0],xmm7[1],xmm4[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm5
	paddd	%xmm0, %xmm7
	psrad	%xmm1, %xmm2
	psrad	%xmm1, %xmm3
	psrad	%xmm1, %xmm5
	psrad	%xmm1, %xmm7
	pshuflw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshuflw	$232, %xmm5, %xmm4              # xmm4 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm7, %xmm5              # xmm5 = xmm7[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	movq	%xmm2, 64(%rdi)
	movq	%xmm3, 72(%rdi)
	movq	%xmm4, 80(%rdi)
	movq	%xmm5, 88(%rdi)
	movq	96(%rdi), %xmm2                 # xmm2 = mem[0],zero
	movq	104(%rdi), %xmm3                # xmm3 = mem[0],zero
	movq	112(%rdi), %xmm4                # xmm4 = mem[0],zero
	movq	120(%rdi), %xmm5                # xmm5 = mem[0],zero
	punpcklwd	%xmm2, %xmm8            # xmm8 = xmm8[0],xmm2[0],xmm8[1],xmm2[1],xmm8[2],xmm2[2],xmm8[3],xmm2[3]
	psrad	$16, %xmm8
	punpcklwd	%xmm3, %xmm9            # xmm9 = xmm9[0],xmm3[0],xmm9[1],xmm3[1],xmm9[2],xmm3[2],xmm9[3],xmm3[3]
	psrad	$16, %xmm9
	punpcklwd	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1],xmm6[2],xmm4[2],xmm6[3],xmm4[3]
	psrad	$16, %xmm6
	punpcklwd	%xmm5, %xmm4            # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1],xmm4[2],xmm5[2],xmm4[3],xmm5[3]
	psrad	$16, %xmm4
	movdqu	192(%rsi,%rcx), %xmm2
	movdqu	208(%rsi,%rcx), %xmm3
	movdqu	224(%rsi,%rcx), %xmm5
	movdqu	240(%rsi,%rcx), %xmm7
	pshufd	$245, %xmm2, %xmm10             # xmm10 = xmm2[1,1,3,3]
	pmuludq	%xmm8, %xmm2
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm8, %xmm8              # xmm8 = xmm8[1,1,3,3]
	pmuludq	%xmm10, %xmm8
	pshufd	$232, %xmm8, %xmm8              # xmm8 = xmm8[0,2,2,3]
	punpckldq	%xmm8, %xmm2            # xmm2 = xmm2[0],xmm8[0],xmm2[1],xmm8[1]
	pshufd	$245, %xmm3, %xmm8              # xmm8 = xmm3[1,1,3,3]
	pmuludq	%xmm9, %xmm3
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm9, %xmm9              # xmm9 = xmm9[1,1,3,3]
	pmuludq	%xmm8, %xmm9
	pshufd	$232, %xmm9, %xmm8              # xmm8 = xmm9[0,2,2,3]
	punpckldq	%xmm8, %xmm3            # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1]
	pshufd	$245, %xmm5, %xmm8              # xmm8 = xmm5[1,1,3,3]
	pmuludq	%xmm6, %xmm5
	pshufd	$232, %xmm5, %xmm5              # xmm5 = xmm5[0,2,2,3]
	pshufd	$245, %xmm6, %xmm6              # xmm6 = xmm6[1,1,3,3]
	pmuludq	%xmm8, %xmm6
	pshufd	$232, %xmm6, %xmm6              # xmm6 = xmm6[0,2,2,3]
	punpckldq	%xmm6, %xmm5            # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	pshufd	$245, %xmm7, %xmm8              # xmm8 = xmm7[1,1,3,3]
	pmuludq	%xmm4, %xmm7
	pshufd	$232, %xmm7, %xmm6              # xmm6 = xmm7[0,2,2,3]
	pshufd	$245, %xmm4, %xmm4              # xmm4 = xmm4[1,1,3,3]
	pmuludq	%xmm8, %xmm4
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	punpckldq	%xmm4, %xmm6            # xmm6 = xmm6[0],xmm4[0],xmm6[1],xmm4[1]
	paddd	%xmm0, %xmm2
	paddd	%xmm0, %xmm3
	paddd	%xmm0, %xmm5
	paddd	%xmm0, %xmm6
	psrad	%xmm1, %xmm2
	psrad	%xmm1, %xmm3
	psrad	%xmm1, %xmm5
	psrad	%xmm1, %xmm6
	pshuflw	$232, %xmm2, %xmm0              # xmm0 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0              # xmm0 = xmm0[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm1              # xmm1 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0]
	pshuflw	$232, %xmm5, %xmm1              # xmm1 = xmm5[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	pshuflw	$232, %xmm6, %xmm2              # xmm2 = xmm6[0,2,2,3,4,5,6,7]
.LBB7_5:                                # %if.end
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	punpcklqdq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0]
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm1, 112(%rdi)
	retq
.Lfunc_end7:
	.size	dequant_8x8, .Lfunc_end7-dequant_8x8
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_denoise_dct
	.type	x264_denoise_dct,@function
x264_denoise_dct:                       # @x264_denoise_dct
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$2, %ecx
	jl	.LBB8_10
# %bb.1:                                # %for.body.preheader
	movl	%ecx, %eax
	movl	$1, %r8d
	cmpl	$16, %ecx
	ja	.LBB8_4
.LBB8_2:                                # %for.body.preheader54
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movswl	(%rdi,%r8,2), %r9d
	movl	%r9d, %r10d
	sarl	$15, %r10d
	addl	%r10d, %r9d
	xorl	%r10d, %r9d
	addl	%r9d, (%rsi,%r8,4)
	movzwl	(%rdx,%r8,2), %r11d
	subl	%r11d, %r9d
	movl	%r9d, %r11d
	xorl	%r10d, %r11d
	subl	%r10d, %r11d
	testl	%r9d, %r9d
	cmovsl	%ecx, %r11d
	movw	%r11w, (%rdi,%r8,2)
	incq	%r8
	cmpq	%r8, %rax
	jne	.LBB8_3
.LBB8_10:                               # %for.cond.cleanup
	retq
.LBB8_4:                                # %vector.memcheck
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
	leaq	4(%rsi), %rcx
	leaq	(%rsi,%rax,4), %r9
	leaq	2(%rdi), %r11
	leaq	(%rdi,%rax,2), %rbx
	leaq	2(%rdx), %r14
	leaq	(%rdx,%rax,2), %r15
	cmpq	%rbx, %rcx
	setb	%bpl
	cmpq	%r9, %r11
	setb	%r12b
	cmpq	%r15, %rcx
	setb	%cl
	cmpq	%r9, %r14
	setb	%r10b
	cmpq	%r15, %r11
	setb	%r9b
	cmpq	%rbx, %r14
	setb	%r11b
	testb	%r12b, %bpl
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
	jne	.LBB8_2
# %bb.5:                                # %vector.memcheck
	andb	%r10b, %cl
	jne	.LBB8_2
# %bb.6:                                # %vector.memcheck
	andb	%r11b, %r9b
	jne	.LBB8_2
# %bb.7:                                # %vector.ph
	leaq	-1(%rax), %rcx
	movq	%rcx, %r9
	andq	$-16, %r9
	leaq	1(%r9), %r8
	xorl	%r10d, %r10d
	pxor	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	2(%rdi,%r10,2), %xmm1           # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1],xmm4[2],xmm1[2],xmm4[3],xmm1[3]
	movq	10(%rdi,%r10,2), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm5            # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1],xmm5[2],xmm1[2],xmm5[3],xmm1[3]
	movq	18(%rdi,%r10,2), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm6            # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1],xmm6[2],xmm1[2],xmm6[3],xmm1[3]
	movq	26(%rdi,%r10,2), %xmm1          # xmm1 = mem[0],zero
	punpcklwd	%xmm1, %xmm7            # xmm7 = xmm7[0],xmm1[0],xmm7[1],xmm1[1],xmm7[2],xmm1[2],xmm7[3],xmm1[3]
	movdqa	%xmm4, %xmm8
	psrad	$16, %xmm8
	movdqa	%xmm5, %xmm3
	psrad	$16, %xmm3
	movdqa	%xmm6, %xmm2
	psrad	$16, %xmm2
	movdqa	%xmm7, %xmm1
	psrad	$16, %xmm1
	psrad	$31, %xmm4
	psrad	$31, %xmm5
	psrad	$31, %xmm6
	psrad	$31, %xmm7
	paddd	%xmm4, %xmm8
	paddd	%xmm5, %xmm3
	paddd	%xmm6, %xmm2
	paddd	%xmm7, %xmm1
	pxor	%xmm4, %xmm8
	pxor	%xmm5, %xmm3
	pxor	%xmm6, %xmm2
	pxor	%xmm7, %xmm1
	movdqu	4(%rsi,%r10,4), %xmm9
	movdqu	20(%rsi,%r10,4), %xmm10
	movdqu	36(%rsi,%r10,4), %xmm11
	movdqu	52(%rsi,%r10,4), %xmm12
	paddd	%xmm8, %xmm9
	paddd	%xmm3, %xmm10
	paddd	%xmm2, %xmm11
	paddd	%xmm1, %xmm12
	movdqu	%xmm9, 4(%rsi,%r10,4)
	movdqu	%xmm10, 20(%rsi,%r10,4)
	movdqu	%xmm11, 36(%rsi,%r10,4)
	movdqu	%xmm12, 52(%rsi,%r10,4)
	movq	2(%rdx,%r10,2), %xmm9           # xmm9 = mem[0],zero
	movq	10(%rdx,%r10,2), %xmm10         # xmm10 = mem[0],zero
	movq	18(%rdx,%r10,2), %xmm11         # xmm11 = mem[0],zero
	movq	26(%rdx,%r10,2), %xmm12         # xmm12 = mem[0],zero
	punpcklwd	%xmm0, %xmm9            # xmm9 = xmm9[0],xmm0[0],xmm9[1],xmm0[1],xmm9[2],xmm0[2],xmm9[3],xmm0[3]
	punpcklwd	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1],xmm10[2],xmm0[2],xmm10[3],xmm0[3]
	punpcklwd	%xmm0, %xmm11           # xmm11 = xmm11[0],xmm0[0],xmm11[1],xmm0[1],xmm11[2],xmm0[2],xmm11[3],xmm0[3]
	punpcklwd	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1],xmm12[2],xmm0[2],xmm12[3],xmm0[3]
	psubd	%xmm9, %xmm8
	psubd	%xmm10, %xmm3
	psubd	%xmm11, %xmm2
	psubd	%xmm12, %xmm1
	pxor	%xmm9, %xmm9
	pcmpgtd	%xmm8, %xmm9
	pxor	%xmm10, %xmm10
	pcmpgtd	%xmm3, %xmm10
	packssdw	%xmm10, %xmm9
	pxor	%xmm10, %xmm10
	pcmpgtd	%xmm2, %xmm10
	pxor	%xmm11, %xmm11
	pcmpgtd	%xmm1, %xmm11
	packssdw	%xmm11, %xmm10
	pxor	%xmm4, %xmm8
	pxor	%xmm5, %xmm3
	pxor	%xmm6, %xmm2
	pxor	%xmm7, %xmm1
	psubd	%xmm4, %xmm8
	psubd	%xmm5, %xmm3
	psubd	%xmm6, %xmm2
	psubd	%xmm7, %xmm1
	pshuflw	$232, %xmm8, %xmm4              # xmm4 = xmm8[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm4, %xmm4              # xmm4 = xmm4[0,2,2,3]
	pshuflw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm3, %xmm3              # xmm3 = xmm3[0,2,2,3]
	punpcklqdq	%xmm3, %xmm4            # xmm4 = xmm4[0],xmm3[0]
	pandn	%xmm4, %xmm9
	pshuflw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm2, %xmm2              # xmm2 = xmm2[0,2,2,3]
	pshuflw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm1, %xmm1              # xmm1 = xmm1[0,2,2,3]
	punpcklqdq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0]
	pandn	%xmm2, %xmm10
	movdqu	%xmm9, 2(%rdi,%r10,2)
	movdqu	%xmm10, 18(%rdi,%r10,2)
	addq	$16, %r10
	cmpq	%r10, %r9
	jne	.LBB8_8
# %bb.9:                                # %middle.block
	cmpq	%r9, %rcx
	jne	.LBB8_2
	jmp	.LBB8_10
.Lfunc_end8:
	.size	x264_denoise_dct, .Lfunc_end8-x264_denoise_dct
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_decimate_score15
	.type	x264_decimate_score15,@function
x264_decimate_score15:                  # @x264_decimate_score15
	.cfi_startproc
# %bb.0:                                # %entry
	movl	28(%rdi), %edx
	movl	$14, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.1:                                # %while.body.i
	movl	24(%rdi), %edx
	movl	$12, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.2:                                # %while.body.i.1
	movl	20(%rdi), %edx
	movl	$10, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.3:                                # %while.body.i.2
	movl	16(%rdi), %edx
	movl	$8, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.4:                                # %while.body.i.3
	movl	12(%rdi), %edx
	movl	$6, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.5:                                # %while.body.i.4
	movl	8(%rdi), %edx
	movl	$4, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.6:                                # %while.body.i.5
	movl	4(%rdi), %edx
	movl	$2, %ecx
	testl	%edx, %edx
	jne	.LBB9_8
# %bb.7:                                # %while.body.i.6
	movl	(%rdi), %edx
	xorl	%ecx, %ecx
	movl	$0, %eax
	testl	%edx, %edx
	je	.LBB9_10
.LBB9_8:                                # %if.end.i
	cmpl	$65536, %edx                    # imm = 0x10000
	sbbl	$0, %ecx
	js	.LBB9_9
# %bb.11:                               # %while.body13.i.preheader
	xorl	%eax, %eax
.LBB9_12:                               # %while.body13.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	movl	%ecx, %edx
	movswl	2(%rdi,%rdx,2), %esi
	incl	%esi
	cmpl	$2, %esi
	ja	.LBB9_13
# %bb.14:                               # %while.cond22.preheader.i
                                        #   in Loop: Header=BB9_12 Depth=1
	testl	%ecx, %ecx
	je	.LBB9_18
# %bb.15:                               # %land.rhs25.i.preheader
                                        #   in Loop: Header=BB9_12 Depth=1
	movl	$x264_decimate_table4, %esi
	.p2align	4, 0x90
.LBB9_16:                               # %land.rhs25.i
                                        #   Parent Loop BB9_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rcx), %r8d
	cmpw	$0, 2(%rdi,%r8,2)
	jne	.LBB9_19
# %bb.17:                               # %while.body32.i
                                        #   in Loop: Header=BB9_16 Depth=2
	incq	%rsi
	movl	%r8d, %ecx
	testl	%r8d, %r8d
	jne	.LBB9_16
	jmp	.LBB9_18
	.p2align	4, 0x90
.LBB9_19:                               # %cleanup.i
                                        #   in Loop: Header=BB9_12 Depth=1
	movzbl	(%rsi), %edx
	addl	%edx, %eax
	leal	-1(%rcx), %edx
	testl	%ecx, %ecx
	movl	%edx, %ecx
	jg	.LBB9_12
	jmp	.LBB9_10
.LBB9_18:                               # %cleanup.i.thread
	movzbl	x264_decimate_table4(%rdx), %ecx
	addl	%ecx, %eax
	retq
.LBB9_9:
	xorl	%eax, %eax
.LBB9_10:                               # %x264_decimate_score_internal.exit
	retq
.LBB9_13:
	movl	$9, %eax
	retq
.Lfunc_end9:
	.size	x264_decimate_score15, .Lfunc_end9-x264_decimate_score15
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_decimate_score16
	.type	x264_decimate_score16,@function
x264_decimate_score16:                  # @x264_decimate_score16
	.cfi_startproc
# %bb.0:                                # %entry
	movl	28(%rdi), %eax
	movl	$15, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.1:                                # %while.body.i
	movl	24(%rdi), %eax
	movl	$13, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.2:                                # %while.body.i.1
	movl	20(%rdi), %eax
	movl	$11, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.3:                                # %while.body.i.2
	movl	16(%rdi), %eax
	movl	$9, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.4:                                # %while.body.i.3
	movl	12(%rdi), %eax
	movl	$7, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.5:                                # %while.body.i.4
	movl	8(%rdi), %eax
	movl	$5, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.6:                                # %while.body.i.5
	movl	4(%rdi), %eax
	movl	$3, %ecx
	testl	%eax, %eax
	jne	.LBB10_10
# %bb.7:                                # %while.body.i.6
	movl	(%rdi), %eax
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB10_8
.LBB10_10:                              # %while.body13.i.preheader
	cmpl	$65536, %eax                    # imm = 0x10000
	sbbl	$0, %ecx
	xorl	%eax, %eax
.LBB10_11:                              # %while.body13.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_15 Depth 2
	movl	%ecx, %edx
	movswl	(%rdi,%rdx,2), %esi
	incl	%esi
	cmpl	$2, %esi
	ja	.LBB10_12
# %bb.13:                               # %while.cond22.preheader.i
                                        #   in Loop: Header=BB10_11 Depth=1
	testl	%ecx, %ecx
	je	.LBB10_17
# %bb.14:                               # %land.rhs25.i.preheader
                                        #   in Loop: Header=BB10_11 Depth=1
	movl	$x264_decimate_table4, %esi
	.p2align	4, 0x90
.LBB10_15:                              # %land.rhs25.i
                                        #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rcx), %r8d
	cmpw	$0, (%rdi,%r8,2)
	jne	.LBB10_18
# %bb.16:                               # %while.body32.i
                                        #   in Loop: Header=BB10_15 Depth=2
	incq	%rsi
	movl	%r8d, %ecx
	testl	%r8d, %r8d
	jne	.LBB10_15
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_18:                              # %cleanup.i
                                        #   in Loop: Header=BB10_11 Depth=1
	movzbl	(%rsi), %edx
	addl	%edx, %eax
	leal	-1(%rcx), %edx
	testl	%ecx, %ecx
	movl	%edx, %ecx
	jg	.LBB10_11
# %bb.9:                                # %x264_decimate_score_internal.exit
	retq
.LBB10_17:                              # %cleanup.i.thread
	movzbl	x264_decimate_table4(%rdx), %ecx
	addl	%ecx, %eax
	retq
.LBB10_12:
	movl	$9, %eax
	retq
.LBB10_8:
	xorl	%eax, %eax
	retq
.Lfunc_end10:
	.size	x264_decimate_score16, .Lfunc_end10-x264_decimate_score16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_decimate_score64
	.type	x264_decimate_score64,@function
x264_decimate_score64:                  # @x264_decimate_score64
	.cfi_startproc
# %bb.0:                                # %entry
	movl	124(%rdi), %eax
	movl	$63, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.1:                                # %while.body.i
	movl	120(%rdi), %eax
	movl	$61, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.2:                                # %while.body.i.1
	movl	116(%rdi), %eax
	movl	$59, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.3:                                # %while.body.i.2
	movl	112(%rdi), %eax
	movl	$57, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.4:                                # %while.body.i.3
	movl	108(%rdi), %eax
	movl	$55, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.5:                                # %while.body.i.4
	movl	104(%rdi), %eax
	movl	$53, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.6:                                # %while.body.i.5
	movl	100(%rdi), %eax
	movl	$51, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.7:                                # %while.body.i.6
	movl	96(%rdi), %eax
	movl	$49, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.8:                                # %while.body.i.7
	movl	92(%rdi), %eax
	movl	$47, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.9:                                # %while.body.i.8
	movl	88(%rdi), %eax
	movl	$45, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.10:                               # %while.body.i.9
	movl	84(%rdi), %eax
	movl	$43, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.11:                               # %while.body.i.10
	movl	80(%rdi), %eax
	movl	$41, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.12:                               # %while.body.i.11
	movl	76(%rdi), %eax
	movl	$39, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.13:                               # %while.body.i.12
	movl	72(%rdi), %eax
	movl	$37, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.14:                               # %while.body.i.13
	movl	68(%rdi), %eax
	movl	$35, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.15:                               # %while.body.i.14
	movl	64(%rdi), %eax
	movl	$33, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.16:                               # %while.body.i.15
	movl	60(%rdi), %eax
	movl	$31, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.17:                               # %while.body.i.16
	movl	56(%rdi), %eax
	movl	$29, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.18:                               # %while.body.i.17
	movl	52(%rdi), %eax
	movl	$27, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.19:                               # %while.body.i.18
	movl	48(%rdi), %eax
	movl	$25, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.20:                               # %while.body.i.19
	movl	44(%rdi), %eax
	movl	$23, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.21:                               # %while.body.i.20
	movl	40(%rdi), %eax
	movl	$21, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.22:                               # %while.body.i.21
	movl	36(%rdi), %eax
	movl	$19, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.23:                               # %while.body.i.22
	movl	32(%rdi), %eax
	movl	$17, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.24:                               # %while.body.i.23
	movl	28(%rdi), %eax
	movl	$15, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.25:                               # %while.body.i.24
	movl	24(%rdi), %eax
	movl	$13, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.26:                               # %while.body.i.25
	movl	20(%rdi), %eax
	movl	$11, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.27:                               # %while.body.i.26
	movl	16(%rdi), %eax
	movl	$9, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.28:                               # %while.body.i.27
	movl	12(%rdi), %eax
	movl	$7, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.29:                               # %while.body.i.28
	movl	8(%rdi), %eax
	movl	$5, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.30:                               # %while.body.i.29
	movl	4(%rdi), %eax
	movl	$3, %ecx
	testl	%eax, %eax
	jne	.LBB11_34
# %bb.31:                               # %while.body.i.30
	movl	(%rdi), %eax
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB11_32
.LBB11_34:                              # %while.body13.i.preheader
	cmpl	$65536, %eax                    # imm = 0x10000
	sbbl	$0, %ecx
	xorl	%eax, %eax
.LBB11_35:                              # %while.body13.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_39 Depth 2
	movl	%ecx, %edx
	movswl	(%rdi,%rdx,2), %esi
	incl	%esi
	cmpl	$2, %esi
	ja	.LBB11_36
# %bb.37:                               # %while.cond22.preheader.i
                                        #   in Loop: Header=BB11_35 Depth=1
	testl	%ecx, %ecx
	je	.LBB11_41
# %bb.38:                               # %land.rhs25.i.preheader
                                        #   in Loop: Header=BB11_35 Depth=1
	movl	$x264_decimate_table8, %esi
	.p2align	4, 0x90
.LBB11_39:                              # %land.rhs25.i
                                        #   Parent Loop BB11_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rcx), %r8d
	cmpw	$0, (%rdi,%r8,2)
	jne	.LBB11_42
# %bb.40:                               # %while.body32.i
                                        #   in Loop: Header=BB11_39 Depth=2
	incq	%rsi
	movl	%r8d, %ecx
	testl	%r8d, %r8d
	jne	.LBB11_39
	jmp	.LBB11_41
	.p2align	4, 0x90
.LBB11_42:                              # %cleanup.i
                                        #   in Loop: Header=BB11_35 Depth=1
	movzbl	(%rsi), %edx
	addl	%edx, %eax
	leal	-1(%rcx), %edx
	testl	%ecx, %ecx
	movl	%edx, %ecx
	jg	.LBB11_35
# %bb.33:                               # %x264_decimate_score_internal.exit
	retq
.LBB11_41:                              # %cleanup.i.thread
	movzbl	x264_decimate_table8(%rdx), %ecx
	addl	%ecx, %eax
	retq
.LBB11_36:
	movl	$9, %eax
	retq
.LBB11_32:
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	x264_decimate_score64, .Lfunc_end11-x264_decimate_score64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_last4
	.type	x264_coeff_last4,@function
x264_coeff_last4:                       # @x264_coeff_last4
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$0, (%rdi)
	je	.LBB12_1
# %bb.2:                                # %land.rhs.i
	movl	$3, %eax
	cmpw	$0, 6(%rdi)
	je	.LBB12_3
.LBB12_6:                               # %x264_coeff_last_internal.exit
	retq
.LBB12_1:
	movl	$-1, %eax
	retq
.LBB12_3:                               # %while.body.i
	movl	$2, %eax
	cmpw	$0, 4(%rdi)
	jne	.LBB12_6
# %bb.4:                                # %while.body.i.1
	movl	$1, %eax
	cmpw	$0, 2(%rdi)
	jne	.LBB12_6
# %bb.5:                                # %while.body.i.2
	xorl	%eax, %eax
	cmpw	$1, (%rdi)
	sbbl	%eax, %eax
	retq
.Lfunc_end12:
	.size	x264_coeff_last4, .Lfunc_end12-x264_coeff_last4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_last15
	.type	x264_coeff_last15,@function
x264_coeff_last15:                      # @x264_coeff_last15
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$14, %eax
	cmpq	$0, 22(%rdi)
	jne	.LBB13_3
# %bb.1:                                # %for.inc.i
	movl	$10, %eax
	cmpq	$0, 14(%rdi)
	jne	.LBB13_3
# %bb.2:                                # %for.inc.i.1
	xorl	%eax, %eax
	cmpq	$0, 6(%rdi)
	setne	%al
	leal	2(,%rax,4), %eax
	.p2align	4, 0x90
.LBB13_3:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpw	$0, (%rdi,%rcx,2)
	jne	.LBB13_6
# %bb.4:                                # %while.body.i
                                        #   in Loop: Header=BB13_3 Depth=1
	leal	-1(%rax), %ecx
	testl	%eax, %eax
	movl	%ecx, %eax
	jg	.LBB13_3
# %bb.5:
	movl	$-1, %eax
.LBB13_6:                               # %x264_coeff_last_internal.exit
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end13:
	.size	x264_coeff_last15, .Lfunc_end13-x264_coeff_last15
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_last16
	.type	x264_coeff_last16,@function
x264_coeff_last16:                      # @x264_coeff_last16
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$15, %eax
	cmpq	$0, 24(%rdi)
	jne	.LBB14_4
# %bb.1:                                # %for.inc.i
	movl	$11, %eax
	cmpq	$0, 16(%rdi)
	jne	.LBB14_4
# %bb.2:                                # %for.inc.i.1
	movl	$7, %eax
	cmpq	$0, 8(%rdi)
	jne	.LBB14_4
# %bb.3:                                # %for.inc.i.2
	movl	$3, %eax
	cmpq	$0, (%rdi)
	je	.LBB14_6
	.p2align	4, 0x90
.LBB14_4:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpw	$0, (%rdi,%rcx,2)
	jne	.LBB14_7
# %bb.5:                                # %while.body.i
                                        #   in Loop: Header=BB14_4 Depth=1
	leal	-1(%rax), %ecx
	testl	%eax, %eax
	movl	%ecx, %eax
	jg	.LBB14_4
.LBB14_6:
	movl	$-1, %eax
.LBB14_7:                               # %x264_coeff_last_internal.exit
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end14:
	.size	x264_coeff_last16, .Lfunc_end14-x264_coeff_last16
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_last64
	.type	x264_coeff_last64,@function
x264_coeff_last64:                      # @x264_coeff_last64
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$63, %eax
	cmpq	$0, 120(%rdi)
	jne	.LBB15_16
# %bb.1:                                # %for.inc.i
	movl	$59, %eax
	cmpq	$0, 112(%rdi)
	jne	.LBB15_16
# %bb.2:                                # %for.inc.i.1
	movl	$55, %eax
	cmpq	$0, 104(%rdi)
	jne	.LBB15_16
# %bb.3:                                # %for.inc.i.2
	movl	$51, %eax
	cmpq	$0, 96(%rdi)
	jne	.LBB15_16
# %bb.4:                                # %for.inc.i.3
	movl	$47, %eax
	cmpq	$0, 88(%rdi)
	jne	.LBB15_16
# %bb.5:                                # %for.inc.i.4
	movl	$43, %eax
	cmpq	$0, 80(%rdi)
	jne	.LBB15_16
# %bb.6:                                # %for.inc.i.5
	movl	$39, %eax
	cmpq	$0, 72(%rdi)
	jne	.LBB15_16
# %bb.7:                                # %for.inc.i.6
	movl	$35, %eax
	cmpq	$0, 64(%rdi)
	jne	.LBB15_16
# %bb.8:                                # %for.inc.i.7
	movl	$31, %eax
	cmpq	$0, 56(%rdi)
	jne	.LBB15_16
# %bb.9:                                # %for.inc.i.8
	movl	$27, %eax
	cmpq	$0, 48(%rdi)
	jne	.LBB15_16
# %bb.10:                               # %for.inc.i.9
	movl	$23, %eax
	cmpq	$0, 40(%rdi)
	jne	.LBB15_16
# %bb.11:                               # %for.inc.i.10
	movl	$19, %eax
	cmpq	$0, 32(%rdi)
	jne	.LBB15_16
# %bb.12:                               # %for.inc.i.11
	movl	$15, %eax
	cmpq	$0, 24(%rdi)
	jne	.LBB15_16
# %bb.13:                               # %for.inc.i.12
	movl	$11, %eax
	cmpq	$0, 16(%rdi)
	jne	.LBB15_16
# %bb.14:                               # %for.inc.i.13
	movl	$7, %eax
	cmpq	$0, 8(%rdi)
	jne	.LBB15_16
# %bb.15:                               # %for.inc.i.14
	movl	$3, %eax
	cmpq	$0, (%rdi)
	je	.LBB15_18
	.p2align	4, 0x90
.LBB15_16:                              # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%eax, %ecx
	cmpw	$0, (%rdi,%rcx,2)
	jne	.LBB15_19
# %bb.17:                               # %while.body.i
                                        #   in Loop: Header=BB15_16 Depth=1
	leal	-1(%rax), %ecx
	testl	%eax, %eax
	movl	%ecx, %eax
	jg	.LBB15_16
.LBB15_18:
	movl	$-1, %eax
.LBB15_19:                              # %x264_coeff_last_internal.exit
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end15:
	.size	x264_coeff_last64, .Lfunc_end15-x264_coeff_last64
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_level_run4
	.type	x264_coeff_level_run4,@function
x264_coeff_level_run4:                  # @x264_coeff_level_run4
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB16_12
# %bb.1:                                # %land.rhs.i.i.preheader
	movq	%rax, %rcx
	shrq	$48, %rcx
	movl	$3, %ecx
	jne	.LBB16_4
# %bb.2:                                # %while.body.i.i
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	$2, %ecx
	jne	.LBB16_4
# %bb.3:                                # %while.body.i.i.1
	movl	$1, %ecx
	xorl	%edx, %edx
	cmpq	$65535, %rax                    # imm = 0xFFFF
	jbe	.LBB16_13
.LBB16_4:                               # %land.rhs.lr.ph.lr.ph
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movabsq	$-4294967296, %r8               # imm = 0xFFFFFFFF00000000
	movl	%ecx, (%rsi)
	movl	%ecx, %eax
	movzwl	(%rdi,%rax,2), %eax
	movw	%ax, 4(%rsi)
	xorl	%edx, %edx
.LBB16_5:                               # %land.rhs.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	movl	%ecx, %eax
	cmpl	$2, %ecx
	movl	$1, %r9d
	cmovgel	%ecx, %r9d
	movq	%rax, %r10
	shlq	$32, %r10
	addq	%r8, %r10
	decq	%rax
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB16_6:                               # %land.rhs
                                        #   Parent Loop BB16_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ebx
	cmpw	$0, (%rdi,%rbx,2)
	jne	.LBB16_8
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB16_6 Depth=2
	incl	%r11d
	addq	%r8, %r10
	decq	%rax
	cmpl	%r11d, %r9d
	jne	.LBB16_6
	jmp	.LBB16_10
	.p2align	4, 0x90
.LBB16_8:                               # %while.end
                                        #   in Loop: Header=BB16_5 Depth=1
	subl	%r11d, %ecx
	leal	-1(%rcx), %r9d
	leaq	1(%rdx), %rax
	movb	%r11b, 36(%rsi,%rdx)
	sarq	$31, %r10
	movzwl	(%rdi,%r10), %r10d
	movw	%r10w, 6(%rsi,%rdx,2)
	movq	%rax, %rdx
	cmpl	$1, %ecx
	movl	%r9d, %ecx
	jg	.LBB16_5
# %bb.9:                                # %do.end.loopexit49
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB16_10:                              # %do.end.loopexit
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB16_12:
	movl	$-1, %edx
.LBB16_13:                              # %x264_coeff_last4.exit
	movl	%edx, (%rsi)
	movslq	%edx, %rax
	movzwl	(%rdi,%rax,2), %eax
	movw	%ax, 4(%rsi)
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end16:
	.size	x264_coeff_level_run4, .Lfunc_end16-x264_coeff_level_run4
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_level_run15
	.type	x264_coeff_level_run15,@function
x264_coeff_level_run15:                 # @x264_coeff_level_run15
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$14, %ecx
	cmpq	$0, 22(%rdi)
	jne	.LBB17_3
# %bb.1:                                # %for.inc.i.i
	movl	$10, %ecx
	cmpq	$0, 14(%rdi)
	jne	.LBB17_3
# %bb.2:                                # %for.inc.i.1.i
	xorl	%eax, %eax
	cmpq	$0, 6(%rdi)
	setne	%al
	leal	2(,%rax,4), %ecx
	.p2align	4, 0x90
.LBB17_3:                               # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cmpw	$0, (%rdi,%rax,2)
	jne	.LBB17_6
# %bb.4:                                # %while.body.i.i
                                        #   in Loop: Header=BB17_3 Depth=1
	leal	-1(%rcx), %eax
	testl	%ecx, %ecx
	movl	%eax, %ecx
	jg	.LBB17_3
# %bb.5:                                # %x264_coeff_last15.exit.thread
	movl	$-1, (%rsi)
	movzwl	-2(%rdi), %eax
	movw	%ax, 4(%rsi)
	jmp	.LBB17_13
.LBB17_6:                               # %x264_coeff_last15.exit
	movl	%ecx, (%rsi)
	movzwl	(%rdi,%rax,2), %eax
	movw	%ax, 4(%rsi)
	testl	%ecx, %ecx
	je	.LBB17_13
# %bb.7:                                # %land.rhs.lr.ph.lr.ph
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movabsq	$-4294967296, %r8               # imm = 0xFFFFFFFF00000000
	xorl	%edx, %edx
.LBB17_8:                               # %land.rhs.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_9 Depth 2
	movl	%ecx, %eax
	cmpl	$2, %ecx
	movl	$1, %r9d
	cmovgel	%ecx, %r9d
	movq	%rax, %r10
	shlq	$32, %r10
	addq	%r8, %r10
	decq	%rax
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB17_9:                               # %land.rhs
                                        #   Parent Loop BB17_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ebx
	cmpw	$0, (%rdi,%rbx,2)
	jne	.LBB17_11
# %bb.10:                               # %while.body
                                        #   in Loop: Header=BB17_9 Depth=2
	incl	%r11d
	addq	%r8, %r10
	decq	%rax
	cmpl	%r11d, %r9d
	jne	.LBB17_9
	jmp	.LBB17_14
	.p2align	4, 0x90
.LBB17_11:                              # %while.end
                                        #   in Loop: Header=BB17_8 Depth=1
	subl	%r11d, %ecx
	leal	-1(%rcx), %r9d
	leaq	1(%rdx), %rax
	movb	%r11b, 36(%rsi,%rdx)
	sarq	$31, %r10
	movzwl	(%rdi,%r10), %r10d
	movw	%r10w, 6(%rsi,%rdx,2)
	movq	%rax, %rdx
	cmpl	$1, %ecx
	movl	%r9d, %ecx
	jg	.LBB17_8
# %bb.12:                               # %do.end.loopexit49
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB17_13:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB17_14:                              # %do.end.loopexit
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end17:
	.size	x264_coeff_level_run15, .Lfunc_end17-x264_coeff_level_run15
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function x264_coeff_level_run16
	.type	x264_coeff_level_run16,@function
x264_coeff_level_run16:                 # @x264_coeff_level_run16
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$15, %ecx
	cmpq	$0, 24(%rdi)
	jne	.LBB18_4
# %bb.1:                                # %for.inc.i.i
	movl	$11, %ecx
	cmpq	$0, 16(%rdi)
	jne	.LBB18_4
# %bb.2:                                # %for.inc.i.1.i
	movl	$7, %ecx
	cmpq	$0, 8(%rdi)
	jne	.LBB18_4
# %bb.3:                                # %for.inc.i.2.i
	movl	$3, %ecx
	cmpq	$0, (%rdi)
	je	.LBB18_6
	.p2align	4, 0x90
.LBB18_4:                               # %land.rhs.i.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %eax
	cmpw	$0, (%rdi,%rax,2)
	jne	.LBB18_7
# %bb.5:                                # %while.body.i.i
                                        #   in Loop: Header=BB18_4 Depth=1
	leal	-1(%rcx), %eax
	testl	%ecx, %ecx
	movl	%eax, %ecx
	jg	.LBB18_4
.LBB18_6:                               # %x264_coeff_last16.exit.thread
	movl	$-1, (%rsi)
	movzwl	-2(%rdi), %eax
	movw	%ax, 4(%rsi)
	jmp	.LBB18_14
.LBB18_7:                               # %x264_coeff_last16.exit
	movl	%ecx, (%rsi)
	movzwl	(%rdi,%rax,2), %eax
	movw	%ax, 4(%rsi)
	testl	%ecx, %ecx
	je	.LBB18_14
# %bb.8:                                # %land.rhs.lr.ph.lr.ph
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movabsq	$-4294967296, %r8               # imm = 0xFFFFFFFF00000000
	xorl	%edx, %edx
.LBB18_9:                               # %land.rhs.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
	movl	%ecx, %eax
	cmpl	$2, %ecx
	movl	$1, %r9d
	cmovgel	%ecx, %r9d
	movq	%rax, %r10
	shlq	$32, %r10
	addq	%r8, %r10
	decq	%rax
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB18_10:                              # %land.rhs
                                        #   Parent Loop BB18_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%eax, %ebx
	cmpw	$0, (%rdi,%rbx,2)
	jne	.LBB18_12
# %bb.11:                               # %while.body
                                        #   in Loop: Header=BB18_10 Depth=2
	incl	%r11d
	addq	%r8, %r10
	decq	%rax
	cmpl	%r11d, %r9d
	jne	.LBB18_10
	jmp	.LBB18_15
	.p2align	4, 0x90
.LBB18_12:                              # %while.end
                                        #   in Loop: Header=BB18_9 Depth=1
	subl	%r11d, %ecx
	leal	-1(%rcx), %r9d
	leaq	1(%rdx), %rax
	movb	%r11b, 36(%rsi,%rdx)
	sarq	$31, %r10
	movzwl	(%rdi,%r10), %r10d
	movw	%r10w, 6(%rsi,%rdx,2)
	movq	%rax, %rdx
	cmpl	$1, %ecx
	movl	%r9d, %ecx
	jg	.LBB18_9
# %bb.13:                               # %do.end.loopexit49
	xorl	%r9d, %r9d
	movq	%rax, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB18_14:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r9d, %r9d
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.LBB18_15:                              # %do.end.loopexit
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	incl	%eax
	movb	%r9b, 36(%rsi,%rdx)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end18:
	.size	x264_coeff_level_run16, .Lfunc_end18-x264_coeff_level_run16
	.cfi_endproc
                                        # -- End function
	.type	x264_decimate_table4,@object    # @x264_decimate_table4
	.section	.rodata,"a",@progbits
	.globl	x264_decimate_table4
	.p2align	4, 0x0
x264_decimate_table4:
	.byte	3                               # 0x3
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.zero	10
	.size	x264_decimate_table4, 16

	.type	x264_decimate_table8,@object    # @x264_decimate_table8
	.globl	x264_decimate_table8
	.p2align	4, 0x0
x264_decimate_table8:
	.ascii	"\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001"
	.zero	40
	.size	x264_decimate_table8, 64

	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
