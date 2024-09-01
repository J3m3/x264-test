	.text
	.file	"predict.c"
	.globl	x264_predict_16x16_init         # -- Begin function x264_predict_16x16_init
	.p2align	4, 0x90
	.type	x264_predict_16x16_init,@function
x264_predict_16x16_init:                # @x264_predict_16x16_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$predict_16x16_v, (%rsi)
	movq	$predict_16x16_h, 8(%rsi)
	movq	$predict_16x16_dc, 16(%rsi)
	movq	$predict_16x16_p, 24(%rsi)
	movq	$predict_16x16_dc_left, 32(%rsi)
	movq	$predict_16x16_dc_top, 40(%rsi)
	movq	$predict_16x16_dc_128, 48(%rsi)
	retq
.Lfunc_end0:
	.size	x264_predict_16x16_init, .Lfunc_end0-x264_predict_16x16_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_v
	.type	predict_16x16_v,@function
predict_16x16_v:                        # @predict_16x16_v
	.cfi_startproc
# %bb.0:                                # %entry
	movl	-32(%rdi), %eax
	movl	-28(%rdi), %ecx
	movl	-24(%rdi), %edx
	movl	-20(%rdi), %esi
	movl	%eax, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%edx, 8(%rdi)
	movl	%esi, 12(%rdi)
	movl	%eax, 32(%rdi)
	movl	%ecx, 36(%rdi)
	movl	%edx, 40(%rdi)
	movl	%esi, 44(%rdi)
	movl	%eax, 64(%rdi)
	movl	%ecx, 68(%rdi)
	movl	%edx, 72(%rdi)
	movl	%esi, 76(%rdi)
	movl	%eax, 96(%rdi)
	movl	%ecx, 100(%rdi)
	movl	%edx, 104(%rdi)
	movl	%esi, 108(%rdi)
	movl	%eax, 128(%rdi)
	movl	%ecx, 132(%rdi)
	movl	%edx, 136(%rdi)
	movl	%esi, 140(%rdi)
	movl	%eax, 160(%rdi)
	movl	%ecx, 164(%rdi)
	movl	%edx, 168(%rdi)
	movl	%esi, 172(%rdi)
	movl	%eax, 192(%rdi)
	movl	%ecx, 196(%rdi)
	movl	%edx, 200(%rdi)
	movl	%esi, 204(%rdi)
	movl	%eax, 224(%rdi)
	movl	%ecx, 228(%rdi)
	movl	%edx, 232(%rdi)
	movl	%esi, 236(%rdi)
	movl	%eax, 256(%rdi)
	movl	%ecx, 260(%rdi)
	movl	%edx, 264(%rdi)
	movl	%esi, 268(%rdi)
	movl	%eax, 288(%rdi)
	movl	%ecx, 292(%rdi)
	movl	%edx, 296(%rdi)
	movl	%esi, 300(%rdi)
	movl	%eax, 320(%rdi)
	movl	%ecx, 324(%rdi)
	movl	%edx, 328(%rdi)
	movl	%esi, 332(%rdi)
	movl	%eax, 352(%rdi)
	movl	%ecx, 356(%rdi)
	movl	%edx, 360(%rdi)
	movl	%esi, 364(%rdi)
	movl	%eax, 384(%rdi)
	movl	%ecx, 388(%rdi)
	movl	%edx, 392(%rdi)
	movl	%esi, 396(%rdi)
	movl	%eax, 416(%rdi)
	movl	%ecx, 420(%rdi)
	movl	%edx, 424(%rdi)
	movl	%esi, 428(%rdi)
	movl	%eax, 448(%rdi)
	movl	%ecx, 452(%rdi)
	movl	%edx, 456(%rdi)
	movl	%esi, 460(%rdi)
	movl	%eax, 480(%rdi)
	movl	%ecx, 484(%rdi)
	movl	%edx, 488(%rdi)
	movl	%esi, 492(%rdi)
	retq
.Lfunc_end1:
	.size	predict_16x16_v, .Lfunc_end1-predict_16x16_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_h
	.type	predict_16x16_h,@function
predict_16x16_h:                        # @predict_16x16_h
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	movzbl	31(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 32(%rdi)
	movzbl	63(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 64(%rdi)
	movzbl	95(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 96(%rdi)
	movzbl	127(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 128(%rdi)
	movzbl	159(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 160(%rdi)
	movzbl	191(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 192(%rdi)
	movzbl	223(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 224(%rdi)
	movzbl	255(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 256(%rdi)
	movzbl	287(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 288(%rdi)
	movzbl	319(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 320(%rdi)
	movzbl	351(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 352(%rdi)
	movzbl	383(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 384(%rdi)
	movzbl	415(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 416(%rdi)
	movzbl	447(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 448(%rdi)
	movzbl	479(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 480(%rdi)
	retq
.Lfunc_end2:
	.size	predict_16x16_h, .Lfunc_end2-predict_16x16_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc
	.type	predict_16x16_dc,@function
predict_16x16_dc:                       # @predict_16x16_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	movzbl	-32(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	31(%rdi), %eax
	movzbl	-31(%rdi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	63(%rdi), %eax
	movzbl	-30(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	95(%rdi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	-29(%rdi), %ecx
	movzbl	127(%rdi), %edx
	addl	%ecx, %edx
	movzbl	-28(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	159(%rdi), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	-27(%rdi), %eax
	movzbl	191(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	-26(%rdi), %eax
	addl	%ecx, %eax
	movzbl	223(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	-25(%rdi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	255(%rdi), %ecx
	movzbl	-24(%rdi), %edx
	addl	%ecx, %edx
	movzbl	287(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	-23(%rdi), %edx
	addl	%ecx, %edx
	movzbl	319(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	-22(%rdi), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	351(%rdi), %eax
	movzbl	-21(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	383(%rdi), %eax
	addl	%ecx, %eax
	movzbl	-20(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	415(%rdi), %eax
	addl	%ecx, %eax
	movzbl	-19(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	447(%rdi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	-18(%rdi), %ecx
	movzbl	479(%rdi), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	-17(%rdi), %eax
	addl	%edx, %eax
	addl	$16, %eax
	shrl	$5, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 128(%rdi)
	movdqu	%xmm0, 160(%rdi)
	movdqu	%xmm0, 192(%rdi)
	movdqu	%xmm0, 224(%rdi)
	movdqu	%xmm0, 256(%rdi)
	movdqu	%xmm0, 288(%rdi)
	movdqu	%xmm0, 320(%rdi)
	movdqu	%xmm0, 352(%rdi)
	movdqu	%xmm0, 384(%rdi)
	movdqu	%xmm0, 416(%rdi)
	movdqu	%xmm0, 448(%rdi)
	movdqu	%xmm0, 480(%rdi)
	retq
.Lfunc_end3:
	.size	predict_16x16_dc, .Lfunc_end3-predict_16x16_dc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function predict_16x16_p
.LCPI4_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI4_1:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI4_2:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.p2align	4, 0x90
	.type	predict_16x16_p,@function
predict_16x16_p:                        # @predict_16x16_p
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
	movzbl	-24(%rdi), %eax
	movzbl	-26(%rdi), %ecx
	subl	%ecx, %eax
	movzbl	255(%rdi), %ecx
	movzbl	191(%rdi), %edx
	subl	%edx, %ecx
	movzbl	-23(%rdi), %edx
	movzbl	-27(%rdi), %esi
	subl	%esi, %edx
	leal	(%rax,%rdx,2), %eax
	movzbl	287(%rdi), %edx
	movzbl	159(%rdi), %esi
	subl	%esi, %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-22(%rdi), %edx
	movzbl	-28(%rdi), %esi
	subl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%eax, %edx
	movzbl	319(%rdi), %eax
	movzbl	127(%rdi), %esi
	subl	%esi, %eax
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	movzbl	-21(%rdi), %ecx
	movzbl	-29(%rdi), %esi
	subl	%esi, %ecx
	leal	(%rdx,%rcx,4), %ecx
	movzbl	351(%rdi), %edx
	movzbl	95(%rdi), %esi
	subl	%esi, %edx
	leal	(%rax,%rdx,4), %eax
	movzbl	-20(%rdi), %edx
	movzbl	-30(%rdi), %esi
	subl	%esi, %edx
	leal	(%rdx,%rdx,4), %edx
	addl	%ecx, %edx
	movzbl	383(%rdi), %ecx
	movzbl	63(%rdi), %esi
	subl	%esi, %ecx
	leal	(%rcx,%rcx,4), %ecx
	addl	%eax, %ecx
	movzbl	-19(%rdi), %eax
	movzbl	-31(%rdi), %esi
	subl	%esi, %eax
	leal	(%rax,%rax,2), %eax
	leal	(%rdx,%rax,2), %eax
	movzbl	415(%rdi), %edx
	movzbl	31(%rdi), %esi
	subl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-18(%rdi), %edx
	movzbl	-32(%rdi), %esi
	subl	%esi, %edx
	leal	(,%rdx,8), %esi
	subl	%edx, %esi
	addl	%eax, %esi
	movzbl	447(%rdi), %eax
	movzbl	-1(%rdi), %edx
	subl	%edx, %eax
	leal	(,%rax,8), %edx
	subl	%eax, %edx
	addl	%ecx, %edx
	movzbl	-17(%rdi), %eax
	movzbl	-33(%rdi), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	leal	(%rsi,%r8,8), %esi
	movzbl	479(%rdi), %r8d
	addl	%r8d, %eax
                                        # kill: def $r8d killed $r8d def $r8
	subl	%ecx, %r8d
	leal	(%rdx,%r8,8), %edx
	shll	$4, %eax
	leal	(%rsi,%rsi,4), %ecx
	addl	$32, %ecx
	sarl	$6, %ecx
	leal	(%rdx,%rdx,4), %edx
	addl	$32, %edx
	sarl	$6, %edx
	leal	(%rcx,%rdx), %esi
	leal	16(%rcx), %r8d
	leal	(,%rdx,4), %r9d
	subl	%r9d, %r8d
	leal	(%rdx,%rdx,4), %r10d
	negl	%r10d
	addl	%ecx, %r10d
	addl	$16, %r10d
	leal	(%rdx,%rdx), %r11d
	leal	(%r11,%r11,2), %r11d
	negl	%r11d
	addl	%ecx, %r11d
	addl	$16, %r11d
	leal	(,%rsi,8), %ebx
	subl	%ebx, %esi
	addl	$16, %esi
	leal	(,%rdx,8), %ebx
	movl	%edx, %r14d
	subl	%ebx, %r14d
	leal	(%rcx,%r14), %ebx
	addl	$16, %ebx
	leal	(%rcx,%rcx), %r14d
	leal	(%rcx,%rcx,4), %r15d
	leal	(%r15,%r15,2), %ebp
	subl	%ebp, %edx
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rbx), %ebp
	movd	%ebp, %xmm4
	leal	(%rax,%r11), %ebp
	movd	%ebp, %xmm0
	movdqa	%xmm0, -32(%rsp)                # 16-byte Spill
	leal	(%rax,%r10), %ebp
	movd	%ebp, %xmm0
	movdqa	%xmm0, -48(%rsp)                # 16-byte Spill
	leal	(%rax,%r8), %ebp
	movd	%ebp, %xmm0
	movdqa	%xmm0, -16(%rsp)                # 16-byte Spill
	leal	(%rax,%rsi), %r12d
	movd	%r12d, %xmm8
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm9
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm13
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm14
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm15
	leal	(%r14,%r12), %r12d
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm2
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm3
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm9, %xmm8            # xmm8 = xmm8[0],xmm9[0],xmm8[1],xmm9[1]
	punpckldq	%xmm10, %xmm12          # xmm12 = xmm12[0],xmm10[0],xmm12[1],xmm10[1]
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	punpcklqdq	%xmm12, %xmm8           # xmm8 = xmm8[0],xmm12[0]
	punpckldq	%xmm13, %xmm11          # xmm11 = xmm11[0],xmm13[0],xmm11[1],xmm13[1]
	movd	%r12d, %xmm9
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm15, %xmm14          # xmm14 = xmm14[0],xmm15[0],xmm14[1],xmm15[1]
	punpcklqdq	%xmm14, %xmm11          # xmm11 = xmm11[0],xmm14[0]
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	punpckldq	%xmm3, %xmm2            # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	punpcklqdq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0]
	punpckldq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0],xmm10[1],xmm9[1]
	psrad	$5, %xmm11
	psrad	$5, %xmm8
	movdqa	%xmm8, %xmm0
	psrad	$5, %xmm4
	movdqa	.LCPI4_0(%rip), %xmm7           # xmm7 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm7, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm5           # xmm5 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm5, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movd	%r12d, %xmm0
	movdqa	%xmm11, %xmm2
	pxor	%xmm7, %xmm2
	movdqa	%xmm5, %xmm3
	punpckldq	%xmm0, %xmm12           # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	pcmpgtd	%xmm2, %xmm3
	movdqa	%xmm4, %xmm0
	pxor	%xmm7, %xmm0
	punpcklqdq	%xmm12, %xmm10          # xmm10 = xmm10[0],xmm12[0]
	movdqa	%xmm5, %xmm12
	pcmpgtd	%xmm0, %xmm12
	movdqa	%xmm5, %xmm13
	psrad	$5, %xmm10
	movdqa	%xmm8, %xmm0
	pxor	%xmm6, %xmm6
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm11, %xmm2
	movdqa	%xmm10, %xmm14
	pcmpgtd	%xmm6, %xmm2
	movdqa	%xmm4, %xmm15
	pcmpgtd	%xmm6, %xmm15
	movdqa	%xmm10, %xmm1
	pand	%xmm12, %xmm4
	pandn	%xmm15, %xmm12
	pand	%xmm3, %xmm11
	por	%xmm4, %xmm12
	pandn	%xmm2, %xmm3
	por	%xmm11, %xmm3
	pand	%xmm9, %xmm8
	pxor	%xmm7, %xmm14
	pandn	%xmm0, %xmm9
	por	%xmm8, %xmm9
	movdqa	.LCPI4_2(%rip), %xmm0           # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm9
	pcmpgtd	%xmm6, %xmm1
	pand	%xmm0, %xmm3
	packuswb	%xmm3, %xmm9
	pand	%xmm0, %xmm12
	movdqa	%xmm0, %xmm8
	pcmpgtd	%xmm14, %xmm13
	addl	%edx, %r12d
	movd	%r12d, %xmm4
	addl	%ecx, %r12d
	pand	%xmm13, %xmm10
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm2
	pandn	%xmm1, %xmm13
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
	por	%xmm10, %xmm13
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm3
	pand	%xmm8, %xmm13
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %r12d
	packuswb	%xmm13, %xmm12
	movd	%r12d, %xmm13
	leal	(%r14,%r12), %r12d
	movd	%r12d, %xmm14
	packuswb	%xmm12, %xmm9
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm15
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	punpckldq	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movdqu	%xmm9, (%rdi,%r15)
	punpcklqdq	%xmm2, %xmm4            # xmm4 = xmm4[0],xmm2[0]
	punpckldq	%xmm3, %xmm10           # xmm10 = xmm10[0],xmm3[0],xmm10[1],xmm3[1]
	movd	%r12d, %xmm8
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm13, %xmm11          # xmm11 = xmm11[0],xmm13[0],xmm11[1],xmm13[1]
	punpcklqdq	%xmm11, %xmm10          # xmm10 = xmm10[0],xmm11[0]
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	movdqa	-32(%rsp), %xmm2                # 16-byte Reload
	punpckldq	%xmm14, %xmm2           # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1]
	punpckldq	%xmm15, %xmm12          # xmm12 = xmm12[0],xmm15[0],xmm12[1],xmm15[1]
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
	punpcklqdq	%xmm12, %xmm2           # xmm2 = xmm2[0],xmm12[0]
	punpckldq	%xmm0, %xmm8            # xmm8 = xmm8[0],xmm0[0],xmm8[1],xmm0[1]
	psrad	$5, %xmm10
	psrad	$5, %xmm2
	movdqa	%xmm2, %xmm14
	psrad	$5, %xmm4
	movdqa	%xmm4, %xmm0
	movdqa	%xmm7, %xmm15
	pxor	%xmm7, %xmm0
	movd	%r12d, %xmm2
	movdqa	%xmm5, %xmm9
	pcmpgtd	%xmm0, %xmm9
	movdqa	%xmm10, %xmm0
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	pxor	%xmm7, %xmm0
	movdqa	%xmm5, %xmm2
	pcmpgtd	%xmm0, %xmm2
	punpcklqdq	%xmm1, %xmm8            # xmm8 = xmm8[0],xmm1[0]
	movdqa	%xmm14, %xmm0
	pxor	%xmm7, %xmm0
	movdqa	%xmm5, %xmm11
	pcmpgtd	%xmm0, %xmm11
	movdqa	%xmm5, %xmm12
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	psrad	$5, %xmm8
	movdqa	%xmm10, %xmm1
	pcmpgtd	%xmm6, %xmm1
	movdqa	%xmm14, %xmm3
	movdqa	%xmm8, %xmm13
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm11, %xmm14
	pandn	%xmm3, %xmm11
	movdqa	%xmm8, %xmm3
	pand	%xmm2, %xmm10
	pandn	%xmm1, %xmm2
	por	%xmm10, %xmm2
	por	%xmm14, %xmm11
	pand	%xmm9, %xmm4
	pandn	%xmm0, %xmm9
	por	%xmm4, %xmm9
	pxor	%xmm7, %xmm13
	movdqa	.LCPI4_2(%rip), %xmm7           # xmm7 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm7, %xmm9
	pand	%xmm7, %xmm2
	packuswb	%xmm2, %xmm9
	pcmpgtd	%xmm6, %xmm3
	pand	%xmm7, %xmm11
	addl	%edx, %r12d
	movd	%r12d, %xmm4
	pcmpgtd	%xmm13, %xmm12
	addl	%ecx, %r12d
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	pand	%xmm12, %xmm8
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm2
	pandn	%xmm3, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm5
	leal	(%rcx,%r12), %r12d
	por	%xmm8, %xmm12
	movd	%r12d, %xmm3
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm8
	pand	%xmm7, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm13
	leal	(%r14,%r12), %r12d
	packuswb	%xmm12, %xmm11
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm14
	packuswb	%xmm11, %xmm9
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %r12d
	movdqu	%xmm9, 32(%rdi,%r15)
	punpckldq	%xmm0, %xmm4            # xmm4 = xmm4[0],xmm0[0],xmm4[1],xmm0[1]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	punpcklqdq	%xmm1, %xmm4            # xmm4 = xmm4[0],xmm1[0]
	punpckldq	%xmm3, %xmm5            # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm13, %xmm8           # xmm8 = xmm8[0],xmm13[0],xmm8[1],xmm13[1]
	punpcklqdq	%xmm8, %xmm5            # xmm5 = xmm5[0],xmm8[0]
	movd	%r12d, %xmm1
	leal	(%rcx,%r12), %r12d
	movdqa	-48(%rsp), %xmm13               # 16-byte Reload
	punpckldq	%xmm12, %xmm13          # xmm13 = xmm13[0],xmm12[0],xmm13[1],xmm12[1]
	punpckldq	%xmm11, %xmm14          # xmm14 = xmm14[0],xmm11[0],xmm14[1],xmm11[1]
	punpcklqdq	%xmm14, %xmm13          # xmm13 = xmm13[0],xmm14[0]
	punpckldq	%xmm0, %xmm10           # xmm10 = xmm10[0],xmm0[0],xmm10[1],xmm0[1]
	psrad	$5, %xmm5
	psrad	$5, %xmm4
	movdqa	%xmm4, %xmm0
	psrad	$5, %xmm13
	pxor	%xmm15, %xmm0
	movdqa	.LCPI4_1(%rip), %xmm11          # xmm11 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm11, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movd	%r12d, %xmm0
	movdqa	%xmm5, %xmm2
	pxor	%xmm15, %xmm2
	movdqa	%xmm11, %xmm3
	punpckldq	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	pcmpgtd	%xmm2, %xmm3
	movdqa	%xmm13, %xmm0
	pxor	%xmm15, %xmm0
	punpcklqdq	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0]
	movdqa	%xmm11, %xmm9
	pcmpgtd	%xmm0, %xmm9
	psrad	$5, %xmm10
	movdqa	%xmm4, %xmm0
	pcmpgtd	%xmm6, %xmm0
	movdqa	%xmm5, %xmm1
	movdqa	%xmm10, %xmm2
	pcmpgtd	%xmm6, %xmm1
	movdqa	%xmm13, %xmm12
	pcmpgtd	%xmm6, %xmm12
	movdqa	%xmm10, %xmm14
	pand	%xmm9, %xmm13
	pandn	%xmm12, %xmm9
	pand	%xmm3, %xmm5
	por	%xmm13, %xmm9
	pandn	%xmm1, %xmm3
	por	%xmm5, %xmm3
	pand	%xmm8, %xmm4
	pxor	%xmm15, %xmm2
	pandn	%xmm0, %xmm8
	por	%xmm4, %xmm8
	movdqa	.LCPI4_2(%rip), %xmm15          # xmm15 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm15, %xmm8
	pcmpgtd	%xmm6, %xmm14
	pand	%xmm15, %xmm3
	packuswb	%xmm3, %xmm8
	addl	%edx, %r12d
	pand	%xmm15, %xmm9
	movd	%r12d, %xmm4
	addl	%ecx, %r12d
	movd	%r12d, %xmm13
	pcmpgtd	%xmm2, %xmm11
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm12
	leal	(%rcx,%r12), %r12d
	pand	%xmm11, %xmm10
	movd	%r12d, %xmm7
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm5
	pandn	%xmm14, %xmm11
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm14
	leal	(%rcx,%r12), %r12d
	por	%xmm10, %xmm11
	movd	%r12d, %xmm10
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm1
	pand	%xmm15, %xmm11
	leal	(%r14,%r12), %r12d
	movd	%r12d, %xmm2
	leal	(%rcx,%r12), %r12d
	packuswb	%xmm11, %xmm9
	movd	%r12d, %xmm3
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm15
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm6
	leal	(%rcx,%r12), %r12d
	movd	%r12d, %xmm0
	leal	(%rcx,%r12), %r12d
	punpckldq	%xmm13, %xmm4           # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1]
	punpckldq	%xmm7, %xmm12           # xmm12 = xmm12[0],xmm7[0],xmm12[1],xmm7[1]
	movd	%r12d, %xmm11
	leal	(%rcx,%r12), %ebp
	movd	%ebp, %xmm7
	punpcklqdq	%xmm12, %xmm4           # xmm4 = xmm4[0],xmm12[0]
	punpckldq	%xmm14, %xmm5           # xmm5 = xmm5[0],xmm14[0],xmm5[1],xmm14[1]
	packuswb	%xmm9, %xmm8
	punpckldq	%xmm1, %xmm10           # xmm10 = xmm10[0],xmm1[0],xmm10[1],xmm1[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	movdqa	-16(%rsp), %xmm13               # 16-byte Reload
	punpckldq	%xmm2, %xmm13           # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	movdqu	%xmm8, 64(%rdi,%r15)
	punpckldq	%xmm15, %xmm3           # xmm3 = xmm3[0],xmm15[0],xmm3[1],xmm15[1]
	punpcklqdq	%xmm3, %xmm13           # xmm13 = xmm13[0],xmm3[0]
	psrad	$5, %xmm5
	punpckldq	%xmm0, %xmm6            # xmm6 = xmm6[0],xmm0[0],xmm6[1],xmm0[1]
	psrad	$5, %xmm4
	movdqa	%xmm4, %xmm0
	movdqa	.LCPI4_0(%rip), %xmm1           # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	pxor	%xmm1, %xmm0
	psrad	$5, %xmm13
	movdqa	.LCPI4_1(%rip), %xmm3           # xmm3 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	%xmm3, %xmm8
	pcmpgtd	%xmm0, %xmm8
	movdqa	%xmm5, %xmm0
	punpckldq	%xmm7, %xmm11           # xmm11 = xmm11[0],xmm7[0],xmm11[1],xmm7[1]
	pxor	%xmm1, %xmm0
	movdqa	%xmm3, %xmm10
	pcmpgtd	%xmm0, %xmm10
	punpcklqdq	%xmm11, %xmm6           # xmm6 = xmm6[0],xmm11[0]
	movdqa	%xmm13, %xmm0
	pxor	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	movdqa	%xmm3, %xmm9
	movdqa	%xmm3, %xmm11
	psrad	$5, %xmm6
	pcmpgtd	%xmm0, %xmm9
	movdqa	%xmm4, %xmm12
	movdqa	%xmm6, %xmm0
	pxor	%xmm3, %xmm3
	pcmpgtd	%xmm3, %xmm12
	movdqa	%xmm5, %xmm1
	pcmpgtd	%xmm3, %xmm1
	pxor	%xmm2, %xmm0
	movdqa	%xmm13, %xmm2
	pcmpgtd	%xmm3, %xmm2
	pxor	%xmm7, %xmm7
	movdqa	%xmm6, %xmm3
	pcmpgtd	%xmm0, %xmm11
	pcmpgtd	%xmm7, %xmm3
	pand	%xmm9, %xmm13
	pandn	%xmm2, %xmm9
	pand	%xmm11, %xmm6
	por	%xmm13, %xmm9
	pand	%xmm10, %xmm5
	pandn	%xmm1, %xmm10
	pandn	%xmm3, %xmm11
	por	%xmm5, %xmm10
	pand	%xmm8, %xmm4
	pandn	%xmm12, %xmm8
	por	%xmm6, %xmm11
	por	%xmm4, %xmm8
	movdqa	.LCPI4_2(%rip), %xmm0           # xmm0 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	pand	%xmm0, %xmm8
	pand	%xmm0, %xmm10
	packuswb	%xmm10, %xmm8
	pand	%xmm0, %xmm9
	pand	%xmm0, %xmm11
	packuswb	%xmm11, %xmm9
	packuswb	%xmm9, %xmm8
	movdqu	%xmm8, 96(%rdi,%r15)
	addl	%r9d, %r8d
	addl	%r9d, %r10d
	subq	$-128, %r15
	addl	%r9d, %r11d
	addl	%r9d, %esi
	addl	%r9d, %ebx
	cmpq	$512, %r15                      # imm = 0x200
	jne	.LBB4_1
# %bb.2:                                # %for.cond.cleanup44
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
.Lfunc_end4:
	.size	predict_16x16_p, .Lfunc_end4-predict_16x16_p
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc_left
	.type	predict_16x16_dc_left,@function
predict_16x16_dc_left:                  # @predict_16x16_dc_left
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	movzbl	31(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	63(%rdi), %eax
	movzbl	95(%rdi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	127(%rdi), %eax
	movzbl	159(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	191(%rdi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	223(%rdi), %ecx
	movzbl	255(%rdi), %edx
	addl	%ecx, %edx
	movzbl	287(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	319(%rdi), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	351(%rdi), %eax
	movzbl	383(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	415(%rdi), %eax
	addl	%ecx, %eax
	movzbl	447(%rdi), %ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	movzbl	479(%rdi), %eax
	addl	%ecx, %eax
	addl	$8, %eax
	shrl	$4, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 128(%rdi)
	movdqu	%xmm0, 160(%rdi)
	movdqu	%xmm0, 192(%rdi)
	movdqu	%xmm0, 224(%rdi)
	movdqu	%xmm0, 256(%rdi)
	movdqu	%xmm0, 288(%rdi)
	movdqu	%xmm0, 320(%rdi)
	movdqu	%xmm0, 352(%rdi)
	movdqu	%xmm0, 384(%rdi)
	movdqu	%xmm0, 416(%rdi)
	movdqu	%xmm0, 448(%rdi)
	movdqu	%xmm0, 480(%rdi)
	retq
.Lfunc_end5:
	.size	predict_16x16_dc_left, .Lfunc_end5-predict_16x16_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_16x16_dc_top
	.type	predict_16x16_dc_top,@function
predict_16x16_dc_top:                   # @predict_16x16_dc_top
	.cfi_startproc
# %bb.0:                                # %entry
	movdqu	-32(%rdi), %xmm0
	pxor	%xmm1, %xmm1
	psadbw	%xmm0, %xmm1
	pshufd	$238, %xmm1, %xmm0              # xmm0 = xmm1[2,3,2,3]
	paddq	%xmm1, %xmm0
	movd	%xmm0, %eax
	addl	$8, %eax
	shrl	$4, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, 32(%rdi)
	movdqu	%xmm0, 64(%rdi)
	movdqu	%xmm0, 96(%rdi)
	movdqu	%xmm0, 128(%rdi)
	movdqu	%xmm0, 160(%rdi)
	movdqu	%xmm0, 192(%rdi)
	movdqu	%xmm0, 224(%rdi)
	movdqu	%xmm0, 256(%rdi)
	movdqu	%xmm0, 288(%rdi)
	movdqu	%xmm0, 320(%rdi)
	movdqu	%xmm0, 352(%rdi)
	movdqu	%xmm0, 384(%rdi)
	movdqu	%xmm0, 416(%rdi)
	movdqu	%xmm0, 448(%rdi)
	movdqu	%xmm0, 480(%rdi)
	retq
.Lfunc_end6:
	.size	predict_16x16_dc_top, .Lfunc_end6-predict_16x16_dc_top
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function predict_16x16_dc_128
.LCPI7_0:
	.zero	16,128
	.text
	.p2align	4, 0x90
	.type	predict_16x16_dc_128,@function
predict_16x16_dc_128:                   # @predict_16x16_dc_128
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	.LCPI7_0(%rip), %xmm0           # xmm0 = [128,128,128,128,128,128,128,128,128,128,128,128,128,128,128,128]
	movups	%xmm0, (%rdi)
	movups	%xmm0, 32(%rdi)
	movups	%xmm0, 64(%rdi)
	movups	%xmm0, 96(%rdi)
	movups	%xmm0, 128(%rdi)
	movups	%xmm0, 160(%rdi)
	movups	%xmm0, 192(%rdi)
	movups	%xmm0, 224(%rdi)
	movups	%xmm0, 256(%rdi)
	movups	%xmm0, 288(%rdi)
	movups	%xmm0, 320(%rdi)
	movups	%xmm0, 352(%rdi)
	movups	%xmm0, 384(%rdi)
	movups	%xmm0, 416(%rdi)
	movups	%xmm0, 448(%rdi)
	movups	%xmm0, 480(%rdi)
	retq
.Lfunc_end7:
	.size	predict_16x16_dc_128, .Lfunc_end7-predict_16x16_dc_128
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_8x8c_init          # -- Begin function x264_predict_8x8c_init
	.p2align	4, 0x90
	.type	x264_predict_8x8c_init,@function
x264_predict_8x8c_init:                 # @x264_predict_8x8c_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$predict_8x8c_v, 16(%rsi)
	movq	$predict_8x8c_h, 8(%rsi)
	movq	$predict_8x8c_dc, (%rsi)
	movq	$predict_8x8c_p, 24(%rsi)
	movq	$predict_8x8c_dc_left, 32(%rsi)
	movq	$predict_8x8c_dc_top, 40(%rsi)
	movq	$predict_8x8c_dc_128, 48(%rsi)
	retq
.Lfunc_end8:
	.size	x264_predict_8x8c_init, .Lfunc_end8-x264_predict_8x8c_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_v
	.type	predict_8x8c_v,@function
predict_8x8c_v:                         # @predict_8x8c_v
	.cfi_startproc
# %bb.0:                                # %entry
	movl	-32(%rdi), %eax
	movl	-28(%rdi), %ecx
	movl	%eax, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%ecx, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%ecx, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%ecx, 100(%rdi)
	movl	%eax, 128(%rdi)
	movl	%ecx, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%ecx, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%ecx, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%ecx, 228(%rdi)
	retq
.Lfunc_end9:
	.size	predict_8x8c_v, .Lfunc_end9-predict_8x8c_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_h
	.type	predict_8x8c_h,@function
predict_8x8c_h:                         # @predict_8x8c_h
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
	movzbl	31(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
	movzbl	63(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
	movzbl	95(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
	movzbl	127(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
	movzbl	159(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
	movzbl	191(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
	movzbl	223(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
	retq
.Lfunc_end10:
	.size	predict_8x8c_h, .Lfunc_end10-predict_8x8c_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc
	.type	predict_8x8c_dc,@function
predict_8x8c_dc:                        # @predict_8x8c_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-32(%rdi), %eax
	movzbl	-28(%rdi), %ecx
	movzbl	-1(%rdi), %edx
	movzbl	127(%rdi), %esi
	movzbl	-31(%rdi), %r8d
	addl	%eax, %r8d
	movzbl	-27(%rdi), %eax
	addl	%ecx, %eax
	movzbl	31(%rdi), %r9d
	addl	%edx, %r9d
	movzbl	159(%rdi), %edx
	addl	%esi, %edx
	movzbl	-30(%rdi), %esi
	movzbl	-26(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	63(%rdi), %r10d
	movzbl	191(%rdi), %eax
	addl	%edx, %eax
	movzbl	-29(%rdi), %edx
	addl	%esi, %edx
	addl	%r8d, %edx
	movzbl	-25(%rdi), %esi
	leal	(%rcx,%rsi), %r8d
	movzbl	95(%rdi), %r11d
	addl	%r10d, %r11d
	addl	%r9d, %r11d
	movzbl	223(%rdi), %r9d
	leal	(%rax,%r9), %r10d
	addl	%r11d, %edx
	addl	$4, %edx
	shrl	$3, %edx
	imull	$16843009, %edx, %edx           # imm = 0x1010101
	addl	%esi, %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	leal	(%r10,%r8), %esi
	addl	$4, %esi
	shrl	$3, %esi
	movl	%edx, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%edx, 32(%rdi)
	movl	%ecx, 36(%rdi)
	movl	%edx, 64(%rdi)
	movl	%ecx, 68(%rdi)
	movl	%edx, 96(%rdi)
	movl	%ecx, 100(%rdi)
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	imull	$16843009, %esi, %ecx           # imm = 0x1010101
	movl	%eax, 128(%rdi)
	movl	%ecx, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%ecx, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%ecx, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%ecx, 228(%rdi)
	retq
.Lfunc_end11:
	.size	predict_8x8c_dc, .Lfunc_end11-predict_8x8c_dc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function predict_8x8c_p
.LCPI12_0:
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
	.long	2147483648                      # 0x80000000
.LCPI12_1:
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
	.long	2147483904                      # 0x80000100
.LCPI12_2:
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.text
	.p2align	4, 0x90
	.type	predict_8x8c_p,@function
predict_8x8c_p:                         # @predict_8x8c_p
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
	movzbl	-28(%rdi), %eax
	movzbl	-30(%rdi), %ecx
	subl	%ecx, %eax
	movzbl	127(%rdi), %ecx
	movzbl	63(%rdi), %edx
	subl	%edx, %ecx
	movzbl	-27(%rdi), %edx
	movzbl	-31(%rdi), %esi
	subl	%esi, %edx
	leal	(%rax,%rdx,2), %eax
	movzbl	159(%rdi), %edx
	movzbl	31(%rdi), %esi
	subl	%esi, %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-26(%rdi), %edx
	movzbl	-32(%rdi), %esi
	subl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%eax, %edx
	movzbl	191(%rdi), %eax
	movzbl	-1(%rdi), %esi
	subl	%esi, %eax
	leal	(%rax,%rax,2), %esi
	addl	%ecx, %esi
	movzbl	-25(%rdi), %eax
	movzbl	-33(%rdi), %ecx
	movl	%eax, %r8d
	subl	%ecx, %r8d
	leal	(%rdx,%r8,4), %edx
	movzbl	223(%rdi), %r8d
	addl	%r8d, %eax
                                        # kill: def $r8d killed $r8d def $r8
	subl	%ecx, %r8d
	leal	(%rsi,%r8,4), %esi
	shll	$4, %eax
	movl	%edx, %ecx
	shll	$4, %ecx
	addl	%edx, %ecx
	addl	$16, %ecx
	sarl	$5, %ecx
	movl	%esi, %edx
	shll	$4, %edx
	leal	(%rdx,%rsi), %r9d
	addl	$16, %r9d
	sarl	$5, %r9d
	leal	(%rcx,%r9), %edx
	leal	(%rdx,%rdx,2), %esi
	negl	%esi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	addq	$96, %rdi
	leal	(%rcx,%rcx,2), %r8d
	movl	%r8d, %esi
	negl	%esi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	addl	$16, %eax
	leal	(%rcx,%rcx), %r10d
	movl	%r10d, %r14d
	negl	%r14d
	movl	%ecx, %r15d
	negl	%r15d
	leal	(,%rcx,4), %ebp
	movl	%ecx, %esi
	subl	%r9d, %esi
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	movl	%r10d, %esi
	subl	%r9d, %esi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movl	%r8d, %esi
	subl	%r9d, %esi
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movl	%ebp, %esi
	subl	%r9d, %esi
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	leal	(%r9,%r9), %ebx
	leal	(%r9,%r9,2), %r11d
	leal	(,%r9,4), %esi
                                        # kill: def $r9d killed $r9d killed $r9 def $r9
	negl	%r9d
	movl	%r9d, %r12d
	subl	%r8d, %r12d
	movq	%r12, -40(%rsp)                 # 8-byte Spill
	movl	%r9d, %r12d
	subl	%r10d, %r12d
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	movl	%edx, %r12d
	negl	%r12d
	movq	%r12, -56(%rsp)                 # 8-byte Spill
	movl	%r15d, %r12d
	subl	%ebx, %r12d
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	movl	%ecx, %r12d
	subl	%ebx, %r12d
	movq	%r12, -72(%rsp)                 # 8-byte Spill
	movl	%r10d, %r12d
	subl	%ebx, %r12d
	movq	%r12, -80(%rsp)                 # 8-byte Spill
	movl	%r8d, %r12d
	subl	%ebx, %r12d
	movq	%r12, -88(%rsp)                 # 8-byte Spill
	movl	%ebp, %r12d
	subl	%ebx, %r12d
	movq	%r12, -96(%rsp)                 # 8-byte Spill
	movl	%ebx, %r13d
	negl	%r13d
	movl	%r13d, %ebx
	subl	%r8d, %ebx
	movq	%rbx, -104(%rsp)                # 8-byte Spill
	addl	%edx, %edx
	negl	%edx
	movq	%r14, 16(%rsp)                  # 8-byte Spill
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	subl	%r11d, %r14d
	movq	%r14, -112(%rsp)                # 8-byte Spill
	movq	%r15, 8(%rsp)                   # 8-byte Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	subl	%r11d, %r15d
	movq	%r15, -120(%rsp)                # 8-byte Spill
	movl	%ecx, %ebx
	subl	%r11d, %ebx
	movq	%rbx, -128(%rsp)                # 8-byte Spill
	movl	%r10d, %r14d
	subl	%r11d, %r14d
	movl	%r8d, %r15d
	subl	%r11d, %r15d
	movq	%rbp, (%rsp)                    # 8-byte Spill
                                        # kill: def $ebp killed $ebp killed $rbp def $rbp
	subl	%r11d, %ebp
                                        # kill: def $r11d killed $r11d def $r11
	negl	%r11d
	pxor	%xmm0, %xmm0
	movdqa	.LCPI12_0(%rip), %xmm1          # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	movdqa	.LCPI12_1(%rip), %xmm2          # xmm2 = [2147483904,2147483904,2147483904,2147483904]
	movdqa	.LCPI12_2(%rip), %xmm3          # xmm3 = [255,0,0,0,255,0,0,0,255,0,0,0,255,0,0,0]
	xorl	%ebx, %ebx
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_9:                               # %pred.store.continue114
                                        #   in Loop: Header=BB12_1 Depth=1
	addq	$4, %rbx
	subq	$-128, %rdi
	addl	%esi, %eax
	cmpq	$8, %rbx
	je	.LBB12_10
.LBB12_1:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$7, %rbx
	jbe	.LBB12_2
# %bb.3:                                # %pred.store.continue
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$7, %rbx
	jbe	.LBB12_4
.LBB12_5:                               # %pred.store.continue110
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$7, %rbx
	jbe	.LBB12_6
.LBB12_7:                               # %pred.store.continue112
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$7, %rbx
	ja	.LBB12_9
	jmp	.LBB12_8
	.p2align	4, 0x90
.LBB12_2:                               # %pred.store.if
                                        #   in Loop: Header=BB12_1 Depth=1
	leal	(%rax,%rbp), %r12d
	movd	%r12d, %xmm6
	leal	(%r15,%rax), %r12d
	movd	%r12d, %xmm7
	leal	(%r14,%rax), %r12d
	movd	%r12d, %xmm8
	movq	-128(%rsp), %r12                # 8-byte Reload
	addl	%eax, %r12d
	movd	%r12d, %xmm4
	leal	(%r11,%rax), %r12d
	movd	%r12d, %xmm9
	movq	-120(%rsp), %r12                # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm10
	movq	-112(%rsp), %r12                # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm11
	movq	32(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm5
	punpckldq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	punpcklqdq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0]
	punpckldq	%xmm9, %xmm10           # xmm10 = xmm10[0],xmm9[0],xmm10[1],xmm9[1]
	punpckldq	%xmm11, %xmm5           # xmm5 = xmm5[0],xmm11[0],xmm5[1],xmm11[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	psrad	$5, %xmm4
	psrad	$5, %xmm5
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm0, %xmm7
	movdqa	%xmm4, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm8, %xmm9
	movdqa	%xmm5, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm8, %xmm10
	pand	%xmm9, %xmm4
	pandn	%xmm6, %xmm9
	por	%xmm4, %xmm9
	pand	%xmm10, %xmm5
	pandn	%xmm7, %xmm10
	por	%xmm5, %xmm10
	pand	%xmm3, %xmm9
	pand	%xmm3, %xmm10
	packuswb	%xmm9, %xmm10
	packuswb	%xmm10, %xmm10
	movq	%xmm10, -96(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_5
.LBB12_4:                               # %pred.store.if109
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-96(%rsp), %r12                 # 8-byte Reload
	addl	%eax, %r12d
	movd	%r12d, %xmm5
	movq	-88(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm6
	movq	-80(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm7
	movq	-72(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm4
	leal	(%r13,%rax), %r12d
	movd	%r12d, %xmm8
	movq	-64(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm9
	leal	(%rdx,%rax), %r12d
	movd	%r12d, %xmm10
	movq	-104(%rsp), %r12                # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm11
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckldq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	punpckldq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	psrad	$5, %xmm11
	psrad	$5, %xmm4
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm11, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm7, %xmm9
	pand	%xmm9, %xmm11
	pandn	%xmm6, %xmm9
	por	%xmm11, %xmm9
	pand	%xmm8, %xmm4
	pandn	%xmm5, %xmm8
	por	%xmm4, %xmm8
	pand	%xmm3, %xmm8
	pand	%xmm3, %xmm9
	packuswb	%xmm8, %xmm9
	packuswb	%xmm9, %xmm9
	movq	%xmm9, -64(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_7
.LBB12_6:                               # %pred.store.if111
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rsp), %r12                 # 8-byte Reload
	addl	%eax, %r12d
	movd	%r12d, %xmm5
	movq	-24(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm6
	movq	-16(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm7
	movq	-8(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm4
	leal	(%r9,%rax), %r12d
	movd	%r12d, %xmm8
	movq	-56(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm9
	movq	-48(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm10
	movq	-40(%rsp), %r12                 # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm11
	punpckldq	%xmm5, %xmm6            # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	punpckldq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0],xmm4[1],xmm7[1]
	punpcklqdq	%xmm6, %xmm4            # xmm4 = xmm4[0],xmm6[0]
	punpckldq	%xmm8, %xmm9            # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	punpckldq	%xmm10, %xmm11          # xmm11 = xmm11[0],xmm10[0],xmm11[1],xmm10[1]
	punpcklqdq	%xmm9, %xmm11           # xmm11 = xmm11[0],xmm9[0]
	psrad	$5, %xmm11
	psrad	$5, %xmm4
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm0, %xmm5
	movdqa	%xmm11, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm4, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm8
	pcmpgtd	%xmm7, %xmm8
	movdqa	%xmm11, %xmm7
	pxor	%xmm1, %xmm7
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm7, %xmm9
	pand	%xmm9, %xmm11
	pandn	%xmm6, %xmm9
	por	%xmm11, %xmm9
	pand	%xmm8, %xmm4
	pandn	%xmm5, %xmm8
	por	%xmm4, %xmm8
	pand	%xmm3, %xmm8
	pand	%xmm3, %xmm9
	packuswb	%xmm8, %xmm9
	packuswb	%xmm9, %xmm9
	movq	%xmm9, -32(%rdi)
	cmpq	$7, %rbx
	ja	.LBB12_9
.LBB12_8:                               # %pred.store.if113
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	(%rsp), %r12                    # 8-byte Reload
	addl	%eax, %r12d
	movd	%r12d, %xmm6
	leal	(%r8,%rax), %r12d
	movd	%r12d, %xmm7
	leal	(%r10,%rax), %r12d
	movd	%r12d, %xmm8
	leal	(%rcx,%rax), %r12d
	movd	%r12d, %xmm4
	movq	16(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm9
	movq	24(%rsp), %r12                  # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm5
	movq	8(%rsp), %r12                   # 8-byte Reload
	leal	(%r12,%rax), %r12d
	movd	%r12d, %xmm10
	punpckldq	%xmm6, %xmm7            # xmm7 = xmm7[0],xmm6[0],xmm7[1],xmm6[1]
	punpckldq	%xmm8, %xmm4            # xmm4 = xmm4[0],xmm8[0],xmm4[1],xmm8[1]
	punpcklqdq	%xmm7, %xmm4            # xmm4 = xmm4[0],xmm7[0]
	punpckldq	%xmm9, %xmm5            # xmm5 = xmm5[0],xmm9[0],xmm5[1],xmm9[1]
	movd	%eax, %xmm6
	punpckldq	%xmm6, %xmm10           # xmm10 = xmm10[0],xmm6[0],xmm10[1],xmm6[1]
	punpcklqdq	%xmm10, %xmm5           # xmm5 = xmm5[0],xmm10[0]
	psrad	$5, %xmm4
	psrad	$5, %xmm5
	movdqa	%xmm4, %xmm6
	pcmpgtd	%xmm0, %xmm6
	movdqa	%xmm5, %xmm7
	pcmpgtd	%xmm0, %xmm7
	movdqa	%xmm4, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm9
	pcmpgtd	%xmm8, %xmm9
	movdqa	%xmm5, %xmm8
	pxor	%xmm1, %xmm8
	movdqa	%xmm2, %xmm10
	pcmpgtd	%xmm8, %xmm10
	pand	%xmm9, %xmm4
	pandn	%xmm6, %xmm9
	por	%xmm4, %xmm9
	pand	%xmm10, %xmm5
	pandn	%xmm7, %xmm10
	por	%xmm5, %xmm10
	pand	%xmm3, %xmm9
	pand	%xmm3, %xmm10
	packuswb	%xmm9, %xmm10
	packuswb	%xmm10, %xmm10
	movq	%xmm10, (%rdi)
	jmp	.LBB12_9
.LBB12_10:                              # %for.cond.cleanup44
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
.Lfunc_end12:
	.size	predict_8x8c_p, .Lfunc_end12-predict_8x8c_p
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_left
	.type	predict_8x8c_dc_left,@function
predict_8x8c_dc_left:                   # @predict_8x8c_dc_left
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	movzbl	127(%rdi), %ecx
	movzbl	31(%rdi), %edx
	addl	%eax, %edx
	movzbl	159(%rdi), %eax
	addl	%ecx, %eax
	movzbl	63(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	191(%rdi), %edx
	addl	%eax, %edx
	movzbl	95(%rdi), %eax
	movzbl	223(%rdi), %esi
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	leal	(%rsi,%rdx), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
	imull	$16843009, %ecx, %eax           # imm = 0x1010101
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
	retq
.Lfunc_end13:
	.size	predict_8x8c_dc_left, .Lfunc_end13-predict_8x8c_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_top
	.type	predict_8x8c_dc_top,@function
predict_8x8c_dc_top:                    # @predict_8x8c_dc_top
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-32(%rdi), %eax
	movzbl	-28(%rdi), %ecx
	movzbl	-31(%rdi), %edx
	addl	%eax, %edx
	movzbl	-27(%rdi), %eax
	addl	%ecx, %eax
	movzbl	-30(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	-26(%rdi), %edx
	addl	%eax, %edx
	movzbl	-29(%rdi), %eax
	movzbl	-25(%rdi), %esi
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	leal	(%rsi,%rdx), %ecx
	addl	$2, %ecx
	shrl	$2, %ecx
	imull	$16843009, %ecx, %ecx           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%ecx, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%ecx, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%ecx, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%ecx, 100(%rdi)
	movl	%eax, 128(%rdi)
	movl	%ecx, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%ecx, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%ecx, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%ecx, 228(%rdi)
	retq
.Lfunc_end14:
	.size	predict_8x8c_dc_top, .Lfunc_end14-predict_8x8c_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8c_dc_128
	.type	predict_8x8c_dc_128,@function
predict_8x8c_dc_128:                    # @predict_8x8c_dc_128
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$-9187201950435737472, %rax     # imm = 0x8080808080808080
	movq	%rax, (%rdi)
	movq	%rax, 32(%rdi)
	movq	%rax, 64(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rax, 224(%rdi)
	retq
.Lfunc_end15:
	.size	predict_8x8c_dc_128, .Lfunc_end15-predict_8x8c_dc_128
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_8x8_init           # -- Begin function x264_predict_8x8_init
	.p2align	4, 0x90
	.type	x264_predict_8x8_init,@function
x264_predict_8x8_init:                  # @x264_predict_8x8_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$predict_8x8_v, (%rsi)
	movq	$predict_8x8_h, 8(%rsi)
	movq	$predict_8x8_dc, 16(%rsi)
	movq	$predict_8x8_ddl, 24(%rsi)
	movq	$predict_8x8_ddr, 32(%rsi)
	movq	$predict_8x8_vr, 40(%rsi)
	movq	$predict_8x8_hd, 48(%rsi)
	movq	$predict_8x8_vl, 56(%rsi)
	movq	$predict_8x8_hu, 64(%rsi)
	movq	$predict_8x8_dc_left, 72(%rsi)
	movq	$predict_8x8_dc_top, 80(%rsi)
	movq	$predict_8x8_dc_128, 88(%rsi)
	movq	$predict_8x8_filter, (%rdx)
	retq
.Lfunc_end16:
	.size	x264_predict_8x8_init, .Lfunc_end16-x264_predict_8x8_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_v
	.type	predict_8x8_v,@function
predict_8x8_v:                          # @predict_8x8_v
	.cfi_startproc
# %bb.0:                                # %entry
	movq	16(%rsi), %rax
	movq	%rax, (%rdi)
	movq	%rax, 32(%rdi)
	movq	%rax, 64(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rax, 224(%rdi)
	retq
.Lfunc_end17:
	.size	predict_8x8_v, .Lfunc_end17-predict_8x8_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_h
	.type	predict_8x8_h,@function
predict_8x8_h:                          # @predict_8x8_h
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	14(%rsi), %eax
	movzbl	13(%rsi), %ecx
	movzbl	12(%rsi), %edx
	movzbl	11(%rsi), %r8d
	movzbl	10(%rsi), %r9d
	movzbl	9(%rsi), %r10d
	movzbl	8(%rsi), %r11d
	movzbl	7(%rsi), %esi
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 4(%rdi)
	movl	%eax, (%rdi)
	imull	$16843009, %ecx, %eax           # imm = 0x1010101
	movl	%eax, 36(%rdi)
	movl	%eax, 32(%rdi)
	imull	$16843009, %edx, %eax           # imm = 0x1010101
	movl	%eax, 68(%rdi)
	movl	%eax, 64(%rdi)
	imull	$16843009, %r8d, %eax           # imm = 0x1010101
	movl	%eax, 100(%rdi)
	movl	%eax, 96(%rdi)
	imull	$16843009, %r9d, %eax           # imm = 0x1010101
	movl	%eax, 132(%rdi)
	movl	%eax, 128(%rdi)
	imull	$16843009, %r10d, %eax          # imm = 0x1010101
	movl	%eax, 164(%rdi)
	movl	%eax, 160(%rdi)
	imull	$16843009, %r11d, %eax          # imm = 0x1010101
	movl	%eax, 196(%rdi)
	movl	%eax, 192(%rdi)
	imull	$16843009, %esi, %eax           # imm = 0x1010101
	movl	%eax, 228(%rdi)
	movl	%eax, 224(%rdi)
	retq
.Lfunc_end18:
	.size	predict_8x8_h, .Lfunc_end18-predict_8x8_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc
	.type	predict_8x8_dc,@function
predict_8x8_dc:                         # @predict_8x8_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	14(%rsi), %eax
	movzbl	13(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	12(%rsi), %eax
	movzbl	11(%rsi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	10(%rsi), %eax
	movzbl	9(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	8(%rsi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	7(%rsi), %ecx
	movzbl	16(%rsi), %edx
	addl	%ecx, %edx
	movzbl	17(%rsi), %ecx
	addl	%edx, %ecx
	movzbl	18(%rsi), %edx
	addl	%ecx, %edx
	addl	%eax, %edx
	movzbl	19(%rsi), %eax
	movzbl	20(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	21(%rsi), %eax
	addl	%ecx, %eax
	movzbl	22(%rsi), %ecx
	addl	%eax, %ecx
	addl	%edx, %ecx
	movzbl	23(%rsi), %eax
	addl	%ecx, %eax
	addl	$8, %eax
	shrl	$4, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
	retq
.Lfunc_end19:
	.size	predict_8x8_dc, .Lfunc_end19-predict_8x8_dc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function predict_8x8_ddl
.LCPI20_0:
	.short	2                               # 0x2
	.short	2                               # 0x2
	.short	2                               # 0x2
	.short	2                               # 0x2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
.LCPI20_1:
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.text
	.p2align	4, 0x90
	.type	predict_8x8_ddl,@function
predict_8x8_ddl:                        # @predict_8x8_ddl
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movzbl	16(%rsi), %r9d
	movzbl	17(%rsi), %r10d
	movzbl	18(%rsi), %r11d
	movzbl	19(%rsi), %ebx
	movzbl	28(%rsi), %r8d
	movzbl	29(%rsi), %eax
	movzwl	%ax, %edx
	movzbl	30(%rsi), %eax
	movzbl	31(%rsi), %ecx
	addl	%r11d, %r9d
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	addl	%ebx, %r10d
	addl	$2, %r10d
	leal	(%r10,%r11,2), %r10d
	shrl	$2, %r10d
	leal	(%r11,%rbx,2), %r11d
	addl	$2, %r11d
	movd	20(%rsi), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	pxor	%xmm0, %xmm0
	punpcklbw	%xmm0, %xmm1            # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1],xmm1[2],xmm0[2],xmm1[3],xmm0[3],xmm1[4],xmm0[4],xmm1[5],xmm0[5],xmm1[6],xmm0[6],xmm1[7],xmm0[7]
	pextrw	$0, %xmm1, %r14d
	addl	%r14d, %r11d
	leal	(%rbx,%r14,2), %ebp
	addl	$2, %ebp
	pextrw	$1, %xmm1, %ebx
	shrl	$2, %r11d
	addl	%ebp, %ebx
	movl	24(%rsi), %esi
	movzbl	%sil, %ebp
	movd	%esi, %xmm2
	punpcklbw	%xmm0, %xmm2            # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	punpckldq	%xmm2, %xmm0            # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	paddw	%xmm1, %xmm0
	pinsrw	$0, %ebp, %xmm1
	shrl	$2, %ebx
	paddw	%xmm1, %xmm1
	pshuflw	$57, %xmm1, %xmm1               # xmm1 = xmm1[1,2,3,0,4,5,6,7]
	movdqa	.LCPI20_0(%rip), %xmm3          # xmm3 = [2,2,2,2,u,u,u,u]
	movb	%r9b, (%rdi)
	movb	%r10b, 1(%rdi)
	movb	%r10b, 32(%rdi)
	movb	%r11b, 2(%rdi)
	movb	%r11b, 33(%rdi)
	movb	%r11b, 64(%rdi)
	movb	%bl, 3(%rdi)
	movb	%bl, 34(%rdi)
	movb	%bl, 65(%rdi)
	movb	%bl, 96(%rdi)
	paddw	%xmm3, %xmm0
	paddw	%xmm1, %xmm0
	psrlw	$2, %xmm0
	movdqa	.LCPI20_1(%rip), %xmm1          # xmm1 = [255,255,255,255,255,255,255,255]
	pand	%xmm1, %xmm0
	packuswb	%xmm0, %xmm0
	movd	%xmm0, 4(%rdi)
	movd	%xmm0, 35(%rdi)
	movd	%xmm0, 66(%rdi)
	movd	%xmm0, 97(%rdi)
	movd	%xmm0, 128(%rdi)
	movdqa	%xmm2, %xmm4
	pinsrw	$0, %r8d, %xmm4
	paddw	%xmm4, %xmm4
	pshuflw	$57, %xmm4, %xmm4               # xmm4 = xmm4[1,2,3,0,4,5,6,7]
	paddw	%xmm2, %xmm4
	pshufd	$85, %xmm2, %xmm2               # xmm2 = xmm2[1,1,1,1]
	pinsrw	$2, %r8d, %xmm2
	pinsrw	$3, %edx, %xmm2
	paddw	%xmm4, %xmm2
	paddw	%xmm3, %xmm2
	psrlw	$2, %xmm2
	movdqa	%xmm2, -16(%rsp)
	pand	%xmm2, %xmm1
	packuswb	%xmm1, %xmm1
	movzbl	-10(%rsp), %esi
	movzbl	-12(%rsp), %r9d
	movzbl	-16(%rsp), %r10d
	movzbl	-14(%rsp), %r11d
	movb	%r10b, 39(%rdi)
	movb	%r10b, 70(%rdi)
	movb	%r10b, 101(%rdi)
	pslld	$24, %xmm2
	movdqa	%xmm0, %xmm3
	psrld	$8, %xmm3
	por	%xmm2, %xmm3
	movd	%xmm3, 160(%rdi)
	movb	%r11b, 71(%rdi)
	movb	%r11b, 102(%rdi)
	movb	%r11b, 164(%rdi)
	movdqa	%xmm0, %xmm2
	psrld	$16, %xmm2
	punpcklwd	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3]
	movd	%xmm2, 192(%rdi)
	movb	%r9b, 103(%rdi)
	movb	%r9b, 165(%rdi)
	movb	%r9b, 196(%rdi)
	psrld	$24, %xmm0
	movdqa	%xmm1, %xmm2
	pslld	$8, %xmm2
	por	%xmm0, %xmm2
	movd	%xmm2, 224(%rdi)
	movd	%xmm1, 132(%rdi)
	movb	%sil, 166(%rdi)
	movb	%sil, 197(%rdi)
	movb	%sil, 228(%rdi)
	leal	(%r8,%rdx,2), %esi
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 167(%rdi)
	movb	%sil, 198(%rdi)
	movb	%sil, 229(%rdi)
	leal	(%rdx,%rax,2), %edx
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movb	%dl, 199(%rdi)
	movb	%dl, 230(%rdi)
	addl	%ecx, %eax
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 231(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	predict_8x8_ddl, .Lfunc_end20-predict_8x8_ddl
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function predict_8x8_ddr
.LCPI21_0:
	.short	2                               # 0x2
	.short	2                               # 0x2
	.short	2                               # 0x2
	.short	2                               # 0x2
	.zero	2
	.zero	2
	.zero	2
	.zero	2
.LCPI21_1:
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.short	255                             # 0xff
	.text
	.p2align	4, 0x90
	.type	predict_8x8_ddr,@function
predict_8x8_ddr:                        # @predict_8x8_ddr
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
	movzbl	16(%rsi), %r8d
	movzbl	17(%rsi), %eax
	movzbl	10(%rsi), %ebx
	movzbl	9(%rsi), %ecx
	movzwl	%cx, %r14d
	movzbl	8(%rsi), %ecx
	movzbl	7(%rsi), %edx
	movzbl	15(%rsi), %r10d
	addl	%r14d, %edx
	leal	(%rdx,%rcx,2), %r9d
	addl	$2, %r9d
	shrl	$2, %r9d
	addl	%ebx, %ecx
	leal	(%rcx,%r14,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	leal	(%rax,%r8,2), %edx
	addl	$2, %edx
	addl	%r10d, %edx
	shrl	$2, %edx
	leal	(%r8,%rax,2), %ecx
	addl	$2, %ecx
	movd	18(%rsi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	pxor	%xmm1, %xmm1
	movd	11(%rsi), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	punpcklbw	%xmm1, %xmm2            # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	movdqa	%xmm2, %xmm3
	pextrw	$3, %xmm2, %r15d
	pshufd	$80, %xmm2, %xmm5               # xmm5 = xmm2[0,0,1,1]
	pinsrw	$3, %ebx, %xmm2
	punpcklbw	%xmm1, %xmm0            # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1],xmm0[2],xmm1[2],xmm0[3],xmm1[3],xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	paddw	%xmm2, %xmm2
	pshuflw	$147, %xmm2, %xmm4              # xmm4 = xmm2[3,0,1,2,4,5,6,7]
	movdqa	.LCPI21_0(%rip), %xmm1          # xmm1 = [2,2,2,2,u,u,u,u]
	pinsrw	$0, %r14d, %xmm5
	pinsrw	$1, %ebx, %xmm5
	paddw	%xmm1, %xmm3
	paddw	%xmm3, %xmm4
	paddw	%xmm5, %xmm4
	psrlw	$2, %xmm4
	movdqa	%xmm4, -32(%rsp)
	movdqa	.LCPI21_1(%rip), %xmm2          # xmm2 = [255,255,255,255,255,255,255,255]
	pand	%xmm2, %xmm4
	packuswb	%xmm4, %xmm4
	movzbl	-26(%rsp), %ebp
	movzbl	-30(%rsp), %r14d
	pextrw	$2, %xmm3, %ebx
	movzbl	-28(%rsp), %r12d
	leal	(%rbx,%r15,2), %ebx
	addl	%r10d, %ebx
	shrl	$2, %ebx
	addl	%r15d, %r8d
	addl	$2, %r8d
	leal	(%r8,%r10,2), %r10d
	shrl	$2, %r10d
	movzbl	22(%rsi), %r8d
	movzbl	23(%rsi), %esi
	movb	%r9b, 224(%rdi)
	movb	%r11b, 225(%rdi)
	movb	%r11b, 192(%rdi)
	movb	%r14b, 128(%rdi)
	movb	%r12b, 129(%rdi)
	movb	%r12b, 96(%rdi)
	movd	%xmm4, 226(%rdi)
	movd	%xmm4, 193(%rdi)
	movd	%xmm4, 160(%rdi)
	movb	%bpl, 130(%rdi)
	movb	%bpl, 97(%rdi)
	movb	%bpl, 64(%rdi)
	movb	%bl, 230(%rdi)
	movb	%bl, 197(%rdi)
	movb	%bl, 164(%rdi)
	movb	%bl, 131(%rdi)
	movb	%bl, 98(%rdi)
	movb	%bl, 65(%rdi)
	movb	%bl, 32(%rdi)
	movb	%r10b, 231(%rdi)
	movb	%r10b, 198(%rdi)
	movb	%r10b, 165(%rdi)
	movb	%r10b, 132(%rdi)
	movb	%r10b, 99(%rdi)
	movb	%r10b, 66(%rdi)
	movb	%r10b, 33(%rdi)
	movb	%r10b, (%rdi)
	movb	%dl, 199(%rdi)
	movb	%dl, 166(%rdi)
	movb	%dl, 133(%rdi)
	movb	%dl, 100(%rdi)
	movb	%dl, 67(%rdi)
	movb	%dl, 34(%rdi)
	pextrw	$0, %xmm0, %r9d
	movb	%dl, 1(%rdi)
	addl	%r9d, %ecx
	shrl	$2, %ecx
	movb	%cl, 167(%rdi)
	movb	%cl, 134(%rdi)
	movb	%cl, 101(%rdi)
	movb	%cl, 68(%rdi)
	movb	%cl, 35(%rdi)
	movb	%cl, 2(%rdi)
	leal	(%rax,%r9,2), %eax
	addl	$2, %eax
	pextrw	$1, %xmm0, %ecx
	addl	%eax, %ecx
	shrl	$2, %ecx
	movb	%cl, 135(%rdi)
	movb	%cl, 102(%rdi)
	movb	%cl, 69(%rdi)
	movb	%cl, 36(%rdi)
	movb	%cl, 3(%rdi)
	movdqa	%xmm0, %xmm3
	pinsrw	$0, %r8d, %xmm3
	pshufd	$225, %xmm3, %xmm4              # xmm4 = xmm3[1,0,2,3]
	paddw	%xmm3, %xmm3
	pshuflw	$57, %xmm3, %xmm3               # xmm3 = xmm3[1,2,3,0,4,5,6,7]
	paddw	%xmm0, %xmm3
	pinsrw	$3, %esi, %xmm4
	paddw	%xmm3, %xmm4
	paddw	%xmm1, %xmm4
	psrlw	$2, %xmm4
	movdqa	%xmm4, -16(%rsp)
	pand	%xmm2, %xmm4
	packuswb	%xmm4, %xmm4
	movzbl	-12(%rsp), %eax
	movzbl	-16(%rsp), %ecx
	movzbl	-14(%rsp), %edx
	movb	%cl, 103(%rdi)
	movb	%cl, 70(%rdi)
	movb	%cl, 37(%rdi)
	movb	%dl, 71(%rdi)
	movb	%dl, 38(%rdi)
	movb	%al, 39(%rdi)
	movd	%xmm4, 4(%rdi)
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
.Lfunc_end21:
	.size	predict_8x8_ddr, .Lfunc_end21-predict_8x8_ddr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_vr
	.type	predict_8x8_vr,@function
predict_8x8_vr:                         # @predict_8x8_vr
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	16(%rsi), %ebx
	movzbl	17(%rsi), %r11d
	movzbl	18(%rsi), %r10d
	movzbl	19(%rsi), %r9d
	movzbl	20(%rsi), %r8d
	movzbl	21(%rsi), %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movzbl	22(%rsi), %eax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movzbl	23(%rsi), %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movzbl	14(%rsi), %r14d
	movzbl	13(%rsi), %r15d
	movzbl	12(%rsi), %r12d
	movzbl	11(%rsi), %r13d
	movzbl	10(%rsi), %ebp
	movzbl	9(%rsi), %ecx
	movzbl	8(%rsi), %eax
	movzbl	15(%rsi), %esi
	leal	(%rcx,%r13), %edx
	leal	(%rdx,%rbp,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movb	%dl, 192(%rdi)
	addl	%ebp, %eax
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 224(%rdi)
	leal	(%r15,%r13), %eax
	addl	$2, %eax
	leal	(%rax,%r12,2), %eax
	shrl	$2, %eax
	movb	%al, 193(%rdi)
	movb	%al, 128(%rdi)
	leal	(%r12,%rbp), %eax
	addl	$2, %eax
	leal	(%rax,%r13,2), %eax
	shrl	$2, %eax
	movb	%al, 225(%rdi)
	movb	%al, 160(%rdi)
	leal	(%r15,%r14,2), %eax
	addl	$2, %eax
	addl	%esi, %eax
	shrl	$2, %eax
	movb	%al, 194(%rdi)
	movb	%al, 129(%rdi)
	movb	%al, 64(%rdi)
	leal	(%r12,%r14), %eax
	addl	$2, %eax
	leal	(%rax,%r15,2), %eax
	shrl	$2, %eax
	movb	%al, 226(%rdi)
	movb	%al, 161(%rdi)
	movb	%al, 96(%rdi)
	leal	(%rbx,%r14), %eax
	addl	$2, %eax
	leal	(%rax,%rsi,2), %eax
	shrl	$2, %eax
	movb	%al, 227(%rdi)
	movb	%al, 162(%rdi)
	movb	%al, 97(%rdi)
	movb	%al, 32(%rdi)
	leal	(%rbx,%rsi), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 195(%rdi)
	movb	%al, 130(%rdi)
	movb	%al, 65(%rdi)
	movb	%al, (%rdi)
	leal	(%r11,%rbx,2), %eax
	addl	$2, %eax
	addl	%esi, %eax
	shrl	$2, %eax
	movb	%al, 228(%rdi)
	movb	%al, 163(%rdi)
	movb	%al, 98(%rdi)
	movb	%al, 33(%rdi)
	leal	(%rbx,%r11), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 196(%rdi)
	movb	%al, 131(%rdi)
	movb	%al, 66(%rdi)
	movb	%al, 1(%rdi)
	leal	(%rbx,%r11,2), %eax
	addl	$2, %eax
	addl	%r10d, %eax
	shrl	$2, %eax
	movb	%al, 229(%rdi)
	movb	%al, 164(%rdi)
	movb	%al, 99(%rdi)
	movb	%al, 34(%rdi)
	leal	(%r11,%r10), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 197(%rdi)
	movb	%al, 132(%rdi)
	movb	%al, 67(%rdi)
	movb	%al, 2(%rdi)
	leal	(%r11,%r10,2), %eax
	addl	$2, %eax
	addl	%r9d, %eax
	shrl	$2, %eax
	movb	%al, 230(%rdi)
	movb	%al, 165(%rdi)
	movb	%al, 100(%rdi)
	movb	%al, 35(%rdi)
	leal	(%r10,%r9), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 198(%rdi)
	movb	%al, 133(%rdi)
	movb	%al, 68(%rdi)
	movb	%al, 3(%rdi)
	leal	(%r10,%r9,2), %eax
	addl	%r8d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 231(%rdi)
	movb	%al, 166(%rdi)
	movb	%al, 101(%rdi)
	movb	%al, 36(%rdi)
	leal	(%r9,%r8), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 199(%rdi)
	movb	%al, 134(%rdi)
	movb	%al, 69(%rdi)
	movb	%al, 4(%rdi)
	leal	(%r9,%r8,2), %eax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 167(%rdi)
	movb	%al, 102(%rdi)
	movb	%al, 37(%rdi)
	leal	(%r8,%rdx), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 135(%rdi)
	movb	%al, 70(%rdi)
	movb	%al, 5(%rdi)
	leal	(%r8,%rdx,2), %eax
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 103(%rdi)
	movb	%al, 38(%rdi)
	leal	(%rdx,%rcx), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 71(%rdi)
	movb	%al, 6(%rdi)
	leal	(%rdx,%rcx,2), %eax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 39(%rdi)
	leal	(%rcx,%rdx), %eax
	incl	%eax
	shrl	%eax
	movb	%al, 7(%rdi)
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
.Lfunc_end22:
	.size	predict_8x8_vr, .Lfunc_end22-predict_8x8_vr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_hd
	.type	predict_8x8_hd,@function
predict_8x8_hd:                         # @predict_8x8_hd
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	16(%rsi), %ebx
	movzbl	17(%rsi), %r11d
	movzbl	14(%rsi), %r14d
	movzbl	13(%rsi), %r12d
	movzbl	12(%rsi), %r13d
	movzbl	11(%rsi), %r10d
	movzbl	10(%rsi), %r9d
	movzbl	9(%rsi), %r8d
	movzbl	8(%rsi), %edx
	movzbl	7(%rsi), %ecx
	movzbl	15(%rsi), %r15d
	leal	(%rdx,%rcx), %eax
	incl	%eax
	shrl	%eax
	movzbl	%al, %ebp
	leal	(%r8,%rdx,2), %eax
	addl	%ecx, %eax
	shll	$6, %eax
	subl	$-128, %eax
	andl	$261888, %eax                   # imm = 0x3FF00
	orl	%ebp, %eax
	movl	%eax, -4(%rsp)                  # 4-byte Spill
	leal	(%r8,%rdx), %ecx
	incl	%ecx
	shrl	%ecx
	movzbl	%cl, %ebp
	leal	(%r9,%r8,2), %ecx
	addl	%edx, %ecx
	shll	$6, %ecx
	subl	$-128, %ecx
	andl	$261888, %ecx                   # imm = 0x3FF00
	orl	%ebp, %ecx
	leal	(%r9,%r8), %edx
	incl	%edx
	shrl	%edx
	movzbl	%dl, %ebp
	leal	(%r10,%r9,2), %edx
	addl	%r8d, %edx
	shll	$6, %edx
	subl	$-128, %edx
	andl	$261888, %edx                   # imm = 0x3FF00
	orl	%ebp, %edx
	leal	(%r10,%r9), %r8d
	incl	%r8d
	shrl	%r8d
	movzbl	%r8b, %ebp
	leal	(%r13,%r10,2), %r8d
	addl	%r9d, %r8d
	shll	$6, %r8d
	subl	$-128, %r8d
	andl	$261888, %r8d                   # imm = 0x3FF00
	orl	%ebp, %r8d
	leal	(%r10,%r13), %r9d
	incl	%r9d
	shrl	%r9d
	movzbl	%r9b, %ebp
	leal	(%r12,%r13,2), %r9d
	addl	%r10d, %r9d
	shll	$6, %r9d
	subl	$-128, %r9d
	andl	$261888, %r9d                   # imm = 0x3FF00
	orl	%ebp, %r9d
	leal	(%r12,%r13), %r10d
	incl	%r10d
	shrl	%r10d
	movzbl	%r10b, %ebp
	leal	(%r14,%r12,2), %r10d
	addl	%r13d, %r10d
	shll	$6, %r10d
	subl	$-128, %r10d
	andl	$261888, %r10d                  # imm = 0x3FF00
	orl	%ebp, %r10d
	leal	(%r14,%r12), %ebp
	incl	%ebp
	shrl	%ebp
	movzbl	%bpl, %r13d
	leal	(%r12,%r14,2), %ebp
	addl	%r15d, %ebp
	shll	$6, %ebp
	subl	$-128, %ebp
	andl	$261888, %ebp                   # imm = 0x3FF00
	orl	%r13d, %ebp
	leal	(%r14,%r15), %r12d
	incl	%r12d
	addl	%ebx, %r14d
	leal	(%r11,%rbx,2), %r13d
	addl	$2, %r13d
	addl	%r15d, %r13d
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	shll	$7, %r15d
	shll	$6, %r14d
	addl	%r15d, %r14d
	addl	$128, %r14d
	movzbl	18(%rsi), %r15d
	shrl	%r12d
	movzbl	%r12b, %r12d
	andl	$130816, %r14d                  # imm = 0x1FF00
	orl	%r12d, %r14d
	addl	%r15d, %ebx
	movl	%r11d, %r12d
	shll	$7, %r12d
	shll	$6, %ebx
	addl	%r12d, %ebx
	addl	$128, %ebx
	movzbl	19(%rsi), %r12d
	addl	%r12d, %r11d
	addl	$2, %r11d
	shrl	$2, %r13d
	andl	$130816, %ebx                   # imm = 0x1FF00
	addl	%r13d, %ebx
	movzbl	20(%rsi), %r13d
	leal	(%r11,%r15,2), %eax
	addl	%r13d, %r15d
	movl	%r12d, %r11d
	shll	$7, %r11d
	shll	$6, %r15d
	addl	%r15d, %r11d
	addl	$128, %r11d
	shrl	$2, %eax
	andl	$130816, %r11d                  # imm = 0x1FF00
	addl	%eax, %r11d
	movzbl	21(%rsi), %eax
	movzbl	22(%rsi), %esi
	addl	%eax, %r12d
	leal	(%r12,%r13,2), %r15d
	addl	$2, %r15d
	addl	%r13d, %esi
	shll	$7, %eax
	shll	$6, %esi
	addl	%eax, %esi
	addl	$128, %esi
	shrl	$2, %r15d
	andl	$65280, %esi                    # imm = 0xFF00
	addl	%r15d, %esi
	shll	$16, %esi
	addl	%r11d, %esi
	shll	$16, %r11d
	addl	%ebx, %r11d
	shll	$16, %ebx
	addl	%r14d, %ebx
	shll	$16, %r14d
	addl	%ebp, %r14d
	shll	$16, %ebp
	addl	%r10d, %ebp
	shll	$16, %r10d
	addl	%r9d, %r10d
	shll	$16, %r9d
	addl	%r8d, %r9d
	shll	$16, %r8d
	addl	%edx, %r8d
	shll	$16, %edx
	addl	%ecx, %edx
	shll	$16, %ecx
	addl	-4(%rsp), %ecx                  # 4-byte Folded Reload
	movl	%ecx, 224(%rdi)
	movl	%edx, 192(%rdi)
	movl	%r8d, 160(%rdi)
	movl	%r8d, 228(%rdi)
	movl	%r9d, 128(%rdi)
	movl	%r9d, 196(%rdi)
	movl	%r10d, 96(%rdi)
	movl	%r10d, 164(%rdi)
	movl	%ebp, 64(%rdi)
	movl	%ebp, 132(%rdi)
	movl	%r14d, 32(%rdi)
	movl	%r14d, 100(%rdi)
	movl	%ebx, (%rdi)
	movl	%ebx, 68(%rdi)
	movl	%r11d, 36(%rdi)
	movl	%esi, 4(%rdi)
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
.Lfunc_end23:
	.size	predict_8x8_hd, .Lfunc_end23-predict_8x8_hd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_vl
	.type	predict_8x8_vl,@function
predict_8x8_vl:                         # @predict_8x8_vl
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movzbl	16(%rsi), %ebp
	movzbl	17(%rsi), %r13d
	movzbl	18(%rsi), %r12d
	movzbl	19(%rsi), %r15d
	movzbl	20(%rsi), %r14d
	movzbl	21(%rsi), %ebx
	movzbl	22(%rsi), %r11d
	movzbl	23(%rsi), %r10d
	movzbl	24(%rsi), %r9d
	movzbl	25(%rsi), %r8d
	movzbl	26(%rsi), %ecx
	movzbl	27(%rsi), %edx
	movzbl	28(%rsi), %eax
	leal	1(%r13,%rbp), %esi
	shrl	%esi
	movb	%sil, (%rdi)
	leal	(%r12,%rbp), %esi
	addl	$2, %esi
	leal	(%rsi,%r13,2), %esi
	shrl	$2, %esi
	movb	%sil, 32(%rdi)
	leal	(%r12,%r13), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 1(%rdi)
	movb	%sil, 64(%rdi)
	leal	(%r15,%r13), %esi
	addl	$2, %esi
	leal	(%rsi,%r12,2), %esi
	shrl	$2, %esi
	movb	%sil, 33(%rdi)
	movb	%sil, 96(%rdi)
	leal	(%r12,%r15), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 2(%rdi)
	movb	%sil, 65(%rdi)
	movb	%sil, 128(%rdi)
	leal	(%r12,%r15,2), %esi
	addl	$2, %esi
	addl	%r14d, %esi
	shrl	$2, %esi
	movb	%sil, 34(%rdi)
	movb	%sil, 97(%rdi)
	movb	%sil, 160(%rdi)
	leal	(%r15,%r14), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 3(%rdi)
	movb	%sil, 66(%rdi)
	movb	%sil, 129(%rdi)
	movb	%sil, 192(%rdi)
	leal	(%r15,%r14,2), %esi
	addl	$2, %esi
	addl	%ebx, %esi
	shrl	$2, %esi
	movb	%sil, 35(%rdi)
	movb	%sil, 98(%rdi)
	movb	%sil, 161(%rdi)
	movb	%sil, 224(%rdi)
	leal	(%r14,%rbx), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 4(%rdi)
	movb	%sil, 67(%rdi)
	movb	%sil, 130(%rdi)
	movb	%sil, 193(%rdi)
	leal	(%r14,%rbx,2), %esi
	addl	%r11d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 36(%rdi)
	movb	%sil, 99(%rdi)
	movb	%sil, 162(%rdi)
	movb	%sil, 225(%rdi)
	leal	(%rbx,%r11), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 5(%rdi)
	movb	%sil, 68(%rdi)
	movb	%sil, 131(%rdi)
	movb	%sil, 194(%rdi)
	leal	(%rbx,%r11,2), %esi
	addl	%r10d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 37(%rdi)
	movb	%sil, 100(%rdi)
	movb	%sil, 163(%rdi)
	movb	%sil, 226(%rdi)
	leal	(%r11,%r10), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 6(%rdi)
	movb	%sil, 69(%rdi)
	movb	%sil, 132(%rdi)
	movb	%sil, 195(%rdi)
	leal	(%r11,%r10,2), %esi
	addl	%r9d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 38(%rdi)
	movb	%sil, 101(%rdi)
	movb	%sil, 164(%rdi)
	movb	%sil, 227(%rdi)
	leal	(%r10,%r9), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 7(%rdi)
	movb	%sil, 70(%rdi)
	movb	%sil, 133(%rdi)
	movb	%sil, 196(%rdi)
	leal	(%r10,%r9,2), %esi
	addl	%r8d, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 39(%rdi)
	movb	%sil, 102(%rdi)
	movb	%sil, 165(%rdi)
	movb	%sil, 228(%rdi)
	leal	(%r9,%r8), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 71(%rdi)
	movb	%sil, 134(%rdi)
	movb	%sil, 197(%rdi)
	leal	(%r9,%r8,2), %esi
	addl	%ecx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 103(%rdi)
	movb	%sil, 166(%rdi)
	movb	%sil, 229(%rdi)
	leal	(%r8,%rcx), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 135(%rdi)
	movb	%sil, 198(%rdi)
	leal	(%r8,%rcx,2), %esi
	addl	%edx, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 167(%rdi)
	movb	%sil, 230(%rdi)
	leal	(%rcx,%rdx), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 199(%rdi)
	leal	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 231(%rdi)
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
.Lfunc_end24:
	.size	predict_8x8_vl, .Lfunc_end24-predict_8x8_vl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_hu
	.type	predict_8x8_hu,@function
predict_8x8_hu:                         # @predict_8x8_hu
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movzbl	14(%rsi), %eax
	movzbl	13(%rsi), %ebx
	movzbl	12(%rsi), %r8d
	movzbl	11(%rsi), %r9d
	movzbl	10(%rsi), %r10d
	movzbl	9(%rsi), %r11d
	movzbl	8(%rsi), %ecx
	movzbl	7(%rsi), %edx
	leal	(%rbx,%rax), %esi
	incl	%esi
	shrl	%esi
	movzbl	%sil, %esi
	leal	(%rax,%rbx,2), %eax
	addl	%r8d, %eax
	shll	$6, %eax
	subl	$-128, %eax
	andl	$261888, %eax                   # imm = 0x3FF00
	orl	%esi, %eax
	leal	(%rbx,%r8), %esi
	incl	%esi
	shrl	%esi
	movzbl	%sil, %ebp
	leal	(%rbx,%r8,2), %esi
	addl	%r9d, %esi
	shll	$6, %esi
	subl	$-128, %esi
	andl	$261888, %esi                   # imm = 0x3FF00
	orl	%ebp, %esi
	leal	(%r8,%r9), %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
	leal	(%r8,%r9,2), %r8d
	addl	%r10d, %r8d
	shll	$6, %r8d
	subl	$-128, %r8d
	andl	$261888, %r8d                   # imm = 0x3FF00
	orl	%ebx, %r8d
	leal	(%r9,%r10), %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
	leal	(%r9,%r10,2), %r9d
	addl	%r11d, %r9d
	shll	$6, %r9d
	subl	$-128, %r9d
	andl	$261888, %r9d                   # imm = 0x3FF00
	orl	%ebx, %r9d
	leal	(%r10,%r11), %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
	leal	(%r10,%r11,2), %r10d
	addl	%ecx, %r10d
	shll	$6, %r10d
	subl	$-128, %r10d
	andl	$261888, %r10d                  # imm = 0x3FF00
	orl	%ebx, %r10d
	leal	(%r11,%rcx), %ebx
	incl	%ebx
	shrl	%ebx
	movzbl	%bl, %ebx
	leal	(%r11,%rcx,2), %r11d
	addl	%edx, %r11d
	shll	$6, %r11d
	subl	$-128, %r11d
	andl	$261888, %r11d                  # imm = 0x3FF00
	orl	%ebx, %r11d
	leal	(%rdx,%rcx), %ebx
	incl	%ebx
	addl	%edx, %ecx
	imull	$16842752, %edx, %ebp           # imm = 0x1010000
	imull	$16843009, %edx, %r14d          # imm = 0x1010101
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	shll	$7, %edx
	shll	$6, %ecx
	addl	%edx, %ecx
	addl	$128, %ecx
	shrl	%ebx
	movzbl	%bl, %edx
	andl	$130816, %ecx                   # imm = 0x1FF00
	orl	%edx, %ecx
	addl	%ecx, %ebp
	shll	$16, %ecx
	addl	%r11d, %ecx
	shll	$16, %r11d
	addl	%r10d, %r11d
	shll	$16, %r10d
	addl	%r9d, %r10d
	shll	$16, %r9d
	addl	%r8d, %r9d
	shll	$16, %r8d
	addl	%esi, %r8d
	shll	$16, %esi
	addl	%eax, %esi
	movl	%esi, (%rdi)
	movl	%r8d, 32(%rdi)
	movl	%r9d, 64(%rdi)
	movl	%r9d, 4(%rdi)
	movl	%r10d, 96(%rdi)
	movl	%r10d, 36(%rdi)
	movl	%r11d, 128(%rdi)
	movl	%r11d, 68(%rdi)
	movl	%ecx, 160(%rdi)
	movl	%ecx, 100(%rdi)
	movl	%ebp, 192(%rdi)
	movl	%ebp, 132(%rdi)
	movl	%r14d, 228(%rdi)
	movl	%r14d, 224(%rdi)
	movl	%r14d, 196(%rdi)
	movl	%r14d, 164(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	predict_8x8_hu, .Lfunc_end25-predict_8x8_hu
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_left
	.type	predict_8x8_dc_left,@function
predict_8x8_dc_left:                    # @predict_8x8_dc_left
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	14(%rsi), %eax
	movzbl	13(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	12(%rsi), %eax
	movzbl	11(%rsi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	10(%rsi), %eax
	movzbl	9(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	8(%rsi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	7(%rsi), %ecx
	addl	%ecx, %eax
	addl	$4, %eax
	shrl	$3, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
	retq
.Lfunc_end26:
	.size	predict_8x8_dc_left, .Lfunc_end26-predict_8x8_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_top
	.type	predict_8x8_dc_top,@function
predict_8x8_dc_top:                     # @predict_8x8_dc_top
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	16(%rsi), %eax
	movzbl	17(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	18(%rsi), %eax
	movzbl	19(%rsi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	20(%rsi), %eax
	movzbl	21(%rsi), %ecx
	addl	%eax, %ecx
	movzbl	22(%rsi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	23(%rsi), %ecx
	addl	%ecx, %eax
	addl	$4, %eax
	shrl	$3, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movl	%eax, 4(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, 36(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 68(%rdi)
	movl	%eax, 96(%rdi)
	movl	%eax, 100(%rdi)
	movl	%eax, 128(%rdi)
	movl	%eax, 132(%rdi)
	movl	%eax, 160(%rdi)
	movl	%eax, 164(%rdi)
	movl	%eax, 192(%rdi)
	movl	%eax, 196(%rdi)
	movl	%eax, 224(%rdi)
	movl	%eax, 228(%rdi)
	retq
.Lfunc_end27:
	.size	predict_8x8_dc_top, .Lfunc_end27-predict_8x8_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_dc_128
	.type	predict_8x8_dc_128,@function
predict_8x8_dc_128:                     # @predict_8x8_dc_128
	.cfi_startproc
# %bb.0:                                # %entry
	movabsq	$-9187201950435737472, %rax     # imm = 0x8080808080808080
	movq	%rax, (%rdi)
	movq	%rax, 32(%rdi)
	movq	%rax, 64(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rax, 224(%rdi)
	retq
.Lfunc_end28:
	.size	predict_8x8_dc_128, .Lfunc_end28-predict_8x8_dc_128
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_8x8_filter
	.type	predict_8x8_filter,@function
predict_8x8_filter:                     # @predict_8x8_filter
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %cl
	je	.LBB29_2
# %bb.1:                                # %if.then
	movzbl	-32(%rdi), %eax
	movzbl	-33(%rdi), %r8d
	movzbl	-1(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 15(%rsi)
	testb	$8, %dl
	movzbl	-1(%rdi), %eax
	movzbl	-33(%rdi), %r8d
	cmovel	%eax, %r8d
	movzbl	%r8b, %r8d
	movzbl	31(%rdi), %r9d
	leal	(%r8,%rax,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 14(%rsi)
	movzbl	-1(%rdi), %eax
	movzbl	31(%rdi), %r8d
	movzbl	63(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 13(%rsi)
	movzbl	31(%rdi), %eax
	movzbl	63(%rdi), %r8d
	movzbl	95(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 12(%rsi)
	movzbl	63(%rdi), %eax
	movzbl	95(%rdi), %r8d
	movzbl	127(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 11(%rsi)
	movzbl	95(%rdi), %eax
	movzbl	127(%rdi), %r8d
	movzbl	159(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 10(%rsi)
	movzbl	127(%rdi), %eax
	movzbl	159(%rdi), %r8d
	movzbl	191(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 9(%rsi)
	movzbl	159(%rdi), %eax
	movzbl	191(%rdi), %r8d
	movzbl	223(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 8(%rsi)
	movzbl	191(%rdi), %eax
	movzbl	223(%rdi), %r8d
	leal	(%r8,%r8,2), %r8d
	addl	%r8d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 7(%rsi)
.LBB29_2:                               # %if.end
	testb	$2, %cl
	je	.LBB29_9
# %bb.3:                                # %if.then116
	movl	%edx, %eax
	andl	$8, %eax
	cmpl	$1, %eax
	movq	%rdi, %rax
	adcq	$-33, %rax
	movzbl	(%rax), %eax
	movzbl	-32(%rdi), %r8d
	movzbl	-31(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 16(%rsi)
	movzbl	-32(%rdi), %eax
	movzbl	-31(%rdi), %r8d
	movzbl	-30(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 17(%rsi)
	movzbl	-31(%rdi), %eax
	movzbl	-30(%rdi), %r8d
	movzbl	-29(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 18(%rsi)
	movzbl	-30(%rdi), %eax
	movzbl	-29(%rdi), %r8d
	movzbl	-28(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 19(%rsi)
	movzbl	-29(%rdi), %eax
	movzbl	-28(%rdi), %r8d
	movzbl	-27(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 20(%rsi)
	movzbl	-28(%rdi), %eax
	movzbl	-27(%rdi), %r8d
	movzbl	-26(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 21(%rsi)
	movzbl	-27(%rdi), %eax
	movzbl	-26(%rdi), %r8d
	movzbl	-25(%rdi), %r9d
	leal	(%rax,%r8,2), %eax
	addl	%r9d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 22(%rsi)
	movzbl	-26(%rdi), %eax
	movzbl	-25(%rdi), %r8d
	leal	(%rax,%r8,2), %eax
	testb	$4, %dl
	jne	.LBB29_6
# %bb.4:                                # %cond.end229
	addl	%r8d, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 23(%rsi)
	testb	$4, %cl
	je	.LBB29_9
# %bb.5:                                # %if.else
	movzbl	-25(%rdi), %eax
	movabsq	$72340172838076673, %rcx        # imm = 0x101010101010101
	imulq	%rax, %rcx
	movq	%rcx, 24(%rsi)
	movzbl	-25(%rdi), %eax
	movl	$32, %ecx
	jmp	.LBB29_8
.LBB29_6:                               # %cond.end229.thread
	movzbl	-24(%rdi), %edx
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 23(%rsi)
	testb	$4, %cl
	je	.LBB29_9
# %bb.7:                                # %if.then240
	movzbl	-25(%rdi), %eax
	movzbl	-24(%rdi), %ecx
	movzbl	-23(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 24(%rsi)
	movzbl	-24(%rdi), %eax
	movzbl	-23(%rdi), %ecx
	movzbl	-22(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 25(%rsi)
	movzbl	-23(%rdi), %eax
	movzbl	-22(%rdi), %ecx
	movzbl	-21(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 26(%rsi)
	movzbl	-22(%rdi), %eax
	movzbl	-21(%rdi), %ecx
	movzbl	-20(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 27(%rsi)
	movzbl	-21(%rdi), %eax
	movzbl	-20(%rdi), %ecx
	movzbl	-19(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 28(%rsi)
	movzbl	-20(%rdi), %eax
	movzbl	-19(%rdi), %ecx
	movzbl	-18(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 29(%rsi)
	movzbl	-19(%rdi), %eax
	movzbl	-18(%rdi), %ecx
	movzbl	-17(%rdi), %edx
	leal	(%rax,%rcx,2), %eax
	addl	%edx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 30(%rsi)
	movzbl	-18(%rdi), %eax
	movzbl	-17(%rdi), %ecx
	leal	(%rcx,%rcx,2), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 32(%rsi)
	movl	$31, %ecx
.LBB29_8:                               # %if.end350.sink.split
	movb	%al, (%rsi,%rcx)
.LBB29_9:                               # %if.end350
	retq
.Lfunc_end29:
	.size	predict_8x8_filter, .Lfunc_end29-predict_8x8_filter
	.cfi_endproc
                                        # -- End function
	.globl	x264_predict_4x4_init           # -- Begin function x264_predict_4x4_init
	.p2align	4, 0x90
	.type	x264_predict_4x4_init,@function
x264_predict_4x4_init:                  # @x264_predict_4x4_init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$predict_4x4_v, (%rsi)
	movq	$predict_4x4_h, 8(%rsi)
	movq	$predict_4x4_dc, 16(%rsi)
	movq	$predict_4x4_ddl, 24(%rsi)
	movq	$predict_4x4_ddr, 32(%rsi)
	movq	$predict_4x4_vr, 40(%rsi)
	movq	$predict_4x4_hd, 48(%rsi)
	movq	$predict_4x4_vl, 56(%rsi)
	movq	$predict_4x4_hu, 64(%rsi)
	movq	$predict_4x4_dc_left, 72(%rsi)
	movq	$predict_4x4_dc_top, 80(%rsi)
	movq	$predict_4x4_dc_128, 88(%rsi)
	retq
.Lfunc_end30:
	.size	x264_predict_4x4_init, .Lfunc_end30-x264_predict_4x4_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_v
	.type	predict_4x4_v,@function
predict_4x4_v:                          # @predict_4x4_v
	.cfi_startproc
# %bb.0:                                # %entry
	movl	-32(%rdi), %eax
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	retq
.Lfunc_end31:
	.size	predict_4x4_v, .Lfunc_end31-predict_4x4_v
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_h
	.type	predict_4x4_h,@function
predict_4x4_h:                          # @predict_4x4_h
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, (%rdi)
	movzbl	31(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 32(%rdi)
	movzbl	63(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 64(%rdi)
	movzbl	95(%rdi), %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 96(%rdi)
	retq
.Lfunc_end32:
	.size	predict_4x4_h, .Lfunc_end32-predict_4x4_h
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc
	.type	predict_4x4_dc,@function
predict_4x4_dc:                         # @predict_4x4_dc
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	movzbl	31(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	63(%rdi), %eax
	movzbl	95(%rdi), %edx
	addl	%eax, %edx
	addl	%ecx, %edx
	movzbl	-32(%rdi), %eax
	movzbl	-31(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	-30(%rdi), %eax
	addl	%ecx, %eax
	addl	%edx, %eax
	movzbl	-29(%rdi), %ecx
	addl	%ecx, %eax
	addl	$4, %eax
	shrl	$3, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	retq
.Lfunc_end33:
	.size	predict_4x4_dc, .Lfunc_end33-predict_4x4_dc
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_ddl
	.type	predict_4x4_ddl,@function
predict_4x4_ddl:                        # @predict_4x4_ddl
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-32(%rdi), %r9d
	movzbl	-31(%rdi), %r10d
	movzbl	-30(%rdi), %r11d
	movzbl	-29(%rdi), %r8d
	movzbl	-28(%rdi), %esi
	movzbl	-27(%rdi), %edx
	movzbl	-26(%rdi), %eax
	movzbl	-25(%rdi), %ecx
	addl	%r11d, %r9d
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	movb	%r9b, (%rdi)
	leal	(%r8,%r10), %r9d
	addl	$2, %r9d
	leal	(%r9,%r11,2), %r9d
	shrl	$2, %r9d
	movb	%r9b, 32(%rdi)
	movb	%r9b, 1(%rdi)
	leal	(%r11,%r8,2), %r9d
	addl	$2, %r9d
	addl	%esi, %r9d
	shrl	$2, %r9d
	movb	%r9b, 64(%rdi)
	movb	%r9b, 33(%rdi)
	movb	%r9b, 2(%rdi)
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%edx, %r8d
	shrl	$2, %r8d
	movb	%r8b, 96(%rdi)
	movb	%r8b, 65(%rdi)
	movb	%r8b, 34(%rdi)
	movb	%r8b, 3(%rdi)
	leal	(%rsi,%rdx,2), %esi
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 97(%rdi)
	movb	%sil, 66(%rdi)
	movb	%sil, 35(%rdi)
	leal	(%rdx,%rax,2), %edx
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movb	%dl, 98(%rdi)
	movb	%dl, 67(%rdi)
	addl	%ecx, %eax
	leal	(%rax,%rcx,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 99(%rdi)
	retq
.Lfunc_end34:
	.size	predict_4x4_ddl, .Lfunc_end34-predict_4x4_ddl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_ddr
	.type	predict_4x4_ddr,@function
predict_4x4_ddr:                        # @predict_4x4_ddr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movzbl	-33(%rdi), %r8d
	movzbl	-1(%rdi), %esi
	movzbl	31(%rdi), %ecx
	movzbl	63(%rdi), %edx
	movzbl	95(%rdi), %eax
	movzbl	-32(%rdi), %r9d
	movzbl	-31(%rdi), %r10d
	movzbl	-30(%rdi), %r11d
	movzbl	-29(%rdi), %ebx
	addl	%r10d, %ebx
	leal	(%rbx,%r11,2), %ebx
	addl	$2, %ebx
	shrl	$2, %ebx
	movb	%bl, 3(%rdi)
	addl	%r9d, %r11d
	leal	(%r11,%r10,2), %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, 35(%rdi)
	movb	%r11b, 2(%rdi)
	addl	%r8d, %r10d
	addl	$2, %r10d
	leal	(%r10,%r9,2), %r10d
	shrl	$2, %r10d
	movb	%r10b, 67(%rdi)
	movb	%r10b, 34(%rdi)
	movb	%r10b, 1(%rdi)
	leal	(%rsi,%r8,2), %r10d
	addl	$2, %r10d
	addl	%r9d, %r10d
	shrl	$2, %r10d
	movb	%r10b, 99(%rdi)
	movb	%r10b, 66(%rdi)
	movb	%r10b, 33(%rdi)
	movb	%r10b, (%rdi)
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	movb	%r8b, 98(%rdi)
	movb	%r8b, 65(%rdi)
	movb	%r8b, 32(%rdi)
	leal	(%rsi,%rcx,2), %esi
	addl	$2, %esi
	addl	%edx, %esi
	shrl	$2, %esi
	movb	%sil, 97(%rdi)
	movb	%sil, 64(%rdi)
	leal	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 96(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end35:
	.size	predict_4x4_ddr, .Lfunc_end35-predict_4x4_ddr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_vr
	.type	predict_4x4_vr,@function
predict_4x4_vr:                         # @predict_4x4_vr
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-33(%rdi), %r8d
	movzbl	-1(%rdi), %r9d
	movzbl	31(%rdi), %r10d
	movzbl	63(%rdi), %r11d
	movzbl	-32(%rdi), %esi
	movzbl	-31(%rdi), %edx
	movzbl	-30(%rdi), %eax
	movzbl	-29(%rdi), %ecx
	addl	%r9d, %r11d
	addl	$2, %r11d
	leal	(%r11,%r10,2), %r11d
	shrl	$2, %r11d
	movb	%r11b, 96(%rdi)
	addl	%r8d, %r10d
	addl	$2, %r10d
	leal	(%r10,%r9,2), %r10d
	shrl	$2, %r10d
	movb	%r10b, 64(%rdi)
	leal	(%r9,%r8,2), %r9d
	addl	$2, %r9d
	addl	%esi, %r9d
	shrl	$2, %r9d
	movb	%r9b, 97(%rdi)
	movb	%r9b, 32(%rdi)
	leal	(%rsi,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 65(%rdi)
	movb	%r9b, (%rdi)
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%edx, %r8d
	shrl	$2, %r8d
	movb	%r8b, 98(%rdi)
	movb	%r8b, 33(%rdi)
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, 66(%rdi)
	movb	%r8b, 1(%rdi)
	leal	(%rsi,%rdx,2), %esi
	addl	%eax, %esi
	addl	$2, %esi
	shrl	$2, %esi
	movb	%sil, 99(%rdi)
	movb	%sil, 34(%rdi)
	leal	(%rdx,%rax), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 67(%rdi)
	movb	%sil, 2(%rdi)
	leal	(%rdx,%rax,2), %edx
	addl	%ecx, %edx
	addl	$2, %edx
	shrl	$2, %edx
	movb	%dl, 35(%rdi)
	addl	%ecx, %eax
	incl	%eax
	shrl	%eax
	movb	%al, 3(%rdi)
	retq
.Lfunc_end36:
	.size	predict_4x4_vr, .Lfunc_end36-predict_4x4_vr
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_hd
	.type	predict_4x4_hd,@function
predict_4x4_hd:                         # @predict_4x4_hd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movzbl	-33(%rdi), %esi
	movzbl	-1(%rdi), %r8d
	movzbl	31(%rdi), %r9d
	movzbl	63(%rdi), %r10d
	movzbl	95(%rdi), %r11d
	movzbl	-32(%rdi), %ecx
	movzbl	-31(%rdi), %eax
	movzbl	-30(%rdi), %edx
	leal	(%r10,%r11), %ebx
	incl	%ebx
	shrl	%ebx
	movb	%bl, 96(%rdi)
	leal	(%r9,%r10,2), %ebx
	addl	%ebx, %r11d
	addl	$2, %r11d
	shrl	$2, %r11d
	movb	%r11b, 97(%rdi)
	leal	(%r9,%r10), %r11d
	incl	%r11d
	shrl	%r11d
	movb	%r11b, 98(%rdi)
	movb	%r11b, 64(%rdi)
	leal	(%r8,%r9,2), %r11d
	addl	$2, %r11d
	addl	%r10d, %r11d
	shrl	$2, %r11d
	movb	%r11b, 99(%rdi)
	movb	%r11b, 65(%rdi)
	leal	(%r8,%r9), %r10d
	incl	%r10d
	shrl	%r10d
	movb	%r10b, 66(%rdi)
	movb	%r10b, 32(%rdi)
	leal	(%rsi,%r8,2), %r10d
	addl	$2, %r10d
	addl	%r9d, %r10d
	shrl	$2, %r10d
	movb	%r10b, 67(%rdi)
	movb	%r10b, 33(%rdi)
	leal	(%r8,%rsi), %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 34(%rdi)
	movb	%r9b, (%rdi)
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	movb	%r8b, 35(%rdi)
	movb	%r8b, 1(%rdi)
	addl	%eax, %esi
	addl	$2, %esi
	leal	(%rsi,%rcx,2), %esi
	shrl	$2, %esi
	movb	%sil, 2(%rdi)
	addl	%ecx, %edx
	leal	(%rdx,%rax,2), %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 3(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end37:
	.size	predict_4x4_hd, .Lfunc_end37-predict_4x4_hd
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_vl
	.type	predict_4x4_vl,@function
predict_4x4_vl:                         # @predict_4x4_vl
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-32(%rdi), %r9d
	movzbl	-31(%rdi), %r10d
	movzbl	-30(%rdi), %r8d
	movzbl	-29(%rdi), %esi
	movzbl	-28(%rdi), %ecx
	movzbl	-27(%rdi), %edx
	movzbl	-26(%rdi), %eax
	leal	(%r10,%r9), %r11d
	incl	%r11d
	shrl	%r11d
	movb	%r11b, (%rdi)
	addl	%r8d, %r9d
	addl	$2, %r9d
	leal	(%r9,%r10,2), %r9d
	shrl	$2, %r9d
	movb	%r9b, 32(%rdi)
	leal	(%r10,%r8), %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 64(%rdi)
	movb	%r9b, 1(%rdi)
	leal	(%rsi,%r10), %r9d
	addl	$2, %r9d
	leal	(%r9,%r8,2), %r9d
	shrl	$2, %r9d
	movb	%r9b, 96(%rdi)
	movb	%r9b, 33(%rdi)
	leal	(%r8,%rsi), %r9d
	incl	%r9d
	shrl	%r9d
	movb	%r9b, 65(%rdi)
	movb	%r9b, 2(%rdi)
	leal	(%r8,%rsi,2), %r8d
	addl	$2, %r8d
	addl	%ecx, %r8d
	shrl	$2, %r8d
	movb	%r8b, 97(%rdi)
	movb	%r8b, 34(%rdi)
	leal	(%rsi,%rcx), %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, 66(%rdi)
	movb	%r8b, 3(%rdi)
	leal	(%rsi,%rcx,2), %esi
	addl	$2, %esi
	addl	%edx, %esi
	shrl	$2, %esi
	movb	%sil, 98(%rdi)
	movb	%sil, 35(%rdi)
	leal	(%rcx,%rdx), %esi
	incl	%esi
	shrl	%esi
	movb	%sil, 67(%rdi)
	leal	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	movb	%al, 99(%rdi)
	retq
.Lfunc_end38:
	.size	predict_4x4_vl, .Lfunc_end38-predict_4x4_vl
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_hu
	.type	predict_4x4_hu,@function
predict_4x4_hu:                         # @predict_4x4_hu
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %edx
	movzbl	31(%rdi), %esi
	movzbl	63(%rdi), %ecx
	movzbl	95(%rdi), %eax
	leal	(%rsi,%rdx), %r8d
	incl	%r8d
	shrl	%r8d
	movb	%r8b, (%rdi)
	addl	%ecx, %edx
	addl	$2, %edx
	leal	(%rdx,%rsi,2), %edx
	shrl	$2, %edx
	movb	%dl, 1(%rdi)
	leal	(%rsi,%rcx), %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 32(%rdi)
	movb	%dl, 2(%rdi)
	addl	%eax, %esi
	leal	(%rsi,%rcx,2), %edx
	addl	$2, %edx
	shrl	$2, %edx
	movb	%dl, 33(%rdi)
	movb	%dl, 3(%rdi)
	leal	(%rcx,%rax), %edx
	incl	%edx
	shrl	%edx
	movb	%dl, 64(%rdi)
	movb	%dl, 34(%rdi)
	addl	%eax, %ecx
	addl	$2, %ecx
	leal	(%rcx,%rax,2), %ecx
	shrl	$2, %ecx
	movb	%cl, 65(%rdi)
	movb	%cl, 35(%rdi)
	movb	%al, 66(%rdi)
	movd	%eax, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movd	%xmm0, 96(%rdi)
	movb	%al, 67(%rdi)
	retq
.Lfunc_end39:
	.size	predict_4x4_hu, .Lfunc_end39-predict_4x4_hu
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_left
	.type	predict_4x4_dc_left,@function
predict_4x4_dc_left:                    # @predict_4x4_dc_left
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-1(%rdi), %eax
	movzbl	31(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	63(%rdi), %eax
	addl	%ecx, %eax
	movzbl	95(%rdi), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	retq
.Lfunc_end40:
	.size	predict_4x4_dc_left, .Lfunc_end40-predict_4x4_dc_left
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_top
	.type	predict_4x4_dc_top,@function
predict_4x4_dc_top:                     # @predict_4x4_dc_top
	.cfi_startproc
# %bb.0:                                # %entry
	movzbl	-32(%rdi), %eax
	movzbl	-31(%rdi), %ecx
	addl	%eax, %ecx
	movzbl	-30(%rdi), %eax
	addl	%ecx, %eax
	movzbl	-29(%rdi), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	shrl	$2, %eax
	imull	$16843009, %eax, %eax           # imm = 0x1010101
	movl	%eax, 96(%rdi)
	movl	%eax, 64(%rdi)
	movl	%eax, 32(%rdi)
	movl	%eax, (%rdi)
	retq
.Lfunc_end41:
	.size	predict_4x4_dc_top, .Lfunc_end41-predict_4x4_dc_top
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function predict_4x4_dc_128
	.type	predict_4x4_dc_128,@function
predict_4x4_dc_128:                     # @predict_4x4_dc_128
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$-2139062144, 96(%rdi)          # imm = 0x80808080
	movl	$-2139062144, 64(%rdi)          # imm = 0x80808080
	movl	$-2139062144, 32(%rdi)          # imm = 0x80808080
	movl	$-2139062144, (%rdi)            # imm = 0x80808080
	retq
.Lfunc_end42:
	.size	predict_4x4_dc_128, .Lfunc_end42-predict_4x4_dc_128
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 19.0.0git (git@github.com:QuqqU/GPUISel-llvm.git ed922481952e7fbe7b5da8613bc5ccf78f796536)"
	.section	".note.GNU-stack","",@progbits
